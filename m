Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F4157F404
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jul 2022 10:25:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB6D1BFBF6;
	Sun, 24 Jul 2022 08:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39530BFBF2
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jul 2022 08:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658651114; x=1690187114;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UTIXExrBUhARWZJRHWbuEcK7DiIdDp41da9Oe97CF9U=;
 b=mVfM6f2JFWqZfZeJM1pkr0mxhGQ+rgfyamll9XKA80ujemz0AHO08Xj1
 h+oj56hU5U6KEE07puI6SB1mSh0RESgTEjYWT3vztKHxUV5CcVsecr0yL
 qXymW1JLod/BhL1YJmz0vYAqFJYRTv/+ssNFXX0mXGem4X9qB+YFdgWr1
 QGZCKZMTDgA8UL/eYaQ6ExsRsdv1uD0Ug3HrRP38Ib4HstJIjivpBOCOr
 +UPmA90AAd4y8gYkShq2aGmPWPH/DmADG4boawgZrV453qqfhpWG2UuzS
 VvPVMQ/kJvWOZ+ZXBqj8ss7oaqfu8M5IG650DXIxvg5ljVpF38G2wsAk6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10417"; a="351521055"
X-IronPort-AV: E=Sophos;i="5.93,190,1654585200"; d="scan'208";a="351521055"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 01:25:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,190,1654585200"; d="scan'208";a="657756293"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 01:25:06 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Sun, 24 Jul 2022 11:24:20 +0300
Message-Id: <20220724082428.218628-7-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220724082428.218628-1-tomas.winkler@intel.com>
References: <20220724082428.218628-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 06/14] mei: gsc: wait for reset thread on stop
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexander Usyskin <alexander.usyskin@intel.com>

Wait for reset work to complete before initiating
stop reset flow sequence.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/misc/mei/init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/misc/mei/init.c b/drivers/misc/mei/init.c
index eb052005ca86..5bb6ba662cc0 100644
--- a/drivers/misc/mei/init.c
+++ b/drivers/misc/mei/init.c
@@ -320,6 +320,8 @@ void mei_stop(struct mei_device *dev)
 
 	mei_clear_interrupts(dev);
 	mei_synchronize_irq(dev);
+	/* to catch HW-initiated reset */
+	mei_cancel_work(dev);
 
 	mutex_lock(&dev->device_lock);
 
-- 
2.35.3


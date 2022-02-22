Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5044BF68E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 11:49:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6C010E72A;
	Tue, 22 Feb 2022 10:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40D3E10E72A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 10:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645526984; x=1677062984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zi+Ae4RzYawRc4MBdL5a5EuvpEe22tdZQ4Eve+HVPy0=;
 b=DrNZMfNhTnRwFsliCAjHZiPZArZrPOWm986ddupHFVlo2BFaMm0xw8F9
 FLCq53qZggI9djGF++uwNaq/WEkDvi4lqfnhHmIoOvqXtqxsSg2Ve/pVQ
 Ai3BgC2HMMkxGAyOukRKU1d/fr8PqvRr8+8FcK+8tv706jGRvm0mvSLxq
 60WMVlSycjNR7S5MWvgA5spzvPZE2JhDE5Fm7w5tuWvTLuBhgkq1vh5bT
 N6FA5wMciZF+O+1HZMqqTNscYnEOJa7qX7K5SyLWmgeIVVedvaOd/5/Y0
 6nszMA4+jW/itabKhc8bOxM3o1Hrgkd/gP8MygUbQ7ExJ1MjmjroHQUhE A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="312405429"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="312405429"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 02:49:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="706569654"
Received: from sannilnx.jer.intel.com ([10.12.231.79])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 02:49:40 -0800
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 22 Feb 2022 12:48:53 +0200
Message-Id: <20220222104854.3188643-7-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220222104854.3188643-1-alexander.usyskin@intel.com>
References: <20220222104854.3188643-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] mei: gsc: wait for reset thread on stop
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wait for reset work to complete before initiating
stop reset flow sequence.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/misc/mei/init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/misc/mei/init.c b/drivers/misc/mei/init.c
index f79076c67256..873fa96fa29c 100644
--- a/drivers/misc/mei/init.c
+++ b/drivers/misc/mei/init.c
@@ -315,6 +315,8 @@ void mei_stop(struct mei_device *dev)
 
 	mei_clear_interrupts(dev);
 	mei_synchronize_irq(dev);
+	/* to catch HW-initiated reset */
+	mei_cancel_work(dev);
 
 	mutex_lock(&dev->device_lock);
 
-- 
2.32.0


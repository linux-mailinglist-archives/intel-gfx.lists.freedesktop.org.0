Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0DC4F7FBC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035F310EB0E;
	Thu,  7 Apr 2022 13:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 328B510EB1F
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 13:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649336414; x=1680872414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bnSUp6cwq6Caf0TGHF8XKZbohNnmqtwjwu8uNCq5o18=;
 b=OFFOJNdhSEnfpFXDTcco5gFak0MKj4viu68/8pQdzkJRPvp3wNTD51iT
 jExeeCscrNBZYnnFOvX4rxA04ok3Ufs0//sQYpfMhjCP2zjF2gdzhTqS1
 Hfm0MfrmrcAmXbGCQs/RBuVSJaF7k+we+bpKQ4Oe+kCV3oF1yaaBgrLnd
 Do4ydlFVOgg5QMbM4O1mMXxswMBWwiyumyB6fX/6pZxzBucvE7smhNOXL
 QeroY/iY8DHIImXmt9dIHlU/HYFD7O68ZyyNZCVVgnxCBs3mSzoSL0nht
 ida26QtjeqRgzlVo9hG4142/a2+STkIv0ei0RbcwRztmPNlGzI/90Cx8I w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="324475932"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="324475932"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:00:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571041131"
Received: from sannilnx.jer.intel.com ([10.12.231.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:00:07 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu,  7 Apr 2022 15:58:31 +0300
Message-Id: <20220407125839.1479249-13-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407125839.1479249-1-alexander.usyskin@intel.com>
References: <20220407125839.1479249-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/20] mei: gsc: wait for reset thread on stop
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
2.32.0


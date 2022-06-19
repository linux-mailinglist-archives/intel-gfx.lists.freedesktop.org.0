Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1270E550AE7
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jun 2022 15:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D82910E676;
	Sun, 19 Jun 2022 13:38:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD16310E676
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Jun 2022 13:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655645878; x=1687181878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bnSUp6cwq6Caf0TGHF8XKZbohNnmqtwjwu8uNCq5o18=;
 b=ln8GsxkhjVp89kuUmY4vBCPkGwH96bFQ0CDzginmJ7kbJcMUO6ng2NCP
 zWSWnSVhbkfA5z+qaeAKVG2eckJ9XCWABBDTk8LXDYYTdZ34aSncT8NNj
 a7WdeVYDVvyz36N7hxQ+082yFD702GEGmEmALHgUNNi51GmZ2u7IgGvLq
 Fe9yMY9bjqbDzinShFu438zLhK44mLS2U79KrbYdh2vT6Vv44F2ZTQlHX
 tw/qyhQBBrecb7t495YuAyXS7PafVd+fuN5JMaypKRxAR6I2s93YDgEhW
 IAv4CAEdUtBgDl0b2j50VsfXkpcs0yqeBwJwt8CU+xfp+5wkaSZcXfm1t w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259552676"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259552676"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2022 06:37:58 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="676158531"
Received: from sannilnx.jer.intel.com ([10.12.26.157])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2022 06:37:55 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Sun, 19 Jun 2022 16:37:14 +0300
Message-Id: <20220619133721.523546-8-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220619133721.523546-1-alexander.usyskin@intel.com>
References: <20220619133721.523546-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/14] mei: gsc: wait for reset thread on stop
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


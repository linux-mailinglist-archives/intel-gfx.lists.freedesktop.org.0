Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B37CA357B
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219F910E940;
	Thu,  4 Dec 2025 10:58:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XcAMXVV/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC57B10E946;
 Thu,  4 Dec 2025 10:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845933; x=1796381933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3az2mlmmtIixpivDlmdOPoIngEf81mCUnqmTJPvYiHA=;
 b=XcAMXVV/RsgzEw9UwRKi2WEeJGiYDKGjfF1IadIO6guYSCSLBYNjzaah
 z81DGz6lLqCR4Az5COC3XzPaVlkaBlK50es9BBIndI0iLN2xekybB8opm
 7ykFyzOvVWA8rLqfwskAZc7JKDOyrwFLufo1PJFdYt9dTLx9gyWZ2ClBE
 Fi3FEkLcf/6zk6h3vBzIGxTycQUtlOrkLrH06xHdGyRjtwh/3F6MpzG+f
 B6OkXS4gIzUDycKxg7E4k9zMp+rjtWX1vXHQESOloAyXad8cwFa+HnUEu
 3mu2lkQOmGMr1sf3TXM+9+V08qYMfQ9Lfe/FycpwYc+IIgaYoC/+KrdPM w==;
X-CSE-ConnectionGUID: KMc6K4TsQZ6LRa/q40YtHw==
X-CSE-MsgGUID: aU0EzKPNSv6M8TVciN3Vng==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="65856897"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="65856897"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:53 -0800
X-CSE-ConnectionGUID: cjSKj5t7RCy4281MVihklg==
X-CSE-MsgGUID: I04xXTYYTYuR7nxaytQG0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="199904325"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 10/25] drm/vblank: pass vblank to drm_handle_vblank_events()
Date: Thu,  4 Dec 2025 12:57:38 +0200
Message-ID: <edc1b951c5e0b2166baa9139108805125f1faae9.1764845757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764845757.git.jani.nikula@intel.com>
References: <cover.1764845757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the vblank pointer instead of a dev, pipe pair to simplify
code. Rename to drm_vblank_crtc_handle_events().

v2: Rename (Thomas)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index da8ca8928232..49b59af1512e 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1684,7 +1684,7 @@ static int drm_queue_vblank_event(struct drm_device *dev, unsigned int pipe,
 		send_vblank_event(dev, e, seq, now);
 		vblwait->reply.sequence = seq;
 	} else {
-		/* drm_handle_vblank_events will call drm_vblank_crtc_put */
+		/* drm_vblank_crtc_handle_events will call drm_vblank_crtc_put */
 		list_add_tail(&e->base.link, &dev->vblank_event_list);
 		vblwait->reply.sequence = req_seq;
 	}
@@ -1892,8 +1892,10 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
 	return ret;
 }
 
-static void drm_handle_vblank_events(struct drm_device *dev, unsigned int pipe)
+static void drm_vblank_crtc_handle_events(struct drm_vblank_crtc *vblank)
 {
+	struct drm_device *dev = vblank->dev;
+	unsigned int pipe = vblank->pipe;
 	struct drm_crtc *crtc = drm_crtc_from_index(dev, pipe);
 	bool high_prec = false;
 	struct drm_pending_vblank_event *e, *t;
@@ -1914,7 +1916,7 @@ static void drm_handle_vblank_events(struct drm_device *dev, unsigned int pipe)
 			     e->sequence, seq);
 
 		list_del(&e->base.link);
-		drm_vblank_put(dev, pipe);
+		drm_vblank_crtc_put(vblank);
 		send_vblank_event(dev, e, seq, now);
 	}
 
@@ -1970,13 +1972,13 @@ bool drm_handle_vblank(struct drm_device *dev, unsigned int pipe)
 	/* With instant-off, we defer disabling the interrupt until after
 	 * we finish processing the following vblank after all events have
 	 * been signaled. The disable has to be last (after
-	 * drm_handle_vblank_events) so that the timestamp is always accurate.
+	 * drm_vblank_crtc_handle_events) so that the timestamp is always accurate.
 	 */
 	disable_irq = (vblank->config.disable_immediate &&
 		       vblank->config.offdelay_ms > 0 &&
 		       !atomic_read(&vblank->refcount));
 
-	drm_handle_vblank_events(dev, pipe);
+	drm_vblank_crtc_handle_events(vblank);
 	drm_handle_vblank_works(vblank);
 
 	spin_unlock_irqrestore(&dev->event_lock, irqflags);
@@ -2165,7 +2167,7 @@ int drm_crtc_queue_sequence_ioctl(struct drm_device *dev, void *data,
 		send_vblank_event(dev, e, seq, now);
 		queue_seq->sequence = seq;
 	} else {
-		/* drm_handle_vblank_events will call drm_vblank_crtc_put */
+		/* drm_vblank_crtc_handle_events will call drm_vblank_crtc_put */
 		list_add_tail(&e->base.link, &dev->vblank_event_list);
 		queue_seq->sequence = req_seq;
 	}
-- 
2.47.3


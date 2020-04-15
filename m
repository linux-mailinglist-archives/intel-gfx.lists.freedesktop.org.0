Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DAF1A94A5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8079C6E8AD;
	Wed, 15 Apr 2020 07:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F6536E899
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:08 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id h9so17866757wrc.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75JSu+pKZ7UXh9bujubmxs7bcssLsjyQ7fH+6srj86w=;
 b=gUKgLA3FKc2mDXKdY0Qtqn3S55xo8MUSHFkSl3VZOon8GBuFBODjQ5DpaHxjv2LCno
 ln6HIadfVtD8kcgTDWac4qbYGn8pxcELe82nhI8CXgByrXprv+Pzl0MdMDuKbENct+Xr
 1nRpceLbQHMj8Tzlngvk5be+bwYY82QZ7vSec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=75JSu+pKZ7UXh9bujubmxs7bcssLsjyQ7fH+6srj86w=;
 b=G3clSlSl5cwXYPMGPdRxIQP+cUDDb726Tme0jWfrtCpRfTBw/y7nfepHTeFkmUDvar
 BD5FnS+MyKpRdIzkAb0WnbPj4oTkEPaXMWT3nJisT9Vb0B5qT8jyEa2JvWQW8/onkFNa
 jc3sRO69xspAJeADfXB3aOVTQQ5pQ3d/1eKudIRS4MZptXxWYqTE9R+mGdYyy6YkZp2r
 cOTbMEUVJM4nOmujbd63pT2ZK6ZK/iLEAW6M1+l1SDGmhqDMoNbQaivTkN4qORjM1O/v
 O3Ab+BBqOh7GoDAO9OiPc8IjfFbMDDRQNcSz8NYFfFHC8rxmKgomJHNZQwpV5HqrIXZS
 i5lg==
X-Gm-Message-State: AGi0PubpcA2GyP7yjEZdaOCbvF2BIUJJJHwaLB+3/JiMRqfVT8fJaEEO
 1S0BYx1G7vIlr83mItGwdHddUHNTrjA=
X-Google-Smtp-Source: APiQypLOXmhzSGJNZGUJLbpdIDuuVWe5v4BG+vwkBLCJ8FnQqUDmweormOkkT/68m7rYWElUxD0ACQ==
X-Received: by 2002:a5d:404a:: with SMTP id w10mr1079502wrp.397.1586936467069; 
 Wed, 15 Apr 2020 00:41:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:00 +0200
Message-Id: <20200415074034.175360-26-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 25/59] drm/tidss: Delete tidss->saved_state
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Jyri Sarha <jsarha@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Not used anymore since the switch to suspend/resume helpers.

Tested-by: Jyri Sarha <jsarha@ti.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jyri Sarha <jsarha@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 drivers/gpu/drm/tidss/tidss_drv.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_drv.h b/drivers/gpu/drm/tidss/tidss_drv.h
index b23cd95c8d78..3b0a3d87b7c4 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.h
+++ b/drivers/gpu/drm/tidss/tidss_drv.h
@@ -29,8 +29,6 @@ struct tidss_device {
 
 	spinlock_t wait_lock;	/* protects the irq masks */
 	dispc_irq_t irq_mask;	/* enabled irqs in addition to wait_list */
-
-	struct drm_atomic_state *saved_state;
 };
 
 #define to_tidss(__dev) container_of(__dev, struct tidss_device, ddev)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF64114E88D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 06:59:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146316E942;
	Fri, 31 Jan 2020 05:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52CEF6E942
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 05:59:14 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id t2so7215607wrr.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 21:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SHOlRZtFBQ5wM1g1FaAtJgUmwljd+E+iomsSReCmsIg=;
 b=g3JSIiJO3R4pOVcHrPos6OYLfcrv/JmLMUozYsB/lCZYVFBab3iWmRpVS1hDpvi8fH
 kkBuIeLsGrziOZ0aRKjLNHpO6e6s3CyqR5VHhPUxExGR1i8nIYuXlwjTN82AQCvySx7F
 JaCShzB+OOxCTZ5StfYxD6vNp4UKOOqccOs+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SHOlRZtFBQ5wM1g1FaAtJgUmwljd+E+iomsSReCmsIg=;
 b=EmPHF+YmyIAKr8gbRKVGY1k56JcUpT5DoaViqStwA4YtmluU464nRxqFP3yFz/vv05
 6gil+ZxO7Nnv0boYg1muvzKI/M7q0SsF2dlPVS57p9oYI539EluhEC2HMB1wQnKAC2Qo
 1mnMVE4Bll5UJju+Dv7J+D53NoK6ZvUlNfWgix6icu0GGeZfqMkGVKr7TorRfGJvtogb
 Suobpzz2vFmQtwCeBIOMYJgaB9BTCGzRpgCuRoh0hgFge06a2oQoW3g60ScOoKSsWe7l
 z5dVBo9m7bnClLDG9hZlBhGc3b52YoemKUT9dy/NJa3gtiImWasr8XmKUh0lBkLk5PKr
 nOmA==
X-Gm-Message-State: APjAAAVXEPDdtwpVVJCA2++JypVrd8vApZPgjdNYMzoX9vyaqJPe+qOn
 x/ORLpNimDowNNZvD+Sj14wtoelhnmop3A==
X-Google-Smtp-Source: APXvYqzrTYZatzAxZKLNj/5DBsChB7DSu/7En3wg+FEFHkK0JXNISqUAXdq51+LgtLllvya1qra0VA==
X-Received: by 2002:adf:bc87:: with SMTP id g7mr10065387wrh.121.1580450352904; 
 Thu, 30 Jan 2020 21:59:12 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a8sm9863798wmc.20.2020.01.30.21.59.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2020 21:59:12 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 31 Jan 2020 06:59:02 +0100
Message-Id: <20200131055902.1821218-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200129082410.1691996-5-daniel.vetter@ffwll.ch>
References: <20200129082410.1691996-5-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm: Push drm_global_mutex locking in drm_open
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to only take the BKL on crap drivers, but to know whether
we have a crap driver we first need to look it up. Split this shuffle
out from the main BKL-disabling patch, for more clarity. Historical
aside: When the kernel-wide BKL was removed, it was replaced by
drm_global_mutex within the scope of the drm subsystem hence why these
two things are (almost) interchangeable as concepts here.

Since the minors are refcounted drm_minor_acquire is purely internal
and this does not have a driver visible effect.

v2: Push the locking even further into drm_open(), suggested by Chris.
This gives us more symmetry with drm_release(), and maybe a futuer
avenue where we make drm_global_mutex locking (partially) opt-in like
with drm_release_noglobal().

v3:
- Actually push this stuff correctly, don't unlock twice (Chris)
- Fix typo on commit message, plus explain why BKL = drm_global_mutex
  (Sam)

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c  | 14 +++++---------
 drivers/gpu/drm/drm_file.c |  6 ++++++
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 8deff75b484c..05bdf0b9d2b3 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -1085,17 +1085,14 @@ static int drm_stub_open(struct inode *inode, struct file *filp)
 
 	DRM_DEBUG("\n");
 
-	mutex_lock(&drm_global_mutex);
 	minor = drm_minor_acquire(iminor(inode));
-	if (IS_ERR(minor)) {
-		err = PTR_ERR(minor);
-		goto out_unlock;
-	}
+	if (IS_ERR(minor))
+		return PTR_ERR(minor);
 
 	new_fops = fops_get(minor->dev->driver->fops);
 	if (!new_fops) {
 		err = -ENODEV;
-		goto out_release;
+		goto out;
 	}
 
 	replace_fops(filp, new_fops);
@@ -1104,10 +1101,9 @@ static int drm_stub_open(struct inode *inode, struct file *filp)
 	else
 		err = 0;
 
-out_release:
+out:
 	drm_minor_release(minor);
-out_unlock:
-	mutex_unlock(&drm_global_mutex);
+
 	return err;
 }
 
diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
index 1075b3a8b5b1..80d556402ab4 100644
--- a/drivers/gpu/drm/drm_file.c
+++ b/drivers/gpu/drm/drm_file.c
@@ -378,6 +378,8 @@ int drm_open(struct inode *inode, struct file *filp)
 	if (IS_ERR(minor))
 		return PTR_ERR(minor);
 
+	mutex_lock(&drm_global_mutex);
+
 	dev = minor->dev;
 	if (!atomic_fetch_inc(&dev->open_count))
 		need_setup = 1;
@@ -395,10 +397,14 @@ int drm_open(struct inode *inode, struct file *filp)
 			goto err_undo;
 		}
 	}
+
+	mutex_unlock(&drm_global_mutex);
+
 	return 0;
 
 err_undo:
 	atomic_dec(&dev->open_count);
+	mutex_unlock(&drm_global_mutex);
 	drm_minor_release(minor);
 	return retcode;
 }
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

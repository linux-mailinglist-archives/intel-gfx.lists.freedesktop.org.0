Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKG9FIRzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C1535B828
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD53810E73E;
	Mon, 30 Mar 2026 12:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dWXrGn4C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com
 [209.85.160.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755A510EBF1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:56:08 +0000 (UTC)
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-40f387a688dso1105534fac.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551368; x=1775156168; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NRlPoGa7+iUNjeM7pxa7WPegOcsigZPqzY0YzlOOctI=;
 b=dWXrGn4CdyHwZe36ORUcenyNT/PfYW0BtBDSBhycZvEz9R1BLsWFAW3zzu6I/HcIOF
 sZm4wZVk91lMabf8MlEO7eOTOu9SInbflgjyBRdgCIf4IDyC9GGe0wjixfgBJrpSKVRV
 70idqofDDxSbdPvHqJfo0jE+69L8mBUj7jetGFB3z7hagGgJnbeR9iJKvVMA19KzpE7W
 0CKIMhdfHgFEfsrsHkgN/OmoNxi/nkfN+hGP8yp9xR099LuNXgbqOlUZReKaYczashLf
 Zsc4lr1adWPXdEs28eRo/DxKiAeW/4hWs38wFJT4lFQGVTGWrmw84xFXDrBLLPH4VH4b
 9yCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551368; x=1775156168;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=NRlPoGa7+iUNjeM7pxa7WPegOcsigZPqzY0YzlOOctI=;
 b=A7j663zpQs+0cljddkeE2reBmd9EpKSxkhu7lT1/Ha5xS3kVLpToT1PFvpgVeRaBvh
 a/Igr1PKgsMfAeK8j4jI+kx+MfiJhIvEw64Erk49XLzoNWqvXptzXIyEwv4ixWchAeea
 eE1w9xYGov/Li9JeJOhX0oUTPHkpICSpg1l+fJYQe9QFbA1mFZrkoWM1e/9kU0aQMxqX
 VHceK+L+NFcjHkVuINh48OryhBhg/RoC+JvIwHOLPwzwzjDpnKyKKPoPa1LnnXfRgaud
 vpaxO6FsMgME/rCeElOVsUawqG45UaEJDcxydoNJmBbyXIK4I9ReXROz04RQ3f1mRldH
 G3bA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVr/uMxFnVD8vQ0PEqCf82+nFIV8NzTyg2b5ewDDzjjyxdML1w4nnpeelCbCw/+yquvv4gojJJh+b0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxkZes7E1G5Un8gWhpZUvLj6brd0icbW2BwuT/PcY5kCnkdrFeh
 xKKsahwEuV/BUUwTY8fk8Eu4dN0EEYsXus3dPByCfLK0eTYtwyuaf8ch
X-Gm-Gg: ATEYQzwtTIRjf4Ua/JkSfJ2DkihfUE6E7SBbx6H6QrMMRPpoH/qC7mkeYEblhutogOi
 KyUP/aUOjB6zKrVGmWnhTqcelQW33ktCRnb/8I4d395xLpmvqDaQeVB3oub0YGB1vB53zxeB+mr
 AYoC2pnYlgw4Moxh16+NWcZYZqflFx+xRm8uYSPVEu3au0dkAhjc9dYTI4iJ/nrrAOPDAtqdGYk
 LUqa6XWmJy9xTzEA0gDYjinfg1W3j5Hl59Lwe54KAlkHLEA5jNfJaPpXQyvgELYlUAVaP/V9m0I
 1E4NfQJv31BUuAN8kl3BepXoC5JiwRiX0vAdu3dO5CgsMnStEqm7b3pRyTixbxlh0QMK9tMkq2w
 hJeIyA9CJ5FyNWpcjxYapYm3U5VwUnImj3+fQXay2Uc2DDpsfz+iwDTh9Rkuy+x5aNtnslbloWE
 noAYncEu/7j7zASll9MDNnHB8EdvZidkYqOXJ8VnbUyg8FYvVOCp8GrbjsQw0=
X-Received: by 2002:a05:6870:b493:b0:409:6227:d313 with SMTP id
 586e51a60fabf-41ca70d655bmr4566906fac.35.1774551367549; 
 Thu, 26 Mar 2026 11:56:07 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.56.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:56:07 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v12 63/69] drm-dyndbg: add DRM_CLASSMAP_USE to the
 drm_gem_shmem_helper driver
Date: Thu, 26 Mar 2026 12:54:07 -0600
Message-ID: <20260326185413.1205870-64-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F2C1535B828
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The drm_gem_shmem_helper driver has a number of DRM_UT_* debugs, make
them controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling
dyndbg that the module uses them.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 7b5a49935ae4..bcc2c870d304 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -26,6 +26,7 @@
 #include <drm/drm_print.h>
 
 MODULE_IMPORT_NS("DMA_BUF");
+DRM_CLASSMAP_USE(drm_debug_classes);
 
 /**
  * DOC: overview
-- 
2.53.0


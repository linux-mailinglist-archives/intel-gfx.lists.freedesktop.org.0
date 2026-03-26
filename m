Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHMTImFzymmB9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1309D35B7E4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484D010E730;
	Mon, 30 Mar 2026 12:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fjHGcEFO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1617310EBEC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:45 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-7d750eeaec3so614880a34.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551344; x=1775156144; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nWuUyl3pJMGaRe5YpqoxGiWQwsY1kd47fne8B+3aeoU=;
 b=fjHGcEFOgLVsNaraPwck5y7Jp9PvsX8kFcuyCRrjSl4fGtB91AnzfOaP254y1rXMSC
 waKm6Dr+FC+G7mJwuCdo1ZwXumMDvZIxY9C4H8boWCbstVBwCoy9Klx7OmFFe7nlEDZI
 vLUCL8NpcRKQeqYaGYXN5KVFhR93M5plKF330v2fLNf1+xr708WWv1QehbIodALPCToI
 ovSdwup/S7hUKbNR6ZXXHTs+yy0JTDM2cLj5mgLOzNOk5+YV5/CjQjmvKaBksuiJ+Naw
 7rMm2zx0kQY5me8qbN/nOvqEoG4JlVnTmjS7JLSXv+8ZgA9utrzQZNXF1bRd9YscSUvi
 ezcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551344; x=1775156144;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=nWuUyl3pJMGaRe5YpqoxGiWQwsY1kd47fne8B+3aeoU=;
 b=cP9GE4GgKfVibjPdxpZeporYCCefh1pzmvOfN2UFehBuUJX+/fJ2RsHp0n8jUsDy31
 qAeb8Y9C9kspJIWZNAqO1ugsICjgx7U9KiAJiLM3ZXCE46YTKuMkjGA6bwCnLQCN21Dw
 nzTq3SCzR8nGBeqpfa9O6BBUuHTTM3UxCIXNZ9hvkiAciX+aRz9Q5YYahj6GZAwzUMPV
 ApwDPZzdji5NlO7yWtfdm+W+1VLguuNoh5ol2DeIwkrrPBKrYmQNx4IRUBnudlpkrbqZ
 ZXcWYbLVPfEKqzdWqy93QyXSf/XJIFxDljhT2G85MUVDs18bOYHsNyYi43cZH9tThmHi
 uk0A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQcneIj1eXoyiQC0jkFjVUo28RSceu06SJ3vsO6rSdu2WTv9KNXTPm7XD7wpMyyPeAKhBbInA+4sw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxTM4ZOLq2d6bp+PCwzP4zP04vx9r/EjeRqtX9ujHfUGvbWxQEG
 jrG2zOCC2CbNVVoZ4l7MwOpnPC07Pnc4h/IvmmgQXbIwsmrLX8eQtTXD
X-Gm-Gg: ATEYQzxX7OHWJWXsnmonqeIIa9bAStgcTbYX9Cfo+RTIxnx019m/CTh2ohEhF7XFXVA
 eLMnSjzeux4VJETfmOZGh4nudvlV0H1AQmULdLYTLJ8QXgJR5CppEBp33Thp2QUgcJ3OLVSb3cE
 2dKMFNzCzU6oL8mjtb4t5rKYF/pDAf/jK7T5GhdCHhQgIdXPKiMCvIitI7Vz/HqMlVYnjyqGnK6
 281zT+MzbYoSJO4RoNp+JbRYB1VEVj0UjHW4a2yRSD3iAW8Rkk8+b7aUV4RVa3G9LgCtUa83XsV
 xFovhMXe2jfhFYimC2M02npgtWLZlbJt47lDQNZH0RgdXLoPdAe0Vl6uU+G2Ucduh49gibCvI+5
 ynZ6RecC0jLLsxFixUn9scxcih3ANCty/qMdJSRv+6RosPsI9r1vuwILYOqzTfdCaoRJk3DNPJo
 Tn/csiRrQ6spXtG6suubo19zDGYI5y7Z9XZFbrdyYYm4gEmXy5
X-Received: by 2002:a05:6820:2223:b0:67d:e140:3451 with SMTP id
 006d021491bc7-67dff3d219emr4887862eaf.11.1774551344312; 
 Thu, 26 Mar 2026 11:55:44 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:43 -0700 (PDT)
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
Subject: [PATCH v12 47/69] drm-dyndbg: DRM_CLASSMAP_USE in drm_crtc_helper
Date: Thu, 26 Mar 2026 12:53:51 -0600
Message-ID: <20260326185413.1205870-48-jim.cromie@gmail.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 1309D35B7E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Following the dyndbg-api-fix, replace DECLARE_DYNDBG_CLASSMAP with
DRM_CLASSMAP_USE.  This refs the defined & exported classmap, rather
than re-declaring it redundantly, and error-prone-ly.

This resolves the appearance of "class:_UNKNOWN_" in the control file
for the driver's drm_dbg()s.

Fixes: f158936b60a7 ("drm: POC drm on dyndbg - use in core, 2 helpers, 3 drivers.")

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
---
 drivers/gpu/drm/drm_crtc_helper.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/drm_crtc_helper.c b/drivers/gpu/drm/drm_crtc_helper.c
index 5de9aaa5ba04..31c5294b252c 100644
--- a/drivers/gpu/drm/drm_crtc_helper.c
+++ b/drivers/gpu/drm/drm_crtc_helper.c
@@ -50,17 +50,7 @@
 
 #include "drm_crtc_helper_internal.h"
 
-DECLARE_DYNDBG_CLASSMAP(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
-			"DRM_UT_CORE",
-			"DRM_UT_DRIVER",
-			"DRM_UT_KMS",
-			"DRM_UT_PRIME",
-			"DRM_UT_ATOMIC",
-			"DRM_UT_VBL",
-			"DRM_UT_STATE",
-			"DRM_UT_LEASE",
-			"DRM_UT_DP",
-			"DRM_UT_DRMRES");
+DRM_CLASSMAP_USE(drm_debug_classes);
 
 /**
  * DOC: overview
-- 
2.53.0


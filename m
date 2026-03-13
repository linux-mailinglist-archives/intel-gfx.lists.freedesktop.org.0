Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNm6I2FkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 424D32F760B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA1C10E513;
	Mon, 23 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="OI0Ulaf9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB95710EC2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:29 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id
 5614622812f47-4671cbce2feso975923b6e.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408269; x=1774013069; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=omqdlqhqg9w8rP5QQ/+0ZYQHRwMpTry/COrsHclV4zI=;
 b=OI0Ulaf9MBkuL8UHNfULduu+KrXKjJsEIpkkpzwthZOaB/jUt/HI5VxNXqC3g5stHo
 BVzKDTh3tHvsNdfLFLW3rJwKuE3u76XK+HN1Xx7ITnv7+8vxGxIDNkOu/ROULNSljE5Z
 2TvmxnBVrCjwbdlMJUGqBwB1dg8fq4Lkz7Usd22Mqaw8k1ufRrbbtouXRFkxCtyIM2E2
 y4Y8ItWCXeHlE2qDR5c0DUcLmlZHxV/cMcBNdS3KjSgZePxZ4IhpYDJOX/Xce/JJ1y8X
 4OgJsFhhP82cg+dwVudc26cunjG6PupJDZ8RJQWR8yZFWDA8Mr3P8aYbW8MOFWseB52e
 SYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408269; x=1774013069;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=omqdlqhqg9w8rP5QQ/+0ZYQHRwMpTry/COrsHclV4zI=;
 b=ZG044CfCIvLfqhPHpa1QCQOXMr5NA+jJQHiffucIBIc+/+5GKoquodbgP3rrEnc34N
 ocgCXObqgHHYCeHq5jA53SfunXgUxRX33DGlNS7o4P5ee0VzK17qsBqT80xB/s58DHeL
 JL/F09QNdbxOF+W9+ToiVqHTK/itUZBWQM8Q/4DlX76An9DLMOIc8CYiMRX7sbe7nkZX
 /FJsNX/uY3MrEUDIrf2gsYto+o5y7fgszJPmzrfIuoq6zFyZXI8KvT+k3cF407T4tuO4
 roqYxYx56ZwLwh4GFqRljXpa7g5UZ0bnj1xc1HP0XXsEpELVdj5+CRtgnRwq4TIAlQEe
 4wNQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVeXNAYdjwcoDj3bPoDRi2DZGneBiDq7h68cAUogCX49czTDGodjyxGZs7yJor+8zON9bzK/ZtWidE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz+irNfQeyZcsa8PSEefz022nBEsPJ2Fyi3XbZQT3khH86FR72B
 LTG9M5DU+auhZujpfrrmUxsvQOyR3+GYqQrgKKmKubwiKOtulkUu0qKI
X-Gm-Gg: ATEYQzxRiDp4P2c1C/KjoDN1IRLEIYcuimXKO9DnM3qhwOq4lr27cvYdwbzl5WB/iYI
 GMCqI5OYNFOCea/Le+9GvVJ4ninz24xPGKEWnEGp65oCwksTVsm3YxnILXO7pouCRWm9BtxBb+b
 ENZPtIHtahg5IYus0y+gn0M7G3Cf+o3DzcuxK4IefqNkmG2Yk2yit4ccqvAWr8eEZZbxXdHc/K2
 Z3+IDHXhOQXukALXdOPIfU6ZFiifP+ulx/scY9g4Rz0v/8rLZYOUXpAvYf0zyHx11gh01YyTRXP
 Q3Oej4AqoiMeWI7C0zY/6C8Ncsd/6UffiIcpgTQheOPM9WnCp2vuuao5xq8JPi5Rcb0x67aCyGp
 801kdAAdAAJXLGOKPqY2DtCn7+ISduQaaRc23SpcboDl7DP+cfOd+Rzz48FYH9+0wIjxoTUFBrh
 bivvQ9ez3XLzsz+HmTzPGs1Npz6qwKphQ17buN8utqfaxXKb45
X-Received: by 2002:a05:6808:2218:b0:467:cda:f189 with SMTP id
 5614622812f47-467572ede3dmr1790509b6e.32.1773408268910; 
 Fri, 13 Mar 2026 06:24:28 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:28 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Jim Cromie <jim.cromie@gmail.com>,
 dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 43/65] drm-dyndbg: DRM_CLASSMAP_USE in nouveau
Date: Fri, 13 Mar 2026 07:20:08 -0600
Message-ID: <20260313132103.2529746-44-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313132103.2529746-1-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
X-Spamd-Result: default: False [2.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[242];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:lyude@redhat.com,m:dakr@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:jim.cromie@gmail.com,m:dri-devel@lists.freedesktop.org,m:nouveau@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,redhat.com,kernel.org,linux.intel.com,suse.de,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.947];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 424D32F760B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Following the dyndbg-api-fix, replace DECLARE_DYNDBG_CLASSMAP with
DRM_CLASSMAP_USE.  This refs the defined & exported classmap, rather
than re-declaring it redundantly, and error-prone-ly.

This resolves the appearance of "class:_UNKNOWN_" in the control file
for the driver's drm_dbg()s.

Fixes: f158936b60a7 ("drm: POC drm on dyndbg - use in core, 2 helpers, 3 drivers.")

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/nouveau/nouveau_drm.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nouveau_drm.c b/drivers/gpu/drm/nouveau/nouveau_drm.c
index 5d8475e4895e..d205b58aff70 100644
--- a/drivers/gpu/drm/nouveau/nouveau_drm.c
+++ b/drivers/gpu/drm/nouveau/nouveau_drm.c
@@ -74,17 +74,7 @@
 #include "nouveau_uvmm.h"
 #include "nouveau_sched.h"
 
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
 
 MODULE_PARM_DESC(config, "option string to pass to driver core");
 static char *nouveau_config;
-- 
2.53.0


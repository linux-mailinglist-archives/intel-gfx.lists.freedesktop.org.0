Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNAtHoVzymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAA535B840
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A207A10E74D;
	Mon, 30 Mar 2026 12:58:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AceqeUAA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com
 [209.85.161.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8E1710EBF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:56:04 +0000 (UTC)
Received: by mail-oo1-f43.google.com with SMTP id
 006d021491bc7-67934c83063so567343eaf.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551364; x=1775156164; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jUW+eTRlaAbHOLDd6X1oNyvzhDfkwQ9M9VIyPQZn2Pc=;
 b=AceqeUAASmYrB+Yn6vZD4ll2gGiHJ5CYXL0iGLMhrGLcPDLVtxeXnf26V+x1DR90de
 VShXFkgux1UEott3lKTJgyt4S6J2kHP24YDHzDEKgnoEZ7pKNvb1EueBxIZJ7uE6GNbu
 WrNSxTORF8dNRsraijWZrTJjOsA5/zD1KDngeOdpb7mxDxZqDW6gMfxejYnNa0UawRVr
 fx8el25nqspEj9LccL6PWA3IW682vxLTQ9zgFX1sY+iPYTvFZXRiRUOHhltzWOgL5dBq
 fqjYSPDI8dAbBKLYe9kl+P3TKteEY1Px2vnq2VCLoppi8t3ZIbWnLRIkJvwM7oTna2he
 49VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551364; x=1775156164;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=jUW+eTRlaAbHOLDd6X1oNyvzhDfkwQ9M9VIyPQZn2Pc=;
 b=Js9YgwEVa9xYu1FG1QRDqje6AEA2RJvn/dWRBs2hv6iCxE2UeDz6g90Ta+BaVbQhnh
 W+RbebCyNAJuo/X4yuw2jc/P8b5fJyVshXmbNyuBm2EW+2rHvQSaA6gsZXbWTiUDaOYH
 JpNdnEj1H4YXkuneazxldXSBE3cohR4nXy9DOTC+wMWglrzY7bb3gXi9jgwouFABvkX1
 UBCcqCIvTF4NbEQNP9ZodiHO6wBgHMjegLbazCPLxnpzyjNGal7rv+QK3GSRPzwdXsZy
 PmSq9hHDHr3Nr1lu2oS3g4yyPLieVPB82htQ41kmDsclsZIA3NrxAjbGJts2WU07LVil
 RnWQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+855BZlmzDP9QK2vXeZwRPo0AqYI78TFKRf/OQ5imU+s6PJBDBbUbC5+tXiJyTwC6JSxP0nzdg4w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyP19IltiJK0lLFWiw8OdsKyTGjPKR46DQLbPPgW2G0TIWEPi21
 +9PZeAhcOMANOIOB9ePM7xW5F7DmGoX4lDTY6Zl28yjdfpnLlznVq35A
X-Gm-Gg: ATEYQzxaWsDuWsTZXtgokS3mDTFohPg06Ty06AuMYgLpT4vmOq51ITZ89arh/gBB42s
 PL7B2x8DXBwDAYLUiLld6VonrV81/nh3F7/IBqfASdcqulm8D/i2nx1t24ZNyFWbBIwhluq+dcH
 BNm8+H6rni9K+e5vVhXaJB/Fj4GHjccfsj1XiN8BRi20zI10IbQSHYZm1TZ5IrlHZY6fQBwATv8
 hDn7KHIGl3MA3nz3Egh9llmJbV9QD9gsAtVdZji5BwYlrickmR4uEg0xp/P337xgTsHg+Kf+0+A
 zhetnpxV27nvCEHSsiTvP454Jv5hxVW7Q6zQ+2oEY92wPSux3UwFW8gAZz2cf90OUkptE9PO8UU
 CvgsZSms6LsqSfIvhL/saoWNhD99gi7DZs4AXLAAfXtLIQRkASKmcDSROiejSUvi04F2UnlQLRN
 XCxv03Yc7bhKvXLj7uuuwzq14cpyUnL+tCMEl1RAY9IHFznBg1
X-Received: by 2002:a05:6820:1909:b0:67b:be3b:ec49 with SMTP id
 006d021491bc7-67dff4039b0mr4290155eaf.21.1774551364004; 
 Thu, 26 Mar 2026 11:56:04 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.56.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:56:03 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Ruben Wauters <rubenru09@aol.com>
Subject: [PATCH v12 61/69] drm-dyndbg: add DRM_CLASSMAP_USE to the gud driver
Date: Thu, 26 Mar 2026 12:54:05 -0600
Message-ID: <20260326185413.1205870-62-jim.cromie@gmail.com>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:rubenru09@aol.com,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
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
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org,aol.com];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EFAA535B840
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The gud driver has a number of DRM_UT_* debugs, make them
controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg
that the module uses them.

Acked-by: Ruben Wauters <rubenru09@aol.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/gud/gud_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/gud/gud_drv.c b/drivers/gpu/drm/gud/gud_drv.c
index 17c2dead2c13..c49f9135dc7a 100644
--- a/drivers/gpu/drm/gud/gud_drv.c
+++ b/drivers/gpu/drm/gud/gud_drv.c
@@ -32,6 +32,8 @@
 
 #include "gud_internal.h"
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 /* Only used internally */
 static const struct drm_format_info gud_drm_format_r1 = {
 	.format = GUD_DRM_FORMAT_R1,
-- 
2.53.0


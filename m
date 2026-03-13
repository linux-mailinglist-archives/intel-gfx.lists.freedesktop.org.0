Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIjoFrhkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:05:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DBD2F7875
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5207110E5A4;
	Mon, 23 Mar 2026 16:05:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="miC9CbxZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630B710EC16
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:52 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id
 5614622812f47-467161c4b7aso1095876b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408291; x=1774013091; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hTjuYz8WFf0eQNRg6nVDQpGTB8XKqFnwBf6Q0eE+UZs=;
 b=miC9CbxZA3Q2OVb7/3qLrlGvVdfoLr0E9PEeQcJfx5QYJTRR3/RQNUCoKee6T3a0qZ
 qAmjKIMk6XVo264IMUjBdn1NDFI1DlyUMK9fgPQCW3YlS0md4ZQIo+DqiQBowZL9CVKc
 jxopzN9BGdKhGevF5YZ0jOaXbfo90qQqGm1VpaxpsSR6IpCGiG/84PJt7vwlZaqHX8yZ
 KMpLU5hPOSaj13+1sk+9Tq6pZhGIU9vV52Tndh7oUL2/lWTdpNe5C/GsO1YPlmCA6dpD
 ZUnyGLyYJN7rop6lgwdg9K7qzGvdLs6zrEpd78WEndLO2dEDtzw5OIgJFSAI23XxnHKu
 QkRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408291; x=1774013091;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=hTjuYz8WFf0eQNRg6nVDQpGTB8XKqFnwBf6Q0eE+UZs=;
 b=S20os6E6y9/TYyLIBpalPj8flzaGSYmzyc9smbaqE0aMQ2qeR3ipRD6ph603WMOmIf
 EWL/8zeLwLhFH4d1CRYj5zXx89XX9o9hRq6+NWyI28juufpD9YanGjTcnURjdsGFGNdZ
 Tjkk1hDMBTolx924FVARny/l5QwpG1+9NiMKFpvVaXowoc8IWaqQtqOaf+ORangxJJdE
 QwpXEOFsqJr9nJG0C8XKi6T/6KmUkW7wT49UjcMriqoSK3muly8U72avu4FVPEtmIahV
 KMcwQknOGN+TBU7LJxBt9UhrzNi1baIrXJZ8t/LeC+LdkpiiwkcDXnLqJDjzbvIUyZKX
 AB3g==
X-Forwarded-Encrypted: i=1;
 AJvYcCU2NJ0eb8G9AViCCShxA1UkjwWtTscoGI1lRASQde2GQCfomR5IxkSPfyROrY4HorvdAYZfEa/o/uo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzqApIuEDNb+2Est6JE1hEuXHMtQ2svl6OwNw8SxlJ7xNIXRF5R
 S3anZAgD21ypoNlVcK4cRzJQFMwqVPdtQk9cYMpib4lH9TVbEAI3BOcT
X-Gm-Gg: ATEYQzxPcqKr+DVpTjjRFD4VyqIczs5uLxMQTIqvaZTqRg0MoDHh6MvFHfJ7tsNUjFV
 /UXdw1sFlkAn+70gXKmdeBOxitKROgMq4CfOwB51+Wf7P7aIr4JkSH5VAwLiC0/LUm1gTyNlcnt
 g0/WFv66jYqL3InJUsFzH+4P58DzwIxdp3kn3mQLirYpuCUvD0NPmYlu+bcBdrXJCIB160mYyH+
 Y1lqqvoiUgr1h+DL4xof2ip3uS6N1/oP7R3kdQvSzYelWgos2tjlA2sU0+e7xfAdm+fi2JsdUbG
 YBGd46E6QY8Z2O1ZywpXuQdUyxV1Z1ErNC2D2bEFuBoSZqk3aVipMGlv+jBF9nwvEidt/x6xvZA
 e6fS8TxJQLZ+KzOLieZT8CuzUDiCf7TmcJ5OUIjyH/K70o2WXv+5w/OVLWud2W1hva5ndSQeXki
 Rw51W+wYMOYdwl8WxqQ2sQjJ9aNfT8gDjEKxBOHxPxak9ebWQ2nnviqIupNK0=
X-Received: by 2002:a05:6808:3447:b0:466:f6ee:5bce with SMTP id
 5614622812f47-4675763031bmr1507247b6e.56.1773408291458; 
 Fri, 13 Mar 2026 06:24:51 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:51 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Ruben Wauters <rubenru09@aol.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 55/65] drm-dyndbg: add DRM_CLASSMAP_USE to the gud driver
Date: Fri, 13 Mar 2026 07:20:20 -0600
Message-ID: <20260313132103.2529746-56-jim.cromie@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,aol.com,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:rubenru09@aol.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linux.intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.557];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 03DBD2F7875
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The gud driver has a number of DRM_UT_* debugs, make them
controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg
that the module uses them.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/gud/gud_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/gud/gud_drv.c b/drivers/gpu/drm/gud/gud_drv.c
index d0122d477610..cf2692d89bc5 100644
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


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8C/tH2JkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40B42F7620
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E08F10E520;
	Mon, 23 Mar 2026 16:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="czQYIsQL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862F710EC11
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:35 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-4672076355aso1531025b6e.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408275; x=1774013075; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4Ts/LFRGubV+qE5nUbczy5fsPH9e9tt1w1L0GvmpB2A=;
 b=czQYIsQLuF0FbFYZUigIVCp87VtIq/aJP+Cs1Map0OEeb/Aqe+jrbZX5uynErI8zUn
 K4VVtESQDcdG4chFk7XYBSSeXrj/iO2vD6wMH4p2gC5K2+7dWLz7J/zMRIlR6L4VZGvf
 TEH5s9TlcbUDuzJxqMW+9vwV+USKQ85tOcE5BtehWHd4y71D19xRJFjrCL87wZBasuGL
 BDsJNo+p5PnOQJ4egT4dc1+rF15alaL/i3j4D7W82DuWlbN0ctsJOcYCrsX/wYGs6tGZ
 pNUapJoxm0chOOsjA87x4eEEHadfupZ9z6lao3aRu+doWBB4s9LwU04mTC8zac9if+Hv
 YKqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408275; x=1774013075;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=4Ts/LFRGubV+qE5nUbczy5fsPH9e9tt1w1L0GvmpB2A=;
 b=Y8r7CJpm4Ra6NQRMscJ1mA2KSWB6N3O63fFRm4I2OICwoFkJCRxs3P0noK/aXiSsAe
 RHeHmfi5ylvfZAdyVbzTOXAwjNZ1D62ae0K9XgCB+zAkSJl/NcdqOakj/vbejW7J1782
 7d0BOwyr42Pe+zVxl913741OY1Dpb2GaShKE6JLKa01LeK5xaQGGmmDCYxv0RFyCp1Oo
 NXZYsqrIu6WIdu3ZymRCA+YTdy8+S93ftsjlzAQ4+3fL0WR17zV1WrXgXvn5Zbzf05fv
 hMP3xoGIWP9i2MVtXjXVW9DTgDEixTdxc9X36O93pFrItT4tns6J0pqREeDZqoLBk+gF
 noLQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0yWS9QqqByAAdJWozlgT8eZVpkaBBSWb3BEF9rZh63fFJq7Ur7g8laUjxF7NxKvm9X2Ktq1wE5TY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywj92LYMX0513QctnE5OMOJb5cb+1A74vGH5xdNVg+VwpGUTfCe
 8NiWBD6WiQ6xtbLmA0c7Ku3aDMNNmAUd8eEYzxcb33E2U8FXtxQV8j1R
X-Gm-Gg: ATEYQzyb0RbenQkJtgGxJKWFJChTRP0EpLwFLCwpRzMA72enF6LCUF3AeUrZgX1SNmf
 T+5nlYcXTrjFsil++BUDX4rycdCOCr80m5WTVG2cfvNGumACYAiI7+ZsVTJI/9wWVJVYVu79xAQ
 ryGDVt7WA9Biph1GMD0fVDQupJU84fWWSrFJn/O9AVlZxKWSfWeRmbCpOJvA4roTUcNxxfQgzQO
 TUNbGEMT6ptiItOmBP5RSjpAH6bwMbyhsNh0B/7t1BIeFTrl4AERVhrnTp632zHcOGjxrGS83tW
 v4/om9c8j/XrC7NxUdo5AkqCF2OVlsrjkkjScX4pfcFPTdidRkEtXHAY/PShQzEOEKPfCEgSxB3
 oDzUu+FcJ16u7VqracpbObDJzKVgnjk2UH8AN/WHqrL3Vs4CpqaYwBoNYhXqHM6i1VSOUu02tF+
 f4TJ0DNMn7c8D28jmfbCnafYS9D1k5NoRKJcKcfa1YdsXk1vcw
X-Received: by 2002:a05:6808:c162:b0:463:ab56:9ed1 with SMTP id
 5614622812f47-467570952f1mr1501954b6e.6.1773408274705; 
 Fri, 13 Mar 2026 06:24:34 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:34 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 46/65] drm-dyndbg: add DRM_CLASSMAP_USE to simpledrm
Date: Fri, 13 Mar 2026 07:20:11 -0600
Message-ID: <20260313132103.2529746-47-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,suse.de,redhat.com,linux.intel.com,kernel.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:tzimmermann@suse.de,m:javierm@redhat.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.528];
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
X-Rspamd-Queue-Id: F40B42F7620
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tiny/simpledrm has 3 DRM_UT_DRIVER debugs, make them controllable when
CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg that the module has
class'd debugs.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/sysfb/simpledrm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/sysfb/simpledrm.c b/drivers/gpu/drm/sysfb/simpledrm.c
index 7a95d2dacd9d..8958e115abc1 100644
--- a/drivers/gpu/drm/sysfb/simpledrm.c
+++ b/drivers/gpu/drm/sysfb/simpledrm.c
@@ -35,6 +35,8 @@
 #define DRIVER_MAJOR	1
 #define DRIVER_MINOR	0
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 /*
  * Helpers for simplefb
  */
-- 
2.53.0


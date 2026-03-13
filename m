Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4P7oGVJkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0C12F752E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8558C10E4C9;
	Mon, 23 Mar 2026 16:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="iOkiVIqp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0367410EC12
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:38 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id
 5614622812f47-46726528f1cso1546902b6e.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408277; x=1774013077; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v7n8LRPhTnKwHNdLKddxIC02c+MckVOPZFH0J7I21NQ=;
 b=iOkiVIqpkXY/meEVzhZwTzhrgpRJkQLK/j5beIO+UhaeXOCSacAZBFMGEJHF+49383
 RPv0mbNokAh00AcSFB0XFzxhrgUrtSv6eOYyTlGqQIPles/LiyoE0kNvK648BGL1iqOk
 jBIXOojVyQGiofh+0pRn9MKgBRv5cUSHZ4vGhLZ96CCl+oVGItxUPUz00EUcnKzH9VfH
 0dzgx9Ut22b49GKLWASfHEni4iEKTAaDG7JPpgQ7RVXHUcxWWYP/Yjh60og4BLgF8XuZ
 tKkauTGE2Cd3Gz6uzBLU4dpp/8iQ8lXzjLIxwPA8M4faLTNMNMaxB8Xg9yoL38v4y0eZ
 Oa0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408277; x=1774013077;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=v7n8LRPhTnKwHNdLKddxIC02c+MckVOPZFH0J7I21NQ=;
 b=oU7EN3KeKBzk0h8+exUIyY5yBoA+BwH/0RwqnZRNxZwyTCbui67PyVGulwqNmnHpg6
 NenBJgTYOHnFgIQItgq4JRwbwdbhInVdVyNlyDCI44IzkdCP2SISEjDZzkFgYSK9jfyo
 Y43ObXOGZ9ueiPwlPdFofYbiEO5s1IQYhlRRcr4BzkTmMyE0eHoGaYZj/TMf3nv3hMDg
 u9Jd7I0lyVYaAlQ4WzcQ3AQ/6s3hitcL5Vc/BAT/Th72pFcWVzYfd/MtpyW3hyX9z0JA
 DPmxFhhhroqnSWqsxYOx0uZXs8Xmt6mPM20BVOZvi28jb9MDx9KBg7a9hh8wG9Ttmj3d
 sGvw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUUVu583xZdtrVInRsXXNNcOI/5ASg3Jce/H/yqle/bFC1H3hC7aI9bZ5c1BKbfJMwyLfzhU0/7xQM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyoycDpKXH3FxMZsHjp13NF83OJqRskBQnO8NmpyZMP5UHTI5zW
 QdlVNesnkbEo3JGYBAoQmH9GV086B2xYAo2SfJOQWEmrxyOPd3BW3dB1
X-Gm-Gg: ATEYQzyZGl3CvjkRqA5EvMVMNHtOnM1EAN7dCiD3JCkHxGf5zNg9tJWwfGmcD+YIJWm
 5J5r6KRzjkCbcTNpKZURSzT8JWam8XjmoBpLV26N00MuYnCmjM2irnTptS4quDNFM4wyjWi/o0h
 /j1/qxUeFDaB9z6/cN+ws8cPZ+vHspbZLYnSjJLiIboEehNKJFFm7XKcBW3fpOplbIgDCbiBMAg
 f5Vq+wAAfvRd5yS0Vx6ys28p3MSea43me6syet7dBLBE20S4Z38p3Ep7mbWazc9vgabRtjs0kFL
 kT2J6qjiC5WI5hE3T3CbEf2RM+jB7J19HUOWKNKzvCFdT+/FFWKSqZuilmVrffMbrDVQIY7AVc3
 bDHL4lJxMN/pKujthbzmh7S+BDYMmS3HCobgcUf45rF9SXq2GL9XmQWfQLHz1TqfO1xwCv3DM8Q
 gEA6SAr1FC7BPHHnHBHtuUxcMhs0BroUPajbxlrNK1EKv42p1N
X-Received: by 2002:a05:6808:c2ba:b0:467:100d:22ba with SMTP id
 5614622812f47-467570a534fmr1774878b6e.18.1773408277147; 
 Fri, 13 Mar 2026 06:24:37 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:36 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, virtualization@lists.linux.dev,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 47/65] drm-dyndbg: add DRM_CLASSMAP_USE to bochs
Date: Fri, 13 Mar 2026 07:20:12 -0600
Message-ID: <20260313132103.2529746-48-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,redhat.com,linux.intel.com,kernel.org,suse.de,lists.linux.dev,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:kraxel@redhat.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:virtualization@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linux.intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.548];
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
X-Rspamd-Queue-Id: 0B0C12F752E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tiny/bochs has 5 DRM_UT_* debugs, make them controllable when
CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg that the module has
class'd debugs.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/tiny/bochs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/tiny/bochs.c b/drivers/gpu/drm/tiny/bochs.c
index 222e4ae1abbd..8f04666e7def 100644
--- a/drivers/gpu/drm/tiny/bochs.c
+++ b/drivers/gpu/drm/tiny/bochs.c
@@ -63,6 +63,8 @@ static int bochs_modeset = -1;
 static int defx = 1024;
 static int defy = 768;
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 module_param_named(modeset, bochs_modeset, int, 0444);
 MODULE_PARM_DESC(modeset, "enable/disable kernel modesetting");
 
-- 
2.53.0


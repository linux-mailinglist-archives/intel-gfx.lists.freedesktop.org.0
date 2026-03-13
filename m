Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKLGBnJkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:04:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B84E82F7790
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:04:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A754A10E579;
	Mon, 23 Mar 2026 16:03:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="lX6evrPp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06BD510EC23
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:25:06 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id
 5614622812f47-46703fb602fso907332b6e.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408305; x=1774013105; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FB+tfLWkD+EbK14YUmCdfR6TCrKrYU/mryJ+Tht/PKw=;
 b=lX6evrPpLbTkpimTR3Ca+L1AVrOsppWbLU33iifFbe9ZLJlcAYAHh1HoiHFF5ZhH+V
 JxkMmOdasgqY8R7PXnVycpkpVVYuplg8oyY/OwcYKqiC7aWLbqH+ai4Tw2tLNt55w3A4
 IRaHN/XMmHiFF2Cn5oyQ98qSeQIGEAeu2slFv/RrflY4FzAEGp27W2+8HiLQsK4UDWPJ
 BbVPSs9e8hG9mKgKcSzD9kF6OcZWAIYtOQcrEIyybfcIMi45e5re0zNSubDL6t9bEzkC
 1+LvGqQLCpu2m7n8ahGcjWRW6KYVt6jyNlFb31ajN8nOzoLbs/chhBCRA7au26D1AQkx
 FNmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408305; x=1774013105;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=FB+tfLWkD+EbK14YUmCdfR6TCrKrYU/mryJ+Tht/PKw=;
 b=mnIYp8ZNQ7dO2Qruqhl/u/t3jP9fqZljPdhQvXu8HUaxT7E2FXQ48QoLz0E9Jd1FsL
 +ugCJF4rGlRLnNcqTzmXonr3Rt8ybEYfV34M9KWTwMgeJIwhfg3Hy5PHxKA3fsmrgVUG
 szVJ23/Wuno1xMv+IjiXTjFdZGZAQ9dKTMogG5XsXRY3lYpdA7ZNZJCIs3hc/ZIWeU19
 0OSQHebo5aQ1bYZz7fgeNVPi1prnV1UunE9Hnot3yILO91nBE30sDOtCKTSynIJT4iAQ
 TZ/9ispKYq38Xd14WjktunD8gkfEBacujdAHsLaA1SSNAMMHA3B/sQ4R0fvwiMM5Tfr+
 dy2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUc0GvM2DIt7sBzsFluLKwW1NB3bmopfwOpA/G1mkSNW/5N7zM69XpkvfbDiDFDDmIC6+yFQyAF3fM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyIIZpUKhuMS1nkKn7SzqR1hOKg2/4ryxhrPHMU92ynwE1IDXno
 jBxk0cbPGr+pcnmUDNjxwGXeDPTtad9xn2RbSxatcoglyrJULXQFnZa3
X-Gm-Gg: ATEYQzw0AZNAX+oTmjsUlhUAsI8TjpujUb3GqIKRo/77srO1vODDa0wlpS42OEk47oN
 ikVrslDIzlmOAJppT1D2lzeGx3ABbBlLV7KctsmhCYmsBHfSmJaekApNddOAad2rkKOxIifCffi
 l3erYUVw6wAWWVU6mmFdN7pxRSAiqSiajf+5ZwZHEhsd+fr8N+IYrOvJPKYGHHLnMaQ1grh/6Hj
 h9rofH3TZf4i2pqs/wREYMYqv2b44gGsrlq48/3CCJbTs7G+MBOtQa5Ji6LHmzOvSQ/l3Vthnsp
 uOseiTdulr3R0NapoRY4RFDlEDb6SpQC1/rirnjt3E/VFVvnYoatWSRJ+DvMmbl49EMsvQmAIwB
 hWupqf/bo5Lb4une9n2LcCI/WvQbBX8BWL+hqbA1UPXFSQYvuXsQILI9VxIcb46bE1/IpQTjaLj
 6jWpaFTyUyp9dIFOdkIHUfjV/hrl/mU5kZqwufznCnFAalbR40
X-Received: by 2002:a05:6808:1187:b0:467:3f4:907d with SMTP id
 5614622812f47-467575812d0mr1643061b6e.56.1773408305157; 
 Fri, 13 Mar 2026 06:25:05 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.25.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:25:04 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 62/65] accel/rocket: enable drm.debug control
Date: Fri, 13 Mar 2026 07:20:27 -0600
Message-ID: <20260313132103.2529746-63-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,tomeuvizoso.net,kernel.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
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
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.581];
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
X-Rspamd-Queue-Id: B84E82F7790
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

rocket.ko has several drm*dbg() calls, it must call DRM_CLASSMAP_USE
to tell dynamic-debug what classmap enables them.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/accel/rocket/rocket_gem.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/accel/rocket/rocket_gem.c b/drivers/accel/rocket/rocket_gem.c
index b6a385d2edfc..0d06857b96ad 100644
--- a/drivers/accel/rocket/rocket_gem.c
+++ b/drivers/accel/rocket/rocket_gem.c
@@ -11,6 +11,8 @@
 #include "rocket_drv.h"
 #include "rocket_gem.h"
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 static void rocket_gem_bo_free(struct drm_gem_object *obj)
 {
 	struct rocket_gem_object *bo = to_rocket_bo(obj);
-- 
2.53.0


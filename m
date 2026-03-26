Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOo7EF1zymmB9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E58BC35B76B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD2310E72D;
	Mon, 30 Mar 2026 12:57:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XrHNz6CC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6655A10EBF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:56:16 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id
 5614622812f47-4673790ab85so763184b6e.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551376; x=1775156176; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FB+tfLWkD+EbK14YUmCdfR6TCrKrYU/mryJ+Tht/PKw=;
 b=XrHNz6CCgaDEUAEukvcraDrd2glQXYXVpWkB7rhXY2nf3WX+5hlbxBnTALSuuh8Uwe
 y0EzW8aSNpA5ez7iRydKoSlT69VBke5mS5l7s6jyyK1au7n7gtggTcnwkfVyiPCXX/Dy
 yKLKAjuc4fQfL3yGyOYebh7AKGV5j+Fi8i8tB0+VUkq73FstiSgzA6lxS+VCJqwSciEG
 q1pZPirCsrcfGun1fepGu+VrmR0MrHJCga/J+2N5Gaq5+gaG51tqGAsiFT8qjY0q1A04
 3QFgQrBLaoH86LYC9onq/Y1NBbJakcWVOTldKlTFcaJi2l7njV6h7wC+B5ngSoHHlBSS
 yFlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551376; x=1775156176;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=FB+tfLWkD+EbK14YUmCdfR6TCrKrYU/mryJ+Tht/PKw=;
 b=ovvG+9n3zzQ61NDvFrWtvtt+4iEgG0UDLTS9P32Gvdn/dxDDKx5vwsH/WjZzuoXxt1
 Bl4WQRQNLpthTWEhbVVz8gnX08vjpf/7T/7XY9s1gnwqVEHHEdsHYySDHIQIg+DMQweS
 sdr5CawnhJTPvWxc/z0BMEsyQltgTG55tgwbJ74uFxTmvow4UHZEUY1gdDqMRZZ5zvr8
 itjZSsSFb3674vMn0iCweeAhfWxhaeU/mOmgYSHgz2oGhfeDu0u0xBkC5+ixJokyynBt
 /a/w8MYIZg8Ty9cykIeB+HvEw7drSFdK04M0nZYLIfbgWT0o6c1+Ocd1yluxk510xWSG
 zgMA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW7f/XqTUhgB2wi8oegDGuT7W7u6Sjl5StEplbKJdmltzECCS93/70ltR498XT6duCeBABpq/pD/mQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzzh7e94MQ+LfPTDJTWsHJVGf+0qb4PZgDlkgAk/F36cT8OvxM3
 Q4UFVQsyyB0gdrAx5DjzM97ji3ZH4oQoOZw2sjA9EfSsg2Mzpu5G0tZr
X-Gm-Gg: ATEYQzxvggOvE32agfLL24c7wnY6q3jMvYJ8xHDSHaXwJgt9Kja1jBoG8YmjC3QMl07
 ZLFwqJ2JqTSBjyqVKjuBAtdMvlI3tO+WOrmc9UMuA8qQ5hu2xNdxBV8te+xKKTc4zFW6ZTAvZ3S
 tOW5z2GYylRGeHYdVnmJMM3sJpGOBGp0AZfe7uEmiUUvT91h9TxxIMR1CGQSZBAlT3qXyH0a9ln
 xBFMKZVvRADkqpgjsKZI8t9VSTBQBTZsPyoAv5j442NdhyrCaa4ddTwQy+ltYJg2Jz0sdFuhYvw
 rYH/I9Mg0MnaoXmechr+dIEUxKHywRKN25J4efQYQyj2sg6PHnMP9x1M+6KRryQO5pydVS6U3qJ
 4WwWoqZgzVH+qpeuv10hPJ3egnkRH/H8JOEJESFdo+ObbSpGISJ06HQ9myXFRHD+USa6BX9F6mO
 G38dr1W4Ryg0Evri9ZV+acQZQ3ydqc0IVNJsjcYahE8jWhPLYS
X-Received: by 2002:a05:6808:6f92:b0:467:db5:8b1c with SMTP id
 5614622812f47-46a5c610272mr3956953b6e.21.1774551375644; 
 Thu, 26 Mar 2026 11:56:15 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:56:15 -0700 (PDT)
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
Subject: [PATCH v12 69/69] accel/rocket: call DRM_CLASSMAP_USE
Date: Thu, 26 Mar 2026 12:54:13 -0600
Message-ID: <20260326185413.1205870-70-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: E58BC35B76B
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


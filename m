Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFtPBm5kwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B89402F7734
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD23210E54D;
	Mon, 23 Mar 2026 16:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="YUN6izY4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AEA310EC20
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:33 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id
 5614622812f47-464ba2bb3aeso1297203b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408273; x=1774013073; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RCYC336WoUNdVp8/EmNZcTjPfopk7zVSApVc86osLdY=;
 b=YUN6izY4WAfT6zojS4VDTfnJAAAxMPUgONRwPSK6RQ5ZiMGMnK0AwAAileFH6moqDR
 e+Rfc6lMPhuQV/poWa/TmY0PPOaC0wt7ZjjJ3baEaYS81uH338mPoxzoGEnRX60CemXR
 iIvScED10NE4VPp9R1iSuR4EfqmSbvgJOIR2qlrhoHadrGM9WArmh7h8eLfzX3kpJH9J
 0kU8eYidDAt7/GB//jBUeuX+N70XkkXer+upxN6z7rpxE6htjMNT67QybxQ0tW2fr0Bm
 lYWiDruNK3kv06R12OhExrrvMEUCxYhL5bZz2KIsJ7FLeIjTgT0Cy9JxwjsNNM6HxzWQ
 MotQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408273; x=1774013073;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RCYC336WoUNdVp8/EmNZcTjPfopk7zVSApVc86osLdY=;
 b=oHdwC9g81GISFSqbidXOBqbHeOuIZ1ymYP+7bYDQjs1a5TcPMSYtM7JfEtmi2i0Ro8
 KbKsxXlOOagF6SNITsiuXKPw7lAze1vI3Jy2N0mit1zCbzvzX64q9gLRA/LccuFyG76/
 ybDmiKrcBan5mNdyuetaFJJwDuw2AbIJFxf79v4NWFukf3K+hLsflcqJtV/AYoBvTRkb
 +eaiFCWQkeswCkRMBbVlMUnkkBpKnWhflgqQYHkNDHBnHpShPdxnni8FL86axLUibTBH
 /EaRkfh53QTEJxktCiIPTnBl4WmlhZCH3yxYD2IXGnWUJpFOPK2meI5txMU12mYU60dL
 kNeQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXeXHqNJxIzYPRpL6hDr/H98Subx92hZ9wwSkKAntvhudjodca7Hve0PzOla59jIw0QRnE50X1Jo1k=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwkiiDfibIzk4wMYEmsZItV0oVeM2WjIpvg0FsCTaneyGjtmvL2
 LIp+25o81EsAmyBEt6fgX5ibQe2eav6TZYk/qNattKmVz2lUadwXiNNa
X-Gm-Gg: ATEYQzwkm+Ps2oFRL0LKkqMzPkpj9JYFPKgP4wjfkohnIp9UejT4OMIl4y+xRom2yEh
 o5bWe55V7puUZIlPpL7yaf21D/BHuZYeag3pJ4yzpez5c3OuZZ656oj7PfbB5llJO+VjWRh92a0
 opZGv0WJss7vLfeWaOyrF74kyLGslKrPreYlYF5Lzys2Z25FMuDo6gtOrsWwCwRbKu7dpzcrIvH
 cLi+auywCROnBd1E51yUGixNBtzqscsR06CV9dwTxhNqTFsihxoxzCxux7jv9AL1ILAchkA3ifI
 AVvtixuTr0YxybyCL/lsVVuY02Ic7WyEhoZRol98jqz6zmuMj+TwSregpQJcsw9qw7ryBiz7AmU
 e5ybX5706L+zKp6IPVjjatFEW5CihTidyfzvvNIacJ/TUyXJwQIZobuHlzMKijbNCC4J3+DiqjN
 YWgLvljHfB0AusAoNjSiC6ufYUyWJTgzO/1y5BNLl3QlfdCTRw
X-Received: by 2002:a05:6808:1383:b0:466:f4cc:2b3c with SMTP id
 5614622812f47-467555834cdmr2362487b6e.8.1773408272824; 
 Fri, 13 Mar 2026 06:24:32 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:32 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, David Airlie <airlied@redhat.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Chia-I Wu <olvaffe@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 45/65] drm-dyndbg: add DRM_CLASSMAP_USE to virtio_gpu
Date: Fri, 13 Mar 2026 07:20:10 -0600
Message-ID: <20260313132103.2529746-46-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,lists.linux.dev,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:airlied@redhat.com,m:kraxel@redhat.com,m:dmitry.osipenko@collabora.com,m:gurchetansingh@chromium.org,m:olvaffe@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:dri-devel@lists.freedesktop.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linux.intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.540];
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
X-Rspamd-Queue-Id: B89402F7734
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

virtio_gpu has 10 DRM_UT_CORE debugs, make them controllable when
CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg that the module has
class'd debugs.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/virtio/virtgpu_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/virtio/virtgpu_drv.c b/drivers/gpu/drm/virtio/virtgpu_drv.c
index a5ce96fb8a1d..aea4c117b006 100644
--- a/drivers/gpu/drm/virtio/virtgpu_drv.c
+++ b/drivers/gpu/drm/virtio/virtgpu_drv.c
@@ -49,6 +49,8 @@ static const struct drm_driver driver;
 
 static int virtio_gpu_modeset = -1;
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 MODULE_PARM_DESC(modeset, "Disable/Enable modesetting");
 module_param_named(modeset, virtio_gpu_modeset, int, 0400);
 
-- 
2.53.0


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAY9LYNzymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB4A35B81D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C0C010E72E;
	Mon, 30 Mar 2026 12:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RxrCJHfc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com
 [209.85.161.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA03A10EBF2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:56:00 +0000 (UTC)
Received: by mail-oo1-f42.google.com with SMTP id
 006d021491bc7-67c2045c0f7so751825eaf.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551360; x=1775156160; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0ApYYz6FzGjXUWRVflTKhpBjuKsTkjzi7xxuPDPmj4w=;
 b=RxrCJHfcGn7BTsDUpIIySWAU9b/wzhkFqhtxEDboJ++uqFFv8WNQCwi2NOsTZYa5Uw
 3e0laRaGDl14DKPrxFmaTUTWNXV7pJOZz3OPgZ2gW2xeO7d1+Gz0Np0YtZueNim0z951
 ggFPCMhQdV3Ik2y01HPHSIIJfk4h0JdAqQGRDGZY3g0mM1UvG09g6FZPGgO7Dz3+d4sJ
 d3APVQcUTTJfszYBpSJ4/lJe1gHEd5Kc86d+hZOY8EfiRyetQDlWSSyOKKFbxdNCU5nz
 bfXdp6pqw7o7wsq0bxuZ14Df/2Gl4H1ZIEzKVxcvuryEtWLN5/DDCQ6LmvIa5OwKzUw3
 BwAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551360; x=1775156160;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=0ApYYz6FzGjXUWRVflTKhpBjuKsTkjzi7xxuPDPmj4w=;
 b=MaB7QBHAWVCQT7wYLox9cpcWhHPGMSjdEtlo8h6jpkgVVvQ4+WrePhoIkh6yDzkcFP
 IJBeoRD81iyxjWyZAMyYAeCvaWUOw53Ma5oie11SLjoQspyPPuxulHYuZ3QugBjWOIAW
 VhcUi3IRR9ltPji8+z+mE0xVKlcdSyNJBPtUHjCnh4kdDBy/olqj9OCZZW+0wLvD0kci
 019ryUq0OY6AIPiSJew3QJMULUx4fjnDIWPDz7xG+NJfvaLJqhI76TepgD54msDtFJ62
 z5wFAnxvfLgU6I+GXHgU2RB3xN9uUwenM0G978Yul6eLKeDeCrtcIxzX2YUGfd9GQKPA
 Au2Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWnrZPCa6G+6f/l6QwsuU5esjqsIZ2b5uLbjbzffzbM5YlXRr9JGL5pNL+LtXyZa0mE+DoHvZCOZwg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzNxTDXVhVYpaYvOMIcpEXS6KwmWbh5K5cqPUvCn8OpKDQu5mpV
 /ls3iJ4HUTRsloQ/ZX4ddfXkxLnO9vyvN0JVZ7Jk8vSUBSuAxzJvEutj
X-Gm-Gg: ATEYQzyiLweSNCcbsYPYbJ12x9PUzspZxcCKlbGzssfTHCPyoHgScw+SipZVX2cSndm
 KEGFk+LzNe0+m9xv2CwILHWgehfHO8x14thQ1TkUYErMaw4VnUJh02ZWaSpEvMmLVUrC6AtU9R0
 BUgaz910a97cJu6AgjjcfHaV1vbLH7fU2T8TaHifOaUURnv/S5XN9yoSyOU+ExbLGxg4pXGD/fn
 QcjeQMr2uaN3/DOODntxbCSh93r/BBBDOjkD9O11P9W9TkQiI3+Woksf/NMIE6pAk1mykxBjj/1
 BWnKf5VbiMBmxDXo8In/4gBmQ9If8HVIcIuvY78eeeUA9pDolKmExWFRNfbEmlH/6G2YDx+Ax65
 /5CYbMoJERpR09bEi6Cc2VK4YpaiXM/vIByf/hBRyQTHiyxaj9qDD48XJF9mtubtLz6rx0oriiv
 9r7z8enRSHbI1noXeKIVF4rRZJ7VE/1jjgK/NFVyN0rU1xgi7n
X-Received: by 2002:a05:6820:4b08:b0:67d:f840:798f with SMTP id
 006d021491bc7-67dff5a3b75mr4157635eaf.69.1774551359906; 
 Thu, 26 Mar 2026 11:55:59 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:59 -0700 (PDT)
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
Subject: [PATCH v12 58/69] drm-dyndbg: add DRM_CLASSMAP_USE to vkms driver
Date: Thu, 26 Mar 2026 12:54:02 -0600
Message-ID: <20260326185413.1205870-59-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: 4FB4A35B81D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The vkms driver has a number of DRM_UT_* debugs, make them
controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg
that the module uses them.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/vkms/vkms_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
index 434c295f44ba..02201460859f 100644
--- a/drivers/gpu/drm/vkms/vkms_drv.c
+++ b/drivers/gpu/drm/vkms/vkms_drv.c
@@ -40,6 +40,8 @@
 
 static struct vkms_config *default_config;
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 static bool enable_cursor = true;
 module_param_named(enable_cursor, enable_cursor, bool, 0444);
 MODULE_PARM_DESC(enable_cursor, "Enable/Disable cursor support");
-- 
2.53.0


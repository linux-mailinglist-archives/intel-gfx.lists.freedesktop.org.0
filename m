Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKUbL1hzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E75D35B70D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4678910E70E;
	Mon, 30 Mar 2026 12:57:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dkjCJnPg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F5B10EBF2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:56:12 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id
 5614622812f47-4680a2493a2so535467b6e.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551372; x=1775156172; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NDrEVSsHN3/NxzQ31ZhlYG+/I6Z2jtFfe5b8tEwBAEg=;
 b=dkjCJnPgmwZXQDBSDoi4aUBvvDBV3dRyMClnqWfixRKMZiVaJ1gFMO9H7oZzwSkgyT
 cSZkqTprD3AzNqcs3OfIVGaOWUvWDT2Ox/yzC/xgbRDPEeqCBNXBUNZu/ynKZ0ab7CFy
 Do1vcb3l9QJF9zOWPsp4Gg8aRHTCj5gtET66AIdrZV9Vmnkb+8lS4mCdBW+pVYEqnb7K
 MRDtwIE9RfQ27NlRewnjxi7VE/6HkZ8KGBAYaMy6zgv/h4cd9IoRdPKZomUieaZPS3fU
 v93H1PvKkr8gDB+D3WuaDSVjN5bbl+UqUFV7HYjfLshM1GLr3SYlS1tF5UO9b1c/qAtL
 7xdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551372; x=1775156172;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=NDrEVSsHN3/NxzQ31ZhlYG+/I6Z2jtFfe5b8tEwBAEg=;
 b=OawiGS4eQuQZ+k7/wZyMFvQDtRl//9+XG9BAo4keGJf7TQXnpT5EcQ0JPsVw6ZYiF1
 VyR7nEJMj2cta96dnr1i17NBYtdkgYne6lsAl1LMTzoftGBr9eGJ/x/YL7k36xKl4Noo
 14Kzrs1gvZFNphAOy4CGV+NgH06nwk9JAftAC5TLhYdv6mUk+Cmmmc8vCDeMPSwi9/74
 UZgqA8UW6y9dIZ6sp5ursK4KiceWiBojTwK2fhzWxhi6zsYhHjAn6fIBPYyrC/PeW9NO
 DMZhwDu6sZQOgIvTLaW6Sy9NtgRhA2jYMSW1yKu2LSbQC3+fsZRTpomZHOqmyq0/ocgf
 wCOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWSkPfSE5jYrRipiTnDqs6K/RelJJ4gwMljyRqFotuR1rD1SVwVcG13sIn4aS4H853uMFHnsZeLzXU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzHWhwgPVlLzfMYen3wHUdXF0GLo2UKwlxExqiTpGIUUhEZhkgj
 svk2wtSt8Bo8zOrIMGmkVzAbJqeU1jM63QInVVVsi6W3j6kwVllX34pz
X-Gm-Gg: ATEYQzzHC1vP6FgKtoEbvsaMNfZG3DcvgQWSd0Ed/cbv8UX5mi9xx0GLVBwn4X5bNRV
 9l6yGd1ui0XjKYCkeGnhkUV3yqC6tIeBOv/XwwkAn0xfvo6x+BZyYjG83F3jG+2tV45FQ6w/T9V
 YTWFw1qjo/W434MCFPFIPQr+g+TDXJKTRUwtgh7eGD5Wfsyq7avv8lh2XocXSgVEPYliU6bPLMW
 YIo0NSmZj++nw/DszJx2SxPmmFG7vnm595VGuaFSILAo+m5teojlW8Khk+qOl4jpsXb0OIGhInB
 Ebqz6J5xxNVvuRUZ9nogvvmxAH6uCskgJxBg5LFrM4lEROWHwkyA9LU1zQ+wKc7KZ2opvaaBysb
 v1yEMOTZ/0AVDnhf85zPRK8/VMrZllEmN+233ZPZW8tkDnmK+kp4V1Q2Rs3KJ5CXxv9IzkT7GwK
 OcboBUsFluXJpnE7YQRPJCPvuUd2cdgymQtcCwafeY25xQdwrm
X-Received: by 2002:a05:6808:c295:b0:467:2926:123d with SMTP id
 5614622812f47-46a5c77d4b2mr3987875b6e.47.1774551371661; 
 Thu, 26 Mar 2026 11:56:11 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.56.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:56:11 -0700 (PDT)
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
Subject: [PATCH v12 66/69] accel: add -DDYNAMIC_DEBUG_MODULE to subdir-ccflags
Date: Thu, 26 Mar 2026 12:54:10 -0600
Message-ID: <20260326185413.1205870-67-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: 6E75D35B70D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

With CONFIG_DRM_USE_DYNAMIC_DEBUG=y and CONFIG_DYNAMIC_DEBUG=n,
accelerator modules are currently missing the _dynamic_func_call_cls
macro, due to its conditional definition in dynamic_debug.h, which
depends upon -DDYNAMIC_DEBUG_MODULE.

So add that to subir-ccflags for all accels, in accel/Makefile.

Notes:

The added "indirection" allows modules to individually enable
dynamic-debug, where a CONFIG_ option would be global to the build.

Several accelerator modules make drm*dbg() calls, so in effect they
*are* DRM modules.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/accel/Makefile | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/accel/Makefile b/drivers/accel/Makefile
index 1d3a7251b950..44db786ea223 100644
--- a/drivers/accel/Makefile
+++ b/drivers/accel/Makefile
@@ -1,8 +1,13 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+# several accel modules use drm*dbg, so they *are* DRM modules.
+# When built with only CONFIG_DYNAMIC_DEBUG_CORE
+# (and not CONFIG_DYNAMIC_DEBUG), they need this flag
+subdir-ccflags-$(CONFIG_DRM_USE_DYNAMIC_DEBUG) += -DDYNAMIC_DEBUG_MODULE
+
 obj-$(CONFIG_DRM_ACCEL_AMDXDNA)		+= amdxdna/
 obj-$(CONFIG_DRM_ACCEL_ARM_ETHOSU)	+= ethosu/
 obj-$(CONFIG_DRM_ACCEL_HABANALABS)	+= habanalabs/
 obj-$(CONFIG_DRM_ACCEL_IVPU)		+= ivpu/
 obj-$(CONFIG_DRM_ACCEL_QAIC)		+= qaic/
-obj-$(CONFIG_DRM_ACCEL_ROCKET)		+= rocket/
\ No newline at end of file
+obj-$(CONFIG_DRM_ACCEL_ROCKET)		+= rocket/
-- 
2.53.0


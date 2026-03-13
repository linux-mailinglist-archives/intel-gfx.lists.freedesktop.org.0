Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EPXC21kwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6B42F772A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFAD110E533;
	Mon, 23 Mar 2026 16:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="JYdwpci1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4643410EC23
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:58 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id
 5614622812f47-467166cb638so882550b6e.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408297; x=1774013097; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NDrEVSsHN3/NxzQ31ZhlYG+/I6Z2jtFfe5b8tEwBAEg=;
 b=JYdwpci1Yd7N3lJxHR/Ue0LFCgIZrz5BNSRVr37NSRL3qI8GEbpoAkROUuGz+0wKXw
 xF7RSwgveMEzzEl51Sxfzf9KpXkii9DB3y6OrloIoUF33OP+/8U2aaqzrwJPuSqtMLHV
 d6x8RFZeA8dfRXyZm9C81mbcz8MZUuFcaUz52KLpZ3QgrszPO1qyRHLsxFWET8ZGlIhk
 gTQJ6waZhVrJGsnX2/3RiqR9idjCjZ/PBa2Y7dJNpE+5teFq4aejZR5de9609RQ/0dnx
 qBK5jQF4C4KvK3wKYeNna8SLaEAQirCRsdeT0L49RbN715dqg7wH0p4hH4g/AZTUhLe3
 NLkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408297; x=1774013097;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=NDrEVSsHN3/NxzQ31ZhlYG+/I6Z2jtFfe5b8tEwBAEg=;
 b=hBHtiu7RBfu3vOtPaPGJr2RtUQCA9co5j8JbNYPANZDNgkfpFLOLQTxkl+m+wpaEKu
 LxoXOdDkLG6LLbZYsy6G554iBn8toaFGtvbWP39PI+PwwLOBQfI4OLwOGvtlrh1LimLV
 EU2BXhH01YcgLXsDrcGe7MfMC8MRtIaMK/cp1HSAyBS5/GkShISwGvAHjzx4yPpEkiK2
 xsTtIld3RxxMkiNEIdIx/8U5TeXLFdMEUH7jicCQxiO373AEAwwgfxUINJMr8usAiJtb
 ork6nTk5uVfg6OiBYQig6rCrmPKuHCEehOMc/ZUMwK0RTC/wCO+5SpqS9h91W8/D9PW8
 8Haw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV/OwdyOz4D4SadDFsDRi+QHyGrrDBqnIOtGnUgHs1owDLmS/B2Mn32RQs5kaNr8ohjYihO+2F8Pcw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxTwsvjyzyswdRQTBOiWRYPxSIBOzwD6v7DaUR4dYR4QDLO8cD9
 fxNbzx6jMKruxgaWioXWRdox5d0lzizmXZJhT48pvpOMdQS/m9sgks8x
X-Gm-Gg: ATEYQzzi44Le5aEU3PFCYVIf5844yJ6GsEgYNEvk4IaKHSUCGDEswz7hleWXauWKGZx
 t5cgiOEp0bF6ZdevtkhrXH+B6iMhNBpuDz1TxOuPoFjvwGyLL+3xRMLFc1U9WjcZFMsUoAEHt+q
 m2PqXngQIjpeEvlZm+3PhHkNfEtYTXUZr0wmrp9PgRuHXHyQXZey9VaISAR4WCXex1eGoKlK89y
 lQZdykivwE3IPbQCcViEP/DvF82Ky/DTj/TnV/+PqThRJjLuEr602NxQ+fq8golwf5qoMFxzxVW
 gb3/yAleY5hpP1OAYoNVxUfopCjSVxSEYQw31RKExaSX2Wu5X/+3b08Hkdy+Xrdv3rAlKd7kpVr
 ebO6EIB9kUftR4VtOQo5JZ/uYBhjAjcZG3GJt1mzngdDJekss6l3z6LflgBhSsxbEiSNTeGNH1b
 IqsEovRAAWXhT58DrzKtQISkQFqWp5jBKHHBH5/5Gitc+Ho8Mf
X-Received: by 2002:a05:6808:670b:b0:450:275b:d942 with SMTP id
 5614622812f47-467570374e6mr1313194b6e.10.1773408297398; 
 Fri, 13 Mar 2026 06:24:57 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:56 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Oded Gabbay <ogabbay@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 58/65] accel: add -DDYNAMIC_DEBUG_MODULE to subdir-ccflags
Date: Fri, 13 Mar 2026 07:20:23 -0600
Message-ID: <20260313132103.2529746-59-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
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
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.370];
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
X-Rspamd-Queue-Id: CF6B42F772A
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


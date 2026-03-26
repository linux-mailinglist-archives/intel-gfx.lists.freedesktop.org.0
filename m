Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LDsD4RzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B1735B826
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0D210E740;
	Mon, 30 Mar 2026 12:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CjHObJXX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
 [209.85.167.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9D3510EBF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:56:09 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id
 5614622812f47-467161c4ba7so761453b6e.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551369; x=1775156169; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S4W3w9+Cd3LB8UtvA4xSE2rspTRatyv6KzC/l1k+Ff0=;
 b=CjHObJXXc8iTOat71jFYbA0lC96kHEBouJWuxm+wM4YfaHcKhFCrj++EdKTfowfnwC
 t8a/S9O5YE6HtmHRuJg+G+Sllih551sfoQHTSBqqoZ2wgsCFG9WuFCFl4DgKfYHqY5wC
 tfRQIIr9fnVL3hbVAI30tDJQ49bACzyAdvI6UkP57QN0UYAzKg5QjFjGu3zuHP2Iy6IB
 qGr1oGsFfQssyphIjhBlCinGOM/Uo2lEtyXIR2XV54GAA/H8PHpawQgQDzDt2uA/P/bg
 +evSE6hdk+Iptp1CH/nC+uCdn2I7HHn8hSoc92ZR5knKv0zjPrq2F5iESzXZOPb568kW
 UPdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551369; x=1775156169;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=S4W3w9+Cd3LB8UtvA4xSE2rspTRatyv6KzC/l1k+Ff0=;
 b=GSXEJi0xuWFuRHml7Jox/o9P1CFbgQLTAHz3T878+f3PEybD9OTxbgvCv95gJ4HN2J
 vogVAGyZe34IvTFp85RDCAjTxwARxNo7tVG7ZeO/A2n4Ce0pkpzLiMIu48yqGWCkXVTY
 f5FLoLRsa5sWywtjM9ELyAnC3b1vEz/m8xkclvcY3Q9JEM9gP7mWDWVQSiZ+Gv4XsOQH
 Vp+gZfCAWU75LSFIkK+c4l5T7hoB+o9tqHm70wPqu0tDPYlxmX09VDokujzfsp5Sr5PP
 10BE2FUJNRPJn+vGPNCWBrWMXfOV03wcrO0N+RXIsbLO+KzMfyf5TJOaeogdUMaFjK0d
 Qj3w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXfEDp7cmnWq5Q0FV/EVV9N2CPIdjkAEkHsWvngNH+ybvhhkZyYxIdfC4vgrSw3Fn8/LkhadUfcxHQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyHfDAkeAgEZ3eCiDxvf0gnCVH6YHiRo13hsqoFMdLeLHhyh1Pp
 50O7mMbXvmd4a1pgCk2aCh7tk9FXoBqcQOq8kCizQJs+37JVTfzylR8C
X-Gm-Gg: ATEYQzy7KJiGt2XELCtLPdiGWyaUeZM/RrjSIf9lWc9LCxUCB9YpDnn3tpLd6rBnEeF
 hNJu4qXzahPdGN0Xa/jYtI+qpI45vvSYTGv5W0imIEGr0/kBxLcdr2nFuTjA/tNhNwHSy5mVWxr
 94UbaxAuAQF1fTTeT5Q1UkDdZnGPfRbLTC4SdesSFiM7edsVEOVsOD7/9r6uyxXes38rmCTcxn6
 SBjpV/j+USw0FSUy4mma4eWyozz87H0Kufmj5484eEzLwkGci1qVP8c6DoLTIFRiuq1Frziq3ID
 cOq2csWpaqUimqIgfrOie9jTwaruZwVISdVHMtw/dRNpBj4K08OtEl4HLKvxlSqWAF+qZMdbCf2
 WfvMjmpNIXB+gsdiM0YZTeBFDWFIkyJWt4nWN7vwtxHFKW53dPYdDVOb4K71w6xSmqYg9QbV1mG
 +obPY+78eWoDr6yWBhS49aJPo2a5mHkxf9t+4vPCvdawK7AQj5
X-Received: by 2002:a05:6808:1807:b0:468:4b3:d12d with SMTP id
 5614622812f47-46a7a88ab56mr1246480b6e.11.1774551369095; 
 Thu, 26 Mar 2026 11:56:09 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.56.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:56:08 -0700 (PDT)
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
Subject: [PATCH v12 64/69] drm-dyndbg: restore CONFIG_DRM_USE_DYNAMIC_DEBUG
 un-BROKEN
Date: Thu, 26 Mar 2026 12:54:08 -0600
Message-ID: <20260326185413.1205870-65-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: E0B1735B826
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Time for some thorough CI.

NOTE: the previous ~18 1-liner patches adding DRM_CLASSMAP_USE, can be
replaced by a single call to DYNAMIC_DEBUG_CLASSMAP_USE, from a source
file linked into all drm drivers & helpers.

Heres how it works:

1- drm/drm_dyndbg_classmap_user.h calls the macro.
   This is a weird header, since it declares a record (inside an ifdef).

2. drm/Makefile: ccflags-subdir-$(DRM_USE_DYNAMIC_DEBUG)
   adds -include $(drm-src)/drm_dyndbg_classmap_user.h
   This "header" is compiled into every object file in every module

3. the DYNAMIC_DEBUG_CLASSMAP_USE macro is altered to declare the
   classmap-user records as __weak, and to place them into the
   .gnu.linkonce.d.__dyndbg_class_user.* section.  This allows
   multiple declarations in a module to collapse to 1 record.

4. dyndbg.lds.h's MOD_DYNDBG_SECTIONS() renames the section, stripping
   the .gnu.linkonce.d prefix, so kernel/module/main can find the
   section and dyndbg can process it as before.

5. drm/Makefile: adds several ccflags-$(MODNAME)-DRM_DYNDBG_USER_SKIP
   definitions, this is one of the ifdefs in [1].  Its needed to break
   the dependency loop that is created when drm.ko depends upon
   itself, or when drm-quirks that it depends upon also depend on it.

So this works, but it is weird (horrible, hacky, obscure, marvelous),
and I dont have asbestos underwear.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/Kconfig.debug | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/Kconfig.debug b/drivers/gpu/drm/Kconfig.debug
index 05dc43c0b8c5..6c83b1276870 100644
--- a/drivers/gpu/drm/Kconfig.debug
+++ b/drivers/gpu/drm/Kconfig.debug
@@ -1,7 +1,6 @@
 config DRM_USE_DYNAMIC_DEBUG
 	bool "use dynamic debug to implement drm.debug"
 	default n
-	depends on BROKEN
 	depends on DRM
 	depends on DYNAMIC_DEBUG || DYNAMIC_DEBUG_CORE
 	depends on JUMP_LABEL
-- 
2.53.0


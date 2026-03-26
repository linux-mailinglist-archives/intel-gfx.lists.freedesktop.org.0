Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOkjDE1zymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D61B935B661
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7C210E6E6;
	Mon, 30 Mar 2026 12:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a9J9CkT+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B72310EBF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:52 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id
 46e09a7af769-7d77b179b52so1176860a34.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551351; x=1775156151; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4Ts/LFRGubV+qE5nUbczy5fsPH9e9tt1w1L0GvmpB2A=;
 b=a9J9CkT+kUB+PG+4uyuxrBUUPB4aDXS4onJlaKHlmZKYYcCbEnbeGaO0ggHa/u0qOR
 5+V64ZG/9HDLNyB4Cc9OUCz2aKcbsyLcd0vuzvwXeXjC8TAQ8X2XQJtm3g2htadXH6g5
 PGMH0Xe+F5Em/8T1MI5EA4b4o7IwOrkAoinn3QSodX5I33qW6q3IrBPTSP19uLfyOrNl
 WQ/7nSNodYoasB0EkErai70C9+3Ff+/PmWM8Oq5IvHTG+LIhBNa3LV8GUoth7NBy9rfn
 +uCE4GfZrD643hhRz8gKJyBHyCzczFzCStOYsmcRVmV2kUEZHH18h8YpK7bp1vCYOKnI
 FEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551351; x=1775156151;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=4Ts/LFRGubV+qE5nUbczy5fsPH9e9tt1w1L0GvmpB2A=;
 b=GtdFHD6b9c4SrHf59ZBn+7wgEuuAwXkPkpJYXf9smDnuHKbzDlGHRqWdKkR8cukoJh
 75n9sqSu9ID4g8Ky87Z0YgoTGgBR071c6RiTzG1PXalKOg6HHvxEaXiLX0NQuqVwjFCc
 9Ap8Z3iiqvhphXRedCwVyWpkPwGGZ4JPtEDq122JncL25uMZeGt4xR+OhgOZiVbwsf3Z
 75w5tnMyuv2yz9uNdsMUX9r2s7g5c2gYg0bLVYcZ0YfikLoBWlZOGJU1rCAnPYhqKN2D
 9VtqaGmxHmPTim62qXI/brlTFR/IuQktV/f45YKJVnCveNKYj8vKiLJUB2bIP7tl6Gxx
 qTVA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXLtsTnJopiCzjAT8Q0VyxsyZUbMQWHzGiaqOmPoKVAB1aK+pe3LrQwHcTfPcz6WL85WfF2drbIaH8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzVe5ETYGua3QpOPRrf3bRvKeO8qvcha4ROUzlrc54b2OxPkz+P
 EOAw7t0v6PF8M8Uy0i2QBPDXdjQ+yKneMf7k45vX2sXD8UozWVn06dcT
X-Gm-Gg: ATEYQzwUK5Cd7HrLcPyDjP+JsUj3hvnHOmMfrKB0EL9yyaUVKTV+uw369t39bvVB5Z5
 Yo+W7NVn2wRIml3zBGk6yl2g82EdyVEu5XmyqNGXpzAnsg1zleI1xghKUK6gf9vsJIdZQXLHWrM
 PAbbzKMB+I1HIsXvcOGsg91RaycP1PBy8D9YDCeijq64dyS8PLu/vZ3ZKETq6GCj6Mv4IyymaHt
 hpQc6KQBn3QQ4q+suh/a/CA5CMM732Bl/Qkcv1vmdHaYsDd0XgzpvrnUgXvqu/ycOv1Ms1LsNus
 UKuAK9U41ZLrNUtW8fE+IHbpYku1B1ILUmTtZeLvyyau3S8QJdSwW9oavRUIwFIDmE+lMIeW+9a
 OAZ+qMAtQYP/0r1PpaSSzIJC7D+y9Jwlk8YXZOPQASQNXLZGG7ZjdJ46Ax17VN9Q/BwJIChic57
 SYgTk7ew61LSpJzn65MMUhtiFKKObyeUp4C9Z/dTYzHBMMpuZk
X-Received: by 2002:a05:6820:152a:b0:67b:af3e:b1de with SMTP id
 006d021491bc7-67dff5a94a4mr3770147eaf.69.1774551351454; 
 Thu, 26 Mar 2026 11:55:51 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:51 -0700 (PDT)
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
Subject: [PATCH v12 52/69] drm-dyndbg: add DRM_CLASSMAP_USE to simpledrm
Date: Thu, 26 Mar 2026 12:53:56 -0600
Message-ID: <20260326185413.1205870-53-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: D61B935B661
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


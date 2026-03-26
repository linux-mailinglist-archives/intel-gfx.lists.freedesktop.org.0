Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIWyHltzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D25A35B743
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7751B10E716;
	Mon, 30 Mar 2026 12:57:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WpID93gh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com
 [209.85.161.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC5110EBAC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:54:48 +0000 (UTC)
Received: by mail-oo1-f42.google.com with SMTP id
 006d021491bc7-67c1b8b1f96so849681eaf.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551288; x=1775156088; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=q4prZoq+o67W5OQsgLrKexlAzQC80y9w+24uEfnXM5Y=;
 b=WpID93ghVpitifRDUJcKgOvdzsq91/FZOXI6zs/WW14ShmaWjwlQ8stnpHC1XrkDpv
 Gb9ChAY3hOu+4kfF4Er6HsQ/1V6iowLKwXo9xLSRIXm4aumvsoKntGCKTwoA9REc2s6P
 I/tqJN7Qb2SNBmRlKK4cXFoYiWIEicnRl85iRqt2M8l1WrMudzRnbpk0d//P7vRr9E00
 j0i1oS35jKjbOuWfgb1z4ViS/zmmyJG9hcw2Nw2maDRyGWDJljcZWepH48Pz6eudF5xZ
 wioUqrK+9uLrMQRghCS4oOReQagv7LTAIUr2HWrOMsPb8IyZmhrs73yWj6qF8CluBUJV
 JlAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551288; x=1775156088;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=q4prZoq+o67W5OQsgLrKexlAzQC80y9w+24uEfnXM5Y=;
 b=bVYo9CXzhjONJav0idKRuDyf1jFT/RBBaYyjXyhkYDzn78o/3S6Rd7lcKqp8JkFywR
 jnqUYZtJ69N3VuOrfDTA7KgWDcVNyJ6xv+ohS7+GujRhXT5HigUSbEtT5wl5KuLfGhnO
 tg9qeiPpCsMIJmdZaY225fzq0Ix0YmhWDvo8d3emeVDq4lyvsvEPEJf/9mNX5exY3HLz
 XRB9g+MOmpudishp03U+z4gUYAXUzHkeHOPNF3Y3FV+SvWc1go77IjBxUmMvEEkEgd90
 lOluGgP4uzG483w7bGUk0E7NdyDM0emUYxGQOrTkoiV0KPwOWH+2y7NQc62NrkV3v60H
 444g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWsQjfxVIFkhhjMyDcFiW1+L6MYmOdO5cdWbDH5s1r4/GD8lwDjW5IEiNi0sUougWyhvLIwDNTF4c8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyN3eynHogSg+qsBLpXz6WYGPUxtJkgXcVwOWjiwKm2MZLIHNTY
 JywZSsTKmr7JVa1AuByGWoIWNrl6UHOKIsWgJ1Fc3euROGibgPTzA/ER
X-Gm-Gg: ATEYQzz9zzFlYtQbwSNRbSKveZKgvFVqRrF9//Otam1wKQQZg5a73ce/r1gGCap8A3N
 OCyWnvs58ascihnWRmLOWijfsEHE5Bt0W7i/h/8W4lbma00HZtDsAyDMR6YJxqrd2Cqwjeg3LIw
 6iRtwBUIgaKOwJSjCBLCH58WGIKJ4w9CjAAQHCUEoX1mo/+8qObIaRhh8H9gHzPGs/Cw5EDTn7u
 0LymB4IuRtboyFpNuS2t9Wcp99MCJdDh0Dyj1Ujh9W8qdKh6YiQIDfhFNgNEjJqdzKeLDUq65rg
 3h8UA+Dy6i5akjiJB83+TjTRZOXiUPwcmKfwtdaUq0I62ZkGNtdudqHLxNhyOBcCVirfS4CPXqz
 6AS03gAbL9llbzJqelBNoJxxFToTWpGrvuMEs9Zz4O5hvhtPqWCfadnkD3UEvB2nLthh5OZF29V
 U06tJWLCjM/ENhPDzo3SaG/1fiIPEkiAZmCtECik7pBKitUa4c
X-Received: by 2002:a05:6820:1893:b0:67d:b2f2:6e72 with SMTP id
 006d021491bc7-67dff3ce6efmr4416641eaf.13.1774551288030; 
 Thu, 26 Mar 2026 11:54:48 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.54.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:54:47 -0700 (PDT)
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
Subject: [PATCH v12 12/69] dyndbg: drop NUM_TYPE_ARRAY
Date: Thu, 26 Mar 2026 12:53:16 -0600
Message-ID: <20260326185413.1205870-13-jim.cromie@gmail.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2D25A35B743
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ARRAY_SIZE works here, since array decl is complete.

no functional change

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/linux/dynamic_debug.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index 441305277914..92627a03b4d1 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -132,11 +132,9 @@ struct ddebug_class_param {
 		.mod_name = KBUILD_MODNAME,				\
 		.base = _base,						\
 		.map_type = _maptype,					\
-		.length = NUM_TYPE_ARGS(char*, __VA_ARGS__),		\
+		.length = ARRAY_SIZE(_var##_classnames),		\
 		.class_names = _var##_classnames,			\
 	}
-#define NUM_TYPE_ARGS(eltype, ...)				\
-	(sizeof((eltype[]) {__VA_ARGS__}) / sizeof(eltype))
 
 extern __printf(2, 3)
 void __dynamic_pr_debug(struct _ddebug *descriptor, const char *fmt, ...);
-- 
2.53.0


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EE2kMFNkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBE32F7543
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2BE110E4D6;
	Mon, 23 Mar 2026 16:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="WlPnBfD2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
 [209.85.167.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A118810E121
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:23:14 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id
 5614622812f47-46708149af2so1222898b6e.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408194; x=1774012994; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=q4prZoq+o67W5OQsgLrKexlAzQC80y9w+24uEfnXM5Y=;
 b=WlPnBfD2ikkHx6z98gzW9KZsxQ79SjmFVGsIFvb4gIeRclv9o/NVPVmmklXGIPliZU
 EpnR6Ch/Shbs+/lo0h/8ggG1/aijyiogv93k3Aouta1SpEsg2gbY7a02rLUQ83OJzlsV
 dYwiC8t0ROXtgwhHWVNeGdo+7ro6C+OKyX9+1Mf5z38mNfOjX66SCmuudX9EdlnVNTR2
 0lKTjka44O4biP3/aPrqeRzCG5FPwKoPVS5EA/jSXmOvAepyinUADi70Qb+L0pJn/Jq8
 tOkrkXSZIMoyXQWA1A+xnTduz0g6ZMekSyjYxSKoQJXQoPk8bVR9EH3YONHt/iyhO3C0
 KgSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408194; x=1774012994;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=q4prZoq+o67W5OQsgLrKexlAzQC80y9w+24uEfnXM5Y=;
 b=Wb3xqC2PnNRqLeZ62b53Nd7SNOt/h+neSh2xV4egZQKVK5zzxnluAb4HMOBMOkUaSk
 SH7DItjJyy5E3Orb5nMDCfdpeQLOFo812mjmOsvgSPCxt0cs0FL4f1+yiNYGGKg1lLSY
 jAb9vJW1hK3sbSrMGD/I1I+MXj+Diagy6vl/9dgGxQgi9fdKHcIUXSNtvIKxMLsMMziA
 YNOERR06qzP7vWIPnEmp/Z6F5MsEBE2TZ2rEiEjpCmuIKHmcsTO1R3JpWYPojleAA7TL
 c1xvOq/GsF1kHu9xn4DHYX8I4vjtbfPWxkpHeouN1BgCqzjzBMWwvymVTtNXb92+tIYn
 IO2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNjLO862cHGr3nuPVgOzoaL1pBc1PziBsMfWWwNbylgetWMLfKXQImljUC05gwlbGWCdp6xvG6KiA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx9VScRW/uEIKIGfImtQ3hY5SxvC2KeGHSVTzhEBpbw1DRNF3YY
 33LWl38NbxZLSUVFXoCUbuo8hHzLjvkNM9jtlP8w1mPtR/P/M/RPG4XX
X-Gm-Gg: ATEYQzxasu9QzMftx6kcm0rDHzL9tYTp0STVlCrBxZ7Qtvv5Me30qkygon5wVHNuJPW
 2JvRlS3ZBCTCvTIo9vW5P/ACeZGD/hQ8rk/6RrHEDyfglEENrs/3wNQIxn9fZr0/TZ5ticAzf3e
 acxbRnDz9TWIjFavjKzOTvFeCMHz81GaDQhLmzRs8XsosYHgAk3LL2PaM8IAn59BOjZAcSyE4PY
 vmsVse29iaM7pOvsHTst3mOgUcc4su10nkvzM3ek9xwYrlkXmwtiQB0YFxRj1KBwfnzhQ2+qdP7
 f5Zfx5rCQRb9ii8gSgG/siGCFBL5xsUwxy1Q6MqMZSEyEflpZZ35fV2eygHYJV/N7qUl2aDol64
 ivsOQKHj7s6EfaeEGrDFOsmbxcFD6hUXlJBG61TOFdkaKq1N3iZvNxm4AjF1IrZibjeM3kFN4xZ
 xs2oUTac6ErYqNg5eQvYVGOcxk7PsnJPVs80dqy53uhNDNQtex
X-Received: by 2002:a05:6808:1b24:b0:450:d471:dce5 with SMTP id
 5614622812f47-4675701babbmr1568851b6e.6.1773408193868; 
 Fri, 13 Mar 2026 06:23:13 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.23.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:23:13 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Jim Cromie <jim.cromie@gmail.com>,
 linux-kernel@vger.kernel.org
Cc: mripard@kernel.org, tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 09/65] dyndbg: drop NUM_TYPE_ARRAY
Date: Fri, 13 Mar 2026 07:19:34 -0600
Message-ID: <20260313132103.2529746-10-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313132103.2529746-1-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:23 +0000
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:linux-kernel@vger.kernel.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 5CBE32F7543
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


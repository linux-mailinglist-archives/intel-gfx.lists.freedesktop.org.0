Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCmdOV5kwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 971A42F75CE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D95510E50A;
	Mon, 23 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="kfHX+MkC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE79510EBF1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:23:16 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id
 5614622812f47-4670676ba03so829366b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408196; x=1774012996; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z18RPkW2IZoeg5aoWLW/CvDoUPtyLf/KFWO8hAB/+ds=;
 b=kfHX+MkCNEYvg9ohoNPBpKSHBEXIbF2Mtv+D28f7DNK6ABZDEXESdJsOZXBzp2ehfp
 NfOsDoCfRu20vYaWqPl/6vY1U4kCP2Wp6ItWI0Hligm88dR7bNNhgjqgNGF0d1JI4fsF
 R3Z/+GtKe4QRPQ2cTwUiYOLdQ7UnNnkN+qDwXQaHpspwbkNWeCVcRKm2RfgYZti7D99W
 SqzjrEKVagX/0z9YKczs5KlsgCibaJpfBWfYCv1HyHUbCh/uW0M20e4PT0Q1vAvy8QNK
 XQlphiq9H/nS6lUO9hSAYZFHlRA5KB042qZetN/XAURNq/haS1pBHAR3fEsVXaKjgEFh
 bVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408196; x=1774012996;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=z18RPkW2IZoeg5aoWLW/CvDoUPtyLf/KFWO8hAB/+ds=;
 b=bgd64sBBl7+MLIeN/8VMfU4Fst7vV2jemg1yiaEPAMTIBPAeeKiMjy/18CkZfnJU6O
 Hjx3Ys6N288p6hmwkjWvrL9hrbF/lCWUyoYH+OQk+j5R5vHSjA5UmPYnu/Zol3RJ0s/G
 CCuujf9ybL/Xf+c0w/lychK1LnU48ABsoOL3dTwibJMYb8oolrnUZuCHURldaUS1TIO0
 hkW9NOO7G5PZ4JulAhXolV+x8EBOc5CR2vdEyMu4Rz7GGLR5G8cu0b1OtLgZlnQu+XG6
 qRMzTbCanlmlqYDm9L8yrVA0dj8hTjiI2rXnRt3YIX9GIqJlFxICIkweRG2RdZfEb5Lx
 oD8A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVBdWU/iuhUXRxJ+wFeAvuEMMPlDxKXgWUPTsYjRFLl/1o1jwJSnk7ZUhFO/3tu72BMjZZl5bdIY+w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxqeFk2RhaOqET6/M1AVXwr2Bzif7xXvACBbWAmSLQ+797A72Jz
 RMoR1xUY3A7YOOlhjGMTZvDwqVFBHWQDVJ56oU+VJxmJCVN4W0DCFEmb
X-Gm-Gg: ATEYQzx9hKFWuFx8D5OhBplF08OuAibLYhSALIU73ay5YAX5OPV7sKmyuuf9vnVJ6lp
 5wDTfcbo+paKqRgCYQbds24/Y8OrtidigPFQSuumG/uSbGVr0O2gUV+MM6PbkAjX0/grGWmPTgr
 O9+K6ACqOm9wccFsk4yY8+trXh6UiRCjwJMlYP9APtHmKvJp/jjnwHoRo660ZxVTPCEgkFQsFtJ
 +cQgCOgA8cGFvKWtn+aVnCShBFwLsd3dDtGQJytky/q2Ts83OLennK6kye9MjzLKyHcrJk6VlJn
 C6RD76l8IDlJhv0OwlUXV2ZT5PbyswXW5lkOi3fDQJSMNysjaFqDFLNYY1THhrsKnx9DXTo2EE5
 BdB0wXbSpoBnVbvpODRjVvsZR41nvsZuq+CA8Bgq7lruEJQIMjFpkBNNxozpkYlZuH7nTuozHT+
 bAMur7YDAUrySON3Z61tcQ1fbeEs67uCgAC34U6+g+5FWT+U1PLA57NNUUknU=
X-Received: by 2002:a05:6808:c3ef:b0:466:fd51:6a66 with SMTP id
 5614622812f47-4675714c79fmr1554429b6e.20.1773408195957; 
 Fri, 13 Mar 2026 06:23:15 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:23:15 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Andrew Morton <akpm@linux-foundation.org>,
 Jim Cromie <jim.cromie@gmail.com>, linux-kernel@vger.kernel.org
Cc: mripard@kernel.org, tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 10/65] dyndbg: tweak pr_fmt to avoid expansion conflicts
Date: Fri, 13 Mar 2026 07:19:35 -0600
Message-ID: <20260313132103.2529746-11-jim.cromie@gmail.com>
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
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:akpm@linux-foundation.org,m:jim.cromie@gmail.com,m:linux-kernel@vger.kernel.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux-foundation.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
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
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 971A42F75CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Disambiguate pr_fmt(fmt) arg, by changing it to _FMT_, to avoid naming
confusion with many later macros also using that argname.

no functional change

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index ffa1cf7c2c72..9575b92a8deb 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -11,7 +11,7 @@
  * Copyright (C) 2013 Du, Changbin <changbin.du@gmail.com>
  */
 
-#define pr_fmt(fmt) "dyndbg: " fmt
+#define pr_fmt(_FMT_) "dyndbg: " _FMT_
 
 #include <linux/kernel.h>
 #include <linux/module.h>
-- 
2.53.0


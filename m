Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDwmOGRkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966732F765A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4AE10E51C;
	Mon, 23 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="dp0V0cci";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B5C10EBFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:23:08 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id
 5614622812f47-467161c4b89so1364719b6e.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408188; x=1774012988; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=R/SjSwC+RMF8YRDI51sil3K6xHtCNjZlX0uljPPVd8o=;
 b=dp0V0cciEDCn+h31DffW5GB6xhZcH+5M6/0ypUrTGL0leHGsL4FQMlPdUKcRuL2GUg
 lbsbXGRgRczLzu0c/n/OWnZmQpDC5xjCWTMpBsGl+JbWzOeKfAGmKLH7IHCsrFvJyhGh
 ImEGcx/MBOvkUxsWwUQ6ZXj8hQkdfIAz8TIji312M7kWvvYesZnJBgbj/w2Y+c9UHWXz
 maOieuGvIlu+wZPIShhLVFOVpGcO3K0D2Xt0WsjcDvX90P8mG737XFHGFUFU+WsVwOyr
 sX9HR/5HIdI7I2YCqe50fqM6tE6iZNmVCUok0CONUWHDzFVIg4vYyzrAmFYacdvDfmIE
 tb1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408188; x=1774012988;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=R/SjSwC+RMF8YRDI51sil3K6xHtCNjZlX0uljPPVd8o=;
 b=ItNkqk9QULwhfJblOG+ggCIaHJW/eOQbd8EN1N33evBJXn09LcLAY1e9MCGSj9FDoe
 2sLbtJ727AO4eOsWKwGpQ+TSG5EAsLFihQXArZJoopQFGKBgTSbvCL66mMb/gazIO0rU
 pDgBWfkygL7e0GFPAkLCNpJaCHF7DgA40CnoqzF9FeYTHL+GpmbH9L5mpb/+9Av2bK0l
 rTGTpC6IEAnboxSiOPE3XVELsE9mPKjw+V0UV5+JhLij3gSi68JIcSxVaRKVpUWmI9dC
 7c3Al5cxz1e6C8TN6W1WupkPXhEqHVWKnfGPQJgZJ5wi1qRktH/VG+79kEoB5Tu3oWzD
 k6CQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsoyULMnu6PJtrF4jztYvXarleex3XKo896Cf+P+3OEBMcldQj8icOSOXfBaOcaCIAvOXT3FZ3cNE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxkXlRuuzao2UWd4p4Vt6VFjcjTgXcQGJfgUffUA9IAoTLRhLXY
 +K+dkLBHgZ2hK4Por634Bl0bAhslRcsqmslSwL9tioSt1IKP+q9CItLF
X-Gm-Gg: ATEYQzys1Lp21qhmzcSIathMMzATy8RHhHDhRa/FwVh/SnQppgQMlosM8jpa/ge4/l+
 wa/W26xLhFKRVNih8g3GqXlODs3NvX0L+IAnOy9rT3tY5/TAWAF80x/X+/Rqvog/ebYjaAria8K
 y+N5cIhq8mHDWd20X2ODx96N/rhN96K3o4MaPwQqudaJ2s6vLreF1y39zp7OlAIRXduZu2GiapB
 +M4X/11SoO+D8WqI/FpihP6/AOkxia9I5WQQjvUu1DL01rt2UiDpRqlNCOdkuIZ6y5hPggvr8p6
 f21IO75PeTNBfWXB4r2jaluOexIqaV8UIXL0/TnWECPJaZH7OoW+eqouXmY6eO3YzpaoVsaxx0q
 P3VGTu75oPB31zIgYOcLnwT84fW+jxB5Dp9jhbexavoMFMHmdO3adp8kbHL7kPmPousERb1njPT
 bZfHIEwdamaPSuLgzHOFX8uQVkfHZ9XjmUN1VdHuqEKRtqk8/G
X-Received: by 2002:a05:6808:c188:b0:45e:e088:5f3e with SMTP id
 5614622812f47-467575cda13mr1872198b6e.49.1773408187615; 
 Fri, 13 Mar 2026 06:23:07 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.23.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:23:07 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Jim Cromie <jim.cromie@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org
Cc: mripard@kernel.org, tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 06/65] test-dyndbg: fixup CLASSMAP usage error
Date: Fri, 13 Mar 2026 07:19:31 -0600
Message-ID: <20260313132103.2529746-7-jim.cromie@gmail.com>
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
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:akpm@linux-foundation.org,m:linux-kernel@vger.kernel.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.955];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 966732F765A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

commit 6ea3bf466ac6 ("dyndbg: test DECLARE_DYNDBG_CLASSMAP, sysfs nodes")

A closer look at test_dynamic_debug.ko logging output reveals a macro
usage error:

lib/test_dynamic_debug.c:105 [test_dynamic_debug]do_cats =p "LOW msg\n" class:MID
lib/test_dynamic_debug.c:106 [test_dynamic_debug]do_cats =p "MID msg\n" class:HI
lib/test_dynamic_debug.c:107 [test_dynamic_debug]do_cats =_ "HI msg\n" class unknown, _id:13

107 says: HI is unknown, and 105,106 have a LOW/MID and MID/HI skew.

DECLARE_DYNDBG_CLASSMAP() _base arg must equal the enum's 1st value,
in this case it was _base + 1.  This leaves HI class un-selectable.

NB: the macro could better validate its arguments.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Tested-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/test_dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index 77c2a669b6af..396144cf351b 100644
--- a/lib/test_dynamic_debug.c
+++ b/lib/test_dynamic_debug.c
@@ -75,7 +75,7 @@ DD_SYS_WRAP(disjoint_bits, p);
 DD_SYS_WRAP(disjoint_bits, T);
 
 /* symbolic input, independent bits */
-enum cat_disjoint_names { LOW = 11, MID, HI };
+enum cat_disjoint_names { LOW = 10, MID, HI };
 DECLARE_DYNDBG_CLASSMAP(map_disjoint_names, DD_CLASS_TYPE_DISJOINT_NAMES, 10,
 			"LOW", "MID", "HI");
 DD_SYS_WRAP(disjoint_names, p);
-- 
2.53.0


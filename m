Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHLjAGFkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CAB2F75FA
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C6B10E51F;
	Mon, 23 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="CCdlUqIj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5891110EC0E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:11 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id
 5614622812f47-4671cbce626so1072959b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408250; x=1774013050; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q+DKhn/7Y3l3C4FKBxAszRLz9P1Pf05n9UBGOlLEX4s=;
 b=CCdlUqIj86TorFk4KSYg+b4tsZCmtkzcAa6Rk//JUwPSP91VSl8MKtp6KZhbGtDEOO
 3oz3ev2tlbw4DONzwIJsDPdy0+GJ4J6XiXUHEKlPmI5B2/BSdpS7YLa3DggfUdnf8ISY
 6LRUlx/uIG5+tCjc7CwFH3aqvyUDKER9oG+Q0tOFdHSoIIIs0/W0X4/oiwXeussBhApw
 yTvnYNrBrhtLeKKoPKl8LthB8WExyn9ITQgdE9Gl33CnIIGEfQTLd1t7GcdlTHyVsQht
 qnfcsT1nywAN9G2DTywTq3+O0QGymJMl2ZV7P4N7Elgn4OI/pP0t+x9DyGRD8Xa41/Q7
 bbcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408250; x=1774013050;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Q+DKhn/7Y3l3C4FKBxAszRLz9P1Pf05n9UBGOlLEX4s=;
 b=lpeDtlsuFyIk1JKy9M6DZHlaI6WK+0y5+zkM+P+/Nx4g95ebE3GXvUnooKnh9W3lQS
 wg4ax0juBnyYPAfVvskbN3vwcbaDQ30NSES2EgNFQA+wp6eMwBzcQAdalmoDjyNTmyDg
 5U766CFBIcUUAsNHZPYnCuoFA3yZfwiMfZFwOfYp2N4sK4MpESgA6bFu1zDAJg12ROVj
 GCaR1GHJLVTgpFwfNx+Q46JpmDblz4C6p3VGdrGjqcLIViA+svURl5YoQMMvZaknMnbq
 Ylrp56IH/NkkLZ/XoqVAhnPs8EETPKP38sOY2twG7zsbHhilRwcMUDxwI18lvcAtApPO
 J4dA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU1mIY/EXnqwSoq0ADJBmDG9Dog8S0PlR5fIsTkiLi81T0JlENscXfpTzLV+fytYcr9/0+P2GMeACs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyXVsd6yF7pIkRY1gt6qpnwoF3SDH842sGSJtYw/aU9dyUAJs3v
 Ee0d9cHVn6tA0mR/adj80PHWFBBGhLW6s/599gQurXUWq7CD9TxrUVw7
X-Gm-Gg: ATEYQzwXHXOExAcJFFDuks8JwpP2OipHWdGLQTJiNwP7gehQ89oJtWslwSyqJPOiKcR
 5NaqePno6Xy3Dfe4ZXr+dw8m5sHgiAZ8iwoU1WcctBhxjOVfYLDZJ+WOzFTq+Fj63t24jRi65cq
 kJZ6YVWE+MYlpfsqj+wuue67JMWu8yOjguK4Jx8xbojxVwAVkfkQV2G/DT0E9yGwkXLRvTacnzX
 g2KVI8IckwvnF2SMvPOMrszGWiQm8r/lX0g3XJgkmq71OAUp+RRumPMmmSjoznbrx3g7ybNYzsz
 0wFiZ2G7m0FMrai8LMk2siE9bG6jnj+xQ6eb3Fmgj9b1RoSz0xRtWGO3w4Kdru9W7Bz3XrpsZ5Y
 OWfbWFFFdiqvJa07vxZ4aJRpRGTfjEApwKKXh8lkV6F0apsrjf+TwTntC31eawUdHNOpnXWr77T
 RzYvVF0/Li0GW9+FRs7YaU6Km+9soSC3NCAkaAUdCGBvmKtzAl
X-Received: by 2002:a05:6808:15a2:b0:467:5571:1b0a with SMTP id
 5614622812f47-467570d9e44mr1817008b6e.26.1773408250365; 
 Fri, 13 Mar 2026 06:24:10 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:09 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Jim Cromie <jim.cromie@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 34/65] drm: use correct ccflags-y spelling
Date: Fri, 13 Mar 2026 07:19:59 -0600
Message-ID: <20260313132103.2529746-35-jim.cromie@gmail.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:jim.cromie@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
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
	NEURAL_HAM(-0.00)[-0.945];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A6CAB2F75FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Incorrectly spelled CFLAGS- failed to add -DDYNAMIC_DEBUG_MODULE,
which disabled dynamic-debug in modules built with:

CONFIG_DYNAMIC_DEBUG=n		# 1
CONFIG_DYNAMIC_DEBUG_CORE=y	# 2
CONFIG_DRM_USE_DYNAMIC_DEBUG=y	# 3

NB: this adds the flag (when 3) more often than strictly needed;
modules built with CONFIG_DYNAMIC_DEBUG=y (!1) don't need the flag.

Fixes: 84ec67288c10 ("drm_print: wrap drm_*_dbg in dyndbg descriptor factory macro")
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index aba4bf542a35..02e244688b48 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -3,7 +3,8 @@
 # Makefile for the drm device driver.  This driver provides support for the
 # Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and higher.
 
-CFLAGS-$(CONFIG_DRM_USE_DYNAMIC_DEBUG)	+= -DDYNAMIC_DEBUG_MODULE
+ccflags-$(CONFIG_DRM_USE_DYNAMIC_DEBUG)		+= -DDYNAMIC_DEBUG_MODULE
+subdir-ccflags-$(CONFIG_DRM_USE_DYNAMIC_DEBUG)	+= -DDYNAMIC_DEBUG_MODULE
 
 # Unconditionally enable W=1 warnings locally
 # --- begin copy-paste W=1 warnings from scripts/Makefile.warn
-- 
2.53.0


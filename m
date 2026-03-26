Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIeuKk1zymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED5035B669
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BECD010E6E8;
	Mon, 30 Mar 2026 12:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jH8JNCjP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com
 [209.85.160.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F9F10EBF1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:53 +0000 (UTC)
Received: by mail-oa1-f43.google.com with SMTP id
 586e51a60fabf-4138136f02eso902523fac.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551353; x=1775156153; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v7n8LRPhTnKwHNdLKddxIC02c+MckVOPZFH0J7I21NQ=;
 b=jH8JNCjPnhoEXU8PXBKagfcumi83KxobSi9w6zSWsuLksp4W8J2B1gRcw772lV+oWG
 Z0pvsdQs15w1LZhq4r0oPX2zvEGnTctTZPFjg3TDovnf00IspfboybiKY3V++3SDFV3b
 7TRfM6q5V2mv+FEgitJ0HADKEBszbxqcT4EvNqpURVvc0y2ZRdI+/Ti8dtyChAMjUX4C
 NTVpOOGBQDiz7VoQXwM4oKRsWgdA6Oge8C7pJDih8T4/rG0rGS/bhNP9ZV0BiV8U4wjY
 kbrBXkImgcBLHCwTQzZH+AJkg2SNnVAc4AOynGxJTaJ0k7nNkiQKglLDd5k8bgWY/zD8
 OYRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551353; x=1775156153;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=v7n8LRPhTnKwHNdLKddxIC02c+MckVOPZFH0J7I21NQ=;
 b=ISBNvbZT/+xriUeZJ/w0gmrKRu7Z/A5EsPKmVa8qGDP6cAUZuepflueT44gdxt47t5
 q8cDHERTceJfEi17+I3Pz9vYnIaVY0BQjaOjYnCYuD+RbxC6bQeauxvP+FbZJ4euGd2/
 BsuqWkjaXsr1kzAyhY1kmSKjUI2m2UJnjBJUqwZ2niDEvE0u4RnOKfMvf3GCi3wQIA6C
 DNVzJENB3MiZ74TF8kj3Pgi7ZPR+bJ/TiCJN+K29kFdBjMUmSHWBhG7vggqmDUpOGZQF
 dlLAf4bnQEDVYY8hJHalxvgxYOjxreTfSpVL3qrDytpqwTHBzXSc+Er1pinTjpiAzD8/
 PHww==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOLSS5xKq3yHXg+cO1sXAqL9VNba0QTehpRhIt3GvdOHpKajYb3adlMnXJC2myp25jrWoC719x3Qs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxR4awl5asBhOTRzT8D29m4wfKJA3AVthAfaPwIE1NgaW7/HS3E
 grTgpxzTeGSL5tYVmduRlpeGeANMIUhN7MsGOCbVbA5ezr14UUq9+6ie
X-Gm-Gg: ATEYQzxveK0wBjCHCP2UQLbajOrNoqe1b+3wGHFiNEsDDbuTxbg7qYN9aeXO4WFGcoc
 fdDjFn8beo5oSqCoCwVVxhnaTBmXnkmprz/t4bo0e/POqAGjhQsDhmSXtn7aSBdb0ryTfQL/YPl
 MFzn0XYcpZ67E63sVEfLLklyK+UVHZq34ivaGTSinR2fBWYskh57PELrmcm+H2jEZ/BhYODjw+V
 rP1k1P79fU0hEuYbJ3ff6oN2hpYRaJxBD3sk/DboOS8HkB2ASpbAnvsWvgg26hMa/jo/1HDhDjP
 pBwXFZIG+4IYlmpwxadprY8DwITBU0oYzuCOa1QI8hPZ2xR6ZfhBb44o0N5LdGqnqcltOnafrh8
 Tsdpk4x/tsiF+EO1Bi/xxioH2IFnZ57s8/URaQwWW5qCI0iVYoSDazdevqNSTw3NF+d2Y1BoPHc
 PHo9jPTHVfnv9b6YnISdekfhSpsKaycW0xoXbFcUwt1BkXPZvT
X-Received: by 2002:a05:6871:608:b0:41c:305b:14d0 with SMTP id
 586e51a60fabf-41ca7049e58mr4680983fac.35.1774551352968; 
 Thu, 26 Mar 2026 11:55:52 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:52 -0700 (PDT)
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
Subject: [PATCH v12 53/69] drm-dyndbg: add DRM_CLASSMAP_USE to bochs
Date: Thu, 26 Mar 2026 12:53:57 -0600
Message-ID: <20260326185413.1205870-54-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: 5ED5035B669
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tiny/bochs has 5 DRM_UT_* debugs, make them controllable when
CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg that the module has
class'd debugs.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/tiny/bochs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/tiny/bochs.c b/drivers/gpu/drm/tiny/bochs.c
index 222e4ae1abbd..8f04666e7def 100644
--- a/drivers/gpu/drm/tiny/bochs.c
+++ b/drivers/gpu/drm/tiny/bochs.c
@@ -63,6 +63,8 @@ static int bochs_modeset = -1;
 static int defx = 1024;
 static int defy = 768;
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 module_param_named(modeset, bochs_modeset, int, 0444);
 MODULE_PARM_DESC(modeset, "enable/disable kernel modesetting");
 
-- 
2.53.0


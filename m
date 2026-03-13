Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABYrFHBkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:04:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5E32F7766
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39EB10E564;
	Mon, 23 Mar 2026 16:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="kxKogpGm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1BD110EC1F
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:41 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id
 5614622812f47-464ba2bb3aeso1297274b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408281; x=1774013081; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iu46xPMmyhe3j2aI3EiB0/ULgdgDrucXaD4Bb/DoM7A=;
 b=kxKogpGmhw7mwAsLuF/cNhURBdNMPRLwWlsYMzzTJVmty2nGwGnZPB7dLsSRHoCloo
 To5TQop6InxG4TKSA08WuaCfUSpp76Yng+7Ckt6UgrO3LF+u1XqYAsfs9QLPXr+1cpY8
 7OzlzilvssTF/r4Cnz957a0behSAG0Jfg2TLA9aT4vRDZMs0fAveRmHYyZF6rtw/6C4Q
 iW9Yeq/xAnY5OY/YDNN3Dm1gQiNtKgH7/A5yLCFJT3AW/r0HzO8pOZEh1ogIYNd4Q8Qq
 PnNX25fMJGlkiHGfkmldWR8KLPUKiRaAbZO9MUPKAQ0MGnr/42OZB93JbTjksnFl+UfU
 DbzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408281; x=1774013081;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=iu46xPMmyhe3j2aI3EiB0/ULgdgDrucXaD4Bb/DoM7A=;
 b=ib74wlfQQ+q0mmQxCSPYjT1mVC2K/mmp4PgwQ4jtNvbbqPOtAvtBqMYxA3v5HxIz5B
 4J6VzUpARRV1qE3g/SMqF044Zcr2y72u7CRrAQ+tk7k+b5dGGfroFfygvihBYf0y+Cb6
 +LoZAS6jD4xzPYgjPkpiWvvKql7L/1uy30xe91yzTCnsmgbfmKgNCFvEjiP5iGyPcK1L
 cylN44vV5fw3LIqzrMqBvgYxkMdDf9/JxciTMVeG6DLxzilzoi07YZDHxYRi+cVWKIo3
 jP4NgVOYs7fSK/fn8OYixce+SHdIYTZvyNlF/a2HjfZvEFp/ccsCPyUU6twgDcYpIJQb
 bruA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXW7H9dQu/f+cvDjcZPZ0MpP/+ZiUvIpwRZpk0C7bq75CAqq2PCw7imtpxGVYAGYGY/bNIONtYW1fc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyDJJUYk8L7HOPNRq6hzkgt9V7ljIqsGniwLEB7t7Ea1ac3U8KV
 UzN6QOILYds0AOVl/Z1ZZl/OcUQkIIi7x8+3XzM/JmpJ3hL72tX6+HAy
X-Gm-Gg: ATEYQzzzghIgEwAavAuIYeVDhpq5PYg0qoNmymbZgm5yeI+UAj7xF7lQFPH/elcUdyh
 VnR5UCgKj9xw8GPXUl9LFfY/yXHYif5RJGRdry2xxIHtaHXKOmpShpVHPAd3b9KcVN+5r7mPYhk
 P3XNyy2iPBg+X5k0kFEKqF863mK+PiBSF3BR7uQPSoWCpTduk9XrFweTnALR3zi1xGj58JWKvjg
 oT7YY5fWAA9XH7ogcHIppxQPa+q9OLC4N80du8nWXBK5kSP4iCruEwC+2c1QpxLJSmsUtwnrxsA
 xZq910smZi/zE2gva67z+BC6P6I0Bs0Z31ITIBrGlKPz3yh1HKrxgGy9yDIcXrJpBc2SQAU1s8z
 PvXSWY694uCs890old8l6cYiZbcSs+/iODFrz3dKji0XtXIJEIabOFsu3IbHkdpIOmq8rzmumoE
 Skb/Fnd2/z+hhWcCJO0JI2eJF7lFdjp8rE/4b3kJT4EB7lfpd8
X-Received: by 2002:a05:6808:c40d:b0:45c:80bc:964c with SMTP id
 5614622812f47-467557e5b52mr1847301b6e.26.1773408280854; 
 Fri, 13 Mar 2026 06:24:40 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:40 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 49/65] drm-dyndbg: add DRM_CLASSMAP_USE to gma500 driver
Date: Fri, 13 Mar 2026 07:20:14 -0600
Message-ID: <20260313132103.2529746-50-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:patrik.r.jakobsson@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:patrikrjakobsson@gmail.com,m:jimcromie@gmail.com,s:lists@lfdr.de];
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
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linux.intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.567];
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
X-Rspamd-Queue-Id: EE5E32F7766
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The gma500 has 126 DRM_UT_* debugs, make them controllable when
CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg that the module has
class'd debugs.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/gma500/psb_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/gma500/psb_drv.c b/drivers/gpu/drm/gma500/psb_drv.c
index 005ab7f5355f..92b18c76b44e 100644
--- a/drivers/gpu/drm/gma500/psb_drv.c
+++ b/drivers/gpu/drm/gma500/psb_drv.c
@@ -41,6 +41,8 @@
 static const struct drm_driver driver;
 static int psb_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent);
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 /*
  * The table below contains a mapping of the PCI vendor ID and the PCI Device ID
  * to the different groups of PowerVR 5-series chip designs
-- 
2.53.0


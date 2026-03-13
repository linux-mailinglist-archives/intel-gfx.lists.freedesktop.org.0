Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFWHCGlkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C020F2F76C5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA6010E54B;
	Mon, 23 Mar 2026 16:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="WdlIUNs8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4507C10EC23
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:25:04 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id
 5614622812f47-464ba2bb3aeso1297464b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408303; x=1774013103; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZmHuo2gpKk+a4rM0v+S94FJooBnanLI4bt90pYFjtcE=;
 b=WdlIUNs8jVU09TTFtkAQFzt/PZG5qNnFsuuiRJ/khBU3BGmXcnCbsIcu8vfLV3fcgT
 apUX3jzndETlbFP1+3sIKYcSjCAEmZYSh6l1qlZ6tluzI5vmqMRavC0h/Eb9Gv29rpQ+
 fLnJCVCH6tuQWZkUc9HwIWzbwDScdvApQGdljvcugN5aWzqOPXNVoF1UNe9SbAfqjvHI
 CJVBZRUXPXny05aMX/zJu8wptnX0vM2v8L046QZfXYUY+OU3s4AESnIcN79Qkn49byZ7
 6oXusQ86GB2d/ktYEzZpQU0mHHWjvym6L64cm339HFCLL8wlh4KqeL1YkebgbO9TMmCr
 Z/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408303; x=1774013103;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ZmHuo2gpKk+a4rM0v+S94FJooBnanLI4bt90pYFjtcE=;
 b=LHn1UNUEmYIpnoTSpTGfrLR5BXn31Bivd9QOTyE0bK0g1uAMNc+4L+SWyIiHRoATi2
 ow0xT3mdk15iIm/zvu8orDTUYv+lhrhot9LegrOFvBXt7bQYNC3MMmj04uvbLHQae9dL
 Az2KDPkF0+fjicrmtsC0Oqb3Ei2Plun4wrVqeusfhi8VdUJV07IzncTkuL/dKiZBcMDK
 mejheoZsW5vy7g9Pzb1sqtVBXN9H+vVZk3V9/jVb1u8UgOv028a2JDQmLX5gPm9JkmyR
 Mgzhsbza0fs1WZdWaCHpb4kKUmM6JCy4ZVVkYj9QN+/A9Ebyvt9opT2o4f7OCi6pcIJK
 cxAQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV9RMVE96tPufvQDMnba+kWgIqogSb3NWR/NMXdtnrBapQJRupBvjAohQzFmaV9CdpozFdIvouZ4cM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyJFWcRdiM8M7XDc51P7FAmaCrVzTjpQ01iKD9lVmrEC1xAWaZz
 thoGOphQmoY60UCMo181XxhazQ0KL231kLfpGS2VTWr37vpvICXnwUYT
X-Gm-Gg: ATEYQzzvr5zTxZ0oksBCuJPKtBSj+BUrgYixn2hbE5ZDwqG4n4iyzyojaM0hW77hNlr
 2FT5+HmwKHoY/VC11HaFNiSBuNzWLHV8epacXbk175+RyVmQSZ2fzDE3NJg3NXyVhndzY/381TO
 vFg9ArOOd+F3QJAsHDW1tJuHd2JdQKWTTtJzKYVmuPLe/c68L9KND2NEn39UKSF+sqRKBFNraMC
 Mvw4K0xJNG+zVVq/PGtCNEN7XGaJW4BPl/fmmoBp2HZG6Ej1zpd1hnd2YZXGn2Rmd5Ltsv2/srb
 Cac7cbHmHeAryc+DiW9lMpEE8S2+rheKYHTA/xdXaTdX36fQLTjTFasj6VHMQ9KvOa3xffXbel4
 a2rsg8oMtf+ZCyhWjPXSQIIbL6vI3C5nX3RG/s/5qvtqiVsZBnOJ56gGxqrhetDx19QUEsVOS4F
 7GxlssblMQpprRee8QdAthUcdy0aG790n0nImcutaTPA2KPdIz
X-Received: by 2002:a05:6808:190e:b0:467:2be4:9e33 with SMTP id
 5614622812f47-4675552dd65mr1929280b6e.6.1773408303348; 
 Fri, 13 Mar 2026 06:25:03 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.25.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:25:03 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, "Rob Herring (Arm)" <robh@kernel.org>,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>, Oded Gabbay <ogabbay@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 61/65] accel/ethosu: enable drm.debug control
Date: Fri, 13 Mar 2026 07:20:26 -0600
Message-ID: <20260313132103.2529746-62-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,tomeuvizoso.net,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:robh@kernel.org,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.572];
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
X-Rspamd-Queue-Id: C020F2F76C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ethosu.ko has several drm*dbg() calls, it must call DRM_CLASSMAP_USE
to tell dynamic-debug what classmap enables them.
Also include drm/drm_print.h explicitly.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/accel/ethosu/ethosu_drv.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/accel/ethosu/ethosu_drv.c b/drivers/accel/ethosu/ethosu_drv.c
index 9992193d7338..a0b8cb81a359 100644
--- a/drivers/accel/ethosu/ethosu_drv.c
+++ b/drivers/accel/ethosu/ethosu_drv.c
@@ -17,12 +17,15 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_accel.h>
 #include <drm/ethosu_accel.h>
+#include <drm/drm_print.h>
 
 #include "ethosu_drv.h"
 #include "ethosu_device.h"
 #include "ethosu_gem.h"
 #include "ethosu_job.h"
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 static int ethosu_ioctl_dev_query(struct drm_device *ddev, void *data,
 				  struct drm_file *file)
 {
-- 
2.53.0


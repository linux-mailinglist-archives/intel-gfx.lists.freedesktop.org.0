Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8EA611CBA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 23:53:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8285410E8E9;
	Fri, 28 Oct 2022 21:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F250A10E8E8
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 21:53:26 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id 4so5994711pli.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 14:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=uwCxQi/lzbG99sopXdaVgVE2DsVCsrVGzk6dQZZnkc8=;
 b=I2wDE32iuPDJS6Ln4R3C7D+1bXa0yvl0RCT+wy/Vt0bL7g0cgQTolmDJ1THfnJ8khZ
 jDEdnMGi8XvZMvYAHMAkQxMDjybr0ID5erEsw7n6tALBv/ktbg7bhZ4rLNKN82hdrShW
 J9ifmwTQrN86Sp5PxD+oOtzKrNwbXuElrxYMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uwCxQi/lzbG99sopXdaVgVE2DsVCsrVGzk6dQZZnkc8=;
 b=cXao+dj9AlLynGjqzR9WhBFWrs/Iiofavu8vtgZAQDg/QsLsYLy6fVxjrHxz1Y+TOT
 utT1Rwcnel+zCWQdmXLzfYMYfVC2Jndh1eR8V+2ttlVCMfAlY/+fJg9ar3d9ypwQC5lE
 ETjqh1bJQvplO5az/HvE0M4kY+pz9LC/Pc5EnSrkgXHz3nDHPsLwKOBYm/O773zGKiTW
 aPZD8Oen7eCCjhgtVCiXnxae+gUSmyv58sNoMvTVt1sD6QXOrt7jL9foUGJ/6uTSh2kS
 REC7y91TjJz/CMenajKioJSjHyVlhKYpLakLuG94eXjVzUHOuvCqMo4+v25FDZ+arcAP
 fYeg==
X-Gm-Message-State: ACrzQf2MCtczcSu413XNbPEZrbn8Jx0ZN8RGdqQVc7I2yrpvg8SxZyjL
 rx71SpiwYYY4LrHdjIQdDT9GWg==
X-Google-Smtp-Source: AMsMyM7Z7henHLAjyucT+QXQnehtd5Zyu7DPcyrdvjnKBnTvpxyYd8nxtXTnemCxJqDLmGYfSMu6QA==
X-Received: by 2002:a17:90b:3e81:b0:20d:bbe5:f332 with SMTP id
 rj1-20020a17090b3e8100b0020dbbe5f332mr19029604pjb.112.1666994006140; 
 Fri, 28 Oct 2022 14:53:26 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:65f9:c180:249c:190f])
 by smtp.gmail.com with UTF8SMTPSA id
 a4-20020a621a04000000b00545f5046372sm3251964pfa.208.2022.10.28.14.53.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Oct 2022 14:53:25 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Fri, 28 Oct 2022 14:53:22 -0700
Message-Id: <20221028145319.1.I87b119c576d486ad139faf1b7278d97e158aabe4@changeid>
X-Mailer: git-send-email 2.38.1.273.g43a17bfeac-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Set PROBE_PREFER_ASYNCHRONOUS
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
Cc: Feng Tang <feng.tang@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This driver often takes a good 100ms to start, but in some particularly
bad cases takes more than 1 second.

In surveying risk for this driver, I poked around for cross-device
shared state, which can be a source of race conditions. GVT support
(intel_gvt_devices) seems potentially suspect, but it has an appropriate
mutex, and doesn't seem to care about ordering -- if devices are present
when the kvmgt module loads, they'll get picked up; and if they probe
later than kvmgt, they'll attach then.

Additionally, I see past discussions about this patch [1], which
concluded that there were problems at the time due to the way
hdac_i915.c called request_module("i915") and expected it to complete
probing [2]. Work has since been merged [3] to fix that problem.

This driver was pinpointed as part of a survey of drivers that take more
than 100ms in their initcall (i.e., are built in, and probing
synchronously) on a lab of ChromeOS systems.

[1] [RFC] i915: make the probe asynchronous
    https://lore.kernel.org/all/20180604053219.2040-1-feng.tang@intel.com/

[2] https://lore.kernel.org/all/s5hin4d1e3f.wl-tiwai@suse.de/

[3] Commit f9b54e1961c7 ("ALSA: hda/i915: Allow delayed i915 audio
    component binding")

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/gpu/drm/i915/i915_pci.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 38460a0bd7cb..1cb1f87aea86 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1371,7 +1371,10 @@ static struct pci_driver i915_pci_driver = {
 	.probe = i915_pci_probe,
 	.remove = i915_pci_remove,
 	.shutdown = i915_pci_shutdown,
-	.driver.pm = &i915_pm_ops,
+	.driver = {
+		.pm = &i915_pm_ops,
+		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
+	},
 };
 
 int i915_pci_register_driver(void)
-- 
2.38.1.273.g43a17bfeac-goog


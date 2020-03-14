Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A95918562F
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 19:33:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162396E063;
	Sat, 14 Mar 2020 18:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A479C6E063
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 18:33:52 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id a141so13689994wme.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 11:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cf59xw3PIHSPMUJhU76WE7ctiNmoYthIYJ0CaqzUGT0=;
 b=ohEohooUKUhu41PW3PZBR7jkbDmdAjlt4tg3dWD932pawWZlWqQs4RpFwp9K5DxqUe
 BdkEGQyyfcM/VE2mz3sh2SwQDLtY5/jEdjc6Hjgurc9QlIRx3/PkHe/Ri4eSnuPsIIVF
 CrYiMWAbG+BPCoz7zh7dbTg+hOdz6tzWJ9UC9ycdMgd0CgPNam6g7lNzuK7S9i/GgMfI
 KaO3pJWAozgbKFHguAXDgdpq8vYFKBWl56ptgmO1RAsTFlpNsrr4M7fisdyeL8uoctgK
 VztaquhuBsP2GfoeDt2uJPoewfrFLmRJDMyX3VOFwFlRe5QoHG7XKXvzSRVIeNEI5ZoO
 c+Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cf59xw3PIHSPMUJhU76WE7ctiNmoYthIYJ0CaqzUGT0=;
 b=A2i1VEmZb0b/+psm4dwte6zbq2GfhcXc8amHlzqomSoBGP+g06jEJy2iXf0sGipiZ8
 fF58nwK1b0jqkcyR4ajEs2x3o8bBCro9PJitYC1/RoZq8Wwo90iN+O9ubqqBcx0KBTIT
 Rg8pjyaDc9CgfIrB6mQSeGndiitWwuwPm0VrgM9Y2ctxmWC98WAgl2Im4HH3m8Uq6eww
 sBrSHahaMeFNf8YEN6Zab+6W+h3+aXMhbZxNxmP+FMSmITVIpbiudK1872aL3mALj+o3
 p6u5PeM9IQC/5/6TdhSC0nWkewNm4AOwiGJ4HjfJBu5WAS+eJ+o3FBrI7UMrxJn15MsR
 Wj1A==
X-Gm-Message-State: ANhLgQ1JPDZzvOmt3mOC9VRJ4t+CJwXGrVaBcg9GOfyHetlG/kJ2hOIL
 zZCiSCHjZpuOhrkHGa7NyJ8=
X-Google-Smtp-Source: ADFU+vucyLLZj/uQjdfDCO+Va4gum2svUVpLPO30GkPOqLMlu1ueFNifuR0AAJ2VDdp1qTE2aGP4OQ==
X-Received: by 2002:a05:600c:d8:: with SMTP id
 u24mr1246755wmm.42.1584210830348; 
 Sat, 14 Mar 2020 11:33:50 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id
 s127sm22450820wmf.28.2020.03.14.11.33.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2020 11:33:49 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Sat, 14 Mar 2020 21:33:37 +0300
Message-Id: <20200314183344.17603-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/gt: convert to struct drm_device
 based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patchset continues the conversion of printk based macros to use
the struct drm_device based drm logging macros focused on the i915/gt
folder.
These patches were achieved using both coccinelle and manually.

Wambui Karuga (7):
  drm/i915/ggtt: convert to drm_device based logging macros.
  drm/i915/lrc: convert to struct drm_device based logging macros.
  drm/i915/rc6: convert to struct drm_device based logging macros.
  drm/i915/renderstate: use struct drm_device based logging macros.
  drm/i915/ring_submission: use drm_device based logging macros.
  drm/i915/rps: use struct drm_device based logging macros.
  drm/i915/workarounds: convert to drm_device based logging macros.

 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 38 ++++++----
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 14 ++--
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 35 +++++----
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 33 ++++----
 drivers/gpu/drm/i915/gt/intel_rps.c           | 75 +++++++++----------
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  7 +-
 7 files changed, 110 insertions(+), 94 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

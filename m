Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A55BCCC178F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:08:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3033410E74D;
	Tue, 16 Dec 2025 08:08:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Uf4taUh+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10ABC10E743
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 08:08:26 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-2a0bb2f093aso25035085ad.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 00:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765872506; x=1766477306; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=UcGwnkJI+x9Zj9EkUAHg+6nFkUOQodVP98UqzkIBE1k=;
 b=Uf4taUh+JgjH7VM+fEqtzPMQRTeHo6Uota1+gF/05t8niq9jqweMsWuwvXVIHuNJi/
 kScSjJYdjV3O8hSy0X0XzwLhlYpxA8jFe1p3LwzZnrtNphkoW//veK0K2b3/SLCzuc7X
 jhoG2HFDcMLRU+G1Gm7gkSK2UBnZitNxcfZ1g50Jy6Eda9VrR078j+a5+myzXUuG9cfE
 0xFWwKJaakSgRlQUOU3FQia39+HkszakkkSLbbU9ygiOnqIwrCamnp33L5wJ3TFEmftq
 meFzw34ATW17QjZ2hBDbRKZA51GwQpuaYsb3iVuXJN0oPk5e0NQ8PySB88OnsXkgGuSP
 wefQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765872506; x=1766477306;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UcGwnkJI+x9Zj9EkUAHg+6nFkUOQodVP98UqzkIBE1k=;
 b=h5/rfl6c3WnRDitP20Wt1EW4fxP7jigpsXzIwrhWlYCGMOCKaIFw6o+12fFujJOA/v
 d6s2t7eO0PuuCCF7NdEXAptpdM+0BYLtC61o4tLnk7Lgg76UBFUqVGLBN783IN0Q321D
 YXOgQSTmnZuIhTwEyndFCVjnbtPFluY2gg8eAIKdIIV42AyZvYgLD4cc6Z7WN6jSOhnw
 MG2xGdxg5p/HPymd58V/rC6uQqbZmZnxO1/0Y4RzAeh6LzbUvxG4ifwZy47oW0KS2Lw6
 GJB0tkxAEopYCGKIlFDsEbKNiOiGCtXdh6pGfsdVxfO5HxnOCu1d30he3pUGhVMcIapd
 DjvA==
X-Gm-Message-State: AOJu0YzC7VqhyYcQ/41SGJ/aJNgbjDNyY3rluSgF5PhP8mhz3LzkGRtS
 98j8k8vJMhcG2agysjiLEbHbkrdepNRV9lFmzLWf2A7EBJoCZuHfj/YFx12Pz37/01M=
X-Gm-Gg: AY/fxX6g0CVrqgkdyOAahSkacemI3gldh27dy2Szp8M5d2DRrLpTDtK8zNWJDHFmBwK
 jWtAcfaWML1XvTrOQWcFgurFt1B9QFE4r31IcNAUPx8OGCPAEQDZ+sQSfbpk/C3A3RROdXokgNj
 RrCHhE3fzL6TZQWjhUcunEEKAKeOUP6rJiYVjRf+FMESP5xRTubtbDZ32Kzo67wAWsbh/Wq9/XU
 dhZYppvua8akzlonFQMRgRSrCT7C4N3QIh30Sv2YcY0hOybfY5/IGcszu4IC3uUWrvdFDLjzk8i
 o1kHIhTmQJkS5bgrGfI24WyVSYFNbB6eVt9TubGLjxJ775FFpdbr3k2w4Wv6eJYU+LxTCJEvWyT
 MBPM5rl4oPJNkUwLi28kXeSfkd+6BMulbGqddXCG+1HMdqIW0Pyl/RcqtMHI2DlvnfB3LXQi0NZ
 9LiGe7AE5MrUPz1Sx6XV7BSMIeCXv7Oknww+1MkyzrU7CY47L206qwOQcAlW4P
X-Google-Smtp-Source: AGHT+IHjLPpjkhRHBhcs8Nph29+B00E9r7Df3sKFF9Qg/AnA3mcDOGgHpW+Yt2CFP6iFnQPe45cuVg==
X-Received: by 2002:a17:903:f90:b0:295:b46f:a6c2 with SMTP id
 d9443c01a7336-29f23c7ba77mr137880075ad.37.1765872506098; 
 Tue, 16 Dec 2025 00:08:26 -0800 (PST)
Received: from localhost ([134.134.139.75]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29ee9b36af7sm157481845ad.18.2025.12.16.00.08.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Dec 2025 00:08:25 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 0/2] switch to use kernel standard fault injection in i915
Date: Tue, 16 Dec 2025 10:07:52 +0200
Message-ID: <20251216080754.221974-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Here taken out calls to i915_inject_probe_failure and changed to use
ALLOW_ERROR_INJECTION for the same functions.

Below functions are dropped from testing since I couldn't hit those
at module bind time, testing these would just fail the tests.
To include these in test would need to find way to cause resetting in i915
which would trigger these:

intel_gvt_init
intel_wopcm_init
intel_uc_fw_upload
intel_gt_init with expected -EIO (-EINVAL is tested)
lrc_init_wa_ctx
intel_huc_auth
guc_check_version_range
intel_uc_fw_fetch
uc_fw_xfer
__intel_uc_reset_hw
guc_enable_communication
uc_init_wopcm
..and all stages of __force_fw_fetch_failures


Also here added intel_gvt_driver_remove to error recovery path.

/Juha-Pekka

Test-with: 20251215134510.183735-1-juhapekka.heikkila@gmail.com

Juha-Pekka Heikkila (2):
  drm/i915: switch to use kernel standard error injection
  drm/i915: Add intel_gvt_driver_remove() onto error cleanup path

 .../gpu/drm/i915/display/intel_connector.c    | 14 +----
 .../drm/i915/display/intel_display_driver.c   |  5 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  9 +--
 drivers/gpu/drm/i915/gt/intel_gt_print.h      |  5 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 --
 drivers/gpu/drm/i915/gt/intel_wopcm.c         |  3 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  8 +--
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  4 --
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 17 +-----
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 60 +------------------
 drivers/gpu/drm/i915/i915_driver.c            | 13 ++--
 drivers/gpu/drm/i915/i915_params.c            |  5 --
 drivers/gpu/drm/i915/i915_params.h            |  1 -
 drivers/gpu/drm/i915/i915_pci.c               |  6 +-
 drivers/gpu/drm/i915/i915_utils.c             | 30 +---------
 drivers/gpu/drm/i915/i915_utils.h             | 22 +------
 drivers/gpu/drm/i915/intel_gvt.c              |  3 -
 drivers/gpu/drm/i915/intel_uncore.c           |  4 +-
 19 files changed, 18 insertions(+), 199 deletions(-)

-- 
2.43.0


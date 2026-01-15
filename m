Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E99F2D3019C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:08:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB0910E861;
	Fri, 16 Jan 2026 11:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="TI4uP2qK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f201.google.com (mail-dy1-f201.google.com
 [74.125.82.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3FB10E7B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 16:55:39 +0000 (UTC)
Received: by mail-dy1-f201.google.com with SMTP id
 5a478bee46e88-2b6a8b32fa9so2876980eec.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 08:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768496139; x=1769100939;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=VaQJeoN75Etkm+J2ZV77YQeRezGqFqsukbe+v7QIQ1Y=;
 b=TI4uP2qKCP5yxmfnRkFw4i1ICRGVI/tCreFhiYQnSl0v3f3CYhyKcE+h2rk0unDWCe
 NZNDCU6G6bjf4Hv0bYKTyNCtWdI4sp5jebAU1hddzPkDRFK1ILeoiGw2CEBzEjmpdzZr
 UmCoE3toqTh6D6t/N66YcwO4O7EALj0smIGD/QbJtyA1epRrIDm0hkYz9EPfYI2LRxjJ
 FLHnR3PzijoyjrXbKNas0ziPLw70iVgztiiyO1DwadlHS57T+7Wzo5RBo4Q8WRBiQNWB
 At+B/ONxoVF7gHdbkA8WRwztpx73/2q6hkRewe4dqDAlt1z2WJ7G1mE+lGQypH15PCFr
 WPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768496139; x=1769100939;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=VaQJeoN75Etkm+J2ZV77YQeRezGqFqsukbe+v7QIQ1Y=;
 b=jV32n/l5Gk/6LcrpymB0xwxgVVZZndDor8+tJpsGlwjldsHnsRU72L6rHBWeHPJ7qW
 etLIR27fxR3gIvrvRxby+NhNcp2Rth7SZg2dPfQeS4bWbLdAhiyZaRJmxmsDuZARDLjh
 x0d49IHSM/XtMhZ2nBXTFwg2yCtuUq07IloHkYMfoviYDHNI+SsqV96QGxSBRfbO7mai
 uZIAfUd3ktEGhHtog4ULYER6JwEz1ZFb1rTW2mtmVGU2Jr/thX4j9JUfc+iZzcL7HiVW
 MpcVdO8j8u7OtJ1IigHnT/EL++VQ7ivUlCfEcAEDAo3b4lZDlZRBUVItOFn5SpjHH1LO
 RzRw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUZ/SL16hIEinC7/Nn2JRr4wxTsOWXAAfSG0JyVlyvDpklaaCBZwZ9coW5vil6RyLKkFuxmW6clI3E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzRh+lyOG59uCKxKwIwSY6GycRMu/oeMJA38vUlOVq2FFaeYIoR
 +fyu1uDsCGovOXYzxtvs84dW7x+U8eGhQVS1ZliR66ak/F60/rtZQ/mekO/WZIaLWG6au7++oNv
 C2chYt420kFa71Q==
X-Received: from dybnk23.prod.google.com
 ([2002:a05:7300:cf17:b0:2ab:9e42:f552])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:a194:b0:2ae:5d27:ff38 with SMTP id
 5a478bee46e88-2b6b410376fmr36451eec.35.1768496138591; 
 Thu, 15 Jan 2026 08:55:38 -0800 (PST)
Date: Thu, 15 Jan 2026 08:54:46 -0800
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANYbaWkC/x2MQQqAIBAAvyJ7TlBBxb4SHay22kMmWhGIf086z
 sBMgYyJMEPPCiR8KNMZGsiOwbz7sCGnpTEooYyQUvM75iuhP3hMGPmknNTGWeGthtY0udL7/4a
 x1g/l0oyVXwAAAA==
X-Change-Id: 20260115-upstream-prep-b29156970a75
X-Developer-Key: i=jdsultan@google.com; a=ed25519;
 pk=RhTSABMOTIhvVE7NYiZwn1iDGYYNbaN092nvaEF2dxo=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768496136; l=4289;
 i=jdsultan@google.com; s=20260115; h=from:subject:message-id;
 bh=2nPaoHCrEF1RGln7cSZwCo0/8v1VK4gPXRRgqEpJjc4=;
 b=GLYjq20j6T8KEGTDxfQxnYe8otqXNH0H6ddGaf/u0pFmhuodq1GEjgAA+e1bB49Z8FKZzR7Ar
 iBXv/9v4wcgCNylUOSGla7CxElPawgnM3wqSxiXSxRk3ZSGUi4m8nsi
X-Mailer: b4 0.14.2
Message-ID: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Subject: [RFC PATCH 00/10] Enable seamless boot (fastboot) for PTL
From: Juasheem Sultan <jdsultan@google.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Sean Paul <seanpaul@google.com>, Manasi Navare <navaremanasi@google.com>, 
 Drew Davenport <ddavenport@google.com>, Juasheem Sultan <jdsultan@google.com>
Content-Type: text/plain; charset="utf-8"
X-Mailman-Approved-At: Fri, 16 Jan 2026 11:08:31 +0000
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

This RFC patch series proposes an implementation of seamless boot (fastboot)
support for Panther Lake (PTL) platforms within the Xe driver, mirroring
functionality already present in i915. The primary focus is on devices using
MSO (Multi-Segment Operation) panels and EDP panels.

The goal of this series is to achieve a flicker-free transition from the
bootloader (BIOS/UEFI) to the kernel driver by strictly adhering to the
hardware state established by the firmware.

Key areas addressed in this revision:
1.  **Boot State Preservation**: Where necessary, make amendments to initial
	hardware readouts and ensure that the framebuffer state as established
	by firmware is correctly passed into the driver as a memory object.
2.  **Atomic State Handoff**: Adjusting the atomic commit path to prevent
    unnecessary pipe disables or power well toggles when inheriting a valid
    boot state.
3.  **Passive Probing**: Introducing a "passive" initialization path that
    builds the DRM software state without triggering hardware resets.

This is an initial implementation subject to discussion. 

Change-Id: I5cd3bdd4f6f687f007e91f6d0afbfeecfc06762b
Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
Juasheem Sultan (10):
      drm/i915/display: Implement passive initialization for splash screen preservation
      drm/xe/display: Implement seamless boot state reconstruction for PTL
      drm/i915/display: Implement aggressive boot state preservation for PTL
      drm/xe/display: Fix initial plane reconstruction and stolen memory handling
      drm/i915/display: Enable early PLL readout and robustify modeset setup
      drm/i915/display: Fix vblank timestamps and update logic for fastboot
      drm/i915/display: Implement seamless fastboot for MSO panels on PTL
      drm/i915/display: Robustify fastboot and power init for seamless boot
      drm/i915/display: Fix initial plane config readout and MSO stride for PTL
      drm/i915/display: Refactor initial plane readout and harden boot handover

 drivers/gpu/drm/i915/display/intel_bios.c          |  40 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  36 -
 drivers/gpu/drm/i915/display/intel_cdclk.h         |  41 +-
 drivers/gpu/drm/i915/display/intel_connector.c     |   9 +
 drivers/gpu/drm/i915/display/intel_connector.h     |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c          |  62 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           | 205 +++++-
 drivers/gpu/drm/i915/display/intel_ddi.h           |   2 +
 drivers/gpu/drm/i915/display/intel_display.c       | 814 +++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.h       |   6 +
 drivers/gpu/drm/i915/display/intel_display_core.h  |   2 +
 .../gpu/drm/i915/display/intel_display_driver.c    | 329 ++++++++-
 drivers/gpu/drm/i915/display/intel_display_power.c |  16 +-
 drivers/gpu/drm/i915/display/intel_display_types.h |   8 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 372 ++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h            |   5 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |  16 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h      |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c          |  39 +
 drivers/gpu/drm/i915/display/intel_hdmi.h          |   2 +
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |   7 +
 .../gpu/drm/i915/display/intel_modeset_verify.c    |  14 +-
 drivers/gpu/drm/i915/display/intel_panel.c         |  41 +-
 drivers/gpu/drm/i915/display/intel_panel.h         |   3 +
 drivers/gpu/drm/i915/display/intel_plane_initial.c |  53 ++
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  32 +-
 drivers/gpu/drm/xe/display/xe_display.c            | 309 +++++++-
 drivers/gpu/drm/xe/display/xe_display.h            |   2 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c      |  28 +-
 drivers/gpu/drm/xe/xe_device.c                     |   2 +-
 drivers/gpu/drm/xe/xe_ggtt.h                       |   3 +
 drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c             |   2 +
 32 files changed, 2302 insertions(+), 200 deletions(-)
---
base-commit: 812e4b8966d421afd4df8f794bf15f1a1a3ec7b6
change-id: 20260115-upstream-prep-b29156970a75

Best regards,
-- 
Juasheem Sultan <jdsultan@google.com>


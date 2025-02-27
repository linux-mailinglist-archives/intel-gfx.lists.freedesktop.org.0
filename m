Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1739A488B6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 20:15:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3920210EB6D;
	Thu, 27 Feb 2025 19:15:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n4NhrMnE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75A0F10EB67;
 Thu, 27 Feb 2025 19:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740683702; x=1772219702;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=eQ/VeTCDK445aVZBCX9bVcG8UynCP9F4zaKk5ytsytY=;
 b=n4NhrMnEPcd3xjE8T2tCF5ESdPaP+AA3hbffQFiGq3e4QaDOrQrQmHnt
 xU53l0GCoDSRbf5avRNazAT6YWkIWfrJG5z11HjFQC+yE+5kCIyDOrWX+
 gx08DjTQeYDAKtqyJWKRiB+z9l7MFpHr5j4lrQY4EoFGGFXVwqWK6/ram
 a78z/n8EkQKBP83E9rfBsUc/iubq9+IiE9VGVMhkCNtRBzLtsOjKhdvy8
 T3zBLFEEk5EjfdbiMek6zX9zt00tQ+dcBJLD09g4SdNNg+PpudkD3+s0C
 yFVGVSmLR/RyMEkjS4dBSJv/wcvlEtvg9+EhTgVyQwws/plFeSvfVmjOY A==;
X-CSE-ConnectionGUID: qcwnWF6kS8O0Zpu1bXYAvQ==
X-CSE-MsgGUID: p1KJ6HpTSCS160DbfOKumQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="45510006"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="45510006"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 11:15:01 -0800
X-CSE-ConnectionGUID: esqtmx8LR2CKuqWN4YRxAw==
X-CSE-MsgGUID: iJe64OJZSVOmnEXPiwRJTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="122242134"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.70])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 11:15:00 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 27 Feb 2025 16:14:25 -0300
Subject: [PATCH] drm/i915/xe3lpd: Map POWER_DOMAIN_AUDIO_PLAYBACK to DC_off
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250227-xe3lpd-power-domain-audio-playback-v1-1-5765f21da977@intel.com>
X-B4-Tracking: v=1; b=H4sIAJC5wGcC/x3NQQqDMBBA0avIrDsQR1Jsr1K6GJNRB20SEmwt4
 t0bunyb/w8oklUK3JsDsry1aAwV7aUBN3OYBNVXAxmyhuiKu3Rr8pjiRzL6+GINyJvXiGnl78B
 uwX4cyNr2ZlzHUEMpy6j7f/J4nucPaA6ztXQAAAA=
X-Change-ID: 20250226-xe3lpd-power-domain-audio-playback-8fb255190c3a
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

In Xe3_LPD, display audio has the core audio logic located in PG0 and
per-transcoder logic in the same power well that provides power for the
transcoder [1].

For stuff like audio device enumeration, we need to ensure that PG0 is
turned on. For playback, we additionally need the transcoder's power
well to be enabled.

That essentially means that, for audio playback, there isn't a special
power well that needs to be enabled, because modeset sequences will
ensure that the required power wells are enabled.

That said, there might be cases where PG0 could be disabled due to
display entering DC6 while the audio driver tries to interact with the
graphics driver for stuff like audio device enumeration.

We recently hit that kind of scenario, where "aplay -l" was being used
to enumerate audio devices on a PTL machine with PSR enabled and no
external displays attached.

Since intel_audio_component_get_power() uses
POWER_DOMAIN_AUDIO_PLAYBACK, make sure to map that power domain to
DC_off power well, so that we disable dynamic DC states (which includes
DC6) while the audio driver needs display audio power.

[1] The core-audio vs per-transcoder logic split is not really new in
    Xe3_LPD. This is also true for previous display generations. We need
    to figure out the correct version where this split happened so that
    we can apply fixes in the current power domain mapping.

Bspec: 72519
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 0c8ac1af6db7e005b9bf5b33d1c2e4cebbde2524..572383a817daa749f3579647855c2a858e010716 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1694,6 +1694,7 @@ I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_dc_off,
 	XE3LPD_PW_C_POWER_DOMAINS,
 	XE3LPD_PW_D_POWER_DOMAINS,
 	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_AUDIO_PLAYBACK,
 	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc xe3lpd_power_wells_dcoff[] = {

---
base-commit: 4a2f1c823287a84dc0bd46c5a93545dfe49967f2
change-id: 20250226-xe3lpd-power-domain-audio-playback-8fb255190c3a

Best regards,
-- 
Gustavo Sousa <gustavo.sousa@intel.com>


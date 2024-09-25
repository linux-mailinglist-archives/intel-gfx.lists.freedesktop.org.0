Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4756F98614E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 16:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9D110EA27;
	Wed, 25 Sep 2024 14:45:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mK/ir/F4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A26310EA27
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 14:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727275549; x=1758811549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1K+IQBTDR3o2GnEzsXafV3+2Jz5aJx0ClKBLZmm+KJg=;
 b=mK/ir/F4XXHUpSd5EuWGuEMO0eUzlFZrcBLrAqTdsd3mvn6zVvsyHeZW
 hDVuWDdLz4ey+w4YzvWXzaGSndUzzcnpwVVIsdrOjp/TUe5h4Jwn+BiBq
 gWhOKnttQYq6HlGQTVwxEEaOKxouomoMaaN8NPtbyF32e2U4OljElSt+C
 fHT09bc9CpPi3wO/bUbfOzfyAuIG3kh+u+o2xsOaUEcoBdi7CW1u5shh6
 ikKjK4PgHabUaLB9RZIDJ95ZedhpgqC4Ig8CUqNC3oNJUQBZAzt54Tzwy
 3TUCgneSXCgrs8Wa9GmPgXWKg7uvDAQTL6zdPR4kmXf8BU5XlTj7xRJHS w==;
X-CSE-ConnectionGUID: yPWodjoAQEW6coVBlxGS7w==
X-CSE-MsgGUID: l43wSnNpSmmRLivYY1E3Hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26470651"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="26470651"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 07:45:48 -0700
X-CSE-ConnectionGUID: WsZF+1UHRDqrX3bO2ocNYA==
X-CSE-MsgGUID: tv/43O3vTamCvYYOGTkCgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="71941653"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Sep 2024 07:45:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2024 17:45:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: [PATCH 5/6] drm/i915/pm: Do pci_restore_state() in switcheroo resume
 hook
Date: Wed, 25 Sep 2024 17:45:25 +0300
Message-ID: <20240925144526.2482-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
References: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Since this switcheroo stuff bypasses all the core pm we
have to manually manage the pci state. To that end add the
missing pci_restore_state() to the switcheroo resume hook.
We already have the pci_save_state() counterpart on the
suspend side.

I suppose this might not matter in practice as the
integrated GPU probably won't lose any state in D3,
and I presume there are no machines where this code
would come into play with an Intel discrete GPU.

Arguably none of this code should exist in the driver
in the first place, and instead the entire switcheroo
mechanism should be rewritten and properly integrated into
core pm code...

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: linux-pci@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index fe7c34045794..c3e7225ea1ba 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1311,6 +1311,8 @@ int i915_driver_resume_switcheroo(struct drm_i915_private *i915)
 	if (ret)
 		return ret;
 
+	pci_restore_state(pdev);
+
 	ret = i915_drm_resume_early(&i915->drm);
 	if (ret)
 		return ret;
-- 
2.44.2


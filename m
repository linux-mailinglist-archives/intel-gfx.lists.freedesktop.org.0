Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 448C0AD748E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 16:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC3A210E60F;
	Thu, 12 Jun 2025 14:50:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O0fFrd4f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 655F710E87D;
 Thu, 12 Jun 2025 14:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749739822; x=1781275822;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TueXT5br2f16RLkGERHH2ECOYh2bB38Sm6lZMUWCK8s=;
 b=O0fFrd4fAtqgGuRG2ds1Fv1kquoL4+Ldm5tJTo8bz+BJSCsXLZXxjvFx
 RjBS0EA8/sqoe2fWtHm7+sRslJwa3E3dXvbQZjRv0n/wyOu+HIdGb+uLG
 NMgVfrHJQAtkeL4ldFgjAShNLq8mrxVHOfUnjR3o+vIv2cGzQ4u0brDGN
 HSnamNEaA7ZyIJHJjVf7S/bAwDRPBZOkaCzmz0Cc24CEcLKn/U2I41tgS
 eV4b/yxwIMKzbBuB+5kegE4B3w3HU8QSd53Iny7c7vN5TyQpYQ2qSDmes
 KGXTq5sBqtotNhDcKTpYQWze7ByjLLQul6rW8MMeeWwllKnZ7u4PIINGd w==;
X-CSE-ConnectionGUID: kgZInqtRRJ6ZdSTeIy1dGA==
X-CSE-MsgGUID: FVKpAuJoSLaV0zqRzl6Jcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52066742"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52066742"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 07:50:22 -0700
X-CSE-ConnectionGUID: sJAge1r3S+urosTlLlADFQ==
X-CSE-MsgGUID: 7uLlM6PCSAWG4dZy5sOLmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152826148"
Received: from abityuts-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.200])
 by orviesa005.jf.intel.com with SMTP; 12 Jun 2025 07:50:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Jun 2025 17:50:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/6] drm/i915/dsb: DSB fixed and flip queue prep work
Date: Thu, 12 Jun 2025 17:50:12 +0300
Message-ID: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
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

Some fixes and flip queue related prep work for the DSB.

Extracted from the larger flip queue series just to get a CI run
without the rest of the flip queue cruft possibly getting in the way.

Ville Syrjälä (6):
  drm/i915/dsb: Use intel_dsb_ins_align() in intel_dsb_align_tail()
  drm/i915/dsb: Provide intel_dsb_head() and intel_dsb_size()
  drm/i915/dsb: Introduce intel_dsb_exec_time_us()
  drm/i915/dsb: Garbage collect the MMIO DEwake stuff
  drm/i915/dsb: Move the DSB_PMCTRL* reset out of intel_dsb_finish()
  drm/i915/dsb: Disable the GOSUB interrupt

 drivers/gpu/drm/i915/display/intel_display.c |   4 +-
 drivers/gpu/drm/i915/display/intel_dsb.c     | 119 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dsb.h     |   6 +-
 3 files changed, 67 insertions(+), 62 deletions(-)

-- 
2.49.0


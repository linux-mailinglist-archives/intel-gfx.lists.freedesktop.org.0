Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8FBCD870A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 09:16:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADA210E183;
	Tue, 23 Dec 2025 08:16:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aWyaIq/5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B269B10E183;
 Tue, 23 Dec 2025 08:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766477786; x=1798013786;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jw6QTMuhhInFDkg9PEq1iBULc/y+V6h8OZpFouPg8JE=;
 b=aWyaIq/5RPm63ZXmikYxEoBsjZbenDRaY3eEnbTqE3e7e+dI7dCrhIrC
 X+UKl3OS+en1J5wUC1Ts8U3dAwAIb1GIIMRqOpTPuV9ZnSOe44hBW72sV
 fOuWtVxDvzLwH960m1hk0ijSbr8KyeQ0rFk4U1I36raQeb74uS2cTsmyV
 xXJT8N8ZeLiM7KHd0m6QYMoYazpi+3/NuY2E74FUlmc4tLPG5YKuIVnjA
 3lllOtbaoCZuIR5WTT+Q54oZbritu1PLjPxDZHSgCthZkFGo58js1EwFs
 QlkYNN9u0wDXAapB88ugef8gWQYB8ZAKVNUiNmTsSt/uidmHqqK75VXyV w==;
X-CSE-ConnectionGUID: rHwUZlS/TLe9hfjOhRp2Pw==
X-CSE-MsgGUID: Cl1IKin/Tni7pZ+Vr3qqSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68081699"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68081699"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 00:16:26 -0800
X-CSE-ConnectionGUID: 979jWNfISay3IBlRNCHnBQ==
X-CSE-MsgGUID: GPyvpkFRQtSG5Ly7ma5hxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="204224370"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 23 Dec 2025 00:16:25 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/3]  Make casf updates atomic and dsb ready
Date: Tue, 23 Dec 2025 13:42:57 +0530
Message-Id: <20251223081300.1196417-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=a
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

The existing implementation for casf scaler re‑implemented
parts of skl_scaler logic and programmed registers from
pre‑plane update hooks, which caused:
  - updates were not atomic.
  - prevented execution via Display State Buffer.
  - computed state was late.

This series fixes these issues by:
  - consolidating common logic into skl_scaler.c.
  - moving computation into crtc_compute_config().
  - Create a common wrapper for pfit and casf so
    that whenever pipe scaler is done through dsb
    casf can also be dsb compatible.

Nemesa Garg (3):
  drm/i915/display: Move casf_compute_config
  drm/i915/display: Introduce skl_pipe_scaler_setup()
  drm/i915/display: Common wrapper for casf and pfit

 drivers/gpu/drm/i915/display/intel_display.c | 36 +++-----
 drivers/gpu/drm/i915/display/skl_scaler.c    | 96 +++++++++++++-------
 drivers/gpu/drm/i915/display/skl_scaler.h    |  5 +
 3 files changed, 81 insertions(+), 56 deletions(-)

-- 
2.25.1


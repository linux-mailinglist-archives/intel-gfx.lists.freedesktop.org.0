Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D26A9D1C0F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 00:53:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3510010E592;
	Mon, 18 Nov 2024 23:53:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JoSjnaqO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8A5010E29B;
 Mon, 18 Nov 2024 23:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731974018; x=1763510018;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D68HX6FKgt45xGDTxA9GzaQWJ5JLH9QfO7b6BHX+glE=;
 b=JoSjnaqOHQQLlghz83OXj42Os276UZ31DBNpmIxucHeccvJpQvrQIygt
 T3fdalIxENCC1WDJNmPfu0W1qZYouAIMutjtnQv/hgzHeuBE02NeFlc7M
 exMwUqsxg0NCym/IG0qXYvbwGzna61ruwVZ41IrYDEq9fS7Aa8FpLpbCe
 9RpzilaBcu0g3iBze/ARyG00VyPLUM5boAcFtVphtgFfqAASViTfwnlow
 Pdp+ROpIJ3mYaUZuF1oDBBte9ysdnkhug6DYz3GMwaTrTwUAftL+Hxe8b
 4i/Gv8SvnwN8C/TT5cMqb0FNs3jb0hPFbRAnBMT+IZ5B9rcnaT3QXvtOa A==;
X-CSE-ConnectionGUID: sBT3zerTRNekKH51+1qvnQ==
X-CSE-MsgGUID: A5oO9/L7RDew6zXTUk09BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="32090826"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="32090826"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:53:38 -0800
X-CSE-ConnectionGUID: 75VccFOFQZqmUSkir6UioQ==
X-CSE-MsgGUID: +tR0zeV/Q3WtcQbnKaSJ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="94186000"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.2])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:53:35 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: [RFC PATCH 0/4] drm/i915/xe3: FBC Dirty rect feature support
Date: Tue, 19 Nov 2024 01:53:21 +0200
Message-Id: <20241118235325.353010-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Initial patchset to support dirty rect capability for FBC in Xe3.
This is the initial design suggestion for the feedback. This
is for non PSR cases. Seective fetch is not allowed with the
dirty rectangle feature.

More FC use case scenarios might need to be handled - such as
frontbuffer flush, invalidate and more cases we would need to
do a full region update etc.

Vinod Govindapillai (4):
  drm/i915/display: update intel_fbc_atomic_check for dirty_fbc support
  drm/i915/display: add register definitions for fbc dirty rect support
  drm/i915/xe3: add dirty rect support for FBC
  drm/i915/xe3: disable FBC if PSR2 selective fetch is enabled

 drivers/gpu/drm/i915/display/intel_fbc.c      | 145 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.h      |   3 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h |   9 ++
 .../drm/i915/display/skl_universal_plane.c    |   2 +
 4 files changed, 155 insertions(+), 4 deletions(-)

-- 
2.34.1


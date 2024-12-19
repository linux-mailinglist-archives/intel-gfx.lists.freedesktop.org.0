Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E1B9F8750
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 22:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7A910EDE7;
	Thu, 19 Dec 2024 21:49:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vv/eziG8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 468AD10E2B6;
 Thu, 19 Dec 2024 21:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734644976; x=1766180976;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AqZx55eoiICB9GO8Mz3XryDy/ryNrTSlvrMChuQIqbg=;
 b=Vv/eziG8n8/b61PZNpNDdg/gddsze7aJa9lgPJeSwTHTuXRJg4O0exC+
 JOtU0UweXUUtGpwhdlplBw/9AqedlnFfrtmoVau/zt4O1gqHqN7XUgJRX
 NlY57GWRZPTLYA9DBAoYdYYkYEboiLLYk1B81loRlriSkXn6Wz5tsQcqj
 rqCvLBzaPmWXha9WyGvazrBikJG/jNBNSzV093s+ZbjhAxZY+A8/0a8Ap
 6IrC8qbwPvA4Q25WOR+gi+z4qo5SZt8qooI88gN8d/rgsbnJFGSiIrWiH
 W3XAyk1YR3fV+KPZQNIKL7miBvvY3A8ejKS/kTRbrYu2MYrQQSPlRPRhM w==;
X-CSE-ConnectionGUID: 0fEDekGLQNKs2/1UyKl6tw==
X-CSE-MsgGUID: b4BwF//8TxOXMSyzRuGrug==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="52710908"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="52710908"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 13:49:35 -0800
X-CSE-ConnectionGUID: w0aXwVA4RsmdF6gxgaeriQ==
X-CSE-MsgGUID: qvaVXN7DTxGepOLTEBYhNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98150116"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.53])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 13:49:34 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 0/3] drm/i915/display: Reduce global state funcs boilerplate
Date: Thu, 19 Dec 2024 18:48:35 -0300
Message-ID: <20241219214909.104869-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
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

If we look at how the members of struct intel_global_state_funcs, we see
a common pattern repeating itself. We can reduce such boilerplate by
moving the common implementation to the generic global state code. This
series proposes that.

Gustavo Sousa (3):
  drm/i915/display: Do not assume zero offset when duplicating global
    state
  drm/i915/display: Add infra to reduce global state funcs boilerplate
  drm/i915/display: Use INTEL_GLOBAL_STATE_DEFAULTS

 drivers/gpu/drm/i915/display/intel_bw.c       | 21 +---------
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 16 +++-----
 .../gpu/drm/i915/display/intel_global_state.c | 41 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_global_state.h | 15 +++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 21 +---------
 drivers/gpu/drm/i915/display/skl_watermark.c  | 20 +--------
 6 files changed, 63 insertions(+), 71 deletions(-)

-- 
2.47.1


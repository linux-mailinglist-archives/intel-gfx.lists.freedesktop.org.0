Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE4CAB53E8
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 13:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4922B10E393;
	Tue, 13 May 2025 11:35:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mh8CJb4m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6253C10E00E;
 Tue, 13 May 2025 11:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747136124; x=1778672124;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zH4iOIUnoVwIzDKvio5rufDbcRfPbRTzqfD2Xoyj9aE=;
 b=mh8CJb4mulNL3X2HG7ZRHhGzGmkzeE78Gj8W4QMGcV6i0+eb5PXr+yFf
 uRHeXL/MEFaGsyuMqvW8cSth53XerDWMLPaMv3Hvn6hedf/QyENKK9oG3
 gl+k3TwOWDs6wPLzq9J8L+IXZTFTw24g1BZoclLAJyobQJ8TS1QHjel1g
 +RqedrRVAnz/j277viiIcXDO4c+3R/pBEDxBAtt8W2Ans0c6UoW6sWaWW
 qNDzI+E7s7cJoRR9XQoIWw99DKmSdtI50ZGIfR2P+XetXOdkDFINrXbKg
 peJzMABls6DCpaiAguj910iCa7hFEe05MtBwaonR19vd+jig+BnJ6cdB3 A==;
X-CSE-ConnectionGUID: 0QbLU/HkR4qSpP9nbMu/IQ==
X-CSE-MsgGUID: 7B23Ta93RQ2ThSrpw7EyFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59614380"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="59614380"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 04:35:24 -0700
X-CSE-ConnectionGUID: oLil6NccSYKN52QShO2ANQ==
X-CSE-MsgGUID: +kLn3/dCRduo6XR7eOLVTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="142577190"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 13 May 2025 04:35:23 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 0/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Tue, 13 May 2025 13:35:25 +0200
Message-ID: <20250513113526.2758433-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

This patch handles failed PSR tests seen on JSL. It should be tested in
parallel with proper IGT change; since both kernel and IGT changes
depend on each another, there is possibility the tag to the IGT change
will not be picked by Patchwork. In that case, v2's cover letter for
the kernel patch will include tag to the proper IGT series.

Test-with: <20250509232659.2721697-1-michal.grzelak@intel.com>

Best regards,
Michał

Michał Grzelak (1):
  drm/i915/display: Add no_psr_reason to PSR debugfs

 .../gpu/drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c          | 15 ++++++++-------
 2 files changed, 10 insertions(+), 7 deletions(-)

-- 
2.45.2


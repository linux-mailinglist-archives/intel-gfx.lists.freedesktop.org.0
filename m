Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJyiJqzmx2kYegUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0B234EAE0
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A73710E3E0;
	Sat, 28 Mar 2026 14:33:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7azpeqh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8331410E3D3
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2026 14:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774708391; x=1806244391;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z5hvIVR6aw42vNnIm1M5lkJuwK325jzM+FQhMM5sEgo=;
 b=j7azpeqhSseg398Xeciv/WDEBN4AE2sj5kUDq4doomSTMr45WzHDOz6y
 xJ5ojz68D177KMndjztPMBWAXWjQYKZQB55v5wIrGAaCV+vgDAmfUyaS5
 YNro4G74s8B0B4TGnGUq7LcT+4n7RK5eCifYQBMJsslkmWqnRK1xYArJb
 z3MQb86tiOR7UstxiDvtiPavaKwXW02x0fPYnoQ+bpWhSIR6b0kIX6uwi
 QwYHsZLDrvBUC9CtBQ5JzGgxl4uVCTDm5yTC9PSGiUzFSlydnG+v5xKil
 nS9es+WqqUM+e9XG8eXeZs6BwViYxrc8mMK4VHqt+EAAL6hpfTPgNyUNH Q==;
X-CSE-ConnectionGUID: pIhMFFdtTmKP8/ooKchztQ==
X-CSE-MsgGUID: Uy9qDUP5T2eDNwhqe72FAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="86839486"
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="86839486"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2026 07:33:11 -0700
X-CSE-ConnectionGUID: hIlK8XIwSM2fZVqBeb+DUw==
X-CSE-MsgGUID: +kyJ60v7QBeI0UpS9qbLRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="224621062"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 28 Mar 2026 07:33:10 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 00/10] drm/i915: casf & scaler refactoring
Date: Sat, 28 Mar 2026 15:32:02 +0100
Message-ID: <20260328143212.601656-1-michal.grzelak@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: EC0B234EAE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series aims at refactoring some of intel_casf.c and skl_scaler.c as
per the discussion in [1,2]. I am unsure whether patches from 5 to 10
("drm/i915/scaler: *") should be split as they currently are or rather
squash them together, opinion appreciated.

In case of patch 4 ("drm/i915/casf: rename sumcoeff into sum_coeff")
there are more variables that could use some renaming (filtercoeff,
filter_coeff, filter_coeff_1 etc.) but as of now I don't have clear idea
how to handle them.

BR,
Michał

[1] https://lore.kernel.org/intel-gfx/acZezWKFo1QwLAci@intel.com/
[2] https://lore.kernel.org/intel-gfx/acZcKlDoZBwZT9wD@intel.com/

Michał Grzelak (10):
  drm/i915/casf: fix comment typos
  drm/i915/casf: rename convert_sharpness_coef_binary()
  drm/i915/casf: rename t into tap in casf_coeff()
  drm/i915/casf: rename sumcoeff into sum_coeff
  drm/i915/casf: s/i/scaler_id where appropriate
  drm/i915/casf: remove id in favor of scaler_id
  drm/i915/casf: unloop scaler readout that is run once
  drm/i915/casf: invert loop's breaking logic
  drm/i915/casf: abstract scaler searching loop
  drm/i915/casf: eliminate dead code

 drivers/gpu/drm/i915/display/intel_casf.c | 26 ++++-----
 drivers/gpu/drm/i915/display/skl_scaler.c | 66 ++++++++++++-----------
 2 files changed, 48 insertions(+), 44 deletions(-)

-- 
2.45.2


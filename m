Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LGPMtBj/2kx6AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 09 May 2026 18:41:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE44A500829
	for <lists+intel-gfx@lfdr.de>; Sat, 09 May 2026 18:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F1E10E101;
	Sat,  9 May 2026 16:41:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gGLrLJ4/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08ABE10E101;
 Sat,  9 May 2026 16:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778344907; x=1809880907;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rw5PNWOQSLptOBiIqvtLQiRrBKHsKjMfG0Y6YXJrmGI=;
 b=gGLrLJ4/hbLzXmnuff7UvJHe8AcVU3wcjxmfrpUHiRarhFyuOzFheFm+
 0YX2SpbDtT547PYCy9pQdaqzB2SvkxwtHVhaxHyp8esVoUUAil9/syzuC
 lMPkZajk+PVom2B8OpDsw8BZyCwFbt5G2cqXBJwTOXb9FqS6U+heXYwsM
 6qt5eFE+9XCWLmRSJ4MCm1DNhbrbsOTDcJZtiaPoewsCIy6gSJhdickz3
 vNKxbtObr8z8iP9XsTwIOcFzx3rC98Ypfuw38eeftuCoYoxB7dj9eGu9M
 P1fV+9jV9cD8CcjIVRBv+kpESPa8XIPL3xetKrPGnugjhQ86mavNoJ3b+ Q==;
X-CSE-ConnectionGUID: 8gVxoYSNTdivV9obAUfFsQ==
X-CSE-MsgGUID: gQOIM57yS7+WepiSj5rRIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11781"; a="90763606"
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="90763606"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2026 09:41:47 -0700
X-CSE-ConnectionGUID: Wz4+3R+jSoSwONZP4bm/Xg==
X-CSE-MsgGUID: IK3tHoEjSCeuuQOoOwaX0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="236212218"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 09 May 2026 09:41:45 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, nemesa.garg@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 0/9] casf & scaler refactoring
Date: Sat,  9 May 2026 18:40:39 +0200
Message-ID: <20260509164048.627399-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: EE44A500829
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Next version of [1]. After consideration I squashed patches 7 & 8 from
previous series into one patch. Also resending because last time I
haven't included intel-xe. 

[1] https://lore.kernel.org/intel-gfx/20260411174526.2850179-1-michal.grzelak@intel.com/

BR,
Michał

---
Changelog:
v2->v3
- squash unlooping with inverting loop breaking condition (Nemesa)
- keep ctl inside the loop (Ville)
- separate impure function call from variable declaration block (Ville)

v1->v2
- rename intel_casf_scaler_compute_coef()
- check if any scaler was found (Ville)
- apply the rename to nearest neighbor filter (Ville)

Michał Grzelak (9):
  drm/i915/casf: fix comment typos
  drm/i915/casf: rename *_coef*() into *_coeff*()
  drm/i915: rename t into tap
  drm/i915/casf: rename sumcoeff into sum_coeff
  drm/i915/scaler: s/i/scaler_id/ where appropriate
  drm/i915/scaler: remove id in favor of scaler_id
  drm/i915/scaler: unloop scaler readout that is run once
  drm/i915/scaler: abstract scaler searching loop
  drm/i915/scaler: eliminate dead code

 drivers/gpu/drm/i915/display/intel_casf.c | 32 +++++-----
 drivers/gpu/drm/i915/display/skl_scaler.c | 76 ++++++++++++-----------
 2 files changed, 57 insertions(+), 51 deletions(-)

-- 
2.45.2


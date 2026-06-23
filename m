Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QA+CFu4MO2pvPQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3992E6BA783
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=KAt6Uag8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 433DC10ECE4;
	Tue, 23 Jun 2026 22:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972E710E5DE;
 Tue, 23 Jun 2026 22:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254826; x=1813790826;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LKVqwzha5Ujd86O0CUaD2wWZ3oS3M0in70+7KYj002E=;
 b=KAt6Uag8eGFxC3zsnm4KpF7yxUQXKK7HlOUD0W+t54ywptjrPqW1UkpG
 mUme0ldiKC9nriq8Nn1uFJ+zGpsPH9UwWr57luKoRiiAjW2/T5IY91SIE
 1rmNsMeve7WQykIkpsV1CrI9k/G23bHFofzXcGjacD5Q4D8/Qn0sqksV6
 VTHYgQtD2Rry7wLrZY6vP8CUqoifAMOPfCHlWKNfKMlsqrZtN3ewyEuZv
 vS4QgHL9pW1w8v8Uha2OsoNhCahS1BqZOtPgnZ2ZCMfxq0angEPGDc7Tl
 D76gxulHysZ5C9QRduceZr24JBDJXNb8my6cuNcvhW4LwvvcIPZF+AK43 A==;
X-CSE-ConnectionGUID: BYC4UllSSPSZaQxu00vclA==
X-CSE-MsgGUID: w4tqJS+GTliOAVSBzqbKXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775544"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775544"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:06 -0700
X-CSE-ConnectionGUID: msB0z4RWSCKOSNv5ZRDdBg==
X-CSE-MsgGUID: e/KB2IibQ/yReMWjvDlmTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497078"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:03 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 00/30] Comments applied to dp_link_caps
Date: Wed, 24 Jun 2026 00:45:49 +0200
Message-ID: <20260623224619.1949975-1-michal.grzelak@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3992E6BA783

To not block review of Imre's v2 of part2 series [1] I've applied my
comments on top of it since they are not critical to the overall design,
and can be looked afterwards; assuming they are at all valid :). Unlike
previous times, now those resended patches should be free from
disappointing mistakes like eg. duplication of From: tag or missing
Signed-off-by: of resender.

BR,
Michał

[1] https://lore.kernel.org/intel-gfx/20260616200849.3534628-1-imre.deak@intel.com/

Imre Deak (28):
  drm/i915/dp: Rename intel_dp_link_config to intel_dp_link_config_entry
  drm/i915/dp: Add struct intel_dp_link_config
  drm/i915/dp_link_caps: Introduce DP link capability module
  drm/i915/dp_link_caps: Move common rate helpers to link caps
  drm/i915/dp_link_caps: Move forced link param helpers to link caps
  drm/i915/dp: Simplify querying of forced link parameters
  drm/i915/dp_link_caps: Move forced and max link debugfs entries to
    link caps
  drm/i915/dp_link_training: Use helpers to get forced link params
  drm/i915/dp_link_caps: Move forced link params to link_caps
  drm/i915/dp_link_caps: Move link config helpers to link caps
  drm/i915/dp_link_caps: Move link config tracking to link_caps
  drm/i915/dp_link_caps: Rename helper updating the link configurations
  drm/i915/dp: Factor out helper to get link rate capabilities
  drm/i915/dp_link_caps: Pass supported link rates to link caps update
  drm/i915/dp_link_caps: Add helper to print all supported link rates
  drm/i915/dp_link_caps: Add helper to get the number of supported link
    rates
  drm/i915/dp_link_caps: Add helper to get common rate index
  drm/i915/dp_link_caps: Move tracking of common rates to link_caps
    struct
  drm/i915/dp_link_caps: Track max common lane count in link_caps
  drm/i915/dp_link_caps: Use max common lane count from link_caps
  drm/i915/dp_link_caps: Add helpers to get max link limits
  drm/i915/dp_link_caps: Add helpers to set max link limits
  drm/i915/dp_link_caps: Add helper to reset max link limits
  drm/i915/dp_link_caps: Add helper to reset link_caps state
  drm/i915/dp_link_caps: Move max link limits to link_caps
  drm/i915/dp_link_caps: Pass link_caps to static functions
  drm/i915/dp_link_caps: Pass link_caps to config update/lookup helpers
  drm/i915/dp_link_caps: Pass link_caps to common rate helpers

Michał Grzelak (2):
  drm/i915/dp_link_caps: s/lc/lce/
  drm/i915/dp: return -EINVAL on failure

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |  32 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 274 ++-----
 drivers/gpu/drm/i915/display/intel_dp.h       |   6 +-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 675 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  47 ++
 .../drm/i915/display/intel_dp_link_training.c | 318 +--------
 drivers/gpu/drm/i915/display/intel_dp_test.c  |   7 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |   6 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 11 files changed, 854 insertions(+), 515 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.h

-- 
2.45.2


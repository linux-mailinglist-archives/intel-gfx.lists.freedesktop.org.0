Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iP74IMc7GGo1hggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 14:57:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3525E5F25F2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 14:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B1FB10F142;
	Thu, 28 May 2026 12:57:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EBPCNbKk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0022710F13F;
 Thu, 28 May 2026 12:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779973059; x=1811509059;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=ygeURRrmJCOdi+g8jRLtSuNIngXWI8HSSTvcAInO7f8=;
 b=EBPCNbKksq96cxc3kVEDFAXkrm2Ip0msqkz0BP9NLfK/JBhOAIZfaiHY
 Rf3jQjCFkwzu+Mzh/BaiZCTGkiZ20gpS8esQHGcMOsAcYZAK2eR9aEBxx
 PDja7orIxDXpraSfW5T6H0rofcWItcAYOutgLJ49B4EzYcXIzKTgIoT8j
 ikxH5dtIOODXsnAf4gHHXvNPvJwiNXp6I+oUBAuTW+Knj3JsKZpycunu3
 KDVr9PtyFnLvpsri07LfwsKVLKgnMETbZmP6OBXm0dko3vSH7NCnCqvox
 PhB4wpld99p7cnqhlXlOg8yQdb0HZ8EsgaSWeGwduVeIVXcLvZIUoAIWA g==;
X-CSE-ConnectionGUID: Q6bKRne5Q9yiqOkBAeIO8Q==
X-CSE-MsgGUID: I+0rPYXxTzOGEjwURAa95A==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="68346466"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="68346466"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 05:57:38 -0700
X-CSE-ConnectionGUID: 8eC6D8oNR+itBOIlezlUBQ==
X-CSE-MsgGUID: rv+yjvWuR0GNDSFoUgiltA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="236186903"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO fedora)
 ([10.245.244.41])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 05:57:35 -0700
Date: Thu, 28 May 2026 14:57:26 +0200
From: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Subject: [PULL] drm-xe-next
Message-ID: <ahg7tgWh8djEngjM@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.hellstrom@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 3525E5F25F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave & Simona,

This week's drm-xe-next PR.

Series highlights:

- drm/xe: Misc initialization improvements
  7/7 patches pushed
  Refactors early device initialization to improve separation of
  concerns. Moves devid/revid and force_execlist initialization earlier,
  separates early xe_device init from the rest, and cleans up pm
  init_early() so it no longer accesses the device object directly.
  Also drops an unused parameter from xe_device_create() and uses the
  raw device ID to find the sub-platform descriptor.
  (Michal Wajdeczko)

- drm/xe/rtp: Miscellaneous improvements to rule matching
  7/7 patches pushed
  Improves the RTP (Register Table Processing) rule matching logic with
  a more robust structured parser that resembles a formal grammar (eBNF
  documented in kernel-doc), making it easier to add future extensions.
  First reorganizes kunit tests to have cleaner separation of
  responsibilities, then fixes short-circuit behaviour in the or-yes
  case, improves handling of missing context, extracts rule_match_item(),
  and introduces the full structured parser.
  (Gustavo Sousa)

Single patches:

- drm/xe: Move xe_uc_fw_abi.h to abi/ (Michal Wajdeczko)
- drm/xe: Restore IDLEDLY regiter on engine reset (Balasubramani Vivekanandan)
- drm/xe: Assign queue name in time for drm_sched_init (Tvrtko Ursulin)


Thanks,
Thomas

drm-xe-next-2026-05-28:
Driver Changes:
- drm/xe: Move xe_uc_fw_abi.h to abi/ (Michal Wajdeczko)
- drm/xe: Restore IDLEDLY regiter on engine reset (Balasubramani Vivekanandan)
- drm/xe/pm: Do early initialization in init_early() (Michal Wajdeczko)
- drm/xe/pm: Don't access device in init_early() (Michal Wajdeczko)
- drm/xe: Separate early xe_device initialization (Michal Wajdeczko)
- drm/xe: Move xe->info.devid|revid initialization (Michal Wajdeczko)
- drm/xe: Move xe->info.force_execlist initialization (Michal Wajdeczko)
- drm/xe: Drop unused param from xe_device_create() (Michal Wajdeczko)
- drm/xe: Use raw device ID to find sub-platform descriptor (Michal Wajdeczko)
- drm/xe: Assign queue name in time for drm_sched_init (Tvrtko Ursulin)
- drm/xe/rtp: Implement a structured parser for rule matching (Gustavo Sousa)
- drm/xe/rtp: Fully parse the ruleset (Gustavo Sousa)
- drm/xe/rtp: Extract rule_match_item() (Gustavo Sousa)
- drm/xe/rtp: Do not break parsing when missing context (Gustavo Sousa)
- drm/xe/rtp: Don't short-circuit to false in or-yes case (Gustavo Sousa)
- drm/xe/rtp: Drop rule matching cases from rtp_to_sr_cases and rtp_cases (Gustavo Sousa)
- drm/xe/rtp: Write kunit test cases specific for rule matching (Gustavo Sousa)

The following changes since commit 339fa0be9e4a5d69fa47e91f4a36574224fb478f:

  drm/xe/oa: Fix exec_queue leak on width check in stream open (2026-05-19 08:48:46 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-next-2026-05-28

for you to fetch changes up to 637c8e3a525b73ac3cf765831119b02a927d11cd:

  drm/xe: Move xe_uc_fw_abi.h to abi/ (2026-05-27 21:28:01 +0200)

----------------------------------------------------------------
Driver Changes:
- drm/xe: Move xe_uc_fw_abi.h to abi/ (Michal Wajdeczko)
- drm/xe: Restore IDLEDLY regiter on engine reset (Balasubramani Vivekanandan)
- drm/xe/pm: Do early initialization in init_early() (Michal Wajdeczko)
- drm/xe/pm: Don't access device in init_early() (Michal Wajdeczko)
- drm/xe: Separate early xe_device initialization (Michal Wajdeczko)
- drm/xe: Move xe->info.devid|revid initialization (Michal Wajdeczko)
- drm/xe: Move xe->info.force_execlist initialization (Michal Wajdeczko)
- drm/xe: Drop unused param from xe_device_create() (Michal Wajdeczko)
- drm/xe: Use raw device ID to find sub-platform descriptor (Michal Wajdeczko)
- drm/xe: Assign queue name in time for drm_sched_init (Tvrtko Ursulin)
- drm/xe/rtp: Implement a structured parser for rule matching (Gustavo Sousa)
- drm/xe/rtp: Fully parse the ruleset (Gustavo Sousa)
- drm/xe/rtp: Extract rule_match_item() (Gustavo Sousa)
- drm/xe/rtp: Do not break parsing when missing context (Gustavo Sousa)
- drm/xe/rtp: Don't short-circuit to false in or-yes case (Gustavo Sousa)
- drm/xe/rtp: Drop rule matching cases from rtp_to_sr_cases and rtp_cases (Gustavo Sousa)
- drm/xe/rtp: Write kunit test cases specific for rule matching (Gustavo Sousa)

----------------------------------------------------------------
Balasubramani Vivekanandan (1):
      drm/xe: Restore IDLEDLY regiter on engine reset

Gustavo Sousa (7):
      drm/xe/rtp: Write kunit test cases specific for rule matching
      drm/xe/rtp: Drop rule matching cases from rtp_to_sr_cases and rtp_cases
      drm/xe/rtp: Don't short-circuit to false in or-yes case
      drm/xe/rtp: Do not break parsing when missing context
      drm/xe/rtp: Extract rule_match_item()
      drm/xe/rtp: Fully parse the ruleset
      drm/xe/rtp: Implement a structured parser for rule matching

Michal Wajdeczko (8):
      drm/xe: Use raw device ID to find sub-platform descriptor
      drm/xe: Drop unused param from xe_device_create()
      drm/xe: Move xe->info.force_execlist initialization
      drm/xe: Move xe->info.devid|revid initialization
      drm/xe: Separate early xe_device initialization
      drm/xe/pm: Don't access device in init_early()
      drm/xe/pm: Do early initialization in init_early()
      drm/xe: Move xe_uc_fw_abi.h to abi/

Tvrtko Ursulin (1):
      drm/xe: Assign queue name in time for drm_sched_init

 Documentation/gpu/xe/xe_firmware.rst               |   4 +-
 .../gpu/drm/xe/{xe_uc_fw_abi.h => abi/uc_fw_abi.h} |   4 +-
 drivers/gpu/drm/xe/tests/xe_pci.c                  |   6 +
 drivers/gpu/drm/xe/tests/xe_rtp.c                  |  38 +++
 drivers/gpu/drm/xe/tests/xe_rtp_test.c             | 331 +++++++++++++--------
 drivers/gpu/drm/xe/tests/xe_rtp_test.h             |  23 ++
 drivers/gpu/drm/xe/xe_device.c                     |  57 +++-
 drivers/gpu/drm/xe/xe_device.h                     |   4 +-
 drivers/gpu/drm/xe/xe_guc_ads.c                    |   5 +
 drivers/gpu/drm/xe/xe_guc_submit.c                 |  72 +++--
 drivers/gpu/drm/xe/xe_late_bind_fw_types.h         |   3 +-
 drivers/gpu/drm/xe/xe_pci.c                        |  27 +-
 drivers/gpu/drm/xe/xe_pm.c                         |  42 ++-
 drivers/gpu/drm/xe/xe_pm.h                         |   1 +
 drivers/gpu/drm/xe/xe_rtp.c                        | 325 +++++++++++---------
 drivers/gpu/drm/xe/xe_rtp.h                        |  29 +-
 drivers/gpu/drm/xe/xe_uc_fw.h                      |   2 +-
 17 files changed, 644 insertions(+), 329 deletions(-)
 rename drivers/gpu/drm/xe/{xe_uc_fw_abi.h => abi/uc_fw_abi.h} (99%)
 create mode 100644 drivers/gpu/drm/xe/tests/xe_rtp.c
 create mode 100644 drivers/gpu/drm/xe/tests/xe_rtp_test.h

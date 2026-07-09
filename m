Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tSa/NzUSUGqGswIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 23:27:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AED8D735CF0
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 23:27:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SN2i6SGB;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB44F10E0F5;
	Thu,  9 Jul 2026 21:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA28F10E0DF;
 Thu,  9 Jul 2026 21:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783632433; x=1815168433;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=PIh1LgA76OeuLyM7Cm+K7ONHWY0KDCAc4ueIQT0kdss=;
 b=SN2i6SGBXn02cP/0JDE0Prtyn10YkNh0GZYoYnEgAkEQSU6z/uksaK+G
 CKpEMq8c6xiFA56Y7baIP1lXZQV4K/M0xAYH9+TrajY2oflyULPfyd6A8
 9CfLpzp8a12IxIfOWxqfND7qQteuzIvuuwkQmTIwiIfVRmphzQRRCh1AZ
 3DUEWDPR2E4kcY+vqYedD6SNwnjux6UfPkqCC2KKkKxmHhSwghiJpryYd
 XBQ0Lba0vvDOlWuFWExhM54ptJTnxbWNLntDS8frZkK5VWKqXfcz5Gkvf
 PgKjYpC1z2e1HYqor0fZYzikBv735sa6JeYDjxTkY+1PU5rQGRBSunt8D Q==;
X-CSE-ConnectionGUID: 5fzRlejOR0iGUKSUsn1WGA==
X-CSE-MsgGUID: 13xfqz9lT1qRn9wlj55XKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="109877636"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="109877636"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 14:27:12 -0700
X-CSE-ConnectionGUID: MTN/kHydQYCDj52Dxyfv3Q==
X-CSE-MsgGUID: XyNVjPqsQWCTeekcc09HVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="254217942"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO fedora)
 ([10.245.244.93])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 14:27:08 -0700
Date: Thu, 9 Jul 2026 23:26:57 +0200
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
Subject: [PULL] drm-xe-fixes
Message-ID: <alASIbW318Rl-HTv@fedora>
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
X-Rspamd-Action: no action
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
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,fedora:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AED8D735CF0

Hi Dave, Simona

The drm-xe-fixes PR towards -rc3. This time a small number of various
driver fixes only.

Thanks,
Thomas

drm-xe-fixes-2026-07-09:
Driver Changes:
- Fix PTE index in xe_vm_populate_pgtable for chunked binds (Matt Brost)
- Wait on external BO kernel fences in exec IOCTL (Matt Brost)
- Remove duplicate include (Anas Khan)
- Free madvise VMA array on L2 flush failure (Guangshuo Li)
- Stub notifier_lock helpers when DRM_GPUSVM=n (Shuicheng Lin)
The following changes since commit 959b5016e4646b55fd2fd0438932e4c4e9ce171f:

  drm/xe/oa: Fix offset alignment for MERT WHITELIST_OA_MERT_MMIO_TRG (2026-07-02 12:29:44 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-07-09

for you to fetch changes up to f5ef65adf81da3dbce4e692e48c1754c0bb95da0:

  drm/xe/userptr: Stub notifier_lock helpers when DRM_GPUSVM=n (2026-07-09 12:09:42 +0200)

----------------------------------------------------------------
Driver Changes:
- Fix PTE index in xe_vm_populate_pgtable for chunked binds (Matt Brost)
- Wait on external BO kernel fences in exec IOCTL (Matt Brost)
- Remove duplicate include (Anas Khan)
- Free madvise VMA array on L2 flush failure (Guangshuo Li)
- Stub notifier_lock helpers when DRM_GPUSVM=n (Shuicheng Lin)

----------------------------------------------------------------
Anas Khan (1):
      drm/xe: remove duplicate <kunit/test-bug.h> include

Guangshuo Li (1):
      drm/xe: free madvise VMA array on L2 flush failure

Matthew Brost (2):
      drm/xe: Fix PTE index in xe_vm_populate_pgtable() for chunked binds
      drm/xe: Wait on external BO kernel fences in exec IOCTL

Shuicheng Lin (1):
      drm/xe/userptr: Stub notifier_lock helpers when DRM_GPUSVM=n

 drivers/gpu/drm/xe/tests/xe_pci.c  |  1 -
 drivers/gpu/drm/xe/xe_exec.c       | 22 ++++++++++++++++------
 drivers/gpu/drm/xe/xe_pt.c         | 19 +++++++++++++++++--
 drivers/gpu/drm/xe/xe_vm_madvise.c |  2 +-
 4 files changed, 34 insertions(+), 10 deletions(-)

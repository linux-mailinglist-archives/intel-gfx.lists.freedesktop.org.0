Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IN5jH7AfK2oE3AMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 22:50:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A490D675509
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 22:50:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jNoiJ5i8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD5310F132;
	Thu, 11 Jun 2026 20:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7FC710E865;
 Thu, 11 Jun 2026 20:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781211053; x=1812747053;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=5Llo7vBzrlr7wNp1Fsgprz2zPMh8kmA3e6C28knK2j8=;
 b=jNoiJ5i8974Her4QPTjwW8DN/Bwjop7ncjUE5/q6tCIALpFbAGxCflSm
 DvlYuRY4WKpNBZu3lNdmTFPpHffjtetKDy+kwOsFOoFa3J3qsqdllN6XL
 ehM9oCwj5Kqr5YFYL6RSOXi164vmYyoaL3KarDwSVtWeh4RW/V6EX5FuS
 NPjxadIIWnEP48h1FIgKFepTPPjiDyYc/4eDXpvNcQua3sGF1BMWk+m2p
 cXcRono0VEjipQek3c2hf5YnseneSzRJsM6qwSZw+fg9dGBn0B//6mSon
 C8noWwblC2sQuls5bIg3/9lXIvToQYzPeJQZNLaumlpOlOw+WeExnlTQ5 Q==;
X-CSE-ConnectionGUID: PPW07dNAQB2ec8HOj5SjeQ==
X-CSE-MsgGUID: CbWkA/oCRwSsD+EaYzigvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81053164"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="81053164"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 13:50:52 -0700
X-CSE-ConnectionGUID: 5GnosR5PRl+P/n29jqyFRw==
X-CSE-MsgGUID: ABOLTjkATae0oR6sL2UOYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="246487949"
Received: from vpanait-mobl.ger.corp.intel.com (HELO [10.245.245.22])
 ([10.245.245.22])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 13:50:49 -0700
Message-ID: <c7a9dbb0-a5c8-4e67-904e-1a52b3de9bb4@linux.intel.com>
Date: Thu, 11 Jun 2026 22:50:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Simona Vetter <simona.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>
Cc: dim-tools@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Oded Gabbay <ogabbay@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: [PULL] drm-misc-next-fixes
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A490D675509

Hi Dave, Sima,

Smaller pull request for next-fixes this time!

Kind regards,
~Maarten Lankhorst

drm-misc-next-fixes-2026-06-11:
drm-misc-next-fixes for v7.2:
- Fix agp_amd64_probe error propagation.
- Require carveout when PASID is not enabled amdxdna.
- Clear variable to prevent second unbind in amdxdna.
- Add separate Kconfig option for DMABUF_HEAPS_SYSTEM_CC_SHARED.
The following changes since commit 62c1671f6454ceaa80e9ceff63f821aa36f35154:

  accel/amdxdna: Return errors for failed debug BO commands (2026-06-03 11:47:12 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-fixes-2026-06-11

for you to fetch changes up to f7606400f19ca0291718ce4eed5770798890ea2f:

  dma-buf: move system_cc_shared heap under separate Kconfig (2026-06-11 20:21:44 +0530)

----------------------------------------------------------------
drm-misc-next-fixes for v7.2:
- Fix agp_amd64_probe error propagation.
- Require carveout when PASID is not enabled amdxdna.
- Clear variable to prevent second unbind in amdxdna.
- Add separate Kconfig option for DMABUF_HEAPS_SYSTEM_CC_SHARED.

----------------------------------------------------------------
Arnd Bergmann (1):
      dma-buf: move system_cc_shared heap under separate Kconfig

Lizhi Hou (2):
      accel/amdxdna: Require carveout when PASID and force_iova are disabled
      accel/amdxdna: Clear sva pointer after unbind

Mingyu Wang (1):
      agp/amd64: Fix broken error propagation in agp_amd64_probe()

 drivers/accel/amdxdna/amdxdna_pci_drv.c |  9 ++++++++-
 drivers/char/agp/amd64-agp.c            |  2 +-
 drivers/dma-buf/heaps/Kconfig           |  8 ++++++++
 drivers/dma-buf/heaps/system_heap.c     | 16 ++++++++++------
 4 files changed, 27 insertions(+), 8 deletions(-)

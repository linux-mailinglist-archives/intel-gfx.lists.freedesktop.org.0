Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9B746720E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 07:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41AB3732D1;
	Fri,  3 Dec 2021 06:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEC7E732A2;
 Fri,  3 Dec 2021 06:37:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="323174332"
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="323174332"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 22:37:24 -0800
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="478221022"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 22:37:23 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Dec 2021 22:35:42 -0800
Message-Id: <20211203063545.2254380-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3 0/3] Introduce Raptor Lake S
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
Cc: Jani Nikula <jani.nikula@intel.com>, x86@kernel.org,
 dri-devel@lists.freedesktop.org, Dave Hansen <dave.hansen@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Raptor Lake S(RPL-S) is a version 12
Display, Media and Render. For all i915
purposes it is the same as Alder Lake S (ADL-S).

The series introduces it as a subplatform
of ADL-S. The one difference is the GuC
submission which is default on RPL-S but
was not the case with ADL-S.

All patches are reviewed. Jani has acked the series.
Looking for other acks in order to merge these to
respective branches.

Cc: x86@kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>

Anusha Srivatsa (3):
  drm/i915/rpl-s: Add PCI IDS for Raptor Lake S
  drm/i915/rpl-s: Add PCH Support for Raptor Lake S
  drm/i915/rpl-s: Enable guc submission by default

 arch/x86/kernel/early-quirks.c           | 1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 2 +-
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/i915_pci.c          | 1 +
 drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
 drivers/gpu/drm/i915/intel_device_info.h | 3 +++
 drivers/gpu/drm/i915/intel_pch.c         | 1 +
 drivers/gpu/drm/i915/intel_pch.h         | 1 +
 include/drm/i915_pciids.h                | 9 +++++++++
 9 files changed, 26 insertions(+), 1 deletion(-)

-- 
2.25.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B85F44EE60
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 22:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AD866E192;
	Fri, 12 Nov 2021 21:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 264936E192
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 21:10:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="230668927"
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="230668927"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 13:10:29 -0800
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="471276143"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 13:10:28 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Nov 2021 13:08:22 -0800
Message-Id: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Introduce Raptor Lake S
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

Raptor Lake S(RPL-S) is a version 12
Display, Media and Render. For all i915
purposes it is the same as Alder Lake S (ADL-S).
The series introduces it as a subplatform
of ADL-S. The one difference is the GuC
submission which is default on RPL-S but
was not the case with ADL-S.

Anusha Srivatsa (3):
  drm/i915/rpl-s: Add PCI IDS
  drm/i915/rpl-s: Add PCH ID
  drm/i915/rpl-s: Enable guc submission by default

 arch/x86/kernel/early-quirks.c           |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    |  2 +-
 drivers/gpu/drm/i915/i915_drv.h          |  2 ++
 drivers/gpu/drm/i915/i915_pci.c          |  1 +
 drivers/gpu/drm/i915/intel_device_info.c |  7 +++++++
 drivers/gpu/drm/i915/intel_device_info.h |  3 +++
 drivers/gpu/drm/i915/intel_pch.c         |  1 +
 drivers/gpu/drm/i915/intel_pch.h         |  1 +
 include/drm/i915_pciids.h                | 14 ++++++++++++++
 9 files changed, 31 insertions(+), 1 deletion(-)

-- 
2.25.1


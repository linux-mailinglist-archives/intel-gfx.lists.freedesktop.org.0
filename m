Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A6185295E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 07:46:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA65D10EB4F;
	Tue, 13 Feb 2024 06:46:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3WBdTOG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0740A10EB1C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 06:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707806816; x=1739342816;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G1up0TvW+RbtDoAGTwKzvFAQmYQLfTZucg4itLSmE5k=;
 b=Y3WBdTOGhhkEXjUcw5CnZxS8MvgKSuKVTZ93K3n/iSG2otehfMDxeBmg
 56JuSrz4XXaDoMgOmOaIKt520NbgoWcs8MsWTsqkoX64ePMubfyEZfetX
 4+k1PsQO7FzNzaxm6FbguRdJ8Wef4Y31N3yY7ja0EAW2LF3wC/xbFIAVq
 EBbiWEgRf20lVX1mCMXa3tal0UZMTMV0aEzyjQCpFad3zhJkeVbOz5Mb7
 7ZCb8l4rQKN00IvokIw7k5XdOAwJa35coavpf1aCGY9yqXK1dMi6RuIer
 r5C3fht64LAAHpHuuVC4AldlEvNkmZxQAy2d/lWZ5JtjocajM7YnFE8bZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="12893270"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="12893270"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 22:46:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="826031412"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="826031412"
Received: from dut7231atsm.jf.intel.com ([10.98.51.28])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 22:46:54 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: [PATCH 0/2] Fix crash due to open pmu events during unbind
Date: Mon, 12 Feb 2024 22:46:48 -0800
Message-Id: <20240213064650.45051-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
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

Once a user opens an fd for a perf event, if the driver undergoes a
function level reset (FLR), the resources are not cleaned up as
expected. For this discussion FLR is defined as a PCI unbind followed by
a bind. perf_pmu_unregister() would cleanup everything, but when the
user closes the perf fd much later, perf_release() is called and we
encounter null pointer dereferences and/or list corruption in that path
which require a reboot to recover.

The only approach that worked to resolve this was to close the file
associated with the event such that the relevant cleanup happens w.r.t.
the open file. To do so, use the event->owner task and find the file
relevant to the event and close it. This relies on the
file->private_data matching the event object.

Test-with: 20240213062948.32735-1-umesh.nerlige.ramappa@intel.com
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (2):
  i915/pmu: Add pmu_teardown helper
  INTEL_DII: i915/pmu: Cleanup pending events on unbind

 drivers/gpu/drm/i915/i915_pmu.c | 192 ++++++++++++++++++++++++--------
 drivers/gpu/drm/i915/i915_pmu.h |  15 +++
 2 files changed, 161 insertions(+), 46 deletions(-)

-- 
2.34.1


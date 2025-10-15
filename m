Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1612BDE869
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E746810E7A5;
	Wed, 15 Oct 2025 12:44:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dCoxFgYb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5225D10E7A5;
 Wed, 15 Oct 2025 12:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760532279; x=1792068279;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H7yYnIA2eSqd6aioUnrBkDtKCLTRbi4VFKh8sr96DIc=;
 b=dCoxFgYb9nMt6HLCPqhwOxToJHaljaE8ZfBuCFBZjf2I5gIdF4YW9UJa
 qF+nbL8dIqOF+3JHrg6xC1HipB9J51Nf1GnLKbBnKnved8xWdVDwwOkG4
 jIJgdfT/BpvMFjOw83hyJD/8dyfX/fRhNsP41Hl4hO2qdsRrdtCtSyd2s
 8jjI3ZQxGpZwjGdsCEQ4B1KZ/gJ3SV0WT7liF9RMegbWBw5N1BWn0Mi7+
 OU/uzbtZi8UqeyaOxURXpKXpFjCOmUr/+UXBhC4SuGTQwsPc2hxeDFwPv
 +OIDtYfC5OY0dxiZjnaRq+w2Lf3Tig6R8xmpv7TDY7DWn3dz8v1hfevTb w==;
X-CSE-ConnectionGUID: OwJUYrxVSUeg6dF5HRzZKA==
X-CSE-MsgGUID: W93LZ1meRiuGJz7l/gd3vA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62601551"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62601551"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:39 -0700
X-CSE-ConnectionGUID: jl1CtYuRSFmRDXfiGxqnFw==
X-CSE-MsgGUID: NIsnOJ/TRaOqHt2sK2mgUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181384925"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.92])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:37 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v3 0/6] tests/gem_eio: Resolve timing issues in stress
 subtests
Date: Wed, 15 Oct 2025 14:39:18 +0200
Message-ID: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.0
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

Subtests that measure time of resume after engine reset require results
from at least 9 reset-resume cycles for reasonable calculation of a median
value to be compared against presumed limits.  On most Gen12+ platforms,
as well as on some older ones like JSL, CHV, ILK or ELK, the current limit
of 5 seconds for collecting those results occurs too short.  Moreover,
upstream CI results from kms, reset-stress and unwedge-stress subtests
show GPU resume after reset noticeably slower when running on some Gen12+
platforms.

Skip if less than 9 results from reset-resume cycles are collected.  Raise
the 5 seconds loop limit to 20 seconds, and break the loop as soon as more
than 8 results are collected.  Having the test results revisited with the
above in place, relax expectations on resume-after-reset time for Gen12+
similar to Gen5-.  Also, limit the scope of exercised engines to physical,
skipping virtual, to avoid exceeding per test timeout applied by
igt_runner, and limit the amount of debug info on stderr to avoid
exceeding per test disk space limit.

v3: Use a symbol for minimum number of measurements (Kamil; 1/6, 2/6),
  - reword skip message for its better readability (Kamil; 1/6),
  - reduce amount of display debug messages on dmesg (Kamil; 6/6),
  - since 6/6 has a similar objective as 5/6 while providing a different,
    additional solution, reword commit message and description of the
    latter.
v2: Skip, not warn, on too few reset-resume cycles, may be handled as
    expected skip on extremely slow platforms (Krzysztof),
  - split out a change in handling of not enough measurements to a
    separate patch (Kamil),
  - reword commit message to be more distinct from other patches in
    series (Kamil),
  - reword commit message and description so they no longer state the
    scope of the issue is limited to Gen12+, and list other (non-Gen12+)
    platforms found also affected,
  - disable massive engine debugging info on stderr to avoid incompletes
    on disk space limit exceeded.

Janusz Krzysztofik (6):
  tests/gem_eio: Skip on too few reset-resume cycles
  tests/gem_eio: Try harder to measure median resume time
  tests/gem_eio: Adjust for slow resume after reset on Gen12+
  tests/gem_eio: Iterate over physical rings in stress subtests
  tests/gem_eio: Reduce debug info on stderr from stress subtests
  tests/gem_eio: Reduce debug info on dmesg from kms subtest

 tests/intel/gem_eio.c | 51 +++++++++++++++++++++++++------------------
 1 file changed, 30 insertions(+), 21 deletions(-)

Cc: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
-- 
2.51.0


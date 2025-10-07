Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D22BC13DD
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 13:40:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463C610E16A;
	Tue,  7 Oct 2025 11:40:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CrURF0N0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8925110E16A;
 Tue,  7 Oct 2025 11:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759837207; x=1791373207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CNfSGplDndkpBe6Bt+fSbWcLh3cFwnAQx8RfIbT8iL8=;
 b=CrURF0N0xb30/FpVgvjrt6hIl/UezwzAe6lXxiTaurIkOlTItiIj9qKc
 lf2B9tSPuYFG32z2W8KC1XAbYF+fLjCozgjoIKH3fI6ubU8vUD2Vo0X+b
 UerV6gTKaTlihN35noHzQvpeHgODfgvYJ6oYDqU7JGK7g0p1OhnWmzxV8
 LBoPxKtzO4EKTU9ArPUx8xMZqz4OJYYVce2Iu/Cn23horTNKQ6robZ2/5
 YYeviqEeiXfhXdGpPGXgKMC0YIYEHi1vaHdLHGxSohKsQJueBrNNQO07w
 VCUaZvAMZTBIerdIiw3sVUykeMhzpFe0VLchk4Y7dsg5r+vminUqN3Z6n Q==;
X-CSE-ConnectionGUID: TRCZMjJPTwaMq2Y1XalInw==
X-CSE-MsgGUID: evinDs2gR8mtoUTvciM+/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73442889"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73442889"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:07 -0700
X-CSE-ConnectionGUID: vOAtq7ewQ/O/YtGJHnO/rg==
X-CSE-MsgGUID: PRQiSwvmSMmMC9PcsgA7pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="184161204"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.245.225])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:05 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v2 0/5] tests/gem_eio: Resolve timing issues in stress
 subtests
Date: Tue,  7 Oct 2025 13:38:23 +0200
Message-ID: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
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

Janusz Krzysztofik (5):
  tests/gem_eio: Skip on too few reset-resume cycles
  tests/gem_eio: Try harder to measure median resume time
  tests/gem_eio: Adjust for slow resume after reset on Gen12+
  tests/gem_eio: Iterate over physical rings in stress subtests
  tests/gem_eio: Avoid exceeding CI disk space limit

 tests/intel/gem_eio.c | 47 ++++++++++++++++++++++++-------------------
 1 file changed, 26 insertions(+), 21 deletions(-)

-- 
2.51.0


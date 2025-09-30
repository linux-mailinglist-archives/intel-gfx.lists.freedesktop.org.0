Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE13BACF1C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 14:54:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A8B10E5A7;
	Tue, 30 Sep 2025 12:54:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WCc2VBaw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A36B10E5A7;
 Tue, 30 Sep 2025 12:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759236890; x=1790772890;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iATA6gn2kyrgou2sJ7QaEfEKoN5vVOzKhYZryPPYZP4=;
 b=WCc2VBawH35/oiShYVJr6y/Hdq5eiqXw+IHbiay41Q2/6zE1UVJY6/ll
 nezGnIhNL9Hc98Ml189MrN0PbifEZvJB0G8KJF0sKUExEjX11h2TWicIm
 L1SGpTKeMytpysOzO4b86fMzvD46gIkSwyHLgES6sGDBN5sVyzfdk3XLM
 8hsZl7mWximDcUNQx+ugGJgTdnd7wQL2k04W+Disqf591lEcafjIL2bEp
 wP6gN1ewlEjn1CFHEhu5wRb5CVyhsEmwnAsXonrAWjireVB5p08t0pKy7
 5/cYmVQwl4AXRX3+f+PZE+JyahEd9wA3lwmgvLRKIvD3XlFZCPVddPoCF g==;
X-CSE-ConnectionGUID: XNrp+gW2Qt6lHmSTmxvyMw==
X-CSE-MsgGUID: 9HDpTCQZRT6shvoF1KPLJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="86934574"
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="86934574"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 05:54:49 -0700
X-CSE-ConnectionGUID: zA7m1fZGS1ilMpmIuYQu/w==
X-CSE-MsgGUID: r24qQInDRoWbnq4GY2lq7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="209466888"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.244.151])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 05:54:46 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 0/3] Resolve timing issues in gem_eio stress subtests
Date: Tue, 30 Sep 2025 14:49:00 +0200
Message-ID: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
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
value to be compared against presumed limits.  On most of Gen12+
platforms, the limit of 5 seconds for collecting those results occurs too
short for executing 9 reset-resum cycles.  Moreover, upstream CI results
from kms, reset-stress and unwedge-stress subtests of igt@gem_eio show GPU
resume after reset noticeably slower when running on some Gen12+
platforms.

Adjust timings for Gen12+.  Also, take care of not exceeding per test
timeout values used by CI.

Janusz Krzysztofik (3):
  tests/gem_eio: Adjust for long reset-resume cycle on Gen12+
  tests/gem_eio: Adjust for slow resume after reset on Gen12+
  tests/gem_eio: Iterate over physical rings in stress subtests

 tests/intel/gem_eio.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

-- 
2.51.0


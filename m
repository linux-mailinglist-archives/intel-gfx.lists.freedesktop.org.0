Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAC26907BC
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 12:51:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A470410E1E2;
	Thu,  9 Feb 2023 11:51:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BA4610E0D6;
 Thu,  9 Feb 2023 11:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675943470; x=1707479470;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jf5TFnFMQ8zGVakki5eLGj5fSWeI8U60aqZx1yxByfY=;
 b=WZJr/blG5UcmFE5PQ9VUM3ETegYCVMRCvSa/rGyM8z+xuHIaQBr7lZUP
 a7qiCj4nrYiCmV93PXb5wSgdX3HiPRNKMHuKohL+ipaghJlAN7THUiiC6
 6EkCY0h28Htnsa7AtAjvkloRRc+KeKdwIZ89AT8l7g2u0n5nOdhh4/Hr0
 jfzlQRldwfkv0I8eVPJdJF+z0iWJ6o+DAsid5SZRqEn7S/AQFHsrV3hgu
 4OV/IJgnxVVzSF3YH9C2olQIes9IP9zGT5Ma0qKeAYpHM1v/VFMqO7msK
 nW9IzLjS4aTr7luEaFnMediLM35CvVp5Isjgneqa4gXZUjBPdHjjpC/Gp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="318085578"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="318085578"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 03:51:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="791579842"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="791579842"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.17.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 03:51:05 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  9 Feb 2023 12:50:38 +0100
Message-Id: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 0/1] tests/i915/perf: Add stress / race
 exercises
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Users reported oopses on list corruptions when using i915 perf with a
number of concurrently running graphics applications.  That indicates we
are currently missing some important tests for such scenarios.  Cover
that gap.

v2: drop open-race subtest for now, not capable of triggering the user
    reported bug, but triggering other bugs which I can't see any fixes
    for queued yet,
  - move the other new subtest out of tests/i915/perf.c (Ashutosh).

Janusz Krzysztofik (1):
  tests/gem_ctx_exec: Exercise barrier race

 tests/i915/gem_ctx_exec.c | 123 ++++++++++++++++++++++++++++++++++++++
 tests/meson.build         |   9 ++-
 2 files changed, 131 insertions(+), 1 deletion(-)

-- 
2.25.1


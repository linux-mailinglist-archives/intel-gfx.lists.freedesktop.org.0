Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2713682887
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 10:17:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2F310E0B9;
	Tue, 31 Jan 2023 09:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8556110E0B9;
 Tue, 31 Jan 2023 09:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675156673; x=1706692673;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AhSuXSqPt28XVu4VjlzAJV7lsNLk9HvoWpvBfaoX/GQ=;
 b=EsKiGkEcxTzYbmu2+YRsgbh+re6pKn+Nf7JU2sfbw8P0LL7/oZgPhme4
 Ipe80O+z8gC2H7TdNiecHfJJWIYVkIQygJb1xzf+Y++gCXKXYmZMmm8hl
 bcfiOqcbVIkzTgiV7G6Ax01dG6nxGCR8gAPu1ElfBx+I/SgyiB6er3Ykd
 DRBb9KdiQcCW7u0kku5AxMIz1C+aU7BPf1CxwRVB5g96Yn/7CNSdqZtGB
 H88XmElnv0kdcU+UsqoQvYeDos6UBsu9xqFU8uiFN1TV4FBXuEN/T+vGr
 c2tqoOtLuZvRjZPxx6rq+wNMfBeTRSn8Y8z3m8WJ+DDVwp3CJw76PaKQT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="390154141"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="390154141"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 01:17:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="909837932"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="909837932"
Received: from khernet-mobl.ger.corp.intel.com (HELO
 jkrzyszt-mobl1.ger.corp.intel.com) ([10.213.18.238])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 01:17:49 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Petri Latvala <adrinael@adrinael.net>, Arkadiusz Hiler <arek@hiler.eu>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Date: Tue, 31 Jan 2023 10:17:29 +0100
Message-Id: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/2] tests/i915/perf: Add stress / race
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Users reported oopses on list corruptions when using i915 perf with a
number of concurrently running graphics applications.  That indicates we
are currently missing some important tests for such scenarios.  Cover
that gap.

Chris Wilson (1):
  i915/perf: Stress opening of new perf streams against existing
    contexts

Janusz Krzysztofik (1):
  tests/i915/perf: Exercise barrier race

 tests/i915/perf.c | 111 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 111 insertions(+)

-- 
2.25.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CxKKbABs2mQRQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 19:10:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 046712770A4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 19:10:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D857510E361;
	Thu, 12 Mar 2026 18:10:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mPJ63tJ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 665AD10E361;
 Thu, 12 Mar 2026 18:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773339051; x=1804875051;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xPbl87r85T0RJj7/iT07olJj6xx5Oh+mO6yV54a/mEg=;
 b=mPJ63tJ8Fb51Y/OUIsMBTYk5yX2cYGd0UvnKLod1rl0KTYcC3X4UY8ok
 sS45geaOgRH7AMS0G5ctpukwbex4kSkyxtSO7T3gj0IWmwCHsQjUgvvsP
 EwwRXWf3a1awUF8THpUeYAj3QshOhO+GG3bjWfS0KhQ+cs0yesihR3U8X
 MUr72qyxQyUeTtw3IqX1upeaMOGoTQaKPRKOYx3eBRNnM4262D8D2xkuD
 lFw4iq67DU9NhkXOR9yVN6TQgkPtfmckqoF9j3PKrhjHTutH8d79awSmR
 3HZtigvie8xDudcuDV0IK+zFsBH+8fC6aAZaP0Q2PbKp2Xi0pmFz9Fdqx Q==;
X-CSE-ConnectionGUID: tH3LCalWSlmz1FPjtY0Qtw==
X-CSE-MsgGUID: h5RmtmV1QEW7Lmbn5Lrn7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="92016965"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="92016965"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 11:10:50 -0700
X-CSE-ConnectionGUID: yRzfv4gYRU2hjB6/e0Jtsw==
X-CSE-MsgGUID: Hdy78SsVR8uxH80z2acj+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="243936347"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.152])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 11:10:48 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 0/3] tests/intel/gem_lmem_swapping: Expect gem leak
 helper crashes
Date: Thu, 12 Mar 2026 19:07:32 +0100
Message-ID: <20260312181032.20485-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.53.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 046712770A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When trying to exhaust system memory in order to exercise LMEM eviction
under OOM conditions, a gem_leak helper process may itself become a victim
of memory shortage.  If our i915 TTM VM fault handler fails to allocate a
page and responds with a SIGBUS signal when the helper process is trying
to store data in a mmaped i915 GEM object with memset then the process
crashes.  Unfortunately, such crash is not only reported on stdout, strerr
and dmesg as premature, additional result from the subtest while it is
still in progress, but also renders the final result as failed.

Since page allocation failures are unavoidable under OOM conditions, and
the SIGBUS signal response from our TTM fault handler is correct in such
cases, catch those signals and let the helper process continue.

While being at it, improve concurrency of smem-oom helpers and be more
clear about their supplementary role.
 
v2: Add 2 introductory patches that make the code more predictable and
    clear,
  - add a comment about no need to restore default SIGBUS handler (Kamil),
  - fix missing initialization of sa.sa_mask with sigemptyset().

Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Janusz Krzysztofik (3):
  tests/gem_lmem_swapping: Improve concurrency of smem-oom helpers.
  tests/intel/gem_lmem_swapping: Be more clear about subprocesses role
  tests/intel/gem_lmem_swapping: Expect gem leak helper crashes

 tests/intel/gem_lmem_swapping.c | 60 +++++++++++++++++++++++++--------
 1 file changed, 46 insertions(+), 14 deletions(-)

-- 
2.53.0


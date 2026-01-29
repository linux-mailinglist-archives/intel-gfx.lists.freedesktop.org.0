Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKjhHTQie2mZBgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 10:02:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F09FDADEA5
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 10:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8383E89FF7;
	Thu, 29 Jan 2026 09:02:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V5ZxpOiX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9396F890EB;
 Thu, 29 Jan 2026 09:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769677355; x=1801213355;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7nLHDetjhXQKtgNSEu0MclmdkH2clD6+kPuMXFtNOZY=;
 b=V5ZxpOiXjGpWZazZUlMfulGh6yZU0pDg4B8i6dlpUyjVmuFoqbBFi41R
 aMFOdmbP/ej47Yo96sKElMVCexzh4dSnBvarxh7aEj1jZMjEsXcYl+kDZ
 KR4QJcDhiXxvxceohKd+CjgT2IICfWY6GMk5IRq7Y3+Y7DN2FPUjDU1Xe
 1wS1c3WmtONhstKHsWqYt37ppXFegPUPby4RB+/b0a9+XIeTzGwrewjG3
 6hn8w7F6aCYy0FCzwkFmtjnxC1Mp7VnCBta1U0WYF51ABbKvklvmM9275
 IHzKQSzvjhloGXMlZJWJ22o9zvBP/1APc6RcZQM2zMx5RTc5xwmGTWOs3 Q==;
X-CSE-ConnectionGUID: Gb3hFCM+Ssy2sxT5gJ0SZA==
X-CSE-MsgGUID: bu6YN/mzR4S034ReBKNhNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="69920774"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="69920774"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 01:02:35 -0800
X-CSE-ConnectionGUID: iMt3rOxiR4+Napiq4Pe9tg==
X-CSE-MsgGUID: OYjZopwESyG6Zy5ksB3+xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213020948"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 29 Jan 2026 01:02:33 -0800
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 0/1] i915/i915_driver: move intel_gvt_init() level higher
Date: Thu, 29 Jan 2026 10:01:28 +0100
Message-ID: <20260129090129.2601661-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[intel.com:query timed out];
	RBL_SEM_FAIL(0.00)[131.252.210.177:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[intel.com:query timed out];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F09FDADEA5
X-Rspamd-Action: no action

Next version of [1]. Tested on MTL-P.

[1] https://lore.kernel.org/all/20260128180933.2561419-1-michal.grzelak@intel.com

BR,
Michał

---
Changelog:
v1->v2
- don't move err_msi error path from i915_driver_hw_probe (Jani)
- rewrite commit message

Michał Grzelak (1):
  i915/i915_driver: move intel_gvt_init() level higher

 drivers/gpu/drm/i915/i915_driver.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

-- 
2.45.2


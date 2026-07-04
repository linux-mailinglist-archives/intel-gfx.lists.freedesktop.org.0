Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Kz/1BRTlSGoqvAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:48:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F247075C4
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:48:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kO6d8cX4;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA5410E049;
	Sat,  4 Jul 2026 10:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64FC910E049;
 Sat,  4 Jul 2026 10:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783162130; x=1814698130;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=xZShJjEm5PH55JkXSHfdt5659GNj395lw7zXCLCnbWo=;
 b=kO6d8cX4p6GF6NLnI6IKHAULPQh0wdxdC+YSrCGWssvT8hdF1BM6eUP2
 PvIq8BTFfkvQ7o6fp9QBL2JNTo7PKBGrBEq7xhWXY+8vsnhdInSxxHUj/
 nTG0J5/sl5ag1Bv2FZguUX5wsvHjZJcr6N/8xh8tjI/gDwLLzWqzq13T3
 95DdZYyBj1fp/5z/RLM0dnDUHkXf3+68qIBu7ASBIwNhgvqGXwi2Rn5c8
 7+ZKW0WjyEXgiz/DZBcfnn2eGw3SkD/XqvCjOfAEFMtZNxcKzixzeoKag
 uj0nnmyeNBFhKx1PdNgToeb2jvIn4bhnfs4PGNKX39Gy0YqW2g30UiU51 g==;
X-CSE-ConnectionGUID: wC797MySTpiGR+QAmLCVNw==
X-CSE-MsgGUID: 9i77lRDFS+6F6zMQWI5luA==
X-IronPort-AV: E=McAfee;i="6800,10657,11836"; a="95035511"
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="95035511"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:48:49 -0700
X-CSE-ConnectionGUID: o+XDfF18Ru6rez1JeHSGrQ==
X-CSE-MsgGUID: uRnS/QuXTdStZlToE+x3ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="249935703"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:48:48 -0700
Date: Sat, 4 Jul 2026 12:48:46 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Imre Deak <imre.deak@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 27/34] drm/i915/kunit: Add DP link test stub
In-Reply-To: <20260701153204.4124150-28-imre.deak@intel.com>
Message-ID: <f03d6969-0ff2-18bf-be21-6ec8ab683bfa@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-28-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-678234605-1783116619=:605841"
Content-ID: <f8e82731-d8dc-40cd-b3a3-1a089c824222@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 80F247075C4

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-678234605-1783116619=:605841
Content-Type: text/plain; CHARSET=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <0a342f55-fa9b-d755-2f4a-3f03261c1e1e@intel.com>

On Wed, 1 Jul 2026, Imre Deak wrote:
> Add a Kunit stub test module for DP link test cases.
>
> v2: Add missing module license.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał

> ---
> drivers/gpu/drm/i915/Makefile                 |  2 +
> drivers/gpu/drm/i915/display/tests/Makefile   |  7 +++
> .../i915/display/tests/intel_dp_link_test.c   | 47 +++++++++++++++++++
> 3 files changed, 56 insertions(+)
> create mode 100644 drivers/gpu/drm/i915/display/tests/Makefile
> create mode 100644 drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index c4de717505d73..a83fa8be0aba1 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -386,6 +386,8 @@ i915-y += \
> i915-$(CONFIG_DRM_I915_DP_TUNNEL) += \
> 	display/intel_dp_tunnel.o
>
> +obj-$(CONFIG_DRM_I915_KUNIT_TEST) += display/tests/
> +
> i915-$(CONFIG_DRM_I915_GVT) += \
> 	display/intel_gvt_api.o
>
> diff --git a/drivers/gpu/drm/i915/display/tests/Makefile b/drivers/gpu/drm/i915/display/tests/Makefile
> new file mode 100644
> index 0000000000000..ad250974160f6
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/tests/Makefile
> @@ -0,0 +1,7 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +subdir-ccflags-y += -I$(srctree)/drivers/gpu/drm/i915/display/
> +
> +obj-$(CONFIG_DRM_I915_KUNIT_TEST) += i915_display_test.o
> +i915_display_test-y = \
> +	intel_dp_link_test.o
> diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> new file mode 100644
> index 0000000000000..62e1844605ac5
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> @@ -0,0 +1,47 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2026 Intel Corporation
> + */
> +
> +#include <kunit/test.h>
> +
> +struct test_ctx {
> +};
> +
> +static struct kunit_case intel_dp_link_test_cases[] = {
> +	{}
> +};
> +
> +static struct test_ctx test_ctx;
> +
> +static int intel_dp_link_test_init(struct kunit *test)
> +{
> +	test->priv = &test_ctx;
> +
> +	return 0;
> +}
> +
> +static void intel_dp_link_test_exit(struct kunit *test)
> +{
> +}
> +
> +static int intel_dp_link_test_suite_init(struct kunit_suite *test_suite)
> +{
> +	return 0;
> +}
> +
> +static struct kunit_suite intel_dp_link_test_suite = {
> +	.name = "intel_dp_link",
> +	.suite_init = intel_dp_link_test_suite_init,
> +	.init = intel_dp_link_test_init,
> +	.exit = intel_dp_link_test_exit,
> +	.test_cases = intel_dp_link_test_cases,
> +};
> +
> +kunit_test_suites(&intel_dp_link_test_suite);
> +
> +MODULE_IMPORT_NS("EXPORTED_FOR_KUNIT_TESTING");
> +
> +MODULE_AUTHOR("Intel Corporation");
> +MODULE_LICENSE("GPL and additional rights");
> +MODULE_DESCRIPTION("Intel DP link KUnit tests");
> -- 
> 2.49.1
>
>
--8323329-678234605-1783116619=:605841--

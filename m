Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xSnMJnjlSGpWvAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:50:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ACB7075D2
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:50:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QMh7UKkr;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 988BE10E6AD;
	Sat,  4 Jul 2026 10:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B62B10E6A3;
 Sat,  4 Jul 2026 10:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783162229; x=1814698229;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=538Fmk+AZ4TWmajjAdttDTYE6Xs2Gl7plAT4z8jbWKk=;
 b=QMh7UKkrDBXCk0sD97mV/m4H4VEJYX1b+yFFJFi4NcYad8uBGOZospL8
 lt6Q6IFq/IEzPj1H0xts9eMZ+oQ6T+DQf83Fbf0PYrh3UutFuT1QABfX8
 GvEjvE6vFirDL4qSXmAV3EX7MVtjQy2yGj0V+9Mrz+Kt0qA4EqxpKP4ZH
 tW81ygcBSuSdebsF+4TvyIAPTr47nlDNsRNv5FmWS55+0ea9+doOyTpcF
 4aIe7W8/xuz0y4Kxegffy9D3YOtNWbI1TXK6e29/nfCOOsTi5NtzWSU5R
 dqJ0jzkqYOUXpfcn05Ll5qMKJttudjJ7LPXXuxvQbhrB9GozCuL/Fy/1a Q==;
X-CSE-ConnectionGUID: J/7xIR56Skmdw7QuI0HxAQ==
X-CSE-MsgGUID: TlUHUOrfRB6Kk5BN9gRmYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11836"; a="87559709"
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="87559709"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:50:28 -0700
X-CSE-ConnectionGUID: rWygvJe6TQ+p+ZVpz/h0gA==
X-CSE-MsgGUID: Hf1LjPL9QDKJVdp6Pfb3wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="258182067"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:50:27 -0700
Date: Sat, 4 Jul 2026 12:50:25 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Imre Deak <imre.deak@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 30/34] drm/i915/kunit: Setup DP link test context
In-Reply-To: <20260701153204.4124150-31-imre.deak@intel.com>
Message-ID: <6408b519-c31b-e3aa-d606-2154577e951b@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-31-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1214378784-1783162087=:605841"
Content-ID: <bd309681-a791-9fff-01a7-e2bccc13a0dd@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 09ACB7075D2

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1214378784-1783162087=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <d8cdcd82-99bd-b651-6aef-99c1f456b0b1@intel.com>

On Wed, 1 Jul 2026, Imre Deak wrote:
> Initialize a reusable test context for DP link KUnit tests. Sets up
> minimal device, connector, encoder, and DP structures, and seeds the
> pseudo-random generator for deterministic test runs.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
> .../i915/display/tests/intel_dp_link_test.c   | 50 +++++++++++++++++++
> 1 file changed, 50 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> index 62e1844605ac5..aa5358c94839f 100644
> --- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> +++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> @@ -5,7 +5,32 @@
>
> #include <kunit/test.h>
>
> +#include <linux/compiler.h>
> +#include <linux/device.h>
> +#include <linux/prandom.h>
> +#include <linux/random.h>
> +
> +#include <drm/display/drm_dp_helper.h>
> +
> +#include <drm/intel/display_member.h>
> +
> +#include "intel_connector.h"
> +#include "intel_display_core.h"
> +#include "intel_display_types.h"
> +
> struct test_ctx {
> +	struct {
> +		struct intel_display display;
> +		struct device device;
> +		struct __intel_generic_device generic_device;
> +
> +		struct intel_connector connector;
> +		struct intel_digital_port dig_port;
> +
> +		struct intel_crtc_state crtc_state;

crtc_state is not used in this patch; if it is used implicitly in next
patch, I'm thinking about moving this hunk to it.

Whether it applies or not:

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> +	} dev;
> +
> +	struct rnd_state rnd;
> };
>
> static struct kunit_case intel_dp_link_test_cases[] = {
> @@ -16,6 +41,29 @@ static struct test_ctx test_ctx;
>
> static int intel_dp_link_test_init(struct kunit *test)
> {
> +	struct intel_digital_port *dig_port;
> +	struct intel_encoder *encoder;
> +	struct intel_dp *intel_dp;
> +
> +	/* Reset the dev state for each test. */
> +	memset(&test_ctx.dev, 0, sizeof(test_ctx.dev));
> +
> +	test_ctx.dev.generic_device.drm.dev = &test_ctx.dev.device;
> +
> +	test_ctx.dev.display.drm = &test_ctx.dev.generic_device.drm;
> +	test_ctx.dev.generic_device.display = &test_ctx.dev.display;
> +
> +	encoder = &test_ctx.dev.dig_port.base;
> +	encoder->base.dev = &test_ctx.dev.generic_device.drm;
> +
> +	dig_port = &test_ctx.dev.dig_port;
> +	dig_port->base.type = INTEL_OUTPUT_DP;
> +
> +	test_ctx.dev.connector.encoder = encoder;
> +
> +	intel_dp = &dig_port->dp;
> +	intel_dp->attached_connector = &test_ctx.dev.connector;
> +
> 	test->priv = &test_ctx;
>
> 	return 0;
> @@ -27,6 +75,8 @@ static void intel_dp_link_test_exit(struct kunit *test)
>
> static int intel_dp_link_test_suite_init(struct kunit_suite *test_suite)
> {
> +	prandom_seed_state(&test_ctx.rnd, 0);
> +
> 	return 0;
> }
>
> -- 
> 2.49.1
>
>
--8323329-1214378784-1783162087=:605841--

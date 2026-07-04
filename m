Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2rvOBLjlSGphvAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:51:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0DF7075E1
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:51:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dMaOVgnt;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3333910E6A3;
	Sat,  4 Jul 2026 10:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1596510E6A3;
 Sat,  4 Jul 2026 10:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783162293; x=1814698293;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=VcDUnhszVRhYeow5O+KEzltA9+UL3Sj2OjUMsbQ3LRU=;
 b=dMaOVgnt4eWDv8CUiAn/sANVgslJ5pei5iJq/4uYaNHfgVqBIQIezlmf
 WitzFQCR5osm94BjdfA7xqFN/++eDVluEJsvQpOt4sPJ8kssRSH095Pb5
 TVfkSaURgFd33uLTDmyIihBrOu/2m7OOFJzqyuX/741L5cwe3OJEMJOap
 TiOJC50Cx8zwBlputOQpWQT50ag1BpN+S/5xTE5l6vFw4uLzfQTs11+82
 CL8nLNJ84e28YGTySBMo8AGJj7/nZXHxOW9scN2884Lfz7cg5cpPNcWUT
 KmYxwIwurSRmlv/NX40Su97CPoPRLg+C3jbaKv40Wzy2zTyjA7fq4LE4t A==;
X-CSE-ConnectionGUID: EGZtnnzmSUqcbhU+5HEY8w==
X-CSE-MsgGUID: 3f57J89ITXOMBijZD1hUhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11836"; a="95035552"
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="95035552"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:51:33 -0700
X-CSE-ConnectionGUID: qmqvYEo7Rq+mX9ddliQbuw==
X-CSE-MsgGUID: znIhNAbuT9O5TXwzcMcPyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="249935903"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:51:31 -0700
Date: Sat, 4 Jul 2026 12:51:29 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Imre Deak <imre.deak@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 34/34] drm/i915/kunit: DP link: add fallback tests
In-Reply-To: <20260701153204.4124150-35-imre.deak@intel.com>
Message-ID: <d1a4f146-384e-bc6b-f13e-b5bb66cae6bb@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-35-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-62723454-1783161878=:605841"
Content-ID: <b90aa552-9a36-7bd2-9361-8b34125a5eb0@intel.com>
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
X-Rspamd-Queue-Id: AD0DF7075E1

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-62723454-1783161878=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <743237dc-a022-2c55-a652-68e3d4b3f18d@intel.com>

On Wed, 1 Jul 2026, Imre Deak wrote:
> Add KUnit tests for DP link fallback selection across eDP, SST, and MST.
> Verify that the fallback logic properly selects the maximum allowed
> configuration, iterates through allowed configurations, and disables
> failed configs as expected.
>
> These tests include UHBR vs. non-UHBR conditions, MST vs. SST mode,
> and validate that subsequent fallback selections respect the updated
> allowed configuration mask.
>
> v2:
> - Rebase on changes using a filter object instead of a mask of
>  configuration indices.
> - Rebase on changes using an iteration object.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
> .../i915/display/tests/intel_dp_link_test.c   | 318 ++++++++++++++++++
> 1 file changed, 318 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> index 43283245ad037..14d749962b0ed 100644
> --- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> +++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> @@ -1001,6 +1001,319 @@ static void intel_dp_link_caps_test_update_params_expand_disable_random(struct k
> 		test_update_params_expand_random(test, true);
> }
>
> +/*
> + * TEST: Fallback sequence
> + * -----------------------

Same comment as in PATCH 32/34.

> + * Verify the eDP fallback logic to set the maximum supported configuration
> + * as a preference.
> + *
> + * For DP SST and MST verify fallback selection from the connector's
> + * maximum configuration and iteration of the resulting allowed
> + * configurations.
> + */
> +static void intel_dp_link_test_fallback_for_edp(struct kunit *test)
> +{
> +	struct test_ctx *ctx = test->priv;
> +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> +	struct test_config_table expected_table =
> +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
> +					  LINK_TEST_MAX_LANE_COUNT);
> +	struct intel_digital_port *dig_port = &ctx->dev.dig_port;
> +	const struct intel_dp_link_training_test_ops *lt_ops =
> +		ctx->link_training_ops;
> +	const struct intel_dp_link_caps_test_ops *lc_ops =
> +		ctx->link_caps_ops;
> +	struct intel_dp_link_config min_config = {
> +		.rate = expected_table.rates.entries[0],
> +		.lane_count = 1,
> +	};
> +	struct intel_dp_link_config max_config = {
> +		.rate = expected_table.rates.entries[expected_table.rates.size - 1],
> +		.lane_count = LINK_TEST_MAX_LANE_COUNT,
> +	};
> +	struct intel_dp_link_caps_order order;
> +	struct intel_dp_link_config iter_config;
> +	struct intel_dp_link_caps_iter iter;
> +	int fallback_err;
> +
> +	dig_port->base.type = INTEL_OUTPUT_EDP;
> +	ctx->dev.dig_port.dp.use_max_params = false;
> +
> +	update_link_caps_and_verify(&expected_table, link_caps, true);
> +
> +	order = lc_ops->connector_compute_order(&ctx->dev.connector);
> +
> +	lc_ops->iter_start(&iter, link_caps, order, INTEL_DP_LINK_CAPS_FILTER_ALL);
> +	for_each_dp_link_config(&iter, &iter_config)
> +		break;
> +	lc_ops->iter_end(&iter);
> +
> +	KUNIT_EXPECT_FALSE(test, ctx->dev.dig_port.dp.use_max_params);
> +	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config, &min_config));
> +
> +	ctx->dev.crtc_state.output_types = BIT(dig_port->base.type);
> +	ctx->dev.crtc_state.port_clock = min_config.rate;
> +	ctx->dev.crtc_state.lane_count = min_config.lane_count;
> +
> +	fallback_err = lt_ops->get_fallback_values(&ctx->dev.dig_port.dp, &ctx->dev.crtc_state);
> +	KUNIT_EXPECT_EQ(test, fallback_err, 0);
> +
> +	/* The fallback should've changed the order. */
> +	order = lc_ops->connector_compute_order(&ctx->dev.connector);
> +
> +	lc_ops->iter_start(&iter, link_caps, order, INTEL_DP_LINK_CAPS_FILTER_ALL);
> +	for_each_dp_link_config(&iter, &iter_config)
> +		break;
> +	lc_ops->iter_end(&iter);
> +
> +	KUNIT_EXPECT_TRUE(test, ctx->dev.dig_port.dp.use_max_params);
> +	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config, &max_config));
> +}
> +
> +static bool test_fallback_from_target(struct test_config_table *expected_table,
> +				      enum intel_output_type output_type, int max_rate,
> +				      const struct intel_dp_link_config *expected_target_config,
> +				      const struct intel_dp_link_config *expected_fallback_config)
> +{
> +	struct kunit *test = expected_table->test;
> +	struct test_ctx *ctx = test->priv;
> +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> +	struct intel_dp_link_config iter_config;
> +	const struct intel_dp_link_training_test_ops *lt_ops =
> +		ctx->link_training_ops;
> +	const struct intel_dp_link_caps_test_ops *lc_ops =
> +		ctx->link_caps_ops;
> +	/* Modify default order direction for max config lookup. */
> +	struct intel_dp_link_caps_order fallback_order =
> +		lc_ops->connector_fallback_order(ctx->dev.connector.mst.dp);
> +	struct intel_dp_link_caps_iter iter;
> +	int expected_fallback_err = 0;
> +	int fallback_err;
> +
> +	/* Get the max connector config, optionally filtered to the max_rate limit. */
> +	lc_ops->iter_start(&iter, link_caps, fallback_order, INTEL_DP_LINK_CAPS_FILTER_ALL);
> +	for_each_dp_link_config(&iter, &iter_config)
> +		if (max_rate == 0 || iter_config.rate <= max_rate)
> +			break;
> +	lc_ops->iter_end(&iter);
> +
> +	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config,
> +						   expected_target_config));
> +	KUNIT_EXPECT_FALSE(test, link_configs_match(&iter_config,
> +						    &INTEL_DP_LINK_CONFIG_NULL));
> +
> +	ctx->dev.crtc_state.output_types = BIT(output_type);
> +	ctx->dev.crtc_state.port_clock = expected_target_config->rate;
> +	ctx->dev.crtc_state.lane_count = expected_target_config->lane_count;
> +
> +	if (link_configs_match(expected_fallback_config, &INTEL_DP_LINK_CONFIG_NULL))
> +		expected_fallback_err = -1;
> +
> +	fallback_err = lt_ops->get_fallback_values(&ctx->dev.dig_port.dp, &ctx->dev.crtc_state);
> +	KUNIT_EXPECT_EQ(test, fallback_err, expected_fallback_err);
> +
> +	if (!fallback_err) {
> +		/*
> +		 * NOTE: This test does not verify any implied fallback
> +		 * target selection.
> +		 *
> +		 * The current driver behavior may still select a fallback
> +		 * configuration indirectly via max_limits, but that is an
> +		 * implementation artifact rather than part of the intended
> +		 * fallback API behavior, and is therefore not verified here.
> +		 *
> +		 * Instead, the effect of the fallback logic is verified by
> +		 * checking that the failed target configuration is disabled.
> +		 * Selecting the next target configuration from the remaining
> +		 * allowed configurations belongs to the modeset link target
> +		 * selection logic.
> +		 */
> +		add_config(test, &expected_table->disabled_configs,
> +			   expected_target_config);
> +	}
> +
> +	verify_link_caps(expected_table, link_caps);
> +
> +	return !fallback_err;
> +}
> +
> +static const struct link_config_set *
> +get_target_configs_for_output_type(struct kunit *test,
> +				   enum intel_output_type output_type)
> +{
> +	switch (output_type) {
> +	case INTEL_OUTPUT_DDI:
> +	case INTEL_OUTPUT_DP:
> +	case INTEL_OUTPUT_EDP:
> +		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE];
> +	case INTEL_OUTPUT_DP_MST:
> +		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_BW];
> +	default:
> +		KUNIT_FAIL_AND_ABORT(test, "Missing output type: %d", output_type);
> +
> +	}
> +}
> +
> +static const struct link_config_set *
> +get_fallback_configs_for_output_type(struct kunit *test,
> +				     enum intel_output_type output_type)
> +{
> +	switch (output_type) {
> +	case INTEL_OUTPUT_DDI:
> +	case INTEL_OUTPUT_DP:
> +	case INTEL_OUTPUT_EDP:
> +		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE];
> +	case INTEL_OUTPUT_DP_MST:
> +		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_BW];
> +	default:
> +		KUNIT_FAIL_AND_ABORT(test, "Missing output type: %d", output_type);
> +
> +	}
> +}
> +
> +static bool output_type_allows_uhbr_fallback(enum intel_output_type output_type)
> +{
> +	return output_type == INTEL_OUTPUT_DP_MST;
> +}
> +
> +static void assert_config_is_supported(const struct test_config_table *expected_table,
> +				       const struct intel_dp_link_config *config)
> +{
> +	struct kunit *test = expected_table->test;
> +
> +	KUNIT_ASSERT_TRUE(test, has_rate(&expected_table->rates, config->rate));
> +	KUNIT_ASSERT_LE(test, config->lane_count, expected_table->max_lane_count);
> +}
> +
> +static bool get_fallback_config(const struct test_config_table *expected_table,
> +				enum intel_output_type output_type,
> +				const struct intel_dp_link_config *target_config,
> +				struct intel_dp_link_config *fallback_config)
> +{
> +	struct kunit *test = expected_table->test;
> +	const struct link_config_set *config_set =
> +		get_fallback_configs_for_output_type(test, output_type);
> +	int i;
> +
> +	i = lookup_config(config_set, target_config);
> +	KUNIT_ASSERT_GE(test, i, 0);
> +
> +	for (i--; i >= 0; i--) {

For me it would read easier with being slightly more explicit, eg.:

KUNIT_ASSERT_GE(test, i, 0);
if (i == 0)
 	return false;

i--;

for (; i >= 0; i--) {

But that's a matter of opinion I guess. Anyways:

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> +		const struct intel_dp_link_config *config =
> +			&config_set->entries[i];
> +
> +		if (output_type_allows_uhbr_fallback(output_type) ||
> +		    (drm_dp_is_uhbr_rate(target_config->rate) ==
> +		     drm_dp_is_uhbr_rate(config->rate))) {
> +			assert_config_is_supported(expected_table, config);
> +			*fallback_config = *config;
> +
> +			return true;
> +		}
> +	}
> +
> +	return false;
> +}
> +
> +static bool get_target_config(const struct test_config_table *expected_table,
> +			      enum intel_output_type output_type,
> +			      int max_rate,
> +			      struct intel_dp_link_config *target)
> +{
> +	struct kunit *test = expected_table->test;
> +	const struct link_config_set *config_set =
> +		get_target_configs_for_output_type(test, output_type);
> +	int i;
> +
> +	for (i = config_set->size - 1; i >= 0; i--) {
> +		const struct intel_dp_link_config *config =
> +			&config_set->entries[i];
> +
> +		if (config->rate <= max_rate) {
> +			assert_config_is_supported(expected_table, config);
> +			*target = *config;
> +
> +			return true;
> +		}
> +	}
> +
> +	return false;
> +}
> +
> +static void test_fallback_seq(struct kunit *test,
> +			      enum intel_output_type output_type,
> +			      bool uhbr)
> +{
> +	struct test_ctx *ctx = test->priv;
> +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> +	struct test_config_table expected_table =
> +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
> +					  LINK_TEST_MAX_LANE_COUNT);
> +	struct intel_digital_port *dig_port = &ctx->dev.dig_port;
> +	struct intel_dp_link_config fallback_config = {};
> +	struct intel_dp_link_config target_config;
> +	int fallback_count = 0;
> +	bool target_found;
> +	int max_rate;
> +
> +	if (uhbr)
> +		max_rate = expected_table.rates.entries[expected_table.rates.size - 1];
> +	else
> +		max_rate = 810000;
> +
> +	dig_port->base.type = output_type;
> +	ctx->dev.dig_port.dp.use_max_params = false;
> +
> +	update_link_caps_and_verify(&expected_table, link_caps, true);
> +
> +	/* Get the initial target config. */
> +	target_found = get_target_config(&expected_table, output_type,
> +					 max_rate, &target_config);
> +	KUNIT_ASSERT_TRUE(test, target_found);
> +
> +	for (;;) {
> +		/* Also test the case where no fallback is available. */
> +		if (!get_fallback_config(&expected_table, output_type,
> +					 &target_config, &fallback_config))
> +			fallback_config = INTEL_DP_LINK_CONFIG_NULL;
> +
> +		if (!test_fallback_from_target(&expected_table, output_type, max_rate,
> +					       &target_config, &fallback_config))
> +			break;
> +
> +		/*
> +		 * The fallback changed the max rate allowed for the next
> +		 * target.
> +		 */
> +		max_rate = fallback_config.rate;
> +
> +		/* Simply select the fallback config as the next target. */
> +		target_config = fallback_config;
> +
> +		fallback_count++;
> +		KUNIT_ASSERT_LT(test, fallback_count, LINK_TEST_MAX_CONFIGS);
> +	}
> +}
> +
> +static void intel_dp_link_test_fallback_for_sst_max_non_uhbr(struct kunit *test)
> +{
> +	test_fallback_seq(test, INTEL_OUTPUT_DP, false);
> +}
> +
> +static void intel_dp_link_test_fallback_for_sst_max_uhbr(struct kunit *test)
> +{
> +	test_fallback_seq(test, INTEL_OUTPUT_DP, true);
> +}
> +
> +static void intel_dp_link_test_fallback_for_mst(struct kunit *test)
> +{
> +	struct test_ctx *ctx = test->priv;
> +
> +	ctx->dev.connector.mst.dp = &ctx->dev.dig_port.dp;
> +
> +	test_fallback_seq(test, INTEL_OUTPUT_DP_MST, true);
> +}
> +
> static struct kunit_case intel_dp_link_test_cases[] = {
> 	KUNIT_CASE(intel_dp_link_caps_test_baseline),
>
> @@ -1019,6 +1332,11 @@ static struct kunit_case intel_dp_link_test_cases[] = {
> 	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_random),
> 	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_disable_random),
>
> +	KUNIT_CASE(intel_dp_link_test_fallback_for_edp),
> +	KUNIT_CASE(intel_dp_link_test_fallback_for_sst_max_non_uhbr),
> +	KUNIT_CASE(intel_dp_link_test_fallback_for_sst_max_uhbr),
> +	KUNIT_CASE(intel_dp_link_test_fallback_for_mst),
> +
> 	{}
> };
>
> -- 
> 2.49.1
>
>
--8323329-62723454-1783161878=:605841--

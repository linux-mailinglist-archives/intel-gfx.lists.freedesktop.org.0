Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bj9sFK/lSGpgvAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:51:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B28597075DC
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:51:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="oFj7/wM4";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E7010E6B1;
	Sat,  4 Jul 2026 10:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4A510E6AE;
 Sat,  4 Jul 2026 10:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783162284; x=1814698284;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=7zMDx/+1PsUn4mK1JF+cOwgbxeWHsTT61+yEDHpGC5Y=;
 b=oFj7/wM4HuyRSwrcByEk1dL0QaF7y1p98sKyK9UQ8CeFzwFWXebj7nyp
 SkWvhre7WiuS3ZnRDZzPeJjalINAFfILjuO5iXi8adfW08OmCEP/7m1dm
 pMtVGC21h2qblA3uwMOkOutIthLsRan45qChmdEkyuaWf00y9L2CX8Vqz
 ioCrDHTZbhzPt3NXBy3PNwo8I7Nr7HNQiVqa01OzPsN0WMfyvL7wyKT/3
 AQrjbTyCRyco1MhC85R5MjwZBNar2zsQha5G0hgZH8d0qSlHIkyeZHZw1
 5/pPheBNFwa2dBmsHnSbiioNxAeypGXdAcJkzVgSypQj1tz7pSsbL705K Q==;
X-CSE-ConnectionGUID: 6leMaJibR9S4jf/8igApSw==
X-CSE-MsgGUID: WMoAVT6NSGmJdP//PzubPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11836"; a="95382555"
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="95382555"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:51:24 -0700
X-CSE-ConnectionGUID: RNYvhJgbR/ak16O7baBPew==
X-CSE-MsgGUID: UBQEVHneTNWlRXHI5JZeVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="257172284"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:51:22 -0700
Date: Sat, 4 Jul 2026 12:51:20 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Imre Deak <imre.deak@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 33/34] drm/i915/kunit: DP link: add update config tests
In-Reply-To: <20260701153204.4124150-34-imre.deak@intel.com>
Message-ID: <54004525-f3cc-614c-5edf-db3259137594@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-34-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-969043763-1783160713=:605841"
Content-ID: <e94798d5-5eba-5b37-d037-c09799909129@intel.com>
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
X-Rspamd-Queue-Id: B28597075DC

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-969043763-1783160713=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <385de5b9-a1b1-cf29-9e1a-d486676eeb50@intel.com>

On Wed, 1 Jul 2026, Imre Deak wrote:
> Add KUnit tests for link_caps updates shrinking or expanding the
> supported rates and lane counts.
>
> The tests also cover updates with disabled configurations, including
> random shrink and expand sequences, to verify that disabled state,
> allowed configurations, ordering, and max limits stay consistent across
> updates.
>
> v2: Remove test cases for the now unused merge update mode.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
> .../i915/display/tests/intel_dp_link_test.c   | 780 ++++++++++++++++++
> 1 file changed, 780 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> index 1dc5bf6888990..43283245ad037 100644
> --- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> +++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> @@ -61,12 +61,29 @@ struct link_config_set {
> 	int size;
> };
>
> +struct test_config_table {
> +	struct kunit *test;
> +
> +	struct link_rate_set rates;
> +	int max_lane_count;
> +	struct link_config_set disabled_configs;
> +};
> +
> static const int standard_dp_link_rates[] = {
> 	162000, 270000, 540000, 810000, 1000000, 1350000, 2000000
> };
>
> #define LINK_TEST_NUM_STANDARD_RATES (ARRAY_SIZE(standard_dp_link_rates))
>
> +#define INIT_STANDARD_TABLE(__test, __num_rates, __max_lane_count) { \
> +	.test = (__test), \
> +	.rates = { \
> +		.entries = standard_dp_link_rates, \
> +		.size = (__num_rates), \
> +	}, \
> +	.max_lane_count = (__max_lane_count), \
> +}
> +
> static const struct link_config_set standard_dp_link_configs[] = {
> 	[INTEL_DP_LINK_CAPS_ORDER_KEY_BW] = {                        /* MBps    PBN    */
> 		.entries = {
> @@ -159,12 +176,56 @@ static const struct link_config_set standard_dp_link_configs[] = {
> 	},
> };
>
> +static int lookup_rate(const struct link_rate_set *rate_set, int rate)
> +{
> +	int i;
> +
> +	for (i = 0; i < rate_set->size; i++)
> +		if (rate_set->entries[i] == rate)
> +			return i;
> +
> +	return -1;
> +}
> +
> +static bool has_rate(const struct link_rate_set *rate_set, int rate)
> +{
> +	return lookup_rate(rate_set, rate) >= 0;
> +}
> +
> static bool link_configs_match(const struct intel_dp_link_config *a,
> 			       const struct intel_dp_link_config *b)
> {
> 	return a->rate == b->rate && a->lane_count == b->lane_count;
> }
>
> +static int lookup_config(const struct link_config_set *config_set,
> +			 const struct intel_dp_link_config *config)
> +{
> +	int i;
> +
> +	for (i = 0; i < config_set->size; i++)
> +		if (link_configs_match(&config_set->entries[i], config))
> +			return i;
> +
> +	return -1;
> +}
> +
> +static bool has_config(const struct link_config_set *config_set,
> +		       const struct intel_dp_link_config *config)
> +{
> +	return lookup_config(config_set, config) >= 0;
> +}
> +
> +static void add_config(struct kunit *test,
> +		       struct link_config_set *config_set,
> +		       const struct intel_dp_link_config *config)
> +{
> +	KUNIT_ASSERT_LT(test, config_set->size, ARRAY_SIZE(config_set->entries));
> +
> +	config_set->entries[config_set->size] = *config;
> +	config_set->size++;
> +}
> +
> static const struct intel_dp_link_caps_order config_orders[] = {
> 	{
> 		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
> @@ -236,9 +297,728 @@ static void intel_dp_link_caps_test_baseline(struct kunit *test)
> 		baseline_test_for_order(test, link_caps, config_orders[i]);
> }
>
> +static int get_num_configs(int num_rates, int max_lane_count)
> +{
> +	return num_rates * LINK_TEST_NUM_LANE_CONFIGS(max_lane_count);
> +}
> +
> +static int rand_in_range(struct test_ctx *ctx, int min, int max)
> +{
> +	return min + (prandom_u32_state(&ctx->rnd) % (max - min + 1));
> +}
> +
> +/*
> + * TEST: Update reset
> + * ------------------

Same comment as in PATCH 32/34.

> + * Verify that resetting link_caps with the DP standard rates/lane
> + * counts updates the configuration table accordingly for all
> + * combinations.
> + */
> +static void verify_bw_asc_config_order(struct kunit *test,
> +				       const struct intel_dp_link_config *last_config,
> +				       const struct intel_dp_link_config *config)
> +{
> +	int config_bw = drm_dp_max_dprx_data_rate(config->rate,
> +						  config->lane_count);
> +	int last_config_bw = drm_dp_max_dprx_data_rate(last_config->rate,
> +							  last_config->lane_count);
> +
> +	KUNIT_EXPECT_GE(test, config_bw, last_config_bw);
> +	if (config_bw == last_config_bw)
> +		KUNIT_EXPECT_GT(test, config->rate, last_config->rate);
> +}
> +
> +static void verify_bw_desc_config_order(struct kunit *test,
> +					const struct intel_dp_link_config *last_config,
> +					const struct intel_dp_link_config *config)
> +{
> +	int config_bw = drm_dp_max_dprx_data_rate(config->rate,
> +						  config->lane_count);
> +	int last_config_bw = drm_dp_max_dprx_data_rate(last_config->rate,
> +							  last_config->lane_count);
> +
> +	KUNIT_EXPECT_LE(test, config_bw, last_config_bw);
> +	if (config_bw == last_config_bw)
> +		KUNIT_EXPECT_LT(test, config->rate, last_config->rate);
> +}
> +
> +static void verify_rate_lane_asc_config_order(struct kunit *test,
> +					      const struct intel_dp_link_config *last_config,
> +					      const struct intel_dp_link_config *config)
> +{
> +	KUNIT_EXPECT_GE(test, config->rate, last_config->rate);
> +	if (config->rate == last_config->rate)
> +		KUNIT_EXPECT_GT(test, config->lane_count, last_config->lane_count);
> +}
> +
> +static void verify_rate_lane_desc_config_order(struct kunit *test,
> +					       const struct intel_dp_link_config *last_config,
> +					       const struct intel_dp_link_config *config)
> +{
> +	KUNIT_EXPECT_LE(test, config->rate, last_config->rate);
> +	if (config->rate == last_config->rate)
> +		KUNIT_EXPECT_LT(test, config->lane_count, last_config->lane_count);
> +}
> +
> +static void verify_config_order(struct kunit *test,
> +				struct intel_dp_link_caps_order config_order,
> +				const struct intel_dp_link_config *last_config,
> +				const struct intel_dp_link_config *config)
> +{
> +	switch (config_order.key) {
> +	case INTEL_DP_LINK_CAPS_ORDER_KEY_BW:
> +		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_ASC)
> +			verify_bw_asc_config_order(test, last_config, config);
> +		else
> +			verify_bw_desc_config_order(test, last_config, config);
> +		break;
> +	case INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE:
> +		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_ASC)
> +			verify_rate_lane_asc_config_order(test, last_config, config);
> +		else
> +			verify_rate_lane_desc_config_order(test, last_config, config);
> +		break;
> +	default:
> +		KUNIT_FAIL_AND_ABORT(test, "Missing order key: %d", config_order.key);
> +	}
> +}
> +
> +static int expected_num_configs(const struct test_config_table *expected_table,
> +				const struct intel_dp_link_config *max_limits)
> +{
> +	int num_configs = 0;
> +	int lane_count;
> +	int rate_idx;
> +
> +	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
> +		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
> +			struct intel_dp_link_config config = {
> +				.rate = expected_table->rates.entries[rate_idx],
> +				.lane_count = lane_count,
> +			};
> +
> +			if (config.rate > max_limits->rate ||
> +			    config.lane_count > max_limits->lane_count)
> +				continue;
> +
> +			if (has_config(&expected_table->disabled_configs, &config))
> +				continue;
> +
> +			num_configs++;
> +		}
> +	}
> +
> +	return num_configs;
> +}
> +
> +static void
> +verify_link_caps_for_order(const struct test_config_table *expected_table,
> +			   struct intel_dp_link_caps *link_caps,
> +			   struct intel_dp_link_caps_order config_order,
> +			   const struct intel_dp_link_config *max_limits)
> +{
> +	struct kunit *test = expected_table->test;
> +	struct test_ctx *ctx = test->priv;
> +	const struct intel_dp_link_caps_test_ops *ops =
> +		ctx->link_caps_ops;
> +	struct intel_dp_link_config expected_max_bw_config = {};
> +	struct intel_dp_link_config actual_max_bw_config;
> +	struct intel_dp_link_config last_config = {};
> +	struct intel_dp_link_config old_max_limits;
> +	struct intel_dp_link_config iter_config;
> +	struct intel_dp_link_caps_iter iter;
> +	int num_actual_configs = 0;
> +	int max_bw = 0;
> +
> +	ops->get_max_limits(link_caps, &old_max_limits);
> +	ops->set_max_limits(link_caps, max_limits);
> +
> +	ops->iter_start(&iter, link_caps, config_order, INTEL_DP_LINK_CAPS_FILTER_ALL);
> +	for_each_dp_link_config(&iter, &iter_config) {
> +		int bw;
> +
> +		KUNIT_EXPECT_LE(test, iter_config.rate, max_limits->rate);
> +		KUNIT_EXPECT_LE(test, iter_config.lane_count, max_limits->lane_count);
> +
> +		num_actual_configs++;
> +
> +		/*
> +		 * Verify the config's rate/lane-count values and its ordering relative
> +		 * to the previous config.
> +		 */
> +		if (last_config.rate)
> +			verify_config_order(test, config_order, &last_config, &iter_config);
> +		last_config = iter_config;
> +
> +		KUNIT_EXPECT_TRUE(test, has_rate(&expected_table->rates,
> +						 iter_config.rate));
> +		KUNIT_EXPECT_LE(test, iter_config.lane_count,
> +				      expected_table->max_lane_count);
> +		KUNIT_EXPECT_TRUE(test, is_power_of_2(iter_config.lane_count));
> +
> +		/* Verify the config's disabled state */
> +		KUNIT_EXPECT_FALSE(test, has_config(&expected_table->disabled_configs,
> +						    &iter_config));
> +
> +		/*
> +		 * Update the max limits for allowed configs, verified at the
> +		 * end for the whole config table.
> +		 */
> +
> +		bw = drm_dp_max_dprx_data_rate(iter_config.rate, iter_config.lane_count);
> +		if (bw > max_bw ||
> +		    (bw == max_bw && iter_config.rate > expected_max_bw_config.rate)) {
> +			max_bw = bw;
> +			expected_max_bw_config = iter_config;
> +		}
> +	}
> +	ops->iter_end(&iter);
> +
> +	KUNIT_EXPECT_EQ(test, num_actual_configs, expected_num_configs(expected_table, max_limits));
> +
> +	ops->get_max_bw_config(link_caps, &actual_max_bw_config);
> +	KUNIT_EXPECT_TRUE(test, link_configs_match(&expected_max_bw_config,
> +						   &actual_max_bw_config));
> +
> +	KUNIT_ASSERT_TRUE(test, ops->set_max_limits(link_caps, &old_max_limits));
> +}
> +
> +static bool max_limits_valid(const struct test_config_table *expected_table,
> +			     const struct intel_dp_link_config *max_limits)
> +{
> +	int lane_count;
> +	int rate_idx;
> +
> +	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
> +		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
> +			struct intel_dp_link_config config = {
> +				.rate = expected_table->rates.entries[rate_idx],
> +				.lane_count = lane_count,
> +			};
> +
> +			if (has_config(&expected_table->disabled_configs, &config))
> +				continue;
> +
> +			if (config.rate <= max_limits->rate &&
> +			    config.lane_count <= max_limits->lane_count)
> +				return true;
> +		}
> +	}
> +
> +	return false;
> +}
> +
> +static void get_max_limits(const struct test_config_table *expected_table,
> +			   struct intel_dp_link_config *max_limits)
> +{
> +	int lane_count;
> +	int rate_idx;
> +
> +	max_limits->rate = 0;
> +	max_limits->lane_count = 0;
> +
> +	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
> +		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
> +			struct intel_dp_link_config config = {
> +				.rate = expected_table->rates.entries[rate_idx],
> +				.lane_count = lane_count,
> +			};
> +
> +			if (has_config(&expected_table->disabled_configs, &config))
> +				continue;
> +
> +			max_limits->rate = max(max_limits->rate, config.rate);
> +			max_limits->lane_count = max(max_limits->lane_count, config.lane_count);
> +		}
> +	}
> +}
> +
> +static void verify_link_caps(const struct test_config_table *expected_table,
> +			     struct intel_dp_link_caps *link_caps)
> +{
> +	struct kunit *test = expected_table->test;
> +	struct test_ctx *ctx = test->priv;
> +	const struct intel_dp_link_caps_test_ops *ops = ctx->link_caps_ops;
> +	struct intel_dp_link_config max_limits;
> +	int i;
> +
> +	get_max_limits(expected_table, &max_limits);
> +
> +	for (i = 0; i < ARRAY_SIZE(config_orders); i++) {
> +		int lane_count;
> +		int rate_idx;
> +
> +		verify_link_caps_for_order(expected_table, link_caps, config_orders[i], &max_limits);
> +		/*
> +		 * Verify iteration after setting the max limits to each
> +		 * configurations.
> +		 */
> +		for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
> +			for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
> +				struct intel_dp_link_config config = {
> +					.rate = expected_table->rates.entries[rate_idx],
> +					.lane_count = lane_count,
> +				};
> +
> +				if (!max_limits_valid(expected_table, &config)) {
> +					/* Verify that invalid max limits are rejected. */
> +					KUNIT_EXPECT_FALSE(test, ops->set_max_limits(link_caps, &config));
> +
> +					continue;
> +				}
> +
> +				verify_link_caps_for_order(expected_table, link_caps, config_orders[i],
> +							   &config);
> +			}
> +		}
> +	}
> +}
> +
> +static void update_link_caps_and_verify(struct test_config_table *expected_table,
> +					struct intel_dp_link_caps *link_caps,
> +					bool reset)
> +{
> +	struct kunit *test = expected_table->test;
> +	struct test_ctx *ctx = test->priv;
> +	const struct intel_dp_link_caps_test_ops *ops =
> +		ctx->link_caps_ops;
> +	bool link_params_changed;
> +
> +	link_params_changed = ops->update(link_caps,
> +					  expected_table->rates.entries,
> +					  expected_table->rates.size,
> +					  expected_table->max_lane_count,
> +					  reset);
> +	KUNIT_EXPECT_TRUE(test, !reset || link_params_changed);
> +
> +	/*
> +	 * ops->update() re-enables all configurations when called with
> +	 * reset=true, or changed link parameters.
> +	 */
> +	if (link_params_changed)
> +		expected_table->disabled_configs.size = 0;
> +
> +	verify_link_caps(expected_table, link_caps);
> +}
> +
> +static void intel_dp_link_caps_test_update_reset(struct kunit *test)
> +{
> +	struct test_ctx *ctx = test->priv;
> +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> +	int max_lane_count;
> +	int num_rates;
> +
> +	for (max_lane_count = 1;
> +	     max_lane_count <= LINK_TEST_MAX_LANE_COUNT;
> +	     max_lane_count <<= 1) {
> +		for (num_rates = 1;
> +		     num_rates <= LINK_TEST_NUM_STANDARD_RATES;
> +		     num_rates++) {

Here we break line after each statement, while in eg. verify_link_caps()
we kept all of them in one line. Is it possible to unify the style, or
here we are hitting hard limit on line's length?

> +			struct test_config_table expected_table =
> +				INIT_STANDARD_TABLE(test, num_rates,
> +							     max_lane_count);
> +
> +			update_link_caps_and_verify(&expected_table, link_caps, true);
> +		}
> +	}
> +}
> +
> +/*
> + * TEST: Update shrink and expand
> + * ------------------------------

Same comment as in PATCH 32/34.

> + * Verify that removing or adding supported rates/lane counts updates
> + * the configuration table accordingly.
> + */
> +static void disable_configs_and_verify(struct kunit *test,
> +				       struct intel_dp_link_caps *link_caps,
> +				       struct test_config_table *expected_table,
> +				       const struct link_config_set *config_set)
> +{
> +	struct test_ctx *ctx = test->priv;
> +	const struct intel_dp_link_caps_test_ops *ops =
> +		ctx->link_caps_ops;
> +	int i;
> +
> +	for (i = 0; i < config_set->size; i++) {
> +		KUNIT_ASSERT_FALSE(test, has_config(&expected_table->disabled_configs,
> +						    &config_set->entries[i]));
> +		add_config(test, &expected_table->disabled_configs, &config_set->entries[i]);
> +
> +		KUNIT_ASSERT_TRUE(test, ops->disable_config(link_caps, &config_set->entries[i]));
> +
> +		verify_link_caps(expected_table, link_caps);
> +	}
> +}
> +
> +static void disable_configs_for_shrink_and_verify(struct test_config_table *expected_table,
> +						  struct intel_dp_link_caps *link_caps)
> +{
> +	struct kunit *test = expected_table->test;
> +	struct link_config_set config_set = {};
> +	struct intel_dp_link_config max_config;
> +
> +	/*
> +	 * When configs shrink disable the config with the
> +	 * second-highest rate,lane params, so the disabled config

nit: s/rate,/rate, /

> +	 * stays around after the configs got shrunk.
> +	 */
> +	KUNIT_ASSERT_GE(test, expected_table->rates.size, 2);
> +	KUNIT_ASSERT_GE(test, expected_table->max_lane_count, 2);
> +
> +	max_config.rate = expected_table->rates.entries[expected_table->rates.size - 2];
> +	max_config.lane_count = expected_table->max_lane_count >> 1;
> +
> +	add_config(test, &config_set, &max_config);
> +	disable_configs_and_verify(test, link_caps, expected_table,
> +			&config_set);
> +}
> +
> +static void disable_configs_for_expand_and_verify(struct test_config_table *expected_table,
> +						  struct intel_dp_link_caps *link_caps)
> +{
> +	struct kunit *test = expected_table->test;
> +	struct link_config_set config_set = {};
> +	struct intel_dp_link_config max_config;
> +
> +	KUNIT_ASSERT_GE(test, expected_table->rates.size, 1);
> +
> +	max_config.rate = expected_table->rates.entries[expected_table->rates.size - 1];
> +	max_config.lane_count = expected_table->max_lane_count;
> +
> +	add_config(test, &config_set, &max_config);
> +	disable_configs_and_verify(test, link_caps, expected_table,
> +				   &config_set);
> +}
> +
> +static void get_nth_rate_lane_config(const struct test_config_table *expected_table, int n,
> +				     struct intel_dp_link_config *config)
> +{
> +	int num_lane_configs = LINK_TEST_NUM_LANE_CONFIGS(expected_table->max_lane_count);
> +	int rate_idx = n / num_lane_configs;
> +	int lane_count_exp = n % num_lane_configs;
> +
> +	config->rate = expected_table->rates.entries[rate_idx];
> +	config->lane_count = 1 << lane_count_exp;
> +}
> +
> +static void test_update_rates_shrink(struct kunit *test, bool disable_configs)
> +{
> +	struct test_ctx *ctx = test->priv;
> +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> +	struct test_config_table expected_table =
> +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
> +					  LINK_TEST_MAX_LANE_COUNT);
> +
> +	update_link_caps_and_verify(&expected_table, link_caps, true);
> +
> +	while (expected_table.rates.size > 1) {
> +		if (disable_configs)
> +			disable_configs_for_shrink_and_verify(&expected_table, link_caps);
> +
> +		expected_table.rates.size--;
> +
> +		update_link_caps_and_verify(&expected_table, link_caps, false);
> +	}
> +}
> +
> +static void intel_dp_link_caps_test_update_rates_shrink(struct kunit *test)
> +{
> +	test_update_rates_shrink(test, false);
> +}
> +
> +static void intel_dp_link_caps_test_update_rates_shrink_disable(struct kunit *test)
> +{
> +	test_update_rates_shrink(test, true);
> +}
> +
> +static void test_update_rates_expand(struct kunit *test, bool disable_configs)
> +{
> +	struct test_ctx *ctx = test->priv;
> +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> +	struct test_config_table expected_table =
> +		INIT_STANDARD_TABLE(test, 1, LINK_TEST_MAX_LANE_COUNT);
> +
> +	update_link_caps_and_verify(&expected_table, link_caps, true);
> +
> +	while (expected_table.rates.size < LINK_TEST_NUM_STANDARD_RATES) {
> +		if (disable_configs)
> +			disable_configs_for_expand_and_verify(&expected_table, link_caps);
> +
> +		expected_table.rates.size++;
> +
> +		update_link_caps_and_verify(&expected_table, link_caps, false);
> +	}
> +}
> +
> +static void intel_dp_link_caps_test_update_rates_expand(struct kunit *test)
> +{
> +	test_update_rates_expand(test, false);
> +}
> +
> +static void intel_dp_link_caps_test_update_rates_expand_disable(struct kunit *test)
> +{
> +	test_update_rates_expand(test, true);
> +}
> +
> +static void test_update_lanes_shrink(struct kunit *test, bool disable_configs)
> +{
> +	struct test_ctx *ctx = test->priv;
> +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> +	struct test_config_table expected_table =
> +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
> +					  LINK_TEST_MAX_LANE_COUNT);
> +
> +	update_link_caps_and_verify(&expected_table, link_caps, true);
> +
> +	while (expected_table.max_lane_count > 1) {
> +		if (disable_configs)
> +			disable_configs_for_shrink_and_verify(&expected_table, link_caps);
> +
> +		expected_table.max_lane_count >>= 1;
> +
> +		update_link_caps_and_verify(&expected_table, link_caps, false);
> +	}
> +}
> +
> +static void intel_dp_link_caps_test_update_lanes_shrink(struct kunit *test)
> +{
> +	test_update_lanes_shrink(test, false);
> +}
> +
> +static void intel_dp_link_caps_test_update_lanes_shrink_disable(struct kunit *test)
> +{
> +	test_update_lanes_shrink(test, true);
> +}
> +
> +static void test_update_lanes_expand(struct kunit *test, bool disable_configs)
> +{
> +	struct test_ctx *ctx = test->priv;
> +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> +	struct test_config_table expected_table =
> +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES, 1);
> +
> +	update_link_caps_and_verify(&expected_table, link_caps, true);
> +
> +	while (expected_table.max_lane_count < LINK_TEST_MAX_LANE_COUNT) {
> +		if (disable_configs)
> +			disable_configs_for_expand_and_verify(&expected_table, link_caps);
> +
> +		expected_table.max_lane_count <<= 1;
> +
> +		update_link_caps_and_verify(&expected_table, link_caps, false);
> +	}
> +}
> +
> +static void intel_dp_link_caps_test_update_lanes_expand(struct kunit *test)
> +{
> +	test_update_lanes_expand(test, false);
> +}
> +
> +static void intel_dp_link_caps_test_update_lanes_expand_disable(struct kunit *test)
> +{
> +	test_update_lanes_expand(test, true);
> +}
> +
> +static void disable_random_configs_and_verify(struct test_config_table *expected_table,
> +					      struct intel_dp_link_caps *link_caps)
> +{
> +	struct kunit *test = expected_table->test;
> +	struct test_ctx *ctx = test->priv;
> +	struct link_config_set config_set = {};
> +	u32 disabled_config_mask;
> +	int num_configs;
> +	int i;
> +
> +	num_configs = get_num_configs(expected_table->rates.size,
> +				      expected_table->max_lane_count);
> +	disabled_config_mask = prandom_u32_state(&ctx->rnd) &
> +			       GENMASK_U32(num_configs - 1, 0);
> +
> +	for (i = 0; i < num_configs; i++) {
> +		struct intel_dp_link_config config;
> +
> +		/* At least one config must remain enabled. */
> +		if (expected_table->disabled_configs.size +
> +		    config_set.size + 1 >= num_configs)
> +			break;
> +
> +		if (!(BIT(i) & disabled_config_mask))

Does it make any sense to do:

if (!REG_FIELD_GET(disabled_config_mask, BIT(i)))

> +			continue;
> +
> +		get_nth_rate_lane_config(expected_table, i, &config);
> +		/* Don't disable a config twice. */
> +		if (has_config(&expected_table->disabled_configs, &config))
> +			continue;
> +
> +		add_config(test, &config_set, &config);
> +	}
> +
> +	disable_configs_and_verify(test, link_caps, expected_table,
> +				   &config_set);
> +}
> +
> +static void get_params_shrink_step(struct test_ctx *ctx,
> +				   int num_rates, int max_lane_count,
> +				   int *rates_step, int *lanes_step)
> +{
> +	int shrink_mask;
> +
> +	*rates_step = 0;
> +	*lanes_step = 0;
> +
> +	if (num_rates == 1)
> +		shrink_mask = BIT(0);				/* shrink only lanes */
> +	else if (max_lane_count == 1)
> +		shrink_mask = BIT(1);				/* shrink only rates */
> +	else
> +		shrink_mask = rand_in_range(ctx,
> +					    BIT(0),
> +					    BIT(0) | BIT(1));	/* shrink one or both params */
> +
> +	if (shrink_mask & BIT(1))

here same for REG_FIELD_GET().

> +		*rates_step = rand_in_range(ctx, 1, num_rates - 1);
> +
> +	if (shrink_mask & BIT(0))

ditto.

> +		*lanes_step = rand_in_range(ctx, 1, ilog2(max_lane_count));
> +}
> +
> +static void get_params_expand_step(struct test_ctx *ctx,
> +				   int max_num_rates, int num_rates,
> +				   int max_supported_lane_count, int max_lane_count,
> +				   int *rates_step, int *lanes_step)
> +{
> +	int expand_mask;
> +
> +	*rates_step = 0;
> +	*lanes_step = 0;
> +
> +	if (num_rates == max_num_rates)
> +		expand_mask = BIT(0);				/* expand only lanes */
> +	else if (max_lane_count == max_supported_lane_count)
> +		expand_mask = BIT(1);				/* expand only rates */
> +	else
> +		expand_mask = rand_in_range(ctx,
> +					    BIT(0),
> +					    BIT(0) | BIT(1));	/* expand one or both params */
> +
> +	if (expand_mask & BIT(1))

ditto.

> +		*rates_step = rand_in_range(ctx, 1, max_num_rates - num_rates);
> +
> +	if (expand_mask & BIT(0))

ditto.

> +		*lanes_step = rand_in_range(ctx, 1, ilog2(max_supported_lane_count /
> +							  max_lane_count));
> +}
> +
> +static void test_update_params_shrink_random(struct kunit *test, bool disable_configs)
> +{
> +	struct test_ctx *ctx = test->priv;
> +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> +	struct test_config_table expected_table =
> +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
> +						   LINK_TEST_MAX_LANE_COUNT);
> +
> +	update_link_caps_and_verify(&expected_table, link_caps, true);
> +
> +	while (expected_table.rates.size > 1 || expected_table.max_lane_count > 1) {
> +		int rates_step;
> +		int lanes_step;
> +
> +		if (disable_configs)
> +			disable_random_configs_and_verify(&expected_table, link_caps);
> +
> +		get_params_shrink_step(ctx,
> +				       expected_table.rates.size,
> +				       expected_table.max_lane_count,
> +				       &rates_step, &lanes_step);
> +
> +		expected_table.rates.size -= rates_step;
> +		expected_table.max_lane_count >>= lanes_step;
> +
> +		update_link_caps_and_verify(&expected_table, link_caps, false);
> +	}
> +}
> +
> +static void intel_dp_link_caps_test_update_params_shrink_random(struct kunit *test)
> +{
> +	int i;
> +
> +	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
> +		test_update_params_shrink_random(test, false);
> +}
> +
> +static void intel_dp_link_caps_test_update_params_shrink_disable_random(struct kunit *test)
> +{
> +	int i;
> +
> +	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
> +		test_update_params_shrink_random(test, true);
> +}
> +
> +static void test_update_params_expand_random(struct kunit *test, bool disable_configs)
> +{
> +	struct test_ctx *ctx = test->priv;
> +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> +	struct test_config_table expected_table =
> +		INIT_STANDARD_TABLE(test, 1, 1);
> +
> +	update_link_caps_and_verify(&expected_table, link_caps, true);
> +
> +	while (expected_table.rates.size < LINK_TEST_NUM_STANDARD_RATES ||
> +	       expected_table.max_lane_count < LINK_TEST_MAX_LANE_COUNT) {
> +		int rates_step;
> +		int lanes_step;
> +
> +		if (disable_configs)
> +			disable_random_configs_and_verify(&expected_table, link_caps);
> +
> +		get_params_expand_step(ctx,
> +				       LINK_TEST_NUM_STANDARD_RATES,
> +				       expected_table.rates.size,
> +				       LINK_TEST_MAX_LANE_COUNT,
> +				       expected_table.max_lane_count,
> +				       &rates_step, &lanes_step);
> +
> +		expected_table.rates.size += rates_step;
> +		expected_table.max_lane_count <<= lanes_step;
> +
> +		update_link_caps_and_verify(&expected_table, link_caps, false);
> +	}
> +}
> +
> +static void intel_dp_link_caps_test_update_params_expand_random(struct kunit *test)
> +{
> +	int i;
> +
> +	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
> +		test_update_params_expand_random(test, false);
> +}
> +
> +static void intel_dp_link_caps_test_update_params_expand_disable_random(struct kunit *test)
> +{
> +	int i;
> +
> +	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
> +		test_update_params_expand_random(test, true);
> +}
> +
> static struct kunit_case intel_dp_link_test_cases[] = {
> 	KUNIT_CASE(intel_dp_link_caps_test_baseline),
>
> +	KUNIT_CASE(intel_dp_link_caps_test_update_reset),
> +
> +	KUNIT_CASE(intel_dp_link_caps_test_update_rates_shrink),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_rates_shrink_disable),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_rates_expand),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_rates_expand_disable),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_shrink),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_shrink_disable),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_expand),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_expand_disable),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_params_shrink_random),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_params_shrink_disable_random),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_random),
> +	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_disable_random),
> +

not sure if this newline is superfluous.

With all that addressed:

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> 	{}
> };
>
> -- 
> 2.49.1
>
>
--8323329-969043763-1783160713=:605841--

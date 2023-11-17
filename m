Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 118B37EF605
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 17:18:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E14110E0A7;
	Fri, 17 Nov 2023 16:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D15F10E039;
 Fri, 17 Nov 2023 16:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700237922; x=1731773922;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lD57XpfTgU31ZuhGiV00pXbQqkBxOUmV5u6bLlPWTPg=;
 b=L+94nx1jQTi4Ep2XraHXPTqy3PEI24nsklEBb+6TMgAZ4qwdidU5JMGj
 xdea5I9/KLEmA0bp2zWuoPkqAK5x5qj7H5gSVR5x/HHR/Q+oTDWu4qMjf
 FWC1Sp1JGKQj2gFLYj2XhUMVHPsyK7mfBPFiBHJg8WuTyB9gA5JVspAwI
 kduDRjaspaxYiaNjqJn/eAeCHZpaUlU7kefFXyiV5crc0ibvSPa1FikGq
 n+hnhpsf3pOVjSDmfAYg2394Wjyl/YELjmrCsIzQX3R7P9TRiv6Qsmx07
 J4lDYDR3/fwyEApTd5i92hJsVMkPUHW/L18ZBxAJI3DvBeYO6hWY26fvy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="477538974"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="477538974"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 08:18:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="759219960"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759219960"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 08:18:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 18:18:37 +0200
Date: Fri, 17 Nov 2023 18:18:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZVeSXajJFq5ShoGH@intel.com>
References: <20231117150929.1767227-2-imre.deak@intel.com>
 <20231117152737.1782690-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231117152737.1782690-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 03/11] drm/dp_mst: Add kunit tests for
 drm_dp_get_vc_payload_bw()
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 17, 2023 at 05:27:37PM +0200, Imre Deak wrote:
> Add kunit test cases for drm_dp_get_vc_payload_bw() with all the DP1.4
> and UHBR link configurations.
> 
> v2:
> - List test cases in decreasing rate,lane count order matching the
>   corresponding DP Standard tables. (Ville)
> - Add references to the DP Standard tables.
> v3:
> - Sort the testcases properly.
> 
> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

> ---
>  .../gpu/drm/tests/drm_dp_mst_helper_test.c    | 147 ++++++++++++++++++
>  1 file changed, 147 insertions(+)
> 
> diff --git a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> index e3c818dfc0e6d..98d57d28aab6f 100644
> --- a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> @@ -68,6 +68,152 @@ static void dp_mst_calc_pbn_mode_desc(const struct drm_dp_mst_calc_pbn_mode_test
>  KUNIT_ARRAY_PARAM(drm_dp_mst_calc_pbn_mode, drm_dp_mst_calc_pbn_mode_cases,
>  		  dp_mst_calc_pbn_mode_desc);
>  
> +struct drm_dp_mst_calc_pbn_div_test {
> +	int link_rate;
> +	int lane_count;
> +	fixed20_12 expected;
> +};
> +
> +#define fp_init(__int, __frac) { \
> +	.full = (__int) * (1 << 12) + \
> +		(__frac) * (1 << 12) / 100000 \
> +}
> +
> +static const struct drm_dp_mst_calc_pbn_div_test drm_dp_mst_calc_pbn_div_dp1_4_cases[] = {
> +	/*
> +	 * UHBR rates (DP Standard v2.1 2.7.6.3, specifying the rounded to
> +	 *             closest value to 2 decimal places):
> +	 * .expected = .link_rate * .lane_count * 0.9671 / 8 / 54 / 100
> +	 * DP1.4 rates (DP Standard v2.1 2.6.4.2):
> +	 * .expected = .link_rate * .lane_count * 0.8000 / 8 / 54 / 100
> +	 *
> +	 * truncated to 5 decimal places.
> +	 */
> +	{
> +		.link_rate = 2000000,
> +		.lane_count = 4,
> +		.expected = fp_init(179,  9259),  /* 179.09259 */
> +	},
> +	{
> +		.link_rate = 2000000,
> +		.lane_count = 2,
> +		.expected = fp_init(89, 54629),
> +	},
> +	{
> +		.link_rate = 2000000,
> +		.lane_count = 1,
> +		.expected = fp_init(44, 77314),
> +	},
> +	{
> +		.link_rate = 1350000,
> +		.lane_count = 4,
> +		.expected = fp_init(120, 88750),
> +	},
> +	{
> +		.link_rate = 1350000,
> +		.lane_count = 2,
> +		.expected = fp_init(60, 44375),
> +	},
> +	{
> +		.link_rate = 1350000,
> +		.lane_count = 1,
> +		.expected = fp_init(30, 22187),
> +	},
> +	{
> +		.link_rate = 1000000,
> +		.lane_count = 4,
> +		.expected = fp_init(89, 54629),
> +	},
> +	{
> +		.link_rate = 1000000,
> +		.lane_count = 2,
> +		.expected = fp_init(44, 77314),
> +	},
> +	{
> +		.link_rate = 1000000,
> +		.lane_count = 1,
> +		.expected = fp_init(22, 38657),
> +	},
> +	{
> +		.link_rate = 810000,
> +		.lane_count = 4,
> +		.expected = fp_init(60, 0),
> +	},
> +	{
> +		.link_rate = 810000,
> +		.lane_count = 2,
> +		.expected = fp_init(30, 0),
> +	},
> +	{
> +		.link_rate = 810000,
> +		.lane_count = 1,
> +		.expected = fp_init(15, 0),
> +	},
> +	{
> +		.link_rate = 540000,
> +		.lane_count = 4,
> +		.expected = fp_init(40, 0),
> +	},
> +	{
> +		.link_rate = 540000,
> +		.lane_count = 2,
> +		.expected = fp_init(20, 0),
> +	},
> +	{
> +		.link_rate = 540000,
> +		.lane_count = 1,
> +		.expected = fp_init(10, 0),
> +	},
> +	{
> +		.link_rate = 270000,
> +		.lane_count = 4,
> +		.expected = fp_init(20, 0),
> +	},
> +	{
> +		.link_rate = 270000,
> +		.lane_count = 2,
> +		.expected = fp_init(10, 0),
> +	},
> +	{
> +		.link_rate = 270000,
> +		.lane_count = 1,
> +		.expected = fp_init(5, 0),
> +	},
> +	{
> +		.link_rate = 162000,
> +		.lane_count = 4,
> +		.expected = fp_init(12, 0),
> +	},
> +	{
> +		.link_rate = 162000,
> +		.lane_count = 2,
> +		.expected = fp_init(6, 0),
> +	},
> +	{
> +		.link_rate = 162000,
> +		.lane_count = 1,
> +		.expected = fp_init(3, 0),
> +	},
> +};
> +
> +static void drm_test_dp_mst_calc_pbn_div(struct kunit *test)
> +{
> +	const struct drm_dp_mst_calc_pbn_div_test *params = test->param_value;
> +	/* mgr->dev is only needed by drm_dbg_kms(), but it's not called for the test cases. */
> +	struct drm_dp_mst_topology_mgr mgr = {};
> +
> +	KUNIT_EXPECT_EQ(test, drm_dp_get_vc_payload_bw(&mgr, params->link_rate, params->lane_count).full,
> +			params->expected.full);
> +}
> +
> +static void dp_mst_calc_pbn_div_desc(const struct drm_dp_mst_calc_pbn_div_test *t, char *desc)
> +{
> +	sprintf(desc, "Link rate %d lane count %d", t->link_rate, t->lane_count);
> +}
> +
> +KUNIT_ARRAY_PARAM(drm_dp_mst_calc_pbn_div, drm_dp_mst_calc_pbn_div_dp1_4_cases,
> +		  dp_mst_calc_pbn_div_desc);
> +
>  static u8 data[] = { 0xff, 0x00, 0xdd };
>  
>  struct drm_dp_mst_sideband_msg_req_test {
> @@ -416,6 +562,7 @@ KUNIT_ARRAY_PARAM(drm_dp_mst_sideband_msg_req, drm_dp_mst_sideband_msg_req_cases
>  
>  static struct kunit_case drm_dp_mst_helper_tests[] = {
>  	KUNIT_CASE_PARAM(drm_test_dp_mst_calc_pbn_mode, drm_dp_mst_calc_pbn_mode_gen_params),
> +	KUNIT_CASE_PARAM(drm_test_dp_mst_calc_pbn_div, drm_dp_mst_calc_pbn_div_gen_params),
>  	KUNIT_CASE_PARAM(drm_test_dp_mst_sideband_msg_req_decode,
>  			 drm_dp_mst_sideband_msg_req_gen_params),
>  	{ }
> -- 
> 2.39.2

-- 
Ville Syrj�l�
Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 899F17EF4A1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 15:35:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A848610E13D;
	Fri, 17 Nov 2023 14:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F055910E04C;
 Fri, 17 Nov 2023 14:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700231735; x=1731767735;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L1PEj4ha44NWDAB59thwhSCiWIJyhHOxhqW2T9Uqp00=;
 b=RZXhHH7kJn2aHF/SMQ+TBC9d9CNBXR/5jyvPg3a/D1ySNJc1q8VVgaly
 2qSAkLDG25FKmuC2KUQv0JA4IUOgANPC/gbi4fHlqAWH4uUSbfO1Di0Ze
 3iHEM3O5YMuP/+/0F5Vgson8SYIGG6o9vYVeIzsA/sA6gRysogznTlnjJ
 UC3xrVoeccDm8IESKCtgkHqEh9UbbRh/9k5n9Yfb9setm1F2YY7rgBfDW
 Qt9cKOvfnAZMu+3Xg4qvQ2GSBnZgGNAkGP+OBr+KuINpe+8jx/KZyLbTp
 +739+V7ijQpMkp924vaDAzPemd7ZYU9blUmBioBAyKC9daacymcPWM9Ed Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="376355694"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="376355694"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 06:35:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="769238090"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="769238090"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 06:35:26 -0800
Date: Fri, 17 Nov 2023 16:35:26 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZVd6DjzxBa8557bE@ideak-desk.fi.intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
 <20231116131841.1588781-4-imre.deak@intel.com>
 <ZVdIoq7j83nBrD_c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZVdIoq7j83nBrD_c@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 03/11] drm/dp_mst: Add kunit tests for
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 17, 2023 at 01:04:02PM +0200, Ville Syrj�l� wrote:
> On Thu, Nov 16, 2023 at 03:18:33PM +0200, Imre Deak wrote:
> > Add kunit test cases for drm_dp_get_vc_payload_bw() with all the DP1.4
> > and UHBR link configurations.
> > 
> > Cc: Lyude Paul <lyude@redhat.com>
> > Cc: dri-devel@lists.freedesktop.org
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../gpu/drm/tests/drm_dp_mst_helper_test.c    | 145 ++++++++++++++++++
> >  1 file changed, 145 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> > index e3c818dfc0e6d..cafb463124f71 100644
> > --- a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> > +++ b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> > @@ -68,6 +68,150 @@ static void dp_mst_calc_pbn_mode_desc(const struct drm_dp_mst_calc_pbn_mode_test
> >  KUNIT_ARRAY_PARAM(drm_dp_mst_calc_pbn_mode, drm_dp_mst_calc_pbn_mode_cases,
> >  		  dp_mst_calc_pbn_mode_desc);
> >  
> > +struct drm_dp_mst_calc_pbn_div_test {
> > +	int link_rate;
> > +	int lane_count;
> > +	fixed20_12 expected;
> > +};
> > +
> > +#define fp_init(__int, __frac) { \
> > +	.full = (__int) * (1 << 12) + \
> > +		(__frac) * (1 << 12) / 100000 \
> > +}
> > +
> > +static const struct drm_dp_mst_calc_pbn_div_test drm_dp_mst_calc_pbn_div_dp1_4_cases[] = {
> > +	/*
> > +	 * DP1.4 rates:
> > +	 * .expected = .link_rate * .lane_count * 0.8000 / 8 / 54 / 100
> > +	 * UHBR rates:
> > +	 * .expected = .link_rate * .lane_count * 0.9671 / 8 / 54 / 100
> > +	 * truncated to 5 decimal places.
> > +	 */
> > +	{
> > +		.link_rate = 162000,
> > +		.lane_count = 1,
> > +		.expected = fp_init(3, 0),
> > +	},
> 
> Would be nice to sort this to match the tables in the spec.
> A bit hard to do a quick visual comparison now.

Ok, makes sense.

> > +	{
> > +		.link_rate = 162000,
> > +		.lane_count = 2,
> > +		.expected = fp_init(6, 0),
> > +	},
> > +	{
> > +		.link_rate = 162000,
> > +		.lane_count = 4,
> > +		.expected = fp_init(12, 0),
> > +	},
> > +	{
> > +		.link_rate = 270000,
> > +		.lane_count = 1,
> > +		.expected = fp_init(5, 0),
> > +	},
> > +	{
> > +		.link_rate = 270000,
> > +		.lane_count = 2,
> > +		.expected = fp_init(10, 0),
> > +	},
> > +	{
> > +		.link_rate = 270000,
> > +		.lane_count = 4,
> > +		.expected = fp_init(20, 0),
> > +	},
> > +	{
> > +		.link_rate = 540000,
> > +		.lane_count = 1,
> > +		.expected = fp_init(10, 0),
> > +	},
> > +	{
> > +		.link_rate = 540000,
> > +		.lane_count = 2,
> > +		.expected = fp_init(20, 0),
> > +	},
> > +	{
> > +		.link_rate = 540000,
> > +		.lane_count = 4,
> > +		.expected = fp_init(40, 0),
> > +	},
> > +	{
> > +		.link_rate = 810000,
> > +		.lane_count = 1,
> > +		.expected = fp_init(15, 0),
> > +	},
> > +	{
> > +		.link_rate = 810000,
> > +		.lane_count = 2,
> > +		.expected = fp_init(30, 0),
> > +	},
> > +	{
> > +		.link_rate = 810000,
> > +		.lane_count = 4,
> > +		.expected = fp_init(60, 0),
> > +	},
> > +	{
> > +		.link_rate = 1000000,
> > +		.lane_count = 1,
> > +		.expected = fp_init(22, 38657),
> > +	},
> > +	{
> > +		.link_rate = 1000000,
> > +		.lane_count = 2,
> > +		.expected = fp_init(44, 77314),
> > +	},
> > +	{
> > +		.link_rate = 1000000,
> > +		.lane_count = 4,
> > +		.expected = fp_init(89, 54629),
> > +	},
> > +	{
> > +		.link_rate = 1350000,
> > +		.lane_count = 1,
> > +		.expected = fp_init(30, 22187),
> > +	},
> > +	{
> > +		.link_rate = 1350000,
> > +		.lane_count = 2,
> > +		.expected = fp_init(60, 44375),
> > +	},
> > +	{
> > +		.link_rate = 1350000,
> > +		.lane_count = 4,
> > +		.expected = fp_init(120, 88750),
> > +	},
> > +	{
> > +		.link_rate = 2000000,
> > +		.lane_count = 1,
> > +		.expected = fp_init(44, 77314),
> > +	},
> > +	{
> > +		.link_rate = 2000000,
> > +		.lane_count = 2,
> > +		.expected = fp_init(89, 54629),
> > +	},
> > +	{
> > +		.link_rate = 2000000,
> > +		.lane_count = 4,
> > +		.expected = fp_init(179,  9259),  /* 179.09259 */
> > +	},
> > +};
> > +
> > +static void drm_test_dp_mst_calc_pbn_div(struct kunit *test)
> > +{
> > +	const struct drm_dp_mst_calc_pbn_div_test *params = test->param_value;
> > +	/* mgr->dev is only needed by drm_dbg_kms(), but it's not called for the test cases. */
> > +	struct drm_dp_mst_topology_mgr mgr = {};
> > +
> > +	KUNIT_EXPECT_EQ(test, drm_dp_get_vc_payload_bw(&mgr, params->link_rate, params->lane_count).full,
> > +			params->expected.full);
> > +}
> > +
> > +static void dp_mst_calc_pbn_div_desc(const struct drm_dp_mst_calc_pbn_div_test *t, char *desc)
> > +{
> > +	sprintf(desc, "Link rate %d lane count %d", t->link_rate, t->lane_count);
> > +}
> > +
> > +KUNIT_ARRAY_PARAM(drm_dp_mst_calc_pbn_div, drm_dp_mst_calc_pbn_div_dp1_4_cases,
> > +		  dp_mst_calc_pbn_div_desc);
> > +
> >  static u8 data[] = { 0xff, 0x00, 0xdd };
> >  
> >  struct drm_dp_mst_sideband_msg_req_test {
> > @@ -416,6 +560,7 @@ KUNIT_ARRAY_PARAM(drm_dp_mst_sideband_msg_req, drm_dp_mst_sideband_msg_req_cases
> >  
> >  static struct kunit_case drm_dp_mst_helper_tests[] = {
> >  	KUNIT_CASE_PARAM(drm_test_dp_mst_calc_pbn_mode, drm_dp_mst_calc_pbn_mode_gen_params),
> > +	KUNIT_CASE_PARAM(drm_test_dp_mst_calc_pbn_div, drm_dp_mst_calc_pbn_div_gen_params),
> >  	KUNIT_CASE_PARAM(drm_test_dp_mst_sideband_msg_req_decode,
> >  			 drm_dp_mst_sideband_msg_req_gen_params),
> >  	{ }
> > -- 
> > 2.39.2
> 
> -- 
> Ville Syrj�l�
> Intel

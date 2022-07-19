Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC1F5797C9
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 12:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E05C314B849;
	Tue, 19 Jul 2022 10:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0163F14B82A
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 10:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658227178; x=1689763178;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=0lB+NiQsrSSvIlVEyQMvkys13u9vhKzMK3v/N5dS/cA=;
 b=PuiwVzga1tWc4ZSDXNLNJhQWV1OSvPSjJr2OlykI08hRcQXMiXecf4fZ
 SHEu7RmAOIK2Ccvvo9RlZ/sNg0CMtLahuKoVJDm5viW0iw8BCLJoW1XEG
 vrkQefZmch+aGOjeJB/NNuIXjbhdy9/jCTeUFWXDG61Y6iVrLAQNLssSh
 P7baFN1tTsJ4w8LJEWrdD7Mc+Q1U762SAq0Wqm6lgbzo6q9OXeZuNoHE8
 yT/vcWvLr5nSti5sPVEsJMBLTfVXjLMlwQPJ2+8Yul8db4t1QYFI4sO4i
 w/0hX679la58EEKdyj7BWZtEQ9mEZ8dDdtMp2qSF8fAuh8XpjodsDUXnt A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="372761375"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="372761375"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 03:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="924725850"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jul 2022 03:39:37 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 03:39:36 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 03:39:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 03:39:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 03:39:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iVRr/ZgcLDJno51IqkcjgJcZR0M83UJIiSaYpsSU2+JyIN+F109X5LJ+dz+2hQhxL5cA4urWpXINLFueB2npwfNekCYyfCT5cSEgi6Ixz3e9qyCe+g0H6/reEl2XUOFTKuDHwxeXOvIWk+t8z1XWIOWu5JadK37kHJOa5p9JlgPqlg+vkR6aVgAbKcDOWt56vKAqMdKMAUCwBnOBIzxnt6kbbVfbE5qVRCH1ixmObTFUQB6swJ2jUgCXKSHfvBwPrbFp7q3rsKk/Bx8m/a9gGPEvaQP+7kIRnhEQzOBVz/03Z+oS2BuQ4rZllsmxd8R5MtLQZh0DXvgSUvZVYfQQFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XV4C/i318RmD/fCj76gMvfRtsjk4lZRr35iCkyITxXs=;
 b=igjBh0JkGZrjBghYL5W5SBKl0S9iIenCUhOcf1TL8KhOR//rQjn9i00f5OE2chq2BD1FDX6oyjLCmY2gZ9U+kfTpF4N8dAe9FFQ3QniHJzBZaLU8HGO4vQIoYrTswsBd6/WntJM8wqjm0l3nDcVIGtT3XHScDuAzZCjL1dKDvFcPzVpbm3ZeANbotgTEDQxMGDoHPPmfEk5TnvbpV/ej4vTU7+T9/uo/hl6eGqGNAXvp+7LjJnDpnVhqJyY6LA9Oa2cyUlmkVtnDS8NawCieQjOF4G8uVryB/u/C+6q2w1n0joiOggk93OijFYe89F3UTQ/jmcs16thozJSKBvZkow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MWHPR1101MB2288.namprd11.prod.outlook.com (2603:10b6:301:53::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.17; Tue, 19 Jul
 2022 10:39:33 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 10:39:33 +0000
Date: Tue, 19 Jul 2022 06:39:29 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YtaJ4ThPAKPzBc1a@intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-13-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220715202044.11153-13-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BY5PR20CA0007.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 164cc8cd-5edc-427d-d533-08da6972f7fa
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2288:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qVboN5hJX6J6a6PxJnN3yP+EZeEZAfzVVDZqSKBezdLzsOU542/YS4ZOY/FAO2a6NzFKGr999TQSs6Aqct4V1F9t0ldezVhlaFvWjj9+MT8b5MlCdWaPcanxz/urfxE16m10zmaKP3tKuDJALBeDkZg7jh/HzEYL1ZIoSOcut/ydS9gVNWeQ98Ie1PIjLuV+0q03sX4EzJcm5djvSA9fUWs3s48d9P/V0Ob2FeFRI33gbivexHhrqZypeSnZWJRRCcyCRpL+6yb7bdn/on9MpBjFF2Q6w8+9f99c+rHhA2ukVcV5a1hlui+6KVd8Vx3nHa553PKb0aMC2/hvi4BcNbKYwC1uEhrGsnVROpG+ctosoYsOJJ8rXdAcmUWvqDGo3za1Z3Z4sE3m3eN+tEEeIpkaDm78R0dLqM+C+IS/X633ZpZ2bjxoubNCbiNF8v7r2dwmONcBob7Bq3UnOI6eRbA5jl8qVl45BzqvLxa7q8Ms7lEtaYLUJVeT9cjnqIgalqe62+9B1MolbShLttkI3XCxw3ZjK7ZY0Z4PpVJHu7NV1q+ZcMJB5XcboNhnZXoggV5HLFYlirnA3oOtVttivzOgI/cJV8qPSrf9EXFNlQT6qm3q6lJ5KYHeM2UywlebScN2uXYoqbct1HyDvDzL82ZmoUp/x9ngzunrX7Zeb9kn7hAvZmK/qEBbW6XevzM7uB4GC/BRG9rgFjHGbfzs/eiqkk+Mji2A1I/6bi+IvqwIKnpN/flSlhlGdQgB0Kdv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(366004)(376002)(396003)(346002)(316002)(41300700001)(6512007)(6666004)(6506007)(6916009)(36756003)(2906002)(6486002)(26005)(38100700002)(5660300002)(82960400001)(66476007)(66574015)(4326008)(66946007)(86362001)(8676002)(83380400001)(66556008)(478600001)(44832011)(186003)(8936002)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qlTOTGJeL2fu3+EXUbDFqB2dE7WLCujxf55mo+/Eu3kntHboKY64v9+ENh?=
 =?iso-8859-1?Q?1P5Kj8/Uozy2QQWbKDDvFk4VmLxK90RisDwr8AqYKW/831xmsveq4QV1GM?=
 =?iso-8859-1?Q?MzJaKJfFV+rIs4gWQ1DJZInCBkuxvXQWd9safUosY+nHL8JkyD1cktGHxl?=
 =?iso-8859-1?Q?gdbnlEMnBi8j0CFLeWsPt1mD+PnOhgkrUBj+h1sPUupRbDy6sjWrqVTvNH?=
 =?iso-8859-1?Q?XQwZ5df0lxnNSjUYDYhiuh3515R0ohS4cz3C4pg6t5EiWGQOHrKmCze7QO?=
 =?iso-8859-1?Q?H9jTQ3alD6PPtv/FUkgLbXjdfSKxZR+g7LJFM7FN9CrYi3093srmUTlQrZ?=
 =?iso-8859-1?Q?6u0X6l37rDEkZ9HRCi+xnklALojFWPrn9ScyyMJ3Hylgo7aJiAY08cCO4M?=
 =?iso-8859-1?Q?ePrHlL1luPbArz3dfun8YvqB5daj4BwhKbl6XXwUYp+Hy8Cqj4St0SMjc+?=
 =?iso-8859-1?Q?UUkyzs1Cw1TDhsRC+ifu2zKGFEVJAFAkUAS5L3m+suHWRqz/HPrSaCkLOi?=
 =?iso-8859-1?Q?xs9KrfH3j5v8HC3dMovjVbHvhIQGk4dN7sfXhpkXzi8IfPrO2NdvyXfaHF?=
 =?iso-8859-1?Q?Wa9jfOsw2NU4vY2EMrK2Kew5ZJ2y9MqApuW3yB/0Di9ByIYaYPIf6O0b17?=
 =?iso-8859-1?Q?XLqNVYToSX18XgWMSqaQn70NSIkz/vUUpp3Ywo+9VWgq76GorOtefRWMdX?=
 =?iso-8859-1?Q?0K4SLhBgxeK3YSsdekOMFqm7bAyUl3iycHYMYbrQn28lspBXEBLSazAc5s?=
 =?iso-8859-1?Q?HGU4fi5VA0zGO883p0sbj4o5RBpxyzE1lPVJoceCK38BwAxL6LDqQakv1s?=
 =?iso-8859-1?Q?T90sEHVbjpJsBw79PJUZNn2wqpUGCb5y0aiM05rR3A7XTPlWdx047Xw/rI?=
 =?iso-8859-1?Q?s0TaeiPFIRGhhKPk4WzQdUKMApUfJqERYikqeegHT6KoOLtHyKY4qFNSJn?=
 =?iso-8859-1?Q?RZKnNdQxt2OcNrR/3k1UoMxxHbU2BemkFHieoj+cRBATyyFIlFyw/45z3C?=
 =?iso-8859-1?Q?zKD5kiQZfkKnRs1t3qQ6HlgraPCsr4LWNj01jylf24QPUUwFPDZZQfmbmS?=
 =?iso-8859-1?Q?6MzuWjKqs7xaytcfbTNI9hYOdLnO/6uHetBxeonppfKt59ezDLLNbIYK09?=
 =?iso-8859-1?Q?uo1hkpZegIXCrKsEE7+AnIuGKjJ65/j8nrClTcHmBuFthc5RCszSnh0N69?=
 =?iso-8859-1?Q?AmqYXWI+RCPNS5sfxzsQLb8+GkmVRidfceFeJzbKlFs2BBolS5vWPSPnRv?=
 =?iso-8859-1?Q?LdRC/2F19dS9sKpPvpwkIOlMnDLEFWT8TF/u6PS0RNpZ7NacZ7Pm3eS6Sv?=
 =?iso-8859-1?Q?2lnyhzkJD0u0mi9YcsPA8nicajCwulLiUkf2+4fVMWBgoHsuEtuNU+htZM?=
 =?iso-8859-1?Q?p/t2ORK6bIgJpGBycLUMUTrc1czex59NLJ6QSkF82vP12XaqdmNEzqX/KV?=
 =?iso-8859-1?Q?diQxELwtsTSdfAwXFsXYx/Ms0Zhlo0wVZ/Jqk5Beu3j/TetHIt58zrK9u0?=
 =?iso-8859-1?Q?AVC+hjjTVui1X8/cfZn/LY/wzrDs1g4zv3sf1uPTwXkaVOBAvW90o7b6mx?=
 =?iso-8859-1?Q?XbbqTnXeQ2NxYJxL+sZkdFKHnFuEDxsQHBMVLYUiPfMWy0fx6fxanO3b9+?=
 =?iso-8859-1?Q?hGKMeGjFPGNLxmUe4BDzJNoB3ULArSjpgylyOcQa7UWi3VSDmAhNOXeA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 164cc8cd-5edc-427d-d533-08da6972f7fa
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2022 10:39:33.7226 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PBFYra84U22rdfSTL4UYrdTZHt9l8cblLRNf6dxuwQPWp6tw/MAfFWNXlzfjHe7ZSyUWOyS9C+u0++wDROFQoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2288
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/i915: Parse DP/eDP max lane count
 from VBT
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 15, 2022 at 11:20:44PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Limit the DP lane count based on the new VBT DP/eDP max
> lane count field.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_bios.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c   | 13 ++++++++++++-
>  3 files changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index cd86b65055ef..d8063c329b3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2489,6 +2489,14 @@ static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *de
>  		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);
>  }
>  
> +static int _intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
> +{
> +	if (!devdata || devdata->i915->vbt.version < 244)
> +		return 0;
> +
> +	return devdata->child.dp_max_lane_count + 1;
> +}
> +
>  static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>  				 enum port port)
>  {
> @@ -3674,6 +3682,14 @@ int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
>  	return _intel_bios_dp_max_link_rate(devdata);
>  }
>  
> +int intel_bios_dp_max_lane_count(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
> +
> +	return _intel_bios_dp_max_lane_count(devdata);
> +}

do we really need 2 functions here since this one is small and we don't have any
bit switches and all?!
or do you plan to reuse this anywhere else later?

> +
>  int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index e47582b0de0a..e375405a7828 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -258,6 +258,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>  int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
>  int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
>  int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
> +int intel_bios_dp_max_lane_count(struct intel_encoder *encoder);
>  int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
>  bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
>  bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 32292c0be2bd..0370c4c105dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -286,11 +286,22 @@ static int intel_dp_max_common_rate(struct intel_dp *intel_dp)
>  	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
>  }
>  
> +static int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
> +{
> +	int vbt_max_lanes = intel_bios_dp_max_lane_count(&dig_port->base);
> +	int max_lanes = dig_port->max_lanes;
> +
> +	if (vbt_max_lanes)
> +		max_lanes = min(max_lanes, vbt_max_lanes);
> +
> +	return max_lanes;
> +}
> +
>  /* Theoretical max between source and sink */
>  static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
>  {
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	int source_max = dig_port->max_lanes;
> +	int source_max = intel_dp_max_source_lane_count(dig_port);
>  	int sink_max = intel_dp->max_sink_lane_count;
>  	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
>  	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
> -- 
> 2.35.1
> 

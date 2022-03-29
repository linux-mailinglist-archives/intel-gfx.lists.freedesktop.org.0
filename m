Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4AF4EB272
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 19:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84CB510EE96;
	Tue, 29 Mar 2022 17:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAF8410EEA0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 17:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648573531; x=1680109531;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=HG5ney2dLkiak0X/0qtqh6EMcLtOJ85phh0HveTNUDE=;
 b=Czh1hpuA9MeNgFNxy0lZX0uJFjmlfTMnsp14chmFq5sP2rqdOK+/aKbp
 YvFuNSfSm+KzMdA/AeOQqUztYORgxpQENHxKLsI4KR/T2tlkDporQXDwo
 H40IvdkitnfI8TkfcDzOhJX0Ck/q/In0wCMSB1rX9HCzFj6SMVfmg7U7m
 iab2trZlBT8jXhhgjoBQbOmAF11pQJUQmDBhHqItmWPJ17sHBcIkX+b/q
 UvEO1s4T2CcpqHgXkiYNoxZN8ao1SGF8roFGltyx3B5/NPg9Sjpv8mImt
 Zdd3pyGvQa9roySZ1kP96RDX5l6bPw7El87vyrf0+EeT3OzDNLnY5dsG+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259284425"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="259284425"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 10:04:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="554335734"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 29 Mar 2022 10:04:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 10:04:51 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 10:04:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 29 Mar 2022 10:04:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 29 Mar 2022 10:04:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S5hu6zMcmQ7fw5vp3IMdjvlw8IMqqWdEX2LcEpnkF2ANNLimZNLvnggaPB3w6hyLwxijMhBHlhWDg3OZPPos5QbLWCG+4xt3DKQhPXhOTYu49JnG4yFzsSnZ5SJBisWf0vnAPmWymoFC2/KJIN6V8bjJuZa6ZdgvHnH1QBsgCzy2UI0RwMniFEQ1ZmqMgSUyqubywhaM3ct+abuFVzSps7Yp//wxBB5w97GQ3k7XxtpeJFz7n5hllbUFyo4My17/vShRqlfgu8lhV753Dm0pt18bu6RYSwUqOG0fxd9qLY1HVjYYpTSFABlBwAI09yqg9+qpIsFit3jQvWidVXO5sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uqBNFQpInL7zblvj1FoGV9G3/TEeW1FttBCg7WaYOr0=;
 b=MdSSmetqok4GMnKW9nlJxW2wOepUQDAfTl1DxQzlQyiLmAc967kfCkRqRBD+96CV0nnagxVfuxVfpfsEtuSHuu/jEUOXIH8172nPzlkzKyKJLU+wOCJKqbc5qdWtINIgKX9RWoOlNSiXncFsdEJ+vIT/dxBy6Vyk0xNyp9OhTK2LZKz+2SHIx1zX7hxYnD/YRMf1dN8STjr9q/Nig7zEvHIIsPfWvW90pW04mP9aX1C9oroMgq+3iD6lV6p4rk6DQ2NYcDR1DzH9PBsQp55EggiPOXjNSWSM5AAr/L/sWAZSMSrinZ3of3SZoM4OQuLLyGRFoJTlROXOqE6BtE8CAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com (2603:10b6:a03:2d4::5)
 by BY5PR11MB4022.namprd11.prod.outlook.com (2603:10b6:a03:18a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Tue, 29 Mar
 2022 17:04:49 +0000
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::99ce:ec02:b430:2564]) by SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::99ce:ec02:b430:2564%8]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 17:04:49 +0000
Date: Tue, 29 Mar 2022 22:34:37 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <YkM8JRpSQKArFI9Y@bvivekan-mobl.gar.corp.intel.com>
References: <20220329000822.1323195-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20220329000822.1323195-1-matthew.d.roper@intel.com>
X-ClientProxiedBy: PN2PR01CA0119.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::34) To SJ0PR11MB4894.namprd11.prod.outlook.com
 (2603:10b6:a03:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3f7b2100-5c8e-41ba-4b87-08da11a63b5a
X-MS-TrafficTypeDiagnostic: BY5PR11MB4022:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB4022C28279FBE5228E1B5C7F9F1E9@BY5PR11MB4022.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Byn0GvT/7jKuRuf1eCBIHG+hRXnE2cKOq5DNlCaqZ75SUEowmL7tiJIzKP4vDrhog3VhTPEemW9EErSC3BFvG26VlIEmVAAEZSqD9H9fUnUJyEhbgsyJ4o5wUgklOGRq31bjZvU9rYc/lmMlR0fIoLRohA8k8T/IbCsigxHB7nQQPlJXHHCsWhBRi9YjroecCPNCauv56jlJkntZCxQunL59z1VucJpTYLj7wsr/RIG1SfIeSXyjg9OPU0rUqjeKApDznoATbLTpfOk3Q9RbH5TxKaa2vITPCkuWYvm11HHUDooSK+vfcPHMbssJbj51IKhySl+AyiQwpg4rq/14/sLrAW2VtKHBd1qAEtFrP+lENyXJtoUpL/I6be1YSpU+VEPAUEToygNPqUbQwEAKkhxQafLXUurFnxnOMZ9yka16z2Bzxk940ZMvdOVhI6MB4vRiTlsPKlKDclBc2ALI+H7yQdY0wAB5ld7CwitWJtat85q9gNAe3DjeD47zdevkmVPeX7vnryRPwvQsaL6xrf28NSUnIm5eVduDcJ6SvFGJOUEJfPcCrwzI0mO3+h04DIpCdXX6SUf3cddvzm+3CCBAx3UG29muauz9qxUzEnmSK1OGbSv1kxkMqs1mBFtP36ckSiW/rYKpo8CuG5Yj+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(5660300002)(66946007)(66556008)(316002)(8936002)(6666004)(6512007)(6486002)(53546011)(6506007)(66476007)(2906002)(44832011)(508600001)(38100700002)(83380400001)(82960400001)(26005)(186003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWZEcUJlY1pCeXp6ajREczNhc0cwajVOTUVER3FFbTZ5bHhCR1VPRVpVVjdW?=
 =?utf-8?B?MHBNZ3F4ZHFPK0VCQnV0RVFFeGltRzEwVDBVbjNhKy9CRGl3c0JwSEhKTmdB?=
 =?utf-8?B?SUtMcnJPak1oakVPYVZlQzFqQklmM2xnL3doa2Y0WFlDajFRMG5LMWkyQ245?=
 =?utf-8?B?QkxicEprc3RkS3NjSmpJNStzZFpPV29TdzZJUXQ1U2tnMHZhN3pGaGpCcC9Q?=
 =?utf-8?B?NzZJd1JyQTd4Qmx6WGNXNndVYWNZY3hTNlpIK0Q3ZkN0SUpyUzNpT0oyM2Fa?=
 =?utf-8?B?ZlhlTTVsbDJXZ2V3ZG9oUlJ6QlpZcGVPNGFCVFlKd2ZpaUZVRWkvT0lrakFi?=
 =?utf-8?B?eExuY0Y5bStSZldvWkdxaU9ZbXVqeG1DbmdDbTF4N29jWXlISWpFbUZDSEZk?=
 =?utf-8?B?UFp0UzZJbjh3MGx4eWdyYUp2NUhmRmdYOXJ0aUxnR3FpUWFyNm5OTnA2NDQ0?=
 =?utf-8?B?NDlhR1QwWFEvYm1pQlNpaGJoUzhKWE5iVHRYUXo4allVbWNKaThxTzlHbXh3?=
 =?utf-8?B?RStsYjJVTHo0WFBFa3c4R1FDVElKaXltL045ZnFSRm00OHladFg1aG0xUllB?=
 =?utf-8?B?c1ZNQ0I0cnlLN3o3dkprL2ZENGQ5ejRGTjVSTmprVy94a3RhSmtTVmttQTlo?=
 =?utf-8?B?aU9iRkVncFlpbXdmZ3JQT3MyZmUxSGNVb0luT1ExcXhiRS9wUWlEalgyVzkx?=
 =?utf-8?B?YWRRaGlJNVFHSEgxalVmbmNsMHV1RDNvcUxvMVkrTTVaY3c2UDlVVWdyRmV3?=
 =?utf-8?B?SExONUg4WTlzWG1hNGQ2WnZFNm5qVXVEa09aMFYrRXpOQVNsUFhGRkRYMmV5?=
 =?utf-8?B?NDdiOVFyWWRjQmpsNWllcUhIV09iUXlEWFRjbCt2QWt1UUJaMUpxY3lMSGkz?=
 =?utf-8?B?UUVuSC84RzdOZVlPeHdQTnF2RWRING9Ka2l3VUFDSDhPWUdsb0c4YnhoMkNE?=
 =?utf-8?B?L1lyUklUTnhnVzM2YnhUNUN3K21sN0tuTmRhZHBnbDhiQlhTNEJqTEJHNmxu?=
 =?utf-8?B?eE5LQzhaUW5LelNNWVZuSVBiSkc0aStIZ3QwL2t4cVpSOVNxbjFmYkRzZVpS?=
 =?utf-8?B?enB6SjZaaGxHbXFEenNzaTVpN09JSFhUWVVSbWp1NzJDL1hBRUZtY0JIOHB0?=
 =?utf-8?B?NEUzQXV1QmJKYjg3c3VMcHp1QnRjOFVURXIyV1VRSjhtZi9WV2lrUXl1Uyt2?=
 =?utf-8?B?c1l5c2ptK0h1YkRLbEdkTHFvSy95ZkdJbHhPdVd1UnRJbTJETDFaMGI1SDRC?=
 =?utf-8?B?cElJTEk5Q0UwMEk1NlRIY0kvUWQrbmQ1TDBSSktOditqK3c5MEpzY09aUUFi?=
 =?utf-8?B?VkRHeGRVdmlvdW1TU0lmS1dNbHVHR3ZOb29wVzRVaGo5RzVUeDhiSUR0MU8x?=
 =?utf-8?B?YzVpVHhzQXRtUktWdHFOdDJhYUE0RUt0bnBhbW05dHFXTm5neGs1NGF6VFNG?=
 =?utf-8?B?UDVxMFF5Vm11MHU3UUV5RlZvSCtnUkFlVkQxejBWY2hyL2NTSm9pcWVDOGdm?=
 =?utf-8?B?V1Q5SExRckhVSmlCOEx4d2JmZW5iTXVYY2RYNE81SzFpdmJocmQyQitORFFZ?=
 =?utf-8?B?TWVqa3RpSmk3SnlFRkVRQTBERkR3NFlacFFRclhHNlhWYkRJOHhGaWk5dGJE?=
 =?utf-8?B?SFl3ODc1K2pJajJhdS9TSzlLZWluVnlDTUY5TENla1BoUmdiS1lzZFlBcmow?=
 =?utf-8?B?VDVyYjc1ZlV4VWhtSXJMNnEyVWtway9wRU9XeXRybjdZbVRsTWVjTjBwNmRB?=
 =?utf-8?B?OFdReTBPOVlBeW5uR293MXhTNEdmbkxqWGx0SUJXdlNDN0xVSnZCZDRXSm94?=
 =?utf-8?B?am1Ka3hhMGdJK2ljc0lzYkxqN0c4UUtzbkVta004NksvSUNtQ3MyWWJsNVEr?=
 =?utf-8?B?QVNWZE1CK3dLT0NBcDlBK09LTlo2c2dPeVR0RHNSYmpNaWFxR3F2Smw0Y0hC?=
 =?utf-8?B?cHNtbkJldTlnWWlCazlxS3dYOFpKQ1lxYnB6Y0xpT1BMNTdiNzh3a0ViR3lz?=
 =?utf-8?B?a016TWFwS0IxaENSaGZ2ekVSb3RwWDNhTGJ6MG04L1ZqbVNSaCtFU3BMdk15?=
 =?utf-8?B?TFFEUjBHa2RVdm5hRGZ1bXp3VjB6SFhEeVJUbWZtL0FKUWxNaEpSVHRUaTFR?=
 =?utf-8?B?ZDdudTQ2RE9YSWZud3JmZXVwTkhHK09BVGp6cW9XK2VIK0RadFZHenV0N3ZG?=
 =?utf-8?B?YnVLby9nUzZVTXFnSlMyM0ZlT1locXBxb0U3azVDaE1qSDVnQnZEcXYzRnYv?=
 =?utf-8?B?RkF1S1FzTnQ2Nm4xNDFSWG9kOWVZT2JnS0thTFc5bUtHUnpHL2oyb2p0WTMw?=
 =?utf-8?B?SFJadGhJaG5yQWNQbVkwZDE4L0lORVFFUEVFTXVQME9DWGh0Rm9jd3Zic09O?=
 =?utf-8?Q?Aa8qfOzr7a7t07oCJ1wDdN1PFhmnhmHa7MJrO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f7b2100-5c8e-41ba-4b87-08da11a63b5a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2022 17:04:48.9541 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 31cbTDPAI8YjcwPSjBlMP9ZWvwa5G2Upe74Shugnp3f/R67GSVdQ4iocMQTwiZh+0C09ercxuPEysg0gxJImIGFrcljJb+CEM6p30BK6qgi8Nn+kjdkSWgoVg2Q1zr+7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4022
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/ats-m: add ATS-M platform info
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

Looks good to me.

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

On 28.03.2022 17:08, Matt Roper wrote:
> ATS-M is a server platform based on Xe_HPG and Xe_HPM, but without
> display support.  From a driver point of view, it's easiest to just
> handle it as DG2 (including identifying as PLATFORM_DG2), but with the
> display disabled in the device info.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 40 ++++++++++++++++++++-------------
>  1 file changed, 25 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 67b89769f577..2025e1114927 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1040,25 +1040,35 @@ static const struct intel_device_info xehpsdv_info = {
>  	.require_force_probe = 1,
>  };
>  
> +#define DG2_FEATURES \
> +	XE_HP_FEATURES, \
> +	XE_HPM_FEATURES, \
> +	DGFX_FEATURES, \
> +	.graphics.rel = 55, \
> +	.media.rel = 55, \
> +	PLATFORM(INTEL_DG2), \
> +	.has_4tile = 1, \
> +	.has_64k_pages = 1, \
> +	.has_guc_deprivilege = 1, \
> +	.needs_compact_pt = 1, \
> +	.platform_engine_mask = \
> +		BIT(RCS0) | BIT(BCS0) | \
> +		BIT(VECS0) | BIT(VECS1) | \
> +		BIT(VCS0) | BIT(VCS2)
> +
>  static const struct intel_device_info dg2_info = {
> -	XE_HP_FEATURES,
> -	XE_HPM_FEATURES,
> +	DG2_FEATURES,
>  	XE_LPD_FEATURES,
> -	DGFX_FEATURES,
> -	.graphics.rel = 55,
> -	.media.rel = 55,
> -	.has_4tile = 1,
> -	PLATFORM(INTEL_DG2),
> -	.has_guc_deprivilege = 1,
> -	.has_64k_pages = 1,
> -	.needs_compact_pt = 1,
> -	.platform_engine_mask =
> -		BIT(RCS0) | BIT(BCS0) |
> -		BIT(VECS0) | BIT(VECS1) |
> -		BIT(VCS0) | BIT(VCS2),
> -	.require_force_probe = 1,
>  	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> +	.require_force_probe = 1,
> +};
> +
> +__maybe_unused
> +static const struct intel_device_info ats_m_info = {
> +	DG2_FEATURES,
> +	.display = { 0 },
> +	.require_force_probe = 1,
>  };
>  
>  #undef PLATFORM
> -- 
> 2.34.1
> 

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E702762AE3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 07:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A99810E415;
	Wed, 26 Jul 2023 05:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB0710E415
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 05:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690349934; x=1721885934;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=j0jOiI3jdJHlFyA8AP2y1hRXWFDHGFSjGw/o6z87Fek=;
 b=IOwHsxgU9O81eFFM+j/YSAAx0x0LZR1+oXRluxl9Cbz/h9L9/sw7tDiv
 /HZ19eDo+WE3tSZJ6BmrJi9sOCPimaegrYQL89gWczCYEf+GIAhuMHD00
 PBBYM7f+D5tO2dezaQ1EafjjACpXcMJ6j1DWgxoC0zecWQpmiCY8ozOj2
 lOnSCZTNsWY6+00/nrFnLo6FZzP9MKCLhwD7Y0IvNNYHxm6xZPfJiu2vF
 Hhm7zSkKVrhvIItIA0WxYYKsyw33MHIxCt491JtxpOIRBp5KwsiwM8Nf+
 4aLnv/joRDBI726DIPrtDzQMKgktuP6J3SD6a36flvi1wP7THymsOakjH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="366807222"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="366807222"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 22:38:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="1057065752"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="1057065752"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 25 Jul 2023 22:38:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 22:38:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 22:38:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 22:38:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OVZxbe1E8OEb4gh977E1+SFeLLQYeQCpvfNoD8ANZ/CBi5HiBbJSa7RJl+411MOZYpjPI2PGMKuWXicHUws4d6g1YhZWKL6ANaEzAWW5enle6/wqaX3Zi/gyodiLOjymWv9e4ds23NDGF3XqhwCYE8DSw+WFdpcM/rGR6LZQ6jPBTlHp8QP+W4RzFmvgcoWuf9r55gcpuQG6pPf10zMJNZzIAaO6ygVOEbbYnO1646iV25i2qSM0HimANIFiUQq0eiNHLE/A1OVHIsxE1lZNENpUw6JDYOYMGb3a/SOiBTRcHACz4ZT0arCFV+pgH5aSVYFgDYePpXx9uG6OJRFX/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y8mhGj19xmO+ymPOxYWsFEMRbcunR1hr0jzydV2kroQ=;
 b=MJt6604rGL5oVVC3GlkqUd5J5rl80NvTI6/9mPm7on4AWExr14D4lBopwxchI+mdd5ezNXiHzn/D9LZgjvH5nzb5i3FOKUReVr6HtuCwdxRk6yY4Gsw33kwsXlDmGrlf6pK/jruKdSBGWue1p5nnDXyrUHQLZS98sifKrv9Lp4kYwqzwsFvdTnZhMB56LuhCYG2HHCgnpSNazEtScIjJh2sv+KQ8oZY5JPqRathcZXl7n87w50tuTbc3x61HByv/hElI41X5EHM+Iph8iItv4XqOSWJ6Z6yrjQEKrNtLf8jely3WdhtO7mBeEpTl14KSYAe1rtqiampeH13U2mCPfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SJ0PR11MB8271.namprd11.prod.outlook.com (2603:10b6:a03:47a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.31; Wed, 26 Jul
 2023 05:38:51 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3%3]) with mapi id 15.20.6631.026; Wed, 26 Jul 2023
 05:38:50 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC enable
Thread-Index: AQHZthZXXIyDAUTIJkyTaqNVHujv8q/LmqMA
Date: Wed, 26 Jul 2023 05:38:50 +0000
Message-ID: <DM6PR11MB31773E758497F6D5E1C2F9F0BA00A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230714053733.2117730-1-arun.r.murthy@intel.com>
In-Reply-To: <20230714053733.2117730-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|SJ0PR11MB8271:EE_
x-ms-office365-filtering-correlation-id: b5e8910b-f440-4a5d-a8db-08db8d9a9741
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oSYtVX7h3fB/Sc6tqWgnbVfkz+jTu+1Hrh+VtRYYMJF6BFMMWXzhOyCXFhuiCA98l/BNJFT9oeaxpcW1Gj7CJ1NP0iwLcAYqMfkB6djRGwHRFzGpZUDCnvgF3aqA5s65LA3bEpgPnIfz79/GdKCtpjpQpiR+Z57RJdVucpWXLA5inpmN0sb8ehacnfPEFhr8KfmQXrvUwplJlpJtFxO7ven3BQPnbRBvTbrA3mfkexm+ZYUjQf05ieWeQc7ZtlAyf+Y91bkqhCG0TRW8PLUSGeJx3kBtu6f0upIC3LhzrBI605UkLuch8eUmn2bWx6awaFuqLT/yJ1tYwLrNt3YLOSwFvFJHokxb716w4kCCVTUD2X8G6+HmrhBPVALX27diQFWy3/nLNDo084xzM9jNwU0WupV9tzOPsMielbAEGdyGRE4SvgFIY+s4mMeQbQz7Ba1OWpuW/2+Gf27CqU6VfiRe18/8PhGZKIrpcuA6pUVpgx1iKdSeToDgJ91j1iVKMMa64PmmPCs8jafSgvkPIlcv4M6bOoeBNrIFZEn2ThvyNWm3v5ytVUDySUybds71V08pcIVz/FEgA2FkrNjHqx0xBYmMNiVAV+XDdryg50N4hloW5Tdw8UK4Nyy0maro
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(39860400002)(376002)(366004)(451199021)(76116006)(66946007)(2906002)(66556008)(66476007)(64756008)(66446008)(6916009)(33656002)(71200400001)(478600001)(7696005)(9686003)(86362001)(83380400001)(186003)(82960400001)(122000001)(53546011)(38100700002)(55236004)(38070700005)(26005)(6506007)(55016003)(41300700001)(8936002)(8676002)(52536014)(5660300002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dpnw+rR/hkqnbFGD2bhbvibPfP4qgR21sTHiyLbTJzz97rRkZ+8z4FWUGzo9?=
 =?us-ascii?Q?MFcbMqM0YMJ2eFS0EdVfxlor8f402Of2q0WIczSDdoUYGnKuoBTpr3wLLsAg?=
 =?us-ascii?Q?pzTopZGPVBFb8jGfZi64gnnVkMfMKqFzfT4TPzkWr9DxAjFNiIJEzGdMhpGp?=
 =?us-ascii?Q?c5wq9i/FzOry+WB1Dk4HgXEmCWWZSCVaVH8wvE8oDUqS3HefPPZVKnJB4Yft?=
 =?us-ascii?Q?61fZgZ8Crc49B8T5nXUQ6D4U3lGdi+1Qj9wxKrypOU0Vxxw/mAI9BSUDMVgL?=
 =?us-ascii?Q?PD/b+Pbv/ba8uiqYTXAuO6Rr9beWinZWZRsTDR/JBmOe66NOSQblu5geD2wY?=
 =?us-ascii?Q?diIlSb1dO55+AJtm9evHv2GnC1kS5LVxAOzN4nla2swCyVQiBcwGimgzyr1E?=
 =?us-ascii?Q?MJUehmbVLyTOEk8SvDe5gCSSREtW6wjMqJGy0/p7DEvMX3AQZkFNVBy+Z6mZ?=
 =?us-ascii?Q?8RWO+Gz9keZpFEwEYTfIlodsVtbm7CdJ9iG/y6FUre8nDgrSCUQYADflUq+f?=
 =?us-ascii?Q?2qazqaY1ywLqHbaSZrtAKQJYdB9jpQCRewSB6tY6WzJcIUKcR2cwA9fdZ+/Z?=
 =?us-ascii?Q?Rme5vf7FB4Pj6qewaT77XLCVz3KiN6WeiXIpuHQCSyNcQHysixwGDgMZvjxU?=
 =?us-ascii?Q?aENhgA133P3xOHrbNn9hL3lodLmyNQ+xEMhAgVqVKdQiqhVPDX6qPSVGvpLM?=
 =?us-ascii?Q?dFfE390GXOgMiKUQHZi57uuvL3N/xsqNPY8OhxjCKeMJAMjBx0W7SVuZ9b8A?=
 =?us-ascii?Q?5/orLEITvhWD0h1MiMjvcLiMmnFYUNjjSOrnxoKcZ0x+MY2GrrmTAxWwGpp7?=
 =?us-ascii?Q?KjpcZ8mVFAXFg7j8o7OT5th3MZWhXdZYBBuSkO8YdyDB/zoIGAwn96xv68Bz?=
 =?us-ascii?Q?/fDhHHoFOdzY0Qz5OGRFeHef/tRWfGA1VUTEw8fEV6+7L9SaL2pBCW7gTtJi?=
 =?us-ascii?Q?ysaFfTn/95t53tn/YDQ1w9RLEX+ukSshR0T2iTVDcDUjKUeu+5sghPlFbB7P?=
 =?us-ascii?Q?lDQeFIK4Eh80Dc+Kw2M4mo8XM8YEa1QifDSq3y+DMt3W3VF+lOqE5zAZ1/O2?=
 =?us-ascii?Q?wHBMVl/JPIxe2G3ZSSZtFlhZXxoOL+H25lJWbI5ii+w+/9JtJJCWGt3/OGgo?=
 =?us-ascii?Q?diTQDxFsH2fKVGJIzoLqSjG0Ce3JyKcGQ0sRqA6E4/nt44S1mPJLL+FUkuVi?=
 =?us-ascii?Q?CqCeRqsFbVAzsrArq4O7SBmC7ILEzWYxj5iANF5Fcy43GerR+LJ1Fo6BRCci?=
 =?us-ascii?Q?OexDtCT7RkIKhoUB6cXnMxhZBPbFIFHz2baTWeMNRu/HOL+sRphSF1Gv+Xrg?=
 =?us-ascii?Q?veMrd80Td3zqxG4MKI3MgDbZNMjPdIcLPTTRCxAhK4amr2Hnk27BkG9rHa2u?=
 =?us-ascii?Q?hDAx3UtTM9xTM7blJ62mqr6e+g5yzzLHsLHZIFQUMb7324mnjBgT11dZ0N1Y?=
 =?us-ascii?Q?Dak4UAOPxr8etxrKlK3AMqclGBuXKGGok8WawGWINb73rDhOZC82mlPkfkvo?=
 =?us-ascii?Q?ii2J3lr1nfHBoOuIt+4NzNk0XlgR5OEv+RzLbqmFgwCnBTnZTHwqmiSdWBD3?=
 =?us-ascii?Q?FN9MTujqAGHxBpohPL/9PWP8znlWhEry9owyxic4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5e8910b-f440-4a5d-a8db-08db8d9a9741
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2023 05:38:50.4706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LiIeOlQ84IzTFPCtfsH12Yp1WoHkyMqPFQSCOlC/1i22KdScoUP6emT7imU8vJFl4iGofj5g5XHmd0ina8Zolw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8271
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC
 enable
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

Any comments?

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Friday, July 14, 2023 11:08 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC enable
>=20
> The debug print for enabling SDP CRC16 is applicable only for DP2.0, but =
this
> debug print was not within the uhbr check and was always printed.
> Fis this by adding proper checks and returning.
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index a263773f4d68..4485ef4f8ec6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1390,11 +1390,13 @@ void intel_dp_128b132b_sdp_crc16(struct
> intel_dp *intel_dp,
>  	 * Default value of bit 31 is '0' hence discarding the write
>  	 * TODO: Corrective actions on SDP corruption yet to be defined
>  	 */
> -	if (intel_dp_is_uhbr(crtc_state))
> -		/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
> -		drm_dp_dpcd_writeb(&intel_dp->aux,
> -
> DP_SDP_ERROR_DETECTION_CONFIGURATION,
> -				   DP_SDP_CRC16_128B132B_EN);
> +	if (!intel_dp_is_uhbr(crtc_state))
> +		return;
> +
> +	/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
> +	drm_dp_dpcd_writeb(&intel_dp->aux,
> +			   DP_SDP_ERROR_DETECTION_CONFIGURATION,
> +			   DP_SDP_CRC16_128B132B_EN);
>=20
>  	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b
> enabled\n");  }
> --
> 2.25.1


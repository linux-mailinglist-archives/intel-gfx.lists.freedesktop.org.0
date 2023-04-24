Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9E66ED41F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 20:10:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2305910E1D7;
	Mon, 24 Apr 2023 18:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8040710E1D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682359853; x=1713895853;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=N8gJkF2K809p/YryDydXREHuID+4WYqLUyUvdvvPVqU=;
 b=iJzv6swcmjhTdeCvZPGADssJ08B4N5WpPkyTWVgdf3al7ArK854MQjra
 /5TNNzSPiDTsY4i6yqbDveby1uo9Yg6dgUmfLOP5cwxMo49khUr4rYK0a
 HRgMYPNOswX+4TmH3DAsFdvIOImqeMarCySOtksKnj/bJih4P5Y+LJ33G
 NFN2+Hr+BuK/vJ+hfldq/mO6ZoXuOSn8pX+YFo/PL7Dq8sEWPzQGKqWRP
 gy9QbuF/vfcVg7MC7Wzz7RH4rtaNN3BdwPhlMCVHGMy8Uxi7lytPsZFEd
 iuzUBuy3Hp0mCDoCO2UN43MvZSyDcV4myEUtOFKQx548ztgBTGQDCzSs+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="346547709"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="346547709"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 11:10:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="757796817"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="757796817"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 24 Apr 2023 11:10:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 11:10:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 11:10:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 24 Apr 2023 11:10:51 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 24 Apr 2023 11:10:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iw1fjFb7ChXFh+gHV+UJIIZTnufGMLIegkZpQB9fvK8Hvg0E4n5kYtkYGhS0uTwazgiljuteS+ct1MMQmpTyvszswL6GTwQ8sf9AyJALthk3gXstXYxVAC/8ByUPrKKyBpG/woRNnEZCaqLqBQoHH0jFra6jM7ymfdvWN2e0LrkuKb9GmXMbZt1L5S/5AWNLuSm6krwAgQtc/vZvXcaz2jFMYwpeScjmvDvBA/lANfpZokJm6yXR00dimFH6+sc2B6u1jWtc7myfDvq892n5RywazM8tXi3z5tWF+IaFxPUiem7gLnYPF6m/QTjSjesrLH0j+yH+OvpWfEoAPYgsLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WR/QchXb11D1+4HrllMC/tKJmsXJZLL6F2IYUNBxw7Y=;
 b=SgMjoeqh0qNTVTiAFhS+kKubMxhk4yogj07we/QwtU7125JPN/v9mFsaC7B2ynbhdpPFMzx3V2Wfmby/TjSfHcmCpsCXKaFaWH1vIRNSTA0q7/jvtpAb/WbgsI8KSKlFDl7Gll2nZ5/CzNd9Z3CuCuopZltwI45pATMAJiHOkt/oXmZA88rHzQObhd29KL2pDhSPhg/dYmNNyelqrJud6UCAvm8hQsJ7JasUpijy6yGT/lC8idXPzgraM8UOcIcXoMB4UURH5YmfMSeQ5wSaK518D+gSyXtdT94wx9pIV8Hjq0O0Jo+GLQvDc56Crz6FqhorSlQjeRovc4vVSa7Uew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA3PR11MB8004.namprd11.prod.outlook.com (2603:10b6:806:2f8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Mon, 24 Apr
 2023 18:10:49 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 18:10:49 +0000
Date: Mon, 24 Apr 2023 11:09:43 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEbF56hiHVH+JFbg@invictus>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-7-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-7-mika.kahola@intel.com>
X-ClientProxiedBy: BY5PR13CA0031.namprd13.prod.outlook.com
 (2603:10b6:a03:180::44) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|SA3PR11MB8004:EE_
X-MS-Office365-Filtering-Correlation-Id: 973db287-ed95-4109-4be9-08db44ef3b65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ng/9Y2d2EcdkOkyUszm3iFZxB4BjpV2NbPaiNgxu/2Z7wK6E92aymlGoNlrdl3as3nHAaM2iSTQv1Ujqz37xF0VB0deBufQic/QtWxflKRWlLBkIcayslEBaxATjnSfjI8vQ1GQyKcvSPjiZM5QsSTJ7pl2wdmDY38dqgGowAZaNd2xahV0ZLM3SrREm2LNLk3eGxcL8p7jdcz9P8fnNE1a8FoIWH0s3VrL1quxHbMLeSGwVIqDD7tmnR3DxLd4HkpUUqRi0+e+6im+xzv+Pp4eusfQFK5Bm/xbaW3DRKrlpl9arO5FB8inX2GgDuLFqFQIN4FuqHBP+bxmrxsFtyvkeSqx1wmALBPxouTEUv4lhQR7H8akLUFeZV1nR+FEZlg8ed7khZ3ceFXcyLEwhk/VvYNmf4Wby0L6eLWE89iATEgIjxrF6xvc8/1LCgkvWcLGWis9sxcjcR9gLk2UewznaiSllWVD7LTfWiNKnAxGgNtL1bkp700X24qc2tLWkSrrP5QHsU0rQGVLvCDc5wrk9BcpAb3hbx4b3i9t/SIJ0TViqsIeOxsyP472X8KatyZWCKfYO5szF2FiuxevKyEBNjfDu1A+FxIwBdhsWHgA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(136003)(376002)(346002)(366004)(396003)(451199021)(82960400001)(6486002)(83380400001)(6506007)(6512007)(26005)(9686003)(186003)(478600001)(6666004)(33716001)(8936002)(8676002)(41300700001)(6862004)(66946007)(66476007)(4326008)(6636002)(66556008)(316002)(2906002)(44832011)(86362001)(5660300002)(38100700002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xK29o9aTKRY9LK9zDIxmQrVzMnxgs7brH1O0l2yZqw82uPLBK245ebc2Qw4B?=
 =?us-ascii?Q?L4dN8o0qLu/6O1sVZ1IqWEtkXWsHh5uaO2F2pon7e0SK5sD8L0sRcoczd8wp?=
 =?us-ascii?Q?rFg2lnbhBCu0CWOUcvsiWsn2IHZNsVD48BVRDyGsA5sSVghqW8GxObtvlCrx?=
 =?us-ascii?Q?Mgmmw7JBpTedf9So9NYHa2wYcuOY3b89NaV4uyfKbqlVdCdojrkDmrlOEbet?=
 =?us-ascii?Q?0utkoX7Fraw1RYOrohR/k2xzJw0m34vybpMP2YGsh6EEdnXlbQWbm1m0Dh6B?=
 =?us-ascii?Q?HgSWBABMNIvDj4udJoslSV/djz4PQEhj32KCJddRr1wZzSxeFpSbVGuk/Afi?=
 =?us-ascii?Q?v/o1FUW/jStC37kWABVgDvj7BO2WwSyI3iBEVNuaIRQM3YJvXg/Py8juf9Ps?=
 =?us-ascii?Q?I9IHSK9KUd8RescD19rJXQHLNQ/YixdgNO0atoXMfSR+FneN7OVA/9AI2BCM?=
 =?us-ascii?Q?XoRi5fIpIznvP/cAf4njFfalfKPfIUIcGDuAkmEIgtlTF34dztefvwORvJvN?=
 =?us-ascii?Q?E8DyEbd+3rWyAiWPiVIQQuZSvoxSALRqSGBMJIHkIm9K4IozAHCovnm5CZc/?=
 =?us-ascii?Q?ZLb/NcxTf3RyU150679MBUUyhzCXPeANptkvTt4P176qm8irXr3Cuu2AUhYF?=
 =?us-ascii?Q?8Vit2uFI5ew1OBjd+puRvS8vRnX9VC0TKoF/XguXrnfc77NFjRXbRUP4+nAT?=
 =?us-ascii?Q?AmNDnnWGCjePCP4wIQl819hkjZOHxxDlDH6BbpJDlutA17AqHTRA06sJvatM?=
 =?us-ascii?Q?AE9Ofv+LKWpYe5/VP0zXIuZ1mSEZQQgMaiGEMv2H+SE0G24Errbgj10xRR4q?=
 =?us-ascii?Q?mR2uPIUigiL58+QB5/lCIxqOs/wusbrbaEEqNfWHGmBDIlVCh9B1pJQ/OG1J?=
 =?us-ascii?Q?KNMFevWZKxrZdi77ifYyPoPqcEjASnwZ7CVzFR7lXKA/ujrmpO8LUsIdpTZX?=
 =?us-ascii?Q?DbEDIKYlOI4FCMloobEk+8uLeqv7dTeGtj/czclPraWwAfGNbwJbHNBq6drk?=
 =?us-ascii?Q?jn0OrSvZEs5RNklDhtX6LzWGlqvp2Q9VF4rE1J53l2YnkM6HLRgRyh1XUdQJ?=
 =?us-ascii?Q?euSfHo8wrBMJvJdBFBsx7ecihxLxmvcWv0Mtf63jGdjfGsDs9QDltDPhVJ5T?=
 =?us-ascii?Q?ypEKMrL76SVomcQOOfu9vkK/Js+UPo3yJTJcrxTjGCsQARCfPw2AZDv4oFKm?=
 =?us-ascii?Q?fsD+R0B6fMw2bWFaZVmP5OwIXWwTCj/ZJB25lLeEhHRpRBVdB26kwAbUYVTF?=
 =?us-ascii?Q?VKh+4NBzJZgDOO5TioGC/BGeCbzXe/Qh0OoS2J5CEbG8yL5MiCQzmu+rIeXE?=
 =?us-ascii?Q?id83t57k5esSzmU4Wy4dSMiKuEKvE5jcXoFFQH3xg6IcrfDb8RWvcnrQqM+j?=
 =?us-ascii?Q?lNuRooDmDjDO+c29X1woKYrqpxdECBN+pEbLUYnaC50cbOBE0aqWYwsgCNxM?=
 =?us-ascii?Q?9fhie9fWzt+Po3f2lz5Twi2VYTqPh+z4BFHa5zse7vM5KQ9g6d96fLgdvgYJ?=
 =?us-ascii?Q?3OYMxttUBF3kvOLAYi2xDXMevj6fcdGuOLbIxJisrJ51ok4MC4o5xE9ywUo2?=
 =?us-ascii?Q?8K5tKKRjm77A/4bnmEhk7+HCRQcQseD/ZABej1TDgjzXgmqU1Rh+U5rBGhWx?=
 =?us-ascii?Q?2Oh9HH7D8PpngJ4oAEgQHa0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 973db287-ed95-4109-4be9-08db44ef3b65
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2023 18:10:49.0529 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V3zQHYMV0MNElkkwB+ktegf5obviO6SW+Q7hmVa2hh5cGe4JSkampxmMHRRXonRfvYO26df+MPMuFA6/ik1FF14Ac4Oln1WkvdA73L/75p4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8004
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/mtl: For DP2.0 10G and 20G
 rates use MPLLA
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

On Thu, Apr 20, 2023 at 03:40:43PM +0300, Mika Kahola wrote:
> Use MPLLA for DP2.0 rates 20G and 20G, when ssc is enabled.
> 

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

- Radhakrishna(RK) Sripada
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f7720acaf58c..4231ba98f075 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2340,8 +2340,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>  
>  	/* TODO: HDMI FRL */
> -	/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
> -	val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> +	/* DP2.0 10G and 20G rates enable MPLLA*/
> +	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
> +		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
> +	else
> +		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>  
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
> -- 
> 2.34.1
> 

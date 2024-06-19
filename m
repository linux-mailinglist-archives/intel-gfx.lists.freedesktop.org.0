Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 981B390F60E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 20:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6570610ED76;
	Wed, 19 Jun 2024 18:30:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CxU889Mo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615F610ED6D;
 Wed, 19 Jun 2024 18:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718821799; x=1750357799;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rnjfVSxqtTEGbt7Obfw4kljlD0HhpKGOXmaRLQlDBP8=;
 b=CxU889Mo2I70kOpYGkrMTdE1MeMWo+jSyG7FK2E8KS5tCyq1A0OYrhtb
 toAjtlYMmKiwZ2z42/3GauVFM837k/Uf22MdIkYo5Xeo7uLN6sIT7MkYx
 1wSRzuMKa6UF15vgdFVBf+1gUQVBTcuAUmPSVqxZC6N8ewumnemF59bgJ
 6G5I+tBhlarxwLktH1TeBNEftezlKRLo22mtU1CfYbUDhHfDnIdyrEfdS
 /jsCRcyDp4ZK8p9jWH1II3q6XfM5Wvk7LYLQfh7rLwQlFA/YWRwczHpDT
 pnN1z4CPUNkwGGkV6akolGb4vLNLFhHiuLNcTJ8tdNekGIgAb5KBSCpch w==;
X-CSE-ConnectionGUID: 3Zk8ocJrSTeTX2u+ciHX5Q==
X-CSE-MsgGUID: a1z2LR6nRpGZMTKdqpg7Aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="27183152"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="27183152"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 11:29:59 -0700
X-CSE-ConnectionGUID: oY+22XcBRO2DFniFExPUaQ==
X-CSE-MsgGUID: jv9WEAr2SdexYNVyUewsfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="72751592"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 11:29:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:29:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:29:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 11:29:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 11:29:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DCK/QjolJKZtFE1Lxj2MhH/Zjrt3Z0RliMWfg72d2KXLOP0dCJahmHGnUCJI/DbAS1iODXO/+GG0ZN/FBamF34NBUIfqmXkKYBrTb9jsqcZ9jTpJOiltbBBgsEgob5kYLoSacXVrDiRXEtpcYqggEw+TYJfETpQcESeM1a6i+9G/G+7qhlrhFErR3XzCjthtGInzZ0mXrTju2MTgskoC7NYwVDAOEgqEFfqL5nR3CJu9eHY9qB4jJszge8sGd5mMjtSSW4NG6tdOrVWPmo4DWSRz5T5i30iIfbyttYmKGffMD9dbPOV1o+oBklagry+Q4D8Qvs4XojnkCOoeTagWKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nvW/e+k0FcKMTSNhnB33KOejFgiDT1K47Byt/o96nvk=;
 b=iXo69KdW34BFmsw9jxo5ZJcxXNtky5RyIkmS6pW9aUTkycZUd7DthrThXVJ4k5iWbR3HyHSfB4iBUmLx36BhNFYrlHb/qoL4aZnZptslxStp2ho17EcfMTt9D9HkTr71x8engFTi3CQcRgWmUclK2xqS6StfuGFblgYFF4M9q3juztGjY6hTecnmzqwC5qXcDmETXkld+uMIA3gcFONOKIP6BzVkZizouUqpatSrfLPk99g5ZRpnXEpFRXiVnouFrIhp89yjalEgJatiHXY/98aNHDLz9r8QhQFs2QQF9MTEdASsZe0Qz4d57nh4TH+fwnVamizKmqN6zjs0+JSjTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Wed, 19 Jun
 2024 18:29:49 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 18:29:49 +0000
Date: Wed, 19 Jun 2024 14:29:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <maarten.lankhorst@linux.intel.com>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 1/6] drm/i915/display: use a macro to initialize
 subplatforms
Message-ID: <ZnMjmfcK8iDT28R9@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
 <03025d8bbb5036abd4c670b052f20a273feac62f.1718719962.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <03025d8bbb5036abd4c670b052f20a273feac62f.1718719962.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0049.namprd11.prod.outlook.com
 (2603:10b6:a03:80::26) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: 552e61b3-5e99-4a96-d825-08dc908dcd53
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|366013|376011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nk17sMDHho4vaZeazBnrDw5pf4LAsTTSio7tgNatcUAdWxe18+1LGOAUrM/t?=
 =?us-ascii?Q?+9h9bM3o1518ZVW0xq8WPl3O7MbeLQJdj9gw8p/TpY0oU+dTmWHKMSNsZS4j?=
 =?us-ascii?Q?/tRY1zbArsCuFoA3rvDaRjpJ8whDPJ7Vob9+ueEcM/1qQU8Lyn2V+gSe+qGf?=
 =?us-ascii?Q?zbWrkYiF/t37+N6HvzZwFJgaLGNgPFi1i42k7/t3cu7DahCEzTVxW2MyBUYO?=
 =?us-ascii?Q?3EN3RML7DTZEjQJPkxg6QwnrHPwrZjizilDy32ee86HLaopbPuEtWT0kla+6?=
 =?us-ascii?Q?1pDkPdIaBAxeT0ul0FW0DuJWOC8Xx2ssmAEjjW0Kkrnvgc4tkEABtsZjbK7l?=
 =?us-ascii?Q?/xfDYBwr65p/2ZVEpoClna0WVjGyv7WUVU0MIqXWNNAeAU9DS7d9eQJQV8oy?=
 =?us-ascii?Q?X9dk/IWkq1DJX6Q5+bDhPjfNnEksN7uiwRPCY0L+VkEraR/lMAHBh3aPk0KT?=
 =?us-ascii?Q?lgB3nekKmJj8eHBZadlI7gEzljWseafRccrZSQ4ZfTL2A62U1Hd0Ak+gMyob?=
 =?us-ascii?Q?60RpBxKVMLO5jfUAEG/T5EVSjPE1bUGtP4kWrA55B9I5eM67CnxUCkeQDFz/?=
 =?us-ascii?Q?lEGp9NjptfPwMn5ZdDy/bH+IX453blcX9vzcDio3s3eedGns4DQ1qKe8aVXr?=
 =?us-ascii?Q?dmq/cDe7PuNxyu9fiDgBAnqnzUfXaZzUIcWNNgaGjbSxmWr4J2CZ9CvDC7v7?=
 =?us-ascii?Q?W7BTrZmNrvt0GMO5fCIoeRDnkxoYODqzbn22z1EK8JBBHXr3+F/B1pxSF4mk?=
 =?us-ascii?Q?x/e7bZTdxbUE1WO8uIDbZz73PxQ9a7A5AysE2pCbnAIiWNS9STY67r/GOiPM?=
 =?us-ascii?Q?vaG43ljnWP12/jJl19mG+oDKRm6MLy3RAgYtKO202c2AlC5x83DkAaR16tm8?=
 =?us-ascii?Q?6dDowVojptZlzDqrNjH0AhsYp/Zon4O/ELxHCOMYphNzyJi/kJ8NhiQIFmYQ?=
 =?us-ascii?Q?U0XghDhhSjR0Pp0DAyQfhAF9Va7ajzf4XVshlCM9GgpcW5Cuzf0JFXN2MKVI?=
 =?us-ascii?Q?dZh1IJ7R92ZrXJA7cFbQwOKQfF00hWxmlTah5wuhTZFBTbwndjP014kUFWMV?=
 =?us-ascii?Q?cqRhavMb9sEdL5eMtyUAanTFWTEl9Uwis2gX2dJKZW6xQnqN1Dvln8VKFaSk?=
 =?us-ascii?Q?bi5NnW66AL7CXQ1xKT/YZbjt5JDop4d6oAGCr+LzIGnXdkqHJEHUnBl0nkBc?=
 =?us-ascii?Q?R82Y7MUMV14v4idHOo4XNmhOW5M6BkOIUCZ8mF3qibj9isZ/JUWGJtYhNRbD?=
 =?us-ascii?Q?hwGkoTXv0LqY5mLyIu75GPKU5UCgdhlVHU13OdT+XbMlvvUAD00o+WqKq1FZ?=
 =?us-ascii?Q?45cALX7UuCK2+Doo1+HiUC9O?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IQtnujHDeVP0k3oh2bskObEZh5po0yZSDeroPSTeiuEI4FJ+lLgmkr7kPd5X?=
 =?us-ascii?Q?D0MSBwxjUzP3f1pcXKYm2CBJEdkE1SPq0x/3o/W5jYivpFgt7Sq2VY8X+IML?=
 =?us-ascii?Q?MXHw0K2UyC5pc4LImsZypmmQaEm5kkI6bO1Tnatmtd9+q/IHUBf/kLSUQURp?=
 =?us-ascii?Q?Bv6zSaXR/GP9RsKwJSEPWJCo8MnPbv3SEVAeuzdDIdl/E2RGLvAGoSC+VMCU?=
 =?us-ascii?Q?hJop5D8Wwkjb/miWSSyd27Ig0bLhVG7XhcgAEgzXqqy6ALc2HTTDUxPgzQm/?=
 =?us-ascii?Q?boPpLxYI4et9XC4/R+qbmHNdrnwEicofUnaHS17sEGcXFVojCOk67fyLK/Pc?=
 =?us-ascii?Q?bORxDt3mdN+5AvXn+bhwV2mzlzqcZb3XsgNqf5Y6zoUhoq4UE2K9qi+yPX3p?=
 =?us-ascii?Q?1WFaeJf9e6qMRwexcvZ1I0UB7Af17Lv7s49j1DpjOF5GAQjZNO39hfxVLe7e?=
 =?us-ascii?Q?3o87d0w+YRU1nEQrO2Xn8VqwjJWQbAMoVsAFtG/G8b2w0aJqc2V8pCFM7StH?=
 =?us-ascii?Q?GxhXosiqLSlpwaGhNCcIIC9fr0dduXVSHyFi0O1H82CBO+wXsWEvkhPi6j7o?=
 =?us-ascii?Q?zCUlnebKTIF4U5j+nB7Gr0kilTBMUIjwDcwmo3AGGBAd4+xkl9r/cKoKBojm?=
 =?us-ascii?Q?K8t2eM3XLCTlKXBnr2RnhIcWwPZ6SplRDt15U1Gn0CN1NHHlAP/37AyG+AX+?=
 =?us-ascii?Q?lKpVabWxUcGwWMiXvyvCgrQluv+wjrfNt6eTS83HSi7E9LzKNJ8LDRMQi+QH?=
 =?us-ascii?Q?hLp2lqYbA1SipNVLIfpyBV7Ueh8qr6bfDyGcap8LMZtZWfGs2nDzhHwCXEgR?=
 =?us-ascii?Q?L334ubWSfDQChuQjELDkBO/hTsUZGgKKJD0z1XPUTKY71JQ2it1Ypv5sX3zl?=
 =?us-ascii?Q?5cDdnjhEcVXwE0J7EgDv2kM1rm5GjIVt8ttcq9+99hTDwNTVPG+sZC92dcFJ?=
 =?us-ascii?Q?8C8UuxKbncYiHxtz/4ZHNqREYtPTbyfVOwicyw85ckrt6IipRIQSuW+1nODH?=
 =?us-ascii?Q?a+my4DPfr6SGQ0vype+olltt/OnJkJd0Bh9CKv/Bme/gN1z0giKfqv5N5784?=
 =?us-ascii?Q?iKDlQJNCi538YXXbQxjgkymB1M3opnnl7z7JAn7ktdzOh8E9LY83lUQD4dEs?=
 =?us-ascii?Q?iSj/pqxyXCJq6GIfjlemw8YsBh1pBS4VavAwoKYgRvq6Ry2KB/C5S3Xkh3qn?=
 =?us-ascii?Q?X2y6ATOINCWc43mhKzH9UDmR9zbq/4vP223VqmKZUTowmiOAruvzfsEPv2vv?=
 =?us-ascii?Q?W80FNgyv41tS97mVARrh/CGlTL59OrzA+4smFNZQRdBropagQC96qNlEV20e?=
 =?us-ascii?Q?sWL8me/gucJ9IpgmRWN3mM9tPg4z2OPx3bSq3RnuhLwZjEhfrcnFeHt6ERvU?=
 =?us-ascii?Q?tXIR6ExitOlHrVrh+NRCve29SPNVV7icvhII2SyAeCk9/FUzNdBptRZzAd4i?=
 =?us-ascii?Q?slyaDHeWyMhKPqQj86krsys7PIpbPNwKgCdUOjl/yUZBzhLCQuGRY7FyU5Z3?=
 =?us-ascii?Q?cPnq80SehDeBg3ftr+aGuQFBQTv5uZtp59CIN/WFUfaO368L5Hqzh4lrlnTl?=
 =?us-ascii?Q?voxjsZ7v7S7DbtOXq5d4q9faOgtG4D3R7dnlUZeU?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 552e61b3-5e99-4a96-d825-08dc908dcd53
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 18:29:49.2443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kGbN2X80pLfZzGVZVo0647mzBabJ38ShuKZrxjGLpiVThDKRKnHYcccKpu3RJ7piO40hcYf3arth7Y+T0D+FjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
X-OriginatorOrg: intel.com
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

On Tue, Jun 18, 2024 at 05:22:51PM +0300, Jani Nikula wrote:
> Make it easier to change the underlying structures by using a macro
> similar to PLATFORM() for initialization.
> 
> The subplatform names in debug logs change slightly as they now reflect
> the enum rather than manually entered names. For example, RAPTORLAKE_S
> rather than RPL-S.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 44 ++++++++++---------
>  1 file changed, 24 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index dd7dce4b0e7a..d900c30907ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -26,6 +26,10 @@ struct subplatform_desc {
>  	const u16 *pciidlist;
>  };
>  
> +#define SUBPLATFORM(_platform, _subplatform)				\
> +	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
> +	.name = #_subplatform
> +
>  struct platform_desc {
>  	enum intel_display_platform platform;
>  	const char *name;
> @@ -485,8 +489,8 @@ static const u16 hsw_ulx_ids[] = {
>  static const struct platform_desc hsw_desc = {
>  	PLATFORM(HASWELL),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_HASWELL_ULT, "ULT", hsw_ult_ids },
> -		{ INTEL_DISPLAY_HASWELL_ULX, "ULX", hsw_ulx_ids },
> +		{ SUBPLATFORM(HASWELL, ULT), .pciidlist = hsw_ult_ids },
> +		{ SUBPLATFORM(HASWELL, ULX), .pciidlist = hsw_ulx_ids },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -529,8 +533,8 @@ static const u16 bdw_ulx_ids[] = {
>  static const struct platform_desc bdw_desc = {
>  	PLATFORM(BROADWELL),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_BROADWELL_ULT, "ULT", bdw_ult_ids },
> -		{ INTEL_DISPLAY_BROADWELL_ULX, "ULX", bdw_ulx_ids },
> +		{ SUBPLATFORM(BROADWELL, ULT), .pciidlist = bdw_ult_ids },
> +		{ SUBPLATFORM(BROADWELL, ULX), .pciidlist = bdw_ulx_ids },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -613,8 +617,8 @@ static const u16 skl_ulx_ids[] = {
>  static const struct platform_desc skl_desc = {
>  	PLATFORM(SKYLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_SKYLAKE_ULT, "ULT", skl_ult_ids },
> -		{ INTEL_DISPLAY_SKYLAKE_ULX, "ULX", skl_ulx_ids },
> +		{ SUBPLATFORM(SKYLAKE, ULT), .pciidlist = skl_ult_ids },
> +		{ SUBPLATFORM(SKYLAKE, ULX), .pciidlist = skl_ulx_ids },
>  		{},
>  	},
>  	.info = &skl_display,
> @@ -637,8 +641,8 @@ static const u16 kbl_ulx_ids[] = {
>  static const struct platform_desc kbl_desc = {
>  	PLATFORM(KABYLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_KABYLAKE_ULT, "ULT", kbl_ult_ids },
> -		{ INTEL_DISPLAY_KABYLAKE_ULX, "ULX", kbl_ulx_ids },
> +		{ SUBPLATFORM(KABYLAKE, ULT), .pciidlist = kbl_ult_ids },
> +		{ SUBPLATFORM(KABYLAKE, ULX), .pciidlist = kbl_ulx_ids },
>  		{},
>  	},
>  	.info = &skl_display,
> @@ -661,8 +665,8 @@ static const u16 cfl_ulx_ids[] = {
>  static const struct platform_desc cfl_desc = {
>  	PLATFORM(COFFEELAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_COFFEELAKE_ULT, "ULT", cfl_ult_ids },
> -		{ INTEL_DISPLAY_COFFEELAKE_ULX, "ULX", cfl_ulx_ids },
> +		{ SUBPLATFORM(COFFEELAKE, ULT), .pciidlist = cfl_ult_ids },
> +		{ SUBPLATFORM(COFFEELAKE, ULX), .pciidlist = cfl_ulx_ids },
>  		{},
>  	},
>  	.info = &skl_display,
> @@ -677,7 +681,7 @@ static const u16 cml_ult_ids[] = {
>  static const struct platform_desc cml_desc = {
>  	PLATFORM(COMETLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_COMETLAKE_ULT, "ULT", cml_ult_ids },
> +		{ SUBPLATFORM(COMETLAKE, ULT), .pciidlist = cml_ult_ids },
>  		{},
>  	},
>  	.info = &skl_display,
> @@ -776,7 +780,7 @@ static const u16 icl_port_f_ids[] = {
>  static const struct platform_desc icl_desc = {
>  	PLATFORM(ICELAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_ICELAKE_PORT_F, "Port F", icl_port_f_ids },
> +		{ SUBPLATFORM(ICELAKE, PORT_F), .pciidlist = icl_port_f_ids },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -853,7 +857,7 @@ static const u16 tgl_uy_ids[] = {
>  static const struct platform_desc tgl_desc = {
>  	PLATFORM(TIGERLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids },
> +		{ SUBPLATFORM(TIGERLAKE, UY), .pciidlist = tgl_uy_ids },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -902,7 +906,7 @@ static const u16 adls_rpls_ids[] = {
>  static const struct platform_desc adl_s_desc = {
>  	PLATFORM(ALDERLAKE_S),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids },
> +		{ SUBPLATFORM(ALDERLAKE_S, RAPTORLAKE_S), .pciidlist = adls_rpls_ids },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -989,9 +993,9 @@ static const u16 adlp_rplp_ids[] = {
>  static const struct platform_desc adl_p_desc = {
>  	PLATFORM(ALDERLAKE_P),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids },
> -		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids },
> -		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids },
> +		{ SUBPLATFORM(ALDERLAKE_P, ALDERLAKE_N), .pciidlist = adlp_adln_ids },
> +		{ SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_U), .pciidlist = adlp_rplu_ids },
> +		{ SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_P), .pciidlist = adlp_rplp_ids },
>  		{},
>  	},
>  	.info = &xe_lpd_display,
> @@ -1026,9 +1030,9 @@ static const u16 dg2_g12_ids[] = {
>  static const struct platform_desc dg2_desc = {
>  	PLATFORM(DG2),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids },
> -		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids },
> -		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids },
> +		{ SUBPLATFORM(DG2, G10), .pciidlist = dg2_g10_ids },
> +		{ SUBPLATFORM(DG2, G11), .pciidlist = dg2_g11_ids },
> +		{ SUBPLATFORM(DG2, G12), .pciidlist = dg2_g12_ids },
>  		{},
>  	},
>  	.info = &xe_hpd_display,
> -- 
> 2.39.2
> 

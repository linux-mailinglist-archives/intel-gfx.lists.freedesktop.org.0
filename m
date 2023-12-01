Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AE3801593
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 22:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F09410E966;
	Fri,  1 Dec 2023 21:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0FA10E966
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 21:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701466777; x=1733002777;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=BehW5nydFCQ8gs8ydGXWw29k3pDPoVxtdBpD+olqI1c=;
 b=mzfdwpr45BrUW0p9kaQoIIUbcA9z7QI4ntz1vi3MFpANs3BWmr2IiiL5
 CHu6w95GIz7oHcA1ZIJmAUbyWoLZAGO0/9ls9MzE/lNUKjYQOpyAYYuPi
 OgYYnDnxB9sYkrKY7OkDiMe/GNZ5YayZy93RNeairyJclWtZ7xGS/FiyP
 Hq2IX5hd9ULFPIzmOEjEHlxu3mjGK/+MJswlrQOf5Xz0QWRPpr0hrFPnu
 iym0KcoGh6edJrKyxMJq8JEvuOAJyWinmXMsdY0j5XUhycssJTtkBpUeP
 Y0kcGR2S/L27n8m52TK3immG5VNkRyEbWyGjKjntnhJQhPO9m08FYB9yq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="396357508"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="396357508"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 13:39:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="804198166"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="804198166"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 13:39:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 13:39:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 13:39:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 13:39:35 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 13:39:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nEDhKYmVFo96j7sRDx+6B1+hg4b3nWQGcc/VSvIcOmSN/tAuRdPwqTjVriqRkmPtE8T5I6s6UQqcGCYqf3FsO5iZ7mlmWfA/Bxwabfr35IsleIwEMjAof1GeAwQlKtQhFEbJ+HbPuAvkhZdrQFFM6GD+hZeOiWfLCozFLLDrcsc08e1lQJHMSUhFUqHxZmC9kTV6cEd9mmuNV42V8WqZdzlaQOpYsFd9N7Zrbs1LsN0vdqzKH7aAZYsenzgSzhZfjOTp6qyASkYCZ9K0x1hvpUSNgtnusupB3LepqgVRPWR9ElKa8/BtP8ByncFF4IGshGjDlHo2SFMDm+RkhCk03Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CHcfOMv6PunPKJs+7yVrGFrNnUiaezDga8ZIbY85Bwg=;
 b=Y3C9U3FTY+pxQQ6pRnBG/EZC04mPwfjlc7wdZ+l5vJP1GUkNwew3n5kPMwnOrvAHQieGftPesJpxbM6zo+3wp6mb00iK5lT0VSxY4VLaXKbUrN38/IPlWw7ZQyCSI21y6hHP1EHkhyoKyRrFK6bCrN6PFfyuQyatm28NME0V08bQ30xgBnBL3C/n/kvwEl0DPRgawxciFl4CmsD5zcQfjA5X0coh7Su+JiBlGyhyXRd4Yi7JTjZFvCwCU6n37qzKKfYTcxNaPYYGmyTxy9lISKUC7VUY7xsJF1Ive5d7tCzsREwTJm3TWVrM80FIBNC8tS/RxnrsYCOPAshpHBgRWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB6829.namprd11.prod.outlook.com (2603:10b6:510:22f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Fri, 1 Dec
 2023 21:39:33 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.028; Fri, 1 Dec 2023
 21:39:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231128115138.13238-8-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-8-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 1 Dec 2023 18:39:29 -0300
Message-ID: <170146676963.74196.3925039850426389114@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::36) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB6829:EE_
X-MS-Office365-Filtering-Correlation-Id: 0788ddaa-50cb-4aa7-a19b-08dbf2b601ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LsfZYAG5PA/oYdLRgprkO/wGElP4XUr4iSNJxStWbkwigRAJfL9NyydCvAgtMNY8T26P8Kslcdljs5OeBItMzF/y6juOEwZ0muw0seAbm8aPeisjZuu7EncIG6yTW4HsdLQHmFVxkUf3W2XUZh4yMXA6EYPx/BAmVObxEDBt4OInT+znSDQPROUfTFZFMQPJiiR/Tgpz65RNKnTMPB3NkfqUTVPRWMntDWMT0SXRH0Pm7hbH5xS402Ww0G7e3nu2Ek4FnW89RA6TCT13IZ2Gr3HP2ea3koSXb4tR0nx2A/UUHdkxgGdcSn2y7Qmw6q48YV6U/D1+yZvqgSTQWjvXgf9s6f4A1MWMQHr8MwGIlXDSjlFU2gs0ma4UAOVoCTWgM3DmLniv+lDshNAFbHDULftVnD4voTCnk9hoxM//01714d7cgQGgeWY99tyh65myh93R1CeB6jDqKAVflyEQLb39etCfDp/Z674K1uiZEDdRrecwF0t7LpT+tgvbpAQDWJm3OA9sym2bN/nDFaFufm20PrwVF9E8uBnjqkdinTn8ugwsAUsr8/Bw/qzXjFiH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(396003)(376002)(366004)(39860400002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(82960400001)(38100700002)(66946007)(86362001)(66476007)(41300700001)(6506007)(66574015)(9686003)(83380400001)(26005)(6666004)(8676002)(5660300002)(2906002)(6486002)(478600001)(4001150100001)(316002)(66556008)(8936002)(6512007)(44832011)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dld1b3VaYXM1a1FLNDBUNm40VjUrZm1lSUdjMzg5WUVUeVFRME8yYmZha2d6?=
 =?utf-8?B?Mi8ycy9NcndBN1NnMVEyL0lyaXZXQTV0NlExN2w2akVmY3d6dGp1STVpTmd1?=
 =?utf-8?B?blo0QVI3K3ZFZU96b2FqOE9abFJMY2xNSDIwTlNCa0RWUXVONkxHUXFSR3dX?=
 =?utf-8?B?SktKYVgvSHJ3SzNReUM5bkdlYzEzdXpEQW9zN2hxZnBhOC9xTU5kVGN1M2ZI?=
 =?utf-8?B?dkl6dUZtT1BCYkpNeGphcERqNWVldXh3UTVDbG4rMVpwalRDWWpwU2ZGZHlT?=
 =?utf-8?B?b1M2TFVpaE95bUtmSGRwYllNUThOMnluczk5MkhsVm9qbnhFcC9SQnkyenpn?=
 =?utf-8?B?S0FvanEwaXdCb2pkSm92VGVVS0VRMmNGMVk5c2o1eXA1WEhPUmhuU05lTmk0?=
 =?utf-8?B?WFNhSFNKUzBMTFdNbWJ3UDNNWTFJdnY4Q2h2a0lyUGJ2dFlXUHVnUk9WWGxR?=
 =?utf-8?B?YVQwSytmN2tlUlFGd2hlL2o2YUFoZUU4dGJhUWFiVDhEM0RwMUllM0F0cGUw?=
 =?utf-8?B?ZjNJM3NDbklFRDExT05yVU8rQkU2V1Z6R1ZaLzJXMnd4ZUtEUndTeS9WREJV?=
 =?utf-8?B?STB1Y1UzdjdnMXQweXdJRUlueisySFBJMUFsSXdaSXYvd2lmU1czUkk2TTVi?=
 =?utf-8?B?cEFOMC9nN25FdmcwdE52NzNkUkNtaXplNmNvL2dLSXFJR2dZc1hud1YxOGkv?=
 =?utf-8?B?dzNUZng0S08yVS9tMmV6MnRZZDRxVmc2bk5jbEwxZHFHR2dDWlVPV3FSTHJw?=
 =?utf-8?B?UzVPSkVaRmlLUk9pbUNnYTNPRndseWU0Q1hmK0d0M3ZxaUxMak02a1ZxSFVh?=
 =?utf-8?B?Uzd4dGlQUFdlZFBGQ25NQmp1cmRDWDAyekxFZFJMRm1SM204eEdPNExFYzJi?=
 =?utf-8?B?WWFUZGJUYUlrVFFEZ1dWYzZvR0FnT0c3K29nbVdhQ1I3SitpZTRJeWR5RStH?=
 =?utf-8?B?TXNhZ2QyVjVoTnhtS3diVnc1clhUdmZtUjlTRmVMOFB1Um84SzArZFE0bVl0?=
 =?utf-8?B?bGtkMXRkZjNFd281Ukx3ZDJWdW5pbThaNkFtbnZVV01uQ3lSYUlYUTlIMUV2?=
 =?utf-8?B?WEVuckpBeEtRcjY3SDlWMVhGQytKY3kxdjZubnBEZkFJQXMxelMxUXpkZERB?=
 =?utf-8?B?YjZ0Zld4V1FaZFpBblhUUjJNbnBjYy9IbjdmMCtwWUZnWEp0VWprQ0l3TmVi?=
 =?utf-8?B?Z3JVTGtZcnB4VGVCQnJOeFlKSFAzVHRxSmUzeCt5M1BDeUZFd0gwWnN5YUR5?=
 =?utf-8?B?K1VjMDZyUmwzOStEa2pJbndaMWxNcEE3U0QzTTRxNGRNNzk3OTl4MC9na0Z2?=
 =?utf-8?B?em8yOFY3MU1vS21JU1dyWGVld3dKcTREVGdYdGNGTExmdGFzcEZvVnROVlEz?=
 =?utf-8?B?ekx0V1FTbDZobEtJc1FSK3J6OFRzcWxGSE00UXNjTkJ1ai9mc1JrTnc0eEJT?=
 =?utf-8?B?RlZtKzZuL1FHaEYwd3RBcnFudFNYVjR4NDF1ZjY1S1pRaG1yOWRnTkxEQ3hC?=
 =?utf-8?B?bURKWEhjSS9ESFN0eEpHc0lISzBTY2lEN0JxdE5DV1lpQzNNd3pkTEpaYlN5?=
 =?utf-8?B?T2ZyL3A5cTVzQ1FBRU5sb1BQbE5lYjZpdmhjZVl0UzdCUmxrNFBENE1JOUlN?=
 =?utf-8?B?R1JuNVdvYlBYQVR0TUczZGtmV2dFUDU4Nnl3ZU9DRStiZlh5MVFaSkZaUjFy?=
 =?utf-8?B?NnM4OUU3TXZhdUNkN3RiV0ExdDhQSXRQcytGd09laVRQeW80RFl6L2V2WUhB?=
 =?utf-8?B?aGhreUpSU244L3ZwajBUN0dUUXRSMTVYSTVGR21hSmpuTVJCbU5EbjJ6VC9B?=
 =?utf-8?B?VkxNNmlvZ2NSQ2RTSTR5NXl2UElTYkR1ZmllbEw3YnZOWmdCQTcwSFNPMno5?=
 =?utf-8?B?WW4yS0JPeWp5bWg3MWtwYVN4TEJLVVJldUhEY0JXd3UzdzczcXdxSkNiTnAz?=
 =?utf-8?B?bWpncTZNOTh6Y0hrVmRFL2hRT2JNZ0VHOHZXakVFdjIrbGd5MEt0ZFJPOVc1?=
 =?utf-8?B?NC84ZEw2dExqSEtZc1p0Y21KVjNNbmJ0K2d4VDYrMEFkUFE3elJYcTNyZE12?=
 =?utf-8?B?cFM1U3dLL2t1UEVvcFJKOGpHNDNOZERxVUluQmJmV2dZalRDL2V4cGJ1Q2xp?=
 =?utf-8?B?bXl2ZHRZcG1jQnVBejZNbnZPT2ttRVYyeFdqbHdCcWpZcmFuTEFoT3I1cGpn?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0788ddaa-50cb-4aa7-a19b-08dbf2b601ee
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 21:39:33.4202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O1NlHkvEq0RTR5Hv1nUXzcleMGOsjgUV+Owo0mmNSIJcDm+YmiRz58gJBt5ujsq/xj1BWk+iVQYAAiidGwnuNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6829
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/mtl: Calculate the correct
 voltage level from port_clock
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

Quoting Ville Syrjala (2023-11-28 08:51:37-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>On MTL we need to bump the voltage level to only 1 (not 2)
>when port clock exceeds 594MHz. Make it so.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 4 +++-
> 1 file changed, 3 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index bcfcd7e789f0..dd04bd7b348c 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3699,7 +3699,9 @@ static int icl_ddi_min_voltage_level(const struct in=
tel_crtc_state *crtc_state)
> void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_pri=
v,
>                                          struct intel_crtc_state *crtc_st=
ate)
> {
>-        if (DISPLAY_VER(dev_priv) >=3D 12)
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                crtc_state->min_voltage_level =3D icl_ddi_min_voltage_lev=
el(crtc_state);
>+        else if (DISPLAY_VER(dev_priv) >=3D 12)
>                 crtc_state->min_voltage_level =3D tgl_ddi_min_voltage_lev=
el(crtc_state);
>         else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
>                 crtc_state->min_voltage_level =3D jsl_ddi_min_voltage_lev=
el(crtc_state);
>--=20
>2.41.0
>

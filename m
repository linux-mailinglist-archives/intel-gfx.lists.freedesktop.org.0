Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DCF801561
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 22:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A9810E96A;
	Fri,  1 Dec 2023 21:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B59810E966
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 21:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701466184; x=1733002184;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=BH8GHPhOyaG1/UB7ZH8Y6VvLiuJTHfYDyP23vn6+/NA=;
 b=S5n17SVxXtY8xg0YULqmvr6VyIBEiNQ8aS34jBijW1OQOMu/rJ8dTdPv
 45zoW/0JNJKMX03A8V5vGi4xln22hbEDCI61X5suPAPPNVvPO8cnBxwZi
 llvRUIPYi2Vj4Re6xmeSU0K5UhyqoWWuNtw95slba/PokMKpt5BjAGo2R
 9ozKlRIoqRYgrVtvwFdtZn5W1kKYVM+b9J3PvVcDi3GuVnBkLXlRXOuL0
 oFLK7KRm07PyvSRqQ3dY3GIYcXzVuuq13MpZUQEVWE4dAcwlDVb49IV2D
 RKRX3D2E1ApMCcrzwumyae9s8+EO5uElW6cxEQXNc+hkhES8EGjND8Mmf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="435685"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; 
   d="scan'208";a="435685"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 13:29:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="835891118"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="835891118"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 13:29:43 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 13:29:43 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 13:29:41 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 13:29:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 13:29:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FEbifiq85YBsx2owFKV1W5RTEUWAAdNgbtP50la8aewW2BelwBhmlSZQYCADkc3QczzIYgpWsNGwKy9xiVLT9gkw8Dv56mT7m1kNoQlVAPWZ6A5VlCFeaG3QlnR94Y9cmosW3xEisMXeIBDc6MzMOOztBo6Nu+qeIG3BHC6ZCiXFRAwxYYRXx5qght3kcCt0M9W1o7IzhekNshlmpUZVSbAN/iSBXgaSrqGgBukrO4VjPHtCz0wyJGMNeEsDKHXDymJ7WNZXhSj8/HWHukMEKTG48Y5grMgSZ+xjz1v2dCIjMGogPbuPYaBaF+lqCHwU2uRWOOqYZG1a3P5vuFtfmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CXkAXBKRUb3ixQfn/eHp1ejosxRxNeV0BBbt2wgHCkw=;
 b=iXE/w1OGnrzyWqOj7mdPTu3czEaL/maBqGMEwPAFewR7tqNQ8TL6E8qL8GGU3D3XV3J8qWblYGC8dy1sO+qJYG9Mz8ZXpQtjrDozP6YmELlDDgQ2s5zDtLXZgUXg2By5NipiImLkIgyooI7R/003ngNH6cF61mv8wfxdDWL5FjONbB+C5CRe8y8+bQzxjr+xzWmIoJEbU/8fucC4356iZVA6bLlI4VBf+3x4BgE0ZBZ5b9fGJOnGkev6gLd67orPRTDu6XWguHhsGvIDGk7/p5Ke3sqdQvKR1UW3wuojx692DlFvUsGjrmKN4HT9RWMa37c8XMB06byhGsaFgEXK7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB5832.namprd11.prod.outlook.com (2603:10b6:510:141::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.27; Fri, 1 Dec
 2023 21:29:39 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.028; Fri, 1 Dec 2023
 21:29:39 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231128115138.13238-6-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-6-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 1 Dec 2023 18:29:34 -0300
Message-ID: <170146617453.74196.6334882937324618550@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::12) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB5832:EE_
X-MS-Office365-Filtering-Correlation-Id: 20ee6930-4e4e-4cce-36ec-08dbf2b49f5e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MLr/Sq/PNC/FaeU1jun/WiTDIZBYxKNS8FKUrirE+y8tkhStb1kmP5azh2OdUGWEUPXVT6sa6/n/JfJAJerQXRLqYf8X4uYFodMdFza4N9I5OkraiswOfciJrxxEcT+ZKUV5tBiYhLyUlleLRKmeimvrdtu7bw4F6Go/+umRr19WUzD2FPOQKHCzif5cJ2vq8ILY9Wxi2pj47ndKNg9cSdAGQtyXwl776kmup1uREvj7WCu68hvW7dKTZWRE2yqWH7R8zWHCoDK5OemxJKHuC4LQEHoLu5w0Ja6mjC11UCmCrpMITtV4WNpADPZxYqojrRC7es1n5HVpY8wtSxlf8mwgNmUICvDGku7Hrf+ZmBXV0QE8m/2pldk37b92uiExFhc9M8KFUC+0kpOinEFzQD7LcPkt12kvfwd2nFJDRYV41/GmRYueBvpvx8g12Ebyg2um9KTHARF4ftrnTshCvWPWWS8kAx9et6mJASxGbNrPAinI4Vt9y9Z9oVqDl0MLy1/s4gSwHUdFtkheXLJdkmQs2zkjGeFF78alXPNaArhDUl49f8vryFwmsNuaDxD0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(39860400002)(396003)(366004)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(38100700002)(44832011)(86362001)(41300700001)(5660300002)(2906002)(4001150100001)(66574015)(83380400001)(82960400001)(66476007)(66556008)(66946007)(6506007)(478600001)(6486002)(6666004)(6512007)(26005)(9686003)(316002)(33716001)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGg3UGRrYkFEaUxUUjRXSWlFRmg4UDRnc0dPVGd3TGFPejI5R2hRb1AzaVhO?=
 =?utf-8?B?dElKc0grc3RFMThKcXdQWjF1RjhybVlTTDhVTEYvZklDMTZ0V0tlNmcwQWY0?=
 =?utf-8?B?aGdnQkk0RmdhMTg0UUJmSzJUMDE5Ly9RRzhiKytlQUNvRTRLaWFXS29zRmUv?=
 =?utf-8?B?Qm5saGtvaEx4cTBic0d1d3B4aXBVdmZIWWNSZ2tldVNuWThRam85a2ROYlBV?=
 =?utf-8?B?Q1MxaS9xNDJ6aWpRaVNuK25SbVYweTlvV0hnYmQ1c21XSzBIaXJkZkZlMFpW?=
 =?utf-8?B?SGlXL3FIOGpXSFRhalNCQ2Q2VWlNU0dXYnBHc1BIQ2tHdXhQWFFRYVdNZTNU?=
 =?utf-8?B?OHRHd3hNK0svR1phMWNFeG5sYzdYTFQ3czZzUFNHN090TjdkbHpxbWp2eVRM?=
 =?utf-8?B?S3kxejRmSnZZNlFMOHRQcnBjZGdjSXpLMy93U21sZWMzZHBkaEtzS2dwRGpn?=
 =?utf-8?B?QzF4RVlPUUJEZHVySGNPMUlocVlTNG9SZjhuaWlabWZ0MjQ1bXYwY2FFR2pQ?=
 =?utf-8?B?VGE4ZGp1NlZDR1BsbFMxU0FseHo0bzRMUk9GRS9WTFJOQ3RuM0Q0VDdkMEdn?=
 =?utf-8?B?cHJ3VlpQMHl6WjlqdmtLdVpVOFdGK0RUY1lTaTZSc3dncnVreklzdzQvSkhE?=
 =?utf-8?B?YXkxdnZ1K0ZaZlJHMXZoZWRCbjNqbmo3Qnp1Wk1JM3pBTDhMQ0piM0FCeE9R?=
 =?utf-8?B?eFlKVXFMQWppYVE5YkVQc3liKzdtRzQ4Nis3dnVjRnE3TVN0a1ZPeWJFa1NX?=
 =?utf-8?B?V25vRkhpbW1uc1hjUjhmTDl2VUY0Z1BBdnB1cGhyY3BUQTRuS1lteDNiQ1J2?=
 =?utf-8?B?czBMTlAyWXdQYmE1cjc2SzVLRStTUGZRS1k3dWxpLzZDS1JHNUJjaCtsUWxC?=
 =?utf-8?B?UGRFeDJwencwcXl0TnR1R3VFRnNMMjBXcUFWVm1RUXpRcmc4YiszQnZUSS95?=
 =?utf-8?B?QWJSRE81cC92Yy9WYjFvOE8rclJubnJFcTdUZzlic0RHRmY5VUs3MUNVRVdU?=
 =?utf-8?B?SjR5Vk1TK09wZ3N2Mld1d1U3VnhYUEh5VWxMKzd4Wmo5SFkyY1Vmdkx0QVla?=
 =?utf-8?B?UUkvdG5SZTVwZERNR2JoU0J4cU0wUlhUTU5idlIrWFN4M1E2YjdmbU1wTmRC?=
 =?utf-8?B?UllCRGJGZzdpUHNkNE9oTG1DUWUydWY3MHZQSkJ0WmlEVWlsSjFRd2tiKyt4?=
 =?utf-8?B?b2VpSmpTUzVNQ2ZiQ2wraU5PVm8zamdwOFhmQjhXNDh2K0gzZkxzS1BvOU1X?=
 =?utf-8?B?QTF1LzRSaFNzd1R1UUlyYjV3UDlRTFRSMnBuTDc2MVJWekV2YkVzaEU4cHZC?=
 =?utf-8?B?VHMzMUVyZStpVHg0d2tBSzV4QVdhUnVPU1RaN0MwTUViajcreC85ZGFwdWlj?=
 =?utf-8?B?VHdPK25HTy8zYk9XZjNzdG15UkZrTEVIcS9wYWpSbFEzcGlNSjZ6RUxuNTB0?=
 =?utf-8?B?dy9VMWFVcC9OZ2xheXNrd0ZEM0VpQkdOS2J4UzByQTBYbjJmQS9jVCt3WHZY?=
 =?utf-8?B?QWJDL1FiVEY4OEIvbzV2d3U1QVFkakZSbDdIY2tWdjBqU2kvaTR2Z2E3ZEUz?=
 =?utf-8?B?SlpOK05GZTBaR05Gc2JMVjdUYXA0akxYMTVMNCs0ekx1SFFzbnFuYWpBc2ll?=
 =?utf-8?B?RFhSclMzRmdVV1hCRC92K3YxRCtrdVhKMUlLcGFFTTgxcnFZVEs3R25aZFh0?=
 =?utf-8?B?L3ErN3Y1MTBaY3pUbmdaUVVDSFN5d1R2ZVQ4Q0xBZU05SVdld2dNTE92d1RR?=
 =?utf-8?B?Uk44Qzljc2dJYTBEd3BGQndwTzEvc3FuM3djVUVHelZFc0l2dHlpb3JWVDg5?=
 =?utf-8?B?RENhYytaTmZYZG50NkFSelJCSDhZaGc1YjFFcUtxWnRCZFhIcVpxcklDVU9I?=
 =?utf-8?B?R1RPNnhhU1AxSk1RcUEwUmlEUnNVdGFIbG1KNU8yL214NjQxSDhHUkZKdnNh?=
 =?utf-8?B?dC9LeUc0bmpkeFZwb2UwcmpPeDFDWTAvcFE1L0RNVEhOVE5rMGJjblpiVity?=
 =?utf-8?B?LzMwQklMZkg5ZExlMER6ZFBYL1FHRG1DUEJTd3c0a1pvN2pFZzh4eTVsWkxO?=
 =?utf-8?B?UHNmWDNKdGtLL0w1YVo4SVNDUGRyS2NHSTVsS1VFSDRGZm1JdXhyb1NUNFpV?=
 =?utf-8?B?ODRIWjh0Qzl2TWdXZXg5ZE5Zem1EdnkybVZYbWYyeDR6RzVJYmVXK01Ec01U?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ee6930-4e4e-4cce-36ec-08dbf2b49f5e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 21:29:39.2639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eYywLG246+sbMt4n5m4rSmge4F9uFAnnyQdURBzwOiTigydAr7IEceGDDrzMrp3vJ7NoxA87mMMBEbFf7BxYqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5832
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/mtl: Fix voltage_level for
 cdclk==480MHz
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

Quoting Ville Syrjala (2023-11-28 08:51:35-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Allow MTL to use voltage level 1 for 480MHz cdclk,
>instead of the voltage level 2 that it's currently using.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 6f0a050ad663..f6446102490d 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -3512,7 +3512,7 @@ static const struct intel_cdclk_funcs mtl_cdclk_func=
s =3D {
>         .get_cdclk =3D bxt_get_cdclk,
>         .set_cdclk =3D bxt_set_cdclk,
>         .modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
>-        .calc_voltage_level =3D tgl_calc_voltage_level,
>+        .calc_voltage_level =3D rplu_calc_voltage_level,
> };
>=20
> static const struct intel_cdclk_funcs rplu_cdclk_funcs =3D {
>--=20
>2.41.0
>

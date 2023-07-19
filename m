Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1C8759EE4
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 21:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF24110E11F;
	Wed, 19 Jul 2023 19:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2FC10E11F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 19:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689795836; x=1721331836;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=qVq9W1dgQkqMBAJT1oLAoJHzXuKbnLqUtOIaG+IKh/0=;
 b=e+PVzLbeXpJLLTrbyIXOu29ysmIHbgY8W9Lu34dkxpm4GPZR6ChOBiDa
 wsa0D4HQlbMqAUoWlvSi6u61MUzxadsPiIGNaGn18rNPE9t3HeDIlgsDb
 Sftk/0KYH1vA6e93j4pDUeg3/TQLpUPIswKoy4wi2gu+faQjBMKfu8xYW
 pJ0q59+w6YPNGgvMF4t/F9bKcaLWHifV0+KMo9pa+l4EahWLOx8DXTAxe
 NPWv/XHQiAAETq70EVy7E/BYXjS1hJgT654FYJBm2hkh5WTEWweRIPRN6
 jT6+sVk6ak4NmxMOagWbSfEohVOftmI12hDr5q9mMDmhjwW9ryl00jh/A w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="356516992"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="356516992"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 12:43:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="701376051"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701376051"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 19 Jul 2023 12:43:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 12:43:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 12:43:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 12:43:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lYvLRiVvFfVR0C3TK3f+WqSbTdx/L0p5cwYs0kgymdRaJtePg0htrKRlAC/Wc/6+tsBqWCnwL0kCv+hCwE2yKnpEFO6CztIy7SzEMWeTLbUGdjnrjI37EXLs+xn1nbL6KMWmRD3YWLlL12yDDPF7qMk6IPfrjiA0/U5YEH6Mro6NYsRg5rgk5h/WpX1QLHy6BaP77eU4GOMQOrZko2IJKWFBDRxwnCTtTeUQ9ohzvWNkvcHBo19PZVSzNnhly6Cm9/9qvqfxWD5b33rzXwKqKOePhbrt03f54H3S2+XB0qPqjseBBkmBJJcPvxl24HSmMTN5a2//Q1BeM7EjCw5Elg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IsU4K/OMx3vJObbph0ymOoiHgksDF/3nxGCHvEH1jXU=;
 b=c0wqKhLwnbZ/Z53Ea9oCQgFtCzurrkQ6izASgn+OHY5nkLnoV7hH/uQcZw6Zq7DtLbzlCUs6lTldyC82XXjMqPF7bVzqJIMslxBERglXUwWVl4Wc/6HTsmlDUTtHx5xsngQ5JhpbXOilBePflIm1K7PtBDIDA4NmhtMoUhuwy/0xsWupNLbxVgwFshMkaEk/iz+fhmYvrR+pPzxTP9WMy8hEH7gUhfouJDSfOoIW3W+YV3NJQx8iSkNojohqI1/sGYfuFIpRmRiyi7PvlmNCo0IRAeB9EdbFrHR+oz7lHvDJfGvMXfV7Lz2HYqjZhRVeYejVlto4DcWYD7i9LQu+XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA1PR11MB8255.namprd11.prod.outlook.com (2603:10b6:806:252::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Wed, 19 Jul
 2023 19:43:38 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 19:43:38 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <168979556510.1692803.8355036886759470368@gjsousa-mobl2>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-17-matthew.d.roper@intel.com>
 <168979556510.1692803.8355036886759470368@gjsousa-mobl2>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 19 Jul 2023 16:43:23 -0300
Message-ID: <168979580380.1692803.5522987596842110095@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW3PR05CA0002.namprd05.prod.outlook.com
 (2603:10b6:303:2b::7) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA1PR11MB8255:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b46aadb-6715-41eb-37e4-08db88907284
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nUeJxTLRe3uT/+AdBybnytcrUR2eYie8v8hfiRV+dwO4D5oehrn9TpubO+8q/j7owyCCV669eEeKVtzqOHRvBQP667qy/ABeZ0+ctOkhKY24CgVPhpAxianp1N9KtKzMJngjP+iFnXHO8g408qYvdp1ggUxwQrvK7Zh9tSJfgPycuGoZxW6wCcSPKXuR5faT86Y3DtnXkWGLaRC7FpvqxeW7PKUMK2D9MyhHiiprJMuoc4S4No1qT0FJlyFe35qVHDa9Xls2tk5omXkMgqbtf9pPZlhb0b46zXkyHCx0j1+T06YOm5WVxLGgSe/OEBLMAz0QlM8GdTG8+EbQQmi2tT4C7nTXapiOMPcHYreglemQWqT8nWe7r7jiP/pDv2lMT2+mDpOI2vgSnzFtT2gBJ7oz01WmvLK5KsqMlHYL/a5Y7SuYWfZ5ybv/Y0N6JnE2vYEhzXAcsPBPhAVkaab5iU/ZEIuENqDcHq0N+5dTG8BrBhcK/8rTTsTSa00zjNaZslNkosa8HFuypUgNQ6sB4OzZbhZKDXl6DwWO2gF5PWHdxSBsFkNPWSS2Y1zkF9/R
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(39860400002)(376002)(366004)(136003)(396003)(451199021)(2906002)(82960400001)(86362001)(107886003)(6506007)(186003)(33716001)(83380400001)(38100700002)(26005)(478600001)(6486002)(6666004)(6512007)(9686003)(316002)(66556008)(41300700001)(66476007)(4326008)(44832011)(8936002)(8676002)(5660300002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c29UajdCYWNJQ2JWQlN3Zm5XVXAyaXJaZ2FCOW1iYVpxajZSZG42KzR6UVZP?=
 =?utf-8?B?TUJZdmg0NEhDd2VNaCswK0J6VHR0WTdlSFBOV3h4Z3ZVSklUaUxEdHFDcnNv?=
 =?utf-8?B?OU5NNGVqbHRKUjdEVVdONG9aaCs1OUg3em8xeVBFdjdKVzladDBISEZUUXJ6?=
 =?utf-8?B?S2ZmS0lUQ0NKSzNCaDZFalc3R2lURXpjTGlYRnZxYnNpZFVYVWtXNEhBMTZP?=
 =?utf-8?B?dWlEbTNNa2p2bnZGVDhXYVJmRjh3bWsySk5FZDlTYTN1RTNIMEVwOEJDOC9x?=
 =?utf-8?B?c0RMdnVVY2dIcmIydWpYZldwcWh6QzdwdmVHVC9leTB2SEhJdTZ3OGpXY2tm?=
 =?utf-8?B?NzJSUUFvNGdkaFZ6bU92YjJmellLUThNMWdvcG5WUVg5aU51cVpZYjZEYjlp?=
 =?utf-8?B?SWlTOE83a2lnZTExY1JuM1NNN2ZSbzlJQy81ZlJ4aFdVMnJ6Y21JUkNWdkFH?=
 =?utf-8?B?L2d0YXNPaExrQ1cvbks5REpKMjJudThNdjRKUUVneUtFMUFMN3lrOVhPRWJG?=
 =?utf-8?B?L09HOEQzTE9ZVTlQVEhWOWNnWlpHT1hxODZVbHJPSHZwZERIVGlpaHUxZ1l4?=
 =?utf-8?B?R2J0WjI5TVlyN1gzd0YzejcxTkZONFM1V2xEWlBnL0FYTTFuRFhVVU1kYTBz?=
 =?utf-8?B?WS9KL1Z2Vmp2SnNYdDQ0bm9VZ1lxdkFSY1hOeDJKMkhTVlRER1JJV1pYTDlq?=
 =?utf-8?B?RHFrOFRZR1Zvc2FkZWg0WEN5bXdRdkk2K1ZiMFZPS1ZvWlFRZ0tLRzlSb1lG?=
 =?utf-8?B?N0dWdEp0OW8xZDJPenZjVFdGc3hoV1hHWXV1cW1rZTNSQ1RaUGV4VDRCeEs5?=
 =?utf-8?B?d2RZZ1ZTbCtaUHdSdUJSbHZaaUpGOGh2NGJzbTJxR2p5bEFnb3BET2ZzVTlX?=
 =?utf-8?B?V3N4TDRqV0NZR2luMEwrajdOOTg3SDBRQ3EvSFQyaXNndFN1RXhvUkFrZTc1?=
 =?utf-8?B?N0RjQThSTVJHT2F1NTUrQnFqUTFKejZkdHlob1VsNXlUWmI1aWhEN0xreFVU?=
 =?utf-8?B?K1JGWXZCS01CVGlBK0ZsZFRXOFlSYlRaRVIzaHRUYVV6S0FrRGxGbEFDMlBt?=
 =?utf-8?B?M092d3k1L0lLRTF3MWFySWhxUFZwcmpyV2RaZDJKa3dVVTZHN1FUbU5wbVZN?=
 =?utf-8?B?OCt5NkhidkJxNHcwVEpqMzJxWm4xemFLWDl5czFYbmRSbmNscHNBNmhhREgv?=
 =?utf-8?B?UjJWci9qRVFWNUJ6Y0FYTUxTTlVtYzFqaGEzQTc1WElwQkx2K09aOFVGRFoz?=
 =?utf-8?B?UGI4amE1RkFrR21FeXhPQXE0RXo2MVJVRHBEbmF6OGdRVmptaFZNQUtVRVJa?=
 =?utf-8?B?NnAwaUw5c0dFVEtKRDBGMVRMK3dpQThhUVM4VUxScjg5R20rdHZqOXJ2eFZl?=
 =?utf-8?B?bnhQTzJWS2MrcnZmRk5aODlsSmRuYlNHUnE3V2RGaTA4Ni83QzkxNkpUSGRV?=
 =?utf-8?B?YjZNeXBHc2ovdmZPMGI3WXdlblh1WC9VZHIyelFJVkt6UFdhanBhSTAwUEVw?=
 =?utf-8?B?TUtkOEFxRUdBaitmTjUyMmJXejExZ2lUcGp1cXBMdjRGczVIMUJpU3lpWWNi?=
 =?utf-8?B?dFZCekdzZDBnSU1sUWhDZnEyUzZ1TkNWZTlBSkxjdytqc3VMc215WnZYN2Jt?=
 =?utf-8?B?RExmKzFud1BGOWR3Q0NFeWtxd3VLeGpBdXlEZCtibDFkUGY3REZSSHE1dGZh?=
 =?utf-8?B?S1FHK0RBYWt2b3I2T0NiUmdUZzE4MDdndVdHaUlsOW9UUklJWjM5TGMwNHE4?=
 =?utf-8?B?TkpNdzRua0Nyc2VXZ0Nhb2NCcWhHSExPVHZOQnJNSGZpZHNPTjhYY0kycG1Q?=
 =?utf-8?B?UldjZXRSdkZRSkVoUnpnT0UyZnZPVzQ5QXI2bWUyNlNEOURvUFdTK3hvWjky?=
 =?utf-8?B?cVFZNWpGODlRUnk1UStlL2p2eW80M21iRFNPMit6Y2pna1FPRDRaTENxMENh?=
 =?utf-8?B?eUJxTWtOYkdoSWdqV0hoQ0VwV2ZYL3ZnNk56QmZ3Q0RhZjdLN2M2RjF3cnk2?=
 =?utf-8?B?dGFNWlp1UmdmUkRxWWpVcmJTUU8ramJta0dTeU1PRzQ5c1FuOW1LOHVFV1FF?=
 =?utf-8?B?azY2WnFxdGh1UXZtWWpFdlkwUTNFOWRKSTFDVnZyWnhQWGEzTWpLb3k0VW02?=
 =?utf-8?B?RHdmY0l3ZWFxQXhyYVo4d2RoT3dUb1laSnFmTmRVUjNiWnVlSjZoV2x0T1Zq?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b46aadb-6715-41eb-37e4-08db88907284
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 19:43:38.5338 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5it07Mu8PthYtH2YD/e7Zi+TO110dl5z3tccE5ktulb2kY9fX9s0yJPbrEiOEqKvshIMwUyQCJnKlZt0BB131Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8255
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/display: Eliminate
 IS_METEORLAKE checks
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Gustavo Sousa (2023-07-19 16:39:25-03:00)
>Quoting Matt Roper (2023-07-18 19:28:01-03:00)
>>Most of the IS_METEORLAKE checks in the display code shouldn't actually
>>be tied to MTL as a platform, but rather to the Xe_LPD+ display IP
>>(which is used in MTL, but may show up again in future platforms).  In
>>cases where we're trying to match that specific IP, use a version check
>>against IP_VER(14, 0).  For cases where we're just handling new behavior
>>introduced by this IP (but which may also be inherited by future IP as
>>well), use a ver >=3D 14 check.
>>
>>The one exception here is the stolen memory workaround Wa_13010847436
>>(which is mislabelled as "Wa_22018444074" in the code).  That's truly a
>>MTL-specific issue rather than being tied to any of the IP blocks, so
>>leaving the condition as IS_METEORLAKE is correct there.
>
>I grepped and also saw usage for IS_METEORLAKE() for RC6-related code
>and around clock gating as well. I'm yet not familiar with those to be
>able to tell if they are platform-specific or rather specific to sub
>IP(s). Just thought it would be worth noting here, just in case.

Oops. I was too quick on sending this without realizing that this patch is
specific to display...

>
>>
>>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_cdclk.c   | 4 ++--
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
>> drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>> drivers/gpu/drm/i915/display/intel_dmc.c     | 2 +-
>> 4 files changed, 5 insertions(+), 5 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
>>index dcc1f6941b60..4cb1dc397b62 100644
>>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>@@ -1840,7 +1840,7 @@ static bool cdclk_compute_crawl_and_squash_midpoint=
(struct drm_i915_private *i91
>>=20
>> static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
>> {
>>-        return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv)) &&
>>+        return ((IS_DG2(dev_priv) || DISPLAY_VER_FULL(dev_priv) =3D=3D I=
P_VER(14, 0)) &&
>>                 dev_priv->display.cdclk.hw.vco > 0 &&
>>                 HAS_CDCLK_SQUASH(dev_priv));
>> }
>>@@ -3559,7 +3559,7 @@ static const struct intel_cdclk_funcs i830_cdclk_fu=
ncs =3D {
>>  */
>> void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>> {
>>-        if (IS_METEORLAKE(dev_priv)) {
>>+        if (DISPLAY_VER(dev_priv) > 14) {
>
>I think you missed the equality part here, should be DISPLAY_VER(dev_priv)=
 >=3D
>14, right?

...so, with this fix,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>--
>Gustavo Sousa
>
>>                 dev_priv->display.funcs.cdclk =3D &mtl_cdclk_funcs;
>>                 dev_priv->display.cdclk.table =3D mtl_cdclk_table;
>>         } else if (IS_DG2(dev_priv)) {
>>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
>>index 1b00ef2c6185..025c80b9fece 100644
>>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>@@ -31,7 +31,7 @@
>>=20
>> bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
>> {
>>-        if (IS_METEORLAKE(i915) && (phy < PHY_C))
>>+        if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0) && (phy < PHY_C)=
)
>>                 return true;
>>=20
>>         return false;
>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
>>index 43cba98f7753..85efd77f491b 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>>@@ -1767,7 +1767,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_p=
riv, enum phy phy)
>>         if (IS_DG2(dev_priv))
>>                 /* DG2's "TC1" output uses a SNPS PHY */
>>                 return false;
>>-        else if (IS_ALDERLAKE_P(dev_priv) || IS_METEORLAKE(dev_priv))
>>+        else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) =
=3D=3D IP_VER(14, 0))
>>                 return phy >=3D PHY_F && phy <=3D PHY_I;
>>         else if (IS_TIGERLAKE(dev_priv))
>>                 return phy >=3D PHY_D && phy <=3D PHY_I;
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
>>index 5f479f3828bb..1623c0c5e8a1 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -998,7 +998,7 @@ void intel_dmc_init(struct drm_i915_private *i915)
>>=20
>>         INIT_WORK(&dmc->work, dmc_load_work_fn);
>>=20
>>-        if (IS_METEORLAKE(i915)) {
>>+        if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0)) {
>>                 dmc->fw_path =3D MTL_DMC_PATH;
>>                 dmc->max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
>>         } else if (IS_DG2(i915)) {
>>--=20
>>2.41.0
>>

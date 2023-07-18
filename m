Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2667584F7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 20:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D50C89023;
	Tue, 18 Jul 2023 18:41:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7341289023;
 Tue, 18 Jul 2023 18:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689705710; x=1721241710;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QFF7OpIdSzhf+V8ZuQ+/iaJ/Fvj1JcC9rg3KOHLUzBU=;
 b=h7MKvDNJwSTmibEC+iJsxY7SuQcKTlCalMVmGowu2MwZb2IcqlxwfVTf
 VsCYyzjhaH9flyCw1hNq01Kzo+yFS+bIOrbRA8NH/Zx+BdeC1QM6430W/
 tMPw34Ubr9LHkInH8ISHRmfpHOJ/mc94iYqgkRT6eGAiC63POdJWACpUX
 JdR4VxjMcBCySY4+7sxzJTqqMACEvewBa3Q5lc8ApQZO7APofJLiPtBEU
 GvPVtvQfNmjs9mnAlhpDekNUj0Ygmdqb25zooXyFPjVnLToodXoJjyrOT
 WScIzMaS673dC+v34i4aaydRkoSGW1eHbBEz22ZwUrl1O08p1TIL2Bus8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="430047516"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="430047516"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 11:41:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="717706572"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="717706572"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 18 Jul 2023 11:41:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 11:41:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 11:41:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 11:41:47 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 11:41:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VdS9TDgrs//uGDE99+SsHX61OdXI8fraCmy3BKTjmqpoaeCkQxgJ9eccZPHqA0ihCevwIaTfkxZhXoBOY6sKVp8MeljP+pm2LpAjiBywwsYCa1MfxkziTPxbn633fqeSXjUIBXSsp7pioa1SsvuxXJLYQma3YFs4FOcz4dIKqRlYbw7P5Lj7O6usZ2SlnqRhPJdD9bwMwEhHBKMypEwq7Am2rG1huvnnk7Ftbe1fEf7T9AYHFEl3jTlhjWwwUKEmi5wpB3/Uvq4XSwYNb+V7yaFK9I+CLB4FNLqyQ3JG4aU6G0uWGd5xqUcEntpUxm+Gju5U0nw1tJQ9tGR2a/tQcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oV/De34YTSoBPkTZ+2kOwZ/dT1zShuWgRN3IxYFVGC0=;
 b=fw32T5srUpUpg+qbJ3hbJjrxNS+rFKuGELmWfnk6h4h4bX7+iaYjdrh6r6T6r6JPV2JwPFJoxiIGs4U2WP3XeaFme/knDAGGBoCjIxrLemiznL/zkjVw7K7nSAiTiobQu6gdfOmlSRm3rG01yIxKt/fiElcWtASVQMmBXfks0nyzosxWcQgnsr6Et74IRmvXcQ2UT5xNgaykdgFRQrYh04Z/Ft3n5mTB7Hmrx1ucVbUakdUFWGt3majzUcVJ5QV8cmhoZANZiJryYSsFHBFmAs4u92ksyaC0nef1Qxkv5qlojgzkuOZnPFgeaLxfXxJNXkbl2WUEh1xJaUcF9ar5VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Tue, 18 Jul
 2023 18:41:46 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 18:41:46 +0000
Date: Tue, 18 Jul 2023 14:41:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZLbc5cYo1d3krnfm@intel.com>
References: <20230718084041.871888-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230718084041.871888-1-tvrtko.ursulin@linux.intel.com>
X-ClientProxiedBy: BYAPR21CA0029.namprd21.prod.outlook.com
 (2603:10b6:a03:114::39) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW3PR11MB4635:EE_
X-MS-Office365-Filtering-Correlation-Id: 17b2cb06-749c-401c-0c46-08db87bea35c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j+9vEhQwuRFqULKzvhJiROkC/78dJOFWQWdGQMP11SznmTmOJjegTrgbUYsCobEbxtz+77bDKDj4T3C4DiBbJ7oR4SlcZAbzH/rFVpu7cR7vZU99lqOViB9Ou8VqaSgl+33qVKVuAlGIb+jM/dNfVNhIA0b61ff8EUuAibTakN1VNTUg9pekcY1lwGgwpa8le5CsgSt1qc43zmZrRR4bD0fUhVlyOXMoe4fyj8Bek3PAVG7fI+pXagR3wPZEo4Y9W1jDCHkPOxxwhausCdBK51kSToplXYoqXAZgcHUWxgNNUjNwK320rENhUdskBt9eODvCi97oL7MJFVBLFsCgW6/cwwiOSkPdcc51hd5G89jbpzf9VplpmRwaS7YfGDjy2TqWQFW4zjMrXM0p0bjIA/ubwDDCFDLkKYNXgQrQp69cajFriQLslTCrv6JPPvQIDCO+IoU1BTi+mlrCHhINHHNb2WlRxMbFxDTLZ4tH8zukup6/2rchw18CH4nWG5OwwQHrSQ7ZCPYmeowZsJ/dmThqboElXGCocCDVrLCx9OgWTWIHOYedlATaNSMMvFzQQNYfHZioqisWPYoMkJk9ehZP+axbJlyXaXRsy9kwyvFhq/22R+iCAH9uYIoTyVnyyAGvhhmmsYapSwVrdDNUkA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(39860400002)(366004)(136003)(346002)(451199021)(478600001)(6486002)(6666004)(186003)(6506007)(6512007)(2906002)(26005)(41300700001)(44832011)(5660300002)(66556008)(4326008)(316002)(6916009)(66946007)(8936002)(8676002)(38100700002)(66476007)(82960400001)(86362001)(83380400001)(2616005)(36756003)(34023003)(148693002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MvnhNymM3zCRUrYH8OfNlXIHk98UwpRBVrT6Hn0zxkUskLaFpvsW9cfN+ncP?=
 =?us-ascii?Q?qICjlDe0BQ8jh51X4Ydw7VUaes7UfTZFJiFLYJ+btnN70gPmjUXHl0+wTcxQ?=
 =?us-ascii?Q?2yQzlljDjeKEySRmxcP3TVQ2k2pih1huOSyX/GMiXiIvcCIgFHiIr78O3IIV?=
 =?us-ascii?Q?erp+3xjsF5SR9D/yV7YSZBFsMi9InXOkHvlsrXeJfIALXZz0EsqsVFZP8ecZ?=
 =?us-ascii?Q?pmWFFDy6Cn5IlmqGmVhi4oFyCNO0ZT65K19zfcXJGSepFvKMEDDqqEnSN9nq?=
 =?us-ascii?Q?vNuRUDuUmyd412RgIUINCl4fxf4ViIEWxc5Gb7oNGqVmNgjmdtYIgHV1WFnh?=
 =?us-ascii?Q?44ot+guy0cxdTnYkWkzt/HZLl57HCmet3TQNMqZvmxCcfeTdhA0nfx9fjV4j?=
 =?us-ascii?Q?lOYQEYtBjplo9oFJE5BU+fqpzWs0YyED4WREEyw4sfzr1YgAoPOvcBMlwgS7?=
 =?us-ascii?Q?Bo5vT5KUbhg+y6pAVheDLTeb47+GmfyvOEtVaWv1uj9UV0udSNrxOmNmFWIy?=
 =?us-ascii?Q?n33WhZL0DrPNC+HkyYBQuZ3TyjT/M6a13BNEoOjUCC2+xceuVAViRisgVrsp?=
 =?us-ascii?Q?d4P1d3dEHLq/mEuLQ1SvfUEuV7SE9+J8acDuEPNEgB3rVG0mC+ZG8kHfNHhq?=
 =?us-ascii?Q?wwy/vJE2WMe8qFKepOID5eUEFnEsRsWl81KnJdnANw6OWbL7q5rf8aFbB0rK?=
 =?us-ascii?Q?t86WAw+diTul2JMK6KaLuBuIk76eRCvNEgcWclndsgWKPGGcvFgnnqUtmWYa?=
 =?us-ascii?Q?Fbc/GXRn+jLQWPdRpcCA9uukXNb39uq5l/8AL/+fOww331jML+XdDrFWWjb4?=
 =?us-ascii?Q?dsSiZjCbS7SnxZzinGXcOeXCuQdyqP1CHwSYkrMENfs4RNIuGeMsx7FjrqSf?=
 =?us-ascii?Q?PsmHvGvo/aYG1mvYEPLzHfwKPAk3gx7v6G6a4aX8ttX0pjXNg79UPV9sQrXK?=
 =?us-ascii?Q?cjr99OUkKWyz5jFvV40sBALgKXXUICSHLXq3k3QqulWUhLcC637gW9PAVxSX?=
 =?us-ascii?Q?OVvPCwItxKPtFywNX0G/vrTkTZIysSKUs66o0RPDi63Zlus1h48OOtickkk5?=
 =?us-ascii?Q?poZa+jX2jpzbl6c/HN19CejWJgbXLWkkxrHAJAUpWeY3z2UEkdTmkojJbzXX?=
 =?us-ascii?Q?yLk2BwiAppEG3oXV7fy5h72afvpnFyK7IbsHUrnmbnseMFg0sFNB79U01C6n?=
 =?us-ascii?Q?AP2kpAPLXyGZuVySKK1Lp375ffQIIZrazKtG/h89oHzhPeavQbSM6YR0hauK?=
 =?us-ascii?Q?RGjq714r9dR6UO1bIiJqvIKvsJCT4Jbump3kbtl+4KC8gJiRQDyfX2dadt+j?=
 =?us-ascii?Q?nGtBeeZuRGq43ZgO0c4soaCRvbGP0Gfi2LTK+zCvsqqm2NSJkZDLXV8wj0ix?=
 =?us-ascii?Q?84V3z1+eg40wUT1AdiLOtfn4i1SYFVStZABszI3iGadDsRYeS6lW1715suwG?=
 =?us-ascii?Q?FsCkwAwrQseYZV8EQPFoMnjhnVp2CAWVrn4bIfzy/v5jSbnLXZZ1AZeHTbh5?=
 =?us-ascii?Q?LqbvTiPXHKCJ27AjSd08cw2e+wrBzzH+jbzvHt2d07loW95Zp/3gDwWcpHJ4?=
 =?us-ascii?Q?tU+oVuGMbH1DewS+pu3c170YzoLAUKzMQLBXMbE3/ZqtuBUDBlJAsp0xd9sf?=
 =?us-ascii?Q?yA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17b2cb06-749c-401c-0c46-08db87bea35c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 18:41:45.9610 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FR6UTHVdxcKThJlE5ehqvmp+xGoAFNO7Uf7L4/0zx2kjPVY51s12bjdNq1q0smmHBI13u6zomt5yGupCVwYGCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915_pm_rps: Fix test
 after silent conflict harder
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 18, 2023 at 09:40:41AM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Feature test also needs adjusting after sysfs helper API changes...
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: d86ca7e17b58 ("tests/i915_pm_rps: Exercise sysfs thresholds")
> Reference: 54dc25efaf10 ("lib/igt_sysfs: add asserting helpers for read/write operations")
> Reference: 1dfa7a007a8e ("tests/i915_pm_rps: Fix test after silent conflict")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Lukasz Laguna <lukasz.laguna@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  tests/i915/i915_pm_rps.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
> index 15c74cc703c2..3ef5842dd7f8 100644
> --- a/tests/i915/i915_pm_rps.c
> +++ b/tests/i915/i915_pm_rps.c
> @@ -1015,20 +1015,23 @@ static void sysfs_set_u32(int dir, const char *attr, uint32_t set)
>  static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
>  {
>  	uint64_t ahnd = get_reloc_ahnd(i915, 0);
> +	unsigned int def_up = 0, def_down = 0;
>  	const unsigned int points = 10;
> -	unsigned int def_up, def_down;
>  	igt_spin_t *spin = NULL;
>  	const intel_ctx_t *ctx;
>  	unsigned int *ta, *tb;
>  	unsigned int i;
>  	int sysfs;
> +	bool ret;
>  
>  	sysfs = igt_sysfs_gt_open(i915, gt);
>  	igt_require(sysfs >= 0);
>  
>  	/* Feature test */
> -	def_up = igt_sysfs_get_u32(sysfs, "rps_up_threshold_pct");
> -	def_down = igt_sysfs_get_u32(sysfs, "rps_down_threshold_pct");
> +	ret = __igt_sysfs_get_u32(sysfs, "rps_up_threshold_pct", &def_up);
> +	igt_require(ret);
> +	ret = __igt_sysfs_get_u32(sysfs, "rps_down_threshold_pct", &def_down);
> +	igt_require(ret);
>  	igt_require(def_up && def_down);
>  
>  	/* Check invalid percentages are rejected */
> -- 
> 2.39.2
> 

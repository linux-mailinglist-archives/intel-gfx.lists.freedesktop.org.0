Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5883D7A76CA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 11:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D68F10E468;
	Wed, 20 Sep 2023 09:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DCE010E468
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 09:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695200600; x=1726736600;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=toF1UqKrGTz3vShr8XEqzJ66EbNSgvReu7aDeZOccd4=;
 b=HtWlOcy5w2RN6aMpPPQgkzHe6zmOjnKw/xb03wbRpyNaBHfzSTuQci/Q
 UHOlcTYfKz7+Rb1CYlCGJq5X3R4A8JfJnb1/jgk8BYeFFaMvs9pHq+xdD
 19OF96qAkThVcNUuDriQbYqjl1qqgiLhe7Iff5R+mOOuJDZQGSU7/kXi9
 dgLBzKeS8SUAFy4JxDniMtD5B0Cc47cFARn223O+T/y+6Df/WyRS+GYet
 ObEQeD2G6PJharfoe+lYOwY/vmx0D6J8DpuNnMKMuqdiD2ikX0Fv8rzLk
 +QpUkEreHX6vE5F+gkdv6mWsgl2m//CWlgYJx0tdjFPYSn7R+eGRUII0N w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="444264170"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="444264170"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:03:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="993524456"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="993524456"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 02:03:19 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 02:03:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 02:03:19 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 02:03:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JxfoxfI3p12CCUBNeAbrx2VudDi7o0oDmqij5RHLzGsRumnL9iQsV49Dd/bS40QYPcjrXvIPVyo3el+uYTi2w624nKFQk7psv7ke9JrttkY4Yt575fZE3kw7CzHuuCMbqhOdB32nirz1b6PXHQDzws9jGSFJmuvMa4DwzVRl8oKijDjc9BUrT9DOSvBIWGueWQ5wVT2eDP1IZhJjCqQA7Ye2xXJ6ZD01RW3zWuNKs99ZjLeTeYMEGXtSsSQIROYfnd8jeS+jwZywp2zXbvrxTfJLt0X2V9b+g5L6BM5UjHtw8IU4ahnfJpppMUE7gOAXoQachA+KHgfoc1GNhi09MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7mUAPXXfjPyITG60dH5BSb4j0EirFug7PfkFHYuPcoE=;
 b=UDBQG6Gh9YfvnfFq/Q0cY26r6jnwo/dHeCLUP2CeaKHfQ0NIq4Af7bxLcaQkskTJ1HWjSeHWMnCntU6hXhGbs+quMYPTUVrUu5LYz4q3er9YrwfBoL0wdhdqSXmNtC8jn6vB/rvBxADufbq+Yh72wfZCdHxYYfj6rNEUJ9UEeNaxSe41X4/bxp5YGhXXZYoaOoOHZMSDRbzAlXvtv2weUmS5oczfndeSXEcl+uiFa0bltRaOowx8oqfrEo7TJrOdVENeEi8ZJKZvDJvZm/BB1x9mbuKIms0U5njh8WfcFXE+y4zXidpxBucpJ+VQFZaO0wkhJeuzjde5SFyTCjUbEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB7539.namprd11.prod.outlook.com (2603:10b6:806:343::6)
 by SA2PR11MB5082.namprd11.prod.outlook.com (2603:10b6:806:115::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Wed, 20 Sep
 2023 09:03:16 +0000
Received: from SN7PR11MB7539.namprd11.prod.outlook.com
 ([fe80::edfd:180a:b02f:cc81]) by SN7PR11MB7539.namprd11.prod.outlook.com
 ([fe80::edfd:180a:b02f:cc81%2]) with mapi id 15.20.6792.026; Wed, 20 Sep 2023
 09:03:16 +0000
Message-ID: <5133453f-2784-c533-ec4a-5844e32fd38a@intel.com>
Date: Wed, 20 Sep 2023 12:02:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-8-nirmoy.das@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <20230918170257.8586-8-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0043.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::16) To SN7PR11MB7539.namprd11.prod.outlook.com
 (2603:10b6:806:343::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7539:EE_|SA2PR11MB5082:EE_
X-MS-Office365-Filtering-Correlation-Id: 792934fd-fcd0-4aa4-d184-08dbb9b86d50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JDbAir8eyhrhWXEFf+FJAUvNYDvvMpdNQJfefbw/+iJPKi3U35FUqt2k9D8t0thaxttfOyVf6rlTj1r7fgTGFFhCEEF3/gy9+FloCD+QprYRIB+cfLSqLmnveWTbPKKW8g4cC7B8/o07dMZebwan3TYhmxjYcmjnQFMmJy0OsQFt9KiqfUBEqYUkhtxBqmv4PY+NSvYWBNTJD8YaMKiUwN6PUkyyTO2A3v+Q95gIgMl1ISoD0euPtTzl1Qf826TIZ1zwbD7sRE1z3x3DciBudGjRwgN2p332lPfalQQ3ptZ7FPhr22kty818zbn6E+8FSgzAbQ8AFxHUL1eXLUhYCtGLPBWrLxL1uk/g+1gmktGOCh+MmyYWbnbkOmarImYypAJbv47gjWwULp7tlbXZxNSk3zVxEBofCO3gbVEs/DvuIG6syYYEBnFi1sQWt9BzNlaALMGGfpqY8tZVVupiI+nbLo8ZXEKAZOqHO/ine+7GpdUnyfUVEawI9QxhaGElhEPgirXcL+DtgTRKxzT9xA7DBvlk84L13zLVCz1Jngsy+W+DFVrowFzo/M6WFy6di/SSTv673RTWSPhRRQXsDnQY0mTiDxeqVxutzai2pQ0OAt1sVh1ujlaA1atV/fo3bPcuuEB3TeeLg1MofzTw9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7539.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(366004)(136003)(396003)(451199024)(186009)(1800799009)(6506007)(66946007)(66556008)(66476007)(316002)(38100700002)(83380400001)(82960400001)(6486002)(36756003)(31696002)(53546011)(6512007)(86362001)(966005)(2616005)(26005)(478600001)(2906002)(8676002)(4326008)(8936002)(6666004)(15650500001)(31686004)(41300700001)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWd5QmVHTzBtWlhaQlVrdkxjYXUzS2ZqTHBpQzJaRzIxUGVqVkVSRDhGaXlj?=
 =?utf-8?B?Z3BLREo0aFlZVElHY2YzMmg0WTJRanJYY21Od2ttYmlFMVNDcFdqWTI2VlNU?=
 =?utf-8?B?dWExbjZLZ1lIVVA2a0FoVkkxN29ZRFdFWlozU2xGaVpCS0NwQzZlTlpnZXZX?=
 =?utf-8?B?dFlSNTNBLysydU55SW0rRHJ0N1ZwTHRMbCtLditlS1FvYWppVk01VFhkTXk3?=
 =?utf-8?B?Si9EemJHVnlReEVlMmVOT0prZjl1VzZJRUxaYUlYSmdoNm9OMGkxVUNzZzFU?=
 =?utf-8?B?Y0NKVmVhd0MwZG15T1RKN0hrbkVnMkpJRmVPaHQ0Vm0ydzNuWHdYR1BMNzdu?=
 =?utf-8?B?akNYZVlSTWhReFM4SDUvV3JTZkFKSk4xN2JGMTcxM3BFTVZoRWIzdDBjZmtj?=
 =?utf-8?B?SHZnWjM3VXBjVllPMVFHOHRtNEs0Z3JuaDlGblFQcDlKNnN6WmNIbW1LNTUy?=
 =?utf-8?B?UjBCT1RrQ3NtSElUb2NOZ0ZaN2FmSmgxd29SL2hmTUhiUlZ6dUI5WGtHblFG?=
 =?utf-8?B?MGdPUGU3UjZLTHBXOWJpa2lPc1lVVkhyekhVNFh0TnBnWnNYWnRLNHFIdVRH?=
 =?utf-8?B?RE5peHZKR3BxcStBbitNUXdnakdoQXh3RTYrNFBrY21JV3cyT0NkcEtENmJI?=
 =?utf-8?B?VzJBSnVxbnRGeGd5cEhZRFNKM0JhTmxoR1ljU1ZKVU1nK2xRWStXU2NGaFA0?=
 =?utf-8?B?UEIyeGJpdkx1b0tXdHJ1bzBES2U1cFhjVlhmQlVrZXVTL25CekNhVHhxckFk?=
 =?utf-8?B?Q3pZQk9OZU9GZ3RMRkF1NDBiYnQ2YTJiNkVHYnRNMlVFVVhMMmJBNTVHQTVO?=
 =?utf-8?B?V2UxL3pIWkpqNjZYeUkvK245Wm91RUN1SWhlYmd5bDVETjFCTE1rejA1RHlD?=
 =?utf-8?B?WmRuQU8yTndzcXBzbmdVMFIzeFhUclQ3VmZCSXVKNHVLdmxjb01mNC9Bd2Qr?=
 =?utf-8?B?djJFRlcwNWRuYzFKTHBQTEdDaWJPUFZlL2Y1QmxmMlo0MGkvRUFCaGpjTVdP?=
 =?utf-8?B?ckVNazdaOFFTL3pkdURUMEJENUNrZ2k5UFZndVp3YzFTZitVaUg0WjJ3SXJt?=
 =?utf-8?B?T1dyczRyVC9qWUdrVVZsemh0NUFlZFdVeHVDNmZQRkswR050T21oa2hUQ2Q5?=
 =?utf-8?B?WjlXSXJud1VieEd2V3dYTG8wcDlwa3dsZ3NXMUljeUs0aGJtQUVubDZoNC94?=
 =?utf-8?B?NWthNU94c0I2azVVSVRkR3F5MXAyYVRPRGQrRjFlL3grRmNqbVVpeTZiUENm?=
 =?utf-8?B?QmFZTFQ2bUhUOXdXK2tvV0lzRkJ0ZkhtM2Y5TFUrYnpJV0NTSGRYNnhleVda?=
 =?utf-8?B?NDZoTWlzMWtwdU5OT1FUYXpPSkxVWTBKc3BYNkxFOC9ESndNcUh0YnExQWc3?=
 =?utf-8?B?NmxyKzAzM3Y3akxEb3Q2eWVrL09WMVZKTHE4Z01ROU5FV05zbHJDNHdvVVU0?=
 =?utf-8?B?cnpUNnNMU0R1QmZOOVl5Ly9QS0RCWFFxcXNTY244aE9BSlZnOVdsWjIzTE5J?=
 =?utf-8?B?UW56Qzk1Smk4RTk2TUpYclFLREhWU1lYTjVqOTNvblQzaTJrcjMyMHNGYnNO?=
 =?utf-8?B?aEhwY1RFVytRMTNWWlFZWSswNVhpa2xaTXFneWk4VmUwaUgyRDlFNDFZZnBy?=
 =?utf-8?B?Zjd3V05IRnZ4bHZZNUVkWU9GNlNpMGZoYnFleEVtbWZIdUsvTUd6clFpMGp5?=
 =?utf-8?B?TlEzVkUwK1V3Sk10dXJRdXRrWG50WWR6TFZ2K2Z1ZFltREltdnc5dSsrcVZh?=
 =?utf-8?B?ekh1eEl6VVBST0NsUlRYVWRFMFpFV1N4S2tiZUtSQ1U5WnBMSkVDNlV2TmFk?=
 =?utf-8?B?NExpOVc4VFBSRG1wWkE2ZEdHRUtBVmxHZzVjTm1GL0tlUFo4dlZ5aWpERXp0?=
 =?utf-8?B?djMyWDZ5aFAwK1FxMUlnQ3JhU2lVeFU0dkdMR1djaGtiUEVHV1RHNEVWQ0FI?=
 =?utf-8?B?QUhOdnBZeWRxanJKMkhNUUQ3WHozdnVoeDlRK1lPRG1BdGovUllUbGkxOHJq?=
 =?utf-8?B?Mm56ZnprUlNzVjBDMDJhWkluV1U5QnMzVG8yVHAvbzg0K0xwcFh3N0NhQUpC?=
 =?utf-8?B?Yks2ZGxrMFBTbFNhczZXYU02Qi9NSTF4TDlEZld2UGVIYzVGUGtHRXA0S1kz?=
 =?utf-8?B?VU1lOFc1UUxkZ21BRGZVWktBVnlaYmdvS0RLWmFKWVlibkRPYy9uMUl5aFdL?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 792934fd-fcd0-4aa4-d184-08dbb9b86d50
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7539.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 09:03:16.5800 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i04nqdBdlkPxjwy5ux6VCHsI838fzvFblpf6YuryGgEiaXFHInNAkE3TKEdMZ7XszW9RH/hYpP4RC5OHxpCwviacOvRCkVigioV3Bj1loU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5082
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Enable GGTT updates with
 binder in MTL
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
Cc: matthew.d.roper@intel.com, andi.shyti@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

https://gfxspecs.intel.com/Predator/Home/Index/52885?dstFilter=MTL&mode=Filter

I can't find Wa_13010847436 and Wa_14019519902 in the above link, where 
can I check these WA?

Br,

G.G.

On 9/18/23 8:02 PM, Nirmoy Das wrote:
> MTL can hang because of a HW bug while parallel reading/writing
> from/to LMEM/GTTMMADR BAR so try to reduce GGTT update
> related pci transactions with blitter command as recommended
> for Wa_13010847436 and Wa_14019519902.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Oak Zeng <oak.zeng@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 4c89eb8d9af7..4fbed27ef0ec 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -23,7 +23,8 @@
>   
>   bool i915_ggtt_require_binder(struct drm_i915_private *i915)
>   {
> -	return false;
> +	/* Wa_13010847436 & Wa_14019519902 */
> +	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
>   }
>   
>   static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)

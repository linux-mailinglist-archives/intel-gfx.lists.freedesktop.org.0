Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F8D7A99BD
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 20:20:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81CD10E158;
	Thu, 21 Sep 2023 18:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D5810E152;
 Thu, 21 Sep 2023 18:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695320441; x=1726856441;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=1rgOfiMnGe7ZRakXekns6bc08psz4jwjphgOgiucSRo=;
 b=ARJyfBEevV4npGZOzbocOOBPup9cL3KMUNjrLeh//Vu3cb/OEKNb+yQW
 LpxF/+dKVUl5rK2PIFwNtt+8fkev104nicpA3LLHm09uU1ykosCGE8rdS
 mWrHDbFneFQBTUUTgxl8A/+Kfj1bICMgC3+23T+4vTLyK9liJ0Zkgbwrh
 Hqp+t8rUj/9uFhVxglGQAAonPtg10dfAGZh7ZoD05z5Vw7PKoTqMMUHNE
 VX3PHw2w/bPbcxSGFCH/DfSaEDjcSQBKbWf5I9zi3nqa7XZ2Y4Lt6Z7Bi
 wOkZzH8Uqk29uMVWjgR7DLer24gvsGrv84xhV3eNiAEkAqKqY0YF6Vqyc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="444726678"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="444726678"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 11:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="782304806"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="782304806"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 11:20:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 11:20:32 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 11:20:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 11:20:31 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 11:20:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Av1aKziPIRvLrlDhbZsDwyH6K/Hma4FH3Yc6TNOUbz0j4HpHjcOk/Hgj0Y8u/LTmX//U98bRkHo8va5h8tcfn20rOI+lX9YuFODHUbrq5Bei8YVe+uRM0pSKvsRN28L3TP0o3KCaKAcu1u/uuaTsUrysMWUm0ERTmMD34iI2PlOEM2YZT7ia7PGWYGBKtCUF24oHQ8WnyV9z1wLvRYmJHNGqyL06/h7v8pZtsRJDZ9kfm1LCYDsfjNAiR58ayNpz+52vPgFKYGHHFaxplio8tiWBRsVflGq+zZJDAiOczhwlqx+IWo0O+D9bfKu0K6S4lIjJ9vBOA66NZpZ+XODGeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PRuEjNVlrcUxcXklDT/W2z5hgqNG+PNuHPBAvmN/B4M=;
 b=kMveNHfCVKZNiHPAwiXP5QpAdtAwz0wqMxD96Lc0GHKBRAI2Mvy1UC3pMV3aUSAU5byssaxQTzaOpckr78GYTasDuAyYoyg7vv4AKFFNj4mSycSfR4lRntO4A7sfvw9LhjqcDEjUvjZYdvtvpEeqHQQ5Nt6j5SCGGeT1sM+QItibEqtk9gMo5q8Tfm6AtjeTiqPOwWu4hmwov33bo/C8tbvnWbCL4B6DO7e/WjI7/vaqHkB/hq4f5Ezz6Gg1dlz5Nac11LT25sZLhZyzbl2QQ4KBtqh0HfbGkZeKReHO92dwSZHmN/+HeSbDkhhI6CaLQvEuZyrkOAJ5t1LiD8IJ+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BL3PR11MB6531.namprd11.prod.outlook.com (2603:10b6:208:38e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Thu, 21 Sep
 2023 18:20:29 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6792.026; Thu, 21 Sep 2023
 18:20:29 +0000
Date: Thu, 21 Sep 2023 13:20:26 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@intel.com>
Message-ID: <soe3prilee6tkqvivlx4pjztao43dl4qczrxg6njybap7ogri5@eqksdkuxndmt>
References: <20230904115517.458662-1-vinod.govindapillai@intel.com>
 <20230904115517.458662-3-vinod.govindapillai@intel.com>
 <ZQGRH4aWpp078lBl@intel.com>
 <6xbdhnsalvs7d2i6crfcniog3pepg4gospzyq7vakptla4vgef@opjfzuwbdjr6>
 <ZQx8KIRt1JRfq6dV@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZQx8KIRt1JRfq6dV@intel.com>
X-ClientProxiedBy: BYAPR07CA0070.namprd07.prod.outlook.com
 (2603:10b6:a03:60::47) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BL3PR11MB6531:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ce08cae-59d2-4cf6-4ee4-08dbbacf6f0b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XlJbLo59CAVNfTbxpfSNMgr4Rhz+ZAplkCfiUVuulGe7A7vntulLJJ28cyNUC8xWko2goDQ+9Q4sJO/RwUMvH+iUOgcnxludgc/wceQmFesqW8Hf1yJkQo90ZD2qsrn55NhREwa2wg3qmfAUUpValtJpH09+qNSWS3nMlbBhwZtxKNaGSEd3kWqBdhlH0o4ZiO5sGkbNunVZ/HU34pkfwkQ9IQzhkgHcoFS2nBIiHn9czVCfxrc+O5Hw5HiS1+sPnJYIoeYnMzZXHce+46DPeLw3iqV0nW6PDAtogrG4F1TAxtcXGGW+8+rlH8aio/ooqVcYdLQuOAS8dUhEiOCgrmUYsRUHy04+LpJNOXA83UBMm4LYSG2se9ZNEaFXzEoKVIXY2lO8on0Fo7jk6Q4/pf/y2UY6h5lDoYe1eHXYVM/GJsBLil3L7sGSxbRNVMPnUD/IygY6OwmYiSe5bCLs+Qg372mUU/sqDNIniLsj8S7Gej7FDwLO7J30kC3Jf+2NFpWdAyyT7v20ueZkcVqreepJs8HHwWuCSFR3h5LGOY1PIEsEIEvnSk9EgyfygkWQyA17tqrWZhfd20yUMuaRg5df8LAA765p4sky+qcTs2vuRrt5i2p+RMs/atjCUgJkXYE15zVPp7nlmjiV3XJNTNmNpBwKnEwXy5D7TGS2L+M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(396003)(366004)(136003)(346002)(376002)(186009)(1800799009)(451199024)(478600001)(316002)(54906003)(86362001)(6666004)(66946007)(9686003)(26005)(66556008)(66574015)(2906002)(66476007)(6512007)(8676002)(8936002)(33716001)(41300700001)(6862004)(5660300002)(38100700002)(4326008)(6636002)(6506007)(82960400001)(6486002)(83380400001)(27256005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?CMnUl1NbbTynavExE6pKyZ7NntQ7y/+QUNmrbGQEVtqSHadSWfQeMTtMdU?=
 =?iso-8859-1?Q?4zSwaWDt/ADIfUjy5J8AxuFhhRecwDlYbXsFIcrzw5E9zhp+Rg0n9WSwPy?=
 =?iso-8859-1?Q?fhe9vkp4jgEEyGiCi9ofyMJcInuvw28t1wnzQDsOBYv7D7sNLwFzT8hB14?=
 =?iso-8859-1?Q?h9qHRZA2zVSO9zwTnbDt3HyK13bfUlMgBuYxT/eZXQfz8QUtBFr41Ky6UW?=
 =?iso-8859-1?Q?PupNetztIfxSRSvloezglDlaRDPhLoXaDolS4Dg6WuZ70B/9bIKb7OYSdX?=
 =?iso-8859-1?Q?r0WTD9tuuCi8BhTG3PGTSoe83DYEWPyWjXtCb1Il4ywz8aYZpULnA6shQb?=
 =?iso-8859-1?Q?glwoa1ZHCS1dLSd5XAT15MDuNc8WJp500PF6wbtWwmneR5C6v668kmjghj?=
 =?iso-8859-1?Q?AqShzMkBY1kehTD4pjRFfaiiAAgQOV8fO2H026G+S494Zz1ec1x5Pro+Ur?=
 =?iso-8859-1?Q?uoAaHecpom2XPE1TtDc/HxN1MoupxsjB5c5ABlVKe8erVTZhdgGTQz0LmX?=
 =?iso-8859-1?Q?d692Y6WlQNdkjeiRRMsrwmdH2it/T5gQAdXeCUxSk+FMByfarlutssYXrq?=
 =?iso-8859-1?Q?05jAb6zFlr0PW1XING2/pk0xYgqbhiLoATh6GSIApui6FKxGnYbaPuAn7u?=
 =?iso-8859-1?Q?2lcGVOzwut9od616p5yoeFFF4OtMIU5KCKKVJLInqgMQ2lRxRoJnrQntnR?=
 =?iso-8859-1?Q?zog9I7Po2ob9oAcLYBd539x8O4iexVgrfl6Q4Nkjqugrf16DSws6tjDHGq?=
 =?iso-8859-1?Q?VKSF2Uj6Z69T9jiHek2ARQLhHJcAFqwbhxhZTl0NanPOMiOu8QmthgwdqF?=
 =?iso-8859-1?Q?0VzHphXGRTOA6SdVCYCVgb5O0NNiJc78/0irQfXuqMx5c9VhdYR56UYAnR?=
 =?iso-8859-1?Q?Nn6zxszBUZZBGV7Lbb1mqW+1KPXv+hafbDv60U/saDrI50yupzYYkCzGLo?=
 =?iso-8859-1?Q?EeLfnsqH77IV6njdbqjfKkHTT32X+RYx34Kz3G0mwvyKgo+OwsiVx83fGa?=
 =?iso-8859-1?Q?28bB4IKvn0bgg61KNFl7Du73lk970Grvf86aMXHCsrbXtRTl/rcmj0HMRQ?=
 =?iso-8859-1?Q?odlGQ+AeMAbjp688LiN/2GyW6TvuJ/su6xzYiR9rhfTAfmq6JtQ31WAAEy?=
 =?iso-8859-1?Q?mEpjNg9EyaZXh0DWu9p0j5t2RRuVfnJTWou4ghAj7S5rk/PrGqDSsWmd03?=
 =?iso-8859-1?Q?rCsSUMo16W44B2eANXN4cPNzbVm+tM0uMoj4nbXaNFnEKIxf6Ng7V+tqka?=
 =?iso-8859-1?Q?L2WT67zckhM7Jk7WbgoAwkfF+FHV4CQytEC1IizFqVyXLCf0fjCVn+ZxgS?=
 =?iso-8859-1?Q?otqu9vU8RIN8mDNNJegl4AZCygw7qvkHlv9ouxPjbGsBS1D6YvRIPu8aw3?=
 =?iso-8859-1?Q?aHuN/H4lIoMCBlqAUguP4WcOxYVAFFspWbzjwOlY1LQCz8IGn00tgBLjRW?=
 =?iso-8859-1?Q?9+8+8q6DRjg2XHruQ+hc4rKce+/Xp33e0qL2gvF5+o35O2QcgBojVW0gVC?=
 =?iso-8859-1?Q?gZY3FnIDaTdY3v2HKqz0Ru0gBwFbVc+VkvTwIcyh+O4hG59MtP+PHVEfL/?=
 =?iso-8859-1?Q?q6hckhNBc1Gq6uld4EAtD50VjezBMfysLNDxvgR+rRb3Mu1V3NaF1giLYI?=
 =?iso-8859-1?Q?NLBc6jlaYbE9+RFr8U6zpOJBaucgaMmQhQSn+8QBemHFa3k+F92eNjbA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce08cae-59d2-4cf6-4ee4-08dbbacf6f0b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 18:20:28.9900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZRpHq795rxQDXLD8PwAM22NgMO04p2cr4XvaIijnmf5GVbCc3YUC702ZZsNH9I4FV+i2J1hJSeBPcLigAKs0trB/mguqRxII49Hrb/0KZV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6531
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4 2/2] drm/i915/lnl: FBC is
 supported with per pixel alpha
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
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 21, 2023 at 08:23:52PM +0300, Ville Syrjälä wrote:
>On Thu, Sep 21, 2023 at 08:22:23AM -0500, Lucas De Marchi wrote:
>> On Wed, Sep 13, 2023 at 01:38:23PM +0300, Ville Syrjälä wrote:
>> >On Mon, Sep 04, 2023 at 02:55:17PM +0300, Vinod Govindapillai wrote:
>> >> For LNL onwards, FBC can be supported on planes with per
>> >> pixel alpha
>> >>
>> >> Bspec: 69560
>> >> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
>> >>  1 file changed, 2 insertions(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> >> index a3999ad95a19..c0e4caec03ea 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> >> @@ -1209,7 +1209,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>> >>  		return 0;
>> >>  	}
>> >>
>> >> -	if (plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
>> >> +	if (DISPLAY_VER(i915) < 20 &&
>> >
>> >Bspec still says 15. Someone needs to figure this mess out for
>> >all LNL patches.
>>
>> The HW reports IP version 20. The name of the IP is "Xe2-LPD (formerly Display_15)".
>> For checking the display version, we don't care about the name or former
>> name, we care about what is in the GMD_ID.
>
>Well, we care what it actually means. If the bspec and hardware reported
>IP version all messed up how is one supposed to know what hardware has what
>features?

Bspec says LNL has Display IP version 20.

IP is called Xe2-LPD. Version is 20. In some places in the spec there
are mentions to the old name. Someone probably needs to do a search and
replace, but that is beyond what I can do. The version was never 15,
that was part of the name.

If you want to add a new source of confusion, in some places version is
(was? can't find them anymore) marked in bspec as 0x14 so we had some
early patches checking version 14 rather than 20 by mistake. None of the
patches being upstreamed should have them anymore though.

Lucas De Marchi

>
>-- 
>Ville Syrjälä
>Intel

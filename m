Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4A7653A15
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 01:24:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDAE010E429;
	Thu, 22 Dec 2022 00:23:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7754910E4E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 00:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671668637; x=1703204637;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0Br62Lp4aat8augrh+veBbGn+clrp1FPNIB9uFRKh0s=;
 b=myF1PWf7wPbv7rDDEf/olpODfq23fCkltNFIuwjtXzA/njHwiT5OehEz
 y40N0pZLBCRx7Bnc+rkcpMC3qFahgwQRO9f/H/CR0XT2N6iPKG144Ucom
 4KRvgYKkHU2E1VRDB1lLxJvggt+58/87weOvm1xBx3kCHN2cAOSc01TWO
 +WEqQr67/0YDPpjAyL1GEZfcLRUjeudbsHHB9ghBWFDc7RwyUC68CVBR1
 BNLT/a+Vlfx9K3kmuh5k5xmkii5EYRUs3JzOTexNTzO0+V7UMvjxsF2id
 UX+UfcQI+3IQNUcuun6YmmE41jd+x1jx6sSXQ7VBCHkYA0bkdAMT1sR4B A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="299679053"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="299679053"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 16:23:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="740359996"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="740359996"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Dec 2022 16:23:56 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 16:23:55 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 16:23:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 16:23:55 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 16:23:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VEtPWoj6s5dKGzPeaMEKpjv9VHIVBNKrt4VGeGW1FkLOLfTO+qSUt3qjAMvRMxAJzQSLhe+i1ht5sk3U+pV8Z1FVSbuQ6mN/kfGFV/GL+cdif7O9IqOlBOvaN1/B8hN2SsAOHicbjmW6DkWOo11eYnrT8wSDVRqg/dYpCyxjGqdjf/6zAHIgUjWB87XeOrqn2cYF3zye2LHi7ttscNutAqY7XVA3BvC3CMizwlUEMwIT8GdPOy8dKk8ttdnCCo0NhPvoc7b0AHb3iegJqBogEqlKtTTcF24t3sd53qwA59bIyQBcv3A9B3hmv9AVbq3YTXT5UAmmV9ANc+7jiCGEKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6AUrlgBRIOdMm20TD1ImGT/C+x+G4UT5YNsOnEqHKg=;
 b=mdkn8na1DNTN0oLbhnL86pHH7gQtq1z8FSUpHAplls00X3k16mflmxj79FOSYLlAsZQf3aZ00Tpf4tjqRmPhDk28PtJb2a237edhGN6aWFUmvCBF0RGsXb/a/qleH+LXuwufV0SgnGlPwVd68jEcxVQvyCyiBuIU9EHdzzQEo19F404K+wnUbQ8aK7/yjq/MpOXHUewELBEPHgh/EZx8IlJVvxz924HAxCr2RLgqG0Z8aaWUCGf3zJ7Ya/ccKN/AtIKlGgRR7rlXXvQy0bGknvQuULj8r6JmxJhUSYN2YZlSVC32zihxhe0OYDGgAM3B8MdH5EblQ7ZiTDWMnpWZZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BN9PR11MB5401.namprd11.prod.outlook.com (2603:10b6:408:11a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Thu, 22 Dec
 2022 00:23:48 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5924.016; Thu, 22 Dec 2022
 00:23:48 +0000
Date: Wed, 21 Dec 2022 16:23:45 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20221222002345.xbz37hl6gzhb44np@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221220201104.339399-1-gustavo.sousa@intel.com>
 <20221220201104.339399-3-gustavo.sousa@intel.com>
 <87wn6l1299.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87wn6l1299.fsf@intel.com>
X-ClientProxiedBy: BY5PR03CA0019.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::29) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BN9PR11MB5401:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d724812-1bae-4184-2308-08dae3b2cb20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g2swQfqgQhgiZTNUSEIQqaE8/3VlwP+P5LOi9tcA6j5OnWkhOyattHH7DCIH37lOYPQSjIwVDVB7wtmZHAee70PSiWzpS5kh8ImYFwmmWnx2X6x/Yu/Ptz9NnK3odSO97JNqO0+XelMvlfu0AMgQfXrCHK9/INCHMj3ok8YGenQJrTfG/HqpN/NqEHcReMPDD+D2/WFLeiNqyf38VysBfnDdNg73Tuu/ELXOPEFMxalt66J1ssVRkHdfcXIVGGXMymciAiNZiYk/V6XwIexDyci6E5mLaGAEu2UQefhaN2OyAtT+Kby7EpDKIcVuWKA77TJJ3rN0neba2KJOMOvIN0bv4LeLynlm9A9KfUj92hKYtHWsv5k+2oXKtHKBU+9UPIzRJTqW4x0ZI1CzE6QdeAz12aNRptOW7nvQhYdGO0bESV5dGswRVjTspvlmQGc4BG2oVkWeHACFvxygJTyvvEts8wAXo4DhizB/NzGu0Kfogttndk4wAT9I/NjuklqiEPT6PPTKrNZ0Goqgiwe7tLSVUlJwRpn9yPlHwF7A3y8Cz6htQWynEq+bPonK9jp/oTLF0dzfNyMZtIulO3ZSJ/6DED80OUDWMMMNIKi9E9wTDjOtL1R6WE8JpeJbMAO3vlvYe0hBgBZHdr6+YD/a9m8gwW49SLVarfShj/Wnp7Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(346002)(136003)(39860400002)(396003)(451199015)(54906003)(6916009)(38100700002)(6486002)(82960400001)(966005)(2906002)(478600001)(5660300002)(316002)(8936002)(66556008)(36756003)(66476007)(66946007)(86362001)(4326008)(8676002)(83380400001)(186003)(26005)(1076003)(6666004)(6512007)(41300700001)(6506007)(9686003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ahiqlzs0R1Toup9MP5mz2k2sikr09dYW0yYwMMwT5wfSrOhXNVlkGHrnkViZ?=
 =?us-ascii?Q?q7qLKtOOYN2XTik3VumwdBHPXWHSNhzWObpCNF1kjH35yMjIkb5t1chnfx9B?=
 =?us-ascii?Q?2EwFORqlJhy700QSLwaKX0c7AHlQ274KbxXmZb5ApJKzjKGKZ53+qe5NdCXV?=
 =?us-ascii?Q?qeInabEFruYGVYtnpf50EtrZLVZBTXOPt2KfmHHeO5raXZNFWthPKNCpwaib?=
 =?us-ascii?Q?s78hyJ0+QH2kKC7lf9JsberMgzqpJbg6Sz/ZvygTNj7A2LifFU3nF4+2Y/fs?=
 =?us-ascii?Q?FMf+72Y6SctoVZ2cx0PwgYMsenSwBKce4wmcboyfXWVaWyjxj8Twm1DmFp1D?=
 =?us-ascii?Q?9gdSkiGn/Nb+wy7SBMtgG8otvcQbp8rGlFYhwAjcAaZJrjhywBKmd99FiiA6?=
 =?us-ascii?Q?9fEBU3iy1AgMzZ+r5YGvMLPqGO88hwFUqy072a292F/q0M7f7TYjXzz7BkdS?=
 =?us-ascii?Q?dYLpXdOC128kUtLhsr5m/KxY5wYmXWZ839NkqjFba6ayGj8ZthoYK5Pd72Dx?=
 =?us-ascii?Q?BXpdVafRkCI2sjOgZEZmOudNp8ZMM6RYFNTLzaP96EvzP13yswOeADUk5czD?=
 =?us-ascii?Q?dgAAgrJCCesw3NrpwdEpkrbSLbVi5JY+/l4lr9FEZ70CHe1NuXc70IguR6nI?=
 =?us-ascii?Q?mQpyiwje8D7FzanFWwyDVwhKPTbnUg73orY1uoO4MyZjQaUAxr7Rm+TZHhFy?=
 =?us-ascii?Q?viDVXFMyqUBuhFA79x8pTmXwAAO4Pt5FBB7K4qlJQItF+/9pdtTB3Lh+yon/?=
 =?us-ascii?Q?RTjgxMoEALXS7PvsttqR4oXTWVpG3cblaLTGumcyEx7Ui9ET4NXHlE933YFe?=
 =?us-ascii?Q?imdiTbEA86IlWNDImgYHGD1DHNQAN0y+r2JMPys5ohk4TvVuamuZTWMzFxzi?=
 =?us-ascii?Q?o9pRQ9SCl/QIj6BrvtSLXIr9nN9yBo25T1Et6LHF5kDyOjnErzlcmK6ukDpp?=
 =?us-ascii?Q?fv6UsldVDuf1mPSfaQHlvFKk7EsEhfTTPM0Mjyhq+g1qbHObU6R9zBMHXu4f?=
 =?us-ascii?Q?TJp+gpvMq5dZh+cjkiyHtWTQ7Om7qs7Wg54saaPE1lgGj/rSM3qgj4i/qEgD?=
 =?us-ascii?Q?8RSUXUu4UFWJHntZeR5nLdC/6UnarKLrnR52tWao+I0jvwEGZssshYxzVOcn?=
 =?us-ascii?Q?S76yWaZpHM1QldBYzsZE5xhgC4Jb4+eSQirKapx+PrWw7c2dRNN5wHPFXeX5?=
 =?us-ascii?Q?CGaHrmFuiu/Y0tNdEfij7NUfWfASv7GyoufQWixh54pCQgiOu9AOUEueW5N0?=
 =?us-ascii?Q?r4dGwVj7AgW+WiFFrPZAfjAMerVcR/1rNj9zYMWEd2v0hvKbOREGT4TEXcuL?=
 =?us-ascii?Q?dmoLm4qp/ighwgA+eu9qN569O/OvglB2hkW/7/L/ASLrsx9Hsk2O6dpmk/o9?=
 =?us-ascii?Q?zjSq1H0WI7dLtJiic6BaksEXoYmb9tmkuBDCIxp0GdZ/N2P8LYsjpxGgoV48?=
 =?us-ascii?Q?X4mj2n1Qz+2+pnUiVK4jRp2fdt+GiV3h1VCNfSE9xuaxtRoY78yIB7+CKOiI?=
 =?us-ascii?Q?JJFtchvitSInArfvCYxpN87mcji8d3TWyIXrGxmip9yKzGyTYgKeQdeO07N7?=
 =?us-ascii?Q?yx+KooSjeCNU6F0RfcRh2YmeCJUBCQhdd3nKtygSHa7dkw3PRiZdE5nE9zDS?=
 =?us-ascii?Q?JA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d724812-1bae-4184-2308-08dae3b2cb20
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2022 00:23:47.9800 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yI8fBGujAmgiVV0hJojxs5ofByAcDiBQyBiJ8VsXauz4Z7eSNKW/BN4vt2zjCJ93Sod2l7YgTSDvyYfmj1Mvwi+OSREEELvZqQyeMkVE8WQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5401
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dmc: Use unversioned firmware
 paths
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 21, 2022 at 12:26:26PM +0200, Jani Nikula wrote:
>On Tue, 20 Dec 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> As we do not require specific versions anymore, change the convention
>> for blob filenames to stop using version numbers. This simplifies code
>> maintenance, since we do not need to keep updating blob paths for new
>> DMC releases, and also makes DMC loading compatible with systems that do
>> not have the latest firmware release.
>>
>> References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc.c | 98 ++++++++++++++++++++----
>>  1 file changed, 82 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 4124b3d37110..b11f0f451dd7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -42,51 +42,70 @@
>>  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
>>  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
>>
>> -#define DMC_PATH(platform, major, minor) \
>> -	"i915/"				 \
>> -	__stringify(platform) "_dmc_ver" \
>> -	__stringify(major) "_"		 \
>> +#define DMC_PATH(platform) \
>> +	"i915/" __stringify(platform) "_dmc.bin"
>> +
>> +/*
>> + * New DMC additions should not use this. This is used solely to remain
>> + * compatible with systems that have not yet updated DMC blobs to use
>> + * unversioned file names.
>> + */
>> +#define DMC_LEGACY_PATH(platform, major, minor) \
>> +	"i915/"					\
>> +	__stringify(platform) "_dmc_ver"	\
>> +	__stringify(major) "_"			\
>>  	__stringify(minor) ".bin"
>>
>>  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
>>
>>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>>
>> -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
>> +#define DG2_DMC_PATH			DMC_PATH(dg2)
>> +#define DG2_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg2, 2, 08)
>>  MODULE_FIRMWARE(DG2_DMC_PATH);

We have an issue here.  Previously `modinfo --field=firmware i915`
would report i915/dg2_dmc_ver2_08.bin. Now it's going to report
i915/dg2_dmc.bin

that modinfo call is what distros use to bundle the firmware blobs in
the initrd. It may also be used for creating package dependendies.

If we do this, unless they have updated their linux-firmware
packages, the initrd will be left without the firmware.
Just checked
git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git main
and we still don't have the unversioned firmware there.

>>
>> -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
>> +#define ADLP_DMC_PATH			DMC_PATH(adlp)
>> +#define ADLP_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adlp, 2, 16)
>>  MODULE_FIRMWARE(ADLP_DMC_PATH);
>>
>> -#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
>> +#define ADLS_DMC_PATH			DMC_PATH(adls)
>> +#define ADLS_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adls, 2, 01)
>>  MODULE_FIRMWARE(ADLS_DMC_PATH);
>>
>> -#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
>> +#define DG1_DMC_PATH			DMC_PATH(dg1)
>> +#define DG1_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg1, 2, 02)
>>  MODULE_FIRMWARE(DG1_DMC_PATH);
>>
>> -#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
>> +#define RKL_DMC_PATH			DMC_PATH(rkl)
>> +#define RKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(rkl, 2, 03)
>>  MODULE_FIRMWARE(RKL_DMC_PATH);
>>
>> -#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
>> +#define TGL_DMC_PATH			DMC_PATH(tgl)
>> +#define TGL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(tgl, 2, 12)
>>  MODULE_FIRMWARE(TGL_DMC_PATH);
>>
>> -#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
>> +#define ICL_DMC_PATH			DMC_PATH(icl)
>> +#define ICL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(icl, 1, 09)
>>  #define ICL_DMC_MAX_FW_SIZE		0x6000
>>  MODULE_FIRMWARE(ICL_DMC_PATH);
>>
>> -#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
>> +#define GLK_DMC_PATH			DMC_PATH(glk)
>> +#define GLK_DMC_LEGACY_PATH		DMC_LEGACY_PATH(glk, 1, 04)
>>  #define GLK_DMC_MAX_FW_SIZE		0x4000
>>  MODULE_FIRMWARE(GLK_DMC_PATH);
>>
>> -#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
>> +#define KBL_DMC_PATH			DMC_PATH(kbl)
>> +#define KBL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(kbl, 1, 04)
>>  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
>>  MODULE_FIRMWARE(KBL_DMC_PATH);
>>
>> -#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
>> +#define SKL_DMC_PATH			DMC_PATH(skl)
>> +#define SKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(skl, 1, 27)
>>  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
>>  MODULE_FIRMWARE(SKL_DMC_PATH);
>>
>> -#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
>> +#define BXT_DMC_PATH			DMC_PATH(bxt)
>> +#define BXT_DMC_LEGACY_PATH		DMC_LEGACY_PATH(bxt, 1, 07)
>>  #define BXT_DMC_MAX_FW_SIZE		0x3000
>>  MODULE_FIRMWARE(BXT_DMC_PATH);
>>
>> @@ -821,16 +840,63 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
>>  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
>>  }
>>
>> +static const char *dmc_legacy_path(struct drm_i915_private *i915)
>> +{
>> +	if (IS_DG2(i915)) {
>> +		return DG2_DMC_LEGACY_PATH;
>> +	} else if (IS_ALDERLAKE_P(i915)) {
>> +		return ADLP_DMC_LEGACY_PATH;
>> +	} else if (IS_ALDERLAKE_S(i915)) {
>> +		return ADLS_DMC_LEGACY_PATH;
>> +	} else if (IS_DG1(i915)) {
>> +		return DG1_DMC_LEGACY_PATH;
>> +	} else if (IS_ROCKETLAKE(i915)) {
>> +		return RKL_DMC_LEGACY_PATH;
>> +	} else if (IS_TIGERLAKE(i915)) {
>> +		return TGL_DMC_LEGACY_PATH;
>> +	} else if (DISPLAY_VER(i915) == 11) {
>> +		return ICL_DMC_LEGACY_PATH;
>> +	} else if (IS_GEMINILAKE(i915)) {
>> +		return GLK_DMC_LEGACY_PATH;
>> +	} else if (IS_KABYLAKE(i915) ||
>> +		   IS_COFFEELAKE(i915) ||
>> +		   IS_COMETLAKE(i915)) {
>> +		return KBL_DMC_LEGACY_PATH;
>> +	} else if (IS_SKYLAKE(i915)) {
>> +		return SKL_DMC_LEGACY_PATH;
>> +	} else if (IS_BROXTON(i915)) {
>> +		return BXT_DMC_LEGACY_PATH;
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>>  static void dmc_load_work_fn(struct work_struct *work)
>>  {
>>  	struct drm_i915_private *dev_priv;
>>  	struct intel_dmc *dmc;
>>  	const struct firmware *fw = NULL;
>> +	const char *legacy_path;
>> +	int err;
>>
>>  	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
>>  	dmc = &dev_priv->display.dmc;
>>
>> -	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
>> +	err = firmware_request_nowarn(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
>> +
>> +	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
>> +		legacy_path = dmc_legacy_path(dev_priv);
>> +		if (legacy_path) {
>> +			drm_dbg_kms(&dev_priv->drm,
>> +				    "%s not found, falling back to %s\n",
>> +				    dmc->fw_path,
>> +				    legacy_path);
>> +			err = firmware_request_nowarn(&fw, legacy_path, dev_priv->drm.dev);
>> +			if (err == 0)
>> +				dev_priv->display.dmc.fw_path = legacy_path;
>> +		}
>> +	}
>> +
>
>I'd keep the request_firmware() with warnings.

then not only it will be missing from initrd but we will also trigger
new warnings. Humn, I think one alternative approach and my proposal
would be:

leave platforms that already have published firmware as is as long as
they are not behind a force_probe. For the new platforms, like mtl,
just use the platform name and don't bother about the version.
We will also have to fix it in the linux-firmware repo.

We are likely not updating DMC for very old platforms anyway, no need to
rename them.  I think that after having symlinks in place in
linux-firmware for a few years/months, then we can go back and kill the
version numbers if we really want to.

Lucas De Marchi

>
>BR,
>Jani.
>
>>  	parse_dmc_fw(dev_priv, fw);
>>
>>  	if (intel_dmc_has_payload(dev_priv)) {
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BE177F07A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 08:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9C610E3FE;
	Thu, 17 Aug 2023 06:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E418010E3FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 06:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692253598; x=1723789598;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Jt6awP/0gYfez/mA3kHv0uE0xhVju2XhlB/gjDZpDHQ=;
 b=ir0DSMK4a4wJ5JGKiafHiRS/Mho5+b0jkiaws7lyBeMMP/pkNmCUMsh2
 DlB+pngODwWbEO7yvQRlRrjYaWDQLaailZ+Sg22OjhZnFI+ztf68cs738
 aaqWE+ZSMzxf2y35xr1f+1IQuFh75294jluV0zE+faXqbHgn7G2LrqHrb
 XEturwIU3Ddz7id3U+u3ysJkkGTmj0vT7CTTWUOSyPZUoMhTtnN/uGACu
 PY6f7qwBs32XAYu3Ys6EyM8JqKiDvf0NJdDwsewMwPVBgaoikn5PBRVfJ
 Td0wsS1H2HdhYqBRO8MkFx0xh3CUXomteqByyLjK2/Pxwuvuk9hyp6TRl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375491481"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="375491481"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 23:26:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="878088294"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2023 23:26:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 23:26:37 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 23:26:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 23:26:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 23:26:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zh0YdMJIm/kbYQrq/V45dCdJJdC8ET23Ap4IvxewzGPVRtOLGBksPcm/1LqlTd5zJlnoSkYZxmn13R5WX5lwcdQVltIq8qSGKaDiMiRgK6qXVRdcdClrjcT4azHIMlZU/9mMsJo5GMb+h7BRPX2kq1oaTkYJOdkyR/718Vr9FXo+JdAZUkrXV48BsKxNdYyAVUmpLE3Eqlj2/QXhBkG9vYlGG6BfOdKK260rCd6gOF34DtS+2z4ts+3uBtvSZH1qgxSfQc+HhhpkpE2S8hVwQkNsztErCc64KkivCRYPJ90x6rm8DDuwTwa1bO655NFfhWZb7uVAjN1DdsGnvbtK3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hQZ2qW6n0QMWFDUvdDqYjyQFJzoTqJ2t7cekZy4XFLs=;
 b=FYq2+ouC+U8hM+UBQzNy8WkPaKk33jqimuR4QZ7V9aMyeQ3Vep4K5CIM3+mgloIuXBy/SUSZMS5iA/DO6qkewvP7csOgbIiOHbcv1zs173cCjxh12/5PPVRh2uWNSk+cyo99ZlVaZ8SDEEF8xbQKCug2/m9aACY+cgGgh2dupZ3sGd8Feod3lUfc7Xb8ZX/QkgHYBbLau6PW8dM+K0SJp5w+IXZY2uUjz2dDsU39RzTi3FolOxH4yiiRw/VyOlrLJZ/E6dEQnXMq9Q9pMFMv2kk8cGJGzLNzdVS8TC7qaUoerJZ8RRkBob1YyO14B4enZXE9cqRzUzpL6j6fypv2kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4805.namprd11.prod.outlook.com (2603:10b6:510:32::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Thu, 17 Aug
 2023 06:26:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6678.031; Thu, 17 Aug 2023
 06:26:34 +0000
Message-ID: <f3140670-80a7-5f7d-5d91-fcbca4e82dbe@intel.com>
Date: Thu, 17 Aug 2023 11:56:25 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Jani Nikula <jani.nikula@linux.intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20230808081134.4187416-1-suraj.kandpal@intel.com>
 <20230808081134.4187416-5-suraj.kandpal@intel.com> <87r0o39w46.fsf@intel.com>
 <SN7PR11MB6750232E19CD74866D061BD4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87jztv9tri.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87jztv9tri.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0199.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4805:EE_
X-MS-Office365-Filtering-Correlation-Id: 99ffcfc7-9146-4c1a-953b-08db9eeae719
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: my/uiMqQYzoT2kN0qnHYopH+ru0jyZRnt1M/fh6xdJk8sbNi8H/Si5ayKHoyBGDy1M6euzkqQf59W6Gzw9shX66yqt5WwcAsoVLHDZlZtn2ye3WxfkSfJ04sLuRn/5RgwQCsQCih6nLfZtltf70SkpsZIfTVKi1OZrnFdPHtzLw2v4JzyWkbzYvMi8XyAwxFPtvKNLq2gHvPcSa1yWwrXUtT944gK733jNoOiVHiBFlclvYFdKSCf+HLCadmpnuXs9HJd7bdk835Ldvecf8PrgbO2WBVqOlnYnrCkRMY060pmrrdRoqI3Y8hDh5uR6zDKEQsGIFgh6NdU/bgll6ai1hwucYfPijARMhUWYy6ADOFRE0x/ghCF83s9YSjDGCtueXxWHmsMx+74zK48Wi6Oh7O+aprp6vsuqa71VR+qJk3Pz2msmyu+GAutDtAAiqKJym5tkpbBkAG48psIIu0x5qx+drfEAO+jKkx2zY/1YAyW6OGjcKQcLB0/d+bz4wLP5uWt0IYJHGkrQzBef/zZGdFgCQlEClfdGHcV6qOgvZTvpyfEc63cyEvFR4lCJ9/rS42EslzzSdfem7UR51ijhhl6MayBaiYi43e07R3poR8jqSUezEhxjkbPfiJAl4uzRDV35Djdqq5/a6vQjqX2g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(396003)(136003)(366004)(451199024)(1800799009)(186009)(316002)(110136005)(66556008)(66946007)(66476007)(31686004)(5660300002)(41300700001)(38100700002)(8936002)(8676002)(82960400001)(26005)(30864003)(2906002)(55236004)(83380400001)(478600001)(86362001)(53546011)(6512007)(31696002)(36756003)(6506007)(6666004)(6486002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VytpUWdDdXlUTm9acEVqSjYvOVV5SkxWOHdWTG5WNk1qT2w3STNJNjFVemF1?=
 =?utf-8?B?WWVEQ29zMDJBMFhLejJQTE96cHpRd3EwZGNxYm9KajZmRWtyb29NS1lEQkI0?=
 =?utf-8?B?bmY0YkZXNkd5VXppWkExVUxHaWV6dU52b0hUZCs2RWJsYndUVmRUVi9KZ21v?=
 =?utf-8?B?NEJBOG9UQWM5ZUF0NTVKNWJZZzN0aDlJblphWTVEbEZzNDFiek1sNlhkMkNK?=
 =?utf-8?B?U21hNXU3bGhUZ0Q0SzB1alBEdUNNcEFtcStXdW56REsxRE1vRXc4Mmd1UDJa?=
 =?utf-8?B?UFNGTk5FYW52ZjR4WW1rdk5IUjNqeU91Y0wyODdXWjVmTUZpTUtId1FSTzBo?=
 =?utf-8?B?N0lSNEZVY3BRWkhqRmNIQWVpanFJZ0hBWU0zNXovQTN0d3NEYmpmNlJBRlNq?=
 =?utf-8?B?dGNEcU45R1Y0azZuWnN5SmtwNndLaFVFcUxKaFU0QVFXVjNDc2g2VWY2VzVJ?=
 =?utf-8?B?anRTdlJLanQ2TkluZExZYko3bHNGRHJZemZoa1dKUE5LWTFabGF2Ui83WHlJ?=
 =?utf-8?B?WUtGdFBHSWZTUzZMVmgzcGUyaGZ2YzhPVVdyUXlEYTdFdXRQeml3OWVkSk0w?=
 =?utf-8?B?S0lUZDlWVHpHbStlV3dQeGFXQkRFdVFYRVRwdC94d0xzY0hPNkxPTUplM2FQ?=
 =?utf-8?B?TXpqZmtkeXlFSGJJK2lUNnNKd2dYenZjTHVMcnc1U25pMVJsbmFiVTkrR0RG?=
 =?utf-8?B?L3VkOUNmbVc0bWkzWjNzSnQ3YUJKM1lyaFVtUGs0Zm9lMkI3SUNGVXZwem9D?=
 =?utf-8?B?VHBKeGxNTHZBOUM3akIvd1VlRE0zOHpZT1BCYkpMWUNIOUpHMFRRTlh4Uys0?=
 =?utf-8?B?MUIxZWdwZTkwZmY4YUJYZUI2dCs5NHQ5M2ZhVnExei9WOW5HaXdSZGNHc0pV?=
 =?utf-8?B?eGRQcTB6Q0FicWVaYUdnWnprUGx0OHkxbnlmL3BPNnIrOTlYc2swaEt2Z1B5?=
 =?utf-8?B?dlEyVWRma0ZNbWxLa1VwZExmZkZxR2hxbW9OZ2ZqL2lkWjQ5N05WM1UwcTNS?=
 =?utf-8?B?OCtSOFBIMzR1Vkhza3hKUWM5Ui90Wk9zOTVBNHlObmF5czkrZmQ3S2xOWWFh?=
 =?utf-8?B?T1RkZDdZMExWbEY0NVJXazJzT1dYclR4VGFuNDc1L09mWjlOOEtkNXduQWNM?=
 =?utf-8?B?YS9YNmRBOFFoK093SERpQjFsamdDY0JVeW1SRk5IVS96SHBXbVlUT0R0TWhO?=
 =?utf-8?B?c2pIT05pMTFwSUF0Zkd6ZzVGbWxIRTcvVVptZHd3c0trNmxsanFldm5ZckhG?=
 =?utf-8?B?cExRSDNQUGlYR2dJY2xZMkdWQTN0Y3ZhYkdSV09ORVFNckhyREFTemJRdXFy?=
 =?utf-8?B?c0FxeXZpeCszenpiZ1ZWTWM5TGFBYUtJRjZRQ2x4VHA5US8vSmRxdE1jWU5j?=
 =?utf-8?B?cWV0SUhWOWR1dkR1RStyOUJkR0Rmb2h1eDVlOG9tVmJnY2hLeHlsUXc1ek1S?=
 =?utf-8?B?T3J3QXE2NnVlaWM3OHc5Q1dzY1pFV2Y2cGxuVmd4UTFraytmU2ZSK3p3elpR?=
 =?utf-8?B?b0pxTjdXQzZ1a04vaFpTLzhvdE4zd1hpTGVqcTRYbm8zRlA2Lytyams5dGQz?=
 =?utf-8?B?VDltRHNjTkRRYU1MNmlOMkh3UWM3YTBwMldJM2ZUeW9tbldGOG1mTDJwZ2xU?=
 =?utf-8?B?WWIvSmRhWkx1RlhrVEc5MWJsalB4SnBnWndFd0ZPRlFlVVl4WExlN29pSDJQ?=
 =?utf-8?B?WHRsc0ttWmdpVkxLOGh0N3FoN3ZXSWhkYzU4dlMzN2IwcVBYTkdKdWpianBL?=
 =?utf-8?B?WCtPMGtmTmRjOVIxRDdjcjdsRTk0TDNFNDhqdE5reFEvdTRvMUJLMWZCLytt?=
 =?utf-8?B?bFdReXl6ZTJxNEViczNZMlBjRzhLRDNVdGhYT3hjU0NTV0t4bGpzcXdMOXFz?=
 =?utf-8?B?YWlMdUtkcm95VVV0anJ0Vk1BQm5wbXN4cTZzdmdzcDhxdkZVVEJWZUFLSmtK?=
 =?utf-8?B?dzN2RmZ2M3VEY2lOVzhLdTl0dFpZaGMvVXg1blNONHVReHgrcEpad1Y0OU52?=
 =?utf-8?B?WktGVTNoekcybW92MTMwd3BXditNRjlRNDJNSzViZSttd2lVK1RKSlRESjN1?=
 =?utf-8?B?bWtBaWxMM2E3aWliVllOVjc4bmNsbkNmbHdQazd0clhvdTdLdkl6c2VnWFp6?=
 =?utf-8?B?THY2emtzRjZ3Zmt2Vlc4WmN6bkJrc3dQdXR0MHZNRWMwY0ZZTFdmdHB4RG5Z?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99ffcfc7-9146-4c1a-953b-08db9eeae719
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2023 06:26:34.1202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EI14G91lk3/GVan7lTPG1zgutdBzyqqj/TDh48C1UADOb2zRUi7F9lFywFs9W57BYhnX33INzTFVNtq5HDrHlQMX44PfnuqrdeliFQSahEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 4/8] drm/i915/vdsc: Add function to read
 any PPS register
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


On 8/16/2023 3:46 PM, Jani Nikula wrote:
> On Wed, 16 Aug 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>>> On Tue, 08 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>>>> Add function to read any PPS register based on the intel_dsc_pps enum
>>>> provided. Add a function which will call the new pps read function and
>>>> place it in crtc state. Only PPS0 and
>>>> PPS1 are readout the rest of the registers will be read in upcoming
>>>> patches.
>>>>
>>>> --v2
>>>> -Changes in read function as PPS enum is removed -Initialize pps_val
>>>> as 0 in pps_read func itself [Jani] -Create a function that gets the
>>>> required register and call that in the common read function [Jani]
>>>> -Move the drm_WARN_ON one abstraction layer above [Jani]
>>>>
>>>> --v3
>>>> -Send both reg values regardless of dsc engine no [Jani] -Don't use
>>>> num_vdsc_instances stick to dsc_split field [Ankit]
>>>>
>>>> --v4
>>>> -Manipulate the reg values instead of creating MACRO to change name of
>>>> pps [Ankit]
>>>>
>>>> --v5
>>>> -Read dsc reg values using array rather than individual variables
>>>> [Ankit] -Loop the verification of all dsc engine reads to future proof
>>>> it [Ankit] -Keep the fix me comment in this patch and remove it in
>>>> later one where we add other readouts [Ankit] -Add switch statement
>>>> that fills in the required registers based on no of vdsc engines per
>>>> pipe.
>>>>
>>>> --v7
>>>> -Pass no of vdsc instances from read_reg function [Ankit] -Fix issue
>>>> where arrays do not get freed on return for read_and_verify func
>>>> [Ankit]
>>>>
>>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 129 +++++++++++++-----
>>>>   .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
>>>>   2 files changed, 105 insertions(+), 36 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>>> b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>>> index dc86514d9e17..aa93228ca7af 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>>> @@ -365,6 +365,28 @@ int intel_dsc_get_num_vdsc_instances(const
>>> struct intel_crtc_state *crtc_state)
>>>>   	return num_vdsc_instances;
>>>>   }
>>>>
>>>> +static void intel_dsc_get_pps_reg(const struct intel_crtc_state
>>> *crtc_state, int pps,
>>>> +				  i915_reg_t *dsc_reg, int no_vdsc_per_pipe)
>>> {
>>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>> +	enum pipe pipe = crtc->pipe;
>>>> +	bool pipe_dsc;
>>> Matter of taste, but to me that's four local variables too many for small things
>>> like this.
>>>
>>>> +
>>>> +	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
>>>> +
>>>> +	switch (no_vdsc_per_pipe) {

Forgot to mention earlier, perhaps vdsc_per_pipe?


>>>> +	case 2:
>>>> +		dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS_REG(pipe, pps) :
>>> DSCC_PPS_REG(pps);
>>>> +		fallthrough;
>>>> +	case 1:
>>>> +		dsc_reg[0] = pipe_dsc ? ICL_DSC0_PPS_REG(pipe, pps) :
>>> DSCA_PPS_REG(pps);
>>>> +		break;
>>>> +	default:
>>>> +		MISSING_CASE(no_vdsc_per_pipe);
>>>> +	}
>>>> +}
>>>> +
>>>>   static void intel_dsc_pps_configure(const struct intel_crtc_state
>>>> *crtc_state)  {
>>>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>> @@ -994,17 +1016,83 @@ void intel_dsc_disable(const struct
>>> intel_crtc_state *old_crtc_state)
>>>>   	}
>>>>   }
>>>>
>>>> +static int intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
>>>> +				  int pps, u32 *pps_val)
>>>> +{
>>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>>> +	const int no_vdsc_per_pipe =
>>> intel_dsc_get_vdsc_per_pipe(crtc_state);
>>>> +	i915_reg_t *dsc_reg;
>>>> +	u32 *pps_temp;
>>>> +	int i, ret = 0;
>>>> +
>>>> +	dsc_reg = kcalloc(no_vdsc_per_pipe, sizeof(dsc_reg), GFP_KERNEL);
>>>> +	if (!dsc_reg)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	pps_temp = kcalloc(no_vdsc_per_pipe, sizeof(pps_temp),
>>> GFP_KERNEL);
>>>> +	if (!pps_temp) {
>>>> +		kfree(dsc_reg);
>>>> +		return -ENOMEM;
>>>> +	}
>>> no_vdsc_per_pipe is at most 2. Temporary dynamic allocation is way overkill
>>> here.
>> Yes but Ankit was of the thought that we can future proof this going forward if by any chance we get more dsc engines
> Keep it simple. There's going to have to be quite a few engines per pipe
> before this needs to be dynamically allocated. This is also future
> proof, and we'll only need to update one value to expand to more.


I agree. I just wanted to avoid, 2 dsc_regs, (dsc_reg1, and dsc_reg2) 
sent as an argument, and have an array instead.


Regards,

Ankit

>
> 	i915_reg_t dsc_reg[2];
>
> 	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) < intel_dsc_get_vdsc_per_pipe(crtc_state));
>
> 	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, ARRAY_SIZE(dsc_reg));
>
> 	for (i = 0; i < min(ARRAY_SIZE(dsc_reg), intel_dsc_get_vdsc_per_pipe(crtc_state)); i++) {
>          	u32 val;
>
> 	        val = intel_de_read(i915, dsc_reg[i])
>
>                  if (i == 0)
>                  	*pps_val = val;
>                  else if (val != *pps_val)
>                  	return -EINVAL;
> 	}
>
> 	return 0;
>
> Adjust intel_dsc_get_pps_reg() accordingly to respect size of the
> dsc_reg destination:
>
> static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
> 				  i915_reg_t *dsc_reg, int dsc_reg_size)
>
>>>> +
>>>> +	*pps_val = 0;
>>>> +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, no_vdsc_per_pipe);
>>>> +	*pps_val = intel_de_read(i915, dsc_reg[0]);
>>>> +	if (no_vdsc_per_pipe > 1) {
>>>> +		for (i = 0; i < no_vdsc_per_pipe - 1; i++) {
>>>> +			pps_temp[i] = intel_de_read(i915, dsc_reg[i]);
>>>> +			pps_temp[i + 1] = intel_de_read(i915, dsc_reg[i + 1]);
>>>> +			if (pps_temp[i] != pps_temp[i + 1]) {
>>>> +				ret = 1;
> Please don't use random magic numbers for return codes.
>
>>>> +				break;
>>>> +			}
>>>> +		}
>>>> +	}
>>> What is going on here? Feels like this has grown way more complicated than
>>> it needs to be since I last looked at this series. :(
>> In case of more than 2 vdsc engines (just for future proofing) this loops looks at all the registers being used for
>> that pipe and makes sure everyone has the same value
> Right. But for that you only need to store one value to compare, not all
> of them.
>
> Always try to find the simple solution!
>
>
> BR,
> Jani.
>
>> Regards,
>> Suraj Kandpal
>>>> +
>>>> +	kfree(dsc_reg);
>>>> +	kfree(pps_temp);
>>>> +	return ret;
>>>> +}
>>>> +
>>>> +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state
>>> *crtc_state,
>>>> +					      int pps, u32 *pps_val)
>>>> +{
>>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>>> +	int ret;
>>>> +
>>>> +	ret = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
>>>> +	drm_WARN_ON(&i915->drm, ret);
>>>> +}
>>>> +
>>>> +static void intel_dsc_get_pps_config(struct intel_crtc_state
>>>> +*crtc_state) {
>>>> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>>>> +	u32 pps_temp1, pps_temp2;
>>>> +
>>>> +	/* FIXME: add more state readout as needed */
>>>> +
>>>> +	/* Readout PPS_0 and PPS_1 registers */
>>>> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
>>>> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
>>>> +
>>>> +	vdsc_cfg->bits_per_pixel = pps_temp2;
>>>> +
>>>> +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
>>>> +		vdsc_cfg->bits_per_pixel >>= 1;
>>>> +
>>>> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4; }
>>>> +
>>>>   void intel_dsc_get_config(struct intel_crtc_state *crtc_state)  {
>>>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>>> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>>>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>> -	enum pipe pipe = crtc->pipe;
>>>>   	enum intel_display_power_domain power_domain;
>>>>   	intel_wakeref_t wakeref;
>>>> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
>>>> -	int no_vdsc_instances_per_pipe;
>>>> +	u32 dss_ctl1, dss_ctl2;
>>>>
>>>>   	if (!intel_dsc_source_support(crtc_state))
>>>>   		return;
>>>> @@ -1025,38 +1113,7 @@ void intel_dsc_get_config(struct intel_crtc_state
>>> *crtc_state)
>>>>   	crtc_state->dsc.dsc_split = (dss_ctl2 &
>>> RIGHT_BRANCH_VDSC_ENABLE) &&
>>>>   		(dss_ctl1 & JOINER_ENABLE);
>>>>
>>>> -	/* FIXME: add more state readout as needed */
>>>> -
>>>> -	no_vdsc_instances_per_pipe =
>>> intel_dsc_get_vdsc_per_pipe(crtc_state);
>>>> -
>>>> -	/* PPS0 & PPS1 */
>>>> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>>> -		pps1 = intel_de_read(dev_priv,
>>> DSCA_PICTURE_PARAMETER_SET_1);
>>>> -		if (no_vdsc_instances_per_pipe > 1) {
>>>> -			pps_temp1 = intel_de_read(dev_priv,
>>> DSCC_PICTURE_PARAMETER_SET_1);
>>>> -			drm_WARN_ON(&dev_priv->drm, pps1 !=
>>> pps_temp1);
>>>> -		}
>>>> -	} else {
>>>> -		pps0 = intel_de_read(dev_priv,
>>>> -
>>> ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
>>>> -		pps1 = intel_de_read(dev_priv,
>>>> -
>>> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
>>>> -		if (no_vdsc_instances_per_pipe > 1) {
>>>> -			pps_temp0 = intel_de_read(dev_priv,
>>>> -
>>> ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
>>>> -			pps_temp1 = intel_de_read(dev_priv,
>>>> -
>>> ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
>>>> -			drm_WARN_ON(&dev_priv->drm, pps0 !=
>>> pps_temp0);
>>>> -			drm_WARN_ON(&dev_priv->drm, pps1 !=
>>> pps_temp1);
>>>> -		}
>>>> -	}
>>>> -
>>>> -	vdsc_cfg->bits_per_pixel = pps1;
>>>> -
>>>> -	if (pps0 & DSC_NATIVE_420_ENABLE)
>>>> -		vdsc_cfg->bits_per_pixel >>= 1;
>>>> -
>>>> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
>>>> +	intel_dsc_get_pps_config(crtc_state);
>>>>   out:
>>>>   	intel_display_power_put(dev_priv, power_domain, wakeref);  } diff
>>>> --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>>>> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>>>> index 785ede31116e..862dc708c5fc 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>>>> @@ -78,6 +78,10 @@
>>>>   /* Icelake Display Stream Compression Registers */
>>>>   #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
>>>>   #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
>>>> +#define DSCA_PPS_0				0x6B200
>>>> +#define DSCC_PPS_0				0x6BA00
>>>> +#define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0
>>> + (pps) * 4)
>>>> +#define DSCC_PPS_REG(pps)			_MMIO(DSCC_PPS_0
>>> + (pps) * 4)
>>>>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>>>>   #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>>>>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
>>>> @@ -88,6 +92,14 @@
>>>>   #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)
>>> 	_MMIO_PIPE((pipe) - PIPE_B, \
>>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
>>>> +#define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) -
>>> PIPE_B, \
>>>> +
>>> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
>>>> +
>>> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
>>>> +#define ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) -
>>> PIPE_B, \
>>>> +
>>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>>>> +
>>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
>>>> +#define  ICL_DSC0_PPS_REG(pipe, pps)
>>> 	_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
>>>> +#define  ICL_DSC1_PPS_REG(pipe, pps)
>>> 	_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>>>>   #define  DSC_NATIVE_422_ENABLE		BIT(23)
>>>>   #define  DSC_NATIVE_420_ENABLE		BIT(22)
>>>>   #define  DSC_ALT_ICH_SEL		(1 << 20)
>>> --
>>> Jani Nikula, Intel Open Source Graphics Center

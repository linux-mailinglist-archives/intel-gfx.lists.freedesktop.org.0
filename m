Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BEF645367
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 06:24:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D0010E357;
	Wed,  7 Dec 2022 05:24:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D2FB10E359
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 05:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670390639; x=1701926639;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ULLexESGJVtBpqEZiP8CFoScZ4/M+dW220+6TnpT348=;
 b=IWu9vukBnn0JxmliduN0LH/AI1++aLVkhwqdYRQoD1+n5pqrpN/hL09q
 ziiz+lbGb1wtEXgED0fKnxb0n4jAB5YzF4HymJKS/a/xVhCwudHPryjhn
 AoQ1ykMVzPfp8z+ZH2ixzmW5Xj3t6IYQSRkLn9kEDYWi7ivBVn2pvvrbZ
 DbwJ5NA+ptwl+WKimZEtIc26QwrjyCYEuY92fgGj75xcBzZrFthB+f0gV
 3mDJhrdJ0ee5WuRdNP5nmqPiIH1JymtzZft1rKNreDNPzLH3rp+TPpcJy
 vqU+o5QI7yqWpBpoQM8XIDeIICJX/XCrdstjKi1PtwhK68Rg9gsJXzHvI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="403080578"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="403080578"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="640123879"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="640123879"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 06 Dec 2022 21:23:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 21:23:57 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 21:23:57 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 21:23:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHud1uRqYL065bkl5Acqody09OB2OcVGf+9CwDJqkxX+tPSAIUNn8+SprouyjhfjP93d3RdPRWQlleYyMwCAt3IokG7r786h5m0H/4HTc7f54RYNPc0IjCApPNylBGxim3Wajm0dYEY9TvIm2HOqe9CDjNW7MZQjOn6fcQSQIbgVO06uJJ6it9E68JGS38u4YJRHFhLDod0QInLn3MAJ0ClRUmKAnhwHmu3UwFmW974Y8JNfPeTzv93VOozayrcg9TKEhpZ0tL3kWEkopfUl1NAVsjVtJ+JxvJHLOzNA2efTyRD+PAxy6UULeVaBPUUFaVGyDORGejaGrYFEC/XxZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1k4afdO69C5U9gbG9Qoi1qVJKDYPZN3eZxUW1FbmCw0=;
 b=N9p2rNjt8sfR3MYT9mNC3Pif7gBDG5Pvgl7XSsS6Og0Z7FMU33ZEMKAPq1oBuIEw6VykwmCgR4uiNendcNJIMXrNFUJOu2riP/nT979xgkA0TjWuYTy2xidxNh653RvDjNcibq31wzn8W5oW7Kk0cmG8KWxft5jbEXuYThLFghVVLYUoZK+2ky7t8QEncBXJwngYnt/aVoQ0w7cwz8CQy+LIc+75FXBTNB8BLHyS/Fw28Xqa8tTPP3ma/PHInwVgXDhun0AMXitVB6+qimNU0JeVQwVmvxxXjyLuMv3k9loGiF/PkZGobrPsVtneCoWlI1FpSTN1HocBJX6GSEYszg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SA1PR11MB5779.namprd11.prod.outlook.com (2603:10b6:806:232::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.11; Wed, 7 Dec
 2022 05:23:53 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%8]) with mapi id 15.20.5880.013; Wed, 7 Dec 2022
 05:23:53 +0000
Message-ID: <1e4f2f1f-2f83-4fac-fe59-26a02388719d@intel.com>
Date: Wed, 7 Dec 2022 10:53:43 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, "Dixit, Ashutosh"
 <ashutosh.dixit@intel.com>
References: <20221203031454.1280538-1-ashutosh.dixit@intel.com>
 <167026864976.24404.7699144400179212672@emeril.freedesktop.org>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
In-Reply-To: <167026864976.24404.7699144400179212672@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0132.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::16) To CY5PR11MB6211.namprd11.prod.outlook.com
 (2603:10b6:930:25::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6211:EE_|SA1PR11MB5779:EE_
X-MS-Office365-Filtering-Correlation-Id: d0d0ee1d-78b7-48ed-0278-08dad8133ae8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vafrGTZIYUr2CWoLxv1Q95axaRqe1bDoV4Eqr0zaHWT+GwPi7fARHhr+zqHoCch84xGjHYKmCpa7ea3t2mHyFmhVAXRKEOfKrYCrvqzTjQv1dJp6eOLmoY93HrYI9pORIumDVUcGbqicWscBAN8CQJeZsbw/Dt59xsp7ZOrSxOkYmx2tcL5wfPhJGV0AnJbazgZ+aYz8vPAhtAim5je1fAwJwYE5yzH8S4Skb9bswhb/JQEWWDKg+28nppp+0GIGIex5GFJGb7XGGJ7kfJG3PBceWAj+P+uLLwFhRkDECVla9v9DXd/Mjuo+/+nUrlASCJMvb2DZj1Do+e7H43oWBK+jZI+i0vnrXCaz66m+fvznOecu38Eu1ZU5jUcQVwnHZzcEA3IEeP5rPIT9jIkjUuZwRr3b4mWOBdjjMJb1CHIqbk2QRCrBJ5QbX6HCpk1XnfmlmyvZDPWd3xapbgCryhe7h0kRe3V0Wdi9YFdG73Ut02DI10O4fOt62xb6DNrLt5MFpdtrbPayjY6Gt4ffIh4FPnAgPC/sOPOZaCcsCROXxABDsUxe8+57cVn8iAX/t8iasLV0Ua1cjOk0bN4YtqTLHY+RziITyYqSL43dt7PGhUsYYPrfbN/yoYuwTjh5vqfeXIfSAnB0dEMnHQSPMgxnwWttjYBZ46/i3sQyb14rLEJrybntFDuSxiFAyxbhcnnIJz0I4XZ37nBt36duWNp024QjSzSoRi0mTNOK5+jz1O8vk44w7fmaXEjkCo76pyfH1upkwN5nYZ6Dcts1bpY1m8x35shdaYfkq9jCgeThabm9GyN9fmOiNeNv52wp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(39860400002)(366004)(376002)(136003)(451199015)(2906002)(82960400001)(66556008)(66476007)(316002)(66946007)(8936002)(6512007)(15650500001)(2616005)(5660300002)(186003)(83380400001)(26005)(30864003)(41300700001)(36756003)(38100700002)(6636002)(110136005)(31686004)(53546011)(6506007)(31696002)(6486002)(55236004)(478600001)(6666004)(86362001)(966005)(13750500001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUI3MWZvSGcyRUI2MmZuckE2cjB6VVlMOE8yYlE5aC9CM29vWmRIRWx2SVVE?=
 =?utf-8?B?Z3o4eHVtMjFXUy9rZVhnZVNVQU41N3V0ME9PVm1jaWs1T3BYckZwQ3NrVkxZ?=
 =?utf-8?B?dUdmNzRSRkJoZWxyQ0FMektmVVBkb2pvZEJYMUgrYzhUckhIYlA2UVE4Rkps?=
 =?utf-8?B?OVRWc21RazZVZzlaZFgvUnZEUjY2THFtNklib3ZsUXhHaWVUVnVscGVBZHhH?=
 =?utf-8?B?MGNNMFFhbG50MHhQakJEUUdvZXM2bEJKNG4xU3IwMkRvU1hGKzVGTHo5MHly?=
 =?utf-8?B?NXUvT3NRY3gycUwyREFvUmloSEdjQ2xTYUxkT3Y4SlNoTmJMZ2x4emJ2T3U2?=
 =?utf-8?B?SEZCWDMwN0c3d0pocTFjbkYwakRmVlhsTU5JSkkydFRHbmxuTTBFelBSVjBy?=
 =?utf-8?B?QU5MZHFpRDU5a1JZSExVSjl4QW1tOWN2S3VQM0NXMkI4QlVubXJwTXhlUm1T?=
 =?utf-8?B?WkRIQWFmc0JpU2l6UGoraUFISkF0Mmd4NzJsNERxVjY5djNCNTZlSklHVTFx?=
 =?utf-8?B?ZjE2SFVBSGtQUnF2c241WldNd2lFeTI5NHYxa1JWZlZmQ2RkTEcvWnlJKytU?=
 =?utf-8?B?bkNVcUNsbjVWNndlL0w4dFZvQ3Rub0xMandmU01SazRibitmc2VoZ1l1bTIr?=
 =?utf-8?B?c3M3cUZGem1SaGxwZ3ljRmEwRW90V28wT0hqWjIzOHZGK08yR0FLMmhtaFov?=
 =?utf-8?B?Rk9pMkNXRG5JWUs3SXRvd2Zqb1hNY2FMOGs0YVpLUm9TUEwvYzlZZHVBeXJx?=
 =?utf-8?B?U1I2b210V0IxckI0aTJwdW9ZMmZpcXczbjRJcUdqN0VUVkdTVURwbTFMdFBz?=
 =?utf-8?B?VUVoSnJnenU1YlVmeldZNkVaaUp5UWpsQkFrNDlLRWU0OEVDaFdDRFB5eFhT?=
 =?utf-8?B?SlN0UzVWdmZJTlBEQWlDeDVkWndycUlVdytyc1QzeTQwaXB5WWVtOEhUUHJi?=
 =?utf-8?B?b1plazlMVUExY04wYmoyWDR4bXlQcDk0Qi9YeEN2U1FwWkovaGkyV3NUU093?=
 =?utf-8?B?dFdBZ1E1OE5HekFDQ3ptNVpEbnNvZi9pbWd6Q01hUnhIRHNYbFNQL1hXbm5S?=
 =?utf-8?B?Wlk5R1V5SVhVbkwyaU0vYjRRd0lDTmh3T2FzOFFHUXhnSWVjNmp4VlNtdnQ4?=
 =?utf-8?B?RWxtRjcyOXlQUzM1U3Y2WnJLeVpBajBZa0NRdFVpclR0R1pnWHE1LzJ0R1JO?=
 =?utf-8?B?NXAvY3NNMmJucHRySnM4bi9yRmNnZy9lTnFLZThCOEtwUHFZcE5oeG1vMmNo?=
 =?utf-8?B?VkNzVWhjWlB5S2xhMDNPOHhPUTdPS2dhKzlsUmk3VUplaU91RS9heXV5em43?=
 =?utf-8?B?Ym5LNjlQdEQwSTJURFA4NSt1ZFBnZjBxYmlGTHNSOU53ZVMwVFV4a0FMU0Fr?=
 =?utf-8?B?OGgzQzdodmovNkZuRHd3Y0k5L0FDZGhGMDk1bWY1NFE5UHNzNWhKWFdhL2RZ?=
 =?utf-8?B?Skx0aDJqMUFoUUVBaUpmRUwwY0licTJLa3JvK0tjcTVjL29UbDY5VWFYVHAv?=
 =?utf-8?B?ekZoM2pDamdMTlFva2JQc1BQcTQzVEwveFdxMWpsWWtQQmpwYTIwRW83WWVU?=
 =?utf-8?B?emJyS3drNktkcTBnMHVaTHl4V0N6NFhaNGprTW9hckM0NmlGY0hzQnJvS1U0?=
 =?utf-8?B?M0ljMFZ3OCtIMTUwb005aVRHQy9Da0ozWjh0SC8vTGVVNWdIbk8xM0RZTS8y?=
 =?utf-8?B?L1lvZE15K2s3WmFlRHJaVGM1b2dPcURXTE41elVHV2pNZktUR3Mwdml0VVBS?=
 =?utf-8?B?bm1hMXU3VDFxZVFMNHB5SzRCRGhtWUY5aDFqOExaM0NVRks0R2l3bkZ2aFM2?=
 =?utf-8?B?czhUbzFhVkRid2Z0RE5pRnJ6TnVNMGg3Tk4wMU9QNVU0QlZCTE05RGcySmYw?=
 =?utf-8?B?OGpkQnV5M25Yc3VXRGhjejlDeVE4TGh4eEg0LzdiczZiU3NGMkROaDl0Y0Zp?=
 =?utf-8?B?UlFoQmtkTzNVTnpKR0tVdmJjQ2xEQXhpcGxmc1ZvY0JwRlhHZytGZ0FnejVI?=
 =?utf-8?B?eGxsdllkT3dwQXYrMUx2RFNBMVpEY1MxNUlKN0JuUzVob2VnbjQxQ2M2YUxa?=
 =?utf-8?B?V2ZyWHFUK1hVTGcva3B1R2ZHWFhJcEF6bUduUHRjbG82VHBKMStkTEdUS0JG?=
 =?utf-8?B?NCtBM0tXamtOK1QvbDREVzVDb0VXTndsODlBRkFOMjdUZ1RiSkZNMDdJZURM?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0d0ee1d-78b7-48ed-0278-08dad8133ae8
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 05:23:53.4200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ByDsPprfoLsz59WU4PSoHYZuCjjypVO/au2M+vnm9ECI/+J4UgR5piyC3Zjxs/0PHRRpSoWY+O8a88NVpp4LX+h62LNIzIk41CPGUt9J9KY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5779
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hwmon=3A_Silence_=22mailbox_access_failed=22_warning_in_s?=
 =?utf-8?q?nb=5Fpcode=5Fread_=28rev2=29?=
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



On 12/6/2022 1:00 AM, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/hwmon: Silence "mailbox access failed" warning in 
> snb_pcode_read (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/111599/ 
> <https://patchwork.freedesktop.org/series/111599/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12467_full -> Patchwork_111599v2_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_111599v2_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_111599v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (14 -> 14)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_111599v2_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@kms_sequence@queue-busy@edp-1-pipe-a:
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl3/igt@kms_sequence@queue-busy@edp-1-pipe-a.html>
Above are unrelated failure.
Pushed to drm-intel-gt-next, with checkpatch COMMIT_LOG_LONG_LINE fix to 
commit log.
Thanks for patch.
BR,
Anshuman Gupta.

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@kms_content_protection@legacy:
>       o {shard-tglu-9}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-tglu-9/igt@kms_content_protection@legacy.html> +19 similar issues
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_111599v2_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@dmabuf@all@dma_fence_chain:
> 
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl9/igt@dmabuf@all@dma_fence_chain.html> (i915#6949 <https://gitlab.freedesktop.org/drm/intel/issues/6949>)
>   *
> 
>     igt@drm_fdinfo@virtual-busy-idle:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl3/igt@drm_fdinfo@virtual-busy-idle.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>) +1 similar issue
>   *
> 
>     igt@gem_ctx_exec@basic-nohangcheck:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html> (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>)
>   *
> 
>     igt@gem_exec_balancer@parallel-ordering:
> 
>       o
> 
>         shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-tglb6/igt@gem_exec_balancer@parallel-ordering.html> (i915#6117 <https://gitlab.freedesktop.org/drm/intel/issues/6117>)
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html> (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
> 
>   *
> 
>     igt@gem_exec_endless@dispatch@vcs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-tglb2/igt@gem_exec_endless@dispatch@vcs0.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-tglb5/igt@gem_exec_endless@dispatch@vcs0.html> (i915#3778 <https://gitlab.freedesktop.org/drm/intel/issues/3778>)
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o
> 
>         shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-apl8/igt@gem_exec_fair@basic-deadline.html> (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
> 
>       o
> 
>         shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl7/igt@gem_exec_fair@basic-deadline.html> (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
> 
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-tglb3/igt@gem_huc_copy@huc-copy.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-tglb7/igt@gem_huc_copy@huc-copy.html> (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-multi:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1 similar issue
>   *
> 
>     igt@gem_lmem_swapping@verify:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-glk8/igt@gem_lmem_swapping@verify.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_pread@exhaustion:
> 
>       o shard-skl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl7/igt@gem_pread@exhaustion.html> (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@gem_spin_batch@legacy@bsd1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl4/igt@gem_spin_batch@legacy@bsd1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl3/igt@gem_spin_batch@legacy@bsd1.html> (i915#2898 <https://gitlab.freedesktop.org/drm/intel/issues/2898>)
>   *
> 
>     igt@gem_tiled_wb:
> 
>       o shard-skl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl7/igt@gem_tiled_wb.html> (i915#6990 <https://gitlab.freedesktop.org/drm/intel/issues/6990>)
>   *
> 
>     igt@gem_workarounds@suspend-resume:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-apl7/igt@gem_workarounds@suspend-resume.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-apl8/igt@gem_workarounds@suspend-resume.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@i915_pm_dc@dc9-dpms:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html> (i915#4281 <https://gitlab.freedesktop.org/drm/intel/issues/4281>)
>   *
> 
>     igt@i915_selftest@mock@vma:
> 
>       o shard-skl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl3/igt@i915_selftest@mock@vma.html> (i915#6950 <https://gitlab.freedesktop.org/drm/intel/issues/6950>)
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-apl1/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
> 
>     igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-glk8/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-storm-disable:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-glk8/igt@kms_chamelium@hdmi-hpd-storm-disable.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1 similar issue
>   *
> 
>     igt@kms_chamelium@vga-hpd:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-apl1/igt@kms_chamelium@vga-hpd.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2 similar issues
>   *
> 
>     igt@kms_chamelium@vga-hpd-for-each-pipe:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb6/igt@kms_chamelium@vga-hpd-for-each-pipe.html> (fdo#109284 <https://bugs.freedesktop.org/show_bug.cgi?id=109284> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1 similar issue
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-tglb6/igt@kms_chamelium@vga-hpd-for-each-pipe.html> (fdo#109284 <https://bugs.freedesktop.org/show_bug.cgi?id=109284> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1 similar issue
> 
>   *
> 
>     igt@kms_chamelium@vga-hpd-without-ddc:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl7/igt@kms_chamelium@vga-hpd-without-ddc.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2 similar issues
>   *
> 
>     igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl5/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html> (i915#6951 <https://gitlab.freedesktop.org/drm/intel/issues/6951>)
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html> (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +6 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +2 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +3 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +145 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672> / i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=109280>)
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=109280> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
> 
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +38 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html> (i915#4573 <https://gitlab.freedesktop.org/drm/intel/issues/4573>) +2 similar issues
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html> (i915#5176 <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +1 similar issue
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +2 similar issues
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-apl8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1 similar issue
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1 similar issue
>   *
> 
>     igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb2/igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1.html> (i915#5939 <https://gitlab.freedesktop.org/drm/intel/issues/5939>) +2 similar issues
>   *
> 
>     igt@kms_psr@psr2_sprite_plane_onoff:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-apl8/igt@kms_psr@psr2_sprite_plane_onoff.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +59 similar issues
> 
>       o
> 
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb7/igt@kms_psr@psr2_sprite_plane_onoff.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +1 similar issue
> 
>   *
> 
>     igt@sysfs_clients@create:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl7/igt@sysfs_clients@create.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>   *
> 
>     igt@sysfs_clients@fair-3:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-apl1/igt@sysfs_clients@fair-3.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>) +1 similar issue
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@fbdev@read:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-1/igt@fbdev@read.html> (i915#2582 <https://gitlab.freedesktop.org/drm/intel/issues/2582>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-6/igt@fbdev@read.html>
>   *
> 
>     igt@feature_discovery@psr2:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb6/igt@feature_discovery@psr2.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb2/igt@feature_discovery@psr2.html>
>   *
> 
>     igt@gem_bad_reloc@negative-reloc:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-6/igt@gem_bad_reloc@negative-reloc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-5/igt@gem_bad_reloc@negative-reloc.html> +7 similar issues
>   *
> 
>     igt@gem_ctx_exec@basic-nohangcheck:
> 
>       o
> 
>         {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html> (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html>
> 
>       o
> 
>         {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html> (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html>
> 
>   *
> 
>     igt@gem_ctx_persistence@engines-hang@bcs0:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html> (i915#6252 <https://gitlab.freedesktop.org/drm/intel/issues/6252>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-3/igt@gem_ctx_persistence@engines-hang@bcs0.html> +1 similar issue
>   *
> 
>     igt@gem_exec_balancer@fairslice:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-5/igt@gem_exec_balancer@fairslice.html> (i915#6259 <https://gitlab.freedesktop.org/drm/intel/issues/6259>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-3/igt@gem_exec_balancer@fairslice.html>
>   *
> 
>     igt@gem_exec_balancer@parallel-bb-first:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html> (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html> +3 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-flow@rcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>   *
> 
>     igt@gem_exec_schedule@semaphore-power:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html> (i915#7276 <https://gitlab.freedesktop.org/drm/intel/issues/7276>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html>
>   *
> 
>     igt@gem_exec_suspend@basic-s3@smem:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html> +1 similar issue
>   *
> 
>     igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html> +2 similar issues
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-apl2/igt@gen9_exec_parse@allowed-single.html> (i915#5566 <https://gitlab.freedesktop.org/drm/intel/issues/5566> / i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-apl2/igt@gen9_exec_parse@allowed-single.html>
>   *
> 
>     igt@gen9_exec_parse@cmd-crossing-page:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-4/igt@gen9_exec_parse@cmd-crossing-page.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html> +1 similar issue
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb7/igt@i915_pm_dc@dc6-psr.html> (i915#3989 <https://gitlab.freedesktop.org/drm/intel/issues/3989> / i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb5/igt@i915_pm_dc@dc6-psr.html>
>   *
> 
>     igt@i915_selftest@live@gt_heartbeat:
> 
>       o shard-skl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html> (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl1/igt@i915_selftest@live@gt_heartbeat.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html> +2 similar issues
>   *
> 
>     igt@kms_psr@primary_mmap_gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-1/igt@kms_psr@primary_mmap_gtt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html>
>   *
> 
>     igt@kms_psr@psr2_sprite_plane_move:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html> +3 similar issues
>   *
> 
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>       o
> 
>         shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html> (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
> 
>       o
> 
>         shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html> (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html> +1 similar issue
> 
>   *
> 
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html> (i915#5461 <https://gitlab.freedesktop.org/drm/intel/issues/5461>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>   *
> 
>     igt@kms_sysfs_edid_timing:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl4/igt@kms_sysfs_edid_timing.html> (i915#6493 <https://gitlab.freedesktop.org/drm/intel/issues/6493>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl3/igt@kms_sysfs_edid_timing.html>
>   *
> 
>     igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html>
>   *
> 
>     igt@kms_vblank@pipe-b-wait-busy:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-1/igt@kms_vblank@pipe-b-wait-busy.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-6/igt@kms_vblank@pipe-b-wait-busy.html> +9 similar issues
>   *
> 
>     igt@kms_vblank@pipe-c-accuracy-idle:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl2/igt@kms_vblank@pipe-c-accuracy-idle.html> (i915#43 <https://gitlab.freedesktop.org/drm/intel/issues/43>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl10/igt@kms_vblank@pipe-c-accuracy-idle.html>
>   *
> 
>     igt@perf_pmu@busy-double-start@vcs0:
> 
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-dg1-15/igt@perf_pmu@busy-double-start@vcs0.html> (i915#4349 <https://gitlab.freedesktop.org/drm/intel/issues/4349>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-dg1-19/igt@perf_pmu@busy-double-start@vcs0.html> +1 similar issue
>   *
> 
>     igt@prime_vgem@coherency-gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-rkl-6/igt@prime_vgem@coherency-gtt.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / fdo#111656 <https://bugs.freedesktop.org/show_bug.cgi?id=111656> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-rkl-5/igt@prime_vgem@coherency-gtt.html>
>   *
> 
>     igt@sysfs_heartbeat_interval@mixed@vecs0:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vecs0.html> (i915#1731 <https://gitlab.freedesktop.org/drm/intel/issues/1731>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vecs0.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
> 
>       o shard-apl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html> (IGT#6 <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-apl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html> (i915#4573 <https://gitlab.freedesktop.org/drm/intel/issues/4573>) +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:
> 
>       o shard-skl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html> (IGT#6 <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl10/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html> (i915#4573 <https://gitlab.freedesktop.org/drm/intel/issues/4573>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>) +1 similar issue
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1 similar issue
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html> (fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>   *
> 
>     igt@runner@aborted:
> 
>       o shard-skl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl5/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12467/shard-skl3/igt@runner@aborted.html>) (i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002> / i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>) -> (FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl6/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111599v2/shard-skl9/igt@runner@aborted.html>) (i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002> / i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312> / i915#6949 <https://gitlab.freedesktop.org/drm/intel/issues/6949>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12467 -> Patchwork_111599v2
> 
> CI-20190529: 20190529
> CI_DRM_12467: 8b1064b1f2700cf5dd6b1ebd677beda7e7bcf2a7 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7082: c5bc18db358ec5ec0b26909526f467afb6ed4e68 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_111599v2: 8b1064b1f2700cf5dd6b1ebd677beda7e7bcf2a7 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 

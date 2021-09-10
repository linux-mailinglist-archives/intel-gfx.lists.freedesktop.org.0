Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03982406CFE
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 15:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B84F6E9FA;
	Fri, 10 Sep 2021 13:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE4A36E9FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 13:40:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="243398572"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="243398572"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 06:39:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="526080617"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 10 Sep 2021 06:39:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 10 Sep 2021 06:39:54 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 10 Sep 2021 06:39:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 10 Sep 2021 06:39:54 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 10 Sep 2021 06:39:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c49O87xkA7a+JeWofpr2ihO7l3sZU8tc2mOYS3klwfP5/4A7mTR8ptaFBhWPKGFtYa1URVb0N1NCnD95D58jLZdtIgzFY73lDDrzPTQeio95CrvZerFSFXuZNtdV63eIIPcd0yUSyo32Jy/enIiTRE7fk7Ivm+o7HANJ1Umrp87NQgMoJL/ZO0JRtQFbLkYkgKTa1dsNFWVbp6CoxHiuOfzSI6ajKfnknjdtjbvDwhEzA7htJ1JZXcribehYkdKR8qjxShuACyF3FQsTrpKr0kBYx1Nt59SElB705blc+OXbw2NC2pDEU+fe/xtWaH9/v0lUDRlnWTHsWxJsvds1zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=RQT1BBfx8lgaG7Aq2Bg4j5lVBasTMzb8yKAsc4gFCdQ=;
 b=k5TwCtno6c3N8+vV9r7ODHxMLTWQaHQgAW/AWYZXb7aPlJXrBoGUn0kpWM46DnQnSSY6xZm4jEV8lwlLuDNfGTGM1acBuAM6HQ0VJfyWGTLzfeZSqsB3kPaQefzb6UW2he3gR0dyIi+5EtC7gELBLIyqrpyrBmN6nCOgtUBC7AghxJHClNuSsHgoDgFQFezp56oJmZbxdOOCypwTRXPpoafsl4KMNcOVTvXzcYwEWhcniJ14LKygdZKn19Pcx5kZur81xCfqWUeh+qr5A8GX0aoddq4t3JVKpSDrSozgV7y3UC4A40K/zI0eu1V42Gu+EO/iFI5tbBY5Qk6WlbF2Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RQT1BBfx8lgaG7Aq2Bg4j5lVBasTMzb8yKAsc4gFCdQ=;
 b=rJbMx4DjO+x9HQwgMQRlfW5wQy0ApRW5QgLYe6Ow0SQ+NDgdxmEhR2kJSqfXdNgmvHlycxzAEL17apuF3DdFRVomwHpUF8AEXxFNMkgiB40JXZKWz+UeuynWy9Hhdd0sRQK7KlgP8ImyQQnwVq1RVMmDmKSZ0y2HbM/Zr41+fqg=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5249.namprd11.prod.outlook.com (2603:10b6:610:e0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.24; Fri, 10 Sep
 2021 13:39:51 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4500.018; Fri, 10 Sep 2021
 13:39:51 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210909230725.33735-1-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <b5b28181-a1e6-3b64-84e7-18fcffc4f090@intel.com>
Date: Fri, 10 Sep 2021 16:39:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210909230725.33735-1-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0323.eurprd04.prod.outlook.com
 (2603:10a6:10:2b5::28) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.137.85) by
 DU2PR04CA0323.eurprd04.prod.outlook.com (2603:10a6:10:2b5::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Fri, 10 Sep 2021 13:39:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 36f0c0b7-8b60-491d-747c-08d9746076d6
X-MS-TrafficTypeDiagnostic: CH0PR11MB5249:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB52490B62F1B585B2DA6C1E1AB8D69@CH0PR11MB5249.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X8BwbxT+wslBAj3DhxrdUo1cUSiyeOarFZOn15XrV+VfcVvL2Ysqq9W8jksQ3ghM8t1xmJnN+p6hpEElpIdW9mLZa76QQ8qy3pevlCzFSo715chU6wbSZwL3099w3T1OspffPOspnHMfkrqrypY9p+2omdu3HQ8gLWoSv0ycbNHWeTpxZbJ12K5/gx13kvk+RvPt7jtGf1G4cSnQIS2JrHDgbdJWjJnSgr6dPEiT5xozMm/X4kyL2n9svNn7g5D4waHqF679Z5Hy8iECTWdVxoHwfV+8KJJVEoGUPs3D+vFcnLCHj6OLOyveG3bcHY34Sc44Rkm/MtVdCC48ZG9uF9azKsISwrojjqOw7qmAYVGBTNTkP7fzhRTlh7GOgdZYq5gCpaoxznBO1h8F7HR57p34epkeK5kSUCZLN5jyUAAZahc/06X+oYmJhAEXoXD6Cv91oP430mKN0b3hRkylyDf6PLSGzgrGxGJ50VbXhxGymqZSHU/kztkj9iNsBWhNxvRPoadd7a77IWz83y0u18csSi2ux3slVgM0L63kGdT6stqtQgteB3LwNi23Y+aLd/yxa+iQu5H7AW5tIsr/itUI1yAxDlXbBzINSlHOvH0FwKmeX7kDU0cZ7HHh6g/QkDyi26E9GfD+irCm2fy/2sKeQdauU2YKonbsBe6iVSf6T2mq38anw9eiQj+tnw74j7cbBWBwMvLt8DYqjmGxKpOYoNQlNJfNnN0OnHOyn8o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(376002)(39860400002)(136003)(396003)(53546011)(86362001)(16576012)(66946007)(66476007)(478600001)(26005)(6666004)(186003)(8676002)(83380400001)(5660300002)(36756003)(8936002)(956004)(66556008)(6486002)(31696002)(38100700002)(2616005)(31686004)(316002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nnk4WEx5Vm0rd1U0R3NhdmQyVDhZQWFjcjY5eS9URHB0SDZDR25pYTZ3MFMw?=
 =?utf-8?B?VGx6VllyVTNGM09aNDAzL3lERDJYY0k2NW9pUVNVZjR1NWl5TzRkVk80VlIv?=
 =?utf-8?B?WUF2SG9ydUhyK0UxNzNaaW1GclAwekV4dHZReFI1eVNZUlJ6MTYwUlArdU5y?=
 =?utf-8?B?cklaeTd1dUpCeGFnK05Kczh1RW9iMzJNNVZWYi84NVdiMjl6ckZEZ216eFdH?=
 =?utf-8?B?UzBXUlpzc05OdlFsOWNUVGpQMDJjV2x5TXlTYytpbmtpY2taeTI3TE5vUHh2?=
 =?utf-8?B?VVpxWVF1NWh4cUh1V3VVdkU2cHByWlBIV2NFampjUXE1ZVhDKzJuVExMUVhX?=
 =?utf-8?B?ZkNIQzFWdVo2TURxRGFwVEZkVlk0SVBjWS9IcEpKNGpQV2cwcm5nTHpHZGRL?=
 =?utf-8?B?UzVpUVhIK216SGVjcmdvZ1VyRFpITG16M1BKUVpWdnlmMklpT0tCTTF3THV2?=
 =?utf-8?B?dnBYenhGWU83VE1DQ2xZamd4M0Q1RTIvelJtYm56ZHZKbmc2bkpGbjdaamIv?=
 =?utf-8?B?N0tmN05hVEtjY1NIL2o4LzlpRTJDRXVCNEtQWmJOVnNZeXNOMHFlRTFBeHo5?=
 =?utf-8?B?YndNVWVHWkpxQXZyVUZvTTZIZzVITzJwYmZndzQrNmZ1b3RHcnRqWjh2L0hG?=
 =?utf-8?B?SHp4ckIxZjV1My9TSEo4cCtrYzBmZHdmTmlMR2VPNXVZTFozMXhEV0h4ZzFX?=
 =?utf-8?B?UVJObDZBT3VvSVQ2VG4wUU16NHM5NFBFQ202by9ZcVRsci8wdUV2THl4RjdH?=
 =?utf-8?B?S1hZSW5nT29mRkJPbHNqUVFNVzVuL2M4eTZvV3cwV2x3Y1FENGdLQ0Fha2V5?=
 =?utf-8?B?UGNlOFB4M2c0eUpZL2xCWmJvRUhOakw3SnVHb1E4ZW9FYTMvYWRGZVlVNlQ0?=
 =?utf-8?B?T0pIUFFUbVQ4UnE2aVFRVWRVTlVZOXVzM1ZDY3kzSEdXUk1EY3d0SmpGZ21p?=
 =?utf-8?B?N1FjMnBHYWFYaHgxMHcvdXBaM2cxTlJZdlJ4a0xvK3pOb28ydXJiS241UjhT?=
 =?utf-8?B?OVd5UlVyZEhqRUpvQ1VmdE1TZEdrQk51aUNSY0F4blk3RFBoV3FFcVdlb1oz?=
 =?utf-8?B?ZnoxQzJWWW9VNkdvZHZQbzF0SzV0dWp6Q1MxT01CMnF3RCtCdCt2VGJuMGJl?=
 =?utf-8?B?a2JzTC9KVkV1QzE5NzdLc3pLcDVHdTZtbTFUcVZkZ1BaZW0wN25MNVZlT0xH?=
 =?utf-8?B?YVR5UGdmeld2WisxVk1aRHl1RlR4T3A1bUFVT1RkZFozVmNzNm1CQVVrWWdI?=
 =?utf-8?B?NHdkVUwxRnZVTGV4Y20ySTZueUJja1FvNDFVV1pRWTRqYmVCbzlOM3RraHNR?=
 =?utf-8?B?dW9Gd1JIajkzNFZMZ0xRQjBOSUV0SGxMUUFlM0JlL1lDK2RpY0x2RWtFSzVx?=
 =?utf-8?B?WWhzc0JobWl4OFhiU3Qxb2FYSFlqMDY0YTFYRWNmOFNwajkxSVpmYzBWdW1T?=
 =?utf-8?B?bWNQZ3JVS216SkN6eDNOYzN2WUdScVpLSGJTb290ZW84K1JlZUpydlcxNmlz?=
 =?utf-8?B?OHhyaTJteVJBN2JwT29JcUpwNWhXeHBHRVNVOFBvRmZ0ZmEyRm11WE5mQ2F6?=
 =?utf-8?B?MkI3REQrQiszakZhR2MrYXhkdEhkTTFZMHdJOE9FRzAwdWhIRFlXb20vd3Rl?=
 =?utf-8?B?a3FOeGtuT0tMUGxGVmYzY1BleE9wbkFLWWFlekxZbWVvS2U4ejhUdlJuenZW?=
 =?utf-8?B?QXdRMC9DNWIwa1hOMTh1azZObGpuYmRBRUVnalRnN3RJbWxWZjRoOUZ6cjN0?=
 =?utf-8?Q?mCcYQzVkdzTObcL/uYMp6Ir0p2S1HK722czRD76?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36f0c0b7-8b60-491d-747c-08d9746076d6
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 13:39:51.1165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4RprcRJNF4dfknZnyFeoxF3I9Ww4SKEOCm3huRa7BxAa51SAzqFyq5sM/ByNs4fmeK51woBCbTtNWcbfWIH/1CmfRnP+Ex5YPCP23nV3UnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5249
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/display/adlp: Fix
 PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR calculation
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

Looks good to me.
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/10/21 2:07 AM, José Roberto de Souza wrote:
> As the SU_REGION_START begins at 0, the SU_REGION_END should be number
> of lines - 1.
> 
> BSpec: 50424
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 3f6fb7d67f84d..36816abb3bcc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1501,7 +1501,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>   
>   	if (IS_ALDERLAKE_P(dev_priv)) {
>   		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1);
> -		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2);
> +		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 - 1);
>   	} else {
>   		drm_WARN_ON(crtc_state->uapi.crtc->dev, clip->y1 % 4 || clip->y2 % 4);
>   
> 

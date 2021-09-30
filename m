Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CCE41D45F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 09:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AFB56E34B;
	Thu, 30 Sep 2021 07:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB9586E323
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 07:17:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="310668431"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="310668431"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 00:17:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="708895363"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga005.fm.intel.com with ESMTP; 30 Sep 2021 00:17:46 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 00:17:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 00:17:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 30 Sep 2021 00:17:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 30 Sep 2021 00:17:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JCP72/z9MiqeMO0OqIhNtByPECWTcohPXrFbz7toFpMFZNqJmwiEEMg7nnUOpfdY0vFy307Wf1FCxx8psZ+sD81K5GoCJWMAhoVOLHerJvm0YmHQsEtIxa9CJOH3vRb/FUHyl5pjtDSbH0y7P1si9C8Xmk1dKHpshRZMlDFWfOKs2hC3jXcWcpCFn8p3SLmbFrRMe6u84k8O4KzWc/jSOuqGcc8nDb6CTOyDR//kptcSYWlXcvkzgh3Ov6HUBkjaSTANFRdjxxtIvmFO7ga7dDE37DfJ4c3/SYSBXqZaP/XSRVXQwspMvaNkl+rkGttSVkPQtkLjH0YX9Cyzr5zkKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=SNLbyCwrIi32R+Q+UxPcdgdo5PE3ekA5JnDEIdFN5/E=;
 b=j8mejSliBNHNZDj2T9pmqQJqx8KiKe0TpMywVniE3N3ODeyTMDh6HwoxoXU0ZumfsWHbyqLvDL7h9kCyFK2Yp39KpPR5HcWRsMjJ0CHOvbOPtCKLH8o6v3NtcV2ijmhwkbap8/HmowEWyPU44lAD3diK5lC4yBDglflUF97jSCgKcm0JH3NJbGQAp/7xK6vpuettmP1z5NaRhqoaLH+69dsytu2YtRZmWLs/+Waw3m/dNGXCr6y//pAYlABuy4r4gocZSclBBhVXu1C5BRtLAUfKFFu6QO9XbJeUukBTuQRcwqB5f95RQ76Lq1IPGspw3F91x+szSJkrQc8uNHSmZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SNLbyCwrIi32R+Q+UxPcdgdo5PE3ekA5JnDEIdFN5/E=;
 b=PY8hphlOhmzDcPB/zUs6I5TiLOgWHRymH0sYZ+THXHmBtRS64cy3nvd6EJWgu7u7Hhj45bMMZqf5BnjZSIy4EILzWQpcGw/VTD/uHWhSlfBYjY3IzDB/it0oFpPcrD604IHU+FPQ9aiXgt771K7A0wTazX1WesM7+Pa7vaUa7X8=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5505.namprd11.prod.outlook.com (2603:10b6:610:d4::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Thu, 30 Sep
 2021 07:17:43 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633%4]) with mapi id 15.20.4566.017; Thu, 30 Sep 2021
 07:17:43 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
 <20210930001409.254817-4-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <7ce77c14-fd7a-95bb-c2aa-f1690fcb4d05@intel.com>
Date: Thu, 30 Sep 2021 10:17:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210930001409.254817-4-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB7PR05CA0051.eurprd05.prod.outlook.com
 (2603:10a6:10:2e::28) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.199] (134.134.137.86) by
 DB7PR05CA0051.eurprd05.prod.outlook.com (2603:10a6:10:2e::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.16 via Frontend Transport; Thu, 30 Sep 2021 07:17:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3f0e0405-0aa3-4529-068e-08d983e2656c
X-MS-TrafficTypeDiagnostic: CH0PR11MB5505:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB55057E7E1B306F2F94BBC5B4B8AA9@CH0PR11MB5505.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IO0x6XdetaIllZmyj4yuoPEQwQH420QJJnIbA0WNEsOekyBcDDZBSFQuSQ4pOngbKWuQcXAPzFWZU1aExPanu+k9y4YACtocv/ANeYiDqz7ZXSznm/M6aGQmgJQ4qmd/Wim/agNPC3J50q/xbIuAdJtSKNj0rITQxWMYNMk42z5g3ck9kaS1PrSbu5twGcL8jP0SNckm7CDk7mJSEFqfWYtvxeDpRjs2eJVBIoF3PlQ0ufTI6X7cCpa1K9YlFARquejGbbuG4PwadHTDQ183umaoYDjl+DJXeexslI+5XOu13/GF/8kTGoSjmTDtmELV53K0tj1erQHCeWGmWtzVL/dxhI1mEBnSTKaqJjEtJtJMfFU1Bs7aFyEtKDqOeRgRpKB9R9eAd7+1rSwkrI4RnXJ0Qasj38YydNNz4YtNo5Ku2DFx46vRCClDhQZkxtswzwpoijHVf6qCv7AFXVQ9dBy00w+0AoQ+bFNdKOrBgItXwuKxHoomXTTtRpeRZdj62cDSXIfWFFgUPIuzkAgwRGii/Ll4OnzPTYOKcbGoSGVpM2JBgMJAYbB1SwGIvjT74wSCzIGfTbgQG//UGshufqRRcIfDJqWykuxJBviYGz3w8prnN8J2AkpH6rQYayD0o8tBxfnkfCI+NaQLEPYgwec74J49KMc0bFdecUesACpCKGDOI+9Wv7fIJV8ZJGIbuOMcYznPBAhSEDMdqn7L/qkMhFjOm3NKOGzlFduosXA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(508600001)(4326008)(8936002)(38100700002)(66574015)(2616005)(83380400001)(956004)(6486002)(316002)(66556008)(66476007)(66946007)(86362001)(36756003)(186003)(16576012)(5660300002)(8676002)(26005)(6666004)(31686004)(2906002)(53546011)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGhqbVhmVkkxRHVoOWNYTU1mUXZyZkxVYXZ1dHBKdHd6YUZoeDVJM2tZRG4y?=
 =?utf-8?B?Y29iemdaV2loWm1OcURkVEIvMUoxdGZ6cDhSems0TnMxWUNWZm42dnZqLzdu?=
 =?utf-8?B?cEdreTdoWWJKTytUTWR2b3dFZVIrRDZtbkRLZ21UWGV2YnNQcWExaTVrVFRC?=
 =?utf-8?B?eFZJSE5SWnNwSUoyaUhTQ3VMMUpKS3dnTnNhUzRtRkl2eUVxNGNncjlSMTFm?=
 =?utf-8?B?aDJYMExndjJmbDhkT0M5bjR4QWFiWU5rVFU4N3hRK0poRE45MjdrcFVSeDhh?=
 =?utf-8?B?cmVGcnF1R282emVyQ0FkY1ZkdGRtV1VBbzNXMDBaUS9BM2NnMEhPa1dKRk5O?=
 =?utf-8?B?VnhEYzdBOGZtcmlsOGYxbkpkNWpJNXlYblo1VEhlU29TL3N2WExkSE93bjA0?=
 =?utf-8?B?LzRpZE1DSlE2MXdmeEtCWFUzaSs2OTdZMURZT3dXai8yMU5CSkFPWDFja1cx?=
 =?utf-8?B?cnA1RCszMUVFRjlrUWZmT2JQOThOcHVyL0pjNm9VK3ZlNWVqWG5jSjlXbFBP?=
 =?utf-8?B?Q0RnZTBjcHFNQ3JsRGNpVFlMdG9IRzhXYzF3a0JEcVJMWks3V255ZE4yWEUz?=
 =?utf-8?B?L1UzdDRSbjAvbm8wTEROa1dWWWY0cWRYNTRTSE9XMVVQUEhhcCt3ekRxQ25M?=
 =?utf-8?B?cjNIOVdDTUpHVVhsYkJsSW5CZERKZHNyNnQ4V3NYWW1PdjYxU3JJbUZhc1NG?=
 =?utf-8?B?SmMrUm9FNFpNdy93MHVVMjFZMEw5NmhGNVErdnZSbENoRjlRd0NLbDdRc1BV?=
 =?utf-8?B?eFJzYXVMWi8zN0ZZWnR3OXFJdGpINGRxVUFjRVRVRmNUaXhFNGZmMTZ2TW54?=
 =?utf-8?B?aU5IQ2F4Vlk4dU4waVRNdSttdHMvMzhsWU80OW1tcWdVKzN1cmtNbGFNSHd6?=
 =?utf-8?B?TWFLd3U5UE96VU5uMW5ic0x1aE5FTXdVSkRZQitnVWJpbTJvQThWRnhFa3VH?=
 =?utf-8?B?UHJwU0xXTXR5N2xHVEE5WU1zdTJSOWptc0g2eHlKVTNjbUl0aGRTOEo3NDEx?=
 =?utf-8?B?cGErS2RmandBYVBYMHNUUHVoMHB4dHBIQ0NqR3dzNzU0L09KdVEzY2JTSXBh?=
 =?utf-8?B?WEVacldSVlI2eTA5emdTc2JxSXVaSG1BaWNGeDcwZ1FXZmdRK0NiNEJiNHFB?=
 =?utf-8?B?VzV5T01kT3pzT1o5NWF2Ri93TURaQlE5cTRTbmpaUStIVTRadEplVXc0NTl4?=
 =?utf-8?B?MkwxVXlLZnVCa0p0L3dIRGh0OS84TjU4d0J6MFlPRWE4SHBVbWlSNy9FS2Fy?=
 =?utf-8?B?c2ZqN0FDQ1ZKR3J5eVcwMlU3RVNRR1J0VlprVitjY21FN3RFQndaV2dXT01h?=
 =?utf-8?B?d2wyTXgwYnJjMVp3Tm5odWZ5b1VXYzdjRmlydXZDUTU5ZEFXaDhuTnFVNGNG?=
 =?utf-8?B?ejFtd3lweDIyWEU2Vk1hM0F5QVB4anR2SjJPY1U3ZEF4Szg0WUljeG43amt0?=
 =?utf-8?B?enlLOHJEQTZRSFF1bXZDdG9kcW5MbFB0bjJOamRlczYwL1lVeFVnLzRSeW1F?=
 =?utf-8?B?bTl2c2VrM2NLbDJ2OWExK1hiRHdxZ1hJTDdGK1NiVkN4Z0xXWlJvamI5NHp1?=
 =?utf-8?B?d25kNFF3c1RmUWVnc3ZtdlFaa1F0dE02anFwWEREYXBTcDhCMktrbzlBSGV4?=
 =?utf-8?B?Ym5UakpkSHpwQXJ6Z21Raml2VHBNR011Z2RWald2ZFg5R1FyYjhtOE1RcEx5?=
 =?utf-8?B?U2Q2N01LaTlXN3ExM0hMcVNkMUo3S1FQYW5NYUJvR25yYk9NQzloek5taEs3?=
 =?utf-8?Q?fsnXF4xLogMHfrjs1Pzyxw33f39u60nhb4phk7F?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f0e0405-0aa3-4529-068e-08d983e2656c
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2021 07:17:43.8684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mXU3cndFmit2g0AcEU/Sw9n6FDo72pY0yvwhq6C8ov2CHqgKDDUW48+0Lgt1bJc9zHh7kf/QljuM+SdzD0oaPas0bLZQcoGSL5LBpwycGCw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5505
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/display: Handle frontbuffer
 rendering when PSR2 selective fetch is enabled
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



On 9/30/21 3:14 AM, José Roberto de Souza wrote:
> When PSR2 selective fetch is enabled writes to CURSURFLIVE alone do
> not causes the panel to be updated when doing frontbuffer rendering.
> 
>  From what I was able to figure from experiments the writes to
> CURSURFLIVE takes PSR2 from deep sleep but panel is not updated
> because PSR2_MAN_TRK_CTL has no start and end region set.
> 
> As we don't have the dirt area from current flush and invalidate API
> and even if we did userspace could do several draws to frontbuffer and
> we would need a way to append all the damaged areas of all the draws
> that need to be part of next frame.
> 
> So here only programing PSR2_MAN_TRK_CTL to do a single full frame
> fetch.
> 
> It is a safe approach as if scanout is in the visible area
> the single full frame will only be visible for hardware in the next
> frame because of the double buffering, and if scanout is in vblank
> area it will be draw in the current frame.
> 
> No need to disable PSR and wait a few miliseconds to enable it again.
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 8534cbb0d5144..7185801d5deff 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1397,10 +1397,22 @@ void intel_psr_resume(struct intel_dp *intel_dp)
>   	mutex_unlock(&psr->lock);
>   }
>   
> +static inline u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
> +{
> +	return IS_ALDERLAKE_P(dev_priv) ?
> +	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
> +	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> +}
> +
>   static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
>   {
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   
> +	if (intel_dp->psr.psr2_sel_fetch_enabled)
> +		intel_de_rmw(dev_priv,
> +			     PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0,
> +			     man_trk_ctl_single_full_frame_bit_get(dev_priv));
> +
>   	/*
>   	 * Display WA #0884: skl+
The following details is described in the description related to Display 
WA #0884, so I think it matches the commit message described above.
  : Driver to issue a flip whenever a host modify occurs. This ensures 
PSR exits its sleep state during a host modify event.

However, it is not clearly stated whether this WA# will also affect 
GEN12+. Since there is a possibility that it may not work normally in HW 
that will be released later, if you don't mind could you please leave a 
comment that this operation has been confirmed in ADLP?

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>   	 * This documented WA for bxt can be safely applied
> 

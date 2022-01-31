Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBF44A4CB2
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 18:02:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2FF510E3DF;
	Mon, 31 Jan 2022 17:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 315D910E3A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 17:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643648568; x=1675184568;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ORk7EbpGuiK9zEWCMdKh9CYGz+qJHJ2ol42G/zIRL9o=;
 b=DwqhSVgWxflYLetPIwy3l8wQsQW7jg14t4hqVv5MldcPb2/g0EEOEZgk
 MntNLSU4bLOUlvWHbkvoFfbZS+9igWVRDQxXQ6jyL8oPxiyFCHAjaMD5H
 aY869SFpurUtI94x07sn9Itg9DYwtMW1EO+EkBTYcL/QSk9xoHARm/Y/5
 a7BhKHtFYZkihSsUTEbyI8O3VMw/qM/gYr0pE8paINuAsBe92mnknOaqv
 I1SeuO1geka4Bddw1JNB8iRZSa6M4cL6GkTGgHfDEuK6wd184xcvC7NP6
 GFdFHIrKG8c7BJwH0hFtnKUhV3r5gTKuneyjlEXIZ5wMCeIehPD8OUlP5 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="247276574"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="247276574"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 09:02:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="675790259"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jan 2022 09:02:33 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 31 Jan 2022 09:02:33 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 31 Jan 2022 09:02:33 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 31 Jan 2022 09:02:33 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 31 Jan 2022 09:02:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c7/RkNe5imuNQihX+DthMZWb9eYskswWexISRXGLLPnUjQP39hiyVZX5dkq12ERZjxCif2eyjha8FqJ6ENseU9kgQd++bfXvZ/I4tsa6SO6IawVrmEUnvLnCvTF3vXGRaz4QpSf7/+GBzlgT7jzu0JblOQKpY632FWYuQKUes/8UOdYvdJV6e0qUatRCXu7D4bM6SHsPohHASXr8IZOdQ+v3shuI+Se8scu83ifYoxhMOrgLnDghD4+DyYVPKsXR7GhA0XL7V6FG+HPWmFY7PmTPTswZlEBc+rzO3h8O1eWXdplhAHSne9lzll88wU0VQZ0dyOlwOYQOxNQNsBWCkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wk2eh/ZVEsC8B57pPgdNOcQL4N9F+Pvd3Peah0lUL50=;
 b=Xux0hQcm6CcFBBGu1uN80QvaD8fcmH3Xpg6sdYxmfuAKtKErIcnnTS+pa9eVlDMX+96D/euloK07q2ZWVsWJ2BJalFNWXkdXRF3GVULn5F+jgQwh5kM/0DCZ3munzOG+sd8hXG7G5xSm6rSsLUQRF8Ie0WPHzUdAwE5NS6m89yGjy14NTH3kqCbZ8ap1RKNVvXBDfMy91K8T+rf9g7RDmhNgHhtEBF+hSz4K1tAuvSF35FSVFykeP+tRp1V8P15zcvDTi0pq/ijQRYI2FxFfRgodgtdR2VbZ2MLHymXH0/YTmydnohjsMlNiyUejdijs3mwBOypGyIucybyiPWsobg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1645.namprd11.prod.outlook.com (2603:10b6:301:b::12)
 by DM6PR11MB4251.namprd11.prod.outlook.com (2603:10b6:5:14f::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18; Mon, 31 Jan
 2022 17:02:28 +0000
Received: from MWHPR11MB1645.namprd11.prod.outlook.com
 ([fe80::c57f:45d4:4b3e:38a0]) by MWHPR11MB1645.namprd11.prod.outlook.com
 ([fe80::c57f:45d4:4b3e:38a0%7]) with mapi id 15.20.4930.022; Mon, 31 Jan 2022
 17:02:28 +0000
Message-ID: <cbf63d18-9443-d4ee-62b4-784079bdf28a@intel.com>
Date: Mon, 31 Jan 2022 09:02:25 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-5-michael.cheng@intel.com>
 <d1f41d2d-6b99-6d7d-d7ee-df789da077df@linux.intel.com>
From: Michael Cheng <michael.cheng@intel.com>
In-Reply-To: <d1f41d2d-6b99-6d7d-d7ee-df789da077df@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR10CA0018.namprd10.prod.outlook.com (2603:10b6:301::28)
 To MWHPR11MB1645.namprd11.prod.outlook.com
 (2603:10b6:301:b::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 45242b9c-e0de-4090-ef19-08d9e4db7630
X-MS-TrafficTypeDiagnostic: DM6PR11MB4251:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB4251F8494E5A1271A306072EE1259@DM6PR11MB4251.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o4DMOu+CyV+nTchAjjj9wuZV3O7HnKRePj+MlEsEYPkhnSiKvW5+86rjsq/R57Peeg6YxcN0LyojlXVRUPAMlwLHg5R39PJuvR35/mRs3e7w9L+BUp0f4SA0qyxN2ETByNvYxC6fnNZNUiDIrXNvCgmmJA59lCHsvjhctVaaGpQUEdAXQk5O0TWWKUC83xIJIs4SQHnueKVjNkPv4yzZQ50bchQE3FuRIFjLN1SvjoZewsA1i+JE3N48oz8zzbxHsO5PDQZEbCC/73alFPBXHlbrZ6ND7NbI4j0u2No3FFkPZjoE+KNgxGrPpSxlgKi7RyksTKsyCBSMzIdAs654PvSyizgJIZxPYT9ZJAXdDI2dtgFyYtVWpMKHSMu+voz7V89UzVHuAfdW14O49cl1DQ6hLPaD5yl22DeG39wQ2pQobf6fQ3oZLXElULyt3ApeQY7wIlu8kE3k8tdxseF92MSyp8KgLE6qE5FU9vYLJ0K39OaVo5VHod736LyBgZkbTJmZDqhL3DuFMA+MuErY4lXryiAzRveNMg6/H9s2Foz8zjzbdLhSZqv4duRKlv80mK2wWJZT6zyWmNMb8KiHTvBWLKXUWveq8/Xu0DhxRO2QRFBtynq9HWQnrDIV9fNTE1H40Z9WtZY91vvoVelIaJxwB8P1nn342l5Icc9uIKDZ1N8lyff7EZOpEq7vct0zD2YC6fN8Itcw0PpvVH+OzShHneoNHMWM30cDy3OLSQc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1645.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(31696002)(316002)(53546011)(36756003)(6506007)(86362001)(66946007)(38100700002)(6666004)(5660300002)(508600001)(6486002)(66476007)(8676002)(66556008)(8936002)(4326008)(6512007)(31686004)(186003)(44832011)(2616005)(82960400001)(2906002)(83380400001)(43740500002)(45980500001)(20210929001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTZaWS9NbG15Mk0yK3lONUZnNjJsTFB6TTZmY1NGVGt3d3ZVVkRMVmdMU3JW?=
 =?utf-8?B?dEE1VUZDdEJpQWUxUjNqUkk0Qk43Wi9sUFJsc2ZjUVdGQ1BKVXVocnBBOXF3?=
 =?utf-8?B?UmExbmVZeGxhMTNxUVhJMVVxRVkyWHV0aUNadmFaenhwTUVhNGVKRHJ2TEVw?=
 =?utf-8?B?bmxXQ09idVFiZE90VEI3MnVWSFpyMUpoZWV4K293OXlTeXB3UER3aDNaRzZH?=
 =?utf-8?B?TUIya0p5RURiKy9aOTQrSUo5bVBNdjVjL3J6cE9Ieml0eWVIODJUd1pJZFRz?=
 =?utf-8?B?ZVVMRG14bVpoMzR6NWt4ZjRTUHJ1cGlma2wrNktxTUw5ZHowTFVaUmdhMXMx?=
 =?utf-8?B?RXRZdHNhdTZVNW0zUUJLanhldlc2V2VML0x2SSttU2hHM2Rzd0RXb2g2dnda?=
 =?utf-8?B?cERSMVM4UWJRNm1FRTVkQkprMWZwelB0ZXVRd0ZyV1A0SG50dHdEQjZIWG5y?=
 =?utf-8?B?NitnaDEvWVJDa2FxVmRGbmQrN2x5SldidGR6aEdGTnd6UnExd3dtQ2JULytj?=
 =?utf-8?B?YklJMU0zM3I1YWJITkQybWxjRU9pTlg2NXpEN3dlUkxYejZQcmRRVEgwd1pl?=
 =?utf-8?B?dnFaanFVbll1a3YvMTNDdlFtVGUyQ2dvRU5kak83V1crbmVGakpQRjVpcXVp?=
 =?utf-8?B?d1ZUdjFMQmJCL0lNMEhheWVXckU0NEd6VDMvTktmZG01U29qZEhTWkJpVnU4?=
 =?utf-8?B?T3FIcHREN25jL0owNEdJMVlwVURqVXJSbXJ1VkhWSzZGSHd5WjE4dmNnL2Zy?=
 =?utf-8?B?ejB5NUpZUlpYTm5zNFk5OTMyZ0F4dDZGUlhlaytrdko5eHV1NHdjN3BHNTRq?=
 =?utf-8?B?cElxQ3lFUGI0WDJUdHhPRkRsdktuSjVUeHpFcjY0U2ZRQkowcklYdW5WdHdx?=
 =?utf-8?B?cnhQUS9SS2d6aXBoNktEWldPcTlZdUdyQXJwUjFPeTA0bUtGWHA5dGU3dlVy?=
 =?utf-8?B?K2h4M3o0a1ZEQ3EranNjTThTV1NRbVo5YVpSMU5TU3JLVnR2blR6cHFvZ3FI?=
 =?utf-8?B?dmFGVy8vN0VWakpRcmEycEdkWmtZVjJNdEJwdWxSYU5VWk9mb0VIc2k0SmF1?=
 =?utf-8?B?aUV5cVBhajR6Zk1JbmlwOHZWRGs0R0o3YlJMZ3ZiNjk5aVRzWmNWaCtUYmFQ?=
 =?utf-8?B?YkFySnJuWk8zSWdibmtQTVkySDdYeE5zOC85dGxLSEQ3a0lBc3YrTGswakN6?=
 =?utf-8?B?dmtEZ0RlNUtwSWlObWlzdlhDUzZCUUJ5S2tLcEc2TDU1WDVuWmRNMDRSaWNo?=
 =?utf-8?B?a3E5cW94U25GTXQ0cktUV3l5ZWlobStxekFGNFY5RG1YNXhIVXIzcXlzNERQ?=
 =?utf-8?B?WDJzdGxYVWxGV2hJaVRNYWxlbjBDRGJVNXlacXdKbnkrRUdsd1h2aXJ5Y1NB?=
 =?utf-8?B?U0FVRUE2TUwrQ3RuSUdUY0dBYW1WYlo1Q3RrV3pxMFNqSDBOOXdNWkdnK0lZ?=
 =?utf-8?B?MWNnalVXQ1o3OGVBdUtzcFRtSEd0UDR1TDAyOEorVmRCN0NuNytZaE82SHV4?=
 =?utf-8?B?VTFsQ3pqT042bFE2VXBvQVdYUUs0d1hRS01UYi9wUVpwa3lKSFc5N0tUMjhJ?=
 =?utf-8?B?OEFlZ1RpV2d1NEg2a2wzb2RKUjR4U24yTzgvczdyalJPMkVCWW81aXpGd1hT?=
 =?utf-8?B?SE1tT295SWptUUdDaU52OXBnL2RnckRZdlZLQTdDTEhORXhMRUtHUnQ2Ky9h?=
 =?utf-8?B?OURpV3VRUjdlKzNRUjd0blZwUHZJc2h2UnZnV0JscTlNeE5rZ21GVHordDZF?=
 =?utf-8?B?NDNBTnBsaG85cmIyb2pQYThlM2paMVptb2lCRzRIQ0FMQ2N1MkxDUDNXMTZr?=
 =?utf-8?B?Z3o5Qy84YjRQbVpGVnoycVBTM05CWU53SWNVWE0wU1dEK0Q1S2Y1dDdKZTZn?=
 =?utf-8?B?c0VzdDlsUmRvaUYyR1F3cHdvQWlhZUJKenlkSnR1RmlqOStHMEtVWFlGclp0?=
 =?utf-8?B?SjZmb0hoZm1JVVhhOGl2Y05YdDVhakpXMTJlTU1Sd0d2TGVvelRnWXZ4bVcy?=
 =?utf-8?B?V2JDYmsrMFQ2N1lQME14cEJ6U0pvK3RMUXlMUTVzNU8yK0p4ZURQTFhjMmIr?=
 =?utf-8?B?S2hzTDBvNERUNHhLRWNKaFRCaU1NWGcxQ3JnWmF4V0VkWDVVaHdCMk5NTExa?=
 =?utf-8?B?bFM0bnFaSTFjbDVDTnRjNkxTOXRZU3VGWFFET2ZBUkVWUVpVNjhmT3JLZFNt?=
 =?utf-8?B?UUgzM3FUT1oycmI3QiszcEJQL0p1MjlERUVidldPWXBoVEpFYVZRVHkrck9y?=
 =?utf-8?Q?KDox7UqD64oqmezGWwZyNOt6Xh9y+zM+77kUQlUTJ8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45242b9c-e0de-4090-ef19-08d9e4db7630
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1645.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2022 17:02:28.3399 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tbzeZZJMwhFo5Y321KIykEsBaSUrAKy8kdsLRGtPbMvcD6koI5xTZRLEFVk0zsbVG7W3hBQcyPzi6UU82rDKXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4251
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/: Re-work clflush_write32
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
Cc: lucas.demarchi@intel.com, matthew.auld@intel.com, mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey Tvrtko,

Are you saying when adding drm_clflush_virt_range(addr, sizeof(addr), 
this function forces an x86 code path only? If that is the case, 
drm_clflush_virt_range(addr, sizeof(addr) currently has ifdefs that 
seperate out x86 and powerpc, so we can add an ifdef for arm in the near 
future when needed.

On 2022-01-31 6:55 a.m., Tvrtko Ursulin wrote:
> On 28/01/2022 22:10, Michael Cheng wrote:
>> Use drm_clflush_virt_range instead of clflushopt and remove the memory
>> barrier, since drm_clflush_virt_range takes care of that.
>>
>> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 8 +++-----
>>   1 file changed, 3 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index 498b458fd784..0854276ff7ba 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -1332,10 +1332,8 @@ static void *reloc_vaddr(struct i915_vma *vma,
>>   static void clflush_write32(u32 *addr, u32 value, unsigned int 
>> flushes)
>>   {
>>       if (unlikely(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
>> -        if (flushes & CLFLUSH_BEFORE) {
>> -            clflushopt(addr);
>> -            mb();
>> -        }
>> +        if (flushes & CLFLUSH_BEFORE)
>> +            drm_clflush_virt_range(addr, sizeof(addr));
>>             *addr = value;
>>   @@ -1347,7 +1345,7 @@ static void clflush_write32(u32 *addr, u32 
>> value, unsigned int flushes)
>>            * to ensure ordering of clflush wrt to the system.
>>            */
>>           if (flushes & CLFLUSH_AFTER)
>> -            clflushopt(addr);
>> +            drm_clflush_virt_range(addr, sizeof(addr));
>>       } else
>>           *addr = value;
>>   }
>
> Slightly annoying thing here (maybe in some other patches from the 
> series as well) is that the change adds a function call to x86 only 
> code path, because relocations are not supported on discrete as per:
>
> static in
> eb_validate_vma(...)
>         /* Relocations are disallowed for all platforms after TGL-LP.  
> This
>          * also covers all platforms with local memory.
>          */
>
>         if (entry->relocation_count &&
>             GRAPHICS_VER(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
>                 return -EINVAL;
>
> How acceptable would be, for the whole series, to introduce a static 
> inline i915 cluflush wrapper and so be able to avoid functions calls 
> on x86? Is this something that has been discussed and discounted already?
>
> Regards,
>
> Tvrtko
>
> P.S. Hmm I am now reminded of my really old per platform build 
> patches. With them you would be able to compile out large portions of 
> the driver when building for ARM. Probably like a 3rd if my memory 
> serves me right.

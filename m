Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 252C259F386
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 08:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830F010E86C;
	Wed, 24 Aug 2022 06:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B860C10E789
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 06:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661321662; x=1692857662;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vm1LpaYkpCIWP5GWalZ3j0M2Z0L7LxIGOCq/e/Tdans=;
 b=DRQTVE18KyctugwQDYHWfZRPSoLVW8D3nM83fAvXuQxPVou+ZNFEBonY
 mmDxfuGCK/IISK43nC649Dqxa3SE8Tmntp6BayaLxyBEMbNIe8jj2EZKX
 72qeI9LEbuzUJ9X2YqNSzwKuKxNeOMZIwEgsPhSm9T6jesofB3OEAOQ4S
 ezQrCmqbFSYFPkH7n8AFT/hIPhe6YWGEqZkqVLjo/LZUhqE1GUFYr6JzT
 a9stkGjTFZ3SocMqgWA2SVRpnAB/W0sej0ZmtTE3pmh0le9RN1gt8Zk1N
 lIqb7wvoC3ObRuSjW96YHp5SeS1yOZSGjck0+JAsSvBJUJFrwjEDyShG9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="292622876"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="292622876"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 23:14:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="586298165"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2022 23:14:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 23:14:21 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 23:14:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 23 Aug 2022 23:14:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 23 Aug 2022 23:14:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ng5SXscTA7lFKSKRkrYO7ATaLs2QvSyxX2JIJJVNkUP6UNbQ8i1dDwX0JELYprRjNfZOS/fkIIbn6bsIYRwjNJOoyt4Zpc4WENAIR8DhzMOW/rbcNxir7I5+J0fI1YzdGF/D7SOHEDN+TAZMgjfSn9cucJttf3VumwNiPLHvMNgC2OTNUnpOd0XfCaXDKEGE7UHrLJAdKHWLwtNsxcq5LDE/0635VgJLAyfdq7+vBrTeKN7OnDygpbDKn/vrmsYCPOgDiCEotjHS4UMQXLIfU29cUA4Ca11ghbJPtHphhELwI13t9UnIMkU+c716FjS/TgGhqXCHKFPlZClemhyxKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wRYNw2pYcoXrsbnL3E1ThvN6CMQd8eQ4x4q5GkUXQzI=;
 b=b2ewYaAJKTbN7XO+Nhrp2IA4Jq3x64u6JtuctvoQGSVh9eZ+MnmpyxGFXAV1//J/AloRbfk0C6+h6/vvt7rqrgcqoIVN+n1PrAm0pyFLbvjURtmO5n+QoRtsTzgoWlWy1Lqe0hlI4yTo9dZWx03TBEUnaWFccq8Z2F+7FmXluGhmeNcqNhAKezbfz9LkVMysF8ApxV4WXYxNK9jBJ97QOgeDl17YD1D2dFEhNUxbm1qeTqnAEacleh7J0J69fBa9prl/mA+YtIGbV8z6meHjigxifpwaRNTBN58LMvbYgP/cv7kgKRJUMCNH7aeoTNEOjIVYHhdQKfpWUVM7wj2Xdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by MWHPR11MB1581.namprd11.prod.outlook.com (2603:10b6:301:d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Wed, 24 Aug
 2022 06:14:17 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::70e4:76ca:fc65:df73]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::70e4:76ca:fc65:df73%4]) with mapi id 15.20.5566.014; Wed, 24 Aug 2022
 06:14:17 +0000
Message-ID: <071b7a16-8848-f9f7-2dc7-53c499787c29@intel.com>
Date: Wed, 24 Aug 2022 15:14:02 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, Radhakrishna Sripada
 <radhakrishna.sripada@intel.com>
References: <20220817224304.255767-1-radhakrishna.sripada@intel.com>
 <Yv3VY2agZffBJLut@mdroper-desk1.amr.corp.intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <Yv3VY2agZffBJLut@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0024.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::29) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0e89529f-04ba-42f7-0940-08da8597e00a
X-MS-TrafficTypeDiagnostic: MWHPR11MB1581:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZbsO8qxHD6oJQgftCCcdpgqpngPsg8HQdegdVsO9oXs4n1FjLM505BIWhdRNm8kX8g53g4weRElFgr0dgDCuF8AaOfztfb5UGZEkWjdIiSzUkJkck9SltP2voNvmX6Z5Tlr4HWjO/hA00TkO/8E3ZKthWKu8xFSvNL/Vt1vJiwrTL/aCCMq1tM3XhGYi7mEduq55DojfkoQPH3uomDwAmWk4IuuPUtNsoCTENpkJLVJUdYwOEgWOSLwFBe5db3OU5XAD7SqgSH5rgKXJ0jI5hs1MphCm2mwkA2b5q/3zb6hlu+SOmMZexJC8sAN2nNqpt7kHVqoKPEB4R3GnTmbWV65RCDGT/4K1Uv8j/uxsjrywibS9IZ2knh+M9Wd09j8rkKov/7tatmzPsiHpGqKqvKeUU8xQH26Vp0MuKKyPYQd5/djllwdbOS7dwm2l5Go+MR4Z3+KD2eW310mldKzbZmHGCJLFNNTfRZ1OK3/WQgNfzj/qMlIc+lI2t18lCDcS+S2fq243qaYxZoYNTt/m4abfQG6tIE3YAGHIGQcVBjpF+I6u2kfrIOsC3TPtyk1Rtt6xkiRm6f/p3/oiV8eNedDzSTHtNXUZG99X2hWIWc1FZHWmP0p8uV6h8f5VLDttUkB+cdn2c3UYpLY1fj5u0OEgmBx9iWne0pZjO5nBic7dd+7fG0nXyLMai5enGwSJ8S78KwnyLslg377SIFQ+OBnbKb07ltz4O4/is23ln1wxOqwRcJs9FtqMZuDYlqhUR83+fd9xCNoWmfoLp46SeviZ5eL0EFwr0UJdippS+4k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(396003)(39860400002)(366004)(136003)(86362001)(31696002)(82960400001)(38100700002)(316002)(6636002)(110136005)(8936002)(2906002)(66946007)(66476007)(8676002)(4326008)(66556008)(5660300002)(83380400001)(2616005)(6486002)(186003)(478600001)(6512007)(41300700001)(26005)(6666004)(53546011)(31686004)(36756003)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUd2d1Q4SEZmZkIzUmpPSHk1cHVwWklKa0dnU3hISE00TXh5Nk4wSXRXdk0x?=
 =?utf-8?B?ZWF2ZitRV09YVFNQWUpHTkMvNEMxbmFGQXRhYUMrbjhCdmV1UlY2aWtsK3Fy?=
 =?utf-8?B?ZHhiQkhtaFBodWQvaFdkOWJXNW5xcDlRV1dNRS9HS0RvSGVYMGI5RjBEaVRo?=
 =?utf-8?B?VlFMZ0g2RVM4MUVHUWxnVWR3cGNCSW4wTXRvR3Q5YlEvYmtOZGdIWUlhTE5i?=
 =?utf-8?B?S0tWa1FUY0lPcHlhUTI3YngycE51UzdOaml1Z2VVQWdkbE9GUnBsLytLMi9y?=
 =?utf-8?B?a095cXVFQVRkWHY0RmJSQ2dUOE1tV2VUMGxoUGMyZ2NLQzRacWwrWnpndnVn?=
 =?utf-8?B?cVRJU2dQdmt1N21CdGZ1aHdLekF5bkRSY0JtNk03RWZuUnVoZ29jZ0NLTjdk?=
 =?utf-8?B?VDEveGZwQlYzb1lxcHN1ODBIOWFiNXJheWREcDJ2eUcrUXBHWGttQWhSeTE5?=
 =?utf-8?B?WkRhSEhPT2xYRnlwOWZ5b1NpRVFYeE5QQW9WdGMwQUtUUFFMbnhuWEc5Umg2?=
 =?utf-8?B?cWdqWGlZS3pSekp5Vi9VZXBlKzVmTGdvNzA2alJFbUZyUGFUbUx2NWdVUHBK?=
 =?utf-8?B?Ylh0Kzc5dTlxMTJNdGQwcjdDZXI3SytjZDRDZ0xUbFJqNWRwcEdtSmxiL0J4?=
 =?utf-8?B?RVhsUGdzN0ZzOTdNOW5MUFMxVHNwMVUvTDBtSDI3OGhLaWZFV3dxRGNnNm9K?=
 =?utf-8?B?L2tJeVMrYWo2eWhSMVl1d3JvN0VXRXhRQWRGUkxEbWI3b1NmV3p3NmdPb2FT?=
 =?utf-8?B?SUtMRXp6RENtcHJ4cHdrU2FJZXFXaktGWU5LZVg1S3FVc3AyZkRSMHFSb3FZ?=
 =?utf-8?B?Q1ZQUzJXSC9CTjN4VEd5WTFVL0ZRR1RIUFhSUU1wRE1IdXhBMUthdlRuM08z?=
 =?utf-8?B?cW1vMS96SVNHNFZKeHZpNkw4dkZ1cWV5UGxpM2NTa0Q0VkUzeHZ3L1VtU2sy?=
 =?utf-8?B?WnlqMzhwUjlUSGxHdzVqRVd2bnBlTEk3Y2JsN2YydG95R3ZjMEJIcnZXdFVx?=
 =?utf-8?B?cGNzYU9SUzhCSUUvc21LLzRjTkhkMzkwZzI0Y3FFbStFeDVSclRoMTM5NGMy?=
 =?utf-8?B?dXlRTFlKMWZDK0V0VG9NQXNaRSt4TTJNVFF1M2prS21nclpRVXM4Mk44bXhk?=
 =?utf-8?B?c0dKTWFOSG52RG9hV0xZc2x4UmNvaDNYc01UNVdZcmp0Y2R5dTMvYTlDVFBB?=
 =?utf-8?B?YzZFY3UvK25UUU13amZHU2tsTlU2NTExMFlESkI2b243NytFVEhQM1NuQnk0?=
 =?utf-8?B?eHVLN095ZVVCMGtDWWd6eGRwc3RpUzYwUXljVzl3MzV6cVVqbGs5MTNGbnF6?=
 =?utf-8?B?VnhBMjhtM1ZBUVkxOHYzYTh6MEx2bTZPaGJvZDZOTU54Rkt6TkRDVm94UjdU?=
 =?utf-8?B?TzdpNG56MWlpOE9LS05wWmlPNlNoZU44elJMTmxzUUdab0RWTkcvTGpkRTlG?=
 =?utf-8?B?QnJvdFlNQ2F0czMyVzNnaUF0OU9yRDlBMUluVTAyajJJLzZjTmhJSU5WakZ6?=
 =?utf-8?B?aWsyTXk2b1lsaWRDbndiRmhEMGttRkJIZnAvNlNsZ3U5cExwVTRCVWEraFVG?=
 =?utf-8?B?QlgwckVYZ2JUWi83Q3ZTZkVTVEJRWkNhbDdwdGF6Y2xlaGRMdlhTWmFncFcv?=
 =?utf-8?B?YkRCTm04bTZ5cE5DRWhYUTMxRG9na2dMY05lTUVGd2J2bUdpc1RxdmJ1blV2?=
 =?utf-8?B?WVJlWFlvUWE3UWdWZzFaaEVZWHlvNnNHTCs1UjRvakdjdmNyc1VHNzNreDhr?=
 =?utf-8?B?VGZPYktoRWZRUzQzU1FxSFN6Q1dqRVV0T2R2T25nem13TEVFRVRkSXZqVEFO?=
 =?utf-8?B?clZ1ZHNQdmpleklFeXJPVW82SERHKy9NcXoweUljZ1lCcTJHaWVmaUs1Q0Ew?=
 =?utf-8?B?L3FKdit6S050VVFnQldWUUdBRzhhWDZpOVlFSVYzQUJlUmNGTEhHTExVWi94?=
 =?utf-8?B?RGJPcGNZdEdORTVHN1ZQeUJHbXR0NmFnbWhud2ZPd1NyVFF1YWhxT2ltUFgx?=
 =?utf-8?B?a0k0OEc4UVpFVmRySmVKa2p3UWw1NmFrWWthWTJqRWNscjk1dFVvODRJaWFO?=
 =?utf-8?B?ZEJTL0poM2Q1ZUdzT2JsSnJSbnBmeXQwM2JVQ0xXNktFdVNUNEwreS94V3RW?=
 =?utf-8?B?R0VWQU1oSDcrRXBvU0l6OCs4YzY5YzZOTEk5em5DRzVQTUVrMFZWQndtK1hD?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e89529f-04ba-42f7-0940-08da8597e00a
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 06:14:17.6186 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4qp4bL9I04PAbakj0SzfHWONgEygrtaNVj8fkMFT5qdzqQUc5ynrGwYvgEpO0CZczGsuyQKDIAG8gSzuE7rhTm1BXMFPg0d1/oUHf4lmZQA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1581
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip Bit12 fw domain reset for
 gen12+
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 8/18/22 3:00 PM, Matt Roper wrote:
> On Wed, Aug 17, 2022 at 03:43:04PM -0700, Radhakrishna Sripada wrote:
>> Bit12 of the Forcewake request register should not be cleared post
>> gen12. Do not touch this bit while clearing during fw domain reset.
>>
>> Bspec: 52542
>>
>> Signed-off-by: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> ---
>>   drivers/gpu/drm/i915/intel_uncore.c | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
>> index a852c471d1b3..c85e2b686c95 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>> @@ -113,7 +113,10 @@ fw_domain_reset(const struct intel_uncore_forcewake_domain *d)
>>   	 * off in ICL+), so no waiting for acks
>>   	 */
>>   	/* WaRsClearFWBitsAtReset:bdw,skl */
> 
> While we're at it, let's remove the "bdw,skl" from this comment since
> it's misleading and doesn't match the code.  We do still apply this
> workaround on other pre-gen12 platforms than just those two.
> 
> Aside from the comment tweak,
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
>> -	fw_clear(d, 0xffff);
>> +	if (GRAPHICS_VER(d->uncore->i915) >= 12)
Hi Radhakrishna Sripada,

In bspec 52542, there is an explanation that BIT12 should not be set for 
address 0xA188 corresponding to FORCEWAKE_MT/FORCEWAKE_GT_GEN9, but in 
bspec 52466, there is no explanation that BIT12 should not be set for 
address 0xA278, address of FORCEWAKE_RENDER_GEN9.

I ask if fw_domain_reset() should perform fw_clear() by comparing not 
only GRAPHICS_VER() >= 12 but also checking of FW_DOMAIN_ID_RENDER and 
FW_DOMAIN_ID_GT values.

Br,
G.G.
>> +		fw_clear(d, 0xefff);
>> +	else
>> +		fw_clear(d, 0xffff);
>>   }
>>   
>>   static inline void
>> -- 
>> 2.25.1
>>
> 

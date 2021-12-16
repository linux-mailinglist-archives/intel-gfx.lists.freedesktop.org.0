Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5F0477DFE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 21:59:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5436210E297;
	Thu, 16 Dec 2021 20:59:21 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD60410E297;
 Thu, 16 Dec 2021 20:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639688360; x=1671224360;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LjURe0FSezyiQQZcr/nrKYrCC0WnZLuo7Fk6bK104y8=;
 b=AwNNQy2Mv67kgV7xIIrFdAS5E5DXnUbl/ZMXomOI4vpnUYKNl3cv9Aa2
 xSn8PXYT97WUpsx297SZDzbhg5ovAcFd7TdZxIPbqdLYDpNYRbCdh86Dl
 ntQ5n3QYpAXIA2KMm6ANs/iC763gUWpW/e2GXW8XTEOB8J2W7bSEOSz0J
 TZ/HuKY+3s9Zyu+tMVDYdndhOJ4InkHcau4CaV2AuZ3+Avyd1vtEPdf0w
 4amFxCdGudC/3/T/qmkIwMZ43gUYZepAf3SNSxgcGGYQb113O/SNsbDEM
 dF4BeWVDqNYkCi8BFwB3zQCdUv9M5+7BC0mNNB473wKaFewexM3PObIxT g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="226884307"
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; d="scan'208";a="226884307"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 12:59:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; d="scan'208";a="756241289"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 16 Dec 2021 12:59:19 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 16 Dec 2021 12:59:18 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 16 Dec 2021 12:59:18 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 16 Dec 2021 12:59:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JDzF+/piDiXQa989LaFPOY9uoAbhySFHmm5sdca6/9146BdANwnA5CKmJ6cULTB07jRCUlMkyoi0Lq023hRj5Ym0ND6AaHzKTCe0MCRgYcgTN9oXIZkmBrZjYnVqErlyp30JQR4Gajwysqe0UXkQC8DXr+h1LLF7/EbcW8y2ygsqxX8pRyKQ3KF1MDVGC89rhYTHvk5/3w3rTM35Z6T8W/7JhpdGfpz2Ibj3GROMp7FGGfBGkamQTzGun0Ei9wJTV9/AoRVNkCD2AJ1jbgRxynP5JTdRwzfH/wLVfme1sxBy0j4VVT2/0jHCZW0Jd3EsmEs/ylrZt0EFuayw2wPBbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3sJAs2YGNwOa1CIjI3i4dCuuDAe7CS5IL+xuucQI5tg=;
 b=VV4XXzFZ3f6Bqrwy/bkvAYWorkic37MFBF+IGgOYECZgXeJGgfn+hZhPt1S8JvP+P88T3VTW16jQUhizOSXtAUHFNOn9kUmwb3F/Zqv+RCfnrRqLkxUdMJmW7k1WL5rWdNyGkXFvu3vRA/C0YStXdkUX92usKhKDul9GQVmNQFpUiRJD6HoK99wOhMsBeQ6oB7KOjbhQYxWuWWS9GEOMIJwbkhK5YnKmBNzsph1PUHB6PsSEAQQq1Ub+DykVmXOZ/DCwltyew1rjvCMfrDSSiUibbWAQ0StGCEwOgg3xKyKWX5L3M7ZAZsdGuY4zqEMYVBccAgIWL5HII/Ie+GCGuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BYAPR11MB3558.namprd11.prod.outlook.com (2603:10b6:a03:b3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.14; Thu, 16 Dec
 2021 20:59:17 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8460:d836:4335:641e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8460:d836:4335:641e%6]) with mapi id 15.20.4801.014; Thu, 16 Dec 2021
 20:59:16 +0000
Message-ID: <16edbcda-8cee-3dca-f50f-157646ad457d@intel.com>
Date: Thu, 16 Dec 2021 12:59:14 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.0
Content-Language: en-GB
To: =?UTF-8?Q?Zbigniew_Kempczy=c5=84ski?= <zbigniew.kempczynski@intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
 <20211213232914.2523139-8-John.C.Harrison@Intel.com>
 <Ybrpj/tO+b8JsPPJ@zkempczy-mobl2>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <Ybrpj/tO+b8JsPPJ@zkempczy-mobl2>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR07CA0010.namprd07.prod.outlook.com
 (2603:10b6:300:116::20) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce52e043-bb62-4919-3915-08d9c0d6ec2e
X-MS-TrafficTypeDiagnostic: BYAPR11MB3558:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BYAPR11MB35589AD9CB53B623CE843015BD779@BYAPR11MB3558.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2NF0bw4c1P8YXCtSsZSDTalcbR1pIGV/qxr5uHiRTsJNPLx2z6vhN2oaqwKEITvkPc6FFJrmId4G5SRpvlhsi4Zs6puWP3jwR9yd+7R1cX0iPkq/TjHWb7q9mvC8B8ZKETfrkEATKAYbvPLGEXmIcRXodKpsfZHGUiWc7ueiV7zxZ9K4RXEUjubHs7rrNrl+iGLVrQgaRS5OKFmeoCJEOSdoKCsPlzZTuSaGsNDS15UbVD9hB8sh4WOI0LaZI1F4ncr7v2QCWs8HxHSxr3fLu7kG43q3wDOxk58V71iolWT6obui1ctdZUIPbDo8PYfueUxuRYe/zbBancBA3JtX2jevoluLlA5w7cx+ibaiijMO/1+2A9xsLTyZtCECWO4A8A451q83sknplU6lCND6MPr80B2Em+vnCjES0zDFv4z7BndquI5JRSrxIdoynxS9p2lwndbNDZ+/spGRdNwBmY2igmn5gI4NzcZ04ra3A0oXyToOm7WGPzerIIvLyJpVD9qwuYJVrJdpjyW9HzPnE47P1fjrSOU8ePbko+wU1GdTQLagzoAF+QCo9w7JfUNcmUxwrjvBda7h3hOTFMzls0XKvXwQOIiy0BDhQ12Sn1FcxXtQ/kmwgs2Cj1fAClCG3MyvJxEAq+S7AUK2TSvicaXVqqp+RLDMdPSRX9UKeP8PNo74wyDufGcG0+gtdnmChw2dvAEK14Q4AX71Inx8o6/ejSGz0WPgHCY0sZtoKWQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(26005)(37006003)(66556008)(186003)(2616005)(82960400001)(2906002)(66946007)(38100700002)(66476007)(8936002)(31696002)(6486002)(316002)(5660300002)(508600001)(8676002)(6636002)(450100002)(4326008)(6512007)(6862004)(86362001)(66574015)(31686004)(36756003)(53546011)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djUwSUhxakN2UTRidTRxalJoL0FORFB0YU9EWWs1L2hzbjlnRlNuM3JtQVov?=
 =?utf-8?B?akNQOC9hbkFJb1B1NU1VQVVTLzVPNXNiVmVDSmxkdTY5U3VsalV0TzhLUXB3?=
 =?utf-8?B?TGRkN0pwZW1BbkNYZUY2b3N0NGI4MHFZQVZMeU9iaFI4ZU5vemlCVE9rdldE?=
 =?utf-8?B?SHlGZ29EVm4rNzlxSEczMHpDendiY2VITEVrZ3BNY2RER1BaS2w1dE9Uejdz?=
 =?utf-8?B?dHhYU0tObEFzSmR1NGZUZ09pNmp3NnVYRHR6blNnQk4zdFExZ1Q4RENVbldt?=
 =?utf-8?B?Ry9HTWhqazdWUmpnRGVGenErb05HQ3l0endzOW9FMXBraitBWWtPUEtsNXBC?=
 =?utf-8?B?YTcxVms3WVlyS0RuZmJaNDRwR0RTYmo4STdDQlFiKzBwZlR0MEI0NzJwbHJW?=
 =?utf-8?B?R0EzSGx1Sm85cW41RldFYk9WMUhxS0tobkRJaHY0ejMreU1HZElGdzg5Myty?=
 =?utf-8?B?cjBTVHhKUTIrMnJ2WFBWT2ROQVZTVWhWOG1Ib2Z2aU1wWGdDQW9zR3d1MzFZ?=
 =?utf-8?B?OHkySStIYmkyTmYyem9WT1F0WUlSQ2o3Snp3cFZOMDZKcWVhTDBDSFMxOGZa?=
 =?utf-8?B?TldOaHBnTjQwVjhLRTc5MTlrOStneHNqREhveUozbnhEUlBaTGxIWWFMSVgv?=
 =?utf-8?B?a1RoRmVHVUlTS0VDbmNzb1EvVURDR2wrdG8vZ3VMVFdtR21JL0JBeXdrdnRG?=
 =?utf-8?B?MGVJeVhlbnZxT1JOSnBSZnNZb2JCZWpsTm5pTkU3dVFqMndRYyt1QWk1dXVh?=
 =?utf-8?B?aFRrRVRhU2lWOXlCZGVYblNvTnNYMWNYYXpyUEN4NWkxQVdnUkM2ckdab2J3?=
 =?utf-8?B?b0FhS2ZSYkVMOHNsa0RPT29udllpNXEvUGttZVk2QVRtR0xiM3ZzNHBLbXFZ?=
 =?utf-8?B?eGxPU0NOeGtWdDEraG0rTU1tRVEySmhqdUl3a1RpSGVTMkdCWlEzQ1AzL3hD?=
 =?utf-8?B?dUNRdURMY21xeExVN0gwRHF3V21jcjdBMENhWFNQK2hvc0ZKUmE2a2trZHE3?=
 =?utf-8?B?RjNicDQ1TE9jb0ZRbTh2eG12R0F1d3liVG4xUTZoRGh5bFlrODNyY0VmV3Zm?=
 =?utf-8?B?NEFHY1BZeElDamRKSFRWK2dWMEhxK3RqWE5UOWF2MDl1L3ByUnllZU94dDZG?=
 =?utf-8?B?QVU5YUJ3UHVpNi9hUTJKNzJncnJuRUhQVnF3MXNYRWxKZDlUNU5OYUZLci9E?=
 =?utf-8?B?dXdsNk9HZ01ORkdpMXVqdllsTUZPYzBSWU42WGQwQ2t6cmxxVzZhT2psVlRZ?=
 =?utf-8?B?eVJMVXh5WnJCbitZZVJ4dmJPQkhvWHFMcXd0MHV4UkJWVkpCeVNUdlozRGpF?=
 =?utf-8?B?cVJGQTJxMlIwR1kzSlFuR1cyZGZFSlJXWDZMaVBhczM0cXN1S0NoQmo3UHdM?=
 =?utf-8?B?akJwYVRJVVptNnY0MEE4NzZ0cTFycEhPOHAvK0N0azJRV1VrWFc1Yjg3M0c2?=
 =?utf-8?B?cW42ZjlMREhDQXRKR1pVQWQ1ZnJXL1FBb3c3UUN5VHlJTVdCNWVkbGtkU1dB?=
 =?utf-8?B?aXRyZTZoM0RXRit6QWFRUnB1T0d4aTh3MXRpaVJhS05QaDM1NVpReUNOQXpq?=
 =?utf-8?B?emtDWGh1UDdmQXhaMGxBbGNYTXZ3bnZXR3lZbDdjNjAwYllic1djZE45amhJ?=
 =?utf-8?B?TlBTU1h6MS9yUThzaS9tWDJ3U1g3S2hyaVdDYWdSVmpRVzhrZHJTQjBKWU4z?=
 =?utf-8?B?a3Z5RkZFQm5Wb01HQ1ZTMWlNekt6Rm45a054Z0FucEVmSGU0MDN5Q0NHeHYz?=
 =?utf-8?B?OXdlRFViVlFDSHF3amhDR001MjZrTWMxa1ZyUEI3NDFDbjJQU3QxM3lNVFl1?=
 =?utf-8?B?QjZXSnRBVHZLUTBpMlJ3dkdkdmpiTmJEeTkzTTNHYmx0WWJXenorMXM3VnBC?=
 =?utf-8?B?V1ZMajJ3VVV6UzkwdndXVjRYYmowVHhIZlpwK3NvS3lsYko1U1BiR0RrTGR3?=
 =?utf-8?B?VGkzK3VUQUs2bjlNZTdrNE5WVlhHWHgrbG5hKzV2dVpKMUhtSG5Zb05yYzR6?=
 =?utf-8?B?UkQ0ai9mV0xKOVd3VDJDSWpQZDk0ZVVtWUtONERLNS91QUJEaS84Yk1RVThO?=
 =?utf-8?B?QjlIdVBxdWF0Tm1CVkZ1OGd2NmxkUEh2OEhFWnM4Z3J4QVFFaXg5NkkwSGxv?=
 =?utf-8?B?ZnBDajA4RnBhM2kyT0hFQ3hIWENySzVTT0syQkhGNkI4KzFJa0Q0b3g3QitY?=
 =?utf-8?B?QXVGajJTRlhOa25hRVdCOHlMRUdNb00veE9LZ1pjYStrUDJvdHJPRFNObTNz?=
 =?utf-8?Q?ljJm6nvSRUu01yDqrkpwGXGfIcGTqLL9KPl0cqpDRw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce52e043-bb62-4919-3915-08d9c0d6ec2e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2021 20:59:16.8872 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SDrHVD7C8dwjRnKqnHTsxUiIToZjp6ARKEirEb8Zd1SVUwrzjwgZCUqfsyHvbNFebDi7YMerB7iEd8a5qiA28pX0bWJL4oKsqsgbKg6PAkk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3558
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 07/11]
 tests/i915/i915_hangman: Add alive-ness test after error capture
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
Cc: IGT-Dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/15/2021 23:23, Zbigniew Kempczyński wrote:
> On Mon, Dec 13, 2021 at 03:29:10PM -0800, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> Added a an extra step to the i915_hangman tests to check that the
>> system is still alive after the hang and recovery. This submits a
>> simple batch to each engine which does a write to memory and checks
>> that the write occurred.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/i915_hangman.c | 115 ++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 115 insertions(+)
>>
>> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
>> index b77705206..20653b479 100644
>> --- a/tests/i915/i915_hangman.c
>> +++ b/tests/i915/i915_hangman.c
>> @@ -47,8 +47,113 @@
>>   static int device = -1;
>>   static int sysfs = -1;
>>   
>> +#define OFFSET_ALIVE	10
>> +
>>   IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
>>   
>> +/* Requires master for STORE_DWORD on gen4/5 */
>> +static void store(int fd, const struct intel_execution_engine2 *e,
>> +		  int fence, uint32_t target, unsigned offset_value)
>> +{
>> +	const int SCRATCH = 0;
>> +	const int BATCH = 1;
>> +	const int gen = intel_gen(intel_get_drm_devid(fd));
>> +	struct drm_i915_gem_exec_object2 obj[2];
>> +	struct drm_i915_gem_relocation_entry reloc;
>> +	struct drm_i915_gem_execbuffer2 execbuf;
>> +	uint32_t batch[16];
>> +	int i;
>> +
>> +	memset(&execbuf, 0, sizeof(execbuf));
>> +	execbuf.buffers_ptr = to_user_pointer(obj);
>> +	execbuf.buffer_count = ARRAY_SIZE(obj);
>> +	execbuf.flags = e->flags;
>> +	if (fence != -1) {
>> +		execbuf.flags |= I915_EXEC_FENCE_IN;
>> +		execbuf.rsvd2 = fence;
>> +	}
>> +	if (gen < 6)
>> +		execbuf.flags |= I915_EXEC_SECURE;
>> +
>> +	memset(obj, 0, sizeof(obj));
>> +	obj[SCRATCH].handle = target;
>> +
>> +	obj[BATCH].handle = gem_create(fd, 4096);
>> +	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>> +	obj[BATCH].relocation_count = 1;
>> +	memset(&reloc, 0, sizeof(reloc));
>> +
>> +	i = 0;
>> +	reloc.target_handle = obj[SCRATCH].handle;
>> +	reloc.presumed_offset = -1;
>> +	reloc.offset = sizeof(uint32_t) * (i + 1);
>> +	reloc.delta = sizeof(uint32_t) * offset_value;
>> +	reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>> +	reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>> +	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>> +	if (gen >= 8) {
>> +		batch[++i] = reloc.delta;
>> +		batch[++i] = 0;
>> +	} else if (gen >= 4) {
>> +		batch[++i] = 0;
>> +		batch[++i] = reloc.delta;
>> +		reloc.offset += sizeof(uint32_t);
>> +	} else {
>> +		batch[i]--;
>> +		batch[++i] = reloc.delta;
>> +	}
>> +	batch[++i] = offset_value;
>> +	batch[++i] = MI_BATCH_BUFFER_END;
>> +	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>> +	gem_execbuf(fd, &execbuf);
>> +	gem_close(fd, obj[BATCH].handle);
>> +}
>> +
>> +static void check_alive(void)
>> +{
>> +	const struct intel_execution_engine2 *engine;
>> +	const intel_ctx_t *ctx;
>> +	uint32_t scratch, *out;
>> +	int fd, i = 0;
>> +	uint64_t ahnd;
>> +
>> +	fd = drm_open_driver(DRIVER_INTEL);
>> +	igt_require(gem_class_can_store_dword(fd, 0));
>> +
>> +	ctx = intel_ctx_create_all_physical(fd);
>> +	ahnd = get_reloc_ahnd(fd, ctx->id);
>> +	scratch = gem_create(fd, 4096);
>> +	out = gem_mmap__wc(fd, scratch, 0, 4096, PROT_WRITE);
>> +	gem_set_domain(fd, scratch,
>> +			I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
>> +
>> +	for_each_physical_engine(fd, engine) {
>> +		igt_assert_eq_u32(out[i + OFFSET_ALIVE], 0);
>> +		i++;
>> +	}
>> +
>> +	i = 0;
>> +	for_each_ctx_engine(fd, ctx, engine) {
>> +		if (!gem_class_can_store_dword(fd, engine->class))
>> +			continue;
>> +
>> +		/* +OFFSET_ALIVE to ensure engine zero doesn't get a false negative */
>> +		store(fd, engine, -1, scratch, i + OFFSET_ALIVE);
> You need to pass ctx + ahnd to store() to add softpin path. Relocs
> won't work above Tigerlake.
There didn't seem much point in reworking the code in this file when it 
is going to be removed in the next patch. I might just re-order the two 
for the next rev. Create the helper first and then never actually add 
the almost-duplicate here at all.

John.

>
> --
> Zbigniew
>
>
>> +		i++;
>> +	}
>> +
>> +	gem_set_domain(fd, scratch, I915_GEM_DOMAIN_GTT, 0);
>> +
>> +	while (i--)
>> +		igt_assert_eq_u32(out[i + OFFSET_ALIVE], i + OFFSET_ALIVE);
>> +
>> +	munmap(out, 4096);
>> +	gem_close(fd, scratch);
>> +	put_ahnd(ahnd);
>> +	intel_ctx_destroy(fd, ctx);
>> +	close(fd);
>> +}
>> +
>>   static bool has_error_state(int dir)
>>   {
>>   	bool result;
>> @@ -230,6 +335,8 @@ static void test_error_state_capture(const intel_ctx_t *ctx,
>>   	check_error_state(e->name, offset, batch);
>>   	munmap(batch, 4096);
>>   	put_ahnd(ahnd);
>> +
>> +	check_alive();
>>   }
>>   
>>   static void
>> @@ -288,6 +395,8 @@ test_engine_hang(const intel_ctx_t *ctx,
>>   		put_ahnd(ahndN);
>>   	}
>>   	put_ahnd(ahnd);
>> +
>> +	check_alive();
>>   }
>>   
>>   static int hang_count;
>> @@ -320,6 +429,8 @@ static void test_hang_detector(const intel_ctx_t *ctx,
>>   
>>   	/* Did it work? */
>>   	igt_assert(hang_count == 1);
>> +
>> +	check_alive();
>>   }
>>   
>>   /* This test covers the case where we end up in an uninitialised area of the
>> @@ -355,6 +466,8 @@ static void hangcheck_unterminated(const intel_ctx_t *ctx)
>>   		igt_force_gpu_reset(device);
>>   		igt_assert_f(0, "unterminated batch did not trigger a hang!");
>>   	}
>> +
>> +	check_alive();
>>   }
>>   
>>   static void do_tests(const char *name, const char *prefix,
>> @@ -432,6 +545,8 @@ igt_main
>>   		igt_assert(sysfs != -1);
>>   
>>   		igt_require(has_error_state(sysfs));
>> +
>> +		gem_require_mmap_wc(device);
>>   	}
>>   
>>   	igt_describe("Basic error capture");
>> -- 
>> 2.25.1
>>


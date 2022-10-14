Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7957A5FEB85
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 11:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE28C10E047;
	Fri, 14 Oct 2022 09:27:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 230F310E047
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 09:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665739635; x=1697275635;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DlUSz51rydrqg/5ricJopBghxDBq64V3vB8xluMPVrQ=;
 b=dqJNvSyEGVZQfullMtfMKHP0iQWvYvhfKMnOGv2moOwh7zyIwPZgbtbF
 kNb5WmXW8ZHuk65ZsoVTuLzVQEcHECd5yhKTnNfVg4vaIopDJOghqTx5y
 ZqzOQMRuehHC+GIt6mbYPpWTtAHGHQ0ICTzJ8avpYia9ZfHtvAvQDv6sa
 +CFBS3VxxNO5qwnOmDEJFK68bIu2NGIew0TcAnnFyg4poJ19aJTSDOjdc
 rz986m+dPjcuaFPbMwqDAVcM4+PQcVwSogNCObmWpv80fbzBk92OKq0ML
 iRzeic90BRxr0QAMcJYqDkB6LAXns62gv7BOdif38+4A50lRtF8yo3D03 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="367354399"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="367354399"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:27:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="629876882"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="629876882"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 14 Oct 2022 02:27:14 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 02:27:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 02:27:13 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 02:27:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jet+dMdVqRfBO90ubuTUucNL68Jvm0DdwUTfpiecMPYbUD5jWA6YpkFpuqTJvjSKwNMuHHxkei9ik4EQ0q9c9/4kBxBzBAyydI52uD3UdJXJLRQv5d0qpko4EhLbD7vJ9NEFAtVbuflNvRj4FjmxknWRSoainugTAxduy0CApzisyO4OaD9Cpe3CdYKjnsyBTFe0JnPN8xCiKKfGZijVNh5MUQQUpMQGfA0Gqizk2UtMOs29esTmZkMMIjtxPAhUi6vn7BF6BZ0rYe8RD4X+N13MBS4FCWvO0wW0xP+z/IQAIe0N1vMP7OXtijqEvclSgk/StGt3essJ4kMrf6L3Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6iR6fQc4Trh45aSFjnK0SbXeVd5IPCsfgziKkiEfSg0=;
 b=AePGnzXU+gc9qHUB67U0XFDPNBXnwCPo9IOth0abI06BE4NkJ+fKNixgKoR/CvRZz8zlMUiYt+IfxTGP3xasny13uW/q3ajmS/3zZOYpvQqwA0trFowfXbdgfnQZJ2RHbOugtWhJAmYlQ3jupKoXAkTQMSEyvomqwtcwGH1dL3LdzsPTZxOT6DFrNMxVhpvY5sCEP0gcKHPFWNOmkSd/+kuYUzqQgT9vNKB+pNn4NADMJDZ3pFpbqdXvKgcXLu2HpBrxGeVVtYZCrQO5j0oeIJDWMIEdVwpTFBTHA/rMk2zDOnuz61p3MPm9I+Fv2cRai5Gs+Vr3evgJt7k7Hy74gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA1PR11MB6896.namprd11.prod.outlook.com (2603:10b6:806:2bd::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Fri, 14 Oct
 2022 09:27:11 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::2bec:f4e1:7a63:7a6f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::2bec:f4e1:7a63:7a6f%2]) with mapi id 15.20.5723.026; Fri, 14 Oct 2022
 09:27:10 +0000
Message-ID: <fd2b6520-fc22-638f-4e40-415eba3091fc@intel.com>
Date: Fri, 14 Oct 2022 11:27:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
 <43b8728b-4f05-3f32-d794-7b94ba65480c@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <43b8728b-4f05-3f32-d794-7b94ba65480c@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0382.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::9) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SA1PR11MB6896:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c1b9d5b-ed86-40a6-fea8-08daadc64517
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iph42lq26v+sElPueiErz5lqQUV0sSaShPQwM6yQSC2yBBk+sAYw/CrYt5keErOp7nhtWmC5cim2/+UmYO+We9I4M+A6fD9GNbiumW0GmnupyqjNLWo4B0O5DslAUDjMLmy3y3+DJ2LJT21kGo2zd9p7HDpnTYJyYsOgrNsyVlPUE8ZobIi4KPZ7N6KiwRb7jH4y8sV/5ipm6Sq0Z0rqmeZboswr71Y8yIb6AA8Tt1zMAU11qvXcfw6WSESvQ6qLHr3mhB7EsjoPUdDK2OcSwBiEz6KUJBYr2JQSxGrLrohFprB2NnqOBzSQHD0S1Sm6Va+tJ/eW9csFlt7o6iSmyPmjDa41TaIxFMcv/5dY7s9WZM2TW4cprL8eaTGHbZ7SIULq5Ot92OpR0OuxmvGFBT2IEij7QB1xoWEvGBYXQqyQXRXFZ2AAqcQ6EuWNjUMrv63fp3ikEh2QgVJrJeESx5WEDNn1lUQGgc2yRg9Q2DwTadk89s2AyJUe7q3EcslJ6grFt84oR15ilLNdK7oP7+DwAgpkauKAcVspICV8Dm5wuaHXkitWJf4wPVrqxqz2CWHu8wDyB02KFwxpFtg60pWD4izkE8P9qrOSPQunb6QgH+R9qNahV+2Vd2Byl/ooA5NEF43WtXfxFauNaYmD4ymO9ZeFRhKWqvjM4C+VZCbbvTA1BETGAeEHAzCrw4BH0AOsZF9kCl0SBWxQaYP8g7dCxGKO2+w60vB1TdOGV6ioI9At7RdVTkSJ1R4/o9RE96trtsm7GpC9iqASqF2Gq6xXBbH7uoA8QTKv0ShsfYo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(136003)(366004)(346002)(376002)(451199015)(478600001)(6486002)(41300700001)(38100700002)(86362001)(36756003)(110136005)(83380400001)(66946007)(66476007)(66556008)(31696002)(8676002)(6506007)(53546011)(26005)(4326008)(31686004)(2616005)(186003)(316002)(2906002)(6666004)(82960400001)(6512007)(8936002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2VVRkdyaTFHZTJBdVIvZkJWc1cxME1VZEZsTUtYOEpiRlZzMFI1UkxseERJ?=
 =?utf-8?B?ZTg2b1ZFZnl3UVpqWWhGT0UxakVqQUkvT2NUSG5YMVJ3U0dOMWhLdVowTEsv?=
 =?utf-8?B?eGJCaThaTGRuZkZ3R0xuRWk0UHRXUlJSRnYrMkpmUTZIVXJ2bEJmU1hMdVg1?=
 =?utf-8?B?MUw5MGFtTmtoTXF0WHdCR2dPQ1Y3VXJuZGZoMTVDSXRRLzV4OHFYT3BXVXJj?=
 =?utf-8?B?SkxLRGtBUHZDSVllR2ZKY0dHQ0hrZm5MQ2VwQWdtSHYzdkVJQXkzYzN5Y3dM?=
 =?utf-8?B?akE2K2pPZ3gvWGpLUnM5bGN2czdkY09Ed05JbEFRRGZBd1BJQzd6aVVQU0l3?=
 =?utf-8?B?OWVxd3BUK1lYVllNNWdHZDNBa3hCYlZnYnhvd09KNHAxSVlzT010c3N3Sk1m?=
 =?utf-8?B?ZDFlaG9leUtSNDJpcnJjVHJTSmJESXp0bFBCRU1NeER2YmgrSmNwYTlqTXJS?=
 =?utf-8?B?WjFQdVUzaGlKREdxb2U1WVpFWW9nSDE0M2hSMzVzR3RuQlZZNmJaNlVEb3F1?=
 =?utf-8?B?SlBjaTJITlZueWJ2SlVTajhwWkFkU1VPQ3llWkVPaTFmRTJBMENlNVlQZzNE?=
 =?utf-8?B?Y3ljbkhlaUlRREhvL0gwZ0pYVHg2endwemJhK1MrU21LbWxSVFR0NHdVYlNH?=
 =?utf-8?B?UThGNUdZVFFLMU93bUM5U0FRcmg4bXl5Z0xYMVdsVWVuN2gyZmhBYXRVcEtw?=
 =?utf-8?B?WTRWVjM1SjlvQmo5TU4vVG1Mako0Nk1JN0JoTVhneUUvVGx2eWR3aFNDQkxQ?=
 =?utf-8?B?czZNZXBTd1JjOFhGNTRFSlFpczBHdUZhWVZYdTNtV3FhTmtPTHVaWG1iYytv?=
 =?utf-8?B?VjkycFRPTDZsWmZOL3BXU20wQ2tCc1VWSzhYT1g5ZWkxOFpndEdmbnpla3NB?=
 =?utf-8?B?dnMzaDRSSmJoZFQ3cHpFQ2kxdHBzSXpMVGxGZkgzZlJncVoxb2U4RUFhR0ZN?=
 =?utf-8?B?SVhxcm5HejRkZUpYUGNQUHhwdnhJRVEzdkpKdER3cEVYaW5ZSzNNU002T3ZG?=
 =?utf-8?B?cmZrVWVBU3NHNjRvOEZTaDN2TllsY2xzZnplUHZWVW9zUDlJU0tMUTZGazNJ?=
 =?utf-8?B?MWdWZmdweHVWZ05GS1Jubkx2WU0xM1hidGF3ZDByRDk3MFZlc0ZucHF2cWJi?=
 =?utf-8?B?ZXRvaXQwSWtuUFh1Ulg5SHQxTHFWZHUrMjJEZStsSWxXaDREb2JXTVpucHgr?=
 =?utf-8?B?dWZQRGJTcFZtd1hIUlhlUkd2ZzNkR1ZIZ3llTmJ2RWpvWXJkRHgyL2EvYS9L?=
 =?utf-8?B?UTVEN0tYQS9KN3ZBLzRtSVlTWGY5SlRXdk5wVi9WOE92UFlyYk4ySFl2bERY?=
 =?utf-8?B?SmlIekxqeGJKYW03RWUybDIxOUt4RG9VREN3TmpiRG5lMHpOYWE5dHZrajc0?=
 =?utf-8?B?MkxTZjZObzFnczRkemtYY1NJcVJjYlNyWE5OMFJjeWIreUxsakhNOWhZWHlM?=
 =?utf-8?B?U21HcUgzd3J2dVdOcEZwekc2ZjZEb2h4ZUVZNnR2eWgxdTBER2gvTkRLRW00?=
 =?utf-8?B?dDdIcTNIdWRnR0tvWFRmellnNytJMjhJb3JuME1wN250MzFNVGM2L3hjcm02?=
 =?utf-8?B?M2E1NEIzMnRMNFpVR0tDOHR5TmFId2NDSXc4QUtPQ29TUHF0clVQOTVXWktV?=
 =?utf-8?B?VUhnRkJUUHk5STJ5bVZ2Z1lIb0lEYXJYS1Jwd2lGbklnTElXRndvZ1RLNmNa?=
 =?utf-8?B?bk83eDl1SExqZ010ZVB4bnNBUDVaNTBGWFc5OHJSd3puSytiODk0aXRZaDlC?=
 =?utf-8?B?NWp5cUFGZ0s4SVZBUlovd0tKMlBZK05mendIdk8xeGppSk9rUnlqOHVhc2Nv?=
 =?utf-8?B?ZEF1TGtDQjdnR0ZnZFNINTFyYVUzSFZNWVNrdUwxUVZ5dWJJamtrajZpMVNO?=
 =?utf-8?B?QmRZMDM0eksvZHhWNXFiWDlPMkgzczZXSnl2YVpaK0JrMXdtM052M0ZVZ2xV?=
 =?utf-8?B?aC9yZWFMSStHVGdZazcwMW5SZnJ3REo5dmZxZ0JXM2g3ejZVQWp6Z2Exdy9Z?=
 =?utf-8?B?NWxOV1VjN3drSGx6ZXdQZ2t6ZEowMXlPNk13UVBRczlJdzRQc3lpa0p6dFRJ?=
 =?utf-8?B?cUQweFpDUVNpSWJQcEhHNjBrRFA4YWtoMFNLYkM2dklOcXhlL2QzUnU2dXZl?=
 =?utf-8?Q?XjTMDTyMhYtmyvVCRCB06j0s+?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c1b9d5b-ed86-40a6-fea8-08daadc64517
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2022 09:27:10.3020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tsKEmTHzmqwM/GUnilu8btIZKlRph0Ngq2QzC1PGQCRkXeoJa8a0n8ic9PyASgPSfqJJL7HJV/vdUCmHOnLi8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6896
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: Fix access_memory null
 pointer exception
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
Cc: andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt

On 10/14/2022 10:39 AM, Matthew Auld wrote:
> On 13/10/2022 18:56, Jonathan Cavitt wrote:
>> i915_ttm_to_gem can return a NULL pointer, which is
>> dereferenced in i915_ttm_access_memory without first
>> checking if it is NULL.  Inspecting
>> i915_ttm_io_mem_reserve, it appears the correct
>> behavior in this case is to return -EINVAL.
>
> The GEM object has already been dereferenced before this point, if you 
> look at the caller (vm_access_ttm). The NULL obj thing is to identify 
> "ttm ghost objects", and I don't think a normal userpace object can 
> suddenly become one (access_memory comes from ptrace). AFAIK ghost 
> objects are just for temporarily hanging on to some memory/state, 
> while the dma-resv is busy. In the places where ttm is the one giving 
> us the object, then it might be possible to see these types of 
> objects, since ttm could in theory pass one in (like during eviction).


Yes, we should not hit this.  Thanks for the nice "ttm ghost objects" 
reminder :)


I think we can still have this check to avoid code analysis tool 
warnings, what do you think ?


Thanks,

Nirmoy

>
>>
>> Fixes: 26b15eb0 ("drm/i915/ttm: implement access_memory")
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> Suggested-by: John C Harrison <John.C.Harrison@intel.com>
>> CC: Matthew Auld <matthew.auld@intel.com>
>> CC: Andrzej Hajda <andrzej.hajda@intel.com>
>> CC: Nirmoy Das <nirmoy.das@intel.com>
>> CC: Andi Shyti <andi.shyti@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 +++++++--
>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> index d63f30efd631..b569624f2ed9 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> @@ -704,11 +704,16 @@ static int i915_ttm_access_memory(struct 
>> ttm_buffer_object *bo,
>>                     int len, int write)
>>   {
>>       struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
>> -    resource_size_t iomap = obj->mm.region->iomap.base -
>> -        obj->mm.region->region.start;
>> +    resource_size_t iomap;
>>       unsigned long page = offset >> PAGE_SHIFT;
>>       unsigned long bytes_left = len;
>>   +    if (!obj)
>> +        return -EINVAL;
>> +
>> +    iomap = obj->mm.region->iomap.base -
>> +        obj->mm.region->region.start;
>> +
>>       /*
>>        * TODO: For now just let it fail if the resource is non-mappable,
>>        * otherwise we need to perform the memcpy from the gpu here, 
>> without

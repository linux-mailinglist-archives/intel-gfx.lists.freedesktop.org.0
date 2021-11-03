Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ADF44487D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 19:44:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A695773FF0;
	Wed,  3 Nov 2021 18:44:42 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE41273DAC;
 Wed,  3 Nov 2021 18:44:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231414104"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="231414104"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:44:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="532028560"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 03 Nov 2021 11:44:29 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 11:44:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 3 Nov 2021 11:44:28 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 3 Nov 2021 11:44:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G4SIV9iSsfgKiX7N7T9t3qwvW3qREcNnjz5/G+TTKNR4BSUntLzE4//9To22gHycolNEIFLOox1iVnYPmDZAccGGIUYiEZI0HMH0Qv926WaVVCrtHVnk4bkVdHUzGsEt+N4TwPaIV3NL1wO2a1OWIE08Jb2/7Gr1GzOP5QfPE1hoXHgeyVUMnuxKt+h1vwouUFAxHwmEmMljvPNPTinl6hEdoQNMnADPGlmB30SNMGm2x39bfK8Qy3kXQBMKxAHqPwUUHRpQ/5bTWB0zdJFQBH48AfmKXPObxy72Qm8y9a4KNQLMNERubHUgvPGUtlUZBF8c3tIaUaWcwYE4VIukbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NrQDlJ0UP3V+hqnFa++bx0AnGfoVZpt/uzCAoXjoPGs=;
 b=gKX+N9Ddf1HmGjjHVFal8K4JqkOwk375bDskROouVAULwX/I1C8TXINnkYqwgs1fWdyntXLDg+mOwxKR6MKOUiWPenBjgWfhayjD1Xrnvixu+ZWc3IWoHIiI4Yiv5n2muX9JnsCQxPx8SayiezCVTgkgcHkONv66QvBVoSwtDInv2n8L9ejhZdOymzb9Vtg3XArYPRzcou3fAEmcojSCJH64fmF5Tk1rO3+PM6GrG1UUIRRp2A+T/NN8XuqA2XY5M3Afwh/SycX5Yv5xJGHkhkjSOiK36WyJK0/yDRsGzJJ3EBAju2qFtaRufNJcNAQtF6abBlCSA9k1tTdN5O2Lww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NrQDlJ0UP3V+hqnFa++bx0AnGfoVZpt/uzCAoXjoPGs=;
 b=VTMzVpGD8NUS9UlUwfz+S9VW3p+Z5PE/C79VZIOH52Akdt3NAPTV4nZqdwOzyomi2YnMPFAxVf5ITzd1h0UcLp72y+3JNHCgbrv3+IaZQhdn0sWNKtTMqsRb3GzPYF42BYKsYE5X6aWmuwNioEvBE+aOMcctnuzqjcKaBq/KLpc=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5641.namprd11.prod.outlook.com (2603:10b6:510:d6::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Wed, 3 Nov
 2021 18:44:22 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::ad26:6540:dce1:9f81]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::ad26:6540:dce1:9f81%3]) with mapi id 15.20.4649.019; Wed, 3 Nov 2021
 18:44:21 +0000
Message-ID: <45336ecd-4d94-b8eb-c9f3-889b1411c937@intel.com>
Date: Wed, 3 Nov 2021 11:44:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.1
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <IGT-Dev@Lists.FreeDesktop.Org>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-2-John.C.Harrison@Intel.com>
 <426daa00-746e-31d5-d90b-9cf161738b9d@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <426daa00-746e-31d5-d90b-9cf161738b9d@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR13CA0017.namprd13.prod.outlook.com
 (2603:10b6:300:16::27) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 MWHPR13CA0017.namprd13.prod.outlook.com (2603:10b6:300:16::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.4 via Frontend Transport; Wed, 3 Nov 2021 18:44:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7492adca-93f9-4e44-f736-08d99ef9f365
X-MS-TrafficTypeDiagnostic: PH0PR11MB5641:
X-Microsoft-Antispam-PRVS: <PH0PR11MB5641F10276A669EE9C34FB8CBD8C9@PH0PR11MB5641.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uLSCPGRe3IIuBh4Jps9Ebs8pdphUrsenLNcLGeAxp+D2qcmkqGw5SEbTGDb0fHd0KjxfGVyW/5cpXQ4yGihLrTGcRhERiN+6gro3zHnEuRc4l93mZIgz4bTY2B3IlxSYbamhYUCDpT+/d6wOkHdw/AQ7KjGm08N8vIVrHaSa2ynl9hxKiKAF/X/b8/sR6pnUkGyrvmVR4wUic/9UNbSeXt9xxkBEM4eCIAyL/2hrTDeGIxWpY0QS+Ja9WjffJI6OzJ9xXXPGSZkooZE3ltZOCRzulIaL5GPy8gkoZtPy/npKqalPPCimdpeFy4AO0VreUsAzvEX7u8V8bHyE7TDAsS+1nKiQ6QUVPQDRsk570flCaqpgDg/GHBBFM3DNchLZQuAl/uHoqOk+ShD6OtgGyt5N0FTIuiyw8pqK1l3bHiee1GxeUYnjmOHuc7iJ4pddH4USr77PopYn/neqGEGnDC1SReaypiLu5jenXXpcgo10ocz4x5gPRBXSCgv/5yC1irfI8gGRYheWqEOb7QJfJhQOdv4vL0dpweEPfFEVVmBV+1LunvYchO7wotRGeylS0yfuWERf7N1rSdBIdIG2bbOcfmAVJWVD4uHHV7rXTkreCYAoyNHFZkoBChSyD2pJD/62J7AuPKgFV0BFy42e+LJTYObiRbC56NZXGlyEGxu3NKQWYyBKm17ToVGnaUVElpGsWMVePF9VZkJZYh+IVJYrIlpS4OkWZpXtW2MP7ETfs21PMibI8+ovBoj09oIm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(16576012)(66556008)(4326008)(2616005)(316002)(2906002)(8936002)(66946007)(26005)(186003)(66476007)(956004)(8676002)(38100700002)(31686004)(508600001)(82960400001)(31696002)(6486002)(5660300002)(86362001)(83380400001)(53546011)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RU00WG9nWmdtbXFST0tiWW9yZUF6SndJMk9Bc0dJYkJwbVRPWXhpVmFmRnVG?=
 =?utf-8?B?QmFnUlJjdTNPcGE5OTFrZHBTQk1lS0Q5ZkQwbndack9ZRGpCSXp6VnhodnB3?=
 =?utf-8?B?Q0tPVDhkTVh4ZFAyYmFSNEs5alUxY1RyRVc5cmdRUmQwc3dOVlpudTZxeUJW?=
 =?utf-8?B?WWFjWDFZbytXaHdpM2RNd25oUXRTRWF3bHFsY3hUZXhreVloOEZ4elkrbEM4?=
 =?utf-8?B?bllWcmhCVjFJQXgzd0p1a3RuNHkxRVVIUkdWeG5yZndDTU9BN0d5SXh0S3VU?=
 =?utf-8?B?djVaMFNnWVkwNnZnV3BYLzZ4YWJrZGhHYnpDN1BvSGdCVWJldGZWQlBCaHZK?=
 =?utf-8?B?MmJJRmw4Q1J3Tm5OcWFTQXkwMmJ1b0dSK2p3VkhqYmxId1VjVkNKdjJuRGpG?=
 =?utf-8?B?WGVKWXJGMUdBYjkvRFllV2hZZ3BIYlRhNWVjMndBVzltMTkyVnBHRjA0VlUy?=
 =?utf-8?B?UVNkRnd5QjhOOWw5cS8xQm1uMVpVTE4vNVlwR1VQUXhmTlpyc2thL3E4amJ3?=
 =?utf-8?B?Y3JxZTExd0I5aklUWlorMWNlTTVlTTJzWWFUNk5OQUJFN3hzUHRhYjI1TmVT?=
 =?utf-8?B?aUFoMDRaU3k2TkxqbnJQMHo1bldGNWtVZ0kzRGhQZENVQ1owZUlHZERBd25F?=
 =?utf-8?B?cktPYjZYWU53UU00c1JmUkgxQU1OQTFzVlQ4MFBhdGhhOFlRSDAwYmNIYkpF?=
 =?utf-8?B?QS9nSytOK0NaRnZham4vaHgyblFMRXVxU01ENUhQYkJORlZFSXdJSGR3UjJi?=
 =?utf-8?B?TnN5RW1rTDJ2OWdEMXZtcGs4bUtZUUYxN1lFR3N6dUpxS0YwZzdjdlYrd1p5?=
 =?utf-8?B?dGtIbTgvU04rc0JDUHJMOEtTMHlESEtuQmRkVHZ0MjZRVHNTbloxWTE3WTZC?=
 =?utf-8?B?WlM2RG9ucjlKZnN1YjBwM3FIQzJ4V2haZXhSdVhpUkFzdHRHV2RGcDVlcXp0?=
 =?utf-8?B?YXo0dmMzdFArd0Z3aWt1TTFCSkFQUDIxTnRyRUxydXVkdTlyeTdIMCtDaG9K?=
 =?utf-8?B?Y2V2UDJhNStLYW9VVTlnc3NMc1F6QnpKWFMxYklSSFN2cy9mam1CSXhSMTF6?=
 =?utf-8?B?WmZrc2hQdlZNLzJNazBrSk0xMXJCTjdmUzNPQktVTEdqN1ppby9DdVJsM1BY?=
 =?utf-8?B?ck9pR1hrd0NMZXNQRGs1WHU3U2c3RE9FT2s2N0JJRnI0YW9OS3dXbXhvd2NK?=
 =?utf-8?B?ZzR2WlMwQ3NHUDI1SkhhbTNvdmV3USt4bEVhdkNKZ3VFQlVidHBZWFdkSVM2?=
 =?utf-8?B?SUpTRHZPdVJiSVE1RFFuK3VtR2lxUjVWMmV6SnRqUS9KOUdQUEJLdG0rQ29v?=
 =?utf-8?B?S2pFNUpaRUw5cHhlVHVMYzB3d092WVZ6Wnp3ZlZDMzR1MERwYlBSWlBmQTBK?=
 =?utf-8?B?MzMwamxVNDA2VEhDRUhaajRsSTdLeW1VU3ZjV1VvUlJqenI1K0p4NmR6UVV3?=
 =?utf-8?B?cjc2RnRibkZQc1czVjJjZzhFWDhRYkltVi9kb0JWbW9wdmdjVjdQNW1zbEZC?=
 =?utf-8?B?L2xETVY5RC9XQk1sbXBOeWJZM1QrOHhkalR3R3lJaCtNbzB3WnNlTXlPSGlX?=
 =?utf-8?B?QnJ0ekZ1WkFVOE1XTVhqUjZ0dlFHYVpsWUpZUU9pSUdHa0laYytETHBHUzlw?=
 =?utf-8?B?QkhXcXEvU3NlSi8ybkk3YXExOUo2U3lhSWJqYkNOcm93M1RiMUhwc1BkZml0?=
 =?utf-8?B?QzY5YUl4SEtQNkIzY0NjWlZyS0YreGc3aEhsS0d4bWNXWEh5OHpIQU4zZkpH?=
 =?utf-8?B?QTlrNE9DcFN3cm92b2hWOTBOWm04OXYyc2drb0pXTnpkaEpJUGpMaGdhc25F?=
 =?utf-8?B?bnNJQUtiSUdtMk1qVkh5cXI3OVdDZCtvMTVXOHJKSUREYVF1WmNFNjVOWktm?=
 =?utf-8?B?bjR0eXRHYTNReVlMNnhFWEhJYlVWTnowUTR6aXlRRjM1SnB4SjcrQUFaa0lj?=
 =?utf-8?B?UHpPMDVQV0piNE80M1VOSk9nSWJPdzBJZ3g4MTNtQTM4WHZQVDRCTElHK29I?=
 =?utf-8?B?NnpPeS94d21INjM4TG1QWTVPOHdDZDlZU0V6SG5aS1QzUzdSTStISTd3Ukho?=
 =?utf-8?B?bzhhTUhwMllRL1lLS1JCbjBvV0tMeWZHWkN4Q3FhYzFaK2JGNmN5YWdpdXJY?=
 =?utf-8?B?aG1acXQ2a3FGbDBPQ0dHZ2pTUDBTcXo1eVpaYVRid1N2WFN4c1NuZG9lck44?=
 =?utf-8?B?aTcyWDF0Y2FGN3pWcjdUNUw5Q2lCVTR6dWY0WWJDRWp1YWVIQ2FXbzJJS1NM?=
 =?utf-8?Q?KYw9L5z3/cAocA2dcm8eiuJyx5yHASRleeNNbLJDsQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7492adca-93f9-4e44-f736-08d99ef9f365
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2021 18:44:21.9148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: epH391eAWCYBrC38lBXMO49FU9x0VLBUeWxQqzAynqP15zZHB9WCt6D34WOSVlomxHThlxAO8zmjFnW0CvgLehTDQi5jmOle4AKL6WsjAzA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5641
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/8] tests/i915/gem_exec_capture:
 Remove pointless assert
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/3/2021 06:50, Tvrtko Ursulin wrote:
> On 22/10/2021 00:40, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> The 'many' test ended with an 'assert(count)', presumably meaning to
>> ensure that some objects were actually captured. However, 'count' is
>> the number of objects created not how many were captured. Plus, there
>> is already a 'require(count > 1)' at the start and count is invarient
>> so the final assert is basically pointless.
>>
>> General concensus appears to be that the test should not fail
>> irrespective of how many blobs are captured as low memory situations
>> could cause the capture to be abbreviated. So just remove the
>> pointless assert completely.
>
> Hm the test appears to be using intel_get_avail_ram_mb() to size the 
> working set. Suggesting problems with low memory situations should not 
> apply unless bugs. In which case would a better fix be improving the 
> sizing logic and changing the assert to igt_assert(blobs)?
After fixing the sysfs read code to cope with large files, I don't ever 
see abbreviated captures any more. However, other reviewers objected to 
asserting anything at all about the final count (whether full size, zero 
or whatever) on the grounds that low memory issues *might* still occur. 
And some in quite blunt language as I recall. If you think different, 
feel free to start your own patch set.

John.

>
> Regards,
>
> Tvrtko
>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/gem_exec_capture.c | 1 -
>>   1 file changed, 1 deletion(-)
>>
>> diff --git a/tests/i915/gem_exec_capture.c 
>> b/tests/i915/gem_exec_capture.c
>> index 7e0a8b8ad..53649cdb2 100644
>> --- a/tests/i915/gem_exec_capture.c
>> +++ b/tests/i915/gem_exec_capture.c
>> @@ -524,7 +524,6 @@ static void many(int fd, int dir, uint64_t size, 
>> unsigned int flags)
>>       }
>>       igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
>>            blobs, size >> 12, count);
>> -    igt_assert(count);
>>         free(error);
>>       free(offsets);
>>


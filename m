Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D55D93DA755
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 17:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7FB56EDBE;
	Thu, 29 Jul 2021 15:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7066EDBC;
 Thu, 29 Jul 2021 15:17:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="211022743"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="211022743"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 08:17:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="476433137"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2021 08:17:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 08:17:49 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 08:17:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 29 Jul 2021 08:17:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 29 Jul 2021 08:17:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nvnUIjLrOREP/ZdJljSVFUpVAM65mhlxBrpYKF+40jEK1hj6nhSwacCkg9XTAKEROaFU58Gxx+ojjJTOxecvPXI7qKvcQN1ipFK9+CP0PCqsKYf3gorTnXILTUSL/zeCqLRIUDBWvK/JJaMNfvuWlEq9mcw0C10iD/tvQBP1/T8Kj81DQWoumZwAEotErip4Vhqo89Rely+ZI5QufXEwqztAl0ml/xOaUEWyQCHjqTqH8qILH79xoOcb3YR53iD4hP2D4om+b2F54P8J8CWVceGq0ulthXlxXkgBO6nT8hKa/XETms/ikhHUfjqKuQhwZ2LVOo4wJ54GY861WSte0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vyiytPS/vi4YG3cL85ROawmLoXbMXdJj9+GjI8aAxnE=;
 b=DgI95sPee5c2yRFTdpDRbvB2nNf0pvvB6GAcXqYKUxi9sBdrUP9sXRhSU6MrJXI2gJOUKwsAYBw7XwbvuGRKO0ImxKMTBTaA3vGo6oU3M1TNa71tK8xZGHPp7G1+lzCiJsm0dd5o36QC0bEp4XCnmHEIw9MTjLau8QlViRplRle2dIN/IqNnAe7YNjRlWgIMe7ZVbkV0o5hGKNDqZBr6WMM/JmHRPkFid13aYZOEKkVRMWflyUNjlUcu0UV85/3LwrybY1B8ejdggmf6Kkj02tz9iIPD5XU3mJVkvk1fTSC69wQ0wdj8PcULEITGFVnmLXVwUPMhtb5ugWAUpJnQFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vyiytPS/vi4YG3cL85ROawmLoXbMXdJj9+GjI8aAxnE=;
 b=G+ptbXaWycWwuRp94jxmWpNTkY+HA7q9AfTyZ7wYEYorUXWhaSnDs9Wix1hjbm2BBdba/toZ5DYIe76D0xb14uWlI9sQitmbmI19w8j2t8ZTfhg0MkeaMNoHC2x3vjQhFj6Edgv2DLgXqZqugaukd8PdmRe/gL16XocYtAKGmto=
Authentication-Results: jlekstrand.net; dkim=none (message not signed)
 header.d=none;jlekstrand.net; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM5PR1101MB2154.namprd11.prod.outlook.com (2603:10b6:4:4e::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.22; Thu, 29 Jul 2021 15:17:46 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4017:e7ce:ef66:48d7]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4017:e7ce:ef66:48d7%9]) with mapi id 15.20.4373.020; Thu, 29 Jul 2021
 15:17:46 +0000
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <jason.ekstrand@intel.com>,
 "Vetter, Daniel" <daniel.vetter@intel.com>
References: <20210729020106.18346-1-daniele.ceraolospurio@intel.com>
 <20210729020106.18346-11-daniele.ceraolospurio@intel.com>
 <YQKMoX8JUrRfVKn8@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <bd68a6a2-5008-d970-a981-2d3a623dbb47@intel.com>
Date: Thu, 29 Jul 2021 08:17:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <YQKMoX8JUrRfVKn8@intel.com>
Content-Language: en-US
X-ClientProxiedBy: SJ0PR13CA0015.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::20) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.65] (99.72.232.53) by
 SJ0PR13CA0015.namprd13.prod.outlook.com (2603:10b6:a03:2c0::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.10 via Frontend
 Transport; Thu, 29 Jul 2021 15:17:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3bb8db1-73ab-4890-b287-08d952a4053a
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2154:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR1101MB215456CDA785525ACA27A237F4EB9@DM5PR1101MB2154.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yAqf4z8+StNIXpyrDqlC48rFMh3lkHYAe4Zg7WCE3RBoFsun9+BB7W6MAtACeP9BU4Ode8TOTih4HPN5HqQkvZexuHCmW0psDBFQhdXJ34i0FdYjzvJ+BrfkZiP3+QdXTy8dhWGunaQvgKaqU9qP5qjtR6WwNGOHvJ6dwIn6Oak1976WU3jS5wuxVDjcYwTJSB1cWPqPHEndRqZFL2FsULTDY/rR8pkyb0dsxkYw5jqbRq/hkV+yVirwQFGsjdU3ASRJZsV/e49frQNH4pkOekvcemYPAIIrt9yCTFm2qpLDXRUM2+3wyd+0tv18CNOkltwNsjrXxYvKPgnA9koSkSkGqh1OSD06gB1F4d5a8mchP6j15+SDk7VuSJ9Mg+vAOEZRtzvaaxo8NWyzPsKJLkkDfFi6tTSckMbzbVGC6OL/wF4lmCPIgJwEmjL+DEyFp1CK9mOLQgsfMoC/y0262S1RDzsgVKy7PdMHle5NuKqnHr5whl7yM3eBIkNSCAzlTbzz35VL0UA4zRrwAh9jiAO89/16mE4Io+YVy4pwycUEjNEJ/UEimAnlhXNCIbYynkK/XvE7c7mjd7kHHPtdmVfTLxsZ9x30K7zAIQC8LGTABjtYLg6AvSSxiBlkljwPmhzkO2+EzAjygdLTz9WDH9UtLSSrNFV/igFLC0O4/76AQYehamcEiuK8tRgQhRh9E4BtcJDqJKQvkS89HhCj9ylvPQHGN20gLq3IPmucvaw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(376002)(39860400002)(396003)(366004)(186003)(8936002)(26005)(54906003)(316002)(110136005)(36756003)(86362001)(31696002)(38100700002)(31686004)(6636002)(30864003)(4326008)(66556008)(8676002)(66946007)(956004)(66476007)(478600001)(83380400001)(5660300002)(2616005)(6486002)(53546011)(2906002)(16576012)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VW4ybVU1K3hGOWtUa05MUlBqZVRTNExzSkhxaFZsSHVqbkNHY0VYM0UydGU5?=
 =?utf-8?B?VmhtWVk3VHp6WWk2N0xRbnVhTVYvWjBnRmt5OVhPRU01dVZ6b0c3UkJyUGNn?=
 =?utf-8?B?SGNRb3h2WlgvWEE2SmZUN2JvL3V6eWo5d1IxdWkxeTNpMUNWVWlraEpQZ29H?=
 =?utf-8?B?VFRSYmJiYnlUeU03UXc0dkF1Y2VFcWkvbmZSbzFSRlRkT0llcm1VL2VtWTFY?=
 =?utf-8?B?UlJEY25iK0o1M2dXL01sQ3dKcEZxNVJYSi9zQWZReml1QVpDK2w3OFhBN3dU?=
 =?utf-8?B?dk1vVEo0aWIxWUQzbm9WYnZaRi9SV3Fja1pwVE40Skl3VVhOYWtrKy9va1hW?=
 =?utf-8?B?QjhZMWI5TG5nQnpaejkzZWJJbUE0YzEwUGZlZEJMOFNsUUplVXJwUVFEV3Jp?=
 =?utf-8?B?NFMrd2NYTzhiTGNZNE45RStyMVI2Tm42ODFyR1RMSEZNUWEvclo3SEN1RGhB?=
 =?utf-8?B?cmZ5RzQ5cUM1UUJLSnNnM3Z5YjhuVmthcHFnNkZtc2c3QTBKWnhFUTVwbHRO?=
 =?utf-8?B?VmJxL01GZUZFV3NpaWt6dWxyaG9mMWZ0M1kyYjVDaHRaWUNqT1QwSTVlTzJJ?=
 =?utf-8?B?ZVQ5SUs0YjdEM1ZzdStPTk1QblJZZDFEaytUWEdKY2FrQm4xWklSMTBUZjJo?=
 =?utf-8?B?cExMRnhuSTJjamxBM1M1OHIyVnBXRG9NYmE2NGVOM0hPeDRvTUpGNFdydFhn?=
 =?utf-8?B?em9zenV1MDUxVlhnSjNRYjBVRjErWWFtcHhMNG92bjI0R25CMjhteWJhblk0?=
 =?utf-8?B?SFdMcW9jZEtUUUw2QTFncU4yWCtWZjlCWE5vSUM3clRZV1pSbDY0RVZRbTJ2?=
 =?utf-8?B?djMvaWI0R0tFNWdId3FOdDFBQTlSa0dzZU1CUjJ6VlNHZ2k3c1BMZUxjQStL?=
 =?utf-8?B?ZFJJdW90cURaQTRZV05GNVF4enVJZmpUdWpobXY5Mk1SYzFPRzFOem1ranlh?=
 =?utf-8?B?Z29BUzNMQkNPOTEvMlpVY01DQTVzVjZ2bjByaWVSd2NaOHBVamdmdTBOUmkr?=
 =?utf-8?B?RmJvdzlRbjJHczZ2amtFSGkzWnRmMjNmaDV6ZjlPWm9nMVcxR2ZnSGFVU2pF?=
 =?utf-8?B?QzN4WWRsWVl3bG5KNnp4V3dzQ0h5ZTM0UVlMTDRRdDdMOUVmeUZKZHBuK2xF?=
 =?utf-8?B?R2xpMHNpdnVuRzJNSGpLeUgzaVFBdlp0cXlLQUExSjNIeGwreDhUTHN6ZGRa?=
 =?utf-8?B?OEZYQndVbzF4OWRUd0Z3aGk2QTNqM1ZXY05NcFMrcUl5UDFSU29pckVidEF0?=
 =?utf-8?B?NmxmMUNpS2phc3dTRzdhTkU5aW1ORXdrY0g4QlhiN2Zla2dQVzY0V1lJdHhC?=
 =?utf-8?B?aWRqUThsaFZxRFpmK2NPRFk5Uk5PdEh5TmtqelJKa24vQjNNSER4UGwzVE1M?=
 =?utf-8?B?VUVaYk9xUTJoMzAxSFhKamtCSkNpS3hoclNPVmpZYzN5cmZFVkxoMFpJejRQ?=
 =?utf-8?B?MHB0eDlmUkFncG9JbGV5SmxFZEZLWXM2Y2RhVzBoZDFmTzdzaGREYXIyUVNP?=
 =?utf-8?B?Q2RSbVZNZjQvVWpmMEdsemdJSi9wcjdKeWNTRDBrVnNET1EwKy9vS1pMbzlC?=
 =?utf-8?B?WGZKeTMyc1BTOEVvTURUcjUzTjJuajRZd3ZwWXRhdC9hZHZ2Y01xWFovbmtT?=
 =?utf-8?B?TGRjODNVdktvR0d4K1pxNHZoV2xuSjgxWXBFNUhscHFMa3ZxUHJRREtrRFJv?=
 =?utf-8?B?QUFVWjlvME00cVQwYVRVLzMraHB6Y2hTZCsyUXFtdENUZTM5WHQ5NXZxQ2c2?=
 =?utf-8?Q?yigNE2C/JWzNDx0J7NW6DcfKoPNW4KTsN5IxHTc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3bb8db1-73ab-4890-b287-08d952a4053a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 15:17:46.7125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8Kcd8dpt09Ib7BEjkg8VUxE+ZMr5gia9jeW46Y6GyJflom1vZ+9zWO8cW2hfSjvZeWb3hSj2yCXHJOpPjv5CVdaI/OxW0z9vulRZP/+fclY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2154
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 10/15] drm/i915/pxp: interfaces for using
 protected objects
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel@lists.freedesktop.org, Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 7/29/2021 4:10 AM, Rodrigo Vivi wrote:
> On Wed, Jul 28, 2021 at 07:01:01PM -0700, Daniele Ceraolo Spurio wrote:
>> This api allow user mode to create protected buffers and to mark
>> contexts as making use of such objects. Only when using contexts
>> marked in such a way is the execution guaranteed to work as expected.
>>
>> Contexts can only be marked as using protected content at creation time
>> (i.e. the parameter is immutable) and they must be both bannable and not
>> recoverable.
>>
>> All protected objects and contexts that have backing storage will be
>> considered invalid when the PXP session is destroyed and all new
>> submissions using them will be rejected. All intel contexts within the
>> invalidated gem contexts will be marked banned. A new flag has been
>> added to the RESET_STATS ioctl to report the context invalidation to
>> userspace.
>>
>> This patch was previously sent as 2 separate patches, which have been
>> squashed following a request to have all the uapi in a single patch.
>> I've retained the s-o-b from both.
>>
>> v5: squash patches, rebase on proto_ctx, update kerneldoc
>>
>> v6: rebase on obj create_ext changes
> The "rebase" word led me to think it was a small change caused
> only by rebasing conflicts, but then I spotted something on
> i915_gem_create.c that I didn't remember seeing before.

Apologies for not being clear.

>
> Since it took me a while to understand what was going on, let me
> try to summarize to see if I got it right and to check
> with others (Jason in special)
> if we are aligned with the recent directions:
>
> With the removal of the vanilla_object from the create_ext,
> the addition of the flags was needed.

yes.

>
> Then, instead of adding a new user_flags it adds the I915_BO_PROTECTED
> to the existent flags (what is cleaner) but then it does
>
> /* Add any flag set by create_ext options */
> flags |= ext_flags;
>
> on the new user_create_ext.
>
> What shouldn't be a problem because the ext_flags is really only
> the I915_BO_PROTECTED set by our new extension and immutable.
>
> But I'm just trying to see if we are not opening any holes to accept
> some undesired flags.
>
> Apparently not.

ext_flags are not set directly by the user, but by the create_ext 
extension functions, based on the extensions the user has provided. This 
should allow the kernel to perform any required checks in the extension 
functions before setting the flag (like it happens in this case for the 
PXP option).

>
> Am I getting things right? Anything else we should check in here?

yup, got it right.

Daniele

>
> Thanks,
> Rodrigo.
>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Cc: Jason Ekstrand <jason@jlekstrand.net>
>> Cc: Daniel Vetter <daniel.vetter@intel.com>
>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> #v5
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 68 ++++++++++++--
>>   drivers/gpu/drm/i915/gem/i915_gem_context.h   | 18 ++++
>>   .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 +
>>   drivers/gpu/drm/i915/gem/i915_gem_create.c    | 75 ++++++++++++----
>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 40 ++++++++-
>>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |  6 ++
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h    | 12 +++
>>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  9 ++
>>   drivers/gpu/drm/i915/pxp/intel_pxp.c          | 89 +++++++++++++++++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp.h          | 15 ++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  3 +
>>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  5 ++
>>   include/uapi/drm/i915_drm.h                   | 55 +++++++++++-
>>   13 files changed, 371 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index cff72679ad7c..0cd3e2d06188 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -77,6 +77,8 @@
>>   #include "gt/intel_gpu_commands.h"
>>   #include "gt/intel_ring.h"
>>   
>> +#include "pxp/intel_pxp.h"
>> +
>>   #include "i915_gem_context.h"
>>   #include "i915_trace.h"
>>   #include "i915_user_extensions.h"
>> @@ -241,6 +243,25 @@ static int proto_context_set_persistence(struct drm_i915_private *i915,
>>   	return 0;
>>   }
>>   
>> +static int proto_context_set_protected(struct drm_i915_private *i915,
>> +				       struct i915_gem_proto_context *pc,
>> +				       bool protected)
>> +{
>> +	int ret = 0;
>> +
>> +	if (!intel_pxp_is_enabled(&i915->gt.pxp))
>> +		ret = -ENODEV;
>> +	else if (!protected)
>> +		pc->user_flags &= ~BIT(UCONTEXT_PROTECTED);
>> +	else if ((pc->user_flags & BIT(UCONTEXT_RECOVERABLE)) ||
>> +		 !(pc->user_flags & BIT(UCONTEXT_BANNABLE)))
>> +		ret = -EPERM;
>> +	else
>> +		pc->user_flags |= BIT(UCONTEXT_PROTECTED);
>> +
>> +	return ret;
>> +}
>> +
>>   static struct i915_gem_proto_context *
>>   proto_context_create(struct drm_i915_private *i915, unsigned int flags)
>>   {
>> @@ -686,6 +707,8 @@ static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
>>   			ret = -EPERM;
>>   		else if (args->value)
>>   			pc->user_flags |= BIT(UCONTEXT_BANNABLE);
>> +		else if (pc->user_flags & BIT(UCONTEXT_PROTECTED))
>> +			ret = -EPERM;
>>   		else
>>   			pc->user_flags &= ~BIT(UCONTEXT_BANNABLE);
>>   		break;
>> @@ -693,10 +716,12 @@ static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
>>   	case I915_CONTEXT_PARAM_RECOVERABLE:
>>   		if (args->size)
>>   			ret = -EINVAL;
>> -		else if (args->value)
>> -			pc->user_flags |= BIT(UCONTEXT_RECOVERABLE);
>> -		else
>> +		else if (!args->value)
>>   			pc->user_flags &= ~BIT(UCONTEXT_RECOVERABLE);
>> +		else if (pc->user_flags & BIT(UCONTEXT_PROTECTED))
>> +			ret = -EPERM;
>> +		else
>> +			pc->user_flags |= BIT(UCONTEXT_RECOVERABLE);
>>   		break;
>>   
>>   	case I915_CONTEXT_PARAM_PRIORITY:
>> @@ -724,6 +749,11 @@ static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
>>   						    args->value);
>>   		break;
>>   
>> +	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>> +		ret = proto_context_set_protected(fpriv->dev_priv, pc,
>> +						  args->value);
>> +		break;
>> +
>>   	case I915_CONTEXT_PARAM_NO_ZEROMAP:
>>   	case I915_CONTEXT_PARAM_BAN_PERIOD:
>>   	case I915_CONTEXT_PARAM_RINGSIZE:
>> @@ -1798,6 +1828,18 @@ static int set_priority(struct i915_gem_context *ctx,
>>   	return 0;
>>   }
>>   
>> +static int get_protected(struct i915_gem_context *ctx,
>> +			 struct drm_i915_gem_context_param *args)
>> +{
>> +	if (!intel_pxp_is_enabled(&ctx->i915->gt.pxp))
>> +		return -ENODEV;
>> +
>> +	args->size = 0;
>> +	args->value = i915_gem_context_uses_protected_content(ctx);
>> +
>> +	return 0;
>> +}
>> +
>>   static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>   			struct i915_gem_context *ctx,
>>   			struct drm_i915_gem_context_param *args)
>> @@ -1821,6 +1863,8 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>   			ret = -EPERM;
>>   		else if (args->value)
>>   			i915_gem_context_set_bannable(ctx);
>> +		else if (i915_gem_context_uses_protected_content(ctx))
>> +			ret = -EPERM; /* can't clear this for protected contexts */
>>   		else
>>   			i915_gem_context_clear_bannable(ctx);
>>   		break;
>> @@ -1828,10 +1872,12 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>   	case I915_CONTEXT_PARAM_RECOVERABLE:
>>   		if (args->size)
>>   			ret = -EINVAL;
>> -		else if (args->value)
>> -			i915_gem_context_set_recoverable(ctx);
>> -		else
>> +		else if (!args->value)
>>   			i915_gem_context_clear_recoverable(ctx);
>> +		else if (i915_gem_context_uses_protected_content(ctx))
>> +			ret = -EPERM; /* can't set this for protected contexts */
>> +		else
>> +			i915_gem_context_set_recoverable(ctx);
>>   		break;
>>   
>>   	case I915_CONTEXT_PARAM_PRIORITY:
>> @@ -1846,6 +1892,7 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>   		ret = set_persistence(ctx, args);
>>   		break;
>>   
>> +	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>>   	case I915_CONTEXT_PARAM_NO_ZEROMAP:
>>   	case I915_CONTEXT_PARAM_BAN_PERIOD:
>>   	case I915_CONTEXT_PARAM_RINGSIZE:
>> @@ -2174,6 +2221,10 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
>>   		args->value = i915_gem_context_is_persistent(ctx);
>>   		break;
>>   
>> +	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>> +		ret = get_protected(ctx, args);
>> +		break;
>> +
>>   	case I915_CONTEXT_PARAM_NO_ZEROMAP:
>>   	case I915_CONTEXT_PARAM_BAN_PERIOD:
>>   	case I915_CONTEXT_PARAM_ENGINES:
>> @@ -2250,6 +2301,11 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
>>   	args->batch_active = atomic_read(&ctx->guilty_count);
>>   	args->batch_pending = atomic_read(&ctx->active_count);
>>   
>> +	/* re-use args->flags for output flags */
>> +	args->flags = 0;
>> +	if (i915_gem_context_invalidated(ctx))
>> +		args->flags |= I915_CONTEXT_INVALIDATED;
>> +
>>   	i915_gem_context_put(ctx);
>>   	return 0;
>>   }
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
>> index 18060536b0c2..d932a70122fa 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
>> @@ -108,6 +108,24 @@ i915_gem_context_clear_user_engines(struct i915_gem_context *ctx)
>>   	clear_bit(CONTEXT_USER_ENGINES, &ctx->flags);
>>   }
>>   
>> +static inline bool
>> +i915_gem_context_invalidated(const struct i915_gem_context *ctx)
>> +{
>> +	return test_bit(CONTEXT_INVALID, &ctx->flags);
>> +}
>> +
>> +static inline void
>> +i915_gem_context_set_invalid(struct i915_gem_context *ctx)
>> +{
>> +	set_bit(CONTEXT_INVALID, &ctx->flags);
>> +}
>> +
>> +static inline bool
>> +i915_gem_context_uses_protected_content(const struct i915_gem_context *ctx)
>> +{
>> +	return test_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
>> +}
>> +
>>   /* i915_gem_context.c */
>>   void i915_gem_init__contexts(struct drm_i915_private *i915);
>>   
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>> index 94c03a97cb77..1aa2290aa3c7 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>> @@ -301,6 +301,7 @@ struct i915_gem_context {
>>   #define UCONTEXT_BANNABLE		2
>>   #define UCONTEXT_RECOVERABLE		3
>>   #define UCONTEXT_PERSISTENCE		4
>> +#define UCONTEXT_PROTECTED		5
>>   
>>   	/**
>>   	 * @flags: small set of booleans
>> @@ -308,6 +309,7 @@ struct i915_gem_context {
>>   	unsigned long flags;
>>   #define CONTEXT_CLOSED			0
>>   #define CONTEXT_USER_ENGINES		1
>> +#define CONTEXT_INVALID			2
>>   
>>   	/** @mutex: guards everything that isn't engines or handles_vma */
>>   	struct mutex mutex;
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> index 23fee13a3384..0e48629316bb 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> @@ -6,6 +6,7 @@
>>   #include "gem/i915_gem_ioctls.h"
>>   #include "gem/i915_gem_lmem.h"
>>   #include "gem/i915_gem_region.h"
>> +#include "pxp/intel_pxp.h"
>>   
>>   #include "i915_drv.h"
>>   #include "i915_trace.h"
>> @@ -82,21 +83,11 @@ static int i915_gem_publish(struct drm_i915_gem_object *obj,
>>   	return 0;
>>   }
>>   
>> -/**
>> - * Creates a new object using the same path as DRM_I915_GEM_CREATE_EXT
>> - * @i915: i915 private
>> - * @size: size of the buffer, in bytes
>> - * @placements: possible placement regions, in priority order
>> - * @n_placements: number of possible placement regions
>> - *
>> - * This function is exposed primarily for selftests and does very little
>> - * error checking.  It is assumed that the set of placement regions has
>> - * already been verified to be valid.
>> - */
>> -struct drm_i915_gem_object *
>> -__i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
>> -			      struct intel_memory_region **placements,
>> -			      unsigned int n_placements)
>> +static struct drm_i915_gem_object *
>> +__i915_gem_object_create_user_ext(struct drm_i915_private *i915, u64 size,
>> +				  struct intel_memory_region **placements,
>> +				  unsigned int n_placements,
>> +				  unsigned int ext_flags)
>>   {
>>   	struct intel_memory_region *mr = placements[0];
>>   	struct drm_i915_gem_object *obj;
>> @@ -135,6 +126,12 @@ __i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
>>   
>>   	GEM_BUG_ON(size != obj->base.size);
>>   
>> +	/* Add any flag set by create_ext options */
>> +	flags |= ext_flags;
>> +
>> +	if (i915_gem_object_is_protected(obj))
>> +		intel_pxp_object_add(obj);
>> +
>>   	trace_i915_gem_object_create(obj);
>>   	return obj;
>>   
>> @@ -145,6 +142,26 @@ __i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
>>   	return ERR_PTR(ret);
>>   }
>>   
>> +/**
>> + * Creates a new object using the same path as DRM_I915_GEM_CREATE_EXT
>> + * @i915: i915 private
>> + * @size: size of the buffer, in bytes
>> + * @placements: possible placement regions, in priority order
>> + * @n_placements: number of possible placement regions
>> + *
>> + * This function is exposed primarily for selftests and does very little
>> + * error checking.  It is assumed that the set of placement regions has
>> + * already been verified to be valid.
>> + */
>> +struct drm_i915_gem_object *
>> +__i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
>> +			      struct intel_memory_region **placements,
>> +			      unsigned int n_placements)
>> +{
>> +	return __i915_gem_object_create_user_ext(i915, size, placements,
>> +						 n_placements, 0);
>> +}
>> +
>>   int
>>   i915_gem_dumb_create(struct drm_file *file,
>>   		     struct drm_device *dev,
>> @@ -224,6 +241,7 @@ struct create_ext {
>>   	struct drm_i915_private *i915;
>>   	struct intel_memory_region *placements[INTEL_REGION_UNKNOWN];
>>   	unsigned int n_placements;
>> +	unsigned long flags;
>>   };
>>   
>>   static void repr_placements(char *buf, size_t size,
>> @@ -356,8 +374,28 @@ static int ext_set_placements(struct i915_user_extension __user *base,
>>   	return set_placements(&ext, data);
>>   }
>>   
>> +static int ext_set_protected(struct i915_user_extension __user *base, void *data)
>> +{
>> +	struct drm_i915_gem_create_ext_protected_content ext;
>> +	struct create_ext *ext_data = data;
>> +
>> +	if (copy_from_user(&ext, base, sizeof(ext)))
>> +		return -EFAULT;
>> +
>> +	if (ext.flags)
>> +		return -EINVAL;
>> +
>> +	if (!intel_pxp_is_enabled(&ext_data->i915->gt.pxp))
>> +		return -ENODEV;
>> +
>> +	ext_data->flags |= I915_BO_PROTECTED;
>> +
>> +	return 0;
>> +}
>> +
>>   static const i915_user_extension_fn create_extensions[] = {
>>   	[I915_GEM_CREATE_EXT_MEMORY_REGIONS] = ext_set_placements,
>> +	[I915_GEM_CREATE_EXT_PROTECTED_CONTENT] = ext_set_protected,
>>   };
>>   
>>   /**
>> @@ -392,9 +430,10 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
>>   		ext_data.n_placements = 1;
>>   	}
>>   
>> -	obj = __i915_gem_object_create_user(i915, args->size,
>> -					    ext_data.placements,
>> -					    ext_data.n_placements);
>> +	obj = __i915_gem_object_create_user_ext(i915, args->size,
>> +						ext_data.placements,
>> +						ext_data.n_placements,
>> +						ext_data.flags);
>>   	if (IS_ERR(obj))
>>   		return PTR_ERR(obj);
>>   
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index 1ed7475de454..04f33d163340 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -21,6 +21,8 @@
>>   #include "gt/intel_gt_pm.h"
>>   #include "gt/intel_ring.h"
>>   
>> +#include "pxp/intel_pxp.h"
>> +
>>   #include "i915_drv.h"
>>   #include "i915_gem_clflush.h"
>>   #include "i915_gem_context.h"
>> @@ -751,6 +753,11 @@ static int eb_select_context(struct i915_execbuffer *eb)
>>   	if (unlikely(IS_ERR(ctx)))
>>   		return PTR_ERR(ctx);
>>   
>> +	if (i915_gem_context_invalidated(ctx)) {
>> +		i915_gem_context_put(ctx);
>> +		return -EACCES;
>> +	}
>> +
>>   	eb->gem_context = ctx;
>>   	if (rcu_access_pointer(ctx->vm))
>>   		eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;
>> @@ -819,7 +826,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>>   	do {
>>   		struct drm_i915_gem_object *obj;
>>   		struct i915_vma *vma;
>> -		int err;
>> +		int err = 0;
>>   
>>   		rcu_read_lock();
>>   		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
>> @@ -833,6 +840,26 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>>   		if (unlikely(!obj))
>>   			return ERR_PTR(-ENOENT);
>>   
>> +		/*
>> +		 * If the user has opted-in for protected-object tracking, make
>> +		 * sure the object encryption can be used.
>> +		 * We only need to do this when the object is first used with
>> +		 * this context, because the context itself will be banned when
>> +		 * the protected objects become invalid.
>> +		 */
>> +		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
>> +		    i915_gem_object_is_protected(obj)) {
>> +			if (!intel_pxp_is_active(&vm->gt->pxp))
>> +				err = -ENODEV;
>> +			else if (!i915_gem_object_has_valid_protection(obj))
>> +				err = -ENOEXEC;
>> +
>> +			if (err) {
>> +				i915_gem_object_put(obj);
>> +				return ERR_PTR(err);
>> +			}
>> +		}
>> +
>>   		vma = i915_vma_instance(obj, vm, NULL);
>>   		if (IS_ERR(vma)) {
>>   			i915_gem_object_put(obj);
>> @@ -2752,6 +2779,17 @@ eb_select_engine(struct i915_execbuffer *eb)
>>   
>>   	intel_gt_pm_get(ce->engine->gt);
>>   
>> +	if (i915_gem_context_uses_protected_content(eb->gem_context)) {
>> +		err = intel_pxp_wait_for_arb_start(&ce->engine->gt->pxp);
>> +		if (err)
>> +			goto err;
>> +
>> +		if (i915_gem_context_invalidated(eb->gem_context)) {
>> +			err = -EACCES;
>> +			goto err;
>> +		}
>> +	}
>> +
>>   	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
>>   		err = intel_context_alloc_state(ce);
>>   		if (err)
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> index 6fb9afb65034..658a42a7fa07 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> @@ -25,6 +25,7 @@
>>   #include <linux/sched/mm.h>
>>   
>>   #include "display/intel_frontbuffer.h"
>> +#include "pxp/intel_pxp.h"
>>   #include "i915_drv.h"
>>   #include "i915_gem_clflush.h"
>>   #include "i915_gem_context.h"
>> @@ -73,6 +74,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
>>   	INIT_LIST_HEAD(&obj->lut_list);
>>   	spin_lock_init(&obj->lut_lock);
>>   
>> +	INIT_LIST_HEAD(&obj->pxp_link);
>> +
>>   	spin_lock_init(&obj->mmo.lock);
>>   	obj->mmo.offsets = RB_ROOT;
>>   
>> @@ -231,6 +234,9 @@ void __i915_gem_free_object(struct drm_i915_gem_object *obj)
>>   		spin_unlock(&obj->vma.lock);
>>   	}
>>   
>> +	if (i915_gem_object_has_valid_protection(obj))
>> +		intel_pxp_object_remove(obj);
>> +
>>   	__i915_gem_object_free_mmaps(obj);
>>   
>>   	GEM_BUG_ON(!list_empty(&obj->lut_list));
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> index 48112b9d76df..137ae2723514 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -269,6 +269,18 @@ i915_gem_object_clear_tiling_quirk(struct drm_i915_gem_object *obj)
>>   	clear_bit(I915_TILING_QUIRK_BIT, &obj->flags);
>>   }
>>   
>> +static inline bool
>> +i915_gem_object_is_protected(const struct drm_i915_gem_object *obj)
>> +{
>> +	return obj->flags & I915_BO_PROTECTED;
>> +}
>> +
>> +static inline bool
>> +i915_gem_object_has_valid_protection(const struct drm_i915_gem_object *obj)
>> +{
>> +	return i915_gem_object_is_protected(obj) && !list_empty(&obj->pxp_link);
>> +}
>> +
>>   static inline bool
>>   i915_gem_object_type_has(const struct drm_i915_gem_object *obj,
>>   			 unsigned long flags)
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> index 2471f36aaff3..38e4a190607a 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> @@ -298,6 +298,7 @@ struct drm_i915_gem_object {
>>   			     I915_BO_ALLOC_USER)
>>   #define I915_BO_READONLY         BIT(4)
>>   #define I915_TILING_QUIRK_BIT    5 /* unknown swizzling; do not release! */
>> +#define I915_BO_PROTECTED        BIT(6)
>>   
>>   	/**
>>   	 * @mem_flags - Mutable placement-related flags
>> @@ -537,6 +538,14 @@ struct drm_i915_gem_object {
>>   		bool created:1;
>>   	} ttm;
>>   
>> +	/*
>> +	 * When the PXP session is invalidated, we need to mark all protected
>> +	 * objects as invalid. To easily do so we add them all to a list. The
>> +	 * presence on the list is used to check if the encryption is valid or
>> +	 * not.
>> +	 */
>> +	struct list_head pxp_link;
>> +
>>   	/** Record of address bit 17 of each page at last unbind. */
>>   	unsigned long *bit_17;
>>   
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> index b0c7edc10cc3..f418281e8c10 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> @@ -7,6 +7,7 @@
>>   #include "intel_pxp_irq.h"
>>   #include "intel_pxp_session.h"
>>   #include "intel_pxp_tee.h"
>> +#include "gem/i915_gem_context.h"
>>   #include "gt/intel_context.h"
>>   #include "i915_drv.h"
>>   
>> @@ -70,6 +71,9 @@ void intel_pxp_init(struct intel_pxp *pxp)
>>   
>>   	mutex_init(&pxp->tee_mutex);
>>   
>> +	spin_lock_init(&pxp->lock);
>> +	INIT_LIST_HEAD(&pxp->protected_objects);
>> +
>>   	/*
>>   	 * we'll use the completion to check if there is a termination pending,
>>   	 * so we start it as completed and we reinit it when a termination
>> @@ -166,3 +170,88 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
>>   
>>   	intel_pxp_irq_disable(pxp);
>>   }
>> +
>> +int intel_pxp_object_add(struct drm_i915_gem_object *obj)
>> +{
>> +	struct intel_pxp *pxp = &to_i915(obj->base.dev)->gt.pxp;
>> +
>> +	if (!intel_pxp_is_enabled(pxp))
>> +		return -ENODEV;
>> +
>> +	if (!list_empty(&obj->pxp_link))
>> +		return -EEXIST;
>> +
>> +	spin_lock_irq(&pxp->lock);
>> +	list_add(&obj->pxp_link, &pxp->protected_objects);
>> +	spin_unlock_irq(&pxp->lock);
>> +
>> +	return 0;
>> +}
>> +
>> +void intel_pxp_object_remove(struct drm_i915_gem_object *obj)
>> +{
>> +	struct intel_pxp *pxp = &to_i915(obj->base.dev)->gt.pxp;
>> +
>> +	if (!intel_pxp_is_enabled(pxp))
>> +		return;
>> +
>> +	spin_lock_irq(&pxp->lock);
>> +	list_del_init(&obj->pxp_link);
>> +	spin_unlock_irq(&pxp->lock);
>> +}
>> +
>> +void intel_pxp_invalidate(struct intel_pxp *pxp)
>> +{
>> +	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
>> +	struct drm_i915_gem_object *obj, *tmp;
>> +	struct i915_gem_context *ctx, *cn;
>> +
>> +	/* delete objects that have been used with the invalidated session */
>> +	spin_lock_irq(&pxp->lock);
>> +	list_for_each_entry_safe(obj, tmp, &pxp->protected_objects, pxp_link) {
>> +		if (i915_gem_object_has_pages(obj))
>> +			list_del_init(&obj->pxp_link);
>> +	}
>> +	spin_unlock_irq(&pxp->lock);
>> +
>> +	/* ban all contexts marked as protected */
>> +	spin_lock_irq(&i915->gem.contexts.lock);
>> +	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
>> +		struct i915_gem_engines_iter it;
>> +		struct intel_context *ce;
>> +
>> +		if (!kref_get_unless_zero(&ctx->ref))
>> +			continue;
>> +
>> +		if (likely(!i915_gem_context_uses_protected_content(ctx)) ||
>> +		    i915_gem_context_invalidated(ctx)) {
>> +			i915_gem_context_put(ctx);
>> +			continue;
>> +		}
>> +
>> +		spin_unlock_irq(&i915->gem.contexts.lock);
>> +
>> +		/*
>> +		 * Note that by the time we get here the HW keys are already
>> +		 * long gone, so any batch using them that's already on the
>> +		 * engines is very likely a lost cause (and it has probably
>> +		 * already hung the engine). Therefore, we skip attempting to
>> +		 * pull the running context out of the HW and we prioritize
>> +		 * bringing the session back as soon as possible.
>> +		 */
>> +		for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
>> +			/* only invalidate if at least one ce was allocated */
>> +			if (test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
>> +				intel_context_set_banned(ce);
>> +				i915_gem_context_set_invalid(ctx);
>> +			}
>> +		}
>> +		i915_gem_context_unlock_engines(ctx);
>> +
>> +		spin_lock_irq(&i915->gem.contexts.lock);
>> +		list_safe_reset_next(ctx, cn, link);
>> +		i915_gem_context_put(ctx);
>> +	}
>> +	spin_unlock_irq(&i915->gem.contexts.lock);
>> +}
>> +
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> index 074b3b980957..4f7647f34153 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> @@ -9,6 +9,8 @@
>>   #include "gt/intel_gt_types.h"
>>   #include "intel_pxp_types.h"
>>   
>> +struct drm_i915_gem_object;
>> +
>>   static inline struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>>   {
>>   	return container_of(pxp, struct intel_gt, pxp);
>> @@ -33,6 +35,11 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
>>   
>>   void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
>>   int intel_pxp_wait_for_arb_start(struct intel_pxp *pxp);
>> +
>> +int intel_pxp_object_add(struct drm_i915_gem_object *obj);
>> +void intel_pxp_object_remove(struct drm_i915_gem_object *obj);
>> +
>> +void intel_pxp_invalidate(struct intel_pxp *pxp);
>>   #else
>>   static inline void intel_pxp_init(struct intel_pxp *pxp)
>>   {
>> @@ -46,6 +53,14 @@ static inline int intel_pxp_wait_for_arb_start(struct intel_pxp *pxp)
>>   {
>>   	return 0;
>>   }
>> +
>> +static inline int intel_pxp_object_add(struct drm_i915_gem_object *obj)
>> +{
>> +	return 0;
>> +}
>> +static inline void intel_pxp_object_remove(struct drm_i915_gem_object *obj)
>> +{
>> +}
>>   #endif
>>   
>>   #endif /* __INTEL_PXP_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> index 67c30e534d50..0edd563a653d 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> @@ -85,6 +85,9 @@ static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
>>   	/* must mark termination in progress calling this function */
>>   	GEM_WARN_ON(pxp->arb_is_valid);
>>   
>> +	/* invalidate protected objects */
>> +	intel_pxp_invalidate(pxp);
>> +
>>   	/* terminate the hw sessions */
>>   	ret = intel_pxp_terminate_session(pxp, ARB_SESSION);
>>   	if (ret) {
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> index 475e3312c287..be2bed3a2e4e 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> @@ -7,7 +7,9 @@
>>   #define __INTEL_PXP_TYPES_H__
>>   
>>   #include <linux/completion.h>
>> +#include <linux/list.h>
>>   #include <linux/mutex.h>
>> +#include <linux/spinlock.h>
>>   #include <linux/types.h>
>>   #include <linux/workqueue.h>
>>   
>> @@ -43,6 +45,9 @@ struct intel_pxp {
>>   	u32 session_events; /* protected with gt->irq_lock */
>>   #define PXP_TERMINATION_REQUEST  BIT(0)
>>   #define PXP_TERMINATION_COMPLETE BIT(1)
>> +
>> +	spinlock_t lock; /* protects the objects list */
>> +	struct list_head protected_objects;
>>   };
>>   
>>   #endif /* __INTEL_PXP_TYPES_H__ */
>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>> index 4393eef59d9b..2c9febdae6a5 100644
>> --- a/include/uapi/drm/i915_drm.h
>> +++ b/include/uapi/drm/i915_drm.h
>> @@ -1843,12 +1843,32 @@ struct drm_i915_gem_context_param {
>>    * attempted to use it, never re-use this context param number.
>>    */
>>   #define I915_CONTEXT_PARAM_RINGSIZE	0xc
>> +
>> +/*
>> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>> + *
>> + * Mark that the context makes use of protected content, which will result
>> + * in the context being invalidated when the protected content session is. The
>> + * invalidation is reported back to userspace via the RESET_STATS ioctl (see
>> + * relevant doc for details).
>> + * This flag can only be set at context creation time and, when set to true,
>> + * must be preceded by an explicit setting of I915_CONTEXT_PARAM_RECOVERABLE
>> + * to false. This flag can't be set to true in conjunction with setting the
>> + * I915_CONTEXT_PARAM_BANNABLE flag to false.
>> + *
>> + * In addition to the normal failure cases, setting this flag during context
>> + * creation can result in the following errors:
>> + *
>> + * -ENODEV: feature not available
>> + * -EPERM: trying to mark a recoverable or not bannable context as protected
>> + */
>> +#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd
>>   /* Must be kept compact -- no holes and well documented */
>>   
>>   	__u64 value;
>>   };
>>   
>> -/*
>> +/**
>>    * Context SSEU programming
>>    *
>>    * It may be necessary for either functional or performance reason to configure
>> @@ -2181,6 +2201,12 @@ struct drm_i915_reg_read {
>>   struct drm_i915_reset_stats {
>>   	__u32 ctx_id;
>>   	__u32 flags;
>> +	/*
>> +	 * contexts marked as using protected content are invalidated when the
>> +	 * protected content session dies. Submission of invalidated contexts
>> +	 * is rejected with -EACCES.
>> +	 */
>> +#define I915_CONTEXT_INVALIDATED 0x1
>>   
>>   	/* All resets since boot/module reload, for all contexts */
>>   	__u32 reset_count;
>> @@ -2959,8 +2985,12 @@ struct drm_i915_gem_create_ext {
>>   	 *
>>   	 * For I915_GEM_CREATE_EXT_MEMORY_REGIONS usage see
>>   	 * struct drm_i915_gem_create_ext_memory_regions.
>> +	 *
>> +	 * For I915_GEM_CREATE_EXT_PROTECTED_CONTENT usage see
>> +	 * struct drm_i915_gem_create_ext_protected_content.
>>   	 */
>>   #define I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
>> +#define I915_GEM_CREATE_EXT_PROTECTED_CONTENT 1
>>   	__u64 extensions;
>>   };
>>   
>> @@ -3018,6 +3048,29 @@ struct drm_i915_gem_create_ext_memory_regions {
>>   	__u64 regions;
>>   };
>>   
>> +/**
>> + * struct drm_i915_gem_create_ext_protected_content - The
>> + * I915_OBJECT_PARAM_PROTECTED_CONTENT extension.
>> + *
>> + * If this extension is provided, buffer contents are expected to be protected
>> + * by PXP encryption and require decryption for scan out and processing. This
>> + * is only possible on platforms that have PXP enabled, on all other scenarios
>> + * using this extension will cause the ioctl to fail and return -ENODEV. The
>> + * flags parameter is reserved for future expansion and must currently be set
>> + * to zero.
>> + *
>> + * The buffer contents are considered invalid after a PXP session teardown.
>> + *
>> + * The encryption is guaranteed to be processed correctly only if the object
>> + * is submitted with a context created using the
>> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT flag. This will also enable extra checks
>> + * at submission time on the validity of the objects involved.
>> + */
>> +struct drm_i915_gem_create_ext_protected_content {
>> +	struct i915_user_extension base;
>> +	__u32 flags;
>> +};
>> +
>>   /* ID of the protected content session managed by i915 when PXP is active */
>>   #define I915_PROTECTED_CONTENT_DEFAULT_SESSION 0xf
>>   
>> -- 
>> 2.32.0
>>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

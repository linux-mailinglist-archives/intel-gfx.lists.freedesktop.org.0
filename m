Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D6C79E791
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 14:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BFAC10E4A0;
	Wed, 13 Sep 2023 12:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D154B10E4A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 12:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694606884; x=1726142884;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sN8LlY3tAs0TX6PT8d9+jz1dZwkzwp5Xe+BkS0OpJxY=;
 b=mRa3UkbRx30tXjQQFzDz7RNHURpv61yeI0QktBqsxsSfScwS4exn1Eo6
 8qnzQW64J5O/Vdm13/jo3rL18Uwuxm8YOkl5uUEUJjRtECTLpvKKK0ymV
 k9oOVm8V4L5GUh9UlCydNMWPE4SM8jPK3QKLxopecnW7TKZNfqwnSQcTt
 s+sOwZFvBIo96KHePkT1X92Sxo93IyC+Wjlgylxum0XNdbKmR7TdGRyLX
 A+a6SU7+F0gVCMsn+Zm1v/gB/anW9wpwcDP6gclKJsxL7Bn0KCm9W2aps
 u+VKHdZClcn7HtORhrmzD4wkKDcApfcu8ZBgc5F7qAreTg8L2Yx66DaHx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="363670894"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="363670894"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 05:08:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="1074923356"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="1074923356"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 05:08:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 05:08:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 05:07:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 05:07:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e7ZdhrCwVpoIxAbxhiXvGrVp+mg9zSlo1gVgH7FyZ7WMpSDVggDd9MxNnEkeI3n98kpBNzCEX92HfYKEu8/RwMhuUG8dNb5F9ZA6+cuqfIB6yWa2L5SNgG06cEUNZHluv3/1J/DGPTYrHtXAzRNFBhzb7Y756QNbm3l+oH7IiD7NCx07mmoP/5P+V3AwdL6oUmunS+qrmdn5SI0njNK5RXlwLshWtKAoxDqC/EENPTlsjt8K+RNwvL4w0ZwdoMe2tC5r//lhDHSjo0l++qCvkeUnuKo6E/4q3NnopnLlRDP+XZ3mQcTl7korFUYMgb2xtnMMmjiCMvRVmulHPTcWAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NuDxHanluxzPVr0o+zS8JQreZZHDsyJ4FRi3DDVPPAE=;
 b=U386dbmVQU1xWLBzt0KXlUybHnZW1GCjGDcAi0RGCZPHBdk2FGNwPpEmJvtW/HB4bzUp+BMn7MpcZxkUgHaLbgmo72xz1ug9Hvuw1PIgGGogYrSbNbM3qGooNDmpCoHbH9hbYiiLOWyKk3uXl8LaWAqc9zgcOkAkfDUI2VclzdpqAFCs/PLKC3y3WValcgiSEEMmvlLKF3s67C/z3YlcP4A32WLTgj/NO7ZvhSeo/UoYoOB90ZLGRrcdtEUh6cE9HhKaojSkj1CNxzUfCaHRsvWDYeI9E+5TOxvYnj8RmZw0/wTuGuldBa8j8HtQSoCiwjppnGF1dq3jO5d94Udw3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2976.namprd11.prod.outlook.com (2603:10b6:805:d5::22)
 by PH7PR11MB5817.namprd11.prod.outlook.com (2603:10b6:510:13a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Wed, 13 Sep
 2023 12:07:55 +0000
Received: from SN6PR11MB2976.namprd11.prod.outlook.com
 ([fe80::25de:7285:e0b7:a042]) by SN6PR11MB2976.namprd11.prod.outlook.com
 ([fe80::25de:7285:e0b7:a042%7]) with mapi id 15.20.6768.036; Wed, 13 Sep 2023
 12:07:55 +0000
Message-ID: <6069e0da-40fd-ae6b-0841-72a68cc5f297@intel.com>
Date: Wed, 13 Sep 2023 14:07:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230906113121.30472-1-nirmoy.das@intel.com>
 <20230906113121.30472-5-nirmoy.das@intel.com>
 <ZPnUrf9myaj16qy3@ashyti-mobl2.lan>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <ZPnUrf9myaj16qy3@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0017.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::22) To SN6PR11MB2976.namprd11.prod.outlook.com
 (2603:10b6:805:d5::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2976:EE_|PH7PR11MB5817:EE_
X-MS-Office365-Filtering-Correlation-Id: f4aa5d3b-7903-41ea-b3ad-08dbb4520fc5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sqb8xZQXF+P+25+Lzzza+zuE7jx689dpzFMN0rgE0kBFk+feE53954UJOMPM8NPI0qRnAWS29bTs1oIza2qxgu5xpvvU48GafUB1O+h9HHZZo4lbl1NJ5albJb9VUPnDnubYUcR/DUq7p9izWy8qGX9926IeJ21vP4oScNT2V8QuQGZijRm6a4KW9dervw1w9ynynIQ88wJMRUHS0HTlAc8zgqkud8Xkz+RR8C98RIZYsHCqH+bj8MioC4X50pCpr/dAPA4CP3ZW++GYrfaY/Zbo4HhWZnZOPEBKBgVoIQ86PiQJ+hmynWtGC6HnbO3yRYF9u3CEHwYGalRths8MZIOGB1MvWUutQ1DlE+v7gCWHxutvCJ0lWTMmpVe2DE1xgprau2UrdeH/sqTfnUF8z4ZIqsh9fcDMRdI7GzpfK6awzluXmWSAWOjujkhcAAlizwOK9c89D8Syn3NuDv6ePerhZbDLjdIwFyOTVdTF2QGq1Ew9uMbHgipv2uyQlqPxO2HsJS5thGup0Pixt5GTVBHVhYlMUD/NH99HxaEbQGKitLGfbXPn/yzYtIfYzHEFuJ+aDe18SSDiLUbrfxTxx8UdU2kBVyN3plVwSc+aMhjkA3UquqRH2K8Z5r1PsXpQI+NgYqGdrV1SYOAMcFmZog==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2976.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(366004)(396003)(136003)(1800799009)(186009)(451199024)(38100700002)(82960400001)(36756003)(86362001)(31696002)(478600001)(2906002)(6512007)(6666004)(53546011)(8936002)(8676002)(5660300002)(6486002)(44832011)(66476007)(66556008)(31686004)(41300700001)(6916009)(66946007)(15650500001)(316002)(6506007)(83380400001)(26005)(2616005)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDFRWUFkM3B0RzVINXI4QlR1T0pjS2p6em16QytZNXBpbGNBS3V4ODRuYVpJ?=
 =?utf-8?B?WC9WNW9mY25QZjRnUEMwS1lwN0h2RWVyRUoyYzZ2d1UwQmFrUUFMM1V1Vkh5?=
 =?utf-8?B?UlR3M3VHWWhWLzgxVm5KL21KWmdyMnVqaE1meCtTQlcrRkZIajZGQTJaUTRv?=
 =?utf-8?B?cFNtcEs4a2RVNjViWUxuQjVkaTIvQWhEWGJ3UXVPbUNmOHpQNE4zTkptc0Fm?=
 =?utf-8?B?eWNRZkJlSkpxcXZFN2JoUkdzOGwwTXo3RFJyeW9HdWZrRDlFTlFxWDZmd0xl?=
 =?utf-8?B?QmdzaWEzSjBWdndySGd6aEw1SDdVKzlxR3kzcEgrV2pqbHVUd0x3bnJrMlhT?=
 =?utf-8?B?amt2ZkI4eFRsQWZrR1VPTmFtdEE3SWttWUxhVjFEUWdFRDV4eWt1TU84MnBo?=
 =?utf-8?B?ZzBhR21qeDBza3U1V3phTmFhWEVBbjdiZ0Fac25jUkVyWUI0b2ZLNFYxUGRX?=
 =?utf-8?B?b1JmWStJeGZ2cmpTY3hHanBFMWN1OXBGaTB2QlRMajZiOFVQN29nYmI5NVZn?=
 =?utf-8?B?NzExMTBWd1JRNUFwaE8xajVVaS8yYnRhUHJDZlhJZFFtcXAxMEUzelZuRUNo?=
 =?utf-8?B?SjR5N0h2Wm5rNEZ2R21SVjBQU0NqLzE4cHp6aElWZHJzR0hiRE41Z1AxbDBJ?=
 =?utf-8?B?Z0hNQTB5U1BjZzBSeExrNVptbGMvbHp2cmxnTVZYNmRJaC90UFA2eGtEM242?=
 =?utf-8?B?ZWZlQThieFp2YVRqbzE1SnNMSlVCa2hIdzhscWM2WlYrMENsSmtRK1JXc0NH?=
 =?utf-8?B?bVFLQjRVeno1SWhndTlNK2hQem1rdkxGVWYvMC9STldBWUgvTUtUNjVSMFM5?=
 =?utf-8?B?MUw1UzFYcVV3Tlg4YWVwVVBEczRESkR2UWpuVy9OazcrOFQ4SFpIL1Z5YWt4?=
 =?utf-8?B?S0JETXpLa01jczJNUWVjOStiTGVhV0J3OHU4d3JMZ2FsdzV6NHh2V1U1SWJm?=
 =?utf-8?B?TFVMeWhFSkZTdjE1Um9UV1I3eDZRR2NZVnJkdGpvbXlMWjBOUzBlbjNHa1FR?=
 =?utf-8?B?YXUxVlB5SXFGUW94aXpqQlE2MDZ4RGsyeTRYYmM4cVZqK1A0ci8wem5WeDNt?=
 =?utf-8?B?eCsyenR1UFpyaHhwQUd1Rm1JVkNUQm9mM2FUMSs4TlNTLzRLMkdDRmFBQWNt?=
 =?utf-8?B?T0JURWsyOTZBZUNuNmVEczloZTRkS0huTzVDLzlpdnBmQnQ1RmNHbmRQWGRh?=
 =?utf-8?B?R2ZJaGgzeUVneUcrU3REMjJnUUdjdlh4cHJzeldDZjdha29zQUJ1YWozS0cy?=
 =?utf-8?B?UEFza09CKzQwaEt1OFcvc2xMOHZJc0gxZmlYRXRTeDRFeXNsNGJneTdHSysr?=
 =?utf-8?B?WG9MNXBnakVxVWlzclZIK1JOVjcyM3p6NjFha2hZU0h2WDFUUHZCUXV2MFU4?=
 =?utf-8?B?dHhNajVxN2tVNDR1MDZ0ZkVwaVJ6WFlkWkhKaDVUdHBVMW1TVjYzWDlUVHgw?=
 =?utf-8?B?N2F2Z1o1a0tWbFFBbDQ0S002K2NRTlg2V2NDYlRUTmMrdHpYdU05T2NwKzNV?=
 =?utf-8?B?TTlXV2pNTkpNZEVlT1pYaVQrTkp6TDd4WHROSFBtY2lJbWpqREdCU0FzOC9z?=
 =?utf-8?B?cS94TXNuTSsvUUVneFNPUnZJbW1uZUwzWWc2WUpkQm1vMFNlRytPTnhla3Qx?=
 =?utf-8?B?TzNjV09KUHJuUk0rTDZXS1grSStsd1E5ZjVJbmxVTUUzcEZQWDZXQWduOGp1?=
 =?utf-8?B?N09OQmFmcHRuYzlIL3BtMmN2T280L0RlWXFmVUhmNDFaemt1NmRBaTkvZmJm?=
 =?utf-8?B?SUZxT21tSlUvV0pxQ3ZPMVNiM0FRa3N1S29EM25ZRG9FeHlJcVNVdGRKTDFh?=
 =?utf-8?B?QW01bERkekdwM0FOakgyd1l5TWo5d2VlcExJVlZVQlRneVlEeHdmT2w0RVVY?=
 =?utf-8?B?Zkh6M2NNeEhoSHVXWWtmNkFXVlVkcC9jM0FCWVlTVFVXZ1hoVTdHZjJpWld5?=
 =?utf-8?B?N0p5NGVsSElqNEp5dFA3U0lFSVZBZkpjYURpYmtmUzRzZ2dsYlhROGJDZS9x?=
 =?utf-8?B?bnkwSkQwY3JwQmp0WlJnY3ByRXJ0QWsxbGsvOHZITTBYWEdMSWNEWWh0d1Mz?=
 =?utf-8?B?Znh4N3E4OGZLaEZubE1jb1BBNDBxUlpvZ3FPK0IwR29BMkVWK09LV0d2aFFQ?=
 =?utf-8?Q?iUYMAY9/Irk5Kjyk0JmPlUYHN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4aa5d3b-7903-41ea-b3ad-08dbb4520fc5
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2976.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2023 12:07:55.0740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9GYdmCAdJ+TvigQfY01IZEMaiitDXZvkoDsAsd1qZ+hKL8XNNhLsjT3FJ3p/+DKka8TqbwgHeCatQDFSZSGCBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5817
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Implement GGTT update method
 with MI_UPDATE_GTT
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/7/2023 3:48 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> On Wed, Sep 06, 2023 at 01:31:20PM +0200, Nirmoy Das wrote:
>> Implement GGTT update method with blitter command, MI_UPDATE_GTT
>> and install those handlers if a platform requires that.
>>
>> v2: Make sure we hold the GT wakeref and Blitter engine wakeref before
>> we call mutex_lock/intel_context_enter below. When GT/engine are not
>> awake, the intel_context_enter calls into some runtime pm function which
>> can end up with kmalloc/fs_reclaim. But trigger fs_reclaim holding a
>> mutex lock is not allowed because shrinker can also try to hold the same
>> mutex lock. It is a circular lock. So hold the GT/blitter engine wakeref
>> before calling mutex_lock, to fix the circular lock.
> Thanks for the explanation here.
>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> [...]
>
> all looks good
>
> [...]
>
>> +#define for_each_sgt_daddr_next(__dp, __iter) \
>> +	__for_each_daddr_next(__dp, __iter, I915_GTT_PAGE_SIZE)
>> +
> should this go in the previous patch?
Yes, I think so too. Will move it to the previous one.
>
> Andi

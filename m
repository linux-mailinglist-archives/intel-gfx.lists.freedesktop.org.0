Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24295756B38
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 20:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E73910E29F;
	Mon, 17 Jul 2023 18:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E98C510E29F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 18:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689617036; x=1721153036;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RV+4mMMjXmvamm+FCGmDTtDIGnjnBXUvQ4g4D+h2gFc=;
 b=OfEudum4hCvW1NXczEzE4Di6PyiUsgtXmkDENvEEruKSUeSBK2TOYM7h
 7FludSgV6J+pkbesOzaBb2pYFVGnkUfU4qIBEthx3zVl2dx5mshssKgQA
 gAVQFZUcfmYDF8XhJkVX2Trd3Nkda1KDEOS0zPx2ZUF0jcp63lmDpsDt1
 8kJr4+NZwvyl6kA9/v/vaOdkuxQoQSdX5kYZZ962hCZasB5PMDynDDkrM
 /UlkijJg6uWrnmJTbWC/YBjql6lt9IqWwBXkIiS5fQYC0Ie2ibXS3w03K
 NdqrjhEwZxsdjS1/hgmkhyDW0TQpnTz3j93YfSkxZgS3GxCaKJ2VGE98N w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="432174620"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="432174620"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 11:03:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="788736439"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="788736439"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jul 2023 11:03:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 11:03:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 11:03:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 11:03:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XBLq2BrbrBgbcPPXQlMzuko6jctaRMRmOHqlJNj1oF0Qbt9wuDE9p6D3JZdhMZpHFXFytt9yqSkLwBDsMkqqbHeJ/gGkOGD4WWdIuFNQXXhrgxX8h08bSmcry3CIGIKaU/C38QC5QbhwVAkwqFb4G+cfMuDnjEAZ8WPPxkpURJFCpmeJXVk3Nkm1a6AwtCuwIhYguiY5whJezvl2Au0CulpDLvjDvn2TlVFHJS6YZdjYkVAx+xRItmKdym3dLBNxBpEuGobz3aklXAuoqt5xz9SCxoljwT8fNnymRKwY8IdQFwasVSv3osUqYFI/fRUZFNYkNDvvE6krcnSNDlAt7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wjY1T0LYooyRSY5UhCGGo1HGuuwxhl+4FlzprfAPM5g=;
 b=W29QGNcxSoWTQaDYLejDGIRC4R9eIjIxnWVQxDXDn6PhqV2bky2NBKKEgyNYMTXS7usPNqFRxUWj7tFUP6+vH4+tiueS3c0lvNxShyrr9T4VFA6VBCVwNb4O6l17XtGibKrQZVIm3kMscEnMptde1O3099ZakJtaZcIujhvRSrI31IB1h+TrEfzLMrv4jhTVdH/BeLRVq5mTfVwDzwv1LD9RXFd9V+8jEnfqGrTuGQfyxSuAe6SsdzkO9+cZDgIUDDKyZAS2zxTngL0edlqvVjyX6scOE4WNfyGbbQSbip2YQLd6TGOoBvud1ye2bGnNDfQxR29Xz2E8mCwG9lGYRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by IA1PR11MB6396.namprd11.prod.outlook.com (2603:10b6:208:3ab::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 18:03:48 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::ff9e:f1d6:dad3:53d]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::ff9e:f1d6:dad3:53d%7]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 18:03:48 +0000
Message-ID: <5beeb696-d720-4d08-9644-a98402d34194@intel.com>
Date: Mon, 17 Jul 2023 11:03:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <20230706151611.1024576-1-andrzej.hajda@intel.com>
 <ZK0sbz+h0r/PwYn2@ashyti-mobl2.lan>
 <a9e34d7a-b22d-779c-67cb-88c69dc7ca6b@intel.com>
 <ZK0+NXmKnEzeUtTI@ashyti-mobl2.lan>
 <118e74c0-c1ce-fc6e-39f4-5518ace5d71e@intel.com>
 <6f981dd3-715a-6b7e-6c5d-d51610cddc88@linux.intel.com>
 <daeb0906-1b39-ebda-618f-dbce88f751bc@intel.com>
 <c1ebfb0f-f0d4-1204-750a-b169d4ddab54@linux.intel.com>
 <7db1b2b3-d496-1c70-a4bf-8ce08136fb10@intel.com>
 <b1e2ccdb-e79b-d584-031c-5d71e2f524f5@intel.com>
 <81e65fb5-813c-da53-dd12-909f18739ef2@linux.intel.com>
 <16fbe1d1-a9ee-6d80-9155-94643d760470@intel.com>
 <dffa8faf-7ee4-9f0e-2ce0-aea266724104@linux.intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <dffa8faf-7ee4-9f0e-2ce0-aea266724104@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0136.namprd03.prod.outlook.com
 (2603:10b6:303:8c::21) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|IA1PR11MB6396:EE_
X-MS-Office365-Filtering-Correlation-Id: 299f24a5-d108-4161-c2bf-08db86f02b82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1zxQrIXAEYgkdnaEpYChfJhxCoAjLS+x6FaXpQ3g3Q+69hin0hDK8fnISTqXB+BJ9lMErVUn7//KJm5ONUbGzqWPNmqxHOE9AZFc4lr35XmIAX4SDPKbHm1LRV9Owo7KT02qIA5urktufBkzNyxEtQfkx/r5trlzIzTGmI1WX0jaxa6zHi5S7svFehAk8pn56UYLz05ovkR88Yz73+SXedtuDldU0FS+RVbuKGqW8nVYwHmTerkzt6OEgUQQM0Bq6y59X5EMeK3CVXpcKP9YgLUsPrgM97qCOQ/lUAOQb7V72xhOGHdpvoutxhLiBymUEMuFRvroLri7CKnkATdkMWNqyN7TWa0asOYrtZpvlDGvrb+/dI0sscG2B43pqWM3AI24ydCQbCtamLGkkF2G03CyUbLC7bRqD0ASFoaoeggV8R7grIAsQFZL39eM8dt6ekmQLY70+hhyGMiE+xv0NWi/ZTv6tTLTu/79NIiop3mYs/V44BP83c5vPqxSIOQIAMePQQNwaxWlq53Lu7onE/zuvA7z2lxFlmaZyWRhnalplZKk8jgiGZXAk1SYamjoqhpXQiFCCarpvtPLMUl81AbhupUUhCuE0i+Wl3MtNQGx3SsiHcdCi5PAx6dqgbeRhX8DIh+wP0Odql/cEQDaitg3HvwUzglgmf/TZmRS/Rc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(39860400002)(136003)(376002)(366004)(451199021)(31686004)(15188445003)(2906002)(110136005)(54906003)(478600001)(6666004)(6486002)(30864003)(36756003)(8676002)(15650500001)(4326008)(41300700001)(316002)(66556008)(66476007)(8936002)(66946007)(966005)(82960400001)(83380400001)(38100700002)(6512007)(5660300002)(86362001)(31696002)(53546011)(26005)(2616005)(186003)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekVwL0pSeGtiNzVwMWUwOGwvY2h3empCTEtWQXg2NnpVdVQvQUpDRUtPVzR5?=
 =?utf-8?B?OHF1QytrT25XUUFWTytrSUFVZkhVa0JOdzBYaU0xMFFUMEQ1V0NjM3Exdm9G?=
 =?utf-8?B?am9QMjc1T1hLckhjL2hyOThJdDJqdkZxQk5DaEZ0ZzVBY0pZdEN2T2VQbkN5?=
 =?utf-8?B?ZVZDS1lXTXJRbGVOMDUyOEMzamtLSGcrSUl6c2lTWE5OOFJ2Uyt6TkNSNjh6?=
 =?utf-8?B?d0k1OEdEdlVmWko5Q2VjYThqay9STi93WCtVL3QyWWNLb2swbGdVNzlHcFFu?=
 =?utf-8?B?U055ZkdZS3hhdUd4NDdxOGdYa3o2blQ0WU1yVGdXQUJjY0ZoQlhCRVRFM09z?=
 =?utf-8?B?RE13a250QytpV25xQ0VjWk42VTIwaFVmY2dhMG9aOFF4RTNrV2gwTjZWMldB?=
 =?utf-8?B?Z0Fodzh4UkhBcjY3RDVyNU5lMEZxR1BHQ2c4Vmg4Z1Fycys2RjJWek9xbUI3?=
 =?utf-8?B?L1YvYWkyZklqa0VLS1ZTY1hPWWlDWjJlR0h4ejdTZ1kxMkpzeWttQmRFd3Rj?=
 =?utf-8?B?cjdDL0YzakdBdTVPcWJGQVZGc3h0ejZKUUUxYTdNQ0cwWFVjalFyMnM1MWFt?=
 =?utf-8?B?c2gvOVQyNTNqZ05aRFZLZHlrbFNoZzJYNHdnL1JiN20zS0VDdTIxeXB5QlpY?=
 =?utf-8?B?N3NOQmR6UUd1YUZVYWpiaUxJeHUxV3NGY1kyY1pKSmZUZ2h3cU9HRDlLTjkv?=
 =?utf-8?B?R0lBNzAxU045bC96ZkJBRnNhSnlCZng1aDJRVkFjWGd3YUdmTCtPamwzellz?=
 =?utf-8?B?bTdnU0FDRGRWbXVQSURJTjRxaHN0QlJDRTVGaUtYSUdqcHh5Yys5SFdkQ2ZM?=
 =?utf-8?B?eWtueGlmQyt2QUxxZE5LazhlSll0eGhHclJ3VmVYMkpVakFEYlcxNHBUeC9w?=
 =?utf-8?B?ZDgwdDR6RXg2NVZaYVZEbWFXWGMrdncrSXI4MVFZZGQ4OHcvTEZUN3BuSmFG?=
 =?utf-8?B?aVZSNlp1ZmNtUXdGTHZqT1RHNVQyTjVYVFBPNDFDYStlRWl4U1JYS29uc09h?=
 =?utf-8?B?Rm9WVXlRaXN0Uys5ZGgyR21tK0cwL05IT3lJYWFKYzR2Q3V2YUxYbFdMR0dk?=
 =?utf-8?B?WXc4dTJLYys4N3RMbHFvVWZuQmxrNVg1RWZhTnBjN1BYWTdzMnZJY2dTWVJh?=
 =?utf-8?B?K25WUG5JMUMyZGN1N01pTlR5UWpVb3lMdjRPeTBmc2dqSUVtQmpPTTdOSGcz?=
 =?utf-8?B?WHhaa2pINXRzaGFsM09uWTRMOVVYQ2FhRHpPbjg5OWp5NWZpZGk2ZVpwWlZo?=
 =?utf-8?B?Tmx6VmVLQVlCdEJtL0czK3VIS3J0MGp2WDc5bG1kWTNzZExhOFI4TUhzWkMr?=
 =?utf-8?B?K2pGQVJUc0xubmpoemdCZng5UlVyTXYxN2gwV3U5VzFZTlAwY2ppaURYYjB4?=
 =?utf-8?B?elVkZ1ZaRDVsQjJlbGRCTk9YaXE5MDFvNVpoRTR0VWNkb1oxTXZSemJHejNo?=
 =?utf-8?B?MnUxaDVjWDk4Q3U2SEx5cEVFN2srclFLVjhGRTE2WjNxOVNFR0VhUGFvaGlZ?=
 =?utf-8?B?VFNHQXcwdk9EQ1ArVXdaYkpmV2hEZ0p6VXBNSVNSQ2tmMkpZNVRsdU9ydG14?=
 =?utf-8?B?UitiUFFvb3IrUzltZGhxM1hqWVJWb2NNaFZzSGhrdThzYkk1d1RPVE1wWktT?=
 =?utf-8?B?ZVRrYnI3eWVJV3h0Z2pTLzhjdThxdHpJZjZtZk9IY1lMeC9WUUxETGRRUHdW?=
 =?utf-8?B?Q2JaaTNRKzhjM1VYTmFma3BMdkMzOG9UV0FlbHZyTlliMEo2dDdTaGFNT0Z3?=
 =?utf-8?B?cFdNaDR3NXM5V2lnOW1IMzR5WDdyazUxdSs3WFVWK2FWODFkaVlUMGpQb2Vz?=
 =?utf-8?B?dzR2L0xmRSsrQU9wTC9HUGVpbVlGSTRuWk9pcTRGTU1TelBoK25rTXJJZUdY?=
 =?utf-8?B?YzNKTnllMFhwcTdyUW1WbVNSY0VtNThyTjNDbDJnVXdsMWNLMjU2dy81UHJB?=
 =?utf-8?B?R3Mrd1h0RjdNTGZuRHYwVzdLU3JBVFo4aHR4RFV0ZndlQXdNc3FQNzBzMEJa?=
 =?utf-8?B?cTAvWHVMdEhBdVF3aGQ1ZHdlYXl4MGNaRlNaYnVNOG5yZURXYWJSeVBERmoz?=
 =?utf-8?B?aitHR0pYR2NEcGFtY1NUcHZDZ2R4TVNuTjZFdVk3MFR1c2lLbkJscjF2M0lj?=
 =?utf-8?B?RWxlVGcvZ3FBUGovQ2c5Z1BGbnhNUjltUXBNLzBNMy9iSTdyNHZkQ3B6UWhG?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 299f24a5-d108-4161-c2bf-08db86f02b82
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 18:03:48.4978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pj/JSfC4/fwTDkjZJ+M4kj+IaQYBjIqBOPFt0Cqt5wraWry4v6l5OExdk+kgq2EzpRoVNR9nCcQA2y0gED0TPR6BNnCNegBa8rBCBO7leLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6396
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: update request engine
 before removing virtual GuC engine
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 7/13/2023 05:11, Tvrtko Ursulin wrote:
> On 13/07/2023 12:09, Andrzej Hajda wrote:
>> Hi,
>>
>> On 13.07.2023 09:39, Tvrtko Ursulin wrote:
>>> On 12/07/2023 19:54, John Harrison wrote:
>>>> On 7/12/2023 09:27, Andrzej Hajda wrote:
>>>>> On 12.07.2023 14:35, Tvrtko Ursulin wrote:
>>>>>> On 12/07/2023 13:18, Andrzej Hajda wrote:
>>>>>>> On 11.07.2023 17:27, Tvrtko Ursulin wrote:
>>>>>>>> On 11/07/2023 14:58, Andrzej Hajda wrote:
>>>>>>>>> On 11.07.2023 13:34, Andi Shyti wrote:
>>>>>>>>>> Hi Andrzej,
>>>>>>>>>>
>>>>>>>>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 
>>>>>>>>>>> +++++++++++
>>>>>>>>>>>           1 file changed, 11 insertions(+)
>>>>>>>>>>>
>>>>>>>>>>>          diff --git 
>>>>>>>>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>>          index a0e3ef1c65d246..2c877ea5eda6f0 100644
>>>>>>>>>>>          --- 
>>>>>>>>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>>          +++ 
>>>>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>>          @@ -3461,6 +3461,8 @@ static void 
>>>>>>>>>>> guc_prio_fini(struct i915_request *rq, struct intel_context 
>>>>>>>>>>> *ce)
>>>>>>>>>>>           static void remove_from_context(struct 
>>>>>>>>>>> i915_request *rq)
>>>>>>>>>>>           {
>>>>>>>>>>>                  struct intel_context *ce = 
>>>>>>>>>>> request_to_scheduling_context(rq);
>>>>>>>>>>>          +       struct intel_engine_cs *engine;
>>>>>>>>>>>          +       intel_engine_mask_t tmp;
>>>>>>>>>>>
>>>>>>>>>>> GEM_BUG_ON(intel_context_is_child(ce));
>>>>>>>>>>>
>>>>>>>>>>>          @@ -3478,6 +3480,15 @@ static void 
>>>>>>>>>>> remove_from_context(struct i915_request *rq)
>>>>>>>>>>>
>>>>>>>>>>> atomic_dec(&ce->guc_id.ref);
>>>>>>>>>>> i915_request_notify_execute_cb_imm(rq);
>>>>>>>>>>>          +
>>>>>>>>>>>          +       /*
>>>>>>>>>>>          +        * GuC virtual engine can disappear after 
>>>>>>>>>>> this call, so let's assign
>>>>>>>>>>>          +        * something valid, as driver expects this 
>>>>>>>>>>> to be always valid pointer.
>>>>>>>>>>>          +        */
>>>>>>>>>>>          + for_each_engine_masked(engine, rq->engine->gt, 
>>>>>>>>>>> rq->execution_mask, tmp) {
>>>>>>>>>>>          +               rq->engine = engine;
>>>>>>>>>>>
>>>>>>>>>>>      yes... here the context might lose the virtual 
>>>>>>>>>>> engine... I wonder
>>>>>>>>>>>      whether this is the rigth solution, though. Maybe we 
>>>>>>>>>>> should set
>>>>>>>>>>>      rq->engine = NULL; and check for NULL? Don't know.
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> Setting NULL causes occasional null page de-reference in
>>>>>>>>>>>
>>>>>>>>>>> i915_request_wait_timeout:
>>>>>>>>>>>
>>>>>>>>>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>>>>>>>>>
>>>>>>>>>>> rq->engine after removing rq from context is (IMHO) used as 
>>>>>>>>>>> a set of aliases
>>>>>>>>>>> for gt and i915 (despite rq itself contains the alias to i915).
>>>>>>>>>> without investigating further, but maybe that code is not even
>>>>>>>>>> supposed to be executed, at this point, if the request's 
>>>>>>>>>> assigned
>>>>>>>>>> virtual engine is removed.
>>>>>>>>>
>>>>>>>>> Real tests show it is executed and the function 
>>>>>>>>> i915_request_wait_timeout is quite generic
>>>>>>>>> I guess it is quite typical use-case, the only question is 
>>>>>>>>> about timings - what happens earlier -
>>>>>>>>> finalization of i915_request_wait_timeout or context removal.
>>>>>>>>>
>>>>>>>>> The other point rq->engine is accessed after context removal 
>>>>>>>>> is i915_fence_release -
>>>>>>>>> there is long comment there regarding virtual context and 
>>>>>>>>> reuse retired rq.
>>>>>>>>> Anyway calling there "intel_engine_is_virtual(rq->engine)" is 
>>>>>>>>> risky without this patch and KASAN complains clearly about it:
>>>>>>>>> http://gfx-ci.igk.intel.com/tree/drm-tip/kasan.html?testfilter=gem_exec_balancer 
>>>>>>>>>
>>>>>>>>
>>>>>>>> Looks like a bug introduced in bcb9aa45d5a0 ("Revert "drm/i915: 
>>>>>>>> Hold reference to intel_context over life of i915_request""), 
>>>>>>>> which was a partial revert of 1e98d8c52ed5 ("drm/i915: Hold 
>>>>>>>> reference to intel_context over life of i915_request").
>>>>>>>>
>>>>>>>> Ie. if 1e98d8c52ed5 recognised the problem with disappearing 
>>>>>>>> rq->engine, then I am confused how bcb9aa45d5a0 left the 
>>>>>>>> rq->engine dereference in there after removing the extra 
>>>>>>>> reference.
>>>>>>>>
>>>>>>>> Could it be that the intel_engine_is_virtual check simply needs 
>>>>>>>> to be removed from i915_fence_release, restoring things to how 
>>>>>>>> they were before 1e98d8c52ed5? Could you try it out?
>>>>>>>
>>>>>>>
>>>>>>> I have already tried something similar [1] and KASAN bugs 
>>>>>>> disappeared, or more precisely gem_exec_balance tests passed. 
>>>>>>> But I have been warned by Nirmoy guc virtual engines can be 
>>>>>>> created for only one real engine (ie. 
>>>>>>> is_power_of_2(rq->execution_mask) is true but rq->engine points 
>>>>>>> to virtual engine).
>>>>>>>
>>>>>>> [1]: https://patchwork.freedesktop.org/series/118879/
>>>>>>
>>>>>> Ugh.. Try involving media umd folks to see if they need a single 
>>>>>> engine virtual engine? Or we could always just not create it in 
>>>>>> the driver, I mean just use the physical one.
>>>>>
>>>>>
>>>>> In case there is single physical engine 
>>>>> intel_engine_create_virtual falls back to intel_context_create (no 
>>>>> virtual engine), but in case of parallel contexts there is special 
>>>>> KMD flag FORCE_VIRTUAL which enforces virtual engine even for 
>>>>> single physical engine. So it seems to be KMD concept.
>>>>>
>>>>> Anyway is it worth investigating how to make 
>>>>> "is_power_of_2(rq->execution_mask)" indication of dangling engine 
>>>>> pointer? It will not help in 1st case:
>>>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>>>
>>>>>
>>>> There seems to be a fundamental problem here. Object 1 (rq) is 
>>>> holding a pointer to a reference counted and transient object 2 
>>>> (engine) but without taking a reference count for itself. That is a 
>>>> Bad Thing(tm).
>>
>> Engine is not ref counted (at least directly), hardware engines seems 
>> to be even persistent across whole life of i915.
>> I guess before introduction of virtual engines the assumption about 
>> validity of rq->engine was correct and developers used it to access 
>> rq->engine->gt, rq->engine->i915, etc
>> So the problems described here are probably leftovers of this change.
>> After virtual engines were introduced 
>> "is_power_of_2(rq->execution_mask)" was used to detect rq->engine is 
>> virtual.
>> And after adding parallel engines it does not seem to be valid check 
>> anymore.
>>
>>>> I'm not following the description in the revert patch as to why rq 
>>>> can't ref count the context/engine. Is there actually a recursive 
>>>> counting problem? Or is it just a lifetime issue caused by requests 
>>>> hanging around indefinitely because they are locked by a user process?
>>>>
>>>> Either way, jumping through convoluted hoops to ensure the code 
>>>> does not attempt to dereference a dangling pointer seems like the 
>>>> wrong fix. Removing the engine pointer when the request is 
>>>> completed and no longer dependent upon an engine (but before the 
>>>> engine can possibly be destroyed) seems like a much better 
>>>> solution. And then making the request handling code check for and 
>>>> cope with a null engine pointer. It sounds like the only problem 
>>>> there is the above mutex, but there is an alternate route to that? 
>>>> Although why a completed request would need access to a GT reset 
>>>> mutex seems confusing. If the request is done, then what connection 
>>>> does it still have to the GT?
>>>
>>> Agreed in principle but the question is how invasive would it be to 
>>> change the rules.
>>>
>>> With the latest info that the issue is really just the GuC 
>>> _parallel_ engine setup, and looking at the code, I wonder if we 
>>> couldn't just flag the rq->flags with "kernel context request". The 
>>> code in i915_fence_release claims the rq pool is only relevant for 
>>> those so it sounds it would be safe to skip everything else based on 
>>> that new flag.
>>>
>>> For the mutex_release path, presumable the bad deref is only _after_ 
>>> the wait, right? (Only once the request has been retired.)
>>>
>>> In which case caching the gt pointer at the start of 
>>> i915_request_wait_timeout would be sufficient.
>>>
>>> That should be a few lines fixup overall and then the idea of 
>>> allowing rq->engine to be reset to NULL can be explored more leisurely.
>>
>> I guess:
>> - setting engine to NULL in remove_from_context,
>> - caching gt pointer,
>> - checking for null pointer in i915_fence_release
>>
>> should be enough to solve current issue. However I am not sure if 
>> there are no more dragons hidden in other execution paths. I will try 
>> inspect the code.
>
> What you have in this patch, cheat by replacing the engine, *might* 
> work for the short term *if* you can make sure all parallel readers 
> will see the updated rq->engine pointer in time, before the old one 
> gets freed.
>
> For the longer term solution - maybe making the engine reference counted?
That was the point of the original solution - having the request 
reference count the context. The context is what owns the virtual 
engine. So ensuring that the context can't be destroyed while there are 
requests outstanding on it ensured that rq->engine would always be 
valid. Nice simple and clean solution.So why did that get reverted? What 
is the problem with VM_BIND and having requests ensure that their 
resources stay alive for the lifetime of the request?

John.


>
> Or if setting rq->engine to NULL then evaluating the paths which 
> derefence it. AFAIR these request retirement races have been generally 
> tricky/annoying.
>
> For instance under the i915_request_wait_timeout chain.
>
> 1)
> __i915_spin_request - could be racy if request gets retired between 
> i915_request_wait_timeout/dma_fence_is_signaled check and 
> __i915_spin_request dereferencing rq->engine.props?
>
> 2)
> intel_rps_boost - claims to be safe by serialising via 
> i915_request_retire/I915_FENCE_FLAG_BOOST but is it? What prevents 
> retire tearing down the engine between:
>
>     if (!test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags)) {
>
> ---> HERE - if whole retirement happens here <----
>
>         struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
>
> 3)
> __intel_engine_flush_submission - could be racy to? What if the whole 
> process of consuming the request by the backend and retirement happens 
> between these two lines:
>
>     if (i915_request_is_ready(rq))
>
> ---> HERE <---
>         __intel_engine_flush_submission(rq->engine, false);
>
> Then "is ready" can be true, but by the 2nd line request retired and 
> rq->engine freed/NULL already.
>
> Lets hope I am just making unwarranted panic by being to away from 
> this area of the driver for a while. :) But if I am not, then it could 
> be that rq->engine is just overall too problematic and perhaps we 
> should have a look into making it reference counted by the request.
>
>> Btw there is rq->i915 but code only uses "rq->engine->i915" which way 
>> shall we go? remove former or latter?
>
> Simpler/shorter option should be better.
>
> Regards,
>
> Tvrtko


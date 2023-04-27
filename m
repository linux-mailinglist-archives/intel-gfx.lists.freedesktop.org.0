Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5446EFE38
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 02:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D157E10E116;
	Thu, 27 Apr 2023 00:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCACE10E116
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 00:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682554302; x=1714090302;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eueG8wc+laDFAaO/AKHKDooodia/rfddSkcl0r/sPXM=;
 b=C0gLG5u46DtqJoIhUwoAtTs6lL6dWXi+C7t7Upv11cwq2g0YY7p+r6eQ
 bdi2OgY58Jet3KJeXOTt9CFhiXGiPpY0p3cPQjG+i4EuD1Uh3CTSb3OXd
 Sz3CbRHQiJRDI+qMtsfGO5McEb+bWxTitS1SO/bea41KvP+BOlqmw3Ro7
 gfQfbSE78MvPgVvxhWLpfnv1QcblIu0ETKhGXXLWZPwEM79od97jNJDQS
 QOATJxkFcdm3zvmss3g/7R93aOHvezNK2wXaiMxdxj3F/Mw391Oe1gjET
 t24B3MbqA9o+K/irYKRhQrmbF7ceOYSdGTAvY10ENkUZfqih82kukBUSv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="344722165"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="344722165"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 17:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="758840194"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="758840194"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 26 Apr 2023 17:11:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 17:11:41 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 17:11:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 17:11:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 17:11:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KrlF3FNRNm8YBNscWQLjY4ncQ8HlMyPJ96EiXSMsjEgNWcIzFT8e/uM2tBMn80XAscnAGitzC8xewRK8LMwp8B7CIXX00JzyCWhIHy9wNpPRndq2WeFE0xlf0KBeRSRAxGHufFvu8eTApv7SsTVWkJIw7b4ZiQwryBPD2UBKeNMBaLCOISY7BC4cj2U2ajRoAAr6gICmbpv8LTxtqp64cSU76tZWITSkZU3KcVnvuFm+2dMcBJ5BEp9RfChOLbUeLkMH8oX5VbSlDTkrdjoSzFsyx67cH+X7+he8BF4202JWTKNxNHy8nHs+v/i9hD/41IuJpPODlmj0n6VLzXeC3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RR3aqXPd0kb3ZDu1YRYN98+AYz3ZmQrR8vcuxyeGAjA=;
 b=AaS44hG5RVxi9re8yHUmkCdoerps8bIrScPTpYfh6ysk11v9cQuC+HA47hnXldPI3pEDx1BS+eG870GlqOlQ5XcSjYo/neaebiL4DxNCUrcz4asgarVr4JGw3CoSW1wQA/kVCSTFKe9nqW4BqJa3qPNDS4SpOiADMReRi5ZQYAGNMN3Y4ep8fLQ5qnh4EM83l3xwA5bSFvu9aQHtKFeGQWlioEwcXk1/Qa52b8pVMK6Y65hphpclpbh5CwixOmUD+VFqEF/c1oplqBGw6RiUpWG1bpiABLka7A7t9p8E+XSHlI0Gv1ftXhya+6Xx1cu5QWT77Qc+qPgTkELsTJ+u+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CY8PR11MB7825.namprd11.prod.outlook.com (2603:10b6:930:71::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.21; Thu, 27 Apr 2023 00:11:39 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c02:9b11:8756:fe69]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c02:9b11:8756:fe69%5]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 00:11:38 +0000
Date: Wed, 26 Apr 2023 17:11:27 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZEm9ryBi9pnfFJCO@orsosgc001.jf.intel.com>
References: <20230405001433.2654971-1-umesh.nerlige.ramappa@intel.com>
 <20230405001433.2654971-2-umesh.nerlige.ramappa@intel.com>
 <87h6t59nze.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87h6t59nze.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY5PR20CA0010.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::23) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CY8PR11MB7825:EE_
X-MS-Office365-Filtering-Correlation-Id: 091c9938-d9ba-4402-721d-08db46b3f83d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uAZ7Sg65kbA3fdfErXR1lCI3mKsvxF3iSEypbBMO80MCliSw86VoTuofT2teRqtLbFfTjaYmaHx5fusRBMsT3C9/1i/kCTDEoO9S8bDz9gqIUBqWLzm1lRY6WmCIF3E0FlDvh7oWeqiDIbki9VO5q19ZT8eX8ovYB9wz15frBSj8etXmleDjdSO2sybw/ehNmz2I5px6LhOtontB6ATLz+Bg5LJAsanWJbuRAgnyittLSpurBYOck9pjSdpPfARIB8ikdUlZoQvvdr4SAX8hfugFAylOnxOpSL2wdRfVr8D7MkslnFl4uxDgqgHW4gjoULmxxJKlKlwoLXuUg7hlnAdlcJDgJg0mC/mhTGtMW4nre+0QLqp8af8icq5l/2lggUAOrO8noOx+dyLoduNDZWJrnUiqeWJDSuPgwPPUr+WFcfDJGgOgvmpilq8MLi6kxwLuEH8i1f4L5fYFRdDJdpQW4PPQazQPz2JaYBByX0yCR64berd3sdG67o1LyEvoIsYa34oJMI4Eg724kZm2uA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(39860400002)(366004)(346002)(376002)(451199021)(6506007)(26005)(6512007)(6636002)(186003)(66946007)(6666004)(5660300002)(478600001)(8936002)(6862004)(966005)(6486002)(8676002)(2906002)(41300700001)(4326008)(66556008)(66476007)(86362001)(82960400001)(38100700002)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjE3MkluVHZnRk5zSG9OS1dIL01WeFhLTkpaa3BjYTF6bzF6R25CYTdiMS9M?=
 =?utf-8?B?UVl1d2NoUS9oN1A4NFdoVExmcGM0ekx1c2cwdTV6Uk9zbnBNQmsrR0hna29L?=
 =?utf-8?B?akdSK2htRzlucDI1UTZ2dTFlc2YzVzBZN3lmdm5Gdk9jcHU5N29rdTM2SmYv?=
 =?utf-8?B?UmduWlpsYzBnY2VnTkVmbHcwKzVJbGhLOGYvSGp3YmFSdDFORHZIM3ByU24z?=
 =?utf-8?B?RXdMK3NUYjBINW1SbHdTQUx1QVRDOGlVTkRpYnBReHRRUEliSyt4TGZXYnVX?=
 =?utf-8?B?SWFseEtEQnJCanFXU2w3TFJqTHMwZUxRUDV6dEsxeUtPUHJyMmdKakhyelJ5?=
 =?utf-8?B?dHFpL1Myb2d3ZFkxTHhxS21VVDdBVXZQYjEzSENsdXUwUkpZalJPRlRKUWxw?=
 =?utf-8?B?WUdDVDZKbUtOUUdXN2lIQ0VmTndsL2JpWFpaYis5SDZ5U0ZTQ1ErZGZHcVBJ?=
 =?utf-8?B?WU9LaEhmKzJJU0w3aldWV1dnbFNobmlNSFNrL1J6MUF0UWY1TWdzUXZZMjJI?=
 =?utf-8?B?bk81QXRNbWdPOVZENkE5b25uZTBtd2swTVR3V3J6VnlPSnZzQnZETjRIZ1Zk?=
 =?utf-8?B?cEdCaXc4bkJqTmhtMGN4dUE4dzUxa0twT0hJRVk5UnE0TFFlUjhyQWZXWFp3?=
 =?utf-8?B?WFRsa0FXWVdhUkh1V2oreGxhdmwwZnVkTmhIaTI4WTBMS1BlRUdzTTRXdXRv?=
 =?utf-8?B?MkxsTm1Bbzd1UGk1WldpOGVwbUx0aFpOYUhvWjJZRWp5cjcxeDRDbUJlY09I?=
 =?utf-8?B?RHptOHpHMFhsZlVtTmYwcXNnQ2ZRcVZtWHdnSnViUDFQWTdtSDBKNFdYSEJP?=
 =?utf-8?B?RDBBdmJFMG5YaENWMEJ3d2I4cERYRnRTWHNqdHhEQjBheUFTZS9lVTIxZTlt?=
 =?utf-8?B?YmhTTEZuTnhXV0VtTjRRMTZHWSt0T3BrT1g0UnRuK0JJNC83OWlBMU4vV3RJ?=
 =?utf-8?B?Q3k4MG5teEt4eUdYS0UxL3VaTDhaak5kTkhSaHJ2cHZzN2RIbVpTRDN6M1Ru?=
 =?utf-8?B?MjBZeVRJemcxUVdLNG9ORzZyNmJhTDZLa1FuOW41aDhyMGZmNnJnZnNzbHk3?=
 =?utf-8?B?aGcwSWlVK2tmSW81NWt5clJDcC9xYmo4U3RqeG5jb0g4Ri90aUZJSFRYKzlD?=
 =?utf-8?B?SXFzL0J0NUF2ZkZFNWhBZUdyQjJ3R3k4VXN4Ty9zQW9PL2xrOE9EaU13UGFM?=
 =?utf-8?B?T0drUytvSmJVR2J6Q1lPMEVJWEpyMitteW1JaXo0eXZPVUtlWWlrU2grUGgv?=
 =?utf-8?B?T2ExclJkZFdrcVQ0NVlkSDRMRFVnMURPNGMrdlZaMzJPVVU4ZDRYdDFyQlY1?=
 =?utf-8?B?TTJMRmVnOWc0MnBMTXFuUFdYZTM5RU0yL2NZRHFoc0x5ejNBYlBWUVdjdFc5?=
 =?utf-8?B?b2ZDN1p0VWlpVUtsMEZETTFoR1hJMHc5bHJLWkM0aTNDVVpMb1pkK01oZ3Ra?=
 =?utf-8?B?R1dkR2hhWERZc3QrTEc5UmhuUFJSejBCdDlYeDZiakN3dUI2ZjdpalMxbGpQ?=
 =?utf-8?B?QlprZ0ZIMmtuTDN3RXErU3ZqYWhPRyswcE1qakdhcTFacXBnUjNUbXNYOHB2?=
 =?utf-8?B?T0FOZzh2NmFtN1ZHUG15c0lLMFlpSklZVDNzSzYyUnIyMVhSOWRuMmM0YlNR?=
 =?utf-8?B?YkRrcExZU1FkR3F0eFpRQlNYdFp2a09ISFNvSDZONCtDV3IySkdDUTIyTjBa?=
 =?utf-8?B?SmtjbHdKSlJEMVYyOUNvcktTdGRvMTJNQ1krdXk3RHh6SGlBam5sdWxPUlRa?=
 =?utf-8?B?Vm9pczFQcUFFZjhwZ1hrVVZHM0tncHBBTVhvTkdoTW4vUlQ3bWZRVzdwcDE5?=
 =?utf-8?B?UEZsODBpMll4RUMvdUhpdHNUbWNoNXJaRGpsazNwdGxIOHFNSEZlSzNtYXZW?=
 =?utf-8?B?R0tsZGdmOXF3SXhCbzJKVU90elNnSFk1WnJPelRacFhIbWpoOUJ2T2t2SHpF?=
 =?utf-8?B?L3NrZUNJWlE3SnBISW1IUVU4NE1UenY2Y0ttWk5hYS9pd0p0MEVBbENPcVI5?=
 =?utf-8?B?ZXdOSWNTdEoyc3YvUVUwV3FyVVRJcnNweXZhVG5PMTltLzdCWS8vN0JGZUZ1?=
 =?utf-8?B?eWNDTCtDU0I0M2ZIdzJrYlgvWml1YkhhNzA4U0lJOFZEUlVyWUs4UTN2aDI2?=
 =?utf-8?B?dWJNMjJGUWJlb090SmkyV2U2V2lwZWdNODBGSW1DR3JCTHZRYWMzcTRJUTBa?=
 =?utf-8?Q?kWuy6KYz+RaGj5eLwxQtik8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 091c9938-d9ba-4402-721d-08db46b3f83d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2023 00:11:38.3535 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vzCoHiVKOq2jq6VmiNZb7VuQGZ7CBIigDoEYlKKq+rmAo4+z2N29F39p0iQYHOW3KrhfizILX0eocrzA82ExvHC28/9Ac4fuwAymRsNx/mU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7825
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] i915/pmu: Add support for total context
 runtime for GuC back-end
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

On Mon, Apr 24, 2023 at 10:41:41AM -0700, Dixit, Ashutosh wrote:
>On Tue, 04 Apr 2023 17:14:32 -0700, Umesh Nerlige Ramappa wrote:
>
>Hi Umesh,
>
>> GPU accumulates the context runtime in a 32 bit counter - CTX_TIMESTAMP
>> in the context image. This value is saved/restored on context switches.
>> KMD accumulates these values into a 64 bit counter taking care of any
>> overflows as needed. This count provides the basis for client specific
>> busyness in the fdinfo interface.
>>
>> KMD accumulation happens just before the context is unpinned and when
>> context switches out. This works for execlist back-end since execlist
>> scheduling has visibility into context switches. With GuC mode, KMD does
>> not have visibility into context switches and this counter is
>> accumulated only when context is unpinned. Context is unpinned once the
>> context scheduling is successfully disabled. Disabling context
>> scheduling is an asynchronous operation.
>
>This means guc_context_unpin() is called asynchronously, correct? From
>guc_context_sched_disable()?

correct
>
>> Also if a context is servicing frequent requests, scheduling may never be
>> disabled on it.
>>
>> For GuC mode, since updates to the context runtime may be delayed, add
>> hooks to update the context runtime in a worker thread as well as when
>> a user queries for it.
>>
>> Limitation:
>> - If a context is never switched out or runs for a long period of time,
>>   the runtime value of CTX_TIMESTAMP may never be updated, so the
>>   counter value may be unreliable. This patch does not support such
>>   cases. Such support must be available from the GuC FW and it is WIP.
>>
>> This patch is an extract from previous work authored by John/Umesh here -
>> https://patchwork.freedesktop.org/patch/496441/?series=105085&rev=4
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Co-developed-by: John Harrison <John.C.Harrison@Intel.com>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++++--
>>  drivers/gpu/drm/i915/gt/intel_context.h       |  2 +-
>>  drivers/gpu/drm/i915/gt/intel_context_types.h |  5 +++
>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 33 +++++++++++++++++++
>>  4 files changed, 49 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
>> index 2aa63ec521b8..e01f222e9e42 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_context.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
>> @@ -578,16 +578,24 @@ void intel_context_bind_parent_child(struct intel_context *parent,
>>	child->parallel.parent = parent;
>>  }
>>
>> -u64 intel_context_get_total_runtime_ns(const struct intel_context *ce)
>> +u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>>  {
>>	u64 total, active;
>>
>> +	if (ce->ops->update_stats)
>> +		ce->ops->update_stats(ce);
>> +
>>	total = ce->stats.runtime.total;
>>	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>>		total *= ce->engine->gt->clock_period_ns;
>>
>>	active = READ_ONCE(ce->stats.active);
>> -	if (active)
>> +	/*
>> +	 * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, the backend
>> +	 * already provides the total active time of the context,
>
>Where is this done in the GuC case? I looked but couldn't find it (at least
>in this version of the patch, it is there in the old version).

In this case, the backend is not providing the total active time, I 
guess I should drop this logic provided ce->stats.active is 0 for GuC 
mode.

>
>> +	 * so skip this calculation when this flag is set.
>> +	 */
>> +	if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
>>		active = intel_context_clock() - active;
>>
>>	return total + active;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
>> index 0a8d553da3f4..720809523e2d 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_context.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
>> @@ -368,7 +368,7 @@ intel_context_clear_nopreempt(struct intel_context *ce)
>>	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>>  }
>>
>> -u64 intel_context_get_total_runtime_ns(const struct intel_context *ce);
>> +u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
>>  u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
>>
>>  static inline u64 intel_context_clock(void)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> index e36670f2e626..58b0294d359d 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> @@ -38,6 +38,9 @@ struct intel_context_ops {
>>  #define COPS_RUNTIME_CYCLES_BIT 1
>>  #define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
>>
>> +#define COPS_RUNTIME_ACTIVE_TOTAL_BIT 2
>> +#define COPS_RUNTIME_ACTIVE_TOTAL BIT(COPS_RUNTIME_ACTIVE_TOTAL_BIT)
>> +
>>	int (*alloc)(struct intel_context *ce);
>>
>>	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
>> @@ -58,6 +61,8 @@ struct intel_context_ops {
>>
>>	void (*sched_disable)(struct intel_context *ce);
>>
>> +	void (*update_stats)(struct intel_context *ce);
>> +
>>	void (*reset)(struct intel_context *ce);
>>	void (*destroy)(struct kref *kref);
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 88e881b100cf..8048a3e97a68 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1402,13 +1402,25 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
>>	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>  }
>>
>> +static void guc_context_update_clks(struct intel_context *ce)
>> +{
>> +	struct intel_guc *guc = ce_to_guc(ce);
>> +	unsigned long flags;
>> +
>> +	spin_lock_irqsave(&guc->timestamp.lock, flags);
>> +	lrc_update_runtime(ce);
>> +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>> +}
>> +
>>  static void guc_timestamp_ping(struct work_struct *wrk)
>>  {
>>	struct intel_guc *guc = container_of(wrk, typeof(*guc),
>>					     timestamp.work.work);
>>	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>>	struct intel_gt *gt = guc_to_gt(guc);
>> +	struct intel_context *ce;
>>	intel_wakeref_t wakeref;
>> +	unsigned long index;
>>	int srcu, ret;
>>
>>	/*
>> @@ -1424,6 +1436,10 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>>	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>>		__update_guc_busyness_stats(guc);
>
>How do we know the context images are pinned at this point which is needed
>for the code below? Where is the pinning happening?

Ah, maybe this should just call - guc_context_update_stats()
>
>> +	/* adjust context stats for overflow */
>> +	xa_for_each(&guc->context_lookup, index, ce)
>> +		guc_context_update_clks(ce);
>
>Here are we saying that we need to do this because the context can get
>switched out (and context image saved) and back in multiple times without
>the context getting unpinned? Otherwise guc_context_unpin() would call
>lrc_update_runtime() and we wouldn't have to do this here.

Mainly for 32 bit overflows. The busyness value obtained from the 
context image is a 32 bit value and could wrap around. If we keep 
grabbing it periodically and accumulate it in the 64 bit value in ce 
stats, we should be good.

>
>> +
>>	intel_gt_reset_unlock(gt, srcu);
>>
>>	guc_enable_busyness_worker(guc);
>> @@ -1505,6 +1521,17 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
>>	guc_enable_busyness_worker(guc);
>>  }
>>
>> +static void guc_context_update_stats(struct intel_context *ce)
>> +{
>> +	if (!intel_context_pin_if_active(ce)) {
>> +		WRITE_ONCE(ce->stats.active, 0);
>
>This is related to the question above about where is ce->stats.active being
>updated in GuC case. If it is not being updated then we wouldn't have to do
>this here, we could just initialize it to 0 once or it might already be
>initialized to 0 (if say ce->stats was kzalloc'd).

Agree, will drop this.

>
>/> +		return;
>> +	}
>> +
>> +	guc_context_update_clks(ce);
>> +	intel_context_unpin(ce);
>> +}
>> +
>>  static inline bool
>>  submission_disabled(struct intel_guc *guc)
>>  {
>> @@ -2774,6 +2801,7 @@ static void guc_context_unpin(struct intel_context *ce)
>>  {
>>	struct intel_guc *guc = ce_to_guc(ce);
>>
>> +	lrc_update_runtime(ce);
>
>If we call lrc_update_runtime from these 3 code paths (as is done in this
>patch), we would need to hold guc->timestamp.lock here. Is that happening
>(I don't see it) or we need to call guc_context_update_clks() here? I am
>assuming the context image is pinned here so pinning is not an issue.

Maybe will just call guc_context_update_clks() here.

thanks,
Umesh

>
>>	unpin_guc_id(guc, ce);
>>	lrc_unpin(ce);
>>
>> @@ -3455,6 +3483,7 @@ static void remove_from_context(struct i915_request *rq)
>>  }
>>
>>  static const struct intel_context_ops guc_context_ops = {
>> +	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>	.alloc = guc_context_alloc,
>>
>>	.close = guc_context_close,
>> @@ -3473,6 +3502,8 @@ static const struct intel_context_ops guc_context_ops = {
>>
>>	.sched_disable = guc_context_sched_disable,
>>
>> +	.update_stats = guc_context_update_stats,
>> +
>>	.reset = lrc_reset,
>>	.destroy = guc_context_destroy,
>>
>> @@ -3728,6 +3759,7 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
>>  }
>>
>>  static const struct intel_context_ops virtual_guc_context_ops = {
>> +	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>	.alloc = guc_virtual_context_alloc,
>>
>>	.close = guc_context_close,
>> @@ -3745,6 +3777,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
>>	.exit = guc_virtual_context_exit,
>>
>>	.sched_disable = guc_context_sched_disable,
>> +	.update_stats = guc_context_update_stats,
>>
>>	.destroy = guc_context_destroy,
>>
>> --
>> 2.36.1
>>
>
>Thanks.
>--
>Ashutosh

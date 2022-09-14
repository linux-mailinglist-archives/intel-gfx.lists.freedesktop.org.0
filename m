Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 725FF5B90F9
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 01:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E20710E132;
	Wed, 14 Sep 2022 23:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D9810E0A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 23:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663198626; x=1694734626;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gLT9zrNuzRN0Z8OqC3E79QD8mSZCQnEFA5BceDKJ3lU=;
 b=aof3i1zn/o2Vtum3MlKv+T7ezOz5R+yUw4OnmCWBx4LVBokQxaDfa3gS
 vg3UlAZ57+rIXUt3EWMGirBh4a6aUt/f7rthca3CdZtQCw1WrafOfM774
 9F3noYYdwP8BdLpIdi0yWxskZfQ1rdWvtcCvmjkVawuIRFUr2w4Qidgcb
 W5eWY5gXZsQIh64b9x4d62UOSsNBg4Z/Y4Hrxo+EBmNdvGZYQORVKwtd2
 3omkkpQ/3xAbBe4DDWqRFcuMjJ0CvTwbD/eKnMCTySn0fOfCpnQVOVfWx
 nCkLFvHplRBxV0r8Y+9LCS9LbzAziS5z5DJW8oC++X6HhbejOnypWQPBv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="296154841"
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="296154841"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 16:37:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="945710377"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 14 Sep 2022 16:37:06 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 16:37:06 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 16:37:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 16:37:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 16:37:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aCIeL/YmM5TVNEHNIFdecBl4CGkeaZPwzWQ9ZD4kODhmfQ2mkCPAUBGRCn3pFqiFJS8XfLR6+kFaz/Iq6TeD2Q/5KD/VET4uAD2Syz5Dkz6DPYB4plgYpx0CkQ3hTl3MP20dhyfl/6uOc2S7Hrn3KxrhA7D1PY3pjrzM9qeoglRv+1F+o8Yt7kbLwipcmiCsyBZmxOsk8Y+7FEtFuZf7PEHvZutSWGZcGb1T/HbjJPbPKl3BPjAGC5OvsH0mph0WWK/6bcRCPvUWEkyaNkzB1tGuqfyLEFpFpohO8qkCB+u5heKKtJSgAH22rBkSbLlrCFVWZ8aAl6v6PlXocVDzkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NfMqbXYts60bxeTeNIuVm+8u2WAxKquVf6lbFZeOK6U=;
 b=n8zdnco3zUIV+inR+dfyMAQm7U2nKH1koPMWzeao8dpxIFwtzqBtMnfYy+rqU5Gt2+lVVuUTS2ev8nSBDPrmRNaivi+9gk9iqgmkpKVBVHXyaCUkfO9jwr3OyNTEl4NEZ+Q7pCUqgUN4Fpf2M0JioTsH9qlgDeR40dhzVSmANvbIc7IqJ4qilmFXdMW13oujsk13YxbN6SSs5jdIafuvqZQrP7C9cmEAh6W40uwjH9mgEDVWb+EPCUcwfdmu4gJy9Vu7QXVZKodu3gmNYS/H+gAWodJOlWL/7TGD4RGVhtnUmKT8xwwBOCMZGRWEgVI1ThpN5D/zQKMnWxqVaqBfOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 IA1PR11MB6393.namprd11.prod.outlook.com (2603:10b6:208:3ae::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Wed, 14 Sep 2022 23:37:04 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 23:37:03 +0000
Date: Wed, 14 Sep 2022 16:36:27 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyJle7V9RS+xkrgz@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-2-umesh.nerlige.ramappa@intel.com>
 <87mtb85cvb.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87mtb85cvb.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::35) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|IA1PR11MB6393:EE_
X-MS-Office365-Filtering-Correlation-Id: 9adf7bcf-a138-41a4-82cd-08da96aa0749
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gbs2dCAZ+LtJpwy3gZllljT0+ERqUYYBheZE91Q578QehCsTd5shEknNHpjHAls95LmqIUoHEIooSKbufHJJh37XKQD58nvkCIZI939Vr0ebRI/RK2kniCHgU1+FK/YfkpLA90d8GgMFyvOroSxLFALNzOcNGM0fMgahvD1dqLErpky0o+2JkkvD1MVAzmcPpYqSvr8jx21H73unEmXZBqxJ4tcIFmSVYEWQfVYJ3bBerNTCHydtyqEgrvwHc4TD22Qs8SXASJqL8MlSIUEqyauz8n9rWdJbnuT7dDY5257PAt9CuOn/De7Kv+qGN5FigAoYiNuRwnKKTdQ1U0Cui7lz9Nbxbdt1WgD0wMdPq8HWoyTKMrF1Mtkyw6Ivc689//ROVlrKYF2q02O6jb1Y/IEGrYrsza6GvMHbL9BwYh8t5YOgCq550l4ovHQS9d+JlsLvAqBZxuDed7V7mfpPjHUiFgbzIfurNnjQbuOhZYYIlxiYooIp4yZn0AoxsPzGS0bqPrH54w33mgzJu5rbo+/uGI0S0AO+lZ0KxIJcK2wd2jwDNuvS4QHGfWxY9AJ4hYXytdj5tRQIFmSxgfvAXdO5bhnbsvZO78dClwB7LfTY23TN1bSDVfWFy2mcLmgQC9Ww3HJEgW7i7bC0l6d0iniFpCbj+gfNCJ+Qh8DnCIKPj9tVrBfnD9WRe38iQb4FR8MKIclzIaVA+eEkKe6LNDkqkQ9iAAXivt9HHLlJ05X7z93He02Q3Ame3DwvRUgLPXVEWjjTaz+QonykdcjX9qcZhDwKm2eiNm6ynACJgYc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(346002)(396003)(136003)(39860400002)(366004)(451199015)(26005)(6862004)(186003)(6636002)(6486002)(8936002)(316002)(107886003)(6666004)(9686003)(83380400001)(66946007)(38100700002)(41300700001)(2906002)(82960400001)(5660300002)(86362001)(8676002)(66476007)(4326008)(478600001)(66556008)(6512007)(33716001)(6506007)(21314003)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2pnV0p5YUVDM3dSdTdMcXkrcFFqeERJTVdQNENyNlk5MmgxUFBWb2VQTS9v?=
 =?utf-8?B?bHBWNWliNXEyYXduSGVhWXFzNGF2eWxMbDZha21ydDU0RnZJWjM2SUFKZkhL?=
 =?utf-8?B?emJoYWx0bDFwQUlJVjJ6WFNMTkhrZGxSSDdTb3ZFNmhKRm9WYkxxcEExb2pt?=
 =?utf-8?B?Q3psUE85TmdBV0dnbmN4eXNBTWsrN0ZTa2JNODJ0N0JkVFFzeU5uMDdNN2tJ?=
 =?utf-8?B?MndWdHB6OGNPMFlzb0plaUdzQzY3SmJZemNBYXdIRGdPV0ZXTzVUbDZab3Za?=
 =?utf-8?B?OElkbU1tWmtDSFY1cm43TXdOekR6SE9UMDVnYUFaaU5VN3RiNTlhdjJQMWQy?=
 =?utf-8?B?TllTcFd5b3h2ZHlVd1lHMDV3UmdURTkzQkNHNUpEUG5hKzVkYVZSaWRTYmxI?=
 =?utf-8?B?d3hzUHFSd1p0cUN2QW84UDhSQUQyTm4xUWZxK3lxSjRCaTB4ZmMwVHFEUFVT?=
 =?utf-8?B?cFhYRlJjS1BhdDBRTWhRUnYyMWZ0V0hvb3NKOHIyYTc0bHZOMHdDU09FamZH?=
 =?utf-8?B?dUcwYVJ4c2YwUzhmL3NBTFRnaUlRUTk4VFgvY2tUSk5WTFJrQzdJaWF4TFpQ?=
 =?utf-8?B?aEVGcHJpQWdBbzlraGRpUE1vbVFBQjVHYVdjbjBsM3ZvZGt5VVJHbGRiK0dU?=
 =?utf-8?B?VGRacjNKUHlnOWxUSy8rbDhrQk5udnZxdGIycjNsUFR6ZFhrZ0RnTlRrK1A2?=
 =?utf-8?B?cjZLZ3Y0TmVJUHMveUJzdzRzZ2lvOUhTNUxNTTQvTWNDM1JsOEZ4SGRmL1BE?=
 =?utf-8?B?a2Y1OWttU1Z5eHVhbU9VU0V4U1pManJFdlJqNTBXdnBtVFVKSFF5cjNGQVFL?=
 =?utf-8?B?QnlxdlJpQ25Gc1NBbnhLclJaVVNQbnJIR0QxWHByUDAvRXd5M2pPc2dMT3B1?=
 =?utf-8?B?RnFRZWNsWFpHOHE1d3pDK2FVM1hjNGpUREVaR0RPanNkcHpZNW9hMEtJdmZD?=
 =?utf-8?B?MHo1M1ZsY0FDdU80OTFTSEtja1UwM3RobGkwSnFiVE5OMmZEUVp5dlo5dVRL?=
 =?utf-8?B?My8wVUZIV2doYTZPOWhqQmdLRWd6aUlwS09LcmZRTEo1d1hDMmV6MU5Uckwx?=
 =?utf-8?B?MVAyTHM5N0RZOGxnSUw1dXBhV3QwVXRvZDR1cmxHT1BnY3htMEgybjdFNjB4?=
 =?utf-8?B?b3FyYk9JampsZ1NHQWtWRzZORFFmTEczQnd0UWRnRGI4OE5TZlJFWWlzMWhk?=
 =?utf-8?B?ZDI0ODRsVEVmcEdUb2kzN3hRYU9XMXBnSGZOZEROVzI1WDdiVEtXbWlkYlUr?=
 =?utf-8?B?SUd2dHdFb0I5bzNPSE05dEVweGtwQVNValFGc2Z6Wms0d2dtcjNBeUJJcWk2?=
 =?utf-8?B?WFlQSS9WWFdVcFcrZ1R2eXFDK0NaT3NiV0huQ2Z3K3E5c3h0RW1TMmpxOXZj?=
 =?utf-8?B?WFAzb0ZzdGpHZmtCVW5hMDNWNjdHNkpoKzVHYnRlTG5CTDJCSVE1SUlGR252?=
 =?utf-8?B?cWM4b3dDaDBrRGVjUHIzaGRjall1bWpMZTA5MENZRjE1cVJKTTExT0pqVitn?=
 =?utf-8?B?RUJKcExiL0hxQmhDbnlDbDJ0cUt1NkpWTWRSRi9QZnErbm9KTmw1b1lFWjd0?=
 =?utf-8?B?TlladjIwbDM5T2lVOXgrd0pjWHF1bGlaSmc5Q09iY3FKeDZnWVdKNTM2bk5Z?=
 =?utf-8?B?QUtxek5WUERMcXExSTFpbmZRdksxVUhpSC9QR0Z4SUNpS0xUaVo0Y29YMU1l?=
 =?utf-8?B?MXRWREhEWFhja3pSMjF3bHFBUUNNZm5mOC9NQnFYQ2JlRVRXNlFhSklrZElu?=
 =?utf-8?B?RlcvRXF6REVONllBSjZldDhuM3FnNWdCOTdVdDVaQmFVWStDSFNld2JIbFlZ?=
 =?utf-8?B?K0dYRHhVYVFxcHpvaDZSZFVwdmxUYkZrRTdpUVlDdHZwQWFBU1F3MHN0Uk5I?=
 =?utf-8?B?T3k1SGFJNFJaTjFjUDZoeExFamQ1UDRyR0p6M3hPdVRiaUljN29FOGJ1VGRm?=
 =?utf-8?B?V2g4bnIwRWhrbUNCbm4yeGZDTFQ0Q01JMmtDMzRKU0Q4QWFmV2hBcFhHUWlY?=
 =?utf-8?B?Umdka0hKQ3E2dG1hWHYrUHdMNnU4L2xpZW15U2JuY05pS204d1hoYjFjY3dY?=
 =?utf-8?B?cFl0bWxCVjNjOFhuNFFpRk41emYwaDRiM3ltQ09pNVhDbWdJb3ZuUVBIcklQ?=
 =?utf-8?B?QUg4VmtNWW5qbHVPWTROUFJ5OURqcFVOM1hmSUNMd29JZFQ2UlZMUXprUzJw?=
 =?utf-8?Q?myYfCuQjTLPZ/pRiP784TQo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9adf7bcf-a138-41a4-82cd-08da96aa0749
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 23:37:03.7992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y5hOhqdJe31LQDwF/nfQ3eMuuZo8tcfRCsjzqvTiDSOkAXVUoNWDQ37QBi+Vs1Gm2PfWuCe1U60s/svDAV2FwRmE1bg9r1Ydd1w567nPTeE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6393
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915/perf: Fix OA filtering logic
 for GuC mode
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

On Fri, Sep 09, 2022 at 04:47:36PM -0700, Dixit, Ashutosh wrote:
>On Tue, 23 Aug 2022 13:41:37 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> With GuC mode of submission, GuC is in control of defining the context id field
>> that is part of the OA reports. To filter reports, UMD and KMD must know what sw
>> context id was chosen by GuC. There is not interface between KMD and GuC to
>> determine this, so read the upper-dword of EXECLIST_STATUS to filter/squash OA
>> reports for the specific context.
>
>Do you think it is worth defining an interface for GuC to return the sw
>ctx_id it will be using for a ctx, say at ctx registration time?
>
>The scheme implemented in this patch to read the ctx_id is certainly very
>clever, at least to me. But as Lionel was saying is it a agreed upon
>immutable interface? If it is, we can go with this patch.
>
>(Though even then we will need to maintain this code even if in the future
>GuC FW is changed to return the ctx_id in order to preserve backwards
>comptability with previous GuC versions. So maybe better to have a real
>interface between GuC and KMD earlier rather than later?).

Agree, ideally this should be obtained from GuC and properly 
synchronized with kmd. OR GuC should provide a way to pin the context id 
for such cases so that the id is not stolen/unpinned. Anyways, we need 
to follow this up as a JIRA.

I may drop this patch and add a message that OA buffer filtering may be 
broken if a gem context is passed.

>
>Also a couple of general comments below.
>
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_lrc.h |   2 +
>>  drivers/gpu/drm/i915/i915_perf.c    | 141 ++++++++++++++++++++++++----
>>  2 files changed, 124 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
>> index a390f0813c8b..7111bae759f3 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
>> @@ -110,6 +110,8 @@ enum {
>>  #define XEHP_SW_CTX_ID_WIDTH			16
>>  #define XEHP_SW_COUNTER_SHIFT			58
>>  #define XEHP_SW_COUNTER_WIDTH			6
>> +#define GEN12_GUC_SW_CTX_ID_SHIFT		39
>> +#define GEN12_GUC_SW_CTX_ID_WIDTH		16
>>
>>  static inline void lrc_runtime_start(struct intel_context *ce)
>>  {
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index f3c23fe9ad9c..735244a3aedd 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -1233,6 +1233,125 @@ static struct intel_context *oa_pin_context(struct i915_perf_stream *stream)
>>	return stream->pinned_ctx;
>>  }
>>
>> +static int
>> +__store_reg_to_mem(struct i915_request *rq, i915_reg_t reg, u32 ggtt_offset)
>> +{
>> +	u32 *cs, cmd;
>> +
>> +	cmd = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
>> +	if (GRAPHICS_VER(rq->engine->i915) >= 8)
>> +		cmd++;
>> +
>> +	cs = intel_ring_begin(rq, 4);
>> +	if (IS_ERR(cs))
>> +		return PTR_ERR(cs);
>> +
>> +	*cs++ = cmd;
>> +	*cs++ = i915_mmio_reg_offset(reg);
>> +	*cs++ = ggtt_offset;
>> +	*cs++ = 0;
>> +
>> +	intel_ring_advance(rq, cs);
>> +
>> +	return 0;
>> +}
>> +
>> +static int
>> +__read_reg(struct intel_context *ce, i915_reg_t reg, u32 ggtt_offset)
>> +{
>> +	struct i915_request *rq;
>> +	int err;
>> +
>> +	rq = i915_request_create(ce);
>> +	if (IS_ERR(rq))
>> +		return PTR_ERR(rq);
>> +
>> +	i915_request_get(rq);
>> +
>> +	err = __store_reg_to_mem(rq, reg, ggtt_offset);
>> +
>> +	i915_request_add(rq);
>> +	if (!err && i915_request_wait(rq, 0, HZ / 2) < 0)
>> +		err = -ETIME;
>> +
>> +	i915_request_put(rq);
>> +
>> +	return err;
>> +}
>> +
>> +static int
>> +gen12_guc_sw_ctx_id(struct intel_context *ce, u32 *ctx_id)
>> +{
>> +	struct i915_vma *scratch;
>> +	u32 *val;
>> +	int err;
>> +
>> +	scratch = __vm_create_scratch_for_read_pinned(&ce->engine->gt->ggtt->vm, 4);
>> +	if (IS_ERR(scratch))
>> +		return PTR_ERR(scratch);
>> +
>> +	err = i915_vma_sync(scratch);
>> +	if (err)
>> +		goto err_scratch;
>> +
>> +	err = __read_reg(ce, RING_EXECLIST_STATUS_HI(ce->engine->mmio_base),
>> +			 i915_ggtt_offset(scratch));
>
>Actually the RING_EXECLIST_STATUS_HI is MMIO so can be read using say
>ENGINE_READ/intel_uncore_read. The only issue is how to read it when this
>ctx is scheduled which is cleverly solved by the scheme above. But I am not
>sure if there is any other simpler way to do it.
>
>> +	if (err)
>> +		goto err_scratch;
>> +
>> +	val = i915_gem_object_pin_map_unlocked(scratch->obj, I915_MAP_WB);
>> +	if (IS_ERR(val)) {
>> +		err = PTR_ERR(val);
>> +		goto err_scratch;
>> +	}
>> +
>> +	*ctx_id = *val;
>> +	i915_gem_object_unpin_map(scratch->obj);
>> +
>> +err_scratch:
>> +	i915_vma_unpin_and_release(&scratch, 0);
>> +	return err;
>> +}
>> +
>> +/*
>> + * For execlist mode of submission, pick an unused context id
>> + * 0 - (NUM_CONTEXT_TAG -1) are used by other contexts
>> + * XXX_MAX_CONTEXT_HW_ID is used by idle context
>> + *
>> + * For GuC mode of submission read context id from the upper dword of the
>> + * EXECLIST_STATUS register.
>> + */
>> +static int gen12_get_render_context_id(struct i915_perf_stream *stream)
>> +{
>> +	u32 ctx_id, mask;
>> +	int ret;
>> +
>> +	if (intel_engine_uses_guc(stream->engine)) {
>> +		ret = gen12_guc_sw_ctx_id(stream->pinned_ctx, &ctx_id);
>> +		if (ret)
>> +			return ret;
>> +
>> +		mask = ((1U << GEN12_GUC_SW_CTX_ID_WIDTH) - 1) <<
>> +			(GEN12_GUC_SW_CTX_ID_SHIFT - 32);
>> +	} else if (GRAPHICS_VER_FULL(stream->engine->i915) >= IP_VER(12, 50)) {
>> +		ctx_id = (XEHP_MAX_CONTEXT_HW_ID - 1) <<
>> +			(XEHP_SW_CTX_ID_SHIFT - 32);
>> +
>> +		mask = ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>> +			(XEHP_SW_CTX_ID_SHIFT - 32);
>> +	} else {
>> +		ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) <<
>> +			 (GEN11_SW_CTX_ID_SHIFT - 32);
>> +
>> +		mask = ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) <<
>> +			(GEN11_SW_CTX_ID_SHIFT - 32);
>
>Previously I missed that these ctx_id's for non-GuC cases are just
>constants. How does it work in these cases?

In those cases we use a fixed id for the OA use case:

in gen12_get_render_context_id()
stream->specific_ctx_id = ctx_id & mask

in oa_get_render_ctx_id()
ce->tag = stream->specific_ctx_id;

in __execlists_schedule_in()
ce->lrc.ccid = ce->tag;

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh

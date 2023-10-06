Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE307BBDC5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 19:31:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E4810E555;
	Fri,  6 Oct 2023 17:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D55E010E553
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 17:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696613472; x=1728149472;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7wzaZB6yJo5cNSK/JA+I0Tcxp9QiMNTjOaZqseoCzR8=;
 b=NKCp6rXJ4IIhtRfscIiYnFiXpI4D2Luiy9USjcPOHjNPmt0iAPPeNRQ5
 jYPDsxj/ZR+7LPQ2cH3HN3BEiQz/7FDGhh2rAwuiLcXyHsPclYd75es8P
 VHgjchwbjk137zkb+5O03A4Vs6Px9FHpJ24GDT+94SsG4rPHmf/pWKe22
 mc+AIl8eF308f/DE0t0JnKLV//EIVA/JziL1Md2Qpm6ruhS3T4b6SEdlE
 gbH3IHjJWzuFNeZAtVO6p43go7CsiqCCUwI7v619osdG+UoKKeE/8NWsy
 6o1D+O5N21p1IUjNfCwNw85t4oFvTyWtH1wBRqMvaWVbGKhTVwiWlgf+C Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="382658289"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="382658289"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 10:31:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="787463479"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="787463479"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 10:31:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 10:31:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 10:31:11 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 10:31:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a4e486WTidDsOfjqbDat9WNzI+9Lhl0u97UHTl5a8fM3QB9UWaeozSROhVNPjpZWKabtxhY3/dcfkyIdwxpy/VPhwsxBg9Rl40lz3o8mcy7Dhp5wFIsc46WwT5agdv7aHrHY5IbkhlRUlE89aIWAZvIOt4m4b+2wNJM+DaZrw/ty1W0FrNYeBAD4QWuTtqGkMbkhtG7FhKcHjVOIYZmSPLNgbvckAgC5RRFZL/9E1HBDPgLiQtECO/m/dGJ52vem1kmEWzf+odVQ7e7CGeJeMARJ8TtI20b6FRPO7GZr6eYeCBd5lPqGKhyPf6DKQgDJZLTh+9t17GjwM/V6MC8dQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6AXEvfXrF7d8EFuEGWoU+q/ZRP6YcYUYSb4Dccrlm2g=;
 b=S0Ehz0j3BNiQsydSMZuZkIzEvKBUeFZUZe1eVliolRDhws8WLMjsCbM9m42EbM4iodB/lZVe87eZ5bHnhjxhEN7TTo3RI6qdCCymUUadOH3rWwGjZuLxew0+zvaFi29fR2Jc5Ln1sZKi48T5nMcRHIKTVJTnfcos/cIugpYHZo0h5/uzUw4fuf88/8t3EFCdinn2j9me53d2YfmReNwHffH3C1wTvMLX3Cq5BmcF+M/IyExp67IJoFnJB0IJlSm/HBfLljf+7cpWhCiDXlwU5v32zIoRvu0AOcYjx/fAIvh4QReZmcEFk2TWvlQ8H2HGUiGlFT8gd3+dFMqFAZSVgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MW4PR11MB6740.namprd11.prod.outlook.com (2603:10b6:303:209::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.28; Fri, 6 Oct
 2023 17:31:01 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 17:31:00 +0000
Message-ID: <408558ee-ffdb-0b80-d665-72ce0aed9ec3@intel.com>
Date: Fri, 6 Oct 2023 10:30:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-5-jonathan.cavitt@intel.com>
 <ba76f1e1-ced9-9201-de8b-91cd63e5edf3@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <ba76f1e1-ced9-9201-de8b-91cd63e5edf3@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW3PR06CA0018.namprd06.prod.outlook.com
 (2603:10b6:303:2a::23) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|MW4PR11MB6740:EE_
X-MS-Office365-Filtering-Correlation-Id: bb218a4d-423f-4817-7897-08dbc692022e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cOrvQyT5RRUhA4GumznbAq+vck17dkz9PZPe1RU6hZo7LNXL7ZtdSx+QQ6wsebde4zPM0i6DNNJzXjK+++vSlgo2sa4BQSoWMmHmQbHe/bHAh5Y793M0wbZ5hrl9UBmAZVLpx2K7mdc7UWDqqsKoh7dXRCzHDNthVGiOAwdgj3Agognxtt3nNs9HLttpQK3JM/Y9mYyR7LVXVzpSjHPvEHGXQl27/EgCnfNgncL9J20wzTuhQghV9Kvr0x4+GG2/vOp+nsADRrG84tTmdexJqhq+rZsBDRFXtr9xgL4kg810n72L+fNuTiijGFcF21bJntwu76gAtXoVgcfAog0tX6K2Yo5jLW32orSSEUcTxBn748S0IHUNoj7eSbscg2A0OPxpuyFCoo6z8C+WV/D0cNroZ18JCrFCHNoPcLQH3Yf+fJbrV3vhnojV+eiV5Cpl6QnySrl9vhlOt22wTOJUbQ8wcywStH71NURYuUzVrsLeNUTBtDe8VilNvdaMYn2xRyFj2ObsrfkKG5DYFR5RdkzpJOic995Q0H34fgVyV7G1m83QrG85FXcY9MovtTa4u4/6XL1Xg1ailjG3yoqakS92RylLiQZVgCWPoDDdLJRNQf/m02TgodWokXk3Icpyc9ZZpxGRGiuK7cRoO5hpnA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(39860400002)(366004)(376002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(316002)(2616005)(82960400001)(38100700002)(86362001)(31696002)(36756003)(83380400001)(41300700001)(66946007)(8676002)(4326008)(5660300002)(8936002)(66556008)(66476007)(110136005)(26005)(15650500001)(31686004)(2906002)(6512007)(6506007)(53546011)(478600001)(6486002)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmZZcEp0SGNKeHpUdEtpaXdPZFZlY3ZEbEQvMkUrZS83bEl0VXJqdjZRUkpq?=
 =?utf-8?B?MEVDQTFyckZiSVE0VWhINU5ZTDNaSzZsaDJUV1BpamJwMmcrRVpiaDhnRi9i?=
 =?utf-8?B?MjRUWUlOcTJ3TXZ2Z21YdTRkSE51ajJnUnNZOC9Ua0N3TWdFNlZTQUtxMFQ1?=
 =?utf-8?B?bEFWdXBSKzlRRm5FSGhHQk9hMEp1TlV0cEQ1dkxYRVZVN3YyZitzU0dLbmMy?=
 =?utf-8?B?THhUK0FEbzhIZGdFU1FRMWt4a3N2b0xDR3BCNExFNEZLS2d5YkNnM3l6aHd1?=
 =?utf-8?B?UXY2V0pFdTNIWTZ5R2psZU9KQWgwcGxSdGl2aGwvN2hwZlRhcnBwR3FuSVFr?=
 =?utf-8?B?K05memFvN21kTFFpZ1ZJT2hjMllFdlpsZmlFaHRhSU5oMUtsOWE4YkZUbFVX?=
 =?utf-8?B?WTFBNXMweVJZVkFla21LeitLNis2TkFReURMQlRBYzJPNUxualdwZStRUDhu?=
 =?utf-8?B?RUlibjE4L1dsUFdWUlV6NUt2L242RXBPenNUTWFSNmJkTWpoU0djQzExZ1gw?=
 =?utf-8?B?M0ZuMzBZWEFIY2F5bEtqODZxb1BsWHF0ZUZvVE05WDBicmZqZXRMblY0Y0dS?=
 =?utf-8?B?RkVvandpRUZZZ3U2cGNuZHVXZmIxNXZRYTQ1VjR5WHlXUENSWHVBSjFzUE5r?=
 =?utf-8?B?ZkNDdVdSUDZGNFFSVnRxMmliN1dlTnpPMEZXdXVyM2h1YnNyQXUxQXBwYjAw?=
 =?utf-8?B?bjh4dzNqaFNJUGFSRkluUDJzN1hQL2FHK1UxSGxCR2N4bjdiVlArd29RUmV2?=
 =?utf-8?B?WkM3Z1h0dW8vV2lhVWhla211Q3FBK3VzUE53K1hyVHRCemFzalM5NkVEYkUr?=
 =?utf-8?B?ZTNibmRYRjd2OThIQkNGbFg3Um5ZQm9MUW5GakVRWlY2dWFZelZvbGFiRlhR?=
 =?utf-8?B?eGViL0IzbmxCR0dGM2tNNExlNGt4aGlIaWVWWm51eWhheEo3WG9QLzFURzVm?=
 =?utf-8?B?MEw4eUNKc0ZFUFY3ZUsxM0JjYlp4SHNscWN0TFpmTXVDVlM4aUh3Ym5WcXBK?=
 =?utf-8?B?bG84UGNqNW5iUlpHbU5vQ25vWkVNOEllNnZ6RGZOaDdGT0hyalpSK1lCeDYx?=
 =?utf-8?B?UnU0NDBodk5lOUZEMHUyZGFUSkUvaVdueUdGaUJsYmprN09WS3VlMEwwZjUr?=
 =?utf-8?B?M1kyN1cwakg4aitWSFI3QlQwVDE1NVlMSWF1d05ISUJBUnpMSC9ETDV1aS9w?=
 =?utf-8?B?Njl5S2NISUNXWnlGNlBZL2dHWHBCanJNV1k1TG9BZXNlbVllMjFIWlJoMHFh?=
 =?utf-8?B?Z1gwNHNhU0luZ1VXSitNbmhFbDk2akZuM2RMTFdvSmFFYitLRjZVNm9XQkk1?=
 =?utf-8?B?bUhwQStGdGFackRFdkZraTRCeGdTcVFXbll4d2dRUFNOdHNkRTZmazV6OUZL?=
 =?utf-8?B?RS9YT0l2ZVNYeTFVd0FMSWc3T3I0Y0dYZUg4RXpzeTlBSnZJOTkzRWxsekF0?=
 =?utf-8?B?MjY2SGZIR24zNVhCekErNnAvSS9mUk1qSFVPUkRqTVlzNHkvT1A5dDlaS3pj?=
 =?utf-8?B?YUJCbGVVZitZZ3I3Unp3VG02MmRjWGxsdlUxTWdvMEg3dUxXOUlkZ0hyeXJW?=
 =?utf-8?B?dG5EL09zaXlyTTBPdGswcENHUHNvMnB1OW1iVmIyVUJQZWttTFJZOWpQdXRO?=
 =?utf-8?B?Ulk1Sk42b055Nkp3TDJQcHFWeUFNcDducEFtYlRSSk5sTWUrZHp6RE03RzZv?=
 =?utf-8?B?M1BMdzFlMDBnYjNYYmdDcFBYR2RraE5pSVhJeG81MTYrcCtxV0VPVGNTem9q?=
 =?utf-8?B?b0MzcXRESmN0QTg3QjV2empyeUhHb0dNckd1ZUlXQzluSkE2NDFqM0RNL0tt?=
 =?utf-8?B?dWx4cW81Y2YyMmVMTVpUR21LeUtlZTNXUGtPdkNpYW9JVkQrUHpuWW5wVytl?=
 =?utf-8?B?RXIwWWFQNGVLV0c5bG5wR1Jzbk1vN0JHYlBrOXJHUEZyUEY1dWNGWjdid3dZ?=
 =?utf-8?B?blVLaFArbTlTQWpyNitZalVMOVM3SHNmbjRhZ3grcW9hcGFDUDFoNDdIVHEy?=
 =?utf-8?B?REtray9jUVo5enpEL2tyblAvOWV6MmlqMFpGaVFrTUlkUUJCWWxaOXZQOEow?=
 =?utf-8?B?bEg0OS93aFZqQmJlTnFJSndMU2JxbEJSN1diNTRGbms2aEFFSlpuaGltSk9C?=
 =?utf-8?B?eE5DLzUrMVJFcEhCNmtzaHZwOEFZMW1VSWNmZmV6dGZ4QXZzZFZobVVxVS9v?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb218a4d-423f-4817-7897-08dbc692022e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 17:31:00.8602 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L7fiR7QwQhWc7/CJrSQD5Luot65ut6z9V+JPCryW+wDYXRJ5ZYzkufy3I72pEjriZXi+Q4FJV7seChwmQH9CBCzKsHjlgpSrGW09JzMI0Ng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6740
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 3/5] drm/i915: No TLB invalidation on
 wedged or suspended GT
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 10/6/2023 03:23, Tvrtko Ursulin wrote:
>
>
> On 05/10/2023 20:35, Jonathan Cavitt wrote:
>> ...
>> +static bool intel_gt_is_enabled(const struct intel_gt *gt)
>> +{
>> +    /* Check if GT is wedged or suspended */
>> +    if (intel_gt_is_wedged(gt) || !intel_irqs_enabled(gt->i915))
>> +        return false;
>> +    return true;
>> +}
>> +
>>   static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>>   {
>>       struct intel_guc_tlb_wait _wq, *wq = &_wq;
>> @@ -4763,7 +4786,8 @@ static int guc_send_invalidate_tlb(struct 
>> intel_guc *guc, u32 type)
>>       };
>>       u32 size = ARRAY_SIZE(action);
>>   -    if (!intel_guc_ct_enabled(&guc->ct))
>> +    if (!intel_gt_is_enabled(gt) ||
>> +        !intel_guc_ct_enabled(&guc->ct))
>
> IMO this reads confused but I leave it to the GuC experts to decide 
> what makes sense. Not only that it reads confused but it does inspire 
> confidence that it closes any race, since this state can still change 
> just after this check, and then the invalidation request gets 
> submitted (contrary to what the commit says?). Only thing it does 
> below is skip the wait and the time out error message. Again, I leave 
> it for people who know the GuC state transition flows to bless this part.
>
> Regards,
>
> Tvrtko
Regarding confused naming, I personally still think that 
intel_gt_is_enabled() is a bad name. Even the comment inside the 
function does not mention 'enable', it says 'wedged or suspended'. One 
could certainly argue that the GT is also not currently enabled if GuC 
is in use but the CT channel is down.

Regarding race conditions, the only things that can take the CT channel 
down are driver shutdown, suspend and GT reset. On the submission side, 
the assumption is that the scheduling levels of the driver are not going 
to call in to the submission backend without suitable locking held to 
ensure those operations cannot occur concurrently. Is the same not true 
here? We have to guard against the situation where the call starts from 
a 'bad' state, e.g. wedged. But the lowest level of code can't be 
expected to take higher level locks. From all the way down here, we have 
no idea what the upper levels may or may not be doing and what locks may 
or may not have been acquired, and therefore what locks may or may not 
be safe to acquire.

John.

>
>>           return -EINVAL;
>>         init_waitqueue_head(&_wq.wq);
>> @@ -4806,7 +4830,8 @@ static int guc_send_invalidate_tlb(struct 
>> intel_guc *guc, u32 type)
>>        * can be queued in CT buffer.
>>        */
>>   #define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
>> -    if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
>> +    if (intel_gt_is_enabled(gt) &&
>> +        !must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
>>           gt_err(gt,
>>                  "TLB invalidation response timed out for seqno 
>> %u\n", seqno);
>>           err = -ETIME;
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c 
>> b/drivers/gpu/drm/i915/i915_driver.c
>> index ccbb2834cde07..0c9d9826d2f41 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -72,6 +72,7 @@
>>   #include "gt/intel_gt.h"
>>   #include "gt/intel_gt_pm.h"
>>   #include "gt/intel_rc6.h"
>> +#include "gt/intel_tlb.h"
>>     #include "pxp/intel_pxp.h"
>>   #include "pxp/intel_pxp_debugfs.h"
>> @@ -1093,6 +1094,9 @@ static int i915_drm_suspend(struct drm_device 
>> *dev)
>>       intel_dp_mst_suspend(dev_priv);
>>         intel_runtime_pm_disable_interrupts(dev_priv);
>> +
>> +    intel_gt_tlb_suspend_all(dev_priv);
>> +
>>       intel_hpd_cancel_work(dev_priv);
>>         intel_suspend_encoders(dev_priv);
>> @@ -1264,6 +1268,8 @@ static int i915_drm_resume(struct drm_device *dev)
>>         intel_gvt_resume(dev_priv);
>>   +    intel_gt_tlb_resume_all(dev_priv);
>> +
>>       enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>>         return 0;


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B2D7BBC90
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 18:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2B710E534;
	Fri,  6 Oct 2023 16:19:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25BBD10E543
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 16:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696609141; x=1728145141;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=GPmvQdhn2/KWEohHWnfGSV2v1Tf1QSEbyF9P2sOIGNE=;
 b=LgIldkvjfm+DGJAgNTd7kajj5t8+Wn66+StiVesN0sxmh3S9tYObLerz
 QTv/NDi+Ls7V0aOa6oh1NOa2uAIPRQWtYcDRj6vusdJZPVyn64TtLx0Mw
 dtULa92Icqf+SZr2/gJ+XFiQVtwVASaHDAzR0YO8+3dYsmfkZQOXI9F3I
 cbkF8M99PqzfTSLh9QIB+bP76llW591BgVLV6Rxgqch743D/AZrf5dRAC
 0BTTyZDSOAmUbVDGVMe+IrjvTn5oCFiWIcbed4dAyiBGTLIxPjKGgLf2h
 nJLDKG3+pdB40tDz/UPzIE9oYXHUPPtxRFXEPqV4dTPGp6XYSq4sJmCGk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470046451"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; 
 d="scan'208,217";a="470046451"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 09:19:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="752237011"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; 
 d="scan'208,217";a="752237011"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 09:18:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 09:18:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 09:18:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 09:18:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=msnmGPAE9u7A6cz1i93VXMwXefZ1TiWBrre6EKITQ8OVRmliiSFkOvcDs6fDosg+6ckY8nuH41XqcjonK3N4PclzbCuml0sXyMrgW0lm9WyGRHWV0enwIQDUAskIAHIzo3CITc/YmKoD0QYU4+XwcrkpBCQZcjhF05XLYHbTW1qryhOY7R+ooqeLSPFAr268MZHJvv9CS6r//twsjbhJHULOYoAYIUq5Qd8AV6MVyb3OWhtAYGGp85hu0X51WE3AAvSZx4cef/9qXu/L9oPyLupX6XF8rxG11zk2O0w/YVWRZ5vWoiKaR3r6dCbcIDN6OSKC2u9QusaJ89HRAT4TNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EYPLmJ8EPfDWfacaqAJcoyEUJQIiGpqU8mJyXq8iRRg=;
 b=AqZ7FoQTgU0k+kQkJ/FaWMEPuWccbZLgje76i5uCl0gjnJ2wkt0rjlb2eVbtxy9dS3ZlrMcSkKPjZCXaEeXA8sArfJthL0GF+y06QqrB7+2/XY0nxCnIXH6SSZy2+KwEcBI/dLaTo28Vwf9AhJWkH6t/2/5kgALuw4dOVXH/v7l9yrWZfXhE5JAy5qwilT40/faLxfhdkUelJeURsJ6iaOTGbLs7AuyQhYeTdgA5zcWPSPmKDw00ZqiePFwKnn2+cWeERRZL0YmPrgfKhmDboslr5qGER0djIyNzwmvUcT+9dyiivZ3QdTlcc73QSxuqjU3WEKvnHFO7PgUuFSYwaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CH0PR11MB5706.namprd11.prod.outlook.com (2603:10b6:610:ed::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.38; Fri, 6 Oct
 2023 16:18:57 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 16:18:56 +0000
Content-Type: multipart/alternative;
 boundary="------------NIm5u8ribF0i3tvu7EKxsCfm"
Message-ID: <cae4f144-2e88-9c3c-985b-849e7f5ff123@intel.com>
Date: Fri, 6 Oct 2023 09:18:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
To: Nirmoy Das <nirmoy.das@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-4-jonathan.cavitt@intel.com>
 <4f9ddf13-d779-e2ff-2baa-73d5d35c5009@linux.intel.com>
 <b95d8be7-c546-1b1c-3975-a4ef6257a28d@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <b95d8be7-c546-1b1c-3975-a4ef6257a28d@intel.com>
X-ClientProxiedBy: MW4P221CA0018.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::23) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CH0PR11MB5706:EE_
X-MS-Office365-Filtering-Correlation-Id: f278408f-b46d-4d06-bb88-08dbc687f0d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2mTyAOiKfbHHswu0EYpT2jFGMtnuIF7D96KJmJVMR+hSgFTtKmGjaYrvUvMVqlrr6J0TjLF99qwmgcUFUD/dS2KIvv2CXsAJtfPfmoET4z+/iguRAQQzIRGdMkatlS9ET1d4tiB35s3Opi/rH/aljOsRGcE41CJTnDxz9lA6xZsqxuxmM8y3EHLyWK+xxuU90W0IbeDoyKr9RSAYzGDPLzswgrdtFsQoeT/wg/ckDwUcjyeUvMEyq920nniaMiTcN07VtfLRU2KiXgDSFSv4rgE4LxnB4DisL22iSgKSqV9VEst0Er86GwMWn6YcP+2c5XNPEWTIG/AaAqJY71Rb2jYHOWgKlNuE3qMdrfNT9fX6QFzItoYtZpHA5ENuaEi7C3lxO8ZbsDt+tBlH9XIWg5vAxyL1CJSwH6q+xx+LlFjP6kx/aBRAJIGM/ETZwgK7szFM43/qN6gwmiCx2qdI40KE/Jp62UmeKWlgKKpx4y4I7ADknU8kOy/Lu5W3TODaXk4ShgHz7NSfJJTFWzAdqVFtgXGq/bpI0UcKmTkuqct72Rlbq9yVuOF6Vq5eEwBF2sWJwaF/KL83vHp5lQtA3i4xCnI9bTfGfe676lISqvUQQLOCIosqOKUru7Xqw28aBnbJWhm3NlrVictCPSN41Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(346002)(376002)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38100700002)(31686004)(5660300002)(8936002)(2906002)(4326008)(8676002)(41300700001)(66556008)(66476007)(316002)(66946007)(110136005)(2616005)(6506007)(36756003)(26005)(33964004)(53546011)(6512007)(86362001)(82960400001)(83380400001)(31696002)(478600001)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmxZT2pKdmt3Und0aUNJd3hHYU9OS1JjaTVwcmJYbnpOY09sUEdvbGtJa0w0?=
 =?utf-8?B?QkJLN3g2bHFhd3FRT0V2bklRcjRldW5ldERnRjFUTHdwdGxneVJSVEJUSER6?=
 =?utf-8?B?YkdtK2xRZGtkbm00ZmE3aUVUZnI5MGRjMUl1anFjcjdVaGEybU9kR0toWTk4?=
 =?utf-8?B?TlQ2MmxpNGJUMUZNZE1Qeld1Y3pqcHhyN0p1UWwwMlVweU9OTThRNUxjMzFt?=
 =?utf-8?B?cTNURG9kSlNDeGx3eTF2QkhTQVNxbndLMG5BQzdOQmtrT0Q4alFSeWt2aVJu?=
 =?utf-8?B?Sm1Wc2IycnBQVE5aMG1HUWxxUGU3VU51YnllVzlVZ2JDczRyWVpvaHpTdnEx?=
 =?utf-8?B?ZkdGWDVleGRWUXRtZGcwSnRWak9nZUZ6QU51dE5iTWFhY2VobGpqVUV0Vm5w?=
 =?utf-8?B?SXYvYy9oLzdTbDFpV3R1YWFwUmQxOXNGa1lTTkVlekFLdm53c1NmeUZyb1gw?=
 =?utf-8?B?OG1idXR1bFJ2QUdONWtXSCtjaFhMKzhCb1VENlpzQ1VzN0xFRmlJRDk3alBl?=
 =?utf-8?B?ZWp2b29UWlVtdk5xOXVyNUkrS2dqMTByb0I4Y3JwMWoyc0xSMkpOOE1ZSUhT?=
 =?utf-8?B?WTlVbVhYSElMNisyZUNHNVZNZjI1VGxlUXk1MHRsTU9heWlLeHpoWUpwbmE1?=
 =?utf-8?B?Ny9sNGtQYURYSFRCOFllRXFpcGs0UkdXMG9DRGUxZE5tN25EQ3I1WWhEdG1j?=
 =?utf-8?B?Y2NXQWFIV25qVWh2SlRoY3dKNG54N3BMTkRVRmd3NTFpRERQVnZ1clJwVUNl?=
 =?utf-8?B?ODNTd09aZ2lCYUR1ZkZIcEYvODgySmlhRXhUeXI0azJFWjVWTlJhWENtaWRy?=
 =?utf-8?B?OENjYm5RTXdvZDNxWXp2bzdBQW5rOEhWblJzdzg1TVpWdGVCdEoveVpua2Rk?=
 =?utf-8?B?S3BSNVpKdmx3enBWL1gzc05KdEd5MThMYkpCOW5lbjIyUkpxbEdxbXN1TlRK?=
 =?utf-8?B?RzR4amVKTE0xTExZWDU4UysrYW1aMEhNUlVSbmtUeVBCWk96SWlOeFF2bENC?=
 =?utf-8?B?YmJ6UnpaTEdCdkgvR2ZPSDNHMk00Z3h5T3E0ODQ0UGtJT09uVHVMUURVT09a?=
 =?utf-8?B?ekUvRHFEeGl6SmcxZ3J4cXhMR2NaREhQb3BMekQ1dStETmY5aXlUODduZDdZ?=
 =?utf-8?B?K1pGcnVVZjl1U2J2aFI3TjBxdmlVR0F0OUg0ZGxPbXBvaUxYVk10cXVKSHBD?=
 =?utf-8?B?YjJmeHA5djN0QkpQNURXYXpmNGFENjRSQm45WDlTdWVacmVzdU1IOEY3N0hH?=
 =?utf-8?B?WThLRmtTcjMzREp1My9SY0VNS3gxaWdFQmZmZjJWbEQwaVlZZVVVOUpBS2Vm?=
 =?utf-8?B?TzVnbFoyTlNneDZwZzlKOXF1YjVhQitlS09BaHFSWnJVRkRRYThZTXFzeWUw?=
 =?utf-8?B?TlVEUUhkc0JZeWMvT2lScDFGajI2OW1oZTdmeTNsQWJUcFVTd2xvcDIyNVda?=
 =?utf-8?B?MWtUZ3E1MVpGZmhNVkxTZklRMUlwY1F4Wjh0RTZBaWNKVTBYbk9ZNnNIYzlu?=
 =?utf-8?B?UlB6bXAyeERTNDB5dExWRXJMWGFHTWczMkVyY1lUN1VHRkpQa2pHQUdQaVdO?=
 =?utf-8?B?ZmZiYys4akkzbjMwSmRsRWxvekVLS2RIaEpHM2I2YUN3Y3l4aTNrbmY0MWJt?=
 =?utf-8?B?VTNMUnVYQjhmS09RTGtWSDZaUElOVk9IenlJR1lKbGZQaExZY2pWbXlzWmFC?=
 =?utf-8?B?eVlqVW4zK1pPcnY1QXYwcVFQS3JuWVR0MFdoUy9nNGUzNU5CYWoxb3NpMmRM?=
 =?utf-8?B?YzljV1l2UjZxUk96WURTb1NodWRZZjc5cGpwN1VxTlNWUDVDcDNyekJEOWVq?=
 =?utf-8?B?dThDL3VCMTR5TVRESTNXeUhxbWNseHI0SzZHNkcyWlBoc3JpcU5MSTArbmdy?=
 =?utf-8?B?aDErZzlFanc3MDZSQnljc0N2MndSUEVtYVVGYTEzenNoRkRNRHJKeGhnUFBS?=
 =?utf-8?B?eFRiOUdaWmg5NytZVENGNTduZGx0bG5hcnFQSXFPai80bDI0SUVpVW45em55?=
 =?utf-8?B?eUZuRXZxbFo0Yk9OSkxWd0lIa2o5VmZRU2d5ODMwdWFwanZzOE81eW4wMklT?=
 =?utf-8?B?WGFsc3hqaXQ1bUJ0WkgwdURwL3FlS3hLcUlGZVpzNWxibnpiUTdpbGpxbFZ4?=
 =?utf-8?B?MzBRUXErUVlRZWVYRnBuNkR3bHdoSVIzK0w5M29Kc1lLakwvVlNuQlpiQ0tD?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f278408f-b46d-4d06-bb88-08dbc687f0d3
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 16:18:56.8013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l9jLX24d6ZHeuVWLHH6WRD67Xy2d0Yd2IGCHX83jgVV+PlElmSO7XQBjNOIgkjPlsMbmEibxb9sb+wAw5gnaU4xVKUEMhQDkDv+8uZCVdAo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5706
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 2/5] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------NIm5u8ribF0i3tvu7EKxsCfm
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 10/6/2023 03:20, Nirmoy Das wrote:
>
> On 10/6/2023 12:11 PM, Tvrtko Ursulin wrote:
>>
>> Hi,
>>
>>
>> Andi asked me to summarize what I think is unaddressed review 
>> feedback so far in order to consolidate and enable hopefully things 
>> to move forward. So I will try to re-iterate the comments and 
>> questions below.
>>
>> But also note that there is a bunch of new valid comments from John 
>> against v7 which I will not repeat.
>>
>> On 05/10/2023 20:35, Jonathan Cavitt wrote:
>>> ...
>>> +enum intel_guc_tlb_invalidation_type {
>>> +    INTEL_GUC_TLB_INVAL_FULL = 0x0,
>>> +    INTEL_GUC_TLB_INVAL_GUC = 0x3,
>>
>> New question - are these names coming from the GuC iface? I find it 
>> confusing that full does not include GuC but maybe it is just me. So 
>> maybe full should be called GT or something? Although then again it 
>> wouldn't be clear GT does not include the GuC.. bummer. GPU? Dunno. 
>> Minor confusion I guess so can keep as is.
>
> I agree this is bit confusing name. We are using 
> INTEL_GUC_TLB_INVAL_GUC to invalidate ggtt, how about 
> INTEL_GUC_TLB_INVAL_GGTT ?
>
The GuC interface spec says:

    GUC_TLB_INV_TYPE_TLB_INV_FULL_INTRA_VF = 0x00
    Full TLB invalidation within a VF. Invalidates VF’s TLBs only if
    that VF is active, will invalidate across all engines.

    GUC_TLB_INV_TYPE_TLB_INV_GUC = 0x03
    Guc TLB Invalidation.


So the 'GUC' type is not GGTT, it is the TLBs internal to GuC itself is 
how I would read the above. Whereas 'FULL' is everything that is per-VF, 
aka everything in the GT that is beyond the GuC level - i.e. the 
engines, EUs and everything from there on.

So I think the INVAL_GUC name is correct. But maybe INVAL_FULL should be 
called INVAL_VF? Or INVAL_ENGINES if you don't like using the VF term in 
a non-SRIOV capable driver?

John.

--------------NIm5u8ribF0i3tvu7EKxsCfm
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 10/6/2023 03:20, Nirmoy Das wrote:<br>
    <blockquote type="cite" cite="mid:b95d8be7-c546-1b1c-3975-a4ef6257a28d@intel.com">
      <br>
      On 10/6/2023 12:11 PM, Tvrtko Ursulin wrote:
      <br>
      <blockquote type="cite">
        <br>
        Hi,
        <br>
        <br>
        <br>
        Andi asked me to summarize what I think is unaddressed review
        feedback so far in order to consolidate and enable hopefully
        things to move forward. So I will try to re-iterate the comments
        and questions below.
        <br>
        <br>
        But also note that there is a bunch of new valid comments from
        John against v7 which I will not repeat.
        <br>
        <br>
        On 05/10/2023 20:35, Jonathan Cavitt wrote:
        <br>
        <blockquote type="cite">...
          <br>
          +enum intel_guc_tlb_invalidation_type {
          <br>
          +&nbsp;&nbsp;&nbsp; INTEL_GUC_TLB_INVAL_FULL = 0x0,
          <br>
          +&nbsp;&nbsp;&nbsp; INTEL_GUC_TLB_INVAL_GUC = 0x3,
          <br>
        </blockquote>
        <br>
        New question - are these names coming from the GuC iface? I find
        it confusing that full does not include GuC but maybe it is just
        me. So maybe full should be called GT or something? Although
        then again it wouldn't be clear GT does not include the GuC..&nbsp;
        bummer. GPU? Dunno. Minor confusion I guess so can keep as is.
        <br>
      </blockquote>
      <br>
      I agree this is bit confusing name. We are using
      INTEL_GUC_TLB_INVAL_GUC to invalidate ggtt, how about
      INTEL_GUC_TLB_INVAL_GGTT ?
      <br>
      <br>
    </blockquote>
    The GuC interface spec says:<br>
    <blockquote>GUC_TLB_INV_TYPE_TLB_INV_FULL_INTRA_VF = 0x00<br>
      Full TLB invalidation within a VF. Invalidates VF’s TLBs only if
      that VF is active, will invalidate across all engines.<br>
      <br>
      GUC_TLB_INV_TYPE_TLB_INV_GUC = 0x03<br>
      Guc TLB Invalidation.<br>
    </blockquote>
    <br>
    So the 'GUC' type is not GGTT, it is the TLBs internal to GuC itself
    is how I would read the above. Whereas 'FULL' is everything that is
    per-VF, aka everything in the GT that is beyond the GuC level - i.e.
    the engines, EUs and everything from there on.<br>
    <br>
    So I think the INVAL_GUC name is correct. But maybe INVAL_FULL
    should be called INVAL_VF? Or INVAL_ENGINES if you don't like using
    the VF term in a non-SRIOV capable driver?<br>
    <br>
    John.<br>
    <br>
  </body>
</html>

--------------NIm5u8ribF0i3tvu7EKxsCfm--

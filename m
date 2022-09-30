Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B386B5F1638
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Oct 2022 00:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B306B10E21A;
	Fri, 30 Sep 2022 22:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A2910E21A
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 22:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664577326; x=1696113326;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7n3xbuqkiTjS11QNSSP3lhcnDuBgQNXuSR1qJ4BwbeY=;
 b=jnTrjB7yQJw/FcLz+jgZfkEOTrKoJxKZhiKkfHnVObpYM3P2sZ+u0Get
 MZE6lwOpATxOtnyr5i8pgbCtmxiVyndPHrXJlZPsxCYonbu5Uo/5QXauP
 kSQoVpe2HpUG64xJUGUET/ChT2yx0FRFBC2SaosK4faIzIrqt+wbr3ROB
 jxUeEGcmmnbYCy9Tp4KqhBmNDhuOZdyOBJoIRh+pCD/Akua0z6GlEfTaj
 zuDGDTBk+QbzM2e88hnEJTSVrBrf9EKIzVHpPaXvIIzb3AlShRskZD3c6
 d2WWf8DtXzf7/7/ovckb9PdMIZsPytnSgIKnQLSAEgqs89SQE+Itkr6gZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="301021755"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="301021755"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 15:35:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="711962340"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="711962340"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Sep 2022 15:35:25 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 15:35:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 15:35:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 30 Sep 2022 15:35:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 30 Sep 2022 15:35:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bvs0fB+booQjBeY6j04autwmuaotWNyrGbTGEhLAxUGD3QBqtXr4NZSSmbtjy9056f14HYBRN+WQK8DW01Hnc6wZpyTYHqIRpBnXwau2umigjsHbg5P8TagfmO1RobdVE4RIhXsycxzHPuFRQcWzTsICTGYIlCKdREVdjJHnErbC6/WGhrPuActBJpOQ/wXRWmjv4zw/vtAPEA+aAOP/sEbjniLo0N4Qu4a3VMxxaMTmUOYNrpwN0B7/jwl3BThzBk8lD5Ql6v4p4lOTZ0ho2tu7IU41tGqAY3rWwcHufhb9/93d22nIfX4v5Yz3KchI5VFk5KKih/4lIXMRSN5iXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1N2IQDqUgCt1hwEOt6nZYECkBqzeE3+Kds2oVUI6hME=;
 b=AJVMI2nN5ZSbHV/6haDlPtoPwI24mbgzwsN7MT3xbmdEt2rquSRXnTE5UQxOCjlyOrg0OY3scB9ry+KommUiMIOLz9rMBOwYCWLIbHUc/6AEPmkX7+ykcSqWUk95/yyY9+jf6okWiDes94JiJtQFLSd4/3LovaJiNyPkMkLjAJIY2Tq5BwuRuFedT+aaMUEFLQSPCbuFPeE6MoqtDWUhj3PkInkpYhNH9UmLT809tpeFNi3OJu9O4kxdUsO0WvGt7AOf1WZ7a27NoVaE8Mu6/l5JW/+Bt/GtkZ1K6190nYAOydL0fH1kLEO26ZSYXjx2ev6p09+ONOLQHVkJKwdzEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DM4PR11MB5566.namprd11.prod.outlook.com (2603:10b6:5:39c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Fri, 30 Sep
 2022 22:35:21 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5676.023; Fri, 30 Sep 2022
 22:35:21 +0000
Message-ID: <0dad721a-2308-588c-8b7d-8ac98d17f3dc@intel.com>
Date: Fri, 30 Sep 2022 15:35:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
 <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
 <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
 <acdf464bc515f0489c70c9282dcccce1cc2e85ca.camel@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <acdf464bc515f0489c70c9282dcccce1cc2e85ca.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0P220CA0010.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::14) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|DM4PR11MB5566:EE_
X-MS-Office365-Filtering-Correlation-Id: 13536ada-862f-4684-91f8-08daa3340f23
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cl1qlYYIfEVa6sm7BhDol9T00dOx2MfdxTo0scCOF1mTiBLQw0jf/ojYHsWxPNXR7GS5LyZ3m+iMSJwNbd7bXGoKIrcPC27Osa/V7FKKDwXlOVyIWYqJYagCbcqHrnoSNW36Ewlpj9v2COCjM0tZAp0FD96O0srSmIvMKBPF1Q92pOViMvsDS0pIJz2MTEqckGxMigxddzyvdyP/JdpyaTNuIcV0zy7k73TjskMz0AP9Yf4dTwII56JBo6w7oyEDIXM7p0X+Vb4TcOXunLjjjR8ahtn53Kyk8E2H09XB5KzYRIt9Gl3OKNUbroXcXLCxuaJTobGK7QK3BI5d+v/57Z7YJ3YJEAga3henYc7kAEQjYwavR6TW2ZmT8EVHgnwKA2bf4WqYue/eNmjRX0KVsxnhK6793N3vbez4O0mmHBRNeeOnloMU0hSE7ZupKL1zv9pKL8a4SWlVdBEGTKkGKuzijGP7KvMGNgFwqBU18AijgpalH3kbM4d/Zqo35PA9r1SZgTZxkNpd6xqjRLeupSm9vvfWP4jW93Sqno2uqX9kXW6n4oSPqll6+wOLUjOmEWgwHWW1LojLN6zX7mXdkWwYAFSQvs0DfK57NxbA92pUuGC9snBL+OBgoAw11gOBPpaMRaDVfWwGSpLE87MhukM+6s5w4SeDnX20xqQHgC7Uvjq+Ic72rd3k7T4QneQtPAVnWCD7u1AQHI3QBjAmrSK3pow4nUZeqXuAtZJIpKYxE+ptevtcT4bbkEzsmPBalSH86A4aArY9AuNNcVptWUC6VnWYBuzodzQl2a5LrJY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(39860400002)(376002)(136003)(396003)(451199015)(38100700002)(82960400001)(31696002)(86362001)(36756003)(26005)(41300700001)(6506007)(8676002)(5660300002)(6512007)(53546011)(8936002)(478600001)(6486002)(316002)(66556008)(66946007)(2906002)(83380400001)(66476007)(110136005)(2616005)(186003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzZqbERiR3dhOVVnQ2piRnVVUGNHTnZWSC9zdERZZjM2NlluL1h3dVo0cEd3?=
 =?utf-8?B?ZTc5dTdnNkwzUk1qQXlPeDZNSW94NGdSa2lGMWplak83MFFoWjRDc0JUWlFG?=
 =?utf-8?B?UU16T0cyRnVUVExyOVhkRWJld25VZ093RCswNkhQVTFpMUlPY3YvUFlSNmVy?=
 =?utf-8?B?UUJqbGtUcjJhdTB3c1E0Z01aRVhacWJxLzZLcmpoSTVvdXNGcmZ4d25XazRt?=
 =?utf-8?B?L2NtV3Y1RnE4WlgrOURmclZ5OE9jR1I1SnJPZVNCZFNPVXIwRHJONVdPTFNJ?=
 =?utf-8?B?Ym5LZzROOFF5a21xUjhEV0ptNEZ5YkQ1SGVJWTFxRXdHT0wyTkxMc0RTeU5s?=
 =?utf-8?B?amU5RHA1SWNNY2h3T0lTM3gzS3JodHNZWjBoTVF0eWxsZy94NzF6d1R5cExD?=
 =?utf-8?B?bDNDVjNCZjdxdVUya0ZId1dyMkRUMkV2SFJseElRandxNWk4dzQ2cjB6K1kr?=
 =?utf-8?B?NnFyUXN2L2tYSVhIQ1czUW5OZVIydHpDWGkyZkljWFkxNnNIVTBlVldEbE5J?=
 =?utf-8?B?MlJOeFh2MmtNM0Y1dDJCT2lkNEc0WHEvNjN5SVdWYkhzOEJLaFQ1Q2pyTDd0?=
 =?utf-8?B?TkIxcVdrZUdiM0hqa3pYNnI2NkEvMGVPTUtIVzFPMVNXS3hzYzk4cUNFTXdG?=
 =?utf-8?B?VU9VaGdJSEg1S2drNmxNRDRxYnFQbDgxZUpQRWdwVHZsOEN6Wjl3NDZoa0xh?=
 =?utf-8?B?MGpyNFY2UVl5WVNOVzE4UktReUg0bDdiZ2R2SXM5eXFTMjBPOVh0cDNvT3Rt?=
 =?utf-8?B?QnZzUHBsczI1cy92dXJKOG45OXRnUzhpdEMyYlAzck1IQU5IelB5OHFHaS9T?=
 =?utf-8?B?WHNrNFFoRGU3SHYwdXM1N2F3b1BxTEF5eG03SHlwQXVzdGtURU1qdkN4dlRv?=
 =?utf-8?B?eFlWeHZPOUkxeUxUL3p4RXgzZkc3aU00dTF2MG9FZUd6VWFZMnRCRStWdXRN?=
 =?utf-8?B?TEltOEZ1QXJEZWZxZjVJUTdJV05MUDkwN0lYSVdyY3hpYmEyTnNhaFJYV0w4?=
 =?utf-8?B?SGM3WnFENk1ZTzh3OGUreCtqaHVnZ0Z1LzB3S3p4RzUzRVFwZHR5NXF5T0E3?=
 =?utf-8?B?RHlwZkZHbS9obUVBM0JSTGZzUytGNVJ2Mk9CRk10emNOYXBuVG83L0hmUlBH?=
 =?utf-8?B?MTczT3d1WjZaVE12UFQwZWg1Ri9GMHZQaGVJNlk1ZUhZZmtDTUtqTUtxWk1k?=
 =?utf-8?B?andXeEswNnJuSGxkSm10OW1qWmRBUnp6THY0T2IwanRTZWZzY3QvaWo3ZEx4?=
 =?utf-8?B?YktObXdhclJPQTJBN2JaUWVHQnZJWEJkR09waVRyeFBwK2czUmE1WWxpWmho?=
 =?utf-8?B?K0NvSWZ2RHFOeGhFN0VjZEJLTjhLK0FuYnBCSmd3OTY2ckdQaUNiMTFHUFVF?=
 =?utf-8?B?MitwZ0NYNHduOSs5T0MyVEZQQjRDc0JDY1FEelhiWVNnelJVaGlYOE1Ib2dI?=
 =?utf-8?B?Mmswa1VOc3I4amh0QU1KYmpSSFhlOXdINkp5VzUxRjgvTTh1MUdDTWFnUkx2?=
 =?utf-8?B?ZWdnd3dvOE96ZXVvMWt0a2dLUVltTUN3UFNNMjhWajJIK1AxSDdSb3hmVmRt?=
 =?utf-8?B?dFlkSkg0ZEJ2bytWR3VCVitPTExhTDhPSFNsakFSZExMbDBVa0ZaMExiYzlT?=
 =?utf-8?B?Vm9kWlJFUXN2NTNvTks3b0hIUW1xMVNGM09sc1A4Z1NtOEdOR2NlMms3REcz?=
 =?utf-8?B?dHpkREZxcENZTVAvV0x3VzdkNmdZdU5hbUFVQktpd3RDc3I0VTFLNk4xVlVs?=
 =?utf-8?B?U1VUQ0xlWjBjVmoweDgzd0M0WFhvMnBhblQ1T3h0U1I2NXgzREpRWlNvZ1VE?=
 =?utf-8?B?WDA3aDBIMW1MTlViRThzNFF1b2hIdXgzZlhKNTBvdTNpZ1ZFSDdGcFRTNjBr?=
 =?utf-8?B?RFdicWJyYmV0SGptSEdyald0Z1VTNTBjZzN2THFvRnByOGs5UUUwTGhIOElY?=
 =?utf-8?B?cXk1eW13MTVKeUhnbkxQQnhIa09sL3RrUzdwNjFaME43OVNQM0QzNzB4NTNx?=
 =?utf-8?B?S2JteW5IbjNkRTNZbmg2RHRlZEFMdStzS0U4Q1lGa3R3Y1h4OTc1anBINnNP?=
 =?utf-8?B?YU1tY011Z0dZWlNFUHE3cmt5L25IV3k5RzJCSGphSmdyOEVvWkt3bVlMMk8v?=
 =?utf-8?B?Z3h0SUdWNUNPaFc3T0xCWS9uUVczYWp3TS91NmIvTFNIaGphOGFiR2drRWNC?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13536ada-862f-4684-91f8-08daa3340f23
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 22:35:21.5993 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hqTlNNhsptmUpMUA59p6d0kILyPaNjNtsLQKMgwACgpI7lY35aMpDLuwbB9C0bGT/au1ckYWIVq8An+JH+jecqlftgIfT2V8uMzPpaABOME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5566
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 9/30/2022 14:08, Teres Alexis, Alan Previn wrote:
> I disagree because its unlikely that all engines can reset all at once (we probably have bigger problems at the at
> point) and if they all occurred within the same G2H handler scheduled worker run, our current gpu_coredump framework
> would just discard the ones after the first one and so it wouldnt even matter if we did catch it.
So min_size is not actually the minimal size for a meaningful capture? 
So what is? And remember that for compute class engines, there is 
dependent engine reset. So a reset of CCS2 also means a reset of RCS, 
CCS0, CCS1 and CCS3. So having at least four engines per capture is not 
unreasonable.

It seems pointless to go through a lot of effort to calculate the 
minimum and recommend sizes only to basically ignore them by just 
whispering very, very quietly that there might be a problem. It also 
seems pointless to complain about a minimum size that actually isn't the 
minimum size. That's sort of worse - now you are telling the user there 
is a problem when really there isn't.

IMHO, the min_size check should be meaningful and should be visible to 
the user if it fails.

Also, are we still hitting the minimum size failure message? Now that 
the calculation has been fixed, what sizes does it come up with for min 
and spare? Are they within the allocation now or not?

John.


> But I'll go ahead and re-rev this.
> ...alan
>
> On Fri, 2022-09-30 at 10:48 -0700, Harrison, John C wrote:
>> Isn't min_size the bare minimum to get a valid capture? Surely this
>> still needs to be a warning not a debug. If we can't manage a basic
>> working error capture then there is a problem. This needs to be caught
>> by CI and logged as a bug if it is ever hit. And that means an end user
>> should never see it fire because we won't let a driver out the door
>> unless the default buffer size is sufficient.


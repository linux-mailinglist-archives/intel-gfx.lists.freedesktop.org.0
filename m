Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4505A2B7F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 17:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139AF10E98D;
	Fri, 26 Aug 2022 15:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32E2810E98D
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 15:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661528711; x=1693064711;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=y7yp0ydOvop7BXh+VKRiRlEbUptBPgSkGeqjrw9xK60=;
 b=bEKjV1UBNgTzfWoDKmdI+rbSu0jfHBAJ+/ytfwe3Mc793i2K9FX+/3Qw
 oilmMyWcNyQQ+MRTOtY1z6iizsMw/Fbcn1r7jAZtk90nUiXAGXjyVBGmt
 BGaeXDL8mrQNcG7sjB0GAiuX+hhhrLfXPaTQilEgVthEdfrIMFBam8j/c
 UG4/v4yVfUsvZDD9W2egKz4zWb9ehGfC1kT9hgl96VV4zJlwKsPZ0fB72
 ZNIG1PeN2q4/n3glKNvfCk5Lo05sbgCDDvVu5bRDhW99AjDntLc74uQu7
 dxpeFgcF5G/Kg2R/IhSa5eaG6kRwT1e3P7ueDYExwtcarFK84fKrslldo g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="295806084"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="295806084"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 08:45:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="786419750"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 26 Aug 2022 08:45:10 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 26 Aug 2022 08:45:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 26 Aug 2022 08:45:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 26 Aug 2022 08:45:08 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 26 Aug 2022 08:45:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eCBCO76fUK3uhfKT4rde32i0ctnsI4hrxwqq9DKeC7bkt9gxvDWj7EAStTss0LvmM+Nvg3la+Bo+d0+P4Zw/dumGuemTfphO4WcaeDWMLxoPGEt97c8zmAiUBD9vOa8/pQWY5EwEBSUr72kZ5MjkKHlF70pRDmFQd0lwZnHs7u4bvZGUpymf1EjruHZjKaHgBGJpr8Qs0zyyGse9Ln6d33piT7mMXy4ZdqqUdpLUkfVnpEJ3CXgPPo1cN2k6ACAfWDryUrwDvbSRnf3ea05BDZBGsP29OP+cT0LiibjosUg493QidnoDCbVKIQElg35Fr0lkXsF1zGaBW+TbCEWiVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ez6IxaM/0wvF+VPJ6iIKm2Z9WytArh66V9HzYk7PE5w=;
 b=G6LQGFA5tgC7kTEBSEB1LqSlS1Q9jAEGVl37XpejsS0g5fZl5t/5gOnKRBKscVRt2261g2V9JoIpm3Ch+g0ncV4rl436nSR8BiB2YISuhOV2jNEgLLpkymlIdgMrgvHYnbuop+YEaOoglfkQ1T1Fc2DHQFN9XTbs/vjJ4OgP8bSjnUBeTOMw2i3h+gL+a5JlrBU03LTqbr/96Bi/pV16BC11d5iWWMCIg014zJedVmDJ7o+JAlMN4ze8qDa4NwU2aGt1nJlAWE90FbZVclxqpDOM/vGxnNrZ3+b8z1xAvD+lnr/zzuDYJi7wndcjErunEyObVXSbboy3e+OUSbTegw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM6PR11MB3500.namprd11.prod.outlook.com (2603:10b6:5:6a::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Fri, 26 Aug 2022 15:45:07 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5566.016; Fri, 26 Aug 2022
 15:45:07 +0000
Date: Fri, 26 Aug 2022 08:44:56 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YwjqeE0AHeQFcluc@unerlige-ril>
References: <20220804232125.211449-1-umesh.nerlige.ramappa@intel.com>
 <e9e77415-2a26-c037-bb8e-d6c8b279b05d@linux.intel.com>
 <Yu002P4mDn0uycpP@orsosgc001.jf.intel.com>
 <87fshl3yw0.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87fshl3yw0.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR05CA0167.namprd05.prod.outlook.com
 (2603:10b6:a03:339::22) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 985be22f-67ad-4a58-bc79-08da8779f377
X-MS-TrafficTypeDiagnostic: DM6PR11MB3500:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aiqZCUp3eynDB9PD43HF0njrFsRNjjFwCwPby/+GKEV/KWUGH8y/X5bj0e3tQ2kpGGNtiAlcC9inqFIx+KOj21LaQCGLcYl173LPUH8ZJGJ9M7aXQG7YPza38JR1UOdgQTdHBpjjpWoWeJbWmJcCS2B+895fExmWeLd3Vrrjz2ikVv5RiZVJgory7pF5+CfetOzqU7Y8R9wpUYf7XEpO/HQPyIMdsenQUOw03HYeVYQf9xQQQuf3q1MaOAUI1yNE5RHZ6q3BNOp3iw5Bba3KlZ7si/nFwnIOOUQa33RRqr3Kdbc2tNsSLmIccfdqwzWUr+fLTdMEc4s+/XS9G1qXANn9xwe0GS/h6PqNZYa5W14Y67UT61o1LfzALR8YMkfRYMVpM8JmQXtbCpm4hbCCI/HdQNk8+WvRvA3dHefQ8dUk3v4HvydW6kQQOKW0eXOGXNsfPtpn2qfUb6vL/wVesO4fCRGkVQXHCGdB9Q8fAQW/BPeGQYZ2ufiSfbKzppzxPg32DGDf5PPQ/z0Ph6Wf7Uvl/cwlubLh088K5TFhRcFjzS+JyJesA3VdexpL+OJTwSuKHAvyyikFqBQ0sQEuXy5xww08myMk1Nrjue5UJpguAjX+8KmvCA/01qpCLcKvfW6ZRox4/2+elDJJ61rWKawvIVf/Ntk6biIkWU2ylS+QgucEkVkkzpMDdaR0l8oEDkcKlmjcRrDHRegeqQX73w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(366004)(346002)(376002)(396003)(136003)(39860400002)(6512007)(478600001)(186003)(41300700001)(53546011)(26005)(6506007)(2906002)(9686003)(6666004)(4744005)(5660300002)(8676002)(6486002)(6862004)(38100700002)(8936002)(6636002)(316002)(66556008)(4326008)(86362001)(66946007)(33716001)(66476007)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDlOaTh6QXN6UE9qY0JEL0dnSmlnYTRibnJLUy93UkRrbVAremJ3MG03c0pC?=
 =?utf-8?B?UmtFTWU2dHRNRGRzMWxNOTllajBjQmVJRlBWT003MnJDMWk3R1IwcUNKaWtI?=
 =?utf-8?B?cWMvZllSUXJHcDB2QytYMUs0TlV1QTlvcnpvRFRrWkI2VkZVc01GQmFob0ZG?=
 =?utf-8?B?bktPcStiaUVpSlZEdGdKbllSWFE1TGFaRTRTYzJFRDNWb3VwYTV6eGlOcWVQ?=
 =?utf-8?B?SE9VblpiQUFFNUdTTnBjZlEwbStvbU0yNzNTSmx5M3JVL2ZFVHlxeDFGd1pH?=
 =?utf-8?B?THhSdFFHNUUwZkVGVXU0Q3hXSVg1ZGYzRmMvOFhjSXAwdnlyNWxoeW5vYXBL?=
 =?utf-8?B?VVpYZHYwU0FQMTdnRi85dW1qV2gweVR6bXFYbGphRTF4ck42bEVpNGV5cTlp?=
 =?utf-8?B?ZHRJZDIrMlBJV1VpVTQvVXlmUmRjWkpZTWFMSmoyRU1xUGJIOUNLdTZ0K2dp?=
 =?utf-8?B?VFNmcUVjUndLOWVCaVhhdHdRZklMandtaHY4TTQrcEhneDNMWnNKRlBKSjU1?=
 =?utf-8?B?allYbnFmOXZUUjVHWlV1TmJxMEZLd0FEdzhrMmE1bkx3ZmJhWTNlTnZUZ2ta?=
 =?utf-8?B?TVJxZTNzR1NuQjdERW1KclRRVzZ1ZGtYSVNPTlZpNG0xOTQ5S0d4K0NCdStQ?=
 =?utf-8?B?c244Z0lVK2NhZ1RwdGs4N2pzajZ2UXB6VVJONTlMK1ozVXFEb1hZUnNVdnlO?=
 =?utf-8?B?QWY2V1poSi9TS1ZhWHlwN2ZjaWZCelA1WFJtRnFIbHhoWlpiVTdCRlpKMFlm?=
 =?utf-8?B?ZWtYWnUvNUk5QUZFakJTSHB1SzBQbjArSVF5M1Y5TGlnbGx2QjBRd2tpQ0lO?=
 =?utf-8?B?c3pncmpvZDE5c1BtcUhNWmk4Z0NkaVkzT005WlVkRWlQeHlmMW11c29HRWxj?=
 =?utf-8?B?MUQ5aHhja2JsSms1MFN0QTNwV1ozbmpEcTNQRFJZMUpUNjZFUVBOUUVFbksx?=
 =?utf-8?B?WkdsSGZwcmR0Mi80WmUxZGhRNFd6Q1orWUZjWE1PR0t4QTZwTkc4NzVGVCsz?=
 =?utf-8?B?L0RtS293Qko1RlJMZi93dENZejQ2R0QvQm94c2ZUWFl5RUE4UXpuaDBRMGVL?=
 =?utf-8?B?WnAvNTVBbE1oRnRSelM3VGJXdlJINmM5dnlLb0tYd1AxcjVMbUtkRWt0czRL?=
 =?utf-8?B?QTBMTnNjT2N5NnI4OWRtYVVXWUR5d3I0TEt3cTJoQmNucU1hbkxLOTFMM0tD?=
 =?utf-8?B?UDFBTW5kbWVUOEpKeXF0L1JTejdkbkhGaUtaZ2MzMjRSU0M2ZVNZRlZzWXlZ?=
 =?utf-8?B?QXFCaUt0WVkxSHgrMWpXREZSeFVoVml1dERJSGdkQUMxTkNNalRTd1hKaGJJ?=
 =?utf-8?B?eDRDcVFDVGozOEExVnRoYjZ0d05sMGpYRFFpK21CRlNPZW9oQmplRXFWZDVN?=
 =?utf-8?B?YVVwaVFHbWtYeWs0QmxHQUc1RnlmN01GUm4ydSs3eVI4SjQ1Y3FjeFNuSTdt?=
 =?utf-8?B?UElsNlBmT3EyU3BTYjkzcndhNytuc0Iyc29BaG9ack51NnpkSDBsblFzUEpp?=
 =?utf-8?B?MkY2TGlhWlNhME96ckswdWdlMDA5dmVWNWJEc01JMWMrS0xYbkY2MTVaSHNN?=
 =?utf-8?B?WXBMWVFzQXgyRm5WcDlLLytrYkxNSnBvRTBJMkQ2ekluUDUxdWJPK1NqNmYy?=
 =?utf-8?B?S005NW9pZEQ4eUZRMlp4SWkwSXZwQndJdEFXaGpQV2VRTmZBeWtLSFhtaGdp?=
 =?utf-8?B?cFVzVU9VNjZSdzdnM2pyNUtzSmgvS25oQ3Z3Zys0NWx0VUR5Yi84c3k1ckw3?=
 =?utf-8?B?ZXBoRWtTejhoL3prc0N1TTBDM25PYnhzdWpKSXQyYXFncTZkc1pHWDlKVVBK?=
 =?utf-8?B?STJ1d25MTjBTQzF4ZkVkYktod3N0MWc5UHh2NTNXTzdFVEJyMHJlRHhWUHFr?=
 =?utf-8?B?V05hRVlUN09YcUxsMDdQaFBHVTB3SldaSXlxbnI4Vi9HY1o2R0lNM0NFRGQ0?=
 =?utf-8?B?eXNkWURaY0hvUlpWY2U4SC9hYlVkRFRuNzFsN292WWFUNmpHY1hSYVlnZVRx?=
 =?utf-8?B?eVp6QWppSDZ2LzFDV2FBeWZ3dDcySVM2NUw2eDRUVnEzeVNSRDdZNVV3Slpo?=
 =?utf-8?B?cnl4aE9vSTZhZzdkSTVvc3ZXb1hkR2l4ZUx2SmdCVDQ2dDlIZEJmWnNMWWgy?=
 =?utf-8?B?bURRNXFNRmU0ZC80ekhlaHJKZ3psOU96aDdERy9NM3ZqU3F6UGQwbDFxZFdV?=
 =?utf-8?Q?l0jNQ2+47kv7DbFOTeUpE1w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 985be22f-67ad-4a58-bc79-08da8779f377
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2022 15:45:07.3568 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IfC3/fGna/BFvTGq9KI4aQ8BHa1LS6K0JFMRpr/FaNTuqq+PZpd6xxTtfAU2EoPgnjTX7NicY6HX8YBSfTGuJ2dWDxI5O/wTZmRQrfYxnCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3500
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/pmu: Wire GuC backend to per-client
 busyness
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

On Wed, Aug 24, 2022 at 06:17:19PM -0700, Dixit, Ashutosh wrote:
>On Fri, 05 Aug 2022 08:18:48 -0700, Umesh Nerlige Ramappa wrote:
>>
>> On Fri, Aug 05, 2022 at 10:45:30AM +0100, Tvrtko Ursulin wrote:
>> >
>> > On 05/08/2022 00:21, Umesh Nerlige Ramappa wrote:
>> >> -static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
>> >> +static inline struct intel_guc *ce_to_guc(const struct intel_context *ce)
>> >
>> > This is odd since the helper now takes away constness. I can't really
>> > figure out why the change is needed?
>
>Hi Umesh, I am also wondering about this, I think you missed answering this
>question from Tvrtko.

This helper 'adds' constness, so wasn't sure if the comment was intended 
for this helper.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh

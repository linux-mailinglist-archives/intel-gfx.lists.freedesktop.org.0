Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DFB5BB377
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 22:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC16310EDA4;
	Fri, 16 Sep 2022 20:25:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597A510EDA4
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 20:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663359942; x=1694895942;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9EANwFtaHULS42tbejFGzJ5ei2/OGrXi4X/QSopjR14=;
 b=PBmG0ueA2fZK7/5lQfwmkSY/QK4wjriYReVKk/U1PMPnZFiZXbFGNPaE
 nW9PzxVfTok00yRJJ24aCqHFV8nXXzZJZCR8djZZ4ElaD9SNMWPfTKFVw
 0Lgn8rDtKg66PiwP3fu7UGvaQwfEoLVAnT1MfiUwzgR1ok3J+PCHntr/i
 f/9eCMyo8FZABdfL9hXZgBYF3Km/9noS8dN2IUeJWIRQrQLmFDXdB7PfX
 kfB7rtod7jV7nLdGjgSArMStIXFfbKPQMv4PoGbm/aLa0x0s73DmDEqbw
 XEw8ejQ5PeWwZFIIx/bdJtEWi6FyzVwpoTwInUYY9t08ayTP4TiQbbo13 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="299064484"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="299064484"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 13:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="617797359"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 16 Sep 2022 13:25:41 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 13:25:30 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 13:25:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 13:25:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 13:25:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQI42PtiSf2yqSKyEuo06OYCRpr8HwvGlZapa1QmpVSBK4Msg2Z42j7Jf9mCwu4+cXjUsn8u7584tOYlO2XahnajzvDw4mcgKF5JjMvS5bUtGQLui49LPykFhPMNSH9xyKppYhMhNaFyRE5nC6m+8ZADqaHQ4ZSb0vOjTe7YTYz5Y806eLX6VsF6D6NnbWrhUqWvPwpbFrLjuVFC5H6jVkeip77GiMWo5xd83Sc8LINL8nl4lBQY1YjcaMUj9Pwq866wf3/L49FTSyfCifQDwik0xzbDxR2zTqP0kwC7te2csx57aGohVFgI00w3j4c6gToPBpUMg5egtUoW+jTcPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NOreoH3WrVRA//vTJrwiLBUlzUd6WszEn7aNIFqzNh4=;
 b=VAC64iLadyk3eyyZgISQfn+Hh1Qy4a6hxxj/E3VmeN13qucKdGKdVAI7vEpupVnP77tb8WPMaK4P1Q+KmvktGSY2+T2ZpioaAosRdXyZC24cDT9mP4v/fcbCbct2CEHd8DRtD2wQ+WGkHNl2DhQ6ZcHIBxCM8mYiqtXRCkk4H6h+sgcitYmSfYcp/s48bVOoU32UKAu97KLZu9QoKWotuhu7YdzRl/i4nzVgqIytuwy/mJy5eG2AwJEJwA/lEwxPmEdRCxad/ts9QN7tueXImAL68+t+wKyExovYWnCsASwVvZzZPewymU0uz/fp6yHvq411JzRlbfQfgvMWP75XEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 IA1PR11MB7293.namprd11.prod.outlook.com (2603:10b6:208:42a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.16; Fri, 16 Sep
 2022 20:25:27 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 20:25:27 +0000
Date: Fri, 16 Sep 2022 13:25:17 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyTbrRSAwlZEUrm+@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-17-umesh.nerlige.ramappa@intel.com>
 <875yhn526p.wl-ashutosh.dixit@intel.com>
 <YyTGxJ7LCYqnKoKb@unerlige-ril>
 <87zgezum74.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87zgezum74.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR01CA0056.prod.exchangelabs.com (2603:10b6:a03:94::33)
 To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|IA1PR11MB7293:EE_
X-MS-Office365-Filtering-Correlation-Id: e8c3cc44-eeb3-450d-4304-08da982197bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ik/AEQOL5/nvDd3W4GmlbVBieNhvRGi4U6ghzppFpW0nLWAUAzHJPEXPtnl01c1zRT4uqFAPpzMWiLeIDcm2X9l+hkDYS2/EjhobEbrksiOV8n6Nesi1tNwXW7txu7NAGJWW+29hOMl16w+RKBvuKVP2kWdNguqayoMb1CmhAw0Kvhx1RTBA1IFDVfEXKdO8rN9B1IWErZYxmG5QnI6UXVVEi9s7cgsY5kSyVfrxAfA+rg+JYu1KUCyvS3GmiZXDKCcPnQGKuu2gcHPuiz1yCrORJJw+DZyQp0Ecs0vjEsrUiB/NvehiJUXTWUkZVAwKzI1t3tQs4qUtJ/HJ17TEauiPzc3YeWhhzL57C7EYbbgXjhdsO9wQ/Cm/v2+ZZ9rGi/oJr62kOno8W8REgP+mpWOY8eOeahfU3Ret52kKUb826ErdVPfYDxVDIuA8W0xHA1Ezk/fuzOw6AZVwh8DgtY37I1L3bK8Bc6lRRCW2zG2kQhwEUh8acFxsOha8l2NhAvb8gTrE5r52yiC/Isx5J5e76K4xzRA6+QUTTiZXUyVSFSBR0nf86mg00KnKN3QCZo0qjwfQLhZdaSh4CLYrl9uwi0xtetz33GKMa3Pmto8y7skWgpsqCYnNqveRVhNPKkadSi3S2iAfUjOAs/DFBOECv7S0+CpK8f/lxPpt/M8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(376002)(136003)(346002)(39860400002)(366004)(451199015)(316002)(66946007)(82960400001)(478600001)(41300700001)(8936002)(6512007)(6666004)(38100700002)(6636002)(33716001)(107886003)(9686003)(6506007)(6486002)(186003)(8676002)(66476007)(4326008)(26005)(2906002)(86362001)(66556008)(966005)(6862004)(83380400001)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnpnVlYrZXY4eURGWkkyL0I1eXlKbDEvcVVOMndJZEFyR2VvYjQyZVY1Z0FP?=
 =?utf-8?B?T1hIVTdlN3hJUTl3TWlNQlNDeFUwMTQwVzZhUXk4bVlZdWRaZW9OOXRFYkhv?=
 =?utf-8?B?b0dNL1FwQ0NpRmdmc3RPdzdSQmhPN1NMaTROYVNtVjdmRi9NOEZhTU5FNDlk?=
 =?utf-8?B?RExhb2QwaFhPOEVYM2NSaUpOMW9LYlRzRUtkcmt0Y1JBNjRLcUZ3aW5XMExa?=
 =?utf-8?B?OGFqYjUzaXNXc0EybTA4USt5WXJnc2F5NTNrS3g3S00rUzNEclkwdHNKRU9H?=
 =?utf-8?B?QUxvMTlBOWR3WGp3N3Q3cXZnaTZGZ1NjMWFoSnZNMHdPVzRac2VuRHRUYUM2?=
 =?utf-8?B?WW81SituNlFMVnJielJzVTNvcmdJSlJvL1pCWlFoSytNSFlTc3RBRmtnQmlD?=
 =?utf-8?B?L1dlcUJjUnlKVG9ibEVRak0zYjlIbDhLY3JVWGlkWUdWSkZkMDRLbWNSM3k3?=
 =?utf-8?B?b01UWjg0Y2MxVVRKR2djSjBFZzB3MEkvcG1nWms2bXQwVzdDTnJZWGtZbFVt?=
 =?utf-8?B?NDZEUlc5cEcwUnA3MzBDWXhFeHVLUXZ1cktDbVN5T2NCdTUzR09FcndpYXdD?=
 =?utf-8?B?TG11NkFZTEdFTlBtdVFuTWxxT2V1aXdEejRZNWNSd3BTaVkyekVEYW9ZbjFJ?=
 =?utf-8?B?RXYrcXFzL1pyMUQwUlloZ0RHNFdYTng1MUh5a2ZTZndGdUowcTQ3UVl2bU1l?=
 =?utf-8?B?U0dtZGFaYzZDTmFTc1RURE1JZ3NuZFhZNytSK2tJVlFVWUtFRWFrUGg3eGQ5?=
 =?utf-8?B?aWdnbVFsUUFSNlVPZkZpYzVqdTVOZXhVTUljaVJQZHF4R3NOTUtFQkVja3hn?=
 =?utf-8?B?SHVDNVV1OFVaQS8yaExuM2daeWFXU2JZR2s0MnlETGZqdXpvd1VhdEx4M2VI?=
 =?utf-8?B?SVJ5L2NvNk5BY002TWhxMUExdC94V2NNUzBnOHUzOFRDbXBlU2dWNEVJKzdR?=
 =?utf-8?B?dlVrY05ENzNpRThLZnpwWGd2dW5TVWtYYlJRTi82N1pVZGNQTnJrU2EzWWl3?=
 =?utf-8?B?anBEM0d6ZlYrSlpaWDFIK1BnT3BTU0x0UXZXTW12bHdKUjE0T05hRFEyVW1M?=
 =?utf-8?B?aGg3dHVpZ2NBcjROdUh5QU9Mc3RjeUlqNVdaWWpGd1cveWtwSkxKMEJ4alpL?=
 =?utf-8?B?MVpaQ1hlbGZKdXFkRGx6NVUrdlBsMElsMC8yZFo1M2xIVVN2TGNJTEZ3bTVB?=
 =?utf-8?B?NVJuVDRGUytsOFM5cVR0TWQ0RmZaWGZzWWJ1VUJBUEVqa0lMUHhEd1NpbDhQ?=
 =?utf-8?B?cUs4S1dFeUhLdXNtMXdVd3owTmpZRGoxcGVrYWZUWkxWbXpwQ0NJdmpRempk?=
 =?utf-8?B?dUNvZ2tpNndEaTl4VXJ5S3FYOGtIK0ZveEYyVWRRZVNRRVJUeE5hamdPVXFk?=
 =?utf-8?B?dGEzL0lucVhDcnZCTVhSWEVTRVE0RDRJWjRUUVBCREoyM1p5UkZqUzUyVmts?=
 =?utf-8?B?TmdaQkJvaHMyMzNYWHIrZjFLOEpMN1FyeWtkZ0JWdlRqd00yRmlrWE5uZVdn?=
 =?utf-8?B?MWZrVFpud0NNVmg3akhzbjRCL1FhWFZ2RGJydnpJaSt3STh6V0dVTXhCb0Yw?=
 =?utf-8?B?TExVZGxYOTJOdm95YU1ZbUJnNE5zT1haeldOWjBEYUhpNS9QTDdnZCtycXVx?=
 =?utf-8?B?SzdMOEhJZ2hKOWZkNWxlWjdjaFJPb2ZmTzU5cjBxcGFsaTQ0TGtnZGJuRjBq?=
 =?utf-8?B?VGtVdDY3MWZLVzRzQTZldDdUaUVteDRpdHVRMnh6VTREWFNidWdrNWtBWTF6?=
 =?utf-8?B?bzNaSzFJbHpRTGlCNnV5dnJ3a0xEcjd3eC9hMHFaei9oaENjN0FXa1NmVEMw?=
 =?utf-8?B?ZzUvaVF4MVZnQ3ZSWk9RU2pBaEVueURiV3V1Q2s4amhYSWVWa01TOFNVeG1m?=
 =?utf-8?B?ZGpnMEwxb2NZcEJBNmFSendzd1FDZ0RZQTQzV1llNU0rWHJyWTF1SGFSSFJy?=
 =?utf-8?B?UndxRExMNFcrOUtKRWp2MUlJcEdjUUEzTkY5U2RmWGFFc1dPRHppNERmWHF6?=
 =?utf-8?B?b3lKREJDbmdxVk9MSkJFMEpUeTlSOE9yZkxidnRsUENGSjRSYzBCanhTeHUv?=
 =?utf-8?B?ZHpqa0ROMGZYUjlPbHVjaG0xK2lIY2dFV2dobDczakxTTXFCdkc4dzVzZkF0?=
 =?utf-8?B?MkgxNzJTSUhINVBTVVhrUXB6dzdScGpPUktWZW84ZFFjSTdldTNHQU8xSjQ0?=
 =?utf-8?Q?Tml+8laDuDiYuR9t5AsnpXk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8c3cc44-eeb3-450d-4304-08da982197bd
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 20:25:27.5170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KaxtgbJCyp6nZwZpnqq7ZiLOSelyYM4DixGYcxuD3eFAUVlqqzjD3CiATdUPRvDqtmEAzCBC9aAd6PIILt4WWxdnEiLKqe+MPBkF6YddENU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7293
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 16/19] drm/i915/perf: Apply Wa_18013179988
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

On Fri, Sep 16, 2022 at 12:57:19PM -0700, Dixit, Ashutosh wrote:
>On Fri, 16 Sep 2022 11:56:04 -0700, Umesh Nerlige Ramappa wrote:
>>
>> On Thu, Sep 15, 2022 at 10:16:30PM -0700, Dixit, Ashutosh wrote:
>> > On Tue, 23 Aug 2022 13:41:52 -0700, Umesh Nerlige Ramappa wrote:
>> >>
>> >
>> > Hi Umesh,
>> >
>> >> OA reports in the OA buffer contain an OA timestamp field that helps
>> >> user calculate delta between 2 OA reports. The calculation relies on the
>> >> CS timestamp frequency to convert the timestamp value to nanoseconds.
>> >> The CS timestamp frequency is a function of the CTC_SHIFT value in
>> >> RPM_CONFIG0.
>> >>
>> >> In DG2, OA unit assumes that the CTC_SHIFT is 3, instead of using the
>> >> actual value from RPM_CONFIG0. At the user level, this results in an
>> >> error in calculating delta between 2 OA reports since the OA timestamp
>> >> is not shifted in the same manner as CS timestamp.
>> >>
>> >> To resolve this, return actual OA timestamp frequency to the user in
>> >> i915_getparam_ioctl.
>> >
>> > Rather than exposing actual OA timestamp frequency to userspace (with the
>> > corresponding uapi change, specially if it's only DG2 and not all future
>> > products) questions about a couple of other options:
>> >
>> > Option 1. Can we set CTC_SHIFT in RPM_CONFIG0 to 3, so change GT freq to be the
>> >          same as OA freq :-)
>> >
>> >   The HSD seems to mention this:
>> >   Is setting CTC SHIFT to 0b11 on driver init an acceptable W/A?
>> >   Note: Changing the shift setting on live driver may break apps that are
>> >   currently running (including desktop manager).
>> >
>> > Option 2. Is it possible to correct the timestamps in OA report headers to
>> >          compensate for the difference between OA and GT frequencies (say when
>> >          copying OA data to userspace)?
>> >
>> >	  Though not sure if this is preferable to having userspace do this.
>>
>> It does affect other platforms too. There's no guarantee on what the
>> CTC_SHIFT value would be for different platforms, so user would have to at
>> least query that somehow (maybe from i915). It's simpler for user to use
>> the exported OA frequency since it is also backwards compatible.
>
>Is Option 2 above feasible since it would stop propagating the change to
>various UMD's?

Hmm, there is logic today that squashes context ids when doing oa buffer
filtering, but it does that on selective reports (i.e. if a gem_context 
is passed).

For this issue: for a 16MB OA buffer with 256 byte reports, that would 
be an additional write of 262144 in the kmd (to smem). For 20us sampled 
OA reports, it would be approx. 195 KB/s. Shouldn't be too much. Only 2 
concerns:

- the mmapped use case may break, but I don't see that being upstreamed.  
   We may have divergent solutions for upstream and internal.
- blocking/polling tests in IGT will be sensitive to this change on some 
   platforms and may need to be bolstered.

I will give it a shot and get back,

Thanks,
Umesh

>
>> https://patchwork.freedesktop.org/patch/498917/?series=107633&rev=3 is
>> consumed by GPUvis. That reminds me, I should include the UMD links for the
>> patches with uapi changes.
>
>I was thinking more about UMD's which analayze OA data and who till now are
>probably assuming OA freq == GT freq and will now have to drop that
>assumption. So not sure how widespread would be these changes in
>the (multiple different?) UMD(s).
>
>Thanks.
>--
>Ashutosh

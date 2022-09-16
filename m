Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3695BB29C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 21:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C064A10E079;
	Fri, 16 Sep 2022 19:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CD8010E089
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 19:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663355105; x=1694891105;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Jh8T4UnPa8HuTR1re4+ZcRot9IO3EXJvyw3UlG/1K+U=;
 b=X6d429mvpSAasInFgbt0BjhM6RqauOmJXj9hlbpT99iS+MC1hpj1BfeO
 kWnIOLDN1sh0bVFPr7b3q189fIntxHxbd/hBftYplNKT9SkS9Zge6N9Vf
 fAc6wdLJQNdHOJIoXVynflVVCwqJdPU472nE3XMyRKmgJH5nnWIOfDHFQ
 hk9zxYV6hCxbrDy1l3h4yLxTxi6zisltu2Y7qadxOeaENL0yW4VRYm8A4
 sSPVFSbp4jjKGbDfJPUzycFjN6RvETxi55BRb71TiX//9Rm24T0bZuwSs
 8FWqXUCeNi7rrkcSZjxnzGdhpn+bUAzh3Xnw61hdRzso0hgCFSZj/tWul w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="296646421"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="296646421"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 12:04:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="620187235"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2022 12:04:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 12:04:54 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 12:04:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 12:04:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 12:04:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aUqrdZEz86ZdAE07CoFqteFaqznKjxeTy4hdmT5LNCNe03ZilJrUaoCZlPhURxvLGKVS/skj1YbGCnDPrbEx6FF30HBBQu5qrOq+I+WEVFReq1B/s0QnBJ9VTJtPMorpY0ujEr1UZlxHr5roDKl9rtpqvbGSKRtSA0Pg0MjRYJA7Xq81EdUOt2DFF6fJjg16yKwlAyk8Pog7z6Tuk+LxBpaIQ7MOzaMUUUjap4eHpB3N/PcFosfDBufBDVuxFyJ8xQ+yd40agkjqbB2Q0RaL0h9f8aKXEGW7mXWaWZdDJbLgzks5s/H9WotE4cHrkx+uSv1bDKWD7LHgWbj0TCWwYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J7DgHHv8iN9Y6BCUPsWC8ueErZ4bde0QfBVTc7/Tv4A=;
 b=DFJfTCLnDbC+bUDO4OBs7gO3rLpyAV8RlwvUau8sqlrVNlyZzxjZGoxLWbL7ukj6mtNbws4ijG+LNgAIa5++JGI7kI5i6EBPYpUE9eMyVZvtAea6ps+eecG4Q59MuFIklcl96ClqW8rW+1HZOa6hBUlHRbRmlUBAPjfvPu6yetA7q9Ds5GXsS3FH86UibV/uv42NBiFzbt+3MWo0TWddDTNsOfAU5Jhn4bJQg1Cfymr6mrn/glFDFZFkWegMX6a16sTuTbCR9BJKSDVV7e5KEA0gdeub/iTBD8Gzv5Oa/3iPGnmtMI1AgPPdG21pHbjjvM/fvCpCNJCa3VaC3eqrEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.16; Fri, 16 Sep 2022 19:04:49 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 19:04:49 +0000
Date: Fri, 16 Sep 2022 12:04:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyTIz7UGpnCnf6ey@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-17-umesh.nerlige.ramappa@intel.com>
 <875yhn526p.wl-ashutosh.dixit@intel.com>
 <874jx7wdhb.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <874jx7wdhb.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0160.namprd03.prod.outlook.com
 (2603:10b6:a03:338::15) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CY8PR11MB7393:EE_
X-MS-Office365-Filtering-Correlation-Id: a4abbb07-034d-46d2-9105-08da981653b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nIw0WY5U32IY2q0gK4ZQcMJQa4nCx6yUi3GVch5d0cFhpM2gRZTjR+F23lN6SbURKcoOg9KWpHJOeqw8e97RCQaOr06Qw5CNc+uv36u4uQ9X5nXVGTDoTJ1ETzyicRy/Et4WeJEqBWbyvt/jD64Ye6q7VFXyw2XoaOz8PKvwuUJCE3vHz50lEIkMgwTc3uOaryoGYVTupiYB1QyO4n2ktMDaHqtCFVLXgMEytcz1l2NFZvtt8rhnD6rCmkX2QfFS9d48C7QlsqReacDNXrjmyATqcAxtT4MwoSdp2PQO/s4X7Asi2u2iKUm69ZzuCD2fQD8ScBJmyy/+HVvhmCSLa9zbG9msDEpviV82lYduwnVDgLZKudEkzno0XdWDjKvuWdQI9ZX2s/9DKR/ej1MXGSnziVd7CEGfVfAB4HtEMpF11NFD59+vKkkyfafCN/0Yuxbef6ZY0wQ6XWSAQt768idK3TeBvnmLL4fohjgFtZbKAqhoqCHabNjPpPPIPKKLLUbk/9d4/dwnkKB7LSvA8AUO5ypDzstGon+ZKSQ6iYihKDRNFIYd9/wg7Zkpr1/2kkxMOtrNnmuEWbUp/eQjQTFBc9WcvDSDjyDj/x/6zJwf1KQYG0OGrl0HsD7SUm5EZ0D6CPh1pSovKRrIhFWrB3/ZeaGwD1G71GlloqGHHbAdzuWgWKEv5T+pWf0zpeNpvh3iWga2sixOoY40mxGZqQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(39860400002)(136003)(346002)(396003)(366004)(451199015)(6636002)(54906003)(6862004)(8936002)(316002)(5660300002)(86362001)(66946007)(4326008)(8676002)(66556008)(66476007)(38100700002)(82960400001)(6506007)(41300700001)(6486002)(478600001)(26005)(186003)(6512007)(9686003)(33716001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amNwMzJzTE5hby84MFNWUzFJc005OG4vTUdUV2J3OE9CMlNmTzROOGk4WFNJ?=
 =?utf-8?B?YVBSY3dmRlE3eXcxbGNGbko3Y1lxTnNlNm0zRkh0dGNXanl6cVhQNHNqbFNR?=
 =?utf-8?B?L2RkaFBINEF2TGlyZ2x5UDZJZERsR1RQSXJXOHRrZjNKT1JOZlhYa3g3ZDVh?=
 =?utf-8?B?R2RVNzlJOWtacUNrYnhrN2diTk5hdHFyd2s4MXR5MCtrbXk3aXhvRURTWUF5?=
 =?utf-8?B?Nm1XVTgrTnlLVUtnOWcyVDA3YkM2ZUZ3OWkrT3ZaRlZ0RWlRNFJjY0hhTjJV?=
 =?utf-8?B?SmNYSkVNNk5OZWxVcktneFJtMmJiM1hxMExhMWhGdzRvK0pLSWpzMGlxcDdO?=
 =?utf-8?B?a29uelFab3pKVnZxbEhCZ0lhQ0JMRXpNVDhmRnEyYXBiUS9vSXBKY3lRbGFN?=
 =?utf-8?B?b2JvMGFMVEhHTVA5SjJXN2x0S0ZQelNJUGZidUhUU1EyT3hWKzBZemphMm5p?=
 =?utf-8?B?ZVlwbjE5OFVYMUhld1RHa3ZkZHhyUHRiNmlnc0F5S25JbXdNKzRsclJEZVdy?=
 =?utf-8?B?SVRFKzJpK0UycXZPQndlTjlvbjVVN0NzUGlFUHBLMjUwT0ZaN0R3eVYxN0xR?=
 =?utf-8?B?bm1xdFAydGZ2cTI2K0hxY0hiNG5WajNjODFxWWhmUUFJS20vNHR0ZVN2N0RC?=
 =?utf-8?B?KzZ0UGtYM1pZVzk1dmxDaFhjRC90b2VtTlJqSWpha0gzcVozYkhUUk1UbUZD?=
 =?utf-8?B?d28zOEdzTXQ2NGg3Y0IzaUZlTDhIUjBPR28rMTAvc2t6amRpOHNtZjE2YVoz?=
 =?utf-8?B?ckh1cmZFOGVCZ3hGK2l4bVZuSUE0dWwzbzlaTWlrWk04YXQ0a1EwVkhQUDFP?=
 =?utf-8?B?eXVoamtpYVByQmo1L2NKWDdCUis1d3doRGl1QWNHdDlIV1phWHFJM0YzSnZI?=
 =?utf-8?B?ZmZRVXVSb2FTM2czQ04vRUsrWnVPQktUTitIUEM3M0x3RE1OZzIvZ1o4WTYy?=
 =?utf-8?B?d08yR29hMm9ONVFiUDlKZ0FYSko0T09BUHpJYWRwWUQ2a05ieXJiNHFNS1RG?=
 =?utf-8?B?bVBIU28yN1FUTi83NnlOaVVJTVBkbFZtOVhpTUN0aWxtK2ZPMlFpcy8yUVZO?=
 =?utf-8?B?WkRVdVZHa0xUekQvUXgyRVhpaDlSNFJIOUJxZSszYVp1YkFsT0xrbjJxUVMr?=
 =?utf-8?B?cFdaYUd4bzlkeHQ1YU1NeENuV0JVZUtJZG0zbDFoOTZTWWxyNTlqMzJ1Zzl5?=
 =?utf-8?B?bVptVlMvTnpvUHJ1dnd5U2xNdFE4bGpNYVdXbzQ2a015VlZVYlM3bU5lcm9X?=
 =?utf-8?B?K3R6b1pCTlNJdVpxM3J6TDJEWnltMzc4eVlxRHRVUjI0Sm5tRXN4aGQwNWdU?=
 =?utf-8?B?cE5GdGZkTHUwUDZsNHpWaUdUUVJYb1FBYk9WZHRwcWxvZUp4Qk5QMzMwcStQ?=
 =?utf-8?B?a3JqY1hUZ2ZUelFPalo5N2o0K3hIbitRR3R1UnU2eGlsWTVMNU0wNmQ4U2RZ?=
 =?utf-8?B?UDdHRUs2b2hkTmtyK0ZaYkM0RG1TM3BCdXNxcFFLeEhkLy9rZlN1RHRQVlJ6?=
 =?utf-8?B?c1pSMDVkTDMraGV1TTFta0JqM01LYkpVdjhMc2pXWDY2ZXlkNmhwZDhlUlM2?=
 =?utf-8?B?TmtsMzBHRlQxR2xqaWgzWlhCektzVVFwd21sVkNldGNGMWcvNFpDK1hZOTFC?=
 =?utf-8?B?V2IxeW1RY0hSK1l3L1crQTNWN1BodlNUOUJBRGd5UkErSUxOVnpxWGpMOWdZ?=
 =?utf-8?B?Z3VIenRGaS94MlA0dW44RUQwZTd6YnpMdzFwRkJjOWpZVUpFMnA0azdJbjVy?=
 =?utf-8?B?MnVFUC84SklRRURIMUoxaTNPNmxVQndGRVpIZlE1QkJkNVdBakUyRlU5TkNT?=
 =?utf-8?B?TW1TRkR0ZncycVowVUo2b085VHV5YWpHdGZMcFNmdHJFN0Q1Zm9kbjkweFFY?=
 =?utf-8?B?UHJDNjB3UW9mY0VmODk1NmpXcitZSEdqVFdqaDlNTVBVdzU2TWNXa0hhL0RE?=
 =?utf-8?B?Q29XOS82ZGhSWGFFSDVSNHljZFAvOWxwQWVrZVVyZDR5Rkw2SGxKOTlBRFB5?=
 =?utf-8?B?bDVRL2VnL1o5d2l6Mno4c2hVK2tpSXRCUjc1MU1mek9iaUFKY2I2RG1zZVQw?=
 =?utf-8?B?V1lYWU55TlVHODd4RzhIVWV2QU9YVXBhaVl5SXQvTkpTQ2ljNTUvaWtqcDc0?=
 =?utf-8?B?QmlwZThPZDNRS1RXNlJ0YW9jQVcxU3AvTzhPVFNvVGY2L0ZHZ2VQNUpQRGo0?=
 =?utf-8?Q?pG+gd0Jw+oxEKVB5x14tni4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4abbb07-034d-46d2-9105-08da981653b5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 19:04:49.1206 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6CuSQa16X/7frWBxpfDSQtbbXVv468lS0/K7dicPqn4X1nBE/2Amz1gQbQXh75PTJNmhkNzDQ1aLscxGDO+hCOdtpKcJl3o05cF/gXdA98U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
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

On Fri, Sep 16, 2022 at 08:22:40AM -0700, Dixit, Ashutosh wrote:
>On Thu, 15 Sep 2022 22:16:30 -0700, Dixit, Ashutosh wrote:
>>
>> On Tue, 23 Aug 2022 13:41:52 -0700, Umesh Nerlige Ramappa wrote:
>> >
>>
>> Hi Umesh,
>>
>> > OA reports in the OA buffer contain an OA timestamp field that helps
>> > user calculate delta between 2 OA reports. The calculation relies on the
>> > CS timestamp frequency to convert the timestamp value to nanoseconds.
>> > The CS timestamp frequency is a function of the CTC_SHIFT value in
>> > RPM_CONFIG0.
>> >
>> > In DG2, OA unit assumes that the CTC_SHIFT is 3, instead of using the
>> > actual value from RPM_CONFIG0. At the user level, this results in an
>> > error in calculating delta between 2 OA reports since the OA timestamp
>> > is not shifted in the same manner as CS timestamp.
>> >
>> > To resolve this, return actual OA timestamp frequency to the user in
>> > i915_getparam_ioctl.
>>
>> Rather than exposing actual OA timestamp frequency to userspace (with the
>> corresponding uapi change, specially if it's only DG2 and not all future
>> products) questions about a couple of other options:
>>
>> Option 1. Can we set CTC_SHIFT in RPM_CONFIG0 to 3, so change GT freq to be the
>>           same as OA freq :-)
>>
>>    The HSD seems to mention this:
>>    Is setting CTC SHIFT to 0b11 on driver init an acceptable W/A?
>>    Note: Changing the shift setting on live driver may break apps that are
>>    currently running (including desktop manager).
>>
>> Option 2. Is it possible to correct the timestamps in OA report headers to
>>           compensate for the difference between OA and GT frequencies (say when
>>           copying OA data to userspace)?
>>
>>	  Though not sure if this is preferable to having userspace do this.
>
>Also do we need input from userland on this patch? UMD's might need to
>assess the impact of having different GT and OA frequencies at their end
>since they consume OA data?

Lionel is aware of the change and I believe he has some patches to 
consume this API for the GPUvis support, but we need an Ack from 
Joonas/maintainer to merge any uapi changes. I will add them to the next 
revision.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh

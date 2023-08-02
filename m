Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4626E76C47D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 07:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C368C10E493;
	Wed,  2 Aug 2023 05:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1591510E493
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 05:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690952583; x=1722488583;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QqncDUScAQcfRd+WiJRVbJGOK/lOMprLWMf3BPRw85Y=;
 b=FfNu0W6MIG+N14Az1UHTD/O5jR8zbeAI407cE+fA4QzuRaZUpFgxEPJb
 /CbuRzrwH/JjTyylWqp8oTlYssAn+sLo5RIoKbVQ/PiuKVMXl/2cltsiJ
 2551hORFLw/fHSCfwjBxz2AcxKamEakzlfgi5tT+5fPgBX7tRbYjB2CcA
 26nhrp53QXdK1r/EGsSzGEMBiYA97QgjyolJXNEjM15GPWglWx66qSuXu
 475JuuIFzel8kLgL96KCegvtC23WfRCYwA8WNXbwmiVtVXnzeFuRAuWpA
 npk1N93K/NjzT60jxTNx9R1gdGEQfwTqeVbhzTIaqrmShLMyktU6iDulP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435805938"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="435805938"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 22:03:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="1059683908"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="1059683908"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 01 Aug 2023 22:03:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 22:03:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 22:03:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 22:02:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cRVJF63GVDB9KatIPiwylAIEIpNOW80vM4dmGfBGuo2a4/4XQGBVTI9rsOeSanHyNgB07e2WjrM69u2YXMqMmhr95oVDKRWYMqNhr6fBzzwzie3bSLTVkR6Ptm6sRN/G1T3OKNxJwmpG+pkr/7ClQJ4dHUtH2kabwHcRSkSOgj5oe54dMRVHTjYJXWXTEEhgLvUj3MTPsVcfeECEe9bhdHupECe7R3W3THaprQDQbqknVoQnalu5dQ1xlJp9zHSvlZSod1iivoc/aAA8IJRpx5tNCIflSzHFWq3y9qCH5QF4WFdpBkc8Yq/NDWhYa2MiMkRLCoiEXccuI4ZfCwbMKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dXLcCAXMuPp7Ms74vlZmZCJKBR3YxJ47tRsCDGwuyyg=;
 b=VaJ31CK2jfzIhZQitAnfky+VbmFgRY2RIKf0knUIfILQVy7hva1EI8tOLxWGwOGf3BqHJHSAbpVGyHG6Kl3GNBkeIGYMysLaM/KA935syfh+LGgQS7iU/ZFz2AEteESTdTi/rjjqh2X9reuuwYjIGZqwr5RjVNgTaKFTkes70q3v5wli+ynozAvsVQrSUxqj8ut511iy2T6qAxQC/JbHEigKZht7tZMjOk0qAfLTqhMLsyPojqaMgp0quPeval2rCvaj0C5VxUVwfcF86TLd1rSH2o8dN69oSzC+/yfBiuJX5exh7qKxJx7ooytRtJRXH0D4bqnwMVK7gtAf3D7/yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7964.namprd11.prod.outlook.com (2603:10b6:510:247::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 05:02:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 05:02:57 +0000
Message-ID: <f9b6f2eb-df9d-1721-ec52-ea7eb7b33163@intel.com>
Date: Wed, 2 Aug 2023 10:32:44 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230720080715.3063267-1-suraj.kandpal@intel.com>
 <20230720080715.3063267-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230720080715.3063267-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0190.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7964:EE_
X-MS-Office365-Filtering-Correlation-Id: f4a4ad73-43b9-4a72-d022-08db9315bc38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4++Zd833B5GkNX8cQKXoAml2FT5NCRllAQoyG3i5zff7oONJWaYtEcd/NONcDBaM8UwnhDMl252iCynY9QJdRL8BWskmytiOwM2oWMHCKuQadOBosZ+Wz1OYwqTdVWHDxzYrFeZA5yakq3wQ6Qv8EeQfTT26Whu/9EK1P9SjpH8zQQAp3eoQtAmNgHWCJqBn82LZB9oaoRIZpdNDhJbibZmfUUAHdbthXZsYULiHFUsauyFskjbdtBX2fumqPP61j59pnwLBTuAHBUowPzwUX+SNfuZdF2E4hlv/djlwcB/ffm5GfUL7fhApRyWg2KTzEHlyGHkBBUVP7JDC1KnjPnmnKcECghaqigfG/0zPxle3Oh0+YgUplNXJD9GGHNrAGLohM8u/l3Ga2AqcdoDBIy8uwe4S9UyaAfXOvcTR5V9B5gKtdjOCDZN8Iz9blV56653MlWa8xMnDEofCY1zW4N04yL1Q7VuavimGxETmCfjhj1J4zjgWuf86QJlU8g0rdVe+SWjc3pKhORK9xIZcb5rDQNKb5IswSS2BalsmIetB16xxeFUZ7Mkgtr5FCU9hAsHAjpXvwvN40H1R81BwUGosuxMZzdQLPSjILKY5iOnR3yZLamGeXZuws8dQwoFead1c+eqW3iii1KbZbAjBXQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(136003)(396003)(346002)(451199021)(2616005)(186003)(6512007)(316002)(86362001)(478600001)(38100700002)(66946007)(66556008)(66476007)(6666004)(6486002)(4326008)(31696002)(82960400001)(55236004)(6506007)(53546011)(36756003)(41300700001)(26005)(8676002)(5660300002)(8936002)(2906002)(83380400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWw4QnVSSlo0UFlGTXZJMEt3L1lpRW5MQTU0aDZkR0lLVmUwOXZIdjRUbEZh?=
 =?utf-8?B?eHhHQ24wYzFSSUJ1ZlFpQ0NkUjVER2lsNndEUnhWekE4QWs3dWdOR1ZtVkVu?=
 =?utf-8?B?elVVdWx2Mm5vRkJtcE1jdjRxUUlmR3YwaU9EUlhIbWFwL2c2dXhad0dsU0pa?=
 =?utf-8?B?a05MY1o2bkFOZzJPQW02a0V4Q0R5QTBNR3N1N2QwSkp2YkFXNTNhdWJoTGRJ?=
 =?utf-8?B?THVQcVN6dy9FQzdTcW1VYXZrZzJKUDM1ZHFGVzBCNDR2czdhTGppQTZVaEJl?=
 =?utf-8?B?NnZJYUltVHltSE5rbGtYdlBKOFZzdzJrMXFiL0JWMzdXaDJRSFRya0tKNVgy?=
 =?utf-8?B?cXZqZi8ydVMzWGRSbmorY29HZW1QZWhWRlR0TlFDdlJtcWxRVjVUc0hRS210?=
 =?utf-8?B?Y1JKWUpCdm9qbHJrUSsvVURwT3BoSjlnc29FNVJMdTZ1RzViOHNPY3QwcmZz?=
 =?utf-8?B?N2hDMkNGeTJVb1BpSHpYbHhEUlU1WFIxbmk1TkdhTWYxbXAwTU50L1hQNnNR?=
 =?utf-8?B?OURUcFRGU1NKTUdRQzJIRnliMllPNVlYcDU4cVUrZjhVNlhyRVo3V0xhZkIr?=
 =?utf-8?B?bmJzeHVoQS9rMTdLL0VEdC94MjUwY3JRVWl6MmFhR2pzL1RFTTJXM1ZOb3cz?=
 =?utf-8?B?VFRuWTFMb2NLMHdiRUIranoxUlI1ZmtKQjFGK1BKRmhEZlNLL2xuNmVFdkFM?=
 =?utf-8?B?TVk1aTQwZFV0Q1JhR3JGbVNlYXpteldkVEtjWEFhUEhKZ2t3NExXdktiTHN6?=
 =?utf-8?B?NXR4bjVMWUxDc3NHRXhIdFd5OTR2SThSNmZmdHVqanBJVEtVTVZMaVRLZUhq?=
 =?utf-8?B?aURYTGQ1WEpmM2d3SjN5ellVSFdVNXQvaUZxN291Y2g2Mm5TdkVHT0JPbith?=
 =?utf-8?B?N1NOZ1pPMG1ETExxNHBrZmtmUWxqTGFJbytwZGFYc01aUllZMXp2UGJIRkVt?=
 =?utf-8?B?bWtWekFYd2ZueDFxbzhtTURPNWdyR1U2cjRqV2tVbks3dUx0UUJXQzR2MHJD?=
 =?utf-8?B?VVZJN3FUS2RtZStrRHk5TXlBNUhMd29HUU44OEdOOURZUklKZVQzZkM4c0NV?=
 =?utf-8?B?Z0hDM3Y3TS9sUVp5b014VjBNN25tWEFPeDlwYlhoN2xCSnNSRXVvTEtkb1Ay?=
 =?utf-8?B?aUh5aGtvMG03ZVFaaTQrNW9BaXlSWlhSbEQvNkJTZGhSQXhNVi9sa1lCbjFH?=
 =?utf-8?B?M1hXc2hoYWNnNkoydHBhSnBmZnNSVktmazJKVjlTRnpKOVhSSWVFaVVYUDVJ?=
 =?utf-8?B?RlY2VEF3L2xXajhYenRJMndxZW1ienl5YWVCYVRJbVZIbW1mamVTWkxkUFFo?=
 =?utf-8?B?VHpvN085eXZyeFQzMGdaWXphd3FmTUltc0VTeGQ2NStBdHlpRi9ucnYwRUtT?=
 =?utf-8?B?ZTIrNkxKcUVrbjduK2JXQ1ExN3cvZjRzd3VZeE1EalE4MzZJT2l1U2JhVGRU?=
 =?utf-8?B?RndUQ2ViZTczT0xiL1BSMVJ0SlQ0RittN3BXU0ZvdjYvQ3ZTZmNpMkgyT28z?=
 =?utf-8?B?WjMwVW0xdWFDN2YrNTlJbHVTUDVRbGFGckVYVmZVK0NpTHFBQ1llWnpsdGtI?=
 =?utf-8?B?MjcrNUU4OU1kck9KbC80MXlFWTJkb0JtOXVRT3hrYWxaNnkrc3pVTjRVc3JC?=
 =?utf-8?B?M2RId2MzQ3pJM2EvQ0ozREtjRTE5TENvbDhsRTBFY3R3YnZzQXdXWGxrdXli?=
 =?utf-8?B?bzJHYkI0UjhWNzg3M1RQKzVFdXhiVVRkeVUwVlZRdUNZRGhhdXFVMXFvMVpS?=
 =?utf-8?B?SjVkU1JoeGNaUWErM24zdGRMcUx1amUydWU3cEpFZ0VXM0ErZXdtaU1lTFpS?=
 =?utf-8?B?dGMvbGZZK3RXblpiU01aVGRCemZ0SHdCRTBiSXRtMjJ3UkJPUUZzbXAvUjFC?=
 =?utf-8?B?c2ZNYkZteTRyMU4zd1Jvb3d2ODJ1R2V1Nm5hUkZoR0IvOEkrbTNkY0djL1Ur?=
 =?utf-8?B?cWJXY0NFckNYdDc0aE1tYWxyMHNJWG5OdERWQ3RDZG5VYVpIdFBoSisraVVC?=
 =?utf-8?B?eE1JT3R2aHhUTkFiZURJVVh0RkxPMVVMSVpjeGJ5OXVHcDZqZkFTZXN0RW1D?=
 =?utf-8?B?RmlMNlFOUUp2NjRucENuc1dLMmFobzBNYkREYS9iWUtpUjI1dnJxWGlPRlJp?=
 =?utf-8?B?MStsSnM0cWJ6VmpZZFd2Tkd1U2lPRE9nOWRoMERFUXlzS2pJSm91SDFGSUIz?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4a4ad73-43b9-4a72-d022-08db9315bc38
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2023 05:02:56.9067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eP+/OWGmk3iFAXzmnxbSQWZj4flE0XZuaal7ulKyaQ9hz8Bfxnsm3R2kDUp4v0XW5LQWTmck/8Z0nvBZmDUQWoJNFNIRKGs8RgWF4w0gxV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7964
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/7] drm/i915/vdsc: Add a check for dsc
 split cases
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


On 7/20/2023 1:37 PM, Suraj Kandpal wrote:
> In intel_vdsc_get_config we only read the primary dsc engine register
> and not take into account if the other dsc engine is in use and if
> both registers have the same value or not this patche fixes that by
> adding a check.
>
> --v3
> -Remove superfluos new line [Jani]
> -Fix register naming [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 14 +++++++++++++-
>   1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 530f3c08a172..9196329d998d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -939,7 +939,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   	enum pipe pipe = crtc->pipe;
>   	enum intel_display_power_domain power_domain;
>   	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0;
> +	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0 = 0, pps_temp1 = 1;

I think pps_temp0/1 can be declared where they are used.

With that fixed, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   
>   	if (!intel_dsc_source_support(crtc_state))
>   		return;
> @@ -965,11 +965,23 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   	/* PPS0 & PPS1 */
>   	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>   		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> +		if (crtc_state->dsc.dsc_split) {
> +			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
> +			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> +		}
>   	} else {
>   		pps0 = intel_de_read(dev_priv,
>   				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
>   		pps1 = intel_de_read(dev_priv,
>   				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> +		if (crtc_state->dsc.dsc_split) {
> +			pps_temp0 = intel_de_read(dev_priv,
> +						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
> +			pps_temp1 = intel_de_read(dev_priv,
> +						  ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
> +			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
> +			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> +		}
>   	}
>   
>   	vdsc_cfg->bits_per_pixel = pps1;

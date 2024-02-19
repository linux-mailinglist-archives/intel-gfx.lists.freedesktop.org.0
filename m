Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C67385A16D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 11:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E06B10E300;
	Mon, 19 Feb 2024 10:52:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tpm7aCBr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0989610E308
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 10:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708339969; x=1739875969;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TV2awBY5l0hw+po6uaZB1R6k8RUvDA2tvt95abJGX1I=;
 b=Tpm7aCBrIAFX3Y2wdNHOSHzrxwiaa2av+n0hKNdb1t1KNsW3YeFwNT2b
 RemVLN/74qaaYqQUXKHKZP+b8zNGVoOq8bfoJTF5kzaJlAUZ5hkihtAtV
 vqywI1LD4hOYvVaNOR9coSActcDYF3Btnkb7NByrRMUCADWtTaQIU1QnL
 DHw+zSgWY+sWTVa+gw1Q8k3LgdCoQcWtTY+IxOEBtak4WUmxY0/AWpNAM
 Dvu37iLwdb0XxXL5vAa6FguS9TJecjY+7L1s84w02B7M1fC6FeHEhjZgY
 WhiYVNQw5HghxFIwvWuBhFepNVlDKn5flKRkRD+WDJpCoK82XCzo/kJfX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="2558578"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="2558578"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2024 02:52:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="4432077"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Feb 2024 02:52:49 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 19 Feb 2024 02:52:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 19 Feb 2024 02:52:48 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 19 Feb 2024 02:52:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IcxoOqd1ZJTffsjf8LN9RY5tN+QQtlbATfyB3S7yc+UYLAk169DOo0DRzXnr8NHqzQTAiyHfgdwoqExfRsPUEi4rZp2ui2JoXwQqQrp819A7lXTYCZ16NB7s4gK9Cs4t9sLyc7S7z5r/TZ6L66yNRSxjzyaQXHAoNhLnlPDMBGx4RAlgU3Tm7WK5yog3xAsHsP4GNyYAvyNKgV3jBN9Yh+0/KYLq+NJKLR/2Mh/JH392ffYFa5LRClRnILyu3rX7DCnj8Zjy7NXjkLh9cMgGWmdDyzaDGh0LoSbVXsWMxJ2+oKukCjsorGKZTh6p592LO/LZ+gY9Rh/OSdhENG9k/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mYN2cnduyeO00XuBJMXk6m4YY5TayB2GpjqcbavKFuU=;
 b=e6rRVkoB1HWoxDU7BZ9RurPlhkm26nKvQrVktflSIkH2Ji4PlkX6VZyykEijsjoVmyYm541ZgfQSvWG+75DyxpqTEsjVGeLOKa0qOWDtdaS/nhdLy68z3Cm0rPIE0JxlYM9VBe6KOkG3p5+HbcRcjqRSdKkYly0Ai60spLcwVlYYI5ndKOx0UtMnLlquLhYEACFa6WWr2RUt56D62R9cTjoBg+JUxEUgafR2yg9944D90Ct6iVfwgexsOikuvDlXF3Qblz1g/axemcHW8TWyWDP0/SCB2QzdPFx7+lLALvNSRtbCb8G2Q/Zx1wiBGP6yF/WLfOhizlJK7KkzuSzxYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4631.namprd11.prod.outlook.com (2603:10b6:208:262::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Mon, 19 Feb
 2024 10:52:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7292.036; Mon, 19 Feb 2024
 10:52:46 +0000
Message-ID: <f2351627-f085-48c1-b52a-38519569f396@intel.com>
Date: Mon, 19 Feb 2024 16:22:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/13] drm/i915/hdcp: Rename hdcp capable functions
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <uma.shankar@intel.com>
References: <20240215105919.1439549-1-suraj.kandpal@intel.com>
 <20240215105919.1439549-6-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240215105919.1439549-6-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0006.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4631:EE_
X-MS-Office365-Filtering-Correlation-Id: c8c8367e-3d7c-496d-1a10-08dc3138e819
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EHgQfFh6wyz1Xdq+I4NLPCcCgp58mefJZHklItRXew0hRFWCC2Y5393P8nXPd0+bMu0EwWJ0JoroPepFCX4Bz/VOwJTaYF7M1E+txTOuZaZ/h4eDtU8KeQ4P5ZkLy5urzTxlb/VwHfLla5bj1kf2oBqmLoqxbC8T+XkNyDM3yMZBQzGyvFxmZtixTrYTMoxnwQh1ave/RHZYDubDbravpUn5GheTPMpNexZBdT53twqg6I4vk4CDLh3k8ItXXPdh+CronnI909loi8OiHPFr39N/WuvIsb4wd6JWTZzznzWeDQ94JL14wVmuL0+N+voN7dhe7CpDodnACZwFPY+e2XAUYNmLoB3ILwjM8YMft5sWGcBZCS+y5Krcgegpi0MHF94MIiwXSDrDQtWTE+IfO2jR1ozjFCujfWRAn2jbl9bHHdblkjcL9VlGDv7CTQ7CfdrwTh5/Sx0T/c7Hr36a/8o/SZ4RFE6vL47EhYekPtdAC5ir6qqtNetWUOWYANWLBpwXKRYFZm9WP45tgfPEsw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M29yZ213cXJWTzFpVVI0NU5YMGNaY2RQUlVDQXNTcCtQd1MrOVcyb2V6RXVj?=
 =?utf-8?B?Q2Z2RkYrbGZXR0xNWTVNNzVOTmtSSXF3TklZd2xFUFZpa2pFMmsxV1c2enpo?=
 =?utf-8?B?VDE3WlVRMnBHNXhPY1pUYWFYREJtcmNmd2FRZHJhTWwvV1IvcEVnRVVOckt2?=
 =?utf-8?B?bmxwVDhNS2ZPQ3JZeU51ZDFReXNNV2p3QXgycnRGRFZ1VGZxdlBJMUJkc3hY?=
 =?utf-8?B?bWZYcjlUTFR4V05JKzRXaFVBQUlkK2JWWWZ3RWpESnBrbk9RSFRnUmhyVGZp?=
 =?utf-8?B?c3BOQnNTWHNoeWxuMnYxdEo3VTcySkpEcjVzVzZJOVdTbHNNVmUrU01mTU0z?=
 =?utf-8?B?UWJ6RDY1SnROaVlwcnE5cEtXQ0NSK1FaeTc1WHNIckNFdXNxNFVsS1lNeVFw?=
 =?utf-8?B?OVN1WmxYSGRKUlBXTGxRY3VRaEV5Ykp5ME1ocFpCQm9tdEVlN09vYmdmdTN2?=
 =?utf-8?B?TGdZSlJKcG5rYjFWdElZem9vaGdJem9DZEowZHgwQmtWYTUzRlFRYzk3SXR5?=
 =?utf-8?B?VzJieUhSRHYvUG0xeTV2NFFWZjNnbndtQmx4eW5xb1AzL2pFS09qeDNXbith?=
 =?utf-8?B?N1o3MXV6cEJyV21OWE5QM2NpZ0RFWlNlUFprWjZlYlRzZlFKWkxpd3ZHanlr?=
 =?utf-8?B?VWhhUmdEM0x0NGdZcDRiNm1MK3NlQUpIQVBLSkl4NklOMHkvKy8weDFjcUtD?=
 =?utf-8?B?WXlHcGxuRXAzVkczblpDYVRjV2xtdjYxZlBaTmc1YTNvODcwc3BVZDJGTUpn?=
 =?utf-8?B?SUYwTGtETURpK1RtTVpJbEkySlk4aGZFald6WmFuMEpRejQwMkhLNmJHVWN1?=
 =?utf-8?B?RDRoSDZKNlpiam9JUGlncFdCaGsrQnNrKzF1cVFaMHBpU05ZSVlIZllIb0NU?=
 =?utf-8?B?a0J0WWE0ZkxVVlVyRkR0dVk3dlI2aDNhbjFiSGlqdmFEbWJGVlk4UW5UN0Rw?=
 =?utf-8?B?NE9MRERZc0d3QUlIS3J3N0J6NEd4TWgxNllHempHdk1GVFNBVDM1a0loRWVi?=
 =?utf-8?B?cGhtUjR1aVgzVnhLOUZnQzcwQUVyWlVEVmpycFBiNHdzNjJrNlc4emV6NEsw?=
 =?utf-8?B?V0ovbTRXWGRBc096OFpDTDVEQittcUpveDlycWZmWU9pbjNnclB2RU5aTnNj?=
 =?utf-8?B?SVJKYkkrUVFYbGlnbnpmT1lzbFdyeWxObmxBcldlWXJDeDFkRkZFSWcyT3dw?=
 =?utf-8?B?cHNRTXNWMjZzbTZSOTRYRGRyZm92NGZQa1lUc1REK01nak5HSWhvU1VFTVVZ?=
 =?utf-8?B?bHhsai9QbUFJeHJ2a05FNkNuZWVIV05aYUVtZWxRdDhBK0Z6amNKWmk3cTJT?=
 =?utf-8?B?NUNTbVUwQmtDcXRodXBjUm1keEV1MEZqbnFwUEF5eDVXSlBOSzdKMWVrU0o0?=
 =?utf-8?B?VFgwelJLMTZLUllodHN4SDJ2VSt2ekRDSGRPK0QrclZWSmk4ekdBOEVFUzNK?=
 =?utf-8?B?ckt3RG52Q1VWSncxZFdCOTROUFZ0dnNPUE5EM2oxeXRnUVZQWDVCRGUva0FI?=
 =?utf-8?B?TG45UEtWbHRLcUZZbEYxWEFwbHorblhIVmJoeTNSVEdyMkxzcXVJMEt5TXJX?=
 =?utf-8?B?OFpPRFEvaHFJM3JkZDdpVktSdjhkVmp6TFhDQXhwU25paHp6TXYrclF4S0dE?=
 =?utf-8?B?SmlIbEFtQzlaMjFJRTdUTWYwT3Q4aHoxbHRIMGlrcG9pVDZneXAxZUxNZ1dQ?=
 =?utf-8?B?SVRlZktJZXAzVkdzeWVhem1JdzhoSUVNV1VzanhVTjJLSGUwTGxmc21KQkFO?=
 =?utf-8?B?N1pjNytEZXZUTGZsT2h6blREVzJ0d3NjOVU1a2w3dXZ0NWJleldhb0Y5dnZY?=
 =?utf-8?B?NHdaNVZ5NGpNTFR3UFpIVWREaTRxdkI1SVdtQ3hDaHh4L1AwRkpkaW05L1ZV?=
 =?utf-8?B?cGRRdjI4Yy9pc2h5aDVqOTkyVm9QWnNIYUlzelMrSzBvUy9NaE56UHhtNlN2?=
 =?utf-8?B?ejM2b3N1UUVTYmcyUEtuekRpeHk2WnFubGlVNXRXWUFhOXhsQkkvdHBhMjhk?=
 =?utf-8?B?YW5ZKzJyL1hsMWlNKzBXN0NoTDEzTy9JVVUrdWxEZS9iN1ozMkliUHBwTkxl?=
 =?utf-8?B?d1JMUzBla3o3UXpEOFNkNWhQWWZaU0xXQVhock9SQmNBeWluTzVJUmpVNjB3?=
 =?utf-8?B?cWY4UlNra0JQNnRTUkhNR0FRRkVFUkY1Qjd0RHJ5eTlQVjBmUDhVcjZ5dWxH?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8c8367e-3d7c-496d-1a10-08dc3138e819
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2024 10:52:46.2756 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 85BkKJOrZOZWdCL60PwGAGI7VP1JUB3PWJxrnq4K+8Zs9JRaTw49xpfVKMww26umD72wItkrXS6hICvMVb8e2/66BikiNuNAHdDHQQZG/Ac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4631
X-OriginatorOrg: intel.com
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


On 2/15/2024 4:29 PM, Suraj Kandpal wrote:
> Rename hdcp_capable and hdcp_2_2_capable to hdcp_get_capability
> and hdcp_2_2_get_capability to properly reflect what these functions
> are doing.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   .../drm/i915/display/intel_display_debugfs.c  |  4 ++--
>   .../drm/i915/display/intel_display_types.h    |  8 +++----
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 22 +++++++++----------
>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 18 +++++++--------
>   drivers/gpu/drm/i915/display/intel_hdcp.h     |  4 ++--
>   drivers/gpu/drm/i915/display/intel_hdmi.c     |  6 ++---
>   6 files changed, 31 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 6f2d13c8ccf7..676ad082f0f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -197,8 +197,8 @@ static void intel_hdcp_info(struct seq_file *m,
>   		goto out;
>   	}
>   
> -	hdcp_cap = intel_hdcp_capable(intel_connector);
> -	hdcp2_cap = intel_hdcp2_capable(intel_connector);
> +	hdcp_cap = intel_hdcp_get_capability(intel_connector);
> +	hdcp2_cap = intel_hdcp2_get_capability(intel_connector);
>   
>   	if (hdcp_cap)
>   		seq_puts(m, "HDCP1.4 ");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ae2e8cff9d69..b77070d0897c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -499,15 +499,15 @@ struct intel_hdcp_shim {
>   			   struct intel_connector *connector);
>   
>   	/* Detects panel's hdcp capability. This is optional for HDMI. */
> -	int (*hdcp_capable)(struct intel_digital_port *dig_port,
> -			    bool *hdcp_capable);
> +	int (*hdcp_get_capability)(struct intel_digital_port *dig_port,
> +				   bool *hdcp_capable);
>   
>   	/* HDCP adaptation(DP/HDMI) required on the port */
>   	enum hdcp_wired_protocol protocol;
>   
>   	/* Detects whether sink is HDCP2.2 capable */
> -	int (*hdcp_2_2_capable)(struct intel_connector *connector,
> -				bool *capable);
> +	int (*hdcp_2_2_get_capability)(struct intel_connector *connector,
> +				       bool *capable);
>   
>   	/* Write HDCP2.2 messages */
>   	int (*write_2_2_msg)(struct intel_connector *connector,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index ef1a4c90c225..91736c7e3c83 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -266,8 +266,8 @@ bool intel_dp_hdcp_check_link(struct intel_digital_port *dig_port,
>   }
>   
>   static
> -int intel_dp_hdcp_capable(struct intel_digital_port *dig_port,
> -			  bool *hdcp_capable)
> +int intel_dp_hdcp_get_capability(struct intel_digital_port *dig_port,
> +				 bool *hdcp_capable)
>   {
>   	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>   	ssize_t ret;
> @@ -638,8 +638,8 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
>   }
>   
>   static
> -int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
> -			    bool *capable)
> +int _intel_dp_hdcp2_get_capability(struct drm_dp_aux *aux,
> +				   bool *capable)
>   {
>   	u8 rx_caps[3];
>   	int ret;
> @@ -659,13 +659,13 @@ int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
>   }
>   
>   static
> -int intel_dp_hdcp2_capable(struct intel_connector *connector,
> -			   bool *capable)
> +int intel_dp_hdcp2_get_capability(struct intel_connector *connector,
> +				  bool *capable)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_dp_aux *aux = &dig_port->dp.aux;
>   
> -	return _intel_dp_hdcp2_capable(aux, capable);
> +	return _intel_dp_hdcp2_get_capability(aux, capable);
>   }
>   
>   static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
> @@ -679,12 +679,12 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>   	.read_v_prime_part = intel_dp_hdcp_read_v_prime_part,
>   	.toggle_signalling = intel_dp_hdcp_toggle_signalling,
>   	.check_link = intel_dp_hdcp_check_link,
> -	.hdcp_capable = intel_dp_hdcp_capable,
> +	.hdcp_get_capability = intel_dp_hdcp_get_capability,
>   	.write_2_2_msg = intel_dp_hdcp2_write_msg,
>   	.read_2_2_msg = intel_dp_hdcp2_read_msg,
>   	.config_stream_type = intel_dp_hdcp2_config_stream_type,
>   	.check_2_2_link = intel_dp_hdcp2_check_link,
> -	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
> +	.hdcp_2_2_get_capability = intel_dp_hdcp2_get_capability,
>   	.protocol = HDCP_PROTOCOL_DP,
>   };
>   
> @@ -809,13 +809,13 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
>   	.toggle_signalling = intel_dp_hdcp_toggle_signalling,
>   	.stream_encryption = intel_dp_mst_hdcp_stream_encryption,
>   	.check_link = intel_dp_hdcp_check_link,
> -	.hdcp_capable = intel_dp_hdcp_capable,
> +	.hdcp_get_capability = intel_dp_hdcp_get_capability,
>   	.write_2_2_msg = intel_dp_hdcp2_write_msg,
>   	.read_2_2_msg = intel_dp_hdcp2_read_msg,
>   	.config_stream_type = intel_dp_hdcp2_config_stream_type,
>   	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
>   	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
> -	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
> +	.hdcp_2_2_get_capability = intel_dp_hdcp2_get_capability,
>   	.protocol = HDCP_PROTOCOL_DP,
>   };
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 4593ac10e2fa..c1a32f9f1199 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -140,7 +140,7 @@ int intel_hdcp_read_valid_bksv(struct intel_digital_port *dig_port,
>   }
>   
>   /* Is HDCP1.4 capable on Platform and Sink */
> -bool intel_hdcp_capable(struct intel_connector *connector)
> +bool intel_hdcp_get_capability(struct intel_connector *connector)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
> @@ -150,8 +150,8 @@ bool intel_hdcp_capable(struct intel_connector *connector)
>   	if (!shim)
>   		return capable;
>   
> -	if (shim->hdcp_capable) {
> -		shim->hdcp_capable(dig_port, &capable);
> +	if (shim->hdcp_get_capability) {
> +		shim->hdcp_get_capability(dig_port, &capable);
>   	} else {
>   		if (!intel_hdcp_read_valid_bksv(dig_port, shim, bksv))
>   			capable = true;
> @@ -191,7 +191,7 @@ static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
>   }
>   
>   /* Is HDCP2.2 capable on Platform and Sink */
> -bool intel_hdcp2_capable(struct intel_connector *connector)
> +bool intel_hdcp2_get_capability(struct intel_connector *connector)
>   {
>   	struct intel_hdcp *hdcp = &connector->hdcp;
>   	bool capable = false;
> @@ -200,7 +200,7 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   		return false;
>   
>   	/* Sink's capability for HDCP2.2 */
> -	hdcp->shim->hdcp_2_2_capable(connector, &capable);
> +	hdcp->shim->hdcp_2_2_get_capability(connector, &capable);
>   
>   	return capable;
>   }
> @@ -740,8 +740,8 @@ static int intel_hdcp_auth(struct intel_connector *connector)
>   	 * whether the display supports HDCP before we write An. For HDMI
>   	 * displays, this is not necessary.
>   	 */
> -	if (shim->hdcp_capable) {
> -		ret = shim->hdcp_capable(dig_port, &hdcp_capable);
> +	if (shim->hdcp_get_capability) {
> +		ret = shim->hdcp_get_capability(dig_port, &hdcp_capable);
>   		if (ret)
>   			return ret;
>   		if (!hdcp_capable) {
> @@ -2388,7 +2388,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
>   	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>   	 */
> -	if (intel_hdcp2_capable(connector)) {
> +	if (intel_hdcp2_get_capability(connector)) {
>   		ret = intel_hdcp_set_streams(dig_port, state);
>   		if (!ret) {
>   			ret = _intel_hdcp2_enable(connector);
> @@ -2406,7 +2406,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   	 * When HDCP2.2 fails and Content Type is not Type1, HDCP1.4 will
>   	 * be attempted.
>   	 */
> -	if (ret && intel_hdcp_capable(connector) &&
> +	if (ret && intel_hdcp_get_capability(connector) &&
>   	    hdcp->content_type != DRM_MODE_HDCP_CONTENT_TYPE1) {
>   		ret = intel_hdcp1_enable(connector);
>   	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index a9c784fd9ba5..aeefb3c13d2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -38,8 +38,8 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>   			    const struct intel_crtc_state *crtc_state,
>   			    const struct drm_connector_state *conn_state);
>   bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
> -bool intel_hdcp_capable(struct intel_connector *connector);
> -bool intel_hdcp2_capable(struct intel_connector *connector);
> +bool intel_hdcp_get_capability(struct intel_connector *connector);
> +bool intel_hdcp2_get_capability(struct intel_connector *connector);
>   void intel_hdcp_component_init(struct drm_i915_private *i915);
>   void intel_hdcp_component_fini(struct drm_i915_private *i915);
>   void intel_hdcp_cleanup(struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 7020e5806109..90d2236fede3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1732,8 +1732,8 @@ int intel_hdmi_hdcp2_check_link(struct intel_digital_port *dig_port,
>   }
>   
>   static
> -int intel_hdmi_hdcp2_capable(struct intel_connector *connector,
> -			     bool *capable)
> +int intel_hdmi_hdcp2_get_capability(struct intel_connector *connector,
> +				    bool *capable)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	u8 hdcp2_version;
> @@ -1762,7 +1762,7 @@ static const struct intel_hdcp_shim intel_hdmi_hdcp_shim = {
>   	.write_2_2_msg = intel_hdmi_hdcp2_write_msg,
>   	.read_2_2_msg = intel_hdmi_hdcp2_read_msg,
>   	.check_2_2_link	= intel_hdmi_hdcp2_check_link,
> -	.hdcp_2_2_capable = intel_hdmi_hdcp2_capable,
> +	.hdcp_2_2_get_capability = intel_hdmi_hdcp2_get_capability,
>   	.protocol = HDCP_PROTOCOL_HDMI,
>   };
>   

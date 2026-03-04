Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJL4FfkfqGlQoQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 13:05:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B47981FF776
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 13:05:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3593810E9E0;
	Wed,  4 Mar 2026 12:05:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Epy3DhJf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35F0510E9E0;
 Wed,  4 Mar 2026 12:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772625910; x=1804161910;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZKbVXeBUugT6PZhTlOYk0wHw4S4p6L1J4ud5bKOIo40=;
 b=Epy3DhJfLYnDojsgVfZGpHeGlsdyW8fiQkwUXrSBwgfqilpicxbEWHvZ
 dE9VJq+e4mrqNmeDBswjVVfgYJzikAkt+7mV2fk/lmyYVAQpKDbcR2x4U
 gUbISFkP4dAj5kTx+hLhTp8rdGCX0paAnv7428WUuq6aQDdW0547qffP3
 U2BYsplQjsBZVvkjvsrauKxqPg97znGdq2YFt1lbbAE8UCtFyFyI1SIlz
 mzPU5CRfV0eQ2bKHYAUQkH9j46is7ugV4E8MPkPVmfbYnfTqVSf4OSRiu
 3bA5QlAPiO65K8dbH/mQFvFU9GPbR+h96aMPMr8mtHZot4f/GxCb8c+40 g==;
X-CSE-ConnectionGUID: BHwWLb63T5qJQfudiUgMKA==
X-CSE-MsgGUID: JF7zW9F1QQeJLDiAKWz8og==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="61258645"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="61258645"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 04:04:54 -0800
X-CSE-ConnectionGUID: yf5c8tWqRhm6xi2l34x+qQ==
X-CSE-MsgGUID: 13lrNFCZTA26Xub59/9Aeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="218435053"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 04:04:54 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 04:04:53 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 04:04:53 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 04:04:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LIy/KNVyVpuZDnqUR+ScnRHt/IGRTZPaP4uqHIqlLC5t70esRNx6D/Gz2m1LrO1OvmXZHz+xWDCNmGWkuUnv1yrRzX5zC8RrSXxBLIj+YMEhv41H0fRJaqAMn1/e6N6GnLTOkV6+sRrkkaF06yvryoN+FTEillTRmp88HELM1MADEQZZMpDxfXCZfUVp3YJtITA6M4MoZ7mB4zRkk8UQ02eAIh4HFzHsyrHEHodSlJg7SW9hnJPTB5jfFYUUSVM+dTkQfTDOjbFyX3727CKNZfG8cqd4upj3EK6ia9A9/IUc6SdOBY9Hb6Js2MwCkg+aa0SVQJEL0V1LtkKKGJ0/pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1AwuO6pP5zbt64Ker9D8urBNiXlwmhMdYwIQ0faADxc=;
 b=zJDx+aHZGawZPCj/U+yzHjKvEPs3AyBFDa2+i6rXNuB1YIkR3NNkCcw2xQGA9jCMHyz6HX2CAHTwjUB7SJo+d9OGeXrH+mWMOCMInFn65sNMKfLZUO7Omi9fDdBUxVmmokeaZmOmQ3JsOSAmBFHARv3kdR3MZm5/4bByfX8CM1UT2M3mB+1COS7pRQ33gJ84lJlPZTGqU+EVWc1dsg1nndYFgs+g/HHlbQTTIW00O1jN5kkmSKI03c3ln1iY5pqkNFMyDPcfRb6W/VPkCW91spx2Z1PhK0S+4nI1RqlFVbZU2jSicFNqtvtasuRSPhbmrh3HRXqqpr42qHDmDlH70A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5178.namprd11.prod.outlook.com (2603:10b6:806:fa::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Wed, 4 Mar
 2026 12:03:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 12:03:50 +0000
Message-ID: <0a746369-5939-479a-93d0-3720f4c78ede@intel.com>
Date: Wed, 4 Mar 2026 17:33:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] drm/i915/psr: Write DSC parameters on Selective
 Update in ET mode
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>
References: <20260304113011.626542-1-jouni.hogander@intel.com>
 <20260304113011.626542-5-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260304113011.626542-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5178:EE_
X-MS-Office365-Filtering-Correlation-Id: 0784c3be-9093-4c93-363d-08de79e618fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: OW5w6+M++lsVqgYfWFI9HgCcTQs0aVjXP3hD/kE3L8foXw6Q0oVvAh/CX3gKRov0EorH7uVDr+fBurjRbas5O2kBQugqLke/LKfYPke7I346zRKpVcADfGO2hs2sR/lmZ85R1aaKxQkTlXZfAlBTW3uBz3PAwJtLN0HmZjJkPVPRjLP7EHpNvdyjvWFA61X7/r+EdcVdxv7mtGx+rPDhvvxEX+Q0J6qEjrnRicdS/+Tv3wAAj9wgX8K55k+sL11toCCdc/xK5n+ZSJUcIxkIcT+YOTFJZY4V+0Lh67qMQUZRz8pkvV/uh2v+GjcStZXERG+uG86x/1dFs0ahqhzTVhlRuWJsc6kIBPTpcFUMEz496yF+YgZhH+xhy8CmEF5dFA0aNiL4DqscmaeYKUm21E5IBVsaIUOWdIumEp3mrpoDjsJ3YzyPbZUkFRfveAzvBy+vaqvAywSLO1nGZZt7Z04zi+CCWqrBFR2uariGs4AO99YVnNqPXDB7kroZNTe40C2Vj02131av5/WE4tt3Gs4zL8GPLE9cEjslD+m4cYQzp327B/vkITfxF+IsaOI8L8xISwXY4wLzgZnYYJHHYSjxkmHIkx0kVhEfDrnz6CEGUh34kQOigxcAnqp1jchw+K+5jchBzovyaP6QWLbFd6NCYiY7q0Z/2fcL/bM5EAvlhQoGlll6r89BL+k6PSMIUMhnZyogL/+47IiqGXBMSEw4/jZVAqjgkVcwZErVC80=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnM4MW52SS83VTZ0bWt2NnI3ZUI5YzV5QTVTQlhadFRBQkJyVDhodEhITDRX?=
 =?utf-8?B?TnMyWGJsL1RYODI5emt6elA2c0grcEoxNHo0WHNhdUt5OTlkOFpYUHlidVFV?=
 =?utf-8?B?ZTBNeml5OTkyZDcrWUxKSndsSzdveTA5dE9nWU9RU2NjYmZwdWFpMTlYUXpW?=
 =?utf-8?B?QWFTbk4wU3pJUDRMbzR0dndud2RPc3prMHRyb0ZRZHFnOEU4VDkrZUI0eTVB?=
 =?utf-8?B?UCtnRUU5cmt5STVpUHlmZGEvQWlNb2YyVjVOTTlqZk95QjVYQ0dDTS93Ymky?=
 =?utf-8?B?TFo2UGFDdW1XdUh3VGVvdEJ2anFsNHplODMzZnd0WkNlbkhCbmdqd1RBUUFX?=
 =?utf-8?B?blJjWjJ5RTUzMFhCWE5DM1hBdWlzbDAvOGVQVUxsdWZuS1ErY1NoeVNES3Yw?=
 =?utf-8?B?QjBlQ1B0K3Y1WDREbkd2Sm0rQ0FKQUdSMnkxQjVveWxtUit0S2VXdlpVZWlV?=
 =?utf-8?B?RExqUzZDc29sa1BhYUxWSmNFS0ZwS3R0RnZRN05TQXpYOHNaWGZlaGdwSkNz?=
 =?utf-8?B?M2xoeW1tVDlTem9HMTNDSFlWT0k1NGk5cXBncFFZUGhTaHZFWG1GSFYzR3pE?=
 =?utf-8?B?YllKNHBXVnZoR3h5TXQzb0tTL2ZCYmVwdVpsK3JPM0xMNlNwdm5iREd6ZFpQ?=
 =?utf-8?B?S1AvWENwK1VZRzJ4NkJDZXllMGN3Wlc4NmNWQmxlcVY4c2NyNmZUSUwxZUIy?=
 =?utf-8?B?ZjIyNFg3QWtHYWJCb080YklPNzlLMitzTWRyVzlQeUtkWXBGZmpUZzg4RGxy?=
 =?utf-8?B?ZzFtT0F1T0Q3d2pUMGY3d1kwbldGYmxEcENFMGE1M0JQU01hcUZjeFZVdDVa?=
 =?utf-8?B?SjU0UUFNUFV5UnpVL3VuSHdSL3kyNk0xTmFEVVJjMkE4ZlRQT2FIKzJCbm1P?=
 =?utf-8?B?bzR4L05YSHIrUHY2YWxvZjA3Y25Oamx4SHYvdnNnZWZOU2RvNFlJaHppdWxN?=
 =?utf-8?B?clhDbnM3RnlWV1ZWd24xdzN4QUIvR0tCQXZqWTN4U01HMEVCZ21WVm8vOXU2?=
 =?utf-8?B?NEllRmtSK3c3MW0zSTdiS29tVXc1clN3QWVVMWloL1VVVm15N1NOZ0RabGlr?=
 =?utf-8?B?ZTMvVHBsNFg4enlIeWMrWXdKZnd2WUV0VnRzdDNBM0RFV0RkaXAzejN5YUVn?=
 =?utf-8?B?ZWxBckNJWGxDNDhJMHFQV0lVdkhZdENlUWxscVV4Ym4rOXVDTFg0M1dkVmxY?=
 =?utf-8?B?ekdVL1ZiempjUFk0WXVKelM4Q0hpQWowZ0w0UDgwckdBRHJFN01OUk8wZEpB?=
 =?utf-8?B?WGRoN1hLYnFTY1prNC9lczhIZUxaVTJPVFZLcHBvZkR1YjJ5dlRZOCtOZkVV?=
 =?utf-8?B?SFI0cDNIUkIxaHJUbGRIK1FwUG9kMVNvanZJZmtVRG50ZGVuVEJ1Y1J1WVFt?=
 =?utf-8?B?ZGtqQWhvWWkxVHU5bDNubWFMNHJIMjVlKzdoUUZyeHdwc3BSQVlMWWlEWkVK?=
 =?utf-8?B?Nkw1K3VwVU9lZmxpSi9IWUVuNlEwdlAzSVQ0cFVjNU5yaGNqUERlMVFMdURS?=
 =?utf-8?B?UWFsWitnVWl0N3hoNjZFT0Y5RmdScWE3ejNMM3h0ZUl6bmlyZnlpbG03TzB3?=
 =?utf-8?B?NUhubjFQVkQzQWhGNk1PMnBscnpuT1p4ZEVIMFZUMHkrdnhDMVpNQmNBQ0tJ?=
 =?utf-8?B?N3hNbFF5eCtVclR0Wis5bXhuQ0R4cDkvV1JROHVLejh0R2JWU2NDZnNGTWpE?=
 =?utf-8?B?Ui83TFJkbkpjNmlvUlhSMWdnK3UwajlVVVBGMHdUTzZBNmVHR0Z5ZDkrVjNF?=
 =?utf-8?B?K1hTYXpRdjNvdlVqTmhaR1g2cVA3ZnR5MW5FTlRtRkpINCtxV3pMOVpOc2tE?=
 =?utf-8?B?Z3B4bFVONjNKN1U0WnlRSnREUXQzRlhJRVVXTnliUmJBaXhkUUphcmRzWk1Q?=
 =?utf-8?B?Sk9LazRhZFl3TFFhc3lLbzRaTGx1SmFLSGc4UlpyMXpDNTFqRk5wRE5VUVhs?=
 =?utf-8?B?VEM3eG5NRUtLNUR4ejZvcDI0UGpkLzBuUDEyNmFLS0VMR2loM0JVZThZQjZO?=
 =?utf-8?B?a1NObUJ5L210ZlJOUlcwYTVJNDEyeWNCWm1KeTVJWFhHT3k0YXBGaDVSSkMx?=
 =?utf-8?B?ZzRMV3BsbTVhRmcvb0Uyck1SN2FscVh4NVlDY0FzNHM1NlJmSUdrYVhPZHRO?=
 =?utf-8?B?b1FIdHlSeTZLbEh2NmwzaFQ5aHJzdnhmMmxDV2sxcFd5RDF1ZC8xNjY0aHlv?=
 =?utf-8?B?cEkrOGtoSUNpWUNIUUViMlppRzMvN2J4WExCbk5LNjR4eUJxK0NzaUtlN09Y?=
 =?utf-8?B?ODVaY3AyVXgxVUlpdklCWkV6RTAycXpna2hRNlJhbUpHdVRrQ01KZHh3TmJJ?=
 =?utf-8?B?VHZwSExxYjRsc0JyNWQ4R0ZGQlE1MDhvVHNreTRTUUpXdWNBc2J4eWYxUThO?=
 =?utf-8?Q?QxpVoMcuBRSAc9jk=3D?=
X-Exchange-RoutingPolicyChecked: usp6uxkT79TVJ6IgxBDXXVVOM3gYjibccjYY4qzaxYG6zxZSO5hcwtFTMP17MkrfBPW6JMbGUVuLU/8PnmiIMeNep79je9PEEsbuMmDaW0MUARR0puUyJGz4ARi8W36FoQ0zEGjNe+rAHR55tboYeNmhMvJrjeSSUyW6id8zEgHsHUxw8ReLku2WbrrZhHsHDFAmhSjcko9N8K7ToswUA44vUS7+ZG1faFF2aM/SZmYx0/VBTHspFGR4iESJybj/icoToUGiiKC7Q1lDaoSK2c+MeYeNpSQiV3eEqUuD1k1pejGejkg3+qJvcnZQCEfPC5vxg4hIH7M5pU9lHVSHtg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0784c3be-9093-4c93-363d-08de79e618fa
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 12:03:50.5119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JCpwYlU0R2yfmxuANmYh6L2hCRH1fhsBdVdw9XOTXkPyb22ab9rIrJkXxIPT26/FEwwxB+fqy/hmqwXx5KrbeeHzMlXnEg78xaxsBquRv4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5178
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
X-Rspamd-Queue-Id: B47981FF776
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


On 3/4/2026 5:00 PM, Jouni Högander wrote:
> There are slice row per frame and pic height parameters in DSC that needs
> to be configured on every Selective Update in Early Transport mode. Use
> helper provided by DSC code to configure these on Selective Update when in
> Early Transport mode. Also fill crtc_state->psr2_su_area with full frame
> area on full frame update for DSC calculation.
>
> v2: move psr2_su_area under skip_sel_fetch_set_loop label
>
> Bspec: 68927, 71709
> Fixes: 467e4e061c44 ("drm/i915/psr: Enable psr2 early transport as possible")
> Cc: <stable@vger.kernel.org> # v6.9+
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Makes sense to, make the su area full at the end, if full_frame update 
is needed.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 7b197e84e77d..cb3df2611515 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2618,6 +2618,12 @@ void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
>   
>   	intel_de_write_dsb(display, dsb, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
>   			   crtc_state->pipe_srcsz_early_tpt);
> +
> +	if (!crtc_state->dsc.compression_enable)
> +		return;
> +
> +	intel_dsc_su_et_parameters_configure(dsb, encoder, crtc_state,
> +					     drm_rect_height(&crtc_state->psr2_su_area));
>   }
>   
>   static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
> @@ -3039,6 +3045,10 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   	}
>   
>   skip_sel_fetch_set_loop:
> +	if (full_update)
> +		clip_area_update(&crtc_state->psr2_su_area, &crtc_state->pipe_src,
> +				 &crtc_state->pipe_src);
> +
>   	psr2_man_trk_ctl_calc(crtc_state, full_update);
>   	crtc_state->pipe_srcsz_early_tpt =
>   		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);

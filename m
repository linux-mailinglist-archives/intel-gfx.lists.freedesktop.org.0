Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHWBKeJ5lWl8RwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 09:35:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 027791541D0
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 09:35:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1506010E2E6;
	Wed, 18 Feb 2026 08:35:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N8yMEtOy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4FBB10E2E3;
 Wed, 18 Feb 2026 08:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771403741; x=1802939741;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ajej+K2eUSn56LA7hjAXQ6n/ItEC/oie7kmILmYFf+8=;
 b=N8yMEtOyg2LnjL6fCUNi5ITQVvMeUqJezWm+yPSmbmRz6F3YmsJ3jL9w
 piwDTP5s2GNtyDkKUOcJwxdn9lnSRyw0zEC5Ty7VYvcNDcF3yOeyGR4G5
 M7XhLUFqcaGHh/iQ7bPFLOOw9uKSN00D/yFU0lyf3Ep3WTWMn5YBzX1Kh
 WTAyx8fZM3oz9UeNa2Icp7C/Yx2358rPn752361ie/zUUxAKyG+MsznGT
 gtR1Fl8Ckq9ARpYk/1em3lAG4P3XEDX/vV38/PHj3uKeI7/6Nm/1Q1hN9
 hlqB1KvB45uC3hfIDHzbxtKpVpE3NYPb1pgBmiu1ABjP+ahopdeTMAGbK w==;
X-CSE-ConnectionGUID: W2s2hImLQEqUg5OAtaVfQw==
X-CSE-MsgGUID: EhYWNeIMSEe1kr+oXQmYMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="71675906"
X-IronPort-AV: E=Sophos;i="6.21,297,1763452800"; d="scan'208";a="71675906"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 00:35:41 -0800
X-CSE-ConnectionGUID: 0JwzGY5VTQWvnYeC5KVvHg==
X-CSE-MsgGUID: 5Eru/0dRQrSe59cMWA9Ibw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,297,1763452800"; d="scan'208";a="212812608"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 00:35:41 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 00:35:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 00:35:40 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 00:35:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OOE4dlMspOHkYtmDVE9YnHSJEM6lC4y3vW1YxpBRIox6oLuic2R8m/gd/3P8h3xv2u4PfgPE7+FhnKKVyb1UCnDUUOzQEer41EZfV5R4r8UPxfmFFrXnazdVqPsVy3eE/GQ8C7cj7/vChaja4iJFzT72/20UMjLoBkBhu6c24URNkrXRziVzJupDXMJMZQ0P3HiUdFVtXf2vGN74+aAf0nEWLP5Xd84tZ4ocOJR8LRzYJRr1hObW84tQpX9B0faAEubT+RbD/uZY6UiC8jzV+BMi9rIMcP7LZdANCAT77yqG6AP4rPeKTT0eeqok4QKiKiOJfCv2eqbwMGwC22+HUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+zuKzf7SfJnwO12U1VIMSuonKBieOnTX2Tzn3ywwfhQ=;
 b=k1C+Pu5M2IVwbRS6B4W4cOZQISELb0hRGLeCXlZ8t4LNhDPOpyEuCSHyTT9g/f+Y2PINeMLSKSEMKyTsFLTvmpKdw+WQICLncsP1oTwS9vLXyHbNjFvknbRYqgC12oMlPFq42uRw0P0V1UVicr/b3cNl0vZiqD9u5GAKXeYyBMSIdVePEF1DK2Y2XcI53zzjCZ0aSjl6aegmPg9T0n+Ihlad2R3gU8FLqAH4/d11UKrUp13D6DG9546t2K5+Jbtzv0AcWmohNUCw4hOElXHXITfCKznbRvexD+VdRgzNbwRSYBxwzgEl7yA46ACF5Af1Xwt0SiSXx9m81kkuN72ASQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LV3PR11MB8460.namprd11.prod.outlook.com (2603:10b6:408:1b4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Wed, 18 Feb
 2026 08:35:37 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.010; Wed, 18 Feb 2026
 08:35:37 +0000
Message-ID: <56cae45c-3122-42a3-bf30-180c5a4f0135@intel.com>
Date: Wed, 18 Feb 2026 14:05:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] drm/i915/backlight: Avoid 0 brightness for VESA AUX
 backlight
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>
References: <20260213091653.2250887-1-suraj.kandpal@intel.com>
 <20260213091653.2250887-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20260213091653.2250887-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0080.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d8::7) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|LV3PR11MB8460:EE_
X-MS-Office365-Filtering-Correlation-Id: 826ff9bb-b4b2-4a6b-6aea-08de6ec8b0ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STBZeEJ4WERQRGdqMjQveng1WkxtMnVjQmhUWGZlRStVcUM3dEVxYzVvM3dl?=
 =?utf-8?B?Q1gvZHBtdS81NUMwZ2ZVVEh0VFprcGwrS2R6eWFISXo1dGc2VXkzUWplODBr?=
 =?utf-8?B?NGFaSmh1cnJaMXpmU21TeVBKRlNsYk5leWxmY0Y1RlBQdStsZ01DajVDdExi?=
 =?utf-8?B?d0VOU29ZTG9RMlNZWEFGdzMrMkIwSnRUVWlEKzNxMnBZWFY2TzkwUTA0b2J0?=
 =?utf-8?B?Nzc4aXBzdUk2SWZkcTJLVkFneDRGTHRyanZuMFpuajdEZC9pOWkyc04zVWJ3?=
 =?utf-8?B?enFncjlSajBzM1ZyRTMvc1Mwd1VWMUlSTEFPVlJiem9hdFF1ODVxTDVVd2tl?=
 =?utf-8?B?N0VqQU04WmxHZEl5eG12WWF0czNlUUgxRDhqN3RjZmFpTS9LZm9jZXZJRzBN?=
 =?utf-8?B?UklVTEk2SXBORGNJcDhvaVhJdVFSOXB2SzdqV2g4OEFSQVptWG9FV3NjT3h0?=
 =?utf-8?B?V0prSjJsb3Nta2I1Y3dMTU8zRWxxbUl2Z2ZxdkpMSmc1VFhzbGJINUZzUi9G?=
 =?utf-8?B?NFdzdStKRHBqVHhQeDNldDF5M0RuN1kvR09wQ2cvYTVSQnhRZ2pSb2RRQy9M?=
 =?utf-8?B?c3ErMER3cDA3T0V5WjQ3ZEdhSWllbFhLcDFhd2lXNFVkRnFXNlkxRTFyVkpa?=
 =?utf-8?B?YkRCbWxiT0dTbjk2RkpBeE9vUVN6elFhbDZxUThUemVrTmpuSmxDMWxaUjl2?=
 =?utf-8?B?K09udG1vT3ByZUdkL1lnSGZHbGoxeDdKam8yY2lrWFB4aHhOM2kxakJ3TURY?=
 =?utf-8?B?YVdidktOZzVGTVBEUVBoYTZWeHdheXE1UWpOSnJrNTR0Z1RVaTlBZ2FTZHB5?=
 =?utf-8?B?ZDNFaWFBWjNsQ2ZYS0ZBeE9SbEdaK2NVQ3pzVTYycm93c204QnZjOVZDQWlp?=
 =?utf-8?B?b2tEOXd2S1UyNlMxZ0xRQnNJVFd3VVJLWXVVcjlOL2pad0o3RWdZeEdNV2NW?=
 =?utf-8?B?aDZycUJEMTZHZGxva0p0WkFlQ1ZncHd1dXRmeDRadGo2K2ZDN3F3aUtYSzFU?=
 =?utf-8?B?Q3YxcGk4VnQxeDZVZUFXWGM1R0w5M2xjR0ZZR21wZUVZY0tYcjhiVTZGTGtz?=
 =?utf-8?B?NFFMbmdoUjlIbjJLYmF3LzRZcnAzSUM5d1FjNEwwQ1UranBHUk80S0Rjamhp?=
 =?utf-8?B?dWdtb2hLZ2hRdkxvdy9SWTJGZGNScWNPcFFRcFA3MmpCd1l0eDJQVjB0Wk9Y?=
 =?utf-8?B?VWxqcVBKMUMyVy9mZUo2TjRHbjh0NzdTbjVBYjkzbFRiSWNRY2crcndYYlpF?=
 =?utf-8?B?c29ENjJKM21MQ1hSOUpsR1I1clNleWVDb0lGM1VzSFdwY1dhWW9XeE1hckpn?=
 =?utf-8?B?dE14VGpOc0RMUERZOWdYRTEyanNrSWVYZWdtNlFsd1NRZExUM0RMYWF2YzJl?=
 =?utf-8?B?eDVwYmhzSFZ4cTFVL0lUOHVpdEw5WFlxSzJGSWE5amN4QmhESjRQTXUzWWNk?=
 =?utf-8?B?c0NxeC9yL1E3YjRlVncrZ0pIc01QS0lQVURPamRncEQra3ZJR0ltbDR5OFBN?=
 =?utf-8?B?Z2JHbmt2Rk9hV1A1ZVBSYm1ZU0hQa2lBN2hlU3NKaGxPVUtRWWlVcTRMUnI5?=
 =?utf-8?B?bkhYdHV2SldBVGV0blBLYk42VGZadUpwWGZXSlp5LytQQ09jV280a3cyV0FS?=
 =?utf-8?B?YVVIeGowUXI1NjBGMTJDeFczMEp2UzdyRnZGZ0hZY0g4a2htMXpMa3VpYnNt?=
 =?utf-8?B?R1VWaCtVSDNhYTdnUURTQ1FES0w0VmNORXMxQ3BLMUFJU1RHUGdNYzJMajY2?=
 =?utf-8?B?OFNoQlBFYWhoK3Y3MXI4Y2hwdW9VY0djK0NPM1dEdXdwd1d6Vk1HTEdsakFS?=
 =?utf-8?B?b015RTJOYndJNFNNZ0N4bktuVno4QVRvZTU0cWpKWWZ3M1hMdEg2NFN3NlN5?=
 =?utf-8?B?MDBvM0ZaS21kdURTSnJSSnczZkhPM041MWhFTlR1a3FSU3ZGM0k0N2ppckFI?=
 =?utf-8?B?M3Z1QWpNL0NoZjh3VlJkeitiUFM3alduQWdNUzI3cXJEN2VTTmdEUjJzajVz?=
 =?utf-8?B?c3hlVFYyenVMNG5WRkx3Mjltci9JN3ZrcVdTNXNhdlZ3bUFrdXREQUZLMTlI?=
 =?utf-8?Q?5OGl5g?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NE9Ka0RuU0pjWmZ0MWs1eS8ySzF3V1lJVzBpVnJRdklEa3cxeGVpeUNaSkJy?=
 =?utf-8?B?UVpxaVpkTCtJZ3dkaW0rb09JSEFiVExZRUlYOC9rQTlnenRoOHZ1cXhnTSsv?=
 =?utf-8?B?alFnZUtPcThiSnlhWFRFSit5dEJGd3c2cWF4alNESlhkNndTOHF4WnNCY09x?=
 =?utf-8?B?ZGRQN2dwd3NkbUs2VVVRcC9nWUlscW1BZ0JoNjRobHZPcXJncUd5UlRWbk5w?=
 =?utf-8?B?RHVva3VpK0IwZFFwS1N3MHpDUU5EWW5oNkFDYVVHS0VYRzkzWWxWSE8rbE1p?=
 =?utf-8?B?bHNYNjN1U2RocjU0bGVQNFlBNDBjL294SXFPYzBLcmtFa2hBMEV5WUR4c1pK?=
 =?utf-8?B?RDJNWTVWN2hRVFJJa3Q1Skc0aGJjQnR1T2JzV0JGeUowbXFBS3dWdUk5UEI1?=
 =?utf-8?B?NklLOFN5QUlobHpmb2hMVWd0TXMzZ3R1RHZYVnBxQ2E0ZXZuRFFJS1IraFV3?=
 =?utf-8?B?eTNqOWJsMlcwcFk4KzdsUUV6eTkranNwNDJmd2xLcTVuSDZYRTRxZDllWmFM?=
 =?utf-8?B?S1k0Q3NveUNFYlRTeTFqN1VXT1ZZVXVIRzBxb1ZsUWdpMUY2K0JEU2IrYjFC?=
 =?utf-8?B?TkppajdUY3A5UWtRaHFZeXRtOERqSTREVmZ2VlFBcWQ4cEVqQ1FmSHIxUHcv?=
 =?utf-8?B?UlZuaVFvMTg0VUYreWJhU1VieWNiemNWUEJyNldwRGFWNU1lRUppeWtjNERx?=
 =?utf-8?B?bjRpWGptNkdwODdadUFwVWR2L05ZeGhyQkEwS1N3a0lVR0NMWE5sYjdtSnNm?=
 =?utf-8?B?MDVVQnlmRUQ3NFdYR2RYVjJVY05SSkcxekZObEZ2ZVFZWDdzaitja3k3MzhQ?=
 =?utf-8?B?ZnIwQlJzTlhQSzJ5eU5wdXRWQ3B0Wk1zbnZjbnp1RlBmZU4rNkhhUzl5K1NZ?=
 =?utf-8?B?U0ZqZ0FZRDhVRzNBZjVLUkhNczRmbXBkNndsdy9EdzdsYzlkTFFzYjh5UWln?=
 =?utf-8?B?T2FBUTB2OU02ZmFmcHRsdjJmaFRMb2hOOEJheGtvaTgrU29hVXZ2ZlcvQmVy?=
 =?utf-8?B?WmFzK05acjlFNGFPNWJrU3hXTHNwNGlMRGhEdHVWQnFBblZpWXNWRFFZZ0pC?=
 =?utf-8?B?NC9Gem03WjBualFoSGpSa0xTOVdoSnNZdE5INUtqbXpKYWpyVGh2S2xOSUNI?=
 =?utf-8?B?cVloTzNpWW1UelJGK1lnbzQxc2QzbXZ5ZjdTdWhSdUo0Skw3d2R1ZWdqbDZn?=
 =?utf-8?B?THpnbmdqeVo2WTQwT0VwVitUQS9JUUpQTXZtVHV4UXo0KzhZVEUyeGJ1SUxw?=
 =?utf-8?B?K3dRTmZFZ2NUem84TUIrdy9QYUx6MXFmM3NVVEE4YzcxbFBReHJTdG94M1Jt?=
 =?utf-8?B?WlJadnh4UWEyUGRJTWNpY3JtYVFIOGJNV3M4KzBOdDhnRXRZaFk2cnZNRE1C?=
 =?utf-8?B?Rk5xOEx1WlBLSCtMZUh1SmptTEhRbjhsSGUvaTJRTDMvenpiaVQyMks1d1d4?=
 =?utf-8?B?MDM5SEJxQkxxaXVGV25ManROL0VNMlJJOWNsTmJTVTRvRk9ReEZmYlFrL0g3?=
 =?utf-8?B?Mmc5Nitpazh2RHgrRzNqOW5VVG5yd2xhUkc3MTJSTUhDK0pkbHA2UzEvVUd3?=
 =?utf-8?B?UGkwb25kRTdFcXJoWTh2YXJZamNNT2d1NUljbUZ4SDBrRVoySllOdHo2Ukh1?=
 =?utf-8?B?K0hXZVdiVE81VUtySnY0Z2hYY3NJOWZEZ1ZMMDllZEZabDFNUWVTemtiT01u?=
 =?utf-8?B?ZDExaXl2Z0RqbG5QZHZDWFFHME5BQWJSNUxSNDFrdXVKOHFSRzF5QUo3Qmwv?=
 =?utf-8?B?OXhNYjVrK1JYNHdtOHdaSWxnVS92dFNPOVk2azQ2amVlaXVNdE9NNmpVWldV?=
 =?utf-8?B?VTRwdDVMRHRzdEd1R2JiVk9yYnFKVHhVYzNlaVliRUNORFdCTUc2cGJKNCtH?=
 =?utf-8?B?WWhxSEFhckdCRC9VV0FNR1Fwdi9vZjlpcTFmMnc2alVLSFJEbEYweHlBOWhv?=
 =?utf-8?B?b0xUZHV6d0drWHZtL3ErUDc5RklBN2RFK1M2RVlzODYzT2JFS3RvcHlxZDNz?=
 =?utf-8?B?UkJSVC8zZExuVDd6MVhLWEwxT2I4L3JZNyszeWQvdXBWeE9LMzJSYjltM0N5?=
 =?utf-8?B?QTUyVGdTS2tQVms4WmN3SnFhdFpqWjlQUG1aRE05Y2ZjT2xNRWVCYUFkMFJH?=
 =?utf-8?B?Q25pTUoyTTlPaGJqOHg0NFZiR2VhWDFOb3JGdDZYdmEwNlVSZlRhbmc2OU15?=
 =?utf-8?B?ZEwxYVNUUVJ0SmRjQUhUT09ldGZVcW4yUGE5MFp2MnJqdVVQZFU4eVR4UzBR?=
 =?utf-8?B?aUlhY2hGSFFHNmkrTjAyaGtMOVFLYkExcThKUzNoaGU1TllqMU0wOXl0V2Ra?=
 =?utf-8?B?U0wveHp4elUrRmNjZWpzcElQVWNNR09ORzM1UkpMbEp5bUp2VVlTQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 826ff9bb-b4b2-4a6b-6aea-08de6ec8b0ae
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2026 08:35:37.3785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: udeYXsJrC7wGcCP7XI8EXwzyaMSEor+Q60dNhxE96n2+vcDAyppg6OZz+7H+3jOSxeeiQeK0E6OlnTXDbVDr0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8460
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 027791541D0
X-Rspamd-Action: no action


On 13-02-2026 14:46, Suraj Kandpal wrote:
> Whenever the minimum brightness is reported as 0 there are chances
> we maybe sometimes end up with blank screen.
maybe->may
Please reframe
>   This confuses the user
> into thinking the display is acting weird. This occurs in eDP 1.5 when
> we are PANEL_LUMINANCE_OVERRIDE
in PANEL_LUMINANCE_OVERRIDE
>   mode to mainpulate brightness via luminance
> values. Make sure if minimum luminance range is 0 we program
> it to 10% of max luminance range.
0 nits for OLED panel is a valid value right?
Instead better to have a default brightness if no brightness is parsed 
from the vbt and the default brightness can be max_brightness.

Thanks and Regards,
Arun R Murthy
--------------------

>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_dp_aux_backlight.c  | 14 +++++++++++---
>   1 file changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index eb05ef4bd9f6..f1811beee25f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -456,7 +456,11 @@ static u32 intel_dp_aux_vesa_get_backlight(struct intel_connector *connector, en
>   		}
>   
>   		val |= buf[0] | buf[1] << 8 | buf[2] << 16;
> -		return val / 1000;
> +		val = val / 1000;
> +		if (!val)
> +			return panel->backlight.min;
> +
> +		return val;
>   	}
>   
>   	return connector->panel.backlight.level;
> @@ -557,10 +561,14 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>   	if (panel->backlight.edp.vesa.info.luminance_set) {
>   		if (luminance_range->max_luminance) {
>   			panel->backlight.max = panel->backlight.edp.vesa.info.max;
> -			panel->backlight.min = luminance_range->min_luminance;
> +			if (luminance_range->min_luminance)
> +				panel->backlight.min = luminance_range->min_luminance;
> +			else
> +				panel->backlight.min = (luminance_range->max_luminance * 10) / 100;
> +
>   		} else {
>   			panel->backlight.max = 512;
> -			panel->backlight.min = 0;
> +			panel->backlight.min = 51;
>   		}
>   		panel->backlight.level = intel_dp_aux_vesa_get_backlight(connector, 0);
>   		panel->backlight.enabled = panel->backlight.level != 0;

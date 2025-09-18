Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B91BB83D3E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 11:37:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1233610E6B2;
	Thu, 18 Sep 2025 09:37:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BZNvzQzB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A4310E6B2;
 Thu, 18 Sep 2025 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758188254; x=1789724254;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xF6fu27itFNYngSczK4lZmo51JFVLaqtnS4cZRc+wEs=;
 b=BZNvzQzBEJtHLkPUsTyWyd9uW3W77WVQkjxpNYo09FOV73HDwQffMoFY
 +KQjtAbI7sKbCJyA5rC8Mr8VaXQ+qlAxYl5pTFxhezIPrZHcAVK6nH8aA
 GdTds7RSgInomqQs7EkYqGULNEDjfJ654+1FSheznDyyzRHtupIHMvx9E
 XTYNwGj3yIT+eP9Zv8ZJ3ToQ6ZF2TfmqwBGR7xbSgMuSSo7AClgnLo/AR
 56uHCtzRMzFIV2ftS/+Wy/05pm5cEr75gaKjjoU7gtI0UPr5uO3tA3Z4R
 zq9IutuVUnT5+XrmizH9aebg6kHgFXpfAavVCetzsqka1GlUDtEySfJlq A==;
X-CSE-ConnectionGUID: p3i0E9heQmS6/tSqyIiyow==
X-CSE-MsgGUID: D9V8dffbS+2BO03pz9gwvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="59551680"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="59551680"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:37:33 -0700
X-CSE-ConnectionGUID: yCWCUooWRhaQTBAxWse76w==
X-CSE-MsgGUID: ieA4+LWvQ9yE6ykRMg032A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="199196600"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:37:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:37:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 02:37:32 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.48) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:37:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W1yVQlLq3AyZcXK0Q4RsXnqAwsprqwGn33Nr8jWkqpHEnKITNib0Q0VpF5+bnb7VYNxge6VGS6xMHFju0xThLWctYe5XygPThxrPQ6dSMiRSn6x3qP9ijy21QlzuFWfhUsOdJIxBZJCCN2AbgC3arORsDAX0uySOyxLFcwculyG3IC8Mj17zt4TlDpZGMJhoSuObxXHjrR8HYl02rQfDpzM0SG4w1keVX5AfhdUPdqWeOFlPoKIh0AnhWuXjTCK+Sbg2NsAKZQ6fWmeV08gt7jJ6k86z2RIP9VRercbj6YI2CuMMjfckJIqgZvrUgySka9hfSi05vRqFFReAfZReGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gUgZfyWmoTFYkIpW18yyJuQWdTv76caHtFSL7Yz51hg=;
 b=eAAvP2cKYS/UFMn+9nT1kFyz8hWwsFRkz+LgFvRTGzKdkNcjkiFDTu7QA17EVcdsMGRug+AZl5m+ETbLMsmtitK1BCLzOALV+fGCnT838b8vjZPf7DLL9Hbzz14LD+lNf1v9awWcJBnhOpxLzHngOEvlLXhj6DpPn7cgAfBHoFuVtmjorVXOcEZyEcb2eg+aHUJpjRMzSkEQ9GGHgRRd0FXpim9nLsQNO5GvpCDnS7dfKD3dH+QrQR5sd43RwaIckHJ15MlutZvkMQsc8lxM8sqfThXOIT1m6QETEtqALTOJWzp3NGPVym76spg6f26BF7S5Viw2V/wIDCn1Ey8e4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4837.namprd11.prod.outlook.com (2603:10b6:510:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 09:37:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Thu, 18 Sep 2025
 09:37:26 +0000
Message-ID: <6ba574f2-9ac3-4da2-aef1-a781f5eb97ed@intel.com>
Date: Thu, 18 Sep 2025 15:07:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/i915/vrr: Store guardband in crtc state even for
 icl/tgl
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-4-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250917203446.14374-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0149.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4837:EE_
X-MS-Office365-Filtering-Correlation-Id: 16dd362a-b7de-4aac-3181-08ddf696fa8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L3dkRlpXdVhvU0Q3cWpkNVBrVmt0T3RmTThNWXdMZzBDRVlQMDlTek0wRVBw?=
 =?utf-8?B?ZHRZSnRxMTJVdGVNaEl3SXVRbWtrK0h0Z3pncW1HRThIcFlUaXNsTlJ1YTNC?=
 =?utf-8?B?bFlWTDFUZlNpeXRRTlFjYi9HYkhIUlUrQlUza0Jxc2x1dTV6VXVkMlEzeDRW?=
 =?utf-8?B?aVNRRCtUUnVHTU56WERVS0hocG5yV0ZnY3RnZ28rUXlSMnNCTDErbGQ4Wkdu?=
 =?utf-8?B?cHk3eW9wTjhvMkZ5d2FoaS85NEo3OGowNFBXOExrVWZyak9KSzB6ZDB3dFU2?=
 =?utf-8?B?akxZRzJ0d2pGRlU4cHhNcVdzdWRYdEJMMUpob2lNam4rbUhPRXNKRFc3T05a?=
 =?utf-8?B?OHNSWk1QNWtrM0ltTW9RUG1vS0dXZW1Cb2p3NDgyR1lSN1pxYitsMlJ4MlBx?=
 =?utf-8?B?ZVg3VDhDNGJreEFzWGlON1k5NDBVaXgrUmZlTE1BSE5qMlVYbW1ocmdmSTlp?=
 =?utf-8?B?azNRQVJjeENMQUpXK2d2U2NlUUtIRDBGejVmejFMRDdoNHVsVWJtdFg1RC94?=
 =?utf-8?B?YXgzcTRoaythWi9iSm90UEVVSU1COXd6Q3crcHVyNU1OR1hHRVZDbFFIQlJ2?=
 =?utf-8?B?dGVKeGpXcFJDaXM5Qmx1RDR1WkFVa29HKzFKdTlJYjc2U01VMjlDWHBiZDQy?=
 =?utf-8?B?WUgyVHd6V3ZrSlJtbjhvb3ErYjN1cFVvcXFpYUI1dHhJRVlBN2pDdHpYK1RG?=
 =?utf-8?B?Ly9rcWRnNWY2aDBrU25jRVNFbWRwQU5vRVQvU2RxZVZwMTZCQWs5T2tJOEpq?=
 =?utf-8?B?VGd0SGtycm9JaDI0V2YwNGVSRHVtZnMzTU0xZ1VGWCtUM2dpVzFXd3FSekhK?=
 =?utf-8?B?VllVTEtNVEl3Njhxeks1RHpEbTJCWTRieU55L0RHOVVKTXRhNnIySnJaQS80?=
 =?utf-8?B?bFZWMXNOQWp0V2w1WTc3RDYyRXFJOVdySExEQjhsSGRiYWU4a3ZKUUlYTktn?=
 =?utf-8?B?MXBUNjMrQ1dMcWpJWk9haVVNcWF5bFVlME5iTEhLYmwxWldObHhXdDN5RUdR?=
 =?utf-8?B?YzRLeHhzVnlwdDRZN3U5d1VoSEE5QjNvc1ZNM05aSmhGb3lBenozV3dOZnd1?=
 =?utf-8?B?RWZKWVQ5Q0JSQllOMW50b05DbWZicGVSMEVqbmgxTlJqSGI3QTJNNitKRXZE?=
 =?utf-8?B?VHBLOFFpSTJ4NTdpSUpvSzFYNWtDTjhBME96WDUrYStBOWZ3S0ZUS1ErMkd2?=
 =?utf-8?B?bWs5Y3MxQkxBTmFTcE9UTzN4QzBZVmt1cWFKa204ZDFoSzZlV1g5Q2ZmSWNm?=
 =?utf-8?B?aWlNL0ZWek9qNWt1ZS9vcTEyUGcyV1JQNDdKd0U2QlkyODRqc2JOc1h3TFBh?=
 =?utf-8?B?KzhwRFFmV3lRT2VmNFFlcmlyT0I5MkVTZFUxMXkwcGp3VVRSc1BvZ0hkcXpE?=
 =?utf-8?B?NnE3QjV5eFh2K1VaR3c0NlBSQkVMcnpIYmora1EvNW5SY2kweE5Tb0xRcm5t?=
 =?utf-8?B?TVB5YTU0L092NVpCNWlwVW12aFZzQzUvYWd5QzFpUitCQTBlQ0ZGYjI5VEJ4?=
 =?utf-8?B?WVU0Ti9yTlJyN255WUI4ZTlFQXlqMFVLOWlkTUh3cUVIUUx3V3c0VHI0Wkk1?=
 =?utf-8?B?VVpsNFNyenRwcjlPcHA2Q05aOGQ2V2Urb3ZGM2FBcG10S1EydU5pQjZVV0cw?=
 =?utf-8?B?dmltVzBPTGFQQ0VvdVYwVk5HWjdwVUhGb043ZCtIaXExaFo3SkpjSTJYU1NP?=
 =?utf-8?B?Z3hjM3ljWWZSUWRqWmxDWWtlZFNJaFlXZ1FvR2o4ZVFKV1Z1dGk0L1F3cnZ1?=
 =?utf-8?B?Z3pSMjdITXBjMmd0NXNYK05xY3AyK3VzcE1vMFVoYWl5dUl6SFdQWnZZbmRv?=
 =?utf-8?B?NkR0enUydGl2eHFXTFRCWDJYOVJrb3BCVVprNEdTUkxCOExzYzNZT202UHhu?=
 =?utf-8?B?Ukg1Zm4rNmVzTnVjU0dVRHhGdVN6eGdWU3JBZW5UN2t0Y3UzckZrT2lnTkpj?=
 =?utf-8?Q?0htX3wJsn5s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MURpZU1qOGp2U0FUNExlT2svSk1RMG1RVnppRFlNVFZhY0pwS3BBSnZ3R0tz?=
 =?utf-8?B?S2g2QnBPc3J5UUFWcHV0TWZET2lHQ1FUK21nL1l5ajdIZ0R3Y21VV0piNHo5?=
 =?utf-8?B?dGVyUVhESnRTekRON2MrRHErbFhzL1dXVElWKzRqb1RnZVFOZUF3T3VOYXRv?=
 =?utf-8?B?VkhkMk84cnd2dyttcC8xSllDVmF4ZDhPalVVMVZucFJqNkJkOGZIWmV1VHZx?=
 =?utf-8?B?azUwdHNwUFVNVjJKSDQ3OWZxYTJhU3VPOHVDWnhwY3l5N2VVR3gzWFRsSEQ4?=
 =?utf-8?B?NWs0d2xwaVlXc0h0ZjkzQ21ndUo1Q2N4blpDbk1qQThzbGN2VmhFQ21DdWRC?=
 =?utf-8?B?K3k5Y2pLZ0VzTCtYYk15a1FpdU41TEhnQjVmTHNGczZDY2lxTzd3NWFaTVZr?=
 =?utf-8?B?bzZIL2VGbUMzKzBhaGRNU0EyM3BKUnZkNUEyWkdvSDBwK2RnRytMSTlBY0VU?=
 =?utf-8?B?R2lRZmJRc2VRbGR5Mi90OWZmVFZld1g2K0FDRkNNVnZVam5LdExBSHlzM044?=
 =?utf-8?B?Rm1NcUNOVVhWbENVbVRjMFViSmY5L0FaZEE0VmFrYTA0VmthTzZMckFHZXpy?=
 =?utf-8?B?UDg1S2NvdTZhbDR6SUtKSW1YZFJTcmwvV0hOLzNNYzBobmcxZG12NDZCK2U3?=
 =?utf-8?B?cm1XRWdrdFZxZTZiWXMyOVhZZE1yNUNYeDMwcEhWN3NPekp2SVIxT3lEOU1T?=
 =?utf-8?B?NGpTSThQWi9EZEViV21iM2tRbXpLN0ZYaFh5Wlc2K3BXZFlXVExNYmhZalc2?=
 =?utf-8?B?WENYUm8vdzRrbDRUbHRoSWx0eHdidzJ4bmgxNUQwa2w4dmt1VXU3M0J1ZHhw?=
 =?utf-8?B?YW9nMUNzREkzQkhOY1g1Wk9TWFI1aHNPcVBvdklDLzZrZ2FadVBpbFVYUERM?=
 =?utf-8?B?L0MrZGs0Z29vcnVoU3BONzBqS1BxSUVIRHVHQVFIVit3cUZGRERaMG1GemNo?=
 =?utf-8?B?U05KSnIzSkFJNE9vYWJ3d3QwOHMxRzJTU1ZTZmlRTXM1NlNReTBneEtQSzFJ?=
 =?utf-8?B?cmk2S01CY3U5UnJaMDFuUmxPN0llY3JBbklWS2p3enNOMEpYVUQ4SnpCampo?=
 =?utf-8?B?a0dlTUd2czhHdHpBdE91UEt2MFI5ZFhrSmNsZmVCbVo4eWozZ2NhUm5uSEVP?=
 =?utf-8?B?emVHYVc4QjJBcFNZQ3diYUsvU0VJMVZiak9McGtvaEZZRHZLZ0tDOHQwSnN0?=
 =?utf-8?B?dlJxbURXemo0aENEMTdxNkd5K253RlNTcXVVWjMvRGF1QWJEMFRXaTVabXJa?=
 =?utf-8?B?K1BUMzI4ZjYvZ1BTN25kQ1R0bmZkbE9yekROMW1pa1piaU5YdjhVdWxCQ3Y5?=
 =?utf-8?B?c2IvMzU1cTd3NjVyWG1XM1pOanFPQ24yVFo1OHpmckw5Ni9uQVBDQmRqTE5i?=
 =?utf-8?B?Z21ENFNkTVJCZHd5eWtiVlJxVWJzbTlwbVJBb0I1MmZOYzBHUGRGYW9tUmUr?=
 =?utf-8?B?c0lBSDN1RUVUZlQ1VUFmVWZWOElWanJXczBoby9US3BUYkNETHNRbGlkaVBH?=
 =?utf-8?B?NjdhUHd2NjJsUU9iRzVGc3JSSWRKOFdkUmsvcVdqZHdDUi9jNGZvc2ZOVWk5?=
 =?utf-8?B?ZStKMzU4U0xjWWRiZksvQkRBTytabXVtTGhVU056ZXJ3YzRRejlhUmhGNExC?=
 =?utf-8?B?cUx5NGhFbHRZUC83S0tCTGxjUXJKb2lKd3BCUHBuZTcvMFFYeG1FSElZb1E1?=
 =?utf-8?B?dG5tb09TcGxDVGhVdEJXRWdhbXFvVGt6ZUVIak5ucFpCWTlHREFXWWg5QUY0?=
 =?utf-8?B?WXN1Mk5KYnU5Y1hvNm1odlRRdHJXaE0xWDlTb3d1VnptRTlibTZQaTQzQnVs?=
 =?utf-8?B?QW94N2tKdGorRlpLckRoQVVyZGloYysxZCs5TEJBZW9lNHZnYmlSYTU3Y1RX?=
 =?utf-8?B?YUJwVXp1MVhIY205RzBrL1g2eHo4RU0wdGpNYjVScUk5cW5iaFNHOEwxeGRy?=
 =?utf-8?B?dkkzdkhtTVdxUFZRQy9UakpIVEppKys4RnIvUTBCMFFUbExPSk16RmR1Y1BN?=
 =?utf-8?B?VThZYks5eEhZMVAzUzJKK0xrV3l4bGVsdmJTMmJSMXd2azU1dmlDcEx2bWFn?=
 =?utf-8?B?TFdKVG00ZU1ISTVCZTZNYkFqVnI0aE0xUURjNFpFQXEwWG5PbmpTdDhack1I?=
 =?utf-8?B?Wmk0M2hpQVlScG92d2d0U3JrSWU3RjIxL1lYVWNPeGhqa010N3VHRUU2QVN2?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16dd362a-b7de-4aac-3181-08ddf696fa8a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 09:37:26.9261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8diVWK5vAI8cJKA0BChuIXsIdwdM2B+/tLvJTwt3/DUzX7G0ju/+Yrxq+vUeXMkJ5jScxFS8JP6M1U16rDHSv3cIWnbMCOV4/a8ETxY9zkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4837
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


On 9/18/2025 2:04 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> While ICL/TGL VRR hardware doesn't have a register for the guardband
> value, our lives will be simpler if we pretend that it does. Start
> by computing the guardband the same as on ADL+ and storing it in
> the state, and only then we convert it into the corresponding
> pipeline_full value that the hardware can consume. During readout we
> do the opposite.
>
> I was debating whether to completely remove pipeline_full from the
> crtc state, but decided to keep it for now. Mainly because we check
> it in vrr_params_changed() and simply checking the guardband instead
> isn't 100% equivalent; Theoretically, framestart_delay may have
> changed in the opposite direction to pipeline_full, keeping the
> derived guardband value unchaged. One solution would be to also check
> framestart_delay, but that feels a bit leaky abstraction wise.
>
> Also note that we don't currently handle the maximum limit of 255
> scanlines for the pipeline_full in a very nice way. The actual
> position of the delayed vblank will move because of that clamping,
> and so some of our code may get confused. But fixing this shall
> wait a for now.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 36 +++++++++++---------
>   2 files changed, 21 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c7d85fd38890..f4124c79bc83 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3891,6 +3891,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>   	intel_joiner_get_config(pipe_config);
>   	intel_dsc_get_config(pipe_config);
>   
> +	/* intel_vrr_get_config() depends on .framestart_delay */
>   	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
>   		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5fee85b0bc99..9cdcc2558ead 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -151,13 +151,7 @@ static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *c
>    */
>   static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> -
> -	if (DISPLAY_VER(display) >= 13)
> -		return crtc_state->vrr.guardband;
> -	else
> -		return intel_vrr_pipeline_full_to_guardband(crtc_state,
> -							    crtc_state->vrr.pipeline_full);
> +	return crtc_state->vrr.guardband;
>   }
>   
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
> @@ -431,18 +425,22 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -	int guardband;
>   
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
> -	guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
> +	crtc_state->vrr.guardband =
> +		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
> +
> +	if (DISPLAY_VER(display) < 13) {
> +		/* FIXME handle the limit in a proper way */
> +		crtc_state->vrr.guardband =
> +			min(crtc_state->vrr.guardband,
> +			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
>   
> -	if (DISPLAY_VER(display) >= 13) {
> -		crtc_state->vrr.guardband = guardband;
> -	} else {
>   		crtc_state->vrr.pipeline_full =
> -			min(255, intel_vrr_guardband_to_pipeline_full(crtc_state, guardband));
> +			intel_vrr_guardband_to_pipeline_full(crtc_state,
> +							     crtc_state->vrr.guardband);


For removing the #FIXME to handle the limit what can be required:

Do we need to abstract it with intel_vrr_clamp_pipeline_full()  or else 
we need:

crtc_state->vrr.pipeline_full = min(255, 
intel_vrr_guardband_to_pipeline_full(crtc_state, 
crtc_state->vrr.guardband));

crtc_state->vrr.guardband = 
intel_vrr_guardband_to_pipeline_full(crtc_state, 
crtc_state->vrr.pipeline_full);

(Though this might be bit confusing since we use guardband to get 
pipline and again change guardband.)


Regards,

Ankit


>   
>   		/*
>   		 * vmin/vmax/flipline also need to be adjusted by
> @@ -734,14 +732,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   					     TRANS_CMRR_M_HI(display, cpu_transcoder));
>   	}
>   
> -	if (DISPLAY_VER(display) >= 13)
> +	if (DISPLAY_VER(display) >= 13) {
>   		crtc_state->vrr.guardband =
>   			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
> -	else
> -		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
> +	} else {
> +		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE) {
>   			crtc_state->vrr.pipeline_full =
>   				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
>   
> +			crtc_state->vrr.guardband =
> +				intel_vrr_pipeline_full_to_guardband(crtc_state,
> +								     crtc_state->vrr.pipeline_full);
> +		}
> +	}
> +
>   	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
>   		crtc_state->vrr.flipline = intel_de_read(display,
>   							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;

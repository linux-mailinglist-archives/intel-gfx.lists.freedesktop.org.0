Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 141E99B0F1C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 21:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DC5210E0C8;
	Fri, 25 Oct 2024 19:33:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cihIdKNj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9013B10E09E;
 Fri, 25 Oct 2024 19:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729884817; x=1761420817;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=wbtj4Dc4F7aJoKGbfzD4rJZWecnQgPPxySuk4NrmTSk=;
 b=cihIdKNjeha/McjM3Fs3XqVTm9TxNCrYM6F+XEKGBnsJRpLGlh1xJwzU
 61boh6AyUsEhEEyjQOyZ/VZJ7pfsiha30p2WywCm90LodwXYmYBF+dYWA
 XjuvtL5gVy7qAaCSJKb9fNJ7xR2p7Ssmt7VoXZ/G8+pYwrF7O3wBTjmPW
 2p8geWmNfPpsOqOB58OMK+9hlH6+tPe+6pyYkW1lcKPE3BeRpRhlUV75G
 G9drgcYEmLAjo78BLbdnZ9W3FZKuCRkLXMVmAi/peCnc2fn0hd15AsLkn
 z3FhHJEy/cOEEewQkEYcFLHkS6VzIBcsDStMyzdTS21cChvVC2vbdB9ad w==;
X-CSE-ConnectionGUID: RSYaZxTlTLWwsD2gLbnsjQ==
X-CSE-MsgGUID: 8doyVJJ4TDefPFSDUuyBhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="29463362"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="29463362"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 12:33:37 -0700
X-CSE-ConnectionGUID: XUqpMfQmR2yt1dSV5FXmVA==
X-CSE-MsgGUID: B4wkTR3JQA6d0+5tVE5Z+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="85610892"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 12:33:37 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 12:33:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 12:33:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 12:33:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PMoeogCVywviWGYMc/X9EsHE3T8hpk1HWgtAnsSsexZObg1vbU4FyLLCpJySK8cokU2HMRK74Ze7jU8gI2DluSso7UKRzFC4oWXOT0BtWyw+VMMTTJfJlza7I5PM/pBgj/3oFJDtBI5k8IlnchewugXY0/j86J7IWEu8YNYGB1x1jnwNbx9BM5vZw4+OrHg/osiP5fvzS0hoWsZht2x8pUUioRJhUXZ/HyRrAcQR/tJY3T+kl1MoOaM/TE39wsFg/ZacWEu0f+x5+nblwLYA7Wgz5lcqQHwOSOcudVc894n6FXA/lPOPEIMiJN1fzAhRODUTax+tVmzZVI0iGZsF4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z3ZAiC5L746r79m89H+e8cQzhSDgqIIazMgJSOLezOk=;
 b=sftfHBirBkWToHWWS54kkKxrpUoh5V3uWnoG8Dl4oGTtboJtUcl25T0RNkKvYkbtu7HKkWD9w+PPWWFgGQhtclZAvVzzplRwrto+jPNykJ9UgrjfYw2sio0RWf3BoEAfy9dIi6O5+qvqAFuW6SiKx6Z+6VsHdpZ5baQBr1VImUKIhdrBEMSyyq87XvwFqXPGhDUdiCseqZqL2VPAfnfiW3CQd4QvUX/zv0Hfea1F62gX9k6vITeAqJOU52lCl8s590fgupVsOr2LqwedXS1nwSO2k7Mv2fylbJMcGo/UKjMzsarRlHyPfhjP8Esn8ifusAFmTWSSObjB27jMbFK4eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BY1PR11MB8126.namprd11.prod.outlook.com (2603:10b6:a03:52e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Fri, 25 Oct
 2024 19:33:28 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 19:33:28 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <172987824990.1333232.8974392647021872318@2413ebb6fbb6>
References: <20241022155115.50989-1-gustavo.sousa@intel.com>
 <172987824990.1333232.8974392647021872318@2413ebb6fbb6>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.IGT: failure for drm/i915/xe3lpd: Load DMC
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <i915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 25 Oct 2024 16:33:23 -0300
Message-ID: <172988480347.1548.1191034532956508206@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0052.namprd04.prod.outlook.com
 (2603:10b6:303:6a::27) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BY1PR11MB8126:EE_
X-MS-Office365-Filtering-Correlation-Id: a1ebbbd0-6dd9-4ed3-8a67-08dcf52be680
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RmNTeks4R0l5aElrbkIxWlN3YTVFWWRLZElGNTRqK09JQW56KzR1K2U4WFVQ?=
 =?utf-8?B?Ry8xZjlISml4bHRsbWJYMW00c1NIR3VvVGxOWEpUVWdZK21tRzFTSG1GU3c2?=
 =?utf-8?B?VnFSTmxKdGRrS0Njckh3eUZCckFhbmxSTGlMQm8xMmlxZ0FBcjBHMkkzeEg5?=
 =?utf-8?B?TDluVHVjb3VYMHpJTUFYcGZEZWhQSW9tSXRDV3lrbkFIQnJLelBxK0Z6WVNm?=
 =?utf-8?B?cEZvSTZqNlZFWjNHR3hpSHlPeEhpTkZMNkN5cGh3UU9jTzMwRTRGdklNNUQr?=
 =?utf-8?B?UjZ2cTcyRTFTUmIrSDhlYWRwWm1UaWpCVzFyb1M5ckJ3NmZ1YUc2ZVU0ZmJl?=
 =?utf-8?B?TTRITkhob0VtQ2t2dFdzbldUMjZqTklUYkxwbkFMVnNMaFAzcWZKclE5bWNv?=
 =?utf-8?B?RmcyNGZWZ1RZRjhBcVQ0VmVFdDFwNFMzMC9pQkx2eFRsMmIzM1VIOVFGNmpw?=
 =?utf-8?B?N2RsZm5qTUlYTTQyZm9oUXBaVGkwdGJRY1RPd3Y0NXVIbldRajRzbWZKb21P?=
 =?utf-8?B?VVlERzgxbjZMaHRoMFgrTTk3YldoOW0wN1dlWkVtSXZYNUdINXpLc1J0TkNH?=
 =?utf-8?B?MUR5bnB3R0lETjBUT3F3c3ZkVWJJamZldXdQY1NuckpKMDArTWZTTVFDU3Zx?=
 =?utf-8?B?WUgyMGh6Z3EwZE1TaE5IWUNSa3hERnhEcFRpd3piVjh0bTk5dUVEMnA3dDJy?=
 =?utf-8?B?L2FOSllUV0FYdzMrd0lNcGlQbUZvbDVMeHZFQWNQMDlneFF0U0orcXVmbmNt?=
 =?utf-8?B?VHFtZlhvMWVZN1F1Q3J4cFhGTThmbFNyU2tyMHo5WUh0T1ZhUUl4ZEFCeXJB?=
 =?utf-8?B?SE5VZU1uWWV4ODZjZWZIU0hVbHl3UjRjeU53SDRNaUVML1hOZ01HSTc4MlVu?=
 =?utf-8?B?QndDV2JGQ002T0FnUGIrZUxBaGZsc01nOXF0OU5jZ1oyNThzN1ZTYWZZVElk?=
 =?utf-8?B?LzVOT1RzMmNhT29ncTRHVW1yNVVrdWdaaGVKR1lSdlZ2dWMzS0hVUHNVY200?=
 =?utf-8?B?Q0hJSm1TMGorOFJVbkJ5RFBJVlBqVVd4K2MrMkhnVVk2dnd6OGY3U2tkRFVB?=
 =?utf-8?B?WWk1Y2RHY3dva3RMdnpjRllDdFk0VnplK0ZYcWhwd2hvYVp5Y2g3WTYrN0Vw?=
 =?utf-8?B?M3NFa1MzVHpHQ2tuOENWekl6a1dPMWVQUGpMQnM5Q09aRkxHSVZMUmdzbEpI?=
 =?utf-8?B?RE5wVTZMNnlTT1JjaTRibmgxS1VsblJSa01PRUxFVzNvRmg3bkJjMmlBQ0Nx?=
 =?utf-8?B?cnEvRGdEK2h3ckJQbHlBMFlWS3gxT0thMjV0WmZvTlArVU1ia2RCbEJna2hj?=
 =?utf-8?B?TjVuM0NFbGVUT2lqUEIxdVdwT3B0MEhkQXJvUkpNamlaWkxETlhOZUt2bnIx?=
 =?utf-8?B?K1ZxK1J6Ym5TSFVnaUt3RWlaVmtScm90RmFPM1JHdmFWeEZxVml3VUEyTy9i?=
 =?utf-8?B?bHlEV0N3dTJYSnUwcHVyZ2RicEZYQThLazRjcGwyaGtxelJwbGtOUXJUU0Ry?=
 =?utf-8?B?cmZvV3hmS2NOTWdPZ0NXRExQNmVLRHdXYUtFdUgvcWcydmlJNU95QlV5YVBL?=
 =?utf-8?B?d2pTb3hwaTFBYTJPREhVNEpBWi9NcFNmRU1rTUpsazlWL3RSQU00Y2hNMVUv?=
 =?utf-8?B?d1luNzJjSWQrcENLNldmUnFLVlNQMXFOa2hKenNoMU5rZ2VIYXlDWnl6dUpk?=
 =?utf-8?B?MlA0OGxOZUt3OHlwVlZZL3BGcW1Xb3NwdWNnZ29jUi93Sk1KYytsUWt3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWlLYkdadURudDlBVmd4M1MzL05GbWgxVG84MmxxMjVGUTRYTGloeHRHU0xR?=
 =?utf-8?B?Mk1wTVZaRzA0RkNnV1JSdjBUM21oU0NjdTJoeThHSGNheE9tWlZONHI1VkVH?=
 =?utf-8?B?azhXVVh0K2FxTlU1K2pvTjFHbjRyQVVFcXI0QmYzemFZN2Jmd0ZCT3o2RWdx?=
 =?utf-8?B?SFF6NmZBV3g2cy9DbklSNncvUkp2TnBLamVaS3cyUkhBVWtmM2tMQ0JaZXNy?=
 =?utf-8?B?V2FQdC9LeWpFQWRERG5WYmE4dTVVT2VrbTIzRmdDem5uYkh2bnJ4SHQvQ0JC?=
 =?utf-8?B?c04wWndhbG00LytOUWxmQlJUUmw2YnZPOXo2UE1FMVBIaUdnZG9xbXZMcVI5?=
 =?utf-8?B?L2YrUXQvaVpvbjZVdUNoTDEyUWZ3TXJDVENYOTRqcmJ2K2hSRVhxMnVYa2hs?=
 =?utf-8?B?MDM1eUxlc3dmeVlwa2E2NHlHZHBteE82Z0RqbG9VUitsNkZPbE5OR3NpZEZj?=
 =?utf-8?B?UW9yNm40cWRTRjRzUHZSNjZ3QmlRVjhRd3VzemVMeVBvb0ltUlBYUWNwTWY5?=
 =?utf-8?B?bXViT3l4clk1VEZwT3hPNXV2b3RXN0Ezblp3NXdIaHdpcEhVSTZ3Y0FUeUd4?=
 =?utf-8?B?Q3NZMi9TNDVmWnhQSURjTzFxYkpPU1ExQ3BlU0xFM1F6UlVKQ1RLS2ZCaHlm?=
 =?utf-8?B?eHljeEtTekd1NXdlUGpEZFlQYWIybUhBejZ4NGNFNnJTN045cENYS3V6cUtN?=
 =?utf-8?B?ZHhZZGN5ZUVORHU1cGlPUG4vdlh3eEo5bUlNWVV2S0NKSmJwL3FkSFp4RnVF?=
 =?utf-8?B?ZkFmUm1VMnd3alZMNmYyeFhTeVNVRm4ydko4aFNWZURvNG1pRHZ0WWJPMHk3?=
 =?utf-8?B?OUlrQmNmK05JSXVGQzNENmRlTzBvVVpoOWxES0JDck1lU3puQW1UYm1nMzMr?=
 =?utf-8?B?Q3kvRmVHTkN6TllEL2NLaktGMkNVZnk4WURuU1BPVWlkTUpRUnYyQWh4bi8x?=
 =?utf-8?B?SjFQTHBpWDN5MzhXVlByclM5ZEMxOWJLVzQ1LzJRRWoxWU1Gb1ZZV241Vkts?=
 =?utf-8?B?cnlSUk93RkdkTW1SWXMvVlJZVFBXUy9qanJrVFZPZ3pHd0dWeVN4S0JUMXJv?=
 =?utf-8?B?RE90eXl4emxvYnFXQXltNnhSbEp2SEdQMHFpQlBYaUR5L0E2dUJPWWZLbHdu?=
 =?utf-8?B?ZXl0VGhwZTJkVXFjQXVybEtoNGRPUlY5cTQ1Slc3Vyt0cVN1V2NzeHBzbnlp?=
 =?utf-8?B?eWJJSnpKODBob0RYbitZdndDK3NNWmkvY0VhL1RTQlI3STVGTGJML2tRbXJQ?=
 =?utf-8?B?bUFManNJblBBMTdqZHBIVHUvazMvME1EWDhjajBFRk93dUFaSC9JOFZvQXdR?=
 =?utf-8?B?ZUlOc0Y3TTdRcnRYbjJSd0tsMDZ5a3NFUkg1TkgreUtiOW4wL2p6UytQRmNW?=
 =?utf-8?B?VUVyaG42SFhFd1ZoWFFxSkUzZ2lwQ2lsY2RJWTNPcEExRDY1eXN2VjNaZGNv?=
 =?utf-8?B?K1VyVHBmUFhHd2QxYmpOS0FQZjRmdU10MEl0TVlySTZhS2lUVWZUUTBUY1p3?=
 =?utf-8?B?OXRjRW1nRGRVZEkyb3FHZ1pkd1JyMGZIR0sxYWl6QlE5LzVhbnUxaGRsNXpD?=
 =?utf-8?B?eGNOSytZcStlbmdYZVp5dGVwYUlGVWtsK0xTWHZhbU5KN1JSZlRSNkM4bEFC?=
 =?utf-8?B?UUNKOHNzSmNWWVdzTmJFbWVKSHhyMTZCeENaK0MyNG56czk0bzdKaTQ0dTZ1?=
 =?utf-8?B?S1pMcklxbm9ia1JQU3Z0OGpLQi9xNzNPT0JvcDFOREl6OTZsaHFGZUhNdHpL?=
 =?utf-8?B?UEJBUS9iN3dRcFBIRzZLWExSSUF6bGV6ZmM0WVhubWlVMVJDbmUxbk9DZkZH?=
 =?utf-8?B?enB6TnNHMWp5cEQ1RzFVTzVwQ2lNbmo1QlJyc1RhS3I1UVE4R1V6akVaVEx2?=
 =?utf-8?B?bms1TFBnZEJRK2d6Q1dzZUg0aVNwZ0E2ZVpibTZDUzBqWjBVL2toZWpnV2kw?=
 =?utf-8?B?eUpobS9PRmlwRG04OWdCTnAzYXUyRHpYUWhtdUZad3FhS1UzUlZESUNvSGJw?=
 =?utf-8?B?eENKZkNqNXVPTFJYcnVYUithN3Jqd05KR0Foa1ZBeVdia2paZXBxMFEyaURi?=
 =?utf-8?B?UU9xaG51aXNIeHAyaml6cFNVa0ZhbGdMcFI3SVdxY3RMQVVidENyNTROdklW?=
 =?utf-8?B?SjRBS3NldTdiS012YmdNb05mbDdwalI5NVlPMmptNlR1aEhoajhsazdsV09v?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1ebbbd0-6dd9-4ed3-8a67-08dcf52be680
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 19:33:28.4527 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a+LebDvrEjF7iqIC5KnTvW5MdG58XHHYLZTVI62WtgccY+Cvz5zZGq8WrtO0jQQgWpopbq7imlREYaDpqQhHoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8126
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

Quoting Patchwork (2024-10-25 14:44:09-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/xe3lpd: Load DMC
>URL   : https://patchwork.freedesktop.org/series/140321/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15579_full -> Patchwork_140321v1_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_140321v1_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_140321v1_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (9 -> 9)
>------------------------------
>
>  Additional (1): shard-tglu-1=20
>  Missing    (1): shard-glk-0=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
140321v1_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_eio@in-flight-suspend:
>    - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb6/i=
gt@gem_eio@in-flight-suspend.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-=
snb6/igt@gem_eio@in-flight-suspend.html
>
>  * igt@gem_ppgtt@blt-vs-render-ctxn:
>    - shard-mtlp:         NOTRUN -> [INCOMPLETE][3]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-=
mtlp-4/igt@gem_ppgtt@blt-vs-render-ctxn.html
>
>  * igt@kms_pm_lpsp@kms-lpsp:
>    - shard-glk:          NOTRUN -> [INCOMPLETE][4]
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-=
glk1/igt@kms_pm_lpsp@kms-lpsp.html

None of those are related to this, since the patch is specific for
Xe3_LPD.

--
Gustavo Sousa

>
> =20
>New tests
>---------
>
>  New tests have been introduced between CI_DRM_15579_full and Patchwork_1=
40321v1_full:
>
>### New IGT tests (1) ###
>
>  * igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-d-dp-3:
>    - Statuses : 1 pass(s)
>    - Exec time: [2.39] s
>
> =20
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_140321v1_full that come from kno=
wn issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@device_reset@unbind-cold-reset-rebind:
>    - shard-tglu-1:       NOTRUN -> [SKIP][5] ([i915#11078])
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-=
tglu-1/igt@device_reset@unbind-cold-reset-rebind.html
>
>  * igt@gem_ccs@ctrl-surf-copy:
>    - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#3555] / [i915#9323])
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-=
tglu-1/igt@gem_ccs@ctrl-surf-copy.html
>    - shard-dg1:          NOTRUN -> [SKIP][7] ([i915#3555] / [i915#9323])
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-=
dg1-19/igt@gem_ccs@ctrl-surf-copy.html
>
>  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>    - shard-tglu-1:       NOTRUN -> [SKIP][8] ([i915#9323])
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-=
tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>
>  * igt@gem_ccs@suspend-resume:
>    - shard-dg2:          [PASS][9] -> [INCOMPLETE][10] ([i915#7297])
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-3/=
igt@gem_ccs@suspend-resume.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-6/igt@gem_ccs@suspend-resume.html
>
>  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
>    - shard-dg2:          [PASS][11] -> [INCOMPLETE][12] ([i915#12392] / [=
i915#7297])
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-3=
/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-6/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
>
>  * igt@gem_create@create-ext-set-pat:
>    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#8562])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@gem_create@create-ext-set-pat.html
>
>  * igt@gem_ctx_engines@invalid-engines:
>    - shard-rkl:          [PASS][14] -> [FAIL][15] ([i915#12031])
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-3=
/igt@gem_ctx_engines@invalid-engines.html
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-rkl-5/igt@gem_ctx_engines@invalid-engines.html
>    - shard-mtlp:         [PASS][16] -> [FAIL][17] ([i915#12031])
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-=
8/igt@gem_ctx_engines@invalid-engines.html
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-mtlp-1/igt@gem_ctx_engines@invalid-engines.html
>
>  * igt@gem_ctx_freq@sysfs@gt0:
>    - shard-dg2:          [PASS][18] -> [FAIL][19] ([i915#9561]) +1 other =
test fail
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-5=
/igt@gem_ctx_freq@sysfs@gt0.html
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html
>
>  * igt@gem_ctx_isolation@preservation-s3:
>    - shard-dg1:          [PASS][20] -> [DMESG-WARN][21] ([i915#4423])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-1=
6/igt@gem_ctx_isolation@preservation-s3.html
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-17/igt@gem_ctx_isolation@preservation-s3.html
>
>  * igt@gem_ctx_isolation@preservation-s3@vcs1:
>    - shard-dg1:          [PASS][22] -> [DMESG-WARN][23] ([i915#4391] / [i=
915#4423])
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-1=
6/igt@gem_ctx_isolation@preservation-s3@vcs1.html
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-17/igt@gem_ctx_isolation@preservation-s3@vcs1.html
>
>  * igt@gem_ctx_sseu@engines:
>    - shard-tglu-1:       NOTRUN -> [SKIP][24] ([i915#280])
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@gem_ctx_sseu@engines.html
>
>  * igt@gem_exec_balancer@bonded-false-hang:
>    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#4812])
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@gem_exec_balancer@bonded-false-hang.html
>
>  * igt@gem_exec_fair@basic-pace@vecs0:
>    - shard-rkl:          [PASS][26] -> [FAIL][27] ([i915#2842]) +6 other =
tests fail
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-3=
/igt@gem_exec_fair@basic-pace@vecs0.html
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
>
>  * igt@gem_exec_flush@basic-wb-rw-default:
>    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852])
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@gem_exec_flush@basic-wb-rw-default.html
>
>  * igt@gem_exec_reloc@basic-wc-cpu:
>    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3281])
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-10/igt@gem_exec_reloc@basic-wc-cpu.html
>
>  * igt@gem_exec_reloc@basic-write-wc-noreloc:
>    - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#3281]) +2 other test=
s skip
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@gem_exec_reloc@basic-write-wc-noreloc.html
>
>  * igt@gem_exec_schedule@pi-ringfull@ccs0:
>    - shard-dg2:          NOTRUN -> [FAIL][31] ([i915#12296]) +7 other tes=
ts fail
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-10/igt@gem_exec_schedule@pi-ringfull@ccs0.html
>
>  * igt@gem_exec_suspend@basic-s0:
>    - shard-dg2:          [PASS][32] -> [INCOMPLETE][33] ([i915#11441]) +1=
 other test incomplete
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1=
1/igt@gem_exec_suspend@basic-s0.html
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-2/igt@gem_exec_suspend@basic-s0.html
>
>  * igt@gem_lmem_swapping@massive:
>    - shard-glk:          NOTRUN -> [SKIP][34] ([i915#4613])
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-glk6/igt@gem_lmem_swapping@massive.html
>
>  * igt@gem_lmem_swapping@parallel-multi:
>    - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#4613]) +2 other test=
s skip
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@gem_lmem_swapping@parallel-multi.html
>
>  * igt@gem_media_vme:
>    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#284])
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@gem_media_vme.html
>
>  * igt@gem_mmap@bad-offset:
>    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4083]) +1 other test=
 skip
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-10/igt@gem_mmap@bad-offset.html
>
>  * igt@gem_mmap_gtt@medium-copy-xy:
>    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4077])
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-10/igt@gem_mmap_gtt@medium-copy-xy.html
>
>  * igt@gem_mmap_gtt@zero-extend:
>    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4077]) +1 other test=
 skip
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-17/igt@gem_mmap_gtt@zero-extend.html
>
>  * igt@gem_mmap_wc@bad-size:
>    - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4083]) +2 other test=
s skip
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@gem_mmap_wc@bad-size.html
>
>  * igt@gem_pread@display:
>    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#3282]) +1 other test=
 skip
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@gem_pread@display.html
>
>  * igt@gem_pxp@create-regular-context-2:
>    - shard-tglu-1:       NOTRUN -> [SKIP][42] ([i915#4270]) +1 other test=
 skip
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@gem_pxp@create-regular-context-2.html
>
>  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>    - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4270]) +1 other test=
 skip
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
>
>  * igt@gem_pxp@verify-pxp-stale-buf-execution:
>    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4270])
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-10/igt@gem_pxp@verify-pxp-stale-buf-execution.html
>
>  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
>    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#8428])
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-mtlp-7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html
>
>  * igt@gem_userptr_blits@coherency-unsync:
>    - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#3297])
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@gem_userptr_blits@coherency-unsync.html
>
>  * igt@gem_userptr_blits@create-destroy-unsync:
>    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#3297])
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-mtlp-7/igt@gem_userptr_blits@create-destroy-unsync.html
>
>  * igt@gen9_exec_parse@bb-large:
>    - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#2527] / [i915#2856])
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@gen9_exec_parse@bb-large.html
>
>  * igt@gen9_exec_parse@bb-start-param:
>    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#2856])
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-10/igt@gen9_exec_parse@bb-start-param.html
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-tglu-1:       NOTRUN -> [ABORT][50] ([i915#9820])
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@i915_pm_freq_api@freq-reset-multiple:
>    - shard-tglu-1:       NOTRUN -> [SKIP][51] ([i915#8399])
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html
>
>  * igt@i915_pm_rps@thresholds:
>    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#11681])
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@i915_pm_rps@thresholds.html
>
>  * igt@i915_selftest@live:
>    - shard-dg2:          [PASS][53] -> [ABORT][54] ([i915#12133])
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2=
/igt@i915_selftest@live.html
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-3/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@active:
>    - shard-dg2:          [PASS][55] -> [ABORT][56] ([i915#12305])
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2=
/igt@i915_selftest@live@active.html
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-3/igt@i915_selftest@live@active.html
>
>  * igt@i915_selftest@live@workarounds:
>    - shard-mtlp:         [PASS][57] -> [ABORT][58] ([i915#12216]) +1 othe=
r test abort
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-=
5/igt@i915_selftest@live@workarounds.html
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-mtlp-1/igt@i915_selftest@live@workarounds.html
>
>  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4212])
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
>
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y=
-rc-ccs:
>    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#8709]) +7 other test=
s skip
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-=
4-y-rc-ccs.html
>
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4=
-mc-ccs:
>    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#8709]) +11 other tes=
ts skip
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1=
-4-mc-ccs.html
>
>  * igt@kms_atomic_transition@modeset-transition-nonblocking:
>    - shard-glk:          ([PASS][62], [PASS][63]) -> [FAIL][64] ([i915#12=
177])
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk5/=
igt@kms_atomic_transition@modeset-transition-nonblocking.html
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9/=
igt@kms_atomic_transition@modeset-transition-nonblocking.html
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html
>
>  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
>    - shard-glk:          ([PASS][65], [PASS][66]) -> [FAIL][67] ([i915#11=
859])
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk5/=
igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9/=
igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.h=
tml
>
>  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>    - shard-tglu-1:       NOTRUN -> [SKIP][68] ([i915#5286]) +3 other test=
s skip
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>
>  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>    - shard-dg2:          NOTRUN -> [SKIP][69] +2 other tests skip
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
>
>  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#4538] / [i915#5286])
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>
>  * igt@kms_big_fb@linear-8bpp-rotate-270:
>    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#3638])
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@kms_big_fb@linear-8bpp-rotate-270.html
>
>  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>    - shard-mtlp:         NOTRUN -> [SKIP][72]
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-mtlp-7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
>
>  * igt@kms_big_fb@y-tiled-addfb:
>    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#5190])
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-10/igt@kms_big_fb@y-tiled-addfb.html
>
>  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#4538]) +2 other test=
s skip
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4538] / [i915#5190])=
 +2 other tests skip
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.h=
tml
>
>  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1:
>    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#10307] / [i915#10434=
] / [i915#6095]) +2 other tests skip
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1.html
>
>  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3:
>    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#10307] / [i915#6095]=
) +146 other tests skip
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3.html
>
>  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-=
a-1:
>    - shard-tglu-1:       NOTRUN -> [SKIP][78] ([i915#6095]) +24 other tes=
ts skip
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hd=
mi-a-1.html
>
>  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#6095]) +25 other tes=
ts skip
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-rkl-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
>
>  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
>    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#6095]) +98 other tes=
ts skip
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-12/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html
>
>  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
>    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4087]) +3 other test=
s skip
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-3/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html
>
>  * igt@kms_chamelium_audio@dp-audio-edid:
>    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#7828]) +2 other test=
s skip
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-19/igt@kms_chamelium_audio@dp-audio-edid.html
>
>  * igt@kms_chamelium_audio@hdmi-audio-edid:
>    - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#7828]) +3 other test=
s skip
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html
>
>  * igt@kms_color@ctm-0-50@pipe-a-edp-1:
>    - shard-mtlp:         [PASS][84] -> [FAIL][85] ([i915#12520])
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-=
8/igt@kms_color@ctm-0-50@pipe-a-edp-1.html
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-mtlp-6/igt@kms_color@ctm-0-50@pipe-a-edp-1.html
>
>  * igt@kms_content_protection@dp-mst-type-0:
>    - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#3116] / [i915#3299])
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@kms_content_protection@dp-mst-type-0.html
>
>  * igt@kms_cursor_crc@cursor-onscreen-512x170:
>    - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#11453] / [i915#3359]=
)
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html
>
>  * igt@kms_cursor_crc@cursor-size-hints:
>    - shard-dg1:          NOTRUN -> [DMESG-WARN][88] ([i915#4423]) +1 othe=
r test dmesg-warn
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg1-18/igt@kms_cursor_crc@cursor-size-hints.html
>
>  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>    - shard-tglu:         NOTRUN -> [SKIP][89] +3 other tests skip
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>
>  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size=
:
>    - shard-tglu-1:       NOTRUN -> [SKIP][90] +43 other tests skip
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-s=
ize.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>    - shard-snb:          [PASS][91] -> [FAIL][92] ([i915#2346])
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb1/=
igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-snb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>
>  * igt@kms_dp_aux_dev:
>    - shard-dg2:          [PASS][93] -> [SKIP][94] ([i915#1257])
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1=
0/igt@kms_dp_aux_dev.html
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-dg2-5/igt@kms_dp_aux_dev.html
>
>  * igt@kms_feature_discovery@display-2x:
>    - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#1839])
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-1/igt@kms_feature_discovery@display-2x.html
>
>  * igt@kms_feature_discovery@display-3x:
>    - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#1839])
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-tglu-2/igt@kms_feature_discovery@display-3x.html
>
>  * igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2:
>    - shard-glk:          ([PASS][97], [PASS][98]) -> [FAIL][99] ([i915#12=
403]) +1 other test fail
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk3/=
igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk2/=
igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard=
-glk2/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html
>
>  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#5354]) +3 other tes=
ts skip
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-10/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
>
>  * igt@kms_flip@2x-plain-flip-fb-recreate:
>    - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#3637]) +3 other tes=
ts skip
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate.html
>
>  * igt@kms_flip@2x-plain-flip-ts-check:
>    - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#3637] / [i915#3966]=
)
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_flip@2x-plain-flip-ts-check.html
>
>  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#9934]) +2 other tes=
ts skip
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
>
>  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
>    - shard-rkl:          NOTRUN -> [FAIL][104] ([i915#2122])
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-rkl-2/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
>
>  * igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1:
>    - shard-mtlp:         [PASS][105] -> [INCOMPLETE][106] ([i915#6113])
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-6/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-3/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html
>
>  * igt@kms_flip@flip-vs-suspend:
>    - shard-dg1:          [PASS][107] -> [INCOMPLETE][108] ([i915#4423] / =
[i915#4839] / [i915#6113])
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
15/igt@kms_flip@flip-vs-suspend.html
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-12/igt@kms_flip@flip-vs-suspend.html
>
>  * igt@kms_flip@flip-vs-suspend@d-hdmi-a3:
>    - shard-dg1:          NOTRUN -> [INCOMPLETE][109] ([i915#6113])
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-12/igt@kms_flip@flip-vs-suspend@d-hdmi-a3.html
>
>  * igt@kms_flip@modeset-vs-vblank-race:
>    - shard-dg2:          [PASS][110] -> [SKIP][111] ([i915#5354]) +7 othe=
r tests skip
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
11/igt@kms_flip@modeset-vs-vblank-race.html
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_flip@modeset-vs-vblank-race.html
>
>  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
>    - shard-snb:          [PASS][112] -> [FAIL][113] ([i915#2122]) +3 othe=
r tests fail
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb5=
/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-snb6/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
>
>  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>    - shard-mtlp:         [PASS][114] -> [FAIL][115] ([i915#2122])
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>
>  * igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:
>    - shard-tglu:         [PASS][116] -> [FAIL][117] ([i915#2122]) +5 othe=
r tests fail
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu=
-10/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-2/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html
>
>  * igt@kms_flip@wf_vblank-ts-check-interruptible:
>    - shard-rkl:          [PASS][118] -> [FAIL][119] ([i915#2122])
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-=
3/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>
>  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2:
>    - shard-rkl:          [PASS][120] -> [FAIL][121] ([i915#11961])
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-=
3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2.html
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscali=
ng@pipe-a-valid-mode:
>    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#2672]) +2 other tes=
ts skip
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downsc=
aling@pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling=
@pipe-a-valid-mode:
>    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#2587] / [i915#2672]=
) +1 other test skip
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upsca=
ling@pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#2587] / [i915#2672]=
 / [i915#3555])
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscali=
ng.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@p=
ipe-a-valid-mode:
>    - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#2587] / [i915#2672]=
) +1 other test skip
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscali=
ng@pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#2672] / [i915#3555]=
) +1 other test skip
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscalin=
g.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscal=
ing:
>    - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#2672] / [i915#3555]=
)
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-up=
scaling.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
>    - shard-dg2:          [PASS][128] -> [SKIP][129] ([i915#3555]) +1 othe=
r test skip
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling=
.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>    - shard-snb:          NOTRUN -> [SKIP][130] +14 other tests skip
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt=
.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
>    - shard-dg1:          NOTRUN -> [SKIP][131] +16 other tests skip
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gt=
t:
>    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#8708])
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mma=
p-gtt.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
>    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#3458]) +3 other tes=
ts skip
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwr=
ite.html
>
>  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>    - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#9766])
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
>    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3458]) +1 other tes=
t skip
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.=
html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
>    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#1825]) +1 other tes=
t skip
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-w=
c.html
>
>  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#8708]) +3 other tes=
ts skip
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
>
>  * igt@kms_hdmi_inject@inject-audio:
>    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#433])
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_hdmi_inject@inject-audio.html
>
>  * igt@kms_hdr@static-toggle:
>    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#3555] / [i915#8228]=
) +1 other test skip
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_hdr@static-toggle.html
>
>  * igt@kms_joiner@basic-ultra-joiner:
>    - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#12339])
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_joiner@basic-ultra-joiner.html
>    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#12339])
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_joiner@basic-ultra-joiner.html
>
>  * igt@kms_lease@lease-revoke:
>    - shard-dg2:          [PASS][142] -> [SKIP][143] ([i915#9197]) +17 oth=
er tests skip
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_lease@lease-revoke.html
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_lease@lease-revoke.html
>
>  * igt@kms_panel_fitting@atomic-fastset:
>    - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#6301])
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_panel_fitting@atomic-fastset.html
>
>  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
>    - shard-dg2:          [PASS][145] -> [SKIP][146] ([i915#7294])
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
>
>  * igt@kms_plane_multiple@tiling-yf:
>    - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#3555]) +2 other tes=
ts skip
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_plane_multiple@tiling-yf.html
>
>  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#9809])
>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
>
>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
>    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#12247]) +4 other te=
sts skip
>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-forma=
t.html
>
>  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
>    - shard-dg2:          [PASS][150] -> [SKIP][151] ([i915#12247]) +8 oth=
er tests skip
>   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
>   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
>
>  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d:
>    - shard-dg2:          [PASS][152] -> [SKIP][153] ([i915#12247] / [i915=
#8152]) +2 other tests skip
>   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d.html
>   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d.html
>
>  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
>    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#12247]) +9 other te=
sts skip
>   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe=
-d.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
>    - shard-dg2:          [PASS][155] -> [SKIP][156] ([i915#12247] / [i915=
#8152] / [i915#9423]) +2 other tests skip
>   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
>   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.htm=
l
>
>  * igt@kms_pm_backlight@basic-brightness:
>    - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#9812])
>   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_pm_backlight@basic-brightness.html
>
>  * igt@kms_pm_dc@dc5-psr:
>    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#9685])
>   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_pm_dc@dc5-psr.html
>
>  * igt@kms_properties@plane-properties-legacy:
>    - shard-dg2:          [PASS][159] -> [SKIP][160] ([i915#11521])
>   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_properties@plane-properties-legacy.html
>   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_properties@plane-properties-legacy.html
>
>  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
>    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#11520]) +1 other te=
st skip
>   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-s=
f.html
>
>  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>    - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#11520]) +3 other te=
sts skip
>   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
>
>  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#11520]) +1 other te=
st skip
>   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.h=
tml
>
>  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
>    - shard-glk:          NOTRUN -> [SKIP][164] ([i915#11520])
>   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk8/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html
>
>  * igt@kms_psr2_su@frontbuffer-xrgb8888:
>    - shard-glk:          NOTRUN -> [SKIP][165] +43 other tests skip
>   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>
>  * igt@kms_psr@fbc-pr-basic:
>    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#1072] / [i915#9732]=
) +3 other tests skip
>   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-10/igt@kms_psr@fbc-pr-basic.html
>
>  * igt@kms_psr@fbc-psr-basic:
>    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#1072] / [i915#9732]=
) +4 other tests skip
>   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_psr@fbc-psr-basic.html
>
>  * igt@kms_psr@fbc-psr-no-drrs:
>    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#9688]) +1 other tes=
t skip
>   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-7/igt@kms_psr@fbc-psr-no-drrs.html
>
>  * igt@kms_psr@fbc-psr2-cursor-blt:
>    - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#9732]) +11 other te=
sts skip
>   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_psr@fbc-psr2-cursor-blt.html
>
>  * igt@kms_setmode@basic:
>    - shard-snb:          [PASS][170] -> [FAIL][171] ([i915#5465]) +2 othe=
r tests fail
>   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb1=
/igt@kms_setmode@basic.html
>   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-snb4/igt@kms_setmode@basic.html
>
>  * igt@kms_vrr@flip-basic:
>    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3555]) +1 other tes=
t skip
>   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_vrr@flip-basic.html
>
>  * igt@kms_vrr@lobf:
>    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#11920])
>   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-1/igt@kms_vrr@lobf.html
>
>  * igt@kms_vrr@negative-basic:
>    - shard-mtlp:         [PASS][174] -> [FAIL][175] ([i915#10393]) +1 oth=
er test fail
>   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-4/igt@kms_vrr@negative-basic.html
>   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-3/igt@kms_vrr@negative-basic.html
>
>  * igt@kms_writeback@writeback-fb-id:
>    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#2437])
>   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_writeback@writeback-fb-id.html
>
>  * igt@kms_writeback@writeback-pixel-formats:
>    - shard-glk:          NOTRUN -> [SKIP][177] ([i915#2437])
>   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk6/igt@kms_writeback@writeback-pixel-formats.html
>
>  * igt@prime_vgem@basic-write:
>    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#3708])
>   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@prime_vgem@basic-write.html
>
> =20
>#### Possible fixes ####
>
>  * igt@fbdev@eof:
>    - shard-dg2:          [SKIP][179] ([i915#2582]) -> [PASS][180] +1 othe=
r test pass
>   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@fbdev@eof.html
>   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-3/igt@fbdev@eof.html
>
>  * igt@gem_ctx_persistence@hostile:
>    - shard-tglu:         [FAIL][181] ([i915#11980]) -> [PASS][182]
>   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu=
-7/igt@gem_ctx_persistence@hostile.html
>   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-8/igt@gem_ctx_persistence@hostile.html
>
>  * igt@gem_eio@hibernate:
>    - shard-tglu:         [ABORT][183] ([i915#10030] / [i915#7975] / [i915=
#8213]) -> [PASS][184]
>   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu=
-10/igt@gem_eio@hibernate.html
>   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-2/igt@gem_eio@hibernate.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-glk:          ([PASS][185], [FAIL][186]) ([i915#2842]) -> [PAS=
S][187] +1 other test pass
>   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk7=
/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk1=
/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    - shard-tglu:         [FAIL][188] ([i915#2842]) -> [PASS][189] +1 othe=
r test pass
>   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu=
-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_exec_suspend@basic-s4-devices:
>    - shard-dg1:          [ABORT][190] ([i915#7975] / [i915#8213]) -> [PAS=
S][191] +1 other test pass
>   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
14/igt@gem_exec_suspend@basic-s4-devices.html
>   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html
>
>  * igt@i915_pm_rc6_residency@rc6-idle:
>    - shard-dg1:          [FAIL][192] ([i915#3591]) -> [PASS][193] +1 othe=
r test pass
>   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
13/igt@i915_pm_rc6_residency@rc6-idle.html
>   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html
>
>  * igt@i915_power@sanity:
>    - shard-mtlp:         [SKIP][194] ([i915#7984]) -> [PASS][195]
>   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-7/igt@i915_power@sanity.html
>   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-5/igt@i915_power@sanity.html
>
>  * igt@kms_atomic_transition@modeset-transition-fencing:
>    - shard-glk:          ([PASS][196], [FAIL][197]) ([i915#12238]) -> [PA=
SS][198]
>   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4=
/igt@kms_atomic_transition@modeset-transition-fencing.html
>   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8=
/igt@kms_atomic_transition@modeset-transition-fencing.html
>   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk3/igt@kms_atomic_transition@modeset-transition-fencing.html
>
>  * igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:
>    - shard-glk:          ([FAIL][199], [PASS][200]) ([i915#11859]) -> [PA=
SS][201]
>   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8=
/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
>   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4=
/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
>   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk3/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
>
>  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3=
:
>    - shard-dg2:          [FAIL][202] ([i915#5956]) -> [PASS][203] +1 othe=
r test pass
>   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.ht=
ml
>   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-=
a-3.html
>
>  * igt@kms_color@ctm-0-50@pipe-b-edp-1:
>    - shard-mtlp:         [FAIL][204] ([i915#12520]) -> [PASS][205]
>   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-8/igt@kms_color@ctm-0-50@pipe-b-edp-1.html
>   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-6/igt@kms_color@ctm-0-50@pipe-b-edp-1.html
>
>  * igt@kms_color@ctm-negative:
>    - shard-dg1:          [DMESG-WARN][206] ([i915#4423]) -> [PASS][207]
>   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
18/igt@kms_color@ctm-negative.html
>   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_color@ctm-negative.html
>
>  * igt@kms_color@degamma:
>    - shard-dg2:          [SKIP][208] ([i915#5354]) -> [PASS][209] +9 othe=
r tests pass
>   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_color@degamma.html
>   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_color@degamma.html
>
>  * igt@kms_cursor_crc@cursor-random-256x256:
>    - shard-dg2:          [SKIP][210] ([i915#9197]) -> [PASS][211] +26 oth=
er tests pass
>   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_cursor_crc@cursor-random-256x256.html
>   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_cursor_crc@cursor-random-256x256.html
>
>  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>    - shard-snb:          [SKIP][212] -> [PASS][213] +1 other test pass
>   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb4=
/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
>   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-snb7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
>
>  * igt@kms_fbcon_fbt@fbc-suspend:
>    - shard-dg2:          [SKIP][214] ([i915#1849]) -> [PASS][215] +1 othe=
r test pass
>   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_fbcon_fbt@fbc-suspend.html
>   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html
>
>  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a=
2:
>    - shard-glk:          ([FAIL][216], [PASS][217]) ([i915#12403]) -> [PA=
SS][218] +1 other test pass
>   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk2=
/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.ht=
ml
>   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk6=
/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.ht=
ml
>   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi=
-a2.html
>
>  * igt@kms_flip@blocking-wf_vblank@d-hdmi-a1:
>    - shard-tglu:         [FAIL][219] ([i915#2122]) -> [PASS][220] +3 othe=
r tests pass
>   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu=
-3/igt@kms_flip@blocking-wf_vblank@d-hdmi-a1.html
>   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-4/igt@kms_flip@blocking-wf_vblank@d-hdmi-a1.html
>
>  * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
>    - shard-glk:          ([PASS][221], [INCOMPLETE][222]) ([i915#4839]) -=
> [PASS][223] +1 other test pass
>   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8=
/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
>   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4=
/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
>   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk1/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
>
>  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4:
>    - shard-dg1:          [FAIL][224] ([i915#2122]) -> [PASS][225] +2 othe=
r tests pass
>   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
16/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html
>   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-17/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html
>
>  * igt@kms_flip@plain-flip-ts-check-interruptible:
>    - shard-mtlp:         [FAIL][226] ([i915#11989] / [i915#2122]) -> [PAS=
S][227]
>   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
>   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible.html
>
>  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
>    - shard-mtlp:         [FAIL][228] ([i915#2122]) -> [PASS][229] +2 othe=
r tests pass
>   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
>   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
>
>  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
>    - shard-glk:          ([PASS][230], [FAIL][231]) ([i915#2122]) -> [PAS=
S][232] +1 other test pass
>   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk2=
/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
>   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk3=
/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
>   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
>
>  * igt@kms_invalid_mode@bad-vsync-end:
>    - shard-dg2:          [SKIP][233] ([i915#3555]) -> [PASS][234] +3 othe=
r tests pass
>   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_invalid_mode@bad-vsync-end.html
>   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_invalid_mode@bad-vsync-end.html
>
>  * igt@kms_plane_alpha_blend@constant-alpha-max:
>    - shard-dg2:          [SKIP][235] ([i915#7294]) -> [PASS][236]
>   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_plane_alpha_blend@constant-alpha-max.html
>   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-max.html
>
>  * igt@kms_plane_scaling@intel-max-src-size:
>    - shard-dg2:          [SKIP][237] ([i915#6953] / [i915#9423]) -> [PASS=
][238]
>   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
4/igt@kms_plane_scaling@intel-max-src-size.html
>   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
>
>  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
>    - shard-dg2:          [SKIP][239] ([i915#12247] / [i915#8152] / [i915#=
9423]) -> [PASS][240]
>   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
>   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
>
>  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:
>    - shard-dg2:          [SKIP][241] ([i915#12247] / [i915#8152]) -> [PAS=
S][242]
>   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.htm=
l
>   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe=
-d.html
>
>  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-format=
s:
>    - shard-dg2:          [SKIP][243] ([i915#3555] / [i915#8152] / [i915#9=
423]) -> [PASS][244]
>   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.h=
tml
>   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-for=
mats.html
>
>  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-format=
s@pipe-a:
>    - shard-dg2:          [SKIP][245] ([i915#12247]) -> [PASS][246] +11 ot=
her tests pass
>   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@p=
ipe-a.html
>   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-for=
mats@pipe-a.html
>
>  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-format=
s@pipe-d:
>    - shard-dg2:          [SKIP][247] ([i915#8152]) -> [PASS][248] +2 othe=
r tests pass
>   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@p=
ipe-d.html
>   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-for=
mats@pipe-d.html
>
>  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
>    - shard-dg2:          [SKIP][249] ([i915#8152] / [i915#9423]) -> [PASS=
][250] +1 other test pass
>   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
>   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
>
>  * igt@kms_pm_dc@dc6-dpms:
>    - shard-tglu:         [FAIL][251] ([i915#9295]) -> [PASS][252]
>   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu=
-8/igt@kms_pm_dc@dc6-dpms.html
>   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-3/igt@kms_pm_dc@dc6-dpms.html
>
>  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>    - shard-dg2:          [SKIP][253] ([i915#9519]) -> [PASS][254]
>   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>
> =20
>#### Warnings ####
>
>  * igt@gem_busy@close-race:
>    - shard-rkl:          [FAIL][255] ([i915#12297]) -> [FAIL][256] ([i915=
#12297] / [i915#12577])
>   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-=
1/igt@gem_busy@close-race.html
>   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-rkl-2/igt@gem_busy@close-race.html
>    - shard-snb:          [FAIL][257] ([i915#12297]) -> [FAIL][258] ([i915=
#12297] / [i915#12577])
>   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb6=
/igt@gem_busy@close-race.html
>   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-snb4/igt@gem_busy@close-race.html
>    - shard-dg1:          [FAIL][259] ([i915#12297]) -> [FAIL][260] ([i915=
#12297] / [i915#12577])
>   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
17/igt@gem_busy@close-race.html
>   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-18/igt@gem_busy@close-race.html
>    - shard-tglu:         [FAIL][261] ([i915#12297]) -> [FAIL][262] ([i915=
#12297] / [i915#12577])
>   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu=
-3/igt@gem_busy@close-race.html
>   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-4/igt@gem_busy@close-race.html
>    - shard-mtlp:         [FAIL][263] ([i915#12297]) -> [FAIL][264] ([i915=
#12297] / [i915#12577])
>   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-4/igt@gem_busy@close-race.html
>   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-8/igt@gem_busy@close-race.html
>    - shard-glk:          ([FAIL][265], [FAIL][266]) ([i915#12297]) -> [FA=
IL][267] ([i915#12297] / [i915#12526] / [i915#12577])
>   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9=
/igt@gem_busy@close-race.html
>   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk7=
/igt@gem_busy@close-race.html
>   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk7/igt@gem_busy@close-race.html
>
>  * igt@gem_ctx_persistence@hostile:
>    - shard-dg2:          [FAIL][268] ([i915#11980]) -> [FAIL][269] ([i915=
#11980] / [i915#12580])
>   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
11/igt@gem_ctx_persistence@hostile.html
>   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-10/igt@gem_ctx_persistence@hostile.html
>    - shard-rkl:          [FAIL][270] ([i915#11980]) -> [FAIL][271] ([i915=
#11980] / [i915#12580])
>   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-=
4/igt@gem_ctx_persistence@hostile.html
>   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-rkl-7/igt@gem_ctx_persistence@hostile.html
>    - shard-dg1:          [FAIL][272] ([i915#11980]) -> [FAIL][273] ([i915=
#11980] / [i915#12580])
>   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
14/igt@gem_ctx_persistence@hostile.html
>   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-12/igt@gem_ctx_persistence@hostile.html
>    - shard-mtlp:         [FAIL][274] ([i915#11980]) -> [FAIL][275] ([i915=
#11980] / [i915#12580])
>   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-2/igt@gem_ctx_persistence@hostile.html
>   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-8/igt@gem_ctx_persistence@hostile.html
>
>  * igt@gem_eio@reset-stress:
>    - shard-dg1:          [FAIL][276] ([i915#5784]) -> [FAIL][277] ([i915#=
12543] / [i915#5784])
>   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
18/igt@gem_eio@reset-stress.html
>   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-13/igt@gem_eio@reset-stress.html
>
>  * igt@gem_exec_capture@capture:
>    - shard-mtlp:         [FAIL][278] ([i915#11965]) -> [FAIL][279] ([i915=
#11965] / [i915#12558]) +1 other test fail
>   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-7/igt@gem_exec_capture@capture.html
>   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-1/igt@gem_exec_capture@capture.html
>
>  * igt@gem_exec_capture@capture@vecs0-lmem0:
>    - shard-dg2:          [FAIL][280] ([i915#11965]) -> [FAIL][281] ([i915=
#11965] / [i915#12558]) +2 other tests fail
>   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
8/igt@gem_exec_capture@capture@vecs0-lmem0.html
>   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-3/igt@gem_exec_capture@capture@vecs0-lmem0.html
>    - shard-dg1:          [FAIL][282] ([i915#11965]) -> [FAIL][283] ([i915=
#11965] / [i915#12558]) +2 other tests fail
>   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
16/igt@gem_exec_capture@capture@vecs0-lmem0.html
>   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-14/igt@gem_exec_capture@capture@vecs0-lmem0.html
>
>  * igt@gem_pread@exhaustion:
>    - shard-glk:          [INCOMPLETE][284] -> [WARN][285] ([i915#2658])
>   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8=
/igt@gem_pread@exhaustion.html
>   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk1/igt@gem_pread@exhaustion.html
>
>  * igt@kms_async_flips@invalid-async-flip:
>    - shard-dg2:          [SKIP][286] ([i915#9197]) -> [SKIP][287] ([i915#=
6228])
>   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_async_flips@invalid-async-flip.html
>   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_async_flips@invalid-async-flip.html
>
>  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>    - shard-dg2:          [SKIP][288] ([i915#9197]) -> [SKIP][289] +4 othe=
r tests skip
>   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
>   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
>
>  * igt@kms_big_fb@linear-32bpp-rotate-270:
>    - shard-dg2:          [SKIP][290] -> [SKIP][291] ([i915#9197])
>   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_big_fb@linear-32bpp-rotate-270.html
>   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_big_fb@linear-32bpp-rotate-270.html
>
>  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>    - shard-dg2:          [SKIP][292] ([i915#5190] / [i915#9197]) -> [SKIP=
][293] ([i915#4538] / [i915#5190]) +7 other tests skip
>   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>
>  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>    - shard-dg2:          [SKIP][294] ([i915#4538] / [i915#5190]) -> [SKIP=
][295] ([i915#5190] / [i915#9197]) +3 other tests skip
>   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
>   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-fli=
p.html
>
>  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>    - shard-dg2:          [SKIP][296] ([i915#5190] / [i915#9197]) -> [SKIP=
][297] ([i915#5190])
>   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
>   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
>
>  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs:
>    - shard-dg1:          [SKIP][298] ([i915#6095]) -> [SKIP][299] ([i915#=
4423] / [i915#6095]) +1 other test skip
>   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
17/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html
>   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-18/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html
>
>  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:
>    - shard-dg2:          [SKIP][300] ([i915#10307] / [i915#6095]) -> [SKI=
P][301] ([i915#9197]) +5 other tests skip
>   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html
>   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html
>
>  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs:
>    - shard-dg2:          [SKIP][302] ([i915#9197]) -> [SKIP][303] ([i915#=
10307] / [i915#6095]) +7 other tests skip
>   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html
>   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html
>
>  * igt@kms_cdclk@mode-transition-all-outputs:
>    - shard-dg2:          [SKIP][304] ([i915#11616] / [i915#7213]) -> [SKI=
P][305] ([i915#9197])
>   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
11/igt@kms_cdclk@mode-transition-all-outputs.html
>   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html
>
>  * igt@kms_color@deep-color:
>    - shard-dg2:          [SKIP][306] ([i915#5354]) -> [SKIP][307] ([i915#=
3555])
>   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_color@deep-color.html
>   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-3/igt@kms_color@deep-color.html
>
>  * igt@kms_content_protection@srm:
>    - shard-dg2:          [SKIP][308] ([i915#7118]) -> [SKIP][309] ([i915#=
9197])
>   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
11/igt@kms_content_protection@srm.html
>   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_content_protection@srm.html
>
>  * igt@kms_content_protection@type1:
>    - shard-dg2:          [SKIP][310] ([i915#7118] / [i915#9424]) -> [SKIP=
][311] ([i915#7118] / [i915#7162] / [i915#9424])
>   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
4/igt@kms_content_protection@type1.html
>   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-10/igt@kms_content_protection@type1.html
>
>  * igt@kms_cursor_crc@cursor-offscreen-32x10:
>    - shard-dg2:          [SKIP][312] ([i915#9197]) -> [SKIP][313] ([i915#=
3555]) +2 other tests skip
>   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_cursor_crc@cursor-offscreen-32x10.html
>   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_cursor_crc@cursor-offscreen-32x10.html
>
>  * igt@kms_cursor_crc@cursor-offscreen-32x32:
>    - shard-dg2:          [SKIP][314] ([i915#3555]) -> [SKIP][315] ([i915#=
9197])
>   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_cursor_crc@cursor-offscreen-32x32.html
>   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html
>
>  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>    - shard-dg2:          [SKIP][316] ([i915#11453] / [i915#3359]) -> [SKI=
P][317] ([i915#9197])
>   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>
>  * igt@kms_cursor_crc@cursor-sliding-512x512:
>    - shard-dg2:          [SKIP][318] ([i915#9197]) -> [SKIP][319] ([i915#=
11453] / [i915#3359]) +1 other test skip
>   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_cursor_crc@cursor-sliding-512x512.html
>   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x512.html
>
>  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>    - shard-dg2:          [SKIP][320] ([i915#5354]) -> [SKIP][321] ([i915#=
9197])
>   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>    - shard-dg2:          [SKIP][322] ([i915#4103] / [i915#4213]) -> [SKIP=
][323] ([i915#9197])
>   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.ht=
ml
>
>  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>    - shard-dg2:          [SKIP][324] ([i915#9197]) -> [SKIP][325] ([i915#=
5354]) +1 other test skip
>   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
>   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
>
>  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>    - shard-dg2:          [SKIP][326] ([i915#9197]) -> [SKIP][327] ([i915#=
4103] / [i915#4213])
>   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>
>  * igt@kms_dp_linktrain_fallback@dp-fallback:
>    - shard-dg2:          [SKIP][328] ([i915#9197]) -> [SKIP][329] ([i915#=
12402])
>   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_dp_linktrain_fallback@dp-fallback.html
>   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_dp_linktrain_fallback@dp-fallback.html
>
>  * igt@kms_draw_crc@draw-method-mmap-wc:
>    - shard-dg2:          [SKIP][330] ([i915#9197]) -> [SKIP][331] ([i915#=
8812]) +1 other test skip
>   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_draw_crc@draw-method-mmap-wc.html
>   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_draw_crc@draw-method-mmap-wc.html
>
>  * igt@kms_fence_pin_leak:
>    - shard-dg2:          [SKIP][332] ([i915#9197]) -> [SKIP][333] ([i915#=
4881])
>   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_fence_pin_leak.html
>   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_fence_pin_leak.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscali=
ng:
>    - shard-dg2:          [SKIP][334] ([i915#3555]) -> [SKIP][335] ([i915#=
2672] / [i915#3555]) +1 other test skip
>   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.=
html
>   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downsc=
aling.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upsc=
aling:
>    - shard-dg2:          [SKIP][336] ([i915#3555] / [i915#5190]) -> [SKIP=
][337] ([i915#2672] / [i915#3555] / [i915#5190])
>   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscali=
ng.html
>   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-u=
pscaling.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling=
:
>    - shard-dg2:          [SKIP][338] ([i915#2672] / [i915#3555] / [i915#5=
190]) -> [SKIP][339] ([i915#3555] / [i915#5190])
>   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.ht=
ml
>   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscal=
ing.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:
>    - shard-mtlp:         [SKIP][340] ([i915#3555] / [i915#8813]) -> [SKIP=
][341] ([i915#3555] / [i915#8810] / [i915#8813]) +7 other tests skip
>   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.ht=
ml
>   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscal=
ing.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>    - shard-dg2:          [SKIP][342] ([i915#5354]) -> [SKIP][343] ([i915#=
8708]) +10 other tests skip
>   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
>   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc=
.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cp=
u:
>    - shard-dg2:          [SKIP][344] ([i915#3458]) -> [SKIP][345] ([i915#=
5354]) +4 other tests skip
>   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.h=
tml
>   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap=
-cpu.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cp=
u:
>    - shard-dg2:          [SKIP][346] ([i915#5354]) -> [SKIP][347] ([i915#=
3458]) +5 other tests skip
>   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.h=
tml
>   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap=
-cpu.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gt=
t:
>    - shard-dg2:          [SKIP][348] ([i915#8708]) -> [SKIP][349] ([i915#=
5354]) +5 other tests skip
>   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.h=
tml
>   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap=
-gtt.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>    - shard-dg2:          [SKIP][350] ([i915#3458]) -> [SKIP][351] ([i915#=
10433] / [i915#3458])
>   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>    - shard-dg2:          [SKIP][352] ([i915#10433] / [i915#3458]) -> [SKI=
P][353] ([i915#3458]) +2 other tests skip
>   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:
>    - shard-glk:          ([INCOMPLETE][354], [SKIP][355]) ([i915#2295]) -=
> [SKIP][356]
>   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk5=
/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
>   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9=
/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
>   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.ht=
ml
>
>  * igt@kms_hdr@invalid-metadata-sizes:
>    - shard-dg2:          [SKIP][357] ([i915#3555] / [i915#8228]) -> [SKIP=
][358] ([i915#9197])
>   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_hdr@invalid-metadata-sizes.html
>   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html
>
>  * igt@kms_hdr@static-swap:
>    - shard-dg2:          [SKIP][359] ([i915#9197]) -> [SKIP][360] ([i915#=
3555] / [i915#8228])
>   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_hdr@static-swap.html
>   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_hdr@static-swap.html
>
>  * igt@kms_plane_lowres@tiling-y:
>    - shard-dg2:          [SKIP][361] ([i915#8821]) -> [SKIP][362] ([i915#=
9197])
>   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@kms_plane_lowres@tiling-y.html
>   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_plane_lowres@tiling-y.html
>
>  * igt@kms_psr@fbc-pr-cursor-blt:
>    - shard-dg1:          [SKIP][363] ([i915#1072] / [i915#9732]) -> [SKIP=
][364] ([i915#1072] / [i915#4423] / [i915#9732])
>   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
18/igt@kms_psr@fbc-pr-cursor-blt.html
>   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-13/igt@kms_psr@fbc-pr-cursor-blt.html
>
>  * igt@kms_psr@fbc-psr-sprite-plane-move:
>    - shard-dg1:          [SKIP][365] ([i915#1072] / [i915#4423] / [i915#9=
732]) -> [SKIP][366] ([i915#1072] / [i915#9732])
>   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
18/igt@kms_psr@fbc-psr-sprite-plane-move.html
>   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-19/igt@kms_psr@fbc-psr-sprite-plane-move.html
>
>  * igt@kms_rotation_crc@primary-rotation-90:
>    - shard-dg2:          [SKIP][367] ([i915#9197]) -> [SKIP][368] ([i915#=
11131] / [i915#4235])
>   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_rotation_crc@primary-rotation-90.html
>   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-3/igt@kms_rotation_crc@primary-rotation-90.html
>
>  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>    - shard-dg2:          [SKIP][369] ([i915#5190] / [i915#9197]) -> [SKIP=
][370] ([i915#11131] / [i915#4235] / [i915#5190])
>   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
>   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
>
>  * igt@kms_rotation_crc@sprite-rotation-270:
>    - shard-dg2:          [SKIP][371] ([i915#11131] / [i915#4235]) -> [SKI=
P][372] ([i915#9197]) +1 other test skip
>   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
11/igt@kms_rotation_crc@sprite-rotation-270.html
>   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html
>
>  * igt@kms_vrr@max-min:
>    - shard-dg2:          [SKIP][373] ([i915#9197]) -> [SKIP][374] ([i915#=
9906])
>   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_vrr@max-min.html
>   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_vrr@max-min.html
>
>  * igt@kms_vrr@negative-basic:
>    - shard-dg2:          [SKIP][375] ([i915#9197]) -> [SKIP][376] ([i915#=
3555] / [i915#9906])
>   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@kms_vrr@negative-basic.html
>   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-8/igt@kms_vrr@negative-basic.html
>
>  * igt@perf@non-zero-reason@0-rcs0:
>    - shard-dg2:          [FAIL][377] ([i915#7484]) -> [FAIL][378] ([i915#=
9100]) +1 other test fail
>   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
2/igt@perf@non-zero-reason@0-rcs0.html
>   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
>
>  * igt@perf_pmu@frequency:
>    - shard-dg2:          [FAIL][379] ([i915#6806]) -> [FAIL][380] ([i915#=
12549] / [i915#6806]) +1 other test fail
>   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
1/igt@perf_pmu@frequency.html
>   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-4/igt@perf_pmu@frequency.html
>    - shard-dg1:          [FAIL][381] ([i915#6806]) -> [FAIL][382] ([i915#=
12549] / [i915#6806]) +1 other test fail
>   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
13/igt@perf_pmu@frequency.html
>   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-17/igt@perf_pmu@frequency.html
>
>  * igt@perf_pmu@module-unload:
>    - shard-dg2:          [FAIL][383] ([i915#11823]) -> [FAIL][384] ([i915=
#11823] / [i915#12555])
>   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
7/igt@perf_pmu@module-unload.html
>   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-7/igt@perf_pmu@module-unload.html
>
>  * igt@syncobj_wait@invalid-wait-zero-handles:
>    - shard-mtlp:         [FAIL][385] ([i915#9781]) -> [FAIL][386] ([i915#=
12564] / [i915#9781])
>   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp=
-6/igt@syncobj_wait@invalid-wait-zero-handles.html
>   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-mtlp-3/igt@syncobj_wait@invalid-wait-zero-handles.html
>    - shard-glk:          ([FAIL][387], [FAIL][388]) ([i915#9781]) -> [FAI=
L][389] ([i915#12564] / [i915#9781])
>   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4=
/igt@syncobj_wait@invalid-wait-zero-handles.html
>   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk6=
/igt@syncobj_wait@invalid-wait-zero-handles.html
>   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-glk3/igt@syncobj_wait@invalid-wait-zero-handles.html
>    - shard-dg2:          [FAIL][390] ([i915#9781]) -> [FAIL][391] ([i915#=
12564] / [i915#9781])
>   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-=
4/igt@syncobj_wait@invalid-wait-zero-handles.html
>   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg2-4/igt@syncobj_wait@invalid-wait-zero-handles.html
>    - shard-rkl:          [FAIL][392] ([i915#9781]) -> [FAIL][393] ([i915#=
12564] / [i915#9781])
>   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-=
5/igt@syncobj_wait@invalid-wait-zero-handles.html
>   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-rkl-5/igt@syncobj_wait@invalid-wait-zero-handles.html
>    - shard-dg1:          [FAIL][394] ([i915#9781]) -> [FAIL][395] ([i915#=
12564] / [i915#9781])
>   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-=
16/igt@syncobj_wait@invalid-wait-zero-handles.html
>   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-dg1-17/igt@syncobj_wait@invalid-wait-zero-handles.html
>    - shard-snb:          [FAIL][396] ([i915#9781]) -> [FAIL][397] ([i915#=
12564] / [i915#9781])
>   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb5=
/igt@syncobj_wait@invalid-wait-zero-handles.html
>   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-snb6/igt@syncobj_wait@invalid-wait-zero-handles.html
>    - shard-tglu:         [FAIL][398] ([i915#9781]) -> [FAIL][399] ([i915#=
12564] / [i915#9781])
>   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu=
-10/igt@syncobj_wait@invalid-wait-zero-handles.html
>   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shar=
d-tglu-2/igt@syncobj_wait@invalid-wait-zero-handles.html
>
> =20
>  [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
030
>  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
307
>  [i915#10393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
393
>  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
433
>  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
434
>  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2
>  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
078
>  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
131
>  [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
441
>  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
453
>  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
520
>  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
521
>  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
616
>  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
681
>  [i915#11823]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
823
>  [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
859
>  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
920
>  [i915#11961]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
961
>  [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
965
>  [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
980
>  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
989
>  [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
031
>  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
133
>  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
177
>  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
216
>  [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
238
>  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
247
>  [i915#12296]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
296
>  [i915#12297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
297
>  [i915#12305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
305
>  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
339
>  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
392
>  [i915#12402]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
402
>  [i915#12403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
403
>  [i915#12520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
520
>  [i915#12526]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
526
>  [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
543
>  [i915#12549]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
549
>  [i915#12555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
555
>  [i915#12558]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
558
>  [i915#12564]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
564
>  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/125=
7
>  [i915#12577]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
577
>  [i915#12580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
580
>  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/182=
5
>  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/183=
9
>  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/184=
9
>  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/212=
2
>  [i915#2295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/229=
5
>  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/234=
6
>  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/243=
7
>  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/252=
7
>  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/258=
2
>  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/258=
7
>  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/265=
8
>  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/267=
2
>  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284=
2
>  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/285=
6
>  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/311=
6
>  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/328=
1
>  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/328=
2
>  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/329=
7
>  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/329=
9
>  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/335=
9
>  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/345=
8
>  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/353=
9
>  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/355=
5
>  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/359=
1
>  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
7
>  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
8
>  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/370=
8
>  [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/396=
6
>  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/407=
7
>  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/408=
3
>  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/408=
7
>  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/410=
3
>  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/421=
2
>  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/421=
3
>  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/423=
5
>  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/427=
0
>  [i915#433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433
>  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/439=
1
>  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/442=
3
>  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/453=
8
>  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/461=
3
>  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/481=
2
>  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/483=
9
>  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/485=
2
>  [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/488=
1
>  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/519=
0
>  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/528=
6
>  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/535=
4
>  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/546=
5
>  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/578=
4
>  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/595=
6
>  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/609=
5
>  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/611=
3
>  [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/622=
8
>  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/630=
1
>  [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/680=
6
>  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/695=
3
>  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/711=
8
>  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/716=
2
>  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/721=
3
>  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/729=
4
>  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/729=
7
>  [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/748=
4
>  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/782=
8
>  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/797=
5
>  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/798=
4
>  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/815=
2
>  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/821=
3
>  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/822=
8
>  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/839=
9
>  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/842=
8
>  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/856=
2
>  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/870=
8
>  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/870=
9
>  [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/881=
0
>  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/881=
2
>  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/881=
3
>  [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/882=
1
>  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/910=
0
>  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/919=
7
>  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/929=
5
>  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/932=
3
>  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/942=
3
>  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/942=
4
>  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/951=
9
>  [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/956=
1
>  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/968=
5
>  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/968=
8
>  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/973=
2
>  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/976=
6
>  [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/978=
1
>  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/980=
9
>  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/981=
2
>  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/982=
0
>  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/990=
6
>  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/993=
4
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_15579 -> Patchwork_140321v1
>
>  CI-20190529: 20190529
>  CI_DRM_15579: 2d11d2602dc35b03fd68309c96fedeea423beb42 @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_8082: c8379ec8b26f3c21bae5473706b23da78bd26ffa @ https://gitlab.free=
desktop.org/drm/igt-gpu-tools.git
>  Patchwork_140321v1: 2d11d2602dc35b03fd68309c96fedeea423beb42 @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fr=
eedesktop.org/piglit
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40321v1/index.html

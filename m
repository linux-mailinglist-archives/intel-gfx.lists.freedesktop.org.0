Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E83BCF4549
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 16:14:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D5910E434;
	Mon,  5 Jan 2026 15:14:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cVTEcDFh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4DF10E430;
 Mon,  5 Jan 2026 15:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767626067; x=1799162067;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=MsoOWsxlDBhlMf/A/R8J9qbtV73XE7RECEagLB/zVG8=;
 b=cVTEcDFhqiOu0rwKwuZcyxD8PX39ao1iSAbAqPxqgI8XS8usuHwvScwW
 7hbAe0L2dduVqq1WJHq81oYxWOawb8WrCFTdzVQbQY1M4MUoKZjKviGoe
 pCyNG7CeiEb98YBkv2GBfuYeLFrRZd23b5bTZKdsCkyJntDRlBNOvp94V
 xeg4O4lD9nemJPvqunTvUFEU9TsG3Mp10g2Be7XGV7YfMkyCpnRaW1ok6
 tKv8zTLiCsIQPGHp8QW5S16dGSeLyFvpKhpaPxNiQbG+mCbSM2V/C8Szf
 mR8+ZfmETgOFBCEFi22xqRM8B+Q/BC6ifRFoaz1wNZOrek91OuJFj5WGY g==;
X-CSE-ConnectionGUID: K3yRguBMSzW/WHwYyAww2A==
X-CSE-MsgGUID: lxK0PbKvQEq1Lcqy2Z67Ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="68897571"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="68897571"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 07:14:27 -0800
X-CSE-ConnectionGUID: +dqSx1ssRxGb/h5jzJrcDg==
X-CSE-MsgGUID: 9uJ3Y5gxQTCsRuY5yAhDdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="233100953"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 07:14:27 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 07:14:26 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 07:14:26 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.3) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 07:14:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hc9cbCmLKahAC2D9QMtCDf51yg9SYfKU6kqs2VEH72yiER9TLbyg+wSyRA1Cyq5lzXdKHr18Y+lij9xCPvMgc0rACZGPEADWKKkTVj4WaIBmouQbo7O5UYmEu3E3Pet5ZP5VnQRjDBnLbtJve9DirkRU6gscjNvxpXTuxpQ/nBNPoipnJKuc5vu7H3Ej5U7/gpDATrTafy13M6lViqyPuFV1yY7WOFeGjCs8p4pFp8wGtxHmRO+OLKzqAcEegbZ36QaMWLiIiIBa8vZUFe+WtZuOLAhdCT6j1JxIiCx+vbQ+fK/F1uFHtPkUL+JgOYZ5rOEIEzLE63fzZDqyF+POPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/74dQCKjMeM80RDB1+e6y59KNVmMWb7dCqyuAShEWf0=;
 b=qQWhNJoOJ65KhrDPqx2cPmPqaEC/o+4LKaXGkXrCToQIm1DH/LsP1vskWJbKJqtYeHr/r4ACIBMT7P+Hr0pgn12HhMvjivRS0CwQM6d7wqSyfPnKvgI1qQiPH6M2qxOQW50MY7hISfMKQ4yA8ukmLbr074MwBB/U9s7YxKx2VCj9xYtumyA8B1DKUQ75nyCfsJ84h3rjkGGOOPNFE5V4oUI4qAYBdoT7W34Gul1LDnvB5PgOQY+6E/6Tm7IawFQSc6nLeyh+ksHhDQag+twE7xk0/RtDWCCA6DB1t+lf7bsLYQP8quCPapnTv3sVLY1f8d7copLqwh7ftb3L1gYAhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB7490.namprd11.prod.outlook.com (2603:10b6:806:346::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 15:14:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 15:14:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DM3PPF208195D8D0C2024AF07117D5F35F6E3BDA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-4-suraj.kandpal@intel.com>
 <176711619593.18661.17406989812251209808@intel.com>
 <DM3PPF208195D8D0C2024AF07117D5F35F6E3BDA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Subject: RE: [PATCH 3/3] drm/i915/cx0: Clear response ready & error bit
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, Jani Nikula <jani.nikula@intel.com>
Date: Mon, 5 Jan 2026 12:14:19 -0300
Message-ID: <176762605914.9480.7739153319106853404@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0050.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB7490:EE_
X-MS-Office365-Filtering-Correlation-Id: a35f2518-ec87-4284-8754-08de4c6d1bf2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkxCVmFKZlIySjBrN1o2SWl1SVRobWtCTStnK01DeCs4ekZ6a2VjbnhyQ2hT?=
 =?utf-8?B?bTJ1TFRSQm40bmNFNnlVVUVkTzE2cHBrZldYWFFLWTBEMnhUR244TW51OWxh?=
 =?utf-8?B?M1Vkanl1WTRmUFdzNURZV08vM1pXNXZCcktzN055WTNqRWZ5clZudTlwZitk?=
 =?utf-8?B?eFBYQjNEOFJ6NGJmcnNaVlZnRDJHRUQ1QndFRnROQ3dtRFhDelEvYmVZcFJ5?=
 =?utf-8?B?SEFHMVFMUjJIcjVKWWc3eXYxVFBlc2ZwNTdnTVNORTVSL2U2OWVMWGNxTVJD?=
 =?utf-8?B?aktFWllqRFdadk1WekQ3elFEbG1xdnkrVGVEZHhhMWxET1VPUktUMjI1dUhE?=
 =?utf-8?B?MDlHSEdVZkpTTStmYWN3VjMya1cvRG5Gck1TSkxmYWhRUk91cm42UjhmMm5I?=
 =?utf-8?B?Mk51TkRCWE94S25uNVhEZTc1Y2d4N3BDckNjVTdHcmRlMUdtWXN4d2Q3STFy?=
 =?utf-8?B?eVRMWUtUcGpuc3c0RkNhRldYbDhiaWc4Yk1YWkJMWXlRYlpURUFXSmtURkhs?=
 =?utf-8?B?WUltL2V6ZExqdWNta091ZFFmTXQ2bkhRcjE5RXRBa1gyMVV4VWZLcVNTZVZ6?=
 =?utf-8?B?U0FDVDQ1Z1JXZ1hBYy83TGhEaE5OUTd1aHlxRTNvd0c4WG1mVzVEUE8yYy9R?=
 =?utf-8?B?Q2VBVmErbDZpY01nWVkrOVpOZ0UzbW96V0wwNU5iWmh5blcrekpKa25LOW03?=
 =?utf-8?B?cmd6UENDUEhZVWIzcnloQm8zUXpibU9Uc09FMDFzK3QySFVZSDFVV2UxbVpk?=
 =?utf-8?B?NUNKOXpxdWplMm5oV0s4NzhWMXBmQmhCU1RqSFNuN0VDVTlFQjYvakMwSGg0?=
 =?utf-8?B?R1U2b0RWVEtxWkpLMU02TmUxbWpBblN6RVJpK0xPQ0dkcGd1c0lYRE44WS8z?=
 =?utf-8?B?UXlZU3VoTXRJaEY5MTJxWVFERlQyeFNvSzlFMFV1Mk5JT2xRWHZKamo3dkpi?=
 =?utf-8?B?WDV3a2xGWWhndjg3K28zMmtpNnA4NHEzRER1U1lrS0hBNTByZTFlYnJtdUpM?=
 =?utf-8?B?Z3B0dUlWK3dWbVVNZXdNelJleVZyeFFsR1pqRTVGbFA1emRxaVRRcWlWRk9Z?=
 =?utf-8?B?VlhsbVBIWlJLbzluTERyaUVFMmZ2YUttZlhtVGd1Y2J1UU52dU1wdFdnSjVG?=
 =?utf-8?B?MmpnWVhhMEFPQU1WeEFNRzJBZnZCMWdjR2t4dXA1VUF2ZkpBZnVqZ3NjUDlB?=
 =?utf-8?B?QnhBdFJ3RVovd0pwN0s3RjVidFc4WGxnaVJ0b1djYy9aaXdBL21iUUlURG1h?=
 =?utf-8?B?cTh6TStzb3VramhKaGxWbkZGU3JQWmliZ054VGYyZy94MEJtcDJKdjl2U2Mv?=
 =?utf-8?B?TTJsRTh3WVEvL1NrN2NSS1lxWnVBREJYUEUzc1Y2TndYY1JIWjd1enlveVZR?=
 =?utf-8?B?ekFBT0NLZVY1K3RjdEpubjhlUy9EZnRFUHRzbEo0R2FkekZ3dTd4Sk93WWlB?=
 =?utf-8?B?TG5GTmppMmpJK1hXTkVKbHNSa2JRNjkwZlhvUmZDb3lLZmVJL0ZiRFFFNnhG?=
 =?utf-8?B?QngxK2NsdzlZbU5nSjRPSWtJYWh2VWlSY3hpcUYxV1plQ0FuUTZUd2VwMURG?=
 =?utf-8?B?STZBZFk1amUyY0lCYmRYNFc1dXpvbmphcUIzODR2ZGc2RTcySU9YUFNGdm5l?=
 =?utf-8?B?dnhsakM5VFVmTm9ydXczRDJIckNuNTA5VWZHU0RyZXRoZysvM20vRTAzNHNu?=
 =?utf-8?B?TnBUZ09jWXNiaVI1VzFnSldhNzZMR3hOMWFzNkhhT0VuVThEQXJWTWtnUHIz?=
 =?utf-8?B?WldFWDVsS01aUzdnN0kwQ3ZkUkkvWnRjLzJGTHhWZURNcWxhRy9DZTF6bVJZ?=
 =?utf-8?B?L0xBdUxYTFRPMHg4Z3VwOVdqR2k4WWc3ZkZLSW5ydVpKaWFGNHZicWQzWXZF?=
 =?utf-8?B?azVUeHJ0WndvUzZLdm85WnFUSU82VjdqNWIzaTRBWW45cjhOc29obGVDUExa?=
 =?utf-8?Q?6So4yrn6rwFcvEO2MBFD5DjRa2Ln82mI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWttRE5PdnNYV3lEdFZCNXlzMXFsZ3p6RmtzNlFqcDh4NFY1R1lkaHdpSGZE?=
 =?utf-8?B?M2t4cUpoUU9OSTJTQjczSTQ2RFIzQzhKamVrWlByanc0eDErRTBhNHhGVllv?=
 =?utf-8?B?YytHZG9yeWdhR09FcTJTRG9UYXkzd0pHQ1I4eWlKUnJWaXFKWThDREpPbngw?=
 =?utf-8?B?dERCYXp6Z2tyQU51REhtOFJ6T0g1Q1MwcDlwdnROcE4rWnY5TWRyUm1NUjRI?=
 =?utf-8?B?TXV4S0V5Y0lGTWVwVlRUNmRDRWRiNTF5NDZqZXZMOU1kQVl2dnE3b0pnRC96?=
 =?utf-8?B?NVRmTUtKQ2J3Q05BYmpCM1dqNTFXZzcxVHBsRE1rWGNja1FQc0RHVy9sRlFZ?=
 =?utf-8?B?K3VXRkU4NzllMkl1c3hWbWk5Q1FidE5IekpaODZ0THk1c0pEd0tuTzFZYUV0?=
 =?utf-8?B?RU9qcjRNWnNBL1dnTHpNYWNWZEpOOWk1VEs0TWRVWWR1WndwRjg2L1EyMU5I?=
 =?utf-8?B?WVFITk1CQUE4OXBOdXN4YXF5RWw1d3BPa3gyU0lmandTNnBUVUdVNExRMm45?=
 =?utf-8?B?ZFp2aDJYQ0tYYnVwVzlHbFZFM0JhaEpVcXFJMWdCSE50ZXpQK3RmVlJFU3d0?=
 =?utf-8?B?VjdCblVRc0tBZmJYM1RhOGVmNlZLcksvaG9hS0tDQXlKTDk1YmtiRElPOUpv?=
 =?utf-8?B?NVJ0WXF0Q2tDVkdKcDgvcEc2dUN0eHhFenBuZzJLV3dNdS84QndzdFlqWWNS?=
 =?utf-8?B?ZlFhTytyajloakJhN0s3NndDYnUwQlpMOHA1Vy90QW1vVngyTkRDYmxqa3pO?=
 =?utf-8?B?OW1xNUtKSVNwYk5IWWY0YnRPQzFpajljbnRWbGRiVzhDYXdQbGRKNmtoWW1B?=
 =?utf-8?B?ZjJrekFHaUpaTVY3dHlBck9aQmdlZVZUNnhkTmNpSlZMWk02UnpYOFVzN1ps?=
 =?utf-8?B?YXdYY3NnOG1ubzBDOGUwVStHQ3NPTmxwbGN6YzB5REZELzA1MjJiNnYyTjVK?=
 =?utf-8?B?YXNyTDlrU2gwNEJVS2hBT0ZCWmJQeTNLOXJ2ZkwxcjR6c1pmeFpuQVJpY3kx?=
 =?utf-8?B?N3RUTFhUdFNaNFJhSXVsNnUxQzEyWFk4Q0xON2NJN0tiSnMyMmt3MXhCV3hv?=
 =?utf-8?B?QVJSb1hjVmJ5eFUzK3docFBtZUM4emxtZXhPbXB3YXdXZlNFTEVzUllrTnE0?=
 =?utf-8?B?SHBSaEs1TFpTdEFpU1ZsVndGempFNkpSOWUxWllDd2t2V1VxRHlseFh1K0l0?=
 =?utf-8?B?Q1VEV044NkhaMGdnTHVqY2lsOXVSSnM2cHI4aHRocGFQU3pNVmF2SlR1K0dW?=
 =?utf-8?B?TFIwaXhOMlBmRWt3NTRtZUNpQ0p3ZzlReExoQ0J3YWwyNXcwNGtDNHJIaHdW?=
 =?utf-8?B?bVkyUXhKbGFNY3FBQmhQY2phQ1pqTjdsSlp5b1phaEdEOWFNOXBsKzFkdith?=
 =?utf-8?B?Y0h0Vk1wWjR3OTE4Q0FXcUlQRWNvbVZoOFdhdzZsc1lxYzY5ZGtZKytlR0c0?=
 =?utf-8?B?NEoxQUVmS1FydVdZdjk3ekNIZTUwR1lwVTl3V0lLemp2clcvOFpQVThkYXgr?=
 =?utf-8?B?OXRGazA3UzRxWHdHdG9BNWlVMTVpcTd0Y21zMU5YMkdLRmhuM0pIRjg5ZHVi?=
 =?utf-8?B?ZkhOMXk5Q0VQOE5welBjZVNpeVNoZTFIREdSNVAyQ2M2eXpGZDNTWXZUYjFP?=
 =?utf-8?B?d0EzZU1xQXpoekFXS1lhUTdmY2x6NzR0dkJBaTBZazZCci9ZdVBXNmcyMEVv?=
 =?utf-8?B?Tk15N2tRbm1NanF1U1c2VFkvbVprNmNjUGtKK1ZSTnV5SnVvT2dxNCtBOUhR?=
 =?utf-8?B?L09yVTd6N0ZRUXUzMzQrMlJKZ0lUWkJ6aVI3eDQrdVowVXhGeGxIeWZvSEtS?=
 =?utf-8?B?dCswZzgvb3lQQm5oVHlOcjFrdlBGaXh1Qk1ZalozWDNaZzUvdW84Qnc2OXZD?=
 =?utf-8?B?NUZjblVORXh0c3IraVhPQ3N0K2JnVUNzRzF0YmZZMHlqTzhkalN3a2lYamU1?=
 =?utf-8?B?dVJIZ0FKNEdKd0piTExBZVJ1K01KWndtbU9CRnZ1VitvSFZ4ZVo3QXg5YlhT?=
 =?utf-8?B?bXE3VkR0amJwYnVIVnozbjdYL1NZNjU5V2R4YVlTYnk2UmZ1Q20reWh2V1BH?=
 =?utf-8?B?Z3dxMTBMR2g4ZzNDZUdvb0pHeFlZTXY5c2JTSkJrT1EycXBlY3lvRkZkamN0?=
 =?utf-8?B?QWoxdGhPTXBNMHQ2WmU2VFFhbzFXSjFmamhyanNhQXlIdzVhT1Q1TmIxY0NK?=
 =?utf-8?B?Q3Q4YW1SaEhSc3J1WlpXczlZYU1HWVlIRHBuZndpZzVHSHQvSXFsL1JuK3dn?=
 =?utf-8?B?STR0ZFllRWtYMzB2M0thUWF3SkZ2M0IzUDN6S0VOemRJZFN5bzNEQVJHVldP?=
 =?utf-8?B?L0lTSFhuVDdRdmREYUtqY1lrZ0E4d3dXL2pNQlFBK293VXloTG1TQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a35f2518-ec87-4284-8754-08de4c6d1bf2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 15:14:23.8486 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VqnRnu+mYA296sOisCwbCULfde+AIqvT7GKD516gHu2rE/ud1g+eDXqJr3G9Y29l07ZYlSSqEnmYraXO/cs4uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7490
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

Quoting Kandpal, Suraj (2025-12-31 01:59:29-03:00)
>> Subject: Re: [PATCH 3/3] drm/i915/cx0: Clear response ready & error bit
>>=20
>> Quoting Suraj Kandpal (2025-12-30 05:31:42-03:00)
>> >Clear the response ready and error bit of PORT_P2M_MESSAGE_BUS_STATUS
>> >before writing the transaction pending bit of PORT_M2P_MSGBUS_CTL as
>> >that is a hard requirement. If not done we find that the PHY hangs
>> >since it ends up in a weird state if left idle for more than 1 hour.
>>=20
>> Since the series title refers to suspend/resume, is there an easy way of
>> reproducing this via some power state transition?
>
>Sadly no we did try to no avail went as low as DC9 too. Tried sleep then w=
ake,
>Tried hibernating too.

I see.  I was wondering if DMC could be at play here.

So the only known way of reproducing this is to leave it idle for more
than 1 hour?  Do you know if that happens if we load the driver with
DC5/6 disabled (i.e. enable_dc=3D0)?

>
>>=20
>> I'm wondering if we are looking at a driver issue here or if this is rea=
lly
>> something else.  I see that we usually call intel_cx0_bus_reset() in err=
or paths,
>> which contains a call to intel_clear_response_ready_flag(), but it could=
 end up
>> being not called if the reset times out.
>
>Yes the reset times out and this is because PHY is in hanged state here
>
>>=20
>> Do we see error messages from the driver when the PHY hangs?
>
>Yes we do see a PHY hang when we are at the stage of swing programming set=
ting
>And the error happens when we try to read the msg access bit itself which =
is because the PHY ends up in
>Weird state where it has a write ack but no response ready bit getting set=
.
>But with my observation I can certainly say this is PHY issue.
>I also double confirmed this behavior with windows folks and their code wh=
ere they said they saw an issue in the same lines.
>Also the bspec basically adds this as a disclaimer that response ready and=
 error bit should be cleared no matter what before writing
>The transaction pending bit.

Agreed on the need to clear the response ready bit before starting
another transaction, so the patch looks fine.  I believe Jani's
request to rename the function wouldn't necessarily change the semantics
of this patch, so

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

in case the rename gets done as a follow-up.

>
>Regards,
>Suraj Kandpal
>
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >
>> >Bspec: 65101
>> >Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> >---
>> > drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 ++++
>> > 1 file changed, 4 insertions(+)
>> >
>> >diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >index 5edd293b533b..5ebc3404eee2 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >@@ -222,6 +222,8 @@ static int __intel_cx0_read_once(struct intel_encod=
er
>> *encoder,
>> >                 return -ETIMEDOUT;
>> >         }
>> >
>> >+        intel_clear_response_ready_flag(encoder, lane);
>> >+
>> >         intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, po=
rt,
>> lane),
>> >                        XELPDP_PORT_M2P_TRANSACTION_PENDING |
>> >                        XELPDP_PORT_M2P_COMMAND_READ | @@ -293,6 +295,8
>> >@@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
>> >                 return -ETIMEDOUT;
>> >         }
>> >
>> >+        intel_clear_response_ready_flag(encoder, lane);
>> >+
>> >         intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, po=
rt,
>> lane),
>> >                        XELPDP_PORT_M2P_TRANSACTION_PENDING |
>> >                        (committed ?
>> XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
>> >--
>> >2.34.1
>> >

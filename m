Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51603A21EA6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 15:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4DA10E7FC;
	Wed, 29 Jan 2025 14:10:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I2ja10Pl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 940D710E7FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2025 14:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738159811; x=1769695811;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=FpgEjkqJVaSGd1UX6V2D006PKiqr0g1cGf0HogGAV7g=;
 b=I2ja10PlFGrs2CzVjCrC7vuayy5h1z2xMC8AFDGITek4iJqIaUAGdE9w
 I0euXCJVlBsqTW4EYK20F3d6OYkHytQi0ZkRcygF5LKBnAF3gr5U3Wi9L
 NARtNwXCkcubYd/778kA6qjVlS4vgIZymotHZPww0mKQ5tB00V1eRtb2j
 l3XMankeelsfQUCAUubIA6f1GNnFYq8JS+jF+o6k4xrnBtYa/1rE8O/nE
 ezT27cGFRcZEa4MhQ/0886/q57uTRt8EC24pT4hnV+/vLpS63v/Z70FFm
 hvb2WpOKZRqwGc2cVLAV3t19C+/vVRnPPCOJ1Hj3qDwFZU/AY5upe0OfZ A==;
X-CSE-ConnectionGUID: ljR78hgGSGuB+D30zSksnw==
X-CSE-MsgGUID: fhraDKa9TRW+YsFd5UM3Ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50087726"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50087726"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:10:10 -0800
X-CSE-ConnectionGUID: Ylqdc+UkRACy9iDTN3qTQA==
X-CSE-MsgGUID: Dc/xKCpoT1u9X77zWBeDrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="108830600"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2025 06:10:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 29 Jan 2025 06:10:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 29 Jan 2025 06:10:04 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 29 Jan 2025 06:10:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=flI0dkONxthbbhxTpmVPNHU57uy65DeT7sLYANbaPuPH5Sgd4cl2UyxAnTVvm7Z3Pm4rM2deqK55dX1A5WHtgRxgMyU+FN8T3sHxOJWoOV0V6orLLmLeJ6nltPPEz1m1teW8N0zM6egsTdbk8d45AURmPPa9UpKiS914Am6c2FAaNe+3U+BMH/EAgdIM/C/jpSROcfEXl2NG5OBEVw961tBN14aPnHlTYk/AcQLOtm2ZBPAeh4QgdIdygzdrugUdjHZTWo+Gq52qwOG2TOcuL3YXmlVoiQeYxDmzpu6KnOAEImBTlQc8oXfd2qZtQV5WA45MvUnCfgPwEmGfqBL4nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J8eHtlIXSH8prd/lE3JitiLYUBzukKnXWZNKJnhsXR8=;
 b=S1NBcaUUULlyN7cmDJsbTHig5K0zAVwRghe+FMT27ChrmUzPEqGGCOyR5Npf49DOs+Q+zvAKbiuReaSQQpQWqMN0T+CCF7hRJs0wDoxNa3cB1quC1Tqf8HtPRPGueGh5WvO4JaEj4q5rIH4RcKxeR8+f+BKLPZlTjegp+HCahMZiCi1axG2gTBqIxwaq/OtjvO+U+a6U8I2QT7MXHRQXKWeYfFnub1Xg13KHnieb8EaAvKgU57JqS4cTxBMqYpFN4oR0f0VKiOOo73vzigAKZNFOND8M1aYQj2M0RaA7KQsihFCtckRY7twFvuSYsYSsGWZzmazVg6YiSt9I8M/C1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by DS0PR11MB7359.namprd11.prod.outlook.com (2603:10b6:8:134::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Wed, 29 Jan
 2025 14:09:21 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8377.021; Wed, 29 Jan 2025
 14:09:21 +0000
Date: Wed, 29 Jan 2025 09:09:17 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: MARDI Youness <youness.mardi@cs-soprasteria.com>, Michal Wajdeczko
 <michal.wajdeczko@intel.com>, "Nikkanen, Kimmo" <kimmo.nikkanen@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 CHEVRIE Thomas <thomas.chevrie@cs-soprasteria.com>
Subject: Re: TLB Invalidation time out on i915 SR-IOV passthrough
Message-ID: <Z5o2jcJB0FaUaVdZ@intel.com>
References: <DB9PR07MB1000353F67A27FEC494902005DAEF2@DB9PR07MB10003.eurprd07.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DB9PR07MB1000353F67A27FEC494902005DAEF2@DB9PR07MB10003.eurprd07.prod.outlook.com>
X-ClientProxiedBy: MW4PR04CA0277.namprd04.prod.outlook.com
 (2603:10b6:303:89::12) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|DS0PR11MB7359:EE_
X-MS-Office365-Filtering-Correlation-Id: 540327ff-cef0-444b-b0e9-08dd406e869c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?REhJYjFNdkhVWFNnSCtlUGVsSnlKOHhieEpVSllUM2tGblY0VFRxWEs2RGFo?=
 =?utf-8?B?NnJKQXc3c094eStOTHpqbysvMmhIeFZCM0owa1drdDJJc0xuYkpuTG5QZWNt?=
 =?utf-8?B?TnN4UksvVENHVC9zMTBKUUFXYWRBWXBoenlvSE1pR3NvcGpkbzdNM250YlJl?=
 =?utf-8?B?SDdiaDZFTkI3RzYycjRXSzA0V25oQyttTFdEdDQ4NnJtSVkrYlZtZFpwSVVW?=
 =?utf-8?B?d1dMUGIxVWUxc1RuUGZMQ2FJRVpta0RNTEpnam15bnFReUZmakF1eG10d1Fo?=
 =?utf-8?B?NEJSaHFEVDFmdnJpLy9vYlVOL0FOak5FNUJGS1d1NFFDcGhpUm8zTkd1VG9p?=
 =?utf-8?B?T2VvdGM5ME81WXVaVGZMYk8vMHJHVU41cy85eTRvSkxjZUJuL2ZXWEVacVph?=
 =?utf-8?B?VXVsYnBNQk54bmtlMFFmR1RoMVBkUVZoeHFkSUJsU0lsdmdQSHRhMjJDS2sv?=
 =?utf-8?B?TlFSbDMzZ3BLQzhpOFhQc09Jdm10eHNrdVlnTSsvRmlHWWkwVTZ0YmZBamoz?=
 =?utf-8?B?T1EvY01yZ2tvQ1NNNkgrTXhCdFBIRzdEYTV6MTBpaVJDRWFRZHpYcGxOcHZG?=
 =?utf-8?B?NUNhNlNiK3lhcWhrV3BSVzBRKyswL0JIN2g2ZllrNTFYY0NNWERJeklSN0Nk?=
 =?utf-8?B?ek1FMWdaRWdhQ2xHNHNSL1l5YVNRZ2ZISVZGSTFOMjRYZVU2b3U1MHlwWEhJ?=
 =?utf-8?B?dXhpMDFwOG91bTI5LzVVM3NJclVQdGgxYnVxcFZLelpmOHZCUU9Hc1U2TC9r?=
 =?utf-8?B?ZXlPVS9RbEFac1A1VlMvRTBpbzNCRTIyOUc5SGMzMmlOQ1ZXbm52b3Q0b2xJ?=
 =?utf-8?B?emUvMXIxTUpNdEZxZjF4cm1vVlNpdkhBbEhkNCtoVGR4Z0hkdDVJMWVQVnky?=
 =?utf-8?B?TlE5RHJzb3dNay9QUEp5alJrSXhqUHBlcUNZd1orUUpsMmZyUjVXaERUQTAx?=
 =?utf-8?B?V0FYY3RVdkRxZUZ2ZXRkYVg2d28yNEN1NkZuTHVxTjgvN08rOWxCamRLQ0tG?=
 =?utf-8?B?cm9kai9HVjJyTUxKbWVmWUk4UWVqZWJLeFRUVFdyb1dwVG55aGhXbmxLUVQ0?=
 =?utf-8?B?NEgwNndKTkhuTkxWMkd5cU1CWmZFZFREeEtwRVhhWUcrMCtWSFZlZW1DMUhw?=
 =?utf-8?B?RmE4RVBncmhsd1ZJSGFLNWxVcEZ0TEFrS1NDM3h1SERyZUJqL1ZmYmlkbVl3?=
 =?utf-8?B?c2JPaERCZ1NsWm85a0dPa09SS2k4RHZ1MWR3UTZWM3AvR3RhRktRcTcxQzd6?=
 =?utf-8?B?ZWRCallSNkUzeFB3eEFETkFRYm9POG1ZbUlQdk10OWlzK0k0dStxclR2Q2NN?=
 =?utf-8?B?L0VvUFV6OC9qSUFqb015eFAzME4xMmpoQU1wRzl4cnc3WFBiMk02WXMrcVRs?=
 =?utf-8?B?RTNjRTAza3ltSUFTT1lsdXV5TVJmUlRSYlVlcFF6WG5vTHVBT0kxNXBIYkl3?=
 =?utf-8?B?Vk1MTlc1ZWJxL0EvQktVWXJUOFZwNmNzaC8yc3BDN2oraWJkYnFoZ0NHYVdu?=
 =?utf-8?B?L3RYS3hES0o3RXFWSzdDcXVEd3FvUS9kdThwWGF3MmR1ZmNnamJPN3pMWXNy?=
 =?utf-8?B?c000ZUJiSWJCbXFPQUVGbDNXMnhXcW11eFJ6ek9WbmYwaEJ0Q0JWOGJaOXdH?=
 =?utf-8?B?VlpWT1V0R0JRd0hRbkY5dlI2Umkzc0hod1l0WEc4aFdRNHIvTUpYWXZEby9R?=
 =?utf-8?B?U2tJTHQ1VlBJRGEwOTd0bFlBajRKS0orQ0dBY0NFa2loOUV4dVd4WWVWUlBr?=
 =?utf-8?B?TUhTV1NkeHcySitCSWtwajg3elozYmNSNXhYSmZITi85dm5BYTZVNDA0Qi95?=
 =?utf-8?B?TFA2SG9EekZXdVdZTWpvUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVR6SitpY3hseWNHU3RRUGMreDI1RGNNZGhsSGFndFhmRCsrZUxzTTFBVFdt?=
 =?utf-8?B?WDRZZVhMQnM3TTJ4eDBZaFZvT0xIbjFLWVhSYnd6L1g2M3ltNzNZc0VXeUtw?=
 =?utf-8?B?UjI4MHcwK3drNTUwdTlaSWpRZHZpY3pSbXJCWGVOTW5taUJlSFFkVjl6SGhQ?=
 =?utf-8?B?aVJWY3JCdXFFRVNFYWFITHY5enRzUE8xeXdaKzV3ZUlSRktJYmcvSUdIWXhO?=
 =?utf-8?B?VUZPd0ZEb0tYSHJMcWZJeDhXM3JPMTRnZ1F5NHZwejQwaHlQQ1dOc0FrbVc1?=
 =?utf-8?B?WHVJeWp1dGNEQlJJYUwzOGkxbitqNGZ3QTh3ZDJybEMxK25FRGpvRTY2L25W?=
 =?utf-8?B?T3NwWVg1SEpzanM1RXVRbkQ1a2ZIU25SNy9oRzhVb0w0RkVoQnBuaE92NTM0?=
 =?utf-8?B?L3Y3anRCZTJmTVJBR25iY1B2NXF0U2plaGMzMXFxMjhOZ01idWtFY0xDS1J4?=
 =?utf-8?B?ZDh5aUUwUXErWGo4MXN3S2FjcWVFL2VFU3BNd0hLN0gvRit2bVZKa1AvT1RV?=
 =?utf-8?B?YU15WnRTUnBtb0lFY1I0MlFFZ3V3eGZ1VDE1MGpRSGtVMExqYlVSTXd3QUty?=
 =?utf-8?B?bXEwVlBEalgyclRja1F5SUg1dkVaU2JPdVBnd01xeVFmMjNvZnpCNlZadkYw?=
 =?utf-8?B?NW1BNHdPWk1NbC9kYXVnUzErcDY3NW5QdmJwRndUNmJYek1RQjRoNGdrWDdW?=
 =?utf-8?B?U0RiNDJTSi9IalFSaGlnQXpGcUNDdzY0bW5kdmlGR1JqVXA0Yk1uNjVLT2xp?=
 =?utf-8?B?YVR1MnhueXd6c2o3NTN0TkNPSnBIMFZOMDBCNUhBQlVHalVuU0xORkdabTZU?=
 =?utf-8?B?cVVhMU52Szl6MnhpTWJOT2tpbjZDclBsRHZWT1BPcmhFSnU1RHFjVlZrNy9I?=
 =?utf-8?B?VW9HUlFxR2RKTGllR3Yvek5Td0dyaWozVDJ4bmZ6VzUrQ3o3S29lZkVOd1U0?=
 =?utf-8?B?MVpLZ3NkckxZeGxpMEdBQjBSSjUwKzJ1RVJaWGk1V2RPWmd0UWtCY3N5QkEx?=
 =?utf-8?B?VHE0QUZxTVFpNmlFdDRackJZNjh0YUJEZFdUaWRPcGlRV2dlcDJEdG1mUTVP?=
 =?utf-8?B?MUxoVkpXNmRySFNGR2tXc3dKUWJNU2ZkRkZXMWQ3eWpnTU1wZ2tLZEM5MCtR?=
 =?utf-8?B?R29pUzg4aG5qVGVtaXdXSmhZWWRlVEtsdEhIMklwMzZzM1B0U2pjMDdXT3VQ?=
 =?utf-8?B?cnlWMHcrSXdwSUN4Z1VScDJZZUUzbFhtYWFHUkpZSHVhYUs5TXdZSW0xMHVF?=
 =?utf-8?B?NFYxblFITnYwN0lKUnRzcysvS3MxWGoxZjZiM2MvbERQSkxHRkk3Zi9qc1JS?=
 =?utf-8?B?Z2pPREs4bW1OTldzZWtPSTRKREFGQmVqdmUxRUZtekdtMXljYzd3ZWpWV0tC?=
 =?utf-8?B?cUhNUWdTL0s0anNpTk5aVldPelpJWWFhbGdYSVR2S1hQbjc4UTdzVTNGQ3JE?=
 =?utf-8?B?RVpMaG1hZnl6NWNDclBycXNkMzh0ZnF4eU16U2VvRm5SaGRNUjRWZTJaczkz?=
 =?utf-8?B?Zzk0Zlp5ZWlPdnRwSVhUWjR1VVRrR1hVY1pJOVVCNDdZOUt4cG16dHBBeXZq?=
 =?utf-8?B?WElMWEVOb2htSlV5ZE1EUnRWTnk4SUlmNzVmZHVTVjl2aXp1VUM3dk1BTjJy?=
 =?utf-8?B?aFBuaEdsQnYzanY3QUlRK3UyR3I0UytFdU9zOTR2K3RhczU4RDV2MDkwdDRn?=
 =?utf-8?B?a2lIR29FR0N1N3lmUUlzVEJmZ3NkSklQTEs2OWtETlExZHM5YTI3WWVDZUZL?=
 =?utf-8?B?bnRBdE92ekovT3JPSy8vQmEvT08xcWVrK09tUXAxOVVtQ2w1eW8vQll4Y2VR?=
 =?utf-8?B?aGJqMHo3NTQ3WWlZYlJ6WFBHdjlSalNjOWNaNlh5bjNlUUhTSi91aXRPSkV3?=
 =?utf-8?B?ZllwNUZVL3dLbjNtcnhjcFhFbTF1QVZQRVMyalU1KzZ3b2Q4SVAxSVpCWUtF?=
 =?utf-8?B?bEJPVG5SdTNZbnZUMmxYL3YyM3VocmtMQU1aU0lsNEYwV3B4b2xuODRIa2NQ?=
 =?utf-8?B?TmRtYkl3Slk0K0xMeHJWbmpjYnFTdHZjNTlNTUNTRWJTTlY2eFRlUldOMXNP?=
 =?utf-8?B?dDNtSVFBaDB0dUlNZXJvMTg5RTdnV25SSkxUaGg1UGxnaFcvZ3A4YVkyalVZ?=
 =?utf-8?B?TWlxTllPOWk4Y3V0VmhIakRIbzcxNElaUEdDK3BxVE5HWG5qRGkyMlBqMXJh?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 540327ff-cef0-444b-b0e9-08dd406e869c
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2025 14:09:20.8507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d8xsIvyhGa5jRDa3AKwSizHaE03mOFEwDRzgP0nHzh7LLD5xxfrPfr8UxLqrw9FabgZzq3w6tmnLNiOC2+l+ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7359
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

On Tue, Jan 28, 2025 at 08:54:10AM +0000, MARDI Youness wrote:
>    Hello,                                                                       
>                                                                                 
>                                                                                 
>                                                                                 
>    Could you help us on this issue:                                             
>    [1]https://github.com/intel/linux-intel-lts/issues/54                        
>                                                                                 
>                                                                                 
>                                                                                 
>    Host environment                                                             
>                                                                                 
>    Operating system: Gentoo Base System release 2.14                            
>    OS/kernel version:                                                           
>    [2]https://github.com/intel/linux-intel-lts/tree/lts-v6.6.34-linux-240626T131354Z

https://github.com/intel/linux-intel-lts/blob/lts-v6.6.34-linux-240626T131354Z/drivers/gpu/drm/i915/README.sriov

Michal, could you please help here?

Thanks,
Rodrigo.

>    Architecture: x86_64                                                         
>    QEMU flavor: qemu-system-x86_64                                              
>    QEMU version: latest qemu (master branch)                                    
>    CPU: 12th Gen Intel(R) Core(TM) i7-1270P                                     
>    igpu: Alder Lake-P                                                           
>    firmware:                                                                    
>    [3]https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/linux-firmware-20241110.tar.gz
>                                                                                 
>                                                                                 
>                                                                                 
>    Emulated/Virtualized environment                                             
>                                                                                 
>    Operating system: Windows 10 21H1                                            
>                                                                                 
>                                                                                 
>                                                                                 
>                                                                                 
>                                                                                 
>    Description of problem                                                       
>                                                                                 
>    After setting up SR-IOV (kernel compilation, kernel cmdline, vfio-pci        
>    driver attribution to the new pci..)                                         
>    I've got my two new pci.                                                     
>                                                                                 
>                                                                                 
>                                                                                 
>                                                                                 
>                                                                                 
>    00:02.0 VGA compatible controller: Intel Corporation Alder Lake-P            
>    Integrated Graphics Controller (rev 0c)                                      
>                                                                                 
>    DeviceName: Onboard IGD                                                      
>                                                                                 
>                                                                                 
>                                                                                 
>    Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Graphics          
>    Controller                                                                   
>                                                                                 
>    Kernel driver in use: i915                                                   
>                                                                                 
>                                                                                 
>                                                                                 
>    00:02.1 VGA compatible controller: Intel Corporation Alder Lake-P            
>    Integrated Graphics Controller (rev 0c)                                      
>                                                                                 
>    Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Graphics          
>    Controller                                                                   
>                                                                                 
>    Kernel driver in use: vfio-pci                                               
>                                                                                 
>                                                                                 
>                                                                                 
>    00:02.2 VGA compatible controller: Intel Corporation Alder Lake-P            
>    Integrated Graphics Controller (rev 0c)                                      
>                                                                                 
>    Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Graphics          
>    Controller                                                                   
>                                                                                 
>    Kernel driver in use: vfio-pci                                               
>                                                                                 
>                                                                                 
>                                                                                 
>    I gave one of those pci to my VM with this qemu cmdline:                     
>                                                                                 
>                                                                                 
>                                                                                 
>    -cpu                                                                         
>    host,migratable=on,hv-time,hv-relaxed,hv-vapic,hv-spinlocks=0x1fff,hv-passthrough,hv-vendor-id=IrisXE
>                                                                                 
>    ...                                                                          
>                                                                                 
>    -device                                                                      
>    vfio-pci-nohotplug,host=0000:00:02.1,id=hostdev0,bus=pci.4,addr=0x0          
>                                                                                 
>                                                                                 
>                                                                                 
>    Sometimes it working properly when I start the qemu cmdline but most of      
>    the time I've got those kernel errors and a GPU hang:                        
>                                                                                 
>                                                                                 
>                                                                                 
>        kernel [ 2252.208134] i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB       
>    invalidation response timed out for seqno 9679                               
>                                                                                 
>        kernel [ 2252.208134] i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB       
>    invalidation response timed out for seqno 9679                               
>                                                                                 
>        kernel i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB invalidation         
>    response timed out for seqno 9679                                            
>                                                                                 
>        kernel i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB invalidation         
>    response timed out for seqno 9679                                            
>                                                                                 
>        ....                                                                     
>                                                                                 
>        kernel Fence expiration time out                                         
>    i915-0000:00:02.0:renderThread22381:6e0!                                     
>                                                                                 
>        kernel i915 0000:00:02.0: [drm] GT0: GuC firmware i915/adlp_guc_70.bin   
>    version 70.13.1                                                              
>                                                                                 
>        kernel i915 0000:00:02.0: [drm] GT0: HuC firmware i915/tgl_huc.bin       
>    version 7.9.3                                                                
>                                                                                 
>        kernel i915 0000:00:02.0: [drm] GT0: HuC: authenticated for all          
>    workloads                                                                    
>                                                                                 
>        kernel i915 0000:00:02.0: [drm] GT0: GUC: submission enabled             
>                                                                                 
>        kernel i915 0000:00:02.0: [drm] GT0: GUC: SLPC enabled                   
>                                                                                 
>        kernel [ 2730.991019] i915 0000:00:02.0: [drm] GPU HANG: ecode           
>    12:1:85dfbfff, in renderThread [22381]                                       
>                                                                                 
>        kernel [ 2730.991084] i915 0000:00:02.0: [drm] renderThread22381         
>    context reset due to GPU hang                                                
>                                                                                 
>                                                                                 
>                                                                                 
>                                                                                 
>                                                                                 
>    It mostly appears when Qemu is starting..                                    
>    Any help would be appreciated, thanks a lot                                  
>                                                                                 
>                                                                                 
>                                                                                 
>    Best Regards,                                                                
>                                                                                 
>                                                                                 
>                                                                                 
>    Youness MARDI                                                                
>                                                                                 
>                                                                                 
>                                                                                 
>    C2 – Usage restreint                                                         
> 
> References
> 
>    Visible links
>    1. https://github.com/intel/linux-intel-lts/issues/54
>    2. https://github.com/intel/linux-intel-lts/tree/lts-v6.6.34-linux-240626T131354Z
>    3. https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/linux-firmware-20241110.tar.gz

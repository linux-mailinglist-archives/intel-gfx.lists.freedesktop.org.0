Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97508BFFE92
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 10:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99BBC10E8D7;
	Thu, 23 Oct 2025 08:27:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NEvByz66";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5752610E8D5;
 Thu, 23 Oct 2025 08:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761208047; x=1792744047;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TBdruam6XntH6HAnxCs9LRIF6SYuF9io+MGHiYU4G8Y=;
 b=NEvByz662e62Or808FVVTWXBwpEwv22wUWAl8XGAeaEHtb5H8eJZ6ZEY
 GwBrcAs5b1X0eLjba6ecqUaWQXFAl8LCtdmuPECIvppeDrqnaD3llwL5x
 ODZ+eG5jCwd3SondLW6u7Ynyc2ZBPbrGcvSVRkZnFMpuuS55djK7x3FTb
 tNMTHAwsxH5BIOktdA9YuL3aKH2XlXpjEn6TC6qABHDk7dhi6G0ovy3GM
 AnBTHZuznuTb2IRaTiqUxF13NmByNZwmtbxmEWACkpH75rD4AE3sMp02u
 tKlh1TWjNsGtvqltVSoWni3Q8lYz/BFIFmmAu5qY2vxmwni02YWBDxGD8 g==;
X-CSE-ConnectionGUID: EiDz3XtGRs+FCFYpu9ITvQ==
X-CSE-MsgGUID: aZbfqI5dTuuyL9p2UND4Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67207595"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67207595"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:27:27 -0700
X-CSE-ConnectionGUID: EbrVI6jWRy+zTTf44ShxqQ==
X-CSE-MsgGUID: iPSlKIdbTASRt7IqN/VVyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="214751627"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:27:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:27:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 01:27:26 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.18)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:27:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZG6PLRyBjRMARhimcI4gwgdc655JYQQG+sFNQtBKqPnO+kwYC1QQy8jjK9feZwa8a0jopV7wVrMy9N7wyLFQtDXJ3NlRtMZd/mTGOa+Uv8EnRtqo2U91DM1qzS/FsWYfvZ52w8Pc/SOzA5xYstUbXk+LvcoCTfoC+/GQ/kF0KBqXUMxl+9HrHLtEQ87T2xakHlvououdKtT68akfi4R5bBMETVeREkakd9RLHQWHkOCojnFhCK/lArNjzMMVF6qKsFAUSgFf9gDb31kfpSs46Bi5ble2X4XPYkppE9UGxUABXmNor2CunBL64eYjMLd4pFUI00fb4PFEudC/uj5rSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pa/d7hbeRNOmbkYKUWoCwrxx38gPPJrQKTYLkxoy93I=;
 b=V44VRoXRtTXSE3H3WTNwb4jJLbP9W4g/VgVlODG5Zkm4eYtxh70MuvvoqcbrpxK+QBEoa06l+YNJrtLOn5qxYyqWEodIMvIMvOY5XxXmnA7/0oX0kh7zpKJKEboQ1VgEJ6ohEYGN3mmRn6XFsxUVTbmXa5UoDmPUWMhAZihrqSWozapfL2hRsefvNneKkiLv1X69rGg/x37CMcoo7rMIg8+GMgftSAk/Tj5ccNujsrCHLWEagBVQbpG/GaSmNb/dm/s6/4WIHexpLk6fDoT7fu4cH1uSb8uZ/BGoHQoIeK50+Pp8NNU/S9I9gcPrPFCxLkJTR2Yyf2JYeNcOu85CEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN0PR11MB6278.namprd11.prod.outlook.com (2603:10b6:208:3c2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 08:27:24 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 08:27:24 +0000
Message-ID: <0baa7179-3495-41f4-88c2-09bde12cd231@intel.com>
Date: Thu, 23 Oct 2025 13:57:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/25] drm/i915/ltphy: Program the rest of the
 PORT_CLOCK_CTL steps
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-14-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-14-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0097.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::15) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|MN0PR11MB6278:EE_
X-MS-Office365-Filtering-Correlation-Id: bdabf883-8556-4ad8-e644-08de120dfe46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MlNhZlNpdkFFRnhVUlBwR1J4cG9OejVEaWhQNHBCaGtnblVrZ3gvY2xmNG9r?=
 =?utf-8?B?UHdMZjU0WEl6dnZSQ1pYODdjdjJROTN5T25sSjhJQ0pSZHZJYXFEeUNWOUhy?=
 =?utf-8?B?aHJJdmlHMDdOOXFiY3JsSXZwMUpINGx6MENoWExVa1VuU1lMTy9qbmowTzR4?=
 =?utf-8?B?S2hyQjhQME5rSVFxOHJONTRlaWpLa2tUSTA1YVdOWXdnZnc2QTBXcWFGeE4z?=
 =?utf-8?B?SmRrY0ppamtab1h1SzFZWFg0TTk0QVh2MXBHTEtLamJDbUVZVlJtZWR4endj?=
 =?utf-8?B?c3hxMVlCb0FQN3Fkb3RRaG9iVkJzMmRPdVJ3dFVMSklqeUZXTlFLU2ZxNjlp?=
 =?utf-8?B?U1VwM3IrYzJQeWZ0b01oRnE2cm53akF4R05xNXlaN3dMcm83MlRBWUhHa0pr?=
 =?utf-8?B?d3VHb2xVdEw3b2tjelpIeFBNK0hsODREcUJkUXBqSGtxRkQ5aXJXYThuVlJK?=
 =?utf-8?B?ZXBxSjZsZmpmODhIaVllcWh1YUt2ZFZYTVFVbmpmbCt5RE9YOUZKZ3hkbmh4?=
 =?utf-8?B?UGlVWEx5UUExUG5tRTNOa2JydkFNTG4wZ3d6bStudG8zaFM5dTVSNUdzOXpw?=
 =?utf-8?B?STh6MWU1ZlVBaVErbUtVRGdxTTgwMk9iZFRpQzJNQVBFWko4TlVucFlLYVhE?=
 =?utf-8?B?aEJ5ZEFjcHQ2am9LeVVvY0U5T2hRR3dIdW5OdklMSmVCRkplNzZ5RTJXcGpS?=
 =?utf-8?B?QWlKN0ZrcGxKeEtKVFdpTERna1FHMUE1L2FrQ2VTeUVDV2lTazE1MXBEMEhI?=
 =?utf-8?B?UnVmZUpSUTF6R0pqNnhLWHY2UUdFY2lqMk5Fc3MzK0h1NGljMUhleFpwUDdN?=
 =?utf-8?B?aFB2S0U1RmMyOWpzNVA4Q1JPUkk5RHlUZXViKzFNRzZjTUc2S3JZSnM3Yy9p?=
 =?utf-8?B?aElOTmg0MVRlelMxOEd3UHFXWHN1T3plSkJzenBZbEFkUEUzbGhrVFRrTXVu?=
 =?utf-8?B?b0kzek82WStNVFpCRDdLMko5ZXJEakhZQ3ZIRlVESXFycERibUNCNWFhNy9K?=
 =?utf-8?B?UVFySXI1dU04b0JtSm5uUlNDUVJ0MmJlUUNvN1UxTlBPT0FHS25vMzhrdzBp?=
 =?utf-8?B?K1c1alNLaHp2VjdRR0ljNnQrOFdpUXRoWHVWTFhhWTgxUXJ1T0JqeW5Ub1lD?=
 =?utf-8?B?U1BEUUx6MXZrWi9jTkcxTDY2Mm9PZUN2cmdBL01PREJyaHFvV3ZBZk82RnVE?=
 =?utf-8?B?bld3cVV4VWhzT21hNXU4dXphYmkzQTNOZ1hVTnRzd2NjU1BjM2Z2TGNRZTlv?=
 =?utf-8?B?TnhKTUhXakphcGdybHdXYm9sajRCa1VGMTExSHRxYmhucjNUZzRwZGhTTEFU?=
 =?utf-8?B?eVNScGJUSGxnNSsybzVqVC8ySzU5c0pWcUdZRFNxb21ZSVowbmdpM3grWGJY?=
 =?utf-8?B?akRBUmlKaS9FTXBEd0dJRXo4YU5ZbFhkbHF5YzRFUHRYMWh6VjAxRWxodzNX?=
 =?utf-8?B?VklkdEUwY084RGY5U09vR2lsaVF4Wmdsd2RqZzEvblNQdDhFK0dYN3d2RE9R?=
 =?utf-8?B?TFN5b2dTcmpaQ2Z3YXl6blZ3N0pOaDkxekRPeDhkR3IweCtnS2REWmdwT3hE?=
 =?utf-8?B?RmFKbWs1TnRESlRkdGhMamsxMXBOemM0TlZ0Y2M2cyt6M2pnbWVoVDBFRDlC?=
 =?utf-8?B?UmZoYlI2Y2RKYTZxckJHamcwT1ZDbU1KVGFSU2xSOG5kVUlpbHFnYVpZK0tt?=
 =?utf-8?B?blc4cGlJbmxmMTVoclpyemFuWFRKZmFmVU5nSGcxc0lvNzhKNEppZ0dwVTBT?=
 =?utf-8?B?bFE3NkZ5STNoTi9HTUQrbFRsSlBaWWdZcjRjL2VRa3c2K1VCaGlvdFZBNCtC?=
 =?utf-8?B?NXlEK3cvYU04a2l6eUVJdGxCZUxtcitGN09wOTdWY0laSFFwSG80SGx3TUNh?=
 =?utf-8?B?SHJxS2hWaHlycmVTYURSRU82N212d01FQzE0M3ppdm40Wm1sOVhLRzJZUHMx?=
 =?utf-8?Q?1OaZXeVstvkXagvXpPVga0owosCUaAOq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bS9iajIxakczWlhPaGZ5MzZnMHpHcjQxUFMzUTMzbFJzanpsdU05VUdaQThF?=
 =?utf-8?B?NVVMcHJLTUtEdDBnUDZteGR1VVgvaHFicjNqZVR2ck1ReE4yMWZpUjlFcWtP?=
 =?utf-8?B?cXJBTXlJL2xSTi9kV2ZwaTVZRkFTSGFxTC9PM095YUtQMldEYVBMTldBOVp1?=
 =?utf-8?B?V2puc0RqQkpoa1M4dUE1eVZacGZZNlEwWkloaWNuUHgvZlRHT1FGdzZ5OWZk?=
 =?utf-8?B?NHlEcURNZ2xkTExRdi9SOUYrVDljbHY5MjYyV3NRN0FpaDV6Yy9YR25zaGRE?=
 =?utf-8?B?WTkxMmxCeXRjRVVpN2ZvMU1la01yb1IwNW9yVzEwa0VncmlzaDV0bzEvWlNz?=
 =?utf-8?B?TXhjVzJUejU4bG9FMlB1SktBSG4vYzBiMUdUQ1BaY0h5Z3IyRllpbDZXZjdD?=
 =?utf-8?B?N2V6VkxCdzJqVXFNK2FsVGNHcTMwcVdlNm1JM0dXNVlQQWI1cHdPMUsvMVpT?=
 =?utf-8?B?MmlRS2NDTlFlRVU3bmhlQUVCYzMxYVE4cXB1NXRMT0Z2T2lxaXVkdm5kLzhp?=
 =?utf-8?B?Q2N6V25jb3dLTHZkWnlOSlpzQkxuZDRuc1hEclplYnZHakx5cHkrK2gxQU54?=
 =?utf-8?B?WFk5WGFjbElBSW1HY28vRWNOditwRDNsemMrbGlKcDhKVnk5aTFxWm1uMVlq?=
 =?utf-8?B?Mm1oVHp6UWZLREJucDVHZnJGZkVkTS8zNU8rVjljclkvbHNITUQvNXAvMy9s?=
 =?utf-8?B?RGxPZVNXOHl1NW8xbm5OY3dwN0UrQ3p6RnZ5d0JlRHZYK0hPcU5Pem1rYitj?=
 =?utf-8?B?bjFzckUycXFVL2NFcHNEdjdRS0NoOWtFbnB6QVd5Q0pZK2RkUm1STlZYYXlz?=
 =?utf-8?B?b2tNMSs4eWsvam03eUZiV3hkejlnREk2NXBWZTVEWVFsbHhJeTE3VVNSWGlW?=
 =?utf-8?B?QVA1U2xlazBvNGVMNGRBRGoxYlJ3N3RxZkVTVUQ0ZkR1NjNEeEJ6RGFMVkVy?=
 =?utf-8?B?K1kyTDMwT1hCcjM0QjRYUlM2NGVkTzZEZVlQK3J0MThyNU1qdm5RbHRhL2dN?=
 =?utf-8?B?TnFPT0ZyY3hrMmtGMG9kdWhNd1FkaGNkNk9iaUdJMXVYVlVod3h3Z2p0V21H?=
 =?utf-8?B?QVBvZEk5eVIvZldqTWlWdDAvdWtIS3NCRkdoTUNmQWVVVkZLcUtTRDI0WHNO?=
 =?utf-8?B?S3ZvNGZ4cnQwbFZHQTdKY3hrOEZaSEZVdXg2cTllSjZJMUsxNVoxS0xXdjNI?=
 =?utf-8?B?UmJYOWt4Q1piKzQ2bCt4dVpMODJFcGhueGFqUnl5SzhiYkc4d2ZPMDFyWTMx?=
 =?utf-8?B?K2NEYS84TklWYU03UlpIVllhcExGdDFGVFZuc2JDUzhmWHl4UE05d2lBK2Yv?=
 =?utf-8?B?eW4vczZBZmR6TFkyb2hFSkdhQmp3SWNWTGZwMzhlRnJNaHo1RUxLaXBMU0NI?=
 =?utf-8?B?VUowdGY3MVFVRExpOEpsR2FGMk5oMUNYWjhKVFpTTUZPQmlQMWduYndhd2k4?=
 =?utf-8?B?NjBGVTZyZ21oR3hkQndIdmkrWHJkTXlSQ21TbWZwNUZRMjREbU93WFJpaEVX?=
 =?utf-8?B?RU5aTm5UVkc3WW1meXNzU2dWcENvVlFobzkrUVlLUDVwNTgvV0IvaG1lbXlW?=
 =?utf-8?B?TDRkeEZKYUU1RWdXcCt1eDJXR1RmTThaM1lQMDdSVDRHZ0xSYkUvRHA0ODJH?=
 =?utf-8?B?TG1JblFpb3QxSE9DK1g2cmV0UmZMbFJTV2xNYjNkWWFUVk5kZ1ZId3ovemRL?=
 =?utf-8?B?dzR5VnQrK3NTSDE1SENFOU5HY3ptdzdUUzdvV1JxRHFkR0FDS2FsQ2hXSis1?=
 =?utf-8?B?MUZMVGg5aDRMelUvK3ZjdEJMTmdIVlh5TU9MVElPUlVoMFlFc3g5d3JEWWgx?=
 =?utf-8?B?NUZDRHpMNHhMMVp3Sm5IMUUvbDdiS2tUTC9NWkc0b29pRHNzZGExOUJVelR4?=
 =?utf-8?B?SjNTT2tIejlqSEtIVGRkSmMyUG1RZzBmNlBrenU3cFRUM3hmSjRFdStCVlZ5?=
 =?utf-8?B?V0N0N0xiQ0FoSTV5VDF0UVFPWDF1OGloLzRsMVFxaVU0UTVid3RVRXlMMzNL?=
 =?utf-8?B?dlVZbDdKSU5EZzVxWWhGeDdBY0Y5VkdkZzdLMWxDdFpoMmFNaXhXSUZUWlJ0?=
 =?utf-8?B?Nm5RajRLWEFkUHkzMitQbjdiQWxjQ3lMdHg5WHZueFdjWGluNHpOd0RrOWFR?=
 =?utf-8?B?UHV0MWVLZzl6a2NhV1ZjMjJzRlg5dkovNEM1T3BTOXBIRjVDclMwZVFVTUZo?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdabf883-8556-4ad8-e644-08de120dfe46
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 08:27:24.7099 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gx+ckbl297+kN6QqcYvy2Nu22YkEj9Q1WVOI4Q2LcTV1euQHeiJKIoIs0g2tAu+e8vpPYDNbvubTLFaeJYA59Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6278
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> Program the rest of the steps with regards to PORT_CLOCK_CTL in
> Non-TBT PLL enable sequence.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 25 +++++++++++++++++++
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  1 +
>   2 files changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 32a5a60fe92f..08a5ed27d2d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1493,6 +1493,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>   	bool lane_reversal = dig_port->lane_reversal;
>   	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
> +	enum phy phy = intel_encoder_to_phy(encoder);
> +	enum port port = encoder->port;
>   	intel_wakeref_t wakeref = 0;
>   
>   	wakeref = intel_lt_phy_transaction_begin(encoder);
> @@ -1533,19 +1535,42 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   				       LT_PHY_PCLKIN_GATE);
>   
>   		/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
> +		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +			     XELPDP_LANE_PCLK_PLL_REQUEST(0), 0);
> +
>   		/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
> +		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +					 XELPDP_LANE_PCLK_PLL_ACK(0), 0,
> +					 XE3PLPD_MACCLK_TURNOFF_LATENCY_US, 0, NULL))
> +			drm_warn(display->drm, "PHY %c PLL MacCLK Ack deassertion Timeout after %dus.\n",
> +				 phy_name(phy), XE3PLPD_MACCLK_TURNOFF_LATENCY_US);
> +
>   		/*
>   		 * 9. Follow the Display Voltage Frequency Switching - Sequence Before Frequency
>   		 * Change. We handle this step in bxt_set_cdclk().
>   		 */
>   		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
>   		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
> +		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +			     XELPDP_LANE_PCLK_PLL_REQUEST(0),
> +			     XELPDP_LANE_PCLK_PLL_REQUEST(0));
> +
>   		/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
> +		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +					 XELPDP_LANE_PCLK_PLL_ACK(0),
> +					 XELPDP_LANE_PCLK_PLL_ACK(0),
> +					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
> +			drm_warn(display->drm, "PHY %c PLL MacCLK Ack assertion Timeout after %dus.\n",
> +				 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_US);
>   	} else {
>   		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), crtc_state->port_clock);
>   	}
>   
>   	/* 13. Ungate the forward clock by setting PORT_CLOCK_CTL[Forward Clock Ungate] = 1. */
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +		     XELPDP_FORWARD_CLOCK_UNGATE,
> +		     XELPDP_FORWARD_CLOCK_UNGATE);
> +
>   	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
>   	/*
>   	 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over PHY message bus for
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> index 5fb4331c387f..283ee0c55724 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -12,6 +12,7 @@
>   #define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
>   #define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
>   #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
> +#define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
>   #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
>   #define XE3PLPD_RESET_START_LATENCY_US	10
>   #define XE3PLPD_RESET_END_LATENCY_US	200

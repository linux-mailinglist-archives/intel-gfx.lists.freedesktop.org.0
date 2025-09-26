Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A79BA3A57
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 14:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E074810EA4B;
	Fri, 26 Sep 2025 12:39:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZpuWFdYx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8F310EA4B;
 Fri, 26 Sep 2025 12:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758890344; x=1790426344;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L0FEstG93R+0cY0eOie9titEHqSJBfApA5osBDUEne4=;
 b=ZpuWFdYxl54Rgk0sad3/0awg6r+p+Ux02ek/yHlsoqKKT3jeiR9U3FPU
 SfXPaAuszSoNUXWvqc+o1jeWudU9STCid+kA+PpdEFSZQO3yVWCpITmR4
 XgWM6szgCRfOWOXcHQDWn+vUJ/9fe+1FMwYYg8zzTQ2jMeJvSnSvkl8p4
 poW5jwhXOPIV2/AXFQT3f5IUzWSPBL65RCuQF8k/ujRGxjv6DNuH1nN/2
 8G+befuk5tQv4ecxwnOG+uJji/tFRwqCqoSeqYQPrLYIiBNfPUSKCWT2q
 nm7aCSbJECGmPQCelsmMsRvbKzRhmza4znRasn3Eo3LAOkV+78jMmS1Yw Q==;
X-CSE-ConnectionGUID: CVy9WIS5RZSAx1OxWS6ISA==
X-CSE-MsgGUID: YgpkgSjpSnm4zjnN9NYV8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="60259328"
X-IronPort-AV: E=Sophos;i="6.18,295,1751266800"; d="scan'208";a="60259328"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 05:39:04 -0700
X-CSE-ConnectionGUID: kmrPI6glRDyb2WoSf/0dpg==
X-CSE-MsgGUID: EQIr+M3tT5yAnK5T9yXnKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,295,1751266800"; d="scan'208";a="176729775"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 05:39:03 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 26 Sep 2025 05:39:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 26 Sep 2025 05:39:02 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.18) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 26 Sep 2025 05:39:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DXM1SzgiR6vvNmdWHvNgqaLqene5HE+vJkbQD6jRDQezGU9/35mmZFR4U0Ftp9AGFJYZmumbzS6msXyNbgwAGf71Kz+mSViY1jf/SSObDi8mJHND8DX+ASQHWQWEtsPZPS4b1XTaBfrLHBcGhIcT5eOm8Xqz5sP+BxMcDokm3IMHaGY1YanCOIX881PCMItLz2NCRu91uvC6hA/CaLt6O21Wh9hy3gSRGFxlBIDEmFV8k8/HTw3ZFrKDT3zXnMsUfwFHvdVubolsDGUvYjD8zNd549Ab2g02g3M5efycDT9L/hUBXFoXY3b08lJF8eaV4PmYEPuiMsESwySPWt8KoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qviIN9s9lCRTSRaIYhNj2iCXkdvPqjv5rgMEyXeu/5w=;
 b=Y4E6X6a5BThyMzwz5wIBmtC3iDIibJvLZ/LzaTEyVVfWp3JV2GauCjNYFjrFK1X1xnUwZ2qUtAQTCaSfPGF7my82Nu2/9RT4bIUV5OHqCpumOVkA6XSZgO+BHRQfFbK1laccyRJz0ezfyabI7wV2zs8BdF6O4u9IADEiMgYzkL8Tg5GW+CfN1JjX2T/ZHENiZo6vqB10/gsrHSGeIfHT8kVSv2OQBYQU3AMyW58Q9TADr7dVYUM17UqvN62fteipbSBx8YlL+x+Ea1Wqwr2rH8Is+LpC3NYajo2vUYdOg74PjcCUU/HcDL2V5FpdPcuPhuu/AKfm59me6+FoJ6uiPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6491.namprd11.prod.outlook.com (2603:10b6:208:3a5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.10; Fri, 26 Sep
 2025 12:38:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.011; Fri, 26 Sep 2025
 12:38:59 +0000
Message-ID: <d473ac8d-beb2-46a1-8be8-f5ae13963f5e@intel.com>
Date: Fri, 26 Sep 2025 18:08:52 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/14] drm/i915/display: Use optimized guardband to set
 vblank start
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
 <20250926055935.3532568-15-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250926055935.3532568-15-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6491:EE_
X-MS-Office365-Filtering-Correlation-Id: fd746aeb-125a-4c76-34bb-08ddfcf9aa32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0c2clk5RmpXWTVxQXpYVTJQd29seXQ3R2tPeHNwTVJJT3R5QnVFMEhKVG9t?=
 =?utf-8?B?dWU1ZndwSFVCVEJLbmVGT1owVDE2cjN1TCs1cXNqNlV4TzhRdXNSb09lRldv?=
 =?utf-8?B?aE92YkJvYnE0OUNYRXBCMExTSkJDMGU2TmdYOGdIaGllTXFnQjRpSWRlL3p0?=
 =?utf-8?B?MHZtOEYrVitDeE1UU3lzQTc1VnlyV0k1UnJ1M3p4L21VTllDdG92SE1CL085?=
 =?utf-8?B?N2tRSm41S2h1YXdEaXRxWStBOEREL0lHNERqa3Brdnh6a1VRQUZWMmtjSHJn?=
 =?utf-8?B?bC9sUHV1cGN5Z1ZXZ3ZVRjhqUzExNFlsMUhvRGtmVjJGbkFHNHZ1NHhUM2tT?=
 =?utf-8?B?OEhmT2w4R1l4M3MrdjRPcUJKTUkwMVFzMTVCWmtYMjUvMjJ3bCt2K2RLZU54?=
 =?utf-8?B?VkFucitreFI1ZVdCQWMzZ3U0d3QzUnhPejhQcW5DU00vRDZNNEp3YWNuekRN?=
 =?utf-8?B?cGUrNDJwc1dwdDBtSS9YcEV3YjNnSzJML2RoY1FnK0tvVGg1ZXNwV2tQSVd1?=
 =?utf-8?B?dXo4cW5yaWY5LzNIT0RQd3cwRzhoRFllZ3RIWFlMdUthbCtIVnpMYUtlL0ta?=
 =?utf-8?B?czVPUzJIT2M1M3dXNlIvVzFlSHFTUHk3OGxzMHRWa1ZhYmJ6c3FpYkZUWnpC?=
 =?utf-8?B?Q1Y4YmYwZXVFVE5EelJCb0lKUVJOcU00VmhWT0tJbFU0dytmSDY4V0E5ZnZp?=
 =?utf-8?B?MElwNElIM2g1azNWeGxuS1hMcFkvbzU0dXBTcGJLSDl4SXRjM0JiWTl2RTNB?=
 =?utf-8?B?aE1kSTJvVUgyV0pQamh1TitvbzNWTnVSSDJWbHVGcXJHMXVtbG5DNFpyeWFn?=
 =?utf-8?B?UDUzc3FWV0h4YXBJWk02cENrdUk3ait2bXZTNnVkUENUVHAralhmRDU1L0hB?=
 =?utf-8?B?NERXMnhZbC9EekFDQ2dZckdGVWJ3MkxiWG9wNDBhQ0JXeUNIV1dyQ29RN29a?=
 =?utf-8?B?c2xoY1ZuUWdOUTVtQUEycEMrMFNsRndLdzlialdZc0RSVmVhYTZTdWdYc0pI?=
 =?utf-8?B?ejdITTliaUZLSEo2WXJvTnhaOFJReW1CVEtMV3gzdUpWWEdrRmdZdHArRS8z?=
 =?utf-8?B?U0F4NlNtTXI0T280SjNZaHJZWnhwdmhPOXVyN0RiZlJEY3V3ZFU4WVV4b21W?=
 =?utf-8?B?SjBSZStPWXhOcG1NWVVVL0M1b3BBb3lqWlhoR2ZJeDBBd3R2YytGYTNGY09v?=
 =?utf-8?B?ZHRBWGxZVWRHZW9iVlY0U3pYaElzZDNnNHpOZStKejI4a2haWWFCRnV5b2VQ?=
 =?utf-8?B?K2RwQ2gvbmRUTzZ6RkNHSnhaNGwwN2IrZFhrQVdud2FjOUUxdnlpclFiekI0?=
 =?utf-8?B?QXlGWDY0dnlpVHYya2lOOUttM3ZyaG9yUkNidEsrZ09UbXByMTJ6UC9SeTJu?=
 =?utf-8?B?VVBVR0tyOE1OZ3JnTGJnaE8zOWVCSE5WTkZJblRtcnVXbVVjUEw0eEE4S3lr?=
 =?utf-8?B?UEpFZTB3d1hzUlRHYkZwWVVlR0VqVTNlRUo2bXZURkFGbjB4bGZQaWpoVEdh?=
 =?utf-8?B?dTA2UnBUS0d2Rk5POUJUOFBRNnRySXM5ZzNhSEJMRkxYZHRpc2Z1Z2Z4WWUw?=
 =?utf-8?B?Qmg1Nzd2YkNZMDdFUXZTcFFEZ0lURmZWcVZjRzJqYm9Fa0xIR0pwQ3JNRHYv?=
 =?utf-8?B?eTdOeGs2c3pLdzNQa0pUNVpFK0dHdVpxVmxqVWVUUEZnT0lrTmI1TWhodXAy?=
 =?utf-8?B?WDNLT1UrYUhnRWMyWWN2VXpoRDB3T0tTYnBIOUsrcmNjdENNQ1dDZnZidXo3?=
 =?utf-8?B?NUg1ZzFmODFDQk9aTktubHBoZVNnZGdPMCswUHB6bUxwdXo4WllJT2xiK2xi?=
 =?utf-8?B?R0ZZdW42YnNBSHQySWY0Vkt1TDhiQ0FMaW1hZnVPN3cyTGNIMVk4RFpqNU01?=
 =?utf-8?B?Z3U0RXI5V0pKSFhmTFlaSFNZSmRTdEpSNkdrK3d4U0ZRcHJOODBlNXRtNmZH?=
 =?utf-8?Q?GMuEs2wXURpRRgIrCklZwfCo3s91gK8X?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0xEQ1dxeTcva0o3K3FRcFR0ZXJ2SXEwZkpwY2UzYW8xQ0VvRVZSemIwTUdS?=
 =?utf-8?B?UlYzZmhsMG5SY2NWZDBJUm01V3VyejEvWTVjSU1Nc3JDWFdIdFpRVlE3cEph?=
 =?utf-8?B?YUdNS0VPRFRxc3l4QWUxN3R4UEhDc2tiWmd4TzNBM2EvS1VqQitPdWllL3ky?=
 =?utf-8?B?MTRXcjZGaUwvTjgwVjJMVVZCM3BSaWlWcDZ4SDhBWmpUS21Yc25tNUJnelkw?=
 =?utf-8?B?cVc2RWRsYWJpSEc3a1RuMys3cEdmTXFzSUU0ajdQdFZkNGhnbW91VDBLbUlr?=
 =?utf-8?B?S04weHB4SSthNTZxYU5reGgyWG1YdzZ0VSt4UjRwb1d0cGVFMkRsSzdNNlAz?=
 =?utf-8?B?SGJGS2VmV2Z6YWMrWFZhV3ZBYk5USWVGdyt1VXBBWEpCUGVVVTBDd2xIbkZj?=
 =?utf-8?B?SEV2eDVRUDJqZGlYMC9XSzNrOEdwYWl2V2Zmb3prOGthWjNKdzNrM3BCcU10?=
 =?utf-8?B?endyWm92dHZNQ3JMY1U1K1NrQmExcEJ5Q0hGTFpsczNHYVFzYkJucGdwOFZK?=
 =?utf-8?B?SUVzdUdUNS9pUzZLdWtzeitzUk5nVVE1c2dieGlPdzhWSVVJdTVab3R1MHox?=
 =?utf-8?B?VGdVWXhGWTlKSTRoWml3SHV3QVdwYi9mMTJBOFBtTytMUmZzODd4ZVlqUjNi?=
 =?utf-8?B?TDVMN1VYSitVbjB4Y2s3YWdpTlBTTXhaUjQxMExRbHVtYkl2VWFMcElmTlE4?=
 =?utf-8?B?bU5GMDRwSUdLMElsY0grYnFIdFZwSFcydUlpd2ZjZCtuSUdXVm1XaTJBTnhz?=
 =?utf-8?B?d2htQkdYaTVJYU0xYkZDNFdrRE1YV2pJNno2YUI0bFF0b1VLSEFDS0o1eHNO?=
 =?utf-8?B?aVFWSllqN3dVY1lkQzhSTlQwUi9wN1BPVkZibEtvSVF1dTkyU3VoV2h1R0kx?=
 =?utf-8?B?MHVVUERxVFFQendRLy9Kcm5xckZHOUZnYXlrNXZjREJqYXBtd2xTZUw4ZWM1?=
 =?utf-8?B?bWtIZ1JYU0MwSHhFaDRtdWRsYmFvb20wSktxSkdKVkNmcklHdlJKb1dwTFEy?=
 =?utf-8?B?UmVMazAwYndhUWh0ZHFGYmM2dDBoajI3YWl0bUUzY1pUUDM0c3VIYXhQaTV6?=
 =?utf-8?B?cEVFMHYyRXNtdmg2aWRXMjVGY2NFQllWVC90aWlTUDhmem9FbEhEQkUrcVBF?=
 =?utf-8?B?NkNRNHlWa01DQWczOHRhM3ZzeVgxQjhHazJHVENURk9YSXZsc2JiUll5dmpG?=
 =?utf-8?B?U296aG5jL2IrR0p0WER0ZWx0Q3ZDYURrRzhhU3VKZWNDemZpa2VzOGZwTnBH?=
 =?utf-8?B?dzNyaWRFNkxVd0tFSEtzOERJN3I2b2x5QzZ2YzlFUmgzUmI1a2UvaUYyVDFv?=
 =?utf-8?B?bDNJS09JT3UxM0pXdXcxTXZyQ28rKzdjcWYxelFMRXN6dUZDa1ZTYk4reWFm?=
 =?utf-8?B?UHpiT2JTUHVoVlBYQWtWYzVPaFNYRXVTMUpkeWRoWTVnbjdtRzUwTEl3dnVO?=
 =?utf-8?B?OWlrTHluRGZNRmF6WklvNGxleTdzcUlxc3BKVlJmM3IzL1B4NFQxMkMwVXov?=
 =?utf-8?B?WURwMzJsTjA0UTNUbVRZeW1RR3UvYklQdDR1dDNzclQwMnFmclllMC9LZ1Fz?=
 =?utf-8?B?aUwwbWdsa2ZBMzlBdDYzTU9UNno1ZU1QVHl1Tm5zT3JiRUVqRHQvRTRnN0Z0?=
 =?utf-8?B?RDlnU2F5VXJ5QTRVeHRkZFRBQ1BneGI1K202OG53QklMUVYvbkpuNEJJZ1h6?=
 =?utf-8?B?bjNaWTBYOCtNUGI3OW53OU5WeEF2Yko2RGZobHQvZldwdkRGZ0oyYjZ2cFhU?=
 =?utf-8?B?T2hkVlVQZGlwbWU3WlZZRXJzVlM0YlJlS2h5RTErYy9hd3NPbEdnWjFuOEI5?=
 =?utf-8?B?Umpvc0VmZ3p2aG9TcWRFbXdBTWhLVmNQZXJ0RTBpYWtzaloxOTlCbTJSdEtJ?=
 =?utf-8?B?dmpwcUFOY1A1dEk0Q0JCUDByWHAxanNlY1lxaElyMmU1Nm1ORm5MOE5vcDhK?=
 =?utf-8?B?amNpZkVaYW5lVHVGdnJQbStmb3NBa1Q3Rkh4djlvK1ZZZWJTQlU0ZVZxZmli?=
 =?utf-8?B?WlRtV1VuM1ZFWUZSZnMvbngxYzdPSFBGakVUNTZjTEJJeHdhdlNDUURXeXRY?=
 =?utf-8?B?Z3NrQXBrZDhHYnk3Z3ZpZkdibEdDUW5kTitvSFVIVEJYSkdGNFpOYmllWVR0?=
 =?utf-8?B?eVRZb0wvSStoa2l3cjh0VlZSTy9wMU1oVytIZjYrZE14NU9BdG1EaEZaQStv?=
 =?utf-8?B?aFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd746aeb-125a-4c76-34bb-08ddfcf9aa32
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 12:38:59.3595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qIIwtOSxVRMSGFKYsKFSi5He3dlFyuHTywblI++PoerAQ2K7/Cskj0sm6HH8uYCo0HqCIQKJ8Ddq+Ji2ljxXtWJWIm9zmVBQ2qt+PqY2C1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6491
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


On 9/26/2025 11:29 AM, Ankit Nautiyal wrote:
> As we move towards using a shorter, optimized guardband, we need to adjust
> how the delayed vblank start is computed.
>
> Use the helper intel_vrr_compute_guardband() to calculate the optimized
> guardband. Since this is measured from the vblank end, we shift the
> vblank-start accordingly.
>
> Calculate the minimum delay required based on the guardband and apply it
> in intel_crtc_vblank_delay() to update crtc_vblank_start.
>
> Additionally, allow vblank delay adjustment during fastset even when
> the CRTC state is not inherited, for platforms where vrr timing generator
> (and the static guardband) is used. This ensures correct behavior for LRR
> scenarios where vtotal changes but the guardband remains static, allowing
> seamless mode transitions.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 64 +++++++++++++++++++-
>   1 file changed, 62 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ec415b939770..dec4fc3a1f5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2361,6 +2361,58 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>   	return 0;
>   }
>   
> +static
> +int intel_crtc_min_guardband_delay(struct intel_atomic_state *state,
> +				   struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	struct drm_connector_state *conn_state;
> +	struct drm_connector *drm_connector;
> +	int guardband_delay = 0;
> +	int vblank_length;
> +	int i;
> +
> +	if (!intel_vrr_use_optimized_guardband(crtc_state))
> +		return 0;
> +
> +	vblank_length = crtc_state->vrr.vmin -
> +			adjusted_mode->crtc_vdisplay;
> +
> +	for_each_new_connector_in_state(&state->base,
> +					drm_connector,
> +					conn_state, i) {
> +		int guardband;
> +		struct intel_connector *connector;
> +
> +		if (conn_state->crtc != &crtc->base)
> +			continue;
> +
> +		connector = to_intel_connector(drm_connector);
> +		guardband = intel_vrr_compute_guardband(crtc_state,
> +							connector);
> +		guardband_delay = vblank_length - guardband;
> +	}
> +
> +	return guardband_delay;
> +}
> +
> +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	int vblank_delay = 0;
> +
> +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
> +
> +	adjusted_mode->crtc_vblank_start += vblank_delay;
> +}
> +
>   static int intel_crtc_set_context_latency(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> @@ -2413,6 +2465,7 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>   	ret = intel_crtc_compute_set_context_latency(state, crtc);
>   	if (ret)
>   		return ret;
> +	intel_crtc_vblank_delay(state, crtc);
>   
>   	ret = intel_dpll_crtc_compute_clock(state, crtc);
>   	if (ret)
> @@ -5105,9 +5158,16 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
>   	 * Allow fastboot to fix up vblank delay (handled via LRR
>   	 * codepaths), a bit dodgy as the registers aren't
>   	 * double buffered but seems to be working more or less...
> +	 *
> +	 * Also allow this when the VRR timing generator is always on,
> +	 * which implies optimized guardband is used. In such cases,

I think this need to allow_vblank_delay_fastset for VRR case for 
platforms that do not have vrr timing generator always on.

vblank start is moved for VRR case, so old 
crtc_state->hw.adjusted_mode->vblank_start doesn't match with new 
crtc_state->hw.adjusted_mode and goes for full modeset.

https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-151244v12/shard-lnl-4/igt@kms_vrr@flip-basic-fastset.html 



> +	 * vblank delay may vary even without inherited state, but it's
> +	 * still safe as VRR guardband is still same.
>   	 */
> -	return HAS_LRR(display) && old_crtc_state->inherited &&
> -		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
> +	return HAS_LRR(display) &&
> +	       (old_crtc_state->inherited ||
> +		intel_vrr_always_use_vrr_tg(display)) &&
> +	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
>   }
>   
>   bool

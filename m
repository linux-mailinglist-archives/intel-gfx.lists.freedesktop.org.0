Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D65C049BA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 09:04:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB29C10E9E4;
	Fri, 24 Oct 2025 07:03:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GSC3vOBI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FA110E9E4;
 Fri, 24 Oct 2025 07:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761289439; x=1792825439;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5w0sklfdbN9WUs05YyQxZ/ZHXKTGYxycIgbjdmFKhjc=;
 b=GSC3vOBInY/GPhpN5nVkyWlkYHboG3co/BTKRO0gd602w7mRn3Wq5tsF
 HT4TMrsJxID8wxOINg1lyoJvAE/xT5kIhS0inYXi1wyfbWK85VF+xEGXd
 Ufown4BOcqbqOeII7CVjU+0th0R+sy/VGqIkXX1YYDdoIc1VxCF4Lo3N3
 vZfz4iYXdt4CycRcuEMr9ffcwpaly/2JGHY7tGAAGjsmN00L2fmWC5j5j
 TJnF6vRzK0ZC9wZ25z+Zc1DBSPjhr0IxGomja40fJFxAaU4/kq3poeGx9
 hr5tv4Qf6F4ltRCJ1BfPWiCHhfyhmPHLMghZ86x10Qd+xtxwsJM1PKhxs w==;
X-CSE-ConnectionGUID: XIskcMKJRkOkLbNkB3xocg==
X-CSE-MsgGUID: 4UFr+yfwQ3GUzr6UFdnFlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63616455"
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="63616455"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:03:59 -0700
X-CSE-ConnectionGUID: D1FbY5nARy2+06gLeFTpcw==
X-CSE-MsgGUID: P6CYKQw3QlCGhHZB2alqEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="208008262"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:03:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:03:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 00:03:58 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.58) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:03:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QEF3ytbWL3BZvGEU5W53oPP6khF1BkeX0HYggG+NTVzYgS4wuJh/gr+mMKPr8zZhBfs2ifv/IkaMMXLPl67q42GhATyU1ClL2bVjRPv8L0LYsyEMyilKiyJ0q74Y0an1hdBfGJu4HOeBVztnRnsneqCnZtR0ch92wvKO2OBbuifyAhty2f+Do3zek8Dr8wg+3EAVfqlYz/OrSgnxddqo1yH0tRLXFkSl2JhQJ2XsorkyjRiiAdjrwIBmgjFg/eeQvsf6RAY9b6BchtF4Yb8vPEvtFYxZKekjAvXITYL91nATy3GaXS9/FDdIc2EandlF5kRYzWa3PMqZLuX8s2/uhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NRtINjDiNJLm0OokAGHe7glJ6uFyjF037XA/zWaY96Q=;
 b=JeMphB8YxbgLpOR/R+VsHMFis1wikWRMe7H/c53+6wA3epQntxi1jCrJSa0zVX2XuhTc5JITQS7Lf5u9i7ptO4fkz7dYuHipj80MVwG3Dtiy49RgC5H1fnPFc79MyAFtWBbnUI5YoZD2wYkt8uM3YwStinWUnBBk+EfcfnS4DNmfUz54CK4x6irY14Vz6/v27mCmFiHf9AQXHGVsAHUMx3DPntTiwCKkXMvDFXqKZqiwz0RgOrJ0GwabOzK12mikeNgL+dcjJpXugdYJKkn+TP/uk9Rv1nv72xGt6UH9Itb0pqni6IEN+PaN3/P1zcHC92tBaJUv+YaSwQkycqMt9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS0PR11MB7959.namprd11.prod.outlook.com (2603:10b6:8:fd::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9253.13; Fri, 24 Oct 2025 07:03:56 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 07:03:56 +0000
Message-ID: <58a20cb9-cb0c-4f05-a543-c804748a9177@intel.com>
Date: Fri, 24 Oct 2025 12:33:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/25] drm/i915/ltphy: Define the LT Phy state compare
 function
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-21-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-21-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ac::14) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|DS0PR11MB7959:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f9fbff2-4bee-47a0-a385-08de12cb7f3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UHNkYjFaWW9lOVNGYUdkTnkyMllIaHJON0M2WU1OdTZXajR1Q05MMmxhWVRV?=
 =?utf-8?B?bTd2NlBwM0pHdnRaWnBPWkx1Mk9Oc0NyQ3VoOUlLbjg3NkhveDlMZis3RlFE?=
 =?utf-8?B?b3N0YVdhL0RhTFNuelR6R3p0RWpDcGJWbHJxR0dma0lZTmgyTE5mTHFiT3VK?=
 =?utf-8?B?djg3VEVHbEdEUk03amQ3M1k2b1dIQzc1Y3hvNytRRFNLVDFUdjNYOXpYTXk2?=
 =?utf-8?B?dVhSK040cCt6Smlldkp3TGNVaWtWYVFQQnUwNnNZNDJadlRhSzlzU3ZNNURi?=
 =?utf-8?B?SmdDRkpKZDRUbytwQTEweGgzMC8zakpvRkZuV0pQU2YvaUFkOFV4UDAxa2sw?=
 =?utf-8?B?OVcyQ1VTVUFwY1ZvUGRVWk90dUdwMjdydFJNMzQ0QXB1UHhOT3lNZ25NV0lM?=
 =?utf-8?B?cFpPd1RhVExraDFsTjl2U1lScnBramNBSDFDbmExNWY4VDUxOU9TdEMyUWtj?=
 =?utf-8?B?V1BXOGlkS2tvNW12ZnZ1dW9WKzVpTU96dWZkUUhybjRla280a3NHV0paTkNN?=
 =?utf-8?B?aEs5a3ZLZlphZ0JiTmY5d2lkUlBDQ0hJVm9iVEVsRm9hYjhuSkZNY1JxcStt?=
 =?utf-8?B?TlMyek9HQTdpVVlQbTFCc0Y1Q2IwMFBTTS96MzhIcElraUMrQ3dNUGtJYjlW?=
 =?utf-8?B?NTJSUmdYNHZ1bEgwRjByMVdSODcrY0kzNEZMMDQvQ0FINE5oak1iYXJVdC80?=
 =?utf-8?B?dGdBbE1KR0NCblFqb0lnaTZSWC9DZ2FnU2Z1NEVFNDZrQVIvcHh2SjRxN2hp?=
 =?utf-8?B?K2ZnV1k0S1Y2Ly8xblpLbldtZDlLaUdIazAvOEJoeVhFWi8xZ2dieGtPbkly?=
 =?utf-8?B?OHBDSEVIVi9sVzBNUnpjcHZQaWxJR1NwYVFBcXphS3hiVWFiOEZBK2VrZWR5?=
 =?utf-8?B?K1hrMlBGWXhVUlpkbFZEYnFvdENNajg0QXhtc3Z6WEh5aE9pNG5wYXVVYk1W?=
 =?utf-8?B?dW1FVWZkYjdWM0xSWDhaVGJIT2NXRHZRSTl4T05QOWFacTJSMHE5NmdXbE5s?=
 =?utf-8?B?QzBIQzZJVkk5c3dwZEpRYTNLTk11L01iZTMxME45NEJ2ZjZhSEtxRC9HdFV2?=
 =?utf-8?B?VjlUMlAxRjFuY016Y1NtbTNPdjh2Nkl4VFFtaE4yOXE0ZVZUV1FTbWFsWmtm?=
 =?utf-8?B?UTVTZW9DSmUxUHdjL2k3RUIyWlluTXRMcVd5VVE4VjZlWWRQL3hzVXFVWnI1?=
 =?utf-8?B?bVNCMXN4eWxXa25BMElMRE9tTk9xNnFzVUU3UVpWMWhRcFJBN3M5cmVLcmFR?=
 =?utf-8?B?dDVKNlBDT2RhangxNVk2OVlsY0owa2hhMEwwM1lZOFNzNjI5YUNaQ3I0WGVz?=
 =?utf-8?B?WE9SMEZjU2dqMlFFRmxIYVNSNFZwQ0xEUW1tYzFEUVQwSS80ZFZwdE1JL1JW?=
 =?utf-8?B?LzVwbnUrTkNnRDQrR0NUNitPdEJBRWtyR2o2K3YyVDB2U2hKL2J5SDFmdW02?=
 =?utf-8?B?V1htZ1RCNlcrU0huR1FyK0FMVmNUS1pFZGt3bEN6c0F3NFpqU3paQWZJR2hT?=
 =?utf-8?B?cUVFNzJYTTBwMzZBeFFrSkxHT1lGcmdDMWpLOVR2amVTS045MTgrSzIvWGxu?=
 =?utf-8?B?ODFVbnhxK1VHdmRaSDRiWWV5ZXFBWldZWEVkaXhvUERjamp3K0xXMUhLdm9X?=
 =?utf-8?B?RVR3QlhQQjR6am1rU1JiZFFsZC9sQzNwcGliU2FFVXo1WndmK1liL3RkMWp0?=
 =?utf-8?B?RzZYdkhSWlZSSXdCdlIrRVA2SmFuM0E0MXAyblBiekduQjlGMGZmOU1SNW9m?=
 =?utf-8?B?ZHhXeTRYNWFKZWUrbzZMQ21lT2tIZlJQL1ZaZXlLT3J1eFhDeWVxamV2UEcw?=
 =?utf-8?B?T21LUUx4eCs3ZFd2Y2pSSmtFNGxZS0J3VDdzYmd3T2tyUFI2cXJLeDRYYWFl?=
 =?utf-8?B?YjFRU2ZFZ0hCeXMrMDZZai90N21TejBSY09Qb0FFd3ZDV1Z4MWpGZzlLa1Ju?=
 =?utf-8?Q?+HeZJxLmPcAQ+0CYOrrWBohIgHc8FUsW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTlSZGZlK2IrQ3Arek5mRHh6WGNjRVNSNHBaNGZYL2UvdmNlaDJIM1B1eVJE?=
 =?utf-8?B?bzVkUmJwOFlQUStsTTZHU1hYcmRNSk5RcXdaRGMzNVRYQWZYcC9pWmNqL3J0?=
 =?utf-8?B?OXhaRjBwcTQyMEt2L1FWTGJvUVdyNHYrUytESnNDYk5JK3JVb0pUdW10N3Ar?=
 =?utf-8?B?S1dUVlhmMVo2dzJOdjl5eERwQkt1Qkg1NDdzbjNKaDIveE9mcFNGekZnbGQ3?=
 =?utf-8?B?TGdlUldRL2ZjeitEN1lmQVQ2dFlLck5hRmxXdy9Odm9FbXQ0ZkJMV1lkckda?=
 =?utf-8?B?dTcySTUvQzE5K21Kbk1YM0w0aXo1LzNuaGxuSHlCcURVNWFqNnZxSFFNcW9q?=
 =?utf-8?B?bnFFMUlGSXVtdHpIbGJnbDF3bER5d05zZUJwSXF0aTlaYWJZWWZNNzc1dGdR?=
 =?utf-8?B?M21selFvcHljK0cvM25UU0Vka1B0Ry9uNERoa3gwTnVZT3ZvbFQvNk5ubnQw?=
 =?utf-8?B?bXdOR0pUY01hTVVqbjIrUkZteVBYSC8zT1hIalJsTHBaYU9pUXp2ZFRPUVhF?=
 =?utf-8?B?S0xlL3dxakt5MWxOSjh0SVdIOWMwTkoyMWZFVVNHc0xTcW9mdVZvazJDeHV1?=
 =?utf-8?B?M3hIZmxIRjAyeGwyUTlELzJ2K09UcnJyZUFDV3dKRWRJTzRUZlJGVUFxWXpM?=
 =?utf-8?B?VEVnWndPU3FrMVR5alp6dU1SNEM2UW5vUEVUOHhBY09UVnhnV3RiZlRUSFlS?=
 =?utf-8?B?UVJCc2JIUDVVRVFmNXU0eGhnVkxNMWhiUEZXQTd6dEljNWZ1S09Sd3MyM0dS?=
 =?utf-8?B?cGx2NHllRmNNdlZVUWI0Mm01YVljMkkrNTJUZVBtTlZDTlJKN1dhRHBqSGNk?=
 =?utf-8?B?eHQvNWM2WWVSN3JOd0NKYmM5NVJHL1UxYzJ0MU9zSDdBMGJTWnRaQ1AzZ3d6?=
 =?utf-8?B?NURlVFFpWkxNbEs4RHlyYkQyQTFJaWU4NU1Jd2xnRDhvZlJnajRDYVgrRTE1?=
 =?utf-8?B?UVg0VFhzTng0b0VJNUV6SzdzUTFpWkhwOHFoVzNKWDRlaklYVHBieHJpdkV6?=
 =?utf-8?B?UTZiWmpiVDVOWjNWanl4WlQ3bUJraWFCN1R5VUdKL3lsejR6VkJXeUlHVU9F?=
 =?utf-8?B?MllVRUVPOE0zMjBDUGVDUGRBQUlacG5uYXdOYUhPR0xzVTRiVFJTQVk3UkUr?=
 =?utf-8?B?WjlxT1NnNUg1SHZBOUpjc2ZsUVY3NUJNYVB6S2FiNE5ERFJpK3JpVU9WdGp3?=
 =?utf-8?B?MzJQaE02ZHVkZEFERTAzOXRQdFhrQ1ZzUnNtanZrZ1dQYVc0L3dtKzhpalhT?=
 =?utf-8?B?ZkM1dnlLZ3doR0xvR0lYWUoyMTdnT21KQnNrMFpZMFdDZUkwbWxFdEN2T1cr?=
 =?utf-8?B?MTBDbldhNEphUStQeEhoMlNrYkVhR3YyQi9BaDc3Umpka1R2UGVUYXdtSTMx?=
 =?utf-8?B?MUxoUmJKQVJTMnhXbEFNd25ZZ0tJRUhsMXBUaUNGNFBsVTFaOVRWZ04yWkNF?=
 =?utf-8?B?c1lwT3Fjb05SQ2NTSVk0ZmdRWlNLZElGY0tYWEVvN21sWW9POVhvRXZMV05Q?=
 =?utf-8?B?VUxWRU5wN1MxWGxMMmQrYkx2T21LTWNPTVR5bzZSU0p1bUpVaTUySEx4aytV?=
 =?utf-8?B?S3A5KzZjNjNFaXRvdkU5Z3VzbnNtY2p0NERBN0k4VDdORGFKL2E5TDRHYXpn?=
 =?utf-8?B?OFBoOEkwODZzTGJXTGRoRlVUYjFjTVNaNVVEeGJtd3VwZTE4QTJQNlREdjE2?=
 =?utf-8?B?bUpTNHhCbC9LdHFEUDlKNjA4NXhudlFGaXBOTldRbThlR1MvaDczYlV4UnNQ?=
 =?utf-8?B?R1RKRXRNcUhaaUpFMTMyajJ2NXg5R2lGWWdDb2hxUHhTbHpLeVRqc0cwOHEr?=
 =?utf-8?B?UVdYSWdoU05QQWpXQmM5QVBPQWpOSi8xNm9CZzFzWkVFdW1Hd25MSU44RkdY?=
 =?utf-8?B?eVE4MWZKU1pjQ2cyRzYxVU1GZ0lUTzV4TkRSTDFKeGhBYjNmVzRZY2N4dnVv?=
 =?utf-8?B?TlF6Znl1dEZic3ZlRlhCWm51OFlOZ0x0a3BjUUdYaXVUcVIxT0FpWXg5MVly?=
 =?utf-8?B?dWFCTFNHMlFxU0RicHBQNlkzcDQrL0xGeEx6SWRPZHJUdTFBT2dIc24zanNP?=
 =?utf-8?B?L2p2ZDViajlMdzZmbzYra1lJaDBHWjQwd3Z6d3lBTzF0SHpENVRMckxhMUt5?=
 =?utf-8?B?VzlKTnhUN2VSeWg1S2x0M2RFR09TUHZIYnFpSEtXT3NDMzBSY3dLU3B4b09l?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f9fbff2-4bee-47a0-a385-08de12cb7f3e
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 07:03:56.1699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ajEDg5a/wZUxa/i6Ofy6e0LvKXIHVPN1jKR820XqCI5ZGLkR1H/wr3l2Og0jAYogQIc4/JevJRfdO2KF7DGArg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7959
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
> Define function to compare the state and if mismatch is detected
> dump both the states.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   drivers/gpu/drm/i915/display/intel_display.c | 33 +++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_lt_phy.c  | 30 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h  |  6 ++++
>   3 files changed, 68 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d5b2612d4ec2..b05f70582788 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -99,6 +99,7 @@
>   #include "intel_hdmi.h"
>   #include "intel_hotplug.h"
>   #include "intel_link_bw.h"
> +#include "intel_lt_phy.h"
>   #include "intel_lvds.h"
>   #include "intel_lvds_regs.h"
>   #include "intel_modeset_setup.h"
> @@ -4963,6 +4964,24 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
>   		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
>   }
>   
> +static void
> +pipe_config_lt_phy_pll_mismatch(struct drm_printer *p, bool fastset,
> +				const struct intel_crtc *crtc,
> +				const char *name,
> +				const struct intel_lt_phy_pll_state *a,
> +				const struct intel_lt_phy_pll_state *b)
> +{
> +	struct intel_display *display = to_intel_display(crtc);
> +	char *chipname = "LTPHY";
> +
> +	pipe_config_mismatch(p, fastset, crtc, name, chipname);
> +
> +	drm_printf(p, "expected:\n");
> +	intel_lt_phy_dump_hw_state(display, a);
> +	drm_printf(p, "found:\n");
> +	intel_lt_phy_dump_hw_state(display, b);
> +}
> +
>   bool
>   intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   			  const struct intel_crtc_state *pipe_config,
> @@ -5087,6 +5106,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   	} \
>   } while (0)
>   
> +#define PIPE_CONF_CHECK_PLL_LT(name) do { \
> +	if (!intel_lt_phy_pll_compare_hw_state(&current_config->name, \
> +					       &pipe_config->name)) { \
> +		pipe_config_lt_phy_pll_mismatch(&p, fastset, crtc, __stringify(name), \
> +						&current_config->name, \
> +						&pipe_config->name); \
> +		ret = false; \
> +	} \
> +} while (0)
> +
>   #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
>   	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
>   	PIPE_CONF_CHECK_I(name.crtc_htotal); \
> @@ -5311,7 +5340,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_PLL(dpll_hw_state);
>   
>   	/* FIXME convert MTL+ platforms over to dpll_mgr */
> -	if (DISPLAY_VER(display) >= 14)
> +	if (HAS_LT_PHY(display))
> +		PIPE_CONF_CHECK_PLL_LT(dpll_hw_state.ltpll);
> +	else if (DISPLAY_VER(display) >= 14)
>   		PIPE_CONF_CHECK_PLL_CX0(dpll_hw_state.cx0pll);
>   
>   	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index f1e41f009bb5..0be4aad0efcc 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1843,6 +1843,36 @@ void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
>   	intel_lt_phy_transaction_end(encoder, wakeref);
>   }
>   
> +void intel_lt_phy_dump_hw_state(struct intel_display *display,
> +				const struct intel_lt_phy_pll_state *hw_state)
> +{
> +	int i, j;
> +
> +	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state:\n");
> +	for (i = 0; i < 3; i++) {
> +		drm_dbg_kms(display->drm, "config[%d] = 0x%.4x,\n",
> +			    i, hw_state->config[i]);
> +	}
> +
> +	for (i = 0; i <= 12; i++)
> +		for (j = 3; j >= 0; j--)
> +			drm_dbg_kms(display->drm, "vdr_data[%d][%d] = 0x%.4x,\n",
> +				    i, j, hw_state->data[i][j]);
> +}
> +
> +bool
> +intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
> +				  const struct intel_lt_phy_pll_state *b)
> +{
> +	if (memcmp(&a->config, &b->config, sizeof(a->config)) != 0)
> +		return false;
> +
> +	if (memcmp(&a->data, &b->data, sizeof(a->data)) != 0)
> +		return false;
> +
> +	return true;
> +}
> +
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 6e67ae78801c..e93e5becc316 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -8,6 +8,7 @@
>   
>   #include <linux/types.h>
>   
> +struct intel_display;
>   struct intel_encoder;
>   struct intel_crtc_state;
>   struct intel_lt_phy_pll_state;
> @@ -22,6 +23,11 @@ int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
>   				 const struct intel_crtc_state *crtc_state);
>   void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
>   				    const struct intel_crtc_state *crtc_state);
> +void intel_lt_phy_dump_hw_state(struct intel_display *display,
> +				const struct intel_lt_phy_pll_state *hw_state);
> +bool
> +intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
> +				  const struct intel_lt_phy_pll_state *b);
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state);
>   void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22381BE0040
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 20:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF04110E8AA;
	Wed, 15 Oct 2025 18:12:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XvntPiTg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C423010E131;
 Wed, 15 Oct 2025 18:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760551963; x=1792087963;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=ZX8B85htFjIlNj683vqETZrl2bSllBhAvA5r3SIkbdw=;
 b=XvntPiTgnsxGirP0CyUmqBDTN0tZVUrHuAA9IMNMU9szQ8+ol7iEOiRd
 l6FYa4uwC2lT6e4d5sY3sLZR5Kk4G3T+nC+D9r3Be70lYXnA3jqe20Mc6
 LMevUGKoEansjeTnQvmafY/p4C/pUPPRTxWFzrPdtbrYHVD0J8tvultN1
 V9O9aB/ShElr0o3bNJ2oyDzRQ1rzwTBmXJ0MpaPNf1BomhTs2gBZlQXkm
 86iiSJQTDSkyh93fxxfupkxBQ5mbGNBWu9FMNpikgnq/ZnlIbskCqa3Yx
 X8/XOYbkvWpyz+MwIWtrrQdarjhlzkUUTSgbTOO5bFU6QgtUT9zySs6tq g==;
X-CSE-ConnectionGUID: S5tw1OciQ5Sn1MCi9dVHyg==
X-CSE-MsgGUID: CzYSdE3ETA2DiwWc9l6g+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="66388702"
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="66388702"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 11:12:42 -0700
X-CSE-ConnectionGUID: EEqzfQZ3Rja0zI0gtq7u1A==
X-CSE-MsgGUID: jRlA40mOTIqg/MPtEfJs1w==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 11:12:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 11:12:41 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 11:12:41 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.26) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 11:12:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p6usD6fRal1BZYCpGdfF0UQ/xlawZteYczL/1vCh8LqWz+YhakItVcz/HegbpRd6hukiUcK0bAbzgy6w/qaGN5/Vc6i48xHQNTygYHihvOtx3S4RMY36g62NsPuRok3Ro4W4CYQhlAMkBcdYJpzbW0RaG36y5Hml7OQNGpUcZKi8ACglSIM2yWwztUZCoSNuFPHgQVhuEXJ/cBNjFXYX2L8pCstblC0yiCsJZF+x1Z/KYvv22wLEWtYt0btJcCKgu5cCABCQQpVnXYGL5ixGZnjoxR78LuR8IIRVf1dOYapYRoAmZTbausxHl8UTT29e0WqGI1yOwFDNZ8D4VoBY2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aUGoTLnhZ2+HEAB2FUHywclloUmT/kPIO3ph8OMmLWQ=;
 b=qC3aWKXDP9qcg4gC+xIpdQEBrlCAqRTOVIcrKlDny0W+0XVSX3/M3j982X0niqEOEfLCGA/NgO/x9WkjGCE6neGg35lBFtoH4hUb2l8v5k44mFOb+p4uw0aqhoDecoPkxADqMTc2/ArKF+adBuRm+2Kmc8c/RAwlEs2QBV/jGgxEJV9i6mDNos+bquKXtAyMu9Qtlqlhuhq22w2xwURtZYcLRGForjQ6fIzAZhNY9qhPE2elKLnUCCpMhB1haLiYCQ4+tbsUYufUElsuvd//Jei6BsZDrt6pqAuN3LjT/6rrfl7jPy/gEy/VJ4/ak58/IJgZHxPSSjywYtEYYkITuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7335.namprd11.prod.outlook.com (2603:10b6:8:11e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Wed, 15 Oct
 2025 18:12:39 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 18:12:39 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251015174830.GN1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-6-d2d1e26520aa@intel.com>
 <20251015174830.GN1207432@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH 06/32] drm/i915/xe3p_lpd: Update bandwidth parameters
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Wed, 15 Oct 2025 15:12:34 -0300
Message-ID: <176055195453.3168.13465856329598949210@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0384.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7335:EE_
X-MS-Office365-Filtering-Correlation-Id: d03a814b-43f7-4dfa-718b-08de0c166cc8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L0VkUDgxbGhYaVhJTmFXTEtxSkxJUUFOem5tUGlPd2h6OFZBZEdjelVaV21V?=
 =?utf-8?B?TWM3b2tCcGk3dVg4NFhOZ21qaFdSOG5FOGdNN2dhNXZxU3AvMDdUQkdqWFAr?=
 =?utf-8?B?MnJkdjRIVTZiMjRLa0l5Z1RZakdhV2E0OGt0endDRmdLbjVGbDl2T3hGc29X?=
 =?utf-8?B?TFhtN0gyLzdZUGRuY2psejZJK2NkRlpwdzBhM09RY1l1SzVGMUdkQXkzRUJx?=
 =?utf-8?B?dWllWEQ4eWRLRW0yNC9kcmV5K01qeWVSTFBYNldnUU9kQWN4bUpLOFdCbnVK?=
 =?utf-8?B?RGM2NFcrc0o3bGV5VE92VlplVnNFeWNlZmVGVm9HRUVkUDUrc2RPRm9kckhn?=
 =?utf-8?B?UzRvVFB1SlpxaGk3S1U5OENwazgrYit3QkwxZWx1cENrcWZzQUhDQzdQSDNk?=
 =?utf-8?B?Y3NaWnEvbDlmZUhPMmtKak9OZzZneVgzaUhJUUxyMDh1RG1kM1IvdHgxVUdu?=
 =?utf-8?B?NlNaUmc4T29lUVA0SmpSQ3RmL2U1TEhpaHorR0hWOWJBYm9yOG4wMGE3OUY3?=
 =?utf-8?B?YVQ3NzNKUThCdjVwam11M09vSXdCM2doOERDSVlBT2tUVlJiclk3aHZnT01D?=
 =?utf-8?B?Mi94MmFuR1pJcmFySGI4VW5GT3pMU2RCclZiZ3NaeVgrZ3p3bkJUWTdIWHhR?=
 =?utf-8?B?Q25FR0NTTy9IdTNmbzk5V3RZTEwyODJvSndQRUNITU9mRStoQU00eXUrengz?=
 =?utf-8?B?SnZ3MHNxTE54TENFc09EdzZ6alVXRGgyVU04Vzl4ZlhtVk1ILzZVc05vamFT?=
 =?utf-8?B?Mzc2d1ZyaHVPUHlVcS9yRGlSbzJ3T01UMkE4eTYrMzZuQzdTNndiR0JKMkVp?=
 =?utf-8?B?QXdEdkpLOVlKZElVVmFxdTJ3UkxkZlA0K0N1N3dCbEFFWEVUTllnbDErTWZZ?=
 =?utf-8?B?YWVua0JvR1hhV0lXQllqTDVMM0xDdDZwNWRBdTY5TXEyRjJVQmxGeXlTWkFl?=
 =?utf-8?B?VXB1UlllczY4Q0wyR0pHc2ZmMy8zSlk4TEVuTnlrV1VhVVJBdGRJMW52c2RH?=
 =?utf-8?B?SERFTk14K2hFRVd2alVIZXhUb1dHM1hiQ3U4MEN0VmxCdElncmhuZndMdVNl?=
 =?utf-8?B?cnNPQ0xoWWFNRFdTMnkzV0VJV2duWnpDZUNpaWFjNDBJdlIxVEtsYjVjMlph?=
 =?utf-8?B?VSt1bE4xVEEzYXNUN2ZVc2QxZlc1UmJIZnVZeWtQZUNjNmVaaDc0Ulp0ZXdW?=
 =?utf-8?B?V0U1NFRtMUxQRERkS2pQSW13SHJGZkNmTE5RWHhPeDJkUTF3R24xL3djQjZB?=
 =?utf-8?B?SXR1dTFaZlo0bUo3RUFWWUZsNEJBOWlPcWw5U21QS25ydElyWUNIV3FDazE2?=
 =?utf-8?B?RmpqUkdMc0FTVjFIY2JlUFFJeTZmTHI5bjM3QThsOGxwcnZldUVENXA2UzQ0?=
 =?utf-8?B?dTZ3dXJOR1l4Zk41azMramp6S2ZFMmtkSXo1TlNWYXlvdUhBNTBYbmRIb1JT?=
 =?utf-8?B?N1pxQzB2T2YyL0RmNCtMcld0WVE5M0FMSVdXVkpJOEpUdFpzNFZnZlNMaTdq?=
 =?utf-8?B?N2tPZjZkMjJ0bndkdzJvdjB2c1ZLRlVuZUxZcmF1VjlwY0U3SFg5L1oxQStV?=
 =?utf-8?B?cUlOYWw1VjJQZWJjeXVZRHA0L0EwSlJkWnRDZEhNZGxvcCttSjFPLzcvbDhK?=
 =?utf-8?B?clZscjI4K1UrejIyZE1PZThmSWhQbEw0UDdacXFHNVFEZCtKR1RkSUgzaTJz?=
 =?utf-8?B?dC9mSmNSQzd5a053Y3N6VlZUUkkxZDM4VlRlVlpFeGVPV0NlVkRoVlhFY0pU?=
 =?utf-8?B?NWZOWERaSGVHSU0wMXVPbVdxTnVyZmFGWWsrdHFpN3dTcFNRZU1JUkZvUDQw?=
 =?utf-8?B?MDgvY3VBbldXRUZ4aVhsNUd1UWVZaW5GQVREY3dkUlY3d3VwVEovVDlzMlYy?=
 =?utf-8?B?OHlQaWZTYnorbjkwMFdyMjNBZ0ZXTDBNN1p6K3hvV0pXcVlKZ2MvQWtYanFN?=
 =?utf-8?Q?dcpp54xuw65s6CjrqLA0RHQzbQqhYSMm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bk9RQVBoRzJmZTBVNzFOYTU3M2xQd3hKSWRVQ2FOVUt5NEcwbTZRVGtFVlQr?=
 =?utf-8?B?SWxDZHkxN1N2K1RKa3l4T1orWnZDbEdkSWhIa1ZvUmtCMDFSOXVoOWhDN1F4?=
 =?utf-8?B?UktzdWhZVDBmQTF3bzRqU1VyMVB6VXN4MHhSRzhZaHpVWWljM3cwSnpyV005?=
 =?utf-8?B?UjNsVTM4c2k1ZWtJZDVFUm5EYzM5ekxEWHRUZmhvMzUyTzJEQ3ljN1MrRCto?=
 =?utf-8?B?OWtXZkRDTS9jQkpPZHpnS3J0OXdVSEx3aVMrY2E0ZVBlRkNVSTJQQ09tREd6?=
 =?utf-8?B?YlRnNFNpeU5oWXJKMFV0dW1pWVoyUThTSTlYRkZtMU5wai93OHh6TkNDYmJD?=
 =?utf-8?B?aDlMa1JFSjhRZzBRZ0hNZE1KRWs1U0oxa0svb1N2UW5yKytzeldkSXdVTDRU?=
 =?utf-8?B?Yk50aXJJdys0dEFUajhld0FSNHFZVEtodm5DVnZwdmFSU0x6M0xHYXJFOXVs?=
 =?utf-8?B?d0IrNWE1TkZBV0lnYitBWDJxY2MySEpuUkdSODZXdys3UkJpNDVlOWhhdVRP?=
 =?utf-8?B?cVFId1plVnZzQjlEK05tZnFMdlVZbTZNNExwZjFxMm1DY2kxNFNRRkQwZCta?=
 =?utf-8?B?N3ZtWWYxcFBIVFdVZ0tseVZSMlAvSkh6Z2w3QW1FQXU2Tmtud2I4OFJmRTZ3?=
 =?utf-8?B?YW9HekVRSkk2THUxYTQwNG9ZOUhkRnU2SEpNYnAwRVo0ZE9kU25Lb01WYVds?=
 =?utf-8?B?S2dPUmRPSW02dkpDWXNTVVF0SDBrU2lvREdNZWgweHFEeXQ2NDVNRnE2TlJa?=
 =?utf-8?B?dmtNS2pUa2dmUG9NN0wwYncrQWxMNnFMeHArVWJKS3R5cUxwQitVTFdaREJM?=
 =?utf-8?B?aThQNXM2STc5N2xLaTVFOGlFZzRoSnhFcUkyNmZZVHAwTWQ2L2hKVlpEeVJZ?=
 =?utf-8?B?TkNaLzFjNVJ2ejBxQVAvTHNRQzg2aGRuYks5bWZhYkhpanc3YWFVanhJcFJt?=
 =?utf-8?B?WUF3Yy9pWUlpNGJ6MHc2THAyVHd6TGcrRmxaSkdSaHgrWlJqakp4WExCR0Z6?=
 =?utf-8?B?THMvU2N2dzh5bXBEUVVNN3QzeFFUVkd5Q2MycHNRQ3o3N0ZXcHV5UitRMlpK?=
 =?utf-8?B?SUFBenVDUHB5cjArVmhxbEhUSWtHSUptbldGK0lsM0NLMUtLSzlpZTRtMUhL?=
 =?utf-8?B?RmNpeFpGVkUwOGtBd3RjU0NRcHBJZDl5MGtGWUZEQXRSQXhxcGFSUmtpMVlo?=
 =?utf-8?B?Wnk5bHozWUYyU282KzBtQzdpOHF0TjN0SGZvSi85Y2FiYk4zSHc4QlYvYXg1?=
 =?utf-8?B?bGdyOVIxak1Bc3MzMWx6c1JYUHYvc2wrd1RlRHVycXdKYVVxVjZDdXFOTGZO?=
 =?utf-8?B?UUxwYk1vdGNXdWJ3d1A5cXd5S3IxRGFCSXBDVlFXcUhpMkViNHRnZHU4Z0tH?=
 =?utf-8?B?S3NiaUxsYjZ2Y0pndjRORjVTTE44ME5KWHVONVNlSkRCMzdFWnNOMUtWTGRu?=
 =?utf-8?B?c25vL0FNQUxsQS93dGhrcXV6aDJiYnNpK3JiVUtrcjMrZDVDb05rVlNNSXlz?=
 =?utf-8?B?azExN3VjSkFEb3lHa1gyaDFTdFUyTVdoMWRLM05YVG9YbWI2YUI4ZUM0c2ND?=
 =?utf-8?B?akk5ZlJWcmdGMENXOUR0Rno3eWhjeW5iWWhMNWIwbVJWdnRxSjM1T3c5TXp4?=
 =?utf-8?B?QXVMQi9FUEI1dFFOeThJTkpxVi95R0tVQkdyd2R1ZWxIWlJDa1BHZUJJbXZB?=
 =?utf-8?B?SGFtN0VybUQwcFdOdFJYeHhVZEQwbmlyZi8xZW9ZRmhBM09pU1QvVXBMRTY0?=
 =?utf-8?B?SzBqamsrT1VqUjByajdjK0d0bXZNd09SRTFscTE1RWtCM3l2c3FLaG1hVmVp?=
 =?utf-8?B?eDZxSG54c241Ri9KcDBLSnBHYVU3eHcxaGtHNDNTU1FIbzlhazdKc1g4bVpN?=
 =?utf-8?B?ZDJyNWNESjhUMjl4NmszZG5GK2dhSXI4Z1Z1bjR4bHZRS0ZCNUlLQXgxSnRp?=
 =?utf-8?B?OUd1Vk55R2M1S01EZnFBd0dhVVQ4MzlpYkVpaEloSkVRZndhK3haK055Nzcv?=
 =?utf-8?B?M3NMSUw0OXFPVDlVRXFlNzM1aGpyVm5FS1RiWDdOWERQZ21FWGJNbTNpUnlO?=
 =?utf-8?B?ZjI2VjRnRzNFOGc3VE1NdjlleWNNTWQ1L1ZSRWhhOXF3VUgzVEFjMDRLS0tJ?=
 =?utf-8?B?UFdoWnNxMEJGZ1B2Y2RRcjNjUGdUdnN2QTVKdnZabjlOb05QcWtMM1ArYktR?=
 =?utf-8?B?TEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d03a814b-43f7-4dfa-718b-08de0c166cc8
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 18:12:38.9532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FIMHlGHosFLRkKVtJOPH/gtMLkE6bgvrTsfh4qDtc9XK83orb/BjObSWC4Q83Whk3MY9FMl63pwir+8M50EqLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7335
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

Quoting Matt Roper (2025-10-15 14:48:30-03:00)
>On Wed, Oct 15, 2025 at 12:15:06AM -0300, Gustavo Sousa wrote:
>> From: Matt Atwood <matthew.s.atwood@intel.com>
>>=20
>> Bandwidth parameters for Xe3p_LPD are basically the same as for Xe3_LPD.
>> However, now Xe3p_LPD has the ecc_impacting_de field, which could impact
>> how the derating is defined.
>>=20
>> For the cases where that field is true, we use xe3p_lpd_ecc_sa_info,
>> similarly to what was done for Xe2_HPD.  Note, however, that Bspec
>> specifies the ECC derating value only for GDDR memory.  For now, we just
>> re-use the value that was defined for Xe2_HPD, namely 45.  We need to
>> confirm with the hardware team what would be the correct value(s) to use
>> for the ECC case.
>
>I think we need to use .derating =3D 10.  This specific block of the bspec
>is a shared block that applies to lots of IPs/platforms.  GDDR isn't
>relevant to an LPD platform and .derating =3D 10 is the documented value
>for all other types of memory.

In that case, do mean we should drop the patch adding the field
ecc_impacting_de and unconditionally use xe3lpd_sa_info?

In the meantime I'll try to get clarifications from HW team on this.

--
Gustavo Sousa

>
>
>Matt
>
>>=20
>> Bspec: 68859, 69131
>> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 21 ++++++++++++++++++++-
>>  1 file changed, 20 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>> index 8f5b86cd91b6..f0940ff9d19b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -461,6 +461,20 @@ static const struct intel_sa_info xe3lpd_3002_sa_in=
fo =3D {
>>          .derating =3D 10,
>>  };
>> =20
>> +static const struct intel_sa_info xe3p_lpd_ecc_sa_info =3D {
>> +        .deburst =3D 32,
>> +        .deprogbwlimit =3D 65, /* GB/s */
>> +        .displayrtids =3D 256,
>> +        /*
>> +         * FIXME: The Bspec only shows that derating for ECC should be =
45 for
>> +         * GDDR memory and does not mention other types of memory.  For=
 now, we
>> +         * just re-use that value, but we need to confirm whether that =
is
>> +         * correct or if there are different values depending on the me=
mory
>> +         * type.
>> +         */
>> +        .derating =3D 45,
>> +};
>> +
>>  static int icl_get_bw_info(struct intel_display *display,
>>                             const struct dram_info *dram_info,
>>                             const struct intel_sa_info *sa)
>> @@ -812,7 +826,12 @@ void intel_bw_init_hw(struct intel_display *display=
)
>>          if (!HAS_DISPLAY(display))
>>                  return;
>> =20
>> -        if (DISPLAY_VERx100(display) >=3D 3002) {
>> +        if (DISPLAY_VER(display) >=3D 35) {
>> +                if (dram_info->ecc_impacting_de)
>> +                        tgl_get_bw_info(display, dram_info, &xe3p_lpd_e=
cc_sa_info);
>> +                else
>> +                        tgl_get_bw_info(display, dram_info, &xe3lpd_sa_=
info);
>> +        } else if (DISPLAY_VERx100(display) >=3D 3002) {
>>                  tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_inf=
o);
>>          } else if (DISPLAY_VER(display) >=3D 30) {
>>                  tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation

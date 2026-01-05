Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E05CF50D0
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 18:44:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DEC810E12D;
	Mon,  5 Jan 2026 17:44:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X54ahVOE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8734010E12D;
 Mon,  5 Jan 2026 17:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767635086; x=1799171086;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=WTIyoThdXwb/d5UCLw95GtXeXibSF/7H2mE/a0pYC6Y=;
 b=X54ahVOEjCBK2Ci77JU/oxTZ7RYc3Bx90UyQupJ8SE1uKbuA1V9TQT40
 69Ag02FEoYXOYaAlfXrFexuObyZilDwYUIiss9OKBt3gNOj2iAuEn6ET0
 k+X1FgHxyaVAw59PDyLUh0/pq3EIDShbHw2FtOI7f1vOMr0img0/GtSXJ
 2pMQkXdToXLH0GkW0yr5uUtUInp73hFE78OajEqr5aFm5lm2IH+i9J0jU
 zluSd1Wdb4kCrwhuS7L8MiGkrGVH5BG++vXf1zsjJ3F4ILNza6SQM4wWp
 MLJA5Vz94qa/0/e0Gva1yGOvtlevj9YaO27Tpfv7h3DaDguu7xrZwWThJ A==;
X-CSE-ConnectionGUID: emhEobFIRa64lOOaDaV4jQ==
X-CSE-MsgGUID: bj2Urn2SS5q+XAHi6VAShQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="69053543"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="69053543"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 09:44:46 -0800
X-CSE-ConnectionGUID: BlI5mYYoSravSGx3zR4U0w==
X-CSE-MsgGUID: LkaX5ggjR+u6Z/5c3TZLPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="201564969"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 09:44:47 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 09:44:45 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 09:44:45 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.11) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 09:44:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zz7/yTCskn1TXdEBzB4d0IrEylmw0J8cxQhhhDyNInvAtVNKbAagj2wRELEtXFPRg1ICb5MWvlqnScOLTnBLI9Vtu/y1P1k1vi4XE9oCPwb6/yr2tj4fIud43lcUTFxbJmSpcKclBpBmeJ75OZZ7r2pJiMPw7mrNuHLxb4O38Cm8Yfir+pbFnxxvMGHMwK1R8pd3efn2EjmJf558d8Hrq93YpBw1oGR000IGL0/VdVK7ADulGp1WuqqzlftoXkoCMNCwtiJ/e5z9BSJdkquhTpXfW6o3d3uZ2EbHvtMWoup3P5FIMjASK012utXmcB0b9YZJfuQZIk/nEZru782jHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yAbYi1TPWhaBqxY38PjalR8cSIxxfyazlqZkvjYl6YE=;
 b=wfBgHWW24UJJEJedF84k4T0H5qTs5ngaqsRPM5zhBwg5JnZSQKn5yFKRxKWw145JY5AxjTaGEoRghIno3bq+yjizaLmgTQ+kxI0puN743yAbT+CruCsCFsKfNJuqcavfQunJlWMkoGEnfaPiHeIxruIaBtSP98vRzu9cexh32HdZ2H6TFGi36KaeBzBplaS8f5222nXVLDB3/kQcxUamvmPRt+tXZ4ccwY8ndkFdNd0DfgiETFFIOORnsK3sGufzgnSretz8M/Nvy/OxoSYo4jJzJ2Omg57a3rjSOFoW+TIkmWWMMPzLU9tVTeqQfQusOvmTeNaVDpjqPoV3IbcZtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB7398.namprd11.prod.outlook.com (2603:10b6:8:102::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 17:44:43 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 17:44:43 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260105104858.283686-1-vinod.govindapillai@intel.com>
References: <20260105104858.283686-1-vinod.govindapillai@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: update the wa_22014263786
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <vinod.govindapillai@intel.com>, <matthew.d.roper@intel.com>,
 <ville.syrjala@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 5 Jan 2026 14:44:39 -0300
Message-ID: <176763507911.9480.16301562560632046947@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR05CA0101.namprd05.prod.outlook.com
 (2603:10b6:a03:334::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB7398:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bc12dbf-bb78-4bc0-e699-08de4c821be0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUlKNlQ2MG1GRStiTXFQZWhNRXFIbEhJbS9UQnZ1WnRSSXEwclFzUnhiQkpD?=
 =?utf-8?B?QVd2aGFCcWFPRE1BVVl3d1pocy9YT29nTWJhUHdYK05ndXNZYzMzUGVKSmpt?=
 =?utf-8?B?cGFqYjJ1U21LbGZkMnlUZ2dkWDdsZmxxWjZOaXNVT1o3Tzdhb24wODBUVktI?=
 =?utf-8?B?OWVaYWtoUjBBNm5QbVdxZ3h0cHgwK1BIb3J4a2xhaHZZdmZUbHEyM1ZvSGpB?=
 =?utf-8?B?SFk3SG82alJsMWk2ZThudUZlVUZWU1J6cHFpeUE4Y0ZNNEs3TmpKMkk0L2ZE?=
 =?utf-8?B?SFpUT0VoUVFvd3puY0t0UW4yNHJMb1YvQkpDY3NIS3lUNlRQa0FaWGZzRzhk?=
 =?utf-8?B?WXR2OGgxY2E5Z3BOUXNOOE1TYWZ5QW9uMzloenZLdDhIZUFHZSsybENOS1k4?=
 =?utf-8?B?YnJzQjlrVG1UT1ZHY01obC9MSGxvNlhPQ3pKaTN2ZUlJSnM1clJPS2ZMbGVo?=
 =?utf-8?B?MFZXVDVjN1FkOVRJY3ptSS9paFRhNSt4MzNVZTRiMEdyNHlOVmx0RDR3em85?=
 =?utf-8?B?U1hIV2Y5VjU1a0dBay91RzZDTkFHdTdwTndZZlo0blFsSm5VRHhZNDlRWEJ6?=
 =?utf-8?B?dHN5OE93Tkxpb1NkcXBUcVhzaTFiZGhraGp2d0pMZUFzK3pWQmpkT3dNdWtN?=
 =?utf-8?B?U0MwVlc3bHVYdllRTTU3MlZlY1l4NGRXN3F1KzNLSVMyWit0M2tock8yOWND?=
 =?utf-8?B?aVk4Z0ZFbGw0TVE4TG5KOFN5Qnc1UEkrYmxFNFl5cVFZMVNxL1AvbnN5b3BO?=
 =?utf-8?B?REoxWjRHaWU4ZTNVSFdiaTYveXhZM01uUW5vQ3Bqb2ZscG9wVG1Jc2JFNzRu?=
 =?utf-8?B?WjdteGlLNUZXUFRkODlvbzF0WjhVQlhBcWhmMWxqOW5tbTh4L1BNbW9rSGxl?=
 =?utf-8?B?dWdSbURXTFkyMjhlRCtHcWtMTGtCaEltekpMY2dvaUlpdENjWVBtdm8xeGJL?=
 =?utf-8?B?NnZUc2dGdE5SUm1lNnQzRHJ4U0ZLZFhFL2F5SUtIQ1lKZHJLRWhOaUhMMFZW?=
 =?utf-8?B?RFVFY0M1U2VFVE13RXFTQXY2OVhWZTNKWmRNWllJQUNtZ2xiZTdMS3gzZUli?=
 =?utf-8?B?TnZpdHJycGNlalZCUitJVWVNTC9xS3RnbThmeFF0bThuK3dxMjJLRW5mWGJo?=
 =?utf-8?B?ODZTNXhLMUczTkRsWE5RMC9oVkVBb0Y2NlVTRzMra1ZaM0RLaDZuYlFGQ1NH?=
 =?utf-8?B?Rm1ibk5XWjV4RThzdHltNUNjZSs4M2Q4YlZzZFdOS2l5MnRmYmM1UlRMRmRo?=
 =?utf-8?B?OWhOVkF5RHpZOHBOTG14Q3JlSk1abjdVaDI2Q3lVU1E5c3FSTHNaOVp2NndJ?=
 =?utf-8?B?UDN1bFBDZENuYXpIOEVmSFZNVENHa2ZSZWlVWjdqQlF6Qnpjck5sMldvM01s?=
 =?utf-8?B?VTJWWkZoMkRUeG5TdFlTNE11K2tEQ2Q2TXBvb2I3RnVTMmlZdWR3eHFKT1NY?=
 =?utf-8?B?V0N1MlIrazM1dks4dmRUNEVjbW90aUdJdklSeTVnSTE3SlVleU5WT1owWmp0?=
 =?utf-8?B?TWkyVnUwMVBDZXpnYkN6bmtYWVdmZzNreGZOMWdsU2M3RGtHOWwyaDBqMzBn?=
 =?utf-8?B?UWhkV1Y4aWVpT2UveDl1bDl3aHY3VVJBZlc2RGRYS3M0ckZUSWJNS1o5dTdE?=
 =?utf-8?B?TGRSUkdjODBocWRSOFo2N1NqcXZibW5WQlR4U1VoaDZpc1BHYjhHN05TYURx?=
 =?utf-8?B?blhOaHpMOWFlU0d2VG5wYVVUdE1QU29NeFR3Mk91OU9XQlpuYkxDRk9JQzdr?=
 =?utf-8?B?VnAxYVpOeE1BWWh6QlhKZURsMWgyV0hBZ3NITXJ5QnowNHBGL1pKdVNESXBx?=
 =?utf-8?B?bWZ3WkcxTWxkQ08rWlJGNTU3b2JJdUp3VmpkR3Y4WVdma1NEdk9ucjQzRTI5?=
 =?utf-8?B?bzdaWlR2aDAwakVRUmVUc1V5S21TV2pPT29Ia1B0cGVIYzc2ODkvbTh6disv?=
 =?utf-8?Q?um5eYKROYR6b0QLsf2EEH79pFdm3+g6a?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlYwM0FhWWx1T0R2Slg0cGNKaHh3SXZVTzU1TXdSZDNwa1pQY3BCTGFxV1By?=
 =?utf-8?B?ZkhlcWltWTE5TnZqSk1Iclk1UUdUY3BZTEdzYzhDQS9sWEtlOTQwdWNKeEcx?=
 =?utf-8?B?VGVmWFpUWjZlVkcxK2RaVWlIWENJU0ZEUFpiVHZwc0pCS2VNclc0SzZQWDJP?=
 =?utf-8?B?Z0FRWjdKVFdYY29yb0JVbDVqbHg2NDdzdW94cng5Z3BZVmNUYzM3cDNqWlJr?=
 =?utf-8?B?aHFINjdiTTM5MGRMRWt4NkE4MnVOQjZOdjVCRFdCd2F1emt5YWl6djBqbExD?=
 =?utf-8?B?NnpqQXUyOXdaU0lNSUNwdGZzTGh1N3lxNnkyNVhEQlkyNlJ2M0pZVTFGVVFu?=
 =?utf-8?B?REhpZXlBZzFOeXlXMzNuUUI5ekpRMUxzNjdhTXQ3eVppSFBUUDFPOEpiSWJX?=
 =?utf-8?B?V2dIQ25INHJ5elVtU25OSE1JRFlTL3huNkF4MmQwY0Vzb3JxeFo0d0xCdmgy?=
 =?utf-8?B?eHlNZjhqM0c4UkpIMHNGTndmRW1aZkRaWlkwbVRram5JbVNSa2t5b3BlTWxn?=
 =?utf-8?B?V3F6dFc2dzh2d2xYR29CV21RZjlwRzJVakZXQ2lxM0Z5QjY0SlVGTFhncGZP?=
 =?utf-8?B?TElXdzF3aEFac2ZGUVJqQlZ2VFB2WVVYWU5SamVzYmdzaEFGdFRtSk5sUXpa?=
 =?utf-8?B?Qm9lMzI1RldsR2ZJSXdtUEk0cUhMNERxUldVanduOFQrSTZvNVNhd2tDNzgv?=
 =?utf-8?B?Sm4rYTVUajVDc3ZPaUdycTVsSlJPMUJmZ1VxQkJnek1xSEl1bWloV2E5ajJH?=
 =?utf-8?B?UEVjYSs0dWRJRTllejBNb2FwaGxuT1hGalZTa092NUNOSTBkd251WUtjbXJn?=
 =?utf-8?B?dnNSNkZBWUJJTzRNMXo1c0NOYW9FbEJmZXlxMGlwZFp0RDFYdkxySTQyRnFw?=
 =?utf-8?B?V3lJMloyYVA5NG9oTGh3cHh2VlZsZGF0aDkyM3FCMWVML3JEellhR0thL25q?=
 =?utf-8?B?YWJPZElYOGpUbHc0WEpuZGFiN1EvT05XQXRYZEFPSG1pTStuaVJKSG9ybyti?=
 =?utf-8?B?WDlvaFRjOTArYStUSXdLK3VjM0U2ZFExdkE2N1psazJsZnFTZ2dHMjNES3kv?=
 =?utf-8?B?RVl2UU1XRnVGZkd3RSsrU2N3NXQ3U210QTB5dTZFNWkwblpYQ1NMOG9jclBE?=
 =?utf-8?B?RnFXdUlxTjdNa0paVXRmaE9GZmxOS3VBTk1QSXFMcTV0UzZRcURYUTJhZFpx?=
 =?utf-8?B?Y29YQlBCVVF2Y1ErbXl6MmxRazloZjJNQ3pqT0FzTllHVzhDc2x2YWlOQ3hI?=
 =?utf-8?B?d2drbFFzaVdaa2RWZjBsNFZlbGVtbjc0SjlRQ2NTaG5zbkN5UWRTek9kaVFF?=
 =?utf-8?B?eWNSME1oY2t6M0ZMY2Z6VHB3cmZlWG9uWHZvVHVBZHVlaWV1U2tNSUVnZkp6?=
 =?utf-8?B?MWZKTjh0bFowblJ3cG11dWtBQURXRG9zOTN2aVFaRUhiL3RVTVpzdkVMSEJI?=
 =?utf-8?B?WEhBQk9mRXJpS3k1OFRkTlVkTExheGQrTDFrSFp6SUZ1TG50a3BDcXBlNnJq?=
 =?utf-8?B?aThrNHBqTlhhdXBGQ0k2c2txUDhOdkF4NXZFcnFBT2pFa21vRVNheHhDTFJr?=
 =?utf-8?B?b0ZOd3VsazhuMHptYUw4SVVrVURlVTdkczZUWXRPRUxvMlErWCtCa3hTYzRz?=
 =?utf-8?B?SXpIQ3ZHbU1KZnpWT1RLL3lPRDl0MFlGU3N3eFRHM0FBQ09HRU1CQlJqSFdo?=
 =?utf-8?B?enVkcnFIVkR3RnVaSm9nQ0FPdVhBMjlESXpUM1FEa0pxaTQxM3Vhb3JPQmk1?=
 =?utf-8?B?N3VBSGxQZnF5R2p6L243K1FUb0FndzBUZnpQbTlSdG1vSHJ0ZDdZZEpyZlVx?=
 =?utf-8?B?b1M5SVZDL1VVQ294Znd4Rmp3LzVTSFNOdUc0Z1RMelREcFFDUmZEN0Y3Ry9i?=
 =?utf-8?B?Vm9BWWR2Ri9UeitxRld3R1hncGtHR3FpeXNyTWhQenp1TVIzeUhRK3cvZ3dI?=
 =?utf-8?B?eWdhUnlrZTdFczJSdTk4OE1jTGxWTkI0SU0va3NBd3ZNajJwNmJJR3o1NmNG?=
 =?utf-8?B?S0FnQklEOEp4eFpwRHFiNzJIUUdHU3lNWVUxQlVRU1NjRXIwTHJuN3RVSHVV?=
 =?utf-8?B?d3Zha1h0cTRzQTRHWjZxdUlXZC9ERm5QaFFZdGFGeFp4ZDVYZVNLVWVJMytx?=
 =?utf-8?B?UFB2ak5tT1JwNm1mRWhNT3ZuY3EvNGRMVmdsVVlydG1VZE5YZ05tLysvQXVW?=
 =?utf-8?B?WjdKNTRyWG92TE9xRnJpNUdjY2tGbWJnRFJqdGlUK0ZsblJYTUY0SkY1TFFh?=
 =?utf-8?B?d0UzL25MNkpSZkhqRmhuU2JiRWQ4Q2JxY1JvUFJseFAvR1o2elFxVHNBUjFJ?=
 =?utf-8?B?VzIxMXMvNDJ4cXh1QmRDLzJQNTFuUW5yZE1HcHNoeldNdVVtZlI1Zz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bc12dbf-bb78-4bc0-e699-08de4c821be0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 17:44:43.1736 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lA5TUkpN13KP/yYbmrKwxP91vER4aL7KYbwM3aSnU/yDFMNuoZkzzxRKmsuMgYYZ8/mdtmLQIanXa4N2a4oZ0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7398
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

Quoting Vinod Govindapillai (2026-01-05 07:48:58-03:00)
>For DG2, wa_22014263786 is applicable only if the number of active
>planes is greater than 1 in pipe A and pipe B. Cursor planes and
>any planes on pipe C or pipe D are not considered for this. As for
>DG2 this wa condition is based on the number of active planes, the
>check is moved to the fbc post plane update calls. The force slb
>invalidation chicken bit is set/unset based on the condition. For
>the other platforms where this wa is valid, the wa applied before
>enabling the FBC Unconditionally as before.
>
>v2: wrong version send as the initial patchset
>    for DG2, active planes check should be done all pipes not just
>    the FBC pipe  (Matt)
>
>Bspec: 54077, 72197
>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_fbc.c | 62 ++++++++++++++++++++++--
> 1 file changed, 59 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i9=
15/display/intel_fbc.c
>index 155b308ed66f..b01f9622510e 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -915,6 +915,15 @@ static void intel_fbc_program_cfb(struct intel_fbc *f=
bc)
>         fbc->funcs->program_cfb(fbc);
> }
>=20
>+static void fbc_slb_invalidation_wa(struct intel_fbc *fbc,
>+                                    bool force_invalidation)
>+{
>+        u32 set =3D force_invalidation ? DPFC_CHICKEN_FORCE_SLB_INVALIDAT=
ION : 0;
>+        u32 clear =3D force_invalidation ? 0 : DPFC_CHICKEN_FORCE_SLB_INV=
ALIDATION;
>+
>+        intel_de_rmw(fbc->display, ILK_DPFC_CHICKEN(fbc->id), clear, set)=
;
>+}
>+
> static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
> {
>         struct intel_display *display =3D fbc->display;
>@@ -946,10 +955,13 @@ static void intel_fbc_program_workarounds(struct int=
el_fbc *fbc)
>          * Wa_22014263786
>          * Fixes: Screen flicker with FBC and Package C state enabled
>          * Workaround: Forced SLB invalidation before start of new frame.
>+         *             For DG2, wa is applied only if the number of plane=
s in
>+         *             PIPE A and PIPE B is > 1. This wa criteria is asse=
ssed
>+         *             seprately on every post plane update call to check=
 if
>+         *             the number of active planes condition is met.
>          */
>-        if (intel_display_wa(display, 22014263786))
>-                intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>-                             0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>+        if (intel_display_wa(display, 22014263786) && !display->platform.=
dg2)
>+                fbc_slb_invalidation_wa(fbc, true);
>=20
>         /* wa_18038517565 Disable DPFC clock gating before FBC enable */
>         if (display->platform.dg2 || DISPLAY_VER(display) >=3D 14)
>@@ -1887,13 +1899,57 @@ static void __intel_fbc_post_update(struct intel_f=
bc *fbc)
>         intel_fbc_activate(fbc);
> }
>=20
>+static void
>+dg2_fbc_update_slb_invalidation(const struct intel_atomic_state *state)
>+{
>+        struct intel_display *display =3D to_intel_display(state);
>+        int i, num_active_planes =3D 0;
>+        struct intel_crtc_state *crtc_state;
>+        struct intel_crtc *crtc;
>+        enum intel_fbc_id fbc_id;
>+
>+        for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>+                u8 active_planes;
>+
>+                if (crtc->pipe !=3D PIPE_A && crtc->pipe !=3D PIPE_B)
>+                        continue;
>+
>+                active_planes =3D crtc_state->active_planes & ~BIT(PLANE_=
CURSOR);
>+                num_active_planes +=3D hweight8(active_planes);

I don't think this really counts the total number of active non-cursor
planes in pipes A and B.  What if this display commit is for only one of
those pipes and the other one is already enabled with a non-zero
non-cursor plane?

>+        }
>+
>+        for_each_fbc_id(display, fbc_id) {
>+                struct intel_fbc *fbc =3D display->fbc.instances[fbc_id];
>+
>+                mutex_lock(&fbc->lock);
>+
>+                if (fbc->state.plane)
>+                        fbc_slb_invalidation_wa(fbc, num_active_planes > =
1);
>+
>+                mutex_unlock(&fbc->lock);
>+        }
>+}
>+
> void intel_fbc_post_update(struct intel_atomic_state *state,
>                            struct intel_crtc *crtc)
> {
>+        struct intel_display *display =3D to_intel_display(state);
>         const struct intel_plane_state __maybe_unused *plane_state;
>         struct intel_plane *plane;
>         int i;
>=20
>+        /*
>+         * Wa_22014263786
>+         * Fixes: Screen flicker with FBC and Package C state enabled
>+         * Workaround: Forced SLB invalidation before start of new frame.
>+         *             For DG2, wa is applied only if the number of plane=
s in
>+         *             PIPE A and PIPE B is > 1. This wa criteria is asse=
ssed
>+         *             seprately on every post plane update call to check=
 if
>+         *             the number of active planes condition is met.
>+         */
>+        if (display->platform.dg2)

I think this should be

    if (intel_display_wa(display, 22014263786) && display->platform.dg2)

, for consistency.

Also, we probably should drop one of the comments to avoid two
duplicated descriptions of the workaround; maybe drop this one.

--
Gustavo Sousa

>+                dg2_fbc_update_slb_invalidation(state);
>+
>         for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
>                 struct intel_fbc *fbc =3D plane->fbc;
>=20
>--=20
>2.43.0
>

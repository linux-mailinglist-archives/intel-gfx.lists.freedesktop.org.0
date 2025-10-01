Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A67C9BB0070
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 12:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CEDD10E33C;
	Wed,  1 Oct 2025 10:34:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lfRaANf5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C35810E33C;
 Wed,  1 Oct 2025 10:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759314887; x=1790850887;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u/nHOoqUKUbp+6N97AHkcDnglkDV+vME1V/ap5D+4h4=;
 b=lfRaANf5EsDfPkkwefsyVw82NWDa9b30oHsVQZlqfWkVCVS3U+/KszW5
 p7dkTyVBq4fn2Z/n79jxKqLjM1+a9FZMyhA3bjB3rCila0+2t/HF7zimh
 pbiJGQ1dwL/fyRjIuLZ8vB8lMYN7GerTDEdVe1EcCkgihk8QLw75h0lH+
 xE+oC5YtCEql3nzVbaLcMwnmAkxGuVCg/RB7rLjbzWmq/0dNmbPQ3sE4T
 bFanoVuxpEaIGXcMXLt3vqnKPfFV7T4JU1xnbHK3ilVtLUbDRTKf9IZN0
 ATJSR7OpG8h99YkaQi71tUjSuCSFU9LMA2th66Xg/DlHc792ZqbYt4yIV A==;
X-CSE-ConnectionGUID: 7TkbqqMcSkC9pXcDSkQsVA==
X-CSE-MsgGUID: afkZqX/OSlOAjvNaBr2QjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65403672"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65403672"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 03:34:46 -0700
X-CSE-ConnectionGUID: BmRZeotKQFGIxNxEuHkXQg==
X-CSE-MsgGUID: gSjlgdorQNC0VYULpcmRew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="178702272"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 03:34:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 03:34:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 03:34:46 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 03:34:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HQZxPTeP4EZ1Ys9XOYmoKPAlx4NQ9lEmTSTKv+bMb0cRUC955u5XgmkJtsmm3gWna2OxMwmzPK6EQfLMvFa6YNj1U78i1PJQ7I0vWg9fRD+IhKBJpobtHY4gJ8+Hgy7rfRFEYpVzxdq4Hc3T0AN8tuxudSd+SKwPKU1hokgscf9oB3EkeQGJvZ1j3EgNn/IdPOxDTM0Mh8dTIBCyEHxywjLGAjMob7U1Gzp44k4Rr7v4MPTJoYoWwivI3Co/1nuORUUEzIV3liitMacxfxZTanlpLMeyBuYDfCPWlN4Y93l4MzAOGs8sJXTwqyvbMIAtmOjDwLvuMQbf90sVS2L76A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BEEfjBKPd+4jrMCL75bOHY3cwCjaj7hLBNIYMgkXnhQ=;
 b=PsnKdJZhY7IXvFBlZmgeCfy9O1R+CV6LELKf47aeWZ/3ts8/954c9oUnk1ebNNi2wrlD0A2Sxn2CduXqsOk9zjP/hwhe80WmRwl6Z39XJeczSc+GDi8qhVniBGyRjcBEpyEBCPw9jw0MTovLw7gRGuuHZbowOCNGEap72FUhe0fkgK1jpf1bRaO6mwCQm8okh20EhJqN9hIMlBwAFPUCmtYJi51rcfUPE2hLn+nxwZXJ/daKs3+wTvJ1EpTqdlq0eaOCYCoz9WWf4B44E1igBt+fZpClFhL8/OaEol98P/JIGcC96Z6EZReqn9HOeVrwajbAzd0DtJFbIK6Turc5wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7559.namprd11.prod.outlook.com (2603:10b6:8:146::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Wed, 1 Oct
 2025 10:34:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.015; Wed, 1 Oct 2025
 10:34:43 +0000
Message-ID: <5687e76d-cd14-48b5-b30c-4d5efab8e605@intel.com>
Date: Wed, 1 Oct 2025 16:04:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/15] drm/i915/display: Use optimized guardband to set
 vblank start
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
 <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
 <aNpHHxXXFOEKDUmP@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNpHHxXXFOEKDUmP@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0025.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7559:EE_
X-MS-Office365-Filtering-Correlation-Id: fc3329be-29a5-413e-177b-08de00d62251
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZlNhL0pZbnlFN2ZoM01JVmxURE1IOFd1dzRjYzFoMWVzamZWdXNzdVo0USt0?=
 =?utf-8?B?QWQ3aVl1cGVkYk4xZ0ZEOGIzYlFTSzN0cWl1clUvUFQ0Z1VRYnZNV1JvWUQy?=
 =?utf-8?B?WnZQb3JWYy8zcEtCYk40RlovdHF6QWRlRll2QTQxS2NuVW1FclhNVmp0ODdN?=
 =?utf-8?B?UGlrTWNrTkYzTHlmTFRMb1FpbG1YUDR5d0V0Mk9VbzZzRXhRWDFGUGFsRUdr?=
 =?utf-8?B?TFZ3TlRsb3dTNElmL2ZtMmZzVmRlZ05mNElaOStyY1NhN25ZY2dzUnFwbUVT?=
 =?utf-8?B?K0Q5WDBNblpJZWRyUEtzbmQzVVJ3ZktGZ0tkdjJXVktJSHJ4UDZtWCthUTB2?=
 =?utf-8?B?dzhiTTltd2dtRW9PR2RZUWhqUmx1NEl5TXN0YW9pOWRJVG9zVG1icWJUY0lS?=
 =?utf-8?B?STNYSlJEK2xlZjBha1IvSHFYU3B4VEd4cGhxUzVlbHJGWTRLNWladGtqeFlo?=
 =?utf-8?B?c0R5VHhybVlQemwzKzZUOVV3clVudVdYeWFqdXVGK0JJNUJVdTdCS1V2V1hY?=
 =?utf-8?B?UXJ5UHRGeklCYlo2QXNmQzhoRmVqdVVLT0VzZ2FlTzAvcXY1cUxtWFNwdFdO?=
 =?utf-8?B?VWdyYTVRdXpWTnY3a0ZyNktNeUxMYXh2M1lobTRUWW1uYzhGb3Nob2xXQ25u?=
 =?utf-8?B?eEY0MHFEQjdJejhsbVBmRjVsS0VtQnRpbG9PQ0tWSHpNR1lNbndGNjIvMXps?=
 =?utf-8?B?cSsxYkRwcG5XYnBiWVNKZ1ZZZ0V1ZEdjS3lsVXF4OWI2bFpOblhkTUJFY1JC?=
 =?utf-8?B?MFhFZ0FEbi9uU1NEWjJ3UlFTb3VnOGVldVBHbHJMRDVaRTl0ZVRVcE85dzJR?=
 =?utf-8?B?cVAyZnAwcjkwb3htY2dyNjUrSCtwVnYzS2hVZGV3dGp2VHdHZnU0eW1Ha1d1?=
 =?utf-8?B?QWpha2xhMXZ0bGNTSitWRWpmcHBrTlBsbm92b0dMMkpGeW95RmVxalgxOG9X?=
 =?utf-8?B?M1pYbStMdkh4b3VhZnBRVi9TQ1gzaTQ0V21aek5wZkZxbjRnN0tEVlhNUDk3?=
 =?utf-8?B?dzkrWlFibG02dWxCc1V4ZitnTUhwYWhFekR5N2dqSUVHYjNUNXdSRWZ1dXMv?=
 =?utf-8?B?SmV3aU1LRmFCVURWVzNWZTg3NktNZDNXN3k5ZVhnbWpyY3JLb0liSGtFUzRh?=
 =?utf-8?B?Qkc0VEFmdWF5MEJmaGJ4SzRRK01rdzhRbzZ6M2RRU1hKRjZjYUlRUkdYamJp?=
 =?utf-8?B?a3lCSHhHUEttYmFkMDc4R05EMHR4Snd0cHFIdmxoWkRVU1dLWEJ3OTVhMlRq?=
 =?utf-8?B?Z1JCWkxsN1U1bzdabGpFVEdnMGxSMTREaDhMRmhLVWdPYmxXZWlrSGpLUHBE?=
 =?utf-8?B?cmdMYUZRWHorRlRJNDNRZEtGeVZVSkY1UEhtek9XT0lIcWtFUkpEY2plTWFJ?=
 =?utf-8?B?VWdjM3RReFVhT1d6RzA2cVVFQWJta3NRS2llc0w4NUlseFVoVHM0d2lrUkFo?=
 =?utf-8?B?WmlEOWl0ck1pWlRUejlnenllWTArUzgwejBjMHVNMjRpZGZTWE5CUFR1YnRC?=
 =?utf-8?B?a09XWkJJL3h6ZEZrZldzZFl6RW8xUklCVVkyUXR3ZHVhUmoxVXc0KzhxUUhE?=
 =?utf-8?B?MDdJUTZVL3IxN21ETEs3TndYeW5Jc2puLzJVcWNhaVd4ejhhQmplanRjZkZX?=
 =?utf-8?B?UlNQdjVDN1BQMVJHYlh6MTAyQU10U0hDUnBlWndGYi9UVVYvbVh3dTZWd0FO?=
 =?utf-8?B?b3o2M0hOUGhTT0RaU1JBalVVV29yNk9oY1pFYUpxblBkVXAvbWNPQzVJMENQ?=
 =?utf-8?B?T0NwOFRZQjRwUllpZjlCY2MyaWF1UmxRalhiWW5WekI3eWQyejJuRmRMRmNt?=
 =?utf-8?B?NjZ5bHBtREZGcHhJRmYyblF5QlliOWlmMzl5QnVSdXdvNUJFMU04OEMzSWY2?=
 =?utf-8?B?ZmRSRzRjMzdzQzdwK2diM0xRT2pScjVpcVZQdG91Rm40dG5wMEM1UElCdHY4?=
 =?utf-8?Q?n5Hx2Og8eIXERCoKD0J6Z+dDeEd8f+wf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wlg0bzJ3ekRxenYxbzBDT0wzNFEyQzdWN3VNaHBhb1U1VmZTK1JwZkpjVEMr?=
 =?utf-8?B?dVlWdFZ6UzNzZU1CdlhRVGNBT0tVMW0xQS90ajhDZzc4bjloaHkyd0hxdVdM?=
 =?utf-8?B?bUpkQU03SGRCQzdCdlFYN3NhbCt4YWtHcEdJMVc1c2ZReGlFNnZaNjZWVVA3?=
 =?utf-8?B?SVc5WSsyNjBqc3piRTZ2NUMzMDVYcmwydlAvOEtiRDlyeHp1T3FucWdTK01N?=
 =?utf-8?B?djVZQ1VaRzRsVFhtZnRIZ2kyMG1LalJTdGIwRUQ2aUVYNzZZV1lpZmJlcXhD?=
 =?utf-8?B?S2lYRWExOVRvZG5sRnIvUVpsZlMvNW5LNEpYWjEyam1IdXp0K1BHZXFOMW5L?=
 =?utf-8?B?UDdBVW1yZGl3aGlzSytKc08zK1laNjZSRkNJTWVObEhVd0NOS0ZiZ285N0tG?=
 =?utf-8?B?RDVrdlRLZE1lbnBiMVdYRmJCQk9PRGV4dmZ3LzZHYUNRc29XdVdlcE1xbDR2?=
 =?utf-8?B?TWErSUphMGxxakhzYWw2WWR6RDA0bTdIeFhmZWVpL2ljZ211MmJ5UERKQlNY?=
 =?utf-8?B?M0t6RkNuNTJIdnREOVVjdVlOZDAwMDIvMFovQVJLM2EwR2JNaGpqK3c2Y25W?=
 =?utf-8?B?b1Z4U1hWbjVsWG5obHIvU01ISG1VbVRTZ1lCVHlEcE8rY21iQ1Jua1Zyc2No?=
 =?utf-8?B?bW5mUGhRZ2RIVHR6NE0yOEpLUU5xTGE3T0tQSnM5cUVNVmNZQ2NUTWI4K2NP?=
 =?utf-8?B?MEtxWEM0SWlGdDFyMHlxcktjNTRONjN0aVZOZ0ducElwZzg0MlFVelBMQnRB?=
 =?utf-8?B?aW44Z3RxeU1JbDhSdVlJSjhXOUZ2ZTByT3k4RjlWRzBkUDUyUzl6Ny83Zm1y?=
 =?utf-8?B?TG1PdzZtczRRc05rbFk1aXE2WUJZUWVVY0VRVW9rVW5KOHFXb29SdnhXSGNi?=
 =?utf-8?B?TGtTUkszSGZ1SWNyblJ0ZGN3VkhyRWVvS245TDNEbVcyeGxJN1RqTkFPTXpC?=
 =?utf-8?B?N3JPVXNVcXhMSmdWUmI1RGFyYkV2QjZRL016cm81QVJjbDc3NFJyUXZNMkJN?=
 =?utf-8?B?TDhsbWFmUG5aNFNVcmtuQUZMMDY3bUdMa0xjbkVsa0hZUnF1S2phTHlkQmIx?=
 =?utf-8?B?cjRwSUliV3lHM2ozb0orOU9ZNUx3a1lmb0JISDNsalRLb0dDKzYzL1BBQkNR?=
 =?utf-8?B?ZThFSHZnZWJGQmdwbnpPUVBlTWxmK1JYTUdFSHFXdGZxWXFhVlVXU0IzQzM0?=
 =?utf-8?B?UFMxcFhiSzlOV0VOS1JWYTJPVWlPMFE5b2x0QkxpZHRwUmhLSTdqZlpaVWsz?=
 =?utf-8?B?QWNZNmYzd0dFOSt1cGorNm5yaTcvRUkwYkpXR3g3S2pxNHJGTDhubmVRQVlL?=
 =?utf-8?B?dXl1REQ5Yyt1czhEZ1d6U055TzljR0VSVlk2K0RtRm9uMkFqVEUyS3UrMkNN?=
 =?utf-8?B?V1BOeTZ5dE43TEdQaHlqWHpaYUw4ZkNXU25LcUVxS2FXVmZEOUVUYVU3RHgw?=
 =?utf-8?B?ME5oNXlOZjU1bThUTC8rMFBxNzUvM0t5SWNzMFIvTDFMcWR4S1ZGckQycnVQ?=
 =?utf-8?B?SWlHMkZuR3ZBK04vSGlBQnBueWtzUVhBeW80eGlBcTNiRzh3cDFpOTM5UjJJ?=
 =?utf-8?B?dGdtSVAwYkhCdkRGRGZBTTFUQUljdmdVaHlHZzJWTm5hRlFxamp6aGZKYlk3?=
 =?utf-8?B?QkpQRTAyYnN2RWozeXQvOWhzdnF2M0srd1NsOE5NTHVUdzN4NlBTSUVTTklq?=
 =?utf-8?B?QVRIN0djaytoUDgvVHJyc2xpN05SRHFudk04OUZBaGt6TURDVTZEOVNhaTdC?=
 =?utf-8?B?U2ZzaEQvSzBoNWx6c2Rxc1BLOW5MRlR4ZmxLcTJmbExyd1lkY3VVbmdveFpq?=
 =?utf-8?B?V3Y0L1NSM0plbEtaelJEbGtPRU16QkNWc3d2N2w4TUtkdjA5TlE0SUpKUlZt?=
 =?utf-8?B?MW5tT2Joa2JwbG85UXhmK3dsZTZVa0gvZk9aQWJTV29IVkpGVWVXM01vU2Yx?=
 =?utf-8?B?SkRMem80U3Y0K0Iza2l3S2pUQ3BaOFM4TWhydTVXNXozeFFPQWs2c0J1K0Ra?=
 =?utf-8?B?L0hlbmcwMGhGaVAxT1VwVFdHeS9rKzFONEtNU1ZZS2luUWV0WkpoZE51V2NC?=
 =?utf-8?B?NUU1akxHRzJZOVZNc3dUOFRRRUdxVzhnQVFGamExUDhqZTVGS2p1c0pjQmlO?=
 =?utf-8?B?Q0tKcElEa0RUYjVncENyODkyZTlwclg2ZUgxL3B0UlRHdXdoRHU4TXV3RHpv?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc3329be-29a5-413e-177b-08de00d62251
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 10:34:43.5726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N2fdIPWUKd0XVpKiLtnVoZ9f7U07J9UHXVhhkRmOKZf+rbztvE6wsXuaNAJRz+vsMnMOW4oVkblffgEh4lPZq09yxsgvFPIh5kyfq3JL/1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7559
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


On 9/29/2025 2:15 PM, Ville Syrjälä wrote:
> On Sun, Sep 28, 2025 at 12:35:40PM +0530, Ankit Nautiyal wrote:
>> +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
>> +				    struct intel_crtc *crtc)
>> +{
>> +	struct intel_crtc_state *crtc_state =
>> +		intel_atomic_get_new_crtc_state(state, crtc);
>> +	struct drm_display_mode *adjusted_mode =
>> +		&crtc_state->hw.adjusted_mode;
>> +	int vblank_delay = 0;
>> +
>> +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
>> +
>> +	adjusted_mode->crtc_vblank_start += vblank_delay;
> The situation with crtc_vblank_start is already kinda broken,
> and I think we need to fix that first somehow.
>
> Currently crtc_vblank_start is assumed to be the vblank_start
> for the fixed refresh rate case. That value can be different
> from the variable refresh rate case whenever
> always_use_vrr_tg()==false. On icl/tgl it's always different
> due to the extra vblank delay, and also on adl+ it could be
> different if we were to use an optimized guardband.
>
> I think there are a few options how we might solve this:
> 1. keep crtc_vblank_start as is, and make sure every user of it
>     gets adjusted to also deal with the vrr case correctly


Alright, so we avoid changing the vblank_start.
It means for platforms with always_use_vrr_tg()==true we directly set 
the value for guardband. (Currently I was getting it from vmin_vtotal - 
vblank_start)
For platforms ADL+ with always always_use_vrr_tg()== false for the fixed 
refresh rate case, guardband is full vblank_length for variable refresh 
rate set the guardband directly.

As you have mentioned need to check which all places we need vblank_start.

For ICL/TGL we do not use optimization for now, right?
The extra_vblank_delay quirk is already handled while filling the 
registers.


> 2. enable always_use_vrr_tg() whenever there might be switch
>     between vrr and fixed refresh rate, which I think would mean
>     crtc_state->vrr.in_range==true.
I think I didnt get this part:
Do you mean later at some point we move to option 2: 
always_use_vrr_tg()==true for all platforms.(Need to check if we can do 
it for ICL, TGL).



>
> I kinda like option 2 because then we'll be doing the vrr vs.
> fixed refresh rate always the same way. However we haven't really
> tested that mode of operation on the older platforms, so I'd
> rather not bet all your work on that working. If we later run
> into problems with that then we'd have to revert everything.
>
> So I think we should start with option 1, adjust all the
> crtc_vblank_start users approriately (I don't think there are
> too many of them), and adjust crtc_vblank_start to match
> the guardband only when always_use_vrr_tg()==true.

Sure will start with this for now.

Thanks & Regards,

Ankit


>
> After that I think we might still have some potential issues/race
> conditions around the actual vrr <-> fixed refresh rate switch.
> Those might require more work later, or if we decide at that point
> to try option 2 maybe we could sidestep some/all of them.
>

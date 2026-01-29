Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMR1Dpy1e2neHwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 20:31:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F268B400C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 20:31:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0FB10E33D;
	Thu, 29 Jan 2026 19:31:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="crJkoEIQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA98F10E2AB;
 Thu, 29 Jan 2026 19:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769715096; x=1801251096;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=teGczbrcqHYsTdPLCuS7FHhscfg3LWd4y5Nk1YL+130=;
 b=crJkoEIQlCSHQOxmVuxqlnfsM4rFqvQ2BEWxCWh89nNk7qSlZNs9+3wF
 gn7tmioLEGvXOby3rTu6BTppHNpwtFSjeL6Dixx9LwAwsTeRBgoO4f95u
 3IKj2W1duAEP5ovPu55n4iLi0eBWel9NYQbLIRjIJmvZWbEcWwszNzZsU
 ntaoEndeE7mLvbXxGDFDNFdI+qgS/CEMlqFJHs3M0rXIVgrXOLdLkgGg0
 +6UF4QuXaEBWk9slKMi+02wvX2uOYRelHHOUsnrxyQ5Tgd4uoKMWCEPKb
 KZrBhqtoA3PBiWSEv3fFO6RQbFwjddkeIzh5jSqd2OcbQBKY/FBMaMRSS g==;
X-CSE-ConnectionGUID: DubeIg7cTzWWOy3QZ/HESA==
X-CSE-MsgGUID: DfyTYlk8RUaIGlV1cuQbBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="96431057"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="96431057"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 11:31:36 -0800
X-CSE-ConnectionGUID: QMYqWrtcRcqGXZ92kVA9mQ==
X-CSE-MsgGUID: IyWwGRFOSsK4nDevjK5MOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="209082336"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 11:31:36 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 11:31:35 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 11:31:35 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.53) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 11:31:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tD6Chfv5YICfB+Ft5VkO6XB/QjltOtJ3tniHtXpD9vYMZ0xDz3gkFmPF+uEFrQ8ty5Ak9jQ4AdXoU0rteCkPmo6nwG3hKxlNjM8SxfReLlAMYxhpPuRftNuFVZPH7YDQBttlg7648q3wXT2OrBVjJc7X8r06MyiHP+mvQ+1qTQVy+2Mvin9ZYn+8rpifY9UneeqQeQqvOEGVVa268PJrTNuR8ACoX2J6ChiK4NXBGSXRZugjL7CYpdJq9Osl255jcpVwoSIEGiYyNiFUhVJFOnX8TwC4968Mir8K108QuSKoB0qEaMnf91Ti2SV+Zgx8G93Sy01N+FaZsfSAFKf5nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wTsa+MMS/fX9G/DV0XnpYWabiGeHdZeiW9aAlxbD8DU=;
 b=iT6I5MFxrdyTjzF6ilWKuG7AT/vE5BWe+tfZ3M6IJTRqseO1z3+1dO96L9J5RndnnQrvhRcvAwcPp9C6+Vwq5YkquiJftdgeozTVoAL6MYRzIQ1CJc0BsMw1sWYR7ZyNuyGIf20E0TFNiGLjYLdvNPslvxKY3UEO/zxF73bp4E8uMDysUzHtduBh1ehEPzfmwZamlNPTH5tmbj7IO2IUEimto1c+hwNJGB43+RcgOabYB4/b+zwNaww42hp72H77J9+W4N5Z6sO2q+8ermx5OPVtpQE3BLxuvSpUJzU4C0esbaBLnHfsdUy0zyCsexgg8T4cXkTNle3f9feQ9l2CxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB9060.namprd11.prod.outlook.com (2603:10b6:208:56d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 29 Jan
 2026 19:31:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Thu, 29 Jan 2026
 19:31:31 +0000
Date: Thu, 29 Jan 2026 21:31:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 04/16] drm/i915/dp: Rework pipe joiner logic in mode_valid
Message-ID: <aXu1jAViVUHAFbnq@ideak-desk.lan>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
 <20260129171154.3898077-5-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260129171154.3898077-5-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0004F081.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::63b) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB9060:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a45650f-7ecb-4dc7-4bd2-08de5f6d014e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2ovL3VSMHZFVlczd2pCaGVZay9EVTRBdndiTExCNnFINEJIRWwxZ1AwRFZr?=
 =?utf-8?B?Y0tFU0VCbXFVd3p0Y2lyd1I2bXk4eHFyZGErVzVNN0VqQ3dFRjBpREpwenEw?=
 =?utf-8?B?Q2l4bEptN1RZWlQ4dVFVWWNnNlQ3QU1Xck9lcTVIUFBtYXNVL3lWTFhJQ005?=
 =?utf-8?B?NG1EeFVyZEFmYUxEdGxTZEFGQnA1Sk1UZzN1Nm1ZdHpxSUZnYjl0bnZvRDZr?=
 =?utf-8?B?ajJ3VStoSW81SHNkVndnYkdnbkRPQjJlLy9oRFJPR3BHRjhZd3JSVVZ2ZFNU?=
 =?utf-8?B?RGkxS01BanRQbHNZeCtyd3dQWkp5MW5oUXZEYTNHWU9QY3kxcVM3cmFSMTZY?=
 =?utf-8?B?b1NXZElZa0pwRnNlRWd2M1FibVlOakdGaUc1enBhaTNtYUx4VGhVSndqbFhV?=
 =?utf-8?B?eVlRWkZTN3pGbEQ4SmxYSVlUSTkrczAyaG93VCt5WXZrcm1pNEQzaHBraVpB?=
 =?utf-8?B?eEZJdUExZFlUQXdKRk5QNk05WU5Sekxmd3RHNDZPcXJYQWNjL3hiVFREZnBq?=
 =?utf-8?B?OTFWVmU3d0tPSko3aHVidWNjME5oZWR2ZnJyenJzTmZ3VlpJUnZwOU1kNmhF?=
 =?utf-8?B?OVVwMCtwYjM5V3pOMjB2dWlVd2RWZlloNmFTeFNkQkswN0NiZjJQbHNHZWIz?=
 =?utf-8?B?Wkt4RkNJaXp6dW94YUZHbWh3bXVsVFFuS3FzalZIVFp3M1BrNjExa2VXSWZQ?=
 =?utf-8?B?cHVHSHRlSmUxQ3pMVkZNL1J3OUMzRlAyRW1BR2tOSDRYenc3MEI5eVRDTlpH?=
 =?utf-8?B?Tk1JZmN2ak9MSlBKMkVDL1llRHUwVGZXcTBvTERQYnEvMlhjeW5kN1ZFeWhK?=
 =?utf-8?B?SDBIWUk0Q2RJbk1jeENJUzJ2aDI1Z0RJU3pYMlRNelhzWStOVzdLamtKeGNm?=
 =?utf-8?B?QW01ckZrc250R0tWZkRLOXpDVUJ0bWxnTWRScjFCQVVMNytKaitaaHJZeFdt?=
 =?utf-8?B?aS9nNTdHd3F5cUxlRjdaa2o5TzVKMzhVdjVMWUpZck1ranJTdWVmdU1YeHJK?=
 =?utf-8?B?WE11OXpIMUJRK25ESWxnanVwU3hjaS9TQ053TnBPcTZrdWkwSHlSZ0xBNEhR?=
 =?utf-8?B?QzhmanlaSmRjcG9ySE0rVmhpZ1ZxOGNZVjNwM21pVi9OWWdnVE51UHhiL1dB?=
 =?utf-8?B?NHlUdWVOb2k1ZXdGSHIvbE42MVJOdjJISzBLK1NhZmpOck41WENycFRTRE5i?=
 =?utf-8?B?b2lZZ1dQTFVwbks5cy9HMVZ4ZURUVnBMSm9WTnJvN2l5bkxqeXdRR2RieVEr?=
 =?utf-8?B?Z3cwVEpKaDVLRDE5WTg5aThzOTNkMk5NSDBCODhmSUIrMDBtUW9LU3ZzdFdX?=
 =?utf-8?B?aGd3Y1NVYk5hL2RwMklTS3NqUC91OExFWjMxTnQ3MkxmMmVOTFB0M0tJdkJx?=
 =?utf-8?B?enpPMzRiT2E4RjlhMnN4SHJVclFvVWkrYjFES2FTRitrOFhTRjRHaitrQWJm?=
 =?utf-8?B?UGU1MFA1bHpwK0FFeUNMSjQ4SmM3Zmd6N1hKTGpQeXZVMTh6bjJKbW8rWkpz?=
 =?utf-8?B?ZC85bGM4TW50VUVhYW02QmlOa0VOSWtzZWhDVnVHMG5jSXJ6amREc2N0NFdJ?=
 =?utf-8?B?ZVVqZEw4eVFyZWJ6Y1A2SXBHYXo2VUEzNE9rY0dna2R2WXMyV0c5U2VJbzlw?=
 =?utf-8?B?M3YwN2ZEWXZQa3ZVNGJLVGZOV0RIbjY0TGZyTlBOQUJEQ3hxOWJtTkhVTzk1?=
 =?utf-8?B?N2JKQ3ZEMktYaVBpM2pvMnYwSldRQzhMUHZCWjFiQTJ1VmEySTRyZzVlTDk5?=
 =?utf-8?B?dVlZVkZxbm5WdWNLUFh6UXpOekZ1bzlTajJBOERsOVA1SEVmKzlCWFJZVko3?=
 =?utf-8?B?Z1p1azAxY0NySk5VelpjVGxXMWNyRlNDbStNSGVYNExZeE9FejJqNnBjVm84?=
 =?utf-8?B?czhSZk5kLzJsYjNodmtUNHpzcU11Rk5FSlBDcU5jVnhDZHBVM3ArZ0RjNVVK?=
 =?utf-8?B?dnppUWpDaCtiSHE0M0l5TWdwVjZKS20rZWJLejQza2ZNNGRsMVZMM1BrQk5r?=
 =?utf-8?B?SVNrWC8ySzkybUNLelI4NGhLZFZSY2V0NGlFVnJwM1Y4NkZGWDhDYzZHcW50?=
 =?utf-8?B?bmh6RVc5UEJLRGo5clRUUlBFUldLWmxZRzJNVDlqSGJpOW1RU3I4YzdXZUFk?=
 =?utf-8?Q?Klo0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2lrNkdJWFViK2FlWTJNMC9EQUF3VDN5ZGcvT3BJTFhrWDVub3RIa1JGaThS?=
 =?utf-8?B?UmtvbVR4RHZUUXRPTXNiNjF3VUtGZWpFUkhwTjQzbVQ1ZURwUHRjNWF4dHNR?=
 =?utf-8?B?ZGJCYzFKc293U3lnb2pGWUJpaUFwdzFNQzlkUWZRcitmWXlDNlpuZkx1SjBL?=
 =?utf-8?B?Tk5pQUlySG5DN0tsY1U4S0JMbWlIMyt6OE5pQ3VvZ3Npc2daNSthN1lwRUZq?=
 =?utf-8?B?ZjFoMzN2S2x0RStzVTRXYllaZEh5YUF5cEVwNDJHWTJjbnI3bytJS3VMVVZp?=
 =?utf-8?B?a05RVjJjYTBxQk5qMUcwUmRUaHpMRmlMbjlTZXUzTlM5azVMVlJ5TUxWbURv?=
 =?utf-8?B?LzJ1WnQ5OXJ0d2h5Vng1TUlacUVsdDZOVW9SV0ZmWHFnd1Z1WVQ5N1VVU2pu?=
 =?utf-8?B?VnQ4b0tSVXk4SHZsL2swWEVIVHhQc0NpdmEyRnZVVzRZQVBNTTh6dlkzL0Z5?=
 =?utf-8?B?Q1MrbWl0ZzBzRzkzUlV2cHlJN0txV3hCcStEbkNRdmU5bnplQ1NWYXVKVWF0?=
 =?utf-8?B?UnFTb081ZVV3cFdrTlhsNURxTEZwRlo3T2pndGU3OU5LWDZNQzkzNkJJYk9t?=
 =?utf-8?B?Y2Rnak5zRnFvWElGUFlEeUVqMFdreDJlaCt4WUNyYUFnbWxKWG9ESGdGOTdx?=
 =?utf-8?B?eEJRT3ZVekVEQUxSNlg4cUE3Rmd6NFRCUWZJVE1od2RSSkpsL2N0aXREYUpQ?=
 =?utf-8?B?SWhVeWxDdEpkMW1qUnZxeEdjdEQvWjBPcEJhS2RMU3BWL05sNEpiRmc4WWht?=
 =?utf-8?B?RTN5QkF5Uk16U1h0YUZFSVVVUlFYVUZnSjc5Wm55MG9qbkVJMGNzTEUvOHYz?=
 =?utf-8?B?d0lzaVNLbTByeUZSRjZVM1Y0VGRMSDdMMitBVWFvT2RPd1pjNnlUbGJDR3dR?=
 =?utf-8?B?K0svOHNpZ1ZYK3BBc05Ed2JFdEQvTHpocHZWOVE2Q1VlTlJBQlNjRlZRTmtH?=
 =?utf-8?B?cFhuV0gxYzcwVFJ3NXF6VlVmdHNLMDFSY2NqcEltR29jMjFzTjFXSnlWU1kx?=
 =?utf-8?B?V1VSNzVjUXBCcENxWjhpNElYTFM0MWhVVitrY1NaM2dXSmhDRjNoVFZJZ2Zh?=
 =?utf-8?B?TVVtSEZTTGZpSkd5N1VCa09sQ1ZmOE5STG1vTXdHS0pIVVRoQjZBdS8xUy9M?=
 =?utf-8?B?ekR3OTVVSGxNL1h3WkMrWEk1ejlhVE15ekdnVG5LUmdZWlpkaHdmL0FjamtB?=
 =?utf-8?B?bytaZjNJVkpKbGlhbkx5ZllnSEEzTmdzZWl3QnpBbU96RFl3RTNGZ0FiRVFv?=
 =?utf-8?B?eFRFalB4WVZ6cTVjenFMV2xiM1NIdmFBQmVEN0RTaDE0dGQwZVFWbzAzaDBt?=
 =?utf-8?B?dzNhekd4Nkp6K2RUaFFqUzBZZUhIelZoeC9hWWsxRWdGdi9IQmw4WW52Ylc2?=
 =?utf-8?B?dVcvbmNnRDE2UUdKVC8zTDdPc0lldDlWeGVZclJ2d1Q3am1SdXZuTmpMSEFY?=
 =?utf-8?B?NC9WUnJGaFJnbVZyYmdXT1ZxMkJPMEhCWXdUbTE0ejdGaXl2Sit2V3V5dEFj?=
 =?utf-8?B?Y2grSldYM3FNODZEdWJFdzd4bjFkT1dRdFYwQzBxODdLcVh5QWh4d2Njd3Vu?=
 =?utf-8?B?VGFNc05tb3VJOG9YU2g5dlcvV1F5YWFteXNzRWNDWmE4RFRORkJWTm5uMEJM?=
 =?utf-8?B?N0VXRGxJaGRLNXlJZ0doQVhJRkhsUDhUVWUrTGFnTFBBTUNtMXFjVzlRS01H?=
 =?utf-8?B?b0FyUlZFaGE5ZVYyYklmT3NXd2tFRWVsLzhJT0VNVG9uWFVQTlRQUkxkSW1Q?=
 =?utf-8?B?UnJWd3lta2FSMXozSk5ZUzJLRGJnVjk2ZGllR0ErT0l2R0FhUlNNZzN3OVNz?=
 =?utf-8?B?UXg1enh4QWQ0V0x0bHJPSlFYc1JXSHBnUVprWDR0eDQ4RFJvSW00V2VqWlRZ?=
 =?utf-8?B?WStLNHhjNzBnVm1xT25pS1UrQ0krbzNwbWNoc2FiRWoxd2RhQVJyWHN1Y0Zj?=
 =?utf-8?B?aWJ4RzEydGFtdkVDb0lqcVp3alQrUmVIdHhFcS93UW9wajV0UGliWFFuSzJp?=
 =?utf-8?B?eTJOdysyM3pGK0V2YXVHN0U1OWxzQzVZWnZYNThDTFFVZFF0OW14WjJrQUR4?=
 =?utf-8?B?YVo4MFJwbXZ2eEVIYzUyaXlnQzRLbnplK2ZTU0doMFJrOWEyTm9PYnluSmpZ?=
 =?utf-8?B?VDc1b01Bd3BwZnptdnJwSDY3WGRjT1FKT2JmMUNRYU12Y3lqcnJuUDB0aVpR?=
 =?utf-8?B?UjV1VGJITkcyL281MmtsWXlJVlN6SzRJTVBBamUwNkxkWjFiWW1yZGdXbWpW?=
 =?utf-8?B?NG5sMmw1Ny9lMFcyd1Q5ZHpady96NUJwVGxVK3ZPUU05L0YyWTVSRmZoMlJt?=
 =?utf-8?B?anpMbEVlanUzd3hoVVh5RCsvUzNHMjJEb1FwM3NKdmtRQ0xwUm9qUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a45650f-7ecb-4dc7-4bd2-08de5f6d014e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 19:31:31.3959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mCH0qy4q44E8XVDCEVoLwObgFnCwTX8DbxwGvvivkyMsCS1vOx5p3tnILWvjRrdO5N2olTwdXfw5BHCI9kSJWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9060
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9F268B400C
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 10:41:42PM +0530, Ankit Nautiyal wrote:
> Currently in intel_dp_mode_valid(), we compute the number of joined pipes
> required before deciding whether DSC is needed. This ordering prevents us
> from accounting for DSC-related overhead when determining pipe
> requirements.
> 
> It is not possible to first decide whether DSC is needed and then compute
> the required number of joined pipes, because the two depend on each other:
> 
>  - DSC need is a function of the pipe count (e.g., 4‑pipe always requires
>    DSC; 2‑pipe may require it if uncompressed joiner is unavailable).
> 
>  - Whether a given pipe‑join configuration is sufficient depends on
>    effective bandwidth, which itself changes when DSC is used.
> 
> As a result, the only correct approach is to iterate candidate pipe counts.
> 
> So, refactor the logic to start with a single pipe and incrementally try
> additional pipes only if needed. While DSC overhead is not yet computed
> here, this restructuring prepares the code to support that in a follow-up
> changes.
> 
> If a forced joiner configuration is present, we just check for that
> configuration. If it fails, we bailout and return instead of trying with
> other joiner configurations.
> 
> v2:
>  - Iterate over number of pipes to be joined instead of joiner
>    candidates. (Jani)
>  - Document the rationale of iterating over number of joined pipes.
>    (Imre)
> v3:
>  - In case the force joiner configuration doesn't work, do not fallback
>    to the normal routine, bailout instead of trying other joiner
>    configurations. (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 138 ++++++++++++++++--------
>  1 file changed, 92 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4c3a1b6d0015..957a65795df0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  	return true;
>  }
>  
> +static
> +bool intel_dp_can_join(struct intel_display *display,
> +		       int num_joined_pipes)
> +{
> +	switch (num_joined_pipes) {
> +	case 1:
> +		return true;
> +	case 2:
> +		return HAS_BIGJOINER(display) ||
> +		       HAS_UNCOMPRESSED_JOINER(display);
> +	case 4:
> +		return HAS_ULTRAJOINER(display);
> +	default:
> +		return false;
> +	}
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *_connector,
>  		    const struct drm_display_mode *mode)
> @@ -1445,13 +1462,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	const struct drm_display_mode *fixed_mode;
>  	int target_clock = mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
> -	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	u16 dsc_max_compressed_bpp = 0;
>  	u8 dsc_slice_count = 0;
>  	enum drm_mode_status status;
>  	bool dsc = false;
>  	int num_joined_pipes;
>  	int link_bpp_x16;
> +	int num_pipes;
>  
>  	status = intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status != MODE_OK)
> @@ -1488,66 +1505,95 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  					   target_clock, mode->hdisplay,
>  					   link_bpp_x16, 0);
>  
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     mode->hdisplay, target_clock);
> -	max_dotclk *= num_joined_pipes;
> +	/*
> +	 * We cannot determine the required pipe‑join count before knowing whether
> +	 * DSC is needed, nor can we determine DSC need without knowing the pipe
> +	 * count.
> +	 * Because of this dependency cycle, the only correct approach is to iterate
> +	 * over candidate pipe counts and evaluate each combination.
> +	 */
> +	for (num_pipes = 1; num_pipes <= I915_MAX_PIPES; num_pipes++) {
> +		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
> -	if (target_clock > max_dotclk)
> -		return MODE_CLOCK_HIGH;
> +		status = MODE_CLOCK_HIGH;

This has the same problem discussed elsewhere, possibly overwriting the
return value from intel_mode_valid_max_plane_size(). Moving the init
before the loop avoids that.

>  
> -	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> -	if (status != MODE_OK)
> -		return status;
> +		if (connector->force_joined_pipes &&
> +		    num_pipes != connector->force_joined_pipes)
> +			continue;
>  
> -	if (intel_dp_has_dsc(connector)) {
> -		int pipe_bpp;
> +		num_joined_pipes = num_pipes;

There's no need for this after the simplification, one of these
variables can be dropped and the value of the other one used as the
iterator can be used directly in the loop.

>  
> -		/*
> -		 * TBD pass the connector BPC,
> -		 * for now U8_MAX so that max BPC on that platform would be picked
> -		 */
> -		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> +		if (!intel_dp_can_join(display, num_joined_pipes))
> +			continue;
>  
> -		/*
> -		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> -		 * integer value since we support only integer values of bpp.
> -		 */
> -		if (intel_dp_is_edp(intel_dp)) {
> -			dsc_max_compressed_bpp =
> -				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
> +		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +			continue;
>  
> -			dsc_slice_count =
> -				intel_dp_dsc_get_slice_count(connector,
> -							     target_clock,
> -							     mode->hdisplay,
> -							     num_joined_pipes);
> +		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> +		if (status != MODE_OK)
> +			continue;
>  
> -			dsc = dsc_max_compressed_bpp && dsc_slice_count;
> -		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> -			unsigned long bw_overhead_flags = 0;
> +		if (intel_dp_has_dsc(connector)) {
> +			int pipe_bpp;
>  
> -			if (!drm_dp_is_uhbr_rate(max_link_clock))
> -				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> +			/*
> +			 * TBD pass the connector BPC,
> +			 * for now U8_MAX so that max BPC on that platform would be picked
> +			 */
> +			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>  
> -			dsc = intel_dp_mode_valid_with_dsc(connector,
> -							   max_link_clock, max_lanes,
> -							   target_clock, mode->hdisplay,
> -							   num_joined_pipes,
> -							   output_format, pipe_bpp,
> -							   bw_overhead_flags);
> +			/*
> +			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> +			 * integer value since we support only integer values of bpp.
> +			 */
> +			if (intel_dp_is_edp(intel_dp)) {
> +				dsc_max_compressed_bpp =
> +					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
> +
> +				dsc_slice_count =
> +					intel_dp_dsc_get_slice_count(connector,
> +								     target_clock,
> +								     mode->hdisplay,
> +								     num_joined_pipes);
> +
> +				dsc = dsc_max_compressed_bpp && dsc_slice_count;
> +			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> +				unsigned long bw_overhead_flags = 0;
> +
> +				if (!drm_dp_is_uhbr_rate(max_link_clock))
> +					bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> +
> +				dsc = intel_dp_mode_valid_with_dsc(connector,
> +								   max_link_clock, max_lanes,
> +								   target_clock, mode->hdisplay,
> +								   num_joined_pipes,
> +								   output_format, pipe_bpp,
> +								   bw_overhead_flags);
> +			}
>  		}
> +
> +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> +			continue;
> +
> +		if (mode_rate > max_rate && !dsc)
> +			continue;
> +
> +		status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +		if (status != MODE_OK)
> +			continue;
> +
> +		max_dotclk *= num_joined_pipes;
> +
> +		if (target_clock > max_dotclk)

Missing status = MODE_CLOCK_HIGH;

> +			continue;
> +
> +		status = MODE_OK;

status is guaranteed to be MODE_OK at this point, so the above can be
dropped.

With the above fixed:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> +		break;
>  	}
>  
> -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> -		return MODE_CLOCK_HIGH;
> -
> -	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>  	if (status != MODE_OK)
>  		return status;
>  
> -	if (mode_rate > max_rate && !dsc)
> -		return MODE_CLOCK_HIGH;
> -
>  	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
>  }
>  
> -- 
> 2.45.2
> 

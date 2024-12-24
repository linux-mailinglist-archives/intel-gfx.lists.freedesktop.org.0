Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E649FBBF5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 11:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0775A10E33B;
	Tue, 24 Dec 2024 10:11:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UJW7yQTg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A08ED10E317;
 Tue, 24 Dec 2024 10:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735035077; x=1766571077;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KV+MLC4pTheuJjhVENJ1eOTEhM2R+XX8ERIP6uQr5H4=;
 b=UJW7yQTg3mlfJ5ueaSw2DJprIUMADwXLW/IycL2GN/c29sshkLzMnibB
 CCRD3XfiTJPHW3puHeEGvzae8cVq2G4cHq8kp7PaP5+kbncPvNe4Gt3IQ
 fHvTDPp8A3D+mhih5rDTxL/PEbj4zMu1TDi9ezQy70PHHIwVleHfSQiuQ
 ue4KwoCJxCFVJJ1t89kzGRSr7eLJHAMplX0MWZI2Iv9oNt8jYkA7s3Zyp
 C8UeGjCkiw4Bakkp8qqY/9OVH0hQpzQlS6iynffpUTYtGJjYdWUzUbymg
 9+M77yzs5sFBvqxapGtyApTk5AmfCmeiI5+hJGrzsqU+p0hEuJThq4Ee6 A==;
X-CSE-ConnectionGUID: 2l58qZa/QBC60KsukOsW0Q==
X-CSE-MsgGUID: ieS81IfrTXms+H1zBW4hwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11295"; a="34778246"
X-IronPort-AV: E=Sophos;i="6.12,259,1728975600"; d="scan'208";a="34778246"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 02:11:16 -0800
X-CSE-ConnectionGUID: 8bWNMcF8SWe933YTr096OQ==
X-CSE-MsgGUID: g9OL7dNCQwS8jOuE2SakXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,259,1728975600"; d="scan'208";a="104416625"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Dec 2024 02:11:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 24 Dec 2024 02:11:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 24 Dec 2024 02:11:15 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 24 Dec 2024 02:11:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KCABKOe7+grhNt6e+0Po/NgTZvO20SqrMT0BnIYfzxVDSU2DQRAJrshgTFUZ8VfmnLt48lYYX4JJoUjbLned8/3OlTlgb2LBMb99V0aW5jWVJHtNDq7YZADUfCWbIGW1OS+VVz6mkl6i2zOb41ODn4jkmBFtOZWIkD+UBCKrDKQIS6SnMI0oGFDodxR0BOEz8f14z5MZ9suGbKVLdC/QU+2OOpNb4+ump3quYJIZTg3/GA+9zlgpvMG8X1wscTqbxvvnY0aXmadBjxl8bL80zFVW7Z/7+LSNYD9NPjNjg1qIPNxPoOJLoSwqXOUnh4LhURKGZobLaJZr/DNt1s77kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WVstHaAOrL1iDID6PuHiOWjsURowjWL5oUzkBDbN6CA=;
 b=EMabIUCDlKHFM+X6i/08vXPfufW97qaMYWd+7U5wRNsRNf1XtpXKj3eY3Z73XnRjXmPgdnpVNC0jRkUW0RJqs5In12ckAkfZY5uW07D22n9K4wYkxN+v2cqU64byvphx6TSChfOKvH1AsXYC9XTltt1/FhJoDJqOkeBrdypS8IJS2hgH+Upm2aIDN1mXoMLNuEdxbG7FPRJAi7p3eKnCVcCJf7FYWYVP+uGE7LJXjKOqJjDKg+tD6L4jpGZdDcj0hPMtYa7b+zEwOGAgGptL50CX9cvyTPDtO/WSobWhtxO5iCf7i0N5RDOHCxKVEF3tcUQ6joD6wO5Uyb8XfWTBQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB8063.namprd11.prod.outlook.com (2603:10b6:510:252::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.20; Tue, 24 Dec
 2024 10:11:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8272.013; Tue, 24 Dec 2024
 10:11:09 +0000
Message-ID: <46d8a488-be49-4201-9d24-210184a90642@intel.com>
Date: Tue, 24 Dec 2024 15:41:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/14] DP DSC min/max src bpc fixes
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <jani.nikula@linux.intel.com>, <imre.deak@intel.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0101.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB8063:EE_
X-MS-Office365-Filtering-Correlation-Id: 99ea36cc-95e9-49f4-804a-08dd24034995
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SDVxeDNqOFR5anFFMzVSbnJlRjhWR3ZrUjZ2bXdTVW5aZjhBeG9iTk9mckxM?=
 =?utf-8?B?UE1nZEcvWHpXeG0vSVh4Q3lPNkpEN0dlWjFGUk9IYUgrMm54bSttR0dURDF2?=
 =?utf-8?B?cWNCREN2b0ZTY3NzMXhSYkZPVWdzZjVVMDB3RTlNd2tRVTFKcW13ZjQrMXRa?=
 =?utf-8?B?RHc5SFFjYmRxVEJaNXJGaWZLVGg4SzUxNnBYZzNVeWRFVFdIY0YyREdUNTE1?=
 =?utf-8?B?VzB6ZTRXQWROZzdwUDZWU01UZjF1aDJQT2RRWHFwYXdvTkZnRWxLbGg1a3Ra?=
 =?utf-8?B?c1BWd25FNG5qT2FSSVpJVWlJUmNIRUVCeXhWM3NsNTRiWGtDWjFmdTJ4QTJi?=
 =?utf-8?B?S3NxYWJyQ2NaTHNUeEJCcXo3Zk4wWERUdGdYcEJlVVMrU09mSE9wamhhb3Y4?=
 =?utf-8?B?Vm5GbG1VU3NzV0VqeVhZZ2twNzlEdjlycU9jbWh0OHcvdmI2R2JZcEFqU0FI?=
 =?utf-8?B?WFBsbVpXdWN3NnpWK3l1RzJrMDRqUC9scGhzY2Q5UjNOOEpNSlhTV2VRdHlX?=
 =?utf-8?B?OGRKSlh6cWwxRTVIYTRPVTJWMi9tMjkrZXB0b2tzclRuSHhlRDNHVzVhbmFS?=
 =?utf-8?B?aFptbjlhdDVJc1o2Tm5iNlRac2k5bmlPZmpITS9Mb2tpT1ZJZU5JWEhOdmNo?=
 =?utf-8?B?ZDIxbnpKRTBUajV3Wm9hTzJZeHNlNUQwWXRFSzQwN1M1UlU5a1c0ZWdRdlpM?=
 =?utf-8?B?dGdKNzJMZk1pL2VmNnNpY1R6alR4ZWU5bmJBN08xN1JXbmRCSlhzT3htV2c2?=
 =?utf-8?B?VzdNSVIwT0JIbDNESGgxKzlCMWRuN0NKR3p0V2syY0k1c3JOQ2JpV2l5ZnNB?=
 =?utf-8?B?blUraURjTDJ0b1dtcGQzUkdqeVc3M3pxODA3amdudVMvQmp6aVM0NzIwTk0w?=
 =?utf-8?B?QzdZazBheC9xWHVieXhMTEZ3R2ZYUzBzbWhGZDlxbHhlbDNVR0Jqb2k3MWxp?=
 =?utf-8?B?U0dvQ2NmNUkvdDc5YUFSaklyaFBhOHp2U0p0MnZzWkxzRCtKVGMrUy94VXQ0?=
 =?utf-8?B?UEs3TGFlSnFYcStCdkpxcU11Y1ZhRy8zMm1xMHJKaEVDRGVYMGVSSXJBN3FX?=
 =?utf-8?B?SEpPb0ZWM1duNUI3enVWNlZSaHB5VS9kY3RwMEUydU8wc0NXWDdDZ0JEN2xV?=
 =?utf-8?B?cUNtTmtwbHN1OG5zZWJLR29QeE1WUGc1SnI2VmJxT0RtRjVLZ1lQSU1OK2Vh?=
 =?utf-8?B?UWxkaUxUOTVVUXg0RVViUWYzeE1UMm9DMVJBOFA1TmVRNzdXdHhGdUp2VWdy?=
 =?utf-8?B?VFEwdmtiSEFMSTl4ajZ3cEFnTW55T0lHbXp2a3hidTJ2SEdTQ3BZK21peEVu?=
 =?utf-8?B?dmNKWUltYnhvMHQwY0ZOMDhXcURGU2ZweDNiQnZmRkRsNmVJWkc1ek9hdWhi?=
 =?utf-8?B?WnV5VkpmR3FaOWJMWXoxWHRXeGVzS0FFQ2Eva0wzUy9iNGp5VFhKUTZNUEZO?=
 =?utf-8?B?YVJsUTE3V1ppY2pnOGY3WXBWVnB6VWs0UU03Qjh4K2lPQXJtbVYzWEk5Ry9y?=
 =?utf-8?B?NUtlbzRCQXJHaXZXa0tJSkpibTdYZHhDVjJuQUNRY0wxeE5SNG1pSkxnc1NV?=
 =?utf-8?B?TmY5dTYraVExWFN3OVB6QkJvVmd5Y0RFYmRDb0JXY3hTNENLblZ5Nll4U0VP?=
 =?utf-8?B?c0RmTXl0cUoyRytVenJ2L1I5ZzUwL0Yya3Izb0gwTVpXRGZwcWtLNlg3TEt1?=
 =?utf-8?B?blpBRmJ2dXNxUkpCeWxpRHNjRmxFM0JvdG4vOTVLbUhuQytYUXZFamVxb0N2?=
 =?utf-8?B?eEJ0MitzaDZReE9kd3o5YURNN0hnRGwrSmVjeGZzdzNFSlVxRGVSY1Q4T0JL?=
 =?utf-8?B?K1NOWTduNVlNK1crcGJjc0VoL25abmliODh3bUFrbVVMQnlxWVUrSGF5cDZj?=
 =?utf-8?Q?6pKWKjsSXTpSK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NW9SWHZ0Ty9BY3M0MXZpeGVHaEU4RUR6M2VLd2pkaXUwVzRtNEZqbWF1WjZ6?=
 =?utf-8?B?TnBURnBPdHA0OXRkbHpJVkhTUzVCRVRud05LWTh1Q293VXkxZXRjRisrbWZN?=
 =?utf-8?B?TndjTEhBNUIxeTdBdmk5WXR3cUpvUkh6dkRWN2hHRWQzdnhBb1V5QnlQK3M3?=
 =?utf-8?B?Q25YMTJEQ0w0b21Hd2ZlaktDOUZHbzRKM01WcDdCVVJTUEdlaEl0TDQrVjNu?=
 =?utf-8?B?SjJsQnBZdU5MVTBUbjdJMmNZRTQ0Q3A2VlY2UnY2TjM4MThDamwvSDJCa3Q1?=
 =?utf-8?B?RGthNTVZK0dld1Q4am9sMndoZFB3ajRHVDVzbUJ2QjNoZkNHc0FCN0ZyVWc1?=
 =?utf-8?B?NXB6MDRrelVoMWhPV1dMMVkrNjJkUHhVQUNoSEJRa0Q4dnNMMnhRUEgxVzZk?=
 =?utf-8?B?S2tRVUVGRnkvTjlLeWJFMFprMjg1TERZTWFZSVNZUnJxVHFoSVFDNVphdHUz?=
 =?utf-8?B?V1lmRzY4Y1ZBSTZLL3JNRzQyaUlQcEE1Tjd4Z0FDaVNmZENEMDU0RFI4TnpC?=
 =?utf-8?B?WFg5ZFQybmhVemQvTmMzSHhzUGE5ajVWMVhxanpZYk1pSmhUZTNEb09xWmtP?=
 =?utf-8?B?T0Q0aEN4S1JOZHgrZnd4T0FtVjRyMTUxRmRHQ0x0QU54czJMc0hVZTlsQkF3?=
 =?utf-8?B?cVFiZExDUSszVXA3eEFYbERjOXNHRklMdVQxZ0ZmdFVSQ2k1WEhLVVIrbk1Q?=
 =?utf-8?B?bjhjeHptd202V0RoVDY4N3ZidnRtRG1PMU9pc1hIdUZodWVhVk1MT2ptUS9a?=
 =?utf-8?B?d2t6MWpRK1E5cFZ0VkJOaXdLY0cxTkpDaUdJOUlGVHZlM2xRRS96RW9jNjJK?=
 =?utf-8?B?VU5sZ0N4aGpuODg0ZjFwVnhZZHp2bUdHU0Q4NkpkRHFGVkRyRWhOeEV0ZGlG?=
 =?utf-8?B?Z1NuNW1BKyt1NHRUK0Jjcm1wYSs0RUhYditjTW1GL1lkM0IrRWZsRkdiNFVp?=
 =?utf-8?B?SHhyTmdMckdDNXZZMlJYWjVKb1dJWWpOcndDLzhlYmJxdHljaHErdnoxb2FZ?=
 =?utf-8?B?cnltbTVxL0JFVlM4YllOMnd6S3N1dno2SlNVNWVHOVllaUllZWJjcUgwUXh6?=
 =?utf-8?B?a0pwdkxmTDVwbHRDOFovaTJQdVJRU2JLVVUvbERvMmJrRnRReHlnZGNRVldL?=
 =?utf-8?B?N0k0VVdBMS9uRm84Y2tReG1xL2x3MmM5bUJFZlN4ejFEMExLc0V4b1JBMTdS?=
 =?utf-8?B?dFhzNGc4OEp1R3A4ZWViNVlnVGdlbXVORmUyb3hib0FITU1pRFdQL0JhcFZi?=
 =?utf-8?B?U01jUDl3bXFkRWJ6ZlE2MnI1c2dKWUFJdWhDWDlSTENMUnd0NVVzUmZxZllp?=
 =?utf-8?B?Z0k0SnZkcVNjRXU1eFBDaFdCeFppZktWSDl2WWIybVIyUE5kNVh1RmZEMUVZ?=
 =?utf-8?B?S2FHM3ZpcHdlamJPQVZBT1ozM25ZNm16Z3hvODNqM2VQQXNVN0tlUEpUbVds?=
 =?utf-8?B?blpvZ2M1QjlBNkNWL3NOZUJuZ3FGQzJDcFdMUHNmb2VZalMydDFXNEVUeDNQ?=
 =?utf-8?B?OEVoNnZiRUR5eUFia0pJbjkyd2F0eXAwck1qZWcxNHhDT1MxaVJLQ3IraFpl?=
 =?utf-8?B?akxySWU4cDVFMHFjbm5xUktxeWlYS20vd2RJMXMwcy91bE9YSVp5NWMrRmZO?=
 =?utf-8?B?UVZ1SHQvM2ZrT0hhUEVteTRxY1pwYlBJeDJ2dW5zVzFJVWp2RXRoeVRvNTRH?=
 =?utf-8?B?bGJxS0krRjF4Vk50N3o5SklncDJxM0dLUzFrZDJyOVp3a1ZYVkIzeG1jS1Ir?=
 =?utf-8?B?Q3R3Q3p3aEtJekk5bmFPeDlFRXphaXB1d1VzTHN4Uzk3NWs2N3hTZVlXWmlL?=
 =?utf-8?B?MXJwR1JDTFVSTW1OSEtWNFBmMDA1M0dOS2c3OXlxS2V2QVJ3V0QzRm82MEZR?=
 =?utf-8?B?ME9sdDRHdlg2VElTWE55b0g2dlJBeXFtaDZZWG5pb2U4MXpGSWluTm1ocjM5?=
 =?utf-8?B?OW8zUDhnc2NIdVI1ZjJyYnphQkdTcE1YNlE0SmM2QmQyRlpNWXIyQUVDbVc2?=
 =?utf-8?B?ZlNaNStNOUorRVc5RzhyaUtTL0pnWnlTbnhnenRqd0ZhZFo0cjVubGEvVHBr?=
 =?utf-8?B?VW9zQzdnMGRKMGxTakZLMWFMTVRGQ2J6TEVVZjJFWi9NcGtXMExOaXRhcDUz?=
 =?utf-8?B?cWVna05JRnl3enFrbWh6NGxBWWZVR09VbGpMWTBCQWpXRkgycWJKQ0dKcC9E?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99ea36cc-95e9-49f4-804a-08dd24034995
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2024 10:11:09.7926 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wQcc7J0/nnLbT/klPdgwEEMFTTS32z4HMlvovOw9VNQQCvuE37//w+vxYnxHTM/R8pD7E3DPYwi2GJEtiV+yFqoyQSQ5wu/lkJgs9MPhUAA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8063
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


On 12/17/2024 3:02 PM, Ankit Nautiyal wrote:
> Use helpers for source min/max src bpc appropriately for dp mst case and
> to limit max_requested_bpc property min/max values.

Thanks for the reviews, the patches are pushed to drm-intel-next.

Regards,

Ankit

>
> Rev2: Drop patch to limit max_requested_bpc based on src DSC bpc
> limits. Instead add change to ignore max_requested_bpc if its
> too low for DSC.
>
> Rev3: Update patch#1 commit message.
>
> Rev4: Rebase.
>
> Rev5: Address Jani's comment on patch#3.
>
> Rev6: Rebase.
>
> Rev7: Add patch to fix return type for dsc_min/max_src bpc helpers to
> int.
>
> Rev8:
> -Drop the first patch.
> -Refactor helpers for fec support.
> -Add patches to refactor pipe_bpp limits and link limits.
>
> Rev9:
> -Address review comments.
> -Split patch#3 and patch#6 to 2 patches each.
> -Rebase.
>
> Rev10:
> -Rebase.
> -Few patches dropped after rebase and new patches for crtc_state->limits
> for MST.
>
> Ankit Nautiyal (14):
>    drm/i915/dp: Refactor FEC support check in intel_dp_supports_dsc
>    drm/i915/dp: Return early if DSC not supported
>    drm/i915/dp: Separate out helper for compute fec_enable
>    drm/i915/dp: Drop check for FEC in intel_dp_fec_compute_config
>    drm/i915/dp: Remove HAS_DSC macro for intel_dp_dsc_max_src_input_bpc
>    drm/i915/dp: Return int from dsc_max/min_src_input_bpc helpers
>    drm/i915/dp_mst: Use helpers to get dsc min/max input bpc
>    drm/i915/dp: Drop max_requested_bpc for dsc pipe_min/max bpp
>    drm/i915/dp: Refactor pipe_bpp limits with dsc
>    drm/i915/dp_mst: Use pipe_bpp->limits.{max/min}_bpp for dsc
>    drm/i915/dp: Use clamp for pipe_bpp limits with DSC
>    drm/i915/dp: Make dsc helpers accept const crtc_state pointers
>    drm/i915/dp: Set the DSC link limits in
>      intel_dp_compute_config_link_bpp_limits
>    drm/i915/dp_mst: Use link.{min/max}_bpp_x16
>
>   drivers/gpu/drm/i915/display/intel_dp.c     | 177 ++++++++++----------
>   drivers/gpu/drm/i915/display/intel_dp.h     |   9 +-
>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  30 +---
>   3 files changed, 104 insertions(+), 112 deletions(-)
>

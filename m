Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AEFC880F3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BAC910E50E;
	Wed, 26 Nov 2025 04:36:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XuksrzWH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26B9110E50D;
 Wed, 26 Nov 2025 04:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764131779; x=1795667779;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xCE26w4ftCvPpCrS0ePlAJEgKiyckPOiHgnzbIHzvyY=;
 b=XuksrzWHyhHB/JTq26Ij6LRDfiE5K0W3yPi7Gl9wmXbVk78L9xR9acju
 2OQswxSeA62YygtH1Us7LTlf6YIXB61nLZdQeTOaqPKdSQthMuRldCtl9
 nNQCwXB+KRwdl0RPFJYn1bPv09+ybrOUHMaw1ha0IeIIp7I4p0Z4bhWTr
 j8nPzxBiydGe/EnFR/JsZdMRQswZdFs+TkWT1ryi7OLVPxwtmBDzyw5KM
 tzgKcdiijk7tXVrj4wN1DClT6LkMy//0bTVzKPjA9ZiFsygD5xh4Cgg70
 Wfw1ZxLvw03U6GAWQJZbxS14PPW1MvxKUR0CTURsGZbed4btSgFFwLH5V Q==;
X-CSE-ConnectionGUID: 5iUtL6DsRb+xncI1qdxILg==
X-CSE-MsgGUID: s89+AZ4URxyIuIEgeXm2Bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66202610"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="66202610"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:36:18 -0800
X-CSE-ConnectionGUID: 9NWIiHSjRH+IfHVUOhDPvg==
X-CSE-MsgGUID: l+KbxXXSSIyhQG1kBu2eew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192921299"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:36:19 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:36:18 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:36:18 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.21) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:36:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IiZbjQyQ53bt4ffsMlOuiLzxaEzLLQZMMqCj2y1KtKYP6kz8B7gtsjA80kPwnCIBObschWo3/RE33s7njE9WEXOyqcm+3NfF5jyjpNwtp0wDsKBTJO8GjZixkHRLV5wb0b00lTMOQFfR3aGVH3B/tJogIwwyf9hmhFN0r27BYhBaCiWK5B2+/SAao9rRwa+L/1KnElAH1xWjnRMpjZnBiWLnXUE0TpadB3zxqBngYvkmzKE4HfUhIpW7u/oQuul4H6D4hdQ9cu7CwYYnVzC4odc1v8mOkIqvQkRJEgyqMt7/HLYobLAoDd5iHKBNkRFXlTQe3TnZxvW5ifFxFkek/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vlYONIb6/P4KJYLcbUyOazGQOC5TC6wptJh58zeoU4k=;
 b=RLECc2GEXtuXLo3gSWLLwti8BBMxwgv2NZNGHgmF0uK+sL5JC0jOJNGwHQdQw+KEatl7IyBMCdkKd1Az6gpuFSjFrZpYMcD3PQvM7yhzwiGmM043J7cUDd56OvuqB9x0jEzniA9i2kory2kvxQPVPSw1Y8kFkDr/seTjKGqM915fLpqy7V+cPiYYcDmrrYH/rWd9QZSo+xcujwEIO6Bh09VB3BgSXrov0OCnHZ6ZsbWNRDCU2FtGgIrwIOFZ7hSZOVILg26nszTSjyICjF8+HyKt7Xq664/2kUA1HTPUEWydaiHpEwxCr3ZrH9iJSlSXQstP5NS7PudRFRhsk4nEJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5010.namprd11.prod.outlook.com (2603:10b6:303:93::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 04:36:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:36:15 +0000
Message-ID: <ac7bd7d1-0ce3-4443-bbae-606d10694bd7@intel.com>
Date: Wed, 26 Nov 2025 10:06:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 17/18] drm/i915/vrr: Enable DC Balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-18-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-18-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5010:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b789cc5-d232-48f8-e1ff-08de2ca554ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T3JhaDdLLzRYUWpoRXBDSlcvT0EvaHJPMEFKYkE0by9aTGlhTktmeHAxWWtl?=
 =?utf-8?B?UWxHMUxSSFI4VWFKK1B6MUtQdGtOc3d3eFdaMUJoMHYxWDBZTTV1MGJuSS9t?=
 =?utf-8?B?aTlXL3VKMk90bzlRTVFDOGZSVmFOQUsvaFhzUnI5eng3cUxHTFdXa094RGpm?=
 =?utf-8?B?cDVuR25weTgyK01WVzVHOXpGSStXZXpNWXFVMExDdDA0QVhnMHNJUlRKUHRm?=
 =?utf-8?B?UCtZWFF1SlBpaDUxYlJ4cW5STGJFbm4zekVCYWN1NWlVOVJSc2JUQStWWEtl?=
 =?utf-8?B?b0l2aWpQaTBIR3BxQklQUHdkOGF2NU1SazA5SzdGbmxBY3R3SXFPK2trUVBN?=
 =?utf-8?B?aitDa082MW5JVC9wSkNYbGJKMmFBNWtBalllY3hvYXN5blRZMnBoK0tMZnNR?=
 =?utf-8?B?Nk1kLzhwWDRPcENOZFZCZmxibzArQlhXaE8yTU5uTEdVaUExVUtaK1ZOQ3k0?=
 =?utf-8?B?bURXZjAyUk8vTEtaaENoZ1BGUi81YkRrYlUvNExnVFdNMEhQR3NFUkxuL1Jx?=
 =?utf-8?B?bTRWeFZkeFI4SnVHdUsyWDFuVkNjamExaW9VUXkxdVZwR1lRaUlpN1NtdWs4?=
 =?utf-8?B?UDc0aitNYTMvY3IrQjhsdStUdTVhVE5KRDc0N09wN3N5d2NjYTd4Zy9vRjgz?=
 =?utf-8?B?eXlYcjgvcDRSNEZ3Zzg5Y1NGNUhlSy9ER09Pdlhzd3VSN2lTYk1ES3NTZm03?=
 =?utf-8?B?T0JIazJqNUpBR0ZTTHRFeGZNa0N5aW9jR3dYQk9DRUNsTWZQOUtOTkVXSUFF?=
 =?utf-8?B?T2doZFFLUEE2YlE5cUJvY01SSWRYVFIzWTllMlBFS2RwbFVRTi96L2FDWVYy?=
 =?utf-8?B?WHhVejlYL0ljSUowNEZHQ0RaeDBDSHRTSEhxZ3hqYkovTm45d2gwVmtIaExv?=
 =?utf-8?B?VmljbCtBMGVoNmduS2phbFVvMWl6Q0loeU9VcmwxUmVMQ0JLaFhGd0gyamZP?=
 =?utf-8?B?ZkI3a2VmMGsrNFlyRXk4aGUvOU9NbkllV05wODg0WllneTBnOEs0UlNSLytE?=
 =?utf-8?B?aEhOQjd2aDRmT2J6cCs3bUNGZWxqclNRU2h0OGR4YzFhTjZtZUd2eDc5S201?=
 =?utf-8?B?R0FCVnpxUDFkT1RvT3dYbDBTOWVzN1hoNTBCMU5nYXNFZG1meWw3U2hkNkQy?=
 =?utf-8?B?bFNhWTJZempzb0pIYVB4RVhtaFZxRlFYR3NNcndwa2JCeVhuN1FBLzlSVGpv?=
 =?utf-8?B?bktjY0FKKysxT1ZYbHZLdjhTY01SVlYvek0rSUNRK2lxVHViQTduQ25VRXVu?=
 =?utf-8?B?ZGVyN1hRdGE0TFlkNDR2L3ZuV29RSG43T2lmTm1hT0hXN1FWZjlVZGlyMVNN?=
 =?utf-8?B?dEJBdGdpOTdxZE1PVWNOK1RDWDBsd1BRU2tHRjVXMk44OWQ2L3UzSG1qU0lk?=
 =?utf-8?B?V2N4TjVIMlJKSTRkakczajI4OFJqcEVaTHMwUGRUMTd3bmtOdmFhOWFia3px?=
 =?utf-8?B?empRbHZMK3A4ek1YZlZaYVY3T1ovSForV3NDZ0E5akZYWUlHVXZUSnRna3N3?=
 =?utf-8?B?bTd1bHBrN1ZONDVTV2IzZnJ1U3A5Ynd5dC8zSlZzSUtzNXM1OW1BL2YzZmdj?=
 =?utf-8?B?Sno5QkxrUDM4anVEbVp4U2hmV29oT2xxcDVZemdTdjE2MjZGeDBMTEFsdHh2?=
 =?utf-8?B?YXdqenYxY2RGeXN5SGEzUTh0OWlFYWdueElhc0dvNmJaVUVVRHZ2RFhXUzcz?=
 =?utf-8?B?dkJsU0JIVnhxdWFPdkduYkxQZUl0N3c1eWlGMlpPMHpjNVp4SnR0bGdWczVJ?=
 =?utf-8?B?bVFhZnFJbkVXK3Q0YlQrM3Y1TFJrSGo4UGs3UlJ5cjdlNmpESWNaTWlCODRL?=
 =?utf-8?B?VlBOd2RwQlB5cGs0bVhCaW9SOTY5QWFNS0RkUkt0NnFqZzkxSDUxUFBUT21m?=
 =?utf-8?B?UENuZ3RaYTUxdnpEOUVvRmNVT1lHRmtjVzhZbXVoTzB1WWN5bWQ5cVZpR1Va?=
 =?utf-8?Q?o8juXetd5/nrlra1Pfrsn9O7hDCh6e/x?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0t2ZmExNnh6R0xzZlY2YlVMZkVTZlBxcys1Ui9mVUk1K2FmZFVVQkpuUklX?=
 =?utf-8?B?TDFXZVFmZmZMRjh3SjcxTVVYdHdZRDhSNy9XRFpYeWZRM0xJbWtHaC9DMktl?=
 =?utf-8?B?VkZ1Rkt3cHF3TW5zUW9LdHV4eWVVSHFqZzN0VmNkU0JIMm92blY4LzdhOFFz?=
 =?utf-8?B?ZnRjUTk0OXFlU2N5enlPNmQ5K0ZCM3hJeVVJSE1UZCsrMU9LV3pSaTF0ZlJ0?=
 =?utf-8?B?enpEU2JXbC9acDEwQUNOclJSYTNNV1AxSG5qaFZvUjlIZUdYRitheDh4RlE5?=
 =?utf-8?B?OWdVWnZCV3ZvQWZaeUM0bGw2Q2owOXV6a1VlV3FDV3FwUnh6dEx5YXdKYkY0?=
 =?utf-8?B?eGFLT2orZ0pTbkZGUHVtUUdyeFk3RXhRUDd4YlVDc01IeW9zT0Z1VnFBaEJN?=
 =?utf-8?B?V0pvL2VQUXg3YVRjTEcwcTByaHBxdm9CQlNmMUNBY2NKTE8zbkNxcGV6ZXBC?=
 =?utf-8?B?MlE1NUJXWGUyZVFUVkQzY1NadjBkbTgyZ0ZRbXpnMUZXY1oxS1NmNFRwcXNx?=
 =?utf-8?B?WlVuemI4emNFTTNvL0NuT0ZwazJFbHJJMVRKdU55eitUK0lZcStoMVlGOURo?=
 =?utf-8?B?RGhvSlc2ekRBY1NEWS90ZVNlOHdlM0dHUnMvazRSNFBWMENvVCtsWDVyM21L?=
 =?utf-8?B?bkUycXYybXNHT0xQdEk5T0EwVG1nTFlPeFpQZzNob1VnRkg1TmRsdjRDR0s5?=
 =?utf-8?B?Qjl2dk1mMUs2NHN2eDI4ODJZQitCdGdZZVBkMUxwb2ZuZWZyaVF5b0pBd241?=
 =?utf-8?B?NXl3UmkvRGdwRXRuR1Z4NVhTZDZiTk9CdjNnb1BnaVNoVmk0YzM1ZVRjN2lT?=
 =?utf-8?B?QU5kakxJVVJEaHJ4ZjgzSjdhcmVFSVRkaVRpbk5VOU9tV3BtU2h4WHRNQnNU?=
 =?utf-8?B?S1hSc0ZKTDZ3QVFuNHAwNHR5VDZmdVhUYUk3UllDRUVCYjd1ZUJ4TTRtSkJJ?=
 =?utf-8?B?aHpSbzl0YUNhWU95Vm14eGt0cEt4Ty9SbnkvNFNxQTIrOHNvVGo2Q3lJZm94?=
 =?utf-8?B?eHljYlhFOWFveFByS1I1QkdDZ1lPczBjZUp4MmlKSC9xUjZFUXRqZkNEVTVE?=
 =?utf-8?B?Tnd0L1lqbWVKZ2V3Wk5OTFdsS1h0NHNaTDFEcXYvVU1YQkNrUjlubll4aHNz?=
 =?utf-8?B?Q05DR0dibDJVdk5Oa0djMG1qNWQyTXVETmJ0VHZyZy9wSEFIVzNkbGVxRG01?=
 =?utf-8?B?TVpLZjE5VThzSWh0aVNpRlFWOVZDZHRHaDErdStyT2R2VzNET3VIdFdRY3E3?=
 =?utf-8?B?d2VGQ1QxcFJsaTlJQmtxNUVNeWRSWDlabnhTZjJjRFdabHB3TUh5OFpDbU43?=
 =?utf-8?B?L2JqTzJ6VUpCeWpKV2d6Z1RsRE90MDdNWVhHd0FrTU0xWERVV0NpaHc1SEhD?=
 =?utf-8?B?akpSeS9OTlJISGNvNCtpMStTbCttdURWOEhWaGNHc1VFR3I5aTFVWElMUG1M?=
 =?utf-8?B?cjdDVExYMXFkQnVSQ3l2dTBXVlc4MU9XNGcySW1tczdCcFBsV1A2UW9pOTlC?=
 =?utf-8?B?SGZqR1JmZFk3aU5JT2Q4N1JlYWhOWENkUnp2ZW9QT2ZFVHgrc1lhTHk3alVQ?=
 =?utf-8?B?b1M0WUw1SXhVUjZ0eDRVcm9USzd5VlRJdDltMnE2Wmh5NFJLTlZQV0N0N1NY?=
 =?utf-8?B?dmxqc05OU3FpQzRadFZmYTVxRXUzbnhOSzhyOHEyU1V0Y1NVNk5FS3FqSWVi?=
 =?utf-8?B?QnpHQTQvWndDTDlQdWpOaWhvT3gxNnRSSldpQkFMMXlNQm9oS0tFN29iQTNC?=
 =?utf-8?B?NFhkTjlPZ3pKMUx2Wm1ueitwalJYY2M2WVB6eFN2c1pycjVrUFhBK05oZjV2?=
 =?utf-8?B?TkFCWWVLVkI4bGxPaGxaNGRuU2l0WHBoeXRVOUhZbjFVLzVzb0Z1K3pwQXQ4?=
 =?utf-8?B?bE16ZVc0OXJkS3ZRYTVpdzV4SDBnWnVnZm9Ca2QzMkRTZkV3RFlSZDhCRjE3?=
 =?utf-8?B?QUlEYTlEL3h3WVAvYTZzWTJNMmNBalBOeFdEeng0dnVUbldXMGpzSjROMnIr?=
 =?utf-8?B?c0x0WFk4TE1VTytVclU2b3B6UnhJMjcvVEI4UjB0U0k1YXZ0cnE5T3hRTExY?=
 =?utf-8?B?MEhDUm9rdHBIUG00eE12TFpJR2hQeE93c0JzSks3Z0tNWFJ5Tk1NRFRyR0dU?=
 =?utf-8?B?VVJDb051bDlDMVZSVStmWnQvNkZyaldRQWhRd3pjRituOUJMeGVlbEVlcU55?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b789cc5-d232-48f8-e1ff-08de2ca554ea
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:36:15.8226 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cyKZhYg0Sch5/EHzXq9vzxYG4fv09w7rMgvczQJFoRXHpPhkeU5dzHW0PKtzk/ThtuIe68ZCQTPqfOscAUb+s4gAKSvu0ApTc0+5vp9ZzQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5010
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Enable DC Balance from vrr compute config and related hw flag.
>
> --v2:
> - Use dc balance check instead of source restriction.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 74a6d5243f00..87945b031a7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -266,12 +266,17 @@ static
>   void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
>   				   int vmin, int vmax)
>   {
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
>   	crtc_state->vrr.vmax = vmax;
>   	crtc_state->vrr.vmin = vmin;
>   	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>   
>   	crtc_state->vrr.enable = true;
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +
> +	if (HAS_VRR_DC_BALANCE(display))
> +		crtc_state->vrr.dc_balance.enable = true;


Lets not set the crtc_state->vrr.dc_balance.enable here but in 
intel_vrr_dc_balance_compute_config().

Also, add the restriction to PIPE A/B in this patch itself in 
intel_vrr_dc_balance_compute_config().

Something like:

intel_vrr_dc_balance_compute_config()
{
     if (!intel_vrr_dc_balance_possible()) || !crtc_state->vrr.enable)
        return;
….
….

     crtc_state->vrr.dc_balance.enable = true;

}



+    if (crtc_state->vrr.dc_balance.enable)
+        vrr_ctl |= VRR_CTL_DCB_ADJ_ENABLE;

This should be in vrr_enable() and this bit should be reset in 
vrr_disable().


Should be part of intel_vrr_{enable/disable}_dc_balancing()

Regards,

Ankit

>   }
>   
>   static
> @@ -892,6 +897,10 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
>   
>   	intel_vrr_enable_dc_balancing(crtc_state);
> +
> +	if (crtc_state->vrr.dc_balance.enable)
> +		vrr_ctl |= VRR_CTL_DCB_ADJ_ENABLE;
> +
>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
>   }
>   

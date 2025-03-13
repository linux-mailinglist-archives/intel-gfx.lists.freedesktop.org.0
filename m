Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8456EA5F584
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 14:11:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A8BF10E888;
	Thu, 13 Mar 2025 13:11:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ATAtsvvW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3B910E885;
 Thu, 13 Mar 2025 13:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741871470; x=1773407470;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=o/y+k1GmrVBHtrKYPhraUKFEXhCJoLWRu81EXMFWI5Q=;
 b=ATAtsvvWzwv3DFN2B0v/3j2IRoBmqrBfB06ZwLuDChhbrv9eN7pAfLr5
 9y1nokKw6EM8LM6a6XqqD3k3I0n06vFrcxQ5h+6QEsOrKX7GMW/vNbL8+
 H0KlUpdLt0+ht1Xx/jXrtcnM/JSRx8/JlOAqcVJGIQ6jT85agXGmDnB0r
 JzYbF8YRwvl7cM8tkgyFueV96HJWsKv0qk4qag0B9agaofaHtANvhqkEc
 A5DF4fEUuCUq3hkwfwaSYi0JLejVAM1JFLNatycE3DI4/27N/HMXhZALC
 TXed4FNZQ9V3ICt4KFhpe6CnsOGO3Zdbd7ANO8r0OZE2HvXIuXG5YU9v8 g==;
X-CSE-ConnectionGUID: byL91LS6Szi8L1ztRipnPQ==
X-CSE-MsgGUID: 1FBC8auaSF2nqbGpujJ7Hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="46770363"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="46770363"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 06:11:09 -0700
X-CSE-ConnectionGUID: avEvVLcySOmUkx5Rqo34Hg==
X-CSE-MsgGUID: qZqT3kY7QP6u+QhtxcBolQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="121008894"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 06:11:09 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Thu, 13 Mar 2025 06:11:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Mar 2025 06:11:08 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Mar 2025 06:11:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YNk4AngJ8I8zWK33Pa9EWSe/RsnvsfLCtgNZ0QdpUL1iZoT0ANMjHJj4Mq/NvqXjx1Pk9l3JyFudkSC47Em8AddCNqiCAfX2z/0uMbR3+KQIrFvRR6rnCqiTVrNpkrT8X9tC5a9sto/kh5CJ+F88e0jyCTQKiQtA4DMz0eGaDvkwABvJ93wLib1sP/zoWFuGTf6XTZJ9RZK8p0sIP8TaFB+sIhXruC4nElsUclUsStPgVNzT7l4rjvBy/awGlFSvdLg4aZiwWbcudtwDLBeNxfFYaqLCTgwYmWSMWq2bHn60ZnFWmY4pnJpi9nh/3EaItdrpFsbsT2q3zWbhxTaFVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4SX+Ixborq3ZfjeYIvsD2wizjUFcHIDF17rlpcnI0dg=;
 b=xuf98FdTc1isGMf4bg3MMv4VsjsYcNaKmkBu7Bf5F9/ROFjiGE+DCHEt9RDfsQmgQQaH/hFnmdfB8IbErbmL1wx96QPrQiWoJQweIIt61Tv/Rw7BjesDO+fYMK6spL5yvhim6BJm4G9civyATAqRtvwEAxxkgpq97cK4gSux0rsgHbisP6voxYIqr8N/2rYhIZprLaUhugazFU38ZLnKmQJ5czkOPllKIw+eDgToq42Mm/HbvIMyQ3lfQnNRQgxoxNqTJMZBhXGft6eY/t4xbkChv6D0vGPDDFcSn+N8SKPYJTodn0WQUqW2JtwXALMq/PLwwwOh9Vw3zWXmKvqCsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by PH0PR11MB7587.namprd11.prod.outlook.com (2603:10b6:510:26d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Thu, 13 Mar
 2025 13:10:36 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.8511.026; Thu, 13 Mar 2025
 13:10:36 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87zfhrfnqj.fsf@intel.com>
References: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
 <20250311-xe3lpd-bandwidth-update-v5-1-a95a9d90ad71@intel.com>
 <87zfhrfnqj.fsf@intel.com>
Subject: Re: [PATCH v5 1/3] drm/i915/display: Convert intel_bw.c internally to
 intel_display
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Thu, 13 Mar 2025 10:10:32 -0300
Message-ID: <174187143210.91144.10112790943902906895@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR16CA0067.namprd16.prod.outlook.com
 (2603:10b6:907:1::44) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|PH0PR11MB7587:EE_
X-MS-Office365-Filtering-Correlation-Id: 61bab35d-0984-4e66-a1a9-08dd6230719d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dU5EelB3U1JNRzBqMWRiSWxyTTNObWZSdURuc3d6UEU5eS84RzU1K1NGVHE1?=
 =?utf-8?B?d1NTMlk2aVJNYnhGdXVrWXpkNHl5OTVUeWhjNXRHWmNRMC9rdWJMd0RsdEda?=
 =?utf-8?B?S0IrWDlndjc0OFFuT2xSM0pIdGRlMVVtV3Q4WnZGVHFMQVRuMXNyMklxdE1B?=
 =?utf-8?B?MERGR1dsNy9JWGZvY3RZbzJBdUVpVEUxblp5U2R0c0JMZ0FRUWtZWFBQb05Q?=
 =?utf-8?B?RVEzWXh0T0hzMEVDM0dvQVd4YVdBRGRZMWxpeXVoWFNXQ2RkNnR3RitWd2px?=
 =?utf-8?B?NnFjdlltYXZib1NZQ0R4UkZhS1NYTTF0YUIxTC82Tm1ndjlLZUNrNVFxeTBk?=
 =?utf-8?B?NFVUekpET1dLMDQvamFvaHhjamRnTy9OcWY1RENQdmNoL3hHQWx2QXRSbHc2?=
 =?utf-8?B?Y2d5cjJrVTF1bmwzQTlvL3cybThDZlA0cTAyeGZPN3dxc0drZ0pHSVFwUkdY?=
 =?utf-8?B?eUQwS09EV3AxaWo3ZUZrTVZUZUpMeS8rWnFxQkFkRWpKTGN2anN1cTQ1aFZX?=
 =?utf-8?B?a3VDR2lURVY0ejB4ZC93WlVKNVJwOFVkbVJHWTNDbjB6OWdjTHRxenhBWUc3?=
 =?utf-8?B?TlduOU8wemhmY282dUpCTlZMb2JDNEVNMXpTOHkyYUJOdjZBKzBMMnJJNDUx?=
 =?utf-8?B?bHhxancrdWxYMVdjTG9FbmgxWGF2RjJVNDNGd1VGbitaZ0dQcFVRNk1lTVVI?=
 =?utf-8?B?TklkSk5pVUdFY3lONC81R3l4QmpoWFJoRDZjenlTL3I1bTgzNjloYTJFd003?=
 =?utf-8?B?NFNPWXhET1dXMnVMQnMxOGdaTldJZ2V0K3Q4dGZoQmhSL2s5YkZmdjFER2Nz?=
 =?utf-8?B?TWIvaWdLdTBGbjJmRzB3RmNZY01NZGhlK0s1MkJXSUZlcEIyaldGMUtoRERP?=
 =?utf-8?B?cnhXZGx2Qkh6NkNBRlo4UjU3dXlZZUVpR2ZNUStOK0loQzlKbzdQRUlmMmtS?=
 =?utf-8?B?NWVjcExBM1BiSEFRR200YWVGMHNvVndzZld1aGQycVZ0bzBGdDVNcXZkMDBY?=
 =?utf-8?B?ajROeFdDQ2gvMzMySlZjWWhDSnNlaFdOaGVXUndYRXN1QkpkTmZXZGVRZCtR?=
 =?utf-8?B?SlFFUUg4Ukl1bnJNbWJ6WXQ1cjA2U21xODNncVVsQ2U3cDV5MCtYaFBrc3Qw?=
 =?utf-8?B?bW9HTzZJdkZPVzJhTGpRS1dwVHpnbUtqWDdBdTFLMW13a0hrQTRYR1VES2Rs?=
 =?utf-8?B?cndzbno5em5pbzB5VGNkdG0vSGVNUDJnK2lLVU5uR3Z2clNqdmUrWkpzd2JB?=
 =?utf-8?B?QVhETDZzMFV5ZThLL3ZoOG1sVVQ1Rm83ckZYRTM3Y1pRVkpLY1FYb3J3TTR6?=
 =?utf-8?B?U2w3V3I2VGU4T2VweEgzZURpV1hkZkhCWTlZOGxyQ3lMVlowTUJNSHl5REpr?=
 =?utf-8?B?VlBETTdFTkRSSklFZDRhV1N5T3h4VlhWS1MvOU1qTXRRa2U3OHhnTFl6Ui94?=
 =?utf-8?B?Y0YrVG1taFlxcmd5Y1RQNWlHcVppdkx4ejRZQyswZXd3YXM3OWxDSUJJZWZZ?=
 =?utf-8?B?cDZUS3lnWHArcWJDMGtzeHdMNXJCaTNpYUxvYXh3T0Nuc3M0ZFdvNmdhVnYr?=
 =?utf-8?B?S2ViTlphZENCb1VxZGVHUmVNYmZ5NVNneU91SVpoMFVFMTNxc1hUQ2hIZHh1?=
 =?utf-8?B?T1lDbFlybGNKLzJmU0RsOFBzNEY0bW9venhLTXJPL1o1b0VZZXgrR2Y1K1Q1?=
 =?utf-8?B?dm50NDkwMUNWSWkwQzB5aXFxK0hYcUhxZWVQcGVJMHd4MFF1NTl5M0RnaFo1?=
 =?utf-8?B?dFlhN1FCRzcxejZqUzNwcUhGQm1sVXk3NVhwMDhBQkphdDZQTnRnQ0tqVndh?=
 =?utf-8?B?eUtEbk43c3JLUVRBUjVnNldpZXNmb04xNFNKTlVLNXBqL3ZVYlJrYzc0NDRS?=
 =?utf-8?Q?aTJXNwzmeyNYc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVBkT0lFN0wxeXdiSGlONWtkZjVLUUVUNHBOcWY1SDEzeWh5RWRibDByYmpr?=
 =?utf-8?B?WkRiSy9wcldqaTRzSThFVk1KTmNWR3pGOVlVNmQyazNWNmZvdys1dWRKZEll?=
 =?utf-8?B?RnVEQ0NrellUN0lQTFBJQ3FLTnNqc1BhN0RUVUQzTzhIektKZFhuOUhHcHla?=
 =?utf-8?B?dWtEUzJtcVRnVEZJVFlkTGdjY0R4RU5wekVmWEVDTnVzOXZHWjloanVtbERK?=
 =?utf-8?B?Y3NpOUlVZmhjSHExQ0hFZUg0WDFzQ2VWMlp4R1IvUTdISUJGRDZZTXNSRE5x?=
 =?utf-8?B?WFM0N2VmczJiTFBlOWg4cWJMZlB1MFpsWDc5eUVYV1ZmYTlpRDJ6UkxrU3cr?=
 =?utf-8?B?QkE3SDViOTZmeU1nRVNMQ0c0Z3E4bHUrYVdhbCtGVnBYYlVKVlVrRk5xeEVO?=
 =?utf-8?B?M1NSL0tCSDRkRERkSVdMVTBoVmthNVZGSmRHZjR6ZU05bWg2b1Vrdkpjajdu?=
 =?utf-8?B?SGx4bjBiN0J5Y1RWa0QrL28zUWVGZmlaanJ6N2JNRUZ5a0QrcVFCMEZsODZP?=
 =?utf-8?B?NjdhajMvZDRpY0l3QTdLZk5sWGV6VTJTUStJaStpbEczTjczcXhkSzFzbTdJ?=
 =?utf-8?B?K05VQzRLdXhtaUtQS050dXJaQVAzeENEMWRQNUtPMHk5MUEwaTJ0Yll4Tkc5?=
 =?utf-8?B?S2J3U3JpQ1JraWN0eGNBbmc2NmlxZnM1RkRvWEtsZXUvWFgrSjhtamFRK3px?=
 =?utf-8?B?ejkyRlpmVk5pZEJNRDQ0UVdpUzJEbkxEMXZyZGlOTVdZWWV4WHhKblROTlI3?=
 =?utf-8?B?dzBjVnRFSXdBRWg4elkvRmVVZUhtSGhxblFVVzdXUzFPWEdvdjBYK2JDYnpa?=
 =?utf-8?B?SDRCMXh0QnFSVEdHellIS2x3eUJBSS9wdlpuMXZMV3Q3RTlrVElWLzRUQ0VO?=
 =?utf-8?B?U3N2R2U4QkNEZG1BU1ZqU1Izd2FxMTVkQ0FjRjZDTHM4ZWg0bjhYZHhWdHcy?=
 =?utf-8?B?SWlYc041aFViRXZSdmplL0FqMnRMR0tzb2thZTRPcVVZMnJXTXIveERDbE9G?=
 =?utf-8?B?Y3RrSFpMaG1uaGZQUXVFbHlZNnRQandPajloODMyU1AxMGhqRHRKTXdYeUo1?=
 =?utf-8?B?SFNqQy83RHJuSzVPUHNKZnRna05qdXNHeDdDZW5GY0U4STVteis1WGF5NEZQ?=
 =?utf-8?B?K0FNUkdvMkozb25NYkJkQ0RITnBlUVZ2dzFYTHV6MFVELzhURGM0RE9aZVlG?=
 =?utf-8?B?c1dXeGFjZ1RsVXRHZUZYNTFQaTFxUk5xcFBEZmhIY0RRTThGeGwyYVlIZnND?=
 =?utf-8?B?Y2dSNmFFVWt3SVc4NzhLR2Y3dExrakg4Nk9FREsrTXE1SFpITVNIMTBUM0FM?=
 =?utf-8?B?QVV4WFJqZkdkNWliSHpyUDg1RE5zKzd6dFBjUUdRQVVMREE3UzBkN09yMkhp?=
 =?utf-8?B?UXVaNndqaS9WekFLV1ZNdWdKTkdpdFN1ZFFWYTY1aDZQZ0dObHVqekc5V0xr?=
 =?utf-8?B?NXFsNW1rZ3pZaytSYjNNSzBCNnRYYnE0UlFhOHBZNjU1M1dRQkZQekdHRkFa?=
 =?utf-8?B?cE1XSmZaWTJZY0ZjS21WL3I5c2lZTXNIMEswOWJCaEQ4L3BZTlFjemZDUjlH?=
 =?utf-8?B?QmFXYkxLa0dNK0ZWMy96eEtqM1dneGNxVEgxZVA5M3JyVW1XTDh1WU45a2pl?=
 =?utf-8?B?UW5ZeFdtYUdMaTVFdFBTV3hWVm1nY3VGNHdhSS9wL2ZCcmpQR00vQWdaWEFx?=
 =?utf-8?B?bnNpWnlIaktyT3VTUkJqK0VlTDRkNzdYeDBQTUg3UDBpRStiU0JYUnNaSzRE?=
 =?utf-8?B?YnFqV2ZJYmhVMzV5MUlJbUNRck9Ka3B5ajVuOE9wY2JWRjB6VjJqNXBrWWJI?=
 =?utf-8?B?djJzSVJHUi8rczE2OXhEcklJUXFsOUpuOWhkdEl3ZUNucW94bDN3MkJTQWR2?=
 =?utf-8?B?eU51QWx5akNqYlRsZ1RzZWQrZytDTXhXbFRvcWtGaVVkUFd3QXB4ak5OWFNQ?=
 =?utf-8?B?QTlrd0xxYjZwam9QNW5SNlFENXpvSjFrSDdSenlRc21jd2lBM2RCZkRkVTdS?=
 =?utf-8?B?Y09nNDduckp4ZkVXckkrSkF4VW10OGFpTzNtd3RxdDV1TktLZWlTeDNTcG1m?=
 =?utf-8?B?Y0N6eUp5TlhQSnFFUVZMamJGWjRLMkFxZFIvalV5RkN5VmUvNkNJbzJibUta?=
 =?utf-8?B?eUtDR1pUYU5tZmF6SmJHOVEwN3V3YTFmQzErTk1DaFNmUENPWU1UTVZ0UUdC?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61bab35d-0984-4e66-a1a9-08dd6230719d
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2025 13:10:36.1600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ECMVJNACGJW/RKGUOV29WgVQ34f9z3vt5NRUTb7uXjXCfNYwPt/yZ1yAb2gF2ycKbxtpJZ0JoNHhL+lLVbqfag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7587
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

Quoting Jani Nikula (2025-03-11 15:04:04-03:00)
>On Tue, 11 Mar 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>> index 048be287224774110d94fe2944daa580d8dc20a6..6f805af32926d3608929655d=
e97699747d7a5798 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -39,14 +39,15 @@ struct intel_qgv_info {
>>          u8 deinterleave;
>>  };
>> =20
>> -static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_=
priv,
>> +static int dg1_mchbar_read_qgv_point_info(struct intel_display *display=
,
>>                                            struct intel_qgv_point *sp,
>>                                            int point)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>
>This is reviewed already, and I'm not requesting changes, but for future
>reference, I tend to keep the dev_priv name where it's already being
>used. We don't really benefit from dev_priv -> i915 conversions anymore
>in display, they'll all need to be removed eventually, but this causes
>extra churn where none is required.

Yep. Makes sense. I'll keep that in mind in eventual future conversions
that I work on.

Thanks.

--
Gustavo Sousa

>
>>          u32 dclk_ratio, dclk_reference;
>>          u32 val;
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore, SA_PERF_STATUS_0_0=
_0_MCHBAR_PC);
>> +        val =3D intel_uncore_read(&i915->uncore, SA_PERF_STATUS_0_0_0_M=
CHBAR_PC);
>
>Like above.
>
>
>BR,
>Jani.
>
>
>--=20
>Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5838BA16EBD
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 15:48:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E3510E42A;
	Mon, 20 Jan 2025 14:48:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvXej+yN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6416710E044;
 Mon, 20 Jan 2025 14:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737384508; x=1768920508;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aakmTJX15LKp11gfzSE3sJ3M7geJu0DN1Y/6Rw906Rs=;
 b=mvXej+yNM7v66WR1p3V0epj8WxZdCxOV0l9+hCo79Alq3O4kP+b0pO0J
 1YbvckVR5DWvARbBiRcBho74DL6CWSFY1pHmlP/0m3AEfnUq0/H1Wz4AS
 dYYcVdxkuj17XWqAXpXucaQMJCKRMk57EMY+HowEsYMYRjP0/c2MwkhSU
 mTgHaqvUw6vPSloTz+sD1ethfBNWNkgMxf1yby0HNxhLDupHHvpI9DBRg
 yj5HEUGV2cFgFX2ppT9dlcDobdoiBUTUB9gmghgxCZo8SLjbgsW60nzPF
 u8xaVG9cRFhhwq+kFWBczsqPV/cv2MLmVrBlugW4dUgybA7qNleXK2K2x A==;
X-CSE-ConnectionGUID: kjY83rtZQYWQW5vtbUi3OQ==
X-CSE-MsgGUID: oVGdxPYzTMqjV5PIOOtEXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48373262"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48373262"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 06:48:28 -0800
X-CSE-ConnectionGUID: zcJIWDMhQiqKoikjjqA2ew==
X-CSE-MsgGUID: 3kiq2hJ1Tvuhecu/LHddnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106372325"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 06:48:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 06:48:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 06:48:27 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 06:48:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=neG0n/GTHKg8/UqIZ1HItKfuLBvW0FEkwthrVjQ29cPLBclekESY+kwfHGObOnAE1DCnIgMVL86C3Iv7O9hmCW2vKXUnUV+MAq/I9wsKsrF5c5cGhQlwEwHqEA9SgOzQxPJHhoj6efbQ1q/PTZbxKEO93p0glnmG8nKoZl97fmngZQsFHjHHv/BF1MS99uduL0rmP3c9GrST2Hv2fIt56y+kAzt3zsAwarwPAdVbMoAvk9FKJBjkbDY0d0KAABE05STRWoP1p/P8rbjkMh69ByxwtJwdA8q5SHopkLJwAoiRLeVB4VJTtTZ6COrDe45KltdYvsG+60LsjYyLYkvIgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XhYmITvKdXCMTtcl8jXjNvTL7oZSXbThcoq2gBpws2Q=;
 b=p4I9ZnHJhwbsqp33pMNh1KEBSH98JEi66PYSeQtIZxgKgig6TptEqKCUyTVYhbekkLScGIJgp4UW7TU9K75ESGBSsQ5/Uiv8KS4MLSDkCIW7e1E7nJujuL7uDbVcIDa3P2QS7xlSDcYzDX+LWwVQ4qbOw4UTdQRCKkDq7xGlTZ/ZaiWkTpXIljsIkR1S8kGrs5D873nAq3ObmxNrG0puNdQm7K7EJLU3Nj3hY59jRqjnQLRWBWjQQet7e3/xq0TYEk/dBQYuj+azSiDQKWV3uo1bMBPC/v5LA+fSfQbBQtm8Tur8FavPm2L9TY73UivABBgpKse/XBnDUB8EJnlD+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5295.namprd11.prod.outlook.com (2603:10b6:5:392::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 14:47:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 14:47:44 +0000
Message-ID: <8afc8ea5-851f-4c2c-9a8e-9047f0a5f43c@intel.com>
Date: Mon, 20 Jan 2025 20:17:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 6/7] drm/i915/scaler: Check if vblank is sufficient for
 scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250120125439.4188626-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250120125439.4188626-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN1PEPF000067F5.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::36) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5295:EE_
X-MS-Office365-Filtering-Correlation-Id: e5f9d40c-6188-4909-1f07-08dd39616610
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2ZtaWo3MzRTTXJZTEcvWjY3bnlzbEV3aklCSmx6Wm45RGphUXlacEFFa3Fq?=
 =?utf-8?B?eTNrL3NMYXlETVBkOFFFdC90U1Rzb1ZZKzNpSWQ2RStzZEF0ZFJ0ZTcyZXo3?=
 =?utf-8?B?UzNrc21RNHRtZDU2YjJ4S0gyZGhCd0I3QW94ay9PdlpOVy84N0hPMnFpNU5S?=
 =?utf-8?B?eW9WU1BQWW9iRUUrWHZGMDFJSHQwNXkybzIxWGdHalVTcWxUV1dEdjl6SGNV?=
 =?utf-8?B?djM1bGprbDFZNEVDOWx2dVNSQkx3amNDZXREbXk5N1FQOG5zOTZHNUxvUFhk?=
 =?utf-8?B?MzA0dUd3OU8wZXEvSFFVRlRSUGFCVkJGVHdxVG91K0pzTXhIWDFPdUlnTzQx?=
 =?utf-8?B?Y3NCYjViL2ViOGV5UVZROU8xdklsVVNGNGNGN1pZTG9pbnQ1eWpURjhpRFc5?=
 =?utf-8?B?YjkwLzhiZHEwNkg3WWJHejlxS0dJdlBOQ3ZrOHFGQTFBenBPbTdTRThERGdl?=
 =?utf-8?B?T0xVa2crek5wa0F5TWVISTdvMjRQSHgwcWFjVmNVdi9yYWEvU0hvWEM1cjV6?=
 =?utf-8?B?c2E3SXhmaS9DclRjWmJlTW9yZDExYjE1M3lsaFBOL3lYT2V5ZEZjdEFOc2JD?=
 =?utf-8?B?bFFaNGFuTEZTYkVFWHhPSDYvSHpsWHM3cVl0WmFTWHVTRDUzSEtGVUFqYTBx?=
 =?utf-8?B?eGp4bklyelpwc3hmTWZUZU1Xb3NvSjJ4eDB0N2daVkg4dzV6dkwvYWZlbmF5?=
 =?utf-8?B?RkpJbVVsL2hWSSsxMEQ5ZTFDWWYvUkpvQ2t2R0gvdVdqSFRHWkRXRUl1SFVn?=
 =?utf-8?B?NURnNjhQVFl0Zk5MbWQvMkg5d1J5QkVXRFlSZzRWQ0hOTURSUFFCSzAwbzVs?=
 =?utf-8?B?UVQ5Rk1FdWFBUW54MG1XSHFpdUFWNlJRc0IrUE92MmZQR0lGZTdwTWF6RzJV?=
 =?utf-8?B?SDI1UDI4VGc1T0g5bjhVT3FEMXJjbWN6RDFQVEU3QlhtWXF6cWEyWnBTejhC?=
 =?utf-8?B?eDFmTVVCN1I2MkJVenM1N2ZaTldrK0ExbHJzYjE5SmNjYjdaUGtRU1M4UFhF?=
 =?utf-8?B?azFuWGVVVW9RRG9KdmV5MitKdVY3NldpZGljTS9vSHp3N3lKK1ZsN0VORFRs?=
 =?utf-8?B?OGFneU9Ub2pmL2NmMlZweCtMRDlsS3VVbmZtVWdBZVJRSEpucklibHVuRXNP?=
 =?utf-8?B?anFlaDM4MXpsVStibnhRckN3NWQ3QWgrMlFXVnlQQjRIWUZNYSt2WmFiRG1v?=
 =?utf-8?B?c2NyYjd1a3NpdVRxYjlKVHFHK3NPdkZDcU04NnhUWllna2pMNnIzYWNmc0Js?=
 =?utf-8?B?WEI0L21Ub2VJckVuWlQ5WWNkL245bkp2WnFEeXpabksrRzQvYlRtL2RVbTdh?=
 =?utf-8?B?VUd5ZjlPKzY2R3hqUkN0UE1XRzQxazdXWFhrbnM3N09wZzA5Y0NjRyt6TDdR?=
 =?utf-8?B?cGtWMFl3OTFBVFg3RXNxTGI0ZlVxNjZMSHoxOU02RGhKUnVJakVpT3JDOVlC?=
 =?utf-8?B?OFRnZkIyKzBSL0FWVUM0Y09uL1QxOHBhMGdZL3ZST0ZlNVFkcTc4TEhzdExo?=
 =?utf-8?B?cU9IRUFQbkwzbjVrYnBRWWRPTzJQMzl3KzQ3bElRR1pkTTBmLzNNZzVLa29y?=
 =?utf-8?B?T1FVM2d2aEI0WFdVbVVid2VmWE5IdnMzR3k5ZkFRY3hId09hL3B0ZFdnS1Nr?=
 =?utf-8?B?VDBUbk1XUWxaS3NGZTV1ZlIvaW0yZGExNFBkYy9ZVFVwNlpsTW5RcTkvVmF0?=
 =?utf-8?B?U0NpbzFIaFAzMWNxMEpLTGVNaTR5YnArVkZGcmxmMnRjYnN1dmNydm52bUVr?=
 =?utf-8?B?bVloZjNSRG5vcTdNNVJxS216QWZoNllGNTVEOVZrbEFjOVdYQUZwaXFJc1Iy?=
 =?utf-8?B?eDJnWVBlV2ErUm85dHBGWDdZZkhqTHlaT21EVVRZWFNGRGN1dkRsYVJNa0w0?=
 =?utf-8?Q?Nj8n1i+KhvYGt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sm5RcDduUkI4WHZhTXNTOHlZeVdoc3VPU2V6d0ZxK2ZpMnR4MGgrL0tocFY1?=
 =?utf-8?B?U2R2dU5RTlJsaEl5c3c3NXJZVDV4YlNjdUltYjlLSm1hM2tMUFlQd3JDT1ND?=
 =?utf-8?B?MWl6aVNmKzNwSmVMNFBzZ09ob0Nsbm90MC9nM05jOFUycTdWNkZOcGtnOHdy?=
 =?utf-8?B?RERQZ2tGM3QrVlRMQUM2NXFiTDhuQ2IrcnZNMGw3OWJDOWlZS3FmUTdQQkpR?=
 =?utf-8?B?MTVqVXVQOEZCekkrb3MzUEI0KzRtWFUzQnlldVVDQWFtZjJKbXFkbmFWUndL?=
 =?utf-8?B?ZlhlZG5CN0tvbHBQdm8wbTFNQ3ZNYStMS3hwcE9scmNiaVN4V241Si9seDRS?=
 =?utf-8?B?aWlDc1NJQ1JwdUU0WmVtNzNCOEQ2UVcyaXhPZFM2ZnZzM1NLNkQwa25HaFdS?=
 =?utf-8?B?a2IzZnl3RVc2MHZqVUEzMXZPZUlsNlArVnFEaHBuZWlJYkNFNzRZYVlVWFhN?=
 =?utf-8?B?YmgzK0ZrQmJkS3ZmbTVIdGdQemFja3YxVG5LM2VncW8xTm5pcGs2NzFGWUpj?=
 =?utf-8?B?SFBBUmpYRU9DMW9mamN6SGRtRXJyMDRGZnBSbERnSU82d1ByMFpoeW83WXFj?=
 =?utf-8?B?NjJySG1reklwWWRMcVN4eVJhMHVKSkFndmM4dUJnNGVPYjdBY0psUEErNURq?=
 =?utf-8?B?VXFBN2FVV0lXRGZpM1dMTG8vc1ZuNVNrUzIxTkI0WFBjbDZkdzZpVzZFU3VJ?=
 =?utf-8?B?dEVvUnBhRlJUS2c4L3FydlBOY3RzYUc2bC82czdIZ3RrMjY2aWYyYnBydlFp?=
 =?utf-8?B?YWZTNUlOL3IwbXMxOVl6SzVpSkZhc1lHdEFBYzJiNXhlMTNJUnRsZ2d4Rjl6?=
 =?utf-8?B?b1pBMElQWWVkRFlsZ3IrQzFWeG4zTHBmVEtoRE9WcmFXby8yM1h2T2FyRE5R?=
 =?utf-8?B?NkFXMXhIVHRLZnZPQUl5d3J1MVlzTDlPZ09tbDJBMjhOZDRVUFNtd0o3ZDcy?=
 =?utf-8?B?cjBsa3ZITDlwbUJQbm01SlRCSzJMU1lNeVBHZFJsR3gxd1lKQy9VWWhGcGk2?=
 =?utf-8?B?YjBmWEN3SklzWFN4L2lPRFU5Umk2dExpTEQ3eEJyczNaUFIwdGRrd0xFeTJQ?=
 =?utf-8?B?ZTZxR3ZJNzM3YUd0QU5rMk5heWE2KzNMVmdVNk1FK1NyVzBPbFFETDliNE1Y?=
 =?utf-8?B?QTBlRDBZQ2ZNUDdXUTlrN0QyUzA2d0luMlFoY2E1anFma2tBWTlsQnZ0MlZU?=
 =?utf-8?B?OTJXVU1KNk1DYlpsWXNQNGZtL3JaVFBWZGE4SldpSXhGeXFhRU5TeUNCdUFr?=
 =?utf-8?B?QW9YRHVCVkJDMDZvRkhXMERScGI2UVZ4WEphbG9PdEVXc3AzWjhxbVpGenNK?=
 =?utf-8?B?MjVvcEpVMHZlNjlGM2Y5blM4ckpmd1ArMjRMMzdEWW9DOWVCRnVidW1Da1dI?=
 =?utf-8?B?TjNEUlZoYkNpczJzZ0JrVkYxZUdGOTlteDlOdWhYU3FRUGtJUTZOUEZkNDM1?=
 =?utf-8?B?MEZrbnR0bzUzZ2xmZUVPNGR1cjBpNmNmQWtidHR1b0V4bUdGN3RyT1VScTh0?=
 =?utf-8?B?aHNydk1USlZCUmhPdk1hY1RUKzVUdmR1MFVWTGlCdW1wK3dEUnF1eVhxODcr?=
 =?utf-8?B?S3dqUVdQMURDbmtWMjJvRnd3cUcvMXV4SnlKUzlFVG10RWR0dDRvN2Y0cTdB?=
 =?utf-8?B?ZE5paldNajc0T3BUTXN0MnZmb3FkWGlTVlRZV2QwQ2dDd29BNWQ4U0ZVamgv?=
 =?utf-8?B?SEI4eGZadTU4MzluaHY4WXdMV0lDNFY3N0hDZTFnWmlEOTdDa0doWG5xcUkw?=
 =?utf-8?B?WFFQUVFyVkJTaXlndFBkUlI0bVFIZytJMk5xZ0V0Y0YxOGkxTDN5WWhzZFpk?=
 =?utf-8?B?VWtSMmNWaUxpZlpvbk9iTCthQVVtN0JZT1JhakszRkVjUlRDNjVzVVNJNGhH?=
 =?utf-8?B?aFZzZ2xldjFXVjdxTUltYTlHbUFwS2NGdWNUSXNacmtxWXFuam1xem1aVGRU?=
 =?utf-8?B?d0FjME5oNXI3dU5nVWZkMVNmbVBoZytWejF3Q0VHek1VU05jN21kTk9tZFJK?=
 =?utf-8?B?SzYxZktsNlNUUlVzWE9pcFdsSXNTaUs4NlYzNW5xRW1mdnhybllrcU9ueHdK?=
 =?utf-8?B?WnIvYzJrMGtIaWZXaVBPOUlLd200eXp4TkNONnRVSzdFdG9ZSEVtVUlOc0Vu?=
 =?utf-8?B?OVRYWHNOYVQwd3o1TkQxMWVocktPcUlOWjFuTWoyRzJQMEV0VlpoSmtpaVBu?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5f9d40c-6188-4909-1f07-08dd39616610
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 14:47:44.6702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ap9A4lg4z3yBSTBSag0pHzyahdaLwkwtfagxRjeaDWOHKdvE4vTRxM4NrkVtw95nFjSXyXmqt/xt/Y6W3KxRwGH1h2b6DfNRteqdOdnA3l4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5295
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


On 1/20/2025 6:24 PM, Mitul Golani wrote:
> High refresh rate panels which may have small line times
> and vblank sizes, Check if vblank size is sufficient for
> enabled scaler users.
>
> --v2:
> - Use hweight* family of functions for counting bits. [Jani]
> - Update precision handling for hscale and vscale. [Ankit]
> - Consider chroma downscaling factor during latency
> calculation. [Ankit]
> - Replace function name from scaler_prefill_time to
> scaler_prefill_latency.
>
> --v3:
> - hscale_k and vscale_k values are already left shifted
> by 16, after multiplying by 1000, those need to be right
> shifted to 16. [Ankit]
> - Replace YCBCR444 to YCBCR420. [Ankit]
> - Divide by 1000 * 1000 in end to get correct precision. [Ankit]
> - Initialise latency to 0 to avoid any garbage.
>
> --v4:
> - Elaborate commit message and add Bspec number. [Ankit]
> - Improvise latency calculation. [Ankit]
> - Use ceiling value for down scaling factor when less than 1
> as per bspec. [Ankit]
> - Correct linetime calculation. [Ankit]
> - Consider cdclk prefill adjustment while prefill
> computation.[Ankit]
>
> --v5:
> - Add Bspec link in commit message trailer. [Ankit]
> - Correct hscale, vscale data type.
> - Use intel_crtc_compute_min_cdclk. [Ankit]
>
> --v6:
> - Update FIXME comment.
> - Use cdclk_state->logical.cdclk instead of
> intel_crtc_compute_min_cdclk. [Ankit]
>
> --v7:
> - Handle error return from cdclk_prefill_adjustment. [Ankit]
> - Avoid incorrect round off for linetime. [Ankit]
> - Correct precision. [Ankit]
>
> Bspec: 70151
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 54 +++++++++++++++++++-
>   1 file changed, 53 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index f4458d1185b3..448d320e0d47 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,57 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_atomic_state *state =
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +	const struct intel_cdclk_state *cdclk_state;
> +
> +	cdclk_state = intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(cdclk_state)) {
> +		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
> +		return 1;
> +	}
> +
> +	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
> +				   2 * cdclk_state->logical.cdclk));
> +}
> +
> +static int
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
> +	int scaler_prefill_latency = 0;
> +	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
> +				    crtc_state->hw.adjusted_mode.clock);
> +
> +	if (!num_scaler_users)
> +		return scaler_prefill_latency;
> +
> +	scaler_prefill_latency = 4 * linetime;
> +
> +	if (num_scaler_users > 1) {
> +		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
> +		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
> +		int chroma_downscaling_factor =
> +			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +		int latency;
> +
> +		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
> +					    chroma_downscaling_factor), 1000000);
> +		latency *= chroma_downscaling_factor;

This got multiplied again.

With the above fixed:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +		scaler_prefill_latency += latency;
> +	}
> +
> +	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
> +
> +	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, scaler_prefill_latency);
> +}
> +
>   static bool
>   skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   			int wm0_lines, int latency)
> @@ -2299,9 +2350,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	/* FIXME missing scaler and DSC pre-fill time */
> +	/* FIXME missing DSC pre-fill time */
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
> +		scaler_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }

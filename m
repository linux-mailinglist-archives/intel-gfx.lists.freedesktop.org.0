Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DE1A16D44
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 14:18:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEF410E40B;
	Mon, 20 Jan 2025 13:18:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b0jU+Ik+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBAC710E40B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 13:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737379135; x=1768915135;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LxUHNXR6GJqmdPpZW57Yv1EwI+tp7DRnG5agA6icUns=;
 b=b0jU+Ik+zoIYai6rjIEOZaphsV4i9yiU/BZW2LxcfjHGk9DMFIjEoCRH
 H11esWuoGHEOZE0Xd4a5wM9pLdaSyFnGdS1ixQpzW2sbTu/jkEDHb5cMV
 mkpY9BGT0+KbXA34KxnX2xg1Gc109tmHtdeXeYQP4aMLWET0V0Pbrh+y1
 v9/QseXgkbUBtk54aGjtSP5TFqwCf8+szrpwrX5SNdJMg9ZBTmCQaYSoO
 qX1uC54QSdws/IO1f2OxoSHkzCT+LCn8OblamevdxANX7XjWHXJmX/DmO
 4JLkxINrSlPhy2lj+YQPrIg5jZrreLfmT72Q+Dm6gXqf8UbpF6iVySvi9 Q==;
X-CSE-ConnectionGUID: NQarpfWvRZGTtnJOU27EZg==
X-CSE-MsgGUID: vqvxMKOaRTGTG78QcxuiJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48361722"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48361722"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:18:54 -0800
X-CSE-ConnectionGUID: Jl41pmrrSj+SuGFHPTGxZA==
X-CSE-MsgGUID: iAHaj9JUTz66z6zcZeDLaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="111500042"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 05:18:54 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 05:18:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 05:18:53 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 05:18:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V1DF79xfCqlwtx61rl5kBvjwIGKXASIHmWQbR4zaCk9bwfMY0xk9h6Vn8ENQCYQReoGrb2n8TSpBgahPMJ2ffhmYPJ9QD4Tzsl9FA6lfU1hw61NNexdPEKse2wBd+Iq0WvSH5aELDie+fdYFBG8/Xscj/LDpPE6q5idtPNEIW7WFZ/iLlQLBULNdcsla/7LPmsypE+wRHTSlTDTmYqGcEcpRLAx5hwf2TQhtwbumXt8gbbcp5VqsppnAP4ZEwbK4AFojbQV7Z5h5boG0oorq6GImebdGufJieMwe1WVt3FggtwTVyWAEv8IA4HsfdGb/HvmWda5ySe7HR4L0WxltEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e6IYv0P00r1eYu6+yjJcodRfIsb6Vm7qs8E4r+vm9UM=;
 b=wARvJrNLEZRMmYngNNwlbQJf6Rol191lTpyfOpYJzpl5YLLCyWjSNUohMDfntAh9NMEcdtYG/XurPSZV+upAZPfOgDEW8ydDP0JTKfrX3LC51W6bheBTgoW7CqnwRLf4NGO3sBc2dqhs1eZhB/MhaXLBA74C7+1bzj7Z0XxZX7acmczD0ocx7AK5qSeABEbTZ9gnDOt3ofz2+l53jBWrmriqNpTymDFo9c8W3tlUWIL4PweTWet/K9sJDHHb05Ix3BIdN0W4vkNJGKjHJrirBc9PgzpqIeoY4vkSmknN/ltq8Lg1MT2GWdcEKdbCCRtYIsi7V1Pk3XZSJMFnqNDjHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 13:18:11 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 13:18:11 +0000
Date: Mon, 20 Jan 2025 14:18:05 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 8/8] drm/i915: fix typos in drm/i915 files
Message-ID: <lkkzzntggi2rkqx4af2eo2abqwucvuq7xkm56rror35pib65vy@ww34uyv7wnkv>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-9-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250120081517.3237326-9-nitin.r.gote@intel.com>
X-ClientProxiedBy: VI1PR07CA0305.eurprd07.prod.outlook.com
 (2603:10a6:800:130::33) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|CO1PR11MB5105:EE_
X-MS-Office365-Filtering-Correlation-Id: 970b8390-9e80-4d4b-fd9b-08dd3954e349
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Sm13Q3AzQVNMc2d0QUlJd0lUT3Q2V2lCVHhpR2FoR1FlSGlxVm1JMlhLU0Nh?=
 =?utf-8?B?dUxqZjQ2UTZ2N0NVRUtobnZ6YVNHWmlaWEpBZUNhQXhvVk1VUE9VNWRLcFky?=
 =?utf-8?B?Rm9PbVRNYjZqakhES3RKSk9TTDlRbWtEbmU3NWRCbHo4N1J4RkdGaW82QjdD?=
 =?utf-8?B?S2xjQlBqalExT2VJVmRvbHhvWTZlclUvZlBCMTIrTUw5M0lIb2dIR2hGRnhT?=
 =?utf-8?B?TUp1Z1FlQmZOMUNTWGxodDFaMkdqUUJEMTdMdGtwbG5uWmNJSjR2TmxWY2Zj?=
 =?utf-8?B?VlNndXVoQklMQkp1WWtHSEtoR2RQTkI4Q2hPOHhMbVRWdi9oT2ZEVEFCeEtF?=
 =?utf-8?B?SU9rTnRMWEMzOHFNbEJ1NlNQc2RPaG1WZXA2bHJvMEZxMDc3TWdmb3VQR3Zu?=
 =?utf-8?B?THRva2d6RnhOWnRGZmhPS1A0cXdYdHpmQ3d4L3loL0x0S2YxQVlXRm1aT3Rn?=
 =?utf-8?B?QTBOS0NoNmZ4SzNTc09OWUJXYnROeW5ac1JuRUEyeE84ei94byt5V2x6d2p1?=
 =?utf-8?B?U0RDZG1INEVsbk95UVBJb0pTeXpqMUY3NHc2ZytVVDFEdk9IQzNQMzlaZGpQ?=
 =?utf-8?B?WkN3SjFTWDZveXhROUdCc3NwWk1NZGNiZkY0elBwZWNRSnc2MFNKZ3BHRjVl?=
 =?utf-8?B?VnZCM2xLc3JMcTF6eUt5VXdJVVhYSVVIMDYwTWlOeVEzV29VaGNncXI0Z2xl?=
 =?utf-8?B?NEZEVEpiWDh5RHI1ZlBmRXo1VmVKY0t3dnJXaUZrT2I1MU83Mk1mSFR1KzIr?=
 =?utf-8?B?WHZWdkcvRGRnalhtSGJPNzFtUXNIT2lZbytXcXNTMUdaTTFUbVoyYXEwRkVX?=
 =?utf-8?B?Tm83ZlNCZlN4YkhCWkxOUDdVZU1LdkNDODRzKzdEeitlZERlTkZ1RWFZUEdC?=
 =?utf-8?B?T3JvQk1OREFNUFFsUHp1Y284TlFqVTJzQ2dGWURoU3UxVGxSeWpvK0dlTGk0?=
 =?utf-8?B?WU9Pdy9SZXJHbElXck4vaGZkOU9XdktEQjF3TDJpV0RGOXNENTJzMWFXa0Vm?=
 =?utf-8?B?YWJMSVlUazJYa3pUQUNzZmx6Wk11MlRMM0h4YXhiZ2VROXlsNnUvL1pmVmkr?=
 =?utf-8?B?ZTZkcW44VXFCYi82VkxYMXMxZHlqVmtvQzhqSUJNaXMxTERmckI5ekVyN3Zs?=
 =?utf-8?B?QkhldkNOSEp0Q1dpR0tndzh6bjZwWDNWbCtDMTMyRFRJSE5ObnA4Um5ZWUd0?=
 =?utf-8?B?bnVsdGpzNjk3Q3FZWldCYnJKVnd6aDU5cFRCY2dvcFZoazdubWovdlczeHBN?=
 =?utf-8?B?N3I0Q1ZhT3lteXNiWGxKeWRlZkVkd0hRUG84d2JBKzN6b2VJTnVSMGI2Z2JO?=
 =?utf-8?B?ZGovaWUzaGFhRy9Fd3UzZ2pGUmM3T0FjMUpGdG9qRzh4aithdTFCQW0rbHJ4?=
 =?utf-8?B?SDd2WHc3Z2NIekpJZlZYR1JGVkxhTWZXc0RHc2lCV25Xd2p1ZW9YWGhRc0Zm?=
 =?utf-8?B?b2pnYWlYb3k3d1diSjlZZHFJSkgva2w1UkpBN0hlNHcyM0oySVlvbVY1MHQv?=
 =?utf-8?B?azl1TjF3bDlWVVRMVWViWEVTVnlvZXAvVlprM3ZYOEg0ZGVWTDdYOHdXK0Vi?=
 =?utf-8?B?UGV4OThSMlJZcDh0TC9kL1VudjROaGp6MWJmMkRQQXZRNXBJaEIweTAxV0tI?=
 =?utf-8?B?d0Z0cWFtU3lzcXFBOU1ndCs4QTRER0tLVzJPbWpSRGNmTjMvWnpUYmp6aUh5?=
 =?utf-8?B?ay9YcnBkTVRTdmNWRWRpUDc0c3RSV3EvcnBLaVR4dE5QSldtRlV6cHEzUGxE?=
 =?utf-8?B?NG5nOHNMVFJQT0NrMzFTOVkxQ3Z0VWFHVW9KVzZVNkVBa0RRdndqOU9FQWEy?=
 =?utf-8?B?cnNFUWhGMkY5ZUU2NHVvUE1jUll0cVNwbHEzb0FKQk9hc0cxTXR6WG1ZYzBE?=
 =?utf-8?Q?zqQFQefo01tVr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WE1tZFpXeVZuVHJKaGdiQTFJRC8yM2dRNGZHbEVwRGtsRFVsMy9zMEJXakVS?=
 =?utf-8?B?US9JdGRvSEdWclp5eDVaMm52R1Jkd2xQZ3ZqcElSa3Jsb0JocXRuaFJoMkFT?=
 =?utf-8?B?K2pQR1lITlAvY0I1NUJENnBzaXZxY1lTRmZPV0FnWnkxaDUrd1VVY2RpeHJB?=
 =?utf-8?B?eWdJbW16blZINEg3cFJIcFRSNUhFalZhZDViaTQrN3ZDcmxxd2xXUXJJYytQ?=
 =?utf-8?B?ZC9SZFIxbTdseTNBbU5XWGhvMGVCbzZmTWF5N2tlNGltKzlHUHRoK2Y2N3d3?=
 =?utf-8?B?T2RWbXhnTjJaaEFCWWxMWHNjUHh4Ym5CMUFFREcxS1IySEp1NFc2eVZiUm9C?=
 =?utf-8?B?d0NGa1VPbTBZRklNcUlRbU1GOWNjODk2K25WOWYrRSt5NXVLbU1yRU1Wb3dJ?=
 =?utf-8?B?Zk1IT2k3WEROeUJwUTRkaU5tY0YvQWs4eEVjVnhBMitFWTEydktNY0JPTUpN?=
 =?utf-8?B?bFhkSEdnY00yQ3pZTXFSOHlRWlNJQjRPdkhTWVhQc3YzRHBHYXlNN1JtYjJU?=
 =?utf-8?B?V3prS0h1aFF1L2Nwc2EvcnJlSFYyakNyZlhHZDA4TDM4NnlrVHRDRFNjVWJL?=
 =?utf-8?B?dHljMU1Iam81aHhkMlFIYnVnWnljSE9QUXVWY3dEUDBRMVNFa1E0MWVINjRQ?=
 =?utf-8?B?UlBkMTVSbHA4ejVFWE9qL0dFNE5ieGUyWU9ic1RIUWNqRnU1NWM2bU5wRVhp?=
 =?utf-8?B?MzhmbEh5SmNJVlVMdUhZaHc2Z2I1RG96dlRrd2EvMSt4a08xYnk3bWtFSVlx?=
 =?utf-8?B?TUxFVXNPTHJkbU12N1V5cVNKZ3pIZmpRZnNJS3ZWZlhqSTlBb2hlMmRCNnB6?=
 =?utf-8?B?VThZZUhEVWhJZmJVQlNTUGcvdmRVMEptcXFpelQwdlNYeis5Z2FpL05BMjdK?=
 =?utf-8?B?aENoVzcvZFFmb0FSRmJ6MU5QRmtCQVNJWnZ5ZVBBK1UyQ2Q3Um4yeXl4RzJn?=
 =?utf-8?B?N2RMMFpxeVAwWUwvREtwT0dzSGZDRFFCWDFrRlp6bWlpcXZvWStQeGdXS2Zh?=
 =?utf-8?B?T3JNV1o2Nm9BVzlsM1dnQzczcDNBejArOHZhcEdlTlNtcUZPL1lGMFFIdzJY?=
 =?utf-8?B?cVNaVTJFbmwxS0NlbDRUV3lPdm1oOXowS1FlM1dqRStOSTNJc2dOK3hUYzFW?=
 =?utf-8?B?OE80SUpWU3pCLzZVdGNDNDF5cnZSNDMvQXhzNjBQT255a2h0TXhJQnhGcTZ6?=
 =?utf-8?B?eTJnMkwyRk9OSGwvanhhWUk1LzJlTVNTTlh6alp6b0trdGpEUkR5K0swbjRY?=
 =?utf-8?B?cDNxL1Zuc2V0QVF6QkllTnorNXNydEVZeWpVMUtrZ3pXK2pXWEZwTXRyS1U0?=
 =?utf-8?B?YjF5d0Ruak9QSG5jalVycjgzczArWElGRFV4eVpjdVZaR3V4YVQrVTYxZWdp?=
 =?utf-8?B?clFGanZlMENGazIzUTN1VE5zOEVHOUtTTVFjNzFodGFqRWVvWnE0b3l3M0tr?=
 =?utf-8?B?OHE0d3ZFTFhrSmRncWZvZjlITVZVOWlZUlBLREE1blM2b2pSeEpQTVBPc2RI?=
 =?utf-8?B?MExONFBUNkRPZlVtbEZkN1FOSmJEbWozQUx1cm5WSUJwQ0gwcTh6YURBUS81?=
 =?utf-8?B?clR4NGVoU1dBREMvYkk0RGhVWHFIUkh4MStQR00zSWNwVkZDaFFmcU9VdEVB?=
 =?utf-8?B?MlJaY2V3Z2FWcjBueFVJZjkwci9WQWEzMVVhRS9hUDg1L0tCbDB0ZDdweHlW?=
 =?utf-8?B?K0tFOEZ6bGcwNDVwMjgwUnB1VXJTYnhxdFByRDZKVitIV0M3TjQwem1FTGVT?=
 =?utf-8?B?RkRMQnUvTlozRGZwSjJhRmNPUkFVaU9wSERpQ0thbnBqZktKVHRPeTVqeVFp?=
 =?utf-8?B?ckFHVWdSN0c0NCs3alA5WW8zb3dId3JvTHkxOVRKbndMZmIwbEkxUVE3eHpH?=
 =?utf-8?B?bWlZWE5kMk56YUs0d0VFV2R0ZHRudldJSFczRFoxRW9UTks4RHhZL2gyeGNu?=
 =?utf-8?B?bVh5SWNmOThxK2J4Y3BXbkVVb1RKWTYxRzRXWmxKanVRVnpHVmJVWWdPaFlN?=
 =?utf-8?B?WWN3QWlLcnVGbFBLRWlqcElGMW11MnVqUUlYTHFIL08wdWtTLzFsUUtBRXRn?=
 =?utf-8?B?QzZEbEJ2TXAxcU4zdEs5U0g2eW9XbzQ0Mmt0UHIrVldOWUpwclg3S0lmRTVJ?=
 =?utf-8?B?dS9kWWlVK2dtUFI5MlRQbW1UZngya040cGZXZkJ0Tk1PNzl4ZWJBeW9wbGlm?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 970b8390-9e80-4d4b-fd9b-08dd3954e349
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 13:18:11.0939 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZUrq0q0qeiW/ma/Xu/9b5vHqqPqtts8bNiR0CAeDhF0jFC6r0AsqQNJkhYsNa6Uf/NyK07eozJSOr1r3xp834MAhZ2ommJWUloh8SqEqRsY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
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

Hi Nitin,

On 2025-01-20 at 13:45:17 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915 reported by codespell tool.
> 
> v2: Fix commenting style. <Andi>
> 
> v3: "in case" should be capitalized and fix
>     comment style. <Krzysztof Niemiec>
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof

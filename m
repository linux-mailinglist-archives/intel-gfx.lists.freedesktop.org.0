Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5727A9C3D9B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 12:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D2710E483;
	Mon, 11 Nov 2024 11:42:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jXiUPwKw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07CCB10E481;
 Mon, 11 Nov 2024 11:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731325378; x=1762861378;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WSqX7283On8HYGPF1M1+A7fvFb3pHINJU9QTVeuP4QE=;
 b=jXiUPwKwe7W6lf9FCmTThYP7XoZkCm6IFRKeWSpIR4ZEk7zYKN3XmLkp
 JTIdQPazClcDFA/+TGshqOTa9kqsXsit3WMGYpaRXRQGK7yIZkpHNvuB8
 CCoy1Mpc/8gYKj1bCNiKJRjb3ptgdy5VGt3VDqKJiHkEISDZewzhzfKy4
 Kn+N3AeDiM/PSVTD+oO3m5BrUdqGgyNpKXEUs9fNU1FguQ3sDRp/ZWOgL
 n+lxrjt9wOwhuHP+EmZJ/51gwhwOYcVJox5FsUDKuepMm3F1vjzBpdTu4
 nsDSzlnEjL0F+tdUT7DP4w2ts7fatjstn8uOTAfVStLP7UA0QIrFYv/Nr w==;
X-CSE-ConnectionGUID: b5yWWa1NQ2mrcK1AQp/AVA==
X-CSE-MsgGUID: gEA/eRZUR8Os2Er/b7HXAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34815852"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34815852"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 03:42:58 -0800
X-CSE-ConnectionGUID: CGCO13wzQRObNKHaayFxjQ==
X-CSE-MsgGUID: 1h0mfcZXRhaQh1bEDInycg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86996779"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 03:42:57 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 03:42:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 03:42:56 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 03:42:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a/ZMMWdUUZp8pJttVw2cAXwoOD6k6dYxIW8rgHERxSvLIPOBYKUIMK06dmMYHmUWk1BC4fUzmNGPqv0akvgECd0UxRoj92vr875kof7aR6b74QtbjKRMKVu4KKTmgP4NWJ2IycnEjU95g67oMQaAzN6EQ5x0p+2G1PiL0KwMaRVMqyAXxcVwKlXhZeDFLy4I4VebfFldJ0fz7rxLAVZ23zuCj6yVZ05NAIEuWm24AW3Ftf+9vcyUbCTERe+pA2NXpTP/VP6aG+yxe9mImkXuFD6FGVt46DL97bL5iqjBNPLxM6vv0xt0prvFl7Iab2TxixUvgT+Et1icZKS4fxKgKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WSqX7283On8HYGPF1M1+A7fvFb3pHINJU9QTVeuP4QE=;
 b=S3MsnudE3jYXt9l+Ioql/V1lVc0Y0M8ZdWUotKgG51eksjseNv1SSw6Bhr20ayvFZnwuElMEikNSL2dGEoZKASKxIx39+G5+cdiljezqpzmzXHf+GOZ62drZU4YaBacqvn96PwFwng6saVnTwbBfvsGYz7HaZifUkB31Hnv/tYRrFJU8KwQUUrCf23abAaiUFp5ChwsJs+lDU38KSq3UMC1/qSzBqczag+aBN23yUztEPh2o4fbKegTR0nVWNz+vDHRSqA7eNce663zCL/SXV/R633i1BUQzP/t4bCZ+SnLwzGVmdCj6O3o9Wbfr0L/Ev/L2RGB5e9yfy9pRNJtQHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Mon, 11 Nov
 2024 11:42:53 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8137.022; Mon, 11 Nov 2024
 11:42:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
Subject: RE: [PATCH] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbMbtnvqNt9zYT7EGWUNvYj3WiZ7Kx7fKAgAALtyA=
Date: Mon, 11 Nov 2024 11:42:53 +0000
Message-ID: <SN7PR11MB6750DB3DFE9BC0CBD23A42BFE3582@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241108085048.919665-1-suraj.kandpal@intel.com>
 <1dd485801be63c9ccce0800db1ffc3fa70f23746.camel@intel.com>
In-Reply-To: <1dd485801be63c9ccce0800db1ffc3fa70f23746.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM6PR11MB4562:EE_
x-ms-office365-filtering-correlation-id: b6b9bd0a-971a-438f-0700-08dd0245faae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eEFxYmlGV1FoN095WjBsUVNROEFxS2hpdnoxYURKbHp4TWJhYVFtanRGZjNo?=
 =?utf-8?B?b3dhZncwU08yYUNKM0c0SGcydWxvMHZwMFlXS0VTbStHOHFYbWZCUmNYVXRS?=
 =?utf-8?B?RzJrdFJWVktQeE9ZTDhIcVhlcEpFcWVvZXdhVk4vV1o0cWg3eFZkL0tveWgv?=
 =?utf-8?B?clh4dUFDeDhMaWJ2Vm5yNEEyRkhOTXIwRHFmVUpmZVVXZzg3bnlaUldoQkZC?=
 =?utf-8?B?SVM0dkFIUnl1dGw3a2ZxelBsbUJPNHRQdldGOXRHc3BhR3pjS2FkYThhOGND?=
 =?utf-8?B?dHd6S1ErcTFSMWJQb1dTOWNtRTlZcnB1NEl0QnhmWDREVzhzSDFtMHByWVB3?=
 =?utf-8?B?Z2JEa09VUFhqSzlmNllTbTRWNVVyNlRIZkFyZXJ5MktaTmJBR2gwZ0hWQWhE?=
 =?utf-8?B?WkM5WjMvcE1CNEZWNWxlVGNNKzc1YUdua1hXQk5mU2JlaUs4ZkdDc2dLRy9E?=
 =?utf-8?B?SVRpY09sY3JwSWxzL0R5VXhkWUNneVptWmtJMzBSYmJYUVovQldsUjFESGpl?=
 =?utf-8?B?QnNyYzVKNS9UeHZVQVNmRis4UzJsQjhRaG5ZditmOTBTNVRVRzlSQ09GL2s0?=
 =?utf-8?B?MUVab0R1ZEZsTFVmcnorNjV4azc3N0pYMWFSTENwNWN6RE1CUWtsQ3B0cE9T?=
 =?utf-8?B?c2YvanRRcWZVa0E5VkdUc1prVFZpVXA0bzAydTZwT3hXNzl6R1dnTkphSFRS?=
 =?utf-8?B?a2xSVy9NS2s3ZDNoUTRXdEthNWg0c3hGV0ZMclVFbEZwWFpTNXpRODBOcXp2?=
 =?utf-8?B?MERqdHc5R09jQUk2MXdmUEdNdzJuYm1DVGNGa05SRHk3YmlHZjRJNGxQSlBI?=
 =?utf-8?B?emNRU0FsWVlGcVBWSzJyNXQrRWprRVI1WSs5WTNUMWtmckJTOFZvNm15cFNT?=
 =?utf-8?B?MU1WQUllb0U3NmlMWFZCOGRxYWtqN1ZRQWFlVlViV1dGUkFGMXRONnFiWGxP?=
 =?utf-8?B?WW5CeVlCY3lVdW91Q2RPQldaQm02bGY1QnFQMTBpWFRwbTVQdSsxVDkzM3gx?=
 =?utf-8?B?NlVmMWhUWlNIdHNXeEFhRjNWVE9OSW5JakozWFN5UDQ2VUNBQWNIOE45d0c5?=
 =?utf-8?B?VFU2QTc2Tk5sdTZWdm9ZNWIzaHVhb1k2K3lpWFgraFZRbGJhRVAzZzVPVGR5?=
 =?utf-8?B?R0xPUlZUZ29YL3dsRzB2ek9jbjlreEhGOVdNUkM0bjBoRXptblBzR29sZnZl?=
 =?utf-8?B?OEQ1ZWEveWhUZk1NY3RKdHNra2lzQXNMNnIvQWF1SW10dmNFMVZVeEw4b2FH?=
 =?utf-8?B?YlltaXp1U25YNEV1cGp6TEdhNUJXNlJxekVjaGk2R0xrVnBpRDBUY3dUOGpi?=
 =?utf-8?B?Wm1lV0tnZGlFekFRTm5yOFY3Tms2TFM0SkFjT0JrOGlXcDhicXdBZEtVak1I?=
 =?utf-8?B?d0N1WWpDVTM2d3NZWUcrVFpLQWF4ckdwRU1NaCs2QWtOR2VQVEVsWGNKcElG?=
 =?utf-8?B?Qko1ZFFtaXBjVTNQMjFDSzh0ZkU2L29hMkZISjRsaTI0Ri8rWWhEQzBXeUhZ?=
 =?utf-8?B?cVcrWTE0RHhOVUxqbDFZeCtJMDJNNzBTUnE2ekZSM29ZcTh6M1hIbEJwalht?=
 =?utf-8?B?N0M1NlRWcndSNEhsZkJ4ZE03Q1FITUNJS3VyOThnZEM0a3hHTndXQ3g0Skdn?=
 =?utf-8?B?QlU1T01BTEM5bmZzU01aRUhGRUl5TmhIdDJiYXJ3MnZieGM1anFzamZvOFZv?=
 =?utf-8?B?d1JlZlYzWlpzdDlDTW1JRU82T3ZwR1hxNUNjYWJ2ZFZHVGhhNVJ3Ujl2amVx?=
 =?utf-8?B?T01mVWJmMVJBdzhBYW9vQkJzanJaekhDQUNTenE1L0F2dSswWklGUFVRYnVZ?=
 =?utf-8?Q?lsIusFZhxxHoJscnf8j0pW7aMKmh2TjXdQO9Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NU5kVERvZkhTQ3lEVzJoZzhWYUpkdGgrdjJlcjdhN2tqZUxTcWEvdHdTNHVY?=
 =?utf-8?B?aWFVVE9TYVU1M3RoNHk2MXdwV05FdGRGbUNzYnYyeTVRTzUvY0c0Y1JmTk04?=
 =?utf-8?B?alR2dy82SHpOU09TWUZhbkQ5TUEwc0xMZkR5bzlhc0ZVYTMzdkJ3Z1VjMmZJ?=
 =?utf-8?B?U2xQWnpDMUZXaU0wNC81M0VHL0FqMytwK0dMZDJFbjU5TmRDRjM1c285WGNw?=
 =?utf-8?B?UER0ZW8zMXc1ZUtUa0xLcmM5bkxYa1hQV3RTUXlrVE93bFQyWFZlNFlXUzU4?=
 =?utf-8?B?Skh0VksvUXRzN1JzeVUwVnJBS0phd0R0RmljWDIxN1M2OEhlc2Q5SUV4U3l3?=
 =?utf-8?B?M04vSEtBR2hPaTBCV3ZITldNUkRWdU5INk0vZ0pBYzlGUHFLNEg5bVRYVUpv?=
 =?utf-8?B?RGJRL1dndGZBSzBCa240SUFwZXkxVjZVa0dXYWNMMG9OenJKellld0c2TEc2?=
 =?utf-8?B?M0NidTM4ZGxYbldlRjc2VE5MMVhYTDZoQ0VnNEhrWUU2NVAxelAyS2gzQ0RT?=
 =?utf-8?B?bEFPWmlZdENBbjBLVFA2aWRiRGNRZXViRjNiNEM5T0VEUTBjK3FEOVE5WWlh?=
 =?utf-8?B?MGZua3hCMFNlWGRONHBmT2V1cmVnZ3lyUGh5dm1CeXhFNTJZcCtPV2s0OVUw?=
 =?utf-8?B?ZXlvYXZUNGliZFdqdlNHdWxDYlV6YTZYSDc2a2lwSnBhV2tMT3BBTUhscmdo?=
 =?utf-8?B?TklzY2Jrb2ZoVW1GUFpJTWlUNWFaS3NtcjVuRWF6c2tjYkZHK3JKZk4zSXZJ?=
 =?utf-8?B?UXBFY3NEMjgyRXFNUzNqTE5vclk3TFcwK3kzQS92UjV4N2QwaXNXdjVXT1J5?=
 =?utf-8?B?VFVQMUFqaS9hYW0rYkdRY0Zxbzk3cktrTjgyN3dlVnk0Z1NVeXhEMTFNblJ4?=
 =?utf-8?B?RWRRaXkxNy85Z2UwSm5lY3ZUUkcvOXNQYU12eWp5azV3K2VuOW5iODBhbVgw?=
 =?utf-8?B?TFlhSGtHdEducGg0dExIMk5QUFppT3E1WERPM1BoVkxnYTR3KzAvZEsvbCtF?=
 =?utf-8?B?THdiQmN3WjRaNXZmNy9TTm45WUxQU0dtOE5jZHYvRlVaUlU0UWZUWkREdEU5?=
 =?utf-8?B?VmF6Y1JjalYwWnZFbXFSZmlxRldyQ2hOZWJXYmQzMU1adU1kUzNtd1ZCNWl5?=
 =?utf-8?B?YlJZYlVUWTF0WkVtZXZ5aGhldS9jKysxd1lvNWZKZzc2Y0w1d21GZDdieXlW?=
 =?utf-8?B?RThqQ0s1MmlsNktIOVFFd2F6SVBpNUlVdVhabTFFM0c0VWFjeC8ydStTNGJl?=
 =?utf-8?B?TnhEV1lnN0lvU0FMaTJlRG1FTnM1eTBEKzU4NmhGMXdhRUtyZ092YkdsQXV2?=
 =?utf-8?B?c3YrWThZQU1NMys2eDh3eSt4L2dtbG5vSU9ZWHRUZEZYRzlIN1Vqd3ZxQ2ZT?=
 =?utf-8?B?WmRXSUV1RnJic1NpVjFSZzlvMmM5NzRudThmT1N5NmU3UXR0d2oyOGZFekcw?=
 =?utf-8?B?R1o0c0pJNUU4bHpKWms1anRHcXdVdHBSTlNHNWJrZmo1WG55NjZCajlPMndR?=
 =?utf-8?B?WW1GY2UwcFR2eThrSFlHeW5BT2xnTzEwMXpiQUEvQzhTWTFNNXh5SjFwTER0?=
 =?utf-8?B?aStPNWtpUU1uT21nTzRzc2VSdmdjclVxUDRONGRRSCtHRzU1Wis3M2tNdHIw?=
 =?utf-8?B?YUI5U092Q2JvdGZ2eGh2Y1p2bmhva2J1VEg5S2ZRTExxNHFISFJ5VG5EVjZr?=
 =?utf-8?B?ZDdOYk9pYVlzNElHUnNyaG1ISjN1Wmh4UXVrMU9heko0N2FNeDUzeXJ6TlBR?=
 =?utf-8?B?S1BpY0xNZ0N2OHpvb1ZXSnFzSFlScGxsUFN0R2xXSVdGdzV0MVpwSm1tWFBC?=
 =?utf-8?B?T1dqSkhXNEhETnJpZ0wvQWovRlpEUHVIdE9qU1p6Tks0WkhIcFQ3K0dRUEJE?=
 =?utf-8?B?cGk5V0lrMWdxWXppSmRuZlI5T1dvcUlualB0bjRPc3ZHU2VCb3dqUGIvcDFE?=
 =?utf-8?B?YkdMMUwvL2ticEs5ZWN3UjlNb3BxZkNzMWFVKzRXWVJUNEtmZlRxMlQxV05J?=
 =?utf-8?B?Q0Flays3YjZJckNiV0F5WEhvekxZdHJaVWxnajkxYlpDazgwY1U0dEg4a25K?=
 =?utf-8?B?STFEUHJuV3dFSW05OEk0Q1JybGJCU21BS3J1NTRuN1ViY1EyK3VkSUV1QlJi?=
 =?utf-8?Q?ER5S+uny+VRufpfWD7u8vOWkm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6b9bd0a-971a-438f-0700-08dd0245faae
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 11:42:53.7655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9gOzq1P9VtbEIr812WldNQSoyY1m0OjfcJlWXWIWa074SPnBnNKk/s+N0eGHfVJxTAeVxnIK3VDuNKlbU0E6rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR292aW5kYXBpbGxhaSwg
Vmlub2QgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIE5v
dmVtYmVyIDExLCAyMDI0IDQ6MjkgUE0NCj4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5k
cGFsQGludGVsLmNvbT47IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogUG90dHVtdXR0dSwgU2FpIFRlamEgPHNh
aS50ZWphLnBvdHR1bXV0dHVAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0v
aTkxNS93YXRlcm1hcms6IE1vZGlmeSBsYXRlbmN5IHByb2dyYW1tZWQgaW50bw0KPiBQS0dfQ19M
QVRFTkNZDQo+IA0KPiBIaSBTdXJhaiwNCj4gDQo+IFNvbWUgY29tbWVudHMsIHBsZWFzZSBoYXZl
IGEgbG9vay4uDQo+IA0KPiBPbiBGcmksIDIwMjQtMTEtMDggYXQgMTQ6MjAgKzA1MzAsIFN1cmFq
IEthbmRwYWwgd3JvdGU6DQo+ID4gPiBJbmNyZWFzZSB0aGUgbGF0ZW5jeSBwcm9ncmFtbWVkIGlu
dG8gUEtHX0NfTEFURU5DWSBsYXRlbmN5IHRvIGJlIGENCj4gPiA+IG11bHRpcGxlIG9mIGxpbmUg
dGltZSB3aGljaCBpcyB3cml0dGVuIGludG8gV01fTElORVRJTUUuDQo+ID4gPg0KPiA+ID4gLS12
Mg0KPiA+ID4gLUZpeCBjb21taXQgc3ViamVjdCBsaW5lIFtTYWkgVGVqYV0NCj4gPiA+IC1Vc2Ug
aW5kaXZpZHVhbCBESVNQTEFZX1ZFUiBjaGVja3MgaW5zdGVhZCBvZiByYW5nZSBbU2FpIFRlamFd
DQo+ID4gPiAtSW5pdGlhbGl6ZSBtYXhfbGluZXRpbWUgW1NhaSBUZWphXQ0KPiA+ID4NCj4gPiA+
IFdBOiAyMjAyMDI5OTYwMQ0KPiA+ID4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMgfCAyNg0KPiA+ID4gKysrKysrKysrKysrKyst
LS0tLS0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3dhdGVybWFyay5jID4NCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gPiA+IGluZGV4IGQzYmJmMzM1Yzc0OS4uOWUyMDhkYjU1
YWJiIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
d2F0ZXJtYXJrLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3dhdGVybWFyay5jDQo+ID4gPiBAQCAtMjg0OCw5ICsyODQ4LDExIEBAIHN0YXRpYyBpbnQgc2ts
X3dtX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RydWN0DQo+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiA+ID4gwqAgKiBQcm9ncmFtIFBLR19DX0xBVEVOQ1kgQWRkZWQgV2FrZSBUaW1l
ID0gMA0KPiA+ID4gwqAgKi8NCj4gPiA+IMKgc3RhdGljIHZvaWQNCj4gPiA+IC1za2xfcHJvZ3Jh
bV9kcGtnY19sYXRlbmN5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBib29sDQo+ID4g
PiBlbmFibGVfZHBrZ2MpDQo+ID4gPiArc2tsX3Byb2dyYW1fZHBrZ2NfbGF0ZW5jeShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBlbmFibGVfZHBrZ2MsDQo+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiBtYXhfbGluZXRp
bWUpDQo+ID4gPiDCoHsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoHUzMiBtYXhfbGF0ZW5jeSA9IDA7
DQo+ID4gPiArwqDCoMKgwqDCoMKgwqB1MzIgYWRqdXN0ZWRfbGF0ZW5jeSA9IDA7DQo+IEkgZ3Vl
c3MsIGlmIHlvdSBpbml0aWFsaXplIGFkanVzdGVkX2xhdGVuY3kgdG8gTE5MX1BLR19DX0xBVEVO
Q1lfTUFTSywgeW91DQo+IGNvdWxkIGdldCByaWQgb2YgdGhlIGVsc2UgYnJhbmNoIGJlbG93LiBN
YXkgYmUgeW91IGNvdWxkIGhhdmUgYSBwcmVwYXJhdG9yeQ0KPiBwYXRjaCB3aGljaCBnZXQgcmlk
IG9mIHRoaXMgZWxzZSBicmFuY2g/DQoNCkp1c3Qgb25lIGlzc3VlIGhlcmUgd2UgYXNzaWduIGFu
ZCByZWFzc2lnbiB0aGlzIHZhbHVlIHdoZW4gd2UgY2FsbCBza2xfd2F0ZXJtYXJrX21heF9sYXRl
bmN5KCkgd2hpY2gNCkNhbiBhbHNvIG1ha2UgYWRqdXN0ZWRfbGF0ZW5jeSAwIHNvIEkgc3RpbGwg
ZG9u4oCZdCBzZWUgdGhlIGVsc2UgYnJhbmNoIGJlaW5nIGVsaW1pbmF0ZWQuDQoNClJlZ2FyZHMs
DQpTdXJhaiBLYW5kcGFsDQo+IA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiBjbGVhciA9IDAs
IHZhbCA9IDA7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdTMyIGFkZGVkX3dha2VfdGltZSA9IDA7
DQo+ID4gPg0KPiA+ID4gQEAgLTI4NTgsMTggKzI4NjAsMjMgQEAgc2tsX3Byb2dyYW1fZHBrZ2Nf
bGF0ZW5jeShzdHJ1Y3QNCj4gPiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGJvb2wgPg0KPiA+
ID4gZW5hYmxlX2Rwa2djKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm47DQo+ID4gPg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChlbmFibGVfZHBrZ2MpIHsN
Cj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfbGF0ZW5jeSA9IHNrbF93
YXRlcm1hcmtfbWF4X2xhdGVuY3koaTkxNSwgMSk7DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaWYgKG1heF9sYXRlbmN5ID09IDApDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9sYXRlbmN5ID0gTE5MX1BLR19DX0xB
VEVOQ1lfTUFTSzsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhZGp1c3Rl
ZF9sYXRlbmN5ID0gc2tsX3dhdGVybWFya19tYXhfbGF0ZW5jeShpOTE1LA0KPiA+ID4gKzEpOw0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChhZGp1c3RlZF9sYXRlbmN5
ID09IDApDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGFkanVzdGVkX2xhdGVuY3kgPSBMTkxfUEtHX0NfTEFURU5DWV9NQVNLOw0KPiA+ID4gKw0K
PiBBbHNvLCBoZXJlIEkgZ3Vlc3MgeW91IG5lZWQgdG8gYXZvaWQgdGhpcyBXQSBpZiBhZGp1c3Rl
ZF9sYXRlbmN5IGlzIDAgaWUuIGludmFsaWQNCj4gbGV2ZWwgMSBsYXRlbmN5Lg0KPiANCj4gQWxz
byB1c2UgaW50ZWxfZGlzcGxheSBpbnN0ZWFkIG9mIGk5MTUgd2hlcmV2ZXIgcG9zc2libGUgcmVs
YXRlZCB0byB0aGlzDQo+IGNoYW5nZS4NCj4gDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgLyogV2FfMjIwMjAyOTk2MDEgKi8NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPT0gMjAgfHwgRElTUExBWV9WRVIoaTkx
NSkgPT0NCj4gPiA+ICszMCkNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgYWRqdXN0ZWRfbGF0ZW5jeSA9IG1heF9saW5ldGltZSAqDQo+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBESVZfUk9VTkRfVVAoYWRqdXN0ZWRfbGF0ZW5jeSwNCj4gPiA+ICttYXhfbGluZXRpbWUp
Ow0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhZGRlZF93YWtlX3RpbWUg
PSBEU0JfRVhFX1RJTUUgKw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaTkxNS0+ZGlzcGxheS5zYWd2LmJsb2NrX3RpbWVfdXM7DQo+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgfSBlbHNlIHsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBtYXhfbGF0ZW5jeSA9IExOTF9QS0dfQ19MQVRFTkNZX01BU0s7DQo+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRqdXN0ZWRfbGF0ZW5jeSA9IExOTF9QS0dfQ19MQVRF
TkNZX01BU0s7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkZGVkX3dh
a2VfdGltZSA9IDA7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+ID4NCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqBjbGVhciB8PSBMTkxfQURERURfV0FLRV9USU1FX01BU0sgfA0KPiBMTkxfUEtH
X0NfTEFURU5DWV9NQVNLOw0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgdmFsIHw9IFJFR19GSUVMRF9Q
UkVQKExOTF9QS0dfQ19MQVRFTkNZX01BU0ssIG1heF9sYXRlbmN5KTsNCj4gPiA+ICvCoMKgwqDC
oMKgwqDCoHZhbCB8PSBSRUdfRklFTERfUFJFUChMTkxfUEtHX0NfTEFURU5DWV9NQVNLLA0KPiA+
ID4gK2FkanVzdGVkX2xhdGVuY3kpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBSRUdf
RklFTERfUFJFUChMTkxfQURERURfV0FLRV9USU1FX01BU0ssDQo+ID4gPiBhZGRlZF93YWtlX3Rp
bWUpOw0KPiA+ID4NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF91bmNvcmVfcm13KCZpOTE1
LT51bmNvcmUsIExOTF9QS0dfQ19MQVRFTkNZLCBjbGVhciwNCj4gPiA+IHZhbCk7IEBAIC0yODgy
LDYgKzI4ODksNyBAQCBza2xfY29tcHV0ZV93bShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+
ID4gPiAqc3RhdGUpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgX19tYXliZV91bnVzZWQgKm5ld19jcnRjX3N0YXRlOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oGludCByZXQsIGk7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBlbmFibGVfZHBrZ2MgPSBm
YWxzZTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHUzMiBtYXhfbGluZXRpbWUgPSAwOw0KPiA+ID4N
Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShz
dGF0ZSwgY3J0YywNCj4gPiA+IG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IHNrbF9idWlsZF9waXBlX3dtKHN0YXRlLCBjcnRj
KTsgQEAgLTI5MTEsOQ0KPiA+ID4gKzI5MTksMTEgQEAgc2tsX2NvbXB1dGVfd20oc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIG5ld19jcnRjX3N0YXRlLT52cnIudm1pbiA9PQ0KPiA+ID4gbmV3X2Ny
dGNfc3RhdGUtPnZyci5mbGlwbGluZSkgfHwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICFuZXdfY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkNCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVuYWJsZV9kcGtnYyA9
IHRydWU7DQo+ID4gPiArDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4
X2xpbmV0aW1lID0gbWF4KG5ld19jcnRjX3N0YXRlLT5saW5ldGltZSwNCj4gPiA+ICttYXhfbGlu
ZXRpbWUpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiA+DQo+ID4gPiAtwqDCoMKgwqDC
oMKgwqBza2xfcHJvZ3JhbV9kcGtnY19sYXRlbmN5KHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KSwN
Cj4gPiA+IGVuYWJsZV9kcGtnYyk7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBza2xfcHJvZ3JhbV9k
cGtnY19sYXRlbmN5KHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KSwNCj4gPiA+ICtlbmFibGVfZHBr
Z2MsIG1heF9saW5ldGltZSk7DQo+ID4gPg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHNrbF9wcmlu
dF93bV9jaGFuZ2VzKHN0YXRlKTsNCj4gPiA+DQoNCg==

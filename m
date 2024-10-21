Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE7E9A686C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5830610E4BB;
	Mon, 21 Oct 2024 12:30:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XhAe4ERg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6742D10E4BB;
 Mon, 21 Oct 2024 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513853; x=1761049853;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=LDmnaWd5tLIR+ZRYO4eWWTLbAux8r1pZu12nFQNjk+M=;
 b=XhAe4ERgjKLdR5qYBiamUOMIN2b4VgYHe8ugQLFMUjEFztzbsSOGaWk5
 AqcaQpZ4jF2nys71lL+b2rLwGK91stmPu9QngjUAUM8QeWF4pUOOC6CuI
 Y92WuZ3qps3P1IeZdQAFxFzpC8f3NiqOz1h4FS5Ksl/eEYXKel4zeWcGH
 vkKjrrdl2N8/Vpo40HT7Q5J4MlUnkE4OCtgEUGfBqDshdnir3YNGzS6M5
 OIHTdkAFYR3BahcxtAR9Ze0ZE5rL+Q4pqQ3h+25FuRsSPMWNF8Ky2zcMo
 y0omQWSLfJPQEJZl6xG3p8NmFhcUkOF9OdnS0Hxa4BXf38Ufd+dAHtbQu w==;
X-CSE-ConnectionGUID: wiAK2NUOSQu1IUUpJvb8ug==
X-CSE-MsgGUID: Dn27xgddRyiduKAST2uk4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51541227"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51541227"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:30:53 -0700
X-CSE-ConnectionGUID: a+bnC2UCTmadE6GLZOPX7A==
X-CSE-MsgGUID: 8CkEq+T4R+2A+XNXwM6z8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="84134842"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 05:30:52 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 05:30:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 05:30:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 05:30:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RbacUkdJHo4uGdZ15ZOgfH7ea7f77fluOJpJog/D5vh/p3iFV6dbpSZqLWSgCEWzMYR87cralflyKO7ZbGdj49io+gWWcoCXbqfQqN0lMX9X81biBP8mqhMB+1+Wp4l1yFHlhuHa7fvAgGXEmqJX5fxdVmeEglAs6DjmlFDWkGZaMH5V/49cIIb/hPZunPq2fXuoTPSvPy56/K0zjDetS1w8o9pcfQOOMRc/CixnNQfZL7u3X7yPx5cXTcvXsMK8V5VgiLH66iAgyrcBw2RaMfsSbsO6QCAviVvc31qtOxuNh9H6eshvQIskH4CSwYPr4gpG8OjTxMmWlvzdgYVdTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C5Iw7nlglUUgv3DMwu3WAALKJ4nAxCVhTcWE0b/N8OQ=;
 b=b4up29FkIbkG3NfcJxP2M45qcC125zI2VVfSgUVEgFhT6lHMVUjgAxf1/IqQ5cgF26OeCR3oS3mgwHqZWHAF8sdgwdSlEqZg+o/8Ly5EUDn4fwC1OyYvqai7XhTLwMY6qHo02pgj2e00sljrSfoGsM2lrpP/Zrd1rD+s4/UxxM5dPv1u5Gxw+LPcBDZKr5VH1qgkGvq9BOefd9AuXOWVqvB27vwOZWScD1Hj/idRRpjN2QMgGHMrfnna+WHxCytwJE8nA7HyyWMajpK6JMqFClkLJE8LMNi7gXULkDih54DEFOgM7ZF6znZnF/nCrmP7YOlG7eu3GWLebp5f2+1cvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB7635.namprd11.prod.outlook.com (2603:10b6:510:28e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Mon, 21 Oct
 2024 12:30:49 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 12:30:46 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241018204941.73473-13-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-13-matthew.s.atwood@intel.com>
Subject: Re: [PATCH 12/12] drm/i915/xe3lpd: Power request asserting/deasserting
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Mika Kahola <mika.kahola@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 21 Oct 2024 09:30:42 -0300
Message-ID: <172951384271.2472.17701650801593072084@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR2101CA0017.namprd21.prod.outlook.com
 (2603:10b6:302:1::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB7635:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d5030c2-f157-4444-dea7-08dcf1cc3059
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UTNRdFFyWmI4cVYxYlVYM2I3UTlGY1pSVmhIYUc2NXZMQm8wQzQ2QThrci9s?=
 =?utf-8?B?aXBsQmp1ajBHek9WeDUwMU9jNzVUVHNoVlZoanIxZllSUW51Zm1wVnVsZEZo?=
 =?utf-8?B?MXBWM29JK0ZZL2lvajI3Y0NnRFhsZlRNc0NZek5La0p3RXZWV2hXM0hOdUZm?=
 =?utf-8?B?WHQ4UUZsZC9ramJ6QkdDU3MyYUFWbWllaTViVkxJUjc3VWdNalcxWGtMTkNk?=
 =?utf-8?B?eDdBRm1PdTJjTGtzNmxBRjU2LzVVSnU2MkpKejhkT0Y1WHA0VGtwekk3QUZ1?=
 =?utf-8?B?NnEzM3dUaFhwSkNNandXd1l1Qlh2dUg2emlKSWhnejgxYnZGNVBETjNZNHZi?=
 =?utf-8?B?VXdGSlBqOVJEeEE4QnVEa1ZNQTdQcmozZnlLeW5HQ3J3eDZZL09SdWZCa29N?=
 =?utf-8?B?TmZoMGR5YXBFN0ZQVW5uendlWGtIODJsUXB2bTg3bUd0T21vSEhURTlwQVpR?=
 =?utf-8?B?eDI4a1dlS29BdUc3d0U2MjI3dTlVeDA3MWhyTnlPeHJUcjVhTU1OTDFMWjFt?=
 =?utf-8?B?cWp0U0U3LzFEODV1eENHWC96RVR3OEI3em5QODJZSlNta25ta2w3YWY5aU9R?=
 =?utf-8?B?MVVGejFoSXlCNzBiaENiMEZ0MlpiMTBHZU5qRjBQSCtUbDhkc1daUlkzZUlQ?=
 =?utf-8?B?cUxhZU1CZnQrQUp2ZXBEZnd3aHp1R0dLOXVNYmthOHkrcmJ0Sm5hKzNFVWJp?=
 =?utf-8?B?QUFZOTVlTmtNQU5jbGlwWXB4YmJTTkppakZuS3AxVEZtMi9mbitnbitXSVJS?=
 =?utf-8?B?UXJPdHU2QnNEVlJpanlrSm5ZTm8yMjhENDJuNzkrSmMwamhmSkdsSXBESW5Q?=
 =?utf-8?B?TkN2blN2MHZyZXhhQmxuTnJrYVFaSnlYb1QxMTk0d0hhcGZDTXBwR0FPd0Rj?=
 =?utf-8?B?M0FnQjk3S2k5MHFIaG1ScjA0eTBVYVp0TlVaWkpRU3FJR0w2aDBWR2ZFTjda?=
 =?utf-8?B?V2ptYXhWOUo0SEZoK29FczZJWWFwOUhuR0RQSnMxd3docmJaa0FKOHdHVlBs?=
 =?utf-8?B?dWFRUm9mWGM5cWlISVZacmNZRW5IOVJqTjIvSmg5S2cvbk9BNkNSc1FWOGt5?=
 =?utf-8?B?VjVmTzJERU1SSTY0NEk5QjVXYmlSQjZ4K0lIRHdSZnFUYWlFVHRMTHVXbVBH?=
 =?utf-8?B?SU9jcXFGM3ppYnBKaHVlODBTZHBwaHRoNjVCZUIwcHJPSnBsUDBaeHlxeVl5?=
 =?utf-8?B?TFd0d2sxaGRsL003a3dWR3FRdlJyYzl5UDRMbzVBeExoa0d0dmtaYlNpV1hP?=
 =?utf-8?B?Z3hzV1Nyb1FBRHJwTEV3WjFtTm51a3ZaN1JCTjdrR0NyS2ZXMmJQUi9taDBx?=
 =?utf-8?B?b3pSVUZ1TWxOQnhxZXZaYlliTUI1ZUEzS05oS1JoN0kzWnkwMkxyVUlRcWJx?=
 =?utf-8?B?Tld6bDdHUE9Cb0ZiQVlzM0M5U0JQdEhTdzkxcFUyYmFhVlVCcm1RR3VrSC84?=
 =?utf-8?B?dEUrTlpaUitHMVArVWpicHIwMjEvWXRsQk9qdWxITExOdmZ4WCttbWFxa25O?=
 =?utf-8?B?cTRkYlZGOXVkTUFKZnFxNnJFWDJRa3ZHVTUya2lTZ2JUVk9pa1hxRk1ublpV?=
 =?utf-8?B?QmtVcWxwRjZiVDFVWHltMXc3QmJtUVdZRmFlWTdJYlNyY1VKWkFkbExpRDBs?=
 =?utf-8?B?TVY5WXUyZ3ZSOFkrVk5qUnJ1YUVzQ1ZyZERNNjF0d2VIWG1vd0pIcnVsOFZ2?=
 =?utf-8?B?WlduT1V4Mm9FM0Z0QWN0UzFVL2JjcEtKUytPdmFEUDU0RFBXcDcyWHU2SnJ5?=
 =?utf-8?Q?2ZiQAuqK3xUKvvw5ug=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEJDd0QwcitnR1RJbkYrOEVmVVFqRXJkbG9keVp1MmlJaWM3Q2lDWWlkQXNy?=
 =?utf-8?B?ckZyZDJucHNDOTU1SldiSnFOLzJlcnQ0UjFCZ0s0cWdMYlYxNUNia2piZ1ow?=
 =?utf-8?B?OUg2c1liT0NQbWZEZlRFcmo5TnVFbUZhYi9sK0tLZTl4ZWp2eWdpbGtZZ0VJ?=
 =?utf-8?B?Qzl6d0JpVDZoeWNXVGltNGhvM0FDMjNUQjNYVGxkODJjbW9FSjI1S1J3K05H?=
 =?utf-8?B?VW5lTUxDVDhvTHZNZ0hQdDMrRnJPS1A1VGJQaW8xZUJkU2ZKekl2YmRITzdK?=
 =?utf-8?B?UkVlVTJHcGlLZ0prb3FZUUM2MGxnN2hFU2pkeis4ZkdEUDR1VWU5MVNDc0V0?=
 =?utf-8?B?QXpROEZvUkx5Ty8raUUwK085T3BzZnA1U1l4Q1lvME1ScHVuVXpIUkdPOE1m?=
 =?utf-8?B?ZlpWazNTeTB3VnRsUjdVRU5zMEgvTittNFZIRUNsWGwwTXJFaXd4ZDVHbjBy?=
 =?utf-8?B?SmtqL29Ka0RhdkdUS3gveUFNeHV3Q05zSUNaN1B3WXA5Ri9WeE9QNE5XRFNz?=
 =?utf-8?B?QTNhT2ZibmZBWlp5ZEF5MVZyNVcyaGlxaWtJOEcza0NGNWt3K24zL1RuUkFk?=
 =?utf-8?B?YVNKdXJQR3ZhSWtqYnFVcDdpNkZFbTNIOFJSdVJtZGJRNkxPODNxQzF5NFNR?=
 =?utf-8?B?eHBmbXM3MGhvNjN0blRmMWFxVDRScFF1WWxSN1k0b01IOVRxVnpPeXpEMmxH?=
 =?utf-8?B?Z1M3QXpyaFRVSmhIUEtrWVMwZzd4UlBzUnpWZWgwdEFYVkNDN0FtaDdBNlZq?=
 =?utf-8?B?Q0tJTGVVSjc4Z0xoSVlQcGlteG4zdEcwNkJ1Z2NmMnNyUTNsQlkzaWYwaWJi?=
 =?utf-8?B?YWhZK09mUFhBTndrQzBXUHB5OFhoWi85SVd1eE9YSjJYdGdkT2lSMU5jTFAr?=
 =?utf-8?B?L2RQanlZTUlxWVFsNlpORzZxa0w2ZlZJKzVEaEJsYWpsaXFZMCt5OTIzVnVY?=
 =?utf-8?B?YWVpM1FUNmI5N1pLTGV2eGUxNnNocVVjL0Q0Mmp0S1hxdHJBWVNoTGJnSml4?=
 =?utf-8?B?NVNvMzFTK3ZKYVlmMzJnbWpaQmJ3NXdUMGt5Nk0vdFRsOFpTSU9pcDB4VTFi?=
 =?utf-8?B?Nkc1cWtxb2NmeS9ZTTNjVUVUQ0d2ZHBNR1ROR3NJRmFXVGdseEhleFNndExn?=
 =?utf-8?B?a1ppS1RIVDZRSVVtdkJ5OE9OcjNRZmNlNHU0UXBZWStSQnVLbFZvUFNhUUd6?=
 =?utf-8?B?NGMzQUNpNTEvTUNhcVBvY3cyRXVxVGVYZm81WHBpeUNCV2creHRnSkJ0Mkhu?=
 =?utf-8?B?ejcxVkh2VnlTQ2xQYStRSG5yQVdtZWQzWVk3OUpIZVFQN3d1T3E4eHFZWFEz?=
 =?utf-8?B?LzYvQkkwZUJickJnd0ZnYkZsTXBmZWNSMlZjR3FrRkkxQTNJYjBWRUZyUlRY?=
 =?utf-8?B?Q1IyRzlVMnZRTno2RzBEb3Fibm9ZMEc4bWluTDlyNXNHMzNGQmVhNDF0SXdH?=
 =?utf-8?B?cVFZa0dOZFlWUXlMSUZlUW1tb3l6bGNFMU5ZUTlKVkNvZUwzRG0zeUgzei9l?=
 =?utf-8?B?YWVHb29SaW1jUi9YTDhyaEg5SDU3ZmxTTDhvNG92WjZUUjA0UjlacnRSMWo3?=
 =?utf-8?B?THdacm1kbEZtUWFnWkhHNUV0Q016emVJdURrVVF2bUJiemxrY014dHNVSmp2?=
 =?utf-8?B?MnNWNzFOZEZGSW9NcGtGbnhUNFJNSnhpb0NKc2FqcEorVFE2d3diQ2xMMUNX?=
 =?utf-8?B?UCtueUlvaEMxcDZpQlBEeFFiUHdDWkNIbXRxSmJ3dFIwNGpQdFFweHNHcjkr?=
 =?utf-8?B?eEtSZlBZMlp4dDNHcG9nZnJCbmJtaXNFNmFjb00yaE1YQmNpN3psSTlCcS9S?=
 =?utf-8?B?UmtxVHdhSjJqT3dCSkhwRGd2dDB0NG13ZkxvcWlJWlYxTitGY1lMelFmUmZC?=
 =?utf-8?B?VnNmc0RQdHROaEo3bVdjakl1eEV3MzdYMExtZmJ3T01IZW80R0NkMjQ2VDVn?=
 =?utf-8?B?akdQQTJ2OEl1VEdkRk9SZ0Q2NW1KdmVqM0ZWZlJkblJzaytMVHZFNDlQSmJK?=
 =?utf-8?B?UjBJd2I2NG04NGVTTDhHMjlwTTIvdmpUQ24xYWZBTjJ6WVJlY2paNGQvQlpT?=
 =?utf-8?B?Y2ttNUUvdDhBdFU5ZnVvK1FRYXBtYkRNZ2J3anhKNkxQSXNpMWR3TlZGb1l2?=
 =?utf-8?B?SGpzeDhkSHBEMEZyRXl6K2Yyb0l5S2didXI0YTJOcy9GTStLN3RwYzNJNFdD?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d5030c2-f157-4444-dea7-08dcf1cc3059
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 12:30:46.8730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w+ErWoOgsCW4lorfpL63sHk+uiOcrXf73Fo7EBugIBnBssH196dGG3GcJh/6EwCVS9muxMLKsNqw5WzoN076Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7635
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

Quoting Matt Atwood (2024-10-18 17:49:41-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>There is a HW issue that arises when there are race conditions
>between TCSS entering/exiting TC7 or TC10 states while the
>driver is asserting/deasserting TCSS power request. As a
>workaround, Display driver will implement a mailbox sequence
>to ensure that the TCSS is in TC0 when TCSS power request is
>asserted/deasserted.
>
>The sequence is the following
>
>1. Read mailbox command status and wait until run/busy bit is
>   clear
>2. Write mailbox data value '1' for power request asserting
>   and '0' for power request deasserting
>3. Write mailbox command run/busy bit and command value with 0x1
>4. Read mailbox command and wait until run/busy bit is clear
>   before continuing power request.

Is there a WA lineage number we can refer to for this?

--
Gustavo Sousa

>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_tc.c | 40 +++++++++++++++++++++++++
> drivers/gpu/drm/i915/i915_reg.h         |  7 +++++
> 2 files changed, 47 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index 6f2ee7dbc43b..7d9f87db381c 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -1013,6 +1013,39 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_p=
ort *tc, bool enabled)
>         return true;
> }
>=20
>+static bool xelpdp_tc_phy_wait_for_tcss_ready(struct drm_i915_private *i9=
15,
>+                                              bool enable)
>+{
>+        if (DISPLAY_VER(i915) < 30)
>+                return true;
>+
>+        /* check if mailbox is running busy */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "timeout waiting for TCSS mailbox run/busy bi=
t to clear\n");
>+                return false;
>+        }
>+
>+        if (enable)
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
>+        else
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
>+
>+        intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                       TCSS_DISP_MAILBOX_IN_CMD_DATA(1));
>+
>+        /* wait to clear mailbox running busy bit before continuing */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "timeout waiting for TCSS mailbox run/busy bi=
t to clear\n");
>+                return false;
>+        }
>+
>+        return true;
>+}
>+
> static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, b=
ool enable)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>@@ -1022,6 +1055,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struc=
t intel_tc_port *tc, bool ena
>=20
>         assert_tc_cold_blocked(tc);
>=20
>+        /*
>+         * Gfx driver workaround for PTL tcss_rxdetect_clkswb_req/ack han=
dshake
>+         * violation when pwwreq=3D 0->1 during TC7/10 entry
>+         */
>+        drm_WARN_ON(&i915->drm,
>+                    !xelpdp_tc_phy_wait_for_tcss_ready(i915, enable));
>+
>         val =3D intel_de_read(i915, reg);
>         if (enable)
>                 val |=3D XELPDP_TCSS_POWER_REQUEST;
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 2743a2dd0a3d..d2775a32bf18 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4539,6 +4539,13 @@ enum skl_power_gate {
> #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT        REG_BIT(1)
> #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT        REG_BIT(0)
>=20
>+#define TCSS_DISP_MAILBOX_IN_CMD                _MMIO(0x161300)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY        REG_BIT(31)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK        REG_GENMASK(7, 0)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)        TCSS_DISP_MAILBOX_IN_CM=
D_RUN_BUSY | \
>+                                                REG_FIELD_PREP(TCSS_DISP_=
MAILBOX_IN_CMD_CMD_MASK, (x))
>+#define TCSS_DISP_MAILBOX_IN_DATA                _MMIO(0x161304)
>+
> #define PRIMARY_SPI_TRIGGER                        _MMIO(0x102040)
> #define PRIMARY_SPI_ADDRESS                        _MMIO(0x102080)
> #define PRIMARY_SPI_REGIONID                        _MMIO(0x102084)
>--=20
>2.45.0
>

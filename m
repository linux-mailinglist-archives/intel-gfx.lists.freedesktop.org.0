Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LggFce5/Wm4hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 12:24:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B42D94F4F74
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 12:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D66D89349;
	Fri,  8 May 2026 10:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="je/y7ASN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CAD89349;
 Fri,  8 May 2026 10:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778235844; x=1809771844;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/MVtgPuM1Sy1mTdoKABu4xmVem+ZaUUz9KVdLiXdzSA=;
 b=je/y7ASNLtGm9SCkpUC76uBB0sMoI9sEZdoP/J1Qm91x383CgHf7al/8
 ChviDyscpE6oKKxPVH3ARUhpE4seS0gk89GBnm/8hD2D65shVZ7pgBK27
 3UfFtU09S3C4qLUMx/Hkmm4Qx5Wx83utJ1+dih0wUBnzLG4wFTKbHLn8F
 2F+/afYcf8aWS8LbCYm7xxHXk30KtsmpCUko2k2LSQrfJGEiJRV0oD1f7
 FGvxzydb64+0VhgdGRZNFEgYqG0yrE8WZVM31ELNUbgOCF7BaHzxCEJDS
 QLcQ1I09d5V8GZsXS2cVXURuEpLe3Tq43uwWV5au7JMfX4huFllc2Ih2P Q==;
X-CSE-ConnectionGUID: cIciclVsSY6THiHAmygcsQ==
X-CSE-MsgGUID: 93b0jJC5TJGzTEZ4fqgamA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="89790774"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89790774"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 03:24:04 -0700
X-CSE-ConnectionGUID: uMJKKpSJTSOPVC4oi05RXQ==
X-CSE-MsgGUID: zxmMvA2/SUutFDTlVK9mYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="238512175"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 03:24:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 03:24:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 03:24:03 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 03:24:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mC/vaO00Uzz4ZIXyWhAgwOtlYOR+YL3RLCpqGua8a0h2MH4ep1dG/H/EZCdojl2C7UlfYW3bog1EGje9WuQ/moJ1IFBOR1HT+Vo98EdYxd/L2JedHEy8VzgxM3wXkZz4PlL7F/oAh6Rif5n/zqGhWZPwvFKa30/MmuXjQCK8d1U189dWYC9MMpPlQcjBDAnAtM+qVC/I0Y4j+x8WuzfbLDKNHVp1k6pfXm64Ke2xXmKlKh98zhLRCxV5MLPQcJf7ZVfKH0GYQpS3SI8nVSa7u1FuzD83IUWNLIjCQEaTNwTsR6gIT1rl4rUavZXMQVEAgAeI+r9WYgcShxBZUl9g6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/PmUTn07kIei53JFoojIWk+ghI/4NqGUvGUiJ0iXBBU=;
 b=MFXtDcUckjyv/M1kRcFAtsl2qLDUQZ7sz/TTNsU916pwL3+zWU9d4SbD5JoMZ/p/N514XsQ6Y7Xl2vCaa+/8fxTAD0beKR6j/ZEIG4/sMaS4bkXeVKclz3NBjg/Wk06CfFDNkOdcxWxPy9UVFWxbk2cpQKd9ySgrc7aJaXtjoHKYXfy3PkL+EuDzHNG3J7Bz4416ZgtRkiw11OYO1f6xuOyubgQ4v8U2eP/78nr2Iqzucsw4Cm2sGb4tIAgj2wgaJn9jMB9WBOd77/hgfGmzbvS30rBXqYwj8VgH1hwy6FsiuionQkVcbdwRLp5EkArZfYO3fH8ltnQaMve4PXJ8/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5309.namprd11.prod.outlook.com (2603:10b6:5:390::5) by
 CY8PR11MB7033.namprd11.prod.outlook.com (2603:10b6:930:53::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.19; Fri, 8 May 2026 10:24:00 +0000
Received: from DM4PR11MB5309.namprd11.prod.outlook.com
 ([fe80::89e3:7ceb:6511:dd36]) by DM4PR11MB5309.namprd11.prod.outlook.com
 ([fe80::89e3:7ceb:6511:dd36%4]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 10:23:59 +0000
Message-ID: <4d718c6a-6818-4dba-beb2-49be575256a7@intel.com>
Date: Fri, 8 May 2026 15:53:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Skip inactive MST connectors when building
 stream list
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <fnu.vishwanatha@intel.com>
References: <20260505094022.4064256-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Reddy Guddati, Santhosh" <santhosh.reddy.guddati@intel.com>
In-Reply-To: <20260505094022.4064256-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0103.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::17) To DM4PR11MB5309.namprd11.prod.outlook.com
 (2603:10b6:5:390::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5309:EE_|CY8PR11MB7033:EE_
X-MS-Office365-Filtering-Correlation-Id: bb2834d4-7f7f-4e15-8ff3-08deacebeade
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: QhW/v0dw4/ruXQ2PFNGO0yY0JLXUu+7QABHOpgij3jWYXu66bDrUAlCWctK/sABjiE+Aiat4jbg/yp7ItoTWPuoPLPGz0HdY4o/vj/YyVbDzFT4oc+R87IZvmSQYgnmAT6F75ZtYbna7rZgo0tv4bcLTzRbsOFn+xKQCZWjUfx92HhCwO5nagPu8aXVUqbdTgr5MmTSvZoi5s3ojXk58kEf1qS9nl8rDXOJfxSrvsDBjnNKDfEg1WdtP00Ltvj4h3+V7xP59JGp6SndqSR404QoXtocIQCBVhd63R40Debw6764VC41Gr/a1t9JYOe1GYH/wAfqFwzrryOy0fgA9kuysMTtpBEDqqfVxp3/CNAwF3RO1fshfzUSnyUEC9ng9su2vfG34akr2ZRjp4mzyH0O4zDmCFZhKwopBNT9lsCHJjmckzYPD1cAsYy1TJv78CDlkusHtj8pO830p9kyTIivCnz+dN75G1oMkCT8ajTAHZWvWaWqAWtfLxSfB5eb8Iw1cmDbkwBm9cx9ViKnncYezFFlFOXf+aIOfOLu4dDd3FP4V+R1CaOPa2fyZG6TgpBMeBJWZNDdeR1yoHAaeYde0971ptAc0e6BlQB/sN6YEzcznWEB+ICQfEn2sX8D8C6aDkQUKu1T/ctMC6mJLil9StSTvotGuAfF00/EP1eothewB1fCymdAwCxHQNBc6hVF7cX4wyMvzNaxZ0TsVpg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5309.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QytjVXJXcWFmTndHZFY4OWVWcGFrVVU2cjFlNDF2UmxLVURITkgzU1RRZklv?=
 =?utf-8?B?YTdBVU1wMy9EWDNsQ2xLOVo4SVVJSDNTcmtNRnIxQ05RWjJlWUVsY3Uzbyti?=
 =?utf-8?B?bFU4cFJjYTlUSDdPenNKNCtpLyt6anJjZis0WjgrTzVmTExhTHYrUjNHR3Fn?=
 =?utf-8?B?TXpYMmd2R0hZSTU4M0pONWFORi9kbnE4VUh0YW5aYmZhOUVNSERQTkdFK0ZS?=
 =?utf-8?B?OUFLMEh1YWFPdXNrdFBWdHV6NXdCWkhPSnpBeHZVdWhUM0x6Q290L1Rzc1JX?=
 =?utf-8?B?ekJuOGpiT2tObVppNktwT2FXaVd4dVVHOCtVdFpvOWViQnVwSWlsRmVNV1d5?=
 =?utf-8?B?enRNQmZEdnY3NkdjV2xROE5NN1FMUExGcGlzL2N0SlhqcXZ4aGVtZDlZaTl2?=
 =?utf-8?B?U05BazAyZiswMVFHSkZJcDJ4aG5sRXE4eUI3eDR6NXJQOFNGaFB2NnpRZ1RY?=
 =?utf-8?B?WGRmRkt1L09adFNuUXpNbFRCcmlGd1A0dDRIamdLMFZJZThsVU5EZEUxWVZ3?=
 =?utf-8?B?NmlxS09QaDFpM201Unl0cTVaQ083WHlpOGF2MUJGMkhDbGVtc3djdHpZblRi?=
 =?utf-8?B?MGZnbXRaZDl6RTBoUHM4RWtFNFpmd28rWms5N2Q3K1lCR0tMcjhYWWZHTklC?=
 =?utf-8?B?cUxDbmltdWZBUElIR0o2WnlFU21qS255YlRGbmdUUGt6ODRLbytNdHMvUXRh?=
 =?utf-8?B?R3VFbWFMNXZjOHpFV0FNQUcvWHV2M25BRFVSNXkzYkZ0RlorWUFJcVBXaENy?=
 =?utf-8?B?QjJnRlQvQXFEMkVXNm0yOWxsZjVTbldLWDRtbXJlOEdNWHVYbWQ0K1A3M3I0?=
 =?utf-8?B?QWF1RTVHOWFucjI4VHdTN2hVaWhrTFh4NGM3cndIQWxNbnRJUjRhVER4UlQ3?=
 =?utf-8?B?V0ZUblRRcldDUFVMN29vUnZPTk5TTCtUT0lCSHVVbFZrTnk3M2s4eUpWQ1lZ?=
 =?utf-8?B?MDNmZ3F3b21xNFZISXpWb3FQRDZkaEFkSXNQb2pDRHVJbjVDYldQTUdQa21a?=
 =?utf-8?B?bWdMQXc3ZXZ1SmZSdDFKRmdNbXgrQTFxVWpaS2lUaEw3Slp1TEJLVWtJWnpR?=
 =?utf-8?B?R21yUVBCY2FCMFkyNUZsbjMvQ2dDMlBLWktkUjh2eEljdk95Sm8yRzE4cVBF?=
 =?utf-8?B?NTB3NU5oWURuZmp3encwQ01yZjdhY1I2NHdpNFY3YWFuaXFHVVdrUzZVQkRn?=
 =?utf-8?B?blpaL1c2VGZEdWtQdE10dkEvTGdkeGo3MTY3UTVEL2RteGNjV3NicTVVRWNJ?=
 =?utf-8?B?bWlpZUhneXgyZTVPQlFtMGNUVkxNTHovQVMvMU0vR01IRE1Cb2RjejdGS2xp?=
 =?utf-8?B?VTU1VlB0Skx3enUyQnZJTnJNaVNOdTkvOFRQMGtjOGgwdTYvSm45OVJlREFX?=
 =?utf-8?B?QkNjSDB5Tmx1NzJPVEJ6RGwrZjFiaXJlQWQ1WXhDYVNZejBKOHFkeGdrdHR3?=
 =?utf-8?B?NmpZRlZKaUt0dGVRUXhRUndoMnVPY1lNNUNZN1lYSG96K3J4dzlLUmUxdlJu?=
 =?utf-8?B?OTFOaS9aQVdGOU94ZExEOG1Vd0NlN1d3SFZBOXlVWkl0aEx3eVlRa2o1Znkr?=
 =?utf-8?B?NjBLUWtrQmZqc0RNWE42aUxTbURQOC9kelN6YXFkdFdpOVZZSVAvdmc0azlT?=
 =?utf-8?B?QUJSUDRaQ0dKSDFXZmFHUzM1N3kyRmZydmRKc2h1bWs4U3g4RnZkWVhCRERI?=
 =?utf-8?B?RWplZ3QyRG9DNEgwenNGaXBZYUJrSTJjVitZRlh1U08zMFY4SEo5WmpBcUhu?=
 =?utf-8?B?bHVnYStma0F6cDVhcFpmQlZNR2M5REptNzNnbEtzajdjbTB0OWVsUmRoWGUw?=
 =?utf-8?B?eEVrSWVsL0s1ZENrSzBJa0NDeFF5VnlmcVdtK0ZPUnFDcmYyUFRzRHlKNEti?=
 =?utf-8?B?Yk85Q2JYMVBDbEduU21ybU9SL1RNWmgrNHR6L2g0ekNmU0NxUmR5V1I0ejEx?=
 =?utf-8?B?UkYrQWNTbXVCZG8wWmN4ZFBxYzhjWUdzamZwd2tUKzhvTUgrYmc5cll3cnB6?=
 =?utf-8?B?bm04ekdya0NYa0xEaGpTWmRyVHdpalB2eGlHcERKWjV3U2pJYnZ4VGRuTC9l?=
 =?utf-8?B?b1dWSG5wbHRzczVHYTZGL3ZuMjVjR0NCeUVVRnowQ2ZwSXdIODdWZVBkWEZo?=
 =?utf-8?B?V1lKSzBybXNsSmQwNUdJZXROUW1hY2VaUmtwdTIwU3hET3NlK2d6UDNMQVdp?=
 =?utf-8?B?Z0RzRmJRazdJdHZxTXFzR2ptRGE0bFlYbnpHR2s0ZGNFQlVEMm51TnFCUDY5?=
 =?utf-8?B?NkorbkFCMHk3NEZyUzF4aXJSTXZkelhYcjhueW1BWnJ2TGNLdjVUbVE1SldD?=
 =?utf-8?B?eS9NUVB4RXpHSnlLZmpWZTdFY0JKWFRpaDJCeUIyTUg2T1Z1d1ZkMldMWllz?=
 =?utf-8?Q?7fBUUC8Cb6wD6inOtMwg9u4/UZgZCDKgGhniH?=
X-Exchange-RoutingPolicyChecked: VWZxuaQUzm5HYJXGi3ozXzrD50jxAH33ErHJ2XSb5Ci2fcXzCKozce8j1l5cP03zrByNIfZe5/jybr76AnlY0wusVMq07Q+8Indi2PosYde9ZGwnT9wNXA2QyuAERbDAVWOZ0ujlDhU4MIwaAcYzzf6eYsd4Tjwx5cgyrkfiQMyDOhMC8MqcA2IbyfabSEYtNqoOk7ZA8jshXyrOE6VVIteTcC+Zd55EPVxnbt1HsqxRxt2ne5Sk/jrICwY8l320sh3I/0ifYmEzyaD6HkVRRi3IwjqhrjygUITjGttC6EEJxP/KXjpw0tDRH77MyGcuvd+UW68mC8SG6GX9ioWqpA==
X-MS-Exchange-CrossTenant-Network-Message-Id: bb2834d4-7f7f-4e15-8ff3-08deacebeade
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5309.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 10:23:59.2976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 72UWl73MET3TZAxNYZdSsfwIysQxjAPkuE3EX8vFUMenOVBXsiODt7rhrlFUffIX/pkWqjcRmwQ6nbUBsP5qE0oF+FADAlCUlCQ2QtGwwF4UPKNSwE66IR8rLH90zcbu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7033
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
X-Rspamd-Queue-Id: B42D94F4F74
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[santhosh.reddy.guddati@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Hi Suraj,

On 05-05-2026 15:10, Suraj Kandpal wrote:
> intel_hdcp_required_content_stream() walks every connector on the
> digital port to populate hdcp_port_data->streams[]. The only filter is
> connector_status_disconnected, which reflects physical presence on the
> MST topology, not whether the connector currently drives a stream.
> On a multi-sink MST setup where only a subset of sinks are modeset,
> the loop can pick a sibling MST connector that is connected but has
> no active CRTC / VC payload. intel_conn_to_vcpi() then logs "MST
> Payload not present" and returns 0, and the bogus StreamID=0 is
> written to the repeater in RepeaterAuth_Stream_Manage (DPCD 0x693F0).
> Authentication completes, but the repeater shortly raises
> LINK_INTEGRITY_FAILURE (RxStatus 0x69493 bit4) because the StreamID
> does not match any stream on its input. The HDCP check work then
> tears the link down, the Content Protection property drops back to
> DESIRED, and userspace observes a spurious HDCP enable failure.
> Filter the connector iteration to only those with a CRTC assigned in
> the new atomic state, so intel_conn_to_vcpi() is called for the
> connector actually being enabled and reads its real VCPI from the MST
> topology state.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 982f698e9814..1b2e2727c14c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -116,6 +116,7 @@ intel_hdcp_required_content_stream(struct intel_atomic_state *state,
>   	struct intel_digital_port *conn_dig_port;
>   	struct intel_connector *connector;
>   	struct hdcp_port_data *data = &dig_port->hdcp.port_data;
> +	struct drm_connector_state *new_conn_state;
>   	bool enforce_type0 = false;
>   	int k;
>   
> @@ -139,6 +140,11 @@ intel_hdcp_required_content_stream(struct intel_atomic_state *state,
>   		if (conn_dig_port != dig_port)
>   			continue;
>   
> +		new_conn_state = drm_atomic_get_new_connector_state(&state->base,
> +								    &connector->base);
> +		if (!new_conn_state || !new_conn_state->crtc)
> +			continue;
> +
LGTM
Reviewed-by: Santhosh Reddy Guddati <santhosh.reddy.guddati@intel.com>
>   		data->streams[data->k].stream_id =
>   			intel_conn_to_vcpi(state, connector);
>   		data->k++;


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11998B202E6
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 11:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E9F10E3AF;
	Mon, 11 Aug 2025 09:12:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GmXD7mk9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4141210E3AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 09:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754903567; x=1786439567;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tAaKqMrWgRw0hhaSYXmDBlHoTWnlrXuQY9iYmeKOB2I=;
 b=GmXD7mk9IT5GDlpfDDXr4XCiyDoWh6qu2yLCjaoiPm3/corxD+9jUBDn
 GQf4hwH2WfqFFoK26CesB5msdPF8aHlzOeJNVEG5eltdFy7Z4bKNFDMzT
 3iEjZyaUYTF9jl+0cw3NuWlMR4PKuPCLKX8+sYimuW6VYqImqANmsffHp
 fPnBewK+jryQBpFwsXmdzDfwKQLg6reglkd8hnMgU02En2cgklhhNuCXQ
 heU2Hy3BLk/Yv6B+hnIC2T4pM3dNwehjKY/E/DOpAxabD9XPde/4wnXJb
 xaU0BD+8y/wQKYrDVh9RMnoRo2npTaDJkNwaf456tqhyKOGvCGbWiY0iu g==;
X-CSE-ConnectionGUID: hAWwesguSiWhlFvswNOjcg==
X-CSE-MsgGUID: E2AYwyJaQNqRDcRMxHVTlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="74737814"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="74737814"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:12:47 -0700
X-CSE-ConnectionGUID: ece4+BU6SO+NyoRsvBXccA==
X-CSE-MsgGUID: yGrbBHiTSiatheetOfAxAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="166223083"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:12:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 02:12:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 02:12:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.45)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 11 Aug 2025 02:12:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SuF9q4h6pEee+re9VtEdiyvThQ0uJ/LZ8CPhQjxiIEoWECT80OrecvcT2ZJ5rFYhDFQApZ1QYG8vLL0oJ8ibc/OqsO1GB2//ons0/OyUuKU656PkCqhsfhDDNAOCejg1Nq4PuYtnCYo3cCQo7tASxE/bWgqh0rNKX/YEWGnfooEycQZIPEfsHlemO6/QVQfp8zR2mXHqQe4p1Ekpsrg2lKsNV44QjYUmUewJmf9LDRHYzGLrhJWQ+nNB5rqmT4wuMXGG7qD9fBDgmNWX1gPw48DyOEF0HY0BfxK3IrcXRbvQnH5skyf+Gqta68vDMhuQJ+LdNu4er7hnj7McdMZ1gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jc9NCEn1ve6MPC3a1UzkTkdpTVK1lhWc4EyDpnU6QtQ=;
 b=efRWhiRjZ43vjfWnLGWnYfRJ027QGgJ1kIvfl4UguACta8IfmU2+7D1zmw7M6hR+79Fdd2Rsl0j3WODj755Lvr4QTHW7w0hbw/c60uyg9dyyO4HRHxPWxT/sppPS1HM7f9rMuSOBrnMqwNOSqBkA62ZXivjRBiR35TwB7ZOu0I/RJqzWpW3EynOeTGjJx33b6zgyURYcLgMwdV5YAXHVyN04dk4GHm9zgH0ReZT1yJWS8v+9KFZbVd7N1Ctpuz9PZaMh5cQXuND+xNzhQC2KPFlToy7CxI5TnX4Qdqd2iTGarQ0U+QjTlMz9qGpJWXphs9Ry1Yv2+yNTlU3eK82EeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 09:12:44 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9009.017; Mon, 11 Aug 2025
 09:12:43 +0000
Date: Mon, 11 Aug 2025 09:12:39 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v2 2/3] drm/i915/gt: Relocate Gen7 context-specific workarounds
Message-ID: <06cf152803ab0050e09c521ac2fc3637549860b3.1754902406.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <cover.1754902406.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1754902406.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: DU2PR04CA0241.eurprd04.prod.outlook.com
 (2603:10a6:10:28e::6) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: d6173f7d-eca5-4dab-b177-08ddd8b73ae4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S0Z5MWYzdkdyRURLNCtVMXFDSzNhSVRoNUVPNVIrNG8rN09paVhWNTUxbTFr?=
 =?utf-8?B?MFJ3WnlxR0dWY3RIaXNHUnY4VXdnTG9wbXRMWDdzYzMrTjlLQXhlS3lsSEJ5?=
 =?utf-8?B?RGp2bnpIdERSVk9ySzdkWXFzMkRtOUtWUVJHOHBhRlowQnJ5WEtmSkN2K0JY?=
 =?utf-8?B?QVRid29PR0VOMGZtaXhpOTRXYmJtRjFZelVtM01JNnZhRkFCaFJOcFVXNGxG?=
 =?utf-8?B?VUJjTjRxWDBFL3NBUTRFZWF4cEFjTFp1RmI4ZU9tcU5uYlVCUDBlaThFTC9D?=
 =?utf-8?B?UzNTLzlNZ3BKNmkwUnRqYzhkeEhheGx4Kzgzd0ZIQ0habDlGNnIvNVZmVXRu?=
 =?utf-8?B?ZUd5eFd4ZmlFQmVPODZ5dlRnS2YybWd0bEdwSUR6aGNqVmwvcm9OT3dBTTBk?=
 =?utf-8?B?eUVELzJ3eTc3cEZ2eWpPbWJTSWxLWDNuaUl2TVNaQ2pSU1JwVlE1NXZvdmFa?=
 =?utf-8?B?ckhIT0FCdFN6QktmV0NHYWFiMUFFWVVYSkNzY1NjbnB3OERaRFBZdjJpN3N0?=
 =?utf-8?B?amZzVndzTVlzTm5PMUlRbXEzd25MREtnWDlsS1ZtbC8wR1dzQ1ZTRnJGTDQz?=
 =?utf-8?B?M21LTThEejY0RWJxa2lKWFZFd3VjSksxNXo1Y3Y4T3RFdERYVTNnckxZOTZ0?=
 =?utf-8?B?SG95Lzd1SE96VHhFeGw4czQ5N0RhaTVTWjBhMUM5aERjdVRzTS9NUC9oaWY0?=
 =?utf-8?B?NUZESDg1Z0lJVHRwVlJ1aEhkcjA0NzM2NXBrN1pSS2VqbFlRbEJGT1UwSEFz?=
 =?utf-8?B?SENjdjlZSm15N0U3eWxtNUFWdS9HMFd0dVNaNXNyWm95K2ViZFVMNTFWbWI2?=
 =?utf-8?B?OUVkMVFXUlZhM3RudHBnNzN1MFNBNEF3eWE3RW9wTXpHN0FFd1VnYUU3VzJy?=
 =?utf-8?B?WnJUd1M3dWp3MnhhOHJPUTQ0QkdoWXYzSGFVQlJPWmJ0TVlwMDhuOWtmdEdr?=
 =?utf-8?B?ZHgzdVByaVVRaXc3blJ6dE5OV1hENGFGZk1OOW1TMEx3NVBTUzQ1S3ZjNjVk?=
 =?utf-8?B?dUUzMTZOd3pDK2tHNHZMMjFQektSV2o4NEpRZGFRMnVhbm5aS1RYRG5KYWFU?=
 =?utf-8?B?Zjl3b2o1bFpuWC8wRFN0TFZqY0ZRRzJMTCtlTW12Q1ZBY0MzT2pqdGdyelVw?=
 =?utf-8?B?cWE0SElGQkFrbW9nWTNRV0t6ZXcxZjB1SE1TaHExTWZJNlkrcjgrcWh0MzZH?=
 =?utf-8?B?WmRYNndSdlp6dlg0TG16cVhrekhCVmhjaHNUajUweTdOYkt2ZUh3M1VrckFF?=
 =?utf-8?B?WTVjeTJLR0ptQXFaZHJHYlcwelhjeW5IWnp2b1laQUp5TGlGUlBHSFN3Q2Ju?=
 =?utf-8?B?Sm95bEtVWE5XM1BsdVBHN1NtWkdEWkY0eWg1L3h6c2pxN3RXR2ZIVytpaitN?=
 =?utf-8?B?U09PV3Z0cTk4RkJ3VEF6elBtOWpRWDJUOGJ4bCtJM2I1QTFOb3RzY080RnRl?=
 =?utf-8?B?RWVmWnZHS3huZTZUSFRERFIya2ZSdGVJMlI5QXZ0S2VEekRvTlBMM1N2R2Fl?=
 =?utf-8?B?YWFUeWNRK0tNRS83NC93M0ZKa2w3aXBwK1JmdDBGdC9vdjNNR1FVeTBITzJK?=
 =?utf-8?B?UGNsdlUwaWZzNXEwWm9hVm5xWTdJbW5HSTBWTVRnbUUzdlowWUtva2E4WDJ2?=
 =?utf-8?B?VnV2ckxONUJucmF4TjRsbm9qMUx5dWF1YUt6SkRXdUg4YTE0Q3IvZGhVZ2M2?=
 =?utf-8?B?ZStNQ0tLMHQ3aVZvR1huMGQ3ajl1VXNpMk9tRFdKcm1EZGdWZjdDUW5jVjJR?=
 =?utf-8?B?YmVzVjRuakFqMlNtbnNRQUJKdzIwRnkzNUN2VDVoeE0va3liNThUYlREeW9l?=
 =?utf-8?B?YlIvcjExODNnSHVjbEorajNQcVhGRVlWNGNPMWVTVytwM1hkUHNWSmtYa1dX?=
 =?utf-8?B?bFhuQS9WRWZNaG5La3diVXVtaG9PUFN5V25FRkY2L2Fqdmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXZaRUl5aCtzSWY4Z3hrRm9XT1EybURiZSswNVVsUkpWT25UTW0yR0g5M3BK?=
 =?utf-8?B?emtwZno0Um5LTy8vWmVxTElXUHdVWmUwVnNaZnVMdlZ2NlphMC9YRWFFK0Zh?=
 =?utf-8?B?TjJRdG9MeWRqTzNERFJNL0xORXA1MDQ0ckRTVzkvTU5QWE5WZ3FPNDc5UU5q?=
 =?utf-8?B?aWpOeWM5SVFyTC9makF4MzR0d01IQ2RmK1lFVUlRbFpzWnZzR3dpZXhhbVpY?=
 =?utf-8?B?MjhOWFBVY1llQkJTWXBDMDVNSTlGeGJ5OGV1eG1sbFVjZlVJZkZUWG53OW8v?=
 =?utf-8?B?NENyVjRGRTh4WHQyTTFxSkdtV1BBOWIzR3ZEZEFjTWwxZkNnRjhKSlJ1REc4?=
 =?utf-8?B?YlFqdldrNThoTGcveHd1UG5uVW1HcFRFbVZPSlJRV0J6VFV0V0RCNERsUkR2?=
 =?utf-8?B?NFpuTUVYMS9nOFJEWHZ6NGhCRytYcTducG91bWV4ckpSRGJBZHlzRkFYOUFM?=
 =?utf-8?B?djNOUTRSMWxlVU1URWxWaCtUaUphK1FORlZ3d3VWQ0k3amt5MVVqL0lGMUpp?=
 =?utf-8?B?cmpFZk1hY0FCN2xQY09JcVUvQ3dIcnY1SDByRHFHNkMzMVltSmFKTnhmZU91?=
 =?utf-8?B?NHRkNUo5NzZFdWZiTE9sRFdPaGJrTXpydzkwZWNkaFNsZWNPdFhMemRxdTVl?=
 =?utf-8?B?MzM3cGZWakUxQXB4aXRjQ3Y2YVdSSUdTS0M1ZDdKOE5ucWU2alRWRDJ1MVBu?=
 =?utf-8?B?d3I4TFFRWWtVcndINzQvVEV6WFAreHFmZW1NSCtITi9BcUszNjlMNHVaK2JL?=
 =?utf-8?B?b3JqcGtvN1dwdXpidlFwYVVTVndlemFhVzcxNmpjLzVLVmltVExpRGxNRU1Y?=
 =?utf-8?B?bmxVZEU0MXVCMjRZWkRKZnV5TFpSaXdvSHI4dnh5aFVtMkVpSVRHbEJBZXFZ?=
 =?utf-8?B?bm16M01obkdGTUVqd1QxMEVtTVFYTXFQYUVWQkpOYy9TNkU4b1V4Q3U4QVRC?=
 =?utf-8?B?Wmx4YVpqaGhrby9WZW9TdDFST1VJamFpejRlWEVHTFB6KzBueWYrUGd1dmw2?=
 =?utf-8?B?WG5jTlN6ZXNTVVJZNURKMnhWWGdxNmtIenArSVZWdXdMbzRlc01rMk1TU2d5?=
 =?utf-8?B?WkNuZFNlcUZZVVdFNkQ2T2xjWEtCTTB3WkI0MzdseW80bGllaURlekQyVmtF?=
 =?utf-8?B?Z2hzM0NGTnpnN3dyODBzZUMwSzBXUkdFWkFNSFk5Nm5QSWZmL0h3ZXRJdkZS?=
 =?utf-8?B?TUZJUUZqMGE3OXBCY1dMSzRQcWd5U0o3dDIzWjQ0TThBcXVFSlJwUjQxa3h4?=
 =?utf-8?B?cUpYUG1rUHBCNDdod3h0WTNWbXNzQ2h2RzF4UEdWN1B4NmtscXZwa2c0akdM?=
 =?utf-8?B?MVNOc1k2ZUlkVmp2UVkzTGZucVg0eXRwMGNwSERqMEk0dTBEM1MrMVhSZllM?=
 =?utf-8?B?Q3Vqb3JsdGNORlZGbEJYeEdsNU5FUWl5NnRJWnFwdEljaUo3bnN1b1U2a01a?=
 =?utf-8?B?c3ZwU3RDSjZ6NHBiMDRPSGRKdTFLMmRnRUlvSzhiTzk0OGk4RkZ2Z3VyWXNX?=
 =?utf-8?B?cVplM0t1KzRUK3VkVFJreHl2bjkzeXRqWURrY3V5MytieFhKbm9NZmhQb0E5?=
 =?utf-8?B?cWY3blV5eHhKZ1FJMXJjU2U3cks1Y2VhOEM2TDJQY2t2V1JMREVIZnFNUFhj?=
 =?utf-8?B?akVVWkpPUVVHRWlIZGZVKzNZRDZ0Uld0eVdJQkVpK01iNGEyWXR2ZzNJa1FI?=
 =?utf-8?B?R2prSzNUZXlEWXp0d2FlWWZIZ3pIMDZUYWpkWVc1UFFyZzd0K0gyckd0WHhW?=
 =?utf-8?B?d3lWeUt1VGwrQTg1NzQyQzVTSWI0T3J1cGZ4QWhnUFBKdC9udm1kSWxhS3Nz?=
 =?utf-8?B?aDBPemFJcEw3ckU2Nno0R2hXeGg1eC8zT29IMGhwdEU3RExGZmFQWUdaMkIz?=
 =?utf-8?B?UnQyRWljUFZKVnBtai9GV0xPT2tBTUFaS2RIMGFRdkdpKytTY1R1YXFJOXRr?=
 =?utf-8?B?VWdOYUNXclM0ZnpSSm9zR1RDNVVCOWF5SlhyNjRjN0RpcGNXczA5VTJ2WUpP?=
 =?utf-8?B?dkpYRDAwZXdHbGJXNmNnT2VBSEJ0d1lRNzNxWmhMby9kOW1RSkF5YWZHN3Nw?=
 =?utf-8?B?dFBJeVFDNEU5N29PMzgzSWx4bkp5emVGaTFMUW1oaFlvWUZXWEk3S3hBSWx2?=
 =?utf-8?B?OEpaQUpHU0Y2YU5NUFI2NzZoZFBlNS8xYWxzRU9Za2VsbGxRUkRwV1Rub21W?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6173f7d-eca5-4dab-b177-08ddd8b73ae4
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 09:12:43.7999 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s3SQSzKSNCCIgJWq7+RDns79088A5r4YzGCKE85FYa/nzEHOXU6TrTJiPH9zcxzZ0L22CeAtWcdHgcDdDlM+fUKf6PLqXvNfJCPE1VbEMOE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
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

CACHE_MODE_1 and CACHE_MODE_0 register should be saved and restored
as part of the context, not during engine reset. Move the related
workarounds (RC_OP_FLUSH_ENABLE, PIXEL_SUBSPAN_COLLECT_OPT_DISABLE)
from rcs_engine_wa_init() to gen7_ctx_workarounds_init() for
Gen7 platforms. This ensures the WA is applied during context
initialisation.

BSPEC: 11322, 11323

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v1 -> v2:
	- clarify commit message
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 23 ++++++++++-----------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5a95f06900b5..18f1ee529de9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -343,6 +343,17 @@ static void gen7_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
 	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
+	/* WaDisable_RenderCache_OperationalFlush:ivb,vlv,hsw */
+	wa_masked_dis(wal, CACHE_MODE_0_GEN7, RC_OP_FLUSH_ENABLE);
+
+	/*
+	 * BSpec says this must be set, even though
+	 * WaDisable4x2SubspanOptimization:ivb,hsw
+	 * WaDisable4x2SubspanOptimization isn't listed for VLV.
+	 */
+	wa_masked_en(wal,
+		     CACHE_MODE_1,
+		     PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
 }
 
 static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -2567,18 +2578,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     RING_MODE_GEN7(RENDER_RING_BASE),
 			     GFX_TLB_INVALIDATE_EXPLICIT | GFX_REPLAY_MODE);
 
-		/* WaDisable_RenderCache_OperationalFlush:ivb,vlv,hsw */
-		wa_masked_dis(wal, CACHE_MODE_0_GEN7, RC_OP_FLUSH_ENABLE);
-
-		/*
-		 * BSpec says this must be set, even though
-		 * WaDisable4x2SubspanOptimization:ivb,hsw
-		 * WaDisable4x2SubspanOptimization isn't listed for VLV.
-		 */
-		wa_masked_en(wal,
-			     CACHE_MODE_1,
-			     PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
-
 		/*
 		 * BSpec recommends 8x4 when MSAA is used,
 		 * however in practice 16x4 seems fastest.
-- 
2.34.1


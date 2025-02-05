Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD10CA28EEA
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 15:19:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EED610E216;
	Wed,  5 Feb 2025 14:19:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k2FzzZVk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20C7210E0AC;
 Wed,  5 Feb 2025 14:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738765147; x=1770301147;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=djOBiXiX7XIoK6IqlVEq8n6V0TmWpFI8gqQ6fkMH96g=;
 b=k2FzzZVkiFCVUSTRJyf+I1S8ERwH1xvZslUfE/hwERKG2lYh9KOKqdjD
 Pmvj5cV0RySs0kvI3xGpnAf0MIORuqQ0Zq5ZGg0QmmlBL/k/WnvQfXYa4
 sn9DOmk0QVYOJ6AS4OJwcXrTCNQUl09RTULrWMQ/wZiYqv5LnCktLbYds
 NlOQHIx5R9V+CGnugCquuhaS9odOUY9Yp1nuw9tZ3hQoACSjFKLyH+7pO
 KH6jHehozSzZDnxnIKeaEvpqr0yuC9LKyFbX+Z03Pyx3sy/SLwqI/17Sm
 G4I+mqUPkkaRbKWNLqfEpxpDOVfdOZ0zlzj43yHI4M7kEWhzqtZz/qQYH g==;
X-CSE-ConnectionGUID: g+6HesqOSKGo2ZwDnrD1Gw==
X-CSE-MsgGUID: WNFpBS4STWughWwvzHAtAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39358416"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39358416"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 06:19:06 -0800
X-CSE-ConnectionGUID: NIqfAnSdSkaHvbuEq1rXEQ==
X-CSE-MsgGUID: 3YrKxT3jSau37Alvc0Xzkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="111488583"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 06:19:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 06:19:05 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 06:19:05 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 06:19:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RssOvtwYdkqwk/RH1hsda84ySknSq5rl57J98VDK6xAKVUDryye7i9F3KdaWsxhqNUcHvkg5eiLBpgOCsC5tKoF0jaJuYJHh17D+04f0g01mvFukN/ZFR4C/b5k/PggFN46fctC3N023kwqMUL99iiA4ELiDnHZR1byRWxcpZl36I5fFm+pwZ3uUi6+Wo0O+zzymm4tyUvta4GTpRnN26tCwcBYLbe/nKP3KgHWQ4xqt9HdmX2moN+IfwlBXNzIi4nDUCJ7mfHbHqtlav78vhcwu+IoWWrkTRBw/DlhD6Pxku1yipjpXe49mU+GOI8MObZXS+SxPWIWaq6miD+OVaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N3u6J0J1sff8YNl1eqXTCBnIQurqsu2Jv7Dl1lEb9rY=;
 b=hRWmV9zgfKuY4xSbPqHdOH88ihqsP93Cx7zNkcIufpV15goOsSojW/J6R1xcBgsRnxY9bqUf4zah7B8GBcJNmciU/LWfSlFFmw8Dt2ZUBwfnT3Xki2N0ACEGAh46uYiWZ6miZvhDS7TZit4d9yNrTRjgzpIYcF7Ltf+fmHshJxz1L6ucdNuCglDFVxH9v3G9hQCPBP51D1DJXVx73nNFGQi6I/eSB8prRvm8B/Y3Qty6/wOB0rMT/R0Q/Dk5xml6bKjVxsoBomnq2XIKmr20JJuhzJwbJz7RKfbvG7EuJxcTLWWJPu/DhupzOUwoOaLL7TTni9KWEP/Ud2za2tUS6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BL1PR11MB5272.namprd11.prod.outlook.com (2603:10b6:208:30a::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.12; Wed, 5 Feb
 2025 14:19:01 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Wed, 5 Feb 2025
 14:19:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250124191250.56833-1-gustavo.sousa@intel.com>
References: <20250124191250.56833-1-gustavo.sousa@intel.com>
Subject: Re: [PATCH] drm/i915/dmc_wl: Do not check for DMC payload
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Krzysztof Karas <krzysztof.karas@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Date: Wed, 5 Feb 2025 11:18:56 -0300
Message-ID: <173876513622.111435.12477179871767663924@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0309.namprd04.prod.outlook.com
 (2603:10b6:303:82::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BL1PR11MB5272:EE_
X-MS-Office365-Filtering-Correlation-Id: bc1a0790-4c71-4f30-beb3-08dd45f00975
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NGh1U2Frakt6MjRHeDQ4c05sRUJGOWczRnR4MWhpYkpqVW9ZMUVjNFhkbHdK?=
 =?utf-8?B?NG9PZ1drUjIzbGFzNVVOV1NiTC9TMzBCQ016eGRobjhZMEZQcExWb25VZ1lX?=
 =?utf-8?B?Nm04WjVXQzluL1BFcVRSTXdEOXN5V0p4V0xKSmZ5NXcrZGh1dmVMUWhHK1VQ?=
 =?utf-8?B?THM0VkhqbFQrUDZFaTVLUS9DL0l3MkIrNGNDRXhzTkdseWJQSFhGbGYzM1da?=
 =?utf-8?B?L0FDK2Y1VFlIL0hZUE5FUEJScUFwNSs2VWFCSVMrVW1tRDgvaC9SOFpnN0pM?=
 =?utf-8?B?b282UEJYRjhQMDNPWTdpV1ZnaEM3SzBYbEN5WVNmUHdTbHQxMm8wTUlzZmpJ?=
 =?utf-8?B?OGZQNkMvUXdpWTVvRVNOSHRBeUlSSGNGSlFRKytZMktQWmc3dkNhNFNrOUlz?=
 =?utf-8?B?TkxabTVQeERWdWxrcmVJZ3p5TFJCdHRsZ3ZFVkc2U3BUN0NRYUNHRlRrdVhj?=
 =?utf-8?B?TkF0ZjlJQ05rWXpsTzNrdjRPaDhTb1hIV1htRkFVZmcxb2Jwa1IzVkR1MmNl?=
 =?utf-8?B?OWNmUXRRMUZlQTZZUmszdERVdkp0aTA3MU52ZnVPb25nNHg2WXNSNlNDUFVp?=
 =?utf-8?B?UHh5eUN0UFNMQzRLUFVWSEZ6eUljTGhaclV5SExyQmRjSzZSRmd3Sm1qT2Vu?=
 =?utf-8?B?bkJGeDIyU0Z2WXEvc0I4QUZxcHJpTTUzWDBLOFZpcFRIZndtUThaa0pGNFJh?=
 =?utf-8?B?UDNhYUh5b1piRW1VRC9GOFo2OE10R2ljMmgySjlRdm5OQ3lJbkR5bTQ2SllJ?=
 =?utf-8?B?T1dlSWZEdWpzV3NKdTdWdUF2R3pwUVpnRXBRd2NRSU14SWxZSTNiRXVGeTdz?=
 =?utf-8?B?N0Y0RTRwcjFoaWxjQ2xROUVncmdPKzN1WHZxUUtrZ0hPYWRDcDk4SjFaRVU0?=
 =?utf-8?B?NWRHRlNJWjNrVUJmVTV6cit4TXdRbnhBK0tITHpaMXlqVUdDKzUzSkVUWXB2?=
 =?utf-8?B?N0kzSXZTVkFmY2grV3Azb2NZdVhsRWtkbnVsOGY4MmJ5eGVGdEF5aEF4SUxq?=
 =?utf-8?B?QkpvanRMdDVxWXlybXhOTE9FTUZ2ajI1T1I1Q3Awdlo1SysvWkVNY05IMmZ4?=
 =?utf-8?B?OFpNYlg4UCtML0JXSlRYajlSSFp1TU1sekZRRzFLem9nZWErNmNkRVF2bUkw?=
 =?utf-8?B?N0V2WmtZYmR2LzUrWUlWTFcwb0c3TStycUpvUnRHMTgvTWF3b202WjVSQW9n?=
 =?utf-8?B?OEN4VnhVeG5uMkRYUU5zd0dtMEdnL3JtVUhOUElJbDF6MjYrbmdyYVhsOU5a?=
 =?utf-8?B?SFFSTW1zbWYzcEJXMnpUMThTcXFnVmlnWFlGbzJMZHpidk82V2psZlYxNVVo?=
 =?utf-8?B?TmVkTnVtYmVBVko2Sk9EY1poK2RtUHRzS1UzVVdlV1JzODFLODZpTThvMHRn?=
 =?utf-8?B?MHVRUmY4U0dESkdwTmY3MVlPc3ZZa01qVnM0SWFnN3Fwd3FvKzZjMWs1VzBn?=
 =?utf-8?B?M3hjYTA4MjVvYjVvdWNHMEhHTHRSMFUySnUwbzIvTWNrLzI0b2pzdkhNck5O?=
 =?utf-8?B?c21yWE04SFFid0lGaGxOL0x5YjIrSDFYcTdHam02cFR3VlRHdWpqbzg0dWNC?=
 =?utf-8?B?Uml2VlhMMU9XSVQwVDRHQ3RLYlRHeE13eFhwV3NTR2I1OFE3aXQ3bTl3Y0Vt?=
 =?utf-8?B?azhVVFJqK3pBazdyRFdFSVgyKzFJMzRkYTJCU3g0QUU4RGpDRzNlSW1ISC9O?=
 =?utf-8?B?S1Jyd0lzTnBSRHVsbVpSWGlyaDJHUWEyNG9XamtkcDdVOTNSZ3FmZS9jUTBU?=
 =?utf-8?B?cGlxTFlXcTZUWGNSRmhUam14blk1c0psRVJHT0orY3BtNHJIQkR5RStOWEJZ?=
 =?utf-8?B?UHlwVmcwSndLT1dSMkwrRjF4ODVlOEtKUEhicW83eHJmcXRDVDI4QTRrY0gw?=
 =?utf-8?Q?YGb/FCdfXVfZQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHdsbzJPcHRLbW9PRE1SbXREQXQvQ29LSDVGSWR3Q0RuN3RkNnBBQi9VQmpz?=
 =?utf-8?B?bThSNmsxeUV6REd6RWpXclY5cnFaaFdmTzRUMG4xR01oWG9QalZQM3FZcEh6?=
 =?utf-8?B?dVg4eEdNTExlMWs2SU5VWHJ0cm51L2ZuaVpxNUZnQmYxRjk2cVJoZi9TVjNS?=
 =?utf-8?B?aTRNYUJBS2FtQ2EvRkJzOXpzaEMwTEk3Uk9iZEY5R00wWGdFNURmYlFUUC9q?=
 =?utf-8?B?Y1BJVkVPQ2FkNjJaUUVyOUd1cW0ycFUwMjkwcXZpbUpxOERHYVJ6THNMeHZX?=
 =?utf-8?B?RVVjd3BZUjNWTE9ITGw4V1dLb0JFeGV5RjZKR3A3dmU5R2wyS0xFdzNoQ1Iw?=
 =?utf-8?B?R0JzKzlDR2xYTmtNWkZLdnFQRW5RN0lDeUhqVkZmMUZUUXZzcWxTZjRJSHBo?=
 =?utf-8?B?SUdmS2hKVm5wUTFiWkhEc1hUaHlQRTdhT1RiSE1SSmRWRUk2a052NnkzQmxH?=
 =?utf-8?B?NTFSeWpGL3lLNmlBbEJwVVh5OHQwVExYZUpXSUpkRXlsM0JZZUdRdGNUZlJE?=
 =?utf-8?B?YmtZZ2licEtsd3RZWndFcXF0RnVKYmRlT1dCU3BCVnBZWGZvK2Y5d3dDOXNa?=
 =?utf-8?B?UWJqbjZSZGIwVndZL1R4QTNjOU5YQ2MwZkFzYmJMUnVtcnhMM0d2WU5IRUMz?=
 =?utf-8?B?RWZmOXFaNFg0VVF2Nzd5N0FFaDN6Qy8vOG5hU3AyUmkzZHhpb2FyQXE1ZE1L?=
 =?utf-8?B?bGY4Q3VHWkM3bnk1V0JRYzJHMFFsR0MyemozaHgrZndEUmxmYVcrSmNZdWFR?=
 =?utf-8?B?cm16elFOUzNHeDZ6Wm9HY2hxNitBMlM0MmM2L3V2VHRJbHhTRnE4Y0VIdElC?=
 =?utf-8?B?dEY4R2lURHNnVWdkQzFwdlFCWmhkNXd2U2k2OThvcW1ZbEtCVFZCMEx0S2lM?=
 =?utf-8?B?T2Y2RUNvZGI0cW45b24zSllZYWdubFpJOEhXNXliWTY3UWFmMTVYYkxmSkI0?=
 =?utf-8?B?eTYzTlV0OStzS0FBa1plZThuanl1SStFYm0zdDBROE50YUdPYUhBNHdzSlN4?=
 =?utf-8?B?WGYzNWZ0dnFTWXRnTTNIK01ZUW5nOTJwOEQrZGpLNndZZFBwbHBQQzl5MGRC?=
 =?utf-8?B?UG5pR09rdTBDWXFETWhwWjlxb2hucDA1WVBnbFhMZjh6RjNLVHFqMFpiWFB6?=
 =?utf-8?B?d0pUMTNrU1ZFQ2FtbjNlK1BRckpqNTI5S0ZqaHhjZzd6WHY4R3c1OVpFNjRh?=
 =?utf-8?B?L2l5dDA2YzE3VlpPNk9uMTdFbUpkUkNsa2V1WTRPY01NNkdUVG0rcy96STli?=
 =?utf-8?B?OEF4MDhkK3RJVm1QMElmZm92OVQwaE9MOGNzNzFzc0JiZUxXMVhBSEt3Tzkw?=
 =?utf-8?B?bkFzQWJXeHE1dGlwT3VxazRsZlhJd1RRM09hYnE2K2dtVjVSbUJBOUN5bWdS?=
 =?utf-8?B?UFdmK0FsdXNNNXAxMFJwYSt5ajRoK2xPd3BwaDRVNXh1dHY3d0xkRGh0NEpX?=
 =?utf-8?B?Q0tVUmNubFB0VWFuSEZjUEd0QjE2NWxCdWVrZlVtRUFWRkVmWjJCRVVlYjR5?=
 =?utf-8?B?TXBKNUt5a0xXRlFCdzR3S3BETzg2bERhSUREdVJ3aWUxRTdHVjVZRmFKdFpn?=
 =?utf-8?B?aFlKWlEzWS9HOGNDNkdHck9lejNVem9HNzEycno0YTZ3NXk0YkFKaU93ZitD?=
 =?utf-8?B?LzR4WjFWbTA2ZCtlYnpRSCtHWUR4SU5nK1VIQStSL1B4MGJBRXJLUTRFb1E3?=
 =?utf-8?B?SHI4Vk8yVjc3NlJqZW9Hd3k4WndESWJhQ1RqNElnMVgwM01Pbm5yOXBDWXpq?=
 =?utf-8?B?NUdaa0x0M2orOHVJYW9RWkxxdTc0ZElZVmlVOHNaQXR4anBlRlpqU0MreW5X?=
 =?utf-8?B?empQcENGNm80QXFLNmVmcGNha0hFTkFxWVRUYk9ZOTMrVTBEcFUzZlZFNGhY?=
 =?utf-8?B?QXZKYmIrS3RZbTBZM3Y1TnRGSFNnT20yWjUxeXNGMTdwNm5sYjhQQzdkS3l1?=
 =?utf-8?B?cGphM2l5TStYZDBUUitBRWlneTV4RVdTdUlYaVQyRzJKQktOTzR1NnBFVjND?=
 =?utf-8?B?Si9KL3VDQ05hVjVLZ0NRTEtzeC9EVXBGNXZwa0RiWDlLYWZDbTl1MXl6dHIy?=
 =?utf-8?B?cnR0bnVTNWcxdlZtbEN4d1pvUmJ2UjlxY0hYbGdXWmVGbUZUMFRJQk9henp0?=
 =?utf-8?B?bG16dmZNZlJyem94VHpvRkNlbXNjdnd5WWg5VjdRUHgvTWlCQlMweWlZQjZa?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1a0790-4c71-4f30-beb3-08dd45f00975
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 14:19:01.2319 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C+YX2XQnujRzYFaetDD7zXOCTkw/5fZrvdaoy3mC3rA9PJVGa0Dxf3hxv9V7JYDeG8dTWB09LRTiqks4tmaVCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5272
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

Quoting Gustavo Sousa (2025-01-24 16:12:34-03:00)
>Enabling and disabling of DMC wakelock is already coupled with enabling
>and disabling of dynamic DC states, which already depend on the DMC
>being properly loaded. As such, we do not need to check if we already
>have a DMC payload parsed in __intel_dmc_wl_supported().
>
>Furthermore, the presence of such a check causes inconsistencies in the
>refcount if the following sequence of events happen:
>
>  1. A call to one of the register accessors from intel_de.h is done
>     before the DMC payload is parsed. That causes intel_dmc_wl_get() to
>     be called. Suppose the register offset qualifies as needing the
>     wakelock.
>
>     In normal circumstances, the refcount would be incremented, but,
>     because __intel_dmc_wl_supported() returns false, the refcount is
>     untouched.
>
>  2. In a separate worker thread, the DMC firmware is parsed. Parsing of
>     the DMC payload is finished before the corresponding
>     intel_dmc_wl_put() from (1) is called.
>
>  3. When in the context of (1), intel_dmc_wl_put() gets called, now we
>     have __intel_dmc_wl_supported() returning true and we hit the
>     warning, because the code doesn't expect a zero refcount.
>
>Let's remove that check, since it is unnecessary and causes the
>inconsistency illustrated above.
>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Pushed to drm-intel-next. Thank you all for the reviews/feedback!

--
Gustavo Sousa

>---
> drivers/gpu/drm/i915/display/intel_dmc_wl.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm=
/i915/display/intel_dmc_wl.c
>index 43884740f8ea..9be6ad11ff5d 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>@@ -10,7 +10,6 @@
> #include "i915_drv.h"
> #include "i915_reg.h"
> #include "intel_de.h"
>-#include "intel_dmc.h"
> #include "intel_dmc_regs.h"
> #include "intel_dmc_wl.h"
>=20
>@@ -282,7 +281,7 @@ static bool intel_dmc_wl_check_range(struct intel_disp=
lay *display,
>=20
> static bool __intel_dmc_wl_supported(struct intel_display *display)
> {
>-        return display->params.enable_dmc_wl && intel_dmc_has_payload(dis=
play);
>+        return display->params.enable_dmc_wl;
> }
>=20
> static void intel_dmc_wl_sanitize_param(struct intel_display *display)
>--=20
>2.48.1
>

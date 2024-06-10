Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CC79019B1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 06:19:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0355B10E09A;
	Mon, 10 Jun 2024 04:19:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IEYyc2xc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDCD910E09A
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 04:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717993162; x=1749529162;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ckbUhwEhlV+mgyl+qVJkWaRiXCWZ7n4DBi8iSRM5ENM=;
 b=IEYyc2xczC+7c+4R6HzzlEa2lFesaRd4JFrpe3g5EWvC+7ANoOLuLOHR
 Qa0P/hl298kOLoOtigTcplOZjEtNsXazQT+k9HhS8tY7zA6Yp6/YpViF7
 QQ2HDbxG0zQNQU27MEbG6Kx4fp4klZVBCEwN/Qm+8BnmuN/efZlYaTgEO
 DfhNi78fWY2GQ9ZkHoV/nZmcG6TSeVYFMIqrl4b48pQgfyp4SOxocTuzz
 YN5zTiD7lgtjUJGV7niXgI+vd5OUVLEif8C9y8InoIn9WiTzYD4GgXuKM
 3CysvxnHMB8bykKUyOzic8xPrXDlqghKLdETycPdUBE44JmY+6WX/3ZYY w==;
X-CSE-ConnectionGUID: Pi9zB7ucRai+U6hKqy5Q8Q==
X-CSE-MsgGUID: 3Fju5PbxTt2H9lMDQfTUhA==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="11989857"
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="11989857"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2024 21:19:21 -0700
X-CSE-ConnectionGUID: ySIsxw/lSluTNQHPy2SPzw==
X-CSE-MsgGUID: wHKip8LaRFaTPDmHo9RHHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="39480388"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jun 2024 21:19:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 9 Jun 2024 21:19:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 9 Jun 2024 21:19:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 9 Jun 2024 21:19:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZMxhSBdkTfyMtxKmFpS076WhLJA9m/6E1SGcDt9vj1XrAYbYQFWgozqiBD+8MVe7V3yZHtQDE+ay21R5FtXMaErsLXt8DANOpFgCToZwKydpRGXlVoBTUZUd1H5rcyZSgjAlj/+Kjie3hxTXPIbR0HslbEAcf7hJK8tOvgUK4n87s3Yg0Y6zoXulBwTffCeCqWnN6UuJCLxEJHa7rH14zZ6PpDSS/HsFl+6agKeNyR4JHNzei25ISP5nS6KxOTegRoEiAKWXIUliQL0ptJmv4WnwNhv5Fz69pNIihlWwDT68muoxrhO1xlPhStSvNv8h2766SzF3mPhP1FCMLOEvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FSwoSaWvPpjQu1yFmDGXXMOBsXq0xTCidE/cggx1ivs=;
 b=DIqIk7weEVzMdxC27DeYo+7HxiS9vIppMxalELXJ3I5Wo/RYEcVcw/xcEJ4ebw8vCzUdRFKC4j2c70IgsVJRPzsee/Rp2WpoFP1evvfhuWmJyWeiw8cLl1Sa+uwQYbG+ZuqliIBu0BwyH+GOwcmEiXUjpwSmC4F83fZzw08m6FBgMcE27FevTZ94ESy/qqhbv64heQIsnNzGau6oGiT2QtsWNBYMYqwbxCbb6xCNa2eQG67KatgDHhDzyQawsV8ogTsJfxtdf4xe1gsq2lMB+mlgTnDJ2Pi9CyHCAWbqykuo6RVhVWQzSrNlk2V7gu3RmMyz6V+uK6JZcK70MSDhLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW6PR11MB8412.namprd11.prod.outlook.com (2603:10b6:303:23a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 04:19:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 04:19:16 +0000
Message-ID: <5d18fd7e-492e-4ece-bee2-1643556514ca@intel.com>
Date: Mon, 10 Jun 2024 09:49:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 1/9] gpu/drm/i915: Update indentation for VRR
 registers and bits
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240610024825.823096-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240610024825.823096-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0168.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW6PR11MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e8dff16-9f30-4b86-18b4-08dc89047deb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZmttWCtONWUvOWxvVlkycHJLeWpIcDhYUUwzSHRmdkVVZnlrRG9SSm5sOEpH?=
 =?utf-8?B?THpSZFpjbmZoQlFrLzRsdXlKZXFZd0I3L3RrcjNFcHNxREdVR1lUbFNiVnlv?=
 =?utf-8?B?VGNHUkwzcWEyNnJJY0srUi9SV3haWlhxS0hIbUVmNVVrYVA1bXlyWFIwY0tG?=
 =?utf-8?B?S3ZGVGVPeHJGMGJ5Yi9JOHBNeFpDdjlKcUhkRkNldTkreUl3M0N3SndZRVBv?=
 =?utf-8?B?dzZob050T1hray9ucDltZnhrVVprMGhKMHRLRzhUbFo4THZaVk93SXJ3U1Zz?=
 =?utf-8?B?Z3pHUUViVkNpSGxxb3kxRlF4Z3JRbE45TGxSRWJNRENPQlRmTmFpbHdxSysr?=
 =?utf-8?B?UHNBVjBPa2ZRazhYNWlENmVtdVhZU0ordTIrckVWZWFaMk1HVERlSnZzbmZJ?=
 =?utf-8?B?MERyV0dscDFRaVp5Z2ZlNHNGQ0w1K3pxVGRhNU8yRFZjYUZRK0NJcjZGby9U?=
 =?utf-8?B?a290eXdmRkYzMHk1aVh1dUlKdDA3UTYxSS9NRWlVbnh0RHdjYSsxMStlYngv?=
 =?utf-8?B?bmNScG9RcWNIQk55enVWNXJnYUFZbVFVa3ozVUYzZDVxRmd5elM4Rk90TVRh?=
 =?utf-8?B?KzFBRmdiaTJXN3ZqZDFscHoxSUFkd2pucjFPWU01WjJFTUREQTlEOWRNc1Ex?=
 =?utf-8?B?Y1Nqb3MvbW5TZmNvTW90WGdjOXJJRmdCVUdiekMwMzJ1dDVHUTlEYnBGOWQx?=
 =?utf-8?B?QlBZOWVVUTg4Z1VTeVY0aGJiRllUY0xLUkZpTVBabDhVRkVNSDlwazZXU0ZF?=
 =?utf-8?B?Rmh1TXVOSEF6NktoUEdzNm9GNzBQbU9IaG5aeWQyZzVaRnlpL0tRWE82eEdR?=
 =?utf-8?B?bFV0SEVrbUNuYWUvK2ZFb1pWWGNWSWpVM3Urd044QnFCZDVXZWEyNnlYZDBM?=
 =?utf-8?B?YTV0NHhyaStZRlNvb3p0Zk1SVjdCMzRVVDZNb3Rsem1tZU5aRURBakZXYkd4?=
 =?utf-8?B?V1dhMzVrQ0tna0pGVGhLUGNsTVdWVU9nRWJYZDlpWWhqcFgwek5TY2pTU1hI?=
 =?utf-8?B?RThROE5Fd29xNEVwNzJYZGFaNGJkTm96R0ZrZ3FKb21MMEhHVE1kYzlrSmhn?=
 =?utf-8?B?T3FzNi9JR2szcjRCM04yZ2lPVTRCQklQcHNPVXhmdUdWRkQ2Tm1ZYlpMOGtK?=
 =?utf-8?B?NzU4UmlUQjlNVnEvVi82TURXbUNDWFJNNWcreTN3UzlkNWVKdHppRktybHFs?=
 =?utf-8?B?d3VGQUM3L1BkTmYvQTZCWE5jdXI1NXpxcmhJVXZlYnZpWXhXczYxbGxpZ0hv?=
 =?utf-8?B?ZUQxRXVoc1pWUHBmL2JmenZsbE1ZQkN1VEc1RUFIQUdlY3pFS3MwWFNQVkVC?=
 =?utf-8?B?Q1dGZWVUTytHQ3k0SWdPV2MwMWxHNmZDYW8zeDZCbHBtVW83bkZ2bjl6UjE1?=
 =?utf-8?B?WjZwcFlxMlVTNlBpeVR0NVM4VDRRZndWcko4dFU3SnljcERQQnk4dkloR1BM?=
 =?utf-8?B?c0dKUGhBOVBiSGVmTy9JUVFzTVM0bHBPa1h4eEpvcFl1SnEyTTBHQXlVLy93?=
 =?utf-8?B?OVFJc3hzTGRQN3dkeWtmOEhQKzI3NWU3MWxPcVAzdVF0UXJ0TWoxbVJpRG9B?=
 =?utf-8?B?RVZKU3g5V0dZUUpacnBYc1ZVcEE0M3k1aU9QR1FQU2VsQ0FsTGFyZG5EN3pO?=
 =?utf-8?B?MDYydU1NL0lHMVFobWdmWnlTdlhCTWgyNjZGTU5LWHlsdExIV0Q1SW5tcXVH?=
 =?utf-8?B?SmdCOUIyVjJMcHE3Tkd1SmM0d2RheXRNeHBCWGhuZmZ2Q09zRkJtY0U2ZEZx?=
 =?utf-8?Q?Koy+QdHBH/n2V5w1RkGxReXWOpP0D7hqodAQr1B?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0FYTG9nQTZrUnBZNTY4czFRTm9zNW5rSjNTeWJSTmx0dnFLUnZUUUFDODUx?=
 =?utf-8?B?d3NOSVhQcHQvRVJYQ2ttVHE1dWVmWHQxUDVsd1FmRi84T0JoVk11dllGSlF6?=
 =?utf-8?B?cUxXV0VIcGtaOVpPalNpbWIwaExwYmozT3VSeXJPWlByUkU0czhRRHV4WjIx?=
 =?utf-8?B?YSs0VmxUb05INVkvZDVEbFN4VmpBQWJLZGUwMEJtSENGSWZ5ZmZ1WGZwQmVT?=
 =?utf-8?B?MDNwb0NFWjEyTm9JTVBBYlQ5VzUrcDBwOXg5QzhQKzRBU1psTzZQTkV0VDdE?=
 =?utf-8?B?NVNvN0pFU2d6SDdEVjFDVlB0Q2R0VGlrZWppWEJCbUNNTWNDQ0UxVnVGbnVU?=
 =?utf-8?B?TCsrR2QrSVJQK0hMQkExeEJzYk5SK09DTmd1emtkZHl3M2R0TEJid1lLa215?=
 =?utf-8?B?dm5RMU9UMkQ0cDVnRUZ2QXZJcHM1dEZEZVFaQTdZNmdIdjliczh2M25xR2Ex?=
 =?utf-8?B?NjRRY0YrZnU5bWNWT1J3N2tuWjgvQzRvVHZBZ3diYUpEcmRKSXYzdkE5bTc3?=
 =?utf-8?B?UWxLalFGZFA3STU3RFM3UTVkSjVaVXM5RFJxYjZCNTRRc2pwZi90T2E0cTQr?=
 =?utf-8?B?SE9rOW4yeFFhWnAyRTFwU0F5UUN3SmdydXo4ZDEwL0RKTkxicXF0d0svd2RZ?=
 =?utf-8?B?SmFwV21yV1FLek01Y3hrYnhFRktUU2dKVTVwMlA1dm9MV1hjcWJKcjJCMTlq?=
 =?utf-8?B?cEhtbG13TFVOVmdqS2xmdmh5VnJ0em9lbm50UTVxTWJ5RTA1S2xOSklCaElB?=
 =?utf-8?B?UW8yU3dGVjNSaGhid3MySjNqUzI1WFk0bE8zN3dkOGFLZ0prV0llazE0eGFu?=
 =?utf-8?B?b2UwK0JLQURRWU91SFR1Q1VGSkdCdG9DbjBlcUFsbzJYYWw3OE5qc0JVTXM0?=
 =?utf-8?B?NUx2em1wK2xnREtENmxwbTlxd0FxVmZ3aDg0azFnQXpBNTdHUlZWT0FBczcr?=
 =?utf-8?B?MmgyVVIyTk1tQ2FBeUlZbGF1aGVvbnMzUi9ldlRlbDZndGZFaXVuU1JPUCt6?=
 =?utf-8?B?VGg3c3Z2Tk9tbHQrQjgzU3hwSEQrdUUxWXRrcUdYcmRVUWUrTlJvMDY5NGNI?=
 =?utf-8?B?UlBocVZCbjl1amF4dmlpWW9SL0NLNTkwVWVTOGsrbjNXdS82Y09hSWFGVlFO?=
 =?utf-8?B?TFpIcldyU1hwZFhwTUxObkx0MFNLMjZNNDNtTFJPbEhweGh3eXBnczJxS1VQ?=
 =?utf-8?B?MDc5Yk5hS29sdDVKUHlyMjM0Z0czZWM0Q2xMUnVnU0FiZDM3aGRnUUFvWERI?=
 =?utf-8?B?eGZNb1Y2aHlyTmxIMnU1SzgxeDh2bU4xWG1Uc2lldDhlK0J2Ni9MWi9KN1dR?=
 =?utf-8?B?Y3k5VTY0bjhXTG5JZStQVjM1UWpRYVQ4TGFjWnArRzhRSnJYV2RMbXMwbHJj?=
 =?utf-8?B?Y3EzbEttL0lZOENuSWc5Q05nelZyNENpK2NuYU1XeC9RWHRqaEQ3UTYvSGY1?=
 =?utf-8?B?SGpaTDI2dUsxRGJrL3I3OUtxd3owdFhrNFcxK1dNYXpqTU5xaFBaeUo4QU14?=
 =?utf-8?B?ZCtEZ3BNRTNBb1NNYnF0blBmU1N3eXh2OWUzY0ZOeUNRSDh6dkl4Y2VPMldV?=
 =?utf-8?B?bklTNUNGRExMdlFLa2FqZXdJYlluNFJ0UkpDNUkza3dVcHpFdVRxRnNEdFI3?=
 =?utf-8?B?bDFCbnRteitvNlV0ZmZSMHlxZE9ER0dpZ2pFVFlqNk0vc21WZDdoYmNxMGw2?=
 =?utf-8?B?T3JBTWRIb0IreWhkVDBmN1FqbG1vamF2N25iM0p1Y2JlR1J4SnVycG56NFpr?=
 =?utf-8?B?eWFQcUhWSjRkdi92dWZaNGRlSDdXd3FRR2JnNTcwcjZsYVNMT3plcGxhcnIv?=
 =?utf-8?B?cjl5Qm9aMGVqM2NaUWVhQncyMDhmMmJVN1M5b2tOWENRTmZaeTF4N2cwWWs3?=
 =?utf-8?B?cW1iY1lpQjdpWUNSMm9COGovOGFsZXBTQStzZ1JQMkl4Zjc0aGhZY3BnTnNa?=
 =?utf-8?B?YlIvbWRBdEppdFlnR25YVmVUTkJRekNLS2w1ZE9HU2tCeCt4M3VJZXJFWTVJ?=
 =?utf-8?B?SWdmUitHeXZDVnZDZ1FsQXFVRU84YzZHejJRY2poaHZsZVU2MXVXSFN0T3Q5?=
 =?utf-8?B?UXlxV3VpNlFrWklpektKWEZMaGlqcTI5SHpIRDc4dUFlOFR5MG9kUXZKMlNX?=
 =?utf-8?B?MEhvTmphZUdsSUM3RG9ERXZkRGZBaDJCVEhZazB1djRDRk9NOThITDhxdlYv?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e8dff16-9f30-4b86-18b4-08dc89047deb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2024 04:19:16.5997 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sTQd6Qq1J/NPgt7gp/EuL82fjDQR2FCEavfgiPPd0J+5HnVUcDn0I5nGh8aV+uBbmnlePjmAqjOQ2jnlzSO00+nD+AgEo51PtWQlKoi6nT0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8412
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


Subject: drm/i915 should suffice.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 6/10/2024 8:18 AM, Mitul Golani wrote:
> Update the indentation for the VRR register definition and
> its bits, and fix checkpatch issues to ensure smooth movement
> of registers and bits.
>
> --v2:
> - Keep XELPD_VRR_CTL_VRR_GUARDBAND(x) to avoid readability (Ankit).
> - Fix all indentation related VRR registers and bits instead of
> checkpatch one.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_reg.h | 174 ++++++++++++++++----------------
>   1 file changed, 87 insertions(+), 87 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7daf902772e4..a10591424338 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1148,104 +1148,104 @@
>   #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
>   
>   /* VRR registers */
> -#define _TRANS_VRR_CTL_A		0x60420
> -#define _TRANS_VRR_CTL_B		0x61420
> -#define _TRANS_VRR_CTL_C		0x62420
> -#define _TRANS_VRR_CTL_D		0x63420
> -#define TRANS_VRR_CTL(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
> -#define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
> -#define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
> -#define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> -#define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
> -#define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
> -#define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
> -#define	  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
> -#define	  XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
> -
> -#define _TRANS_VRR_VMAX_A		0x60424
> -#define _TRANS_VRR_VMAX_B		0x61424
> -#define _TRANS_VRR_VMAX_C		0x62424
> -#define _TRANS_VRR_VMAX_D		0x63424
> +#define _TRANS_VRR_CTL_A			0x60420
> +#define _TRANS_VRR_CTL_B			0x61420
> +#define _TRANS_VRR_CTL_C			0x62420
> +#define _TRANS_VRR_CTL_D			0x63420
> +#define TRANS_VRR_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
> +#define  VRR_CTL_VRR_ENABLE			REG_BIT(31)
> +#define  VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
> +#define  VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> +#define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
> +#define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
> +#define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
> +#define	 XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
> +#define	 XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
> +
> +#define _TRANS_VRR_VMAX_A			0x60424
> +#define _TRANS_VRR_VMAX_B			0x61424
> +#define _TRANS_VRR_VMAX_C			0x62424
> +#define _TRANS_VRR_VMAX_D			0x63424
>   #define TRANS_VRR_VMAX(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
> -#define   VRR_VMAX_MASK			REG_GENMASK(19, 0)
> +#define  VRR_VMAX_MASK				REG_GENMASK(19, 0)
>   
> -#define _TRANS_VRR_VMIN_A		0x60434
> -#define _TRANS_VRR_VMIN_B		0x61434
> -#define _TRANS_VRR_VMIN_C		0x62434
> -#define _TRANS_VRR_VMIN_D		0x63434
> +#define _TRANS_VRR_VMIN_A			0x60434
> +#define _TRANS_VRR_VMIN_B			0x61434
> +#define _TRANS_VRR_VMIN_C			0x62434
> +#define _TRANS_VRR_VMIN_D			0x63434
>   #define TRANS_VRR_VMIN(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
> -#define   VRR_VMIN_MASK			REG_GENMASK(15, 0)
> +#define  VRR_VMIN_MASK				REG_GENMASK(15, 0)
>   
> -#define _TRANS_VRR_VMAXSHIFT_A		0x60428
> -#define _TRANS_VRR_VMAXSHIFT_B		0x61428
> -#define _TRANS_VRR_VMAXSHIFT_C		0x62428
> -#define _TRANS_VRR_VMAXSHIFT_D		0x63428
> +#define _TRANS_VRR_VMAXSHIFT_A			0x60428
> +#define _TRANS_VRR_VMAXSHIFT_B			0x61428
> +#define _TRANS_VRR_VMAXSHIFT_C			0x62428
> +#define _TRANS_VRR_VMAXSHIFT_D			0x63428
>   #define TRANS_VRR_VMAXSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> -					_TRANS_VRR_VMAXSHIFT_A)
> -#define   VRR_VMAXSHIFT_DEC_MASK	REG_GENMASK(29, 16)
> -#define   VRR_VMAXSHIFT_DEC		REG_BIT(16)
> -#define   VRR_VMAXSHIFT_INC_MASK	REG_GENMASK(12, 0)
> -
> -#define _TRANS_VRR_STATUS_A		0x6042C
> -#define _TRANS_VRR_STATUS_B		0x6142C
> -#define _TRANS_VRR_STATUS_C		0x6242C
> -#define _TRANS_VRR_STATUS_D		0x6342C
> -#define TRANS_VRR_STATUS(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
> -#define   VRR_STATUS_VMAX_REACHED	REG_BIT(31)
> -#define   VRR_STATUS_NOFLIP_TILL_BNDR	REG_BIT(30)
> -#define   VRR_STATUS_FLIP_BEF_BNDR	REG_BIT(29)
> -#define   VRR_STATUS_NO_FLIP_FRAME	REG_BIT(28)
> -#define   VRR_STATUS_VRR_EN_LIVE	REG_BIT(27)
> -#define   VRR_STATUS_FLIPS_SERVICED	REG_BIT(26)
> -#define   VRR_STATUS_VBLANK_MASK	REG_GENMASK(22, 20)
> -#define   STATUS_FSM_IDLE		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
> -#define   STATUS_FSM_WAIT_TILL_FDB	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
> -#define   STATUS_FSM_WAIT_TILL_FS	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
> -#define   STATUS_FSM_WAIT_TILL_FLIP	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
> -#define   STATUS_FSM_PIPELINE_FILL	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
> -#define   STATUS_FSM_ACTIVE		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
> -#define   STATUS_FSM_LEGACY_VBLANK	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
> -
> -#define _TRANS_VRR_VTOTAL_PREV_A	0x60480
> -#define _TRANS_VRR_VTOTAL_PREV_B	0x61480
> -#define _TRANS_VRR_VTOTAL_PREV_C	0x62480
> -#define _TRANS_VRR_VTOTAL_PREV_D	0x63480
> +						_TRANS_VRR_VMAXSHIFT_A)
> +#define  VRR_VMAXSHIFT_DEC_MASK			REG_GENMASK(29, 16)
> +#define  VRR_VMAXSHIFT_DEC			REG_BIT(16)
> +#define  VRR_VMAXSHIFT_INC_MASK			REG_GENMASK(12, 0)
> +
> +#define _TRANS_VRR_STATUS_A			0x6042c
> +#define _TRANS_VRR_STATUS_B			0x6142c
> +#define _TRANS_VRR_STATUS_C			0x6242c
> +#define _TRANS_VRR_STATUS_D			0x6342c
> +#define TRANS_VRR_STATUS(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
> +#define  VRR_STATUS_VMAX_REACHED		REG_BIT(31)
> +#define  VRR_STATUS_NOFLIP_TILL_BNDR		REG_BIT(30)
> +#define  VRR_STATUS_FLIP_BEF_BNDR		REG_BIT(29)
> +#define  VRR_STATUS_NO_FLIP_FRAME		REG_BIT(28)
> +#define  VRR_STATUS_VRR_EN_LIVE			REG_BIT(27)
> +#define  VRR_STATUS_FLIPS_SERVICED		REG_BIT(26)
> +#define  VRR_STATUS_VBLANK_MASK			REG_GENMASK(22, 20)
> +#define  STATUS_FSM_IDLE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
> +#define  STATUS_FSM_WAIT_TILL_FDB		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
> +#define  STATUS_FSM_WAIT_TILL_FS		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
> +#define  STATUS_FSM_WAIT_TILL_FLIP		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
> +#define  STATUS_FSM_PIPELINE_FILL		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
> +#define  STATUS_FSM_ACTIVE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
> +#define  STATUS_FSM_LEGACY_VBLANK		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
> +
> +#define _TRANS_VRR_VTOTAL_PREV_A		0x60480
> +#define _TRANS_VRR_VTOTAL_PREV_B		0x61480
> +#define _TRANS_VRR_VTOTAL_PREV_C		0x62480
> +#define _TRANS_VRR_VTOTAL_PREV_D		0x63480
>   #define TRANS_VRR_VTOTAL_PREV(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> -					_TRANS_VRR_VTOTAL_PREV_A)
> -#define   VRR_VTOTAL_FLIP_BEFR_BNDR	REG_BIT(31)
> -#define   VRR_VTOTAL_FLIP_AFTER_BNDR	REG_BIT(30)
> -#define   VRR_VTOTAL_FLIP_AFTER_DBLBUF	REG_BIT(29)
> -#define   VRR_VTOTAL_PREV_FRAME_MASK	REG_GENMASK(19, 0)
> -
> -#define _TRANS_VRR_FLIPLINE_A		0x60438
> -#define _TRANS_VRR_FLIPLINE_B		0x61438
> -#define _TRANS_VRR_FLIPLINE_C		0x62438
> -#define _TRANS_VRR_FLIPLINE_D		0x63438
> +						_TRANS_VRR_VTOTAL_PREV_A)
> +#define  VRR_VTOTAL_FLIP_BEFR_BNDR		REG_BIT(31)
> +#define  VRR_VTOTAL_FLIP_AFTER_BNDR		REG_BIT(30)
> +#define  VRR_VTOTAL_FLIP_AFTER_DBLBUF		REG_BIT(29)
> +#define  VRR_VTOTAL_PREV_FRAME_MASK		REG_GENMASK(19, 0)
> +
> +#define _TRANS_VRR_FLIPLINE_A			0x60438
> +#define _TRANS_VRR_FLIPLINE_B			0x61438
> +#define _TRANS_VRR_FLIPLINE_C			0x62438
> +#define _TRANS_VRR_FLIPLINE_D			0x63438
>   #define TRANS_VRR_FLIPLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> -					_TRANS_VRR_FLIPLINE_A)
> -#define   VRR_FLIPLINE_MASK		REG_GENMASK(19, 0)
> +						_TRANS_VRR_FLIPLINE_A)
> +#define  VRR_FLIPLINE_MASK			REG_GENMASK(19, 0)
>   
> -#define _TRANS_VRR_STATUS2_A		0x6043C
> -#define _TRANS_VRR_STATUS2_B		0x6143C
> -#define _TRANS_VRR_STATUS2_C		0x6243C
> -#define _TRANS_VRR_STATUS2_D		0x6343C
> +#define _TRANS_VRR_STATUS2_A			0x6043c
> +#define _TRANS_VRR_STATUS2_B			0x6143c
> +#define _TRANS_VRR_STATUS2_C			0x6243c
> +#define _TRANS_VRR_STATUS2_D			0x6343c
>   #define TRANS_VRR_STATUS2(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
> -#define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
> +#define  VRR_STATUS2_VERT_LN_CNT_MASK		REG_GENMASK(19, 0)
>   
> -#define _TRANS_PUSH_A			0x60A70
> -#define _TRANS_PUSH_B			0x61A70
> -#define _TRANS_PUSH_C			0x62A70
> -#define _TRANS_PUSH_D			0x63A70
> +#define _TRANS_PUSH_A				0x60a70
> +#define _TRANS_PUSH_B				0x61a70
> +#define _TRANS_PUSH_C				0x62a70
> +#define _TRANS_PUSH_D				0x63a70
>   #define TRANS_PUSH(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
> -#define   TRANS_PUSH_EN			REG_BIT(31)
> -#define   TRANS_PUSH_SEND		REG_BIT(30)
> -
> -#define _TRANS_VRR_VSYNC_A		0x60078
> -#define TRANS_VRR_VSYNC(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
> -#define VRR_VSYNC_END_MASK		REG_GENMASK(28, 16)
> -#define VRR_VSYNC_END(vsync_end)	REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
> -#define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
> -#define VRR_VSYNC_START(vsync_start)	REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
> +#define  TRANS_PUSH_EN				REG_BIT(31)
> +#define  TRANS_PUSH_SEND			REG_BIT(30)
> +
> +#define _TRANS_VRR_VSYNC_A			0x60078
> +#define TRANS_VRR_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
> +#define VRR_VSYNC_END_MASK			REG_GENMASK(28, 16)
> +#define VRR_VSYNC_END(vsync_end)		REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
> +#define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
> +#define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>   
>   /* VGA port control */
>   #define ADPA			_MMIO(0x61100)

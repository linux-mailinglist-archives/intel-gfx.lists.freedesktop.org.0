Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBFKIEpgc2kCvQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:49:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA4575603
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 285B210E2A7;
	Fri, 23 Jan 2026 11:49:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IvqIu42f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7E510E2A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jan 2026 11:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769168967; x=1800704967;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:cc:references:in-reply-to:mime-version;
 bh=I9y6RLHDwKmaOXCxCA7uoIZzD/CBkPUhPqyP1UHu4vg=;
 b=IvqIu42fHkqSXTcjJ5xWA1M0giPma2KvipWqmPBVUbOVU42/Dlkm3Ynl
 ubkc9bZInUNHnu3tSIXmOcwBJJJlFApz7sZj/5dHt/9TzNJY4Fzg6Alih
 1HxrwQ8izr+QiPR0s/ffDUB75+mwZlRGUiHRCd05ZQuT6Or/i+CNb9u/G
 xT7BpJWhSc5ueSFy1hw4szKNJnmmrwGIM8owJCshAPPUz5rvccI+Uhgie
 7uyWgw8vvzZL4IgFGOVq7OQCOKD7cA5mUSmRO5b/mL49ILieArZoyD3Ec
 3tS6x6h9uMzfOdH1wY2o7TEgk3ZMeDerVlGItJkH9lESaM+Wlll6B5ppI w==;
X-CSE-ConnectionGUID: qetmA+h1SAW3BCx8gmhtdA==
X-CSE-MsgGUID: DA2u062IQaGqVFz2x59u+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="70330211"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70330211"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:49:26 -0800
X-CSE-ConnectionGUID: M1S8cszNSrOJcsvzcd5UuA==
X-CSE-MsgGUID: dBUgSj9ARdihoawV/oaaLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="206122692"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:49:25 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:49:24 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 03:49:24 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.48) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:49:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PJfcJLx2DXza6eSF3B8sr06QNEaQy+jc5zaZkPEh3pA2cc5YYKqor9U96XOQ/IgF6tvT/miYbZu83gl2e0RQcVUF2TugwY9e1wNYDGCqeK9GZdXqk/KjKZ1oJLKyPg9kyL7MoomIjCtPGI6S/o7CdvqLiUsmCcEJmdbm99QL4va/WLsgezHHKqHyHljN81j/vNCeuxcj7x76C8ugNQQZi/yZxzVANB4UbDW72YITaKZ547xgNCAXvPpcViii8xYLCZf1WPwKjgjI3mezXvE6dkG/bMaXRP4Rd+ve7v9u0FADGyK+RQGlCUBvLUlLTWuCHtmPo4ow8Q8+taObxRpp9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EfxzsQKC0+Y0vDduQY12DktZu1inZG/ppRMmskVjIQ4=;
 b=lMpnw9HqEKfTqgk8trs6KskvizaKfjxY2F2Pu7jpsz0avX9Bs1pNCelHFsNoE2P+L6GcFfsP4N6MkL6EdS2NEXYIrGgD7FatjnlYOnzN55Ju17WU3IQFpVKxpbtRPaCrBqpZ1u0Lbb+xvw51RQqC5XpUGfPqE66HCqdMLw946PzoHNl7BwIxh8rEgB04KBYnvQ9px3QnVoy2umCw9p94i6LflAItIDu4DujWhtH8kFG1XDOe4WhDRF3d9YgGsMVx1R1Lp8i1qyOAA5wDKombHJlwD9hl5WNg42iNsWrWmp0VWrIV5KPlP74HB3V+CsGNsP2WQ+f6vdW0Bzepha4UnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH0PR11MB4950.namprd11.prod.outlook.com (2603:10b6:510:33::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 11:49:17 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 11:49:17 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 23 Jan 2026 12:49:11 +0100
Message-ID: <DFVY1WBM8OVB.1KJQLWZ2NYTWZ@intel.com>
Subject: Re: [PATCH] drm/i915: Add vgpu.entry list initialization
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
X-Mailer: aerc 0.21.0
References: <7updbd6x7fmw4g3tdf3r27xblf4www7xxsxyrncc35jokiuxvr@rflx6oxm5au5>
In-Reply-To: <7updbd6x7fmw4g3tdf3r27xblf4www7xxsxyrncc35jokiuxvr@rflx6oxm5au5>
X-ClientProxiedBy: WA0P291CA0023.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::10) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH0PR11MB4950:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a66e332-9d9a-4970-1c0b-08de5a756fe6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YWJBc3RCK3dKM3NWeXBRZU1FTHRLWFZoN3h6Q2xMajZIUUI2Q1ZFV1p6L0VQ?=
 =?utf-8?B?b2UzNklxODJXOC9TZWVxVTl3ZjJPSEZialdIaEdoMDlPbzEvS3h4eXRNQzVW?=
 =?utf-8?B?ZlVqZDg5ODAwaXhnM1FPUS9xaTY1TUxKdEtEdGhxRkFqODdYbDVxdHBMblNk?=
 =?utf-8?B?VlhGRjVoS1JhOW1CZ1JxVlNYTmZoTjRQQ0V3bDQ2YkJGcUEzZ0xVVVdURXpi?=
 =?utf-8?B?cW5vNTgrU2hKeFkrbVV4dmpkbElJOGRsQTcyUFBnYkdMbTc2QXpKeUs4QSts?=
 =?utf-8?B?MTlCQXM2dnBDTnhxeEt6Rk1tMS9kTGVuc3BXU0VkbEc5ZGJDMU5jN1U0eEYz?=
 =?utf-8?B?UjFyTlNaUDh6bDFPaGQxOXFrK2RoUlFjS0U5VlBSYjZSVkdNOEp1YjM2Z3RE?=
 =?utf-8?B?T0VkZXpZSmFjbUlFdzV5dEJDQzhKVmJPKzJvSS9UeG02VmRTS2pNb2w2STB3?=
 =?utf-8?B?c3l1bzhEaXJNMERZU1lzdHdnYm1VbUE1YWwzcFVGNlVSd28yVytPYWZtQUhP?=
 =?utf-8?B?YlZIYUkwcndsWkN4U1ZCQ3ZQdTNKeUxRdHYzd2thK284UHRkM0FKcUZjMUFJ?=
 =?utf-8?B?a1dLKzA4WDdnenkzSW1DRHVoWXkrcC9WekFpOG45bVNHY09oYWEvSVpGNWh4?=
 =?utf-8?B?cjNEM1MvY1JoQis2OE5GY21KQlVuVDlvVHpCZ1UrSjBHUnJZckc4L2orWjJ4?=
 =?utf-8?B?MytVK0V0OVdZNlVsc1JLaVUxcHAzOEY0WTdqSXNxdXdhZ2VLZTBJVXpNTWp5?=
 =?utf-8?B?dTRmLzd1aXdSTndEZkNTNzdkek12OFBIcWRXeXNPZnhNU1RQOTBIMnFjZHBk?=
 =?utf-8?B?V200VXBzT1l1RnBub3VEQmVkV0NiZVA2djFodGkzNGR4Tlp3a1BSUjJwdlJE?=
 =?utf-8?B?M2FTcG9oZE0zVk5vM0pGeVVuUm16d1FSeElvM3lENnhOcS9nMGxBRzJROWZX?=
 =?utf-8?B?d3V5eXlsWFZIQndZNEJ5dklYL1BDZ2dMZUx5RmNzS0ZOOWIycEZGVStjbXZ1?=
 =?utf-8?B?NFhhNVlLYzIzdWh0eFk2TUpwallqUFNsVlRONG9idWdSRWc0VW9XRWNVeURy?=
 =?utf-8?B?b2liaWxONVNWbDg2QldHUms5emg3d3VpZGZRUVkrVXZQS1NnOGxOR2RkVDZp?=
 =?utf-8?B?MjBsSmp6cm1UT1doRW0vdFNYRWpPTFZidWNkeDhOcTBzazRXeGFpZnFCVG9X?=
 =?utf-8?B?eDNUVE9vRjY1bCtjY3dJUC92bUhuK0hNTjA5T29sWWI4SGhPQzVHR0JNbXA1?=
 =?utf-8?B?M0pGYjNHemxGY1VXVTgzN0tVUVJjb1FReEFSYjhpZHRmajBMa1FyZWtOdjBJ?=
 =?utf-8?B?VUdBUlFsN3gvSldRYXhMeElLejRZT2Q5Y3NETlVuT1NJbVhRTHBLdmRITGcx?=
 =?utf-8?B?QVUrNW5WRFdZSldSZERmUUl4V3ZjeXhxVWVsT3p4akdhY1RzWHBiYWtkN0tl?=
 =?utf-8?B?SXNMM0VmTHNXUzZGTyswS1VFV25GQXVoNFNRMUlQTzlOT3F3dkhLZ2pxS0lC?=
 =?utf-8?B?TFZGQ2pwcjFmeDBIckVKK2FVdEN6UXdvVlNlYllYeC94dExJa3NScUFpNFZv?=
 =?utf-8?B?WjkxREZKZXdKQk1YVnk4bmNCdkVUS25TcVorYWtoc283WGpQUEtkb0NocGY4?=
 =?utf-8?B?elBCT1pyc3pNbE12UmZEUHFkU0Z4TG5GTEhsMTZERCtsOW9hTFJEemNySjZB?=
 =?utf-8?B?a0xCRDZxanIzYkJQVnMwNHdZd0NGQWpHUHZiZ3cvcUdUd1AzQnN6RWF4TkNH?=
 =?utf-8?B?R3pJRXRSeExjK2VCcnB5WmlCL2pQUWdCN0I5L3QzOVhEU1ZOWGtaRytkUEFq?=
 =?utf-8?B?S1l4c3dvaGg3RUF6TEI2TGs4Y3Fsc2lGbC8zMHBjaFJ0TzQ2L1FhcjJrdjht?=
 =?utf-8?B?RXNEeWV5TlE1aVg2bFZnQWczNXNGeHNDdmdrNkhiUmJUeWZjUGExcTZ1b2Ra?=
 =?utf-8?B?RnQ5NGt3R3k1MHd5cGRra3Y0alJzb212aHlhQWJiaWxnbTRZZ0NrbHRkM1hL?=
 =?utf-8?B?Sm9TMks2bGJiTHYrMWx1R2MyWEJKSWd1QXorMXorTmNvemYrSDUxSVMxMEdv?=
 =?utf-8?Q?iXsPPl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFpDcHpxMVJrc3dmdHRKRUplaExBL1BGM3hiTVdUVEgyNEQvaWFwWXV0T2tw?=
 =?utf-8?B?c0NKcVhzNlZ0dHRoY2dBRlJmcEZxcUtkcDU2M2lrSjFTYmY0aGhYOGI3V1F3?=
 =?utf-8?B?YlRON2ZFUmhYYkRFN0NpU3lLcFZTc2x1TUVNU0orYWVqYXppeUc3NWpObWlP?=
 =?utf-8?B?WW1JMC9jYnpwREQzR3lXL0NMazhjM0pqS0NRUXNXcFZqYzdyU200T2hVNDJs?=
 =?utf-8?B?OFNESVg2MzBMQzI4K0hhdnpmRGNPYXl3N0NUQ2c0eGh5RVVHZHc0T0V1ZDV3?=
 =?utf-8?B?M2U2djZRNEhpK2lpS24xcC93UWh5SDkvb29rRjNPNnVSbW12OUJSY2VMdzcy?=
 =?utf-8?B?TkU1ZzVKcnkzTWdjSTN0cXNEV3MxcGo0TlJ3RjhYRlQrUEw4ZnN2VFVEYk5y?=
 =?utf-8?B?VnU1RlNTcmQ2WFE0MG5rTVdLZHJvNldPUEdrK3JndTQxMG5rYzZ0c2VSaDIv?=
 =?utf-8?B?Z085My9mRVZMYjJGVjdFc1N3RDBicDlxQU44UEUvM0NhMGN2c0IvRlJkbnNy?=
 =?utf-8?B?UE8vYTFhN21oNFVySUQ4aG9WWXVZUzJFMnhidUI2bDB4eGMrejRWbXRNemt6?=
 =?utf-8?B?VzdoRlJYa1BLUHVVajY1ejhzQW5PcWhxMVlNR3JSUk1POVlYQVhnd2Jhamgv?=
 =?utf-8?B?TWU0c1Fkdm5OYUlxK2RrVU5RZk03aEpMWlNsVkNrVGtkVTV5TDVqQ1Iybyti?=
 =?utf-8?B?aUY1bkFXbzNkSEp5NlpMNlF3K1BJTWs5U3ZFSTI2VVdhdE9Bak4rcG9ubWxy?=
 =?utf-8?B?byt4NmUxYklqdkRBZ3BzNlBSVEEvUWhQc1JUMENGRm1iS24yUVhUZHhET25k?=
 =?utf-8?B?SDVLaDJoNkJHSWxtUnNmRVlmYmwzdDUwWHNmNnlUQ3lsS3VYclREU3VPbUdD?=
 =?utf-8?B?RDBmNEdnOUtNeWY2L3Y3Nyt5NUxuM3UycytBdlFrQ2V3aVVBdTNBU3QrZ3pZ?=
 =?utf-8?B?dFdTOWJPOWpWRUYxNDRqRHlLUW1mTG5NZTVnL3RBNmkyaGFZNTVSS2Q5Zk1i?=
 =?utf-8?B?WVNwZlNIOUJyTWk3WDRDdzlYdWJCWnVLazF5aTBHd0JncnpIRXpnazZzT0g2?=
 =?utf-8?B?bFBNWEZ2S1BjK21GR0trOGpQWnFnZy96eURPQTA2QW9ZSEYvMTh1Ny8wOHBJ?=
 =?utf-8?B?eEVidUFOWkJwMWw0NWVQYWVlaFczUWF0TWczVlRqUlRxUUZ1dWJvSi9zSUUv?=
 =?utf-8?B?SlZ4WHdQb2NLcEVSZXRlLzZDc0FjeU5RQmllZ1ZKYzV5T3pCSXhybUkxTEYv?=
 =?utf-8?B?S2c5ZXV2RXFWdkRvaWVUMlRRTkJoSm9ySTdOMi9vWk9CNDh0bUZBeGZIU0VN?=
 =?utf-8?B?VEJsRml6NzM1Z3dJclZOWEVMSy82eDNUTk9QZFhVakJhOVhobXZ4RFZBVkRm?=
 =?utf-8?B?aUdqTWxZdktmMy9vK1dZZjZ2NjJLODBBWmtQQ29wMlZmUkoxSDlQajNDU0lz?=
 =?utf-8?B?L1A4SVZYVHY4U2lGZWxycXZwYWNIQU9uTytpMTU1ZmhhWFpiNW9TZC9hd3BF?=
 =?utf-8?B?cElxRlplMGE4QVR0c1E5ZlBRd253NEd1WVB4bVlrN2pnM3NYSklkMFFmMHFY?=
 =?utf-8?B?Yy9HNXl4clpSN0U1amc4emM2VzVxcU1DTTV0QXJVN0FtYlhKQzExRVFlcnBO?=
 =?utf-8?B?NlVYZTBoMEhqaHQ3Mmp2QkcvTTBxMmpycWhtZXFtL0dOVFZyS21Ud2dOajg4?=
 =?utf-8?B?NlpNN3BUTTZybWkzaWs0NG1MREpGelBzY0JSdjlUQkFBSVlkVEZWQ1lNTFhy?=
 =?utf-8?B?Vlk2L1lUSkFCdnZpMWhydFVhcFpYakU4TmhUcnJxRFVxZjJHYjZTS2pyeU96?=
 =?utf-8?B?ckI3eFhQaURRWjhIdUFlNFMxNXBjYnh3d3NlU2p5SlhZdXZKdVJ6N3FzS29o?=
 =?utf-8?B?ZFIyNXpRWlN1bUZML3MvaVFaRlFUVDRUREN3YTMzZDdodHZLUnFWNUVGbzND?=
 =?utf-8?B?YXdvcVRqMWxubzVwUGhQaFBzdTVMaVM2RUJNdUxVQnpoTmVJUXVMT1RKOFgx?=
 =?utf-8?B?Vk9YQUJqZFA1QXdZMVpmczBWYjNxR3o3U1dIbU9QSmsveDJ3cHdsRTAyUXJz?=
 =?utf-8?B?YW1GUmpLUkNOL1I4L2w0Rkx1VnFmblB4NzZCRFV4eG14bTZ4NHl4M2o0VGJC?=
 =?utf-8?B?YS9ySmpZTHAvRDVURExodzk2QkZMSDR4ZGxYUzZmYkcyTnVJMU1PT29xclVk?=
 =?utf-8?B?eHVRZTRtYzBhVU5FcjU0cU9LRmh3L3pYcG4vMGs4WEpnYTVFcHRueGw3Qk01?=
 =?utf-8?B?Y3o1Q0xQM0VielowT2ZXMUt3ZStib2tkVnMzVFNibU9TZG9yM2hReWhEZnND?=
 =?utf-8?B?T1lUaFU2aFovUE5hQXROR1VJVk9taUc1Y1NJbzV6bzJDbzNRNVNsVFI3V3ps?=
 =?utf-8?Q?MTprOJpYpD5tS6k4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a66e332-9d9a-4970-1c0b-08de5a756fe6
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 11:49:16.9342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0jK9QYNGm8IhU6asWzCrWTNyuNpIvbdYnbcSEIF9oiwj06iH3dgUI56J1yT+aQsNRTTkAxQS2nG/kdS810Hr3/KZMG+TLuiImeHIM/uNko4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4950
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.864];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AEA4575603
X-Rspamd-Action: no action

On Fri Jan 23, 2026 at 11:11 AM CET, Krzysztof Karas wrote:
> It was observed that during fault injection testing the
> vgpu.entry remains uninitialized when taking the error path,
> which results in warnings [1]:
>
> <6> [491.828427] list_del corruption, ffff88812cd2d0c8->next is NULL
> <4> [491.828430] WARNING: lib/list_debug.c:52 at
>  __list_del_entry_valid_or_report+0x6f/0x120, CPU#2: i915_module_loa/2921
>
> Add initialization step to intel_vgpu_detect().
>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>
> Example of failure from intel-gfx-ci:
> https://intel-gfx-ci.01.org/tree/drm-tip/IGT_8711/shard-dg2-5/igt@i915_mo=
dule_load@fault-injection.html#dmesg-warnings385
>
>  drivers/gpu/drm/i915/i915_vgpu.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915=
_vgpu.c
> index d29a06ea51a5..362282b20f7b 100644
> --- a/drivers/gpu/drm/i915/i915_vgpu.c
> +++ b/drivers/gpu/drm/i915/i915_vgpu.c
> @@ -67,6 +67,7 @@ void intel_vgpu_detect(struct drm_i915_private *dev_pri=
v)
>  	u64 magic;
>  	u16 version_major;
>  	void __iomem *shared_area;
> +	INIT_LIST_HEAD(&dev_priv->vgpu.entry);
This may not be the ideal place to initialize this list. It
would be preferable to do it once, closer to where the list is
declared. Initializing it near i915_driver_create() would likely
be better.

--=20
Best regards,
Sebastian


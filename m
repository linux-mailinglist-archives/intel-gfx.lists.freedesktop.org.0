Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42647AD6FA4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C5610E7E7;
	Thu, 12 Jun 2025 12:01:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="acZ9oTqC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 043F810E7E5;
 Thu, 12 Jun 2025 12:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749729675; x=1781265675;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=ZN+e2nrL7cYdkMErSWmQ7n1BIfcv0ZqJXvzmN3j9zGI=;
 b=acZ9oTqClQFkGOM6eTREOgJ6PhSON7MqEV8//6pxl1wpGrlr43LrsMGS
 KN0mULZ+B5iwkmRUHWyst3vkHdtB6UhD55wPg4n/aBxRDccKOI4vxlyJL
 2Qm+Vn/wOj8pR+2ZCwjYWN8pwqeo7B1kllkgvrvphBAdZq0OD++4wKqZw
 +vcu34wtg9JYgTrplR5dBpW0JYfQ0zoWDSVTBm4pcC7/zDkLujEyk8nRl
 M5kTKZ/0omTvZw2PuAQGP7mpf3AU5TMN6rNtmmwjp8Gj5AcfmJ5TDrDZZ
 +3xTgwYuvjQCxZFnIdgDLB29A1BB647ga8oSS9mQvX5Q5xrh1qSDkfl0S A==;
X-CSE-ConnectionGUID: fP90lG7OQBOQYnN5Hgqmjw==
X-CSE-MsgGUID: A5TKpdLJQJ2F4vAtJ6QJNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51822245"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="51822245"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:01:14 -0700
X-CSE-ConnectionGUID: fzWr9i4FRUKCpkqOD8XsHQ==
X-CSE-MsgGUID: SgIUewmWR22CgiZJq9Vh4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="147489468"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:01:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:01:13 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 05:01:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.46)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:01:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N2UTfT43NqhLwvjODKIFk2poqu1/oQoHd02FZohX8U6O3XWkA87/rcJZk+ijC7pExeRK0tekAmSdtWyei3RjWp4TxcaiOm/Z3WWwO+BGSEMQz3FeHUsDKaFP6iZVOOgqEB4dOK9rArwAcbidpVUZksBxf8Kj6OSlyxjISv3OsOCdMPED1j12IwFegLQ0pK++kMeZ9cAEJu0yDxxJd5r+ZHK7/MqNH+bvXCoNzlAu0e9Q/kd/pxHocm+T5tL5pYreD3OPDbjEG3bmriZfGc4Y+PWoEvvnL3TqDbV4nUxRqWbSQNt5MriIoOaYbgrEiWvwVPBA7WSqfryA7GQ+HqFFpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9x1D6QQehVYzPTbrpd/ZwKQRTmupVG5jZ60kRVJGhaw=;
 b=ZLNrv7sldbBq+TuQUX9PtqRVDYYKgJAzkEs5/wPh+/gqr+HMMGthpv4fPfx2n2RslBd3J1UG7itEUZfvv0ZfWshkfF0HXs8YF5ioh692rqbVx2xRu8A5fS0wsqAZdM9UEU1uorNYD0K/JNSZ/dlIhohGbwRGIGFh68QGPvSLHur6tY2UXP/Rkd4zXhX9nrgviRnHVc8NUIkfRLgREkLHr/G38Llrojvxi0jhZEly6+0F/1Dw5K+jb6wlBYhVdHxjlsSTSeqXXGQsajhRB7CsLOMbzXnV/chJOar3m1jnxVoVx9wREkYOhtsD8Z9UNF7A9zSbilxpYekM4KGMIKqUlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6603.namprd11.prod.outlook.com (2603:10b6:806:271::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.18; Thu, 12 Jun
 2025 12:00:27 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 12:00:27 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250612075330.837179-1-ankit.k.nautiyal@intel.com>
References: <20250612075330.837179-1-ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Thu, 12 Jun 2025 09:00:20 -0300
Message-ID: <174972962084.14553.9763596946172547950@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0302.namprd04.prod.outlook.com
 (2603:10b6:303:82::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6603:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f429390-fa88-45de-ad9f-08dda9a8b85b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RjJoNXJGYWtyNVJtQlFwTFFVbWJnOWwyL0dQS0pzWCtrN3NCUk5FYS81dDNv?=
 =?utf-8?B?Z3diQVFnUHdOWEh0TjMzc1JVZnNLY0RGNEx2bGtiY1pMYkMzdzE4dDd3VXlp?=
 =?utf-8?B?SHhQK0swYkh4cjM1UDJhUVQySmxlQ2ZJTERuTzhZdXZobnMxWFBmb1piV3dk?=
 =?utf-8?B?QXhHbkF6ZUVKbm43ZlVndjNTVG95TmZVVFh5Q3dUWFFrU244aVZOUVIyYlgr?=
 =?utf-8?B?V00va1ZHTVVqSkNRNENjS3JyaFByelFzRHNnOGtmZXd6Wmp0MG1hOGtiTlNE?=
 =?utf-8?B?VUcyZGtvTWlwM2pUdGRWVUMra0ZBS1JQZ1RKUjEzK3g0akxtYUlKemFrWDZX?=
 =?utf-8?B?MnpJYjdtTnJvNG5ocW9FSjd3ank4ZDZycmFYZ05haVl4TkdkSUtrRjd4OE1I?=
 =?utf-8?B?SS9KbWtNZU85d3hHS1lpT2hoUnFIbWN1ZmdSVWoyNEZUalFwMU5QalR2eWZy?=
 =?utf-8?B?MkRZa0lPNE1VKzRWMDdjbXFrOStMTnRUZWZDMmFiK0lKdEJET2NBYStEWFZk?=
 =?utf-8?B?UGtJVVdZTllTa0tMdkhKeElSR0FZS0s2a3I1LzJTR1ZWNlhrTnBYVXJqWmQ2?=
 =?utf-8?B?YWR3Yk9JUERSMDk4dWdRTHhERmhzekdJOFlhdGVYdnNtUE1ndnErVkd6eFpB?=
 =?utf-8?B?K3pKOW55L3NhbGVQN1NMRXlUOGl6T0RaNmJER1ZwL01mU0dmcFhJTDdYMmRU?=
 =?utf-8?B?WmFZalFGckpsTGhuMzNueXZsbFg5SXIxbEpKNTBGSEZ5MWdUQitJaHRsM0gz?=
 =?utf-8?B?L2dnb2t4SUcxK1RMMVkxVXpFSVNsdEhweElyYW5pVEdDa3EzdkVhcVpxdEt0?=
 =?utf-8?B?aE11bmk4eExaQkMvc0hsTjU1Nmh5bjBBNzlncUNMbDBnZ1hUMXFKbjc2bnVL?=
 =?utf-8?B?UXMvV2M5b3Fma1lEU21FTkRvV1pBOGRvK3RGYmRObitMLzNjdXE4ZURzdlBj?=
 =?utf-8?B?RTdpL3F1N1NIQlJZdC9DWWhVUUdiWVhIT0NxeC9ySkdiOHJ2T3p1WSsxcTJm?=
 =?utf-8?B?VEw0dFhuK0EybGtVcFVDR1c1WDd6OFkvMDRYVXJVTnR1NXNhcEpWWmVBUEF1?=
 =?utf-8?B?VkdTZWhqbWNaQjlzVTYyT29WTnlCQTJqSWJac05nZVJUMWxrc0JObk4vKzEx?=
 =?utf-8?B?N2dvRDcxR0Y0T241cDhQbkMvdERkUG1ZY1FPaEZpV1dacGtCa1QrQmxGQ255?=
 =?utf-8?B?YWFBNlYzWit4UWlaQWhxRjVzNEp3SG85SnFrK2M3SUkycys4aFE3RFpQZU1s?=
 =?utf-8?B?anBVSWQ1aWRhSWtHTytuWWF0cFRIRXdNSHdSUEJPa3ZlL0tOMzNYSGRWdElj?=
 =?utf-8?B?NU5XNjRZS1plbmtuWUZrYUJzdHdvRDRyTnlSZU1ESzdndHRtYzRiWjdBaFZy?=
 =?utf-8?B?UUZxTlNhL2ZTSlJ5WkV5d1EvOGFBYnA5bFRyaEJCdFVqckFwMGVTeU5vc2xw?=
 =?utf-8?B?RkJ4M2o4dVhmV056WVBuMHpvWUp5ZkwvRU1UMFpoUGdTZE80cytxa0pzYy9D?=
 =?utf-8?B?RzF0RGRPS29JQnR1SHA1S2NWUTZsblBvTExOQkl4cUJXSktlNTIwNjNxdSt0?=
 =?utf-8?B?TlFkNUtGZDltVWVSeXRIcVFUMUJDd25xbk1KNWlDRHVyUlFZTlZYOEJOaElG?=
 =?utf-8?B?dWdsdVk2WUZRUUVNSnpQbTA2MDVLTDF0MFF1eFJLV0VQZ2hHQ0srRXdUTmNu?=
 =?utf-8?B?VTBPWU1XaG9na0JkYllDc3Z0eDFWc0lpdExFNGUyaVB1dzRKMlFza2xEN2V1?=
 =?utf-8?B?NGRlN0x0OFhEbzZOVXdENm8yQ2NKU3ErZ0c2eU1rdVo1Q2psRDJVc3FkQ2FY?=
 =?utf-8?B?eW9zR1d3Y2NnZ1IxR05iWU5RRmU4R0RlQU96VzA1a3A0SnorSDlhRjVrWnRK?=
 =?utf-8?B?a2xwQUNFRWZPc1FMZ0FydU1HUWZseHk0YTFpQU4vUk1sN1ROek9rcm81OFpZ?=
 =?utf-8?B?MlZuQ1hKNGM2cnF0ajNHNTR5c0NsbEF2K2NDbkQ0ZWJvNmhEMHdjMW14K0U3?=
 =?utf-8?B?ZnZpTXBCVkdBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzhGaFpVTEQxMHN6amtONVhZRTZQTktYeWVTWE5TOTJGTEpXT21EeVVhcGkz?=
 =?utf-8?B?a0xtT3VnSndNN3ZkL2E2Y0tmK3lEb0NJRWNIWkRScWhIYkVZSEluK01aMVJr?=
 =?utf-8?B?eUU3UW8xN0JSQWt5U0svWGM4ZVdSYlhtOWg2bDJpcmRxZCtkcUFsdHBjVVp6?=
 =?utf-8?B?bmRqODloTTg0OWk0d2djVU9USFRPUitLQjZaVmp3bkU5czlQNlh4SVA0RGRT?=
 =?utf-8?B?K2xOeW5PNVlzb1lVQ1ljb1JiSVRCdC8vWVFac3FockJ2WlRIQjBXQjN6YVVh?=
 =?utf-8?B?Y2ltUzVxbitQS1RmbTlySGdUU29XUG94MnlnRFNFamI1dE1JaEg2SHhjcVcr?=
 =?utf-8?B?cmZKamd2ZklmZm9oRnU1SnB1d1VyYjVjQW40V1YyZVI2dytMTTRxcjQyOW85?=
 =?utf-8?B?bTFhcTI3L2FVOEoyRms2b3RMTmhPQ2JhcXdGTWtnZVliRlhiOTNpanUxVU9t?=
 =?utf-8?B?RFR2eklYLzJrOFBMQ3RSUzYrdDRSYis4UWp1U0ZxYTdFa1VqMEN2d29UWFVM?=
 =?utf-8?B?N0QwclhycE5SUU9OZXYzVHZYMnhCR1pLR0tVN2I3ZTJYQ2lHZGswYk1nRGJq?=
 =?utf-8?B?c1hOdVRXQnVFRUlnck8yS2R3akw5dUNkVXlibnpBcUFLcXFGZHpmbXJ1Qll6?=
 =?utf-8?B?ZTF1byt2eHRVK1FDZW5UR3VOR0J0WWE2aC9JSzJmRHA5NkFRS3NLNTF5dU1q?=
 =?utf-8?B?cjZyTlVpVjk4YkNSbUNhSlk1YTVGZkMyMGRaZXEySUJyaHdXdnlYUGVHRnJy?=
 =?utf-8?B?RGF6Zkc2VURTOE5nbndKOStLWmFLYzRZcS9tZlBmSFdaQjljTEdoTTRZSW54?=
 =?utf-8?B?aFNVUEYwMjBnZktRS3lnL2pJTUxCbHRWeTExdzkxQjhCUU9iWkFnNFdob0Va?=
 =?utf-8?B?ZnFTNFNHZlAveVAraE9Zc05hQnp1YXAxb08yaVV4R0VXOWdHby92ZEp3azk4?=
 =?utf-8?B?cktrMEcwM2o4cmJWZnB5U1dMVDd5M2FyRVNteVRpRStGbFFleEpEb1g0WmRu?=
 =?utf-8?B?dVVPeGNqekZIY3hHQ3JFZE9qTXkvR0wrVHA4RG5UYll5c2YyaXl3ZkE4VElL?=
 =?utf-8?B?bXpobi9vMXhDbDJWU1NDL05rc0ZiMC84MXFUYVlIeW9Oei9yeFhWWklFUklB?=
 =?utf-8?B?Z29uYmhFRC9OVXZRNmQrOG9kRHNKTHdvVXRCc0wvVlY1aHpJT2JzQzdPTTJR?=
 =?utf-8?B?dHBvUjJPSzJ0dHdadWNRcEhVRldZQkZxNTJaNWtaZ29vT1MxWWl2WjA4OWFW?=
 =?utf-8?B?ZHprbTNyMUVJaENLS1lHRUhNd01oaXBtSy94ZUZaUnVkSi9SNzFXUUMrRTJR?=
 =?utf-8?B?Tjd4MDdmb0t2dFFXMTNDZExtWHE1dWt5c2c4emNPZm83ZjBaVTR6WHlmN0tt?=
 =?utf-8?B?QzVMaXVkMlJpVTZnQkc5QXhxa3VGWU1VSjNFWjZLNHBkcmFNZUhGWWdseGRC?=
 =?utf-8?B?bUYyOEVlbzlSSEpSS2MrWkE5Yzl4T0c5OENVNmcvRmpYVWJMV0xkeldDbTFy?=
 =?utf-8?B?U1JRQnpEaS9MTk9UeUdJMlRkZlVtM29IOVBkM3VsY0M1V2tURzdyd3FraHA3?=
 =?utf-8?B?Mk9xSVVBVkZ2ZEc4emp5R3pXTXFwZ0xCRTVUWWg2V2dtZFJuc25pL1MyaTJY?=
 =?utf-8?B?am9mcDJzTkprdXBQb1BlMU5EZmt3ZEd3Ulhsc2o5cmdRRFZiUTZ1eE1WYkpF?=
 =?utf-8?B?ZkZ0SUx6b3FnaE5KeVVhYVpOczYxVXFxK1B0Q0ZYTUJFUGZPNVhLSnFZdUtG?=
 =?utf-8?B?V2ptektoVmpBeUlSbzZpdU5JaFNRK3g0UnRuYU9ncFNHUjRYUEJuRlJLU3oy?=
 =?utf-8?B?ME1acitaWFBYM25IK09OLzU1NkFoWVRxQlRndU1JMFJlOXdOY2RhdVBMT2FN?=
 =?utf-8?B?ZEpZb01RQ3R4RE1kbXJqSE5mWEZncnNRNEdqcTN4a2FnVEsraUhLWlpUUzBP?=
 =?utf-8?B?OVQra1hqZ0Z0REtNR0MvVTJTZkE4USt6SC9oWndzMWFhbXBXbWRhNnlaYWZQ?=
 =?utf-8?B?M0pxWTI2UVd4aXE4MkR0NUhIRmhuSTRWMHpIWG91b1F4amtCK1c3Ym9FRGRM?=
 =?utf-8?B?ZGtERWxUT3VLNFVwb0l5VXVud2dqWjl1Nlh3bGxoaWVXWnp5WkQ5VmhpaHpD?=
 =?utf-8?B?Y2UvcGw5UCtwTmJITFNNRW5wRUwvL1FoNWxCY0xONVhta05kMWZWZ0hhelJC?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f429390-fa88-45de-ad9f-08dda9a8b85b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 12:00:27.1388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OPli+I6ZKHUdfO2SytZ9zi7WnD7P3Eiz+xMG5akhjT8tf50spsZcGPBtUj8Lu8ub1NIYGIPeh1P3LaoKqVWcqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6603
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

Quoting Ankit Nautiyal (2025-06-12 04:53:30-03:00)
>As per Wa_16025573575 for PTL, set the GPIO masks bit before starting
>bit-bashing and maintain value through the bit-bashing sequence.
>After bit-bashing sequence is done, clear the GPIO masks bits.
>
>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_gmbus.c | 38 +++++++++++++++++++---
> 1 file changed, 34 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/=
i915/display/intel_gmbus.c
>index 0d73f32fe7f1..c96167c70228 100644
>--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>@@ -242,10 +242,17 @@ static u32 get_reserved(struct intel_gmbus *bus)
>         struct intel_display *display =3D bus->display;
>         u32 reserved =3D 0;
>=20
>-        /* On most chips, these bits must be preserved in software. */
>-        if (!display->platform.i830 && !display->platform.i845g)
>-                reserved =3D intel_de_read_notrace(display, bus->gpio_reg=
) &
>-                        (GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DIS=
ABLE);
>+        if (!display->platform.i830 && !display->platform.i845g) {

I believe the stuff specific to Wa_16025573575 could be done in a
separate "if" statement. The conditions for Wa_16025573575 already imply
(!display->platform.i830 && !display->platform.i845g), and using in a
separate "if" statement reduces one indentation level :-)

That would mean moving preserve_bits one level up, making it available
in the function's scope and doing the registers read conditioned on
preserve_bits being non-zero.

>+                /* On most chips, these bits must be preserved in softwar=
e. */
>+                u32 preserve_bits =3D GPIO_DATA_PULLUP_DISABLE | GPIO_CLO=
CK_PULLUP_DISABLE;
>+
>+                /* PTL: Wa_16025573575: the masks bits need to be preserv=
ed through out */
>+                if (DISPLAY_VER(display) =3D=3D 30)

Instead of open-coding the conditions for the workaround in three
different places in the file, I think we should have a function
needs_wa_16025573575() and use it.

Also, note that the workaround is also required for WCL (display version
30.02), and we would then include that in needs_wa_16025573575().

--
Gustavo Sousa

>+                        preserve_bits |=3D GPIO_CLOCK_DIR_MASK | GPIO_CLO=
CK_VAL_MASK |
>+                                         GPIO_DATA_DIR_MASK | GPIO_DATA_V=
AL_MASK;
>+
>+                reserved =3D intel_de_read_notrace(display, bus->gpio_reg=
) & preserve_bits;
>+        }
>=20
>         return reserved;
> }
>@@ -308,6 +315,23 @@ static void set_data(void *data, int state_high)
>         intel_de_posting_read(display, bus->gpio_reg);
> }
>=20
>+/* PTL: Wa_16025573575 */
>+static void
>+ptl_handle_mask_bits(struct intel_gmbus *bus, bool set)
>+{
>+        struct intel_display *display =3D bus->display;
>+        u32 reg_val =3D intel_de_read_notrace(display, bus->gpio_reg);
>+        u32 mask_bits =3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>+                        GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>+        if (set)
>+                reg_val |=3D mask_bits;
>+        else
>+                reg_val &=3D ~mask_bits;
>+
>+        intel_de_write_notrace(display, bus->gpio_reg, reg_val);
>+        intel_de_posting_read(display, bus->gpio_reg);
>+}
>+
> static int
> intel_gpio_pre_xfer(struct i2c_adapter *adapter)
> {
>@@ -319,6 +343,9 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>         if (display->platform.pineview)
>                 pnv_gmbus_clock_gating(display, false);
>=20
>+        if (DISPLAY_VER(display) =3D=3D 30)
>+                ptl_handle_mask_bits(bus, true);
>+
>         set_data(bus, 1);
>         set_clock(bus, 1);
>         udelay(I2C_RISEFALL_TIME);
>@@ -336,6 +363,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
>=20
>         if (display->platform.pineview)
>                 pnv_gmbus_clock_gating(display, true);
>+
>+        if (DISPLAY_VER(display) =3D=3D 30)
>+                ptl_handle_mask_bits(bus, false);
> }
>=20
> static void
>--=20
>2.45.2
>

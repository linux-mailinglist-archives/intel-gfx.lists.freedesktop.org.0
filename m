Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFCE945133
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 18:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E787810E02D;
	Thu,  1 Aug 2024 16:59:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CcHXXGRh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88FAC10E02D;
 Thu,  1 Aug 2024 16:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722531573; x=1754067573;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=FCPIHn5JldOZC/ePkjbswq+9JRxfIbJXjQ87Uo1V/FI=;
 b=CcHXXGRh8wkrPa7jmwBs+jMZ6/+ivjxpa8GmmhUc2YesVhKBTtKjHyWd
 DejIUQ0xutedjTf4AVnNHJLFjb4v5EfKfenzdQiWDAPbbT8FwtFg1YV5C
 kF55abZ6tXSmKDQbmdscTCEMkl5hKOnl/tfmtuB1rAa7jkVXRqHl0MGZS
 BeWNkNPeo0PI0nHBpXVsLfGDx60eaYUop5Xwam2JuJqnEyo1UzsmgC6gJ
 yQvXQ+/MhqM3TMJjQyiXnN6KlQPbcBahVvss+y7ryH0jXhx3/NeWhMweg
 2KDztFJf/pvpd8JWfF+NgXDQraa61dP5O0Ov+LjgZwjMDqiyNio4QotaM w==;
X-CSE-ConnectionGUID: VUzcpYrjTOezVZ+JjCpayQ==
X-CSE-MsgGUID: ZXmJg2tVQieoVjsDf5Owow==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="23422061"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="23422061"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 09:57:51 -0700
X-CSE-ConnectionGUID: gRjJPIGiQk2sgyVNbWrgFA==
X-CSE-MsgGUID: j9JQybh0TXezVIcDwyPPLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="54752932"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 09:57:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 09:57:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 09:57:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 09:57:50 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 09:57:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A0DL+7XY+E1W11bORVuLdpwaVGgmvBR60nUSi/t/yWtdu9QVW3ZPSEhO/vh3UghsUIIeHiZ1HkkHp/q/6F46rBPV3ivoQQHq5l/sOyYRYBXhjyBOIgwLIog5YMpLfZFBOaIJehNRDkHWhClDL1af2SKrPLadF8aOPl4UReAVxlBdGPfhsr4eCYiYBRt1uqthX1hYMuHWj1o/Gv1GRbXj9CzxcmVKsre0RxRVPDdxz0Poe1TMm6dvLbl1EhfCcN9LMcAs+S4Mge+c5oeJ0xias2ENOxznZOcYuF8tTkkU4MoakSIWFgrJZXnW5ERHC6PDBgQsmicZMeodilK82PmRyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vd4M8AO9slMfVuHPW8dZGYktx8Cpm1X8gfYXd083OXc=;
 b=Xsr4r3T4NU8PtdA/3t6zNtDRKf1HqW4coOPZmrkcHlulBr9F24TJ0Kpfg8MINqYxCH2NrpdR16eMR7KTaaZWXLdKH8/gMjDysxRtQKbILVLNDCbqaC8KU6eLBduJIUilJoChxxUfxTo571NPoKi9bG49Pl2dkN84pPH6lgT5gB0vYreodHOwA7JDSDF37MgCKtP0HU6FePOE8LHhwLNIMNOwLBW9iaZ2G/WVpw7L1nZYiTL73XywLT5t/7BpZ4vq0ew/fgSVAWYynQpRJRrpyeOJ4RHulPiE4TMUJfPZF6nCcVBWZyP79JcumyBH/YLxLJYYjCWYrk6biamFA5NukQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CYXPR11MB8756.namprd11.prod.outlook.com (2603:10b6:930:d6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.19; Thu, 1 Aug
 2024 16:57:42 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 16:57:42 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <66f8959522a679d80eb71ba8dae47b86d94e71d9.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <66f8959522a679d80eb71ba8dae47b86d94e71d9.1722263308.git.jani.nikula@intel.com>
Subject: Re: [PATCH 03/10] drm/xe/tests: fix drvdata usage
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 13:57:38 -0300
Message-ID: <172253145846.5121.4226200139944139785@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P223CA0014.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::19) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CYXPR11MB8756:EE_
X-MS-Office365-Filtering-Correlation-Id: f0711287-c19c-42b9-5887-08dcb24b0f45
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vm5zVDk1NFA1N0RoVm9KOWt6ejF6c1pyN0xZU0hHTFU0TVh0YlV4RDVIMkdM?=
 =?utf-8?B?UFIvaU5DSm9adVVIdUZpakJQajg5VldHNzluYlRkQ2ZCcnpQZzFGNWpwOU95?=
 =?utf-8?B?aDhEdDRabmM5YXEzMkFEd0o0aFNZaStsOE8wZTZxbWpLOGRFYmJXQXpqMjlt?=
 =?utf-8?B?a09LUGJUM1NGZy83SUZWRDFSOERxdU1sc0R4T3h5cmRFcC82dHBHVE5ORmI4?=
 =?utf-8?B?Z2RyVnNKTlJDQ2tJZi94c205M1ZMWmRvcjFxYkN1NnJlZElFZHlja2IvQzFP?=
 =?utf-8?B?OEdjV0FvSzlYMEFlSmgxbjZXL1hiaGZjT1gwUUUvZXN6aE5SZFQ0ZHFKT2V5?=
 =?utf-8?B?QURqczd2VmF4MnFiVFhQVzN6aVgycTBnYXFCTkk2azJPMkJ4NGI5Wm10QVF0?=
 =?utf-8?B?RUdTT3pKWTV4RW1sLzFyVVllQkJ6SG9UV3dMZWlqZEhuYWpQbGtqbmFSc3hE?=
 =?utf-8?B?ZllobzE0cVJpV1BlMWJuVTJVd2k5eXluSWRiclhwemxNb3UxbnRGUGhOSUxS?=
 =?utf-8?B?blZHdThtV1hZeEZOTUVwcFZyaUo0WTMreU1kK05kUEVOeDl2T1dGMlJ6RkVq?=
 =?utf-8?B?ZEVKWkpJYVFsL21ZQ2xDUmlJVXhmQ2ptNlpVK1lLWkVTa09jTUF0UGNwemM0?=
 =?utf-8?B?T09pczhOcW43UWNCdmZvQ2NWQUlJa0VDdlNITGR2UTkyYW1iTm9zL054eDk3?=
 =?utf-8?B?eS9ZRExqUG9BTkpQdmZDMDhDcDdZWG1NbzczSmFpZ3U4YS8zT1ljUk4rTlJz?=
 =?utf-8?B?SlpqVms0VjRRcy9QdWlLZFBLN3paMVV6djlCcnVqMEl2VUw3Ny9jYWRhOU41?=
 =?utf-8?B?YU9wcHdSOUwwL0N5c2Z1aU42UGlJV29NbVgyU2xEQjRDYndhRzBaL1Y2V3U4?=
 =?utf-8?B?WDNiMXFBdlcxdTdZN1hNNzhHY3lmQk9nbjVUZm4xOWFDUkEvR1l3SXIxUDBF?=
 =?utf-8?B?RGF3NWZSV2R3eVdENmE3aVFDMW9YcXZmWkx6RFUraEhXOGpqaGZ6SXBja1dK?=
 =?utf-8?B?M0lBWEhHRnRsVXFLY3J2NUpQalNPUi9zUVgyVTFoUGpYU2hpMFhMNE9GNTF3?=
 =?utf-8?B?R1lNR2JtdzZiMWRrSmlMdjNyVExYNS8vMWVCSEZScEJHcUZqSW1ncEhZczdW?=
 =?utf-8?B?dmFKZjN0OTNQT2ozOUZLV0RnaG94M2VGcU4xbFZwNHJEc1VyZk42WklzSzV0?=
 =?utf-8?B?dFhRT2VVUlIyVEk1K0pHbVdXYTJ2bVUrcEVrSHA2cXVDYzl4TnNUZzFacFZv?=
 =?utf-8?B?ZFRTbDNqaENUUENyRWo5Y05oenZSakVkWGt5cTNYbnNwSGd1cW9tRnI4cC9S?=
 =?utf-8?B?bC9xdWJrZm5acnoweHZGeXhDUnJLdUZ2VlhGbVViWDZLQ3haNXVmNVJ3Y21Z?=
 =?utf-8?B?dkpQNHVIL2RwM0lMZzFEV2VzMGwvaml0aGNJc0pmRlRNWm9xVFJneUFOZjdU?=
 =?utf-8?B?SWh2ZGpqVGRUNkhhZlVnNXFvRVRndjVtVDBRTjBQSWxFanE1alFRSjZhRnVj?=
 =?utf-8?B?ZkJnV3ZsOEYzN2VWcEd4ZUFoYXBFdVo4MDJ3dFhINzJ2VHJ2MDIyN3NYbjZy?=
 =?utf-8?B?MGZOci8yZG5aS2UzOXo3MGFrTFRDdVhyNmxCTTZaeHgyTkY0WHRUQVZ6RHZ3?=
 =?utf-8?B?dkxlY0h2ZUx6K053VjJiOTFPRGVLQ3NLV0RvR0FGU05yNnZ4Ukpvam5ka1k4?=
 =?utf-8?B?QlBYSlQ1ZUFjOUQ1c0lOcitGSnh3WERUc1JzUnc1TXdRbW1IS1MyS0kwclk3?=
 =?utf-8?B?NERJNnd1SkhDclBHUmZnc3ZaSFlJeEE0NEx3WkpkZjg0TEJ3NzRnS1BHMURY?=
 =?utf-8?B?NVhjc3p0ZFRweWZFY21udz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzZ1U1d5dGUzSnVSV0Q4dGlldjJlSmxxWjh1R25SQkVtYUpkSDE2TjhJemxs?=
 =?utf-8?B?MlZRandXY2lMNWRkeU1UTXFab2cxaTBUZm44b1NwcmtLZ0hJS3cyZEcwS2FB?=
 =?utf-8?B?UWxUaTBWdGRwc09idG1uOVMzNld3MDA4elpvNm1sMThJSWZhUmc0VWtnRGtC?=
 =?utf-8?B?bEZyK25GSm1OcEVtTjdxOHIrZE56c25MQ2JCME1LM1JXc090cldjMmdkM3N2?=
 =?utf-8?B?YWxuZC9IK0NvU2NIY0F2amVLZllWQnhOaHdhcnpRY3RQeVcrdjB1L2x1eXZu?=
 =?utf-8?B?dmdJeUw0NW52Z1FScTRPOXJkU0phejhJMW1kVSsxd3B4Z243SDFzUTlKV1g1?=
 =?utf-8?B?Vy9pbEcrNEl1T2Vic0ZDbTVtTXBvdnY3NlFNaXYwcUJoWjd1VmFmVGQ2MlFJ?=
 =?utf-8?B?MzA2bHlKRlp5cUZzelV5d3I5YzVVK2x6eXU5dUJjT2RiYVlTbEFhOEc5YXhP?=
 =?utf-8?B?N2JxZlVJeGV3cmIzNDAvTG5TdjQxUGJkWVZDRUZscy9EdzFxRndIQkZNejZP?=
 =?utf-8?B?bC8vTUFPd2d0Mk1ZL2xlR1grWU9XNllPOWZPZzdsa2JFVThQNmxXNzNpZElz?=
 =?utf-8?B?V2hkYy9ZT2xVdXQxL29kZzVQQzJOTUhLSkZKSEpHOFdjSjJwL1A0a3FBUzEr?=
 =?utf-8?B?U1hESDFGN29TUDQzSlBUaExYQStWMk5JcFFLVUNUTHlXRDkxZU9JZ2xTOGE5?=
 =?utf-8?B?TURrQUxBbmpZZ0RDQWpMUFFXclpVTzRqd1N1amthUlhudldOMW05TW5FYVh3?=
 =?utf-8?B?bEUwRFU5WXp2a01EYlRwdkdvcStNU0dIWFBkakZ1WFh4dzFlTXAxb0o3M0hj?=
 =?utf-8?B?UGhJdHJYLzFGcEtGaXdpbHZRVWMvQTVtTUNvcVltMlpleDhVNi82SjQ4WFpZ?=
 =?utf-8?B?YysyVmYraWJQTFVmRkRWVlhkWjB2Q2dydmNibXlRb2lKRll0b2pCTFdJRWxY?=
 =?utf-8?B?ekYxYTI2VWFhUG1oTThwcFE2b3F5ZU8rQ0xSbkEvYnd5bCtWQWZkVzM2eWJU?=
 =?utf-8?B?ZWJ2clBFSHJVUFR5eXBUNW8wUkE3NzN5dkJlMnczekhpaW8zUzFWQmd0OW9B?=
 =?utf-8?B?ZHFuVE5qQTFSS2NZclo5L2hXcEZGakJqMCt2L1dPZDlwanRPdm96bGE4aXZ2?=
 =?utf-8?B?NTdRTDBxRnRsUXJFUDVMVi8wQWZ6Z3hvRWprbWg2V0pHaGorYmZ0SDBmWWF0?=
 =?utf-8?B?cno0V0plNjBjN0NhcUh4SEdMR2lReHkrWUJzK1hWQVUySFV2dk43VzhhbGJm?=
 =?utf-8?B?UkpUTE96dW1CWWtSekdiNmVJZDF3cGZQMjM3dWR0d01UY2o5N0VoS2ZwZnZS?=
 =?utf-8?B?cS9Hc2tQYXJrU0FKOS9XMmlJREJ5QzR4blFjUTBVZDBYeEU0aXB6MXQ1eFNl?=
 =?utf-8?B?Mk1rUFFjdTh0eWNoTTd6YXBBb1JReTVkS2RQMi9XRmdjYlFSYjhjRCtjUU9a?=
 =?utf-8?B?U0dMMktTdTVaOFp1QVhqOHgyZ01KV3VFL3NNcTE3WlFZek9oN21pQXgwRXVh?=
 =?utf-8?B?RU9NWlU0MW1jWUo5cmh0ejhjSFVEa1dWdVNOajB0bUFJY0JGaXlXbXdXbkh6?=
 =?utf-8?B?L3JMNEZ4dWxwVnNrZlpFeHZDSjdpWm9xbGkvNzZZZmRqMkZ1bG55N2VCYjBD?=
 =?utf-8?B?RmhtVnBZR2paK29ORGFHN3B3Zm9NTHV2d3lqYk91TTdjQzJPYWVXbGFGdjF0?=
 =?utf-8?B?TTdrNVpIeHFXRUtPNS9Ib01SVU8vZlA1ZUxHTGZZYkMvRTAweDY0OWFYbWVT?=
 =?utf-8?B?SFpZbktoYWxhdUl0YmRLWkxYY0paRkhLaG0rM09tUlFlZHBpL3V4OWNZdGs5?=
 =?utf-8?B?dWdTTmJNR0FQRkRrUXlqU3MxSTNHUjBJUXFzcEpELysvNzlrc1NmQVUyVGd2?=
 =?utf-8?B?TUREc2Z6Vk42SG1xQzhVRm1zR0wrMTU1QXVQYlVFRFQ1WmlXbHB6K0tTTngy?=
 =?utf-8?B?aVRpbk4vQ3AwV1ExOHFsUUI4aWlyc3EydHVmRzZ1a0I0Ynl4cGVFUTBGb3lF?=
 =?utf-8?B?ZStGR1JvM1liNHNwVGhsbU84YVk4cnJScjZnQzcwY2N0WVhySDgxM040TXE3?=
 =?utf-8?B?YnZyVGJiUCtvcFpSZEhoZDJ5NzZGcnp4ODRodWlvUHpKZG1Hak9LVVNYdWV6?=
 =?utf-8?B?MHNFNkdLM3UrdFZON1BqREh6RDJpb2NkTVRhc2MxaTYxZHYrSzZJUk04ZnFJ?=
 =?utf-8?B?bXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f0711287-c19c-42b9-5887-08dcb24b0f45
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 16:57:42.9037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QZmSg/Q+OGmjpKO0sYpX2wzCs9CFSUNhv/nxUE+aFfFuNBi4tjeZ6+8qkwc9ekDftaGOMcG6rG/Ie2ZhdNd1Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8756
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

Quoting Jani Nikula (2024-07-29 11:30:04-03:00)
>The test code seems to assume struct drm_device * is stored in
>drvdata. This is (currently) not the case. Use the proper helper to get
>at the xe device.
>
>This has not been an issue, because struct drm_device is embedded in
>struct xe_device at offset 0.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

The fix looks correct, so:

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

I noticed that xe_call_for_each_device() stopped being used as of commit
57ecead343e7 ("drm/xe/tests: Convert xe_mocs live tests"), so we could
also have a patch removing it and dev_to_xe_device_fn().

--
Gustavo Sousa

>---
> drivers/gpu/drm/xe/tests/xe_pci.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/tests/xe_pci.c b/drivers/gpu/drm/xe/tests/=
xe_pci.c
>index 577ee7d14381..2046789f62bd 100644
>--- a/drivers/gpu/drm/xe/tests/xe_pci.c
>+++ b/drivers/gpu/drm/xe/tests/xe_pci.c
>@@ -20,15 +20,15 @@ struct kunit_test_data {
> static int dev_to_xe_device_fn(struct device *dev, void *__data)
>=20
> {
>-        struct drm_device *drm =3D dev_get_drvdata(dev);
>+        struct xe_device *xe =3D kdev_to_xe_device(dev);
>         struct kunit_test_data *data =3D __data;
>         int ret =3D 0;
>         int idx;
>=20
>         data->ndevs++;
>=20
>-        if (drm_dev_enter(drm, &idx))
>-                ret =3D data->xe_fn(to_xe_device(dev_get_drvdata(dev)));
>+        if (drm_dev_enter(&xe->drm, &idx))
>+                ret =3D data->xe_fn(xe);
>         drm_dev_exit(idx);
>=20
>         return ret;
>--=20
>2.39.2
>

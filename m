Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E47629686EC
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 14:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5E210E2C9;
	Mon,  2 Sep 2024 12:03:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LYIXVY4l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC3F10E2C9;
 Mon,  2 Sep 2024 12:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725278617; x=1756814617;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=USbgh6YUPWhH3h0vLWfBvBW4w/9vvHQ7tJqh6yiDpHU=;
 b=LYIXVY4lvKCdzChNpDJSXO8trBOZ8XlV5X1f//cdPt3ktWRmlocOy1BR
 2Lcrzko4g39b7sLn3iTrVm0oidxvU2e19Nzk8FYtGr7NLa5TCIwLWKsTw
 rWx0XBF0tVuULxnll0Wp7HJEq48N2Tm2gSUtB7CL3Ole0+l78+d/RJ82C
 ukK4oTVMdY86nHHEyvraq6rMCa5zRDwZaxtVvk974HoOiEg6wfxLz8uCS
 WjnFbsQsaBDjOr7/fs1gdy2W6o4QOne0gxiZMWTW4lyNszP79z7ImOhIc
 7LJRwL7B0FVWidsZzeGeKOsm/gMbfPPdNFlUEM6TZwhD2QXezqh+e/GZE Q==;
X-CSE-ConnectionGUID: nZPl+11QS0ujC9K/ntcVMQ==
X-CSE-MsgGUID: GEuENwF5Rty1e/8qWno1hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="46372614"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="46372614"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 04:54:40 -0700
X-CSE-ConnectionGUID: OLtzCPohTlKn/JwLAT0QSw==
X-CSE-MsgGUID: 245yINKnTI2LIto+KTPrUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64595133"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 04:52:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:52:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:52:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 04:52:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 04:52:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dij8BFg3Qt5eCpTi5cqjSEvs0rLEgYe1OJyEmMIF2SBzldTYzrVYem7GRxgMJhp4NzyPfqQToxP4tIpoYPziRuWuMMHaTkciyC715hn68JZElhqI79mmg0aHBWLjJCs7YWsnkmXZYGAhE//tcP9cDpoyjMGCptQ9mBx56XkZhf6+iXx/osC2Tj8zBMl+xhIYuNRJT+CV85n74z2hd6TMjbqYljhUYBDqDcCB4BS5grlY40cEhecqxYzVNgehz1pSxMnlLitORA0LlhrIcoxEBCJttywlTfVTIVaxn6SOm7VSTT6Kn2xtUEYDA1eu3gQREdHJwZ5y3cjbGh8K85a3uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/0JCvCx5uTeu8nM21x/LmBS3UH0osWOEEvYmv16hLJA=;
 b=O7yplmCGZuK38fYPP2V87vMO2d3inGIDRFbmWeYci/eeO4WlsqndxKt+jMWuWqZ7Rt+6n88PqNXJA2GFE2ujt95wUfKpUweiOF3NojWOU4AWPAehq5stMSq7L32V3gg35urnoVXaczkOT4X7rde3OpErHUMebUIkZ+kV+hv6NgPTWQzzhLks5QFQEOMGYFoQ9v/eo6tM+qSpLw56ZBKN1QIEvByPSwTk6mkpP0mI/a3l/CQcfVU67O1HlOCKMNHL8NVncBO1wTwpGBJetlREZcBV8bNJhTZVN+deJ+Heop/E+W4RqxAsi7Ccc1TE9NubMVmk5ap1c2xYBbW48SR1Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8317.namprd11.prod.outlook.com (2603:10b6:806:38d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 08:47:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 08:47:45 +0000
Message-ID: <a1463321-5e1d-44f7-8c4e-26d4612c950b@intel.com>
Date: Mon, 2 Sep 2024 14:17:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915() in
 GSC messaging
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <rodrigo.vivi@intel.com>, <lucas.demarchi@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
References: <cover.1724942754.git.jani.nikula@intel.com>
 <efd5c4c164c01b7ee50ad43f202b074b373fb810.1724942754.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <efd5c4c164c01b7ee50ad43f202b074b373fb810.1724942754.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0154.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::24) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8317:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c21fdea-e2ae-41b8-ac8a-08dccb2bea08
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y3BPUHhpQ1M3cVNpbDdZNE9tY1AzWHpWaEhoOEdZMmErZWowaUI2SVZFQjFM?=
 =?utf-8?B?NXY2ZHRCa0NabzJDYm12YUpwQ29WUUZteWUvVEJoczdVdzFWVVZoaEJNK01K?=
 =?utf-8?B?d1pzMTZIc01WRHc0bmpsNVpDMXluZkxsUlc5TzVtRC9ydTlPcmcyQmdBOG1X?=
 =?utf-8?B?bUlDbFduQzFPOGtFaXJYMzExRnFXN2NHUEx2OU9JOHMreS84KzVyL1ZhenZ6?=
 =?utf-8?B?UmFNdFVoUXNCMW4yN1RVR0lqVms2NXBlU1NyZHd2OVZrNGVzRFlCelN1TGwr?=
 =?utf-8?B?SVNuREo5VHBCQW5ieFc1K1lBUkV6T2kzc1loblFvajUwRjVOaWYzMnpKTVdk?=
 =?utf-8?B?NTBLbFhQejVuSG0rYisyb0tLeDllbHZOODNHUUEwNG5ITHlMZzV1a09RcUNs?=
 =?utf-8?B?OC85MmJqY0NTdWF1eW5MNnA4Nk9VdmxFSHBOZ3ZhbGNHTjl3d0pxWC82SDFy?=
 =?utf-8?B?M09ML1JsWUxvSG9ZaHhpTHVZQXAyNWEzSVlvRlBDTUJMWTJIY2Y2OWIzQlRX?=
 =?utf-8?B?b3M5VlBydUxZcEhBLzZodmkxV01hbHVXVDBJWjl5bm5tRVl6SFdZSVBubHAz?=
 =?utf-8?B?RHN3QjZISWNYRVpYamtNMSt0OVVTRzFSSVNKdFBTSXZ3OU9pdFkyOE9vQjk4?=
 =?utf-8?B?YklSYjFacm5jVTNVMDNTVE9JM1VnemE2R1NvRWdqZjNpWHAxbGVTTGRBRmY2?=
 =?utf-8?B?d3RhZTdrakJrM2UxT1RMZ0E5NmpRdWp3eE1rYnVONXJNK2RBTW96TEJKNkNh?=
 =?utf-8?B?aUpVZlptb2JSa1dzSm5MSEtNaGJSWG51Y0RWb1hnMmhtQkkyamZONzhIV0d1?=
 =?utf-8?B?NXlGMndpOWdxUUJZUkRXQzJyM0hTUk1JaXBxQ0dSL1RNOUx4cVRndi9rNHIy?=
 =?utf-8?B?TmticVNtZ0xWeWhXNGhLQlBmalRzZFdGdGhCY0gzZ094aThmM25NZ0NtdjMy?=
 =?utf-8?B?VmkvZ1JRbkt5alZZZzVlTTlXZjlpOUxDY01iTUVQM3d2RUt5elZpRFRSMWsx?=
 =?utf-8?B?TFg4emRaSno4bDJwbDBRQ1I3c0IxaVlva0ZpVStUZWdURXVQNzlHZ2IxOTU1?=
 =?utf-8?B?d3g0SURCWjlhSE00My82NEdhTlhZK1dUSnl2c1VDQ2dYWW1sTDdpSE1EbllB?=
 =?utf-8?B?WEFEcmcrT0prbkVtQ2xyTXJqYmRac0xTL2RGeHZJN255TnE1ZjllTGI5TXc5?=
 =?utf-8?B?aHpmMUZKZGJrU1lTNmlQdGFUR1dXblFQSTdTSjZJWldIblVPYldhL0gvRjdi?=
 =?utf-8?B?T1ZzSWVUUjRETGJ6ZHVTMitadUFUc280QzBlQ1dLbmF3Q2d5S0h6eEhVU3J6?=
 =?utf-8?B?aTRSSUEyT0pNOWkxdko3OFNWcEZCTHNZdGtZQjUzd1N5NDBUdktXKzRJUzQ2?=
 =?utf-8?B?NnplUlhQVm9UcWNGSGthanBGWEhxUEVQSjArUHJPTS9NK1U3MDJKVis2RVdm?=
 =?utf-8?B?VWwrT3Ivd0JkUWQ4M2U2d1R5YmtDay9CUFRFMDV6ZWhocnBWQ3F0NEFnMG9Z?=
 =?utf-8?B?bHlWdFdTMlliQnRzcHpmcGQ1RHpZc1JCWCtOSU1IMnFESWlqcFRDeEJ6KzNP?=
 =?utf-8?B?a3R0eDQzK2xIbHZiN2w2TGRLVlJwVFZpWlNiMkxjY1FMVVpXd0F4RmEyMTFQ?=
 =?utf-8?B?a0Rpdys5VnY5dHhIMEZTZkV5NDZiRG9NS21GcFhOeFBhdmdDRW9hN3BJcXA0?=
 =?utf-8?B?KzYxZngxK0FLeSt2b05pZkJ0eEs2aWcydURPVE5yUmg1WGpjS3cyaHRJNytx?=
 =?utf-8?B?QjhrZi9waHkvb1RHM1d3VWkzVG5HNjNPZ0VHWC8wU01xcnNxYXFEcUVXeWFF?=
 =?utf-8?B?cXUwSUdVWi9BY1JsN2FyQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjZueDlRRzRxc3kxRkk4WkRkdXFpZ01ldHh1T2cySXpYemlRNU92eDBtR3NZ?=
 =?utf-8?B?SVdUU3N2akhROGsxQ1ZGVzhGK1NpUmwxb3BTZTdPUW1NZXJBMlVVYzNoaFFK?=
 =?utf-8?B?SU4wU1lEazFNTlpsd0tTMXE0U3pmS3BaZ1JVR2pMVEg4OG0rbmpiMjA2TW5D?=
 =?utf-8?B?djBWOXdJcUtBQUdkaGVhQ3pDa1NtYS93Nk5kVHdITjlzWlljK2cyc1Q1RkVs?=
 =?utf-8?B?Nks2bTM2Sy92Q25KTWdQRUoreElCeSthK2RlM0owbzBoQVZOSERYVjBDL1Vo?=
 =?utf-8?B?eCt4bW9xa2hrajN3RzAwOXRhdGVtcElldE9VTDRaTjFUUGxwYkNvN0ZvaS9r?=
 =?utf-8?B?b1llcE1OT0ZybGliVVVwRzhFbnVmdlI2MHliQ2JjamU1cFE1NXkyekpFbXVw?=
 =?utf-8?B?LzJvM0lncURvNzN2YTRPb2JGZHBoTytzcUt5eUdFY2dxVWs0SHlqL2hyNmMy?=
 =?utf-8?B?MFo4Ty8zZzlld3M5UlZmZ0NaWnRKTmgwU1NxS2N6SHo5YVBBVmRIM0ZLWVpG?=
 =?utf-8?B?cWpyN0FKdGxuMFdzUW9zWUV6ZFhlbGpzRVF2R1dPSWJzVmtYQ3FpTzU1SkxP?=
 =?utf-8?B?WlNKVHJWYmFJM1BnVHA4Ujc0K05HZXl6UTVuQXpQNjJNaFcxV05SQXN0Tzgy?=
 =?utf-8?B?Z3hoSk5JSDF6Wm5wbzBrUVV2SURjU0tnWnh6T1Z6cTF3a3loZ1ZjSmtFRkxu?=
 =?utf-8?B?NWtRa1hCKzZodFdMT3pSZVh1a0M1aHE0M3JMV3dUQjRMdC9iS2k4NFZXeWZs?=
 =?utf-8?B?V3hDcE9rUU1OMlY4NXE5SkRFeUs4T0VweG1sd3h4NmxKTEJpdU5HckRlMFE1?=
 =?utf-8?B?OWI2cFNJc1ovL0k5Q3FTS1haTDNLWFRaaldrOFZRSFdRcmozcnJMcVd0SW9w?=
 =?utf-8?B?SHVIeE1FSUYvWEdSclBhVWVqTGlMYjY0YlIyWkdJNUhRYnFxR1FQRitWT01I?=
 =?utf-8?B?R3E3MFE5VUlEY05ZTytORy92RW1ib1E4NmMwSG5CeW54NFAzR3A5SzV0TWR5?=
 =?utf-8?B?M2NLY2Vxa1VxYkxyaC9GS2FQbVVidlBMTkNHS1VqVHMvbEFvRlZDdlg3NXlY?=
 =?utf-8?B?L2NZQ2JRWWZXRkpWN3Rhek5vREIzUlZSeG5HQ1VreVZxV3NvTGJtT0ZxNGRQ?=
 =?utf-8?B?Tm54V3hYeldTd1BqMEt6ZVBjRUZDOEFTOTZ1MUtOTmJrWldBNUhxbzJNNGRU?=
 =?utf-8?B?dS9ZVmsrYk1tVTZ4dDZOVGNESVQrRWZCWm5ZOEtOOGNHcW5tZEpzM1cyUTdT?=
 =?utf-8?B?R2tZemlZMDBRaVI1NTFIQ0Ivb1NWeXdCcW9MVDBiY1loeG9UZzhpSExGc0dY?=
 =?utf-8?B?MlQ1aXFoQk1Ib1hSZG9BTDgwMjliOXVsYm5nSkVQYmtKZjV1YVBuWGJRQ0hX?=
 =?utf-8?B?S05obVZIU09qZ0dSc1E0QUcvL0YzdWdNK2duYUpla1hrNjdsQTV4NVhZdStJ?=
 =?utf-8?B?aFdIUnBhZjcrZ3A0NE5GU0NEUkNnVkdmcFhTbXNaS0FaS3RkdVUyK3pWZElZ?=
 =?utf-8?B?T2tZMUFJMDBraUVBT3VndFA4TDBFdjlUVTVyMmZoYkorbEZXVjE0QU1KSlpi?=
 =?utf-8?B?Mjg4Yk45b29lejhKWTBzRkxETTdxdGpETCt0Z3lVZzAwZmdYb3RXM0JST1oz?=
 =?utf-8?B?Y2RpbkJnZi94cXdWQXd3byt1UHY5aHNLbTBQanU2My9zTnVhZ2pUYnhUdEVu?=
 =?utf-8?B?ZHUzK1BuelFITUxnQ1pCckI2STFMdTBzQmFnZ1JLV1h6ZFBWajloVExQYWNN?=
 =?utf-8?B?VkpPTDBrUW43aHpSSXdwZWNpb0c0VlVqdTVUWmthTHAydUNtQnNETnEvNjZK?=
 =?utf-8?B?amdZdUZmRW90MGJlajJnd3NRYWtwdHhOT0FkVmxlS01OZXRIOEYxV2FrR3Y4?=
 =?utf-8?B?VlFQNk1lVFFzTjRzZVpVcHpUZUNGdi8xUkdnY0V3L3ZuRG02M1kzWTRsb1h6?=
 =?utf-8?B?aHBlQTZXdVVtRS9DaU9TSnhiMWNxUDlZYTVCc1dVT1hCMTRhcE1VOVVFemkv?=
 =?utf-8?B?dlVZUWF3NUlDVzVQQ3JXanVqWHlJNDc3cU1MSzlORW5xSzNBOTNXZDA1dWZF?=
 =?utf-8?B?VHVqM1ZKdU9Dd1NuVjFEQkFVV3pMcVptU1dlbitMZzNzSlk3NTZPTVowNGRI?=
 =?utf-8?B?Y3cwRXJ1VC81QWxjYTJ6ZktHOXprc3VnQUp4WEJvbEx3VXlLbW9NUlFKK054?=
 =?utf-8?B?M1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c21fdea-e2ae-41b8-ac8a-08dccb2bea08
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 08:47:45.1677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qf8z63XKahYb4xyggs8NTRnLSNopPIVgpL1ZvBWTtMcasEXUPGlyOwIBnKs6OV860NtEdo1EtQubLqZqSBUCjvIEbKU6J7CKiAtFCaDsC18=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8317
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


On 8/29/2024 8:17 PM, Jani Nikula wrote:
> Use to_intel_display() instead of kdev_to_i915() in the HDCP component
> API hooks. Avoid further drive-by changes at this point, and just
> convert the display pointer to i915, and leave the struct intel_display
> conversion for later.
>
> The NULL error checking in the hooks make this a bit cumbersome. I'm not
> actually sure they're really required, but don't go down that rabbit
> hole just now.
>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
>   1 file changed, 45 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index 6548e71b4c49..35bdb532bbb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -7,6 +7,7 @@
>   #include <drm/intel/i915_hdcp_interface.h>
>   
>   #include "i915_drv.h"
> +#include "intel_display_types.h"
>   #include "intel_hdcp_gsc_message.h"
>   
>   int
> @@ -15,17 +16,19 @@ intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
>   {
>   	struct wired_cmd_initiate_hdcp2_session_in session_init_in = {};
>   	struct wired_cmd_initiate_hdcp2_session_out session_init_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   
>   	if (!dev || !data || !ake_data)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	session_init_in.header.api_version = HDCP_API_VERSION;
>   	session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
> @@ -72,17 +75,19 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
>   {
>   	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in = {};
>   	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   
>   	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	verify_rxcert_in.header.api_version = HDCP_API_VERSION;
>   	verify_rxcert_in.header.command_id = WIRED_VERIFY_RECEIVER_CERT;
> @@ -135,17 +140,19 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
>   {
>   	struct wired_cmd_ake_send_hprime_in send_hprime_in = {};
>   	struct wired_cmd_ake_send_hprime_out send_hprime_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   
>   	if (!dev || !data || !rx_hprime)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	send_hprime_in.header.api_version = HDCP_API_VERSION;
>   	send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
> @@ -183,17 +190,19 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *dat
>   {
>   	struct wired_cmd_ake_send_pairing_info_in pairing_info_in = {};
>   	struct wired_cmd_ake_send_pairing_info_out pairing_info_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   
>   	if (!dev || !data || !pairing_info)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	pairing_info_in.header.api_version = HDCP_API_VERSION;
>   	pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
> @@ -234,17 +243,19 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
>   {
>   	struct wired_cmd_init_locality_check_in lc_init_in = {};
>   	struct wired_cmd_init_locality_check_out lc_init_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   
>   	if (!dev || !data || !lc_init_data)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	lc_init_in.header.api_version = HDCP_API_VERSION;
>   	lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
> @@ -280,17 +291,19 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
>   {
>   	struct wired_cmd_validate_locality_in verify_lprime_in = {};
>   	struct wired_cmd_validate_locality_out verify_lprime_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   
>   	if (!dev || !data || !rx_lprime)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	verify_lprime_in.header.api_version = HDCP_API_VERSION;
>   	verify_lprime_in.header.command_id = WIRED_VALIDATE_LOCALITY;
> @@ -330,17 +343,19 @@ int intel_hdcp_gsc_get_session_key(struct device *dev,
>   {
>   	struct wired_cmd_get_session_key_in get_skey_in = {};
>   	struct wired_cmd_get_session_key_out get_skey_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   
>   	if (!dev || !data || !ske_data)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	get_skey_in.header.api_version = HDCP_API_VERSION;
>   	get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
> @@ -382,17 +397,19 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
>   {
>   	struct wired_cmd_verify_repeater_in verify_repeater_in = {};
>   	struct wired_cmd_verify_repeater_out verify_repeater_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   
>   	if (!dev || !rep_topology || !rep_send_ack || !data)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	verify_repeater_in.header.api_version = HDCP_API_VERSION;
>   	verify_repeater_in.header.command_id = WIRED_VERIFY_REPEATER;
> @@ -442,6 +459,7 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
>   {
>   	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
>   	struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   	size_t cmd_size;
> @@ -449,11 +467,12 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
>   	if (!dev || !stream_ready || !data)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	cmd_size = struct_size(verify_mprime_in, streams, data->k);
>   	if (cmd_size == SIZE_MAX)
> @@ -504,17 +523,19 @@ int intel_hdcp_gsc_enable_authentication(struct device *dev,
>   {
>   	struct wired_cmd_enable_auth_in enable_auth_in = {};
>   	struct wired_cmd_enable_auth_out enable_auth_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   
>   	if (!dev || !data)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	enable_auth_in.header.api_version = HDCP_API_VERSION;
>   	enable_auth_in.header.command_id = WIRED_ENABLE_AUTH;
> @@ -549,17 +570,19 @@ intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
>   {
>   	struct wired_cmd_close_session_in session_close_in = {};
>   	struct wired_cmd_close_session_out session_close_out = {};
> +	struct intel_display *display;
>   	struct drm_i915_private *i915;
>   	ssize_t byte;
>   
>   	if (!dev || !data)
>   		return -EINVAL;
>   
> -	i915 = kdev_to_i915(dev);
> -	if (!i915) {
> +	display = to_intel_display(dev);
> +	if (!display) {
>   		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>   		return -ENODEV;
>   	}
> +	i915 = to_i915(display->drm);
>   
>   	session_close_in.header.api_version = HDCP_API_VERSION;
>   	session_close_in.header.command_id = WIRED_CLOSE_SESSION;

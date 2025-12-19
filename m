Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40688CCF12B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 10:00:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32BB10E3EB;
	Fri, 19 Dec 2025 09:00:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZSrKHMaR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DEE910E3EB;
 Fri, 19 Dec 2025 09:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766134822; x=1797670822;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gW8nYIEZqOLYWfBcjKfVwvh2G7wZ4UXrtjJck+5BTb4=;
 b=ZSrKHMaRQfn+c1vSx9dk8pY7qKhv/RiYY+k8SFRLpyRARt+5YWPutxvc
 7u1kQtLIiNBOClJ7ufEr5ld+WVNl5TslgCDIUJCIzBxAjmI95joRWN1Wd
 PX7VCVlFdJxyp0KHuFtEGUueqh909HNHBkYWPMgQc/6sVoKNGtW7bKqQ2
 /rA7aztdDhGeu5GRtxTAMxfq+qFuEf0ikWTa7DnqcgkskbfP2NEd0CUj7
 Y52sqcn3Te3kO39/FWMvXtzpz9/xoxIFm5Th35BeifY4jnG+NZ7DVFMKZ
 6zuFh8OPpREHQFhmI1xm6t/hNXeX0PhJWheUrLFr1WXm1dntCGJc4OZzR A==;
X-CSE-ConnectionGUID: ayzEmpWxRviiiaismTAAFQ==
X-CSE-MsgGUID: ZL0CWwY3S/K8WrYVWGnYoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="78730744"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="78730744"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 01:00:22 -0800
X-CSE-ConnectionGUID: tarznsYHQ+qV4s7uNlXijw==
X-CSE-MsgGUID: j07H5XRSQz6Cp64TEtHEUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="203205583"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 01:00:22 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 01:00:21 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 19 Dec 2025 01:00:21 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.13) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 01:00:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tpaPfAogLld5Alqyr/YJQxgL2jiMPRwylYONmL0CDpMWa1WhHbP6CQHyLuELacheREKJeAZ4JMxGuwmOzu+W1jCn2WQ84+zSI/2Yei9aBDq1fJ65FWXxi1AT6XJzRA8ZTl+yJlKrNa8C9VLJ+HssZB2+ERgjFWOuDc7KCuIRq0wH12nNRNxGqR8Ltw6BGThMeZKeGozVNIDVNziFuC58ZwF803c6J+k2NfbEMfXn/fcgPtrPDHymF+OxqogYGstM3FtzBOkV4PMmmGQDkd2qs6LopfeDa768YULPv9nd8csx99kp7bVLVZ/y5g/xzpn6t8F6M+zWymLsI/dzOyHlrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lBdYNhrotFkVYFtqaFIDCiC2CTkPYVn952YRAd9ErcY=;
 b=vtbJghMo0r5JMiOtqhzBO5DifvDM9EXH3njBhht2mDExi5kVQeO81Llhfbtk0YsKLEZuzDshKucYwmdQlJMi4w8uyXdLyooRqNddhr1kVi4dv3H4dVUMFcMs6N+IFJq1c5piKHH7Cpfcti3yV5reDwOfmc1WHaBCV67T+FV6H112jdYl7lK2JTai2kvGVlv7628cfzzHVRfcNnStA5HmrmByjPbduN26KMiKKm5ySf61f/co/3ZEMfQI1PVxN1+bleITQsh6fT/kNOCmS3+IHxBfM4UaU75fA8MYwPqBNo0Yo9/rKSqAqq6G/7GrpTUgZkUNDb9tmz8Cr+xOTDdpdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7258.namprd11.prod.outlook.com (2603:10b6:208:43d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Fri, 19 Dec
 2025 09:00:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.009; Fri, 19 Dec 2025
 09:00:13 +0000
Message-ID: <1bf1d5f6-a5d7-434a-b1af-2e4663658579@intel.com>
Date: Fri, 19 Dec 2025 14:30:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [core-for-CI] powercap: intel_rapl: Fix possible recursive lock
 warning
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, Chaitanya Kumar
 <chaitanya.kumar.borah@intel.com>, Kuppuswamy Sathyanarayanan
 <sathyanarayanan.kuppuswamy@linux.intel.com>, RavitejaX Veesam
 <ravitejax.veesam@intel.com>, "Rafael J . Wysocki"
 <rafael.j.wysocki@intel.com>
References: <20251218135904.2276976-1-mika.kahola@intel.com>
 <20251218152142.2286655-1-mika.kahola@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251218152142.2286655-1-mika.kahola@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0195.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1aa::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7258:EE_
X-MS-Office365-Filtering-Correlation-Id: 5271643a-b404-4f91-19d7-08de3edd0559
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UDFxS1MzVEN1OWkwdnpDU01aL3l5UlR4cTNUem16OVZjSUVVQnFLbWZ2NWl6?=
 =?utf-8?B?cDFzWEkxd05ldzFTczBqVTVKZkpEUTlPcmJYbFpGM2lPa3VmNno3NGtPQTZk?=
 =?utf-8?B?QXFqNDR0ekl5djdoWlR5bVAzdWRHazBrWDhKNDZ4eHZTM1FwejV4ZUIrMGFh?=
 =?utf-8?B?MlhNUGhNcmdJM0R5ZzQ5UjRHN1Q1MU96MzBBWk5BUDVGVjZBdTZyeGIwWDY1?=
 =?utf-8?B?WU4wK05jNk4rb1Y5YWZIZHl1R3d2YVJoWkNFNktEYTZGWUZXS3hlalRLUmN4?=
 =?utf-8?B?b3djcS9FOWprTjFURGRvMVJBejZMc0lySnBvVHZFYXVQcU5qUWtlVlU3NkJ4?=
 =?utf-8?B?OWp3VEl0bXhaMTlNdjI4Zk5kN2w1REhsMHVrUmR0N0ZJSHNINjBDTEhoNGky?=
 =?utf-8?B?eU1sV1VIbWtiSnFyYVArTXhCL2IvK3RkaWpUWjE2UWVUd3Q4a1JZNmc5cVJ3?=
 =?utf-8?B?dUpiUEg3bWQ2ZVdCV1krVkFDd3FJdW9MMWZwSG82eTZRVUdtVGV4cHV3MnFW?=
 =?utf-8?B?UXcvdUdJTmtLSHVYSmdPS29pYm51RW56blF5aUZjNE1UWVJVMVpEVzE4RzQ4?=
 =?utf-8?B?QnVYazZwMFNIOFpMNlNpaTJFMW5mdmtFUGp3Q2tJWXNEbitkSEZHVnNWdmhB?=
 =?utf-8?B?dnNidXFpMTNFTUhRbk5Yc0p1S2ZHdkdYUlVQMmpVbDlGUWRxbUp6SFhMZU9l?=
 =?utf-8?B?TEdYeTdPSUZjRHFrY05CeTM4aW9uZEZOTU1neVpvQTl4bkl4eWM1NDYvYVJn?=
 =?utf-8?B?OS9lZmhxUG9DMXNLc0FzRnQwdE5idjRveXlOMXRJRkU0bTVJaytEV3MyQlpn?=
 =?utf-8?B?b0JWMm95bElFa3BKTTl1TkE4YkJwT2VidmR1MFpma2JuSlNoT0p0MXRZN0Vq?=
 =?utf-8?B?aWlsaTN4WmpzVFNhZnFLSjArNUtOdWVPSjNNVVJDU1Q4d0x2SHl3L01sTTVO?=
 =?utf-8?B?N29hSTIxenNaRGNHVGJDVjAyR0pscTZ0THg5b2R1RGFqeHovOXFhV1Q1SkNu?=
 =?utf-8?B?aDV5SExBTGh0MVN6OU5ueXhJamlHclVSdkJLRjQ0NFVUSGREb2QvcE1YS3pF?=
 =?utf-8?B?UXN0U3IvcHowR01uWXZYWXdNL3ZJWEhOc3pnQXVoQmV2ODYrMXlJc0hibE0z?=
 =?utf-8?B?TDRxVVllVEJkOGpsSU1wUktVVWZFbDZTU3BiUWd4bTF0bzU3NDBibkVrYzVr?=
 =?utf-8?B?U0IvY1h6aVFUNGZOM3BPYXlGRHJwdnBOZUR1MEMyNEJQR1FJZnJxdTczMlU3?=
 =?utf-8?B?Z1EvdWFobUJvUEtrSTZWTHMyVllKQ3A5aG9JYi9mSlQ1am5SOUFpQ2xhV0Ew?=
 =?utf-8?B?Z1ZmWWtzMnJlUkU0NTVZc0tRN0hYZSszQTd0UWcwRUcza1g5aklQR1pvenhE?=
 =?utf-8?B?Z2FPdDk2Q01pcURwVWFMOTE1ZUc3Ulg1dDhGTUUyRUsyQTNSRlhnSU93eWIw?=
 =?utf-8?B?d2gram5OYkxUOU5VcEdETG1jVGo2Q01SeEhuUHJkcStaMXJGUDZTSGkra3hm?=
 =?utf-8?B?ck5IRmljRXd6S01ZcC9qSmhidUZ1TjhBTTAyRE5VY3ZMV3ZlVDVlWkl5cExN?=
 =?utf-8?B?Rit5ZkdqS1hTRE1vTHdlVXhzMitJNVNmNjRFSXBZRDg4YUQ4NURZdnNpUFRj?=
 =?utf-8?B?UEpEb0JpRnlZL1FsNzU5NmVTMVRTbm5DWmVHVytnOFlWaFBmakcvZ3RETWhj?=
 =?utf-8?B?a0tMVERnSnRSU2F3cVFva2g4VUN3T2tnMmkya3dBUjFpSVIrKzNYUUhNWHMz?=
 =?utf-8?B?R2c3SVZaaHFxMkIwWE1YUzhhRjFhWkhHZW0wR3J0RXhVUDJSWlUyWXV4VkZH?=
 =?utf-8?B?WVB3RnN2L1NXWFhzQ0hXOEx6QVVEeXB0RXFzMnFuSy9rWk1SMUxKYnNISzdD?=
 =?utf-8?B?VXk2aktLeWw2cW9YRmdwYkRoSHNsTnJQL2dIdTc3MzRqMmY4RWY0RWN6dHVB?=
 =?utf-8?Q?rcegWLFx0KA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rm8vSU9rTWllUVQzajdINEtXNm9EZDl0a1paWE16TmlQVW83RU5LWmN4ZGVs?=
 =?utf-8?B?Z2w3alNFQ2dmUkRLd2RJUG1DNk4xYkhHV2o1K1lRUTlET01TSk9TVjREYUE0?=
 =?utf-8?B?UnRvL29tWExpNHZhcW1wMmg5MW1wakYwYUR0Z1FHUEZpUFBvVXJqYW0rOU1G?=
 =?utf-8?B?cTJUeUw1eURYb1VqSjNKblBsMklKL0FpS1VZc2RFZzR2bFBVa1VCeWVlZTM5?=
 =?utf-8?B?Nmxtb2g3Sm1xOGJKdlVjRHRoeStQT2EwNE83eVZxV0hHYWtDS1ppOWdJWG90?=
 =?utf-8?B?cCswN2s2akt1cVJTd0RZeXIzaThGT1hycGZuanhxMkFNTlVNQ1Z3YTIzYm03?=
 =?utf-8?B?ck9Fa1ZiRTlzelJLbzFJT0tMME9pbUxwdUhmNHVaTmxib0JjYStqeWZkd2dx?=
 =?utf-8?B?U3c5TEFiMEp2aTZBWk5zdHhkc0Zhcm5SdVE5SzQ0Y0JXYWMzSVJjQTY3eTRv?=
 =?utf-8?B?S1RTYmZBTUFsSzc3d1pXY3VidWlJbTlGaWFBVzRsckxQMi9HYmFsSHRiR0dR?=
 =?utf-8?B?WE1sMVNERkxlS1lXNzA2TnB5TWdSNDVyaDN5c1RyOWhOWjd1cDhSUlhGSDgr?=
 =?utf-8?B?aUhUcTQ2TFRNRDdVVGt3ditXRzBRaTBuRmN4RWdkUklHL1pRNWw0VC9oMHdm?=
 =?utf-8?B?UWpDdG5zbE5VYUZVRGQ3MDF2TlF1YjczV0g3Wm9qbVBUdmdkSWt5d09iK2dz?=
 =?utf-8?B?Mklkb0pDalltTzIvR2NLTlI2NnJBanJzdFY2OFRUZmlha3lvUzlKSjZuWlF0?=
 =?utf-8?B?c1BQL2lGZitYS3JKek9YK0Flcm1PNGROTmN3Qjg1QUd2VjhaVEI0SFpOcStV?=
 =?utf-8?B?WFkxQzZ5NjFFaTJ4Y2crU3FTblNzSnAwYmdwbGlUeG15YjdPN0VsSTVnSjg5?=
 =?utf-8?B?SVhBOHFUSjRIcWZWdDF2L1laUGt5RUxwT2VRSzBhQlNWNHpaYlhkUXJSTVQ2?=
 =?utf-8?B?Ry9FTzAyRlRubHdaRUt5SDNVMXEySXdMeURmbFUxSEJFZndWck1XUXEvWnZO?=
 =?utf-8?B?dzBPeThLanpJemp1YzhSb0VmVzJFQU55S3pMdkRzMFdwZmcvOERRUzZjc2cx?=
 =?utf-8?B?SGNteWtRRmRnaUtTOWE2WDMxdTYxUUk4eUNkRG9xVWpyUGNrOXdocUdTODVm?=
 =?utf-8?B?d1pVajJnRzVIRU53VSsvc2plcjIvS0hKaVlvV0hLS1pQOVAxMm1kYlVnVHQz?=
 =?utf-8?B?VjgwSkovM0QyejdTM20zcVZuaXRmdkZVeUgvV0hmTDFpNzB5QlpvZDROdnYr?=
 =?utf-8?B?eDJhNE9CejZmRnVtOGdKRjBvV1RTTWZwdWN3QTZHaE92Ym0ySDJxMkRtMk9p?=
 =?utf-8?B?eDczK0NtQTZmSnFTdm5MN0FhQ0RWeEIvN3BrekkvWVVXeWpXZkZ3TUNJMnRa?=
 =?utf-8?B?VHRmUEowNGg3OFpNZVhFRUNLZ3dJaUlLZ2dvNTR0R3NIQnNKeW9USFJDME83?=
 =?utf-8?B?WmZEQ2RYOTBYeUFpd0pVVHdlSnlKUEdqSTByaENENHE1aFNvZGN6eWZuZnpn?=
 =?utf-8?B?UENMQXcrSnlVTmZGaXFvRklWSnRuamR2M2RmOG50YWhKWFpGR1FrR21hVXlq?=
 =?utf-8?B?d25Qai9vaGlGVTVlZ3NWc0JoSjhwSjd3WGlNQndWbVQwWS8xTDYwaGhQUXho?=
 =?utf-8?B?NVBMY3ZHKzJrUm1lU3MzenlHeklpTkNsV29LQ3NwZHc1VUZuV0lDdU1aSGJQ?=
 =?utf-8?B?MHNaRnJvQlJZbmdlS2JMVFdiakRBclR6cllyNU0vcFRaVWxIai9uMGQ4QU9O?=
 =?utf-8?B?a01tNTh4cm1jaDFpMzNnZmY1bVpFeVAya3JyVlBidnNuZTJrYXE1Zk12a0sy?=
 =?utf-8?B?VXdrYTVJT3laUFcyYjhiVkkzVSs1cHZOUkVEZXNHRktJZDNrWDJTTlR1YjJZ?=
 =?utf-8?B?cUR6QTlUSVA5dmJMWVFYeUJoaHRRUmxPTU9ER2FSd3A4cVdBV29zRzBZdnZF?=
 =?utf-8?B?YXVwelNZNHovdVRuelFLMGpCQlYwMXJMSDZmOVdiaGxMT0dNSUZ5WnpCUWo5?=
 =?utf-8?B?ZE5pWEowU0Ewd3cySjV3U3o3SE9mdGp3KzUyd1o1bG83azBlMy9iWjdNbjZi?=
 =?utf-8?B?THlqWlpia0lhZklkVGdMdFlNREI1QWNvUmhnTG9KczNjb0MrcU9rRHhSd3BO?=
 =?utf-8?B?dnFxVkpWRGYxbDh5QUlFMGRvbkpSNWx5d0NJN1pTT3d2L3RXd05HNSswUkdp?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5271643a-b404-4f91-19d7-08de3edd0559
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 09:00:13.5633 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vg35+Bb6ZRMaopeuRP2tkI5kRlIrYxXv4g3cOt4F1JDKj1PzDc1TeVf/m5vfrCAfaOkuxpc1xQVDWUyPognhjWk0SGd2PNjD6WTwrMuQkbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7258
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


On 12/18/2025 8:51 PM, Mika Kahola wrote:
> From: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
>
> With the RAPL PMU addition, there is a recursive locking when CPU online
> callback function calls rapl_package_add_pmu(). Here cpu_hotplug_lock
> is already acquired by cpuhp_thread_fun() and rapl_package_add_pmu()
> tries to acquire again.
>
> <4>[ 8.197433] ============================================
> <4>[ 8.197437] WARNING: possible recursive locking detected
> <4>[ 8.197440] 6.19.0-rc1-lgci-xe-xe-4242-05b7c58b3367dca84+ #1 Not tainted
> <4>[ 8.197444] --------------------------------------------
> <4>[ 8.197447] cpuhp/0/20 is trying to acquire lock:
> <4>[ 8.197450] ffffffff83487870 (cpu_hotplug_lock){++++}-{0:0}, at:
> rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197463]
> but task is already holding lock:
> <4>[ 8.197466] ffffffff83487870 (cpu_hotplug_lock){++++}-{0:0}, at:
> cpuhp_thread_fun+0x6d/0x290
> <4>[ 8.197477]
> other info that might help us debug this:
> <4>[ 8.197480] Possible unsafe locking scenario:
>
> <4>[ 8.197483] CPU0
> <4>[ 8.197485] ----
> <4>[ 8.197487] lock(cpu_hotplug_lock);
> <4>[ 8.197490] lock(cpu_hotplug_lock);
> <4>[ 8.197493]
> *** DEADLOCK ***
> ..
> ..
> <4>[ 8.197542] __lock_acquire+0x146e/0x2790
> <4>[ 8.197548] lock_acquire+0xc4/0x2c0
> <4>[ 8.197550] ? rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197556] cpus_read_lock+0x41/0x110
> <4>[ 8.197558] ? rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197561] rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197565] rapl_cpu_online+0x85/0x87 [intel_rapl_msr]
> <4>[ 8.197568] ? __pfx_rapl_cpu_online+0x10/0x10 [intel_rapl_msr]
> <4>[ 8.197570] cpuhp_invoke_callback+0x41f/0x6c0
> <4>[ 8.197573] ? cpuhp_thread_fun+0x6d/0x290
> <4>[ 8.197575] cpuhp_thread_fun+0x1e2/0x290
> <4>[ 8.197578] ? smpboot_thread_fn+0x26/0x290
> <4>[ 8.197581] smpboot_thread_fn+0x12f/0x290
> <4>[ 8.197584] ? __pfx_smpboot_thread_fn+0x10/0x10
> <4>[ 8.197586] kthread+0x11f/0x250
> <4>[ 8.197589] ? __pfx_kthread+0x10/0x10
> <4>[ 8.197592] ret_from_fork+0x344/0x3a0
> <4>[ 8.197595] ? __pfx_kthread+0x10/0x10
> <4>[ 8.197597] ret_from_fork_asm+0x1a/0x30
> <4>[ 8.197604] </TASK>
>
> Fix this issue in the same way as rapl powercap package domain is added
> from the same CPU online callback by introducing another interface which
> doesn't call cpus_read_lock(). Add rapl_package_add_pmu_locked() and
> rapl_package_remove_pmu_locked() which don't call cpus_read_lock().
>
> Fixes: 748d6ba43afd ("powercap: intel_rapl: Enable MSR-based RAPL PMU support")
> Reported-by: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Closes: https://lore.kernel.org/linux-pm/5427ede1-57a0-43d1-99f3-8ca4b0643e82@intel.com/T/#u
> Tested-by: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
> Tested-by: RavitejaX Veesam <ravitejax.veesam@intel.com>
> Signed-off-by: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
> Link: https://patch.msgid.link/20251217153455.3560176-1-srinivas.pandruvada@linux.intel.com
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Acked-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/powercap/intel_rapl_common.c | 24 ++++++++++++++++++------
>   drivers/powercap/intel_rapl_msr.c    |  4 ++--
>   include/linux/intel_rapl.h           |  4 ++++
>   3 files changed, 24 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/powercap/intel_rapl_common.c b/drivers/powercap/intel_rapl_common.c
> index b9d87e56cbbc..3ff6da3bf4e6 100644
> --- a/drivers/powercap/intel_rapl_common.c
> +++ b/drivers/powercap/intel_rapl_common.c
> @@ -2032,7 +2032,7 @@ static int rapl_pmu_update(struct rapl_package *rp)
>   	return ret;
>   }
>   
> -int rapl_package_add_pmu(struct rapl_package *rp)
> +int rapl_package_add_pmu_locked(struct rapl_package *rp)
>   {
>   	struct rapl_package_pmu_data *data = &rp->pmu_data;
>   	int idx;
> @@ -2040,8 +2040,6 @@ int rapl_package_add_pmu(struct rapl_package *rp)
>   	if (rp->has_pmu)
>   		return -EEXIST;
>   
> -	guard(cpus_read_lock)();
> -
>   	for (idx = 0; idx < rp->nr_domains; idx++) {
>   		struct rapl_domain *rd = &rp->domains[idx];
>   		int domain = rd->id;
> @@ -2091,17 +2089,23 @@ int rapl_package_add_pmu(struct rapl_package *rp)
>   
>   	return rapl_pmu_update(rp);
>   }
> +EXPORT_SYMBOL_GPL(rapl_package_add_pmu_locked);
> +
> +int rapl_package_add_pmu(struct rapl_package *rp)
> +{
> +	guard(cpus_read_lock)();
> +
> +	return rapl_package_add_pmu_locked(rp);
> +}
>   EXPORT_SYMBOL_GPL(rapl_package_add_pmu);
>   
> -void rapl_package_remove_pmu(struct rapl_package *rp)
> +void rapl_package_remove_pmu_locked(struct rapl_package *rp)
>   {
>   	struct rapl_package *pos;
>   
>   	if (!rp->has_pmu)
>   		return;
>   
> -	guard(cpus_read_lock)();
> -
>   	list_for_each_entry(pos, &rapl_packages, plist) {
>   		/* PMU is still needed */
>   		if (pos->has_pmu && pos != rp)
> @@ -2111,6 +2115,14 @@ void rapl_package_remove_pmu(struct rapl_package *rp)
>   	perf_pmu_unregister(&rapl_pmu.pmu);
>   	memset(&rapl_pmu, 0, sizeof(struct rapl_pmu));
>   }
> +EXPORT_SYMBOL_GPL(rapl_package_remove_pmu_locked);
> +
> +void rapl_package_remove_pmu(struct rapl_package *rp)
> +{
> +	guard(cpus_read_lock)();
> +
> +	rapl_package_remove_pmu_locked(rp);
> +}
>   EXPORT_SYMBOL_GPL(rapl_package_remove_pmu);
>   #endif
>   
> diff --git a/drivers/powercap/intel_rapl_msr.c b/drivers/powercap/intel_rapl_msr.c
> index 0ce1096b6314..9a7e150b3536 100644
> --- a/drivers/powercap/intel_rapl_msr.c
> +++ b/drivers/powercap/intel_rapl_msr.c
> @@ -82,7 +82,7 @@ static int rapl_cpu_online(unsigned int cpu)
>   		if (IS_ERR(rp))
>   			return PTR_ERR(rp);
>   		if (rapl_msr_pmu)
> -			rapl_package_add_pmu(rp);
> +			rapl_package_add_pmu_locked(rp);
>   	}
>   	cpumask_set_cpu(cpu, &rp->cpumask);
>   	return 0;
> @@ -101,7 +101,7 @@ static int rapl_cpu_down_prep(unsigned int cpu)
>   	lead_cpu = cpumask_first(&rp->cpumask);
>   	if (lead_cpu >= nr_cpu_ids) {
>   		if (rapl_msr_pmu)
> -			rapl_package_remove_pmu(rp);
> +			rapl_package_remove_pmu_locked(rp);
>   		rapl_remove_package_cpuslocked(rp);
>   	} else if (rp->lead_cpu == cpu) {
>   		rp->lead_cpu = lead_cpu;
> diff --git a/include/linux/intel_rapl.h b/include/linux/intel_rapl.h
> index e9ade2ff4af6..f479ef5b3341 100644
> --- a/include/linux/intel_rapl.h
> +++ b/include/linux/intel_rapl.h
> @@ -214,10 +214,14 @@ void rapl_remove_package(struct rapl_package *rp);
>   
>   #ifdef CONFIG_PERF_EVENTS
>   int rapl_package_add_pmu(struct rapl_package *rp);
> +int rapl_package_add_pmu_locked(struct rapl_package *rp);
>   void rapl_package_remove_pmu(struct rapl_package *rp);
> +void rapl_package_remove_pmu_locked(struct rapl_package *rp);
>   #else
>   static inline int rapl_package_add_pmu(struct rapl_package *rp) { return 0; }
> +static inline int rapl_package_add_pmu_locked(struct rapl_package *rp) { return 0; }
>   static inline void rapl_package_remove_pmu(struct rapl_package *rp) { }
> +static inline void rapl_package_remove_pmu_locked(struct rapl_package *rp) { }
>   #endif
>   
>   #endif /* __INTEL_RAPL_H__ */

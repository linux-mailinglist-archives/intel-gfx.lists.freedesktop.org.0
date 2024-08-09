Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7635694D099
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 14:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC2010E91F;
	Fri,  9 Aug 2024 12:55:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ue4Jn3MU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82BD10E91E;
 Fri,  9 Aug 2024 12:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723208122; x=1754744122;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=XRe54cwH4ki7M7bsmkjA1dbthPwTmkMF68vFu+D4G48=;
 b=Ue4Jn3MUjXeaSLvw1ilnVn+hVVnWrpa+F8WKAp6BwwMd9PHnkaN6ZsIF
 tOCwxC8M4SG88OffvqsCn9Q5xXA2M3FWkUXM2G3CgMzURsGPEggucWjab
 TxyJJx3lFXo8fELQg/UGWt+7OdeVG1qjINB3Z9H1keOvOY2KhVE5xC5rF
 WWDPMWD+Pxwf7LjNyGrSj8a/jWxT5mgJR2smMZNYfBImTdyPtKkO1WRSC
 hztFkma/TwpjsNnubUR0Gfu9ISgUbMwzj5eQLgsH9rDYOkvJyT+1dpiYC
 s+WGipABWmZFM7KHkS0WOCK/U5lg+7+SzxDbVoJIQN380VYPq9VlpAGEd Q==;
X-CSE-ConnectionGUID: 4HaJJefmSjyA2WYybCcSeA==
X-CSE-MsgGUID: pVbpqc75Qtq1L4fjTVSf3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21522253"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="21522253"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 05:55:21 -0700
X-CSE-ConnectionGUID: B316wBFVRJuOjuvJMM2JLw==
X-CSE-MsgGUID: 3VK7WUfhQ+GUDw8pWQfRXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="62403213"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Aug 2024 05:55:21 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 05:55:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 9 Aug 2024 05:55:20 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 9 Aug 2024 05:55:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kta9LpPSqL8G/C2dqZhXRmuAJ8vRW3o8ZyEB/P2Ppywf/Qoz5ubZ6/1yE+a04bZG2SjGxrRL4HnlXPGHa96nzOum2DX88MRUgFbdBY7ZjD9j0Qo7JzlkTsF+AQgSErvdW6UNlBNsA/7y1TIHuT1BqHC+QIA/eTVWLzHfNvGxJlfqX8OpPJc58g373wLmgbSA0/KJ6nly61dAjUtYyO52NzcbWHGV4LSLiK9JmfrgNhEDM1eShSfQkU+QIvP0rgwPz11gQ5FLnmIf779AICHLYZ08qL4NNwi9WtixdtaBezqyRGGNoetRJ6m+BZgOCJE4GoF2j/2ZDgL4ZyMrDEeKJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mZ7zF5pUbxxiFgmqwEzTrJwUgWIv6bSx2IfLNBdbAZM=;
 b=JxZhy1fStDAgCkjV0XTUGyd8PFLrmttPe+h1MN8Mk8q576f6+jAoToAeQ9G0cs8P5qnzPKSZpp9uve8KjsSdXLkhSvC7F9Cbk/Em8LrjUF7J/Mmt9Pj+J3NkXS5ntJQyh30/GiOICSruMYtLiaWCzlrvSxpiNXCU9fNR/3OqIMKW7vwbw8VfDrnB/zheqr/Qsxjk0lNofnE3doFpfJ0gzlKb6XuuI6ancVgFhsYcgpWcG9HhVn0k8189wJ2QaXi5Fki9UV00qr01zoddYrIa9fJk1EPkwtKYQShvHm9DLwCk7wDm4QWohpxfx2FTa9GR+32cfEqEf3BB3Hip1/zE3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8421.namprd11.prod.outlook.com (2603:10b6:a03:549::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Fri, 9 Aug
 2024 12:55:17 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Fri, 9 Aug 2024
 12:55:17 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <4a70189eed5dcc7cb7c6a11d76bc43902f90197d.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
 <4a70189eed5dcc7cb7c6a11d76bc43902f90197d.1723129920.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 06/10] drm/i915: support struct device and pci_dev in
 to_intel_display()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <lucas.demarchi@intel.com>, <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 9 Aug 2024 09:55:13 -0300
Message-ID: <172320811380.4788.14613022922727279500@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P222CA0021.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8421:EE_
X-MS-Office365-Filtering-Correlation-Id: 26299608-ed2a-466c-5a82-08dcb87284ef
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cGlxdFRSV1BycmQ1TTlySVpWMXhRYlY5MERzL3E3TVcxa3dKempQM0JucWwy?=
 =?utf-8?B?WC9ReS9HTXZNa2RhMkxHdEhwTjZQb3hxK2tBTTZDeit1c0cvWk8yZWxOQlA3?=
 =?utf-8?B?YWJiSHRCTjdnendiTFdONGZVck0vQWVkSWwwK1FsSUhTRHcvQzIrYlpVZGFm?=
 =?utf-8?B?UHdwcWFFejZzTlowZ0FlYlVGdTFsOW5YVlYwNUkzdnFHRFRxQ3NkL3BoU1RQ?=
 =?utf-8?B?dUZsL3lIWWc1QkV0dzE3SnpFVXRXb2RKUVVqN2RjY0xNdWRobHJCdVJLZWxX?=
 =?utf-8?B?RTFheko3VUt1bXZiK0RLcWtKbzFwaHRDcHVtMkR3a291RkczNjRqbzVTUDJ5?=
 =?utf-8?B?cWhqekkyNVp1RTlGYzhWaUFrRnFRK3VPOUl2SGxKeGM0NTBYdkFqaFg4ZzBK?=
 =?utf-8?B?c2dTN2lOKzV4UjR3SVlZbHl2bXY2QndKZkZxcGdKcnU3cHJZcWFDcjBxbGV3?=
 =?utf-8?B?Q1ZQZWxjQkU4ell0cEowa0c5VVF1SUp1cVowdEpRUmp4OU9ydmZHV0o1TENl?=
 =?utf-8?B?TGJNamphbVg1Y0dOY1NJaHVLSE9QYTNNclJqWTRJRmpiVG9hL3VxMGJRbEF5?=
 =?utf-8?B?eWF4WmJzOVdRVmlwV1FYbGVJNmlXWmdsL2t3bjNNUnJ3c1lnY2lQb0dydnR5?=
 =?utf-8?B?K1VFamJCaFoyQWdTcHpSVHl4dmFBbkpvZThJOGNvbjY0d1dUK3lUOHh0bWNI?=
 =?utf-8?B?R3hZdDRjQUs2Ym5VRG9ESGRpTDQ5Z2tXUWNIOGRrU3VwSWVzc0prb2MzVFJG?=
 =?utf-8?B?d3pXUTd5akpQckRDR1JvQnkrVHd1Qy9reU5mZlIzSmREVUJkRnQyMFEyQnRj?=
 =?utf-8?B?bW9SVHJrUytZMUQ3VEJROTJodHNKMWVmb2M0azh0RytjMDNJSHFRQjBrVW1E?=
 =?utf-8?B?bE55ZWN4RFF3bjZHVnVQallQZ2FZSHh3RWV5N0J1NDZ0Y0N0UitiNkR0UkMw?=
 =?utf-8?B?ZXJHUUhGV2d0UG9Lekp2bDJUS3pPQkpzVUtYS2pYc0I3eUJwVGRtWWQ4OHpw?=
 =?utf-8?B?R2xCSXd1QWRGYVFFMGo3VE9haDdkdjB4WXRyQWlJL2xOSGV3WGtsVk9vK3FF?=
 =?utf-8?B?dVR4SW5ndDhQQXdEUlFvUktmcmtFTGdWTzFXUzVxbCtLYncyMm45VUVMRDRm?=
 =?utf-8?B?c0MvREdRNFoxSXZxMkVlSnY2VWRYVmtUNUtkYkhmclRBR0NMUktBYTV2dUFM?=
 =?utf-8?B?Um5lSDVsWVAyRjkvRDVxOUpybzN3dTRDOHM2N2JJb1gydnJSTnBDTkZWdVVL?=
 =?utf-8?B?UVpDT2QzL3NFOXNDK1FrRXBSMHBhWkd5emZwU3FrWlBZcXdXRnZqRjBtblhP?=
 =?utf-8?B?OEtGWXBjQXhUN3lsaU53enhRYUtBRFVxZjFNMDlIc1d0aStZSmFWSGRhbngw?=
 =?utf-8?B?bThTNnhtZmlsVEp0MEpmU1U4RnhQSmF1WEpCMUpkMktaMjlmTnRxeUc1cURL?=
 =?utf-8?B?MGkwZEl0M254N3Fxb0EzVnJWZUp4THUvY1o3VEViTjJiZkNPcytMTTRaY0cv?=
 =?utf-8?B?dTlLdi8zVzVOeENubitzdWVlZFdwdHBoM0NNZ2QzR0VzU0NBeUlJa3lvVkk4?=
 =?utf-8?B?T0hrNGthR0J6WHhvOWlsWTdnTEI3VkM2V1FjS2VncmtjS2hxWkh5SEtON2dH?=
 =?utf-8?B?ajBRMTV2K2IzZkxDNE1rODh2TzFCbzV6M2hSTzBRRHRoanNjQmNrMk56d3BI?=
 =?utf-8?B?SlR0dlduWEd2dVpjditrRHdsSlRCOTBBK29YSTdXZEliMEkyejhjMEhJOWhw?=
 =?utf-8?B?dkkyNnNwVHhLVzdIbXdmMEl6Y2NWbDk3b2tiZmxvektYRCszS1VhYlc0VUQ4?=
 =?utf-8?B?dFJFdzZaT1Z1R3VGVHJIQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTludmo5eXFLcTAwdzVRcHpVRUM5S1NVeDRWZ2Jmd3E2UWgrb29ESk0vQTJV?=
 =?utf-8?B?eDRkMXBhYkpEMjFCamlwcXI1ZlBVYmZzc1JOUHFabDBrQVczdGorVlNjV1hB?=
 =?utf-8?B?QjRjQnVvUUhJdDhzN3U0M3FyUUY3LytQV3VLZ0hFUHBNRVgxdVNwQWk3Rjla?=
 =?utf-8?B?bnh1WHQ5SnF1c2ZmY1U5UTI3SC9YNnJya1dsMTRISXNQNTRGVkFhbGNXTExr?=
 =?utf-8?B?dVU4VnZIYVV0dEl0Y2lJNFhGV1N4b1BRVWEyR1NGOVlXZDJseVJmRDFlNEMx?=
 =?utf-8?B?OWtDNXV4REdkWER5bEFIK005dEJwRDdhTGZDc2d1UDB4YU1uUEJJVEZ2T0g5?=
 =?utf-8?B?UG1QU3FiWnQyVW9acmk3aGNSeEhBUER6OWxLdnBaNEVjd0NtbDlrclVrWlho?=
 =?utf-8?B?bkVyR0FsVFZyRFc3d0dscEgrelVPWENsNnNHRHRhVmpCYTl5NlhvS29hNC9T?=
 =?utf-8?B?elZoNExvc3QrbHh1amFqcVNIVWNXcHlpSHJjazFrUlZoSWwreXNZSlRaM1Y4?=
 =?utf-8?B?MzA1cEpaa0txbnR4d3VnV21vSDJHRWdPTzQ4ZXJyMkNjZFNBZno2VkJPQzA1?=
 =?utf-8?B?UUo1Y2JRa09WZ04yL3Y0ZndnMUQ3MTEraWJ5bDJRZkNXRHlkMlV5bGNrekVh?=
 =?utf-8?B?TkhZU1NJOSsyNVJIU0FoZ0l3cEpkTXppOWNqNS82TzZoN0N0bjEvc3I2c1pO?=
 =?utf-8?B?cSt3cHJUT2JjdG0wSU0vRnFQUXEyUjhKaUQyQytjTEhrQnVVRyswUk9xSEla?=
 =?utf-8?B?OVQ1WFBpY0RzRnF0aDliV1dNTHRCZVZvNDlmdVdvbEdSNkdTTzMwWVdBL1Jp?=
 =?utf-8?B?Vk1OckE0UDJTTVJLczZXRDVUV3ZWZ3pIQk54Y3RINTZGcFpJY0NkTk1nZHJJ?=
 =?utf-8?B?S055S3JQQ2srZjRna2owMW9oOFo0Ny85TlNLY2JweE56QUpMZ2gwdEw4NnQx?=
 =?utf-8?B?Q1NGaGw2SmRKMUFyay9lOHJsK2JZNkYzREUyMFlBd2dVNmJUZ05jalRQM3hw?=
 =?utf-8?B?OFIwUXBSRUhJdjZtT2JIUXFuUm1DQXZpYU5JTWpGdHQxaDZFYXJhOXhiUC9H?=
 =?utf-8?B?MllFcGZsZXExUHdRNzFNd0ZPV0xuNWpIdnpCd2NCRldvM2tyT1BwVmdTcFFH?=
 =?utf-8?B?U0o1R1VFemZ1WU5aWkpDUlJNTzNFVC9CTFMvS1FpUFRYeHRFbTdtWVFteWVL?=
 =?utf-8?B?WlhCZTZOVHc5MlVFNVRFNWdSLzBlUFlRc3UxT2planNtdUJyTm9QWDZYUTJr?=
 =?utf-8?B?U3c5Vk4zdXV5RWdQa0pZdC9VQkNpQlRRS3MxUUU4ZjJDOUg4TDlyeGh4cXhM?=
 =?utf-8?B?S0k4RWd2YTFvVXk0VmM3L2F3ZUJYcjJVcjVHbG1SSUF4QjhKbGR0Ty9tV0NB?=
 =?utf-8?B?cmNqeXNUenV4ZDB1eWtreU5sVjY0S2lDRDQwckZ3Q3RZRzlzaHk2d0VJY1Ru?=
 =?utf-8?B?ekFWMldIb1o5RW1nSjByZy9JbTkveW9rdHEzenJRWHE5ZHZVTngzL0hEWFRQ?=
 =?utf-8?B?SmFJZitxamdXZDAwem4rWEh3NXFDaVJMdGpaMXM1UllVd2xaMlE0N3RONzhO?=
 =?utf-8?B?UFJVYVFPL1FYcmFNQUUxOG94bTh3UEhrY1dmTW9GYWg1NGVaSjBIaEQxMnhX?=
 =?utf-8?B?dDRNQmJQc1M1TlBCNExkR29aajdjNmUrdEc3TEZGamFQVFdUS2F3WEFwc2x1?=
 =?utf-8?B?ZGhybFZFZk1FTS84Q1k2L1BwSWRhUnVpOU5JSFJscVQ3aG8yVTdXa2hiQkZR?=
 =?utf-8?B?VE13eEdKZkJIdklXUWFsV0xBaWxPMDB6dm1vS0N3YmNRRkt2ZnFRazFMZUtP?=
 =?utf-8?B?a1Qycm1KcFBHeUZ4c2kxL1RrUzdHWHRlajkxd1E5UGNIU1pXeWlQSDJqczFS?=
 =?utf-8?B?YkhZRnorUWgzOW5BeFdXc3padTh0SlJGbHBNYzZLMzNDQUVtOWhRVEt6U1ZT?=
 =?utf-8?B?U2s0dm5hNjJzUzlaWlZjK04waVEwWTVobi9ZOGNPWERrSXRkUGFLZzc3UFdz?=
 =?utf-8?B?cDZ5aXJXVFg3TFE0S2NFNjdXdDBkUnNHQitab0dPNTJXbG9XSStUUVM1c2h1?=
 =?utf-8?B?V0lxUTBNU2JNYVplZmxJdmV2Rm9hTTd0ZzFFaWY1TXJ6YVNTMmtTT2JxSG1y?=
 =?utf-8?B?WkNqR0tGZ2pGaDBmSUxtTzE5QWJmTW5vRENGcEUwbUQxbFdLRXhtOXRWSTMr?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26299608-ed2a-466c-5a82-08dcb87284ef
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2024 12:55:17.7039 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OmSZMaAfWW7pYNk+e7r8CRtPkZTR30e9LXsXvkyzW549BHT0OHxiI4oF0Yl3Csh3nFOGc+t4zkghnYWdYGZoYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8421
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

Quoting Jani Nikula (2024-08-08 12:15:51-03:00)
>Now that both xe and i915 store struct drm_device in drvdata, we can
>trivially support struct device and struct pci_dev in
>to_intel_display().
>
>We do need to check for NULL drvdata before converting it into struct
>intel_device pointer, though. Do it in __drm_device_to_intel_display().
>
>v2: Add NULL check in __drm_device_to_intel_display() (Gustavo)
>
>Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com> # v1

And it stands for v2 as well.

--
Gustavo Sousa

>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_types.h | 8 +++++++-
> 1 file changed, 7 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/=
gpu/drm/i915/display/intel_display_types.h
>index ea6548ceab2f..976c85446603 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_types.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>@@ -2205,7 +2205,11 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
>  * intel_display pointer.
>  */
> #define __drm_device_to_intel_display(p) \
>-        (&to_i915(p)->display)
>+        ((p) ? &to_i915(p)->display : NULL)
>+#define __device_to_intel_display(p)                                \
>+        __drm_device_to_intel_display(dev_get_drvdata(p))
>+#define __pci_dev_to_intel_display(p)                                \
>+        __drm_device_to_intel_display(pci_get_drvdata(p))
> #define __intel_connector_to_intel_display(p)                \
>         __drm_device_to_intel_display((p)->base.dev)
> #define __intel_crtc_to_intel_display(p)                \
>@@ -2229,6 +2233,8 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
> #define to_intel_display(p)                                \
>         _Generic(*p,                                        \
>                  __assoc(drm_device, p),                \
>+                 __assoc(device, p),                        \
>+                 __assoc(pci_dev, p),                        \
>                  __assoc(intel_connector, p),                \
>                  __assoc(intel_crtc, p),                \
>                  __assoc(intel_crtc_state, p),                \
>--=20
>2.39.2
>

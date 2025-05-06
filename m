Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D80ADAACFB7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 23:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5780810E34F;
	Tue,  6 May 2025 21:39:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="StqHXJ8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 461F210E352;
 Tue,  6 May 2025 21:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746567577; x=1778103577;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=e+GYx/VQU/DvwEYXiZw/jiGeJG4AkIAUzd8ZHyNVukA=;
 b=StqHXJ8E9raFr9EF+U2eMp90RAAb+p3eSpSpAr5IhY+A2deX9C5Q2Ajt
 BHsEtT7SW9ZiYyGEU7hggyQAcvu0cQKpDRK10TSFh8NXT3AjXDkD7F+L9
 v2hysvrgLegHDIvLaAfyxIMdYv8uoy+MVPxt2Iw2J+f9KOF12y7ev6aNw
 VHE87dBDsJoS5ZbxQn2SaOFbd2zaiPUPWwim2DlqSqmFr+ySwrqslTv04
 S2vKZNU/RoN0I6y2GzRnOuL72g2WfmocTLUAzRFM2cu5WKnGXIif25S9b
 o7v7+IuiqZlnKnMdpzxEPbfy6aYi863OqhLHbLvNGJrhOZ8/Wummo9Je4 Q==;
X-CSE-ConnectionGUID: dMNnwGtITl6KAE4OJm5eIA==
X-CSE-MsgGUID: J40zo2wfSZ+eM3KRCqwbMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="52074159"
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="52074159"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:39:37 -0700
X-CSE-ConnectionGUID: Y43LCNutSkyJ1U2aM7hLIg==
X-CSE-MsgGUID: 7GaV/KP3Tzy0/EW73BO3bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="172939243"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:39:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 14:39:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 14:39:36 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 14:39:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DdFFrSy4qof7HueyR1R7rLBnZzXN1aS0tq48+vsfldX5adL+tYXECWZW2SH2XWKjbRvtJBPwfaxHVn6T2qOnyJGIlrFXcwQSuu3QoVWElQSvPzW+mhLviRsP5MlQ1Xx0cL0PF7Xu1lB6cm//eDL3UrnnMV/cQ9yB748UU60dZE81Q84lRLks62Ahe8TV4dgeYBz/z049QoMv5DHB8I9962ekeRuh7J6IkCGRQOOe0WRptsKJx72tCMgKyM2YDvgcW+8rVTz9Fi03IobUbaOI5c4jbsorkP3kSy6TvRvPcV/+Wbu/ct07HtvPF8dpfOS+EYo1SJYw02tSoPYeGrVz2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=euf/mZA4XsdlsSZSdIZUeYU4M7SuPW1JzshA+9rnBNk=;
 b=lWPqS7KBCHLBhwsi13SBR6vkuycrcSWGERXPt7EW8LlICbtcyteKpmKCFuMiFbFXEeWZudQqS8wVCeC/i376bjJDEOWWFjLhgeo/gHJsckxr5p5eFjiljZTdrKo+G2Yh7JY05fYqKzxolXhtuOv5PHHS22+XTUzm6RrKSoC8LqaoToDm0Ye9o/vtxgNncQWWLRFwW7ixzrHsCIucuZUJN65pdIoaU3wfeznNv9Z48T/aYD9/iRBsbEspdIfrhi/xdnQlIZ06OfPg2v8M0VJ8LjFchku1bqNGh3j4J4khKpjvDLcehWySx7DdJJBn/qkPX27jWJJMMyLBE2NW979fyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV3PR11MB8673.namprd11.prod.outlook.com (2603:10b6:408:21c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 21:38:47 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 21:38:47 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <bb6d941c47260aea11e4af5d52572b0e5f139929.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
 <bb6d941c47260aea11e4af5d52572b0e5f139929.1746536745.git.jani.nikula@intel.com>
Subject: Re: [PATCH 2/8] drm/i915/irq: move locking inside valleyview_{enable,
 disable}_display_irqs()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 6 May 2025 18:38:43 -0300
Message-ID: <174656752330.1401.12168938050276517124@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0079.namprd03.prod.outlook.com
 (2603:10b6:303:b6::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV3PR11MB8673:EE_
X-MS-Office365-Filtering-Correlation-Id: 48a55162-f28e-402e-a47e-08dd8ce6622c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SFZTQzd6VnNRbDhRSEZUbWhFZzNHTmtuYXhrcGMvQ0lheUIxKy91L2h3Ulky?=
 =?utf-8?B?YkxTeFVDMEJrdmE5cm9yTVl4bjI2eW9NWjUvRGs4bzIrK2tnZytwczRVckZX?=
 =?utf-8?B?VEJ2QUh5TTdMMGdnMWVGL2F3NnY4ZnQ4S3Z4L0ZIaitJTC9CRkZOK2t1Ly9E?=
 =?utf-8?B?Wk5EdzN0amMyRVFPZVFLWG9ndlY2ZjlOei96RHRrcytjZ2ZTQlBSQmNkaEox?=
 =?utf-8?B?bWowMi91Y09KSEVnK2QrVHVNQ0lhcHNQMFp2anplU0pvU3h4blBEVTRKdXJt?=
 =?utf-8?B?dlp1V3hHdGZRelloS0daakNFWmk2MU5yMStlK3A1UU5QUlF5ZitBRlZOdlRP?=
 =?utf-8?B?Vi83ZHhNQStTUEg1eXoxTEZ5VE4zV0p1VHZ5NDNoVkpZcXV3ODczbkJEcU5o?=
 =?utf-8?B?VnkxYzZxdlc0NVlvaCtDcEhNcVdBKy9icFdyV295dkpqVGVUUEs5WFBlZTRJ?=
 =?utf-8?B?a2xGNlBJS29uQjBUdzR1MDFlQnNzMVVPajJqaUlyNC9LcU1QVGc0c3h1bXEy?=
 =?utf-8?B?dU0xcVlISFF5OEFwWEJaTlJ6MEtZNVREQmpNTVFjSE1NRnVCTWNmTEdIMnRp?=
 =?utf-8?B?NmxCa2hsallhZGR1bU1md05wcys2L3VHTkJhRzl0dU1GVEtjUEtyOVR6Kzdz?=
 =?utf-8?B?dmpoQ1JFc0VrdkgxNzN3ZVNmNnlwMGY0Wm5BNmx4aHMxdFhUZVdKSzA0M0ZJ?=
 =?utf-8?B?MVBDWXY1d1lCM2M0UlVDTEJRVzEzTmJneGF4ZzU4N21od0pLNUJjT2dSOW9S?=
 =?utf-8?B?dFl3SXV6NUZIM2tyRmZ0Ny9vbWZvcDBWZ3J2a0Zub24zeXJUZEliaG9CQXR2?=
 =?utf-8?B?ODU3SkE5NHUxWUpQaDFiS3pUY3FMUTdKc0lTQjN2dVp1SGJMOGpraUp4bVcz?=
 =?utf-8?B?THgrZndHb3ZIWGZWZGVFeTg1bWFEamt3VWlyTVRwc3d6K1NGWHdSN0xqcFhU?=
 =?utf-8?B?NUtNN0NsNVg4a3U0UlJkaTVHTDByM21QdXJNd2VlRDg0Um9tbW1MSkxTQ2ZU?=
 =?utf-8?B?SDlBNUU4S1o2ZW1laUJJS2Fvb3V4bGNUcUx3S1lSbXhiQ1RaVzVnMitRSWtM?=
 =?utf-8?B?NDNiUnpDUEYvSXFBWkhsbUFNTnBvMzQrbWViQ3o1bW1PSGdwWXZkTWlmcVJq?=
 =?utf-8?B?N0E0QnJNQm5hTWRhb1ZNNmR1c1BsM0J4UU1tSG4vQjlwb1FoeCtjMktMdWJ6?=
 =?utf-8?B?b3hJRzM0Z2Y1V1N0WlRhWXNMUnM3dDc4Q1JzY3BaUC9WcG9ieFN5aVFtYUty?=
 =?utf-8?B?WkJqS0tBSzJGQ1ppV3o4SVVGZkthV01HbWZmc3BlZWxUM0hRN1pSc2dETTFV?=
 =?utf-8?B?V1NQM1grL3QvZllqcHFqUld5VnFNa2lmbkRqSzcyQThnMXdVOWFJZW9KMGNO?=
 =?utf-8?B?MEpVa0FIakJYZUdZQ1Z0N3BwalRObWV0ZzRXbVZKOXJNUzlCeGo5R0Jwa2ZM?=
 =?utf-8?B?RkdqbWw1OHd0Mm9uelM4YWhoRk5lVjU0cFAwRll1dlhmODZmaVZ6a1VrNDJ6?=
 =?utf-8?B?SmJiQWk2Y2Y1THFEMFpuakFnSTUxUkRTVHZodVFrZy91cUVkNVE0K2FBcTg4?=
 =?utf-8?B?ZC90YlE0eHdqNFVNWmx4bEVsU0dFK0Nzejh3SHJsa0NybVFKaFNLdDEyUE1o?=
 =?utf-8?B?QlBzaktYVnpGei9TL2p3WmgzeDZQVDM1ZmJUajBBMTFwY3NTQUV2TThuOWo0?=
 =?utf-8?B?MTY5SHh4S3RZdXpPOTVzYW5oYnIxUVJlUHQxL2dETXpVdWZBYmFPVmtEUGpy?=
 =?utf-8?B?T1huY2c5bHNlU050VXVuSWxmY0tVNE5wS2FqVThNd1V2VC9kbE0ycVVDa1kv?=
 =?utf-8?B?U045YkE2ckp4RzlXR0RzVE5kTnRuNnZSa1hvRVhsWWtMVGZWL2x5aExEWXoz?=
 =?utf-8?B?TGtpbFhPbkYrNHZrV0JIU2t6UzFiNGRYbC9pWFlkVjNERVpEUVVjYzliQW5y?=
 =?utf-8?Q?7p8K/O3bh80=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkpqaCthcFBCeC9pWU1yUWZvVDZjZGsray9kZWxaSWxyQnBBY2luaVpFNU1z?=
 =?utf-8?B?ZkF5cmVNU0tBVHNsUjJPdm40SVk4MmYxV1BwSnFtaVE2ZnhBL1NHTi9nNisy?=
 =?utf-8?B?dFNTWWJnUlZNeWZvTlkzdThYRkxhWE1QT1Fkd1RNL0VCOFZ0ZnIxTzdzT1h6?=
 =?utf-8?B?cWFVa3k3Mk1RVlJnTEtYMFUyVHRxNTZkd0pDWWtiM28vSFNGbWJVOFBXVXZm?=
 =?utf-8?B?bnFXYUFhN3FsTFFWWjBPVktjOGVLSWNBT25tN1lEYkRrVFkxNldmUmJoUnd3?=
 =?utf-8?B?WVpBZTNQYityUTZBU1FIZWMvM1RodGlMejZFZ0h4M1NSZGxaL2t2RnBVRXA4?=
 =?utf-8?B?WWxQUmJRSnpvejdkUVhTMTV1N096UGcyYUxyTEFaVVR5dTFBUFB4Qk45OUw2?=
 =?utf-8?B?SGJQOU5SZks0QjNXNzlyemdweU8wQnNPMFh0Vlk2eldVclZLTlppVmlBbG9q?=
 =?utf-8?B?WXBBenhjZVhtOElhMzYwZm9MVDY2alZKaFNMRldBOEdsYmsySXAvQy9mWTl5?=
 =?utf-8?B?U0Nrc2RJYzhWRmlWTlp5TGdubVp6NHY0b1RPb0VzQ2dlOUhjKzhaNklTdm5F?=
 =?utf-8?B?L1JwWXJraXp0NGg5NDhpcTVFTDB0YmE0aDJVWTlLT0p6VzFKd3A2dWZzZU5O?=
 =?utf-8?B?RmQ2ZUU1OWJJdk9QVDg1bW8ydXZtOEpkUkJGOS94cTVReTJ0aDhtV3pjdllW?=
 =?utf-8?B?UndHcTFlOWVZRDdpMkYzcDhneEN6YVQ2Nk1nS2syc0FtbGhYYUlDcHdvT2x5?=
 =?utf-8?B?Qk5QVWdGYjk0amlheUFBV2YrV3NzT0FKVGZLUC91ZkFrcVBQM0t4a2lZSU0z?=
 =?utf-8?B?clpWQUdLYnpQTC9pVFA1d21yWVRqT2loaWxkbiticTk1WXBYNUt0cXBIcWpI?=
 =?utf-8?B?R0NzL0tDVGQ3dFRWbGNmMlpiRFZkOCtkK2VPejNhYWlCYWljZ0xzS1I2cndx?=
 =?utf-8?B?SFRmUTZCRFBMWjVrN0h3ZnlmODZrMHM1WXpCWFJrekUwK3NoS3o3aU93QnZX?=
 =?utf-8?B?RHNwUVdLYS9xVnlkSi9OeFFqVUJrbkt0VGpqVC9mV3NtVEtPdUhMak53akxL?=
 =?utf-8?B?cnNKblFLaWk1U0VnbWg4b0orRlhhMnRrcEpIeUp0UVdRa0lETzV4THU3SW1Z?=
 =?utf-8?B?U1Y2NytNU1hEUktoeXhLbFR0RDMzRXprWTBkNmNac01KNThWRTVDZTdLNHF2?=
 =?utf-8?B?LzhwS3hhUXFGeWhLQmsxWEFtMSt6U0JUQ1N3aTdPZHpYcFM4alhDSHhPOUd5?=
 =?utf-8?B?ZW5vTmdSM1FuQUYvMU5kL1luaEVuY1d6QXhOSGRnVGx1VUM4bkVwUTBhelRG?=
 =?utf-8?B?eWQvbVpWQmRRbE96eTBDOWNPNWFnZ1orbDZKa1p1WXVUZDgzL0ZCNmhvTE92?=
 =?utf-8?B?UDdmQnZyR040MllWZXhxb2FQemJSU2h0bkEvalpmM2FBM1N6ZFp1ZnBvUVJq?=
 =?utf-8?B?ejhYb3gvNFBjcDhaczVkTUdWMFVXSjRHZytQQ2gxTGZuRDlCalVNTVdib0Qv?=
 =?utf-8?B?OEJLZWQ5SmE3SXhyRlhOR3ZCNnJDYXRsVldlUnFtTkV0S214VkY5NDk2WWJE?=
 =?utf-8?B?VjFQem02Y3NhTUNtL1IwdnkrcVlTSzV5SzZPVmxQSG9kcmhhajY4bWxtNTBa?=
 =?utf-8?B?V2xLSFpaOS9uRTZFNGhYM2labTFtV2xRS09lRjZaZFRtQ3N2dmg4cExiMjJW?=
 =?utf-8?B?eHdYYm56RUM1U1hKQk5oZ1JDckppQjlJRUxSNzRiUkhLYVM0bXNVNkc4a2di?=
 =?utf-8?B?Ly95d0hpMGZzbGtFcXFVL000TzlwYmN5UVkycU9NWCthem5uY1RGM0hsRU50?=
 =?utf-8?B?QXlqczJyeDRBMWI3dDlvQzlxM3hMZVo4ajBKVWFmR01sM0RTUXVDNTF4aC9N?=
 =?utf-8?B?cnlLdHlZT3YvZWJhSXlOL0IxekVTL0xTUTdBZnFDbWFNRXdoYmo0U3E0dEcz?=
 =?utf-8?B?dERTUmFETlg1anM1WGJmWHRJUlBmMTM1ZzdqODIvNEs4ZVc5L3NSMjViYXA0?=
 =?utf-8?B?M2d0eFZoSUpPeENOeXdFUnFSSmFlbjdmdWp5TlJrNWhJVGFoTjRaL3hJQmdh?=
 =?utf-8?B?NnhZNXVUT2VkbWtaU1VZbS84WUMwVHpFbUlvVTVUYkZ1ci9zS2VyYm5HaTRQ?=
 =?utf-8?B?eVFoczZaMlBzczR3UVBXZTB4OFBRUzc1SldHQmQrbzh6TjBEdUM2UzZVLytk?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48a55162-f28e-402e-a47e-08dd8ce6622c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 21:38:47.6752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cas1tdaDJyBlmdQ1Cc/12qimP5SGoF5VJWHnt13h9QPQRprYb0gV6VeU9Lykttmf9UwG+Z14dbsnR6cD9xgEYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8673
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

Quoting Jani Nikula (2025-05-06 10:06:44-03:00)
>All users of valleyview_enable_display_irqs() and
>valleyview_disable_display_irqs() have a lock/unlock pair. Move the
>locking inside the functions.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display_irq.c    | 13 +++++++++----
> .../gpu/drm/i915/display/intel_display_power_well.c |  5 -----
> 2 files changed, 9 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 22bb0fc10736..3d2294a4d83d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -2117,10 +2117,10 @@ void valleyview_enable_display_irqs(struct intel_d=
isplay *display)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        spin_lock_irq(&dev_priv->irq_lock);
>=20
>         if (display->irq.vlv_display_irqs_enabled)
>-                return;
>+                goto out;
>=20
>         display->irq.vlv_display_irqs_enabled =3D true;
>=20
>@@ -2128,21 +2128,26 @@ void valleyview_enable_display_irqs(struct intel_d=
isplay *display)
>                 _vlv_display_irq_reset(display);
>                 vlv_display_irq_postinstall(display);
>         }
>+
>+out:
>+        spin_unlock_irq(&dev_priv->irq_lock);
> }
>=20
> void valleyview_disable_display_irqs(struct intel_display *display)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        spin_lock_irq(&dev_priv->irq_lock);
>=20
>         if (!display->irq.vlv_display_irqs_enabled)
>-                return;
>+                goto out;
>=20
>         display->irq.vlv_display_irqs_enabled =3D false;
>=20
>         if (intel_irqs_enabled(dev_priv))
>                 _vlv_display_irq_reset(display);
>+out:
>+        spin_unlock_irq(&dev_priv->irq_lock);
> }
>=20
> void ilk_de_irq_postinstall(struct intel_display *display)
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dri=
vers/gpu/drm/i915/display/intel_display_power_well.c
>index 6335fa909a7b..b104bce0e14d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>@@ -1212,7 +1212,6 @@ static void vlv_init_display_clock_gating(struct int=
el_display *display)
>=20
> static void vlv_display_power_well_init(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_encoder *encoder;
>         enum pipe pipe;
>=20
>@@ -1236,9 +1235,7 @@ static void vlv_display_power_well_init(struct intel=
_display *display)
>=20
>         vlv_init_display_clock_gating(display);
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>         valleyview_enable_display_irqs(display);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>=20
>         /*
>          * During driver initialization/resume we can avoid restoring the
>@@ -1265,9 +1262,7 @@ static void vlv_display_power_well_deinit(struct int=
el_display *display)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>         valleyview_disable_display_irqs(display);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>=20
>         /* make sure we're done processing display irqs */
>         intel_synchronize_irq(dev_priv);
>--=20
>2.39.5
>

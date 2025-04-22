Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E399A96822
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 13:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8172A10E577;
	Tue, 22 Apr 2025 11:49:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVlHpoGQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA0710E087;
 Tue, 22 Apr 2025 11:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745322562; x=1776858562;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=krlbEOkX8yaMveDbV0Esn9O8oWSJ13QPVBSyYLUxTk4=;
 b=AVlHpoGQtqj6icC9om5pB/hufKinmrU01EwIGJeYiFYj9qo0Nzs9/fKE
 cXRsm1PgxMquA4iDNsKdMvC6chJrfrX8s65ncMF7EGIE/uqDkRegeN3ht
 Aw2HJl/6sd/Xyh8UdiuSJtAeinn/vCqv4Ox2+L+LbJle3hNn6AsqvORnK
 jVLo37C4s5pN+7x02MtQ3AAMHuuRkH6YHIv+RL3/CyNaKyclZC/sIok8g
 Mg+Bf6YlAQbidou7rYgfBCO51ALG8gxpfcp0mGyd2ejDRu94nGueOrQu2
 tdYik/P/bMXMeEkM9/stKAuU+HmooTOvoDec3oA46c7iMU1tXFK14toVC A==;
X-CSE-ConnectionGUID: meATZ0tkQYGVzgqRtLxU1A==
X-CSE-MsgGUID: s49PjAEuQUuDGPxC7wqs/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="46757852"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="46757852"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 04:49:21 -0700
X-CSE-ConnectionGUID: 4PIpRQpzSQmXmccN9EVCyw==
X-CSE-MsgGUID: BQdxQ9mWTOy2n/ivh1bg7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="169197116"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 04:49:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 04:49:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 04:49:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 04:49:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gwtOtfyYfdtK3mqt+O7iKCYVKYf/2Q2P236qvMNCZ+mzyO+eYEQ2xJy8GDcbgIAp8oGV/MAifXUEhtGkDk8l6s6VZznElhAkdHJv02D1JON3waSsYBfcY/uSSR2yEWjeCmMo6pQmYpLuIiMuU9vwjSOQXipD2Ha5ugNhsYdegd4q8ssgjkONdZlvqSrsou1xmets+zFInzaRkEfrehZHbY50/3lSfyZZvfRPKqvhb8egh6JDOUbzRKE6xObqcKAd5IPyQm4izrgfJpHbrKCOW8jtWmVaEksZ41zow1UhjaKJ2VoBmWcgrZBm8nlzBNxgPCwKIwHm+tWhpEQDFnOGVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=krlbEOkX8yaMveDbV0Esn9O8oWSJ13QPVBSyYLUxTk4=;
 b=X5u0UNME1aW/XaL3thAqt1lKT/LxGHrla1kceduSSc2TXc7aNalUWZkjpzuF8hU9GAJZa7H5XzRAmBJdJNIpxJB3Wnly8U2PUDLpGERLkiMlsYeJYdDajL5aUqTEBx+fPQAX+oW1QLaxTRT1mq2wf6WU6FplJ69VjaqxhwDGTgkY8s7q/HvbYdyE8Nj1G60CVQmHSubOSV4gl55f4e9gAE5JypeyFV0B18Mrv29aZbTMwcUn09Ir7tOv4yfjtoFK4XhHMzXxDCW3Z7XUHZMDUm0HNMbU4UNyBXhUqdwM0q1dQN4u0QanYYgdioOXCzl58i2eGIW1SZk+rh9djNH0Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM3PPF01A5BE19B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f04)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.36; Tue, 22 Apr
 2025 11:48:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.8632.030; Tue, 22 Apr 2025
 11:48:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v9 06/10] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v9 06/10] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbr4A0sVAUxsc42UOn/6QoCe7yrrOvmgYA
Date: Tue, 22 Apr 2025 11:48:51 +0000
Message-ID: <86e796f84ea8be39f62434b9bb4f53b00b71d679.camel@intel.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
 <20250417094123.1662424-7-animesh.manna@intel.com>
In-Reply-To: <20250417094123.1662424-7-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM3PPF01A5BE19B:EE_
x-ms-office365-filtering-correlation-id: 66c49ea7-05fb-4b02-1cb4-08dd8193a6e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aVh0OUYxNjJZUmx3VHpGalNiT2lSMEYrTUZhWXR2Z293b0RVT0czT1cyZjVp?=
 =?utf-8?B?dmFlZXZKRjhwUXp4SHBTcVZHb2E0dWhqOVp1R3NOQVpJclFwcXZkZERtTmNn?=
 =?utf-8?B?VTArSEx2SmhodzZrTE5qV3hYZElBa2M4bzZkUmpSSzFDdThTU1Mrci9xWFNy?=
 =?utf-8?B?SFJyNklTSWhNY0t0aVA5bzQzRWJ4Mi90d3Bwc1BTcTMrc3NHM1pWcXpvTDBO?=
 =?utf-8?B?aW1PdUgwV0JiVit6T3lQZGwrWEx2Z2tFMU1MNkh5dGRkdDVSemhxL0J3K1pY?=
 =?utf-8?B?VjNEK3hjMnhmK25UMVc0WkJ2L3pXUEpZcHFzbGNEMWxQcUJBMnVIR2wwWmVa?=
 =?utf-8?B?bXRtNnNiMlR3WmRlL0UrMXd6UjJ3VnF5bzIyNGNBeTM3UThvSFN0UWI2eUtX?=
 =?utf-8?B?VXRBTy8yTjFKZXdtdm1nbitYZ0RkdC81cFJWUENDRWRUNnVwRUh0bVIrdDQ4?=
 =?utf-8?B?ajVUOHI4b2xRZFI1a1BtVjdpaXNmTER4cnJOTmV3dU1TbGRzUTE1OFJPZ3VZ?=
 =?utf-8?B?Q0Z3cWhQczNaNEtHRURhZmI3RDVMSUkvZnBxZ0xWT2pxVXdYWGs0Y0VXQkxw?=
 =?utf-8?B?SjBxNWllV1FqREZhWmN4U01kSWJINVZuTkdwYW1ZVTJ6WVNRbmlQQXpjbzRq?=
 =?utf-8?B?V2c3L3NQbVZsTEtkYW92c1daWE1lZGtGQjJ3S3JBZkZ0S0hXTllpUUNmY3NF?=
 =?utf-8?B?S0VMc1lSUjRVNHBXbnNuUWpESUVhU0w4dlZxRVVvNXpxMWZPYTdHMjJIQW1C?=
 =?utf-8?B?WjFJWDJLaXlqRCtWUGN4NVlmNU9TSW4zV2NqbGJHNmdCc1lpbVFwNVprZEho?=
 =?utf-8?B?SXZYcng3VDY4ZGFxMmpONW9OOUFCMm9kcUlkQzE3b2owTEhpd1d3ckNuU0hz?=
 =?utf-8?B?NWRXNFdjbm53SmprSTk4aEk3dWNwU0V0OTZmS29CWTVsZFVCMGYreVJ5OWRk?=
 =?utf-8?B?Ly9YamIrdmdRVVpZTU9veXltWTNHNnJzay9jKzZBNXFHSUZ4UlRUSGxVV0l2?=
 =?utf-8?B?dytqQW1zWDhOYmE3d0psb3gzK2xuamZUY0pobXhGUHBkeGRVQ2VOMitzeHRC?=
 =?utf-8?B?MDF6YllKSlhwV2JVYTN2UHkrYmh5czk4Q1lhOVd6NVNLNW53RkREazBzcWEv?=
 =?utf-8?B?bEtTeXVRRjV1MEVRUldRc3hnSlFROUltRUF6RkJ3V3pZZnF3MjdObEM0dlZT?=
 =?utf-8?B?NkFHcXZrUWNPUVI2Wmo2SlAveDRwYjlPMHE5bFNMbDBubE1ycktTMnE5cU5M?=
 =?utf-8?B?bmZJbkxKc2lCY2s3eFlUZTh3RHhUbi9LeGR4d3JQSXgxalhNK0Uzci85M2VM?=
 =?utf-8?B?SkxpbUl6MnVUS0N0VkljRXo5TzJrdEsrcnc5UlQvNFpPVzM4SURSZ2xHaG1H?=
 =?utf-8?B?NzdWVkFhTzlLSXJvb1U4REtCS3BOS2ZKZnUxMUFTdWNQQWtlRUxLbW9qY2Vm?=
 =?utf-8?B?b01SZ0kweXY1OGFWOG5haXNhYk0vSWkzQnFoZHdUM3ovU3QxaElyKzB0ZzFj?=
 =?utf-8?B?MG9tdjNmTjU4TzhQR0JqNWk3THNvZHFla0JTRnk0VFl6K3ZuVEpxNTBwM0d0?=
 =?utf-8?B?STVRY3lpSkJoQ1JXNWY1eXhVcjRNdUlCNk5vRU9rWFhlMkgyVEFTR2FDQ2xy?=
 =?utf-8?B?MmZyVUxHcnZzMmJzTno5MCsvaDQxZ0xGaFhhT0hOR21zUk8wdUtpRnVldWxR?=
 =?utf-8?B?b3J6d0FSUXNGMm50U1BFeEh6TmRMc28xenI1TW5RQXB3Sk5hcGVCYzB5TFVq?=
 =?utf-8?B?Y211aWtqeTNTQlU0YUxTMFRTZ05Bd29JSUkzeGlUZDFURFlQcTJqNEhwSWVL?=
 =?utf-8?B?MWRGNGFhM1UveVY5SU9OUUVpSHRXNFUzSTZ2RjFsR0orV1JFNDY0Lzg4ZzQy?=
 =?utf-8?B?eE16YURVRGc4MjhsNXlGS2ZFcWpodjdNTW9EUWliNXRIWkxRaGR2Q2cvbmhY?=
 =?utf-8?B?dGwvdnFDUG9JOUI0K09teEUvMEFsUWpwOFRVd1FYSytoeVJRNDRhd0k0Sk9m?=
 =?utf-8?Q?ErciI5K4/hHeErLBDw/HFCBUPe7TEM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bFhabVdDOHdaaDA1N0w1VWJ4SzU4ZmptUHNKNU4vMklySWVURzNKcjA5bWhZ?=
 =?utf-8?B?b0FsaXBGdW9ocDF0aHJlM2s2YlhuZVhoZjJ2ZitDVVg3WkQvaTZRVGdNTitI?=
 =?utf-8?B?SEtuQUQ4NjRGazRXTzNDQTlnLzJKbmlXZEc4amkyb25wdDNMS0J3REIxdEIw?=
 =?utf-8?B?aysvdUtHVy9TT1M0MFVmdnRpbmJESTJ6cG1ZSXVrdk1KeU9weDNpTk9IZXpj?=
 =?utf-8?B?bTBZb1FSZTBRK29BR0tCVjVvYkd6c1gvNHpaT2dXczFoeERlT21pWFFDYXFy?=
 =?utf-8?B?ZW9LL0poR2pRV3lIZFFucm9GcWxiMkRZQlk0S3FIdjE1TU9zM2M1WCtNb1Jl?=
 =?utf-8?B?VGUyK1FMaDJwclJHVFd6Q0FzNU8yR2VqOTBkMWtPMDhhbzUwQlBnejUrRkJK?=
 =?utf-8?B?OFNhSk5UaG54QlZiamJ0dXcwWUZWL2dVZnBmb2xYZjVhcXYyUm5iU3Bmb3JS?=
 =?utf-8?B?N3hmem5LN01JdFk3Sm10TXVzdGhGSEx0eFFHcUczbFYrc0hWS1pWeWFidUE2?=
 =?utf-8?B?SjBQSUNLMHgrSU1yQ05FcXd0eEx0LzhhYW5TOWY3T2F4c0c0cDYwRkdCVFFh?=
 =?utf-8?B?dTY3K3hGakxoaGZMYjFDc2xwU2g1SFpoMXd3UW9RRVAvZ2YvcEVjTjNaMkhi?=
 =?utf-8?B?cndzSmwxVnQyMjBScmJjdjluM2lLZFJwaXFPQ2d1MnUyKzdwN01GK29TNkNt?=
 =?utf-8?B?aHYzdVEvMFlzWkxHMDdJYWdWVUQ2S2d6NHl5eHowejdDM2NZang1S3BxdjBk?=
 =?utf-8?B?Tm85TU9MZFMyVjhFa2kydHpBQkZOKzYwQUV1VXM1NGVZRjljMTdYSjNHY1Ja?=
 =?utf-8?B?RUtwZU9IS1dqNm5ZSFdVQ2dFNlNiYjJBakRwTnlaaUMyRTI0NHNIcG5SZStJ?=
 =?utf-8?B?YUV1eCsrYkJOcDZucW5oeng3N1YwanN3THlKaTFIaUYzL1Z6dmRyc2dXNUR3?=
 =?utf-8?B?bENaUGtmMGlEV1gvYUF2RlZEdzZXTUk1bEVzUWVQYUZMaXFQY3BaK0VpV1lU?=
 =?utf-8?B?ZnJrRTM4MEZlbDUwbGpDSWZMZjJFV2lpWURZenJHZDFweEYrVUdUMUxMOXBP?=
 =?utf-8?B?VWdLMkIwU21KR3VobS9CckZWNEMrNWk1RFI5d0l3aE5Uc2JsSW8xMHV2SHlv?=
 =?utf-8?B?WEVEaUZuK08wbDJtQ0tWcHIrTkY5K1ljRlhkRjFkVUxzc0xtMTdROU55U3hh?=
 =?utf-8?B?cGM3RHY2ZzhZTVpOdk0xNFAwakpJdXlKc2t0U2FWVnN1dHJNSUZjQTV4S2FX?=
 =?utf-8?B?RkIrZERoVlFmQ1M3aGxFSDhSSG9VLzY0TkE2RmUwbGFIZUl5WXNENkhQdUxX?=
 =?utf-8?B?ZGVXak1nS05FTmtOL3Bwa3VyZXNISlJ1NTNIQ0pWYm9MMEpCNytmYTJEYnQw?=
 =?utf-8?B?QTc5c2xFdEtWN000Z2J6RWxMK2dEMTFxTDVOaENWOGF0clFYb3lTNHNKelI5?=
 =?utf-8?B?TEJ4ZGxiRDFrNHA4MGRVcVJuVVNGbWxMallWeHJBajBLZUFPNlp3eU9UNW5m?=
 =?utf-8?B?WlQwSlUzOEFOeUprTG1SYXhrQ1h5cmRUWWhEdk1KTUJIMWVRRlZvZEJyMGJX?=
 =?utf-8?B?N1AvU1A4ZlQ4LzVIdlBCNndwMHluV3BsTUNadVBLQzhPYnVsWk9PNWJaT1VQ?=
 =?utf-8?B?YWg5QjNDUm9haVVVbytRei9CWllQdFI0NzVTeXVhMk1mNVg3bVZROURYWXBn?=
 =?utf-8?B?MUVUZkpBUGc2UTFHdE1uWjFWRXR0eWlkejhPY05XdThybWNuWFh1TGZFaFVU?=
 =?utf-8?B?cWp1NFpINkFUWHRLZWt6SC9yczRRNEp5YnF0VzFTajZ5N0Y1Y1dYdUNTa3p4?=
 =?utf-8?B?L3l5SGhBTFdyQ1V1Y05GMkppdFNVdnhQVXU2NDRUNzNxaUNwRC94SXNhWitj?=
 =?utf-8?B?Y09WMUpGWk1YYkJFbjFiekhQNzdWQ2FUUE9Vd0svcG1JbDhHZkZ6L3BhemVS?=
 =?utf-8?B?d1hQbnhpZE1mcktpLzVwekY3SS95SEZuTCsvVDRJUmdTVWNtOUFqamdKWnJh?=
 =?utf-8?B?K2tGeGZ2T2lNYUFkZFhTYzBtV0pVbFl4eG5ZN2JRaXdXaVR6bmlPc0poOG5J?=
 =?utf-8?B?SmdsN3Z2VXA3a0Y3VEd6THR3YnJJVUFIVkNEeW9DeGUwRzhGY0k3ZjNQTGNP?=
 =?utf-8?B?ejZqWkxYWnhuZ0ZzN1BTUE8zRDU3RFBZRmZJUWw2UmFSeEZ0Tzd3OExra2R4?=
 =?utf-8?B?anhRMmNhMVBXVmxjbjFTV1ViVDAxRTBPWUwzS1p2dXRBeWw5SlF5TGQ5eDRm?=
 =?utf-8?B?OWlybEpheTYxc0dZQ3V4eDl3KzdBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E71761ABBEFC5846800F110407CA671C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66c49ea7-05fb-4b02-1cb4-08dd8193a6e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 11:48:51.6472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CseZuU8arjCxMXzix1ZIxA3gjUl9u1GgWHJuAcrsvttpxTS8M+Z2QAjP3sEBlW3OrZnTqFnEqRHAy6iri4OZYqMQxsS087eoiTrsQkx/FmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF01A5BE19B
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

T24gVGh1LCAyMDI1LTA0LTE3IGF0IDE1OjExICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBGb3IgZXZlcnkgY29tbWl0IHRoZSBkZXBlbmRlbnQgY29uZGl0aW9uIGZvciBMT0JGIGlzIGNo
ZWNrZWQNCj4gYW5kIGFjY29yZGluZ2x5IHVwZGF0ZSBoYXNfbG9iZiBmbGFnIHdoaWNoIHdpbGwg
YmUgdXNlZA0KPiB0byB1cGRhdGUgdGhlIEFMUE1fQ1RMIHJlZ2lzdGVyIGR1cmluZyBjb21taXQu
DQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjogQXZvaWQgcmVhZGluZyBoL3cgcmVn
aXN0ZXIgd2l0aG91dCBoYXNfbG9iZiBjaGVjay4gW0phbmldDQo+IHYzOiBVcGRhdGUgTE9CRiBp
biBwb3N0IHBsYW5lIHVwZGF0ZSBpbnN0ZWFkIG9mIHNlcGFyYXRlIGZ1bmN0aW9uLg0KPiBbSm91
bmldDQo+IHY0Og0KPiAtIEFkZCBsb2JmIGRpc2FibGUgcHJpbnQuIFtKb3VuaV0NCj4gLSBTaW1w
bGlmeSBjb25kaXRpb24gY2hlY2sgZm9yIGVuYWJsaW5nL2Rpc2FibGluZyBsb2JmLiBbSm91bmld
DQo+IHY1OiBEaXNhYmxlIExPQkYgaW4gcHJlX3BsYW5lX3VwZGF0ZSgpLiBbSm91bmldDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4N
Cj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoMKg
wqAgfCA0Mw0KPiArKysrKysrKysrKysrKysrKysrLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5owqDCoMKgIHzCoCAyICsNCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8wqAgMSArDQo+IMKgMyBmaWxlcyBjaGFuZ2Vk
LCA0NSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBpbmRleCAwMTk0OWI5MGMwYzMuLjNmYmU4
ZWNhMTMwMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hbHBtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBt
LmMNCj4gQEAgLTM3NiwxNSArMzc2LDU2IEBAIHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3Ry
dWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVy
cy50cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0NCj4gPmNwdV90cmFuc2NvZGVyOw0KPiDCoH0NCj4g
wqANCj4gK3ZvaWQgaW50ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLA0KPiArCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gK3sN
Cj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3Rh
dGUpOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4g
KwkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsJZW51
bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7
DQo+ICsJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ICsJdTMyIGFscG1fY3RsOw0K
PiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjApDQo+ICsJCXJldHVybjsNCj4g
Kw0KPiArCWlmIChjcnRjX3N0YXRlLT5oYXNfbG9iZikNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJ
Zm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrKGRpc3BsYXktPmRybSwgZW5jb2RlciwNCj4gKwkJ
CQnCoMKgwqAgY3J0Y19zdGF0ZS0+dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gKwkJc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcDsNCj4gKw0KPiArCQlpZiAoIWludGVsX2VuY29kZXJfaXNfZHAoZW5j
b2RlcikpDQo+ICsJCQljb250aW51ZTsNCj4gKw0KPiArCQlpbnRlbF9kcCA9IGVuY190b19pbnRl
bF9kcChlbmNvZGVyKTsNCj4gKw0KPiArCQlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkp
DQo+ICsJCQljb250aW51ZTsNCj4gKw0KPiArCQlhbHBtX2N0bCA9IGludGVsX2RlX3JlYWQoZGlz
cGxheSwgQUxQTV9DVEwoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpKTsNCg0KSG93IGFib3V0
IGlmIGluc3RlYWQgb2YgcmVhZGluZyB5b3Ugd291bGQgcmVseSBvbiBvbGRfY3J0Y19zdGF0ZS0N
Cj5oYXNfbG9iZiBhcyBpcyBkb25lIGluIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUgPyBJ
IHRoaW5rIHlvdSBjYW4NCndyaXRlIDAgaW50byBBTFBNX0NUTC4gUGFyYW1ldGVycyBhcmUgYW55
d2F5cyB3cml0dGVuIGluDQppbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlIHdoZW4gQUxQTSBp
cyBlbmFibGUgZm9yIExPQkYgb3IgUFNSLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo+ICsN
Cj4gKwkJaWYgKGFscG1fY3RsICYgQUxQTV9DVExfTE9CRl9FTkFCTEUpIHsNCj4gKwkJCWFscG1f
Y3RsICY9IH5BTFBNX0NUTF9MT0JGX0VOQUJMRTsNCj4gKwkJCWludGVsX2RlX3dyaXRlKGRpc3Bs
YXksIEFMUE1fQ1RMKGRpc3BsYXksDQo+IGNwdV90cmFuc2NvZGVyKSwgYWxwbV9jdGwpOw0KPiAr
CQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiTGluayBvZmYgYmV0d2Vlbg0KPiBmcmFtZXMg
KExPQkYpIGRpc2FibGVkXG4iKTsNCj4gKwkJfQ0KPiArCX0NCj4gK30NCj4gKw0KPiDCoHZvaWQg
aW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gwqAJCQkJwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+IMKgew0KPiDCoAlz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0K
PiDCoAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+IMKgCQlp
bnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gKwljb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiArCQlpbnRlbF9hdG9t
aWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gwqAJc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXI7DQo+IMKgDQo+IC0JaWYgKCFjcnRjX3N0YXRlLT5oYXNfbG9iZiAmJiAh
Y3J0Y19zdGF0ZS0+aGFzX3BzcikNCj4gKwlpZiAoKCFjcnRjX3N0YXRlLT5oYXNfbG9iZiB8fA0K
PiArCcKgwqDCoMKgIGNydGNfc3RhdGUtPmhhc19sb2JmID09IG9sZF9jcnRjX3N0YXRlLT5oYXNf
bG9iZikgJiYNCj4gIWNydGNfc3RhdGUtPmhhc19wc3IpDQo+IMKgCQlyZXR1cm47DQo+IMKgDQo+
IMKgCWZvcl9lYWNoX2ludGVsX2VuY29kZXJfbWFzayhkaXNwbGF5LT5kcm0sIGVuY29kZXIsDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+IGluZGV4IDkx
ZjUxZmIyNGY5OC4uNzdiYWUwMjJhMGVhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uaA0KPiBAQCAtMjMsNiArMjMsOCBAQCB2b2lkIGludGVsX2FscG1f
bG9iZl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAkJ
CQnCoMKgwqAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5fc3RhdGUpOw0KPiDC
oHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4g
wqAJCQnCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+
ICt2b2lkIGludGVsX2FscG1fcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwNCj4gKwkJCQkgc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiDCoHZvaWQg
aW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gwqAJCQkJwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiDCoHZvaWQgaW50
ZWxfYWxwbV9sb2JmX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
cik7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGluZGV4IDk2YTk1YmM5ZDViZi4uZjkxNDAxZWJkZDFhIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTE3Nyw2ICsxMTc3
LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3Rh
dGUoc3RhdGUsIGNydGMpOw0KPiDCoAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+IMKg
DQo+ICsJaW50ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0YXRlLCBjcnRjKTsNCj4gwqAJaW50
ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUoc3RhdGUsIGNydGMpOw0KPiDCoA0KPiDCoAlpZiAoaW50
ZWxfY3J0Y192cnJfZGlzYWJsaW5nKHN0YXRlLCBjcnRjKSkgew0KDQo=

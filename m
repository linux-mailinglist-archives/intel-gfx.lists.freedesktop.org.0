Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D46BE8544
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 13:30:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9213710EBC3;
	Fri, 17 Oct 2025 11:30:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dHBxNPGx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253CF10EBC0;
 Fri, 17 Oct 2025 11:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760700609; x=1792236609;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=d03Rfj9T0sXD3o1VAiKqBdUZVasGQxqC1CAHweFbYnk=;
 b=dHBxNPGxT2EPXJgERv0TXUa7g7OtRws/QYEuZt84v3cBQff6lBzrVY+U
 26LvaPWgaOF7ja9IiTj0Xij7wabSj40kRyALkD1xxs69liGozCZAta9+C
 IAvoV/nHwidar57uYPbL1n2ufYbS8fBavNJtOPbnNMCGC1nmUMNy7Efyv
 8b5G+l+RObfOKOOId2Z958/GS9OTIACnCRNRDJMz1AiExzXh1zXtIyMZf
 Qpq2xSthlidhUzjY8tfWxAYK296T68A+NVdz1T30/ITbQFXcVfHQiK7bP
 iBbJ7IO47EuzzjZRigMzSt+OoXRf7gYct7Y3QvvC85otjFpA6M4yWDLhY Q==;
X-CSE-ConnectionGUID: V8nRswtbSdWVkETy7AbkYA==
X-CSE-MsgGUID: xXcV5NosTwGYi/3cJIn86g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="66741009"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="66741009"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 04:30:09 -0700
X-CSE-ConnectionGUID: 8w+FgMfgSSinDiEhG4KM8Q==
X-CSE-MsgGUID: olU/mnNxRlWd7ysBHcYQNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="181848542"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 04:30:09 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 04:30:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 04:30:08 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.26) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 04:30:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FtXGM9nQ355VgTUNfr+k75TmDy7/EfnJ0vbhRwZ3gFCL6PdLPIurXyPUoDEHs0tKh34qYZ/jCDUaiD7X34nBNZnTTeqHdYF7CF8t+kxzUbaSWsOWGGx4iHLeglVOiVSU0heRDLlqMZeIVBVW572LcLI/VCvN1N/WCb+4Vq7KXC1CFXuSrJLFafjh9qq/8eQbAJPLxy1NfgOFuekjJIvDfH2sFS0tV5jjrDwjvoXnwlFWzeIo13nLW+v9ZneY+oGPy8FoXmUY+nUSiSTxSV7nLRuDS8f+MX0yjQuJ5T5BysWK+s1FWklyoeUlDsU3eeSET3WEnn6gmUfEUMYB1krEHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d03Rfj9T0sXD3o1VAiKqBdUZVasGQxqC1CAHweFbYnk=;
 b=UezCFIUIuXX2cENtzbiQSTpMsWEWUwUqutmRjFNsBD7bz7taWZPfA/lXHcZbEOJNwEnKP1S4Su3IOY7F7vH62LRy/J5LxP4JZXfiERIkQztuAp4ZzRB8AN9GKU2V5bM23d4RUGnDIBz/UJgyKfL8nBKd50RFm/VE1O0g8BLWuTWxSnP3UMJk5pVplOlwRJ+ZH4YaoRU54r4eS9QTKaVFceYJov5xAFJ7qKK6WIO585z1mJ/20zQkyssyOk8JIdWYfJg53lK7b5PtGRyA9JRpim9b94YTsLfNrXJJahxv1ABuBSyNRj3QLdBKMf750TDrUHxCb2rFD2/PTmU3MHO/cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6976.namprd11.prod.outlook.com (2603:10b6:510:223::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.13; Fri, 17 Oct 2025 11:30:05 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 11:30:04 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Topic: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Index: AQHcPyUPz2Y/dnBy/UmpWoP/5QJAR7TGDIuAgAAIa4CAAAXlgIAABOAAgAAPmYCAAAUkgA==
Date: Fri, 17 Oct 2025 11:30:04 +0000
Message-ID: <f72650e893f61b514af639c2e68bf330e66779cc.camel@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
 <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
 <ad6cd831-517a-4eb9-b812-1fb4dadea00d@intel.com>
 <043a61da1973f6bfd5cc9b45c84c1c13e038828e.camel@intel.com>
 <7faa7134eb0ef1a558bc71c5e9f30125132a55a1.camel@intel.com>
 <57db1009-7c29-42a1-aad7-9436cda39ea5@intel.com>
In-Reply-To: <57db1009-7c29-42a1-aad7-9436cda39ea5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6976:EE_
x-ms-office365-filtering-correlation-id: b2cfe47d-5a53-4d8e-094a-08de0d7084d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?am53eEsxSGdDY2lCSW9sSXRWWStTR3ZkTmJTTWQrVU1HWXdJOWFsb3czZ1hr?=
 =?utf-8?B?d0wydDFxVElRcU53dUZibnRmOXhhOGx0ZXFHZU0vS0Y1eHVIY2VuN21oRGQz?=
 =?utf-8?B?bVpFVzlEV3RjRU9TeTlpdTZMcWoxMFFtdmZqTWFsNGlxekFzeGVhOGZwU2sw?=
 =?utf-8?B?NXkzbkhRREJVTzRPMGN1aTU0RjMvOURBcHJ6ekpua2pBemhDRk5NQVh3L2FM?=
 =?utf-8?B?L1BrL3BSRzBVVUttaGt5bUY5MkNhbklBUXkzbysyNkZMU3U5Szh1THNkbGtv?=
 =?utf-8?B?OGxXU1QxQWF6UFFrMFRtc2I5TWdZSm9uNHo2Zk43ZmR2ZUQ5T3E4MHpUdUZk?=
 =?utf-8?B?THlpeGZpUVFuMWhYL3Awb1M1WVVRZFF3ZDBUSFdtbEpxQjJLK05hQWdzcVdR?=
 =?utf-8?B?RXFhNUdsUmJXNTRiZTBkWlZhd2g4NCtsS3p0MXRUdjVkbFN2bkdKbnhDOUhk?=
 =?utf-8?B?ZEtmTUlVbk1uVlFPdmNBQlBJdWVhWUhPZk5icmZzOEJrVm01bTRWdjFQOTJq?=
 =?utf-8?B?T0VTK2lPRjJjd1duUGdXcWtvNmwwa1libVVITlF0RWU0UGp3VzNDQ3U2U2pB?=
 =?utf-8?B?ZkFLY0lrWlZ4aXp1YWRpdzVjb2FkcjdkMjB1ME11T004VHVuQzZPdk9ERmJ6?=
 =?utf-8?B?QU1CZTYxODZPZ09DY1pVZXBMblJ4eElMTW56RnNhQVdXUW5yVzFob2ZJbW9s?=
 =?utf-8?B?bWlPcmQ3RDNoT1pEcGxWaHYvenp6b3R5bldzZHYzdGE2a0FpangyS21Kb2dl?=
 =?utf-8?B?YUJ4cWszbXllVHkyWlpMOVZvYURta09UcVhuRTlCQXV6SytvekRNeVpkMFJ1?=
 =?utf-8?B?UkFza2tQd1djQ3kxS1cvT2hYQWEwWU9WWWlQbWFob0p3b2ZQOWgvMjQvSjhh?=
 =?utf-8?B?aTZjWUN6SWRXYVY0WmM1TDI5cDNadnhSWkJaTVYxcTdmTERqazV1LzR1ZVpU?=
 =?utf-8?B?MlZiZlNpZ1FvTjFOL2J1TXljVVpnbTEvMzQ2U0RmSnhBOWZ5cjRvaGxRVEcw?=
 =?utf-8?B?eWZVRTczbWRySzdjNG5iMDB0YzRROC8xeEw0aGU4N013bUFNUFZ5bkxKN0RD?=
 =?utf-8?B?bVNKTklGWHFaTXI5OVRWSy95cEZDY21kVjliNHcraFdLb3R0TjQxV1M0MFJp?=
 =?utf-8?B?VzR0K2V6UVNpVy9GZUR0OGFiV3BmbVMyOFp0anZMNHRmTlZ4WnJKdGo3b0pH?=
 =?utf-8?B?K0xrVUlsUDA2Vmw4OGk1OWZ2elZiVDZoOUw5QU9sNkI3Z3lhcnpyQ1BoMDN4?=
 =?utf-8?B?ZC9tT1p2Mmp4YUZGdUgxT2VOL2plSm9RMnUvdWRxaktYZlJ1L1E3ZEpWNUh3?=
 =?utf-8?B?ak42aE1UV01zdi85WENjekF5eWhRZXVwdXRkYUFKQ2kycUYrcm9sY2hKako4?=
 =?utf-8?B?aW9Xc1R2MngwU0dGenQ5N3JXVjVpZFQwZjVGSG5zMFovNVZDTnRYQm9pSHpP?=
 =?utf-8?B?bEtTT0c4N3pMSXFkU05hRVlmVkdJTVYxcEtmNGg1aTk4NWQyWVgrSUhKUy9q?=
 =?utf-8?B?SHN6YUtIMjlRblBsUzFQWGMrM0M0ekdDQjdjYkF3K09lSEplUFBJeStRYTF2?=
 =?utf-8?B?Rno2MENRQU9uOFYrK1JwSjk3RVJzSG5xRC9EY3VQWEtjWm1QUW9zY2g2dU93?=
 =?utf-8?B?bjVsbzhHSEZ4dzBkQWhQQml6ai9wSFdRMzFaT3o3aXRGMXh0Vm9VMXdEK0Nw?=
 =?utf-8?B?WjNBYnBSNzYzQys5RVdEUnh5ZjI0QzBwK0M0K0hsVnhHU0ZETnNVTXNXTnZG?=
 =?utf-8?B?WG9iNE1kaUF1akplQ1B6T0xBVXJ3aUp4aUdnRU5zbWRhcEluQlNycXM2Skwy?=
 =?utf-8?B?K2JxT1ZybWNKMnd6c1pPOEd4QytmTFVFSVFMYS9KZElNZVFUTkhOdUY1a2Jl?=
 =?utf-8?B?WlFzY0JNMitPd0dkSkhmN1E5WEkyK2V5em1SZ2tRK0VGVFRnT3RVa0VJQjFi?=
 =?utf-8?B?T2hZNFU0cGhuSlIvMkNEVjM5T0tOcGxLSjIydkwvNy9LYTI4NklxL1YxdDZS?=
 =?utf-8?B?SXE0TmhsclVnOVppalJVVG1WN0tCUEpCL1paUGp6NFUvQmxDWTFEY2poekhq?=
 =?utf-8?Q?1P7HH4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnZwN0tnVlplRG1NS0UrYUpqajI0ejhxNW5uUW9kL1l5WjYvb01aanZRUHNm?=
 =?utf-8?B?aCtUV3J2WWp2UDVLTmdScFl5SGo4T3dxMldrRDllV2pYTFpXVFdEUHU3YUJT?=
 =?utf-8?B?dTZjc2NhdDNUZjVGWUF2eDluYXRERHBGK2dmekcwcVYwRzRNQTloc3pSb3Vz?=
 =?utf-8?B?bW5vY3psR2E4TUtlM2lrZTVWTExrc3U4REpMQ2t0SmFaMXdGVXhiTzRCcG8x?=
 =?utf-8?B?aGx3VEhYZTltamdiZ0VLWE5yVVdIVHZrWVBVNkxXYzZQcGRDZ1NvMWZUREkv?=
 =?utf-8?B?UnVPdHh0STZ4QzNoWFBwVHZJdUoyZndTbXFOL1g1YzFhNDZQalVZNFRxNU9n?=
 =?utf-8?B?MlU0clVWeVRRenhHZ1ZlZ2FBK21LT2I1S1JwZG9BZEtaMStEVVl3alJsVDEr?=
 =?utf-8?B?d3gvMEhsM3A1NDFhdjUyQW15WEVieTMrbkRQTHAyZjBYQnpmLzFpR2hLcWhJ?=
 =?utf-8?B?RW5nU1NXYkxzT1c4RWFZajNzYXl4V1RiR0tjRXZrWHRpSUF1Z3pUNDhzbFM0?=
 =?utf-8?B?MlU0R2t2WjJZV0Q5aXlERUFLTThGUU10b2lFaGQwUW9SbmZrZUNNSnFtSmZT?=
 =?utf-8?B?aFFFd3FzRzhXWUhLOW96Qit2TEp6R21BQndnRE01MHA3ZWZvM095MnliZnU0?=
 =?utf-8?B?dkNxdTF5dUdkVFNncVk0MGszQi9vclZjOVViNDU4cDVIUWhyUEdqQ1RCWllC?=
 =?utf-8?B?Vjl4bVE2aERsdFBMdkRoa1d5MHZDeWsvRnRkTWp6RjdYbDllOC83VHFORmZq?=
 =?utf-8?B?YmQvL2RRUFpZVGhIZWZNeTV2ZUk0VVFoZWgyQ2wxYUxUN3dTbHAxWC9Td0po?=
 =?utf-8?B?UDlLTytHaTcvcG1JTzlwVm5xUW5mVGRHcGVWVkxMNC84RWtBYm5yWWZlQnJp?=
 =?utf-8?B?cUJ4dGxhUUMxd0lpdS9NY25ERVpCcFRaSEgyNi85dngzWEFhQlhYQUpobEFw?=
 =?utf-8?B?bEtnUHpNSmVFSTlDS0NQWFcwdUhBWmxFdmloNXMweVJ2aWhPc1ZxVXdMaElE?=
 =?utf-8?B?R3VubkwyQW1SWEVuMkNvRlRtSHdrd1JqN0tLZFM1a08yV2IyNEljQmtvK3dw?=
 =?utf-8?B?aVlNNHV5a1QzdWpMZEkrcFVvbE1qYjQycHBQWDU0VkgvSnNTZnhuZU8rSkZ4?=
 =?utf-8?B?Vkc0MmdSNC9OODd5R1AvWWVNcmR1UEpNNnFxN0s2NitVVHFVS2hnU2FQOVd5?=
 =?utf-8?B?ZlNMcnA1Y2QzaHptYmVNWTZhZHQxUEp2M0ZWSW1IbDBRYTMxRjdFeS9SWks3?=
 =?utf-8?B?V2tPT3lhakd5eUUrTVRabE5MeW5JcEhXRlNHTHpZWlZ4SFJtcmhjbzQzbjg4?=
 =?utf-8?B?S0ZjdUg1N0IrV1B0S3RWTFlCb1VwOUFHbVQ2SlgzUk9yeldYLzhTZnExeXNT?=
 =?utf-8?B?bTludjBIZmNIS1N5cG1wRWNmN0haNUYxZXFKbWx3RnEzK2hRWm5nZG14Qk9O?=
 =?utf-8?B?dGgxUERRbk1zWitTRXBhSmlzMmZ6SlB5Yi9GY011aDRSWC8yR0dMOWxWNVVi?=
 =?utf-8?B?SklPR2dhZ1Q0N3BIVHNQTExxOE9EUmZlamo4VmkrNE94ZjdQZmc4R1lURHIw?=
 =?utf-8?B?RUxVVi9CQUVZUWYzdENWdjdkbG5SWE1HMEJmbUw4SDRFUUZta0FhL0FSSk9s?=
 =?utf-8?B?eXk0SUphTGlncTJDZlRMblB2czVBZ0tmL1hiakExQzYzaFA5UDJudm1rVmhQ?=
 =?utf-8?B?WUI2ZzJ5Q25rRDN2VVU0Sm5uZUhyR05EY0hnMEZua3R6SHgxN0FMQzFXbmVT?=
 =?utf-8?B?TUNKbG5sa0QyTUNMaG0vMjRib3VkR1F4Z29PYjB6ZEpScWZ1b0FsQm9zTTgw?=
 =?utf-8?B?WDdvUWUzWXRJdnZxMjFpaHFhYjUwRDRUeGYvWmhUcmUyVmplR1IxbXJQUjcy?=
 =?utf-8?B?QzZpOTdJblVMTDIvRnRtMnJoVXRjNDg1VDRaTndKTEpCczZUSWNsbzNvZzFM?=
 =?utf-8?B?NG5UR2lYak04a00xS0JsNXRyMFM1djU4WFd3SVNWQWc2eDVyVkE4bXVQTktZ?=
 =?utf-8?B?dlViZHBCb25hSjlWdElXNXl4QUhEaGFqWUY4c0dHbXM5TzRBejZsbjZaL0xI?=
 =?utf-8?B?aHVuUDFrdzh5a1V1dFNONDUrRlhZVitOUFdTU3BIZEdrdDUvT3A5VGlWMlNx?=
 =?utf-8?B?NytJTzNXaVZtN0N2QzBmSGcwcGZVa2wwTENhVkUyZXZwSEw5TXRNU0J0QzRm?=
 =?utf-8?B?RXV1a0hEakE4TXBLRGJSbTY4Zkppem5IckEwUkw0Vnk0dG9CVmxEbDhONXFv?=
 =?utf-8?B?M05Ua0RyV1pJMWZZS0tBSlhvK3FnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <692A3AD282AA4F4887F4ACD87A06E050@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2cfe47d-5a53-4d8e-094a-08de0d7084d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 11:30:04.9455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DvX7ttP00jo0lVXNgByTJWlfA2L5mrZlEDb31hmus2bFfEN5Lm3lzrSGdmch+otIG0ZFGOKaT22WN5njW+zNmx5BOFu2RRXDaFDPAAuU4mk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6976
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

T24gRnJpLCAyMDI1LTEwLTE3IGF0IDE2OjQxICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDEwLzE3LzIwMjUgMzo0NSBQTSwgSG9nYW5kZXIsIEpvdW5pIHdyb3RlOg0K
PiA+IE9uIEZyaSwgMjAyNS0xMC0xNyBhdCAxMjo1OCArMDMwMCwgSG9nYW5kZXIsIEpvdW5pIHdy
b3RlOg0KPiA+ID4gT24gRnJpLCAyMDI1LTEwLTE3IGF0IDE1OjA3ICswNTMwLCBOYXV0aXlhbCwg
QW5raXQgSyB3cm90ZToNCj4gPiA+ID4gT24gMTAvMTcvMjAyNSAyOjM3IFBNLCBIb2dhbmRlciwg
Sm91bmkgd3JvdGU6DQo+ID4gPiA+ID4gT24gRnJpLCAyMDI1LTEwLTE3IGF0IDEwOjMxICswNTMw
LCBBbmtpdCBOYXV0aXlhbCB3cm90ZToNCj4gPiA+ID4gPiA+IEludHJvZHVjZSBhIGhlbHBlciB0
byBjb21wdXRlIHRoZSBtYXggbGluayB3YWtlIGxhdGVuY3kNCj4gPiA+ID4gPiA+IHdoZW4NCj4g
PiA+ID4gPiA+IHVzaW5nDQo+ID4gPiA+ID4gPiBBdXhsZXNzL0F1eCB3YWtlIG1lY2hhbmlzbSBm
b3IgUFNSL1BhbmVsIFJlcGxheS9MT0JGDQo+ID4gPiA+ID4gPiBmZWF0dXJlcy4NCj4gPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ID4gVGhpcyB3aWxsIGJlIHVzZWQgdG8gY29tcHV0ZSB0aGUgbWluaW11
bSBndWFyZGJhbmQgc28gdGhhdA0KPiA+ID4gPiA+ID4gdGhlDQo+ID4gPiA+ID4gPiBsaW5rDQo+
ID4gPiA+ID4gPiB3YWtlDQo+ID4gPiA+ID4gPiBsYXRlbmNpZXMgYXJlIGFjY291bnRlZCBhbmQg
dGhlc2UgZmVhdHVyZXMgd29yayBzbW9vdGhseQ0KPiA+ID4gPiA+ID4gZm9yDQo+ID4gPiA+ID4g
PiBoaWdoZXINCj4gPiA+ID4gPiA+IHJlZnJlc2ggcmF0ZSBwYW5lbHMuDQo+ID4gPiA+ID4gPiAN
Cj4gPiA+ID4gPiA+IEJzcGVjOiA3MDE1MSwgNzE0NzcNCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gPiA+ID4g
PiA+IC0tLQ0KPiA+ID4gPiA+ID4gwqDCoMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyB8IDEyDQo+ID4gPiA+ID4gPiArKysrKysrKysrKysNCj4gPiA+ID4gPiA+IMKg
wqDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmggfMKgIDEgKw0KPiA+
ID4gPiA+ID4gwqDCoMKgMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiA+IGluZGV4IDcwM2U1ZjZhZjA0Yy4uYTgzMDNiNjY5
ODUzIDEwMDY0NA0KPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+ID4gQEAgLTQ0MTYsMyArNDQxNiwxNSBAQCB2b2lk
DQo+ID4gPiA+ID4gPiBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWdfbGF0ZShzdHJ1Y3QNCj4gPiA+
ID4gPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+ID4gPiA+IMKgwqAgDQo+ID4gPiA+ID4g
PiDCoMKgwqAJaW50ZWxfcHNyX3NldF9ub25fcHNyX3BpcGVzKGludGVsX2RwLCBjcnRjX3N0YXRl
KTsNCj4gPiA+ID4gPiA+IMKgwqDCoH0NCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICtpbnQg
aW50ZWxfcHNyX21pbl9ndWFyZGJhbmQoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ID4g
PiA+ICpjcnRjX3N0YXRlKQ0KPiA+ID4gPiA+ID4gK3sNCj4gPiA+ID4gPiA+ICsJc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4gPiA+ID4gdG9faW50ZWxfZGlzcGxheShjcnRj
X3N0YXRlKTsNCj4gPiA+ID4gPiA+ICsJaW50IGF1eGxlc3Nfd2FrZV9saW5lcyA9IGNydGNfc3Rh
dGUtDQo+ID4gPiA+ID4gPiA+IGFscG1fc3RhdGUuYXV4X2xlc3Nfd2FrZV9saW5lczsNCj4gPiA+
ID4gPiA+ICsJaW50IHdha2VfbGluZXMgPSBESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwID8NCj4g
PiA+ID4gPiA+ICsJCQkNCj4gPiA+ID4gPiA+IHBzcjJfYmxvY2tfY291bnRfbGluZXMoY3J0Y19z
dGF0ZS0NCj4gPiA+ID4gPiA+ID4gYWxwbV9zdGF0ZS5pb193YWtlX2xpbmVzLA0KPiA+ID4gPiA+
ID4gKwkJCQkJCWNydGNfc3RhdGUNCj4gPiA+ID4gPiA+IC0NCj4gPiA+ID4gPiA+ID4gYWxwbV9z
dGF0ZS5mYXN0X3dha2VfbGluZXMpIDoNCj4gPiA+ID4gPiA+ICsJCQkgY3J0Y19zdGF0ZS0NCj4g
PiA+ID4gPiA+ID5hbHBtX3N0YXRlLmlvX3dha2VfbGluZXM7DQo+ID4gPiA+ID4gPiArDQo+ID4g
PiA+ID4gPiArCXJldHVybiBtYXgoYXV4bGVzc193YWtlX2xpbmVzLCB3YWtlX2xpbmVzKTsNCj4g
PiA+ID4gPiBobW0sIG5vdyBpZiB5b3UgYWRkOg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IGlmIChj
cnRjX3N0YXRlLT5yZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUpDQo+ID4gPiA+ID4gCQlwc3Jf
bWluX2d1YXJkYmFuZCsrOw0KPiA+ID4gPiBJIGRpZCBub3QgZ2V0IHRoaXMgcGFydC7CoERvIHdl
IG5lZWQgdG8gYWNjb3VudCBmb3IgMSBtb3JlDQo+ID4gPiA+IHdha2VsaW5lcw0KPiA+ID4gPiBp
Zg0KPiA+ID4gPiB0aGlzIGZsYWcgaXMgc2V0Pw0KPiA+ID4gSWYgeW91IGxvb2sgYXQgaG93IHRo
YXQgZmxhZyBhZmZlY3RzIHZibGFuayBjaGVjayBpbg0KPiA+ID4gaW50ZWxfcHNyX2NvbXB1dGVf
Y29uZmlnX2xhdGU6DQo+ID4gPiANCj4gPiA+IC4uLg0KPiA+ID4gc3RhdGljIGJvb2wgX3dha2Vf
bGluZXNfZml0X2ludG9fdmJsYW5rKGNvbnN0IHN0cnVjdA0KPiA+ID4gaW50ZWxfY3J0Y19zdGF0
ZQ0KPiA+ID4gKmNydGNfc3RhdGUsDQo+ID4gPiAJCQkJCWludCB2YmxhbmssDQo+ID4gPiAJCQkJ
CWludCB3YWtlX2xpbmVzKQ0KPiA+ID4gew0KPiA+ID4gCWlmIChjcnRjX3N0YXRlLT5yZXFfcHNy
Ml9zZHBfcHJpb3Jfc2NhbmxpbmUpDQo+ID4gPiAJCXZibGFuayAtPSAxOw0KPiA+ID4gLi4uDQo+
ID4gPiANCj4gPiA+IFNvIHRvIHRha2UgdGhhdCBpbnRvIGFjY291bnQgd2hlbiBjYWxjdWxhdGlu
ZyBtaW5pbXVtIGd1YXJkYmFuZA0KPiA+ID4gbmVlZGVkDQo+ID4gPiBieSBQU1IgeW91IG5lZWQg
dG8gaW5jcmVhc2UgYnkgb25lLiBTYW1lIGdvZXMgd2l0aCBTQ0w6DQo+ID4gPiANCj4gPiA+IC4u
Lg0KPiA+ID4gCWludCBzY2wgPSBfaW50ZWxfcHNyX21pbl9zZXRfY29udGV4dF9sYXRlbmN5KGNy
dGNfc3RhdGUsDQo+ID4gPiAJCQkJCQkNCj4gPiA+IG5lZWRzX3BhbmVsX3JlcGxheSwNCj4gPiA+
IAkJCQkJCQ0KPiA+ID4gbmVlZHNfc2VsX3VwZGF0ZSk7DQo+ID4gPiAJdmJsYW5rIC09IHNjbDsN
Cj4gPiA+IC4uLg0KPiA+ID4gDQo+ID4gPiBZb3UgYXJlIGFscmVhZHkgcGFydGlhbGx5IHRha2lu
ZyBpbnRvIGFjY291bnQgUFNSIG5lZWRzIHdoZW4NCj4gPiA+IGNhbGN1bGF0aW5nIG9wdGltaXpl
ZCBndWFyZGJhbmQgZXhjZXB0IHRoZXNlIHR3byBsaW5lcyB3aGljaCBhcmUNCj4gPiA+IG5lZWRl
ZA0KPiA+ID4gY29uZGl0aW9uYWxseS4NCj4gPiA+IA0KPiA+ID4gQWxzbyBpbnRlbF9wc3JfY29t
cHV0ZV9jb25maWcgaXMgcnVuIGF0IHRoaXMgcG9pbnQgLT4geW91IGtub3cNCj4gPiA+IHdoaWNo
DQo+ID4gPiBvbmUgdG8gdXNlOiBhdXhsZXNzIHdha2UgdGltZSBvciBhdXggd2FrZSB0aW1lLiBu
byBuZWVkIHRvIHVzZQ0KPiA+ID4gbWF4KCkNCj4gPiA+IHdpdGggdGhlbS4gSnVzdCBjaG9vc2Ug
dGhlIG9uZSB3aGljaCBpcyByZWxldmFudC4NCj4gPiA+IA0KPiA+ID4gV2l0aCB0aGVzZSBjaGFu
Z2VzIHlvdSBjb3VsZCBkcm9wIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlDQo+ID4gPiBh
cw0KPiA+ID4gdmJsYW5rIHdvdWxkIGJlIGxvbmcgZW5vdWdoIGZvciBQU1IgbW9kZSBjb21wdXRl
ZCBieQ0KPiA+ID4gaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnLCBubz8NCj4gPiBPaywgbm90aWNl
ZCBub3cgdGhpcyBpbiB0aGUgbGFzdCBwYXRjaDoNCj4gPiANCj4gPiAuLi4NCj4gPiBjcnRjX3N0
YXRlLT52cnIuZ3VhcmRiYW5kID0gbWluKGd1YXJkYmFuZCwNCj4gPiBpbnRlbF92cnJfbWF4X2d1
YXJkYmFuZChjcnRjX3N0YXRlKSk7DQo+ID4gLi4uDQo+ID4gDQo+ID4gU28gaWYgd2UgbmVlZCB0
byBmYWxsIGJhY2sgdG8gaW50ZWxfdnJyX21heF9ndWFyZGJhbmQgd2UgbmVlZCB0bw0KPiA+IGhh
dmUNCj4gPiB0aGF0IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlLg0KPiA+IA0KPiA+IEFu
eXdheXMgSSB0aGluayB5b3UgbmVlZCB0byB0YWtlIGludG8gYWNjb3VudCB0aGF0DQo+ID4gcmVx
X3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lIGFuZCBfaW50ZWxfcHNyX21pbl9zZXRfY29udGV4dF9s
YXRlbmN5DQo+ID4gaW4NCj4gPiBpbnRlbF9wc3JfbWluX2d1YXJkYmFuZC4NCj4gDQo+IA0KPiBI
bW0gSSB0aGluayB5b3UgYXJlIHJpZ2h0LCB3ZSBuZWVkIHRvIGFjY291bnQgZm9yIA0KPiByZXFf
cHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUgaGVyZS4NCj4gDQo+IEJ1dCBmb3IgU0NMIEkgc3RpbGwg
dGhpbmsgd2UgZG8gbm90IG5lZWQgdG8gYWNjb3VudCBpbiB3YWtlbGluZXMgYXMNCj4gd2UgDQo+
IGFyZSBhbHJlYWR5IGFjY291bnRpbmcgaW4gaW50ZWxfdnJyX21heF9ndWFyZGJhbmQoKSB3aGlj
aCBjYWxscyA6DQo+IA0KPiBpbnRlbF92cnJfbWF4X3ZibGFua19ndWFyZGJhbmQoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgDQo+ICpjcnRjX3N0YXRlKSB7IHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gDQo+IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7IGNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlIA0KPiAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLT5o
dy5hZGp1c3RlZF9tb2RlOyByZXR1cm4gDQo+IGNydGNfc3RhdGUtPnZyci52bWluIC0gYWRqdXN0
ZWRfbW9kZS0+Y3J0Y192ZGlzcGxheSAtIA0KPiBjcnRjX3N0YXRlLT5zZXRfY29udGV4dF9sYXRl
bmN5IC0NCj4gaW50ZWxfdnJyX2V4dHJhX3ZibGFua19kZWxheShkaXNwbGF5KTsgfQ0KDQppbnRl
bF92cnJfbWF4X2d1YXJkYmFuZCBpcyB1c2VkIG9ubHkgaWYgaXQncyBzbWFsbGVyIHRoYW4gd2hh
dCBpcw0KY29tcHV0ZWQgYnkgaW50ZWxfdnJyX2NvbXB1dGVfb3B0aW1pemVkX2d1YXJkYmFuZC4g
SS5lLiBjYXNlIHdoZXJlDQppbnRlbF9wc3JfbWluX2d1YXJkIHJ1bGVzIHVzZWQgZ3VhcmRiYW5k
IGl0IGlzIG5vdCB0YWtlbiBpbnRvIGFjY291bnQNCnVubGVzcyB5b3UgYWRkIGl0IGludG8gaW50
ZWxfcHNyX21pbl9ndWFyZC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBSZWdh
cmRzLA0KPiANCj4gQW5raXQNCj4gDQo+ID4gDQo+ID4gQlIsDQo+ID4gDQo+ID4gSm91bmkgSMO2
Z2FuZGVyDQo+ID4gPiBCUiwNCj4gPiA+IA0KPiA+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gPiAN
Cj4gPiA+IA0KPiA+ID4gPiBXaGF0IHdlIHdhbnQgdG8gZG8gaXMgdG8gY2hlY2sgZm9yIG1pbiBn
dWFyZGJhbmQgZm9yDQo+ID4gPiA+IHBhbmVsX3JlcGxheS9zZWxfdXBkYXRlIGJhc2VkIG9uIHRo
ZSByZXF1aXJlZCB3YWtlbGluZXMuDQo+ID4gPiA+IA0KPiA+ID4gPiBXaGV0aGVyIHdlIGNhbiB1
c2UgdGhlIGF1eGxlc3Nfd2FrZV9saW5lcyBhbmQgd2FrZV9saW5lcyBhcw0KPiA+ID4gPiBjb21w
dXRlZA0KPiA+ID4gPiBhYm92ZSB0byBlc3RpbWF0ZSB0aGUgbWF4IHdha2VsaW5lcyBvciBpbnN0
ZWFkIHdlIHNob3VsZCB1c2UNCj4gPiA+ID4gZnVuY3Rpb25zDQo+ID4gPiA+IGZyb20gYWxwbS5j
IDoNCj4gPiA+ID4gDQo+ID4gPiA+IGlvX2J1ZmZlcl93YWtlX3RpbWUoKSBhbmQgX2xubF9jb21w
dXRlX2F1eF9sZXNzX3dha2VfdGltZSgpIHRvDQo+ID4gPiA+IGdldA0KPiA+ID4gPiB0aGUNCj4g
PiA+ID4gd29yc3QgY2FzZSB3YWtlbGluZXMuDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4g
PiBXaGF0ZXZlciBpcyB0aGUgUFNSIG1vZGUgaXQgY2FuIGJlIGVuYWJsZWQgd2hhdCBjb21lcyB0
bw0KPiA+ID4gPiA+IHZibGFuaw0KPiA+ID4gPiA+IHJlc3RyaWN0aW9ucyBhbmQgeW91IGNhbiBk
cm9wIHBzcl9jb21wdXRlX2NvbmZpZ19sYXRlPw0KPiA+ID4gPiANCj4gPiA+ID4gSSB0aGluayB3
ZSBjYW5ub3QgZHJvcCB0aGUgcHNyX2NvbXB1dGVfY29uZmlnX2xhdGUgYXMgaXQgY2hlY2tzDQo+
ID4gPiA+IHdoZXRoZXINCj4gPiA+ID4gdGhlIGFjdHVhbCBndWFyZGJhbmQgaXMgZW5vdWdoIGZv
ciBQU1IgZmVhdHVyZXMuDQo+ID4gPiA+IA0KPiA+ID4gPiBpbnRlbF9wc3JfbWluX2d1YXJkYmFu
ZCgpIGlzIHVzZWQgYWxvbmcgd2l0aCBvdGhlciBmZWF0dXJlcyB0bw0KPiA+ID4gPiBoYXZlDQo+
ID4gPiA+IGFuIGVzdGltYXRlIG9uIHRoZSBndWFyZGJhbmQgdGhhdCB3b3JrcyBmb3IgYWxsIGNh
c2VzLCB3aXRob3V0DQo+ID4gPiA+IGENCj4gPiA+ID4gbmVlZA0KPiA+ID4gPiB0byBjaGFuZ2Ug
dGhlIGd1YXJkYmFuZC4NCj4gPiA+ID4gSXQgaXMgYm91bmRlZCBieSB0aGUgdmJsYW5rIGxlbmd0
aCBhdmFpbGFibGUNCj4gPiA+ID4gDQo+ID4gPiA+IFJlZ2FyZHMsDQo+ID4gPiA+IA0KPiA+ID4g
PiBBbmtpdA0KPiA+ID4gPiANCj4gPiA+ID4gPiBCUiwNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBK
b3VuaSBIw7ZnYW5kZXINCj4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ICt9DQo+ID4gPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+
ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4g
PiA+ID4gPiBpbmRleCBiMTdjZTMxMmRjMzcuLjYyMGIzNTkyODgzMiAxMDA2NDQNCj4gPiA+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiA+
ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4g
PiA+ID4gPiA+IEBAIC04NSw1ICs4NSw2IEBAIGJvb2wgaW50ZWxfcHNyX25lZWRzX2FscG1fYXV4
X2xlc3Moc3RydWN0DQo+ID4gPiA+ID4gPiBpbnRlbF9kcA0KPiA+ID4gPiA+ID4gKmludGVsX2Rw
LA0KPiA+ID4gPiA+ID4gwqDCoMKgCQkJCcKgwqAgY29uc3Qgc3RydWN0DQo+ID4gPiA+ID4gPiBp
bnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+ID4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gPiA+ID4gPiDC
oMKgwqB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9kcA0K
PiA+ID4gPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gPiA+ID4gwqDCoMKgCQkJCcKgwqAgc3RydWN0
IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ID4gPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiA+ID4gPiA+
ICtpbnQgaW50ZWxfcHNyX21pbl9ndWFyZGJhbmQoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
PiA+ID4gPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiA+ID4gPiA+IMKgwqAgDQo+ID4gPiA+ID4gPiDC
oMKgwqAjZW5kaWYgLyogX19JTlRFTF9QU1JfSF9fICovDQoNCg==

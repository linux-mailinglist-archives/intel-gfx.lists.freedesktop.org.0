Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F21E0B0D50E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 10:56:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88F8B10E632;
	Tue, 22 Jul 2025 08:56:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CDb9azhQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FD0010E632;
 Tue, 22 Jul 2025 08:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753174594; x=1784710594;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=6GFqqeWfms1KN18AUEZByQwSEsSN4nqSZEFH4MaU0pM=;
 b=CDb9azhQYOJJDirFmeQR8XbVjChOGI1VHrdmcwjYa/3WkXhOnh13CqcK
 b19c/OXMt9JIRK+Yu4yto6UPcK6T5NFVZPRYSphtIr6wKf+FPLVP7aCOa
 fkDyV/bM5elB585/Glrh3oCp9DXBfBHEpFhQCBIEAI9EER/iOftwyUiQd
 M/uPVBvh+UZahXwg4yFXZ3HAD76Xp1pIyCiaI3uV4P6jwptcj1e+mTc8k
 ixPdCy2zq3RkT8c6Zl2ylYKCWiCO5RMhnakt9JyOZ0Q+f1Erdom5ZLUIh
 xzj5GZQ3zfqbFQkzMw/4HmEb9L+lHNmrQaVG5B/AfS0uvfKjLPgBgf1C0 Q==;
X-CSE-ConnectionGUID: XCWc+jN9S7mnjY5auxYnrQ==
X-CSE-MsgGUID: NRkJJrTbRxOynX71WOp8Zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55501365"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55501365"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 01:56:34 -0700
X-CSE-ConnectionGUID: vGYwNJTjSbawVULh8MnblA==
X-CSE-MsgGUID: jXct/VAbSmOJ5vdNfWY6fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="164755157"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 01:56:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 01:56:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 01:56:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.80)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 01:56:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q238F6PT1NKM73AB5nWNGRPZ9pBcBAwOsb5tmIAxdbGeIkxtkGrVoHkMzHRDczox/EI07L0eUGXM3hEjqHUKcYTHS9KPyj4rm+l328HQJ1toFuaencKeiAIAu5BdOBYFxpZr9xYxZrkRhC8ucg+RA9L4oZlLSjo+ytYl7L45YrVni2nC4bYXfmbTpaZ7YO/gXFypMIQODEyylhQJQ+OzZdtZMMfx3vEzg4SQgXRmQgwWzOYnOCCjBVtM5oBu20aW/udIoicnCBST6CNAipkwIQGPXRdIRU9YQBZQRLRJKAFZjpmUwJvZvT5aIlI+JaiUxyZTWgt/eQIl6G8M3BZurw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6GFqqeWfms1KN18AUEZByQwSEsSN4nqSZEFH4MaU0pM=;
 b=JAEwgaIjVMBhWATlW7kZ9xcVJa43LckOuD3hhBqE6Yx7llbloC09jnUu75p48dVFDDi4ce9dNUHcjMISZEVkRZO/DaxMBlB8Y6KCa76CJIIhcn5UJlzf7JT32QWNSgANe6+Fjqz31z7DjumFXhEwdYRRpbQlm9g6tJxi9KPiSgUetJZoooXYEOG3rszN6o49QnD2xSogx6YbKPWeCC1qx+A1MaGe2b1gDmGn5XkDfIZ55222Vp9MAOsj7SI9qhu/N+mSS8SDS1IA2F6bzOCD7FRnMXSpiDNf6i35A5w8mToEbkGEq+hVjozhnX0wu3htIV3NJEm/4gzQzZHqlzJi5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN2PR11MB4693.namprd11.prod.outlook.com (2603:10b6:208:261::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Tue, 22 Jul
 2025 08:56:30 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8964.019; Tue, 22 Jul 2025
 08:56:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
Thread-Topic: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
Thread-Index: AQHb9uSw/8wG7IbC4Emrndc4ZWucjbQ2UHaAgAEVpACAAE6MAIAAJOkAgAAC3YCAAApNgIAF+IMA
Date: Tue, 22 Jul 2025 08:56:29 +0000
Message-ID: <a3b1d62ffecadc8a1a839f68c7a2031e2384f22d.camel@intel.com>
References: <20250717063259.440086-1-jouni.hogander@intel.com>
 <175275909975.1809.8747168482147911326@intel.com>
 <bac5a94acb4cc814a56855be54c2b5e69ab573fe.camel@intel.com>
 <bd7a211e9a56b22673cc8b1d66541bcbea7d3b9f.camel@intel.com>
 <175284351608.1809.17923503412794799848@intel.com>
 <3f3fb0bfadf6096b6e5c9a4137a8a96f56086113.camel@intel.com>
 <175284634394.1809.9891297221411321500@intel.com>
In-Reply-To: <175284634394.1809.9891297221411321500@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN2PR11MB4693:EE_
x-ms-office365-filtering-correlation-id: 86e3053c-5b8c-44ea-a7df-08ddc8fda670
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VGJHaFR3Zkd2YXRHKzlDa2RHTndjTUtlVEJVSDFNamtwTUw5SVdHYzE5U2Nv?=
 =?utf-8?B?NWVuYXUrV2djaGhlbHdKZDk4N3ZHbFEyL3RQaDNNbUhGMC9jMUxIazBDUGsr?=
 =?utf-8?B?N2hXV3l3RWRpeWl0ZUx2U3NkZlVlSmpTdkFGNzFNZWhkY25IZC9uVGJxNHdD?=
 =?utf-8?B?aXRGbWpYbXNTY0N4OG1obU54aUwxT29KQzJCZmZQME44YnBiQnpXUjNvRWF2?=
 =?utf-8?B?Tm1WaUxOZVlOWDRjcjNNcVIrR21icnRpWjViMkdVaUZIVkk5aUkyUHI4K1Br?=
 =?utf-8?B?QklhZEJqR2lWeVhocnZrUjd0VjdIV1JhbUhqR3pHT0Z1U2tMTDZkYVAyRzR1?=
 =?utf-8?B?Z09qbkYva1dTeXBJbHl5ZndLY2tZRndxeERuSS9jcFFORXR0UlAzWm1lbEVp?=
 =?utf-8?B?akVWUXFHazV6VXMxUGwwK3lLMHhZMENDNm1MTzM3MHpSeUlCejFjQ3pzVEww?=
 =?utf-8?B?eGRBUllzYk5VT0RFWkFrY29oM3RqajY1U2Q5UUU0YXRkM3hiZkdFWFBSMk9V?=
 =?utf-8?B?cWEvS3VsM2RHTUp3YWkrUmovQXlmblNGS1RHWjBoNytPd3c5RjFPQm9tWCtP?=
 =?utf-8?B?d3k0VEhYU2hzTW5XS2NyVTZyUTFlcVlhcnBEZGl5WUVBRkV3TUFsdldkbzNm?=
 =?utf-8?B?MWZNOTRUQXBqOFpoTkExSlAxcTJCZWg0NGUxcXQ5UUU3V2J1NVhucURWQU1Q?=
 =?utf-8?B?em1EK0plc2ExUmhydmgwNGtZRzFocFRQazZjZUQ3UjFadWtXVkMvbEY0bUU3?=
 =?utf-8?B?YUtkaFlLejQzWE56eWZ2aGlLTXNrYmt3eXhaZXRrQ0hrUEpUTHVqSFVnS3I1?=
 =?utf-8?B?TUcweFBFN0svTDNqanM4aGFnbmRzUUIyMGE5RkxrZldJend1aFdvblM2KzBE?=
 =?utf-8?B?NVV3MU9JNGJNOVZxVVBQNUUwWVFaOVlQUFRHWXc1ODFFZjBZZWlFL2MzVnE0?=
 =?utf-8?B?R3FHOEpnbXRCZkFwVGkwbi9wN1M5TjBsdmtVRlE1d0I5SmpHSWNvYkM4T0lL?=
 =?utf-8?B?b3U0dmNOeSt0RmNxWUVWckQwL1g4UFVIaHdXQ0p0Tm05TDhBMEthRDJ2dHlx?=
 =?utf-8?B?OENuU2xQMnNvZG93azdCTjdBZERXaEZudU5JQWtxcW13WnpiRzBWdi9EUm1L?=
 =?utf-8?B?ajArOWsvVFFlQW1VdVVsdDR0TVNJT0UwSDF4RjZoUFJ5ZE9RNHBkYVhjdkxz?=
 =?utf-8?B?S0JDRkZmcmc0UmkyeUxxa0tVcWsreHYyWUdPZ1R5ckttMTRnMkhSR1IyamxC?=
 =?utf-8?B?eVJzcVczTFBLYStsYVR5bHk2dnJhSVpBTFpKenlBWWdPTHZOTHBIOTdXZllo?=
 =?utf-8?B?YW5CL1VLUHl1NWU5Q0lNVHQ5bFBTZko5OHhUcFlRTXQ0UnlUYjZrK0h2YVVR?=
 =?utf-8?B?RUZSMWcvOWRJMnFwTmIyYXlaRVNxcTRvWWQ2T0NEMkdnTkRzc1lmUmt0cks0?=
 =?utf-8?B?TElwUnBCV0NJNzk1R1ljdE1YNHFuRjZoTHF6RVIxcHZwcDlER20zVUJGb1FC?=
 =?utf-8?B?aTFsR252d3AyUzJUTkZKamU5eFRLVlgxelJsOURRUlVXWnVrbDNUeXRWQkdv?=
 =?utf-8?B?NEV1eTdmTUZkQ01KOEVFdGxaQk53TnlDcm45NUhvdlJwUjB1WU53U0J2dkdm?=
 =?utf-8?B?RnNFcUhnakFLUy9TY0pBQm01emhYSnFZdUFxUkd3clZBR1Z3OCtMVzZzSHpj?=
 =?utf-8?B?Rm93RmdydG81QUxoTmEyNmhFd2JIM1ZLT0tpMjNlOHRDSTZTRXdSQ2Y0bEQx?=
 =?utf-8?B?bmpzNzBzd1I1dmFxaWIxekF3QkszTSt1MmFiQTNmK0lPRUtZM21aeWE1WnNV?=
 =?utf-8?B?eFoyN2psdUIreVFnc1hiSkFVWnBqSXJHRTFJNHlBTFdwQWdCbE5kMzVmSTcv?=
 =?utf-8?B?TDJsdndGS1hzMkN0ZFdpREp4UmgyNnJBZGV0ZUVneVhmSmJMNzBIOUQ2TWZQ?=
 =?utf-8?B?bUhTdGhjWXVTc1R3dFlleHp0VXd0eXYwUFEveEhJTUFoeHo0aWdBNGZwOGdh?=
 =?utf-8?B?ajM5a05RL3Z3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFE0aENuZTJnWG83L21zVkpRKzBRWlRkajRGVGFHNGZkSHRMc0c5L0hMdVda?=
 =?utf-8?B?V0c0TGJxSDFWSTlsU1ZvN3hwdTZaQjlOMkVFZll0cGlybUs4Nlg2RHdxN3FQ?=
 =?utf-8?B?K21zTHZBNVJ2T2h4YjNlY0xqK0xUcDBYQlBvaWNrR25oNVliUHhHZ3NIa3dG?=
 =?utf-8?B?bTZNNEZjb1p3bTVmdHlvekh2dUlzQ1NrYjV5cWErUVNnS0Zndm1UMVFpelpp?=
 =?utf-8?B?dzhIS2UvTWxLckpvK0lVZjIraW13RGFQUGd2VWxDbGZKRFFTMnJ0dzQ3c2NT?=
 =?utf-8?B?NTd4OFprWUMwa0FtanVsTG1vUmtVMGxlU0ZOdFNsUmw0VjRZdW9HazBtL2Nl?=
 =?utf-8?B?U2VGRVg1NFJhQmMyLy9kUFBWTVk0cW1EQTFkSUdDNE1ESDU3NkJwUXVTN3hs?=
 =?utf-8?B?QTlHeERIb0FuT2toMEMxMHlkR2J2bHhWakNQWWUzVjhLWmhRTkVET2VPT3ZK?=
 =?utf-8?B?TW5ORjJnVWx4SnJhTUs4aDRSMGR4UFBXa3ZMbXBQcllCbzRiT1NJZEhab2dk?=
 =?utf-8?B?d05zd2ZsR2hoSW9JcUJkSkhsTmU1UHdrRWt6TE1DVVZWQ1FDNUJZb3JEdnRB?=
 =?utf-8?B?THgvT2Y5R3YwMW51YWNLZnBXVVQ0OWlzSnIvYWRGdHoweSswak9zZmx2UjF1?=
 =?utf-8?B?Qm0xQU9LZXFTb0Q3SnFIK3dPQzU1TEN1VjQrR1VtcjFiWDl5RGtZL2VSYlJz?=
 =?utf-8?B?SHpSdGUwZ2s2a00zWHJFNFphemVmSksvTHZ5THVyMUQwVUNLTjFycStnNTla?=
 =?utf-8?B?VGhMVTZGOUpUb0szcDM0MUJYcFJjTm5YRG1VSWFzRjM1azZPd1FYbzU2R242?=
 =?utf-8?B?cm9la0E1NmJ5Q2Fxb2lyZ0lwMVVZSjFPMDdTZVBFUWpFdGd1allkZEFWQ3g2?=
 =?utf-8?B?enQydkVudDNsQ3lhUlg4MDZMV2RrREZoUDVoeEIwZnY4eVRRQTduZlFiRDIr?=
 =?utf-8?B?SXEydm5HMFFlTzJaYmNlUFNhaGtiQy9ub3hONUcrSHdUYzczMDBETllqNE00?=
 =?utf-8?B?Y2dUZ0U1Z1pjdlNmSjRIelc3UExvaU5tWUlVb3ZqeFduVmdKK3gzZ21uTHI1?=
 =?utf-8?B?aE1sOVFFbHpyK1NNUXI2Vy9HZFc4VDJTR2VtQ1ovUFUrOThERFpTTExJTVBP?=
 =?utf-8?B?dDJzcWpXOFdMMTFoM1ZoQlB0cHhQdlc2S3UvOEpzRnhpRTdEMG5NVjJSWFA1?=
 =?utf-8?B?cE4rVmlwMWFuaDdWTzZyRExTekx3VEMwNUk2N3FTeUgyd0p4NGxrVEtJdnND?=
 =?utf-8?B?Mi96NUhvRU9rdURyQlQ1RjBCMWZnaXREZlFqWitCUDlpVG13dm1HaWFiSmkr?=
 =?utf-8?B?NVNDTzc2Qno0K2xsY0hZWDlrSFppdEpGS1pZVDI5dmlKWGQ0aGFhN3pUUzZx?=
 =?utf-8?B?OVpXTWVIVnVCV2lIdW43QjJMd3JsbnFzcWVZbk03QmZsZWFzUWd2TmNtMXpw?=
 =?utf-8?B?Z2FYbjlTT2V2cFl0Q251ZGljQ05ueEtYSXdCakNDN0p4Yk5xWGFvQUJiRFFG?=
 =?utf-8?B?eWVUNVBuN1AxUmYzU3V5SktEeDVrbkQwcUZMbmNZNGtUaG1EU3RhenhscTlW?=
 =?utf-8?B?Zm9qZVY3NEh5Wm5SczdSRVRjSnFYa01OQTB2SEhxSGRzeDEvQW9TWEtrQkNZ?=
 =?utf-8?B?RkIwSWFEK2UvR2dDbVJKYnNoUGJ4REk3Wm9JVTlWcjl2VGVtSDZtNFNoN1Nk?=
 =?utf-8?B?ZzdZOUJlZmN4azdZR0tycXZnQjJCOFQ5b2lQa3c4SkFGUTVhelJLNytaTXFD?=
 =?utf-8?B?Mi9ELy9MaW5TYjFKRVdlZ00rL2hIWHVmamZ0aHRGckN3VVNUT216RUs1cDJY?=
 =?utf-8?B?enBvN09UbTd3S2xsN2RORktWVXpITzhjVXVpdnlRRnRwM2pXNWRRNkdHK2li?=
 =?utf-8?B?c25oMUxPV1lLMU5MSDRyckJ0UTdwS2F1aCtPczN0cjYydTkxWXJQN3hMbng3?=
 =?utf-8?B?eGlUc3Z2RDlSOXd5TGJMandsZ2plUTNuWnRHdVQwQllhWTgwa2hEWDRpR1pB?=
 =?utf-8?B?SXdkRi9xMW5MWExFcnNCeGRyY3RtUFFvbm8wa0ZuSVhRVFhmNDZGNXArQUQy?=
 =?utf-8?B?bE1pMm9XMzJwM2R1dlpnamUyNFVWTU90S1ovdVovS200UjIvUjVYc2M2SkdN?=
 =?utf-8?B?eEkwTE5UZ1Fna1M4UDV4OVFQb3pkamwzOEFlcUZxQmFEU2k3U0gxbTl5WUJj?=
 =?utf-8?B?WHo5VEdSTk0vV2VRb3pzRDRLREp4bEhGelQzbnlhVGNNNDBUc0FVMld0UTNx?=
 =?utf-8?B?bFcvakl1YXlMYXkyeEhqSkZyU0xRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <06245166E2E66C42898536DE474F7E4E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86e3053c-5b8c-44ea-a7df-08ddc8fda670
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2025 08:56:30.0817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G0e9I7UU+9wrQgaxLbSOpbrVcKoOa+ZKXeYehwrFk8yX+f8TsyvYn3eFtFPW3txJgAOABw9/KIKNpgPH9xA784QXutpyEJl5npXZj12SNZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4693
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

T24gRnJpLCAyMDI1LTA3LTE4IGF0IDEwOjQ1IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBRdW90aW5nIEhvZ2FuZGVyLCBKb3VuaSAoMjAyNS0wNy0xOCAxMDowODo1Mi0wMzowMCkNCj4g
PiBPbiBGcmksIDIwMjUtMDctMTggYXQgMDk6NTggLTAzMDAsIEd1c3Rhdm8gU291c2Egd3JvdGU6
DQo+ID4gPiBRdW90aW5nIEhvZ2FuZGVyLCBKb3VuaSAoMjAyNS0wNy0xOCAwNzo0NjozMS0wMzow
MCkNCj4gPiA+ID4gT24gRnJpLCAyMDI1LTA3LTE4IGF0IDA5OjA1ICswMzAwLCBIb2dhbmRlciwg
Sm91bmkgd3JvdGU6DQo+ID4gPiA+ID4gT24gVGh1LCAyMDI1LTA3LTE3IGF0IDEwOjMxIC0wMzAw
LCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0KPiA+ID4gPiA+ID4gUXVvdGluZyBKb3VuaSBIw7ZnYW5k
ZXIgKDIwMjUtMDctMTcgMDM6MzI6NTgtMDM6MDApDQo+ID4gPiA+ID4gPiA+IFdlIGFyZSBzZWVp
bmcgImRtZXNnLXdhcm4vYWJvcnQgLSAqRVJST1IqIFBIWSAqIGZhaWxlZA0KPiA+ID4gPiA+ID4g
PiBhZnRlcg0KPiA+ID4gPiA+ID4gPiAzDQo+ID4gPiA+ID4gPiA+IHJldHJpZXMiDQo+ID4gPiA+
ID4gPiA+IHNpbmNlIHdlIHN0YXJ0ZWQgY29uZmlndXJpbmcgTEZQUyBzZW5kaW5nLiBBY2NvcmRp
bmcgdG8NCj4gPiA+ID4gPiA+ID4gQnNwZWMNCj4gPiA+ID4gPiA+ID4gQ29uZmlndXJpbmcNCj4g
PiA+ID4gPiA+ID4gTEZQUyBzZW5kaW5nIGlzIG5lZWRlZCBvbmx5IHdoZW4gdXNpbmcgQVVYTGVz
cyBBTFBNLiBUaGlzDQo+ID4gPiA+ID4gPiA+IHBhdGNoDQo+ID4gPiA+ID4gPiA+IGF2b2lkcw0K
PiA+ID4gPiA+ID4gPiB0aGVzZSBmYWlsdXJlcyBieSBjb25maWd1cmluZyBMRlBTIHNlbmRpbmcg
b25seSB3aGVuDQo+ID4gPiA+ID4gPiA+IHVzaW5nDQo+ID4gPiA+ID4gPiA+IEFVWExlc3MNCj4g
PiA+ID4gPiA+ID4gQUxQTS4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gSG0uLi4gQnV0IHRo
ZW4gd2l0aCB0aGlzIHBhdGNoIHdlIGFyZSBtaXNzaW5nIHdyaXRpbmcgemVybw0KPiA+ID4gPiA+
ID4gdG8NCj4gPiA+ID4gPiA+IHRoYXQNCj4gPiA+ID4gPiA+IGJpdA0KPiA+ID4gPiA+ID4gd2hl
biBuZWNlc3NhcnksIG5vPw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFRoYXQgc2hvdWxkbid0IGJl
IG5lY2Vzc2FyeSBhcyAwIGlzIHRoZSByZXNldCB2YWx1ZS4NCj4gPiA+ID4gPiANCj4gPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ID4gQ291bGQgdGhlIHRpbWVvdXRzIGJlIGhhcHBlbmluZyBiZWNhdXNl
IGludGVsX2N4MF9ybXcoKSBpcw0KPiA+ID4gPiA+ID4gZ2V0dGluZw0KPiA+ID4gPiA+ID4gY2Fs
bGVkIHdpdGhvdXQgY2FsbGluZw0KPiA+ID4gPiA+ID4gaW50ZWxfY3gwX3BoeV90cmFuc2FjdGlv
bl9iZWdpbigpL2ludGVsX2N4MF9waHlfdHJhbnNhY3Rpb24NCj4gPiA+ID4gPiA+IF9lbmQNCj4g
PiA+ID4gPiA+ICgpPw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEkgd2Fzbid0IGF3YXJlIGFib3V0
IHRoZXNlLiBJIHdpbGwgdHJ5IHRoZW0uDQo+ID4gPiA+IA0KPiA+ID4gPiBJIHRlc3RlZCB0aGlz
IGFuZCBpdCBkb2Vzbid0IGhlbHA6DQo+ID4gPiANCj4gPiA+IE9rYXkuIFdlbGwsIEkgc3RpbGwg
ZmluZCBpdCB3ZWlyZCB0aGF0IHRoaXMgd291bGQgdGltZSBvdXQgZm9yDQo+ID4gPiBvbmUNCj4g
PiA+IGNhc2UNCj4gPiA+IGFuZCBub3QgdGltZSBvdXQgZm9yIGFub3RoZXIuLi4gRG8gd2UgaGF2
ZSBjb25maXJtYXRpb24gdGhhdCB0aGlzDQo+ID4gPiBpcw0KPiA+ID4gd29ya2luZyBmaW5lIGZv
ciB0aGUgQVVYLUxlc3MgQUxQTSBjYXNlPw0KPiA+IA0KPiA+IEkgY2FuIHJlcHJvZHVjZSB0aGlz
IGlzc3VlIG9ubHkgd2l0aCBzZXR1cCBoYXZpbmcgdHdvIDRrIG1vbml0b3JzDQo+ID4gaW4gRFAN
Cj4gPiBwb3J0cyBhbmQgdGhlbiBvbmUgZURQIHBhbmVsLiBUaGUgaXNzdWUgaXMgdHJpZ2dlcmVk
IG9uIERQIHBvcnQuDQo+ID4gSS5lLg0KPiA+IHNvbWV0aGluZyB0aGF0IGRvZXNuJ3QgaGF2ZSBB
VVgtTGVzcyBBTFBNLiBBcyBpdCdzIGNsZWFybHkNCj4gPiB1bm5lY2Vzc2FyeQ0KPiA+IHRvIHdy
aXRlIHRoaXMgcmVnaXN0ZXIgb24gdGhhdCBmYWlsaW5nIHBvcnQgYW5kIG5vdCBtZW50aW9uZWQg
aW4NCj4gPiBIQVMgSQ0KPiA+IHdhcyB0aGlua2luZyBqdXN0IHJlbW92aW5nIHRoZSBmYWlsaW5n
IHdyaXRlIHdvdWxkIHdvcmsgaW4gdGhpcw0KPiA+IGNhc2UuDQo+ID4gDQo+ID4gPiANCj4gPiA+
IEkgd29uZGVyIGlmIHdlIHNob3VsZCByYXRoZXIgZG8gdGhpcyBzdGVwIHRvZ2V0aGVyIHdpdGgN
Cj4gPiA+IGludGVsX2MxMF9wbGxfcHJvZ3JhbSgpLiBOb3RlIHRoYXQsIGZvciBDMTAsIHRoZXJl
IGlzIGFsc28gYQ0KPiA+ID4gcmVxdWlyZWQNCj4gPiA+IHN0ZXAgdG8gc2V0IFBIWV9DMTBfVkRS
X0NPTlRST0wxWzJdIGJlZm9yZSBhY2Nlc3NpbmcgdGhlIG1zZ2J1cy4NCj4gPiANCj4gPiBDb25m
aWd1cmluZyB0aGlzIGlzIGEgb3duIHN0ZXAgbGlzdGVkIGluIEhBUyAoNi5rLmlpKS4gSSBjYW4g
dHJ5IGlmDQo+ID4gdGhpcyB3b3Jrcy4gSSBoYXZlIG5vIGlkZWEgaWYgaXQncyBvayB0byBtb3Zl
IGl0Lg0KPiANCj4gSG0uLi4gV2VsbCwgbm90IHN1cmUuIFJlYWRpbmcgdGhlIHNwZWMgb24gTWFj
VHJhbnNtaXRMRlBTIGZpZWxkLCBpdA0KPiBhcHBlYXJzIHRoYXQgdGhpcyBzaG91bGQgYmUgcHJv
Z3JhbW1lZCBhZnRlciBsYW5lIHJlc2V0IHNlcXVlbmNlIGlzDQo+IGRvbmUuIEJ5IHRoZSB0aW1l
IHdlIGNhbGwgaW50ZWxfYzEwX3BsbF9wcm9ncmFtKCksIHRoZSBsYW5lIHJlc2V0DQo+IHN0ZXAN
Cj4gaXMgYWxyZWFkeSBkb25lLg0KPiANCj4gQW5vdGhlciB0aGluZyBJIHRoaW5rIHdlIHNob3Vs
ZCBiZSBkb2luZywgaWYgd2Ugd2FudCB0byBrZWVwIHRoaXMgYXMNCj4gYQ0KPiBzZXBhcmF0ZSBz
dGVwIGFuZCBiZSBhbGlnbmVkIHdpdGggQnNwZWMsIGlzIHRvIHNldA0KPiBDMTBfVkRSX0NUUkxf
TVNHQlVTX0FDQ0VTUywganVzdCBsaWtlIGl0IGlzIGRvbmUgZm9yIG90aGVyIEMxMA0KPiBwcm9n
YW1taW5nIGluIHRoZSBjb2RlLiBUaGF0IGlzIGEgcmVxdWlyZW1lbnQgZm9yIHByb2dyYW1taW5n
IEMxMCB2aWENCj4gbXNnIGJ1cy4NCg0KVGVzdGVkIHRoaXMgYXMgd2VsbCBhbmQgc3RpbGwgSSdt
IHNlZWluZyB0aGlzOg0KDQpbICAxMTguNDU0NTI1XSB4ZSAwMDAwOjAwOjAyLjA6IFtkcm1dICpF
UlJPUiogUEhZIEkgUmVhZCAwODAwIGZhaWxlZA0KYWZ0ZXIgMyByZXRyaWVzLg0KDQpJIHdpbGwg
YWRkIHlvdXIgc3VnZ2VzdGlvbnMgYXMgYSBzZXBhcmF0ZSBwYXRjaGVzIHRvIG15IHNldCBidXQg
SSB3aWxsDQprZWVwIHRoZSBwYXRjaCBhdm9pZGluZyBsZnBzIGNvbmZpZ3VyYXRpb24gd2hlbiBp
dCdzIG5vdCBuZWVkZWQuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gLS0NCj4g
R3VzdGF2byBTb3VzYQ0KPiANCj4gPiANCj4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+
ID4gaW5kZXggZWQ4ZTY0MGI5NmIwLi5lNmZmN2YwN2IyZTMgMTAwNjQ0DQo+ID4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPiA+
IEBAIC0zMjM5LDYgKzMyMzksNyBAQCB2b2lkIGludGVsX2xubF9tYWNfdHJhbnNtaXRfbGZwcyhz
dHJ1Y3QNCj4gPiA+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ID4gKmNydGNfc3RhdGUpDQo+ID4gPiA+
IHsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0N
Cj4gPiA+ID4gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiA+ID4gK8KgwqDCoMKgwqDC
oCBpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgIHU4IG93bmVk
X2xhbmVfbWFzayA9DQo+ID4gPiA+IGludGVsX2N4MF9nZXRfb3duZWRfbGFuZV9tYXNrKGVuY29k
ZXIpOw0KPiA+ID4gPiDCoMKgwqDCoMKgwqAgYm9vbCBlbmFibGUgPQ0KPiA+ID4gPiBpbnRlbF9h
bHBtX2lzX2FscG1fYXV4X2xlc3MoZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpLA0KPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZSk7DQo+ID4g
PiA+IEBAIC0zMjQ3LDYgKzMyNDgsOCBAQCB2b2lkIGludGVsX2xubF9tYWNfdHJhbnNtaXRfbGZw
cyhzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ID4gwqDCoMKg
wqDCoMKgIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwKQ0KPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsNCj4gPiA+ID4gDQo+ID4gPiA+ICvCoMKgwqDCoMKg
wqAgd2FrZXJlZiA9IGludGVsX2N4MF9waHlfdHJhbnNhY3Rpb25fYmVnaW4oZW5jb2Rlcik7DQo+
ID4gPiA+ICsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCA0OyBpKyspIHsN
Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgdHggPSBpICUgMiArIDE7
DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTggbGFuZV9tYXNrID0gaSA8
IDIgPyBJTlRFTF9DWDBfTEFORTAgOg0KPiA+ID4gPiBJTlRFTF9DWDBfTEFORTE7DQo+ID4gPiA+
IEBAIC0zMjU5LDYgKzMyNjIsOCBAQCB2b2lkIGludGVsX2xubF9tYWNfdHJhbnNtaXRfbGZwcyhz
dHJ1Y3QNCj4gPiA+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5hYmxlID8N
Cj4gPiA+ID4gQ09OVFJPTDBfTUFDX1RSQU5TTUlUX0xGUFMgOg0KPiA+ID4gPiAwLA0KPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBNQl9XUklURV9DT01NSVRURUQpOw0KPiA+ID4gPiDCoMKgwqDCoMKgwqAgfQ0KPiA+ID4gPiAr
DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqAgaW50ZWxfY3gwX3BoeV90cmFuc2FjdGlvbl9lbmQoZW5j
b2Rlciwgd2FrZXJlZik7DQo+ID4gPiA+IH0NCj4gPiA+ID4gDQo+ID4gPiA+IERvIHlvdSB0aGlu
ayBJIHNob3VsZCBzdGlsbCBhZGQgdGhpcyBjaGFuZ2UgYXMgd2VsbD8NCj4gPiA+IA0KPiA+ID4g
SWYgd2UgYXJlIHN0aWxsIGdvaW5nIHdpdGggdGhpcyBmdW5jdGlvbiBpbnN0ZWFkIG9mIGRvaW5n
IGl0IGluDQo+ID4gPiBpbnRlbF9jMTBfcGxsX3Byb2dyYW0oKSwgdGhlbiB5ZXMuDQo+ID4gPiAN
Cj4gPiA+IC0tDQo+ID4gPiBHdXN0YXZvIFNvdXNhDQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gQlIsDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gSm91bmkgSMO2Z2FuZGVy
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+
IEZpeGVzOiA5ZGM2MTk2ODBkZTQgKCJkcm0vaTkxNS9kaXNwbGF5OiBBZGQgZnVuY3Rpb24gdG8N
Cj4gPiA+ID4gPiA+ID4gY29uZmlndXJlDQo+ID4gPiA+ID4gPiA+IExGUFMgc2VuZGluZyIpDQo+
ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+ID4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCAxMSArKysrKy0tDQo+ID4gPiA+
ID4gPiA+IC0tLS0NCj4gPiA+ID4gPiA+ID4gMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkNCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4g
PiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+
ID4gPiA+ID4gPiA+IGluZGV4IGVkOGU2NDBiOTZiMC4uOWNmYzMxODdhZWFiIDEwMDY0NA0KPiA+
ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYw0KPiA+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2N4MF9waHkuYw0KPiA+ID4gPiA+ID4gPiBAQCAtMzIzOSwxNCArMzIzOSwxNCBAQCB2b2lk
DQo+ID4gPiA+ID4gPiA+IGludGVsX2xubF9tYWNfdHJhbnNtaXRfbGZwcyhzdHJ1Y3QNCj4gPiA+
ID4gPiA+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ID4gPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b25zdCBzdHJ1Y3QNCj4gPiA+ID4gPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiA+ID4g
PiAqY3J0Y19zdGF0ZSkNCj4gPiA+ID4gPiA+ID4gew0KPiA+ID4gPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoCBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gPiA+ID4gPiA+IHRvX2lu
dGVsX2Rpc3BsYXkoZW5jb2Rlcik7DQo+ID4gPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoCB1OCBv
d25lZF9sYW5lX21hc2sgPQ0KPiA+ID4gPiA+ID4gPiBpbnRlbF9jeDBfZ2V0X293bmVkX2xhbmVf
bWFzayhlbmNvZGVyKTsNCj4gPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgIGJvb2wgZW5hYmxl
ID0NCj4gPiA+ID4gPiA+ID4gaW50ZWxfYWxwbV9pc19hbHBtX2F1eF9sZXNzKGVuY190b19pbnRl
bF9kcChlbmNvZGVyKSwNCj4gPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgDQo+ID4gPiA+ID4gPiA+IGNydGNfc3RhdGUpOw0KPiA+ID4gPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqAgdTggb3duZWRfbGFuZV9tYXNrOw0KPiA+ID4gPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoCBpbnQgaTsNCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IC3CoMKgwqDC
oMKgwqDCoCBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCkNCj4gPiA+ID4gPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwIHx8DQo+ID4gPiA+ID4g
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgDQo+ID4gPiA+ID4gPiA+ICFpbnRlbF9hbHBtX2lz
X2FscG1fYXV4X2xlc3MoZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpLA0KPiA+ID4gPiA+ID4gPiBj
cnRjX3N0YXRlKSkNCj4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybjsNCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCBv
d25lZF9sYW5lX21hc2sgPQ0KPiA+ID4gPiA+ID4gPiBpbnRlbF9jeDBfZ2V0X293bmVkX2xhbmVf
bWFzayhlbmNvZGVyKTsNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGhpcyBvcHRpbWl6YXRp
b24gY291bGQgYmUgb24gaXQncyBvd24gcGF0Y2guDQo+ID4gPiA+IA0KPiA+ID4gPiBPaywgbWF5
YmUgSSBsZWF2ZSB0aGF0IG91dCBvciBhZGQgb3duIHBhdGNoLg0KPiA+ID4gPiANCj4gPiA+ID4g
QlIsDQo+ID4gPiA+IA0KPiA+ID4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gPiA+ID4gDQo+ID4gPiA+
IA0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiAtLQ0KPiA+ID4gPiA+ID4gR3VzdGF2byBTb3Vz
YQ0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7
IGkgPCA0OyBpKyspIHsNCj4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGludCB0eCA9IGkgJSAyICsgMTsNCj4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHU4IGxhbmVfbWFzayA9IGkgPCAyID8gSU5URUxfQ1gwX0xBTkUwIDoNCj4g
PiA+ID4gPiA+ID4gSU5URUxfQ1gwX0xBTkUxOw0KPiA+ID4gPiA+ID4gPiBAQCAtMzI1Niw4ICsz
MjU2LDcgQEAgdm9pZA0KPiA+ID4gPiA+ID4gPiBpbnRlbF9sbmxfbWFjX3RyYW5zbWl0X2xmcHMo
c3RydWN0DQo+ID4gPiA+ID4gPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxf
Y3gwX3JtdyhlbmNvZGVyLCBsYW5lX21hc2ssDQo+ID4gPiA+ID4gPiA+IFBIWV9DTU4xX0NPTlRS
T0wodHgsIDApLA0KPiA+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIENPTlRST0wwX01BQ19UUkFOU01JVF9MRlBTLA0K
PiA+ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBlbmFibGUgPw0KPiA+ID4gPiA+ID4gPiBDT05UUk9MMF9NQUNfVFJB
TlNNSVRfTEZQUw0KPiA+ID4gPiA+ID4gPiA6IDAsDQo+ID4gPiA+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE1CX1dSSVRF
X0NPTU1JVFRFRCk7DQo+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgDQo+ID4gPiA+ID4gPiA+IENPTlRST0wwX01B
Q19UUkFOU01JVF9MRlBTLA0KPiA+ID4gPiA+ID4gPiBNQl9XUklURV9DT01NSVRURUQpOw0KPiA+
ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoCB9DQo+ID4gPiA+ID4gPiA+IH0NCj4gPiA+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gPiA+IC0tIA0KPiA+ID4gPiA+ID4gPiAyLjQzLjANCj4gPiA+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+IA0KDQo=

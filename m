Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 167C8CB86F5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 10:23:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DF3C10E5C2;
	Fri, 12 Dec 2025 09:23:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3I+C20N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B743A10E55C;
 Fri, 12 Dec 2025 09:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765531385; x=1797067385;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=34cJWEDYKihi9L/orEQG+K2CX9RYr2V+MKSN1mM0Qy4=;
 b=h3I+C20NY0GRya0d84tutZdHMhz/3tD02+hV2gVz8ZdjAGOiPGEusVt1
 IXLSIHrz98j82BoyUAajC4JDnAYlrpxrZDPiEdeRqImClKlzBzdtecJQ5
 gLLhTg5gLXYt5ktom4lLrJicpobjlTSyTXkgao9h3IGvZoz6TF+NaD/z3
 45li/5lc6gKzIksklWWXhWPvnIWcHX2LpmNDtKHCepjCMqCizysMwy19o
 PK3gkfCPVOfwOGp4qS9T08VeQGoyjQdztYkWCHY4qxuyW1WlTtR1JTxG0
 NuCCRB35zufx1+gho1xmiXqcmPpshN7OGo//jCaxua/Oy93ZT8gKwwhtP A==;
X-CSE-ConnectionGUID: JlutFFgqQ2uu4kJ0vxS8VA==
X-CSE-MsgGUID: ad++EiVQQ72RjmUDqC4E7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67260048"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="67260048"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:23:04 -0800
X-CSE-ConnectionGUID: 8dpCPwwmSuGb5jFngi9IZQ==
X-CSE-MsgGUID: VRMRm6a5SQ2bkOiNureofg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="234437745"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:23:05 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:23:03 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 01:23:03 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.44) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:23:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dpTdGoseHBByHKn07sdEEjLG37uKLyXGRBj3qGMmnJPF1C7pbErN1qRk0QFD3Kkl8YqacbjIEJnpo4dzhWBsNrCxdw3bVMq77XrBwRmRGQvR/mifG6mP6twWsgerDXU/jh950CdXDLcPx/fPpDjw0oy12NpZFHYIIChTtssKcogQ4zaUtPFDXCv8LHifWydNlbNvAmhfQblpR2Gg1pKpkBPDrRBkGY42ngUV7MHLfCIKTpNGAQMJXVGVW66aYWW67Vp1Zgg94Okcbc8oxaHx/zotreLIUD4jD3Wls6Z8zHixAWLXwfu2wECPMPoRhzsz7IlRKGa0gYaTsbytJ/0LTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=34cJWEDYKihi9L/orEQG+K2CX9RYr2V+MKSN1mM0Qy4=;
 b=uxVqudJMbH2il3kLrC8/yrHf3Q3eoxQT6IcTTtcRpCyij/tYn5AQj7RAB5xsLfoWSSa8ETGB+j2TNuc/w0JjrYrp+N/KTUwMxXGSmuxEJ5p7AqlWhIjTgqnh2yjOc/kl/601bVYt9jIgjYuVc08GveREtejzvRwIf9sjQRA92ofLpj4kmVUEvnWSFQJ9RJzHwZEKWQqlg4uKZsEj6mR75/BL5pdYGD/7Mry5tXZl0EnYt6qcgawnVTH8ZJulqi2nTVIuGwwodMDAWecnAFfyXjyqUsGhSRBO0asTPbZNV5vlpr0PEjuGOstqXscR1DPHTyWi0NWWcSF8zcu7xYsiYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 09:23:00 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 09:23:00 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 22/50] drm/i915/dp: Drop intel_dp parameter from
 intel_dp_compute_config_link_bpp_limits()
Thread-Topic: [PATCH 22/50] drm/i915/dp: Drop intel_dp parameter from
 intel_dp_compute_config_link_bpp_limits()
Thread-Index: AQHcX8vM3iPy6IusRUeD4SnnCGmpbLUd0jcA
Date: Fri, 12 Dec 2025 09:23:00 +0000
Message-ID: <68d465e0807de61d0cf44e4acb6cf017630678a9.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-23-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-23-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BY1PR11MB8005:EE_
x-ms-office365-filtering-correlation-id: 639bd0be-e2f3-46a5-3dd1-08de39600b53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?RjkxalNLNzNLNUNBbVZVTVFRUnJWUG9ERGk5cE8vVENodFAvd1NMUGJmL0hD?=
 =?utf-8?B?aDY1dXd5VUVsNXBJNmNFa0tEVStYdHlSY0J5anBBU2xialFaRVFOWnVLTWhj?=
 =?utf-8?B?dlkwZE9URXBsc2hBcUZ5WVZwU2JuYWZybkJpelE5eEU5RjNsOTlXMjlmOGJh?=
 =?utf-8?B?NmJtNnVCMU1Zdis0SnVmNVhsV0ZQbmRiRm1NMEdzZCsvUFNLRVE3NTBoVWRu?=
 =?utf-8?B?MUswb0dxRjZQUklNYk9jR1RTVm5mbTNMY0hHZnRCcERTams1aVdXN0hNd1BV?=
 =?utf-8?B?SWlrTzdMUlRPcGlHNE41L2JRTFVUdmcyUzZEUkYyK2RBc1RyeXE4dWw2UW1z?=
 =?utf-8?B?MVozaWFLRUdpQXJKVDhGdzZrYjkrZEJaSkdoSWlIMHpCZURob09PUTZPelFr?=
 =?utf-8?B?aXdzTUJuQlU2MS9VYWFlU2NLVE11ZTBMaWo4RUVxL2hDSHdveDZRSWVNWCtZ?=
 =?utf-8?B?c2crNDBvaWxaS1pzRnp6dDlMcmlxTDVYbXJPMjJGdlR4b3lTU1I4aVltMWhZ?=
 =?utf-8?B?OU12Sm1mMk4zejZOOFRWVzh1Qm9UNXBEdThsak9qdEd6RUc0Mk4xOFM4SnBT?=
 =?utf-8?B?Q1c1bXVVQWRxeTFIRjM3K2VuVXZSUVQxakREUlZDSVlBUzdMNEdvaWFibWU3?=
 =?utf-8?B?WVVUTUNORUQ5NmpQYWcyMitBWENPUjMyYk1wbDRST2dGNUtrTU9LcUVYdm93?=
 =?utf-8?B?QnN2dmF5TTJQcFYvL1FjNEM0M2Z0Q09TeC9WQXpsQUZIc3N5WEFjOVR6UmIy?=
 =?utf-8?B?NitMUnUxdzRUR1JzTFFweW1XZTdCZEwwR3VVWUNXOGhlNkJTaHBrZGV6dHNY?=
 =?utf-8?B?ejdpOTJ5aXZObDdUMlVGZnN4RlBxZXZGcGFCTEliTGxtaHIrL0FHdVRmZEZL?=
 =?utf-8?B?eEc3QndaNi9yd1JWTngwTVNSRHc2ejlaUGdXTHUyN1JWbmhwRG8yTWFWZ2lZ?=
 =?utf-8?B?NWZXOExBVmtaUG5xVTQrc2dPY3M3bkwyaE1Mam83U0c4ZFFwV0dzVHR4UmNn?=
 =?utf-8?B?bHlHQTRKWnpNQ3RDWTJUVHJ4c3hmZGFCdmowWFdvVVhLRGZZSWRzbzlseEw2?=
 =?utf-8?B?MXZGRG5uM2xxTG0vbmpsTS91eTAyeXBtRUI2alI2aUlmVmt2Sk1CZ2hiZFln?=
 =?utf-8?B?djk1eEI1TlFLYm1oUjFReDdMdVpFWW13K05leGtCZlJ5SWM3STB3SWZaUml3?=
 =?utf-8?B?SzRMM1EyMUI2T25MNVhHTElGU2pkUjdOa2hLTVFUS1FIYk45VzJHN211ampY?=
 =?utf-8?B?bzcrSEg0SE5Mb1I4OThlY3BEWUdVak5MNitMT1JlU0pqbXZTb3BpYVhuVytu?=
 =?utf-8?B?WnEwUWNuVTRHeDJWL29pZmdhY3Z1SWtURlBscVhHVVppNVovR3BHZmxuMmNI?=
 =?utf-8?B?c3F6TnV0SlN1Z1FkSjJvVkl2SGgzem9QU0dlUlRkSUEybSt3ZVNraHE2TFJV?=
 =?utf-8?B?a2tHNHJsc2pmNGY0b0dkSHBRWGs5V3pqMWVqTUl1cWtsUHl0SEkrT1hQR2V1?=
 =?utf-8?B?RkdQeUI1U2J6ZytETXVJcGROcE9vUFozeC9sNFJMUEJIa2Irb0tpcXIwTHF6?=
 =?utf-8?B?MGFoWm8vdDJubUFPT0FVWEFoY0c4dlpUTVVReFF2NmVrMEh6Syt2bGxpaGZB?=
 =?utf-8?B?ZWZ4YjBrZ0o1c29PMVZ6ZG9YSVkwYzJZYnpUbjI5SFcrL050MTRLZnpyMXEy?=
 =?utf-8?B?MFNnRjdBR0NUM0FENkNhcGY1NVFMdWcvYW9BNTBsRkNqSnRIQ1VjUndxYXpB?=
 =?utf-8?B?RXdCazRjY1ZQLzFGaEp1ZGY4Q045bk1CaEVrL2lWeEgwLzFtTHUzdUFFNE5Y?=
 =?utf-8?B?K3RpVkxHT09WMVhKKzFzcytmVjk2QVFhYXNCVmFpSEM2VTRHMk9qUWJ5YUNG?=
 =?utf-8?B?L0FCR0U4YXpjSUxTYU80KzdWZHN0WURNaDIzaXo2K1Nyd1h1NFN4MGFkaXlq?=
 =?utf-8?B?K1A3MXN2ZEQ3Um02VWdUc1JnR3AwVFRUQ0FBSVF5bEpyeVhXZmRuS0xETmpL?=
 =?utf-8?B?ZE43T0w2bHJtYjBkMXVMWDhxY00xTFFPTVRjLzFuMm1oOS8yZVRhZENnZCtI?=
 =?utf-8?Q?k7I7Oz?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cDh5a200YmpIUVpPeGdhN3RaRHBvNXgyeUZIVklQNWdIUXh3dHhXblRITW1W?=
 =?utf-8?B?aGovS05mRlRCUUhwLzd0TlJ5bHY3RG9kaHVra0ZxblZHaUpNRlFzVWZFRTM3?=
 =?utf-8?B?MnA0SkVQc0Z3OEhRTnBmc2lXbnhwOUxnRnlHZWdIa09BSzRMRU1JbWZRV2RN?=
 =?utf-8?B?TEdGc2VPbEJyWW1JU05TY2lvZTk2RzlxcmFQcXBFTjVsWUtWbEcwbEU4UHlF?=
 =?utf-8?B?UzhxVXhGNFFKblRadWpZa2M4WnFFRlE0TTdhcDR5ZjJRZDNJeWE1dDlNMk9F?=
 =?utf-8?B?cEVaNFNJMjhFb0Y0NDF4QThiTW11SmxQdktLNVFDVkhoWnZrcENUWDhEVFN1?=
 =?utf-8?B?eXd5Z3dyU3VFNjh5QnhVaEpkaDJWajRQSEFBUEZ2aVd6YWJFVW04YlNyVmR1?=
 =?utf-8?B?ODU0ckhpanJELzhuOU5kSjNLb3NEMFNnUTdET1NnRHFQK2Z4TFNWTXNMSHpT?=
 =?utf-8?B?d1FZL1BObWpHaWxUcUpwWjFPNUh6SUw5SXV2Q1k4a2hGTGpSOUluVG1PM21y?=
 =?utf-8?B?eHhpRmE5aWZkZXhJdHFsSjNGQW5hb2dEMytyTHRPbTg3OHFDcVV3Qno2RUJw?=
 =?utf-8?B?L0xXaUxqMDVWRENHZkpyVDBJY0s4SEJHSUdQUGtIVmV0YkhLYkU5QUJEbE1h?=
 =?utf-8?B?ZE9kZGNWSTZJbTVNQUxERHYzakpDNFFxOCtUbkczcU0zYjJKQlplS09LdVJN?=
 =?utf-8?B?VGU5eFJBeGZHVTJhMEFGY1BValRIZTdnQ0g0eHVQUWNPV3F6dTk2Z0preHow?=
 =?utf-8?B?VlM5WWh4amY4QlFGTU5meHNaNEVEb2czR2piS3k2NDJEQjhhS3AzNVRYZzNE?=
 =?utf-8?B?Y0NmVkU5YjlPNjZSWDc0Vlg5cW9zNEdaVm42dHIrekVYN08vYnFBaHBReFNQ?=
 =?utf-8?B?NUJSeG10c2l1R1V4cmg3WDk2QUh6eFd2SUQzNmtpczJRZklNcU1RSDFuZFRh?=
 =?utf-8?B?NXAxRXVVejRnbzVlVjZUL2ZXVitaVTdUcitCUDhCdlVxdk9MSCticXd4THNH?=
 =?utf-8?B?UmIwN0wrR0JnT1NrSXUzbWlHSzdPdzRlUFhhYk1EKzF4Y1FSNHdvRnJGRmVM?=
 =?utf-8?B?RjZEU2dVdytrempKRGdkc2RmTUFXWTNnSFZTTFcxZWdrdUlqeEdWMlJIYVp3?=
 =?utf-8?B?a2MrL1pNVE1JSWlSZHNLWEpmVUluWDlESDZ4TTR6OExoOTBvdnVmdmlqMzFO?=
 =?utf-8?B?ZzZ0bVh3eHNOamZCRElwMVFIQXMxSlk1WlRWZkFYazVSMWpxVzlHaHIySUhO?=
 =?utf-8?B?a0dUdGcyaVo4TDZRUXlMcG5iVjQvbjJBSGgvVjEwcUJoK1Izamk0THVjS2N2?=
 =?utf-8?B?anFpZmNINDlPRzhYTGROZy9hVFVodFE0c2UzZmVTZU43WlVDTE9KSWMxZUR0?=
 =?utf-8?B?cVZSV1FjUkFOTWNZRzgrSzB5bEwyTWZSNWpHUXNHRDJ3ejRzVGtNSmtzMXlj?=
 =?utf-8?B?VTA4cTJmdlh1TjJ2RUFpNkpPdG9EcGRhVlpSRDZRTnBTcU01V1Q3a01VNk1L?=
 =?utf-8?B?b3RoTFNVTW8rNHdNTklGc0dNV3VQN01pZENYd0hsUnJiRmUxdWJrTzMvUy9E?=
 =?utf-8?B?cWM3NDRBamc5aGJsdWt6SHcvb3VkV3dFNUFHV2RuczlISW96UUlENDFLOUFS?=
 =?utf-8?B?V3oyZ1RnckVZMTlXZXg5YXcwVHFVeUxFZi8rZlZtb1J2MWtFdUwveXMxdFJI?=
 =?utf-8?B?Y3lLSS9SVm0zc2NUcWM2d3ozQTFZcEZVQlBDZGxVakZSUHFlRGJXMlFvZU9L?=
 =?utf-8?B?N3V5OW9VUFJOTlN5cm9CNzBwVTZGb1hnSlRNTlFqbU9peUhNTXBFR1AxMWZE?=
 =?utf-8?B?cWZadlpyckRQa3ZpdFRXczlXN1ZoUnorT1NoN2RaRVZ1aDNjYTArM2hsR1Ns?=
 =?utf-8?B?TnV4TWxxUTNrdFJYdi9WbDhhMzJ5enhCVEpPNUhRUm0zMGZ6ZEFXMEJwY2wy?=
 =?utf-8?B?Y2NvZmNvOXBBYW1lRVBQYlNBMGlmcXAwYVpyK2taS091RmpZRnJ0ajZSZm5O?=
 =?utf-8?B?MU9ET0tVQnUxOGdXNVBwMXhEUWtEQUNqZXJvRCtiL3RkalZ1Sm5lTm1qWDlj?=
 =?utf-8?B?d2ZxYWFiUW9TdkN5a0JKTEVmS0VTSHR2UFdueHZhRHRSak5DMVUxdWFkOVZz?=
 =?utf-8?B?aDNlendUR29Td2g2ZEc3WmhEMDNuYjNaUzIrc3YxWnVBTmlFeWY3eTZSUWwr?=
 =?utf-8?Q?wAImVLfvIN/EYjq1CdgkBUk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <260092812A701648B1376989CD6CF7C6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 639bd0be-e2f3-46a5-3dd1-08de39600b53
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 09:23:00.2617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YBJSjd1VlaEMOYKBiM3EGR9lcOk3fV6XqcVnE2gblnfK9WZsXf0lIH7mHjWflFHJdQetLaUuqqKRpYIx3OUMGAFtkCU4EkhKsdG2HslmjwM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8005
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBpbnRlbF9kcCBwb2ludGVyIGNhbiBiZSBkZWR1Y3RlZCBmcm9tIHRoZSBjb25uZWN0b3IgcG9p
bnRlciwgc28NCj4gaXQncw0KPiBlbm91Z2ggdG8gcGFzcyBvbmx5IGNvbm5lY3RvciB0bw0KPiBp
bnRlbF9kcF9jb21wdXRlX2NvbmZpZ19saW5rX2JwcF9saW1pdHMoKSwgZG8gc28uDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDkgKysrKy0tLS0tDQo+
IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQoN
ClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGlu
dGVsLmNvbT4NCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
IGluZGV4IDgwMWU4ZmQ2YjIyOWUuLjVhZDcxZTY5N2U1ODUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTI2NTMsMTMgKzI2NTMsMTMgQEAgZHNj
X3Rocm91Z2hwdXRfcXVpcmtfbWF4X2JwcF94MTYoY29uc3Qgc3RydWN0DQo+IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yLA0KPiDCoCAqIHJhbmdlLCBjcnRjX3N0YXRlIGFuZCBkc2MgbW9kZS4g
UmV0dXJuIHRydWUgb24gc3VjY2Vzcy4NCj4gwqAgKi8NCj4gwqBzdGF0aWMgYm9vbA0KPiAtaW50
ZWxfZHBfY29tcHV0ZV9jb25maWdfbGlua19icHBfbGltaXRzKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+IC0JCQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3Rv
ciwNCj4gK2ludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xpbmtfYnBwX2xpbWl0cyhzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yDQo+ICpjb25uZWN0b3IsDQo+IMKgCQkJCQljb25zdCBzdHJ1Y3QNCj4gaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gwqAJCQkJCWJvb2wgZHNjLA0KPiDCoAkJCQkJ
c3RydWN0IGxpbmtfY29uZmlnX2xpbWl0cw0KPiAqbGltaXRzKQ0KPiDCoHsNCj4gLQlzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiAr
CXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0
b3IpOw0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBpbnRlbF9hdHRhY2hlZF9kcChj
b25uZWN0b3IpOw0KPiDCoAljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRf
bW9kZSA9DQo+IMKgCQkmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZTsNCj4gwqAJY29uc3Qg
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtDQo+ID51
YXBpLmNydGMpOw0KPiBAQCAtMjgzMSw4ICsyODMxLDcgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25m
aWdfbGltaXRzKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgDQo+IMKgCWludGVs
X2RwX3Rlc3RfY29tcHV0ZV9jb25maWcoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGxpbWl0cyk7DQo+
IMKgDQo+IC0JcmV0dXJuIGludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xpbmtfYnBwX2xpbWl0cyhp
bnRlbF9kcCwNCj4gLQkJCQkJCcKgwqDCoMKgwqDCoCBjb25uZWN0b3IsDQo+ICsJcmV0dXJuIGlu
dGVsX2RwX2NvbXB1dGVfY29uZmlnX2xpbmtfYnBwX2xpbWl0cyhjb25uZWN0b3IsDQo+IMKgCQkJ
CQkJwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUsDQo+IMKgCQkJCQkJwqDCoMKgwqDCoMKgIGRzYywN
Cj4gwqAJCQkJCQnCoMKgwqDCoMKgwqAgbGltaXRzKTsNCg0K

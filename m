Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AA19BF42C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F4710E036;
	Wed,  6 Nov 2024 17:19:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EXFVrcz7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CD5B10E036
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 17:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730913557; x=1762449557;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+sMCraPXd6Xr5JMzPcRPZL399OsEN5FAAobqoh/Zp4A=;
 b=EXFVrcz7ZrS8XyB78oaG6/l65M9WVV9Lj7ZrziYiOVeuvfIrGwBoz54V
 bHOOU+Mr/7MLBuJE1RuDeznOsZ2oGmmkDZJlLaT3CQSKTX/XA3RSt5iV/
 UyB7Ngo9CzFfKXxitlLr28UmLwMv7lt6fiKUTKNrcBFw+s/89I9FsN33p
 z/uG0JiP6L7xiI+QuEbBtlIu3nHAvwJyxish0ps0hqfWcWW3zNEo0YJb7
 bXOKG29kbyZs2uS6GDNs4ofPqXfH9XuXoCCSBedgnN8lTIdEl3biH2ojB
 CNaVrUusS0roHlzVR7o5ftWwyi4qfObFXpuyCKV7a87W5YtQ5yxQXt80G Q==;
X-CSE-ConnectionGUID: TM5e0uPeQx2k+Ccm6veN6g==
X-CSE-MsgGUID: MmljQIFtTpe1/hqzxhwyKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30828260"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30828260"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 09:19:17 -0800
X-CSE-ConnectionGUID: C9XUxi+/T9WH1F6AEJb9hg==
X-CSE-MsgGUID: exZsz31ZQkSl++If+0lzlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="115500663"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 09:19:16 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 09:19:16 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 09:19:16 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 09:19:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bSNNn/fXNbWywdK+CABlhrxJ1zyKCf+xKfJ6oNgOnWFyDcXXVmsGtICdrpNM25d06ZaZfnxeX78sJACU3EH7OCWulMEWxb9qc7uoDvwZLoN9OuQy7MtOzjJ/P2ZI/IvIwNkUYzdpyQT3/NtbuvsThjGPfhjAtOjhtE6KGKEwtOu5b+fcB+q8P5xHty8PPSMNxeh97WPqARtogq29XV8M8/KoDx7edsqwgAyk+ogpjfzAXFSeBwdjmQXAU5YfRirExYPrnGJ2j8NVuNHt9anfN1HtjeSckD7sBekESi2WZSV+J59d/z7xgEkthcdmdX5lDKLmcli2Tze8pMaiWPEqaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+sMCraPXd6Xr5JMzPcRPZL399OsEN5FAAobqoh/Zp4A=;
 b=b2xityde0tcPLCqYaFEZDAL7op3DEJ8ywldJ3p4DpJTfSGEdnKuKkDtgHYr4nxDLzIGK0HxA/gfdRkcRuMqtQ4WBt+DpY7UpuvGL9fee5yWUfT9U7Y+x5ok/VJgYDZNie9hskjMCfh0WnFY9uiC2EzSU01HoF4UPAnbVAdF3XjMR7tFTRQM+bRbem9T5mPjpokW4XoyajFq7Qok1itzLj0Pugk2o2t+5l+iEP6xKrSot3rt4AzE8djX4he83CV+NE5VuKJuw/oI+uEHkqKOaU15ujWhtzABjy3qDhc45QqDRFDSMyOAMgpG9WB/rnWR9PIB/rTDzPDM1iWOcu489YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SA1PR11MB5922.namprd11.prod.outlook.com (2603:10b6:806:239::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 17:19:12 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%6]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 17:19:12 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Coffin, Alexander"
 <alex@cyberialabs.net>, "Auld, Matthew" <matthew.auld@intel.com>, "Deak,
 Imre" <imre.deak@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>,
 "Vishwanathapura, Niranjana" <niranjana.vishwanathapura@intel.com>,
 "andi.shyti@linux.intel.com" <andi.shyti@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>
Subject: RE: i915 potential deadlock
Thread-Topic: i915 potential deadlock
Thread-Index: AQHbLEYepcBlONqbMUi8VgZVpNkPULKi2ySAgABeUYCABMRmAIACiUNQ
Date: Wed, 6 Nov 2024 17:19:12 +0000
Message-ID: <DM8PR11MB56557799363D8A2D368FE5A6E0532@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <50b67f9f-e615-414d-abf5-4ee82e35a353@cyberialabs.net>
 <ZyU1SQjAfUQBgbPF@intel.com>
 <ebe1c5bc56eb2e84e791ba5e9bf2c714@purelymail.com>
 <ZymEJhvH-hrQ11hV@intel.com>
In-Reply-To: <ZymEJhvH-hrQ11hV@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SA1PR11MB5922:EE_
x-ms-office365-filtering-correlation-id: e987b3f6-28a1-462e-0158-08dcfe8721e0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?UUhjdDZLbjNMYVk4bWkwWTlvbml4ajA5L29NZlNqb0tRRWV5SVdQM3BDOEow?=
 =?utf-8?B?MllBcVdESTdFdHcwakxQNHJCcmlIOGdHb3NCcHBYNEJaQ1YzZ3BhU2JuSzF2?=
 =?utf-8?B?QmNuNEFjcDQ2a0VIN0N5d3hONW40bVVlNlJnVzAybVlwZUwxOVRkaVA5SUNM?=
 =?utf-8?B?dzM0M2p5S0s2S3hFWU9zbkNrRWk4UkhveTMrZHNnY2NaeDc0N1JjVmJxb2k0?=
 =?utf-8?B?SXp5THNxZTI3QU9nSXdBOEd5VElKZEk3QXRkRkZOT1RGaldFcUZ0blM5b01o?=
 =?utf-8?B?d3ZFQVp0Sk9TMXZtSkFtekM4YktKdDBCRHpTU2cwaktmWGR5SlZnZ2p1WG9n?=
 =?utf-8?B?OGVlS0lvYnBTTVBIL2NJTlYwSjhyamhvV1d4SjhmSzh6NjAyNmF2Z2tRRkJK?=
 =?utf-8?B?SHpVMmtBK0M3aHUyK0hLeS9peWZBRktIeE11Mnd6ZVdma3BhWm14YnRPSUVO?=
 =?utf-8?B?THpHRnJwSCtTb1J1Z01hcWFtVEtOeTE4Z1VEN25udHpIclgxL3c3aEV3ZjF3?=
 =?utf-8?B?d3Q3Vk5TYXlRMmp6aWpFYUoxdmw0aWQvVlJwQms5cXFJN09XVGQwaWtMTUsv?=
 =?utf-8?B?ME82MkJjbWR5bzRSaU8xSVgyTFVpTTJpSTl4K1FIdjFVenNHM0IrV0JLZE9T?=
 =?utf-8?B?aktSczdTOExpYzI3YWlzcU0wWmtielFiTWFVS05kMEJBbEVVS1JWeUVlZCt5?=
 =?utf-8?B?L3VtOGZ2Q3hNOGlGZnp3MlhTcS9kS0I1R2xFNEI5U3NESFJwUXAxVHFVZ3g5?=
 =?utf-8?B?YWZVK21JRjM3VndlbVJWWGVwQkhnc3NLeVhwbFFEcDRBbCthSDllZHAvQzdX?=
 =?utf-8?B?ekVGSTI2NStXcS9DNkR5Yk1pNnVqRGg1YUJlSUY2a05ZYWhyazRYOFdiNGhZ?=
 =?utf-8?B?QTZRbTlGMUloUXI0WXlFd0kvc1Y0RWpzQVVTWlNyVHNRV0g3QkQ5SzhDMjVP?=
 =?utf-8?B?RFlNVjVvRnhwTWs2SHgrSHBaTlFMeW9KVkR5SkVOaEJtM2Q0RWhFRWFONW1C?=
 =?utf-8?B?K1AvU1d2c0E3UkYrVWRLRWdtQUs5eWI2TTZIcXZXMVZLRFA2dXBYQ0taRWtL?=
 =?utf-8?B?M1VZREl2TVF6K0ZuY2lJSkdhWWlRQWV4L0V2UzJqMWF3MnhQSWN1OGdJSzRH?=
 =?utf-8?B?dUdxQnY5dWZzNllUYmZZVm5jTmlyYXJpRW91OWZJbi9Ja05vY3kyV1pQdWhv?=
 =?utf-8?B?VndIZnZDZ1grWVFHcGV0L0J2Q2VwUTFuRTRWWi9jZjluckt5REFKUzhLMUs5?=
 =?utf-8?B?bEJ2SGZHbUdMckhlY0pVU0FBMitDcitLK3FYN29GTC9nMWxXMk82aWpyV2tR?=
 =?utf-8?B?Nmt1QUhSSTk3cytlSThQN0NGUWw1a2xhWDBSSmxtTEVFQVJFbVlJdHRrTUFv?=
 =?utf-8?B?eUdnR3hkY1Rpa1AvajkvbnRaaVhCR2hUSXNwZm5PelR0S2NFNkxVaUo3Sjlt?=
 =?utf-8?B?U0ZYVjIzT2E5UXpiMU5McGh3MzdHQUowN2NTdEh3a0czc1hzZEg4azd6alp5?=
 =?utf-8?B?UzZlMkNzOHQ2UXVValRwREV4MU9hckV5bmVaV2lXRzdjbzBCMU9OM05hUEYw?=
 =?utf-8?B?UHpHQ1U4OVROQVJOYVNmMmtqTjYzeGcxM1dhZW5mWmhaVlNNOUE0R2tpYkJQ?=
 =?utf-8?B?M1ZYTTBaend5eVF2NktXclp2ZUFhWVpLd0JVbG5QUXg2TDRBVHFnbDJKTDVG?=
 =?utf-8?B?ejNhYWVwNHlmRWtHREtEMlZqMDFEZ2N4RWVHT295Y09xS29tK3pWS1BzY2Fi?=
 =?utf-8?B?MjNYdFBxN0ZPb0lnRkRxTVlQbTA3ZzF2QlA5TVR6MDlkdlNzd3lQNXRnOEFn?=
 =?utf-8?B?UlkyTmxNbUVWVjRBZEFpUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OGpPOW9EcWF4N3BFaCtpUXEyNVFBTjlsRE81YmRlYURITjZTb0dXZGF0YmlQ?=
 =?utf-8?B?dnNobDgxUGZSbm92UmtqeFBTZzErbzlVM3pyZTZ3TUo5ZXFEYzNGOHNWQmJG?=
 =?utf-8?B?RzY0a1Z4bkYvRlVyVEJ4UTdOV2xmRXRTZFMxYUc1V096OExMa0Z5NjVwUlNC?=
 =?utf-8?B?WXZpcktYT3pCUXpIRnFLbTdiVUdKL0NoNEs4ZXhSWlNqTkM4dFhBS0NBWnlF?=
 =?utf-8?B?Qytjc3dNUkpoa1ZpdzZpa2pyU0hWanIzL2hPVzBOeFR1R0lQckJSQjlDNC95?=
 =?utf-8?B?Ym5vV0ZRMDNGaDNoS2pBTEhwd3h1ZS84dnBrNzlCRDdPT2grbzVFVnphVVZB?=
 =?utf-8?B?bDlXNXZWT0NlNGVONFF4cUlKZ2NvSUVPeVFVOTM0eXloMnhYUndDanZ5aUdG?=
 =?utf-8?B?UXQydUtXRUZaVlk2N0Z3Y0ovTnRwUVp5R0JkL1RZeE5CSjRpa3ZJMjE3SW8y?=
 =?utf-8?B?NlVnWExzVmoxelNnUVdIZGx0SzZkalRibFM1ZFM4c3I5TmNUSzcrL3ZHSzVF?=
 =?utf-8?B?OXpscXVadW15emRFVG5haWI3WUlDZHcrOVJlWm5qMVR1Y01meFBEaThLY2R6?=
 =?utf-8?B?bzVMNDlxaFdibEo1MVRmQVBXbHZGTmNsK2Q3Z2lJNFdxczh1TXRwbDFSN0Jz?=
 =?utf-8?B?eUFWMWhVeW13S1pHSkxJQkpWTU1QUnBjT0hqWHVqM1VCSEhlQmNkMHR4WVhZ?=
 =?utf-8?B?MFJUQllwZlJiSklTVjJTa3RVQ3ozZi9LZVgzMVN6M0p3SURyOU9hUlFuRXdF?=
 =?utf-8?B?MnlrZVhzOUtBK0lFUEdmdGg0aFpMTDVPMXpkM0ZZNHBJYnN3aFdzK1dRK0Z1?=
 =?utf-8?B?VDdZTnNwRjJILzd6Rko1dkplemFOamhNdVpDcmtrbWpzdDVrWVZ0QnhZZ044?=
 =?utf-8?B?d3NMc3ZacGpyWGo5VTFQZlNlVi9laUkyQ3NBclFiQjlBelFybGhTaW1NZHdS?=
 =?utf-8?B?YTVvM2J2M1BTTGplTm9jN3FhQTdGMytEajRVOTdjR2hoYTlESFJMRXRGVjdY?=
 =?utf-8?B?d0hkcTE3OEYvVFdLZkpaVUZ4SWlhR21kVkNvYXJEMC9ZTmZ1cG1iL3NqYmF2?=
 =?utf-8?B?YzdIVExLMDhnT2twOFJGK3dqMFhqV1J5d3pmTzNnOHo1TFdvVWY4UFNrVHh0?=
 =?utf-8?B?Q2RDL001NEFBQmtZeFlaN3RDb0M1bkZTWjZRRWpvWDliTUE0OGJ2VEdzN1Y0?=
 =?utf-8?B?M3RScGFlbUlPUFpRdDFVVTR0bElmRkoxVjZDUGtqcVJGMTJ6bmJidURXZGhW?=
 =?utf-8?B?ejc2NHhLbVB2OTV1V25QRm1Eek1nRG5tdjgySHlPbEd5TXBkaEFJL1Q2aDho?=
 =?utf-8?B?cm8wQUdLN2JFNTliR0FzbnNPam42SGd3bnBzc0paQWtxWkxBRjZMWjBLaWJ2?=
 =?utf-8?B?b25Jbm1XeHlhbEQ0eXduTmNYVmlGakF4RHk3RUtmNDBQMGVjcGxoekw3bjI5?=
 =?utf-8?B?NFJaWkFzSG1TMzVIc3F0cHVpL3BZWndFMGsyYnhvTzR6amtxSFZydWVlMGVt?=
 =?utf-8?B?ZUdHNy9qNldBQ1VsTWxXTGJwWUtLZ1ZlV2xzRnJPanlzSDFlR3IvczczVnRP?=
 =?utf-8?B?azRsQ2NrK3hvUnU0dkFqN1RhNTZLN0ZPRE9vQkw1amUwS0hhUHJKRUlvejND?=
 =?utf-8?B?L1NSRlptWUZpbERnOWhZSWkvdEU4TllNUkw4am03WU1pM2Y2TjIyRlVFdk5w?=
 =?utf-8?B?Ti9YK0NhY3dtM1FiMEZYYWFYKzNyOE9zTzNTL2hrS1ZidjNxNDNpTmFzdmUr?=
 =?utf-8?B?UE1vTmhjUGF2ZE5WUlZ2b1N0cEMzeEladjNvWWpwWEs5ZlJzM0x6UmlaeDJJ?=
 =?utf-8?B?RG9vREpTU2kwekUvbGlBa2VJTHpIamd2RUc0MXhrNEZlRDNacVpBZEcyaElN?=
 =?utf-8?B?bmxIUWZWbXBDV2tuWTlOUVhERWxVVWxTYzhqVnNyQ3A4ajNmalhHSTRaUHZM?=
 =?utf-8?B?SFdrNnpiUk40VStPWU5FU2VaZFg3Sm5MWnlkbGE4WGRCeldMSEZDQWhkaXFX?=
 =?utf-8?B?OFFPaFRvL0poNFc3UVRMN3BsVENLY0hMSEtqS3l6akV6NE9FdFF4bVlWQjAy?=
 =?utf-8?B?a1NaVzdWd2liYWpZVERzRmo0SHErQ0lmUVpPTkZETzlPWUZRWjNBcmVBV0xS?=
 =?utf-8?Q?a+dcMenrniL7FdXCprckJQ7v9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e987b3f6-28a1-462e-0158-08dcfe8721e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 17:19:12.1609 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +nXGcO/zuiNo6B8i0F8jIEpSEIBx39+qepLA/NyGhis7XhMe4oaUM88yBJpJcu3sfiRxvi4s50gpL5eHGwRyYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5922
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

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IFJv
ZHJpZ28gVml2aQ0KPiBTZW50OiBUdWVzZGF5LCA1IE5vdmVtYmVyIDIwMjQgNC4zNA0KPiBUbzog
Q29mZmluLCBBbGV4YW5kZXIgPGFsZXhAY3liZXJpYWxhYnMubmV0PjsgQXVsZCwgTWF0dGhldw0K
PiA8bWF0dGhldy5hdWxkQGludGVsLmNvbT47IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5j
b20+OyBTeXJqYWxhLCBWaWxsZQ0KPiA8dmlsbGUuc3lyamFsYUBpbnRlbC5jb20+OyBWaXNod2Fu
YXRoYXB1cmEsIE5pcmFuamFuYQ0KPiA8bmlyYW5qYW5hLnZpc2h3YW5hdGhhcHVyYUBpbnRlbC5j
b20+OyBhbmRpLnNoeXRpQGxpbnV4LmludGVsLmNvbQ0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT47
DQo+IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4NCj4g
U3ViamVjdDogUmU6IGk5MTUgcG90ZW50aWFsIGRlYWRsb2NrDQo+IA0KPiBPbiBTYXQsIE5vdiAw
MiwgMjAyNCBhdCAwMTo0NjoxNUFNICswMDAwLCBBbGV4YW5kZXIgQ29mZmluIHdyb3RlOg0KPiA+
ICAgIEhpIFJvZHJpZ28sDQo+ID4NCj4gPiAgICA+IEknbSBzb3JyeSBmb3IgdGhhdC4gT3VyIGxp
c3QgaXMgbW9kZXJhdGVkIGZvciBub24tc3Vic2NyaWJlcnMgYmVjYXVzZSBvZg0KPiA+ICAgIHRo
ZSBhbW91bnQgb2Ygc3BhbXMgd2UgcmVjZWl2ZSBkYWlseS4gQnV0IEkgZXZlbnR1YWxseSBnb3Qg
dG8geW91ciBtc2cgYW5kDQo+ID4gICAgYWxsb3dlZCBpdCB0byBnbyB0aHJvdWdoLg0KPiA+DQo+
ID4gICAgSSBhbSBzb3JyeSBhYm91dCBzZW5kaW5nIHRoZSBlbWFpbCB0d2ljZSBpbiB0aGF0IGNh
c2UuIEluIGhpbmRzaWdodCwgSQ0KPiA+ICAgIHByb2JhYmx5IHNob3VsZCBoYXZlIHN1YnNjcmli
ZWQgdG8gdGhlIGxpc3QgYW5kIHRoZW4gc2VudCB0aGUgZW1haWwgdG8NCj4gPiAgICBhdm9pZCB0
aGlzIGlzc3VlLCBidXQgSSBkb24ndCBpbnRlcmFjdCB3aXRoIGVtYWlsIGxpc3RzIHRoYXQgb2Z0
ZW4gc28gSQ0KPiA+ICAgIGRpZG4ndCB0aGluayBvZiBkb2luZyB0aGF0Lg0KPiA+DQo+ID4gICAg
PiBDb3VsZCB5b3UgcGxlYXNlIGZpbGUgYSBidWcgaW4gb3VyIGdpdGxhYj8NCj4gPg0KPiA+ICAg
IE9mIGNvdXJzZS4NCj4gPiAgICBbMV1odHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2k5MTUva2VybmVsLy0vaXNzdWVzLzEyNjc3DQo+IA0KPiBWZXJ5IGludGVyZXN0aW5nIHJhY2Uu
Li4NCj4gDQo+IEJyaW5naW5nIHNvbWUgZm9sa3MgaGVyZSB0aGF0IGNvdWxkIGhhdmUgc29tZSBp
ZGVhcy4gSSBkb24ndCBiZWxpZXZlIHRoYXQgd2UNCj4gc2hvdWxkIGJlIGFjY2VwdGluZyB0aGF0
IHBsYW5lIHBpbiBjYWxsIGJlZm9yZSB3ZSBmaW5pc2ggdGhlIHByb2JlJ3MgaW5pdGlhbCBwbGFu
ZQ0KPiBvYmplY3QuDQo+IA0KPiBGb2xrcywgYW55IHF1aWNrIGlkZWE/DQpMZXQncyBjb250aW51
ZSBkaXNjdXNzaW9uIGF0IFsxXSBhcyBpdCBoYXMgY29tbWVudHMgZnJvbSBKYW5pIE4gYWxyZWFk
eS4gDQogDQpCciwNCkphbmkNCj4gPg0KPiA+ICAgID4gV2VsbCwgc28gbWFueSB0aGluZ3MgY2hh
bmdlZCBmcm9tIDYuMS4uLiBJcyBpdCBwb3NzaWJsZSB0byB0ZXN0IHdpdGggYQ0KPiA+ICAgIGRy
bS10aXAga2VybmVsIGFuZCBzZWUgaWYgaXQgaXMgc3RpbGwgcmVwcm9kdWNlZD8NCj4gPg0KPiA+
ICAgIFNvcnJ5LCBJIG1pc3Bva2UgaW4gbXkgbGFzdCBlbWFpbCB0aGF0IDYuMSBpcyB0aGUgbGF0
ZXN0IExUUyByZWxlYXNlLiA2LjYNCj4gPiAgICBpcyB0aGUgbGF0ZXN0IExUUyByZWxlYXNlLiA2
LjEgaXMgdGhlIGRlZmF1bHQgZm9yIERlYmlhbiB0aG91Z2ggYW5kIGlzbid0DQo+ID4gICAgY29u
c2lkZXJlZCBvbGQgdGhlcmUsIGFuZCB0aGF0IGlzIHRoZSBrZXJuZWwgdGhhdCBJIHVzZSBvbiBt
eSBwZXJzb25hbA0KPiA+ICAgIGRlc2t0b3AsIHBlcnNvbmFsIGxhcHRvcCwgc2VydmVyLCBhbmQg
d29yayBsYXB0b3AuDQo+IA0KPiBOZXZlcm1pbmQuIFRoaXMgcGFydCBvZiB0aGUgY29kZSBoYXNu
J3QgY2hhbmdlZCBzaW5jZSA2LjEsIHNvIHdlIGxpa2VseSBzdGlsbA0KPiBoYXZlIHRoaXMgYnVn
Lg0KPiANCj4gV2UgdXN1YWxseSBhc2sgdG8gdGVzdCBhIHJlY2VudCBrZXJuZWwgc28gaXQgaXMg
ZWFzaWVyIHRvIGJhY2twb3J0IHNvbWUga25vdyBmaXguDQo+IEJ1dCB0aGlzIGlzIG5vdCB0aGUg
Y2FzZS4NCj4gDQo+ID4NCj4gPiAgICBJIHdhcyBob3BpbmcgdGhhdCB0aGlzIGJ1ZyBjb3VsZCBi
ZSBkZWJ1Z2dlZCAob3IgYXQgbGVhc3QgYXR0ZW1wdGVkKSB3aXRoDQo+ID4gICAgYSBzaW5nbGUg
ZGVhZGxvY2sgcmVwb3J0ICh0aGF0IGhhcyB3b3JrZWQgd2VsbCBtb3N0IG90aGVyIHRpbWVzIEkg
aGF2ZQ0KPiA+ICAgIHJlcG9ydGVkIHNpbWlsYXIgaXNzdWVzIHRvIGtlcm5lbCBtYWludGFpbmVy
cyBmb3Igb3RoZXIgZHJpdmVycykuDQo+ID4NCj4gPiAgICBJZiBJIGtuZXcgaG93IHRvIHJlY3Jl
YXRlIHRoaXMgaXNzdWUgSSB3b3VsZCBnbGFkbHkgdHJ5IG91dCBhbnkga2VybmVsDQo+ID4gICAg
dmVyc2lvbiBmb3IgYSBxdWljayB0ZXN0LiBPciBpZiB5b3UgaGF2ZSBhbnkgdGhpbmdzIHRoYXQg
eW91IHNwZWNpZmljYWxseQ0KPiA+ICAgIHdhbnQgbWUgdG8gdGVzdCB0aGVuIEkgd291bGQgYmUg
aGFwcHkgdG8gdHJ5IGEgbmV3ZXIga2VybmVsIHZlcnNpb24uDQo+ID4gICAgSG93ZXZlciwgSSBh
bSBub3QgcmVhbGx5IGNvbWZvcnRhYmxlIGRhaWx5IGRyaXZpbmcgYSBibGVlZGluZyBlZGdlIGtl
cm5lbA0KPiA+ICAgIHZlcnNpb24gb24gbXkgd29yayBsYXB0b3AgYXMgb2YgcmlnaHQgbm93LiBJ
IG1heSBiZSBhYmxlIHRvIHJlYWQgdGhyb3VnaA0KPiA+ICAgIHRoZSBzb3VyY2UgY29kZSB0byB0
cnkgdG8gdW5kZXJzdGFuZCB3aGF0IGNvdWxkIGJlIHRyaWdnZXJpbmcgdGhpcyBpc3N1ZQ0KPiA+
ICAgIGFuZCB0aGVuIGZpZ3VyZSBvdXQgaG93IHRvIHVzZSB0aGF0IGluZm9ybWF0aW9uIHRvIHJl
Y3JlYXRlIGl0IG9uIGEgbmV3ZXINCj4gPiAgICB2ZXJzaW9uLCBidXQgYXMgSSBkb24ndCB0aGlu
ayBJIGhhdmUgc2VlbiB0aGUgaXNzdWUgc2luY2UgSSByZXBvcnRlZCBpdA0KPiA+ICAgIEknbSBu
b3Qgc3VyZSBob3cgbGlrZWx5IGl0IGlzIHRoYXQgSSBzdHVtYmxlIHVwb24gdGhlIGlzc3VlIGJ5
IGNoYW5jZQ0KPiA+ICAgIGFnYWluLiBJIHdvdWxkIGZlZWwgY29tZm9ydGFibGUgZGFpbHkgZHJp
dmluZyByYW5kb20ga2VybmVscyBvbiBteQ0KPiA+ICAgIHBlcnNvbmFsIGxhcHRvcCwgYnV0IEkg
dXNlIGFuIFhQUyA5MzcwIGZvciBteSBwZXJzb25hbCBsYXB0b3AgYW5kIEkNCj4gPiAgICBiZWxp
ZXZlIGFuIFhQUyAxNSA5NTMwIGF0IHdvcmsgKGlmIHRoaXMgaXMgaGVscGZ1bCBpbmZvcm1hdGlv
biBJIGNhbg0KPiA+ICAgIGRvdWJsZSBjaGVjayB0aGlzIGFuZCBwcm92aWRlIG1vcmUgc3lzdGVt
IGRldGFpbHMpIHNvIHRoZXkgYXJlbid0IHRoZSBzYW1lDQo+ID4gICAgaGFyZHdhcmUgKEkgaGF2
ZSBubyBpZGVhIGlmIHRoZSBoYXJkd2FyZSBpcyByZWxldmFudCkuDQo+ID4NCj4gPiAgICBEbyB5
b3Uga25vdyB3aGVyZSBJIGNvdWxkIGZpbmQgaW5mb3JtYXRpb24gb24gdGhlIHZlcnNpb25zIHN1
cHBvcnRlZCBieQ0KPiA+ICAgIEludGVsIG9mIHRoZSBpOTE1IGRyaXZlcj8gSSBjYW4ndCBzZWVt
IHRvIGZpbmQgYW55dGhpbmcgZnJvbSBkb2luZyBhIGZldw0KPiA+ICAgIG1pbnV0ZXMgb2YgR29v
Z2xlIHNlYXJjaGluZy4NCj4gPg0KPiA+ICAgIEJlc3Qgd2lzaGVzLA0KPiA+DQo+ID4gICAgQWxl
eCBDb2ZmaW4NCj4gPg0KPiA+IFJlZmVyZW5jZXMNCj4gPg0KPiA+ICAgIFZpc2libGUgbGlua3MN
Cj4gPiAgICAxLiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVs
Ly0vaXNzdWVzLzEyNjc3DQo=

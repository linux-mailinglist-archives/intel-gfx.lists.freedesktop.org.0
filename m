Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AC4BD7502
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 06:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88CE10E1B0;
	Tue, 14 Oct 2025 04:48:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ExE/ioEQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFCEC10E1B0;
 Tue, 14 Oct 2025 04:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760417313; x=1791953313;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=h3CW6yFi1SUuLDObw4XfYo4W8zfW4sof++gbzcvqK9E=;
 b=ExE/ioEQeoZsL0M9FtDuZHhtG0DqdYKYFyqstS4jTdcKouVtLXHDIaQ4
 QIG3gzvANsJatVrg7RolwmHaSNNXOxjk6AnbSN1jivEdqi2d85BLTz398
 gVHSQBAcMfNA7Ls9tcQ0XzEQzohgl7IJNwx1kFpzq/IdnTgph425tVoRl
 FCwW2Yg/yNLmkPzt/erWFsRVg2l5s+oUHpZ0HRISrK8tjZm463DpZk2My
 6a0vZca1N/5iYVd84Wfoqjj/xvqHDD9Vi4JD4oJKdnuuveiWE4n0D1l33
 O4KKyWIZE0YVrF7NC0uQaPBR9mUTEcUmwLKAlsq/Qt91Ds4gB/dOXInV+ A==;
X-CSE-ConnectionGUID: uJrBHntOTl6EjgcoS0w1cw==
X-CSE-MsgGUID: dJzwAalRR4m0KvGIxt61eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="62666422"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="62666422"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 21:48:32 -0700
X-CSE-ConnectionGUID: KOYkuVLbS96mW6NP8h32hA==
X-CSE-MsgGUID: 9thCITLYQUGCZJqNgmXExw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="186033025"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 21:48:32 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 21:48:31 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 21:48:31 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 21:48:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H+g9qKbOw8D60lwRkLbA8brDA+5KVjYdaAOhwIG4rBYvx+bz/GlHKSNX4UG8bnyRQiAeGi4VTFCc7PNJ0nr6XoryAW5jB2s6gaLfTz4PdNMir/bMOatdQs1x8F9CqlROnMbcL09Tqwv/Ew//I3gP7TnJ+GRrs5u0FQk5Ml6DZjAAi3H1fEpX/+jdpj/lwRIlDacCD8+5GNaNBxU++fL225RJKRkhoornzfq6j/J5ylQBotvuqq4rGkShgFecQ7Y0V86HQpMvbOwJnazf+2b7f2b02dav5SRswmEBx2eonMB4w4arrqJuikuBezVaJD2dKSfTk/NfcgJfu5/yXhDsQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h3CW6yFi1SUuLDObw4XfYo4W8zfW4sof++gbzcvqK9E=;
 b=CI0zLV8mFl2/H+TO+u4IdsrPYc6ec+btnftPggATP6zIu7MUL8o//WpT8dS9ys8Aq84ZCIGpfnwRZb95axxtBo0FQ4k0ybvUNWRTxIELvXQxVSeqnsW71Q1BqklxT3qnFfPYTTQcbZC4clfXuwRFh7rpqEkPJWwkflmiafOcD7CQSjOfyIFlmoXsIkNWlBcHvfsau4XNmXqm3JEs5D9NWk4jctNf6DqpqhAL4vvhjhdYRs5uR4xQ/g/1m5wRwghMLuafUNCku38wuDnGmy3jqhEY70YtjD6Uqj4M2Wcel+T0NYo9BNMPFBsKmpybMSpCYfYpcptZRlRzInFZJYKVzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5789.namprd11.prod.outlook.com (2603:10b6:a03:424::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.11; Tue, 14 Oct
 2025 04:48:28 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 04:48:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula, 
 Jani" <jani.nikula@intel.com>
CC: "dev@lankhorst.se" <dev@lankhorst.se>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Saarinen, Jani" <jani.saarinen@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 2/9] drm/{i915, xe}/fbdev: add intel_fbdev_fb_pitch_align()
Thread-Topic: [PATCH 2/9] drm/{i915, xe}/fbdev: add
 intel_fbdev_fb_pitch_align()
Thread-Index: AQHcHkbI42+ww2VkOk26VHLfPZxw/7SJQxoAgAAXngCAAB8KAIAABK+AgAxDo4CAAH8WgIACctuAgCegigCAADnlgIAAwIwA
Date: Tue, 14 Oct 2025 04:48:28 +0000
Message-ID: <540f5979136e1baaf1298db03c81c5592a44a5a2.camel@intel.com>
References: <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
 <aLqsC87Ol_zCXOkN@intel.com>
 <48e0a14d67ba84d64f6589bbdd0090e86be4fd4f@intel.com>
 <7cs3dirtgrypn7xjzmv7rxmkgbrtfxxjmtth576kfwerlydcgx@6zelewdmaukb>
 <fdcc32f2-c36b-439f-8d15-14b3fb7bd5dc@lankhorst.se>
 <aL8D_dRE5nslOAUi@intel.com>
 <86c6dd41fba3bc78b82a0f0343c7be770126a4e4@intel.com>
 <aMm4UfqnlZ4RfMDm@intel.com>
 <0f9e52f66a126ca0d446015539018e29219d4b13@intel.com>
 <179b10ce04e0e0d5f08fd8e2eaeae4cf689ba2ea@intel.com>
 <aO00lQvvlyKUX9_N@intel.com>
In-Reply-To: <aO00lQvvlyKUX9_N@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5789:EE_
x-ms-office365-filtering-correlation-id: 4a74a9f8-57c1-474b-2521-08de0adceb09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?UjFYVnk5ZjhSOXFLQS80N3VsbG9NUXI4eXhpMWMraDFwSm9TTncvTjZjRkd4?=
 =?utf-8?B?NmEwcGtHeSt1K0xCUURZQXpweTExZU5LNGV0SUFYVnFqSVQraDhVVGRjbmor?=
 =?utf-8?B?OFhEWTFTcENIWUpTQy9BUVBCQ0N0RlhrMlc5TzZXSW5YZWxaMFNBeWtxMm1I?=
 =?utf-8?B?aFpTUTJSSmw3bksrSkRFVkxvOFQyMHVYMGtmdlhXS1pQSndsaU9WeDhUUVBx?=
 =?utf-8?B?b0xpbWExa2F1eTF0ek40WWlpOHU5TzJvVmFsR2JOVE9aTTlEeXE3WHBzTDJw?=
 =?utf-8?B?UCs4SXh1RXI2RGdyMzFJbzZLWURGY0RGT2N2MldrRk1hSHo1S3BXdFgvY2xT?=
 =?utf-8?B?cVV4TmRDbDFOUzgvS2RTRHpWaGFLVk5uOWc5VE9nT3dGYnJ2cDF1aDN4YzJV?=
 =?utf-8?B?TitOZE95RE5qbE55emd4aVpOaVIzTmZlU1Rub2drQTEyQ3ZuaTJLeWxjNGhO?=
 =?utf-8?B?SUF5M2ErOUVsT0xXQ2NSZHB3LzJDNkpyRnZzNWRpWWtlSjBhN3NTNCt3Tzhs?=
 =?utf-8?B?L2NNWk9Bb1lONFB5L2dZQXFxaFZzZlRMdXJ1M0ZYWUNDVkM3WEZzV3VvN0oz?=
 =?utf-8?B?c1FaNmlNNVZmejlqZ0JIT1FwNUc3dmQ5Wk5FdGxiR2FYWUI0cmFTc1JWZWZI?=
 =?utf-8?B?cFNpRFlkRXZmTEhvZCs3dGVieVZKTVZINkIwNTBLR0dMaUR2UkxFQTJNa25S?=
 =?utf-8?B?a3NwSHgvcEh5N1czYnFydjJUOFpLdC9ORVRVQ3hpS2ZjZ1RRRnVKN203czlG?=
 =?utf-8?B?RVhnZTM2Vzl1RWR1UzBDUkRHWnBKd0daWmVQQTFPallaTnM4UUdsOEJrdzRT?=
 =?utf-8?B?SFRFNjZjU0ZrczVnd3RBaFhkZk1hcHEzVGN3a1JaZ1d4OTAxaUlCNHhuc1ky?=
 =?utf-8?B?SW9aTmFVbXZpd3lFLzBUR3YrSWtsRTZYN2lONXBBMWdlS0J2eVh5WGtFUUUr?=
 =?utf-8?B?L2lOU1pSQ3djM1d3ckR4UWkxSzlKdnJZZHhRdnJ2QnBoOUdhTE8xcTlyeExy?=
 =?utf-8?B?U3FYTFNMcUxQZllqYktpVWRxMHNSem9qaERnTi9Fekh2SWl2TjVoUGd0UDJv?=
 =?utf-8?B?R0NFU2dKVzVvYmxBd1l5MExYd0s5ZitYam04S0phUlFBalNWeHFHRG8yK0F3?=
 =?utf-8?B?cGxlNXJvVm1MU1VaUVZ6czM0a05BTUxKZGZOSlZJQmlMTTJsSG80UU5SbEhX?=
 =?utf-8?B?anhwV0JlektSK3lzb3NnQ1pZaUVoYjArV09sc282UHpXK3RSaEVjby9FcGg3?=
 =?utf-8?B?MzBmSVFIL2pTWkNrdExYM2U2QWs2U0NraDhJWWkzVzlaM0dXNGRIYmRCY2VJ?=
 =?utf-8?B?ZGUzRWVqWFZqN1RQZ0RMa3NRWDVQbVRwTFJrNjVRekZqVTRUUlE2Ly82RExK?=
 =?utf-8?B?Wm1ZUzZ2Vk8vazZERk5Oaks4Z2RVZXJyN1JZSjZhZVZiSDN4NVZkRUgxUXJ3?=
 =?utf-8?B?Qmgrc3ZhbStrd0NzUGlpWVF0VjhaZjNQZTJDWjJoWXJFZzgwRlFTbEhnNHJT?=
 =?utf-8?B?OXJWbFNnNXgwdlRPWDBUeGNTYmFWTkhGZW43MXBDZ2tvUTFwU2pDblZ4TGJK?=
 =?utf-8?B?ZGczMXBJS0Z3TVZqVGJyY3E3aHVUdWFkNVUrL0RrSEc1WmszdXc1R1BKWjl4?=
 =?utf-8?B?bWxDUXVRZ0NhRHJrUS9VR2RtNWlHNHU2QXhNNEJWSVFwR2J4RU10K0F3aSsw?=
 =?utf-8?B?cVdycDlveEFtWlM1NTU5OHpRWHROS21CWENadVhZdkFQS3dZL2U3Vld0dGta?=
 =?utf-8?B?a3lBaEg5K05CMUVMUXNEUmpCU1pMYXVxcERZWWU5R25rKzVJaytMRUxtWmpy?=
 =?utf-8?B?SEIrc2JEZzdZTW1MdU5MUzRxd3FLYkNNUjdPYXphc1hyL1hkbTRKOGp6RXE2?=
 =?utf-8?B?MFZkclhzZWtlSVA4a2x0S2FNb0pwd3EyWnNOMFhpQjJSSWpoL01TTlUzbnR1?=
 =?utf-8?B?ekMxUjZEejRPd2ljTFJjYnlmTU45bXVUVXNNWU52bzhwYVAxNnVGdjRsaDBG?=
 =?utf-8?B?UG1scEN6TGU3SDcvSHlpSWJjSXRkZHdYMUxXbnlLOUJ5VHBRcU5aSnpSMDAz?=
 =?utf-8?Q?Qo0tw8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UCtYM3pTajh5K0ppd05ESkN1eUY1eHVNME5JcStlU0I2aklsOXdoM1QyMmd2?=
 =?utf-8?B?TVp3UGNROW1LVVUwYk95d1Avc2E4Z0hEQ2FCeDhjUjlUNUFvRUhnSUo4bGJY?=
 =?utf-8?B?R0lCV3gvNE9MekZGd2Q4RUVUWDdMMkIvQ085TW1uamlJa1dTaXNGdVhyeTVH?=
 =?utf-8?B?ZTBscG8zYVpYeVFlTVdmQ1grOGw4U0x4SzlhVElZdGMvRi9CSHNTL1hWR1lE?=
 =?utf-8?B?OUs3SGlYMjZ0ZHZLckJGaGFhdFl6QUwzOHdlVDR4ZEVDV2p3SGs2T3o1eC9Y?=
 =?utf-8?B?RFE4Q21BTlE5aVFKZC81eVQrSllOSVZiSHJFTHRtUFlCTXpIUkdEQ3B4Z0tC?=
 =?utf-8?B?cmN1SFpEK2ZOQnE1NkM0dHlzMy9lSmppZlE4TnhzSUphcmRhbWlkdEE1UFZ6?=
 =?utf-8?B?dGFRc1drWDMzdVpkSENDa3lpNFJVR291RW5YQUpkL3cxa3RkMkFOMktpRmhW?=
 =?utf-8?B?V3ZIUE1vYkcyUWVaNjlPRU9ZSTh4ayszZ0VINDFZQzEwdlUwemNKVDh0cVZt?=
 =?utf-8?B?dVduODB5eFJBUFRscm1uS0lUT0RkbVRaSGZ3MXdlU3lwZTNsWG5KQ3NOSmtG?=
 =?utf-8?B?SmZYZjdEUFBBcmNqRWJNQ0FGWnV5WkN1cENEMlE4azNNRU8zRlRGUlFLMk5M?=
 =?utf-8?B?eDg3eTd1dk8yMWM2OFlva1RtOVVIc3dTblM1ckNZaVpnTEtvemNMRkZlaVVN?=
 =?utf-8?B?K1NkWjRsVkVJL0JzUWdxZkZJaGJpcTdhbm9vZnZRUHNWMXl6MnNINlcwZjVK?=
 =?utf-8?B?VXlqVCthanh6amt5WnliR0FsU0E0RUhFTGZLenNzOHRQYkcrU2ZhaVRzNDNx?=
 =?utf-8?B?MmcxMUNaZHhnWEtkakltZkE0VXdpTkZYcDhlNzBtTEFvZmE0MWswa0ZwK0Ry?=
 =?utf-8?B?em1VV2pRbkRhdVdURmVoMmJxTmswNnFmOG5oaTJzOFdCaTh2c2V3ellKaEtN?=
 =?utf-8?B?RUVWTGRVYVY3czVvOVQ5cTVzd0ZwZTBvMm9HbEF1VEZLMzljcmppam9WQm9z?=
 =?utf-8?B?RkpZdDFRcnd5R2NnRVMxM0dPemtrU3JnV3RYMFZNNFdFS2NkbVBBT2gvVjdC?=
 =?utf-8?B?bmQyV3AzNndtcEFScjJDQVJQZWpyQjdiVWh1bVJqUlZIcC9kUnY3TE5UTGtK?=
 =?utf-8?B?UXV4UEY5cUgxd0Z4dkRmVGdTdnJudFk1Yk5rUGc3cmJmWjBSSjR0aEpydTRS?=
 =?utf-8?B?SUQzc2ZEc1pJRU9kMG93UTIxcE9sK3l3ckEwWnQxeWF6TDhWMGZoNzI3dnRT?=
 =?utf-8?B?Y1l6ZkFZMDhFb2VLcjJqbDJWOERYM0Q0Z1lUOXpyRUMrUXNYUzRVSFcyQUVQ?=
 =?utf-8?B?aVRjS2FoR3J3T21ER3pBaHB1TXBDM3cyMGFkWjhzTGJranZxZTZhR2FJcnh5?=
 =?utf-8?B?WnFQRC9pYkNzdzcrQjJUTGpBR0pYQXlHSndDS3pYN0JUcnpPNHN5d0dzZG52?=
 =?utf-8?B?QnRYYWI2Z0VKek5KTHZPcnZzYnlFWDRRcUpocGN3d09yU2NWWlRYU3A2RlZI?=
 =?utf-8?B?SDhiUmxZMzhmTCthQjZrNlY1MWhpYjNwTWlCbllYRHZBVS9qblhyZGJTb24r?=
 =?utf-8?B?eldTVy80UlVsZjB3SFR6ZUUzdzRzbFY3WlRUNGI1QUR1QWlGTU0reFk2Z2xo?=
 =?utf-8?B?U2J3RHIzVFdSYjZVK2tLd05SeE9wNDVrbkM1VTBEb3NIUW1nWjRkVWxJYjUx?=
 =?utf-8?B?aDcwZjN5Wkkyb3dOQmdxOWRYOG9xNGtNamRuSFI1anpHZjJiN0lqWHZUVUZS?=
 =?utf-8?B?bVZ2bjZnRDcvY3B5aGV0dGlPTnNUaGdOdkVIeFYydDREZDl4R3N3ZlZuVW5v?=
 =?utf-8?B?UmtEQUpubnNHczl3b3FSdCtVZXMwby9NN1dWc2FOWk5aSForZWVUalptM2JE?=
 =?utf-8?B?RnVEZDhOOXN0blVPWEIvQUR2dnFrSWVmYnZtcCtyRXFkMTZPMFZtT1JMVERO?=
 =?utf-8?B?a0c3QmZCZXNWOGFrOXFqRFJmNEQ5alNHVXFlOWpwcThLaUtnU3Q5aGp0S0hP?=
 =?utf-8?B?ZUREM3NZa3R6MTFFUkhNK29uaEwxVXEyZzR3bGY4L0ZIMUs3aWdRdnlZNDlk?=
 =?utf-8?B?TkFwRVloMEpLaFlmYWQ4V2J0N2ZLcCtaWk53ZExDV0Rja3lKMWlTWUhKWE5I?=
 =?utf-8?B?QmxPRGVVa3RKbGtIT0tKb3ZFZURtVjk5dHZWNlpSTlFxOUJNZkFSM2lUTktJ?=
 =?utf-8?B?eDd1dVcyYWZVcWlXeFRYMEIvSXBtRnhWbGgrNzFzV1ZlUU1wY09XaEd2dVJw?=
 =?utf-8?B?VGVZODlvbFE2Zms1cHFRUHdMU25BPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CA36165187FAB248AA14AA670AD067B8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a74a9f8-57c1-474b-2521-08de0adceb09
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2025 04:48:28.5201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gr+CHJdDbjSwyLkLL7L3eT0gMbZe5M07uvzxfgGrRA+xcj8VRNgudfbEaz2FZjoMjsgt0Rqp/5IY+hCVv94pmEthDvyheqx9aRLLxdGzrTI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5789
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

T24gTW9uLCAyMDI1LTEwLTEzIGF0IDIwOjE5ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgT2N0IDEzLCAyMDI1IGF0IDA0OjUyOjA0UE0gKzAzMDAsIEphbmkgTmlrdWxh
IHdyb3RlOg0KPiA+IE9uIFRodSwgMTggU2VwIDIwMjUsIEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gT24gVHVlLCAxNiBTZXAgMjAyNSwgVmlsbGUgU3ly
asOkbMOkDQo+ID4gPiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+
ID4gPiBGb3Igbm93IEknZCBiZSBoYXBweSBpZiBzb21lb25lIGp1c3QgbnVrZXMgdGhhdCBib2d1
cyBwYWdlDQo+ID4gPiA+IGFsaWduZW1udA0KPiA+ID4gPiBvZiB0aGUgc3RyaWRlIG9uIHhlLCBh
bGxvd2luZyBpOTE1IGFuZCB4ZSB0byB1c2UgdGhlIHNhbWUgY29kZQ0KPiA+ID4gPiBoZXJlLg0K
PiA+ID4gDQo+ID4gPiBJIGhvcGUganVzdCBbMV0gaXMgZW5vdWdoIGZvciB0aGlzLg0KPiA+ID4g
DQo+ID4gPiBbMV0NCj4gPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvN2Y0OTcyMTA0ZGU4
YjE3OWQ1NzI0YWU4Mzg5MmVlMjk0ZDNmM2ZkMy4xNzU4MTg0NzcxLmdpdC5qYW5pLm5pa3VsYUBp
bnRlbC5jb20NCj4gPiANCj4gPiBTbyB0aGF0IHJlZ3Jlc3NlZCBbMl0uIChCaXNlY3RlZCBpbnRl
cm5hbGx5LCB1bmZvcnR1bmF0ZWx5IG5vdA0KPiA+IHJlcG9ydGVkDQo+ID4gb24gdGhlIGdpdGxh
YiBpc3N1ZS4pIEFueSBpZGVhcywgYmVmb3JlIEkgZ28gb24gYW5kIHJlc3VycmVjdCB0aGlzDQo+
ID4gcGF0Y2gNCj4gPiBhZGRpbmcgZGlmZmVyZW50IHN0cmlkZXMgZm9yIGk5MTUgYW5kIHhlPw0K
PiANCj4gVGhhdCBiaXNlY3QgZG9lc24ndCBtYWtlIGFueSByZWFsIHNlbnNlIHRvIG1lIHVubGVz
cyB0aGVyZSdzIGFuDQo+IGV4aXN0aW5nDQo+IGJ1ZyBpbiB0aGUgeGUgY29kZSB3aGVyZSBpdCBm
YWlscyB0byBwaW4gKGFuZCBzb21laG93IHRoZSBzbWFsbGVyDQo+IHN0cmlkZQ0KPiBhbGlnbm1l
bnQgbWFrZXMgaXQgZmFpbCkgYnV0IGl0IHN0aWxsIHJlcG9ydHMgc3VjY2VzcyB0byB0aGUgY2Fs
bGVyLiANCg0KQ2hlY2tlZCBvdXQgZHJtLXRpcCBhdCA5YzgwZWJmZGQ4NDYwZTY5YjM1ZjUzODJm
M2U5M2EyYTMzYTY0ZTRmLiBVc2luZw0KdGhhdCBoYXNoICsgc2V0dXAgd2hlcmUgc2VlbiBlYXJs
aWVyIHRoZSBpc3N1ZSBpcyBlYXNpbHkgcmVwcm9kdWNpbmcuDQpSZXZlcnRlZCBwYXRjaGVzIGZy
b20gdGhlIHNldCB3aGljaCBKYW5pIGlzIHJlZmVycmluZy4gQWZ0ZXIgcmV2ZXJ0aW5nDQoiW1BB
VENIIHYyIDAxLzEwXSBkcm0veGUvZmJkZXY6IHVzZSB0aGUgc2FtZSA2NC1ieXRlIHN0cmlkZSBh
bGlnbm1lbnQNCmFzIGk5MTUiIGlzc3VlIGlzIG5vdCByZXByb2R1Y2luZyBhbnltb3JlLg0KDQpJ
IGNvdWxkbid0IHJlcHJvZHVjZSB0aGUgaXNzdWUgdXNpbmcgbGF0ZXN0IGRybS10aXAgYnV0IGl0
IGlzIGFueXdheXMNCnNwb3JhZGljLiBJdCBpcyBzZWVuIGluIG91ciBDSSB0ZXN0aW5nIHdpdGgg
cmVjZW50IGRybS10aXAgYXMgd2VsbC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KPiANCj4g
VW5mb3J0dW5hdGVseSB0aGF0IGNvZGUgaW4geGUgaXMgY29tcGxldGVseSBpbGxlZ2libGUgZHVl
IHRoZSBzY29wZWQNCj4gZ3VhcmQgbWVzcy4gU28gaXQncyBkYXJuIG5lYXIgaW1wb3NzaWJsZSB0
byBzZWUgd2l0aCBhIHZpc3VhbA0KPiBpbnNwZWN0aW9uDQo+IHdoZXJlIGl0IG1pZ2h0IHNpbGVu
dGx5IGZhaWwuIEkgdGhpbmsgc29tZW9uZSB3aWxsIG5lZWQgdG8gc3ByaW5rbGUNCj4gZGVidWdz
IGFsbCBvdmVyIHRoYXQgY29kZSB0byB0cmFjayB3aGF0IGlzIGhhcHBlbmluZyB0byB0aGUgcGlu
DQo+IGNvdW50Lg0KPiANCg0K

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DF68FF129
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885A710E9D8;
	Thu,  6 Jun 2024 15:49:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iLIl7wUL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D051210E9D8
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688967; x=1749224967;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=oCA1HCyjTUQqZJDiwZ8o/7GgYnqkufHsjZybK94AWcA=;
 b=iLIl7wULQL3rasQq+nNzpk/To12o65iPLw0QBfRNFu15T5NGQoV1rsha
 mc/zEpwpGsLBQlEQ4vgcxCD+D9NC4T6ZVesNm6RvwWmdDXKTfSwjcb2VG
 KRyv6GUX1Ij+njBlL3ASJwn7ulxitWF7/vAdOKBxmGaMndMlOXb0G3pG7
 SyUAshZByqksyiRRnlN7KW9Gwg5/KvlPtSYUuce1xGqd+xEtASsPLsJ1Y
 OpoNhHk32VhVAdBIhD5CgC38ieXDLwAoZOVk5IJA8Ao1IfNMLjNKcgcYM
 l7kYzXJqNKKRq7hhwzi7L+A7YqderoG92jPjoVDxCGXXNDwxnFJhMQunR g==;
X-CSE-ConnectionGUID: PN0WPGT0TnGCL5a71C6gsg==
X-CSE-MsgGUID: C468lxHvQ36EFMzy4c20Cg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="31864940"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="31864940"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:49:27 -0700
X-CSE-ConnectionGUID: Y6uEaHB2TLW/k8BcK0cwnw==
X-CSE-MsgGUID: Gy457aQ/QRqsZ7mdujufaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="75476070"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:49:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:49:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:49:26 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:49:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Af952xSZnQiqixl8yEIYpjSwfdGMZBI1/rP2Zi3fhaXJz6TU0u9OT0W+Yk3VSRgzLQFE7lGVshJfjCTncfcDufCM+vZFH9H6yfUyJgYZ8bAXpIOIgQQuvbP9eXt/cRt7Oy/+mQW6NAi6VqyPil8P3zX/Z7cSKVQ/yYPFPP5d5aCT+kI8NJEIUXG9S9dtQqoxboF8cczgRUMu7cpQQL/Cpk0LrPeiHuaV6HAWPkwoW81Jzc9mLRlWlSqH+ZGHGiVxCKU6rbCEZ1GUHaYpOuz5NQW43qmzgtvcXBviK4SAx0wPlz50NKf0U3gnk362yuZzlgOkai0D0Hs4XXKA0twk8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oCA1HCyjTUQqZJDiwZ8o/7GgYnqkufHsjZybK94AWcA=;
 b=BQo14BjXmuBHS2zyu3GRgWM/PBAFPs7LMlGdS4glCDr8lKykyv6k0UJcZvusPQ1P8FYYnnZMToQbCzz3kOaJXjBVWZNGPe4txX0fXRFfGxc6IriFpvBcggETC2YzpFm2JGugvTahH0Jb+VlqHxsZPCj65YS3es0qRJYPTNBfSny+x2ebSE0X5UnsKSgk9Hs0hSL2dUW+iA1Vp8ZeYoqaXzNwByYJpViPNw2C0LGkfbt5it6PHylj5FUwIfr7QD4xpcTztXS0e4p89HTq7ITThUwAdgJIg4TxgFuv/LO07+Y+S++g+Q3HyvFsJFsGMuNBMZvnqpuw2DFFNcAkN5hOew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4879.namprd11.prod.outlook.com (2603:10b6:a03:2da::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.27; Thu, 6 Jun 2024 15:49:23 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Thu, 6 Jun 2024
 15:49:23 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v6 07/26] drm/i915/alpm: Make alpm support checks
 non-static
Thread-Topic: [PATCH v6 07/26] drm/i915/alpm: Make alpm support checks
 non-static
Thread-Index: AQHatzLZxqC+9KA7xUG35l2udvkGJrG60coAgAASAAA=
Date: Thu, 6 Jun 2024 15:49:23 +0000
Message-ID: <78f61102fffff95e0c543902e29f5bc57b9f8635.camel@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-8-jouni.hogander@intel.com>
 <PH7PR11MB5981629B80AA7FA110BB5230F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981629B80AA7FA110BB5230F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4879:EE_
x-ms-office365-filtering-correlation-id: b4b166bc-b53c-49bc-a708-08dc86403c81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?NVJ3V0tXU0VqK0x4SzNJUkZDOW1pUmNmQ09ZYVRRbXUzZXpvKzIxZjliREV3?=
 =?utf-8?B?dkJPQUIvZEJPQ3JhMmtTMzUra1dQWlhTR2JZUy9vUjQ5d0VOK0JIbWRTVGJx?=
 =?utf-8?B?VGY4NEFmYjB3bkdEWHVEblAzRHNCUnBudnNvc29FMndDb1FpTnorTGJMUmRZ?=
 =?utf-8?B?bG9BSzJnKzZ0WSsvOWREYzIzT1dpOG0yVnFMM1NTWHNHSFJMRjlScDBJdW5i?=
 =?utf-8?B?MndNWkF0Q0dwa2xDdVdnem5xSkVnUENmZlRWRjhrV01JNkpud2N4a21DUTZG?=
 =?utf-8?B?MU5SL2dCU2dSMkJDVFVQMm9vL3FxcWFEa3JINmZ4eUdiVXVMT1F4cDZmNXpm?=
 =?utf-8?B?VlhFa2c3Wkl3ZkZ6UFdsbmZHU0JNL2NjNXlwYmZuT3ZyVStYV0pyK2pOSVVr?=
 =?utf-8?B?K0FrcXNBVlEzaS80ek1QNkpNVitYV1hYS3d1b3plOUVWK1JEcFFpcDcvVWgr?=
 =?utf-8?B?K0N5S1Rjd3llVDAzaXNtYXR1K0hJS25QZGFsMGtNK0FPeUd0U001QVZ5aFhs?=
 =?utf-8?B?Y3E1K1JtQnUvUXhkOVVyL0NFTHNLR0RwWjdXRkkwUkFYWFlUMS9OY2tWZ3BZ?=
 =?utf-8?B?WVp6N1BrdW11QW5SNTNQWUMrVktVVUcwRVFMRVJFZW1IVUpwOUhZTlBjZzdr?=
 =?utf-8?B?b2s5SXVPWDVSRzFBN25oQ1IrSzFPNkRMMVBMZFpDS0N6T0NIZUM2cFVNV2V1?=
 =?utf-8?B?UXhLRUI0TkNaSVBBKzdPV0hWQklSVHFTSGxYV3dZRzkwTWF2K0FFMHZQNEh2?=
 =?utf-8?B?cXUyWXZhcnJ3Y0RKb0tlTVJEZGFNY2RnTDlBcmZJZDNTejl5cEJSRnFqV0ZX?=
 =?utf-8?B?NUx4dFZ3dktwa0RJQys5WVRGdkIvN0UxQ2ZiVmxzek85ZXIybUFwRU5pVElq?=
 =?utf-8?B?S3hXVmVMZVhrRHBlYlZlNFhLNCtWWXFWZ1NlWHBVZ3dObVgvcytXR1RUd09y?=
 =?utf-8?B?T210dnR4RUhIeWR4WEdScGVMZG1pVWd6T1pyQ0U1NklrajIwazNmMU81VUhs?=
 =?utf-8?B?MEdabnJBYzhZZ3dBNVFLRnhHaldMRjFQVnBjQnZNL1VWeUZ5Ulc3ZVNxbFUr?=
 =?utf-8?B?YTFxVWtsUmMwTmY4QUg2YmdaZVp5ZzZLUG8vY3lkM05aYmRpNEZwMy9keXp5?=
 =?utf-8?B?V1NDRWZGRzE1ZnNoek54aU9jc2hOMTFRZlVqS3lqS3ptOUlvanJtRDVhTUlK?=
 =?utf-8?B?Qm55UGt5cEJEUDAzUnVmMytrdWdIR2pMVFlLWFRKZng1bStNZGVrV21hNm5s?=
 =?utf-8?B?azRsS0ttT2orRU1lVEIwS0R0cWtGenZ5UjY1VFVqYUlzZHVKMGppNWFlelFr?=
 =?utf-8?B?UjVkMGJyNThLSk5xdU05WGpnTUE3MXNOdVcva3YvQnhhSEJTYjZhNHFmQUR3?=
 =?utf-8?B?bmRiVTZrQUhySEF4NHVYc2NoUGdpbk9WQmJaTnNOR3dpTEpOSGY5b0JZeUdl?=
 =?utf-8?B?QUc5WThrTk4xdkhBTVJ6cllzY0dpK0tZL0NNOFpHUE5IdFFiU2V1RHIwWU1U?=
 =?utf-8?B?aExaRkRRb3FQSDFGZmgvcks3YktMUjA1eGVjMDNNNDVodWJXcFM2UmRjL1R1?=
 =?utf-8?B?eGhKQjNDQitwcDEwakRkcWtZRDFtbWZzaHlJUUJmdml4WWI5RDlMWmhDSzIz?=
 =?utf-8?B?WmMwS3M3c25rRzZEVEt4T001Zjh1R0lrSk9FaVd4VnpmYWNWSVhFckR5QXVV?=
 =?utf-8?B?cXJBTThQT29laG1jaUUrSFB5UEtvQlI5VVlSb211Y1ZOMGFTeXVvb3FCQmJW?=
 =?utf-8?B?SXdrK1dneEpoZkNSbFdDbEhRdHZiMzh2cUZiQ3BJam55TEMzRWFqVEtLZGVt?=
 =?utf-8?Q?FFMM+5aAh8r0u4dcs+f7sYcnpqQs/E7PtAzc4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L29pSXZoY01XSUFLSWg0ajRmQjE0d0VyNDd4aGlBaU9QazMyeTUrc2hiem9y?=
 =?utf-8?B?clBHYmFpMG0zcW5PMkJQV0ZFQldjVkdvdGFPNjBpWmY5M0htM0lGdzdJT0V1?=
 =?utf-8?B?RTJVS0tRRnVpOFJiNXlobmFoYXVPVS9HWWNOMVNzMGtQNUlIekZPamNRZE9O?=
 =?utf-8?B?YkNRSHRJZHJBUWtMZEg3L0ZlNEhaOERSVkpBYXM0eXRSaVVXOVIvTHUwcDVs?=
 =?utf-8?B?U04wTWpTT29YVUNCeWxBMUNiYlk0R0NwdVRsOW9ZL3daS0FQTFNmalUwNzhH?=
 =?utf-8?B?LzY4Vy9lVGttenVlc3JBWnl5TkdrUVZtZ2IwaWplSUJKWDNWZ0U4S1pibjlk?=
 =?utf-8?B?V3ZXaUdPNTJuSktaaHlmL2xxVmFGSFpTK3ZFblNZdGU1RnNvS0c5Vk9yNVEw?=
 =?utf-8?B?Zjd5ZzJpZExLcU40cGMyaVBJTHVBRkhRM2ttWVg1WDhmanF2Y1YzSGx5TGFk?=
 =?utf-8?B?OW93SW5UcnYwOTdKZ2dWNkJLYzVjTmNqeVBBbkVGNGhqWGM0cW5DY3l1aVhZ?=
 =?utf-8?B?RWRTRVlucHJLbGxwaU5Ga3UrSFpWckY2RGxkSUpHbnBrNkJ3U0pFSllISUt4?=
 =?utf-8?B?UTBNbmZYZytFMVl5TkhvZW45dk91NytZa0pURkxwRDhhajZYYjdMWHdTOW5U?=
 =?utf-8?B?Rm02S2hTYWZQUjNCNWtEUHJTS2NUVTdiOHBCanBvT3VFdVVBNVdtVzZlUlpB?=
 =?utf-8?B?bG95SG9QZ0RjS3RZNU1TeC85NVhJQ0k1cTNqNTBIL2xkYmlaSFdjZGVYc2pa?=
 =?utf-8?B?RnZIQU83WG5LS29RWkUwaTFQOVZyRlh3NnMxZm1saVB0dGpuM1A1aGdmYmJh?=
 =?utf-8?B?K0JFa091Mkxyc2JON1BxZ2RCcU1UNTF1dEFjRFRVVWdhemExRGlhaGVGN280?=
 =?utf-8?B?bFJySFIvTi9JeHd3cHlzY2owZVVJbzNrVk5LeWFQT1hPOVJFbDlHWGJLTzRk?=
 =?utf-8?B?eWVPNjh3dE4vR0ZrajJ0QVJVRExmTDI4QnExU1doamtjMUJrVitycWVpL0dL?=
 =?utf-8?B?MWM5M1ZyWERNQjFtWk1KazV4SzZBdmFRZE50d040alRqdVVrSktEelFBbjB3?=
 =?utf-8?B?SlpGSEJMcVV3WSs5MHBPb1Bwb2ZjcXd5WnZnQVBjZVJQdzN4QTFTVVJLSFMz?=
 =?utf-8?B?ZjJzQWt4SWNaWDB1TUlwdG5mZ2NqK1ZPejArNjdHcVdRZXZrVHcyTnpQUUhQ?=
 =?utf-8?B?OEwvOGhjdWZGVjZHVzJlZlAzVDBmdkgvTnRPMEhycnN2b3UyWGFqRkpGcUNQ?=
 =?utf-8?B?dGVNMG54U2JDTTNZT21hSXh6OXB4dUxOMkZyNUU1MHJPUFJEWm5TamdsM1A1?=
 =?utf-8?B?TlVMbTFqR0tzdEFocG1TM1I0RXZPTWNHcEErN2dPdTRTUmNRTFphZ1NXaHpj?=
 =?utf-8?B?Q3F6R1BFeExBMkJDck56VWlPYjJ1VmJ0ckhXSnVsQWRHUXNtai9VbWNwZHg1?=
 =?utf-8?B?Sm1iblcrdE1ZZ0J2SDhLR0ZSeHovRHBWMCt6c3cwNXBqbVg0VmNUbGhCaFN0?=
 =?utf-8?B?U05GMjY2UjlOOGR4czk3ZyttVGtKRWliWWt2eFR6WUVRU0pDR1NocWtFNW1j?=
 =?utf-8?B?VnhranZpZ3V5NndoMVpaOW5HL09kb3d5alFwdStYNUkzdFA3UjVxZ2FGMGcr?=
 =?utf-8?B?Q0RyeDFoeXY3QzJ1ay9ab01OSDVJTmhFd3hSNlRSdUlaWE8vckptYUpleWpo?=
 =?utf-8?B?NHRrZnZBM0pJVGxhVUN2WnVrMy9MNkFqMHRuY2hBUldBbFlaY2YvVWt0dnh1?=
 =?utf-8?B?a2hkajhGOFRYOG1FY3BReXdyNjV4VzBLQzBFbW1oNVNlTTBPN2dwQ0J0Vmp2?=
 =?utf-8?B?THlKTGlXaGU1MXJFMk15Q3Z6aEpkWnI0cElqR3l3c1JtS0pKOEJmOXBsZHBq?=
 =?utf-8?B?RWJPUS9JUVBQdVhKSWRIaDdyNmdGMm82WW41VnRkSHd2aXRIVncrTzN3S0Vj?=
 =?utf-8?B?UEpvQkI1VlpSYStYT0JIT24yNkR4OHR4ZnZxRWlkdWFSZ1l5QnRkditvaG1x?=
 =?utf-8?B?bUpaU1FORU5zOTlQaXptRnBFczNRRFNGNmdrYWlvTWlPYkFvMzIwalB1QjVG?=
 =?utf-8?B?NWR2YW0xcTJBTFprZjNveXpvUkNEbFJCNXVERjR5alFiZ2dMKzFoOEIvRWtv?=
 =?utf-8?B?QkQwZ0dDYisrZVcrTU1iMzVVa3NsMURKcnFuQUU0QjNWWUZJQmJxUUM3eTBK?=
 =?utf-8?B?eFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C381C9C3E4E49846A0CCD60C01D8D0FE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4b166bc-b53c-49bc-a708-08dc86403c81
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 15:49:23.0565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 75So9PSCUG3Hkbn0uyJSQbeaFLKb0SPaB78ScpFXxbI7GswbAhHRKe0SOb9AqKJiUzft1cqpUcIxwBetjPT4efTEx/afHfq1hv9dizlJIzA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4879
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

T24gVGh1LCAyMDI0LTA2LTA2IGF0IDE0OjQ0ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogV2VkbmVzZGF5
LCBKdW5lIDUsIDIwMjQgMzo1NiBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IEthaG9sYSwgTWlrYQ0KPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjYgMDcv
MjZdIGRybS9pOTE1L2FscG06IE1ha2UgYWxwbSBzdXBwb3J0IGNoZWNrcw0KPiA+IG5vbi0NCj4g
PiBzdGF0aWMNCj4gPiANCj4gPiBXZSB3YW50IHRvIHVzZSBpbnRlbF9hbHBtX2F1eF93YWtlX3N1
cHBvcnRlZCBhbmQNCj4gPiBpbnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vfc3VwcG9ydGVkIGluIGlu
dGVsX3Bzci5jLiBDb252ZXJ0IHRoZW0gYXMNCj4gPiBub24tDQo+ID4gc3RhdGljLg0KPiA+IA0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmMgfCA0ICsrLS0NCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uaCB8IDIgKysNCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hbHBtLmMNCj4gPiBpbmRleCAxOGMxYzU4MDM2NzAuLjkwMDcyZjZlM2EzMyAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gQEAg
LTExLDEyICsxMSwxMiBAQA0KPiA+IMKgI2luY2x1ZGUgImludGVsX2RwX2F1eC5oIg0KPiA+IMKg
I2luY2x1ZGUgImludGVsX3Bzcl9yZWdzLmgiDQo+ID4gDQo+ID4gLXN0YXRpYyBib29sIGludGVs
X2FscG1fYXV4X3dha2Vfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkN
Cj4gPiArYm9vbCBpbnRlbF9hbHBtX2F1eF93YWtlX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiA+IMKgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gaW50ZWxfZHAt
PmFscG1fZHBjZCAmIERQX0FMUE1fQ0FQO8KgIH0NCj4gPiANCj4gPiAtc3RhdGljIGJvb2wgaW50
ZWxfYWxwbV9hdXhfbGVzc193YWtlX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50
ZWxfZHApDQo+ID4gK2Jvb2wgaW50ZWxfYWxwbV9hdXhfbGVzc193YWtlX3N1cHBvcnRlZChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1
cm4gaW50ZWxfZHAtPmFscG1fZHBjZCAmIERQX0FMUE1fQVVYX0xFU1NfQ0FQO8KgIH0gZGlmZg0K
PiA+IC0tZ2l0DQo+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
aA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gPiBp
bmRleCBjODJlY2M3YjQwMDEuLmQ0ZmI2MDM5M2M5MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gQEAgLTIyLDQgKzIyLDYgQEAgdm9p
ZCBpbnRlbF9hbHBtX2xvYmZfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+ID4gaW50ZWxfZHANCj4g
PiAqaW50ZWxfZHAswqAgdm9pZCBpbnRlbF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUp
O8KgIHZvaWQNCj4gPiBpbnRlbF9hbHBtX2xvYmZfZGVidWdmc19hZGQoc3RydWN0IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yKTsNCj4gPiArYm9vbCBpbnRlbF9hbHBtX2F1eF93YWtlX3N1cHBv
cnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiBib29sDQo+ID4gK2ludGVsX2Fs
cG1fYXV4X2xlc3Nfd2FrZV9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+
IA0KPiBUaGUgdXNhZ2UgaXMgaW1wbGVtZW50ZWQgaW4gcGF0Y2ggOCwgcGF0Y2ggNyBhbmQgOCBj
YW4gYmUgc3F1YXNoZWQNCj4gdG9nZXRoZXIuDQoNCkknbSBmaW5lIHNxdWFzaGluZyB0aGVzZS4g
SnVzdCB0aG91Z2h0IHNwbGl0dGluZyBtYWRlIHNlbnNlIGFzIHRoZXkgYXJlDQp0b3VjaGluZyBk
aWZmZXJlbnQgc291cmNlIGZpbGVzLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+
IFJlZ2FyZHMsDQo+IEFuaW1lc2gNCj4gDQo+ID4gwqAjZW5kaWYNCj4gPiAtLQ0KPiA+IDIuMzQu
MQ0KPiANCg0K

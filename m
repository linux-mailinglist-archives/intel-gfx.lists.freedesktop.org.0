Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0819B6166
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C839110E2B3;
	Wed, 30 Oct 2024 11:23:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n87gpnxX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0779110E2BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730287432; x=1761823432;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8q8e9lU894tBmVSNTwF6iL5YsCGTFdbNbr8nzP53Cyg=;
 b=n87gpnxXUF3n3fanW04uJk5czIk0PISX6QjIkPYtjM6hPmjOABaWeAB5
 p1kRL24oS/7J8kFjbVlHgvAUM+TtqzgDFXQtdZSwHk4saqFcke9VHwGf/
 Dh6V2JmVm+9ZmLD6zMyqU/4rKIzgO94KkM1IZVCr5+FqS3qyps8/UygZN
 otsxxn0aFbJ++xb0lWmrqb1dYgpQQs2ZpfWR1GnUyfIjez1cSq3FYAyaY
 /Kr3fRHnqNpUTYRktRrY8OoB+HWLdulejVIDd5ndHizAsUbPZq8OSYz/5
 cQjI+nZ7+nG1Zg7W8/8aFZcxmO5L3JinFEQvxvrINBf6oH9DL30eK9NQE Q==;
X-CSE-ConnectionGUID: rudgK2gMTliLDa0mwJynIQ==
X-CSE-MsgGUID: VI65F+mYSLWOLnnkSAnNWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="40588651"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="40588651"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:23:52 -0700
X-CSE-ConnectionGUID: afSbOxUgTzqFNFewynbW5Q==
X-CSE-MsgGUID: a2IRPQtaTvGidYUtAQWRrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82195480"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2024 04:23:51 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 30 Oct 2024 04:23:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 30 Oct 2024 04:23:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 30 Oct 2024 04:23:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gi6voDGxeJQNNoIl58PPKxH6zfHiKCrhmmYgnirqC80/e3xJaMRzaMo6Zpd7SlKGuoqMCozZTfpyqr5v5f4Z7mcUf134SvfmpcBDcJM3RY9hXc1ldpry2HOP1OU5FGtn3Kg8QXXCTTy1F9JCu3J/+6p5wdJKVlli2QAoRYVMN+Lh508GNp5lLH21YcckhWV1J5vvf8GezV4sxlyhIFSU9TgOP3qTlr6x5CVCHLGN+wDQda62TP/D4Sed7NJkyWw5gf94Y7OiAPobjFJVcIBvZ77Gmba56BdDZRHnYB9Yp6lNsMWnGC8yRMxYB2+XhY1IKJa1O2QmcAzgPLrjHQzKcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8q8e9lU894tBmVSNTwF6iL5YsCGTFdbNbr8nzP53Cyg=;
 b=bIMPIvdJJ2IC7c5KBE4vHRGYMmkvWLHTIoqKN3715MB/zutx3OMAgVrDC9iU/9BVW6itbZG3+KzI8qZ2ZPeI+V44SzrGIPztw7Y8Q6mOuL05oGczBGipRjMpMcmeUTZfg91IdydvRY2Wj1HdU/QeQ4B+FdtpECLR7k7ZehymVDbc2om6e19jCIx7myfgn4WBWpb1ujCTQ6XliuwMw7x8bthrE0VOBI2UMilM/CMjz2aUPLkskM9NxL+BNGTzzVNlY0mzGhblq8yI8Lc39e6qljucfKnYMQ5cPt46WOJOfpN/VFymMbIgJE220NJI1avw7o6a3rHeviNNBdRlzPJClg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Wed, 30 Oct
 2024 11:23:21 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 11:23:21 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Jadav, Raag"
 <raag.jadav@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Topic: [PATCH v3] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Index: AQHbKgwtW6wMhESk7kaNZu8jEmXHgbKd8uuAgAAGBICAAS7w4A==
Date: Wed, 30 Oct 2024 11:23:20 +0000
Message-ID: <MW4PR11MB70541AAC07B03C37A48A16BEEF542@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241029140037.164687-1-mika.kahola@intel.com>
 <ZyETwUjD2XZoFFXs@black.fi.intel.com>
 <173022228547.1957.2038779134403986759@gjsousa-mobl2>
In-Reply-To: <173022228547.1957.2038779134403986759@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB7408:EE_
x-ms-office365-filtering-correlation-id: 560c5f7f-70cf-411b-7890-08dcf8d542ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ODRpdlJDNmVGa2JlOHRJc2wxOEdXbVY4b1RaS0crbm43RUFsUlhWQ2pkY1Zs?=
 =?utf-8?B?TVNoNGZGTVZLMitHUWc2eDlyckRlUXJBMkx5R3R0VGx4dFVxVU5pb3QwU0FY?=
 =?utf-8?B?TUV1bk1xSFNmOGlicTd5cGxaSTVGcVNxZnErN3ErQmQveFIyaWRhV1o4UFUy?=
 =?utf-8?B?azVKSE5iamtud3ljYXVaRi9mdWF4bDNoOTRJSnVrNnhVUUJFY0JJSDhZTlBF?=
 =?utf-8?B?YW5Rbm5iSjRjeUNQM2xFWmNnSFZqT0NvNTBpOFY2eVpqbnZFejVjczhSaTFX?=
 =?utf-8?B?VE9rVFh1QW4rSlJITXI0bkFST1lNSWh6Nmk2QllVbldGaUtIbGN1cjk5RmFB?=
 =?utf-8?B?S1V6R2c3eHQwSGRadG44TFRxMFR5SVEzdXEzcHJRcDAxTmt5bEo3a0xvWkND?=
 =?utf-8?B?aHQ5OVo0NUlSaU50VXp6YWhUbDg2K0poaTdzdDBEOG16ajF2STVFUGRoajkz?=
 =?utf-8?B?MnBpSkVVMjRkZWY4SXY5MXIzWjNJU0xHYWNZUnFrdzYwWk9zUXgvQjVCVkR5?=
 =?utf-8?B?OU9GM2lrLzFPSnRYd1lkT24vTW9IMTZ0NElvVFBqM1ZibThmdExpS0tza2Zm?=
 =?utf-8?B?Qi9HK1E5cHI1U3cwVlIxZVJjRjcxRWR0cFhvK3gySGRLeVRrb21nT3JZTGRS?=
 =?utf-8?B?SVE1ZjVycm9vQUJXV29OV01BVWE4TU1ySkpYOWpPMXdoc1JReTlqUjNrbTlS?=
 =?utf-8?B?UVRSOFI5NjBvN0Nya2FEWS9zU0RjUzd5MSs0cHdUSFFtL0NqOHZwY1FYYWtx?=
 =?utf-8?B?Z2hKVkJSRVB1VHM1UGVXSWorMy9hN0N2VENwRUdqZytpT0V5WjQ5TmFQS3or?=
 =?utf-8?B?dHJvRDBlcmZXak5GK3htcWJZQWRCZmovK1ZRd3VId1d3Z3o0dHQrN2sxMVcz?=
 =?utf-8?B?bHlIR0xNZVV6cU51bFo5T1NOQkNkb0xDRE5MRUNvd3A3Nm1DV0RsNHdYcUVR?=
 =?utf-8?B?Q3hCU3ZhOGRMWHRjQnBUcnlQMTN4YXhadWROSWhTYks3ams5WHVhOWhJbUN0?=
 =?utf-8?B?QVg5eU9wOXRidUFoVEQrU1V1Vmt1TXBNcDFZZU9ENEdtdjBuVjhkWS9EL0xh?=
 =?utf-8?B?ZXVObW8vSlJJUEl5N1hjZHNHYWVHNTd5M0taSVVJK0lOSVZpL0xLWjJ5a0hT?=
 =?utf-8?B?QnFyZVZibkcybHhvNkRzWEtqZExud3lTeVFzbWQySC9UcjljRHE1RGZleGor?=
 =?utf-8?B?eERzQ1l2d0tnOVdEVnBXa0NkSGpBZk9KeGFGb2pEWDVNSWZFNmFoNU9hWFJs?=
 =?utf-8?B?QVAxSDB5QVpUcmQrTWNoWXNUakplbzFHNmprUnc2aDdpbXg5OWdRNndad01a?=
 =?utf-8?B?dUNvT0lNU2JJQW5aM3pObkw2c2hCMS9iRy93SFgvUVVHaW03UlpTV2FrcGRy?=
 =?utf-8?B?NFpWR2NCaVhrQm5UeUoveU9NOCtFZlBIdC9MM2h2WFQxYXY5RzM0em1FelZI?=
 =?utf-8?B?NXRmc25ndW1XMDdpTGRRa1JzTHdoZUFESWt3ZmZRWGRPSk4wNFBrN2JCVVk5?=
 =?utf-8?B?TkNvTURFa0Vsc013bVdHWitlUnlIb0lKKzVuUXY3cklNMjVRcTIzbHNOU20x?=
 =?utf-8?B?bkZNQmhteUFGbXFMdXl4ZzE2K0FndU9pcm01THJVUVlFSkxNOXpyd05yWE0x?=
 =?utf-8?B?ZkFOTnBNUzNQcUw5dUdVR0xkclk5ME1jR3pKTDFuQStEYk53UWI3TTVROXdH?=
 =?utf-8?B?Smp5K1NBS0g3V0NZSDA1T2J1U2dGcm4wa0FZN1k1c0V4NnAzanF0Tm0wZFEx?=
 =?utf-8?B?VEFRN09tdWdDa3h6dnlkZzlCbmV3T09CSU9hOUJ1ejNEcVJpcDJNTHRkM3pa?=
 =?utf-8?Q?tODaGUVcZsN4jPxQv3NuripzHqnA/ZTlfSflE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YURaN2tJbFFaY3lyM2pkZnVORllFK2NZQkdrT3JjM3FmQjM5N1kxV2Z0U2pS?=
 =?utf-8?B?NlV6VkFTei9RQVJQSHQ1UDF3MlNhYm42L09kTXFLeUFLcElJYTl3d1M4SVZ0?=
 =?utf-8?B?SFppZWZTbGdqM3BSeE5GMVJ6MUt6a0RYaDhiYmlXQW1obkU4eWd3SzFaOFlK?=
 =?utf-8?B?eGxUZmVFZ3pKMHpIY28zdEVsM29GL1R4UWNWMHhyVnA0NFhpNWpSZkRtK29v?=
 =?utf-8?B?dDVoYjc0Q0JCTUdtNUJjZTBFNXJxSDliRkFxZEl2SXRJSmhxV3BSRTlmcFJn?=
 =?utf-8?B?V0hEa2NkUDAzUXJncFptSklsZXdMMWdkdUNxUXNDNE5LWC9qdDRzNE1QR3Yr?=
 =?utf-8?B?ZEpHNmVKdXdiT3VCbm5hL0txYldlRXUrMG9LZjVCdWhKeEgrT0UwNHJFKzBU?=
 =?utf-8?B?TDRoOExpY1R0cEVtQk5mY3R2UzBCYVN5R2duMWVLYTJTcmFGbUNPcUVnYjI5?=
 =?utf-8?B?NDA4STRoQ0pnREQzQndVbVdrd0tTbW9COUV0VTAyL1FzRUlVMDN2ZmRDeXBR?=
 =?utf-8?B?bGwyOUhoZ1djZ2NuajFPa0xRbEpFTUV0YWtTVDlWdW1IOHhpYTZXU2lCNGRY?=
 =?utf-8?B?UUV2MjRUaWRoN2Y0TFFpcGdQQ0FtZXBpeVRPenRHYURrN2NoTDRFcFBudUZ3?=
 =?utf-8?B?aUh1M0xQSG9NZGV2RXAwWU4yMHZrQTB6TGNUOUhSNnBqT2pzck93dlAxSGVV?=
 =?utf-8?B?ZXJ1MDFPcEdIRzdnTHRIbjlZVytlekpzRE03UndOV0I3MmVxR202U0Y0ZWdQ?=
 =?utf-8?B?bFpKK1BPbmZpNWV4WVMxRFAySERYNlFwWGhaczF5dklwM3kxamN1Yy8rekVn?=
 =?utf-8?B?ZGtzV09pVGZ4RVdzVGtxKzhSRVptZUF5bWk4VjlYOTZnMTN5eXQvVUVQVDIz?=
 =?utf-8?B?b0JZYWwvbWJvZTUyUXI5OGV2a3BheFlUOG9tZ3JUbkppSGNJNVBYN0VtZmc2?=
 =?utf-8?B?S0drSVMwMGhCQjJUbmozNWlvcTlzWUxjcEVYTTRmdllPc21DU2UwaVVWU3Zn?=
 =?utf-8?B?N1p6bm1qUmF3R2FWQ2Q0Ly9BTmRRUXh1cEZyeENLa0tXd1lYZVJzZ0g1ZVY5?=
 =?utf-8?B?d2Fna0VsV0t4UnNIQ2Q5MjYxLzdTKzZJMUdCZFh0N2N4NjRPS1RYYnJsbWxt?=
 =?utf-8?B?eWcyQnUyb0w5bFdDMklEd3lVZ2dBMEVXeXBXR003NDM5aW00OGJZTDFjK3J6?=
 =?utf-8?B?WjJiTldVM3NSQUY0TlRCczJYT21kdTNraUEzR1FOQ0RtWW1Sc3FBV0UzcGNK?=
 =?utf-8?B?TVVLVEZTdk9Yczlza3NSSnAvZEZHaURGRDZLbXljaklsWTlYcHdORlhCelFw?=
 =?utf-8?B?R1pQaUZaYXVpUFBuSnFUNzUwcE1LY3lYM0NOcHl6bjAvTWxKMFk4ZDJZdEpj?=
 =?utf-8?B?bFRSVTNlTyt3dEdCSDFuQUk5bUxEa2t1TkpROVY1aHRpS045NzY0bkxDMTJI?=
 =?utf-8?B?NS9yeUswcW82OE4vZ3FHdzhBblNCdzZTR2tiRlk0L3BJTVZGekt4SG1mQk5h?=
 =?utf-8?B?Uzc2QU4zVFFjZytwckRFWDlvVGN6Sm51OEJWSDNtdjMrR0hSZldUS1RBMkM5?=
 =?utf-8?B?bTI0YjNBdFJxU2loTUMzcHNnd1BXdWJ4RFFMMmt4aTJuQ0pCY1lUZWtVazlm?=
 =?utf-8?B?T2FZZ1piNml6Y3g4VG5Vd2RhT05yWjd3amVQVEFENEN2Q2dsKzhMS3RnMXha?=
 =?utf-8?B?V0FUV0NEaWVmNDI1ekh4Q1VQM0s1OHRVdFZDT2p3bGVhNEpjRU1uZU5vQUx3?=
 =?utf-8?B?U3dUcGJqVFp3dm4wTlpQZVNaZ2xrcjJFUlNzZ3JydXNNNkJVV21jbnZHYkk3?=
 =?utf-8?B?OUFWeVQycWdRdE1zdFFHU3JxRkdkWlpUWTd4aHQ2bkhiRnN5T2hFdWpZNXNV?=
 =?utf-8?B?OTI1ZDlES1pjcDNWZmlOa05zYW9CS2FqTE1RbVJGbmxwZ3VPRE1uTjBGL3p1?=
 =?utf-8?B?UzlwdHVCK1JJSFpyUVgwL3JWM3dQZUNRSURWVk8wVEVIbW5LdGV1Q2ZYeWZC?=
 =?utf-8?B?WGZwSndraHdxQnNqcDROMkkvYkdOZ1oyREJKaHhxSzl2ZVRtdUtNdmFlZUg4?=
 =?utf-8?B?UWFhOFNxdVpHMzBzVUxnMkxYczJVbXdFM05yZ1kxcVNKVHRpQWk3cWxyMU9o?=
 =?utf-8?Q?ODTF5B/ORfgBBzeOdNSwiuxYX?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 560c5f7f-70cf-411b-7890-08dcf8d542ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2024 11:23:20.9551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vcsf8Nk6Xz5qtwGvAdZRS+sAEVOLy/afLURFTfeFgBFAAmxBXc1Iab2d87dNDhHsSeyDnkrb+EWuLdDkagx2/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7408
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291c2EsIEd1c3Rhdm8g
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCAyOSBPY3RvYmVyIDIw
MjQgMTkuMTgNCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSmFk
YXYsIFJhYWcgPHJhYWcuamFkYXZAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYzXSBkcm0vaTkxNS94ZTNscGQ6
IFBvd2VyIHJlcXVlc3QgYXNzZXJ0aW5nL2RlYXNzZXJ0aW5nDQo+IA0KPiBRdW90aW5nIFJhYWcg
SmFkYXYgKDIwMjQtMTAtMjkgMTM6NTY6MzMtMDM6MDApDQo+ID5PbiBUdWUsIE9jdCAyOSwgMjAy
NCBhdCAwNDowMDozN1BNICswMjAwLCBNaWthIEthaG9sYSB3cm90ZToNCj4gPg0KPiA+Li4uDQo+
ID4NCj4gPj4gICAgIFVzZSBib29sZWFuIGVuYWJsZSBpbnN0ZWFkIG9mIGlmLWVsc2Ugc3RydWN0
dXJlIChHdXN0YXZvKQ0KPiA+DQo+ID5IbW0uLi4gTm90IHN1cmUgaWYgSSdtIHJlYWRpbmcgaXQg
Y29ycmVjdGx5LCBtYXliZSBuZWVkIHRvIHJldmlzaXQgdjIuDQo+IA0KPiBZZWFoLCB0aGlzIHdh
cyBSYWFnJ3Mgc3VnZ2VzdGlvbi4NCg0KUmlnaHQuIFNvcnJ5IEkgd2FzIHdyaXRpbmcgY29tbWl0
IG1lc3NhZ2Ugb24gdG9wIG9mIG15IGhlYWQuIEkgbWF5IGhhdmUgcmVtZW1iZXJlZCB0aGVzZSBz
dWdnZXN0aW9ucyBpbmNvcnJlY3RseS4gSSB3aWxsIGZpeCB0aGlzLg0KDQogVGhhbmtzIQ0KDQo+
IA0KPiAtLQ0KPiBHdXN0YXZvIFNvdXNhDQo+IA0KPiA+DQo+ID5SYWFnDQo=

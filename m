Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 125C0D23595
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 10:06:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90F010E709;
	Thu, 15 Jan 2026 09:06:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ARTTvaHK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F53C10E709;
 Thu, 15 Jan 2026 09:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768467996; x=1800003996;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=qflCNpjCK5rBPiXqeQq5OjCaW1z2Qy7l7f7w+TlHwfk=;
 b=ARTTvaHKKYXPPerEpIs9PbKGclt12hUtRZRWYwKIgvmpxnZPWoe+i/C+
 s3Dtn0bSa9Z6VbZ1huSzEJv/iRJqHGF7HQ+L32l/z7GoWriV5ufp3B8rC
 4SdCRG1KU2m8aep8nCXGMf/QMS72520h7Ea5MuRJTVjH1nm7cAdOLO9Yk
 pQ4t0QY9883WI3h8H9sKN11FqwuLjShatS+oCUk6c0xgxD6Ww7Q1StQG2
 3+9/zG06nS6PTH6YBBMKCIGQq0IPD4tK5t0MMPK6y/llaHCOxXJko3Aia
 ZQNsKN6i19zlbzrCOrx2XYe88RWLSHmLdHEKZ/pqqsypamvxHy7ep2TOp Q==;
X-CSE-ConnectionGUID: q2RKYO9gRgi+nsA2d0D2rg==
X-CSE-MsgGUID: TJ2FQjWBRWyzLiZZiVSNGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="73613079"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="73613079"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 01:06:35 -0800
X-CSE-ConnectionGUID: 1P9DFyUFRByluicXsJQSrA==
X-CSE-MsgGUID: UwC7v3TCSuyaB0eTLm0HSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="205189038"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 01:06:35 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 01:06:34 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 01:06:34 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.13) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 01:06:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bsq2CL8Z23EehUihcliZx8PM79IwIvsUTtn2YZPDuEtZa41CF4QRdytxevlGuNY3dTxoLw3h4Wk0VTZPYQljt22rt7W1JkseYLU+8axaZ9e/BMoaSKd3EtKfJ6u2X7OKleRatZG9sDEyybNTX5ft77nhm1Kk6+YAifk7gXtHbPpEjoJjR4Ex8V5WjlcjZZqOICv+3WpL6HMa/s4dWDAgKy6jBt+jBcoP1U1pxP9GWQ+Ay8XxQDB8htgDJXkwu2iZ93IYOnVguIImLxOABb3i0G7X/UWDbfCnz1oxuwlFlmn+KBmOsMCRTP56pmhKUWS3PL7Ft7KdBlwcY9QGAY6l1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fcp/MZ1IcnAGJ6MUAGcbo0lzZAG4td1aFJYiVq6tnkw=;
 b=MwueOxqVEo4TqI8iwPnTnVdrIHyZQ2V+ZvPQ8YXqfyPcfqtLljLGmVXOjkJWcVheZ6Z7HIScTvvsSCpn7rBeKfMsxkOSb71aKLAIDNbwgIi2/+gspSedMywkDLPDDz5xJtm+1gmUs83hcnpbwKvieNBAAbuwrihhf3bI9lxds7/E8yN5tnVWRG+EQhqvOjPGFiE8Gwwy+ZlsyMYHajp1PA8Js0EG8pCjJf43yzYLmyc6dI9/Zjuf0XDjYQopSJBkyrkFrDitjZSVJ4zerTngcYLbMXUtnCc1MEw8728cNq9JOrOiCqv1W5DaL5lmUJrfWboI7lnAroreyzpjIIb6JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB8275.namprd11.prod.outlook.com (2603:10b6:510:1ae::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Thu, 15 Jan
 2026 09:06:32 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9499.005; Thu, 15 Jan 2026
 09:06:31 +0000
Date: Thu, 15 Jan 2026 09:06:22 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?Q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm=2Fi915?=
 =?utf-8?Q?=2Fselftests=3A_Kee?= =?utf-8?Q?p?= mock file open during
 unfaultable migrate with fill (rev8)
Message-ID: <rvokiekwxgblgwhi75cq7x3gqlf6syfj6556bdcobobcvjhagq@4f3p2igha5nd>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <6xc74s3mbmtliqxihtxbok32jobhc26vfm5mu6cod4ywov6utf@ujp3rmqcwmr3>
 <176841257136.155530.8763837985995942526@a3b018990fe9>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <176841257136.155530.8763837985995942526@a3b018990fe9>
X-ClientProxiedBy: LO4P123CA0113.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:192::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB8275:EE_
X-MS-Office365-Filtering-Correlation-Id: 815d0e37-a5ce-488a-3140-08de54155f98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dWkvY2JiSE1LOHNqQStBV0I1MzVJemwyVGZUYURzTUpZRDJ2WDg5aytWOHpF?=
 =?utf-8?B?cEVjNC9vRmpML0tHbHFpN0tpRGMvaEM2eGtEQmQ0M0xRd1hRZEp1cmRTQ2xj?=
 =?utf-8?B?UWRJVGtrWlFVL2hkVEJnMlVtaHBIOVl6OWlBcFNNd2l6TjNDOFJlNFlwa1F6?=
 =?utf-8?B?ZTlkRWhPZ0g3K2VjSHFNUGowd0VjRlRUTG5UWjA0UTRPMldHcWk3MUdHTnJu?=
 =?utf-8?B?bzNkVGY0cGNrSDFvYU1ET3VYaFlxejkvNE81QW1zYzMrYkw1TXNxOGxnMlJS?=
 =?utf-8?B?M2JzY2ZkMUNxUkhsNDVrM2d6QW1CVUthSG5kY3dURVliWFJUK3IzNEhpTzRK?=
 =?utf-8?B?RU1oVklzY3pPMTN0czB4bEJ6VGpDeWthOUpUemU2TW5na3I4eG9FVGkwYW14?=
 =?utf-8?B?WUNDeTdJZEMwZTZtTW9LKzNGY0FVenhvbm9NamhYamhLT1QrSVBDdCtrTXZu?=
 =?utf-8?B?Q2pOSDk2d2RlSGZ1Q1l1RkhMRkZVeGdER1djbC9yRHNSd0p0VFY2Zjl1NDAy?=
 =?utf-8?B?MjJ3MnUzRkpjL3pydGFGWkpwUEh2NXcvZW1QNWMyd3BTdlVlb3BjK1RHNFhG?=
 =?utf-8?B?VWFYSURpb2NvVERzS3MvaVdCMzRwNUloMHJzZW9BMnYrUmRkNk9BN1dsZkln?=
 =?utf-8?B?OUswTWhQWngwRVVteUdLOVJRNy9KbkVZTkd0SUptMTZuYjhVdVNtd25EWkxl?=
 =?utf-8?B?UXFwaGR3eXllbGcrRlBTVDVCdmxnM1lWS09aR0RTc1NiN2ZaUGJuV1AzcG50?=
 =?utf-8?B?V0N5R3BQVzFRWGNBZmFVN0MrMmtVNEJhOGJYaUtvYXVzRHBUUXcycTk4bGdZ?=
 =?utf-8?B?VXFyWXBJaGFkRzM4VmxyclNSRi9QNzY2Zk1QbVF5ZTlwZzZTZHFkZkFicU5n?=
 =?utf-8?B?RzBOS2NRSU9waUtuNjhNa3g5alZVam1Sa2FEbFNtVUhUcjNzc2twQmRDOFBW?=
 =?utf-8?B?RnJFTHVJOHN5VWdzeFhpYVhOQWhldnhMWmpTU1FZQ1pnajBQWFhsVnEvS3NF?=
 =?utf-8?B?bVYySDdpSFdDNmt5akJoSFo0TWVmejNOemdPOVhZWnZZeU0zM2ZKYVRqY0t4?=
 =?utf-8?B?cC9ma2pvVXluTDd5Nk1SL0dhM2trVUMyQ1MwVUV0dGE1bERYTjJQVjBVdkFj?=
 =?utf-8?B?c1Y5NytXbkZpa2QwMmd5SGFMLzFJaWNZcTFUY0p1ZGNsMTM4L0NkSzFXUkho?=
 =?utf-8?B?SjN4SzNuUlJQclg4Q21MVFNRVDkrcU10cmhKcC9tblN6eThvREVwZ3RwZXhW?=
 =?utf-8?B?TVZEazcyUWg4UGF3S2VTMUtQQ3pWSkx4MGk3SVI0amp4Qlp1Zk56Mm5oRUxP?=
 =?utf-8?B?MTRCeTNMN3grdXFSeHQ0UWlTcmhpN3l0WStKZE9NYzcvaFZ2RjVZYmRzc2l1?=
 =?utf-8?B?dlFCNEVaLzg3Uk9leUs3R0xwQXR4aXRGYXBtbjVIZUpnMUhXQzBzaVIrcE1C?=
 =?utf-8?B?am5jS3h3WVlpWkQ1U3JRdE1mZEtHZzVFU1MzMkpvKzlvUmowMGFGVFREYTFD?=
 =?utf-8?B?dHcwUjBDQTc5M3dXbmFuU1orSWphRldzbm9WazRaS29OdEh6ejFIVjNIVEho?=
 =?utf-8?B?Nmw3bVkyUVBhd0JSczZod25Udll0UlRmTXhhdzZkN0djOE53SFNCd3FCWEJk?=
 =?utf-8?B?S0x6T1I5U2hCSlcvYmkzRkxwZi9vQTdoZ1pGaTdwSWlwbkZPSHhYQnBWcnI4?=
 =?utf-8?B?Mm5GS0FRUHM5RWlMQXMzdWhybVM5U0ZnSENVb2ZKZExjY3E1ZUdzVVlyaUhU?=
 =?utf-8?B?VEpic1FnbG5mRnJzdkc3cmtzVGtXTzBtYzJSQTR3b1V4czNpVnpsckU0czhR?=
 =?utf-8?B?ZFBua2pKelVsb0VwZmJUS0FrZFJUbFpjNm9wa0M0ZzNSODhYUmcyWHliWXZ1?=
 =?utf-8?B?dFJRVFR5Mi9venV4ekpMUXU5Qmxla2VDeTZBNjhUeW51eVY1SmVrNWc1cW5W?=
 =?utf-8?B?WGtYclVHSytKOVB3MXdyNW95eC9OVnk3UnhGR3hKYzhQbXgxVEUrWWw5QWFq?=
 =?utf-8?B?cDU1T3NnMjZaTFdZbnBWZmlEWnY0K2JBWlM0TUF4R0w5bCt1U1pmZlBaaWZD?=
 =?utf-8?Q?jezmch?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(13003099007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHdiZkdkd3BXNVV4MC9XclEyTmlFZDVsUVhQQ0pReXlFZ0t2QmNSbHVFT1Nq?=
 =?utf-8?B?QzZnNUFTSDIrT1l1b05jUGk4ZTNqT3lKUmZEd3hRaitoMHlYOGF6bXdCTHFN?=
 =?utf-8?B?MXB1SGliblh2Q255dkFGSDVYbWpRSUk0LzhsWUJwYXZ1SlcvR3hlLzMrdWdX?=
 =?utf-8?B?b3R0T2lLN1VZR3VRK3VnS1NDam91Rk11SkViSVJtMGpkaDNocDUxNU9lUC8z?=
 =?utf-8?B?eGZQVnAxWUVHTmVsYlJHZXNnL2d2aGNDK1JSSkYvQlFCNmtqbldSQjN0b0JG?=
 =?utf-8?B?T2pzOEo5U1JnaDlWYXFWSmthQ0h5Mjg2b2VKbTdPZ24zbHhuWDYyR2ZkU2x2?=
 =?utf-8?B?aHNDekRwS1hGbVJLbnlyWTVHdHB0anFFdzlQeG00U1JaaEwxZkVueW5teDhJ?=
 =?utf-8?B?d2s5T3l5dksra01pek5KY2FiczlkWkdZQUd5RXUrMHZtKzEwVVZVUXVLbHpZ?=
 =?utf-8?B?dzJvcHoyc3pNV2JGcXBWaGFVOUphNmhzc0N4ditmcm15THJ4ZGNTYTdMQlcy?=
 =?utf-8?B?dDNuaWtpQ3pYdlZvWnNxUUZjVk9tZEFkNHl6ZFB1RDhMbWNFQlNXb0c3SGwr?=
 =?utf-8?B?U1BxVy8zVGVNMkxUTVUySjJsM0U3V2Nqamw1dXpsK3B1UDJPNnRTc1BjdnB3?=
 =?utf-8?B?WTMvZThJekcxRTFyMUV5MWIwTm1idmk1a2V3UVZtU1FDN2lxK3ZZTFFaeFFW?=
 =?utf-8?B?WmdtTDhMZ3BGQk03bE1EcmNTWEJodTk2Y0lmeFg0Y1owVWdFcXJvQ2pub3M2?=
 =?utf-8?B?M2NGUjZ5VVRFSm5QSmluSUxQTzlaNFFyUklFN2JEK1I4Z25KOVYySitHamNK?=
 =?utf-8?B?cGp0c1M0OGlseThoc3JFRzFlRDc5RmQxSkZadHdFdVk2RTJFTTF1VGpSYVQz?=
 =?utf-8?B?cmpVQUU4RzFNdUJUaHFxRnViOGRWa1FOdVdaOExuajdZWmZVOGZRa1ZXYTBK?=
 =?utf-8?B?MmQ3aEhoeUJLODBBMnM2dE5WZk5lUUFxS2U5UWpLRkdLRi9PK2lsc2UvMWtk?=
 =?utf-8?B?bUE1bmw1ZzBpUGNDcDIyNldBSXBzY01mV0tHa0lhWGhSN0hkb3piS0l2aTBr?=
 =?utf-8?B?ZlRRRks4OTMrMTBMR2hVcEhDUVVqS3NqL3FHenFOdEswNUlvWVdwL1ZLVzN0?=
 =?utf-8?B?c3JmdjFnK0tUeDRCaWNMWDhScGl4VndOcGlydW9rVmFiTmtlSGdsRjdIWmF0?=
 =?utf-8?B?dkp6UHlIa3pIUTJMWk9lMWJpbSswRVEzc1diNjM5Y0p0aEdmcmFjQnN2cjhP?=
 =?utf-8?B?MEhndFNRQzJHSlY5Rm40U0VFM3ZHMnBqdXNaZ0Fwa3crb1NaVGJjZklFMmxR?=
 =?utf-8?B?bXdTOFJKQzlwcVcrRnNKTHkrSlFXMVhVb3FjdStTY1JTaVBWTDRmUmFUaTF2?=
 =?utf-8?B?c1NLbFZrdCt5UzBnMGhRVll6TjRoRGY3UGRuQkEwWTBiVUM1OVVBSmV1dTRz?=
 =?utf-8?B?MTkyVHJkYkpaUWM2eGxlR1VOdXR2TWphMm5rYTdxZlRGV3VaYm9BMEhWY2tF?=
 =?utf-8?B?TDdCR2s4bklvZm11S28rSEU4ZWsyMnA3RVdpQU9XdmJWOU1yakRkZ2tsQXNC?=
 =?utf-8?B?Y1QyenppYmtnMmhJTFhONW1hUUM0Ukk4RXQzWEVURi9tNHFlM0hnVndlZS91?=
 =?utf-8?B?MkZGYWhuSDFkbW51YUlaYmZ4N0h2VjJnVkxWK2lFcWVHQTdhaTdIT2pESmRJ?=
 =?utf-8?B?YzRtQ2RvZm5QUS9qb3dNb2VudlN2WVRyMm5RTzJlV09JeStYeGZ4RFd5QWNM?=
 =?utf-8?B?TGRsUGNKTC8yYWpSdENFeUdmTWpGYit2a0VBcGhmVTFEL3Y3dGhxY2RhWUo0?=
 =?utf-8?B?OVIvazlTS2djVzlaLzhRZWZSbXAyS3R5UGpWUkREMVJLOGZrb01JTCsyTzFa?=
 =?utf-8?B?Y1N1UWhyOG5KTlRUSURhQ3c4elI2bDRldW9Wc3R6U1NoSnp4K2ozRml0d0I3?=
 =?utf-8?B?SnZ1RUdEUFdVdlZlZGNWMXJDc2FoZVV2TjNFbGdBdld2TmUzejVGS2psS3Jt?=
 =?utf-8?B?QXRtUkdRZU5ZVVZOajlTb1ZBSzhRS00rcWdhYjd2MkU2RkRKc3gzQ25HOW52?=
 =?utf-8?B?V1Bxd0s1dFE4aWptQTJzTklPdTNKVkxrWXpLcld0N3VZK1pSNnZhdHJUYlUx?=
 =?utf-8?B?VmYwUC9lWElUcURReFhRKzcwY0VnT0kyLzBTL2RDeW9zUFJ3Rjh6cnp1ZFk4?=
 =?utf-8?B?aHNuTG9SRkVMUEdzek51TzRld25HanRHdEFyVm9xUTlydUNVUVpqMlBBS050?=
 =?utf-8?B?MWFpcVNjajJJdUE5TmlibWJkZHhZSm9lSkxpTWJHU3RhekZBaE83bUVhL0Ir?=
 =?utf-8?B?TkZMV2dZNmpaOGRUSHVvZ2lZRkR1dUVvUi9HL2xMaUpETGNOSDNzbjJIN3Bo?=
 =?utf-8?Q?q/v1lCXaqU4XNT+4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 815d0e37-a5ce-488a-3140-08de54155f98
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 09:06:30.9336 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FKAFOiWahRQTlC28Gnx36tiKW/eu9xmcrB8zOHyVMhaYNj4ERpTXV0M/kTE+/P6xH4IYNinglkYcKQKwqXge8OPVvBbrnzBXXm9gbnIcek8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8275
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

This is a very sporadic and known issue that has been with us
for years, see:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8360
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12660
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12057
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14554
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14107

not related to the patch.

On 2026-01-14 at 17:42:51 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/selftests: Keep mock file open during unfaultable migrate with fill (rev8)
> URL   : https://patchwork.freedesktop.org/series/150033/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17820 -> Patchwork_150033v8
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_150033v8 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_150033v8, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v8/index.html
> 
> Participating hosts (43 -> 40)
> ------------------------------
> 
>   Missing    (3): bat-dg2-13 fi-snb-2520m bat-adls-6 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_150033v8:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_fence@basic-await:
>     - bat-arlh-3:         [PASS][1] -> [FAIL][2] +1 other test fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17820/bat-arlh-3/igt@gem_exec_fence@basic-await.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v8/bat-arlh-3/igt@gem_exec_fence@basic-await.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_150033v8 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-14:         [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17820/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v8/bat-dg2-14/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@mman:
>     - bat-atsm-1:         [DMESG-FAIL][5] ([i915#13929]) -> [PASS][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17820/bat-atsm-1/igt@i915_selftest@live@mman.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v8/bat-atsm-1/igt@i915_selftest@live@mman.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live:
>     - bat-atsm-1:         [DMESG-FAIL][7] ([i915#12061] / [i915#13929]) -> [DMESG-FAIL][8] ([i915#12061])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17820/bat-atsm-1/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v8/bat-atsm-1/igt@i915_selftest@live.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17820 -> Patchwork_150033v8
> 
>   CI-20190529: 20190529
>   CI_DRM_17820: e2eb4f51b4d1b0d3ad6624882ab9dde0e3e6f22f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8701: 8701
>   Patchwork_150033v8: e2eb4f51b4d1b0d3ad6624882ab9dde0e3e6f22f @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v8/index.html

-- 
Best Regards,
Krzysztof

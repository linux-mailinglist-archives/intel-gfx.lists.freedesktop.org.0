Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B90A7F775
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 10:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B5210E5CB;
	Tue,  8 Apr 2025 08:14:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nTl5yWTC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B79FE10E5C5;
 Tue,  8 Apr 2025 08:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744100057; x=1775636057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=8sUtCHI8CgPIt0y3dR2kUnFJSqDBporfhEXr8s1uxPI=;
 b=nTl5yWTCUiKqcTo8FfDe+VRTCTLF+mowcxpFDyspG9qdDAXCb7hCvv6Y
 sK1xstuLphnKxB9qrnTYef5/GR0hb0EcEI+bLyi1nW6MYI0KGt65Esnqs
 7s6sRD+8SiLq4l+P3AOaNxvVjBSK4YcSF1aFnalGg6WHF4de3H93lTBLa
 0DwxNlc1qirungou0Pfr9pGbklsrWHzz0kSYhb84GFlBe/WR9Gtd36a+d
 o3BTxrRs4ICmg2sQPddzbvMXPG4a9++n5HX6zT7B5zanlclbcT7lGPipK
 n2p+RZWaYMIzZJR3iTpIqIjAkCe1u2Advd1V6tEhLyEl/u7XzkE3J4Ekn A==;
X-CSE-ConnectionGUID: 27SE8QCsRuaP+YYFuy61fg==
X-CSE-MsgGUID: cTTcyxElQL+y82Puv+U52A==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56183228"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="56183228"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 01:14:15 -0700
X-CSE-ConnectionGUID: cfsjyF2IQOiopgRfoRTE0w==
X-CSE-MsgGUID: xT5uWKnzSPOKA3qoUf9TLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="165423567"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 01:14:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 01:14:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 01:14:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 01:14:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yf45TcwJXMU00NF5ZYsM5p7+4mhGr7jIOraNTdlShCs8a4vnbz33V/10YFGekB32he/7hXrB2cCJO+0fEeHz+FZrCN6AlXZGD5C6zoedaMGmmTuxXcV0Z+aZW5fQk6j28WCDfRyoH5Kv/TkFE6G9dES1+N7D2NlCzgrdxv1zatlmk/EPNs62BnvpByAm6Kvf5X6KK3GxwBEMzMQWdJYDqQ2inySIyddUEi5iR1xrGFeglX7s6QDhKUBr78D7ehk/6E30pSoYkW+DWyFizJlSCgVqMKr4wPkOCLqgjkNnVeI52C3US3B9Olu2HcHiec4Z0stuc3tHxIwqJpYzHEIvAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8sUtCHI8CgPIt0y3dR2kUnFJSqDBporfhEXr8s1uxPI=;
 b=ewLEVRtdVIv+jnvaKkffnBMWQB8bQleMkLLLFbSgHE406xqinjn/uPCTWV5qxOR7h/othevzNWgQ7o9ON6qUhuYNtJgt2lQYTHYHAWqBdvhFDkvlUVdh8E+j3BrpStwntDO74Euhf9dHIw8wFG+6Y0o2UydDjWG4I/gW+bPqE+ar4IPPYK/mApSi0TSv/bQ3o8abWd8Jkp/TpoA9rGSF+bXsTFzfP6AKwEqB2ht14ePPTrXdDfcQYWog0mWx+rs+BFQb4dRCAAz1KS7ISW9mGWZclabvoAyMp4I+0B/z/pVr1B79uMKO+ybIGZK+ujOAhzw9dQZDAnoN/Uly5Ue+UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA4PR11MB9251.namprd11.prod.outlook.com (2603:10b6:208:56f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.31; Tue, 8 Apr
 2025 08:14:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 08:14:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v7 8/8] drm/i915/lobf: Check for sink error and disable
 LOBF
Thread-Topic: [PATCH v7 8/8] drm/i915/lobf: Check for sink error and disable
 LOBF
Thread-Index: AQHbpH3/dl1pKzvQSk2Pg4SRqa3XxbOZc2uA
Date: Tue, 8 Apr 2025 08:14:10 +0000
Message-ID: <49f8b2f1c50a8d2ee75a3b8e93a9070b2f1cd157.camel@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
 <20250403092825.484347-9-animesh.manna@intel.com>
In-Reply-To: <20250403092825.484347-9-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA4PR11MB9251:EE_
x-ms-office365-filtering-correlation-id: 06845963-421a-44b0-b284-08dd767557a7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VlcyRCs1N1F4aXd3SS9nNEQxRU50R1ExUnFXaCtGczdMSUR1R1drLzhiSW9L?=
 =?utf-8?B?VmxqQk5XUjV5Q0c0QS9wR1JXZWxLdTRjMCtUdTd2Njd0eEFzY0JjZFJmV0Z6?=
 =?utf-8?B?djljMHBneTg5RWY1NGg5QktubTB6Sm1NamZrVHJJTW1zcGoxSHZncVk2UHJX?=
 =?utf-8?B?NTFkNVlNQUFpZlFRaW9hdEFDWDU0V25HbVVJM0tFdldsZFlnUmh6cDAvaTUz?=
 =?utf-8?B?Wkt4Y2JhM3JLNkFwNkduc2d0S1RHY3hsOUE1aUFOVnBFc1RudjVoYk5hNHpp?=
 =?utf-8?B?bkVxbU1DZGUvWnpHbm5aU0xGUTVicm9FUnhLZG80Tjc3NEZUaHZ2UFBkUDRq?=
 =?utf-8?B?Mlp6M2IzbmUrQkxRckFtKzBnQXU0dkRBU2kzUGt1b0NGTXlQSXYzb05STGd2?=
 =?utf-8?B?TUhxZnJLWHBqc0lzLys3d0dKUkYvdkQ0bDlNS2k4aEpLVkpBcUkrVVdDVkVp?=
 =?utf-8?B?TTlKK0l2eXVDaSsrNnhhQ2IzemNJeUZjV05lbGowbkU3T0JnRHhoSERscG4r?=
 =?utf-8?B?QVpXVys3TmYwNWlMdkpCeUI2SFNSMVRkRGZXQ0F4VkM2NGxLZE5JMTZMZTNh?=
 =?utf-8?B?Y2UzeG9vcEk2V2JVUHM2cE9nLy9lM0JndHU4N1VBcEJsek82MlE2dHBwK3Bq?=
 =?utf-8?B?dGo1cE9vS3hsZjkxdnY0MERoeElMM1NXVGdVZ3JIQllrRjRqcTBtK1VGYVgr?=
 =?utf-8?B?MmNPbUpOb1I5TXdLa3lnaU00VTMxeXFaU3RZRVNoNU1sSWZKdjRVYmwvTlRw?=
 =?utf-8?B?N1dqQURmZ2dCSWhmbEtPNHNEUFMrRndNNUQ2Mkhta0JFUm95UE55aFMzdHFt?=
 =?utf-8?B?cy9wYVBJclVyOXZwTEpvMFkzSFBVS3d2a3V1YTE2SkpQQy9mUlQxUTNBQ0F0?=
 =?utf-8?B?bnZMeWJ4eGhHeGQ0bndWMW12ZVRRamhkamh6ZnU2dXpDTXY0dTMwSU5VZkh0?=
 =?utf-8?B?ZHZ1Z3A1YVJJSkpNS093b1ZMd0ZKeUZlKzNZc011SHVBb3JqZHNPc2VEVC93?=
 =?utf-8?B?UUp4VjRNMHJEVXRmL3RXLzBTU0pEanpsWEdwTFFEbmNkT0I4MEZMNGdUSUdz?=
 =?utf-8?B?OTczTXB6Vm5aN09iNkR2RThxTXVObEZSVUJNSFhVUUNqdlVjSWxWQ2Iyby9z?=
 =?utf-8?B?TWdmS3lPd0IwMGpvME9tc2dybWU3SlRjV2twZkJaVVhyUERGWUpsVG9MZzAz?=
 =?utf-8?B?eDlheU04NElFdlE1S1o3d0hnNENxOVJiSGFYVFdFZXJtekVCWnBhOEJZWmpG?=
 =?utf-8?B?Ulc2WTl4MjVDOVNpekFsaWMyankvcVBadFRpaWZ1WTJQTDdlTFIvRjQxWmVP?=
 =?utf-8?B?czQrKzVHaTNaS0pCTS9TWmxHa0I1WUxDRkpzMy80cENJUHVHZ0VJTWM5OGI3?=
 =?utf-8?B?b1ZEM3RaRFZtQTRVa1d3bVorZE5VTVoxZGxQbE53bGM1blJ0b1UwNE5xME9o?=
 =?utf-8?B?SlJsajQxNWdDczVRWnpzWnJVT3JoSDNvTDdhbDNIc2NzYW1nZ2pKQkc4RFpq?=
 =?utf-8?B?N1oyOVdNbWpVdVBVRUY3dC9rK1FmZk1sUDNMV0JyemV5bC9wbmN6T2lNTnRW?=
 =?utf-8?B?dDI3RzlKRWk5bVRDTnRsQlQzU2VGeWFScG5SOWhQZEhwaEZ1TDlDVFpPWUo3?=
 =?utf-8?B?cDgrclFWMW5GbERqVDh2TlhGY1Z0SW1OTFFnYTZQYzJteTBEWkFGY3ZUZFF1?=
 =?utf-8?B?TFZaTGFnaFpMeFZtaHFweC9KV25YUzFqRVZtTzhKT3hhMXpNUktvdHlFUUM1?=
 =?utf-8?B?UzBHVkh5L0hFOG83TGs5Wjd0Ynp1TGNEa3YyeTBkUnJlOFRsQVNES3NrOVlK?=
 =?utf-8?B?ZHBHZjlyTVliMnd6TXlycC9VTjNlUTZQRXI3cUVka08vNjRna1NYNEdsU3BX?=
 =?utf-8?B?Rkl1OXNiVFRCQzZRc2FEcWtMRjUra21STlhKYlY0WC9sSkFpdGs0NGd5dTc5?=
 =?utf-8?Q?L2zpzemQtHoT9utmu0J9yz4p3bCZZcs6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eG5LTmp6RmdmTjh4K2ZpUDJ2Q2lRa0xSNVc0WTMwZCt3cDZXN1hvREJDZjVL?=
 =?utf-8?B?WEZVdHlQeGFSZTZWakJoeEJvbnBzSUdnZlB1WU1hT3l3NWxKalFabTFEQ1Uv?=
 =?utf-8?B?YXFTN1VselpnbzJQSVQ0clBDenBNbnhMR0xsMVZ3YnJFZHVXa01rUnd2VkZQ?=
 =?utf-8?B?SGFVcGRYUVVob2VrYnZlbjFuMmZMYXZta204d1JXVnlaZFg4RHFpWVFhdjdR?=
 =?utf-8?B?Q08ybTBlbWRRdlNxSGFxN1lLQWM1YXZFTityNFhvUUtXVkQyUUdxSVoxT1ln?=
 =?utf-8?B?MUJMUXJKL0Jrd3BsN3ptc2hnSy9abFpVWCtKc0R3SDdYZGU5dC91VUFQSUYy?=
 =?utf-8?B?RVhhaThHS1prQVZML2NLbkt6L2JSZW04eWVpR3ZqOHA1UGZKalgxNDRySk1z?=
 =?utf-8?B?TTZnRFJ3SE5rVU55QTc0N0kvN0RrOGR4d0tlbVlTbmdueWtIUnRMOXozQVdh?=
 =?utf-8?B?QzF6cmUwVWNZZXZEQXpzK2JadVZEQmhVSUx1SEM0VVFhZFR5SEJkQmw1SlJY?=
 =?utf-8?B?M2Y1QldiWkQ4bHJ6QjFZa2dXNW93VlFwVlRpMEtxbUtwQmhEMGtxZW1IZkZH?=
 =?utf-8?B?ZWpuaFZENTVzYi9mTk50UjhrRHp6bTBnWU5EeTNwcTRpbjE2K3FHNW8rMEFV?=
 =?utf-8?B?Q0l5VlptMU81bXRra1FRK1g1SUN2SzdFdllvY016K21KUFdqYjk2blgzdXRE?=
 =?utf-8?B?RUUrS2ZaZEFkdlE2dVdBUkpXODM3S3phRW1aQzVzZ2JnYTVaL2tqTENHbEx0?=
 =?utf-8?B?NE85MVh3WGlvbE1LWU1CdWdIODlSWlBpZCtZR3FTbVY0WmVIZ1haaWI1Wm5k?=
 =?utf-8?B?NTAwWVNLNlBPd2JzcXZDaWNlTmEzTkRrUktvckR3ZjVMMm53MDVXeVM3Z05S?=
 =?utf-8?B?YWQ2N05wMlBVbGc5WU00TXg1YzRSRjF5MTllanFKcFdHM1dBcHVtYkxDMVlB?=
 =?utf-8?B?SUdwUUl5K1hKb2Nsb3N3dGJUTVNRbUVwUzZIdHJJT1BWMGhORk5RbmZCSS84?=
 =?utf-8?B?UVgwTnVKMDRMOU13RnJZbElCVWRtQkdDUHBHay9vNVVUMHdiLzFtYk5tWVZX?=
 =?utf-8?B?SzlDQTdCRW5mM1c3ZU9iNnVaZW5kTGJiQ3hka0RzMTRwalpRTU1PdjBXbVpB?=
 =?utf-8?B?WjE1TE9jbEZJWE5RQXo5eE9OMkpNaHUzRU5wWFc2UWNNdTFKYVF6VXlJbzFr?=
 =?utf-8?B?NWlZZnQ4RXlLWGJEK3JDSkNLemIzNmxtM0hxWWhXK2JZZHIxQXozVEphOVU0?=
 =?utf-8?B?aWszV1BmOXpKVUVaTWQ3YWpQRCswbG9KeDR1ZXBhLytmeUtpUU5KeHNYTE9Z?=
 =?utf-8?B?RlNWcXJnNWR3eEkzSVNiWTJ3QTZRNEVLQnpvenFXZVcwY1VtK2dWS2hXOHpy?=
 =?utf-8?B?SkJqbHUvYnZoSjNoaElQNWRsL3A0ckRiVEZ4V0hiUEhGL05vRVBmL3EvRGx0?=
 =?utf-8?B?VUI5Y3ZlSitldGgwVXNxalJEMmU3MnVNdk10cWY2aUkrMjdqSHMwd3FiaFBF?=
 =?utf-8?B?b21oUXYxeUN0NVpWeVpuMmtUcENOaUpCQnhPczR5dG1SUHFldUNXOWpnQ0Vs?=
 =?utf-8?B?ZklldzRZeHArZFBjUHByQktBZlg3bFlmMTl1ZVl4b2hOSnN1VHowcHhlQVRX?=
 =?utf-8?B?RzRBdXNtRzQwc1d4c3dGSjhvV3lTNHRrK1FmV0VGeUdoNVd6Y1JGZkFmQndC?=
 =?utf-8?B?eUNSaURuREgzMmQxWUZtUkJGb3dpNndRSjh5dlVvU2JPb2FzZ29kbnpocWRL?=
 =?utf-8?B?MmlLUmdYdHNOSHVYSDRBRkE4bm5nNWk1bjZUcHl1RUhMRGtTSUpsbEdlOW9m?=
 =?utf-8?B?bG5zVTI5N2k4RzJ5MU5LUUlmRTRlWUVjek1ydTVUWXUwZ0FDR3FqOG1NTUZK?=
 =?utf-8?B?WjFoVFFReFZPUXp0WWE5Z1lXNW0yOWVHR2dNZVdORXp5TWNYcUFKd1NIRk1x?=
 =?utf-8?B?bzF1SXAwSGYvTVBwQVVjU0szTWRTYk54M2xkK1pxM1hrSjhnY2U0T2YwZXlq?=
 =?utf-8?B?ZUF4WUxZeUkrK3FwK2FMWHQyZ0I3dXJmaDQ2bVFWQlI2K1E4c3ZIVVFqYStx?=
 =?utf-8?B?TXZrdnR2emxhNXZwdHJVblo2QU9XV01vRlpmV2hnY2xrNGxDTGlmaDFJWUxr?=
 =?utf-8?B?ZEVHVDFzODROZmVwdzBTRGp5UUxBTEhURHc4STBVMEp3cHNyZ2kzUmFuNlJG?=
 =?utf-8?B?cUpzWXR5VkpMS2s4Z3FBV2pLZXYwU3lZZ2F6TWgrRDFTUFllRDVMY1FDMWo2?=
 =?utf-8?B?eTVYMk1Ba21tNDMrTzNHQlpUalZ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C41FF2A90E6D784C9599CA054666F969@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06845963-421a-44b0-b284-08dd767557a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 08:14:10.9816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oCyyYpJZUoF9aIFLjrgRv0U+cIaTYLVA0EUmYAyXEv4VfMWDxRQ6qXff8NTJM+NqgD2R53jUuF48fqwb7OCyhWc6OFxZaNEQxAaVvmEjOYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9251
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

T24gVGh1LCAyMDI1LTA0LTAzIGF0IDE0OjU4ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBEaXNhYmxlIExPQkYvQUxQTSBmb3IgYW55IGVycm9uZW91cyBjb25kaXRpb24gZnJvbSBzaW5r
IHNpZGUuDQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjogQWRkIGNlbnRyYWxpemVk
IGFscG0gZXJyb3IgaGFuZGxpbmcuIFtKb3VuaV0NCj4gdjM6IEltcHJvdmUgZGVidWcgcHJpbnQu
IFtKb3VuaV0NCj4gdjQ6IERpc2FibGUgYWxwbSBwZXJtYW5lbnRseSBmb3Igc2luayBlcnJvci4g
W0pvdW5pXQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2FscG0uY8KgwqDCoMKgIHwgMjkNCj4gKysrKysrKysrKysrKysrKysrKw0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5owqDCoMKgwqAgfMKgIDEgKw0K
PiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAg
MSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqDCoMKgwqDC
oMKgIHzCoCA1ICsrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jwqDCoMKgwqDCoCB8IDE4ICsrLS0tLS0tLS0tLQ0KPiDCoDUgZmlsZXMgY2hhbmdlZCwgMzgg
aW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBpbmRleCA1NWVhZjJiYTk5NmMuLjIyYTA2NzUz
YTc2MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMN
Cj4gQEAgLTUsNiArNSw3IEBADQo+IMKgDQo+IMKgI2luY2x1ZGUgPGxpbnV4L2RlYnVnZnMuaD4N
Cj4gwqANCj4gKyNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQo+IMKgI2luY2x1ZGUgImludGVs
X2FscG0uaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfY3J0Yy5oIg0KPiDCoCNpbmNsdWRlICJpbnRl
bF9kZS5oIg0KPiBAQCAtMjgwLDYgKzI4MSw5IEBAIHZvaWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1
dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCWlmIChpbnRlbF9k
cC0+YWxwbV9wYXJhbWV0ZXJzLmxvYmZfZGlzYWJsZV9kZWJ1ZykNCj4gwqAJCXJldHVybjsNCj4g
wqANCj4gKwlpZiAoaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy5zaW5rX2FscG1fZXJyb3IpDQo+
ICsJCXJldHVybjsNCj4gKw0KPiDCoAlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+
IMKgCQlyZXR1cm47DQo+IMKgDQo+IEBAIC01MDYsNSArNTEwLDMwIEBAIHZvaWQgaW50ZWxfYWxw
bV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+IMKgCQnCoMKgwqDCoCBQ
T1JUX0FMUE1fQ1RMKGNwdV90cmFuc2NvZGVyKSwNCj4gwqAJCcKgwqDCoMKgIFBPUlRfQUxQTV9D
VExfQUxQTV9BVVhfTEVTU19FTkFCTEUsIDApOw0KPiDCoA0KPiArCWRybV9kYmdfa21zKGRpc3Bs
YXktPmRybSwgIkRpc2FibGluZyBBTFBNXG4iKTsNCj4gwqAJbXV0ZXhfdW5sb2NrKCZpbnRlbF9k
cC0+YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiDCoH0NCj4gKw0KPiArYm9vbCBpbnRlbF9hbHBt
X2dldF9lcnJvcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiArew0KPiArCXN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICsJ
c3RydWN0IGRybV9kcF9hdXggKmF1eCA9ICZpbnRlbF9kcC0+YXV4Ow0KPiArCXU4IHZhbDsNCj4g
KwlpbnQgcjsNCj4gKw0KPiArCXIgPSBkcm1fZHBfZHBjZF9yZWFkYihhdXgsIERQX1JFQ0VJVkVS
X0FMUE1fU1RBVFVTLCAmdmFsKTsNCj4gKwlpZiAociAhPSAxKSB7DQo+ICsJCWRybV9lcnIoZGlz
cGxheS0+ZHJtLCAiRXJyb3IgcmVhZGluZyBBTFBNDQo+IHN0YXR1c1xuIik7DQo+ICsJCXJldHVy
biB0cnVlOw0KPiArCX0NCj4gKw0KPiArCWlmICh2YWwgJiBEUF9BTFBNX0xPQ0tfVElNRU9VVF9F
UlJPUikgew0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJBTFBNIGxvY2sgdGltZW91
dA0KPiBlcnJvclxuIik7DQo+ICsNCj4gKwkJLyogQ2xlYXJpbmcgZXJyb3IgKi8NCj4gKwkJZHJt
X2RwX2RwY2Rfd3JpdGViKGF1eCwgRFBfUkVDRUlWRVJfQUxQTV9TVEFUVVMsDQo+IHZhbCk7DQo+
ICsJCXJldHVybiB0cnVlOw0KPiArCX0NCj4gKw0KPiArCXJldHVybiBmYWxzZTsNCj4gK30NCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gaW5kZXggMDEy
YjBiMWQxN2ZmLi40Zjg2MzIyYTk5OTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5oDQo+IEBAIC0yOSw0ICsyOSw1IEBAIHZvaWQgaW50ZWxfYWxwbV9s
b2JmX2RlYnVnZnNfYWRkKHN0cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcik7DQo+
IMKgYm9vbCBpbnRlbF9hbHBtX2F1eF93YWtlX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKTsNCj4gwqBib29sIGludGVsX2FscG1fYXV4X2xlc3Nfd2FrZV9zdXBwb3J0ZWQoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+IMKgdm9pZCBpbnRlbF9hbHBtX2Rpc2FibGUoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ICtib29sIGludGVsX2FscG1fZ2V0X2Vycm9yKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiDCoCNlbmRpZg0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCBm
NzUwMGZkMWVlOGMuLjYxN2RjZDNjMjY1NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE4MTQsNiArMTgx
NCw3IEBAIHN0cnVjdCBpbnRlbF9kcCB7DQo+IMKgCQl1OCBzaWxlbmNlX3BlcmlvZF9zeW1fY2xv
Y2tzOw0KPiDCoAkJdTggbGZwc19oYWxmX2N5Y2xlX251bV9vZl9zeW1zOw0KPiDCoAkJYm9vbCBs
b2JmX2Rpc2FibGVfZGVidWc7DQo+ICsJCWJvb2wgc2lua19hbHBtX2Vycm9yOw0KPiDCoAl9IGFs
cG1fcGFyYW1ldGVyczsNCj4gwqANCj4gwqAJdTggYWxwbV9kcGNkOw0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDBkOTg2ZDYyNGQ4Yy4uOWU4Y2Ri
Njk5MjQ4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
IEBAIC01MzkzLDYgKzUzOTMsMTEgQEAgaW50ZWxfZHBfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVs
X2RwDQo+ICppbnRlbF9kcCkNCj4gwqANCj4gwqAJaW50ZWxfcHNyX3Nob3J0X3B1bHNlKGludGVs
X2RwKTsNCj4gwqANCj4gKwlpZiAoaW50ZWxfYWxwbV9nZXRfZXJyb3IoaW50ZWxfZHApKSB7DQo+
ICsJCWludGVsX2FscG1fZGlzYWJsZShpbnRlbF9kcCk7DQo+ICsJCWludGVsX2RwLT5hbHBtX3Bh
cmFtZXRlcnMuc2lua19hbHBtX2Vycm9yID0gdHJ1ZTsNCj4gKwl9DQo+ICsNCj4gwqAJaWYgKGlu
dGVsX2RwX3Rlc3Rfc2hvcnRfcHVsc2UoaW50ZWxfZHApKQ0KPiDCoAkJcmVwcm9iZV9uZWVkZWQg
PSB0cnVlOw0KPiDCoA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gaW5kZXggMWJkMmZjZDBmYTRiLi40M2VkMTY2MDA3ZWIgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMzM4NCwyOSArMzM4NCwxNSBA
QCBzdGF0aWMgaW50DQo+IHBzcl9nZXRfc3RhdHVzX2FuZF9lcnJvcl9zdGF0dXMoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gwqANCj4gwqBzdGF0aWMgdm9pZCBwc3JfYWxwbV9jaGVjayhz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiDCoHsNCj4gLQlzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiAtCXN0cnVjdCBkcm1f
ZHBfYXV4ICphdXggPSAmaW50ZWxfZHAtPmF1eDsNCj4gwqAJc3RydWN0IGludGVsX3BzciAqcHNy
ID0gJmludGVsX2RwLT5wc3I7DQo+IC0JdTggdmFsOw0KPiAtCWludCByOw0KPiDCoA0KPiDCoAlp
ZiAoIXBzci0+c2VsX3VwZGF0ZV9lbmFibGVkKQ0KPiDCoAkJcmV0dXJuOw0KPiDCoA0KPiAtCXIg
PSBkcm1fZHBfZHBjZF9yZWFkYihhdXgsIERQX1JFQ0VJVkVSX0FMUE1fU1RBVFVTLCAmdmFsKTsN
Cj4gLQlpZiAociAhPSAxKSB7DQo+IC0JCWRybV9lcnIoZGlzcGxheS0+ZHJtLCAiRXJyb3IgcmVh
ZGluZyBBTFBNDQo+IHN0YXR1c1xuIik7DQo+IC0JCXJldHVybjsNCj4gLQl9DQo+IC0NCj4gLQlp
ZiAodmFsICYgRFBfQUxQTV9MT0NLX1RJTUVPVVRfRVJST1IpIHsNCj4gKwlpZiAoaW50ZWxfYWxw
bV9nZXRfZXJyb3IoaW50ZWxfZHApKSB7DQo+IMKgCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQo
aW50ZWxfZHApOw0KPiDCoAkJcHNyLT5zaW5rX25vdF9yZWxpYWJsZSA9IHRydWU7DQo+IC0JCWRy
bV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gLQkJCcKgwqDCoCAiQUxQTSBsb2NrIHRpbWVvdXQg
ZXJyb3IsIGRpc2FibGluZw0KPiBQU1JcbiIpOw0KPiAtDQo+IC0JCS8qIENsZWFyaW5nIGVycm9y
ICovDQo+IC0JCWRybV9kcF9kcGNkX3dyaXRlYihhdXgsIERQX1JFQ0VJVkVSX0FMUE1fU1RBVFVT
LA0KPiB2YWwpOw0KPiArCQlpbnRlbF9hbHBtX2Rpc2FibGUoaW50ZWxfZHApOw0KPiDCoAl9DQo+
IMKgfQ0KPiDCoA0KDQo=

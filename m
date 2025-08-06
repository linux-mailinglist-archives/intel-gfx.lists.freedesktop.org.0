Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9370DB1C6BC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 15:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D838E10E775;
	Wed,  6 Aug 2025 13:22:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJkjiiOh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A5BC10E3E1;
 Wed,  6 Aug 2025 13:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754486550; x=1786022550;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=l0DFGD1KQRNjWrq8Yg5oP3dDGEdQEvZdSvylv7Ogvx0=;
 b=cJkjiiOh1tnwZorBKozbrDmosVbPJ6UeqUwUsF+ABiguKuj7ikmJIVf7
 R5f1iPRoYkYinGweUoZykoYvPp+aovpSQjvX0GK4TWecd9uwzeEXMhVle
 fDSn6YxVhFwf+SI/cW5biJThFhnl9Y5JqjGGfngTnioQ0YvJ/Y6VrLywn
 6E1JZ+OrzoXES0iwe72SKmB3VL2p1OK0B1rGHzJjkZACq7uHMcw0ANpFc
 wvaHt9HoFf7OUYDoofpDNm8zhBH1q2k7VUrNTDV9cHNdsx1HjDVL76l7W
 nI6q82baQ2X9LvjX/2YbS5VuOb74MWLX78qlgtCPaWzRT9iKWTGd8geFu Q==;
X-CSE-ConnectionGUID: Wjt6ltiBSciHn+iJgLwpEA==
X-CSE-MsgGUID: NQavJLN2TmCyYYmdBI3Pgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56698036"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56698036"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:22:30 -0700
X-CSE-ConnectionGUID: NCqnC9PPTOG1rXyh0OeWAw==
X-CSE-MsgGUID: YcJJ7JTZRYa6lmPNAuGPTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165144302"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:22:29 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 06:22:29 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 06:22:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.41)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 06:22:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rxrs61MEg4VA3SedNwb6q/op6y9xv1NmQ/1YyD7Bp67C1y8VtRdM8yY+iaYSOzO4G4vukVjzylfu5p8tLtqSjjhYfcnJxrcC4j81erEsg9opmDWJlWH6VgCqYAuFW7AtwKrUNlPKeVbtAs+AbquBjYN8k3lLkwWO6975FUqgku2AgX4rKtBvSsPWoUUInZch7FnEQQSPdfDno7IswPadD+UcCyjZ427RIZnUkkQtO9u8Vdij4SOQvsRJh/H407k48G+Jg519d9hIOd3syHZ7d9F/xK7pHXABAwziSBmuxf1QR0NV5OSDZUBqRajkj6piYobQs8fs8aVz+9QcsV5Tew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l0DFGD1KQRNjWrq8Yg5oP3dDGEdQEvZdSvylv7Ogvx0=;
 b=R8GJdXcsPP7RIe3yHmvMBIzegPJ1IaEaLhwg+O3VLagMRusvJ293OCni0/m95C0+ny90If9YcdiL3UEvoPq6pyW+qkK2Z2hDWzFY5FH18Dvjs/x8y2Ds6FDJ3DNydjJgprDB3Snr4+ilnwCemTIRMn08v8Y2cZkei7Rremfz8zjyYP3KOPt0g6DSbVF5fPJ13n+ND5hJeqKP5fZVx+DS6mJhEp6LqX7pni7AWhVZh6umQUDOSSqNF3PgjQ2SnqZ6FvQTwIeRsgdn5zYL08yRliWZKzVuTkouq6GvPBEijRYLPw8NfJxQCMnHUIYb/A+0hudYtAQ+LDS9yrTEqaFgMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA1PR11MB6709.namprd11.prod.outlook.com
 (2603:10b6:806:259::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Wed, 6 Aug
 2025 13:22:21 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 13:22:21 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 08/19] drm/i915/tc: Move asserting the power state after
 reading TCSS_DDI_STATUS
Thread-Topic: [PATCH 08/19] drm/i915/tc: Move asserting the power state after
 reading TCSS_DDI_STATUS
Thread-Index: AQHcBdvXcQ2gyFvDWUCFpvcxGHxqqbRVnneg
Date: Wed, 6 Aug 2025 13:22:21 +0000
Message-ID: <DS4PPF69154114F2EA15E00E53B80201048EF2DA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-9-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-9-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA1PR11MB6709:EE_
x-ms-office365-filtering-correlation-id: 22075da1-c322-4e62-62f4-08ddd4ec46a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?R3JkWTZZdnBxWnFFNzI3SDJPUzRZQmx1ejdiMGVNSHMySVFzK1J1Nnl3NjVB?=
 =?utf-8?B?c05iZnJxdEZlMSttRGpqVmJabUxlM2puSjVVeWdPeUFRZkQ5anp6ei9DODlS?=
 =?utf-8?B?SWFUeFluTTMrUWY3bVROdXFqeW5XTjFtZmtkZHJ0aFpYYzRRODZ6VVdjNXdD?=
 =?utf-8?B?TTZWY2pwdjV4anRMVm90c3Q4YUdGNDZaL0NtdFdNamlPRHNLeTNXblhWV3lH?=
 =?utf-8?B?VFloZHROVHFkN3VvbGtYTHpRK1NvZ2NHL2w2bnV0Yk1MeEVtNytqZkRiU3FX?=
 =?utf-8?B?a2Vma1ZlY2hrV05jb2ovUWJZcGtSSmQvNlBmUm5UUVJhSTJFU2xDUU5wcERT?=
 =?utf-8?B?Q0NBK3E0Zy9DbElnTTkyUVpreERtbFR3WnZWc1huUHpoVld0c2RHNlFlVW9I?=
 =?utf-8?B?OXBpcUMwSFU5WmZsQWRTZXplckpmU0FWWCtHcFcvZmM0MGxSd3UvcU0rME9U?=
 =?utf-8?B?amdLMDdpUUZxYThjeGsvaXl2TXdCek9JRy9qN0pwZXh0eXpSWUxFR3A2azg2?=
 =?utf-8?B?WkNnUk81VGVMVzRlQ09jSnlLN21tYUQ2VThSS0xiQ1FmTU5HenlMK2Vjam1j?=
 =?utf-8?B?N3JPaFB1V2lkbmxGYXY5UkxjbVhWcDhqMTNEeFVmN1lhSWoyckhhZnpJRGJl?=
 =?utf-8?B?aHY3dWVXWENEWWNYT3RXSFQvaHVHN0xUaW5naGZHd1NtT3NZdXltRE9IUEhC?=
 =?utf-8?B?N0xDOTJ6aEJDTmlZUU1xWjREeVNXdTRNT3YvK09wc0JxQ3EvUDF4M09VRkk3?=
 =?utf-8?B?ZTl6N3I5ZEU1NXFDLzFmRE0xbXZHNXlsd1Z3K3l4UDNqRXdvcDdya1Rqa1Ni?=
 =?utf-8?B?YlExYWZiN0xMK0lJUlZteC9vWHczdEVnL0hmbTlEdlpNckJDaHN6Y0IweTlG?=
 =?utf-8?B?blFWZTVzUjRMM0FaVkltYWJyM3ZhZnlaVFpBYUVkQWswREVPajFUL3MvRXVV?=
 =?utf-8?B?MEhWTkc5aEh6VWthTTlYZVZjcTZpM0FYQzBOSGplRnRCcXl3RzNqTE5NcVpT?=
 =?utf-8?B?SkFsdlFYQzRvSlhHYjc0QzJrZ29nWmV2TjlxN2pPeUpWTS8xanpUY1Q5UHVQ?=
 =?utf-8?B?alJOMUFtTWk0VWVwOUhITzN2YmdsWmU3ZkEvM3hLNE5Qc3NCVzVtUEcvc1Ev?=
 =?utf-8?B?ZjcrNFhaNmk0Umw2K3MzOEtFM2k5S2UyY3g3ZUtUaitsOU9ka3I5bkdjVU1q?=
 =?utf-8?B?dVNHclhQcm5nczMyZnJRT01vMndzSks1YVNLaXdFem5ydlV4aDY4RHpyNlUv?=
 =?utf-8?B?eSt6bm1QKzhLbXNaclBnUmxWWXNTNXdBNlhSNVp5NmgxUi9sTWF6UWdxNWlG?=
 =?utf-8?B?RDVuR3oyanM2VjhMK2VkRk5XWUc0T0VwaENoVUw1ZTFuQXdSNnA4ZC9TMUJ1?=
 =?utf-8?B?S3AzVUFTWlFjaENRYzRGMmNXV3RUajVCYUhCNWkwKy9MTU9nSVF3cm1FU3F5?=
 =?utf-8?B?Yy9tZlYwOUU5MEpMUzBJU2hkcE9iVnh4cjQrMkMzZ1lIK2l4T0tZcEFTVUQw?=
 =?utf-8?B?VTV1a2tVZ2dvaUk0SGRVcjVLNmMzcGt2OWlnOTloL21ITnFWSWw5REVoTm5p?=
 =?utf-8?B?NlM3RUhscHZXYW5NYmZyanBYTjd6YWlFNzI5U21pMjhzdVAyL2Z0eDJXSUF0?=
 =?utf-8?B?bjJweVlObVIxMWNzRTNpOVQ4NmwvMG5ZSFY2a0ZHdWxRb2lkYjdpMnArT1NY?=
 =?utf-8?B?eUVzTlRMbEc1TUZnR21heVBhMFdidWdLVnNBb0xoLy9STG9jY2JkUWxscCto?=
 =?utf-8?B?T09teGxFZnJtTHo2elRlTUVYVUN2bDhXNjBqdzJiTFNYa1g4bnZ3MURlYTY2?=
 =?utf-8?B?Rk9HNHByNGJ5emJQS1BpekMrVkJWKytydmNRbVZBUFZFV3diTDk4WElUczBX?=
 =?utf-8?B?VUpFN1pDenYxakhyWUxJVUNSamoyY0lDMTkrTzBXQkl2QWxYNi9zdFpIellU?=
 =?utf-8?B?elpqSWFlb0tDU2RiL0c0bjF2V05oL2hrT0UwTHVJS1VvUzl2UVRTaWpMcFky?=
 =?utf-8?Q?TXY0BbXsbCKHnCmuKylu14NlFjrq9M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nk1ZVnc3bFpId1JiMHdsRFRsazNQK3RhaEFSQW9WWTJsbG5xQ0JaNjlUSDF1?=
 =?utf-8?B?MTFJVysyQ3VBWTlFdkdDUmtKZGpSa3BmUEUrcnBzU3RxeGpvd3daY1lkajBD?=
 =?utf-8?B?WFBWTGRTVDQrT0I1ZFVFejc1M2QxRk5FL3Y5TllPa3Q1OUJaRUJmVE41SU9m?=
 =?utf-8?B?cjRyT2NVUTVZRG1kR25yV2Zqb3IvS1ZPRWNGT2lITFlYenJwYXRQbWdKV0RE?=
 =?utf-8?B?OU1RVGJvdE9xRkpVOGlmVVIzZTJRVHd5K3lLK0RwVWFvbnJyQkppUFd4QlVn?=
 =?utf-8?B?SUpFdUFvYklqc3FrZ0Q3NmgwNmw5RUtZTG5SRGtTUUFrUFlsSlRvRzBtOElm?=
 =?utf-8?B?TEUrczMzYnhhdzJob21rRm4vaGk2QVBSVld0cHNiS0U3dU1SVXgwZmdad2Vs?=
 =?utf-8?B?OGpYNXRjWTR3c0w5bHQzUjg0UU12RzA3T3o3U0RKMzBvZys5S2V3cUdCa0Zz?=
 =?utf-8?B?L1BEWGF4aXV3Uzg3Z243TGlubzVJaGt5WC9aKzhLQ2xoazBPRHBJTkdydlR5?=
 =?utf-8?B?R3RTTnpEUUJQdGppNXRSTWVPVk9mK0FITWt6VGcwZGJuREkwbnhENzZxMWg1?=
 =?utf-8?B?enVWRU9SendTK0pHYVF1ekJQMk1zakRUR1k0a0xBVmd4MHQ4ODY4aUNCVXB4?=
 =?utf-8?B?L3BQRGw0dy9KMDlFSXQxRXd6UkJwT2xuZE5ObklKRWd3aWszZW9DWGtVL2x3?=
 =?utf-8?B?VlU0VnVsa1pFcEtKWUtTc2s2MVBuWHEzdDR2ZEtIazBGRENaNFZNN0dvcWJU?=
 =?utf-8?B?MnVmRllGdHcvZTFyWWthaUErWjZqK1NZOEFmanBoSWpDcGxHa0o0QW1DcE1O?=
 =?utf-8?B?L0FudElwSVU0ZXhCMk5VSjdkcVhKRHJkeUJwWmthdFM1UnBvWWhIcXpYL2Nw?=
 =?utf-8?B?eU9jRjJiTnFVSmZmYVNwaVRQY3FUdHZWbUt4VlFPQlNKRFlBL0J4bE5KRGVB?=
 =?utf-8?B?N3NtOWIzNEJRRDN6MXoyRDdZYlorR1BORnd4L2lNQmxsb3FQaWlLUVphSzQ5?=
 =?utf-8?B?Y1RnNGtNbXV5emNGdXQ1VzNlS2NMSmtkS0h0NFo3Q0o3dnlPWVZNREZnZEpI?=
 =?utf-8?B?cUN4RU93YnBvRFRRUCt0dXZGaVVsYTl6cXhwSjhZYkxobUhMNEx1M3dVb1VU?=
 =?utf-8?B?S1oyOUxPK2pFdm1mY0VhWUNyUWNJZnl3WkxWTXdDMEhqbHR1L3BQQzlXQlpx?=
 =?utf-8?B?SlcrRkhuWGQyNWtoMStISU45ZE1pUGJTUEo2UGlCejI0cVZoZHQvcmFUZmdU?=
 =?utf-8?B?S3FtaUU3UDlwcnYwM3VuVkF0NUorUVBBNHJqN0tENlg0bmYvN3NDV3NKTVA5?=
 =?utf-8?B?bWR0YklsbXJCb3dZa3UvcGJVRVllQzFmRHU1VUxKb29jKzkwejkwQ0lJdUNv?=
 =?utf-8?B?aUwzVGtvUDRnYVhDdlVsekowRkNsL2VkWFBtWjc5cGhzdXBVZzk1VGdoQU9a?=
 =?utf-8?B?ZmpaeTVoY0Z3dUNNZWY0L2pGOFdiS2pkbUNrRXh5YndiVE5PdDlNY1JQN0dr?=
 =?utf-8?B?QWJJSFNBcGl2R2dMNFZ6Y0dXY1hVajMwdy8veSswSkZMSzdaYVNUTXNabFJt?=
 =?utf-8?B?R0Yza3dLWFdoV2plY2hPTmpUWjJqeVdlWUt2RkRkRTlMSFltTitwd3BMZHRG?=
 =?utf-8?B?UGFMN3ZJbktHMy9ENHJjaU93ekdpcFBROFlvcmU4eXN3eUVOUXZHeWQ2SGVW?=
 =?utf-8?B?dVcvbWxXMnV4WW5FOHRUQlVCeThwSGxsSUhuai9IcmxiUGNFekgyZklWMGdK?=
 =?utf-8?B?SU5SWmJsNnB1OGhzMVg5aFFObWkwUm9haEpTUFdZM1ZPOWRUcFNTVitqVkR1?=
 =?utf-8?B?R002M2NDVG9DaG1mWFU0SnowMk9pR09LaWRabEJwRHBzTFBwaWMveTVJZjRh?=
 =?utf-8?B?bG8yaitXYkZxOWZMa0Iva2ZOK0JLR0FFem5jNXFBWHluTVVHc2dibXZRd1By?=
 =?utf-8?B?cWM5dWhVWitCZmExQlJ3YkRlWXRpZjk1ZGpWYm5WMDBtQ2tpdDNGdHZHTzZC?=
 =?utf-8?B?L2tHZlFnRGYyeGVXSVdSK3BibmM4TTlrV3RuRitzTEhFZmdaaGtBeDR0TVVm?=
 =?utf-8?B?Q21UaHR2YXlqaEQyMGxuNWpkSTRqTEh6cm5XUVlwZ1BCVEEvZWRxd1VkU3lR?=
 =?utf-8?Q?BW0/5cgvVko8wpULC2YRLSJSg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22075da1-c322-4e62-62f4-08ddd4ec46a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2025 13:22:21.8782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k7Goys7/v1NwTR9BHgk2DFHtnKq+CIe8HV2oqbb3GhtFcvkJf/nmjjxdpnLQjuEy0EOBHvoiOMtxXmzjsK0GNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6709
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCA1IEF1Z3VzdCAyMDI1IDEwLjM3DQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3Vi
amVjdDogW1BBVENIIDA4LzE5XSBkcm0vaTkxNS90YzogTW92ZSBhc3NlcnRpbmcgdGhlIHBvd2Vy
IHN0YXRlIGFmdGVyIHJlYWRpbmcgVENTU19ERElfU1RBVFVTDQo+IA0KPiBNb3ZlIGFzc2VydGlu
ZyB0aGUgZXhwZWN0ZWQgVEMgY29sZCBwb3dlciBzdGF0ZSBhbmQgdGhlIHJlYWQgb3V0IHJlZ2lz
dGVyIHZhbHVlIHJpZ2h0IGFmdGVyIHJlYWRpbmcgdGhlIFRDU1NfRERJX1NUQVRVUw0KPiByZWdp
c3Rlciwgc2ltaWxhcmx5IHRvIGhvdyB0aGlzIGlzIGRvbmUgd2l0aCB0aGUgb3RoZXIgUE9SVF9U
WF9ERkxFWERQU1AgYW5kDQo+IFBPUlRfVFhfREZMRVhQQTEgUEhZIHJlZ2lzdGVycy4NCj4gDQoN
ClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNp
Z25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCA2ICsrKystLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gaW5kZXggNGJkODI3YzIxODdmNS4u
ZGU5MTI5YjY1ZDM0ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dGMuYw0KPiBAQCAtMzAzLDEyICszMDMsMTYgQEAgc3RhdGljIGludCBsbmxfdGNfcG9ydF9nZXRf
bWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpICB7DQo+
ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGRpZ19w
b3J0KTsNCj4gIAllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX2VuY29kZXJfdG9fdGMoJmRp
Z19wb3J0LT5iYXNlKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMgPSB0b190Y19wb3J0
KGRpZ19wb3J0KTsNCj4gIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gIAl1MzIgdmFsLCBw
aW5fYXNzaWdubWVudDsNCj4gDQo+ICAJd2l0aF9pbnRlbF9kaXNwbGF5X3Bvd2VyKGRpc3BsYXks
IFBPV0VSX0RPTUFJTl9ESVNQTEFZX0NPUkUsIHdha2VyZWYpDQo+ICAJCXZhbCA9IGludGVsX2Rl
X3JlYWQoZGlzcGxheSwgVENTU19ERElfU1RBVFVTKHRjX3BvcnQpKTsNCj4gDQo+ICsJZHJtX1dB
Uk5fT04oZGlzcGxheS0+ZHJtLCB2YWwgPT0gMHhmZmZmZmZmZik7DQo+ICsJYXNzZXJ0X3RjX2Nv
bGRfYmxvY2tlZCh0Yyk7DQo+ICsNCj4gIAlwaW5fYXNzaWdubWVudCA9DQo+ICAJCVJFR19GSUVM
RF9HRVQoVENTU19ERElfU1RBVFVTX1BJTl9BU1NJR05NRU5UX01BU0ssIHZhbCk7DQo+IA0KPiBA
QCAtMzc1LDggKzM3OSw2IEBAIHN0YXRpYyBpbnQgZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdCBp
bnRlbF90Y19wb3J0ICp0YykNCj4gIAlpZiAodGMtPm1vZGUgIT0gVENfUE9SVF9EUF9BTFQpDQo+
ICAJCXJldHVybiA0Ow0KPiANCj4gLQlhc3NlcnRfdGNfY29sZF9ibG9ja2VkKHRjKTsNCj4gLQ0K
PiAgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAyMCkNCj4gIAkJcmV0dXJuIGxubF90Y19w
b3J0X2dldF9tYXhfbGFuZV9jb3VudChkaWdfcG9ydCk7DQo+IA0KPiAtLQ0KPiAyLjQ5LjENCg0K

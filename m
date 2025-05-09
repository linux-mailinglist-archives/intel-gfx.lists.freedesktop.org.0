Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9536BAB0919
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29DC710E1A8;
	Fri,  9 May 2025 04:25:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jdgozYTG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610B310E1A8;
 Fri,  9 May 2025 04:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764752; x=1778300752;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pTo4j1AFPVdGALiW+N3f6tVPvM+nimiW0u+mrSAjWy8=;
 b=jdgozYTG81KncjMmX53lyH/Mb72FjlMxz/KXGe8/rgFcJKbJjrekCSF6
 XRXB8bw8VDW/qAnQQVoXfqF+QWgFoEPVCN3X/F40F11i3P0UJhZNOTq0h
 F5Xf+iD9qT5k5jl623/v1K0gyszbTJ2CSRErZncGxLBNSU5smL7CVwfoL
 8NCgLIhaZJkM+ALJ+D2OOts7kk0okVfLOJs+MxGX6tnZDmxNtGQCc1be+
 Ibejv1bie0qpgSoUbeDfr3rEpdoUsfbmomhW5+NdTpTc8ycNqFtE91qEn
 ekrf4FkW0gQBZjwUxnGbMfYtdTK10dwONuv2nOjRB4tMiHlLCVNQyl0N8 A==;
X-CSE-ConnectionGUID: kYxMlqhORcu4LA+uS7PExw==
X-CSE-MsgGUID: Q5k2XxWSTLaBh/Q4zxpkhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48692690"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="48692690"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:25:52 -0700
X-CSE-ConnectionGUID: vHecFWY1TVOfthD3iOi2Fg==
X-CSE-MsgGUID: 2KgWNF82RwSGxAHjaZ8ASw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137493178"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:25:52 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 8 May 2025 21:25:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 8 May 2025 21:25:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 8 May 2025 21:25:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QwlJFsN7g6SF2LxC2DUn3YatAzv7Wqn4PVjweNv6YNAJRqK8cA22dZycB85FEBs+Dg/Nfax13FmWTI2sEiRMlF+xm7zQ8lk7IY7ELDI9Hthxvv6kEY21myv2J6NGlkxKOTNyeH0U9mdbd0YTt3ZquG8fTOMKBYghuJ8xiCNt7geN+1C3ctLXfUPlUM6npZrUga/8qnTK/FhzjO5O7F/csHrEJ1gbjvtO+wWF67LKzFUq+9F0Ruw3rPlV5VSFBP4Ohd8++3SRSPjVB/4BY23WsdKY/rGAIgdvSUlB/qrwX20chKmDbd1u6yYuuSHpokDIsqyqTDzYGZPCKBs5w+1VoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pTo4j1AFPVdGALiW+N3f6tVPvM+nimiW0u+mrSAjWy8=;
 b=pqf8ZIWV/s9wBpCutxtmLT5VaWrVDXVt7+7pwSEflfdleWUAUqgTgNwFFGbHtj+CIyb8dElpvbv84u3tdsB6tUDtnFxypbDJOarw05ZMnI9k0zG7YZnsCXJhliceFa8/3eB38AHAsOoleoKVV0uKZ8oEWpzJ2rWobbBMP1pj7g4uQ8+9QYg4baPFeRtxWhOdCJcbfv0v/90P8h6/BK6NXwJXXsGOz340/Kcnzs75ros5xl8mIMmu3Ua0MEl+fC7TOjAIPcvZop7UTPsJqh1jvhXpLcY9xmD5Ya5GpSI6MYp7Ptt63YSKbi/9q4GrfP4cCDqqcQBEqMRXORdtzlvsvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB7954.namprd11.prod.outlook.com (2603:10b6:208:40e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Fri, 9 May
 2025 04:25:47 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8722.021; Fri, 9 May 2025
 04:25:47 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 1/2] drm/i915/alpm: Make intel_alpm_enable_sink
 available for PSR
Thread-Topic: [PATCH v3 1/2] drm/i915/alpm: Make intel_alpm_enable_sink
 available for PSR
Thread-Index: AQHbwCPwuePdjyr+A0e0Uciq1lwrB7PJs9vg
Date: Fri, 9 May 2025 04:25:47 +0000
Message-ID: <SN7PR11MB67500B1F76C17654E408EB89E38AA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250508141701.3878486-1-jouni.hogander@intel.com>
 <20250508141701.3878486-2-jouni.hogander@intel.com>
In-Reply-To: <20250508141701.3878486-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB7954:EE_
x-ms-office365-filtering-correlation-id: 53dfb954-4a04-44f2-5e12-08dd8eb192a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?cWNYa2FiT2pyNWxUcTV2d1RoQmxZdDZlZ1R2R29MRjI5RUwyanUzODNhL3Fm?=
 =?utf-8?B?Y0tiV2toWDUyVkJGaWVld2hneUxzVFZocS80VHVmdUFYNFBWWFJPWDhmYTU4?=
 =?utf-8?B?MnVGRGVxc1BZcU9qN0s1cUNaNmQxNGV3Nld1VmVCbEczR0hlTUFtU2JTaU9o?=
 =?utf-8?B?TWxheW1kemlWeUZ0QmliK3lNU1pEWDYzRllxTEJ4TnZhTUZtL21Yamo0T0t4?=
 =?utf-8?B?eGNGcm5KZU84R285SjhiK2R6Z2NaQ0l1cUN4WlpqOWt0QkV2ZjZyb1ZGRFdx?=
 =?utf-8?B?SWJsWnVraEtCcktLcTVlbWU1SmpxQUlDYUJxZERqalE5bkcwRVNkWitEOC9G?=
 =?utf-8?B?ODF2V3ZjdU5qQnVyV0NDN0VoZVpmNkxpeWNRR1o5Z0JvNG95V3QyL1UxMzVi?=
 =?utf-8?B?L1M0emdwcUsyVUhoelNGQjNqdUcvM0lWZ1VGWU5XVVdncVJWSjZ4RFIrSXJ0?=
 =?utf-8?B?dC9LSEJkcUlrM0cwUFpyVVA5VHFtbjRCT3JYSDFvN1h1VW9OZlFJMmtDZ2hi?=
 =?utf-8?B?dGdGNTloNzBmQyszWVZXclkxRXU4OE5FTW1KSmJBSW5BK2thMFVmaWNLc1gr?=
 =?utf-8?B?cXU1U2orUlVITFpVZU54RGptUmRrbUEwTkdYMkVVUHJ0TWN0RTc1OWRzZElv?=
 =?utf-8?B?YktKVDR4UXYvQ2c4N2M5elFha0FlSGxaUDM0ZkNaNUpNU2NGR3kvbm5iMlhU?=
 =?utf-8?B?T1V2SStqVGpwSTh4SzRnT3piNzUrTmRrSVVzQzhxS2NER1F3dHRaLzUxeFo3?=
 =?utf-8?B?Q2JyUWdIS0MyV0JDUFc5OWpGNzdxLzNwaG93UHdGMlFtVkk0VWhpcUx0eERW?=
 =?utf-8?B?ZFdRNk82akhycWRyamxoa0dGVUQ5L09Ma2grZGJEaVlLaW8wbHYrbnRYQ2Rz?=
 =?utf-8?B?cUd3dHNJdFFOcEhNV3JKZHF5MjF4L1BvTFNZNkUrRWc2NGRsMDZRaTBFay92?=
 =?utf-8?B?c2wwaHlKbWhjQXd2UTNqYmIyblNKaFNSbDBORlMzVVdGQlU1YnQwVUdrZ1Nw?=
 =?utf-8?B?M2h6Wm1kMW1qbWh1T2l3TmNuYmxlRTl0L0NJdGRmeEYrUWpycFFjS1haSENl?=
 =?utf-8?B?VmpOSEhrZHZBNnlidUE5RVEzY09jWDVYcjdubFo2V09EdUcweXd3aFg5VUR0?=
 =?utf-8?B?cFVUL1paUFRLd202N1VCajZkTVlEek9IblIxZkZ0VHVqa2YycFBEQklGa0ZX?=
 =?utf-8?B?SlpCbGpjNUw5Tyt2SlBKdngwSTlpWENydHlsVEsrRGdNOEFocGFCWDh2RjJQ?=
 =?utf-8?B?cS9zd09tZGRyQ0VBZGFkaGtxbDBCWkJUbTVhQ25BM2lWU0xtMEdnZ1VBRkE4?=
 =?utf-8?B?SHRkaGlUb2hrUzRnVkVNWlZ6NndMbSs1bCsvZmdGTWM3Rmp3RmNER3ljcU4x?=
 =?utf-8?B?cDc1bUFsWGFBSVlkK0pRTzdLVHJXSFRzRWxZckVxQTJjRkl4aUxPVXUwY0p3?=
 =?utf-8?B?YjNyUklHTGJ3allHV2p0bThJTElYNlg3TEVPelFWbThmSWJLNDVSVko1Q3Zx?=
 =?utf-8?B?VmoyVzN2d0tDVnI5R2VZTEFIWm1qR0xXNmEyOFJJenF6S0lJQnYva3lXQzkw?=
 =?utf-8?B?aFdmN3Nwem9YYmZRczdjT2xPZy9MV3AwWWZZMFFpaWZBTmQ1YVJ4NlQ0V0N4?=
 =?utf-8?B?ZzRrYkR5QVpQdkxDUWhNdjRzdVlWUUhlL240SUxQRnJTcEhPaDNDL2pZSVFN?=
 =?utf-8?B?aFdWWnFJSUttOXhVd3Jxek5xYUtSNzFCd2R5dWRvZmxOMFdlREVSM1IxYXBO?=
 =?utf-8?B?Rk1VRVdLaFROZ3pTZFJsbXUvM3ZpTWJKRDlKT1NqRGRjcmQ4NlhSeE9hanNw?=
 =?utf-8?B?SmFpTVVkdW9PaDVNckJ0NG1ZVjhiWlhKTHZOM2pITW9KL1VHL0pGSVZRVmc5?=
 =?utf-8?B?WDUwNHdqcmJEVkVqOG9nYkRNbi9KWXIxOXBPOHdBa2JCelpVSUZ2Qm5WMmdM?=
 =?utf-8?B?cnlRZjJoSGhOL3lPSGpFN0l4VUpwa2FjSU82VFlnbzN4eEt1djUrbGpBTURa?=
 =?utf-8?Q?zWXL6kxCkjwxrMl+yRI96zs3W8NERY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjV3RHRHVStTd1BTYS9VQURTZXk3eWdrcTZacFFqRXZkTnpIb0U2NzN0Z3Zq?=
 =?utf-8?B?WXRuYzVjeUpvQmFldHNrc2hWTDRhM09GSGRtSDNSeW8vWXFrZ3VQVkQ3SFUw?=
 =?utf-8?B?dlY2eDhHamhFd1pPRjRHYUZEQ08vZmRCelNLT2ZYSGlsSytsVHVGK2pwc1JJ?=
 =?utf-8?B?aEJZK0o3QWV6SmM4TnRaQmZTMHdXSFh5Myt2QTJ4TU1RQTY4c3poa09qQU9G?=
 =?utf-8?B?UkpkcDZvK0M3aGtvL1ZKNjdzY1BqbW14WkZsT25HdWliL2lhVlRPeEtQTEdh?=
 =?utf-8?B?UWJJeDA4UTUrWHgyRElFUFlvMGpaK1dYdmFhYXZTUHpCTm56MFdvWllVWSs5?=
 =?utf-8?B?My9RWDhBajZEeFpiWjVsUmJ5dDFSeHpxbzJnTDJ2R0pTS2o0amUrUk5NV2ht?=
 =?utf-8?B?SkJ6dXNoczVsQWtSdjVUZDN3QTU1QjM2b09VRFdsU0psZlBjZzNYZFpzc29z?=
 =?utf-8?B?cTJVRVBlZGtnb01WSGFiRzFWSFkvNnRvWjN4U1RHczBFVjlQOTZGdlN6NGp0?=
 =?utf-8?B?MVUwRDl2NVVaQXA3MHBqVGRzKzBVM1poQyt2WmphemJYL1MxVUsvODNrN2g0?=
 =?utf-8?B?VUxrRGNtdzlRYW55QmtrV01jL2hBOXhhNEJLRWNKeVRtSUdNK3JJK25ab2Fj?=
 =?utf-8?B?QVNBRHh6UFI0Q3hRanQ2cW1rcHUvaGpwSzliNGtKSzlVaUJhOU5ZZ1oyd2VX?=
 =?utf-8?B?WjF4V0tId3FadEhYM2NYTjdkdWpISXN1cTgrR0xZWlF5VHBZMlJwR1N5RVBv?=
 =?utf-8?B?RlpYclJRRWJrOGgxUENxdnR2QmpSc3ljUEdXOEhLUFhaY1pBSmsrZi9aNnE5?=
 =?utf-8?B?emJCWnMxcjk4dVg1TDM4MmdBTkkvcnFwNlpMMTR5VG9lUnp5eXlLVUY3L3lJ?=
 =?utf-8?B?QStIK1JnVitnRnRESmpGcXhjcE1TUnhUb3JsN1dkOVpRdFhNS2JkSTFLU0Y1?=
 =?utf-8?B?cExUUktuS0VNbHZOUW53MGtUT3ZmR1VyQWRVMkxibUZCRG12bm0wMWVuTkZF?=
 =?utf-8?B?V2FZWU5saks2NGZTZU1CWGxtRDFCcURUY1Zna3dKcGkyMmZFWDdIMnFQL3Y1?=
 =?utf-8?B?Uk1oeEpQdFZNNmRzRXRpTkRmREthc01vdUlHS2xZTlB6QkRvcGZEbFc0cXFx?=
 =?utf-8?B?ajlsQUQ5L2IxSS9LR1RSZk01cldqcVhENmovY1pvLy8xc1Y4SThmMjNQOTMx?=
 =?utf-8?B?VXRrV1poc2FsdW5RbzhNNExBM0Y2NyswODk5cUNmMUhTekEweHVXQVVuMzdP?=
 =?utf-8?B?NWwxdVFDRHJwazNmT0FETFZ4U0JBbENqRmpwNUlFaVRUd0JuNmxNb25ZL3Vi?=
 =?utf-8?B?QUxsd1NRRk5hOWdVZnJWOWxmTkxncTJVMTlDa0hWbEEwRS8vWWFZNVhqUFBK?=
 =?utf-8?B?Y3V6VHZOc2JMa2V6U09HSVc3OU1pVjlsMkVMdFhzckNtL2RvMjhXOXJBQVhs?=
 =?utf-8?B?VUI3eC9WN0hQVlBVeHhVR1RtZ2VjcnIyc1dOSVpCT3FJazRaUk8vUXZqRG1C?=
 =?utf-8?B?UjBLeDBrdElua1B2WkkyOHNxSHpWMStWL0cxc3hTblhCZDhFbjhvVWlIcHdV?=
 =?utf-8?B?Tysrb2diV3JXdHRYdW5WM3NBcDRSRkx4ZlUrY0JRQnZoSGI2RE1ZRCtpV2th?=
 =?utf-8?B?bisrMENoZ2JXUjFNRUhjc3NLbWp0Q01iclB4OExpSFk2OFR0VjNqODBuSHpL?=
 =?utf-8?B?YXpUQ2R1aHdMRWhCWjc3QnBDbHJuRmtGcVVWaTVNbXdNdFNlem9WMUc3UXBO?=
 =?utf-8?B?Q1NaZGg0YXVoMGtKNzJxWlRHMFNBTkxrNHRmSjRValFOUFgrUG16S0dWVzRj?=
 =?utf-8?B?VlMwRG8wZGRVZDl3Z1RvcVc0WXc3ckxXSDhHb2NpSlJscC9Fb0RTN2d1Q3o5?=
 =?utf-8?B?Ti9ZSkJWK21vcGRLcnFROVBwbmliQnc0dTc0dzRGaksyWndvamR2MWdjZWhE?=
 =?utf-8?B?UGxvaSs4WGVmWEdNMkNra1RKVGMwWUhPQ0hpWDRMSVBGU0xtREFWY0wxaVZL?=
 =?utf-8?B?d1VHS1ZlSm9tZ0lyTFNQKzYxaEIvbWlrRFlwcmVIbjlabzhNK3hIK2R4WmZk?=
 =?utf-8?B?THpvWDdocmR3N0VLRXdKT296T25talFIR0hNS3gzUCtLdE1qUHB6NnYvZEYw?=
 =?utf-8?Q?FcQg16XW/m30zzLUmvH0levAy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53dfb954-4a04-44f2-5e12-08dd8eb192a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2025 04:25:47.6619 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t4UCrBe7nnC8eXikTFvC7j5EsXRtCBiC388sXNzbn1fpyysGGRbSQ0VInIqB/NkFsdELLIFAP6kFh0KxZ/8WOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7954
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBNYXkgOCwgMjAyNSA3OjQ3IFBNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhv
Z2FuZGVyLCBKb3VuaQ0KPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBb
UEFUQ0ggdjMgMS8yXSBkcm0vaTkxNS9hbHBtOiBNYWtlIGludGVsX2FscG1fZW5hYmxlX3NpbmsN
Cj4gYXZhaWxhYmxlIGZvciBQU1INCj4gDQo+IFdlIHdhbnQgdG8gZW5hYmxlIHNpbmsgQUxQTSBm
cm9tIFBTUiBjb2RlLiBNYWtlIGludGVsX2FscG1fZW5hYmxlX3NpbmsNCj4gYXZhaWxhYmxlIGZv
ciBQU1IuDQoNCkFkZCBtb3JlIGRlc2NyaXB0aW9uIGhlcmUgc2F5aW5nIHdoaWxlIGF0IGl0IGFk
ZCB0aGUgZG9jdW1lbnRhdGlvbiBmb3IgdGhhdCBmdW5jdGlvbiB0b28uDQoNCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgMTEgKysr
KysrKysrLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmggfCAg
MiArKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YWxwbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4g
aW5kZXggMWJmMDhiODBjMjNmLi45NDQyNDgzMDU4ZDIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC00MjYsOCArNDI2LDE1IEBAIHZvaWQg
aW50ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiAgCX0NCj4gIH0NCj4gDQo+IC1zdGF0aWMgdm9pZCBpbnRlbF9hbHBtX2VuYWJs
ZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IC0JCQkJICAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICsvKioNCj4gKyAqIGludGVsX2FscG1f
ZW5hYmxlX3NpbmsgLSBFbmFibGUgQUxQTSBvbiBzaW5rDQo+ICsgKiBAaW50ZWxfZHA6IEludGVs
IERQIHN0cnVjdA0KPiArICogQGNydGNfc3RhdGU6IEludGVsIENSVEMgc3RydWN0DQoNClNob3Vs
ZG4ndCB0aGlzIGJlIEludGVsIGNydGMgc3RhdGUgc3RydWN0DQpOaXQ6IE1heWJlIEludGVsIGRw
IHN0cnVjdCBpbnN0ZWFkIG9mIEludGVsIERQIHNhbWUgZm9yIGNydGMgc3RhdGUNCg0KT3RoZXIg
dGhhbiB0aGF0DQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRw
YWxAaW50ZWwuY29tPg0KDQoNCj4gKyAqDQo+ICsgKiBUaGlzIGZ1bmN0aW9uIGlzIGVuYWJsaW5n
IERQQ0Qgb24gc2luayBiYXNlZCBvbiBpbmZvcm1hdGlvbiBmcm9tDQo+IGNydGNfc3RhdGUuDQo+
ICsgKi8NCj4gK3ZvaWQgaW50ZWxfYWxwbV9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLA0KPiArCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQ0KPiAgew0KPiAgCXU4IHZhbDsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5oDQo+IGluZGV4IGQ3MTI2ZDY1YjYwZi4uYzlmZTIxZTNlNzJjIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiBAQCAt
MjMsNiArMjMsOCBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAgCQkJCSAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubl9zdGF0ZSk7DQo+IHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpOw0KPiArdm9pZCBpbnRlbF9hbHBtX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+ICsJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpOw0KPiAgdm9pZCBpbnRlbF9hbHBtX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJIHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKTsNCj4gIHZvaWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gLS0NCj4gMi40My4wDQoNCg==

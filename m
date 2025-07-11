Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 031B0B01446
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 09:18:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9BE10E9B6;
	Fri, 11 Jul 2025 07:18:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IiSsG4Y/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BCFF10E9B5;
 Fri, 11 Jul 2025 07:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752218331; x=1783754331;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=a7EbyTHVD36MYA4zNUyXKBqdkWdUZ6EiuN5fiqeQDsg=;
 b=IiSsG4Y/7lea/wt5RXr+bUBXin+jvEWQJWruriUrA070GG79uaaKNvz5
 AezOjRFsqsEFBjg/FIEeb6A5sKMTlsPL+ayC5eRCs9hdyV0FW3NzfzAT4
 oZmHfuha0Di1KtZ/tHMylAYYC/gsgX13TO55llxe7cctUWFc57OczU0ga
 6wzUahtVYZDMTWqZ9tNbReIX0W9uNFXyU/vVj/gdEbRORTzduHdZ3vOeZ
 DlG77uXu7AlrLdaxDcPWeKC136LaaExPnKg73EsN262T+x5VnGed5Ai74
 lG8Htwyow8ocvIdgo8DxRpzamyg9Jzk+s1tTn5BWsgUkEjQVDBrNHGT/6 Q==;
X-CSE-ConnectionGUID: hmsZSMGAQO+rUVGxWoG7Pg==
X-CSE-MsgGUID: uqETLScdQjig5G8O/5WOxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54483868"
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="54483868"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 00:18:51 -0700
X-CSE-ConnectionGUID: t3ZlhR1QSM+2xUrVOW6DLQ==
X-CSE-MsgGUID: SuHDdbx5QKOL+LbRNJOoHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="187299703"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 00:18:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 00:18:50 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 11 Jul 2025 00:18:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 00:18:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ae4JPPg40epDi3TY6javfJ2LJCod+qNMSCgeOPMBotkh5di7mM5hxsnsp/Ep+c7osIPreQZhfJaoyh4Tt5Pop45nCgSHIJU6j0io7WYGfNtP4nuqfZNUqkz1ugEMYOzIftzm7NosDxfVGfhlXjbD7mfygGKyskhGTCKvtYPU4ScyokjiprAlKqlVTXA4sBpFYSN9mpY+2YRXC4zdRHRdhxJVbSBq6OoTwtA0Br24WfNiMdCmRWX9/yDHFhNa7drERYJ18MgbWp6+kdeim/uXSf7iSwIYc3vZLfWxS8YUiQk5fKrRlGCvPGNVCq7BS0KON0m47/yLBMAd1T+gcQX1vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a7EbyTHVD36MYA4zNUyXKBqdkWdUZ6EiuN5fiqeQDsg=;
 b=eGovvxCNVCHS38VeczLXma39pS/pSsS6lhc6sy7FCYnBk4A9SZyo8fhTEhZ6g4WvG1VjK7z8lunJguDg853BEJGPlzQdtbNvDB2iAzTU0uujrBBn0SGKIyS7/zEmNK1J9uty/T/xov1aGMmUz+3qSA9ynoS9XUdrlif8xmWcjKRLJ2i0Dex9m9NYqupqrs4S9YBftoBhP+4/80MEZ+7xS+3ul/V3/ovu7ewYMvTro1pIw8zbdgN98Jlp6WfNWZKOQY0uL7ZRzL6uOLHaHyHcczpOmHZsb0V/ZUkB3v4r3zXHUh8dji1L3ZXL6txucLJP3dK55eKYEBlFJszjN/YfUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7788.namprd11.prod.outlook.com (2603:10b6:8:f5::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8922.25; Fri, 11 Jul 2025 07:18:48 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8880.021; Fri, 11 Jul 2025
 07:18:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Thread-Topic: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Thread-Index: AQHb8Kc9L1K5oI2goUG+8WAYnsMpTLQqBX0AgAAS7ICAAWjgAIAASo0AgAAVqICAAKVJgA==
Date: Fri, 11 Jul 2025 07:18:48 +0000
Message-ID: <bfd2a993abf227b39106747984c8776f32a30f83.camel@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
 <aG6g5C-nUMPqYSzS@intel.com>
 <e4f4572425562c23117710d538ab2d8f377bc1f3.camel@intel.com>
 <aG_ffKlueD_8fx2E@intel.com> <aHAeBsRCmkI6QZCv@intel.com>
 <aHAwMfaR97nWqu5T@intel.com>
In-Reply-To: <aHAwMfaR97nWqu5T@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7788:EE_
x-ms-office365-filtering-correlation-id: 83485add-2dee-43c0-276b-08ddc04b2e2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?UWdydXp2TVJoT084RGxOWVZBQVJKSUszM0tPRTZOeVBTRTZVRUZrRk5Ed3E2?=
 =?utf-8?B?ckQxQnJnRVFRaWFrUDN1Tk1aQVhPbzl3ZjcxSDNpbXhkdjRmbE1QZUJQYWNV?=
 =?utf-8?B?bUZMcUhqOEU4RUxJL0RDQlY0a1RLN0RmVG5YMkJib2xJUm8wcDcrVWVWd1Bj?=
 =?utf-8?B?NW1JZk5uamoyL1dRUStjVUk5N0RnbVkwUjAwNnY4RUlOdUFrakxxMnc2Vy9s?=
 =?utf-8?B?eG5ac3Y2MlBNMzF4WXRXTDNxL1JJVmdaZXhERUpZRGdsRmMvaWsyZ01BRjVC?=
 =?utf-8?B?ZXJTYkNkaVVnb3NacnlDYlEySzd0Um1OOFErMnpLRncwa0ZQRlAyZnJGY1ND?=
 =?utf-8?B?R1pHdHBnZGgwcHlCYTlYMXZFTnpUdFkxUzlkdWREb1JYaUk4VGNkaHlLRHE3?=
 =?utf-8?B?R1hhUXRSQmUrTURPL0hNRk1XRE14RjU0TWVwM0JqL28xWDJpVVVCSldKcGFY?=
 =?utf-8?B?bzZCbXV5S0lML055cStNazRIZ1hSbmIrZ1VPYUFPUm5FU3dXZWU2Y2FGL0dn?=
 =?utf-8?B?VjR5UnF0UEFGUmxRS0xNUU9pRjNiTVV4S0tIUlF6eTBaVWpzTGw5Q2M3UnZR?=
 =?utf-8?B?RTZEc08wemZKdDd4Nnc0SE9tM2ZWT2xXVDBhSjdLaHQ0WXp0Y0pFMXd4NkMz?=
 =?utf-8?B?RVp2N3QrSHQxOTRPWFU3Q1lPSnEwTCtWK0FKRVhoY3BCVm1IZVlndWhEczA4?=
 =?utf-8?B?eUFUb3A3OEhSeUxrYTFwNWtCVHFUUFRwdU9qL2d6dTFibFZTRWw3OGEySFdD?=
 =?utf-8?B?bDdSc2UrYXZUd3BHeFBlbldOV0o2WDRRVjBNV0VCVy9TbW5XNEtUdzl0Tkxo?=
 =?utf-8?B?ZHNRM3QrRzFLM1Y2bjNSS0d5anV5L2d3TFg0L3lNQ01Na1VwT25KZ05oTmRp?=
 =?utf-8?B?UHJya3RXd25IRFlmbXYyYjFhS2pNNzRjYUlYWVUwNWR5Q2Q3SkJHVDBsS3Ja?=
 =?utf-8?B?RWxMbGpBNnZTQWZTcGVnUCtxNWZnVzB5Wk5LbUdoYjNCaWV4RGIvNFJEd3cv?=
 =?utf-8?B?RVZQanlpcWgzNndOUUpzbmZXbXJWUG5VZENLSC9XQWhnYjR4anlrZmJMYzZk?=
 =?utf-8?B?bVdGcHRQbWxYc3VsUmNXY3Z1RVVCZmdxanNDZENxZENISllVbFJvNHErNWYw?=
 =?utf-8?B?WS9CK09jN1Y0bHVlZ0N2WW1xRjE5Wll6VnFpblhxQ3U4WFBQRm1WMDFjNXBh?=
 =?utf-8?B?dWUxa0FJSXhMNUcwd1JpUi9MV29nNFdrU1VRdkFYVkhxWjNOdkJBUC9Cazdi?=
 =?utf-8?B?VkxCMGxheTNmM3Y1ZFp4VjhSY3gzTm8xRC84Vmgva24vSDVybktqSDRIUUVB?=
 =?utf-8?B?RVVKazh0WGhUUzhXR0Y1bWRJVGJWUHN0c21IbERUR010L3RGSWJHQzh6NEIz?=
 =?utf-8?B?Yk8vVFNCaVFzZ0VYUmo0VmZocjhqOUpuWUpiNFdrY3N1ZFFWMmZKdE8rQmlZ?=
 =?utf-8?B?N1VmRWRuUlEwaWxaY1UraDgvZStoSmVrZ2JrMEdkbEs3QXd0NFpnVzUxU1FT?=
 =?utf-8?B?OXVjUjV1d1hRQ1pEejlSVHRpalBoYmN6VUNoYlBEZXBsRzl4MnMwN3orZHlj?=
 =?utf-8?B?VmdBZDEwTStOa0VvQkVJSFpmVU8wT2FqaWJPQ2VHYWFKWjdrOGpDaXNEaXFq?=
 =?utf-8?B?UitMZHN6RGVYL1RGOEpXSXFJYWRLUlRuNnF2b2RHaVFyck9wdWFVZTdRRkdj?=
 =?utf-8?B?R2RjUHMvV2VuNDdmdzY0SEh1WWFteWpUb1Z0bDhZYWpsbklKdHQxUWZuY1gx?=
 =?utf-8?B?TzRQTjVFQnIyUmNIN1JWM1Y4NU1DZG5LU2tsUC9DcGhuRXBzMlpEQzhvU28w?=
 =?utf-8?B?R1ZURmVQMit0Ri8xczBUL0FNSC9MKzhDL20vTWVaOXI3alZHM21SVUpwL3VE?=
 =?utf-8?B?Sk52QjlCY1NEbkRCUGRkbnB2REV2cFZRNXVQUFJNQTdoNGxJU3NXcmJiQVhI?=
 =?utf-8?B?THI2d1lIUitkV3pXUGl2WFhFNHRMVHZLMW5ZUnRWWm16VktyUUdVbGNES2oy?=
 =?utf-8?Q?hdbLWAycZbZnRfNqf4+vVSz5Hl1sHI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K1g3dUFFQjlkR1RUbjJMZXhkWFpsVHJ4ZWc1YWF6SDUwWk9JNFcxTzMyRDcy?=
 =?utf-8?B?WVpyV1hVTEpyYk1sYlFXbkE4OFlHU1pWOGRSRmFpSm1sY1BFRFNFYVAvTldW?=
 =?utf-8?B?SXhrMFRoZDg4SkczNkZ3RzNpc3Y3NWoxNUVuMWwzR3NYRGR4b2dHeGx5ZE1I?=
 =?utf-8?B?eElpZUlzREVMd0RkN08vb3g1d3pqVlp6Mi9BUWw1U3I0SmtzSy9wYW1kUW9L?=
 =?utf-8?B?UE1HdjdsaXc3MHQ0ZlU5VlE4eHRpSmdSYzBGdlBIbVFGVVUyWGpzbGFIVzI1?=
 =?utf-8?B?SDNveVVQRWVEM0V2TXhWVG8zZlNOZG9YUDBkbWV5VW9Lb2NEOVpLNEJFTFJk?=
 =?utf-8?B?dERrUGFEZXNacXNRZnZCZURDaWlKVGs1YU1KR3BFVkVYazc3V0RYSlRERTFZ?=
 =?utf-8?B?a2UxTGg0bHFHVlFrT25UYjdIWHRWZVdZSWNpdFJBOC8rc1kvTEpzaEw3bEls?=
 =?utf-8?B?elFoVlRYb0tDUnphcE96K3BEU3d3MERUWkJpVGx3bTBwRithWkppRW8wczdm?=
 =?utf-8?B?bzJRQ2ZVNGthdXFidVVPNGZ4SHRDeHRQZUt0SnNETW5vOWZkbml0dkRYdVV0?=
 =?utf-8?B?SkNaaEVjeTRsaktmMDNORDVDTnhZV1R0R3RYeGtLTndZRG1yRXVUYVFhV0Qv?=
 =?utf-8?B?TzZoTXhRZWFoRjhEMDQ5eWlOT2kvWFNjemdWSWt3Vk5LRVA0TUpORThOekxP?=
 =?utf-8?B?UDVIWjBtUTBBaEdFNi9PemwrZzVXdTVEQW1FbG5oTWRBTmFnUFUwUms5YWZX?=
 =?utf-8?B?YVc3eFlxeHdBK25SUDFkSlkzUXN3LzFmeUJJclJjQzRQVis0Y3MvOTlVdEFT?=
 =?utf-8?B?K0VIQzREeFZpeDhzeVUxZlZ2bFV5Tk9RbmtSMVBMT3dhYnJWUVlZWXhCQ3VE?=
 =?utf-8?B?MW80YlI3L3JwZjA1VUt1Uk9sRVU0QUJrS08wYUlYd09xdCt1TnlXZkQ3RnBl?=
 =?utf-8?B?WG1Fb3lOeEpOMElHV1RPYWgwVm9vNkhXUU5HdUlwbUNpUGpwaU51eHRCWEtn?=
 =?utf-8?B?K1IvRXpiaXVhMnVvanBTQnlwYXJpSW16MFljUW5OSVBxT0FjRmZmeTdCVGw4?=
 =?utf-8?B?SEZZb3kraHBtU0wrQW9tVlVvdkUvOHJZdEJTOGVVWEFCdk5DbTM0M3lNV0lX?=
 =?utf-8?B?QjBwUVlkODZsQWZmZ3BkeTFjZjlvYTFkSmxGTDlUYWNEV1dxbnpnS05PS3FX?=
 =?utf-8?B?SVR0eVp3blgyMktOcElKNWl4TU50aldLYVVHNjcza3NVMVZYUVV0VXhzcUov?=
 =?utf-8?B?cmpLZG5aY0Mya2psc2QyUnRyR1dQWXVFVmFqSDMyTEJXdFpFRGJOWHVaaFZJ?=
 =?utf-8?B?S2dRNDAwazhyM0Q5bEJoN3VBNEJ3MzRCSmkralhFNi82RmJzNlcvbWRYbGlx?=
 =?utf-8?B?WXpyR1FpbGVTVXFVVXhaOUZJK2RVTjRlTnFHNmxkdVNYY3kxdGM4NG9ZcklN?=
 =?utf-8?B?Zk15N01SaytrZjVQSFFlNTZuQ0RSYmNESTNqU3R3d0pNS1JlWURUZm9MZTZV?=
 =?utf-8?B?TjBqSStxaTJ4dXJYbkMzejhpOXlTaTdJWkp1TE55WkdQaVBzVEl6YXdaNldy?=
 =?utf-8?B?cGEwcElmS3lzR1lORzZRNVN6dENyNjBaMzFjbUJpQWRaaFFlM0cyM3J6TjBL?=
 =?utf-8?B?Tk5ZdXlwM0Z2VzZzdUEvczc2cXNKQzcyZEs5MHMreGM5YWV1V3B1YndXU3pi?=
 =?utf-8?B?QWpCVUZRdE85RFFHUVllYnhkMzJBbFFJUCtDQmdWZkIvWUU3L0dISE1UL0dC?=
 =?utf-8?B?VU5NYXErelY4a290M0x4SHFudVBNNDhhalJVK3RNcXpNTXJncTc4VEZsVzZm?=
 =?utf-8?B?WFp3OGVjclpjbWViL2x1ZGhHWXI3cU9vNU1JTTdRTjhZcG1SbHVPbXV4QmF5?=
 =?utf-8?B?THE2dlhEQnBMaEJiNmNUOWRYN3ZZSGRSbHEzZkF5amRBeUtINGhSNWxwdVE4?=
 =?utf-8?B?NHh6WDhUaTJrUHh3SWMvSzFIQzlsUnRIY3ZMdzNnUUFjZk44ZS9keGpXZUlN?=
 =?utf-8?B?dVBvQ3R6SkpkM01QQWl4aEVZMWNTVVNsQ0RkWVhZWmFQZ2dRT2oxaEw0WEpG?=
 =?utf-8?B?ZXRJQ2Z1QncwZFBYY0YzWG8za3V5T2ZDcFllYWo0UVVZdWxFNVBSSkpSeWxL?=
 =?utf-8?B?REZkNWUrUDcraVRwcVdvTi9WUk50RWxRQWpkZ2lJaUZJWUJqQkhVaHkxYmwv?=
 =?utf-8?B?VDhUV01pbHRMaUp4SmxqNW9qTm00a3dTSERBL0dXOW1PWnIvQkJRR3VpOTNK?=
 =?utf-8?B?T0I1ajJ4SUNwS2g2Mk1NQXpLRnlnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8FF7B4E0C75DD1479C70CE9D555E5738@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83485add-2dee-43c0-276b-08ddc04b2e2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2025 07:18:48.6142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S1cNtRajje5331i78cqM83eLUHQf1VFNrSUUTUG6uEGcFoEd5KOJIjCtEh8kBxX4z5UuDRHWWWVMPkRl987iIhU2tCA/jy+TSVggXM2qcKQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7788
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

T24gVGh1LCAyMDI1LTA3LTEwIGF0IDE3OjI3IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFRodSwgSnVsIDEwLCAyMDI1IGF0IDExOjA5OjQyUE0gKzAzMDAsIFZpbGxlIFN5cmrDpGzD
pCB3cm90ZToNCj4gPiBPbiBUaHUsIEp1bCAxMCwgMjAyNSBhdCAxMTo0Mjo1MkFNIC0wNDAwLCBS
b2RyaWdvIFZpdmkgd3JvdGU6DQo+ID4gPiBPbiBXZWQsIEp1bCAwOSwgMjAyNSBhdCAwNjoxMTox
N1BNICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6DQo+ID4gPiA+IE9uIFdlZCwgMjAyNS0w
Ny0wOSBhdCAyMDowMyArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiA+IE9u
IFdlZCwgSnVsIDA5LCAyMDI1IGF0IDEwOjU3OjU4QU0gKzAzMDAsIEpvdW5pIEjDtmdhbmRlcg0K
PiA+ID4gPiA+IHdyb3RlOg0KPiA+ID4gPiA+ID4gQ3VycmVudGx5IGRpc2FibGluZyBQU1IyIHZp
YSBlbmFibGVfcHNyIG1vZHVsZSBwYXJhbWV0ZXINCj4gPiA+ID4gPiA+IGNhdXNlcw0KPiA+ID4g
PiA+ID4gUGFuZWwNCj4gPiA+ID4gPiA+IFJlcGxheSBiZWluZyBkaXNhYmxlZCBhcyB3ZWxsLiBU
aGlzIHBhdGNoIGNoYW5nZXMgdGhpcyBieQ0KPiA+ID4gPiA+ID4gc3RpbGwNCj4gPiA+ID4gPiA+
IGFsbG93aW5nDQo+ID4gPiA+ID4gPiBQYW5lbCBSZXBsYXkgZXZlbiBpZiBQU1IyIGlzIGRpc2Fi
bGVkLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBBZnRlciB0aGlzIHBhdGNoIGVuYWJsZV9w
c3IgbW9kdWxlIHBhcmFtZXRlciB2YWx1ZXMgYXJlOg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
PiAtMSA9IFBTUjEgOiB5ZXMsIFBTUjIgPSB5ZXMsIFBhbmVsIFJlcGxheSA6IHllcw0KPiA+ID4g
PiA+ID4gwqAwID0gUFNSMSA6IG5vLMKgIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkgOiBubw0K
PiA+ID4gPiA+ID4gwqAxID0gUFNSMSA6IHllcywgUFNSMiA9IG5vLMKgIFBhbmVsIFJlcGxheSA6
IHllcw0KPiA+ID4gPiA+ID4gwqAyID0gUFNSMSA6IHllcywgUFNSMiA9IHllcywgUGFuZWwgUmVw
bGF5IDogbm8NCj4gPiA+ID4gPiA+IMKgMyA9IFBTUjEgOiB5ZXMsIFBTUjIgPSBubyzCoCBQYW5l
bCBSZXBsYXkgOiBubw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBJLmUuIHZhbHVlcyBkaWZm
ZXJlbnQgdGhhbiAtMSBhbmQgMCBhcmUgaGFuZGxlZCBhcyBiaXRtYXNrcw0KPiA+ID4gPiA+ID4g
d2hlcmUNCj4gPiA+ID4gPiA+IEJJVDANCj4gPiA+ID4gPiA+IGRpc2FibGVzIFBTUjIgYW5kIEJJ
VDEgZGlzYWJsZXMgUGFuZWwgUmVwbGF5Lg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiB2MjoN
Cj4gPiA+ID4gPiA+IMKgIC0gbWFrZSBpdCBtb3JlIGNsZWFyIHRoYXQgZW5hYmxlX3BzciBpcyBi
aXRtYXNrIGZvcg0KPiA+ID4gPiA+ID4gZGlzYWJsaW5nDQo+ID4gPiA+ID4gPiBkaWZmZXJlbnQN
Cj4gPiA+ID4gPiA+IMKgwqDCoCBQU1IgbW9kZXMNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wYXJhbXMuY8KgwqAgfMKgIDYgKystLS0NCj4gPiA+ID4gPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAyMg0KPiA+ID4g
PiA+ID4gKysrKysrKysrKysrKystDQo+ID4gPiA+ID4gPiAtLS0tDQo+ID4gPiA+ID4gPiDCoDIg
ZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdA0KPiA+ID4gPiA+ID4gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gPiA+ID4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gPiA+
ID4gPiBpbmRleCA3NTMxNjI0N2VlOGEuLjE5NWFmMTllY2U1ZiAxMDA2NDQNCj4gPiA+ID4gPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMu
Yw0KPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3BhcmFtcy5jDQo+ID4gPiA+ID4gPiBAQCAtMTE2LDkgKzExNiw5IEBADQo+ID4gPiA+
ID4gPiBpbnRlbF9kaXNwbGF5X3BhcmFtX25hbWVkX3Vuc2FmZShlbmFibGVfZmJjLA0KPiA+ID4g
PiA+ID4gaW50LCAwNDAwLA0KPiA+ID4gPiA+ID4gwqAJIihkZWZhdWx0OiAtMSAodXNlIHBlci1j
aGlwIGRlZmF1bHQpKSIpOw0KPiA+ID4gPiA+ID4gwqANCj4gPiA+ID4gPiA+IMKgaW50ZWxfZGlz
cGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX3BzciwgaW50LCAwNDAwLA0KPiA+ID4gPiA+
ID4gLQkiRW5hYmxlIFBTUiAiDQo+ID4gPiA+ID4gPiAtCSIoMD1kaXNhYmxlZCwgMT1lbmFibGUg
dXAgdG8gUFNSMSwgMj1lbmFibGUgdXAgdG8NCj4gPiA+ID4gPiA+IFBTUjIpICINCj4gPiA+ID4g
PiA+IC0JIkRlZmF1bHQ6IC0xICh1c2UgcGVyLWNoaXAgZGVmYXVsdCkiKTsNCj4gPiA+ID4gPiA+
ICsJIkVuYWJsZSBQU1IgKDA9ZGlzYWJsZWQsIDE9ZGlzYWJsZSBQU1IyIChCSVQwKSwNCj4gPiA+
ID4gPiA+IDI9ZGlzYWJsZQ0KPiA+ID4gPiA+ID4gUGFuZWwgUmVwbGF5IChCSVQxKSkuIg0KPiA+
ID4gPiA+ID4gKwkiVmFsdWVzIGRpZmZlcmVudCBmcm9tIDAgYW5kIC0xIGFyZSBoYW5kbGVkIGFz
DQo+ID4gPiA+ID4gPiBiaXRtYXNrIHRvDQo+ID4gPiA+ID4gPiBkaXNhYmxlIGRpZmZlcmVudCBQ
U1IgbW9kZXMuIg0KPiA+ID4gPiA+ID4gKwkiRS5nLiB2YWx1ZSAzIGRpc2FibGVzIGJvdGggUFNS
MiBhbmQgUGFuZWwgUmVwbGF5Lg0KPiA+ID4gPiA+ID4gRGVmYXVsdDogLTEgKHVzZSBwZXItY2hp
cCBkZWZhdWx0KSIpOw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFRoaXMgdGhpbmcgaXMgdmVyeSB1
bmludHVpdGl2ZS4gV2h5IGRvbid0IHdlIGp1c3QgZ2V0IHJlcGxhY2UNCj4gPiA+ID4gPiBpdA0K
PiA+ID4gPiA+IHdpdGggYSBuZXcgZGlzYWJsZV9wc3IgbW9kcGFyYW0gdGhhdCBpcyBjbGVhcmx5
IGp1c3QgYQ0KPiA+ID4gPiA+IGJpdG1hc2sgb2YNCj4gPiA+ID4gPiB3aGF0IHRvIGRpc2FibGU/
DQo+ID4gPiA+IA0KPiA+ID4gPiBJIHdhcyB0aGlua2luaWcgd2Ugc2hvdWxkIGtlZXAgaXQgYmFj
a3dhcmQgY29tcGF0aWJsZS4gSSBrbm93DQo+ID4gPiA+IHRoaXMNCj4gPiA+ID4gcGFyYW1ldGVy
IGlzIGluIHVzZS4NCj4gPiA+IA0KPiA+ID4gSSBhZ3JlZSBvbiBrZWVwaW5nIHRoaXMgYmFja3dh
cmQgY29tcGF0aWJsZS4NCj4gPiANCj4gPiBJTU8gaXQncyBhbiB1bnVzYWJsZSBtZXNzIHNvIEkg
d291bGRuJ3QgYm90aGVyIHRyeWluZyB0byBwcmVzZXJ2ZQ0KPiA+IGl0Lg0KPiA+IFRoZSBvbmx5
IHZhbHVlIHRoYXQgc2VlbXMgdG8gbWFrZSBhbnkgc2Vuc2UgY3VycmVudGx5IGlzID0wLiANCj4g
DQo+IGZhaXIgZW5vdWdoLiB3aGF0IGFib3V0IHNpbXBseSByZW1vdmluZyBhbGwgdGhlIG9wdGlv
bnMgZW50aXJlbHk/DQo+IGVuYWJsZV9wc3I9MCBrZWVwcyBkaXNhYmxpbmcgaXQsIG90aGVyd2lz
ZSBlbmFibGVkIGl0LiBBbmQgd2UgcmVkdWNlDQo+IGFsbCB0aGUga25vYnMgb3B0aW9uLiBBZnRl
cmFsbCwgdGhpcyBzaG91bGQgYmUgb3VyIGVuZCBnb2FsIGFueXdheS4NCj4gDQo+ID4gSWYgSQ0K
PiA+IG5lZWQgdG8gdXNlIGFueSBvdGhlciB2YWx1ZSBJIGFsd2F5cyBnaXZlIHVwIGltbWVkaWF0
ZWx5IGFuZCBqdXN0DQo+ID4gaGFjayB0aGUgY29kZSBpbnN0ZWFkLg0KPiANCj4gV2VsbCwgdGhl
IHBhcmFtIGFjdHVhbGx5IGV4aXN0cyBmb3IgdXMgdG8gcmVxdWVzdCByZXBvcnRlcnMgdG8gdHJ5
DQo+IGRpZmZlcmVudCBjb25maWcuIFRoZSBkZXZzIGNhbiBhbHdheXMgbW9kaWZ5IHRoZSBjb2Rl
Lg0KDQpOby4gVGhpcyBub3QganVzdCBmb3IgdXMuIFRoaXMgaXMgY3VycmVudGx5IHVzZWQgc3Bl
Y2lmaWNhbGx5IHRvDQpkaXNhYmxlIFBTUjIgY29tcGxldGVseSBvbiBjZXJ0YWluIHNldHVwcy4N
Cg0KPiANCj4gUXVlc3Rpb24gbm93IGlzLCBhcmUgYWxsIHRoZXNlIHZhcmlhbnRzIHVzZWZ1bCBm
b3IgY29sbGVjdGluZyBkZWJ1Zw0KPiBpbmZvcm1hdGlvbiBvZiBzb21lIHNvcnQ/DQo+IA0KPiBJ
ZiBzbywgYXMgbG9uZyBhcyBpdCBpcyBkb2N1bWVudGVkIGFuZCB3ZSBjYW4gYXNrIGRpZmZlcmVu
dCB2YWx1ZXMsDQo+IHdlIHNob3VsZCBiZSBnb29kLg0KDQpZZXMsIEkgYWdyZWUgb24gdGhpcy4g
SSBrbm93IHRoaXMgaXMgdW5pbnR1aXRpdmUsIGJ1dCB3aGVuIHlvdSBrbm93IHRoZQ0KdmFsdWUg
dG8gdXNlIHlvdSBjYW4gYWNoaWV2ZSB3aGF0IHlvdSBuZWVkLg0KDQo+IA0KPiA+IA0KPiA+IElm
IHdlIGtlZXAgY2FsbGluZyBpdCAnZW5hYmxlX3BzcicgdGhlbiBpdCBzaG91bGQgY2xlYXJseSBi
ZSBhDQo+ID4gYml0bWFzayBvZiB0aGluZ3MgdG8gKmVuYWJsZSosIG5vdCB0aGluZ3MgdG8gKmRp
c2FibGUqLg0KPiA+IA0KPiA+ID4gDQo+ID4gPiBBbHNvIG91ciBleHBlcmllbmNlIHdpdGggZGlz
YWJsZV9wb3dlcl93ZWxsIHNob3dzIHRoYXQgbmVnYXRpdmUNCj4gPiA+IG5hbWUgaW4gdGhlIHBh
cmFtZXRlciBjYW4gYmUgbXVjaCBtb3JlIHVuaW50dWl0aXZlIGFuZCBjb25mdXNpbmcuDQo+ID4g
DQo+ID4gVGhhdCBvbmUgaXMgcmF0aGVyIGRpZmZlcmVudCBiZWNhdXNlIGl0IGRvZXNuJ3QgImRp
c2FibGUgcG93ZXINCj4gPiB3ZWxscyINCj4gPiBidXQgcmF0aGVyIGl0ICJkaXNhYmxlcyBwb3dl
ciB3ZWxsIGRpc2FibGluZyIuIEJ1dCB5ZXMsIGl0IGlzIGENCj4gPiB2ZXJ5DQo+ID4gcG9vciBu
YW1lIGFzIHdlbGwuDQo+ID4gDQo+ID4gQ2FsbGluZyBpdCAiZW5hYmxlX3Bvd2VyX3dlbGxzIiB3
b3VsZG4ndCByZWFsbHkgaGVscCB0aG91Z2guDQo+ID4gSXQgc2hvdWxkIHBlcmhhcHMgYmUgc29t
ZXRoaW5nIG1vcmUgbGlrZSAnZG9udF9kaXNhYmxlX3Bvd2VyX3dlbGxzJw0KPiA+IG9yICdrZWVw
X3Bvd2VyX3dlbGxzX29uJy4NCj4gDQo+IG9rYXksIGZhaXIgZW5vdWdoLCBkaXNhYmxlIHBvd2Vy
IHdlbGwgaXMgYW5vdGhlciBsZXZlbCBvZg0KPiBjb21wbGljYXRpb24uDQo+IA0KPiBiYWNrIHRv
IGRpc2FibGVfcHNyIGlkZWE6DQo+IA0KPiBkaXNhYmxlX3Bzcj0wID09IGVuYWJsZSBQU1I/IHRv
IG1lIHRoaXMgaXMgYWxyZWFkeSB1bmluaXR1aXRpdmUNCj4gYW55d2F5Lg0KPiBkaXNhYmxlX3Bz
cj0xID09IGRpc2FibGUgUFNSMT8NCj4gZGlzYWJsZV9wc3I9MiA9PSBkaXNhYmxlIFBTUjI/IGFu
ZCBrZWVwIG9ubHkgUFNSPTE/DQo+IA0KPiBJIHN0aWxsIGRvbid0IHNlZSBhIGNsZWFuIG9idmlv
dXMgaW50dWl0aXZlIHdheSBvZiBoYW5kbGluZyBpdC4NCg0KSWYgdGhlIHBhcmFtZXRlciB3b3Vs
ZCBiZSB1c2VkIG9ubHkgYnkgdXMgdG8gYmlzZWN0IHNvbWUgUFNSIHByb2JsZW0NCnRoaXMgd291
bGQgYmUgb2suIE5vdyBhcyB3ZSBhbHJlYWR5IGhhdmUgbG90cyBvZiB1c2VycyBoYXZpbmcNCiou
ZW5hYmxlX3Bzcj0xIGZlZCBieSB0aGUgYm9vbG9hZGVyIHRvIGtlcm5lbCBJIHdvdWxkbid0IGNo
YW5nZSBpdC4NCg0KPiBQZXJoYXBzIHdoYXQgSSBoYWQgc3VnZ2VzdGVkIGFub3RoZXIgZGF5Og0K
PiANCj4gUFNSMSA9IEJJVDANCj4gUFNSMiA9IEJJVDEgKFBTUjIgaW5mZXJzIFBTUjEgZW5hYmxl
ZCkNCj4gUEFORUxfUkVQTEFZID0gQklUMiAoYWxzbyBpbmZlcnMgUFNSMShhbmQgMj8pIGVuYWJs
ZWQpDQo+IA0KPiAoUGVyYXBzIGV2ZW4gYml0MyBmb3IgZWFybHkgdHJhbnNwb3J0PykNCj4gDQo+
IFRoaXMgaXMgYmFja3dhcmRzIGNvbXBhdGlibGUgYmVjYXVzZQ0KPiANCj4gMCA9IGRpc2FibGVk
LA0KPiAxID0gdXAgdG8gcHNyMSwNCj4gMiA9IHVwIHRvIHBzcjIsIChubyBwYW5lbCByZXBsYXkp
DQo+IDMgPSB1cCB0byBwc3IyLCAoc2FtZSBhcyAyKQ0KPiA0ID0gcGFuZWwgcmVwbGF5IG9uDQo+
IC4uLg0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+IA0KPiA+IC0tIA0KPiA+IFZp
bGxlIFN5cmrDpGzDpA0KPiA+IEludGVsDQoNCg==

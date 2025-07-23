Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B2CB0EAF2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jul 2025 08:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BACB110E74E;
	Wed, 23 Jul 2025 06:47:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5HJS6Kr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEACE10E00C;
 Wed, 23 Jul 2025 06:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753253273; x=1784789273;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=mESPGe5o4YMaWLkoWr0qMSpyU3Jl8irXNTrf9vqjkRQ=;
 b=K5HJS6Krk+icHMKIbpAfZxzcB29OH95mnOlTLtsimLxIhXS8GBWU7Y0Y
 7eWuSpvflAIoQ73CmMEKoat/FcE5qWwEHjok/+yXsM5uEVxtTAcMXcmWj
 1qR2zSATgMcfpN+pgt447olSggLJSacL6KcMFKSeBT6seXXwcYLjl7oCy
 zdTWgrQK49GkH8KLZRjxuRRZmgIsQ3Xg2XSAJSOeqesm1/oM9ta9crFNo
 xs67/LLEtwKpPJKB6D9URcb+T8Eo2TmtJwX7xoi9d6vtp42d7qp7cA4QZ
 n1mi++szO2nN+jIerVb/w4cRBmZExubtraSh8lDXETFpkmCdtctLWONhJ g==;
X-CSE-ConnectionGUID: QZF2MppLRee6SjZNibqNeg==
X-CSE-MsgGUID: 4n69PG/7ToyGtBSk94/UCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55677759"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="55677759"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 23:47:51 -0700
X-CSE-ConnectionGUID: TmA+S3/zSW2WWcOaPrC9Tg==
X-CSE-MsgGUID: aEiFx5PDS2yLca/Wo9oPzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="163584350"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 23:47:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 23:47:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 23:47:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.53)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 23:47:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=szl3ZfpZivQxNfOlgIZ3/IWd/kDZ2WTPj0BtdJBq4frhoaMQAk1rpwfZtQWwt05YEqmmG49lMUDGCMkBgNGRpkeSF7uC94bal4sWxz5pNCOFEzcnYd9p1hSJlNn2Km4uwo/FwwMZZEcutFk2VMpDoWGYW/vvtM1No/W8QUEmhZEfmSq1F3FBfVaHglsf9wuxmFUmTEmABOClfWY19rx74EgxbzybthfU8+axxwys1VpoXe1ABGqhvH7ClHrCo/BazTqvNg1wq0TM1ws5AX1X7aVEy6pP8MSYzOFL+sqFl7tb/AquBc6cW72nHZKKiIuONEkAAh6Wg5OuCJ/iez60Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mESPGe5o4YMaWLkoWr0qMSpyU3Jl8irXNTrf9vqjkRQ=;
 b=Njb3m/BFT6Su6GGCMt5gmCRc7AE/sQAtHLE6w/C1wir+bLWgE58AdTaTclCNacct7+0zIRhKjLrtuJ4/8mGcweR5I8M8cJplABYPfMrZwi+rNGmFCWIlP1ntIT2AozlOJk0Tr385UWDjswFXOPAMPwihD//pz3oydfBSOa0ERl4G/TEcOtdM/QeVtsMt+f+/tjraio+b4swU538mHrQn7du4pExJAizjU4nKUAXP0KwzBZPDnYRVPXJOD6g/iOSAYARe+nJZJVC2uaRb9y+90Pg3pur5m19IyAwfK2T9ImIPqIMLykqs/2Rq3GEwEcI0Ngsdx2mg6jDMKKnEy5Z1Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB7658.namprd11.prod.outlook.com (2603:10b6:510:28d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Wed, 23 Jul
 2025 06:47:00 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8964.019; Wed, 23 Jul 2025
 06:47:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 4/4] drm/i915/display: Set C10_VDR_CTRL_MSGBUS_ACCESS
 before phy reg read
Thread-Topic: [PATCH v3 4/4] drm/i915/display: Set C10_VDR_CTRL_MSGBUS_ACCESS
 before phy reg read
Thread-Index: AQHb+wgWuMs+1s8ZCEyLEZ97nJZXobQ+GsiAgAEqVIA=
Date: Wed, 23 Jul 2025 06:47:00 +0000
Message-ID: <326f820f6c30c8a702fed8a3f60e370e377f924e.camel@intel.com>
References: <20250722125618.1842615-1-jouni.hogander@intel.com>
 <20250722125618.1842615-5-jouni.hogander@intel.com>
 <175318915385.16862.7590501076190219314@intel.com>
In-Reply-To: <175318915385.16862.7590501076190219314@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB7658:EE_
x-ms-office365-filtering-correlation-id: 1ec9ea25-e9e9-40eb-9a0f-08ddc9b4ba1a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?bE9hVXhKVEJBR1h6T2kyME1DL21zY3FwK1V3NXJuNnpTTXhDVU9wNU01WU9v?=
 =?utf-8?B?ZDJFL1JwNTdBcEI3aHRLbHpWMzVrRUtlbkcwQktJMmhxSVhTU1V6elRkRDNN?=
 =?utf-8?B?ZVdha2s1TWFGZW5KeDBpMjlIUWQ4emRVWTFyajlZTVR3TTdiVm1pUFc5YlhE?=
 =?utf-8?B?aDgyL2swVXRzTTUwRU5uVmxQR3NxRFBNTU1mRWhUU1M4NnVqdkoxTGtrcS9q?=
 =?utf-8?B?bVV3VXI5MkNMcC9CVEh6dzdGQzlhdncvelRCamdmRi9seXh0NXYrWENOR0x4?=
 =?utf-8?B?dDBsbktwbUl0bTRrNytJMHZzWGFVbGJDOUg0T3UrWFV6Y0xtaFJGeVVYL2c1?=
 =?utf-8?B?bmlUV2tEVVJndWs0WnpxUGdzUkV0MkZxdlZwekNwTWdvSGhraXUyL1VkV21X?=
 =?utf-8?B?Q2Z6VUlPY3VOcCthWVBORGUrdmNTRG1LL3FqZWhsVnpwNlVtMjdhVXIvQ1N6?=
 =?utf-8?B?UlFzZTRsZElpRkVvU01YZkhhM3k1T21NMVNTc0E4TUU3RlJKUzQ3ZlN5UE90?=
 =?utf-8?B?U1NvUW9TZHIxQStaeDEzSTBDdWF2ejRZY0o5aFRDYWVmQkxqVHhXWG5rcGQ1?=
 =?utf-8?B?TGNPOG5FRjRhWFlramVFODVCeG1IR3YxekcxU0VGMHhxYVNQYXo4ODJtb1ln?=
 =?utf-8?B?ZTR2U2VmY0V2NlpFWmdIYXhxakpmZ2szTEZMVS81RVZzNlNTZlY5K1NNNTY5?=
 =?utf-8?B?WExXZ2VCbk9jQ1FybDlUUDNvdU1lVTF4ZDd6bFcyWWhmNWxQMHR1QjIxSzVh?=
 =?utf-8?B?ZTMvNnlhY2JpY3IwbkI5NUFhN1hmUFZHSEdYTUFxWGNLbHk3UjNueko5c3FE?=
 =?utf-8?B?azE4Vng2d0ZlME9mSytjNVAxWS9UK1RIaE82TVRNcGVZeG5Id3V4NVdqbEN1?=
 =?utf-8?B?ZkVHbGxyRldlVzFEUnk4OUpYSjJSTlRVR2JtRWlGOGx1NlZJejdDWWhkWkVO?=
 =?utf-8?B?VGgvczJ0Y2MyU2F3VVZvSk9SL3FBYWRYUkJNUnllWmhvUEkvT0FKUmE4bnpC?=
 =?utf-8?B?UjRGMnVXY1F1eTZQcjJabGdqdGx4YkkwcnF6VktERWFxR1NVMEU2eU8wek1i?=
 =?utf-8?B?NXJrYlJkWGt5THVKaUNzMGpLclE2aHM2TWVoSmp3dUg1V3E4TXZiS3djb1RD?=
 =?utf-8?B?Ryt2R0xSRVNZZERtU2diMUEvdldncjFVODlmbExQT2QrWDJQTjA3SHQ4Tjcv?=
 =?utf-8?B?S0UvK1ViR3d0eVRQdjNYV2Y2N1A5dEdtYWpvRGlZUmY3YlgyalV6cVo0Wks2?=
 =?utf-8?B?MitwOEtVMnhUSXhvbzRuWlovZm9WK3RvZTI0SERDSEZIS002OG5PRkM0enIx?=
 =?utf-8?B?dTRZbWRTQk94YUw3K3NGZUFOSHArY2IxQ1l3UHBZYldtclZaR05yaklQWG0z?=
 =?utf-8?B?dVdOZHRPQjNIMTVETzZXZTl3aERERFk4eWR6MVl3Z1BYZDFyRnUzU1B6Q1RQ?=
 =?utf-8?B?bWhpMHkvSUtLbE14RWdRNnIyUzB0ZlNMUkpualFNb29YV1FMNXRITlhtT1Bp?=
 =?utf-8?B?MUlxOWVNK0FKU0RwdnE1L1hiN0lIMlhzejNuSGtwM2RodnJwTTBrVEY3bXNh?=
 =?utf-8?B?RzgrV2w3ZzF1M2tzbkJOeGMwRDgwb0tTZG01ZXowSlFLdGpGZUM5R1RBSlVE?=
 =?utf-8?B?YXJJVTdxK3B6M2NqVllxUEhjQ2pKRjNKODNMV2xWMVlOMTNVQWpEYzF3SWdY?=
 =?utf-8?B?aFNrVlRnYnhOdSt1TGhkOHFqT0lNNVV1Q3hKc2xLN0hpYUtEcEJ6ZUZWSXE3?=
 =?utf-8?B?YzRZdThEU2h6RzlxSWYzZVhxb2RjZXFnbFVDYlNQUFhvUFJRZ0JwajBDUWJD?=
 =?utf-8?B?QmlBa0VQOWd2K0svSXJtMlRadTBPL0tPblZTTnN1bjIxWDJhaXBUMHUvRlVV?=
 =?utf-8?B?T1NZK2I0VGsvUmtzRGZUZlF5TTd2UDl2QWtGSnZXZVpncElJTGdCMWpFa3d5?=
 =?utf-8?B?OUpVOWtBR3FzLzh3RUF3Tmxpb0hkWE81MmhRWTVMcml6QTk0Z2ZUY2dWSUdv?=
 =?utf-8?B?MFJPS2VTdm5BPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGhvZmdIQVlRbDM5UmR5c2k5NXVtaWQzYTVTaDhyUVVWblBXUlY0TFYvUGFW?=
 =?utf-8?B?VS9qejVLNzRtYVZaYk5PcUJSMVMzY0RrZ2V6Si9rdTRVYU5iem9CdmNKc09K?=
 =?utf-8?B?bUxUYThjT1NiK2M0ZElXRUtCU1RZelpST0lDbE9wbGNpUUUyaTBJczdSMW5D?=
 =?utf-8?B?aFdld0t0eGpXVHQxTGRjMTVFdzdVNExla1pLcjFzakhOWTV5d21LZGNvZC83?=
 =?utf-8?B?V2M5RUZvZ2IvTGdGTjZPa2x5SlRhbHZjdXE5RTZaTVZaaGlSTDZSR1RUUFFL?=
 =?utf-8?B?ZkNpbkxkRHh6dksxYWZjUXJmT2ZpMXhZcjd6dEJ4eU9WbmtVdi9VS092Y1ZN?=
 =?utf-8?B?WlBwa25HdTBXeFNaMXliZ3lWNXlJWUpxZ0FrR1dQdWFodExzNG8waWlKRHpw?=
 =?utf-8?B?cG9VMFVHbkpxL3RPelhFTFNOL3pUUFFwQzBVZHFucTdZRkFURGd1MjlmbHpK?=
 =?utf-8?B?YlpkUnZZTHFzdkE2T0xpLzdLZUlpVEhaOStTZkpsaXhsMlhrckJES0pFOGdK?=
 =?utf-8?B?LzY2dCttbVlBZndzWDN3YjZISTlQT3lId2JUMTk0NllVa3o3d05ZSDVoT3RZ?=
 =?utf-8?B?ZjFibDRwZTlURSthYmxKdkwrQzU5aDdTV2d2Vm5RcERaMDhQV0owOWI2WmVp?=
 =?utf-8?B?NU8zd0hDcUYxUmdyOVBGcGdDWmdvYlNmaVNIMEl5SEx6MDNlV0crRGpYbGR2?=
 =?utf-8?B?SkFRY1pBaUt1MTh6UFphVnJXbXg5Sjg0WTllVE9WL292ODNIU05hU1N0T3Rn?=
 =?utf-8?B?TU50SU9BQlFhaENIeHhqa3gzRVRaNmYrZDltL3cxVmt4eW54Q0xQKzFBcDJI?=
 =?utf-8?B?c20rSFRpYzcwRUNvOUFJZlpCbkhmUW8rd3diWlAwRXF0anByVTUvVmlDT1NX?=
 =?utf-8?B?cmUvN1FMWWx2VW5xaFIzTURWZ1RLODNxSGtHd2g2aHpaZjY4VXIrakgwZ3Va?=
 =?utf-8?B?YnBYcHlheVdsMFFydnZQUTBPS2VHelM2bmk5UVM4U0lMc1JBTjZQODFEaXYx?=
 =?utf-8?B?OVF6WThFK2tndWZERys3QllPc05iUVJ2NGVrVlRTTGJ3dkRtKzRnVkwxaDdS?=
 =?utf-8?B?NTEvaC9jVEtnVFphUXUzcjdWTWp2anlNaTlRQ2lIRldtZ3NKNTlSRzN6bEpH?=
 =?utf-8?B?bE0rcytVWGN3Z1pidVBhR1JoR0s0U0toWjBHV2F3eW9lOGNvTE9FZHpsWmN4?=
 =?utf-8?B?Ylp1N3JSSnhlTC9RUlJBM1dRR2tITEpJRDY4N3lCK3pZaEFMVmtoMGorNndu?=
 =?utf-8?B?cjJMYU10akRvekVxcnlNY1dwcHM0dWs5bXBxNDUyb3kzYUlYMExSZTlGKzFL?=
 =?utf-8?B?M1o5OWZJUG5pLzJTT3hFeUFQY1NOcG5Mc1ZTK1R3Nm5EbmU1K3hPVTlWTWhQ?=
 =?utf-8?B?RmF5WUhFdXYvTHZJYXF2Zk14SWtyRmtjVmFYalZ6aDU2VGR2OGtpbTczZGgz?=
 =?utf-8?B?SWdmSkd2eUxsODBua1FuQk0yTkpWbzZOQ3dwWTQ0ZXBRdW5aOHdhamE5Q3Br?=
 =?utf-8?B?NGxyWUcxbW1EdTJuanYvV0RMVVFRT2FhQkNqalVWUGZJWkZqb09qMk9LNThs?=
 =?utf-8?B?TFJzWVA5SWdRSmwyQlZPbGFUREhpNU5lM3VnN3NCZU4wNnRzWkFsTHhtanhw?=
 =?utf-8?B?WFMxUjRwWHdvS09zK3hnNzlibitockZsNk5mclZsM2U0eXpDME5hY0o0UTR4?=
 =?utf-8?B?Z3BFTUl0ekl0d09tcWt4cWJleWhIUGNzUzhvSmZ3S3NMQWloV3c0TjErYXBn?=
 =?utf-8?B?ckhsTmVuUFdKZXNWdkZIeld4SUFYNTI3U1lDWUpwNStoZ3pxMzYyKzQ3R3VP?=
 =?utf-8?B?cG10VFhvVE84NFRTNEJVWHloMFBoZGk1TXpEU0pDaTVEL2pXVW1CNEtCdUp2?=
 =?utf-8?B?Z1k3ejg3ekx4ajFDSjFqMXd3aGplaWNleGNoRDlZLzhVSHIwcVBOYTQ0RTFC?=
 =?utf-8?B?L1Y4Y1RSaGdXeFRleU9XcjR3MUVpVnkvU3owVW5nNmJOUlA5TnhicWtZbmFY?=
 =?utf-8?B?eU9kVlRXMk41WnlUYXl2MUd5RUU5VmpFS2FuOUZhOVRGQm5Ta2t6eWQremN4?=
 =?utf-8?B?VGJWeXByUkwrZTlCQnFxVUU0NWtVQTFYWHNLendUdXlWY0JtbWJQSzcxbVYz?=
 =?utf-8?B?dG9TZllLR01xSjZIUnBVc1RXREJpdkl6YTV3OHBXYjJzUTVTRGxtemJEVi9w?=
 =?utf-8?B?UFcrbkhyWEx0UjRuNFJyU0NhTjBmbVBVUkYwaDBOejRrUDJKZmI3ZHI0bmcw?=
 =?utf-8?B?K1pLOFFoOVJoQ1dJRy9zSEs2VFd3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <32F449BAB85E30478F6EA05BCE41F1E9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ec9ea25-e9e9-40eb-9a0f-08ddc9b4ba1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2025 06:47:00.9496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mzkd+51M1zbdktLaMkJjUYgJWH5QSNtnx60jdzxqAtFebV8zh5G+TuaXSD0a1tx3+jp/ge5jyvmu12EC8lWnwgMz/mx6OgCpV9WcrhwcseE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7658
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

T24gVHVlLCAyMDI1LTA3LTIyIGF0IDA5OjU5IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBRdW90aW5nIEpvdW5pIEjDtmdhbmRlciAoMjAyNS0wNy0yMiAwOTo1NjoxOC0wMzowMCkNCj4g
PiBBY2NvcmRpbmcgdG8gQzEwIFZEUiBSZWdpc3RlciBwcm9ncmFtbWluZyBzZXF1ZW5jZSB3ZSBu
ZWVkIHNldA0KPiA+IEMxMF9WRFJfQ1RSTF9NU0dCVVNfQUNDRVNTIGJlZm9yZSBhY2Nlc3Npbmcg
UEhZIGludGVybmFsIHJlZ2lzdGVycw0KPiA+IGZyb20NCj4gPiBNc2dCdXMuDQo+ID4gDQo+ID4g
djI6IHNldCBDMTBfVkRSX0NUUkxfTVNHQlVTX0FDQ0VTUyBvbmNlIGZvciBhbGwgb3duZWQgbGFu
ZXMNCj4gPiANCj4gPiBCc3BlYzogNjg5NjINCj4gPiBGaXhlczogOWRjNjE5NjgwZGU0ICgiZHJt
L2k5MTUvZGlzcGxheTogQWRkIGZ1bmN0aW9uIHRvIGNvbmZpZ3VyZQ0KPiA+IExGUFMgc2VuZGlu
ZyIpDQo+ID4gU3VnZ2VzdGVkLWJ5OiBHdXN0YXZvIFNvdXNhIDxndXN0YXZvLnNvdXNhQGludGVs
LmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gDQo+IFJldmlld2VkLWJ5OiBHdXN0YXZvIFNvdXNhIDxndXN0YXZvLnNv
dXNhQGludGVsLmNvbT4NCg0KV2hvbGUgc2V0IG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQu
IFRoYW5rIHlvdSBHdXN0YXZvIGZvciBwcm92aWRpbmcNCnJldmlldyBzdXBwb3J0IG9uIHRoaXMu
DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiAtLS0NCj4gPiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyB8IDQgKysrKw0KPiA+IDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gaW5kZXggYTIwMzkzN2Q2NmRiLi44
MDEyMzVhNWJjMGEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jeDBfcGh5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N4MF9waHkuYw0KPiA+IEBAIC0zMjUxLDYgKzMyNTEsMTAgQEAgdm9pZCBpbnRlbF9s
bmxfbWFjX3RyYW5zbWl0X2xmcHMoc3RydWN0DQo+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwN
Cj4gPiANCj4gPiDCoMKgwqDCoMKgwqDCoCB3YWtlcmVmID0gaW50ZWxfY3gwX3BoeV90cmFuc2Fj
dGlvbl9iZWdpbihlbmNvZGVyKTsNCj4gPiANCj4gPiArwqDCoMKgwqDCoMKgwqAgaWYgKGludGVs
X2VuY29kZXJfaXNfYzEwcGh5KGVuY29kZXIpKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW50ZWxfY3gwX3JtdyhlbmNvZGVyLCBvd25lZF9sYW5lX21hc2ssDQo+ID4gUEhZ
X0MxMF9WRFJfQ09OVFJPTCgxKSwgMCwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBDMTBfVkRSX0NUUkxfTVNHQlVTX0FDQ0VT
UywNCj4gPiBNQl9XUklURV9DT01NSVRURUQpOw0KPiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoCBm
b3IgKGkgPSAwOyBpIDwgNDsgaSsrKSB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGludCB0eCA9IGkgJSAyICsgMTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdTggbGFuZV9tYXNrID0gaSA8IDIgPyBJTlRFTF9DWDBfTEFORTAgOg0KPiA+IElOVEVMX0NY
MF9MQU5FMTsNCj4gPiAtLSANCj4gPiAyLjQzLjANCj4gPiANCg0K

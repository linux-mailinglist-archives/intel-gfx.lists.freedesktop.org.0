Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A0DC96DFD
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 12:23:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9463010E3A1;
	Mon,  1 Dec 2025 11:23:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M1yCp4tr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A8A510E3A1;
 Mon,  1 Dec 2025 11:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764588224; x=1796124224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QkxfKKLm5pTTVZALZ4YymcpReTkIhPK+c/4BH+2zPdc=;
 b=M1yCp4tr9OqXO/eTZgXt8ALYXQLwj/ejvPedXO8X1k4CTmNi6gSyAYyk
 LaCVWf4ks4MDZBXJMrulidelMVvcpa1cXk6aVSuN5siV5KnAF8GzZMX1P
 Lf6yVGr2oSO9XS2fK2s45WhjttmUGhDbHFAvIDoaqqL/1dIbWAxio98pn
 ncZXGJ5OU6l6BBe+hosFRtwk7TjNFOieruIbaUG7QUE+2Ojb2rM9Hnos1
 WgvHa6WUluksSTaEMS55DpzxwzqtEPrfmiDXY78en/6Pp7LVOzv8yObZZ
 M1mzL+LNIroZexOUlDi2GIBstPbnt4d2JkzotZ5aBSaAR28JTTtaDz1mk w==;
X-CSE-ConnectionGUID: S1Ogybs7TjOb3gxCil5ukQ==
X-CSE-MsgGUID: t9hM61m0SWKxcgttMAUCzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66413089"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66413089"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:23:44 -0800
X-CSE-ConnectionGUID: 7itmUibzSTy4UUizYFlWng==
X-CSE-MsgGUID: xkWWimNHR8WrcBO1AnmZhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="198520885"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:23:44 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 03:23:43 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 03:23:43 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 03:23:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=szEH8xAQ5TlZriJX+qaGLpbpnqc9cz0gjxMtL/QhtHj1O2J5jrSnuZoXtQHbM1laEawFHvF9AlBRovSmbYU97bQN1KxSjFQ0iEuyLALbV+MMIJJwAkUyD8lE5zF6+OjxfJpaOFDDK7aH39irmlyp9IypnYpMOXUfD5U+D9qwRFqP8u7r9MiYZPvIlTxpAvfdX8GstwBepivgV7z4Mr9xmlzOR301qMNvCGs0LL0bqO59yXgdPg/AILFq5CB0rYalLIfRvLhWPyeINhTsBGzh8MX8+/PLmyor7Yn7ZgQ09c+da4T20Ikqyd/P9Y89a54Hmur0D2I/l8VkNk1sKGqlMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QkxfKKLm5pTTVZALZ4YymcpReTkIhPK+c/4BH+2zPdc=;
 b=CPX+0oTFEGuNuUkm55KqChz41dNdKWxlQzPzbo0oEiMXxhONfVAf36Scfn56JajGAVBTieyQLIDedLHIjGS8iW5LB2GNekeGWK2MmAru2HamvCOlrVj6hndPNAr1pbDVENfnhyIabWRBfBAHY14NzO83noN0wPEAlKSd7mjuyrT6A2J6OSRPDCkfKz6CVy5bkNmW10TwpSNm4looK2SrDvdIYaFji4PjUiiyhLCYhdbpAGyPzp2dJ38p38ARsyFnbxiQRFCn/00iUBaqewMHNUkeAc9Gm3GUrXPpxRZZaChN4IepFbJRk7D4X1YfPzibyyjJf1aywodaINnPDKjO6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5926.namprd11.prod.outlook.com (2603:10b6:510:14d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 11:23:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 11:23:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 5/8] drm/i915/psr: Clear pr_dpcd as well on disconnect
Thread-Topic: [PATCH 5/8] drm/i915/psr: Clear pr_dpcd as well on disconnect
Thread-Index: AQHcWthrXqXSADbP2kmhj9D3AaUe/rUMq7mAgAAIeQA=
Date: Mon, 1 Dec 2025 11:23:41 +0000
Message-ID: <04897dced22b4e0600f952354b998f32cfd9f9b1.camel@intel.com>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-6-jouni.hogander@intel.com>
 <aS1zoYALyiaUezDI@ideak-desk>
In-Reply-To: <aS1zoYALyiaUezDI@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5926:EE_
x-ms-office365-filtering-correlation-id: 914825de-2d1b-4cf4-e0b6-08de30cc14f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Ry96U1BqT0hCMmtMN09JZmZBdWFsajFEdVVTR2taUlcxanpiZjZPam93c3dQ?=
 =?utf-8?B?LzZ1a0l5ZmJieVJuejZVUngwbXNMYmVueWM3dS9Nc1RWdkhicFJKaHExQktI?=
 =?utf-8?B?eEVQL2x6Z3F2V3hsM2FIUmkzdTJMbFdRSGU5ZUhiYnkzM09rRUY5bFZuemhT?=
 =?utf-8?B?ZkFxYkl5eGtUN252Rmx5bnZiZThrbHZrYW5zMlJzemVaSXkzOVI0Tk1obFFi?=
 =?utf-8?B?djkraVpMNnl3Q2Y3bkFqNUMvUmRxWGVuTG5taDFORWFzNi9VSTZ2NmhhbEEz?=
 =?utf-8?B?M2F4Y0tsVGRNOUxTbXBlWmJSRGNRc3Jkc1VPaENIQS9kTGJma1lVbHI3RzhW?=
 =?utf-8?B?Sy80Vk90d3MvTjhkWmdtdzVubDFWYi8xK3JMVFY4RXp2Y3E2QXQzVXlac2FC?=
 =?utf-8?B?VkhLUitlTkNRWEI1VFFDeGxkK0xuWXhDOTlJKzI4VlZWRUdoR3RhVEFsUzdB?=
 =?utf-8?B?c09RMU1zbnZKTXhFV3ZGdWh3R3d3ODBmQ0FsQXNkVzI1dVhOSmlrdDBpdVR5?=
 =?utf-8?B?cU1QRjFtWnJHL3drLzZJNENBMFBZc3R0dGZ0YmhKanVPcE5TekhXeGpNOGtK?=
 =?utf-8?B?RzFVTzUxUmM5ck9wSEtYOXc1UllaTHFsS0pCc3JNTEJOSHY1ZVdnWEVWNGpz?=
 =?utf-8?B?V1dSdXRpamJ5NHd4SHhmVlgwdnpmcWFKRDMzWER4Z1BpZWJNYXNFaEdsNzhv?=
 =?utf-8?B?UWhEbkhIMjl4NE9NVDVDRTlGSkF6ZGFJclVReWRrNkJET0VwTFE0MmdzdVRk?=
 =?utf-8?B?V0RaanJoVFdmc1gvdTVIZ2F3b1hJSG5ZTTdvMEkyUWorUjUyTXgzVnlVaVBU?=
 =?utf-8?B?aW5HeWpoSmFBSUdtY3p5djhLTXJXTUZ6TTZaYXltZFdSM0ErYkZVU1JqQ080?=
 =?utf-8?B?UjA1aVlLdlg1b3JtbVJUZW85Wm00dlhTYVdKeWtVM25KbG1oeE9HZ3o5b1lE?=
 =?utf-8?B?NXIrNXF6RGNMaCtoRWtCWlY4V2E2V2Y5TEcvS0s1WUN1Y2k3T3psdXVPN3Bn?=
 =?utf-8?B?V2JXenNOTEdZZkJLU2Ztci84ZjF4V3F0SFRFMHpBY2N2KzFXOEUwVVA4ZmpR?=
 =?utf-8?B?dzFsc01PVmhUL01mM0loUGJnd1dqWGN0WnFmaERJa0JkWHJsQk9LMWQ4Zkcw?=
 =?utf-8?B?OEIzUEhxMERKb3dKV25xMk1yT0YvYWRnM3hVVU8zV0tGdnFMZm00V2s4aGlP?=
 =?utf-8?B?UFIyU3A1QWVoZE5ROFBHaWV0TXJrcWZiK2o0VTZldERJUWdXNHVwQW1LYzN4?=
 =?utf-8?B?RUgxQUFKNGx5b2d3U1lMZDk2RGxONk4ybE0yNmVXeEJvL3pobTA1RjVzdmFh?=
 =?utf-8?B?RjlxSWl0elRaNlE3Tm5YenVjTTJsNDJtMm5uZmpMOHhDeXpOTWNXSlVCSFRi?=
 =?utf-8?B?RU1SYUxOVW9FejNGVFh2UHJORTJRbDB4QVVtMG9zUkk0M3hSdGVFU2lrdVJR?=
 =?utf-8?B?aVBCU3BvcFZCTW9McnRYRU14UW5zQlpGQUUrY0pZQzBmU3VGL2pzVjk3S3gx?=
 =?utf-8?B?UUV6dWVKR3R5Uk5yQytZZXV5NWx0SnlKM0NoUis2MXlINFkvM3UrZWVwaTVp?=
 =?utf-8?B?MEk3ZmdKVjJUSnpkbktYSk1OdUE0dHJFZHBFL3c3SkZLQmhqUEVBOXY5MG95?=
 =?utf-8?B?Q3pHWi9vMUIwSkVUcVh4cnYwQWlNVkJwOGN0NGJwNjF5ak5xKzhHcTFjcU5D?=
 =?utf-8?B?Uk96bU9NKzJMK3YwQmFZZjFxbGMxZkc1TWRuR0syMFEzQ0greGFYRDAvbXVG?=
 =?utf-8?B?YXcwajVhZjJXbm1yOTZTVnpUOU9CZHIyenY4TlpmOHV1T3dCWUdJU0dJMjlm?=
 =?utf-8?B?bWIwdElqWkpOYlM2QXJhUDNHcFdLdUlLNTR4UHlVYUx6dVI4RTN6U09VRDlS?=
 =?utf-8?B?Tm8rL2kvYmFJeHExQnRXK203S3dKakg5aGoyRkFqSFR6QlQ0TnFiYmY2a1VJ?=
 =?utf-8?B?MGNoVlZFdWpUQklBUHVVbGNXOVVZcm9Fei9Mc0plUHBWUEpYZTlZbmNCa1I0?=
 =?utf-8?B?c2JNS0JEWmVRMnhyZFQrdUF5UkhKUDJOUHdteWlQdTR6aGd5QnUyTWRiMTFp?=
 =?utf-8?Q?Fy0DIj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SitZTVJmbXZyQlVMTlVmQUcvMFllM0RFWlkvcHJwcGI4bTZ2cWo0UDJyaFo2?=
 =?utf-8?B?WWRNMnBOTmNUaTNHVUJwV2x5ejB0L3RlQS9iRG1QRU80ZEF4U0R6NWJ2NXZt?=
 =?utf-8?B?QkVvNE5NWGhTOGtrME0rTzNUQXFBQmNLc0VoT0k4cEphYkN1b3pmcmg3TXRj?=
 =?utf-8?B?UjM0dmpsYlMzcTJtOG5pbmhnekwxeTVlS0ZLc0R4L3lGNnYybnM1aDA3cklF?=
 =?utf-8?B?OTdRMElWbG9zQzdsV3AzY2JUaDBsREtBN0l0RFdhbWZpdEFnLzNoVEJsS0pK?=
 =?utf-8?B?TFl6aE00dERMYnJxajdsV3g2VEdDcmNYUzRUemdoMDE0UmlRTFdydVJWTEdp?=
 =?utf-8?B?bm43d2E3UHVBc0sybFgwcU9sNHdDL3R4UW1paWlCNmdwWERMN3ptVDROM1FV?=
 =?utf-8?B?b3d3TGhEMUNEem55YlNWNnA3QStJbXdFcDE5d3pYejZTY0lwVVYycFFhbXFs?=
 =?utf-8?B?OERqUXlIeXpKR012eG5RSUV3a01GQUFocXY1ZkVheGdEelY4NEJkcWRSS2pr?=
 =?utf-8?B?NTdOWlJjR2YvakhBeGhqdDhKK3pWK3ZUcU1YZUNYYXUwMVQyN2Z4M01wK0JU?=
 =?utf-8?B?T2JaWU1ObnRtZmFHTDQ5RDJQVHlXRnNBNE5Qd2Y1ZElsSDQ2VmN6Qi81bS9J?=
 =?utf-8?B?b1NtRGJyTlJMV0dJQXB0UnFZUW5zRmRDam5RdE0xL3NoYXNKZGRQb216ZWJS?=
 =?utf-8?B?dVMxYnYyQllBeHc2U1JSa0dzaEo2NGpNdUIzZ2hMT0tyRFRwbDlwNEpsenhL?=
 =?utf-8?B?V2RVQTNqRUxnS1FtRkNXQ0UxSjNTSmNqUm1PRWtRS3ZEekRrU3NUM2VhYjNE?=
 =?utf-8?B?M1BnQ3JwZVpuM1JlV0VqSE1aZDNDd0xrazdrMnBMb3pod2plaTFBTTE3bVhU?=
 =?utf-8?B?ZjdBTkUzNFhqQWxUSDVPZDAzNTRzY3BFR2g4TjZIYXdMYmRCbjRHWEQ2VHBD?=
 =?utf-8?B?bGczUVZBSWRoRUQ4UnZSeExrOTc3VmF0L1YwdysyZVZiaHBHUDhXUk9HMVRp?=
 =?utf-8?B?Q0lDQVZxYXRHR0NnUTAzL0NLTjd0QkR4K2dteWYzdjQ4VnNTUmZEWFgySDJK?=
 =?utf-8?B?WHZ5QUFROFVGUUdubi9sSDZVUEg2VjRVMWN0U2ZZM1NnWUdXTTQ5K2Uxd2ZO?=
 =?utf-8?B?eVR1aGp2M3dacWJCRzhJakZabjRQMGNFSDJRVXdMdjZycUgwYlpnc25jSWdZ?=
 =?utf-8?B?cGVSOXl5dlMzK1d2RnZ2ajhVRDJOV1h2ZW1wdDFIUFlQdmpyTXlxSEt2K0tC?=
 =?utf-8?B?dlB1aFpoSksvUzdVQkJtN0hsUkZsTkVsb1JYVTAyS1l2eHcyTE9LdGhHU1NG?=
 =?utf-8?B?NGxCVXFiWU1ORUlMRThudisvWXNzalpaTEVlSDdGVForM291T1ZWYVltbjFh?=
 =?utf-8?B?T1lQekhDajN2WXhuV1N5dVdudmxZTlZha2NCOTdXMTZwMDRiUi9iQ09oY1VM?=
 =?utf-8?B?MENweVlybVM2ejkxNUliOGVYblRaRUoycDBFaUNGU045UkdUdmZRdENOc2px?=
 =?utf-8?B?QkFBS1VzUzI0RUV1emxXWUlBQTd1VzFJLzVXSVdaaHExemt6cVZuTlhrVWdy?=
 =?utf-8?B?T2ZiaE5wbjV4bmFjcmRucVF6TjVwWXlPV3VSK09lcEdwTk9YazNhdElHZktV?=
 =?utf-8?B?QTBKbWNCZ2NGdXFVL1JGN3ZIN3dZRmswUDV4WGdYRlplak5CSi80ei9pMzRZ?=
 =?utf-8?B?emJvc3p0RWJhUktnRFh3eTMxbkwyZ1NIQmNjV3hybC83Mnc3SGluV2F6Zlhq?=
 =?utf-8?B?NlJxbDNtdWRKQTNwK0FSV3VrRHZuL0JZYmtsa1lEVEJxeFRtaXBQSFVad3Aw?=
 =?utf-8?B?REZLWE1aVUNDYjYyWC8xR2RXckl2K2JBbnA1SW5XaHA3YVpXcWd3Uytkdk0r?=
 =?utf-8?B?SjhHa1FXSUlqM2FORmtaSWJnYUtvMzNOSEFzenlyNktyZTNYQ1FQejk4VWlE?=
 =?utf-8?B?WTBMNW5Ec0NYM0ZxZnVKU0VsSi8yemc3MWVnZkJaZlNobUtza09PRGZ1dWk4?=
 =?utf-8?B?QkNmTngzdXNQWnNGRm9pQ2E1cTJCaTFXQXYySXQ2OEd4YkNFVTRVbFZheFhk?=
 =?utf-8?B?Y3lTNzFwS0NUTXdENnYwSGFCK2tQYllKSUFvUjlpemI0SzJVdzhQKzhWVzVF?=
 =?utf-8?B?V3Y4OXNuUTFxZFliUUtpVnhrQ3R1UWZsUGFiU1VocTJGZko1YjJrKzE4Nm15?=
 =?utf-8?B?bHZvT3hWYWpXcEVrb3dnbCtnWFMzME1rN2hLQ3VEeXVnTUNWR0JrTENoaDRV?=
 =?utf-8?B?WUZpdHozYytNdnJQbHpmY1pRTGVnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7B1CF9DA768BC2408DF3538158372816@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 914825de-2d1b-4cf4-e0b6-08de30cc14f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2025 11:23:41.5940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9m4ccIpH2kbvZkvPblbgT0AMV0INQQubBdCJ79mFolUA4cTHgDaoV4giAaTZG/H4rukUQXIxOQPPl0JVgy2Nba+G2sdnp1GCsSFh8Xjm+3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5926
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

T24gTW9uLCAyMDI1LTEyLTAxIGF0IDEyOjUzICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IEZyaSwgTm92IDIxLCAyMDI1IGF0IDAxOjE2OjUyUE0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3
cm90ZToNCj4gPiBDdXJyZW50bHkgd2UgYXJlIGxlYXZpbmcgcHJfZHBjZCBjb250YWluaW5nIFBh
bmVsIFJlcGxheSBjYXBhYmlsaXR5DQo+ID4gRFBDRA0KPiA+IHJlZ2lzdGVycyBhcyBpdCBpcyBv
biBkaXNjb25uZWN0LiBDbGVhciBpdCBhcyB3ZWxsIG9uIGRpc2Nvbm5lY3QuDQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMg
fCAxICsNCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IDYyODA4
Y2QzNWY1ZjIuLjcxOTVjNDA4ZDkzYWIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gQEAgLTYwNTAsNiArNjA1MCw3IEBAIGludGVsX2RwX2Rl
dGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcg0KPiA+ICpfY29ubmVjdG9yLA0KPiA+IMKgCWlmIChz
dGF0dXMgPT0gY29ubmVjdG9yX3N0YXR1c19kaXNjb25uZWN0ZWQpIHsNCj4gPiDCoAkJaW50ZWxf
ZHBfdGVzdF9yZXNldChpbnRlbF9kcCk7DQo+ID4gwqAJCW1lbXNldChjb25uZWN0b3ItPmRwLmRz
Y19kcGNkLCAwLA0KPiA+IHNpemVvZihjb25uZWN0b3ItPmRwLmRzY19kcGNkKSk7DQo+ID4gKwkJ
bWVtc2V0KGNvbm5lY3Rvci0+ZHAucHJfZHBjZCwgMCwgc2l6ZW9mKGNvbm5lY3Rvci0NCj4gPiA+
ZHAucHJfZHBjZCkpOw0KPiANCj4gV2hhdCBhYm91dCBwc3JfZHBjZD8NCg0KUFNSIGlzIG9ubHkg
Zm9yIGVEUCBhbmQgY2FuJ3QgYmUgZGlzY29ubmVjdGVkLg0KDQo+IA0KPiBBbGwgdGhlc2UgcmVz
ZXR0aW5nIG9mIHRoZSBjYXBzIGNhdXNlIGEgcHJvYmxlbSBpZiB0aGUgY29ubmVjdG9yDQo+IG5l
ZWRzDQo+IHRvIGJlIG1vZGVzZXQgYWZ0ZXIgdGhlIHNpbmsgaXMgZGlzY29ubmVjdGVkIChzaW5j
ZSB0aGVuIHRoZSBzdGF0ZQ0KPiBjb21wdXRhdGlvbiBmb3IgdGhlIGNvbm5lY3RvciB3aWxsIGZh
aWwgc2VlaW5nIHRoZXNlIGNhcHMgYmVpbmcNCj4gcmVzZXQpLg0KPiBJbnN0ZWFkIHRoZSBjYXBz
IHNob3VsZCBiZSBrZXB0IGludGFjdCBoZXJlLCByZXNldHRpbmcvcmVpbml0aW5nIHRoZW0NCj4g
b25seSB3aGVuIGEgbmV3IHNpbmsgaXMgY29ubmVjdGVkLiBTaW5jZSB0aGlzIGlzIGEgcHJlLWV4
aXN0aW5nDQo+IGlzc3VlLA0KPiBjb3VsZCB5b3UgYWRkIGZvciBub3cgYSBjb3Jyc3BvbmRpbmcg
RklYTUU6IGNvbW1lbnQgaW4gdGhpcyBwYXRjaD8NCg0KVGhhbmsgeW91IGZvciBwb2ludGluZyB0
aGlzIG91dC4gSSB3aWxsIGFkZCB0aGUgRklYTUUuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXIN
Cg0KPiANCj4gPiDCoAkJaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdXBwb3J0ID0g
ZmFsc2U7DQo+ID4gwqAJCWludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9y
dCA9DQo+ID4gZmFsc2U7DQo+ID4gwqAJCWludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlf
ZHNjX3N1cHBvcnQgPQ0KPiA+IC0tIA0KPiA+IDIuNDMuMA0KPiA+IA0KDQo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOd8Cx4AlGmf+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:43:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACA4148DA2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:43:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A5C10E43E;
	Tue, 17 Feb 2026 05:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DjgARD5V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E0010E43E;
 Tue, 17 Feb 2026 05:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771307035; x=1802843035;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7/mSpchIJgg0TgD/uMTHpZrbt/dbzvNZcvca8++CUHM=;
 b=DjgARD5VtHxloCznMi8lM617FiWEOIZb5UHMKlb4O64d9OKNrprFPWwo
 DsxgVvVaYc48KX1tnadC59+P6tagTwUnnqmAZ9NMPYHIE2zZae/BID9bp
 XBses2UVvk2h14OkzDfchH/XEe5UoNZUb3kcafqjyQgDnqEVk0S++2z6Q
 yTedSMmQ0/XC9xDz/HW1NWa8/js7XkinH0sAgagVt2U4azScRFuMcHJ8e
 DyDZy1rWdBpW8jv13xW/pIbu0n9QRAwfKklM5JoOgdF3zxX1/N6b0iVzt
 9CB5gjc/cw+duf8RkrMyWiqpy4wOmcmCC69Y9icu/mLHw6uCRq3zM29N0 A==;
X-CSE-ConnectionGUID: EDuivZ7fSCi34D0sQYaxYw==
X-CSE-MsgGUID: x/ufZGiKTrusOENXtoWumg==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="83473251"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="83473251"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:43:55 -0800
X-CSE-ConnectionGUID: VuevJCNSQdiZ2FiYLaMiSA==
X-CSE-MsgGUID: NEukwY9jTqOlqrQx4tEnyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="218318689"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:43:54 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:43:53 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 21:43:53 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.28)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:43:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IXvC/afeyQYrNY9nUTVPB11u9n5YNQY6e49BA33QdPwXNw52kfpzvlTxhe/9ksQVFxu66U0+M/nW5oO5SuCjueGkI55jlsasPE37RZEsYaII9ozJISxT4US/8NVVdhrGfUzc0VJ5p3MAeeeGvzGpPXCSSzHPUnjeaDE+NIpJbzDHwym8oC9pXbClUy64xPPlMFGLPLluhExuFouWEIc2wCKs5GJi+oHVU3kUbVTYbl1d/aRbjg+K8nHXpIVIXa8w/WGmnFAZWBPD2GDO+jc3DAo2Y6klkLIlkTrnoS9C3j2CbiY17UV7N+1uw9eZ2bMU6a416XafXRrovL8Q0fbHgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gj6kKI4mRi3f70MTQ+HuoFCXNnlCsqQw4yhPK/zMhgE=;
 b=XXmv3Y6PfKBf23gl8h1RCJ0ralvGQrhOFaFw1/w37L4Z64DNqOIYNH68J05BqCCTvAw09aEqkz0YjQ2IdJHtAcRyK3bwCHDt8R9bCHbMTmGD06xMrbuTMMblXzxiUmOj93wy9vUBdfepsMtuty98H9rwiCzB7411E9BWpEV9wOaVzbRwjOLlcDk+wR6AwsBRwWEuWTOHBMext7YC/kabH2yyKWuppfr8V9SbhnoIpv6f7kKm/zZqUX2ayMyKrrcFRMx8VObrIb+vXT1G8aj35+T0e5LGDsQvytjY/AF05sxjn3vDe4gPL1NialkneQwGrLWXEzLcqNARyZrc3OM2FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MN2PR11MB4647.namprd11.prod.outlook.com
 (2603:10b6:208:262::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 05:43:51 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Tue, 17 Feb 2026
 05:43:51 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 14/16] drm/i915/display: convert W/As in intel_psr.c to
 new framework
Thread-Topic: [PATCH v3 14/16] drm/i915/display: convert W/As in intel_psr.c
 to new framework
Thread-Index: AQHcnNQTygouBeXbtkqxRM6AmXjpf7WGZwNg
Date: Tue, 17 Feb 2026 05:43:51 +0000
Message-ID: <DM3PPF208195D8DF76B07E7692D9EB4D019E36DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213102500.406925-1-luciano.coelho@intel.com>
 <20260213102500.406925-15-luciano.coelho@intel.com>
In-Reply-To: <20260213102500.406925-15-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MN2PR11MB4647:EE_
x-ms-office365-filtering-correlation-id: af56606c-bdb2-4062-550c-08de6de78786
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?IUqzAz9TN7xDrrdagu+3CI0ISu9MwkwW4dayl2My3ubqOv00HCsFrxHP6NBI?=
 =?us-ascii?Q?WZHJgzlCcnPK25KsgWhdbfXUi1A3rbdhFQWZoTT03gY4A8aMtQXhByWeFYUu?=
 =?us-ascii?Q?2m/ydvE8nVRsxxRrETWIQ9l1BnWXYSk1oUxgR+Nsb90xcJs4y0FIF4rHRG31?=
 =?us-ascii?Q?3DAIXwStTHarMSxheSQs1wDiF8ukoGaWD7ZNWKbMEanC+ewPE1AX6FW6CvLf?=
 =?us-ascii?Q?Um7Bi0M/2yJkfYeXYYdog7WnJ+EmWe/DahJXcD9FuwTLcXC472H1JEW0gM+0?=
 =?us-ascii?Q?da5UVeWLw0dHW8h14jLWLaIdsajcVwy7Ds7HMkVrIukQ57HeiB8DBUGs2i5G?=
 =?us-ascii?Q?+wOteQkNr6GN++XLeeiD1SY7xgeTSa0K5K9TOUVctDQWpJSwHFri3LU0JzXD?=
 =?us-ascii?Q?QSPHMQXUdRkVe7N6pVHyYAhy9SKAVrhX1L3fLWCC0l20qupsahy10vGRSBs8?=
 =?us-ascii?Q?TUTS8zJAq3COMCYuqYPedkCOg31h430aFBPcUad3fVBcgxAyDCUgXzM8X1te?=
 =?us-ascii?Q?jTvuL+vCjD72RnOBhpJN6FohAg20aZByIicnKzu/9o2B56SLKXkdJNhbgsR0?=
 =?us-ascii?Q?MYKZJih33Wrf4CvNwWEvzGs8hYsZM0gXIeC14Yjub3pXOVINRHV1TyLqoUOV?=
 =?us-ascii?Q?p0nJyqeM6DJRwvuGkoibTVqtRVZXAk40zBUazPTSPrEg6SMOA84+/JW+okZ1?=
 =?us-ascii?Q?UfVwv/i4DuF5kenEih4BzfRi421ZaH009EGy9KW4IzQY9HekKwADurYP/gDU?=
 =?us-ascii?Q?FF/9Ma5g9uLjByD1tTFFyZxCAsQtaEQrdf/HGbgUiQqIHpsSB+0Tgq+sLdcD?=
 =?us-ascii?Q?AW+KPeWyyFPaIOFLqis6HgIx0trpvXf3Nv3sD2YfYCwzR3dXWb5CaGE0AOjR?=
 =?us-ascii?Q?8GUkXKl0ob+8DRyHbZAaWfyKnQV+XSy2Sppy8vFSut4a+74WfGcPeYofIftn?=
 =?us-ascii?Q?Fi0dkMQKGPzF376GeGz9mYawlA/sMgurRUj1n8ncmedjV98Nm0A0qRbjAL2o?=
 =?us-ascii?Q?8oOBHlvMLku5K2cHWETUQvrtDKuiq/nFJkMZzkHkQTIelAqJw73iayoNjbrS?=
 =?us-ascii?Q?rQIPTBbBJAlZVgBnI/nAEMCFzl7sIEss+fL8jmxWedcJXPY57j1e2FmpNhgF?=
 =?us-ascii?Q?kRHgiIR6Qdkqd4trIAiTI18k07D76VFa50mSzRTtf80JpmnWQzSRD2lOGmI7?=
 =?us-ascii?Q?cr445Q0mMyAyyHO+U1qhV+0uRcdmXcsGX1bqvKuSsF5dyjAYxX92fp7oSUhb?=
 =?us-ascii?Q?CyGhvqGKWo9V6p45G70DTOHC/PQO4JISqdhVMlExvq8jqJFl0IE7KSek+x/t?=
 =?us-ascii?Q?rJBidfyNI1gaYHT/qiFkUm8xYMrDDsmGMzNdm+6YavFf8ZNw6cJkDjSdpv3w?=
 =?us-ascii?Q?btXTpfxTB5V7QPUz6pAKESYGwIC1xoOBxZkYLLY9J2FMiQ2TW/Y2SB96zGSJ?=
 =?us-ascii?Q?vyv39HPxrVfNEs9AigFoKPoVfv4395jyObLdNgyVDNCin7dG/et+giY9Bzuq?=
 =?us-ascii?Q?6PHN+cKRAyQ2ZVTSrIDmBeAVxOyqzTPFSOi+v8N7rxAA5RTGI3NbQHrzxUdf?=
 =?us-ascii?Q?LclsUYiwrI0Raq4xgdldr9jZTui+NJlk1OsJe9Q3AC/kgug7U9oHp3VqtTGn?=
 =?us-ascii?Q?o154FGfXaPpoXm0rfgujht8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g3kwb7AsnmAQXIww7lXlP/WeTaOHxTfQXrjUYhnHH1xk6ugMDdO3uT2uISkS?=
 =?us-ascii?Q?mP4697GPnxwINNI6GAC8JfF9DUDrTcFwUHXzqGSns5tM6tI2lOxw78zpXw/0?=
 =?us-ascii?Q?LG3aU8qHW3+yaOYIOSz0QJ8e4trMTuc0hAYR65r40/8FSSATKgglf8aYaKbQ?=
 =?us-ascii?Q?RFlN6+Aj0i6mJLOiiJ2pSYTAvOv39hDPjSOoVV4BDzO/ZgWXnMGx4od+4Rc+?=
 =?us-ascii?Q?MKunfC9pb0FIbG3gjqe8gu7XLtGiEcTqIg979+ri7W2sPUmJaIpVbXwjnGjl?=
 =?us-ascii?Q?Cz2OpdxAS2Lc7ee/WLm+++/2f8trkH9PWAvM4zvbD0ZfhTv/qZLgQLCnDIID?=
 =?us-ascii?Q?gRNZpEHB2e5jDbCpMkUi1Jd6RtnuV8oUInA3zozvnALpolDTT21nDkWUJx0+?=
 =?us-ascii?Q?4cHvf483F2Gs9FFM+ljrrb1qmsiDDceCNiQVAC5/mMx2zIboa7eER+KE2sMw?=
 =?us-ascii?Q?XYvvJptxdFKqcMpMPDeYA0hXoD0EvlK7X+pggn1dvWZJmCzp/Hv9EBvIwL4S?=
 =?us-ascii?Q?yWqY6bBoWU83Iy6E41nJFnAou31QreXFGQlguly2A9JcqUVK1eIgoWswDBSN?=
 =?us-ascii?Q?zTx9RD+p2w5ykTKReQGFNSlbNsyXr6W1eiMqk5VLNeOsLGXJoF4nL9zTjQeW?=
 =?us-ascii?Q?yvlIRVlueEUwm0VKX5b9MSyMW9tMnhQwcRkQDWiEJqiDNwWvjjzlQGCfwfmx?=
 =?us-ascii?Q?P/ihGOF7exfddEbupRA/Z7SfGiysqnVs6kxTj6KV4Ozjr2gSzHAai3QZbXZv?=
 =?us-ascii?Q?ZczVvxPGz2Q5edkfUM20+PIl4ZGzA/4gca5/Txx6OMrGr4DhKPufiF5U9yXK?=
 =?us-ascii?Q?oHtIPL4byYf27OsqkPGg3sp2OvGCYkZ+D6xeTGBdrYcjUpWArLBPRgJTAOsl?=
 =?us-ascii?Q?1WUI2nDYNuvOzRHQSYLQD0Pq0072kE2scc2MF/E+wzt2Jlu53/oPP897wtWJ?=
 =?us-ascii?Q?NaWM+4PBjBa1iCDUguO0+sKSzEIPLS+6xeKSrBTZ5oqfFPcFgqA4ZzJr7TeG?=
 =?us-ascii?Q?+Vuo0R27x2wMws0TPFsgwnMhzmIQ49Zm4K2WbqjD5uH8XPM0+WVDF0buEo1v?=
 =?us-ascii?Q?6ZT1KFJlj2yrDOEB8nSheCizidu8HIf7KI/7Y0aSqO50Pfsiw+OcM9bI+NoS?=
 =?us-ascii?Q?nr1C1nZZmhLqPoUMue3ph4efIuW2oiNghCnPVqoPtmR/ED3KVepFCSOz1fsq?=
 =?us-ascii?Q?5/9byU0bjj4wQvDfykBjWJ09oLilqPnjSjqrcF5e9Gt5whJBvSp067JwHpC2?=
 =?us-ascii?Q?xI/qJebE/A5/7aWk13rAPnMzxZmBTTcIDQ7BywSwS8uy/+Ijn0aCSJSkEAEY?=
 =?us-ascii?Q?nlx59DB0ydc84NyClPISOdQeCXXMV3lbFEVDsylqShk0b2Ngo4X787DBiIc5?=
 =?us-ascii?Q?zPRR/yn/RuFWjXRx5chRig+zJwzHkjU/+BFdUC9Arf48CkMggtAWi2Tuhgkf?=
 =?us-ascii?Q?9kP6XuVOoJiqmCDjnzScZvTiAMWdmb6BXdKEBWXS55A7VwZN9HnA4NynFRzC?=
 =?us-ascii?Q?avYVb8/Ex3TAncfvDKWFdT2hKkmwweBAEBqz6/QZae7RB6oZBBXiWaiEW+dy?=
 =?us-ascii?Q?fH33S6jPfCsHqcA1KdabXQTHNSPOELFvOBPc3Tt9fyzOfcEsYqZZEAZ3RPhz?=
 =?us-ascii?Q?Deei35/f+PcmLjVPqAsjwrDlFwrOK99cq6cMgO8lfSb66I8L2+PplRukJKOs?=
 =?us-ascii?Q?iv5lVdjHd9zF3gBpH2xKoBmGgcON0OFRchsNngAf9OG5Eausk4/WEvWXNM7S?=
 =?us-ascii?Q?TgTbeV4Xag=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af56606c-bdb2-4062-550c-08de6de78786
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 05:43:51.1168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ey4m0QzfJ/t83SS2HAb8vjovx5SNA7nYrLQJPOx3EaR+HK6ZuFQv/c4pxg7cuPVAR7kYELQERXFDqv0AwoaHzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4647
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9ACA4148DA2
X-Rspamd-Action: no action

> Subject: [PATCH v3 14/16] drm/i915/display: convert W/As in intel_psr.c t=
o new
> framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_display_wa.c.

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_wa.c   | 15 ++++++++++++--
>  .../gpu/drm/i915/display/intel_display_wa.h   |  4 ++++
>  drivers/gpu/drm/i915/display/intel_psr.c      | 20 ++++++++-----------
>  3 files changed, 25 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index da09873dc1cb..73c7b87d5ecd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -112,6 +112,13 @@ bool __intel_display_wa(struct intel_display *displa=
y,
> enum intel_display_wa wa,
>  		return DISPLAY_VER(display) =3D=3D 20;
>  	case INTEL_DISPLAY_WA_15018326506:
>  		return display->platform.battlemage;
> +	case INTEL_DISPLAY_WA_16011303918:
> +	case INTEL_DISPLAY_WA_22011320316:
> +		return display->platform.alderlake_p &&
> +			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
> +	case INTEL_DISPLAY_WA_16011181250:
> +		return display->platform.rocketlake || display-
> >platform.alderlake_s ||
> +			display->platform.dg2;
>  	case INTEL_DISPLAY_WA_16011342517:
>  		return display->platform.alderlake_p &&
>  			IS_DISPLAY_STEP(display, STEP_A0, STEP_D0); @@ -
> 121,15 +128,19 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  		return intel_display_needs_wa_16023588340(display);
>  	case INTEL_DISPLAY_WA_16025573575:
>  		return intel_display_needs_wa_16025573575(display);
> +	case INTEL_DISPLAY_WA_16025596647:
> +		return DISPLAY_VER(display) =3D=3D 20 &&
> +			IS_DISPLAY_VERx100_STEP(display, 3000,
> +						STEP_A0, STEP_B0);
>  	case INTEL_DISPLAY_WA_18034343758:
>  		return DISPLAY_VER(display) =3D=3D 20 ||
>  			(display->platform.pantherlake &&
>  			 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0));
>  	case INTEL_DISPLAY_WA_22010178259:
>  		return DISPLAY_VER(display) =3D=3D 12;
> -	case INTEL_DISPLAY_WA_22011320316:
> +	case INTEL_DISPLAY_WA_22012278275:
>  		return display->platform.alderlake_p &&
> -			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
> +			IS_DISPLAY_STEP(display, STEP_A0, STEP_E0);
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
>  	case INTEL_DISPLAY_WA_22021048059:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 4471d6511152..0e9959760b9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -44,13 +44,17 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_14025769978,
>  	INTEL_DISPLAY_WA_15013987218,
>  	INTEL_DISPLAY_WA_15018326506,
> +	INTEL_DISPLAY_WA_16011181250,
> +	INTEL_DISPLAY_WA_16011303918,
>  	INTEL_DISPLAY_WA_16011342517,
>  	INTEL_DISPLAY_WA_16011863758,
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
> +	INTEL_DISPLAY_WA_16025596647,
>  	INTEL_DISPLAY_WA_18034343758,
>  	INTEL_DISPLAY_WA_22010178259,
>  	INTEL_DISPLAY_WA_22011320316,
> +	INTEL_DISPLAY_WA_22012278275,
>  	INTEL_DISPLAY_WA_22012358565,
>  	INTEL_DISPLAY_WA_22014263786,
>  	INTEL_DISPLAY_WA_22021048059,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5bea2eda744b..95c66ce46513 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -40,6 +40,7 @@
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> @@ -1082,7 +1083,7 @@ static void hsw_activate_psr2(struct intel_dp
> *intel_dp)
>  	}
>=20
>  	/* Wa_22012278275:adl-p */
> -	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display,
> STEP_A0, STEP_E0)) {
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_22012278275)) {
>  		static const u8 map[] =3D {
>  			2, /* 5 lines */
>  			1, /* 6 lines */
> @@ -1263,7 +1264,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp
> *intel_dp,
>  		return;
>=20
>  	/* Wa_16011303918:adl-p */
> -	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display,
> STEP_A0, STEP_B0))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16011303918))
>  		return;
>=20
>  	/*
> @@ -1540,8 +1541,7 @@ static bool intel_psr2_config_valid(struct intel_dp
> *intel_dp,
>  	}
>=20
>  	/* Wa_16011181250 */
> -	if (display->platform.rocketlake || display->platform.alderlake_s ||
> -	    display->platform.dg2) {
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16011181250)) {
>  		drm_dbg_kms(display->drm,
>  			    "PSR2 is defeatured for this platform\n");
>  		return false;
> @@ -1823,8 +1823,7 @@ void intel_psr_set_non_psr_pipes(struct intel_dp
> *intel_dp,
>  	u8 active_pipes =3D 0;
>=20
>  	/* Wa_16025596647 */
> -	if (DISPLAY_VER(display) !=3D 20 &&
> -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> +	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
>  		return;
>=20
>  	/* Not needed by Panel Replay  */
> @@ -3973,8 +3972,7 @@ static void psr_dc5_dc6_wa_work(struct work_struct
> *work)
>   */
>  void intel_psr_notify_dc5_dc6(struct intel_display *display)  {
> -	if (DISPLAY_VER(display) !=3D 20 &&
> -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> +	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
>  		return;
>=20
>  	schedule_work(&display->psr_dc5_dc6_wa_work);
> @@ -3989,8 +3987,7 @@ void intel_psr_notify_dc5_dc6(struct intel_display
> *display)
>   */
>  void intel_psr_dc5_dc6_wa_init(struct intel_display *display)  {
> -	if (DISPLAY_VER(display) !=3D 20 &&
> -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> +	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
>  		return;
>=20
>  	INIT_WORK(&display->psr_dc5_dc6_wa_work,
> psr_dc5_dc6_wa_work); @@ -4011,8 +4008,7 @@ void
> intel_psr_notify_pipe_change(struct intel_atomic_state *state,
>  	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_encoder *encoder;
>=20
> -	if (DISPLAY_VER(display) !=3D 20 &&
> -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> +	if (!intel_display_wa(display, INTEL_DISPLAY_WA_16025596647))
>  		return;
>=20
>  	for_each_intel_encoder_with_psr(display->drm, encoder) {
> --
> 2.51.0


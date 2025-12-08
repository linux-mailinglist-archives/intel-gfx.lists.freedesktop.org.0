Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D3DCACAD2
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 10:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D02710E3EC;
	Mon,  8 Dec 2025 09:32:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XV2mzQyw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198B510E3EC;
 Mon,  8 Dec 2025 09:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765186360; x=1796722360;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NtQXQhxEOBEPVb442glMDUE9TL9a6GddgWCI6wNvi4g=;
 b=XV2mzQywuLgAObdKsD6VNsqwSg45Wm2HALxDBrqRfqu1ewXk/QGWNOrI
 8HUM4H7Z5s/IQxohnodFcH9bfmmixFT7sTRIAWMGXRrR4kYLeyvmvma6f
 W0cB7ypIupGOfmTo+5l1F5kkUquiXamO7VSK2mzIELDsP88deUHzWUD16
 I5ORs6JD4ZZkTGardvf6fJe66GwzRR+6vH4/Tc7oaISLCCZJqrhscuyo6
 mAqVeIUaFfWbVeYHd9jD+waoIeIJNC0cPekcUfVZFC/446Vrnc+sRndjA
 nNlEkBmifVAT0xwle08q/QdG+iN5g38GBWQgfVYr7bvnd483itE1xrXEb g==;
X-CSE-ConnectionGUID: js7tHJ1JT+O5BkDev6j8AA==
X-CSE-MsgGUID: bJR6oZybTC+0eTJoadnFdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="84531912"
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="84531912"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 01:32:40 -0800
X-CSE-ConnectionGUID: YR6l3SFJR5uhSapSUbt9LQ==
X-CSE-MsgGUID: POnADpY/TbuuVbQwWsyNkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="200805219"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 01:32:39 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 01:32:38 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 8 Dec 2025 01:32:38 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.18) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 01:32:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nlj5tw+4uCWBkuYCQS49CviZNJbzRzd+Gj2yVrWajfY0HWSaZgbEjqFIAURU8dKohWhEYZi1f4sQ32KQcja2dE1XHHYdONtUSDvV06p6IWw7fjvfDZBcF0lUMg8zjiRoHUO6wDLhuMUPfy4s6sh7zjjKOZWQ5NZ9PadN/5qoo6AvGXz6aDHpM3M3Y6d8vGsX4RvJmLhJSue2UEjb+mz0vT+uo+j+2XH+EZ7sBzF998rtmyrm0VMfn5nuM40ed2A8T2BtJ/R6upsk7NnhQjKBGaoOZpilVjZPbSytzZLWiioOuIGx5YzVHm5aOyWxVkKrGmJ1swR8tIJt51m9jJHpAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NtQXQhxEOBEPVb442glMDUE9TL9a6GddgWCI6wNvi4g=;
 b=yuvs2sg31hOi6VYSMl8f9AHAx5lIVVfUhkvv5FyvA/OPHA5FbQkuY/cPY6IhRiXTgTvG8ypqid1Los//Dtyi/HI+yCWKumUqrdKkRWL8mWt02/wP7f4yb9AuYgUfnUQP1Jyt6G1qkhUD/1AkPDU56EhjcScD3ezE7k4KdiwJvFP1K+JcMrWPwrm62WChSmVbwVst3YGZa8CP1Ow54xnYW9CWmb3V7EkNw9RQKCbseO1bMzUmVoEbUJQtm7kOh1Quyi8rHgRsnu3+i0JDqJADXP4PUD/IfjosfwkPH57f3mCvHI2hgxpJ0JxVXV4EulghTHvHGv8dL6fEQZ8EWupeBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB5159.namprd11.prod.outlook.com
 (2603:10b6:510:3c::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Mon, 8 Dec
 2025 09:32:36 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9388.013; Mon, 8 Dec 2025
 09:32:36 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/cx0: Unify naming for C20 pll tables
Thread-Topic: [PATCH] drm/i915/cx0: Unify naming for C20 pll tables
Thread-Index: AQHcZd66U7mTpWoXRUGXQboKVisxo7UXZFSAgAAaOHA=
Date: Mon, 8 Dec 2025 09:32:36 +0000
Message-ID: <DS4PPF69154114FF94237F8D7DD9280ACB3EFA2A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251205115203.2526873-1-mika.kahola@intel.com>
 <24kvwvg3jyfbczigietw5m4zap7oa65i6l5lutigbife5km7m5@o54p7h6sedyp>
In-Reply-To: <24kvwvg3jyfbczigietw5m4zap7oa65i6l5lutigbife5km7m5@o54p7h6sedyp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB5159:EE_
x-ms-office365-filtering-correlation-id: 22f95b5a-42fd-483b-ac4b-08de363cb95b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?bFJZbk1TYXBPRWV2T2J5NXAycUk0RFpHcG5oOS9MaEhGb3lKQVQ3YklpVFNG?=
 =?utf-8?B?V3Yyc1ZHa3hxUWVHQUswdHl4YTdid0Y1dTg5MmtMUWVGanJTY3UzZ2VPanVT?=
 =?utf-8?B?WFdTNlpqWVYzbWg3Tk9TS2pHRUFrb2twbStsNTlMbTRXRVRiTWNRWW44WEp2?=
 =?utf-8?B?WjU4bGV6Q3RpcVBCU0p3elZhbzVRdG5IM0JrODVTL3dtWFcvMitxSWl1RHJa?=
 =?utf-8?B?Vm4zN3lNZ2ZTUVJrUS9ZRS8reXNhekRYMzBZaVVjZGNYZC9aTjlRay80aTQz?=
 =?utf-8?B?NG1qeEd1ZlBCQmxobnArbFhtT3E0ZS9pWHRSdDBDOGNRMllkY1YzRFBVZkFh?=
 =?utf-8?B?ZEV4RXU3dVZYZktlaHR0Qk5pR3NMVTlYd0FzWTM2UFgxYWRzZGFCKy9GZzYr?=
 =?utf-8?B?SjJycUgyRFZsZEk0VmZhUVZPbFdpeWQwSmd6SHlKSER6MXRGVHY4RkNpL3hW?=
 =?utf-8?B?RWJlNzhYUFRwSDM3M2JDdlhUSnZmWmhtNGY3QWxlVnRNVWlWMlZndHZ0S2hl?=
 =?utf-8?B?c09UQ1JEcDl6Zk1IL2txUUs0WlN0SjRvdVRBWGg0SzZVRUdEdmdkVmd6ZlhE?=
 =?utf-8?B?b2dYakh1NEZCTTFuWmlRMmgyME9aWTRobnQ5QTJVdUh5MjNTcnlZLzZ0Rkti?=
 =?utf-8?B?RnA4NHNGdUYrbzNzQy91Q1MvRzFhOUMrQVVHaUkwNGZqeEtXbUtYQmV1S29W?=
 =?utf-8?B?RGJJNFZaMnFkL2Q3TjBTN2VXaFFGVHJRL1R4bGJOWnhqMzN3dFRZMnZMNVFj?=
 =?utf-8?B?OG84UVNmaXFEcGdmV0pqZUZEbXlhMzk1blVIOHd5OG84bmhXL0xVT1lmenBQ?=
 =?utf-8?B?NVVlY0IvYnI0Y0VCaHlweUx6VjNiWHNtQXN5M3l6bnBYMEpkbTIwWVh0dnQz?=
 =?utf-8?B?MTJPczMrMDd5NmR1T1FPMENidVhnZmVPZEVMS0RrY216b0h6WFFPZlJVVnJl?=
 =?utf-8?B?emIvWHNoYVhHeTZMWWNKaHJOaUdrSnFNSTRVZlQ5VGVRSEJEVVFUMkRNdWxy?=
 =?utf-8?B?bVRFREJSUVZrWUFCZkJTa254MTAvRkJGMkFHS2NpR0pEMVl1TXBHaDJZR3NH?=
 =?utf-8?B?WEwxTjM3NkQ0eHZ0YjM1M3dLWnRNdW5sN1pnY1dDZnZKRUM3UHpHQ0R6YmJw?=
 =?utf-8?B?MnNRNzF4OHcyZVMxU0NnbDNVSkloRlUrY1VKUXlEWDNtSE1iUndCVVJpK2xt?=
 =?utf-8?B?L2QyOWltSzhldUFrU0MyMk9NWlNqWTZtcWFBeDF4Tk1zbXNlS2E1WCttRGo5?=
 =?utf-8?B?WTJUNTcxeXZuL2tvTlVOYlhmMVU5Ny9WcnhLbFBHeHVYOW5LdTFQVisvV3BQ?=
 =?utf-8?B?c0luSkk1Vk1qMzU1cTV1bC9IM1I0Z3loN2FWT2FZUzVvY3FqOTNZVmxZekRt?=
 =?utf-8?B?Lzl5bHRMV0l2bFdaMVlyUEtZS1ZHNnJUVkFHMFVRNk13TjNYc09SRGoraHdQ?=
 =?utf-8?B?VE1ubEZuMFBGbmNRU2Y3WXRiNzJzaVNQY3pKMjcyd2Z3RzZuUFhDUU5SbVNE?=
 =?utf-8?B?SEQ2NW5tbUFqNWNoL2RsWmg2MG1uWFA4Z3EwejB2VDA0K3dVZXJtVHFhajIz?=
 =?utf-8?B?aVVKT2hscXFFbjZNdEh5WjlkN1FIU0Erd0o0OXhQd1RjU2tDV1NTUFlvZVVN?=
 =?utf-8?B?Mzg1VGJKZ01qVUgrOFpiSmR3R1d0U2t6MERCSzcwRmhDaWV4a0lsNkNWVUJl?=
 =?utf-8?B?TmtMWUlQbEx2U1UvNEtKcWEyQ3AyUEhPMWN0ZCs1Z3oveHlkeGgzM3FDTXRi?=
 =?utf-8?B?Z3J5K25SbWR6NFBNQXdROEw4Q1RFYXZ0MmZxWnVyNmsycHVYVTdEL05BN29E?=
 =?utf-8?B?SVZSOVNCM1NCa3VSZEwxNW52Y2tTZkZCdFovY3J1TGc5dE8yTXhPM2tTYytN?=
 =?utf-8?B?REUwSWUyNFpjWGM1M1lkWVdpTSsvTnZqSXNBL1BHS0QrNjdHbmJRMmk4ZmFQ?=
 =?utf-8?B?VnVFSUNEMDB5VjN0OHQ2cU5wbEpRMmwreVhtclZhVmhQNkU4ZlhXVG90bmFk?=
 =?utf-8?B?ajF5LzdOb2RNYjlwZE4wVlUwWEdqTXJBNkJPb2dUOHlaR0Y1SEVUZk9aVXh4?=
 =?utf-8?Q?40hpWD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R1NjQjFPVkxsTzBZMHE5Q0R4ODRpYjAzZXVjM0JGY21oQk1iZ0Q2L2IralRr?=
 =?utf-8?B?MVR4dGFxcEs5cm1Bb3BRdU1PY3EzYW5ZNE5UTmpQUjZFbndkUzBoeTV2d3g2?=
 =?utf-8?B?T3EySXdtc3RiL1ZGQTFVTCtTeHNkWkZ6dWR6dE5VMFRxUFQ1YW9vVzJjbTg1?=
 =?utf-8?B?QlNZQ1p2dWJtMWtWUUViTVpQb2tTZDgwZ0FHSmtXWVRJaDU0SkxBNVphTy9S?=
 =?utf-8?B?NGE4VnIxOHh1QitsM25qNVlUMDJRL3BSZ0U4cjdhZzQ5OWZkQThRblNIMkl2?=
 =?utf-8?B?Mzl4ZFZLQVdJSmtpdGtMVDFHNTRabFI5SUxoakJmaFVMU2FiWFFHSTJqSVlD?=
 =?utf-8?B?L050c3gzaXBTTkxubUpKM05YMGhDc080bGxxWWJCZlZSWmpEMmJEOWpmQWhY?=
 =?utf-8?B?L2hyWjhyNVBuU3FMZ2JjZGVaOHVtSW9MZXhiZGV6RkhsVXloVm9rNDltbjRG?=
 =?utf-8?B?R2VvVkZLck5QR3NYYXBMNXcvTkdiUzBMNENaenZRcFpLOEpRbUMrZHlxK3Y1?=
 =?utf-8?B?dkt2ZmMvNTQybXVUcCsrVks0KzBzSGRpWm9PbHQ1MnlzdHhFR3ZnNnFFTVRz?=
 =?utf-8?B?b1lDb0lFN08ydUZJOGZ5WjJnd3IzdHZuc2tUQjFGQXlKR1ptTDdHTUFldEIr?=
 =?utf-8?B?dWQzR3p3TnFWYXl0L3NQaWJyTkJyZTVaWmR6Ymg5K1p4Y2NuYk1sWnZVTTlr?=
 =?utf-8?B?cVZnaEpOY0hzakxtY1dCVUtMYVZ6R2h5R21jMDJsdGk3Q3pybW1vb045UmRw?=
 =?utf-8?B?R1Y0VzBMNWxIeGMrOTBxVWo4N0tDUnRRSjJxV3NWZFpZcnpVZEtncnRoTlBm?=
 =?utf-8?B?T01vNGRVMFVqVXE5SmluYktBNDl6T1p1Y0w3RythbUVpdnF6NC83ZWhqM3k0?=
 =?utf-8?B?RkxqMVlLREJKWDkzcEhuY1M4eXRkTEZ5NkpHd2VaNTdpYTdpeEdrcUNmbmgr?=
 =?utf-8?B?Z1Zzd2UzcDVzU2FaMmJGZ0k1dnp5NGZOT0RvbG5uM3FLWFJsVi9iY0tpS3BO?=
 =?utf-8?B?MkhlU0VYeitJM2JXbHFmV1pVVzdOa0l3bjR4RlhxRlo5dlhwZjhJWDRpOHpk?=
 =?utf-8?B?YlFnTiszVWlVRlVzNC85SGZyWFBoTDRLL3FXZ05wS3VSU2dRTDVzcWtNNE5n?=
 =?utf-8?B?eU9EamhpbHFINTRycVp5MUFHenF5c0VobXpmb21GWXFrMXRrenF2UEdFaHFh?=
 =?utf-8?B?NHhBVHVwclcvOWVCQWc2UDY5UUx4dGNZbURvbS9yVWg4VDh4OWRZbmNDV2hQ?=
 =?utf-8?B?UXBvQ09ZOXJCdFB1TWY5YnZGQ2I2c0RlemJ0bFAxVG8yQktsc2RDU0F5S2Zm?=
 =?utf-8?B?QmFBTklCa3k5VGZTY0NYWUZ0UDY3YUpGclk1T2xQbmhpU3VFTVNHRk5iYTdX?=
 =?utf-8?B?Z3RES0RmNExoNWFSUEJudEt2Lzg1VVVRSkpJVzJJU1FyVVJZTWVIWTR1dzl5?=
 =?utf-8?B?OGdoOEoyQVlEbzEwOFNOcDAreTZNTVJSU3RrREVOZ2E4cVVicTE4WWNDN09I?=
 =?utf-8?B?SjFHZ1ZpbGJMcnd0V2pISGFKbExGOVoyTVJ6WTJ0WDdOZTM1YmJVRTRiTWN0?=
 =?utf-8?B?QU44eDQrSmUrZlhrOUZNT1FhVm9xU0kxaVdhcVg3UUNUeWxWR3VGbjRPMlRu?=
 =?utf-8?B?VlNJWDJvRDdpSmt5K2FOaytiU3dDLzEwQ3A3SFF4Wm0reEQrVGtmYkx5MVJM?=
 =?utf-8?B?aHR6VENQQnJXaHZPZzVkT2RuUEhkQU5NMnE4dmMrRmhBenlhcm10dzZNRjYr?=
 =?utf-8?B?ZlRoeXRTUzkwaEZFVXF5MVRCTFZGdWY4aUVIMVRKTXFzcThuRURFYW8za2xz?=
 =?utf-8?B?RGZpc1BYV3lOWGt4cG5nQ2tpaFN1RlNmc013Z1FLUWMrbVBKd2RCZUNKWDFW?=
 =?utf-8?B?ZFNaaUMyMW5HNzR0eHEwQVVTaFk5ZWprcDYzZzZRRndCelEyRW5EYXptbEJW?=
 =?utf-8?B?Q0FmVkQrRjBtRDRabGlJR1drZEc0akhxbHlRcHVGUWZQUElaUHpLdXE1RXQw?=
 =?utf-8?B?NmRGT3VucWd0Z2J1OEJleFlqeFpCTjJkajlvM2NlTXFlcWhOdGVpZlpRTGxJ?=
 =?utf-8?B?ZTAvZVNSUTdVUWhXMXdrTGJRaFNLTG5vR2VjRndwZkFLWWRzakExcjUzbmx3?=
 =?utf-8?Q?vbPETLlcAoDrotQ9yEsMYbpon?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22f95b5a-42fd-483b-ac4b-08de363cb95b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2025 09:32:36.8864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LitAxZnA+XsXE6gYe7pUX+9KCZ9MB37H0tthoGkZ5u/L/BdXXA+V5k4uk0fAGYJg+3tqVY3vqS3kTI31cMEcFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5159
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYXJhcywgS3J6eXN6dG9mIDxr
cnp5c3p0b2Yua2FyYXNAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIDggRGVjZW1iZXIgMjAy
NSA5LjU2DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9jeDA6IFVuaWZ5IG5hbWlu
ZyBmb3IgQzIwIHBsbCB0YWJsZXMNCj4gDQo+IEhpLA0KPiANCj4gbmljZSBqb2Igbm90aWNpbmcg
dGhlIGRpc2NyZXBhbmN5IGluIG5hbWluZy4gSSB0aGluayB0byBnZXQgdGhlIG5hbWluZyBpc3N1
ZSBmdWxseSByZXNvbHZlZCwgeW91J2QgbmVlZCB0byBhbHNvIGluY2x1ZGUgY2hhbmdlcw0KPiB0
byBzb21lIG90aGVyIG5hbWVzIGluIHRoYXQgZmlsZToNCj4gDQo+IDp+L2tlcm5lbC9kcm0tdGlw
JCByZyBpbnRlbF9jMTBfcGxsXw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N4MF9waHkuYw0KPiAyMjg4OnN0YXRpYyB2b2lkIGludGVsX2MxMF9wbGxfcHJvZ3JhbShzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gMzI2MTogICAgICAgICAgIGludGVsX2MxMF9w
bGxfcHJvZ3JhbShkaXNwbGF5LCBlbmNvZGVyLCAmcGxsX3N0YXRlLT5jMTApOw0KPiANCj4gOn4v
a2VybmVsL2RybS10aXAkIHJnIGludGVsX2MyMF9wbGxfDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+IDI0NTk6aW50ZWxfYzIwX3BsbF90YWJsZXNfZ2V0
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLCAyNjI3OmludGVsX2My
MF9wbGxfZmluZF90YWJsZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwNCj4gMjYzMzogICB0YWJsZXMgPSBpbnRlbF9jMjBfcGxsX3RhYmxlc19nZXQoY3J0Y19z
dGF0ZSwgZW5jb2Rlcik7DQo+IDI2NTA6ICAgdGFibGUgPSBpbnRlbF9jMjBfcGxsX2ZpbmRfdGFi
bGUoY3J0Y19zdGF0ZSwgZW5jb2Rlcik7DQo+IDI4ODE6c3RhdGljIHZvaWQgaW50ZWxfYzIwX3Bs
bF9wcm9ncmFtKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiAzMjYzOiAgICAgICAg
ICAgaW50ZWxfYzIwX3BsbF9wcm9ncmFtKGRpc3BsYXksIGVuY29kZXIsICZwbGxfc3RhdGUtPmMy
MCk7DQo+IA0KPiBvdGhlcndpc2UgeW91J2QgYmUgbGVmdCB3aXRoIGludGVsX2MyMHBsbF90YWJs
ZXNfZ2V0KCkgYW5kIGludGVsX2MyMF9wbGxfZmluZF90YWJsZSgpLCBzbyB0aGUgbmFtZXMgd2l0
aCAqX2MyMF9wbGxfKiB3b3VsZA0KPiBiZSBtaXNtYXRjaGVkLg0KDQpJIGRpZG4ndCBpbmNsdWRl
IHRoZXNlIGMxMF9wbGwqIGFuZCBjMjBfcGxsKiBmaXhlcyBoZXJlIGFzIHRoZXNlIGJvdGggY2Fz
ZXMgYXJlIG5hbWVkIHNpbWlsYXJseS4gSG93ZXZlciwgeW91J3JlIGFyZSByaWdodCB0aGF0IHdl
IHNob3VsZCBmb2xsb3cgb25lIHN0eWxlIHdoYXQgY29tZXMgdG8gbmFtaW5nLg0KDQpJIHdpbGwg
Zm9sbG93IHVwIG9uIHRoaXMgYW5kIGRyb3AgdGhlIHVuZGVyc2NvcmUgZnJvbSAqX3BsbCouDQoN
ClRoYW5rcyBmb3IgdGhlIHJldmlldyENCg0KLU1pa2EtDQoNCj4gDQo+IE9uIDIwMjUtMTItMDUg
YXQgMTM6NTI6MDMgKzAyMDAsIE1pa2EgS2Fob2xhIHdyb3RlOg0KPiA+IFRvIGZldGNoIHBsbCBk
aXZpZGVyIHRhYmxlcyBhIGZ1bmN0aW9uIG5hbWUgZm9yIEMyMCBpcw0KPiA+IGludGVsX2MyMF9w
bGxfdGFibGVzX2dldCgpIGJ1dCBmb3IgQzEwIHRoZSBzaW1pbGFyIGZ1bmN0aW9uIGlzIGNhbGxl
ZA0KPiA+IGludGVsX2MxMHBsbF90YWJsZXNfZ2V0KCkuIFJlbmFtZQ0KPiA+IGludGVsX2MyMF9w
bGxfdGFibGVzX2dldCgpIHRvIGludGVsX2MyMHBsbF90YWJsZXNfZ2V0KCkgdG8gYmUgbW9yZQ0K
PiA+IGNvbnNpc3RlbnQuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlr
YS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2N4MF9waHkuYyB8IDYgKysrLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gaW5kZXggMjdiZTJhNDkw
Mjk3Li5lZjY5ZTg3NjJiOTAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IEBAIC0yNDU2LDggKzI0NTYsOCBAQCBzdGF0aWMg
aW50IGludGVsX2MyMF9jb21wdXRlX2hkbWlfdG1kc19wbGwoY29uc3QNCj4gPiBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zICB9DQo+ID4NCj4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9jMjBwbGxfc3RhdGUgKiBjb25zdCAqDQo+ID4gLWludGVsX2MyMF9wbGxfdGFibGVzX2dl
dChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiAtCQkJIHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQ0KPiA+ICtpbnRlbF9jMjBwbGxfdGFibGVzX2dl
dChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiArCQkJc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gPg0KPiA+
IEBAIC0yNjMwLDcgKzI2MzAsNyBAQCBpbnRlbF9jMjBfcGxsX2ZpbmRfdGFibGUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gIAljb25zdCBzdHJ1Y3QgaW50
ZWxfYzIwcGxsX3N0YXRlICogY29uc3QgKnRhYmxlczsNCj4gPiAgCWludCBpOw0KPiA+DQo+ID4g
LQl0YWJsZXMgPSBpbnRlbF9jMjBfcGxsX3RhYmxlc19nZXQoY3J0Y19zdGF0ZSwgZW5jb2Rlcik7
DQo+ID4gKwl0YWJsZXMgPSBpbnRlbF9jMjBwbGxfdGFibGVzX2dldChjcnRjX3N0YXRlLCBlbmNv
ZGVyKTsNCj4gPiAgCWlmICghdGFibGVzKQ0KPiA+ICAJCXJldHVybiBOVUxMOw0KPiA+DQo+ID4g
LS0NCj4gPiAyLjM0LjENCj4gPg0KPiANCj4gLS0NCj4gQmVzdCBSZWdhcmRzLA0KPiBLcnp5c3p0
b2YNCg==

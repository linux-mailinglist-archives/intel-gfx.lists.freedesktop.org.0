Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id usELKAPjD2rGRAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 07:00:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BFD5AED79
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 07:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A543310E662;
	Fri, 22 May 2026 05:00:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cFRdeFXV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C4A710E651;
 Fri, 22 May 2026 05:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779426048; x=1810962048;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y0uZkiU657vvg2Bv15j/UP+Gq061EEWd3dCw8+D3Mrc=;
 b=cFRdeFXVjnfuULo5voxpNSNdNE8mwtCOdOUkoJt/5tFxWOf1q9KrhHqS
 uulye7GXn5hZe7anFiyurjcFxl1dlKWC3l3qt4B0g/xXTe6Gfqn41UkiU
 T+zW78S/+VTUagWuPg9qRTRgWOXkIB0qwGm/b6se6Pe+x5f+PZyqt9UiT
 k4KKpssdWwI3ZvJsYiuKgQMgKEZvTv/0Bw/KhQSZnrj6oDr42lzoZyAtv
 OcJ7SMo2g63t2BmI14E5af4EpviS8BMWbuaME4Csg1Z4L0tRqHBFxKNwm
 frh6rMBhOYw21mpcu0pm46HVlTQ5PjxkHTbM68B6ZXrYgY8TkZh8KqBiC g==;
X-CSE-ConnectionGUID: rNXV0Rw+QJ+ktEOy4czSAw==
X-CSE-MsgGUID: 87sUy++eQpulOMCfKF8ZEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="90651398"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="90651398"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 22:00:47 -0700
X-CSE-ConnectionGUID: bEWigCP8Qvqq8a5gcgcUiw==
X-CSE-MsgGUID: 8if0ZZKSSJO8nRLEA5eMew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="278903614"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 22:00:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 22:00:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 22:00:46 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.70) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 22:00:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fdpkZ2q0goguyQG/gJd8T9Z5nhLtMrJDPPuNYSHDlojwbZB1Si/Ip0uVfA+eFrCuw2AKBPWECs/wbaeSGr43G9MbKiafPHlOAsoE2WoUYR5CiLqnLTwReLC9bPKpCFnBZAab5tHnD2jV9YFTzIv9V77zJJPD9y8uf5ZaW3x18oTfUDgo8+gN4WfgCdG7YdK3zMKZGfyuzmG6Z5VF73nm9ATLcxKSZDHVESH//OKcCDXRdX+XzXPtVm2IhMloPIhjVNqjvmeYpyi/DV540qhuY6qB0hi5meBITaDiwxl4RUVxGYjGctMlAoDFziGiN7YwTgJpgXL0NJHorP18Bnr0Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y0uZkiU657vvg2Bv15j/UP+Gq061EEWd3dCw8+D3Mrc=;
 b=KxWoqaSK3/1pZGi528pTV7ZHMoCzbGzVRBKqaeG83Wy5alTzsmBUImP7Eipi56wEcIXbggCxPsqyGKB/iclfHE4xBV3dJlVWWuvIBR3GLxm8E9tmCwnad35jlmRSDdfuRhE4+MppQm42cjLds0u0z6T34598EdspLvQxFTKWI3DSnskqqEQsGeOzoFWYR5RmWSu4wmxvvkWCtRbHbYKI45/hE5Yg7gVZ32V62iY/Q1feP7j7QMgwVtcXdxFqp8hui2d7z6gvwkvaMdYzYwOFnmnZQu5ofmf/lXBl4lMFZreKVXXXmnXRvoikWaMCg4suEDRXmESolvz9GuAgPY0k+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 DM3PPF7C7D8332C.namprd11.prod.outlook.com (2603:10b6:f:fc00::f31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Fri, 22 May
 2026 05:00:36 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0048.016; Fri, 22 May 2026
 05:00:36 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v6 01/16] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
Thread-Topic: [PATCH v6 01/16] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
Thread-Index: AQHc4vtkB6ZB0KdIK0yPFV/Z6JAf87YYLucAgAABIoCAAEaygIABEfkg
Date: Fri, 22 May 2026 05:00:36 +0000
Message-ID: <DS0PR11MB8049E6FAA055C615676F3BCBF90F2@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-2-animesh.manna@intel.com>
 <074e4d37-9bf0-45da-9541-8b27164e743c@intel.com>
 <DS0PR11MB8049DBAF76058351534A3334F90E2@DS0PR11MB8049.namprd11.prod.outlook.com>
 <9c4928ff-6520-4dbd-92ee-2fc49c2630ca@intel.com>
In-Reply-To: <9c4928ff-6520-4dbd-92ee-2fc49c2630ca@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|DM3PPF7C7D8332C:EE_
x-ms-office365-filtering-correlation-id: ea2a33f0-9d6c-4531-e0bd-08deb7bf0ff9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|11063799006|3023799007|4143699003|38070700021|18002099003|56012099003|22082099003|6133799003;
x-microsoft-antispam-message-info: ortVh4enuTHXnra6y992VrxJz2BswmKluPvqj9MZB703BGdsa87YKm1Vo1xwMSpnuMUlOptKBPWAasx+4tmKc9N8PFto2q33u7nQ3vH4Lwd4tEYu+2GDpI0dbyxmNurD3fAWnUgTwF61FufoBiSzRwXoIj+RWp1Cuzr/Xd8op537abrV/12XBTzpn20GR2E2UaMdBi/dfNDV74lj1fdMkbemRJClejjUxXTIKt96RDcVdDjZuUmV+RGm3Z3b0vVuN4yW4Vs4h1KpbF0s/Cokk9FEvIMwmzOWVfiaqJ9a9UY2BSaH9elOaehDEEpWbrUR+c1tjOz5akUjDmhKGHmgRivI3//ydTL8LtK9Vc5Di8X9I0/w0qZyca27lQUSi1DSXqsxFOBp98Wefcy80uCvGi6OtE3F3Vi4zeZC2gyGaLiV8XDAtw5oCXyDDVbGpPXtyoCtC48lZSgADmOSe20QL027hbGEaqRQFYtLMgwEDELX5xZlM2HCt08s4rw3xF0pycZ8VofguvHVRRReyybv66FiTQI7pH7s0ZZqDOgT02eOc0dIbbbQ94jTbyd8XvPa1bsKJeYJ8NbVWJlqZkaRr7Pcsz98Dv4xtru5QQ0Dp5h5dRV0ySlyjSob1tKo5jTlN9S61Sww9DJBqWH0CL+3haZh1+IL1TDWjjJZQBbeD5g4O4M74WNylUPYkWVVkjdP8Zpjfxr1mButntdn0o/BcRGEyrtwtBXUNwT29EkznwIosww2B9nvd+W/jhKgt+I6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(11063799006)(3023799007)(4143699003)(38070700021)(18002099003)(56012099003)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0djRnlnMUo5YkFLZFl3NmxJaDJsemRnd3NSWE5aZlFKVGRaTjYrOGNEUlFK?=
 =?utf-8?B?bHUvc2J2ZkI2bWkra3NWUENTOWQwcFRZeVpCWmZ1TUJyOVpYKzlqZ1hNU014?=
 =?utf-8?B?SDVjRTFvWW9ITFB2dXoxbFlvR1krN3dGQ0k2Z2wyWVNUY0RNcFA3bjFLUnB4?=
 =?utf-8?B?cTEyWXR0a0xMRjJ5VlVzUVNKM1dXVWE0cE1NMTdvVVNDVUJhcHdTNFFMclBL?=
 =?utf-8?B?WFpXSk8ydzBicUVkVVBvK2N2Wk9kc2VIOGtlMFFWQk51NHM0M3VESTMwNEJk?=
 =?utf-8?B?aTIwcVd5djhUS05KclNXYmh0VnR5a1NkR3o3cVZrcmtQVmJ0RGhibS9XOXpY?=
 =?utf-8?B?S2VXUzhqS0lRWDR4VmdmMmFnalBnL244emNxNGZnZCtzWG4zWG43ZkVTTXE0?=
 =?utf-8?B?VzZRdXZ5TVZKRXh1VTZqVVdPcDRHdEllUVJJZmpNSXlBUGo0NzFIbjFwaW0z?=
 =?utf-8?B?RjU2aEZ5d0p3Sm9KTkNOM3dpL0lQT2JkQUtmQnpxUGZOVXN3amdXY0pJYnUx?=
 =?utf-8?B?T3ZlTzhBWHpxTUJ3WlNOdHA1aDNpVUVwSFJIVWViaSs2NEY2YnQvOGczbFhu?=
 =?utf-8?B?NEFqaXpHY080YzZBYTNCUE1YK3JBamtGRFhEdVgzTUZKOGlpVWJGcmdRSisz?=
 =?utf-8?B?SE1HVGhRMFFhVHRGaXNyRGhhR2NiK1pvS0t4UGxpWEtmcFdFMEt2L2Y5SnhE?=
 =?utf-8?B?Mit2SHB3K1E0NTNPaUVyUXhFTGt2YjVrUEVvYWRXRGYxb1o4NlYrUTh2VTIr?=
 =?utf-8?B?VDhwMUxpby9YVzZERFV0bldMZktBQ0lTcVp6cFo1cnl3RGppNTI3Rmg4cTUy?=
 =?utf-8?B?RkNRQ0h4TTdTeFJQS01CSVAvZnluWVBtRUdFUFhwOGNPNW8xZmhhVVRLbFFN?=
 =?utf-8?B?VjRXSmErWFN2T1g5UTA0d2FuajlhWERnZk5DdG1FSndKTkhFY0ZUR2srMUxW?=
 =?utf-8?B?WUZRbngzck1VYnlJd0FQdUJ5S3k1dmVBeTVmMDRuZUhpamhuZFpVWlJqclVR?=
 =?utf-8?B?eUtHdzlaZlA4em4rWUVVVXRqTWRXRkpiRThXS216Q29vOG1lNUhnVzM0SjB6?=
 =?utf-8?B?OVNzMGNkbHBPMWNDL3hNeTFacVlWTjZkOHlBRThhNTk1cUpIRHRSWTZsTjF2?=
 =?utf-8?B?ZFhTM3hlcnRqRGpTMEJ2WWUvL0xGaHZHU2tyQ3AvaHZqd2RuR3NJQk9wL0tw?=
 =?utf-8?B?YUhPblBwcWNkL3ljVGYyTFF1T2Z1RUxiZUF1bkJhMG8rSkJxVmlXekdaS1hM?=
 =?utf-8?B?QURHVld3cWs0d1RDSnZwT041L3QxRy9LdW44MFFWRHRZUlJIcFZDYmxhbkFX?=
 =?utf-8?B?bCt6NkxBNzhva0U5ZktlQ2g1TzNZd09jTTY3c2V4YjQzaVJmN1doMDluNU0z?=
 =?utf-8?B?V1Azc2dsb3RweGdPVzErekJSV0VOM1RabjZIMjVDc1l4cXFBcjBBalJFYlZm?=
 =?utf-8?B?YW1MQ2l2SHhuRkpaclRjVTQ5Tk5DcXVMTUpjN1JKMnB1cHZmVmUwU29uWGJK?=
 =?utf-8?B?TWZHWHdFT2hHNktzSTJaUHRac2xNc08xV1ZDSXRVaWFHSWdOMm1uUFhEY21S?=
 =?utf-8?B?LzhDcDhSRHNGK0xMSTY5Y2RocUN6U2JBdkhzU1lKMUt5OW8zdGdQd2lHZ2M1?=
 =?utf-8?B?SXRvUGdwR3ovcTJlOGJJU2F5Mzk0K1ZRcDIwdm9rSXdLT21xWlZqd2JVT2VG?=
 =?utf-8?B?WWRwZW5ySXhzRStXNW5YRWxpQzBNZWpsa3U2OTU4d1VQUmErRHljUGxUOFJF?=
 =?utf-8?B?b3ljSm5KV0dDODByYTNZSDNwYmFxRXBYT0FXMEhOUTBYTmNXRkZPQTJQNU9r?=
 =?utf-8?B?cTgrRk4rNU9FZHVzd0p4MFMzKytiZmRDdzZueWNabVBEVTAxbkg4aktoODlY?=
 =?utf-8?B?eVJFeHJmS213c0w4Rk1TeFFGZUlCdThKS25HdWpJWEpHSDFUdTlJeTYvUXdG?=
 =?utf-8?B?Qkw1djcwOVZMaUFKQ2Q0QkgwQThkQVFTUmtnZC9LMjE0RSsvZlRzVWR3amNy?=
 =?utf-8?B?VDZQZk1YMzFXa2VOUGliYm5tVmsvQ202SXhlak5GMm1tVUQ1NlZWNTZCMDZi?=
 =?utf-8?B?K3pjYzFTcm1vSkt0TzFDbWtMdDBIbFhUQVZUWXlwK3A2ZGNXaHk0ZUtnKzhV?=
 =?utf-8?B?eWRDM29IcDMrWGM4L0h5UlNyYWllMHUweW0vTFpkaEhDeXdYekVKMjBGSkJ1?=
 =?utf-8?B?MzJCWFZCalk3K2RTWXFwa2hWM0EyV1p6VkU2RExhR250OFRwL2NUdEtRQThG?=
 =?utf-8?B?Z3NnenM3K3E5Um5zL3JxL2JqYm1YMnV2a3ZyeU1kUEZYMGFENzRtUDJQSm11?=
 =?utf-8?B?VU53S0xmb2VkeDNON2tkT1FMNXUvMkg1UDhnYUtsTCtpbHhFQWRmUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: No/dF6qN7zP5qurcsyo8I/a3dRwzH/z69KirsY3VTqD7ij3QzW0T4lwOUT4U2GQtamlINb4xxBCYDWerUwIPh/nf9PniB/aB9IFhkJS/P2OHehPp0/4F+UcLrrjgrBZvwBQ4IaI07TY1fGtnceC3JWMks7ziMBz1x05RMVT4y05PXreFTjaIc7PV3KyTyNRvi4NgHh2D6/ywiMef895j7HekbgQU2po6MieBmfEnxjqxjJNJYHxC8WwiLRxqkyBN+rHdduphQ+L+utxXSRgIV7a5W3iBrJ/HgdYych/VsPqI+mAVktQ18ZRCkIv9v/KE2oQ/2XgCZSbXgYlrNvUEuw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea2a33f0-9d6c-4531-e0bd-08deb7bf0ff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2026 05:00:36.7334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9RK4Z1O/M+MwM7hCsnZv8RRjhA4IjO5WADtWV3nBAthK4wR+pvmSDs3uaiLTj84D7CTJ5lFUh3pwh9zYg5IAqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF7C7D8332C
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F3BFD5AED79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGliaW4gTW9vbGFrYWRh
biBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNv
bT4NCj4gU2VudDogVGh1cnNkYXksIE1heSAyMSwgMjAyNiA2OjA2IFBNDQo+IFRvOiBNYW5uYSwg
QW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTaGFu
a2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tOw0KPiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtQQVRDSCB2NiAwMS8xNl0gZHJtL2k5MTUvY210ZzogQWRkIGludGVsX2NtdGdfaXNf
YWxsb3dlZCgpDQo+IGZvciBDTVRHDQo+IA0KPiANCj4gT24gMjEtMDUtMjAyNiAxNDozMSwgTWFu
bmEsIEFuaW1lc2ggd3JvdGU6DQo+ID4NCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPj4gRnJvbTogRGliaW4gTW9vbGFrYWRhbiBTdWJyYWhtYW5pYW4NCj4gPj4gPGRpYmluLm1v
b2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNvbT4NCj4gPj4gU2VudDogVGh1cnNkYXksIE1h
eSAyMSwgMjAyNiAxOjQ5IFBNDQo+ID4+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50
ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4+IENjOiBTaGFua2FyLCBVbWEgPHVtYS5z
aGFua2FyQGludGVsLmNvbT47DQo+ID4+IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOyBO
aWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPj4gU3ViamVjdDogUmU6IFtQ
QVRDSCB2NiAwMS8xNl0gZHJtL2k5MTUvY210ZzogQWRkDQo+ID4+IGludGVsX2NtdGdfaXNfYWxs
b3dlZCgpIGZvciBDTVRHDQo+ID4+DQo+ID4+DQo+ID4+IE9uIDEzLTA1LTIwMjYgMjI6MDgsIEFu
aW1lc2ggTWFubmEgd3JvdGU6DQo+ID4+PiBDTVRHIHdpbGwgYmUgZW5hYmxlZCBvbmx5IHdpdGgg
REMzY28sIHNvIGFkZCBhIHNlcGFyYXRlIGZ1bmN0aW9uDQo+ID4+PiBpbnRlbF9jbXRnX2lzX2Fs
bG93ZWQoKSB0byBjaGVjayB0aGUgcHJlcmVxdWlzaXRlcyBmb3IgZW5hYmxpbmcgQ01URy4NCj4g
Pj4+IERDM2NvIHdpbGwgYmUgZW5hYmxlZCBpbiBhIHNlcGFyYXRlIHBhdGNoLg0KPiA+Pj4NCj4g
Pj4+IHYyOg0KPiA+Pj4gLSBSZW1vdmUgc2VwYXJhdGUgZmxhZyBmb3IgREMzY28gZnJvbSBjcnRj
X3N0YXRlLiBbVW1hLCBEaWJpbl0NCj4gPj4+DQo+ID4+PiB2MzoNCj4gPj4+IC0gRG8gbm90IGFj
Y2VzcyBwb3dlciBkb21haW4gbWVtYmVycyBkaXJlY3RseS4gW0phbmldDQo+ID4+Pg0KPiA+Pj4g
U2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+
ID4+PiAtLS0NCj4gPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210
Zy5jIHwgMTUgKysrKysrKysrKysrKystDQo+ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NtdGcuaCB8ICA0ICsrKysNCj4gPj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwg
MTggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+Pj4NCj4gPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuYw0KPiA+Pj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuYw0KPiA+Pj4gaW5kZXggZTFmZGM2
ZmU5NzYyLi5kYzAzOWJlYTQ1MmMgMTAwNjQ0DQo+ID4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuYw0KPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMNCj4gPj4+IEBAIC00LDcgKzQsNiBAQA0KPiA+Pj4gICAg
ICovDQo+ID4+Pg0KPiA+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L3N0cmluZ19jaG9pY2VzLmg+IC0j
aW5jbHVkZSA8bGludXgvdHlwZXMuaD4NCj4gPj4+DQo+ID4+PiAgICAjaW5jbHVkZSA8ZHJtL2Ry
bV9kZXZpY2UuaD4NCj4gPj4+ICAgICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQo+ID4+PiBA
QCAtMTYsNiArMTUsNyBAQA0KPiA+Pj4gICAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfZGV2aWNl
LmgiDQo+ID4+PiAgICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9wb3dlci5oIg0KPiA+Pj4gICAg
I2luY2x1ZGUgImludGVsX2Rpc3BsYXlfcmVncy5oIg0KPiA+Pj4gKyNpbmNsdWRlICJpbnRlbF9k
aXNwbGF5X3R5cGVzLmgiDQo+ID4+Pg0KPiA+Pj4gICAgLyoqDQo+ID4+PiAgICAgKiBET0M6IENv
bW1vbiBQcmltYXJ5IFRpbWluZyBHZW5lcmF0b3IgKENNVEcpIEBAIC0xODUsMw0KPiArMTg1LDE2
DQo+ID4+IEBADQo+ID4+PiB2b2lkIGludGVsX2NtdGdfc2FuaXRpemUoc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkpDQo+ID4+Pg0KPiA+Pj4gICAgCWludGVsX2NtdGdfZGlzYWJsZShkaXNw
bGF5LCAmY210Z19jb25maWcpOw0KPiA+Pj4gICAgfQ0KPiA+Pj4gKw0KPiA+Pj4gK2Jvb2wgaW50
ZWxfY210Z19pc19hbGxvd2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4+PiAr
KmNydGNfc3RhdGUpIHsNCj4gPj4+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0
b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiA+Pj4gKwllbnVtIHRyYW5zY29kZXIgY3B1
X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gPj4+ICsNCj4gPj4+
ICsJaWYgKChjcHVfdHJhbnNjb2RlciA9PSBUUkFOU0NPREVSX0EgfHwgY3B1X3RyYW5zY29kZXIg
PT0NCj4gPj4gVFJBTlNDT0RFUl9CKSAmJg0KPiA+Pj4gKwkgICAgRElTUExBWV9WRVIoZGlzcGxh
eSkgPT0gMzUgJiYgaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLA0KPiA+PiBJTlRFTF9P
VVRQVVRfRURQKSAmJg0KPiA+Pj4gKwkgICAgaW50ZWxfZGlzcGxheV9wb3dlcl9nZXRfY3VycmVu
dF9kY19zdGF0ZShkaXNwbGF5KSA9PQ0KPiA+Pj4gK0RDX1NUQVRFX0VOX0RDM0NPKQ0KPiA+PiBJ
IHdvdWxkIGVuYWJsZSBDTVRHIGJlZm9yZSBzZXR0aW5nIHRoZSBEQzNDTyBzdGF0ZSwgc2luY2Ug
Q01URw0KPiA+PiBydW5uaW5nIGlzIGEgbXVzdCBjb25kaXRpb24gZm9yIERDM0NPLg0KPiA+PiBE
b2luZyBpdCB0aGUgY3VycmVudCB3YXkgY3JlYXRlcyBhIGN5Y2xpYyBkZXBlbmRlbmN5Lg0KPiA+
IENvcHkgLXBhc3RpbmcgZnJvbSBic3BlYzoNCj4gPiBDTVRHIG11c3QgYmUgZW5hYmxlZCB3aXRo
IGR5bmFtaWMgREMgc3RhdGVzLuKAi+KAi+KAiw0KPiA+DQo+ID4gRHluYW1pYyBEQyBzdGF0ZSBy
ZWZlcnMgdG8gRGMzY28vRGM2di4NCj4gPiBTbyBhZGRlZCBhIGNoZWNrIGZvciBkYy1zdGF0ZSB3
aGljaCB3aWxsIGJlIHVzZWQgaW5zaWRlIGNtdGcgZnVuY3Rpb25zLiBEbw0KPiBub3Qgd2FudCB0
byBhbGxvdyB0b3VjaGluZyBDTVRHIHJlZ2lzdGVyIGlmIHRhcmdldF9kY19zdGF0ZSBpcyBub3Qg
REMzY28uDQo+ID4NCj4gPiBBZ2FpbiBjb3B5LXBhc3RpbmcgZnJvbSBic3BlYzoNCj4gPiBDTVRH
IHN0YXRlIG5lZWRzIHRvIGJlIHNhdmVkIGFuZCByZXN0b3JlZCBkdXJpbmcgcG93ZXIgc3RhdGUg
dHJhbnNpdGlvbnMuDQo+ID4NCj4gPiBXaGljaCBtZWFucyBDTVRHIHdpbGwgbG9zZSBpdHMgdmFs
dWUgd2l0aCBEQzUvREM2LiBTbyB3YW50IHRvIGJlIGxpdHRsZQ0KPiBjYXV0aW91cyB3aGlsZSBo
YW5kbGluZyBDTVRHLg0KPiANCj4gSSBjYW4gc2VlIERDNiByZXN0b3JlIGlzIGFscmVhZHkgaGFu
ZGxlZCBpbiBwYXRjaCAxNS4NCj4gDQo+IHRhcmdldF9kY19zdGF0ZSBpcyBhIHNvZnR3YXJlIHN0
YXRlIGRvZXNuJ3QgZ3VhcmFudGVlIGFueSBhY3R1YWwgREMgc3RhdGUNCj4gcmVnaXN0ZXIgd3Jp
dGUuDQo+IA0KPiBJIHRoaW5rIGl0cyBiZXR0ZXIgdG8gbGVhdmUgdGhlIHRhcmdldCBkYyBzdGF0
ZSBkZWNpc2lvbiB0byBEQzNDTw0KPiBpbXBsZW1lbnRhdGlvbiByYXRoZXIgdGhhbiB1c2luZyAg
aXQgYXMgZmxhZyB2YXJpYWJsZSBmb3IgQ01URyBlbmFibGUgY2hlY2suDQoNClRoaXMgaXMganVz
dCBhIHByb3RlY3RpdmUgbWVhc3VyZSwgaW4gbXkgb3BpbmlvbiBub3QgaGFybWZ1bC4NCg0KUmVn
YXJkcywNCkFuaW1lc2gNCg0KPiANCj4gPg0KPiA+IFdlIHNob3VsZCBmaW5hbGl6ZSB3aGF0IHdp
bGwgYmUgdGhlIHRhcmdldF9kY19zdGF0ZSBiYXNlZCB1c2UgY2FzZSBsaWtlDQo+IFBTUjIvTE9C
Ri9QUi1BTFBNIGFuZCBzaW5nbGUgRURQIGNvbmZpZ3VyYXRpb24uDQo+ID4gVGhpcyBpcyB0aGUg
b25seSBmbGFnIGFuZCBiYXNlZCBvbiB0aGF0IENNVEcgYW5kIERDM2NvIHdpbGwgYmUgZW5hYmxl
ZC4gU28sDQo+IG5vIGN5Y2xpYyBkZXBlbmRlbmN5LiBHb29kIHRvIGtub3cgaWYgSSBhbSBtaXNz
aW5nIGFueXRoaW5nLg0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPiBBbmltZXNoDQo+ID4NCj4gPj4+
ICsJCXJldHVybiB0cnVlOw0KPiA+Pj4gKw0KPiA+Pj4gKwlyZXR1cm4gZmFsc2U7DQo+ID4+PiAr
fQ0KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y210Zy5oDQo+ID4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5o
DQo+ID4+PiBpbmRleCBiYTYyMTk5YWRhYTIuLmVkNTQwNTgxNzM4ZiAxMDA2NDQNCj4gPj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5oDQo+ID4+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuaA0KPiA+Pj4gQEAgLTYs
OCArNiwxMiBAQA0KPiA+Pj4gICAgI2lmbmRlZiBfX0lOVEVMX0NNVEdfSF9fDQo+ID4+PiAgICAj
ZGVmaW5lIF9fSU5URUxfQ01UR19IX18NCj4gPj4+DQo+ID4+PiArI2luY2x1ZGUgPGxpbnV4L3R5
cGVzLmg+DQo+ID4+PiArDQo+ID4+PiAgICBzdHJ1Y3QgaW50ZWxfZGlzcGxheTsNCj4gPj4+ICtz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gPj4+DQo+ID4+PiAgICB2b2lkIGludGVsX2NtdGdf
c2FuaXRpemUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiA+Pj4gK2Jvb2wgaW50
ZWxfY210Z19pc19hbGxvd2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4+PiAr
KmNydGNfc3RhdGUpOw0KPiA+Pj4NCj4gPj4+ICAgICNlbmRpZiAvKiBfX0lOVEVMX0NNVEdfSF9f
ICovDQo=

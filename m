Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7h0PC6ynO2qHawgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:47:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF966BD0BE
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:47:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fmJPlUV5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FBA10EE51;
	Wed, 24 Jun 2026 09:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F70010EE4A;
 Wed, 24 Jun 2026 09:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782294440; x=1813830440;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yaUD7RNL9BqyEpBNHRpzWwu12J+4OiQXFq5xKhiXsa0=;
 b=fmJPlUV5RcW1RbC/qPVt58QNgB754omTHikdjCkipT0Ble1ld/MRiSRj
 kBzKP7w+2LX77YS580RoO3NwBcM9kd6cfdQ2L+kmSo51K39sDsiuyDrXt
 rDzbW8P1P0U2+5lestOL/b8co9vKlqUdV9Wn0SlD9R4iDHtuOSJLW6N88
 kEmQ7mFVB9GdkDmm5CqNNQrvqR+dvtagGONuPIbQupAm1u46ZmU8XTL9j
 BSqmxvdR2yJlERVU7CFjoLm7e3DcDKWAttWLHe8H5UVQmotSFXwKxGiNK
 LMbpWYTEkX99zjDWhygyALytAz8W3qDp4Vom2Ec/INtbdBlEpcwz//Xs0 w==;
X-CSE-ConnectionGUID: pepYvbVVRXy14rxarfMw+Q==
X-CSE-MsgGUID: 1o7APMWlTcGugk0PdFOASw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="100475518"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="100475518"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:47:09 -0700
X-CSE-ConnectionGUID: aPUeu8GETzCGpsSqut3Gsw==
X-CSE-MsgGUID: qJ0dY7RES8iAU4SyQrimWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="273480178"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:47:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 02:47:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 02:47:08 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.68) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 02:47:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jdUs6eo4M8uUPHctc1IZRk+AHbyESN7m23hdzzNyjF4sONlw72mnxd3KUDpk9dvAoiLpBlbR3zt2JF/8Fq/Tb13JsCg3aGF1sb38u2zbzDcKB7NX4OsLGbsdokFn1dmtRSpRFEV8za/hM5MMWqv0+/0O8wrK2bDtVeAjGXX8h/3ZXbq7z2M0LTLyxxsM28vVIMxRDeH1kyie5Jr5RDEOXAl3E6k+MlT34/S6PeXFZrXVhLEnLNeujzSDxW4QvfrUl5TRljW0vj+klR4zHtqEp3QRYvz3rfC/ZKA9hWt5Y509bRWGLm+O0gtnX5UxRBHq3wThCAt4OKrLcdxBS8VO6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yaUD7RNL9BqyEpBNHRpzWwu12J+4OiQXFq5xKhiXsa0=;
 b=CscOrB+N1TULuk3+XybF2QMDKBXx5mUjtgI9+PvyXZNfKjpPh4JtEJiuDxHTe3vb1OaYRrXO9ovB1+M1CSG/PWkurLQEizgbWfxjkPM3yQFQA3Ps2JM0kpZry/Mza8AgzW0CxEl8FPAv7ohD0jCM4mDtS3jtdpb31QvpGrMUc0MZsmX0I+S0wl7VhdUaivuhWGr/LVKq89bWH96V2QK2Mz0Q2c3YZaRcnTlmnwQX5FCb+feXBeGChwdojH+BXfBzqrtsUhr6pqRSxPStp8v435Y24Sq2DqEdiqyk36aOODB0iifce8uq/LOKmPeOCrVqFahgWI3FYfxANy/9XT6u+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by BL3PR11MB6412.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.12; Wed, 24 Jun
 2026 09:47:00 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 09:46:59 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 19/28] drm/i915/dp_link_caps: Track max common lane
 count in link_caps
Thread-Topic: [PATCH v2 19/28] drm/i915/dp_link_caps: Track max common lane
 count in link_caps
Thread-Index: AQHc/c12lFxZg8jrQUGPkyYeHyGBobZNgRyw
Date: Wed, 24 Jun 2026 09:46:59 +0000
Message-ID: <DS4PPF69154114FF9717D84F17C8BEFBB52EFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-20-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-20-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|BL3PR11MB6412:EE_
x-ms-office365-filtering-correlation-id: cc790159-1128-4bb2-cf19-08ded1d58984
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|18002099003|56012099006|11063799006|22082099003|3023799007|4143699003|38070700021;
x-microsoft-antispam-message-info: sVnspAiUwAJbTOhy4StrB6miakfel8OCDr1mXkXXx4OT4hYwLhN4iObMUtfFiPdGKc9LtFeCpPNhv7Hun70Y39tji/qL45BH1Jer1kfjpuvlgasrtg+0+/BM0BNgRm6jCJ251X4Ffo9VviBFdRU6g9tZ3jU7z0gNbNyf8sJdF+3BcfS59jsrMK5DtfwhuIjcb1Sb/OkIyQEdQDwAPXC0tCNBC5pfa6EWrxIXMADF4Tqd/sC3T83dhSloSS+nVt2XhbMoEf0yuDH00LmQ2PpygAxLw20s5+poApCjSkPRKnfKuTn66nGDiJMcQF38/xSwMcVBHnhVeHCLAffNqmsOUhhl9e3lf4LopKHp+seSNANfxactNK6Ztl3vn/ffMiFFMHxs2TSVgJ3kpR4o8ho7Sb1+uXpJaH+2e8P6jCJ743TksPC6avppyfpn3p6ZsYc0zt32Lh6szx/cRnx4+9Fms10jdQVdXJV2C0SAFau4KUaHXDJUHjS1Az8qEe2W93x1X77MqrWQ/R0DE8+CcMny2Wiac0WndW1/JrRhAvlKqzsCK5KMo63jXkUtzpxYiccGOlMw2wexoCx8IIJ4fY3piI1XWr+mAFdY6pYBsN6gpf7sWxFlt4dfjYH5ggSQ1hb9N6pJ5Hhj4FxgwCKBgRDqvsYP5atNAryOdzzVqIS4rqN16CNaEUEszHc5Y8qeUCV3R315i3l6JMKBOTy2Yj6ujA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(18002099003)(56012099006)(11063799006)(22082099003)(3023799007)(4143699003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekEyV3QxZXpad3RGNElYdmlqbW1va1RYaFdyU2VnQ0drMXc1QnBCVTJlREFi?=
 =?utf-8?B?MW94Z0hLWjlNd2lHemhGYnV4dGY0VHBLVU5VL3ZDWHVKcDh1eWt4Q2ZGbVJ4?=
 =?utf-8?B?TjlWTlF1bkZvWEZsd1JvNnBBTVhmanMvYURseUxoY1ZqSzZSYUUyMm9WM2tD?=
 =?utf-8?B?UGRYaUUzeklKdXEvd255c0hadkl1S3JDczkrb0w3QWFReXl1RG5iUE5qbndv?=
 =?utf-8?B?L0lWZHRXd0VCa3VmWXFiOWtxZU9wRjA5U1J0NWZJU1lUSnkyR1ZoRmJsMkdG?=
 =?utf-8?B?enBGZ2NRRFk2aU00VXdXK28rell6T3FxUmo2QUZuZEZjV2ZZVHhZNlUzZTZQ?=
 =?utf-8?B?cm9KMk9CSExXQ0VlSHIwVnVMbTNPUUExVUhFdzJKQ2FOTW9xYlIvQy9kcWkz?=
 =?utf-8?B?ZkdBTmFGZm84bS9ZQmd4b2o3NWc3WnlqNmc2N3RsbkxFU1F0ck55K1JPSTdB?=
 =?utf-8?B?bW02bUd1UU1qQkVwL2dZUFp3WFN1R21GaVczSlZqcFY3VzdZOGFpaU1QQ21Q?=
 =?utf-8?B?REc4MUYyVzNZd0tOQmxvSW5Lb0NJNkdYNHFnMGJYZlFPakUwL0ppWUprZy9w?=
 =?utf-8?B?MjhmNTBwd05uSFZSS1NmMVBjS1ZYSUEyb2xTNE9sOEtOelQ2ZlJLNHZrajBo?=
 =?utf-8?B?dlJGcXFucm9Xc2hHN0t4ZXd3bVZFYW5PbE1JRytQQ3gyUVN0dnk3aUs2cEVt?=
 =?utf-8?B?NzZhSVJOV2tqOTBzTWRyL3VGc3BPWG1ZRUg5VlNhYlp6SDFoaGlESmZNVXR4?=
 =?utf-8?B?N012bndxMGcrNnpIYW5SaFJiNUNlMTVGNGtoOEx3SXBtOUx5MDd2VVg3M256?=
 =?utf-8?B?cWNPOFl6M0haNnpXQzlCbmg5NWwzM0JUUkt5SW9CR3JqZk9DbUt0Y3hVL3Bp?=
 =?utf-8?B?eHduT29uZWZtNGpkSHQvdHVTSjBodTYvSnFBOS9VME9qZWRDeGdJSEtHTGJk?=
 =?utf-8?B?SjNuNUNyanIxQk1EZHdINVBKRTlFamU2eHFaTjQzVGtiQnc2cmFZSDh2bHFT?=
 =?utf-8?B?a0lYdHQ1OTVDRXlaeWhTQzlSNUtKRHhaNURRcXIxNGYzME4reVdEaWgyM0RD?=
 =?utf-8?B?MEJ6dnV5UGFpaGV4eEpxSEpCZnVtMGoyUE13dkxKL3Z5V0JDQlJoRjMyWlk0?=
 =?utf-8?B?UUNpZU1LUWZtTU5kSmRaUFpmR3l2YUdRT0pUeER3a2pzOTJIdnVJYVV4V1BV?=
 =?utf-8?B?K2ZjU1NmTzd0UlhhYnI5UmlSbG1iNXpEMWlXK0E4TTVEdnA3L3ZFYnRkN2tw?=
 =?utf-8?B?S0g5emxieWJwN0ppaWhLb0ErMmZXOUE4emFYK0N1YVE5YUVzUHl5aUorMUtx?=
 =?utf-8?B?Q3B4VUp3WUR1bGJiSWNnL0JtOG1EbEJFWi9IZjRWcCtUTmRVS3dscUtDNVZQ?=
 =?utf-8?B?c1JBamFmM3Erc3c5TklWREVBT0QvNnNlR1JTa1NIS2JiclpxU1RTZ3kwTWZM?=
 =?utf-8?B?S3VjTGJXUlNMa2NpWVFFVUhLQkJ2OTlFS2tWYnBMdU1vMmFDUFV4Q3prOE9W?=
 =?utf-8?B?R3VFUFdicTEzbm42WEt4WXM4bUwyYlA2MEpjQVhCOUwxd2xKMkZPSWJKeXM5?=
 =?utf-8?B?d1JlSlIxeW1BNmhiUHp1cmFwNEM1Y2dLR2pVT2w2MXRQVUl4Qjg1ak9WUTg5?=
 =?utf-8?B?ek9DNjl2a0c5VU9xalNmZG5tSWcwTjV5aTN1aFErNDI5eW9iWlJXYWpvUFRS?=
 =?utf-8?B?SU42SXp0L2Q2dkR1QkJhU3pESis5NFVFQXN1cEFmVnNkK1QxdmlkN3Fyb2Fh?=
 =?utf-8?B?d2RpbkpERHRBWm50aFJidmk4SFEyOE9Nc3RzQVBkUmFnVnpoaFdFS3dzZnJV?=
 =?utf-8?B?L0xDU0Q5T3FUcHZRQzdKVmlTVEdrN0JYY0srbkN0WkU1QWdObW9OeVh0YlZi?=
 =?utf-8?B?VWlaK2dRS3JlQ1Frd0FQY0tlMXRKRTlSRGJVNVNxMlpqZ1pkS0RmRURpazhD?=
 =?utf-8?B?eUxUVkp6UVNjWnVWU3JhNGZkNFgwVUFFU2l3SXJLVG1wYStFdGtsekR1ZEND?=
 =?utf-8?B?MVZ4ZHorTE5ZWGMxdjNsYlVlTURCRTA3MjFRUklmaExZNXhsMUo4QVhzampa?=
 =?utf-8?B?ZkpQaFVQQ0NWSFRJb2N6emFZeXIwV2ZkcDc0MUM0TE96alRKWGpSN01Cd01l?=
 =?utf-8?B?aFJaWTNNOXMvTE55Ny9OTXRPSVhJVW84aWJyaCt1bkZEM2Q1OHcvK29vZ2dr?=
 =?utf-8?B?c1VvNmtZaXNFMGloRUhJZ3IzVm5IdFRtSDk4T3lsUnVwMWZ1V1ZDV3VTbmdW?=
 =?utf-8?B?L3VQdkFCSFFEdUdQTTFXTHd2bHFXSU8yUmwybzlwUXhtSkM3dWdoWlFPc2Jk?=
 =?utf-8?Q?uV8qwqKbZVZ4beUpPK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mh11mNXuvI2kmCnPJrLXh6ySNijM63J84clLJ1vwm9gl26wXKvPZA96C5LwM9hBdaoUSrpk+bQFdLoVDBhwtJ1RH77b69Ti0s+CVMCfNcW8AVgWo3qATgTwNo6EXkvMjDNbTKULA0g3L4sM6ref/HtLLhdwVkGy2YTme/5sf+6zXrTLW9R0+sf3e42lmNRX5CCb6a68c9kv8i7vHJdLluI9HBBYgf1sV9IvcPmS2B1feLxssSl66+dVtUjOAdRaEj1gZdIObpsIdVNDHGa/JomdDFsbsA+RVWobv5LtGZFPphD1jee8L4cR6CnKdnE5HrrGmENxejW1LbPnvLxRyZg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc790159-1128-4bb2-cf19-08ded1d58984
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 09:46:59.8534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KAQWE/7IgwotXY+qFSXZ85gTMh92JpnD+SbyJ9JBNupbV6LIkWDUbsWAXxVyUsFMvz+qAQI5ExxMtPmex03c9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6412
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DF966BD0BE

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA5DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDE5LzI4XSBkcm0vaTkxNS9kcF9saW5rX2NhcHM6IFRyYWNrIG1heCBjb21t
b24gbGFuZSBjb3VudCBpbiBsaW5rX2NhcHMNCj4gDQo+IFBhc3MgdGhlIG1heGltdW0gY29tbW9u
IGxhbmUgY291bnQgdG8gaW50ZWxfZHBfbGlua19jYXBzX3VwZGF0ZSgpIGFuZA0KPiB0cmFjayBp
dCB0b2dldGhlciB3aXRoIHRoZSBzdXBwb3J0ZWQgbGluayByYXRlcy4gVGhpcyBwcmVwYXJlcyBm
b3INCj4gY29udmVydGluZyBhbGwgdXNlcnMgb2YgaW50ZWxfZHBfbWF4X2NvbW1vbl9sYW5lX2Nv
dW50KCkgdG8gcXVlcnkgdGhlDQo+IHZhbHVlIGZyb20gdGhlIGxpbmsgY2FwcyBtb2R1bGUgaW5z
dGVhZC4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAg
ICAgIHwgMTQgKysrKystLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua19jYXBzLmMgfCAxMyArKysrKysrKystLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oIHwgIDIgKy0NCj4gIDMgZmlsZXMg
Y2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDg0NjQwYzgzOTQ1MzQuLjI4
NzNiMmRmMjlmODQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMNCj4gQEAgLTMzOSwyMyArMzM5LDE5IEBAIGludCBpbnRlbF9kcF9tYXhfc291cmNlX2xhbmVf
Y291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+IA0KPiAgLyoNCj4g
ICAqIFRoZW9yZXRpY2FsIG1heCBiZXR3ZWVuIHNvdXJjZSBhbmQgc2luay4NCj4gLSAqIFJldHVy
biAldHJ1ZSBpZiB0aGUgbWF4IGNvbW1vbiBsYW5lIGNvdW50IGNoYW5nZWQuDQo+ICAgKi8NCj4g
LXN0YXRpYyBib29sIGludGVsX2RwX3NldF9tYXhfY29tbW9uX2xhbmVfY291bnQoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCkNCj4gK3N0YXRpYyBpbnQgaW50ZWxfZHBfZ2V0X21heF9jb21tb25f
bGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0KPiAgCXN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOw0K
PiAgCWludCBzb3VyY2VfbWF4ID0gaW50ZWxfZHBfbWF4X3NvdXJjZV9sYW5lX2NvdW50KGRpZ19w
b3J0KTsNCj4gIAlpbnQgc2lua19tYXggPSBpbnRlbF9kcC0+bWF4X3NpbmtfbGFuZV9jb3VudDsN
Cj4gIAlpbnQgbGFuZV9tYXggPSBpbnRlbF90Y19wb3J0X21heF9sYW5lX2NvdW50KGRpZ19wb3J0
KTsNCj4gIAlpbnQgbHR0cHJfbWF4ID0gZHJtX2RwX2x0dHByX21heF9sYW5lX2NvdW50KGludGVs
X2RwLT5sdHRwcl9jb21tb25fY2Fwcyk7DQo+IC0JaW50IG9sZF9tYXhfY29tbW9uX2xhbmVfY291
bnQgPSBpbnRlbF9kcC0+bWF4X2NvbW1vbl9sYW5lX2NvdW50Ow0KPiANCj4gIAlpZiAobHR0cHJf
bWF4KQ0KPiAgCQlzaW5rX21heCA9IG1pbihzaW5rX21heCwgbHR0cHJfbWF4KTsNCj4gDQo+IC0J
aW50ZWxfZHAtPm1heF9jb21tb25fbGFuZV9jb3VudCA9IG1pbjMoc291cmNlX21heCwgc2lua19t
YXgsIGxhbmVfbWF4KTsNCj4gLQ0KPiAtCXJldHVybiBpbnRlbF9kcC0+bWF4X2NvbW1vbl9sYW5l
X2NvdW50ICE9IG9sZF9tYXhfY29tbW9uX2xhbmVfY291bnQ7DQo+ICsJcmV0dXJuIG1pbjMoc291
cmNlX21heCwgc2lua19tYXgsIGxhbmVfbWF4KTsNCj4gIH0NCj4gDQo+ICBpbnQgaW50ZWxfZHBf
bWF4X2NvbW1vbl9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IEBAIC03
MDUsMTIgKzcwMSwxMiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9kcF9zZXRfY29tbW9uX2xpbmtfcGFy
YW1zKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJaW50IGNvbW1vbl9yYXRlc1tEUF9N
QVhfU1VQUE9SVEVEX1JBVEVTXTsNCj4gIAlib29sIHBhcmFtc19jaGFuZ2VkID0gZmFsc2U7DQo+
IA0KPiAtCWlmIChpbnRlbF9kcF9zZXRfbWF4X2NvbW1vbl9sYW5lX2NvdW50KGludGVsX2RwKSkN
Cj4gLQkJcGFyYW1zX2NoYW5nZWQgPSB0cnVlOw0KPiArCWludGVsX2RwLT5tYXhfY29tbW9uX2xh
bmVfY291bnQgPSBpbnRlbF9kcF9nZXRfbWF4X2NvbW1vbl9sYW5lX2NvdW50KGludGVsX2RwKTsN
Cj4gDQo+ICAJaW50ZWxfZHBfZ2V0X2NvbW1vbl9yYXRlcyhpbnRlbF9kcCwgY29tbW9uX3JhdGVz
LCAmbnVtX2NvbW1vbl9yYXRlcyk7DQo+ICAJaWYgKGludGVsX2RwX2xpbmtfY2Fwc191cGRhdGUo
aW50ZWxfZHAsDQo+IC0JCQkJICAgICAgY29tbW9uX3JhdGVzLCBudW1fY29tbW9uX3JhdGVzKSkN
Cj4gKwkJCQkgICAgICBjb21tb25fcmF0ZXMsIG51bV9jb21tb25fcmF0ZXMsDQo+ICsJCQkJICAg
ICAgaW50ZWxfZHBfZ2V0X21heF9jb21tb25fbGFuZV9jb3VudChpbnRlbF9kcCkpKQ0KPiAgCQlw
YXJhbXNfY2hhbmdlZCA9IHRydWU7DQo+IA0KPiAgCXJldHVybiBwYXJhbXNfY2hhbmdlZDsNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19j
YXBzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5j
DQo+IGluZGV4IGUyOGY3MzA4MjgzY2UuLmJiNzI3YmNmNGRlMTggMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBAQCAt
MjUsNiArMjUsNyBAQCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzIHsNCj4gIAkvKiBSYXRlLCBs
YW5lIGNvdW50IGNhcHMgY29tbW9uIHRvIHNvdXJjZSBhbmQgc2luay4gKi8NCj4gIAlpbnQgbnVt
X3JhdGVzOw0KPiAgCWludCByYXRlc1tEUF9NQVhfU1VQUE9SVEVEX1JBVEVTXTsNCj4gKwlpbnQg
bWF4X2xhbmVfY291bnQ7DQo+IA0KPiAgCS8qIGNvbW1vbiByYXRlLGxhbmVfY291bnQgY29uZmln
cyBpbiBidyBvcmRlciAqLw0KPiAgCWludCBudW1fY29uZmlnczsNCj4gQEAgLTE2OSw3ICsxNzAs
NyBAQCBzdGF0aWMgaW50IGxpbmtfY29uZmlnX2NtcF9ieV9idyhjb25zdCB2b2lkICphLCBjb25z
dCB2b2lkICpiLCBjb25zdCB2b2lkICpwKQ0KPiANCj4gIC8qIFJldHVybiAldHJ1ZSBpZiB0aGUg
c3VwcG9ydGVkIGxpbmsgcGFyYW1ldGVycyBoYXZlIGNoYW5nZWQuICovDQo+ICBib29sIGludGVs
X2RwX2xpbmtfY2Fwc191cGRhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gLQkJCSAg
ICAgICBjb25zdCBpbnQgKnJhdGVzLCBpbnQgbnVtX3JhdGVzKQ0KPiArCQkJICAgICAgIGNvbnN0
IGludCAqcmF0ZXMsIGludCBudW1fcmF0ZXMsIGludCBtYXhfbGFuZV9jb3VudCkNCj4gIHsNCj4g
IAlzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICpsaW5rX2NhcHMgPSBpbnRlbF9kcC0+bGluay5j
YXBzOw0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxh
eShpbnRlbF9kcCk7DQo+IEBAIC0xNzksMTMgKzE4MCwxMyBAQCBib29sIGludGVsX2RwX2xpbmtf
Y2Fwc191cGRhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAlpbnQgaTsNCj4gIAlp
bnQgajsNCj4gDQo+IC0JaWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgIWlzX3Bvd2VyX29m
XzIoaW50ZWxfZHBfbWF4X2NvbW1vbl9sYW5lX2NvdW50KGludGVsX2RwKSkpKQ0KPiArCWlmIChk
cm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sICFpc19wb3dlcl9vZl8yKG1heF9sYW5lX2NvdW50KSkp
DQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+ICAJaWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRy
bSwgbnVtX3JhdGVzID4gQVJSQVlfU0laRShsaW5rX2NhcHMtPnJhdGVzKSkpDQo+ICAJCXJldHVy
biBmYWxzZTsNCj4gDQo+IC0JbnVtX2NvbW1vbl9sYW5lX2NvbmZpZ3MgPSBpbG9nMihpbnRlbF9k
cF9tYXhfY29tbW9uX2xhbmVfY291bnQoaW50ZWxfZHApKSArIDE7DQo+ICsJbnVtX2NvbW1vbl9s
YW5lX2NvbmZpZ3MgPSBpbG9nMihtYXhfbGFuZV9jb3VudCkgKyAxOw0KPiANCj4gIAlpZiAoZHJt
X1dBUk5fT04oZGlzcGxheS0+ZHJtLCBudW1fcmF0ZXMgKiBudW1fY29tbW9uX2xhbmVfY29uZmln
cyA+DQo+ICAJCQkJICAgIEFSUkFZX1NJWkUobGlua19jYXBzLT5jb25maWdzKSkpDQo+IEBAIC0x
OTcsOCArMTk4LDEzIEBAIGJvb2wgaW50ZWxfZHBfbGlua19jYXBzX3VwZGF0ZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLA0KPiAgCSAgICBtZW1jbXAocmF0ZXMsIGxpbmtfY2Fwcy0+cmF0ZXMs
IG51bV9yYXRlcyAqIHNpemVvZihyYXRlc1swXSkpKQ0KPiAgCQlsaW5rX3BhcmFtc19jaGFuZ2Vk
ID0gdHJ1ZTsNCj4gDQo+ICsJaWYgKG1heF9sYW5lX2NvdW50ICE9IGxpbmtfY2Fwcy0+bWF4X2xh
bmVfY291bnQpDQo+ICsJCWxpbmtfcGFyYW1zX2NoYW5nZWQgPSB0cnVlOw0KPiArDQo+ICAJbWVt
Y3B5KGxpbmtfY2Fwcy0+cmF0ZXMsIHJhdGVzLCBudW1fcmF0ZXMgKiBzaXplb2YocmF0ZXNbMF0p
KTsNCj4gIAlsaW5rX2NhcHMtPm51bV9yYXRlcyA9IG51bV9yYXRlczsNCj4gKwlsaW5rX2NhcHMt
Pm1heF9sYW5lX2NvdW50ID0gbWF4X2xhbmVfY291bnQ7DQo+ICsNCj4gIAlsaW5rX2NhcHMtPm51
bV9jb25maWdzID0gbnVtX3JhdGVzICogbnVtX2NvbW1vbl9sYW5lX2NvbmZpZ3M7DQo+IA0KPiAg
CWxjID0gJmxpbmtfY2Fwcy0+Y29uZmlnc1swXTsNCj4gQEAgLTIxNiw3ICsyMjIsNiBAQCBib29s
IGludGVsX2RwX2xpbmtfY2Fwc191cGRhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4g
IAkgICAgICAgbGlua19jb25maWdfY21wX2J5X2J3LCBOVUxMLA0KPiAgCSAgICAgICBpbnRlbF9k
cCk7DQo+IA0KPiAtCS8qIFRPRE86IEFsc28gZGV0ZWN0IGEgY2hhbmdlIGluIHRoZSBtYXggbGFu
ZSBjb3VudC4gKi8NCj4gIAlyZXR1cm4gbGlua19wYXJhbXNfY2hhbmdlZDsNCj4gIH0NCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtf
Y2Fwcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMu
aA0KPiBpbmRleCA3ZDdkM2QxMWJhM2ZlLi5lMmY1M2ViMTY3YThlIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmgNCj4gQEAg
LTI3LDcgKzI3LDcgQEAgaW50IGludGVsX2RwX2xpbmtfY29uZmlnX2luZGV4KHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsIGludCBsaW5rX3JhdGUsIGludCBsYW4NCj4gIHZvaWQgaW50ZWxfZHBf
bGlua19jb25maWdfZ2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGludCBpZHgsIGludCAq
bGlua19yYXRlLCBpbnQgKmxhbmVfY291bnQpOw0KPiANCj4gIGJvb2wgaW50ZWxfZHBfbGlua19j
YXBzX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAtCQkJICAgICAgIGNvbnN0
IGludCAqcmF0ZXMsIGludCBudW1fcmF0ZXMpOw0KPiArCQkJICAgICAgIGNvbnN0IGludCAqcmF0
ZXMsIGludCBudW1fcmF0ZXMsIGludCBtYXhfbGFuZV9jb3VudCk7DQo+IA0KPiAgdm9pZCBpbnRl
bF9kcF9saW5rX2NhcHNfZGVidWdmc19hZGQoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVj
dG9yKTsNCj4gDQo+IC0tDQo+IDIuNDkuMQ0KDQo=

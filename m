Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B39B431C1
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 07:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D132910E970;
	Thu,  4 Sep 2025 05:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K9WW+Mbc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70FDF10E22C;
 Thu,  4 Sep 2025 05:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756964830; x=1788500830;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lWRlg/x1uCy4Eo9I5sSXPiWT5i7fthG63n1iWgzbxu0=;
 b=K9WW+MbcBFsK2uZu8YzFxqQloYMdFSVMBwY2W2Ox/lvwAbZiLns9yWg+
 ZSj3xVACa4zsHNNSeBkf4QECtLBNfCbhh5CV/a0vZZzfewaIRZnvX4g0B
 9qmJiXbK3leVk40lwsseQ0O2QUvuyXHiufpDm4Q/2v6qF2s+1YIbLdLiE
 Izn3881WyobwFnMrcW/+hHc8RH1DSsVAhdjJIxyZm0Cq4M7rv1oC7cuiO
 2cYO5lrheKUx5WSCIx/TpTNwqt833q40hp7IZZrTYAdLapzSg0Qmmbt7n
 RFU13cUN4itJxtfpGH4HqBcDKeQg+jROPEnvMm1HfBLHjwM3vYzNCd9om w==;
X-CSE-ConnectionGUID: G9Z4HgcrRYaajGVQwftzhw==
X-CSE-MsgGUID: c0PFj8daS1WvTyL98w94yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="76741292"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="76741292"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 22:47:09 -0700
X-CSE-ConnectionGUID: hnSZSVv2TLihAlWQOygoMQ==
X-CSE-MsgGUID: TxsBjuOLSUaaUVQHhT8NQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171346615"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 22:47:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 22:47:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 22:47:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.70)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 22:47:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hGh4Jniak65cY95kDxbY3QBNREQGZhjYVmMjALR58j3oO6LIWeEekTeR0pLFHvMSp/HmCQV4Q3lnMHWym4XNnIsSQLwTHS7XlMB2QxiyQ0qWb7Kptu46pRPl+XQN9fJ0ie1cW6PMPEy+oVZZ9qJ1+xS0Z4cP+hBhG5ApWMQSU0O2Yc/BRAPIJqy1XJMA4elavm+9yPMHcUkr+OSasM/XJQIz6kbrB9WInnKGTQriYNyO+FafHTPEsqKc7pelqsh/nSn67z5SA2etZOa+CSq8KvpVVVN19N032YdKVf8MP/FVlPTUImcH+kjXCDFiGuML/RJXCk2OddxL9gejf50PQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lWRlg/x1uCy4Eo9I5sSXPiWT5i7fthG63n1iWgzbxu0=;
 b=LQbNus8rKbRafyKu1QFs5R51UPlQcSbt63W4FaJzenJ4cI1HG5Uc0wcAplnCnir+eyNNvEwCk8sfmlUo0zNrOUHZqffJSGvHSdiYS2Hkj5DRvqjwiYlSXGHiQB+cv+p7bzgH7n26RlpC/lEA9V1QeLhqn7DTQpknk3NOJTiIUj50A0LvSvjMCLHueOYDN0TeGB/aBUKK5dUspBQJ+RKajLrWer80AgEIiYHsre8fgpIDN+w0nercPGhNgs6ovpqmMvdqoRAzsDY0b3ksaKwcxA/4VKSLJVh6HUf57bS+gFMogXpblFNaPTgxNGyFion/2ONLhAkQzD7T4umjC53BWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4977.namprd11.prod.outlook.com (2603:10b6:303:6d::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.17; Thu, 4 Sep 2025 05:47:05 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 05:47:05 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 09/20] drm/i915/power: use generic poll_timeout_us()
 instead of wait_for()
Thread-Topic: [PATCH 09/20] drm/i915/power: use generic poll_timeout_us()
 instead of wait_for()
Thread-Index: AQHcGBZpEF73KRa6O0C6JKCTXN9wx7SCjoCA
Date: Thu, 4 Sep 2025 05:47:04 +0000
Message-ID: <ea50d8f269cd5c718acd297375329738dbe5c960.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <900680516b047ae32e3298b5cdbcede0393e0466.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <900680516b047ae32e3298b5cdbcede0393e0466.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4977:EE_
x-ms-office365-filtering-correlation-id: fbaec8c8-d930-4e54-11de-08ddeb767a77
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ajc5dWRPYUZNQTd4bHNkMmZKa0JNSkErQWhScnFNVEkwalFLd2VMc0ZtQlUr?=
 =?utf-8?B?U2RmRXZ6QmZldlBZc01uaURtV25sa2lFM0JXRWZqVE0vYnJwUGZ6M3c3L21a?=
 =?utf-8?B?RXQ4NHd0NmxlazZuMVRRQ0FwQU9wSEcyMlV1azZvSWh5bGFSSmluTWV4RUVQ?=
 =?utf-8?B?ZzIxeFhLb0J1SjllekozUDlwOHpzc1Vwb2FFc2R4VGV5ZkdCSFdSUmRuVGlh?=
 =?utf-8?B?TkthQ3Q4RU03UU5jOGx0NVQ0Q1FOQnUvWU1XeEhxOUs5bDZFZXJ4Y3VxbExP?=
 =?utf-8?B?WlBEREhEc0JJRWM3TU1TT0l3TjJDQ0pkeWM1MzJZMk9YSzZjNmpyMDUzRVVR?=
 =?utf-8?B?NzlvejBoNndnbWY0Y3BQRy95bDhmQThteG5sMmZxMUNIWW94VDF6Mml4VFYx?=
 =?utf-8?B?OG5qSklXaHhnVjVwS0JOWWFRZm9NNlI4cEtsMmpzSEJPei8zcGtWaDdxZ20w?=
 =?utf-8?B?OG85UTNDbkVpZDM4S3d4TlVlRGZ3MDNDcG5ZUUJjZGdONUp3L1RQaTd3cTlR?=
 =?utf-8?B?L0YrV0k0YjIxWkRUdGFnWFhyV0xGbGM2bktxWnRBMk5DNTY4ZDBMeHNsakpK?=
 =?utf-8?B?RStKaEVIamNSc0htYjZFd2pGUlEzN2p2THlpS1FoWVorZXlNNGVXV0ZzQmRQ?=
 =?utf-8?B?MGgwSGd2Z0c4TEZGVmhId3hucUxRZllJL3pwdHBqTWVzWXZRSndQbVdjRjlL?=
 =?utf-8?B?bzdzbG8wNXVtYWdsdzNaajFKYjYxQmtycTN1WittZGc5cm9HNmhuSmROMjFG?=
 =?utf-8?B?NGgzRXRWeWpPdkFOazhiOUhac29Cb1JZejNuY0phQU9FdXptTXMzdk4rK1l3?=
 =?utf-8?B?bGt5Ui9hWHlKaVlaVEVPSkQzTko4OVVEc042ZW9VR0tlY3NSN3l0Vk9FVUQ1?=
 =?utf-8?B?RGJUcUJiZnNyM0pkbkxqaitwNVp6MGRmYTBmVlh2cFg4bnhHN2l1M25xWmNt?=
 =?utf-8?B?SzEzbnJuWjc4L2xwV2tLSGQ5NVE5L0xxazM4a2NyU3YzQXRNWktpbmREWGpI?=
 =?utf-8?B?Vm14TEgrc3VBdnRMd0krK1NUd1ZwdE5jbkhJMTNMQS9uK3RWZkV1WmRTeFY5?=
 =?utf-8?B?K0x3VnBpc1lWbm5aT1lxWTkrV0JoZVFtK3Zpa0U2V1AxODU0SjZPQUJFWTcv?=
 =?utf-8?B?cE9NaWhyN1g0UkFadzZNQ2VwN0hUSlptSlpoR2Rodi9EWS9YMnM0azJYdlJx?=
 =?utf-8?B?NCtIb1ZyRkJyd3dtYUphdC9HVnd6SE93eGZjSFBUck9BSWRSa0FLRUZaKzR1?=
 =?utf-8?B?WjBoQmVZWk8rbGNNaFZRWTdEUm9pMjhrTzAyNHVwSlNxVWhUQjcxODJlN3dG?=
 =?utf-8?B?c1dNWUphUHVMZnJEcit2cTYzSzlPZmU1azlQVnRKQitSQ1FKUDFkaUlUVU5Q?=
 =?utf-8?B?UUxDV2I3eDIwakpqM2dWTjI1MGxqTjc2MU9zRStIMWhKeHhUdXVDTllldmIz?=
 =?utf-8?B?djBNZDl3MGg5T2NPTGN2TUQ1c3pybTYyTHJyT2lsZTJsaVhiSmJBSFRuaHhH?=
 =?utf-8?B?NTdYeVg2SURJZ2psTDBnYkt2OHhFNy8yTzlYb2VSS3BTcXlaYkdjQ3NmNi93?=
 =?utf-8?B?M2FEbUhuWURiTjVlaGNvYzI4ZndORnFYV21GY2JLbmRvNERXSWNjZDkrTC9Z?=
 =?utf-8?B?blBvaGhqYmNoSWM4WlNIM0pkcmxBckpYQXpVN2xoSlJmNW9QdDhmRzNVWStv?=
 =?utf-8?B?Qml6Ulhxb3c1dE5STVNIckVBSWhvVUlSN3Vpb05rT2ZackNpQ0p1TmttdnZn?=
 =?utf-8?B?ZS9BYUxYVFEzb1dFenFQVy95dDQ0Sm5FcHZlU3JtT2RnZUFLTlJuZnp4bkw2?=
 =?utf-8?B?V2VrNjhrazVOVnVCYmp4aGJKak5vK1VDMGYvaWQ0Nk5SbXVYcmZaZlcyYy9J?=
 =?utf-8?B?NHQreW5ieGpwWEFlMmozazFYYzhaTlZuWUNQc0hCbmVBV0I2cmFJR0YwV0ts?=
 =?utf-8?B?M09lTEl1QVA3K1BPaEZHWUQzZVBaOVlnZENEcE5zUU5BZzh0R3F3NTNxaDUr?=
 =?utf-8?B?ZXdmMFl6b3V3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2FBamhCOFhDdmozVEFjZ3lkNk0xVjdnRHJHeWVMQ0FYQllCNjNNbnY3Mlp4?=
 =?utf-8?B?alNaSTJLK2ZYaEV3ekpiZ2hNaXJycXZ1NTFoU3Z6WDk5NEJ4SmFHWVJ5WTlM?=
 =?utf-8?B?d3JDeWNlUjMzTVhEc3U4NDhhclIydzRZY1JENUJNSmtUT2tSdXFHd01ITVJH?=
 =?utf-8?B?STNxWjFIcFRyeC91MW15SEMvOWFETVBRSFJtTHhGUm1weVRkcmdicVo5Sy9m?=
 =?utf-8?B?bFpITkNGNGEvK3A0Ny9MRzhrdHJSYlBEOVd1dzQ3RkhORSttTEhDRlA0ZUd1?=
 =?utf-8?B?d09Gd0kxOWZHVFpkZUNtcTJLMUl5Z3p5c01La3VXUWVwdkxnc1JNdnUySkFa?=
 =?utf-8?B?b1J4RTROZ3Q0Wi9kQnR1cDhiUnNBUjZ2dHBXYVdwd0lrMWVuV2lzdlE3dmNx?=
 =?utf-8?B?bGtROHhSd0hHZGlyRVJiZUZIR3F6cTJXM2ZhSXc2UzdlQzRSKy9McjRnOHhw?=
 =?utf-8?B?dUQwbVFGS1pETXJPQjQwMFNwMUdaaThZYUxnZGxhV3JhbHVVdmprWnBTL3Y0?=
 =?utf-8?B?RXVucDZubFNtcjBaU3pQcThnR2drQmFWRGkxYmp1UzdKR1FpSU1tT1lKLzQ0?=
 =?utf-8?B?RlhiT0J0ZiswUHRRTkVUTlROVEZxK2lwbUI2U1FCQzZTRy9JZlhhRlBjSDJ3?=
 =?utf-8?B?dEJOb3MyV3g3YURxbHVvWFpEREM2Qnk4eWM1M1g5cnE3eFhMaTB3Tm1XRXdT?=
 =?utf-8?B?Y3UxYVBSSEdmZ2VOTzAzdmVIU3Rva1VrenlQc2dZc2FNRVRBY3BxdDdxV3dG?=
 =?utf-8?B?N0J0RGdpSGJhS1FSYVFtajJNdFprdVV6MTdZWTZ0dit5ckhXSGJQeU9TTUsr?=
 =?utf-8?B?M1VMSlBtUUxpOTZqakQwQ0xWUkdTUnpCazVWV0VLaUszV0dJRnp0N05pVGNP?=
 =?utf-8?B?Z3ZnT3lOWFduMXpjVUc0ajZUczVUV1BYYmJpVGNNbER0aHZ6K0FNaC9MUG45?=
 =?utf-8?B?cERaZWZJY25ma1FrWFo4ZGdNdGhLN0JSeE9ZOXZud2hScnp6aHloWFFyWDNs?=
 =?utf-8?B?NTVpZlpEZXptRTErc0V6Z1QrQXZuNTUwcjRNREFLYVhaVGk0Z2ZUeDJKY0dl?=
 =?utf-8?B?VUU0SDVSbHo1end5RE11aTVTazJkcC80TDBMa1RYZ0M2YVJXTzRNTHBpRVZp?=
 =?utf-8?B?RDF2eVFoS0lTU3prWURUTndIT3dZZzdyLzJCZG5LdVY5ZjhFZGE4SGZxZ21K?=
 =?utf-8?B?VGxKU1lBRzd0aHE5Y2hibDcyUW9sSU1yMWdEby9MWXZVSCs3bVBsMW5iUDFv?=
 =?utf-8?B?U3QrWXc3STNGbUZJa25sSTYxeTFrRFZCS04zUHZUeVV5S1JKMEtuKzZWQTlG?=
 =?utf-8?B?OWVmQzBralk5SGlublo4STIvVnlWOGZiMk9BUVc0VFRBRS8zajA0cE1sYlpU?=
 =?utf-8?B?TWh4L3NLQnZaUURpb0pYWDRMejkwQkNTbng5M093QzRYT1ZVZFR0Nm5pT0p0?=
 =?utf-8?B?MEhQcWY2dk9Uam55SVN1RWcrSGpRN2RJbytyN2lIeVdqVmhSeERITkFmRFc5?=
 =?utf-8?B?ZSs2Vm55SzB3WXhRZDRBeWFNelVLY3RTSnNGMWtyRmpUcjJEVE5hZTVCMWdK?=
 =?utf-8?B?UmdycldETXRjZElTOWlmdWs4K2pDRDg3U2NwZlFxNjZiZjlQbFQ0aUFKWmk1?=
 =?utf-8?B?a2ptdTVucC9uempsUzMzS3hmTnFmcGJJVUJpTklTRnV2VmxJd1hDRytPSVp1?=
 =?utf-8?B?S3V1SWpFbmRCQWN4MUtnK2RLQTdWK1A0QWRHMkRBdXNyWGRzNDl1VElUMnVl?=
 =?utf-8?B?dXN0ejAxVmxhcDJCWUk2elEwM3hoSEd5Uzl6bWFGZFAzd2owbit5NmVlZERL?=
 =?utf-8?B?dFQ0VFlPVFFrQnFnQytOQjBnUjZleWtYQmMyRU1DRldOeC8rVmtpVnU1eFky?=
 =?utf-8?B?bUJVNEVzem5XSzMxNXlMK2VCQUFLVllaSnNKNGVPMHNneDJYSmFZdnpUTWoz?=
 =?utf-8?B?MENTODJoU3N3ZTlBWlpUWTJWU3RBblRTakg0OFh3dzZkTGM0YUNmYkpJUXVx?=
 =?utf-8?B?bEd5YUJEemdZMzZETUNoS1M2U28yQVFxRlkvNVlmSGhEYXRpOWlqTUNtZkw1?=
 =?utf-8?B?RU8rU3hlb053eWR1czU2MUx1dlFLZXlJTHI0N0h4WFdoY0pYRDdMU01qRG0x?=
 =?utf-8?B?ZVlwdWhmNDF6YTRQd1ZVcllwMS9mNHF4Y2QxVnRJNzE4V3B4TFVuc3hyUHNC?=
 =?utf-8?B?UDR0YmpQMXUzTlJaWjUrQzFhNzI4enpPV1lkWVdwQzFyMHlQYWhpYzJ5MFJt?=
 =?utf-8?B?TVg5SWx6a3FkN3BOaDRta0M4ZDR3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3A946BF054B3CC4F8424929A9FBCFED4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbaec8c8-d930-4e54-11de-08ddeb767a77
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 05:47:04.9551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 92aFInprleGlCKxjUPNyO1OTGJOb4FyHXu97Jd5HMB+/6kkUviWNsFlfJYBe4ANu0HrtD5JkUawAfyIXso9VfOYTj+MERiFy5cRmTGiqNE8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4977
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
MTAwIHVzIHNsZWVwIGluc3RlYWQuIFRoZSB0aW1lb3V0IHJlbWFpbnMNCj4gYXQgMQ0KPiBtcy4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYyB8IDcgKysrKystLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBpbmRleCBkMWQzYjZmODllMmEuLjcz
NDBkNWE3MTY3MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gQEAgLTMsNiArMyw3IEBADQo+IMKgICogQ29weXJp
Z2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24NCj4gwqAgKi8NCj4gwqANCj4gKyNpbmNsdWRl
IDxsaW51eC9pb3BvbGwuaD4NCj4gwqAjaW5jbHVkZSA8bGludXgvc3RyaW5nX2hlbHBlcnMuaD4N
Cj4gwqANCj4gwqAjaW5jbHVkZSAic29jL2ludGVsX2RyYW0uaCINCj4gQEAgLTEzMTAsOCArMTMx
MSwxMCBAQCBzdGF0aWMgdm9pZCBoc3dfZGlzYWJsZV9sY3BsbChzdHJ1Y3QNCj4gaW50ZWxfZGlz
cGxheSAqZGlzcGxheSwNCj4gwqAJaHN3X3dyaXRlX2Rjb21wKGRpc3BsYXksIHZhbCk7DQo+IMKg
CW5kZWxheSgxMDApOw0KPiDCoA0KPiAtCWlmICh3YWl0X2ZvcigoaHN3X3JlYWRfZGNvbXAoZGlz
cGxheSkgJg0KPiAtCQnCoMKgwqDCoMKgIERfQ09NUF9SQ09NUF9JTl9QUk9HUkVTUykgPT0gMCwg
MSkpDQo+ICsJcmV0ID0gcG9sbF90aW1lb3V0X3VzKHZhbCA9IGhzd19yZWFkX2Rjb21wKGRpc3Bs
YXkpLA0KPiArCQkJwqDCoMKgwqDCoCAodmFsICYgRF9DT01QX1JDT01QX0lOX1BST0dSRVNTKSA9
PSAwLA0KPiArCQkJwqDCoMKgwqDCoCAxMDAsIDEwMDAsIGZhbHNlKTsNCj4gKwlpZiAocmV0KQ0K
PiDCoAkJZHJtX2VycihkaXNwbGF5LT5kcm0sICJEX0NPTVAgUkNPTVAgc3RpbGwgaW4NCj4gcHJv
Z3Jlc3NcbiIpOw0KPiDCoA0KPiDCoAlpZiAoYWxsb3dfcG93ZXJfZG93bikgew0KDQo=

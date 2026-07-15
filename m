Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XsMPEc2KV2pkWgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:27:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9613275EAA1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:27:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FBm9f5+y;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2318310F04C;
	Wed, 15 Jul 2026 13:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB1C10F04C;
 Wed, 15 Jul 2026 13:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784122058; x=1815658058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=18O7XLizoUKGtySutAfz9tUhMUstR5mI+f2b9mTNjL8=;
 b=FBm9f5+y6K5rsMCTkf4WwQpsYYu74qKVcq4+RQgSEzCy1JYTW7IDjD2r
 nhX7fnt5xEm7G38DbAmbgSSPIt7YruFTRSjv9LCazIDkye25Iiwgaw7vK
 WitGEnmn84yUVJ5RU5vAMlWgsSH0/O4ecc5rRZUEX7eAPW0EOc7gs5JDT
 uJ4EEffKpo3wINEGC9r8i1I2hov4zZu0Zka107/lgYqgEMx9PzvLONdL1
 drWCi5D1S62PmJ6fgfPZQXj4MVsJyOPP3TCcwrJWQIm3+t1rgSyhUcWC/
 7JRjlexySY7NAPa3ewD9XOGScuKqaJotV+6Jkjwhz07poXEd+IrZs57g0 g==;
X-CSE-ConnectionGUID: 1WiNo5sKSPe0/MdxYjjuqw==
X-CSE-MsgGUID: 6W+O9gBZSNmHAl6Gtxbo1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="95900636"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="95900636"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:27:38 -0700
X-CSE-ConnectionGUID: gzOWsi7XTJ+TbktdCW8fuA==
X-CSE-MsgGUID: S5kbbYNWRDOtsicUPNaT2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="254436575"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:27:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:27:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 06:27:37 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:27:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y6/MNm2DKAoR23FElUrN242RNlIBjY3nBrhNY1ZAix4BP4Ju0prXjUm2t0O9OsuqjIwqy/MJc41mOkVn0r3cdAfc4FN3aEo4D4Ol8qb3TtR9j1xK+tzj8CiqazNevE7USb4YRzEQE7gk4z6KkfXFtMZpxeBEWCSpRKMypT0TTPyy7+lyxlSvT6a0/CJ0eaZgUYu5woeBqrbxj4Iriw924Qfh4qK2xVFFFbSWR0T9jSbtXpSYiLsOVkOtUCTjLsygKB5a6jVrU9Cx08EgQtQzEPYFYgAGMeFMFX4x2wtPvKsZiqg0DtURf3XKy1rfF0RRU34DBtEEXXUfR9BXtZbtCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=18O7XLizoUKGtySutAfz9tUhMUstR5mI+f2b9mTNjL8=;
 b=a9UwEWBxSKCR+71uz1EF4fh3UQ67oT7jm2pkE/VrYrR2BW7Sg9EWh1wh0d1FRgABqUr37qWWI7Rm+ieju3W0MS/kcISinmSD6DsW16SMQ7JB9Sa/CG3J/MWOMaYAB+1TTBZV94q1UaHW7rHx1MbGhFOgMJUjX6Ui7z3ugLBrnnKH3JB2SP8LPB1ETcQFf2Wz2AM+jxeNOL24XySAuwOkKeGWxEu7ngPtc1H7tEjkFwi6f9gBKoXY318xoT6i2C/h6wk2T6MSpCkeAdmYFej7UICIPXtRfJLV5HCpH5NZyngZk/CAAeeEvq7CVGBnoF1mhN2IosmWoGwH8/RquxZb1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB5159.namprd11.prod.outlook.com (2603:10b6:510:3c::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.223.12; Wed, 15 Jul 2026 13:27:32 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 13:27:32 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [v2 2/2] drm/i915/dram: Interpret 0xF populated-channel count as
 16
Thread-Topic: [v2 2/2] drm/i915/dram: Interpret 0xF populated-channel count as
 16
Thread-Index: AQHdFEPY/Yvcpxm9h06T0jXAjxTHNrZugvWAgAANy7A=
Date: Wed, 15 Jul 2026 13:27:32 +0000
Message-ID: <DM4PR11MB636059ECC84DADC392FB6C74F4F82@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260715104119.4128662-1-uma.shankar@intel.com>
 <20260715104119.4128662-3-uma.shankar@intel.com>
 <49c83175f7cdc97e7bae75782bd2d4e2862640eb.camel@intel.com>
In-Reply-To: <49c83175f7cdc97e7bae75782bd2d4e2862640eb.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB5159:EE_
x-ms-office365-filtering-correlation-id: e0a255b3-ea8b-42ed-d229-08dee274d35f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|1800799024|366016|38070700021|6133799003|4143699003|11063799006|56012099006|22082099003|18002099003|10067099003;
x-microsoft-antispam-message-info: SZ4nTHn6cFNsX91dYmEs3qn6Ar11aK/V0tmAXUMlWtBuBHM52fhpyb+lzTA0Mvb63bfd4MazU/BNske5xxEaMH5dffP6kUgylYMK2qyKQTkF9o+EbUp6OtNRZwbB2yxswDCD9BNpC8zqRuilBa4grgRVHGINGToG8QP4Z+JoCAwTE23FEs8/a/kuYWKdY02cHe59pyEL03RRbjRN9H/85XNGLkicnTcXVoNnBo/8YqnMYxTmH4cOfkMVWgHkCHwOFzHkfEtfwNL0ST1kGxpfobTg1T4GFjpmOBTX0x+L0kaO/fQnLlAUyQuya1mlEEHgdYpSaNpMWpo9x7QOidgt2FwGa38O9kUGg42HhAqjT3XItIQgvV2ppz7KwUHQopfLT3wFcsvXBsBxK9xhkVXlJdcwx6KvG4r8Fa/EA8wQaurc+W6C+aFmXke8BHKB5DHwetmwx3znMZNOGy/W7AjDzQYoEA/f0fkv6+WDYlm+/OzihykrUFGTJEICb0AuLAmVj3cACJ37R6l1d3PTLFVs/yTi4BzsE6DHcEs4oVNRKTEPhjJ+IWv4HaCYoJRO+8/6y0PyrW8aimjjZrl+y3yVXk1c5VXZ5C5SflARI03IaJQd1RBYEkzz48LX8dpYmHCxnet8NRf/b92kWwykw0FBjrYmtB+onJPJkXgBCeUQjjS3gC/f19OnkeoPxfz6ZDTk4O6a7QcuPGZEt5/GSn2gf60PdrZm8b2hiPBKtXJlcq0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(38070700021)(6133799003)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003)(10067099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWpXc0NXWUM1UjU0M0xKTlV6UHRKQVhkdUVBL2xGM2FBWHVwWDFlckRHZEZU?=
 =?utf-8?B?dTFWTDRQSUZJTWFhZlA1NEZPZHNSV0l0aTc5dXowUmFIZ3loV0dNQzhxKzY5?=
 =?utf-8?B?RWdDeVJmOTYzQ29ldVkxU0tTM0dzWjlzR0lHSU9BRjRkVFkyT01PdFVMZXhu?=
 =?utf-8?B?OXBoWmI5TDNWc05OUDFQdmVVR244UlNSVE5RZzFZdjFHN0J2L0FDQlBCbnVu?=
 =?utf-8?B?NWUxd2RjYWlDOGJoeE0rNXlmaUZZUHd3SC9yZVB0SU5ib2FVRG9LMjJJaHd5?=
 =?utf-8?B?cXNubGdOcHduaTlZSlBpL1I2ZThBemt0SU5sRXFlWElDL2FBMHAyU1k5TGkw?=
 =?utf-8?B?QnE0WnNrTTdWU0x0aVpDZHN4N0NaRjQ2N2RwZzZuT2lYVjVTTDNmVXRScE5Q?=
 =?utf-8?B?S0syY1R6bUx0dkF1dU53aWtOcVZYUktRMk9lbXFsbXE4WFJzZTh4WHlIbGhq?=
 =?utf-8?B?OTlrNFJBcTNZa0xTeEo5NzlWWGh3RTNRdUJycnlEVlBtVWVoRk1LSGhRM29w?=
 =?utf-8?B?aFNVZVRsU3FhNHl1WWg1SHJaRHpUc3d6a0J4UHlzdGpHT2I0YW40QW4vYVUz?=
 =?utf-8?B?TWpOTlFnUGl2UXJIaTQ2Z1RVcjZMaHowYXpsV1FmWWFlTHcxRkxwZUQ2S1Iy?=
 =?utf-8?B?bzRrQ3VwMGpPVzVMRldsTnFHS1Q2TmdrTEsvaWdIZklUZStDSDFwSC96aVlq?=
 =?utf-8?B?dkU5RDQ0UVNnLzIwZlhHSG4xNThPMTJYVjVKQ092Tjh3ZHdsa1lSWGVsd2hP?=
 =?utf-8?B?T2tNSlkzbDF1YUtITGE3QmVtUGxHNjZzL2s5cnd1M05naGJFemN1TjBDZTNh?=
 =?utf-8?B?UVZmR0tZT2RKRkNmRmxYTkZTM3o3TzUzbkk5TUN6TTQ1SFhJWE9kSTNrNVpN?=
 =?utf-8?B?R3NqNWxCeWlVNDR3STNPU2VXd3FGVG9Ya0k2ZEYvT3hnS3pnajh1Q20xQVhr?=
 =?utf-8?B?MHB0V2xyaFVibkNMbVhWTEpMVzNjUGtzanYzNFY3a3VxVG9JNno4L0lTeUdF?=
 =?utf-8?B?MXI4R0tnTHU4elIwZks5enBpMmsxVnZaOTAwb2dIYkxSMVJXQlc1VGVYMDQr?=
 =?utf-8?B?TjBJb01wdnYyVFNxYSszclRoY2JiNFJ5dDJWdnN2NitGQllWR1pjc2MwUGFn?=
 =?utf-8?B?b1ZEbUhGVTVoL1NsN1hpS3hBcWNhUU1pOEhUYzZLVTc1cTdQSVlsR2RMZlBD?=
 =?utf-8?B?dlJQbkgzN0NSeVI2azRKU2c3ajgrNDYxSGRIYWw2RUFjV0xwd3hpUkd3UHFY?=
 =?utf-8?B?cThVRm1reXR3TVd5U2tXSzZJT25haFU5cmdlRytRMDZsSTFaMTA3NmUvVUtQ?=
 =?utf-8?B?aTZOYnZmcWZlWXZtZUNpcUlRV2dLNFcxVXFHTEJFVzFuekxQZ21EdHl3NnhW?=
 =?utf-8?B?RmF0dndCTVNhSndZOE9NQXg3Mm1PR1dZdEhTSXZZUUhKQmV0ZGMreFNHYktq?=
 =?utf-8?B?aVpIdGx3WDFRTHE4TktmREZHNWRzTHpXQmRpTUFoMks0dVZ3REg1eUp2a25t?=
 =?utf-8?B?WFNnNmEwUVpLT3JEM2VwdWJ4OW1odG1FaU8rTVlwdGcwWkV5c2czTEFMbVdm?=
 =?utf-8?B?OVZuT0hCTFVCU2tHTFdEbWNFWkpHdTd3SnRJTEpIdUFIMUkvMTd6TTl5bG4r?=
 =?utf-8?B?dlVxL29UTHZhK1ZjamE5aHg2bGhaN0krS2JOVXJ3NmxIcEQzeFc2dmdlWmIv?=
 =?utf-8?B?NlhvSzFCbU9vc2NkYkw0NjduU2owMDdWQXdxREI4T0RNR0pveGV2SzFsSDF5?=
 =?utf-8?B?c3RvM2NiRTUzeVFFcUZhOTJ6Z0YrdXNwWHB6UGowYlZEZUs4b1cweGNwUnZp?=
 =?utf-8?B?RlhNb1h0SWhWZ2VFWlF6VThIMC9CTm1yZWdpaWI3UFFBcU9RZkZsRU54cUNx?=
 =?utf-8?B?elBVQnJUMzE3V0xUNjcrUE0rR2h1aUc1dDhZYUtEeXFyVFFQY3Z6RldZWXIx?=
 =?utf-8?B?VXhGaTdKMkZ2UHF2T1ZWQ29VejMxWm5WRlRiSENzb3FoZUtDOERKRjl3SG9h?=
 =?utf-8?B?ZVp6dk9MOThROUM0R3lGRUFBUnZ5VXJmaWZHbDRnSWc0OXJtOFNDY3NPZGpw?=
 =?utf-8?B?MmhqM3NZTXBQQVVuUDRqSlZIUXZuZ2ZZaFdrYzY0SmRna3MxU0QrQXo5RE5N?=
 =?utf-8?B?NTMvTktjMitTeloxclA1SGlzZHYycXFkdWV0REhveFk1NHNZbXJKN01aSkhX?=
 =?utf-8?B?R2tkSkxVcW1WY0hMSElML0daVGd2R0cwUXYyWkZra2FTMUxHMS8wcU82a3FT?=
 =?utf-8?B?NmZWMzNRdDgrK3lybWMvaFFJQW1iS1poOTRpWnFocXBJZXpUVlFsc3ZaMUlG?=
 =?utf-8?B?RW10SERxSzcxNFdTYnVFMkZkckVVdFZHWkYyNUVabmt5cWhTUk5Ydz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mU2BN93pUhS5bOi0X5u7l6exV2dT/HFkP1hOhQ6+oz5EI2tQebNreIwT9U92DKumnO6FfXLmlDArJ2FmX3DLU9ygaOJXXARailIWLrKPcJBVvfodDW1H5w+njJLaggbmlmbv2qcTKZFI+Jp1P2f4NgJnydaW972OSLONe/YCmSFMkFMO8N5xYP4R8wYGEcdqU7kXYfbffP+dcw2jEBGpATeaVYFA36yJJ/Ego2Cts/aqcbKukU5RZewYCCAW3YtjWHJ1t93iyO0zYv9AXJQzSw6LAEJaOVzB/gymISeOnRaesxYbmfMjDANmh5D5vKC5rgupuCH73TJ0VVFK062eYg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0a255b3-ea8b-42ed-d229-08dee274d35f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2026 13:27:32.2317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uluN681XY13sPRfogdVVLw/f+FnkWq9EoMSAy+TzaxJMO5nXge0xbKgnWeX0MlLTd3Y2EuT9+d1glCm118Thlg==
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9613275EAA1
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR292aW5kYXBpbGxhaSwg
Vmlub2QgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXks
IEp1bHkgMTUsIDIwMjYgNjowMSBQTQ0KPiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+OyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFs
QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFt2MiAyLzJdIGRybS9pOTE1L2RyYW06IEludGVy
cHJldCAweEYgcG9wdWxhdGVkLWNoYW5uZWwgY291bnQgYXMgMTYNCj4gDQo+IEhpIFVtYSwNCj4g
DQo+IE9uIFdlZCwgMjAyNi0wNy0xNSBhdCAxNjoxMSArMDUzMCwgVW1hIFNoYW5rYXIgd3JvdGU6
DQo+ID4gVGhlIHJlZ2lzdGVyIE1FTV9TU19JTkZPX0dMT0JBTCBbTnVtYmVyIG9mIHBvcHVsYXRl
ZCBjaGFubmVsc10gZmllbGQNCj4gPiBkZWZpbml0aW9uIGlzIHVwZGF0ZWQgd2l0aCBhbiBlbmNv
ZGluZyBmb3IgMTYgY2hhbm5lbHMuDQo+ID4NCj4gPiBGb3IgMTYtY2hhbm5lbCBjb25maWd1cmF0
aW9uLCBwcm9ncmFtIDExMTFiLiBBIHByb2dyYW1tZWQgdmFsdWUgb2YNCj4gPiAxMTExYiBtdXN0
IGJlIGludGVycHJldGVkIGFzIDE2IGNoYW5uZWxzIGZvciBtZW1vcnkgYmFuZHdpZHRoDQo+ID4g
Y2FsY3VsYXRpb25zLg0KPiA+DQo+ID4gVGhlIE1FTV9TU19JTkZPX0dMT0JBTCBwb3B1bGF0ZWQt
Y2hhbm5lbCBmaWVsZCBpcyBvbmx5IDQgYml0cyBhbmQNCj4gPiBjYW5ub3QgZW5jb2RlIDE2LCBz
byBvbiBYZTNwIHRoZSBCSU9TIHByb2dyYW1zIHRoZSBzYXR1cmF0ZWQgZmllbGQNCj4gPiB2YWx1
ZQ0KPiA+ICgweGYpDQo+ID4gdG8gaW5kaWNhdGUgdGhlIGZ1bGx5LXBvcHVsYXRlZCAxNi1jaGFu
bmVsIGNvbmZpZyAoNCBtZW1vcnkNCj4gPiBjb250cm9sbGVycyB4IDQgY2hhbm5lbHMpLiBJbnRl
cnByZXQgaXQgYXMgMTYgYW5kIGxldCB0aGUgYmFuZHdpZHRoDQo+ID4gbWF0aCBoYW5kbGUgdGhl
IGxhcmdlciBjaGFubmVsIGNvdW50Lg0KPiA+DQo+ID4gR2F0ZSB0aGUgYmVoYXZpb3VyIHRocm91
Z2gNCj4gPiBpbnRlbF9kaXNwbGF5X3dhKElOVEVMX0RJU1BMQVlfV0FfMTYwMzA4NjIxNTcpDQo+
ID4gaW5zdGVhZCBvZiBhbiBvcGVuLWNvZGVkIERJU1BMQVlfVkVSKCkgY2hlY2suDQo+ID4NCj4g
PiB2MjogU3dpdGNoZWQgdG8gaW50ZWxfZGlzcGxheV93YS5jIGZyYW1ld29yayAoU3VyYWopDQo+
ID4NCj4gPiBXQTogMTYwMzA4NjIxNTcNCj4gPiBCc3BlYzogNjkxMzEsIDY4ODU5DQo+ID4gQXNz
aXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtb3B1cy00LTgNCj4gPiBTaWduZWQtb2ZmLWJ5OiBVbWEg
U2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jwqDCoCB8IDIwICsrKysrKysrKysrKysrKysr
LS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RyYW0uYyB8IDEy
ICsrKysrKysrKysrKw0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9idy5jDQo+ID4gaW5kZXggNDE1MzlmZGZlYWM1Li5hYWEwMzUwZGNhNzggMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gQEAgLTE0LDYg
KzE0LDcgQEANCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JlZ3MuaCINCj4gPiDCoCNp
bmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZGlz
cGxheV91dGlscy5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV93YS5oIg0KPiA+IMKg
I2luY2x1ZGUgImludGVsX2RyYW0uaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9tY2hiYXIuaCIN
Cj4gPiDCoCNpbmNsdWRlICJpbnRlbF9wYXJlbnQuaCINCj4gPiBAQCAtMjcyLDcgKzI3MywxNCBA
QCBzdGF0aWMgaW50IGljbF9nZXRfcWd2X3BvaW50cyhzdHJ1Y3QNCj4gPiBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LA0KPiA+IMKgCQljYXNlIElOVEVMX0RSQU1fTFBERFI0Og0KPiA+IMKgCQljYXNl
IElOVEVMX0RSQU1fTFBERFI1Og0KPiA+IMKgCQkJcWktPnRfYmwgPSAxNjsNCj4gPiAtCQkJcWkt
Pm1heF9udW1jaGFubmVscyA9IDg7DQo+ID4gKwkJCS8qDQo+ID4gKwkJCSAqIFdhXzE2MDMwODYy
MTU3DQo+ID4gKwkJCSAqIFhlM3Agc3VwcG9ydHMgYSBmdWxseS1wb3B1bGF0ZWQgMTYtDQo+ID4g
Y2hhbm5lbCBMUEREUg0KPiA+ICsJCQkgKiBjb25maWcgKDQgbWVtb3J5IGNvbnRyb2xsZXJzIHgg
NA0KPiA+IGNoYW5uZWxzKTsgZWFybGllcg0KPiA+ICsJCQkgKiBEMTQrIHBsYXRmb3JtcyB0b3Ag
b3V0IGF0IDguDQo+ID4gKwkJCSAqLw0KPiA+ICsJCQlxaS0+bWF4X251bWNoYW5uZWxzID0NCj4g
PiArCQkJCWludGVsX2Rpc3BsYXlfd2EoZGlzcGxheSwNCj4gPiBJTlRFTF9ESVNQTEFZX1dBXzE2
MDMwODYyMTU3KSA/IDE2IDogODsNCj4gDQo+IEFzIHBlciB0aGUgYnNwZWMgNjg4NTksIG1heCBj
aGFubmVsIG9mIDE2IHYuIDggaXMgYmFzZWQgb24gYSBzcGVjaWZpYyBza3UuwqBEbyB3ZQ0KPiBo
YXZlIGFueSBmdXJ0aGVyIGluZm8gb24gdGhhdCBob3cgdG8gdmFyaWF0ZSB0aGF0Pw0KPiANCj4g
QnV0IHRoZSBJTlRFTF9ESVNQTEFZX1dBXzE2MDMwODYyMTU3IGFwcGxpZXMgdG8gZGlzcGxheSB2
ZXJzaW9ucyA+PSAzNQ0KPiANCj4gSW4gdGdsX2dldF9id19pbmZvKCksIHdlIGhhdmUgdGhpcyBh
ZGp1c3RtZW50IHRvIHRoZSBkZWludGVybGVhdmUNCj4gDQo+IAlpZiAobnVtX2NoYW5uZWxzIDwg
cWkubWF4X251bWNoYW5uZWxzICYmIERJU1BMQVlfVkVSKGRpc3BsYXkpDQo+ID49IDEyKQ0KPiAJ
CXFpLmRlaW50ZXJsZWF2ZSA9IG1heChxaS5kZWludGVybGVhdmUgLyAyLCAxKTsNCj4gDQo+IFNv
IHdpdGggdGhlIGFib3ZlIGNoYW5nZSB3ZSB3aWxsIGFsd2F5cyBlbmQgdXAgaW4gdGhpcyBsb29w
IGFuZCBhZGp1c3QgdGhlDQo+IHFpLmRlaW50ZXJsZWF2ZSBmb3IgYWxsIHZlcnNpb25zID49IDM1
IG5vdCBqdXN0IHRoZSBzcGVjaWZpYyAic2t1Ig0KPiB3aGljaCBJIHRoaW5rIGlzIG5vdCBjb3Jy
ZWN0LiBNYXkgYmUgbmVlZCB0byBjaGVjayBmcm9tIHRoZSBJUCB0ZWFtIG9yDQo+IGNsYXJpZnkv
dXBkYXRlIHRoZSBic3BlYz8NCg0KVGhpcyBpcyBleHRlbmRlZCBmb3IgYWxsIE5WTCBTS1Uncywg
aGVuY2UgdGhlIGNoZWNrLiBIb3dldmVyIHdpbGwgZHJvcCA+IHNvIHRoYXQNCml0cyByZXN0cmlj
dGVkIG9ubHkgZm9yIE5WTC4NCg0KPiBBbmQgYW5vdGhlciBzdWdnZXN0aW9uIGZvciB5b3VyIGNv
bnNpZGVyYXRpb24gaXM6DQo+IA0KPiBJIGRpZG50IGZpbmQgdGhpcyAxNjAzODYyMTU3IGFzIHBh
cnQgb2Ygd2EgZGF0YWJhc2UuIElzIHRoZXJlIGFueSB3YSBic3BlYz8gU28gZG8NCj4gd2UgbmVl
ZCB0byAgaW1wbGVtZW50IHRoaXMgYXMgYSB3YT8NCg0KVGhpcyBpcyB0aGUgV0EgbGluZWFnZSBu
dW1iZXIgd2hpY2ggWEUgZHJpdmVyIGFuZCBic3BlYyBmb2xsb3dzLCBoZW5jZSB1c2VkIHRoZSBz
YW1lDQpoZXJlLg0KDQo+IElmIHRoaXMgaXMgY29uc2lkZXJlZCBhcyBhIHdhOg0KPiANCj4gSWYg
SSB1bmRlcnN0YW5kIHRoaXMgY29ycmVjdGx5LCB3YSBpcyBtYWlubHkgYWJvdXQgcGFydCB3aGVy
ZSBiaW9zIHBvcHVsYXRlIHRoZQ0KPiBNVExfTl9PRl9QT1BVTEFURURfQ0hfTUFTSyBmaWVsZHMg
YXMgMHhmIGluIGNhc2VkIG9mIGNoYW5uZWxzIDE2IGFuZA0KPiB3ZSBpbnRlcnByZXQgdGhhdCBh
cyBjaGFubmVscyA9IDE2IGluc3RlYWQgb2YgMTUuDQo+IA0KPiBJTU8sIGlkZWFsbHkgaXQgaXMg
YmV0dGVyIHRvIHNwbGl0IHRoaXMgaW50byB0d28gcGFydHMsDQo+IA0KPiAxLiB3YSBkZWZpbml0
aW9ucyBpbiB0aGUgZXhpc3RpbmcgZHJpdmVyIHdhIGZyYW1ld29yayArIGNoYW5nZXMgaW4NCj4g
eGVscGRwX2dldF9kcmFtX2luZm8oKSByZWxhdGVkIHRvIHRoaXMgd2EgYXMgYSBzaW5nbGUgcGF0
Y2ggbGlrZSBvdGhlciB3YQ0KPiBpbXBsZW1lbnRhdGlvbnMgaW4gdGhlIGRyaXZlciBzbyBmYXIu
DQo+IA0KPiAyLiBVcGRhdGUgdGhlIGJ3IGluZm8gY2hhbmdlcyB0byBhZGQgc3VwcG9ydCBmb3Ig
bWF4X251bWJlciBvZiBjaGFubmVscyB0byAxNiBpbg0KPiBjYXNlIG9mIGEgc3BlY2lmaWMgU0tV
IGFuZCB0aGUgdXBkYXRlIHRvIHRoZSBjOV9jbHBlcmNocGVyYmxvY2sgY2FsY3VsYXRpb24gcGFy
dC4NCg0KU3VyZSwgc291bmRzIGdvb2QuIEkgd2lsbCBjaGFuZ2UgYWNjb3JkaW5nbHkuDQoNClJl
Z2FyZHMsDQpVbWEgU2hhbmthcg0KDQo+IEJSDQo+IFZpbm9kDQo+IA0KPiANCj4gPiDCoAkJCXFp
LT5jaGFubmVsX3dpZHRoID0gMTY7DQo+ID4gwqAJCQlxaS0+ZGVpbnRlcmxlYXZlID0gNDsNCj4g
PiDCoAkJCWJyZWFrOw0KPiA+IEBAIC02MjQsMTAgKzYzMiwxNiBAQCBzdGF0aWMgaW50IHRnbF9n
ZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiA+ICpkaXNwbGF5LA0KPiA+DQo+ID4g
wqAJaXBxZGVwdGggPSBtaW4oaXBxZGVwdGhwY2gsIGRpc3BsYXlfYndfcGFyYW1zLT5kaXNwbGF5
cnRpZHMgLw0KPiA+IG51bV9jaGFubmVscyk7DQo+ID4gwqAJLyoNCj4gPiArCSAqIFdhXzE2MDMw
ODYyMTU3DQo+ID4gwqAJICogY2xwZXJjaGdyb3VwID0gNGtwYWdlc3Blcm1lbXBhZ2UgKiBjbHBl
cmNocGVyYmxvY2ssDQo+ID4gLQkgKiBjbHBlcmNocGVyYmxvY2sgPSA4IC8gbnVtX2NoYW5uZWxz
ICogaW50ZXJsZWF2ZQ0KPiA+ICsJICogY2xwZXJjaHBlcmJsb2NrID0gbWF4KDggLyBudW1fY2hh
bm5lbHMsIDEpICogaW50ZXJsZWF2ZQ0KPiA+ICsJICoNCj4gPiArCSAqIFRoZSA4IC8gbnVtX2No
YW5uZWxzIHRydW5jYXRpbmcgZGl2aWRlIGNvbGxhcHNlcyB0byAwIGZvcg0KPiA+ICsJICogPjgt
Y2hhbm5lbCBjb25maWdzICgxNi1jaGFubmVsOiA4IC8gMTYgPSAwKTsgdGhlIG1heCguLi4sDQo+
ID4gMSkgZmxvb3INCj4gPiArCSAqIGtlZXBzIGNscGVyY2hwZXJibG9jayA+PSAxIHRoZXJlIHdo
aWxlIHByZXNlcnZpbmcgdGhlDQo+ID4gbGl0ZXJhbA0KPiA+ICsJICogdHJ1bmNhdGluZyBkaXZp
ZGUgZm9yIDw9OC1jaGFubmVsIGNvbmZpZ3MuDQo+ID4gwqAJICovDQo+ID4gLQljbHBlcmNoZ3Jv
dXAgPSA0ICogKDggLyBudW1fY2hhbm5lbHMpICogcWkuZGVpbnRlcmxlYXZlOw0KPiA+ICsJY2xw
ZXJjaGdyb3VwID0gNCAqIG1heCg4IC8gbnVtX2NoYW5uZWxzLCAxKSAqDQo+ID4gcWkuZGVpbnRl
cmxlYXZlOw0KPiA+DQo+ID4gwqAJZGlzcGxheS0+YncubnVtX3Fndl9wb2ludHMgPSBxaS5udW1f
cWd2X3BvaW50czsNCj4gPiDCoAlkaXNwbGF5LT5idy5udW1fcHNmX2d2X3BvaW50cyA9IHFpLm51
bV9wc2ZfcG9pbnRzOyBkaWZmIC0tZ2l0DQo+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RyYW0uYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcmFtLmMNCj4gPiBpbmRleCBmMTAzZjdjYmEwMTguLjdlMmZjMjRlMjQwYyAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RyYW0uYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJhbS5jDQo+ID4gQEAgLTEz
LDYgKzEzLDcgQEANCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X2NvcmUuaCINCj4gPiDC
oCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3V0aWxzLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxf
ZGlzcGxheV9yZWdzLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3dhLmgiDQo+ID4g
wqAjaW5jbHVkZSAiaW50ZWxfZHJhbS5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX21jaGJhci5o
Ig0KPiA+IMKgI2luY2x1ZGUgImludGVsX3BhcmVudC5oIg0KPiA+IEBAIC03OTYsNiArNzk3LDE3
IEBAIHN0YXRpYyBpbnQgeGVscGRwX2dldF9kcmFtX2luZm8oc3RydWN0DQo+ID4gaW50ZWxfZGlz
cGxheSAqZGlzcGxheSwgc3RydWN0IGRyYW1faW5mbw0KPiA+IMKgCWRyYW1faW5mby0+bnVtX3Fn
dl9wb2ludHMgPQ0KPiA+IFJFR19GSUVMRF9HRVQoTVRMX05fT0ZfRU5BQkxFRF9RR1ZfUE9JTlRT
X01BU0ssIHZhbCk7DQo+ID4gwqAJLyogUFNGIEdWIHBvaW50cyBub3Qgc3VwcG9ydGVkIGluIEQx
NCsgKi8NCj4gPg0KPiA+ICsJLyoNCj4gPiArCSAqIFdhXzE2MDMwODYyMTU3DQo+ID4gKwkgKiBN
RU1fU1NfSU5GT19HTE9CQUwgcG9wdWxhdGVkLWNoYW5uZWwgZmllbGQgaXMgb25seSA0IGJpdHMN
Cj4gPiBhbmQNCj4gPiArCSAqIGNhbm5vdCBlbmNvZGUgMTYsIHNvIG9uIFhlM3AgdGhlIEJJT1Mg
cHJvZ3JhbXMgdGhlDQo+ID4gc2F0dXJhdGVkIGZpZWxkDQo+ID4gKwkgKiB2YWx1ZSAoMHhmKSB0
byBpbmRpY2F0ZSB0aGUgZnVsbHktcG9wdWxhdGVkIDE2LWNoYW5uZWwNCj4gPiBjb25maWcgKDQN
Cj4gPiArCSAqIG1lbW9yeSBjb250cm9sbGVycyB4IDQgY2hhbm5lbHMpLiBJbnRlcnByZXQgaXQg
YXMgMTYuDQo+ID4gKwkgKi8NCj4gPiArCWlmIChpbnRlbF9kaXNwbGF5X3dhKGRpc3BsYXksIElO
VEVMX0RJU1BMQVlfV0FfMTYwMzA4NjIxNTcpDQo+ID4gJiYNCj4gPiArCcKgwqDCoCBkcmFtX2lu
Zm8tPm51bV9jaGFubmVscyA9PQ0KPiA+IFJFR19GSUVMRF9NQVgoTVRMX05fT0ZfUE9QVUxBVEVE
X0NIX01BU0spKQ0KPiA+ICsJCWRyYW1faW5mby0+bnVtX2NoYW5uZWxzID0gMTY7DQo+ID4gKw0K
PiA+IMKgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzNSkNCj4gPiDCoAkJZHJhbV9pbmZv
LT5lY2NfaW1wYWN0aW5nX2RlX2J3ID0NCj4gPiBSRUdfRklFTERfR0VUKFhFM1BfRUNDX0lNUEFD
VElOR19ERSwgdmFsKTsNCj4gPg0KDQo=

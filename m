Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFTzIYYkxWkU7QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:20:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D76FA3351D8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:20:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FBF710EA78;
	Thu, 26 Mar 2026 12:20:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="emQPaeXa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D078410EA78
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 12:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774527619; x=1806063619;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2kr2MGJLO5bism5/OZS3n1iLUU/6E9Fh/XQkomDJYrc=;
 b=emQPaeXaMicPjsSEoZKPgl1FI6zWuv0c4c9kG+qcS7l3HGrc6qcqnrlb
 edBj+BwYIaAjwwob5ZDkD2i3ygGqpTlSjIc7a10vRSg0+Ax7jk/YIGs3O
 utQ0qr3p0HsWh68OJXuwXrvEgw34rQ80e4nJp5XL49cHsKTOBr2IFX2w2
 ecvYwB8em8w7c+pe1IW0Th1Y2G3ipUjC96zQZqF6hUl2CyLZ8s3MJZUmL
 rsQNT866CzJjeV9t1OYm8prqu8I8WrGp2zst0TSuoW1e7L6lUEdpVALuu
 iq5HYEY6e74AypLiu5lsJwRrnD/x29ygB1V5cqM4ccOok6AxGFYtd2hBN Q==;
X-CSE-ConnectionGUID: XXMETZ12SOC4VBMn6Cuf9Q==
X-CSE-MsgGUID: cpfjASD0Rr6WqjDtqE5O5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="79440201"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="79440201"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 05:20:18 -0700
X-CSE-ConnectionGUID: 2fpvxfurQPqk0jIbSIj+vA==
X-CSE-MsgGUID: IZ+j1wuqT6yWgbNh8QCSrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="221681542"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 05:20:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 05:20:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 05:20:17 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.39) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 05:20:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ADiyrFflDI8gTdhlbN2QbEvh9R0YZ8yY4qFf6/uLwG6qAidC3I40FUoNCGtynA1tEBMllXv72pSrJwLfT11tXhRKMq+AwQ95nCkHcY4DgIwq23QlgwtOeay7VoSZc1kw1IJnu1MhsdQO1Oh3axP7JaRF71ucxmW3j65Jt3h4A1cR+5ePg9+moBXDYQ9y4hfemoi+1DLAm9Y9zXq4+vxCWEmJE6HU9MLdYSJ7a8KXKaUe9BDeOcB0PYMlDS18zOeqhHkcxSx6lRsba5pP0W4ckuxEBW31dbUt34DvjklKZnvyoFg1b+bBZBihZWerukExRifLQBZrcaIUPGs0DK+QrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2kr2MGJLO5bism5/OZS3n1iLUU/6E9Fh/XQkomDJYrc=;
 b=Y1Wf/3RQb0jfnE5V1SBNR8/YZOhk3DwEgeOEMw1gwtjeaORI+UsTxcqeInho45XZyLcZx/tuUGgcOxMphmTKyxyqpaNmo/m9H8CJgrcdDZjVTD44vH0wd89w28/Dz9YR4WXCd2iMdtizA/C5xH93beEctZhSwVIxqaVFQJzjgKJEl7akAVsAxWwH2o+ZALMGeLCQYKf1OoQ9/bEr48wT2dsdY/30I6Gxj2l7pcl3o2KGuWgXdpf4Yc6puLn+mHGHVCWpp2SM/41wlk+y4U584NFddVX9jqMDHW3hlzWTg1Wwj0tuH5FnTZPC+8JusmLmdS75zfStTwN4e6aBE3gKtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH0PR11MB5191.namprd11.prod.outlook.com (2603:10b6:510:3e::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Thu, 26 Mar
 2026 12:20:14 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9769.004; Thu, 26 Mar 2026
 12:20:14 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "kenny@panix.com"
 <kenny@panix.com>, "lyude@redhat.com" <lyude@redhat.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: FYI, 9a64c65083b91 ("drm/i915: Add short HPD IRQ storm detection
 for non-MST systems") still happens on my AlderLake laptop
Thread-Topic: FYI, 9a64c65083b91 ("drm/i915: Add short HPD IRQ storm detection
 for non-MST systems") still happens on my AlderLake laptop
Thread-Index: AQHcvLxJl33nA3qonEmIJSAOz1nesrXAvFEA
Date: Thu, 26 Mar 2026 12:20:14 +0000
Message-ID: <4288710622de707f6b2760254e4f67c0b92e0766.camel@intel.com>
References: <d651ced3-228a-4915-b2c7-a1d00fdf618e@panix.com>
In-Reply-To: <d651ced3-228a-4915-b2c7-a1d00fdf618e@panix.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.58.3 (3.58.3-1.fc43) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8430:EE_|PH0PR11MB5191:EE_
x-ms-office365-filtering-correlation-id: 1d1451ae-1ca8-4bf0-3144-08de8b3208ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: wYnppFkvtff3nyfarI2IMGHMwwj9OgvtyH4WzxbfkyyqzzLQ0Pq0olI1WB5vVj+PXfwm8hBh15xPQ32DakyX/ciqX3DJTcHClKJ2pPwWj6ZNTSFIxYO99tUByuT7p+8nwFEAF2/+aYfGObxf2U7ohKsLNGAWYoXJoKSjD7Pu6lmXkDuyyWBCa6K4iznsh9+T0UbWB1jAEa0jfCXUrvS2t5LLbXoiH/0/t2scOdQHyC9rGc2aqUdiQMgUteZIMVZn72MbtO7vMx+7y9fKG2ansWh/m88SH5eSL/v2/p2lVzRam9j09qLUmvM8myvYGbhTIrFnvj6dchqhkgI4X7o0IhuSQM9roY0CIlaEKDRfiYbhWi/1JYe+CIatDH3iAu2DIkbtwzUdJhykb2ZfguqbLd0B5syyBwkonQnjRhWq4ulk182qigillzuzYuACSJdLRZQKRwnbS3UoKIdLHcEWjQ/yF6Uje6H2L1/CqgkUcDaYG3FtukIRE78ETG5frOAJ5b7xfU3/UJmgqqMABOam/njq6QJ9OPm0Rt4i5R40G3PdLukrdLxg8k23On2jmqw3jgtkmBBr68vfL5MeRa4GJsBlp5Mtwdt882yxsFzI76wP6aCZTCL24taM4ELvXrHX5awyRrk9IBns1McZMWeFc7ygqZNlkM5bRG2P7YGTjylWXseixLHY54QY6tuqqlDEaBhCOL/Q4GlwW6/eZnWRm2PGr3TegBt3yEH0Cf82g/GW19q//Aw3TDad9R90fbeV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUpaUDBqQ052cGtJa2YxNFI0RFNNbm04b0RYeEJSbkNUaDluUXZuWVRyQkV1?=
 =?utf-8?B?dkZ4TE9DNkFNc01hM3pXTWE2KzhHdUxpdGpOWmZyZjB2SWIyZVh2ZnpiNDQw?=
 =?utf-8?B?dWhuK291WDFqOEhPVExOYXhRQlcweXNMYTdaeUd0bDdSMEtOdlVuNFNwS0cy?=
 =?utf-8?B?ZEZ0SXFtQU13K3RlZlRQZ3IzT0pxNjlMV3ZGZWlzNEZyeC9kZkNHVm02STZy?=
 =?utf-8?B?SUxWYmhneXVhRjlVazNFdjc3MGtWWWtuRlJuLzZERGRJd2ZGWUhzMUsxaEh4?=
 =?utf-8?B?ZU5aSE83ZmdNNGdwNkpVZGN0NGhYdTgrQzZWa05ubitCRkpXbVlwazloK2ls?=
 =?utf-8?B?RFBsQk1TcUtVQmp6dVNEdDRyUTBDS2MvTjBPQlFBaFVQVFZMNjdhYzg1Q2hM?=
 =?utf-8?B?T0NQQW5rUnNzalFmZnAxNndrTE1QL2lGenRwZnlmNVorQWFwT3JqSFdDcjVU?=
 =?utf-8?B?amlrb3YvdURzdEVaN3RqZ3ZHTGNPZFlUYWtuazl5RytaRGtqcWNFZ25uWGFI?=
 =?utf-8?B?d1lTT3NCekRLMjIrSUpzRHE3SzFZVUdrcHM4dVJhYUFZaStvYldrWU44MXZY?=
 =?utf-8?B?MFMvTHAxelFFb1lZWlkzM2E4ajU4VUZ5VThCTWZqbERSREtiM3V6NFpyZ1lZ?=
 =?utf-8?B?M3hDSXF0aXFVbVYrYjBQcjN6Q2RQaGJ6NWdJQy9GcFE1ZHVscEpudEJDa204?=
 =?utf-8?B?d2x3TG41d1ZmZWRvUVlsYkp1NVphei85eFlMSSszV0ZJcEhZTUVzZ1BUZHhY?=
 =?utf-8?B?UUszZXJ4RGkvZXRXdjluM0NBTlF2b2VBSWM0bWhzeEE2U0RtUkxSNUtFY0FP?=
 =?utf-8?B?WUx2TGV0VFF3cTB4WHhGSGJvY0hWS1hKWFpRMnFOMWxzakpHdWdWQ21mNCtE?=
 =?utf-8?B?VkFiOHo3aTBZbTFjTCt2eWZ4SzltRjZnWWQvc3lodllRUTM1OE8ya2RkTStq?=
 =?utf-8?B?SEFuNnArMnJmU3I5YVBOTlFyTlkwZ0lCZWNOMXNpRHhtVEJNTmE5YnFmTHFU?=
 =?utf-8?B?TjRRb3RRK3BLeHJ6UmR6WlR2VU80V3VKdmpHdmNRWDV0K0laa3BBaDNoWGhr?=
 =?utf-8?B?dFcvaEFwREtkQzRGRVlyYUpwaG9QZjhkK21DVGpPMHBUTWNRbFd4ZDNIamw2?=
 =?utf-8?B?ck5HcDJLaFd6MnhzUm1JQ2phSkFYTWRYczhMclZGM1ZFclZwN3dCZEF0aTFR?=
 =?utf-8?B?L21kY3lmaWdOU1hSbDlBbGFEZDF2ajRUV21BM1dKWEc5V2tvaTIra1dTOHB0?=
 =?utf-8?B?SlhPdVBZKzQ5UUxjeWYvejFyemFLRStrU3htTjFodFhkcFhKSzRoWkdYRWI5?=
 =?utf-8?B?RVhjSmpncFZBd09MODRaeEpCMkl0NEd2N01yUUZ6KzZtUjYyaUczc2pLd0cz?=
 =?utf-8?B?dEhVRm5QRGFtQjFBNnFVSXMvK2IwZng2YUpVVFcxZ29sNmpVWHFqeWhWTlNZ?=
 =?utf-8?B?cEQyYkFDS2RtU2s2cU1PNDdzRFpwWDFaTFJsdjdiUS9ZSjkwTkE4dlg4VGJQ?=
 =?utf-8?B?QUJTWUxmb2g5Z3lRYkhkbEhwYnFBRW16dDNDTHN6VHQ5LzgvYVZ5R0orc2Iw?=
 =?utf-8?B?YTJqbmd2b3R5MngxUEd5S0VXV3ZXV3A4bTFyZ3poRktQOUl6VUIvRnhBNkY0?=
 =?utf-8?B?ZWozZUZ6VG9lZUJSYmQ2Ym5YbWlNdUxCWCt6dXZxWlFhYjFTRjN5dHkySVFh?=
 =?utf-8?B?a2FtMFJiQ0dRU3U5V0V3QzBRTjcvdXBleU1ZZlFvMHlaR1M0UjhrcnVuaHFn?=
 =?utf-8?B?alYwOW1tVW1KaGhUR2JzdDVEcXpvRGRNTjJtUWUzcE14SEJSN0wvUVZveWtD?=
 =?utf-8?B?YzN4dEpyc2poWWZSa3Eza2dnVVJYTHlwalZvc3h6Uitrbyt4L0xDNzVuN1Vn?=
 =?utf-8?B?VVpFM2dqYzIxb2NBUTFhTFplOVU0cnJ6Mk9RTUdqblJuWi9yeDMzYjJlTEF5?=
 =?utf-8?B?UkZIT21qZUcvRmJXY043Vm1uSk5zamNCTUhKV1podWtXWm5tM21WYUhnY2c0?=
 =?utf-8?B?V0llN1NMSFAvZE52VGpHMDUwY2ZwaFV3OTZ2bnlHbG1ZZ2dOdWpFZFhxV1Bj?=
 =?utf-8?B?cys0c1h4OTVBbEVSNXhPdzRZMlhoZEg4L3UvRi8zSXo4NjJOVXdnc0RoTkE1?=
 =?utf-8?B?MGFSbEtYb3NYYm92UnIzUVNwSEt6dFdBVkZDK0pWL0FSY3JxcXBoeHlHVkNm?=
 =?utf-8?B?TmQzMVROZnhCbk5vNHN2eXd2M2Q5cjNURUJWQWlvTnRqdzl1U2lBcHRuK1FL?=
 =?utf-8?B?WWNyYnI0d3Q0bzhqM3M2WDlnTTZJOFNObEp1enBLOTk4UmdQeWdYWE5POVlC?=
 =?utf-8?B?Nk4rbnEvQWI0ZDVYZ0hCYjVUcVErVW1jWWV4UktTQzlxbURqZ3BOb0l0Smt1?=
 =?utf-8?Q?WoCi7fgrVaJK6Zvk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3D299A052BFB8D4996CF298EC692D448@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bOYk/TLh5vqWyX8COh97cmEtAD0RZApzlf2mJPnqEBKLDzkuokLuM89k6OXCa7fEHVZPOOcYXhmvizLrUduO5jiFgPbuWl88clvj5aNDt2eF5732coc51FJ1Pek+YcuPZTPbfSom98inxAqCrziMJKr2f3n98p6ZPERO0thnR2ns2BmW1Ch2aE97O3hU28GsSeegM8N0SNYXvokLYn8IK64+QzlckE/yrYklHnh7I0cKh3vb08e0pAxCi+EKYk7EKnuAaYHt55HqhyRWDQ4yJxjll8g/ky3H2yr3jW8TFGDgrXJYg4Ee75474cCurYVyYESmY14/jTlMdd/33ARMpQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d1451ae-1ca8-4bf0-3144-08de8b3208ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 12:20:14.2341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dSAAHeHUHZ9A+/zfu22QMd0gd5uMjB0dTKmKLKfRoIci7XgkNHSMrsol5HkWk2Fj//NJVUUEpx8nRqQju3IKVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5191
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
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid,pages.freedesktop.org:url];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:kenny@panix.com,m:lyude@redhat.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D76FA3351D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI2LTAzLTI1IGF0IDE4OjAyIC0wNzAwLCBLZW5uZXRoIENydWR1cCB3cm90ZToN
Cj4gDQo+IEJhY2tncm91bmQ6DQo+IA0KPiAtIFJ1bm5pbmcgTGludXMnIGxhdGVzdCBtYXN0ZXIN
Cj4gDQo+IC0gSGF2ZSBhbiBYUFMtOTMyMCB3aXRoIGFuIEFsZGVybGFrZSBDUFUgaTctMTI4MFAN
Cj4gDQo+IC0gSSBoYXZlIGEgRGVsbCBtb25pdG9yIGhvb2tlZCB1cCB2aWEgYSBUaHVuZGVyYm9s
dCBEb2NrIHZpYSBIRE1JDQo+IChhbG9uZyANCj4gd2l0aCB0aGUgYnVpbHQtaW4gZURQIHNjcmVl
bikNCj4gDQo+IC0gVGhlIG1vbml0b3IgaXMgdHVybmVkIG9mZiBpbiB0aGUgS0RFIHNldHRpbmdz
IG9uY2UgSSBsb2cgaW50byBLV2luDQo+IA0KPiAtIEF0IGJvb3QsIGhhdmUgYSBoaWdoIENQVSB1
c2FnZSBmcm9tIHRoZSBpOTE1OjgwIGt3b3JrZXIgKGFuZCBhDQo+IGJ1bmNoIA0KPiBvZiBJUlFz
IGZyb20gdGhlIGRpc3BsYXkgZHJpdmVyKSB1bnRpbCBJIHVucGx1ZyB0aGUgSERNSSBjb25uZWN0
b3INCj4gDQo+IC0gSWYgSSBsb2dpY2FsbHkgZW5hYmxlIHRoZSBtb25pdG9yIHZpYSB0aGUgS0RF
IHNldHVwLCB0aGUgc3Rvcm0NCj4gc3RvcHMNCj4gDQo+IC0gSGFwcGVucyB3aXRoIHRoZSBYZSBv
ciBpOTE1IGRyaXZlcnMNCj4gDQo+IC0gSGF2ZSB0byB0dXJuIGl0IG9mZiB2aWEgImk5MTVfaHBk
X3Nob3J0X3N0b3JtX2N0bCINCj4gDQo+IElmIHRoZXJlJ3MgYW55IGFkZGl0aW9uYWwgaW5mbyB5
b3UgbmVlZCAoaW4gY2FzZSB0aGVyZSdzIGEgc29sdXRpb24gDQo+IHRoYXQncyBub3QgImp1c3Qg
dXNlIHNob3J0X3N0b3JtX2N0bCIgOikgKSwgcGxlYXNlIGxldCBtZSBrbm93Lg0KDQpQbGVhc2Ug
cmVwb3J0IHRoZSBidWcgaW4gb3VyIGdpdGxhYi9pc3N1ZXM6DQoNCmh0dHBzOi8vZHJtLnBhZ2Vz
LmZyZWVkZXNrdG9wLm9yZy9pbnRlbC1kb2NzL2hvdy10by1maWxlLWk5MTUtYnVncy5odG1sDQoN
Cg0KKEFkZGluZyB0aGUgaW50ZWwtZ2Z4IG1haWxpbmcgbGlzdCBoZXJlIGFzIHdlbGwpDQoNCj4g
DQo+IC1LZW5ueQ0K

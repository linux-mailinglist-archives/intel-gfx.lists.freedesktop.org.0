Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D7E926D56
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2024 04:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9900F10E33A;
	Thu,  4 Jul 2024 02:09:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aDty1glf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3635F10E33A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2024 02:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720058981; x=1751594981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UycC9FMZE59abW7Pglfaq6I84irC4s51WvEpRsX+G4g=;
 b=aDty1glfGaWUG2+uQcvB4C7bu3hMUh69pVfSka0XkzDtkHKL/wLSQHWb
 /yA7yolgOwUDbjcEODV4me0SEtUEbSPI5QCojyfQ1yctaO1BHCwHgTv0i
 sjEb+R5gKlNMYLGH7bRk3VaQg82NdIxJaZPwhUZr4KZ5mb8rEjHkfeRjl
 mqF8Z41Us+WT7N8Xh6ww90x89BHuSmjLZtrBs9H6eLQQVL0x/eLXRaIVh
 Sg5fU2BMEPxUvl1TTgqmzbHbWJfy+hGoylj2g+gRgNXsGWM73+gnbeb6J
 etH1wPlN0MzoAstV+c72BLCpjuB5g24BCuAOu+YT/dm6ZLFvZgYjMIjsq A==;
X-CSE-ConnectionGUID: 2MN5ZD5hSu2UHYiYyjrHFw==
X-CSE-MsgGUID: JRNKZIBCQwybwVkJY+93zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="28709158"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="28709158"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 19:09:40 -0700
X-CSE-ConnectionGUID: Wg4voYwZTUqDeX2QDiI7RA==
X-CSE-MsgGUID: NJaigsIVSWOLRRB+PRhDqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="51311489"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jul 2024 19:09:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 3 Jul 2024 19:09:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 3 Jul 2024 19:09:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 3 Jul 2024 19:09:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QwiwwTBnH/lkKqvav2Ga8j99ak8a7piudqtY/Z6A2KU2L7VgTA0cJmdDo//dGJ3jl6iJbRzigobcYyDpfBJODWpzGJVVYn9eskiTUB+CdrVQ5sub8wbNKOFir3V4yrlQ0MGqqJdLXeaeGhdUbBAEDml7rJiwPyODPSK84WmSinwYU51Bw2PtuiOONRPh8JC63MtJJL1yEoh9mp/UaSF0Oe+YPskYqKtEHp3wxH1aKE0WN6+YKmONNrYCKAp9TqAFEHKfwwSCOjH3ANoKlJQxpfWdpVPag7OixRpVEc9WX98Cwqkcy5g/adyg0/G/Ur1qIBBTTu/1iSbBOFLRN/1gWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UycC9FMZE59abW7Pglfaq6I84irC4s51WvEpRsX+G4g=;
 b=h3w4NRpuz3vLXXQGf3MFIXqyYcjv/bdDqIkwR0n/swwzUMeQg7auXoK6DikkpH28lOp+LmyDMk4kKSCmWcBbxPej816qD66benk6CUKq9VO70/TB+6TWa9kvaHjJoXMjlTYuTjbkEs2HdgIES6aRmb9NgzhRmtujJ33VyWqTpTAp69sGLi9reID3pSoduYMiDdHgTg1wS7oseIU82zyFEqRaM+osKbcSHd6ipLdzrGEBMfbBzNRp2EpNp7HU1cKZO51aGeMAuf/nB7KkTJybvJNBgU7yLh8YjIAE4Df3A97BQA+w6c27fYgaD3qvZZ+juc13mdBgLQzFPobNlF+Nmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 by DS7PR11MB7783.namprd11.prod.outlook.com (2603:10b6:8:e1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.25; Thu, 4 Jul
 2024 02:09:37 +0000
Received: from PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::74e1:a7a3:bae7:9752]) by PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::74e1:a7a3:bae7:9752%4]) with mapi id 15.20.7741.027; Thu, 4 Jul 2024
 02:09:37 +0000
From: "Yu, Gareth" <gareth.yu@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 1/5] drm/i915/dp: Don't switch the LTTPR mode on an active
 link
Thread-Topic: [PATCH 1/5] drm/i915/dp: Don't switch the LTTPR mode on an
 active link
Thread-Index: AQHazWIEI/NKizLjqUmM3z74oLfv37Hl0sCg
Date: Thu, 4 Jul 2024 02:09:37 +0000
Message-ID: <PH0PR11MB512800FC57B7453D0121EF22E0DE2@PH0PR11MB5128.namprd11.prod.outlook.com>
References: <20240703155937.1674856-1-imre.deak@intel.com>
 <20240703155937.1674856-2-imre.deak@intel.com>
In-Reply-To: <20240703155937.1674856-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5128:EE_|DS7PR11MB7783:EE_
x-ms-office365-filtering-correlation-id: 2489a1c5-7a96-4890-1a06-08dc9bce5b12
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VnhFSDBmVUJQV2R1NENwT1RVbG9zUDNaTStZSWVpOHYrdStxS3BOaHlXalhB?=
 =?utf-8?B?WHBhN1MraktVTHQxTG1wL0dFK1JPREtaL3Q2UGdkeG9Zd1dISEpxU1p6L2ZO?=
 =?utf-8?B?Z0VOSUZBY0UyMThhcEk2WGlBekVNZzRwUEIrdmlITXBSWWI3bWJwb3pOZnVH?=
 =?utf-8?B?Q3hBSHRDcnJEQVlrY3dzQmdRajNLMlZPMTN0SXZOUVcxTHQyUzBNWFRZbGM0?=
 =?utf-8?B?aEQ3STZiT0JaRlM4RTY0VElmVWxaVjArRWszcjQ2eDBuQ0g3UE5VT1ZCNnFQ?=
 =?utf-8?B?ZkJyL2ZhdXQ5RnR5all5dFlWN3N0d1htdVpIKzZjQko4Z3p2YjhYTXRqRDIw?=
 =?utf-8?B?cWxRelA1c0VmMi9jWUdOckJYL3ozUm9DbW9MY2l2cFUzdkdXWkU1K0ljLzNy?=
 =?utf-8?B?SjNZMGZDamRTdERVcFFJalZXV3orM3c5cllZZHNIMFNVQ0NzaVNZaXhmSWtF?=
 =?utf-8?B?Z2x3ZFQzcE9SbkhOVXNBcDVkRndHNHZaaGQ1dEFYNWRDUHRmZFJpTzNKbEsw?=
 =?utf-8?B?YUZQeFhzSkJMVXF3WkxkdEFNYzBVSkNFc2JmYW5SMnBZWjJibmNsTk1IUU81?=
 =?utf-8?B?OEw4TlpaS3hqZ2JNWUVvWmlLeE52RnhLYmtIampuSG9CVHMyTE1sWkk1T0xq?=
 =?utf-8?B?UHJYNmhVbTdUU1VyanpUYjRiWjIzV0wvMTBkQm9BT0p4WlRvV1lyRTRCTGNs?=
 =?utf-8?B?VW9oTkdkLzBVT2tyRC9SNFVlaVVVSnlyeHpzU2FmYXRUZnpTOVZ5cndaVnRN?=
 =?utf-8?B?Zjc3N1llQjQySGtvT0J5YlJKM2hHTXhiS2hnNTVaZGZrMU5WRU9hcHk0YkxI?=
 =?utf-8?B?elNqSS9mRndXaVNlMk9xaVRlRjNhSmpHM1N0QjdRT1dmU3lxRWV5eGxvK2xy?=
 =?utf-8?B?TjJ0SEYxVGNjUHpzQkU0N05sNDkzU2psSjRIVjhkdE9jdytsWGplRHBBZ0Qr?=
 =?utf-8?B?TVFmTWRhL0hhWGMwZCs3YkVIc2xSb0w2SUNFZHV0RGQrZG0rK0ZCYjdNdHJT?=
 =?utf-8?B?cTFsbHBWZmd0cVZvSDRZc2RtZUF1TS80bGVVZzdteTRhUHp6bldaMm4zUUhI?=
 =?utf-8?B?WXBDK2JocklGbHJ4c0JsTDJDUmNQNEN3MktBK0dMc3ZidmtMNFRrT1pJMDBM?=
 =?utf-8?B?ZW94L3phQittTHlpQVVjWnp5TkphTVVEN2djcTcvZnB3QmJuTWgycmtHaXll?=
 =?utf-8?B?aC9peTZyTENsVGZva0lNKzd5V245OUVwUjFVa3RZZGEzbEVKa21lcG5JVGZE?=
 =?utf-8?B?dTNyM0o2WncyQlpjT042NWhzeUd5QTlucXcvZE5WUlg5dFpMdWNuWCtaaUJl?=
 =?utf-8?B?WFBuQVJlV0VzV25yTmsyeElycjNBQUpKcVkyQ2J4NTdJTmRURXVXR0hIdm9a?=
 =?utf-8?B?UUIxYlk3czJaUy9qNHJFZmlQMVpJZWdsSkxyTDV0QUtCN0tDdmMxOUNIaTRE?=
 =?utf-8?B?dk9wd0c5NUYreXV4T2tiejkrS0ExSG9CZUFTSFBZSlFFTFhLd1FiNTRnY00r?=
 =?utf-8?B?MitkUkhGNTYweFdtM2lTRlVUemFTUUd1SmliZ2Jmak1RNy9JTGFEY2hzNHJS?=
 =?utf-8?B?RS85Q0d1QkFXVmRmM2VGNllQWkdoaGo1VmFWNHpqQVJ1U2Z2ZEU5STBUM2Yv?=
 =?utf-8?B?TlVJU2ltZFk1SlRHUm9ZdVZ0RDJOVy9zRndLQmVwbmN2SHptU0g0TEtNakwx?=
 =?utf-8?B?b01pRldqdzZRQVZlVWZuVVkzenhVMXlacmhnUk5PaXcyU3BTUGY1elJFazNa?=
 =?utf-8?B?QkdNU3Q5d3hZTVNRWndUeWJadUdad29VVmRTVFZSSnpSMFFhaGRBSjF0MlZp?=
 =?utf-8?Q?hnBvq4WJcOrM3OfgLqLhiSjogGMA7ihFVNPpE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5128.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VVdrNVBQTHFVSTRoZENnc1owbGF0UzRPWXVraFRCYklSM1hIVW9BajBmNjdO?=
 =?utf-8?B?eXMzV3ZTYk5uWWFzNU9Cb2YrQWZ3aUhQQlZJaHdvb2NWYitoR05CSTB6VTBV?=
 =?utf-8?B?TmhUQVZTOTFSeTVHblR0YXYvd21Sazg3dVcxRkZDYWxmVnd2c2U5blppME0y?=
 =?utf-8?B?MXRGWGUwV2hKaWtmVStZa0p4cHhGMlJJQ3hHN0IrRkhzdFJXZ2ZaeldOU1Ny?=
 =?utf-8?B?aHdZNXJ6ZmtzU1RZZWY2N1lMeFNocU0wcklnUEVWS1RGcHhScThlZjNCZVFK?=
 =?utf-8?B?MmhRQ2NxMk1uR0hKaldzcEtsMkNqSVEyOGV6WEZwUHBqOGhIdkpKNllBckdD?=
 =?utf-8?B?OGorRmZiMm8xbU9FM1BFNHJpcWdMWEt0Q0NlKzEvcHE5N1YzZkp0cHVEQnA0?=
 =?utf-8?B?RWxCYjZnYnV2dThJWFM4SElKU3Q0dnh6NzlwUy90TzBuQkJzR2d3aEdmalBu?=
 =?utf-8?B?RXRPaFMyYlcrZFZMMFk4RXJuS1oxSzAvZmhpTUp6MW5vTFlNekQxYzZldWUz?=
 =?utf-8?B?cEhqaldCaGFObHVLbkNRWGV3N1lMK0xLSkY2eDhYOW1hbkZlYy9xL1dIUDR3?=
 =?utf-8?B?UmlmakhqUWVucmxpOGZTUzBTR3phdlVhN2FTano3ZWMzVGpnN2ZGOG9jd241?=
 =?utf-8?B?aWozNGtZNXl4Q2JsQ044Wk83aWlCaC96aW1jNklIK2JoSkhZeDFWU0xBdVlV?=
 =?utf-8?B?WHl0OHNWcWoydUpCVVlBNFZjVUV0NGJKQnN5S3ZEZnkxWlJmZGZ5YjBQK0d1?=
 =?utf-8?B?S0F5OGl0ZU9qemRDdXk4Sm5NY1lmcFNrQ21iN0N4d05vNzU5SG4zbDdlVXV3?=
 =?utf-8?B?MXFFYUoxZUo2cjdSSTBqS3BiSzBwREE2d0ZpSis5NjRjY3V1QWRIWUJGRVRQ?=
 =?utf-8?B?elRwVWxrbk9yeEhSc2pBeko3R2VtOUczemRUMWZ3MHRqTkl2MkJ5bVU2ZmlZ?=
 =?utf-8?B?NFJLcXc3RVF3a002cjRyTXlCUTVOeXVNVytZZ2hhUVNRMUcxUHEvUGJFRnZo?=
 =?utf-8?B?ZlNJUWJxK3o1TERVTDhUeWhsV0pxRDJxY3lra1lpM2JDbmFmM3psYkdsaWlE?=
 =?utf-8?B?VlByVTVXMGdSNEdSK0MzdVU3bitjdyt1enpsZnRpVjRjUGZUUWRwVWU0dmJ6?=
 =?utf-8?B?QW95VEpSeTcyTEVJQjZJdURueDlYR3hFYVdxVzl4Unkrb1VVVlp6RmNTL09p?=
 =?utf-8?B?NUpoYUxmWWtvbzJwbnhMK2sxcGdmVThyd2Y4dkc0TlpUR2NKTEw2QU1QR2Nn?=
 =?utf-8?B?ZzNyNlpiTXJSNUpTdUlOM2ZPUEUzK25kWWJOaXhoa1JWNXFzMy91Y2JmeE5t?=
 =?utf-8?B?VHpqN1YwZVAzSC9uQUdXdFd5NjhmeFp3a3JwY1VhWVZ5WTRCODRqL2F3U1kr?=
 =?utf-8?B?dXZQOUVpOWpGMW5hdlEyU3RSV3hTangyZGJTUzltcTlNeG5CT3FueUhYTkJm?=
 =?utf-8?B?TCtrUTFIcXVFN1FUMTQvNWVKakVBODNCcXhDNVNKVUhmdUMxMEZaVGowTUJw?=
 =?utf-8?B?OEdqWW5zUExnUXc4N2ZjNWtDWm5ycU9wMWlqSnNwOThOajIvQXQ0MmhzdDZX?=
 =?utf-8?B?Yi9pU3hSL25MdW9KQW8ySHI2WjE2NWhxSUZkTHNoNU9JRUQ1dUw5b3VHd3R5?=
 =?utf-8?B?Q3RhdDFtcUcybTVCQ1pZVVM5cnYzR0ZBNUZPTU1pV2plL0hsNmVIOWJWaUVM?=
 =?utf-8?B?NDh6L2ZjWDh5NVJmMEhSWVFvSDNCR1d3aXRLdGRxVWZWYitqbzN6Ukt0MXVJ?=
 =?utf-8?B?cFVzZEZWVjFZWkhXYy9wWnpwOFk2VWpEeHVYUXZoRnowK2hYQkxMVmtUdnNt?=
 =?utf-8?B?WTk4VTM1aGpQVlZueFBYVHhzdW5RZU1PbVMwK0VoOFBqeTA4elZRZ0xpdEpK?=
 =?utf-8?B?dkxxaUxHM21RdldiaU1GOWxCME9qamVjL3dEUE43TUZjaDRuaGhiYm9JRWdk?=
 =?utf-8?B?NGFBaHlZZzlTUXpnYlFHOEg3UjVPUjF2M1pvSzZwdTJ3N3BhdEUxS2l5cjVr?=
 =?utf-8?B?Vkp4WmpWYUUxRFN5eFlLNUpkSnA3VXV4YkpoUi9OK0x1cGJhMElWVDJjVGx4?=
 =?utf-8?B?L3cwc0p1M0FsZEVsWG5BcFcvYS9oQ3l2LzY0OW1GK1ZQTXdVSG1kcWZ3Z044?=
 =?utf-8?Q?l14nN96zm9GC8d/ghXcrshjJj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5128.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2489a1c5-7a96-4890-1a06-08dc9bce5b12
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2024 02:09:37.2782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RI0MjaE0FwUg66c9QG47aKZ060+8dcEDWRN4vOcI1byQZ5A5x89F3BY6wu5puX9U9Sj5CdJWcXyxkboPRBZL6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7783
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

Q29uZmlybWVkIHRoYXQgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQwNzAzMTU1OTM3
LjE2NzQ4NTYtMS1pbXJlLmRlYWtAaW50ZWwuY29tIGN1cmVzIHRoZSBzeW5kcm9tZSBvZiBERUxM
IFVEMjIuDQoNCg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B318497B7CA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 08:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39B010E532;
	Wed, 18 Sep 2024 06:17:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tw0exlq+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A586110E52E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 06:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726640268; x=1758176268;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yeHbGGDtroL/3kqFN5I2zdB8NeMKlm5ReZjiLI2K9DE=;
 b=Tw0exlq+By3GMOYyi/4rxZ+yMuZwNOEuOCXTwnD4/q8hAfAPFrswaZ9n
 fWRWF8V+aCgGzl9prFF7FwZS35Rwj8RSRGJI04lQDhgRkAeUt7dkySjEq
 t/sB1eiraVcFeH7KETMH7uQbvytIQiP0qF0XJO5O8oSAmqciF1iYL09ZF
 vbvcwp8flv/Y0EQ3Unv0spf0UcUHHEiBHuJpdz2qr702wVVyo0ROOUs9v
 Q3Pt1jXHUug3I37TlMk/uZugnjKwLnOoFBVN6TtApBdHP98kdDNFwXzUy
 ves78J9ODP4Wv/+88ptWJbmcAXtlypDQ+AtOUOCx49m2kqdRYeAvAoX+P Q==;
X-CSE-ConnectionGUID: nL74GzCmSwSiTQHfqPk8hA==
X-CSE-MsgGUID: 51VQr8lBTemCKyxDeH/54Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="36667887"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="36667887"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 23:17:47 -0700
X-CSE-ConnectionGUID: zU3dbXcIRXCf0wvOhvfXWw==
X-CSE-MsgGUID: /aGzu+Z2QT+uBnHEVlbMyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69420142"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 23:17:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 23:17:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 23:17:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 23:17:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U2agmR+3Wi3ntIxlKGwAdCAf8IUwQ+TZvOrPEwycV9O/grFmyFnXthAbUhk20mFXsIyf229yXphC6c+ofNw1jkrXYyxgiToLA29iqy7ddWNCN+/2Gn3HP47bkc15GHtcPJI2iuIuyXVwjFjaCmsff5PXUrxVbsdrNCBUt9Xd2vcOclxpzflPC/lj9UuVfW0DE0UmPCA/+TGb7B8tEXoVc1f1ZusaJwuFNhFvhRNZuyT5tse0n2Q4jRZOojyRGuiJcEy/OQqduP1XEuT8+xLbezuZLix5pZEVinJgjLYTTicGDM62TYjEqFGHZO0n5zxdlhrzzvVWDfV6LHNY2affYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yeHbGGDtroL/3kqFN5I2zdB8NeMKlm5ReZjiLI2K9DE=;
 b=CWcROMx8/PvLvCRgzETmAcBwBYodS3Sg7GTl9fAlxpclNtl6H5Fl4dawXLPn+IZWEySOzyLcAib/RRSo9xftFtoTS3A7L/UPdIskF4mLllcHT4Zo391Sot9klojihT011oEwqynol8NwQTwNlc66P1rVk/4TRzZ+bH/gVA4R2Ze/I5TtWkGgRhb/LQ8v+Oxez8Cd8MS1JcjxHd9RQWO2VQ5M8oE+1ElwVnbDIbSVyANVyXKUgdRrySxXecI63PeNIBM4X9MNQnJL5hVNGg8VHirH1UOpQP9UPwOPxs1Pal3tYciXShbWdMmAk2zJnU+vs72BQG/x82gdBnNCqGCTmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by PH0PR11MB4951.namprd11.prod.outlook.com (2603:10b6:510:43::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.16; Wed, 18 Sep
 2024 06:17:43 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%6]) with mapi id 15.20.7962.022; Wed, 18 Sep 2024
 06:17:43 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: eDP Panel Replay is not supported on pipes
 other than A and B
Thread-Topic: [PATCH] drm/i915/psr: eDP Panel Replay is not supported on pipes
 other than A and B
Thread-Index: AQHbCBaBc4Kirvjcrk6cEP1YRydPsrJdFJVA
Date: Wed, 18 Sep 2024 06:17:43 +0000
Message-ID: <BL1PR11MB59796A85A9EC50DA5EC42E85F9622@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20240916085706.2160511-1-jouni.hogander@intel.com>
In-Reply-To: <20240916085706.2160511-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|PH0PR11MB4951:EE_
x-ms-office365-filtering-correlation-id: 64820626-fadd-4d09-0715-08dcd7a99b77
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UXcrQ0JURTNONEtJa05YL1gydWRBRVdsSlRwNGp2REJyV050SDZoVnZLaklZ?=
 =?utf-8?B?aVJOTnlacGhOY3lONkNmVm5HVzhqWjdWRWRWeVFiK3B3L1Nka04xd0V1RVJM?=
 =?utf-8?B?ZWFVNkFQVlNKdWltY3Z4NWU1M2dyeUZ4RFI0TFNTN1VSZU1ZRHN2Z3FzbEN1?=
 =?utf-8?B?V2o1QUxBNUxkYXg3TFNESFBIdGhTdUhqazgxSVNkZFgwNzJYNHVBeXBWTWFi?=
 =?utf-8?B?SXVUL2oxZTJZQkQwZHliMlBXYzE5YlBRQmdnbmpjaVQ1OFhqRGZuZGRsLzdZ?=
 =?utf-8?B?STBFMWM1TlU5alNESXgyaGUrMmh1di9ZWGxBVGNZVTFBV0I0RE44bUZqMkdI?=
 =?utf-8?B?dUhBRmlxT1JqZlNkTW9WUkNKdTlMUUdLMWJmVUE3eGxobFNtQmxwN0NCRC9x?=
 =?utf-8?B?WVYrcVZiT3B0SHNENi94L1Q4WW1lVTgrZ04zbEZLdUdYUHhxNU1aQUxIL3FS?=
 =?utf-8?B?T3BhWk5TbXpzY3hyY3FENU1uWEdNZE92elZjYklBOWlwMjRIWk9SNUFCV3RH?=
 =?utf-8?B?YjlDSitXeGV2ejlkOXBoSE5vTjhJZnE1R1h0c2lYQXJlOEJrMForQmRsa3Vn?=
 =?utf-8?B?WXpFRjVMd2VDVjZmRGlSWHpmNUNpeTVPb21BZWlHSkFtbXVwYTNUZTRjYU85?=
 =?utf-8?B?VHdMNkVJUm5QVTlENU42b0hCbkVyVllIU21oUHVKcktxcmQxTWQvM3ZuR1ZQ?=
 =?utf-8?B?U2x0bndPMndiQWRSVlJ3ZEk1QmZwRUsxNm1Idi92S1FBWG5iZzNuaVBUU2Fv?=
 =?utf-8?B?bktYS29vcjYwZWxPKy9xRGNLWGk3ZTlpb08zNWZoTlBVdWp0NSsxcnVVdDFp?=
 =?utf-8?B?ZGt6SGdpaG9lMHRlSHVRblp3UTVJaU83SmV6WVhaZE9sZGc1TnFON2VTcmd5?=
 =?utf-8?B?NVVlajl6QWxVbzFkMzh0bTZtZnQ4NXhZbkVqNkxTZ29sSTIrbWlXcERXSk04?=
 =?utf-8?B?SGhyUDlQVWZaa0IyQkc4b1JRWDEzSXMzZVp4OWxmdlR5bWVsVHJyV2QyeVRt?=
 =?utf-8?B?ZGx4RzhMZUlaUUhUSjRVWmlScHhMc0ZyNVNqOHJMYlJyUU5qTngwRlpQb0pj?=
 =?utf-8?B?M09seHFsQnJ5K1FHazJGMkQ4OWNlZjdpbzBpYzYxaUpaNkYyWWdReEluSG42?=
 =?utf-8?B?dm9ITzZuV0lTbjlpcEdQRS9uV2c0YXpHS3VPY0laY3pCMEJ1MzJlbmRGRkZT?=
 =?utf-8?B?ZnBpVmVHQ0Z0dSt3MGR6TzNqdjhTQ0lLYnRmWlBmRXVkaWlzT2lyQ2RlOEZX?=
 =?utf-8?B?MU9jSmVmRm5sT2hlR0orRGxtbVkxNDdvZFQ2NWQwa2xIRExBRUFSVXFsZWti?=
 =?utf-8?B?RHNFRnM0L1JwUmFFTVd5SHVXRDZIbk5TSmhjdFIvRm1pUFdJOHN3M3BJVUw4?=
 =?utf-8?B?UHlreThUTFpMK3FKZkk1Q3RpN2JDMFdhZFRaZm01TUNBTTk3bUk5TWVYL2d4?=
 =?utf-8?B?ZWFYN01VSDlCdkZrRjU4SmJpN3pFTldBVlVXQkNWVThsbUdpSnpmTEswVlA5?=
 =?utf-8?B?enE1cEJOVGlidEMyQ29nWlowZmhTWE1YeGNkaXYwMStmNDRjZllCVll4SHY1?=
 =?utf-8?B?YTlVckx0WGN5NHpSYjlHcG9EbjNibG00Q3FsTzIzaThnWkFTSXZrTkgrK2Uz?=
 =?utf-8?B?czVyT2xJUUd1dEhDUU14UForc3BrdjIrNHY5ZEVLNU94eXRCSXBkZjIwYm42?=
 =?utf-8?B?QjBDelpXUElieE1hK0ZseE5qM0w3cVdQLzFrbGpqVDF0aDMyUDB2c0t2VXVm?=
 =?utf-8?B?L2ZFQVluMDg2ZDJrYy9kTzdWTE15dFh5V3FTdHlab3JORnlWRjRCSmZweWtE?=
 =?utf-8?Q?Amwr4x2izly46tx1eyEHLYScex6JNpGl37Rfo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K1hlTDdJYlJJQlowamZZck1TdTVlRFdXaGUzR2ZxdWdHSGVSUURaZ3p6RHBl?=
 =?utf-8?B?Umo3K0lCWkk2eUFNNXJhNGQ4VW4xT1YyQkhtNUNEbXJoaWdIbHhWdHRzZko4?=
 =?utf-8?B?NmhUZGJIRmV6Z2cxSDlhNEJkajJsdUI0ZnNIRGIvMjg5bnY4cVhCOThkTlE4?=
 =?utf-8?B?bk1OVld2eVArNm1GTWV4NHg5aFFRMGV4SnBNMHozVW5DaHErenRSWVlRaFZq?=
 =?utf-8?B?a1prbFY5MWRJODhrMGFsMW11VzFidkMzSFBKaGVFQjkvbEl6SFdjRCtPVVR6?=
 =?utf-8?B?ODhwOHBUSFRSQ295elJGUmRZc0UxZnZKeUhielNFSDJUNGZMdDRQRmZxaDBs?=
 =?utf-8?B?emxZWVhWMTMvMnZZUGtiTUNrYXAxd1VyamdXTzErcUt4KzRFc0MxOGRWSTRW?=
 =?utf-8?B?NEZReTk4U3BHYm9ublVxNDFsOGUraURyZVVCOEg1YzlyNGhBZFB6Mm4vSjgz?=
 =?utf-8?B?aWlpYnAwekxrczE5ZEptWWpzbEhRSXcyRjFYNGtocGR5WmFJTU85clZ5dFRq?=
 =?utf-8?B?Q1FoQ1hEby9DZCtWV3VWM0NIZHRBaSs4QjNHMHRjSmU0eEp2RVBNbTdnLzVD?=
 =?utf-8?B?R1Q3Z01jNHF1dnRlOVlIZ3dKTDF4R3pRVW81VnJTcmZUUEUwdlI0SXduNGQ2?=
 =?utf-8?B?RzNxV2M0dit3S095T0JvTVpkSlVSRXpaK1NzMm9XK05qcFVTYjZQRGFhR0JN?=
 =?utf-8?B?cVdtb3Y1Vm1HN3ZJN0xMa1R2aHFYL1JWRkhaQVZnbEt3aExUWXA3NjUwNHpp?=
 =?utf-8?B?UXdGdjNnTituS1Y0YkFXeVdUbWY0cnVINFhEMVo3QzBud1ZOQ1V0RnNXUjM1?=
 =?utf-8?B?SmllL3NpenRWQjd2V0Zpa0ltUHZacy9BNXNLMWJ2dUxKZEtQeDRCdXBiM2JG?=
 =?utf-8?B?V3VkQnFGWVZjZXNLSVlyKzRZalJ0NkVQUHFEN1lzN3RaYVozaUVmcTZ1clI1?=
 =?utf-8?B?bmVZZkg1dG5CY28wNS9uR1VTZzgvMzFhNnpGbEpIWFp6c0JScW9UWnN4c01n?=
 =?utf-8?B?cElsSWc0NHhxRDREZlZJVE1FVHhNQVM5SEl1dVdpcFJXc1ZwQlJSbjJYTVpC?=
 =?utf-8?B?UUU0RUNqRDF0a1BzSm1aR1Y2VkhwaWVGTm94UHhGK2xjL2FXSjlHZnQxRit0?=
 =?utf-8?B?dUdMZjFYOGRmOHBTRFN2ckZoOFpiQ1lxZDc3Qnl4bUxmeityWHEzZ01BV0Rj?=
 =?utf-8?B?K2p2ZWFyVmFURUREYXg3WFNFN2xNL056V0dFTC9nYkZoNlcvZGtnMnczYXlK?=
 =?utf-8?B?WjV5VktPcFJvcXU3aXY2REZMd2tvYXdlV1djYTZVbHNUam5TWW9VZ1BnN2Z0?=
 =?utf-8?B?Q2M0c2tyZmZxUUNHQldtNTg5UDRZV05CNGJJK2NPMmh3R2NBWTlERllReEJs?=
 =?utf-8?B?cm1pS2g1ZVN2VDYvSFR4MUVPU3c0dkRLRXMrSkRYNy9CTmhib0ZIdE5xNlZJ?=
 =?utf-8?B?OWhxV1kzaURKdE1pdnFTNkJiNUh4MVNrTzVZdEIzcHVJcHc1b2RYNEJ4U3Uw?=
 =?utf-8?B?OThmOHN5L0pBRm1JNXgrSkxUYTF3S3dxS01DcjZoa1NwZTZCZkxGZTkwVW5R?=
 =?utf-8?B?UUFOMndXNk1NOUlZMHI5Z2Z1MzUyZGc3NFpkOGJPQ0hmTXQwQS95VFhSUkt2?=
 =?utf-8?B?YmJOTE94bzkyODVRd0hZM1pnMUtFUWtacVR4NUVGeFNiVmtvVEF0NGxxMEhE?=
 =?utf-8?B?NFJOaTFvcjUwcy9IQmh2Sng2ZzV2VXNpYklabjM1S1BXdmVONjVMK1A1cVpW?=
 =?utf-8?B?ek55UmorZEhydnpHSngrUDQ3U08yZWJnb1ZQNHF3MlY2MjdpQjlpcUJ2bmtj?=
 =?utf-8?B?N3ZhUFRvcHMrYVAwa2Q1Zm1jbVZlcURhbzJUNHVUSUZmdmJHVGxnWFcxYmhP?=
 =?utf-8?B?TGF6QUhGRFpMaElyQnAwbnhPVWJaNzZYOThERXcrYTVvRU9xZUFrOEVqY1dI?=
 =?utf-8?B?MllUV2xHYjVXZlBHQWRIQ282VjZBdlVwOHdVZExlanRLTHVTVDZMbVZyOGUv?=
 =?utf-8?B?cGY4QmFCenh5eU5rRFpQWkZhTUNhNVQwODRpYnUvU0x1TkZvWkVIc2EySGVQ?=
 =?utf-8?B?K0tJa2hJL2Z5QWNlS1lPZUxnN0N2bDVqSjhHQTFQMjVjUFY5Q1h6RzY3VXMz?=
 =?utf-8?Q?YcOcueI0SwBAImWKRtnqdsx9t?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64820626-fadd-4d09-0715-08dcd7a99b77
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 06:17:43.7061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hAWcGpjxRXu2fovRzfIWOyd8D6aiIgxIHDpYl+aVHwDWUQpFrTgIOhj1uyRdAbvFfF4g0dAWRv9/TvYFbuSMxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4951
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgMTYsIDIwMjQgMjoyNyBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogSG9nYW5kZXIsIEpv
dW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5
MTUvcHNyOiBlRFAgUGFuZWwgUmVwbGF5IGlzIG5vdCBzdXBwb3J0ZWQgb24gcGlwZXMNCj4gb3Ro
ZXIgdGhhbiBBIGFuZCBCDQo+IA0KPiBEbyBub3QgYWxsb3cgUGFuZWwgUmVwbGF5IGlmIHBpcGUg
aXMgb3RoZXIgdGhhbiBBIG9yIEIuDQo+IA0KPiBCc3BlYzogNjg5MjANCj4gDQo+IENsb3Nlczog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvMjcz
Ng0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyB8IDQgKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDFhNGVmMjMx
YTUzY2EuLjY5OTg5MmI4Yzk2N2EgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBAQCAtMTU4Miw2ICsxNTgyLDEwIEBAIF9wYW5lbF9yZXBsYXlfY29t
cHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gDQo+ICAJLyogUmVt
YWluaW5nIGNoZWNrcyBhcmUgZm9yIGVEUCBvbmx5ICovDQo+IA0KPiArCWlmICh0b19pbnRlbF9j
cnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0YyktPnBpcGUgIT0gUElQRV9BICYmDQo+ICsJICAgIHRv
X2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+cGlwZSAhPSBQSVBFX0IpDQo+ICsJ
CXJldHVybiBmYWxzZTsNCj4gKw0KPiAgCS8qIDEyOGIvMTMyYiBQYW5lbCBSZXBsYXkgaXMgbm90
IHN1cHBvcnRlZCBvbiBlRFAgKi8NCj4gIAlpZiAoaW50ZWxfZHBfaXNfdWhicihjcnRjX3N0YXRl
KSkgew0KPiAgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IC0tDQo+IDIuMzQuMQ0KDQo=

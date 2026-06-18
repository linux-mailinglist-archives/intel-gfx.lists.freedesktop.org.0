Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4KYaJaDLM2quGQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 12:42:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1BE69F73D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 12:42:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FJQW5iV7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B05010F259;
	Thu, 18 Jun 2026 10:42:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA9F610F259;
 Thu, 18 Jun 2026 10:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781779357; x=1813315357;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YY0aCY4j/5fW4zCbADkvKvtXk9oFNEDWFKUCh+RTjcw=;
 b=FJQW5iV7e6Qmu+FqjzmxRjHKYZYluFCdoa4r4HrkDiJ2gQCX/tQXfCjE
 ebTrKzv8Dz9YjUo8jYrx2mZDJ6hMmD6osUEM7Wgp0TpYkVA4VITBn4fWk
 EaYGcO4iXFsLYYKKe9Wgsxzbues4xY0Vi5CstlsovZ3wl8PJVOtKuPVW0
 mdku2Uye7NbETVuT3JDuVQFRVlMmdsIA+emZm1G0YIBR1TPXux1gTQ6mI
 34h9oM4izXFRLTKlyeBmYcFCfpmt374RNZCGAqHznTcan8g5vS/wtZOFL
 uvBhdXxZJ5DtOuSg6IBAT/OUx7eRq84Q/SMzVTSJmt6bjoSZXblOhZU+q Q==;
X-CSE-ConnectionGUID: JwGg7U7USMumqxux0uIMBQ==
X-CSE-MsgGUID: cMmCYf44SIuNFGtdhZW00g==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="82809909"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="82809909"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 03:42:37 -0700
X-CSE-ConnectionGUID: 1kayPC+qR+aFQ1FCXuUbQQ==
X-CSE-MsgGUID: rfKgD1COQjeQE/e7HwMlMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="248402043"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 03:42:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 03:42:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 03:42:36 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.42) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 03:42:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wMXXiBt9cXIe/PyBOmn4XuxkyJHH7qJeyIZVPFK0aNJ92Ld9693HpR0nkSePlsd90X0MXQ2VSj5qWd4UX8TI7BRvGjDAtRsyoRdV688rqtD+PTWjDXeJ0arNoWucfk31RKmjrAejppQ91O3JhQSSHfv/MBf0FK2f39yyx/edX8FF05Kg0hTFcN3N1qDzBokz8JdMBfenS2DjW82tyhPRZym6eRm6lhUyNR+gykACDQ3eGOJf8cBrRzSvtm1ZOj5oi//qFxAMWS07mt9U79zUI1jdD10Kl2VU+oqkEYzNsCdJfVv6olwd++L2qp56nlF8z7b4FwZ3eydEQmxw25ixxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YY0aCY4j/5fW4zCbADkvKvtXk9oFNEDWFKUCh+RTjcw=;
 b=mtT2wdUOk2x/c8TcoTy3aG1MErsweoGGS2y6usubiNAPJ4e9LZL5JwylF29YqSMgSKnJL0TJdjquXOCCj7PuECq/ks667vBW9xU+1BmAniWhNZ3ZJyW4/Rv26u6iy0rm+Ou9ckP3vbtHMEfKHQrA5M9E4b+v8EpMjkqXkcqgCT1iyHQjEnGkJfx6RIhBaUN6944I60tw2KIwwgrxYaLp4XEwaUqh+/CitRqtuqgEWDHikze6vRhDn6bmyoMjt4+owiwkOsweWisuzKssuRuLp/Ete5gjIFlxbukMems5EOMcbQssrHhqUyAbOjnVwldyau9zW9JWOA3dyxYuef4EAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY2PR11MB921967.namprd11.prod.outlook.com (2603:10b6:930:118::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Thu, 18 Jun
 2026 10:42:33 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 10:42:32 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/psr: Perform Panel Replay exit/activate on
 errors reported by sink
Thread-Topic: [PATCH 3/3] drm/i915/psr: Perform Panel Replay exit/activate on
 errors reported by sink
Thread-Index: AQHc+i0ANFvtDwAUBEeKbrldsBwAprZEJ+0g
Date: Thu, 18 Jun 2026 10:42:32 +0000
Message-ID: <DS0PR11MB804959B8D506E849C599834AF9E32@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260612053249.246878-1-jouni.hogander@intel.com>
 <20260612053249.246878-4-jouni.hogander@intel.com>
In-Reply-To: <20260612053249.246878-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY2PR11MB921967:EE_
x-ms-office365-filtering-correlation-id: ba2325e7-2775-413a-a438-08decd264d32
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|4143699003|56012099006|11063799006|6133799003|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: b1hO5TRXaZ5TQsn6cpJ6E+VInmqUinR+EsuOWSi5BweknhfAOwD7pce4ug+9SBfK5aCqT5IXIwR7DVYS0+1H//XEN/Bw28BMBnz0TcXJP7F2K1AesLFtetaiiyCXsuxyL746mxdAyLy7ulKHdwXRPCFaGcE6LIJw/Q82h84M9lbB5rhyDshEXHuNwtdbNVdA5ceuN3vSTzvBaDOKm1PMXe1nT8JhpjctmCg1qrrTnSf1xCouHXlAesPFZMihUE+/y6fI5Y1NMpXPxeW4kK215wNdr4tYEGLxu7pQqJN75nRHrmlIp3sER/HzR6vS53RE7EJtRSsrbPEotPHBdDabbQW6B5sM0UBY2Mfrzk8BWfesjq74bYB17ZNpteT448hHGwhkCq9jkJgl773e/zne2zfvX20GMe5i0dEtqe4VGwnzZvhwpmGZzh7gHQcl873aL8fim03ge0irsvDiPnXtYiG2+RTWwTHpyTPjeL35v28/VTIceHSgvRDtVbbglPIUlkb05ttW199eBeYQtqLpRjflUEbG4lGBRkaVwppLmkCSRc8aAI4m3wsYgonyDAe81sH/2kJk0/dNrazz/URiVeNULTyuDR3ew6ibrDm5hNqsim9oqz0+DXwn9zAspCTNmnnq/ek1QHyE2WXxNzbXg0XDPlUinlOeSOHOa3QuP3u710juR9p/ubM5mKuIRNNjPGNcxtr9CqlJd3xTj92wAUETzmP41sbiOi8jSMDB0ufzPYez8wlf2qW2ViRPFYqC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(4143699003)(56012099006)(11063799006)(6133799003)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGhzWnlsczRtK1JFNkd4MGpkUlkxVWZpZnM4bjJqVW9sVUpmVWJOa0xBSjh1?=
 =?utf-8?B?cEowS3VXbVYvTGJ4WTMyNklpMkp0d3o4eVhOUGcvV3NPYnBELytKK0t2OWRa?=
 =?utf-8?B?NjlFSTQ4M0RGVmlEQ2VpbWV5WUplOEdGZ3JMck04MVZUOXgwYkExUDBDdCsw?=
 =?utf-8?B?SnM1NWYycGZVQ1ZxMmxXcTBPZFNWeFl6VkRKMk9QN3hPT3ROOXY0VGdhdHBZ?=
 =?utf-8?B?eXhucTkvblpMeVhpejMwUmNLbVp5dkQ3QSswb0RNclZPUmJ0NjZEVStwbERG?=
 =?utf-8?B?Q3ZiRGtYamNrKy93OTJKSUFiVE1BY0FDOEo2UDdLVXZibjRGQ0pha1RDai9S?=
 =?utf-8?B?aFBkeWg4TmlRZjN1cC9rQ1lrRzdMK3E4MEJRbnkwVWJqL04zOU9tWjVBVVRT?=
 =?utf-8?B?aU5EOWZvT0hzeHhmeGJLblJ5UmNESGVUMm5OQnZZdDVUUzVUaGZWaFNkd0or?=
 =?utf-8?B?bnhwOGpySDliVEdBTU1iV3RwSDc4ZnowSmxzSU9pOUxBSDZ0NVh5MTVrVFhN?=
 =?utf-8?B?bFM1NEx6dTUyaUxmZ1J6QjZOVW9mUWVhQnY5aTJ1MkZnZ2JKeElobWFSMGFT?=
 =?utf-8?B?aHRza3FkUFNReWNqK3ExbktHUU1RUTA2WVRqbmhiQVRmeEpUamJhOWJKK1o4?=
 =?utf-8?B?U0ZpUFdydUZsQ2dBVVVZbjlHbmkyaktxalVrUVpuQTczRkFPbTM2djRhd2hM?=
 =?utf-8?B?Mnh1K3FyLzkwS1oreUNxOWNqZzlXYnNlM3Y0bTJQZnZTY2hudXAzYlI5YVBW?=
 =?utf-8?B?c2x3VGorVGJnRVg4MTBvQlA2RkRUK293THRQeWJBZ3drUWt1c290aVpGWkhR?=
 =?utf-8?B?VTRtTlBrL3YrMEtBaU5hTTZoSC9QTVJIM1B2THl3WG9yUFNDMjQ5aVh5Y0po?=
 =?utf-8?B?ZEhBSXBZUi9FZUpRWmNhOGVkdVptUXRoYXNHbVhwYXlYWm5VbVdkbkdGOXM2?=
 =?utf-8?B?MEx5REU1ZlRxVWJVL3JFaFUxSGZOT3FzSGwreFdsTmJhZm9DM3dDRkpNek0w?=
 =?utf-8?B?WGdTaU5IQ1lqdk44cVh1d1JoUlZva2hEN1V6NFVobXF3Rzcya0RQMXJiR0h5?=
 =?utf-8?B?MHVzRFpEOFp6THMzS082KzZ6ditoQjB1UjNIV1BXdkZzVjk2bHRxZmJ4aW5X?=
 =?utf-8?B?MVVwaWRBQzNBcGY1T3pOR0drNmYzMWx3eENZVGs0dkxtc3VlN3R5QWtGQ3hm?=
 =?utf-8?B?WU5rd3U5TWJENnUrdDlQRjZRQjVweVZIeU9LTE1oZWI1R0VaTWNpdk9PMVVI?=
 =?utf-8?B?bGtGUVhJVGU2Ympkd0tla2ZTMXBRcDAzYWo5YVpMU2FaUThtd3hxTWVabUdI?=
 =?utf-8?B?c3BHV1RrRkZ1eHIzNlRMOVVmbXVwblF6amtDdkdyREVtV0RBN21KbEtxNDBU?=
 =?utf-8?B?dlVKMUZRZnRNWHRlRUdHOXdCWmp6cUpMMWtJR3NKREV5NmdCR1UxRGdnSjdW?=
 =?utf-8?B?ekM3b0lYYjNNeUR0RHJObnl2RWNSSmttWDBRNS9ZSkZ2ZWMwZGd1dGZsRUNr?=
 =?utf-8?B?czB6RzV0WDBsYVI1SmdXYzZ1MmdJNTFGZVI4TjNiTjNjQThHRkRCSys2WEdt?=
 =?utf-8?B?WkUxVlB3ak9CTEVGU3B6dFdKR3pBVTZhbXJUUWJjemNBaFQxVytlbzdpWE1F?=
 =?utf-8?B?cGhJZWorVDdKWkM0NW9oRXRxdTFYcjBFZGIxM2Z3SHpyQjNWSmJPSk9ES2hV?=
 =?utf-8?B?Z0hQNkR5ZjQxSXRjUDlmd3dxK0Nwa24rTzhjQy92cXNFY3ZvOWdmSkdWSDkv?=
 =?utf-8?B?YjAvaVlsOHhLUmhXL0JaTncrZG9zdjU0RXhzZzRoN3hSUFlxemZhaVN2M3lE?=
 =?utf-8?B?WVJGa1ovMGQ1cElFMWYzaEMxUXhjNm9EZFRYbkdkN0taSGVZaDdYYnVLNFdW?=
 =?utf-8?B?dk9aRDlpVi9LVHMxUFNPOHRFVkxVTVhzbkZEVjdKeGRWYjJHdnJOTE1sQUpJ?=
 =?utf-8?B?aXlEcUVoejZoNlJPMnZ1VDJ6cXNqTi9HcWtGaERnT3M0MFI0THpGUTJSNmNL?=
 =?utf-8?B?Mk1CTE4zRlQrL2JmMXJyWE5aQ2pJWS9KYS9JT21xb3k4ZUovano1eHlpVWRv?=
 =?utf-8?B?VitBVFRMT1Y0WDdiaGFWREtHbEg5d1NXSi9ZWEIrT0ZYSmQzWmM4RWZRVDRj?=
 =?utf-8?B?SE1iZktXdm51VWJjbFVTMDhtZzZnUjd3b0VoUDkyWU4yamthTDlnZm1VcVkr?=
 =?utf-8?B?aEs3L0g0TFFVNU1CcmJtVXY3U054dkp5OUJSY2NPOWIzS0FVWlhUK2wxcXdK?=
 =?utf-8?B?M0tqRXcrMTVXaWJTM0xZdm1OdWxhdC82V1kvZEhlS1JWT052S1pnSUVraWRN?=
 =?utf-8?B?MkFhVUt2TUs3bmJuaG9hVTVXTnNxNFJxN1l0RWN3cnUwcFlZbjFlUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: R6oy7ypSKD4S2YjGHO8KUnQ0vv544JJJOOfqpknSabltG6I5cZKoZbPTppH+iGUxO6A+1mOKndHdRJECVEr5GU0Z6CMk/qVikp4X81j+GW02/IUvDPzW0LL61ejNP5XbeQpuw23JFuKYvNY1YBTLpKgCZS5O3Mu4Kurx7hyU/8tITSBGpnBOiXvlbR8grLUORbCG6ChFpqeu8x8YQl+jJGaXEgxPYyJI42mVHLzPHV7X0qexYFbPB731aHsAEAaTr3Ukpvgi7OtmxQB7YPtoPu/LJ9f+1DSXgN7g8NdUNq54Wkc29kOpfhmFlTiJvC/+Zy0a4gRXm6YldxnGtxsE2g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba2325e7-2775-413a-a438-08decd264d32
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 10:42:32.0525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DgoVmsq8ee8FLDF01oA6lZoJXH1QVmI5fq36NNf6EMs1Ra5pbDc2aoRNF+0oeexLUVgrDqzrYl+oOEHbLfCydQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY2PR11MB921967
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EC1BE69F73D

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IEZyaWRheSwgSnVuZSAxMiwgMjAyNiAxMTowMyBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogW1BBVENIIDMvM10gZHJtL2k5MTUvcHNyOiBQZXJmb3JtIFBhbmVsIFJlcGxh
eSBleGl0L2FjdGl2YXRlIG9uDQo+IGVycm9ycyByZXBvcnRlZCBieSBzaW5rDQo+IA0KPiBEUDIu
MSBzcGVjaWZpY2F0aW9uIHNheXM6DQo+IA0KPiAiVGhlIERQIFNvdXJjZSBkZXZpY2Ugc2hhbGwg
cmV0cmFuc21pdCBhbiBhY3RpdmUgdmlkZW8gaW1hZ2UgYWZ0ZXINCj4gZGV0ZWN0aW5nIGFueSBQ
UiBlcnJvciBzdGF0dXMgYml0cyBzZXQgaW4gdGhlIFBBTkVMIFJFUExBWSBFUlJPUiBTVEFUVVMN
Cj4gcmVnaXN0ZXIgKERQQ0QgMDIwMjBoKSB1bmxlc3MgdGhlIERQIFNvdXJjZSBkZXZpY2UgaXMg
YWxyZWFkeSB1cGRhdGluZyBhbg0KPiBlbnRpcmUgYWN0aXZlIHZpZGVvIGltYWdlLiINCj4gDQo+
IEltcGxlbWVudCBQYW5lbCBSZXBsYXkgZXhpdCBhbmQgdGhlbiBhY3RpdmF0aW9uIG9uIGVycm9y
cy4gRXhpdCBpcyBlbmFibGluZw0KPiBhY3RpdmUgdmlkZW8gc3RyZWFtIGFuZCBhY3RpdmF0aW9u
IGlzIHJlLXRyaWdnZXJpbmcgUFIgZW50cnkgYW5kIHNpbmsNCj4gY2FwdHVyaW5nIGZ1bGwgZnJh
bWUgaW50byBpdHMgcmVtb3RlIGZyYW1lIGJ1ZmZlciAoUkZCKS4gQWxzbyByZW1vdmUNCj4gZGlz
YWJsaW5nIFBhbmVsIFJlcGxheSBhbmQgc2V0dGluZyBwc3ItPnNpbmtfbm90X3JlbGlhYmxlIGZv
ciBQYW5lbCBSZXBsYXkuDQoNCkp1c3QgYSB0aG91Z2h0Og0KVGhvdWdoIGl0IGlzIG5vdCB2ZXJ5
IGNsZWFyIGZyb20gc3BlYyBpZiB3ZSBnZXQgdGhlIGVycm9yIG11bHRpcGxlIHRpbWVzIHNob3Vs
ZCB3ZSBrZWVwIHRyeWluZyBmb3IgcmVhY3RpdmF0aW9uDQpvciBjYW4gd2UgaW50cm9kdWNlIHNv
bWUgZXJyb3ItY291bnQtdGhyZXNob2xkIGFuZCBhZnRlciB0aGF0IG1hcmsgc2lua19ub3RfcmVs
aWFibGUgYXMgdHJ1ZS4NCkdvb2QgdG8ga25vdyB5b3VyIHZpZXcgb24gdGhpcy4NCg0KUmVnYXJk
cywNCkFuaW1lc2gNCiAgIA0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyB8IDExICsrKysrLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGE4NDhjNTdlNGNlNWQuLmY1MTUzOWVk
MWU5MzkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBAQCAtMzkwMyw3ICszOTAzLDYgQEAgc3RhdGljIHZvaWQgcHNyX2NhcGFiaWxpdHlfY2hhbmdl
ZF9jaGVjayhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgc3RhdGljIHZvaWQgX3Bh
bmVsX3JlcGxheV9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0K
PiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRl
bF9kcCk7DQo+IC0Jc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+ICAJ
aW50IHJldDsNCj4gIAl1OCBlcnJvcl9zdGF0dXM7DQo+ICAJY29uc3QgdTggZXJyb3JzID0gRFBf
UEFORUxfUkVQTEFZX0xJTktfQ1JDX0VSUk9SIHwNCj4gQEAgLTM5MTUsMTEgKzM5MTQsNiBAQCBz
dGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X3Nob3J0X3B1bHNlKHN0cnVjdA0KPiBpbnRlbF9kcCAq
aW50ZWxfZHApDQo+ICAJaWYgKHJldCA8IDApDQo+ICAJCXJldHVybjsNCj4gDQo+IC0JaWYgKGVy
cm9yX3N0YXR1cyAmIGVycm9ycykgew0KPiAtCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50
ZWxfZHApOw0KPiAtCQlwc3ItPnNpbmtfbm90X3JlbGlhYmxlID0gdHJ1ZTsNCj4gLQl9DQo+IC0N
Cj4gIAlpZiAoZXJyb3Jfc3RhdHVzICYgRFBfUEFORUxfUkVQTEFZX1JGQl9TVE9SQUdFX0VSUk9S
KQ0KPiAgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICAJCQkgICAgIlBhbmVsIFJlcGxh
eSBSRkIgc3RvcmFnZSBlcnJvclxuIik7DQo+IEBAIC0zOTM4LDYgKzM5MzIsMTEgQEAgc3RhdGlj
IHZvaWQgX3BhbmVsX3JlcGxheV9zaG9ydF9wdWxzZShzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVs
X2RwKQ0KPiAgCS8qIGNsZWFyIHN0YXR1cyByZWdpc3RlciAqLw0KPiAgCWRybV9kcF9kcGNkX3dy
aXRlX2J5dGUoJmludGVsX2RwLT5hdXgsDQo+IERQX1BBTkVMX1JFUExBWV9FUlJPUl9TVEFUVVMs
DQo+ICAJCQkgICAgICAgZXJyb3Jfc3RhdHVzKTsNCj4gKw0KPiArCWlmIChlcnJvcl9zdGF0dXMg
JiBlcnJvcnMpIHsNCj4gKwkJaW50ZWxfcHNyX2V4aXQoaW50ZWxfZHApOw0KPiArCQlxdWV1ZV93
b3JrKGRpc3BsYXktPndxLnVub3JkZXJlZCwgJmludGVsX2RwLT5wc3Iud29yayk7DQo+ICsJfQ0K
PiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gLS0NCj4gMi40My4wDQoNCg==

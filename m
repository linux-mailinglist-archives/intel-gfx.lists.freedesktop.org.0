Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09006B1E459
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 10:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0376610E8D4;
	Fri,  8 Aug 2025 08:26:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KAidGXTf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A1810E8D4;
 Fri,  8 Aug 2025 08:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754641560; x=1786177560;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6LF5uqYFJUgWytP5h7zzQKxxv8BMsAmWPoaQvAWOpzc=;
 b=KAidGXTfMN5EJooL7pXwfJKOAvZ7v8sAAeqVDxlVs1uXaoHgRi90ksvJ
 E9C7HocB69DErWPYap89vg3VLhdUVM1al+6rnpSOfByzY2Hkw1k9XwpZq
 8ESrUxxRrp0cO9UT5EMCFlmJvchwZgS89QthzAQRIjIDgoGHFPpHWscle
 PkBTDT/tOiYDFSwVRi2SIjJ6v+p+JLooPb51s2rWZxwFiuYpmyK9g0RQa
 KDd6CR059AvR/L9//Fc43vdzmrgV9/l+Dx0jEcZjy6GCw4n/9skpPhCzz
 7R1RY2FucvSK9KGhbmnxAkQZtzjueG2MNwPNsjbgTtpGABJJKavEipUA+ A==;
X-CSE-ConnectionGUID: bDMsgiWCQK2ChckLBXDBTw==
X-CSE-MsgGUID: sTGi3TsJQQGxB3Vl3MkrfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="59601717"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="59601717"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:26:00 -0700
X-CSE-ConnectionGUID: YP2SlfWtRxirPxNSFF3F7A==
X-CSE-MsgGUID: wP8zqLf9SPeaKszPNHX/uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="196104882"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:25:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 01:25:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 01:25:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.47)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 01:25:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=auk2qVY2BLB7mvStF8ELCY9/83uT95B+kXMkkRmWFrLZa+H1oIufL8MqYTGVKlsahVp+WCAunWoQtsNpOdsi1tay1kFtw3mHu1Dtux6uxveckz2pgfauqGXuaGDdksXNzBYxpg8+yD9GuH0jxiuUslA/Y6SylUZyOsNIYkq95hJ4+tIwl/YrpLKa1rOb9DiCBCDmyy1w5qwrKBvJzUpDJY7xY3/bWCzyrosRmDEhJkb//I2IBREm4EL8U3qHGne3vbEsC+hZ60A9VkYYspG5wNU8C46s0KOtGKLPIdhOQ0YRodhKTQTEB3DLB0zrrbV4m5rmWslmFmZSQD3qivc1BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6LF5uqYFJUgWytP5h7zzQKxxv8BMsAmWPoaQvAWOpzc=;
 b=ESU8bm2Nxg7PouJVJ7XlMDKoLBuTfbfT8o9RzgmvYUr0Y5fQD6uYtXj2sRVpkIFVpqtuPXf2oH/Jl7iyKj9oNkyQpr1vrVrKIlSx5/+CXwqLMF+t8C+lmbY5ojTbiw2Kxkcirxfn8xTjFcsf3fT1zPopp4hkl6zpCh1/L3x4BC4Hl1cDUV7eWRcRwzX0VqOIT8ZMBTarOWGomtph1m0T7PVITG/5rq82u6CfxlsJeITuSHgdkrz4yFjlyZDa3dBv1R83pjtJPQP6PV7kDahP6pJs+8PVMBAOeouKN4ZkOi1ckovkgX7jGrWRc0xDtIGwi35T0Zx8sbbLVKxkRvwz3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MN2PR11MB4694.namprd11.prod.outlook.com
 (2603:10b6:208:266::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Fri, 8 Aug
 2025 08:25:56 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 08:25:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 16/19] drm/i915/tc: Pass intel_tc_port to internal lane
 mask/count helpers
Thread-Topic: [PATCH 16/19] drm/i915/tc: Pass intel_tc_port to internal lane
 mask/count helpers
Thread-Index: AQHcBd1pwpLz6ZQvp0SDX6xMj6aY9LRYcEpw
Date: Fri, 8 Aug 2025 08:25:55 +0000
Message-ID: <DS4PPF69154114F79473E1632DE4ABD8AFDEF2FA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-17-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-17-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MN2PR11MB4694:EE_
x-ms-office365-filtering-correlation-id: 8d13ecd2-2404-40f1-dd51-08ddd6553237
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?RWN3VVBqckNpOS9sNEdhK3JoMmh0T21TUFVpN3BBRnRrbUVXeElXV2g4b1Vi?=
 =?utf-8?B?TGFxeFgwT3BqUUVXbEV6SHQ2ZklZZXZLcWExcVFsOGNqUUdkV2Y1Nk0zWHY5?=
 =?utf-8?B?N1lRM3QwcitLUzhlb3ZrT3AxWVRoTFlrQ2F1ZXN1cU1JSXZIYmVuZWhvQ0xh?=
 =?utf-8?B?NDhQa3JFWjk3S2EzU1VMWWVwTXhwV2U5aWRYdktLanhaell5ZTlSNHRsaU5O?=
 =?utf-8?B?Y2JaU3l3M21lb1FhY3czWG14WDQwODVOTW1kaTZBajF6SmlOUjdXSzNMWGx4?=
 =?utf-8?B?VEI1M2dBYXBrMCtNbHVjbnNIRTBUTWRNTHpybUpHb0J6eklwVDEycWQycGtJ?=
 =?utf-8?B?T0xCZlhCNGptdXkxQzhsN0xtQzJSb0JqOHRUczJFVGRXQ3VNSWY3MWcrUUFD?=
 =?utf-8?B?Mm0veDRVVXY2cks4NGtQMTI0OGgyWGU1R2t4NStVaCtvUnFMSTI2SlVxOGdQ?=
 =?utf-8?B?d3lEeHJ6eWE5cjJqenU2NEh3Rk1mcnFLSjRIQVpJU3VhTFFSRVZhQWY3eHRQ?=
 =?utf-8?B?ZVZrNW1xOGd6YVVZRUI1V0pPcEc0TExneVNmNDNvRGpxb3kwa0pPVmcyd1Er?=
 =?utf-8?B?TU1udXl3a3c5T25VN3hneFhibXpJT3d4U0U0Umlyc2ZZcHhMM2sxUDVsd2d2?=
 =?utf-8?B?clhpYjFvbnpJL3Zud2lmZXhLVXdMUEk3bFoza0xwcEZqQXFXZnhZN3BXd0d5?=
 =?utf-8?B?QWtKclNCMEtwc1Q0T243OFJOTzQ0ODlVTDFmOHUvcTJsNTBKdFhlU2xqdmIy?=
 =?utf-8?B?UnUxRXR5SUpWeGc0NVVuNDE4RHJ2aG91bDltV1FHUStzSldNeXUvcUptbmhx?=
 =?utf-8?B?M3htaG5Cb2ZFVTNHY1RDRmZUeC9WMTFoZGtwVmVOM1I1cUR3aThkRllsTlBt?=
 =?utf-8?B?QVpmd0phempWTzJPUm1hMndRVy9kQmhuREE3bEx6TFBGbmRTdDVGRDI3T0Q4?=
 =?utf-8?B?Rzg0MkJBQ2VKdFFHWjBlWU1HUjRUVVlZU3lqbE41MTFDK24yL2lvVzhvejdV?=
 =?utf-8?B?OGU5M0UyTG5rWk45YmIyeUFySUFJRyswRWMxZXh6UTd1dDNpSkh6RlVVcG9u?=
 =?utf-8?B?VHN4VitXaUlaUHVKM2dpeGl4OUlETllmTGpHUmlRWmxIL0JaY0doYmhuVDd3?=
 =?utf-8?B?dGxOVys2L2piY0FMMWZMNkhMRDB6R3dFc3dyUk9uYTVkSzYxOGQ0QVRWZlhN?=
 =?utf-8?B?UlMxaUdxdDVMYVNLWnJXTHlvYi95UFVCRjRqTmkvcTBYeGJteTcyZGRjKzlH?=
 =?utf-8?B?RHJKTWZkeHF4SVpwNEFHRktvdjQyRHdKczByS0tuT0c2cE1QS2FZdjdDSTRs?=
 =?utf-8?B?U09qWkl0b2RkV2xDYXBDanpPYlJIbEJsM1RTOVM5WUh6alJ2Ni9DYTd3bGpB?=
 =?utf-8?B?QWFka0M4SmRPRkJFS0hkakZDTzJ6NWNGZ04rNmtlNnJrZm9ZQzgxTjcydy9H?=
 =?utf-8?B?cDhJMkxpcEpPbWZEU0RMdDgrTkk1N20wYjBNdnVGelFCZVJ1bksraXZtNmw4?=
 =?utf-8?B?akhoWXl5UVFiUjJPeXQrMkZ2Rm91UVdXR1EwSWZRRVg0NUN3WXNFR1dUZVUy?=
 =?utf-8?B?dHBGRU9HMEQxTmdEWTNONUtUaUVVYi9WTHY2QWNod2NLY1FpTFNOQVB5dDFj?=
 =?utf-8?B?UWhvdzk2YXMrUUdGalo5SkVQMytReE9DZC9CS0JqeWphb0xxZkRoQmpXVWxM?=
 =?utf-8?B?SURjcVpNYnhJemxoWlNuejBqaGtYQzRuUUc2SWlpSW1TY1pWTktmTXdlTGg3?=
 =?utf-8?B?OUxCQ2xCaVZBdXliM2ZJUXJpVXRLUkpRUjBJR2JLNmFUOEhyTUxMNnZzSDZw?=
 =?utf-8?B?eGZ5cGIrTHJJWHNPTVpPVmpoWUNMbnBLWUZqSWJKZTNDN3JTREpjaUZ2OC9h?=
 =?utf-8?B?cDNzY05tYmthMXU3NlZIMm9JZTdLdjg2OUNVRlVyVG1OeDZCcG9GUEdoU2dD?=
 =?utf-8?B?RXVPWUsxU0RXNjByVWlTQ21RZCtnd3Jzd1N0ZG4xcHRBWXFzcSs3ZlNHaVox?=
 =?utf-8?B?Z2cwSmwydTdRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NHpubXFiK3lQZ0dZSHZJVU41UUVyTXJJaXhiNHJwT1BDN1dFcWxuU0IwRnV3?=
 =?utf-8?B?alhRdEg1blhMM1VRaFB6eG9neE42UWFZcnJpYm5xTlhkN1FvTDhkTTI0TzFI?=
 =?utf-8?B?bnI3dU1IcW5EK2RsTVVXT2pTV25wR21OR0huY3E0TkZQeS9pQUlnUlhXeFpT?=
 =?utf-8?B?R1M3aHg4OGY1cVptUFBQblNvOGU5bVhUUUVYeVpmL0Q0ZUdXVmFta2xJSktS?=
 =?utf-8?B?b2RGaUk1SmxkTyt1R0QxVHJUV3NEQ2gzRGowekFsS1I2ZE5TSTRrYTZoSEUy?=
 =?utf-8?B?aFljaUdLaDFYeXQvb2dadU9jd2d4Vnl6cTBVTjJ2RkZ3d0UxNTZZaVhMeWxz?=
 =?utf-8?B?QzE3VDdiZ1doTTE4Zkt1R2tOQUpJYVRVbDcyWjlVb28ySjZMemlOZ2JFdEtY?=
 =?utf-8?B?a0V1MEQ2d3BBUTlpc1R5cWlHUnpZdHllVFk0QW52dkdvZlhnUTVuTDZucEVi?=
 =?utf-8?B?a1kwaGFiMXoxWVc2UnlRbXYvc2c4Tm51Nzl4RkJmL1VOdFFXZHhmdnZTSmR2?=
 =?utf-8?B?dGd5eHVUeHRPWXVhVFlFSHBCT0pvWktIcEorbEY5eHhjMndrQndOUExLZi9W?=
 =?utf-8?B?bVZpd3pGZXZIOTM5WlhKZVVxYnozOFdhZjR2N2tCeHlnTEROOEpyWUJ0WkZj?=
 =?utf-8?B?LzNrSW1vbEpsYUF1MTJhTzZZUzRlbHVjL3d4dWI0QU9RUExRTStwWXpldmNE?=
 =?utf-8?B?VkpQeHpoZHIrRHVVZG52NWVNTDB3RmlqcFFiRnVxMXFqYWtiL3NnRURVUmRO?=
 =?utf-8?B?d0dxYm15RElScmFlSlFIZWFwNWRnT2VCSHFLbHA2T2VKSlJrUFozSWxmR0Nk?=
 =?utf-8?B?S3NCWm5kM0hDajBCQ2xiSGFCRXZpbDBNYXFQQytTckh6dVNPZHVQNGVtS0NP?=
 =?utf-8?B?RFpiRk5xUmN0VTYrVzlqSWpPM1FERTN5TEJlOU5aQytWVlhmYVVBRGtIYlpU?=
 =?utf-8?B?N2x5TTFlSFJpb0lRQTMwYjN2ZkI1a3kvOHlqd2RXcHdmTFNCWE5pUENDM05J?=
 =?utf-8?B?WUJaUkN1VVRFemhuL1VyT0d0YmhwQ2d3amsyWnh2QWFYd2MyU0I0NStWa3dY?=
 =?utf-8?B?ODJkRS92SkRPL1VXMWZvTU5UWDRJYkZzbXQreEhFSiswR21HTStIbWxLcmxv?=
 =?utf-8?B?cUNOb3QvTHhLYVhJRW9sRmxLMVFJNjQ1MWNrZVZZOUo5U1pBSUU1VVg5T2Na?=
 =?utf-8?B?akxxeHplamJYZnRSQXhGQ2hYbThyc093NnJHS2lDc0hqaldLdDdrWDI0MDNP?=
 =?utf-8?B?U2hOY0JPY1FlRW5zdjZCcTV2OFE5WDdmd1pBTVdvNGRPQmNCUHlMbFJVbWNT?=
 =?utf-8?B?NitnOGpGcFhydW5pdXl6TTFMTGlKM1cwZ3VlZDBBMWhHY3NZSUVPL3ljcEtG?=
 =?utf-8?B?VldvbnZsblZnN2Fhd0RaR3FWSDJYZ1lJeUdkcWtyVGh5MlBvRm94aHEzL2pX?=
 =?utf-8?B?UUQ5TkFxcFI3L292VnJIc2tmMnFkcUZyTytPQ0Y5N0J1UzhCQ3VpREwrYkE2?=
 =?utf-8?B?cHNEK2ZVb3pVWXhFdTg5QUhBQnhTUW9kVUNKamtXSmk4bXB1cDh3Q0RSbEVG?=
 =?utf-8?B?NnBGb0EwV0JYVC93Y29TN3NpL0djM0lHekJ1cjU0eHhhMFdKSmRMQnltRnBV?=
 =?utf-8?B?RloyTEVMS3JEd3dIZE5IU0pQUVF4MDV5MDA4d09wZHpHVzFxUFZSU2IwNWZI?=
 =?utf-8?B?Sit2bXhyL2tDNnBwcXZjRjJ0MUNwRDBNbkVjalJNU1JCc0lkTngrM0NWNkJi?=
 =?utf-8?B?L3RBaHNQQlVXNHphSy9qTVlXZjkvemd6RjMwNWcwS2JUR09aQkswTjlDTmRo?=
 =?utf-8?B?V0hSQ1dyWm93dVBnVW0xZUFJazN0QjdQajA3d0wvMmUyOU9xMkV0U2h3S3BS?=
 =?utf-8?B?cS83L25RUkNaSVhjNnZMOVk3ZUNhQysrTmVtSG9aU240ajdLRW5vbnVZWm9Y?=
 =?utf-8?B?UldSeURESmdyQWtSNDNLdldoWjlSWjExdzFtQ2s2M3JHWFJXaVc0VXV0VnJp?=
 =?utf-8?B?Sk1PUWtsWFFWeENiTnFnenp3UWFuOWlhbklrTGR3dTZoUzgwTUpqV1dvMnFp?=
 =?utf-8?B?MVByVkRFenRHM2g5L2s4WDBpWGhlSGZYS1ZDTHV5dElUOFNhWEJMRWdRR1A0?=
 =?utf-8?Q?RCW1Go8zbq1646oOjem+Rf4+m?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d13ecd2-2404-40f1-dd51-08ddd6553237
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 08:25:55.9425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oPLv2Ya1EQeYz5+0XELfnWzO/CYUd/eKvxHcNwXs7uviiTDo2SmXc1kRrk0DV1o3p5rH3lTHJG17q9CcIy0t7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4694
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCA1IEF1Z3VzdCAyMDI1IDEwLjM3DQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3Vi
amVjdDogW1BBVENIIDE2LzE5XSBkcm0vaTkxNS90YzogUGFzcyBpbnRlbF90Y19wb3J0IHRvIGlu
dGVybmFsIGxhbmUgbWFzay9jb3VudCBoZWxwZXJzDQo+IA0KPiBQYXNzIHRoZSBpbnRlbF90Y19w
b3J0IHBvaW50ZXIgaW5zdGVhZCBvZiBpbnRlbF9kaWdpdGFsX3BvcnQgdG8gYWxsIGxhbmUgbWFz
ayBhbmQgY291bnQgcXVlcnkgaGVscGVycyBpbnRlcm5hbCB0byBpbnRlbF90Yy5jLCB0byBhdm9p
ZA0KPiB0aGUgcmVkdW5kYW50IGludGVsX2RpZ2l0YWxfcG9ydCAtPiBpbnRlbF90Y19wb3J0IGNv
bnZlcnNpb25zLg0KPiANCj4gV2hpbGUgYXQgaXQgc2hvcnRlbiB0aGUgZnVuY3Rpb24gbmFtZXMs
IGtlZXBpbmcgdGhlIGludGVsX3RjX3BvcnRfIHByZWZpeCBvbmx5IGZvciBleHBvcnRlZCBmdW5j
dGlvbnMgYW5kIHVzZSB0aGUgbXRsXywgaWNsXyBwcmVmaXhlcw0KPiBtYWtpbmcgaXQgY2xlYXIg
d2hpY2ggcGxhdGZvcm1zIGEgZ2l2ZW4gcXVlcnkgZnVuY3Rpb24gaXMgc3BlY2lmaWMgZm9yLg0K
PiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoN
Cj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDE3ICsrKysrKyst
LS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gaW5k
ZXggNTcxZDMxMWRjMDlkZi4uY2Q0ZjAxNzliOGNjNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBAQCAtMjYwLDEwICsyNjAsOSBAQCBhc3NlcnRfdGNf
cG9ydF9wb3dlcl9lbmFibGVkKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykNCj4gIAkJICAgICFp
bnRlbF9kaXNwbGF5X3Bvd2VyX2lzX2VuYWJsZWQoZGlzcGxheSwgdGNfcG9ydF9wb3dlcl9kb21h
aW4odGMpKSk7ICB9DQo+IA0KPiAtc3RhdGljIHUzMiBpbnRlbF90Y19wb3J0X2dldF9sYW5lX21h
c2soc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICtzdGF0aWMgdTMyIGdl
dF9sYW5lX21hc2soc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKQ0KPiAgew0KPiAtCXN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShkaWdfcG9ydCk7DQo+IC0J
c3RydWN0IGludGVsX3RjX3BvcnQgKnRjID0gdG9fdGNfcG9ydChkaWdfcG9ydCk7DQo+ICsJc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KHRjLT5kaWdfcG9y
dCk7DQo+ICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+ICAJdTMyIGxhbmVfbWFzazsNCj4g
DQo+IEBAIC0zMjIsOSArMzIxLDggQEAgZ2V0X3Bpbl9hc3NpZ25tZW50KHN0cnVjdCBpbnRlbF90
Y19wb3J0ICp0YykNCj4gIAlyZXR1cm4gcGluX2Fzc2lnbm1lbnQ7DQo+ICB9DQo+IA0KPiAtc3Rh
dGljIGludCBtdGxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICtzdGF0aWMgaW50IG10bF9nZXRfbWF4X2xhbmVfY291bnQo
c3RydWN0IGludGVsX3RjX3BvcnQgKnRjKQ0KPiAgew0KPiAtCXN0cnVjdCBpbnRlbF90Y19wb3J0
ICp0YyA9IHRvX3RjX3BvcnQoZGlnX3BvcnQpOw0KPiAgCWVudW0gaW50ZWxfdGNfcGluX2Fzc2ln
bm1lbnQgcGluX2Fzc2lnbm1lbnQ7DQo+IA0KPiAgCXBpbl9hc3NpZ25tZW50ID0gZ2V0X3Bpbl9h
c3NpZ25tZW50KHRjKTsgQEAgLTM0MywxMSArMzQxLDExIEBAIHN0YXRpYyBpbnQgbXRsX3RjX3Bv
cnRfZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KQ0KPiAgCX0NCj4gIH0NCj4gDQo+IC1zdGF0aWMgaW50IGludGVsX3RjX3BvcnRfZ2V0X21h
eF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiArc3Rh
dGljIGludCBpY2xfZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykN
Cj4gIHsNCj4gIAl1MzIgbGFuZV9tYXNrID0gMDsNCj4gDQo+IC0JbGFuZV9tYXNrID0gaW50ZWxf
dGNfcG9ydF9nZXRfbGFuZV9tYXNrKGRpZ19wb3J0KTsNCj4gKwlsYW5lX21hc2sgPSBnZXRfbGFu
ZV9tYXNrKHRjKTsNCj4gDQo+ICAJc3dpdGNoIChsYW5lX21hc2spIHsNCj4gIAlkZWZhdWx0Og0K
PiBAQCAtMzY5LDE1ICszNjcsMTQgQEAgc3RhdGljIGludCBpbnRlbF90Y19wb3J0X2dldF9tYXhf
bGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkgIHN0YXRpYyBp
bnQNCj4gZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykgIHsNCj4g
IAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkodGMtPmRp
Z19wb3J0KTsNCj4gLQlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IHRjLT5k
aWdfcG9ydDsNCj4gDQo+ICAJaWYgKHRjLT5tb2RlICE9IFRDX1BPUlRfRFBfQUxUKQ0KPiAgCQly
ZXR1cm4gNDsNCj4gDQo+ICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQ0KPiAtCQly
ZXR1cm4gbXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KGRpZ19wb3J0KTsNCj4gKwkJcmV0
dXJuIG10bF9nZXRfbWF4X2xhbmVfY291bnQodGMpOw0KPiANCj4gLQlyZXR1cm4gaW50ZWxfdGNf
cG9ydF9nZXRfbWF4X2xhbmVfY291bnQoZGlnX3BvcnQpOw0KPiArCXJldHVybiBpY2xfZ2V0X21h
eF9sYW5lX2NvdW50KHRjKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdm9pZCByZWFkX3Bpbl9jb25m
aWd1cmF0aW9uKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykNCj4gLS0NCj4gMi40OS4xDQoNCg==

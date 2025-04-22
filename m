Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C2CA96091
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 10:08:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D847810E51E;
	Tue, 22 Apr 2025 08:08:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n7BsnYo4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C383710E16B;
 Tue, 22 Apr 2025 08:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745309312; x=1776845312;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DX0azYjaeP/9DRm/lREmdM1FfJ3QpVxLUDnCv6i5QJ8=;
 b=n7BsnYo4BbUh+r4ZaZwTJpdJRtGOa6L80Ab9Us/khZrWJg/y7AR9T/lP
 ZsgknMFekgHw4DAFppL+lq0F6q0+OX2utn2BF1mHSOjlJQXFw6bW3h5JO
 9zxiQrlnUA73fJ75DYjql3ZnYOGTuq8fcbu+pjXICHeKIKZCCEoDUZ3lk
 mgNe6y/Y2hK4Y1G5F2iB2+E/ODp9jUn81Zx6n4B42gWwT8MEYuQolulWP
 URZykCApf2rmwWW8FzB82KQaZZt/5HRgOFgZecdQ/v7X3sI+Tt5PcR0We
 UonpBdoiSoS0f4l0SJmmMYFJgCLLWPmHCzi1EC8u58RdJE10ucrHMZXlW g==;
X-CSE-ConnectionGUID: vmFiqeckReqH+I34AB5Mhg==
X-CSE-MsgGUID: 6sGoed0/RxCPzSChQSsrKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57504756"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="57504756"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 01:08:31 -0700
X-CSE-ConnectionGUID: lZtGOQgSSPSckhaQ3B5ArA==
X-CSE-MsgGUID: tY7lBVOrSA6DVfcy0I4Llg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="169141370"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 01:08:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 01:08:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 01:08:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 01:08:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z5HDtasj1pCGRNPUAdYe3ZPBmJLIx5NVApr1ygtU6GIv3LnVmWyXRiuK2BIQeLepF+Rlx9XbQzyrh0bxy1mvKLhIWNXzsfQBVbCnIDSFomjK1mG91PtY6zrTFEZgvSL17hpqe4qcqnFj4F0/S5agaLykC5nTHCFN0rj8+zNzevLSAq/kCSWTSERkXK/vog3+oBOKKl8gplv8971Dy7OhFPOvMkfCVwBGMp8igDY0ZIErtJDConrwR9UoUVwEdiLXl/0APq5FxDHhk/jqWObNw237WQS7uhPIZSsSZjfGflFQnOVkuNaEPK8xMFJYaB0DrbNIAzG0D+VyECr7qZwAaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DX0azYjaeP/9DRm/lREmdM1FfJ3QpVxLUDnCv6i5QJ8=;
 b=X+1SBKLjG/t4dC44aYn9hz82MtKr1PmfyLdUb5sTfKeXzwVXANLoKNE6tVJVKRRkmK0zzlFL3CIloHFYGWQZZyAdvF5JgWuGNIb78CifxJJVzGkrBX1D2WXpMuns3c4m6Hwtf4s09wnWlZhneQv58sODY7Gu764ITQOyj42/5Czvjm2YXrO0YTccAUKSWgBQEaolJusXo6LwSMMiJSjNG1NiTTsO0PvIlmRV1HBjEzIXREqotdRED7WCF6eo7hp+njCyZBvgJMMwUNF5G/RQaDR0QcRaDKUrbyOxDXdAk3pevn/sBtYD51ilacxxj6zBhtstUGKEn397yk6YaaOMng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY8PR11MB7012.namprd11.prod.outlook.com (2603:10b6:930:54::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.22; Tue, 22 Apr
 2025 08:07:48 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 08:07:47 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v9 10/10] drm/i915/display: Disintegrate sink alpm enable
 from psr with lobf
Thread-Topic: [PATCH v9 10/10] drm/i915/display: Disintegrate sink alpm enable
 from psr with lobf
Thread-Index: AQHbr4BBx6cAvnDI+Empql43MqybHLOn3heAgAd8sNA=
Date: Tue, 22 Apr 2025 08:07:47 +0000
Message-ID: <PH7PR11MB5981CBF179E2433CA931A3ABF9BB2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
 <20250417094123.1662424-11-animesh.manna@intel.com>
 <9cb8a8b06472eb2126fa0ab17f2042f5274118b8.camel@intel.com>
In-Reply-To: <9cb8a8b06472eb2126fa0ab17f2042f5274118b8.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY8PR11MB7012:EE_
x-ms-office365-filtering-correlation-id: 324b447c-baa7-4980-d27c-08dd8174c50c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?RmRlcXdVMjFmMTRmRkxGam1jSmdOMDJlckNMcUpQdTZjZGRLZmZsN0duOGZS?=
 =?utf-8?B?UWE1cUNaZUxuQmcvVmVzbnFaVUhRMStDQnU2WFNGbkx3UVpzS3ZGN2V6Y3ZB?=
 =?utf-8?B?c1NjeG9iaS85WnhNYkpyTi8wMmJMZmplVWZDUEZoV2x4ZHhhVVJsdVpRSG5K?=
 =?utf-8?B?N3FudFNJNVhCWW5yNW1xck9VNlBiTk1DaEJRWjdOdTVpU09hd0pEdW1MZVVU?=
 =?utf-8?B?WGlxMklrT2dhQTd2UnR3RXpEdDV0U3pkTXRXVWpxNSthanRpMFpMT0pQZkhV?=
 =?utf-8?B?MEJEeTJXVDNwcHNUK1g1clpYUVZaSURsd0tpYThIbGNkaXYyUDVtTnhGcy9i?=
 =?utf-8?B?akV1eUdVd2JPRVVhS3hlcUZUOVFYOFR0YTRKOEpSVXRDZ3hvSmdnRDJrL3pm?=
 =?utf-8?B?S3paOW1tanN5UHFtekdLaTlyY3J0YU9FWjMxTmFsTjVnSjFSbGV4YU03SUFl?=
 =?utf-8?B?SG1KdHhTVnk5UEl3Vi9kVHhEbGdSTklVdmM1OXZLYXZyMXdDRmFtOTQ2ajV4?=
 =?utf-8?B?QjZBZkVDdVhwR25NSFkxTE1RSkVIcDl3NWw5eldVam1JWlRxM0hrNGFvNnhP?=
 =?utf-8?B?STlMMDErU09zblBNOUw2N2haMWMrVENLVTRGbC9md2l1dkJna1ZLN0FpWlN6?=
 =?utf-8?B?VzIzcHlsZitVL2VRUTN5cTlXd1B1djE3dE5WVFNvVVJLUXFIbkhJbGdwdExY?=
 =?utf-8?B?QW1jcURWK2Z5Y0RUZXg1dHE1U2MxM1JTdThNMTZEYWgzdSszRzFhTUtyeGI4?=
 =?utf-8?B?eU5GczNuRUZUUGlqZnUyMkdMOEd0bitxb2VDQmdiRis1OWdrMEVadVBQL1k4?=
 =?utf-8?B?VlRTOVJHN0YzbkM5TWFDTXVVYU1kYnJwRG9PNDdkZzQvaHIxR29PMFlkZEFn?=
 =?utf-8?B?a0NiWndPYTViQ1FOd1pmdXU0ZzdoTWlqT3pSeHJmSnF4Z1VteVFjS01RZkVQ?=
 =?utf-8?B?cjdzbThlNWxTSjhKT09UZnljYkcwMXV6SXFEOFFjUVpRVkgrQU4zQit0akUr?=
 =?utf-8?B?UlZZNXovR0VWWUdBSUFIeXozVk5SWXFQb1UxQ3MvRERhQlo4akx2dVRhbFFK?=
 =?utf-8?B?enAwSzI0bmUzT05xN25nR25obUM0MzJQN29TYXZLeWZoKzViOEZCM0V4dW5o?=
 =?utf-8?B?RkFLSnl0dnEzTEJEQUpnSnNXblg4Nms1cnhFa3orakFYVXZscUF2VThyVGFl?=
 =?utf-8?B?cFhiM0lIeHU2VG5lM2grTDErSUdJQW9ZSmFwTUJ3b3BWMDlYWW5lZ28xbVFq?=
 =?utf-8?B?YjNZNnEybGZvNWVHRVJWa0NsZ3hBTlBUcUR2Y2ZnSG1qcjJYZE9QL1Q2d0ow?=
 =?utf-8?B?cDFhZGRZdk1sRnRFZDVvWUh6MGROcnpTdE1NdFExc2xNTW8zenlRdk5yOWx3?=
 =?utf-8?B?WU8rZnNNbWVqL1Y2LzEwNWhvNDZqdE9aOWFjcjVuRmREVytmb0orTlhCcGtB?=
 =?utf-8?B?NnFMMnZtRHFRNXdmQ1hvMmVrNGZXRm9ybzhNenF0MHp6Rm9RZmdaV3o1M2Y1?=
 =?utf-8?B?SEJMb1dyZ3dCamdPRTR4b1kxaUJiTkFneEtha0FqVVhhTkNwY1o0R0JzWGVn?=
 =?utf-8?B?Q0RnTTJqS3gwVHlEbUFucUg3UUphaUdZS2NEb1ltSXgrU0FTY2VSNEdNRjFN?=
 =?utf-8?B?Q3k5K0VheEYvem9xQndGd2d1TFBYcDZIZVpvUFluQkNJTHN2VVV5SCtCZmJD?=
 =?utf-8?B?VUM5UGE4aHYyWElkRk5DUklzT3JyV1VTQ1pmd1IyR2QvMFpyVUYvUUFSTFFB?=
 =?utf-8?B?OHVCOE43RzI3MndXYzhIS0FxSWJyOERVNjdNSCtrWksySCtYQ210bGlLTHRX?=
 =?utf-8?B?dXpySUtjczl1Z2g2NnNxRFZlWUNhMW5YcWV3TFV5VXhCeXVyRGRQRXhNU0to?=
 =?utf-8?B?czFZWk5rbmxUN3VOSnBvNHdyYVZ1Nk5zREkxL243cXJXMkRodlNwTUhQczht?=
 =?utf-8?B?dHVTV1JaMWhUUFVoNHViUFJjN2JmL0xydXpVY0x0LzhCZGZOek8zalN2VCs3?=
 =?utf-8?Q?jt0Xm9CSa9daxwUic6+ebyiQDMxJS0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dzZHcEFtdWFRTzlBKzJZYjFuNDVZNHE1ZEorb1V0d2FVeTVrKzh3RnhodHBQ?=
 =?utf-8?B?cnpVM3NpRUNJVWdyQU1MT2lNbTJTa1ZlMDc1RXJoQXFPTmZIZXhDQjZnYVR5?=
 =?utf-8?B?VitQcG1sdlgxQ1g1SGZnelVmNGRJaDVUaHhhektEbFlRQnVnTzJKQ09qZXFp?=
 =?utf-8?B?bHd1a2RIOUV2TDVwcXJ0RWMvekFPYjFCbTFtQmxvOTJpZWR2SW9mQVdERjZh?=
 =?utf-8?B?anZLRTRZQWJ2QXcxTnczMFBmd1BJNXdzZFpUdUErYjhEUW52WnI2YVFaRjNH?=
 =?utf-8?B?MVpkckNmUnFlakpOalp4N3NDQW9sSENMbWZtdUFOMW4wMElWVVlUNWFEcnFZ?=
 =?utf-8?B?TG5DRENGSlVieVJ4WFQyM0xiTUNqSlpTOWhibWFZd2NicUlmYzNScHpNMWNJ?=
 =?utf-8?B?a1ZUTHpCbzlSSk5iUmVSSHVkQm9mYW1KTFRuNHl6TlJtNHZaVm5JT0R6c1Yw?=
 =?utf-8?B?RlNQSkhxUi83TUhCK1Q4UWpaRjRLV0lEMmZzQ0RVQzhtMktIdjR0N1dhekpk?=
 =?utf-8?B?cU43RzRaK1FKRE5EUVRhOEMwaVA1ZVVDVG1jQkt2Z3NqSHFUbVpJN3FLZkRn?=
 =?utf-8?B?Z3luQmdwY0I1NkRVc28xc2R5Wk1mQ0cybUZzTXFIK3dGeE5YR0lHRGJ3Ump1?=
 =?utf-8?B?YTl5dm1aY3JHb2dJc2RFa1I4SkFaZlpyT3p3OFQybG5OS0QvMFA2dG53ekxm?=
 =?utf-8?B?bjlGMnhwNGJwKzBoL3RUMWpJQ1k4bWZpTVZBQlhSTzVaTkZrNUluZnNnSnpt?=
 =?utf-8?B?U3FzUHVWeXlFdDczZy9CZXRFMFVxRTVLTCsxM3RMS05DSnArWC9SYWVkK2RP?=
 =?utf-8?B?b2UwRmFrYnRkclkvQ3Z3YWZkL3Rza1oyUkR3cG5QMy82d2FVZ01EcHkwa3kv?=
 =?utf-8?B?djBSekNub2RiMHF0eU03VFJnaHVoSlE5SlVNQ2pNb1dDRFZxeUk5cWIwVkpM?=
 =?utf-8?B?clBvSWp0SkFjNjRkVDc5czF3b1hyYWlRbkxvZVRNU1MrcmptaDhuNkpydVpj?=
 =?utf-8?B?ajVsTVBWanNYZituN2VYaWJrTEE1M3BHWmROck1WSmdzbzZvUzI1R21LN0Nx?=
 =?utf-8?B?Q1dBQTRraWhKdlM3SkJiYmIxdHlaZGV5VVNYSDBaUVJvQ2FWdFFUczhBRTF4?=
 =?utf-8?B?QUpOQ0RWWkxzb0xRNkJtNlRwTEFoQVBjc0U2ajhhVm9wS0U5cG96UmFmM2tO?=
 =?utf-8?B?bkdoVG5PdzVGYnRQVUxndWxuT0h1dWtyMm1sM014d1pRTklXZ0dxODYySEV5?=
 =?utf-8?B?eG95UDdISkhOMWptdERTNG1qZ09ObEVvVklSdmh1djBiQmp4OVBQcVhQQ044?=
 =?utf-8?B?SmhaZTZ2S3JnbDU3NGJoNXVYR0FoMlpqNnlFNmJaZVMrSm16Qk9WSkFEd1VN?=
 =?utf-8?B?Sy9iaktja3BDWmcwd0pvYU1wQjduSFZyMEh3a0JqT0NqNlVxV0hMbklFNHgx?=
 =?utf-8?B?VmcwKzcxL3VxQzRZMEwwNk9yTC9hRnllc2dTM3Y3L0hvOU05MzFzQ3dRS2N5?=
 =?utf-8?B?b2NVQU5VVktmQkl0bnBPdHpldHY0dGhOWXRUdlJlQ2JSK1Z3djZOb2d3bTU0?=
 =?utf-8?B?Q1M2V2VncHA5RGJ6SnkzYmhHY1VHZVppNHZVeERvREZ1UU5STE02UG9VNDBj?=
 =?utf-8?B?UFlkbzIwYU0zaGZSeXJkb3hEYUZvSEI2Zjd0WmhUR2NDRHJnRXB3Zit6WG1T?=
 =?utf-8?B?aWJLWG5kL2tQeEdLZVR0Mit4amxuK1ZIWmFvTW5Bc2pZQlRXaTJCWEdxb1NJ?=
 =?utf-8?B?anRvV3c0dElTcWhXMTFVM0RMQzRPTDJXcjlkN3drbkJJY1NjSEZVV21FSXhU?=
 =?utf-8?B?Q1JkY0ZTSUZRSHJRb05ITlhEU0JEM09SdFRWeXZGMmR4SnZpUW9sMXNTMUZs?=
 =?utf-8?B?VjR2YWJ5M2VUMTI1Vno0YTlVcEwybDNPdmRsbmp5VXNjcW9vUWxYcmh6OENQ?=
 =?utf-8?B?dkp1bXJGVHBMVEdjckt6c3VPdHJzRGZ2blM4VUU1NWYzMDk2MFJVQkk4aWE1?=
 =?utf-8?B?dFBSMjNnTmI3NDRqTDdybks2TjBJS01rSTJ6QW8rNXN0T1dQNCtBdUlTSUVx?=
 =?utf-8?B?RVFRQXBhbS9kSUh6OEgrSzl6V0NScUN5V2ZEQi93WTN0V0YxQVQyZHBZR2tT?=
 =?utf-8?Q?NVREppXKZPF4rIXEGtDwEMBoJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 324b447c-baa7-4980-d27c-08dd8174c50c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 08:07:47.8105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iNPak2liWCHUbDcHjx2cOAH7thZgccLbmELVpQu1R4rfNZxjWpyqIrcforpwb62nNTGrNZVckaZzVikzWzifxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7012
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBBcHJpbCAxNywg
MjAyNSA3OjEyIFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IE1hbm5h
LCBBbmltZXNoDQo+IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PjsgQiwgSmVldmFuIDxqZWV2YW4uYkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0gg
djkgMTAvMTBdIGRybS9pOTE1L2Rpc3BsYXk6IERpc2ludGVncmF0ZSBzaW5rIGFscG0NCj4gZW5h
YmxlIGZyb20gcHNyIHdpdGggbG9iZg0KPiANCj4gT24gVGh1LCAyMDI1LTA0LTE3IGF0IDE1OjEx
ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+IE1ha2UgYSBnZW5lcmljIGFscG0gZW5h
YmxlIGZ1bmN0aW9uIGZvciBzaW5rIHdoaWNoIGNhbiBiZSB1c2VkIGZvcg0KPiA+IFBTUjIvUFIv
TG9iZi4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMgfCAyNw0KPiA+ICsrKysrKysrKysrKysrKysrKysrKystDQo+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqAgfCAyMyAtLS0tLS0tLS0t
LS0tLS0tLS0tDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDI0IGRl
bGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2FscG0uYw0KPiA+IGluZGV4IDNkNDQ1OTg4MWU3Yy4uZjRkODY5OTUzMDQ1IDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBAQCAt
NDI5LDYgKzQyOSwyOSBAQCB2b2lkIGludGVsX2FscG1fcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QN
Cj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgCX0NCj4gPiDCoH0NCj4gPg0K
PiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9hbHBtX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsDQo+ID4gKwkJCQnCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+
ID4gKmNydGNfc3RhdGUpDQo+ID4gK3sNCj4gPiArCXU4IHZhbDsNCj4gPiArDQo+ID4gKwkvKg0K
PiA+ICsJICogZURQIFBhbmVsIFJlcGxheSB1c2VzIGFsd2F5cyBBTFBNDQo+ID4gKwkgKiBQU1Iy
IHVzZXMgQUxQTSBidXQgUFNSMSBkb2Vzbid0DQo+ID4gKwkgKi8NCj4gPiArCWlmICghaW50ZWxf
ZHBfaXNfZWRwKGludGVsX2RwKSB8fCAoIWNydGNfc3RhdGUtDQo+ID4gPmhhc19wYW5lbF9yZXBs
YXkgJiYNCj4gPiArCQkJCQnCoMKgICFjcnRjX3N0YXRlLQ0KPiA+ID5oYXNfc2VsX3VwZGF0ZSAm
Jg0KPiA+ICsJCQkJCcKgwqAgIWNydGNfc3RhdGUtPmhhc19sb2JmKSkNCj4gPiArCQlyZXR1cm47
DQo+ID4gKw0KPiA+ICsJdmFsID0gRFBfQUxQTV9FTkFCTEUgfA0KPiBEUF9BTFBNX0xPQ0tfRVJS
T1JfSVJRX0hQRF9FTkFCTEU7DQo+ID4gKw0KPiA+ICsJaWYgKGNydGNfc3RhdGUtPmhhc19wYW5l
bF9yZXBsYXkgfHwgKGNydGNfc3RhdGUtPmhhc19sb2JmICYmDQo+ID4gKw0KPiA+IGludGVsX2Fs
cG1fYXV4X2xlc3Nfd2FrZV9zdXBwb3J0ZWQoaW50ZWxfZHApKSkNCj4gDQo+IEkga25vdyB0aGlz
IGlzIGtpbmQgb2YgbGF0ZSBjb21tZW50LiBJJ20gc29ycnkgZm9yIHRoYXQuIEluc3RlYWQgb2Yg
c3ByZWFkaW5nDQo+IHRoZXNlIHVnbHkgY2hlY2tzIG91dHNpZGUgUFNSIGNvZGUgeW91IGNvdWxk
IGFkZDoNCj4gDQo+IGludGVsX3Bzcl9uZWVkc19hbHBtKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHAsIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKSkNCj4gDQo+
IGludG8gaW50ZWxfcHNyLltjaF0gYW5kIHVzZSBpdCBoZXJlIGFuZCBvdGhlciByZWxldmFudCBw
bGFjZXMgaW4gaW50ZWxfYWxwbS5jLg0KPiBFLmcgbG5sX2FscG1fY29uZmlndXJlOg0KPiANCj4g
aWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjAgfHwgKCFjcnRjX3N0YXRlLT5oYXNfc2VsX3Vw
ZGF0ZSAmJg0KPiAgICAgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpKQ0KPiAJcmV0dXJuOw0K
PiANCj4gdG8NCj4gDQo+IGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwIHx8ICFpbnRlbF9w
c3JfbmVlZHNfYWxwbShpbnRlbF9kcCwNCj4gICAgIGNydGNfc3RhdGUpKSkNCj4gCXJldHVybjsN
Cj4gDQo+IGFuZCBzbyBvbi4gV2hhdCBkbyB5b3UgdGhpbms/DQoNCkFzIHdlIGFyZSB0cnlpbmcg
dG8gZGlzaW50ZWdyYXRlIGFscG0gZnJvbSBwc3IsIGludGVsX3Bzcl9uZWVkc19hbHBtKCkgY2Fu
bm90IGJlIHVzZWQgZm9yIGxvYmYuDQpTbyB3ZSBuZWVkIHR3byBkaWZmZXJlbnQgYXBpIC0gaW50
ZWxfbG9iZl9uZWVkc19hbHBtKCkgYW5kIG9uZSBmb3IgcHNyLg0KRG8geW91IHdhbnQgbWUgdG8g
YWRkIHRoZSBhYm92ZSBvciBzb21ldGhpbmcgYmV0dGVyLiANCg0KUmVnYXJkcywNCkFuaW1lc2gN
Cg0KPiANCj4gQlIsDQo+IA0KPiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4gKwkJdmFsIHw9IERQ
X0FMUE1fTU9ERV9BVVhfTEVTUzsNCj4gPiArDQo+ID4gKwlkcm1fZHBfZHBjZF93cml0ZWIoJmlu
dGVsX2RwLT5hdXgsIERQX1JFQ0VJVkVSX0FMUE1fQ09ORklHLA0KPiA+IHZhbCk7DQo+ID4gK30N
Cj4gPiArDQo+ID4gwqB2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqAJCQkJwqAgc3RydWN0IGludGVsX2NydGMg
KmNydGMpDQo+ID4gwqB7DQo+ID4gQEAgLTQ1Miw4ICs0NzUsMTAgQEAgdm9pZCBpbnRlbF9hbHBt
X3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ID4NCj4gPiDCoAkJaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ID4N
Cj4gPiAtCQlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gPiArCQlpZiAoaW50ZWxf
ZHBfaXNfZWRwKGludGVsX2RwKSkgew0KPiA+ICsJCQlpbnRlbF9hbHBtX2VuYWJsZV9zaW5rKGlu
dGVsX2RwLA0KPiA+IGNydGNfc3RhdGUpOw0KPiA+IMKgCQkJaW50ZWxfYWxwbV9jb25maWd1cmUo
aW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiA+ICsJCX0NCj4gPiDCoAl9DQo+ID4gwqB9DQo+ID4N
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGlu
ZGV4IDQzZWQxNjYwMDdlYi4uNjg5NTJmN2JkZDdjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTc5NCwzMiArNzk0LDkgQEAgc3Rh
dGljIHZvaWQgX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAs
DQo+ID4gwqAJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRU5fQ0ZH
LCB2YWwpOw0KPiA+IMKgfQ0KPiA+DQo+ID4gLXN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVf
c2lua19hbHBtKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gLQkJCQnCoMKgwqDCoMKg
wqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSkNCj4gPiAt
ew0KPiA+IC0JdTggdmFsOw0KPiA+IC0NCj4gPiAtCS8qDQo+ID4gLQkgKiBlRFAgUGFuZWwgUmVw
bGF5IHVzZXMgYWx3YXlzIEFMUE0NCj4gPiAtCSAqIFBTUjIgdXNlcyBBTFBNIGJ1dCBQU1IxIGRv
ZXNuJ3QNCj4gPiAtCSAqLw0KPiA+IC0JaWYgKCFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApIHx8
ICghY3J0Y19zdGF0ZS0NCj4gPiA+aGFzX3BhbmVsX3JlcGxheSAmJg0KPiA+IC0JCQkJCcKgwqAg
IWNydGNfc3RhdGUtDQo+ID4gPmhhc19zZWxfdXBkYXRlKSkNCj4gPiAtCQlyZXR1cm47DQo+ID4g
LQ0KPiA+IC0JdmFsID0gRFBfQUxQTV9FTkFCTEUgfA0KPiBEUF9BTFBNX0xPQ0tfRVJST1JfSVJR
X0hQRF9FTkFCTEU7DQo+ID4gLQ0KPiA+IC0JaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBs
YXkpDQo+ID4gLQkJdmFsIHw9IERQX0FMUE1fTU9ERV9BVVhfTEVTUzsNCj4gPiAtDQo+ID4gLQlk
cm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1JFQ0VJVkVSX0FMUE1fQ09ORklH
LA0KPiA+IHZhbCk7DQo+ID4gLX0NCj4gPiAtDQo+ID4gwqBzdGF0aWMgdm9pZCBpbnRlbF9wc3Jf
ZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoAkJCQnCoCBjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKQ0KPiA+IMKgew0KPiA+
IC0JaW50ZWxfcHNyX2VuYWJsZV9zaW5rX2FscG0oaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiA+
IC0NCj4gPiDCoAljcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID8NCj4gPiDCoAkJX3BhbmVs
X3JlcGxheV9lbmFibGVfc2luayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSkgOg0KPiA+IMKgCQlfcHNy
X2VuYWJsZV9zaW5rKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCg0K

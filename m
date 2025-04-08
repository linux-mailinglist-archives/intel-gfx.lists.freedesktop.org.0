Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08091A7FDE1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6E9910E641;
	Tue,  8 Apr 2025 11:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RMGMP/pv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1D710E641;
 Tue,  8 Apr 2025 11:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744110482; x=1775646482;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4yM2DDBLqadZZDQ/Mew6gQeQy/LTmT/LQYoDN/b9AF0=;
 b=RMGMP/pvW2moF6LOmfDgF2nVI8vm162EHJn4mimjjqTODkPDZpwCYKzG
 +O1og7JIpT/ZzD1NXVTuYCxzgLrAa5+z98SSWSkw1wfATmBwcjxIQA+jI
 KYANuQAP6n0V2IB8ZzL/pFQf5FFkNv01i3k7y1Gv0Lzwvd1h0gSFLIsKi
 lAEwKnr6vP7pd8jlrsR1Tg3QTaYdZ8FHbxk6D8OGgkx6dguj6ly5mvIHA
 az88WCJ9rTtbf0kOtcj2oyFLKKmdmFRgGL5jVlD8SMCJzMx8tNhEKqioe
 8OVvE1jSWqLr9NXaP9R+15zEkI9pcfbQOP7KT3m22TMIVoELcXCyaQ5iD Q==;
X-CSE-ConnectionGUID: ipZ1GMh7Q7+ne/cJngcGkA==
X-CSE-MsgGUID: hIjpuMA5QzmdfVE21aQK/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56905701"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="56905701"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:08:01 -0700
X-CSE-ConnectionGUID: wxrshps2Q3mgPkVPSWXwyg==
X-CSE-MsgGUID: SylkP46OS3KO1E7Gvr66Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="165458851"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:08:02 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 8 Apr 2025 04:08:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 8 Apr 2025 04:08:00 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 04:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ptaCPDEmol3276YdrJCisXMuvEGtxh0R1fJB8vmf3IkwwvifTcJPaNK46j5Vn9Uit2LM8/wXWQmLZaROyoht0BpKrEwy5srBAl3yBbZek5HLpffEILNTQrW3zfCdw0i3IliVFbaiHOhzyLsLn321/vexaYwKleVGJe9cDHPrjdr1HKPaTKecUVGAImNFu7Xr/2s7o0XDSjvJQij3HHEd3B2QrmotXfW26i1mLVkHITukdlALcHvvt3pSpqQbhoAr7pLtg/hEVGUv+L9mQxOHiNACw2XfM0MlxaQCNLv5riFdaUGb24cphGwg3yrFZ0SavNCHuUEdLiEz06v/fBSoPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4yM2DDBLqadZZDQ/Mew6gQeQy/LTmT/LQYoDN/b9AF0=;
 b=aH7EXuhLANg88whxy72YyhcuBGukQFdjwcYJfP5XCvL5E7MRXxWJEbgGMk/RqY7AHLw8CNDR43FxmVgYdkisDktzPYudTHR8cdJBKN8VGB4zyZFPU4SB7GttcMJaaxy1esbeOKlV6pvQH8usy85xp6zeuwCWM13IbWeaDOTP5QQISMIvQc/eb3+ZEyA0Guk0MYh0dfvBzH/AG7Q9z/vZS6W/yVUyrJ2rvdjPYtViGGpHSxV/dYMxtziwltYbrDYnTQlkGNIVm8FfH37U+5mz9X74SjQ+Djvb2HBNrLhUUcskKc23CcyYMCWOFmCPzGYkUKoKTIaEav4ZgHZVeALpmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by BN9PR11MB5257.namprd11.prod.outlook.com (2603:10b6:408:132::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.35; Tue, 8 Apr
 2025 11:07:58 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8583.045; Tue, 8 Apr 2025
 11:07:57 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 07/11] drm/i915/psr: Add mechanism to notify PSR of
 DC5/6 enable disable
Thread-Topic: [PATCH v2 07/11] drm/i915/psr: Add mechanism to notify PSR of
 DC5/6 enable disable
Thread-Index: AQHblxVXPbdzIS1990aKCnGuqr8yVLOZvq1A
Date: Tue, 8 Apr 2025 11:07:57 +0000
Message-ID: <MW4PR11MB70544F494A9327DE75D85FBEEFB52@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
 <20250317081905.3683654-8-jouni.hogander@intel.com>
In-Reply-To: <20250317081905.3683654-8-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|BN9PR11MB5257:EE_
x-ms-office365-filtering-correlation-id: eb3fc3b8-1dde-4e05-da70-08dd768d9e39
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?YkUwNzRwMkhSVmhFTk1VWjRZUkRUSDRGRnVvRnUxZzRvbUN5dThYNTVqTGtN?=
 =?utf-8?B?ajVMUGlXVEIwWWdpaUZwSFVRRWQxa284N0lTTGNhcnlGcDFQa2ZVNExYSUtK?=
 =?utf-8?B?OFdGVFpKK3Z5NGV6aG11eG1VdmdCS0tDVSthdUMxQ09LeXgrR3hIc2hRMXhn?=
 =?utf-8?B?R2JzSHJhcjAycUhnRWxTZmRNVHVVTjZFR3JWbHhicTBpczYvUXc5bU41K09B?=
 =?utf-8?B?cW9TRExhRVY2ZWIyTGNOWE5vWllGMEZrRXlqOTYxOUs5djl4dTlkSjk3RWtz?=
 =?utf-8?B?a09hNUUxMUpCMlNTVDk2Y1RKa0NCYTF5ZVI2NWZEaGN2Y0k5Q2dXcExpT2RX?=
 =?utf-8?B?L3ZDV3UrSGRTL25JN0pjemQ5ZFU3VGRvbGI5TzQvSFNMeFgvM3lHQ0cvQXVG?=
 =?utf-8?B?RmFFc2I1V3VtMTRTWEJnUVlrY1JRcE9ZcW9KekZOalZYTmhMMkpVa2hORDQv?=
 =?utf-8?B?Z0s2RkY3byt1SUw0Z1g0MWx3WGF1ZTdlM3o4UmRRbXJpcHc2Q04ycktKeXBL?=
 =?utf-8?B?MTB1cnlDN2NQSG1sS0hyMkMzVWVSL2xnVmlnZE4zRzBjNjVSUFNqOVlLUXpS?=
 =?utf-8?B?bVE5a1RFVWZmaFo0OTYvczhnTFJxVzgwMGlLdHNRcFBQNUJuRllWa1BocllC?=
 =?utf-8?B?VTBCSUI1ekttcDlZd0ZxclIwSkJGVUVCTEZ0MS9CeFFHMzVGS1ZNN2pJblQ5?=
 =?utf-8?B?eGNZMEhFUkFpS2s0UWZQdnJ5OTNWM016YkM2dFJqcFhPRlVaY3lUMzdGK3pn?=
 =?utf-8?B?Uzk2bjlTYVlqUFBHa3grQjVxdzlyTjF4ME91OTMvUHFHTmJscjJUSjBhWjNx?=
 =?utf-8?B?Q0VBUnFHQjdGazZRYmhrTmdYUlV6bjVaU1d5NlpyVXVsQ21SOFZSd3BZVjZB?=
 =?utf-8?B?SE9IZFAzRDIvREhCQzFvUWx1cUlSSk0rMFAvQjIvdCtvK2dKYlBMdHhyeFdI?=
 =?utf-8?B?alpqY0V6TVF0WnJPRUhEV0o0YkxrRzU4Sm4zNndjeGRxTWlOYnhLWWhsZFpX?=
 =?utf-8?B?WVd0RXd6alJiVHFaTTM3UU02RFZ0ZHE2NVVtS0hOV0dEeitvNFB1eTVKYzdI?=
 =?utf-8?B?eGdjOFllNi9WY2xQSTJkZjN1U0oxTTMxaFFBQzd0eDJlNFcrYlB6c0cyNHBi?=
 =?utf-8?B?VDV5MVNXbGhoZWszd3lqR2g0S1BZL2xvS21lUDFhZ0MyMCt6ZXhTWndza3JK?=
 =?utf-8?B?Y3g4TWFBVThNTzBlSmhuK0NkamRueTM4SXU3ZlpwWXQ2aVlnNDFBUXJUVE5F?=
 =?utf-8?B?M1hQYURFMVBuaDZjZGphS3M1QTE5dmc4S2s5dVJEV0ppNzN3NkRZUUl4SmlM?=
 =?utf-8?B?d21hS0JwSmlNcHQwck1Ld0RHbUJETXp5QWprdnI1NWZ0RVlZaVN5Q05nZHpD?=
 =?utf-8?B?RUtJVjA2Nkc3NldtZStxV1J5UHJuM0JSZkNiZ0tlSndLcnJFS0cvdkQwZll2?=
 =?utf-8?B?TGJ0QVZMbzUyZ01jNUpUQ0NVb25lNlAwN2MxU3ZNM3M1clNIUFh6akwwaGdT?=
 =?utf-8?B?aXloc28zc2ZyWTB3dTBJdFVNd0lxczlDWVpzSUtteXpaN21ocG9uTFJLR2Jz?=
 =?utf-8?B?RXZHZFJmamtyQXBockpKaU5aNUxvMUNFczJjT2I3cDZ1K2tlbkVjMGNNYTBa?=
 =?utf-8?B?RXU1T3EySS9LT3NVSFFFb2pRd3RJWkhIM3FYcmlQU1crd1o3aUJzTW1KRTZX?=
 =?utf-8?B?NVBkWmlsY2xhM0VFcitYT0Y4KzBGc0FTVEE2UEpocTRiaDBuaXB3YVMydnVs?=
 =?utf-8?B?aG9mNWVXUEIxQllVMnRqOHRvY1VjUDNGZ1BYZVpGM0IzYi9FM3ZvSmlxWERD?=
 =?utf-8?B?c0NnUjJFYllrWXAwdnp5UFRkU0JOOXpPMlV6Yzk4WHR2SVBTUEowM3lEd0Zx?=
 =?utf-8?B?dldQczRaWEowV0pmUVdxR2kzcFVCR1grRXVoUTh5MUdmSVhRUjJRa05Cb2Ri?=
 =?utf-8?B?d0tCeDJxU0kwVlk1ZlJpZ2IyWEIzSStlbmRUT202dktEKy9CRWFKZXZURXV0?=
 =?utf-8?Q?K+d+2NYA3bHLaAS24azpWv3pPHv1tI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bktlQVdReXAyVDU3L1BlUUNJbUQ2L1d5ZkxUNG8wYzY1NUk5TmNucDhJa2VE?=
 =?utf-8?B?bkViaHVVV0dCbER0cmdKTzhkWW9PV2pFSkdZNGxhY0k3aDBUNUgxdUh2c1p2?=
 =?utf-8?B?Rk1XUFluL1Jlenp4WFpEZjVaWWJ6Q3FOYUV4Z1NsRm5VbTJ4L2JITmxFMDVY?=
 =?utf-8?B?Rjl5dVp3OFdoNDErUUpzSWtwYXdQVml4b05RTDFDY3FNMjNucVJCYmVMYVpH?=
 =?utf-8?B?anVwMlJISElFMzhLdUR4YXB5dysvVHNSNUplK3h2bTlRTUR5djBhdzhXdmZT?=
 =?utf-8?B?bklNRTRVZzAzUmJJVklrN3B5aWNXSzBqamVuQmJwdGpvVVB0dnIxVGYveVUx?=
 =?utf-8?B?U1BYRm5TT2x3YmJlMEZHZWxQWkpWcE9qZ0NDTGRPWlJRUUtjOVlyRWgyNnVj?=
 =?utf-8?B?L0lVRHFYSklGMS92ZmxOLzVEOW5JUWYzSDlFbStGZ1RTby96UEhya1dMM1l4?=
 =?utf-8?B?bXRHUmlQenRZcnFONWFxMVdlT1plVGJjRUZmbWhkODQvOWIwUUhSdzdCcGdT?=
 =?utf-8?B?cmh0THZWdWd1THI3V2pvS2VVRUZGWEtzbXdGQlBTTW84WGZCMmY1UHJEQW4y?=
 =?utf-8?B?Z3dYVmdnd0FPOEtZQlErWVJOMklYand4K1NnZ0twY3RacTZCVjVNeUJPOUl1?=
 =?utf-8?B?OTM4TjdZS1FLUVJPMmNWQXBWdHJDNGhIM3dlaU9YNGtjM1c0Z1EzSEV0dGNN?=
 =?utf-8?B?b1dpSi90S2xvOTd0NjQ5WHh6TmxWUit0NEgyYlNtT2tRcWRqdFYxZk5lRDlu?=
 =?utf-8?B?N2RwRWl5enNaM2ZxNFQvaHMwZzJBWFdRcUo4YW51WlpnS0k4bzVlZGxOSEdk?=
 =?utf-8?B?d2ovZk9jQlNPYzdsNXpNdUtQajU3bXJXQXpaUU9OYytWRmRndG1KN3VCcWRT?=
 =?utf-8?B?YUZOalhTSWJqTUI5L0JZK2tFd2k0TE80RDQ4UzBpbmg0S21GaVNoZ254RXl3?=
 =?utf-8?B?UzY2ZE5Ec21WdUwwbnlYckVRcmVzWjZGcjlBckpSUDhCUG9xMnNEUElsMjcv?=
 =?utf-8?B?ZjNBSU1vbUx1OC9BOWgrdHE5dWk2RlhNR3BqVm1odmM5aWhMOWhMdFpGc3p0?=
 =?utf-8?B?K0JmRlZ0VFJtVUxIMEFJdjdzamhVQXl2a1hxMUNMOUxiRVg4UHQyRXlNUDJG?=
 =?utf-8?B?UEhpNUtCUGJJNW9vUWZPaDB5eUVDalRRakhvWmRXUGlLT2hnb2xQTHViMm8v?=
 =?utf-8?B?QXplTjhSS3FyZHVaaWVYL1UwYVBWMTN0VzM3QUkzNnJJRmc4UURyUWpXU3o5?=
 =?utf-8?B?ZHlCa0ppRFliRWdWOTZsd2VvYmpwL1pMV2RUL1QzS1hJRjRKZlhwVWgvZjZo?=
 =?utf-8?B?dVMrTnBYT3pOSzdDSFZoT25TWStSd0QzekVCRC9QV1FzNnFMdjZRWGZMbFRW?=
 =?utf-8?B?MmZpN01rMm9XeGxpU1graGU0SGN4T0c2ZW5DVVZ3c1crSjJ4di9DUTZRY2E1?=
 =?utf-8?B?K1ZWb25odGxrbzBIbUoyamJzNUFmMjhHeHkwTjgrdk0zajlFdHdHN1k0R0JZ?=
 =?utf-8?B?dFlONUhOYXNmWGhLWm92dmRVNEpBMjdEN2l3YWllWmEzbk5XbXFqR3BWQVZV?=
 =?utf-8?B?S3YyR3NubGRnNStpSWdhSHowb0dOdm5BczF1OGVMMm5Ia09TekZKeFZFYTZG?=
 =?utf-8?B?Wit4Z2s3eEhEYVdqRTR5a1luODQ3MnU5MkVXR2hqV2swL3RZTFlvN1dEUUZ3?=
 =?utf-8?B?dFZKTUsrQmhPTFdLT002WXpCREFteGlZNCtTKzJmYUJkbGNrcTZ0K05NVzBE?=
 =?utf-8?B?MzBaNHdlWEZyUFBBNkx4NG14T2N5bGpnSElvbXhJWXE5TXdZZTRGYWNDSVBF?=
 =?utf-8?B?dUtrU2dyeURWZ0l5aFAzZkhZT3RRR3B2dm9lVWcwKy9ZamE4cUhmOUk1R0Zo?=
 =?utf-8?B?ZTIrY1YycFdmRXYyRXRKOWpCVWJBWWJmQWZwcXlOaWVvcURDOGJVblB6QUlI?=
 =?utf-8?B?ajEvRXluNlllcDI1ZUttdlh2SFg3akVDSzZYalVxWmdkanBhYlN1aCsxRldY?=
 =?utf-8?B?R3JNMnFCZjZyWVgvR2N2cVRjTTNUbk9BVE1pZmRmVmZiTFlsRXlyVkJBTW9T?=
 =?utf-8?B?SzN4M1EvMU8zZVRGWkhvSnZKazBIMUxWWjBKS2oySldmOXQ2b2xnbnJjbEZH?=
 =?utf-8?Q?UtIC8oMeXsmLRL8jOzrGg7Lck?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb3fc3b8-1dde-4e05-da70-08dd768d9e39
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 11:07:57.3502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FEtRLN5wxPiEsSVeMigh4ixb/tSU6rRIXcqObU4HCpTIJPuVhjdGipF0bUYXbXT72SPzfSZuw63z+6MVRASTcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5257
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0KPiBIw7Zn
YW5kZXINCj4gU2VudDogTW9uZGF5LCAxNyBNYXJjaCAyMDI1IDEwLjE5DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjIgMDcvMTFdIGRybS9pOTE1L3BzcjogQWRkIG1lY2hhbmlzbSB0byBub3Rp
ZnkgUFNSIG9mIERDNS82DQo+IGVuYWJsZSBkaXNhYmxlDQo+IA0KPiBXZSBuZWVkIHRvIGFwcGx5
L3JlbW92ZSB3b3JrYXJvdW5kIGZvciB1bmRlcnJ1biBvbiBpZGxlIFBTUiBIVyBpc3N1ZQ0KPiAo
V2FfMTYwMjU1OTY2NDcpIHdoZW4gREM1LzYgaXMgZW5hYmxlZC9kaXNhYmxlZC4gVGhpcyBwYXRj
aCBpbXBsZW1lbnRzDQo+IG1lY2hhbmlzbSB0byBub3RpZnkgUFNSIGFib3V0IERDNS82IGVuYWJs
ZS9kaXNhYmxlIGFuZCBhcHBsaWVzL3JlbW92ZXMgdGhlDQo+IHdvcmthcm91bmQgdXNpbmcgdGhp
cyBub3RpZmljYXRpb24uDQo+IA0KPiBCc3BlYzogNzQxMTUNCj4gDQoNClJldmlld2VkLWJ5OiBN
aWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaCB8ICAyICsNCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgICB8IDUwICsrKysrKysrKysr
KysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmggICAg
ICB8ICAyICsNCj4gIDMgZmlsZXMgY2hhbmdlZCwgNTQgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3Jl
LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5o
DQo+IGluZGV4IDM2NzMyNzVmOTA2MWEuLjdjYTFlN2Q3MTAxMzMgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBAQCAt
NTc1LDYgKzU3NSw4IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5IHsNCj4gIAlzdHJ1Y3QgaW50ZWxf
dmJ0X2RhdGEgdmJ0Ow0KPiAgCXN0cnVjdCBpbnRlbF9kbWNfd2wgd2w7DQo+ICAJc3RydWN0IGlu
dGVsX3dtIHdtOw0KPiArDQo+ICsJc3RydWN0IHdvcmtfc3RydWN0IHBzcl9kYzVfZGM2X3dhX3dv
cms7DQo+ICB9Ow0KPiANCj4gICNlbmRpZiAvKiBfX0lOVEVMX0RJU1BMQVlfQ09SRV9IX18gKi8N
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDRi
NjJkNTgzMmNiZmEuLmJhZjZhNzExMGE1NTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMzcxOCw2ICszNzE4LDU2IEBAIHN0YXRpYyB2b2lk
DQo+IGludGVsX3Bzcl9hcHBseV91bmRlcnJ1bl9vbl9pZGxlX3dhX2xvY2tlZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwDQo+ICAJCXBzcjFfYXBwbHlfdW5kZXJydW5fb25faWRsZV93YV9sb2Nr
ZWQoaW50ZWxfZHAsDQo+IGRjNV9kYzZfYmxvY2tlZCk7ICB9DQo+IA0KPiArc3RhdGljIHZvaWQg
cHNyX2RjNV9kYzZfd2Ffd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspIHsNCj4gKwlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IGNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmRp
c3BsYXkpLA0KPiArCQkJCQkJICAgICBwc3JfZGM1X2RjNl93YV93b3JrKTsNCj4gKwlzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gKw0KPiArCWZvcl9lYWNoX2ludGVsX2VuY29kZXJf
d2l0aF9wc3IoZGlzcGxheS0+ZHJtLCBlbmNvZGVyKSB7DQo+ICsJCXN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ICsNCj4gKwkJbXV0ZXhfbG9j
aygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gKw0KPiArCQlpZiAoaW50ZWxfZHAtPnBzci5lbmFi
bGVkICYmICFpbnRlbF9kcC0NCj4gPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gKw0KPiAJ
aW50ZWxfcHNyX2FwcGx5X3VuZGVycnVuX29uX2lkbGVfd2FfbG9ja2VkKGludGVsX2RwKTsNCj4g
Kw0KPiArCQltdXRleF91bmxvY2soJmludGVsX2RwLT5wc3IubG9jayk7DQo+ICsJfQ0KPiArfQ0K
PiArDQo+ICsvKioNCj4gKyAqIGludGVsX3Bzcl9ub3RpZnlfZGM1X2RjNiAtIE5vdGlmeSBQU1Ig
YWJvdXQgZW5hYmxlL2Rpc2FibGUgZGM1L2RjNg0KPiArICogQGRpc3BsYXk6IGludGVsIGF0b21p
YyBzdGF0ZQ0KPiArICoNCj4gKyAqIFRoaXMgaXMgdGFyZ2V0ZWQgZm9yIHVuZGVycnVuIG9uIGlk
bGUgUFNSIEhXIGJ1ZyAoV2FfMTYwMjU1OTY2NDcpIHRvDQo+ICtzY2hlZHVsZQ0KPiArICogcHNy
X2RjNV9kYzZfd2Ffd29yayB1c2VkIGZvciBhcHBseWluZy9yZW1vdmluZyB0aGUgd29ya2Fyb3Vu
ZC4NCj4gKyAqLw0KPiArdm9pZCBpbnRlbF9wc3Jfbm90aWZ5X2RjNV9kYzYoc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkpIHsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgIT0gMjAg
JiYNCj4gKwkgICAgIUlTX0RJU1BMQVlfVkVSeDEwMF9TVEVQKGRpc3BsYXksIDMwMDAsIFNURVBf
QTAsIFNURVBfQjApKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlzY2hlZHVsZV93b3JrKCZkaXNw
bGF5LT5wc3JfZGM1X2RjNl93YV93b3JrKTsNCj4gK30NCj4gKw0KPiArLyoqDQo+ICsgKiBpbnRl
bF9wc3JfZGM1X2RjNl93YV9pbml0IC0gSW5pdCB3b3JrIGZvciB1bmRlcnJ1biBvbiBpZGxlIFBT
UiBIVw0KPiArYnVnIHdhDQo+ICsgKiBAZGlzcGxheTogaW50ZWwgYXRvbWljIHN0YXRlDQo+ICsg
Kg0KPiArICogVGhpcyBpcyB0YXJnZXRlZCBmb3IgdW5kZXJydW4gb24gaWRsZSBQU1IgSFcgYnVn
IChXYV8xNjAyNTU5NjY0NykgdG8NCj4gK2luaXQNCj4gKyAqIHBzcl9kYzVfZGM2X3dhX3dvcmsg
dXNlZCBmb3IgYXBwbHlpbmcgdGhlIHdvcmthcm91bmQuDQo+ICsgKi8NCj4gK3ZvaWQgaW50ZWxf
cHNyX2RjNV9kYzZfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgew0KPiAr
CWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSAhPSAyMCAmJg0KPiArCSAgICAhSVNfRElTUExBWV9W
RVJ4MTAwX1NURVAoZGlzcGxheSwgMzAwMCwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+ICsJCXJldHVy
bjsNCj4gKw0KPiArCUlOSVRfV09SSygmZGlzcGxheS0+cHNyX2RjNV9kYzZfd2Ffd29yaywgcHNy
X2RjNV9kYzZfd2Ffd29yayk7DQo+IH0NCj4gKw0KPiAgLyoqDQo+ICAgKiBpbnRlbF9wc3Jfbm90
aWZ5X3BpcGVfY2hhbmdlIC0gTm90aWZ5IFBTUiBhYm91dCBlbmFibGUvZGlzYWJsZSBvZiBhIHBp
cGUNCj4gICAqIEBzdGF0ZTogaW50ZWwgYXRvbWljIHN0YXRlDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiBpbmRleCAyNzNlNzBhNTA5MTVjLi5iZmUzNjgy
MzliYzI3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgN
Cj4gQEAgLTYyLDYgKzYyLDggQEAgdm9pZCBpbnRlbF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApOyAgYm9vbA0KPiBpbnRlbF9wc3JfbmVlZHNfYmxvY2tfZGNfdmJsYW5rKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsgIHZvaWQNCj4gaW50ZWxf
cHNyX25vdGlmeV9waXBlX2NoYW5nZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gIAkJCQkgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBib29sIGVuYWJsZSk7DQo+ICt2b2lk
IGludGVsX3Bzcl9ub3RpZnlfZGM1X2RjNihzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7
IHZvaWQNCj4gK2ludGVsX3Bzcl9kYzVfZGM2X3dhX2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkpOw0KPiAgYm9vbCBpbnRlbF9wc3JfbGlua19vayhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKTsNCj4gDQo+ICB2b2lkIGludGVsX3Bzcl9sb2NrKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gLS0NCj4gMi40My4wDQoNCg==

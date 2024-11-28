Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DEB9DB341
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 08:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C3F10EC2A;
	Thu, 28 Nov 2024 07:43:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jt7CM4gj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC7910EC2A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 07:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732779832; x=1764315832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3at9Bz9donlOLzSDQAFG24NZ8og5x5uhoT2OK7UuYiI=;
 b=Jt7CM4gjSJBxTZHk+kEXgPWGPte3bX/MkYWihcnwLXeDHrIy3K49hkS3
 Lmv7cj4AS4fdoMyqHEnx3c0M2wmlgJoETOA2oDUODecHSv2Mp2tJajmym
 d8yfle4ya7pHFfwOtooQwZBba2RadHU5cy6uqT0hkbc9OqkZymYPh7KVE
 qu73GCBYywxKwHoKDJYwdKvwW/2qPRj0aSlHBZ8YWWODoyrP5AoU9H2Eg
 qexeHrBYptQQETH7FUToPkaLvXI7tge2TwKlxCiViYT89Xk74Cg0KjB6F
 6JQNXFSEgAGVmxWbNX8Hj66RfJYC/0w1KHoCYt1PslDCogGzdTYfaYxp4 A==;
X-CSE-ConnectionGUID: NAtoWVWGS060EWFfW4IaKA==
X-CSE-MsgGUID: 6NvFutKVTuCvByZuEsEWvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="55498415"
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="55498415"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 23:43:52 -0800
X-CSE-ConnectionGUID: zCIUYzlVR2WGtei2msjaxw==
X-CSE-MsgGUID: 5YFtNjx9QEGvC12iIC1ezw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="92036189"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 23:43:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 23:43:51 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 23:43:51 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 23:43:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I9ci1sa3XZcC+PD+n3o6jkzfRiQMbfYjcFGitGLvRWb4Ia4HFbzeDifrG2PZAB/XNpBocY/HtRx0CYTsPh80TemgnaPNi86Gsdn6I8yCRQa3vFVZWvP8uTpQ3SYDz39dmFub7O1GyBa3uN2+ZdF/emzDC5Ip5Sd/mZD2bw9oUQT5CU2eUEHhWIaOi/KKSXQIkTyEr87CsVgVjNKGPCWIlqS/P4S6YzMkxocidsKH8vSSts51AX0bG1W4brzNhQZDL1FCIpIXLsxWPz8whfhbxobspW/KDzUtQeTe1nduo62ssYI3z1A41aDOYacZV2LXl/wv82h+oveVr56WKSTz/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3at9Bz9donlOLzSDQAFG24NZ8og5x5uhoT2OK7UuYiI=;
 b=xOWnfvL+ubFrMOFDpQbcfET3f1A2IkdxZmEOTDtbELvksC+IWWTSN7bFoYU3pe7qzVnz598IYwwI/alCHjGZxj/y9u7EKRMjENAfB2wWzMxEBV8sJK3HExVFRsLU0RbyyZGnmQFz/Tp4I9Nk9w4TlooI0yg5XfPKAZ8SMMznMn76uP126fwhh6CJNtp44UejqQRKmMDA9Y92DTe6PzmexuAlvOL/x1AvQ6ansZ1Jw9FeGSmiGVMSHxzXHm7Ap35OrpiOhZLwEQeSLMafi5qpndqr41W2v3Mw/PzNGuvoErYEXXEmcUp8Os2Ci8592+wt2Rj2TGpqv9C1zPiU38ubgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SJ0PR11MB4798.namprd11.prod.outlook.com (2603:10b6:a03:2d5::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Thu, 28 Nov
 2024 07:43:44 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 07:43:44 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Brian Geffon <bgeffon@google.com>
Subject: RE: [PATCH 1/4] drm/i915: Don't reuse commit_work for the cleanup
Thread-Topic: [PATCH 1/4] drm/i915: Don't reuse commit_work for the cleanup
Thread-Index: AQHbQJM024ZkNWzYi0O8lHeCC2Q4A7LMUSkw
Date: Thu, 28 Nov 2024 07:43:44 +0000
Message-ID: <PH7PR11MB82527EAC9FFDBB50DC28100089292@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
 <20241127061117.25622-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20241127061117.25622-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SJ0PR11MB4798:EE_
x-ms-office365-filtering-correlation-id: 0bdc18ed-2d14-410c-5486-08dd0f8062b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dmUwNTUrTDlPNE1PajB0c1VyR3kyTXNkem5EYm05QUt5ZEV3a3JYSERkUVhH?=
 =?utf-8?B?WmNZWW5XWlFxc1RKVlRDWHJVN1hCREdiMkVKK20zYm9HaURpVFFFR0Y3d3h3?=
 =?utf-8?B?SDJxd3JGNEllQ3Z2WkZJZWRXOXVjQ1V5eGcrK3J5N29Gc05lMGNaK1FpS0tM?=
 =?utf-8?B?bnIyM003ZXhGdG55QmU0MFhucWE3TURWNjhMNGZ6S3pDUkNNM0NkYnBUMmho?=
 =?utf-8?B?TXFSTVIwSitOenZCZGc1c2xHSkUxM3ZERHBsS2xjOWtGSUFXeEJSdDFNNzBv?=
 =?utf-8?B?OGpvOGxwWUptTmNWZXArQXlkak5CUXkrQndxdVdmaHpNcUttekovaTJPcytG?=
 =?utf-8?B?OEtvNXQ2c1dLNzdvVVBVZnUwSkF6L0E0czMxOEoyZ2xTV050eTd4ZjdtaUdr?=
 =?utf-8?B?NnE3ZHJlWndYY1Zha05LSURucDRneXNGeEVNQnB6Q1U0RnpRMUk3b3JJeXRM?=
 =?utf-8?B?SFQrQm5iZXduUWN6cU95UUFWa2pvbWgzVzBtLzhvMmxmcWMza0ZuQm9mallE?=
 =?utf-8?B?SUF6UjBEaUwxaHc2UWNTSFF2aVFLenlxUmlaMTBpQ3ViYnJFejVzQzMwWW5O?=
 =?utf-8?B?L2hJMlFEZ2MwT2pRME5Tb3ZZYXpRdFlTdUVteS9vcElETFNJT0VldEFmRXlK?=
 =?utf-8?B?Y29pTVhNRnd0Q1dsYVVscjRhTHVyYi9SQlpWemw2T3B0RWg4OTNhWWRDUHJh?=
 =?utf-8?B?Q0xtVXJHb0t0eFdYNis3dm0xMVB2TE9ZdkcxNWlpR2hwSXZRSnZxRGRiQllS?=
 =?utf-8?B?SFcvTFdDSTlEMzlIYVZiWG5LNTZrS1dRNkJxcGNzTmVYQnhZTE55RWRxcHJu?=
 =?utf-8?B?b0V5UWhHdEUzcEtLaFY1dVZNWTdlS3UyVHg4NUxZcFY3UUxjQ3RJRVFCVVRH?=
 =?utf-8?B?UjNpUkVvUGJNcEx5Y2xqM3c1amNnYVRYYjZ4NnA0eFhMOEZLR1lDcnM5clMz?=
 =?utf-8?B?RUtmcmF4VTVLS21FUElrOU41b2NSYnJpQXNEanhNd1VEVjQ1ZVNDRXdZRHRv?=
 =?utf-8?B?elRSbUxqSkgvQVJtSSsyYW5tUFlZUzZ5SnArVTB5enNVUFVjaU0rZ2YreitP?=
 =?utf-8?B?RFZpUGFCVkZQZlowdTRSbmgrWkduK0RpSVdTcmg4dDFTU1JaREhNazNmM0hl?=
 =?utf-8?B?V1NvaDhETFlvYXJxc1MzNFZjbCtpa3U2ZEQwU0psVUt0UXkzK3hPcmVNRTdZ?=
 =?utf-8?B?R1hxMzViRFE3bm9PdmlXUGJoZ09QNXozc1B5T25tTjhzQXhhVUJVQmtpNy9j?=
 =?utf-8?B?N05wam1DQ00wR21qY0lNeU5GM0VZTU9zWmZ3U3ZueGk3M3RadjE2cVNlenhF?=
 =?utf-8?B?RVRkM3VQaFZHVVhHdHF0UlhMRnpUZmlHUTN4NnVmQldORmRpWDZOUElzZlJY?=
 =?utf-8?B?bjZOZ3dEa2wwOUxpN3ZZdjYvZURZYTN2NXowNy9OVVNuWldaUEpXR2ZnUDQr?=
 =?utf-8?B?bUptcXNybURDckV1dWQ5bTJzdEVGWEpaVklhMktaa2FFNlp3MytKdkdLVll4?=
 =?utf-8?B?NjVjeGtRc3kvTHhaQ0FpUm56a3FOMVAxQVFBSi9yNnVpS2hnWlFDVWE5RGU2?=
 =?utf-8?B?dWtoVFlsQ1RVNWJES3JJbzU2NXFPRDlIYnF1UTZUbTd6Q3JDWVhHZEZyOCts?=
 =?utf-8?B?RXhHU2NiNVRzZXJyQktiWWVIOVp6VWEvMk9CWS9EamlsSWNqSE1nSDNlRmlx?=
 =?utf-8?B?cGJQb0prbFBoYjZOdnpmeE9paERZbHpING11cUlPK00yQ0lLZUN4L0Y2bmNQ?=
 =?utf-8?B?cFR4RWpPbGFzT3FNUFhYZmZ3V05YcGViNWYwTFBIOWpndVZnTEJ5NVptRDNB?=
 =?utf-8?B?cURrWFlHRG1tdi81NTM4YVAyUm1FWVhmSHZWNkorTWwrRStleVJTeDVySGh4?=
 =?utf-8?B?T0huOUo4cU1yQmllNHlxSUNQOGIxSU80Z293OUEvalJBSkE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S1dJaXR4cG42YjJacnp3WTVTSGlWTUltQTZCK3Q0cFdJOUE1QlNLUkRkV0h2?=
 =?utf-8?B?NWd2cEFYeGtBdjdQLzlKYVdSQWs3K21QNEZBbTRTdklWdnhNbGxiVHRBMzU0?=
 =?utf-8?B?Q3lwUVg1UklvaHUwVzViTU5oTlVHenRMS0QvT2JMOW9PZnFsam12STFNdVBn?=
 =?utf-8?B?TldkTVVpOHhqY3NQOElscCtRSGdmaHVSNldWU3lMZXI0Q3czNTdabDN2S2JE?=
 =?utf-8?B?YUxyQ291NmRkeTJ2TjdGbTM1M3VRRGhVcFZoOTV1WWFGOWtzM3hqVWFQT01S?=
 =?utf-8?B?TWpGYzVyYy84ZDRhbWRtTHRIZ0RMQkFRYXR4RzM2Qm9PdWd0bEtlMVpLQXNv?=
 =?utf-8?B?REdQRmFRR21vTXRXdVlFTDFBTzR4WlRWSTdOR3VudFVIT2Foa0RKYi9BeXcv?=
 =?utf-8?B?V3RGNXgzNmtXc3FjVjNEVHZPWmltdFFLcjYrVlpWK25PVXZzMHdZWE5zYk9H?=
 =?utf-8?B?MmhKUVZmZFFPS2FRcHpuVTg2NjlUQ3k2b3VWK05Uc1RaMlByUW44ZjBJZDlv?=
 =?utf-8?B?dkpqMEwyZUVUZUlvcjlSeFRXRXpqb01NYzRBN0tBdUQ3ellTbllrMXd1UEpS?=
 =?utf-8?B?M3NVcWgzNlNydzN4U1REMXFYdTNhS3JLUXZIQXhjRERNaVcrZnlLK1JEY2pS?=
 =?utf-8?B?cmp5UDMyM011eWtwVjJBeUxDVlQ0MVd1aE15clVtMUZZQnNZbFRscnVUUWUr?=
 =?utf-8?B?SHRER1UvNE51dnZhUlo2cHdmMC9tQU5FTnJVVUl3YjhRSFArRTIya2dESUt6?=
 =?utf-8?B?Ykl3RDR2RTB5Q0VKaTFXd0lkUDZYNGl4N0VkWnhHTkJ1K2JROWNLL0JUNzlE?=
 =?utf-8?B?WW1NSHA2Vnp5aFE1TStka214L09aVU55bGJ4WTR6UE9XdFFjMHpUUCthcnRK?=
 =?utf-8?B?Z3VSeWp3bnRyYnF2TURTbHUzNjBEYnRZenRqT3BkUThsM3pHc081eUEyU3JV?=
 =?utf-8?B?RmFOcGdVSUovUTBYN2ttT3ZTUjZkeFU0am5jT3RTaURuQzlLV2xOVFIrbjY3?=
 =?utf-8?B?dWpsdWhVK3h3dWIyUWhCSkxsTFl1enpqdWJWVXFENVVWMW1Fak4vWk5QQzdL?=
 =?utf-8?B?ZTRReGRLd2lVMVNwcngrcVkySzIrT1QrYTlMdnhsekd2Y2dJYzQ2eElDMmFm?=
 =?utf-8?B?VWtUR1YrRzRDcllmNW5kZC9TQkdSeGE0RlhjbGpnVHdOeC9iaGFXRGhyNkFG?=
 =?utf-8?B?dkFGTGVrM0dLdjc3alVFRS9kTnVYWm9FY2lqSVUrZ2J6eDVDT3FydzdaVzJ0?=
 =?utf-8?B?WVBXNkdHZENQNmc5MmNGeGRlR2Qxa29tbWkzNVI3dkhOOU0xQkRWeTNZcFJm?=
 =?utf-8?B?MWVWa0g4UWNCTkQ2Wk9RTHIwdWFvTVZSWlI5aVYrbGNsbDhPUWxSU1EvTVho?=
 =?utf-8?B?czRqYysvdS9zeCtEYXl5NGNPQWxwYWd3bFladDh5Rkd5MnluVmxHTDducHZM?=
 =?utf-8?B?Vm1wbXphZkdrMzQ2V1FrVmExeTdlNzg0T1BLVFJ2ME40Nm5GTTFmMUM1QWVL?=
 =?utf-8?B?djlnNFpjbXdJTGVZcURPUkhKaFFXT0JVaEFVLzNXRlc4d0FzektZM21pVzN1?=
 =?utf-8?B?UnZOVVE4cGp6VkE5SHdJaFZsY3pqUXcwdFQwOHkvRGVDcFpRa2hkV1RxQXNY?=
 =?utf-8?B?MXlCUmNVMVJESi92VDRPWWdoMnp2QmwvOUVTTmhCY3ZBTEVDazN6cFZwOXdx?=
 =?utf-8?B?OExWeVY3NlVKNytQSGFyQytuUzEydjNsa3dlZ3ZjZjIwbVRCOG9SZjJGeXRR?=
 =?utf-8?B?KzN2S0FzeVJBekNtWDk5NzJHTWt1SHo5bXlFci80cTNXU1NZMU9ZaWFUMTk2?=
 =?utf-8?B?bGpiTGtEdFlrcFFlZmpvQTluS240ZjdzVkZ6NUVpaGgvZWRHbUZLZi9Tcmx6?=
 =?utf-8?B?SVMwYlhyU2R3YUl5OTZVSHFZdk9hdDQxbng3MFBoZDhRMXpiTEZBY1dGY2s0?=
 =?utf-8?B?NE95UFYxM2VyTGFkSEE1OTBjUlU2R0JLeUhtL0ZqZHdxN2Y0dFNqTTEvaXp4?=
 =?utf-8?B?ajdrMndJR2YrQkNnNXB5cmNUVmwwK3Q5MzB6d0dFM3RWNHI1Y1VPcnJNZlVl?=
 =?utf-8?B?dTM4cHczN1NsWnB0U1FkWUcrUXRDZDYrYUp6QmNPcmozNEZtSG83bzhpVHl0?=
 =?utf-8?Q?AafMlCvAyd7BHtvFCIEaP7tK4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bdc18ed-2d14-410c-5486-08dd0f8062b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2024 07:43:44.2128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZNhKgWSo7JTbdamqj/j+6QsjgA9n/da8+ExDG0piTmpXri63HZk38lLAXw4IkD2XS212bzA/skahdn+Dak3jry/YBEPsS2Zf6JZjEOGCr2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4798
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

SGVsbG8gVmlsbGUsIA0KVGhhbmsgeW91IHNvIG11Y2guIENoYW5nZXMgTG9vayBHb29kIHRvIG1l
Lg0KUmV2aWV3ZWQtYnk6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+
IA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFZpbGxlIFN5cmphbGEg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiAyNyBOb3ZlbWJlciAyMDI0
IDExOjQxDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBCcmlh
biBHZWZmb24gPGJnZWZmb25AZ29vZ2xlLmNvbT47IFNyaW5pdmFzLCBWaWR5YQ0KPiA8dmlkeWEu
c3Jpbml2YXNAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMS80XSBkcm0vaTkxNTogRG9u
J3QgcmV1c2UgY29tbWl0X3dvcmsgZm9yIHRoZSBjbGVhbnVwDQo+IA0KPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gQ3VycmVudGx5
IHdlIHJldXNlIHRoZSBjb21taXRfd29yayBmb3IgYSBsYXRlciBjbGVhbnVwIHN0ZXAuDQo+IExl
dCdzIG5vdCBkbyB0aGF0IHNvIHRoYXQgYXRvbWljIGlvY3RsIGhhbmRsZXIgd29uJ3QgYWNjaWRl
bnRhbGx5IHdhaXQgZm9yIHRoZQ0KPiBjbGVhbnVwIHdvcmsgd2hlbiBpdCByZWFsbHkgd2FudHMg
dG8ganVzdCB3YWl0IG9uIHRoZQ0KPiBjb21taXRfdGFpbCgpIHBhcnQuIFdlJ2xsIGp1c3QgYWRk
IGFub3RoZXIgd29yayBzdHJ1Y3QgZm9yIHRoZSBjbGVhbnVwLg0KPiANCj4gQ2M6IEJyaWFuIEdl
ZmZvbiA8YmdlZmZvbkBnb29nbGUuY29tPg0KPiBDYzogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNy
aW5pdmFzQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgICB8IDYgKysrLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDIgKysNCj4gIDIgZmls
ZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggOWRi
MjU1YmIxMjMwLi41MjYwZjZlYWZhZjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC03NTgxLDcgKzc1ODEsNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9hdG9taWNfZHNiX2NsZWFudXAoc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpICBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY2xlYW51cF93b3JrKHN0cnVj
dA0KPiB3b3JrX3N0cnVjdCAqd29yaykgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSA9DQo+IC0JCWNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlLA0KPiBiYXNlLmNvbW1pdF93b3JrKTsNCj4gKwkJY29udGFpbmVyX29mKHdvcmssIHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUsIGNsZWFudXBfd29yayk7DQo+ICAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+ICAJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlOw0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjOw0KPiBAQCAtNzkzNiw4ICs3OTM2LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2Nv
bW1pdF90YWlsKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCSAqIHNj
aGVkdWxlIHBvaW50IChjb25kX3Jlc2NoZWQoKSkgaGVyZSBhbnl3YXkgdG8ga2VlcCBsYXRlbmNp
ZXMNCj4gIAkgKiBkb3duLg0KPiAgCSAqLw0KPiAtCUlOSVRfV09SSygmc3RhdGUtPmJhc2UuY29t
bWl0X3dvcmssIGludGVsX2F0b21pY19jbGVhbnVwX3dvcmspOw0KPiAtCXF1ZXVlX3dvcmsoc3lz
dGVtX2hpZ2hwcmlfd3EsICZzdGF0ZS0+YmFzZS5jb21taXRfd29yayk7DQo+ICsJSU5JVF9XT1JL
KCZzdGF0ZS0+Y2xlYW51cF93b3JrLCBpbnRlbF9hdG9taWNfY2xlYW51cF93b3JrKTsNCj4gKwlx
dWV1ZV93b3JrKHN5c3RlbV9oaWdocHJpX3dxLCAmc3RhdGUtPmNsZWFudXBfd29yayk7DQo+ICB9
DQo+IA0KPiAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF93b3JrKHN0cnVjdCB3b3Jr
X3N0cnVjdCAqd29yaykgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggMzM5ZTRiMGY3Njk4Li5kN2NlOGYwMTY0
NWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IEBAIC01ODcsNiArNTg3LDggQEAgc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSB7DQo+ICAJYm9vbCBza2lwX2ludGVybWVkaWF0ZV93bTsNCj4gDQo+ICAJYm9vbCBy
cHNfaW50ZXJhY3RpdmU7DQo+ICsNCj4gKwlzdHJ1Y3Qgd29ya19zdHJ1Y3QgY2xlYW51cF93b3Jr
Ow0KPiAgfTsNCj4gDQo+ICBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgew0KPiAtLQ0KPiAyLjQ1
LjINCg0K

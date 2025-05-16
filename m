Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F2DAB9752
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 10:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E45010E9E1;
	Fri, 16 May 2025 08:17:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gCAqhJkQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC5A10E12F;
 Fri, 16 May 2025 08:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747383457; x=1778919457;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FyCEF5OpEKLkhCdwOFoOsXGxQ6tlgX1vOs+skcy/AUU=;
 b=gCAqhJkQGB5eaWxlSdd9eZeiF0WvaxLXZCew1DA2/TGhEceCzYfrMkjd
 l56OupcZlpPD1GahqevY7kwPEuE3zccVgJ++bbC3LV/mSttgOjqQ8V0MO
 3FjWsdggENWZnJUKHBjpcP/D4GYjjKiTbLO4ZPeQKoiGfpAzr1NItkvyk
 4p4+HLjIIsvIPNj42pkeSfbomnJwIz64Z1U0s5Uc6Ua6Vf0Ev+w4ot1E9
 zCsrc7WsamTRKJIfDMBmIm+jJgx1jNBsi+2XJw0dYSOkG1ObyDXlvBuP8
 vJcKAMeiug7XOndSdJzZL+2GA7Q+SQxXWbB4+ftSg5L+hg9TBnk1M/+6a Q==;
X-CSE-ConnectionGUID: AOcbAjHBQdeMMgakXrWmQA==
X-CSE-MsgGUID: yl8VG2snR7yw3K1muYfXQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49041549"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49041549"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 01:17:36 -0700
X-CSE-ConnectionGUID: pGLr8FzHTiWR3/S6mBkg4Q==
X-CSE-MsgGUID: fuab4wTqQZSi6U18ZW6jXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="169682889"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 01:17:35 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 16 May 2025 01:17:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 16 May 2025 01:17:35 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 16 May 2025 01:17:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k8x29/UE8Gb5QtIv1RTU8zNLK8d3CibfzcXhpZK98NgDaXIcylK9Wvs3lPu5EXu55mgMDy3xErgn7lvdgXXGjZHJCzll/eM857BO1onI5Kv556ckGLhHIbTD9YMMFOWCBhvlE2CQuXAAHbvzNwyb/Oq2DMD2BKiMPfGKLI3939ZDDJSJWbCcOD4gM216r7H1y0MhhklZTTwTcqssnDcdsGG5TLplAYahov44OR9alAItCG9XcdYd3p0sdDZsKfUbTKoI+mkfoeazeiMy1hZz+ENqHGfa8Ta/oesN+btsQFVSPpptef2oAhH+CFiqT+sdvDKYYBD2WAa11nG75oxbBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FyCEF5OpEKLkhCdwOFoOsXGxQ6tlgX1vOs+skcy/AUU=;
 b=r/qJaEcGJYISuUnO1yMHKRYspbe524az93Tm4a29nlQ89bQu9Vh1Cm1E1026yuGtXt1dIVkwfEQ5qITLsmzKFovcBdNCHyjy6bfMFYYG9MmYcO4lblU0Pqy/67BpxmUrNQRXPrOdU6+TIKvYTn6uiZtWWkuH72lgpvUpRYiLQjx0P/2A6y1CcLMn5BhfODFB24TY+gWAbNmjWTIwVxcujnhlTAu3qWeTqYtA38d7awuaoScxrgznx6mEZ8d8EDlJuxiVqYTQTOtp86+ixIx2gU/MOXAtSqEhqiDQklK3IAHAO4qcbqTfIParKBDigP5IHsFUM65+nVXVZiZ0xrG5TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB7294.namprd11.prod.outlook.com (2603:10b6:208:429::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Fri, 16 May
 2025 08:17:27 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8699.022; Fri, 16 May 2025
 08:17:27 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 10/14] drm/i915/dpll: Rename intel_unreference_dpll_crtc
Thread-Topic: [PATCH 10/14] drm/i915/dpll: Rename intel_unreference_dpll_crtc
Thread-Index: AQHbxWmiByLhJRW3uU6+bHyB6aE3VbPU6vPA
Date: Fri, 16 May 2025 08:17:27 +0000
Message-ID: <MW4PR11MB7054CCA466B03D16E37BA331EF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
 <20250515071801.2221120-11-suraj.kandpal@intel.com>
In-Reply-To: <20250515071801.2221120-11-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB7294:EE_
x-ms-office365-filtering-correlation-id: 1b316354-a903-425a-d708-08dd9452188d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?OGZsczhrdGRocG5CRWF3dlhWN25VcFNYY1lmN01nd21MVUJ2QWdRT1J0UHNC?=
 =?utf-8?B?ckJzQW9DRmFXVjJkbWV2L1Z2YlZXM3kwajFNaVJROVlodFFGeEpmVXE5dnFX?=
 =?utf-8?B?WWFreHdiVVcrMDd6RGhHby9JSU91bW15QTVBNlJNdVgycG53ZlgxY3EvK3ZD?=
 =?utf-8?B?aUt6YVE2WC96WThmTlJ3YkJYaElOQ0F1blJNNnlFeTlkKzQvVURtVXU5Z2JO?=
 =?utf-8?B?S2JnWlNCdmhWb1VWTm02Uy9yTHBmckJMMTg1Rm1FZWlOalpmd1hlTWFNUkNI?=
 =?utf-8?B?RGdSU1oxSmJrWXlvOVFRT1BVTjR5dE5YSFJRYWt3WnQ4dlExbXRTWkdNL3Ew?=
 =?utf-8?B?cW5SMmJIWTNNN0o5aVBEZ04wOUZzODdYYk9TS1dtQXpQZGxYa2k4UVZiZ09B?=
 =?utf-8?B?WFFZVG5od0FxNkY4SjZVeWxwcnA5WCtpQStSWXMyZ1lITXdCOFZWb1ZYQzhr?=
 =?utf-8?B?RGRBbkJVSG9NZ05hTDNTRWFHVzluU3lEMHcxb0trZmJCRmpDdmNJYkxpZTkv?=
 =?utf-8?B?bWN2TXkxQmw3UHRrcFdZOC91UjhJVHMvRFNaYWZjRjFqL2lhQ05jRWdMdmVl?=
 =?utf-8?B?WExXUEJROUZ6cy9ULzFBZjYvOTdyZytTdlM3SThNMlZaeU5kcTVrMVhJYlhY?=
 =?utf-8?B?TjdSNENGdlpubUFKK0thTlVEdlhLK0ZXWS9tYTlReGJXQm5veS9HdHFWbkZq?=
 =?utf-8?B?QThqQjYzTkhrdXJVMUhyL2l2cUMyU2VFUk85QXY4a3RRRzU1aEJrWE1rWFQ4?=
 =?utf-8?B?K3VjczBqbmJncFNidUUrVERZaTlFYUtsOFFVQVg0RHQ0cEJJU0lSclU4Ykxa?=
 =?utf-8?B?eURaanZaaE1JWW9ZSExyY213d1crQXZFTEU5Z3dLQWpuT1JhaWtGY1p6MTNL?=
 =?utf-8?B?cWVSa0hxVGIvdElKUVFKKy9vVkw1aXRObzUrdFZ0Q0FWYXFoMVBpN3FyUFU2?=
 =?utf-8?B?K1ZjcjduYnQ5NFRMZm1SNmdtdFNJd2pkSHhVY01zS1Z6bnNMWWRUak9QTkU0?=
 =?utf-8?B?Q0dsb3VvQkpxaEJyeHJOT2NER0VIa0V6bnczczUvNk5haGluYUo3b2R5anJr?=
 =?utf-8?B?SDBsNUtlQUtuQnlYSVNiVUdVUWZJem1kRVdiVldjR25wM1hjRGNxSEZUNEhI?=
 =?utf-8?B?MEZmakQ3QnFtaldtam5zSFhFMmhsQ0JaeTZiejFRMzFDT2IyYkJxT0FicHcw?=
 =?utf-8?B?Y2doZFkyd3NrcE0zTE9XNGFheWR4VkYwTTJTQm5YV0NrNnBIZnA2Vzh5eFlp?=
 =?utf-8?B?MGZxVVJuUWJ1QllweHpidVpyY0R3Q2J5a05sc2NGUS9nOHV2K09iUWd0dlRS?=
 =?utf-8?B?bXgzakZTcmhtM2orK2pmVUpwd1BqbTlzVytRelc1T1BXNGYrNU85cEtYbjlj?=
 =?utf-8?B?WDczK2JocWZDWk8vR2pMNTRCNnBISHBWMyt0dlJCOUtXZDFYQmtQbVo0WGlJ?=
 =?utf-8?B?cEtNclJzc0J4QU5DVXIzUlM3WFBEVDRLMGFDNW43SEQ3UDhHRGRqL1hQNk44?=
 =?utf-8?B?T2FzM1FEOFR4VExCdFhmeTZ5dU1oTldCQWNHT1Q2T0NmL0xKSk5xOG9Bcmx2?=
 =?utf-8?B?ditUdTF3Q2FweHZOd3E4aE9lSnlUYlA1VnM5dmVyOU4rayt1ampVZWxBZE9o?=
 =?utf-8?B?TnRrSzFQRGhjY0ZZNklUTmJHeHFqQmMvRzNTSm83ejhuVGhOUjZ3REk1bklL?=
 =?utf-8?B?MTl3L0ZQVEhzL1FWcGZnUUpRNEg5bWlUZE1tY2hYWXRsU0FCUVpRaDJaRkpX?=
 =?utf-8?B?WVY3VThnakdLN2FkWERyK0h3OVlQci9hQWoxcExMaHZPMkl3NllVaUwrbmJu?=
 =?utf-8?B?c2w2M2ZCd3E1VWJPSnBMZ3M4eXdvdm5QdGFzZXlXSFVDazk3KytnWFZyOGZQ?=
 =?utf-8?B?UU41UXl0VzlHbDFUMWxCaFdsSTF5NStXMTJ4a3c1Wk8ySFQwcDVtM3Z2MjFQ?=
 =?utf-8?B?b29kRldqK0FkSGExOUpPdXlrSFFyQlFIYU1HQ0hmTHU4YVJXU3BKL0hmQVlM?=
 =?utf-8?B?ZHR0bmhONUF3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzFOaCt1UFpOb0Q0Zm56QmFrSVl5QnBuZ2x3ZnFoQXdoekM4MHhrL0hlSDNE?=
 =?utf-8?B?MDl5N1h0L3ZOb08yN1pJZzNUVUc3U0lFSStyQXVndEdERE9qVWg3MGkvK2Va?=
 =?utf-8?B?dEVvV0RTNUFTNlF3ZTgrUFlHV1FkQlhNNVlxdko5S1RLaEJ0R1RjVzZxQXJs?=
 =?utf-8?B?cUYrVnhCaGJJS0t3MWs4SHJBRElPMFE1VHMrUC9nUWZqZjMvK01PTW1ZUHps?=
 =?utf-8?B?S0xFZGRjNW5zTzhVNm9GMGhLWEtSczh6a1UzZEtyUDl0TzA2YWxHcTdFWkRN?=
 =?utf-8?B?c0dORDNJZUpBOHJ4Q0tja1FZbTUwM2k5STJ2aldHeGNTWHlOZ01ONk00MjlZ?=
 =?utf-8?B?MkZPS0R6RU1TL2dsNTF1WGtEdCsxSUlRVURrVHh1c2pyMi9HUHpQTVFIQnEr?=
 =?utf-8?B?b3lOaXBDTmoyakVtbDB4UUFpWHZtUlJIQzFueDNWaGt4cXFveEk4ODcwVkQ4?=
 =?utf-8?B?VDhueDZzTWZOZkVJTHlZN09wS3d2ZWs5NzJvRGpVKytYaTNmaElzYnhpL3o2?=
 =?utf-8?B?R3FOVThWMW9UVEtwQWVBb2pUMFZzT3hlSnRGM0k2K2NVT09oTmYxSVFoRXlv?=
 =?utf-8?B?WFUzaVMycG85Y0hYemtTWXdkNGVqeDJBRUt5MWxDUXY3anNPRUxBbklET1Nw?=
 =?utf-8?B?dmNzTERqamJGTUtsWkN0U1RMZ0tpc1l0c1N5bWFmVUFJcFN4NHpJSGtQVk5F?=
 =?utf-8?B?S0xuNlJBbm50QVVTNUxyYXdCcVo1S2lzMEgySG8xQW4wTS9Md01pZ2M2SHJD?=
 =?utf-8?B?cW8rdG92cDN2UVk4aFpzTms4TmVTdnkxUThmMXp2ZEFDWFBSb3VhOTdrcUxE?=
 =?utf-8?B?d2ZzYWxZWmtjZ3VSLzJUV1lXZHBNQ2N4MnEvRFdpc05UR2UySldTS3dWeU1G?=
 =?utf-8?B?Q1hVWnNuV05BRE1kS0I3N3QzeHg2cC8vUHFXb241dzkvUUNORGFIaGRjVmlJ?=
 =?utf-8?B?M0UvY2dlVytHTXNIS2YvZDFWQU9idDhMelhYQTAzMFBicU1yTTZiZWJBeENt?=
 =?utf-8?B?bzJqWm5jUEkrWnJtU0FpS1daWDJEbGZ5QlZFalk5SU9lTjJhS2lvQzQ0Tklr?=
 =?utf-8?B?dnByZm1JcEhiRkRoRkxMYmR1dnE3b2s2M3o2RVBNeDJHeldqeDVmby9yYUNN?=
 =?utf-8?B?QjcrWExoSTdFN0dXaCsrNC91MFY4VVJReVZkVEFoU3NPTENqUmhGKzk1Uk5x?=
 =?utf-8?B?ei8vSFp3dit4aDYrY1drYW41bCtma1dRQ3Q3d2ZpR2lPZEpJUFZvN2toSGgz?=
 =?utf-8?B?aDZjUk4wQitERzZVUUl5UktYcHFTU1NnUjRPSXBaZGQ4TGZCT2tWejJVemVC?=
 =?utf-8?B?ODhPQVJ1VGpCeFBneWNBcXNpODlOR3d0TS8zOTF0SDNUMmtPd0N1djdDd28r?=
 =?utf-8?B?eUxjaDRxNFMwMjh1SUdPVUNSbVFNMlhWQzFFd29EWHFkRjFlekZlQnE1SmFy?=
 =?utf-8?B?aTdlSXo4L2NQOXl5b0pJbmVKdnZuOHBUZjhXbTBheHBoMFdGMTRNZ1lOM0E3?=
 =?utf-8?B?M0NsaUJYZXpZRlpSTzdGZ1VNY0toWHl2K0dueWhmdW1aOTVlN3NDZzFpVHN1?=
 =?utf-8?B?SldGQStMblVFcEFaajNxV0RlZGtXcWFXdE5XKzJPSkYyVERFOHhrZG9mN0pz?=
 =?utf-8?B?ZnduOTJUdlk1WE9NenF1RHIyTjhjQmpVVWVLUHpmRVpRelFYc0ExQWdUVURU?=
 =?utf-8?B?Zjg4cmFldHNudmgyUkxmeCszZkQyYXZmaHh1Sk0rM0xXVnFaVnAwNTZCR1FI?=
 =?utf-8?B?cTEyVkNReEI4K05jWkM2REpubTRyRVBPYUFDVjNkMUhrblVnazhpc3pxM0lI?=
 =?utf-8?B?Yll3Qnp2UzlSdSt0M2RHN1dkTVl5UFNtRFFyelEzNmNRdzlmUEw3Tk4xT0d2?=
 =?utf-8?B?RFMvNXJXTFBOdUxXbHRpdEQrbThYTDdTbk1uSlZmSUtKNnRCY3ZDNVd1TWp1?=
 =?utf-8?B?NHRja3E2N25kNFFXalducEhJOU1hcFFvY3AzdmQxZHlYSVY5Z2tvVktZYTRo?=
 =?utf-8?B?Ullldy8rQkxRWHFLenZSOEJsYUxEZjIyWm5zU1BsaFFSOFBmUFM4OEZSSjdn?=
 =?utf-8?B?VGFYckVXRGszaVhWdU56Znlnb1Vsd1JZZ0orblJCOHpadnd6RlVQWVBsek1m?=
 =?utf-8?Q?XuD1v+Rnx3SjekI8tOanUIsku?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b316354-a903-425a-d708-08dd9452188d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2025 08:17:27.6234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GQdckiOrWbFDCtnpbsXGqvOh4c47T+0j2c2ug6ODT4pWd20SJFnScLAo4woNyu5x2+afquRvZMZjUccKYjlEDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7294
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAxNSBNYXkgMjAyNSAxMC4x
OA0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOYXV0aXlhbCwgQW5raXQgSyA8YW5raXQuay5uYXV0aXlh
bEBpbnRlbC5jb20+OyBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBO
aWt1bGEsIEphbmkNCj4gPGphbmkubmlrdWxhQGludGVsLmNvbT47IEthaG9sYSwgTWlrYSA8bWlr
YS5rYWhvbGFAaW50ZWwuY29tPjsgS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMTAvMTRdIGRybS9pOTE1L2RwbGw6IFJlbmFtZSBpbnRl
bF91bnJlZmVyZW5jZV9kcGxsX2NydGMNCj4gDQo+IFJlbmFtZSBpbnRlbF91bnJlZmVyZW5jZV9k
cGxsX2NydGMgdG8gaW50ZWxfZHBsbF9jcnRjX3B1dCBpbiBhbiBlZmZvcnQgdG8ga2VlcCBuYW1l
cyBvZiBleHBvcnRlZCBmdW5jdGlvbnMgc3RhcnQgd2l0aCB0aGUNCj4gZmlsZW5hbWUuDQo+IA0K
PiAtLXYyDQo+IC1NYWtlIHRoZSBuZXcgbmFtZSBtb3JlIHNlbnNpYmxlIFtKYW5pXQ0KPiANCg0K
UmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2ln
bmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jICAgICAg
fCAxMCArKysrKy0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
bGxfbWdyLmggICAgICB8ICA2ICsrKy0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMgfCAgNiArKystLS0NCj4gIDMgZmlsZXMgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+IGluZGV4IDJiNTkyNDIzZTFkMS4u
MTI2NWJjNGI0MzA3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcGxsX21nci5jDQo+IEBAIC00NTEsNyArNDUxLDcgQEAgaW50ZWxfcmVmZXJlbmNlX2Rw
bGwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsICB9DQo+IA0KPiAgLyoqDQo+IC0g
KiBpbnRlbF91bnJlZmVyZW5jZV9kcGxsX2NydGMgLSBEcm9wIGEgRFBMTCByZWZlcmVuY2UgZm9y
IGEgQ1JUQw0KPiArICogaW50ZWxfZHBsbF9jcnRjX3B1dCAtIERyb3AgYSBEUExMIHJlZmVyZW5j
ZSBmb3IgYSBDUlRDDQo+ICAgKiBAY3J0YzogQ1JUQyBvbiB3aGljaCBiZWhhbGYgdGhlIHJlZmVy
ZW5jZSBpcyBkcm9wcGVkDQo+ICAgKiBAcGxsOiBEUExMIGZvciB3aGljaCB0aGUgcmVmZXJlbmNl
IGlzIGRyb3BwZWQNCj4gICAqIEBkcGxsX3N0YXRlOiB0aGUgRFBMTCBhdG9taWMgc3RhdGUgaW4g
d2hpY2ggdGhlIHJlZmVyZW5jZSBpcyB0cmFja2VkIEBAIC00NTksOSArNDU5LDkgQEAgaW50ZWxf
cmVmZXJlbmNlX2RwbGwoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAg
KiBEcm9wIGEgcmVmZXJlbmNlIGZvciBAcGxsIHRyYWNraW5nIHRoZSBlbmQgb2YgdXNlIG9mIGl0
IGJ5IEBjcnRjLg0KPiAgICovDQo+ICB2b2lkDQo+IC1pbnRlbF91bnJlZmVyZW5jZV9kcGxsX2Ny
dGMoY29uc3Qgc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+IC0JCQkgICAgY29uc3Qgc3RydWN0
IGludGVsX2RwbGwgKnBsbCwNCj4gLQkJCSAgICBzdHJ1Y3QgaW50ZWxfZHBsbF9zdGF0ZSAqZHBs
bF9zdGF0ZSkNCj4gK2ludGVsX2RwbGxfY3J0Y19wdXQoY29uc3Qgc3RydWN0IGludGVsX2NydGMg
KmNydGMsDQo+ICsJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbCAqcGxsLA0KPiArCQkgICAg
c3RydWN0IGludGVsX2RwbGxfc3RhdGUgKmRwbGxfc3RhdGUpDQo+ICB7DQo+ICAJc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGMpOw0KPiANCj4gQEAg
LTQ4MSw3ICs0ODEsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF91bnJlZmVyZW5jZV9kcGxsKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiANCj4gIAlkcGxsX3N0YXRlID0gaW50ZWxf
YXRvbWljX2dldF9kcGxsX3N0YXRlKCZzdGF0ZS0+YmFzZSk7DQo+IA0KPiAtCWludGVsX3VucmVm
ZXJlbmNlX2RwbGxfY3J0YyhjcnRjLCBwbGwsICZkcGxsX3N0YXRlW3BsbC0+aW5kZXhdKTsNCj4g
KwlpbnRlbF9kcGxsX2NydGNfcHV0KGNydGMsIHBsbCwgJmRwbGxfc3RhdGVbcGxsLT5pbmRleF0p
Ow0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIGludGVsX3B1dF9kcGxsKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLCBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcGxsX21nci5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcGxsX21nci5oDQo+IGluZGV4IDg4YTgxYzg1MGNmMC4uZjhiYTdiNTJhN2FkIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oDQo+
IEBAIC00MDQsOSArNDA0LDkgQEAgaW50IGludGVsX3Jlc2VydmVfZHBsbHMoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
cik7DQo+ICB2b2lkIGludGVsX3JlbGVhc2VfZHBsbHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ICAJCQkgc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiAtdm9pZCBpbnRl
bF91bnJlZmVyZW5jZV9kcGxsX2NydGMoY29uc3Qgc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+
IC0JCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsICpwbGwsDQo+IC0JCQkJIHN0cnVjdCBpbnRl
bF9kcGxsX3N0YXRlICpzaGFyZWRfZHBsbF9zdGF0ZSk7DQo+ICt2b2lkIGludGVsX2RwbGxfY3J0
Y19wdXQoY29uc3Qgc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICsJCQkgY29uc3Qgc3RydWN0
IGludGVsX2RwbGwgKnBsbCwNCj4gKwkJCSBzdHJ1Y3QgaW50ZWxfZHBsbF9zdGF0ZSAqc2hhcmVk
X2RwbGxfc3RhdGUpOw0KPiAgdm9pZCBpY2xfc2V0X2FjdGl2ZV9wb3J0X2RwbGwoc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJCQkgICAgICBlbnVtIGljbF9wb3J0X2Rw
bGxfaWQgcG9ydF9kcGxsX2lkKTsgIHZvaWQgaW50ZWxfdXBkYXRlX2FjdGl2ZV9kcGxsKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBpbmRleCBlZDRmMzA1ZTBkM2Uu
LjIyYzUzMDJlMzc5OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gQEAgLTkzLDkgKzkzLDkgQEAgc3RhdGljIHZv
aWQgaW50ZWxfY3J0Y19kaXNhYmxlX25vYXRvbWljX2JlZ2luKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjLA0KPiAgCWNydGMtPmJhc2UuZW5hYmxlZCA9IGZhbHNlOw0KPiANCj4gIAlpZiAoY3J0Y19z
dGF0ZS0+aW50ZWxfZHBsbCkNCj4gLQkJaW50ZWxfdW5yZWZlcmVuY2VfZHBsbF9jcnRjKGNydGMs
DQo+IC0JCQkJCSAgICBjcnRjX3N0YXRlLT5pbnRlbF9kcGxsLA0KPiAtCQkJCQkgICAgJmNydGNf
c3RhdGUtPmludGVsX2RwbGwtPnN0YXRlKTsNCj4gKwkJaW50ZWxfZHBsbF9jcnRjX3B1dChjcnRj
LA0KPiArCQkJCSAgICBjcnRjX3N0YXRlLT5pbnRlbF9kcGxsLA0KPiArCQkJCSAgICAmY3J0Y19z
dGF0ZS0+aW50ZWxfZHBsbC0+c3RhdGUpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIHNldF9l
bmNvZGVyX2Zvcl9jb25uZWN0b3Ioc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0K
PiAtLQ0KPiAyLjM0LjENCg0K

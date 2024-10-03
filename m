Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533F098EF1E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 14:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E24B10E828;
	Thu,  3 Oct 2024 12:22:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jd7se5GT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC2EC10E236;
 Thu,  3 Oct 2024 12:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727958150; x=1759494150;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=raA+EwEae7bgKJ+PJPr+XKoY4NX7pyuRooEKsjbicc4=;
 b=Jd7se5GTZaw2deu/4pPPeMvNWIVs3GbvQGCTkG/5v+3XRSTJIshxgVNf
 VcSUoFHhMMphkCwiVdxTR/fd2LJpR2LwdJexGwjyfurouZLH2eWUAM0UK
 8UBVb1pWn64FZGytgKWkFuywmdcshVPwswt4Bg5X4nY7wtixF/YvnxNDM
 dpBgOrXYNH2nsvsvAlTp/BDxl73lw0lQzUN5PJ1gFhaQ538qp7aZFAEFK
 UlEiJEfqTgftlafG/E4qcq2rj2mVzyvAEL17/rg3qElQxSz6naLnYze57
 dZrS5KfjWdGMeeRMSblk8j+VX9Y+Y9bOVEqcUrRro0Unq6g4KWTH6y9DF w==;
X-CSE-ConnectionGUID: DVvZvpuETrWVBwi54ky2fA==
X-CSE-MsgGUID: LiOX6viKSRqufwSIbL4THg==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="14765353"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="14765353"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 05:22:30 -0700
X-CSE-ConnectionGUID: n16HfHCfSYWVen+f9D6Osw==
X-CSE-MsgGUID: qceykrGIQDOOgCQxZVg+mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74185463"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 05:22:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 05:22:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 05:22:28 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 05:22:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HJGzJlIJW+JSrIjMrWzu+4f7uhDj4PpZ+q6Q/Wa85Dt8q37BVuPQJPxkqy3T7Oaf0mBCLl/bd0vlceWLlXTCDLkAENcLSlA1wqO0iXf47KpWYgy1lFujuOMNUkzlPFDoaUftUJe27PxdymyUVobVWZLg+lb4djHr4yUp1+rQl285zZW2m6ZVv/sMGedZZDk4wTXVXFLDdEqSRi2Bt1wxAZFiD1+SvJSlJihCrmQIZOCJyqQPtRMu2WgMGYHYccdoGmTrgixHXlUQzbUEwyyNfwISiJBsvpaRridbT/YTG+0aAmg+mGcsoWvRQumu5IYKrpMoZaAczMdcAjNcmaHsYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=raA+EwEae7bgKJ+PJPr+XKoY4NX7pyuRooEKsjbicc4=;
 b=KqKMar+N9yWRSc7DgB6izHVy0FgRSKCOAx/A1OnFTTzqJPX05I7h1u9ddV9j2cd+jZ7tzAzW8f6xWy6NNFwhkgLnLRA1qu+DwfL6c7U20jkMFi288RL8xHi4qZSBFxjMXyECN+ctRNSuO8levdn85LxIQSqsLPTsEyA2tIiMU0J6W4GKuEnpkQC+2mJeM45cU+SQwDPt4BZ3qg86lBtneEWYXnCqUmC9OGTTDeg0DVrpN4CiCkyd1Mntf3F0aQKSid93hYSWCgg3m8ZR3iVxejOyYKv9ahHgQFFS5sGQ+Sv8Y3WcNk6Vt+RYFzH5lvxrhDbQSN97xD/ZD1K4C2YCqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH7PR11MB6747.namprd11.prod.outlook.com (2603:10b6:510:1b5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Thu, 3 Oct
 2024 12:22:26 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8026.016; Thu, 3 Oct 2024
 12:22:26 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 25/31] drm/xe/display: Move hpd_poll calls to later
 runtime stages
Thread-Topic: [PATCH 25/31] drm/xe/display: Move hpd_poll calls to later
 runtime stages
Thread-Index: AQHbDsKDfJ+mIMHOJkOe2KwgO3+NwLJ1AEYA
Date: Thu, 3 Oct 2024 12:22:26 +0000
Message-ID: <bbbe05bb809a68c9d48b263ab50d25a68a97af1e.camel@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-26-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-26-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH7PR11MB6747:EE_
x-ms-office365-filtering-correlation-id: 8da04b9c-7df6-4356-fa36-08dce3a60ae4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WG9SNGcxM21MTjhFdEVvZ3dvVUl0aHJwTGNMK2VxSWZ3cXdLZDJoRE9HZlpE?=
 =?utf-8?B?a3paaFF4RExmd216OTNydWxQNVQwQ1JWZzdWVk4xOHdWM0lsbEdGZlVqWjdR?=
 =?utf-8?B?anhLNm5QVmp0NTZpYVgwUmlISk1WUkRsa09tcU5UZXVJY0UvZlQ1Rkdxd3I5?=
 =?utf-8?B?SVd2WS9tVk5NN1NDbEFOUnhaNVlmK0RUS04vN2VEMmxqdFRzdEN2bC9hc250?=
 =?utf-8?B?aEJ0Uld1Rk1sY00vNlE5Qy9TR1JnTlNCa25kM3hvUjJvdHZMdnhmY2cyQ3lV?=
 =?utf-8?B?Q2EwZEVwMEhidHZITFBxQkl5amF6Y01BajA3eno1eWppKzJITlF0aHUyYzky?=
 =?utf-8?B?eUN0OExUUFp4bnoyZUdYZjlXMWo5OUZsVVRyT2ZJZTFIUjhHUm5FUE9uWWNE?=
 =?utf-8?B?blN3K2tDeDIvT2lKMDhvcGhlZ3Q2aHhSWEFNZnZVRStZd1FmbnNhK2pSRGJX?=
 =?utf-8?B?Nkpua0k1Y2M4K0NxWGVOWlNZaE5VQ3RNUDNRQ201UHFZbFY5M1R4YXJsaHlo?=
 =?utf-8?B?cmhwcmNzR0FsSHl5c2tYMGRwWTB5b3pTbVcxVWw5c2s5b1o0SUJpQXhEM3Nz?=
 =?utf-8?B?eWkvZGtzZ2JGV05QaDE2Nk5JT1lxNGxkaW1jMEE1NW80YTdvaE1TK3BnWnl2?=
 =?utf-8?B?c1RrWHdJeEx0OGdlTFdzNSs4VFNoanFadGd2dE1SSlpmSDc0UmJETlAxcG85?=
 =?utf-8?B?dlhpdEYxTzN1NnNZdzBOSWgvVWVXZnRSeGZvQlhhdkJjeDdmWWR3bTFJTXdW?=
 =?utf-8?B?WWJDV1BUeEVMbThNd1VTY0hTSHhOY0ZkUEZENmNzVGRKSGpLR1VpWUxRMHFY?=
 =?utf-8?B?WW1YbHNJWnFaVWxidlVPTlRZYzZldXZML1VwTmF1THJvWWh1aXA3V0lEQk1P?=
 =?utf-8?B?Z2I2RHNjQ2hWRVlweHNrbGpZYlBsZllOc1BYc3RrOFh4cStVT2gycDUyUjZF?=
 =?utf-8?B?Ni9BdFg5c2kxdTRBYmRoeVFEUkxyb3hnQmtjYmNJU2krWUVocjFvN293MFFr?=
 =?utf-8?B?bTI4Y2o3emcvbStTZFl3cXBsdXlWVUE1VEdvUmNRditmdjVKQ3lYcGI1UTAr?=
 =?utf-8?B?RjJia3Bpd3JqWU1QMmZtd21udStGbDk1OTBaa09BQkJpT1IxbXJFRDZBeG5H?=
 =?utf-8?B?Um42aWY5MFBUTkQ3R1ZLUDdhK0VGQmt3OXhRTE5kNVRtN2l6bWFINjM4WmlB?=
 =?utf-8?B?UlBXaXhhVEZHNTltRFFmSG5oZGxtY3RUYzNaWWZVQXRCSG16M1BOUkRqN2J3?=
 =?utf-8?B?WEJMNkRzMFY2ck9ldVNBbHNsVjk0Zy93MU4zeUNQK1JqaGl1WXZyUEZ5OWFn?=
 =?utf-8?B?akJOd3RwcDN3N21WSTNhNDdKdDJsNFBHSFYyWlFtS1Avek5HZ1ZiQklMNVFO?=
 =?utf-8?B?eHo2dVBCSktWdEFVWWtJUjBJbUpMZFpLRUNKcE9ZSDBHaURBZnlsQmY1azRZ?=
 =?utf-8?B?clR5WFJNbG12RWR5cTRKWUdtYmRodkpOQ0d4Z0pmNFU1K2RBOUlkaEtMWXRQ?=
 =?utf-8?B?RDJ3MlF6OTR3VXNBdVdxL2cyaVBqS210TDhUdE9KZHd4MzNSNnRnSjBKN3RP?=
 =?utf-8?B?eU52cnZQaysrTXFPSG50LzFJR0FnRFhjd3ZScWlKZjdlS0ZNS0hqcVB1NStv?=
 =?utf-8?B?aGpUeHdINDNJME1hYW1NVWVMWk1lT3lwMW4vQjlZYXNpeG13ak5sbE4rZ0Z2?=
 =?utf-8?B?WjlUZlp2UlNhN284TG9TVDBCd2FnQ21FNVgxM0xuVWxFUlh0SkFIcUx3WTVz?=
 =?utf-8?B?KzBFNXdWU2lJS1I0L2xLNUVJSzJna1BlYnplYXZ3a1ZiRWoyREtaWWs5V2xs?=
 =?utf-8?B?T3pJUVF4di9BWFo2cS9wdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RTN3T2xYMVV2aVhoMDZ6eHpJdFYyRnBBblNJR3JxOFFRTk5JYnZ0cDFhU0ly?=
 =?utf-8?B?c1pmL0ttYkgxamNIMzBhWXF5eGhIVmRTQnVkUVQ2VkxWczVMdTdPTk1KYTc3?=
 =?utf-8?B?YWVYNUU3ZHZhUFJJaGZaa1JBSjNyVWJPZHRORlhhZWxTWklnS0JiSEs2aVNo?=
 =?utf-8?B?bGZqTEtnMllxKzMrWlcvOW9oZUFjdFdpOEtkQjdLK24vLzRSMVE3YWlDZjlz?=
 =?utf-8?B?SkZHdWhrWjY0ejErQ3pSSVR3YjFybGd4MXFaSzVKTTU4blhORDdGdDlmTXZy?=
 =?utf-8?B?dkxNTmtydHVHLzhFWnUyQjFXTjFYZzIwK2gwNm5lNHVrNkxUUkg0WXJablR5?=
 =?utf-8?B?UWYxUC92eC9JYkJpWkRld0U4d3NJQjNzanBjMFBTL2haU0Fjc1Z6QWdNak00?=
 =?utf-8?B?NTdLaDRKSUlJQWZvd1l4U1hDcVVpZGx3T2YwS1VoSC9oWVdFMENlT3BvQy9F?=
 =?utf-8?B?cHEzeEg1bFczc1hScFVKRTdNd3c2VEw0TyttTmVDYUpyOERQa01ycHpYOGpy?=
 =?utf-8?B?YnN6M0MxbUtQeTN2RFhuU0s3OEVQaHdkVlhCcXFTYzlpNUJodFJHU0YvOTFQ?=
 =?utf-8?B?QmlqbUI2RVNIRFdtcitnNDY0Y3F2SHFpaDhVSERTZTlEMlZSNFNxY3VhUHhH?=
 =?utf-8?B?OHRhay9MdHJRSFVoc05wQThNdUg3V0pCQ3JsaGc4WDdCelBzMWxPaTdrTW5h?=
 =?utf-8?B?azMxRS9IYlkzUVc0YUtra2xGMXUvRjcrUTRLbUxiQk04REZVajhoVEgwZEF6?=
 =?utf-8?B?dnFTbnhkcDdDVnhCNW5JTHo5eGpLT2VUZU9nbUFwNWNsU2IzQjMyOFBjbW9k?=
 =?utf-8?B?WFpnRmdiczZheXNnYXZPRWpxbjM2cmZvekdYZkpxdW10dENtV01pMTRVejlv?=
 =?utf-8?B?TW8vMnlaMXlwMWptcS9XYVVScW9aSnd4SnZoTXJHS2E5aXhsQUhxR3IvMHgz?=
 =?utf-8?B?NmI5djFkSWppcEdNMjN6TEJpa0JKQjZaU3JUUTBwRnhNS2xpSVpsMU9nTWRO?=
 =?utf-8?B?VkZHK2JFOTRyZjZXY2wwRGNBM2VrSnlkMENhWm1BYndxWWdBL0xVV2tqaks1?=
 =?utf-8?B?WUZaYXdrem44bEwrbVhQYktpZTNWOGgyVFkwc3VQRGFoaERtMFoxSVJuQUtF?=
 =?utf-8?B?VDV4L05UZEFld2pMbEJFRkwyYWNPYmFWalQwQTZadndEMFVIUU1EVmtMRTJa?=
 =?utf-8?B?N1RJLzk4L2FTWUM1dGx6M3JKcWxhSXJSVFcyUHlHSDVlSjR3dk1UbU1QMDZJ?=
 =?utf-8?B?bHdwYzkzMUtIZ0p2d00ySmNKNmUxaWNUTXo4YW1Xc1doamI4RVRqQTNqemdj?=
 =?utf-8?B?azNMdGUzT2hWWTVGLzJ6SE9DMFY1OFVBSHVsMklBaGVyckFnZWxINExiODB0?=
 =?utf-8?B?dWd5VkFNUm1JNTBGYklObjJ0TmhiN2I4aTJGUTlXQTh4OTg2TEN1eVJCaHUr?=
 =?utf-8?B?UW16VVdtZEEyOGY1Q0JXTXFzNHhvL0lZZnR4TndScHJ2b2xYT0pmSU84ZDlz?=
 =?utf-8?B?VnNmVkpRcitwQVR2YUljT1dXVzQ5U1F4Q0RHS0xuOXhOOVUvN293QXhwaG91?=
 =?utf-8?B?bVFzN2FVL3lKZG5RcEpBL1FuOHFMNDN0RnY4SnV3ZjRWamsweDZYREJtVGs1?=
 =?utf-8?B?c3RPa2QwaXFsOThMY1pjdU5UYUZPZmcxSmRhTGJkbWlKenYrM2pIbHlMWS9V?=
 =?utf-8?B?OW9LbVhYWk52VFNyRFRoSmhkVkZRYnZMeWZ0WVJCQlV3UXNTYVhLKzkwamEz?=
 =?utf-8?B?RjdTUjh2YlFHVmI2OVdRaWNVTlgxTFBNaktCUTJlb21URjd6UUxaQkwzMGIz?=
 =?utf-8?B?cWVlS1l4ZlZNL3JUK3llRSs5bXpFRktjQlg0cVdHYVUvK0NIdUxKUERFdWVD?=
 =?utf-8?B?T2RYUksrSmI1OEFtT2hOK1MzTm0zQzN0NUNsM3BxNTJYeEp0MEt4TUJDNE44?=
 =?utf-8?B?cTI4WU0xTGcxTVNjWlJOeHFINFMxZlRvZjlVM242VXNadElkU1FZWnkrM1Vl?=
 =?utf-8?B?TDB1b2ordmtpUmttcm9TbjNnampucFEya09wMmpQVm9CN2VjMlJBbWFmSXVo?=
 =?utf-8?B?dWU4YTQzQm5ZL2dLMTc5eVQwck5rL0xPeTcwN3kzRjd3RU42TkdOWHN0eXN5?=
 =?utf-8?B?RmdJS21Ybk40cFFIVlV4d2VnaTVDcHJLWkMvZjZnZ1dBcDc2aHJKM0U0Z2ZJ?=
 =?utf-8?Q?jhU42cyutYxNDcNP6DvArS0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3BEC82D42F31104EB7FD985F98760D62@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da04b9c-7df6-4356-fa36-08dce3a60ae4
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2024 12:22:26.6080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7u0RPXvs+Y2VIYAnzJgOqgq4cFQKv5XucOa+dso1Lsqo3rLS9AFZNE+4Rrnj8q8JnDiDoR7YmshzVmkxw+ECLu0+lxGDYPT/ejRyA8IAy8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6747
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

T24gVHVlLCAyMDI0LTA5LTI0IGF0IDE2OjM1IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6Cj4g
QWxpZ24gcGxhY2VtZW50IG9mIEhEUCBwb2xsIGNhbGxzIHdpdGggaTkxNS4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gLS0tCj4gwqBk
cml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMgfCA3ICsrKy0tLS0KPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpSZXZpZXdlZC1i
eTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+Cgo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMKPiBpbmRleCA0ZDFkZDUy
OTRiODkuLmM3NTg4NzRhOTA1OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlz
cGxheS94ZV9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9k
aXNwbGF5LmMKPiBAQCAtNDM3LDggKzQzNyw2IEBAIHZvaWQgeGVfZGlzcGxheV9wbV9ydW50aW1l
X3N1c3BlbmQoc3RydWN0IHhlX2RldmljZSAqeGUpCj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KHhlLT5kM2NvbGQuYWxsb3dlZCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHhl
X2Rpc3BsYXlfdG9fZDNjb2xkKHhlKTsKPiAtCj4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfaHBkX3Bv
bGxfZW5hYmxlKHhlKTsKPiDCoH0KPiDCoAo+IMKgdm9pZCB4ZV9kaXNwbGF5X3BtX3J1bnRpbWVf
c3VzcGVuZF9sYXRlKHN0cnVjdCB4ZV9kZXZpY2UgKnhlKQo+IEBAIC00NDgsNiArNDQ2LDggQEAg
dm9pZCB4ZV9kaXNwbGF5X3BtX3J1bnRpbWVfc3VzcGVuZF9sYXRlKHN0cnVjdCB4ZV9kZXZpY2Ug
KnhlKQo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGlmICh4ZS0+ZDNjb2xkLmFsbG93ZWQpCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kaXNwbGF5X3Bvd2VyX3N1c3BlbmRf
bGF0ZSh4ZSwgZmFsc2UpOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9ocGRfcG9sbF9lbmFi
bGUoeGUpOwo+IMKgfQo+IMKgCj4gwqB2b2lkIHhlX2Rpc3BsYXlfcG1fcnVudGltZV9yZXN1bWVf
ZWFybHkoc3RydWN0IHhlX2RldmljZSAqeGUpCj4gQEAgLTQ2NCwxMiArNDY0LDExIEBAIHZvaWQg
eGVfZGlzcGxheV9wbV9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QgeGVfZGV2aWNlICp4ZSkKPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKCF4ZS0+aW5mby5wcm9iZV9kaXNwbGF5KQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfaHBk
X3BvbGxfZGlzYWJsZSh4ZSk7Cj4gLQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoeGUtPmQzY29sZC5h
bGxvd2VkKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgeGVfZGlzcGxheV9mcm9t
X2QzY29sZCh4ZSk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfaHBkX2luaXQoeGUpOwo+
ICvCoMKgwqDCoMKgwqDCoGludGVsX2hwZF9wb2xsX2Rpc2FibGUoeGUpOwo+IMKgfQo+IMKgCj4g
wqBzdGF0aWMgdm9pZCBkaXNwbGF5X2RldmljZV9yZW1vdmUoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqYXJnKQoK

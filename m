Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02754A357EC
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 08:32:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D37F10EBDD;
	Fri, 14 Feb 2025 07:31:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/84fYBH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD0710E24E;
 Fri, 14 Feb 2025 07:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739518316; x=1771054316;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=nrQBvduwRKtWtniYttXp3fJxd8GR0wA0L7M1UxlsQKw=;
 b=C/84fYBHcuTFYXMMzLARcxAeHqhyujCW5uIF8KD4I9PqvvraAEO094Lw
 MX/ktKnnYhWAWq6H5bcgIr7+IrV4gQ45bSehvdTo2A+A+CKydyEQgls4P
 G6mKXmD+VSwvITmMCXd4mRebJWsWejdYKMZvQTz1ielYLp2H3eHOSOMpf
 HAy9W4XqUKuYuPKS2gYxcEVD+vz7mcFSS9VljJ6PO+3n5yBUqroy0y5mP
 fg0+RzirT1eqIVuQt1WkC2kceiExdTazMnDMsFHsQocCPlwg+EHajbTSC
 PHsmqcKKJDGMwSOVHDYAI2YN/AxAQI6S19HwBru/M5L6ac1A0Om1Pk/Zk g==;
X-CSE-ConnectionGUID: YSayXDO9RHyrN30K0sxoTw==
X-CSE-MsgGUID: ZG/vOVEMS6ivLzf1alOAmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57664447"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="57664447"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 23:31:52 -0800
X-CSE-ConnectionGUID: 8ebcgp1KRqWOIGfOVni0WQ==
X-CSE-MsgGUID: cnIVoVqFR7eZuirxtH+T2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113874192"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 23:31:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Thu, 13 Feb 2025 23:31:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 23:31:51 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 23:31:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E7jf0dPrQ9yaWB6UjjtUCUXxYaAE+XefWNg+k5SlNwJwG+DaWRLs+nNkk3WbCv9mjee+IvhdXaRdmE/tTKiNAaNn+ak3qB9AKiYQqJH57cdcqbXsWEuDSZa8VoIhl+YgxSgJQHtd4Bqt89iufODoMrkw2tKoGSiyKG8Ww/nnN4wSGNLQ5kGQh8c04ZcMJ5HEhghyjOR+pVw89lNrgh7oNltQJZKe3VxA2s4gf+yA0HOM/aNwtXgCnPz/mE+m1KkeeAZGPzc3LKFFB6TH5qeTMWkKyoebCxfzxtfrkI3ZOcPhwZo0K2rdDancQsi/MWsJLS0v9IPHnBhO5APnIi2LoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nrQBvduwRKtWtniYttXp3fJxd8GR0wA0L7M1UxlsQKw=;
 b=kZXnR++g3PItR9jYyQUPz9Wjg8N+V6BEXR5RYK2uFAq4JPxdFBvmFTaiuEo2BMglGUYmRLg6vkMelXGkKHab7KNTjgBamsABiSCcHjLYwIFMfY7Slgh0YFqALVy5EYVinD/KBstFekD3k7xawVQAR6MFY0yvLCZ+6Nh28ZLPxWADlbmZDvi/UOhk6eRUjxkExdJ+Mf+uYiBmTsnSkBxVuQR033xuIOevTb76EfTJth4pRFyD0Pe6BIU3Jt3JeRBuhYPEYqruKPxPkRT39oQ9ZQJnEyEPck0GHqYTIojEXtCPKJExUOkEtGkC9F3ufUzQwXKLx7kQLRQxYqlKALWTbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB6619.namprd11.prod.outlook.com (2603:10b6:303:1eb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.22; Fri, 14 Feb
 2025 07:31:22 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8445.013; Fri, 14 Feb 2025
 07:31:22 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
Thread-Topic: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
Thread-Index: AQHbfgjEaRyNjWtBcUS0DJXlzCOyH7NGNWUAgAAzbIA=
Date: Fri, 14 Feb 2025 07:31:22 +0000
Message-ID: <6935c062ca74b347064f260787c2ac6c46dfd5cb.camel@intel.com>
References: <20250213111628.2183753-1-jouni.hogander@intel.com>
 <SN7PR11MB67505CB0547E75F422B24B92E3FE2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67505CB0547E75F422B24B92E3FE2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB6619:EE_
x-ms-office365-filtering-correlation-id: cc757666-1cea-445d-eeb5-08dd4cc994ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?L1JBcDhlMFYxNEhIMjJtTjE4UVRCVUVhMllRVkd2ZTk0Q0dCeVBMQlNZNUVp?=
 =?utf-8?B?YXhvQU5PZEIvVm5QSlY0QXBSV3hNcURUUnFVZ1NURFE2andYQ3NJZGxEN2l4?=
 =?utf-8?B?dlZqZGxiMjVJUklnRHRoS0NFV0RVNnNiUmNVR3lJNW5UdC8ydEc1YUZTcDMv?=
 =?utf-8?B?WTVZRjVPakNOUktaVldjWWxrYXVZdTVUbS9kbEdBd0NSOENHNzdkRWlmSFl4?=
 =?utf-8?B?a0tJSzczRUp0dFB2aFRVUVFYZkJBcDNpdHVWY3N6VXhHQUFTYWVlb3h6RGUx?=
 =?utf-8?B?SndrbFlVM0Y0aG9BRW9xYzZaUEN4Zi9ZZmJtQ09QZmtLZHVDWUdQZElnNnB1?=
 =?utf-8?B?SithZDE5M2JISUNPWklDeWpmVjd5UGxUYjE5T0pqQ0xWLzVWWTRNNkJXOTVO?=
 =?utf-8?B?aDJqY1VLWWZaZ2ZaRHFQbENhL1ZkbC9uUGRXTXJmTlBJNWQyNUI2NXdHbHp0?=
 =?utf-8?B?UXBJM21Ra3FVQ0ZvQ3lhZHdxZEl5dVVPbUZvVTVHdFhkQzZjOUdtRTdzOE9D?=
 =?utf-8?B?aURHNm8vN082cFFEWE4yMG5qRGs0VzlsTVJYUWVKNHpLekJ3YTdORDVyQVI4?=
 =?utf-8?B?dlh0ekdadjdzcmo5Z2lPYk1vaFFPWndIamlhRkdTY3J3VmN3L2sxOWx5Tllz?=
 =?utf-8?B?RVV4aU4rWTVUL29Cbk9YUGkyamZXYXpYUVM1VVlRMWpMM2JIY2JWT2V4dWRq?=
 =?utf-8?B?RE9mY2dOaHovczBxK2FtbGlpamxPTzIwdlJGdnU0bEU3ZWJYRnc5OVJDVEN1?=
 =?utf-8?B?Z1gyR3RHUURIcjZzTDM3cFp6Nk51VkVkMTNVbmcrbkR3RlZMbUo1c3ZkbXBi?=
 =?utf-8?B?dlY5NHRBbWY1VTI0VGtMR29hYUEyMW1TYXFZZkJjUXhzNE5sM1luNUs5WnZv?=
 =?utf-8?B?WjRQTEt6UFkveXhQWCszWVBPSklQQmUvUTFBMXlROXdoc2xRSmcyMTlNeTRU?=
 =?utf-8?B?TlRFZnFLUElQM0paNkNkazNKSmZyM1Nvc2p1eWFCeXZabmJVNDgwNVF4WndZ?=
 =?utf-8?B?SUQvS2hrM0U5dVVoaTRJaXRxcldLQkdhZTFHNCtTRzlSWHc1Zm9NNGhST2lI?=
 =?utf-8?B?dzdFZ1grT0dXdVpGSWJEcE9JeWp4UXZ2dVhyNWVoZFJTTlBXMzIremIyZXh3?=
 =?utf-8?B?VE1GeEZUVEJDemZObFV2a1Q5eGl6YkE1L01IVk8xaXhnSDFJeVNXS2ErTVMw?=
 =?utf-8?B?THlPa2t6VGlqQUxmU040QlZOSys0Mm9YQnowSEk3T3Y2SmV4aTBsaEdLRm9t?=
 =?utf-8?B?Ym1mUFRsR0lrS0U4MXhhLzk3ZDZjM2EwQXFJWUE0ZDJzQk9yZVR3QVYxUnlp?=
 =?utf-8?B?dVc2OEhNYTYyQklSM2ZEUEY3ejhiTmhZM0twWnpmQmxQUmJMeEZ1MENDMUxn?=
 =?utf-8?B?RzZERDY5VDhRaUhjUG5VT05XZHhBOVBLeHBZWUFibkxNYThRemh3R2JIOHJK?=
 =?utf-8?B?RE1tRHlqdE9kY2c1QW80alh2cURHYWRXUFlQM042SFFpbHQ3RzNobHkva3Fm?=
 =?utf-8?B?TllQTTNnbFREdGRNTTRzUDVxR25kNmJQUGdqOGRQbS9KR2FRVG1TL2F3QWpO?=
 =?utf-8?B?ZUJESmhnODZsYlBtVy9vVXg1clQvTTgxVHZOc2hvbDVaWXZBYWREZEU4VlY0?=
 =?utf-8?B?cUxudTVOaHJvYTN0dVp1djF6WVlhTjMxeTFFdzBFTm1DYTRkSzlXb3hQOUtt?=
 =?utf-8?B?QWJrN1ZQS2M4TEdTSXlGY1d2aWFxM09GR1NGTWlNaHFxT0JsNGVwejZFWHV4?=
 =?utf-8?B?Z1ZuN1ZLa1dYY0JHT2V3aXQvT01nYTVONFY1bk8xVkgyUHAvcnExa3A5RDFr?=
 =?utf-8?B?RmYxaVlDUWw3UWVIbHgvVDJHdjM4NzNDc0lGQnVrMkNobnJkNUgwdkg3eGV1?=
 =?utf-8?B?Y25FOUFac3dQTUVUMi9QYzZTUURzUWw2WG5yUkxPYmpQR0xMcWh1ZmhkQSt0?=
 =?utf-8?Q?LZxZiKxJKBBXnwoL5usVf5qLe5Ittj+a?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0JUemtpeGZPMnhrTTZBdjZ0cUtZdnlVSERwdDJRK0dtb3BxU3JobDA3WnRG?=
 =?utf-8?B?M1BKbzEwTXpvV0xoN3V1NzJCelB4dDNnRVk3aHA1WVUrYVFzQjdLU3dDSEpD?=
 =?utf-8?B?eG5JNUQvZTJyQ0dGMFhyN2Zwb09zbmdyN2FmZVBZMFdOb29haUlKS1VybnNY?=
 =?utf-8?B?SU91bXJ1ZXRrZjM2TllhWm93dUo5L2lIcnlsVmlwdlF3TndTOTFsQjhFZ1gr?=
 =?utf-8?B?SnY0bFRXcDkzNHJzMXhvRVZsNnNHeHFEc2dZVXJqOGdZSkVJbllxVzcyenJa?=
 =?utf-8?B?OVQrV3lBbnlVKzlTb1N3Rk1rYmFMeE9sVWVFMHdSanovNEhaUGtVdkJRV2ly?=
 =?utf-8?B?VXQ3eDhtc3hhc2o2ZlJpS2ovS2hoM3lWdEFRZS9ETXJqbHI4MWFDODVBWk9w?=
 =?utf-8?B?R1NjdHNQajlmcTFKS3NaUEh5SVpHNm9vS1VFVXc0ekZVNFU3MDZyQkNKMDFs?=
 =?utf-8?B?OW9KU3hQSkNJUVVDN3VESlk1RW9lcEdBdjJjUnJBMnFGaWlXOGdNdnlkOXVK?=
 =?utf-8?B?U2ZsbUZwNTVvZ1hZR1BEdU9NQmhHMmVuU3ZXZXZZYi9mUTAwdXk2OHBTUzcv?=
 =?utf-8?B?Vk1tdXdqUXNYZGFXNHh5ZzJTRy9heHFTa08wVkRDT0VWNFJwQmdUT0NhcFcw?=
 =?utf-8?B?RWdtYWlpb0ZxN3Vld3M5S3FWdjNIRzRWVG5MeFRSSVZ0bkhsVE82dFM0RGV2?=
 =?utf-8?B?NzVMWWFIaDNpMTBXSENNZ2V4VkNIbGRXSU9aREUySTlmeWF6dUJDZUZiNlE1?=
 =?utf-8?B?bGVNcjBDMmI3Q0wwZ3dYQzhLZ2NNMU9mN29JTTQwSk4rY3BVazlmRDdCQldt?=
 =?utf-8?B?STVSSkcybzU1TGZTbUNLTWtPMHlYdEZzSTVlYm04cERIWVNhTHdNcDlPQVUy?=
 =?utf-8?B?cnFNd1lXa3ArTk55YnU4M2RlL29vNzhSbmpOcG93YWRZMjhvNS92T0s1YzlG?=
 =?utf-8?B?VlFsNndtazluWnFEdnlSQlREYzhqZm9LcmRGV0ZWT29Wa091VEdmV1B3WU42?=
 =?utf-8?B?bVRWZ3diRDlSanFFd0JKZ1JYUE8wWmVGMWlHci9xdUkzZmNTNzNncEt4ckxE?=
 =?utf-8?B?cnBNOVBERENUZnJMWWxxSEN0OUwzbWNsTklrVlpXc2VOaExrUm5reitENGN0?=
 =?utf-8?B?SmJQNmg0Z0JsZE5JRkZuMjQzam9uaGNjN0FLT3duV2ZSNXUydTEreDhLSFly?=
 =?utf-8?B?cmdrRTBqZXpGdUtTM3RRQkE0dEJIM0IzdmtIVkhmajcyWDlRWVYySVdTMkZq?=
 =?utf-8?B?MXAyT1ZyVUxnRHhkU21ralpEb2dCNS9yZGI2d2VZenFScWZtWHJ1SU5hWlpZ?=
 =?utf-8?B?VllVMGlTNTJPb0pEZnBWM1JWWm54aWdiaWFlU1MrRnJEV1NNRllNcjljUW1R?=
 =?utf-8?B?K1BaQkhjQWdxdjlwaU5nMVk3aG5LUkFENGFaQWdqMjRqeVhUV0dIeW9aWDBz?=
 =?utf-8?B?aVloWDRXb2ZQd1l3VVhXSkFZNTM0S1pVUVJIUk4zRUowM2hqb1Jkd2JFTXhT?=
 =?utf-8?B?NjJBRjYxbnpXWXdQbHJtYXlYWmNhK21PbkZpOWI2OHpsZExBclU3dVZCc3JC?=
 =?utf-8?B?bVFJZkN5dmdqUS9lNHhBZXhJOXorSGNCY2NjMGhkS0xFWU82TE1vcGM4OHJO?=
 =?utf-8?B?M1Z6VFZEZWhxaFFLRFZFMmJGQi9BWExCOHN0YTBESlBEM1ovVDBtT0EyZWlz?=
 =?utf-8?B?eWE0Wk54d1RNTzhuN0p2V000ZktlTlg5VXk5cmtEdVpGQSs4TlFPVDJRTXda?=
 =?utf-8?B?VkdxaFFST09ENzgxSU5hODkrWFRWUC9kQlZ1Z0xpS3QyRHBkRWhxRmZIVFpD?=
 =?utf-8?B?UFBNQ01GbVRCaFBJU0l0bVRXc0tDb1IwcWRLenZRUk1yeTJ2LzVPdG9sN1ZR?=
 =?utf-8?B?ZFcxemk2VGV5b3l5Skc5eUZsK09WUHlLVXpwOVdOTm05T2ZJbXpGQ3JCL0lV?=
 =?utf-8?B?T2pvUldXNGcxNW9hcDZrSVNUc1h4ZjNBTVFuUDZQV2o5emF1dzlaQUxYaG9q?=
 =?utf-8?B?Sm1KWnVxcmtwZUwwNHhVekc0dVpMT1MyRUw3dHVHRDBTOENqMERVZlRhT0Qy?=
 =?utf-8?B?amlTMXdVSytHK3dMbzdCSWdON1FRNDIyK2ZOL1dIek5RWERyZmZUUlVsU2VC?=
 =?utf-8?B?ZFU4ZHVHdGprQWVjMFlTNEJVY3JEWEUxaWtPVjM0TzFSeGpYZXF6UnVOSjBy?=
 =?utf-8?B?N2phSFYzOW9ZSU9STmt2eGlCSnRoK2xIbGRPNHNwTTRmQTMrdVZLd2NqZmw1?=
 =?utf-8?B?OCthREw3MXF6enl5NHMwK0ZsemVnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5ACA806F9E6D7F468277886805C503D3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc757666-1cea-445d-eeb5-08dd4cc994ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 07:31:22.3053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RP8BvKFwDz1E9A/Li+2eQTLrTpYJtkr/CxqNhWQ+mg0Vd0oRCM1tpLAzwAgNXwuKp5CG2vreo9Lcctmj6yvB9bG9hRoGfsTdUvFFoulBnSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6619
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

T24gRnJpLCAyMDI1LTAyLTE0IGF0IDA0OjI3ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
eGUgPGludGVsLXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4g
PiBPZiBKb3VuaQ0KPiA+IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAx
MywgMjAyNSA0OjQ2IFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1
L3BzcjogRml4IGRybV9XQVJOX09OIGluIGludGVsX3Bzcl9kaXNhYmxlDQo+ID4gDQo+ID4gQ3Vy
cmVudGx5IGludGVsX3Bzcl9kaXNhYmxlIGlzIGR1bXBpbmcgb3V0IHdhcm5pbmcgaWYgUFNSIGlz
IG5vdA0KPiA+IHN1cHBvcnRlZC4gT24NCj4gPiBtb25pdG9yIHN1cHBvcnRpbmcgb25seSBQYW5l
bCBSZXBsYXkgd2UgYXJlIHNlZWluZyB0aGlzIHdhcm5pbmcuDQo+ID4gRml4IHRoaXMgYnkNCj4g
PiBjaGVja2luZyBQYW5lbCBSZXBsYXkgc3VwcG9ydCBhcyB3ZWxsLg0KPiANCj4gTEdUTSwNCj4g
UmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQpU
aGFuayB5b3UgdmVyeSBtdWNoIFN1cmFqLg0KDQo+IA0KPiBOb3RlOiBTaG91bGQgd2UgYmUgbG9v
a2luZyBpbnRvIHNlcGFyYXRpbmcgdGhlIGNvZGUgZm9yIHBhbmVsIHJlcGxheQ0KPiBhbmQgcHNy
IHdpdGggZnVuY3Rpb25zIGJlaW5nDQo+IFNoYXJlZCBiZXR3ZWVuIHRoZSB0d28gZmlsZXMgPyBX
aWxsIG1ha2UgZ29pbmcgdGhyb3VnaCB0aGUgY29kZSBtdWNoDQo+IGVhc2llci4gSnVzdCB3b25k
ZXJpbmcgaWYgdGhhdA0KPiBNYWtlcyBzZW5zZSBpbiB0aGUgZnV0dXJlID4NCg0KSSdtIG5vdCB5
ZXQgYnV5aW5nIHRoaXMgaWRlYSBhcyB0aGV5IHNoYXJlIHNvIG11Y2guIEkgaGF2ZSBiZWVuDQp0
aGlua2luZyBhZGRpbmcgaGVscGVycyBmb3IgdGhlIHB1cnBvc2UgcmVsYXRlZCB0byBwcm9ibGVt
IGZpeGVkIGluDQp0aGlzIHBhdGNoOg0KDQpoYXNfcHNyKCkgLy8gcHNyMSwgcHNyMiwgcGFuZWwg
cmVwbGF5DQpoYXNfcHNyMSgpDQpoYXNfcHNyMigpDQpoYXNfcGFuZWxfcmVwbGF5KCkNCg0KdGhh
dCB3b3VsZCBlYXNlIHJlYWRhYmlsaXR5LiBXaGF0IGRvIHlvdSB0aGluaz8NCg0KQlIsDQoNCkpv
dW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDMgKystDQo+ID4gwqAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA4NjFlNTBjZWVm
ODUuLmM3N2ViMWJhM2RiMyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0yMTg2LDcgKzIxODYsOCBAQCB2b2lkIGludGVsX3Bzcl9k
aXNhYmxlKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDCoAlpZiAoIW9sZF9j
cnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiA+IMKgCQlyZXR1cm47DQo+ID4gDQo+ID4gLQlpZiAoZHJt
X1dBUk5fT04oZGlzcGxheS0+ZHJtLCAhQ0FOX1BTUihpbnRlbF9kcCkpKQ0KPiA+ICsJaWYgKGRy
bV9XQVJOX09OKGRpc3BsYXktPmRybSwgIUNBTl9QU1IoaW50ZWxfZHApICYmDQo+ID4gKwkJCSFD
QU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSkNCj4gKQ0KPiA+IMKgCQlyZXR1cm47DQo+ID4gDQo+
ID4gwqAJbXV0ZXhfbG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gPiAtLQ0KPiA+IDIuNDMu
MA0KPiANCg0K

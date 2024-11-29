Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD089DC2C7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 12:23:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360F710EE05;
	Fri, 29 Nov 2024 11:23:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LAivdQku";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B4D10EE09;
 Fri, 29 Nov 2024 11:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732879420; x=1764415420;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cK+bia6NDewHUB/by5TPxMD+kB8wQf+a4i+b2H2+x4g=;
 b=LAivdQkuIPaXgVy/cHI+I1TKIE7nHM+AouSpYFaWKdp75rfSbU0xItz4
 13E3lckjXLMH70ducGtTlacUzCmaG3yK64jK1sMXMIxillrQudcAdc1Ul
 JaMYJhu/rahcWJhKcBAw/o8BemG8DquSAO5GaDr3TAfjbfWkM6I+0Hb2j
 O9tn2Asb2VkmqxXuKYNsOCcqxyxkIXq5EtDVpC7+KUgu68TgOyXwpRDmW
 pIAd5k+IssiKBVu7uF9SdLCWF+w3mJ0ZcpmW/VzL8uC4K/6WLcByfzcmJ
 iQ8TEktmmSBYR4RA7jTFKBFbGoSH9yC9W0T3bWEpdGXorGvZaTra094uU g==;
X-CSE-ConnectionGUID: /WfXslr+QmaduxZMBT/MLw==
X-CSE-MsgGUID: 1BDWtO4YSzuhhOGfoaxDdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="33267219"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="33267219"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 03:23:40 -0800
X-CSE-ConnectionGUID: iLnDwJkYTHyq+ZvfeMl9lQ==
X-CSE-MsgGUID: WUcM8cpnRRmBqlP9TSwMqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="97232263"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 03:23:40 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 03:23:39 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 03:23:39 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 03:23:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nWIzWf56usD2MGcs0gVTLc2IlOJeyZJH2b2US8SxC1n0TQ9JOIsSI0v7iPsUT7o6LUvOtHqKa3zdVIvc/5n/gDFyGvy1Fv+0gc+wEgOpL8QbDUaiHq3eQJX1URCg9L0CpZDalpg9qbOqIjcWpTFRdlMywD52GIkcs3sjiQPIsyAeE0w0qq8VGnbvWebWl5BSuWl+0ed1wRGWOf9AfV7P0UBnmCXd1136gMRvwICChgYtmRTz4L+khx/omxXt+X8iBEPXEVNo/ntfsGu2FmRLCmVpNzimtq38wBvyM8wz0g0pNls01AilwTKpj+wi7yRc41EQW4JvzTPtajzfWEh98w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cK+bia6NDewHUB/by5TPxMD+kB8wQf+a4i+b2H2+x4g=;
 b=EXXFrWd9Y7PJUY1cLYqIbdP5CKuDXWeWSMDHUbxr1KUmGZlD/usg4if1zXPKLbTciwEpYOQBI5ICwiKmtSPYe+NjzU5xY5ikptAicwdWUZGyqmV2qEH7iiRW46quiTR+1VYk2GX4FLIMm2pIpwvOW6feHTEmJ+CyXd0oUxCVtL6KdS9cljfIhDfCbY6D5GRYii3mHcS1twZ2jrxSy5ttQrdzYmx6galoWGo62XrtntAsWBhSaBFFFCyc5Ld3qjRk8iiHL+4riKExmLuykX6Ys0O8PsNoe62AiYRWVMcCEDNXXiLkrpVt6d/ctMHwY7U/F1GRT/Ft2/fDn9g5WDn7Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.15; Fri, 29 Nov
 2024 11:23:36 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 11:23:36 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZHA6?=
 =?utf-8?Q?_use_seq_buf_for_printing_rates?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kcDogdXNl?=
 =?utf-8?Q?_seq_buf_for_printing_rates?=
Thread-Index: AQHbQNa1RhNEUMDE4ka90us/tTNSmLLMqg0AgAF2UkA=
Date: Fri, 29 Nov 2024 11:23:36 +0000
Message-ID: <PH8PR11MB67534326E323E4D11B752FCEF22A2@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <20241127131838.3268735-1-jani.nikula@intel.com>
 <173271686438.3737589.2860729581870715186@b555e5b46a47>
 <871pyv8q9h.fsf@intel.com>
In-Reply-To: <871pyv8q9h.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|SA2PR11MB4969:EE_
x-ms-office365-filtering-correlation-id: 4b5d9ea7-755d-4c84-b5ea-08dd10684437
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZzFJWC9GbHB0b2REZm5BWk12MGRZemltUWFMUE9wZHUwL0J6SlpSMnF0Qk55?=
 =?utf-8?B?Sk8rdEs5T2d6ZlFBT0tKNVVFOUI0eGpKUm80UG9TUWszRUZtUmVWYkIrL2xa?=
 =?utf-8?B?YnFJSDRnTW95cFJQOVUydUN1ekdMNzVzNWlsTW91RXBON0x6ZlJ2M3U0cTRS?=
 =?utf-8?B?TFFDa3RvT2JBYkNSZDl6cHFaWElIOGxvc295czFhL3NGQ2NQQzV6aDQwUzdw?=
 =?utf-8?B?eS9WeDJMaS9SWGJNYVV3RzRPQkw4SGdjenZ6SEpVeWVIbHRFMnNUTEt0UkdJ?=
 =?utf-8?B?OUFLN3oyVzVuQkJGQVk3K082S3NHRzhpdFk5a3RCVkVaRG9jVkw2YzVsTTli?=
 =?utf-8?B?RkJwWUZZWXJHZTVnVm1YZCtJN0JzQVhzYlNxZ3RQb3hXaVdGVXRqVWVQU1JE?=
 =?utf-8?B?VEpEOEJZSjU3N2l5cnB4cXlXdEhOUzNYWGFmNzBrMlp0b05ydU55QXlONHZn?=
 =?utf-8?B?QXRDSmduTEtObGtKQWM5amtqdTJqZUF5TVEraU5CSEIvUWxjUjNKYkRSbEVa?=
 =?utf-8?B?V1pkK0dLdlBWTzJ1MWJqWEJpNHBobGo2MXE5SFcza3dOVEFvS3dGZUtpRFBk?=
 =?utf-8?B?VTBHcEV0czFBRWZ3emxpYXlVQTNNUkFaZ3paMlZnMTZIWDQ4UU9iam4rZ0pT?=
 =?utf-8?B?ZGNVSzVRZTZoaTU5R0thRFJKbWRHd0JGdEtuMHM4WGNGK1kzWklWaFFWK0xy?=
 =?utf-8?B?cVFpRzJxcTZUcmlsSHExTTE1TnM2azhOQVYxT0ZVY1dxbWthRTZvM21KYmk0?=
 =?utf-8?B?Q29LM2xwZm9yY2xyMWxGaXJmN3JCazZxTEhYWTMwdVFwMExiL1drSjhiRnhC?=
 =?utf-8?B?cjJLc0gzUm9iUjhmTkJ2SGg1VENWUHl0MS9jbWhKVUhFWFR3SlZXaVNGU25P?=
 =?utf-8?B?Z1E5T3ZqSVF1b0lybGRJQTRBMnBkd1BYWHF2OVY2S3cwdHJTRU1kSjE4U1Yx?=
 =?utf-8?B?c0lOVStrS282cG5mVDVrOWxNYkhraExWcGs5cFRNSnZnNllZZzdQVG1kVnA2?=
 =?utf-8?B?MXlGZjNIK1FjYnBybnJLV1lXOTAvV1V5VWxmeHI0V3JMdzBmNE1yTUt5aGtL?=
 =?utf-8?B?LzBuWTREZXJ3MmhFYkRwdGJGa2N1dGVBOFA5dVRxeWlJd2V4VGpkc2dTS2ps?=
 =?utf-8?B?VEpVZnlkZVZGTXdYU0VzR3Z0QzBWdzgrYURmUVFGRzBmQTVTYjV1WkZEdmVS?=
 =?utf-8?B?b3pHMTRVTWkweXhRUjBTUkRPVUpnMEduRFFpOXJzQzdDOUNiR0hnQjBmcW5v?=
 =?utf-8?B?YVZQWVdVMThoSnVuTkV0akZpYVFVUGxoeTBiajZjMExkYXdlTHozZTFmNHRO?=
 =?utf-8?B?KzladVZUd1VXRkVadDdOQTh3SUNqMk8zNkpNVDBtNE9NQlBJSE1yS0hKWVpR?=
 =?utf-8?B?bnI0TFFNaWVNRlZBRTZ1TEdhNG5veG9GSHFVYkRqL2Y3RUNObysxSkNzMCtz?=
 =?utf-8?B?cEgyYjN2V2c0WHRYcTVqYmx2MkY3UVdvUW1UZ0JGWmNEdU1jVUdkQjdzc2lL?=
 =?utf-8?B?SElQQjQ2SU90Q3lEZ3JneCtiV0phVXFaL0pMeXBoZ0JIU253eHVTMGlnY0JF?=
 =?utf-8?B?TmdXOGRROGdDMkkzWmJsbWxpWHFsTk8zbmxlczByR0pFOHFQaDJDZisreDlM?=
 =?utf-8?B?bFp4c2YvTzlYMStnbVRMY1JlaGdHazBScUFON3RGdzB6VStpRXBWN1dBMUln?=
 =?utf-8?B?OUZCS3M5TFpGbDZyaHlibFNzSXNjenRycnZpbTRPZGVaZ0VGUHlGQ3puczlk?=
 =?utf-8?B?MnZGSHNqRXlBU1RCS3BJMWU5VkJkN1ExT2xSVHZOemVSM3pXRzVDcjRJZDQ1?=
 =?utf-8?Q?QKTgh3rllQL9VT14Ay4Cmyab5dITkB0xPjnyg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bjFqYnlqYUVMa1d0K2JqaW5lcFhiVGRhRmlGaG1QRkk3Q3dwN05oZFovRVEz?=
 =?utf-8?B?RzdBanAwVnJMUDlBdWF1NXQvc3NRamJtVmpSTnJhMEhyRnlVUXJKcFJvWGVj?=
 =?utf-8?B?akVRYlJ0VVQzOC9LeWhBSkNEODZ6MEFFL2pjaHgrSFdMZjFRTVltUjMydUFm?=
 =?utf-8?B?UU50WVdCSGJQT3RlWWgwVXZJU1dLYlZRTHNpbHI3endCQnRDanBWbDVnZzEw?=
 =?utf-8?B?VkNmVjlKWnFRb3NXbWtiUGdxSGZkSTlha01kN0t5R2d1Mm5NRFZxbStkODNZ?=
 =?utf-8?B?WUlrWmcvdmRGdUttTWdnVTJ0ZElxQ1AvU1ppTkpBU2paVmxqa1NJaDFWa1cr?=
 =?utf-8?B?ZjkxSFdlcjRFbndyRHhaNmdKbG9EdHV0enhHamhrUUhkS2VCRk4vMzYzanhV?=
 =?utf-8?B?SEVRVSt3RURNNHlkZzhEdVE0RzRSY2lKZ1JPOHZUMEZaa3pweGl0TXF1OU0z?=
 =?utf-8?B?YTlyeFhiVXZINkgwakxtV0R1emRuNHY2N1hNTHprNUZWRndaR283Sk1HcU1X?=
 =?utf-8?B?Yi9VWWdrbVlYN1lpVDkzUm5oS2hpOXkvQkVOR3NqcWU1OVczekJPUnQxTGtQ?=
 =?utf-8?B?U2hJMXVEV0dPaytHS0ZDN1J3b3AxN0pBMjN5ZGxJaFRVQlJsR1pCTGl4bmxY?=
 =?utf-8?B?ZjRYVDlnRWk1S3FWVU5JL1pRc2ZFUWdQT2NIK2czOGtKazJ3TUpPTGRnang2?=
 =?utf-8?B?ZWVPdjRHU1dIaTBENm0randhK2k3Z201by8rb0VwRCtqSFZpUnJwdmZrZUN3?=
 =?utf-8?B?QkE5RVIzeGZEWFlvZEl1K0lja3ZFRFJMMHVmdHh1OVozMThmN3ZUaTVCRTNB?=
 =?utf-8?B?SFI5bGI2cDgvMUxFUmJXOUVZenFmWTRrbmRTZGE0Vm1id0ZaL0R4TytPeVk3?=
 =?utf-8?B?YjFiVkJBQWtjOFBwN1hJc3Rsd2s0LzJGVnE5L3ZWNTVaRUVrS0lmY1BrWTNN?=
 =?utf-8?B?OVhEU2tNUU5qaGd5N3UyTk51OGhlWHJKRE9TYnNlYUpwaHQ2a0Fwc05oZXl6?=
 =?utf-8?B?RmpiVFB2dVVqRUo0S24vTnVhdU5xVjJsTktEQyt1SEEwVjhURGExMXVGd0xw?=
 =?utf-8?B?TUxJUHRYUEVTYUpFVVNCNDV4S29BUkdVVkVwTnEyNFNBMTJZTDc1YWtPYm9W?=
 =?utf-8?B?M0ZLSy9wR1FLUmFtd1VsU2lSelZ2U2ZadGhUTEhGeWlXZFJTK2RZMzlPMkxy?=
 =?utf-8?B?STA2U2tybmFLYXBkS25JTnJmUjVTR3dUZlJlLzlDQjBacCtuUk5kS1MwUDVR?=
 =?utf-8?B?eUdlaitld0RYeXVUZytuTXJadjlXMjZrU3RwczZrSS9zZW5QcUxBbWVVSHp3?=
 =?utf-8?B?a3lnbXJyMUhENFpYb3Jvb1UzU0pvL3ZGcjhacXB0MUJNb2tOdFZBdDRFRXJs?=
 =?utf-8?B?M2xVWXpoOGllbnpuZmx6RkZoQnFCNitvUThWWDVCQzBJbWVUR0JObHRNRVZl?=
 =?utf-8?B?NzBCSHVYUWwrWGJHSkJkVkwycFNYQUsxQU03aHhvVjMwUlZ3d0lZQ3U3WUhW?=
 =?utf-8?B?YlNLVlJ5SEVxWStDK0xmQ296b0lpZWRmNk5hS21od1EzcGlsRzR5ZlZLbnNh?=
 =?utf-8?B?UEZVMTQyVUxLWkY0YjBYakxpcWhiVC9wOWQwSnZyU01zK1l2by96YkhSYmMw?=
 =?utf-8?B?eE9RaTZvRTBBZnZ2L1lmSFVwUGF5VXpUTE5xcVh5NzVmQzdVMEhzNnRabE52?=
 =?utf-8?B?dVVvWjh3ZFliVEdJQVdEUTNYcmJObHl5Qk5mNDhwbk81Z1ErOUkzV1daTVh6?=
 =?utf-8?B?bnFrTFpiYzlyTGJaMkxPWnh3dG1UQjRjK2NIdURMMXNPWlZ3YW5McXRDMklM?=
 =?utf-8?B?VGxkZ3FDT3loOTlzMnJleUlBZ2J2RjBYOGtpSlo0U01NSXJaS0hGMTQ2N25N?=
 =?utf-8?B?U09zWExVcFYzNDBmUGp6bkx6QmRxV25BY20xeDdFOGl5eHFpWFl1UjNGRTZQ?=
 =?utf-8?B?dlprTmx0Z1E5dzF0TU9LNlE2dVNiNS83cTM3V0RyWStveS90VVc5ODZ6bXFk?=
 =?utf-8?B?Y1NaOHVDVmdPRmNCTUkrQnNDbEZTUzE0ODY5SFBxRUU3NDdmMk5vYnR3aTJa?=
 =?utf-8?B?Wk9FUC9lTEJJQWF5NVZTNXBHK1pTT2prbmFLOEFRa0RXR3hVV21JWkovRWNu?=
 =?utf-8?B?bCtwYUprbk5VaGFsUGV3bS8wdE0reGp3VWxiT3UvNlBKR20yck5YWWJSL011?=
 =?utf-8?B?QXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b5d9ea7-755d-4c84-b5ea-08dd10684437
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2024 11:23:36.3127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zEDfKTPeTliY9FdwKHSzM37JgaoiQL5+bLaLXanxEvcxxv9WpqT0nJgY+7zT95CTIymSy4R09A+FgpLSMdFssD/j1tPs1YwNi+rYGKocFCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4969
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQxODQxLyAt
IFJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpUZWphc3JlZQ0KDQoNCi0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQpGcm9tOiBJOTE1LWNpLWluZnJhIDxpOTE1LWNpLWluZnJhLWJvdW5jZXNAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSmFuaSBOaWt1bGENClNlbnQ6IFRodXJz
ZGF5LCBOb3ZlbWJlciAyOCwgMjAyNCA2OjMzIFBNDQpUbzogSTkxNS1jaS1pbmZyYUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJq
ZWN0OiBSZTog4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kcDogdXNlIHNl
cSBidWYgZm9yIHByaW50aW5nIHJhdGVzDQoNCk9uIFdlZCwgMjcgTm92IDIwMjQsIFBhdGNod29y
ayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVza3RvcC5vcmc+IHdyb3RlOg0KPiA9PSBTZXJpZXMg
RGV0YWlscyA9PQ0KPg0KPiBTZXJpZXM6IGRybS9pOTE1L2RwOiB1c2Ugc2VxIGJ1ZiBmb3IgcHJp
bnRpbmcgcmF0ZXMNCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzE0MTg0MS8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+DQo+ID09IFN1bW1hcnkgPT0NCj4N
Cj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTU3NTMgLT4gUGF0Y2h3b3JrXzE0
MTg0MXYxIA0KPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09DQo+DQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPg0KPiAgICoqRkFJTFVSRSoqDQo+DQo+
ICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0MTg0MXYx
IGFic29sdXRlbHkgbmVlZCB0byBiZQ0KPiAgIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiAgIA0KPiAg
IElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0
aCB0aGUgY2hhbmdlcw0KPiAgIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0MTg0MXYxLCBwbGVh
c2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gKEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnKSB0byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2Rl
LCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+DQo+ICAgRXh0ZXJu
YWwgVVJMOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQxODQxdjEvaW5kZXguaHRtbA0KPg0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0NSAt
PiA0MykNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+ICAgTWlzc2luZyAg
ICAoMik6IGZpLXNuYi0yNTIwbSBiYXQtanNsLTMgDQo+DQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMN
Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAgIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5n
ZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0MTg0MXYxOg0K
Pg0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+DQo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMg
IyMjIw0KPg0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZToNCj4gICAgIC0gYmF0LW10bHAt
ODogICAgICAgICBbUEFTU11bMV0gLT4gW0lOQ09NUExFVEVdWzJdICsxIG90aGVyIHRlc3QgaW5j
b21wbGV0ZQ0KPiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzE1NzUzL2JhdC1tdGxwLTgvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+
ICAgIFsyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MTg0MXYxL2JhdC1tdGxwLTgNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRt
bA0KDQpVbnJlbGF0ZWQsIHBsZWFzZSByZS1yZXBvcnQuDQoNCkJSLA0KSmFuaS4NCg0KDQo+DQo+
ICAgDQo+IEtub3duIGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0NCj4NCj4gICBIZXJlIGFyZSB0aGUg
Y2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQxODQxdjEgdGhhdCBjb21lIGZyb20ga25vd24g
aXNzdWVzOg0KPg0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+DQo+ICMjIyMgSXNzdWVzIGhpdCAj
IyMjDQo+DQo+ICAgKiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoNCj4gICAgIC0gYmF0
LWFkbHMtNjogICAgICAgICBbUEFTU11bM10gLT4gW0ZBSUxdWzRdIChbaTkxNSMxMjkwM10pDQo+
ICAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
MTU3NTMvYmF0LWFkbHMtNi9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+ICAg
IFs0XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MTg0MXYxL2JhdC1hZGxzLTYNCj4gL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2Fk
Lmh0bWwNCj4NCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHM6DQo+ICAg
ICAtIGJhdC1hcmxoLTM6ICAgICAgICAgW1BBU1NdWzVdIC0+IFtBQk9SVF1bNl0gKFtpOTE1IzEy
MDYxXSkgKzEgb3RoZXIgdGVzdCBhYm9ydA0KPiAgICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1NzUzL2JhdC1hcmxoLTMvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFs2XTogDQo+IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTg0MXYxL2JhdC1hcmxoLTMN
Cj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPg0KPiAgIA0KPiAj
IyMjIFBvc3NpYmxlIGZpeGVzICMjIyMNCj4NCj4gICAqIGlndEBkbWFidWZAYWxsLXRlc3RzOg0K
PiAgICAgLSBiYXQtYXBsLTE6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs3XSAoW2k5MTUjMTI5MDRd
KSAtPiBbUEFTU11bOF0gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFs3XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU3NTMvYmF0LWFwbC0xL2lndEBk
bWFidWZAYWxsLXRlc3RzLmh0bWwNCj4gICAgWzhdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxODQxdjEvYmF0LWFwbC0xLw0KPiBpZ3RA
ZG1hYnVmQGFsbC10ZXN0cy5odG1sDQo+DQo+ICAgKiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJl
bG9hZDoNCj4gICAgIC0gYmF0LWRnMS03OiAgICAgICAgICBbRkFJTF1bOV0gKFtpOTE1IzEyOTAz
XSkgLT4gW1BBU1NdWzEwXQ0KPiAgICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzE1NzUzL2JhdC1kZzEtNy9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxl
LXJlbG9hZC5odG1sDQo+ICAgIFsxMF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE4NDF2MS9iYXQtZGcxLTcvDQo+IGlndEBpOTE1X3Bt
X3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4NCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6
DQo+ICAgICAtIGJhdC1tdGxwLTY6ICAgICAgICAgW0FCT1JUXVsxMV0gLT4gW1BBU1NdWzEyXQ0K
PiAgICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV8xNTc1My9iYXQtbXRscC02L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPiAgICBbMTJd
OiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQxODQxdjEvYmF0LW10bHAtNg0KPiAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+DQo+
ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiAgICAgLSBiYXQtYXJs
cy01OiAgICAgICAgIFtBQk9SVF1bMTNdIChbaTkxNSMxMjA2MV0pIC0+IFtQQVNTXVsxNF0NCj4g
ICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
MTU3NTMvYmF0LWFybHMtNS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwN
Cj4gICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQxODQxdjEvYmF0LWFybHMtNS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91
bmRzLmh0bWwNCj4gICAgIC0gYmF0LW10bHAtNjogICAgICAgICBbQUJPUlRdWzE1XSAoW2k5MTUj
MTIwNjFdKSAtPiBbUEFTU11bMTZdDQo+ICAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1NzUzL2JhdC1tdGxwLTYvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFsxNl06IA0KPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE4NDF2MS9iYXQtbXRscC02DQo+
IC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4NCj4gICANCj4gICB7
bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9y
ZWQgd2hlbiBjb21wdXRpbmcNCj4gICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVu
Y2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLg0KPg0KPiAgIFtpOTE1IzEyMDYxXTog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8x
MjA2MQ0KPiAgIFtpOTE1IzEyOTAzXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjkwMw0KPiAgIFtpOTE1IzEyOTA0XTogDQo+IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5MDQN
Cj4NCj4NCj4gQnVpbGQgY2hhbmdlcw0KPiAtLS0tLS0tLS0tLS0tDQo+DQo+ICAgKiBMaW51eDog
Q0lfRFJNXzE1NzUzIC0+IFBhdGNod29ya18xNDE4NDF2MQ0KPg0KPiAgIENJLTIwMTkwNTI5OiAy
MDE5MDUyOQ0KPiAgIENJX0RSTV8xNTc1MzogNGU1ZTNjOTNjZjY0MmY0NzM3NGVkNmUwMDNmMGE1
NWI4YWYwZjI1YiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0K
PiAgIElHVF84MTI3OiA0MzNlY2FmOTVjY2FlZDJiNWFkY2I0MGQyN2ZhNWI3YTA4YTJlMDNkIEAg
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiAg
IFBhdGNod29ya18xNDE4NDF2MTogNGU1ZTNjOTNjZjY0MmY0NzM3NGVkNmUwMDNmMGE1NWI4YWYw
ZjI1YiBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4N
Cj4gPT0gTG9ncyA9PQ0KPg0KPiBGb3IgbW9yZSBkZXRhaWxzIHNlZTogDQo+IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTg0MXYxL2luZGV4Lmh0
bWwNCg0KLS0NCkphbmkgTmlrdWxhLCBJbnRlbA0K

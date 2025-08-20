Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC5AB2D347
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 07:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B4CC10E147;
	Wed, 20 Aug 2025 05:06:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zu3I/jN9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BCD510E147;
 Wed, 20 Aug 2025 05:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755666403; x=1787202403;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Hdy5ik+kmsspCn9Yr+LmXjpjbafEMHWVmPoyjo3oP/8=;
 b=Zu3I/jN9l638YiByQ3UaOskKqBoEx3rWw8xXfDym810E6mDHrbtxAzRM
 N5muiCSIe70HJYR8SaBHbfRrjVU6r9Txw9ww52cad/wA6ncviF/NUFiwE
 aRD7zAMVnoI4fJQbv8i/Mfv6/T2qfyXXJlWK/b2D/60BmJe0i4TLf1LoB
 5B2g1YApaBVORj4KtitmZszbh2785CmX5Oed3NEmg1RpuQVhojDd97Slm
 zEKEbLfKuDvXfnmmniV0YeK2Zo9B99dMyyoyEyo85PwfYPlzdS8fVnsyk
 V/KBTdFyTC2pTLywdVwNKlMoMn9HX2fTXXCevUXk9955J81wslqkGR06c w==;
X-CSE-ConnectionGUID: 7nIblZMiRJmDb3OF4FW8Fg==
X-CSE-MsgGUID: aWZ8kUS9S3mPSt3/O1VKRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="68193193"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="68193193"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 22:06:42 -0700
X-CSE-ConnectionGUID: ci2Wd8w7QlWZdSVr3u8jOw==
X-CSE-MsgGUID: H1okEElERDSOHnrYEeycYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="167993870"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 22:06:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 22:06:41 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 22:06:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.57)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 22:06:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U/ePwaMCR9pyvP6Aat1SGvQH4XWXyCNjNFPuYkdQA+8iajx9bdLb2RQIiWtKvf5a0B87iY7qwi8fRuIdrJf6u/an83/iJ2GvEC+K6X2N1OyCURdjA6hvJjNccZ1nbzZaA8RLuMMGN9v4xYjegaqbbcf4omE2ufNrvhmRDXq5CvXeIeP48o3lvWOpxFNpIiTIMUA0Q1RR9dk5ZpvDsWXvnd/6TMWhyPBl7kka0ESyKFrFssD2XueBZkRwtjmMs2jbv4Zr9mH1dXpUzrWjGXwUUKg9myOnRw62foIDBrf973BtQOBrr2Q0tTry7GWsbTVyhd266osdp9xQS3o2sVyB0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hdy5ik+kmsspCn9Yr+LmXjpjbafEMHWVmPoyjo3oP/8=;
 b=AeOBP+TYfVZdCgK2fBzIXALklN3OlbL+eWbMmzfB0gmswiq8f/zzmXqeWja729GxdsVP8J+dtSas+l5vbHkGxi7kN090n+caOGzCwG6v1N2pln+g3lGiAje2gk1+bLQdYtG8TmwR1eg5p+vQatn9wpUlJSVkoIgdlMXwVAHoz8DTv5X3qPZ4ictftWRoZBgYO6akr6LILnvIWz8vNEjflFnCDQnpJHl5HL1S7LFSIagRkPNld61ky2QKWTyZH6SGAuIRa6EdG1P9Sy1rPRx8E0Zw//m0EZaQZeOyAJBlA+OMWTDaDFJqvFRvwOdTi1776lI2ObmPPCxltukRrmxuag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB4821.namprd11.prod.outlook.com (2603:10b6:510:34::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.25; Wed, 20 Aug 2025 05:06:39 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9031.024; Wed, 20 Aug 2025
 05:06:39 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/psr: Underrun on idle PSR wa only when pkgc
 latency > delayed vblank
Thread-Topic: [PATCH] drm/i915/psr: Underrun on idle PSR wa only when pkgc
 latency > delayed vblank
Thread-Index: AQHbyJMEQOL5LKGt+keVl9ZIeLAjobRp98WAgAGXfwA=
Date: Wed, 20 Aug 2025 05:06:39 +0000
Message-ID: <4c726012f525c692ab1c66c87564efda3f11487f.camel@intel.com>
References: <20250519075223.443266-1-jouni.hogander@intel.com>
 <DM4PR11MB636062D4AC0916666CD23665F430A@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB636062D4AC0916666CD23665F430A@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB4821:EE_
x-ms-office365-filtering-correlation-id: b4089644-adad-4cd4-c79f-08dddfa7589e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?N1pmaUo2dU5UY2tCaXJhR3dqNFBYS0pQUWlwSHVLcUhRRTk5elJwdUZtTjFQ?=
 =?utf-8?B?MEJaYVdnL1h4QU9JemVOMjEzWko4UkcwYS9pMGtGdVFWMnVNMnZyZlA3VE9l?=
 =?utf-8?B?T2NwZEdYU0hDbWVzWFFMWFM5YmsxU0pxejJHcStqYzJQUG5odnVWaWVWS0Fw?=
 =?utf-8?B?ZFh4Tk1neEJMRVhOOEdJWW9pd1dMRmtIeHN4QW1wWUYrWWExeXBXVU05K0Na?=
 =?utf-8?B?Y01EbEU5Q1RFaTJ6NDl1ZHdBR3NhMmZkc0c5Mi9GUFNmS2tERTlsdi8vVElU?=
 =?utf-8?B?M1ZWSm1WK2tlTkJVK012UDM5bmJ2MGowalpCdXdjVGJhM3h3cHZZVnhNcmtw?=
 =?utf-8?B?c3RwMG5PbjFiMzFqYUk5aXZmQTlIcUptQmhWSkNTRThSYnNLQkpUa3pnY2sx?=
 =?utf-8?B?bUpWZEFBeGZhMVVUMUJEK0FxMmhOZVJBelZ3a0NYNWlRN29SUzVlcnpQVkJw?=
 =?utf-8?B?dnFpRmlXem0wN1M2eFBJa0hmRkl0MlJ0YmtLOEtKbEZxY0VaaEhsbjhDemJH?=
 =?utf-8?B?R1pYcjlzS0l4MkN4b1lyNSsvMy8rQzRPYklzd0hwb2RMVGZlL2Z4V1B3cWta?=
 =?utf-8?B?VTlsTVFZOS94TGxwZ2VFMmZJaG9Id1lqSnR6MWw4ckhsNEE2UUkvMlc5dlA4?=
 =?utf-8?B?MUNLV2wzM0NQREJHU0ZWZXFmUXVnVVNFK09IOWxZQ3lQVWZXdXVFblZoNnJB?=
 =?utf-8?B?ak5qampIa1RHeXRoNE1WUERiUWJ5OGU1b2dIU0U5SE5heW9DUzNCOHlwYmdI?=
 =?utf-8?B?KzNLamhOZ1RlM0RTL3lFek5LdUYwR1BtNjV6bUZ6dG5HYzJLeE1TNlJLbEVH?=
 =?utf-8?B?UFhjeUc3ZE9ObkNSRWhUTjFwVEdWV0dOdnVEMnhkU1kvYW9HSnpSOERGV1lw?=
 =?utf-8?B?bVVTWm5WdFVkZ1NsWVQ0VmRtc29iUlMxVWpBdExtTk5XWVYxUkY0WTVGVUQ0?=
 =?utf-8?B?NWFSVXdNbm5Nd2cyekdGQmorNzdzb29GQ0EzOXh6VnRLcmhLSGZyMkd6OHRx?=
 =?utf-8?B?dDcwVnBNNDdQTzlZTzFmSk9lVHFHQTNjR1F2U05zd2t2Tmh4bTFmRDlpWjVk?=
 =?utf-8?B?WkwxTVBUZFpGOHhUVnJ2WGZSR2daTzlLMC9kVkE3UkZxU3FXVm5hdFF3ME9m?=
 =?utf-8?B?anBvaWtYK2c2U0VFUlhFbnNyZzFvY25NdE1ORC8wcmFhMElNeUx5SnB5RUJL?=
 =?utf-8?B?QjJjU2diYUVJU0xhbnVYV01jaDJOSFc1QUYrRlZ3U1IrVDFCTkJ1VW1lUjNy?=
 =?utf-8?B?OHVsMTVWK3dEUU14UkdkdndtMlVxMmhaUWRKQ3hVZHRXQ1pyVWd4d3J0aXZG?=
 =?utf-8?B?MjV1QkJjNnNyN01aemhHcWRmQVVZc0V0Z3EyS1J0V2lVaDhMZ3h6VVg2bFRl?=
 =?utf-8?B?bVd2NHROQlBaRFVESUhCZFhCRkx2em5IdEk3czI0Y1I5RUxwMWZiWlA4RGZT?=
 =?utf-8?B?OGFqUnlYNVFDRHFTdGc2VjZnWDV3YkxORUtvNVFvNkJiRk5kWjVLSk9CR3hq?=
 =?utf-8?B?cjgvOUNkQ0FUMHNoZWxodmRnd3Rkd2hab0pNMFMvOGg1NkhqeGpuVExqeXcx?=
 =?utf-8?B?c09tdzBDRStvcDVTYkthaGhjejQ4L1ozUng2bjhHdWE4RTZVQ05Cakx2TUlL?=
 =?utf-8?B?NWRQcGo3L3NySzRWZWt4RkF5UGlXa3IrN1pQRDQ0eGNiRFgzc0drR0d2YStL?=
 =?utf-8?B?dmw2NDlCVWxGZDJ5bVk4TVRYbEZLQlZwdXNmVExhRDdoeXhwMzd0ekdha0hG?=
 =?utf-8?B?NGM1eWlSS1F2S3A0STgvM0lEc2NYRkllTE9WYTJVOWhyNk4xN3JkRitPT01h?=
 =?utf-8?B?SnJGcWJIbW51M1Nkbmc5WWJxWGQ5T1RFbk53dkhqQ08wV0dsL3F3bDkwMlRp?=
 =?utf-8?B?cG1IRFRjOE0xNGxlVzVLTXR4d1V6amFGMkc2SkZsTlFhb2hUNEgxdFZWZXpB?=
 =?utf-8?B?QU85MWZXVHM1OWtSa0s4S3FhVGRISDBlSjlpRy96aFpZTVhqOE50SVNlbFNw?=
 =?utf-8?Q?8Va0XGk5Q+wsH8fa6FKrrYMV4GH2WM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SUhLTDlZQTRxaXJlUnJ6TEpSamdQKzdaOHBiVHBoa2M3L29zWkRHeW1hMUNz?=
 =?utf-8?B?enFzQ1lyQjEzOHZPak1kOEpNRTI2cUo2anIvNzd3MUZHM3A2VVZKRE5vVzRF?=
 =?utf-8?B?azdHUERZbkpGYkc2cm5EYm5hNFhsTnlGTWFCYzZFNzZuTDNLL0JtWHl3LzA5?=
 =?utf-8?B?TW9QMXcrdzJCUDhpRmdTVGxsZ3lmSFNHa0VScDVvc3FpWTFVT1lnamUzNzhy?=
 =?utf-8?B?aEg3WW5pZTAxd2hMdGVEaDhXSElQem9uZ1Z5Q1QybGZITm03WUp2QXVUYnJC?=
 =?utf-8?B?MzJ6R1FEVjJKQ1ZtdFgvankwN1Q2c3ZFWnpBNmh5U3lMTVcxdDVGdUgxSnli?=
 =?utf-8?B?dXUwSGNacnhNS3Myb3JPSitrcHZsQ00zbXRZamNNM01iK2ZjOE9uWnVYZEtZ?=
 =?utf-8?B?RHpyTStVRlRpNlVIblo5Nmh3QUt0RWZUSHlnbUd6d0N3Mk5OYU1yWmNyTGcy?=
 =?utf-8?B?V2I4S3ByQm9IT3A1QWlHcU42MkxXS3Z1N0JMSWVVSnUrekRDcDN2bWlUaVBF?=
 =?utf-8?B?TkVUUWIzTU1xcWFlKzJxUEZUWEpVckVKT1hqd083RHpPTG5USmR5bjlwUCt4?=
 =?utf-8?B?eURmUHZiK2tkWUxYZlVLTTkrVFJSdmZKczFpMnpuZlgzUnhTM3p2cS8rTEl0?=
 =?utf-8?B?TVVqbmNLMFkrSXpQMVJkdWFMLy9tYW9XQjhLWkN5Z2gzaXZqRU5IRnlJQm9v?=
 =?utf-8?B?ckVHRC9kVlh0Vnh0eVVQVXdaUnZjYmhzRmJYUjhOSTF5TFdwNTRJSGRDNU1J?=
 =?utf-8?B?ck5ibzVXYkxOYk94SkR1d1FNZmhDSUk5L3Q5ZEhCYjliUi8xNXBZV2k2dUNS?=
 =?utf-8?B?ZThDZHJqRW91dFBaVTNycHJZRTJYK2t1NFpsa0VPKzFUTkN2cHk3TkU5Y3gv?=
 =?utf-8?B?S0ppeUE1NzhjY2tNZEhQeVYrSVl3TVRMZkk2blNFelVKQnZRalFNZSsvenFX?=
 =?utf-8?B?ODhhVVpwR05pN1lDZWpFejBRTGZ4aGRBVWY0T2lFNXVYdk1iQXVpWjFzS2Y5?=
 =?utf-8?B?RUJDaGUxckdSemJRQko4OXJrRHU0MGl1M1JHWExxUnlVeGxTOHhFampxQVRY?=
 =?utf-8?B?dCtES0ZpVW1NbHgwcUY0dThkRTUveldmVGRBQUpoVUJiS2VUT0RzdTV0TmhH?=
 =?utf-8?B?YWJVR3BvSC9vbW9pd0RxcURtMEoxdGFacEhFSGd4cm5wditFREhQV2VMSUJw?=
 =?utf-8?B?ZHoxaHlZUTQxeDBNS3RuanVNZm1HMGlpUjdIcWJPRlY1TUZsSFFFT1pvcTAv?=
 =?utf-8?B?bmpmcVJvcDQxUnFLZU1qV080VzB4M1dHYXR5N1BIV254Wm1xTkxFWGY0Qk5H?=
 =?utf-8?B?RnVmbTRNOEI2S1FzdEFtTlV4ZnZoZmtlYllRODVPMmFhTENrenFuYU1DV2lF?=
 =?utf-8?B?a0tSYTdQeEVKaG9uR2RYWnhsUUtncXBCV29TbHVMbHdKd1l2WW5Fa1hhOVUy?=
 =?utf-8?B?aEVHNVNiQWVSVTQwMXN6d3EzQm1VSkN3aEFDbFVVbk4xbFFWVTNCRmk0YXFK?=
 =?utf-8?B?dmJmVDZ1ZG1iZ0RmUVdtUzVuRURTNWJnV3pUUUgvbnJDQ2NySi9waE15ZEpZ?=
 =?utf-8?B?VUVUdnAvb0ZMRVRUK2paSjVyN2wrZjNvaVlOL3NVU3B2aHpXbUQ5Q21JTW5V?=
 =?utf-8?B?MDdjTUFXREpEdE44VHA0Z0VzT3FBU216LzdZdDMxRFpra3EraXRyZ2x2V0w2?=
 =?utf-8?B?WHZrSW9SSzhJZ3pPTGdjQlQyTm85N1hWK28vLy9RR1JOYmNUUE5NMHc5QkhK?=
 =?utf-8?B?SnpVeFNrTUlNaU5FTUVnWEZPMmFYemdMOE1UZm5vMWxNWk1tM0d1dll2eXNt?=
 =?utf-8?B?WHJpYlN4b1Y1aENIM0hWY1dmdWV3UW5GTW51aXl4NzNHR2pNekRtTFhTUHA1?=
 =?utf-8?B?QUV5TGUweXlrV1N0c01JZ2RjNTRXU2xocS9RdUxxaXowU3JHWWtuWE1RZTE1?=
 =?utf-8?B?VUhsQVdQZzhhUXA2eGlvb0JOR3VrbzBlTXkxVXZESGFrVjRiS2lPTktUaDVj?=
 =?utf-8?B?NmdraUZqMHN2QmVTMGcvNWovK2tONDVWQzhmNEd2TUtJUzVHU2NEeTJwU1B0?=
 =?utf-8?B?bjVGcVd4WFRwUVVvbU9aQ3lGaFBGVVUwWGJwd0JkbEtpaUg5VWFIY0dSY2FD?=
 =?utf-8?B?Uk4zeXJjbDVXTGtNYXNwbGw0ZVNrSVdLTDFrSUFvekVnQ3k0UjBOTjF1aGps?=
 =?utf-8?B?RWZuWVpmR3VHY3JJOGpabUNzNGpqREQvbk90WU84N1dkSzY3ZzU2Q1g3VklG?=
 =?utf-8?B?NVo5WHp4b1NmcHRuL3FZdjNFd2JBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2091E6BB81BCF5449DEF18372113A214@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4089644-adad-4cd4-c79f-08dddfa7589e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2025 05:06:39.5380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uH/6uL/o1FbjXyCTRGuJgeDKaTuxt4U6ITu5yMRjz/N0ZRacdjLeVAo5FgbIrmMT/vOnuk0hwfiPwUz66Wz67HYQDUwAxQQ/hKAIQn2/Pnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4821
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

T24gVHVlLCAyMDI1LTA4LTE5IGF0IDA0OjQ4ICswMDAwLCBTaGFua2FyLCBVbWEgd3JvdGU6DQo+
IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLXhl
IDxpbnRlbC14ZS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4g
T2YgSm91bmkNCj4gPiBIw7ZnYW5kZXINCj4gPiBTZW50OiBNb25kYXksIE1heSAxOSwgMjAyNSAx
OjIyIFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhl
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbTsgSG9nYW5kZXIsIEpvdW5pDQo+ID4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
PiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogVW5kZXJydW4gb24gaWRsZSBQU1Igd2Eg
b25seSB3aGVuDQo+ID4gcGtnYyBsYXRlbmN5DQo+ID4gPiBkZWxheWVkIHZibGFuaw0KPiA+IA0K
PiA+IFVuZGVycnVuIG9uIGlkbGUgUFNSIHdvcmthcm91bmQgKFdhXzE2MDI1NTk2NjQ3KSBpcyBz
dXBwb3NlZCB0byBiZQ0KPiA+IGFwcGxpZWQNCj4gPiBvbmx5IHdoZW4gcGtnIGMgbGF0ZW5jeSA+
IGRlbGF5ZWQgdmJsYW5rLiBDdXJyZW50bHkgd2UgYXJlIGFwcGx5aW5nDQo+ID4gaXQgYWx3YXlz
DQo+ID4gd2hlbiBvdGhlciBjcml0ZXJpYXMgYXJlIG1ldC4NCj4gPiANCj4gPiBGaXggdGhpcyBi
eSBhZGRpbmcgbmV3IGJvb2xlYW4gZmxhZyB3aGljaCBpcyBzdXBwb3NlZCB0byBiZSBzZXQNCj4g
PiB3aGVuIGNhbGN1bGF0aW5nDQo+ID4gd2F0ZXJtYXJrIGxldmVscyBhbmQgcGtnYyBsYXRlbmN5
ID4gZGVsYXllZCB2YmxhbmsgaXMgZGV0ZWN0ZWQuDQo+ID4gY3VycmVudGx5IHRoaXMNCj4gPiBz
Y2VuYXJpbyBpcyBibG9ja2VkIGJ1dCBtaWdodCBiZSBhZGRlZCBsYXRlci4gRHVlIHRvIHRoaXMg
YWRkIGFsc28NCj4gPiBUT0RPIGNvbW1lbnQNCj4gPiBpbnRvIHNrbF9tYXhfd21fbGV2ZWxfZm9y
X3ZibGFuay4NCj4gPiANCj4gPiBCc3BlYzogNzQxNTENCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoC4u
Li9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgIHzCoCAyICsr
DQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDC
oMKgwqDCoCB8IDE2ICsrKysrKysrKystLQ0KPiA+IC0tLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jwqDCoMKgwqAgfMKgIDUgKysrKysNCj4gPiDC
oDMgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+ID4gaW5kZXggMDU2MjE5MjcyYzM2Li4yMDllYWQ1MjA2NjAgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiA+IEBAIC0xMTE2LDYgKzExMTYsNyBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSB7DQo+ID4gwqAJYm9vbCByZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmU7DQo+ID4gwqAJ
Ym9vbCBoYXNfcGFuZWxfcmVwbGF5Ow0KPiA+IMKgCWJvb2wgd21fbGV2ZWxfZGlzYWJsZWQ7DQo+
ID4gKwlib29sIHBrZ19jX2xhdGVuY3lfdXNlZDsNCj4gPiDCoAl1MzIgZGMzY29fZXhpdGxpbmU7
DQo+ID4gwqAJdTE2IHN1X3lfZ3JhbnVsYXJpdHk7DQo+ID4gwqAJdTggYWN0aXZlX25vbl9wc3Jf
cGlwZXM7DQo+ID4gQEAgLTE2NTUsNiArMTY1Niw3IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiA+
IMKgCXU4IGVudHJ5X3NldHVwX2ZyYW1lczsNCj4gPiANCj4gPiDCoAlib29sIGxpbmtfb2s7DQo+
ID4gKwlib29sIHBrZ19jX2xhdGVuY3lfdXNlZDsNCj4gPiANCj4gPiDCoAl1OCBhY3RpdmVfbm9u
X3Bzcl9waXBlczsNCj4gPiDCoH07DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA0MzBhZDRlZjcxNDYuLmE3NWVmNTE1ZDAxNiAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBA
IC05MzEsNyArOTMxLDcgQEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjEoc3RydWN0IGlu
dGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgCS8qIFdhXzE2MDI1NTk2NjQ3ICovDQo+ID4g
wqAJaWYgKChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAyMCB8fA0KPiA+IMKgCcKgwqDCoMKgIElT
X0RJU1BMQVlfVkVSeDEwMF9TVEVQKGRpc3BsYXksIDMwMDAsIFNURVBfQTAsDQo+ID4gU1RFUF9C
MCkpDQo+ID4gJiYNCj4gPiAtCcKgwqDCoCBpc19kYzVfZGM2X2Jsb2NrZWQoaW50ZWxfZHApKQ0K
PiA+ICsJwqDCoMKgIGlzX2RjNV9kYzZfYmxvY2tlZChpbnRlbF9kcCkgJiYgaW50ZWxfZHAtDQo+
ID4gPnBzci5wa2dfY19sYXRlbmN5X3VzZWQpDQo+ID4gwqAJCWludGVsX2RtY19zdGFydF9wa2dj
X2V4aXRfYXRfc3RhcnRfb2ZfdW5kZWxheWVkX3ZiDQo+ID4gbGFuayhkaXNwbGF5LA0KPiA+IMKg
CQkJCQkJCQnCoMKgDQo+ID4gwqDCoMKgwqAgaW50ZWxfZHAtDQo+ID4gPiBwc3IucGlwZSwNCj4g
PiDCoAkJCQkJCQkJwqDCoA0KPiA+IMKgwqDCoMKgIHRydWUpOw0KPiA+IEBAIC0xMDIxLDcgKzEw
MjEsNyBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHANCj4g
PiAqaW50ZWxfZHApDQo+ID4gwqAJLyogV2FfMTYwMjU1OTY2NDcgKi8NCj4gPiDCoAlpZiAoKERJ
U1BMQVlfVkVSKGRpc3BsYXkpID09IDIwIHx8DQo+ID4gwqAJwqDCoMKgwqAgSVNfRElTUExBWV9W
RVJ4MTAwX1NURVAoZGlzcGxheSwgMzAwMCwgU1RFUF9BMCwNCj4gPiBTVEVQX0IwKSkNCj4gPiAm
Jg0KPiA+IC0JwqDCoMKgIGlzX2RjNV9kYzZfYmxvY2tlZChpbnRlbF9kcCkpDQo+ID4gKwnCoMKg
wqAgaXNfZGM1X2RjNl9ibG9ja2VkKGludGVsX2RwKSAmJiBpbnRlbF9kcC0NCj4gPiA+cHNyLnBr
Z19jX2xhdGVuY3lfdXNlZCkNCj4gPiDCoAkJaWRsZV9mcmFtZXMgPSAwOw0KPiA+IMKgCWVsc2UN
Cj4gPiDCoAkJaWRsZV9mcmFtZXMgPSBwc3JfY29tcHV0ZV9pZGxlX2ZyYW1lcyhpbnRlbF9kcCk7
DQo+ID4gQEAgLTIwMjIsNiArMjAyMiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVf
bG9ja2VkKHN0cnVjdA0KPiA+IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgCWludGVs
X2RwLT5wc3IucmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lID0NCj4gPiDCoAkJY3J0Y19zdGF0
ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lOw0KPiA+IMKgCWludGVsX2RwLT5wc3IuYWN0
aXZlX25vbl9wc3JfcGlwZXMgPSBjcnRjX3N0YXRlLQ0KPiA+ID5hY3RpdmVfbm9uX3Bzcl9waXBl
czsNCj4gPiArCWludGVsX2RwLT5wc3IucGtnX2NfbGF0ZW5jeV91c2VkID0gY3J0Y19zdGF0ZS0N
Cj4gPiA+cGtnX2NfbGF0ZW5jeV91c2VkOw0KPiA+IA0KPiA+IMKgCWlmICghcHNyX2ludGVycnVw
dF9lcnJvcl9jaGVjayhpbnRlbF9kcCkpDQo+ID4gwqAJCXJldHVybjsNCj4gPiBAQCAtMjIwMiw2
ICsyMjAzLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdA0K
PiA+IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgCWludGVsX2RwLT5wc3Iuc3VfcmVn
aW9uX2V0X2VuYWJsZWQgPSBmYWxzZTsNCj4gPiDCoAlpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2Zl
dGNoX2NmZl9lbmFibGVkID0gZmFsc2U7DQo+ID4gwqAJaW50ZWxfZHAtPnBzci5hY3RpdmVfbm9u
X3Bzcl9waXBlcyA9IDA7DQo+ID4gKwlpbnRlbF9kcC0+cHNyLnBrZ19jX2xhdGVuY3lfdXNlZCA9
IDA7DQo+ID4gwqB9DQo+ID4gDQo+ID4gwqAvKioNCj4gPiBAQCAtMzY5Niw3ICszNjk4LDcgQEAg
c3RhdGljIHZvaWQNCj4gPiBpbnRlbF9wc3JfYXBwbHlfdW5kZXJydW5fb25faWRsZV93YV9sb2Nr
ZWQoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwDQo+ID4gwqAJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+IMKg
CWJvb2wgZGM1X2RjNl9ibG9ja2VkOw0KPiA+IA0KPiA+IC0JaWYgKCFpbnRlbF9kcC0+cHNyLmFj
dGl2ZSkNCj4gPiArCWlmICghaW50ZWxfZHAtPnBzci5hY3RpdmUgfHwgIWludGVsX2RwLQ0KPiA+
ID5wc3IucGtnX2NfbGF0ZW5jeV91c2VkKQ0KPiA+IMKgCQlyZXR1cm47DQo+ID4gDQo+ID4gwqAJ
ZGM1X2RjNl9ibG9ja2VkID0gaXNfZGM1X2RjNl9ibG9ja2VkKGludGVsX2RwKTsgQEAgLTM3MjEs
Nw0KPiA+ICszNzIzLDgNCj4gPiBAQCBzdGF0aWMgdm9pZCBwc3JfZGM1X2RjNl93YV93b3JrKHN0
cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4gPiANCj4gPiDCoAkJbXV0ZXhfbG9jaygmaW50ZWxf
ZHAtPnBzci5sb2NrKTsNCj4gPiANCj4gPiAtCQlpZiAoaW50ZWxfZHAtPnBzci5lbmFibGVkICYm
ICFpbnRlbF9kcC0NCj4gPiA+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkKQ0KPiA+ICsJCWlmIChp
bnRlbF9kcC0+cHNyLmVuYWJsZWQgJiYgIWludGVsX2RwLQ0KPiA+ID5wc3IucGFuZWxfcmVwbGF5
X2VuYWJsZWQNCj4gPiAmJg0KPiA+ICsJCcKgwqDCoCAhaW50ZWxfZHAtPnBzci5wa2dfY19sYXRl
bmN5X3VzZWQpDQo+ID4gwqAJCQlpbnRlbF9wc3JfYXBwbHlfdW5kZXJydW5fb25faWRsZV93YV9s
b2NrZWQNCj4gPiAoaW50ZWxfZHApOw0KPiA+IA0KPiA+IMKgCQltdXRleF91bmxvY2soJmludGVs
X2RwLT5wc3IubG9jayk7DQo+ID4gQEAgLTM3OTksNyArMzgwMiw4IEBAIHZvaWQgaW50ZWxfcHNy
X25vdGlmeV9waXBlX2NoYW5nZShzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiA+IMKgCQkJZ290byB1bmxvY2s7DQo+ID4gDQo+ID4gwqAJCWlmICgoZW5hYmxlICYmIGlu
dGVsX2RwLT5wc3IuYWN0aXZlX25vbl9wc3JfcGlwZXMpDQo+ID4gfHwNCj4gPiAtCQnCoMKgwqAg
KCFlbmFibGUgJiYgIWludGVsX2RwLQ0KPiA+ID5wc3IuYWN0aXZlX25vbl9wc3JfcGlwZXMpKSB7
DQo+ID4gKwkJwqDCoMKgICghZW5hYmxlICYmICFpbnRlbF9kcC0NCj4gPiA+cHNyLmFjdGl2ZV9u
b25fcHNyX3BpcGVzKSB8fA0KPiA+ICsJCcKgwqDCoCAhaW50ZWxfZHAtPnBzci5wa2dfY19sYXRl
bmN5X3VzZWQpIHsNCj4gPiDCoAkJCWludGVsX2RwLT5wc3IuYWN0aXZlX25vbl9wc3JfcGlwZXMg
PQ0KPiA+IGFjdGl2ZV9ub25fcHNyX3BpcGVzOw0KPiA+IMKgCQkJZ290byB1bmxvY2s7DQo+ID4g
wqAJCX0NCj4gPiBAQCAtMzgzNCw3ICszODM4LDcgQEAgdm9pZA0KPiA+IGludGVsX3Bzcl9ub3Rp
ZnlfdmJsYW5rX2VuYWJsZV9kaXNhYmxlKHN0cnVjdA0KPiA+IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXksDQo+ID4gwqAJCQlicmVhazsNCj4gPiDCoAkJfQ0KPiA+IA0KPiA+IC0JCWlmIChpbnRlbF9k
cC0+cHNyLmVuYWJsZWQpDQo+ID4gKwkJaWYgKGludGVsX2RwLT5wc3IuZW5hYmxlZCAmJiBpbnRl
bF9kcC0NCj4gPiA+cHNyLnBrZ19jX2xhdGVuY3lfdXNlZCkNCj4gPiDCoAkJCWludGVsX3Bzcl9h
cHBseV91bmRlcnJ1bl9vbl9pZGxlX3dhX2xvY2tlZA0KPiA+IChpbnRlbF9kcCk7DQo+ID4gDQo+
ID4gwqAJCW11dGV4X3VubG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ID4gaW5kZXggODA4
MGY3Nzc5MTBhLi5jY2RlMTUxZmE5ZmQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiA+IEBAIC0yMzMzLDYgKzIzMzMsMTEgQEAg
c3RhdGljIGludCBza2xfbWF4X3dtMF9saW5lcyhjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+IMKgCXJldHVybiB3bTBfbGluZXM7DQo+ID4gwqB9DQo+
ID4gDQo+ID4gKy8qDQo+ID4gKyAqIFRPRE86IEluIGNhc2Ugd2UgdXNlIFBLR19DX0xBVEVOQ1kg
dG8gYWxsb3cgQy1zdGF0ZXMgd2hlbiB0aGUNCj4gPiArZGVsYXllZCB2YmxhbmsNCj4gPiArICog
c2l6ZSBpcyB0b28gc21hbGwgZm9yIHRoZSBwYWNrYWdlIEMgZXhpdCBsYXRlbmN5IHdlIG5lZWQg
dG8NCj4gPiBub3RpZnkNCj4gPiArUFNSIGFib3V0DQo+ID4gKyAqIHRoZSBzY2VuYXJpbyB0byBh
cHBseSBXYV8xNjAyNTU5NjY0Ny4NCj4gPiArICovDQo+IA0KPiBMb29rcyBHb29kIHRvIG1lLCB3
ZSBjYW4gZW5hYmxlIGl0IG9uY2UgdGhlIHBhY2thZ2UgQyBsYXRlbmN5IGlzDQo+IHByb2dyYW1t
ZWQgdG8NCj4gYSBub24gRkYgdmFsdWUuDQo+IA0KPiBXb3VsZCBzdWdnZXN0IHRvIGtlZXAgYSB0
aWNrZXQgdG8gdHJhY2sgdGhpcy4NCj4gDQo+IFJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KDQpUaGFuayB5b3UgVW1hIGZvciB0aGUgcmV2aWV3LiBUaGlz
IGlzIG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5k
ZXINCg0KPiANCj4gPiDCoHN0YXRpYyBpbnQgc2tsX21heF93bV9sZXZlbF9mb3JfdmJsYW5rKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUsDQo+ID4gwqAJCQkJwqDCoMKg
wqDCoMKgIGludCB3bTBfbGluZXMpDQo+ID4gwqB7DQo+ID4gLS0NCj4gPiAyLjQzLjANCj4gDQoN
Cg==

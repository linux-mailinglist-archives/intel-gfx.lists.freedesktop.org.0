Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 722F5A764E0
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Mar 2025 13:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290F310E3DD;
	Mon, 31 Mar 2025 11:21:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VrPHGT/Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16FC910E3DB;
 Mon, 31 Mar 2025 11:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743420096; x=1774956096;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Cq4LQJmyunErmy+Kvjcu1ywHmfHuNyh9Dts+InsGNvk=;
 b=VrPHGT/ZHDhJv3mLbI1474l7atHJTIgcE/hutQEAKDaDnkDCRggxJ7dR
 ryx6Ydrqd0h+S2daw+lYyb1TGxTMEs6Jax6fGdM/PPMoT1lqwGUWnvKaE
 r/lSUWwZd1C2EFS+RkmxYP2wkluBpLWP+fOozENW/kVHtlrYzhZvpT7+w
 QorgDR7S+CoW15Tv3ceODgCjsgFDkLi5TLGmDbEd/7V6xMJ/EUQaWSC4D
 2feg276CBHEKkEgjpPAczsgKAO7pa79TKJ5Ud0cfm4NjBN4ldawtz6K0M
 2B3DdKdqGAvfnRcCBRQbVHyBEw1i72YdAY4/gNiFDlrIXttPYfyNlX9KL w==;
X-CSE-ConnectionGUID: 2vOuHOmZTJenYHSdA6ZNBg==
X-CSE-MsgGUID: Fh2V/kzKTRe8kiTx1h3cWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11389"; a="62236374"
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="62236374"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 04:21:36 -0700
X-CSE-ConnectionGUID: iZKLjQ3GQUGuz0b9teEJ5g==
X-CSE-MsgGUID: FOwnx9hATNq6QKcMXMeWKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="163308667"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 04:21:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 31 Mar 2025 04:21:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 31 Mar 2025 04:21:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 31 Mar 2025 04:21:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q5GQ47CIN3Fx0OpOe948Rg72tG5mPzqZm9iP5ZAxmdg7xQlJgL1CsNyu/pqzaWp8Plg1NOiS9wHTH3/Mj3ixRiwxo7CzNN8OtCOLRbwa27yv0SuFQjoKATgcyQ49Lfoy0v8HSbxzAHbbP4M/nYn0HRuyTB3kidU+vbpEbpT3gVvBj+nZdZMj/fgEXw7qL3q4i9o5Ka7hOPfYVU2WKOWeB4fClfoP3XKmvfw+IiYTUxJjbJYw76TP39PTCr0yR8sLRCwqFU6ERcWH1gFIln/y6Rq418J+V0ZgVbu41vV2JWLQZKUkVYj64YfDab7HeDg7tRnKuKRiQAOYXGQL6b5wVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cq4LQJmyunErmy+Kvjcu1ywHmfHuNyh9Dts+InsGNvk=;
 b=xqySQxs0aa3GfIhhRRqSMCnPVzjtd6ZOWwmlMGSz0V0dA96GGhOu/JfIshcC6Gedfuirk0blBttyeLbbXdSXboDIvMcnj63SB53UUVN9qYanfG+cmyf6e58aGkDHHxKK48WW7iwf/8rnvS7Wya8q4mWVcz4a/gjtuO3FA5WmbI3BjAzMPDUeRprrAKSOHcK4tlh0TtID1xHcMm5m7L4pjqUprsyCcX74OKswOShyQe7+kfn60TnGV1qiQ76JW9jV6CTvsmY2IOiiaVFcBZ2EmDia/Id+plnGPztqOsRVDr/s2ROooLrv+w3S7n3uPbevhX7P+3SBCrjNXy1kcaQLBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6678.namprd11.prod.outlook.com (2603:10b6:806:26a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.53; Mon, 31 Mar
 2025 11:21:19 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.048; Mon, 31 Mar 2025
 11:21:18 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3] drm/i915/psr: Add PSR pause/resume reference count
Thread-Topic: [PATCH v3] drm/i915/psr: Add PSR pause/resume reference count
Thread-Index: AQHbn7hfDtctJfzyD0WLpcOFV71NYLOIvlmAgARgQIA=
Date: Mon, 31 Mar 2025 11:21:18 +0000
Message-ID: <71305acfb26e269780fb69845474f9e730bbb509.camel@intel.com>
References: <20250328080623.1183669-1-jouni.hogander@intel.com>
 <MW4SPRMB005610108B045DEE0B6F7A3AF9A02@MW4SPRMB0056.namprd11.prod.outlook.com>
In-Reply-To: <MW4SPRMB005610108B045DEE0B6F7A3AF9A02@MW4SPRMB0056.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6678:EE_
x-ms-office365-filtering-correlation-id: f427a38f-2ea0-4e10-5a29-08dd704628b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NWFrTkZiVUtUMXI2LzNVMVI1T0ZwUE9GM0o4YzZMU21RZmNIOWZrT05rODBR?=
 =?utf-8?B?ZG4wWXZGa3Y2a3kwd3lyc3RMOGpjNjByeFhIOFBCeXIzd3Vqdk5oeGlQaDEr?=
 =?utf-8?B?ZlZXbUh1Z3REWU1rUHc5bkxENFlpRWcxMDlJajNRZG12WFVqcGIvMFJyZFh3?=
 =?utf-8?B?L3NCZ0twc1BHYnZ5TGQ5NGF5YUpkcHZYbUlyMnlwblZTWGRHUDJudEdsTXdr?=
 =?utf-8?B?dTRkOHpxaVVwbmpyZFpXRFZ3RVVtVW5tdFhtclpJTjdWeTgrcXZJb0pYRE9S?=
 =?utf-8?B?cFBZMjB6TUNMVHdpMEJVT3pGK3g2QS8zVk0xZGEwTkFtVTBSZGE3aDhKSElP?=
 =?utf-8?B?QnA2dHAxcVhaN1IvSEN6cTFHSDNOY0hSdGpIeloxVE9WU00vZjltUVV6aWJL?=
 =?utf-8?B?UU42QWRyWm9CdldHSHNXaWQrcTR0K3FuQjh4N3Q1N1dWNkdESnNxSDQzbmd6?=
 =?utf-8?B?eXBYWkpOTDB1bkp0aWJyZEplSVh0eWhzNmhnaGtYYVUyRjhMaW9FZCtRNEc2?=
 =?utf-8?B?b2hXNVFLSXhUalhKTVlMMjU1YzdHdG9qUGltbDN3N0psTmFFVEgrUlI3V08z?=
 =?utf-8?B?U3d6OXFwMnozNDZ2akN4dnJKSFR6SEp2aWl1dDZzMFZMUnU3Q05qejdSR3NM?=
 =?utf-8?B?NzdGaUJJK3pVM3FiL2NtdzNHOW03aGNnOW1NZEU3RncvUk9RMjBjUm5zYmMz?=
 =?utf-8?B?R3Y4TzB5dWUvendya1I0QVY1bkRHU3pCd1JQbzBuTlpZK2ZobDF4WjJZRENZ?=
 =?utf-8?B?RXZlc2tjcER2M2x4NEQrcUxIY1VIaC95VStBOHJBYmtpOVJ5ekRpeXNuRE9w?=
 =?utf-8?B?a0RFR3h5enp4WU16eTBQSjlTZ0g5dlVLTGFDM1lNUzZWWWtpdHNFSXBuaUE0?=
 =?utf-8?B?bUxIVDR6eWh6N1N6MGh3ZTE0UyttU3VaMkszRndZb3piL2pnL1hGQVljTDEv?=
 =?utf-8?B?RjNLVEVTVk05RlRSaEt4a3luRXdrL0xMOEZxbWRjTXY2aXR0d3BPOE92WU9F?=
 =?utf-8?B?TXFIUzJmVG0xZmNCT3NYYXRYcjhFQWw5WllTWS9rbzhndTFRN2hvVmJwMEpp?=
 =?utf-8?B?MU1JSGowaTZDcnBJTFNyUyt4Qm9aQXc3TmJnWms2cmtYOVN3N3ZJTExoN3JP?=
 =?utf-8?B?djk3bkIwbHNQOTZnbUdpQTNaTTlUZEJHWTU4SkN0S00wTVp1TkdISDAyYTdu?=
 =?utf-8?B?c3ZVb0s0Z2RDUEFXMW03YVQ0aktEeTU1OFpCUWhDVGxLOEJtempkYkVXLzQr?=
 =?utf-8?B?SzMzajJrUE9WcGhaeFBvK0wyQVBwNFM0M2YzejJaNTM3WVlLR2lmbkFwZlp3?=
 =?utf-8?B?c2R6QTdldTYwR3M4TXlKaDliUkc2T0RMYkx2am5reS9iVkNDdFdSMWliNUxS?=
 =?utf-8?B?M0tHMEt4ZCtmNGlsWmJ0U0hPV2NsbkNScnI0SG5ycWNCN0d0N1lBVmF5dkJZ?=
 =?utf-8?B?OVI4VEV4cno5bUhxTjdpOHUvd0tWeSsvMVpSS3k5M2JsZFdTYzlEaGJzUDJV?=
 =?utf-8?B?ZU9oc0RGQTZ4YWFSZ3F3UjZJOFRQMi8vRWplK2NhNU5rN1JYbjVDczdBWmpq?=
 =?utf-8?B?b2hxUnhGdkJ2eW45bEYrWkRDYXNJS2I2ZFR2b00rYnJlRVM4VFlyUG1CVnF3?=
 =?utf-8?B?THFWcTg0UTVuRjZBN2JWYmt3SVY0NVdJRzdVQnVhNDNnTU80UkFEeTZQRVdK?=
 =?utf-8?B?aTR5a2hhemR1S1dvT0JlMHV3WUdDcHdHbTJzek0yQkxiYVhGdnc0eTFHTWNl?=
 =?utf-8?B?NENVQ1VJQ0tYVmJieVU4VDZuRitsdG55WDhObGxJNS9QSGpUdzBoVXNNaWtO?=
 =?utf-8?B?aGJTSG1nREJsL0ZCS1ZFVkRtZFZ3Q1BhaUpkZjZpR3A4OXcyQzNORVd4VEdu?=
 =?utf-8?B?WExMeGpMbGtuK0pXRTU2bjhzZFM5cm9OUmlkeFBBdTJ4YlpNeUFOQ0tPR1Nk?=
 =?utf-8?B?VXY5R2tEZks4aWt4ZFRZSDZJMllaQ2ExeUFFalJvcXRyTWdTWThQMkdjK0RC?=
 =?utf-8?Q?ejhAUqEZW3xqqVoEABskPS8Ao8VRI4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmYyRTcwNk55ZjNLeUpOaGJmS2lxYTU3Z0RDRmN1eFhCdVpFTnpYd05Qdzlj?=
 =?utf-8?B?NU13SGRIbWtOSTVKS2VXTkdBK1ZXb3N3cWlpSmRwcWd3R1FFUnBkQlBvcmlY?=
 =?utf-8?B?ZTFyS1F0S2RWQXNuaDhPUGtJV0ZOZm9JR0s0TG5vRVEyMkJ0bW9tRnVoOWhN?=
 =?utf-8?B?NURESzN5T3d6dWkwZ0pKM280RTludG1Geml1dWlLT2s3WmZTSEg5dVhON05n?=
 =?utf-8?B?ckJLQ3pEdjllODZQS2xYaEdEd2h2dU1USFVkaTA5NHVSU3h4dUdhNGozSDRD?=
 =?utf-8?B?TlRJcGJTRVZIZWlvQnlWR2Mrb01oSmFJSFVhUnQvNUFySEdzdFIrbC9ROFZL?=
 =?utf-8?B?SFZiWXpHL3p5TzFBTXhFc2dnZm9SUWZIV3E4VzlmWnFaa09MR29jcVJUR25a?=
 =?utf-8?B?N3lwN24rSGk1S1ZxWUR5SnF6Rlh3RUY0cUIxWlh2YlhHZmo2dmUwUE9nRjVi?=
 =?utf-8?B?cng1UGpCU0Vua1NxOXY2R2xSNDh2dzBoVEZHTEF1a05hOXRaTTRBdEJyNGlw?=
 =?utf-8?B?VnJpR2lmc1QzR3BLNGR1SndVb2M5YWo3VExlU3VtNHo0dHlGUDZiclZXRGNz?=
 =?utf-8?B?Tm55aWRJREk1THBBeE01MEordUg3T3hiYXhGSzBlNEpTZXUzelNuc3lQTU9R?=
 =?utf-8?B?anpxNnBhMVVKcUthOUtiSUtXYWpYVzFXOUZ0dDVrSTVxT2xsbjlHVUUvd1lV?=
 =?utf-8?B?NnJrMEpJaUNmWmpQL3piZjFiUUhGUStWR1FHVk1HVnE4N1FoVktuak9aQTJT?=
 =?utf-8?B?d1h1U1lZMGNwQnFRempnY2FBSlNhRzlaeVZFbEZ1d2xuOFN6eHZXUGpTTzNx?=
 =?utf-8?B?MHMwUGdhNWVvN3llNVFGZ3MrV1Y1NmdQQnoySHBwYXBIK1pQRjA5b0I0SWVu?=
 =?utf-8?B?dGdhN1ZEYUc3OUpjb3B0SDFQLy9GeklDVXIyekd1WjdKOVhJU2pjN3cxM01n?=
 =?utf-8?B?a28wRDFkL24yODBaUzIzUUoyZTc3WFJZeTFNeDEwdURIUW5ERzV5OWhscElW?=
 =?utf-8?B?VXBBeDE0dmkvRHlNSEdLa1ZpYTJqbzJvc0NheWxCZnRHaEpLbUtOYjJPSllq?=
 =?utf-8?B?RklyL2tpR2k5K215WWZSL0RGV1JvTDVLR0hZbXFrVEVYZWJpTFlXWE0zNnNL?=
 =?utf-8?B?REQ0dmNPK0hvQzdEK3Q1TCtKYUVTQ0R1SmRzZEVIY2F4OUdheEQ4bSt0TlU0?=
 =?utf-8?B?dDFwS3hXNUxJa2tZb3BuQ1JQVFlLK3RkaVI5ZjFQZDFmaUF0SU00c2lId0xL?=
 =?utf-8?B?VVRpRHkyNjdaZmY1YmFxRVZOWlRNNVIzL3dtR2U2ZHRWVzA3VWRpcm4zNUxj?=
 =?utf-8?B?QjVuakxUOXp4V3FEeXIvdnpHYWg4amFRclVuUU1aZ0puejlIOFdGVGRxQ1lK?=
 =?utf-8?B?MFpMaGx5dVo2c2J0c2hMQ1NKcDEvdzN1SnU2dy9QNjZZMXczM1haL212Y1V1?=
 =?utf-8?B?bHY1emVQc2xQWWNJbVdWeEg2QkFFalNvRTg2dlBqRGFLeVp6RnR0VmRMMGVx?=
 =?utf-8?B?citCSy83NlA1UmN6ay9sTjYyZmVMdWM0ZzRxZFJmWUg3M1I4bnpGOTgvSTRS?=
 =?utf-8?B?dHVhREhxU0Mra09vWHZVdnZ0aDFoWVpneVpWL21KdXNzeTF0NlErODVhTEJj?=
 =?utf-8?B?UzRiWFpkc3YyVTRodXdXcXdMWmdVUWI3dlc3NDk2dldHd0I3Q2pDdXRDUlZB?=
 =?utf-8?B?UERlQ3ZKMjh5WWNGNEErMnZRa3VyS2NqR29JVFZySytCSmFMK3BTT2NqWnJx?=
 =?utf-8?B?YmFkdktxNUhVNU13RlNJbHByeEMzUkZBY3JpUkJFdi9XN1c3S2c1cEIrN2hE?=
 =?utf-8?B?bE05N1E1VzBKdFZDMlRvclJocjZmc0ZYZ3ZpSDVHdVRrL2dXUDZHUVdWSVhX?=
 =?utf-8?B?a1ZQZ2xrMGcxYWpWNWN6cEFKejROK2Jld2VTVmFjNTV2ckdQd0VMb0c3a284?=
 =?utf-8?B?eDV3S2dEZENaZXZDSzBVa1NZWmk1WE05dit6VlF4STdFc1EzeUpmREMvMjlH?=
 =?utf-8?B?VTFKejRySVRmNjJaclNaeFZpNTVtN1BtZWlUTnptZHNCRjlHZk1SUGg2SURn?=
 =?utf-8?B?elNENDRBQmIrb2M2U0RGaHA0SmlUNnBNa0lJRU9xdHVSOGRiTEVEWXRuS3lw?=
 =?utf-8?B?OTc1Y1ZjK210SFl4ZkEvYW9ocmU5OFJJaFF1dEdKaEpzQ0ZBeTBDSkJmQ1l1?=
 =?utf-8?B?NVBkK3hmNGRTUHBBUEx1NU84RnpjVDRaSmJveFpaWGZPcVBiNjgxZmFDY1RL?=
 =?utf-8?B?VkFaeWlpS3BRVnBucTNOMEUwOHlnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FBE6CC0807CDBF47A00A0BA937AC4F4F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f427a38f-2ea0-4e10-5a29-08dd704628b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2025 11:21:18.8886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JHI6L6l1tfdvGso6swnNZBO4R+ys89e1AEBuESlW9tW1neqgItKnlJt7sAkJkhLSanFZUF7MCn/BV6LrmeSdaAgQ0ja1x/EZALMyi0tW+uw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6678
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

T24gRnJpLCAyMDI1LTAzLTI4IGF0IDE2OjMxICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogRnJpZGF5LCBN
YXJjaCAyOCwgMjAyNSAxOjM2IFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBNYW5uYSwgQW5p
bWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkNCj4gPiA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2M10gZHJtL2k5MTUv
cHNyOiBBZGQgUFNSIHBhdXNlL3Jlc3VtZSByZWZlcmVuY2UNCj4gPiBjb3VudA0KPiA+IA0KPiA+
IFdlIGhhdmUgbm93IHNlZW4gdGhpczoNCj4gPiANCj4gPiA8ND4gWzIxMjAuNDM0MTUzXSBpOTE1
IDAwMDA6MDA6MDIuMDogW2RybV0gZHJtX1dBUk5fT04ocHNyLT5wYXVzZWQpDQo+ID4gPDQ+IFsy
MTIwLjQzNDE5Nl0gV0FSTklORzogQ1BVOiAzIFBJRDogNDQzMCBhdA0KPiA+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmM6MjIyNw0KPiA+IGludGVsX3Bzcl9wYXVzZSsw
eDE2ZS8weDE4MCBbaTkxNV0NCj4gPiANCj4gPiBDb21tZW50IGZvciBkcm1fV0FSTl9PTihkaXNw
bGF5LT5kcm0sIHBzci0+cGF1c2VkKSBpbg0KPiA+IGludGVsX3Bzcl9wYXVzZSBzYXlzOg0KPiA+
IA0KPiA+ICJJZiB3ZSBldmVyIGhpdCB0aGlzLCB3ZSB3aWxsIG5lZWQgdG8gYWRkIHJlZmNvdW50
IHRvIHBhdXNlL3Jlc3VtZSINCj4gPiANCj4gPiBUaGlzIHBhdGNoIGlzIGltcGxlbWVudGluZyBQ
U1IgcGF1c2UvcmVzdW1lIHJlZmNvdW50Lg0KPiA+IA0KPiA+IHYzOiBJbmNvcnBvcmF0ZSBjaGFu
Z2VzIG1pc3NpbmcgZnJvbSB2Mg0KPiA+IHYyOiBBZGQgZHJtX3dhcm4gZm9yIGRldGVjdGluZyBw
b3NzaWJsZSB1bmJhbGFuY2VkIHBhdXNlL3Jlc3VtZQ0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiANCj4gTEdUTS4N
Cj4gUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0K
DQpUaGFuayB5b3UgQW5pbWVzaCBmb3IgY2hlY2tpbmcgbXkgcGF0Y2guIFRoaXMgaXMgbm93IHB1
c2hlZCB0byBkcm0tDQppbnRlbC1uZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo+IA0K
PiA+IC0tLQ0KPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
wqDCoMKgIHzCoCAyICstDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jwqDCoMKgwqDCoCB8IDMxICsrKysrKysrKystLS0tLQ0KPiA+IC0tLS0NCj4gPiDCoDIg
ZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+ID4gDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiA+IGluZGV4IDdkOWNjNDMwYTZiOGIuLjM2N2I1M2E5ZWFlMmEgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiA+IEBAIC0xNjIwLDcgKzE2MjAsNyBAQCBzdHJ1Y3QgaW50ZWxfcHNyIHsN
Cj4gPiDCoAlib29sIHNpbmtfc3VwcG9ydDsNCj4gPiDCoAlib29sIHNvdXJjZV9zdXBwb3J0Ow0K
PiA+IMKgCWJvb2wgZW5hYmxlZDsNCj4gPiAtCWJvb2wgcGF1c2VkOw0KPiA+ICsJaW50IHBhdXNl
X2NvdW50ZXI7DQo+ID4gwqAJZW51bSBwaXBlIHBpcGU7DQo+ID4gwqAJZW51bSB0cmFuc2NvZGVy
IHRyYW5zY29kZXI7DQo+ID4gwqAJYm9vbCBhY3RpdmU7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA3MDhmYmNmYTkwODlhLi4wYzU3
OTY1ZjhmMmYyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gQEAgLTIwMjUsNyArMjAyNSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9l
bmFibGVfbG9ja2VkKHN0cnVjdA0KPiA+IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IA0K
PiA+IMKgCWludGVsX3Bzcl9lbmFibGVfc291cmNlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4g
PiDCoAlpbnRlbF9kcC0+cHNyLmVuYWJsZWQgPSB0cnVlOw0KPiA+IC0JaW50ZWxfZHAtPnBzci5w
YXVzZWQgPSBmYWxzZTsNCj4gPiArCWludGVsX2RwLT5wc3IucGF1c2VfY291bnRlciA9IDA7DQo+
ID4gDQo+ID4gwqAJLyoNCj4gPiDCoAkgKiBMaW5rX29rIGlzIHN0aWNreSBhbmQgc2V0IGhlcmUg
b24gUFNSIGVuYWJsZS4gV2UgY2FuDQo+ID4gYXNzdW1lIGxpbmsNCj4gPiBAQCAtMjIxMSw3ICsy
MjExLDYgQEAgdm9pZCBpbnRlbF9wc3JfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50
ZWxfZHAsDQo+ID4gwqAgKi8NCj4gPiDCoHZvaWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApwqAgew0KPiA+IC0Jc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+IMKgCXN0cnVjdCBpbnRlbF9w
c3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiA+IA0KPiA+IMKgCWlmICghQ0FOX1BTUihpbnRl
bF9kcCkgJiYgIUNBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKSBAQA0KPiA+IC0NCj4gPiAyMjI0
LDEyICsyMjIzLDEwIEBAIHZvaWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApDQo+ID4gwqAJCXJldHVybjsNCj4gPiDCoAl9DQo+ID4gDQo+ID4gLQkvKiBJZiB3ZSBl
dmVyIGhpdCB0aGlzLCB3ZSB3aWxsIG5lZWQgdG8gYWRkIHJlZmNvdW50IHRvDQo+ID4gcGF1c2Uv
cmVzdW1lDQo+ID4gKi8NCj4gPiAtCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgcHNyLT5wYXVz
ZWQpOw0KPiA+IC0NCj4gPiAtCWludGVsX3Bzcl9leGl0KGludGVsX2RwKTsNCj4gPiAtCWludGVs
X3Bzcl93YWl0X2V4aXRfbG9ja2VkKGludGVsX2RwKTsNCj4gPiAtCXBzci0+cGF1c2VkID0gdHJ1
ZTsNCj4gPiArCWlmIChpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIrKyA9PSAwKSB7DQo+ID4g
KwkJaW50ZWxfcHNyX2V4aXQoaW50ZWxfZHApOw0KPiA+ICsJCWludGVsX3Bzcl93YWl0X2V4aXRf
bG9ja2VkKGludGVsX2RwKTsNCj4gPiArCX0NCj4gPiANCj4gPiDCoAltdXRleF91bmxvY2soJnBz
ci0+bG9jayk7DQo+ID4gDQo+ID4gQEAgLTIyNDUsNiArMjI0Miw3IEBAIHZvaWQgaW50ZWxfcHNy
X3BhdXNlKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoCAqLw0KPiA+IMKg
dm9pZCBpbnRlbF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApwqAgew0KPiA+
ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXko
aW50ZWxfZHApOw0KPiA+IMKgCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNy
Ow0KPiA+IA0KPiA+IMKgCWlmICghQ0FOX1BTUihpbnRlbF9kcCkgJiYgIUNBTl9QQU5FTF9SRVBM
QVkoaW50ZWxfZHApKSBAQA0KPiA+IC0NCj4gPiAyMjUyLDEzICsyMjUwLDE4IEBAIHZvaWQgaW50
ZWxfcHNyX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gDQo+ID4g
wqAJbXV0ZXhfbG9jaygmcHNyLT5sb2NrKTsNCj4gPiANCj4gPiAtCWlmICghcHNyLT5wYXVzZWQp
DQo+ID4gLQkJZ290byB1bmxvY2s7DQo+ID4gKwlpZiAoIXBzci0+ZW5hYmxlZCkNCj4gPiArCQln
b3RvIG91dDsNCj4gPiANCj4gPiAtCXBzci0+cGF1c2VkID0gZmFsc2U7DQo+ID4gLQlpbnRlbF9w
c3JfYWN0aXZhdGUoaW50ZWxfZHApOw0KPiA+ICsJaWYgKCFwc3ItPnBhdXNlX2NvdW50ZXIpIHsN
Cj4gPiArCQlkcm1fd2FybihkaXNwbGF5LT5kcm0sICJVbmJhbGFuY2VkIFBTUg0KPiA+IHBhdXNl
L3Jlc3VtZSFcbiIpOw0KPiA+ICsJCWdvdG8gb3V0Ow0KPiA+ICsJfQ0KPiA+IA0KPiA+IC11bmxv
Y2s6DQo+ID4gKwlpZiAoLS1pbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIgPT0gMCkNCj4gPiAr
CQlpbnRlbF9wc3JfYWN0aXZhdGUoaW50ZWxfZHApOw0KPiA+ICsNCj4gPiArb3V0Og0KPiA+IMKg
CW11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gPiDCoH0NCj4gPiANCj4gPiBAQCAtMzMyMyw3
ICszMzI2LDcgQEAgdm9pZCBpbnRlbF9wc3JfZmx1c2goc3RydWN0IGludGVsX2Rpc3BsYXkNCj4g
PiAqZGlzcGxheSwNCj4gPiDCoAkJICogd2UgaGF2ZSB0byBlbnN1cmUgdGhhdCB0aGUgUFNSIGlz
IG5vdCBhY3RpdmF0ZWQNCj4gPiB1bnRpbA0KPiA+IMKgCQkgKiBpbnRlbF9wc3JfcmVzdW1lKCkg
aXMgY2FsbGVkLg0KPiA+IMKgCQkgKi8NCj4gPiAtCQlpZiAoaW50ZWxfZHAtPnBzci5wYXVzZWQp
DQo+ID4gKwkJaWYgKGludGVsX2RwLT5wc3IucGF1c2VfY291bnRlcikNCj4gPiDCoAkJCWdvdG8g
dW5sb2NrOw0KPiA+IA0KPiA+IMKgCQlpZiAob3JpZ2luID09IE9SSUdJTl9GTElQIHx8DQo+ID4g
LS0NCj4gPiAyLjQzLjANCj4gDQoNCg==

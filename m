Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEB9CB81FD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 08:37:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 128FF10E32F;
	Fri, 12 Dec 2025 07:37:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZAMebe8q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EFD210E32F;
 Fri, 12 Dec 2025 07:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765525059; x=1797061059;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=aZp7/PmxfgHbpozA4SlAuUUZotXePSvmtvdIfTud8sc=;
 b=ZAMebe8qfWKQiSXqFuKwsKhZZWHPECZzo4UmNgA7pvglkyXbKQZjvY2S
 x3NasJ+Y+c0EGig1MAJYsqlNwa9NLTataDaDGJc5IRgD4A08AcWdxcgCO
 IJOvOv/bpx7bErExG25M0LdZSV4lBsUsTqCYz5gw8cp1+MO6U8xAdDV3C
 litSD715lp5ojBIrsNdTX9vE1JDAxCsQYsiMBwnfJLCvoT/vd618QBa2w
 oZcu7DU1hyECXpGLMoNvl4LPNPB09NurRSAI+f/POq5KhwimO/quXRLuZ
 GLrNtfm1LDt9DZHFOz+A/xUVi4oYXZTaYqE7pUpnKYa9SkIvWL8CLIsvW Q==;
X-CSE-ConnectionGUID: 8EMKmamTRwiLHM8NxJKtGQ==
X-CSE-MsgGUID: 59+maL/UQrGv5lT9Jezr3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="85120482"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="85120482"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 23:37:38 -0800
X-CSE-ConnectionGUID: kQp6smvUSym5jdAQxIiroA==
X-CSE-MsgGUID: s5vH5/WsTW2EvzqHJZYVkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196922797"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 23:37:38 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 23:37:37 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 23:37:37 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 23:37:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c0K+DQkvbphy5i/t9/78W0v3sKL6z2ldV27YcdoCUpywOIFGAoIJlxhWLdYVRcfFnL43/YDn44bOh8ufnh2ghbIS7FAsSALrvNakWAvW3wMHkgrFR5IGo6GeuBUy4MOM0nl445V9PDyJ9jUiLqjPHGyaqRs7QZEv+inzkH0aEfTy5tuE4hSURENrkRPw/3nAuLP3xBEvtAOhGczo18cpUur3y33x3NsmE2jd7s4VcJ/w4dkn01C2/jrZ4Hb7q+k6MCm2r+/sNF24rYZBhvOgp8unEncR0CAnj532eNhtW4L9fsqGxCro3Uk2mYEdbJQF+CARtlmW1oXwMzhJcC7dNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aZp7/PmxfgHbpozA4SlAuUUZotXePSvmtvdIfTud8sc=;
 b=eoctQeFE1yMF7sGqZfNSlML/PY6/JWel8eb6cfXZO5t8JguWqE9gGUuLHL9o7cuVNWQDoda+EfFloZBmtUKuLOqANsTMAvwZdt+K1GvbnBqS/XtqBcCgepZ4rSFEw1vG669ngak390XniuF1xiU1G7x5cGT1Y/qK5i2EZoyeHRDaNjbH74Gtm8yCob0rKkNZXa8lWCgXxsFFmDSG9f+vCGDthVoWCDLZUVbDy0fn8L46SCkUxiogetBfKZx7hMxQBje7TVcXeTlP+TXlEpk/BAoeYe/mLA9wBzTGIupHCccn66dWdnnP8Px9x6rX6HfWXHm73VaQrl2KkBe9EdhIIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5980.namprd11.prod.outlook.com (2603:10b6:208:387::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.12; Fri, 12 Dec
 2025 07:37:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 07:37:34 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Dibin
 Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 6/9] drm/i915/display: alpm enable DC3CO support
Thread-Topic: [PATCH 6/9] drm/i915/display: alpm enable DC3CO support
Thread-Index: AQHcaP9T/XME9JWO9U6IwWrBq1hjSLUdolyA
Date: Fri, 12 Dec 2025 07:37:34 +0000
Message-ID: <4735ae6f3a837db3b7cfc989ab63bb84d9ede129.camel@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-7-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20251209113332.2770263-7-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5980:EE_
x-ms-office365-filtering-correlation-id: a416e272-9ed3-4e9b-db76-08de395150cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?MXQweFFha3cyYWY1OUoxa1gwck15TTljRmcxek5qV0Y1dDZXaVM0b1RUU2Q5?=
 =?utf-8?B?am5lRDhZd1JKNkZHSE9hZU1zWmF0Z2ZBOEVSdDFRY3plWWRBZnBNdWNQejBO?=
 =?utf-8?B?S0NvTFNYU0N4SzQ0cUJqMXNOK2JoT2pBRkpYMGdiUDNUUGRLYVp6Sy9VVk9L?=
 =?utf-8?B?cmJCMmFYMVBLQUZ5K3AvUVlPdVcyRDBzWEtLNzI3ZE9HUmhsWCsvd2JGbjRl?=
 =?utf-8?B?WlUzVW84RlppOXN4N3F5NVRUMks2UFZ5bGdOQ0QxV1U4b0VWVm8xdjV2QWRC?=
 =?utf-8?B?MFQ2MnNXcWtpQkJMQkIrMmQyamgwS0pQdlFZSUQxRU1sdW5maUdwNDMyYTNt?=
 =?utf-8?B?ZVFBVW9yK0phUWtHRm5RRlNwMXgzUGJuS241RDArREZ1OHRsdVJWcHplRFJw?=
 =?utf-8?B?Ynk2TEw2TVMzY0FuVE9DeCs1blhhNVlCUHNpK0ZwYzlwRlovbGE2RVRGdXIy?=
 =?utf-8?B?RnRlSzhaRi9EUk1BTGdkRHBzZTlZU0xZWThtdG95Z292cFFhdFFPMHpNQllu?=
 =?utf-8?B?N2pwdTlISkI0WDRRYWgwdG1NOHNhZWZSU3JBMGg4Tlg3QVgzeEFSK0pCdlBM?=
 =?utf-8?B?VHo3dWpxaEhRVVQxYWNXU0pobFlWdldzbFlwL1pYamlkbHJmNytRWHpTazlJ?=
 =?utf-8?B?Y1VLaUNJZVlaenRYdlBwdno3NnRqbmJDS1VYTWlZSWs5VStkTFQrZE5Jbm5z?=
 =?utf-8?B?K3JHZnBwVkpnT0VZNDA1YThCRHNRWE0veFA5Vk5rYXpXZE51d3JVMVFOVURY?=
 =?utf-8?B?Q1VFMVhYMHpJMHBFTkR1Q3NpQkczWisrdXRIMVY1SjQvMWZFSmFyUGZVcUd6?=
 =?utf-8?B?TEpNcTBzZnVlMHFmTytpK2krL29LMGkrSWl4M0gwRzBVWGNmQlF1R0lyL3Vh?=
 =?utf-8?B?ekM2NjVVL3U3ckQ5RGVNNU9ydnk1eEppMmJ2dWFMUHVFMnhGYlNVOWFTeElI?=
 =?utf-8?B?Sm9SOGltZDNiVFVNNGRjOE9WSFRHVnRNTS8rWUtPcUsvV2xpd3k1b3owOVpZ?=
 =?utf-8?B?dS9iMUxLUHJkdW9adUFiT01MQ1NzdDlQYjNWQ3N3QTd1ZjdjejR4KzFsVm9z?=
 =?utf-8?B?TWM2UjFCbE40OGpTM0gxTEVxTXZjTGZVcUdEcUdReEZybTg3dnk1aS9EOHdC?=
 =?utf-8?B?QS95alZCeDl2eHFieUp1WlZYU21vQ2F3VjBIWDJDeUMyQXhqWnJFZzN5cVRL?=
 =?utf-8?B?R2lTUndkVVZ0cmdralZMMlRrVVQ1dENqRkdmZkN0Z1FvdGZ4cjRUSUNyV29H?=
 =?utf-8?B?WEl1QWdsMFhnQUNKUGdyYnc1TkhJaitZZWJRTHozd05GNi82ZktaYmREZFQ0?=
 =?utf-8?B?UGhuSFZPd21VOG5YQXZVNzR6V1VISWkvMjVtWFhiVHpIZTdZanZjdGtWVDJR?=
 =?utf-8?B?VnJsaTl4Rm92M2ZMRGxuRnVSV09ST1hXb2JHWmJSV0JoenBKNVI0enFlcUR4?=
 =?utf-8?B?SEU3K3BUSFdVemREMjJEQUoxWnVldjVuMXAwZFd4dGF2aEJsQWcxQ2dZNkJN?=
 =?utf-8?B?Z25Hb0JxSFVVd2ZRYXZ5dUdIY1dxNnVuUlIwdE1xclpWM3hMZStJTUpHRW9q?=
 =?utf-8?B?YWxKVGtOaDREbW5XUGxqdk12MU1xQkxYSzdRU3c1RXpvNWJlV1Z1cTZKa280?=
 =?utf-8?B?b2tYdHJoeHEwTW1EbGZqZDlkTGxCN3kvUWhubWhBdlROTXFQclFSSkNhNndC?=
 =?utf-8?B?OGppM3JYUGltcVM0YnhVbThibDdLb0lHc0hFazBFOHJOaFBiTnZxUzF1UEV0?=
 =?utf-8?B?R0poRjltdnUyK2ltYUEwWGdUQ2IwZGZrK0x1Y25oOWhaYXFZZjJjb09mUXRx?=
 =?utf-8?B?Q3VlTmJtVVRMT2hDdEFnZnpXOFZ4Z0V3SWtXOUptQVZkZW9kbDdmWlQ5U3Y4?=
 =?utf-8?B?UzhNUTRUN2d0dU5lZ2dzbkw1UWlURkl1T2YreW5LVmtsRU1VQXFXNkp0RGVC?=
 =?utf-8?B?NGlRQ1Jzd3l2eXRpWHJqYXVFYlhYNFU0eVdqUHZSNmsxd01sUFNsQUx6U2Nk?=
 =?utf-8?B?T3BDMncybktFczhSY0xtN0RDZ1dFaFZDT1AybXVzTWE4ZFNOcHNnYTkrYStq?=
 =?utf-8?Q?DezWk9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFBiM25YN0VzVjYxc0ZNVGI4aEQ4L01Nc2FJQjRhekEvT2N5YWQyNDFuZXBj?=
 =?utf-8?B?cWR6VHFKdGk2THNTbmNkR0dWMmtTN09Bc09aM2JjOXIwRjIzU29mNHhnZHRu?=
 =?utf-8?B?dnpqeEpzRFNHQlVIRldxTzErRWV6S01lZCtoWXdHcU94cWhocjNsUHJtVEk1?=
 =?utf-8?B?RGJUdjB4MEEyWmxlQ2VsVm5GRWxrY2pJVVJsUURyYnFGcjJxSnd1eVBxYk1v?=
 =?utf-8?B?bng4NmZ4V3JpSXRuZWJaMDBrR3VxWTRiYWNxY2UzU3VLbldzQ3NsMmk3bUVM?=
 =?utf-8?B?QVIyWmZTT2hYWTlidFhqUDYwMnhOWkt5RXVHL0J0R1FTZnN4MHVFVnFmTFFi?=
 =?utf-8?B?RkJ3K0ZlQkdZaVZrd2Z5N3ROTGJrWWVJT1J2YVVldDdIcEowQThRbkVvV0x3?=
 =?utf-8?B?NU56elhUUFhWam5kaGhqaGhNSjZoU0pscVlLTGVkWUlrSjlNa0EvRUhZSUlI?=
 =?utf-8?B?Q3JtMjBmTlFxZEM4MmJoTitNQ0k5R3pQclhFbkl5UUg4eGw2NElzUC9iWjR3?=
 =?utf-8?B?Qlg4WDJrMWpQYkVzUHlpMGw2UkVEZEdBZ3lUbStJL2VUU2JCSkZiOGh5UlBU?=
 =?utf-8?B?WkdJQU44UnlrSm90WEloT2dlWitKVUJqTnA4WGlXdE1vZytJK0FtZ3VRNTlT?=
 =?utf-8?B?MURjc1R6NC9WSEJJL0x6VEs2Rko5M2NzUCtnbFZrYit2V3FSWHZRVHorZkxn?=
 =?utf-8?B?SHhSUWh3WWZQSEo2cm9uN2dwS2lVNXJwWDlDZDdpZ29wWDNlU0VsL29sbzF2?=
 =?utf-8?B?MHpIaUVHNjZwV21RMS9yVXNHcmU2UnhpVVRzNGpYL2lBRVl1UVJ3RzRPOWZ5?=
 =?utf-8?B?c1ZrdWFxbi9nS2NSSnhZcG1ldHRUck41Q2t5Nk84a3JYQThZalpCV0FDcXR2?=
 =?utf-8?B?UHRjQmZ6ZGJtTjlFUk9aaTNuMXdaOGIycGw0MitaVmNnQmcxWDI4TlA2R1pJ?=
 =?utf-8?B?Y3BMWTMzOGVjZkJHd09HbVlQNjFUM3ZWWTAxcVVMNjNZZmw4Z1dhSFJYdGRT?=
 =?utf-8?B?M3dEVG9wOE1ubnhMZEFxYVBmdGpVMTJFL3RWbXN1RWpxMVVreDN0N2Y3YTVU?=
 =?utf-8?B?b0ZBWERydXFGQ0x3SmwycTNlazhjL0ZlWThpNlVKWmFVeDVNSWhuZVlrWVBQ?=
 =?utf-8?B?ZkpPM0dGd3pWYTRvbDY1K1dIUk1DU2tiNFdZUFQ5SlZQdE1INnRMWGpPOGpH?=
 =?utf-8?B?YmJoaXNkczRuTmpDdGhCdFNMMU1KNktxeWdYaW5xUk1TVkN4TlBiNEFjQklY?=
 =?utf-8?B?d0w2M2dvZzUxU1dkeTEvOW9vQzRoM2o5WXBBRm1JU2t3UHh5cHdQQnFRT3M1?=
 =?utf-8?B?WlZUL0kyalh0THZ0VjJKcTZkbFBwcEdIRDdScVd0dVIzQmlId0c0ZzZzTmpw?=
 =?utf-8?B?a1R0VCtERFFGc0lOV0NueG4zMDNlUXVKNWJrQjRQcGQxdWJnamZMZFNRK1lD?=
 =?utf-8?B?RFF1WjFoMWZtbHBUQVRWZGhMOVpjOWpXb2FaNzd6QWs1SjJuMDdzMXZGdTZq?=
 =?utf-8?B?dExTSzN2TFl1YTM0VDNSdEVmQWFmM2gxdmQxSVk3ejhSOFppb2hxSkltbjUr?=
 =?utf-8?B?TTd0NWtiN2cxa0JXRC9SN29pc2xqdHo4UXU0QlEyTDRQVDNIQk5tRFRidUFu?=
 =?utf-8?B?TndNbzU3VmNBWFBwVjlFV251SG1EWGtZaTlVQUtnTVZYNStMZTVwZ0F2QW1i?=
 =?utf-8?B?SUlLK0Jvak4zb0todFkveTBGajdhS1FiV3o0OFhVTTJMUEovS2xTSUY2OTFk?=
 =?utf-8?B?L2VzbW5KYVRKdzEyVWNFV2FlNFBGVml6SUo0a0NiYTVQSGJqckVLSjltVVVy?=
 =?utf-8?B?TTZCWmlxYitWQjVDaHA3YTE0SzBVTWdUdlE5TXF2RkJ4TzQ3T2dyMEJUSXpQ?=
 =?utf-8?B?WXNacEVVZ2hJYWNaREdRaEJ6bGJqR0ZPQ2t4dWRmdGY3QmcwZVBhUkhqL1k4?=
 =?utf-8?B?TTJnWDVXWndWbmJSeTZLRSs2YTlmRlZRUkZaR1d5c1ZNM2EyU2tBUS90eEVP?=
 =?utf-8?B?eEFiZFl1ekR3aWdoZFlmbGQwR0cwbEVFWEJGYml0Qm9YT21ZZlBTRTF3ZTdU?=
 =?utf-8?B?SG5uNjRXc0lOeTU1N0tScGpWdGMwS1dyZ3BRR2I5SW1SbytXcDZud29OZ1BS?=
 =?utf-8?B?cG1LSVFZcjdIOFJKUnIvYVV0bDExSmdQRElKZjQxbDZiaXVuMlZ1QjFFTGs1?=
 =?utf-8?B?VERDRnpFMWZCcFViMXZISUlzcnNqQnQ4dUhjck1Bbk5XdWIyKzVLTzl3c3ps?=
 =?utf-8?B?N3dSaDhOUm55dElKN2swY1hqeGNBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9A01B898D7E7D1429EA6137600451CAB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a416e272-9ed3-4e9b-db76-08de395150cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 07:37:34.3490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2nhfyxIn3MxfU5XLVonjQmqYAbE8F7T/cWjccegqW1nV0adSRgR7y66A+y07zJHGxfoVwOkYWBIcudKN/xZkeze36F3eyv+2jPUXWWDi9ys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5980
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

T24gVHVlLCAyMDI1LTEyLTA5IGF0IDE3OjAzICswNTMwLCBEaWJpbiBNb29sYWthZGFuIFN1YnJh
aG1hbmlhbiB3cm90ZToNCj4gaWYgREMzQ08gYWxsb3dlZCBzZXQgUFJfQUxQTV9DVExfVVNFX0RD
M0NPX0lETEVfUFJPVE9DT0wNCj4gaW4gQUxQTV9DVEwgYW5kIHVwZGF0ZSBkYzNjb19zb3VyY2UN
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IERpYmluIE1vb2xha2FkYW4gU3VicmFobWFuaWFuDQo+IDxk
aWJpbi5tb29sYWthZGFuLnN1YnJhaG1hbmlhbkBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jwqDCoMKgwqAgfCA0ICsrKysNCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdzLmggfCAxICsNCj4g
wqAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gaW5kZXggN2NlOGM2NzRiYjAzLi4yOGE5
NWY2ZGRmYWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5jDQo+IEBAIC0zNDcsNiArMzQ3LDEwIEBAIHN0YXRpYyB2b2lkIGxubF9hbHBtX2NvbmZpZ3Vy
ZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoA0KPiDCoAlhbHBtX2N0bCB8PSBB
TFBNX0NUTF9BTFBNX0VOVFJZX0NIRUNLKGNydGNfc3RhdGUtDQo+ID5hbHBtX3N0YXRlLmNoZWNr
X2VudHJ5X2xpbmVzKTsNCj4gwqANCj4gKwlpZiAoaW50ZWxfZGMzY29fYWxsb3dlZChkaXNwbGF5
KSkgew0KPiArCQlhbHBtX2N0bCB8PSAoUFJfQUxQTV9DVExfVVNFX0RDM0NPX0lETEVfUFJPVE9D
T0wpOw0KPiArCQlpbnRlbF9kYzNjb19zb3VyY2Vfc2V0KGRpc3BsYXksIERDM0NPX1NPVVJDRV9B
TFBNKTsNCg0KVGhpcyBzb3VyY2UgY29uY2VwdCBpcyBnZW5lcmFsbHkgY29uZnVzaW5nLiBNb3Jl
IHNwZWNpZmljYWxseQ0KREMzQ09fU09VUkNFX0FMUE0gSSBkb24ndCB1bmRlcnN0YW5kOg0KDQpQ
U1IgYW5kIExPQkYgYXJlIG1ldGhvZHMgdG8gYWxsb3cgc3dpdGNoaW5nIGxpbmsgb2ZmLiBBTFBN
IGlzIGEgbWV0aG9kDQp0byBzd2l0Y2ggdGhlIGxpbmsgb2ZmLiBEQzNDTyBhbmQgREM2IGFyZSBE
aXNwbGF5IHBvd2VyIHNhdmluZyBzdGF0ZXMNCndoaWNoIGFyZSBwb3NzaWJsZSBhcyB0aGUgbGlu
ayBpcyBzd2l0Y2hlZCBvZmYuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiArCX0NCj4g
wqAJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxheSwgY3B1X3RyYW5zY29k
ZXIpLA0KPiBhbHBtX2N0bCk7DQo+IMKgCW11dGV4X3VubG9jaygmaW50ZWxfZHAtPmFscG0ubG9j
ayk7DQo+IMKgfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3JfcmVncy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3JfcmVncy5oDQo+IGluZGV4IDhhZmJmNWEzODMzNS4uMTZhOWUzYWYxOThkIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdzLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3JfcmVncy5oDQo+IEBAIC0y
NjgsNiArMjY4LDcgQEANCj4gwqANCj4gwqAjZGVmaW5lIF9QUl9BTFBNX0NUTF9BCTB4NjA5NDgN
Cj4gwqAjZGVmaW5lIFBSX0FMUE1fQ1RMKGRldl9wcml2LCB0cmFuKQlfTU1JT19UUkFOUzIoZGV2
X3ByaXYsIHRyYW4sDQo+IF9QUl9BTFBNX0NUTF9BKQ0KPiArI2RlZmluZcKgDQo+IFBSX0FMUE1f
Q1RMX1VTRV9EQzNDT19JRExFX1BST1RPQ09MCQkJQklUKDcpDQo+IMKgI2RlZmluZcKgDQo+IFBS
X0FMUE1fQ1RMX0FMTE9XX0xJTktfT0ZGX0JFVFdFRU5fQVNfU0RQX0FORF9TVQlCSVQoNikNCj4g
wqAjZGVmaW5lwqANCj4gUFJfQUxQTV9DVExfUkZCX1VQREFURV9DT05UUk9MCQkJCUJJVCg1KQ0K
PiDCoCNkZWZpbmXCoA0KPiBQUl9BTFBNX0NUTF9BU19TRFBfVFJBTlNNSVNTSU9OX0lOX0FDVElW
RV9ESVNBQkxFCUJJVCg0KQ0KDQo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5229902B5
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 14:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA1710E9F3;
	Fri,  4 Oct 2024 12:09:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AO4rxtdY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873F210E9EA;
 Fri,  4 Oct 2024 12:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728043751; x=1759579751;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=72v8JbomfwPPw5ZVvnMG/pX431Ys0osh6RCrbMb7AEM=;
 b=AO4rxtdYxFJ/B9ATrcns+qt11XDccH2xB8byboDMhan/mV55/cb9KGqJ
 4Z1bpjAjgHlOQWRyLcY+/OX9lrnzVDRIH4e9OSH00170en4o7x6hEd0Zd
 8LoEggGPrv0rb7HFmV8XTgfcauhGCjneHbrvFCnzVc3avRgm3kC1rY93M
 LngRZTeORaeSQBNcn35syvKwWvM4+VGP9uUdNE4HmOJPIV5MrkLh3XX/d
 U7zbgnw7UbMITs71CE3T6NO2/mgcC4776zmksqFOUkbKrkFBOm5a/GHoa
 GckCosSv76E0QsV+rfgz8l/GDjcwdpQ35HbDlmHFoAC8pI8c+kaFCT+Gu g==;
X-CSE-ConnectionGUID: VBCmVVboSsihUINgJfEdSw==
X-CSE-MsgGUID: tc/VnR6ASXOa34Bj+R2+6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="26730773"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="26730773"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 05:09:10 -0700
X-CSE-ConnectionGUID: FE0sLWUBT/S2ZNsSWOjiOg==
X-CSE-MsgGUID: +KqJ/nqEQS6Kioukymm/mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="75499479"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 05:09:10 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 05:09:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 05:09:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 05:09:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fD5czkKclEtOq6lX6Hpkh1euQ0qZwZSuclbpxmrNyz0sfdwoEbLwcCAg966FTW04AuYTkAktP5HSgBS60BErE60fwk/AJXdzIXAAAGYVW4Ch0zDuCTcslJ+MR7ZUdajRs2PWrJG+SqnBFLsJKcnFCbzI9ucIMnCO+taVm6cFnVegOz4tbmzrKk28ySyItPFclF38m9PL1G1ZqCSBgQr5GxWfzvug3ieDm/Oktc07An78L626Ht80Dx3F5SH7zii9Z6dTWBeQGS67+dVzIUTGLoYDaBdW6ugnHaAJMYQ9sSYWAzgCqE441NOqC0AuVeoFLmcneBwZOhZkYoADbZe5Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=72v8JbomfwPPw5ZVvnMG/pX431Ys0osh6RCrbMb7AEM=;
 b=tG7IuOtlsIe5UGAmiYU4aAEu3etiWJxE7QH2C1QunkyFykUifSJUImRkhQuX4/36lF4gQLnna/eZAlGfG4PdEEFVDSpJ3mQljD6iOXCK3sQk/ASIia7rXGtFwb1VJQjdCfcg8TkghMFTbQOgJGTPF7d64DWfiCiXTAWoOrcY6KcjX4132teV36UcgFgQZBEloyEY20yZELuEoST7PX2OyPz4GilMXJj4LkNScPXC+mZQNNn7MYGdFbE19I/5uQS0tHjZV1O8WmTNTKlMBvZrqAmC1CFUL6z7T+D77w6qt5/DJngIwFCMLOaewkuEI+l0oVD2SuJHqJ8ShKK5T6BS+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SA1PR11MB5897.namprd11.prod.outlook.com (2603:10b6:806:228::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Fri, 4 Oct
 2024 12:09:03 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%6]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 12:09:03 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@gmail.com>,
 "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIE1pc2NlbGFuZW91cyBm?=
 =?utf-8?Q?ixes_for_display_tracepoints_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTWlzY2VsYW5lb3VzIGZpeGVz?=
 =?utf-8?Q?_for_display_tracepoints_(rev2)?=
Thread-Index: AQHbEEpE5y0A6sZXPU+kWFHEfH3B2bJ2fB4AgAAFugCAAAK1gIAABYaAgAABlbA=
Date: Fri, 4 Oct 2024 12:09:02 +0000
Message-ID: <DM8PR11MB5655B7F53B7DE581586E8A77E0722@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
 <172737888746.1108589.2342053256867257061@2413ebb6fbb6>
 <172804037058.2413.13969013073462156051@gjsousa-mobl2>
 <878qv4rtkv.fsf@intel.com>
 <172804218117.2413.12993827581789365696@gjsousa-mobl2>
 <DM8PR11MB565565A6F76562CF402EFC82E0722@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB565565A6F76562CF402EFC82E0722@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SA1PR11MB5897:EE_
x-ms-office365-filtering-correlation-id: f7898b88-ad4d-48d1-6c46-08dce46d564c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MnBUM3dkVm1TbSttUFNsd1llWVMrOHpVM1dTcVBHM1dvK1dZVlViK20wVCtC?=
 =?utf-8?B?UTVUamExL2NrMndqeXJ1UTNnZmNPRlVjZHhQMjhSRTk3RXFzdE5EQ1pDa0tm?=
 =?utf-8?B?SFpKcWRYd0RzR0pVRDFUVU5oWUxrb0tNK1Z6ZHo3S0Jydnk2dWVTQk45SGdx?=
 =?utf-8?B?VklVS292VFdRWWd5SklIdGZkLzdNYjhSNlRwN1Zic2R4Y201MWVVN0lINlFU?=
 =?utf-8?B?cGNVVDVuU1hxNFVLdHVJSmw3ZzJ1VzlqY3FVSXlVRTVQZy9QbWhLcUl0b1k5?=
 =?utf-8?B?TFh0UG1WVm1Lem1FVUV4TnFOMmJ5M0ZKbEp6OGd2d3ZOR2oxR3VmTW9YN21R?=
 =?utf-8?B?OS8rYWlhc2xzWk8zcnJoRWFDUkhpVEpSdDhYV2tKQlNDZkdMSitPY1BxSTE0?=
 =?utf-8?B?bmdRRFQ3b2JOVExBMm1DaENsUUN4VHgvUDF3WW9KUExuMTFZMmpjTk1XS3l1?=
 =?utf-8?B?dXFMUnJtOG01WWNteG93SUJJdDBvbkdkUzRsWXIxbWh4NDNObUpoRHE4elhL?=
 =?utf-8?B?M2x0aElCR21ZKzR4TW1tM1NwdE9XbmNBWnkwZlgwQ0lHYU15NWhBelpkN3Rz?=
 =?utf-8?B?VkFnUUErU3VkS25OOE1ySGhSTWZDVW93cXI5UkJ5Z2o1bWZ2WmM0Q3hEV2xw?=
 =?utf-8?B?WDlsYmpWUlNaUXBkbzNnMTVWZitCS2ZoRU9jekxpK05PUmRpSVRITUtYOEF4?=
 =?utf-8?B?ZU9OT3dlOHZ1ajFhT3o1aWF0S2JmK2lhZ0pMMUxReHMreVdkNTdvaE0rUXBr?=
 =?utf-8?B?UWtaMWZEMnZMdzI2MjdQaURNaEt2clRYb2dYNlo4eVhpRHFjWmRVVkUxOFJ3?=
 =?utf-8?B?QzEvZmpNa0RNYmkzUUhwRUVWZVVIaHRGSHd2QnI2anFiUnZwYTJUam8zbllC?=
 =?utf-8?B?Uk5IOHBCR1d6NU8wdU1QSWdRV1haa0crcWtxZDk3V1hPM2RKbHplMlJQYUpj?=
 =?utf-8?B?VDM3QkZHRnB5b0R2TU1ncDIzSmRreXpzYldFYURGZGxJNm1yQXhwMlk4WVVM?=
 =?utf-8?B?L1l2SFIrazVBL3EwNDNBYzlud0pzWWJtV2xJV0dtRFpSR05TTTRXQSs3SURy?=
 =?utf-8?B?Vy9BUFVmMU5KYk13dFVIOUh5dDN6V2pWY0RtMHJJT1l1dmdLQ0FROEFhaVFi?=
 =?utf-8?B?L1l1SThZUXJTOEk2VmxTalRMTVEyOVdFczdpaEx5U1NNalp0djBaR1pVei9v?=
 =?utf-8?B?eFFaWnE4a2tmTUJQcEhTMkVrQit3TTYvYk1XV0IrdS9ibWpzUFZYZkxyU2I0?=
 =?utf-8?B?TmZ4M1hMNFJndWxBWHNjMC9aV3BxV1J6a2VQbUIyeHE5RE1JNlJUano2NUh3?=
 =?utf-8?B?U25KTG9ockM3RWVzSm1hNVZ4UldVak9Rc2g5dHdFcXQwRkxCODExYXNGVFc1?=
 =?utf-8?B?NFBoc3p6Q3puMlRnbkVyRkUrRTRhM1NBeGg5aEIvNXNZK3d2cnpvSDFhaUxy?=
 =?utf-8?B?TEhCQndjYUI5aWJHOHhwWUo0UG5iRTl1ZE8xUU5hWU02ZERqNXg1OWU2YW1U?=
 =?utf-8?B?TDJ4OFE0eEhadkFWVEo1TzFyd3J4YUFtNUM1azhZNk9WemMzSzRrdWxsY010?=
 =?utf-8?B?WGs3NmVhV3kzMGllYW9JRXIyUVV1WTdPRlFMd1FGcnRZNkgyUkZYUDZ6WGZV?=
 =?utf-8?B?SXFVNDhQeG5US0VGNW5MMG9LQlRzZWU1NHZtSThVYjJ6TW9WVks5Qk5TSFU1?=
 =?utf-8?B?Rkl0NTB1aWRsNmtVZ3g4bTdoQ0tNS1Q5YXNJaUdWcW5JSHNNdUxNQnc2TDM4?=
 =?utf-8?B?eGthMTNvNUZlaitoaWZKQjA0NC9DRi9ZNTBnbW9laHlYdE5mTzRaL1RCaWcy?=
 =?utf-8?B?ZTg4dk5YUHI5YzNUWlBuQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTl3OXZiWm5lNFFETUhKa0x3dVFEUGNLaUpncm9nZVRSRFd5NHJDN1dWNkxU?=
 =?utf-8?B?bnI4aE9yOHdDcjdFbUhFY0c1U2tTVjNBTW5ROXBTd3FiRWZleVJZcUJrZ1NO?=
 =?utf-8?B?b3BmZklxS050NVRtOGJoY0NjWFdpMTRCaGZWcW5RdHljVnU2dVloV3ZDdTVx?=
 =?utf-8?B?L01ISlJRSWpKOEJ2QVQ1R3ZQUGRTRDJ5bUp1M3RoVWVtWllnRXNZZFB2UUw2?=
 =?utf-8?B?SWcxUkJoTXcwVG5kbXhwRENzVGF4bXcvdGJFTzY4WDZtVFNwMFNhckY5SnZi?=
 =?utf-8?B?UGtGQUU3dXI3K21OVkQ0eDB4Vld6d2ZvRnhqV3BkVlNraWpaR1J6cmxoQVJs?=
 =?utf-8?B?cjNjMmFIRXpFZ3FrUThINmNMNk94dkNpYjJqL2x3b0hUa1BvZ3BlTkU0SGpD?=
 =?utf-8?B?RFhjUXlwTlJET3BHNUtYLzlESjRsTndFN3ZieWw3NTlqa0ZVbE1sYk5XZmVt?=
 =?utf-8?B?bnAxT2drbkcvZ2l3SlNwZ2FBM2hraDdEdWZ6RDY3WmwySE02bkl6d3IvZks2?=
 =?utf-8?B?QWxhNEQxMDlIUFpFTjJJQ3hPREJLRXl4akpNZ2NNMjBreEl2OXRXcTRPUFdp?=
 =?utf-8?B?Qit0RW1FQ1V3bmdlL09SQktuNGc5MjBybE9JMnZJSWdRdDM0YWNLVTZkVklv?=
 =?utf-8?B?QUlCZkZjczA5NW55M3Q0dVdiQVNaWWdCL2JvWGdDNEZaK3E2M3kzci81dGtK?=
 =?utf-8?B?S0hEdU42ZUhmYWpCeTN0RDlQTHZYWlVQOXBLSjlVNGNWZ1Q4RlFpR0hXZ0s3?=
 =?utf-8?B?a2VZR0N6NEZBbFZhL2pDZkp3bXpwMTFJc2F6UmZVNnNzVHhJWHRUMGxYRTFI?=
 =?utf-8?B?L0NSVzI2N0dRU1VuM2NWdGY1cXorRGZPTE9DKzNkQ2V5UjVtbEVRNGtLS0RP?=
 =?utf-8?B?b0JlVjBrNERIQ0QxUkJjMU11dld4U0xqdXloN3NZbUpicHFMSzJlblVzV1Nk?=
 =?utf-8?B?cVhsZGFrMU1jYkhkVkhpYXVoTUhib2g0bjZUbnNXS0lhN2t0TDdmQkZweHNI?=
 =?utf-8?B?RW8vNWZaRlJ1ci9JN0tXOS9yOTlmL01tL3FTZ2xISlN3VGw3MEkwRC9mVTIz?=
 =?utf-8?B?cURnWlZqVVRERGVtZzZwRUdGZUhPc1E1dXV5L0E2VnhxRTFKR3VwSlJYWFhQ?=
 =?utf-8?B?ZTZMZ0pFbnBnbmlkWWxFRys1MXNhN1FkM2hDSGRIT1FTY3FHMmp5dkptS0hJ?=
 =?utf-8?B?ZmpEMVY1bEFNNHQ4ZTBMTHExb2Vwbnk2YS9DdXNFeW55QVRBVmVZcG9pSndS?=
 =?utf-8?B?cFNOZlloeHB6N2pzUUxGVnkrelRUc2VjeFdtT3YwekhtN0xqTi9UcWZlSlVv?=
 =?utf-8?B?RVRtNzY4c1ZrL2hMbFp4UlFzdmw0Z1NtTlFlaFZta3RKcHc3bURBSmM2RE5P?=
 =?utf-8?B?LzhldVRkUmRYS1MwUDFlUTZkcnFpTWtKVHVqVTZpSURZSzFqUmROVUh0R0NK?=
 =?utf-8?B?Z0dhb0ljYTgza0hGY3R5SEVydHUrOUVDSG1Nd1hYdjVwTnBQaGNEZEJkOXJK?=
 =?utf-8?B?MWhsNVlWeW1pU2ZUcitPbHlMSVFMTkNEaVBpQnBTRWY5RkpNWEgwWWNSOFJR?=
 =?utf-8?B?QUdDaXgvVlFrWTZRaW9VVVYyYk84NjkrM0JYMFNyMkxuTnFpUUl1WnRWOG11?=
 =?utf-8?B?NUdJU2pOS1h3YllJY0NDMVd6SnlEZ2NWcUh2cG5OVlhBOTBQRkxqL1FDcnlI?=
 =?utf-8?B?RjBwaDlGZFJUdnpnNDZFS3N5bGhlOE9SSlF3eDYvcVVYWjVBK2VvTElFYldY?=
 =?utf-8?B?R0dRWkYrM2RJNjM5aDRhWVZ0V0xZcjNQRW9WeU8xQXJiMFFTMnVxc1VwMkRp?=
 =?utf-8?B?eDI5TjVJMEpsVUVLSUpBaGNOdDI4SHBCZkF4TEI3UnllNS9pZkliMnY3NFlP?=
 =?utf-8?B?cERFcDkrek8vQkVXU3ljM1JGU1YvN3Q0Z0FCVnNtZXY4ZXNCYUU0aTMzNjVQ?=
 =?utf-8?B?QldEYlFuWGNJcERUeGVna3dKSXpZRW5XWWVtLzVrMmlTQ0tqWmdjdWV0YjB6?=
 =?utf-8?B?WTkyUmZLVUFiWDJoVXRVWVg1Y2doWVlYbERCaEFRa0d5RXF2TDRiUlNGa3dU?=
 =?utf-8?B?aDhKU25vdFlLWkkvTXBmOHpxMTJ3WGVDTUZGVFp4eUo3NGdlcUVOV3c1NStI?=
 =?utf-8?Q?pxvj/BqAd1OK4a9BoZ8UWzZOf?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7898b88-ad4d-48d1-6c46-08dce46d564c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2024 12:09:02.9931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gw/6HWbEKgRXL+k2vqPQO+H7GO3MEr83MPFSlTDxEwO1W9BqiE9xeF/x+RxUNNxxLLVcFlTFReFt5jdamFwKyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5897
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

SEkuIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IFNh
YXJpbmVuLCBKYW5pDQo+IFNlbnQ6IEZyaWRheSwgNCBPY3RvYmVyIDIwMjQgMTUuMDMNCj4gVG86
IFNvdXNhLCBHdXN0YXZvIDxndXN0YXZvLnNvdXNhQGludGVsLmNvbT47IE5pa3VsYSwgSmFuaQ0K
PiA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAZ21haWwuY29tPjsgaTkxNS1jaS1p
bmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUkU6IOKclyBGaS5DSS5CQVQ6
IGZhaWx1cmUgZm9yIE1pc2NlbGFuZW91cyBmaXhlcyBmb3IgZGlzcGxheSB0cmFjZXBvaW50cw0K
PiAocmV2MikNCj4gDQo+IEhpLg0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4g
RnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+
IE9uIEJlaGFsZiBPZg0KPiA+IEd1c3Rhdm8gU291c2ENCj4gPiBTZW50OiBGcmlkYXksIDQgT2N0
b2JlciAyMDI0IDE0LjQzDQo+ID4gVG86IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPjsNCj4gPiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGdtYWlsLmNvbT47DQo+ID4gaTkxNS1jaS1pbmZyYUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBSZTog4pyXIEZpLkNJLkJBVDogZmFpbHVy
ZSBmb3IgTWlzY2VsYW5lb3VzIGZpeGVzIGZvciBkaXNwbGF5DQo+ID4gdHJhY2Vwb2ludHMNCj4g
PiAocmV2MikNCj4gPg0KPiA+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMjQtMTAtMDQgMDg6MzM6
MjAtMDM6MDApDQo+ID4gPk9uIEZyaSwgMDQgT2N0IDIwMjQsIEd1c3Rhdm8gU291c2EgPGd1c3Rh
dm8uc291c2FAaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+PiBRdW90aW5nIFBhdGNod29yayAoMjAy
NC0wOS0yNiAxNjoyODowNy0wMzowMCkNCj4gPiA+Pj4jIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25z
ICMjIyMNCj4gPiA+Pj4NCj4gPiA+Pj4gICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZToNCj4gPiA+
Pj4gICAgLSBiYXQtbXRscC02OiAgICAgICAgIFtQQVNTXVsxXSAtPiBbQUJPUlRdWzJdICsxIG90
aGVyIHRlc3QgYWJvcnQNCj4gPiA+Pj4gICBbMV06DQo+ID4gPj4+IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1NDQ5L2JhdC1tdGxwLQ0KPiA+IDYvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+ID4gPj4+ICAgWzJdOg0KPiA+ID4+PiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzc5Nzh2Mi9iYXQt
bXQNCj4gPiA+Pj4gbHANCj4gPiA+Pj4gLTYvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+
ID4gPj4NCj4gPiA+PiBUaGlzIGRvZXMgbm90IHNlZW0gcmVsYXRlZCB0byB0aGlzIHNlcmllcywg
d2hpY2ggaXMgb25seSBhYm91dA0KPiA+ID4+IHRyYWNlcG9pbnRzLg0KPiA+ID4+DQo+ID4gPj4g
SmFuaSBvciBSb2RyaWdvLCBhY2sgdG8gbWVyZ2UgdGhpcyBzZXJpZXMgd2l0aG91dCB0cmlnZ2Vy
aW5nIGEgbmV3DQo+ID4gPj4gQ0kgY3ljbGU/IEkgZG9uJ3QgYmVsaWV2ZSBDSSBleGVyY2lzZXMg
dGVzdHMgdGhhdCBlbmFibGUNCj4gPiA+PiB0cmFjZXBvaW50cy4gT3IgZG9lcyBpdD8NCj4gPiA+
DQo+ID4gPkJBVCAqbXVzdCogcGFzcyBiZWZvcmUgbWVyZ2luZywgbm8gZXhjZXB0aW9ucy4NCj4g
Pg0KPiA+IE9rYXkuIFRoYW5rcy4NCj4gU2VlIG9yaWdpbmFsIEJBVCByZXN1bHRzIG1haWwgaXQg
c2F5cyAiIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlDQo+IG5vdGhpbmcg
dG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KPiA+IGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzNzk3
OHYyLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gPg0KPiA+IChJOTE1LWNpLWluZnJhQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZykNCj4gdG8gYWxsb3cgdGhlbSAgdG8gZG9jdW1lbnQgdGhpcyBu
ZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZQ0KPiBwb3NpdGl2ZXMgaW4g
Q0kuIg0KDQpBbmQgaWdub3JlLCBJIHNlZSB5b3UgYWxyZWFkeSBhZGRlZCBjaSBmb2xrcy4gDQoN
Cj4gPg0KPiA+IC0tDQo+ID4gR3VzdGF2byBTb3VzYQ0KPiA+DQo+ID4gPg0KPiA+ID5GdWxsIHNo
YXJkIHJ1biBmYWlsdXJlcyBjYW4gYmUgbG9va2VkIG92ZXIgd2hlbiBpdCdzIGNsZWFyIHRoZSBz
ZXJpZXMNCj4gPiA+ZGlkbid0IGNhdXNlIHRoZSBmYWlsdXJlcy4NCj4gPiA+DQo+ID4gPg0KPiA+
ID5CUiwNCj4gPiA+SmFuaS4NCj4gPiA+DQo+ID4gPg0KPiA+ID4tLQ0KPiA+ID5KYW5pIE5pa3Vs
YSwgSW50ZWwNCg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5833699DF4A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 09:28:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D166A10E515;
	Tue, 15 Oct 2024 07:28:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PArGsv8R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE50410E2C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 07:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728977304; x=1760513304;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GfESn44z+pLCcv1BKVxf5+lHH0SmkNTO7sMsjOKNHAM=;
 b=PArGsv8Ra1nnmbu6dGRo7r2MdovL0MvXcX4NJDxpaSEKFIZqFRI0e+ep
 sbVzk3uaz5w7nNWZliiTlPiiSBC5N8XAKmEpSrptZds9FDHJv5WApHmqn
 ZjkY6KzXjdNWeewVMvZ6UIU2Y9xltmJl6sqwo7W6teWOvxFNVHzYIyToZ
 IdBsmauPl97+ibEMI5NASG9qQaL+Gnh4FrvHETnj+rmtoIIfmwm6P8MUI
 d+KQuAKdqMY4HpXrxIbwsPwqHqQcBumxm+5n2yd5MS7SQNjThBdyTiN+7
 bd1gvvJGBwFlz+BYKQZOpCzg5bPbkuZO3b7bC8V8bJotqP2WwoGYekc2X g==;
X-CSE-ConnectionGUID: xaxmr+6SQoWgfNXwuoPpww==
X-CSE-MsgGUID: tHbcvordTQSXzKIR4KjQXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="28481424"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="28481424"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 00:28:24 -0700
X-CSE-ConnectionGUID: FcVxLR32Sz2Dv7H59+5WqQ==
X-CSE-MsgGUID: OGngpfGXStCrpkrVen59Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="77746604"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 00:28:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 00:28:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 00:28:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 00:28:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dfrJsS/jFqBxjC/LzqobGS+Omwv+cvo2KHzQq8F9djadyBM5YMJUE7g6qKzbMH0R/pHMEj5EWheiqeiAjfwQWoxk+6XCOrwube7/mav/G0tc/YCY0oRfQpjRYaRInTipY0+xgHY0qq+9V0gAmEMBNMmSZjNz8yBosPH8LHTVq8LQj7NKeZMOiY6S1up3Ju/exJuONcF9elXQqejZVvG6I+XPT7gV/jXpY3Ltkb9v/ifDphkL1o8ICZDG4bkWjrk+xzQgAS1BcDbnglPZkHi9+hOq3pN/bzdJoTZMTENuAkrYQtxraL+psE3HKwS3nHgDBd7NjO2Yz3kwx6vlbqOg2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GfESn44z+pLCcv1BKVxf5+lHH0SmkNTO7sMsjOKNHAM=;
 b=tzQIeqAO9XAiwEKoCc7J0BAbsdPm4YKBT6d0rIIutzi2Ch7OYQjoa6Dfm1ap0R5q0/aFPT1x2Zt6lVtRDwG33xjRN5AAi+YQW6MxG+QWDXBiQSQSGjKeXjaQbppzaj+JDIg9a3GdzHahpbbJkEg5txl898tG954ZfSa1Q22k0WshMgmFf6c1d8PVPvyW8AAcF+GKdxGkTM7iafpqU/2IA+IXrmqAHViBvPL3Az05ZTbltnkeUPWvO+4OaWKti7J5QYOPZr3jz3v5r2z3w7tYpoAobD1yfqOy75CRuvihRUFcgEGYcGzZqhWRlv0NXwP+dn4e2+8dOf7yxy2yMr0FBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6088.namprd11.prod.outlook.com (2603:10b6:208:3cc::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8048.27; Tue, 15 Oct 2024 07:28:13 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 07:28:12 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel Replay
 vblank workaround
Thread-Topic: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel
 Replay vblank workaround
Thread-Index: AQHbGlE0QhF5IARESEKMGSWHu0t5c7J+fccAgAj1KoA=
Date: Tue, 15 Oct 2024 07:28:12 +0000
Message-ID: <51d53dcb104fb9ba63966ce48d84744098f40479.camel@intel.com>
References: <20241009134225.1322820-1-jouni.hogander@intel.com>
 <CH0PR11MB54446FA494FB6E3410817FB1E57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB54446FA494FB6E3410817FB1E57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6088:EE_
x-ms-office365-filtering-correlation-id: 3743458b-5a27-451d-eaf0-08dceceaed48
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RW1wY1dtR2ZKQllRWTUrMFVlb2VnbEJFVTdtN3IrajQ0Sko2Zjg4OVdLcUI3?=
 =?utf-8?B?bEZPT0I3K1I0WXNSUDcxakJFUFBSM0VYU3J3M2dLUU5pWjhmR1RaSTZ6SExD?=
 =?utf-8?B?OVZiWk5xUzdERHhIVU1QNUhNZDZmWjYzejA4VEsyRU1BTzlZYVJFcVBKTmpE?=
 =?utf-8?B?cHdYK3hkbDBJaE5rYmdCdC9ScjlVOFQzSXR0cytEeTExWTRQam9ZNW1ndWdN?=
 =?utf-8?B?cjl6VXVMcE00Q3pLOXlsa3ZXSDdDYW5aS2x3Ykg2SXpzNnE5cXF5VXRKNFlE?=
 =?utf-8?B?Y3M3cU5pMDhMZEVpTVo5RnJEVDVvMys2dzliT2w4ejNwTzZOZ2F4RmRaSWkx?=
 =?utf-8?B?SjZQc1pORGFNa1plMzZpVVBwcSs0VzlKZDhuYlpWbWc0SVpiSmFQajFJbWVE?=
 =?utf-8?B?MDkrM1BJM1pkcThjU0N0STNDY2V2MDJBM0ROMjJTR1JjeWtpc1kzY2NqRVly?=
 =?utf-8?B?N3pEQ0JOa2dMcjMwMXd0RE16MTJvVit0OHZBMlFjTHRtM2hhRkcwWEhkSEk1?=
 =?utf-8?B?dGJYaG9rUEtMT3VqU2s0K2syK0ZVbUNyRzZ3UG5sVURFVU8zY0pxVm9xRTdK?=
 =?utf-8?B?V00xSWxDdVlGWjNXWHc4Ykc0NGxrTkdwbTM1SkRnTjFQUGZPTHRwWDRaQVZV?=
 =?utf-8?B?Uk5BZkN4TXhZN1RWRXcvaUpqSjdrTU5MU0lNQU9DUlU0akNjTWdsZ0dCWVE1?=
 =?utf-8?B?dm81ZUs2aXlScnpqL3A1aHJOckxtSUl6eldFdG96OEVCdE81b1Zvdmt0L3BS?=
 =?utf-8?B?ZWtBc1hDeERpdUYxcmlsVkdlYy9LbjRXQWxZTm1mT202aTgyUWlUQVRpbXdz?=
 =?utf-8?B?YnAwMGtFWThvZWpBWnRURUtxNjFnNVZmQzY4cWx0WllQbTJGTzN1bVpiRjhZ?=
 =?utf-8?B?NGpjb09oM1NHWmN3cTVoekRIajNqaWt5SzVEMnE5TXpJdDZzNGUwaE5QNlNl?=
 =?utf-8?B?c0RLR3NXOGRFZEdEa2xsQmJ5ZGdUVkF6WVVmazFsMm5ucGZQMFRSWWFJcGlY?=
 =?utf-8?B?WklBWUFnb2V1ZWdQSkcrWVJvT3pMWlVEaUpqN2grcVNYNnZYUFRrMXNuVEN0?=
 =?utf-8?B?d3R6WmdLdGx4YkhWN2lWZnhSVmhDeS8zN1ZPS0YyTU55WFp0YkQ4VXJtbDNm?=
 =?utf-8?B?V3lQLy91OXRWaFNiWFdBSlFJNlNzTVhlVXFvUjJ6UjZTaEQ0REt3akN2NTIr?=
 =?utf-8?B?ZWpRcTNYT0ljaFhrZTdZQkZrOCs5Tm02cGE5QlNSaTJRTmkyb1pTSUxoNExh?=
 =?utf-8?B?cjFQV3JVNDE3d2NYaDR3VGh3WXViajlYWXkzc05GMXQ1WjhWL0QzZGtEUjdS?=
 =?utf-8?B?V2ZQTnVRd2J0bkJBSXdmN2YvV1UwUGZrOXhLNDdFa3hndHRaY05CQUQyRWpF?=
 =?utf-8?B?YkV5QTFJVnlRQTlYczFEUEdoQUlGNFJtdkd4eWV5c2Z0QUJKQm1oK0JhOGlP?=
 =?utf-8?B?Yk1kT05kS3o1ZHc3MjQ5N3Zwd1JQS29JYS9zWWNPTFlEQ1dEWVBIYmtCK2Fz?=
 =?utf-8?B?Z2ExdEoxY3FURmwrK1o2a2w0NExNcEk0dFN3WG56VDVkUlRESEZ5L1FsOFZy?=
 =?utf-8?B?KzFLYmdzcDlNcTdTc2J5WFpXRjBQMlh3dlBEUkx2cXp6T3dtQ2w4V0pGeFNG?=
 =?utf-8?B?bm5SKzB3ck1NOGZjVUlmc2FZVW4zU2t5OHpzLzZ5bXNsTEwrVnd6QXRTOS8v?=
 =?utf-8?B?SlphNkt4YU5LNTZDN1ErRW1ldmFza3M4bTB4UWcvNGczQmpOMUhqaktDbUFG?=
 =?utf-8?Q?/2aQTfjSew+Lo/gv0qkfhU4PfEz89/+q31wkvmf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T1FCSXcyNEFSYmFPb1ZmSm00TUd4emcyQzJPdFk5VTFzRjNHWDNUTG9zd0ty?=
 =?utf-8?B?bDZYV3Nma3lNdk5VaWJoNTNGR1dXYTJ0Y1VveFI2NmxndG95Y0tsM09GVmRL?=
 =?utf-8?B?RGM2OHd2UWNRelAxb1NwUEJkV1VzWXJIbERnaTY5ak9TaWtydE9uckloODBS?=
 =?utf-8?B?YVRuNXFxcVh6Umx2Q2dVbndJVHJZU3ZHRUZlNSsycFlQY1JJcGJVRzNwSDZ2?=
 =?utf-8?B?WFpFSUltNmNmZTJjaTVoVllOYW9ZZFhMQmNtRktJMDZGdUxCdzNONEg2b3ht?=
 =?utf-8?B?SWJRVjc2bzJHL1ZCendPR1lqQVE1dnViTmhxSTMwK01wRWorRloyR0pzbDJj?=
 =?utf-8?B?MkNLcmlwWVpZK0dWdFEreHU1cTJwNFRtcnZsaDBGMVBOUUlXME81WDVIVWZ1?=
 =?utf-8?B?dE5SS1o0OFoxMFdaUDFvS01tTTFSOGs3bmg4L3NJRHlNeFQvYU9NQUtLWUdG?=
 =?utf-8?B?WVRPS0hrZk52Rk1xUVpibjZXL1FrajJyTXZ2M2Irakt5TXl3dGw5aUJ3TE14?=
 =?utf-8?B?dTlWVmJwZkI4OTNlQ0txc2xqcWxkMWhURkRhaGhrTkM0YkI5UVNPZ25kZjVT?=
 =?utf-8?B?QlB5MzlzTjJKQ2JNRmd1dFhxamhuTngyRXNoZkZjUTFDR2hPSGMxbXI5MUdX?=
 =?utf-8?B?a2xNby9yRXNub0RZMlp0VjZwRGgxdUZCTWhUa3RpajBDeGl4VVFtTUYrWnNM?=
 =?utf-8?B?T2tzMHJDcHU4K29IM1ZHTlNZSStHRXFmZnJlWkR6NjRWZHgrSWFmSjczcjht?=
 =?utf-8?B?SkRyOFZCMWw4SWNQdTlWUnJyU1BHOGo4S3NxWnRCeElRMUJIV0U3djNhQS92?=
 =?utf-8?B?ZHovOThiR1lCZ2lieVB3SjN4NUpScTJrV3lQUXJULzVXQjE4L3ZSM3RLWVNV?=
 =?utf-8?B?UlAxTHBMazhlazVOQmFzWjB2UXZXQmxubEt2c0gwTm15Unp1UkgvNytpVTA5?=
 =?utf-8?B?cVRVTzBuRklmeFVoU0dRVlNNNWpVdkVFTVVUUWVaY1ExV0Ewa2tDRGpiVVVl?=
 =?utf-8?B?TzlHN0JmK3FmWTQxRytZME5yRDNtNTc4cllnbHVlWUZhTktsMTZWUmhOdm1F?=
 =?utf-8?B?cnA1dW8wV2JISmVmNzhLVmZndU42QnZ2SHNCWW93VlBPUFQvVUFRQnV6R3Ew?=
 =?utf-8?B?MVE0WTlOOUpWZUovSE1MdUZ5SnVManErcll3dmVmWFpGOW1Rbkxxa0pQVkxx?=
 =?utf-8?B?OFloQ1dzTlMxOEsrUnU4bTBPQkMxK3FHdTVoeWRZRHM5U21xY2xRTWZ4cjlz?=
 =?utf-8?B?YVRyK2k1Y1ZMeUI3L1JsUUxtYVY4QXVMMUI4RmFIZEtJeFI0NTlGV29hN3VB?=
 =?utf-8?B?Q1FWSGhWTm5ublpkTVpuUmNEak5pRklwaWF0VzFyZllKS0NrZytQNGtyV0FK?=
 =?utf-8?B?NzB3bmV1M2RKY1hUbjVGSjNHb2prbXZnWkpQZ1Vidk9KS1hXUmFWejd0eThj?=
 =?utf-8?B?SS9mOHFRY0c0bFA0Mzh0NWIxTHA2WVhiVmx0a0ZaNEIrdUpYYTM4MWdGeGQv?=
 =?utf-8?B?bjBic0tRREhSa1BBV2o2UVgxSXR2azN1L1MxakJYRi9aa29adzFNUlpsVW9n?=
 =?utf-8?B?aERxVXhwVE1XZ2g4eC9Oa1pPd3FrWUtEOGlzUTA0UktUeTRaY0EwTWp2YWlm?=
 =?utf-8?B?WUpPcW1aaGdxR3RoUGE2QzhrR2QwVDNSVlRzNW9oUGYvOUJYcitZOWlNZkxM?=
 =?utf-8?B?SzBiRytGZGI2aWZLUUVVeGc2V2J2TE84KzlYaVRSUmUvVTN4RzJiYi9TZDkz?=
 =?utf-8?B?MHg0TFlNWDdBQnVuN01GSTg3dWJzb0ErL1ZMOWh6cWV3M1lHcCtqTHRTdzUr?=
 =?utf-8?B?ZnI3MGsxaWI1ZXA0RDQ4MkJJMkxvMENmT2J2ZlNkSUYzZmpvTWhZVzh3eTRN?=
 =?utf-8?B?SytkazFEeU9RdDQ2bGtodHk3UWZXQTQ1akhQR1VKdGlML3dBNWwrcVNIZkNo?=
 =?utf-8?B?VkwrRnRqVmQrL05SWjhPOEFWOW5sV3hIK3NrQXhNZHVkWFQ2U2JoT3U5UXhq?=
 =?utf-8?B?bWFPajg4QXJnVkYvK0ZsSExnQ3RUTnR0TU1zSFlnN2xMSllmcGZZUjhoMTNH?=
 =?utf-8?B?SGtNQ2xYRUJmUjBEdzVlaWV5ZVdrbHQxUDNSNFFUUjU5MTQ4L0lZN3dnTlB6?=
 =?utf-8?B?aDdmdHhtME5FUVh6TzZ5NEdweUNWUkxKWC85czRzMkpLVi9oNlF2QTA2VEUy?=
 =?utf-8?B?UFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BEC633CEBA61BC498C240DDFC74E0A9E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3743458b-5a27-451d-eaf0-08dceceaed48
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 07:28:12.6664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rw6hW56oURDUtt65CbDNQR8sPZWmpmHWu3mYLT0hjZf7m2evBr1JopR5+yu/wCkIWS4Fh+pcthnFmKUoSx7U97fiRupNZVEGK+Yim5G3U4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6088
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

T24gV2VkLCAyMDI0LTEwLTA5IGF0IDE0OjQwICswMDAwLCBDYXZpdHQsIEpvbmF0aGFuIHdyb3Rl
Og0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+IE9mIEpvdW5p
IEjDtmdhbmRlcg0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgOSwgMjAyNCA2OjQyIEFNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiB2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbTsgamFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tOw0KPiBIb2dhbmRl
ciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYy
IDEvMl0gZHJtL2k5MTUvZGlzcGxheTogQWRkIG93biBjb3VudGVyIGZvciBQYW5lbA0KPiBSZXBs
YXkgdmJsYW5rIHdvcmthcm91bmQNCj4gPiANCj4gPiBXZSBhcmUgYWJvdXQgdG8gY2hhbmdlIG1l
YW5pbmcgb2YgdmJsYW5rX2VuYWJsZWQgdG8gZml4IFBhbmVsDQo+ID4gUmVwbGF5IHZibGFuaw0K
PiA+IHdvcmthcm91bmQuIEZvciBzYWtlIG9mIGNsYXJpdHkgd2UgbmVlZCB0byByZW5hbWUgaXQu
DQo+ID4gVmJsYW5rX2VuYWJsZWQgaXMNCj4gPiB1c2VkIGZvciBpOTE1Z20vaTk0NWdtIHZibGFu
ayBpcnEgd29ya2Fyb3VuZCBhcyB3ZWxsIC0+IGluc3RlYWQgb2YNCj4gPiByZW5hbWUNCj4gPiBh
ZGQgbmV3IGNvdW50ZXIgbmFtZWQgYXMgdmJsYW5rX3dhX3BpcGVzLg0KPiA+IA0KPiA+IHYyOg0K
PiA+IMKgIC0gcy92Ymxhbmtfd2FfcGlwZXMvdmJsYW5rX3dhX251bV9waXBlcy8NCj4gPiDCoCAt
IHVzZSBpbnQgYXMgYSB0eXBlIGZvciB0aGUgY291bnRlcg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiANCj4gTEdU
TS4NCj4gDQo+IFJldmlld2VkLWJ5OiBKb25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNhdml0dEBp
bnRlbC5jb20+DQoNCg0KVGhhbmsgeW91IEpvbmF0aGFuIGZvciBjaGVja2luZyBteSBwYXRjaGVz
LiBUaGVzZSBhcmUgbm93IHB1c2hlZCB0bw0KZHJtLWludGVsLW5leHQuDQoNCkJSLA0KDQpKb3Vu
aSBIw7ZnYW5kZXINCg0KPiAtSm9uYXRoYW4gQ2F2aXR0DQo+IA0KPiA+IC0tLQ0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaCB8IDIgKysNCj4g
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuY8KgIHwg
OCArKysrLS0tLQ0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gPiBpbmRleCA5ODJkZDk0NjkxOTUuLjQ1Njk3
YWYyNWZhOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfY29yZS5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+IEBAIC00NTUsNiArNDU1LDggQEAgc3RydWN0IGlu
dGVsX2Rpc3BsYXkgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogRm9y
IGk5MTVnbS9pOTQ1Z20gdmJsYW5rIGlycSB3b3JrYXJvdW5kICovDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB1OCB2YmxhbmtfZW5hYmxlZDsNCj4gPiDCoA0KPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnQgdmJsYW5rX3dhX251bV9waXBlczsNCj4gPiAr
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qgd29ya19zdHJ1Y3Qg
dmJsYW5rX2RjX3dvcms7DQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHUzMiBkZV9pcnFfbWFza1tJOTE1X01BWF9QSVBFU107DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0KPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gaW5kZXgg
YTQzNjdkZGM3YTQ0Li44MjI2ZWEyMThkNzcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gQEAgLTE0MjQsNyAr
MTQyNCw3IEBAIHN0YXRpYyB2b2lkDQo+ID4gaW50ZWxfZGlzcGxheV92YmxhbmtfZGNfd29yayhz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmRpc3BsYXkpLA0KPiA+IGlycS52YmxhbmtfZGNf
d29yayk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShkaXNwbGF5LT5kcm0pOw0KPiA+IC3CoMKgwqDCoMKgwqDCoHU4IHZibGFua19l
bmFibGVkID0gUkVBRF9PTkNFKGRpc3BsYXktPmlycS52YmxhbmtfZW5hYmxlZCk7DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgaW50IHZibGFua193YV9udW1fcGlwZXMgPSBSRUFEX09OQ0UoZGlzcGxheS0N
Cj4gPiA+aXJxLnZibGFua193YV9udW1fcGlwZXMpOw0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoC8qDQo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIE5PVEU6IGludGVsX2Rpc3BsYXlfcG93ZXJf
c2V0X3RhcmdldF9kY19zdGF0ZSBpcyB1c2VkDQo+ID4gb25seSBieSBQU1INCj4gPiBAQCAtMTQz
Miw3ICsxNDMyLDcgQEAgc3RhdGljIHZvaWQNCj4gPiBpbnRlbF9kaXNwbGF5X3ZibGFua19kY193
b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogUFNS
IGNvZGUuIElmIERDM0NPIGlzIHRha2VuIGludG8gdXNlIHdlIG5lZWQgdGFrZSB0aGF0DQo+ID4g
aW50byBhY2NvdW50DQo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIGhlcmUgYXMgd2VsbC4NCj4gPiDC
oMKgwqDCoMKgwqDCoMKgICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfZGlzcGxheV9wb3dl
cl9zZXRfdGFyZ2V0X2RjX3N0YXRlKGk5MTUsDQo+ID4gdmJsYW5rX2VuYWJsZWQgPyBEQ19TVEFU
RV9ESVNBQkxFIDoNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kaXNwbGF5X3Bvd2VyX3NldF90
YXJnZXRfZGNfc3RhdGUoaTkxNSwNCj4gPiB2Ymxhbmtfd2FfbnVtX3BpcGVzID8gRENfU1RBVEVf
RElTQUJMRSA6DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRENf
U1RBVEVfRU5fVVBUT19EQw0KPiA+IDYpOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gQEAgLTE0NDcs
NyArMTQ0Nyw3IEBAIGludCBiZHdfZW5hYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKl9jcnRj
KQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoZ2VuMTFfZHNpX2NvbmZpZ3VyZV90ZShjcnRjLCB0
cnVlKSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOw0KPiA+
IMKgDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKGRpc3BsYXktPmlycS52YmxhbmtfZW5hYmxlZCsr
ID09IDAgJiYgY3J0Yy0NCj4gPiA+YmxvY2tfZGNfZm9yX3ZibGFuaykNCj4gPiArwqDCoMKgwqDC
oMKgwqBpZiAoZGlzcGxheS0+aXJxLnZibGFua193YV9udW1fcGlwZXMrKyA9PSAwICYmIGNydGMt
DQo+ID4gPmJsb2NrX2RjX2Zvcl92YmxhbmspDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBzY2hlZHVsZV93b3JrKCZkaXNwbGF5LT5pcnEudmJsYW5rX2RjX3dvcmspOw0KPiA+
IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHNwaW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+aXJx
X2xvY2ssIGlycWZsYWdzKTsNCj4gPiBAQCAtMTQ3OCw3ICsxNDc4LDcgQEAgdm9pZCBiZHdfZGlz
YWJsZV92Ymxhbmsoc3RydWN0IGRybV9jcnRjDQo+ID4gKl9jcnRjKQ0KPiA+IMKgwqDCoMKgwqDC
oMKgwqBiZHdfZGlzYWJsZV9waXBlX2lycShkZXZfcHJpdiwgcGlwZSwgR0VOOF9QSVBFX1ZCTEFO
Syk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2
LT5pcnFfbG9jaywgaXJxZmxhZ3MpOw0KPiA+IMKgDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKC0t
ZGlzcGxheS0+aXJxLnZibGFua19lbmFibGVkID09IDAgJiYgY3J0Yy0NCj4gPiA+YmxvY2tfZGNf
Zm9yX3ZibGFuaykNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoLS1kaXNwbGF5LT5pcnEudmJsYW5r
X3dhX251bV9waXBlcyA9PSAwICYmIGNydGMtDQo+ID4gPmJsb2NrX2RjX2Zvcl92YmxhbmspDQo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzY2hlZHVsZV93b3JrKCZkaXNwbGF5
LT5pcnEudmJsYW5rX2RjX3dvcmspOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gLS0gDQo+ID4gMi4z
NC4xDQo+ID4gDQo+ID4gDQoNCg==

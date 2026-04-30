Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMIiAPI182kUygEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 12:58:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5864A1251
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 12:58:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B687710F30E;
	Thu, 30 Apr 2026 10:58:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dzXQ5YrD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E5310F2E3;
 Thu, 30 Apr 2026 10:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777546736; x=1809082736;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=1yWdH6rNDfxla+cRNBrrtD4leGm2qpKuCHMc4jjL1zs=;
 b=dzXQ5YrDgUQ+9GijLSqy/TnqAboclKHOPbLU5LuzXvoGkbpAI92OefLr
 euONC3jl3FJd497AtX54utHc9UTGGZg8oYFiA96812kZKpShOmXa9ogPA
 K92vrBMbriyWlt4ncFc67G08CCRrXEV5tRpYZEWYbhcPFYDenp16xNGXY
 U93Cd1qK3cMsX/HVzU0lhOyoLG1ohM0LO7PWk7+WOkVkwWzT9EB7ESFfH
 9AlxETFqcX6JS6FfaN80nAjweb3qZyxsUiBk/YLhNZ3aidBYzP05zizxc
 H5erp2z96I/Hf+tSmpWmbFmOdBN+KR3oX76JiLVLDRF3yealKtJdW7xiX Q==;
X-CSE-ConnectionGUID: p7FNNSgOScW7ZSomTe9yIQ==
X-CSE-MsgGUID: Z80H3SSAT76c0Qr17zSb+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="89586451"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="89586451"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 03:58:55 -0700
X-CSE-ConnectionGUID: vVYFzcDkSxSQ6Sq9+lXLhQ==
X-CSE-MsgGUID: HtpF0StSQaWMRisRNi0bEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="233520257"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 03:58:55 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 03:58:54 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 03:58:54 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.56) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 03:58:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UGV1J8q3q/YUPDvuPykN1GlPByr/CLdKbWK27ZTnxIYiGkuGzEOWatFMW0kv/USburp5z8G0+Znc/CVbJ7Tthmd+BrQQRAbxuLtPQF1r/gMiqe1DBE/FsHhk44HPhO50C+0TB7ncuuG34o2IQBcaK8eDOG6Nmk09f057q43JkYIXLsEeKdC9X/OrGTtITMG10mDtRa9NxDnFs17v7fscHKbFyQPwjEITMKNBdsLn0gn5tUii4u0fEKJ23HlD+uv/T+190LO7h1HznRR34JYB52keVdxWYENcMxQ/qnv+P/1hMOds3gh74MMjsfL7OFXEGr9GQ+eIfc+qHtw7GXFilA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1yWdH6rNDfxla+cRNBrrtD4leGm2qpKuCHMc4jjL1zs=;
 b=OYqfi+nN789smmd7IAHU+jeVUYZR4tp/coYB9Vpd+wAJD6IXwEQx5QeSpXQSp0GdX4wpinCFUkz7WpE3tnkpN/m7LhU1D5Y/jpx7KRxMkwcqPQwrVRNuGMIXhNaciC3dx/RAzGmCCuT6mI8UHpM/CTYp2hqSYf/MyVkd9D9bWOQHKEwinsdchy+mFrcJ9ZZ11QEuBKOOaF9pbY1Zgj24SCEwEEFbPmGH14SDADwloqCgwpTlfUSlCnEaEifzBC789XOUm5kCe6TV5bEonafjqSTY6Uf/SCzgFleCpO4E3MhVGJWDtZU475EVBMMiY87EIYOufr/IC1p/4+90EcExPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA3PR11MB7655.namprd11.prod.outlook.com (2603:10b6:806:307::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.20; Thu, 30 Apr 2026 10:58:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 10:58:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: Disable Panel Replay on Dell XPS 16 DA16260
 as a quirk
Thread-Topic: [PATCH] drm/i915/psr: Disable Panel Replay on Dell XPS 16
 DA16260 as a quirk
Thread-Index: AQHc1kanmX6WW3ARgUy/0UQanTYqe7X0Z4oAgAMMjoA=
Date: Thu, 30 Apr 2026 10:58:50 +0000
Message-ID: <3a1936aa917adb7df7c4e4b634354592a76fb861.camel@intel.com>
References: <20260427130554.86040-1-jouni.hogander@intel.com>
 <DS4PPF69154114FE9604C350EDB98C8F30BEF372@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114FE9604C350EDB98C8F30BEF372@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA3PR11MB7655:EE_
x-ms-office365-filtering-correlation-id: 91f0f660-b540-4010-4973-08dea6a77678
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: 1g7/endG4JfFSFeUhcVOV4dn8iYjab05YBXxxnUkp2DWQHS0GI1c/Yp0Q1YHRF/+rkDboBJJxh/GLOSsRzGLmS3GzVYJWSVdDg1At0BlaLSW7xf8phDFyy72bxL4W8k7eV3Fg3CR95SULtYu31pUH3n8m8FnUfeZSjT37iXzBXqWs26eX4ywqwJ6e4+Yy7O8DJtQFYRYZ8KEFCmG84ksWxI+YsYQ7S1FUqGz0l6ELIT3eKRvGvo+I7s7xHY4PeXvX/Cmrj4kL17Nr5Lur/D14m8A4ZU6HvLjlv8JCMSGrt7RTc5uqRJMAVn/wrQAnoZgaxtH98FVuVy9nENZA2py86qvfwTtu1nZ2XvMnBbO2nUhRzvlWN1ED96vLcgiBZkvjOl1e8xlQznSUT0ViVuK0BizSZr+BR4og5SPv1RZEMKSEqSPlGsABBsmkugfbj89H2kbsWPmTmVKPWGGfOoNEaV/4Wwt6CB5+Vv4i6Gfty/R1s+ADQygAOa1xDatbv7vU0mJWIWR6l33mXw8NsG46n+8FG+Xv/XuhJAjgOhUg666QbgTDIC4WFORLQzIUMJdwrZrAZE6uuOb+qMIC1nlKcjGXy4R57qXi8Mu6PNGjGJDQrAd8d6jPOfKre9Ol3ou8wjIMHB+vSZ7m6wiOK/3o2CkTNKuvjQC9NcfB8HzI1ufWLu4hb8b7wh+Ij5Fk/ERBzNSMI5hSHJyLgYDybHBapdn9qcEdvHiZsVo8rrSitrNtdkZkfaapMJby9mxNxxD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHVVa0RENFBHL1l0WXVUTkZ4TFdIQ2hEeUdNRTZQQ3N4L2FPSnJxeFZ2QTk4?=
 =?utf-8?B?ZHFRVDRBWjgrcVNNblJrSFNFRkJjcllwWlhzVHJTZ3NZQU9YUXB2clpyQ3Iw?=
 =?utf-8?B?a2FjLzY4dXBqVnBuZlN1d1dCT0pWTGtaMWpwT3VjNkV4eXdaQWM3ZU9ucDNY?=
 =?utf-8?B?V2w3MkJnWEc4L1Q4Uk1XbW1sR0U3NE5POUdUaEFreTh5NndYdzFZOHlGYXND?=
 =?utf-8?B?UFJPME1XOUhGYURZL3NLMlJMMWh5cE1WeXFQdG9GcjNUM3dRamQzTVlHNDJo?=
 =?utf-8?B?aVZwZDZ3Umtmc1hBeXhjVy9tTWwzelNSZWJER29GeU5JMnVRbkFZSGRnZlgw?=
 =?utf-8?B?dG5iOWNuSFNaWGZqd2N3b0tPY0ZDc3BOeHpvRUt3VGxrQ1hYMmlDbk12R3Ux?=
 =?utf-8?B?ZEZiaGlkSk1JUm00SHUxU1gveHhKWTRlaVdpekE2U29MZ29XT21YWVBtQ1Nl?=
 =?utf-8?B?aWNVU1J2RW4wS3p1U2xmWFVGeXN5N3B6Rm1YeHMySmV1TVBDMEJrYUtFaUdz?=
 =?utf-8?B?dnRBY2lzNEZtem9KWVhrY2NnNnJBYnZ4alhBTFBEU3Fvd01aMkYrZC9rUkc1?=
 =?utf-8?B?dmtIQk45NHNaTXJYVE1DTDEvOSt1YzQ0cUFFT0N2SkNTcUdjajdGdU5jem1x?=
 =?utf-8?B?dEZtTUpmUnZBMnlRTktHeUpzTkp2ampBektMWGJSSFhzQk5ybDJqcTBXc2hl?=
 =?utf-8?B?WHNWREdJNWVqUzNPTXE0bVBsSEpwZytjbGxXMHBZRFA1cVZlL3FsK3BXdjNh?=
 =?utf-8?B?TnM4M3BwTkhBbUpPeFloT2NFZmtQQTBTcWVMc1VPTWNqd0V4YUt4ekJCeCsw?=
 =?utf-8?B?aktkWDBHdkcrRVNCNkxwS3o0M2M4K3dTS1dmd05nQW1zbkNGTUJwaTBXYVIz?=
 =?utf-8?B?Z0duRmdiT0Y3R3ovTzNoSm5aZDR1Mm5EUFE4bUxCNFhFVHRhRzRxeFo3bS9z?=
 =?utf-8?B?SzZoM2NRelRYa3U4SGk0ZmhBMHBWc2pwRzQ3aHdqSXk0RWtyWW83d2ludGFl?=
 =?utf-8?B?SEZpbVhVNVNYRFo0UVJrQW1nY3FzNElUVm5XUEdQdjk3S3JQb2I2RXZQSEQv?=
 =?utf-8?B?ak1iL3FzUDBkNkxWWHJ5WU9iVmowU2F2cjBLTEY0bmtlWWFja1FzdkMzVTNq?=
 =?utf-8?B?Rm1XVlBQdlBrdERUTzMzZU9Zd0NOWXgzd0wzR0I4ME1KcFZRZGpsLzF0UnRZ?=
 =?utf-8?B?U3N1YWFPdHdXL3Iwc2ZuWXlWNDN0dEV3VXMxUllVVXNxVFg5ZnE1NHNMRnda?=
 =?utf-8?B?NENSK09MMVpOMEhKUG5Zbm5xb2s3by9LOENqb2diL3ZFKyt3cWkyeGVHR3U5?=
 =?utf-8?B?SUwxbDBWWmVaemlVRTl4QTd2a0MrRHhzSU45NE5sc25UbnhCUEE3alFWT1Vk?=
 =?utf-8?B?ckZmcUl2ektHaXFMWkRDdFZGUzNBNEU2d2sxVTA3OWIvOE9GMWFDU21jT1hU?=
 =?utf-8?B?TWk1azdhVVpkNzVrWlF6bTM1ay9yVFBRRWlpQ3FJTU9NZ3NvR2M3RTIwb1M5?=
 =?utf-8?B?SmloMFh1N1FlL2NHa2pJamdMUG5WcmNrQlZsWkRzRXNPUmJiNlNwTDlwNkhW?=
 =?utf-8?B?UzdKdzhEemovOHFnOEJuQklERHlwaWFJbXpReWhmTFF3amFYSlVxUDVkTUdF?=
 =?utf-8?B?VytrelVZemZWRWNaTnZCaTQ4ZXV6MUx3TC9aMUVnZlUwRTYyRURhNEVJcDhZ?=
 =?utf-8?B?bUpEL2VPWm9ob3RSNDVaem5LWW9YKzV5cXVFOEpMejVRRktTRklxbEVMaDVx?=
 =?utf-8?B?cy9QS1FwMXNRVW5nYmVocG9NcU50aTl2bTdldDc3TXduN2ZCaURxa00zQUow?=
 =?utf-8?B?YW1pVkI1L1RWV1E2ejZ4WkJpTENmVko4b0puVlpaZE9ERmtaejJnQ0lVeHpK?=
 =?utf-8?B?SGt6ckxVd2xJaFNudnQ2QjdkeU13ZWhnRGFOcUhSVE9WdEJ0MVJuVXVRTGVX?=
 =?utf-8?B?TVlPY2ZKbmFHQSs5VFNNY0V6bGs1YVZNOXZnaXBHNFF0UFZGeVdEZVRFSFkx?=
 =?utf-8?B?TGx6alltSWgySFpQenJaelFVaDJFUlBxT250VDUvamU5OTJONktkUmtodS9R?=
 =?utf-8?B?QUVOUGhvSE10dUp2UGRSUHd1cVMxSGJKczdxYjNReU5wbFFPUjJkd2ZpQlhC?=
 =?utf-8?B?a2I1VEppREp1MFQwMEFDT2ZQMDJlcDdqc3FBS21zZFVsSUhtU3gwSGdVY0JZ?=
 =?utf-8?B?S2lucStUaVlDbllobFVWdCtxTXlxc0ZCdTYraCtIcUg3RytvODlVUEhySTJD?=
 =?utf-8?B?Qy9Oc2swSFVQV2FCMFIyUDRZR3B2RXNXeTEvNHEyckllNmtjdVdDNm1vdEZL?=
 =?utf-8?B?dTlBS3pIczVldUVwa1QySnFudE0rYmRnUEVBQkxNUlhFVEpmSmgzS2JBMlA2?=
 =?utf-8?Q?D+09v2Z5kpUU0asLIg+xdfGI8dZ8iPum63/uo45ZwIRHW?=
x-ms-exchange-antispam-messagedata-1: E9ZS/64mFo6FKkZlIJPnM7VP7rSfQjPWGdk=
Content-Type: text/plain; charset="utf-8"
Content-ID: <766791244F188E47AF536A69D50BBD05@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: eVHzXRY7CHlG8ZTmoglmUwntMP55uZnJt/IOotTngmNmFxezLTR+MUAG1OpxkMWgvILu6P+AOA7rLRGt4yLjvBVGrfwrCzWRYAJlohtlvHxIgOZYIlhIoclPLjyCDW5vG6li9AucAL1fudk7tNrMVvLf2gpWzh6ke8uV+Dzt4DmGg7YlH74V9/jZQlUtkZbhAyZgOvM7Hmblcezi2RrMdVLU85siGcWc8ysnujYSmnqOl+RQEQncdy50LFqE0sGX6nMPpVW8ej5tuz6DkEDvu8lKPMKQzXt4wSSyTLrpoBZnTRsMLOm6KupsO0hmwsAEyrOV9DNMU9FumLr0xaOCqA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91f0f660-b540-4010-4973-08dea6a77678
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 10:58:51.0224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 15VsNXpEE81aIr6l2sK6HeA2YV4PbXQ99upDiObNXhWs7DnbiWpRU+cn6IQ62LWU8rAncRx+lxlZGnEm4vX09RabhFRPhTqmZJOyhA5wkRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7655
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
X-Rspamd-Queue-Id: 4E5864A1251
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

T24gVHVlLCAyMDI2LTA0LTI4IGF0IDEyOjI1ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgSm91
bmkgSMO2Z2FuZGVyDQo+ID4gU2VudDogTW9uZGF5LCAyNyBBcHJpbCAyMDI2IDE2LjA2DQo+ID4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiA+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogRGlzYWJsZSBQYW5lbCBS
ZXBsYXkgb24gRGVsbCBYUFMgMTYNCj4gPiBEQTE2MjYwIGFzIGEgcXVpcmsNCj4gPiANCj4gPiBX
ZSBhcmUgb2JzZXJ2aW5nIHNhbWUgcHJvYmxlbXMgd2l0aCBEZWxsIFhQUyAxNiBEQTE2MjYwIGFz
IHdlIHNhdw0KPiA+IHdpdGggWFBTDQo+ID4gMTQgREExNjI2MC4gVGhpcyBkZXZpY2Ugc2VlbSB0
byBoYXZlIGFsc28gTEdEIHBhbmVsIHdpdGggc2FtZQ0KPiA+IGZlYXR1cmUgYXMgaW4gWFBTIDE0
LiBEdWUgdG8gdGhpcyBkaXNhYmxlIFBhbmVsIFJlcGxheSBhcyBhDQo+ID4gcXVpcmsgb24gdGhp
cyBzZXR1cCBhcyB3ZWxsLg0KPiA+IA0KPiA+IENsb3NlczoNCj4gPiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL3hlL2tlcm5lbC8tL3dvcmtfaXRlbXMvNzY4Mg0KPiANCj4gUmV2
aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNClRoYW5rIHlv
dSBNaWthLiBUaGlzIGlzIG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQuDQoNCkJSLA0KSm91
bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jIHwgOCArKysrKysrKw0KPiA+IMKgMSBmaWxlIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ID4gaW5kZXggODgzZjI5N2Q0YjgzLi5iNmU4
NDBiZmZkNDQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9xdWlya3MuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcXVpcmtzLmMNCj4gPiBAQCAtMjY5LDYgKzI2OSwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGludGVsX2RwY2RfcXVpcmsNCj4gPiBpbnRlbF9kcGNkX3F1aXJrc1tdID0gew0KPiA+IMKgCQku
c2lua19vdWkgPSBTSU5LX09VSSgweDAwLCAweDIyLCAweGI5KSwNCj4gPiDCoAkJLmhvb2sgPSBx
dWlya19kaXNhYmxlX2VkcF9wYW5lbF9yZXBsYXksDQo+ID4gwqAJfSwNCj4gPiArCS8qIERlbGwg
WFBTIDE2IERBMTYyNjAgKi8NCj4gPiArCXsNCj4gPiArCQkuZGV2aWNlID0gREVWSUNFX0lEX0FO
WSwNCj4gPiArCQkuc3Vic3lzdGVtX3ZlbmRvciA9IDB4MTAyOCwNCj4gPiArCQkuc3Vic3lzdGVt
X2RldmljZSA9IDB4MGRiYSwNCj4gPiArCQkuc2lua19vdWkgPSBTSU5LX09VSSgweDAwLCAweDIy
LCAweGI5KSwNCj4gPiArCQkuaG9vayA9IHF1aXJrX2Rpc2FibGVfZWRwX3BhbmVsX3JlcGxheSwN
Cj4gPiArCX0sDQo+ID4gwqB9Ow0KPiA+IA0KPiA+IMKgdm9pZCBpbnRlbF9pbml0X3F1aXJrcyhz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiANCg0K

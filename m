Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D60A054D6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 08:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C7D010E266;
	Wed,  8 Jan 2025 07:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jrtvkmjt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB78A10E266
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 07:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736322925; x=1767858925;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4zmgLjpujN2wP0ozJCQatfZAEJU4acqm5/2rPoec8/g=;
 b=jrtvkmjtHVE2viOncwyX3M0t7/TNbz13NJFY1WhsMLhOaENmVvvr0snG
 K5lDGNjPNjVmenSAdAUEdJQDk2HBiVzAu/jAq9btsh4XgOkDt+oGkD3Pf
 vZXqAyOiswwOHnFPtjYxPAup9zD4ezJm+eAYEzqNKLKPPvJPpabeXjt2S
 FBVtPDFeAP7T9mI51mym0q1BSj3DrKAnJERYycR2IN0Ii7FCn6tKWq2YC
 gbK2kxJbh78MVoRlFKVMw8zRI/agh+wO8canRVS/vzU1Iqz/ckAbbKAuw
 snlHwPfsUtkek1qM1ny8g9CtCwRYeOaJ8tOqGSeHNLeE/MZ8RhZXtWwMR g==;
X-CSE-ConnectionGUID: FgIu1DijQIuboD8o7XLhcg==
X-CSE-MsgGUID: 5llqGh/BRuurES+NeQTGKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36697336"
X-IronPort-AV: E=Sophos;i="6.12,297,1728975600"; d="scan'208";a="36697336"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 23:55:25 -0800
X-CSE-ConnectionGUID: E5x2tt6GQfy4W0l0zKRiSA==
X-CSE-MsgGUID: zmwlHEovTB2Pwwkzpw0x8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107046460"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 23:54:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 23:54:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 23:54:41 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 23:54:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rFT5y0K2vsF45M7VR0U/oS2gpSNvDDZUY+/BMx0nDuKnR0hPwlAztiWEp7f+LokDp+lnJ4RPT+n1Jm4g4zi6r91BkbVAu8swvIovHn5D6E0gJ6nBUo8Tne9t1OXSzNBkgvtpSYlkbmJf92CS4Io0KoK7U85SUuOfa+qHk3kr0NinPnhWcRSRFgKQqQlUr7zODehWH99QtuCTRqPISde4cVfkFCJrnL+t2ORmB1vUYBgPYRBL7qPncb6jxX1wn54Um9WOhEjJNKXIcOFrpM5sXIHWY6J4sZqmAa6Wdssa7DBxw+D2m2rXw7t4SpQQebLFeFUBbZx4rtnGvXsKLG0+aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4zmgLjpujN2wP0ozJCQatfZAEJU4acqm5/2rPoec8/g=;
 b=evLorvDiXz3+SrQn0NWBrKcDb8IF9K0qx9im+a/3WHySkk5YCLcndTz7wfj8eUnzoHiwNE9/E+yvb9PjJu92QDRBdY+saJRmmBvgVYR8OKfFBx+o65/2Bf4tiuYbjIptsLDIA58wkXoNeO+YIZ3cCBRPxcI/lWpXjRhCJgXiWNjWNz07kKRwrTu9IYUWUFEREzTZxi9F0p3+4DL4FJDyqrFPeHWhOVuPmI3LyrTJEvvJWJbRLh8Y3HZNZSfSvbaynlM3W+2SC09X+QhVwCYUtR1Ot09yPHZG/AszOFZaXlRfDUbZ60XA+OoQXf5unjf474jZjI7ZFgX5v/ysoYivFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB6747.namprd11.prod.outlook.com (2603:10b6:510:1b5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Wed, 8 Jan
 2025 07:54:39 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8335.010; Wed, 8 Jan 2025
 07:54:39 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/9] drm/i915: Introduce plane->can_async_flip()
Thread-Topic: [PATCH 3/9] drm/i915: Introduce plane->can_async_flip()
Thread-Index: AQHbGng92YTig/t+B0iCrsrHBW/m07MNDAzQ
Date: Wed, 8 Jan 2025 07:54:39 +0000
Message-ID: <SJ1PR11MB61291B26C7898C78123878D7B9122@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20241009182207.22900-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH7PR11MB6747:EE_
x-ms-office365-filtering-correlation-id: 859d160f-0ec6-499e-5d0f-08dd2fb9b412
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZEJRdDFEZnhTZ2laSkY5SFF1TGNqOHpXRFlBeGxLTCttRjRXZHJ3ak1DMFVQ?=
 =?utf-8?B?ZVhsVGlQMW1JVFpyME55Zlk5SlY2YlROMXo0QjBIN3JpSFRpOWZMc1BuWDJM?=
 =?utf-8?B?ajdLVXk0K2Fzb3UxclZtaFFQL1h6ZnZIZlc4NW81UFRsNTBBbE5OZ0pqT0lS?=
 =?utf-8?B?UHpYT0ZHUUpoMWJWVVpLV2ZubVJJWVVLUkttVmJlVEczVDF1TnF3Qmp0Q0dk?=
 =?utf-8?B?WGZYZVBUbnNxVFFyRlFkZGhhT3cvVVVmTUlHQURia1M0WlFMUmJoeVFucVAx?=
 =?utf-8?B?QlRmWExYN1pXcGRvUTQ0S3A1NXFKbW1tOE5uWGtlUENjenc3YmVmZVBJcmNS?=
 =?utf-8?B?Mi9qZjFKak1RU3g2YWY3TzRLS1hEaW5NWDNDcHpVQjUyaU5ZaFZ1WWgzYjVQ?=
 =?utf-8?B?YStIby9nUkcrcjJQdFRsQXFBbzJFYWpaZlVBc1pzdXYzejBtOXBBeEp6cVMz?=
 =?utf-8?B?bGhzRGZrd0J2ZEoxUHNTQUR4M2ZPc2x5ekx3Vm51WVR5dEVkM0R0WFp6R1d3?=
 =?utf-8?B?MXp1dXg0NlNnNGQ0YUl0NWlXc1F3TkxSUkdGeTJYek9oV2luNEs5L2s3SGRS?=
 =?utf-8?B?U0pqYml1ZmVEbHk4Y1drRjE4R1pJdjgzMFFZdVFHcWxmd1pBR2g0eWVBMG5v?=
 =?utf-8?B?SFpWOFRKRjlqOWsxUElFcHp5YzBXYWFFemIzMnhNbHNHQ0JTdFdqS0tJd2lH?=
 =?utf-8?B?aHZQZHk4NG14MVJqeXlLTlZIanpIYllpdmZNUkZNRlNNNHdvNTgzaUNDbkFt?=
 =?utf-8?B?My9lUjhtUm9EWldCMEdaRWRsTmw2THF2OTgyNXJYNURHN0pkQ0FRZUluZ3FF?=
 =?utf-8?B?dHU3OWtWeUtRV0NXZ1lzMUYzWW5OWEhIZHAwbHpDZFgySzlwa3M1bU5vSWhq?=
 =?utf-8?B?ekFFam45SkpwUkFmbDJNdkpkSS9lZXNadUwyWXNiN1VUcDR3QzhEQ1V5K0FQ?=
 =?utf-8?B?Mk12SXdYSjlKYzNlZHMxbURBWE5HbTJScmlVUG5DU050UUxFNmFnQTJCRXZF?=
 =?utf-8?B?cEpkNzU0OHRNb0U1SlREZ1BYOEZISkw0WFJQZzI1bWQyVmg1ZjVNekpOVG1K?=
 =?utf-8?B?OGRvYVJkNGljYit0MHBnbjJmeUFlWUk5QWJaUU5PV1JtaHlUSDgzTTdRNEsv?=
 =?utf-8?B?UHdERzkwd1VkSWRFMnA1WnNwU0NRWi8zVHhVUG8xVFgxWDN6K2FhZWQ4RUN0?=
 =?utf-8?B?RzJyYkxWbjJEUlNEMmRtL1ZwMjJpSWdTa3dES2NUZm4rZ3NsZlR0NytiRngz?=
 =?utf-8?B?am5IaTVqa3N1WEY1cDhNOE83Y2Vzb3krcFJRb1JJMVhqcEdab3EzN1lyQ1p4?=
 =?utf-8?B?MFRnSFBkWGhIM1p0UDhMMmNWRnoxbXhvZ0Q4NnZvQXN4enZSaHllRXBZcTgv?=
 =?utf-8?B?MUNnR3lpRHdGOTJhVHFGSnBNK2ZHNWVvUmtCRkdrWlp1OCtaTmFSa1l2Znda?=
 =?utf-8?B?bVd6K0psQkZ5VjN6VGZRT2FrT25KNjF6N016eVljMHgvaEZlZHc0d2l3TTdV?=
 =?utf-8?B?SGkzdlRyQy9xbmRTYkUxeVBZbFlKUitXVjhqWjR4aUZsUTZLSXo1Y05Rem9r?=
 =?utf-8?B?VDR5ZUtucUdRTE9lK0E2WHVud1EwaGo3U1AvdGN6ajVTdGg5TmNRbWExVERF?=
 =?utf-8?B?Sm1NS29KRDBkT1BRL01XNitOdldKb1p6RVUwWGJIb2ZOYm83cWV3dTFMdUZI?=
 =?utf-8?B?WGJPU1ViTmhjM1NVdTBjOHl5ZW0wRVczMkJrZlhaUU1LakVXSlVianVqQWVa?=
 =?utf-8?B?VXhta0lteFlHQ3NESmpoRFBqOGpidnVvNG84emY3WENMRThEZ2RrUFJ1RmVN?=
 =?utf-8?B?aWpnMi9CUkdLN1IwVjkxVlMrT0tQN0RqRGRMYlRSeTIvby9jNk5BRUQ2L0Jv?=
 =?utf-8?B?ZU93Tkl3NnpOTDdJYTRZNWFPUkxOQWd0VkdaOFd2Yno4d2paaE9UQlhqbEVF?=
 =?utf-8?Q?PN2qZ1EBR4GFDr9Rmr+SfUrLzWEqjSYs?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnRxblU2cXdJTFJYN2I3WjdaSzFzeEtKaEsydGFaN1dVMHdEVU9lQTg1NlhI?=
 =?utf-8?B?QzRpZzcrcHJ6NTRWM1dBSHgrTnNiZjIrZ3FKdTJXYXA2OXdXOEhKejF0L2hn?=
 =?utf-8?B?NmNKVnBRd2kyaUxiYVhWNS9MMTMvamthcm42Y0dGaVVtL1NSZVV5UDJubjUx?=
 =?utf-8?B?dUl2L3RnaTBQNENGTXdXRHB4d0s5Und3TUR5QTdiUVZaZ0VBb0s1ZWVDSktn?=
 =?utf-8?B?c2lTc2NtN1hDMFVxR3VIWmxwRkZISHd5NUVUVlgvQURPUXVPMmwwSk84VmI0?=
 =?utf-8?B?V0ZFcDlnUElsODgrY0VMMlR0VHdYUE12bzN6Y1FweXMydEY5dlY4VXNtRVRz?=
 =?utf-8?B?VmtmUWozWk40alhPSktSQWhaazFxeXFvNUV5czhIRVFBc3VCSW5jZTdDakw3?=
 =?utf-8?B?QWcvMEYxMGpuVjVVdVRBQWZLUGc0THlORUJ5cWIzU3JPamlkYW16M2RhZ0Ux?=
 =?utf-8?B?SmNCanpVYS8xL1liWjhHVG1Hekp2b01DYXdxdW9UaEQxSmplRCtpeURGT1J6?=
 =?utf-8?B?SmtleXFsSDJCOFJhaVpmRWpCSXYxL1dyUWlLWWxTWkRMeElrdURKWEhYYXUv?=
 =?utf-8?B?Q0pUa2NUUUpOSHlEWTl4dlkxT3Q3dlB1V200QzNScHZYZ09xZklYUzJZNGlX?=
 =?utf-8?B?RythZ0J1SWJjbTNQdlp0b3IrZG12T1FUd2pCbERZem1IZnBFbnNIK2RtejFK?=
 =?utf-8?B?WVZZRkVOZ2VtWUMzTUlRbkFsb3lCRHIzaGFid2xSRVVQdG5CWHV0R2llbytR?=
 =?utf-8?B?THMvcTVCZk96ZWRmdnRwZHhMR2RqY29IcHdCbHVHVXdBSTlvSDlrdGptbEJE?=
 =?utf-8?B?bjRib1JBd2szczZnaU9jcGJVYlJ2MFJ2VkFzRXZyd1dFd29tYTBkck9PSHRY?=
 =?utf-8?B?LzRyZXFhS2M4T0FvNThVNjV5VS9Ia2ZXNDFtKzRLd2UvQ0FQUDc5Miszd1NQ?=
 =?utf-8?B?a0FoRUUycm5YVDd3NFRIZVUzK0R0bjJpQWs2cTJqeFlzQUFxd201eEpDVlhP?=
 =?utf-8?B?WmZ2VnRGVFdJWU5YSHFJMmdoUUZKZG9OS1VXUFg3SnFRTmZXcW5oZTJCQUZZ?=
 =?utf-8?B?MkdyV2xoVDMyWUhESVBJWkprM0RXL3l3czZXcDI3NWcwdmJoL0owaWt1b2kw?=
 =?utf-8?B?SEoxTS9aWER2TXlsdUNGSVVQanR1OVNqa3FXWVdSNU9lWVh0VmIxalNwRGdk?=
 =?utf-8?B?elpVc2Q1dFdOZEtEdisraHBydjRPOXpncVM4eEtQSVZWOExocUlUK3ZIaFls?=
 =?utf-8?B?eVJEdFRyVTNoRmJiRFYvNk9ncFN1RExuM1J1WndPQjluUDF1TVJNKzhyb0FS?=
 =?utf-8?B?NmYxNkN2VW5mT3ZCL2VFT3lzSjFzUkpqSTJlVHpKVGdZWWNFUnFHRXhlbHZM?=
 =?utf-8?B?WXJianpKem5vd1hoZEcvSWw2UzlPNEdvLzBZallhZVBPZkNHcTNOckRGM0RF?=
 =?utf-8?B?b1ZkbWtxQVlQL3pIMzdPckhZVjhRdzlUYitLZSsyTndxclpQVHBYbEdzYXVy?=
 =?utf-8?B?cUdJbzdVRnFqOWpmMWpQajloZ2ljZGJPVXVTbnI3eHh2bzJiUjBVMnhLaVlP?=
 =?utf-8?B?Rm4vMXkrRnNOY3N4TjZGb2R3bkdxV1VRQ0M0cURwUUFqWk9hZ1dDa3paaXND?=
 =?utf-8?B?K2lVWjAyL0VPNEJUbmhuQ3gyU2VuNVpUbDVyV3hsRENuRERHS2xsU3FVZmt2?=
 =?utf-8?B?Q3UyQUt5RHcxVlR2cHFWaW9NZ3MxemtxUHRyb3pmTjdaTzByTFRHbWI1dUtE?=
 =?utf-8?B?Q2RoSWF3SEJVWVp0SWhCYXIzTTdDVWVCUit2OHY5QzVDYjFhZkZIWFJEUHFD?=
 =?utf-8?B?SXMyQTB2UFp0Q1FYa0Z0ZGVyaWVEcHEwb29sSmRIbE1CT2RDdGZzTGg5Q3RZ?=
 =?utf-8?B?ZWhZTDJCVnRKN2g3bVM4cVY5KzNtQkxxVWVtNGFYVmdzYkxZV3FDRlAvRHA5?=
 =?utf-8?B?WmZjVE16M0g5QVFtZ2JVSUluV0dUR0pRb3RkRmlveEEyazJ4Z2RKNzJKNnN3?=
 =?utf-8?B?Sm5qZ20ramlQayt5NWVuU240RzhtVENJVUZJcm9YTnRudXJoYzE5bkI1cDd0?=
 =?utf-8?B?VXFUNFdKK25FZjZkY0xUY1o1bFJpLzRLTkhVeklMZFZFV1JPUDdxdWtKblNI?=
 =?utf-8?B?amRJK05iNHpHZFBnaERRVE8yUmZmWWl1aGU0UU5xODhmbzRNNlo1amNmTG1J?=
 =?utf-8?B?UEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 859d160f-0ec6-499e-5d0f-08dd2fb9b412
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 07:54:39.2625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nMprsl5E06Vq7snCZW6AMQgXJTW+W3Sgi+7vSHUiATArIv7faDg4xepHdCMVLrA+1IX12hRQ5LG97a3/HJJIcaa1nQwjWxaUb1JxIKPXq3Y=
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

SGVsbG8gVmlsbGUsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50
ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFs
ZiBPZiBWaWxsZQ0KPiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciA5LCAyMDI0
IDExOjUyIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1Ympl
Y3Q6IFtQQVRDSCAzLzldIGRybS9pOTE1OiBJbnRyb2R1Y2UgcGxhbmUtPmNhbl9hc3luY19mbGlw
KCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IA0KPiBNb3ZlIHRoZSAiZG9lcyB0aGlzIG1vZGlmaWVyIHN1cHBvcnQgYXN5bmMg
ZmxpcHM/IiBjaGVjayB0byBiZSBoYW5kbGVkIGJ5IHRoZQ0KPiBwbGF0Zm9ybSBzcGVjaWZpYyBw
bGFuZSBjb2RlIGluc3RlYWQgb2YgaGF2aW5nIGEgYmlnIG1lc3MgaW4gY29tbW9uIGNvZGUuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9w
bGFuZS5jICAgICB8ICA5ICsrKw0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0
b21pY19wbGFuZS5jIHwgIDUgKysNCj4gLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0
b21pY19wbGFuZS5oIHwgIDEgKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyAgfCA1MyArLS0tLS0tLS0tLS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAxICsNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF91bml2ZXJzYWxfcGxhbmUuYyAgICB8IDgwICsrKysrKysrKysrKysrKysrKysNCj4gIDYgZmls
ZXMgY2hhbmdlZCwgOTcgaW5zZXJ0aW9ucygrKSwgNTIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYw0KPiBpbmRleCAxN2ExZTM4
MDFhODUuLjc0NTVkYTg2M2EyNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pOXh4X3BsYW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pOXh4X3BsYW5lLmMNCj4gQEAgLTY3Miw2ICs2NzIsMTEgQEAgdmx2X3ByaW1hcnlfZGlzYWJs
ZV9mbGlwX2RvbmUoc3RydWN0IGludGVsX3BsYW5lDQo+ICpwbGFuZSkNCj4gIAlzcGluX3VubG9j
a19pcnEoJmk5MTUtPmlycV9sb2NrKTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9vbCBpOXh4X3Bs
YW5lX2Nhbl9hc3luY19mbGlwKHU2NCBtb2RpZmllcikgew0KPiArCXJldHVybiBtb2RpZmllciA9
PSBJOTE1X0ZPUk1BVF9NT0RfWF9USUxFRDsgfQ0KPiArDQo+ICBzdGF0aWMgYm9vbCBpOXh4X3Bs
YW5lX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCQkJCSAgICBl
bnVtIHBpcGUgKnBpcGUpDQo+ICB7DQo+IEBAIC05NTgsMTkgKzk2MywyMyBAQCBpbnRlbF9wcmlt
YXJ5X3BsYW5lX2NyZWF0ZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVu
dW0gcGlwZSBwaXBlKQ0KPiAgCQlwbGFuZS0+YXN5bmNfZmxpcCA9IHZsdl9wcmltYXJ5X2FzeW5j
X2ZsaXA7DQo+ICAJCXBsYW5lLT5lbmFibGVfZmxpcF9kb25lID0gdmx2X3ByaW1hcnlfZW5hYmxl
X2ZsaXBfZG9uZTsNCj4gIAkJcGxhbmUtPmRpc2FibGVfZmxpcF9kb25lID0gdmx2X3ByaW1hcnlf
ZGlzYWJsZV9mbGlwX2RvbmU7DQo+ICsJCXBsYW5lLT5jYW5fYXN5bmNfZmxpcCA9IGk5eHhfcGxh
bmVfY2FuX2FzeW5jX2ZsaXA7DQo+ICAJfSBlbHNlIGlmIChJU19CUk9BRFdFTEwoZGV2X3ByaXYp
KSB7DQo+ICAJCXBsYW5lLT5uZWVkX2FzeW5jX2ZsaXBfdG9nZ2xlX3dhID0gdHJ1ZTsNCj4gIAkJ
cGxhbmUtPmFzeW5jX2ZsaXAgPSBnNHhfcHJpbWFyeV9hc3luY19mbGlwOw0KPiAgCQlwbGFuZS0+
ZW5hYmxlX2ZsaXBfZG9uZSA9IGJkd19wcmltYXJ5X2VuYWJsZV9mbGlwX2RvbmU7DQo+ICAJCXBs
YW5lLT5kaXNhYmxlX2ZsaXBfZG9uZSA9IGJkd19wcmltYXJ5X2Rpc2FibGVfZmxpcF9kb25lOw0K
PiArCQlwbGFuZS0+Y2FuX2FzeW5jX2ZsaXAgPSBpOXh4X3BsYW5lX2Nhbl9hc3luY19mbGlwOw0K
PiAgCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDcpIHsNCj4gIAkJcGxhbmUt
PmFzeW5jX2ZsaXAgPSBnNHhfcHJpbWFyeV9hc3luY19mbGlwOw0KPiAgCQlwbGFuZS0+ZW5hYmxl
X2ZsaXBfZG9uZSA9IGl2Yl9wcmltYXJ5X2VuYWJsZV9mbGlwX2RvbmU7DQo+ICAJCXBsYW5lLT5k
aXNhYmxlX2ZsaXBfZG9uZSA9IGl2Yl9wcmltYXJ5X2Rpc2FibGVfZmxpcF9kb25lOw0KPiArCQlw
bGFuZS0+Y2FuX2FzeW5jX2ZsaXAgPSBpOXh4X3BsYW5lX2Nhbl9hc3luY19mbGlwOw0KPiAgCX0g
ZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDUpIHsNCj4gIAkJcGxhbmUtPmFzeW5j
X2ZsaXAgPSBnNHhfcHJpbWFyeV9hc3luY19mbGlwOw0KPiAgCQlwbGFuZS0+ZW5hYmxlX2ZsaXBf
ZG9uZSA9IGlsa19wcmltYXJ5X2VuYWJsZV9mbGlwX2RvbmU7DQo+ICAJCXBsYW5lLT5kaXNhYmxl
X2ZsaXBfZG9uZSA9IGlsa19wcmltYXJ5X2Rpc2FibGVfZmxpcF9kb25lOw0KPiArCQlwbGFuZS0+
Y2FuX2FzeW5jX2ZsaXAgPSBpOXh4X3BsYW5lX2Nhbl9hc3luY19mbGlwOw0KPiAgCX0NCj4gDQo+
ICAJbW9kaWZpZXJzID0gaW50ZWxfZmJfcGxhbmVfZ2V0X21vZGlmaWVycyhkZXZfcHJpdiwNCj4g
SU5URUxfUExBTkVfQ0FQX1RJTElOR19YKTsgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+IGluZGV4IGI3ZTQ2MjA3NWRlZC4u
NTk2Zjg2NjIyMDBhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pY19wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4gQEAgLTE1NSw2ICsxNTUsMTEgQEAgYm9vbCBpbnRl
bF9wbGFuZV9uZWVkc19waHlzaWNhbChzdHJ1Y3QgaW50ZWxfcGxhbmUNCj4gKnBsYW5lKQ0KPiAg
CQlESVNQTEFZX0lORk8oaTkxNSktPmN1cnNvcl9uZWVkc19waHlzaWNhbDsNCj4gIH0NCj4gDQo+
ICtib29sIGludGVsX3BsYW5lX2Nhbl9hc3luY19mbGlwKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxh
bmUsIHU2NA0KPiArbW9kaWZpZXIpIHsNCj4gKwlyZXR1cm4gcGxhbmUtPmNhbl9hc3luY19mbGlw
ICYmIHBsYW5lLT5jYW5fYXN5bmNfZmxpcChtb2RpZmllcik7IH0NCj4gKw0KPiAgdW5zaWduZWQg
aW50IGludGVsX2FkanVzdGVkX3JhdGUoY29uc3Qgc3RydWN0IGRybV9yZWN0ICpzcmMsDQo+ICAJ
CQkJIGNvbnN0IHN0cnVjdCBkcm1fcmVjdCAqZHN0LA0KPiAgCQkJCSB1bnNpZ25lZCBpbnQgcmF0
ZSkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRv
bWljX3BsYW5lLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Y19wbGFuZS5oDQo+IGluZGV4IDBmOTgyZjQ1MmZmMy4uZmI4N2IzMzUzYWIwIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgN
Cj4gQEAgLTE5LDYgKzE5LDcgQEAgc3RydWN0IGludGVsX3BsYW5lOw0KPiAgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlOw0KPiAgZW51bSBwbGFuZV9pZDsNCj4gDQo+ICtib29sIGludGVsX3BsYW5l
X2Nhbl9hc3luY19mbGlwKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsIHU2NA0KPiArbW9kaWZp
ZXIpOw0KPiAgdW5zaWduZWQgaW50IGludGVsX2FkanVzdGVkX3JhdGUoY29uc3Qgc3RydWN0IGRy
bV9yZWN0ICpzcmMsDQo+ICAJCQkJIGNvbnN0IHN0cnVjdCBkcm1fcmVjdCAqZHN0LA0KPiAgCQkJ
CSB1bnNpZ25lZCBpbnQgcmF0ZSk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDcwYTVlNTM1N2ExNC4uMmFmZDEwYmJlN2I4IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiBAQCAtNjQ4Niw1OCArNjQ4Niw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfYXN5bmNfZmxpcF9jaGVj
a19odyhzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgc3RydWN0IGluDQo+ICAJ
CWlmICghcGxhbmUtPmFzeW5jX2ZsaXApDQo+ICAJCQljb250aW51ZTsNCj4gDQo+IC0JCS8qDQo+
IC0JCSAqIEZJWE1FOiBUaGlzIGNoZWNrIGlzIGtlcHQgZ2VuZXJpYyBmb3IgYWxsIHBsYXRmb3Jt
cy4NCj4gLQkJICogTmVlZCB0byB2ZXJpZnkgdGhpcyBmb3IgYWxsIGdlbjkgcGxhdGZvcm1zIHRv
IGVuYWJsZQ0KPiAtCQkgKiB0aGlzIHNlbGVjdGl2ZWx5IGlmIHJlcXVpcmVkLg0KPiAtCQkgKi8N
Cj4gLQkJc3dpdGNoIChuZXdfcGxhbmVfc3RhdGUtPmh3LmZiLT5tb2RpZmllcikgew0KPiAtCQlj
YXNlIERSTV9GT1JNQVRfTU9EX0xJTkVBUjoNCj4gLQkJCS8qDQo+IC0JCQkgKiBGSVhNRTogQXN5
bmMgb24gTGluZWFyIGJ1ZmZlciBpcyBzdXBwb3J0ZWQgb24gSUNMIGFzDQo+IC0JCQkgKiBidXQg
d2l0aCBhZGRpdGlvbmFsIGFsaWdubWVudCBhbmQgZmJjIHJlc3RyaWN0aW9ucw0KPiAtCQkJICog
bmVlZCB0byBiZSB0YWtlbiBjYXJlIG9mLiBUaGVzZSBhcmVuJ3QgYXBwbGljYWJsZSBmb3INCj4g
LQkJCSAqIGdlbjEyKy4NCj4gLQkJCSAqLw0KPiAtCQkJaWYgKERJU1BMQVlfVkVSKGk5MTUpIDwg
MTIpIHsNCj4gLQkJCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiAtCQkJCQkgICAgIltQTEFO
RTolZDolc10gTW9kaWZpZXIgMHglbGx4DQo+IGRvZXMgbm90IHN1cHBvcnQgYXN5bmMgZmxpcCBv
biBkaXNwbGF5IHZlciAlZFxuIiwNCj4gLQkJCQkJICAgIHBsYW5lLT5iYXNlLmJhc2UuaWQsIHBs
YW5lLQ0KPiA+YmFzZS5uYW1lLA0KPiAtCQkJCQkgICAgbmV3X3BsYW5lX3N0YXRlLT5ody5mYi0+
bW9kaWZpZXIsDQo+IERJU1BMQVlfVkVSKGk5MTUpKTsNCj4gLQkJCQlyZXR1cm4gLUVJTlZBTDsN
Cj4gLQkJCX0NCj4gLQkJCWJyZWFrOw0KPiAtCQljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVE
X0NDUzoNCj4gLQkJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTOg0KPiAtCQkJLyoN
Cj4gLQkJCSAqIERpc3BsYXkgV0EgIzA3MzE6IHNrbA0KPiAtCQkJICogV2FEaXNhYmxlUkNXaXRo
QXN5bmNGbGlwOiBza2wNCj4gLQkJCSAqICJXaGVuIHJlbmRlciBkZWNvbXByZXNzaW9uIGlzIGVu
YWJsZWQsIGhhcmR3YXJlDQo+IC0JCQkgKiAgaW50ZXJuYWxseSBjb252ZXJ0cyB0aGUgQXN5bmMg
ZmxpcHMgdG8gU3luYyBmbGlwcy4iDQo+IC0JCQkgKg0KPiAtCQkJICogRGlzcGxheSBXQSAjMTE1
OTogZ2xrDQo+IC0JCQkgKiAiQXN5bmMgZmxpcCB3aXRoIHJlbmRlciBjb21wcmVzc2lvbiBtYXkg
cmVzdWx0IGluDQo+IC0JCQkgKiAgaW50ZXJtaXR0ZW50IHVuZGVycnVuIGNvcnJ1cHRpb24uIg0K
PiAtCQkJICovDQo+IC0JCQlpZiAoRElTUExBWV9WRVIoaTkxNSkgPCAxMSkgew0KPiAtCQkJCWRy
bV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+IC0JCQkJCSAgICAiW1BMQU5FOiVkOiVzXSBNb2RpZmll
ciAweCVsbHgNCj4gZG9lcyBub3Qgc3VwcG9ydCBhc3luYyBmbGlwIG9uIGRpc3BsYXkgdmVyICVk
XG4iLA0KPiAtCQkJCQkgICAgcGxhbmUtPmJhc2UuYmFzZS5pZCwgcGxhbmUtDQo+ID5iYXNlLm5h
bWUsDQo+IC0JCQkJCSAgICBuZXdfcGxhbmVfc3RhdGUtPmh3LmZiLT5tb2RpZmllciwNCj4gRElT
UExBWV9WRVIoaTkxNSkpOw0KPiAtCQkJCXJldHVybiAtRUlOVkFMOw0KPiAtCQkJfQ0KPiAtCQkJ
YnJlYWs7DQo+IC0JCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQ6DQo+IC0JCWNhc2UgSTkx
NV9GT1JNQVRfTU9EX1lfVElMRUQ6DQo+IC0JCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lmX1RJTEVE
Og0KPiAtCQljYXNlIEk5MTVfRk9STUFUX01PRF80X1RJTEVEOg0KPiAtCQljYXNlIEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUzoNCj4gLQkJY2FzZSBJOTE1X0ZPUk1BVF9NT0Rf
NF9USUxFRF9NVExfUkNfQ0NTOg0KPiAtCQljYXNlIEk5MTVfRk9STUFUX01PRF80X1RJTEVEX0RH
Ml9SQ19DQ1M6DQo+IC0JCWNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURfQk1HX0NDUzoNCj4g
LQkJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9MTkxfQ0NTOg0KPiAtCQkJYnJlYWs7DQo+
IC0JCWRlZmF1bHQ6DQo+ICsJCWlmICghaW50ZWxfcGxhbmVfY2FuX2FzeW5jX2ZsaXAocGxhbmUs
DQo+ICtuZXdfcGxhbmVfc3RhdGUtPmh3LmZiLT5tb2RpZmllcikpIHsNCj4gIAkJCWRybV9kYmdf
a21zKCZpOTE1LT5kcm0sDQo+ICAJCQkJICAgICJbUExBTkU6JWQ6JXNdIE1vZGlmaWVyIDB4JWxs
eCBkb2VzIG5vdA0KPiBzdXBwb3J0IGFzeW5jIGZsaXBcbiIsDQo+ICAJCQkJICAgIHBsYW5lLT5i
YXNlLmJhc2UuaWQsIHBsYW5lLT5iYXNlLm5hbWUsIGRpZmYNCj4gLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IDJiYjFmYTY0
ZGEyZi4uM2FmMjg2NGM3ODg1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTQ1Niw2ICsxNDU2LDcgQEAg
c3RydWN0IGludGVsX3BsYW5lIHsNCj4gIAl1bnNpZ25lZCBpbnQgKCptYXhfc3RyaWRlKShzdHJ1
Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCQkJCSAgIHUzMiBwaXhlbF9mb3JtYXQsIHU2NCBt
b2RpZmllciwNCj4gIAkJCQkgICB1bnNpZ25lZCBpbnQgcm90YXRpb24pOw0KPiArCWJvb2wgKCpj
YW5fYXN5bmNfZmxpcCkodTY0IG1vZGlmaWVyKTsNCg0KRmV3IHF1ZXN0aW9ucy4NCklzIGl0IGJl
dHRlciB0byBuYW1lIGl0IHNvbWV0aGluZyBsaWtlIGNhbl9hc3luY19mbGlwX3dpdGhfbW9kaWZp
ZXIgYmVjYXVzZSBpdCBzcGVjaWZpY2FsbHkgY2hlY2tzIG9ubHkgaWYgbW9kaWZpZXIgaXMgc3Vw
cG9ydGVkPw0KT3IgbWF5IGJlIHdlIGNhbiBhZGQgYSBtb3JlIGdlbmVyaWMgY2FuX2FzeW5jX2Zs
aXAgd2l0aCB0aGUgcGxhbmUgc3RhdGUgcGFzc2VkIHRvIGl0LCBtYWtpbmcgaXQgcG9zc2libGUg
dG8gZXh0ZW5kIGl0IGxhdGVyIGlmIG5lZWRlZC4NCg0KU2hvdWxkIHdlIGNoZWNrIGZvciBhIGZv
cm1hdCBhbmQgbW9kaWZpZXIgcGFpciBsaWtlIGl0IGlzIGRvbmUgZm9yIHN5bmMgZmxpcHM/IENh
biB3ZSBydW4gaW50byBzY2VuYXJpb3MgaW4gZnV0dXJlKGlmIGFscmVhZHkgbm90IGV4aXN0aW5n
KSB3aGVyZSBtb2RpZmllcnMgYXJlIHN1cHBvcnRlZCBmb3Igc29tZSBwaXhlbCBmb3JtYXQgYW5k
IG5vdCBvdGhlcnM/DQoNClJlZ2FyZHMNCg0KQ2hhaXRhbnlhDQoNCj4gIAkvKiBXcml0ZSBhbGwg
bm9uLXNlbGYgYXJtaW5nIHBsYW5lIHJlZ2lzdGVycyAqLw0KPiAgCXZvaWQgKCp1cGRhdGVfbm9h
cm0pKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gIAkJCSAgICAgc3RydWN0IGludGVsX3BsYW5l
ICpwbGFuZSwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3VuaXZlcnNhbF9wbGFuZS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMNCj4gaW5kZXggMGMwOWY3NmY4MzY5Li5jYTgyY2M1NTgwMmUgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9w
bGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNh
bF9wbGFuZS5jDQo+IEBAIC01MDQsNiArNTA0LDc5IEBAIHNrbF9wbGFuZV9tYXhfc3RyaWRlKHN0
cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJCQkJbWF4X3BpeGVscywgbWF4X2J5dGVzKTsN
Cj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9vbCB0Z2xfcGxhbmVfY2FuX2FzeW5jX2ZsaXAodTY0IG1v
ZGlmaWVyKSB7DQo+ICsJc3dpdGNoIChtb2RpZmllcikgew0KPiArCWNhc2UgRFJNX0ZPUk1BVF9N
T0RfTElORUFSOg0KPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQ6DQo+ICsJY2FzZSBJ
OTE1X0ZPUk1BVF9NT0RfWV9USUxFRDoNCj4gKwljYXNlIEk5MTVfRk9STUFUX01PRF80X1RJTEVE
Og0KPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOg0KPiArCWNh
c2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURfTVRMX1JDX0NDUzoNCj4gKwljYXNlIEk5MTVfRk9S
TUFUX01PRF80X1RJTEVEX0RHMl9SQ19DQ1M6DQo+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9U
SUxFRF9CTUdfQ0NTOg0KPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURfTE5MX0NDUzoN
Cj4gKwkJcmV0dXJuIHRydWU7DQo+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4x
Ml9NQ19DQ1M6DQo+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9NVExfTUNfQ0NTOg0K
PiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURfREcyX01DX0NDUzoNCj4gKwljYXNlIEk5
MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQzoNCj4gKwljYXNlIEk5MTVfRk9S
TUFUX01PRF80X1RJTEVEX01UTF9SQ19DQ1NfQ0M6DQo+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0Rf
NF9USUxFRF9ERzJfUkNfQ0NTX0NDOg0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsJZGVmYXVsdDoN
Cj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArCX0NCj4gK30NCj4gKw0KPiArc3RhdGljIGJvb2wgaWNs
X3BsYW5lX2Nhbl9hc3luY19mbGlwKHU2NCBtb2RpZmllcikgew0KPiArCXN3aXRjaCAobW9kaWZp
ZXIpIHsNCj4gKwljYXNlIERSTV9GT1JNQVRfTU9EX0xJTkVBUjoNCj4gKwkJLyoNCj4gKwkJICog
RklYTUU6IEFzeW5jIG9uIExpbmVhciBidWZmZXIgaXMgc3VwcG9ydGVkIG9uIElDTA0KPiArCQkg
KiBidXQgd2l0aCBhZGRpdGlvbmFsIGFsaWdubWVudCBhbmQgZmJjIHJlc3RyaWN0aW9ucw0KPiAr
CQkgKiBuZWVkIHRvIGJlIHRha2VuIGNhcmUgb2YuDQo+ICsJCSAqLw0KPiArCQlyZXR1cm4gZmFs
c2U7DQo+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWF9USUxFRDoNCj4gKwljYXNlIEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEOg0KPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lmX1RJTEVEOg0KPiAr
CWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTOg0KPiArCWNhc2UgSTkxNV9GT1JNQVRf
TU9EX1lmX1RJTEVEX0NDUzoNCj4gKwkJcmV0dXJuIHRydWU7DQo+ICsJZGVmYXVsdDoNCj4gKwkJ
cmV0dXJuIGZhbHNlOw0KPiArCX0NCj4gK30NCj4gKw0KPiArc3RhdGljIGJvb2wgc2tsX3BsYW5l
X2Nhbl9hc3luY19mbGlwKHU2NCBtb2RpZmllcikgew0KPiArCXN3aXRjaCAobW9kaWZpZXIpIHsN
Cj4gKwljYXNlIERSTV9GT1JNQVRfTU9EX0xJTkVBUjoNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiAr
CWNhc2UgSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQ6DQo+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0Rf
WV9USUxFRDoNCj4gKwljYXNlIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRDoNCj4gKwkJcmV0dXJu
IHRydWU7DQo+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9DQ1M6DQo+ICsJY2FzZSBJ
OTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTOg0KPiArCQkvKg0KPiArCQkgKiBEaXNwbGF5IFdB
ICMwNzMxOiBza2wNCj4gKwkJICogV2FEaXNhYmxlUkNXaXRoQXN5bmNGbGlwOiBza2wNCj4gKwkJ
ICogIldoZW4gcmVuZGVyIGRlY29tcHJlc3Npb24gaXMgZW5hYmxlZCwgaGFyZHdhcmUNCj4gKwkJ
ICogIGludGVybmFsbHkgY29udmVydHMgdGhlIEFzeW5jIGZsaXBzIHRvIFN5bmMgZmxpcHMuIg0K
PiArCQkgKg0KPiArCQkgKiBEaXNwbGF5IFdBICMxMTU5OiBnbGsNCj4gKwkJICogIkFzeW5jIGZs
aXAgd2l0aCByZW5kZXIgY29tcHJlc3Npb24gbWF5IHJlc3VsdCBpbg0KPiArCQkgKiAgaW50ZXJt
aXR0ZW50IHVuZGVycnVuIGNvcnJ1cHRpb24uIg0KPiArCQkgKi8NCj4gKwkJcmV0dXJuIGZhbHNl
Ow0KPiArCWRlZmF1bHQ6DQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4g
IHN0YXRpYyB1MzIgdGdsX3BsYW5lX21pbl9hbGlnbm1lbnQoc3RydWN0IGludGVsX3BsYW5lICpw
bGFuZSwNCj4gIAkJCQkgICBjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwNCj4gIAkJ
CQkgICBpbnQgY29sb3JfcGxhbmUpDQo+IEBAIC0yNjIxLDYgKzI2OTQsMTMgQEAgc2tsX3VuaXZl
cnNhbF9wbGFuZV9jcmVhdGUoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0K
PiAgCQlwbGFuZS0+YXN5bmNfZmxpcCA9IHNrbF9wbGFuZV9hc3luY19mbGlwOw0KPiAgCQlwbGFu
ZS0+ZW5hYmxlX2ZsaXBfZG9uZSA9IHNrbF9wbGFuZV9lbmFibGVfZmxpcF9kb25lOw0KPiAgCQlw
bGFuZS0+ZGlzYWJsZV9mbGlwX2RvbmUgPSBza2xfcGxhbmVfZGlzYWJsZV9mbGlwX2RvbmU7DQo+
ICsNCj4gKwkJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikNCj4gKwkJCXBsYW5lLT5j
YW5fYXN5bmNfZmxpcCA9IHRnbF9wbGFuZV9jYW5fYXN5bmNfZmxpcDsNCj4gKwkJZWxzZSBpZiAo
RElTUExBWV9WRVIoZGV2X3ByaXYpID09IDExKQ0KPiArCQkJcGxhbmUtPmNhbl9hc3luY19mbGlw
ID0gaWNsX3BsYW5lX2Nhbl9hc3luY19mbGlwOw0KPiArCQllbHNlDQo+ICsJCQlwbGFuZS0+Y2Fu
X2FzeW5jX2ZsaXAgPSBza2xfcGxhbmVfY2FuX2FzeW5jX2ZsaXA7DQo+ICAJfQ0KPiANCj4gIAlp
ZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDExKQ0KPiAtLQ0KPiAyLjQ1LjINCg0K

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 235CD91808B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 14:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A81710E880;
	Wed, 26 Jun 2024 12:07:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvJMuv38";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 796A710E88B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2024 12:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719403626; x=1750939626;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GmuXHZQ4XP5mwT82JqRVB/nFKq/ktDGhbAYCYsIVXwk=;
 b=HvJMuv380Zg45TCYZizGRxFH6UpteysK7AqOdv7eIoBTk7jUeC57YICP
 YUSfkBvT4iDFN4wqRblTf50lcBlhwjweUwhHmdGe5PFeeWgkxv6WLqudl
 P8wVfSNh3Yqi6lKkniQdSBjekgEowOz5ehDxOF8EYQhMj33E524VMtmS6
 djtb8yI41jQ1Gz0RG05uP6ies6CbR185URRVp+KFiGBmDhJCTlTruI0yt
 KKCyJH0eSTn3DmcYdtZy3XGjfss3APp9jjbNuEstauDWKkQ9a1qP/VbV6
 Vnd03kmbpc1vtmRXmJ36WWBk1HaDcIW+ivpATDAvpsEsGehV0S+XNOebJ Q==;
X-CSE-ConnectionGUID: wzO8Dh1TTfaOysST12W2ug==
X-CSE-MsgGUID: DgcpttKARSiEkHU81dF+6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="20351324"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="20351324"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 05:07:05 -0700
X-CSE-ConnectionGUID: kYeWtdloQjO1Jo1921QOXw==
X-CSE-MsgGUID: gxchHkmqTQySoW0ygf/cdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="67198810"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 05:07:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 05:07:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 05:07:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 05:07:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ej50BiHGo3yEEEzNFYTn2D36g86+4knYNlWR78JI1q12glHYfG4L5kiXiPWKBAroKaTj9yEePLdEX8ipJ4vLYwYceg8TCy1R3/1EsP5jJ1Qf7E8buOmPzrJ5DRVkgBVsrIU3AhgyKRr2Ep2r0pyJiYSuvn9ItxM82jjYbLQnjTBhVkBJcIC/6T419oYkt9Bib9xRSbdtSEcn5JPEfMerq1DhhAdJ2OkYKjMYeugJciL8hmRC5w5mEwAt1KAlc4n2TQ80SYULhBEUIbHXVWD84Ax0q1zVIqnVzEdnLhgXtIQ13LIoVLyzqLl92HJHKWRxnS8RHO3vByE1NmWJ6sQeLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GmuXHZQ4XP5mwT82JqRVB/nFKq/ktDGhbAYCYsIVXwk=;
 b=ApG4zvlcLzorddXd8bgYl9fjpAxkjYZg/wrgUsXK14zx8x7qxQI4rMLHZXOl8+0rzX9uKaleWUNSAnYrtcYw0851Pn8h0ZjJLI06mpHGXrID3et3iKm7oEOOOTT5nVXt8nWuhF5KwKHGUDMqV5Fy0zx87zmM2kMs4IE7YptNW8r3tLHl2E3nCUzxBCmGIxAvg2HVQpe0DYLGiwRFdZdV/xuoJsn5castqJn/6pIqmjkb3+fMZ/tsyUsjhJsm2wkJxvP9wqV6SJEdFhgt+LO8J9dEwFegBFwwwYtgOAhcqTqFtKV9/CnfTmetSi+jtUvqwp3e65bj+kM197KuFFxdIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB6356.namprd11.prod.outlook.com (2603:10b6:510:1fc::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.30; Wed, 26 Jun
 2024 12:06:58 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%3]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 12:06:58 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display: For MTL+ platforms skip mg dp
 programming
Thread-Topic: [PATCH] drm/i915/display: For MTL+ platforms skip mg dp
 programming
Thread-Index: AQHaxvJ9p+Doj3uuwEe+w/xdulvXArHY3r2AgAEF3nA=
Date: Wed, 26 Jun 2024 12:06:57 +0000
Message-ID: <MW4PR11MB7054DA0FFABFEFECC7ECC04BEFD62@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240625111840.597574-1-mika.kahola@intel.com>
 <171934390705.2542.10983050954904919169@gjsousa-mobl2>
In-Reply-To: <171934390705.2542.10983050954904919169@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB6356:EE_
x-ms-office365-filtering-correlation-id: 869e7feb-2482-4bf4-aa92-08dc95d87a78
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230038|366014|376012|1800799022|38070700016;
x-microsoft-antispam-message-info: =?utf-8?B?dnVUSGVKTGlqUXo3VWRZZmdFRVdJQXB3bkJ6TVBYZHM5QlEzWVhNdm93eXBS?=
 =?utf-8?B?N2taRW0zR2d6UWVUTmI1QUltY0RwbHlzdjAwaUtISjBxa29yUzRSMGcya3hE?=
 =?utf-8?B?SnAwM2M0STNnYWRYRWNucURYbm1iZEJ0b1ltcUZIKzRsZGQzN1gzZDBIVDZL?=
 =?utf-8?B?cURCdmJPNjFycUdMRTRhK1ljeGp1RS90enl0TzNXc1RYYjlTL2RCZlJSRURK?=
 =?utf-8?B?NTcrYk5SUXg0QnNOc1Mwd1FSUkJWc0VPd0gvMS9jQnRacGk2RVFtb21Yb0pi?=
 =?utf-8?B?eUpFd01TVkhUNnd5RWpQTUxJMVBaZkl3c2NpU0hiREdTTEF3emlDRi85Y1dS?=
 =?utf-8?B?QWRQQ20rOGRzNzVZbk53UHJ6dENJbGpGSW0vY0Evbm1zS3BnNGZ1Szk2eDVG?=
 =?utf-8?B?SVRPTEtQTXFsYkhTOGNKeURTeStmL3JCT0RkbUZlSEdSL2d2SVZvSEtyTnBD?=
 =?utf-8?B?WE1Sa1ltUmxmNlJ0VGU1aW50aDBkNkFSMkxyL3pPaHlwUVU5WjdXN3FlTFpW?=
 =?utf-8?B?L2NySU8wQ3Z5b1E2UHMvdm80UzA2RSs5dWNHK1B3aGtMTUZjdHVaSU1KSldk?=
 =?utf-8?B?K3E0dUlVOXFzQmd1aUJrWmxSR2VUQ3JUa3JQNUorZ3pNeFlRUENuYnRTSStj?=
 =?utf-8?B?M0QwUGFLTGxPS2FWV1I0MWlTZTVwR3VlUUswUGtFbGw5VDBQODltWmlsb2Fk?=
 =?utf-8?B?cTRxYWQ0Tno1ejIxRE1lcGlNRFJNZjcvOGcremZFVVdtUGFkMzFnUnQ1bGQx?=
 =?utf-8?B?U0t6cGlSU2FtdUpDYndYbm1qV2xSSTd6U3VSbGRKUS9oa2Nkd0RkTEJaQzhW?=
 =?utf-8?B?ZWhKU25YWGVFcDczeVVBd2txRzdhb003eStScDVLck1jMk5xQzI3eUFuTEhw?=
 =?utf-8?B?MStUbGZEYlRCTUx4bXNWbkF5azcwSHgzOWxaRWJDOHRJTmRWVnVCRDlFN3RZ?=
 =?utf-8?B?QlVWbVhCTDUxakFweXl4S29tMHljeGw1dVVCS2xSYlU1QlJIbHR1WW1ZRmhR?=
 =?utf-8?B?UkRHNStKVjR2Y0xsR3Nra0ZPdklzMmF0NDFRTGRwaTRNdXE5dnZBRldPMUJQ?=
 =?utf-8?B?OUw3TkpINEJIK01qeDhHemZheHcvNGhLNDdqaSs4ZjcxZU56QW5Eb24ySFNn?=
 =?utf-8?B?bGF4ZlNPN2p1cnFGV0lROERmSXFuSTRCcXBjSGs0YlVzR3hST0VMR2xzQXNE?=
 =?utf-8?B?T0JsNlA5UGRtN2QzYk5rZEFRdlIvdFVMSm55UW9nSlpLdG9LdWlwM2FNdEFt?=
 =?utf-8?B?Q0cxVGRFTDhWTEFnNitJYXJ0RGZRSnhuNEtsYkVTOFVTbDJNN0h4azM1ZzVR?=
 =?utf-8?B?UHpDZjFwY2lmK20yVTNMcFlBMXdidDN1RTQvcFlCVytwa00ycEViNk5ZZFhx?=
 =?utf-8?B?Qm5nVzlIZlJSUG14MTVCWW16YmVCakdVNVFjZVFIbEhLRE1qMGFGMEs0cXNi?=
 =?utf-8?B?a1JhNjNwSE1FRVpvTFZkeS93Zm43UitJYmM2ZEd3MkFVNGZ6dkN0QkJnbW1o?=
 =?utf-8?B?bEZnbmJpajJzaERmTXYyR0NEZ1EyN0xHeVprMVhTMFVkR1g5cWJub1JzZy84?=
 =?utf-8?B?aFN6Nldjei82MUlRR3VUcS8rcHdQWkV1aHNnaEsxVkFHZmtzQVpyenltdnJU?=
 =?utf-8?B?Yy8xVFZmclF6NXZCNnUxNHJzaGMvSXk4SVVmYWkyekppNnF5MzBYekkxRWN3?=
 =?utf-8?B?VmNOb0FMN3hiZWpyT05YYWVURnZnNDgvWnNEaTQ1NTRJUTdQM0owMU9GdWF1?=
 =?utf-8?B?V3lRUWQ2V3lJckVxSjNkckg3RzN4MVVHeVFPM0FrTE5yd3lnZjd0bE53QnBV?=
 =?utf-8?Q?1vtpilEL6uMM1K4ZavDG0K9ZwerXi/uMlkQ/c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(366014)(376012)(1800799022)(38070700016); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXY1QVdtKzI4RUQxVXNkSXEvSkcwZ2w1a2hQTXFnQ3N2Y3psTGtNbUZyd2g1?=
 =?utf-8?B?b3YxRE53c1l6MlYwWW5YVnphYXUwV0lGbWNCQ0hFNkJIaElZdHlJR3lTZlI0?=
 =?utf-8?B?REt3Ui83b0kxbWg0MVpBUE5NQUZlc3V5eThtcWFkZ29zU2luY1NSci8vTDd3?=
 =?utf-8?B?RGlSSFZjL1dFb0pEaTlkUDdLZDNMZ0hhU2hHUWtIUzVvL0tlTThvZUk2WFFQ?=
 =?utf-8?B?eXFqK0UwMW1EWS8xcHU1eTR4YWRYdEF5T2xiaWZoa1BScVdMV2pXbWRldGF3?=
 =?utf-8?B?M3Bwb1g2ZzFOUk81MVlJVy81M3krRE5BVldvTElQTEpxV2hnVnhNT3BaZklw?=
 =?utf-8?B?YVpMcXI4d2RhSTJGNEM2UG14WWpGWXRocVphSEVmZVordFpSVnBhRS9YaU1n?=
 =?utf-8?B?ajlzaVYrbWpOVkVWdjUvTjZ4dEJ4R2xXRnM0MlhEbEhERDhSblk0Z01mNDlj?=
 =?utf-8?B?VEN1OGpRWjR5TWdQbmxVVDRzQ2ZubThnL3pNdzVVd2JYRkdZMDBRRkRkbjBG?=
 =?utf-8?B?MW5zUzdpVlhtWkRpYjMzeDJOTGYxNjBzN0xxUWd1eDFiZ1hWcU9LQU5oZm9p?=
 =?utf-8?B?TjB2bHhFRERVeEJQNlNnV2thVithL1E2eko2WS9paHVpdzFOb0U4ZXpvYXdj?=
 =?utf-8?B?dVdVZDlobWtGUE5uV2dKN3RnRkIyK3poSUdzbWpRdlFPbWxTMEM2KzNsK2NU?=
 =?utf-8?B?Ynlwc09XQlM5OVF2WWZKNHlOUjgwdFN5NWIrTDU3ZVRrLzd4SXdWZGZqTHo3?=
 =?utf-8?B?QlFpUjFpMlkycEpaNjMvLzJJZDZiNlVzcGhQZEt6RUxxTDNUMVE5TlVRMFlU?=
 =?utf-8?B?a2twOXUrN1BielpoRkdOZVlMYkVNTlBpRjBTY3daMWJCRXA4b2EyKzhMcUtZ?=
 =?utf-8?B?K3R5MnhHd1dHbHFkOThROFIyYitJSEVDbWJJUXRSZDdMaHV6am5Tc0o2QU1v?=
 =?utf-8?B?WGk4K3pTNWthVFdFM2FaWmFDMkxPNVNoeitvMkFHczdqTk1lNmpQRGVGMTdR?=
 =?utf-8?B?ME1JTGdKbjZHL2x1RVB3ODJKbXZTbWVwdlN0ZWM5eUNLSER2UndmNDhPVUxG?=
 =?utf-8?B?bUFjeU43YWFvUEZ4dlRiTjc0d3JqOVFmMCtNNjdFRDdEQ3R5U2VocEh1eWFv?=
 =?utf-8?B?YTdQd2p2RXRNWHNqeHVPTzZ1bzNiODQ4a1hnaHZwVVV6ZHc3YnYxTWEwRWM4?=
 =?utf-8?B?c2J2ZTU5dFc3K0NXZFFYUVEycVRiUTUwbzZDL3ZnYVN5aDJHYTdaZGVLVUVL?=
 =?utf-8?B?NDc1SlVVM3BXakpDSUQvQ3lpR3Q5bjBVZUkxdUZFSmFJUlVOcHJNRzYzWFFY?=
 =?utf-8?B?ejQ1a3dha1h4WDdWWkgyNXc3RjJoc3BUbmJLUWxiOVVFU0pzMElwUVVZQTVa?=
 =?utf-8?B?cTgwRkhST0E1K3dpUWFRcUJRUzJWS2hMd1pNcHhsU0I0eDUyRWd6VFJCQnpF?=
 =?utf-8?B?ZFIwN29RRzlQTXNlRUpRcDdIS1VnMzRxb1N2WE5HM3dISDk2NWlEb1duMlAr?=
 =?utf-8?B?ZUlhZ3dwVjJQaHA5czFLRVNPTFc3UEppTVRucGdLblF3Y2VmRzVPdnVwS0xj?=
 =?utf-8?B?R3Nlb0dCbXI1SnIxaEQ3MTRmN1hKNlRWbTdydUFwSWtoWUtOZUxzUHFIWnZy?=
 =?utf-8?B?S0grcW5DQzRwSis1cko2VXE1eEE4OVV1cDlVY3p4TE1PZDdzNDNwa3VQUTJL?=
 =?utf-8?B?a1FnSndzWUxlY1hkL2V3S2p5MHBJY3g2ODZmV0d4MEdaTW03YjFzWFJpMis5?=
 =?utf-8?B?V0V6QWI1RFIyUUxqMDZLenJkVG9KTDVtcmZjNlVCZlVUcnhHR2IxZDJCY3p3?=
 =?utf-8?B?eVIrS1hRL0VFTkZkVVpReGtWYldxY2pOb1U1NVlBNHZGZHBWYVpIcURBWlJk?=
 =?utf-8?B?cGhQNS91NDhOOGtEaVJEdzJRT21wWkdxL0VtVGdsY1VVM0VWNmtDQWxOMTBM?=
 =?utf-8?B?aHVRNVZiSjFOY2tTbkVwdWNpblRrc0hWZlZ5bmhFZmQ5T2k2SlBVYklpMUJa?=
 =?utf-8?B?eTJUWHhpWDZYbHRpVnNyN1JYK1BLN2wyVDNtNzZUcG43VDlZdzZsN1hwTTRU?=
 =?utf-8?B?eFY5UnBheHh2ZWlwVG5OL1ZVQiszbXBxZjV6eHZ4UCtCMnZTcHh3bEFMdEVN?=
 =?utf-8?Q?PzesmSN+JUMkg5NOqKbwyIb0f?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 869e7feb-2482-4bf4-aa92-08dc95d87a78
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2024 12:06:57.9641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z81uF2BO4APkYxpxvaYWKLMl4IC9LOI2/bjb9ALUOLvPlRwZSWiVb+0B0+gcWlFf47F508OJNhKbh6llyW78aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6356
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

TWVyZ2VkIGFuZCBtYXJrZWQgYXMgc3RhYmxlIGkuZSB3aXRoIGFkZGVkIGxpbmUgaW4gY29tbWl0
IG1lc3NhZ2UNCg0KQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCg0KVGhhbmtzIGZvciB0aGUg
cmV2aWV3IQ0KDQotTWlrYS0NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9t
OiBTb3VzYSwgR3VzdGF2byA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNk
YXksIEp1bmUgMjUsIDIwMjQgMTA6MzIgUE0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhv
bGFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogRGVh
aywgSW1yZSA8aW1yZS5kZWFrQGludGVsLmNvbT47IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBGb3Ig
TVRMKyBwbGF0Zm9ybXMgc2tpcCBtZyBkcCBwcm9ncmFtbWluZw0KPiANCj4gUXVvdGluZyBNaWth
IEthaG9sYSAoMjAyNC0wNi0yNSAwODoxODo0MC0wMzowMCkNCj4gPkZyb206IEltcmUgRGVhayA8
aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPg0KPiA+Rm9yIE1UTCsgcGxhdGZvcm1zIHdlIHVzZSBQ
SUNBIGNoaXBzIGZvciBUeXBlLUMgc3VwcG9ydCBhbmQgaGVuY2UgbWcNCj4gPnByb2dyYW1taW5n
IGlzIG5vdCBuZWVkZWQuDQo+ID4NCj4gPkZpeGVzIGlzc3VlIHdpdGggZHJtIHdhcm4gb2YgVEMg
cG9ydCBub3QgYmVpbmcgaW4gbGVnYWN5IG1vZGUuDQo+ID4NCj4gPlNpZ25lZC1vZmYtYnk6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID5TaWduZWQtb2ZmLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IA0KPiBSZXZpZXdlZC1ieTogR3VzdGF2byBT
b3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IA0KPiA+LS0tDQo+ID4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDMgKysrDQo+ID4gMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jDQo+ID5pbmRleCBiYjEzYTNjYThjN2MuLjY2NzJmYzE2MmM0ZiAxMDA2
NDQNCj4gPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4g
PisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPkBAIC0y
MDk2LDYgKzIwOTYsOSBAQCBpY2xfcHJvZ3JhbV9tZ19kcF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQNCj4gKmRpZ19wb3J0LA0KPiA+ICAgICAgICAgdTMyIGxuMCwgbG4xLCBwaW5fYXNz
aWdubWVudDsNCj4gPiAgICAgICAgIHU4IHdpZHRoOw0KPiA+DQo+ID4rICAgICAgICBpZiAoRElT
UExBWV9WRVIoZGV2X3ByaXYpID49IDE0KQ0KPiA+KyAgICAgICAgICAgICAgICByZXR1cm47DQo+
ID4rDQo+ID4gICAgICAgICBpZiAoIWludGVsX2VuY29kZXJfaXNfdGMoJmRpZ19wb3J0LT5iYXNl
KSB8fA0KPiA+ICAgICAgICAgICAgIGludGVsX3RjX3BvcnRfaW5fdGJ0X2FsdF9tb2RlKGRpZ19w
b3J0KSkNCj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuOw0KPiA+LS0NCj4gPjIuMzQuMQ0KPiA+
DQo=

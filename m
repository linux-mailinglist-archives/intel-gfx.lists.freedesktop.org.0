Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOccNiD0nWk2SwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 19:55:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A8A18B990
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 19:55:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E37910E0E3;
	Tue, 24 Feb 2026 18:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZT7Ga1JG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D452910E0E3;
 Tue, 24 Feb 2026 18:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771959325; x=1803495325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=trWRxWH8rxnRjtM/i5sVstEvBrh4NAailuD8FPckmdk=;
 b=ZT7Ga1JGA3B8Tb63qmnBHMn1TpBqZcKRCfC+TwzS8yf3OI59ri+NCe53
 JN8E+z4cltCjUqwlUIcrXnOXB+63qq5qleRzu8KTFjelwvBMQAmvAsKeb
 Bp2xitiKMYItJlvx2C79zo57WzIU87vOZA3Z5PsmNCq6+3qyrmj4fQLYO
 uYJGa0vVGgb7Uc6wwXYTm6Vx6+hyuiGTK8f5pXXrhb8m/Iq75IJ4KjPdF
 Umq/rURgZXK9OrjUokxXVdZgY+DRDdEl4hZ5V2/XmtyOHSupIIFJEur8h
 S3sgba4lrqJLU/1Id3uDm2Yty9zrBMj18b7ltvZRBb/Nc0nZ/vVURhfTz Q==;
X-CSE-ConnectionGUID: FIQWuhTgQPWFAJWckkodsQ==
X-CSE-MsgGUID: m8omWE2yQt+42JD19dVG/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="84445400"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="84445400"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 10:55:25 -0800
X-CSE-ConnectionGUID: Wwpbbn2aQ4yaJ+vHW88QPA==
X-CSE-MsgGUID: KM+KEMUCTTCZEdmyJSwQNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="220107513"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 10:55:24 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 10:55:23 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 10:55:23 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 10:55:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l2ju6ASwFnlB9CVrs2GzGYCt3cctQavT72F+BWoe/4q0pwAlI8SoESahHwpYsoZFJOMSnUp9+9kRzH4Y1IbgD6Omr35/kQ7xN54rD4l59L6XztQ17Httz2ybmaZhv3O2hwKrdqI0a68WRFCNxNOqFRYTTj+KG1kz4vY2fK6G2yeOU+FQBJdH/fmb843PALJ9xH+2qae/x73ksWtRQb/DNergkxh/msrBAc6DHANtQT1xVgFPf1zRFpCbylWKD2GGuFa9mXwWE9CODBhCaKXjZ6Uez6h3/zOJ64SdE/AWn+f54LuPaSRj+Ee87Zle1JLA7sIHuOD63NeKySNJrLp1sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=trWRxWH8rxnRjtM/i5sVstEvBrh4NAailuD8FPckmdk=;
 b=pWlWDxAPlv9hh6B/hzroMEjPH64mV0Faxw2Q+idVUGUfPnZRTo2fdhVTNgI93Ec01I3633xZEPPWTPH8MeCIoPPO6fiSIjm0HLsyBLw1+ZePo57SiDMATfy1tXpOmEePlRDm6/mPVxGzqMKJnxqNTUKfW2utHnbo+gkshaLfnsVzEmZ6JxxL53sKKVp+ZpL1ALshXNmicVVSP1ARAkkB63LY0VxV0/hjQ9h1QhRush6E9NJDw79V2diCbptP4glbk4id8TWENUCxiTEH29dbQ0JI7UOV+XfeN7aFE+QfWH/pTuPF/yDRkLdbGCp472x/NOM8w/Bv7qCkgQUS/QIhsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6)
 by SJ5PPFF6F855567.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::861) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 18:55:20 +0000
Received: from IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87]) by IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 18:55:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH v2 3/6] drm/i915/fbdev: Extract
 intel_fbdev_fb_prefer_stolen()
Thread-Topic: [PATCH v2 3/6] drm/i915/fbdev: Extract
 intel_fbdev_fb_prefer_stolen()
Thread-Index: AQHcoou284bIbqHRJUScOPUqFC9B77WSOPbA
Date: Tue, 24 Feb 2026 18:55:18 +0000
Message-ID: <IA1PR11MB6347B94F89D6CA84D9A12FB1F474A@IA1PR11MB6347.namprd11.prod.outlook.com>
References: <20260220170908.201422-1-vinod.govindapillai@intel.com>
 <20260220170908.201422-4-vinod.govindapillai@intel.com>
In-Reply-To: <20260220170908.201422-4-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6347:EE_|SJ5PPFF6F855567:EE_
x-ms-office365-filtering-correlation-id: f22d48e3-c5da-441a-4ee8-08de73d64147
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TDR4V1AwNXZtV0Y1aXd4YlZzaS9saHZmUUgxQ0ZXUWQzVHp2NkxXTzBYV1N5?=
 =?utf-8?B?S0tlTWZCYjlMWjFSTkN4Nkl4ZGpPMC9Dd0ZIQ0F4eXQ0VXlCQktNYmhFMFhJ?=
 =?utf-8?B?K0crMEhPbFhsSHJnRVJYOWs1TUgxMFdtVVM1UStIcEdNcTJpamk4VktLK2FN?=
 =?utf-8?B?RkhWYWZ5L0JPWjdkWkk5WHIxaXUxengxWk16ZDlCMUpvZVBEZlFvN3FXbC9J?=
 =?utf-8?B?bWM0NC85dE5EZFpRWFJIVkc2UkxTZWdMZHRwOFZZZkJzRTFLRG9EUVArcWor?=
 =?utf-8?B?RmJRYmNFVlJ4VU5TNGR3YVc2cGZsMG9UUjJXYmVhOHpYUk9kZFhzQjVRQXN5?=
 =?utf-8?B?WDUvaFNXdzQ1aUYzanY4aUQ5elJ5ZDA2Y21HVHYrVUNRRWtXV0ZJQ09lR1BS?=
 =?utf-8?B?QUNQbDRkeTVBdGQ2dVRsdWwvUGlSMUlITEV5bi9lL2Z5RlF6a0hKcVZRbUYz?=
 =?utf-8?B?L1kwemkvZVNBdmJaWThkNGRaR1BNNW4wRjFvQnk3S2dZZjRoQlNpNzM3TVhq?=
 =?utf-8?B?RVExOVZ3eW5LbjV1TzQ3dkhzQVRhb1crekdzc05MdlRrVEUxZjNidGVkQTBp?=
 =?utf-8?B?WWtFZVp5NEwxZ2YvTTZWZ1BkZUxFbmU5cTdxdlhabFNIamdwemhUZGdGY2xo?=
 =?utf-8?B?M0ZkelBYdmFEcDROZjBLdHJHUldTdjVRK2xERldQWDZjbndOaiszaE4ydllq?=
 =?utf-8?B?SEZhTWVVRk5tZitTbkhNQXRRbTl3M3dHQjZWV25DSjc3VDV4T2lXdDJzOFlu?=
 =?utf-8?B?V1ltVGxLZzhPRW0zaE5yRFJleE1iblJoOTJaK1V5aUY5SnpCY3JKaGgwanVK?=
 =?utf-8?B?c2Ywbk16bWZCNis0L0dmZHBNNzE3Zm9ER0lRQyt0amV3RW96aFZkZDNxZHFa?=
 =?utf-8?B?bmNaVFJ3dVc0eERVVm9TMVI4T2lTc1VHOVI0bTNtcVhHczRXRGJmcGhCL0JN?=
 =?utf-8?B?NFVCcTZBOG9CRnFxczROc0ZrTTBoU2txQ2tWbVlTNzNna1Bvc1YrT1QyNjVr?=
 =?utf-8?B?UGNvMk1OTHZnd0xqM1VWekh6eWFBem0vK3FTU3lPdHZsUnV2YnVMcUJ3YVpV?=
 =?utf-8?B?c3dSanlxVXlkSi9YMGxydEMyVnJYQ05BVkc5VTlRd1VxUjdvSEhJaWlKS1NY?=
 =?utf-8?B?a0Y5eVhyTnNrNHNHc2llZW9nb05aUXhzQWZwMFBEMkozWlppQUJ0RU5IN0w0?=
 =?utf-8?B?UGczcjk2R2swQjNoa1BJb1JkNlRUTWE3cTVZVG14bGRpQktHVGRHVFJlY0Nq?=
 =?utf-8?B?bVdUVktYQXZCMmdVU1RLWmFPSTcweGxXSGNPUHdjVzVlT05aUm1jbS9hWHk4?=
 =?utf-8?B?cTBIc0hnL1ZtWjBKOWFEeXcwaWVvSWxkdVdndzRobDJPcGRYVis2UmFldXAy?=
 =?utf-8?B?ck16cFRUMUhuVkpoZzB1L2hjVERneXZYbTVhVmZJdXVqREJjYWhjODFLUkdG?=
 =?utf-8?B?K3p0MmZLMnAySzE1d2VaQ2JpZnd5Nmx2QXI1U3dKaFp1bW5ranplRE9rRFcz?=
 =?utf-8?B?WlFxVS9TWjZBNGFZREpKY1hYNG56aTlxLy84anM1VXQ2ZnJsak96ZkdSeG40?=
 =?utf-8?B?VWVQS3B4bEJ4WFlrMlI4c1dLbU4yMGMyQjNjTFN1T2IrOGxyODJlcytObnRI?=
 =?utf-8?B?UDVQb0YzMDQ2SWtPdFhqaCtwbXZ1aGoyYVIvNlB2c09CZWVLeE95MHplMDJa?=
 =?utf-8?B?T241TFRaQ2NQQ2tKVlUwc2h5V2p6emw2SFRqV0FMeGZEaXI1bm9XWTVzRWxu?=
 =?utf-8?B?anZYajl2MDNENFlHRElaVHZlUjF2dVNhS3o2QVdBSXloaG1maWVOUGQ2RXNU?=
 =?utf-8?B?OFRCc09GWEJIMWVTSkR2dVg3ay9nSUVKSExDdk1scTdoeGl5bElQZTJldWpP?=
 =?utf-8?B?Qi9uWFhaMHN1T2lZZ3I0STRvU080cDRoVWZsNXNuSjdNWmpFMzJGbEYyemMv?=
 =?utf-8?B?Ulpob3BNeitRUURXUFpDOTBqek9JVUZUZkJOY2NGcmRMVjd1amF0UUxtL2Ur?=
 =?utf-8?B?d3lUVHNmcHFWd1ZUT1NuTklZNnFHYVdETS9mLy9YSWVDamUvcUNpeUJrdTBV?=
 =?utf-8?B?c2lLR1p3eEgwTzcyOXFBZ01kQVorZTRWdXNYNThaZVpPVlMxempFaDNURVRM?=
 =?utf-8?B?MHhYTjg0SWg1RkpudTBuOEQrQ3ZpeFNpUkR0eVE5OEJnNWdxNyt4T2lYSWU1?=
 =?utf-8?Q?PvZ0KS3R0JUWcIilGHlsi4U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6347.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZEFKTVgvMFdpQ3VTL0VKSTZoM09TZkJGcm5CL01yUUFrK2ZCMXAwUnpONGEx?=
 =?utf-8?B?eEUwZUFIZFp6QlNOSUpqUklLUml4bnBPOTJOWDF2bmJzZjJvMmdqa21VbXZi?=
 =?utf-8?B?Z21ia2lPVWVDZXROVEtkTzBhZFloTHcyaFRVSEowdUEwOStmS1JUM3NuNlZy?=
 =?utf-8?B?eUtvSUptYlRYd0tRK1VFa3I5azNCUldDU2RTME82WXVueEVZMmZRZC9HcHZm?=
 =?utf-8?B?RjZhVmExZGxFRzNnSEF2THFGTmhxQXJSR1ZHWU5CMVRDQkZCa243UUc0ekJu?=
 =?utf-8?B?SHV0c3Q5U28waEkwaHZicEk1Sk1ER3pVT2thdXlnTXpmSUw3aXZSNFpETWNM?=
 =?utf-8?B?TW80SXdjS1ZHZ0xtVHNNQVJaY3cwRitSRStwMFAvM0JMQTU3Uk5mNXhVc3By?=
 =?utf-8?B?MzdDNW9aVkM3WDFjUERHTDcvc1d1QVZtQTN5ejNOMGU5QWZBVjhoeUdGMVBQ?=
 =?utf-8?B?MXh4bDNSRmtGL21VeTlmVm1oQ0FNNEJwcll3cy9TLzBGK0pMUXExK3EybTJV?=
 =?utf-8?B?NzhqampsQ0ZIVDFNMWU4NWJOTFNjUlJWaDdyTmdMT0RxQ2EyVHNRcytOQ1c1?=
 =?utf-8?B?Ulk4cDFHZXduTWxJMnNNQTgzTnhJV1o3cnRJZEw0a0dtREQvalBXd2U1NDlT?=
 =?utf-8?B?YzVkd3lNdkxXSisxMEtpRzdoYkZydjRKM1Q5RmFqcTBqRzhuaEhtSU5KcjNO?=
 =?utf-8?B?Wnp1cTdpVXdrdmpUY0VyUGdrY21pWHNGei9waFJqS3J6eC9UNVdVSEhTRXRC?=
 =?utf-8?B?Ky9ibmNOS29LUzQ0YW93V3QrTzYveklZbXgwOG4xTU9QdkIvYVVXRjVDb1N6?=
 =?utf-8?B?em9hTVBXZkUwcWZnZGNLSDNLZTJsQ2Jib0NUTEEyNmlIaUY1YU1JMmE5eThL?=
 =?utf-8?B?RWVvdmt4akdZa3pTY3EyTlRMV2lhakcvaC9Ga0l2U3hJQzBRZ3FxZE5UMER4?=
 =?utf-8?B?alg3QzNXeEtaMEtmdSs1ZTlYdkx5bTBVdUtscHJmUTduN3p4SFBiV2x1YmZ5?=
 =?utf-8?B?cUR6eUdMWWlYNmdLUTR0WTJRdnRKd2wrMHFtM0JZMmFVblJQZkw5a05waGlz?=
 =?utf-8?B?ZnlSZkJuVlhFdUpNV2w2SWZWOTV6TURZck1jSlJSVzdKQ2IzRHV5dUhQSEVn?=
 =?utf-8?B?Tjg2QWFOeWN0U1NMV3pLRnpNQTZGYUF1b25XMXAwNWt4NFlJNlFVUXdWNm11?=
 =?utf-8?B?V0ZxdStsWW5zYjhMRHFOWE5iOG5EZ25IcUdlUWlYUVBrblBoSWxiUWxvUEdZ?=
 =?utf-8?B?TVRnVW9zM1NDMTVOQjdQWWVtYWF2TEtqREFodjg4bVF2RklkdExubFdPSXM1?=
 =?utf-8?B?dFVqUmVzTENxNmMwdnMySWgxaXZqZGU4UmZRMllXUGdjeVVqMmh6Tll0cS9V?=
 =?utf-8?B?eTdndU9zbERjSG1WbDZIeE40eFh3VVlHU2NMR2hCNFJNbFBYUk9BYlNVUXh4?=
 =?utf-8?B?VERWWFNESGJDdW0xK3NtQmd1c2JaM3FBUExyNXI1cng2WTdPdzNRZ3YwVGdV?=
 =?utf-8?B?KzJja2RyYWxSby9mT0Z4WnpMaTNMa09nSWxjMk5VUTkyVVE4c1JtT1FVMnor?=
 =?utf-8?B?UFF1RzlZVHN0Q3RQN2Zob1RSUE9CRGxXcCtXTEd3TlFDbUdic3ljNk9oM00z?=
 =?utf-8?B?UVZmOFpFbEJBRExPSVIzcjJkMk9hdHRTZmo1RjVENEI0YVhrb3o2UGNabHhX?=
 =?utf-8?B?YjVOTTVXcnF5ZVIyN2hNOU9CSTBwOGZaTXEyU1JTelFxNERqWFZSZUovaTNW?=
 =?utf-8?B?a0FwMTk4U2RjeXlxaWtIaGFhVzhENEYvc0pKWmkxc0VzRjkxbzd2R1VoYlgr?=
 =?utf-8?B?K0RFSHVkemxGcGlGMWM3OXU3RXQydlFhRkxwTmt6dmczelovQlBRMUJhYVkx?=
 =?utf-8?B?ZTlNMFljbVVKOFV4SEdpekVyMjgxRVcvYmtYWWI5WVNaSkc0N2xwTDZta0tq?=
 =?utf-8?B?eExGeHlyK3JDd21SUExYbWNVTDMyTnRmdEZSblNSSjZOVEVKU1hXdU9RTkxL?=
 =?utf-8?B?YWJ5cnZqUVc5bE50eEhqOUs0NjVZUExwN2dUaldGSmJZZHdHM1h6UVR0U055?=
 =?utf-8?B?NTVxUEcrQk8xWnhFbFdnRHRZQ0JoOVpmemdBWmJCSTNXYUUyOEE0YWMvS256?=
 =?utf-8?B?dGRsTXRRK1AyWGFBUTQvdytYVG9HOGR3S25wSS9IWUthWmtNSGJlR1JFNllH?=
 =?utf-8?B?Q0ZZVlBCN3hlaG1udHNxYjZvd1RRckhwWkRLTkpHcmhWa0Z1ditZMGNYQXpS?=
 =?utf-8?B?VC95ZE42dGdxbVluQ1c1aXlyUEtoaHNQZ2hBU2JYWVJkcTF5ajRWY1FBME9i?=
 =?utf-8?B?anZpVTNSYndqeFljaFFQWEZic25tc0JKRm9yU1FraUJBczZ6N0JVdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6347.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f22d48e3-c5da-441a-4ee8-08de73d64147
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 18:55:18.8105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jZxjSauJh6i50wUNUMKwvNBGGWW2dPyD9MdEs+l0UJzk8WYWS9ytjYzgLBs51zxdfyO8/yZa/Tzxxj2JdoCIpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFF6F855567
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA1PR11MB6347.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 33A8A18B990
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR292aW5kYXBpbGxhaSwg
Vmlub2QgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIEZl
YnJ1YXJ5IDIwLCAyMDI2IDEwOjM5IFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEdvdmluZGFwaWxs
YWksIFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT47IFN5cmphbGEsIFZpbGxl
DQo+IDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT47IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMy82XSBkcm0vaTkxNS9mYmRldjogRXh0
cmFjdCBpbnRlbF9mYmRldl9mYl9wcmVmZXJfc3RvbGVuKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBDb25zb2xpZGF0
ZSB0aGUgInNob3VsZCB3ZSBhbGxvY2F0ZSBmYmRldiBmYiBpbiBzdG9sZW4/Ig0KPiBjaGVjayBp
bnRvIGEgaGVscGVyIGZ1bmN0aW9uLiBNYWtlcyBpdCBlYXNpZXIgdG8gY2hhbmdlIHRoZSBoZXVy
aXN0aWNzIHdpdGhvdXQNCj4gaGF2aW5nIHRvIGNoYW5nZSBzbyBtYW55IHBsYWNlcy4NCj4gDQo+
IHYyOiByZWJhc2UgcmVsYXRlZCBjaGFuZ2VzIGFuZCBjb25zb2xpZGF0ZSBhbGwgdGhlIHByZWZl
cg0KPiAgICAgc3RvbGVuIGNvbmRpdGlvbnMgaW50byBhIHNpbmdsZSBmdW5jdGlvbiAoVmlub2Qp
DQo+IA0KPiB2MzogYXZvaWQgaW5jbHVkaW5nIGludGVsX2Rpc3BsYXlfY29yZS5oIChKYW5pKQ0K
DQpDaGFuZ2VzIExvb2sgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdv
dmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuYyB8IDI1ICsrKysrKysr
KysrKystLS0tLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldl9m
Yi5oIHwgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pbml0aWFsX3BsYW5lLmMg
ICAgIHwgIDMgKystDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDkgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmRldl9mYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmRldl9mYi5jDQo+IGluZGV4IGU1MjUxZWQxNTk0OC4uOTA5OTNkMDlhNzNmIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldl9mYi5jDQo+IEBA
IC0xNyw2ICsxNywyMiBAQCB1MzIgaW50ZWxfZmJkZXZfZmJfcGl0Y2hfYWxpZ24odTMyIHN0cmlk
ZSkNCj4gIAlyZXR1cm4gQUxJR04oc3RyaWRlLCA2NCk7DQo+ICB9DQo+IA0KPiArYm9vbCBpbnRl
bF9mYmRldl9mYl9wcmVmZXJfc3RvbGVuKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHVuc2lnbmVk
IGludA0KPiArc2l6ZSkgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9f
aTkxNShkcm0pOw0KPiArDQo+ICsJLyogU2tpcCBzdG9sZW4gb24gTVRMIGFzIFdhXzIyMDE4NDQ0
MDc0IG1pdGlnYXRpb24uICovDQo+ICsJaWYgKElTX01FVEVPUkxBS0UoaTkxNSkpDQo+ICsJCXJl
dHVybiBmYWxzZTsNCj4gKw0KPiArCS8qDQo+ICsJICogSWYgdGhlIEZCIGlzIHRvbyBiaWcsIGp1
c3QgZG9uJ3QgdXNlIGl0IHNpbmNlIGZiZGV2IGlzIG5vdCB2ZXJ5DQo+ICsJICogaW1wb3J0YW50
IGFuZCB3ZSBzaG91bGQgcHJvYmFibHkgdXNlIHRoYXQgc3BhY2Ugd2l0aCBGQkMgb3Igb3RoZXIN
Cj4gKwkgKiBmZWF0dXJlcy4NCj4gKwkgKi8NCj4gKwlyZXR1cm4gaTkxNS0+ZHNtLnVzYWJsZV9z
aXplID49IHNpemUgKiAyOyB9DQo+ICsNCj4gIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqaW50ZWxf
ZmJkZXZfZmJfYm9fY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIGludA0KPiBzaXplKSAg
ew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkcm0pOyBAQCAt
MjgsMTQgKzQ0LDcgQEANCj4gc3RydWN0IGRybV9nZW1fb2JqZWN0ICppbnRlbF9mYmRldl9mYl9i
b19jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRybSwgaW50IHNpemUNCj4gDQo+IEk5MTVfQk9f
QUxMT0NfQ09OVElHVU9VUyB8DQo+ICAJCQkJCQkgIEk5MTVfQk9fQUxMT0NfVVNFUik7DQo+ICAJ
fSBlbHNlIHsNCj4gLQkJLyoNCj4gLQkJICogSWYgdGhlIEZCIGlzIHRvbyBiaWcsIGp1c3QgZG9u
J3QgdXNlIGl0IHNpbmNlIGZiZGV2IGlzIG5vdCB2ZXJ5DQo+IC0JCSAqIGltcG9ydGFudCBhbmQg
d2Ugc2hvdWxkIHByb2JhYmx5IHVzZSB0aGF0IHNwYWNlIHdpdGggRkJDIG9yDQo+IG90aGVyDQo+
IC0JCSAqIGZlYXR1cmVzLg0KPiAtCQkgKg0KPiAtCQkgKiBBbHNvIHNraXAgc3RvbGVuIG9uIE1U
TCBhcyBXYV8yMjAxODQ0NDA3NCBtaXRpZ2F0aW9uLg0KPiAtCQkgKi8NCj4gLQkJaWYgKCFJU19N
RVRFT1JMQUtFKGk5MTUpICYmIHNpemUgKiAyIDwgaTkxNS0+ZHNtLnVzYWJsZV9zaXplKQ0KPiAr
CQlpZiAoaW50ZWxfZmJkZXZfZmJfcHJlZmVyX3N0b2xlbihkcm0sIHNpemUpKQ0KPiAgCQkJb2Jq
ID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oaTkxNSwgc2l6ZSk7DQo+ICAJCWlmIChJ
U19FUlIob2JqKSkNCj4gIAkJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oaTkx
NSwgc2l6ZSk7IGRpZmYgLS0NCj4gZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmRldl9mYi5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmRldl9mYi5oDQo+IGluZGV4IGZkMGIzNzc1ZGMxZi4uMzRlZDJiOWMyYjRmIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldl9mYi5oDQo+IEBAIC0x
OSw1ICsxOSw2IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqaW50ZWxfZmJkZXZfZmJfYm9fY3Jl
YXRlKHN0cnVjdA0KPiBkcm1fZGV2aWNlICpkcm0sIGludCBzaXplICB2b2lkIGludGVsX2ZiZGV2
X2ZiX2JvX2Rlc3Ryb3koc3RydWN0IGRybV9nZW1fb2JqZWN0DQo+ICpvYmopOyAgaW50IGludGVs
X2ZiZGV2X2ZiX2ZpbGxfaW5mbyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgZmJfaW5m
byAqaW5mbywNCj4gIAkJCSAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBp
OTE1X3ZtYSAqdm1hKTsNCj4gK2Jvb2wgaW50ZWxfZmJkZXZfZmJfcHJlZmVyX3N0b2xlbihzdHJ1
Y3QgZHJtX2RldmljZSAqZHJtLCB1bnNpZ25lZCBpbnQNCj4gK3NpemUpOw0KPiANCj4gICNlbmRp
Zg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pbml0aWFsX3BsYW5l
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2luaXRpYWxfcGxhbmUuYw0KPiBpbmRl
eCA3ZmI1MmQ4MWY3YjYuLjU1OTQ1NDhmNTFkOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pbml0aWFsX3BsYW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pbml0aWFsX3BsYW5lLmMNCj4gQEAgLTksNiArOSw3IEBADQo+ICAjaW5jbHVkZSAi
ZGlzcGxheS9pbnRlbF9jcnRjLmgiDQo+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmgiDQo+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9mYi5oIg0KPiArI2luY2x1ZGUg
ImRpc3BsYXkvaW50ZWxfZmJkZXZfZmIuaCINCj4gICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fbG1l
bS5oIg0KPiAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9yZWdpb24uaCINCj4gDQo+IEBAIC0xMTYs
NyArMTE3LDcgQEAgaW5pdGlhbF9wbGFuZV92bWEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsDQo+ICAJICovDQo+ICAJaWYgKElTX0VOQUJMRUQoQ09ORklHX0ZSQU1FQlVGRkVSX0NPTlNP
TEUpICYmDQo+ICAJICAgIG1lbSA9PSBpOTE1LT5tbS5zdG9sZW5fcmVnaW9uICYmDQo+IC0JICAg
IHNpemUgKiAyID4gaTkxNS0+ZHNtLnVzYWJsZV9zaXplKSB7DQo+ICsJICAgICFpbnRlbF9mYmRl
dl9mYl9wcmVmZXJfc3RvbGVuKCZpOTE1LT5kcm0sIHNpemUpKSB7DQo+ICAJCWRybV9kYmdfa21z
KCZpOTE1LT5kcm0sICJJbml0aWFsIEZCIHNpemUgZXhjZWVkcyBoYWxmIG9mIHN0b2xlbiwNCj4g
ZGlzY2FyZGluZ1xuIik7DQo+ICAJCXJldHVybiBOVUxMOw0KPiAgCX0NCj4gLS0NCj4gMi40My4w
DQoNCg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C749B1E26A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 08:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2AE10E4CA;
	Fri,  8 Aug 2025 06:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TtZYp5Wr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDF1210E4CA;
 Fri,  8 Aug 2025 06:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754635491; x=1786171491;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8BOuZrRIIUufxBX05W6sW4JRaxkT7P4FC6vNj0gOslc=;
 b=TtZYp5WrWm5BRvLV0Ako8p4GJMXUuDhzD7yusHX3RQ7CnS04r0RW3+tc
 NYoP89BBBdtQG7QzFmeQlzUzFeiOFEu6hleMGWDYqhTcXpm9/8guqNeTU
 wcO4iFvsQ5UU8TBt96ZrIBgLKQwSQGBwyBTQwopx+4SX003OPvwGvKIdU
 E7dyV5d2H2uAUEAE4Jqpz0ApvdVzpYCJlaRkyZ9GhWV3UO2daXKDce3Ih
 RbngRo64X1B8D4HtzPAV3HE+Yq8LjqGo7t1aGFVFO4utzViuVVxPDVK6z
 6USHhWLCkNQyAWWXFkNPeAIa9f4Mv/lZioOsGsgE84l84Z/4g3geiZ23B Q==;
X-CSE-ConnectionGUID: WXBdi+phTkedQbh2trVrGA==
X-CSE-MsgGUID: wsOhmFv3TVmNCTvSpuR70A==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67678821"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="67678821"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 23:44:46 -0700
X-CSE-ConnectionGUID: xd4TZ2ptQVCRiPHt+8wbsQ==
X-CSE-MsgGUID: m0K1ukDZR5idC5SF+CsrSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="196083593"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 23:44:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 23:44:45 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 23:44:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.58)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 Aug 2025 23:44:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DIonl1mAZJVbjqasBX/X2wckHzkf92X1maxxDGBtsOJgJq+fEOmqhOrnFuoE1LAUkUnbABIF5IQ1LJ1mnIyvt7cP/CWF+5US4YtMpzW5gcGGQIGnATNWUX+eghM9BBTv5pu9shnbUiLtXcpDXCZ5w/SfGThvqebXNDqCnMiN90k91j9RBALpyeGbP4DlGCkpSxCPUjpYrFe4ck32BHhlpb+Kv+y5BWr377B/F42A8AgWa/pTZSoXDW69JfKbu1gzuh4iQhV7m0ITN0rGCw6ZMzkPQcHmtMSpJT84vqvOqkiqx04tLSZwdTFnpURlOunTCi4BE6ZFl7Riz3vUedMYPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8BOuZrRIIUufxBX05W6sW4JRaxkT7P4FC6vNj0gOslc=;
 b=O2qg+gkK4ZVkybDg5418T45wKhKFJ1KIdQ9ZCsRxZTM8dIg5m1/CVnxZCNqSKFzrTVUGuCCSnfjQGFBkEtFMWrFYjXaYVqSX6EmkLzbqOTJZ/QNdn7/qu/M5H4zmxS/XHERsqDjIdealkygLwr3Pqy+ABJPo0Z9tTNQJWFPHE1rfOVhhAgq/Mi5nQT53WzIyl4/5VYNgOQAfW8Ec3/YdchzyjEuXJltovAdtumcURg2wV6FXxPm2UqUyUSyN3kIgXdXFQLhXkfJAil1sJp0ZDao2vTFZa7/pqke3RMYdEnK5rXni1p9P+XqC0RuFHVlHQ8wc9H2l5JHhFZ87M84pQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA0PR11MB8417.namprd11.prod.outlook.com
 (2603:10b6:208:48d::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Fri, 8 Aug
 2025 06:44:43 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 06:44:43 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 13/19] drm/i915/tc: Unify the way to get the pin
 assignment on all platforms
Thread-Topic: [PATCH 13/19] drm/i915/tc: Unify the way to get the pin
 assignment on all platforms
Thread-Index: AQHcBd1qxHBrjQehNUSA7PELum0EXLRYVAjg
Date: Fri, 8 Aug 2025 06:44:42 +0000
Message-ID: <DS4PPF69154114F4595CE25F7C910775E18EF2FA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-14-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-14-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA0PR11MB8417:EE_
x-ms-office365-filtering-correlation-id: c7a96f9e-e5a8-4ce3-7562-08ddd6470e64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?S04vaW1BS1pzVzR5RFp0RlRBTyt0OVN1RWtBV3VSUXl6bHFOUnhUSjNGYzRC?=
 =?utf-8?B?TS9TT1RvWlR3WVJFa3p3bzFxT2RRc1AvaU9qK2dpbFJkVWNlQUI4cXMrbEhU?=
 =?utf-8?B?MTVTZ3N3ZXRYeGlWT2xPRUxIcVBRNG1EbHc1UGx2dWE5RDVXOEdzVnN6eHRs?=
 =?utf-8?B?cTU0OVUyM1NjdmU1cERDZ3MycHgyTWpyOTc1bVNIMVQ3N1M4OTd1TnIzZURY?=
 =?utf-8?B?OEd3cm40dnNnbkErbUdILzVuaWFGWWg3TzhiLzU1UVdWNmx0UlU1MFh5Y01U?=
 =?utf-8?B?VlNxajRVZVV3OXpadC9LZVF0ZkpzVDN3dHRFMUtwTHVJNmV2UWpFWUlidktB?=
 =?utf-8?B?R2RjU2x6cWVOcVNmdE8zd3JDaDRTcERXaHB1QlE2OXlKUHFrdUdkY0ZKc0xW?=
 =?utf-8?B?T1M1Vk1xMjdvUXVyN0ExOFVNUVZiZXZ5Wmx5WWJpQUhwbjlEQTdZWVJIdFQy?=
 =?utf-8?B?K1BMa0lQTm9NRi9qYXFab0xrcWNoUWdEeERBbUpqMWRsSWFudnRNRVlCekpR?=
 =?utf-8?B?Z21BRE5ZcDJpMnlqcWhzWTF5ck5XaWxPeTZrVkI1bEppNW1aQXJKNkJxckxR?=
 =?utf-8?B?WEhMdUtXNUtFcXhSMEl0RUIyL1dVb2dRdFQvMTQxS0F3RFl4ZzRNUCtJVzFL?=
 =?utf-8?B?azY4MVNPanBPdGZXVUZiUlVPY2Z4aGd4a1R1Y0xmUmNOaXpzcUd4d1hhTll3?=
 =?utf-8?B?UzJiNDNpYndQRExnSUs0RytEakozMUhxS01CSGQvY293cWl1L0Z6UXMwbTJr?=
 =?utf-8?B?UzY2dGFUTmptS3FGMW52dFFPWnRWRS93bzRKa045STRvNmM1a3AxNE5JNWlj?=
 =?utf-8?B?N3UxZUpsYXpvU3JMbnpNMXB5V0hpdzdOd3V3bC9BamxJTGZZVFBIK0FMWUZP?=
 =?utf-8?B?Z3B1SVhqeGYwdU5VdGh1SG9VUXpoeWsrdWtsYldWbFlJMUZHeDlYM1Q4NnV1?=
 =?utf-8?B?VmlCVkJobXhPbUg0K2hrN3NlVnFGU1BISktjSmRnZCsyNFlPZEx0WjlWUGJz?=
 =?utf-8?B?c2ZXa1JoZWEyYldzSXVqVDVQbzZMVEJSSVdqSUJHa1J3RTdNRTc5dzBLY29i?=
 =?utf-8?B?eWJXdHdwOXV4SDZpM0VOVE1yWUoxQUNlUUI4c09JTk9pNmZqQkJPYktKWTRD?=
 =?utf-8?B?WWJ5WHVZaDFMZzRKQ2FQZ2Fvb2htdGdqN3FCL3RwWnZUemZOYzBRNUxQUWtr?=
 =?utf-8?B?djlyOVErY3QyaFFzS0tmajl3VlhaUW0ydGdWN0E3ZDFSQkJmaE5mSk9VMG1l?=
 =?utf-8?B?eDRmdG9jZWlxZ1JUUlNnem1WUFlaZ0h6ZHc4MkVuOTE3Y2kxQklEeFZVL1Za?=
 =?utf-8?B?U2tsaElFZ0daQ2VpWWNGNlpQWDFxNnJ1OHF5WDR3K2JKNVR4V2l1T1BBVEhn?=
 =?utf-8?B?eFdNaXU2dFkzNzJxcGpnamt6RXAvOGlEdUQzZ3dMYXlKcGErRVo2V0pGc3Fl?=
 =?utf-8?B?d2dSaDR0ZUxiWkZkSnlDTDFYMUduS0t1SjMxdmJ5dUhPRlc2N0Nzektpakxu?=
 =?utf-8?B?V2h6WmJXVU5ubEdUUlpUYUFXbHl6bmRnTE0rVkhvcWw4Rkp2V2JoVXhnakF0?=
 =?utf-8?B?QXRUbElWd0hEZVpMVzdFcFZmcXdWdytmbStlNTl6STNYcXpVUEN3dEVGdW05?=
 =?utf-8?B?alNDVCtrNDVxMEx3Y1RnUkFFQTAxaE0wN09aZHJWUFJVYjNMbWNnL21UYnhL?=
 =?utf-8?B?SDIyblZ2RnJwa1F1YWVzSStWY0REZXlXWmc5SytlbEhSalFMQVZidXk2ZUdW?=
 =?utf-8?B?dW1qYk5HMWVOWVJxcWFqc0VtNTlidzE1TnVUK1VaVXN6OE9HbFRxSjRBRXVC?=
 =?utf-8?B?WVdXN2piaEVkZ3dxMDNEREl1U3lHRi9ualdkWm1saWY4cDFyTGo1K0c5aTQx?=
 =?utf-8?B?NkVNenVtRXJJQ2Y2Titob3ZsV2UvRXFSUDdTMTRtMndTdDlHVHhMNlNybFZl?=
 =?utf-8?B?OEhkeTgxSWtJM29pbUFVN3pXWEJ3VS9jSThHN2dsVThqOXh1VnRzblBzZGpG?=
 =?utf-8?Q?z1FvHXacBS1xt7eIec4hvJb/2VLLtQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0hRYWl5QUNzSTJVUVBGdkRndDNQZStjME5tQmV5MkVpMmR6VUR5T1NyWjVu?=
 =?utf-8?B?bXJwMm9SNVJHNnhmWnB1OWpwVUIzYUtZaWpqTTUxeDl0dmlRU1RsWlVnL2Mz?=
 =?utf-8?B?Um96MUZVRE1DVFk0YjNJUTV5YXNuQzdXb3R2SXh1RFlZTFZYNVF5VVFHc0l4?=
 =?utf-8?B?Q1A2QVZwUUtlZzA5QjVIQ1JzSjFrVDNCOHRjS0djNkZ4WTREQjhWeVQ2bDcz?=
 =?utf-8?B?bFhaSWNlb05SZmJIQVlwcGdGaHlMQUZsVjh4Q1VSZ3c4VWh6RFpvYnc1SmdL?=
 =?utf-8?B?Vzg2Ynd2TXgxaThDZ0RCNHZWaloybWdma0J6RCtBcUhoVko0dWp1NEJFSUxU?=
 =?utf-8?B?U3Y2dnBCSFgySFl3YzdVSHlOL2Q4R0YzelhTR29vc2lBZEhweGN0NmQzN3o4?=
 =?utf-8?B?bDltVk5yVWhldkt0MTRaVzB4QVpKck5UbnZWZi9WSEdnb01PbU1QT1d3dEtm?=
 =?utf-8?B?aUtJV0Z2T2R4bTJvQVVvTDdPaXNtUm4xWm45bnNUeElPeEZxLzdLOGdrLzR1?=
 =?utf-8?B?aS8wRkZPU2RPdVZ2YURDTVFXdFBtdFM1bTkvMXlma2xVY00vNnNmZzZaYi9U?=
 =?utf-8?B?eGNGbGpRMVE5SlJUT1dUU3R3SGtEMm4xWHN5cnluMmlackZsZDFtdjIwUkJC?=
 =?utf-8?B?ZHN4WmpEUkVCQytxN0hZL01GaDlFaXhMcGtQNkhGU2hGdXBQTVRjbzF6ekJL?=
 =?utf-8?B?ZFJ3Q0pGZHRhRW0vYU1ZbkpDRlFvQitRQ05NeW5DeXZqUERGOVBjYjY4NmZS?=
 =?utf-8?B?S28xR0JySk1LR21kYkh6U2xIOGRSUXJWTGJiei9wanE2dTFIWStBa2RoVDBw?=
 =?utf-8?B?UHpheGsreWErR1lkOHF3WUtOS2wzTWs3TDJwdUMrOVJLampLVGVxREZYSmNr?=
 =?utf-8?B?MFlKTUdRTm9oZTQyWWdEVTZqOURLbmt1TXpKdUFaaEpYWmtpYXExaDJkQmZa?=
 =?utf-8?B?TFR0cVN6THRadDc1Q0ZaMTQ1dEpDZElZZ3lXYzlxTk1QRTdZZTJwQS9CVyth?=
 =?utf-8?B?Uk5Zd2hnT1YwZW0wR1hRWktESkxmY1pKcldQUHVXdTF6KzNjTWlDZ3BjYnBT?=
 =?utf-8?B?d0F6S0UvVWs0MzB6ZmVCckxkNjFXRnd4WjdSS0poUzBOS0svamNwNXJsRW5F?=
 =?utf-8?B?SVFyY3B2WEhSaS9yUkROem5BYzdKN3RvaDdzVU5uVUNXRWx2SUtiR0JkbFZo?=
 =?utf-8?B?SkFwYzlxc2JjQm5CaEV4aTFpc0xDWHVVUm5BbExLRThFNjhrYUtNdGdxcCtW?=
 =?utf-8?B?WTRDZXlMNmZkM0lNRVR4TDVELyt5R05HT0tUY1J0M0R3U2htQ0NqeldleEww?=
 =?utf-8?B?N3hIQm11eXBPRWI5YWt5dDNXYTJMRTJ4VmxXVW1LcVl0NHIxVGNTUThycUsv?=
 =?utf-8?B?VEgraThDSnlJMjlOOHVNTnpMTEJBei9kbVBTU0hsOXhzNGE5azVxY0xXNlFB?=
 =?utf-8?B?SnNmMlV5QmZDM1FuTmo5UCt2YzliYVhyY1lzK1cyQlFYbmw0NU15UzFwQ0FE?=
 =?utf-8?B?eGc1bTZIMGp2UHc5aCtzT2tUdVBrc3pLREhCNDFaYmYyQlJNdG5OLzhnNDZl?=
 =?utf-8?B?eitFK2VKSVRtUHFXcG1Talh4Q2Z2REI5ODFuWkpQbEN2Tk4velNMRUZlYmdm?=
 =?utf-8?B?Y2FHb1U0K3ZUbk1DZTlLSFFvVGh0TERBMXVCSEZXc09uN2pvNUFucXBzZUxU?=
 =?utf-8?B?UVFMVTBKUzVwTm5LM2wzZXU1YnNZQ2loTTFRZWF4M0Q0SkVzQW1EYzZZTThh?=
 =?utf-8?B?UHBGdmp0UlZVNDJ0dk9MMXhJc3ArR0s0R1NENW5uRDlNSlVwVjB4MDhxMDVK?=
 =?utf-8?B?anlZdGI0anNDZVhHQlJ4V2xqMHJnVkczVVpVeXlWYU1rZ21XQkx0QUM4VzRy?=
 =?utf-8?B?cW1OUFNYNzY3WVdBeUdEN1diRkZNb2VxRGNJVERBQVB1UEJGZ1F4UExleDc1?=
 =?utf-8?B?Z2FtSG5QUGFiUFlldXV6b0U1WlQwN1FDbFlLTnZ0aTlhbXJoSXIxSGZ3Q25P?=
 =?utf-8?B?TjdMcmRqWGUzSWhUeE9Wa1dWY01Jd09SZjliRk94SUNuQ1VKYk9XRzhrVUpz?=
 =?utf-8?B?TWpoS0xUa3hWWm9SRWR3YUlLUHlpSUgzTTZjSjFMUnZ4aE1QL29KTlA4WWZ4?=
 =?utf-8?Q?iPH7jMYpiZC0bD8YSOVCmRn4e?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7a96f9e-e5a8-4ce3-7562-08ddd6470e64
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 06:44:42.8531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkkxSWzYKp9jqQCDXTYRam9k68pN6nRLt7EvnDkQgFif6pX5+eV1THaoz4atzgZ6Th/TOJc1EYqOpO7Ld86SOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8417
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgNSBBdWd1c3QgMjAyNSAxMC4zNw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1Ympl
Y3Q6IFtQQVRDSCAxMy8xOV0gZHJtL2k5MTUvdGM6IFVuaWZ5IHRoZSB3YXkgdG8gZ2V0IHRoZSBw
aW4gYXNzaWdubWVudCBvbiBhbGwgcGxhdGZvcm1zDQo+IA0KPiBVbmlmeSB0aGUgd2F5IHRvIGdl
dCB0aGUgcGluIGFzc2lnbm1lbnQgb24gYWxsIHBsYXRmb3Jtcy4gVGhpcyByZW1vdmVzIHRoZSBk
dXBsaWNhdGlvbiBpbiB0aGUgaGVscGVyIGZ1bmN0aW9ucyBpbiB0aGlzIGFuZCBhIGZvbGxvdy0N
Cj4gdXAgY2hhbmdlLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
YyB8IDQ3ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNyBp
bnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3RjLmMNCj4gaW5kZXggMjBkMGJjODI1Nzg2MC4uNWIwNDRlY2U4MTVkZiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBAQCAtMjc3
LDIzICsyNzcsMzIgQEAgc3RhdGljIHUzMiBpbnRlbF90Y19wb3J0X2dldF9sYW5lX21hc2soc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICAJcmV0dXJuIGxhbmVfbWFzayA+
PiBEUF9MQU5FX0FTU0lHTk1FTlRfU0hJRlQodGMtPnBoeV9maWFfaWR4KTsNCj4gIH0NCj4gDQo+
IC1lbnVtIGludGVsX3RjX3Bpbl9hc3NpZ25tZW50DQo+IC1pbnRlbF90Y19wb3J0X2dldF9waW5f
YXNzaWdubWVudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gK3N0YXRp
YyBlbnVtIGludGVsX3RjX3Bpbl9hc3NpZ25tZW50DQo+ICtnZXRfcGluX2Fzc2lnbm1lbnQoc3Ry
dWN0IGludGVsX3RjX3BvcnQgKnRjKQ0KPiAgew0KPiAtCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShkaWdfcG9ydCk7DQo+IC0Jc3RydWN0IGludGVsX3Rj
X3BvcnQgKnRjID0gdG9fdGNfcG9ydChkaWdfcG9ydCk7DQo+ICsJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KHRjLT5kaWdfcG9ydCk7DQo+ICsJZW51bSB0
Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9lbmNvZGVyX3RvX3RjKCZ0Yy0+ZGlnX3BvcnQtPmJhc2Up
Ow0KPiAgCWVudW0gaW50ZWxfdGNfcGluX2Fzc2lnbm1lbnQgcGluX2Fzc2lnbm1lbnQ7DQo+ICAJ
aW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+ICsJaTkxNV9yZWdfdCByZWc7DQo+ICsJdTMyIG1h
c2s7DQo+ICAJdTMyIHZhbDsNCj4gDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDIw
KSB7DQo+ICsJCXJlZyA9IFRDU1NfRERJX1NUQVRVUyh0Y19wb3J0KTsNCj4gKwkJbWFzayA9IFRD
U1NfRERJX1NUQVRVU19QSU5fQVNTSUdOTUVOVF9NQVNLOw0KPiArCX0gZWxzZSB7DQo+ICsJCXJl
ZyA9IFBPUlRfVFhfREZMRVhQQTEodGMtPnBoeV9maWEpOw0KPiArCQltYXNrID0gRFBfUElOX0FT
U0lHTk1FTlRfTUFTSyh0Yy0+cGh5X2ZpYV9pZHgpOw0KPiArCX0NCj4gKw0KPiAgCXdpdGhfaW50
ZWxfZGlzcGxheV9wb3dlcihkaXNwbGF5LCBQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFLCB3YWtl
cmVmKQ0KPiAtCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIFBPUlRfVFhfREZMRVhQQTEo
dGMtPnBoeV9maWEpKTsNCj4gKwkJdmFsID0gaW50ZWxfZGVfcmVhZChkaXNwbGF5LCByZWcpOw0K
PiANCj4gIAlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHZhbCA9PSAweGZmZmZmZmZmKTsNCj4g
IAlhc3NlcnRfdGNfY29sZF9ibG9ja2VkKHRjKTsNCj4gDQo+IC0JcGluX2Fzc2lnbm1lbnQgPSAo
dmFsICYgRFBfUElOX0FTU0lHTk1FTlRfTUFTSyh0Yy0+cGh5X2ZpYV9pZHgpKSA+Pg0KPiAtCQkJ
IERQX1BJTl9BU1NJR05NRU5UX1NISUZUKHRjLT5waHlfZmlhX2lkeCk7DQo+ICsJcGluX2Fzc2ln
bm1lbnQgPSAodmFsICYgbWFzaykgPj4gKGZmcyhtYXNrKSAtIDEpOw0KPiANCj4gIAlzd2l0Y2gg
KHBpbl9hc3NpZ25tZW50KSB7DQo+ICAJY2FzZSBJTlRFTF9UQ19QSU5fQVNTSUdOTUVOVF9BOg0K
PiBAQCAtMzE1LDIxICszMjQsMTAgQEAgaW50ZWxfdGNfcG9ydF9nZXRfcGluX2Fzc2lnbm1lbnQo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+IA0KPiAgc3RhdGljIGludCBs
bmxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAq
ZGlnX3BvcnQpICB7DQo+IC0Jc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRl
bF9kaXNwbGF5KGRpZ19wb3J0KTsNCj4gLQllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX2Vu
Y29kZXJfdG9fdGMoJmRpZ19wb3J0LT5iYXNlKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAq
dGMgPSB0b190Y19wb3J0KGRpZ19wb3J0KTsNCj4gIAllbnVtIGludGVsX3RjX3Bpbl9hc3NpZ25t
ZW50IHBpbl9hc3NpZ25tZW50Ow0KPiAtCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiAtCXUz
MiB2YWw7DQo+IA0KPiAtCXdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihkaXNwbGF5LCBQT1dFUl9E
T01BSU5fRElTUExBWV9DT1JFLCB3YWtlcmVmKQ0KPiAtCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRp
c3BsYXksIFRDU1NfRERJX1NUQVRVUyh0Y19wb3J0KSk7DQo+IC0NCj4gLQlkcm1fV0FSTl9PTihk
aXNwbGF5LT5kcm0sIHZhbCA9PSAweGZmZmZmZmZmKTsNCj4gLQlhc3NlcnRfdGNfY29sZF9ibG9j
a2VkKHRjKTsNCj4gLQ0KPiAtCXBpbl9hc3NpZ25tZW50ID0NCj4gLQkJUkVHX0ZJRUxEX0dFVChU
Q1NTX0RESV9TVEFUVVNfUElOX0FTU0lHTk1FTlRfTUFTSywgdmFsKTsNCj4gKwlwaW5fYXNzaWdu
bWVudCA9IGdldF9waW5fYXNzaWdubWVudCh0Yyk7DQo+IA0KPiAgCXN3aXRjaCAocGluX2Fzc2ln
bm1lbnQpIHsNCj4gIAljYXNlIElOVEVMX1RDX1BJTl9BU1NJR05NRU5UX05PTkU6DQo+IEBAIC0z
NDcsOSArMzQ1LDEwIEBAIHN0YXRpYyBpbnQgbG5sX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiANCj4gIHN0YXRpYyBpbnQg
bXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0KSAgew0KPiArCXN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YyA9IHRvX3RjX3BvcnQo
ZGlnX3BvcnQpOw0KPiAgCWVudW0gaW50ZWxfdGNfcGluX2Fzc2lnbm1lbnQgcGluX2Fzc2lnbm1l
bnQ7DQo+IA0KPiAtCXBpbl9hc3NpZ25tZW50ID0gaW50ZWxfdGNfcG9ydF9nZXRfcGluX2Fzc2ln
bm1lbnQoZGlnX3BvcnQpOw0KPiArCXBpbl9hc3NpZ25tZW50ID0gZ2V0X3Bpbl9hc3NpZ25tZW50
KHRjKTsNCj4gDQo+ICAJc3dpdGNoIChwaW5fYXNzaWdubWVudCkgew0KPiAgCWNhc2UgSU5URUxf
VENfUElOX0FTU0lHTk1FTlRfTk9ORToNCj4gQEAgLTQyMCw2ICs0MTksMTQgQEAgaW50IGludGVs
X3RjX3BvcnRfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3Bv
cnQpDQo+ICAJcmV0dXJuIHRjLT5tYXhfbGFuZV9jb3VudDsNCj4gIH0NCj4gDQo+ICtlbnVtIGlu
dGVsX3RjX3Bpbl9hc3NpZ25tZW50DQo+ICtpbnRlbF90Y19wb3J0X2dldF9waW5fYXNzaWdubWVu
dChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkgew0KPiArCXN0cnVjdCBpbnRl
bF90Y19wb3J0ICp0YyA9IHRvX3RjX3BvcnQoZGlnX3BvcnQpOw0KPiArDQo+ICsJcmV0dXJuIGdl
dF9waW5fYXNzaWdubWVudCh0Yyk7DQo+ICt9DQo+ICsNCj4gIHZvaWQgaW50ZWxfdGNfcG9ydF9z
ZXRfZmlhX2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+
ICAJCQkJICAgICAgaW50IHJlcXVpcmVkX2xhbmVzKQ0KPiAgew0KPiAtLQ0KPiAyLjQ5LjENCg0K

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CCFB204BA
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 12:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 199C810E402;
	Mon, 11 Aug 2025 10:00:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LktBXtYz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4EC10E402;
 Mon, 11 Aug 2025 10:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754906401; x=1786442401;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1xzZC+QSxa6kkwO4Fa9G5ePjcYry17ZyNKF5qvNgEXw=;
 b=LktBXtYz/r8kU+MdNabjR5TNV+PaJqcP5BD/5VqtnKs0ETtXzNDQp69n
 HlSxZrwGrBxYDfezBn68YLMKKsZjLAuMXfkAkxTmBh2JIdYg5ek5hPaCn
 SDfZ4WIsKqROUl18878ouAIB3gcEWgqwEvHAe/ojG3j/6leVkfMI9SlYZ
 mwvWHYwk/eXpyU6nWd+DUC39ztINUi2U9IVavcDy2aSDgJO0LZToBP6yR
 E76bOntQW+5ikgmf0QyiLqTgDaRcjKA9aNF9qYkZbrTE5BqEmC2eqDUtW
 B/7wfBoWoR7qoae7ptzV5hcSr+ghwm+cihwRbj/BmO3b6Pbn4hSeTQ8Xs Q==;
X-CSE-ConnectionGUID: ljywROW5TV20u4MjoydRGA==
X-CSE-MsgGUID: /fbh1qInTRyKO/fi3I8gsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57232780"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="57232780"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 03:00:01 -0700
X-CSE-ConnectionGUID: NhXUtiY2Q3OJjxIYKmpNXA==
X-CSE-MsgGUID: CJOBBdxGTqeDDVkYqcU64g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="165110498"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 03:00:00 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 03:00:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 03:00:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.42)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 03:00:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gg3zvXCESeOik0Me82GMBCCHPzTIJO3uewX3KjVMXIJ4bKJhK9Xv1qdH9yQVkUxVKMqWiOvSQCXFeFw0Dqjbfl1qgE9K7CadBhyUZqAIc7q8KoE6CHdBnZlFjkhKQKGsCE9QK2rceih5LLhU6QMt339Fw5KpAmzE5rr6Jjkv0Q4+qN3s2FI6041X77wfTh4zu9AePRPsJ/WKMImMmztc9ee6j9RCttBjMl6TlF3em+4/kbQ3EDPVREtBatUWwkRWqSIDzPlyqTkqJ8FULLuuSDsjQGZdXhkVYOst4gx3jbCxtXmcpO212vxH/a5ezkXWYftu3a0/1aF4x2CxD/m5bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zBK3rFRcaLdi+uEPrmTxxyVQI4mGyU5pbFfXKRXcZ7A=;
 b=lbDZxuFzgJdChDP56U+0NYxCfF99jto0vnqqjmm67b9Q5PK44RVoffvRc0aFK+aQHZlDMpFE6HZ4dMt80MFSzJk68oY6kiQHMYmksvT1luNXagxvnX4THtQ3N4ptHS0KNnIKMgTLtfzLX6Yw5DCJuYrMDd7UUqvL8R6e2X3TvRNSssNmp6xzFv9n7RIGvDJfyeN4FxfI+qSDy6jDp7CswIDp7mpf0IaCp4Lb8gp1f5g9fCjip8QoIKHlJK4MddUGLD6Qfb65f9P4mk5G+EZLOrPNbEGXbdQPWr3nGIJuvdCpNWF0p/ETkRAwPkeH3dy/xg18QhFpwEUDMKWZ7gk8GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH8PR11MB6657.namprd11.prod.outlook.com (2603:10b6:510:1c0::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Mon, 11 Aug
 2025 09:59:58 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 09:59:58 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
Thread-Topic: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
Thread-Index: AQHcB46zqWcObD6N6U2HE5RICkj1nrRdMRcA
Date: Mon, 11 Aug 2025 09:59:57 +0000
Message-ID: <IA1PR11MB63487854A4D665B8C05C08C1B228A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-9-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250807111548.1490624-9-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH8PR11MB6657:EE_
x-ms-office365-filtering-correlation-id: 246db76d-f669-4616-72dc-08ddd8bdd467
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xpy3AmcMZ7GmdXIX8NWGbyS9FYsHA3Ub+B8egAfCEjSa13YIK68THz1AIHcF?=
 =?us-ascii?Q?mtElqxvVsTji1Q3Y1L+Zjm2IFBspiYr+z+tURp4QK0mPZxtx32ZEpwQBy9vs?=
 =?us-ascii?Q?cl03ub5/QVIQH07J/OXfrKTh7XBcYQLabHMBUUy2G3T7zQIZyDYpHmSmKsLT?=
 =?us-ascii?Q?G2NnmoXTn+f5K5PVsTyZNqGfybLUNoUJwxmEW96kB6nIXs/NcSbaGyopEza6?=
 =?us-ascii?Q?6rNttcwTEBK3374SG4RyLl6fivchJyxSEuxyo32O6bPitsc9ZhtT4fWI0qQt?=
 =?us-ascii?Q?rgM8oQ07nMP6m0DvskisH+DwwSwGPNn7eSRKRzr68ttANLVVSS9Be4YECjru?=
 =?us-ascii?Q?VAHvJCEZ6gCk6Qq0QEGj1fCFiYm787xi2BGyhxfoHY93ci2tJr46YoMr9DgF?=
 =?us-ascii?Q?fdx49SuA49Ba8UTw6KEMfvo8LB4LynBpF1DgfUX2s+7/OV0JhawIAcfsA1FJ?=
 =?us-ascii?Q?JvILgh87VMFIurjlMpkg0pzQLSKLN7dmB8COBbvD9voSPwhXyFe51OEZlAnR?=
 =?us-ascii?Q?e6l5Lk5jkUamJo172E5WlfWOLip1Zx20ey9CvNuivoiC9OUlFgJMLE7Rl1X3?=
 =?us-ascii?Q?Vtz8vJZPv/4d5j7PLqm15YqvKQf6019Bi9QjB/bT8x3aLaJ7o0hDat2890Iv?=
 =?us-ascii?Q?9ujPtnvd+Pvt06xWFiWDQhjykumLo0eXaZcIogH66JlzLxgvbXo0Nb4Qt7DL?=
 =?us-ascii?Q?x04ICLAOh8NF0KIUBG9+7rxE62zqJmOJVzoKgd6jqwEW8lnuDRob+Gp12w5g?=
 =?us-ascii?Q?IAfunmg+a7wsarZVvd72/d1knUMMIVNnJLAGJHS1+wKivQnhHb3f2GGxhUFZ?=
 =?us-ascii?Q?pnWmlZ+dru/zxHGK3HLri5ovpaFUkT0g7sXfyE6g4n5OSdkInwR/9PcX2y+2?=
 =?us-ascii?Q?NQUXaAlcxc4QuV4sFGbH7uIVsXSdX9NdNXQVTCb+9xw9XJy20DNsCyVWOXOw?=
 =?us-ascii?Q?kD2udoiuQLBvsUuN0klN8gNSDc60m6dFB8ytowQcdfHlxFcUp2OTkXFUAqAH?=
 =?us-ascii?Q?yjDhW3DmyE3EDMn5Jq7fpwdkLFFJ0sNYGTj6l7YWnQrDd9CtfWbAVvpzkkaF?=
 =?us-ascii?Q?kDUgAVCD2FDei9BwP9UX++hGOvoEdEgqulhQ8DC/u9siffZYxFwfUjWLth8O?=
 =?us-ascii?Q?ImRyhCf+yJ0u2fw/RcnM8xMWaxSC8QbntJTtJLYSU/EZQDiikwrBEFqcsz1i?=
 =?us-ascii?Q?xspnp7SCzxK5s3hpdUPvTw3uDfJcwEyNAWTfGNBCNCXNZ4Zbg/biJG440f3/?=
 =?us-ascii?Q?UQWqoqWD20YkUSGxIoHAFvV26wU6+3/6DyW4fojQZptx50ZA09QdTiyAny88?=
 =?us-ascii?Q?Y/1XO2zAlj/ghT4c+f1dZO2eEYX2rwkJhgvraKpv9E0Jzn3OGu9oEbXTkPIw?=
 =?us-ascii?Q?h+o5RnhTATcvmo29zyQimtrlvfZv9S5wmcJks7bpzKMFPq6igVRVAcPylj6g?=
 =?us-ascii?Q?wyMVujoefQ3XtDMIAIsiLhKaB6uH1LTzDoRIQlj3WO50S6412bExfmYe1TR5?=
 =?us-ascii?Q?IP4E1H+ChL/tQds=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SE75R+JVX7WKNXdXT4/ZCPSTPOxmnRI34o+7C5hfBTeKU+fVSLwAUMm5JvMV?=
 =?us-ascii?Q?wiPjT1sANHnK+vaY4N0Gft0vVteEHlOQ0AA7dFKIRPUOYJYyTB75JsZrPo1L?=
 =?us-ascii?Q?VdU4D8myQP3LkQQp9k1OHN6rgrnE4xON6SkzxpSicHgmv6LJlG03waMQsjSk?=
 =?us-ascii?Q?vddAIpwT1AQJMyM4HxQpEqyvLdWrDELit9zpjl4TW/ChSsjwwsJBMrCEZ1RF?=
 =?us-ascii?Q?gn9AJre0Y0Ba7zpbkfvfq2dT2FLHARt6TmagjF1SaLqjbXgTLATxzdxSv8IO?=
 =?us-ascii?Q?H/mgzEyC7CiB75UAUHDesUOg9V6ZF3KiXdFcKIsYaOw+j37ijLvhWrxgohCl?=
 =?us-ascii?Q?0q02dwcGwibbpEp9L/0Ao/mWQgwYIXzZPSRtKhrLNpaANP7JCfvILwMGPQdq?=
 =?us-ascii?Q?idAvSmQjhpl/GB18O1l3hRJg+vu+nPqbvsHxsG/BZey2oXHYUV/gN4xds8w/?=
 =?us-ascii?Q?2xJe/Vyccfku/xB7ZcEG0gZg+bq7XNL/T6t1UxbkoSyWb7mp8d/t32CNI3Zd?=
 =?us-ascii?Q?9l5aPzql+aNrbEjajAxOnGSvE+xu5ZnFTkEzC5N7r+GHFTv6z7AXBsrWGPJ9?=
 =?us-ascii?Q?xd+vWcxh4CHIxI4pOwv/oTVG7dCBz6OOH4m1nMHiih3lATeMwx9/16QPKh6x?=
 =?us-ascii?Q?M8cAewoR87Dy5uFsGMltrZrt2/N75u3e71cvL5yBPenBYsLdL+XLdz67SwFa?=
 =?us-ascii?Q?cpRWm750JHoNql9ehp3iHwZxVh1iAhDgsfvMUxSZvUBiTFpWW+mh8RUt65x1?=
 =?us-ascii?Q?yUr2uGWlu9ASX+oFdo1OVF5blEfjiYsxxSyi1rkOT7rmORpjqysWBFUDlXwK?=
 =?us-ascii?Q?AyFdNVUEMIRvZYPELKCw3ylkFjqzKVlKf1IYFf1fEWmvdO3ShyS+cqUclo3W?=
 =?us-ascii?Q?EUUTm17ItedLmJgIEIENxCP0aJG7ivSSMthgcyP1gXIEuNJJSPIWl4qcu2/h?=
 =?us-ascii?Q?AdRGX9qYsQgLIbkqS+OlGzmNCrEOEdKiI+YKHuw3x5m0qGrXm0H7N1WWGEHH?=
 =?us-ascii?Q?JV1KTiVz6xiogYDAIBNJlONmcAwxdXzwszso5ly9EpWj6brMUr5L3U44RQhU?=
 =?us-ascii?Q?kgxKkTVEI0rKNzSmkHxEIHbpN5zlD/OQVAfsrhdApcuyM88ApJ0ywSHFnBYp?=
 =?us-ascii?Q?NbX2TjdLsK9aKmt48stO98twUNjfObdheS+TUl1/0B0LPcjGAa2UXDK7VoeH?=
 =?us-ascii?Q?WkchCwYrSMOzZhcwUrW5qMfflNWUicAAyuzZ0pCqO9iIKPBT2vqZAdFgvmh6?=
 =?us-ascii?Q?3lTUVH5Sz1iVWtTy7x7PIMIUM6AjDS2Hdsugi+amWM3HB/OYh4ZnwvUfRV0d?=
 =?us-ascii?Q?+sIqW7UzLwniBnXbeVquaUnpJfM/jcNT52QLvQLQqyvGv+jTw207ay7zyTMi?=
 =?us-ascii?Q?oNt49MlqCnnR+0GHlt4Y3QdwUyazplVOySirvRbmignaTqJ4xC4DUNuSWtHM?=
 =?us-ascii?Q?aHG+Ib7H2SWjlQIj52gH3ZVRhvJfeNuh8BLdJZJCWMxL2NAeCvsFHMwwu4Jd?=
 =?us-ascii?Q?e0ZfI1JqYYEX+R+l/vSw41fFSpWwnlGjFI3r+WqMT4uTKO8zXZ6scolPUXUQ?=
 =?us-ascii?Q?wyPpJrIqiX5H8f4Ha+NgA0/ctdsvJwLBwgvsM3DhBr0A7OBVECQzo8wd0ayC?=
 =?us-ascii?Q?KG+Y7i3lsbTPtd9daBXD2s8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 246db76d-f669-4616-72dc-08ddd8bdd467
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2025 09:59:58.0224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xPbKc2lXCel7z0UUhIjnQyI77J8c1Y1ZPNZ1B7kMeVSqcJ1PIjtYAmZaEMmoPdJnnme1y025F6QvTh4FtodxsUh9TycsEyRsU7b8X0X7C/nDCwcnRt1WzGWtwTJKlylA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6657
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: 07 August 2025 16:46
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; jani.nikula@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, A=
nkit
> K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 08/12] drm/i915/display: Add guardband check for feature
> latencies
>=20
> Add a check during atomic crtc check phase to ensure the programmed VRR
> guardband is sufficient to cover latencies introduced by enabled features=
 such as
> DSC, PSR/PR, scalers, and DP SDPs.
>=20
> Currently, the guardband is programmed to match the vblank length, so exi=
sting
> checks in skl_is_vblank_too_short() are valid. However, upcoming changes =
will
> optimize the guardband independently of vblank, making those checks incor=
rect.
>=20
> Introduce an explicit guardband check to prepare for future updates that =
will
> remove checking against the vblank length and later program an optimized
> guardband.
>=20
> v2: Use new helper for PSR2/Panel Replay latency.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 138 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
>  3 files changed, 140 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index af4d54672d0d..c542a3110051 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4227,6 +4227,138 @@ static int hsw_compute_linetime_wm(struct
> intel_atomic_state *state,
>  	return 0;
>  }
>=20
> +static int
> +cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_atomic_state *state =3D
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +	const struct intel_cdclk_state *cdclk_state;
> +
> +	cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(cdclk_state)) {
> +		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
> +		return 1;
> +	}
> +
> +	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
> +				   2 * intel_cdclk_logical(cdclk_state)));
> +}
> +
> +static int
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int
> +linetime) {
> +	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
> +	u32 dsc_prefill_latency =3D 0;
> +
> +	if (!crtc_state->dsc.compression_enable ||
> +	    !num_scaler_users ||
> +	    num_scaler_users > crtc->num_scalers ||
> +	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
> +		return dsc_prefill_latency;
> +
> +	for (int i =3D 0; i < num_scaler_users; i++) {
> +		hscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].hscale, 1000) >> 16);
> +		vscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].vscale, 1000) >> 16);
> +	}
> +
> +	dsc_prefill_latency =3D
> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						  chroma_downscaling_factor,
> +
> cdclk_prefill_adjustment(crtc_state),
> +						  linetime);
> +
> +	return dsc_prefill_latency;
> +}
> +
> +static int
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int
> +linetime) {
> +	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> +	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> +	u64 hscale_k =3D 1000, vscale_k =3D 1000;
> +	int scaler_prefill_latency =3D 0;
> +
> +	if (!num_scaler_users)
> +		return scaler_prefill_latency;
> +
> +	if (num_scaler_users > 1) {
> +		hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].hscale, 1000) >> 16);
> +		vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].vscale, 1000) >> 16);
> +	}
> +
> +	scaler_prefill_latency =3D
> +		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						     chroma_downscaling_factor,
> +
> cdclk_prefill_adjustment(crtc_state),
> +						     linetime);
> +
> +	return scaler_prefill_latency;
> +}
> +
> +static int intel_crtc_check_guardband(struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> +	int dsc_prefill_time =3D 0;
> +	int scaler_prefill_time;
> +	int wm0_prefill_time;
> +	int pkgc_max_latency;
> +	int psr2_pr_latency;
> +	int min_guardband;
> +	int guardband_us;
> +	int sagv_latency;
> +	int linetime_us;
> +	int sdp_latency;
> +	int pm_delay;
> +
> +	if (!crtc_state->vrr.enable && !intel_vrr_always_use_vrr_tg(display))
> +		return 0;
> +
> +	if (!adjusted_mode->crtc_clock)
> +		return 0;
> +
> +	linetime_us =3D DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
> +				   adjusted_mode->crtc_clock);
> +
> +	pkgc_max_latency =3D skl_watermark_max_latency(display, 1);
> +	sagv_latency =3D display->sagv.block_time_us;
> +
> +	wm0_prefill_time =3D skl_max_wm0_lines(crtc_state) * linetime_us + 20;

Just a suggestion, Similar to other static functions created, this also can=
 be separated out as a separate static function.=20

> +
> +	scaler_prefill_time =3D scaler_prefill_latency(crtc_state, linetime_us)=
;
> +
> +	if (crtc_state->dsc.compression_enable)
> +		dsc_prefill_time =3D dsc_prefill_latency(crtc_state, linetime_us);

This is redundant check, as this is already been checked as part of dsc_pre=
fill_latency function and returned gracefully
> +
> +	pm_delay =3D crtc_state->framestart_delay +
> +		   max(sagv_latency, pkgc_max_latency) +
> +		   wm0_prefill_time +
> +		   scaler_prefill_time +
> +		   dsc_prefill_time;
> +
> +	psr2_pr_latency =3D
> intel_alpm_compute_max_link_wake_latency(crtc_state, false);
> +	sdp_latency =3D intel_dp_compute_sdp_latency(crtc_state, false);
> +
> +	guardband_us =3D max(sdp_latency, psr2_pr_latency);
> +	guardband_us =3D max(guardband_us, pm_delay);
> +	min_guardband =3D DIV_ROUND_UP(guardband_us, linetime_us);
> +
> +	if (crtc_state->vrr.guardband < min_guardband) {
> +		drm_dbg_kms(display->drm, "vrr.guardband %d < min
> guardband %d\n",
> +			    crtc_state->vrr.guardband, min_guardband);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> @@ -4289,6 +4421,12 @@ static int intel_crtc_atomic_check(struct
> intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>=20
> +	if (HAS_VRR(display) && intel_vrr_possible(crtc_state)) {
> +		ret =3D intel_crtc_check_guardband(crtc_state);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	return 0;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 4474f987de06..5ffa76cb1633 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2249,7 +2249,7 @@ skl_is_vblank_too_short(const struct intel_crtc_sta=
te
> *crtc_state,
>  		adjusted_mode->crtc_vtotal - adjusted_mode-
> >crtc_vblank_start;  }
>=20
> -static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum plane_id plane_id;
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h
> b/drivers/gpu/drm/i915/display/skl_watermark.h
> index 62790816f030..8706c2010ebe 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -78,6 +78,7 @@ void intel_dbuf_mbus_post_ddb_update(struct
> intel_atomic_state *state);  void intel_program_dpkgc_latency(struct
> intel_atomic_state *state);
>=20
>  bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state);
> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state);
>=20
>  #endif /* __SKL_WATERMARK_H__ */
>=20
> --
> 2.45.2


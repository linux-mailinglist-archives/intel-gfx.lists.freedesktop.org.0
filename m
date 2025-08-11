Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E70EFB1FE99
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 07:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6372010E089;
	Mon, 11 Aug 2025 05:33:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKqRn4mc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60FB410E089;
 Mon, 11 Aug 2025 05:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754890409; x=1786426409;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+OITB+g7gNNTv1zTOfc2NKJD6iSfEbNyQPOwIH+UBq4=;
 b=PKqRn4mch/ohv/v2jiqxvNaKQWN0LwojTU/uR2SxpGnFBcU2+RXUp5iY
 t0wmMCgdJ503TZvbBxPGCb4rPHn4rCdguaL1sQgRmKgUQ2cT5Ut42JzPc
 FYWk8piIZvyHjovTxnQAkPUg11xKS2Y7Q9DwLa7SKNP/fFPuyJWQDQDQs
 U8vIiMsbrbQ4w9gHtzLBztEbJ1daCIBnn66OaE2fnDC/XsBrZ3hpZY7Dy
 r3mCjuDQ9lT1iUFa2y0CQ8jG7adrRgCggM89Hs7+2+/nq+7egi9uvPQK2
 xJPUcV/mm+lXPmIYtVl4RtRG59VvG3f4fNUcpCqxadYkr7DTB/CBLm/jt A==;
X-CSE-ConnectionGUID: Djbxc2hGSlGA2eqcLAxWIw==
X-CSE-MsgGUID: I5AQ1ivKTm+7+mRSEngnMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57008738"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="57008738"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2025 22:33:28 -0700
X-CSE-ConnectionGUID: DLavMFqfSE2UHXKtUlt2kQ==
X-CSE-MsgGUID: +ITR49ifQ9SgXDb16tMrXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="170047767"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2025 22:33:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 10 Aug 2025 22:33:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sun, 10 Aug 2025 22:33:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.89) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 10 Aug 2025 22:33:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NyOKrRfFQ+VX4AZDsAzYFFDHk6Vc5l6Daz94fIB4qVNYuL56lLqb5JMzsUM2GUK7XKU2xVC0WlIvh50i+8NK5JMsqcC2oiHXkamu7b/YrQ4qNVrcUh3Eg2HyPR1WA77QBvtpLj4JMZQmLlQ1ZDPasYlrcTuBbEtGpg7yBYxdLtCO3BcVTtmYpuMzuJ1FsTwOyYuzkCz1aiD5147vkr996rQtXN3tIvIh7go4GA5j0OfZulLauPAwBNWjKQpaCU1extHnFY1jttktSA/uDbaxyA6FDTLdpT9MHbYYW5OzPL9K6NmNsoxMgx2rBBP/6bAi1VYMQ6EdraK1yoZOv4DqYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K53/9Q1qfw77jkrFNlYt4oYFlrkkfzCv2NmxRy1NT1A=;
 b=LGgqUZjUPYJ1TjC59GRUjAQnrvrJNGGCD/HUEDo9tfcSu0SCkOM+xLqW471U6nOySoLsnwS8nKEHbUCx/rvGO4esJ2Szn2Y6XSWd8yfHHQt0vX1Yyr0CbibsElKpgRJUsWoAlkFURQqUWEKNQiO+QWObH+WPDNO5xiqqnTi6XfouIMcArbbJBYSxYvcPSv4O8R7DA4zKV41yI2jHpEagR5Ir0SNOp3OXy6Wt84yYzQaLAPESHkh9wRLzsmuN5CaN6wMb4W3mXbcRagYrUptOZ9N10ubF8HS3fW8baAUYTV7jzrPJSMJKuNpD76Nu3YII4MMNzRpZITpgjnW2SwGK4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 LV3PR11MB8766.namprd11.prod.outlook.com (2603:10b6:408:212::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 05:33:09 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 05:33:08 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 1/2] drm/i915/dp: Refactor intel_dp_in_hdr_mode() for
 broader reuse
Thread-Topic: [PATCH 1/2] drm/i915/dp: Refactor intel_dp_in_hdr_mode() for
 broader reuse
Thread-Index: AQHcARkNK/uyleSKtESfdpTcENDr27RdAG+A
Date: Mon, 11 Aug 2025 05:33:08 +0000
Message-ID: <DM4PR11MB6360662BB81EC32CE05986F8F428A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250730055523.2214966-1-chaitanya.kumar.borah@intel.com>
 <20250730055523.2214966-2-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250730055523.2214966-2-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|LV3PR11MB8766:EE_
x-ms-office365-filtering-correlation-id: 956a6efc-09d8-4996-5800-08ddd8988e39
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?KVa7hf1rHeLIPNyZHAHdIJAfI8+58EtVwW5eXTrTpRYWeTPbezt87qHpcqjB?=
 =?us-ascii?Q?nPiinDfXyE4s4zB3dPYkwfBreuDCqsMLyJpLBwOXp1fpvAKFjXglDw+poK0u?=
 =?us-ascii?Q?hbtk+6Mtg9jO537BYjU5r1ZjBveqeiPf+J6TuH5DfqSfFKc6+Ho/Gd+5rH+/?=
 =?us-ascii?Q?3Va1JGahWBhwsJJmRrAheX+ankxh2vstTgovzh0xE9e4WDGmw6VOyInC5qto?=
 =?us-ascii?Q?mNlvCv8cGUDVbSCJsNiKdmQ9lR2PW4nnBmj9R/rVkv0q6iO5NTBBHsnvz69v?=
 =?us-ascii?Q?GP3W9jiLXGv4sQiLW+TzDob6rI1nOUQwyzkeFAjkvBPkG6jksjwQCGbCHSI4?=
 =?us-ascii?Q?+6KiU7nLCs96a1fkPveSUgt7OVek5LBne/yqXjuxG44SBII2JForbi7MFD7J?=
 =?us-ascii?Q?WGuDk4ohk6xGEw7TjnQhWPd5qIxnKmg8c3mmrLAAF8aT9fDlyw/kKdYxn2aK?=
 =?us-ascii?Q?oq64wQqgUyG0gh55ecrJmKxE/1gjI7sLN/VZnVHcVNQ9Kz99CBuwJsy2kaYj?=
 =?us-ascii?Q?kKS8LWBVh17qi6mPSBWTWKmJFZy/BFKY5NG8h7wrj23/LxYX0YwVKUJBLXuI?=
 =?us-ascii?Q?T6EKBArWzHfV9ae4cb6eRMRUBQf8RkayLA5+caSMboiYi5wjQwVugpbkUHF+?=
 =?us-ascii?Q?DuN5EoBFK7noTJY4F9n91W14ngl/Lff6CXl2XNEzY+2nH0qSsklRFfi5UwEs?=
 =?us-ascii?Q?dJ8uYMAim2VB31lq4NqUgUNa2Yq8uB8IdQcSzWehQOeoS+VO8kstXQ/jryQd?=
 =?us-ascii?Q?vb2MNGiQvNCbmYIDc0Lvf1+Ni+E5T6EaR71nPjWQ/GRTfrnRUM3Vhn8qqi5B?=
 =?us-ascii?Q?Fba/MzRDdR4dnBmGL3l1PEcIXWigSHKg21Wtx50CZmY01HJkcoefS4MEETee?=
 =?us-ascii?Q?n9fnSPmS8V8NpXU3PJ0ge7AQnpcTY3c1azABi5ikUv5oVu+c2xRWLBg0l2iC?=
 =?us-ascii?Q?Acs204Qm5ae2YLlbrpHUpOyqJfJvuGMEi+zoSRstGzQI9lLvdZmgzHWQr8ZC?=
 =?us-ascii?Q?HROcg847sbp6yx6WYiTp/knwxHSR1GeG2sqFlrEXOoQ4AADOQg1twnciQgoB?=
 =?us-ascii?Q?wm/7AyCVz69yvqhIPG6JefPM06UwXUIVvOTl5ttBvQEwtbHhDopg8rYM02Nh?=
 =?us-ascii?Q?Q1S09VgrziQI/E99/80IXRezXP2ZYUjmNvlrV2a5y/0llIZG3bWyjG/DQpPx?=
 =?us-ascii?Q?u+g8hlYBG7rAZILUUerIP4zbXf26kntaQGM0QxFzpV2Fb2V2n0ndnEBFm5Ya?=
 =?us-ascii?Q?+/ItfmkflGreEj1onuAgrQn9sRj5sVprUQllhVVj791PqM96m3SWs2dYUEQO?=
 =?us-ascii?Q?LWiMugCM+dEpTZ9HcZTmQ7FzOuZRXalx3JVI9yndzMu3qByxCXTswGNK2Aaj?=
 =?us-ascii?Q?e0OPOtFq8N80Je1LmZ2uC9Gvn3zBgGYySc9FzwqiEuTCOP1J+G4n/NE4zcfA?=
 =?us-ascii?Q?HSVck+omze8f+sGeXg7OtABEf+t5cWCNiuITRXIsil80yNZbKOjGHLHakUTx?=
 =?us-ascii?Q?kJilsLwaCjYVD0E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DgMlM+hsmE1BG6vYO1vWDNkGQ55ed7di8Ycsnk6UsKMZkTyxDJLqxRkBmVI4?=
 =?us-ascii?Q?Mw91OeYVZRJ7xhOtTZodWoaH9an0LPQOkgVL6ManwJ9KSGFJ/9geuJhMC3mt?=
 =?us-ascii?Q?s9+pc+5FKcCk4H+7akQ8IhyVC4kwxca58EUYAioU76gzUtNRgs+7OlNl5E2y?=
 =?us-ascii?Q?Y8y5b1cVqW9YxqUoU7z1evWE4g3qPgER0ou2VQSI489YMs5N6Lqkazveab4D?=
 =?us-ascii?Q?8VQoHvTstqbflE1/6sWJ8zFKsJHuvtgffUpih+Q+v8JXUITjYCkwkehmP5D1?=
 =?us-ascii?Q?0to1I+/OcgpNbUiXHcWNbgGgC6Vu+ivI0C0Domx/m+6fL7iwECqyGUO/u2Fo?=
 =?us-ascii?Q?J42d8cwLkOhZQnWBJx2L1dc6pev5AgzyptocWRfyjaOduGuZNxCpwZv1dlsn?=
 =?us-ascii?Q?vjypgy309EVU2TIlIU4Ijpb1CYLHHf5Ljonjy5x/HUmk1+RL06zEBUXOg67c?=
 =?us-ascii?Q?owjRPI+6ol9hq0ingwMkyoEZ0GWaSNl8Y5Gc12cPPhFK23yfrMt1f5JZoo1f?=
 =?us-ascii?Q?ExNzf3TqAY18KPmQAAV86s5125tFkw2NOjt9zE9QIF4FLN653YRRR1yiKFMS?=
 =?us-ascii?Q?I/O3x+SV5KKjbXFbkYWxiBpvQsUBQeUK9vqsjeNYFlgqWnVzTbYJeXZfiBjB?=
 =?us-ascii?Q?44QLsytXhgf7gmxRMLzYVe8LMtV3SjBPTfMhLOI29JDbNdr2FdIogqFI0hW/?=
 =?us-ascii?Q?1hSS1oAINKTZywRR//EiugIhNR1i2gVFuwkRBev8S1lUBAUAqyyjLwCrSugW?=
 =?us-ascii?Q?dC3euUgnP3rWhbBdqmQUW5utP25vuepnT7GMWJsZutmg31f8qaiS7PA0cqCn?=
 =?us-ascii?Q?6I3pCkPUe7CpWGurTcSgLsb4P1UHxhMsOaF9C65/MbJxQIQIYuadWiYqiNAJ?=
 =?us-ascii?Q?Y2lqj0CU6gVM392+Y2SfwyaKleSx5OFc6WCWE3/IA5lOhlEc5F82pnm3/AQq?=
 =?us-ascii?Q?RDGmDlvO73ate9bGirK3F/SrUmvty01nks0wpan+Fg8I65BUJjebFYPjTdVZ?=
 =?us-ascii?Q?uWcX+bAV3D9e7529FhcfFwaKSff+wzTLAG7y1jPWI38jZgi22fBCOphNXHhJ?=
 =?us-ascii?Q?Q7hOadcDBKSDuMI+YxfhJFqe0xbEJTX5a4f/uJHIBIesnj2RefYGJ30oxvjE?=
 =?us-ascii?Q?hovArUKc0iEa/quc/6lfbGr2LcxVewl6xch8Cd57gzvLHYwVXV/joGtW8OFz?=
 =?us-ascii?Q?bOaCFhw3MgIdve/DV8MyCuFySlO0dspMXZHHhEu7zn+c5oblGc7XbMH7zJR0?=
 =?us-ascii?Q?wXWWvIPnntJcz07430oPevzTUo3RFaapKmyqjAK4XG1lSh6ZW69WJGNbZGNh?=
 =?us-ascii?Q?fwxOFcXqUdbXKpYGMRIKenBOv4mD7YlzE2J1rkacUfpVqFjOpWfCiPvP7aM6?=
 =?us-ascii?Q?c3l9FpyQ1K34/uOE5+az3EOR2X8lPstzlPwbRotRAuBWETI31SweFIuRqiYr?=
 =?us-ascii?Q?6MBo3A8Irx08/sfseNMHdDZLQrprlEoHC+5PSZg4JI31dKdiPTOT6CQaXkgT?=
 =?us-ascii?Q?3TZ7kR4ncE716XdAy7VVJ3HbN77qnuXmJN4N6ELXJTdr+/deVQQxiMolgKha?=
 =?us-ascii?Q?LzWXHNYndQDhb+xcfEY46TieZcITAt6ooCIBb/Hk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 956a6efc-09d8-4996-5800-08ddd8988e39
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2025 05:33:08.9186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P1meUwbdUHp3EWIMgzNzZUTgWzdAmay+wvk6jUVDu3jQSVqFNMSVBKFCqjanuOtGFiI/d43Tc6c+kPybv93UQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8766
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Wednesday, July 30, 2025 11:25 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; ville.syrjala@linux.intel.com; Shan=
kar,
> Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH 1/2] drm/i915/dp: Refactor intel_dp_in_hdr_mode() for bro=
ader
> reuse
>=20
> The intel_dp_in_hdr_mode() helper was previously defined in
> intel_dp_aux_backlight.c but is generally useful beyond that context. Mov=
e the
> function to intel_dp.c and declare it in intel_dp.h to make it accessible=
 to other DP-
> related code paths that need to check HDR metadata state.
>=20
> This is a pure refactor with no functional change and prepares for a foll=
ow-up
> patch that uses this helper.

Change Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c             | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h             |  1 +
>  .../gpu/drm/i915/display/intel_dp_aux_backlight.c   | 13 -------------
>  3 files changed, 14 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54d88f24b689..59d814abd3a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2917,6 +2917,19 @@ static void intel_dp_compute_vsc_sdp(struct intel_=
dp
> *intel_dp,
>  	}
>  }
>=20
> +bool
> +intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state) {
> +	struct hdr_output_metadata *hdr_metadata;
> +
> +	if (!conn_state->hdr_output_metadata)
> +		return false;
> +
> +	hdr_metadata =3D conn_state->hdr_output_metadata->data;
> +
> +	return hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> +HDMI_EOTF_SMPTE_ST2084; }
> +
>  static void
>  intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
>  					    struct intel_crtc_state *crtc_state, diff -
> -git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 0657f5681196..5def589e3c0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_sta=
te
> *crtc_state,
>=20
>  int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector); =
 void
> intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external=
);
> +bool intel_dp_in_hdr_mode(const struct drm_connector_state
> +*conn_state);
>=20
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 41228478b21c..12084a542fc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -225,19 +225,6 @@ intel_dp_aux_hdr_set_aux_backlight(const struct
> drm_connector_state *conn_state,
>  			connector->base.base.id, connector->base.name);  }
>=20
> -static bool
> -intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state) -{
> -	struct hdr_output_metadata *hdr_metadata;
> -
> -	if (!conn_state->hdr_output_metadata)
> -		return false;
> -
> -	hdr_metadata =3D conn_state->hdr_output_metadata->data;
> -
> -	return hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> HDMI_EOTF_SMPTE_ST2084;
> -}
> -
>  static void
>  intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_st=
ate,
> u32 level)  {
> --
> 2.25.1


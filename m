Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C2D8C3FB6
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 13:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD1A10E664;
	Mon, 13 May 2024 11:20:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nBcU4UcN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECCA010E2F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 11:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715599245; x=1747135245;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BWJIZXdJfBJjj+yeMvGVHeQPgx5H1N5lhDT+tl1Y6eI=;
 b=nBcU4UcNDiyJeIOf/tdBj0ijabfvSYpwNjxZw2BLvaeOaVOj/VG356Ov
 0leSe/BWcAxd7a7cRnFertnDp6c+No+ldjVa+O+5ghZOywCPkjaRTKnhR
 qE/b+3eXquNZPX2fh8JirgjPB69tU9lpdt2jRQceUS1+Ju8bdy+zgdErZ
 hW4yfz80JBuyhFmnNPKX1OrbGv8rV6ozxiQFLIN6QzMO5X19POHbK+10m
 Q0MkPGSuqOPmHO3WpisbzPO3F0dGuh6iiUonZWgLeDRK9wG4Dd4+D4qpr
 f0LxIiPksZEpIRxRJ5B9SG+9Fp/iTmEsZjDtzyGM50EtNZf2fXy3sd4W4 Q==;
X-CSE-ConnectionGUID: 50zr+5P/SuS5kvAxaf1YKQ==
X-CSE-MsgGUID: 4PsszwK8QcaNNtMRH9dElw==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="11746745"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="11746745"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:20:44 -0700
X-CSE-ConnectionGUID: q1RGMAy/QnmCgqDO03cKSg==
X-CSE-MsgGUID: MO/wqeVuR8WOIhrQ2u8Epw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30145280"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 May 2024 04:20:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 04:20:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 04:20:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 13 May 2024 04:20:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 13 May 2024 04:20:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cgEfTBVDAQROYb73qmaX8ebC/shvkudVAmZYAEp8aobWSs/fvb06My/cf/oCBpRDZLKYVA0rlduLzyFXXYcWZNYIplKJsOSkG6disuBfQupItNcBmEihE8UY1bAUrMYj9Qj+baGu/GE6yQ1HqSrMoZsi40yp34J0hJWc39khDRS1WrO6FOM5jUXdpjXfzFBV7nb5Re95vBkSbTIw9Dcf5O1CX//IFykjdEkDBJETjy+XHuCmiiafkpKJGhTy+jVw3MphAqTk16/aZyLYY7iiYhNaExBBJqsXzOGm+GQtW3O8Unpt+XlOiXgU9iG4/fcATGKo8F7cq8KQuBuYFJHxSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/LoluPMf85CpXjz1o8v8SzY4poTLclAiUsgmQ0qJHlU=;
 b=E/+e1Sv+KDgb+5C4dExxUaIfHkf5fmoXhRYsN+Zf4S6RVFsfhTzdbb2qu/xtaPokoUCGUhcqskIUKXxWRGD/KFuKDsd9GrzeaoISLT2G1WkERddpyfFYwdlsmasepGab4yR8smi2hqiIMIpB54ZEN5zt+Q8MmJKknTjYSA6b/rvgRs69/G2xtqxIRfbTLeiP2Sru6hLrQ74oTwA9/8dkxS4eI+AJzGXhOSrlceM2Jk88RP9RtZVPPKvWu7yvP/TasgH032G+jA4fn/QZgsrEANLd97gC4mC8kRuAA/2U46IF0KLIvySohLXyWxz+dysAZ06CNqbNEtTesVGKQzwMOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Mon, 13 May
 2024 11:20:40 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637%7]) with mapi id 15.20.7544.052; Mon, 13 May 2024
 11:20:40 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v8 2/7] drm/i915: Add Enable/Disable for CMRR based on VRR
 state
Thread-Topic: [PATCH v8 2/7] drm/i915: Add Enable/Disable for CMRR based on
 VRR state
Thread-Index: AQHaoeeS9m9fk4PZMU6LqywxJgIerrGU+FeQ
Date: Mon, 13 May 2024 11:20:40 +0000
Message-ID: <IA0PR11MB73074B7A55CCB06C1E3BDB48BAE22@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240509075833.1858363-3-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240509075833.1858363-3-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA2PR11MB5114:EE_
x-ms-office365-filtering-correlation-id: 8fa285d6-0bc7-4f98-4e36-08dc733eb8a5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?ZLE1ag7W3U66gHEDKKDASz4+5pLghER0WHEVyMa1jGufI9WqrAhP7/ZNumuM?=
 =?us-ascii?Q?GjRQN3KRz7tCrVxuMlEGRFFXHnbr8LJnezwy+EpX+63quq6/qmLUvWtXh4Mw?=
 =?us-ascii?Q?wSKxCitEoQubrqSgQgMF60Qgo1guuGJqCZMtZ3mJLV+/2umhauUVc2mtK6wW?=
 =?us-ascii?Q?T3Vw0//A6eqDRYIUF4d6QrMc5t/oLWbMEP0qvzsNEfQTCuqOr6P8ohaxvOxX?=
 =?us-ascii?Q?4pwbsKD/0nfD5V2pZhUFhNPDJ/LWmzvJ99itg1E4VoxvMMnTeprxxPrrseF0?=
 =?us-ascii?Q?KO/P9O41VXdC7pl6iCazZxyzHU+W5K3LE/h28879eVWqlZBF/9zekRMn0dWV?=
 =?us-ascii?Q?Bqd7afL1UVEmnFktoPpHtqDCSBO9/B7s5nOYcZnz+KigZtx+v9WgS6yaBmgP?=
 =?us-ascii?Q?VEkuGjOh/bokoATAkBOEaIUR1obw77AtEJkBgYi0s7KS/B23hrlZOFSyCQ68?=
 =?us-ascii?Q?nqcptUAQBm9Dh7eEpsCz4JgTms1nV6r85hmejN3mjaubQDvc+mSST/N888is?=
 =?us-ascii?Q?cVZxkstmRS50JW/q+40SJ9uBo5qdpDPNI2KkZhu1/rLsWqCAVad/UOcvnyB+?=
 =?us-ascii?Q?in2+gO/BI3pea7hkN+HC4IF832yoIVeO+Jbz4Y3djovUQb4itDdGhpigsREN?=
 =?us-ascii?Q?56ZVI1sdCqUY6IrhUfNMRZJCD0EnFgl9e9oN/JKkGcjzV2NEoQyg3Ow62DmO?=
 =?us-ascii?Q?aewkmwBcOZz7FJfzgxXEi+cJpca0N0Bvwz96toMrADzLW072oigRdoLDL9O3?=
 =?us-ascii?Q?aMFBkWknk7pFHIyv4SI2Hm4Tnp3GtOzEbzV7jW921+xiu3kMjztkxDqiGrAg?=
 =?us-ascii?Q?AmcYR/GtfFYjj8763AwU/CT6qIfrWxOaZrbqw3pQJQq0SrS5EvGmvVDF7COP?=
 =?us-ascii?Q?eD8rSemVKTHF3AfqAL73W5rOyCotu5C0XYP5Xft4UxDer7ihAGba7bvvhOe7?=
 =?us-ascii?Q?ldfPfGbSNs+piVvT3yFQcOp+Qn/fV5HUXqHSmjWdwGTrQefsbb5f+yFuBf/a?=
 =?us-ascii?Q?58fuaRFGkn8xegFFnKjs3jeopwQrafN9d331UEBgVv4oOIC3tsy6PHwc6wet?=
 =?us-ascii?Q?BSHCoMWsW/wMsUosDcJ7CjIfudXaS7Rcgb4LQ3lr7Ep6cN7rJW98XM1RtcoG?=
 =?us-ascii?Q?Aev0uqqsrA06xyylSTLDg3XgCl9e2+xYLwMJcRKdgl6bR2KFtwUIuB6Shick?=
 =?us-ascii?Q?Hczb/wt+NB70ftRqL1WcTdMe56zrFtv22S8Sdh6HYhCeVp8cWucgW4QogJlx?=
 =?us-ascii?Q?58yIlp/yhTDUQZe744kyOI0fI8QzDNc5EULB4YvL9w0sqRok8Oln31Vt2Uo/?=
 =?us-ascii?Q?+LeFYWmb9OcHuV5w+YnIz0Hi9SaetfJYkfNgWHy0YFqcBw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AdBIfB1YDBSb4dtcLrUBCwDkEqgdI78tfwM7Vnnr+jPIwXBJ0Hkv6VrgELQg?=
 =?us-ascii?Q?50TYzvQdzR091mfdQ+o9NksapDeYWq3NosUIPoVGEEbfvlLgnoRvsjDvlHxa?=
 =?us-ascii?Q?AIr6MzhJLKlC2MlasXMKtR5KaW33XDORUWwmTgPMMPJcpKzXuHzVbFBmiTSD?=
 =?us-ascii?Q?5S3HdwWmK+NhExp4Ar0aTU1i2pBlTB6cfcrjwRn0SuG/JYa5szd+2ePlKLt4?=
 =?us-ascii?Q?pXXXYv813ML4Kn1dyaOnz5N22JND933d/uLRGoOChVUidMhgzbo1PMuxy1o6?=
 =?us-ascii?Q?OcnmYGg4sp1JtxKp7RLPpmPVH5YL7pQXOcEd6KFGBHoFbV+NiBE9sAQSdpqr?=
 =?us-ascii?Q?5nCABoYkUVFUjigeV5w6S6wmop1LOG1g0EWShnisWmcWt430BqDh+FaZ8Im/?=
 =?us-ascii?Q?ozDfW66PLM1V3K9t88fMPXxcsakAxhsocKZbXW/zfjFOC0Pz2TSXomH64mwA?=
 =?us-ascii?Q?cIdQbniZmGaYq2m83aefMrJRECu5VGHT6+LacfqGdPwuo3KUtPRPKyfcIE5T?=
 =?us-ascii?Q?Or8W8sdqkdt1gepjVlRmcAsE0i6jmfZCALyHRmoQOtUF/2IorokMEhnqepso?=
 =?us-ascii?Q?qURjg6eUxg3OSVl1o44aNlsIeZJWOzXjl6lSnTnRl4eapmK0lXnng2qznLKV?=
 =?us-ascii?Q?TZBL7Sl/hsnSNsKLp//CYdEPeOnX3L+/sH9AbQUwTxGjThTU3k0OUaka6BGx?=
 =?us-ascii?Q?ZAJzgOP/hCPZBd8iClKXO4VI1hdM1TPaOlDz4T+Bqp7hAQyMUn0SFZaZvm7V?=
 =?us-ascii?Q?PuyUW8XNtcOzjbyqLffVbIktrDSFLsMuT4Nq8NRJvyu0kvcUFmXXQYH1FKzh?=
 =?us-ascii?Q?isOmy7/LRHR3bo478nMiuez9MScpQUgKdgWpi2P5W/YNhxIwXp5TZiAp89vP?=
 =?us-ascii?Q?6J2TDlQGEr0JlsRvKjiFEXT2dpgznFtwLi4UvevsHDB6DSiXAC+RsFyTgay3?=
 =?us-ascii?Q?yXp36TiE6TViqy9WJGl5+p9MpygitwIxFpp4Wmbor+zfwo9oNbRiIW9b8Kok?=
 =?us-ascii?Q?RgBC8UPbMcd5aJjjvn2cFSucL6LcX/O+rguT5pp9dRvXeOiHpyyZauEDIzmf?=
 =?us-ascii?Q?6Szdo6zlzlmBl1eNxO3cNcvDeSFAC1L9IHNoBNRDr9UZCeACS3rpxh20kp90?=
 =?us-ascii?Q?zdAprRFCfC5lgwwnJsDhIB4alU4JujrlpiL/OsNgXAMMSJwrdZvIYZirUMXU?=
 =?us-ascii?Q?yErcTAfnTF7wRJLH1Dni4SMtDDubW9MAyqXh4icYpgEf07pgC90Sezm/8Xqn?=
 =?us-ascii?Q?C3l3K0W5mBBYo6JtyZ5127HMdpOQirzx6aTcqiVBur2wI4klnq2Wwh5AassO?=
 =?us-ascii?Q?x9HSUn0l53rVby1tstV/B9hy3aHaLm+o04HIL39tiPP+xZi+VbHhR1TDMqaa?=
 =?us-ascii?Q?EVhO1pU4FM85hA+AQKeGtOnsnmJvXMAMppP2EaQw5fNJlXPDvG7LVA7aAZ9w?=
 =?us-ascii?Q?9d00rm5Cl57fdhEpN0KRov7hODxMNpur7K1cPLv5Qd+pSef1BbJSqAH3GMFF?=
 =?us-ascii?Q?QWa9vUsdOwkG8rLh2JVdlCJeJJSZj5gOTrSygHCLKnTUq7DUitJuqZb7dAPn?=
 =?us-ascii?Q?JhlhzN8zIDWTPZ3/OQsxpAPI49XWTYjqrd230mgkyue/pLP0wZbOtxLrD3RN?=
 =?us-ascii?Q?WbjBw0sdTQmgb8gZIQCcalLem+r+rP6VQYH1ZeuswQvn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fa285d6-0bc7-4f98-4e36-08dc733eb8a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2024 11:20:40.2234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lfa5TJBu+sVVR0qjzmAOUXQiPh+e4g5pFeyzv0HK7wvntYCk526RLevL1a2mRZmHQy0DO3V8P1AOPfvzcLTJag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5114
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Thursday, May 9, 2024 1:28 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: [PATCH v8 2/7] drm/i915: Add Enable/Disable for CMRR based on VR=
R
> state
>=20
> Add CMRR/Fixed Average Vtotal mode enable and disable functions based on
> change in VRR mode of operation.
> When Adaptive Sync Vtotal is enabled, Fixed Average Vtotal mode is disabl=
ed
> and vice versa. With this commit setting the stage for subsequent CMRR
> enablement.
>=20
> --v2:
> - Check pipe active state in cmrr enabling. [Jani]
> - Remove usage of bitwise OR on booleans. [Jani]
> - Revert unrelated changes. [Jani]
> - Update intel_vrr_enable, vrr and cmrr enable conditions. [Jani]
> - Simplify whole if-ladder in intel_vrr_enable. [Jani]
> - Revert patch restructuring mistakes in intel_vrr_get_config. [Jani]
>=20
> --v3:
> - Check pipe active state in cmrr disabling.[Jani]
> - Correct messed up condition in intel_vrr_enable. [Jani]
>=20
> --v4:
> - Removing RFC tag.
>=20
> --v5:
> - CMRR handling in co-existatnce of LRR and DRRS.
>=20
> --v7:
> - Rebase on top of AS SDP merge.
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 37 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 38 ++++++++++++--------
>  2 files changed, 56 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 258a78447fba..4a5318ab017d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1020,6 +1020,18 @@ static bool vrr_enabling(const struct
> intel_crtc_state *old_crtc_state,
>  		  vrr_params_changed(old_crtc_state, new_crtc_state)));  }
>=20
Can the below functions be moved from intel_display.c to intel_vrr.c?

Thanks and Regards,
Arun R Murthy
-------------------
> +static bool cmrr_enabling(const struct intel_crtc_state *old_crtc_state,
> +			  const struct intel_crtc_state *new_crtc_state) {
> +	if (!new_crtc_state->hw.active)
> +		return false;
> +
> +	return is_enabling(cmrr.enable, old_crtc_state, new_crtc_state) ||
> +		(new_crtc_state->cmrr.enable &&
> +		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr
> ||
> +		  cmrr_params_changed(old_crtc_state, new_crtc_state))); }
> +
>  static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
>  			  const struct intel_crtc_state *new_crtc_state)  { @@ -
> 1032,6 +1044,18 @@ static bool vrr_disabling(const struct intel_crtc_stat=
e
> *old_crtc_state,
>  		  vrr_params_changed(old_crtc_state, new_crtc_state)));  }
>=20
> +static bool cmrr_disabling(const struct intel_crtc_state *old_crtc_state=
,
> +			   const struct intel_crtc_state *new_crtc_state) {
> +	if (!old_crtc_state->hw.active)
> +		return false;
> +
> +	return is_disabling(cmrr.enable, old_crtc_state, new_crtc_state) ||
> +		(old_crtc_state->cmrr.enable &&
> +		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr
> ||
> +		  cmrr_params_changed(old_crtc_state, new_crtc_state))); }
> +
>  static bool audio_enabling(const struct intel_crtc_state *old_crtc_state=
,
>  			   const struct intel_crtc_state *new_crtc_state)  { @@ -
> 1053,7 +1077,6 @@ static bool audio_disabling(const struct intel_crtc_sta=
te
> *old_crtc_state,
>  		(old_crtc_state->has_audio &&
>  		 memcmp(old_crtc_state->eld, new_crtc_state->eld,
> MAX_ELD_BYTES) !=3D 0);  }
> -
>  #undef is_disabling
>  #undef is_enabling
>=20
> @@ -1175,7 +1198,8 @@ static void intel_pre_plane_update(struct
> intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum pipe pipe =3D crtc->pipe;
>=20
> -	if (vrr_disabling(old_crtc_state, new_crtc_state)) {
> +	if (vrr_disabling(old_crtc_state, new_crtc_state) ||
> +	    cmrr_disabling(old_crtc_state, new_crtc_state)) {
>  		intel_vrr_disable(old_crtc_state);
>  		intel_crtc_update_active_timings(old_crtc_state, false);
>  	}
> @@ -6767,7 +6791,8 @@ static void commit_pipe_post_planes(struct
> intel_atomic_state *state,
>  	    !intel_crtc_needs_modeset(new_crtc_state))
>  		skl_detach_scalers(new_crtc_state);
>=20
> -	if (vrr_enabling(old_crtc_state, new_crtc_state))
> +	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> +	    cmrr_enabling(old_crtc_state, new_crtc_state))
>  		intel_vrr_enable(new_crtc_state);
>  }
>=20
> @@ -6868,9 +6893,11 @@ static void intel_update_crtc(struct
> intel_atomic_state *state,
>  	 * FIXME Should be synchronized with the start of vblank somehow...
>  	 */
>  	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> -	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
> +	    new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
> +	    cmrr_enabling(old_crtc_state, new_crtc_state))
>  		intel_crtc_update_active_timings(new_crtc_state,
> -						 new_crtc_state->vrr.enable);
> +						 new_crtc_state->vrr.enable ||
> +						 new_crtc_state->cmrr.enable);
>=20
>  	/*
>  	 * We usually enable FIFO underrun interrupts as part of the diff --git
> a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 831554ea46b2..83ae56d22b5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -242,7 +242,7 @@ void intel_vrr_send_push(const struct intel_crtc_stat=
e
> *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
> -	if (!crtc_state->vrr.enable)
> +	if (!(crtc_state->vrr.enable || crtc_state->cmrr.enable))
>  		return;
>=20
>  	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), @@ -255,7
> +255,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state
> *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
> -	if (!crtc_state->vrr.enable)
> +	if (!(crtc_state->vrr.enable || crtc_state->cmrr.enable))
>  		return false;
>=20
>  	return intel_de_read(dev_priv, TRANS_PUSH(cpu_transcoder)) &
> TRANS_PUSH_SEND; @@ -266,18 +266,28 @@ void intel_vrr_enable(const
> struct intel_crtc_state *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc-
> >dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
> -	if (!crtc_state->vrr.enable)
> +	if (drm_WARN_ON(&dev_priv->drm, crtc_state->vrr.enable &&
> +			crtc_state->cmrr.enable))
>  		return;
>=20
> -	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder),
> TRANS_PUSH_EN);
> -
> -	if (HAS_AS_SDP(dev_priv))
> -		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
> -			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> -			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
> +	if (crtc_state->vrr.enable) {
> +		intel_de_write(dev_priv,
> +			       TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
> +		if (HAS_AS_SDP(dev_priv))
> +			intel_de_write(dev_priv,
> TRANS_VRR_VSYNC(cpu_transcoder),
> +				       VRR_VSYNC_END(crtc_state-
> >vrr.vsync_end) |
> +				       VRR_VSYNC_START(crtc_state-
> >vrr.vsync_start));
> +		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> +			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +	}
>=20
> -	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> -		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +	if (crtc_state->cmrr.enable) {
> +		intel_de_write(dev_priv,
> +			       TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
> +		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> +			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE
> |
> +			       trans_vrr_ctl(crtc_state));
> +	}
>  }
>=20
>  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state) @@=
 -286,7
> +296,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_=
state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
>=20
> -	if (!old_crtc_state->vrr.enable)
> +	if (!(old_crtc_state->vrr.enable || old_crtc_state->cmrr.enable))
>  		return;
>=20
>  	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), @@ -
> 332,10 +342,10 @@ void intel_vrr_get_config(struct intel_crtc_state
> *crtc_state)
>  		crtc_state->vrr.vmin =3D intel_de_read(dev_priv,
> TRANS_VRR_VMIN(cpu_transcoder)) + 1;
>  	}
>=20
> -	if (crtc_state->vrr.enable) {
> +	if (crtc_state->vrr.enable || crtc_state->cmrr.enable) {
>  		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
>=20
> -		if (HAS_AS_SDP(dev_priv)) {
> +		if (HAS_AS_SDP(dev_priv) && crtc_state->vrr.enable) {
>  			trans_vrr_vsync =3D
>  				intel_de_read(dev_priv,
> TRANS_VRR_VSYNC(cpu_transcoder));
>  			crtc_state->vrr.vsync_start =3D
> --
> 2.25.1


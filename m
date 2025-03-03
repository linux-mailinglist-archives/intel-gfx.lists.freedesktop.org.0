Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2C9A4BB4F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 10:55:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D498510E3B2;
	Mon,  3 Mar 2025 09:55:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fcsA2mEu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 951E210E3B0;
 Mon,  3 Mar 2025 09:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740995735; x=1772531735;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dWvDo6RqDpSuTkZ1Ybp8I9fFyaaqp0C7pBwpP9/+F9s=;
 b=fcsA2mEu3GcpHwC831cHNc2wdahP7Qp2TeIWhXIa0ZWEMDeAmyNYDYYr
 uOFnglkaPYjNNmlV2h8P3OmV9w3GUwYdhymbpw+yqSRFOQ0bwk2PE6sQF
 TvuarnCQxsp5kd9VtMv3yy/0dLG8tFcWftLtbnI92ph1Vk1lkzDHW1HyK
 wTJaOKib7q5LMxwfOSZqY4ZGfcDGfX7KXe/bpUJ6JfYHcq19VkjHQufLQ
 4+Gg5/WbwyxlbSZ7ajBFiB3bcmprCLHJM4J6wJMwRuiP0WHgLw8rkB3vR
 j9jyPrisYU/E6fPMGLktQb4sRJdEcYQHMSTb8iXAZL/ay5NqPKbOr/CGv w==;
X-CSE-ConnectionGUID: 0qQrL1SGS7Cb3cBx2hWy8g==
X-CSE-MsgGUID: 2vNnrjycRm25uppUDGQ0MA==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="44675640"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="44675640"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 01:55:34 -0800
X-CSE-ConnectionGUID: nJoC+t2QSBSm7KxxiCo/eg==
X-CSE-MsgGUID: 0DMvpTPdTRGj/YbyGGD3QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118504823"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 01:55:34 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 3 Mar 2025 01:55:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Mar 2025 01:55:33 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 01:55:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sRpsPLrJfiTPtAP3+1jbnQ8UvPbZ3rD9lSfbqh+7aDSO6X0Zbu2Jc1GDHztr5iyiDMbwn4/7hkWBaUgEAJrBl9778/m4xLJGRmkaqW055DbsqoCAMnRSsaWglK5M0/nSyyooKEZuMUYwANGiz0e6k1gQLaTBfAB6NLGzf1hWpzZojV1BFfyGdhe8VnbUXvVSxjVos5N2AT9BNbOeevrC0VGTh0VmNwh5KUGBCZGsKZreilictIGiexgcFqbrT8Yd/yPqpSreq3LmbGVQQ2iQG1vkfrY+7aMTs5JdX1Y+yGpMx1uA8PsCKmu2/w2eKLMdAeH4d+lU0YytN8D9m+Q3eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CksCQNEfP+YNeA3pJLs2psMxODHV9G8uMP2n45q0kz0=;
 b=FKPJPrVSBsONa2L42UbqnEqTRSD/s4ee7I9PS0Rac/joUeHwv8XGM/RVwRevglPhnRCDBAZWV5xtfVFBRLpW4QoLvx+GNmakChgsa0WWM6WiwgYqEa+d9QWh/lRH+UiBmq2Q47GbhwuX4eHgh3z3xX9QblFpwGeAWVTlk2h/7eDePfpLvTe1MXs5vj0T2LjPSc0wMSNWQYnW6qT/GjwuqChGhctkaCs9YunGLp4An5MZx9xOjetmLiazsDoaF4GAGLfaLsz/CVJKrQgqRZeck1JPsFryEyFgRXLWk/+SZcZENLk7/3GQ7mRNSYdeRMr2XrPfn7tAD7dBLcjNTKnBWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DM4PR11MB7328.namprd11.prod.outlook.com (2603:10b6:8:104::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.26; Mon, 3 Mar
 2025 09:55:31 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%5]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 09:55:30 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>, "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH v9] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Topic: [PATCH v9] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Index: AQHbbJRhRlqxj1o4Q0e9RZY+cTnNGbM6+FKAgCZpULA=
Date: Mon, 3 Mar 2025 09:55:30 +0000
Message-ID: <IA0PR11MB7307437F3882B0B5BAE7B3F1BAC92@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250122-hblank-v9-1-90afda006685@intel.com>
 <Z6U7Z5EWRYzKAUlQ@ideak-desk.fi.intel.com>
In-Reply-To: <Z6U7Z5EWRYzKAUlQ@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DM4PR11MB7328:EE_
x-ms-office365-filtering-correlation-id: fe0b3a96-a2a4-475d-e6d2-08dd5a398897
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|13003099007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OPCLgCvZZ4UhketN8s+UktEBFvuzHG0wl8S55Pm6DLBNlBunMwrDhck83JBk?=
 =?us-ascii?Q?sVXJpebrqFlUCR4rLCywx0JxKn+FLIQGfN80dd7QFAH0s89wSF69zRKJ5exf?=
 =?us-ascii?Q?7ihtZlDKrDTCv0WqZnqPmFxBd2q+jcPHaqzNYXLw7+YWE4ueFwKGjeMy6mKO?=
 =?us-ascii?Q?XT56Nrsm8sj8fvLlqLvqVBcxgxBJKzy6pbhP5qD22uQkaux0KRFT75KqcW4H?=
 =?us-ascii?Q?WrjrytebQsuQ/czSMi6MNIdyDlDNm+ZUN0Jo23SqybxUsuAS0qNqbv7SziD4?=
 =?us-ascii?Q?hQY408sb4wdRWHO9X51AEzNcBimVwITwwwfsZ3s777YG303jkjv2zp7NfNLq?=
 =?us-ascii?Q?v5cOBaSDZa82ZFgiYVcuTiKIz9vXP4HDZ35gaQpSJu4XBgWBCx0w/k6A1wzp?=
 =?us-ascii?Q?WFaEObuXIFnQevCFWviLw6p/3Yq96sTdgMiej6YcUzYe7kusSMCOlQ4Sydy8?=
 =?us-ascii?Q?GM64DxZDHzhwdo3hDszeC1uOuvGgG39HlpNG2Sqp9bOmY+EP+JU9BlYky+XD?=
 =?us-ascii?Q?c0cE6HCuT/bzRW4BfWtcDcGYxip3sbyxaHr4OZX1NbrHacoccee1smzxXzZ/?=
 =?us-ascii?Q?qoxiq2wmVQcboVWrrOjYcr5xqiSuolJC5c78NtqwDzQ1+mn1cQBAIgF4BD0c?=
 =?us-ascii?Q?hWS6ey5E5oWb+lvmqqlgKg64oe+EVp35/Uak3F8NZLlqHyCewRAfo+14x4XG?=
 =?us-ascii?Q?O5Nf7KclUAk2U9d22YZSpoEgq5CFwbmNEN7RUPKBhCsOYORw96+iTZm5ANsh?=
 =?us-ascii?Q?51hHxHGcaHfcYhtDFL3QkFzEgGXvEdaCrQuRSjBKKUlNAb+gfcsjJnW6Pxy9?=
 =?us-ascii?Q?lH3TI0PBVU3k8xivwdx/vRZjpssXig/bbf4FrBSQbJlEb0uDLqdNUkcvWavp?=
 =?us-ascii?Q?4ggbzdZoDHaWtwjTIDzknksofMSYhFXwH/kUA3tsjitvPTuj2OxpkV7rVkAi?=
 =?us-ascii?Q?69JgRNwZxYDG3gY2Vus5Z99Yn1iiwKEX6kh6qcA+S3T5gIUF7kP0z6iPbFre?=
 =?us-ascii?Q?rrmtdnvDhRVyuQNsqT2V7Db2g4SPCLpzRcETtjqohSE3W707zELx5vHtsDJt?=
 =?us-ascii?Q?FUzRLqMfDok1EaI91vyymau6II6uuJ4YTTrKlyv3Zm2NEojqHkt9avSW4/Lh?=
 =?us-ascii?Q?sAFqyryWqKUuBpT3HqByjG3AXXXkU4FjNm2GtWKVUjUCJhhiAgAIBIwCr6al?=
 =?us-ascii?Q?1cMcXho7YVSCrTCMiFsKUmVQOTqZWkoiEJGNLi46B0RGDb7dTMIDvQ6tHLe+?=
 =?us-ascii?Q?5ytwsG/OAFEXstJH/M8Qx/1wSCOVZP/U5gciTKcHlysQpb95ukbyFY95wOq6?=
 =?us-ascii?Q?DaSxptsBfOZgaeCK+k1C0T+eYAUtXBbPXbigxA65cUZ/FIFbQJNsrdoAgPyL?=
 =?us-ascii?Q?K4Zi2bpc6Thjr7CMIucSyF4+58e0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RvZDW4smbwr7N52bD9Ry6gubw7TPEbT1fx4zmyyrKhXmuDkobKzx3lcRwAvZ?=
 =?us-ascii?Q?S0VVAt8bJrw2EWJmSLd8FqOj/RT8dxfTaR7sKb6OVMwy2+PpiqC3CP8iZm++?=
 =?us-ascii?Q?97K5tHQ40yJiybuXw6DzDqp3jO1MIC4i/5huIF1jV23N/KGmPV/KeIT3tfUm?=
 =?us-ascii?Q?la47c8swAjx/uzA0od3L5Vd4XJORat/3SmjrBfG3HpcKs9icraZYn1bFJoIp?=
 =?us-ascii?Q?Wq0ovbPnaN4K0yvvMI0xUKDVHQgwsp2L/14A5y5pPKvPvZS9eXdbahwMcBOH?=
 =?us-ascii?Q?o69CcxyqHgM4d7hf1BmiiMmiPABt+/TEqcIzRRmZ0p8qejeM4yDQYvVOMW9a?=
 =?us-ascii?Q?H7nnYgiqUqttjXupYFZWQNkY/CLF/07MRFR72oBG+5EaSxvSI0B2JngOiM/h?=
 =?us-ascii?Q?3Hp0ASumTTvQ4hjA7TwvPuVo9oCAbCHRxRZx5a8kTbSe/J4JulXeE7MSxJLh?=
 =?us-ascii?Q?cOoQip0IT0gRSGfDqinZR0T1iBpLarCyi+5fAAgvMQwQ1gmi82qXvtbsKTuO?=
 =?us-ascii?Q?Fw6AOhX9xjd6g7TeVVmtP4ud0KJ0ynfgQycTFFiM3dexsirf2epvvNPjIGzZ?=
 =?us-ascii?Q?ySetjovUxWIMagJ9dEP/ZPjP2DN6bDhaJMZXj6s2ha0liD06UtagcWsw1D9k?=
 =?us-ascii?Q?F5W50nXDCAajI07dlzfQnnzf2NrMEOKxKKD6xSAglzXJ5nrL8Pwlzn/mm2OQ?=
 =?us-ascii?Q?utNYinimwXCjUT2ViIbCbRxu2SEj34qQsofDVfHd0+J2x0eoOPjID2dFmrKd?=
 =?us-ascii?Q?TnzwZ3GLO+TnyynLoHpCzF3H4IQyKkOhUvsqCgFR0QU5kkKANmws7f6x2K+l?=
 =?us-ascii?Q?yR10E6qmgW0bZjMdGXUdDCI8AjjFwrDK2e0R1pjWwWab3sRuEz9rgbTxnPba?=
 =?us-ascii?Q?/GAYmWC/x8qKwrvg4fqn1d/gwYbcsVyS/SE10WN6xcbZXJSCv5mOGIfzw6T9?=
 =?us-ascii?Q?zYWluau9Vm8N41PCyVLmq0d/35gs6eng5uEf+e9o7sczwyRYeR1KKKm/I/rV?=
 =?us-ascii?Q?cx4ugm37/iQtoDYRb+QiXpwqxk18Ly6yb0eGfxYfQLRoyNtSchJfSA8Gvocu?=
 =?us-ascii?Q?mkHtYllE+3Wse60pmp8DbPQcg/CfzRpfHkVchjXZiFra5FFnCyLm0jhvzVTL?=
 =?us-ascii?Q?/DfAXK6zA1LQ1+tInePnw+AeV+2FZD0IIhMYBVfkE50APdsBABsXWcimlpXb?=
 =?us-ascii?Q?717WrSl8IbVxn35en98O03+Rpuav7kSAuKH685kpXuc92+rbYbmfrDdPcmQR?=
 =?us-ascii?Q?x5yrHDHAdQxvZB/IdI2De9FXRVEcGKF4ms2gKRiUp1x/7EmkkleO1S7e5PcQ?=
 =?us-ascii?Q?fYv9j67ys3zw71oWf2wk3QEps8ZkiVdFDDHFzGbUuY5XTw52zHlYSBqLD92Z?=
 =?us-ascii?Q?b3ZZ0YI+GFsJT6H25+2V83h+0Pu7KIpZG7Yq9ScJdLBQ/3JNojVvUF6CE+v9?=
 =?us-ascii?Q?R+85cBlyk14xPeow/m8VMxfnqp8ahUSEyd03TSvE19dwisjHOUMfMHj3Wcy4?=
 =?us-ascii?Q?KCnXI6SWYss8FuCw+AF7UVHTw+pn0dOwNz0DBh30rwZ5HCpTLZWE1LMl0JQM?=
 =?us-ascii?Q?2xrI/NbeQiX6OCH0uBi3TucICY9r5vVc2U9XQneF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe0b3a96-a2a4-475d-e6d2-08dd5a398897
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 09:55:30.7576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l1j9CqmdfW+pOT53TCVweIN5svlpysVSO9+iXQaDJBqcbdSK8Q5q2NuMPXD7KWV3+RRPEzQajHRMBKzP7qXplw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7328
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

> Hi,
>=20
> I noticed a few issues in this patch (while fixing the other ones reporte=
d), could
> you please check and follow up on the comments below? Thanks.
>=20
> On Wed, Jan 22, 2025 at 11:25:42AM +0530, Arun R Murthy wrote:
> > Mandate a minimum Hblank symbol cycle count between BlankingStart and
> > BlankingEnd in 8b/10b MST and 128b/132b mode.
> >
> > v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
> > v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
> > v4: use max/min functions, change intel_xx *intel_xx to intel_xx *xx
> >     (Jani)
> >     Limit hblank to 511 and accommodate BS/BE in calculated value
> >     (Srikanth)
> > v5: Some spelling corrections (Suraj)
> > v6: Removed DP2.1 in comment as this is applicable for both DP2.1 and
> >     DP1.4 (Suraj)
> > v7: crtc_state holds the logical values and the register value
> >     computation is moved to mst_enable() (Jani)
> > v8: Limit max hblank to 0x10, disable min_hblank on mst_disable (Jani)
> >
> > Bspec: 74379
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> > Changes in v9:
> > - EDITME: describe what is new in this series revision.
> > - EDITME: use bulletpoints and terse descriptions.
> > - Link to v8:
> > https://lore.kernel.org/r/20250121-hblank-v8-1-b05752f4aa5a@intel.com
> > ---
> >  .../gpu/drm/i915/display/intel_crtc_state_dump.c   |  1 +
> >  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c        | 53
> +++++++++++++++++++++-
> >  drivers/gpu/drm/i915/i915_reg.h                    |  4 ++
> >  4 files changed, 58 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index
> >
> 1fbaa67e2fea77279f120bfb9755a2642550046c..07c671741513f7f263b7b233
> ffec
> > 71998745fd0f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -249,6 +249,7 @@ void intel_crtc_state_dump(const struct
> intel_crtc_state *pipe_config,
> >  			   str_enabled_disabled(pipe_config->has_sel_update),
> >  			   str_enabled_disabled(pipe_config-
> >has_panel_replay),
> >  			   str_enabled_disabled(pipe_config-
> >enable_psr2_sel_fetch));
> > +		drm_printf(&p, "minimum HBlank: %d\n", pipe_config-
> >min_hblank);
> >  	}
> >
> >  	drm_printf(&p, "audio: %i, infoframes: %i, infoframes enabled:
> > 0x%x\n", diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index
> >
> 8271e50e36447a6c97a93ca0d0b83327ff6ee461..f525e266c0232e8c29ba3f84
> d2c8
> > 1612f78e894b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1095,6 +1095,7 @@ struct intel_crtc_state {
> >
> >  	int max_link_bpp_x16;	/* in 1/16 bpp units */
> >  	int pipe_bpp;		/* in 1 bpp units */
> > +	int min_hblank;
> >  	struct intel_link_m_n dp_m_n;
> >
> >  	/* m2_n2 for eDP downclock */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index
> >
> 227bd2783e64105dc8dd521b99e7d04ce2e577cc..6b827f569f64634c36b0317
> 60589
> > e0d2d01f5bb1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -209,6 +209,28 @@ static int intel_dp_mst_dsc_get_slice_count(const
> struct intel_connector *connec
> >  					    num_joined_pipes);
> >  }
> >
> > +static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state
> *crtc_state,
> > +					    struct intel_connector *connector,
> > +					    int bpp_x16)
>=20
> This shouldn't be in intel_dp_mst.c, as it's also used for UHBR/SST.
>=20
Will move to intel_dp.c

> > +{
> > +	struct intel_encoder *encoder =3D connector->encoder;
> > +	struct intel_display *display =3D to_intel_display(encoder);
> > +	const struct drm_display_mode *adjusted_mode =3D
> > +					&crtc_state->hw.adjusted_mode;
> > +	int symbol_size =3D intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> > +	int hblank;
> > +
> > +	if (DISPLAY_VER(display) < 20)
> > +		return;
> > +
> > +	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST
> & 128b/132b */
> > +	hblank =3D DIV_ROUND_UP((DIV_ROUND_UP
> > +			       (adjusted_mode->htotal - adjusted_mode-
> >hdisplay, 4) * bpp_x16),
> > +			      symbol_size);
>=20
> bpp_x16 is the bpp in .4 fixed point format, so the above seems to be mis=
sing a
> div-by-16 accordingly.
>=20
> Also the above formula doesn't seem to take DSC into account. Based on th=
e
> HBLNK_ML_SYM_CYC_CNT formula in DP Standard v2.1 (at 2.6.4.4.1 and
> 2.7.9) Bspec tells us to use (converting it to LL cycles, which is just a=
ssuming 4
> lanes always), I think we'd need something like:
>=20
> lane_count =3D 4;
> hactive =3D adjusted_mode->hdisplay;
> htotal =3D adjusted_mode->htotal;
> is_mst =3D true;
>=20
> hactive_sym_cycles =3D is_dsc ? drm_dp_link_dsc_symbol_cycles(lane_count,
> hactive, dsc_slices,
> 							    bpp_x16,
> symbol_size, is_mst) :
> 			      drm_dp_link_symbol_cycles(...); htotal_sym_cycles
> =3D htotal * hactive_sym_cycles / hactive; hblank_sym_cycles =3D htotal_s=
ym_cycles
> - hactive_sym_cycles;
>=20
I assume this is for Htotal LL CYC CNT.
Min Hblank calculation is included in the VESA spec (https://groups.vesa.or=
g/wg/DP/document/20494)
> > +
> > +	crtc_state->min_hblank =3D hblank;
> > +}
> > +
> >  int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
> >  				   struct intel_crtc_state *crtc_state,
> >  				   int max_bpp, int min_bpp,
> > @@ -266,6 +288,9 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp
> > *intel_dp,
> >
> >  		local_bw_overhead =3D intel_dp_mst_bw_overhead(crtc_state,
> >  							     false,
> dsc_slice_count, link_bpp_x16);
> > +
> > +		intel_dp_mst_compute_min_hblank(crtc_state, connector,
> > +link_bpp_x16);
> > +
> >  		intel_dp_mst_compute_m_n(crtc_state,
> >  					 local_bw_overhead,
> >  					 link_bpp_x16,
> > @@ -982,6 +1007,7 @@ static void mst_stream_disable(struct
> intel_atomic_state *state,
> >  	struct intel_dp *intel_dp =3D to_primary_dp(encoder);
> >  	struct intel_connector *connector =3D
> >  		to_intel_connector(old_conn_state->connector);
> > +	enum transcoder trans =3D old_crtc_state->cpu_transcoder;
> >
> >  	drm_dbg_kms(display->drm, "active links %d\n",
> >  		    intel_dp->active_mst_links);
> > @@ -992,6 +1018,8 @@ static void mst_stream_disable(struct
> intel_atomic_state *state,
> >  	intel_hdcp_disable(intel_mst->connector);
> >
> >  	intel_dp_sink_disable_decompression(state, connector,
> > old_crtc_state);
> > +
> > +	intel_de_write(display, DP_MIN_HBLANK_CTL(trans), 0x00);
> >  }
> >
> >  static void mst_stream_post_disable(struct intel_atomic_state *state,
> > @@ -1265,7 +1293,7 @@ static void mst_stream_enable(struct
> intel_atomic_state *state,
> >  	enum transcoder trans =3D pipe_config->cpu_transcoder;
> >  	bool first_mst_stream =3D intel_dp->active_mst_links =3D=3D 1;
> >  	struct intel_crtc *pipe_crtc;
> > -	int ret, i;
> > +	int ret, i, min_hblank;
> >
> >  	drm_WARN_ON(display->drm, pipe_config->has_pch_encoder);
> >
> > @@ -1280,6 +1308,29 @@ static void mst_stream_enable(struct
> intel_atomic_state *state,
> >  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz &
> 0xffffff));
> >  	}
> >
> > +	if (DISPLAY_VER(display) >=3D 20) {
> > +		/*
> > +		 * adjust the BlankingStart/BlankingEnd framing control from
> > +		 * the calculated value
> > +		 */
>=20
> All these adjustments should be done already during computation in
> intel_dp_mst_compute_min_hblank(), the only thing done here is writing
> pipe_config->min_hblank to the register.
>=20
As per the comment, the crtc_state should not hold the register content, re=
tained the calculated value in crtc_state and register alignment done here.

> HW/SW state verification should be added, as Ville reminded.
>=20
> > +		min_hblank =3D pipe_config->min_hblank - 2;
>=20
> Probably better to avoid getting min_hblank negative already here.
>=20
> > +
> > +		/* Maximum value to be programmed is limited to 0x10 */
> > +		min_hblank =3D min(0x10, min_hblank);
>=20
> Bspec seems to specify a decimal 10 value.
>=20
Will get this clarified.

> > +		/*
> > +		 * Minimum hblank accepted for 128b/132b would be 5 and for
> > +		 * 8b/10b would be 3 symbol count
> > +		 */
>=20
> Where is the above 5 and 3 minimum symbol count defined at? I can't see
> anything related to that at least in Bspec.
>=20
This is mentioned in the HLD and https://groups.vesa.org/wg/DP/document/204=
94

> > +		if (intel_dp_is_uhbr(pipe_config))
> > +			min_hblank =3D max(min_hblank, 5);
> > +		else
> > +			min_hblank =3D max(min_hblank, 3);
> > +
> > +		intel_de_write(display, DP_MIN_HBLANK_CTL(trans),
> > +			       min_hblank);
>=20
> What is the purpose of programming this? I can't find any explanation for=
 it,
> but one reason could be to ensure that the audio SDP data can be transmit=
ted
> during the Hblank period. That would mean it wouldn't need to be programm=
ed
> if there is no audio being transmitted and that it could be adjusted acco=
rding to
> the actual audio BW. Would be good to request a clarification for this fr=
om HW
> people.
>=20
https://groups.vesa.org/wg/DP/document/20494
Address issues for resolutions with high refresh rate that have small Hblan=
k, specifically where Hblank is smaller than one MTP.  Simulations indicate=
 this this will address the jitter issues that currently causes BS to be im=
mediately followed by BE which DPRX devices are unable to handle.

Thanks and Regards,
Arun R Murthy
---------------------


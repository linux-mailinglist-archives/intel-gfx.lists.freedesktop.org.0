Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 788B5939D64
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 11:17:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03ED010E50B;
	Tue, 23 Jul 2024 09:17:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWORcuLs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0188810E523
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 09:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721726255; x=1753262255;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tuknFCT6L+weWymoBXf+y85zbzzJ0ZchxEIvnn1ROjc=;
 b=PWORcuLsrBvPE731KF12TDrwgU3+QkItD2XAvdQAxdfvTDuwwprTas12
 ZJEyolK3ALpLXOGLq/vAZrdcfd3CoC7h7zbHKi1adFSQ4BPgLM7rX6zXi
 vYewCqRdLKJv//g3Clz+AOQRyUuti4YSO4aBCyB9dB1PyzjTSxgV+Lo6h
 eWvO6q5Mdai3lShBC/2dzo43wwnkv5/LDkT736KLEgROq5HlhKmiSIE2p
 vrcmIlD0P6k8CTX+aBDe5S49sST7aVqUaO4KdWlvdXnezquPOQU9sv+2P
 Ml69BSwOLo30pRN5/9i8w6NDBeWTI7lHEjDDqc2bQ+JKa13btx7AdDoXI Q==;
X-CSE-ConnectionGUID: SK50ahD7Q72nNQdasskKiA==
X-CSE-MsgGUID: z2oapJm4TT+Dy5LaOT7tDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19210566"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19210566"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 02:17:34 -0700
X-CSE-ConnectionGUID: G+7Dg8cIQHiQkDRk3EUTRA==
X-CSE-MsgGUID: HTLPIqT5SMOfJ23qK24amA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="75372858"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 02:17:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 02:17:33 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 02:17:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 02:17:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 02:17:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K+v8xZyW4FvvUqMJGSqayqKAZ10QNFLHXk/78HORSoLbZKBZ8+JKhO0nzvsb14alKGBx0mDvtQ6xRsd624BAzw5mqGGRrLWVLlX6Zo40q3aPOapW4KIokjBMYT6YDzOrumSmoCOi8O7smOGsG6PT5NT4v2OxlQY1dKr2ro95hDT4ZNNOaEglUZUSIRmoFGu+S8ExlE8GPNTNQ2SlLYRDAWc7dQWAhjQ3zWvect64U6j5s8CkOO2+XlGGD+c+JH8FH9AnlsLayKKUKV8/AoAJ61Oi88SFtaPed22idlXQJKHEcYBHp1GVZB3/b7sH576lENqrH8ocHW2SNaJK2po4YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QKl5W8NR3O39GF1mmMv59kyTiV6upksCcmbwDG6l2Gc=;
 b=XJHOXoR4fzOZTBU9znn68qNIT+txJZiBm2EPjHnVDF1kp4VpNOZ/uINziT4Ip3tph5AE3y+vWKibKWWW4Je0dManmuYfqgGbTotBDcF40r/WTjlEVyoD37SzqGacbzpb5tzRNU411LkttUxaJNI7qPaD2gZhjalipiZuT9NBinc9KEPDEYlnWbefVeLyL5Ln5NyXBMeoyvtN+MaB71dP7mMLTOzCe1Uo4+IoCyRZPXZytBxZ3m5W0bAFoLcQf3SyPhjZCMi33ZwgbRaCY0LQ93iL/yBHSHsDuzob3V2v+ZhaI9/cXMURFlxC+hBsy1lnOWBmBUM+rzw7/gtxyeItlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7596.namprd11.prod.outlook.com (2603:10b6:510:27e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.17; Tue, 23 Jul
 2024 09:17:25 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 09:17:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 08/14] drm/i915/dp: Add helpers to set link training mode, 
 BW parameters
Thread-Topic: [PATCH 08/14] drm/i915/dp: Add helpers to set link training
 mode, BW parameters
Thread-Index: AQHa3Ff3t2rfGp6wAkmi5mXuz/Wlw7IECVxw
Date: Tue, 23 Jul 2024 09:17:17 +0000
Message-ID: <SN7PR11MB6750A1DE4131B4D1CD791C91E3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-9-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-9-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7596:EE_
x-ms-office365-filtering-correlation-id: 7d75cf1c-7c07-4032-95b4-08dcaaf83fd2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?pq82W6xMW2044kXXsWq+RVmCik5x6pu8HWP2q7Ut5jx8NmkzeVjtqRwF69D0?=
 =?us-ascii?Q?vlL+SYVXkUFvnDxzcYGp4yFKM8pSgjRFm8Ra8i6Bxb9Y4LGTmUbTOBl2Qg+X?=
 =?us-ascii?Q?omN2pBbng6tB8LP87eYhJKfXHzyKocC1nMhB124c9mUx/TYDfbV0R/pHgnAF?=
 =?us-ascii?Q?yoYGC1D8kJu4beP6/lxAqPt4rqUiroYWR/RskfjXS0s6ERpkgu+qJ81eJ7vT?=
 =?us-ascii?Q?CXlW8W3RRidpDc75gbpqL0TwN+MLvyaBuyWUUtBs6pB93AlhR82HT4ZBiDfR?=
 =?us-ascii?Q?mz65a/2qRiavWhArhwVashO1ypy3YS+Qk8M/FoDrewLRa7Hn1fNP4025am/V?=
 =?us-ascii?Q?YX4ToYONWDLnvLbBK0gleO7xjGqWHFKROdZPPUBoMIoH9f6EewLVAMPcYpDK?=
 =?us-ascii?Q?w0Rvy4t6JPmo2PuYj99PLbHH5MEhx0DFN4mBZ0Z90EtmnjzSOqc7J3cH46q3?=
 =?us-ascii?Q?CMzqYV9hwoI5g97KDyIHGMTa4mTwc47brx9q+AcQhBbb2RCONunXsE7u13vP?=
 =?us-ascii?Q?rT0EW7ZSn35yxjCfbJfo7MP5qL5WDVL+v/Vz6i5IQ3NTJsiXXpRHrU/KsIXX?=
 =?us-ascii?Q?aEjiEZI5vtwI6n6dwq0Ksu3G0zQfoIRmPwPKo08KNqJc+3rj4hmg4yWocRxT?=
 =?us-ascii?Q?ciECjraLItxY7G+EeCdb+Qht/uEcR7PXR+zrNhzdsJD1LFSIyXpYM/PMF2wA?=
 =?us-ascii?Q?wxZagZt8OWJEMyhmmadYQlzMmAj97kniU84QRO8OwyuGd1wjISeO/nXjpfG1?=
 =?us-ascii?Q?VcscUzQ/U1JKJGX/pZNeJH+2306zVGJZKqxN1+8g/uYC3ycY9B6/fnIr6EFx?=
 =?us-ascii?Q?swGrM2GmmPUBJnoBSWAhsh9aOEBQJRQ3JXIHVubF8ldXdCEiZYe0fW3LQZoi?=
 =?us-ascii?Q?iqe/EfexqHc2ptFn4+fWoA5x0sU1TaU/S/A882FBDPFwveEzcpgq559nUVbV?=
 =?us-ascii?Q?LclrmO5uqnP8RHNS4HPRBOjWXAlZ8io9dhfYcsW/LtqQ60XOHZqOWtSbZ9Xu?=
 =?us-ascii?Q?j1hhuVAUkFCddqEG2Ox/ufUnA+oYJ/9BazGfWPUSky5rF8FGLND9J/WXT/ui?=
 =?us-ascii?Q?ZpP4wfHze1qpF/HMd7GTdE8Usfzd1MDh2xZyiQPTKpg293JrwSUU1l/FH/Wp?=
 =?us-ascii?Q?Lvxk5KGTjikA5Ufg1HHoHyy2bItxRtB1VHFds8V56bDQkcPnUpPINZUKayOd?=
 =?us-ascii?Q?xE6qRBwSkPg178aLXomp7KBh5dfPZaRt2o6dHFdAEkoDu4zEE8s4UbSR44Hu?=
 =?us-ascii?Q?uTnn4v56Kv+ieQS7/TfDXMWJ/GfyOA+EpFrYWx94qXYmEGrbtaCaGkNgNwxt?=
 =?us-ascii?Q?ywVbjGry2F4XJmI1bfBBn5wGiI+N0deAZaDnCkPB66U2Yi0+nsNMRt5a/p3+?=
 =?us-ascii?Q?BK0xYBHTzXfsoivNtH0RJgBWjt1IaUivaFXusEZoJSQodKphXw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Pn4Z3NRrjdEGcTmGWQGgKraxAOlJgXSoYsoQ8WqIpu3Yg8U7eCJ8nHWWFTqj?=
 =?us-ascii?Q?ddtRQTTW9UHWkJcVGwMGTkyJm4EeZFCApHsg5ogrqWrU02C2RAZlywJdvvtW?=
 =?us-ascii?Q?1IKcQfAxbBoMPXO9DDqsjJj1kpPCD1GL06lpluR3Ud8Jyn/Vhyq48lJQrTZh?=
 =?us-ascii?Q?nSBdAFsGcMPnN0HdbmsFiZurtexiO5X3h9tXbpAiE1/yj4hJr4sj6yAX6hDl?=
 =?us-ascii?Q?YDD9JWntIoO1Fxb3bBzXkqtEz+rbTfUq9mBq6Gglbi4suc9vY+6SedWjPvOJ?=
 =?us-ascii?Q?LxW+BNtQaLUcamF1Gdw+/7Jccusu67sLOeT5t3bfn6Hvd3JcHUJcWADTMHg9?=
 =?us-ascii?Q?AWV8cIZoXvWi/eIHTWhCkmXjF7QiqYEFxI+mb6peEmV9bMdcKD8m0AY1k0lB?=
 =?us-ascii?Q?tTh2CkNyqJhLbXLVDG1E/aOy80zVmqaMazJtJomHSeElTjMcmrZoIN2WKyaY?=
 =?us-ascii?Q?fqrfbBQ2BXi83mpevyKeV6Vb8cqlkjdiHnczf+hmWYqr4AagsJF/jKzlxu59?=
 =?us-ascii?Q?9OCwj2gglgwNvBI+3Q96ZFGwRFzH1CXVIJgzcT2nMsGP/ce9w3d18p0xbmm6?=
 =?us-ascii?Q?0Z1VbzND1PzL5f1tT09dl9ceq4FpwhQi2lq5hy0gpPI5aQCILZfH9z7RKDk8?=
 =?us-ascii?Q?wSbJryRjY8PIghoDfJouU2buMvZzRupTbD2v3LziTBCYYj4oF2WxOMfS6utd?=
 =?us-ascii?Q?BA2OiMhkMdvg90LD+FQwjRXmIZaLBbkT5DKK8KeNeIKQdVbhReyKCKZol/Zd?=
 =?us-ascii?Q?gobY0PM00GKa7CxChj5f4JgCBcpamF32mZkXiBMNvrBj7Fhf8NL21D1q5zgq?=
 =?us-ascii?Q?jXlBZ7IJ90/anb7nF3fkT4z5LbpmgSeCWz8zUWiv7xP6O5U7+X9GYtaozfJM?=
 =?us-ascii?Q?eD/HwKEorWE3E80zV2my3l2tQoPWCBDzUT+fC5mJ84+rt3RS0HOg3L+bywzW?=
 =?us-ascii?Q?2fEgcVUynycLdGEL7/Lv+5kr/qDwc6EdgUmgpDf0z7PwDqiWbDDLteqxk9Hi?=
 =?us-ascii?Q?+Xial+VKMyMKfE2rM4dQ7cM5dX2T4QkFhTHr60OYIPKE8JAi+mxPbMd17AYU?=
 =?us-ascii?Q?qwAoZSIT40+hAwyrvwvlqA+KIb7ZBFsIvDTunBKPquAwd0Yhk77qZVIpJr8X?=
 =?us-ascii?Q?7QtmQTVC/dkdGDWp47ycG1/7O1NtObxN0DdL3ItRRmBYkAeMPTNnzpjmmZkC?=
 =?us-ascii?Q?m1l0GnM1Y6jVNg9p5e88E4eyMBm6bSt+TXsGyFzdzP40Rj2ryuCV+u0ZM6A3?=
 =?us-ascii?Q?+X2w4adrGh5R+ETdhkHGrC9IDTG57j5zwz7c9Q5yX6Cs4UMurkAyDbc6t6aY?=
 =?us-ascii?Q?F67hbog+C+w6TKfUBfQNDbLGrgUFL35kY4Z3I0yUlN0Hze1f/1NX1OW8F1d/?=
 =?us-ascii?Q?g5G0TvV41KYcVhrY8VamLJQ00G51mDgg5K7luZMYTbKCYbMvbBRbQfJXhyen?=
 =?us-ascii?Q?F+eOVibFp5tNstOgX/moL9EOHKNKL2dK/qv1Anm4ueUTKsPKIspBWtUrdEqb?=
 =?us-ascii?Q?ZIFBa4MMHaE6aXblOJqFPfeKYTzPgPjcJIsaPbPWvQZm6ODF8HiHCMW0UjZ+?=
 =?us-ascii?Q?B9j6emzH78hNj9rlEdHivwmrZ8Vnk7wyK4NbWjTc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d75cf1c-7c07-4032-95b4-08dcaaf83fd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 09:17:17.8888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 993pO+WPWgrP83H4+jZKbX7GgN/ZOckA4nVUjvurrSjTizGAgY/ZJzwHiIgmZDI0vKd17flQbpQxIAOONQrjvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7596
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Monday, July 22, 2024 10:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 08/14] drm/i915/dp: Add helpers to set link training mode=
, BW
> parameters
>=20
> Add helpers to set the link mode and BW parameters. These are required by=
 a
> follow-up patch setting the parameters for a disabled link.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../drm/i915/display/intel_dp_link_training.c | 34 +++++++++++++------
> .../drm/i915/display/intel_dp_link_training.h |  6 ++++
>  2 files changed, 29 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 57536ae200b77..214c8858b8a94 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -21,6 +21,8 @@
>   * IN THE SOFTWARE.
>   */
>=20
> +#include <drm/display/drm_dp_helper.h>
> +
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> @@ -703,26 +705,28 @@ static bool
> intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>  	return true;
>  }
>=20
> -static void
> -intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
> -				const struct intel_crtc_state *crtc_state)
> +void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int
> +link_rate, bool is_vrr)
>  {
>  	u8 link_config[2];
>=20
> -	link_config[0] =3D crtc_state->vrr.flipline ?
> DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> -	link_config[1] =3D intel_dp_is_uhbr(crtc_state) ?
> +	link_config[0] =3D is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> +	link_config[1] =3D drm_dp_is_uhbr_rate(link_rate) ?
>  			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>  	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
> link_config, 2);  }
>=20
> -static void
> -intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
> -			    const struct intel_crtc_state *crtc_state,
> -			    u8 link_bw, u8 rate_select)
> +static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
> +					    const struct intel_crtc_state
> *crtc_state)
>  {
> -	u8 lane_count =3D crtc_state->lane_count;
> +	intel_dp_link_training_set_mode(intel_dp,
> +					crtc_state->port_clock, crtc_state-
> >vrr.flipline); }
>=20
> -	if (crtc_state->enhanced_framing)
> +void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
> +				   int link_bw, int rate_select, int lane_count,
> +				   bool enhanced_framing)
> +{
> +	if (enhanced_framing)
>  		lane_count |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
>=20
>  	if (link_bw) {
> @@ -746,6 +750,14 @@ intel_dp_update_link_bw_set(struct intel_dp
> *intel_dp,
>  	}
>  }
>=20
> +static void intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
> +					const struct intel_crtc_state *crtc_state,
> +					u8 link_bw, u8 rate_select)
> +{
> +	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, crtc_stat=
e-
> >lane_count,
> +				      crtc_state->enhanced_framing); }
> +
>  /*
>   * Prepare link training by configuring the link parameters. On DDI plat=
forms
>   * also enable the port here.
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> index 42e7fc6cb171a..2066b91467622 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -16,6 +16,12 @@ struct intel_dp;
>  int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8
> dpcd[DP_RECEIVER_CAP_SIZE]);  int intel_dp_init_lttpr_and_dprx_caps(struc=
t
> intel_dp *intel_dp);
>=20
> +void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
> +				     int link_rate, bool is_vrr);
> +void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
> +				   int link_bw, int rate_select, int lane_count,
> +				   bool enhanced_framing);
> +
>  void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state,
>  			       enum drm_dp_phy dp_phy,
> --
> 2.44.2


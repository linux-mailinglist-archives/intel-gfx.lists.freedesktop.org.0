Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA5199ECD8
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 15:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C27410E581;
	Tue, 15 Oct 2024 13:23:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvwK/s5l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 954C210E581
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 13:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728998628; x=1760534628;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=A96F3Up3IS9lKBeGv5MoZr82MF9PPHUdsKw8J8VYZwE=;
 b=HvwK/s5lqt0E8RQexiWUa15U/086/w2Hr3hZIfa1PB40FJhVNsBtifOo
 PHLzBpZnV2JY0JC5ZXwVNjor6WLoVaFBSK9BoYsN2hEIGTb2Ozui882lp
 A7D/tOQmO/6ADGklQ11/1h8A7KqJlj/vtNFqyUkgvfZxUzyD5pfPdIo/j
 LRsNBNtaSnZLFVxeJ86tuTGal2VoJIl+9XZSyDWaEaL7PCrle0JqzqiWt
 thbRsXVk/o/yKM9VN5AsKKgcDEiV6p1S4FsyeGA5xQoVBywn4NYLkKSwc
 zx1Skg3oJpk5+6ifRKIxMWt3alNaPAibekGg8qNP9OPDRDAELJFWDcAqF A==;
X-CSE-ConnectionGUID: xJcIPARSRPy1nr6LCQVr2g==
X-CSE-MsgGUID: I4HFZm/5S4KOWXB/qx+4rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="38967746"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="38967746"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 06:23:37 -0700
X-CSE-ConnectionGUID: TgPtgqGbTsiM1r4+Q/QPdA==
X-CSE-MsgGUID: IezlZzrDSbqlhEpjJhXAQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="82957083"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 06:23:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 06:23:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 06:23:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 06:23:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 06:23:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eWAA5NmWsqtOBrxvgxwK6iyxCedlsa8KbAHi1vhxeAGy5G1dHng6EBIHEXoyLUdBVuu4HvOzgacBksqbyOULvrdsHcEaAqiPjF+dkViwXumjGljCerMfZRlDJhqkF1JtybGOeS2NLyfxSI+Yy/hTTn2GA2/UMRQwY6nfhF9eL17VTXvFpgymjK3dbg60o22E+u4FYigx73RqoM8mRVzFErlyt2G07zhPXkm71LIlZvWAXkx8FN0iVhknlF+fBXbXMoGbVnTwTbg451YJmAcm0dGGh5ApbJcrW8fPRu+Ke3pM5k9QzvPHxO2bH51Sl86V55iJdyN8k1EfwJILXEsnbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7+/QdbXQKIABNPa5ib+ZrBBBH6TEdO4SEhRTvS9DjMQ=;
 b=TCXb1CdPsDrbtBY4F9T9ijyiU8LfNtM8FmgccfICPqQmjq721J5bnZsnajoKKjfb6+fEwAGDCoJpsEuOQ5BuPeGPdq2fH1IqTrWsqfDtyCvNdrIeS6GK6ss9vmgzsMEDNi9OoV00MZ3Fz4kmX4VErRVunrl50+mROgI0V/yEHdVV4Xn2ZF35ecGTWMR9+aBvIY6zr0ADzOOELl4F6fjPSGdr71WNLWABbvsQ2YK8DnF6/QLp1RHsxRy4pT4+MQRPIz59b9TGL0c5O5pLB1DAzIj5UPudLWrDf1lv7oQM2CYJF8lcs7gmwWLtFIJgR35+ucJol2iIGoJrHCQkjNlKoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH0PR11MB4856.namprd11.prod.outlook.com (2603:10b6:510:32::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Tue, 15 Oct
 2024 13:23:33 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 13:23:33 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHbEysofg4QnnlQeUm14i8grYYPOrKHof6AgABCHXA=
Date: Tue, 15 Oct 2024 13:23:33 +0000
Message-ID: <IA1PR11MB646720CEC002D00530490C52E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
 <SN7PR11MB67500EDC1756999D257653D7E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67500EDC1756999D257653D7E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH0PR11MB4856:EE_
x-ms-office365-filtering-correlation-id: 00b72876-3296-4707-bf3e-08dced1c91ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?eBYmmKRRkZOKNvIofrKD0reNO4ii0K+JpP2gm7yYpjkyXM4eMy3J8CD26rzw?=
 =?us-ascii?Q?BGzYNyEsrkdDq4Rqicfxzx+TTyZzSy2XZA9lZdMTIP8eIH3CG5KoA2hICKyK?=
 =?us-ascii?Q?QWBVZTdLxfFIRUmZK7zjTTneR1fe5GOvzvR3+o7f08s1XxeTg8ID9po+QZPF?=
 =?us-ascii?Q?D2hOUbHyXvMxlZiXhJ67rrasTIdGacxttuezyi/C6ADexD+nv6FcgzlG802u?=
 =?us-ascii?Q?OMBo7j2zbaoDK2S3bisHijBsFUZ6Kb5uVSSidRq+TnaA6Xsil6ATCvP4uUHj?=
 =?us-ascii?Q?UMvGl8pVlWedwCQyhsHpsUj4f193WnSGWm+atpxMswILO6rJ7MgK61xUQtO8?=
 =?us-ascii?Q?AIqYDK5TxszLz6x9u308bWz0vdk5mdkMkASg+5LdJwR1KQ/lZ9vFlOe4kGRf?=
 =?us-ascii?Q?Hq7UWPuTQy3G7ZnPsoGKQaYZgyAezIqLrol7wCxzRN6F1RQFcYNpuKS9V+bq?=
 =?us-ascii?Q?kHjOVFEbj7Eay5RzQeLbYy4o09tLbiRfUH/Ms8AeEC2oeG40N47nw71mvAWR?=
 =?us-ascii?Q?2Q2wEfb1S1sA4Abd6bvprbPC4bFcBvDX/pEoABnke/R3sshZrk2ly6iJxiC8?=
 =?us-ascii?Q?z7rLPXMes7F9aE7Kcy0artLqgC12EPvY+hlys07WsB09w4yOeHLW2+EqZENx?=
 =?us-ascii?Q?Brd+IZ8AGjgYZA6Vg5FQUtS8921aIbTPH0ypV2a6sGbnXeJMuj7j367MlJRP?=
 =?us-ascii?Q?iWgRtVYHqWLGUS6l+i1OtX5skoyOhQC3ScTb1IowSwsRpgPztk/Om8WipZN0?=
 =?us-ascii?Q?0I10Sc3fph2bIKVSTVmq0ZIDjh1+hlTyj48/4e65905iHHmQJWWoVRisCfwB?=
 =?us-ascii?Q?7yOms9rtTuMdVA/7x8Poik9hAjGZssdZSr0vmL04JzAOB5gnPzpRtYEReDj7?=
 =?us-ascii?Q?p0kFpSJs+M2RPmDZHfg1RDAPWWIXh0LhU1KO4pIdABiuSUxKMr1DYpPZKGQ8?=
 =?us-ascii?Q?E9Y7AFJ2zLXqVzF5E1rPnzzgMKMcUdDtGhXS0tZWUO06Hu98d3Ehdwetyioi?=
 =?us-ascii?Q?PeEppuleCRSkXrzfOjRvXh1jkYYB2RKqBrXj7bLo5FTykkbw8uwKlMiQpLxy?=
 =?us-ascii?Q?YYkGcLAaqwqt4IbulPrP2waWRTI2Tia/jkoyYUUtb3CpsykCJlyJOCLnWKPP?=
 =?us-ascii?Q?FPi5PfmD1B4Fju7bqjiAC3DhgjqxNFg1CLFNfLrQSujqL09t7fMpO1Me/zS6?=
 =?us-ascii?Q?MZTAfWmM01qbSVu9hSZ3CFBiqdmY1B4Pufeqhp1vxIux2KyiDlQusOWnuTQI?=
 =?us-ascii?Q?rocLg1UGDxtQhlNawegkDueOncmQGo7zIQ5k/LFE/lfC7fYclPzxyOpu5wRV?=
 =?us-ascii?Q?+OV1HLjTT8WxwAkopRv6wlmItpD56edghFO5LVKrgWVdOQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qB3n0QX4Zpd4HNGvQSTXn3/ePOdbKgGscbFnUBmogAYJPX5QSM0icQa2Hyx8?=
 =?us-ascii?Q?9EuCK6MV2DemTWIMxly/nCfKzbnlphNLv6eD7UwMkwzXmxZ/iQJssfql3mm0?=
 =?us-ascii?Q?fM4O876FiLE/bUyScG/2dp/MaTceNoGvvr77Rb02rURFnRlCl0SCIA3ME1Do?=
 =?us-ascii?Q?FSA2Sip6/3kcnHFxm4/fOv62wEjPCYo3+M0M2qBVdgls2m0uX7mR8sHWMRxX?=
 =?us-ascii?Q?9F5BwaeGZW8frWNjiGco58BVilW/NdNuHrTkaIx5ym/Ys4qdQShaqK0gXK2G?=
 =?us-ascii?Q?T/gtP00aqupdjgzxIHqnwA2erk6Rx4WoJrpfVdZEKfyAsj/aKDlIS/VGtokc?=
 =?us-ascii?Q?KNIQthW6vpoLM0fuBblAYZiu7mmgI9Cm4k6v2ac4Mv4cD8n5zT40yTeh6tkI?=
 =?us-ascii?Q?SNm+Mgo8RpalE9PQ9VLp+umIJ7b3qkOOLS2ljpidT/lJq5SN4HkhGe3/xzWz?=
 =?us-ascii?Q?9MNQ75pEjn8TV0CNwWGk7i53PqJpm6yvgjGhgpVpV/hZAqO+zzAhT3cEiNUf?=
 =?us-ascii?Q?UxXmZPb6A+u/GwDr/N6xAeMHgVa8fo1jSbedN6O3g8Yh3oWFSm0N0oD9AhVc?=
 =?us-ascii?Q?MldOZDlyUg6X1R84AHv9qq7rromuGNw3QqKx68Wp2l5UnuTGcT3PdibIAQs6?=
 =?us-ascii?Q?hSS+1oU/YR6vtAnuuLk/QE8OeI0yJCHftNdtx1/SFExiv/Sb1kKc1WLlqZxw?=
 =?us-ascii?Q?/mbY+oReT0WmnDx9+5NzC1AXxwByWsyeQXQMp764+ApE9pyC4ctyAT2crueL?=
 =?us-ascii?Q?kp3Bb5BbfzPs0UzXU+/Cj/2/qS9k6U0d0sw+vULSoUkxZU67qUFh9P6i6N9f?=
 =?us-ascii?Q?4U6SYO0qu4mpOv/3o8+XvPsD0/awp5X2bqL4w7ha/dXymaZERe1Md1vb406Y?=
 =?us-ascii?Q?q7XfZEVIsNMTYKPJN/Hvn+h+qu7Qu2JxwW0V2qoEw30R68dofzrLzaGu2G8O?=
 =?us-ascii?Q?oQsnksB3WvBWdFvCabrNebq64NpwoV1kOO+S+uAxFb9VVDj7HRcnNufcqSiQ?=
 =?us-ascii?Q?zaSFnUgQBnxUIMyib6MMHqAPkhA0zLe//B37nqLo2qxCjuh3ydfglPVkq+TZ?=
 =?us-ascii?Q?PzDjJJpBJoyHOLKsOycqkgTuOa1xcA7+S6QyOZyVyC9JcGryeBsyKL1UQpXP?=
 =?us-ascii?Q?CqiDjEo0XyLW6LZ+Hl5qHf/tFaDewuOcC/yGFONlCt74UanDoQkuGDcmtalc?=
 =?us-ascii?Q?8NjCqYtUTusfkwisqCJjZuL2KmYwF1JTCNr8cpDqoLl8ADhksoQVFM/gEi9q?=
 =?us-ascii?Q?dJryhTTFjRGQ0eqzae3NsEfrWqe42IgyOLqfTjRQwqYsptpN4j3y/s3+zyE8?=
 =?us-ascii?Q?FpHgB/Fxa7zunhRSFGOdwypDOe8cZ/wxAOLOQEsvTbYWbITn2f4ipuLlU5C/?=
 =?us-ascii?Q?HJwsyDaaaQtTvjDoZaPYr51PDunxuuybpQd0OYae/wRY53uHH0akP7L+up+z?=
 =?us-ascii?Q?ExWw32KjYlCJn6LEACufhzn8sxAvkp3HDwAVRwI3XDMpnW7jAZyA2ChC6SOS?=
 =?us-ascii?Q?YwrbwtE6gbYvlLKLQdjUuoJZFiyu4RJ+dENcIQFKLoEon2ObUofYC+9alDTL?=
 =?us-ascii?Q?YEhTo605GI4KYBHc0IExzvS7DFqQgCCdGBMYXKoF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00b72876-3296-4707-bf3e-08dced1c91ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 13:23:33.8036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xqfuN0PVoJTYEAKcuzii5fjtxplhwQ3P68c9xTq2fY6aJGBOTQNMd/2Uygyd6sckx4SmzgjYu3d9UcxcoHvCQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4856
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, October 15, 2024 2:55 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for pla=
nar
> yuv
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Nemesa Garg
> > Sent: Monday, September 30, 2024 4:54 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: [PATCH] drm/i915/display: Workaround for odd panning for
> > planar yuv
> >
> > Disable the support for odd x pan for even xsize for NV12 format as
> > underrun issue is seen.
> >
> > WA: 16024459452
> >
> > v2: Replace HSD with WA in commit message [Suraj]
> >     Modified the condition for handling odd panning
> >
> > v3: Simplified the condition for checking hsub
> >     Using older framework for wa as rev1[Jani]
> >
> > v4: Modify the condition for hsub [Sai Teja]
> >     Initialize hsub in else path [Dan]
> >
> > v5: Replace IS_LUNARLAKE with display version.
> >     Resolve nitpicks[Jani]
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index e979786aa5cf..e3401a4f7992 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -1029,6 +1029,14 @@ int intel_plane_check_src_coordinates(struct
> > intel_plane_state *plane_state)
> >  		 * This allows NV12 and P0xx formats to have odd size and/or
> odd
> >  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
> >  		 */
> > +		/*
> > +		 *  Wa_16023981245 for display version 20.
> > +		 *  Do not support odd x-panning for even xsize for NV12.
> > +		 */
> > +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format =3D=3D
> > DRM_FORMAT_NV12 &&
> > +		    src_x % 2 !=3D 0 && src_w % 2 =3D=3D 0)
>=20
> Also one more issue here according to HSD " Odd Pan position  + Even plan=
e size
> for YVU420 ..... SW decision is to not allow Odd Pan X position"
> Which would mean you need to check src_w and src_h instead of src_x to ch=
eck
> even plane.
>=20
As we need to disable odd panning in x direction so I think src_w will suff=
ice, no need to check src_h as we are not=20
changing anything in y -direction.

Regards,
Nemesa

> Regards,
> Suraj Kandpal
> > +			return -EINVAL;
> > +
> >  		hsub =3D 1;
> >  		vsub =3D 1;
> >  	} else {
> > --
> > 2.25.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B9FA876A1
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 06:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C0D10E472;
	Mon, 14 Apr 2025 04:07:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eyQ9uMq8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F59510E471;
 Mon, 14 Apr 2025 04:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744603669; x=1776139669;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2nFmHNwcBhqqqKh6DQ/ereoqJFCNMosIzvli48u8A88=;
 b=eyQ9uMq8m7bEAWWwlg5dQYbIaGKq81agl9Vnfybn5y+4f67We4Lo3qo3
 jKRu6OVTOCFQBLHhmjbes/p/ti6AoI49IAfBL8Y5pijxtGgxsmfI5uGH3
 nt6tDI+vhFgK9T/M8WdngsS4y3iE4n4EiwNuYUrRuJ4xynTn1M6joW6lI
 c3oEKJXXaMqFZC98rphwIRxB5AruCop5oDANQZ8QXvZ0jTZ75aC/WJ7zm
 Q230cnFznD+HwrCk/VmbLK7/3o7U2djM4f/ein/njBCMFS3TYCrYaViwz
 1sxteoZUZe0TK5qLGlVxStRQ6suBI+fyAQnKdRjYx++K9O5Cdi6HjlMsk A==;
X-CSE-ConnectionGUID: jUy2uqGcRfmnRrylgj+qag==
X-CSE-MsgGUID: L/xOl0XaRverh4uK93CCGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="45971869"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="45971869"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 21:07:48 -0700
X-CSE-ConnectionGUID: 8fEUxefVTR+2RZnkqQKeKQ==
X-CSE-MsgGUID: ZHQ0AwkqQVS/5fzWeRhLIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="130554996"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 21:07:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 13 Apr 2025 21:07:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 13 Apr 2025 21:07:47 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 13 Apr 2025 21:07:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hkndcidXIqqXiQuytsP1jfr7qfEsigRgFmkfu3XFXm3ZxYe+dPfsw83xeaMXpXhU7IljZs3qaObNfNH8PBE6WSk1fabhRG+5izU9oVfyMoRDsd89Z46fXFfCDyx9FcGWwtiB+FulYbbhO2Zjw8NEtgilZlAfKCXOGrHfk6QcevcbUPk63ReNNfu/gm6pX84164z/SeZwN/WoBP1lnQvY6S1IdmwRQl39RtSfsKiADj9g4XBfGttNXhg89UHNk2WD2kVuBE7aSan92zQQzMA2GqYS4f6T5NBcimStD06rDl+T+ljOv8DXQ2FOuNV99Ba+YfC4Kdi/RyNahgc2swM/hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8dMNVyTBXa5gGmp64BTp5+OI9HozLnqQTzKvKpFAIag=;
 b=bq42wjEqKwdbqpUbyqhcY7qOQ6O/GVlZ1awAubJorWrhaAqL8Kc1tcVRcmpQLkBqiRRnhElYIgDOnJ6RI7xy++GCFtAaplFE+6BINfmmeON5m2bb2P030oNeWuDDSBS62yftYWtLUnHXgWkhkEQZttj+TkfzXBUYzC9WqrKpoze0YevWm+dMb7+w7DvkpqF6cNWFX37r40r8TiaSonLYZLNq+71gxO4sqJRt42kyRoU+AbHe6cLIHbENHYgVGn4VoIo6tT1vhGWhZIiMT3l3/dYrHIw0z1MJI3RFf/jVAV3f45dqPZ0M7Dlq0Kfj2SljbvBQy5q0/ROX4HTXmSU2hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB6958.namprd11.prod.outlook.com (2603:10b6:303:229::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.27; Mon, 14 Apr
 2025 04:07:42 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8606.033; Mon, 14 Apr 2025
 04:07:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 2/2] drm/i915/dp: Check for HAS_DSC_3ENGINES while
 configuring DSC slices
Thread-Topic: [PATCH 2/2] drm/i915/dp: Check for HAS_DSC_3ENGINES while
 configuring DSC slices
Thread-Index: AQHbrOiS6ZME/Juq8UOYKAkgVJPcWrOii4ig
Date: Mon, 14 Apr 2025 04:07:41 +0000
Message-ID: <SN7PR11MB6750E82252389756D63D72C4E3B32@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
 <20250414024256.2782702-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250414024256.2782702-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB6958:EE_
x-ms-office365-filtering-correlation-id: e85c65c4-7650-408b-173c-08dd7b09e730
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vYf9vQx4Q272Gn6OHvQBCFY7wNs2iZ4GECjWEmkS3FP5nxHhD32ggHWVjLII?=
 =?us-ascii?Q?HiMgmhBF/Y2nMWjL6VLe+abiSAtr6Yh77gh5eXBodlgkl3lNobxSL7F7eKCf?=
 =?us-ascii?Q?NrMlX0sqDEZMpxwjBtYPc7cSq19U+zvZNAifFxSLJscoJwaOeZ3rR3VWCuVA?=
 =?us-ascii?Q?NBGMMM/7tOsNVCuxI2ZnIejU157dQ74fkO63xcNTDa9RaGn+KIcXUuMjpVZZ?=
 =?us-ascii?Q?X1mFAp5b2QAZD3BCIyEfdUf/bwb1BNYeKSbg+McQcPv7PCPaoXsd5eEyTE/p?=
 =?us-ascii?Q?fa5o4xllxWkDOfjvGSAM8QMnSZxe6NH4MD1fcAOztTUl/fItDbRUVVimpe4A?=
 =?us-ascii?Q?sPzs8XBolZrtccgCuJs0Wk7rOCDuCzzZjPBmCwyyA0SogZw5G+YwKBzyADwf?=
 =?us-ascii?Q?2h6TD2g+MYvfredmYNa6AjOzlfa3BuYHHfL39VSsypXvU/gKiWvFp2dw4QIT?=
 =?us-ascii?Q?zRKMy5unvcd6rTNV7LS0IispVH9UWS9SQyCjq1yZqhTRV2JIp/4yAhysUsgI?=
 =?us-ascii?Q?K0qu39+V8tlXJ8cJJigzH7lOtgHk2GnUe5SB/e+TbYNYlBvKYFx0C6H+LYEq?=
 =?us-ascii?Q?V0Vir5plMtgk9+QIP7Rz9Qy7con8+oFDMcA87oHOEBNhwnRbbv/od2vgXmgk?=
 =?us-ascii?Q?2YtU13kFm2eF33SQba7fLCU1cMAwauzBj7X3n8tNs7Exa/oaDjO12F5ruy22?=
 =?us-ascii?Q?8MORiUz7eRz5/0WrLcaB7kxdB4b3ON76xBOxNZbkz4wiTaUPHVCJ4ZhnUsy+?=
 =?us-ascii?Q?ZTAJvITOKay8+8KaSQELhl1ONvg0qJJevOiW/FWgCpz9HtVq2ho33Q4aLFPb?=
 =?us-ascii?Q?Zti3jJ0iO+D2JqSh4BEnax0kCxSvGdJTsk4Yr0VkAb+wG6UU+wRPBhpUlCk3?=
 =?us-ascii?Q?/SNX0szccGl2je1rdCVAyKCt9vsUO8tLW3oKMGajfXVvoP9eAnohmE6Olito?=
 =?us-ascii?Q?gCzdtGVZAly9lEYNLPkrZlEQtiR0EOGGwfA4X3FMjt/6265G4EmQiWs1OLn/?=
 =?us-ascii?Q?k7cF3+3AhI2C698ImOkrlGKThnzYV6nxeWvttgMJYj0HSz75akWk/90YsNpX?=
 =?us-ascii?Q?rMNKCZYq1v2GOGOlmz61MkN6TtYb5n0UrFaoCyLq/Ef43tzAyljKsbSybCHS?=
 =?us-ascii?Q?gHBrTOj3tEDputPVflRdVwlN+9Re4W4lhRLL5/6Qgi861gRGjqt2QhxmCr/2?=
 =?us-ascii?Q?7MXwS6JfwfNuPm/7Hc/FOkUvqHBuD9m83FeE7qUVnAGTpeAOKIRpf4c1jGlz?=
 =?us-ascii?Q?cH1vi/U4HcZbUQ1tu9Wz0Rq/K6EBQ+1xcObMWK8q7AsCMzfPpSGw/KAP8j24?=
 =?us-ascii?Q?a2xAssmYEO6qK6bCKuE9TLYE1411l9qzu8519nYhaywmQjEMJqOG1C2pdB06?=
 =?us-ascii?Q?mdKejBQXKfnR0wRuLSJFg9kG9fSJAf8v0kH/lFzSDcX4XliyjXfceQOx5dN3?=
 =?us-ascii?Q?wPSomDl8d+u6PL1Wf0nRkleqwrqI4gHUpLGSPUzax1l4K2/lwtukHA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6g4IxpP4h+TjfLD8ebLQQGj0+i7GdHOj+EHej/ulIQV+ecdBLxdk6Tjldkpk?=
 =?us-ascii?Q?OQQ6f0hsLpRx3Bks8qyK1VTXBM37OnXeDNifedszob6/zG2QuoCIqr+rV0Vc?=
 =?us-ascii?Q?h7GkwlLge0AGhskDt1FtGyt7K3daadHG/AAn4OWdLxIM/C/Mde1uQ6yQbUfQ?=
 =?us-ascii?Q?wcWCOALcbU2jQJVqzsCVpyR92fyWUXklseMI2b7MvpwRr1z1gTmjnwJZh1Pd?=
 =?us-ascii?Q?3PGDv9hLynFc3Hi/2GL4tsSElRxZhyu/9npV9G+x/4h/r1G70Zc1hiYAlKAy?=
 =?us-ascii?Q?0xpFCLKCZ7b3NrDYMKEkKieYwaqqZKFRGhy8EEkmcylZWNPdVOeNID/ROLx2?=
 =?us-ascii?Q?EDu/062goNInIkCjuQTVfMU3v8yQNuMw/nARGcohVr9JBGdhqSqZOsbvSHXB?=
 =?us-ascii?Q?e/9vj1+RDyt9kF0wagJuci58LKsa0ZzVGm+aHmXq9X6gJ5A0b4nce3Yqi40p?=
 =?us-ascii?Q?CxdybyzcM3sQg27bCVQAarnlcMGE2D94HRvDoZ09bGfsEzlpoLVlEsz6OkAH?=
 =?us-ascii?Q?q9nVSEZDB8nBKG+1/M5BPbWlcsMAw0W06KmeWW1DQY1XAxTPAoRvpFFhwusQ?=
 =?us-ascii?Q?iEnnDdFc8z6tXsZCd/icTjj4wBJsf4gNZod1i618SXI1Fb5mcgY51QBK/+Q1?=
 =?us-ascii?Q?2J/fbsY3s3f/VUKACkOYJmNbajXbFvJwE1PgOanp0H69AuH2/7ZLkuJd4NQD?=
 =?us-ascii?Q?SsLSr6jBMpCM9RJ9ssYaiRa6k00GV6aDzT2ehbnZ2mpOLg7v2DpCSIto47BE?=
 =?us-ascii?Q?5H9bZvaF5/NMcp7vGikr5XcNEe2nVC4fzb1oax1+mOYRrrRcvXX6EIjRPAiS?=
 =?us-ascii?Q?FSYbQ+negXqz1mvsoHiKxULkAX6lgBazGv3rXvJfJpf3V8Lnr2YRXoOekz85?=
 =?us-ascii?Q?DgovEftCKFtujgNc6Zyp8U59vcR3j+tboV9abBtyDGAIRE+uImY3JVvaHMjb?=
 =?us-ascii?Q?MwonraPv3NFtDc+gDKspTQmrT+AsOmEVIxX+Lny2IKXWbfCuOW+358dWbKNt?=
 =?us-ascii?Q?XagnDo9B+bLMMXRpVvmhqT4/MJ04cVCUtpNb05sqjvYv/Av2Jq1lvRPeXonl?=
 =?us-ascii?Q?EJEjDGRDJPJ9ziXWd3dfe44uFZNZ1HreGz99gncd137pi9PWvlim/hIXYp6y?=
 =?us-ascii?Q?tExAEzK1jmYj5E4YW2SGrJw59289ZSbp2OHT3AmYXCDo26949o8pm7Wt7sYB?=
 =?us-ascii?Q?TrCX8IuApqVIM7RqjXT91ZZ9WUNW1lIaLp+i4NFbM+ZAV2KD2t+2HV5L+2xA?=
 =?us-ascii?Q?bhIAuwi20ikiMkQzSAXJpMKr+/P09lrmXZoM9dQKqw/onLfD2Ejq4jj/PVgL?=
 =?us-ascii?Q?dFH+F6+pMdNtxAg24azDCcoCU8slktbsilzBC3djzcPzLbVHzttMnWkbzE0X?=
 =?us-ascii?Q?FQhhUMMq8EQcPBuFc5Y+hLKSvzoE7Skitto5L/Cl83F2sDcae2OLDnzxpFxg?=
 =?us-ascii?Q?Ugvtes7HA80VZZjbKeHcD+qp3x3i2J1sw6xkbjUA+PLsX9Pn/5ZF7IG5ejgM?=
 =?us-ascii?Q?3e9VreKNbqzBJwyNl9IKhlqGxaSKEuDBYhIJH19y0Eq/EGIhev75NmhVsTGM?=
 =?us-ascii?Q?N9cQ4w1tFqCSkD+x7iic4N4psiNldKy9hq9DdLZ9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e85c65c4-7650-408b-173c-08dd7b09e730
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2025 04:07:41.9543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aDXh1I2dNtAdfFFAPrkssB+Y1lwVbNZBWS/vmqkvZmrsiu0ZzDz8STmRa9XACdUCNVo+saMSxIfm9hmuWx0ZSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6958
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
> Sent: Monday, April 14, 2025 8:13 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; stable@vger.kernel.org;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 2/2] drm/i915/dp: Check for HAS_DSC_3ENGINES while
> configuring DSC slices
>=20
> DSC 12 slices configuration is used for some specific cases with Ultrajoi=
ner. This
> can be supported only when each of the 4 joined pipes have 3 DSC engines
> each.
>=20
> Add the missing check for 3 DSC engines support before using 3 DSC slices=
 per
> pipe.
>=20
> Fixes: be7f5fcdf4a0 ("drm/i915/dp: Enable 3 DSC engines for 12 slices")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: <stable@vger.kernel.org> # v6.14+
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index aeb14a5455fd..d7a30d0992b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1050,10 +1050,11 @@ u8 intel_dp_dsc_get_slice_count(const struct
> intel_connector *connector,
>  		u8 test_slice_count =3D valid_dsc_slicecount[i] *
> num_joined_pipes;
>=20
>  		/*
> -		 * 3 DSC Slices per pipe need 3 DSC engines,
> -		 * which is supported only with Ultrajoiner.
> +		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported
> only
> +		 * with Ultrajoiner only for some platforms.
>  		 */
> -		if (valid_dsc_slicecount[i] =3D=3D 3 && num_joined_pipes !=3D 4)
> +		if (valid_dsc_slicecount[i] =3D=3D 3 &&
> +		    (!HAS_DSC_3ENGINES(display) || num_joined_pipes !=3D 4))
>  			continue;
>=20
>  		if (test_slice_count >
> --
> 2.34.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB848ADC686
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 11:32:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D3D410E5FF;
	Tue, 17 Jun 2025 09:32:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cd5VxMC9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE62410E5DA;
 Tue, 17 Jun 2025 09:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750152767; x=1781688767;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dEKAP8NT7vBZVZsQ5eKTbmlcDZRuwBZIuqB+oAs+MJQ=;
 b=Cd5VxMC9I6ntfo8woo9koD56exxmfvHfRUuA/2lelJBnvjyp578x306a
 472Dkw+x9XjxtEB3pcRYiTI91sdub+lnLmtyYrgkSHh+GW3dbfZcOdMY0
 lxf5n7Y4DdJXWvNJOvzMdDCP7wAeKtVoJFeGgEso9+gax5sF+P/ipLlTo
 L3ojdKV3b/Zc1DZLzRgz9LqLLE2Dj+6W2jheZHxW5c77Nm90MZiYOdLxw
 E6IzhfzDjF89cfaxv/3rrwYWsB79tMyMMWBOLQzF0ZeC9wgTSGVhHFsty
 9JituvssZQ8tmrDxuN1sqFwwfeclxaSuT+l8V8C7pquAHSmPKL8qh1M44 Q==;
X-CSE-ConnectionGUID: kYPiTZKSTMirNAEAVTIWWw==
X-CSE-MsgGUID: tqB/rXy2QzC1nstNJXGPHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="55997096"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="55997096"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 02:32:46 -0700
X-CSE-ConnectionGUID: R3QqmKh4RmKPQ+GW8BfSIA==
X-CSE-MsgGUID: 8+AcxHcUR/KRCibQ3GWcsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="171962515"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 02:32:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 02:32:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 17 Jun 2025 02:32:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.84) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 02:32:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IOO/KNvDYn6npnwZcbWQ8l4s9Bwk7nbPp/AFPOf+py44s8wbdlzNdg1tJqUMYEpz37CFTvkwv6OXG8DqUIPa35EF7vOcQN6219c+hLYCihetEJEdrBmk7r/SiX3yl99/HBVL7mK+ZsyEy0M4pPUBgLtEZBS4+omFN30agumVASq7kcd16h7af/n4z6Cuxg9eoFv4DXDt/gvJrKl684TMG8cHthV/KUyjuMdE80vNJpBiyHB2ou90hx2ohtYRB16kfaoC8eY+aftCIrYwvdO6909oRJgP9FbJ0xul4EvB3q5+oZc0KwLj1pPkDLh4IMuMjzzLNupOknLZCtbUHk1G/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x+5fhoIUpkVvMy/jLZa1amSJA4MjL/bIB5brw2chZzU=;
 b=UsDmnBdXP3xDB2uwjXpmsfP85Thl/NFKPpLJvmnkvgndzJks4P6lhrnArPKmWCXi0ss/n6+B/DHywNfFrbbAHDfv9Oa+gS9FukJ+vGHOsfdLHlYMFJdXkRmArMkAdqP9Crla0y3t2+ZKuH+PXs964RZgcNg2fjXp2iBLZV6q3b3bvsRGGm1/UcIuXYY/zO6hBXUWcH8m5r6nMFOWie5qO6ek3CcNn+xrGQ3BN6LxBAPtKbzAQCP3Gsj0VFo3vroB8Vg/ZKBFIvZ9OrR4UMkBIIumaJYIZFoqBgHkWPX/1Xw+RQkm4jTU/XhfAbHqFRMlB6aH88gQkAPaokZcuabJ1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY8PR11MB7193.namprd11.prod.outlook.com
 (2603:10b6:930:91::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.30; Tue, 17 Jun
 2025 09:32:20 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%5]) with mapi id 15.20.8835.026; Tue, 17 Jun 2025
 09:32:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Thread-Topic: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Thread-Index: AQHb30JnVWScphBBzkyb034NdZnunrQHDeiAgAAI64A=
Date: Tue, 17 Jun 2025 09:32:20 +0000
Message-ID: <DM3PPF208195D8D6EBE7FCA8BAB83A699F3E373A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250617044305.3079459-1-suraj.kandpal@intel.com>
 <fe5e1c5c968aaa9667a303981c45486c07291bb5@intel.com>
In-Reply-To: <fe5e1c5c968aaa9667a303981c45486c07291bb5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY8PR11MB7193:EE_
x-ms-office365-filtering-correlation-id: 18b50408-52cf-4fbb-a816-08ddad81dbdc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?oE3EeYxR5QCUWcdCHk8GyEUjIEd9DtcyPOXYRbSgA4TXsvPqh1qy6TP2MEL4?=
 =?us-ascii?Q?BV9z7ZcACvftwRekG5awZcg5Xct5vHHwOdR2xUOpQJSw3YcsgFxKKlQT/I2A?=
 =?us-ascii?Q?5iBT+AdxSxfZK+BgjVUMmtGBHpbKDVY14UoRQbLcu1rBCnUwVv38cKPyTV6e?=
 =?us-ascii?Q?czv4S9csGrQcPNZExz7U8h8tnRhWSO4AAh0sdZqawu+8UP3NaBA7mC4m4z8A?=
 =?us-ascii?Q?8fO9huxIhhYglstKp2UoE2v+n0Z0ujhKOpQ88ti3yihReh3H8ghQPn28fH5M?=
 =?us-ascii?Q?6QlezQmlrcloubj9jYhRMqX7kpl1jY8ce0AZEwnW9SSrAUPC5XDGdGDkIm0D?=
 =?us-ascii?Q?rS8FukYsMx73jo34Yi8JkYlVWqZ70j+O0hpv1aQBZMtuIJ1oyUmq9LZaqRou?=
 =?us-ascii?Q?yL4kcsphtUsiVY9E8XD23/aCKKcmVRa/4pjS/IUdfe0RtNW1JDfCYL+6xYrk?=
 =?us-ascii?Q?GlRUBA013qZJeNmTgu0HBtj/kWT8nI2zc4oKN9wR+OtYgd44udYjBDmizMf0?=
 =?us-ascii?Q?VGYSF/1+ftLSruRbip5mnvJrIMDbqQcHFt0wSE/TGXbiSbBQ3/bnrvdx8pkJ?=
 =?us-ascii?Q?QeqZ2nJuLwrQ65DsoHbfVpBUkPa6gaxG642gaDxdu01IvIr9v+CDmnR5ZMTa?=
 =?us-ascii?Q?hM7eraPkwzJ9RB191cUYuc6F7dzOW73lX48Dnjy2YO9gSUoGxSj7TKbIOTjP?=
 =?us-ascii?Q?RzJLVyJoU6Z1lgU/OAKBx1ioB6AfSUG1QxQCbCzRP7cHVjUafxMLqEt2YFhu?=
 =?us-ascii?Q?UJn0nrdzV1VpIxGaKHS+JpOZW4kt3JSdiEOrwjJePcD/hYDVlM7DwROqul+M?=
 =?us-ascii?Q?uAs0DWuT0PuGgaHLQlccIpx+gWQTNLcF3Ng751d8lSHq8mNeTUmuG21I/sGc?=
 =?us-ascii?Q?f8XZOF/MtWuBsMZQ1CD+vBTxdHJvGzIbrRo5JQ//vbMXy7OZSC7++1FiWarc?=
 =?us-ascii?Q?/T0Vc1pJfoaMEI96AmVOo1nOZUu0Bd1xaQLQMwXSWD/kou299dB/2YKKbeHS?=
 =?us-ascii?Q?7y8ZYWE7DigHZT6o5BV+nIg8j/SmvfHOinxDQh9hxy967vTrNKryh1VjAQYn?=
 =?us-ascii?Q?yVK1QlPZRXZ4ev5hjl/8tbaREmCQpFr5/gazJUbi/E3nupPBn2pGyFj5vjFt?=
 =?us-ascii?Q?9mIywaHIlQXopLyneSSYS44XVvkAo9JEKuyiO+KwZW+tzTgQAn7QdUZBC+25?=
 =?us-ascii?Q?3PMKfuPJeCVfCEf1jHjEx/tgSslvJFhFA+QD8YjXmiyhEsZBVSLl/ziG7cax?=
 =?us-ascii?Q?DPlUKKblQ3+0IDbX5tOby6PDrt2kontHk4iw4Ic+7Mdc2TvDp06Q54TI0qxq?=
 =?us-ascii?Q?MoDfKg7vB+9RC06idAK/DD5TUKeIkw24QmH3qldv9nVSrSf4cLuYJAvNqFBE?=
 =?us-ascii?Q?2tRftUMyb9LBhB05i1srELduZBuEHpN6v3dbP/UJrhVttQdWULzkUfgXCA1D?=
 =?us-ascii?Q?y41PIowSPgs4h6vV0E1jTsBLe+1+RsgrYYRC2Ojpc4U8NLFzNdiF+g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0LWzHu0C6h5+fUqvrZU5CljP2rrWlDBS3c8iLmgkbs67+4bCJC68l2Lhk8LM?=
 =?us-ascii?Q?P+sRCDraOkU5O5HgMPyZYY9E1fWrjR9d4elPob9Xs9AimP8ZUXSxkXHtIXDl?=
 =?us-ascii?Q?OXg16NQYulzwRpMEOLIx173dDv04NCxnlILMepa6fUWoEK+9KKAK4/fdkq4J?=
 =?us-ascii?Q?p34YWU9m5AjOH00h1yPcyTpchADgedVx72JvoapzMRGxJ6L9KC7Q6CuJH+lP?=
 =?us-ascii?Q?V1FEOGEE24knhmbd+fC2uQgPs+D4LIQbGNVpjkdXCTatDxx07wyxZpDAuLk3?=
 =?us-ascii?Q?dFZ/oE2Qvi+xlvM41ON3XBkKjA/72JSckJT78cYOO0VUTvX6Epv+DdwarkXi?=
 =?us-ascii?Q?3xTwWoRgOzYZT1oOVP3OMhjM61jAqrKwgD1uA/nIAJRGsyH668arFep8MycP?=
 =?us-ascii?Q?m2J4WZ8/XbDaH4Ab6UFhWjc3x0ar4JXr6g29RUYdW/0aA9/080JmUEoz7bsD?=
 =?us-ascii?Q?QOrbSUA8zZPzgsDgZyobriZEKCp3V2FVWVquaBLA8H5nQq6FRa2Cs4F1ERWr?=
 =?us-ascii?Q?l4vT6WCi3CL3m5nqtnisHwGfx4AAJn4WmqyNRZ2pfn8yHHxqPKF/4mWaj45P?=
 =?us-ascii?Q?4i1cD6XzfjSoxtdCXLlWqVuBXmbpRmu+fRkpcYTFza006bGEJDypAo6NFOMz?=
 =?us-ascii?Q?D/9UMmLmd6HMGkeF2WImC28lrvMASF6UfvQ/dyw4Ncqbz38on6I7cWOH1E71?=
 =?us-ascii?Q?8EkcubSR9s/WAFb6NzFlWF2XTdxv8zlbl5OMmv0XWDInjFzXCbr7nvRjfB/C?=
 =?us-ascii?Q?H91PDN/D/X5RPii3PX23A2Ch0Hk274SOhslnI0no/aeRMms2b0xCuMJjcIgH?=
 =?us-ascii?Q?yUHZKxgXRw1Mqk5es8G4lBzHW7wYtxB9JwZl/Rxlru7Us170zD16IQ8n/bVj?=
 =?us-ascii?Q?gGxIt1uYoTZlIfDSWXYx3wkxOMD8hONuNO93cW9LrsyQ6Q3b6mN8kfurq/rw?=
 =?us-ascii?Q?ywWbcFh2lNEdDJouhPakc1ch/1T8EM1rjzVTY2LP60M1UqmNxC59NrO11SzA?=
 =?us-ascii?Q?xgppaeMfLY+nxImQ8IQ9zy24yjW199Xh5DKoruXz+JoMyJQcE0Uavn/E+wAh?=
 =?us-ascii?Q?RQcyX+OICzcuRGoIPQnVl86xWdsas7B712yqKkHlN0+u4aTV5G8vIys6hCTR?=
 =?us-ascii?Q?mmqhGZvGz8pA6jZqISD6lRbREqWd3pMYM9gRdIalNkhzVSSY4r+1+FBQ4MwT?=
 =?us-ascii?Q?H5uClBVeDIn9hIVKmM5LP8JBVIm80GR8Os4e+jUaDJU47EKjxDFR0vbX/+LM?=
 =?us-ascii?Q?LuefZ8Zjs4AbAjDScddpPskddSkOYrv67cFWMJMSISA8fO/FDAu7nBLclbeQ?=
 =?us-ascii?Q?CeZFTjomsAETtqZJP3SO3gJy4AvtDu9fLz6l/6XE1GvKtUfpj9Gg0jmqe6CV?=
 =?us-ascii?Q?04z7YxGCDgqew/eOffSxRn2Hi1UQ1RIDrw5NziDkIM7FXjxi4Klq2raqu9pJ?=
 =?us-ascii?Q?Sy9hRC7JfqJfleddthkm7z97fN5engP/g7WUpr06NdHDDmNAexPit7C1JxdL?=
 =?us-ascii?Q?25XjkhK7pRtgFf9RnLgT0ss/DN40VBPG4XudzkSnJ7cO2HgWJlSJO7g7l4oo?=
 =?us-ascii?Q?zuB1Dia4WXXmP/LWQvDDoU5NBK9KTV2eHoPoT7Fr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18b50408-52cf-4fbb-a816-08ddad81dbdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2025 09:32:20.6928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gPcwnUjC/X5VdOcljXaDNPiBjPTFhLa9ZHWMcEN4U1fP/cl81PL8wChj4LL2VKekkJS25OTvvfrIvuEqmVaikA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7193
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, June 17, 2025 2:30 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: Re: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
>=20
> On Tue, 17 Jun 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > We only support resolution up to 4k for single pipe when using
> > YUV420 format so we prune these modes and restrict the plane size at
> > src. This is because pipe scaling will not support YUV420 scaling for
> > hwidth > 4096.
> >
> > --v2
> > -Use output format to check [Ville]
> > -Add Bspec references
> > -Modify commit messge to point to why this is needed
> >
> > --v3
> > -Use a function skl_scaler_mode_valid which is routed throug
> > intel_pfit_mode_valid [Ville] -Combine the check conditons [Jonathan]
> >
> > Bspec: 49247, 50441
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v2
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c   | 10 +++++++---
> >  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 +++
> > drivers/gpu/drm/i915/display/intel_pfit.c | 12 ++++++++++++
> > drivers/gpu/drm/i915/display/intel_pfit.h | 12 +++++++++++-
> > drivers/gpu/drm/i915/display/skl_scaler.c | 18 ++++++++++++++++++
> > drivers/gpu/drm/i915/display/skl_scaler.h | 12 ++++++++++++
> >  6 files changed, 63 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 277b40b13948..7af936e6ea46 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1418,6 +1418,7 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
> >  	struct intel_display *display =3D to_intel_display(_connector->dev);
> >  	struct intel_connector *connector =3D to_intel_connector(_connector);
> >  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> > +	enum intel_output_format sink_format, output_format;
> >  	const struct drm_display_mode *fixed_mode;
> >  	int target_clock =3D mode->clock;
> >  	int max_rate, mode_rate, max_lanes, max_link_clock; @@ -1451,6
> > +1452,12 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> >  						     mode->hdisplay,
> target_clock);
> >  	max_dotclk *=3D num_joined_pipes;
> >
> > +	sink_format =3D intel_dp_sink_format(connector, mode);
> > +	output_format =3D intel_dp_output_format(connector, sink_format);
> > +
> > +	if (!intel_pfit_mode_valid(display, mode, output_format,
> num_joined_pipes, &status))
> > +		return status;
>=20
> I think all _mode_valid() functions should return enum drm_mode_status.
>=20
> This now returns pretty much the same thing in two different ways, and
> leaves status unset if it returns true. That's not a great interface.

Sure will fix this

Regards,
Suraj Kandpal

>=20
> > +
> >  	if (target_clock > max_dotclk)
> >  		return MODE_CLOCK_HIGH;
> >
> > @@ -1466,11 +1473,8 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
> >
> intel_dp_mode_min_output_bpp(connector, mode));
> >
> >  	if (intel_dp_has_dsc(connector)) {
> > -		enum intel_output_format sink_format, output_format;
> >  		int pipe_bpp;
> >
> > -		sink_format =3D intel_dp_sink_format(connector, mode);
> > -		output_format =3D intel_dp_output_format(connector,
> sink_format);
> >  		/*
> >  		 * TBD pass the connector BPC,
> >  		 * for now U8_MAX so that max BPC on that platform would
> be picked
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 9961ff259298..53ba1e16100d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2053,6 +2053,9 @@ intel_hdmi_mode_valid(struct drm_connector
> *_connector,
> >  	else
> >  		sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >
> > +	if (!intel_pfit_mode_valid(display, mode, sink_format, 0, &status))
> > +		return status;
> > +
> >  	status =3D intel_hdmi_mode_clock_valid(&connector->base, clock,
> has_hdmi_sink, sink_format);
> >  	if (status !=3D MODE_OK) {
> >  		if (ycbcr_420_only ||
> > diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c
> > b/drivers/gpu/drm/i915/display/intel_pfit.c
> > index 13541be4d6df..a8fb92c3417a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> > @@ -14,6 +14,7 @@
> >  #include "intel_lvds_regs.h"
> >  #include "intel_pfit.h"
> >  #include "intel_pfit_regs.h"
> > +#include "skl_scaler.h"
> >
> >  static int intel_pch_pfit_check_dst_window(const struct
> > intel_crtc_state *crtc_state)  { @@ -546,6 +547,17 @@ static int
> > gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> >  	return intel_gmch_pfit_check_timings(crtc_state);
> >  }
> >
> > +bool
> > +intel_pfit_mode_valid(struct intel_display *display,
> > +		      const struct drm_display_mode *mode,
> > +		      enum intel_output_format output_format,
> > +		      int num_joined_pipes,
> > +		      enum drm_mode_status *status) {
> > +	return skl_scaler_mode_valid(display, mode, output_format,
> > +				     num_joined_pipes, status);
> > +}
> > +
>=20
> Please explain why we're adding the extra dummy layer. Do we expect more
> to be added here?
>=20
> BR,
> Jani.
>=20
>=20
> >  int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
> >  			      const struct drm_connector_state *conn_state)  {
> diff --git
> > a/drivers/gpu/drm/i915/display/intel_pfit.h
> > b/drivers/gpu/drm/i915/display/intel_pfit.h
> > index ef34f9b49d09..ce68ceebc700 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pfit.h
> > +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
> > @@ -6,8 +6,14 @@
> >  #ifndef __INTEL_PFIT_H__
> >  #define __INTEL_PFIT_H__
> >
> > +#include <linux/types.h>
> > +
> > +enum drm_mode_status;
> > +struct drm_display_mode;
> >  struct drm_connector_state;
> >  struct intel_crtc_state;
> > +struct intel_display;
> > +enum intel_output_format;
> >
> >  int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
> >  			      const struct drm_connector_state *conn_state);
> @@ -17,5
> > +23,9 @@ void ilk_pfit_get_config(struct intel_crtc_state
> > *crtc_state);  void i9xx_pfit_enable(const struct intel_crtc_state
> > *crtc_state);  void i9xx_pfit_disable(const struct intel_crtc_state
> > *old_crtc_state);  void i9xx_pfit_get_config(struct intel_crtc_state
> > *crtc_state);
> > -
> > +bool intel_pfit_mode_valid(struct intel_display *display,
> > +			   const struct drm_display_mode *mode,
> > +			   enum intel_output_format output_format,
> > +			   int num_joined_pipes,
> > +			   enum drm_mode_status *status);
> >  #endif /* __INTEL_PFIT_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index d77798499c57..27001b52daf8 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -134,6 +134,24 @@ static void skl_scaler_max_dst_size(struct intel_c=
rtc
> *crtc,
> >  	}
> >  }
> >
> > +bool
> > +skl_scaler_mode_valid(struct intel_display *display,
> > +		      const struct drm_display_mode *mode,
> > +		      enum intel_output_format output_format,
> > +		      int num_joined_pipes,
> > +		      enum drm_mode_status *status) {
> > +	if (num_joined_pipes < 2 && output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420) {
> > +		if (DISPLAY_VER(display) >=3D 14 &&
> > +		    mode->hdisplay > 4096) {
> > +			*status =3D MODE_NO_420;
> > +			return false;
> > +		}
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static int
> >  skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_deta=
ch,
> >  		  unsigned int scaler_user, int *scaler_id, diff --git
> > a/drivers/gpu/drm/i915/display/skl_scaler.h
> > b/drivers/gpu/drm/i915/display/skl_scaler.h
> > index 355ea15260ca..37c6543b4731 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> > @@ -5,10 +5,16 @@
> >  #ifndef INTEL_SCALER_H
> >  #define INTEL_SCALER_H
> >
> > +#include <linux/types.h>
> > +
> > +enum drm_mode_status;
> > +struct drm_display_mode;
> >  struct intel_atomic_state;
> >  struct intel_crtc;
> >  struct intel_crtc_state;
> > +struct intel_display;
> >  struct intel_dsb;
> > +enum intel_output_format;
> >  struct intel_plane;
> >  struct intel_plane_state;
> >
> > @@ -32,4 +38,10 @@ void skl_scaler_disable(const struct
> > intel_crtc_state *old_crtc_state);
> >
> >  void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
> >
> > +bool skl_scaler_mode_valid(struct intel_display *display,
> > +			   const struct drm_display_mode *mode,
> > +			   enum intel_output_format output_format,
> > +			   int num_joined_pipes,
> > +			   enum drm_mode_status *status);
> > +
> >  #endif
>=20
> --
> Jani Nikula, Intel

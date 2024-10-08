Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA659951D2
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:35:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 460A610E565;
	Tue,  8 Oct 2024 14:35:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PbtznjQO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A320A10E565;
 Tue,  8 Oct 2024 14:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728398147; x=1759934147;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TKmjHbnfaokmlV4xPwp1bDXXnoXTW8mLrpYM/tGqWzo=;
 b=PbtznjQOx51toohZ3rMkqDP5lblHof5Ch7rE1xg7Hrbsk/6g/+Bg/7KM
 F8agQOzgrlazN6tr34EpoePRL/OKMKPzX9mxK6PXphwUtQvoCKQKmjyxm
 e46KTUmUMJbKelk91vzjRc+2AD7moiZcL+xewauDwx0hEm6tXb/QURxHz
 lYj0mv8YP3HZHGuJ29E5V161UqIs+d0hTrpbyr42ItetZQSH+kl76BSb2
 lgqXT8OTZ5AmKeZkaXe01vYv7u8tQ7L0naB3sDlssqsEJ+3FttTVU/oDf
 wUnymYrohtfbegJlZVPdcHs4TdBeC3Y2ClXHCBt/AdezoQ5k6tSIL8lMa A==;
X-CSE-ConnectionGUID: w2KkMr/tSj2xoyoBDT367w==
X-CSE-MsgGUID: Hzv5c264Truq0lq/sZEFCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="50132181"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="50132181"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:35:47 -0700
X-CSE-ConnectionGUID: fJrdGcFeTYG1JcCVzv3+og==
X-CSE-MsgGUID: Gs/diMosTWywaIrXU5hwlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="106612631"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:35:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:35:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:35:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:35:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:35:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HHDr6LYUoWFvlXvQzfrljurywyYY7udngxykf/9Kt/dub48owG4QB7X2Lew7VR45WGp+Prx+rAa3/adpnrjhKqOyU7BagOp1qwF6fNBL+lYlePODe0LMSRBTD1YyBXCCokGD0hbIvrk+GjcTf2/o/XULU2YFIHbyb18c3fOfn1e5tYHZRgaEoB6xoOp/2g71QFxk500RfQzHx07wNTljnATyd1dWfnTvqgs6q+cByCYeSVo7FOLmfflJL8/KLfC7Jq2Q3ycsmjixEwsaQnCwccNKUCtl87+BdzyZHDow9KSLDAtyNzU2bC4BFbUOK+GxW6FLcwxzssULpscRiOrv/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4xN+cF2R3IQzKmgQP+Pdkl240eMDUNxFuVhlToKdFvo=;
 b=LgBdfC0NmnB86/EDX2ZJGI5rUcYs0I1bMzyJn0Yi406bFjqyYIAMR3ahUOvT0GzmYh+pJiS03JIAhGLlOGrNTiaDG0RBaMQ1jBeZVnizxA3wYMuu/wqNTAafW5IqTyh4gxOKnKjZzjtC6Di6cUxHyiLOVZpF7wrOkoU8YBy0La1Zk0sq5YlEQDNlM/Ynbjm7wdizbaqzwCAiMrgUWihLr66DcrE2uEI0G52NqQBNb1fDtajKfOEmAwGiEd6WTnRSYnUxfS8Iuin5QgIvdqWEAN0oa5O2zfVy/5REAIWSR9n2JoZsMW8tXmVXTft8rvZJrt9NcjCFMn4vhhudlosJ2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by IA1PR11MB8198.namprd11.prod.outlook.com (2603:10b6:208:453::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.24; Tue, 8 Oct
 2024 14:35:43 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:35:43 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 26/31] drm/xe/display: Add missing watermark ipc update at
 runtime resume
Thread-Topic: [PATCH 26/31] drm/xe/display: Add missing watermark ipc update
 at runtime resume
Thread-Index: AQHbDsKCjh+Fv+/GPUWqaP7Zum1bmrJ9ALKw
Date: Tue, 8 Oct 2024 14:35:43 +0000
Message-ID: <CH0PR11MB544468A10FB10DC5B1D3E2BBE57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-27-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-27-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|IA1PR11MB8198:EE_
x-ms-office365-filtering-correlation-id: 1a567438-161c-4bea-c992-08dce7a67d31
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qdzw8GUbrEUgt9OYeiR5iJBbiVysPjrHeBAiqh+wnJLbuoRpOOap5XPmuZhE?=
 =?us-ascii?Q?8SQmasqUaA7Rz0pcbd5nXIg6P5IyjOAFD7SQglrAX5WBNgplm6LXzxxs0rLz?=
 =?us-ascii?Q?tzFwfSTFmP1n12T7zz935kOohh6bjbqf2Uh7EgtCP/w5iqt1QfVZArXROUIL?=
 =?us-ascii?Q?dkqctzdsqWv8sa606mcvv507ZnvUMjlVyu6RKERyyeN4oj/6lPJZpkqB9KWG?=
 =?us-ascii?Q?T0HkusPlaCXX5neErqxbLdDcZWyeLS6R6DkQnEtQBbjnq67rbnOE+3aiW/2r?=
 =?us-ascii?Q?/eqaKIB9ZXJtL7MNkNaSKUsCgBFibgiyiiPfY0bZ2iTEAhrOPiX0VFpAoyb8?=
 =?us-ascii?Q?2vXh7uzjWxcWx5at3/KIDgn/4MmrpSIEwMiQKc+xEEAAgIDCbjNXY5KlDLr2?=
 =?us-ascii?Q?Pi34fJAkWSVoZFr/Iw8uq1XXdbWGNszCaQyhJ0UHL7XrGtjI0layitjeHusz?=
 =?us-ascii?Q?uS0x15Y0e6qYsDJtq9EhyeBhUhhpDiFYMNxzhkZcAEAA8wzdWSHeDb3wKGXk?=
 =?us-ascii?Q?W0iHrbxIV+j63lNSxzjZWpIlE9JMGUUcfBpzjL4eRs2Q/O0/c0tLy7sRsAzh?=
 =?us-ascii?Q?L1InGieylVSKEkTOKG9hgRtzveW9SFjDCkb2NZ5PmBHQBVU4MJsL0T/gUJpJ?=
 =?us-ascii?Q?IbMQ76j/JN9SBJbsSUKkckYxthVvvczGiLUm9ddxBEfCOZvNEpFV4JvQz+NJ?=
 =?us-ascii?Q?FGLxovmRYI5Knr7zeHv35uXnHnoxjgptJDQt7pLgq+ypIRryGDz9XibCaFkD?=
 =?us-ascii?Q?wQbeLOeE8Gpw3pldxcBFTB4htoPIqiRZL2GPfKEmV3jPXe6BjTo62yjuhZbF?=
 =?us-ascii?Q?eY3kcRFLCkMU4vqvRoJ6IXQ1qfHwh8s5w5+bPqHKK5POssi4kKy2QewTNknU?=
 =?us-ascii?Q?RZy7MIOl2Pr42kaeWvQLBSVrx5eAusNP3tleA2VKp9nB4r6b5c0/sv+2VSnf?=
 =?us-ascii?Q?fskGbmPEch5rVoA61Fl26yU1xPUHIR/sWvUFx0xfDPXir+oe2p4ReaKiGKVS?=
 =?us-ascii?Q?Fm4BFOaf7AURFNFPQA/bGEmSYxgeON64PLLDVroLRzbSXX9jpoqhSUluAcs3?=
 =?us-ascii?Q?eg1J+MpN2VjjVj4u+BDCDLlF5yoOYhqG0Yd1OwiZ+LcRUQ6uhvVZKtZQlIQg?=
 =?us-ascii?Q?pOJrryZBahsns7FBF0itbA2kgurCnjVJC+zefVNwMt3xtvemHn5qNKy+2cq+?=
 =?us-ascii?Q?gSbX56JAaW8kB8invjRwJVGeWu3NdGF4R422Cq/jcQn8hrelMTSC+fc8iLt8?=
 =?us-ascii?Q?CWME5GSl5x9sEQsnkiDvXhybtCftBbJ+GBnLYZCQ+ys6RRvyB0XgzqL5WvK+?=
 =?us-ascii?Q?u5zU6xIbXLSip+RkqIO1jP6KzXVPBRq0JtrE0UBh72jPjg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z2wyKEgOtC+nc4vPQLECTeTa1z/F2dhTTt7OU5gqw0pq1EpaCTHHWD1us9rm?=
 =?us-ascii?Q?bnp5F4XRHT5TE0GUxxu4vTGnm79MqVzsbkO0d02RBG/cJT/tWgvh9TWwfmZm?=
 =?us-ascii?Q?ANydT2utnrFGXRRY7mVrz4RNZuln9oAU8BTLMIOYGlWyWNpuwSzwMfsuFxo8?=
 =?us-ascii?Q?9RIq6Vbd90oPdr4JviLk0zRscrq+XG1UYCI+dt50S/+DYZYy1rIGG/a8Ezog?=
 =?us-ascii?Q?j1BUfxAmKrM68G1bC9v6dh+XcaSkimMbNsD0nSCgpM70dKzw+7vnTvQBtJIR?=
 =?us-ascii?Q?mfM0xaTeIMMgSy3KnWF47/P1ZMSKuAzqH49XeEXpesBvjbMJdlNmiCRE4gX5?=
 =?us-ascii?Q?tYAJg8MNVltA9UuRKYipFav49ObeogR4FZ7OTCgVmYNYMF62AhOT+xkkjPpW?=
 =?us-ascii?Q?VlzRzT/PSQBw8pjrCea+fchml4MZ89gfKj/z+cvnUqNob+x+GbPNNHOahId2?=
 =?us-ascii?Q?gB7h2ASLSM9OkgVTwo30Ppv1hIo5OhMa+4gRe9YgwA4pEw3bvCX7tvcPPf7w?=
 =?us-ascii?Q?Orr3t0Hv+5X+rHrsgyhZPFlCj9195nSC9H10vfK1SJZaefDh1BYTCWJda2AZ?=
 =?us-ascii?Q?d6kd1FYsfSP3SvyNQXbB30pe+Dh7UB+vyNcseug2dZoHVrfWK4dnUa3Ku1PS?=
 =?us-ascii?Q?CMZBh4rLqD5Og5ow8pibZPOkQo7VNG/yPgTrhdF0mHe0eDbMsbmQggP/kCxJ?=
 =?us-ascii?Q?De8nHW9cI1B08ZGaEafAiy3459EZRECPgRaOwN/9TlxdOsRiBBZLSvrWi5TQ?=
 =?us-ascii?Q?LmpLaFRAIXRK75d5KKpXl53kLXtfdvFYA6XgHBXT89VDhFj8onq3fQeJzGWi?=
 =?us-ascii?Q?3RAj7GZuQdC8hPhVa1ReR7r5VwmGCEE3nV72GKA+bCoSt1v53oMk8rllER/o?=
 =?us-ascii?Q?rbtUJ2L3ghAUBLoJYhxnOwSikRaEGbrKe/sd9SMndTl1cEXMA6SX/jRkHW6A?=
 =?us-ascii?Q?UzPNm6vd5tStD8fBmYlIbehQ5xs2Jx111u1lJYIgzsQzxLT8PeqyPCBKZ2Q8?=
 =?us-ascii?Q?MvlSnMIzpoXi9sKPBpnv4tF+nxy5wcypw+gv84Lq0S7017OiMa6NmXZzDth1?=
 =?us-ascii?Q?E0e4//MExlSD1SqWJ8zZbxbTRN+bY7Rw1hsxwGxRLZPFzFP8qFO1JedQKDRH?=
 =?us-ascii?Q?u5Tv5dyDceD0N92teHZOHPDcqKkVG7XPfWUxPNPkqz/Xw0pm+U5b8whaX1EN?=
 =?us-ascii?Q?42kc8c7hEywFwJ0TXvljoqO0OYA9h/R1m4oOqndP6V1fzW1qRpl6+6Yg2sYD?=
 =?us-ascii?Q?Tvg7scS3i4bvTcOu8mMrnTDHxrPNbPdZajujsBQrKGFSrvK7q2Pv5CW60ZwX?=
 =?us-ascii?Q?+hJCpJkchiaxAS/mSBmhILSYw5qi2t3xISDFomlKJ/xkQTnkvv1ld6mhuOFJ?=
 =?us-ascii?Q?wIgQ0HLGBvA7LOHklMmUTB5murwSEbklLEp9iOSR2ZDhCQ/XWHyG9WDdDt+5?=
 =?us-ascii?Q?hDaOwBstdvXHXC0JLlFikW3uI8DVXpvdsOAN1+fMbLPLUYlcuIi6nG0G2LKU?=
 =?us-ascii?Q?nDncbvQ50k8+b1BLT/FVALu0GxYsrcTHPu63Pf5/r0xPqldG6ea63qdhvpGD?=
 =?us-ascii?Q?L2XXkRM+R1ZYQQEEREMJ/4QeeXSVKcRGIxRiwVryHJVB2WUvo2QlldylXk3c?=
 =?us-ascii?Q?QA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a567438-161c-4bea-c992-08dce7a67d31
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:35:43.0601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +w4u3G4NjU05LNU81EXrhzBtJZME3q4RNh9yvbDs9XlOUEWZyIGzD1GNZTJoloPp0NN1OdN6/s/tpeTizFxz1PZnZEyxuWzjSSBJGUHYE/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8198
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 26/31] drm/xe/display: Add missing watermark ipc update at =
runtime resume
>=20
> Continuing the alignment with i915 runtime pm sequence. Add
> this missing call.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index c758874a9059..44cace0237dd 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -27,6 +27,7 @@
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
>  #include "intel_opregion.h"
> +#include "skl_watermark.h"
>  #include "xe_module.h"
> =20
>  /* Xe device functions */
> @@ -469,6 +470,7 @@ void xe_display_pm_runtime_resume(struct xe_device *x=
e)
> =20
>  	intel_hpd_init(xe);
>  	intel_hpd_poll_disable(xe);
> +	skl_watermark_ipc_update(xe);
>  }
> =20
>  static void display_device_remove(struct drm_device *dev, void *arg)
> --=20
> 2.46.0
>=20
>=20

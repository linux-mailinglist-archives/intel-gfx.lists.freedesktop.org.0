Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A479E6065
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 23:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0E310E17B;
	Thu,  5 Dec 2024 22:19:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cmn+gGFd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BF1310E0AE;
 Thu,  5 Dec 2024 22:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733437197; x=1764973197;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a2Dfr1KjvPzwPDSKIF/gNYNTcQthlLAdW/IK/x4FSag=;
 b=cmn+gGFdb5n6cM8YupkFbcNQud9a2mk46f9Tmc/5WZ8wkAdHrl0yyEcm
 QZiYnBxekBAoyeqkr0sctrijVQvp+ATW0oy6FqUqrMbnOo+qj+du8rOd9
 EKVf09A8Oq7lPauKpqiLKN5+IYbZChCDZbHXj0dpuzk3GMmWZRolaQnn7
 R17+OsNuVkgWMNlJyMEdkr7tD6m3zFM7iiy2tCnz2PhiCEEYwXaCTx9y5
 A4kTGZyfaRkcvJu95KHqumeSEtA8x6Bxl32QSXPQTu+tZVFJEDeVn5SlN
 W4EUMmdhehGJ7Fc0RY4xo7PozdMYpSpZai4OTGB974UQ3GEwzTidJM2cm w==;
X-CSE-ConnectionGUID: nd6FxG/CQiuHmRCJxVWaDQ==
X-CSE-MsgGUID: kngFQ4oLQEGeXsokzl3mBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="33691740"
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="33691740"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 14:19:56 -0800
X-CSE-ConnectionGUID: qXRny4n4RKeiwZZBShet2g==
X-CSE-MsgGUID: y8z0oDBxTlmZ7dVgR1hVVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="125133462"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2024 14:19:56 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Dec 2024 14:19:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Dec 2024 14:19:55 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Dec 2024 14:19:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QZlCTB0lJ0T85s+iPv7qeOI2wKU+ZWZcR2t6K2qnKqXSkq9tcUsOpUCNR4sKahMxffrH+D8T5vZAXuq3WxotFAGQwwWbFt5MI0mMX3L2bVOzHGJbqtZ8V4OP0iEZb8SHefJPje2P2RWUzxF6zbm1XjNsQi5Ba1T2CM3SSpx9nQDHwrHIJevu24lEBfR415qN+HJIOcSF5B6VeIkNd4f9+znZ9htCkaOhtnaI0dyMo10JJNlIc/X4qBLNh9aILgJTmOWsTdtf4oi7ln9T70Y1vYlm6oni9YrsHv320zFR6kom8jX5ujltaotdOKPucdBfhNUb6oAw64Y7b/lVw9jXXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7loKm3vWJnEArvX0ErRJB+binsQpSCvQJlODnxxTg6U=;
 b=FRgwBsLUGa9RiFIVoqSBnfRdyxhJjOCGEq+ZHwbS98BQwNzmOKxLxBspTdQx9Y8XyGnK6uPNBbCFXTl/nn0feN1Qwe+QcQ8QxkoIjLi2syAAdAFup/dvNMKaqM5MV5o3jfFAsS8PSPJFSnqyQAyZi1hmvmFpjZSRsWM2DYq/SQSuUpAMpqQaA7bGf/LPyDsdHDuoRhHDpEFsoHL9I/Uqn8DpIkieLgiUQps5G6GCSrCjTzNjB2BBteGSeErcy0veqLxdiEB1AwLpF9QHXRI+QdzSUqe1Vz4JswR2dJTP/JPxpbSgHZBuBwxqAbZhBT7A5wukeJ7Ouj0XVPak+0dvvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB8471.namprd11.prod.outlook.com (2603:10b6:a03:578::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8230.11; Thu, 5 Dec 2024 22:19:53 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 22:19:53 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: RE: [PATCH v2 2/3] drm/i915/display: update to relative data rate
 handling
Thread-Topic: [PATCH v2 2/3] drm/i915/display: update to relative data rate
 handling
Thread-Index: AQHbPAhya3PbE6tRXki6F22fTVaSNrLYTt4g
Date: Thu, 5 Dec 2024 22:19:52 +0000
Message-ID: <DM4PR11MB6360EACC599DA7B7167D0120F4302@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20241121112726.510220-1-vinod.govindapillai@intel.com>
 <20241121112726.510220-3-vinod.govindapillai@intel.com>
In-Reply-To: <20241121112726.510220-3-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB8471:EE_
x-ms-office365-filtering-correlation-id: 5256d64b-519e-424f-9462-08dd157af0fd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?nXRBZ1EBoig2YMiTw55b7BKMpLBLkZ4+OFIRyxdHpUJ+MpK5T7p/tl0HGx8D?=
 =?us-ascii?Q?fhifGgV1UOKNiTiVsu3xJ8tLyoaMgKtAVlUMRbAtA4+kLNZ2ENcNjkXByaGG?=
 =?us-ascii?Q?DHJ7XdrFIizA9f/RYQww8eBB7fiwBEmocBlhkgZKccmK5ummfbZcwFBhPrmo?=
 =?us-ascii?Q?b0lmIrHgTwrddSBD8rf3kqiSoHdeX9iKElBDaVKzyiNfVCFn+YU2ZtJdc+RK?=
 =?us-ascii?Q?pBm8GGkTtOh7wYf7yDXK1a0e9Smn4f8/LEfr/C1pAB5jc5MWPvO0iphXPpfV?=
 =?us-ascii?Q?sv/4FksUfbwG6S2unxdJbD4PkgliRguOeF9wkq1WfgC1hUCElv+sn2It+3he?=
 =?us-ascii?Q?PSl68tdiUONjG6JsZdDwMlXUmMwco66HCkP9neAf7wSJbOqGDy3qxPJgxMS2?=
 =?us-ascii?Q?kzXOeLQeKdgZ/QTHtH/i9kaUfF8XPzgB5IgsXrb8g5vWQuMmxSK9/wIcIuMb?=
 =?us-ascii?Q?6lwg5aGvGHdEMTSV+p7NP0I+rvGBNxi5Kkij9x/w9VIKVeYgOZfC0j1ddYII?=
 =?us-ascii?Q?W32tBQZTIY+Zzo/V8weD87cPTCNHOy/YaKC9jGblqWLlbNRSn5K+UR1PWvM7?=
 =?us-ascii?Q?M4pMyVTPq3myQU8x548Gs9CKJLqDwaaj/FFejBYaxFpistHZTbrSgcLSptSo?=
 =?us-ascii?Q?qs868otiHVxRIIvaqlWxJNTfliYgxu+934XklfY7oNm7p5P5Bn6sVbuKF6Np?=
 =?us-ascii?Q?K15daFlHbnZl/Yh+77JAG5GVwDxUdt/a30P7MMkYp9PnI2yYbF7oJCHC+A5A?=
 =?us-ascii?Q?bw7ELkNjh3nrbbtrDm0tf+SHrz/nfKfkANzOSpMeOsYEKuXkDrLaN/6I42dj?=
 =?us-ascii?Q?U6plGEF68MlyTQlSZOTsAMhQ7+g7VJQ0M27oL6Bhle8i3CCRZQuG3l4kl2X0?=
 =?us-ascii?Q?BkTc619ghxcw5BRwh72EnaSbnm4lma9d+fYlNB6YYgWpoYAkJl2k5oZud2Da?=
 =?us-ascii?Q?krTWZPTNVkScOitnphmKFJnk/owbU/+JyzO8cZ6JtXlJto8djV9EqVbDVhVe?=
 =?us-ascii?Q?QGrYWDHCxwO3qkNQ+apkhaCVr6S7kWdsWl+Kjsg60fbDbd1s/xAA4Orx6EOA?=
 =?us-ascii?Q?u5PDgagCXFwnUUtvA2gKN6Nf90aM0HQ3HV5i+nWYEvjXtwDMG4W+FgS2h3o+?=
 =?us-ascii?Q?HQPcgzQ9Lv2zIuuY+fYo35IRuDoSVSYISgXoTKSzP2ra+rEIo9x8WNbV2epN?=
 =?us-ascii?Q?S08Hgo40vDzKU3LThv9lFGH1UYjJWbvM4hoBwIOOr7RhnivagQKXLS2xBKM4?=
 =?us-ascii?Q?C4JbvTRj8wCWHokmmtifEYlqPKl67/ZBGjzVmvws2804apa1Iy/68PRxPt/p?=
 =?us-ascii?Q?1g0TkZwHAybxTYzs/ty8dQFGsTinj3Uo4Ex4uCm2MclVliXeg9a2qRctdowr?=
 =?us-ascii?Q?eukEpys0s40Dxg+0TavXtssTdql0TqtVJ9m6gbcMcLpeHZbRnQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KrFUHwyfTEPZB7k0GUPa4jGXNVGYnuiabFbTSl51njumODsAGVU4oOqaag4W?=
 =?us-ascii?Q?n0xO202aKE0mqtoiJ7fl163scnQFVSa8ngUl0hjtgUVKklENN9UYK8qFJxJI?=
 =?us-ascii?Q?70zeE2b8wT+hIM9So7QfSoBZ0uQZHApuFLMwomyiB7VcEYGH2ODVrcwSigwi?=
 =?us-ascii?Q?CGIgukeKXRJSJFB0+VkUbDgf5HItZJCVrkcyLlB5FFhNosEMNMjtX+xYVYXx?=
 =?us-ascii?Q?h76OXCoH2TCA4ybuCcGfFw8559m5QJVSBp8jaJAMKUDnnezxycmLCJ6TYPNp?=
 =?us-ascii?Q?P6gdP4jy6hD9EDzuaQ9GMxa30+2LmpYdC141kXCF4AgY4Vw7Wvl4ltBmBesE?=
 =?us-ascii?Q?09g6ps2cN5ZrHJQtjlubaNOp3qCGwHq70OspWu/cjGEh+EHDpi1RJyllMnhH?=
 =?us-ascii?Q?FG9dqrlycQwKnruaDeCYk57KDMqWaXKjf5TO7CbJhRTN3cLtDQ/2iIo9DDAG?=
 =?us-ascii?Q?1o7VbEzdMFyELFdI83ZI8kJY0OefnST8ijYJ+tRr8QzrOnF6o4aKsgvlEuCn?=
 =?us-ascii?Q?gSA1kz7uhDxBd1JzKkdgcUKeRfySYWrOc4VOm8xcwZx7vdniZS2WhH1ZnTVQ?=
 =?us-ascii?Q?1BjVD8qr+8K4EG0gjLa+/slCVJrYYzmP+07+vJtkaofgcdzJYOWDKqSgeN/8?=
 =?us-ascii?Q?zQFUWp+ZIUNOWPcu1yD6D/4OMSmV5dqsFQV9sQ/+87mNWPK2kNSJ2VQE+Tvf?=
 =?us-ascii?Q?spkNWd8rHyp5755OJ5KcrRRUr7zIvjeJG3U9yCXI1lGcre4lR5l2zyyaSmYW?=
 =?us-ascii?Q?+GrSegx690gcyGjDdIFMAHATYqoLl28yXa03ZLK/Mzz1AWFSudwDXa8M1uwJ?=
 =?us-ascii?Q?//ZiLyZ4W08gwcPaevMXq9eGeTO6NE2D8lEnXI90m+XTp8rNmAjNRqWzmHi/?=
 =?us-ascii?Q?GW+RZq0Pyqa2UVU7VdpKz4/PCFPGlp9ywTd7uWO2e9eaU8Tu72ADcaSmQf2x?=
 =?us-ascii?Q?lRFFFtpQl3UBAtIO+PKNEEcKCtQ2d4F7FTD4YGFHNIHO2+Z3cMlG26G/kXNV?=
 =?us-ascii?Q?NT+lK4xiKZcn8fhZ6jfqBhRkmLbRJBkS/GFZ/t+UzlYcP4bzkPnpzIE8I2r9?=
 =?us-ascii?Q?lkjZoFE/NzK/JVSolGzey1mN2IO0J78ydgYa4yBgK/jKXj7jN6GWRekpeG/N?=
 =?us-ascii?Q?etBOgyd6CXa3exlvXlWTg1h5ZuGV0qQO0h2o44wGay4rp03njvWpEaapiCtc?=
 =?us-ascii?Q?xVYe/luvFmX6hHhCxCIzYZzyx0yDv69GPG+0KbMqpUPsPJAGT/zK7xamz8LE?=
 =?us-ascii?Q?rbBZC5qvpIgW/YvH0HF27rkD8qw85l5BV9S6I76WXTX6N3TcudijNmqvMnL5?=
 =?us-ascii?Q?0TnUV5SGiUaYKAFT6R+CF/f7ZjJWLPmBdP81Cotwuy3snssFOnqBF1Dkl1L5?=
 =?us-ascii?Q?kmXihtK5+l914m9yN4NISMwOQ96Du1RFyinLgl3lXu+0IR1ymO7dfYYyUQuc?=
 =?us-ascii?Q?ZDJJN5m0Ol30o/P2qcC66Fr3jI6cdHE3YmJxrQISntoidRzKgnj6ldXOTuFW?=
 =?us-ascii?Q?9MPK53MR62+DeljvgQJrIZAiKac2zZqttJ/W6VxdNX94Ls/jH1gT0NS40lj1?=
 =?us-ascii?Q?tHEV0MH1V94P2zK5kW7T+RSO5fR4AJG7Uq+N43sE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5256d64b-519e-424f-9462-08dd157af0fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 22:19:52.9256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FH/80yJjtCqfnPd6aSFsd4Lzo2UvVospXAl+dWt+jvrvDOTwnRlalH9bGpi4BRkhQ8gWTZ325ILg2zQEa+crDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8471
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Vino=
d
> Govindapillai
> Sent: Thursday, November 21, 2024 4:57 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>; Saarin=
en, Jani
> <jani.saarinen@intel.com>
> Subject: [PATCH v2 2/3] drm/i915/display: update to relative data rate ha=
ndling

I think patch header can be re-phrased, something like add a helper for rel=
ative
data rate handling

> Move the relative data rate handling to the skl_watermarks.c where other =
similar
> functions are implemented. Also get rid of
> use_min_ddb() and use use_minimal_wm0() instead to decide whether the
> relative data rate can be returned as 0

This also can be adjusted accordingly.

Overall Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 27 +++++--------------
> drivers/gpu/drm/i915/display/skl_watermark.c  | 16 +++++++++++
> drivers/gpu/drm/i915/display/skl_watermark.h  |  4 +++
>  3 files changed, 26 insertions(+), 21 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index d89630b2d5c1..162bd20632cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -207,17 +207,6 @@ unsigned int intel_plane_data_rate(const struct
> intel_crtc_state *crtc_state,
>  		fb->format->cpp[color_plane];
>  }
>=20
> -static bool
> -use_min_ddb(const struct intel_crtc_state *crtc_state,
> -	    struct intel_plane *plane)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> -
> -	return DISPLAY_VER(i915) >=3D 13 &&
> -	       crtc_state->uapi.async_flip &&
> -	       plane->async_flip;
> -}
> -
>  static unsigned int
>  intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state=
,
>  			       const struct intel_plane_state *plane_state, @@ -
> 225,8 +214,8 @@ intel_plane_relative_data_rate(const struct intel_crtc_st=
ate
> *crtc_state,  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int width, height;
>  	unsigned int rel_data_rate;
> +	int width, height;
>=20
>  	if (plane->id =3D=3D PLANE_CURSOR)
>  		return 0;
> @@ -234,14 +223,6 @@ intel_plane_relative_data_rate(const struct
> intel_crtc_state *crtc_state,
>  	if (!plane_state->uapi.visible)
>  		return 0;
>=20
> -	/*
> -	 * We calculate extra ddb based on ratio plane rate/total data rate
> -	 * in case, in some cases we should not allocate extra ddb for the plan=
e,
> -	 * so do not count its data rate, if this is the case.
> -	 */
> -	if (use_min_ddb(crtc_state, plane))
> -		return 0;
> -
>  	/*
>  	 * Src coordinates are already rotated by 270 degrees for
>  	 * the 90/270 degree plane rotation cases (to match the @@ -256,7
> +237,11 @@ intel_plane_relative_data_rate(const struct intel_crtc_state
> *crtc_state,
>  		height /=3D 2;
>  	}
>=20
> -	rel_data_rate =3D width * height * fb->format->cpp[color_plane];
> +	rel_data_rate =3D
> +		skl_plane_relative_data_rate(crtc_state, plane, width, height,
> +					     fb->format->cpp[color_plane]);
> +	if (!rel_data_rate)
> +		return 0;
>=20
>  	return intel_adjusted_rate(&plane_state->uapi.src,
>  				   &plane_state->uapi.dst,
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 7c1c491c2fe0..23ed989f01dc 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1383,6 +1383,22 @@ use_minimal_wm0_only(const struct intel_crtc_state
> *crtc_state,
>  	       plane->async_flip;
>  }
>=20
> +unsigned int
> +skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
> +			     struct intel_plane *plane, int width, int height,
> +			     int cpp)
> +{
> +	/*
> +	 * We calculate extra ddb based on ratio plane rate/total data rate
> +	 * in case, in some cases we should not allocate extra ddb for the plan=
e,
> +	 * so do not count its data rate, if this is the case.
> +	 */
> +	if (use_minimal_wm0_only(crtc_state, plane))
> +		return 0;
> +
> +	return width * height * cpp;
> +}
> +
>  static u64
>  skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state) =
 { diff --git
> a/drivers/gpu/drm/i915/display/skl_watermark.h
> b/drivers/gpu/drm/i915/display/skl_watermark.h
> index e73baec94873..e79eee80e66f 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -18,6 +18,7 @@ struct intel_bw_state;  struct intel_crtc;  struct
> intel_crtc_state;  struct intel_plane;
> +struct intel_plane_state;
>  struct skl_pipe_wm;
>  struct skl_wm_level;
>=20
> @@ -53,6 +54,9 @@ const struct skl_wm_level *skl_plane_wm_level(const
> struct skl_pipe_wm *pipe_wm,
>  					      int level);
>  const struct skl_wm_level *skl_plane_trans_wm(const struct skl_pipe_wm
> *pipe_wm,
>  					      enum plane_id plane_id);
> +unsigned int skl_plane_relative_data_rate(const struct intel_crtc_state
> *crtc_state,
> +					  struct intel_plane *plane, int width,
> +					  int height, int cpp);
>=20
>  struct intel_dbuf_state {
>  	struct intel_global_state base;
> --
> 2.34.1


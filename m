Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E23D1C8D561
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 09:27:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7483D10E7A4;
	Thu, 27 Nov 2025 08:27:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IzK4BMta";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E064F10E7A1;
 Thu, 27 Nov 2025 08:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764232020; x=1795768020;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ouQUuq77Rx5sYBvLCsBOmjxR5N4UimKrA/PxAWj4e54=;
 b=IzK4BMta9Kt0V6Ze0jGr1rQRkZEr/ZbiGH6eFNT7ur5D52EPHpNHJVsy
 Cplz7kJvuJDXa93gMDl6V3B8U5H0OAXPa4eMgGerUPO512PWXIM12VORF
 acGXIcis0IFKhoUvIYgJ7ZLBnxKx5IoNSXBJxtIObAGH8J4C5tgRms3L2
 j3pspmxfNi+Kfm2jUBd9Dhbvg11yuLos0gDkgqVTc5AW4DVAB3xFwIgV2
 82eHZbhZ/NfOP3G/AQRqY9mwyzMkUwT02f/3My8Uqr1dmXKf/xnzHMIWP
 FZXdGDUBl85AJp/3guIT/NSrewrEHRcvC+Rca5n3MKlJRZSQ50SRsUzVC A==;
X-CSE-ConnectionGUID: qDtsYOn0R/udUQxHhEfjZg==
X-CSE-MsgGUID: 6y/YxRvXRQai4Iw9FIuvwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66436234"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="66436234"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 00:27:00 -0800
X-CSE-ConnectionGUID: fQuYhCq9R5q//G7RjLxHIA==
X-CSE-MsgGUID: lidOeIKdQRWuWLhprDTaZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="193277344"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 00:27:00 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 00:26:55 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 00:26:55 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 00:26:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p1sSYl29aorDadGtIrMziqiyCbOgJOk2KxJfgACb5/AHHeF/buLJ2cvW40EMKOXuqmRpWfQWY4at9azvcT5Sl9G/10ujZNai+lrvln1hOhZqhVDa+6so+nZiN2F4ocbNY+GZI5m4s0YK1CYazgIt1SfWprnd/8u/sjoVz8O+sxZfsE57aCTI/IDjwBIJsaFd08yRyp0GBsPJrINnY38buFfK4mnsYaY24klNnDn+6EZ/GvKPbP5ZePVPr80OrQyS53CgNd7t2YuzPWlZojAyEEJSbd3+2bScuYJDAh0HzQpFwA5XUfMPAt799OmIvVCCinKk0nHg5fO101clHthpDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WdVOi+Qwu+UXLC8G7hnh58rsKb5rwRC0GNDY1oBP6LA=;
 b=rspzGq9db3jjXXu2mZlzq3iMWuaqtpQAnKdY+bmSwDMCwJMqsr99LRnK6PvyqBFOG1qM5VmVV6zw6Qnw/hWXmU7qAfb++HPT2ct08YX0aS9RQRMQzmOlbnPgLmBeU2+ihKPfa8MrFb+lENMV7Cujr9cdPHr2R/9roYdFMJxul1g4Ry2hNrMSqT6MJABHJK6TCTqL3LSOX87jhRHdQ5lTDAcBHcuZKqqtK6+n2DmTu5nLXsXsSIJziNChwDGRLsIRVZ2dDEElQSBrGPO7fn1r5TaBs0qGiNruQw9NaZmEYP80euhiW3iiBplLOn8I3Wr2qk8cZQSAwRE6WPZwV+050Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 by MW6PR11MB8410.namprd11.prod.outlook.com (2603:10b6:303:249::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 08:26:53 +0000
Received: from PH7PR11MB8035.namprd11.prod.outlook.com
 ([fe80::b991:bb49:eda1:e063]) by PH7PR11MB8035.namprd11.prod.outlook.com
 ([fe80::b991:bb49:eda1:e063%4]) with mapi id 15.20.9366.009; Thu, 27 Nov 2025
 08:26:52 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [RESEND 4/4] drm/xe/dsb: drop the unnecessary struct i915_vma
Thread-Topic: [RESEND 4/4] drm/xe/dsb: drop the unnecessary struct i915_vma
Thread-Index: AQHcXsV/f76RsFRluUiBISop2lKpPrUGMW2g
Date: Thu, 27 Nov 2025 08:26:52 +0000
Message-ID: <PH7PR11MB80358A97BCB2B07FADDF12ECF9DFA@PH7PR11MB8035.namprd11.prod.outlook.com>
References: <cover.1764155417.git.jani.nikula@intel.com>
 <f0bba09d2f185fe3e7f3b803036f036d845a8cc4.1764155417.git.jani.nikula@intel.com>
In-Reply-To: <f0bba09d2f185fe3e7f3b803036f036d845a8cc4.1764155417.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8035:EE_|MW6PR11MB8410:EE_
x-ms-office365-filtering-correlation-id: 78419405-8414-4b32-cfc6-08de2d8eb7a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?KHS0jl+AabDOqXBo58MsB7sO/X9clsI9n3Jh1sc50nRxN7p1v0pHyC1T7ev1?=
 =?us-ascii?Q?6kTVPYEmIDWdCLeFI0C1W4OVb87JLp6YJG2Jm1Q0/bhMejjxo9Y53KJkrHkF?=
 =?us-ascii?Q?zX1cz+TjP5XcvV6iY16Tg+6ThFSnuq+I9Wv/Y91TM6B7GA3yJdGMI/AO2358?=
 =?us-ascii?Q?WifGsDM8aupsDpl1A8bneFvL8vuv6F8++BpaSq22NoTXzcJZ8nFSgiaGLBbY?=
 =?us-ascii?Q?rI7ke5RwbzDp+oe+thW/OUO43KUqV9GQJ0lolqj65FWnSNCiUni8cPKD/R4T?=
 =?us-ascii?Q?uTXXPxe2rO1Qy/tAbBYB0yrFf3CErdnClYKgJZwCl90EJR9uyrsWPJwla+Sc?=
 =?us-ascii?Q?3WuMLe1Uz4oXABnpMLdXFzwnjquAybveK8IEndBAcDLpKQ0sxhSfhr6cWXNE?=
 =?us-ascii?Q?zl5lIotmrOq3VeimJiS4TuvrsyFB6OWVDV6VJUypxqjNuDJRElJHGauRHTl+?=
 =?us-ascii?Q?axY1arRoDAV9mNBmaBTE5Ar+hAIuihzzQXTfk9RunGiYWP5BZDZnGJQ3Obsr?=
 =?us-ascii?Q?q1goAlandO+Uux6WVhEskq5uIQYFtXSEZY7usZ3SONKOe/7i/+oCB+0WGWYw?=
 =?us-ascii?Q?acM8UbIM3q8R0GsQLGXl1CqRRfzYTjn0PLPvrjEWs4K8qHYHLq2B37+aP2QS?=
 =?us-ascii?Q?MetI+5mcCK6SrSrYAR+CcVaHS400FfSNifEKSAVrG4zwA8eOozLBqn6PTB9l?=
 =?us-ascii?Q?O+J/Ic65h+W0pbTvd1yeQylzfyOyXsH69Be65Qql40vp5xWkcRHDM6+fnF0E?=
 =?us-ascii?Q?cguurg6wOZqeCbHZ6gRoLOv3TpHvhpLiOe9nlQLFjBX+N0RYA9fouHpzZ5/D?=
 =?us-ascii?Q?dAENlPIlCxztrBY9Bg22p/an7g938fnrVkjRF2jpHatw+8V2JIgm8Y9oJsAx?=
 =?us-ascii?Q?VXLZJhT5XQL82zmX1sxmgoQMBn7PTomNqaGRvb1Uqrw39KeaeFA7JKE0zyV7?=
 =?us-ascii?Q?NaCBOOYg7ASMNTS7UZG5FcU3hzeow+cn5hClZlOpLXPzkg7lzDO4RPaXMyuA?=
 =?us-ascii?Q?elOdNFGKeK+4fzPddyrmraSyCS6I2YILc9zIqvpsRiPSeT32ioyRp8a4UWaK?=
 =?us-ascii?Q?5ygGyGc9IQknY4l8NMC+8OUxLlv8/83gRyrM5U5PdhfYa4kGsqaAE0+Yiq+8?=
 =?us-ascii?Q?IibpfJWdogCOi2bbZ56MlHQk48KcIjU6HSBunFDMo4ffxWQvOw8rY+wir9jI?=
 =?us-ascii?Q?e1Xo3FameXRmTXkcCiafG7gzZ6WfoE/43jmabKDPDCu5zHU0/2TicMIB+HRe?=
 =?us-ascii?Q?FkqBI9KxOHx73++AV6OUlwJmHmvUmSlT7tRj/JslqFjX78fl6hLkoe9GvorI?=
 =?us-ascii?Q?w5K7Y+KNuvAAjnCTRzHUlmq9pVilpWaMF8Q5WA9EAmVsd5R1vAfuw70kypJK?=
 =?us-ascii?Q?CIysRko64+iyNfKdfayWtfFVwOzdydOkmzstTBze7MlogD4lJ/QXZy/Hi4SS?=
 =?us-ascii?Q?eBQKmqYmsWOx97G3wZgo6nizIKzyGoNcT2ypMPhCJqjoEEyJ5///1dkeUoue?=
 =?us-ascii?Q?Rqtw+Sm3dqYZAQYgVk+iJ4jgzJZ8Cp6pVH0m?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8035.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2zYV30gX1btupyttC0fKEbCi+spr9+jNgl3rdB7wut7Bn6FqFobD5tVj/7ps?=
 =?us-ascii?Q?XHPJt8OvPCGCUi2PAmtBQBw7QpVDGUJpEa171xtuRAZ/h8P82jDJzXyRcnNG?=
 =?us-ascii?Q?9lN94xIEaTawt6wIMtfrRxvz/hy8Lsx9kInpyoiwhme/LpyKAjDPFv+B4Aei?=
 =?us-ascii?Q?VqoepTUhDyL99civzSgM/TcOACy6jFqd9Fveql9fkQgcZ0KyCLZza1tY3515?=
 =?us-ascii?Q?z9wVvEvg/RV5WXeUlsJIPAuYAkvDMdE2+bTefBekhPDk/x1PW/YXPTfYxguF?=
 =?us-ascii?Q?55dLQndxa2TWbH5OLDWwix05INKKiRjoVYnkReEqgu9GncFbMjaaCYu/zPp/?=
 =?us-ascii?Q?3xpcioxPP0RDHLvW4uFyEvw7r2mVXCOdy5+3H4z6BvSsLES9v50JuRcdF9jr?=
 =?us-ascii?Q?29ruZ97tLJUsXY2v4hSjBYLPJsN9uDhEjsr+mlERISaxZLHz6wHwAOzEsz/K?=
 =?us-ascii?Q?OED5HDOmF1jWyZJvKESKWWGb0hWs5it3HNrCaNibOEyCLI+eSVgYfbzl2sF6?=
 =?us-ascii?Q?1N8QDU51+Q8uV26nD1T93PFkndruYsMlGSRG0oC732Ut2OxTGS18S/uSZpjl?=
 =?us-ascii?Q?WbJoq9ypxN7sizApOXtaUiHXvr8KMRQeP1rsuGofCa0ZN0CCYn144CJDfoo1?=
 =?us-ascii?Q?rUQpg0ZmIuWtvrkR6pG8pm0TeFEvJ+1FotnHNzu9uQOkDnUodF6Be1JLmSmg?=
 =?us-ascii?Q?xSZxSkREtZqYZq9iokpRgVqUmuiJZfQXl/jfOPw5fR8nA7fFIhiYG9hNcixP?=
 =?us-ascii?Q?U007BMa+12eYkDfJALf+hdKowVQLEiMp9tv+ob/catNCyDN3XdBz5TPMqBvo?=
 =?us-ascii?Q?+ztVM1uIWZQ5AI+vKxeQehi306srgzK3MrKbsRb0Y81BP1I4tIbkMn3wYmE/?=
 =?us-ascii?Q?LVufPj7VXTHNUHQgtPBX+gBvyf/wUF6LviVGNtBYTUdmJDEO/wBXp3X4EiE2?=
 =?us-ascii?Q?PXA3Wh6cIQqO8UYLeaqLXnqdialiEAWSnDKvgYvXQ5vvt4v+U3MnVhminIYR?=
 =?us-ascii?Q?2IUyABvP3BRv1pUOKBzWgKnjRjvuaFrBJPJUCMY2FP4DFBQWaB22uCvbwU8S?=
 =?us-ascii?Q?nFzrF/Sw2IUIvxD5UCH+ASoXB5xxkKZH+jHRJV6uhNWIemaybQm2W/Ld5UZz?=
 =?us-ascii?Q?L6jAEJwn1MYmGN5dEYDPuVMWHYUc0jkOILpSUtkjDHy8xDUspDSIi48vIfXV?=
 =?us-ascii?Q?GpAzGydsqp/89HG2onVe+1OJYh2Jyy9UHbQ/rxPFWmNw83F/PI7yuhHOnaKo?=
 =?us-ascii?Q?gstgB/NeBrOVsB9rMbQ0CtWNoQVm8Xs1pZ+Yw5cte55c6v0C70Eihnh3fjwi?=
 =?us-ascii?Q?0jdWCHF8Elsl0qptljs1F4uTkNpDrPF6w5LPqRdAIeidZkxi+QI33k1Jg/kM?=
 =?us-ascii?Q?2OMF4tLmOtK3v5sJCO+0c897phvF/NepBnHzXYLm+bnD40x66Z/pH1QGJKhD?=
 =?us-ascii?Q?6K5Nn1nI9g1KgyQBgYeq5uRTSCT6PjussxBfYYI+UarrQ/UalzUB4IwSOcnS?=
 =?us-ascii?Q?GMlIbW1S9qF0PPiUhQ04S0tdQDLf791jpXQwzyW9oAEC4wDZWTT8WRA/MGYi?=
 =?us-ascii?Q?qc84sLn9u99r4mazBH05RUJi2RIMT4Kz2yd+jFHl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8035.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78419405-8414-4b32-cfc6-08de2d8eb7a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2025 08:26:52.2596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cLht1bbaFX73lPR6cCIy3GKda/F/hraAy64UgdhGm+y8T8nKQJ9x7cN1Iai6c4QiTC1g1Dgz0Kxfl9kl99eLOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8410
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, November 26, 2025 4:41 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com
> Subject: [RESEND 4/4] drm/xe/dsb: drop the unnecessary struct i915_vma
>=20
> Now that struct intel_dsb_buffer is opaque, it can be made unique to both
> drivers, and we can drop the unnecessary struct i915_vma part. Only the
> struct xe_bo part is needed.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_dsb_buffer.c | 28 +++++++---------------
>  1 file changed, 8 insertions(+), 20 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> index d55858705106..fa0acb11eaad 100644
> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> @@ -3,7 +3,6 @@
>   * Copyright 2023, Intel Corporation.
>   */
>=20
> -#include "i915_vma.h"
>  #include "intel_dsb_buffer.h"
>  #include "xe_bo.h"
>  #include "xe_device.h"
> @@ -11,30 +10,30 @@
>=20
>  struct intel_dsb_buffer {
>  	u32 *cmd_buf;
> -	struct i915_vma *vma;
> +	struct xe_bo *bo;
>  	size_t buf_size;
>  };
>=20
>  u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)  {
> -	return xe_bo_ggtt_addr(dsb_buf->vma->bo);
> +	return xe_bo_ggtt_addr(dsb_buf->bo);
>  }
>=20
>  void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u=
32
> val)  {
> -	iosys_map_wr(&dsb_buf->vma->bo->vmap, idx * 4, u32, val);
> +	iosys_map_wr(&dsb_buf->bo->vmap, idx * 4, u32, val);
>  }
>=20
>  u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)  {
> -	return iosys_map_rd(&dsb_buf->vma->bo->vmap, idx * 4, u32);
> +	return iosys_map_rd(&dsb_buf->bo->vmap, idx * 4, u32);
>  }
>=20
>  void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx,
> u32 val, size_t size)  {
>  	WARN_ON(idx > (dsb_buf->buf_size - size) / sizeof(*dsb_buf-
> >cmd_buf));
>=20
> -	iosys_map_memset(&dsb_buf->vma->bo->vmap, idx * 4, val, size);
> +	iosys_map_memset(&dsb_buf->bo->vmap, idx * 4, val, size);
>  }
>=20
>  struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm,
> size_t size) @@ -42,19 +41,12 @@ struct intel_dsb_buffer
> *intel_dsb_buffer_create(struct drm_device *drm, size_t
>  	struct xe_device *xe =3D to_xe_device(drm);
>  	struct intel_dsb_buffer *dsb_buf;
>  	struct xe_bo *obj;
> -	struct i915_vma *vma;
>  	int ret;
>=20
>  	dsb_buf =3D kzalloc(sizeof(*dsb_buf), GFP_KERNEL);
>  	if (!dsb_buf)
>  		return ERR_PTR(-ENOMEM);
>=20
> -	vma =3D kzalloc(sizeof(*vma), GFP_KERNEL);
> -	if (!vma) {
> -		ret =3D -ENOMEM;
> -		goto err_vma;
> -	}
> -
>  	/* Set scanout flag for WC mapping */
>  	obj =3D xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe),
>  					PAGE_ALIGN(size),
> @@ -66,15 +58,12 @@ struct intel_dsb_buffer
> *intel_dsb_buffer_create(struct drm_device *drm, size_t
>  		goto err_pin_map;
>  	}
>=20
> -	vma->bo =3D obj;
> -	dsb_buf->vma =3D vma;
> +	dsb_buf->bo =3D obj;
>  	dsb_buf->buf_size =3D size;
>=20
>  	return dsb_buf;
>=20
>  err_pin_map:
> -	kfree(vma);
> -err_vma:
>  	kfree(dsb_buf);
>=20
>  	return ERR_PTR(ret);
> @@ -82,14 +71,13 @@ struct intel_dsb_buffer
> *intel_dsb_buffer_create(struct drm_device *drm, size_t
>=20
>  void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)  {
> -	xe_bo_unpin_map_no_vm(dsb_buf->vma->bo);
> -	kfree(dsb_buf->vma);
> +	xe_bo_unpin_map_no_vm(dsb_buf->bo);
>  	kfree(dsb_buf);
>  }
>=20
>  void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)  {
> -	struct xe_device *xe =3D dsb_buf->vma->bo->tile->xe;
> +	struct xe_device *xe =3D dsb_buf->bo->tile->xe;
>=20
>  	/*
>  	 * The memory barrier here is to ensure coherency of DSB vs MMIO,
> --
> 2.47.3


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 391A991B906
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 09:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1AA10E128;
	Fri, 28 Jun 2024 07:52:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fgzmLqWZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A26E10E128
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2024 07:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719561169; x=1751097169;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LGDZDx2okE4QsSaT+4rPPiauYs01hqPDCXNHdbxrZ1U=;
 b=fgzmLqWZkg/3qt4QU1dc6KwQMjzRLuGLNadzYwSrnZ84A8YB0D24wMzo
 x/tfgW8FsPKXzO6KdBVboXBMzDchlIILj/UUG99oEOKgK4rpGmkflC9dQ
 vZ3ESFRxsfUbMtHStyZFdXLDWy5Xow6oRH/I1roRkbYZlNdCPR4tDL/QS
 Ff/oNyO8FfGWC49f1jeZ1LpWGsUk7c1bdg7hWCL3FmT5TZz+KPSBvmIJE
 VyFAh/i3a7K9e/FwQ4ETdkVAdMZwNjpd5ACRtyfEdBEggl8A23L3EVGi2
 ET/aGFcDI5KM8IuazmTN15LJtw+V9VhghDvObGDSqus41vOpMJK+zNZO/ w==;
X-CSE-ConnectionGUID: 4t/5FXnzR5SbxvVo3i+Hgw==
X-CSE-MsgGUID: khFvd4uhQBqMNOSgVtf56A==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16471130"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="16471130"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 00:52:49 -0700
X-CSE-ConnectionGUID: 9SsNy9cmTOKZmlDm+h5jFA==
X-CSE-MsgGUID: sAnjf+/RShWT6IjpMrV4cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="75394917"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jun 2024 00:52:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 00:52:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 28 Jun 2024 00:52:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 28 Jun 2024 00:52:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PqXh0fYUUH6io7wStNprnIOL8RkwJ/lulcClLidXaBbIr9iFniumN4rOk4YnYs8QIxgZo0WFilWQ9URDapaOJl1WXSfVDFG+Tw51CuEpG1jVpETqnO2FH5Fh9E4xoQdQJduafoBh18g0hcZAepisPSRR9DFyTpKnL35ZV2lAjYljXeqQJeeIpMUTzu7FS+A231s3CEd6VM24alNwBaoKCX8NiQbJythbG4jgkF7jdMh442Ft4vUAN1wDDILcd0yXVKeC5moQCApFw+8e2vtKbp1zDn6CwoiyOYdyvJRTf29X8ZFalKzzndbQjz0KVyeJmPX2zTys2BGXqExYorvW0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3AqatfiJByxpQx34qauqvOQ1nMuYiz1jlub+fwPDubw=;
 b=UY/2Ixvt8lkpaxmX2IQOxA6AroqEPSNoukAKhv/hsU3ZkcVLfHabR4GMGW/eys/hrqURI5h5OC5iKzx8gv1eXNIAhgeBw6KeCA8ws3eLcYfCgep7MQEsXaqa54sgtG189YorrDTA7FLDoG4IuJWKuiVaY9k0tsRCvOsG4Y737WwM1kE7IUdzM/WEN4ZBPjMop32fUOkmgPsx2JeH4vrDWNep+rvVRcqBfkhI34UJGzbTbuG32D/Sf6oI0WrtBWDbmaMTpxAi1hVD6/WVSbpCys88zvwRiHEzWukj7n5jSFVQJtQsYYyose/B410HnbK+7xnfQZXJ7h1/dsTno5OZKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB7343.namprd11.prod.outlook.com (2603:10b6:208:424::21)
 by SA1PR11MB7110.namprd11.prod.outlook.com (2603:10b6:806:2b3::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.26; Fri, 28 Jun
 2024 07:52:45 +0000
Received: from IA1PR11MB7343.namprd11.prod.outlook.com
 ([fe80::8fd2:c734:bda9:b14b]) by IA1PR11MB7343.namprd11.prod.outlook.com
 ([fe80::8fd2:c734:bda9:b14b%2]) with mapi id 15.20.7698.033; Fri, 28 Jun 2024
 07:52:45 +0000
From: "Kao, Ben" <ben.kao@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v1] drm/i915/dp: Modify DP lane count from DPCD reading
Thread-Topic: [PATCH v1] drm/i915/dp: Modify DP lane count from DPCD reading
Thread-Index: AQHayS1emKudccGHBUiS1c5vLjrlYrHcyXAAgAADM4A=
Date: Fri, 28 Jun 2024 07:52:45 +0000
Message-ID: <IA1PR11MB73431AE08B82120DDE0FB089EDD02@IA1PR11MB7343.namprd11.prod.outlook.com>
References: <20240628073013.17233-1-ben.kao@intel.com>
 <87o77lbjsv.fsf@intel.com>
In-Reply-To: <87o77lbjsv.fsf@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB7343:EE_|SA1PR11MB7110:EE_
x-ms-office365-filtering-correlation-id: 91591c8c-e5fe-4727-3077-08dc97474c0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?2PvrPabadJXnlNK6kRU648ny4bGgi7KQoqhsA2SmEiNKVjx5/3ToEon0wwcT?=
 =?us-ascii?Q?vFnZa8JzsV0SyzkxKu3YIfcbyLXg/OWWGRIEKPRAOkByctcmzZke75QcadNM?=
 =?us-ascii?Q?hjgm3Ea50izI5u2jtMrWtiN2ys8MQ1PUtzOt+tI00GLw0JrP+AMQXPpzBj2A?=
 =?us-ascii?Q?+30nyejUNXvEiPeIwvhtYsmcS2DEPryNs3CV0CxxfB25zaSavEt22WN+eNDU?=
 =?us-ascii?Q?y+jZQZgS/IKBL9tjmSVvdkhnOSxrHHgz6kG2f6WNX/AlH99vbhQ2sMJu7c5o?=
 =?us-ascii?Q?nZoHqRdj+nDw/wyzkMa1i2ws9DZWNUSwxdzPDi5YhexikiS3HPyb6Zr2fXQR?=
 =?us-ascii?Q?DPV5e7P7Axrj/G6h4j3Uvk0VwWGsnEAsMlatRNcQqFHDoOi/lnWTF8OWtt1c?=
 =?us-ascii?Q?dt9eId45mmj5NMVbauhPLLKcdFegrzeG+oK1L/lCSAsihh/b0+UzF0r3srpl?=
 =?us-ascii?Q?MynSBzuHhdtO0yPDRlS4g1ceOwxx5F94aVVR7BF1pkE/laabVufKIAnYJ3oH?=
 =?us-ascii?Q?CaqTp72TbLe3TOvAGZd36nEgBPoIaxJ86073sQt3Mq+quVnNLKgFKJgzAlrl?=
 =?us-ascii?Q?9M7QxSAoqbuHZredGLpfOGz2ZMLmBwCyPWD8deBNGtFtQf0p7bqsr/nx+A8v?=
 =?us-ascii?Q?I4dAWw6a5evBlxdr9Dh/ReNZBMTL2fZYLCmMeIfDjRBWTrO0GnDTQFC5SHkr?=
 =?us-ascii?Q?OeYDmxfoQJXo3rFbGuAcnxa1kX3ipjU2V4a12g3+3cam/L98mtuz7NxvoF5T?=
 =?us-ascii?Q?PW/MML9G8w+VhJXPm10l8Ul9kXOCe6HbRp4A8/onxGiPreNP1LhCH7Bbnh02?=
 =?us-ascii?Q?soSWw8FWlRUx76PVtI/EC8uTaaLLziIlr9DG1ty30UFAERVmI7U9qN7voXY2?=
 =?us-ascii?Q?5bQffWSv4H2uufIP5aLYKyDdugRgJwf4KuznNxUhai1k4tiQWob4booegPMl?=
 =?us-ascii?Q?wt5a3hDDsoGJcxtkTSN0WcLwjamm6n4UNIaCuni9vaFmrShsxk6TzRdM5CJr?=
 =?us-ascii?Q?jZWDgqARyx3mLN24TSQKKrH5w+MlgtnqzyDqlC79O240iGFqslnE5rTzm0Kj?=
 =?us-ascii?Q?b/+OQb8tbuG/rPRWKf2rG6OnX8E+k/9BbTw4nLZN2TxSf6yVCdkPeLpvAp0J?=
 =?us-ascii?Q?sRKMxCFZ2rZTmxHG25KCVm1iSaVLWJBFWKZLyKpPphhKgotmhZvfykAFt2wy?=
 =?us-ascii?Q?3wkt1rYNduvwXZXGjfOEuXtMqRTwsPn5pyUHXSn1U4p4Sc0dIyQPnOQdr/Ai?=
 =?us-ascii?Q?6t03fOaMQEzYo3y4O6wY6eElBIRLeQDkArjuqy3vskGvkXA0tH5vEupF/D+F?=
 =?us-ascii?Q?hkUwQFvTcC+dlSfe1NUpWoo8OhEjeQ0XRHzHaxEGXMZbWtZWxkohtwWIQWjK?=
 =?us-ascii?Q?9etf83E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7343.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GUShcCs8CaUnKou1a+mpzdRMHC/n+nAjpElskc0HoEFkhyyhg9TW3AevWK5z?=
 =?us-ascii?Q?0CtzlavpmTzZrYokRMZSXShr99rnSPjbOtZ0RuSeLidn5IZdW4ziPMawxEEN?=
 =?us-ascii?Q?BQqFbkaS/WCo5SQuiS5GOXKaPuUOfrZ3fsCxfYA6FZtmBiWHfwuPKcwQjlhb?=
 =?us-ascii?Q?doiy5hj7KPOG8+8q8vIrmKhalQb4dnxLrrOYLxoLzTSKc3h2sis91pqE7fot?=
 =?us-ascii?Q?v0VToeaj9l2BlCIb6d/vOY0Wmo04O6d7usbAcpdGJVv2DqFWCloS47/kI6Hy?=
 =?us-ascii?Q?9S/1tsfZAZqlSfh3FEZFC7gQIOaYWBsXHzffZA1O8d9yEGsfOcFl/8CS0ocO?=
 =?us-ascii?Q?dS0MRBFWdVg0bACCqeDmJgn8mwO+PIncOh07y5d9aze/r287pUgkIXxDTHD7?=
 =?us-ascii?Q?H1GPJaybsjM/ns3xEJLsPqCAhztihLfYQ98aNhje21XNQgopCgcfrYcrli9D?=
 =?us-ascii?Q?MSrXEhBwF34SJ+pGO5tuRi3rtyWkhxQ8LOEvku3u8/zbkU9iEBjQe4aqdl4g?=
 =?us-ascii?Q?+6T5dpceKFyt7Sc+SmqlRyzpHHAszp9xWKshhBpqp80SlcKwaI0H8cDLSvzV?=
 =?us-ascii?Q?1onlLhx2YSWduUw22UQW9gw4wzrh22wLmOWmVGR1vhIJ44/QXV148mUKHdGK?=
 =?us-ascii?Q?4c2hE0FrZnku+EjwEnJWZYTuGtP1Q8krnFejQmTG5PXhCWLr/CF27uBVT1be?=
 =?us-ascii?Q?o3VdmrV61WxPWD3iIvkHVDKMcJWL5kkBGGpWzsNeaGFNcvVskXtUHQpsD9iz?=
 =?us-ascii?Q?elLZnZaxW+DBzfU4ZQjn9fXXgxaI+cPlcSwHM/lLBeVyc39XzkG+iezGwJEX?=
 =?us-ascii?Q?YKRDOO/LnvuKAHLMznt4PnUeQ13oJj3F6n+lBajmWSkKCLlX5HXkL7Hrj3FL?=
 =?us-ascii?Q?l7R5vRINZlBg4t95yMY+WRT4pVQh7YZiOHV7SGqFUWYeXaAXQ03dpoNuH8mZ?=
 =?us-ascii?Q?fPsNLB93Huov69zsbLaiCMQhhKXYhhJVXNZ8bEtjwXerqCPq8lNVuI0h+VRL?=
 =?us-ascii?Q?aSwfEPdRYCxU5Zc5LMh0pBMJtLtigIABuMDactTBZnZzXZz4knOxJgd7abne?=
 =?us-ascii?Q?OUT7T9zylVz6SA0XcH1xenJ1Jc2Qylx3FBOnb6QIKJDuBPj07uTwGfOib+78?=
 =?us-ascii?Q?9V+2HqHRKzE9CuOOgorKiT09w6pDNs4+WjqRjdIT7/OGe0qRKG52mbB0NH8V?=
 =?us-ascii?Q?3dl2NhLXxbZHF0uF8kEc3LGXNjxigsdQKf3fjl3Gq2ixcha6qHDc4dYTIkNc?=
 =?us-ascii?Q?mszkK6YLDENbIgj6C2ae/EKEZWU95k01oS+4MNi1Yxw862QlF1F0M00aaQVq?=
 =?us-ascii?Q?yal04KLhWf7CdMGv51nUyFKyPGvKwLJCUtp1d3Jj7BXSMIkATjAoDEXAD2Ac?=
 =?us-ascii?Q?KWNsI0MOQ7jYgeapXbTgzJhbsYFB+i60CZFMmN+4HnEICDE6JxHw/A+W+reV?=
 =?us-ascii?Q?//2NMJExQtjPumZVHwOx24aL57CegIKjVtk/j037yLQummpikHj5juRZBpcJ?=
 =?us-ascii?Q?0d+iZiSjW4yXfGSgaXEfa1fo2BfJSOpuqmQ6xSq5d0aKCc0WvstQRt/dO6Gd?=
 =?us-ascii?Q?sYVBDitvWXSkUzPWg4w=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7343.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91591c8c-e5fe-4727-3077-08dc97474c0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2024 07:52:45.3980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8PFK3f9mM6FO2GS4NczFwFb26bGH4tVCV41YdhhIuuqvLrQ2Dc0QY1sxi9qs6V/5b/MozQLGoV5w4BwEFM8gFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7110
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

> On Fri, 28 Jun 2024, Ben Kao <ben.kao@intel.com> wrote:
> > We found that the external monitor would be failed to display when
> > hot-plug with dual Type-C USB cable on Dell WD19DC dock.
> > Due to the host would receive 2 lanes setting when the first HPD, then
> > receive 4 lanes setting later, but the host only sets 2 lanes DP and
> > skips to set 4 lanes DP. I modify DP lane count if the current DP lane
> > count is not the same as DPCD reading.
> >
> > Signed-off-by: Ben Kao <ben.kao@intel.com>
>=20
> Please file a bug according to [1].
>=20
> BR,
> Jani.
>=20
> [1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.ht=
ml
This patch is for the bug number 11195
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11195

>=20
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 5b3b6ae1e3d7..a9b9023c6744 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5545,6 +5545,12 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
> >  	if (!intel_dp_get_dpcd(intel_dp))
> >  		return connector_status_disconnected;
> >
> > +	/* lanes count changed */
> > +	if (intel_dp->lane_count !=3D drm_dp_max_lane_count(intel_dp->dpcd)) =
{
> > +		intel_dp->lane_count =3D drm_dp_max_lane_count(intel_dp-
> >dpcd);
> > +		return connector_status_disconnected;
> > +	}
> > +
> >  	intel_dp->mst_detect =3D intel_dp_mst_detect(intel_dp);
> >
> >  	/* if there's no downstream port, we're done */
>=20
> --
> Jani Nikula, Intel

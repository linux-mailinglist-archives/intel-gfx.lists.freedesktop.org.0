Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A26B17E6407
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 07:49:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD68410E1BB;
	Thu,  9 Nov 2023 06:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3DDC10E1BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 06:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699512551; x=1731048551;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eIIPpY0LKJ4V9vD0XMXcytJIS+01dntuHDlpwhm4vDo=;
 b=Ez8ZC9e69e9D62QlgYdm/RS+4UjwkoujLWBC3D17nD5S0ooZTWyiC3Cx
 KNX7/obOl3o8HaeveknabVvGZuE0qLOCDCm4UkJLM0CIGhHa6nzNXd73b
 59i5T1dDUhY9yj7l2lPSr0c1WE+lcBv+Nr1v6fXm+g2SHvSc9c1tRjl+u
 6m0T9cuC1RP9jg80tDR4X/AjAt7ocWHfhtIf0Kf/zAO5v2ypc7uF5UIrI
 NVG/siW6kt1B177UhQj/MYIyBwvF8VRSTiyBEFdsQVi0wIa+huf+uU+T6
 ro63q/115lFf9x9KR8/TpZXMRV4CLaQZvECmHjWQwPcxUZKlbfNI8OqPm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="389733562"
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; d="scan'208";a="389733562"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 22:49:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; 
   d="scan'208";a="4642502"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2023 22:49:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 22:49:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 22:49:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 8 Nov 2023 22:49:09 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 8 Nov 2023 22:49:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e7fDPOhSipPWxmPEAQ51vQUKKyM+cOIshNI/4cTKS9A3hp70MADQzWLmrbH+/GrCIqOyjpG+koT8zoAxdECQJuB+nK8KomIV8UqyePW7ci78Y7Urow2RILmxbk+9C3g7jsbZryNYOq+TCq4uelhyUt4xWIPzfDQKWChBy9DxdnuygyDBBGy6MWU4HfWtjSjhajyed2iGex2BpjAdOYWoLVthAgjs3U2z96ZrZjE9yc9/OBQhjpDU+/AeqoHUzAFUXBgzfBSNY2j+bfHZjSc5hEjZ8rRTJDStHveGWzs+BYUuD3VY/z4Ieg+bMAnxk8II9FdFwKf+dhF1TQWn1XMsww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KtPfr6jSBf5PTu8MoHYJyQQPQE8u951UWyNeV3MxvSQ=;
 b=XkhQK7g6bi0fqsgN8Q7mHKqPn4o5nJ3DWkQ2Y67IvZyNR8z6sWnJ2t73ZQt2Pf9kZouCMEMyFZur8Yl5PcnVgO/y9R2GfgNQQe2kQqLbsUvSLCTHo3BseaQikHTLsRoD3klQG/QST5XVjGdwB2HMvcDXa3z3xgFO+nWSKLATcc0gUeg39RdKeAhn+fWZGLZEmGOoYn6qd+CeRQvl0azteCtmOVHjsr/MOleNX9l4yj9CvKUMLqpI8NlLDDRaKuEX+AvFfxKj+HGQ2N4dSvNo9Mrdq4M46AnXHD0eqezaJKM7DWdtZZqIHUroAEoOiVyNW8UriChNHpvJlS+2QWNOSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB6442.namprd11.prod.outlook.com (2603:10b6:208:3a9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 06:49:07 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb%4]) with mapi id 15.20.6954.029; Thu, 9 Nov 2023
 06:49:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Ignore max_requested_bpc if
 its too low for DSC
Thread-Index: AQHaETJA2ZNV0U50F0SQChMKh/UK4bBxjkZg
Date: Thu, 9 Nov 2023 06:49:07 +0000
Message-ID: <SN7PR11MB6750D4F10D0098B25ECF223AE3AFA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
 <20231107041740.3718419-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231107041740.3718419-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB6442:EE_
x-ms-office365-filtering-correlation-id: 648c1b35-d8ab-4c9d-e8d3-08dbe0eff882
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DLuiru3eUDf+2QOOoXwTxa+n+snxqI8ETgSSXh3oCm9Kbmv/6DbY1lh5+AgbWhQ1dGToL6Ynq+66ehQ4Dzem2vJ14pU25QeGBzvfKZdIvkj8O1+2ulvh9oWjBWWpkpdF+x7iLonpfG7OAfATs/+dHx3/zHv2e0QpZkjmYpG65YkPyUg9bdF9EzKNW0s6C9Q5agQBCRH9JxENQn0KPds0crWxP1IIc+F4VMKeORHD+t4GwuI6MtqeqiXhZ06hzNKq7kzPWYwdeUzFcPT17VFnjkJmLmsCTj9c1RXNG8Da/hSGNeOkYWjkdVdHZfyQjFEMDum2+/EUJBKYwyDKexOP+Bp1goLupojRtR+xYDeuua98CkL6q/wh+Bg4LiERnOfy9XqS43XyWLLg3r5Mcvx+4fHMOeM850lv1jV1cWx1Vnnuy9wgHxqJZbYim2WzY3VBdpKi6LLsW4uwkAYSl7DKkO7YX41eSUvVSbaFoYSaD9M6MRS/Emeb/iEQcLsmHS+O2j8dGcfltjNhbNv2HE9WIK2VmFXnckkDs/vncGV5bEGiqL6g8yUUo0LdKqpfSp0wL/R4/EtyJtZSTd6nrWadxzlMLmq0977Xw0gygpkyMvk9LmaMQuFKd0Q+hwWOwxkr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(136003)(376002)(366004)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(55016003)(2906002)(26005)(83380400001)(38100700002)(33656002)(86362001)(82960400001)(122000001)(71200400001)(53546011)(478600001)(5660300002)(7696005)(6506007)(41300700001)(66476007)(76116006)(64756008)(4326008)(9686003)(52536014)(66946007)(66446008)(66556008)(110136005)(316002)(8936002)(107886003)(8676002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BkJ47VY2s6EAjRtmjxe9ivp/uJI3W0tN/GxqxkGiKXyTwCRANF3fSxfj5ESk?=
 =?us-ascii?Q?Io29uuSrwA1YOR9rxu5xF/QvDtGzUl6u37zs3sXDeaj5Odovfdl8SUBPxxJ1?=
 =?us-ascii?Q?GzraU61jqVqel6hP9ialCbTem85ouveeyyYbL6Y59IpP7ojVWFrk9qyZfVlf?=
 =?us-ascii?Q?FfWsz5NX19auxqtGLc91EK191EOy9rTOaPCl1RbrHGk5/7uNp45sspvIz62q?=
 =?us-ascii?Q?xdBrN6qSgpjvkL2w3mrjj8qbtM1fCVgB1JFd4z3dN4ikeSaYEfUQ0s8G/jz4?=
 =?us-ascii?Q?aePGmGWb5MT97bV6tYsFDVHR6AVf11dhcPYoW7eRbNxOV5LGuk0eXLxKi0kq?=
 =?us-ascii?Q?OoqTGrWrIj3CXTejWUxfU4fJ1lmMhf8MAxBISPikEhDNVCP7f+mNHitTTBCj?=
 =?us-ascii?Q?/z0ahU/qhGzAIKAzFNb+Dj3/QnV+2F4BLQ+4Pdiq2uaU57aIpXL7C+/6Ct/n?=
 =?us-ascii?Q?DGUT6D39v/IMuD8XR+n5hurmL6m4BL3EYF3H2qdMxG5Xc//Ym5/PJbQg0M3b?=
 =?us-ascii?Q?dyvLPXhEdLuAy9o0I5QvpQtxnJJaqREOuy/F1IaELJZkVRdCyy5mN7mqKCFB?=
 =?us-ascii?Q?I6bRqFSnYvX5N8lOHmoxyHigXlih2BnQDeku0GVVB0SF7mcXTkPgmgaTomh8?=
 =?us-ascii?Q?y1oow/0J5pHv3YUOBofXrrXM1D0e1eS6Q9+p/k0gFPaH+5pEEYO+bph89TI/?=
 =?us-ascii?Q?6qlpnhWmnNR19oOWuflRvDuMDD8GDmeRIh37TniriBCMMfZKFotf85bMeVKk?=
 =?us-ascii?Q?PkBsUE4P3mDnQim1YPOROegKmzT5MWMQHKYyjRsGYHfCRiJpVtNCYxqX+sj5?=
 =?us-ascii?Q?J2aVh431NbVdnkEtk8y7A5XK2kh0fIH//BoC8FiDeE8DTfHTfWqW737yPrbh?=
 =?us-ascii?Q?cTo8L3bjjUpI+LK8eDWDJbZR+zbUXdUiNk7GVTVxZqLg4CMtyjp9O7nBHSmc?=
 =?us-ascii?Q?679+LDfcX9d+R8QdA/rJ7HBAVcJzVY0HX1dygamQk6qJshuiHrUfFq9yiQd/?=
 =?us-ascii?Q?ZVNB4D+RjFH3PQFX/3e4sEDx5y3w0uADH6Uu6y+0HmUZAVet2XFfaqWYnfaN?=
 =?us-ascii?Q?ecEg/n0DN93JWmD26G0RD6Q5H/y+LA9TgvVTntyR/lT+MM0eA/9Gh0BjjjAY?=
 =?us-ascii?Q?WdEUcysQ568M8wnQF8xpnbfxWORwUKOfDJt54V6mZRdhZUh/OMcDoxhahTbr?=
 =?us-ascii?Q?83JwS7HYPSPX8NgO5aeLkTSgOMCEX6A+zRq2J93GothgyFBhGWyHFN0kCqHE?=
 =?us-ascii?Q?AGr3OQAIU0QBdX0HrNobmQGTD1722T6xeAGUQcq3Zkx3B4RQwddxL8zRsXSc?=
 =?us-ascii?Q?gt8ziRyq48JrZzj5Tq/3089qhKHTKb2ASxJtHUc2ZTlKezw2xOOPgOpKHATK?=
 =?us-ascii?Q?dOSJ2/GycB7jv+irIURkcCbsLikk1nMM/9U4Fz/+qGOHj/eOeznfAANKnhgF?=
 =?us-ascii?Q?/7vC4RrPWqg2OdKJPCyKRacq6BxEETFpp8YRmWPD3o7czPXMNqtO+qp44WyY?=
 =?us-ascii?Q?QalVnuqKXD43RPLQLeWsd49ACXhRoeA9cvxa4KLPlPVH6IHroVpg68dDgk1x?=
 =?us-ascii?Q?ct7y3bNOjdrEZWTZj/vH990Pu0vohIrEPPYpdcEJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 648c1b35-d8ab-4c9d-e8d3-08dbe0eff882
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 06:49:07.3659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xB6sHl0Orno9aK8sFd90Q/WbhMFj2EHCZwhuom350z6/QyNg7zCPxDdPWBNi7n6kwU7L1hY7hJo7h62uuL3Pew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6442
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Ignore max_requested_bpc
 if its too low for DSC
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Tuesday, November 7, 2023 9:48 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Ignore max_requested_bpc if=
 its
> too low for DSC
>=20
> At the moment, while choosing the input bpc for DSC, we take into account=
 the
> max_requested_bpc property. This creates a problem, if the
> max_requested_bpc is lower than the minimum bpc required by source with
> DSC.
>=20
> So consider max_requested_bpc if its within the limits that we can suppor=
t with
> DSC.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index abc718f1a878..ea4c42a5705e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1578,6 +1578,16 @@ u8 intel_dp_dsc_max_src_input_bpc(struct
> drm_i915_private *i915)
>  	return 12;
>  }
>=20
> +static int
> +intel_dp_dsc_limit_max_bpc(int max_requested_bpc, int src_dsc_max_bpc,
> +int src_dsc_min_bpc) {
> +	/* Consider max_requested_bpc only if src can support it with DSC */
> +	if (max_requested_bpc >=3D src_dsc_min_bpc)
> +		return min(src_dsc_max_bpc, max_requested_bpc);
> +
> +	return src_dsc_max_bpc;
> +}
> +
>  int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector=
,
>  				 u8 max_req_bpc)
>  {
> @@ -1591,7 +1601,8 @@ int intel_dp_dsc_compute_max_bpp(const struct
> intel_connector *connector,
>  	if (!dsc_max_bpc)
>  		return dsc_max_bpc;
>=20
> -	dsc_max_bpc =3D min_t(u8, dsc_max_bpc, max_req_bpc);
> +	dsc_max_bpc =3D intel_dp_dsc_limit_max_bpc(max_req_bpc,
> dsc_max_bpc,
> +
> intel_dp_dsc_min_src_input_bpc(i915));
>=20
>  	num_bpc =3D drm_dp_dsc_sink_supported_input_bpcs(connector-
> >dp.dsc_dpcd,
>  						       dsc_bpc);
> @@ -1959,8 +1970,11 @@ bool is_dsc_pipe_bpp_sufficient(struct
> drm_i915_private *i915,  {
>  	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp,
> dsc_min_pipe_bpp;
>=20
> -	dsc_max_bpc =3D min(intel_dp_dsc_max_src_input_bpc(i915),
> conn_state->max_requested_bpc);
>  	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(i915);
> +	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(i915);

Seems like this change could have been a part of the previous patch.

Regards,
Suraj Kandpal
> +
> +	dsc_max_bpc =3D intel_dp_dsc_limit_max_bpc(conn_state-
> >max_requested_bpc,
> +						 dsc_max_bpc, dsc_min_bpc);
>=20
>  	dsc_max_pipe_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>  	dsc_min_pipe_bpp =3D max(dsc_min_bpc * 3, limits->pipe.min_bpp);
> @@ -2020,14 +2034,14 @@ static int intel_dp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  		}
>  	}
>=20
> +	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(i915);
>  	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(i915);
>  	if (!dsc_max_bpc)
>  		return -EINVAL;
>=20
> -	dsc_max_bpc =3D min_t(u8, dsc_max_bpc, max_req_bpc);
> +	dsc_max_bpc =3D intel_dp_dsc_limit_max_bpc(max_req_bpc,
> dsc_max_bpc,
> +dsc_min_bpc);
>  	dsc_max_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>=20
> -	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(i915);
>  	dsc_min_bpp =3D max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>=20
>  	/*
> --
> 2.40.1


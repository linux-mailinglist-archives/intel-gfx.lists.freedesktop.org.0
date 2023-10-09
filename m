Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6F87BD64D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 11:06:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CFE210E23D;
	Mon,  9 Oct 2023 09:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E173410E23D
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696842385; x=1728378385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F+RUvc79jXu/ffURyWFNfIN/py1dGAcC5nTkbaq+Lxo=;
 b=YHoK24wQ09Vi5jU8EKGjWNhEOjoey1RXCfwZiN1sgTz9aj+gblCckE1C
 2GaE394QChBUF+FpToN/JkgFlgit1H6J5weK965U2Aqho8jVi8MbmXN+c
 02c6eJSkoT2SPpNb971d/CoEeWILryLybJb4DOVMJlV+hC0zdbf4EuTES
 2U6jUYEO/ZTzSroKD4+/Qd+V74I4kbcyGTLyVl7xWaVk3+3oVjp2VR8sZ
 BDqy2W94ZR3fJVXMUvr5oRwc8/8jfzobB5QqiySC/npmoZPlokWnYkgGQ
 oNkWU8p1q7Axi/yMj3sysLU07GxS8/oqv2r70mVOmWtlF0roOCBlh/OPG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="363457029"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="363457029"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 02:06:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="752954887"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="752954887"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 02:06:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 02:06:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 02:06:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 02:06:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=exkQJOuCX4vZbn1i73e0+nKnXAiDxlhg4ECnyA73htdbXcW1R1GVib1mPKGWJJ5PAj2y+/ivuByugc9h885q0oAEHWx3bOTxX87nETZ0pd5KtHI+gc2ceyx1wS5Ec7njcJf2iyfY9U/CnuPTVt/m9r73PdgTtS1NgIeQsvuY09MqG4rgk9uz6o0z10y5b1NZIAAR6S+3p5R2W2Vl45qru7506W8XdAfnFUp/4RN2jp6H5IWX394OFzLXOcDyU6nRqtztDqBK5UA04wny1DOm4PxDIXiFGW5X0PPbb6dkEBUlWWL6fh6lszrT5n5HVFpLE0qTNLLAriw+RsTxDdoceg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZMAkKidtjN4nlzNQClIE2y+yryfHyR1wHU7cjwHzuIM=;
 b=EuD/6TVTq4+hrhdVGENm+rM305TnxGd3tAMMF77wXPPxGt15E+PZvEpLSrZ1SHIrpr0Vea1EFDFgI0QWjm5TyGI6JdzXZxsTj1jQylamhMZSd2UFVmptPthVU2sT1OBBPp100rbt/wzc8BgqrUlfFC6/imaCJYRkeOo+qzh5+SreQAO8J9lb+vxU5eKHzNT0PHfbpu/FFMMrgxDdwpONFxctHD2cUlyFtPzhy6H9wGFN33Iz1m19VoTJB3LShQAEUlK65JU5QAVlUUJU5JTunSon8iz62xG6Fu3Ztc2rMKBOLXCKuYjjv0kErYedyu8zZXsFbLvng8ktQXpV+qUZ3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB6793.namprd11.prod.outlook.com (2603:10b6:510:1b7::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.34; Mon, 9 Oct 2023 09:06:22 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6838.040; Mon, 9 Oct 2023
 09:06:22 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/hdcp: Move checks for gsc health status
Thread-Index: AQHZ640GZr+XT26ciECBN9Hn04uOn7BBSHow
Date: Mon, 9 Oct 2023 09:06:22 +0000
Message-ID: <DM4PR11MB6360B14F857CED959D63926DF4CEA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230920063611.242942-1-suraj.kandpal@intel.com>
 <20230920063611.242942-2-suraj.kandpal@intel.com>
In-Reply-To: <20230920063611.242942-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB6793:EE_
x-ms-office365-filtering-correlation-id: a888bcf0-0fe4-45a6-9ae3-08dbc8a70236
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0C0ZPq/ZqDVBqsqlQgNRmuQIvlLstEz9plzLjni93EpYQeVxA5jpNWvOA4Pt36DBENjbaggwQ18h5XeS/xJtaWwQ1a8IBgzW65lHLTSiCWiBC+yiyM5m8GxxB5QA25Rkr3wTzW6NVHCUkXc/74xSJb6vf0EqNcuucQsx9vbY4mR8NbmOc0sZX89o253cmFUaJMz6lFBkGoysDw8LMnAmzOkrGPiifjMhnm1fDg4vcUb8YoebZ4L/JWH1H3gCr97EaBD2uYl+R3/KZ1ogcEYJ5RKWaKU5iOo2+dqHQeyab6M/hoHdlxnr0s2dVWAlaMSPNohd9KwcI8sHO9k7rcoiqqdsBvC/DHhEo94g0kKdLnhLJczfNSqCgoT9sPSVV1KegutTyE5/Af606iWZkBB4YLoldF7m3Nf3qK4QBbjKpWS70Dy8NJuC/94FRfzRlr60SnwlngEhCn3v05VUl1wLo3V+al/fezMTCtRPd5KkQ4TT24xlXsUwx4Pw1QlXlijZvm0ZC8TQVoWarj2X8HSEoM0ncyyKCzC/Z+0/r9iYSLoFvhR2/l1z5kd5pH3gkad4wo9oYQA53VuZC/sxAXrbS4A7Pz6/LVyUxDlnJc7oM+vq30kjyvOPMDVO2OyJeEyX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(376002)(346002)(136003)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(55016003)(9686003)(6506007)(478600001)(53546011)(7696005)(66446008)(38070700005)(38100700002)(86362001)(2906002)(122000001)(82960400001)(66476007)(316002)(83380400001)(110136005)(107886003)(71200400001)(4326008)(26005)(41300700001)(33656002)(8676002)(66556008)(5660300002)(52536014)(64756008)(76116006)(8936002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tLpAGQWTmlbK2FNg4r3Bf59ipWwX06m3KlYxgXDEjpGJkTVZdTBrpB2fA6Mz?=
 =?us-ascii?Q?OVWV/0oZQEQhnjLqr7+XPGNEMTKTKiwUdKGjE6JJS9lHjrUnnb5az4xA0O8d?=
 =?us-ascii?Q?BmeugvAQGfEmaVa4zdvlsvw+SKF04XF21VXiToedWUHPm1hBxdWFEsX2+AhC?=
 =?us-ascii?Q?HQ/cBWacKiMtFL+yPZziiDnBRWNTZXlRry5L1n9qNbe+LDHAIZo0J5m89/Y1?=
 =?us-ascii?Q?PYykM39H25kVH/8JTrzmQOwFgY/XwdNz3hOXsk1N6rqq5U14lJ7XELpEjwyj?=
 =?us-ascii?Q?ESZlUgoMNIkIXACk3iEXtPX/o2GX9LzR2waOB3Lg1Gum9dVkT6hiKujPks47?=
 =?us-ascii?Q?LAtb5IXsLCVJ3spWMLHF87E5t5z8ZGz2DcYak4V8S1QOiaegf9q0M/JpAUv/?=
 =?us-ascii?Q?XiIe0WUL/DMRBmSFfZNmEwoV1qRwpbpj3v9HCmkFVdHJ180Uek3RbzFFzALZ?=
 =?us-ascii?Q?tgen11iYJnZ2j873cWif/Eafrm9tfh8Vis4XbJeMjbAvWpdRmUUkXGhWhcr4?=
 =?us-ascii?Q?KtjPjhsudYgSVeySweSxMcSVdO8xuCFOm2BMtAD3/vQW2ZB6OTr1le4J+F+V?=
 =?us-ascii?Q?zHYC+QRnBbdJX1icyZ4+uZx6Q/xFELqC8RB3+qLNPmVPFC5JKAQZeOJDck7o?=
 =?us-ascii?Q?QzP2+X/c4+khgzUT3tv9XwHo/QZHT2yAPSO71ViIUGWG6dRf3uGPsf2eJQhI?=
 =?us-ascii?Q?6vTx+fz/Qv3u9BUHfPQhfImg6QiL6I+C6NKYDfFs8RsCFCR9sJvIbC7ggz6K?=
 =?us-ascii?Q?iqDYEVL3Gz0ChRut0gzubyjlDAEuCWQhxgqn14wRQCOO3y3faXwcuAqOAEP9?=
 =?us-ascii?Q?tUZV/Zg3vGloUl1qqMD8gosGuJM6z6CY+0y2gl5SGHn7VYvPACu37g+To9Xa?=
 =?us-ascii?Q?5O2Vgxo2Jl/z1v4SzPYaAGdpyvWgg7X/cDAWvvYWv6pyK3Jw2iDPoKpjC8ag?=
 =?us-ascii?Q?8IbW5qcnVdqW16J+XEER4vDD4yfd2Uw4jwIOoEJPkPAGoP8YpWMTcpn1S1OY?=
 =?us-ascii?Q?fH3oj7vPafZ+HXfkUZ3hQVzCIrKzabWIMUbaENnJQkL2T8kvRlXna812AP0J?=
 =?us-ascii?Q?BcEvi5KiaO8gJZBalDMSrzgdejiY7XavcK4in3CUGInv/MzBFxwQDSI3A7Bc?=
 =?us-ascii?Q?H9TL69jgtwOqLhxKI3XRZG2nB8RKiqIiMrrfWgnjGBp3CJQ20kdGn/UKPMjf?=
 =?us-ascii?Q?wJMy8OcBVRjVsXWOlKERD31nZJLKjksgldStnBPPRn3D2PB0lRGUdHuJrOom?=
 =?us-ascii?Q?Ugj1oqn4/oFOVVC4uH3hfENKIf5M7TrLEvoykn9TZuoQQto/VsuHFfODR/fy?=
 =?us-ascii?Q?zKgDtJvEsJ21d/UZJMV+kitzB+iyD02R9uYpPJxnrGftWrx0PMEgsqpILrF1?=
 =?us-ascii?Q?iQ1izCFk4tcpSMGScGOYGOViOifT4iwZaYY6mBnfvO+Z1RrW3gflfi9GO4hE?=
 =?us-ascii?Q?qnO2HzoLApdkiK/z3ugpGwItmw/qV3UsTKxLDAKI7Ez1qWHW5qiaVM4QDqaR?=
 =?us-ascii?Q?MY0KMiLkdDuJMtzNwlGldd+zpWv/0dDZ3enHEuH3wD6TUlyUXqN5ujLu6Dn0?=
 =?us-ascii?Q?IUH0gh7MrW4Th6caqU7sZ30Rvvn3dWC+xx0WyD5U?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a888bcf0-0fe4-45a6-9ae3-08dbc8a70236
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2023 09:06:22.5280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x5vl3RJpY3v5M2f9g+pjW0BG1mu4flDBw0J3dfO61uwcI00TBOSijuwrknZsbsvDhUIrKVdrrNo6bilxW7IgYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6793
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Move checks for gsc
 health status
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, September 20, 2023 12:06 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 1/2] drm/i915/hdcp: Move checks for gsc health status
>=20
> Move checks for gsc components required for HDCP 2.2 to work into
> intel_hdcp_gsc.c. This will also help with XE refactor on HDCP's side.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  8 +-------
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 14 ++++++++++++++
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  1 +
>  3 files changed, 16 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 8cca4793cf92..c89da3568ebd 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -173,14 +173,8 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>=20
>  	/* If MTL+ make sure gsc is loaded and proxy is setup */
>  	if (intel_hdcp_gsc_cs_required(i915)) {
> -		struct intel_gt *gt =3D i915->media_gt;
> -		struct intel_gsc_uc *gsc =3D gt ? &gt->uc.gsc : NULL;
> -
> -		if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> -			drm_dbg_kms(&i915->drm,
> -				    "GSC components required for HDCP2.2 are
> not ready\n");
> +		if (!intel_hdcp_gsc_check_status(i915))
>  			return false;
> -		}
>  	}
>=20
>  	/* MEI/GSC interface is solid depending on which is used */ diff --git
> a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index d753db3eef15..d355d610bc9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -17,6 +17,20 @@ bool intel_hdcp_gsc_cs_required(struct drm_i915_privat=
e
> *i915)
>  	return DISPLAY_VER(i915) >=3D 14;
>  }
>=20
> +bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915) {
> +	struct intel_gt *gt =3D i915->media_gt;
> +	struct intel_gsc_uc *gsc =3D gt ? &gt->uc.gsc : NULL;
> +
> +	if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "GSC components required for HDCP2.2 are not
> ready\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
>  static int
>  gsc_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *dat=
a,
>  			  struct hdcp2_ake_init *ake_data)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index cbf96551e534..eba2057c5a9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -23,5 +23,6 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private
> *i915, u8 *msg_in,
>  				size_t msg_out_len);
>  int intel_hdcp_gsc_init(struct drm_i915_private *i915);  void
> intel_hdcp_gsc_fini(struct drm_i915_private *i915);
> +bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915);
>=20
>  #endif /* __INTEL_HDCP_GCS_H__ */
> --
> 2.25.1


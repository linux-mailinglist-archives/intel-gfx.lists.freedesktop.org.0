Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 861A370BA93
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 12:52:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D4C010E2B9;
	Mon, 22 May 2023 10:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99CDC10E2B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 10:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684752756; x=1716288756;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K8cn0UFdCJwolkSGeFudMUZ5pW7YxG5y1hHA9IJxFcE=;
 b=ReyhytKr5wdQxWFY5fA02B2xcTg+pldkOchdTJFDRqzdawEj3L/uuh33
 Fs/TuFYKAuDkM01JrZMyua91lflZX0pjzvuBg/7Gk6erKr/RbGNYsEori
 A136Ln6GHtRHWSR2YXkxsPKNJKJfFMX0iz2Woj05gWFGOpwg39/m2QRNH
 enJwGzsF6QKNAbKnBQuZKQLls6xYkRKhClhqlONQm8ccqemkUrPuEvorf
 AfTf3t9MU/P+SPwR7pLLBaB9FLTBbFLuG89LA77YlJRPc1iPCGnQU2Vob
 jEjAAZUhfkkYSc4Ag+rjcSMSCzFvejoG7l6DEWZ+DIon52XLwprhph3Zx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="418595324"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="418595324"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 03:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="877714841"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="877714841"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2023 03:52:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 03:52:35 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 03:52:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 03:52:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 03:52:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EQQNArIz1OtYgusYNxS0TASM4zAZ2bmckdppryPX1SEuc93pI5TnKRCtgTmG6Gdm7oUmPFOiVNj6zh1E00b668zBTwJOjE96Ko0QYug1bSQwEPb+BcE9WEDNZ0r3t2hWlF6I0ataje6cwhSSawsf0bVo0ZJSxnXvo6K+73qnB3ScfylOJ1T6DS8QGdiNM+HTm3DJzEEOvT8A2Eax0ziv88T/ctdfPQGgUDqCKvcL0pjXjh6es20B43V/5zOp/mnY4QdVAs7Vtn0weQQ8Zhl3XKErzSqKAUqgVIetPjl6LYXIvC65Dt3FKlLoMbBPkCukfe60AYcjDheNA1ZbvS8Dxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RwDDB2WX1CtpaVR/8u7SW8Mqq2Jm+NscHyhPnCMfCwo=;
 b=TeAGhmgiQcCJobBOWNMjgNkarUV4fBulQx8yfODP5e74p1mEeIQut6E6BKek5fA/qFGLn8j/RXBoPbb4G7PszaE7Xh1bYXmkEME27NXaIKRgO2Cy8oT+Y6jf2W2TNJLtSBsT1uaKHLb2pOb1Li5XgHmWVRa8ymYU9ATsqLbZFX/81qxnAj+HKk7hxIEaj75jmWFq2BIclV52v1Dk2FaFUNKYCpGuVb3ee2ZpdcmJB+owZQdjYGnkDwyFES3pV5uw3PREvwt8z0CjoNkafqZV1l4Pqoa42EiWfS2LTJWFRKtIyOMwM5cJS2VHdq1ZKtwHiopQW59IwlCa2Ixk/98wUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB7103.namprd11.prod.outlook.com (2603:10b6:303:219::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 10:52:30 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39%6]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 10:52:29 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/hdcp: Rename dev_priv to i915
Thread-Index: AQHZiVNRnzL6rcsoAE6P2l09SohnJK9mI/og
Date: Mon, 22 May 2023 10:52:29 +0000
Message-ID: <SJ1PR11MB6129F3BCAA9923C348A4A72DB9439@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230518063612.1044370-1-suraj.kandpal@intel.com>
 <20230518063612.1044370-2-suraj.kandpal@intel.com>
In-Reply-To: <20230518063612.1044370-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW4PR11MB7103:EE_
x-ms-office365-filtering-correlation-id: 0c5c218f-11fc-4feb-0f60-08db5ab2a391
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i/xsLF9oAPMYnEVOIfC/oQp8UsigyuDfP0Ud644NrtfuckfNj1m7SYYhOav+LFcFSfS61B8Ppgn21J/JxjXcFmNr0I7wP4NaW8YH/EgK1Rp4xtOyM0V9rQ2LPT+YE9tD5jnEvJVLA7Jp9sJIOzeHni6J7Xb3T+8fmTutNmnlu8uBLebX9/EBc8mev4i/A+AECc/NWSauIEKWPXLZiX2kk0JzHmlnNI10cMQ13e42U82Yf58DV7sruB/DHM5Yy0XBM/NPVfkJ9HOS8IamTML4IYEGTXFf0uGt5fEIJg58qtZgKPXCdtEgHfvGUyIH1ckKbghSTSDoAeE/kUua70QQKKcTRQL+s5zPTg2q+UDLYhMry5VmUjPMTmRDn/2GsyD/b5JqhqkZDsVahXOGjbHuJlldBzQ5Y0M7jaJm+HhugY8Em0bRftkQ5ZUF29naZXlYFwtOjbL7Hf94GLhKqW4ZAjpLytDMsXly0Qlj6V3SnU6N0JzGLmp5+oWDjhFAfBOb4TZRzmPx52TfQHYmKQ9v8XROmKEp9QVILeRaCPs2FWXqKC1OytPtBSCjlC4LAhkdHfbBQy+Rdak7yJiWcE4ZUbSFdAe6L9osXsNUPo1QW4MH9Mm+uN178lGyxVBsmEWr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199021)(30864003)(2906002)(52536014)(5660300002)(83380400001)(8676002)(8936002)(64756008)(66446008)(76116006)(66946007)(66556008)(66476007)(4326008)(110136005)(54906003)(316002)(478600001)(71200400001)(41300700001)(55016003)(7696005)(33656002)(86362001)(26005)(107886003)(122000001)(82960400001)(186003)(6506007)(9686003)(53546011)(38070700005)(38100700002)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?enq7qCpR2nqjj/WqJO6ictkz9sx3G9wehZxvAmZI0I6oVF3dVn1hPF8jExe4?=
 =?us-ascii?Q?4GGrjMJVyx1xPcJr0VGWGgzAVCzqZnHNzkLsjhiHmj+ow4mKmPh033xU3kqB?=
 =?us-ascii?Q?g6tMdQKg+hAiWH8xcDFl1yGjPaivMDWYALWEFN3OPFyDB7as3DsAfLf8aXDw?=
 =?us-ascii?Q?zhvaoPFSmAtm3wKMVPllDhYOlQVJbMmT8l8eny4seyhkqv2b7hOC7qFj5+1k?=
 =?us-ascii?Q?UI6vq7RoxKOJpa2HZWqRjQD/qQjJwotnGzDaMFOuc2dLb7g45IPN1xPYEcWV?=
 =?us-ascii?Q?nh861KznMdwbsKbViM9qjr7JGvdloJxBzngR9A3TrZ+x6gBnVjT61IMB9bbo?=
 =?us-ascii?Q?yfSbAAKXdsckdQw26uS2ooewTFM4T9LDFP1jrhk/Oz902oQgr+2x3GYMwq2r?=
 =?us-ascii?Q?bMcBvrLYNfQsAUGymIZ5hvHJNzCmJ0BQIDoNJfUdNgmGkZQSN26YgqDD46xN?=
 =?us-ascii?Q?UWu8sGUzRC7vo9SnFhH7HpqjbZ6qoWhTxWXn4BiuGv6p0pYz5xPYF8N8yyfA?=
 =?us-ascii?Q?YCpmOKPJoZ/GpOFT7COwYUlnWjZLf4S7Q0Idu+E8V7TEpL9LQCarlC3OFB7C?=
 =?us-ascii?Q?jp48YX4Lr/AhhhjQiQ3sO9pxXSKZPwXiB46R58yH9WbI5HsEv+269rOblMUh?=
 =?us-ascii?Q?z2V5/nL4n6xwo+UhRZVw4qjG8U0/mCvn19V6g9JkEed8A5wPUW2b9s8R9hGv?=
 =?us-ascii?Q?mjjn7ovA0CaM4P+UuH+f6wKewXoaTquzBu7bF8sIGMtSE/C/MeqXoe1IXNeL?=
 =?us-ascii?Q?sjEOJRQAqioFUJtZXccYaowmCuTEzPMOiVg0TytqGI858lnUKOwuBYzAeryV?=
 =?us-ascii?Q?o27+b1Zqad8pwVnaKS1CBQJ+gcyYVZ7xhglwj0knNUJWnPhkDgK35AcyYceK?=
 =?us-ascii?Q?RR8mnwzeVxxKhc0KXtdxdakfoEeF9nvnYxNz6W6ufr+P209FrkFwncVe1vqW?=
 =?us-ascii?Q?IS85Q+yWU4sz1rc757Cqyhk3Ggqi2tu5xBONpP81xuM63AE2vEsayePF0jA2?=
 =?us-ascii?Q?uYDc/Ic+GmhNQOBuF/R9fpyiopuYdEtJ2omyFdU5E+fLBCJS5eqNvErbueUW?=
 =?us-ascii?Q?di1k6yLKdGHW2QZ7+gRR89xt3T9FFqmJNHCTCKtYs1NYB7jZxX2XFhAffQmG?=
 =?us-ascii?Q?sw4AWz9114l+0AP23i6m/SbgEWnjaFB2elyv4Hglrg0dcn+U6c+9NL5aVGI6?=
 =?us-ascii?Q?BDX50SwpMsvGAEHKCbga76DPCO2mbF8zea2QVZ4wGLaWBytfjWWw6+AvFWeK?=
 =?us-ascii?Q?rTI443hfAVVL9Nkr8fh8hmV09StXzAq4v10zVXJNgALU0g+giMjfQI8D+q9j?=
 =?us-ascii?Q?g4Vi5N0+x57wLl2ROIu4HI9lWN5lafoK1Po4gWHToWMlRYnwBnqHObCzKemi?=
 =?us-ascii?Q?gKMoMQI2jEYftGWxrn8Jk4u0KcYxBPZpifaurRJxsar3SwZyUg9z7Hgj6PFB?=
 =?us-ascii?Q?yeSXSvHJ1jLlfCrdqR/7Hzx8J3Agf196VndEm0Sui/0+8NaR82lnXmQCsqJf?=
 =?us-ascii?Q?ulXZAph0QZDJ39frJxl9gp9UxZVblcK5qaPAybsA6LQEPW00u73++qaNHBOC?=
 =?us-ascii?Q?8AlHv9OquJaxInyfBv1yxVgz5aLPu5Q/0asIRgZynuC84SbMlmBiTHbxH95P?=
 =?us-ascii?Q?Qg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c5c218f-11fc-4feb-0f60-08db5ab2a391
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2023 10:52:29.7391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WmprPq6Ezgydftpj1pzRcxOuggew682NoJqloESQzcMzhdxfVrWU/KxIA4K8v6ZpDBMnRt2Qa9OpRnHGzwhCPIrXNbrCp8ytSiw0/jJ8oOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7103
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/hdcp: Rename dev_priv to i915
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Winkler,
 Tomas" <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Thursday, May 18, 2023 12:06 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Winkler, Tomas
> <tomas.winkler@intel.com>
> Subject: [Intel-gfx] [PATCH 1/3] drm/i915/hdcp: Rename dev_priv to i915
>=20
> Rename dev_priv to i915 to keep up with latest code standards.
>=20
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 630 +++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_hdcp.h |   6 +-
>  2 files changed, 318 insertions(+), 318 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index dd539106ee5a..19c0b779e435 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -164,7 +164,7 @@ bool intel_hdcp_capable(struct intel_connector
> *connector)
>  bool intel_hdcp2_capable(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	bool capable =3D false;
>=20
> @@ -173,8 +173,8 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>  		return false;
>=20
>  	/* If MTL+ make sure gsc is loaded and proxy is setup */
> -	if (intel_hdcp_gsc_cs_required(dev_priv)) {
> -		struct intel_gt *gt =3D dev_priv->media_gt;
> +	if (intel_hdcp_gsc_cs_required(i915)) {
> +		struct intel_gt *gt =3D i915->media_gt;
>  		struct intel_gsc_uc *gsc =3D gt ? &gt->uc.gsc : NULL;
>=20
>  		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
> @@ -182,12 +182,12 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>  	}
>=20
>  	/* MEI/GSC interface is solid depending on which is used */
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	if (!dev_priv->display.hdcp.comp_added ||  !dev_priv-
> >display.hdcp.master) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.master) {
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return false;
>  	}
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	/* Sink's capability for HDCP2.2 */
>  	hdcp->shim->hdcp_2_2_capable(dig_port, &capable);
> @@ -195,20 +195,20 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>  	return capable;
>  }
>=20
> -static bool intel_hdcp_in_use(struct drm_i915_private *dev_priv,
> +static bool intel_hdcp_in_use(struct drm_i915_private *i915,
>  			      enum transcoder cpu_transcoder, enum port port)
>  {
> -	return intel_de_read(dev_priv,
> -	                     HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
> -	       HDCP_STATUS_ENC;
> +	return intel_de_read(i915,
> +			     HDCP_STATUS(i915, cpu_transcoder, port)) &
> +		HDCP_STATUS_ENC;
>  }
>=20
> -static bool intel_hdcp2_in_use(struct drm_i915_private *dev_priv,
> +static bool intel_hdcp2_in_use(struct drm_i915_private *i915,
>  			       enum transcoder cpu_transcoder, enum port port)
>  {
> -	return intel_de_read(dev_priv,
> -	                     HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
> -	       LINK_ENCRYPTION_STATUS;
> +	return intel_de_read(i915,
> +			     HDCP2_STATUS(i915, cpu_transcoder, port)) &
> +		LINK_ENCRYPTION_STATUS;
>  }
>=20
>  static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
> @@ -232,7 +232,7 @@ static int intel_hdcp_poll_ksv_fifo(struct
> intel_digital_port *dig_port,
>  	return 0;
>  }
>=20
> -static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
> +static bool hdcp_key_loadable(struct drm_i915_private *i915)
>  {
>  	enum i915_power_well_id id;
>  	intel_wakeref_t wakeref;
> @@ -242,14 +242,14 @@ static bool hdcp_key_loadable(struct
> drm_i915_private *dev_priv)
>  	 * On HSW and BDW, Display HW loads the Key as soon as Display
> resumes.
>  	 * On all BXT+, SW can load the keys only when the PW#1 is turned on.
>  	 */
> -	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
> +	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
>  		id =3D HSW_DISP_PW_GLOBAL;
>  	else
>  		id =3D SKL_DISP_PW_1;
>=20
>  	/* PG1 (power well #1) needs to be enabled */
> -	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
> -		enabled =3D intel_display_power_well_is_enabled(dev_priv, id);
> +	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> +		enabled =3D intel_display_power_well_is_enabled(i915, id);
>=20
>  	/*
>  	 * Another req for hdcp key loadability is enabled state of pll for
> @@ -260,19 +260,19 @@ static bool hdcp_key_loadable(struct
> drm_i915_private *dev_priv)
>  	return enabled;
>  }
>=20
> -static void intel_hdcp_clear_keys(struct drm_i915_private *dev_priv)
> +static void intel_hdcp_clear_keys(struct drm_i915_private *i915)
>  {
> -	intel_de_write(dev_priv, HDCP_KEY_CONF,
> HDCP_CLEAR_KEYS_TRIGGER);
> -	intel_de_write(dev_priv, HDCP_KEY_STATUS,
> +	intel_de_write(i915, HDCP_KEY_CONF, HDCP_CLEAR_KEYS_TRIGGER);
> +	intel_de_write(i915, HDCP_KEY_STATUS,
>  		       HDCP_KEY_LOAD_DONE | HDCP_KEY_LOAD_STATUS |
> HDCP_FUSE_IN_PROGRESS | HDCP_FUSE_ERROR | HDCP_FUSE_DONE);
>  }
>=20
> -static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
> +static int intel_hdcp_load_keys(struct drm_i915_private *i915)
>  {
>  	int ret;
>  	u32 val;
>=20
> -	val =3D intel_de_read(dev_priv, HDCP_KEY_STATUS);
> +	val =3D intel_de_read(i915, HDCP_KEY_STATUS);
>  	if ((val & HDCP_KEY_LOAD_DONE) && (val &
> HDCP_KEY_LOAD_STATUS))
>  		return 0;
>=20
> @@ -280,8 +280,8 @@ static int intel_hdcp_load_keys(struct
> drm_i915_private *dev_priv)
>  	 * On HSW and BDW HW loads the HDCP1.4 Key when Display comes
>  	 * out of reset. So if Key is not already loaded, its an error state.
>  	 */
> -	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
> -		if (!(intel_de_read(dev_priv, HDCP_KEY_STATUS) &
> HDCP_KEY_LOAD_DONE))
> +	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> +		if (!(intel_de_read(i915, HDCP_KEY_STATUS) &
> HDCP_KEY_LOAD_DONE))
>  			return -ENXIO;
>=20
>  	/*
> @@ -292,20 +292,20 @@ static int intel_hdcp_load_keys(struct
> drm_i915_private *dev_priv)
>  	 * process from other platforms. These platforms use the GT Driver
>  	 * Mailbox interface.
>  	 */
> -	if (DISPLAY_VER(dev_priv) =3D=3D 9 && !IS_BROXTON(dev_priv)) {
> -		ret =3D snb_pcode_write(&dev_priv->uncore,
> SKL_PCODE_LOAD_HDCP_KEYS, 1);
> +	if (DISPLAY_VER(i915) =3D=3D 9 && !IS_BROXTON(i915)) {
> +		ret =3D snb_pcode_write(&i915->uncore,
> SKL_PCODE_LOAD_HDCP_KEYS, 1);
>  		if (ret) {
> -			drm_err(&dev_priv->drm,
> +			drm_err(&i915->drm,
>  				"Failed to initiate HDCP key load (%d)\n",
>  				ret);
>  			return ret;
>  		}
>  	} else {
> -		intel_de_write(dev_priv, HDCP_KEY_CONF,
> HDCP_KEY_LOAD_TRIGGER);
> +		intel_de_write(i915, HDCP_KEY_CONF,
> HDCP_KEY_LOAD_TRIGGER);
>  	}
>=20
>  	/* Wait for the keys to load (500us) */
> -	ret =3D __intel_wait_for_register(&dev_priv->uncore,
> HDCP_KEY_STATUS,
> +	ret =3D __intel_wait_for_register(&i915->uncore, HDCP_KEY_STATUS,
>  					HDCP_KEY_LOAD_DONE,
> HDCP_KEY_LOAD_DONE,
>  					10, 1, &val);
>  	if (ret)
> @@ -314,27 +314,27 @@ static int intel_hdcp_load_keys(struct
> drm_i915_private *dev_priv)
>  		return -ENXIO;
>=20
>  	/* Send Aksv over to PCH display for use in authentication */
> -	intel_de_write(dev_priv, HDCP_KEY_CONF,
> HDCP_AKSV_SEND_TRIGGER);
> +	intel_de_write(i915, HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);
>=20
>  	return 0;
>  }
>=20
>  /* Returns updated SHA-1 index */
> -static int intel_write_sha_text(struct drm_i915_private *dev_priv, u32
> sha_text)
> +static int intel_write_sha_text(struct drm_i915_private *i915, u32 sha_t=
ext)
>  {
> -	intel_de_write(dev_priv, HDCP_SHA_TEXT, sha_text);
> -	if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL,
> HDCP_SHA1_READY, 1)) {
> -		drm_err(&dev_priv->drm, "Timed out waiting for SHA1
> ready\n");
> +	intel_de_write(i915, HDCP_SHA_TEXT, sha_text);
> +	if (intel_de_wait_for_set(i915, HDCP_REP_CTL, HDCP_SHA1_READY, 1))
> {
> +		drm_err(&i915->drm, "Timed out waiting for SHA1 ready\n");
>  		return -ETIMEDOUT;
>  	}
>  	return 0;
>  }
>=20
>  static
> -u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *dev_priv,
> +u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *i915,
>  				enum transcoder cpu_transcoder, enum port
> port)
>  {
> -	if (DISPLAY_VER(dev_priv) >=3D 12) {
> +	if (DISPLAY_VER(i915) >=3D 12) {
>  		switch (cpu_transcoder) {
>  		case TRANSCODER_A:
>  			return HDCP_TRANSA_REP_PRESENT |
> @@ -349,7 +349,7 @@ u32 intel_hdcp_get_repeater_ctl(struct
> drm_i915_private *dev_priv,
>  			return HDCP_TRANSD_REP_PRESENT |
>  			       HDCP_TRANSD_SHA1_M0;
>  		default:
> -			drm_err(&dev_priv->drm, "Unknown transcoder
> %d\n",
> +			drm_err(&i915->drm, "Unknown transcoder %d\n",
>  				cpu_transcoder);
>  			return -EINVAL;
>  		}
> @@ -367,7 +367,7 @@ u32 intel_hdcp_get_repeater_ctl(struct
> drm_i915_private *dev_priv,
>  	case PORT_E:
>  		return HDCP_DDIE_REP_PRESENT | HDCP_DDIE_SHA1_M0;
>  	default:
> -		drm_err(&dev_priv->drm, "Unknown port %d\n", port);
> +		drm_err(&i915->drm, "Unknown port %d\n", port);
>  		return -EINVAL;
>  	}
>  }
> @@ -378,7 +378,7 @@ int intel_hdcp_validate_v_prime(struct
> intel_connector *connector,
>  				u8 *ksv_fifo, u8 num_downstream, u8
> *bstatus)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	enum transcoder cpu_transcoder =3D connector->hdcp.cpu_transcoder;
>  	enum port port =3D dig_port->base.port;
>  	u32 vprime, sha_text, sha_leftovers, rep_ctl;
> @@ -389,7 +389,7 @@ int intel_hdcp_validate_v_prime(struct
> intel_connector *connector,
>  		ret =3D shim->read_v_prime_part(dig_port, i, &vprime);
>  		if (ret)
>  			return ret;
> -		intel_de_write(dev_priv, HDCP_SHA_V_PRIME(i), vprime);
> +		intel_de_write(i915, HDCP_SHA_V_PRIME(i), vprime);
>  	}
>=20
>  	/*
> @@ -405,8 +405,8 @@ int intel_hdcp_validate_v_prime(struct
> intel_connector *connector,
>  	sha_idx =3D 0;
>  	sha_text =3D 0;
>  	sha_leftovers =3D 0;
> -	rep_ctl =3D intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder, port)=
;
> -	intel_de_write(dev_priv, HDCP_REP_CTL, rep_ctl |
> HDCP_SHA1_TEXT_32);
> +	rep_ctl =3D intel_hdcp_get_repeater_ctl(i915, cpu_transcoder, port);
> +	intel_de_write(i915, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
>  	for (i =3D 0; i < num_downstream; i++) {
>  		unsigned int sha_empty;
>  		u8 *ksv =3D &ksv_fifo[i * DRM_HDCP_KSV_LEN];
> @@ -418,14 +418,14 @@ int intel_hdcp_validate_v_prime(struct
> intel_connector *connector,
>  			sha_text |=3D ksv[j] << off;
>  		}
>=20
> -		ret =3D intel_write_sha_text(dev_priv, sha_text);
> +		ret =3D intel_write_sha_text(i915, sha_text);
>  		if (ret < 0)
>  			return ret;
>=20
>  		/* Programming guide writes this every 64 bytes */
>  		sha_idx +=3D sizeof(sha_text);
>  		if (!(sha_idx % 64))
> -			intel_de_write(dev_priv, HDCP_REP_CTL,
> +			intel_de_write(i915, HDCP_REP_CTL,
>  				       rep_ctl | HDCP_SHA1_TEXT_32);
>=20
>  		/* Store the leftover bytes from the ksv in sha_text */
> @@ -442,7 +442,7 @@ int intel_hdcp_validate_v_prime(struct
> intel_connector *connector,
>  		if (sizeof(sha_text) > sha_leftovers)
>  			continue;
>=20
> -		ret =3D intel_write_sha_text(dev_priv, sha_text);
> +		ret =3D intel_write_sha_text(i915, sha_text);
>  		if (ret < 0)
>  			return ret;
>  		sha_leftovers =3D 0;
> @@ -458,73 +458,73 @@ int intel_hdcp_validate_v_prime(struct
> intel_connector *connector,
>  	 */
>  	if (sha_leftovers =3D=3D 0) {
>  		/* Write 16 bits of text, 16 bits of M0 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_16);
> -		ret =3D intel_write_sha_text(dev_priv,
> +		ret =3D intel_write_sha_text(i915,
>  					   bstatus[0] << 8 | bstatus[1]);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>=20
>  		/* Write 32 bits of M0 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_0);
> -		ret =3D intel_write_sha_text(dev_priv, 0);
> +		ret =3D intel_write_sha_text(i915, 0);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>=20
>  		/* Write 16 bits of M0 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_16);
> -		ret =3D intel_write_sha_text(dev_priv, 0);
> +		ret =3D intel_write_sha_text(i915, 0);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>=20
>  	} else if (sha_leftovers =3D=3D 1) {
>  		/* Write 24 bits of text, 8 bits of M0 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_24);
>  		sha_text |=3D bstatus[0] << 16 | bstatus[1] << 8;
>  		/* Only 24-bits of data, must be in the LSB */
>  		sha_text =3D (sha_text & 0xffffff00) >> 8;
> -		ret =3D intel_write_sha_text(dev_priv, sha_text);
> +		ret =3D intel_write_sha_text(i915, sha_text);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>=20
>  		/* Write 32 bits of M0 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_0);
> -		ret =3D intel_write_sha_text(dev_priv, 0);
> +		ret =3D intel_write_sha_text(i915, 0);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>=20
>  		/* Write 24 bits of M0 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_8);
> -		ret =3D intel_write_sha_text(dev_priv, 0);
> +		ret =3D intel_write_sha_text(i915, 0);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>=20
>  	} else if (sha_leftovers =3D=3D 2) {
>  		/* Write 32 bits of text */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_32);
>  		sha_text |=3D bstatus[0] << 8 | bstatus[1];
> -		ret =3D intel_write_sha_text(dev_priv, sha_text);
> +		ret =3D intel_write_sha_text(i915, sha_text);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>=20
>  		/* Write 64 bits of M0 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_0);
>  		for (i =3D 0; i < 2; i++) {
> -			ret =3D intel_write_sha_text(dev_priv, 0);
> +			ret =3D intel_write_sha_text(i915, 0);
>  			if (ret < 0)
>  				return ret;
>  			sha_idx +=3D sizeof(sha_text);
> @@ -534,56 +534,56 @@ int intel_hdcp_validate_v_prime(struct
> intel_connector *connector,
>  		 * Terminate the SHA-1 stream by hand. For the other leftover
>  		 * cases this is appended by the hardware.
>  		 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_32);
>  		sha_text =3D DRM_HDCP_SHA1_TERMINATOR << 24;
> -		ret =3D intel_write_sha_text(dev_priv, sha_text);
> +		ret =3D intel_write_sha_text(i915, sha_text);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>  	} else if (sha_leftovers =3D=3D 3) {
>  		/* Write 32 bits of text (filled from LSB) */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_32);
>  		sha_text |=3D bstatus[0];
> -		ret =3D intel_write_sha_text(dev_priv, sha_text);
> +		ret =3D intel_write_sha_text(i915, sha_text);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>=20
>  		/* Write 8 bits of text (filled from LSB), 24 bits of M0 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_8);
> -		ret =3D intel_write_sha_text(dev_priv, bstatus[1]);
> +		ret =3D intel_write_sha_text(i915, bstatus[1]);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>=20
>  		/* Write 32 bits of M0 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_0);
> -		ret =3D intel_write_sha_text(dev_priv, 0);
> +		ret =3D intel_write_sha_text(i915, 0);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>=20
>  		/* Write 8 bits of M0 */
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> +		intel_de_write(i915, HDCP_REP_CTL,
>  			       rep_ctl | HDCP_SHA1_TEXT_24);
> -		ret =3D intel_write_sha_text(dev_priv, 0);
> +		ret =3D intel_write_sha_text(i915, 0);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
>  	} else {
> -		drm_dbg_kms(&dev_priv->drm, "Invalid number of leftovers
> %d\n",
> +		drm_dbg_kms(&i915->drm, "Invalid number of leftovers
> %d\n",
>  			    sha_leftovers);
>  		return -EINVAL;
>  	}
>=20
> -	intel_de_write(dev_priv, HDCP_REP_CTL, rep_ctl |
> HDCP_SHA1_TEXT_32);
> +	intel_de_write(i915, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
>  	/* Fill up to 64-4 bytes with zeros (leave the last write for length) *=
/
>  	while ((sha_idx % 64) < (64 - sizeof(sha_text))) {
> -		ret =3D intel_write_sha_text(dev_priv, 0);
> +		ret =3D intel_write_sha_text(i915, 0);
>  		if (ret < 0)
>  			return ret;
>  		sha_idx +=3D sizeof(sha_text);
> @@ -595,20 +595,20 @@ int intel_hdcp_validate_v_prime(struct
> intel_connector *connector,
>  	 *  - 10 bytes for BINFO/BSTATUS(2), M0(8)
>  	 */
>  	sha_text =3D (num_downstream * 5 + 10) * 8;
> -	ret =3D intel_write_sha_text(dev_priv, sha_text);
> +	ret =3D intel_write_sha_text(i915, sha_text);
>  	if (ret < 0)
>  		return ret;
>=20
>  	/* Tell the HW we're done with the hash and wait for it to ACK */
> -	intel_de_write(dev_priv, HDCP_REP_CTL,
> +	intel_de_write(i915, HDCP_REP_CTL,
>  		       rep_ctl | HDCP_SHA1_COMPLETE_HASH);
> -	if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL,
> +	if (intel_de_wait_for_set(i915, HDCP_REP_CTL,
>  				  HDCP_SHA1_COMPLETE, 1)) {
> -		drm_err(&dev_priv->drm, "Timed out waiting for SHA1
> complete\n");
> +		drm_err(&i915->drm, "Timed out waiting for SHA1
> complete\n");
>  		return -ETIMEDOUT;
>  	}
> -	if (!(intel_de_read(dev_priv, HDCP_REP_CTL) &
> HDCP_SHA1_V_MATCH)) {
> -		drm_dbg_kms(&dev_priv->drm, "SHA-1 mismatch, HDCP
> failed\n");
> +	if (!(intel_de_read(i915, HDCP_REP_CTL) & HDCP_SHA1_V_MATCH)) {
> +		drm_dbg_kms(&i915->drm, "SHA-1 mismatch, HDCP failed\n");
>  		return -ENXIO;
>  	}
>=20
> @@ -620,14 +620,14 @@ static
>  int intel_hdcp_auth_downstream(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	const struct intel_hdcp_shim *shim =3D connector->hdcp.shim;
>  	u8 bstatus[2], num_downstream, *ksv_fifo;
>  	int ret, i, tries =3D 3;
>=20
>  	ret =3D intel_hdcp_poll_ksv_fifo(dig_port, shim);
>  	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "KSV list failed to become ready (%d)\n", ret);
>  		return ret;
>  	}
> @@ -638,7 +638,7 @@ int intel_hdcp_auth_downstream(struct
> intel_connector *connector)
>=20
>  	if (DRM_HDCP_MAX_DEVICE_EXCEEDED(bstatus[0]) ||
>  	    DRM_HDCP_MAX_CASCADE_EXCEEDED(bstatus[1])) {
> -		drm_dbg_kms(&dev_priv->drm, "Max Topology Limit
> Exceeded\n");
> +		drm_dbg_kms(&i915->drm, "Max Topology Limit
> Exceeded\n");
>  		return -EPERM;
>  	}
>=20
> @@ -651,14 +651,14 @@ int intel_hdcp_auth_downstream(struct
> intel_connector *connector)
>  	 */
>  	num_downstream =3D DRM_HDCP_NUM_DOWNSTREAM(bstatus[0]);
>  	if (num_downstream =3D=3D 0) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Repeater with zero downstream devices\n");
>  		return -EINVAL;
>  	}
>=20
>  	ksv_fifo =3D kcalloc(DRM_HDCP_KSV_LEN, num_downstream,
> GFP_KERNEL);
>  	if (!ksv_fifo) {
> -		drm_dbg_kms(&dev_priv->drm, "Out of mem: ksv_fifo\n");
> +		drm_dbg_kms(&i915->drm, "Out of mem: ksv_fifo\n");
>  		return -ENOMEM;
>  	}
>=20
> @@ -666,9 +666,9 @@ int intel_hdcp_auth_downstream(struct
> intel_connector *connector)
>  	if (ret)
>  		goto err;
>=20
> -	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm, ksv_fifo,
> +	if (drm_hdcp_check_ksvs_revoked(&i915->drm, ksv_fifo,
>  					num_downstream) > 0) {
> -		drm_err(&dev_priv->drm, "Revoked Ksv(s) in ksv_fifo\n");
> +		drm_err(&i915->drm, "Revoked Ksv(s) in ksv_fifo\n");
>  		ret =3D -EPERM;
>  		goto err;
>  	}
> @@ -686,12 +686,12 @@ int intel_hdcp_auth_downstream(struct
> intel_connector *connector)
>  	}
>=20
>  	if (i =3D=3D tries) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "V Prime validation failed.(%d)\n", ret);
>  		goto err;
>  	}
>=20
> -	drm_dbg_kms(&dev_priv->drm, "HDCP is enabled (%d downstream
> devices)\n",
> +	drm_dbg_kms(&i915->drm, "HDCP is enabled (%d downstream
> devices)\n",
>  		    num_downstream);
>  	ret =3D 0;
>  err:
> @@ -703,7 +703,7 @@ int intel_hdcp_auth_downstream(struct
> intel_connector *connector)
>  static int intel_hdcp_auth(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	const struct intel_hdcp_shim *shim =3D hdcp->shim;
>  	enum transcoder cpu_transcoder =3D connector->hdcp.cpu_transcoder;
> @@ -735,7 +735,7 @@ static int intel_hdcp_auth(struct intel_connector
> *connector)
>  		if (ret)
>  			return ret;
>  		if (!hdcp_capable) {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "Panel is not HDCP capable\n");
>  			return -EINVAL;
>  		}
> @@ -743,24 +743,24 @@ static int intel_hdcp_auth(struct intel_connector
> *connector)
>=20
>  	/* Initialize An with 2 random values and acquire it */
>  	for (i =3D 0; i < 2; i++)
> -		intel_de_write(dev_priv,
> -			       HDCP_ANINIT(dev_priv, cpu_transcoder, port),
> +		intel_de_write(i915,
> +			       HDCP_ANINIT(i915, cpu_transcoder, port),
>  			       get_random_u32());
> -	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port),
> +	intel_de_write(i915, HDCP_CONF(i915, cpu_transcoder, port),
>  		       HDCP_CONF_CAPTURE_AN);
>=20
>  	/* Wait for An to be acquired */
> -	if (intel_de_wait_for_set(dev_priv,
> -				  HDCP_STATUS(dev_priv, cpu_transcoder,
> port),
> +	if (intel_de_wait_for_set(i915,
> +				  HDCP_STATUS(i915, cpu_transcoder, port),
>  				  HDCP_STATUS_AN_READY, 1)) {
> -		drm_err(&dev_priv->drm, "Timed out waiting for An\n");
> +		drm_err(&i915->drm, "Timed out waiting for An\n");
>  		return -ETIMEDOUT;
>  	}
>=20
> -	an.reg[0] =3D intel_de_read(dev_priv,
> -				  HDCP_ANLO(dev_priv, cpu_transcoder,
> port));
> -	an.reg[1] =3D intel_de_read(dev_priv,
> -				  HDCP_ANHI(dev_priv, cpu_transcoder,
> port));
> +	an.reg[0] =3D intel_de_read(i915,
> +				  HDCP_ANLO(i915, cpu_transcoder, port));
> +	an.reg[1] =3D intel_de_read(i915,
> +				  HDCP_ANHI(i915, cpu_transcoder, port));
>  	ret =3D shim->write_an_aksv(dig_port, an.shim);
>  	if (ret)
>  		return ret;
> @@ -773,34 +773,34 @@ static int intel_hdcp_auth(struct intel_connector
> *connector)
>  	if (ret < 0)
>  		return ret;
>=20
> -	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm, bksv.shim, 1) > 0)
> {
> -		drm_err(&dev_priv->drm, "BKSV is revoked\n");
> +	if (drm_hdcp_check_ksvs_revoked(&i915->drm, bksv.shim, 1) > 0) {
> +		drm_err(&i915->drm, "BKSV is revoked\n");
>  		return -EPERM;
>  	}
>=20
> -	intel_de_write(dev_priv, HDCP_BKSVLO(dev_priv, cpu_transcoder,
> port),
> +	intel_de_write(i915, HDCP_BKSVLO(i915, cpu_transcoder, port),
>  		       bksv.reg[0]);
> -	intel_de_write(dev_priv, HDCP_BKSVHI(dev_priv, cpu_transcoder,
> port),
> +	intel_de_write(i915, HDCP_BKSVHI(i915, cpu_transcoder, port),
>  		       bksv.reg[1]);
>=20
>  	ret =3D shim->repeater_present(dig_port, &repeater_present);
>  	if (ret)
>  		return ret;
>  	if (repeater_present)
> -		intel_de_write(dev_priv, HDCP_REP_CTL,
> -			       intel_hdcp_get_repeater_ctl(dev_priv,
> cpu_transcoder, port));
> +		intel_de_write(i915, HDCP_REP_CTL,
> +			       intel_hdcp_get_repeater_ctl(i915,
> cpu_transcoder, port));
>=20
>  	ret =3D shim->toggle_signalling(dig_port, cpu_transcoder, true);
>  	if (ret)
>  		return ret;
>=20
> -	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port),
> +	intel_de_write(i915, HDCP_CONF(i915, cpu_transcoder, port),
>  		       HDCP_CONF_AUTH_AND_ENC);
>=20
>  	/* Wait for R0 ready */
> -	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv,
> cpu_transcoder, port)) &
> +	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
> port)) &
>  		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
> -		drm_err(&dev_priv->drm, "Timed out waiting for R0
> ready\n");
> +		drm_err(&i915->drm, "Timed out waiting for R0 ready\n");
>  		return -ETIMEDOUT;
>  	}
>=20
> @@ -826,30 +826,30 @@ static int intel_hdcp_auth(struct intel_connector
> *connector)
>  		ret =3D shim->read_ri_prime(dig_port, ri.shim);
>  		if (ret)
>  			return ret;
> -		intel_de_write(dev_priv,
> -			       HDCP_RPRIME(dev_priv, cpu_transcoder, port),
> +		intel_de_write(i915,
> +			       HDCP_RPRIME(i915, cpu_transcoder, port),
>  			       ri.reg);
>=20
>  		/* Wait for Ri prime match */
> -		if (!wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv,
> cpu_transcoder, port)) &
> +		if (!wait_for(intel_de_read(i915, HDCP_STATUS(i915,
> cpu_transcoder, port)) &
>  			      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC),
> 1))
>  			break;
>  	}
>=20
>  	if (i =3D=3D tries) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Timed out waiting for Ri prime match (%x)\n",
> -			    intel_de_read(dev_priv, HDCP_STATUS(dev_priv,
> -					  cpu_transcoder, port)));
> +			    intel_de_read(i915,
> +					  HDCP_STATUS(i915, cpu_transcoder,
> port)));
>  		return -ETIMEDOUT;
>  	}
>=20
>  	/* Wait for encryption confirmation */
> -	if (intel_de_wait_for_set(dev_priv,
> -				  HDCP_STATUS(dev_priv, cpu_transcoder,
> port),
> +	if (intel_de_wait_for_set(i915,
> +				  HDCP_STATUS(i915, cpu_transcoder, port),
>  				  HDCP_STATUS_ENC,
>=20
> HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> -		drm_err(&dev_priv->drm, "Timed out waiting for
> encryption\n");
> +		drm_err(&i915->drm, "Timed out waiting for encryption\n");
>  		return -ETIMEDOUT;
>  	}
>=20
> @@ -857,42 +857,42 @@ static int intel_hdcp_auth(struct intel_connector
> *connector)
>  	if (shim->stream_encryption) {
>  		ret =3D shim->stream_encryption(connector, true);
>  		if (ret) {
> -			drm_err(&dev_priv->drm, "[%s:%d] Failed to enable
> HDCP 1.4 stream enc\n",
> +			drm_err(&i915->drm, "[%s:%d] Failed to enable HDCP
> 1.4 stream enc\n",
>  				connector->base.name, connector-
> >base.base.id);
>  			return ret;
>  		}
> -		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 transcoder: %s
> stream encrypted\n",
> +		drm_dbg_kms(&i915->drm, "HDCP 1.4 transcoder: %s stream
> encrypted\n",
>  			    transcoder_name(hdcp->stream_transcoder));
>  	}
>=20
>  	if (repeater_present)
>  		return intel_hdcp_auth_downstream(connector);
>=20
> -	drm_dbg_kms(&dev_priv->drm, "HDCP is enabled (no repeater
> present)\n");
> +	drm_dbg_kms(&i915->drm, "HDCP is enabled (no repeater
> present)\n");
>  	return 0;
>  }
>=20
>  static int _intel_hdcp_disable(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	enum port port =3D dig_port->base.port;
>  	enum transcoder cpu_transcoder =3D hdcp->cpu_transcoder;
>  	u32 repeater_ctl;
>  	int ret;
>=20
> -	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being disabled...\n",
> +	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP is being disabled...\n",
>  		    connector->base.name, connector->base.base.id);
>=20
>  	if (hdcp->shim->stream_encryption) {
>  		ret =3D hdcp->shim->stream_encryption(connector, false);
>  		if (ret) {
> -			drm_err(&dev_priv->drm, "[%s:%d] Failed to disable
> HDCP 1.4 stream enc\n",
> +			drm_err(&i915->drm, "[%s:%d] Failed to disable HDCP
> 1.4 stream enc\n",
>  				connector->base.name, connector-
> >base.base.id);
>  			return ret;
>  		}
> -		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 transcoder: %s
> stream encryption disabled\n",
> +		drm_dbg_kms(&i915->drm, "HDCP 1.4 transcoder: %s stream
> encryption disabled\n",
>  			    transcoder_name(hdcp->stream_transcoder));
>  		/*
>  		 * If there are other connectors on this port using HDCP,
> @@ -904,51 +904,51 @@ static int _intel_hdcp_disable(struct intel_connect=
or
> *connector)
>  	}
>=20
>  	hdcp->hdcp_encrypted =3D false;
> -	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port),
> 0);
> -	if (intel_de_wait_for_clear(dev_priv,
> -				    HDCP_STATUS(dev_priv, cpu_transcoder,
> port),
> +	intel_de_write(i915, HDCP_CONF(i915, cpu_transcoder, port), 0);
> +	if (intel_de_wait_for_clear(i915,
> +				    HDCP_STATUS(i915, cpu_transcoder, port),
>  				    ~0,
> HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> -		drm_err(&dev_priv->drm,
> +		drm_err(&i915->drm,
>  			"Failed to disable HDCP, timeout clearing status\n");
>  		return -ETIMEDOUT;
>  	}
>=20
> -	repeater_ctl =3D intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder,
> +	repeater_ctl =3D intel_hdcp_get_repeater_ctl(i915, cpu_transcoder,
>  						   port);
> -	intel_de_rmw(dev_priv, HDCP_REP_CTL, repeater_ctl, 0);
> +	intel_de_rmw(i915, HDCP_REP_CTL, repeater_ctl, 0);
>=20
>  	ret =3D hdcp->shim->toggle_signalling(dig_port, cpu_transcoder, false);
>  	if (ret) {
> -		drm_err(&dev_priv->drm, "Failed to disable HDCP
> signalling\n");
> +		drm_err(&i915->drm, "Failed to disable HDCP signalling\n");
>  		return ret;
>  	}
>=20
> -	drm_dbg_kms(&dev_priv->drm, "HDCP is disabled\n");
> +	drm_dbg_kms(&i915->drm, "HDCP is disabled\n");
>  	return 0;
>  }
>=20
>  static int _intel_hdcp_enable(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	int i, ret, tries =3D 3;
>=20
> -	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being enabled...\n",
> +	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP is being enabled...\n",
>  		    connector->base.name, connector->base.base.id);
>=20
> -	if (!hdcp_key_loadable(dev_priv)) {
> -		drm_err(&dev_priv->drm, "HDCP key Load is not possible\n");
> +	if (!hdcp_key_loadable(i915)) {
> +		drm_err(&i915->drm, "HDCP key Load is not possible\n");
>  		return -ENXIO;
>  	}
>=20
>  	for (i =3D 0; i < KEY_LOAD_TRIES; i++) {
> -		ret =3D intel_hdcp_load_keys(dev_priv);
> +		ret =3D intel_hdcp_load_keys(i915);
>  		if (!ret)
>  			break;
> -		intel_hdcp_clear_keys(dev_priv);
> +		intel_hdcp_clear_keys(i915);
>  	}
>  	if (ret) {
> -		drm_err(&dev_priv->drm, "Could not load HDCP keys, (%d)\n",
> +		drm_err(&i915->drm, "Could not load HDCP keys, (%d)\n",
>  			ret);
>  		return ret;
>  	}
> @@ -961,13 +961,13 @@ static int _intel_hdcp_enable(struct intel_connecto=
r
> *connector)
>  			return 0;
>  		}
>=20
> -		drm_dbg_kms(&dev_priv->drm, "HDCP Auth failure (%d)\n",
> ret);
> +		drm_dbg_kms(&i915->drm, "HDCP Auth failure (%d)\n", ret);
>=20
>  		/* Ensuring HDCP encryption and signalling are stopped. */
>  		_intel_hdcp_disable(connector);
>  	}
>=20
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "HDCP authentication failed (%d tries/%d)\n", tries, ret);
>  	return ret;
>  }
> @@ -1009,7 +1009,7 @@ static void intel_hdcp_update_value(struct
> intel_connector *connector,
>  static int intel_hdcp_check_link(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	enum port port =3D dig_port->base.port;
>  	enum transcoder cpu_transcoder;
> @@ -1027,12 +1027,12 @@ static int intel_hdcp_check_link(struct
> intel_connector *connector)
>  		goto out;
>  	}
>=20
> -	if (drm_WARN_ON(&dev_priv->drm,
> -			!intel_hdcp_in_use(dev_priv, cpu_transcoder, port))) {
> -		drm_err(&dev_priv->drm,
> +	if (drm_WARN_ON(&i915->drm,
> +			!intel_hdcp_in_use(i915, cpu_transcoder, port))) {
> +		drm_err(&i915->drm,
>  			"%s:%d HDCP link stopped encryption,%x\n",
>  			connector->base.name, connector->base.base.id,
> -			intel_de_read(dev_priv, HDCP_STATUS(dev_priv,
> cpu_transcoder, port)));
> +			intel_de_read(i915, HDCP_STATUS(i915,
> cpu_transcoder, port)));
>  		ret =3D -ENXIO;
>  		intel_hdcp_update_value(connector,
>=20
> 	DRM_MODE_CONTENT_PROTECTION_DESIRED,
> @@ -1048,13 +1048,13 @@ static int intel_hdcp_check_link(struct
> intel_connector *connector)
>  		goto out;
>  	}
>=20
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "[%s:%d] HDCP link failed, retrying authentication\n",
>  		    connector->base.name, connector->base.base.id);
>=20
>  	ret =3D _intel_hdcp_disable(connector);
>  	if (ret) {
> -		drm_err(&dev_priv->drm, "Failed to disable hdcp (%d)\n",
> ret);
> +		drm_err(&i915->drm, "Failed to disable hdcp (%d)\n", ret);
>  		intel_hdcp_update_value(connector,
>=20
> 	DRM_MODE_CONTENT_PROTECTION_DESIRED,
>  					true);
> @@ -1063,7 +1063,7 @@ static int intel_hdcp_check_link(struct
> intel_connector *connector)
>=20
>  	ret =3D _intel_hdcp_enable(connector);
>  	if (ret) {
> -		drm_err(&dev_priv->drm, "Failed to enable hdcp (%d)\n", ret);
> +		drm_err(&i915->drm, "Failed to enable hdcp (%d)\n", ret);
>  		intel_hdcp_update_value(connector,
>=20
> 	DRM_MODE_CONTENT_PROTECTION_DESIRED,
>  					true);
> @@ -1081,9 +1081,9 @@ static void intel_hdcp_prop_work(struct work_struct
> *work)
>  	struct intel_hdcp *hdcp =3D container_of(work, struct intel_hdcp,
>  					       prop_work);
>  	struct intel_connector *connector =3D intel_hdcp_to_connector(hdcp);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20
> -	drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
> NULL);
> +	drm_modeset_lock(&i915->drm.mode_config.connection_mutex,
> NULL);
>  	mutex_lock(&hdcp->mutex);
>=20
>  	/*
> @@ -1096,15 +1096,15 @@ static void intel_hdcp_prop_work(struct
> work_struct *work)
>  						   hdcp->value);
>=20
>  	mutex_unlock(&hdcp->mutex);
> -	drm_modeset_unlock(&dev_priv-
> >drm.mode_config.connection_mutex);
> +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
>=20
>  	drm_connector_put(&connector->base);
>  }
>=20
> -bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port=
)
> +bool is_hdcp_supported(struct drm_i915_private *i915, enum port port)
>  {
> -	return RUNTIME_INFO(dev_priv)->has_hdcp &&
> -		(DISPLAY_VER(dev_priv) >=3D 12 || port < PORT_E);
> +	return RUNTIME_INFO(i915)->has_hdcp &&
> +		(DISPLAY_VER(i915) >=3D 12 || port < PORT_E);
>  }
>=20
>  static int
> @@ -1113,23 +1113,23 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->initiate_hdcp2_session(arbiter->hdcp_dev, data,
> ake_data);
>  	if (ret)
> -		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed.
> %d\n",
> +		drm_dbg_kms(&i915->drm, "Prepare_ake_init failed. %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1143,15 +1143,15 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1159,9 +1159,9 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
>  							 rx_cert, paired,
>  							 ek_pub_km, msg_sz);
>  	if (ret < 0)
> -		drm_dbg_kms(&dev_priv->drm, "Verify rx_cert failed. %d\n",
> +		drm_dbg_kms(&i915->drm, "Verify rx_cert failed. %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1171,22 +1171,22 @@ static int hdcp2_verify_hprime(struct
> intel_connector *connector,
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->verify_hprime(arbiter->hdcp_dev, data,
> rx_hprime);
>  	if (ret < 0)
> -		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n",
> ret);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		drm_dbg_kms(&i915->drm, "Verify hprime failed. %d\n", ret);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1197,23 +1197,23 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->store_pairing_info(arbiter->hdcp_dev, data,
> pairing_info);
>  	if (ret < 0)
> -		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed.
> %d\n",
> +		drm_dbg_kms(&i915->drm, "Store pairing info failed. %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1224,23 +1224,23 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->initiate_locality_check(arbiter->hdcp_dev, data,
> lc_init);
>  	if (ret < 0)
> -		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
> +		drm_dbg_kms(&i915->drm, "Prepare lc_init failed. %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1251,23 +1251,23 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->verify_lprime(arbiter->hdcp_dev, data, rx_lprime)=
;
>  	if (ret < 0)
> -		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
> +		drm_dbg_kms(&i915->drm, "Verify L_Prime failed. %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1277,23 +1277,23 @@ static int hdcp2_prepare_skey(struct
> intel_connector *connector,
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->get_session_key(arbiter->hdcp_dev, data,
> ske_data);
>  	if (ret < 0)
> -		drm_dbg_kms(&dev_priv->drm, "Get session key failed.
> %d\n",
> +		drm_dbg_kms(&i915->drm, "Get session key failed. %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1306,15 +1306,15 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1323,9 +1323,9 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  							    rep_topology,
>  							    rep_send_ack);
>  	if (ret < 0)
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Verify rep topology failed. %d\n", ret);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1336,22 +1336,22 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->verify_mprime(arbiter->hdcp_dev, data,
> stream_ready);
>  	if (ret < 0)
> -		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n",
> ret);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		drm_dbg_kms(&i915->drm, "Verify mprime failed. %d\n", ret);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1360,23 +1360,23 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->enable_hdcp_authentication(arbiter->hdcp_dev,
> data);
>  	if (ret < 0)
> -		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed.
> %d\n",
> +		drm_dbg_kms(&i915->drm, "Enable hdcp auth failed. %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1384,21 +1384,21 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  static int hdcp2_close_session(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct i915_hdcp_master *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	arbiter =3D dev_priv->display.hdcp.master;
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	arbiter =3D i915->display.hdcp.master;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
>  					     &dig_port->hdcp_port_data);
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1412,7 +1412,7 @@ static int hdcp2_deauthenticate_port(struct
> intel_connector *connector)
>  static int hdcp2_authentication_key_exchange(struct intel_connector
> *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	union {
>  		struct hdcp2_ake_init ake_init;
> @@ -1444,16 +1444,16 @@ static int
> hdcp2_authentication_key_exchange(struct intel_connector *connector)
>  		return ret;
>=20
>  	if (msgs.send_cert.rx_caps[0] !=3D HDCP_2_2_RX_CAPS_VERSION_VAL) {
> -		drm_dbg_kms(&dev_priv->drm, "cert.rx_caps dont claim
> HDCP2.2\n");
> +		drm_dbg_kms(&i915->drm, "cert.rx_caps dont claim
> HDCP2.2\n");
>  		return -EINVAL;
>  	}
>=20
>  	hdcp->is_repeater =3D
> HDCP_2_2_RX_REPEATER(msgs.send_cert.rx_caps[2]);
>=20
> -	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm,
> +	if (drm_hdcp_check_ksvs_revoked(&i915->drm,
>  					msgs.send_cert.cert_rx.receiver_id,
>  					1) > 0) {
> -		drm_err(&dev_priv->drm, "Receiver ID is revoked\n");
> +		drm_err(&i915->drm, "Receiver ID is revoked\n");
>  		return -EPERM;
>  	}
>=20
> @@ -1607,7 +1607,7 @@ static
>  int hdcp2_authenticate_repeater_topology(struct intel_connector
> *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	union {
>  		struct hdcp2_rep_send_receiverid_list recvid_list;
> @@ -1627,7 +1627,7 @@ int hdcp2_authenticate_repeater_topology(struct
> intel_connector *connector)
>=20
>  	if (HDCP_2_2_MAX_CASCADE_EXCEEDED(rx_info[1]) ||
>  	    HDCP_2_2_MAX_DEVS_EXCEEDED(rx_info[1])) {
> -		drm_dbg_kms(&dev_priv->drm, "Topology Max Size
> Exceeded\n");
> +		drm_dbg_kms(&i915->drm, "Topology Max Size Exceeded\n");
>  		return -EINVAL;
>  	}
>=20
> @@ -1644,23 +1644,23 @@ int hdcp2_authenticate_repeater_topology(struct
> intel_connector *connector)
>  		drm_hdcp_be24_to_cpu((const u8
> *)msgs.recvid_list.seq_num_v);
>=20
>  	if (!hdcp->hdcp2_encrypted && seq_num_v) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Non zero Seq_num_v at first RecvId_List msg\n");
>  		return -EINVAL;
>  	}
>=20
>  	if (seq_num_v < hdcp->seq_num_v) {
>  		/* Roll over of the seq_num_v from repeater. Reauthenticate.
> */
> -		drm_dbg_kms(&dev_priv->drm, "Seq_num_v roll over.\n");
> +		drm_dbg_kms(&i915->drm, "Seq_num_v roll over.\n");
>  		return -EINVAL;
>  	}
>=20
>  	device_cnt =3D (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
>  		      HDCP_2_2_DEV_COUNT_LO(rx_info[1]));
> -	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm,
> +	if (drm_hdcp_check_ksvs_revoked(&i915->drm,
>  					msgs.recvid_list.receiver_ids,
>  					device_cnt) > 0) {
> -		drm_err(&dev_priv->drm, "Revoked receiver ID(s) is in list\n");
> +		drm_err(&i915->drm, "Revoked receiver ID(s) is in list\n");
>  		return -EPERM;
>  	}
>=20
> @@ -1729,16 +1729,16 @@ static int hdcp2_authenticate_sink(struct
> intel_connector *connector)
>  static int hdcp2_enable_stream_encryption(struct intel_connector
> *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	enum transcoder cpu_transcoder =3D hdcp->cpu_transcoder;
>  	enum port port =3D dig_port->base.port;
>  	int ret =3D 0;
>=20
> -	if (!(intel_de_read(dev_priv, HDCP2_STATUS(dev_priv,
> cpu_transcoder, port)) &
> +	if (!(intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
>  			    LINK_ENCRYPTION_STATUS)) {
> -		drm_err(&dev_priv->drm, "[%s:%d] HDCP 2.2 Link is not
> encrypted\n",
> +		drm_err(&i915->drm, "[%s:%d] HDCP 2.2 Link is not
> encrypted\n",
>  			connector->base.name, connector->base.base.id);
>  		ret =3D -EPERM;
>  		goto link_recover;
> @@ -1747,11 +1747,11 @@ static int hdcp2_enable_stream_encryption(struct
> intel_connector *connector)
>  	if (hdcp->shim->stream_2_2_encryption) {
>  		ret =3D hdcp->shim->stream_2_2_encryption(connector, true);
>  		if (ret) {
> -			drm_err(&dev_priv->drm, "[%s:%d] Failed to enable
> HDCP 2.2 stream enc\n",
> +			drm_err(&i915->drm, "[%s:%d] Failed to enable HDCP
> 2.2 stream enc\n",
>  				connector->base.name, connector-
> >base.base.id);
>  			return ret;
>  		}
> -		drm_dbg_kms(&dev_priv->drm, "HDCP 2.2 transcoder: %s
> stream encrypted\n",
> +		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream
> encrypted\n",
>  			    transcoder_name(hdcp->stream_transcoder));
>  	}
>=20
> @@ -1759,7 +1759,7 @@ static int hdcp2_enable_stream_encryption(struct
> intel_connector *connector)
>=20
>  link_recover:
>  	if (hdcp2_deauthenticate_port(connector) < 0)
> -		drm_dbg_kms(&dev_priv->drm, "Port deauth failed.\n");
> +		drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
>=20
>  	dig_port->hdcp_auth_status =3D false;
>  	data->k =3D 0;
> @@ -1770,34 +1770,34 @@ static int hdcp2_enable_stream_encryption(struct
> intel_connector *connector)
>  static int hdcp2_enable_encryption(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	enum port port =3D dig_port->base.port;
>  	enum transcoder cpu_transcoder =3D hdcp->cpu_transcoder;
>  	int ret;
>=20
> -	drm_WARN_ON(&dev_priv->drm,
> -		    intel_de_read(dev_priv, HDCP2_STATUS(dev_priv,
> cpu_transcoder, port)) &
> +	drm_WARN_ON(&i915->drm,
> +		    intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder,
> port)) &
>  		    LINK_ENCRYPTION_STATUS);
>  	if (hdcp->shim->toggle_signalling) {
>  		ret =3D hdcp->shim->toggle_signalling(dig_port, cpu_transcoder,
>  						    true);
>  		if (ret) {
> -			drm_err(&dev_priv->drm,
> +			drm_err(&i915->drm,
>  				"Failed to enable HDCP signalling. %d\n",
>  				ret);
>  			return ret;
>  		}
>  	}
>=20
> -	if (intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder,
> port)) &
> +	if (intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
>  	    LINK_AUTH_STATUS)
>  		/* Link is Authenticated. Now set for Encryption */
> -		intel_de_rmw(dev_priv, HDCP2_CTL(dev_priv,
> cpu_transcoder, port),
> +		intel_de_rmw(i915, HDCP2_CTL(i915, cpu_transcoder, port),
>  			     0, CTL_LINK_ENCRYPTION_REQ);
>=20
> -	ret =3D intel_de_wait_for_set(dev_priv,
> -				    HDCP2_STATUS(dev_priv, cpu_transcoder,
> +	ret =3D intel_de_wait_for_set(i915,
> +				    HDCP2_STATUS(i915, cpu_transcoder,
>  						 port),
>  				    LINK_ENCRYPTION_STATUS,
>=20
> HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
> @@ -1809,31 +1809,31 @@ static int hdcp2_enable_encryption(struct
> intel_connector *connector)
>  static int hdcp2_disable_encryption(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	enum port port =3D dig_port->base.port;
>  	enum transcoder cpu_transcoder =3D hdcp->cpu_transcoder;
>  	int ret;
>=20
> -	drm_WARN_ON(&dev_priv->drm, !(intel_de_read(dev_priv,
> HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
> +	drm_WARN_ON(&i915->drm, !(intel_de_read(i915,
> HDCP2_STATUS(i915, cpu_transcoder, port)) &
>  				      LINK_ENCRYPTION_STATUS));
>=20
> -	intel_de_rmw(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
> +	intel_de_rmw(i915, HDCP2_CTL(i915, cpu_transcoder, port),
>  		     CTL_LINK_ENCRYPTION_REQ, 0);
>=20
> -	ret =3D intel_de_wait_for_clear(dev_priv,
> -				      HDCP2_STATUS(dev_priv, cpu_transcoder,
> +	ret =3D intel_de_wait_for_clear(i915,
> +				      HDCP2_STATUS(i915, cpu_transcoder,
>  						   port),
>  				      LINK_ENCRYPTION_STATUS,
>=20
> HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
>  	if (ret =3D=3D -ETIMEDOUT)
> -		drm_dbg_kms(&dev_priv->drm, "Disable Encryption
> Timedout");
> +		drm_dbg_kms(&i915->drm, "Disable Encryption Timedout");
>=20
>  	if (hdcp->shim->toggle_signalling) {
>  		ret =3D hdcp->shim->toggle_signalling(dig_port, cpu_transcoder,
>  						    false);
>  		if (ret) {
> -			drm_err(&dev_priv->drm,
> +			drm_err(&i915->drm,
>  				"Failed to disable HDCP signalling. %d\n",
>  				ret);
>  			return ret;
> @@ -1993,7 +1993,7 @@ _intel_hdcp2_disable(struct intel_connector
> *connector, bool hdcp2_link_recovery
>  static int intel_hdcp2_check_link(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	enum port port =3D dig_port->base.port;
>  	enum transcoder cpu_transcoder;
> @@ -2010,11 +2010,11 @@ static int intel_hdcp2_check_link(struct
> intel_connector *connector)
>  		goto out;
>  	}
>=20
> -	if (drm_WARN_ON(&dev_priv->drm,
> -			!intel_hdcp2_in_use(dev_priv, cpu_transcoder, port)))
> {
> -		drm_err(&dev_priv->drm,
> +	if (drm_WARN_ON(&i915->drm,
> +			!intel_hdcp2_in_use(i915, cpu_transcoder, port))) {
> +		drm_err(&i915->drm,
>  			"HDCP2.2 link stopped the encryption, %x\n",
> -			intel_de_read(dev_priv, HDCP2_STATUS(dev_priv,
> cpu_transcoder, port)));
> +			intel_de_read(i915, HDCP2_STATUS(i915,
> cpu_transcoder, port)));
>  		ret =3D -ENXIO;
>  		_intel_hdcp2_disable(connector, true);
>  		intel_hdcp_update_value(connector,
> @@ -2037,7 +2037,7 @@ static int intel_hdcp2_check_link(struct
> intel_connector *connector)
>  		if (hdcp->value =3D=3D
> DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
>  			goto out;
>=20
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "HDCP2.2 Downstream topology change\n");
>  		ret =3D hdcp2_authenticate_repeater_topology(connector);
>  		if (!ret) {
> @@ -2046,19 +2046,19 @@ static int intel_hdcp2_check_link(struct
> intel_connector *connector)
>  					true);
>  			goto out;
>  		}
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "[%s:%d] Repeater topology auth failed.(%d)\n",
>  			    connector->base.name, connector->base.base.id,
>  			    ret);
>  	} else {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "[%s:%d] HDCP2.2 link failed, retrying auth\n",
>  			    connector->base.name, connector->base.base.id);
>  	}
>=20
>  	ret =3D _intel_hdcp2_disable(connector, true);
>  	if (ret) {
> -		drm_err(&dev_priv->drm,
> +		drm_err(&i915->drm,
>  			"[%s:%d] Failed to disable hdcp2.2 (%d)\n",
>  			connector->base.name, connector->base.base.id, ret);
>  		intel_hdcp_update_value(connector,
> @@ -2068,7 +2068,7 @@ static int intel_hdcp2_check_link(struct
> intel_connector *connector)
>=20
>  	ret =3D _intel_hdcp2_enable(connector);
>  	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "[%s:%d] Failed to enable hdcp2.2 (%d)\n",
>  			    connector->base.name, connector->base.base.id,
>  			    ret);
> @@ -2105,13 +2105,13 @@ static void intel_hdcp_check_work(struct
> work_struct *work)
>  static int i915_hdcp_component_bind(struct device *i915_kdev,
>  				    struct device *mei_kdev, void *data)
>  {
> -	struct drm_i915_private *dev_priv =3D kdev_to_i915(i915_kdev);
> +	struct drm_i915_private *i915 =3D kdev_to_i915(i915_kdev);
>=20
> -	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	dev_priv->display.hdcp.master =3D (struct i915_hdcp_master *)data;
> -	dev_priv->display.hdcp.master->hdcp_dev =3D mei_kdev;
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	i915->display.hdcp.master =3D (struct i915_hdcp_master *)data;
> +	i915->display.hdcp.master->hdcp_dev =3D mei_kdev;
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return 0;
>  }
> @@ -2119,12 +2119,12 @@ static int i915_hdcp_component_bind(struct
> device *i915_kdev,
>  static void i915_hdcp_component_unbind(struct device *i915_kdev,
>  				       struct device *mei_kdev, void *data)
>  {
> -	struct drm_i915_private *dev_priv =3D kdev_to_i915(i915_kdev);
> +	struct drm_i915_private *i915 =3D kdev_to_i915(i915_kdev);
>=20
> -	drm_dbg(&dev_priv->drm, "I915 HDCP comp unbind\n");
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	dev_priv->display.hdcp.master =3D NULL;
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	i915->display.hdcp.master =3D NULL;
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>  }
>=20
>  static const struct component_ops i915_hdcp_ops =3D {
> @@ -2158,11 +2158,11 @@ static int initialize_hdcp_port_data(struct
> intel_connector *connector,
>  				     struct intel_digital_port *dig_port,
>  				     const struct intel_hdcp_shim *shim)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	enum port port =3D dig_port->base.port;
>=20
> -	if (DISPLAY_VER(dev_priv) < 12)
> +	if (DISPLAY_VER(i915) < 12)
>  		data->hdcp_ddi =3D intel_get_hdcp_ddi_index(port);
>  	else
>  		/*
> @@ -2182,55 +2182,55 @@ static int initialize_hdcp_port_data(struct
> intel_connector *connector,
>  	data->protocol =3D (u8)shim->protocol;
>=20
>  	if (!data->streams)
> -		data->streams =3D kcalloc(INTEL_NUM_PIPES(dev_priv),
> +		data->streams =3D kcalloc(INTEL_NUM_PIPES(i915),
>  					sizeof(struct hdcp2_streamid_type),
>  					GFP_KERNEL);
>  	if (!data->streams) {
> -		drm_err(&dev_priv->drm, "Out of Memory\n");
> +		drm_err(&i915->drm, "Out of Memory\n");
>  		return -ENOMEM;
>  	}
>=20
>  	return 0;
>  }
>=20
> -static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
> +static bool is_hdcp2_supported(struct drm_i915_private *i915)
>  {
> -	if (intel_hdcp_gsc_cs_required(dev_priv))
> +	if (intel_hdcp_gsc_cs_required(i915))
>  		return true;
>=20
>  	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
>  		return false;
>=20
> -	return (DISPLAY_VER(dev_priv) >=3D 10 ||
> -		IS_KABYLAKE(dev_priv) ||
> -		IS_COFFEELAKE(dev_priv) ||
> -		IS_COMETLAKE(dev_priv));
> +	return (DISPLAY_VER(i915) >=3D 10 ||
> +		IS_KABYLAKE(i915) ||
> +		IS_COFFEELAKE(i915) ||
> +		IS_COMETLAKE(i915));
>  }
>=20
> -void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
> +void intel_hdcp_component_init(struct drm_i915_private *i915)
>  {
>  	int ret;
>=20
> -	if (!is_hdcp2_supported(dev_priv))
> +	if (!is_hdcp2_supported(i915))
>  		return;
>=20
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	drm_WARN_ON(&dev_priv->drm, dev_priv-
> >display.hdcp.comp_added);
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	drm_WARN_ON(&i915->drm, i915->display.hdcp.comp_added);
>=20
> -	dev_priv->display.hdcp.comp_added =3D true;
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> -	if (intel_hdcp_gsc_cs_required(dev_priv))
> -		ret =3D intel_hdcp_gsc_init(dev_priv);
> +	i915->display.hdcp.comp_added =3D true;
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	if (intel_hdcp_gsc_cs_required(i915))
> +		ret =3D intel_hdcp_gsc_init(i915);
>  	else
> -		ret =3D component_add_typed(dev_priv->drm.dev,
> &i915_hdcp_ops,
> +		ret =3D component_add_typed(i915->drm.dev, &i915_hdcp_ops,
>  					  I915_COMPONENT_HDCP);
>=20
>  	if (ret < 0) {
> -		drm_dbg_kms(&dev_priv->drm, "Failed at fw component
> add(%d)\n",
> +		drm_dbg_kms(&i915->drm, "Failed at fw component
> add(%d)\n",
>  			    ret);
> -		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -		dev_priv->display.hdcp.comp_added =3D false;
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +		mutex_lock(&i915->display.hdcp.comp_mutex);
> +		i915->display.hdcp.comp_added =3D false;
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return;
>  	}
>  }
> @@ -2256,14 +2256,14 @@ int intel_hdcp_init(struct intel_connector
> *connector,
>  		    struct intel_digital_port *dig_port,
>  		    const struct intel_hdcp_shim *shim)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	int ret;
>=20
>  	if (!shim)
>  		return -EINVAL;
>=20
> -	if (is_hdcp2_supported(dev_priv))
> +	if (is_hdcp2_supported(i915))
>  		intel_hdcp2_init(connector, dig_port, shim);
>=20
>  	ret =3D
> @@ -2335,7 +2335,7 @@ int intel_hdcp_enable(struct intel_atomic_state
> *state,
>  		      const struct intel_crtc_state *pipe_config,
>  		      const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> @@ -2347,14 +2347,14 @@ int intel_hdcp_enable(struct intel_atomic_state
> *state,
>  		return -ENOENT;
>=20
>  	if (!connector->encoder) {
> -		drm_err(&dev_priv->drm, "[%s:%d] encoder is not
> initialized\n",
> +		drm_err(&i915->drm, "[%s:%d] encoder is not initialized\n",
>  			connector->base.name, connector->base.base.id);
>  		return -ENODEV;
>  	}
>=20
>  	mutex_lock(&hdcp->mutex);
>  	mutex_lock(&dig_port->hdcp_mutex);
> -	drm_WARN_ON(&dev_priv->drm,
> +	drm_WARN_ON(&i915->drm,
>  		    hdcp->value =3D=3D
> DRM_MODE_CONTENT_PROTECTION_ENABLED);
>  	hdcp->content_type =3D (u8)conn_state->content_type;
>=20
> @@ -2366,7 +2366,7 @@ int intel_hdcp_enable(struct intel_atomic_state
> *state,
>  		hdcp->stream_transcoder =3D INVALID_TRANSCODER;
>  	}
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 12)
> +	if (DISPLAY_VER(i915) >=3D 12)
>  		dig_port->hdcp_port_data.hdcp_transcoder =3D
>  			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
>=20
> @@ -2382,7 +2382,7 @@ int intel_hdcp_enable(struct intel_atomic_state
> *state,
>  				check_link_interval =3D
>  					DRM_HDCP2_CHECK_PERIOD_MS;
>  		} else {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "Set content streams failed: (%d)\n",
>  				    ret);
>  		}
> @@ -2498,21 +2498,21 @@ void intel_hdcp_update_pipe(struct
> intel_atomic_state *state,
>  		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>  }
>=20
> -void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
> +void intel_hdcp_component_fini(struct drm_i915_private *i915)
>  {
> -	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	if (!dev_priv->display.hdcp.comp_added) {
> -		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	if (!i915->display.hdcp.comp_added) {
> +		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return;
>  	}
>=20
> -	dev_priv->display.hdcp.comp_added =3D false;
> -	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> +	i915->display.hdcp.comp_added =3D false;
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
> -	if (intel_hdcp_gsc_cs_required(dev_priv))
> -		intel_hdcp_gsc_fini(dev_priv);
> +	if (intel_hdcp_gsc_cs_required(i915))
> +		intel_hdcp_gsc_fini(i915);
>  	else
> -		component_del(dev_priv->drm.dev, &i915_hdcp_ops);
> +		component_del(i915->drm.dev, &i915_hdcp_ops);
>  }
>=20
>  void intel_hdcp_cleanup(struct intel_connector *connector)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h
> b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index ce283f4f69fd..5997c52a0958 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -37,11 +37,11 @@ void intel_hdcp_update_pipe(struct intel_atomic_state
> *state,
>  			    struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    const struct drm_connector_state *conn_state);
> -bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port=
);
> +bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
>  bool intel_hdcp_capable(struct intel_connector *connector);
>  bool intel_hdcp2_capable(struct intel_connector *connector);
> -void intel_hdcp_component_init(struct drm_i915_private *dev_priv);
> -void intel_hdcp_component_fini(struct drm_i915_private *dev_priv);
> +void intel_hdcp_component_init(struct drm_i915_private *i915);
> +void intel_hdcp_component_fini(struct drm_i915_private *i915);
>  void intel_hdcp_cleanup(struct intel_connector *connector);
>  void intel_hdcp_handle_cp_irq(struct intel_connector *connector);
>=20

LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> --
> 2.25.1


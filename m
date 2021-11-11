Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E0644CEB4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 02:14:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A0566E8EB;
	Thu, 11 Nov 2021 01:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB846E8EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Nov 2021 01:14:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="293652855"
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="293652855"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 17:14:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="452544739"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 10 Nov 2021 17:14:48 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 10 Nov 2021 17:14:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 10 Nov 2021 17:14:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 10 Nov 2021 17:14:47 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 10 Nov 2021 17:14:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZQf6vgx3iPHYEiMtZ8tiqCxLcKcqV5kmw+Pygb8Z6spxrVIHAuorQc2jnU5YR0ysQDQ4OTET9gGi0rHa6zPcMHD0LPNh+s6kdZniQXS8xOnDSJBTkpgWe8rI66rHOwFCGDZI+tbEEvNNCK3inz+wx2AUvzB3fpi2NdiM9oyBCF16MUx/opO1cXnH36QZdKNIPcagjD56JFnYxXJktyyYmRpZ/WdRB6qI8wj3+BRvdKdW6SSeQC7eAYfCjnOXzdWc4PNGywq30cG/qhQGpkHSztj/pKyb+QJwzWfaCJ/W4IyZwR0PaFCEZG9El3H03LU1eLTsKCWXHF76qp3XWpQ2ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Llp2Nz6t5Q31OaLfDUvK/BwOJke2yHg9nDdfF4yj5Oo=;
 b=g/vYbII1FnFmz31xI62vQ6iOAMSNjmcMY/rU+wVccGA6kINYlfOkUeBN0lkMZ68IOOyMtdJgXt9pbJ0cBFVeQpymt4WBDW0/W8JARu6gSLQsNxbpvPx02KcyhebTTpviLTGIPANumXHKLPzpQOuz03O29qdkbBEQL1B5n3Vi6EOJVzbEueJpwltBsRDxltaEhVqfOtBUB8wO1PnctE76afjX+XoNdDzEjBiNLdENyeQR+Yow3S4m3maaIsYu4+i8Go26ffIZF9VkowiSALMUt36KwbK5Bj8+KCz9P4sQYlQG+45YqtDQpoDbkpV9fuSjFjvnXFqyO7xYpXRr6K7X6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Llp2Nz6t5Q31OaLfDUvK/BwOJke2yHg9nDdfF4yj5Oo=;
 b=na+1pYC7AWj/vPdwm3piwbS062L29FEQcfGV8CvMxcoURoFaKYN5oBXN5Jk2vTec/T2CqoFHlcVWoZs5+mIksU+nsVIx21ih7tOx4AwxQ7qSghKa/RNUa8nW6CLtSqA6IdL2qGOcKlzvd47rd5xeE9Zzb4L3Rq38uvgoP6crhE4=
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by BYAPR11MB3416.namprd11.prod.outlook.com (2603:10b6:a03:90::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Thu, 11 Nov
 2021 01:14:44 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::10f:2438:c4a8:4476]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::10f:2438:c4a8:4476%8]) with mapi id 15.20.4669.011; Thu, 11 Nov 2021
 01:14:44 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/dsi: transmit brightness command in HS state
Thread-Index: AQHX1c6iiZAfO/TB1ECDVe5w/fyFIKv8lGUAgADxtJA=
Date: Thu, 11 Nov 2021 01:14:43 +0000
Message-ID: <SJ0PR11MB58948DC96596233FAC8AF443F1949@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20211109082458.13740-1-william.tseng@intel.com>
 <20211110010217.26759-1-william.tseng@intel.com> <87r1bo47dh.fsf@intel.com>
In-Reply-To: <87r1bo47dh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d01758c4-d0f6-429f-b9dd-08d9a4b0a53c
x-ms-traffictypediagnostic: BYAPR11MB3416:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB3416A3726A051DC30DE2A948F1949@BYAPR11MB3416.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5FYfaMq2lqHE2PDg7Eg3HAYarQG1WXwMZN33tIZe3SSPDLinpmjRu8SnvgtjgZdIjfwE8Va8hyE5i410fk/g+9O4Jz6jYosCGPqR/11IwVH3eDPyomKjg8Yj6t0WdVdN7mb50rKWp9ODyEaIMutZpyM7Rd5KZqQMwJwqmLnXELoWju7388z5mzpbEDB9wro+4IQedAZPX7ez7bVVROLH7ilO+YFx6i0LYaoUWKHyRdmoX6njOdkMcFcoUTN4MeDbWFA0REUDNSbop04ujFKRef0t9t97trlol9n1cwn9FOHS7XahJ+LAFdkcS2JbDhFYm/jNKKSGrxbWqyPj8q3xB5L3NGs2f9+RCUT56CGZZiKDE8zaAp9L3QZqRgM8yAvwjl/s+EENhLvDPaOAWcBuIUTtpx9YEvhdyqz5jakjO+yOgADeTRN7YbJ2rMCzp8F8BHXPmeCdnM9RO5+sigZQmRvy+xDiNZusLni/TiT+cHBeY+PlYMWgoOIpfJEUmnJcTM43OHLe5pQXQdHGOvCmk7Z5i6mXlrCbPI7L3kzI96BS+f6sm9KlXePctI0QjBHULbH06DNj2SK43z6gAxZ8DRGu2tCoGr/QietUECD/NxTsAK57QqrztQnyrf3I7M6f6ItGgAiczRifrX60Vl2NqZLJIN5pNGhewGA9vfu09plKIvE81O1nR6X47Kog6cuhyrD+/9Agx/jpZjcDWSPYHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(54906003)(8796002)(86362001)(66446008)(9686003)(64756008)(55016002)(66476007)(66556008)(4326008)(53546011)(26005)(186003)(8936002)(38070700005)(82960400001)(8676002)(83380400001)(316002)(66946007)(2906002)(52536014)(5660300002)(6506007)(122000001)(71200400001)(508600001)(7696005)(38100700002)(33656002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jXnNhr3VwH+NvAOCI4Xz/6NNWTvuQvPViuzxDYIJuIuBFyuHaEftA1K+jrw2?=
 =?us-ascii?Q?1vEMEFeC9Dqj2B2NFXXOtAnXYdOQiRa52MKeu0lDqLlDq1WQUyp4NSS2UcJy?=
 =?us-ascii?Q?r2b4/YfAcFMUsq/GFexlqTq7qhj11qhRDkDQ2V0YvI0yT4nrtuwgCt0bqxlB?=
 =?us-ascii?Q?i6wbGMx6ohYzbKrM37kt689BbvUBcC6OSLJJ6DkgoyBTt9TE2stpGE/6/5jG?=
 =?us-ascii?Q?T1heJd+IRDSoW7TE2NHT1jkS+Iz3bUlvw6h1XdmJd0uUdiPSq5oHotj30sQa?=
 =?us-ascii?Q?BqzKvJD7/IJK+zqWhm2/uGWNptBiDlJu+oxp5uAetNw/O6NOUvidpB+5Fj+R?=
 =?us-ascii?Q?i1hDosRBPKs6w7P/GeXaycea7V1Pi4yAXZVFSStGYWLdTiBtVY0L2t2fvX6F?=
 =?us-ascii?Q?yuEzW7A7RTEsOQPqfuUNNXBQE1NZxQeUeKsctG6VP4e4W6XpVoSUT5Vh9dOh?=
 =?us-ascii?Q?l41x8AhJ5gfQAzeLvaosTjOFGkh1zBZlEzaL7qrEgM+KVK8mCrYHwXFGIG5t?=
 =?us-ascii?Q?qG9hs3XWM4PHjNSKUUA2GQ36MfAa5ATf+nV/lts/Ft7Y+qAKzdnsWBw6REVS?=
 =?us-ascii?Q?jQVAeqkC6KXFXxMINXGSPXIrajYuZ8TR48Zsi09wUOxilFpPKoRJARPfqFGC?=
 =?us-ascii?Q?u3kX9X2oJPxBAzGeasTJBZylULGVy7gsBskMu4sMAo4sXb4ZDa6xFmqWl99+?=
 =?us-ascii?Q?Co/lR7lawgqYWpqtBPOyBjVuCFWWIlZ+7UN9Wc7brMb4M8Lj61qTunt4ay7c?=
 =?us-ascii?Q?M2ri/pR+BApbZZCrUQceYqiNq0o+Sig5XYf+UaRFrRDUudxaBsZxWyx57yfN?=
 =?us-ascii?Q?eZ2VIP1RLwDQHZL1VcQYlfVZKD5VksV9x9vyzgOEtNOcosOdeJXAVWNp66PK?=
 =?us-ascii?Q?Zm3nI8gRutowfwdJKCihJK17Ivo5jgNrtRTojEy+qX8W1qFLxKRosA4n52UV?=
 =?us-ascii?Q?Cel/7Z/QBoZsmoPOr3tbJ+8Xg3n0pTc4mC4rdy5RV+1KDHeSq1bUuI30ybgZ?=
 =?us-ascii?Q?dcm7ALOBGxqQJFYbskJ/rM66ZrGb3srHfFS0QuFk2zacnNMkPGfeLgYLJg7n?=
 =?us-ascii?Q?3t37FV3GBgVY8oAck1bE+3GKRHM3WHMPouc493cGYcTJUr3k0IfPvfLciytw?=
 =?us-ascii?Q?bv3KMRxmCqdFVplF3QANjZpGowBacAeNJ+2lXwPXUF1Gpwh5Fsv2DMo2+Sku?=
 =?us-ascii?Q?amfH3UDCbgpMRQCBKeuHP9dhebJMQoBeDTWAfMa+RRar5TbtV+qXTg+5tbw9?=
 =?us-ascii?Q?mUDwYnZxAKY5+w9u6tr/SABXgLfVd9pWG5wTCuuM9/a0IjsJiX5tBliZJBLR?=
 =?us-ascii?Q?97ovkaE/uyYfLujRFsNZ9l17GfEiSOHLHkZYiPD4FE6P0VeTYfTGu50ab6SZ?=
 =?us-ascii?Q?11GCfcRoAXCd0vIgs2q/uzcxg/6eQgOVPkl8J0c25pOz/c+Oe0REn1V7nnVD?=
 =?us-ascii?Q?uflWtzliR1LWxLUiUl88mJOG44bmnPqD9Zrmy9bcaSUfuYxEft/7jCTPk3KC?=
 =?us-ascii?Q?UNUoWnEamtj19sBCYtuuQ8IJvGGdLprPfkQwkzkMxC4Dok/PsseffytMhnxb?=
 =?us-ascii?Q?AMKQIQPSpW6YV2krQZ4LWWqHEikhUG/qVQj451JvCFfCa+9ta1PPvIlUZsqr?=
 =?us-ascii?Q?og=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d01758c4-d0f6-429f-b9dd-08d9a4b0a53c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2021 01:14:44.1193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iBHIIJSi/OOurhgMlmL6zs4jvU/0jWOVaE00CyIgzF/sKLUjn0YwhO9LbOoE15mo4/vMtKFLXEAuxg89vrEUSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3416
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsi: transmit brightness
 command in HS state
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
Reply-To: "20211110010217.26759-1-william.tseng@intel.com"
 <20211110010217.26759-1-william.tseng@intel.com>
Cc: "Chiou,
 Cooper" <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Noted.  Thanks for your consideration, Jani.

Regards
William

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Wednesday, November 10, 2021 6:45 PM
To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Tseng, William <william.tseng@intel.com>; Ville Syrjala <ville.syrjala@=
linux.intel.com>; Kulkarni, Vandita <vandita.kulkarni@intel.com>; Lee, Shaw=
n C <shawn.c.lee@intel.com>; Chiou, Cooper <cooper.chiou@intel.com>
Subject: Re: [PATCH v3] drm/i915/dsi: transmit brightness command in HS sta=
te

On Wed, 10 Nov 2021, William Tseng <william.tseng@intel.com> wrote:
> In Video Mode, if DSI transcoder is set to transmit packets in LP=20
> Escape mode, screen flickering would be obseved when brightness=20
> commands are continuously and quickly transmitted to a panel.
>
> The problem may be resolved by changing the mode to transmit packets=20
> from Low Power to HS.
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c=20
> b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> index f61ed82e8867..7d234429e71e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> @@ -71,6 +71,7 @@ static void dcs_set_backlight(const struct drm_connecto=
r_state *conn_state, u32
>  	u8 data[2] =3D {};
>  	enum port port;
>  	size_t len =3D panel->backlight.max > U8_MAX ? 2 : 1;
> +	unsigned long mode_flags;
> =20
>  	if (len =3D=3D 1) {
>  		data[0] =3D level;
> @@ -81,8 +82,11 @@ static void dcs_set_backlight(const struct=20
> drm_connector_state *conn_state, u32
> =20
>  	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
>  		dsi_device =3D intel_dsi->dsi_hosts[port]->device;
> +		mode_flags =3D dsi_device->mode_flags;
> +		dsi_device->mode_flags &=3D ~MIPI_DSI_MODE_LPM;
>  		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
>  				   &data, len);
> +		dsi_device->mode_flags =3D mode_flags;

I realize we don't really have a clear picture how to manage
->mode_flags or MIPI_DSI_MODE_LPM in particular, but this seems like the
safest option for now.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

I'll push once CI results are in; had to request a re-run.



>  	}
>  }

--
Jani Nikula, Intel Open Source Graphics Center

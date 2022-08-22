Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A58859B832
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 06:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1632196C71;
	Mon, 22 Aug 2022 04:03:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6248996CBB
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 04:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661140982; x=1692676982;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YFWhv5zbHkVfaULq1RTqLoYh4JH1dEELoGLX5CoTSck=;
 b=OC5M0gKvw4FD/ffsDrMnRNJxeHkyr3EaZplemPPQoD6kW4sqby6LA5KU
 tfmxxyDa4gjofBfhJcxKh9fs73MFp1lGqosjROeLLwkXv0sHhWwZhoWo4
 YReOqUWt/LVOW0mYu2WQ39HVd4b42Ow/T5rXKYgcy06X/I2+DYXij4XfR
 5GyQJ9Ke3g5tIVKtxhNZN7nOkjhfW1N2ZqntfsNf1FdZ69ZkLea11ng1H
 xOZQnDtHI8LTbSxNx+CWck5pGY/3LQyNypp2uW2ydB4+0OVps2ObkcoCe
 VivDQz6UIuwv/wwQjmpaZbGYkvFep61EVHaM6WOPVF81KiqlpsBa6zwpd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="293313011"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="293313011"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2022 21:02:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="734963944"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 21 Aug 2022 21:02:59 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 21 Aug 2022 21:02:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 21 Aug 2022 21:02:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 21 Aug 2022 21:02:58 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 21 Aug 2022 21:02:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=STeQPDWX9gdzU8G1PCbPklTBjaDOPnt9jaebR9Q3Pqy3xSNGjiFg1Bvn/zyqW3OwdJ5UfWGTjViIIyY+IMtWiD9ABudFz8rWmlQrB7yo6X6NTkzvhdbNT0lSXoUH6g/O9ShpcI0o83OPkcSb7Mb4sf+4I07abcbt0l8SFfVIoIoNu9Ni/Q50Y4xeAsGW+qwZXYYYVNLZeF95NhWG4j7+2RjlWBEuhMBqGp9j8SE6W/2NIrxboDWsKig4eBz+ESHKZbOwM8BUwqL3zDbTV9mz0f4SgoDepVxAV+1qglt6ryhH/cSwqkQiK9VDo7Vuk/8p34qzAZcvAS9WmJgLjNQgDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4HbhG39rFi9u+qOEIj6dgg+ltdEL5tnQeCw0Jzewxc4=;
 b=Gs5B78UqAoK0x1AeaLHJmog/pyvbwmQCqRSI6ehujT0enRZPrc2RqpPUsLuO1rif1T/m70e0g7qyRE9BILF94h4oeqTY7f2eFKT8Wfm4gzE0M+qsfdtgS0Aecza1H0HHgGHeDAqG3w43Lz3wkjDdMBLrzGqGX9VxZh3PFIv+cBo3iGf6ukMDBjXhzQNB/dkOWAR5kYuZu1g45pQ4PnI36A5UpM3Ff12JdljY8xy3scFwp1tfSdLWEJ10UjaseCo2Jjps9eR8J7Q267H+Y6ZajJwSHl+mzO5mDGcK+ohmgpRdThDnguWslKbnwK6kaeFKeUOrIO8wbh3LTtZh/HQjeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM5PR11MB1482.namprd11.prod.outlook.com (2603:10b6:4:4::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5546.16; Mon, 22 Aug 2022 04:02:47 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1%5]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 04:02:47 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 16/39] drm/i915: move and group hdcp under
 display.hdcp
Thread-Index: AQHYrZWVG/OuPHpTBUiNVKNEv2f/G626XFuw
Date: Mon, 22 Aug 2022 04:02:47 +0000
Message-ID: <DM6PR11MB3177D3B29C3C6D33C3E200A7BA719@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <ca70c87d2e5995555376279fe82a9caeba8f65bf.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <ca70c87d2e5995555376279fe82a9caeba8f65bf.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79eb3ec0-33d5-4340-2d19-08da83f32c9a
x-ms-traffictypediagnostic: DM5PR11MB1482:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UvgewmwyLAMmjio9mI6zMG2GzJLgEWhTTITUCxGjEMcEF6ukBO5s0u9MEQdAykCTATUFmMvjFoKlBKvTah8iC11/WO4n6LtWDgvMEDvQdna5a80zmvUI9fhFmeI5XZahr3REckCm7m77RXCWzwLZwKRvw/zFUBwzqkzeY6xxs8dD2Ik/ixwhwsuBeYRngMraCaFMcJhI7DfzZoQdTd7noL+TeaWJBYc4yqvb2+5JPmGeguA0eBnHZy39yJP+ry6E28nWNudM/eD1nH6tHfZGVPeflLE7Vw4c/ggqiBQ1KxgZ+N5QIBOUx9LzEumrVI9n1eUU8xc/2oQyCTfGWjkW5lYi8wwRHqdqvyQJcUtWVowuwpemnbVYD/MSa2TUx9tRkW+ZcrZFNpUnZlli40ERcdW6Gf9o8jYwgcWbZwraAjPpQhaY1f3RKYOA7cx5CVA0IHSjWq8ua2XApxD4ei2y4MKujURbzk13nRABgx+24UxY8TAXOa5F2bON935oT4SFdwKYIuFxNJTCPXSrvxS2AmBCwHOV9CDG9KC9ILZ/4gkGCQjBYCdXx+2d5V5MGy7dw34MQl2s6wIfJJx/sFbCrBRVxIK3fCSiZjZ3Q24uKk1MWwS2q7LoDOw+h5/fwbfZ6iVFHjhME3Ee4lM3D1ofP0eU5ZRs0xQwntymOCPrUYZQz1PRSxhqvj8T+rGuzFheaDUdUwetqNo2MirsV262VjLsHa8Xuh/lr9p66oPEkhxFZF+6fAx/pDXeqaXm68U9IFqvnVnvZTgITEKXk9Yh1w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(376002)(366004)(346002)(136003)(41300700001)(8676002)(478600001)(4326008)(316002)(54906003)(110136005)(76116006)(38100700002)(66946007)(66476007)(66446008)(66556008)(64756008)(8936002)(52536014)(2906002)(186003)(83380400001)(38070700005)(122000001)(107886003)(53546011)(26005)(86362001)(9686003)(33656002)(7696005)(6506007)(82960400001)(55236004)(71200400001)(30864003)(55016003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vD8S0ljJtgiTFMjtdWTnLKjrL2Oo/skid6THUlfKKzDse+4AdZe7QqXOcavs?=
 =?us-ascii?Q?LWxNFCU39Z18zgw0XlLE3KVp4phW75dBsRoGDV8fGaMyt5NMFQWaC8WTQJji?=
 =?us-ascii?Q?nhZUePU9bRbl95V6iiKphfCG65bUiYpOV2qRaDuIp/E+nEYvQJBR9MY6ns3o?=
 =?us-ascii?Q?pUwMyuRqPEImqt2g0cpW0BC5c/Aa4imw9P4nfuLkdJAD/2O2/GOJgBVp2ZnT?=
 =?us-ascii?Q?5Hjc2zEWGY5Pr8ffRLA1zngpjeJ8LqwVfWtuujqvrrS3cd/cRAPg7xO0YEBB?=
 =?us-ascii?Q?yXMbl2nnIuorqD9772cnL0H601ItlvAO5Un5eUoBAYUs6nb9yme4gxRr/Nz8?=
 =?us-ascii?Q?MnGOvE3RfAzbBbKYCrzXMghhqDLaZcBSjepWKHO6bxarVDVnHYHO2SrR1XTB?=
 =?us-ascii?Q?RVV4dBsqqydz4Yl0TT2j/aS45U0kP18UZkiG5FWXLGWhhlJUBgbdCTVTZUfY?=
 =?us-ascii?Q?/jhwuGaObMNmsiZ7o/yyDxTyMXZ6YywPGM1q50XKJYmLD36YSYQBp3twid1N?=
 =?us-ascii?Q?29u6xXEd9IUOhsvKaP6327Zi6PNW10uXDFC+7tw3A2rXytFU+H+EPrmSprFl?=
 =?us-ascii?Q?6peiinDwjYdZer5Fr6z9mnOe8iYGEcdkFfa3vCcUMQAbfoXjhhvAW4CMyGoz?=
 =?us-ascii?Q?H4PuOLXzVt2hVTLu9mPllYZbmZzikKyc4L3PzN9p3lg1PHxgFzFsDbM/jphd?=
 =?us-ascii?Q?GLNfOF7Xc3GZrYm04tZD+HAUQ8xqeICkAGPDuQl1kqCnmE+MgxiKuNCIDTsV?=
 =?us-ascii?Q?OUxJE/R1yLH5UpG182tZGOOghegOWrHFkUxRZObVrB4hBq73GFjpHqPy6Xiy?=
 =?us-ascii?Q?9NfHHZjSj+QYfWQBX+5okSzOkMkpFRu239Oo+9flFk7QOFLj2LySjTGJV3pD?=
 =?us-ascii?Q?y53vz+zziFbxcj9DOC/5fwahGh9CubzWb5ZfRFf0mY0Vj98UpfB25+ZGqAgC?=
 =?us-ascii?Q?w+KdyOGTFkflKXYC0/SxhFyAA2M/fJ3D5ad07i7ZJuk83p+mhAtWSLPsH607?=
 =?us-ascii?Q?rGFiYQdaNsfBYGl9bVItkJArHctr2yim6b3uV6G7bjOSzgwkNt2FsNAx9BYC?=
 =?us-ascii?Q?dgiqM+6M9PqssViMfnVvsT67TkweQCvXQluojhGhQ847/bKAw90nZ+qH9J5m?=
 =?us-ascii?Q?IvCO53YJQoQLs+WZenN94pJi1dDA5NV3E1Q2yDbrrJCf9mJIGJ2Bek80yN48?=
 =?us-ascii?Q?ESzzgn4kjy2uhONMdN8y/5OaUmdETMiwagllzxb9DsKRTGULZS/PiJbKFVJF?=
 =?us-ascii?Q?W+Yav9vI8y9ghixACfUZYTyFfmtPvKZocIo5tCBOOckllI6uqsJrK98Dxyq6?=
 =?us-ascii?Q?eQiFdpAcJSYNdDhUBIJcGOM4JAXrO+ZOwvKU9mQXWiuXqhrm7ybQw31epS/C?=
 =?us-ascii?Q?S7lnucg+wbmL3/oXdaZTl47z79hF7Dg2DrFLsQ0RMdjllkaj3Ai+pGphTZ5b?=
 =?us-ascii?Q?LTBLWSLt9nWpNHPSa6IQVmJuqk0oo7PtNXLzmX6FFeK9ugmmQmIc7pwUp1gS?=
 =?us-ascii?Q?HGH7MgrRdMGMIh6i9m9OGPP1jPsYrLji9i7RDtYJGvfX5NTd6m8cBJiW8EEh?=
 =?us-ascii?Q?NxDGwLudgKKFRYRIb9cIwInxmrYpZzuiw9qP2P70?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79eb3ec0-33d5-4340-2d19-08da83f32c9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 04:02:47.4783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qB1L9iZA42wyACeFdIOb9h/uoE2MFuXbMiTiQ3aXUf7j236mU6wRrkkqNOrEQZJJYUNWRlfgOaU02hI5dB6BIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1482
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 16/39] drm/i915: move and group hdcp under
 display.hdcp
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 16/39] drm/i915: move and group hdcp under
> display.hdcp
>=20
> Move display related members under drm_i915_private display sub-struct.
I hope the previous comments as to update of the patch description will be =
taken care!

>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
With the above said updates included
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>  .../gpu/drm/i915/display/intel_display_core.h |   9 ++
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 134 +++++++++---------
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   6 -
>  4 files changed, 77 insertions(+), 74 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index c2a79e487ee9..8ac63352b27b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -19,6 +19,7 @@
>=20
>  struct drm_i915_private;
>  struct i915_audio_component;
> +struct i915_hdcp_comp_master;
>  struct intel_atomic_state;
>  struct intel_audio_funcs;
>  struct intel_cdclk_funcs;
> @@ -193,6 +194,14 @@ struct intel_display {
>  		wait_queue_head_t wait_queue;
>  	} gmbus;
>=20
> +	struct {
> +		struct i915_hdcp_comp_master *master;
> +		bool comp_added;
> +
> +		/* Mutex to protect the above hdcp component related
> values. */
> +		struct mutex comp_mutex;
> +	} hdcp;
> +
>  	struct {
>  		u32 mmio_base;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index c5e9e86bb4cb..6f04dd69087e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -188,12 +188,12 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>  		return false;
>=20
>  	/* MEI interface is solid */
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	if (!dev_priv->hdcp_comp_added ||  !dev_priv->hdcp_master) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	if (!dev_priv->display.hdcp.comp_added ||  !dev_priv-
> >display.hdcp.master) {
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return false;
>  	}
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	/* Sink's capability for HDCP2.2 */
>  	hdcp->shim->hdcp_2_2_capable(dig_port, &capable); @@ -1124,11
> +1124,11 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1136,7 +1136,7 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
>  	if (ret)
>  		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed.
> %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1154,11 +1154,11 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1168,7 +1168,7 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify rx_cert failed.
> %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1182,18 +1182,18 @@ static int hdcp2_verify_hprime(struct
> intel_connector *connector,
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed.
> %d\n", ret);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1208,11 +1208,11 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1220,7 +1220,7 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed.
> %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1235,11 +1235,11 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1247,7 +1247,7 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed.
> %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1262,11 +1262,11 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1274,7 +1274,7 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed.
> %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1288,11 +1288,11 @@ static int hdcp2_prepare_skey(struct
> intel_connector *connector,
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1300,7 +1300,7 @@ static int hdcp2_prepare_skey(struct
> intel_connector *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Get session key failed.
> %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1317,11 +1317,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1331,7 +1331,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Verify rep topology failed. %d\n", ret);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1346,18 +1346,18 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D comp->ops->verify_mprime(comp->mei_dev, data,
> stream_ready);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed.
> %d\n", ret);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1370,11 +1370,11 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1382,7 +1382,7 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed.
> %d\n",
>  			    ret);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -1394,17 +1394,17 @@ static int hdcp2_close_mei_session(struct
> intel_connector *connector)
>  	struct i915_hdcp_comp_master *comp;
>  	int ret;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	comp =3D dev_priv->hdcp_master;
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	comp =3D dev_priv->display.hdcp.master;
>=20
>  	if (!comp || !comp->ops) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D comp->ops->close_hdcp_session(comp->mei_dev,
>  					     &dig_port->hdcp_port_data);
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return ret;
>  }
> @@ -2122,10 +2122,10 @@ static int i915_hdcp_component_bind(struct
> device *i915_kdev,
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(i915_kdev);
>=20
>  	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	dev_priv->hdcp_master =3D (struct i915_hdcp_comp_master *)data;
> -	dev_priv->hdcp_master->mei_dev =3D mei_kdev;
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	dev_priv->display.hdcp.master =3D (struct i915_hdcp_comp_master
> *)data;
> +	dev_priv->display.hdcp.master->mei_dev =3D mei_kdev;
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return 0;
>  }
> @@ -2136,9 +2136,9 @@ static void i915_hdcp_component_unbind(struct
> device *i915_kdev,
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(i915_kdev);
>=20
>  	drm_dbg(&dev_priv->drm, "I915 HDCP comp unbind\n");
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	dev_priv->hdcp_master =3D NULL;
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	dev_priv->display.hdcp.master =3D NULL;
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  }
>=20
>  static const struct component_ops i915_hdcp_component_ops =3D { @@ -
> 2229,19 +2229,19 @@ void intel_hdcp_component_init(struct
> drm_i915_private *dev_priv)
>  	if (!is_hdcp2_supported(dev_priv))
>  		return;
>=20
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	drm_WARN_ON(&dev_priv->drm, dev_priv->hdcp_comp_added);
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	drm_WARN_ON(&dev_priv->drm, dev_priv-
> >display.hdcp.comp_added);
>=20
> -	dev_priv->hdcp_comp_added =3D true;
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	dev_priv->display.hdcp.comp_added =3D true;
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  	ret =3D component_add_typed(dev_priv->drm.dev,
> &i915_hdcp_component_ops,
>  				  I915_COMPONENT_HDCP);
>  	if (ret < 0) {
>  		drm_dbg_kms(&dev_priv->drm, "Failed at component
> add(%d)\n",
>  			    ret);
> -		mutex_lock(&dev_priv->hdcp_comp_mutex);
> -		dev_priv->hdcp_comp_added =3D false;
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +		dev_priv->display.hdcp.comp_added =3D false;
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return;
>  	}
>  }
> @@ -2454,14 +2454,14 @@ void intel_hdcp_update_pipe(struct
> intel_atomic_state *state,
>=20
>  void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)  {
> -	mutex_lock(&dev_priv->hdcp_comp_mutex);
> -	if (!dev_priv->hdcp_comp_added) {
> -		mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> +	if (!dev_priv->display.hdcp.comp_added) {
> +		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  		return;
>  	}
>=20
> -	dev_priv->hdcp_comp_added =3D false;
> -	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> +	dev_priv->display.hdcp.comp_added =3D false;
> +	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
> } diff --git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> index f6841c1e5f0f..8841ec398b07 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -338,7 +338,7 @@ static int i915_driver_early_probe(struct
> drm_i915_private *dev_priv)
>  	mutex_init(&dev_priv->display.audio.mutex);
>  	mutex_init(&dev_priv->display.wm.wm_mutex);
>  	mutex_init(&dev_priv->display.pps.mutex);
> -	mutex_init(&dev_priv->hdcp_comp_mutex);
> +	mutex_init(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	i915_memcpy_init_early(dev_priv);
>  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index 9ee08e80f0aa..a0af8190ed87
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -588,12 +588,6 @@ struct drm_i915_private {
>=20
>  	struct i915_drm_clients clients;
>=20
> -	struct i915_hdcp_comp_master *hdcp_master;
> -	bool hdcp_comp_added;
> -
> -	/* Mutex to protect the above hdcp component related values. */
> -	struct mutex hdcp_comp_mutex;
> -
>  	/* The TTM device structure. */
>  	struct ttm_device bdev;
>=20
> --
> 2.34.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7131470C189
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 16:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C5110E036;
	Mon, 22 May 2023 14:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C58D210E036
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 14:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684767338; x=1716303338;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C2MuOzpnY06cdkbPZG70f9FulIKwV3R5fk5uZ/4o724=;
 b=SZeEVoeu+y0EAjFujbD4t7JxTitWge+z4IdyGvKEW0ocJMzFZpCi+iZ2
 NeeXewxT+uftSdaiEiHupyN8KLweGMK2SQLHq7W+xNWA+fM0TvSaODfQZ
 Fd5kwAUtP91klUgBm7j+PuTSxwZLnZyz67/s0ffkxorPADfBjrfrgXxQ0
 CcU4O2sAl/jmLFzEq9R5VY0cDCw9jRf22iBV4QPw4pmfCoDiLvPHAivqg
 wLsJ+280QHhbtNhTu14Jv0Q07G2OPcOGtktCKfW9KtnHQepKw6En30eUw
 MYtvy09KLeM24hDoXpFBwNhAXm9uDUG92644zY4i1BUGoHrZazeYYB15A Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="355289585"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="355289585"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 07:55:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="950140301"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="950140301"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 22 May 2023 07:55:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 07:55:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 07:55:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 07:55:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OtS456DTfrJ1eBj5GHts4f8+0taX2ClAbtPUVSyEncvAH/QVSJWuEe/W1aEMTAO9ABsz6w3HGPUeEhGgn+pFlrkVsH1d2EHjqn86/hlJ7Qg1mDXnHIvW7o5JbOf3erumpFCMhwy6sBwyvQVh0HYmd+F3VkZyvPrcdCWxv1UgO2aCSPe0gUakqjUPCI9/5mwL/ZD8VWxuXpmliWIJiKgXNYM622AF76KB8O2qeNBXQYqwvTzhdSNPPUbbgEyNpjNQka05J5gqI8efz3fgzaX4wF0GYTridG0zB3bpIqjEtHLuloxz0UO7VwV4HXGbFupgwiN3FL5G2CNoSCQBmS01Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oNb9Ghd6qjS2bsi90J/rGp92Z5eDh+s38S8iKH2zOig=;
 b=LAoTGG8mPf9V6LFTISeMKwWhAyOrmMrZs+SQEhFfhK8a1HRRWHzlaTHzFhUS5C5uAbwKbeZCj6PPMtZE5v8KewveCdjQR9R9p/DVcnndMJO51xVgqoCu3QNYICx5Vc5JJfOOH2dMeXlqoZSB8B5GGbWhvZFHxbJ+6tNAlDnwyR565ucH9OU7lnqi/A227l9QiOkJ6aOy6syhG/FMIbeWI7nIq7EbWmpgGMdqA5MZmNrGY61kv+1/Xuxj2SDj57G9C5l9PeRsAYnVEKWgcm5InEmWmnITsNCUP/Iid/F8hI6NoNUCfbA1rOoeFaZ/r1/ggnDCJZ1j8ABAzGJwlj/L/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB6907.namprd11.prod.outlook.com (2603:10b6:510:203::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 14:55:17 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39%6]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 14:55:17 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Move away from master
 naming to arbiter
Thread-Index: AQHZiVNPFRudg1zgtk+1bZvvTINma69mZi7w
Date: Mon, 22 May 2023 14:55:17 +0000
Message-ID: <SJ1PR11MB612964F24851D5BE8E8F648BB9439@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230518063612.1044370-1-suraj.kandpal@intel.com>
 <20230518063612.1044370-3-suraj.kandpal@intel.com>
In-Reply-To: <20230518063612.1044370-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH7PR11MB6907:EE_
x-ms-office365-filtering-correlation-id: a987363b-2e0a-4ea9-3116-08db5ad48e87
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ig+dTLjkW86a+Ak/3OhP4LaJVc3Mu0DGC3SCIixPAseM6MBnukRWSgCoSeLjmtn+zTC74Bwzd5dJ+VOESHacKuYhR3Wugl9MXRoGBRLeinGKshKYAGGHpiP9pigyfGFgKoE7k5p2WeX8yZq66fZHL2qRs3po69/FkrQKPJBvSitmvi5BeYQ5BmFtgNRow7FpOAJj5Ye/lBLZNQeYJwOaC5q1Re+mnZ95MduCpjIyKLrS9KnNCl50oEOBJadbowU5Ra+pjcWpmCNuA29pmvUClpBxoW6ofAJxDjCyv12PUGi5YjEPDJZWoMeOzodIkdjUOo2XLSFHFu3OojhaRFQKLgRP1epn+CETddhAEGQdYYtdfhbYZMMd06hkBqYjoDrexbMVhEM1q0IaeZRV1rWxDuEbEg0l4FYMSk+CepHXHcDLcLIMjV+8MtQiZeAz9J05skKxEpgcpaZwkmDVh4JBS0R1x6uoAk3Z9PjAWZpUgup0nPnqu0N2WDjChoWTZheur2Xwtl/dMPOgcTm4fGy4uT/9ah9UgUC5rASSy372pZ2Q28MmnoL8+PIHKAmZTeqdV8pC0HoA48nCIdU4O7kFdJ52x3mI32OsjumHYvSl4Vc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199021)(8676002)(8936002)(52536014)(5660300002)(83380400001)(9686003)(53546011)(186003)(6506007)(107886003)(26005)(86362001)(122000001)(82960400001)(38100700002)(38070700005)(66446008)(41300700001)(55016003)(71200400001)(478600001)(7696005)(33656002)(64756008)(966005)(4326008)(66476007)(76116006)(66946007)(66556008)(110136005)(316002)(54906003)(2906002)(30864003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zJl+9aFaQD8FZbn77Yru28v2ecgGo5MoDQ+iNQauZS0ySyYzQK138JOZIO/v?=
 =?us-ascii?Q?YX1u47tOu6Zcfe36iG5onaw9oUWv0N7k7ZRnv9b614+RbrUaTCDrywhvdkbM?=
 =?us-ascii?Q?27lNC8XmlE0//Fv9t63p5lD7ZOBXVa2VvldOJYRvXYXCCXKzZxrGwYPgh/Uh?=
 =?us-ascii?Q?fWD90SRNNK3dM7O0oYE0liItoIBnQEbwcpiY0Yqi2FMXtlFatc32eIQ6wQAA?=
 =?us-ascii?Q?a6SF0Ew3R5DyITaVIyAQhtB010czKYYONFdPTJxSz4o5+uZyp/CyGulE6BYQ?=
 =?us-ascii?Q?YCq60KmN1XURAbK++M5C5FWDNwxykuKVTjubVeFZCGAB8j7944CFFmaBlDtF?=
 =?us-ascii?Q?8mu9UuKyR900COLey81JP4cjBgg8DPA3pzqYPraiebPRw4RKswz1x1scYDpm?=
 =?us-ascii?Q?kvqc9sD70tL8k6bwCJI1dFeZ1/FKBzlrKdirAJrYlkQdNm2jWT8xd9vUp5GP?=
 =?us-ascii?Q?rue2OGFzb8A/3FytOnCmXsaL9vTado0kI75ikUx6RCBXudHU5ugtpGSpXBdi?=
 =?us-ascii?Q?nngm+mJxeKFiGlsGRn2yO0R5B7ylm1eaD9QPyn0MsLuikRH9YkZVRQ2dwuUT?=
 =?us-ascii?Q?WtLsWp7dH57UucwDH7bvorsngKWn6ZfqyZZaMGl+aj0RU8EWNmku2D88Qk/m?=
 =?us-ascii?Q?JP/GaJd3c9qwywtfv2J68QIyUbmEsb1XwIhZr7f77H8bT84ItLlzEylNwQFc?=
 =?us-ascii?Q?lQrLzVOwgSp1d6oQPNWKFTsZdWdstWJvq+XL6QqCHJFyC5QThZ93x5mkCCDe?=
 =?us-ascii?Q?iYt2nVlE9Ldbn0E+8yreWRNnG5NKMBaOC5bAA4yq+/zkXChiMm6HkzpnThYJ?=
 =?us-ascii?Q?mZOMTX2dSdfQ9CbybpkIg/OqkAn8U5I8+xA2IkPwMbrAT3701g/bsmDGsG4o?=
 =?us-ascii?Q?vfRHNUH9otU0TgQSRyyHLZI8aNYiycpzNNyQa3HiC0euPq2V07H3MhF4uQAv?=
 =?us-ascii?Q?TJqCnaN9M8DkzJdgaOH0ZlvhNxra3YcL/KuWaOcNw2luCy52g8+hodyV2PwS?=
 =?us-ascii?Q?WUDXBFtMpEvm7m/PYaPZO4ccMfkG3dWdWb6UXRLcTP5XZWMQlNZnnm+QISsz?=
 =?us-ascii?Q?yUPzl9dAo0fDJF0n9PzpiEVyEUft9rRusPNQlTnJzsFZhfa7V8JpagAZqZZv?=
 =?us-ascii?Q?EwKHc/BZIl6qS8UNwzoOCp3LNP4JniZHq31tCDniNsGIOAEeD93DxsMpOSwv?=
 =?us-ascii?Q?vanCc1fIes7npbq3ADfvjdh0zEKUpt0gZaYi7ZqCV9ARY+RO/c3e+nWZTdax?=
 =?us-ascii?Q?Rp0m2cwu88ZgxSwUd/UlJpIE3nQN9fKlBBQF7k9qG2DRCvILX7rn0+k2o7IQ?=
 =?us-ascii?Q?wK5UNc6R4c31i2hyG98MTSTaW8ETxT9brzVRGlHi097FcxgXwsF8KHrxuh26?=
 =?us-ascii?Q?0cTOx+siJ0QXaqdmM5w4oC1zs3poH8zMNP7o+toVoxkiGLrt/s8j16SCqoWy?=
 =?us-ascii?Q?rYiN+vnoq7axdGVdmwMI4bmCHFOqxIGE1tl9v9Wu6+jHGH1OijRw4M+t76NR?=
 =?us-ascii?Q?ObKSVyR8x7QEjyI/KAg7iC8wB4UObeZFPAd5ewtyTNZu/gq4hiO25XjDRdun?=
 =?us-ascii?Q?O2SMebY9/WhoS5Ox/FS3skjglDLTGkVyJw4VjqVWvIRrE0cKDzKuU9JYyYFw?=
 =?us-ascii?Q?YQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a987363b-2e0a-4ea9-3116-08db5ad48e87
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2023 14:55:17.3823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EsujjPtBUWgQ6R9AyOkTiNuNg6xmSMIRcmj+gvExSjZHCT3ggomI/Iz2SPFmIbiyfkvIrm7DhFKVsLNy3eMs5SSSvJL/DtNBeeXeIYW26gg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6907
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Move away from master
 naming to arbiter
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

Hello Suraj,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Thursday, May 18, 2023 12:06 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Winkler, Tomas
> <tomas.winkler@intel.com>
> Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Move away from master
> naming to arbiter
>=20
> Rename variables to move away from master convention to arbiter
> master->arbiter
> i915_hdcp_master->i915_hdcp_arbiter
> comp_master->comp_arbiter
>=20
Nit: Can we use the s/foo/bar/ format to denote the replacement?

The file  intel_display_core.h seems to have a redundant declaration of

struct i915_hdcp_comp_master;

I am guessing this was missed during the following patch.

https://github.com/torvalds/linux/commit/4f73dc7a079e15379bea0a70945ba1a7e5=
c16657
("drm/i915/hdcp: Use generic names for HDCP helpers and structs")

So a good time to get rid of it.

Regards

Chaitanya


> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 52 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 12 ++---
>  drivers/misc/mei/hdcp/mei_hdcp.c              | 26 +++++-----
>  include/drm/i915_hdcp_interface.h             |  4 +-
>  5 files changed, 48 insertions(+), 48 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index e36f88a39b86..57f76321a393 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -395,7 +395,7 @@ struct intel_display {
>  	} gmbus;
>=20
>  	struct {
> -		struct i915_hdcp_master *master;
> +		struct i915_hdcp_arbiter *arbiter;
>  		bool comp_added;
>=20
>  		/*
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 19c0b779e435..7d43845d5157 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -183,7 +183,7 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>=20
>  	/* MEI/GSC interface is solid depending on which is used */
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.master) {
> +	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.arbiter) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
>  		return false;
>  	}
> @@ -1114,11 +1114,11 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1144,11 +1144,11 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1172,11 +1172,11 @@ static int hdcp2_verify_hprime(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1198,11 +1198,11 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1225,11 +1225,11 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1252,11 +1252,11 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1278,11 +1278,11 @@ static int hdcp2_prepare_skey(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1307,11 +1307,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1337,11 +1337,11 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1361,11 +1361,11 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -1385,11 +1385,11 @@ static int hdcp2_close_session(struct
> intel_connector *connector)  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_master *arbiter;
> +	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	arbiter =3D i915->display.hdcp.master;
> +	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
>  		mutex_unlock(&i915->display.hdcp.comp_mutex);
> @@ -2109,8 +2109,8 @@ static int i915_hdcp_component_bind(struct device
> *i915_kdev,
>=20
>  	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	i915->display.hdcp.master =3D (struct i915_hdcp_master *)data;
> -	i915->display.hdcp.master->hdcp_dev =3D mei_kdev;
> +	i915->display.hdcp.arbiter =3D (struct i915_hdcp_arbiter *)data;
> +	i915->display.hdcp.arbiter->hdcp_dev =3D mei_kdev;
>  	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
>  	return 0;
> @@ -2123,7 +2123,7 @@ static void i915_hdcp_component_unbind(struct
> device *i915_kdev,
>=20
>  	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	i915->display.hdcp.master =3D NULL;
> +	i915->display.hdcp.arbiter =3D NULL;
>  	mutex_unlock(&i915->display.hdcp.comp_mutex);
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 4056bb2323ca..62e7bf0e1035 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -697,17 +697,17 @@ static void intel_hdcp_gsc_free_message(struct
> drm_i915_private *i915)
>=20
>  int intel_hdcp_gsc_init(struct drm_i915_private *i915)  {
> -	struct i915_hdcp_master *data;
> +	struct i915_hdcp_arbiter *data;
>  	int ret;
>=20
> -	data =3D kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
> +	data =3D kzalloc(sizeof(struct i915_hdcp_arbiter), GFP_KERNEL);
>  	if (!data)
>  		return -ENOMEM;
>=20
>  	mutex_lock(&i915->display.hdcp.comp_mutex);
> -	i915->display.hdcp.master =3D data;
> -	i915->display.hdcp.master->hdcp_dev =3D i915->drm.dev;
> -	i915->display.hdcp.master->ops =3D &gsc_hdcp_ops;
> +	i915->display.hdcp.arbiter =3D data;
> +	i915->display.hdcp.arbiter->hdcp_dev =3D i915->drm.dev;
> +	i915->display.hdcp.arbiter->ops =3D &gsc_hdcp_ops;
>  	ret =3D intel_hdcp_gsc_hdcp2_init(i915);
>  	mutex_unlock(&i915->display.hdcp.comp_mutex);
>=20
> @@ -717,7 +717,7 @@ int intel_hdcp_gsc_init(struct drm_i915_private *i915=
)
> void intel_hdcp_gsc_fini(struct drm_i915_private *i915)  {
>  	intel_hdcp_gsc_free_message(i915);
> -	kfree(i915->display.hdcp.master);
> +	kfree(i915->display.hdcp.arbiter);
>  }
>=20
>  static int intel_gsc_send_sync(struct drm_i915_private *i915, diff --git
> a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> index 85cbfc3413ee..51359cc5ece9 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -735,13 +735,13 @@ static const struct i915_hdcp_ops mei_hdcp_ops =3D =
{
> static int mei_component_master_bind(struct device *dev)  {
>  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> -	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_arbiter *comp_arbiter =3D
> mei_cldev_get_drvdata(cldev);
>  	int ret;
>=20
>  	dev_dbg(dev, "%s\n", __func__);
> -	comp_master->ops =3D &mei_hdcp_ops;
> -	comp_master->hdcp_dev =3D dev;
> -	ret =3D component_bind_all(dev, comp_master);
> +	comp_arbiter->ops =3D &mei_hdcp_ops;
> +	comp_arbiter->hdcp_dev =3D dev;
> +	ret =3D component_bind_all(dev, comp_arbiter);
>  	if (ret < 0)
>  		return ret;
>=20
> @@ -751,10 +751,10 @@ static int mei_component_master_bind(struct
> device *dev)  static void mei_component_master_unbind(struct device *dev)=
  {
>  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> -	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_arbiter *comp_arbiter =3D
> mei_cldev_get_drvdata(cldev);
>=20
>  	dev_dbg(dev, "%s\n", __func__);
> -	component_unbind_all(dev, comp_master);
> +	component_unbind_all(dev, comp_arbiter);
>  }
>=20
>  static const struct component_master_ops mei_component_master_ops =3D {
> @@ -799,7 +799,7 @@ static int mei_hdcp_component_match(struct device
> *dev, int subcomponent,  static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
>  			  const struct mei_cl_device_id *id)  {
> -	struct i915_hdcp_master *comp_master;
> +	struct i915_hdcp_arbiter *comp_arbiter;
>  	struct component_match *master_match;
>  	int ret;
>=20
> @@ -809,8 +809,8 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
>  		goto enable_err_exit;
>  	}
>=20
> -	comp_master =3D kzalloc(sizeof(*comp_master), GFP_KERNEL);
> -	if (!comp_master) {
> +	comp_arbiter =3D kzalloc(sizeof(*comp_arbiter), GFP_KERNEL);
> +	if (!comp_arbiter) {
>  		ret =3D -ENOMEM;
>  		goto err_exit;
>  	}
> @@ -823,7 +823,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
>  		goto err_exit;
>  	}
>=20
> -	mei_cldev_set_drvdata(cldev, comp_master);
> +	mei_cldev_set_drvdata(cldev, comp_arbiter);
>  	ret =3D component_master_add_with_match(&cldev->dev,
>  					      &mei_component_master_ops,
>  					      master_match);
> @@ -836,7 +836,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
>=20
>  err_exit:
>  	mei_cldev_set_drvdata(cldev, NULL);
> -	kfree(comp_master);
> +	kfree(comp_arbiter);
>  	mei_cldev_disable(cldev);
>  enable_err_exit:
>  	return ret;
> @@ -844,11 +844,11 @@ static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
>=20
>  static void mei_hdcp_remove(struct mei_cl_device *cldev)  {
> -	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_arbiter *comp_arbiter =3D
> mei_cldev_get_drvdata(cldev);
>  	int ret;
>=20
>  	component_master_del(&cldev->dev, &mei_component_master_ops);
> -	kfree(comp_master);
> +	kfree(comp_arbiter);
>  	mei_cldev_set_drvdata(cldev, NULL);
>=20
>  	ret =3D mei_cldev_disable(cldev);
> diff --git a/include/drm/i915_hdcp_interface.h
> b/include/drm/i915_hdcp_interface.h
> index 2059b066f8a1..4c9c8167c2d5 100644
> --- a/include/drm/i915_hdcp_interface.h
> +++ b/include/drm/i915_hdcp_interface.h
> @@ -168,12 +168,12 @@ struct i915_hdcp_ops {  };
>=20
>  /**
> - * struct i915_hdcp_master - Used for communication between i915
> + * struct i915_hdcp_arbiter - Used for communication between i915
>   * and hdcp drivers for the HDCP2.2 services
>   * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
>   * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used by
> i915 driver.
>   */
> -struct i915_hdcp_master {
> +struct i915_hdcp_arbiter {
>  	struct device *hdcp_dev;
>  	const struct i915_hdcp_ops *ops;
>=20
> --
> 2.25.1


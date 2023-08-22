Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D86F783847
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 05:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B532D10E2D1;
	Tue, 22 Aug 2023 03:04:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5AE10E2D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 03:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692673498; x=1724209498;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U8GCcz4xNI0uUzreLCOdeACcFh/w1MpFmMTC01Dnbms=;
 b=Gk+5nyiyDCyqEX25norxmguG1xGp6yfyHFO4er0LTCUaQrPzT6QnJmfR
 A7mBF+EkjlMKJ8R3b/WH8MGHFRpzFpyy5t+Zu6J3rAJyXjq6HXRoeeEDt
 IymH7XHMvrppF2sc3XRvlIQ0sqZt074s5WK+aNGoGEvPTXGxMHs+U2D1d
 /c07xyIYuyl8d4u2HTVDmAH8AoMFYDH6/1PPiiWIvTs9CggrF+4YM2ynv
 G0iIGCLaDIKosFXeprQ233xTGtIAY4fmYh/8fCjgd7+UA5tPeJDwofUV1
 9sFEMOHPPeHD7B534nQNBtCXKDeDSE3P2PVuEnbrQzsw0eoPdYxhKbXOF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="372657892"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="372657892"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 20:04:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="801491491"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="801491491"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 21 Aug 2023 20:04:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 20:04:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 20:04:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 20:04:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 20:04:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oYPKyV28HoLfarPu9CB5n8XaLPCzJ1nyXJWrIseD0Utyi0AA6xMQ7SO3yzaJ2d7VlziTy6Dvq4RVMg682BSk2FpJO67i+yN3y41iUodRX0q6L6AeNW2g3LD+zoej1way+feS5B6gVW1V7DM8Gz6yJr5BYKzp294NqysPnAuTb2p5bqkyleCZpKeK9gWIAXfyHT4Zk7OrBOy/J2hVZTWRohm6gaE64ujPexAk+OxTN7zOakk4Wqlp05IfEwwIoCpLhTLqG9WEmycCSWzLJ1Rid4k0APkH2cL6v6jeKvQcvCj2lsb9Vggzi7aNjzYELoU9xBT9m27rfY3+gzBplPbZiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uV5k5oQJTlpaXR7BggYy1hZHlqeyWbtknuMX1s59BXk=;
 b=TN/ZGumuEp01XKqJGP+nI+X/pbMRcZjc4NuBuBR/0du9fyFZBR7o19bkDrs4GMXC0igJ6CyXgImEK09F4q1yy4gnYntEPZKpAkS/ZN7c8gAxbCZ4hzJK+vPtyf7qptFbp9mG6bF0OPwmgjvX3GZg/AjmpLSzajxMP/sFtVs4YfCk1taWaeQ+ngXjeFEd18qE1Uc8i0L6BFpmYSHC+UH9dIf1LkGQmPoJ6c+qZtH+rgwnLd2Pij7c7jcxG1/bxfOo/csGQjeYH5MO78s0lGCSAh/fxgtVCAkOCdBiZtE1dqjU64zQNG3uhlDatG45bH1XVSljA7m6t69aZXw+tcqRzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SN7PR11MB7018.namprd11.prod.outlook.com (2603:10b6:806:2ad::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Tue, 22 Aug
 2023 03:04:42 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3%3]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 03:04:42 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/4] drm/i915/hdcp: Send the correct aux for DPMST HDCP
 scenario
Thread-Index: AQHZy19HsoCSvXbcGkCxPCGVA7J5DK/1s1/w
Date: Tue, 22 Aug 2023 03:04:42 +0000
Message-ID: <DM6PR11MB3177C586D3E394B8BCBB5B07BA1FA@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230810074758.154968-1-suraj.kandpal@intel.com>
 <20230810074758.154968-4-suraj.kandpal@intel.com>
In-Reply-To: <20230810074758.154968-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|SN7PR11MB7018:EE_
x-ms-office365-filtering-correlation-id: 84909946-84d6-4f26-9a38-08dba2bc8838
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cf+x1cfwZU2Ss7zgObvCN5BJPPBURKGkZdRoVDgkV6xhLLcWmh5WXjud/ML9ObX5qJumElnEnRCGulHEYJG9uIgbxhAwerc/7rp2RlQZpjmkWgQBYHFHJwKHlIhc2SZIQSAe+WPiOSJC7UGocyrjqJoKg2bvVcq8K2is0d9eUAXX2U8Ti3VXH8uGXrhrytN/CVyvmd2lU8bpG0cEqKUioNV+oHM2s3WjBITISpoIq72GKMZn/3tcp5IjlyD2rY5LazS5LuSWmAmzb4Mxo4J90fpZf/Y3rh78/5jFL9/emWqmYi0V/lldLxFQeQZd2wzRe5qOh2OK+PMqgyFryYQOMvZ+boEJ8hJUqdu6uqj1urkgKH7BjvbixacyZrEX27mXwbCP91ClBtwesF5Dit3VP5p/VB/9l+o05l+cNUwXcOSoTVWZ3uehdAfS5I54py9crsqDa6bE8RahcUE4HCu7iPjhRGUTney8UoTyT3CKbDNxTuzavQJuYFf+51umRabmOqcoWdlLlKZP7ku85Qv00HpDmF0xmnrFXrtf6+Ojw4ZCIgyMXktYyhkewD5ekDJIpi3zJBjNHInRPsUn8W+Xe15VIKRawQKCus8Qa/1p2VZVqKv6MY5Z/0VFW3INbLOs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(54906003)(66446008)(76116006)(66476007)(66556008)(64756008)(316002)(66946007)(9686003)(82960400001)(110136005)(8676002)(8936002)(107886003)(4326008)(41300700001)(122000001)(478600001)(55016003)(71200400001)(38100700002)(38070700005)(53546011)(6506007)(83380400001)(2906002)(86362001)(7696005)(5660300002)(33656002)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3S0JK6VHlNOWCKrGxO03/Bq0GZmX2YGB9J/mNfYDK+XLa1hnHw3pX4V1ocem?=
 =?us-ascii?Q?8DA6Uq7oXSPnJmv4MySRxaq4jKWoSxpHS6IgewjgWkh+NRGIyaipzinRJbRI?=
 =?us-ascii?Q?0zZlK2Iya9VcduQu55AmueD1/t+SBw7sb4ypr47ka4MAKNMG+U2s8h4V7uto?=
 =?us-ascii?Q?Y80MyfVsVw5+t+zygwFfLFYartMxk/AutWdNk1ErKUJWf8yyaW8G6MunvhPX?=
 =?us-ascii?Q?53abLGCQP0Zcrp7RsitVnPjXrZ3peoNZd8KO035Xm1C5P6cMAPZuiZIxMOf6?=
 =?us-ascii?Q?DgRP0xsUgmPO/1MA7ivvSAYguPxte1IubPklKSZlHbGqHKnm8CYM45M3SEJM?=
 =?us-ascii?Q?uBN27whH0m6oLOVZHbVuo+uw/Ds4DEtABP17l+mKwqQDXhN8yMFfTJf5E0Mu?=
 =?us-ascii?Q?acRxkc6WX/e+vY4LOmHeQq3BhZx8He88Aly7bFZqTs9WFXHaNpsi5AliA65z?=
 =?us-ascii?Q?9iLNZ8wCF0/cjsA8cS8JObJ+6PrqZnFuuq0Uy0mf2K0aya1QA98bKSTzEgAN?=
 =?us-ascii?Q?gvouXdfAoDl05uUbtNDynH4R++KJmguI8fgnvjPi00c6AAGmC/QohwD/2AgA?=
 =?us-ascii?Q?mNvpTlM19Stw2QfnfLNugGd6WrwEIBOuX8sTOeIihOmdK7d0EauKfDTxwvYv?=
 =?us-ascii?Q?a8loYy3dSy+oXX0Di5gNz18uIpcxPvikYuzeIk6ZfSPhEJiRAU+cDtlkiUcJ?=
 =?us-ascii?Q?VULkVh1DqCtYpI9G4b3TxCzTw9aWJ7c0tJRBuov6AETpuGM26RuVTyNKbMRT?=
 =?us-ascii?Q?EKutCsX8aqwOjZhOdrZNB2bqvUj3kjeXiRBt+l/uaZALZfw3XVZWc10nDOY0?=
 =?us-ascii?Q?8Hd7VCbIsOugon82nQgLXoak6ZIybwbEabgQk2xUdgTcGf+8dYBPMjg/f6qb?=
 =?us-ascii?Q?8r+VC3TSbdfphKA+wZcLNAFIjGwOt4s5AZgLQFBU4NA0Lc537IP6ZRF5tr7A?=
 =?us-ascii?Q?XN0AFSqmzVqM4eGMkBlLh8CljAoBw9fv3gcaDNgWihUtt7ZEsxB4ciZyud8w?=
 =?us-ascii?Q?ZVhQywsCJ1LMMtwVAhfj0Qel6zsfhRXSkiXCD/y1QUlpUqydQnlkqsjvZ9Ql?=
 =?us-ascii?Q?tCGqrBEJd4i/gXFZmXebhByEqFBx91fpZdxCRva03s6hKe5qGirpBA1KKl90?=
 =?us-ascii?Q?h5VE977e5EVP7LSNpteVUp2DhtPZ9tA7tvK+OC4XhCRNreThjX+0r/7TCSjU?=
 =?us-ascii?Q?mrYqtSWcYJKHdjJOUAuJ1gXbUZefUNTs+o7sYwhe3RZ94YUR/CElyQ+wTcXl?=
 =?us-ascii?Q?0d4P+NJ1i8Bo7jOoClIBhek9DfL9TGVa5w4iqv2SsrgfXmVnzOW5ECOZPmZx?=
 =?us-ascii?Q?c+fMt8cuIWSx3XeSxY+u6wUtiZ/tPVDm2yBUjzyn0mQsvk7ZPdK8ULdRRx/3?=
 =?us-ascii?Q?4O7z5nvQMMD9r3GcqTz6ZLi6Ryg3/piKcnSlVgZRXl84LocWvpg+a6vel0V+?=
 =?us-ascii?Q?EYLPEPKCpPPTOA0LsVzp8ZjC1Qgcf+GFezFxQ7PaC+0NSwfiNyJkUmpZhfaW?=
 =?us-ascii?Q?3KnmsS78QrlD01fSqC8g1jjvxSZbjVTWz9nAH4wM0IMj3Oac4dJcraxoOLyX?=
 =?us-ascii?Q?vQ5v5xtPsAnQB95N2tnbHZSqJMZOifqlVIFlab3o?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84909946-84d6-4f26-9a38-08dba2bc8838
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2023 03:04:42.5726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pBboF61gB+FaBPpXRityWw2wIhuqA4SAAhI5eEiLbNBOVAiTBp2byW1XdHp1a00MHOc2XzuU7mjDEZPCSb2f/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7018
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/hdcp: Send the correct aux for
 DPMST HDCP scenario
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, August 10, 2023 1:18 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; uma.shakar@intel.com;
> Murthy, Arun R <arun.r.murthy@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 3/4] drm/i915/hdcp: Send the correct aux for DPMST HDCP
> scenario
>=20
> Up until now we were sending the base aux stored in dig_port which is not
> correct as this causes an issue when monitor is connected via a DPMST hub
> causing it to be remote hence we end up seeing AUX failures so let's send=
 the
> remote aux in case of DPMST.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Arun R Murthy <arun.r.mruthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 5304aa73b23f..2a37a43243a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -452,7 +452,10 @@ int intel_dp_hdcp2_write_msg(struct
> intel_connector *connector,
>=20
>  	offset =3D hdcp2_msg_data->offset;
>=20
> -	aux =3D &dig_port->dp.aux;
> +	if (intel_encoder_is_mst(connector->encoder))
> +		aux =3D &connector->port->aux;
> +	else
> +		aux =3D &dig_port->dp.aux;
>=20
>  	/* No msg_id in DP HDCP2.2 msgs */
>  	bytes_to_write =3D size - 1;
> @@ -518,7 +521,10 @@ int intel_dp_hdcp2_read_msg(struct
> intel_connector *connector,
>  		return -EINVAL;
>  	offset =3D hdcp2_msg_data->offset;
>=20
> -	aux =3D &dp->aux;
> +	if (intel_encoder_is_mst(connector->encoder))
> +		aux =3D &connector->port->aux;
> +	else
> +		aux =3D &dp->aux;
>=20
>  	ret =3D intel_dp_hdcp2_wait_for_msg(i915, aux, hdcp,
> hdcp2_msg_data);
>  	if (ret < 0)
> --
> 2.25.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC7478E572
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 06:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6874810E673;
	Thu, 31 Aug 2023 04:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0374810E665
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 04:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693456577; x=1724992577;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oikxL+tZExlgUpWrW7EBGnEJaig9e91U7KVQQvpbzzY=;
 b=YHJh51nAfa5NoqpdoTQlyfJyoXXZwsmMFTmYee2l50jNlGniMoFya4iU
 lRLzE+rlGY9XhGNM6BvleNTEMzeBGdFj8OWtRqc1D10+8ClsmTtCpKLvZ
 rY6KInyARK2CD4CaAXqaRrxgNQQmGQ2osOPVjw84KuURegWX7yDgLWC3x
 UUEu+KVIB72sUXKnzbBucFLXw/EwGu7rw1skPCxrfmYVixxQn/oyQp2VM
 dj85O++rh3TRLEWClBP4wqNhvIW2w8HDgBa5JgYjg+bg/kSbmcwTGhjdG
 hcCM8V11D7yCOKcrF57/hTg5l/trZHIX5H0r2Vs8+CoVgtl+pmCZm0PED A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="360797539"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="360797539"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 21:36:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="809404302"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="809404302"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 30 Aug 2023 21:36:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 21:36:12 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 21:36:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 21:36:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 21:36:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gd1QnTDbWtEaWEKPMUhv/qqNSJgj7AlUD55nHGiRhRzqCI6owhNnW2V1ppoprZYvQdhVNy3nCBksdOXra9uL4TWxLvkdV1bQXonvTpJIAPS2Lbi1KaPXe7EwDdWFY0zT7FOhzqAt2VFAYwGesFyWJzxCgO+NvF9MRywq7AKjrrxcHf4dOSuiVB0HtUafKGEUhBrK+v4Wc7Kob0HPUclG5+OoGy9bODl0vhm+iXULJPGOM1L4qtFkW+V+arSZbHdO4mLkm5oxQ1BTUttLsf6Wb76LWAcUFBefPF1IgsXB0C7VX32m3ifmRxPgWBjP7JD62jZbEk5njQjjpABntvhzEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=opfAD3naJGjv9R0idSvAKO0FO8jwR+ccSKn0pD+78Gw=;
 b=adNVuYBtgVfcoxqxVVz8R+2zeUPR+DVUjfN3nZQdNMbz3Ykq16OfzlagshCqEkC+fMXxyyC0bDlO7VmAfDtseFCVqaPkiAnxWz64i/y2y7TKb8QTz0cJAXa98xdJ1bE8+Oz5YFOUwsYE3TLWyRsYQGv+c95PRnylSx17OxIhoaXBQuILyfRUm/IyAhZxqd1rTC3GShIoUYCWy3zC1FJW8p0UlRYIZvbqsCTkADW1plSt/uAl7LYYuQ3pIzpdIEIXN+AuiXJxMEjiE4iCyM8au6CkzQn8xXbWKvKP3B4HFdk/m+kNKx48r+r0Hc+b8p08QPV8bPKUZ7BrZlVlRfncsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.20; Thu, 31 Aug 2023 04:36:09 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 04:36:09 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/hdcp: Use intel_connector as argument for
 hdcp_2_2_capable
Thread-Index: AQHZ2xTHdaDgtYpGYUuetUad/DAVBrAD0vMg
Date: Thu, 31 Aug 2023 04:36:08 +0000
Message-ID: <DM4PR11MB636073918630A35D3AF33D96F4E5A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230830073437.666263-1-suraj.kandpal@intel.com>
 <20230830073437.666263-2-suraj.kandpal@intel.com>
In-Reply-To: <20230830073437.666263-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_
x-ms-office365-filtering-correlation-id: 3202c428-10b3-4911-4539-08dba9dbcc1e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i8R0raBTsbNfBwy6+edVloeYEv0Qf7vw/5NxiK6CdNoUtZJ9LCWaO7BxLtzWzT1M5v6UZHJFZWTgrsWLU880wfWATJE1ELNSU4t5rq45vm/hO9YdHVyJ/eePdR0tQIZqTGkcEiZg+uIZS3aZKyBxRWwL5plewHA8VNXlWtApO7hGXK7T3HPiVF0yyrpks4uC5lWrB4ITokQOyUbhJwhs6Jw1R7YHO3ljgZbk6JPfdEy7Y65HG7BrrsXRMYTNJe/DpS8RAFGVOD+VfhBaVJZyuzyhsnfL8VtPByHcAOUl1E6J6gZG7fBZ+eJcyZ7tyM3XSaQ1V3tsRIqn68XxMnmKOlDaMHXze7b/LW91TW1lorC4Ptpf43242Y6v93LRXtLdhM/gZtMmg6hRnM7j0TUkMAigA+JaBcPk6hGgnGiFVsxlAfhYtK1FRnmY6E7pERBMHUFF/lKVzi/HbbAnjECWzZWRj1LibsQHBMYavsBkZqBrTHhEJN7QekIkfVpGF0Lk3yKFDJSpxCDKX10mwt0toTyB8E7KErwPXPleh9M9JdsPbfhk/tv9jiUhcCGl57b3aHQ98U3BGIA4t/KiMdI1VZq5fXuDlH3aa64CW/pqJdq0k9PlfRcxVmadtNzUd3HX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(366004)(376002)(346002)(1800799009)(186009)(451199024)(55016003)(64756008)(66946007)(54906003)(82960400001)(66476007)(66556008)(66446008)(316002)(2906002)(478600001)(38070700005)(38100700002)(122000001)(110136005)(76116006)(41300700001)(8936002)(86362001)(5660300002)(8676002)(4326008)(52536014)(83380400001)(7696005)(9686003)(71200400001)(6506007)(53546011)(26005)(107886003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PEYEEA4e+g4hwOpshBmCVeBR5rM4UfW3JlsQvxEvk0JVkvLzE024Wu67CLGc?=
 =?us-ascii?Q?8HSYkngEh0Ub/GzyOR83o+zDxnBGjMsO7npvFgmubqWFqtRIdJBOKaLf6Hec?=
 =?us-ascii?Q?dTrCyd/fXeNqhbgW+bSROhHjFcacmMjb/dIinRxGBdL7xsW+ohBYYLuDNHd6?=
 =?us-ascii?Q?ErKBuQSDmZUKHc2PZ34iuFncl6tPS9kPdIFYEAkFTSzwBzz3K0t0thOcfbKs?=
 =?us-ascii?Q?Htxv+JszZLHYwVw8OVMw0b8G95ffkKvPsdQ2gd41LP2KD5A6trF/1MeWqEVZ?=
 =?us-ascii?Q?MqaD5ujA5jEaSPhxwSvwx3+Y4pKTDkeTGqdm8XcAhoyID5keQR/OyJ267IOQ?=
 =?us-ascii?Q?8sMN2ghYTHM1wPFfdrOnbTUXlwy5qWNoufuDHwKD8w2ZGjXcxblDbcPWH1zO?=
 =?us-ascii?Q?EnVcq+YSj7PyTdh4ujU6CJ7+xHMAaDC0YwhFq2cAbu+XkHTSdJtVYndVdh1M?=
 =?us-ascii?Q?zeEQtA9UMXCCylsmr2uYfU4lZTGuPtUcRUd1knH5Bq+5RtNY4wIqXr0OZdhY?=
 =?us-ascii?Q?xZY3+S0zwjFtik1mGhbv8eGOBGQQhx7VMxX0xdYKl8dREHdLfsD0WaeIyQo8?=
 =?us-ascii?Q?rkwLKJYHEKpwTdao8pm2qp+gsmEYGwI8UDQkl6/eJeC28XIqu2w1j5ZqMtom?=
 =?us-ascii?Q?g8ijJuLoxLoLUqad3rONdo9zMoounGm+tcNW8TtDGBD/eI4UA/tuJ0SFRG8R?=
 =?us-ascii?Q?/9vXD2ooFYtBfAG9su/rCUj1v192tZXrHuz+eFCEi50FVfX9XpiJTOpjsXJR?=
 =?us-ascii?Q?5kYSRzd94BoYZlQ862yX5zD64/INvMTEe58h1e0oLBgktTB5tWj9h8hD8XaL?=
 =?us-ascii?Q?uRUkNGZmcqgrs/TbXrKNU2uUDthUQV6mlH2Lad2jdDEQySHKRtJXgghh7Uo6?=
 =?us-ascii?Q?YS1U0B5hqeetXk7cVyQb1Dq8+vSpZWlauKzd5iLZdObDFgagE01dJ6U4PfNR?=
 =?us-ascii?Q?+5c05MipKJIslUMUga373ddapzfg5RDBfDKIphZnFbXsK4NxBK2UVsskVY8G?=
 =?us-ascii?Q?v3DJIvQ8DPJtQkIN5tCoW/gNC32SzeyfgZI+2ImFSAwhKNjWMirANHUT8RSP?=
 =?us-ascii?Q?4VY2cb3Ai13sC8HZe7fnZrjXVi7QbQ6FPq5OzgvmO5Xt1Mx0SVAWSCNujkGX?=
 =?us-ascii?Q?AkeQb1r+AuByIyfSHhV29bwfp660+jx7dRg1X210iT71nXr/YEL+FEs5cGH3?=
 =?us-ascii?Q?H+1VvIM7LkGLxUA7cNq5Div7s5QddJrcpebUTKYwnFwk3NGxo7B5TXhzX8NM?=
 =?us-ascii?Q?Zc/Qm9kzgY6ABY48qoYuo8QGOyuX8hNm+1Vpg0Bxc/NduJ6fyYZeJtgTU2yR?=
 =?us-ascii?Q?dzYmSMjmBxCKqI3yPGK2K7Y6mQXoll9cLtCMnrGeCkl2wfNRKDBl0v47oHch?=
 =?us-ascii?Q?43zYiaNZqrVbVNh+W8EI9fAs//Jo+HEm2GIKLuaxeKnsemaHB+ODqeK8YVan?=
 =?us-ascii?Q?z+480chi1aAhVnxvVe57rvHnOudfOSJAk3b9FYucSifkw+Gz67Zxf7EM0Nuk?=
 =?us-ascii?Q?TppbwssOhRfqw4jjlk9eRyGzdbWHeE77NuCBh6qH1W9trAAhNdcTAFGIuVpe?=
 =?us-ascii?Q?+y/Vw+aMVU1ZxSQSwufW0UcQZo4lU/Cuy/WWLtqp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3202c428-10b3-4911-4539-08dba9dbcc1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2023 04:36:08.9946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q8GaYzfIMzeJpQyNrohI9HJkUTzSyhCr1ZHN79qcPkSUAnJL3kxfTxDrNXwzn1ORbMa6CeDgvGftu6WaRNHDnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Use intel_connector as
 argument for hdcp_2_2_capable
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
> Sent: Wednesday, August 30, 2023 1:05 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>; Kandpa=
l,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 1/2] drm/i915/hdcp: Use intel_connector as argument for
> hdcp_2_2_capable
>=20
> Use intel_connector as argument instead of intel_digital_port in hdcp_2_2=
_capable
> function and dig_port can be later derived from connector. This will help=
 with getting
> the correct hdcp version of particular monitor in a MST setup.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c       | 3 ++-
>  drivers/gpu/drm/i915/display/intel_hdcp.c          | 3 +--
>  drivers/gpu/drm/i915/display/intel_hdmi.c          | 3 ++-
>  4 files changed, 6 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c62f4ec315e8..c21064794f32 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -500,7 +500,7 @@ struct intel_hdcp_shim {
>  	enum hdcp_wired_protocol protocol;
>=20
>  	/* Detects whether sink is HDCP2.2 capable */
> -	int (*hdcp_2_2_capable)(struct intel_digital_port *dig_port,
> +	int (*hdcp_2_2_capable)(struct intel_connector *connector,
>  				bool *capable);
>=20
>  	/* Write HDCP2.2 messages */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index b0cfe759d3e5..3b579887bb99 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -648,9 +648,10 @@ int intel_dp_hdcp2_check_link(struct intel_digital_p=
ort
> *dig_port,  }
>=20
>  static
> -int intel_dp_hdcp2_capable(struct intel_digital_port *dig_port,
> +int intel_dp_hdcp2_capable(struct intel_connector *connector,
>  			   bool *capable)
>  {
> +	struct intel_digital_port *dig_port =3D
> +intel_attached_dig_port(connector);
>  	u8 rx_caps[3];
>  	int ret;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index cb45f21f71eb..8cca4793cf92 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -163,7 +163,6 @@ bool intel_hdcp_capable(struct intel_connector *conne=
ctor)
>  /* Is HDCP2.2 capable on Platform and Sink */  bool intel_hdcp2_capable(=
struct
> intel_connector *connector)  {
> -	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	bool capable =3D false;
> @@ -193,7 +192,7 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>  	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	/* Sink's capability for HDCP2.2 */
> -	hdcp->shim->hdcp_2_2_capable(dig_port, &capable);
> +	hdcp->shim->hdcp_2_2_capable(connector, &capable);
>=20
>  	return capable;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 116556d6352a..d34eba5b132c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1735,9 +1735,10 @@ int intel_hdmi_hdcp2_check_link(struct intel_digit=
al_port
> *dig_port,  }
>=20
>  static
> -int intel_hdmi_hdcp2_capable(struct intel_digital_port *dig_port,
> +int intel_hdmi_hdcp2_capable(struct intel_connector *connector,
>  			     bool *capable)
>  {
> +	struct intel_digital_port *dig_port =3D
> +intel_attached_dig_port(connector);
>  	u8 hdcp2_version;
>  	int ret;
>=20
> --
> 2.25.1


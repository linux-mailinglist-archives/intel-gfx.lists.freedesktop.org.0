Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7D76ABEF0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 13:01:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2824510E2F4;
	Mon,  6 Mar 2023 12:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB2F10E369
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 12:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678104092; x=1709640092;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5aFbI4uAuCQxgOF/D/5ezSHDHpqM52U+QhrsYCeg/0c=;
 b=KQzV0pOwUWchzERg9e9ZldAxhOceTr+fBHNUItg/6ARec3jrdSL0cYuB
 Y65v1Kb6ihE4D+Oh8pTxOnwRXS2NVmjelqJs7YccwDEpMM9DRhYjEaSo5
 1SPreajYAn/vJE94hArAT7L6UgrxC1iLzMdltySNKI2mqtxsvZreW5uUK
 8qHVL8hSdzQtlzig3KK1cLvn9pi88kzln5GrGU5VOPAO8KYP8WFua1IBY
 5jlWcYjksTJ90YkTjTXPVjJdhPnH7koTc7Ord/2yjquUevc7KX0YBWQw7
 V9Wvetm65bx82HhSjC2EHi3wsZ/gLrY7YTGrlDqFTw0BtQ2BU7eHlOfqf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="337053887"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="337053887"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 04:01:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="786197284"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="786197284"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2023 04:01:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 04:01:31 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 04:01:30 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 04:01:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 04:01:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TI9L7ndSem5VFIOM9XYOzjLtrOd06fihDVgpJyctfQJpiN2ArvoLOwTA2RlkNzXN9aqIzU3ZlCe5ZoI6tK12FmX+PRcOOITme3DXZLzLtsAEwIUa9+Zx1XLFXb0yVKpXWmzI0IW/d9uomYS+VqlRSUWB1st7Lc85OFNFSPv/sbQFVKPI42latGbF7ejCJ4qbpQi4fcbFNghPFUgOCoCeAdxZGrsGFKA4y6UPPeKLaXrqVkh5jw9vbcustP2CDGDJGAyQWWCCXQFN2RnGePNKpa3cPaBtI/1Oq9vw6tSddlWgcK4liOkw9Bm8Tukzax2d0deLxMmlLsruyecziwNz+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bRUjKKBZ0xP5UKlje+JNXvewbM8YAEOI1DW9dpsBHv4=;
 b=odehH0zBflw+WsQ9IvHgX34kqkGxVpv/ohvYyPrqtNJGWe83dN+Ba2L17w+mJ5FJazzovCa7PU82AUdHPSnxZgbxtoVPXVVXedSDORNurVl9Hkkt012rZ6RwI+IhyP6pyM8tcNa/lm7WnrCSq5kQEi4t7GzkZRA4Omh7+t+lbw/siE6sIsrhcAwexayVhfQO6i9vkoCUGjrp0Z8GZN9MEtWPMd1mxydshHtMsKTq25D+s9CcFXvlXLRYPd0AAMk2iUjJG0ktCWr33nr/NjsLyd5qZKOrAeb+NCDEUngv6hZdCHJ5pBA7BlePF3ixfp7gaDfV2eJczdpDsA7JIB8F4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB8245.namprd11.prod.outlook.com (2603:10b6:208:448::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.27; Mon, 6 Mar 2023 12:01:27 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%5]) with mapi id 15.20.6156.027; Mon, 6 Mar 2023
 12:01:27 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v10 4/6] drm/i915/hdcp: Refactor HDCP API structures
Thread-Index: AQHZNhzjtPbuPRLH2UWrZACSqRtfo67t2mFw
Date: Mon, 6 Mar 2023 12:01:26 +0000
Message-ID: <DM4PR11MB6360474FD61A0805282F8C56F4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230201090806.3008619-1-suraj.kandpal@intel.com>
 <20230201090806.3008619-5-suraj.kandpal@intel.com>
In-Reply-To: <20230201090806.3008619-5-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB8245:EE_
x-ms-office365-filtering-correlation-id: 7f87af25-2dca-4982-2d21-08db1e3a83aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +/We87Mzj1MmDoRsdleXoEdsbJ1QlpTq3rarRVODjwtMyDwlNay0hrQTES3X2907gU7/FSfTPLFKE2qcMVgKqXHfXOFGivuxeBeGLreucNuCD3sSwGzRmLeHVJvSLd0jUhhHSh2dv6DYaYBqgEOTD1ABnXLrGtjbtfRh1kZ8YD2NgEQtKl1n01b1ijJJ+BocyyREAavpjMp+Ikdebf+WDI29IVBKkcy7nZaQoT/2GY2nYA1tqzZMs+imPvu8WvyLh9SLC/osWKTubwUcleIe68DyRUFamV5MZwlrtUZMSpEuV/R+/emKT6FdSbtWhVu51Swf4i4e5EoF2wtFFnvViElvqYX/4cJOnNk0GsSrJvt44bWSrk/5DPkHPgCe4JRl4cFlVnzCchX9uRBJ4NYgnen67RZzShVZOYNjPaAjxI9WTFwzKPEqJPQuPo/Uj9cgZPgTe1vhGkry81pxEbqn/6sfj+etCuvyaHQOde89Itm791vl+ds/9JoTWUJOtoJFq5W1SBirCefrGYv+NDwGvrIiI6881Qfp9pM+n8R847r48rxngCpo7dtK8mMu2QtCGOCwc2pTJmaf8L4mTyHMMsFNS+IF28hPvLg7f+zbZmzdDDnH6BPSGn3YyoGbm9ppJYn/J/Jiok1z3jK9iI2JoumowfxylEDgIQDWWh7/7wKBo6KZ6e+4RBAD5AjD6nvfjX80NRtsKHc1EgiPTdDOTQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(376002)(136003)(346002)(366004)(451199018)(83380400001)(107886003)(122000001)(38100700002)(86362001)(5660300002)(71200400001)(82960400001)(8936002)(478600001)(33656002)(55016003)(38070700005)(2906002)(9686003)(186003)(53546011)(6506007)(26005)(8676002)(66446008)(64756008)(66556008)(30864003)(7696005)(66476007)(66946007)(52536014)(76116006)(316002)(4326008)(54906003)(110136005)(41300700001)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Zov0IdQfJ6h/9b2K0P4uRA8zry1Y4z2pa7UtRhGUpXlAbppNXbpktgoCQ6TO?=
 =?us-ascii?Q?K/OunBLBhgB6q+ZYf/J83S2mspbWCM1BgPcMG4vMDcQz3std9KIUe+C1hu+i?=
 =?us-ascii?Q?93df54Qlr897v3s08zSFD+gra8OrNZMA4c8amkQ5NS8lDG8UBa+MtFfK66lh?=
 =?us-ascii?Q?ZOFbUQK++y99RIPcCSfQBGkwhIhB/4l7GucP3VPnbfIT+Ta0QRDDRM7TvkIM?=
 =?us-ascii?Q?WEOjVOKrARTse23IIIIDsMQrFAvSxQdiTtE6izJa8KBHFsIi8gA9Pwp31H4R?=
 =?us-ascii?Q?JSzQdzQoWqgZQM1TECBexEeBgLrJDcsaMzvjsTyGU3fi4PeSep4RbXQAavDf?=
 =?us-ascii?Q?fu8Enjn61H/P0MwBeco/Q35+kizEgi8SBfneV1pzTvKqRPxkJkaDOMKMV2Yi?=
 =?us-ascii?Q?HPlaUnlZVu3FA2hY/Rr7qJ2y+D/bVVIrlDbUAFpKZECPd4QjC8U5/TDmFGC1?=
 =?us-ascii?Q?Gzw7b4k+X6bGwsVdb4Mzl4CulHsRjLCSAxL5WxzeKidxsfxubCowX1Y229Et?=
 =?us-ascii?Q?Ikx3jXO8EzId3RZOu0CljsbSXTzSVyAEgjS/SCVyKTrL0mBRGz4jontVE3cm?=
 =?us-ascii?Q?MCl2YrKggIMrmMSPRDVnAm4MxdtMelgBIxe5LSi8Pu1w5UC7b3P72GM0t+a3?=
 =?us-ascii?Q?60E94ZWLMJQUEqjsZrwbaYM4RcZTPl3xRgFlDtg+bLq8Ecz/umQ/Ffb4BsyC?=
 =?us-ascii?Q?q3Tkj+t+oTyjGfcLs1CS/ETMk5l6YJmpC2+b9/jWWG9o0PQPBjYBUz5c96Tj?=
 =?us-ascii?Q?DH5Yj45qYFjH4JX0Ag2FLoFNwojQu3h8wBL1HYfR+ItWqa33VCCSU+QY6gVE?=
 =?us-ascii?Q?8gAiBhiDTFEHW5igWWOKzwWO9NEUluZ0fnEJzHE77UDKnerShJqAh6h4XMCv?=
 =?us-ascii?Q?J+FD9n6HBHwFbnIl6lIReSXU/KxU45Md4Q9dYl104ULjUB5bzrJB63rgP8pj?=
 =?us-ascii?Q?Z8036FD2JrWrmyqA9wSN/uoJ8zvl9YKRFSkHoRS+QDH2/Q9Czht9lvh5NA1W?=
 =?us-ascii?Q?cMNaLSJv5AYo73C2WFCzeIembIzYEgZRBYCW7qvq9iKUM6KIKZ5wTiGTFtuP?=
 =?us-ascii?Q?J9v4wELC5RFFoYYK1z7BhxAIeRzOkK1izj3JWeHcU5iRklnPO9q69mcQizWs?=
 =?us-ascii?Q?UR/lDKXroRTndNwc27x2KlFWLwCAp5GRBKXWmrFYt2LzvIAJEhZY0mfZpNJj?=
 =?us-ascii?Q?KywRHdvOnwkKqZ7NubEwyrh3eeR2Q+W3GKU1WQT+2ZVrE695szhgDCvrSIYf?=
 =?us-ascii?Q?cvvlFEqh+H5t/1pGvJhde7M5HQSmN7P7QHtkto2DfGgSh4fM7hPgSaJK/Ihq?=
 =?us-ascii?Q?E6/9yDTZ2ebszH1J8mwJefjlpRsDFJ1kJl6nepywUrrxdFIWg5RHs1BKnoBc?=
 =?us-ascii?Q?oHx04or4f4XtQ/GYMnrHhf3f9UDGNz+sOdF3hF0N2F2bzLM1tz+YBV539ywZ?=
 =?us-ascii?Q?Wnj26JUuZd+G2mjAWks3z5ZYLpasWAiIzc6qp0XcSyzVUb0+DkSshKWiPgWA?=
 =?us-ascii?Q?Em48dM+rffKQ6Szqt/EdOqXG34CqpGX4f9wqvIp0t3fAv/iXbOeqs9t9zI9q?=
 =?us-ascii?Q?pjbZAbUZZC6vaYo28+FTbzSmFRYp8bB4jQXDPKws?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f87af25-2dca-4982-2d21-08db1e3a83aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 12:01:26.8492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /fI0CRu9o1Ke+LUYSh2D26tXXF+eQSsYJTlm6bNXD21FXX5wi9jnvk+Ty40/+p/CL/OsXQEmZW2OZCm850JGsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8245
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 4/6] drm/i915/hdcp: Refactor HDCP API
 structures
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, February 1, 2023 2:38 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>; Winkler, Tomas <tomas.winkler@intel.com>; Vivi=
,
> Rodrigo <rodrigo.vivi@intel.com>; Shankar, Uma <uma.shankar@intel.com>; G=
upta,
> Anshuman <anshuman.gupta@intel.com>
> Subject: [PATCH v10 4/6] drm/i915/hdcp: Refactor HDCP API structures
>=20
> It requires to move intel specific HDCP API structures to i915_hdcp_inter=
face.h from
> driver/misc/mei/hdcp/mei_hdcp.h so that any content protection fw interfa=
ces can
> use these structures.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/misc/mei/hdcp/mei_hdcp.c  |  44 ++--  drivers/misc/mei/hdcp/mei_=
hdcp.h  |
> 354 -----------------------------  include/drm/i915_hdcp_interface.h | 35=
5
> ++++++++++++++++++++++++++++++
>  3 files changed, 377 insertions(+), 376 deletions(-)
>=20
> diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei=
_hdcp.c
> index b2c49599809c..a262e1fa3b48 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -52,7 +52,7 @@ mei_hdcp_initiate_session(struct device *dev, struct
> hdcp_port_data *data,
>=20
>  	session_init_in.header.api_version =3D HDCP_API_VERSION;
>  	session_init_in.header.command_id =3D WIRED_INITIATE_HDCP2_SESSION;
> -	session_init_in.header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	session_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	session_init_in.header.buffer_len =3D
>=20
> 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
>=20
> @@ -75,7 +75,7 @@ mei_hdcp_initiate_session(struct device *dev, struct
> hdcp_port_data *data,
>  		return byte;
>  	}
>=20
> -	if (session_init_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (session_init_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "ME cmd 0x%08X Failed. Status: 0x%X\n",
>  			WIRED_INITIATE_HDCP2_SESSION,
>  			session_init_out.header.status);
> @@ -122,7 +122,7 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct devic=
e
> *dev,
>=20
>  	verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_rxcert_in.header.command_id =3D WIRED_VERIFY_RECEIVER_CERT;
> -	verify_rxcert_in.header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	verify_rxcert_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	verify_rxcert_in.header.buffer_len =3D
>=20
> 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
>=20
> @@ -148,7 +148,7 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct devic=
e
> *dev,
>  		return byte;
>  	}
>=20
> -	if (verify_rxcert_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (verify_rxcert_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "ME cmd 0x%08X Failed. Status: 0x%X\n",
>  			WIRED_VERIFY_RECEIVER_CERT,
>  			verify_rxcert_out.header.status);
> @@ -194,7 +194,7 @@ mei_hdcp_verify_hprime(struct device *dev, struct
> hdcp_port_data *data,
>=20
>  	send_hprime_in.header.api_version =3D HDCP_API_VERSION;
>  	send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
> -	send_hprime_in.header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	send_hprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	send_hprime_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
>=20
>  	send_hprime_in.port.integrated_port_type =3D data->port_type; @@ -218,7
> +218,7 @@ mei_hdcp_verify_hprime(struct device *dev, struct hdcp_port_dat=
a
> *data,
>  		return byte;
>  	}
>=20
> -	if (send_hprime_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (send_hprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "ME cmd 0x%08X Failed. Status: 0x%X\n",
>  			WIRED_AKE_SEND_HPRIME,
> send_hprime_out.header.status);
>  		return -EIO;
> @@ -251,7 +251,7 @@ mei_hdcp_store_pairing_info(struct device *dev, struc=
t
> hdcp_port_data *data,
>=20
>  	pairing_info_in.header.api_version =3D HDCP_API_VERSION;
>  	pairing_info_in.header.command_id =3D WIRED_AKE_SEND_PAIRING_INFO;
> -	pairing_info_in.header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	pairing_info_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	pairing_info_in.header.buffer_len =3D
>=20
> 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
>=20
> @@ -276,7 +276,7 @@ mei_hdcp_store_pairing_info(struct device *dev, struc=
t
> hdcp_port_data *data,
>  		return byte;
>  	}
>=20
> -	if (pairing_info_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (pairing_info_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "ME cmd 0x%08X failed. Status: 0x%X\n",
>  			WIRED_AKE_SEND_PAIRING_INFO,
>  			pairing_info_out.header.status);
> @@ -311,7 +311,7 @@ mei_hdcp_initiate_locality_check(struct device *dev,
>=20
>  	lc_init_in.header.api_version =3D HDCP_API_VERSION;
>  	lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
> -	lc_init_in.header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	lc_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	lc_init_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
>=20
>  	lc_init_in.port.integrated_port_type =3D data->port_type; @@ -330,7 +33=
0,7
> @@ mei_hdcp_initiate_locality_check(struct device *dev,
>  		return byte;
>  	}
>=20
> -	if (lc_init_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (lc_init_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "ME cmd 0x%08X Failed. status: 0x%X\n",
>  			WIRED_INIT_LOCALITY_CHECK, lc_init_out.header.status);
>  		return -EIO;
> @@ -366,7 +366,7 @@ mei_hdcp_verify_lprime(struct device *dev, struct
> hdcp_port_data *data,
>=20
>  	verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
> -	verify_lprime_in.header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	verify_lprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	verify_lprime_in.header.buffer_len =3D
>=20
> 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
>=20
> @@ -391,7 +391,7 @@ mei_hdcp_verify_lprime(struct device *dev, struct
> hdcp_port_data *data,
>  		return byte;
>  	}
>=20
> -	if (verify_lprime_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (verify_lprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
>  			WIRED_VALIDATE_LOCALITY,
>  			verify_lprime_out.header.status);
> @@ -425,7 +425,7 @@ static int mei_hdcp_get_session_key(struct device *de=
v,
>=20
>  	get_skey_in.header.api_version =3D HDCP_API_VERSION;
>  	get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY;
> -	get_skey_in.header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	get_skey_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	get_skey_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
>=20
>  	get_skey_in.port.integrated_port_type =3D data->port_type; @@ -445,7
> +445,7 @@ static int mei_hdcp_get_session_key(struct device *dev,
>  		return byte;
>  	}
>=20
> -	if (get_skey_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (get_skey_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
>  			WIRED_GET_SESSION_KEY, get_skey_out.header.status);
>  		return -EIO;
> @@ -489,7 +489,7 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct devic=
e
> *dev,
>=20
>  	verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
> -	verify_repeater_in.header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	verify_repeater_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	verify_repeater_in.header.buffer_len =3D
>=20
> 	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
>=20
> @@ -520,7 +520,7 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct devic=
e
> *dev,
>  		return byte;
>  	}
>=20
> -	if (verify_repeater_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (verify_repeater_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
>  			WIRED_VERIFY_REPEATER,
>  			verify_repeater_out.header.status);
> @@ -568,7 +568,7 @@ static int mei_hdcp_verify_mprime(struct device *dev,
>=20
>  	verify_mprime_in->header.api_version =3D HDCP_API_VERSION;
>  	verify_mprime_in->header.command_id =3D
> WIRED_REPEATER_AUTH_STREAM_REQ;
> -	verify_mprime_in->header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	verify_mprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	verify_mprime_in->header.buffer_len =3D cmd_size  - sizeof(verify_mprim=
e_in-
> >header);
>=20
>  	verify_mprime_in->port.integrated_port_type =3D data->port_type; @@ -
> 597,7 +597,7 @@ static int mei_hdcp_verify_mprime(struct device *dev,
>  		return byte;
>  	}
>=20
> -	if (verify_mprime_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (verify_mprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
>  			WIRED_REPEATER_AUTH_STREAM_REQ,
>  			verify_mprime_out.header.status);
> @@ -630,7 +630,7 @@ static int mei_hdcp_enable_authentication(struct devi=
ce
> *dev,
>=20
>  	enable_auth_in.header.api_version =3D HDCP_API_VERSION;
>  	enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH;
> -	enable_auth_in.header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	enable_auth_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	enable_auth_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
>=20
>  	enable_auth_in.port.integrated_port_type =3D data->port_type; @@ -652,7
> +652,7 @@ static int mei_hdcp_enable_authentication(struct device *dev,
>  		return byte;
>  	}
>=20
> -	if (enable_auth_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (enable_auth_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
>  			WIRED_ENABLE_AUTH, enable_auth_out.header.status);
>  		return -EIO;
> @@ -684,7 +684,7 @@ mei_hdcp_close_session(struct device *dev, struct
> hdcp_port_data *data)
>=20
>  	session_close_in.header.api_version =3D HDCP_API_VERSION;
>  	session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
> -	session_close_in.header.status =3D ME_HDCP_STATUS_SUCCESS;
> +	session_close_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
>  	session_close_in.header.buffer_len =3D
>  				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
>=20
> @@ -706,7 +706,7 @@ mei_hdcp_close_session(struct device *dev, struct
> hdcp_port_data *data)
>  		return byte;
>  	}
>=20
> -	if (session_close_out.header.status !=3D ME_HDCP_STATUS_SUCCESS) {
> +	if (session_close_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
>  		dev_dbg(dev, "Session Close Failed. status: 0x%X\n",
>  			session_close_out.header.status);
>  		return -EIO;
> diff --git a/drivers/misc/mei/hdcp/mei_hdcp.h b/drivers/misc/mei/hdcp/mei=
_hdcp.h
> index ca09c8f83d6b..0683d83ec17a 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.h
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.h
> @@ -11,358 +11,4 @@
>=20
>  #include <drm/display/drm_hdcp.h>
>=20
> -/* me_hdcp_status: Enumeration of all HDCP Status Codes */ -enum
> me_hdcp_status {
> -	ME_HDCP_STATUS_SUCCESS			=3D 0x0000,
> -
> -	/* WiDi Generic Status Codes */
> -	ME_HDCP_STATUS_INTERNAL_ERROR		=3D 0x1000,
> -	ME_HDCP_STATUS_UNKNOWN_ERROR		=3D 0x1001,
> -	ME_HDCP_STATUS_INCORRECT_API_VERSION	=3D 0x1002,
> -	ME_HDCP_STATUS_INVALID_FUNCTION		=3D 0x1003,
> -	ME_HDCP_STATUS_INVALID_BUFFER_LENGTH	=3D 0x1004,
> -	ME_HDCP_STATUS_INVALID_PARAMS		=3D 0x1005,
> -	ME_HDCP_STATUS_AUTHENTICATION_FAILED	=3D 0x1006,
> -
> -	/* WiDi Status Codes */
> -	ME_HDCP_INVALID_SESSION_STATE		=3D 0x6000,
> -	ME_HDCP_SRM_FRAGMENT_UNEXPECTED		=3D 0x6001,
> -	ME_HDCP_SRM_INVALID_LENGTH		=3D 0x6002,
> -	ME_HDCP_SRM_FRAGMENT_OFFSET_INVALID	=3D 0x6003,
> -	ME_HDCP_SRM_VERIFICATION_FAILED		=3D 0x6004,
> -	ME_HDCP_SRM_VERSION_TOO_OLD		=3D 0x6005,
> -	ME_HDCP_RX_CERT_VERIFICATION_FAILED	=3D 0x6006,
> -	ME_HDCP_RX_REVOKED			=3D 0x6007,
> -	ME_HDCP_H_VERIFICATION_FAILED		=3D 0x6008,
> -	ME_HDCP_REPEATER_CHECK_UNEXPECTED	=3D 0x6009,
> -	ME_HDCP_TOPOLOGY_MAX_EXCEEDED		=3D 0x600A,
> -	ME_HDCP_V_VERIFICATION_FAILED		=3D 0x600B,
> -	ME_HDCP_L_VERIFICATION_FAILED		=3D 0x600C,
> -	ME_HDCP_STREAM_KEY_ALLOC_FAILED		=3D 0x600D,
> -	ME_HDCP_BASE_KEY_RESET_FAILED		=3D 0x600E,
> -	ME_HDCP_NONCE_GENERATION_FAILED		=3D 0x600F,
> -	ME_HDCP_STATUS_INVALID_E_KEY_STATE	=3D 0x6010,
> -	ME_HDCP_STATUS_INVALID_CS_ICV		=3D 0x6011,
> -	ME_HDCP_STATUS_INVALID_KB_KEY_STATE	=3D 0x6012,
> -	ME_HDCP_STATUS_INVALID_PAVP_MODE_ICV	=3D 0x6013,
> -	ME_HDCP_STATUS_INVALID_PAVP_MODE	=3D 0x6014,
> -	ME_HDCP_STATUS_LC_MAX_ATTEMPTS		=3D 0x6015,
> -
> -	/* New status for HDCP 2.1 */
> -	ME_HDCP_STATUS_MISMATCH_IN_M		=3D 0x6016,
> -
> -	/* New status code for HDCP 2.2 Rx */
> -	ME_HDCP_STATUS_RX_PROV_NOT_ALLOWED	=3D 0x6017,
> -	ME_HDCP_STATUS_RX_PROV_WRONG_SUBJECT	=3D 0x6018,
> -	ME_HDCP_RX_NEEDS_PROVISIONING		=3D 0x6019,
> -	ME_HDCP_BKSV_ICV_AUTH_FAILED		=3D 0x6020,
> -	ME_HDCP_STATUS_INVALID_STREAM_ID	=3D 0x6021,
> -	ME_HDCP_STATUS_CHAIN_NOT_INITIALIZED	=3D 0x6022,
> -	ME_HDCP_FAIL_NOT_EXPECTED		=3D 0x6023,
> -	ME_HDCP_FAIL_HDCP_OFF			=3D 0x6024,
> -	ME_HDCP_FAIL_INVALID_PAVP_MEMORY_MODE	=3D 0x6025,
> -	ME_HDCP_FAIL_AES_ECB_FAILURE		=3D 0x6026,
> -	ME_HDCP_FEATURE_NOT_SUPPORTED		=3D 0x6027,
> -	ME_HDCP_DMA_READ_ERROR			=3D 0x6028,
> -	ME_HDCP_DMA_WRITE_ERROR			=3D 0x6029,
> -	ME_HDCP_FAIL_INVALID_PACKET_SIZE	=3D 0x6030,
> -	ME_HDCP_H264_PARSING_ERROR		=3D 0x6031,
> -	ME_HDCP_HDCP2_ERRATA_VIDEO_VIOLATION	=3D 0x6032,
> -	ME_HDCP_HDCP2_ERRATA_AUDIO_VIOLATION	=3D 0x6033,
> -	ME_HDCP_TX_ACTIVE_ERROR			=3D 0x6034,
> -	ME_HDCP_MODE_CHANGE_ERROR		=3D 0x6035,
> -	ME_HDCP_STREAM_TYPE_ERROR		=3D 0x6036,
> -	ME_HDCP_STREAM_MANAGE_NOT_POSSIBLE	=3D 0x6037,
> -
> -	ME_HDCP_STATUS_PORT_INVALID_COMMAND	=3D 0x6038,
> -	ME_HDCP_STATUS_UNSUPPORTED_PROTOCOL	=3D 0x6039,
> -	ME_HDCP_STATUS_INVALID_PORT_INDEX	=3D 0x603a,
> -	ME_HDCP_STATUS_TX_AUTH_NEEDED		=3D 0x603b,
> -	ME_HDCP_STATUS_NOT_INTEGRATED_PORT	=3D 0x603c,
> -	ME_HDCP_STATUS_SESSION_MAX_REACHED	=3D 0x603d,
> -
> -	/* hdcp capable bit is not set in rx_caps(error is unique to DP) */
> -	ME_HDCP_STATUS_NOT_HDCP_CAPABLE		=3D 0x6041,
> -
> -	ME_HDCP_STATUS_INVALID_STREAM_COUNT	=3D 0x6042,
> -};
> -
> -#define HDCP_API_VERSION				0x00010000
> -
> -#define HDCP_M_LEN					16
> -#define HDCP_KH_LEN					16
> -
> -/* Payload Buffer size(Excluding Header) for CMDs and corresponding resp=
onse */
> -/* Wired_Tx_AKE  */
> -#define	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN	(4 + 1)
> -#define	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_OUT	(4 + 8 + 3)
> -
> -#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN	(4 + 522 +
> 8 + 3)
> -#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_MIN_OUT	(4
> + 1 + 3 + 16 + 16)
> -#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_MAX_OUT	(4
> + 1 + 3 + 128)
> -
> -#define	WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN		(4 + 32)
> -#define	WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_OUT		(4)
> -
> -#define	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN		(4
> + 16)
> -#define	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_OUT		(4)
> -
> -#define	WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN		(4)
> -#define	WIRED_CMD_BUF_LEN_CLOSE_SESSION_OUT		(4)
> -
> -/* Wired_Tx_LC */
> -#define	WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN	(4)
> -#define	WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_OUT	(4 + 8)
> -
> -#define	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN		(4
> + 32)
> -#define	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_OUT		(4)
> -
> -/* Wired_Tx_SKE */
> -#define	WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN		(4)
> -#define	WIRED_CMD_BUF_LEN_GET_SESSION_KEY_OUT		(4
> + 16 + 8)
> -
> -/* Wired_Tx_SKE */
> -#define	WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN		(4 + 1)
> -#define	WIRED_CMD_BUF_LEN_ENABLE_AUTH_OUT		(4)
> -
> -/* Wired_Tx_Repeater */
> -#define	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN		(4 + 2 + 3 +
> 16 + 155)
> -#define	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_OUT		(4
> + 1 + 16)
> -
> -#define	WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_MIN_IN
> 	(4 + 3 + \
> -								32 + 2 + 2)
> -
> -#define	WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_OUT
> 	(4)
> -
> -/* hdcp_command_id: Enumeration of all WIRED HDCP Command IDs */ -enum
> hdcp_command_id {
> -	_WIDI_COMMAND_BASE		=3D 0x00030000,
> -	WIDI_INITIATE_HDCP2_SESSION	=3D _WIDI_COMMAND_BASE,
> -	HDCP_GET_SRM_STATUS,
> -	HDCP_SEND_SRM_FRAGMENT,
> -
> -	/* The wired HDCP Tx commands */
> -	_WIRED_COMMAND_BASE		=3D 0x00031000,
> -	WIRED_INITIATE_HDCP2_SESSION	=3D _WIRED_COMMAND_BASE,
> -	WIRED_VERIFY_RECEIVER_CERT,
> -	WIRED_AKE_SEND_HPRIME,
> -	WIRED_AKE_SEND_PAIRING_INFO,
> -	WIRED_INIT_LOCALITY_CHECK,
> -	WIRED_VALIDATE_LOCALITY,
> -	WIRED_GET_SESSION_KEY,
> -	WIRED_ENABLE_AUTH,
> -	WIRED_VERIFY_REPEATER,
> -	WIRED_REPEATER_AUTH_STREAM_REQ,
> -	WIRED_CLOSE_SESSION,
> -
> -	_WIRED_COMMANDS_COUNT,
> -};
> -
> -union encrypted_buff {
> -	u8		e_kpub_km[HDCP_2_2_E_KPUB_KM_LEN];
> -	u8		e_kh_km_m[HDCP_2_2_E_KH_KM_M_LEN];
> -	struct {
> -		u8	e_kh_km[HDCP_KH_LEN];
> -		u8	m[HDCP_M_LEN];
> -	} __packed;
> -};
> -
> -/* HDCP HECI message header. All header values are little endian. */ -st=
ruct
> hdcp_cmd_header {
> -	u32			api_version;
> -	u32			command_id;
> -	enum me_hdcp_status	status;
> -	/* Length of the HECI message (excluding the header) */
> -	u32			buffer_len;
> -} __packed;
> -
> -/* Empty command request or response. No data follows the header. */ -st=
ruct
> hdcp_cmd_no_data {
> -	struct hdcp_cmd_header header;
> -} __packed;
> -
> -/* Uniquely identifies the hdcp port being addressed for a given command=
. */ -
> struct hdcp_port_id {
> -	u8	integrated_port_type;
> -	/* physical_port is used until Gen11.5. Must be zero for Gen11.5+ */
> -	u8	physical_port;
> -	/* attached_transcoder is for Gen11.5+. Set to zero for <Gen11.5 */
> -	u8	attached_transcoder;
> -	u8	reserved;
> -} __packed;
> -
> -/*
> - * Data structures for integrated wired HDCP2 Tx in
> - * support of the AKE protocol
> - */
> -/* HECI struct for integrated wired HDCP Tx session initiation. */ -stru=
ct
> wired_cmd_initiate_hdcp2_session_in {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			protocol; /* for HDMI vs DP */
> -} __packed;
> -
> -struct wired_cmd_initiate_hdcp2_session_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			r_tx[HDCP_2_2_RTX_LEN];
> -	struct hdcp2_tx_caps	tx_caps;
> -} __packed;
> -
> -/* HECI struct for ending an integrated wired HDCP Tx session. */ -struc=
t
> wired_cmd_close_session_in {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -} __packed;
> -
> -struct wired_cmd_close_session_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -} __packed;
> -
> -/* HECI struct for integrated wired HDCP Tx Rx Cert verification. */ -st=
ruct
> wired_cmd_verify_receiver_cert_in {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	struct hdcp2_cert_rx	cert_rx;
> -	u8			r_rx[HDCP_2_2_RRX_LEN];
> -	u8			rx_caps[HDCP_2_2_RXCAPS_LEN];
> -} __packed;
> -
> -struct wired_cmd_verify_receiver_cert_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			km_stored;
> -	u8			reserved[3];
> -	union encrypted_buff	ekm_buff;
> -} __packed;
> -
> -/* HECI struct for verification of Rx's Hprime in a HDCP Tx session */ -=
struct
> wired_cmd_ake_send_hprime_in {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			h_prime[HDCP_2_2_H_PRIME_LEN];
> -} __packed;
> -
> -struct wired_cmd_ake_send_hprime_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -} __packed;
> -
> -/*
> - * HECI struct for sending in AKE pairing data generated by the Rx in an
> - * integrated wired HDCP Tx session.
> - */
> -struct wired_cmd_ake_send_pairing_info_in {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			e_kh_km[HDCP_2_2_E_KH_KM_LEN];
> -} __packed;
> -
> -struct wired_cmd_ake_send_pairing_info_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -} __packed;
> -
> -/* Data structures for integrated wired HDCP2 Tx in support of the LC pr=
otocol*/
> -/*
> - * HECI struct for initiating locality check with an
> - * integrated wired HDCP Tx session.
> - */
> -struct wired_cmd_init_locality_check_in {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -} __packed;
> -
> -struct wired_cmd_init_locality_check_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			r_n[HDCP_2_2_RN_LEN];
> -} __packed;
> -
> -/*
> - * HECI struct for validating an Rx's LPrime value in an
> - * integrated wired HDCP Tx session.
> - */
> -struct wired_cmd_validate_locality_in {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			l_prime[HDCP_2_2_L_PRIME_LEN];
> -} __packed;
> -
> -struct wired_cmd_validate_locality_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -} __packed;
> -
> -/*
> - * Data structures for integrated wired HDCP2 Tx in support of the
> - * SKE protocol
> - */
> -/* HECI struct for creating session key */ -struct wired_cmd_get_session=
_key_in {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -} __packed;
> -
> -struct wired_cmd_get_session_key_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			e_dkey_ks[HDCP_2_2_E_DKEY_KS_LEN];
> -	u8			r_iv[HDCP_2_2_RIV_LEN];
> -} __packed;
> -
> -/* HECI struct for the Tx enable authentication command */ -struct
> wired_cmd_enable_auth_in {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			stream_type;
> -} __packed;
> -
> -struct wired_cmd_enable_auth_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -} __packed;
> -
> -/*
> - * Data structures for integrated wired HDCP2 Tx in support of
> - * the repeater protocols
> - */
> -/*
> - * HECI struct for verifying the downstream repeater's HDCP topology in =
an
> - * integrated wired HDCP Tx session.
> - */
> -struct wired_cmd_verify_repeater_in {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			rx_info[HDCP_2_2_RXINFO_LEN];
> -	u8			seq_num_v[HDCP_2_2_SEQ_NUM_LEN];
> -	u8			v_prime[HDCP_2_2_V_PRIME_HALF_LEN];
> -	u8			receiver_ids[HDCP_2_2_RECEIVER_IDS_MAX_LEN];
> -} __packed;
> -
> -struct wired_cmd_verify_repeater_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -	u8			content_type_supported;
> -	u8			v[HDCP_2_2_V_PRIME_HALF_LEN];
> -} __packed;
> -
> -/*
> - * HECI struct in support of stream management in an
> - * integrated wired HDCP Tx session.
> - */
> -struct wired_cmd_repeater_auth_stream_req_in {
> -	struct hdcp_cmd_header		header;
> -	struct hdcp_port_id		port;
> -	u8				seq_num_m[HDCP_2_2_SEQ_NUM_LEN];
> -	u8				m_prime[HDCP_2_2_MPRIME_LEN];
> -	__be16				k;
> -	struct hdcp2_streamid_type	streams[];
> -} __packed;
> -
> -struct wired_cmd_repeater_auth_stream_req_out {
> -	struct hdcp_cmd_header	header;
> -	struct hdcp_port_id	port;
> -} __packed;
>  #endif /* __MEI_HDCP_H__ */
> diff --git a/include/drm/i915_hdcp_interface.h b/include/drm/i915_hdcp_in=
terface.h
> index 75c75f52ab1b..004412040909 100644
> --- a/include/drm/i915_hdcp_interface.h
> +++ b/include/drm/i915_hdcp_interface.h
> @@ -181,4 +181,359 @@ struct i915_hdcp_master {
>  	struct mutex mutex;
>  };
>=20
> +/* fw_hdcp_status: Enumeration of all HDCP Status Codes */ enum
> +fw_hdcp_status {
> +	FW_HDCP_STATUS_SUCCESS			=3D 0x0000,
> +
> +	/* WiDi Generic Status Codes */
> +	FW_HDCP_STATUS_INTERNAL_ERROR		=3D 0x1000,
> +	FW_HDCP_STATUS_UNKNOWN_ERROR		=3D 0x1001,
> +	FW_HDCP_STATUS_INCORRECT_API_VERSION	=3D 0x1002,
> +	FW_HDCP_STATUS_INVALID_FUNCTION		=3D 0x1003,
> +	FW_HDCP_STATUS_INVALID_BUFFER_LENGTH	=3D 0x1004,
> +	FW_HDCP_STATUS_INVALID_PARAMS		=3D 0x1005,
> +	FW_HDCP_STATUS_AUTHENTICATION_FAILED	=3D 0x1006,
> +
> +	/* WiDi Status Codes */
> +	FW_HDCP_INVALID_SESSION_STATE		=3D 0x6000,
> +	FW_HDCP_SRM_FRAGMENT_UNEXPECTED		=3D 0x6001,
> +	FW_HDCP_SRM_INVALID_LENGTH		=3D 0x6002,
> +	FW_HDCP_SRM_FRAGMENT_OFFSET_INVALID	=3D 0x6003,
> +	FW_HDCP_SRM_VERIFICATION_FAILED		=3D 0x6004,
> +	FW_HDCP_SRM_VERSION_TOO_OLD		=3D 0x6005,
> +	FW_HDCP_RX_CERT_VERIFICATION_FAILED	=3D 0x6006,
> +	FW_HDCP_RX_REVOKED			=3D 0x6007,
> +	FW_HDCP_H_VERIFICATION_FAILED		=3D 0x6008,
> +	FW_HDCP_REPEATER_CHECK_UNEXPECTED	=3D 0x6009,
> +	FW_HDCP_TOPOLOGY_MAX_EXCEEDED		=3D 0x600A,
> +	FW_HDCP_V_VERIFICATION_FAILED		=3D 0x600B,
> +	FW_HDCP_L_VERIFICATION_FAILED		=3D 0x600C,
> +	FW_HDCP_STREAM_KEY_ALLOC_FAILED		=3D 0x600D,
> +	FW_HDCP_BASE_KEY_RESET_FAILED		=3D 0x600E,
> +	FW_HDCP_NONCE_GENERATION_FAILED		=3D 0x600F,
> +	FW_HDCP_STATUS_INVALID_E_KEY_STATE	=3D 0x6010,
> +	FW_HDCP_STATUS_INVALID_CS_ICV		=3D 0x6011,
> +	FW_HDCP_STATUS_INVALID_KB_KEY_STATE	=3D 0x6012,
> +	FW_HDCP_STATUS_INVALID_PAVP_MODE_ICV	=3D 0x6013,
> +	FW_HDCP_STATUS_INVALID_PAVP_MODE	=3D 0x6014,
> +	FW_HDCP_STATUS_LC_MAX_ATTEMPTS		=3D 0x6015,
> +
> +	/* New status for HDCP 2.1 */
> +	FW_HDCP_STATUS_MISMATCH_IN_M		=3D 0x6016,
> +
> +	/* New status code for HDCP 2.2 Rx */
> +	FW_HDCP_STATUS_RX_PROV_NOT_ALLOWED	=3D 0x6017,
> +	FW_HDCP_STATUS_RX_PROV_WRONG_SUBJECT	=3D 0x6018,
> +	FW_HDCP_RX_NEEDS_PROVISIONING		=3D 0x6019,
> +	FW_HDCP_BKSV_ICV_AUTH_FAILED		=3D 0x6020,
> +	FW_HDCP_STATUS_INVALID_STREAM_ID	=3D 0x6021,
> +	FW_HDCP_STATUS_CHAIN_NOT_INITIALIZED	=3D 0x6022,
> +	FW_HDCP_FAIL_NOT_EXPECTED		=3D 0x6023,
> +	FW_HDCP_FAIL_HDCP_OFF			=3D 0x6024,
> +	FW_HDCP_FAIL_INVALID_PAVP_MEMORY_MODE	=3D 0x6025,
> +	FW_HDCP_FAIL_AES_ECB_FAILURE		=3D 0x6026,
> +	FW_HDCP_FEATURE_NOT_SUPPORTED		=3D 0x6027,
> +	FW_HDCP_DMA_READ_ERROR			=3D 0x6028,
> +	FW_HDCP_DMA_WRITE_ERROR			=3D 0x6029,
> +	FW_HDCP_FAIL_INVALID_PACKET_SIZE	=3D 0x6030,
> +	FW_HDCP_H264_PARSING_ERROR		=3D 0x6031,
> +	FW_HDCP_HDCP2_ERRATA_VIDEO_VIOLATION	=3D 0x6032,
> +	FW_HDCP_HDCP2_ERRATA_AUDIO_VIOLATION	=3D 0x6033,
> +	FW_HDCP_TX_ACTIVE_ERROR			=3D 0x6034,
> +	FW_HDCP_MODE_CHANGE_ERROR		=3D 0x6035,
> +	FW_HDCP_STREAM_TYPE_ERROR		=3D 0x6036,
> +	FW_HDCP_STREAM_MANAGE_NOT_POSSIBLE	=3D 0x6037,
> +
> +	FW_HDCP_STATUS_PORT_INVALID_COMMAND	=3D 0x6038,
> +	FW_HDCP_STATUS_UNSUPPORTED_PROTOCOL	=3D 0x6039,
> +	FW_HDCP_STATUS_INVALID_PORT_INDEX	=3D 0x603a,
> +	FW_HDCP_STATUS_TX_AUTH_NEEDED		=3D 0x603b,
> +	FW_HDCP_STATUS_NOT_INTEGRATED_PORT	=3D 0x603c,
> +	FW_HDCP_STATUS_SESSION_MAX_REACHED	=3D 0x603d,
> +
> +	/* hdcp capable bit is not set in rx_caps(error is unique to DP) */
> +	FW_HDCP_STATUS_NOT_HDCP_CAPABLE		=3D 0x6041,
> +
> +	FW_HDCP_STATUS_INVALID_STREAM_COUNT	=3D 0x6042,
> +};
> +
> +#define HDCP_API_VERSION				0x00010000
> +
> +#define HDCP_M_LEN					16
> +#define HDCP_KH_LEN					16
> +
> +/* Payload Buffer size(Excluding Header) for CMDs and corresponding
> +response */
> +/* Wired_Tx_AKE  */
> +#define	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN	(4 + 1)
> +#define	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_OUT	(4 + 8 + 3)
> +
> +#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN	(4 + 522 +
> 8 + 3)
> +#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_MIN_OUT	(4
> + 1 + 3 + 16 + 16)
> +#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_MAX_OUT	(4
> + 1 + 3 + 128)
> +
> +#define	WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN		(4 + 32)
> +#define	WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_OUT		(4)
> +
> +#define	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN		(4
> + 16)
> +#define	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_OUT		(4)
> +
> +#define	WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN		(4)
> +#define	WIRED_CMD_BUF_LEN_CLOSE_SESSION_OUT		(4)
> +
> +/* Wired_Tx_LC */
> +#define	WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN	(4)
> +#define	WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_OUT	(4 + 8)
> +
> +#define	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN		(4
> + 32)
> +#define	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_OUT		(4)
> +
> +/* Wired_Tx_SKE */
> +#define	WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN		(4)
> +#define	WIRED_CMD_BUF_LEN_GET_SESSION_KEY_OUT		(4
> + 16 + 8)
> +
> +/* Wired_Tx_SKE */
> +#define	WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN		(4 + 1)
> +#define	WIRED_CMD_BUF_LEN_ENABLE_AUTH_OUT		(4)
> +
> +/* Wired_Tx_Repeater */
> +#define	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN		(4 + 2 + 3 +
> 16 + 155)
> +#define	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_OUT		(4
> + 1 + 16)
> +
> +#define	WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_MIN_IN
> 	(4 + 3 + \
> +								32 + 2 + 2)
> +
> +#define	WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_OUT
> 	(4)
> +
> +/* hdcp_command_id: Enumeration of all WIRED HDCP Command IDs */ enum
> +hdcp_command_id {
> +	_WIDI_COMMAND_BASE		=3D 0x00030000,
> +	WIDI_INITIATE_HDCP2_SESSION	=3D _WIDI_COMMAND_BASE,
> +	HDCP_GET_SRM_STATUS,
> +	HDCP_SEND_SRM_FRAGMENT,
> +
> +	/* The wired HDCP Tx commands */
> +	_WIRED_COMMAND_BASE		=3D 0x00031000,
> +	WIRED_INITIATE_HDCP2_SESSION	=3D _WIRED_COMMAND_BASE,
> +	WIRED_VERIFY_RECEIVER_CERT,
> +	WIRED_AKE_SEND_HPRIME,
> +	WIRED_AKE_SEND_PAIRING_INFO,
> +	WIRED_INIT_LOCALITY_CHECK,
> +	WIRED_VALIDATE_LOCALITY,
> +	WIRED_GET_SESSION_KEY,
> +	WIRED_ENABLE_AUTH,
> +	WIRED_VERIFY_REPEATER,
> +	WIRED_REPEATER_AUTH_STREAM_REQ,
> +	WIRED_CLOSE_SESSION,
> +
> +	_WIRED_COMMANDS_COUNT,
> +};
> +
> +union encrypted_buff {
> +	u8		e_kpub_km[HDCP_2_2_E_KPUB_KM_LEN];
> +	u8		e_kh_km_m[HDCP_2_2_E_KH_KM_M_LEN];
> +	struct {
> +		u8	e_kh_km[HDCP_KH_LEN];
> +		u8	m[HDCP_M_LEN];
> +	} __packed;
> +};
> +
> +/* HDCP HECI message header. All header values are little endian. */
> +struct hdcp_cmd_header {
> +	u32			api_version;
> +	u32			command_id;
> +	enum fw_hdcp_status	status;
> +	/* Length of the HECI message (excluding the header) */
> +	u32			buffer_len;
> +} __packed;
> +
> +/* Empty command request or response. No data follows the header. */
> +struct hdcp_cmd_no_data {
> +	struct hdcp_cmd_header header;
> +} __packed;
> +
> +/* Uniquely identifies the hdcp port being addressed for a given
> +command. */ struct hdcp_port_id {
> +	u8	integrated_port_type;
> +	/* physical_port is used until Gen11.5. Must be zero for Gen11.5+ */
> +	u8	physical_port;
> +	/* attached_transcoder is for Gen11.5+. Set to zero for <Gen11.5 */
> +	u8	attached_transcoder;
> +	u8	reserved;
> +} __packed;
> +
> +/*
> + * Data structures for integrated wired HDCP2 Tx in
> + * support of the AKE protocol
> + */
> +/* HECI struct for integrated wired HDCP Tx session initiation. */
> +struct wired_cmd_initiate_hdcp2_session_in {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			protocol; /* for HDMI vs DP */
> +} __packed;
> +
> +struct wired_cmd_initiate_hdcp2_session_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			r_tx[HDCP_2_2_RTX_LEN];
> +	struct hdcp2_tx_caps	tx_caps;
> +} __packed;
> +
> +/* HECI struct for ending an integrated wired HDCP Tx session. */
> +struct wired_cmd_close_session_in {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +} __packed;
> +
> +struct wired_cmd_close_session_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +} __packed;
> +
> +/* HECI struct for integrated wired HDCP Tx Rx Cert verification. */
> +struct wired_cmd_verify_receiver_cert_in {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	struct hdcp2_cert_rx	cert_rx;
> +	u8			r_rx[HDCP_2_2_RRX_LEN];
> +	u8			rx_caps[HDCP_2_2_RXCAPS_LEN];
> +} __packed;
> +
> +struct wired_cmd_verify_receiver_cert_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			km_stored;
> +	u8			reserved[3];
> +	union encrypted_buff	ekm_buff;
> +} __packed;
> +
> +/* HECI struct for verification of Rx's Hprime in a HDCP Tx session */
> +struct wired_cmd_ake_send_hprime_in {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			h_prime[HDCP_2_2_H_PRIME_LEN];
> +} __packed;
> +
> +struct wired_cmd_ake_send_hprime_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +} __packed;
> +
> +/*
> + * HECI struct for sending in AKE pairing data generated by the Rx in
> +an
> + * integrated wired HDCP Tx session.
> + */
> +struct wired_cmd_ake_send_pairing_info_in {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			e_kh_km[HDCP_2_2_E_KH_KM_LEN];
> +} __packed;
> +
> +struct wired_cmd_ake_send_pairing_info_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +} __packed;
> +
> +/* Data structures for integrated wired HDCP2 Tx in support of the LC
> +protocol*/
> +/*
> + * HECI struct for initiating locality check with an
> + * integrated wired HDCP Tx session.
> + */
> +struct wired_cmd_init_locality_check_in {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +} __packed;
> +
> +struct wired_cmd_init_locality_check_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			r_n[HDCP_2_2_RN_LEN];
> +} __packed;
> +
> +/*
> + * HECI struct for validating an Rx's LPrime value in an
> + * integrated wired HDCP Tx session.
> + */
> +struct wired_cmd_validate_locality_in {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			l_prime[HDCP_2_2_L_PRIME_LEN];
> +} __packed;
> +
> +struct wired_cmd_validate_locality_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +} __packed;
> +
> +/*
> + * Data structures for integrated wired HDCP2 Tx in support of the
> + * SKE protocol
> + */
> +/* HECI struct for creating session key */ struct
> +wired_cmd_get_session_key_in {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +} __packed;
> +
> +struct wired_cmd_get_session_key_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			e_dkey_ks[HDCP_2_2_E_DKEY_KS_LEN];
> +	u8			r_iv[HDCP_2_2_RIV_LEN];
> +} __packed;
> +
> +/* HECI struct for the Tx enable authentication command */ struct
> +wired_cmd_enable_auth_in {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			stream_type;
> +} __packed;
> +
> +struct wired_cmd_enable_auth_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +} __packed;
> +
> +/*
> + * Data structures for integrated wired HDCP2 Tx in support of
> + * the repeater protocols
> + */
> +/*
> + * HECI struct for verifying the downstream repeater's HDCP topology in
> +an
> + * integrated wired HDCP Tx session.
> + */
> +struct wired_cmd_verify_repeater_in {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			rx_info[HDCP_2_2_RXINFO_LEN];
> +	u8			seq_num_v[HDCP_2_2_SEQ_NUM_LEN];
> +	u8			v_prime[HDCP_2_2_V_PRIME_HALF_LEN];
> +	u8			receiver_ids[HDCP_2_2_RECEIVER_IDS_MAX_LEN];
> +} __packed;
> +
> +struct wired_cmd_verify_repeater_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +	u8			content_type_supported;
> +	u8			v[HDCP_2_2_V_PRIME_HALF_LEN];
> +} __packed;
> +
> +/*
> + * HECI struct in support of stream management in an
> + * integrated wired HDCP Tx session.
> + */
> +struct wired_cmd_repeater_auth_stream_req_in {
> +	struct hdcp_cmd_header		header;
> +	struct hdcp_port_id		port;
> +	u8				seq_num_m[HDCP_2_2_SEQ_NUM_LEN];
> +	u8				m_prime[HDCP_2_2_MPRIME_LEN];
> +	__be16				k;
> +	struct hdcp2_streamid_type	streams[];
> +} __packed;
> +
> +struct wired_cmd_repeater_auth_stream_req_out {
> +	struct hdcp_cmd_header	header;
> +	struct hdcp_port_id	port;
> +} __packed;
> +
>  #endif /* _I915_HDCP_INTERFACE_H_ */
> --
> 2.25.1


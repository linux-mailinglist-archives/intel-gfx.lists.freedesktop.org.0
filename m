Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB8A6ABEEA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 13:00:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E3D410E2F4;
	Mon,  6 Mar 2023 12:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555E910E364
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 12:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678104017; x=1709640017;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1Km0jBlgmfIVM/tCoG7jNswhLFO/co/dS6lp75jYU20=;
 b=SfiZ5hHrzu7amEyAhhp5G2SK9g7PSNvh5NG9bkvnVNkhgBvgbwgfkVzd
 3P239RJJkVEKxCQGJpdb07UctdoEWCi9yqaY3G3VtFy52okfNbSX3azrD
 ll3DjKc6vAxoyScFtCbRQgRVOkaa15Mu9ivul7wKtAbndXDm/Qyeu1ZL+
 PEMd/11/AIv39zxLZSOwoAJzbFX+FBfdjr/GyKkglD/lk144a5vAEQS0N
 kO9/zX5uh2oJeu1ZAdyrJRhW4ciGJWO/G1hZw3kNYORnvMcR2VFWNRA+O
 wMdzajSsfekN3jxWGkqve6pjRep/KQ3y1ESQgV7CWShF4uHdrk6HrCWHT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="337053522"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="337053522"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 04:00:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="786197004"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="786197004"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2023 04:00:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 04:00:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 04:00:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 04:00:15 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 04:00:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jo2lTtfqNYy4hFkFfw9G2oDLSwcb2xEoBBAkn7GeiZ0fFcyYDYBoy90dFJ8maulCWPJVl9oZbyb2x+UMTsofOJhFSOf3bYM6+eLraWQXDiHTlp+eoot5dxtCspEa9SH/l/NtILHI1AlO+6wwOzgyrvodl4BgVV3DJS7eSFrLf9/KGg83PSjPcPX80PiXyq2tiJHflKceVwRO+r1q1ScVN3QP0qurJeSeImnMgbitGIkRxiKVajN+N4DFH5ZeUI7JZwjAvbdhpxZV5AIUU9KbJwYTbXOp6M9DBPunGpSJalLZbOr6iq/x+q7pRQqXAjvcK0KVI6g6bo8nQyhXSWDLyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F8Z1PeDLk5SfRNduJ+uStYLWNZunBZbdxWYbdc18fRE=;
 b=Zlm1s6htgbntEy1cntrlimvZ+4qMt7BWlDkJjUqcAx/r9FU6tAXOQ0j31cxIfoBkAxVJFwJXVi11a2cd38oEthpGEAO4d+lJqWOT+CqHIUZlx0RLlEgbwku9RMET415kyoqgxnMn3/nWU2bfJZhEwN5xgHUp0SooDBpK/z9Ju/4v4UFAzkLcdkqakJq7whqz5mVJ6QDB0fAmVjAeHuASDhrlp00/zYeJg2XBcbe6gtLuFzDkJTbvbW779BS2Ss77pLYj5S+HFx1e9v9TcQeqKqoO+gwbMHnpCVrewIx03eGnQ636NDgpL74NTxXaZ4R4fE++Q0id7PhltOo0aBNeuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB8245.namprd11.prod.outlook.com (2603:10b6:208:448::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.27; Mon, 6 Mar 2023 12:00:12 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%5]) with mapi id 15.20.6156.027; Mon, 6 Mar 2023
 12:00:11 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v10 3/6] i915/hdcp: HDCP2.x Refactoring to agnostic hdcp
Thread-Index: AQHZNhzeUsJovxS2okKOjhGKMy/bma7t1FfA
Date: Mon, 6 Mar 2023 12:00:11 +0000
Message-ID: <DM4PR11MB6360CB4985D50D0C786FCAF7F4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230201090806.3008619-1-suraj.kandpal@intel.com>
 <20230201090806.3008619-4-suraj.kandpal@intel.com>
In-Reply-To: <20230201090806.3008619-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB8245:EE_
x-ms-office365-filtering-correlation-id: d684044e-68ea-4ce0-7c73-08db1e3a56b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TtsEbOZjjYrKqkvWGq+PEIkHJNi47LNAg7boBM2kp/Clyvul+f3a92PHicWlOrnNTvXsUpPChwTMxrEXIWnR1SBLZbh5MfCDLjhKREyIPBWlA81RDBak1HHLr5cqc9U6TvBdEWJCNkkn+liGgwYJ2RaSCZXFXUU1tyZW5yJE4Mc3H31M/JfWnXImmBbAHfNeC7bHkElWNBKJYQUMGNLIHDGZ07rOcG97bpnojUHFN21ScOn06F7NsjFgQVnnogzjR0tal17DFppFOQw6db/RcMA439YhoLUOKrRZ/lI/nX8ZVT07GVAXE91dCXuR7OxfhpepPhSxzHDeeSPBNnl9/YjwXHZFzwoAyMe+jnzpTiZ/LOuyAB2EN/UhhAmvFWDLVy18uDzqRKe/CGEeskVolje7dxgH3qSOrnHEYD70Wp2a7lQtQslq5DtI6UN9jW9op/+zlaQUnUaFDwBEqBinunQP8RZ8OcgUZTg0s198oTDNtW865VmxTdAJ9HhvMPgoDTTnxBw4lHQgyRktml7aVUizkqvWsfUlVhrPWzXbqMmsv6MSYM+1QheaZupBKNIO+20zHRMTkURPanBWAPu2equ27n+uxWCafmSKkXF63D3vJiUe/9rAXZNAdB1w85zq2m2CJBJHv461sQQA0xytHAro78NR+x1mdcccv6Zl70n9UnPqPr4t1Fl4Z5KI5NDg+N5KH1HuP9rOhK280irOkw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(376002)(136003)(346002)(366004)(451199018)(83380400001)(107886003)(122000001)(38100700002)(86362001)(5660300002)(71200400001)(82960400001)(8936002)(478600001)(33656002)(55016003)(38070700005)(2906002)(9686003)(186003)(53546011)(6506007)(26005)(8676002)(66446008)(64756008)(66556008)(7696005)(66476007)(66946007)(52536014)(76116006)(316002)(4326008)(54906003)(110136005)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?I8YoZz7OKdIq44lCPd7CduBI0Y6KfNdbS4IHqvaqYS4Ew9blZEdyBjoHHgO6?=
 =?us-ascii?Q?8OrUCO2j0QgUUalWcZYwN9JnaFZXDIJxhh1N8640YXt1HhrE3HAlqU/6+owP?=
 =?us-ascii?Q?wqSH9ztcs576oKGJ6fYfVDEh6vnPa/xvwxdBehMR856BiHe04nkmpuZ22oJN?=
 =?us-ascii?Q?NVsa0/dGWZG4zz+OUbsoqr80VayRM1eN3uOiEtUOI9nPyX7h9k91j7oKHBxh?=
 =?us-ascii?Q?a+ySNOe+2KR3bAz3XsT3YGYVaMpGG1hUWmAjkfo4swF5BLdNfi1b+JMX+FGC?=
 =?us-ascii?Q?/QdnklA649wTG4uR3t4Wtq9R2iDnuqHeqjg2QKqHIUZJEWXnLHyQTgwkDhw1?=
 =?us-ascii?Q?BaU/YUgqbn6hcTDsb7fYy+rJ+Vgm9aRrhZGstyZYVHR30CuXoX1mjKabh305?=
 =?us-ascii?Q?EEP3jPORe3WxceBTPZ/+NEuHnBtJsSkRCCRDdM0RHT7av/6Pr+zg0BcmvJGE?=
 =?us-ascii?Q?xFZ+/3m0ObLUZMdU6+4TzGuduq4DIlbq7RfZKSdp2t/71KxulmNjvGHt+o/Q?=
 =?us-ascii?Q?YyB7KovHPYLNM1N+Vk+7XOvpXqpUGgDkOi1sfAlHyjjdjLWU+RGttf+sWt4x?=
 =?us-ascii?Q?tX6iX4HvxWXEtmaPMydX62c6xy8PZ6B5Rj3u3QUoh1OSiFHM8a4KqnmQP0JG?=
 =?us-ascii?Q?1JytWn5Ro8CT9yFi8335jn9XjWMTd47Byov4nhv/lHuW2kjXj+MYS1rEM4Ld?=
 =?us-ascii?Q?dWBNe9mcIEGMkc1liy3PJRYE84Uk8BuO1GQt1tzUlh3bJeOHIJKtP191lIcI?=
 =?us-ascii?Q?UVjQxR/WtQ8Rm3la/YE5tHXMxXIsOUrCicVGgijYh3cLKynn7OUBV7aKFjWz?=
 =?us-ascii?Q?cE0ui8cEKAmqFqTlK4a+TdKvCQu7e/eNyf270NOA4v8LDrjzRzVaLd7xakuE?=
 =?us-ascii?Q?gLKJi7A4peQD2724VFRBzUbxI3lQ8aboynhuzLvPbNroLvlhX+gNJGF5W3+6?=
 =?us-ascii?Q?kc/a7Z6Av6VJaDiN4wpsu9AZMbTU0gg+t2q2HCZ7JKux6+++5sz73Fz+0Xtz?=
 =?us-ascii?Q?f3kvHDZ//rrb3j3oQuhgmAxjkmj7cUPj5+GLYE+ZPD9KGoybUsfYOxL2Be2e?=
 =?us-ascii?Q?bVsBcvCTaFDE2XiJfJHmPYrHoD7fMpzKLrjKEH3fUfhKRwU93HNAQPcV61XL?=
 =?us-ascii?Q?qTd1MFnkEeYLVKq4mqRfBMGbx+WojvHm+EULK5wyDyy3K30YcawNFg0oBPcH?=
 =?us-ascii?Q?DhNazJtYUn1GB+3naYfs5Bup/KRZIo3VtNl9CjQ9y48RHH4g69DPjMdrABUx?=
 =?us-ascii?Q?k0Xi0MqHruaC7kLKsQ1boO/x8zaRP/WT70h364AayXLMS7i8rTftAH678bgO?=
 =?us-ascii?Q?QPYJkgJo6kTxcpl9c+ezQGUOHWdRMHBKp5f9eyE8O0uR5OUKlIjSnDSNGp8W?=
 =?us-ascii?Q?0CHzP/5SKgYziKwmmOkhWekEBgNWkbsmAvasi5xMANmpswJgz4oMZGgUiKBG?=
 =?us-ascii?Q?LLNI6FCwhS4qoXOwpa9zvrrcj2qDoYzdvtDUCvC0zOA6afmKiMTVxXkMVaNr?=
 =?us-ascii?Q?G+fxtDra1kou5+1xuPM7BR5mN0Ig6zW+fT+XMx7XlEHguMpQpbseG2JZA4sX?=
 =?us-ascii?Q?fl7HA33/M0pV1cJUpRVuF+CGAoCCMV39X1oQflWY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d684044e-68ea-4ce0-7c73-08db1e3a56b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 12:00:11.4193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RwVBtywUanJrYl2M0M6Q3PeiKcfkrYUyI8MrmUNT4N33G6uBROMatDg4d19srTgXjxO6nP6osO/CVxVuYKouqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8245
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 3/6] i915/hdcp: HDCP2.x Refactoring to
 agnostic hdcp
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
> Subject: [PATCH v10 3/6] i915/hdcp: HDCP2.x Refactoring to agnostic hdcp

Prefix drm.

> As now we have more then one type of content protection secrity firmware.=
 Let

Typo in security

> change the i915_hdcp_interface.h header naming convention to suit generic=
 f/w
> type.
> %s/MEI_/HDCP_
> %s/mei_dev/hdcp_dev
>=20
> As interface to CP FW can be either a non i915 component or
> i915 intergral component, change structure name Accordingly.
> %s/i915_hdcp_comp_master/i915_hdcp_master
> %s/i915_hdcp_component_ops/i915_hdcp_ops

Description seems to be off from the changes in the patch. Please fix.

> --v3
> -Changing names to drop cp_fw to make naming more agnostic[Jani]
>=20
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h | 1 +
>  drivers/gpu/drm/i915/display/intel_hdcp.c         | 4 ++--
>  2 files changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 8e7a68339876..139100fe2383 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -15,6 +15,7 @@
>=20
>  #include <drm/drm_connector.h>
>  #include <drm/drm_modeset_lock.h>
> +#include <drm/i915_hdcp_interface.h>

This change doesn't seem to affect the changes below. Please move this
to the right patch.

>=20
>  #include "intel_cdclk.h"
>  #include "intel_display_limits.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 262c76f21801..0d6aed1eb171 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1409,7 +1409,7 @@ static int hdcp2_authenticate_port(struct intel_con=
nector
> *connector)
>  	return ret;
>  }
>=20
> -static int hdcp2_close_mei_session(struct intel_connector *connector)
> +static int hdcp2_close_session(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev); @@ =
-
> 1433,7 +1433,7 @@ static int hdcp2_close_mei_session(struct intel_connect=
or
> *connector)
>=20
>  static int hdcp2_deauthenticate_port(struct intel_connector *connector) =
 {
> -	return hdcp2_close_mei_session(connector);
> +	return hdcp2_close_session(connector);
>  }
>=20
>  /* Authentication flow starts from here */
> --
> 2.25.1


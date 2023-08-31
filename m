Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0225E78E573
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 06:36:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFC610E665;
	Thu, 31 Aug 2023 04:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1CCB10E665
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 04:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693456588; x=1724992588;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Bwh3xGviGBwNFPNhkE0/U8YBp/MQmRY3IZKk1SZkfbE=;
 b=jJlwc4ZlP0rCmIGP/JIGFCfV+BcCVLb10BobhEkd3K1cQmQg9IGAt8PZ
 FLOoo9cFiwYq2uKgVdXsdxHofHPQnz4G/WwPHdSyiSJCPZe0w4+duj+eG
 E1Tdl4bz0BUxDnIPgVVgtKgzU12m8JAlyVdjP5KYIV4ZJcXCdde6XEouT
 tfb89vXbrHoFC5IzAPbL7YJIatNPY2D1px3KBJJ0z+m73pcYUvQMMvqcN
 +rO0oXcO2sxZSpnGChLV4YBuqj3tnVhrO8PY6om4bKCYowbiAvVPkrQuM
 5QAc24ywguviU93ipQtE+atpz3uUgtWIlJbNRfL+DUtuLbbkPliCotUmE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="366009909"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="366009909"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 21:36:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="882986171"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 30 Aug 2023 21:36:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 21:36:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 21:36:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 21:36:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=guaPFJzGhxn89DgHZrR6etRHSlfK3cJIUNV6CeRd6J/xLXj+j4AoUFG23EbjnxvXkQxjxPuMs514KWbIlz644rjIciHNNnvuJn2e7cpUftXV8wpyQp0lIFEBt5cMe/I5zPisUXb0a3+jXPWcZmbY+zAk1k7S9mjZbIHaeeiXGtMKe1WHEJRgasGMhJz298yXOzXQtSxYNdKS96DxLj3TOQ5/d2Fw0/AtGkA9eoX9gLSTMJy0QHpvo0EkgSFQn85cfbBW728ZaNcLgmSA53pLQvL7rwsR0OE7b4p9+qIDGQN3Sivqs+ntWAr8i+WwTQF3pi0xawStI41gtkBK6JcaqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Mx4MTBClZxe/R15CEP48OG2AW6ThHSxAl7n+rL9Kgo=;
 b=ATIbmg6B3dqB+rX93k4NYxEjjPBZpQirPhMPC8QCnTynuVt4GYEWVd321vG1hYJDyk4pwQO1xkRlkt+PPeTPT51slOPb7dsiauXtfa6km1+7Gb3jfwDosYc/DQgxcH6l/LrzgboW4w2fBmVAdwS21KAFztUGKX1xG//Nkv089c9semqJqoLCH/BoFWgQ/hej3V4+Vqb3wm4UKpqGmwV9YlQZq3fIkuEQ1TOUlPNx2aNj2Css3jabV2SDgDDJzravnn1bZ5WyoFtnlwhevSMjOUY2S2lRa4k0HniPHbSv6Fz4oJR2ehyhra9wuLV1gqVay+NCNsSDxR3YQICWbU2FPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.20; Thu, 31 Aug 2023 04:36:24 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 04:36:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/hdcp: Use correct aux for capability check
 scenario
Thread-Index: AQHZ2xTI4KXjUpiH0U+t4mMoWhGmTbAD0yow
Date: Thu, 31 Aug 2023 04:36:24 +0000
Message-ID: <DM4PR11MB6360C42261023666D25B0F41F4E5A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230830073437.666263-1-suraj.kandpal@intel.com>
 <20230830073437.666263-3-suraj.kandpal@intel.com>
In-Reply-To: <20230830073437.666263-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_
x-ms-office365-filtering-correlation-id: acae59d4-59f2-4f4a-5c4c-08dba9dbd53e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NtQHjnGHzkeB4kEZFGQwf83vzxE+lviZbc9iMu1jw8LE67xBzwwtc3ESaQCHx/D0G/1mGrkZRU4jPeuBjPxbC+R8P3IZxh9465GZk36PCtCMC6471AUrvRv0FUqyhufZUaLYLAcI40TG5x4P+ucn3nqoqB3ee7qcYnfwaOPW3HPLtM5oDJ/9vjn9WnnbVaB8q6eUwoikUgIK8SoRQZDrIFHWiBcPAG1u7IkFCT1lBDi2qCnr6pmkggR6rV9cTIWCCqIV4JfIQtYLCIuaGxcFNzyLdWvMLFh2I7DJ0tIllj93Uq+ffibxrVgo+i82rzHioaBUnAIRVFI/OGTJJJl2e9x7bnomm84EwHimtzOk8NmsgOGcrPV1Hn5rwR8KVAo31ByjFdP5GaXfMg2gQyJjjJMPtaU1P40f7Zlms+9bSBWO2uYiB2qhr/4DAZK4Nl/SgffubtH1Jm67SOQWh2z/hc8u2mT3LZwCEjPfGPEGpX38CYmDNzMWZTZXF85NQyKHrtEQOgTIL0LJ+D1uQZsL5/KZsclPQi79kBp1oNkBtprvQaC32Nb2DSqpNKc66LHRC8amjo9GOQObiliePz/AVki9Uq9IUmPjBuRCXAQ+upo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(366004)(376002)(346002)(1800799009)(186009)(451199024)(55016003)(64756008)(66946007)(54906003)(82960400001)(66476007)(66556008)(66446008)(316002)(2906002)(478600001)(38070700005)(38100700002)(122000001)(110136005)(76116006)(41300700001)(8936002)(86362001)(5660300002)(8676002)(4326008)(52536014)(83380400001)(7696005)(9686003)(71200400001)(6506007)(53546011)(26005)(107886003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VVNTvsf/yrkDmsrOvs4wnYkhsjD5ZxId9nDpqlcY4rFZvuZ3Lu0LHU+L+P8D?=
 =?us-ascii?Q?fhxUrdiMXrQOIR5y6yU2hJBvXNmSlVxmGlvy1IwHmwBA67L1tB3QuPX/Bfdi?=
 =?us-ascii?Q?4Ch8Y4YaxQgSmKWPNDddMgvt2zkpGnLTyZZCd8qHxSULyt9nwXHeb5qFH2Um?=
 =?us-ascii?Q?AZZzjP9vUR8mE7dSvfFlLhJhsWPraBCknZ3SnSEQgnFZSCuxeWv/q7N3Rann?=
 =?us-ascii?Q?rznZwOX7zuj9KLvQ5wazG8B/u0YI7UmkR2rOaqUaxthKaBaw5Ny7pYjsZoqN?=
 =?us-ascii?Q?FrfEMancCBZyK4Y117SMgUTfvTkjz1PPPjUmT8MJZJ0xzSMqt2dCYyow+3ok?=
 =?us-ascii?Q?JJ6E+aINlAqRGI5rLnOlBNKIduKBJpnyMOdKKTLQ8zjyEDdlEeMj3UJxAzA7?=
 =?us-ascii?Q?7shGsBliMEiDi3exbWXQJrXf58w20KzEYP6hwdxjxkR+gsusMDQp7M/DsMZA?=
 =?us-ascii?Q?bSo29dPCTr7lxR/UxAjxNzBgs/p6/a7MVyf2yswjh0e0SxY/c1PRz708Yr2t?=
 =?us-ascii?Q?rZB9uMF2DjDhgwC98SWIjVzT9PnAhH/BqNUpiMnWVWoc5zg1HvxQYk2V5dT/?=
 =?us-ascii?Q?7svDTZnkdvN4UU2Gzp9+WTSg0xxgw46iC2zW+0pqev/bKHKhGamRqHI7AB02?=
 =?us-ascii?Q?QqTXtmjg5rRpZWjBK521a5YZHSiG1F9y4wwb7qM66MC/ibIdq4ejFPbyexCA?=
 =?us-ascii?Q?00EAcmPvJMkRlMtiv/QxdfdWN0peE2W8PceDJEKTSl0D2N+zt3STe+wosv2V?=
 =?us-ascii?Q?2q8kW7T7VjtUKPkunRQy9QvyuaK7g9Bs4ZL+fozz6XiS10rRTb41shCG0/t2?=
 =?us-ascii?Q?7oMUXnTOQ+7HTAuu7FduhXGEcqiNGg5R4iLYnwg87FIkT4IUaW8KOG1yadqz?=
 =?us-ascii?Q?VrQllW376bdxLNv01M1ELW+TWGkDv3RGj6OxpBj5WfdDXsy2awuVH7gnBfrL?=
 =?us-ascii?Q?U4H5LMeewZghy9iIKzwPz+ybp+1vFm0s0nq07XnRYIr14DDzMrQZjJeM9hMe?=
 =?us-ascii?Q?/vpdZtl3anYg9TYjabssSQoajusLVBUZLS3s79a6wVymRV6PyyUaFJyzffDh?=
 =?us-ascii?Q?pByKNd36+Gsrv4TI5DRI2xCcZjv20vRy2q7I2cmFpx6w+r0mhl37hLY//i6m?=
 =?us-ascii?Q?36ENGKmXUyqhjQ7E0NK59mGpHCPd202Rh8+zJjQN0gL9PFb3e1+xFqU+W6ay?=
 =?us-ascii?Q?JXRc4EUZ39507ESMPNiWBgPnky3Kv1nJ5JAz8pFnzTTYMlvhSKE14QFFS8Jb?=
 =?us-ascii?Q?GNsOEfb8f0DgRe5dPgEY0Isj4O6IKaa1UeqWtx0k7QY9AfK8A9UfRd5HtZId?=
 =?us-ascii?Q?XoG1uos9FVjmBf0scEWPM96/LA3ejRyyGRUhVQPOHhAY5SdWdaTMAbL7PPeg?=
 =?us-ascii?Q?u9tDA8wNA8+uVf84sDk9Wm2O1oRkl+24aCtBDBximkcRcTdflOWWe4xHI9Oj?=
 =?us-ascii?Q?r9jixQTzvxOzR1s0/nCNKT3Vkac+MT2sC/sunr3pd2MyWskHWcb6StGlkXpW?=
 =?us-ascii?Q?nbCiKedDfM8HuCWgX3mFaVg+Eryg841LyWbo0+S68lpT7U+QWK8OoeufBvR4?=
 =?us-ascii?Q?Gwsr606JWXR5nb46cCywWkw6zz4x0vWV1GmXWuA6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acae59d4-59f2-4f4a-5c4c-08dba9dbd53e
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2023 04:36:24.3630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WI00kU0R2Tbh7XEkNvyiSvRIIhRrLZ5U0jtVMqbePN0yQ0iUdO1LBCWZOHtfOK2k/+MfiXirQ+9IC7QcCExJeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Use correct aux for
 capability check scenario
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
> Subject: [PATCH 2/2] drm/i915/hdcp: Use correct aux for capability check =
scenario
>=20
> Send the correct aux rather than the one derived from intel_digital_port =
so that the
> HDCP version of both monitors are fetched rather than just the primary on=
e's

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 3b579887bb99..3a595cd433d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -651,12 +651,14 @@ static
>  int intel_dp_hdcp2_capable(struct intel_connector *connector,
>  			   bool *capable)
>  {
> -	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
> +	struct drm_dp_aux *aux;
>  	u8 rx_caps[3];
>  	int ret;
>=20
> +	aux =3D intel_dp_hdcp_get_aux(connector);
> +
>  	*capable =3D false;
> -	ret =3D drm_dp_dpcd_read(&dig_port->dp.aux,
> +	ret =3D drm_dp_dpcd_read(aux,
>  			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
>  			       rx_caps, HDCP_2_2_RXCAPS_LEN);
>  	if (ret !=3D HDCP_2_2_RXCAPS_LEN)
> --
> 2.25.1


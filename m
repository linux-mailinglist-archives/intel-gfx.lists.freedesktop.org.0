Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 655C978B992
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 22:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3284110E34C;
	Mon, 28 Aug 2023 20:30:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3036F10E34C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 20:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693254623; x=1724790623;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=b6ecYZ0Mm1LjC1+aFgk5gkDPwYTxGd+svh4TPldz5lQ=;
 b=NB6+L4cEKJHIQlJeaMSgdumf/EVwnCzbX7F8UDVCBR3IYuQY09oYjN0f
 Bi9tN3RrjVq8XRHAW1mnMwYb6p4X7m+WN1pSvLXYbd5/7qW7mgQosx/H/
 ZiW6sNBXJ/d0EOHK4dfPqd3CjOhUb+HHYMCAxkdEPuVfbEAnLdsrykIL3
 /0Z7DLtbjisiBpRrp4uJ1qSez7ffgf/CSr7nv179AW12olYos03O9MD23
 XLrH7X84hZDd4cqljc4a8DeJdprH6FaBtdzZdOQ1S2bZ7unbC1iBgeTjM
 21TRAYb/yUItB+gSi5P0r2QQpPDs/8vV01Pl8RmrV05xlIW6ugzB71rN2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="372609626"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="372609626"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 13:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="773387575"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="773387575"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 28 Aug 2023 13:30:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 13:30:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 13:30:21 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 13:30:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bQUQxIP2mLoTDhlwdLtyqk5D3jgEEdhoJYxq3zHo4TCN/VOGb5nOdPKMNc5twcXIBHaDOCY76O4AIVTP7aMtorWVWB0mwPXx/IkfrgqHhmbTMzenVkh6mBgkSvjkIdQo3akO9mMxtpOMqxKOGQWRiKDBaXNcp+5cK/XZDA34QSb3jku6z31R30jKeEddUorOqPdDdAhphK9YtoDVTdXseoWyk/KeJ3I0xdM1pUIYC72xG2I8RspnBpLZzh0rOrKOXAd7q5X9C1/7hNQf6b6pdPWZmkrhLKF1oidxkYCkj7UQk9CwbfUyavViZd5mOjRJqYmROWQIuKTzDs4g7GRhnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RWjCNHk/pbEzXF78/W6maTY0OKS3z65Uo5tqhNy36oQ=;
 b=Ki5PquCbz/KrbQVf/ECH988FccyS8c5Zc5hAVZ4/aCfB3f9da0z81cCEiOAdUs03fsJjA2m3MIBRpcH8h9K9klBEealyMnH2eSotFn9IbNvfMGovUbQhqC9+HaYHAFIvLqpsXQLK4q32y7sMv/AUi6eBk/C/xLDvIv/XFhCNTVsU7J01xHLoQz6s/w7MHODU1XUAp/V6XKOUYQ2lioLGY0igaYz4PXcyeD6IG+77BHMic/i5NiJUS2D/yUiPPK2grBeHnM8FJvMH7YfrX7cMYK5udgkbEZv2lTHO7J3OvnesjEoG0dTV2IPfPcvPoCpOPuvtlIim8oR2w9L6dwiiqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SJ0PR11MB5197.namprd11.prod.outlook.com (2603:10b6:a03:2d1::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 20:30:19 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::8934:bc24:bf8a:2316]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::8934:bc24:bf8a:2316%3]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 20:30:19 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus
 timeout threshold
Thread-Index: AQHZ2dYUrU0RisvnS0CLwvjYWd58YK///sjA
Date: Mon, 28 Aug 2023 20:30:19 +0000
Message-ID: <DM4PR11MB597193DFDCC38D7E92C9CFC187E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230828173405.59812-1-gustavo.sousa@intel.com>
In-Reply-To: <20230828173405.59812-1-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SJ0PR11MB5197:EE_
x-ms-office365-filtering-correlation-id: 15f55a9b-25b3-4765-9024-08dba805989e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YBQeDAHO/S0FMJUCwTIiiag5h5kHHFr1l+sIItOwcgbg4tEB49t7fpxHql+eqwSH2VUUxaESBo69gkh6czabIUCMQMM8LeIzD0edHTex6Tg5kwztowbZfVVUZKQfenCigbSODiy4J/Ki+wDJ5nXvuJwEFDiwkFSCGdZ6DY7q2w+Ng/hgQ/v7Ez5gS1zI/QuNVD0AxoT4uqN0WT5tdtCvXEqZ6OeB196e+RfC0SpDZg8eKbhluB2D1jAtL+Mtvyq35IyHaVF4HNW1bfwqPio18AMNE2ogIvgNcTRsYIAV12lAIv1lJmoikb2EEGroYTI0q4OdHjy8G5Y79qUhbevWkn/L1hOzMcrkXh07SuOVEvgkamgP6Pj3zjYzAx6yuDReGqJlkqfNUCEDXu3mhZwNgSJ0puTDX3aJDcQiwia1xELwZLv6j+FhtqoXKeoXAtpHNCKKCbmaDd5li1mKRGaaMxj9T4Ci/BFJ9P0rKEcHZhgf32jaYjva2695ua5MNdekv3RcL5LBVwvH+kE9+cJKypewghCauqz+bh4eERtQ7RuM9RQPpjG3hOGVgwBI05C0kwRQd9yy/CDs4t88bIDcUibzY1vugWS1JUSQ7vReChSkCF93jWxtIOzE4Rqd6ybP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(136003)(346002)(39860400002)(1800799009)(186009)(451199024)(478600001)(83380400001)(122000001)(26005)(9686003)(7696005)(110136005)(53546011)(6506007)(71200400001)(55016003)(86362001)(33656002)(82960400001)(2906002)(52536014)(316002)(38100700002)(66476007)(8676002)(38070700005)(5660300002)(64756008)(66446008)(76116006)(41300700001)(66946007)(8936002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?10iwumg3Fv9FTAI3K06C/mlNLuKD/+9W5rP5cxgSQb6w3OzYcnYu5zLT2jFn?=
 =?us-ascii?Q?mpJ6teNVzROSRQzUnsXtsecVoMoIxeMUaEepsVFc1ZcN7SJWvDjfq27ymyi1?=
 =?us-ascii?Q?Cb4e3OSyGUXOm/90oU/RHFtL9z8ie16MYdLYhrUIcBU3t/72yp1JIW8xq4Ly?=
 =?us-ascii?Q?wBYibkajIaThxghC10ZuvEY+7TUN/ulqLDznYyiynXBkuaZNsO0Eb3kUUOPJ?=
 =?us-ascii?Q?oCCQyuIi9nS64OJe/Onzk+vs3KBzv1FW9p8yCAtbXsU5jx3CKZtocyZlksVZ?=
 =?us-ascii?Q?WxjNYJQTHYXOSR6avaz2Xr9iADd9eG0HIKy6KJKDhFWhDc4Y82vrg0lxmNlE?=
 =?us-ascii?Q?4g01vBqB1H2nAHLkvAt0SokLd2tndvyqLoZNOOD3ndDRtEFFv/9apxUU/KrI?=
 =?us-ascii?Q?BwHAUTlGOZZ483cqAmQWC1jFtOgRIj8PNuJRVLxSjmGbGlTWtyJuqxyDUr84?=
 =?us-ascii?Q?F2AdZnEp04PlfxJmgj9yfEGeb/VmrK6FCnoXsvoNRBED/htsykpdniacmyZo?=
 =?us-ascii?Q?7dDN+Sb8f5IW0JFB2bUYn+1CK3gCBQvbNmURuOI3UrHfbILkpnin+Lx5EuUL?=
 =?us-ascii?Q?9sSq769yAkTMoUFevPK93oIbLYnElYUniriJwjUhPBnXxur28Trb/qdL1fFx?=
 =?us-ascii?Q?hVw/a0s+Mru12U+yrx+QmEcBQLkSLlNI2tuQCqfv32Okcagm5C/UqXsU1UFY?=
 =?us-ascii?Q?tSaXbRNnhJl0muAqYGley+YvtmsNFILHF0goola1BeBDx++QdXGVMglB6JQN?=
 =?us-ascii?Q?cjZ2vJDGkE7BA6wRBS1QQUe75cJZ88FUeRgsWGD7BA9l4/2CPbWgW0A9oV8n?=
 =?us-ascii?Q?LqH1FDV0MNbohU1J1O9LQ6hroAB5YkezWNyaoF6VCQuGbm7Azs63386+8sAZ?=
 =?us-ascii?Q?b8btn4MqAZ/Qa+3ugl3FFM6AKDMs0+S/Xl3Te1IYkeHeQLGzfzxpD7Bi4RSh?=
 =?us-ascii?Q?m1KCd2Em4iM0Y2VU1jYMDOdo7iK41oEBEtjm3uzc2WVNsIRMzQJ7FdjI4TFM?=
 =?us-ascii?Q?jea2HpuEKeoF3C82FSqOZLeJK9RwDoZ9GbeHoWSRpF+6Z7ioDrbKQ0Bva3tQ?=
 =?us-ascii?Q?w6VUsPyModGs0mnKfk1ytQj3WAdN//DxYIIBH5cz+2yXFwZPWSUs1RhiOqJ2?=
 =?us-ascii?Q?ViXH0xZHPe3g+3pTyhpuEjyaBzKoOJtwD2ShTQdNkUhjAzWjzU+HZO2f6yie?=
 =?us-ascii?Q?ie/8AvvbYjFNdHN9xQ8FUIN17Z+pefIwMmZnfMGrtbo6ra7rZD6qAdPFi0TN?=
 =?us-ascii?Q?mvaMQKLDv0+kPuSXOqGVQQIHC+nuXtrDX0kmcZ2nEYC1p/8Mxrvs+QsPy46L?=
 =?us-ascii?Q?udL6p6Up2IkzzSqCTizrjEu4/XPigevEl8Ps9iBmLAXZ/m4tt/XLK3wJdomB?=
 =?us-ascii?Q?8hgI0HY9AEbEqRjLnVIgADj7Qx/SYE7/Zk7uKgAsNZrrgPDyIoMRNaLAq6bV?=
 =?us-ascii?Q?nJuRqXxjP1YevnNIBnrKIP/WVt6IIqy7rEICwlw8V6OijIPsgsbCBDNJbHnT?=
 =?us-ascii?Q?TMjZ71XKnlw3IJaskPRANZTGEBTPVbcvBL6NIjEMcb2Z45xdbaqN7bKa0qOc?=
 =?us-ascii?Q?rB+5fnby6WBZa6Kw2uyOHmKJzHsBbx0yeg5XJ49uxB9iXOl0JB8aEyDdT6Zv?=
 =?us-ascii?Q?Ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15f55a9b-25b3-4765-9024-08dba805989e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 20:30:19.1406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wt/GuxYb3XG58uUCzD45NUdmveGqggHrL6F3JCTNT38BfNpK4IuaNwM8CYb+OLv4+HWNyAWU5T4B9Sw06d9krtSbCVbMETGbC1ajDU4L+JA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5197
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus
 timeout threshold
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

Hi Gustavo,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Gu=
stavo
> Sousa
> Sent: Monday, August 28, 2023 10:34 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus time=
out
> threshold
>=20
> We have experienced timeout issues when accessing C20 SRAM registers.
This wording is misleading. It seems to imply that we directly access SRAM
registers via msg bus but the reads/writes go through intermediate register=
s
and it is this read/write that is failing. Adding extra clarity here would =
be helpful.
=20
> Experimentation showed that bumping the message bus timer threshold
> helped on getting display Type-C connection on the C20 PHY to work.
>=20
> While the timeout is still under investigation with the HW team, having
> logic to allow forward progress (with the proper warnings) seems useful.
> Thus, let's bump the threshold when a timeout is detected.
>=20
> The maximum value of 0x200 pclk cycles was somewhat arbitrary - 2x the
> default value. That value was successfully tested on real hardware that
> was displaying timeouts otherwise.=20
>=20
> BSpec: 65156
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 41 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 12 ++++++
>  2 files changed, 53 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index dd489b50ad60..55d2333032e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -5,6 +5,7 @@
>=20
>  #include <linux/log2.h>
>  #include <linux/math64.h>
> +#include <linux/minmax.h>
>  #include "i915_reg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
> @@ -29,6 +30,8 @@
>  #define INTEL_CX0_LANE1		BIT(1)
>  #define INTEL_CX0_BOTH_LANES	(INTEL_CX0_LANE1 |
> INTEL_CX0_LANE0)
>=20
> +#define INTEL_CX0_MSGBUS_TIMER_VAL_MAX	0x200
> +
>  bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
>  {
>  	if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0) && phy < PHY_C)
> @@ -119,6 +122,43 @@ static void intel_cx0_bus_reset(struct drm_i915_priv=
ate
> *i915, enum port port, i
>  	intel_clear_response_ready_flag(i915, port, lane);
>  }
>=20
> +/*
> + * Check if there was a timeout detected by the hardware in the message =
bus
> + * and bump the threshold if so.
> + */
> +static void intel_cx0_bus_check_and_bump_timer(struct drm_i915_private
> *i915,
> +					       enum port port, int lane)
> +{
> +	enum phy phy =3D intel_port_to_phy(i915, port);
> +	i915_reg_t reg;
> +	u32 val;
> +	u32 timer_val;
> +
> +	reg =3D XELPDP_PORT_MSGBUS_TIMER(port, lane);
> +	val =3D intel_de_read(i915, reg);
> +
> +	if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
> +		drm_warn(&i915->drm,
> +			 "PHY %c lane %d: hardware did not detect a
> timeout\n",
> +			 phy_name(phy), lane);
> +		return;
> +	}
> +
> +	timer_val =3D
> REG_FIELD_GET(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val);
> +
> +	if (timer_val =3D=3D INTEL_CX0_MSGBUS_TIMER_VAL_MAX)
> +		return;
> +
> +	timer_val =3D min(2 * timer_val,
> (u32)INTEL_CX0_MSGBUS_TIMER_VAL_MAX);
     ^ is this cast necessary?

> +	val &=3D ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
> +	val |=3D REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
> timer_val);
We do not use REG_FIELD_PREP in the function. Instead we use it in
register definition in intel_cx0_phy_regs.h.

Thanks,
Radhakrishna Sripada

> +
> +	drm_dbg_kms(&i915->drm,
> +		    "PHY %c lane %d: increasing msgbus timer threshold to
> %#x\n",
> +		    phy_name(phy), lane, timer_val);
> +	intel_de_write(i915, reg, val);
> +}
> +
>  static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum po=
rt port,
>  				  int command, int lane, u32 *val)
>  {
> @@ -132,6 +172,7 @@ static int intel_cx0_wait_for_ack(struct
> drm_i915_private *i915, enum port port,
>  					 XELPDP_MSGBUS_TIMEOUT_SLOW,
> val)) {
>  		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for
> message ACK. Status: 0x%x\n",
>  			    phy_name(phy), *val);
> +		intel_cx0_bus_check_and_bump_timer(i915, port, lane);
>  		intel_cx0_bus_reset(i915, port, lane);
>  		return -ETIMEDOUT;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index cb5d1be2ba19..17cc3385aabb 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -110,6 +110,18 @@
>  #define   CX0_P4PG_STATE_DISABLE			0xC
>  #define   CX0_P2_STATE_RESET				0x2
>=20
> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_A
> 	0x640d8
> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_B
> 	0x641d8
> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1		0x16f258
> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2		0x16f458
> +#define XELPDP_PORT_MSGBUS_TIMER(port, lane)
> 	_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +
> 	 _XELPDP_PORT_MSGBUS_TIMER_LN0_A, \
> +
> 	 _XELPDP_PORT_MSGBUS_TIMER_LN0_B, \
> +
> 	 _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1, \
> +
> 	 _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
> +#define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT		REG_BIT(31)
> +#define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK
> 	REG_GENMASK(23, 0)
> +
>  #define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
>  #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
>  #define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
> --
> 2.41.0


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9856ABFE6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 13:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F168810E363;
	Mon,  6 Mar 2023 12:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2542710E363
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 12:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678107120; x=1709643120;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LuAqvxNgkmltaUuSSeilNa6Pa7Wvz4UxXZccJOv7lfU=;
 b=ZFfZSSTMiQNvHK5eoJsxKQxWGSY1+MYdquNB5maKUNHBc/LyFqPUI9TW
 egdYhMbBrSbDaVekEK2x6sU42xRxkI2pyXSq1jGWRPFSH3BiDMsNfMWUS
 Zr+lDJjpbe9Akjf7hf+oJuUWzPNAZ0fUCuipgUi73lI6JBvBpG1vF6lSA
 Eqj7/kxcSBixi1oh8NvQhqbwQXMYLNcoklJIso4SpJUJBI7QXAnjimwZi
 jF0dab+HZwCzsjNHfHFpI6vdIkRm/zhMepS8hb7+zJZBW/MPlfVTkWtAH
 JcURTSXRLcCHhLUlD8nCzPa6Hs/kTw4qPlUQtofeIuCFhRzeQ44g89Fdt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="400365272"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="400365272"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 04:51:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="706424453"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="706424453"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 06 Mar 2023 04:51:59 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 04:51:59 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 04:51:59 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 04:51:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+d4+aFUWqZVcEjBbRK3r04+EimJRtkD4hp5s6e8daE0SBZCtzEKgY4PLSXfSEt5QCNakAtuUnpq3a27BQJFv5zTL6qt+NZIqAW1sBDM9CCze+2DFDMjiDkBYMi6l76c55R5lMX/7F6e7+t4ivMujpw0nUKpnhIOe3ItomgRsaYUl/a4OI5QHJVlNyWJ0ZwYNFPvuKuJHQZrkNb/3xj8uBubiAFOB7y1jpQHHMx7/rCwbJj8yVd6oQCaSdc1jRrhhyCYtZv0gLk4MhuqvlsHgG7z3nv6iYGJrYERVqaYPlgGRUiWM9M4zNX5SGtgmkeyLeOUD6mftJNq2pK94fQoYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5xN6FOdfYFOFF7Mh3XbGr7CYbY5g2dIBEuwe8A62D8o=;
 b=KB6Vj6p2HiCEHQ18mcIYpNT2OnWbjwEGeNa9eDiUtV8Gfp/4jxnvC2I+QGbmwidR75thwmsEXsy9GRumgsEgHqzCK4C8rSCLCiAQCsSZV6JMfEAMngIqSotJbAna5xXx6GVHs72PalBNTrglhKjqsl63S2t5feOy827jppWR4HK6NDLSQtJkiCA8BcDNOFAPNpmD0sc6+/+LREkaIWrrRtzIyTpOOCIIdXrQwlHnqMueTWNQ8K1rpT4Qh7Xz2eHSUs/4AhOob1YCwBJz3FnFAcBXb+KGK3pFsICr7KyNIYsN5ZRJxkeszOIXzqdR0H6H2ph2x9TzZuWgpz7SbLRtzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by PH0PR11MB5158.namprd11.prod.outlook.com (2603:10b6:510:3b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 12:51:56 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73%7]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 12:51:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v10 3/6] i915/hdcp: HDCP2.x Refactoring to agnostic hdcp
Thread-Index: AQHZNhzegzkIYxSE30+qSdNdrFt5S67t2i6AgAAOECA=
Date: Mon, 6 Mar 2023 12:51:55 +0000
Message-ID: <MWHPR11MB1741DC45E64E756A2214B490E3B69@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20230201090806.3008619-1-suraj.kandpal@intel.com>
 <20230201090806.3008619-4-suraj.kandpal@intel.com>
 <DM4PR11MB6360CB4985D50D0C786FCAF7F4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360CB4985D50D0C786FCAF7F4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|PH0PR11MB5158:EE_
x-ms-office365-filtering-correlation-id: 1792c8b5-7f76-4fa9-0a1f-08db1e419119
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hyMQleD+FIAPAeoFGPEcxcgYYhasn0Hye2VJYzdgEU05XHoaNWHB2eqVzaaueHnE21R+GCRCWJETBgLieunnITmjYZ5Y9kemK6yMirl9FCDIs77x59efbEsccoBNgCdJtNP250ZY6nBqurqS8IZiGb1MH1faITvEr1CkyUIWd2HG3NJYRB9R5H9OJQ2uDFrHuF/dVtE+xR0mvtu/CEF5QovwU+JEbck/z4efA+Jaur0fdHXdWUD78TugOjzSPIP98CxCVszsaJJV1z/BcRAbAsP5g0hfDNtl7XmzMRto0QqdT6Yf4Gt54yfrZDGKi4ctjGLLwKFgIuDJR2AJj7CURZjIyESIfpnj6DAt/V1n9WpLs/l+BZWbp6gYwaFKkM978EPFG0sZAUSHkfIgSr6eJdoYwl2+QQy8pXi6Lm2Cc/0nR1SrHGm/iRavNW5oEKaINKvj+h8t7YKtYnXKLKLBY8kZ1Pufj+yF1lJBpwf07oARqBpNp0WKObxXuoIw4YrzRz8s71KkDtUK7X7xTS94jTLqdnDMHEFw5ZHUBYXGpO9uA7y8evdePxjqLTcK8gO6FVFn/RMmOk5mw1RUn28CsjUAueXPmKh96CdmjBGfDvYkr+Je4hyvJ2tYrqTwsrgroD/KthKlSl2dYI4dGec520caxisnPwFvFX8UDADrKFutSnKHDrTKfXIUK0iL6Mm2vJvdMv5BqtFdSVHuotCVog==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(136003)(366004)(39860400002)(376002)(451199018)(82960400001)(107886003)(83380400001)(33656002)(478600001)(110136005)(54906003)(55016003)(122000001)(38070700005)(316002)(38100700002)(71200400001)(7696005)(6506007)(53546011)(26005)(186003)(9686003)(41300700001)(5660300002)(66476007)(2906002)(66946007)(76116006)(64756008)(52536014)(66446008)(8936002)(8676002)(66556008)(86362001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?imLtemOPoMphsfuS86WKizvkmRWaRyQTZsuBuK7ctj8ckrFZqNVgvYegELcU?=
 =?us-ascii?Q?Xzmy7LWKOxF6xg0buPDPwB8Lr4I9EXDpe2N353bKJ+P1BFBh9Dv2Ap04YIjp?=
 =?us-ascii?Q?5OLypqaj/tqRV59Mo9tDW9RNTMbWfQYwXV3/hwMbs/XPXPFcxxiWiMkOSP7o?=
 =?us-ascii?Q?kydhD4X5RVYV1v6rEOGeHkrexbPDuz+mReZxKw8VYIrzbAX1SavcWzsVOcSL?=
 =?us-ascii?Q?yw8ngO0UxSyxGmDCbJBy4yxoiIgoqnaXE/hAuw3ClWEZ9pEaq9I6hUm3wnOV?=
 =?us-ascii?Q?4FDU2d3hVHAL7Kaa7tH9vPglsgwBxgCYx5MiOvqEhllEwHrcTGW8uvE+XD/Y?=
 =?us-ascii?Q?TkrEuH5HqTyCKQ6MDEutuWFvMQTz8lO4t1QtiAUZB0vg5wjm3cSvgLqkt+8L?=
 =?us-ascii?Q?nCChVb4JiQUBkQhy5v6Zo4nz57kBn9Ajno5gwI+3bV6na2hAaAnwGdL2Fmkc?=
 =?us-ascii?Q?p/+vJ/9rB1k8iIkTu6IVzRxOt6Ir/5u2IcULMj7PdxI6BCJfmUx89KE2tImr?=
 =?us-ascii?Q?qS+hGMhK8ampuONxavomKcFnjR1WjwZMJSRTB4UM12qDHjd/jQ6uar5O4puh?=
 =?us-ascii?Q?8Q8U255AOQzGyzQzC1r4dlXkwDtAhnASJ30WjS4rdRHKS67wvKKRpInTGRcg?=
 =?us-ascii?Q?lkxXwTGgw1J/L9ZWtyF2zYlyEI13jzx+8IRhB7iCkzU4EBGGvAlPPY9A94QC?=
 =?us-ascii?Q?DBLR6CcqXaO8EDHxpXvxsO5DSZWv9SRI55BbthrwRux/KF/MIP8IMaA+q8zz?=
 =?us-ascii?Q?lM2E34RcUZX17FRiaS18hITV1wETRbjzwaIoVwvLXlY4rQ8ISTR++OdmC0IU?=
 =?us-ascii?Q?Z6YITtiGlKq8hfHgLVTev2zb338tN2bdQarOlqtVGOiUa3bYOfuXf154U+F6?=
 =?us-ascii?Q?qqTGlnhIttXczPD0frDHotf9vMscHadurN+qimZvBhwrZtCxJNEuVcIkEleO?=
 =?us-ascii?Q?lXbKRswwLpWAK5jTiRZJQqW6KW21roIcJMA2yVUzINA7XaZU+iYnO40XFfCz?=
 =?us-ascii?Q?gwQWk3MxxS2F6UI9ZxiefD6KZtixww3nNEfIxOdlrQYxFOGf3wWvAbibWKed?=
 =?us-ascii?Q?sjvY8aejCeMUTxHUygye6BiKwH1TZpdIK/VDwGq3PhTndx7RjPd9G80wjaGy?=
 =?us-ascii?Q?8GxHBf2hjxPFnsuokxNFQFeLNo5fksCyX8faLRHITk9ukw/mPnMoT4jEEnWU?=
 =?us-ascii?Q?hSwkrMhR+w153jynaNpCtmtWVSNRz0+8rmuPznu6gAOhawJNGq/+SrjQeY92?=
 =?us-ascii?Q?bvHoHZ824Raz+iWg4RApQT+GrVxe/L1Ez6Oxq7bNPeU5/V/SuhVrv3XXjnZ7?=
 =?us-ascii?Q?rescMlaNpZFVszjNipe/bWq+IlSlIKVZNgBB/hUrH3dfoqD2+HtkVosUgNiR?=
 =?us-ascii?Q?YWq5c5y/NzMVIh06eLX8t+y5bIqtaZ+31ZTYhA7ls+UeUWmw+yo5//ctKTCj?=
 =?us-ascii?Q?ZlGPph8X0L7YPEOMLZNeT3h3/kU9kLAgeRiNqYWLgHbAlwh3a+t3nHJcCsK1?=
 =?us-ascii?Q?mRjUhW4q5xJfkRP9qsKTB5X2oebsmILTL7rjx+NLrbmMH0jTWQ0f9vgM2puN?=
 =?us-ascii?Q?23q6zh0aAt9ebV88OIQ+S5a/O0Fcck6OktqUXac5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1792c8b5-7f76-4fa9-0a1f-08db1e419119
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 12:51:55.8945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wjIJG0rS0yq4m8fBB/7Hyt29yk7HCjt8VYHkeSkhVurwtgPiihUBN4vNHlkHpiGtKFbrkTqXGvJ4ZcCQiCOC6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5158
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

>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Wednesday, February 1, 2023 2:38 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>; Winkler, Tomas <tomas.winkler@intel.com>;
> > Vivi, Rodrigo <rodrigo.vivi@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> > Subject: [PATCH v10 3/6] i915/hdcp: HDCP2.x Refactoring to agnostic
> > hdcp
>=20
> Prefix drm.
>=20
Sure

> > As now we have more then one type of content protection secrity
> > firmware. Let
>=20
> Typo in security
>=20
Will fix
> > change the i915_hdcp_interface.h header naming convention to suit
> > generic f/w type.
> > %s/MEI_/HDCP_
> > %s/mei_dev/hdcp_dev
> >
> > As interface to CP FW can be either a non i915 component or
> > i915 intergral component, change structure name Accordingly.
> > %s/i915_hdcp_comp_master/i915_hdcp_master
> > %s/i915_hdcp_component_ops/i915_hdcp_ops
>=20
> Description seems to be off from the changes in the patch. Please fix.
>=20
> > --v3
> > -Changing names to drop cp_fw to make naming more agnostic[Jani]
> >
> > Cc: Tomas Winkler <tomas.winkler@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_core.h | 1 +
> >  drivers/gpu/drm/i915/display/intel_hdcp.c         | 4 ++--
> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> > b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 8e7a68339876..139100fe2383 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -15,6 +15,7 @@
> >
> >  #include <drm/drm_connector.h>
> >  #include <drm/drm_modeset_lock.h>
> > +#include <drm/i915_hdcp_interface.h>
>=20
> This change doesn't seem to affect the changes below. Please move this to
> the right patch.

Okay got it

Regards,
Suraj Kandpal
>=20
> >
> >  #include "intel_cdclk.h"
> >  #include "intel_display_limits.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 262c76f21801..0d6aed1eb171 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -1409,7 +1409,7 @@ static int hdcp2_authenticate_port(struct
> > intel_connector
> > *connector)
> >  	return ret;
> >  }
> >
> > -static int hdcp2_close_mei_session(struct intel_connector *connector)
> > +static int hdcp2_close_session(struct intel_connector *connector)
> >  {
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> @@
> > -
> > 1433,7 +1433,7 @@ static int hdcp2_close_mei_session(struct
> > intel_connector
> > *connector)
> >
> >  static int hdcp2_deauthenticate_port(struct intel_connector *connector=
)  {
> > -	return hdcp2_close_mei_session(connector);
> > +	return hdcp2_close_session(connector);
> >  }
> >
> >  /* Authentication flow starts from here */
> > --
> > 2.25.1


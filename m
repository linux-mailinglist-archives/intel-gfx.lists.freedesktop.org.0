Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4B16ABE5C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 12:38:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A074910E230;
	Mon,  6 Mar 2023 11:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47AD310E230
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 11:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678102726; x=1709638726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DKXxSYnlDSphMko9zNWBdeXuYTdrS4Wr9JifrllfA6E=;
 b=bk+Y9Mc5+zt7eGab9B+/KTbziPFpUgk7BnVKz6v/ihFE1ZpIRxMOJrhf
 2qIR0j/ZiH310BAWR67jOlE8ziekeHe8y9UIod5dfiXmDe+dLdU1qTo4i
 ZBvw9VkpQXoTe+A8BjfKlo5OR7as48idO1pE3TH6/bzt9yxOBrPRyb66p
 TcifOxSyS5NcIULMQo3Pj6cbRgQG1IXIjPyk01OYZdAhPYOPT8Qa7ASww
 BIajnVivxMVWC77TFXztC0B/mQvaGmfQbjsVlhWLVZk6KvNeZlTsYSxPg
 fSxWao/xl47isUGlnbFdXuGo56ZAikwt9QjfM3PAO+tg3Sak2UxiguJMj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="315190965"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="315190965"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 03:38:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="708620411"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="708620411"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 06 Mar 2023 03:38:45 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 03:38:44 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 03:38:44 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 03:38:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YI/pRj1OdfQu7+L/KBxhWEg74HkOikiQNKEKrcdV8MJPYl0gBxmNA5lvhXTYnFsWaF53WOMEuGnyY1usy9Q0wJUNXXftr12QvCydN6WTlI6MWdovUFA0l1n4k6B1kThsctbQscaYwTbIJ8ArdVz5B3E9ZISGi/0fgnlPTmXvuOfOFP0hazgvSODBE6RkOTUVQ4h4KEaQ8gf19v7MSHsA1yR/BN2HV0qxl/Hkb7jcxjLLXNIrmzQLw9gp96NWAtsu7hYrqkY6Tyxjn+NaJ82TtojM6ZZ35oscfX53D/yDA8hRuM3kPxx6/+qMYAtL+k5E8a16DyTeIR0jkM1JVCiFxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2HKEfF9OawI2nMZhUX3lwGlkm5S6MTDuK6LFbKYE7Xo=;
 b=Tmrk+ToAqNr22633EaY+vPWvMAVY5PYtoUpUAlgeEkaPqVwWF3rH0bSSoivtdtIgt2EaJdBHaunyTa4j6EhviVstcBjwKXGa+NPMvBxvPpbL7HzC+XtS6Xj2eEfD7VxETEQEGk7NUOzgZm2K7xXTD8o1vutmDG4pUAvsmGFNzdZ815K4w8KWeWl/E9G1x1lQmn3oBCTfpAKCw0spA86tf+tYAm2FJ0awNZQyGxYYcrWoFkKi6NTwMtQXEpM2JruAuqwHy2ysJWYSaXYyZZxBf2hPUW/COivKfZ3b7aNjaofuWH9Ruvkalbxjnr+DrrMcbtdoV6TpVSJKUKF9MSks9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY5PR11MB6138.namprd11.prod.outlook.com (2603:10b6:930:2a::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.27; Mon, 6 Mar 2023 11:38:42 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%5]) with mapi id 15.20.6156.027; Mon, 6 Mar 2023
 11:38:42 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v10 2/6] drm/i915/hdcp: Keep hdcp agonstic naming
 convention
Thread-Index: AQHZNhzgjX1OzprgIkq87gBDTHJjla7tzpgg
Date: Mon, 6 Mar 2023 11:38:41 +0000
Message-ID: <DM4PR11MB6360059DB3B31D8DE29A9DCDF4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230201090806.3008619-1-suraj.kandpal@intel.com>
 <20230201090806.3008619-3-suraj.kandpal@intel.com>
In-Reply-To: <20230201090806.3008619-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY5PR11MB6138:EE_
x-ms-office365-filtering-correlation-id: eecab655-f254-4533-c089-08db1e3755fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KsLQ8WsO0LlH69v1wRBup775gzXCwmQ2mfU5dsw4ZWq/N50zjnjpYkPDJ86ygIbyCk4KgtWK/STqVYAQEl5ZSGjpqhtrO6qhjtxlPlK7t/n1hhWiTg3UnSMAxcjl2Ji1N3mBiE30jiKhYrUFzAppTziIT1LkGQ+dFduldSreKaYx5bLUkWQXI+ciddqwCX4yaF2PjG7NIuMjljgxXTahRbpfnnSxt5GRo8H2qORNKeXucmX1G71kvPiORFSlY7DjRPIQVJywCwpy5p6kOuJrSPD7RCQ7BQ1jr8UEfN/w89t/agopbkmloij8a+rwCFOu9L23t1F1xnclEG2OeZxthz2YyFoMdH8EBtKnDYkY1S6hJ7veZ89yqKVA5LS52yMNiNnO1d2tX3y4ttz/ESP1wSNQqGWHWxkkj4STvPDd0xpPQfYEPxLBkgiISQvOfILa0ZHN7/UOEe6o2845q8wYyyTNACWIJzuKxMseLB/kNFSgPkf+Zz797c1QReTMsOifx7s0mDT5k5f3RYZ2rFAYMtwrhlK1DYKZ/VQlZ7tlYAuBqhd7QGN5x7WYUmkuiGqJpNh4QGtjCMbMKm7UD3yRDGo6S9AmZC5chEBWTnFC/dMxSoh2/lAu8cgvwqhe9tiQUCVGJ1qNHu8W2cjR4al7bf/z+ZRwxgno7xPv9T0A5MvDHZfnufyJbwFSxOAIXx882faFec8HS20wJNo4e4ZmYg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(376002)(136003)(366004)(39860400002)(451199018)(33656002)(54906003)(316002)(110136005)(55016003)(478600001)(7696005)(71200400001)(8936002)(52536014)(5660300002)(2906002)(30864003)(76116006)(66556008)(66946007)(64756008)(66446008)(4326008)(66476007)(8676002)(41300700001)(122000001)(82960400001)(26005)(38070700005)(38100700002)(86362001)(9686003)(186003)(53546011)(6506007)(107886003)(83380400001)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oUGBTwUMP2obVw527gvyszVnO9Bg6lMMYs9CR2DwANRzFRsQckywVP3de6aO?=
 =?us-ascii?Q?QR4O4UX1JGrOPY7jSIarKKKadbT2jOTXnCXQ7TUwQAIOIEaBhQzhEw44s3zK?=
 =?us-ascii?Q?+5Lg0wAskm5PfB4Hq91lpBzYFS2/y9JFIBgztrTED9Nl+MDA3DN8BNgOHKFL?=
 =?us-ascii?Q?p8f+Pd1UGY4Ejf9JMEJkKJLggiunMkOdIOQdQ7Xm2AvsaKuRrSLyHerydbF0?=
 =?us-ascii?Q?V0jb0hvy5JPxOx8TTxKwF+LCf1R4NCG9+l+2Wzm3H6P5f6O7hJBzpNF2MGUe?=
 =?us-ascii?Q?RYIJjqg9Fy+TtG/Kh8dYtATytvNp3aCKSlyRe6ZqT4ZNdeQcX87nfq/j1muA?=
 =?us-ascii?Q?7AiJ1dtj4OLBnpV+sZAnUa2Ja/HbAcx1e8pWHfkX7LCQr1dDJps/eEcKjEP9?=
 =?us-ascii?Q?3Qmn9pQHY/vgY/d7bbJMaLlfBEnezfFYT+YQOV5Rl6gMDNWXUHEXKUv2TLCP?=
 =?us-ascii?Q?E49eMlC0i2bQgUvWOTTObe3oU1kLAfZB5/Zwq6t3taflvNMwseBd/6jtd+pS?=
 =?us-ascii?Q?yyXdkt9ETcBUeStP5pMtfFlWxMwDmjiMdj0ybBerKTyiSbdZGP6eqohQXQbC?=
 =?us-ascii?Q?c0YTwYzVencY2U/kmy9N0WkYkuAc+t5J3xrNdsVku2RUXYcxRzNshhuKtiHN?=
 =?us-ascii?Q?fS1lgQfbSmaRJR0+5rgPZvZYW+xSCBbx9badlaxpCdsdUqUYnHFQAccgQx+c?=
 =?us-ascii?Q?UQl9d0jrEYGK7xnp6+zGBgZfPy33NJzf+oL4kcB6lpwr67pxAJwFzstLdeVm?=
 =?us-ascii?Q?08loJu1A2mMli7gvo6aqoZA1iLwPaxnQnF+mM4wOV54zjzoJGDx3PlG0END4?=
 =?us-ascii?Q?k+LBkxdaIbRC88Cswnt29taE98KL8H2InBa2DY9bkcO/i8LALZQAb22Yr22y?=
 =?us-ascii?Q?toZeVYV44c43Q+LG+dLpCBApZxwNv1uO9O/fDlwVqH9oa6dKX/T51mNkBAOV?=
 =?us-ascii?Q?ZPzQqyKouw7U4ZyZL5JdApeZdVSMr7K7h2M0PPhvDFERQCx0ewXthqeo9NM4?=
 =?us-ascii?Q?Q2LFzNAzuTuTk4fmMbPRaWj/s1H/VgOVkis3fmMBuoJCHAZgd6JhoXKb/IT2?=
 =?us-ascii?Q?aj6pJDXXYx6edFgYle+1Hsa8CEdm0n2pPV7PQCp+5ZKa8QmVbXBVH7Rb+kUE?=
 =?us-ascii?Q?j/7jR32etKJktfzCgA06pog7YzJDvhkUHjsEmEGRvj9mENsEcjdni+aF7nsq?=
 =?us-ascii?Q?70DVic3acfZ3TOA3TJrZ2uu0hN1c7qqb+4NqHc3n2myxstfTwCzPaHKyyoW0?=
 =?us-ascii?Q?f+nOh3bJ56ABPWybisARs7htIHIBE+nBJpbiRnztmmTaCQUKTzp0nmqN7ByZ?=
 =?us-ascii?Q?6rY8rs4UndcXgXiyqQvJZEswdWgsUtNrK7DvOFnFW8HYPbrjFRdooBcsw3fj?=
 =?us-ascii?Q?Xsw7sy8Bkh34inx7JExF4tex64hD7PvRHL3Zn8oBMurcBQUPTT21uyLfs/Yk?=
 =?us-ascii?Q?84qMYfH5zvOFpTme0sl8z3sP15Y4HmS/XtkNio1j9kQ6YNzzrc6ZfQizZ6Ir?=
 =?us-ascii?Q?CL3GnXZiNu7GbcTpwRCPSnKG5h2zz+dU1RwI88tSb+a4o80Tjo3cOwYjxIrC?=
 =?us-ascii?Q?CVHyrwgT7/GUU317VAhZeYgmTZbv/jDTKW4CEZYn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eecab655-f254-4533-c089-08db1e3755fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 11:38:41.7406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kik9q9no7ZdLOsL3lJ3wrt3eF1W7a6PNAhUmlG1ZYjgSczUwZ+kq8myV7rIpF/KjOAtPq/XI1mFnsxGoV0q6fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6138
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 2/6] drm/i915/hdcp: Keep hdcp agonstic
 naming convention
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
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Winkler, Tomas <tomas.winkler@intel.com>; Viv=
i,
> Rodrigo <rodrigo.vivi@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH v10 2/6] drm/i915/hdcp: Keep hdcp agonstic naming convent=
ion

Typo in agnostic.

Also I feel this header can be re-phrased: "Use generic names for HDCP help=
ers and structs"
Add the rationale why this is required, explain the legacy and new usage wh=
ich is the cause
for this patch.

>=20
> From: Anshuman Gupta <anshuman.gupta@intel.com>
>=20
> Change the include/drm/i915_mei_hdcp_interface.h to
> include/drm/i915_hdcp_interface.h
>=20
> --v6
> -make each patch build individually [Jani]
>=20
> --v8
> -change ME FW to ME/GSC FW [Ankit]
> -fix formatting issue [Ankit]
>=20
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Acked-by: Tomas Winkler <tomas.winkler@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  2 +-
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 81 ++++++++--------
>  drivers/misc/mei/hdcp/mei_hdcp.c              | 61 ++++++------
>  ...hdcp_interface.h =3D> i915_hdcp_interface.h} | 92 +++++++++----------
>  5 files changed, 118 insertions(+), 120 deletions(-)  rename
> include/drm/{i915_mei_hdcp_interface.h =3D> i915_hdcp_interface.h} (73%)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index fb8670aa2932..8e7a68339876 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -378,7 +378,7 @@ struct intel_display {
>  	} gmbus;
>=20
>  	struct {
> -		struct i915_hdcp_comp_master *master;
> +		struct i915_hdcp_master *master;

Since we are changing this up, can we drop the use of phrase like "master" =
etc,
if feasible in the series, else this can be taken with a follow up cleanup =
series.

>  		bool comp_added;
>=20
>  		/* Mutex to protect the above hdcp component related values. */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9ccae7a46020..7accd3a8877c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -43,7 +43,7 @@
>  #include <drm/drm_rect.h>
>  #include <drm/drm_vblank.h>
>  #include <drm/drm_vblank_work.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_hdcp_interface.h>
>  #include <media/cec-notifier.h>
>=20
>  #include "i915_vma.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 6406fd487ee5..262c76f21801 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1143,7 +1143,7 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;

comp name is relevant if we use component framework, having the name for a
generic case doesn't seem right. Change it universally in patch.

>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1154,7 +1154,7 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->initiate_hdcp2_session(comp->mei_dev, data, ake_data=
);
> +	ret =3D comp->ops->initiate_hdcp2_session(comp->hdcp_dev, data,
> +ake_data);
>  	if (ret)
>  		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
>  			    ret);
> @@ -1173,7 +1173,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connec=
tor
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1184,7 +1184,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connec=
tor
> *connector,
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->verify_receiver_cert_prepare_km(comp->mei_dev, data,
> +	ret =3D comp->ops->verify_receiver_cert_prepare_km(comp->hdcp_dev, data=
,
>  							 rx_cert, paired,
>  							 ek_pub_km, msg_sz);
>  	if (ret < 0)
> @@ -1201,7 +1201,7 @@ static int hdcp2_verify_hprime(struct intel_connect=
or
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1212,7 +1212,7 @@ static int hdcp2_verify_hprime(struct intel_connect=
or
> *connector,
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
> +	ret =3D comp->ops->verify_hprime(comp->hdcp_dev, data, rx_hprime);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n", ret);
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1227,7 +1227,7 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1238,7 +1238,7 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->store_pairing_info(comp->mei_dev, data, pairing_info=
);
> +	ret =3D comp->ops->store_pairing_info(comp->hdcp_dev, data,
> +pairing_info);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
>  			    ret);
> @@ -1254,7 +1254,7 @@ hdcp2_prepare_lc_init(struct intel_connector *conne=
ctor,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1265,7 +1265,7 @@ hdcp2_prepare_lc_init(struct intel_connector *conne=
ctor,
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->initiate_locality_check(comp->mei_dev, data, lc_init=
);
> +	ret =3D comp->ops->initiate_locality_check(comp->hdcp_dev, data,
> +lc_init);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
>  			    ret);
> @@ -1281,7 +1281,7 @@ hdcp2_verify_lprime(struct intel_connector *connect=
or,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1292,7 +1292,7 @@ hdcp2_verify_lprime(struct intel_connector *connect=
or,
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->verify_lprime(comp->mei_dev, data, rx_lprime);
> +	ret =3D comp->ops->verify_lprime(comp->hdcp_dev, data, rx_lprime);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
>  			    ret);
> @@ -1307,7 +1307,7 @@ static int hdcp2_prepare_skey(struct intel_connecto=
r
> *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1318,7 +1318,7 @@ static int hdcp2_prepare_skey(struct intel_connecto=
r
> *connector,
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->get_session_key(comp->mei_dev, data, ske_data);
> +	ret =3D comp->ops->get_session_key(comp->hdcp_dev, data, ske_data);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
>  			    ret);
> @@ -1336,7 +1336,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1347,7 +1347,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->repeater_check_flow_prepare_ack(comp->mei_dev,
> data,
> +	ret =3D comp->ops->repeater_check_flow_prepare_ack(comp->hdcp_dev,
> data,
>  							 rep_topology,
>  							 rep_send_ack);
>  	if (ret < 0)
> @@ -1365,7 +1365,7 @@ hdcp2_verify_mprime(struct intel_connector *connect=
or,
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1376,7 +1376,7 @@ hdcp2_verify_mprime(struct intel_connector *connect=
or,
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->verify_mprime(comp->mei_dev, data, stream_ready);
> +	ret =3D comp->ops->verify_mprime(comp->hdcp_dev, data, stream_ready);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n", ret);
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1389,7 +1389,7 @@ static int hdcp2_authenticate_port(struct intel_con=
nector
> *connector)
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1400,7 +1400,7 @@ static int hdcp2_authenticate_port(struct intel_con=
nector
> *connector)
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->enable_hdcp_authentication(comp->mei_dev, data);
> +	ret =3D comp->ops->enable_hdcp_authentication(comp->hdcp_dev, data);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
>  			    ret);
> @@ -1413,7 +1413,7 @@ static int hdcp2_close_mei_session(struct intel_con=
nector
> *connector)  {
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>  	int ret;
>=20
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1424,7 +1424,7 @@ static int hdcp2_close_mei_session(struct intel_con=
nector
> *connector)
>  		return -EINVAL;
>  	}
>=20
> -	ret =3D comp->ops->close_hdcp_session(comp->mei_dev,
> +	ret =3D comp->ops->close_hdcp_session(comp->hdcp_dev,
>  					     &dig_port->hdcp_port_data);
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
> @@ -2145,8 +2145,8 @@ static int i915_hdcp_component_bind(struct device
> *i915_kdev,
>=20
>  	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	dev_priv->display.hdcp.master =3D (struct i915_hdcp_comp_master *)data;
> -	dev_priv->display.hdcp.master->mei_dev =3D mei_kdev;
> +	dev_priv->display.hdcp.master =3D (struct i915_hdcp_master *)data;
> +	dev_priv->display.hdcp.master->hdcp_dev =3D mei_kdev;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
>  	return 0;
> @@ -2163,30 +2163,30 @@ static void i915_hdcp_component_unbind(struct dev=
ice
> *i915_kdev,
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  }
>=20
> -static const struct component_ops i915_hdcp_component_ops =3D {
> +static const struct component_ops i915_hdcp_ops =3D {
>  	.bind   =3D i915_hdcp_component_bind,
>  	.unbind =3D i915_hdcp_component_unbind,
>  };
>=20
> -static enum mei_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
> +static enum hdcp_ddi intel_get_hdcp_ddi_index(enum port port)
>  {
>  	switch (port) {
>  	case PORT_A:
> -		return MEI_DDI_A;
> +		return HDCP_DDI_A;
>  	case PORT_B ... PORT_F:
> -		return (enum mei_fw_ddi)port;
> +		return (enum hdcp_ddi)port;
>  	default:
> -		return MEI_DDI_INVALID_PORT;
> +		return HDCP_DDI_INVALID_PORT;
>  	}
>  }
>=20
> -static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder=
)
> +static enum hdcp_transcoder intel_get_hdcp_transcoder(enum transcoder
> +cpu_transcoder)
>  {
>  	switch (cpu_transcoder) {
>  	case TRANSCODER_A ... TRANSCODER_D:
> -		return (enum mei_fw_tc)(cpu_transcoder | 0x10);
> +		return (enum hdcp_transcoder)(cpu_transcoder | 0x10);
>  	default: /* eDP, DSI TRANSCODERS are non HDCP capable */
> -		return MEI_INVALID_TRANSCODER;
> +		return HDCP_INVALID_TRANSCODER;
>  	}
>  }
>=20
> @@ -2200,20 +2200,20 @@ static int initialize_hdcp_port_data(struct
> intel_connector *connector,
>  	enum port port =3D dig_port->base.port;
>=20
>  	if (DISPLAY_VER(dev_priv) < 12)
> -		data->fw_ddi =3D intel_get_mei_fw_ddi_index(port);
> +		data->hdcp_ddi =3D intel_get_hdcp_ddi_index(port);
>  	else
>  		/*
> -		 * As per ME FW API expectation, for GEN 12+, fw_ddi is filled
> +		 * As per ME FW API expectation, for GEN 12+, hdcp_ddi is filled
>  		 * with zero(INVALID PORT index).
>  		 */
> -		data->fw_ddi =3D MEI_DDI_INVALID_PORT;
> +		data->hdcp_ddi =3D HDCP_DDI_INVALID_PORT;
>=20
>  	/*
> -	 * As associated transcoder is set and modified at modeset, here fw_tc
> +	 * As associated transcoder is set and modified at modeset, here
> +hdcp_transcoder
>  	 * is initialized to zero (invalid transcoder index). This will be
>  	 * retained for <Gen12 forever.
>  	 */
> -	data->fw_tc =3D MEI_INVALID_TRANSCODER;
> +	data->hdcp_transcoder =3D HDCP_INVALID_TRANSCODER;
>=20
>  	data->port_type =3D (u8)HDCP_PORT_TYPE_INTEGRATED;
>  	data->protocol =3D (u8)shim->protocol;
> @@ -2256,7 +2256,7 @@ void intel_hdcp_component_init(struct drm_i915_priv=
ate
> *dev_priv)
>=20
>  	dev_priv->display.hdcp.comp_added =3D true;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> -	ret =3D component_add_typed(dev_priv->drm.dev,
> &i915_hdcp_component_ops,
> +	ret =3D component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
>  				  I915_COMPONENT_HDCP);
>  	if (ret < 0) {
>  		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
> @@ -2350,7 +2350,8 @@ int intel_hdcp_enable(struct intel_connector *conne=
ctor,
>  	}
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 12)
> -		dig_port->hdcp_port_data.fw_tc =3D intel_get_mei_fw_tc(hdcp-
> >cpu_transcoder);
> +		dig_port->hdcp_port_data.hdcp_transcoder =3D
> +			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
>=20
>  	/*
>  	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup @=
@ -
> 2485,7 +2486,7 @@ void intel_hdcp_component_fini(struct drm_i915_private
> *dev_priv)
>  	dev_priv->display.hdcp.comp_added =3D false;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20
> -	component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
> +	component_del(dev_priv->drm.dev, &i915_hdcp_ops);
>  }
>=20
>  void intel_hdcp_cleanup(struct intel_connector *connector) diff --git
> a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> index e889a8bd7ac8..b2c49599809c 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -23,7 +23,7 @@
>  #include <linux/component.h>
>  #include <drm/drm_connector.h>
>  #include <drm/i915_component.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_hdcp_interface.h>
>=20
>  #include "mei_hdcp.h"
>=20
> @@ -57,8 +57,8 @@ mei_hdcp_initiate_session(struct device *dev, struct
> hdcp_port_data *data,
>=20
> 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
>=20
>  	session_init_in.port.integrated_port_type =3D data->port_type;
> -	session_init_in.port.physical_port =3D (u8)data->fw_ddi;
> -	session_init_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	session_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	session_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>  	session_init_in.protocol =3D data->protocol;
>=20
>  	byte =3D mei_cldev_send(cldev, (u8 *)&session_init_in, @@ -127,8 +127,8
> @@ mei_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
>=20
> 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
>=20
>  	verify_rxcert_in.port.integrated_port_type =3D data->port_type;
> -	verify_rxcert_in.port.physical_port =3D (u8)data->fw_ddi;
> -	verify_rxcert_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	verify_rxcert_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	verify_rxcert_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder=
;
>=20
>  	verify_rxcert_in.cert_rx =3D rx_cert->cert_rx;
>  	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN); @@ -
> 198,8 +198,8 @@ mei_hdcp_verify_hprime(struct device *dev, struct
> hdcp_port_data *data,
>  	send_hprime_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
>=20
>  	send_hprime_in.port.integrated_port_type =3D data->port_type;
> -	send_hprime_in.port.physical_port =3D (u8)data->fw_ddi;
> -	send_hprime_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	send_hprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	send_hprime_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
>  	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
>  	       HDCP_2_2_H_PRIME_LEN);
> @@ -256,8 +256,8 @@ mei_hdcp_store_pairing_info(struct device *dev, struc=
t
> hdcp_port_data *data,
>=20
> 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
>=20
>  	pairing_info_in.port.integrated_port_type =3D data->port_type;
> -	pairing_info_in.port.physical_port =3D (u8)data->fw_ddi;
> -	pairing_info_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	pairing_info_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	pairing_info_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
>  	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
>  	       HDCP_2_2_E_KH_KM_LEN);
> @@ -315,8 +315,8 @@ mei_hdcp_initiate_locality_check(struct device *dev,
>  	lc_init_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
>=20
>  	lc_init_in.port.integrated_port_type =3D data->port_type;
> -	lc_init_in.port.physical_port =3D (u8)data->fw_ddi;
> -	lc_init_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	lc_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	lc_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
>  	byte =3D mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init_in));
>  	if (byte < 0) {
> @@ -371,8 +371,8 @@ mei_hdcp_verify_lprime(struct device *dev, struct
> hdcp_port_data *data,
>=20
> 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
>=20
>  	verify_lprime_in.port.integrated_port_type =3D data->port_type;
> -	verify_lprime_in.port.physical_port =3D (u8)data->fw_ddi;
> -	verify_lprime_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	verify_lprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	verify_lprime_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder=
;
>=20
>  	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
>  	       HDCP_2_2_L_PRIME_LEN);
> @@ -429,8 +429,8 @@ static int mei_hdcp_get_session_key(struct device *de=
v,
>  	get_skey_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
>=20
>  	get_skey_in.port.integrated_port_type =3D data->port_type;
> -	get_skey_in.port.physical_port =3D (u8)data->fw_ddi;
> -	get_skey_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	get_skey_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	get_skey_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
>  	byte =3D mei_cldev_send(cldev, (u8 *)&get_skey_in, sizeof(get_skey_in))=
;
>  	if (byte < 0) {
> @@ -494,8 +494,8 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct devic=
e
> *dev,
>=20
> 	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
>=20
>  	verify_repeater_in.port.integrated_port_type =3D data->port_type;
> -	verify_repeater_in.port.physical_port =3D (u8)data->fw_ddi;
> -	verify_repeater_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	verify_repeater_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	verify_repeater_in.port.attached_transcoder =3D
> +(u8)data->hdcp_transcoder;
>=20
>  	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
>  	       HDCP_2_2_RXINFO_LEN);
> @@ -572,8 +572,8 @@ static int mei_hdcp_verify_mprime(struct device *dev,
>  	verify_mprime_in->header.buffer_len =3D cmd_size  - sizeof(verify_mprim=
e_in-
> >header);
>=20
>  	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> -	verify_mprime_in->port.physical_port =3D (u8)data->fw_ddi;
> -	verify_mprime_in->port.attached_transcoder =3D (u8)data->fw_tc;
> +	verify_mprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> +	verify_mprime_in->port.attached_transcoder =3D
> +(u8)data->hdcp_transcoder;
>=20
>  	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> HDCP_2_2_MPRIME_LEN);
>  	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data-
> >seq_num_m); @@ -634,8 +634,8 @@ static int
> mei_hdcp_enable_authentication(struct device *dev,
>  	enable_auth_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
>=20
>  	enable_auth_in.port.integrated_port_type =3D data->port_type;
> -	enable_auth_in.port.physical_port =3D (u8)data->fw_ddi;
> -	enable_auth_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	enable_auth_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	enable_auth_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>  	enable_auth_in.stream_type =3D data->streams[0].stream_type;
>=20
>  	byte =3D mei_cldev_send(cldev, (u8 *)&enable_auth_in, @@ -689,8 +689,8
> @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data=
)
>  				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
>=20
>  	session_close_in.port.integrated_port_type =3D data->port_type;
> -	session_close_in.port.physical_port =3D (u8)data->fw_ddi;
> -	session_close_in.port.attached_transcoder =3D (u8)data->fw_tc;
> +	session_close_in.port.physical_port =3D (u8)data->hdcp_ddi;
> +	session_close_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder=
;
>=20
>  	byte =3D mei_cldev_send(cldev, (u8 *)&session_close_in,
>  			      sizeof(session_close_in));
> @@ -715,7 +715,7 @@ mei_hdcp_close_session(struct device *dev, struct
> hdcp_port_data *data)
>  	return 0;
>  }
>=20
> -static const struct i915_hdcp_component_ops mei_hdcp_ops =3D {
> +static const struct i915_hdcp_ops mei_hdcp_ops =3D {
>  	.owner =3D THIS_MODULE,
>  	.initiate_hdcp2_session =3D mei_hdcp_initiate_session,
>  	.verify_receiver_cert_prepare_km =3D
> @@ -735,13 +735,12 @@ static const struct i915_hdcp_component_ops
> mei_hdcp_ops =3D {  static int mei_component_master_bind(struct device *d=
ev)  {
>  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> -	struct i915_hdcp_comp_master *comp_master =3D
> -						mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_master *comp_master =3D mei_cldev_get_drvdata(cldev);
>  	int ret;
>=20
>  	dev_dbg(dev, "%s\n", __func__);
>  	comp_master->ops =3D &mei_hdcp_ops;
> -	comp_master->mei_dev =3D dev;
> +	comp_master->hdcp_dev =3D dev;
>  	ret =3D component_bind_all(dev, comp_master);
>  	if (ret < 0)
>  		return ret;
> @@ -752,8 +751,7 @@ static int mei_component_master_bind(struct device *d=
ev)
> static void mei_component_master_unbind(struct device *dev)  {
>  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> -	struct i915_hdcp_comp_master *comp_master =3D
> -						mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_master *comp_master =3D mei_cldev_get_drvdata(cldev);
>=20
>  	dev_dbg(dev, "%s\n", __func__);
>  	component_unbind_all(dev, comp_master); @@ -801,7 +799,7 @@ static
> int mei_hdcp_component_match(struct device *dev, int subcomponent,  stati=
c int
> mei_hdcp_probe(struct mei_cl_device *cldev,
>  			  const struct mei_cl_device_id *id)  {
> -	struct i915_hdcp_comp_master *comp_master;
> +	struct i915_hdcp_master *comp_master;
>  	struct component_match *master_match;
>  	int ret;
>=20
> @@ -846,8 +844,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev=
,
>=20
>  static void mei_hdcp_remove(struct mei_cl_device *cldev)  {
> -	struct i915_hdcp_comp_master *comp_master =3D
> -						mei_cldev_get_drvdata(cldev);
> +	struct i915_hdcp_master *comp_master =3D mei_cldev_get_drvdata(cldev);
>  	int ret;
>=20
>  	component_master_del(&cldev->dev, &mei_component_master_ops); diff -
> -git a/include/drm/i915_mei_hdcp_interface.h b/include/drm/i915_hdcp_inte=
rface.h
> similarity index 73%
> rename from include/drm/i915_mei_hdcp_interface.h
> rename to include/drm/i915_hdcp_interface.h index f441cbcd95a4..75c75f52a=
b1b
> 100644
> --- a/include/drm/i915_mei_hdcp_interface.h
> +++ b/include/drm/i915_hdcp_interface.h
> @@ -6,15 +6,15 @@
>   * Ramalingam C <ramalingam.c@intel.com>
>   */
>=20
> -#ifndef _I915_MEI_HDCP_INTERFACE_H_
> -#define _I915_MEI_HDCP_INTERFACE_H_
> +#ifndef _I915_HDCP_INTERFACE_H_
> +#define _I915_HDCP_INTERFACE_H_
>=20
>  #include <linux/mutex.h>
>  #include <linux/device.h>
>  #include <drm/display/drm_hdcp.h>
>=20
>  /**
> - * enum hdcp_port_type - HDCP port implementation type defined by ME FW
> + * enum hdcp_port_type - HDCP port implementation type defined by
> + ME/GSC FW
>   * @HDCP_PORT_TYPE_INVALID: Invalid hdcp port type
>   * @HDCP_PORT_TYPE_INTEGRATED: In-Host HDCP2.x port
>   * @HDCP_PORT_TYPE_LSPCON: HDCP2.2 discrete wired Tx port with LSPCON @@
> -41,46 +41,46 @@ enum hdcp_wired_protocol {
>  	HDCP_PROTOCOL_DP
>  };
>=20
> -enum mei_fw_ddi {
> -	MEI_DDI_INVALID_PORT =3D 0x0,
> +enum hdcp_ddi {
> +	HDCP_DDI_INVALID_PORT =3D 0x0,
>=20
> -	MEI_DDI_B =3D 1,
> -	MEI_DDI_C,
> -	MEI_DDI_D,
> -	MEI_DDI_E,
> -	MEI_DDI_F,
> -	MEI_DDI_A =3D 7,
> -	MEI_DDI_RANGE_END =3D MEI_DDI_A,
> +	HDCP_DDI_B =3D 1,
> +	HDCP_DDI_C,
> +	HDCP_DDI_D,
> +	HDCP_DDI_E,
> +	HDCP_DDI_F,
> +	HDCP_DDI_A =3D 7,
> +	HDCP_DDI_RANGE_END =3D HDCP_DDI_A,
>  };
>=20
>  /**
> - * enum mei_fw_tc - ME Firmware defined index for transcoders
> - * @MEI_INVALID_TRANSCODER: Index for Invalid transcoder
> - * @MEI_TRANSCODER_EDP: Index for EDP Transcoder
> - * @MEI_TRANSCODER_DSI0: Index for DSI0 Transcoder
> - * @MEI_TRANSCODER_DSI1: Index for DSI1 Transcoder
> - * @MEI_TRANSCODER_A: Index for Transcoder A
> - * @MEI_TRANSCODER_B: Index for Transcoder B
> - * @MEI_TRANSCODER_C: Index for Transcoder C
> - * @MEI_TRANSCODER_D: Index for Transcoder D
> + * enum hdcp_tc - ME/GSC Firmware defined index for transcoders
> + * @HDCP_INVALID_TRANSCODER: Index for Invalid transcoder
> + * @HDCP_TRANSCODER_EDP: Index for EDP Transcoder
> + * @HDCP_TRANSCODER_DSI0: Index for DSI0 Transcoder
> + * @HDCP_TRANSCODER_DSI1: Index for DSI1 Transcoder
> + * @HDCP_TRANSCODER_A: Index for Transcoder A
> + * @HDCP_TRANSCODER_B: Index for Transcoder B
> + * @HDCP_TRANSCODER_C: Index for Transcoder C
> + * @HDCP_TRANSCODER_D: Index for Transcoder D
>   */
> -enum mei_fw_tc {
> -	MEI_INVALID_TRANSCODER =3D 0x00,
> -	MEI_TRANSCODER_EDP,
> -	MEI_TRANSCODER_DSI0,
> -	MEI_TRANSCODER_DSI1,
> -	MEI_TRANSCODER_A =3D 0x10,
> -	MEI_TRANSCODER_B,
> -	MEI_TRANSCODER_C,
> -	MEI_TRANSCODER_D
> +enum hdcp_transcoder {
> +	HDCP_INVALID_TRANSCODER =3D 0x00,
> +	HDCP_TRANSCODER_EDP,
> +	HDCP_TRANSCODER_DSI0,
> +	HDCP_TRANSCODER_DSI1,
> +	HDCP_TRANSCODER_A =3D 0x10,
> +	HDCP_TRANSCODER_B,
> +	HDCP_TRANSCODER_C,
> +	HDCP_TRANSCODER_D
>  };
>=20
>  /**
>   * struct hdcp_port_data - intel specific HDCP port data
> - * @fw_ddi: ddi index as per ME FW
> - * @fw_tc: transcoder index as per ME FW
> - * @port_type: HDCP port type as per ME FW classification
> - * @protocol: HDCP adaptation as per ME FW
> + * @hdcp_ddi: ddi index as per ME/GSC FW
> + * @hdcp_transcoder: transcoder index as per ME/GSC FW
> + * @port_type: HDCP port type as per ME/GSC FW classification
> + * @protocol: HDCP adaptation as per ME/GSC FW
>   * @k: No of streams transmitted on a port. Only on DP MST this is !=3D =
1
>   * @seq_num_m: Count of RepeaterAuth_Stream_Manage msg propagated.
>   *	       Initialized to 0 on AKE_INIT. Incremented after every successf=
ul
> @@ -90,8 +90,8 @@ enum mei_fw_tc {
>   *	     streams
>   */
>  struct hdcp_port_data {
> -	enum mei_fw_ddi fw_ddi;
> -	enum mei_fw_tc fw_tc;
> +	enum hdcp_ddi hdcp_ddi;
> +	enum hdcp_transcoder hdcp_transcoder;
>  	u8 port_type;
>  	u8 protocol;
>  	u16 k;
> @@ -100,7 +100,7 @@ struct hdcp_port_data {  };
>=20
>  /**
> - * struct i915_hdcp_component_ops- ops for HDCP2.2 services.
> + * struct i915_hdcp_ops- ops for HDCP2.2 services.
>   * @owner: Module providing the ops
>   * @initiate_hdcp2_session: Initiate a Wired HDCP2.2 Tx Session.
>   *			    And Prepare AKE_Init.
> @@ -119,9 +119,9 @@ struct hdcp_port_data {
>   * @close_hdcp_session: Close the Wired HDCP Tx session per port.
>   *			This also disables the authenticated state of the port.
>   */
> -struct i915_hdcp_component_ops {
> +struct i915_hdcp_ops {
>  	/**
> -	 * @owner: mei_hdcp module
> +	 * @owner: hdcp module
>  	 */
>  	struct module *owner;
>=20
> @@ -169,16 +169,16 @@ struct i915_hdcp_component_ops {
>=20
>  /**
>   * struct i915_hdcp_component_master - Used for communication between i9=
15

Name doesn't match with the structure, please fix.

> - * and mei_hdcp drivers for the HDCP2.2 services
> - * @mei_dev: device that provide the HDCP2.2 service from MEI Bus.
> - * @hdcp_ops: Ops implemented by mei_hdcp driver, used by i915 driver.
> + * and hdcp drivers for the HDCP2.2 services
> + * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
> + * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used by=
 i915
> driver.
>   */
> -struct i915_hdcp_comp_master {
> -	struct device *mei_dev;
> -	const struct i915_hdcp_component_ops *ops;
> +struct i915_hdcp_master {
> +	struct device *hdcp_dev;
> +	const struct i915_hdcp_ops *ops;
>=20
>  	/* To protect the above members. */
>  	struct mutex mutex;
>  };
>=20
> -#endif /* _I915_MEI_HDCP_INTERFACE_H_ */
> +#endif /* _I915_HDCP_INTERFACE_H_ */
> --
> 2.25.1


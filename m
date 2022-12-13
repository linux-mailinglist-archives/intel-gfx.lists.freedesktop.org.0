Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC0564B376
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 11:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3777A10E2FF;
	Tue, 13 Dec 2022 10:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7323810E2FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 10:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670928318; x=1702464318;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=92KwDlZYbt8Q8UvVuOX57fdDuJs6aeuSPvBZXNnRlZk=;
 b=O0y4o9/PSu+QEd3vtuaRkn0w3KqN93K//ly3Xz4xefcyK59XRx2lWZgJ
 SyR5FO6cQN8/Gf6DxCk5XGUAWFNPwTgEsFPSIRAzEKttnnx+V/OKajQQW
 8TzMnnCMhJmXQgebaDn30Bta7ui0vAMIg+NLmYw9CY7rP13y5tbDtl+Ye
 7yoTDiPBkCNXvsg/RdAUzZp1qtliq2MPagCmdf2ipA5bd+MjFgDQtYTwj
 yEwwDXyDiOSvA4OZ2eloxEI9Pj2TMMFgup/QA6OyMxaJ80MHbrnkfK43J
 3OBQZhso7+8QgKqnPIu9SZUkz4cyoxgGZEkm/klzkGzJPbwL3bYTD7lEz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="404357681"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="404357681"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:45:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="712026087"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="712026087"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 13 Dec 2022 02:45:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 02:45:17 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 02:45:16 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 02:45:16 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 02:45:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/FKj26krkwmAq4ZABUjyV5n+IWzMrmI3Sor3LEi5SSpEOvd6PUfAB+GdNehj3oo97ZY6HxNUvS5vT3KMOdWOkqwLO3tC0l24Q4J+7kC8J/rFwdxDkOzaENzNp3hachVQHthnPjQ49fuYxmW6je/yvjPnHl687GpZvOram5jqHCRL1GcIq6bmStY6X9sqtTyku65lA5PKT4GOjDMNjwZWwRErN0cnVFB03L9KIql/DkibCdRqLaWVsdRkG5JRSf/6czfjBXwgaVeCC/vaE98zQDgnzvU50j3GqGFn0rMDRurghLkOXGDuGYOuiYRdDJcNlwdfr7A9unGvRjSaoby2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tj1WuC9n+V4MS9CSUDUFr3PnT0mJtXYFJfhdtTnL2kY=;
 b=DrnzPDMy7oPot2mKmkMx4z9cshFZUYfjUs6s8/1DpqjC4zp/ztD58QXFAehAWGH0ALRQLLlog2jmFYlZ4X78Z1hI97kyaLuD8kGNzzXI7zVeDxmBQy00cjWEi2+IDFbb24NU1EYb/hpLiZwCLUPsCBsSrDIGqyY+v9UisXbAxB6ftzz9bnrMJkQO2OX9oGzRKp9nHa9yjhYKas2/wXSOUfsE7WNbqhmMaUPafEYXkg448DruIV8eptP3sasy3/TzHgkRtUTBaq6wd+k8QJiDEPbIudRCrnvwn9lmoX+RZQYwy/38Xw2IhgnxZjYWCi9u5xA5vHUj2irFgvYhmvQT3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by MN2PR11MB4584.namprd11.prod.outlook.com (2603:10b6:208:264::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 10:45:08 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77%7]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 10:45:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/7] drm/i915/hdcp: HDCP2.x Refactoring to
 agnotic cp f/w
Thread-Index: AQHZDsD4Tbr+7l+u+U+W8CBmp+n08a5roTAAgAAAlDA=
Date: Tue, 13 Dec 2022 10:45:08 +0000
Message-ID: <MWHPR11MB1741C518EDA6A1E048E86F15E3E39@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20221213070158.2621403-1-suraj.kandpal@intel.com>
 <20221213070158.2621403-4-suraj.kandpal@intel.com> <878rjby4b9.fsf@intel.com>
In-Reply-To: <878rjby4b9.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|MN2PR11MB4584:EE_
x-ms-office365-filtering-correlation-id: 0998e840-d2d6-4a37-2c7f-08dadcf71a43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SKPKun8lzs7iPH1QSWzHCYx7Qi7VFiLZyD74utxK3RSFTX72dmMqa8i77eq3ndz7Ppkb8oEnHzDxipZY65pQnJ56Ycgwl+GA+3E6PFO1SGtdJJ/brt17doSUshaR0IRYmDhYuYREEInfTmh0vPK8Sy4y51bNDrM2c1WNfLiYrvLHgIe2iDlNGFE95BIA6IyB5TpxyJzlRwLPGhpovPbM0rDpB4/KZjackpwDbBTT7OVCshZl4hggE1s+RJca1c49jUM7UGGmiI25w8uCYd152CC8YXgcYoohzoJco2q0Ov7fGMdQ6i0R9bdaOkKkj2lWF+lJ6qdqcongSLrrzDouGvk/Hid1OURYbPkKpTkCR722EPxa2mv+wD3cYXHIFN8amv41Vbp4/kEOM+rvG3xnQorxgVezAr+8aWf6UELl0gq5wf4JWiQeMuJvaVCGZSRTmyGhLBLxb1reFR0HW8Zq/IJHJPPfAnRMzjryBMlImDUvePb53Yzh3CG77XSuFZ6PF9lYzn+73Y8CZTXgPN5jjhXZXZLeCJf/47rvCJBZGl8SEYZAzguSuwUkOi3eS0LR+khyMwDoDZzm52O+khlxHhe3iZOBUU9NDI96uJOsITdfzLFbU2UlOiA12PdLisWSj9BBhaRQTSqjdZsbjNndlcwgizyfr/RApvPmz0ndMyAhcK1gYVS/7tuXkapWodBYyIe1N5JIvI2O4rgBkBr48Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199015)(86362001)(6506007)(9686003)(55016003)(26005)(186003)(7696005)(54906003)(110136005)(33656002)(66946007)(76116006)(71200400001)(82960400001)(66446008)(66556008)(38100700002)(4326008)(66476007)(122000001)(38070700005)(8676002)(316002)(64756008)(83380400001)(478600001)(41300700001)(30864003)(5660300002)(2906002)(52536014)(8936002)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZsGkGpgW9mwcjKmjd4rr7/TilKZp++G/rfQ06gtax72r9/1iRU4rFCBzPS16?=
 =?us-ascii?Q?mLhO4GwzBZiUjHCabe5QKyaNLQW5uTrZ7w/lbK9gJXHnzQaVXKshuTKqR5JH?=
 =?us-ascii?Q?cvXqmEhywGEo2GbWhrxF9EGpTpE7Z32RgfEA4snqetkpugcz0NwSdROgB6ey?=
 =?us-ascii?Q?3pkCqN2piTqxnjB+RXHgAPwPEUuj/F54Y3/n0RwyQqq2JjEOV0K3ZVk4nVcF?=
 =?us-ascii?Q?4L+Iewc8qnZmU2+5Zxh0KBl73FPSNbSq0oA/OL/G/Bvt33FnoLxS2Smhu6kH?=
 =?us-ascii?Q?k+b20mdoQgAWyYurTZMD0ZZdb2aVHi56Pjdu5WYeD/oZ1+nyDZd1+1vfuv9D?=
 =?us-ascii?Q?AOZ7uri3LLSTPhCo2bYyYIBtU4RomGSoTXUCCOUVB7x8krJSJQmhFD5eie22?=
 =?us-ascii?Q?QkH6PLA5Y+tSrSXV7vDd3zSi9BhRAryY4bTJi06nb+P7T0Er8r1MHutPUXD+?=
 =?us-ascii?Q?X3WanYoTmEUr0jkpfvWN4p1elmAoC/0YU4n6NbixNcMjswZ+aIgNbiPffhBj?=
 =?us-ascii?Q?9loAnsHsny1myUxFfIflUI6zoA3PXvTl0ooN6alUzdiezSnEeiSJSgVv0d+B?=
 =?us-ascii?Q?lHxwLP1m5N66d8NwcA+SiVaoRFwplakxOWvguW+1iavn4Ojk4hwixGEBpaVC?=
 =?us-ascii?Q?vpCmSV7f9yNiHduZYzHiO2H2feNa1VTyIse4NaR3pq9ys3nQ3XUfbesHWBOH?=
 =?us-ascii?Q?HD9lVnFQwKIqJUYvER1mgi+DvCroYWIvEW2Pj9eQZ7fFUk+8OBR+f3OmPWMI?=
 =?us-ascii?Q?nCUgKKxckXuaESY8brAxnHH++oSMCkRD5oY0tTNrclvn3qB+iP8bTQdvZjtt?=
 =?us-ascii?Q?0EUObtgyhc44t8ZV6TD9dK7UX9bIGWp1L8F4kyxCDP2RaM3HcnSX5f2F2UmL?=
 =?us-ascii?Q?cYmcHAhaZV2yIaCvJgHg1FNKhpH6z/w1HL+lbOM6JmuPqKZqSQiVxknZZb/9?=
 =?us-ascii?Q?9mV1wart5xa3juYGnHYWSymJudbrF6TCjE+FjiAI+PdoZgnLithJUaCCHuxz?=
 =?us-ascii?Q?/GrKv3vlhAsyLRe2Y4F1h61XZtq/KKEz7jyx7GNArsidIvYdfV+8dwFPzMSM?=
 =?us-ascii?Q?qZctPabLVKAJKDPrdnufNn423ChShuTQhclwrY7lMQ3/K7oav90zewQ/kyPG?=
 =?us-ascii?Q?U0BgoiY5snRE2WAuj+riuNJAV2Bt7aA5+2U5mRQAgMPEMsgwu1HR8xCXO5CD?=
 =?us-ascii?Q?WWECYlyK9giObNHcU0sAel89zUm5Hk97XbLajFxgg5eOOixVLuiYfr0LQJbw?=
 =?us-ascii?Q?AUvEzeMFhcW7sjdtwh1E3z3bxDLKdoGVXfLD4tTigNpI8GIx34dQKjxvdHA/?=
 =?us-ascii?Q?9ujaYPQP2umuKaDXO7ugvNN71l20u6BPUM7+OgsDm0ogfN4iQH18sh5vv3gW?=
 =?us-ascii?Q?lAh5v7t8N/C2Cv60U+P8Mw/+UE5UR1VMNij3E65pGg1johU9LAQ2p9Ho/J1Z?=
 =?us-ascii?Q?fwhUdLY9agoLJXYMjX9wG81O1lOWYRfGRC25IUBbnxM5CuvrpeFAn5fgNlkx?=
 =?us-ascii?Q?8SWgr2SI5Q4wHNK9ZGX0JfFvO2HvO5GhKesHuAwJ2//OknScRFwWTGBfoXU2?=
 =?us-ascii?Q?kCEdbe4Da7Lmf8a/+zyOIPJ7TgcxstDLoPMvWnN7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0998e840-d2d6-4a37-2c7f-08dadcf71a43
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2022 10:45:08.1520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0HRFbhRdWOqfwxvd8SY2CfL1YyWwaA+LUugAUFl8iNYeJxoyg9PdFkIQJbVUaZLOnTIEcJrdCySuUgKfNE66BA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4584
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/7] drm/i915/hdcp: HDCP2.x Refactoring
 to agnotic cp f/w
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

> Subject: Re: [Intel-gfx] [PATCH v2 3/7] drm/i915/hdcp: HDCP2.x Refactorin=
g to
> agnotic cp f/w
>=20
> On Tue, 13 Dec 2022, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > From: Anshuman Gupta <anshuman.gupta@intel.com>
> >
> > As now we have more then one type of content protection secrity
> > firmware. Let change the i915_cp_fw_hdcp_interface.h header naming
> > convention to suit generic f/w type.
> > %s/MEI_/FW_
> > %s/mei_fw/cp_fw
> > %s/mei_dev/fw_dev
> >
> > As interface to CP FW can be either a non i915 component or
> > i915 intergral component, change structure name Accordingly.
> > %s/i915_hdcp_comp_master/i915_hdcp_fw_master
> > %s/i915_hdcp_component_ops/i915_hdcp_fw_ops
>=20
> Why not drop the fw part here too? Just take a step further and make the
> interface agnostic to being about firmware.
I kept the fw part here as the previous names had it with mei naming and st=
ill interact
with fw but the below names make more sense ill get that changed.

Regards,
Suraj Kandpal
>=20
> fw_dev -> hdcp_dev
> enum cp_fw_ddi -> enum hdcp_port
> enum cp_fw_tc -> enum hdcp_transcoder
>=20
> enumerator values accordingly, with a sensible prefix.
>=20
> For naming, try saying the names aloud, as if you were discussing this on=
 the
> phone with someone. "enum cp_fw_tc" just does not work.
>=20
>=20
> BR,
> Jani.
>=20
> >
> > Cc: Tomas Winkler <tomas.winkler@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_core.h |  3 +-
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     | 66 ++++++++---------
> >  drivers/misc/mei/hdcp/mei_hdcp.c              | 12 ++--
> >  include/drm/i915_cp_fw_hdcp_interface.h       | 70 +++++++++----------
> >  4 files changed, 76 insertions(+), 75 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> > b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 57ddce3ba02b..a769cc8e2745 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -16,6 +16,7 @@
> >  #include <drm/drm_connector.h>
> >  #include <drm/drm_modeset_lock.h>
> >
> > +#include "i915/i915_cp_fw_hdcp_interface.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_display.h"
> >  #include "intel_display_power.h"
> > @@ -368,7 +369,7 @@ struct intel_display {
> >  	} gmbus;
> >
> >  	struct {
> > -		struct i915_hdcp_comp_master *master;
> > +		struct i915_hdcp_fw_master *master;
> >  		bool comp_added;
> >
> >  		/* Mutex to protect the above hdcp component related values.
> */
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 6406fd487ee5..e856b10948ab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -1143,7 +1143,7 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1154,7 +1154,7 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->initiate_hdcp2_session(comp->mei_dev, data,
> ake_data);
> > +	ret =3D comp->ops->initiate_hdcp2_session(comp->fw_dev, data,
> > +ake_data);
> >  	if (ret)
> >  		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed.
> %d\n",
> >  			    ret);
> > @@ -1173,7 +1173,7 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1184,7 +1184,7 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->verify_receiver_cert_prepare_km(comp->mei_dev,
> data,
> > +	ret =3D comp->ops->verify_receiver_cert_prepare_km(comp->fw_dev,
> data,
> >  							 rx_cert, paired,
> >  							 ek_pub_km, msg_sz);
> >  	if (ret < 0)
> > @@ -1201,7 +1201,7 @@ static int hdcp2_verify_hprime(struct intel_conne=
ctor
> *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1212,7 +1212,7 @@ static int hdcp2_verify_hprime(struct intel_conne=
ctor
> *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
> > +	ret =3D comp->ops->verify_hprime(comp->fw_dev, data, rx_hprime);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n",
> ret);
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1227,7 +1227,7 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1238,7 +1238,7 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->store_pairing_info(comp->mei_dev, data,
> pairing_info);
> > +	ret =3D comp->ops->store_pairing_info(comp->fw_dev, data,
> > +pairing_info);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed.
> %d\n",
> >  			    ret);
> > @@ -1254,7 +1254,7 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1265,7 +1265,7 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->initiate_locality_check(comp->mei_dev, data, lc_in=
it);
> > +	ret =3D comp->ops->initiate_locality_check(comp->fw_dev, data,
> > +lc_init);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
> >  			    ret);
> > @@ -1281,7 +1281,7 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1292,7 +1292,7 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->verify_lprime(comp->mei_dev, data, rx_lprime);
> > +	ret =3D comp->ops->verify_lprime(comp->fw_dev, data, rx_lprime);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
> >  			    ret);
> > @@ -1307,7 +1307,7 @@ static int hdcp2_prepare_skey(struct intel_connec=
tor
> *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1318,7 +1318,7 @@ static int hdcp2_prepare_skey(struct intel_connec=
tor
> *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->get_session_key(comp->mei_dev, data, ske_data);
> > +	ret =3D comp->ops->get_session_key(comp->fw_dev, data, ske_data);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
> >  			    ret);
> > @@ -1336,7 +1336,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1347,7 +1347,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->repeater_check_flow_prepare_ack(comp->mei_dev,
> data,
> > +	ret =3D comp->ops->repeater_check_flow_prepare_ack(comp->fw_dev,
> data,
> >  							 rep_topology,
> >  							 rep_send_ack);
> >  	if (ret < 0)
> > @@ -1365,7 +1365,7 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1376,7 +1376,7 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->verify_mprime(comp->mei_dev, data,
> stream_ready);
> > +	ret =3D comp->ops->verify_mprime(comp->fw_dev, data, stream_ready);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n",
> ret);
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1389,7 +1389,7 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1400,7 +1400,7 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->enable_hdcp_authentication(comp->mei_dev, data);
> > +	ret =3D comp->ops->enable_hdcp_authentication(comp->fw_dev, data);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed.
> %d\n",
> >  			    ret);
> > @@ -1413,7 +1413,7 @@ static int hdcp2_close_mei_session(struct
> > intel_connector *connector)  {
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_fw_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1424,7 +1424,7 @@ static int hdcp2_close_mei_session(struct
> intel_connector *connector)
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->close_hdcp_session(comp->mei_dev,
> > +	ret =3D comp->ops->close_hdcp_session(comp->fw_dev,
> >  					     &dig_port->hdcp_port_data);
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> >
> > @@ -2145,8 +2145,8 @@ static int i915_hdcp_component_bind(struct
> > device *i915_kdev,
> >
> >  	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > -	dev_priv->display.hdcp.master =3D (struct i915_hdcp_comp_master
> *)data;
> > -	dev_priv->display.hdcp.master->mei_dev =3D mei_kdev;
> > +	dev_priv->display.hdcp.master =3D (struct i915_hdcp_fw_master *)data;
> > +	dev_priv->display.hdcp.master->fw_dev =3D mei_kdev;
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> >
> >  	return 0;
> > @@ -2168,25 +2168,25 @@ static const struct component_ops
> i915_hdcp_component_ops =3D {
> >  	.unbind =3D i915_hdcp_component_unbind,  };
> >
> > -static enum mei_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
> > +static enum cp_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
> >  {
> >  	switch (port) {
> >  	case PORT_A:
> > -		return MEI_DDI_A;
> > +		return FW_DDI_A;
> >  	case PORT_B ... PORT_F:
> > -		return (enum mei_fw_ddi)port;
> > +		return (enum cp_fw_ddi)port;
> >  	default:
> > -		return MEI_DDI_INVALID_PORT;
> > +		return FW_DDI_INVALID_PORT;
> >  	}
> >  }
> >
> > -static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder
> > cpu_transcoder)
> > +static enum cp_fw_tc intel_get_mei_fw_tc(enum transcoder
> > +cpu_transcoder)
> >  {
> >  	switch (cpu_transcoder) {
> >  	case TRANSCODER_A ... TRANSCODER_D:
> > -		return (enum mei_fw_tc)(cpu_transcoder | 0x10);
> > +		return (enum cp_fw_tc)(cpu_transcoder | 0x10);
> >  	default: /* eDP, DSI TRANSCODERS are non HDCP capable */
> > -		return MEI_INVALID_TRANSCODER;
> > +		return FW_INVALID_TRANSCODER;
> >  	}
> >  }
> >
> > @@ -2206,14 +2206,14 @@ static int initialize_hdcp_port_data(struct
> intel_connector *connector,
> >  		 * As per ME FW API expectation, for GEN 12+, fw_ddi is filled
> >  		 * with zero(INVALID PORT index).
> >  		 */
> > -		data->fw_ddi =3D MEI_DDI_INVALID_PORT;
> > +		data->fw_ddi =3D FW_DDI_INVALID_PORT;
> >
> >  	/*
> >  	 * As associated transcoder is set and modified at modeset, here fw_t=
c
> >  	 * is initialized to zero (invalid transcoder index). This will be
> >  	 * retained for <Gen12 forever.
> >  	 */
> > -	data->fw_tc =3D MEI_INVALID_TRANSCODER;
> > +	data->fw_tc =3D FW_INVALID_TRANSCODER;
> >
> >  	data->port_type =3D (u8)HDCP_PORT_TYPE_INTEGRATED;
> >  	data->protocol =3D (u8)shim->protocol; diff --git
> > a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> > index 7e3cd3fd7f7b..7ca8b739cd31 100644
> > --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> > +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> > @@ -715,7 +715,7 @@ mei_hdcp_close_session(struct device *dev, struct
> hdcp_port_data *data)
> >  	return 0;
> >  }
> >
> > -static const struct i915_hdcp_component_ops mei_hdcp_ops =3D {
> > +static const struct i915_hdcp_fw_ops mei_hdcp_ops =3D {
> >  	.owner =3D THIS_MODULE,
> >  	.initiate_hdcp2_session =3D mei_hdcp_initiate_session,
> >  	.verify_receiver_cert_prepare_km =3D
> > @@ -735,13 +735,13 @@ static const struct i915_hdcp_component_ops
> > mei_hdcp_ops =3D {  static int mei_component_master_bind(struct device
> > *dev)  {
> >  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> > -	struct i915_hdcp_comp_master *comp_master =3D
> > +	struct i915_hdcp_fw_master *comp_master =3D
> >
> 	mei_cldev_get_drvdata(cldev);
> >  	int ret;
> >
> >  	dev_dbg(dev, "%s\n", __func__);
> >  	comp_master->ops =3D &mei_hdcp_ops;
> > -	comp_master->mei_dev =3D dev;
> > +	comp_master->fw_dev =3D dev;
> >  	ret =3D component_bind_all(dev, comp_master);
> >  	if (ret < 0)
> >  		return ret;
> > @@ -752,7 +752,7 @@ static int mei_component_master_bind(struct device
> > *dev)  static void mei_component_master_unbind(struct device *dev)  {
> >  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> > -	struct i915_hdcp_comp_master *comp_master =3D
> > +	struct i915_hdcp_fw_master *comp_master =3D
> >
> 	mei_cldev_get_drvdata(cldev);
> >
> >  	dev_dbg(dev, "%s\n", __func__);
> > @@ -801,7 +801,7 @@ static int mei_hdcp_component_match(struct device
> > *dev, int subcomponent,  static int mei_hdcp_probe(struct mei_cl_device
> *cldev,
> >  			  const struct mei_cl_device_id *id)  {
> > -	struct i915_hdcp_comp_master *comp_master;
> > +	struct i915_hdcp_fw_master *comp_master;
> >  	struct component_match *master_match;
> >  	int ret;
> >
> > @@ -846,7 +846,7 @@ static int mei_hdcp_probe(struct mei_cl_device
> > *cldev,
> >
> >  static void mei_hdcp_remove(struct mei_cl_device *cldev)  {
> > -	struct i915_hdcp_comp_master *comp_master =3D
> > +	struct i915_hdcp_fw_master *comp_master =3D
> >
> 	mei_cldev_get_drvdata(cldev);
> >  	int ret;
> >
> > diff --git a/include/drm/i915_cp_fw_hdcp_interface.h
> > b/include/drm/i915_cp_fw_hdcp_interface.h
> > index e5dc6b985b2f..3abfe6d414b8 100644
> > --- a/include/drm/i915_cp_fw_hdcp_interface.h
> > +++ b/include/drm/i915_cp_fw_hdcp_interface.h
> > @@ -41,38 +41,38 @@ enum hdcp_wired_protocol {
> >  	HDCP_PROTOCOL_DP
> >  };
> >
> > -enum mei_fw_ddi {
> > -	MEI_DDI_INVALID_PORT =3D 0x0,
> > +enum cp_fw_ddi {
> > +	FW_DDI_INVALID_PORT =3D 0x0,
> >
> > -	MEI_DDI_B =3D 1,
> > -	MEI_DDI_C,
> > -	MEI_DDI_D,
> > -	MEI_DDI_E,
> > -	MEI_DDI_F,
> > -	MEI_DDI_A =3D 7,
> > -	MEI_DDI_RANGE_END =3D MEI_DDI_A,
> > +	FW_DDI_B =3D 1,
> > +	FW_DDI_C,
> > +	FW_DDI_D,
> > +	FW_DDI_E,
> > +	FW_DDI_F,
> > +	FW_DDI_A =3D 7,
> > +	FW_DDI_RANGE_END =3D FW_DDI_A,
> >  };
> >
> >  /**
> >   * enum mei_fw_tc - ME Firmware defined index for transcoders
> > - * @MEI_INVALID_TRANSCODER: Index for Invalid transcoder
> > - * @MEI_TRANSCODER_EDP: Index for EDP Transcoder
> > - * @MEI_TRANSCODER_DSI0: Index for DSI0 Transcoder
> > - * @MEI_TRANSCODER_DSI1: Index for DSI1 Transcoder
> > - * @MEI_TRANSCODER_A: Index for Transcoder A
> > - * @MEI_TRANSCODER_B: Index for Transcoder B
> > - * @MEI_TRANSCODER_C: Index for Transcoder C
> > - * @MEI_TRANSCODER_D: Index for Transcoder D
> > + * @FW_INVALID_TRANSCODER: Index for Invalid transcoder
> > + * @FW_TRANSCODER_EDP: Index for EDP Transcoder
> > + * @FW_TRANSCODER_DSI0: Index for DSI0 Transcoder
> > + * @FW_TRANSCODER_DSI1: Index for DSI1 Transcoder
> > + * @FW_TRANSCODER_A: Index for Transcoder A
> > + * @FW_TRANSCODER_B: Index for Transcoder B
> > + * @FW_TRANSCODER_C: Index for Transcoder C
> > + * @FW_TRANSCODER_D: Index for Transcoder D
> >   */
> > -enum mei_fw_tc {
> > -	MEI_INVALID_TRANSCODER =3D 0x00,
> > -	MEI_TRANSCODER_EDP,
> > -	MEI_TRANSCODER_DSI0,
> > -	MEI_TRANSCODER_DSI1,
> > -	MEI_TRANSCODER_A =3D 0x10,
> > -	MEI_TRANSCODER_B,
> > -	MEI_TRANSCODER_C,
> > -	MEI_TRANSCODER_D
> > +enum cp_fw_tc {
> > +	FW_INVALID_TRANSCODER =3D 0x00,
> > +	FW_TRANSCODER_EDP,
> > +	FW_TRANSCODER_DSI0,
> > +	FW_TRANSCODER_DSI1,
> > +	FW_TRANSCODER_A =3D 0x10,
> > +	FW_TRANSCODER_B,
> > +	FW_TRANSCODER_C,
> > +	FW_TRANSCODER_D
> >  };
> >
> >  /**
> > @@ -90,8 +90,8 @@ enum mei_fw_tc {
> >   *	     streams
> >   */
> >  struct hdcp_port_data {
> > -	enum mei_fw_ddi fw_ddi;
> > -	enum mei_fw_tc fw_tc;
> > +	enum cp_fw_ddi fw_ddi;
> > +	enum cp_fw_tc fw_tc;
> >  	u8 port_type;
> >  	u8 protocol;
> >  	u16 k;
> > @@ -119,7 +119,7 @@ struct hdcp_port_data {
> >   * @close_hdcp_session: Close the Wired HDCP Tx session per port.
> >   *			This also disables the authenticated state of the port.
> >   */
> > -struct i915_hdcp_component_ops {
> > +struct i915_hdcp_fw_ops {
> >  	/**
> >  	 * @owner: mei_hdcp module
> >  	 */
> > @@ -168,14 +168,14 @@ struct i915_hdcp_component_ops {  };
> >
> >  /**
> > - * struct i915_hdcp_component_master - Used for communication between
> > i915
> > - * and mei_hdcp drivers for the HDCP2.2 services
> > - * @mei_dev: device that provide the HDCP2.2 service from MEI Bus.
> > + * struct i915_hdcp_fw_master - Used for communication between i915
> > + * and cp fw hdcp intf driver like mei_hdcp for the HDCP2.2 services
> > + * @fw_dev: device that provide the HDCP2.2 service from CP FW interfa=
ce.
> >   * @hdcp_ops: Ops implemented by mei_hdcp driver, used by i915 driver.
> >   */
> > -struct i915_hdcp_comp_master {
> > -	struct device *mei_dev;
> > -	const struct i915_hdcp_component_ops *ops;
> > +struct i915_hdcp_fw_master {
> > +	struct device *fw_dev;
> > +	const struct i915_hdcp_fw_ops *ops;
> >
> >  	/* To protect the above members. */
> >  	struct mutex mutex;
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center

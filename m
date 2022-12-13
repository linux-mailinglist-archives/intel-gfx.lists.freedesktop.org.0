Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F60264B35D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 11:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF5C10E300;
	Tue, 13 Dec 2022 10:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BFAE10E300
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 10:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670928030; x=1702464030;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fFJFlGazrS+/8vipRpx1iLrUZzXFHzSJR+W265ctabo=;
 b=X6wpiN8LxBFRk15uOEXTpWvL2CvxkHo/AyZLOJ2RULxpBEcSpeF4sfM8
 cyM1ZajPGI8DxM1JITpxHwzEnTcmz2VPP1DEgduodSu/JymCmAmep6rv5
 f7pHyuPkf2L0BaoEnOLldl2NaNnWMbkvcVMYfdVVIUH+7jKSeMiFIB7IL
 YXhufXsoEkrIPd0yTF2OdT/bjYiAxxQJWP+nA0BhnM0tKObI3NJJYZ9Xj
 xc1Y9ucUw0vWkM1UKs5JW30t04vQ8cjzG8mYamzBsxqxXST3NOTmvvezv
 lFDDfIYEFET83NNGuvYx/rcVbvHLA/M3bvPJTBhHUlmaRWFLrFDF9dtzu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="345160700"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="345160700"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:40:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="737341210"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="737341210"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Dec 2022 02:40:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 02:40:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 02:40:28 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 02:40:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gb9LmmdQYEFEpQ+BByLM4aXiky3UfATQ576V78Mr4ZeoUITsctlO3oAaDC6UcLOU9UJ1orHZ/yhXn4wY10ZsoGodRFaidiJJPjYuOUfpjLjOPliwSNQkdiX5KQAtlaAnV/td1hxxaACZBvvDTbs8zqRjHH8xrX1ZljKbFrYaIxcLh8tTyIJ9WpMSS37ctHe5FiJQNbl96cqXlsnafKFyUqtpx3Zv/aqywtxYv5ueaC+tawDeuYrlrxbgk82La3Z1iHuJa2szlHxqwimpgg8c56bnvcq21Sw726srYJ77oWB/aErbJurn9vGsKVaGFgffqfA8FGEupY02SKsXzFuKiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HV6vxZ/inFqfIILNPH4z6OG7P0E+bxc2D/WVljTSDVs=;
 b=WrP7SBpYIEMzzDLMkIn5fpmyveoYylVbNwtrgB6xc0nNVKn+TgNDCD0lrHGPcge2tXqVVtIO95gyskUjBqMuMjtPAW8OPdZXHYxUQOmIT6Nzn5ErQsE4CnkWrVuCFuDNFJ+7ubyT0qIQm/Te15vsYwYHKnvCwr7ta0OCyCPQSpTeL7eSFCbMXNeSBp1BS3ggj8e2YfiC3vyOQXA2Mv1N02m7VLiuZoG/EMZAjle7VJCqK9FQgQmTCkGyG5mWliWvYHq4dgEzzVK7REfOEusw7N5bykBQCUZ8kPKqkUIXD06mKWam2nsQNhCydZ7pewFpaEJImM64I9n0OXVW1mH0Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by SA1PR11MB6712.namprd11.prod.outlook.com (2603:10b6:806:25c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 10:40:23 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77%7]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 10:40:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/7] drm/i915/hdcp: Keep cp fw agonstic
 naming convention
Thread-Index: AQHZDsD0Gh95O6qAe0KhIljXpB/nAa5rnsOAgAAB1bA=
Date: Tue, 13 Dec 2022 10:40:23 +0000
Message-ID: <MWHPR11MB17418766902BCA3C03AC00D5E3E39@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20221213070158.2621403-1-suraj.kandpal@intel.com>
 <20221213070158.2621403-3-suraj.kandpal@intel.com> <87bko7y4pq.fsf@intel.com>
In-Reply-To: <87bko7y4pq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|SA1PR11MB6712:EE_
x-ms-office365-filtering-correlation-id: 67f94ea6-f13f-4b89-d2db-08dadcf670b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ald7z/hovIETpHnyu34CknAWuyeLsAW0rWr3e6rAtW04PNdKPbysEMVNqpq+3PfIm5l9CuDI65adnQu6L4UbnedE8Rc6cYjssb5Kxbm0JrZXp737SrwULsazYX7otqnQ5U50Euz5O47vZET1UxBDIlcJ7J5WT3eudpWofpuR05dzEdpmZshHoA5eVM5rBEOJW3uFsGTwVCI8ECn5kFtlHC9eA5AQeax1csxFla0EcykIgPCTnEIkHTDku6JUY9LrqJX6PmSAbuwlmyaTI1hEBwjqgEpzyk1zujrVkHCNQTieYXGEA6kNZO0FDmTcrZHw5kxql/CWTRFi6q1Sqi0ZMd/8Nhs5zbCn/CxWC29KP2OZdlqsr0hRPF++dnBroD1139lgzo0oy94D9p3EDpOgF3lvkVSi/a/pVNpDlvsOtC+3kfIQzf2eDPdUMEaCMXq7CPKIc2U1KEV5YmIIeGlphbQnZi70odZUDSlitOW5t9VqOGgF01gqH35bI0ImXmHI9qXnXq/ZuK54JamIt4v8/ZUL3dtTWmq4Eh9oxVmRtSskzWduf7pBjUnDXUGg5EYjvL449aDgbO9+NP/morVWEU0GmnDW977aXx2AK2cJilfLZKqM7xmJuOmvRdQl/7K2yNS2fU454CbE71H61/vW1JrRaXP04vKi5F+EBB677hm6zo5FYDRgJuF51b6uu9vlTag1SggGeUbxpNVApc+aRA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(346002)(136003)(366004)(451199015)(71200400001)(54906003)(316002)(110136005)(38100700002)(478600001)(122000001)(38070700005)(82960400001)(33656002)(9686003)(186003)(6506007)(7696005)(55016003)(26005)(66476007)(66446008)(52536014)(66946007)(64756008)(76116006)(5660300002)(86362001)(8936002)(2906002)(4326008)(66556008)(8676002)(83380400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ebb8QrKURLG9W+XzdwsQpHppXoBJMZChqYg5Ztub8mdNBYPmc+z10/acO5vl?=
 =?us-ascii?Q?TqaxNm8YRmKumfSVRPnTtbKzl3CsNHvp1GaiDr6DOAIVlra3ZGYEOwEFls0g?=
 =?us-ascii?Q?gohy7mUWVWUpsJQb9IcMhFWQOHVlLbQDT/aY77J3v3iWKpBnJJz1iFffNx3P?=
 =?us-ascii?Q?ZmgvGEJDN4rhbaHfNooGnjPBRWdmeg4PPxR8asQtMATl/P9owTde9CjKqss8?=
 =?us-ascii?Q?kHrrYNvGm4vCZgEqRHN55aOx6fSTNLp5Sxg09g/7Et//sUmfF1tUsWsmt3XO?=
 =?us-ascii?Q?UxqsQRhZrcdQfhd/Chtgmii5sgsiiBwWPW7GPO9lLycDeXw55xI75vchFzcF?=
 =?us-ascii?Q?OLLEvyoN69VnPCY7DBdh62BYk7z4r0CtwAwmd/BsDUhB97hRazilrw3NdDZ6?=
 =?us-ascii?Q?m38xlc6LhRu0nIXALBH69iWt4Df6LLm/U1Dm673oeaUmz8vslwv9Jg54cxmM?=
 =?us-ascii?Q?Q2V2oyT0bASdf72nd/g5GI7j1oIRsPfOPBrGqtXmFqn/DdcegV0LDD5rKTE+?=
 =?us-ascii?Q?ffvsImMVS6laKW6OxiwjOJj7Pv2vUPEmTK6agnBRJmuOvzV2ji2XgWg9uoT7?=
 =?us-ascii?Q?8AxTokTj5QcV0wByd0ZjGHjHUYVB1ro6Hurf5kCKiYLJa0BWUbR8ynUhGda3?=
 =?us-ascii?Q?WQQQa+FdiwqvjEjhRxIkhF92OBzK2rbsmyOtMhSos/btSP+bUn7ahyPf61Rh?=
 =?us-ascii?Q?LAn6CHScAoCMy3rpJbMc0YJsMAyb2reIY8p9dPT2DravS2ihdBiLI5UQp8bm?=
 =?us-ascii?Q?aFVrMhRX+pcaT4Csf+9Ek+E8ZhLf7Tr+sEbP1CHbfD//1AviqRy8yJa2INZG?=
 =?us-ascii?Q?jiZtMnNLtMoy2CgvFerQjkTH6n458wYYxqUHvaQVM2hDQlQazF7ncwGDaf2w?=
 =?us-ascii?Q?XKV7AyUosNiZfJpVzNm4upwnlCGl1btuB0RKb+YXQ7D5WqXaA5FFWyJOG63u?=
 =?us-ascii?Q?V4O6PNYByoy2RnFv5eiRYD0JvEe2Q6KWpxDEGCO2gDYbVWARM8GUxsFUPLcx?=
 =?us-ascii?Q?W8odlQd1/FMnfUzvN89OEvjN8jinaI/RD4wG7TUuw99CPDuL1cezrGv70Vk4?=
 =?us-ascii?Q?pc9F44yg6BX4pPIG+8c0WPUO7TrTosWUnsUnedxSTu6JzSqFimGSqjlf4a6t?=
 =?us-ascii?Q?R6auVurgX9EdCbE+P2Zqwcrok5rP0yK3ovLoydCcQLXO/iinihQej/yZWSko?=
 =?us-ascii?Q?ffESgtGqzpwyhYusriaqtjMZRlzZcjL+guxBgUoNpQWvnyUFpWzwzxGmUoIv?=
 =?us-ascii?Q?35JYVhC7Yp2S5uX6WOeUGm8NJiQdevJ9q1Di6cIdraeLaIdyCeLFCo57JpO3?=
 =?us-ascii?Q?65PVX483XFtvg+H4eLeY0H/KStzU2Rf2KT4GrovgS1UlxPaxrPMwZbwMa9G3?=
 =?us-ascii?Q?4jrd1/xyA7n+zFbUcf0uUOA6aQIzDEskvcslJsU5+DylaKQLDp5EHnlsJUH6?=
 =?us-ascii?Q?C261X1KmkGk2FFD7kv0teo3sOLZ+S6emUp7EI6sGkMo0543bI+dCbDeDZCb2?=
 =?us-ascii?Q?SplLfeSnw2U7zvFVDkemfLmc8MIqOpEe0eOQb06GKGWq7RHkQTHjwgCoG9XT?=
 =?us-ascii?Q?0ANRPA27jd8/y4bL9b61f1uGPn2OcEGTnftmrSqN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67f94ea6-f13f-4b89-d2db-08dadcf670b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2022 10:40:23.6907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZPPLI8zKgeog5/nAWgXnPzMblV7jfyfaayNNNrMU7KozLkzuL04RTPCpJ7TRKFFEHjQI+G5JSmtdcelwjoufpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6712
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915/hdcp: Keep cp fw agonstic
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

>=20
> If you want to make an hdcp interface naming agnostic to the implementati=
on
> details, why do we have to have "fw" in the naming, at all?
>=20
> Why is "cp" duplicated?
>=20
> You're calling the file "i915 Content Protection Firmware High-bandwidth =
Digital
> Content Protection Interface".
>=20
> Why are the names *impossible* to pronounce?
>=20
> I'd just make this "i915_hdcp_interface".
>=20
Makes sense switching too i915_hdcp_interface and removing the duplicated
cp and fw

Regards,
Suraj Kandpal
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
> > Acked-by: Tomas Winkler <tomas.winkler@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_types.h          | 2 +-
> >  drivers/misc/mei/hdcp/mei_hdcp.c                            | 2 +-
> >  ...915_mei_hdcp_interface.h =3D> i915_cp_fw_hdcp_interface.h} | 6
> > +++---
> >  3 files changed, 5 insertions(+), 5 deletions(-)  rename
> > include/drm/{i915_mei_hdcp_interface.h =3D> i915_cp_fw_hdcp_interface.h=
}
> > (97%)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 32e8b2fc3cc6..52d93e89b4c6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -43,7 +43,7 @@
> >  #include <drm/drm_rect.h>
> >  #include <drm/drm_vblank.h>
> >  #include <drm/drm_vblank_work.h>
> > -#include <drm/i915_mei_hdcp_interface.h>
> > +#include <drm/i915_cp_fw_hdcp_interface.h>
> >  #include <media/cec-notifier.h>
> >
> >  #include "i915_vma.h"
> > diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c
> > b/drivers/misc/mei/hdcp/mei_hdcp.c
> > index e889a8bd7ac8..7e3cd3fd7f7b 100644
> > --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> > +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> > @@ -23,7 +23,7 @@
> >  #include <linux/component.h>
> >  #include <drm/drm_connector.h>
> >  #include <drm/i915_component.h>
> > -#include <drm/i915_mei_hdcp_interface.h>
> > +#include <drm/i915_cp_fw_hdcp_interface.h>
> >
> >  #include "mei_hdcp.h"
> >
> > diff --git a/include/drm/i915_mei_hdcp_interface.h
> > b/include/drm/i915_cp_fw_hdcp_interface.h
> > similarity index 97%
> > rename from include/drm/i915_mei_hdcp_interface.h
> > rename to include/drm/i915_cp_fw_hdcp_interface.h
> > index f441cbcd95a4..e5dc6b985b2f 100644
> > --- a/include/drm/i915_mei_hdcp_interface.h
> > +++ b/include/drm/i915_cp_fw_hdcp_interface.h
> > @@ -6,8 +6,8 @@
> >   * Ramalingam C <ramalingam.c@intel.com>
> >   */
> >
> > -#ifndef _I915_MEI_HDCP_INTERFACE_H_
> > -#define _I915_MEI_HDCP_INTERFACE_H_
> > +#ifndef _I915_CP_FW_HDCP_INTERFACE_H_ #define
> > +_I915_CP_FW_HDCP_INTERFACE_H_
> >
> >  #include <linux/mutex.h>
> >  #include <linux/device.h>
> > @@ -181,4 +181,4 @@ struct i915_hdcp_comp_master {
> >  	struct mutex mutex;
> >  };
> >
> > -#endif /* _I915_MEI_HDCP_INTERFACE_H_ */
> > +#endif /* _I915_CP_FW_HDCP_INTERFACE_H_ */
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center

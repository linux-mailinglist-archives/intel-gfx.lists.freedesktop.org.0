Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC9F657308
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 07:05:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B7A10E1A4;
	Wed, 28 Dec 2022 06:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81DF010E1A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 06:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672207469; x=1703743469;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=00AE84PF8b3BCjS55P7+So7Z7yT7xBAk4daPymeNjoE=;
 b=O8gQ6bZsLv/Chp4dLjpTBrfMcywDL/MrXO9NLFSUaEGrddmxBofTKVCA
 RJvlZrizr6yhNy+ENRn2spbZhP0lp0gKhKI2s8w/uCDqgqxFTvch48gCp
 O+qgwPZyokkpTjTORmshh8kQ8jcnBYXiLyjZl6/mbc1/syr4U4P9INimB
 z6JpHM4zObXAU5nFV727eUqn80G8hYveWDc4AL30ll5IsFommBX09PXns
 LqvR37OvnPeVh9Xdgbyt3RvwRc2SPvJJMUR06Xd0WN79ur4fTed85Srcy
 nCJQudufdvgQNrgmrf5TwhDV4cdVibSB7yrKJkRNItUI2AErPDHCGVUhQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="304313021"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="304313021"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2022 22:04:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="721696465"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="721696465"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 27 Dec 2022 22:04:20 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 27 Dec 2022 22:04:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 27 Dec 2022 22:04:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 27 Dec 2022 22:04:19 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 27 Dec 2022 22:04:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b67Gib61qJOLN10w+L3C24F+NrmAi5o+16Xf6+FjZyA0rnUQfEFmcGt2raQSL+8rPhqNEEirNIy5duiE4vFpiJ4YrBDh0XYTB7ZQPxSy4PfxH8BgXC7niuVhR6Gbmq1D9kBsTz9aHhAVYLKZzLHSGzyrsDbcgmMq0rzRzJ3vDghO8tM8shjzd0nD14LLyHDtFoRqaK5gdSozvdVgltft6Ghdq0aZWSPZ9bI3xeBY9YVvcFvCsPjgDS6cmshsr0ctDBJEf0jGtATAjtzmlWOe9qGMT9dw8mBTrwV3QdPRrTXg/2DoOL8DXo3kZAhrnspIlE6Y9qeGU3393JxN6yPHVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bv5OQypOL9+bht6BYzz1z7TRz4Eh5Wif0ZymPPYSJjE=;
 b=PZLd2ETCIzBl3syqjl13y2NkEq5T75LWMCc4LFxrnqNxuVLFfdKdVC6JbO/TQGSKZGbEcMRq0wXFQDqPD8zzverc5dU88rcfPPmu1zvoO3KIGFeGlT3Q5TayelMKze6Ffq0skjmWsaX0ZNt3OBFOnQ3fQV87ErPQzxCjmL7yCuiiJlYN4qHR/4n9JeVMvNgdJvnzlW2wsCEZjTTqVJcLkcM2K5DMEDyWBiVwDswQ6LEy1Its3dLaBBHHch8+XMYytx7rqjkxC/HIYPxZFHzkaAJovqiA1stx+gvi1Mxlo7h9DXI9JxYas53sSuDdB5mhJdJBigK9RM30Ggq6lr1ZCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by PH7PR11MB7593.namprd11.prod.outlook.com (2603:10b6:510:27f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Wed, 28 Dec
 2022 06:04:16 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77%7]) with mapi id 15.20.5944.016; Wed, 28 Dec 2022
 06:04:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 5/7] drm/i915/hdcp: Fill wired_cmd_in structures at a
 single place
Thread-Index: AQHZFdD6IFmYnSqckUuPDm6q6a9bEK6B+awAgADeeSA=
Date: Wed, 28 Dec 2022 06:04:14 +0000
Message-ID: <MWHPR11MB1741C508AA124314995BEBB5E3F29@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20221222064355.3642557-1-suraj.kandpal@intel.com>
 <20221222064355.3642557-6-suraj.kandpal@intel.com> <87edsk23t7.fsf@intel.com>
In-Reply-To: <87edsk23t7.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|PH7PR11MB7593:EE_
x-ms-office365-filtering-correlation-id: acfe2b26-a9f3-4754-a98d-08dae8995916
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A/illiJ1Li+D9E8vNw2etsLUTnVninj4QEjYckAPhGpLx18mrFm8PoCsynyI+hxc3TcjiIF7NLsojdyqP4lkKxKW5rg7AI9jrhg5gnOsJS6tO7kgdnXZKN630ICb1TE428CMoUU9enfcAo8BQ+NJZxkFzTPtA8rIL2bpn362YDhHzQwax2KK84pZ0ICZa2jslBT+pC6v11rJRlk20Td1nTexlWbdiCE+7k829PrxEnmIbwBDWjmEeaxHq19J8vktDw3cGG7H9f1oPWyh26BMlbJ0/DfRE9wXNo64i9iF3ihwP5QtflHyFztpIvTBjNEST33oup5oOI8Ej6VmgvyRoOkf8FSGlpmS7dmLzl0okfrPb3UTYU4SHz3zXUXqN4c4FJqXDrTfJxyq5Qg5xutKG5GTX7AFEXp9zGzEkN1aNZkjgmjfHvQbWTDcdX1nkH9bB/bFk+s8DaM+8Z+dks7hDX2Pud/F298DyhJBuNP9AF+x9x7WJ5cKVJJSNM2s/bC4zO7hEXUxwqYTfZwsTvQdhylJRRupFWf5prYUL88WIYWQaQQDfuF71XHSEzBYxqb85e430lr4+N0aI7+z56K0cntMQh/6nURKYbjNs1WSq8tyolPEb4vg29KHLuZYKh8UaZ7fprWNnjuo3HUjuy8zLzSPMFYZoI86le8SCAo6mKl6XcFFa+zj45+DOjW0IfCy9FEWJ9V1MFjNOwlX9aUk4A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(346002)(136003)(376002)(366004)(451199015)(83380400001)(5660300002)(107886003)(30864003)(2906002)(7696005)(52536014)(8936002)(82960400001)(122000001)(4326008)(66946007)(64756008)(66446008)(66476007)(66556008)(8676002)(76116006)(38100700002)(55016003)(71200400001)(38070700005)(26005)(186003)(33656002)(9686003)(316002)(41300700001)(110136005)(6506007)(478600001)(86362001)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J9WntUgi6Ppttz5ToFyU44j6HAXBCkzJhvYVhb0UfV0LXpqnm8cOfJfrSUjH?=
 =?us-ascii?Q?Y12V4ksKeSokMj6/GP9drg1a+7rc2f5bCBEM50xA0osDsemWHE9dslCoyeTl?=
 =?us-ascii?Q?ANkmTcGMDzeFf/NoCHNMENIU9ImC4daog9ErV8I4HdnZ72QwfgfdAC2wzqLI?=
 =?us-ascii?Q?PR6I2OZ8VjG+b81+z0t0opnZ+P8RmWbM9/Bi9Si+DTfTslr1nbC4ltG1Iq24?=
 =?us-ascii?Q?VWDwHVnHaKxsjoQoN4FMwGI1faRXh/1iPOkfm0ei0TvBUeTI1SxJx+Cs0JXq?=
 =?us-ascii?Q?q7WMCpXin8tjaTZYM07qaPWkaHG9qRbXF6Kc4CVdQXawLvLxWXzDzXTgFsul?=
 =?us-ascii?Q?GOJprcSyZtttGXKdUYuiiT8CKbavKW5EhjAT2dJbX6EP7+81c24ViS0Rmo1E?=
 =?us-ascii?Q?N1nkGLWuaVDyWQUElYgAdPXwg7hB649G+uWWKV+GCZA1Uin9m7AzNd0YPv0B?=
 =?us-ascii?Q?mj/OZlaIUT86NxjFdhe/xrTQiRsw+4StS0hsxyUV2sgJOLIoVKRJm0pe4u7z?=
 =?us-ascii?Q?SArHeW76wIPO47EoZfwWeI3NicvVBCZTgur7kzgG7yyKRSM+hma4h1T9itCz?=
 =?us-ascii?Q?2w8PTZ6ulB8jLw/Xbooic0/46+F0kg9aa0oYfr8DqKA3iKCdFKFnmBbOd/nt?=
 =?us-ascii?Q?DhdoCEpipsDrp4qKF9wArVWmjur9gXcBS8Hm3L1IqHphl28SaC+26fcX3GP+?=
 =?us-ascii?Q?hXlA9KBgJYqQVW4bOWvd9qArH0HV6WA6msDx4DXglJ835r1lgGvIZpPCNe/U?=
 =?us-ascii?Q?8zFbyjV75ZvRd6vPV2eQ1+DUNKOQ/6o/1aQrrHbnrchg3N66FkW9KYd6E7MU?=
 =?us-ascii?Q?TpXj2RMJ51+JfdRJirx36VvkD4o09dz3OfRmvpP04dM9WNC/a9ntqp2n65Bz?=
 =?us-ascii?Q?z64BWdMjw5Hm9EFyUq3kGsGRsIGi3DcbJIx3J983kV6m+o4DT0XO0Pl+5P6H?=
 =?us-ascii?Q?s27GhREGI99AyQyDvBUZrAsbUJ/w+KR/XmxqMn2vUw8HBcJ4m+UiEbHVtmBk?=
 =?us-ascii?Q?UQuyu9hY6J8JJYUyxyiMkBmVGPZLTViAhaMGPogsNHMIlrwP5W2y7obbwzTQ?=
 =?us-ascii?Q?Vx1Vk7/sgOUV2Yi658XnVnf3iIyG+X5u8WmubWmBn0oEFvmf9phWBrn6xUSq?=
 =?us-ascii?Q?roDM9suTWBEz1XBAQdnGBj4juzv6HWPZN/cCwBl2SeQs7UzhDKFW+7wRLXuw?=
 =?us-ascii?Q?RW/XuJoqANKGh6YAhRhZ1YMlcCZaO8ch+VhoW6TjYOmryLBpekBNwZx1cCFw?=
 =?us-ascii?Q?9ft7GRJj8xUNvV0yWPlnmpJUV3eApCHw7w24a/I40SnLdY+ORTcoCvAsZmA9?=
 =?us-ascii?Q?B0AmZ0QDUfJ9KymggVOZsjdDNa5SlAfgsOhrYUHe05RWQWwOaettYS2P3hBh?=
 =?us-ascii?Q?nKEKX7Bd5BhNpP6RPzwNCne68cNybW18JplC/yQGQ9tYjdZ/VaRqDKJRg/wH?=
 =?us-ascii?Q?iZ61fbYo6poryX1jPESzWGEHXHK8DbhAc4K++PAK3A7jvQjiNr6Us3WxYilP?=
 =?us-ascii?Q?EE7WLg4d5pwzvb2dgNbzyKd1HJY42aMSwUF30Fdqc7Sor27FVo8oOpDGsh7j?=
 =?us-ascii?Q?8/zH4kuGYMdvPY1dcD7K8mfzb/Ozhco8B1RD9WGB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acfe2b26-a9f3-4754-a98d-08dae8995916
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Dec 2022 06:04:14.8175 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BOdLf9pby6/JUWpbhpXWIkyHpwM+a9GEm3MapCHttz+yJG6F1CXz5Qw4OsdWLDE8yYMSPM+wcTBa3nHoYfZ3+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7593
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 5/7] drm/i915/hdcp: Fill wired_cmd_in
 structures at a single place
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

>=20
> On Thu, 22 Dec 2022, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Need to fill wired cmd in structures at a single place as they remain
> > same for both gsc and mei.
>=20
> It's probably a good idea to have them in a single place, but there's rea=
lly no
> reason for that place to be part of i915 at all.
>=20
> None of the functions are about i915.
>=20
> Feels weird to have MEI HDCP call back to i915. It's supposed to be the g=
lue layer
> between i915 and ME FW. Maybe the abstractions are wrong?

So here none of the functions are being called by i915 but going forward if=
 you refer to patch 7
In this series intel_hdcp_gsc.c has functions that call these fillers hence=
 I decided to keep this a part
of i915

Regards,
Suraj Kandpal
>=20
> We currently have a total of 5 exported symbols, and I'd prefer to keep i=
t that
> way.
>=20
>=20
> BR,
> Jani.
>=20
>=20
> >
> > --v3
> > -remove inline function from header [Jani]
> >
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile              |   1 +
> >  drivers/gpu/drm/i915/i915_hdcp_interface.c | 216 +++++++++++++++++++++
> >  drivers/misc/mei/hdcp/mei_hdcp.c           | 153 ++-------------
> >  include/drm/i915_hdcp_interface.h          |  39 ++++
> >  4 files changed, 270 insertions(+), 139 deletions(-)  create mode
> > 100644 drivers/gpu/drm/i915/i915_hdcp_interface.c
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile
> > b/drivers/gpu/drm/i915/Makefile index 5b5df71cb5d7..b0b2a47455df
> > 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -36,6 +36,7 @@ i915-y +=3D i915_driver.o \
> >  	  i915_drm_client.o \
> >  	  i915_config.o \
> >  	  i915_getparam.o \
> > +	  i915_hdcp_interface.o\
> >  	  i915_ioctl.o \
> >  	  i915_irq.o \
> >  	  i915_mitigations.o \
> > diff --git a/drivers/gpu/drm/i915/i915_hdcp_interface.c
> > b/drivers/gpu/drm/i915/i915_hdcp_interface.c
> > new file mode 100644
> > index 000000000000..e6b787c2fa50
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/i915_hdcp_interface.c
> > @@ -0,0 +1,216 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright 2022, Intel Corporation.
> > + */
> > +
> > +#include <drm/i915_hdcp_interface.h>
> > +
> > +void
> > +i915_hdcp_fill_session_in(struct wired_cmd_initiate_hdcp2_session_in
> *session_init_in,
> > +			  struct hdcp_port_data *data)
> > +{
> > +	session_init_in->header.api_version =3D HDCP_API_VERSION;
> > +	session_init_in->header.command_id =3D
> WIRED_INITIATE_HDCP2_SESSION;
> > +	session_init_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	session_init_in->header.buffer_len =3D
> > +
> 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> > +
> > +	session_init_in->port.integrated_port_type =3D data->port_type;
> > +	session_init_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	session_init_in->port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > +	session_init_in->protocol =3D data->protocol; }
> > +EXPORT_SYMBOL(i915_hdcp_fill_session_in);
> > +
> > +void
> > +i915_hdcp_fill_rxcert_in(struct wired_cmd_verify_receiver_cert_in
> *verify_rxcert_in,
> > +			 struct hdcp2_ake_send_cert *rx_cert,
> > +			 struct hdcp_port_data *data)
> > +{
> > +	verify_rxcert_in->header.api_version =3D HDCP_API_VERSION;
> > +	verify_rxcert_in->header.command_id =3D
> WIRED_VERIFY_RECEIVER_CERT;
> > +	verify_rxcert_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_rxcert_in->header.buffer_len =3D
> > +
> 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> > +
> > +	verify_rxcert_in->port.integrated_port_type =3D data->port_type;
> > +	verify_rxcert_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_rxcert_in->port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	verify_rxcert_in->cert_rx =3D rx_cert->cert_rx;
> > +	memcpy(verify_rxcert_in->r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> > +	memcpy(verify_rxcert_in->rx_caps, rx_cert->rx_caps,
> > +HDCP_2_2_RXCAPS_LEN); } EXPORT_SYMBOL(i915_hdcp_fill_rxcert_in);
> > +
> > +void
> > +i915_hdcp_fill_hprime_in(struct wired_cmd_ake_send_hprime_in
> *send_hprime_in,
> > +			 struct hdcp2_ake_send_hprime *rx_hprime,
> > +			 struct hdcp_port_data *data)
> > +{
> > +	send_hprime_in->header.api_version =3D HDCP_API_VERSION;
> > +	send_hprime_in->header.command_id =3D WIRED_AKE_SEND_HPRIME;
> > +	send_hprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	send_hprime_in->header.buffer_len =3D
> > +WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> > +
> > +	send_hprime_in->port.integrated_port_type =3D data->port_type;
> > +	send_hprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	send_hprime_in->port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	memcpy(send_hprime_in->h_prime, rx_hprime->h_prime,
> > +	       HDCP_2_2_H_PRIME_LEN);
> > +}
> > +EXPORT_SYMBOL(i915_hdcp_fill_hprime_in);
> > +
> > +void
> > +i915_hdcp_fill_pairing_info_in(struct wired_cmd_ake_send_pairing_info_=
in
> *pairing_info_in,
> > +			       struct hdcp2_ake_send_pairing_info *pairing_info,
> > +			       struct hdcp_port_data *data) {
> > +	pairing_info_in->header.api_version =3D HDCP_API_VERSION;
> > +	pairing_info_in->header.command_id =3D
> WIRED_AKE_SEND_PAIRING_INFO;
> > +	pairing_info_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	pairing_info_in->header.buffer_len =3D
> > +
> 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> > +
> > +	pairing_info_in->port.integrated_port_type =3D data->port_type;
> > +	pairing_info_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	pairing_info_in->port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	memcpy(pairing_info_in->e_kh_km, pairing_info->e_kh_km,
> > +	       HDCP_2_2_E_KH_KM_LEN);
> > +}
> > +EXPORT_SYMBOL(i915_hdcp_fill_pairing_info_in);
> > +
> > +void
> > +i915_hdcp_fill_locality_check_in(struct wired_cmd_init_locality_check_=
in
> *lc_init_in,
> > +				 struct hdcp_port_data *data)
> > +{
> > +	lc_init_in->header.api_version =3D HDCP_API_VERSION;
> > +	lc_init_in->header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
> > +	lc_init_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	lc_init_in->header.buffer_len =3D
> > +WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> > +
> > +	lc_init_in->port.integrated_port_type =3D data->port_type;
> > +	lc_init_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	lc_init_in->port.attached_transcoder =3D (u8)data->hdcp_transcoder; }
> > +EXPORT_SYMBOL(i915_hdcp_fill_locality_check_in);
> > +
> > +void
> > +i915_hdcp_fill_validate_locality_in(struct wired_cmd_validate_locality=
_in
> *verify_lprime_in,
> > +				    struct hdcp2_lc_send_lprime *rx_lprime,
> > +				    struct hdcp_port_data *data)
> > +{
> > +	verify_lprime_in->header.api_version =3D HDCP_API_VERSION;
> > +	verify_lprime_in->header.command_id =3D WIRED_VALIDATE_LOCALITY;
> > +	verify_lprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_lprime_in->header.buffer_len =3D
> > +
> 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> > +
> > +	verify_lprime_in->port.integrated_port_type =3D data->port_type;
> > +	verify_lprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_lprime_in->port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	memcpy(verify_lprime_in->l_prime, rx_lprime->l_prime,
> > +	       HDCP_2_2_L_PRIME_LEN);
> > +}
> > +EXPORT_SYMBOL(i915_hdcp_fill_validate_locality_in);
> > +
> > +void
> > +i915_hdcp_fill_session_key_in(struct wired_cmd_get_session_key_in
> *get_skey_in,
> > +			      struct hdcp_port_data *data) {
> > +	get_skey_in->header.api_version =3D HDCP_API_VERSION;
> > +	get_skey_in->header.command_id =3D WIRED_GET_SESSION_KEY;
> > +	get_skey_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	get_skey_in->header.buffer_len =3D
> > +WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> > +
> > +	get_skey_in->port.integrated_port_type =3D data->port_type;
> > +	get_skey_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	get_skey_in->port.attached_transcoder =3D (u8)data->hdcp_transcoder; =
}
> > +EXPORT_SYMBOL(i915_hdcp_fill_session_key_in);
> > +
> > +void
> > +i915_hdcp_fill_repeater_in(struct wired_cmd_verify_repeater_in
> *verify_repeater_in,
> > +			   struct hdcp2_rep_send_receiverid_list
> *rep_topology,
> > +			   struct hdcp_port_data *data)
> > +{
> > +	verify_repeater_in->header.api_version =3D HDCP_API_VERSION;
> > +	verify_repeater_in->header.command_id =3D WIRED_VERIFY_REPEATER;
> > +	verify_repeater_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_repeater_in->header.buffer_len =3D
> > +				WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> > +
> > +	verify_repeater_in->port.integrated_port_type =3D data->port_type;
> > +	verify_repeater_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_repeater_in->port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	memcpy(verify_repeater_in->rx_info, rep_topology->rx_info,
> > +	       HDCP_2_2_RXINFO_LEN);
> > +	memcpy(verify_repeater_in->seq_num_v, rep_topology->seq_num_v,
> > +	       HDCP_2_2_SEQ_NUM_LEN);
> > +	memcpy(verify_repeater_in->v_prime, rep_topology->v_prime,
> > +	       HDCP_2_2_V_PRIME_HALF_LEN);
> > +	memcpy(verify_repeater_in->receiver_ids, rep_topology->receiver_ids,
> > +	       HDCP_2_2_RECEIVER_IDS_MAX_LEN); }
> > +EXPORT_SYMBOL(i915_hdcp_fill_repeater_in);
> > +
> > +void
> > +i915_hdcp_fill_auth_stream_req_in(struct
> wired_cmd_repeater_auth_stream_req_in *verify_mprime_in,
> > +				  struct hdcp2_rep_stream_ready
> *stream_ready, ssize_t cmd_size,
> > +				  struct hdcp_port_data *data)
> > +{
> > +	verify_mprime_in->header.api_version =3D HDCP_API_VERSION;
> > +	verify_mprime_in->header.command_id =3D
> WIRED_REPEATER_AUTH_STREAM_REQ;
> > +	verify_mprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_mprime_in->header.buffer_len =3D cmd_size  -
> > +sizeof(verify_mprime_in->header);
> > +
> > +	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> > +	verify_mprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_mprime_in->port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> HDCP_2_2_MPRIME_LEN);
> > +	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data-
> >seq_num_m);
> > +
> > +	memcpy(verify_mprime_in->streams, data->streams,
> > +	       array_size(data->k, sizeof(*data->streams)));
> > +
> > +	verify_mprime_in->k =3D cpu_to_be16(data->k); }
> > +EXPORT_SYMBOL(i915_hdcp_fill_auth_stream_req_in);
> > +
> > +void
> > +i915_hdcp_fill_enable_auth_in(struct wired_cmd_enable_auth_in
> *enable_auth_in,
> > +			      struct hdcp_port_data *data) {
> > +	enable_auth_in->header.api_version =3D HDCP_API_VERSION;
> > +	enable_auth_in->header.command_id =3D WIRED_ENABLE_AUTH;
> > +	enable_auth_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	enable_auth_in->header.buffer_len =3D
> > +WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> > +
> > +	enable_auth_in->port.integrated_port_type =3D data->port_type;
> > +	enable_auth_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	enable_auth_in->port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > +	enable_auth_in->stream_type =3D data->streams[0].stream_type; }
> > +EXPORT_SYMBOL(i915_hdcp_fill_enable_auth_in);
> > +
> > +void
> > +i915_hdcp_fill_close_session_in(struct wired_cmd_close_session_in
> *session_close_in,
> > +				struct hdcp_port_data *data)
> > +{
> > +	session_close_in->header.api_version =3D HDCP_API_VERSION;
> > +	session_close_in->header.command_id =3D WIRED_CLOSE_SESSION;
> > +	session_close_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	session_close_in->header.buffer_len =3D
> > +				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> > +
> > +	session_close_in->port.integrated_port_type =3D data->port_type;
> > +	session_close_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	session_close_in->port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder; }
> > +EXPORT_SYMBOL(i915_hdcp_fill_close_session_in);
> > +
> > diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c
> > b/drivers/misc/mei/hdcp/mei_hdcp.c
> > index d4faecbbbe76..2cf42e98dfae 100644
> > --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> > +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> > @@ -50,17 +50,7 @@ mei_hdcp_initiate_session(struct device *dev,
> > struct hdcp_port_data *data,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	session_init_in.header.api_version =3D HDCP_API_VERSION;
> > -	session_init_in.header.command_id =3D
> WIRED_INITIATE_HDCP2_SESSION;
> > -	session_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	session_init_in.header.buffer_len =3D
> > -
> 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> > -
> > -	session_init_in.port.integrated_port_type =3D data->port_type;
> > -	session_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > -	session_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcode=
r;
> > -	session_init_in.protocol =3D data->protocol;
> > -
> > +	i915_hdcp_fill_session_in(&session_init_in, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&session_init_in,
> >  			      sizeof(session_init_in));
> >  	if (byte < 0) {
> > @@ -119,21 +109,7 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct
> device *dev,
> >  		return -EINVAL;
> >
> >  	cldev =3D to_mei_cl_device(dev);
> > -
> > -	verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
> > -	verify_rxcert_in.header.command_id =3D WIRED_VERIFY_RECEIVER_CERT;
> > -	verify_rxcert_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	verify_rxcert_in.header.buffer_len =3D
> > -
> 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> > -
> > -	verify_rxcert_in.port.integrated_port_type =3D data->port_type;
> > -	verify_rxcert_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > -	verify_rxcert_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > -
> > -	verify_rxcert_in.cert_rx =3D rx_cert->cert_rx;
> > -	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> > -	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps,
> HDCP_2_2_RXCAPS_LEN);
> > -
> > +	i915_hdcp_fill_rxcert_in(&verify_rxcert_in, rx_cert, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&verify_rxcert_in,
> >  			      sizeof(verify_rxcert_in));
> >  	if (byte < 0) {
> > @@ -192,18 +168,7 @@ mei_hdcp_verify_hprime(struct device *dev, struct
> > hdcp_port_data *data,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	send_hprime_in.header.api_version =3D HDCP_API_VERSION;
> > -	send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
> > -	send_hprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	send_hprime_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> > -
> > -	send_hprime_in.port.integrated_port_type =3D data->port_type;
> > -	send_hprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > -	send_hprime_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > -
> > -	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
> > -	       HDCP_2_2_H_PRIME_LEN);
> > -
> > +	i915_hdcp_fill_hprime_in(&send_hprime_in, rx_hprime, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&send_hprime_in,
> >  			      sizeof(send_hprime_in));
> >  	if (byte < 0) {
> > @@ -248,20 +213,8 @@ mei_hdcp_store_pairing_info(struct device *dev,
> struct hdcp_port_data *data,
> >  		return -EINVAL;
> >
> >  	cldev =3D to_mei_cl_device(dev);
> > -
> > -	pairing_info_in.header.api_version =3D HDCP_API_VERSION;
> > -	pairing_info_in.header.command_id =3D
> WIRED_AKE_SEND_PAIRING_INFO;
> > -	pairing_info_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	pairing_info_in.header.buffer_len =3D
> > -
> 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> > -
> > -	pairing_info_in.port.integrated_port_type =3D data->port_type;
> > -	pairing_info_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > -	pairing_info_in.port.attached_transcoder =3D (u8)data->hdcp_transcode=
r;
> > -
> > -	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
> > -	       HDCP_2_2_E_KH_KM_LEN);
> > -
> > +	i915_hdcp_fill_pairing_info_in(&pairing_info_in, pairing_info,
> > +				       data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&pairing_info_in,
> >  			      sizeof(pairing_info_in));
> >  	if (byte < 0) {
> > @@ -309,15 +262,7 @@ mei_hdcp_initiate_locality_check(struct device
> > *dev,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	lc_init_in.header.api_version =3D HDCP_API_VERSION;
> > -	lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
> > -	lc_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	lc_init_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> > -
> > -	lc_init_in.port.integrated_port_type =3D data->port_type;
> > -	lc_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > -	lc_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
> > -
> > +	i915_hdcp_fill_locality_check_in(&lc_init_in, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init_in))=
;
> >  	if (byte < 0) {
> >  		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte); @@ -
> 364,19
> > +309,8 @@ mei_hdcp_verify_lprime(struct device *dev, struct
> > hdcp_port_data *data,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
> > -	verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
> > -	verify_lprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	verify_lprime_in.header.buffer_len =3D
> > -
> 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> > -
> > -	verify_lprime_in.port.integrated_port_type =3D data->port_type;
> > -	verify_lprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > -	verify_lprime_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > -
> > -	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
> > -	       HDCP_2_2_L_PRIME_LEN);
> > -
> > +	i915_hdcp_fill_validate_locality_in(&verify_lprime_in, rx_lprime,
> > +					    data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&verify_lprime_in,
> >  			      sizeof(verify_lprime_in));
> >  	if (byte < 0) {
> > @@ -423,15 +357,7 @@ static int mei_hdcp_get_session_key(struct device
> > *dev,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	get_skey_in.header.api_version =3D HDCP_API_VERSION;
> > -	get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY;
> > -	get_skey_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	get_skey_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> > -
> > -	get_skey_in.port.integrated_port_type =3D data->port_type;
> > -	get_skey_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > -	get_skey_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
> > -
> > +	i915_hdcp_fill_session_key_in(&get_skey_in, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&get_skey_in,
> sizeof(get_skey_in));
> >  	if (byte < 0) {
> >  		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte); @@ -
> 487,25
> > +413,7 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
> > -	verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
> > -	verify_repeater_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	verify_repeater_in.header.buffer_len =3D
> > -
> 	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> > -
> > -	verify_repeater_in.port.integrated_port_type =3D data->port_type;
> > -	verify_repeater_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > -	verify_repeater_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > -
> > -	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
> > -	       HDCP_2_2_RXINFO_LEN);
> > -	memcpy(verify_repeater_in.seq_num_v, rep_topology->seq_num_v,
> > -	       HDCP_2_2_SEQ_NUM_LEN);
> > -	memcpy(verify_repeater_in.v_prime, rep_topology->v_prime,
> > -	       HDCP_2_2_V_PRIME_HALF_LEN);
> > -	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
> > -	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
> > -
> > +	i915_hdcp_fill_repeater_in(&verify_repeater_in, rep_topology, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&verify_repeater_in,
> >  			      sizeof(verify_repeater_in));
> >  	if (byte < 0) {
> > @@ -566,23 +474,8 @@ static int mei_hdcp_verify_mprime(struct device *d=
ev,
> >  	if (!verify_mprime_in)
> >  		return -ENOMEM;
> >
> > -	verify_mprime_in->header.api_version =3D HDCP_API_VERSION;
> > -	verify_mprime_in->header.command_id =3D
> WIRED_REPEATER_AUTH_STREAM_REQ;
> > -	verify_mprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	verify_mprime_in->header.buffer_len =3D cmd_size  -
> sizeof(verify_mprime_in->header);
> > -
> > -	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> > -	verify_mprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > -	verify_mprime_in->port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > -
> > -	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> HDCP_2_2_MPRIME_LEN);
> > -	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data-
> >seq_num_m);
> > -
> > -	memcpy(verify_mprime_in->streams, data->streams,
> > -	       array_size(data->k, sizeof(*data->streams)));
> > -
> > -	verify_mprime_in->k =3D cpu_to_be16(data->k);
> > -
> > +	i915_hdcp_fill_auth_stream_req_in(verify_mprime_in, stream_ready,
> > +					  cmd_size, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)verify_mprime_in, cmd_size);
> >  	kfree(verify_mprime_in);
> >  	if (byte < 0) {
> > @@ -628,16 +521,7 @@ static int mei_hdcp_enable_authentication(struct
> > device *dev,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	enable_auth_in.header.api_version =3D HDCP_API_VERSION;
> > -	enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH;
> > -	enable_auth_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	enable_auth_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> > -
> > -	enable_auth_in.port.integrated_port_type =3D data->port_type;
> > -	enable_auth_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > -	enable_auth_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > -	enable_auth_in.stream_type =3D data->streams[0].stream_type;
> > -
> > +	i915_hdcp_fill_enable_auth_in(&enable_auth_in, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&enable_auth_in,
> >  			      sizeof(enable_auth_in));
> >  	if (byte < 0) {
> > @@ -682,16 +566,7 @@ mei_hdcp_close_session(struct device *dev, struct
> > hdcp_port_data *data)
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	session_close_in.header.api_version =3D HDCP_API_VERSION;
> > -	session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
> > -	session_close_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	session_close_in.header.buffer_len =3D
> > -				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> > -
> > -	session_close_in.port.integrated_port_type =3D data->port_type;
> > -	session_close_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > -	session_close_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > -
> > +	i915_hdcp_fill_close_session_in(&session_close_in, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&session_close_in,
> >  			      sizeof(session_close_in));
> >  	if (byte < 0) {
> > diff --git a/include/drm/i915_hdcp_interface.h
> > b/include/drm/i915_hdcp_interface.h
> > index a92925cd1eae..9952bf78d4f7 100644
> > --- a/include/drm/i915_hdcp_interface.h
> > +++ b/include/drm/i915_hdcp_interface.h
> > @@ -536,4 +536,43 @@ struct wired_cmd_repeater_auth_stream_req_out {
> >  	struct hdcp_port_id	port;
> >  } __packed;
> >
> > +void
> > +i915_hdcp_fill_session_in(struct wired_cmd_initiate_hdcp2_session_in
> *session_init_in,
> > +			  struct hdcp_port_data *data);
> > +void
> > +i915_hdcp_fill_rxcert_in(struct wired_cmd_verify_receiver_cert_in
> *verify_rxcert_in,
> > +			 struct hdcp2_ake_send_cert *rx_cert,
> > +			 struct hdcp_port_data *data);
> > +void
> > +i915_hdcp_fill_hprime_in(struct wired_cmd_ake_send_hprime_in
> *send_hprime_in,
> > +			 struct hdcp2_ake_send_hprime *rx_hprime,
> > +			 struct hdcp_port_data *data);
> > +void
> > +i915_hdcp_fill_pairing_info_in(struct wired_cmd_ake_send_pairing_info_=
in
> *pairing_info_in,
> > +			       struct hdcp2_ake_send_pairing_info *pairing_info,
> > +			       struct hdcp_port_data *data); void
> > +i915_hdcp_fill_locality_check_in(struct wired_cmd_init_locality_check_=
in
> *lc_init_in,
> > +				 struct hdcp_port_data *data);
> > +void
> > +i915_hdcp_fill_validate_locality_in(struct wired_cmd_validate_locality=
_in
> *verify_lprime_in,
> > +				    struct hdcp2_lc_send_lprime *rx_lprime,
> > +				    struct hdcp_port_data *data); void
> > +i915_hdcp_fill_session_key_in(struct wired_cmd_get_session_key_in
> *get_skey_in,
> > +			      struct hdcp_port_data *data); void
> > +i915_hdcp_fill_repeater_in(struct wired_cmd_verify_repeater_in
> *verify_repeater_in,
> > +			   struct hdcp2_rep_send_receiverid_list
> *rep_topology,
> > +			   struct hdcp_port_data *data);
> > +void
> > +i915_hdcp_fill_auth_stream_req_in(struct
> wired_cmd_repeater_auth_stream_req_in *verify_mprime_in,
> > +				  struct hdcp2_rep_stream_ready
> *stream_ready, ssize_t cmd_size,
> > +				  struct hdcp_port_data *data);
> > +void
> > +i915_hdcp_fill_enable_auth_in(struct wired_cmd_enable_auth_in
> *enable_auth_in,
> > +			      struct hdcp_port_data *data); void
> > +i915_hdcp_fill_close_session_in(struct wired_cmd_close_session_in
> *session_close_in,
> > +				struct hdcp_port_data *data);
> >  #endif /* _I915_HDCP_INTERFACE_H_ */
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center

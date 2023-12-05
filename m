Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7C18053B1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 13:00:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42C010E502;
	Tue,  5 Dec 2023 12:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56DFC10E501
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 12:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701777629; x=1733313629;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YNtMG3gzPvbx3/e9N3YQhgz9TfQQOl+diPW1lfO4FJ4=;
 b=Cqsbn1Pkmi0otYcn3hzK5Q8IWHEkteDKEwvY/5SexW6gWaDOxUwS4qpa
 h1gKWEnwr0T6m4WPVOZ/lyseL6lQz63epjfANXeegKhkxeaO49mCrpo0Q
 4EnUFlZmVafzYBIzcQvZ5iHBYx1tuh126Dri4ktkhIzqkz65xHQshnWCW
 tty0xM8w6Ws/svfpTqaQr9f2RrS4p5Yj9DDkr0vPnPqK5BSc+PDIdym6x
 9Uw8iRztnKgXZyNph1wisffN967JkGCCNIYiihGdm/Yk5F17CFEx6+lD7
 MMRJ/uT4zI5tKxI0bwfKEwnRYXEiVGBIkJhUtdl80hqJ6kLAIPHPYXz54 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="7228466"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; 
   d="scan'208";a="7228466"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 04:00:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="770889421"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="770889421"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2023 04:00:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 04:00:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 04:00:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Dec 2023 04:00:26 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 5 Dec 2023 04:00:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fV1ZJfUHxZl+K5gJW15+cV7fWwcbpUxqJNNn1HN3+Ks6QjHMlPz2aa448Epo2ROrkGqQkbheezCEDZLi6JYuYC0OowoHtjHVRkNN/2Mm00w1tlKHOWfRVR3lvHVwpx/tSPicMJyG/LFZ2zBkGfXnYoUKc8BJy39HBjFfPqeWswNwtZtqDfwyjlInAKXz0ypqA5TtujI+vIR9Hl9U7dRj9Pa4h7u5IBasRd3Io6/ehpRYfdxiDbCKKzbr+zT0GKgepWeINgffs6uqwoQg9cyMLJRcjG48g5vjgWvPS2T3OYD+HDjv/5Fi0Z2Eqq5NG6GePBadaxHt/3mPhSFeYijUsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CIPgSyNrTnVkMzzf2qGxXTxLewkJhptIjs3lMSKMGWA=;
 b=Du8PMxTh5ONzwSj89Ogbaoqxf9pGVaGw4xKwN61kp/i3KcpmCtTYjHK4jiPRT3VO0efZkbWGntWBFvDIzc0yxbwowJqvMWOt4Q4B45pEgo/aMf9vYK5NGGbVaDnnfog+RiFPnZeHTyLeB6RrA3wUSWxBu6j1uLDK/ZXb2x+EQysc8Qw/Go9Zfj72RFO62pLjPaqhoBBKymieBnPiAIGmEkpvAotLxRvyk+INUuWdZkqHBc7FKrRdqOiZvPBkgSprw4EcEg0rToox5pUlNwmOuNt7QxHgiUDTut8VjebhTVc5d8KvUNOwYhF1ku5UXzuQZMm1EVqBOjxdyp01JjuRYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.34; Tue, 5 Dec 2023 12:00:24 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21%4]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 12:00:24 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: add SKL/KBL connect-all
 quirks
Thread-Index: AQHaJr1fuPF1elrfc06ubKJB+z68gbCZLgYwgAFphXA=
Date: Tue, 5 Dec 2023 12:00:24 +0000
Message-ID: <DM8PR11MB56556491838B4BDB7A86C018E085A@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20231204140955.2020491-1-kai.vehmanen@linux.intel.com>
 <DM8PR11MB5655E1449D614B116D246720E086A@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB5655E1449D614B116D246720E086A@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|CY5PR11MB6282:EE_
x-ms-office365-filtering-correlation-id: 6a1e7015-b8fe-4562-7a7c-08dbf589c3a9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D4VhofNE8/mJoozFuL0Q4fRKkVao8/O+alZ3Ii7LYBpYo0gxZwxUPc2XKwmFLwliYYogW9WH0dBYVGQdp5pticVzOtfYbaFxyv2/3kzu+VzgEEdqwD1pvr5YLXu/zznIpLxsjJdzRJtpJWlYWn3WOdgamCQuJ7JtUPc4U5PQCmgNVVzrjXrW4jah3SIxrs62jPpSEFa7d3Jyw+OMRTxirDmSlXEg1OiFeb7SCwbMFUGuEhsZ+T8qDYwUED+DRbnvnXpfxNnYBZwYyhDVR8Qz6+v8ENK/q4E8G3ytEWRXTqck26V+cXM3J+9WT6szWHw8JUiyO+sECWyIEJ871CCGwjUBjHBeqdDaO5/PXPArMOn0m4YIONW3yGB66nbqCgCAwIG+UrwUWUTfi72s3Aejn3Por1LXipjHil8WAGoz7CQisIoUG6HHNoZAiOl44C6EOw+69mhRNX/IYetyx5zLx5+nSHiW5MY86ZRv3RefnA4647tg9FpxkNDB/3betm8AWJYZgEgIMXFeHRKdGu5UaOnGXae31BlDJj+K2Ic2sHwcztTeV/e/OKvTdewf2uJCvaVFpFslmCDugUuO4KROKB2lubeJ4tAzAcE8r34xn19BKyOq8fs6aclQAn7lubeRsLXAjr7DUJLYwkUsaSpeyThKYo/rk388p4gPsJpEhrI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(39860400002)(136003)(366004)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(26005)(82960400001)(55016003)(83380400001)(33656002)(122000001)(53546011)(7696005)(6506007)(41300700001)(9686003)(38070700009)(38100700002)(71200400001)(966005)(2906002)(66946007)(86362001)(64756008)(66476007)(66446008)(66556008)(76116006)(110136005)(52536014)(5660300002)(6636002)(316002)(8936002)(478600001)(8676002)(69594002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UnbRUy5l2FL3UOLcuTSv0Vf9pp8hIVVFrnREv1QABiVTtsR0DT/qIa0xwSe3?=
 =?us-ascii?Q?aZvsGJX7zSp/QUg/3sOxE1dUyGmGD05e065LeKSIaaGfC+lRTv8TsowEPi9p?=
 =?us-ascii?Q?CRKWB+OZ5xcazuqZO3nGfVYm8sCxxFKtoEzOy+tsPyyweeAmVEzqgV8VJDtd?=
 =?us-ascii?Q?pMEr439k26IQaa8O5Nqb2KiK599oALCmRxOR0BYzl1ffyDFuq+Ngebg94lj4?=
 =?us-ascii?Q?RcRMVIvrFus5+2U/WJJPGhsCQbWKaAaB0flR2P/le0zPXly3HDI/cpCc7o59?=
 =?us-ascii?Q?YNsp9bhwmPh9DZE1ZKrALOWtIRkoUZi/jSdkbbouKpHRIUWEMUb+YVw5ifMX?=
 =?us-ascii?Q?SMfR0Z4O5masF/pvm3IyIHa1WxkvWHBAogFkRMUkWtgNpJLDvsq8GlB3zSKk?=
 =?us-ascii?Q?nUlRdhl/hXwsqOQGFUxv+k0IVAhm3KcysMjUaeAuq+L3//Aj//yuJ3w4W5Y6?=
 =?us-ascii?Q?cJU0flGcVhyiyg/3dGxsqm4mpbW+w8q5fFj9WS0nDDyR1CgLXNezEiwO082v?=
 =?us-ascii?Q?oZ0E035fG4DvYVom82sajrQqeJNX1BwFUdHFqTXOw7hBAnBVAjau/tIuFcOP?=
 =?us-ascii?Q?XGVzd4UrNoMDpD6cCN2s3qHUIaedcqVFdW1CdZ94FP8coCU+9sdVoomF7qrc?=
 =?us-ascii?Q?FechWi3+OwLYXE76ALQw4+cpRwQp27hbi73Ex1qQD97KoXWg7ws7tvTfSWud?=
 =?us-ascii?Q?4GjbWENHWsdb1iMRtbpx6h1vo3F7mZ2O3eY/Jfj6ooB8ycj7NTadOD3SqWQ9?=
 =?us-ascii?Q?7VVBHSkWvUoPpeubVxIyXxyJmqIML/54MrFUJONQ4qED3yAKtKjY1N1G/uTz?=
 =?us-ascii?Q?j+/OQ/5kYLosHt34qpdfW6UOfSWICz6Yn98tj9DtOa/J16xXzs0A40w28uRh?=
 =?us-ascii?Q?At0Je5XehMbh+bNQO1JQSQYBkydA2+q3X99a/HfkNZI41O/18wdI+uzZvmKc?=
 =?us-ascii?Q?gj1KnMg3daeJoOPKvBh9aTOfip8Cm4+8HNfqrQjKrVRE+GZq/eprSyvaGBEV?=
 =?us-ascii?Q?Z4wTYGoXu6En6PvvFQNaDwzsp8J7wJKXyo2cyPSyHK4Lc+XXAFv0DvwGn9G1?=
 =?us-ascii?Q?MB4InS8eNOEzg/emQtxZV2lltRwy9yqHYK9u2cOApgNkfA+iL5ug/wcig6H8?=
 =?us-ascii?Q?z2UviHHScZlDYyFyKUPxaNOxTgMJlSTMGoHKCsnmNoi+2OjmtbE7p16ZbA5Z?=
 =?us-ascii?Q?fLPjOfiKLwY+MaWEmoCyDhqUdWFfRaXcAI/xlVdwCVsm6m/eIzIonEFNvOKx?=
 =?us-ascii?Q?pzowTNrQohmCIEjbUqEy2rB8GLljV4MEeK7z96B7sVwwSF86JgFMPEeU0DzM?=
 =?us-ascii?Q?p9PU0wwQSW/rRcIEHqAh/MYFJcbVSkD0yMaTMgdZHDBoNNhi890xKON3r3pk?=
 =?us-ascii?Q?tXedri9cp34FIMCkszVhHE+iCBth76fLTuOUcdhxWdx6L57Ip+bzeVrMftmL?=
 =?us-ascii?Q?TTQVq849HX1JqFEZ7+cZf/2jGKhi0wrFZ3fsuI0l1vKhJw0u/6dxrjNhcb7w?=
 =?us-ascii?Q?7O0wBrlm0ViVJAVuKZ+x+KDcTtPfL7Hw25N4wGpaBQk0DhNSHjRKE2fET6Wp?=
 =?us-ascii?Q?KDPJHORCt5X0IBvVc5q1GHEz5dAG+8XWgoxQgEoO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a1e7015-b8fe-4562-7a7c-08dbf589c3a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 12:00:24.5009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uWrWQKY1z/fc7q83npFIicy/ZpbNrsuxDtUqzyTBE9EYDK23Nypo8sjq5Iz5Tx/ntUnvvw6C2pgx2pOC2OiNXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6282
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: add SKL/KBL connect-all
 quirks
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

Hi,=20
> -----Original Message-----
> From: Saarinen, Jani
> Sent: Monday, December 4, 2023 4:26 PM
> To: Kai Vehmanen <kai.vehmanen@linux.intel.com>; intel-
> gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: add SKL/KBL connect-=
all quirks
>=20
> Hi,
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Kai Vehmanen
> > Sent: Monday, December 4, 2023 4:10 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: add SKL/KBL
> > connect-all quirks
> >
> > Hi,
> >
> > I'll send this first to intel-gfx to verify the i915 CI results. If
> > all ok, I'll send this series to ALSA/sound upstream.
> >
> > This seriers is to address kms_hdmi_inject@inject-audio failures report=
ed in:
> > https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/3
> >
> > Kai Vehmanen (3):
> >   ALSA: hda/hdmi: add connect-all quirk for NUC5CPYB
> >   ALSA: hda/hdmi: add connect-all quirk for ASUSTeK Prime B560M-A
>=20
> For the series,
>=20
> Acked-By: Jani Saarinen <jani.saarinen@intel.com> BSW already proven to w=
ork
> with https://patchwork.freedesktop.org/series/127208/
This now provenly fixing all platforms https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127305v1/index.html?testfilter=3Daudio=20
>=20
> @Nikula, Jani can we add this to core-for-ci?

Same question applies still to core-for-ci ?=20
>=20
> >   ALSA: hda/hdmi: add connect-all quirk for ASUSTeK Z170 Pro
> >
> >  sound/pci/hda/patch_hdmi.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > --
> > 2.43.0


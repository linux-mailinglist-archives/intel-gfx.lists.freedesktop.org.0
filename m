Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC55079414A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 18:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB8810E1B6;
	Wed,  6 Sep 2023 16:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7ED310E1B6
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 16:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694017040; x=1725553040;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zclWGfgfwvaWutZ/ZISIBreiWqaQfqsyA0+ZjJUeJV0=;
 b=TLvK3MN4O3WulLziIeighESMJvPvx0aV5XtkoJzdYHmmKPHGoot1G1p+
 HItx5DkYWghvAs2iv8UaNhOkUB1/MeS1yBMVBCcGDCt5nSoskqbGPOyHk
 oosZAH5KgQFxiL79ovJgC39T8+GIQc3w1X2kFr9Sn/bsI3eS34cq2FZaA
 4oCrVYV92fFo8YjYYma66F+wCE6A7v+zROqVUx9WRidPd6RNXXDrX5FoO
 4A0Nmh5+sSNc/VYK+lGyu8/wsL0gnuw8oGFaVAqfpog2GCYN4z0X+3n7d
 XA8Ut0xxwffQtpWJduCLYSdcmvCN3EdVxm8qCDuAnIxZN2bDtoFdTM0pl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="377024208"
X-IronPort-AV: E=Sophos;i="6.02,232,1688454000"; d="scan'208";a="377024208"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 09:17:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="856504017"
X-IronPort-AV: E=Sophos;i="6.02,232,1688454000"; d="scan'208";a="856504017"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 09:17:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 09:17:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 6 Sep 2023 09:17:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 6 Sep 2023 09:17:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 09:17:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jMRr+QTgYGtQ0vIykoYcjsSACSyF1eOCJGOPNKE9ZLlQfQOEFACU9AKc5JU+CHAkBzDiZsnblGuCx4fI6BFcgl/+g6bDqWlhDUObQzNvntKdZ1sr5KsjtQ3wxKR0ZckE7xxPuTttCkPeVf6H3hr/WY8d8FG9P/ooJeM4+oxRMTV+E1YL+lHBeEsHMyViG5HebZjjAX2AgqOjw8k/2uQT1Iz6DSNBdjaEv/6gWfYRIksDsVU92b9XVkpu4jcAi7Hveh7RAT16byZhTpNOa6YHj7cYbYXiYTOT5AQaq39F+bmOL9qrvq94gr4zwSUs6PI/BQ3bAfyuIAz9MXAESzlaHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yDM/zYmZWhL9RGcH27aLxuyWYwEKFLzTpHItKCpN9YU=;
 b=mlyCCFY8qFIXBBCqqrWCLQZvlOIxVpo+Uj9uHWi1jhWzRKcQtXihzdbhaNnhpnPPNohcOAozRST9FRfHbF8mnkzUPq/Fc9/IA3yWmKePhEyLnx5qz9YElie+4r0CeVItdjCXZcWfF391EEHKz5pUa4MAyWcf5bFJZCnJXFxfDsin0k0Dzz6bRz9I1UYQ4mfA8Qfu585i8cjlmwz+skYqoFcdbVTW+5gbyV6HKc74HDKn6rG+4HSh/pBKieZWMOLaGrW+kMlDmEaek2K8dRN7PBZTk/tZQ1pnR/No2Ma/yK28E57pLNtyo6CkdAQpfHVayV38f6Qxi1brd+4sNOwdzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN2PR11MB4533.namprd11.prod.outlook.com (2603:10b6:208:264::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Wed, 6 Sep
 2023 16:17:13 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%6]) with mapi id 15.20.6745.034; Wed, 6 Sep 2023
 16:17:11 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
Thread-Index: AQHZ1ElHsxG5YBnyDkmHf6kTZgAq8rAMCuAAgAIDRpA=
Date: Wed, 6 Sep 2023 16:17:11 +0000
Message-ID: <IA1PR11MB634879705B3BC10BAAE3444FB2EFA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230821160004.2821445-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230821160004.2821445-4-mitulkumar.ajitkumar.golani@intel.com>
 <SN7PR11MB6750A1EB6FC814E9775B9D58E3E8A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750A1EB6FC814E9775B9D58E3E8A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN2PR11MB4533:EE_
x-ms-office365-filtering-correlation-id: 47d63374-89c5-45dc-5792-08dbaef4b9da
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0rC7S7yv2btoU2DUS7SsieUR7AUR/CNlJhEp8hbJ3b2DoU7GZypu5eOHLZXBxWk3h2Y65XfxbC2I9x6Yq5v83LZfu1YC7vMsB0ydMffI8XaZBYIqHQUV9ftPzVBXZzIwJleZufEwgOCm4Xn63FNSIPE23v/VyZSUSeJ3tHIjSyNHUfAf1b1lcebobCBu+6gB6w9B0cSv7Dq215/GxjUeDajycmo6gNImciMT4SHFFAnhy7xrQhTQJhQxcR7WseHTAf3M8e8gMFdXqF6U/l5eeDYcF8JYbeo1FSn8xCKxT6KrSjJhau8wP8vHPB5lfS1YNkLSKsJcMMP8Rl2K4OqgQOAIqXXCpfVjjzXc6mSgmeb0Bn9PfNAT0N3LZcrwrS/N5fvyWOx+3UkAwBm0FgROu1+hE03U0411zvVX/rToxzFKqdvG1dOMEMy8fyqCZ0QT7pdoaEB7OZ3PCJuO0ACpjQ4KfaRc4zry/IOQP1BUfKVfRQ8oQX7QtRI+wQRp4NEDiM7+XwLL8n/lUJ+UME4cuebh62rjzoqFK+5M3wOXdOeB4Wy5l6QGhUnMuxB7/Yp6t4N6OJSYiNAdztKEQcGvBFIOny8LVlMG7qVfoUvq8hTsQKLK7y13piS9HYfX+G3a
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(136003)(376002)(366004)(186009)(1800799009)(451199024)(82960400001)(107886003)(38100700002)(122000001)(38070700005)(26005)(55236004)(6506007)(7696005)(53546011)(9686003)(55016003)(83380400001)(86362001)(5660300002)(30864003)(41300700001)(64756008)(66446008)(52536014)(76116006)(316002)(66556008)(33656002)(66946007)(110136005)(66476007)(8936002)(4326008)(8676002)(478600001)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8Irx0ZOEtvh2jeh3UWY75qB8jGsvxyEL+wZcNmoYtNbYr6Mj+W3xGHqqgZf1?=
 =?us-ascii?Q?xObEbPu6HbTx02Re+Buc9rhUA8qt7eZd8XeboKNOSHXFr2qAHBRqAvar/jLf?=
 =?us-ascii?Q?EVCUMoDJtMjQcx8EDu0bl5i20Ik3BiLgtRcsZAsCGdm/gCEQVv+BrHqilzTJ?=
 =?us-ascii?Q?G+dbVTeAowfBGjkwDl/3QCfGqo9fYsPVwPGTvFr7J9XWIXvIwYn+TtDQBbel?=
 =?us-ascii?Q?7WdTfTkytvV2/7snKw28353niPqERY36yGGHWPpE0coIXdtBk57WKb9d0kAo?=
 =?us-ascii?Q?zQa647Dg9yVfDJym47rez3OQsCHVTn6bwuW4UqOvDd8UQqG0nwcWbdxIaSJ6?=
 =?us-ascii?Q?wZlOH/fjVQkkJvpo+THojYZ7Fooq+T0/pcdwGoJgQr+cv9nIulDm0vhdDaCU?=
 =?us-ascii?Q?OXd32EjGNyRNU5HPCA5SR8JuJZprjxJS4L7G47zIByzQDlwBuEW3/29CXAJT?=
 =?us-ascii?Q?iUYcL58rPzQ1kI775FAC2ACK1trqNsZicw7bIOVc2ssXxN02yv1gl7vVWp+4?=
 =?us-ascii?Q?LQnrX1fafzpnU/VHh35fcwVklkbc6VbU69/RBNtZ9N2G1+EN7rvhK/3BhzNf?=
 =?us-ascii?Q?vQLwUDXDnizlysfSOyGDYU/s1PiMD4vyX/i+LXIV0+MpHXSm2169onorrpaq?=
 =?us-ascii?Q?qcdpDpaHdFbX6vt/zxU7hsgzRZXAgq5hue/USsUMGp4A0wKhFcxcpAfSIPVT?=
 =?us-ascii?Q?HTZRUweeA/ngc8LlCXv9EJQMpAG62kT5LjardmX2iHN1TDodYRsNrHvwxl3e?=
 =?us-ascii?Q?jTJxdGzhjby5FyKTNqvRzaJ/EgbEHN6nQomqR8A1dkxj94yB1dLBotoGG3m9?=
 =?us-ascii?Q?/ATIzwR5BsNEeXv9CWyy2ygCbGNvUfV/fW0JZ01kkV2R3GJr0oBxibH0N4Qy?=
 =?us-ascii?Q?RYPcxkHAzqsSqvvnv3W1Fb+qER2F3sfn+4b4PErQHE4Xbpv9x8QYeFRPlX1O?=
 =?us-ascii?Q?q2b/i9gaYkkfxmIGx5NC3UPSh4lPD4HUI5NDITVPfAzbzxYFDAd+sMpjTXSU?=
 =?us-ascii?Q?DQtX1BD9LYEwK6zH1HNLVyq8s6it7yuPLY3EbJ/CbfySllAIpzpUuXCcBcTg?=
 =?us-ascii?Q?XBxL2jJ4wrTCBVkl2KxWFjxAIPgDqK4v0Tgajs5v7zhEH/L3QZMF57n559Ea?=
 =?us-ascii?Q?U1u8fEQyX+Oh7IQ3hfDxk7EfHNVGdz7ZwneObPcUuonatM2TYebqvawNtEIv?=
 =?us-ascii?Q?57BhG7u2LP8KrEHW1QwGf/iBNU02jZBCaLYJ7Xo2XDDDaKsMWqLoZpBQRMPd?=
 =?us-ascii?Q?XmJ3sgNnnJHTb7B2hGE2sVSMwXuB43qMcdMKICBekL5jSee5CXH5T1KvHH+j?=
 =?us-ascii?Q?SOYU4UHxJKi6KAT3mt0fusGSl6GpvYjf2yVf9c0hUzj4I9d57wElsb9OMYXJ?=
 =?us-ascii?Q?mvntFMki5Z3wlDRWXSEx3ZWWT9lkLLudHL3E1rn6uiXLAV90u73ky9oAwsa6?=
 =?us-ascii?Q?UbhcKJRAcum+g2670gBbAP9WPS5/i67DwuCF8BktprQN85mz45j6wj9Nfbpr?=
 =?us-ascii?Q?EWUpGCFI3ok9qRY6RjM71PsK0yf181gUjabqP75fRFoRjE1yYbIWWGUnkhrE?=
 =?us-ascii?Q?L3otT/iqT4Js5YFLab3gRdxRvdNY5Dka196+DEn6KMqAary7uUXn6cviCnhS?=
 =?us-ascii?Q?Tm0D2U/zkKhTNEGaV/N3qAM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47d63374-89c5-45dc-5792-08dbaef4b9da
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2023 16:17:11.6348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dgxbIZK8fpf5m4a0e8UcjLInza5NfBEPxDXZtC4PKz1RuDw4mO/pQjeGASHNnnRlFg3Kp1ONM0gpAfq9ZqN3lSot7ELdJhMKfbWM5c+zSzZb+S6F7nqgP44K7scUykm5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4533
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: 05 September 2023 14:47
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and init=
ialize
> HDMI audio capabilities
>=20
> > Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and
> > initialize HDMI audio capabilities
> >
> > Initialize the source audio capabilities in the crtc_state property,
> > setting them to
>=20
> Nit: maybe mention the above as intel_crtc_state rather than crtc_state
> property as property usually refer to as drm_property and it just seems a
> little weird to read. I have seen this in some of your previous patches i=
n this
> series you can make the changes there as well.
>=20
> > their maximum supported values for max_channel and max_rate. This
> > initialization enables the calculation of audio source capabilities
> > concerning the available mode bandwidth. These capabilities encompass
> > parameters such as supported rate and channel configurations.
> >
> > Additionally, introduces a wrapper function for computing Short Audio
> > Descriptors (SADs). The wrapper function incorporates logic for
> > determining
>=20
> Typo * introduce
>=20
> > supported rates and channels according to the capabilities of the audio
> source.
> > It returns a set of SADs that are compatible with the audio source's
> capabilities.
> >
> > --v1:
> > - Refactor max_channel and max_rate to this commit as it is being
> > initialised here
> > - Remove call for intel_audio_compute_eld to avoid any regression
> > while merge. instead call it in different commit when it is defined.
> > - Use int instead of unsigned int for max_channel and max_frequecy
> > - Update commit message and header
> >
> > --v2:
> > - Use signed instead of unsigned variables.
> > - Avoid using magic numbers and give them proper name.
> >
> > --v3:
> > - Move defines to intel_audio.c.
> > - use consistent naming convention for rate and channel.
> > - declare num_of_channel and aud_rate separately.
> > - Declare index value outside of for loop.
> > - Move Bandwidth calculation to intel_Audio.c as it is common for both
> > DP and HDMI. Also use static.
> >
> > --v10:
> > - Merged patch 2 and 3 to deduplicate function calls.
> > - Instead using Calibrate and calculated functions separately, removed
> > code duplication and merged functions.[Nikula, Jani]
> > - Remove magic value for SAD Channel mask. [Nikula, Jani]
> > - Corrected rate values based on HDMI Spec [Nikula, Jani]
> > - Update drm function to extract SAD from ELD [Nikula, Jani]
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c    | 127 ++++++++++++++++++
> >  .../drm/i915/display/intel_display_types.h    |   6 +
> >  2 files changed, 133 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index e20ffc8e9654..2584096d80a4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -64,6 +64,10 @@
> >   * struct &i915_audio_component_audio_ops @audio_ops is called from
> > i915 driver.
> >   */
> >
> > +#define AUDIO_SAMPLE_CONTAINER_SIZE	32
> > +#define MAX_CHANNEL_COUNT		8
> > +#define ELD_SAD_CHANNELS_MASK		0x7
>=20
> Use REG_GENMASK() to create masks should look cleaner

you should use REG_GENMASK when you need to create a bitmask that covers a =
specific range of bits within a register or variable.=20
I think If you are defining a simple bitmask like in above example, there's=
 no need to use REG_GENMASK.

> > +
> >  struct intel_audio_funcs {
> >  	void (*audio_codec_enable)(struct intel_encoder *encoder,
> >  				   const struct intel_crtc_state *crtc_state,
> @@
> > -770,6 +774,127 @@ void intel_audio_sdp_split_update(struct
> > intel_encoder *encoder,
> >  			     crtc_state->sdp_split_enable ?
> > AUD_ENABLE_SDP_SPLIT : 0);  }
> >
> > +static int sad_to_channels(const u8 *sad) {
> > +	return 1 + (sad[0] & 0x7);
>=20
> I think you missed using your defined mask here;
>=20
> > +}
> > +
> > +static int calc_audio_bw(int channel_count, int rate) {
> > +	int bandwidth =3D channel_count * rate *
> > AUDIO_SAMPLE_CONTAINER_SIZE;
> > +	return bandwidth;
>=20
> Why introduce a variable here why not just return channel_count * rate *
> AUDIO_SAMPLE_CONTAINER_SIZE;
>=20
> > +}
> > +
> > +static void calc_and_calibrate_audio_config_params(struct
> > +intel_crtc_state
> > *pipe_config,
> > +						   int channel, bool
> > calibration_required) {
>=20
> I think this should have a int type function that returns 0 if max_rate a=
nd
> max_channel_count are non zero else return -EINVAL

calc_and_calibrate_audio_config_params does not required to get=20
failed. If it gets failed as well, we will have to go ahead with the curren=
t configs available.
So this function does not require to return EINVAL in case it returns value=
 as 0.
That 0 value itself we will compute.

>=20
> > +	struct drm_display_mode *adjusted_mode =3D &pipe_config-
> > >hw.adjusted_mode;
> > +	int channel_count;
> > +	int index, rate[] =3D { 192000, 176400, 96000, 88200, 48000, 44100,
> > 32000 };
>=20
> Where do we get these rate values from.
> What if we kept them at crtc_state so these can be update if required.
>
> > +	int audio_req_bandwidth, available_blank_bandwidth, vblank,
> hblank;
> > +
> > +	hblank =3D adjusted_mode->htotal - adjusted_mode->hdisplay;
> > +	vblank =3D adjusted_mode->vtotal - adjusted_mode->vdisplay;
> > +	available_blank_bandwidth =3D hblank * vblank *
> > +		drm_mode_vrefresh(adjusted_mode) * pipe_config-
> >pipe_bpp;
> > +
> > +	/*
> > +	 * Expected calibration of channels and respective rates,
> > +	 * based on MAX_CHANNEL_COUNT. First calculate channel and
> > +	 * rate based on Maximum that source can compute, letter
> > +	 * with respect to sink's maximum channel capacity, calibrate
> > +	 * supportive rates.
>=20
> Typo: *maximum and *later and *supported
>=20
> > +	 */
> > +	if (calibration_required) {
> > +		channel_count =3D channel;
> > +		for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> > +			audio_req_bandwidth =3D
> calc_audio_bw(channel_count,
> > +							    rate[index]);
> > +			if (audio_req_bandwidth <
> available_blank_bandwidth)
> > {
> > +				pipe_config->audio.max_rate =3D rate[index];
> > +				pipe_config->audio.max_channel_count =3D
> > channel_count;
>=20
> I think the above lines can be moved to function set_max_rate_and_channel
> as this is duplicated even in the else block
>=20
> > +				return;
> > +			}
> > +		}
> > +	} else {
> > +		for (channel_count =3D channel; channel_count > 0;
> > channel_count--) {
> > +			for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> > +				audio_req_bandwidth =3D
> > calc_audio_bw(channel_count, rate[index]);
> > +				if (audio_req_bandwidth <
> > available_blank_bandwidth) {
> > +					pipe_config->audio.max_rate =3D
> > rate[index];
> > +					pipe_config-
> > >audio.max_channel_count =3D channel_count;
> > +					return;
> > +				}
> > +			}
> > +		}
> > +	}
> > +
> > +	pipe_config->audio.max_rate =3D 0;
> > +	pipe_config->audio.max_channel_count =3D 0; }
> > +
> > +static int get_supported_freq_mask(struct intel_crtc_state
> > +*crtc_state) {
> > +	int rate[] =3D { 32000, 44100, 48000, 88200, 96000, 176400, 192000 };
>=20
> So you do use the same array of rates maybe add these in the
> intel_crtc_state audio struct and which can be filled in
> intel_dp_compute_config , also mention where we get these rates from.

I don't think it's a good idea for this specific case, as we are not going =
to use it apart from above 2
instances and also these are common sample frequency being used from HDMI a=
nd DP spec.
So instead, we can reduce the redundancy. I will push that change with new =
patch set.

Also, adding max rate and max channel was added considering source restrict=
ions which
we will address. But this rates array will be common to both it seems.

>=20
> > +	int mask =3D 0, index;
> > +
> > +	for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> > +		if (rate[index] > crtc_state->audio.max_rate)
> > +			break;
> > +
> > +		mask |=3D 1 << index;
> > +
> > +		if (crtc_state->audio.max_rate !=3D rate[index])
> > +			continue;
>=20
> Why are the above two lines of code needed?
> It's not like there is anything to skip below them.
>=20
> > +	}
> > +
> > +	return mask;
> > +}
> > +
> > +static void intel_audio_compute_eld(struct intel_crtc_state
> > +*crtc_state) {
>=20
> Lets not have this as a void function and lets return the appropriate err=
ors If
> required
>=20
> > +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev)=
;
> > +	u8 *eld, *sad;
> > +	int index, mask =3D 0;
> > +
> > +	eld =3D crtc_state->eld;
> > +	if (!eld)
> > +		return;
> > +
> > +	sad =3D drm_extract_sad_from_eld(eld);
> > +	if (!sad)
> > +		return;
> > +
> > +	calc_and_calibrate_audio_config_params(crtc_state,
> > MAX_CHANNEL_COUNT,
> > +					       false);
> > +
> > +	mask =3D get_supported_freq_mask(crtc_state);
> > +	for (index =3D 0; index < drm_eld_sad_count(eld); index++, sad +=3D 3=
) {
> > +		/*
> > +		 * Respect source restricitions. Limit capabilities to a subset
> > that is
> > +		 * supported both by the source and the sink.
> > +		 */
> > +		if (sad_to_channels(sad) >=3D crtc_state-
> > >audio.max_channel_count) {
> > +			sad[0] &=3D ~ELD_SAD_CHANNELS_MASK;
> > +			sad[0] |=3D crtc_state->audio.max_channel_count - 1;
> > +			drm_dbg_kms(&i915->drm, "Channel count is limited
> > to %d\n",
> > +				    crtc_state->audio.max_channel_count - 1);
> > +		} else {
> > +			/*
> > +			 * calibrate rate when, sink supported channel
> > +			 * count is slight less than max supported
>=20
> Typo: *slightly
>=20
> Regards,
> Suraj Kandpal
> > +			 * channel count.
> > +			 */
> > +			calc_and_calibrate_audio_config_params(crtc_state,
> > +
> > sad_to_channels(sad),
> > +							       true);
> > +			mask =3D get_supported_freq_mask(crtc_state);
> > +		}
> > +
> > +		sad[1] &=3D mask;
> > +	}
> > +}
> > +
> >  bool intel_audio_compute_config(struct intel_encoder *encoder,
> >  				struct intel_crtc_state *crtc_state,
> >  				struct drm_connector_state *conn_state)
> @@
> > -791,6 +916,8 @@ bool intel_audio_compute_config(struct intel_encoder
> > *encoder,
> >
> >  	crtc_state->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode)
> /
> > 2;
> >
> > +	intel_audio_compute_eld(crtc_state);
> > +
> >  	return true;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index ebd147180a6e..8815837a95a6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1131,6 +1131,12 @@ struct intel_crtc_state {
> >
> >  	struct {
> >  		bool has_audio;
> > +
> > +		/* Audio rate in Hz */
> > +		int max_rate;
> > +
> > +		/* Number of audio channels */
> > +		int max_channel_count;
> >  	} audio;
> >
> >  	/*
> > --
> > 2.25.1


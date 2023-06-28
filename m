Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAD37416A2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 18:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8524110E380;
	Wed, 28 Jun 2023 16:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86CFC10E380
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 16:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687970600; x=1719506600;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0Gi69AHxaU7QT1MZlmy5o/OXfMenEAOaI23gfa6zVeY=;
 b=O3CLQSAuyM58kNEYwzPGRTa4/a2r3TkkNSIyv+kf6eXM74W8Q/mW4glt
 8XOk9kmiiaKxwavWLZ0dVHbXsv0N5hqgLdTK0Aa3GdD594AnFZGQFJpur
 CkZQqDyLT+MYb8FjUEiucb5oPrfI0OTFOUeLM+U9lMdbK5mH05u4hSJbN
 W+KfpKmBzaowJjWT/pPCaCH9r8W8OtqlcDP2spFNdtiTb6OPILHcaH3Oz
 9esIBDuWwQrXyCfS+F2YdAZJPPdhxijkP1Qi5EbqvlFEWtij16eutDnZe
 RbKFLO+T32ZmbD3Wx10AaHR0y4I7e0sixrUF/O+uR7bQz72T9z66pn7vZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="351688407"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="351688407"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 09:43:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="830188385"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="830188385"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2023 09:43:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 28 Jun 2023 09:43:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 28 Jun 2023 09:43:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 28 Jun 2023 09:43:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 28 Jun 2023 09:43:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oD4zoqUZldoTUJQRtKV+vm3N5lbhWlSTIOUxbXFkzapvjFl4x7hLtmim3zHfwwzgx2yur8IzHfTEqcC5LDo6gH+X4y2wUUwd2hMlSfJ4Jaeb/qkbDLpp0idPeuRT0muheU6JgWi5kwduH+82KajSTD9tU61iRpW5qQfmP4qPh2wR+bc7KECX0QeHAnsLuarskJt4TttamDqeNalKbrmnMoFmfK5qo/EJFjMN7pUiuBIec4ABn2U6BSf3VU283ZemzPT7x+GtTiUmo+mkYbWZjEVaaemBdTVUUVe0Q1SLMgBTEUAesM1VMvH0NaqoMLjz5YeVN3sHzDx20mrj0ZPPAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S7kqbH/1cDU4v2+p8Ur3mDERKFcJ7jVCyXlSa52Ufr0=;
 b=HrH8C0ZQ50u0/tFB4aNjOqC05CczhOcn03qQmW50wBjEPuNNSytULdHCdi37W8Dr93lV33WgxBQeNOtMhQIdVczo5HrZdJoClumqvu2/dD8N0OyvTOtUmfdiXLfdk4/bmww9/sWAGg1O66cDejCyv60XTm5jzMMp+QoAyDBeEGFmVoCdnZB2URqXxbXD/5epBmFStSxS0PEx3kQaAE6L0ijzEvIP3BdY5oj4tZHoEALAcNoq0qS8T0x1tOPcQFoQOb+7dXIuYtRwy1RcTgV7ASaByqbI12vbNq/UTunObX46K5XPjFbHYsMZMLHJ0nh2AOvRGW5h0j6JR07TGTeLCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by SA1PR11MB8594.namprd11.prod.outlook.com (2603:10b6:806:3b1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Wed, 28 Jun
 2023 16:43:15 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7%11]) with mapi id 15.20.6521.026; Wed, 28 Jun
 2023 16:43:15 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 3/3] drm/i915/display: Add wrapper to Compute
 SAD
Thread-Index: AQHZqEx7gBVTAjYQr0GbJpCbKroT7K+dU8KAgAMaG5A=
Date: Wed, 28 Jun 2023 16:43:15 +0000
Message-ID: <MWHPR11MB1935653F3160EED793CCD262B224A@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230626163819.2759500-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230626163819.2759500-4-mitulkumar.ajitkumar.golani@intel.com>
 <87v8fata5q.fsf@intel.com>
In-Reply-To: <87v8fata5q.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|SA1PR11MB8594:EE_
x-ms-office365-filtering-correlation-id: 6c5a134a-4583-4012-42e9-08db77f6c50b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5A5h/vJGguo1jbSJDZzY6FTz0Ta5pulxvMTunG04jsuCHMoFflEEa5VDTAEOP14YOiVBuX6ptd1PIiZf6gZoOB4rezAroerWGiVl9FC3osQTuIikJe31gqINSV68fOfXqxHW3418XdEu9lerg3IMC/UthjATB91SjqPGtaH2XaCJMLNh25KXh7x1iXwIe1lzYtmRMzSdilaEdJO+T4fRXYKyxD4LLPJdruuVD7iJay/cruSIqaNDlEUbQsMfKTfe360bR03PNlWIIBJ6abTSbMvxOP+Vp39MVFtp747ZD8ufLWZzzzqSXqR49J0Vkb9VOvIgRcb3nClzsKZC3FGgw4b+BnTnfZvYhMKW/1JWQzTjeydSaqtTrZfd4VjF5ZKxixvAtr84Io7aew4d46OsWg196wqwbRMaeWALZrqSO8GdafqprsWz1hvxTftB+JgmONmaxdox7A2olADi6zhqDY+FV5SDVmp7tl57Dku26RyfA7XEvqX5GAPD0lYx6hayDzIqzqq3GzQ1WegeLRL38Y7nvDhTjdlf+Q/+O+MlvLEPTecycKMBDkU4Cw7A8JbzQQjtlzOaBW9bPOpw5nATpR2BhKtHtPhi1meRIVny2qtWMdh2zP6T5KxAMCM8t7lA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(346002)(39860400002)(396003)(376002)(451199021)(2906002)(186003)(26005)(38070700005)(55016003)(82960400001)(8676002)(33656002)(110136005)(316002)(86362001)(7696005)(478600001)(38100700002)(122000001)(71200400001)(52536014)(9686003)(5660300002)(66476007)(8936002)(41300700001)(66446008)(83380400001)(64756008)(66946007)(76116006)(66556008)(55236004)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?25/nGq/9ufz8ETuwebywiqIVZ9vmFW5FaaLa6Q5++7R21s9FkStdPIo/E8on?=
 =?us-ascii?Q?yHmeO3e48pAXrUMCPdzfkMYdbmH32+kCxiviE/hPrg0KCBeIlBNywgylRCQn?=
 =?us-ascii?Q?/R+VZfetD82Joecbu+inDVVlY7+bJFpFrjQglsno2ujqkoZDCUa5NX24Ljeq?=
 =?us-ascii?Q?pW8B4392ygHKGhRHbvUm3jv1RALN4eavrxwJoC1XGRsLePB67KxOvDKKhOJ5?=
 =?us-ascii?Q?aaO2xzLsSsbByqy4XeHlJbjSvT50aGdnJkA1Ol3iTAdX3q6SS6ZO+DlGiwQg?=
 =?us-ascii?Q?pakfdrW90RHNhrBAWm/ECRk2wM54zwlbB+zLYHvRBV/nSxMmuuJehvfwyTJm?=
 =?us-ascii?Q?jH6dRpNnYke6ZFwzNg4GH5kbUXlFBP8balb24e9Q01sz97A7go77zK7zyS1a?=
 =?us-ascii?Q?24WGbKQjMDlqYfhyiPnsNxxSoVCZprxUC3GAIEfhxO9d69JZxNr2c7uR3l2m?=
 =?us-ascii?Q?a+VfKP9LLwsBo/pkGzPujxjMdtyEY/M7oB/bZBBWZ+lbnoFRqsYmOkzH+EXe?=
 =?us-ascii?Q?TwthGkDSMCJoRak2MEj4ueOoypEkfhIG8CyW+8KEUkPbClwBttLXwIth4xzs?=
 =?us-ascii?Q?vuUqUFjCMBwWn/rpKmdF1N1q4ReuM9dPgQF6zq7BHauW+TxaqU7GCSP88hGw?=
 =?us-ascii?Q?uPqBEOgrsF9oEn8s8s3EFYsVC9jKrrTtJxPQZx/ZAUmVySAKhNcXx5C/9o5R?=
 =?us-ascii?Q?5oaxqVrJOGt2/on5E/5pEAmuTLl6auFLYh+dqaHUhSbWTgJBrPEzvzUtNd6i?=
 =?us-ascii?Q?Y6HNxffcx7gGX7i2mQdMCpyNEfiuSR52otMuSQkV80wIV1iIlcP19Lca9VHB?=
 =?us-ascii?Q?eFoIPnVs30c/o+ObJvQ/rmf4sNEbmCBixfmKZ/Eqn4S9MDS6l4LX834C1KBz?=
 =?us-ascii?Q?hyAm+4Y1mkVewK9ya/m7gqbNo99buDsxdH0nQ1p0tanOPbXxvkMxDIsvYCsw?=
 =?us-ascii?Q?hyXjpVKqEK1/xILPUuzt/v2AzrCKywKp0tq64eSimp2koJimd7BA+Yjm1NTv?=
 =?us-ascii?Q?2ap6dTlw37Vue7lSqUdpYHQoOURNJlrd3D0wTTuNn+DMMOcIkvqpw2bk0anX?=
 =?us-ascii?Q?mKfX/Q5MDd8wQ719hMhihGvnOBLIXv+V3QBFpmTpMuU2S2y9ezPGowUGUbzV?=
 =?us-ascii?Q?npLmt89j7ScsxldYgOWCdox0OJwXc93nfbVzy7xo+XLusBOxcZ6y+OqRmgel?=
 =?us-ascii?Q?Sbr7k52gSbBWbEpwsb7wtzgN31UvIz62+gpV/A47Lk/pMFqdCXmYlGQTzI+G?=
 =?us-ascii?Q?o/dZitamXbhaEba+Lk35PRjQRO+C/Jmxn7TX397oPEK7okQdfMLP4Gyv5YDC?=
 =?us-ascii?Q?NhN/lXWtiaE85dkHObPMoJPWYEDYFNhAQJUi/nupypzBAkCRCGOzx3+t+XR0?=
 =?us-ascii?Q?vKmt9ri09DPeFDP8HBBydVi7d4fCCGfXRCSkb5oMXhvVJLCxJbGD6eILPS2/?=
 =?us-ascii?Q?AJjdfVuK12DIWlUfoZsbOiDL+um2hVjh2eE13xvz61bckoeqbf9KnjHkPSir?=
 =?us-ascii?Q?oNin3X4SgXVk/RsnJRl3sCyBq6mS6zVWPOrKvzsi20hPC4Hagu2rEQfSD+ur?=
 =?us-ascii?Q?ZxQDwGQZMC5vqVCIe9o5n6AQ/S0WbTyRQbgGKXR+t8EWGx/U2fxH4FMGplea?=
 =?us-ascii?Q?LAeeN1zIoYzw8Ueq3QFjFlU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c5a134a-4583-4012-42e9-08db77f6c50b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2023 16:43:15.4364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A93Ft8BZR/vYdnNwX2aUgII9Hlot7rmKArwyrKoM7VIPAZ6Li7Bo7sX29jcNd2goI4NjGuw+hzq5LhkaZKtdrU0QDlGZ9Tgafs0kRiPQXpqyilYKAVKI2ic/H/Xhh2OW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8594
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915/display: Add wrapper to Compute
 SAD
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

Hi @Jani Nikula

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 26 June 2023 22:48
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915/display: Add wrapper to Compu=
te
> SAD
>=20
> On Mon, 26 Jun 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > Compute SADs that takes into account the supported rate and channel
> > based on the capabilities of the audio source. This wrapper function
> > should encapsulate the logic for determining the supported rate and
> > channel and should return a set of SADs that are compatible with the
> > source.
> >
> > --v1:
> > - call intel_audio_compute_eld in this commit as it is defined here
> >
> > --v2:
> > - Handle case when max frequency is less than 32k.
> > - remove drm prefix.
> > - name change for parse_sad to eld_to_sad.
> >
> > --v3:
> > - Use signed int wherever required.
> > - add debug trace when channel is limited.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c | 69
> > ++++++++++++++++++++++  drivers/gpu/drm/i915/display/intel_audio.h |
> > 1 +  drivers/gpu/drm/i915/display/intel_hdmi.c  |  2 +
> >  3 files changed, 72 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index e20ffc8e9654..1a1c773c1d41 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -794,6 +794,75 @@ bool intel_audio_compute_config(struct
> intel_encoder *encoder,
> >  	return true;
> >  }
> >
> > +static int sad_to_channels(const u8 *sad) {
> > +	return 1 + (sad[0] & 0x7);
> > +}
> > +
> > +static inline u8 *eld_to_sad(u8 *eld)
>=20
> Please don't use inline.
>=20
> > +{
> > +	int ver, mnl;
> > +
> > +	ver =3D (eld[DRM_ELD_VER] & DRM_ELD_VER_MASK) >>
> DRM_ELD_VER_SHIFT;
> > +	if (ver !=3D 2 && ver !=3D 31)
> > +		return NULL;
> > +
> > +	mnl =3D drm_eld_mnl(eld);
> > +	if (mnl > 16)
> > +		return NULL;
> > +
> > +	return eld + DRM_ELD_CEA_SAD(mnl, 0);
>=20
> Feels like this should be in drm_edid.[ch]... but hey, it actually is!
> drm_eld_sad().

As now, eld is added to crtc_state as well, intention was to overwrite
source eld. drm_eld_sad is returning const *. Due to which created
function local to intel_audio.c.

Also addressed rest other comments to this patch.

Thanks,
MItul
>=20
> > +}
> > +
> > +static int get_supported_freq_mask(struct intel_crtc_state
> > +*crtc_state) {
> > +	int audio_freq_hz[] =3D {32000, 44100, 48000, 88000, 96000, 176000,
> > +192000, 0};
>=20
> This needs a comment referencing the source spec, as apparently the order
> is significant.
>=20
> > +	int mask =3D 0;
> > +
> > +	for (u8 index =3D 0; index < ARRAY_SIZE(audio_freq_hz); index++) {
>=20
> int index, and please declare it separately instead of within the for.
>=20
> > +		mask |=3D 1 << index;
>=20
> This means the first one is always supported. Is that the case? What if
> max_frequency is 0?
>=20
> > +		if (crtc_state->audio.max_frequency !=3D
> audio_freq_hz[index])
> > +			continue;
> > +		else
> > +			break;
>=20
> Maybe you mean:
>=20
> 		if (audio_freq_hz[index] > crtc_state-
> >audio.max_frequency)
>         		break;
>=20
> 		mask |=3D 1 << index;
>=20
> > +	}
> > +
> > +	return mask;
> > +}
> > +
> > +void intel_audio_compute_eld(struct intel_crtc_state *crtc_state) {
> > +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev)=
;
> > +	u8 *eld, *sad;
> > +	int index, mask =3D 0;
> > +
> > +	eld =3D crtc_state->eld;
> > +	if (!eld) {
> > +		drm_err(&i915->drm, "failed to locate eld\n");
>=20
> It doesn't need to be an error.
>=20
> > +		return;
> > +	}
> > +
> > +	sad =3D (u8 *)eld_to_sad(eld);
>=20
> Unnecessary cast.
>=20
> > +	if (sad) {
>=20
> if (!sad)
> 	return;
>=20
> and reduce indent below.
>=20
> > +		mask =3D get_supported_freq_mask(crtc_state);
> > +
> > +		for (index =3D 0; index < drm_eld_sad_count(eld); index++, sad
> +=3D 3) {
> > +			/*
> > +			 * Respect source restricitions. Limit capabilities to a
> subset that is
> > +			 * supported both by the source and the sink.
> > +			 */
> > +			if (sad_to_channels(sad) >=3D crtc_state-
> >audio.max_channel) {
> > +				sad[0] &=3D ~0x7;
> > +				sad[0] |=3D crtc_state->audio.max_channel - 1;
> > +				drm_dbg_kms(&i915->drm, "Channel count
> is limited to %d\n",
> > +					    crtc_state->audio.max_channel -
> 1);
> > +			}
> > +
> > +			sad[1] &=3D mask;
> > +		}
> > +	}
> > +}
>=20
> This should also be static within intel_audio.c.
>=20
> > +
> >  /**
> >   * intel_audio_codec_enable - Enable the audio codec for HD audio
> >   * @encoder: encoder on which to enable audio diff --git
> > a/drivers/gpu/drm/i915/display/intel_audio.h
> > b/drivers/gpu/drm/i915/display/intel_audio.h
> > index be3edf9c4982..a0162cdc7999 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.h
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> > @@ -17,6 +17,7 @@ struct intel_encoder;
> >  #define MAX_CHANNEL_COUNT			8
> >
> >  void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
> > +void intel_audio_compute_eld(struct intel_crtc_state *crtc_state);
> >  bool intel_audio_compute_config(struct intel_encoder *encoder,
> >  				struct intel_crtc_state *crtc_state,
> >  				struct drm_connector_state *conn_state);
> diff --git
> > a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 6a4d477e8a15..daaa08c0ee47 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2402,6 +2402,8 @@ int intel_hdmi_compute_config(struct
> intel_encoder *encoder,
> >  		return -EINVAL;
> >  	}
> >
> > +	intel_audio_compute_eld(pipe_config);
> > +
> >  	return 0;
> >  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center

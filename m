Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3064173102E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 09:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958D610E11B;
	Thu, 15 Jun 2023 07:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D9F10E11B
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 07:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686812991; x=1718348991;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yCXv1DEgKWrmr8U9pL+Aib9E8U1YqQHXRKfFi8E1Zrk=;
 b=TmM4qiIpci1a+We/1jTV7kjX5KJ3LJcF+dl2ZEpSTJRCc+L7Bnf2houe
 PdjZu/MRhCqDvcIwMQCG/P70aRqiSvrZonBGq1UiQgfrg9N6kcQALB+BW
 VcAgi3ZGN/7+fBOezF1ToYVVL3UAzG26SSwB6AXKPAzYfZ/hApSgWqtY7
 Begio3p9FU11DxGK7kBrBiQy5OSXRpNDMxhsWW8feekj7b58spg+NAuh3
 UF8uTkWh0p/Lk9pjex/6uvTjCGi2s/QOyDmnD0XQUB0g1ipJLu4BZ6dzQ
 d5gKBVjyD/kM8+ut/lxHLps7XbsC1xE6aP4VC8WJiDxpgLVhUWsWbrjcd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="357715495"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="357715495"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 00:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="959083700"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="959083700"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jun 2023 00:09:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 00:09:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 00:09:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 00:09:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WmkVVy+aMli64aM0TOQXAv+z1rcaU8jNCKYvy/EKwgLEVurEQLewYhmtHycfp2Ar/9uYJa66JechXDG8P+yG4lBCq86E1B71EEB06KVP29Zk6/zj8gsagj6cc2KfhMt4ysE9VlS5B5HsHYh+w/8l5P7w7jduSB/G/WkZx9DAf953JaSFKoVupIkpKIAs8cehgVODBOCZc1pxjlDJINMO4ySfciNRWfq1AkRq5EmTKbrhBYFtf2im/Q7N5YkM3dpotYeJNTLRbeBI8xOPgpQrlFhVUI67uX09TK1Dgp8lecT6cBoKfR7M9U7Yge59ZoTHJAZ7gZabYTmzqZ+Cwlq5Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pZ18n/28Z37tg89DZnIlPI7W5TEMkt51EmA4QhsmK1M=;
 b=fT5T2prC1Ttuse2OjJviCJmPdkd0a5ssClDXiYsJCBV1Wl1pZPZ8LT6cgYQ9Cv6EXrBXMbaT6CkRrKbPji6iLmaOk7Dm2C67oNE2OQimINq/Kf0ju7YB5NtXzifsUkpOJwQ5Y3k71mDbT/mRO5j3qvJVgNNOvW105u56BAgwC41M5wb4XHnordoaXHNj50si7LBEcnjoa/Fmc71ss4OqUHF43w9X90SMIXLTvQBLpNp4WdB+NmLmBB8HDSSWPF4xO9T7XajICrsHJ1TicQkNU9dm46xjYzNLYj/VxBA1DJa7eccPTgi5oKr91k8zIaf4ky/eGubrJ4HSwvBk1xo3rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1929.namprd11.prod.outlook.com (2603:10b6:3:10a::22)
 by BL3PR11MB6314.namprd11.prod.outlook.com (2603:10b6:208:3b1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Thu, 15 Jun
 2023 07:09:46 +0000
Received: from DM5PR11MB1929.namprd11.prod.outlook.com
 ([fe80::3bd1:5ee8:a60a:88e7]) by DM5PR11MB1929.namprd11.prod.outlook.com
 ([fe80::3bd1:5ee8:a60a:88e7%6]) with mapi id 15.20.6500.025; Thu, 15 Jun 2023
 07:09:45 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 3/3] drm/i915/display: Add wrapper to Compute SAD
Thread-Index: AQHZmvmjZVNbEwfE4kCIWf/Dy2ds5q+LRayAgAA0e8A=
Date: Thu, 15 Jun 2023 07:09:45 +0000
Message-ID: <DM5PR11MB192969014797240599799E6BB25BA@DM5PR11MB1929.namprd11.prod.outlook.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-4-mitulkumar.ajitkumar.golani@intel.com>
 <SJ1PR11MB6129AD5928FEB481BF6B84FEB95BA@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129AD5928FEB481BF6B84FEB95BA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB1929:EE_|BL3PR11MB6314:EE_
x-ms-office365-filtering-correlation-id: a5e026bf-ae5d-4de7-5e91-08db6d6f7f7c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zNOyb3o2aVqFTD3Mbo/cOFEWuoBeCDMZnu0gvFiV+Bm+y6BqiOaJqxNyXklBulZLF8yiBk46in4wpbdmbkIYZdPVI4KUAF2FNxPS35nhHg5Qhe9v4t9AmlI60zexRjFHhRW2ChyMQakQuvvewHWpqUPY29oj9In8t6xHSnpa8b/QDEeysWgHTVzput+GMQCvFmHstsWbUpPQnkH6AITcJ6PsSkFRZx+AB8r4Zy/g/bIik6WvaeTO+rWn8umhUiq0XXoELo6TCYnHWnkfKkPggLaE4VUV/YViMAEHgnv6LkvGXkmY2RPsAFLcB/W+vViDHtPSVAkW9p3id1l1bxi6okqE6MdLR+j8h1jaPi4Ge3C3hbEHT7Yvx0WRMbyfIfuOdnpZHMR+T8ASVal10jL6cPzZVdtn4vHaLWNfstExU8hWWhlkj9Np6jUbEowX4xMdGg3zeThQf0EkslkSU4+TEMpWQHUkOCpgDFQ42yu4iJQCK4d7MLxH84zdpIV0Uy7hISQWKORxvxekjuqmm9Vy9aCKQVTQxFsn/Pc0PuKw4hC4fNC9W4MTYXQB1htr0mdMeaZQ/LGgSg3wZRKS9glR+zM5r5MgxwGCFKb2WwdLalqxdFSTBRbA+SMs7VtvglwW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1929.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(396003)(39860400002)(346002)(376002)(451199021)(66476007)(64756008)(66556008)(66446008)(4326008)(66946007)(76116006)(33656002)(316002)(52536014)(5660300002)(2906002)(8676002)(8936002)(41300700001)(7696005)(38070700005)(54906003)(110136005)(86362001)(55016003)(38100700002)(478600001)(122000001)(6506007)(26005)(9686003)(55236004)(107886003)(186003)(53546011)(71200400001)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PphOLsF1heXaoue1my7rIrJS0meUq6e70rd2K+Wg8HIkFeud/WwNfeBlocG+?=
 =?us-ascii?Q?FbAEk3i0biz1Cwu+sXnb+t0mZDvE48Jj6QYvlDg1uzIgdKlWoDavJNw9vY6+?=
 =?us-ascii?Q?StsB1vHxzjrtoIAYVFogxIXVeG5D7nkvtA7YA0NtAx1szOwwDXCsgtaZQJ4P?=
 =?us-ascii?Q?BHD+V+wCatPak9XlZf0fAh6CltHWealNR64zdVIRx4kIbcrDKgM8EtrEay2D?=
 =?us-ascii?Q?juzzt6rqUYSyVIpmIFByloGkDGS9UXI3bf0UQb14b2Irw42cz7qDiQKBnFEv?=
 =?us-ascii?Q?Z2c7WJEk0vdhkfCMkJzVOSJKQG4WqCeAJItbUJO5XqsDmcX7cPIamopKa5bj?=
 =?us-ascii?Q?/gM2zwyBHSrvfETbDoRsNUHJAMZFkQmEzHBRZT7batazLa3RWmbV0xTKVrix?=
 =?us-ascii?Q?i0/pwmGrm6/5DwqyQ18Kks0u4DKmYLlwpkgvu+T+yPyxNPpd2UpZJw9w0Wh9?=
 =?us-ascii?Q?deZPmJmnGH6ngHxNdKUF4UDqzTxQ+A2JT0oMwNx1vKBgNW2duOb0rAfyU24P?=
 =?us-ascii?Q?vw3IUpg6wXIg/QyJMI8G98ah7+x+lSiQPk2vbnjFLQBH5OzBCr0Ira7YaLly?=
 =?us-ascii?Q?81v7kGSCgPIREODcPE8ULhGYKDM/fJdP6uK+puT9jXA9CWGn9uS5E4PyVj69?=
 =?us-ascii?Q?y1LGbDznG3cHKlpUpDT5VGnLqyw4lPoXRq97nWf08yxVunV2cGV79S/biHoH?=
 =?us-ascii?Q?hpgUA/Ofz0QWXZjKjzspMGSCKk92gcBTm/rPl+qLUo9Agr9FFd0pEl8usnpz?=
 =?us-ascii?Q?MpVSNJzr+kBk98y7UYFMIzrw/OnkLEOCHyLWrr8lzoTOBUk6rsz8pGScp/8V?=
 =?us-ascii?Q?Sz6tcrYcD4xMaFGuyZ0qe/jtjNg4Spnr8Rkwkc78PfKfZepiNzzea9srj+rd?=
 =?us-ascii?Q?9PY+quTeSFakwpJzbm/ACxFdn+cOOO6dkavY/noXQRc9iKnrEx+s4ZvfIpJw?=
 =?us-ascii?Q?YoxiYGZDLGzZUqzIhtd+5VNfJ3bPwAqqLK5PzOdRCi/Jh3lbADjDJlUExRF4?=
 =?us-ascii?Q?AE14OVSLjnRXgSyUs9Xue/QDYj9Ugz3KvjUR7+HCnbOO3mDiQ/a4JzGN8Oma?=
 =?us-ascii?Q?k11IY8tEn7n6T6dsbnfqbllRKxWCvbTNmhgKi1p9TVclSqeD+t45B80Z8tVI?=
 =?us-ascii?Q?p1ebT5qOyhBBZkhM64dyM+N9IWCgxB8DAOI+XHkR4Bs5eusYPTD2IFDpUBSU?=
 =?us-ascii?Q?0fhg9hnib9jK5Bljumq68t5Mj6FZ+B5KD05ikL14t15y5IwpR4G0Vq4lpBRI?=
 =?us-ascii?Q?ijCQy0Zj54+pVHz8sNlPvhugXnbFvhRPBRCZuDsQYq8tIgopaD90nhbRtjQK?=
 =?us-ascii?Q?7h6Qv8ccZ6vhAdCxmXeEb8krV96lA0mYOvLlOLOV+G1+UJfCqFM3IOjEJzgj?=
 =?us-ascii?Q?xfVvl5Ix3qOIrxSXBSO8+/FpAe2qHmqGLR5GlTSCMzRFhS/1MfzWkpIeQeMt?=
 =?us-ascii?Q?jqt5BSPHa3pf3+LRP0/WYJuBllyy594iZaU885tvHDetalYTFRN+HX4T8Bbv?=
 =?us-ascii?Q?jR08br5aa5RHjvNBwpMbRcAc+z8Pn9B3fRq4cpPNn2Tlj16GcLD6UjrU9KKh?=
 =?us-ascii?Q?maFdHjwcUYAb0YMhFm9s/UJTdnkd/T+a8efuixTr2aWPwPVnBND49uT+DB6k?=
 =?us-ascii?Q?eM4qeuTZH5tpGD3s7RZLlnI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1929.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5e026bf-ae5d-4de7-5e91-08db6d6f7f7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 07:09:45.0589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f4HkZ7QvfakWg50+HRB4OUAjPpWgyNzztm5fIKSQ4GoB1Oso1JUKM4442h//VS1MfP4O9YS6RQuw212VOawNhxwOKMY0jyETlG9/+CGGFzOwJzdy0aShQkbOLa8YYkLs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6314
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

Hi Chaitanya,

> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: 15 June 2023 09:30
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: RE: [RFC 3/3] drm/i915/display: Add wrapper to Compute SAD
>=20
> Hello Mitul,
>=20
> > -----Original Message-----
> > From: Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>
> > Sent: Friday, June 9, 2023 11:12 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com>; Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com>
> > Subject: [RFC 3/3] drm/i915/display: Add wrapper to Compute SAD
> >
> > Compute SADs that takes into account the supported rate and channel
> > based on the capabilities of the audio source. This wrapper function
> > should encapsulate the logic for determining the supported rate and
> > channel and should return a set of SADs that are compatible with the
> source.
> >
> > --v1:
> > - call intel_audio_compute_eld in this commit as it is defined here
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c | 66
> > ++++++++++++++++++++++ drivers/gpu/drm/i915/display/intel_audio.h |  1
> > + drivers/gpu/drm/i915/display/intel_hdmi.c  |  2 +
> >  3 files changed, 69 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index e20ffc8e9654..a6a58b0f0717 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -794,6 +794,72 @@ bool intel_audio_compute_config(struct
> > intel_encoder *encoder,
> >  	return true;
> >  }
> >
> > +static unsigned int drm_sad_to_channels(const u8 *sad) {
> > +	return 1 + (sad[0] & 0x7);
> > +}
> > +
>=20
> We can do away with the drm_ prefix here.

Thanks for pointing out. Somehow missed while migrating. Pushed fix with ne=
w revision.

>=20
> > +static inline u8 *parse_sad(u8 *eld)
> > +{
>=20
> Nit: eld_to_sad() could be a better name here.

Sure. Corrected in new revision set.

>=20
> > +	unsigned int ver, mnl;
> > +
> > +	ver =3D (eld[DRM_ELD_VER] & DRM_ELD_VER_MASK) >>
> > DRM_ELD_VER_SHIFT;
> > +	if (ver !=3D 2 && ver !=3D 31)
> > +		return NULL;
> > +
> > +	mnl =3D drm_eld_mnl(eld);
> > +	if (mnl > 16)
> > +		return NULL;
> > +
> > +	return eld + DRM_ELD_CEA_SAD(mnl, 0); }
> > +
> > +static u8 get_supported_freq_mask(struct intel_crtc_state
> > +*crtc_state) {
> > +	int audio_freq_hz[] =3D {32000, 44100, 48000, 88000, 96000, 176000,
> > 192000, 0};
>=20
> Please check if we really need this trailing 0 here.
>=20
> To cover the case where the maximum rate is set to 0Hz(init value) we can
> have a check of
>=20
> if (crtc_state->audio.max_frequency < 32000)
>=20
>=20
> Regards
>=20
> Chaitanya

Right Good catch. It would have sent 0xff in that case. Corrected and sent =
with new revision.

Thanks,
Mitul

>=20
> > +	u8 mask =3D 0;
> > +
> > +	for (u8 index =3D 0; index < ARRAY_SIZE(audio_freq_hz); index++) {
> > +		mask |=3D 1 << index;
> > +		if (crtc_state->audio.max_frequency !=3D
> audio_freq_hz[index])
> > +			continue;
> > +		else
> > +			break;
> > +	}
> > +
> > +	return mask;
> > +}
> > +
> > +void intel_audio_compute_eld(struct intel_crtc_state *crtc_state) {
> > +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev)=
;
> > +	u8 *eld, *sad, index, mask =3D 0;
> > +
> > +	eld =3D crtc_state->eld;
> > +	if (!eld) {
> > +		drm_err(&i915->drm, "failed to locate eld\n");
> > +		return;
> > +	}
> > +
> > +	sad =3D (u8 *)parse_sad(eld);
> > +	if (sad) {
> > +		mask =3D get_supported_freq_mask(crtc_state);
> > +
> > +		for (index =3D 0; index < drm_eld_sad_count(eld); index++, sad
> =3D 3) {
> > +			/*
> > +			 *  Respect to source restrictions. If source limit is
> > greater than sink
> > +			 *  capabilities then follow to sink's highest supported
> > rate.
> > +			 */
> > +			if (drm_sad_to_channels(sad) >=3D crtc_state-
> > >audio.max_channel) {
> > +				sad[0] &=3D ~0x7;
> > +				sad[0] |=3D crtc_state->audio.max_channel - 1;
> > +			}
> > +
> > +			sad[1] &=3D mask;
> > +		}
> > +	}
> > +}
> > +
> >  /**
> >   * intel_audio_codec_enable - Enable the audio codec for HD audio
> >   * @encoder: encoder on which to enable audio diff --git
> > a/drivers/gpu/drm/i915/display/intel_audio.h
> > b/drivers/gpu/drm/i915/display/intel_audio.h
> > index 07d034a981e9..2ec7fafd9711 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.h
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> > @@ -14,6 +14,7 @@ struct intel_crtc_state;  struct intel_encoder;
> >
> >  void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
> > +void intel_audio_compute_eld(struct intel_crtc_state *crtc_state);
> >  bool intel_audio_compute_config(struct intel_encoder *encoder,
> >  				struct intel_crtc_state *crtc_state,
> >  				struct drm_connector_state *conn_state);
> diff --git
> > a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 0188a600f9f5..beafeff494f8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2403,6 +2403,8 @@ int intel_hdmi_compute_config(struct
> > intel_encoder *encoder,
> >  		return -EINVAL;
> >  	}
> >
> > +	intel_audio_compute_eld(pipe_config);
> > +
> >  	return 0;
> >  }
> >
> > --
> > 2.25.1


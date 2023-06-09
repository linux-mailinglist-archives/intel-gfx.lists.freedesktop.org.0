Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1871372A179
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 19:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C5E10E157;
	Fri,  9 Jun 2023 17:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9F8710E157
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 17:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686332570; x=1717868570;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZStqZqCJJVVpZx5bol94bOYdEicZCNJUDqZPxA+DEl0=;
 b=OnysOf0MTdv0qtlQRXsvh9wgo1LD3rfXwwGzSZr5lke87cCF+rF3uTbf
 2qW5Ivi7kR5+Lznhu1/ASa0BQt/AYHifo+w8qN7oYA+KDy0Ize6MVvGwW
 pJOsCit0/Rte4P8MVX9mnQfI/hTi0aTsVEi7ZxVBLv+b3GEIF+qjulGhE
 bIm3radXVTmt/94ndZ3RFc8OJpyIKDTqs39CzS6r0klYn21Necef6i1D9
 /LSFs9zBsUVqF44ZnvTQplJADrmGJE/EpN4FxHKp1K9zJ0kTLXd65viNH
 hHSqhzukn6zlY+s7QajCxbdCJaOkw4UAwJz2IxdaSXk0SGIVWEGusZS1D g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="361011509"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="361011509"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 10:42:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="823143543"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="823143543"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 09 Jun 2023 10:42:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 10:42:49 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 10:42:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 9 Jun 2023 10:42:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 9 Jun 2023 10:42:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ECKK/4bsCrSuffl29MXYPUZZMMWfdCaVEMlac6TgZuWzsGXIU4n0Q+zkKwIWO2YU2BPZS2CzJUkqbHikbwNx8eTZ9f9FH10Qnfe0m73R7Zhs36YS+uGxCG1jaYmStpbEK2yDgKwnUfmPfpyheWAhL8HaOKwGzqWepWNc3cv/Y4RhYYa+Bo1cQD6tp6NBvR7QzUcWfIwsLoQU6cld6e9dn+RZS4md9ppXprFjQbwWUe3a7LMKl/7TC5dxPte4aVHJclIStPkKInvgI7b1UOsDtLdBgiopsM5BzzrHSpI44iPD1nKXSndKKPqPmRBIASbdgWqjKWSC9ZusvbKqQf8Hrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UHb9/jHuNE/JP7ARWrhEMXk79sLCuEjgNr7eJiADFBo=;
 b=UbDehbcpmDVhdZEtIumNHyzG709gnZTG/6hzs7zs4Z9/rjM1syQtQpry2+I35nyCmWoP6coFN4iXOzk8rr+bgXCncuRZRtYbPztL1kZSF7QcBXoSO+xLkczJnQidAICRT8ekCapiMeiT8o/UpvOX4lDCyAOA4A39NUcwArokqr+ix7isP9RgpqVRw/EVGcLyywjxn4anqaQB9F9lxj/ZM1bKRclakDeuoT0NHvUo/8Mwz/NmTRvmQuodw2vpzX4LlJM0gTJBHrzkP7Uns2q+/UtQVRZf2hcrD/HYZ9fekR4WwXOC93yphcmR7iNNkuOLc7KZIglH2MdsIfemnTDwtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by DS7PR11MB6198.namprd11.prod.outlook.com (2603:10b6:8:9a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Fri, 9 Jun
 2023 17:42:48 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::c7d5:8421:98a4:2579]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::c7d5:8421:98a4:2579%7]) with mapi id 15.20.6455.043; Fri, 9 Jun 2023
 17:42:48 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 1/4] drm/i915/hdmi: Add audio config related
 params in crtc_state
Thread-Index: AQHZmq6Yw+QgvwH1Gka/nHL5gULZVa+CNugAgACHEBA=
Date: Fri, 9 Jun 2023 17:42:48 +0000
Message-ID: <MWHPR11MB19350B4A974AAB6B3C14CA1FB251A@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230609084504.1929424-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609084504.1929424-2-mitulkumar.ajitkumar.golani@intel.com>
 <87ilbxq8kv.fsf@intel.com>
In-Reply-To: <87ilbxq8kv.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|DS7PR11MB6198:EE_
x-ms-office365-filtering-correlation-id: ab48f4d3-1298-4036-34a7-08db6910f0c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q6ipZ27k8FgzG2Jji8huzh9hjJpZ2EQM+jPbhtbLuzhWiONyFBbhxNtDW/OJ6aapjI9fYDQoPriYc+4pKRVQqHIprENdXFJb2VcPnYM4uRVS/cAphaDZLXIhs3pggard9ilMG6Ro1CXXbyFoDall1p1RBUgErZxBYVITio4oZye1gV6PHHIiitdUetR849TsYbG/9r0jxisemT9P7hbVjlVSxA3ef/Ss5MnpfeoSkxd5RuTd863YFLo5MnF4QX2+/GCGtbW8KOViyDechNz89HQ5v06SQhaZEu1Qrlgzkzp/rh9FH3WVj6F5yGwCULNeF77ypes6mG5KQhIH5+dw3kfmFnARTUTfSTj7izq1tBCgh4KRPXDTcfS/mqhFWYp4Dbi5gasTbuR25PTccOentM9u0hXGpdcT09xv36TdoerA6heic+PpCQd9aR/fZA+VGB32GW8J+mLU93yHAfHS/5KF9FY/Mgtifgpn1ZUAozEOen7wP8oesK67Zf6LZCZwi5SQSzbOkVDONqkCy+WIknXLwg30PwT/zdm/KOG5xgGaOTDAeH+7ufRbBz77XRzecyInNMf8hmT2qClYSscOsiesGdT46GOb24bYRDf+uxF7E5IIudaZmTyD83C89qDh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(346002)(39860400002)(136003)(451199021)(186003)(6506007)(53546011)(9686003)(83380400001)(7696005)(110136005)(2906002)(71200400001)(8676002)(41300700001)(8936002)(82960400001)(55016003)(33656002)(478600001)(86362001)(122000001)(5660300002)(38100700002)(38070700005)(66476007)(66446008)(66556008)(52536014)(76116006)(316002)(66946007)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?41wh6mI8gBhRFoiMn6HP9KTeYfKPn1nOQWen4pZda0dRweszqF/oTxEZTA0B?=
 =?us-ascii?Q?+dxMACTjaKVNlpVN/jXaU5zQFXKvKgGyieOLZaYmTX/plVKMyT7XqbC3ZfPT?=
 =?us-ascii?Q?zDKzhGr6FCFD/ZmOIQFpf10eyB2CqNnggo9gHU028UO9ZJvB8QEfsw8iGad1?=
 =?us-ascii?Q?q6CfYYtn0xceD53EZ32RguPSPmiu6ovIcmHcFGT/azxAW2G09EicpOXBBMJK?=
 =?us-ascii?Q?Wz6jmrPZz8BjOObtGS2Sm35wf6jBZHeStSInjVSrwaAuywLmbm2gvcDthIVA?=
 =?us-ascii?Q?8ewKMfN9ujQ7CoHAQVOnCVvxUJRueG/QfWr/qQQ0Z3a6aJed9Y7K4Fuqpdsk?=
 =?us-ascii?Q?/rAZmFV+FqkSTjaSwlGveXLr3s8ysm5tPeqoW5OqxT5jtg6EFc4ehzgQi/l2?=
 =?us-ascii?Q?BuDY9wugLCKRa9VqiMLJYc/sEy0J0FEH1mtLxlkiJCdJl/m7C2GKK4cWBbdz?=
 =?us-ascii?Q?sAuWQhzncAF8hKfeP/P+zE24WeCeytrO4r6Q1WLQHBYiR+QSaDlmM17xaetK?=
 =?us-ascii?Q?brfdp0Ja5Dmf7Q/DwCHGRkH7+87Orgv1gUOp5PqkZBlXZ4u6o+CNFitlXjZX?=
 =?us-ascii?Q?J+aLf8LyGpzo8GuqNbeOqQqQ4uo3/ckmlYkCEHfBzS1qf7yBrGBgRLKDtIoZ?=
 =?us-ascii?Q?ChqQmBLfKntLHw3TDmsctcwAP8aiYY+s6VK6mByMmgyf7n2SMMeDb4HEY1rJ?=
 =?us-ascii?Q?hwuLLGay7ySvA6wb/k0NiXZMS/ojyxRE1GPhxWORa9/ooEbLpe2cCpI75sPf?=
 =?us-ascii?Q?CNs0QSGJ4RF7OWsm1hX5J8zsG4zIC8CU6q+dvjn+CAHTXcivDAtKXaSp/ADj?=
 =?us-ascii?Q?75vdE2fpCIK/yW21J5v0ZtN6BSVFcCeEpLkAfDtiftfsQNAe2jDmwZQD1Su9?=
 =?us-ascii?Q?WHq8cUyQS1rIRJMAu/S4ujNi2dIl5byOZ4vsXTupfzMSRJG202PcihPfUkPQ?=
 =?us-ascii?Q?5IAaMbnX7rmAY2dQob3GbSbYTQ3v50QU7UFtuqVPf8EZCJxbCkmrNsThH7TK?=
 =?us-ascii?Q?7TZnjsypfhZYTK3rF1yxC3jpL4CIh/LaLxwSpE4P0in80e1qYcaM9DEknhGw?=
 =?us-ascii?Q?Sbg4vm41YkTKd5UrRFE4iMvTuFSgP+fSZ0OVHrim3OBPx9+IDeR8i/Au76J+?=
 =?us-ascii?Q?yqR7KvElwnSn966igmUhhHYwtK19Dkd/+NoPvEHS9UIkvWF7371gs/B2zg39?=
 =?us-ascii?Q?qSiLaGritnv1samuLtpw7gZ/AvFr80Vauclq4RxQsZOPv0I2lTwAjNHcsz8W?=
 =?us-ascii?Q?drUhHSAd2w3W+b//OOT4C9XmQS5wH7EtKBPYcLKMWe73gqXGjqfqkkpBVyzo?=
 =?us-ascii?Q?lPgWdgqUNh54bPeWagw/2jcFSRGHEoc5DYZxSdhPxAA1MR9SXZcRAFRcWGMw?=
 =?us-ascii?Q?iyQHCgulA6yUQCl8Y8CRvV9hMwxfBmpRzPXLG/1O9ZHNXxwQIZqJjN+BVXxC?=
 =?us-ascii?Q?wROsbVWjnK3xBZrvxRlMyZeWEpp6vpbwJJq0kO8+uDzuVI9XFmww8Q+zqDie?=
 =?us-ascii?Q?BeABof8A9UWax6/K87B4kHk1ppd1ltztCc0TifIKCcQK4L4E+CTsvz66gToV?=
 =?us-ascii?Q?FOc+XUK1wFrvAqDlSvngXaafo1BVVZQ69/TE7iEnZYfHHogAHiPfR2GbiNef?=
 =?us-ascii?Q?u0SIbeVaxT1rUvE2HRywXuZNKOltPNxm5ms7Z/wYUzRQBFe3T21PzjLZ5b1n?=
 =?us-ascii?Q?tmivPc8eZKukCqTLKJE/vcCvgs0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab48f4d3-1298-4036-34a7-08db6910f0c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2023 17:42:48.2403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mxQDQOGjNSmaoX1alSsBxXochsnIb590o1X9POQ3C8JUyhEpBg/GCLCk2TzcETTFZBFBG4RQEf8TIHEncTnVUo5i8BAoJfv8ALSKCryLH+V7EUOeRLn4LAlTH0B/5AwW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6198
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/hdmi: Add audio config related
 params in crtc_state
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
> Sent: 09 June 2023 15:08
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/hdmi: Add audio config relate=
d
> params in crtc_state
>=20
> On Fri, 09 Jun 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > Add source audio-related config params in crtc_state.
> > These params can be supported frequency, supported channel, and audio
> > support, which can be further computed based on source capabilities.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_types.h | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 731f2ec04d5c..873a60f3f870 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1129,9 +1129,15 @@ struct intel_crtc_state {
> >  	/* Whether we should send NULL infoframes. Required for audio. */
> >  	bool has_hdmi_sink;
> >
> > -	/* Audio enabled on this pipe. Only valid if either has_hdmi_sink or
> > -	 * has_dp_encoder is set. */
> > -	bool has_audio;
> > +	struct {
> > +		bool has_audio;
> > +
> > +		/* Audio rate in Hz */
> > +		unsigned int max_frequency;
> > +
> > +		/* Number of audio channels */
> > +		unsigned int max_channel;
>=20
> Please just use int, not unsigned int, for both of these.

Thanks. Updated changes to new fix version.

>=20
> BR,
> Jani.
>=20
> > +	} audio_config;
> >
> >  	/*
> >  	 * Enable dithering, used when the selected pipe bpp doesn't match
> > the
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center

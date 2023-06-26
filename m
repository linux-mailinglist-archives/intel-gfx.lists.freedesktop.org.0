Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A91AD73E450
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 18:11:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F8D10E02B;
	Mon, 26 Jun 2023 16:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1AA10E02B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 16:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687795887; x=1719331887;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kyhKTBkn6H8mBbK3xMShAll7ZDM6x6T0ITc8El+X+Po=;
 b=jwdC6lGH5MZJLul58gvvbE5zW2rcA8CC4SPM3VTlP2Ntb7vNimqVmmCc
 I5AIlYhpx6BoAL+kVnG5pdYlLB80UFK3KuRVuvgPTQa2MP9X7oyCYVAVC
 yYgc5nbZNC8mPTD8doZnL1fpx/aNm2Cc9Qb+kFBd11+FhGXI/B/1V2RQn
 rlpauZ+e5FsEe5CFPonOyZGo3D9fcX3HzBCBO35ZAH/n0xwBaWbIkN8U7
 Qo352WyU39P7m/C64X9AligXIFLNjs1fDAL9zgNglGJHPm06ohozsg87v
 yoej6VVWCxDUXAnIt/rQDWC6RmEpp3PeErdN9Iq7j2apnGZXpE5kNKmCI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="424981339"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="424981339"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 09:05:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="1046557900"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="1046557900"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jun 2023 09:05:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 09:05:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 26 Jun 2023 09:05:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 26 Jun 2023 09:05:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iVR4sA6BJ7q/xgev9HkJAbF9BZ8SUxabJpzKGA+t6ebAmYOu2Yk6QotDxYrXTbzh90L0oJ8ckGHo341UnlOKqiqKFu3g3pxL8+Xp9rW+Wm9IiIQR9glF9LeHI6uylPxHrZ16G25pOwdGwTOTqm7859YgryBgYIOTOyQvEJFsRT4wP7lFjnvMDL3NcKcUoiTqb1JGGpANlEOW/xs+2AAKO/4Ezjm6s+NdpVUFuk4h+1bY8tPyx5h8gx/yhtD0pmekK7Hfv1m/NC5Lf4KYm6I5cdsN6Beavqiaor4cPXusFuLAukJ/nAzt4wgrgna0XRIsaIkrR18aqjfPb6vXbyiTJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SKdgCBLL9WcJ53BvToLDwLuSxpoH6CfMTJD5s2GWOJQ=;
 b=DiTIcdYzz8HTCajxBOPIz3aX5mVo3Uw8QCJSJMaKY3iegsYql8iF7gKjoji7VSdhtoa/wVJA1snE1eG+l/leyCRnFo++S6QJPeV4RuxjbdVFC3unO+fw/0neSOABKesctEP3qDHvHOYp6OyUvjynAVaRqPE1jJWSM/IVKSPBrNLpwW689Au22115GxNrFNLE4asJcsr0j5wsls9kqR3s6rnKdTmk8pkHSCSJkgSv39dzgncW7wfwuaoMWomfySlcqy8zQAYeI2f8Y908TJ3KEu7XlMFdXK1h1sPlxOIjL0XG8BPT7R/jSrTKDwX/F7bsoG7HibIuWqlmYr3XDU4yGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Mon, 26 Jun
 2023 16:05:37 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7%11]) with mapi id 15.20.6521.026; Mon, 26 Jun
 2023 16:05:37 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Thread-Topic: [Intel-gfx] [RFC 3/3] drm/i915/display: Add wrapper to Compute
 SAD
Thread-Index: AQHZmvmjZVNbEwfE4kCIWf/Dy2ds5q+SCfkAgAtPy8A=
Date: Mon, 26 Jun 2023 16:05:37 +0000
Message-ID: <MWHPR11MB1935A90436EC172C684032C5B226A@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-4-mitulkumar.ajitkumar.golani@intel.com>
 <alpine.DEB.2.22.394.2306191406420.3532114@eliteleevi.tm.intel.com>
In-Reply-To: <alpine.DEB.2.22.394.2306191406420.3532114@eliteleevi.tm.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|MN0PR11MB6011:EE_
x-ms-office365-filtering-correlation-id: e2bacba8-2636-4e8e-8189-08db765f2e62
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hoM859fvu6r1TytNyDgpuS832VPaN7s7mt5uVf/QQCb2v6gAU3bMJVvSDq5IRZTZk1BOaBeZoQ9zxwSy6WqLtAqzLqwIB0bgSQcddZ2nsrP5W8BP4IubDxfjg8yRoIU4WSMLvuY2+riybbcqUolV/PHCWog9IVYddodBvOiTTtRvKp9gquH0MOeUzyfslouUK5AKs7LYVN6FELusEoFCH9KEu1LNe41q2DhF2pbt0FBmnHqdBTqyfHBe/fTVmMEcif7UeCjyBFHqV0BS2E/sDdafd++OYyYJ72A7YvNFq8jYPqee7kUgpufLQY8UOvDJv10ATwdKFDpdXZhCJyLz61JMHINoL+sVkjuiRR+ykycHMCJBWATSwCa0GnuaKqcjVOiUriw7VND6KNTgUFioMEAF/k3BJmS0dB31d+AyWJguUSGy6JuBTAVHOUqeGDKQgjes1UG+jSmRK5dYqyMehl/V8aOpQBKpjh8a2f6nN23A5vYoEF7XcfwMKzHoIxuF6TYUu0dscdPoU6JHEjvuYsKovB6WJ0AziGBHgneUWu5XV4hf3xZT9tR7L2neSZ1lDeRJjn+T3VdnM7t0WTSrBmQVi/TtOJB5ir2bEocBMT6CbQoWgt4X9mfUtBdSmCog
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(396003)(366004)(346002)(39860400002)(451199021)(83380400001)(8936002)(316002)(52536014)(7696005)(71200400001)(54906003)(8676002)(4326008)(41300700001)(33656002)(55016003)(82960400001)(122000001)(86362001)(38100700002)(5660300002)(66946007)(66556008)(66476007)(66446008)(64756008)(6916009)(76116006)(2906002)(478600001)(26005)(9686003)(186003)(38070700005)(53546011)(6506007)(55236004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YAM6glH3kgP4LRYKjzjhHpfkkpeNNYPU32yHiI+RwY+BWobauGZsz17omgYc?=
 =?us-ascii?Q?BULQZZ/1bCompTQeFqcg5pVza/eaOn0CZBGbZXJ3Ap1Ashirtf1vqmP/9D1G?=
 =?us-ascii?Q?2ZTONRJcU/jm1gRZEBeBFmAklleuYeJLf59E3Jr/Ky4Cde55LP2I6HIHgqke?=
 =?us-ascii?Q?aVr8QdmRvqMzBIoxMLKvrkiby2aY0HmQKPIrOrLBe5AbbBEn1Kih7fmp8yJW?=
 =?us-ascii?Q?D6xre6w9rdAvjhjhHusPQeJiGVax3OZiqk4zj1coXhBv/CQAfnVnAmkjfRGo?=
 =?us-ascii?Q?goxE6gU6laD0OET/cmqf6cSQ09nD5Fl6XOrvDkS/g5oKSv96sU2kujJgdrrg?=
 =?us-ascii?Q?SzaSEjV5rkQkOf4jqbUL+KZh2NQTXAswqXarGYEnJQxna0VWYxxwbNXi1IG3?=
 =?us-ascii?Q?EKETVJty6AjoY6Cn3O06WC0p1XeC0doU9QmOiMvcgOZ0qMg/LLeJQGIX77kE?=
 =?us-ascii?Q?nYTM/ds8c4ZWeEAnYNjo0dZVk1ejnVUKc7jA6EsOIkY2N6tnp27Zo2GXCX17?=
 =?us-ascii?Q?WQU2kycxZkRxgBeXJaOE7wIUCdk0kL+0rM4EBge0J3GjE3Al6eUuivy00lt+?=
 =?us-ascii?Q?fyzUsF3w0keazAl22WdVHFZCPlTlQIXnkk2X13wGiUehkU+PV7r0MqTi/Erd?=
 =?us-ascii?Q?t0039FR/rJesW4aPDrUuKUsLNDs6CcvMXmmJFFBjF6sc2qcUuwSsQt/3ccc7?=
 =?us-ascii?Q?pgtJcP8W21sZQ4CckvKxjjzgM1Sdbb14msv7xNNaVEESBIVP22TzPllMFR0n?=
 =?us-ascii?Q?bNzXc49RtWIzzMk4Dy+sQlvRRUpvT0+aMCPrpZg+aRqMykDR5qZBSIKCJ6D2?=
 =?us-ascii?Q?LXMQJHbLER2I6YPglomvBPJCU7fUKsJOX7JqeNasg2Tbn00l5gT3yg+bhcrN?=
 =?us-ascii?Q?EXiof96U/7/z3Uyx1I1qjYG/NLWK5s2QBlNVMLVwMN5FUlWuTPyGEJnku5y+?=
 =?us-ascii?Q?U80aBu1vEcTgZioXYWoVwBt1oPdutfyHf5RFbl4PfGpzbHghWnzHoz8c9Lr2?=
 =?us-ascii?Q?X+k+XcSdDz40x6I75L313rNpV8voey7JkHnLcgQhRFzI/EijstbbTW0thYtS?=
 =?us-ascii?Q?oQuAF+UPnxWHWMRMB6vPp/NsNSKc1rsZwTFxggsmDPB+/wrAU5Y7ECk3U+W+?=
 =?us-ascii?Q?o26OSddyy/PJeyVrQznWKuE3soMy9S1DPOFMZlzPhXvAbQvkIISduzMN37zo?=
 =?us-ascii?Q?7vO2Ie8gocsSbPd+UnrrsUoS0SmFQa5UXM/KxGQ04Q5AfbxaqZpEin1qPkw8?=
 =?us-ascii?Q?XbKZG+EG2hweZpnDZQ9a4fsdRa1jxRMz9PHTz0DauFZP0IkLlUkhfA9Q8o8f?=
 =?us-ascii?Q?nMjYHNKkMaLi1DOp0L9jg5Yx3BtiFIYlhBYqEQvlhifoS7Zmd/ImnjYC+7ul?=
 =?us-ascii?Q?L5TaDBplW9dzsbtwtso5PgW+rpV+3maJ/SYO93HfwyLYRkpsXeldTSIKgXIU?=
 =?us-ascii?Q?sd4nkDbGiwQuZUjO46sI8xO+X3dwK/KEdCsC+O08JvkShynzBGYAgOffkUwO?=
 =?us-ascii?Q?bJv76+04aTNe18g1FtVrJzyeBxNDsXAEHr0oYOQrRg2Bg84+JGqm/wIKXG0e?=
 =?us-ascii?Q?/7OwWDgcOMyNE5oanjPRtZCKlFTISY5uOsbRkzbDvJmNMz/PiHA5c46xYIey?=
 =?us-ascii?Q?RyOP10LjtTRyaI6el/his8g=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2bacba8-2636-4e8e-8189-08db765f2e62
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2023 16:05:37.5203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oIPrhiGuYYQMS4s9aBSh+gIOqwBpIpO/oFPNXfNS9uUKYEbsoeHnH/di/hM8b/+G3/EnSJKYwQigjckQWnUDYQPB5ZTRv/b1YE0VJDaX9HukPY7rJ3sUX515UMgL8odm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6011
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jyri.sarha@linux.intel.com" <jyri.sarha@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Kai,

> -----Original Message-----
> From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Sent: 19 June 2023 16:50
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; jyri.sarha@linux.intel.com
> Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915/display: Add wrapper to Compu=
te
> SAD
>=20
> Hi,
>=20
> [+Jyri]
>=20
> On Fri, 9 Jun 2023, Mitul Golani wrote:
>=20
> > Compute SADs that takes into account the supported rate and channel
> > based on the capabilities of the audio source. This wrapper function
> > should encapsulate the logic for determining the supported rate and
> > channel and should return a set of SADs that are compatible with the
> > source.
>=20
> In general looks good. A few minor comments inline:
>=20
> > +static u8 get_supported_freq_mask(struct intel_crtc_state
> > +*crtc_state) {
> > +	int audio_freq_hz[] =3D {32000, 44100, 48000, 88000, 96000, 176000,
> 192000, 0};
> > +	u8 mask =3D 0;
> > +
> > +	for (u8 index =3D 0; index < ARRAY_SIZE(audio_freq_hz); index++) {
>=20
> Minor nitpick: the use of "u8" in many places seems a bit misleading. It
> seems for many places (like the "index" here), you can just use int.
> But right, the SAD mask is 8bit, so maybe the get_support_freq_mask() is =
still
> warranted to return a u8 mask.

Thanks for inputs. Few more places where I could have avoided using u8. I w=
ill
push the correction with new revision.

>=20
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
> +=3D 3) {
> > +			/*
> > +			 *  Respect to source restrictions. If source limit is
> greater than sink
> > +			 *  capabilities then follow to sink's highest supported
> rate.
> > +			 */
>=20
> Minor: maybe reword "Respect source restricitions. Limit capabilities to =
a
> subset that is supported both by the source and the sink."?

Thanks for inputs. Few more places where I could have avoided using u8. I w=
ill
push the correction with new revision.

>=20
> > +			if (drm_sad_to_channels(sad) >=3D crtc_state-
> >audio.max_channel) {
> > +				sad[0] &=3D ~0x7;
> > +				sad[0] |=3D crtc_state->audio.max_channel - 1;
>=20
> Can we add a debug trace here in case the channel count is limited?
>=20
> Br, Kai

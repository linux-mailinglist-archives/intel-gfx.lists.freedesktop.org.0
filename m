Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D003777F816
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 15:53:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED9510E48F;
	Thu, 17 Aug 2023 13:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D8A10E48F
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 13:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692280401; x=1723816401;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Cp00NHm8jRmrLyOj1eThjbSm1ftqeM0+9illsmxypEo=;
 b=mDBENDfpy8Dti2IrBlVXAWymtASkWwLgYabAOncZRrq8uekZQkz7s3np
 fPkioX6Yl0zMdoLMiy8JC8hF1N4Mh5H0ueTpm7pOrK/5efIRmjl/ytl7B
 6noF4ad4PMUJfMMmZHvLh3Wqcj3SCsu1ErGAATk6biuzZCfMzLfuZXBao
 Pgzrn3yZrWDnCeISmigWJD1zqEBUDdQNOluFbKH40Sd+HVW/Eu+uXdJsj
 kIiGoII1QS+jQnwTu07CblSDZzSo7eplr6W4gw6PWB1hedOKeYZf++IiJ
 dzCUX2/sFAVD8gh2VFC3QfNBxZBlKtH3UhrWX4sNXpWnWAI51vX7vFXCw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436732354"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="436732354"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 06:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="804682214"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="804682214"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 17 Aug 2023 06:50:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 06:50:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 06:50:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 06:50:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 06:50:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFxDXlMmq9KfrDl/p8pjOSNn5EoTSZu3WaY0jdFEbCmECBDzl1KCDYirkoiO111HdTi/WGzqA5+oBwQnvq/keaDWCSvwJ4u2UbeCFi3wHMTM1rPGhbkDoFcC7FrvEjm0lcx8jFfYA08VCKlKwWUiqx3iKgoJ8OVHRte4Hqhd95PBXO8VkaY6rhX+AifTF5Pe4pvMQ03bQHTeJn06gBz1t6kMYDA3UeJIy0k1srRTKc/TGEQwo1GZFnIMzNdvjnO0/N6bqzbr7xQI/Vv3VdKCK87YEkv8at06P3XdgNJ5huzM8/kiB6dyj5S9LYGJ/dmbT2Tn+GSA2YohUnnWcECSag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nj5/mnLyrLYHQR8J0xtM7GRVCNELZogkq4RLYlqD42I=;
 b=JjZVynyyLcF7Gv53RmJW4BZH52w7VhxNHVo/1vr+SpoDPnxDfMwVThK6HiJHScnDLAPfzLiumsvtFYForE+bP0r9/ys3OJ3EX8aew827kbQ1362kSrp97PaA5NbGr1t5kBUkSdu/tG3Mrbo0BBB5Mchd0/+WbVi5QUejcCe84wWyeY4sr+I+/7pSaqGVV56gBfDd/oNOMlKGvexqvv+ZF/AE/6wYFP0vm1v7pAEWbVAlnFQhsAKtTvLbi5u9zojswiB49FwBIUIoTxqhnU38R5HOVEHuy7Tl4UWeCwPlg+WStdxoRbqKwGiqG9ao2PVLd3xGkQxc1hQ4GzelTeqRqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Thu, 17 Aug
 2023 13:50:20 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee%6]) with mapi id 15.20.6678.029; Thu, 17 Aug 2023
 13:50:19 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
Thread-Index: AQHZ0QoBihjRtTpZi0Kzt4gp4ezyJK/udIWAgAAMf6A=
Date: Thu, 17 Aug 2023 13:50:19 +0000
Message-ID: <IA1PR11MB6348AB95A9C6B39F313947B0B21AA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230817125007.2681331-3-mitulkumar.ajitkumar.golani@intel.com>
 <ZN4axVL9z7OtycRg@intel.com>
In-Reply-To: <ZN4axVL9z7OtycRg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS7PR11MB7859:EE_
x-ms-office365-filtering-correlation-id: a4187bba-466a-47eb-3a16-08db9f28e54e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vK8bl2GBqkt/Od1kCb61yrl9kNqzjtVqbZdjADgHzMJWxIyEQp2HcyoGNKMNAWcVoWczE3YPU/6DI4+IKibhlkje4sQqphACk2LZQ9RMywBYlQddfSy51ZM7eYWYTQT9k5rqyll0MgyYMif+CInlWKhHf/FgJ5cHshw/jRgCpPwYjPAUnc9Rtd2bkBMboCFTxtmHsErbJKmlrKQgrAGPstnE0ER/YpIYFq2X2Md9cj8OX+EeGFeiizlcQwZyjSUhc6fikuNZ+0cAXgOXJSwxCPZy7J52Y/gp/bGR+jBrT2oKqbiYSnuy9fiwJ80kinQ3JqUKlqBXMHjktkqac3BGgMmHA9TvhILLFVRAlLN1qr1iF/xud+c8DDx0OD7FKh8eFTVDxt+ykwe/a2WcWfZLOhfTR1ukGzmQRbST2euknwWQ/GHm9903h9chxXggbelggPWcUNJQzDnfUHADPxUFv3c2GvUZWWygRctQXRguSZ204LpMYbuE4meIPvTbOBvVqW4eDUP08T6i6DzDspfsdugTTNtj2/3YAIokw1P9tjRDeSAg5NCD4X4El7TrPWaxLDyUhKHkvkFJmRBaMO0jJTQlEIbhezW/Jm3qUZiAukU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(376002)(396003)(39860400002)(451199024)(186009)(1800799009)(86362001)(33656002)(122000001)(82960400001)(38070700005)(38100700002)(55016003)(478600001)(5660300002)(55236004)(52536014)(66476007)(76116006)(6506007)(6916009)(66556008)(66446008)(66946007)(316002)(966005)(71200400001)(26005)(7696005)(54906003)(53546011)(64756008)(4326008)(9686003)(8676002)(41300700001)(8936002)(66574015)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?69ejPe3yp1vtUZucecvFM2or9ruFTL6Glz8IrXnhsbKZtj/w1S3RCWx8Bo?=
 =?iso-8859-1?Q?yJXUrsGR/ssUuF96hUGrGEi14Pr2ntm9XStPn6nf14gFplNCRTeKqP4+wT?=
 =?iso-8859-1?Q?M2wnvY7luCUVd9ZS55GdBndUhg68jVPSbyXoKwt8uRd6smlAAC7wsURaRg?=
 =?iso-8859-1?Q?q97AF3kZfAQeoyWbWbVJXboDCXfZKFqKwkjwZgK2D8H65TZDfHAzsqIIpw?=
 =?iso-8859-1?Q?9QkbBrIdphfxMmNlG4arZ6zDlqjIjaC8BKbN0Z4zM36t9gIe03WjiIe3pc?=
 =?iso-8859-1?Q?xVcDJcW1xyJz5641MLF+WHvgNNkDLMgou3FzeojIyMpdoYPBFlDnEh4HHG?=
 =?iso-8859-1?Q?H385kt8w3tKqrQsTAPDdS56KprSxmILj3C7kYmBldqQkMca7Sntta5Ld59?=
 =?iso-8859-1?Q?uvaL3UrfHaJjEkN2spyXA8a0dQvRM12YLxrrEFn4uKwqF0owznVwv7EDxM?=
 =?iso-8859-1?Q?x9Wrcwdbc2A9WLtLkFJ5cdeL6iTLHofPeKwDnr7uTwD9IXpcogDKxHGvxI?=
 =?iso-8859-1?Q?rQLZxOCpetd5khoth4Uc4t/DDOTKS8+l2gS0WxYivHXEM3/IKPM6uOlxSK?=
 =?iso-8859-1?Q?q53wj62o4nQ3vxGwE0m2of7t6DdCbpJ9tM9oskkWj43IFpfgiiuq7iiEqJ?=
 =?iso-8859-1?Q?KwEPScZ2mzzymJq6M2EX3wPB8tu5CmnRy1k1dCAMgGI84WcvXMtRkBgQPp?=
 =?iso-8859-1?Q?fjkItUwJ4tzUtA+MGpyoLuUs3/JJHa+b3xrorZjcjz8O7SE6PGwfvBoTrD?=
 =?iso-8859-1?Q?V6HpglLjBgBjBsE8pwjWbubBEImg4ab5k7yQyWpOl+/L04hB8m+CnUiSgi?=
 =?iso-8859-1?Q?979jIWKANXbdDozX0S97DAaViJJoW05ZcC1XHhAJwPHFmqXRvEhSaRaBso?=
 =?iso-8859-1?Q?B5+FxsziWdJdr6XyDcqk+bDnUIRmiFhAziYaIcp/Y0/qx5WMgYSikOzcFs?=
 =?iso-8859-1?Q?q0AsH+jopAjUKiwUjKHnbqwkWUZ711EVaOwcWZy0MiLThAak5nIpaPt4RX?=
 =?iso-8859-1?Q?gVgIcEuzOh4YK+W7OAHkCUay2EztGZdxF2kLRQ/xMoMtKBLEgX8TyAS0h+?=
 =?iso-8859-1?Q?xP3uz52DuoLHnLwxaogPVucb91Nasb5yWNwwbEwP21AeGrSPWWbXAUbla0?=
 =?iso-8859-1?Q?6/Ic/QMja+P5p1rpnMJhD5xwo8jMKTotSYfiGJDDqhCAD5NG7zu2iB7+aU?=
 =?iso-8859-1?Q?qoKFh9NPBMNlbIjESpjncchLwhmtvurwMqofiQa9g+CWzHfDxDN4Mc0aBK?=
 =?iso-8859-1?Q?ALyLZiCUw3lz8t34TVCfUGv83JOmu/Qktqn3XIcwJ3jjaCAkTeOsvx/AAH?=
 =?iso-8859-1?Q?C6L79W14ge7VQ9wvIMHgBHpGqFqBfGkEKDeN9DGN8VuIgYgKPdB/IbobnO?=
 =?iso-8859-1?Q?ofcPssUQW86dyQ+eRZ1o+r5loN0zXmHQc4cph7qc9wOTtt5jqAtrBv6v4r?=
 =?iso-8859-1?Q?gBz/AXBuWsYn+H9plv/FemVc26kjsREXljMsWKfgovB7IQN79jvpqb95rp?=
 =?iso-8859-1?Q?ylXzP5wkz/elHQfkwbdgE27++TYu9H2u9iWSXsY1AeiWIDyF4RGA2gfCFr?=
 =?iso-8859-1?Q?p6B69gtD3x82nrA4ssSuBds9paB74SaA+PAn3nmHnia8AalKVmX7oHPEPQ?=
 =?iso-8859-1?Q?VD+ESWcQY5UOZuW4QURIpEsR88PsIzmsh/URdITt8s6qw80MW1eD1d4xIF?=
 =?iso-8859-1?Q?dd9SRXPQok8CapmMun4=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4187bba-466a-47eb-3a16-08db9f28e54e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 13:50:19.7534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0UaqE/OPkTg3MVGubG+tS1mUeUfZVr0neKcc+/rBwvLID4h3IssrLWevGCo6VTWEEMCuhb2tMnniekOTfLFPwro10n9rHh0fDNnLWfgevmAv8hccKSTRwB8k+co/XJdy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7859
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Configure and
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jyri.sarha@linux.intel.com" <jyri.sarha@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 17 August 2023 18:34
> To: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; jyri.sarha@linux.intel.com
> Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Configure and
> initialize HDMI audio capabilities
>=20
> On Thu, Aug 17, 2023 at 06:20:06PM +0530, Mitul Golani wrote:
> > Initialize the source audio capabilities in crtc_state property by
> > setting them to their maximum supported values, including max_channel
> > and max_frequency. This allows for the calculation of audio source
> > capabilities with respect to the available mode bandwidth. These
> > capabilities encompass parameters such as supported frequency and
> > channel configurations.
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
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c    | 38 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_types.h    |  6 +++
> >  2 files changed, 44 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index e20ffc8e9654..79377e33a59b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -64,6 +64,9 @@
> >   * struct &i915_audio_component_audio_ops @audio_ops is called from
> i915 driver.
> >   */
> >
> > +#define AUDIO_SAMPLE_CONTAINER_SIZE	32
> > +#define MAX_CHANNEL_COUNT		8
> > +
> >  struct intel_audio_funcs {
> >  	void (*audio_codec_enable)(struct intel_encoder *encoder,
> >  				   const struct intel_crtc_state *crtc_state,
> @@ -770,6 +773,39
> > @@ void intel_audio_sdp_split_update(struct intel_encoder *encoder,
> >  			     crtc_state->sdp_split_enable ?
> AUD_ENABLE_SDP_SPLIT : 0);  }
> >
> > +static int calc_audio_bw(int channel_count, int rate) {
> > +	int bandwidth =3D channel_count * rate *
> AUDIO_SAMPLE_CONTAINER_SIZE;
> > +	return bandwidth;
> > +}
> > +
> > +static void calc_audio_config_params(struct intel_crtc_state
> > +*pipe_config) {
> > +	struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
> > +	int channel_count;
> > +	int index, rate[] =3D { 192000, 176000, 96000, 88000, 48000, 44100,
> 32000 };
> > +	int audio_req_bandwidth, available_blank_bandwidth, vblank,
> hblank;
> > +
> > +	hblank =3D adjusted_mode->htotal - adjusted_mode->hdisplay;
> > +	vblank =3D adjusted_mode->vtotal - adjusted_mode->vdisplay;
> > +	available_blank_bandwidth =3D hblank * vblank *
> > +				    drm_mode_vrefresh(adjusted_mode) *
> pipe_config->pipe_bpp;
> > +	for (channel_count =3D MAX_CHANNEL_COUNT; channel_count > 0;
> channel_count--) {
> > +		for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> > +			audio_req_bandwidth =3D
> calc_audio_bw(channel_count,
> > +							    rate[index]);
> > +			if (audio_req_bandwidth <
> available_blank_bandwidth) {
> > +				pipe_config->audio.max_rate =3D rate[index];
> > +				pipe_config->audio.max_channel_count =3D
> channel_count;
> > +				return;
> > +			}
> > +		}
> > +	}
> > +
> > +	pipe_config->audio.max_rate =3D 0;
> > +	pipe_config->audio.max_channel_count =3D 0; }
> > +
> >  bool intel_audio_compute_config(struct intel_encoder *encoder,
> >  				struct intel_crtc_state *crtc_state,
> >  				struct drm_connector_state *conn_state)
> @@ -791,6 +827,8 @@ bool
> > intel_audio_compute_config(struct intel_encoder *encoder,
> >
> >  	crtc_state->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode)
> /
> > 2;
> >
> > +	calc_audio_config_params(crtc_state);
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
>=20
> From what I can see you only calculate these when computing the ELD, and
> immediately use them there and nowhere else. So I see no reason to bloat
> the crtc_state with this.

Thanks for the inputs, As mentioned in the cover letter, this initial imple=
mentation is
geared towards GLK scenarios with channel and rate constraints, serving as =
a strategic solution.
Additionally, it proves advantageous for addressing future scenarios involv=
ing bandwidth limitations
that may lead to exceedance.

https://gitlab.freedesktop.org/drm/intel/-/issues/5368

Regards,
Mitul
>=20
> >  	} audio;
> >
> >  	/*
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel

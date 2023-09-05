Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1065F79215B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 11:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ACAD10E19A;
	Tue,  5 Sep 2023 09:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075B710E19A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 09:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693905423; x=1725441423;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ryce8IczkBI8dh0FkqG2LHKcKrZsumcF38R2+8i0Q2U=;
 b=HujOQ6C5mmsiubLx5DRoMG/O2C1ZxfX66BHbRuLfDN1mWPKoRcNWNrjr
 RcdSc2lQiBJoeTNxmaCPW2pt5XFqUd5NQ9Ux3827qQXiYJaCKmbP+AbMT
 XBZzXXpxORvN9NLB6KJJODuPm36z95n4OpR6btO5qZKt9YR24RjQiOY9u
 lx2U3kgDBFxIULZhIjUTzHjLD1b3ix3SF+pp37vcrg8aYGIIutI0se88e
 +dFPiCOg2sPt3L8EKb4I6HcGSgv7ydJ9Ff9qmD4zfisiJRe0dfOaZu+xv
 /eRp9SqG9/P5lgiRWbRG6Q798gV+Huu0/n2oxqZdama/iPb/iinxja1RG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="440727165"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="440727165"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 02:17:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="734575189"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="734575189"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2023 02:17:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 5 Sep 2023 02:17:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 5 Sep 2023 02:17:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 5 Sep 2023 02:17:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 5 Sep 2023 02:17:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JRX5GkdGQ8R9y5crmh7Ii95OSPQN5vZiB3aRQnhQFEF2gLRIQqcR1YrAyP3C0EmP9ZAY+RmC5LC/FlxdxJjGoof1odp31dqmBxREobuZLGCkgOAGJry7WhJsOWnGqHEieuPfCBfH+n2Jy5yFDDtu56cuULM0mRnFiEyt26xLeCifKmm5FgFwCO7rROZED0jypFm/x7mpd5zdkGesexMStTZzLMev03K4KLbCBcAsjpa2WOVplIORdfW0UIU7Psr2lVnTgS/ZtGlaJebCnvVPPwg1eSMok2sQgufNqhtB6phWV2zZtJN3jJiTGdbfOSIhgzwJANArI3zuE2v9fCbV4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FCR/QGPNfCi7nipyK3t8UKNm+YMNHVMV8FKzV0fSeSw=;
 b=Xoj+hr6ceGy9mf5/Tz/bZxe7sOskCEMiK8gurg7t9DoC8SvOuJ60AxslSvUwNAvQ2ikxXp0EL6MS06aaAO5SWn9TuBHlgiMH28EDyKJoq+ittJ4QVSWtRFeegyyCB39q0afyxo4+2WObdTqJQaXvvnUp4b/104VvrCPPATG1gjEpIqfkczOtZcPhdhuzW6V4EQ6JLND6Dq0C4OB0PsldMR99URNusD+uIgJ7zhbxmOccouUb25Xax++YlLZ3cm0OETIf5CrB6bYlM9BVNf9MARI1k8DsXbIz2QQbBBWafbyKoRyDcX8Gx6jKom9/7muqVIEmZGUraonCVThSq0m4RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB6788.namprd11.prod.outlook.com (2603:10b6:303:208::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.30; Tue, 5 Sep
 2023 09:17:00 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.030; Tue, 5 Sep 2023
 09:17:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
Thread-Index: AQHZ1EmFKJtJCF+AxEKss9nhuxv8a7AL23qw
Date: Tue, 5 Sep 2023 09:17:00 +0000
Message-ID: <SN7PR11MB6750A1EB6FC814E9775B9D58E3E8A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230821160004.2821445-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230821160004.2821445-4-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230821160004.2821445-4-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB6788:EE_
x-ms-office365-filtering-correlation-id: 15a9a84f-1830-42d3-a0c1-08dbadf0dc53
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mzW8XY8G06jN82YTaMK1SoEdZhMh2XGG5Q6iFWI6uSkuKIBCGWsNolxm/80M2kIMFFMozXVfmNWPvkKQeUv9MU+AKumkB7EdArowBoEdEgLJy3atqH3I9vB07KeHLJ7E2E+YqDMhwiCD0H9jay6Y/GBZPIk3G6GYJRBrPcojf+PAzhiigRehCNbMRui4SCcgoNt/R6cFQd1tjX+KUeGXZa8pZcGTl2iy0LKyndidZguCNM/gwdWgS7XsobPvm0RprnQJSEjRWqq3s0uSCD4CCNZhTX2P0EWIZqihKdkxaBNmwywrVWpdRQf0z6UYFVLf+HjVSCqHs+/3/suA6BkJZhsjApGN0vXSGNu6EoCN1SYrN88kDkBkoiUFP7kHWjtnnQJZeHoH3V6hQ/1PyXD4G8oQOBAHAwChxLS7vW/ugF8u706bQK6l8C7lWtRuW1K0sSUEwBf/vh9jdmn5WkSX9GKj0xmpqPup+IDkMsCrExAqMt0c8SsfFu5LS7mi8RLlNZ/7J4yvdGUXNSIZDq/yJ/2kO8nDmgToOf9oYXZXrRfyAcArzsayeEryxoOXZkdTLTMzHlUB2INH5kihah4EWsSiRiaeuCEPCBilwID2lw2t9V/9fo7+H/VrKCrJsLln
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(39860400002)(136003)(346002)(186009)(1800799009)(451199024)(41300700001)(38070700005)(71200400001)(6506007)(7696005)(478600001)(122000001)(82960400001)(83380400001)(26005)(107886003)(9686003)(38100700002)(55016003)(110136005)(66476007)(66946007)(316002)(64756008)(2906002)(66556008)(66446008)(33656002)(86362001)(76116006)(8936002)(5660300002)(52536014)(8676002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PVQHShavUVYuQobpEl7e24tqEmt0mUNfHKt5f9WHUjVVwghH5yYH5vZRFc3u?=
 =?us-ascii?Q?gWtQXfXT83k/I0u+dTX6QC99mutT9Q9HhgrfOAk5aZVcVqTQE4sI8UTr509u?=
 =?us-ascii?Q?UsxkQdInoMPGjJTvEHfzd8xFuc/FCoBPg6kbHoSZeVTKbgzLCL/26peSeO6K?=
 =?us-ascii?Q?tnbCpwgEB8lt80EE2CM0YYAgqc6olS1FqD+6rQiUUr+ZIITq6PSVccL8/IGJ?=
 =?us-ascii?Q?tpwH5bL861wJTA++mC2ryCqB7Nj5Ld87XvA4V5Y+f0fQGC+wHVgDL1R9B9r2?=
 =?us-ascii?Q?KUvLebeTY5LX3/5IuZJO+nOG1zQdBZyYaZWx9eFfGLwV/Gey3eIX853ZJZaT?=
 =?us-ascii?Q?7W3aq+TywG6uo3kZYjblS+faE79jQ857PsIg/ck0Z+Reld5hL9/byP/+7Um4?=
 =?us-ascii?Q?vWjGZLbV2cF0b5g/nflcemDqZb70B8jGzAheGxZzs8jGUd1X2eXDml2K9e2F?=
 =?us-ascii?Q?1vwAY2+c7eLxZJPpxM7agaungfnPCTxvqKz5dG76cAq2Sr2CqxGXDQTo971j?=
 =?us-ascii?Q?ewLrfVRC021UZ3qS8G9gHPyg5NhH/+1rhpnEhTeWVeMAUX50bO1zJ5KiIyIe?=
 =?us-ascii?Q?KKyTIx9zx/kEqYQA5CqeopKNXbphoHIB2/qejvYy6h6t1ScD3mx5dpEg5zT9?=
 =?us-ascii?Q?dlmEJyBzQD/yIU/e3BFqqWPypZ2vBu/3NjcDdwnLcrcSZpulPkxMBWR0A2Pi?=
 =?us-ascii?Q?iT8BLS8oEP3tmyFLrU51JKwQF+ayImoLckT+n31AWgSlkx1UYR7ByJu+ZSgw?=
 =?us-ascii?Q?iafZFB0T+9LAdDQa3iEhWNqHiXWjuHbs8Q8xwfuZzbdSn79A7qA3OoivxanR?=
 =?us-ascii?Q?bAHa/Lhu3J+4dXXOZlCq6QLdVmDqTv10FMuHYKa82XOe6hi4C/juic6qClny?=
 =?us-ascii?Q?ZNUd0bS8EHXkiOdk1TWT7q+gf373LUqBrvzMrgzmuByyQv5Axmuw/h6HvTVK?=
 =?us-ascii?Q?SANk64I5fJ7ozeKykw9M+hpSiLc8QR8tkpvpibcSMjRKpTkpQtSPvAv8uwTE?=
 =?us-ascii?Q?VNjxUA/H7OMZuij29dC3ZMAZytcmyUhM9BwpiakSs+poJjWtxHla+dY0GfKJ?=
 =?us-ascii?Q?coTkMy1mVvVmt6b0nIEKcGSpPR4Cr8IbOlDK3BpOk8xXllpKyL04W5uk1WJ8?=
 =?us-ascii?Q?FdPV3N9Jz0Ud14LqOlh39PoCqni/xKjyTN/z9qtYKDFjCOLhICtzRryHn0zO?=
 =?us-ascii?Q?qCXQiWGGnEcuk344ETzZSlW8TpJkdcXZ8Btzvm7hyG3AoNsGB6HYbdowQwam?=
 =?us-ascii?Q?36eEbODvG0G/H3WnxnRVLxa+62m52tIaOMnEGN/eeH2Ltxz5bPU3gNu9kqGj?=
 =?us-ascii?Q?ngsAkVKt+lH6316AVpzkLUPVWzp7mJaSu41unMmUc9iO9zpVj1+oNNT5fnQK?=
 =?us-ascii?Q?EwYovePX9h/cuDNpfgz4R34kABYjS4QM5M6/0Zx8odre7paFdXRAIIHCB8Yf?=
 =?us-ascii?Q?IgndBiKTFIIW9VwtDCmUv0BkSzpTqmrvzyEMgylUrjY4EHP8t91iROPmmOJv?=
 =?us-ascii?Q?PoEU04DBS/qtYkgf07uWC9Yo3o1pB0gLpjXQUy4wxeA5TfORnTNZxGw/CPnk?=
 =?us-ascii?Q?7qXJLTizvMabfc5IIOWJXYp58jtBaTfXZd8VDnF/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15a9a84f-1830-42d3-a0c1-08dbadf0dc53
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2023 09:17:00.3010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WAQGe24EvvXg0JvawHYeR984S1ndbnUjCKc6MW2/5opgjcuMKxSFBLdWF63odB5GDY4hyGZDhwO6GA2uBqg7fA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6788
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

> Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and initiali=
ze HDMI
> audio capabilities
>=20
> Initialize the source audio capabilities in the crtc_state property, sett=
ing them to

Nit: maybe mention the above as intel_crtc_state rather than crtc_state pro=
perty as
property usually refer to as drm_property and it just seems a little weird =
to
read. I have seen this in some of your previous patches in this series you =
can make the
changes there as well.

> their maximum supported values for max_channel and max_rate. This
> initialization enables the calculation of audio source capabilities conce=
rning the
> available mode bandwidth. These capabilities encompass parameters such as
> supported rate and channel configurations.
>=20
> Additionally, introduces a wrapper function for computing Short Audio
> Descriptors (SADs). The wrapper function incorporates logic for determini=
ng

Typo * introduce

> supported rates and channels according to the capabilities of the audio s=
ource.
> It returns a set of SADs that are compatible with the audio source's capa=
bilities.
>=20
> --v1:
> - Refactor max_channel and max_rate to this commit as it is being initial=
ised
> here
> - Remove call for intel_audio_compute_eld to avoid any regression while
> merge. instead call it in different commit when it is defined.
> - Use int instead of unsigned int for max_channel and max_frequecy
> - Update commit message and header
>=20
> --v2:
> - Use signed instead of unsigned variables.
> - Avoid using magic numbers and give them proper name.
>=20
> --v3:
> - Move defines to intel_audio.c.
> - use consistent naming convention for rate and channel.
> - declare num_of_channel and aud_rate separately.
> - Declare index value outside of for loop.
> - Move Bandwidth calculation to intel_Audio.c as it is common for both DP=
 and
> HDMI. Also use static.
>=20
> --v10:
> - Merged patch 2 and 3 to deduplicate function calls.
> - Instead using Calibrate and calculated functions separately, removed co=
de
> duplication and merged functions.[Nikula, Jani]
> - Remove magic value for SAD Channel mask. [Nikula, Jani]
> - Corrected rate values based on HDMI Spec [Nikula, Jani]
> - Update drm function to extract SAD from ELD [Nikula, Jani]
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 127 ++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |   6 +
>  2 files changed, 133 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index e20ffc8e9654..2584096d80a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -64,6 +64,10 @@
>   * struct &i915_audio_component_audio_ops @audio_ops is called from i915
> driver.
>   */
>=20
> +#define AUDIO_SAMPLE_CONTAINER_SIZE	32
> +#define MAX_CHANNEL_COUNT		8
> +#define ELD_SAD_CHANNELS_MASK		0x7

Use REG_GENMASK() to create masks should look cleaner

> +
>  struct intel_audio_funcs {
>  	void (*audio_codec_enable)(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state, @@
> -770,6 +774,127 @@ void intel_audio_sdp_split_update(struct intel_encoder
> *encoder,
>  			     crtc_state->sdp_split_enable ?
> AUD_ENABLE_SDP_SPLIT : 0);  }
>=20
> +static int sad_to_channels(const u8 *sad) {
> +	return 1 + (sad[0] & 0x7);
=20
I think you missed using your defined mask here;

> +}
> +
> +static int calc_audio_bw(int channel_count, int rate) {
> +	int bandwidth =3D channel_count * rate *
> AUDIO_SAMPLE_CONTAINER_SIZE;
> +	return bandwidth;

Why introduce a variable here why not just=20
return channel_count * rate * AUDIO_SAMPLE_CONTAINER_SIZE;

> +}
> +
> +static void calc_and_calibrate_audio_config_params(struct intel_crtc_sta=
te
> *pipe_config,
> +						   int channel, bool
> calibration_required) {

I think this should have a int type function that returns 0 if max_rate and=
 max_channel_count
are non zero else return -EINVAL

> +	struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
> +	int channel_count;
> +	int index, rate[] =3D { 192000, 176400, 96000, 88200, 48000, 44100,
> 32000 };

Where do we get these rate values from.
What if we kept them at crtc_state so these can be update if required.

> +	int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
> +
> +	hblank =3D adjusted_mode->htotal - adjusted_mode->hdisplay;
> +	vblank =3D adjusted_mode->vtotal - adjusted_mode->vdisplay;
> +	available_blank_bandwidth =3D hblank * vblank *
> +		drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
> +
> +	/*
> +	 * Expected calibration of channels and respective rates,
> +	 * based on MAX_CHANNEL_COUNT. First calculate channel and
> +	 * rate based on Maximum that source can compute, letter
> +	 * with respect to sink's maximum channel capacity, calibrate
> +	 * supportive rates.

Typo: *maximum and *later and *supported

> +	 */
> +	if (calibration_required) {
> +		channel_count =3D channel;
> +		for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> +			audio_req_bandwidth =3D calc_audio_bw(channel_count,
> +							    rate[index]);
> +			if (audio_req_bandwidth < available_blank_bandwidth)
> {
> +				pipe_config->audio.max_rate =3D rate[index];
> +				pipe_config->audio.max_channel_count =3D
> channel_count;

I think the above lines can be moved to function set_max_rate_and_channel a=
s this is duplicated even in
the else block

> +				return;
> +			}
> +		}
> +	} else {
> +		for (channel_count =3D channel; channel_count > 0;
> channel_count--) {
> +			for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> +				audio_req_bandwidth =3D
> calc_audio_bw(channel_count, rate[index]);
> +				if (audio_req_bandwidth <
> available_blank_bandwidth) {
> +					pipe_config->audio.max_rate =3D
> rate[index];
> +					pipe_config-
> >audio.max_channel_count =3D channel_count;
> +					return;
> +				}
> +			}
> +		}
> +	}
> +
> +	pipe_config->audio.max_rate =3D 0;
> +	pipe_config->audio.max_channel_count =3D 0; }
> +
> +static int get_supported_freq_mask(struct intel_crtc_state *crtc_state)
> +{
> +	int rate[] =3D { 32000, 44100, 48000, 88200, 96000, 176400, 192000 };

So you do use the same array of rates maybe add these in the intel_crtc_sta=
te audio
struct and which can be filled in intel_dp_compute_config ,
also mention where we get these rates from.

> +	int mask =3D 0, index;
> +
> +	for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> +		if (rate[index] > crtc_state->audio.max_rate)
> +			break;
> +
> +		mask |=3D 1 << index;
> +
> +		if (crtc_state->audio.max_rate !=3D rate[index])
> +			continue;

Why are the above two lines of code needed?
It's not like there is anything to skip below them.

> +	}
> +
> +	return mask;
> +}
> +
> +static void intel_audio_compute_eld(struct intel_crtc_state
> +*crtc_state) {

Lets not have this as a void function and lets return the appropriate error=
s
If required

> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	u8 *eld, *sad;
> +	int index, mask =3D 0;
> +
> +	eld =3D crtc_state->eld;
> +	if (!eld)
> +		return;
> +
> +	sad =3D drm_extract_sad_from_eld(eld);
> +	if (!sad)
> +		return;
> +
> +	calc_and_calibrate_audio_config_params(crtc_state,
> MAX_CHANNEL_COUNT,
> +					       false);
> +
> +	mask =3D get_supported_freq_mask(crtc_state);
> +	for (index =3D 0; index < drm_eld_sad_count(eld); index++, sad +=3D 3) =
{
> +		/*
> +		 * Respect source restricitions. Limit capabilities to a subset
> that is
> +		 * supported both by the source and the sink.
> +		 */
> +		if (sad_to_channels(sad) >=3D crtc_state-
> >audio.max_channel_count) {
> +			sad[0] &=3D ~ELD_SAD_CHANNELS_MASK;
> +			sad[0] |=3D crtc_state->audio.max_channel_count - 1;
> +			drm_dbg_kms(&i915->drm, "Channel count is limited
> to %d\n",
> +				    crtc_state->audio.max_channel_count - 1);
> +		} else {
> +			/*
> +			 * calibrate rate when, sink supported channel
> +			 * count is slight less than max supported

Typo: *slightly

Regards,
Suraj Kandpal
> +			 * channel count.
> +			 */
> +			calc_and_calibrate_audio_config_params(crtc_state,
> +
> sad_to_channels(sad),
> +							       true);
> +			mask =3D get_supported_freq_mask(crtc_state);
> +		}
> +
> +		sad[1] &=3D mask;
> +	}
> +}
> +
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state) @@
> -791,6 +916,8 @@ bool intel_audio_compute_config(struct intel_encoder
> *encoder,
>=20
>  	crtc_state->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode) / 2;
>=20
> +	intel_audio_compute_eld(crtc_state);
> +
>  	return true;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ebd147180a6e..8815837a95a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1131,6 +1131,12 @@ struct intel_crtc_state {
>=20
>  	struct {
>  		bool has_audio;
> +
> +		/* Audio rate in Hz */
> +		int max_rate;
> +
> +		/* Number of audio channels */
> +		int max_channel_count;
>  	} audio;
>=20
>  	/*
> --
> 2.25.1


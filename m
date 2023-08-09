Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1733F7754D2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 10:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C8D10E3F7;
	Wed,  9 Aug 2023 08:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D5C110E25E
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 08:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691568729; x=1723104729;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=rG/CFEz6oNSZSY/ZU9te/YkHDkZoQ0SkOGivVu/3aX4=;
 b=UxtFAOOr4IbzNi1su/nhjseBzmtvER8PAyclhtpWAVCLMWXZy9+GnuM2
 wqMh6H+mB/hMOpJl6BrA4FtRGU50fzdsMQwfOw5LvCKD6Clljw7rCkKdX
 Pbd1iHWZ+zAcJTY2qYwpXuRKLnVPSmPdGtkWxfg3+A3BdCDHJzj9Mr+Vu
 HRM+neVrUlOipDoa1CGmX7Rj7vmjGh3Sl5M7PpLVixtIDin7Sp76UAqpB
 +xD1uuYChb0wEHvLYs/FuPcVOiUPg29rYHn+IIyL8dmu2at2TSEEihNN7
 QI9ClCMVKeMa1KDkGM3DoxxxNKaHFoZZGNFcV69Yh+TqX1EcWRWSCUQ0l g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="434944640"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; 
 d="scan'208,217";a="434944640"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 01:12:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="766708344"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; 
 d="scan'208,217";a="766708344"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 09 Aug 2023 01:12:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 9 Aug 2023 01:12:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 9 Aug 2023 01:12:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 9 Aug 2023 01:12:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XCQx382je6TJr28xPgiSMbhp6ZP1NMzyeffFKxTzEyZMa6/svx7EUY0+E9XZI8v92H1dzMsZEK5Mkxzw7MgzIBYbsqQhYVttDiL4W01WCbiUMO+aJp7Z0gCTrfsoCbr3ABYIaWgCuQRJKJd4aM8CX4G3qvHIH3lTYH3JzMjyot/bCG6og4A5TDB7CuMjaU6YfiCOdTfO0+D/am92FumLsZfs5ylVcdXSxeE8gqItsFMDJ9lfVcIa/AJ9lMlATt3ZtPBZnLby98OzqA814GL++jlzlKXyLPVS8Yh+7RYpeqTU9sbQGarohrBR6yPKvenjcyboF0crKl1aHCBYau9cyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QvalFw4xZW6M8sB6v+TLs0aL+oIYysoBd0n+/q6vdzs=;
 b=XucHAlDuWxz6784X36ZAyLPNAL887Qrju41lnsH3yXQNmQS3TanYRpJ2IiJNI1tvE+NNiGtonmsPU+EA2we7owegau64YM7vHifAaCAdFNE87D2aFNllDQHgJQM9JoKLQt62FiKak9fs3v4BQvM+p43Wjw9YeWKju9R8YqU2vRUxZna7kQtXTEmZ0K9PEyEpbr/fnnckD2vbFJKeFxhLTs4eCBCkOfDtSxXuBV9t/fE8Cbm1vvPavhgPEvElnkWBMK8iHlaJhSwx3+N7Dr+P0w3VrtB1QzVXwmkFThIr1UXzImpE1mXiPp0e9EtrvFE1vTT8nG4wGthLxChChSSfSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH7PR11MB8569.namprd11.prod.outlook.com (2603:10b6:510:304::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.28; Wed, 9 Aug
 2023 08:12:06 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::1e5a:c84d:9809:2e8c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::1e5a:c84d:9809:2e8c%7]) with mapi id 15.20.6652.028; Wed, 9 Aug 2023
 08:12:06 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display: optimize DP 2.0 sdp
 split update config
Thread-Index: AQHZxuT9T9d/dgXqE0+QuSw1TayDBa/gaUMAgAE2l14=
Date: Wed, 9 Aug 2023 08:12:06 +0000
Message-ID: <CO1PR11MB496255A23AF66BE25A9CCE6AF612A@CO1PR11MB4962.namprd11.prod.outlook.com>
References: <20230804150339.22012-1-vinod.govindapillai@intel.com>
 <20230804150339.22012-2-vinod.govindapillai@intel.com>
 <877cq5u0q3.fsf@intel.com>
In-Reply-To: <877cq5u0q3.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH7PR11MB8569:EE_
x-ms-office365-filtering-correlation-id: 68c9bdaa-1db2-4e59-3094-08db98b0525d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZgeGBumSnxDwVhQ4PSHkNqtOv+rl6C1pqpH9bzc/GOajNUBcUmHgnAlTaFYNa7nCKS5KSNXNdWZ1yf8svsIL3DgoB4Bm7GculbmPI3Q9fvEvkX5rci76BT3/dON/knpxqBLeyVS8h7EGGd5lchsWwFenPjo7C0Wjyr5qGNN3Von6l2u/+HrAVWRA77WomWcpZS8Wiz26UmFqODT/yL6ms5Uysb0HmnvNep4cQ1YJQiKP1ftH/D09GjPYuZKowDJdcQ3lmYw77+1LxWbw1NqVHg04qMcHsoE0a2MZqjsztJnMi+xut4MIAWtPIqSLq+L19g+Xbm085hxD3W8XvHSTjTAncAx6b18cUu9HwAVQ83CKSKJYUBVFCmVZ3grjs39dkf2KmHKbDS9tG3hHGtgH1LyfZgCCns8krPI4EX3+EEjCbInatu9qegzcNOOw8jO8xJOBkjYvdzu7mW1W7TB0rBYNkdSQy3u1jcoLqR49OOzV4+YS89qkm7YY3Vcvvw9EGA5WQY3UhQePiUpSNSiI+u4e+Vaw2fwIYZk2wDcvV5zR+nDtO6MO6NiHip2khgUxLXVtc8YvlNI/29kwoAR0WTHvT/5VRv7anJ4xXSNfXmC085E+tGzVUuh7/g3ZxXiW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(396003)(346002)(366004)(39860400002)(186006)(1800799006)(451199021)(316002)(2906002)(15650500001)(8936002)(8676002)(52536014)(5660300002)(122000001)(82960400001)(6506007)(53546011)(38100700002)(26005)(38070700005)(83380400001)(41300700001)(91956017)(55016003)(9686003)(7696005)(86362001)(66476007)(66556008)(33656002)(76116006)(66946007)(71200400001)(66446008)(64756008)(478600001)(110136005)(19627405001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?XdEDNuO6131H43KjUD3J73khn+caDcVgpmtDs4e1pSEGyWwXqnPOUfAOsQ?=
 =?iso-8859-1?Q?IDZOMU8zp5IfsBzn6orey+cQlleLITNQ3UGvJW/oi1Ek+GJC4AWfUdHIgR?=
 =?iso-8859-1?Q?Y853DFnlRTtc51ScR+3JszJ5bh4SnvUnaFBA4jBMJ+e0nxb70ayxqEIHab?=
 =?iso-8859-1?Q?239CmtqUVzryy0Gb9y6DnhnIxnCIXHsJUDBvtTHy8Y6blqyRHp2Thq6CeF?=
 =?iso-8859-1?Q?9yidk+Sc8jvLvAWJisVy3OjxXRaLjZNbj1RAfboIpk9Q3Nh3YT6AovkGcz?=
 =?iso-8859-1?Q?F+yGsjo2QaJimwEcEdy3+FHZo801zkcCufax+hfzwZU2+VAbUGDsYksHmz?=
 =?iso-8859-1?Q?KPfSKRz7rZGX3Z3ygLXDVeRt48Gp/jIcCdnGNg4Goh1sm68H+QVP6e9z93?=
 =?iso-8859-1?Q?5/MQTV2vhsuIMqom1nuWOVx6/SOAboa2e7WWmeMKOC7eRwyejb/QF51tHI?=
 =?iso-8859-1?Q?pRCSQZ8X+1+vUvza2XW7fY74BiIUOiQBHHVHwtkDEaOrC/uBENs8j7r6eg?=
 =?iso-8859-1?Q?jA2optG4NG2nOFy2ve9DtGdgQrcyytAEuiF+8x49d131Pp14QtJCcrjzyx?=
 =?iso-8859-1?Q?rapmuiwXONtaZSvbNvgoyPxGC6nKjg3nVSCbjbd9uARZTz5bh4xAvILIO6?=
 =?iso-8859-1?Q?5o+/VpKOQtkpioDWIoUMhtDCbXaU7jfOvUcbCbwEAsxMPGMAltubStFcF3?=
 =?iso-8859-1?Q?Dc2urHTGPiu2qijkIXD/lwOEWuvP1Y9/buyvfDbkcIVRBM9mclP1lomQNF?=
 =?iso-8859-1?Q?+ppYWjGGEitWabCf64GyTpysHNjqwmR/kFHjsQHApinOaJKXFOYAXbDjNg?=
 =?iso-8859-1?Q?jrHzWBQtwpnrnScFFFxks1piqZs14SSyLR1YbYAWIi6TYfWg0het/ZIMmI?=
 =?iso-8859-1?Q?vANUkXJLowazdSOjJmEJyNpc0RZ2sIEfbSPTmdU12aGcUHP0g8fyV1Ilvu?=
 =?iso-8859-1?Q?bblW8s1BZOo5khIlNgT+xjxzH1vO7J487w0QTzdWVCxRXsP0ZVppO0J3RJ?=
 =?iso-8859-1?Q?DeKZF2aTVcBLy4zrm297B9WWf6H7MYMPMPE1KUp4j0+lgZue4h1QbbD+6K?=
 =?iso-8859-1?Q?/JiTDehqq6vaP98fKAD9Z+SBFiJ2lgNZ8x29gHnxzFO8LCjpZhkFBGg4XH?=
 =?iso-8859-1?Q?mCaElJT3CSZ7TW4JNBqYGw5sDcZVZQ/JFDvTInapeOFCeGyXe5jY68dUsW?=
 =?iso-8859-1?Q?g0nw8UXBOIoVZTB/v0sNcwK36pRWS7Y37Ypl4IH93qdRVsrdsDjL2htrxe?=
 =?iso-8859-1?Q?G8ESf5PWjffuWV2x1SR2VXVNHVSM7h2UIPqOVSi4r+rFiGJY5rBaePlZcQ?=
 =?iso-8859-1?Q?1PDdlmoXbzu3EYQq5fCTvAgGHSqtFz2Z31n5WuDDF682q36vdiyMRbPEHf?=
 =?iso-8859-1?Q?qDSEODYDSlQRJJcpR8AxkeioJcwO60URqDbvHxrIWOuS4fPbGrIBo4Ezac?=
 =?iso-8859-1?Q?+HGd8LFomaAo6dsA3+XdPcK6ZtrYMIWqOuSpbpxFVqvSSpZMHu7qMyDMWv?=
 =?iso-8859-1?Q?6rBTQl46eM8dyZkA6X+uk+pBZtPYCpTTElnj7SjRvs+xpsVUjuw5oV35Mz?=
 =?iso-8859-1?Q?1fFcBtSZGChfPW/bKYw45iON99hiGTTZDpJ2NeLncQbqR7imkvw5aROu7u?=
 =?iso-8859-1?Q?2qGGTQcnUF8CSaTHfssUVPB2X+JRmHmq6CI5Cr9hXpyYR/a/JeBn3Z6g?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_CO1PR11MB496255A23AF66BE25A9CCE6AF612ACO1PR11MB4962namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68c9bdaa-1db2-4e59-3094-08db98b0525d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2023 08:12:06.5990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aYcoCAjt57nohIM4lswcrySykoEO/gYvs6fwP7OeOYOl1yS1asRArdhT5YyqZB7krPeejv+2F7bPmfrPSetuVIbocVbPiQjmPm9UFeibmks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8569
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: optimize DP 2.0 sdp
 split update config
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

--_000_CO1PR11MB496255A23AF66BE25A9CCE6AF612ACO1PR11MB4962namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Jani

________________________________
From: Jani Nikula <jani.nikula@linux.intel.com>
Sent: Tuesday, August 8, 2023 4:23 PM
To: Govindapillai, Vinod <vinod.govindapillai@intel.com>; intel-gfx@lists.f=
reedesktop.org <intel-gfx@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: optimize DP 2.0 sdp =
split update config

On Fri, 04 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wr=
ote:
> Optimize DP 2 SDP split config update so that DP-MST code
> path can be supported as well.

What's the optimization?

I meant refactoring!

Okay I will have a  look at updating this  as per your comments

BR
vinod

>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c   |  6 +++---
>  drivers/gpu/drm/i915/display/intel_audio.h   |  3 +--
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  3 ---
>  drivers/gpu/drm/i915/display/intel_display.c |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp.c      | 16 +++++++---------
>  drivers/gpu/drm/i915/display/intel_dp.h      |  2 ++
>  6 files changed, 16 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 3d9c9b4f27f8..19605264a35c 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -759,10 +759,10 @@ static void ibx_audio_codec_enable(struct intel_enc=
oder *encoder,
>        mutex_unlock(&i915->display.audio.mutex);
>  }
>
> -void intel_audio_sdp_split_update(struct intel_encoder *encoder,
> -                               const struct intel_crtc_state *crtc_state=
)
> +void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_st=
ate)
>  {
> -     struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +     struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +     struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>        enum transcoder trans =3D crtc_state->cpu_transcoder;
>
>        if (HAS_DP20(i915))
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm=
/i915/display/intel_audio.h
> index 07d034a981e9..9327954b801e 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -29,7 +29,6 @@ void intel_audio_cdclk_change_pre(struct drm_i915_priva=
te *dev_priv);
>  void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
>  void intel_audio_init(struct drm_i915_private *dev_priv);
>  void intel_audio_deinit(struct drm_i915_private *dev_priv);
> -void intel_audio_sdp_split_update(struct intel_encoder *encoder,
> -                               const struct intel_crtc_state *crtc_state=
);
> +void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_st=
ate);
>
>  #endif /* __INTEL_AUDIO_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3cd2191fa794..542bc521669a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3247,9 +3247,6 @@ static void intel_enable_ddi(struct intel_atomic_st=
ate *state,
>        if (!intel_crtc_is_bigjoiner_slave(crtc_state))
>                intel_ddi_enable_transcoder_func(encoder, crtc_state);
>
> -     /* Enable/Disable DP2.0 SDP split config before transcoder */
> -     intel_audio_sdp_split_update(encoder, crtc_state);
> -
>        intel_enable_transcoder(crtc_state);
>
>        intel_crtc_vblank_on(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 43cba98f7753..54afc559f522 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -402,6 +402,9 @@ void intel_enable_transcoder(const struct intel_crtc_=
state *new_crtc_state)
>
>        assert_planes_disabled(crtc);
>
> +     /* Enable/Disable DP2.0 SDP split config before transcoder */
> +     intel_audio_sdp_split_update(new_crtc_state);

The call belongs in the encoder code. Search for "audio" in
intel_display.c; there's almost nothing.

> +
>        /*
>         * A pipe without a PLL won't actually be able to drive bits from
>         * a plane.  On ILK+ the pipe PLLs are integrated, so we don't
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 03675620e3ea..4a5be800715c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2232,17 +2232,15 @@ intel_dp_compute_output_format(struct intel_encod=
er *encoder,
>        return ret;
>  }
>
> -static void
> -intel_dp_audio_compute_config(struct intel_encoder *encoder,
> -                           struct intel_crtc_state *pipe_config,
> -                           struct drm_connector_state *conn_state)
> +void intel_dp_audio_compute_config(struct intel_crtc_state *pipe_config,
> +                                struct drm_connector_state *conn_state)
>  {
> -     struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +     struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +     struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>        struct drm_connector *connector =3D conn_state->connector;
>
> -     pipe_config->sdp_split_enable =3D
> -             intel_dp_has_audio(encoder, conn_state) &&
> -             intel_dp_is_uhbr(pipe_config);
> +     pipe_config->sdp_split_enable =3D pipe_config->has_audio &&
> +                                     intel_dp_is_uhbr(pipe_config);

Hmmh, I don't get this.

I guess the neatest thing to do would be to have a single
intel_dp_audio_compute_config() that would do everything needed for DP
and DP MST, as well as call intel_audio_compute_config().

It think it's somewhat confusing that the compute config hooks call both
intel_audio_compute_config() and intel_dp_audio_compute_config(). Seems
like the latter should call the former.

BR,
Jani.



>
>        drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n"=
,
>                    connector->base.id, connector->name,
> @@ -2334,7 +2332,7 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>                adjusted_mode->crtc_clock /=3D n;
>        }
>
> -     intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
> +     intel_dp_audio_compute_config(pipe_config, conn_state);
>
>        intel_link_compute_m_n(output_bpp,
>                               pipe_config->lane_count,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 22099de3ca45..1a73820204ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -65,6 +65,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_=
dp,
>                                struct link_config_limits *limits,
>                                int timeslots,
>                                bool recompute_pipe_bpp);
> +void intel_dp_audio_compute_config(struct intel_crtc_state *pipe_config,
> +                                struct drm_connector_state *conn_state);
>  bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
>  bool intel_dp_is_edp(struct intel_dp *intel_dp);
>  bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);

--
Jani Nikula, Intel Open Source Graphics Center

--_000_CO1PR11MB496255A23AF66BE25A9CCE6AF612ACO1PR11MB4962namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi Jani</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b> Jani Nikula &lt;=
jani.nikula@linux.intel.com&gt;<br>
<b>Sent:</b> Tuesday, August 8, 2023 4:23 PM<br>
<b>To:</b> Govindapillai, Vinod &lt;vinod.govindapillai@intel.com&gt;; inte=
l-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedesktop.org&gt;<br>
<b>Subject:</b> Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: optimize DP 2=
.0 sdp split update config</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On Fri, 04 Aug 2023, Vinod Govindapillai &lt;vinod=
.govindapillai@intel.com&gt; wrote:<br>
&gt; Optimize DP 2 SDP split config update so that DP-MST code<br>
&gt; path can be supported as well.<br>
<br>
What's the optimization?</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">I meant refactoring!</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">Okay I will have a&nbsp; look at updating this&nbs=
p; as per your comments</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">BR</div>
<div class=3D"PlainText">vinod</div>
<div class=3D"PlainText"><br>
&gt;<br>
&gt; Signed-off-by: Vinod Govindapillai &lt;vinod.govindapillai@intel.com&g=
t;<br>
&gt; ---<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_audio.c&nbsp;&nbsp; |&nbsp; 6=
 +++---<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_audio.h&nbsp;&nbsp; |&nbsp; 3=
 +--<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_ddi.c&nbsp;&nbsp;&nbsp;&nbsp;=
 |&nbsp; 3 ---<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_display.c |&nbsp; 3 +++<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_dp.c&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; | 16 +++++++---------<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_dp.h&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; |&nbsp; 2 ++<br>
&gt;&nbsp; 6 files changed, 16 insertions(+), 17 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/=
drm/i915/display/intel_audio.c<br>
&gt; index 3d9c9b4f27f8..19605264a35c 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_audio.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_audio.c<br>
&gt; @@ -759,10 +759,10 @@ static void ibx_audio_codec_enable(struct intel_=
encoder *encoder,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mutex_unlock(&amp;i915-&gt;d=
isplay.audio.mutex);<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; -void intel_audio_sdp_split_update(struct intel_encoder *encoder,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_crtc_state *crtc_st=
ate)<br>
&gt; +void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc=
_state)<br>
&gt;&nbsp; {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i915 =3D to_i915(en=
coder-&gt;base.dev);<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc =3D to_intel_crtc(cr=
tc_state-&gt;uapi.crtc);<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i915 =3D to_i915(cr=
tc-&gt;base.dev);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum transcoder trans =3D cr=
tc_state-&gt;cpu_transcoder;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (HAS_DP20(i915))<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/=
drm/i915/display/intel_audio.h<br>
&gt; index 07d034a981e9..9327954b801e 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_audio.h<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_audio.h<br>
&gt; @@ -29,7 +29,6 @@ void intel_audio_cdclk_change_pre(struct drm_i915_pr=
ivate *dev_priv);<br>
&gt;&nbsp; void intel_audio_cdclk_change_post(struct drm_i915_private *dev_=
priv);<br>
&gt;&nbsp; void intel_audio_init(struct drm_i915_private *dev_priv);<br>
&gt;&nbsp; void intel_audio_deinit(struct drm_i915_private *dev_priv);<br>
&gt; -void intel_audio_sdp_split_update(struct intel_encoder *encoder,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_crtc_state *crtc_st=
ate);<br>
&gt; +void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc=
_state);<br>
&gt;&nbsp; <br>
&gt;&nbsp; #endif /* __INTEL_AUDIO_H__ */<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/dr=
m/i915/display/intel_ddi.c<br>
&gt; index 3cd2191fa794..542bc521669a 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_ddi.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_ddi.c<br>
&gt; @@ -3247,9 +3247,6 @@ static void intel_enable_ddi(struct intel_atomic=
_state *state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!intel_crtc_is_bigjoiner=
_slave(crtc_state))<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; intel_ddi_enable_transcoder_func(encoder, crtc_state);<=
br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; /* Enable/Disable DP2.0 SDP split config bef=
ore transcoder */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; intel_audio_sdp_split_update(encoder, crtc_s=
tate);<br>
&gt; -<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_enable_transcoder(crtc=
_state);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_crtc_vblank_on(crtc_st=
ate);<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c<br>
&gt; index 43cba98f7753..54afc559f522 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt; @@ -402,6 +402,9 @@ void intel_enable_transcoder(const struct intel_cr=
tc_state *new_crtc_state)<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; assert_planes_disabled(crtc)=
;<br>
&gt;&nbsp; <br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp; /* Enable/Disable DP2.0 SDP split config bef=
ore transcoder */<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp; intel_audio_sdp_split_update(new_crtc_state)=
;<br>
<br>
The call belongs in the encoder code. Search for &quot;audio&quot; in<br>
intel_display.c; there's almost nothing.<br>
<br>
&gt; +<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * A pipe without a PLL=
 won't actually be able to drive bits from<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * a plane.&nbsp; On IL=
K+ the pipe PLLs are integrated, so we don't<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm=
/i915/display/intel_dp.c<br>
&gt; index 03675620e3ea..4a5be800715c 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_dp.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_dp.c<br>
&gt; @@ -2232,17 +2232,15 @@ intel_dp_compute_output_format(struct intel_en=
coder *encoder,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ret;<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; -static void<br>
&gt; -intel_dp_audio_compute_config(struct intel_encoder *encoder,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; struct intel_crtc_state *pipe_config,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; struct drm_connector_state *conn_state)<br>
&gt; +void intel_dp_audio_compute_config(struct intel_crtc_state *pipe_conf=
ig,<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_connector_state *conn=
_state)<br>
&gt;&nbsp; {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i915 =3D to_i915(en=
coder-&gt;base.dev);<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc =3D to_intel_crtc(pi=
pe_config-&gt;uapi.crtc);<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i915 =3D to_i915(cr=
tc-&gt;base.dev);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_connector *connec=
tor =3D conn_state-&gt;connector;<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; pipe_config-&gt;sdp_split_enable =3D<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; intel_dp_has_audio(encoder, conn_state) &amp;&amp;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; intel_dp_is_uhbr(pipe_config);<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp; pipe_config-&gt;sdp_split_enable =3D pipe_co=
nfig-&gt;has_audio &amp;&amp;<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in=
tel_dp_is_uhbr(pipe_config);<br>
<br>
Hmmh, I don't get this.<br>
<br>
I guess the neatest thing to do would be to have a single<br>
intel_dp_audio_compute_config() that would do everything needed for DP<br>
and DP MST, as well as call intel_audio_compute_config().<br>
<br>
It think it's somewhat confusing that the compute config hooks call both<br=
>
intel_audio_compute_config() and intel_dp_audio_compute_config(). Seems<br>
like the latter should call the former.<br>
<br>
BR,<br>
Jani.<br>
<br>
<br>
<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_dbg_kms(&amp;i915-&gt;dr=
m, &quot;[CONNECTOR:%d:%s] SDP split enable: %s\n&quot;,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; connector-&gt;base.id, connecto=
r-&gt;name,<br>
&gt; @@ -2334,7 +2332,7 @@ intel_dp_compute_config(struct intel_encoder *en=
coder,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; adjusted_mode-&gt;crtc_clock /=3D n;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; intel_dp_audio_compute_config(encoder, pipe_=
config, conn_state);<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp; intel_dp_audio_compute_config(pipe_config, c=
onn_state);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_link_compute_m_n(outpu=
t_bpp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pipe_config-&gt;lane_count,<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm=
/i915/display/intel_dp.h<br>
&gt; index 22099de3ca45..1a73820204ae 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_dp.h<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_dp.h<br>
&gt; @@ -65,6 +65,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *int=
el_dp,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct link_config_limits *limits,=
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int timeslots,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool recompute_pipe_bpp);<br>
&gt; +void intel_dp_audio_compute_config(struct intel_crtc_state *pipe_conf=
ig,<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_connector_state *conn=
_state);<br>
&gt;&nbsp; bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);<br>
&gt;&nbsp; bool intel_dp_is_edp(struct intel_dp *intel_dp);<br>
&gt;&nbsp; bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)=
;<br>
<br>
-- <br>
Jani Nikula, Intel Open Source Graphics Center<br>
</div>
</span></font></div>
</body>
</html>

--_000_CO1PR11MB496255A23AF66BE25A9CCE6AF612ACO1PR11MB4962namp_--

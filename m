Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6976B7F5831
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 07:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED8010E0CE;
	Thu, 23 Nov 2023 06:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2587210E0CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 06:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700720863; x=1732256863;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Io/lHUfeVGFLw3F2zFmCfPihXpeTysUHigXEjskuNMU=;
 b=nGDYqE+QzlZVE8dyXZZFSct4ArIEHkNllv1rDO256sg7HLjnw5Fanfm1
 KNDZrFdyL427LA9yXyQGeyVXX53BkVv1oF4SBZBnQEnRc0+f63FX1QtEW
 pJdXPbGP5aqBjgv8SdpBbBuQq5HHp9tTYjdBODy5aHhhIW3fKDMBG/P9j
 Cv+aaya7yjOCJfTSYjcSEzKw1aVskxgpkAAw+bVuIntdpkj6aao2dwgjV
 9e0Vv2/3vce5R+qdu9vr4QNAnIVfPvsnbQTYbokBwDxaIPTOk6btDiZkD
 MWS25tUx9vtUCUHso3hOmZ+5JxOALSGXxGcqY5WmjWVhxRpoxkdcxpxFC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="391978677"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="391978677"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 22:27:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="760581732"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="760581732"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 22:27:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 22:27:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 22:27:41 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 22:27:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UFCBlbdMV/HMuFUBVYhoZs17/y5I30Ji7caDqU8tKHBo6M/MfMQLU3NHxqCIWxArvQIWxVlBJprebzqlnrWxB+K7CRwPXZEaMXW/2u3usOfdreN55oGT/14X2IPhPAEeyrhQNuhB1YuRTiVCdZ3sHuxqQxTXp3SowFFlTGPWK6yA/U1r3NehHlSEpgiKS29bYMqMkBezn5nAp3jLevV0WurEVyA6bmukuHK36YioP9La50vdrRIglZ0D6rhoIEIdexcbk9OnP84OTgibg/szRrKoYpZ47PslgDdE6U+zQ9KsVuesZQhI0g6s82wnoZlR1JzPmD6NV88d3I84+wKNsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v3XQhm47mS8h5BMeD+h5D/54W3OxwjepYHdle3W7wug=;
 b=RM34dGV9l2GH6qNMPT2HUgTNe1sy2MOfgW0gHlylelBFZSHZKFdV9vh+sthg1fv1s4+fEoRFBSSm6YgNUDsaJQ8SZ4dQx0yVXu5u69qzezyFS3aYHxtuNhcasPm3KHjID6S4KrX7BrsVbFjqTvUPOvyWI0NIo4ch+4ve4E3xY168rYFVTjrIWA0FvSMS5KbgLaKKCnXTQX0QH1+dajjMr34a5D1bCvmKicGdE+O4FxL+mt1jL1r35ZT7vAxCPl+WeddFtaOkgQZyLAHzcxOtUsruHOSjDIg4pF7VFtOKO6xRFL2CkgArPYjILZnzRCn1Qx/vh1Gqlz8hX5nP1Dy5xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB5950.namprd11.prod.outlook.com (2603:10b6:510:14f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.19; Thu, 23 Nov
 2023 06:27:39 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb%4]) with mapi id 15.20.7025.017; Thu, 23 Nov 2023
 06:27:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Get bigjoiner config before dsc config
 during readout
Thread-Index: AQHaHRBy4vjJb77LqkmV7g0/si4iW7CHcgPA
Date: Thu, 23 Nov 2023 06:27:39 +0000
Message-ID: <SN7PR11MB6750BD3FD3B97C15BDB50A67E3B9A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231122064627.905828-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231122064627.905828-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB5950:EE_
x-ms-office365-filtering-correlation-id: 1f0fce55-e427-4e8b-5538-08dbebed4a73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WwGwBM+mToXfoN5vFvJReM6lTvcweGCVU0ij6sU1vw6eysFIZkYVzPyxx9CPtUFlfov9sjNYoxaCI6iheMB1G73rtkLCsycrXcizshnUiPauZ7Og92oZmiYKFJrcIYoJZZ6zk8nKDAJ2szRtiSmn93skPwb/CEBFInfFm/Bz47RMii6fTm/2ovp/PV7mGMlvazhWs6LE3EHX5hGz40vJN3RVxiHPS/wwNiuw7axROZKyg5E0KAlYbXbmhZiheqYwQttz2wSvbS6x4x86k3eV1viV3h8yTtu3oslW/61Qyrs89QYN27zCkGfZ4u60to2KWc92AxlB2xFdhYKU5o+nsCb6u9JOF4hQhh3Z0PS9F5f2nYIT6xyqhuwZNZ0xNqMkZmqfZzrJtsANm4+PvbDKmqNmbwbtvsgURHf/uGc13pi1Qlwy5i6vGa/X0AozLXNDT2XYOKLqIKXAOZBgTG+8SwfkLgQ6YrLnGUtsr+FCBKILcLbtWVRa63Jj1qp7muIFbVz1extI2UEN6Oll2M2MAAYPqZTeIuj8m3aiIo2enicglztU5Spe7Wwk0q/Rn1yhAubo9jPeAn4MeZAKGM1l6gI1FI5rkx8NTkf6q4q8wEX1CZQG6LHlagANu9klwB41
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(366004)(346002)(39860400002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(2906002)(41300700001)(55016003)(5660300002)(53546011)(9686003)(26005)(82960400001)(71200400001)(6506007)(7696005)(4326008)(52536014)(38070700009)(8936002)(8676002)(76116006)(83380400001)(54906003)(110136005)(316002)(86362001)(33656002)(66946007)(64756008)(478600001)(66446008)(66476007)(66556008)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J85l5VaCjrI6XpUZyL2AVCVOmyum38b28gmTso7om5iQHHGjN5v20vReZcov?=
 =?us-ascii?Q?+5nutOZ7GbMOo2B0y0TfKw6EtzD+ac0hvV0qAUGFF+dNlZGY14C1VI/JzmpC?=
 =?us-ascii?Q?9YNFpbPo/qho9VvNSFDkyDxlbAGYEqyFZPW2CDd/MVhy/mtJzF80YVLtQQsa?=
 =?us-ascii?Q?bUobgVTwC7PSQhVqLYWK2J8bbpk5XDyovop4D/UOQI4Rt7oeTdSbm0ybrnvJ?=
 =?us-ascii?Q?JIc+Gt3MXXpG5hIg6rclbiEhE4BC1/Zur6DvrewS6zIcD2qtYpJz0ulr+JuJ?=
 =?us-ascii?Q?AZh9p0Dz0s5KFexAHFnRMH0UlXxsQTX+bwTFwlXE/3X2NAGImlUS2JLaiplr?=
 =?us-ascii?Q?xTA5VX9WzYC+Qlqmt46Neqw8OrKTi8K2z4KrIqz+tPrT91TMCXfkXRQd2obd?=
 =?us-ascii?Q?1Rl1/LuKFWXySIoCPGw+DVCD6XnG8Vzo4zr/HZECg2p1PuMz6cH1+l8oKxT6?=
 =?us-ascii?Q?k5k0zcJZ5ZMDXnvY0AFoAhNpEF8HFcOAe1ATsBCpvFottX5MsApSG2pOeSIH?=
 =?us-ascii?Q?kn8lE3G4deOF247d28z8jmTJONKV1yjD4F1o4YVzKeH1erShVuE3EsiJ8BvU?=
 =?us-ascii?Q?evHgGuAVaAAEx9cNREyI/JLIZbFXx92g7ndMIOsP0rn7wUWZz7WgL4vcX7GB?=
 =?us-ascii?Q?ymKFCBJ4CDPMmnjwsuZsbdZcOkEF7KZ6rFTwoZLBD2PlFt44fNmG/9Oo6IkY?=
 =?us-ascii?Q?0zGrGRE4/AopVRg3I8l2eh+74YejcA8ZSIBPmzZuHvsfEOzASRd2wSrfJ9zC?=
 =?us-ascii?Q?2mGyQEUhJYRnDSXpan1hmtlyJlcmP4TSGgcPh4NPMMG1UJXTYM21WmSAEyWT?=
 =?us-ascii?Q?eb9U8a40pQK+moUQSQMI5F/nXfnm4fOfDPHPC4HwXTsDwSVefSyXj2tn1rnr?=
 =?us-ascii?Q?9qKMuSepJUhh6YqasiF20d9I7VyV4m22d0slGdKy92aQ7j+Pvp52oE1GKR0a?=
 =?us-ascii?Q?lcVmYzAMH8TSDl1MKmhVvA4TBOu3yXKpfQKNqIqZsQZfNUH7kkp1QFDmjClx?=
 =?us-ascii?Q?jvaiNfTDGfxOywUUUeBAOfBYpkw27mGX7c4HklSqbtIqV3ZZfBl0ft/pJbgR?=
 =?us-ascii?Q?4kMsD7uLvQIPTkUKsjSsZzfHc9Wu2Am82UYg9QRjOV0KqTK7PoEvdhm243Kq?=
 =?us-ascii?Q?FZOAhr4NqzsXw8+bco6a/odgSqPqmJgFA3Eub9lOPgokrfMsmmEUGQRuFWAl?=
 =?us-ascii?Q?8eOxiyzoUqqdkKN20b0KIOkpodnvcAv95MN3DAPx41oUcPSLyfviZ+01eKCc?=
 =?us-ascii?Q?WZo2TSIRKuWBaDTcgBRLRKK6qltWefvoSBDz1KCaqLaaK36QkEOqdJTXMppl?=
 =?us-ascii?Q?YHDKj2thMhyLqF/C4ZgzDny+EQeROHvAVgk/0otJ/3wWQajvIEXHcIxzdo0b?=
 =?us-ascii?Q?Ue0bZdQ65EKtclxmLvrFCWoB6NgRCuW1ap2GFfuNxhMzuZ9CGHH8Xkqi3TLd?=
 =?us-ascii?Q?5s+StSTAemw0T7hPPd+wQRABN6bZ5r5HfV2iosQlmsdEgqTtwJU85Hno7fxQ?=
 =?us-ascii?Q?HzrAsiIcZTTR2qdOxQotgwaWymebapx9f86i9BX3q4GJD5QmssjGzozdoO/M?=
 =?us-ascii?Q?NlNiI9Jl460WDFEWS4bp+tI9VtKdZkBx+k3i6WyH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f0fce55-e427-4e8b-5538-08dbebed4a73
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 06:27:39.1623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t24yfGJyZJ+zCBz+pRoyNPP/vKwj8N1jRmPjbHcYClYYgzJ4iV3CddMifajJdUnN7xxPwUa4LziVakQToCcsiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5950
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Get bigjoiner config
 before dsc config during readout
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, November 22, 2023 12:16 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: [PATCH] drm/i915/display: Get bigjoiner config before dsc config
> during readout
>=20
> Currently we get bigjoiner config after the dsc get config, during HW rea=
dout.
> Since dsc_get_config now uses bigjoiner flags/pipes to compute DSC PPS
> parameter pic_width, this results in a state mismatch when Bigjoiner and =
DSC
> are used together.
>=20
> So call get bigjoiner config before calling dsc get config function.
>=20

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Fixes: 8b70b5691704 ("drm/i915/vdsc: Fill the intel_dsc_get_pps_config
> function")
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 959db3f61e84..e086caf3963d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3694,8 +3694,8 @@ static bool hsw_get_pipe_config(struct intel_crtc
> *crtc,
>  	if (!active)
>  		goto out;
>=20
> -	intel_dsc_get_config(pipe_config);
>  	intel_bigjoiner_get_config(pipe_config);
> +	intel_dsc_get_config(pipe_config);
>=20
>  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>  	    DISPLAY_VER(dev_priv) >=3D 11)
> --
> 2.40.1


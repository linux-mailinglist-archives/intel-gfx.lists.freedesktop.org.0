Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B7A63BCFB
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 10:31:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A59210E3A0;
	Tue, 29 Nov 2022 09:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835A010E3A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 09:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669714277; x=1701250277;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=B49bTaiIsVH/0aH+kFjzc8wp9CqZET/KwNBLLNM18L0=;
 b=UXoxUC2L6tZGrO1bwTZ+7bk9YHP7UH97uFYjsTucPQbzYqYu/jRRcwqZ
 oEwPTycCc7cXwL4EVs2RYrj1fdWSVk7I+5ZGLFJJLlCGiouLmHzyKldXZ
 zUNYD6e7Czbc9E+xOMmOZ3Jj8Q7msXhPPZ+0cZ9Lbj4Ls3//kg5Q+m2CE
 npo7L0lF/BgfHmsdJqzfQ9v+s59YWIZZiIC84hkIyXuNf1AnryCB76onW
 S8D4195AF4fRIGLHSGoyUicL+MlfbqhlIAq+Wz6yk++5PIFavs4PPdzX8
 e+6ykqtXtNFu4kP5p7V4mJERyqeDTWtZTHNMynDyNJxGzo55MJ6ZtUfNj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="313769017"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="313769017"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 01:31:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="785975039"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="785975039"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 29 Nov 2022 01:31:16 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 01:31:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 01:31:15 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 01:31:15 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 01:31:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BPUKRogci70N9HleQH0SxtggnBlIEJrNVr1G4f61/QGTBDsNAwFFtlTazn5xqjNkEMG1mhlzqSW1WhzzyelyEXZ7RG1fTjCBDxczZi/5gLikLLx8yRagkx59rwupkh7b1Yuml87asUzw54v3h0gH780+jinv7vK/85WZmDeHYwt0PS7FiMXBtE23gibJolXURvybtDdMRr7wam5AGbIl7x0gUkC/1c4svbOti6h+PG3shoZCW3DCqfU2KMLkqqqG8+yGDD9sHhfJIz1XQ8IqdPDAFdzSKlO1SuYaEkrWVbtgFALb1jbGULdnkVUfcYGxY59lrzpJbvv35DGQaZlfPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8X3f9blzPASVwptIjzAFFTFSZkVoZgE2iuzXtRLBCYc=;
 b=oG8yW5JBobOTmeeF3q4reTEG/Vst66X0tS1KuLmq/eL4C+Vqer4h/jHZXThDMrAs4KrlAMxS2J/0/F/8CYgFCnPUEHG1YXzRodSlaJfgvGyUCQYNXbcbr8/ptB8OGDvL1oBr8KSNtSQ9nH5I3HpGYSY/9qzp60XaXhLxgAESw4YGVOejugRtVXhuEwlCatIq5Jt4ka9Jps8YLbtS6ZXlCiuoU27U3Z4wg6yh6/eyDDjCoxaDCQMOcdnOZjELVQHUoqmwIhMFKtUAVIw87129XlUmX3mBWV/JCsGRXMono8Lf94vt1ORu2NbpAWMPF/vawgVf7PpRSwr6Xe8znZVLaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by DM4PR11MB6286.namprd11.prod.outlook.com (2603:10b6:8:a7::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.23; Tue, 29 Nov 2022 09:31:13 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::b492:836a:d2d5:8e80]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::b492:836a:d2d5:8e80%7]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 09:31:12 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/psr: Add continuous full frame bit together
 with single
Thread-Index: AQHZA8djsk7k4ejqN0+0VFAExsVDMK5VoFzg
Date: Tue, 29 Nov 2022 09:31:12 +0000
Message-ID: <BYAPR11MB27108F8A5B04891512E88EA0A3129@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20221129075100.56655-1-jouni.hogander@intel.com>
In-Reply-To: <20221129075100.56655-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2710:EE_|DM4PR11MB6286:EE_
x-ms-office365-filtering-correlation-id: c3e4caf8-6ba5-47a9-1ae9-08dad1ec74d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xTfZMGXn5CpSPnTG/SfaGtrvk7B4Zj+028w60jTRu4FUZIwoRcv5saVP9DkWa6wtjbExDkz7wz8YZcICechNVlYoRmIcClvhj97EPVlBdsLiAUM9EfWAjncz8ORiWwGQbV72lMNW4aht2IbFKzK0W+3zF4hPlcAMeTrHqm2cHSdB8+pffmZV7nDKRUFhNXtgSJUILXJphLdkABNb4SmO+czmBf1nQOfunHwtqJSF4otmgZFZJSxERcVgpbAvgJ+fLPzhLuahZ1nPvtbvoMkQWU+kfyaDw18CagRZFGkvPSpFi5ErS3tG15DmmD/RKJ6+5siBh/zDaU9ZKKIDv6BcBCUk5R6AB1dyiPU+tNwJ9aX+STCEbOlk1NuaF9W2bekBUu/PJTytbuYEPAXvX87X9VdBOi0QUuzHGKyw5vm5V4rpHN70Z535GBcTdnEI8p3ky3YHR6+eNUeRm6VyW400Dl14N6Zs0VeHU0mbLbbUSQTEyibQpwnV2z2wtNe5CsT6UgL8cFQAS8p7eiC64MWT6SaptjxiSuVhW7pAHXufR4Gp4rqMBhzDmqLssvsbzKXgjGL0MqYGqaPuIn3PDi1meTG9iJ49NorZvwP9VY/9FNX7miQFxfghTri2xfvcE3eJdaLgySlSjMDO+HmYI67AP4XGST3fvX9ryEYvPCeOEBwVek3smr6YFLcUCAJEh6ETCcmRb53GeyVpW9sSGMprWA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(376002)(39860400002)(346002)(451199015)(2906002)(83380400001)(41300700001)(66574015)(52536014)(186003)(5660300002)(8936002)(8796002)(33656002)(86362001)(55016003)(38100700002)(122000001)(38070700005)(82960400001)(110136005)(54906003)(316002)(26005)(9686003)(6506007)(7696005)(53546011)(55236004)(478600001)(71200400001)(66446008)(66476007)(66556008)(64756008)(66946007)(76116006)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?OgUVfsq8GJ961QuNPuTPbtaepAW8Tot0sjoFAWX0lUMe/8+lZgg6Yk7vPY?=
 =?iso-8859-1?Q?c4hw7Sj8ZTwvI2eqxNeh793EKC7t7QPz4CTxFAZlxxkEtF/TkOLTdF+dwT?=
 =?iso-8859-1?Q?rIgfOwVyeUJjnhIruQUv92GLLF4FEDY4ak/8Mm2nVCKdlz1imzaLuq2JGb?=
 =?iso-8859-1?Q?EhTEDNO073DsFufSilGfGP81QVobQw4AX9w/jVihW5CgDIr9jZuhN6QUTJ?=
 =?iso-8859-1?Q?FFOrwDyzBgBn8OcX9LZZqf7EUUlqP5qQdrSScbSNqP9eNc8qcOSkqVFA1w?=
 =?iso-8859-1?Q?iZaXF6/mtB2lRMwyJPR0MyQ2PJJ67ds2nfQHe1Gxcp2C8lrCM6MpybNSPO?=
 =?iso-8859-1?Q?wrpLvMCKRYqmfmloQsu1DCaVA6cziVctuZVy6HPXWY8UkCdWdj76XOPJNd?=
 =?iso-8859-1?Q?hdFlgR0ZLHr0unHxgp2NHjAyYkKH9HaLElKaBCf4ibTarxUEwj2onh6McY?=
 =?iso-8859-1?Q?jZqOD/H0ydDmDDFU7TtmFUTXJfUPxuqMe/0JHaUivtL6PgHfWQr2Lbfh9C?=
 =?iso-8859-1?Q?BcxdMu31t87llOE0RHr2kg9nAMrtlItuT+psJbdYkUvvx7la3G0CKlHsxu?=
 =?iso-8859-1?Q?sinSq9AjKPCzIjJ0Q2R3uMDLHyrZ9OR1huOSrXGpTu2vu4B3CzR0fQFgOf?=
 =?iso-8859-1?Q?2QCT/KJJ53AWgiQn/UT5lPHhb+j+07sSuwCOE3wJQgNXO+LrbQ67prUE1y?=
 =?iso-8859-1?Q?X3BTvplZqq+uIA4z6WPc4XV6N7AY5s9FuLGqY9MtQ/fIdd4O6N/wIj3HxZ?=
 =?iso-8859-1?Q?4s6YFe2luV3XUHyABZYGin1GBmiG7Qu1I3fZiYbGnZ28qTx4kBFf+hVcUF?=
 =?iso-8859-1?Q?m5JStO+nAX8x8SPOcxVflVCymzjjS798bDTBbLv6LDN8S2DnCVVwmgxIFL?=
 =?iso-8859-1?Q?HDb6j64hM4VzQ8cbV23MjbpaD1KSQppgRt2LNzF+y5DcTBcvuhZ7WSdEoJ?=
 =?iso-8859-1?Q?6NeK6yS5RwC9+FBS22E96B2YF8mm5pSn5dox6fKsrCVq9DZ2BO61Z65JZa?=
 =?iso-8859-1?Q?nAXA+sbIRMVe3rhsw4i3X8qNZLegLgo684IvzPbf5yGeeI9XKHxtKLJc80?=
 =?iso-8859-1?Q?exwqNrfA9F+SdnW+qZiZ1+AYzyBO/S2Nimdl0C1RKjQ+dizMD8S0HeydW7?=
 =?iso-8859-1?Q?f/na+18kBHeH+rbtQrJtRSjOlbQqoTpmSuULzz1cL8Iv5VgI7/6TU/NGV+?=
 =?iso-8859-1?Q?q7O0h+rdPq7MknBOGXh7kXJobJzyaExi7ZPEECKeB+8FmSrppMvXKvb3LW?=
 =?iso-8859-1?Q?qfO6YGFVV4hw6IfnBm5qse9qslcNDgUSatgl3ANQ82avTFkadgsWoH2tOL?=
 =?iso-8859-1?Q?WCiwckrEzsnld4M/u/ItUhpQLbWN3j5KCd9omaWRf31AvHdv4a1Caa3Ijs?=
 =?iso-8859-1?Q?yJtSMcYfdV0gLA4A0qc2AxgVhrIn9QPUE8DlGR8W+JELqaZNPVJ8lNurvr?=
 =?iso-8859-1?Q?9eShdbkruC7RxP1R/f5Sq9yRVDxEAAAgR6a/fynAdcMvG0QmMPuqSDLi9W?=
 =?iso-8859-1?Q?CM98AcbHqEVWmoKB/DTmOLUR4KfFskyj7ccxZKPTIPljh4/o6gDptO5mXO?=
 =?iso-8859-1?Q?KSDEpMjOWPYEZYv0cvrdLNfoEwSDHYUHK59YakiHaEiruHHXSGDFmv864V?=
 =?iso-8859-1?Q?K78O5T/MWfMtrMwWUCyhcPpt1hLd+FdSXm?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e4caf8-6ba5-47a9-1ae9-08dad1ec74d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 09:31:12.8578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vBbO01elVhHgLbXculXdSatFuFY7ZcmQLqwi/+dyXJjuaMbMxMWn4MXNShr1BQBJ8+KDFf5j7LOTnCSAt6FV+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6286
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Add continuous full frame bit
 together with single
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
Reply-To: "20221129075100.56655-1-jouni.hogander@intel.com"
 <20221129075100.56655-1-jouni.hogander@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tuesday, November 29, 2022 3:51 PM, Hogander, Jouni <jouni.hogander@inte=
l.com> wrote:
>Currently we are observing occasionally display flickering or complete fre=
eze. This is narrowed down to be caused by single full frame update (SFF).
>
>SFF bit after it's written gets cleared by HW in subsequent vblank i.e. wh=
en the update is sent to the panel. SFF bit is required to be written toget=
her with partial frame update (PFU) bit. After the SFF bit gets cleared by =
the HW psr2 man trk ctl register still contains PFU bit. If there is subseq=
uent update for any reason we will end up having selective update/fetch con=
figuration where start line is 0 and end line is 0. Also selective fetch co=
nfiguration for the planes is not properly performed. This seems to be caus=
ing problems with some panels.
>
>Using CFF without SFF doesn't work either because it may happen that
>psr2 man track ctl register is overwritten by next update before vblank tr=
iggers sending the update. This is causing problems to psr_invalidate/flush=
. Using CFF and SFF together solves the problems as SFF is cleared only by =
HW in subsequent vblank.
>
>Fix the flickering/freeze issue by adding continuous full frame with singl=
e full frame update and switch to partial frame update only when selective =
update area is properly calculated and configured.
>
>This is also workaround for HSD 14014971508
>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Cc: Mika Kahola <mika.kahola@intel.com>
>
>Reported-by: Lee Shawn C <shawn.c.lee@intel.com>
>Signed-off-by: Jouni H=F6gander <jouni.hogander@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_psr.c | 19 ++++++++++---------
> 1 file changed, 10 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i9=
15/display/intel_psr.c
>index 5b678916e6db..88388201684e 100644
>--- a/drivers/gpu/drm/i915/display/intel_psr.c
>+++ b/drivers/gpu/drm/i915/display/intel_psr.c
>@@ -1510,7 +1510,8 @@ static void psr_force_hw_tracking_exit(struct intel_=
dp *intel_dp)
> 			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
> 			       man_trk_ctl_enable_bit_get(dev_priv) |
> 			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
>-			       man_trk_ctl_single_full_frame_bit_get(dev_priv));
>+			       man_trk_ctl_single_full_frame_bit_get(dev_priv) |
>+			       man_trk_ctl_continuos_full_frame(dev_priv));
>=20
> 	/*
> 	 * Display WA #0884: skl+
>@@ -1624,11 +1625,8 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc=
_state *crtc_state,
> 	val |=3D man_trk_ctl_partial_frame_bit_get(dev_priv);
>=20
> 	if (full_update) {
>-		/*
>-		 * Not applying Wa_14014971508:adlp as we do not support the
>-		 * feature that requires this workaround.
>-		 */
> 		val |=3D man_trk_ctl_single_full_frame_bit_get(dev_priv);
>+		val |=3D man_trk_ctl_continuos_full_frame(dev_priv);
> 		goto exit;
> 	}
>=20
>@@ -2307,12 +2305,15 @@ static void _psr_flush_handle(struct intel_dp *int=
el_dp)
> 			/* can we turn CFF off? */
> 			if (intel_dp->psr.busy_frontbuffer_bits =3D=3D 0) {
> 				u32 val =3D man_trk_ctl_enable_bit_get(dev_priv) |
>-					  man_trk_ctl_partial_frame_bit_get(dev_priv) |
>-					  man_trk_ctl_single_full_frame_bit_get(dev_priv);
>+					man_trk_ctl_partial_frame_bit_get(dev_priv) |
>+					man_trk_ctl_single_full_frame_bit_get(dev_priv) |
>+					man_trk_ctl_continuos_full_frame(dev_priv);
>=20
> 				/*
>-				 * turn continuous full frame off and do a single
>-				 * full frame
>+				 * turn continuous full frame off and do a single full frame. Still
>+				 * keep cff bit enabled as we don't have proper SU configuration in
>+				 * case update is sent for any reason after sff bit gets cleared by
>+				 * the HW on next vblank.
> 				 */
> 				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
> 					       val);
>--
>2.34.1

My DUT works well after applied this patch. Thanks!

Tested-by: Lee Shawn C <shawn.c.lee@intel.com>

Best regards,
Shawn

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B48796FCC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 07:11:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2164E10E758;
	Thu,  7 Sep 2023 05:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF2610E756
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 05:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694063478; x=1725599478;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8qKs7ifpsyoBkrymDWUDLHEhnvQtLr1H3yVonDZQ0o8=;
 b=lO7XjZ/D7lsv+Z8JZQ138VrjiwDbrM9xzEbvvjh/ld+cT7pRaiy6h2y6
 OCWCNy6ue+HOPyPcEKuxiixZmFIjAS7tCngbumNFlnF0c58yK8OD7FSMB
 ZvN16nJd4CsKuXtwcRBncH7lxvFeFgQ+f7UD0drhoAkHydLp+UvIhiUcb
 uX77IRs57iC4/Earwa/JDii14yFhhW1GZOsla0knL5Sk0nS73q8xP4ywv
 +4FRBlrlpltMl3sbW/IMZ6QC8vTJUUN66qLjCySlFJ9NXeyGh424MXEpe
 pohLheMBuJ4+ZMNHWkktzgY+n3rE3uq8B8Ox/zi81TjbWZVCWiJGFPc9o Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="357571854"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="357571854"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 22:11:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="865467285"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="865467285"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 22:11:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 22:10:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 22:10:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 6 Sep 2023 22:10:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 22:10:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M62r1KMCfxF9xsIRil+GtyInv3ia2LO5HT4kAN3m05+2UQzg8WFqbw5vu47XAvQhA0jfu2ONQu6SzaRobA2p2VpR5BYuF3nPy4DdkQpHfqUjCMs+27CAJgdAez3TsP0TlZFIrsBi0f1eGCMbGmvURyszz4oQ+mBF3Es8VtJT4LUG8BPThA4Kf56j+aeMHy6CP08b1InMK0zfvNXu4I4LE9oouRsF4MJxoi7n3qkpcKDS+yH2Hz/YyjrwVep4tKMcwQtF6DSRf2qnfVOt6VLEq1hdl1kYwvbM/zFv7zxc1eAriaFx3Nm45YVdjVx+UcxX48FSm+WtKF1rxDI0VkHTUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IsOZEA2UlbBxp7xeFpxnqWgzycUtWODhMohgEw3R13M=;
 b=MjhwpyrQ7j8yaiQLp0iEqyZ5jBp+ASj6rgftytY3wSagiqv2Hkk4DeYtDyL+YGONwUoUDNEbPuQH0QyQ3DY+Nkm3SkQ9A+2VZ6J+ngkifTCuVckR82adVZP/n2pkeq1/8S7q34bUmcwLqrfDjA48e2LnvuDeKYTKFFcD4PhYuJaibFkpMuQTKqk8WWv7GZyNsVG/FEZilLmTSrCwZD/X84nuZGuurZPuIOQgFXAzHMPQSIeOgk3m+22wi7u4WO73O6pWYPwVTGMiZkASOYzm6kgfdB3xnnMCyAy3f+59UBIHS8GeuRCxABO3AHjcCJ5bS/Jlg68lg6VmEknpseJg2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB8355.namprd11.prod.outlook.com (2603:10b6:208:480::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 05:10:57 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 05:10:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 6/8] drm/i915/dsc: clean up pps comments
Thread-Index: AQHZ4ByCXquJp4algUyJ7FhvTX0dAbAO0ujg
Date: Thu, 7 Sep 2023 05:10:57 +0000
Message-ID: <SN7PR11MB6750AFE1EC137A0FFC8AE9B7E3EEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
 <915970973ef117fc8d47fbc57e8fa296235ad3e3.1693933849.git.jani.nikula@intel.com>
In-Reply-To: <915970973ef117fc8d47fbc57e8fa296235ad3e3.1693933849.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB8355:EE_
x-ms-office365-filtering-correlation-id: df876dd9-194f-4ac1-51b5-08dbaf60d19c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8l5s4pF6xwBtwIPwqWjAyqKXmPa1Vp713diMAFlRPImitwW/pKCxyBuTWxbeIiRJ41FcgCaPFdm8UruPsXytl8o0QWB97SPki8GU5oniv9fSabVhsi849RX1zjnwMojVRZG7Nnh8xTALyyIqB2DR5EQc3QCTeHn+Qz+aUH4Yhnaxji2pbkU8y9Rmhu4RwpQwIXv7RzY9Oy0GLIf15jbTM6pObltt96pH5mdQNl0/YhrAYZhbNZavfeVi+bw9ghqFjtrofjkSTStt90ObE9SL9D1bD0HGJkg4B3Vq6vec4ZolsrUYRu6sKVf9P07/rq05F7/JskswMbkbDf/tlC4qF1bCzLUx9dWqMpibJu+rAa+pIdb+Ol7Jk7hPjxm9kEkBLHRNojs/VAbiue8zeIT8LqIGFrlVC/qb7NV5AzcxvRvQd/xzEWHz3yxTPdUkN4uj2tGVw7CSq5Fjaz+C11ooEJb/naqPHz9tHC67GKnv5ju4iTVhEImrVxc7Q6leegdDWWMUIwB0nYTQWFm1xwOnkKCHp5YZN0uXfH0ncAWCmgZ5oQdsESOpVHIjVpuP8ZqyLzN0YJhb2BQ2zPjBNRadWTJcbxfi3M9aV1F5GuC7gyhf/q5P7HJfcaNB7QR1gxav
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199024)(186009)(1800799009)(478600001)(71200400001)(30864003)(9686003)(6506007)(110136005)(7696005)(316002)(8676002)(5660300002)(4326008)(26005)(107886003)(41300700001)(2906002)(83380400001)(52536014)(8936002)(82960400001)(122000001)(76116006)(38100700002)(38070700005)(33656002)(64756008)(66476007)(66556008)(66946007)(66446008)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KBfF0FQ77T37OQmkzy03Cs/MooR+/C8NXLvQUo3IRN1iPXiNjIQj8MRNOuCM?=
 =?us-ascii?Q?kT/PYEARYfrkZRoIfbBjYkYSKBKs+UqaJlCfOAJMMad+cA3djvu6GqSipT+h?=
 =?us-ascii?Q?dbrZb0k7lem3FwQB8v+Uj2fa96ucKJLEjXNlbgUvUnOIG1OEPpArEdWZJa+t?=
 =?us-ascii?Q?b+OLyFd7677GE9CE7tUTBuML8IYxtMLnQ7QDgUYNo+xn1OyzChEgVIwstvIU?=
 =?us-ascii?Q?hF+ZlsmfiTHhwr1BbGoiKCtzxNmEOwszQb3ikeb2fJABpKagu+UVac6W+u3x?=
 =?us-ascii?Q?Xz9VNFUK87eKUky5MeAGErBtshe/cAs6IJ500MG7l15C6XHPePdFXJv+vpRA?=
 =?us-ascii?Q?XrJnZtP1o4jN9MILqWFYoYVqH5oNwlMHbsqxTwavrQBO8ga+MLiaR2e/HXyD?=
 =?us-ascii?Q?9SfLJA3HEsuHrnxIujphe3bDMoSu06O47kDOcYuNzwTACuTdgJ8aBz2kPH0o?=
 =?us-ascii?Q?WV7osRDFGptw5nfmnnWIXQFu4nMkJaOGDVROdhk0PzUQIIcHBfO77JfgS2fH?=
 =?us-ascii?Q?LZsGXJOl/fELKKTS41mP9Qs05XSekMk4VVc/eRM0lr1lzqqXWDm255MDSj1i?=
 =?us-ascii?Q?vlqupyllI0QaJ6RGLutgs1NlFVpqfyFw6bYJs7vjF6Jzdl877DTLTXfNOukL?=
 =?us-ascii?Q?0Wsd/89/fEXZ1u7sy1rkuqTKqJBOzwmbVAHXm7sTWLMR//wS4o3w/JL2hT5G?=
 =?us-ascii?Q?rq7JG5UbDE87kFqzCDi9/xhDoLwvPPxXeyJjccfmONuHdufR5ZnluNb5Idx3?=
 =?us-ascii?Q?+CcxqFmWXc6nP3ORufvp7h9VyBZ0OBOmzQLx8aqve97N0t43ctxGx32+p/xT?=
 =?us-ascii?Q?GZEs5ciA4aSxIn5i6M9HawEhcpKaUklkyYRf2xV3C2yMPaAg0y6Z2U4POQQ2?=
 =?us-ascii?Q?KyocdA01A5hz4wQjyhIUI4nHCsA4P6Nc87YQroRbyUFy13BjbdUdgvaZA+rE?=
 =?us-ascii?Q?GbGdU+hQVaGowTXuGLh4a+ZhkMYwi5BxwOOO4TzuRWmzlFJ9nc/cEgjuNHp9?=
 =?us-ascii?Q?tWaf1Ieua03gtemRrbfm6HlPN4Uqvejc9OxVEScLD92L5LjFLFPwHc8Fep9C?=
 =?us-ascii?Q?Uo+OyuDUFuQo7LTC1UkGjVw6VZINDv3SHGdaW7NTMpyxvBHv/PAaNpOV2GqD?=
 =?us-ascii?Q?OQBFJ/VbOb5l4jh0kswJT80VOXJ+/LS7FQdcSsqtsqljLjja8IjjeNf6F3Jo?=
 =?us-ascii?Q?QQnlj5mxM5/CD+WNERkrXIftPHNuuS/RvF7LIFbYTmCjFrYAN31Kewxpgity?=
 =?us-ascii?Q?mbDIGNXkJJA9IvVWcjKDx/e9rLZJo3885M3QxTpBSNFkzr2w9cBqFlUHKJs2?=
 =?us-ascii?Q?TYsz70AAPi2xjUMWtE10aNlDzQO7gZRNi0YUFAPkuVVbvmU+ylG5zJ55W1zL?=
 =?us-ascii?Q?BZIyRfB6quS1akXgmqwwnWTuavEXbRGO5JoMq4DOiqLENTYQKyvERqgTp0tr?=
 =?us-ascii?Q?JaVdBRn9yYNV/BRKSNEpCUNMoOhuVQIO0JNY5a6e2OzE/zGScXcVhXaKgRXB?=
 =?us-ascii?Q?/mIeWqWhyh82DzgPNrwzoDlUTaNBcTWuJ+quqQ1uaNVp09B53onu8kV1hKcc?=
 =?us-ascii?Q?HZewA4e/XdEW/k6NEurTZqcqTC6VZ3SQhOojvNOr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df876dd9-194f-4ac1-51b5-08dbaf60d19c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 05:10:57.1122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wcibLyAfTlU/sJ7A1YCw3WHOSvHdYAt1Zp8fVy8kKflEukRaGqvJ21d2Sl7LXtaY/I2ZaWivsplja4vIhok5QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8355
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/dsc: clean up pps comments
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

> Subject: [PATCH 6/8] drm/i915/dsc: clean up pps comments
>=20
> Unify comments to be the simple "PPS n" instead of all sorts of variants.
>=20

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 56 +++++++++----------
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    | 29 +++++-----
>  2 files changed, 42 insertions(+), 43 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 73bfa4d6633d..4855514d7b09 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -422,7 +422,7 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	int num_vdsc_instances =3D
> intel_dsc_get_num_vdsc_instances(crtc_state);
>  	int vdsc_instances_per_pipe =3D
> intel_dsc_get_vdsc_per_pipe(crtc_state);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_0 registers */
> +	/* PPS 0 */
>  	pps_val =3D DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
>  		DSC_VER_MIN_SHIFT |
>  		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT | @@ -
> 445,36 +445,36 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	drm_dbg_kms(&dev_priv->drm, "PPS0 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 0, pps_val);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_1 registers */
> +	/* PPS 1 */
>  	pps_val =3D DSC_BPP(vdsc_cfg->bits_per_pixel);
>  	drm_dbg_kms(&dev_priv->drm, "PPS1 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 1, pps_val);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_2 registers */
> +	/* PPS 2 */
>  	pps_val =3D DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
>  		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
>  	drm_dbg_kms(&dev_priv->drm, "PPS2 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 2, pps_val);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_3 registers */
> +	/* PPS 3 */
>  	pps_val =3D DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
>  		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
>  	drm_dbg_kms(&dev_priv->drm, "PPS3 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 3, pps_val);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_4 registers */
> +	/* PPS 4 */
>  	pps_val =3D DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
>  		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
>  	drm_dbg_kms(&dev_priv->drm, "PPS4 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 4, pps_val);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_5 registers */
> +	/* PPS 5 */
>  	pps_val =3D DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
>  		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
>  	drm_dbg_kms(&dev_priv->drm, "PPS5 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 5, pps_val);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_6 registers */
> +	/* PPS 6 */
>  	pps_val =3D DSC_INITIAL_SCALE_VALUE(vdsc_cfg->initial_scale_value) |
>  		DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg->first_line_bpg_offset)
> |
>  		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) | @@ -
> 482,25 +482,25 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	drm_dbg_kms(&dev_priv->drm, "PPS6 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 6, pps_val);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_7 registers */
> +	/* PPS 7 */
>  	pps_val =3D DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
>  		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
>  	drm_dbg_kms(&dev_priv->drm, "PPS7 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 7, pps_val);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_8 registers */
> +	/* PPS 8 */
>  	pps_val =3D DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
>  		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
>  	drm_dbg_kms(&dev_priv->drm, "PPS8 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 8, pps_val);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_9 registers */
> +	/* PPS 9 */
>  	pps_val =3D DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
>  		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
>  	drm_dbg_kms(&dev_priv->drm, "PPS9 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 9, pps_val);
>=20
> -	/* Populate PICTURE_PARAMETER_SET_10 registers */
> +	/* PPS 10 */
>  	pps_val =3D DSC_RC_QUANT_INC_LIMIT0(vdsc_cfg-
> >rc_quant_incr_limit0) |
>  		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg->rc_quant_incr_limit1)
> |
>  		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST)
> | @@ -508,7 +508,7 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	drm_dbg_kms(&dev_priv->drm, "PPS10 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 10, pps_val);
>=20
> -	/* Populate Picture parameter set 16 */
> +	/* PPS 16 */
>  	pps_val =3D DSC_SLICE_CHUNK_SIZE(vdsc_cfg->slice_chunk_size) |
>  		DSC_SLICE_PER_LINE((vdsc_cfg->pic_width /
> num_vdsc_instances) /
>  				   vdsc_cfg->slice_width) |
> @@ -518,12 +518,12 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	intel_dsc_pps_write(crtc_state, 16, pps_val);
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 14) {
> -		/* Populate PICTURE_PARAMETER_SET_17 registers */
> +		/* PPS 17 */
>  		pps_val =3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset);
>  		drm_dbg_kms(&dev_priv->drm, "PPS17 =3D 0x%08x\n", pps_val);
>  		intel_dsc_pps_write(crtc_state, 17, pps_val);
>=20
> -		/* Populate PICTURE_PARAMETER_SET_18 registers */
> +		/* PPS 18 */
>  		pps_val =3D DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
>  			DSC_SL_OFFSET_ADJ(vdsc_cfg-
> >second_line_offset_adj);
>  		drm_dbg_kms(&dev_priv->drm, "PPS18 =3D 0x%08x\n", pps_val);
> @@ -854,7 +854,7 @@ static void intel_dsc_get_pps_config(struct
> intel_crtc_state *crtc_state)
>  	int num_vdsc_instances =3D
> intel_dsc_get_num_vdsc_instances(crtc_state);
>  	u32 pps_temp;
>=20
> -	/* PPS_0 */
> +	/* PPS 0 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 0);
>=20
>  	vdsc_cfg->bits_per_component =3D (pps_temp & DSC_BPC_MASK) >>
> DSC_BPC_SHIFT; @@ -867,7 +867,7 @@ static void
> intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
>  	vdsc_cfg->native_420 =3D pps_temp & DSC_NATIVE_420_ENABLE;
>  	vdsc_cfg->vbr_enable =3D pps_temp & DSC_VBR_ENABLE;
>=20
> -	/* PPS_1 */
> +	/* PPS 1 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 1);
>=20
>  	vdsc_cfg->bits_per_pixel =3D pps_temp;
> @@ -877,31 +877,31 @@ static void intel_dsc_get_pps_config(struct
> intel_crtc_state *crtc_state)
>=20
>  	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
>=20
> -	/* PPS_2 */
> +	/* PPS 2 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 2);
>=20
>  	vdsc_cfg->pic_width =3D REG_FIELD_GET(DSC_PIC_WIDTH_MASK,
> pps_temp) / num_vdsc_instances;
>  	vdsc_cfg->pic_height =3D REG_FIELD_GET(DSC_PIC_HEIGHT_MASK,
> pps_temp);
>=20
> -	/* PPS_3 */
> +	/* PPS 3 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 3);
>=20
>  	vdsc_cfg->slice_width =3D REG_FIELD_GET(DSC_SLICE_WIDTH_MASK,
> pps_temp);
>  	vdsc_cfg->slice_height =3D REG_FIELD_GET(DSC_SLICE_HEIGHT_MASK,
> pps_temp);
>=20
> -	/* PPS_4 */
> +	/* PPS 4 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 4);
>=20
>  	vdsc_cfg->initial_dec_delay =3D
> REG_FIELD_GET(DSC_INITIAL_DEC_DELAY_MASK, pps_temp);
>  	vdsc_cfg->initial_xmit_delay =3D
> REG_FIELD_GET(DSC_INITIAL_XMIT_DELAY_MASK, pps_temp);
>=20
> -	/* PPS_5 */
> +	/* PPS 5 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 5);
>=20
>  	vdsc_cfg->scale_decrement_interval =3D
> REG_FIELD_GET(DSC_SCALE_DEC_INT_MASK, pps_temp);
>  	vdsc_cfg->scale_increment_interval =3D
> REG_FIELD_GET(DSC_SCALE_INC_INT_MASK, pps_temp);
>=20
> -	/* PPS_6 */
> +	/* PPS 6 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 6);
>=20
>  	vdsc_cfg->initial_scale_value =3D
> REG_FIELD_GET(DSC_INITIAL_SCALE_VALUE_MASK, pps_temp); @@ -909,41
> +909,41 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state
> *crtc_state)
>  	vdsc_cfg->flatness_min_qp =3D
> REG_FIELD_GET(DSC_FLATNESS_MIN_QP_MASK, pps_temp);
>  	vdsc_cfg->flatness_max_qp =3D
> REG_FIELD_GET(DSC_FLATNESS_MAX_QP_MASK, pps_temp);
>=20
> -	/* PPS_7 */
> +	/* PPS 7 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 7);
>=20
>  	vdsc_cfg->nfl_bpg_offset =3D
> REG_FIELD_GET(DSC_NFL_BPG_OFFSET_MASK, pps_temp);
>  	vdsc_cfg->slice_bpg_offset =3D
> REG_FIELD_GET(DSC_SLICE_BPG_OFFSET_MASK, pps_temp);
>=20
> -	/* PPS_8 */
> +	/* PPS 8 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 8);
>=20
>  	vdsc_cfg->initial_offset =3D REG_FIELD_GET(DSC_INITIAL_OFFSET_MASK,
> pps_temp);
>  	vdsc_cfg->final_offset =3D REG_FIELD_GET(DSC_FINAL_OFFSET_MASK,
> pps_temp);
>=20
> -	/* PPS_9 */
> +	/* PPS 9 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 9);
>=20
>  	vdsc_cfg->rc_model_size =3D
> REG_FIELD_GET(DSC_RC_MODEL_SIZE_MASK, pps_temp);
>=20
> -	/* PPS_10 */
> +	/* PPS 10 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 10);
>=20
>  	vdsc_cfg->rc_quant_incr_limit0 =3D
> REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT0_MASK, pps_temp);
>  	vdsc_cfg->rc_quant_incr_limit1 =3D
> REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT1_MASK, pps_temp);
>=20
> -	/* PPS_16 */
> +	/* PPS 16 */
>  	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 16);
>=20
>  	vdsc_cfg->slice_chunk_size =3D
> REG_FIELD_GET(DSC_SLICE_CHUNK_SIZE_MASK, pps_temp);
>=20
>  	if (DISPLAY_VER(i915) >=3D 14) {
> -		/* PPS_17 */
> +		/* PPS 17 */
>  		pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 17);
>=20
>  		vdsc_cfg->second_line_bpg_offset =3D
> REG_FIELD_GET(DSC_SL_BPG_OFFSET_MASK, pps_temp);
>=20
> -		/* PPS_18 */
> +		/* PPS 18 */
>  		pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 18);
>=20
>  		vdsc_cfg->nsl_bpg_offset =3D
> REG_FIELD_GET(DSC_NSL_BPG_OFFSET_MASK, pps_temp); diff --git
> a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 5cbcbd9db7b1..58d282dcfc6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -72,7 +72,7 @@
>  #define  ICL_DSC0_PPS(pipe, pps)
> 	_MMIO(_ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
>  #define  ICL_DSC1_PPS(pipe, pps)
> 	_MMIO(_ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>=20
> -/* PPS0 */
> +/* PPS 0 */
>  #define  DSC_NATIVE_422_ENABLE		BIT(23)
>  #define  DSC_NATIVE_420_ENABLE		BIT(22)
>  #define  DSC_ALT_ICH_SEL		(1 << 20)
> @@ -87,22 +87,22 @@
>  #define  DSC_VER_MIN_SHIFT		4
>  #define  DSC_VER_MAJ			(0x1 << 0)
>=20
> -/* PPS1 */
> +/* PPS 1 */
>  #define  DSC_BPP(bpp)				((bpp) << 0)
>=20
> -/* PPS2 */
> +/* PPS 2 */
>  #define  DSC_PIC_WIDTH_MASK		REG_GENMASK(31, 16)
>  #define  DSC_PIC_HEIGHT_MASK		REG_GENMASK(15, 0)
>  #define  DSC_PIC_WIDTH(pic_width)
> 	REG_FIELD_PREP(DSC_PIC_WIDTH_MASK, pic_width)
>  #define  DSC_PIC_HEIGHT(pic_height)
> 	REG_FIELD_PREP(DSC_PIC_HEIGHT_MASK, pic_height)
>=20
> -/* PPS3 */
> +/* PPS 3 */
>  #define  DSC_SLICE_WIDTH_MASK			REG_GENMASK(31,
> 16)
>  #define  DSC_SLICE_HEIGHT_MASK			REG_GENMASK(15, 0)
>  #define  DSC_SLICE_WIDTH(slice_width)
> 	REG_FIELD_PREP(DSC_SLICE_WIDTH_MASK, slice_width)
>  #define  DSC_SLICE_HEIGHT(slice_height)
> 	REG_FIELD_PREP(DSC_SLICE_HEIGHT_MASK, slice_height)
>=20
> -/* PPS4 */
> +/* PPS 4 */
>  #define  DSC_INITIAL_DEC_DELAY_MASK		REG_GENMASK(31,
> 16)
>  #define  DSC_INITIAL_XMIT_DELAY_MASK		REG_GENMASK(9, 0)
>  #define  DSC_INITIAL_DEC_DELAY(dec_delay)
> REG_FIELD_PREP(DSC_INITIAL_DEC_DELAY_MASK, \
> @@ -110,13 +110,13 @@
>  #define  DSC_INITIAL_XMIT_DELAY(xmit_delay)
> REG_FIELD_PREP(DSC_INITIAL_XMIT_DELAY_MASK, \
>  							       xmit_delay)
>=20
> -/* PPS5 */
> +/* PPS 5 */
>  #define  DSC_SCALE_DEC_INT_MASK			REG_GENMASK(27,
> 16)
>  #define  DSC_SCALE_INC_INT_MASK			REG_GENMASK(15, 0)
>  #define  DSC_SCALE_DEC_INT(scale_dec)
> 	REG_FIELD_PREP(DSC_SCALE_DEC_INT_MASK, scale_dec)
>  #define  DSC_SCALE_INC_INT(scale_inc)
> 	REG_FIELD_PREP(DSC_SCALE_INC_INT_MASK, scale_inc)
>=20
> -/* PPS6 */
> +/* PPS 6 */
>  #define  DSC_FLATNESS_MAX_QP_MASK		REG_GENMASK(28,
> 24)
>  #define  DSC_FLATNESS_MIN_QP_MASK		REG_GENMASK(20,
> 16)
>  #define  DSC_FIRST_LINE_BPG_OFFSET_MASK		REG_GENMASK(12, 8)
> @@ -128,13 +128,13 @@
>  #define  DSC_INITIAL_SCALE_VALUE(value)
> 	REG_FIELD_PREP(DSC_INITIAL_SCALE_VALUE_MASK, \
>  							       value)
>=20
> -/* PPS7 */
> +/* PPS 7 */
>  #define  DSC_NFL_BPG_OFFSET_MASK		REG_GENMASK(31, 16)
>  #define  DSC_SLICE_BPG_OFFSET_MASK		REG_GENMASK(15, 0)
>  #define  DSC_NFL_BPG_OFFSET(bpg_offset)
> 	REG_FIELD_PREP(DSC_NFL_BPG_OFFSET_MASK, bpg_offset)
>  #define  DSC_SLICE_BPG_OFFSET(bpg_offset)
> 	REG_FIELD_PREP(DSC_SLICE_BPG_OFFSET_MASK, \
>  							       bpg_offset)
> -/* PPS8 */
> +/* PPS 8 */
>  #define  DSC_INITIAL_OFFSET_MASK		REG_GENMASK(31, 16)
>  #define  DSC_FINAL_OFFSET_MASK			REG_GENMASK(15, 0)
>  #define  DSC_INITIAL_OFFSET(initial_offset)
> 	REG_FIELD_PREP(DSC_INITIAL_OFFSET_MASK, \
> @@ -142,7 +142,7 @@
>  #define  DSC_FINAL_OFFSET(final_offset)
> 	REG_FIELD_PREP(DSC_FINAL_OFFSET_MASK, \
>  							       final_offset)
>=20
> -/* PPS9 */
> +/* PPS 9 */
>  #define  DSC_RC_EDGE_FACTOR_MASK		REG_GENMASK(19, 16)
>  #define  DSC_RC_MODEL_SIZE_MASK			REG_GENMASK(15, 0)
>  #define  DSC_RC_EDGE_FACTOR(rc_edge_fact)
> 	REG_FIELD_PREP(DSC_RC_EDGE_FACTOR_MASK, \
> @@ -150,7 +150,7 @@
>  #define  DSC_RC_MODEL_SIZE(rc_model_size)
> 	REG_FIELD_PREP(DSC_RC_MODEL_SIZE_MASK, \
>  							       rc_model_size)
>=20
> -/* PPS10 */
> +/* PPS 10 */
>  #define  DSC_RC_TGT_OFF_LOW_MASK
> 	REG_GENMASK(23, 20)
>  #define  DSC_RC_TGT_OFF_HIGH_MASK
> 	REG_GENMASK(19, 16)
>  #define  DSC_RC_QUANT_INC_LIMIT1_MASK
> 	REG_GENMASK(12, 8)
> @@ -162,7 +162,7 @@
>  #define  DSC_RC_QUANT_INC_LIMIT1(lim)
> 	REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT1_MASK, lim)
>  #define  DSC_RC_QUANT_INC_LIMIT0(lim)
> 	REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT0_MASK, lim)
>=20
> -/* PPS16 */
> +/* PPS 16 */
>  #define  DSC_SLICE_ROW_PR_FRME_MASK
> 	REG_GENMASK(31, 20)
>  #define  DSC_SLICE_PER_LINE_MASK			REG_GENMASK(18,
> 16)
>  #define  DSC_SLICE_CHUNK_SIZE_MASK
> 	REG_GENMASK(15, 0)
> @@ -173,12 +173,11 @@
>  #define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)
> 	REG_FIELD_PREP(DSC_SLICE_CHUNK_SIZE_MASK, \
>=20
> slice_chunk_size)
>=20
> -/* MTL Display Stream Compression registers */
> -/* PPS17 */
> +/* PPS 17 (MTL+) */
>  #define DSC_SL_BPG_OFFSET_MASK			REG_GENMASK(31,
> 27)
>  #define DSC_SL_BPG_OFFSET(offset)
> 	REG_FIELD_PREP(DSC_SL_BPG_OFFSET_MASK, offset)
>=20
> -/* PPS18 */
> +/* PPS 18 (MTL+) */
>  #define DSC_NSL_BPG_OFFSET_MASK			REG_GENMASK(31,
> 16)
>  #define DSC_SL_OFFSET_ADJ_MASK			REG_GENMASK(15, 0)
>  #define DSC_NSL_BPG_OFFSET(offset)
> 	REG_FIELD_PREP(DSC_NSL_BPG_OFFSET_MASK, offset)
> --
> 2.39.2


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C55F37F57C2
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 06:21:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D7A010E6CA;
	Thu, 23 Nov 2023 05:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB17B10E6CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 05:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700716891; x=1732252891;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FpknaD+ip9AFtfdVCnEOxgsn7lETdNmO7twLB0OB2k4=;
 b=ADq6ErdEVgmWUsdfVdP7W+hbsd6xkelrupPNcIF8ZG+R1XBagftZB1xE
 PkStRji6U1zoP124vaAA31X9EgpWLalj84b1YLuMDT3ESE9pnc5RsksMp
 aV7ZS1fvfKxUQFO7ROZvcV56J4VjdHMcxuk5CkixZnpXksEIagJ83CrEm
 a9bNq0I3x2ii0KTmRCuQsdYjXlG8OeFC7gmMjuwXr+5vluVhP5XvDHEuR
 4/Nx0XiLbGMZSrRcOHXX6AWlPcxtq0A6NMH1gMWVnR3yVyUNqBkSJ1ARf
 0BA9BXS17QNGZc2+d6FZK1B1UoprJgIrl7PEaiHoqCmy0ucQyJ0XNBipk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="478401960"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="478401960"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 21:21:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="833314963"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="833314963"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 21:21:30 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 21:21:30 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 21:21:29 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 21:21:29 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 21:21:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S4lUWJAjxjDz1JHmUj+FXgcdf0spbuyYLeUTgXdbr2Q7xLe1PViKVfTIKeTSNOzOPB/LWq1PqLPHOpepFqfNkxk7rBSU0PX7a/bIdPq+meHgOvVSjUVQWkAnc/es/3CIZSWeEVF7C4vVdpM/O3Q7PIvNg63/r8NgK/rWr0uUBM43u7BdSASrOZecvdm8sRMw6BSG6xlhJHkHPVejQbYjPHTxXUGXHCQCXSzpkbuFB70z3EQOO64VUQD6DQN5xrV5qnPlq5wZL2Gk9XV/PmhLNVb9xw5gL5jG2Zp8srIG3k9kmEq7g9dI89jTNwG1UPRZLsr+1DP/JDxpZ0Di40zbkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3zXQMGX0Yk3b0V9Lwwv4tYlab7qwgbznBpsLqdnofBQ=;
 b=j5YdwEf3msr0i610+3k9SRwr63btMzc45Ws5aM+2urqLgV7nsvLwXrXq+4e0hEfn0ldYIfdyHs2hi2Kw8JRQcUUjfq7Pdxacy0+CvjkzMkczTFzdfmtdNdCFWBPud2u2np4WlMS2igt4x92Yk5ZirY0qQlDoTiHM+7l2Kc6/YnGyH8JoxpoEalM/yfx6/u8EQkORz4+54yLaBt9S0+zpj4dM8H38S3fIxL3qnU+FgHpqNxem21I+30qtrDfS6dL3dlLcOjCEnSGdX8Dkk0JLNxOb/AcN9smwc89+CX7HBMKjIy8q+fMfGSw/yrzy/CrIxNbMunMsUkNai/P0aq052g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DS0PR11MB7213.namprd11.prod.outlook.com (2603:10b6:8:132::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.19; Thu, 23 Nov 2023 05:21:27 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7025.017; Thu, 23 Nov 2023
 05:21:27 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 1/1] drm/i915/mtl: Fix Wa_22016670082
Thread-Index: AQHaHcweaCR+SrJzWUGauoX9hC2p8bCHXOwg
Date: Thu, 23 Nov 2023 05:21:26 +0000
Message-ID: <DM4PR11MB5971C73666281B953C19521587B9A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231123051430.3348945-1-shekhar.chauhan@intel.com>
 <20231123051430.3348945-2-shekhar.chauhan@intel.com>
In-Reply-To: <20231123051430.3348945-2-shekhar.chauhan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DS0PR11MB7213:EE_
x-ms-office365-filtering-correlation-id: 623d0482-e4be-4dc9-0b6a-08dbebe40ad6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ga0he2hLTxT60UYPdWFqs1+YsFiQ7XvyewCbi8KJGHAd34jsHg8AEI9Ubp1B6m2hoefdPyiyDc34zm6dQHD4Dq3NYXIp77sEXILzv2QbNtZp7lw2cSSGLLXA1MuYTYNU/NguU7vN7OKH0AcC3SWz+0j/+m5DQcWlscQXx6ENPUrGyh99tbvuQXIFr+92NnLPRc4hY2bE9Ih16ZRcqf5UdlDTV8xox55IVa2ymeKAd49PREXdP06tSI0bfGYaKIzq6TI3otsjGUSKB0t56Xig+geSB1VT8z3RXF6JYZkTa2zXZGu1kYZrc0Aeq+30sth9cdG6Y/0CS+EsgnwRuhPxmJaH5AGy3OxH/yLf8j1gf3BNBEC6Ne9LzyUb61xlK6YkHPxbjkUIAGJ7qUVPc4g0p1+rZy/6cw7IgU5BFpVZf1QOYUEiO4oas0QTUznDXPJxMQ1P2lgnWtHhyPwH1csl416Fn6ctGLHWkOqyHgT0dtuFR3+ewL/zsoDbQOmPQvT1ubMsEarwZiHFmaTkaPCqRIOYB2bzeAs+0WCPrtF0XsgIespswkVOiMENtKOaPVMlEMVqvDtErsq1uFOa+hornOjOUQT3d5Sr1ZIjAqM//72b3c/xf9uMZrX5W3ZeXo2h
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(39860400002)(396003)(346002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(26005)(9686003)(83380400001)(6506007)(107886003)(7696005)(53546011)(71200400001)(8936002)(41300700001)(5660300002)(4326008)(8676002)(52536014)(2906002)(478600001)(316002)(110136005)(66946007)(64756008)(66446008)(66476007)(66556008)(76116006)(122000001)(86362001)(33656002)(38100700002)(82960400001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fBLtp1lC+NAr26IVILvmwKCZB07hchX/G+eYeHaH0C/h0I52q7xmVmNQTKdv?=
 =?us-ascii?Q?mJ/Tsw0A72V4n0Drw5Utkd+Fd2x+pQm69KDX88mcUTMGKFGvQjYz7C9dgjNm?=
 =?us-ascii?Q?tFUW3JU0azT6/rmW+ma8sfc2SPwKGki4P2uZe7dqjHX0wnhaSPucypDAQNsN?=
 =?us-ascii?Q?CgveKLjlZ0ULkdziweDRixR/6Yp0adCtII+UN9/kA1g/wjrKSlTKrzYnFiDM?=
 =?us-ascii?Q?NzZtYpK78xC27pOB95aXKnHrY/E0ekpJk4i/KPA3qk+AGpSIDlhybEwgudKg?=
 =?us-ascii?Q?L/f4RbyRssX8R/FlLGwGD3xHc6rJpenIgt5r5z0eLrlQnvWENM5O6Q1zaDr+?=
 =?us-ascii?Q?2gVezvyWUexfyUT27V0hzYb3fdxoDIuXr5P5bGt307j8v9ez2M9+/xPTEcru?=
 =?us-ascii?Q?OnONrNh6sw+I3QNb+4MCNCeIgxUVLY26fF/inEhHN5Jr6CEC4GPsjFExx+lb?=
 =?us-ascii?Q?kgR/lmJHTUPwooLLlzZ8hCkw2Vd7hnLaPGURHq6reyXtKZ91KJ2nXGM9UxtT?=
 =?us-ascii?Q?6ierUP9GGQ/lsN6Fpezz0Tyi+jVgxDcToFmnPG9P+4eqtolm3NdhH09LpsJt?=
 =?us-ascii?Q?TdLsWNUtQgx0ICNCmjrdfmhz9JGWdUh8qTtBZ0xn4LyMT5YvsELBfLVV/lLI?=
 =?us-ascii?Q?f1SDaLKMKGd+JjXxweLVfLb6yZDAO/XQwau72hhHLP8nD4UYgD1JyI0m2/bA?=
 =?us-ascii?Q?0FmxVUKgF4Zc3USOdIC5RSoK5Vq8S18J3GARFIVA8pcVudAePDFVTOC164BU?=
 =?us-ascii?Q?wVpnq3uFVj4edg01SlQ9dU8sNHuGXmE1J7M9Gzm0mmwMladaZtM8cv1Dr2Ub?=
 =?us-ascii?Q?W2waZpWk14tUPVxnpeeek7p4vzjkcYg1TYcG6SXwpr+s2AQ3t2CdFBnc6M9u?=
 =?us-ascii?Q?JY1tq9uL8D09VSTEdJ1Z7l+pZ3B9e+58cW79BmSWlI8jdTmBJMrWUYKYXlfx?=
 =?us-ascii?Q?OHPptfwIL4t12JwwJ2OC/RltkFdGhffVstLbgp6a8HInUf7PKAgfeBXntl+c?=
 =?us-ascii?Q?kCZfNMWnvcT/NLhmBlsGZv3iU8+UERycoG0+kv3frFu9mF40JMjTJVEIzkoC?=
 =?us-ascii?Q?wMGJJwv/vGcsSq7eACl+z0d/053Xb1QxRSY+itfFE9U+Eg8qai3MyoQ8QU6w?=
 =?us-ascii?Q?Nn2H7b0MDh1ndj3uxYjlcHjMOOe4NlFkTbu+QujnJBqN6mIsJK0pTXnu/PON?=
 =?us-ascii?Q?ISsnV2dQ2m0AFg2dDbp2+zkeZ5wtRKXqap9hpczDlM+MadjMfbQlD3Xfk8pS?=
 =?us-ascii?Q?reDc30c2Ku+Ecuoa5Ylvskv1pVhOyV4rvbtQ6Lv4ewBNMUTAfi6d9iEym7rn?=
 =?us-ascii?Q?loHbap8k1PwfGBQkBJg4s+EEpdvx4MpRFj0bmTy1VHP9AM/JXVJolv9UizSZ?=
 =?us-ascii?Q?c3SuTdBbvdIT2Xvt5zgPTsF12oyH4HL42/gwtVrL951BEWEnxB5XMrqGRvDa?=
 =?us-ascii?Q?XEzvgHn/3kfxj2lteiows2TL4fmZF0EiWJKjTJxbFNsHe7OO39soP1cJPu4p?=
 =?us-ascii?Q?4Lgw8Hcc7rcufdtY6T4pIOuuQN9k+251oRSBgg6ejd22jMZiKu89/sZTOo+B?=
 =?us-ascii?Q?oiOW/5sQtB0Wg3kYgGbnk94O4T6CourSkNRBHMi8zI2saO47jLygSb0bAEDN?=
 =?us-ascii?Q?Mg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 623d0482-e4be-4dc9-0b6a-08dbebe40ad6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 05:21:26.9643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MdNOpddivLxXnw5KQzK7/gXE8Q+wt7YFHM8n+S60PZ+3+s5DMqQnlUQTwRpoB94KmP4Cgdju9JIVBzrLSfRiIaDFhP5PKjGnEER52U+Eyao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7213
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/mtl: Fix Wa_22016670082
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Chauhan, Shekhar <shekhar.chauhan@intel.com>
> Sent: Wednesday, November 22, 2023 9:15 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Sripada, Radhakrishna
> <radhakrishna.sripada@intel.com>; Chauhan, Shekhar
> <shekhar.chauhan@intel.com>
> Subject: [PATCH v2 1/1] drm/i915/mtl: Fix Wa_22016670082
>=20
> Wa_22016670082 is applicable on GT and Media.
> For GT, an MCR register is required instead of MMIO.
>=20
The revision history should be captured in the patch not in the cover lette=
r.

> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 6 ++++++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
>  2 files changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 9de41703fae5..f77caf81f948 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -529,7 +529,13 @@
>=20
>  #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
>=20
> +/*
> + * TODO: Change GEN12_SQCNT1 to MTL_MEDIA_SQCNT1 or something
> + * equivalent and also at all the places this reg is currently
> + * being used.
Too descriptive an vague. I would use something like
  /* TODO: Evaluate MCR usage for both Media and GT instances of SQCNT1 reg=
ister. */

Regards,
Radhakrishna(RK) Sripada
> + */
>  #define GEN12_SQCNT1				_MMIO(0x8718)
> +#define GEN12_GT_SQCNT1 			MCR_REG(0x8718)
>  #define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
>  #define   GEN12_SQCNT1_OABPC			REG_BIT(29)
>  #define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9bc0654efdc0..dbf0c6e536f1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1644,7 +1644,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, stru=
ct
> i915_wa_list *wal)
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>=20
>  	/* Wa_22016670082 */
> -	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> +	wa_mcr_write_or(wal, GEN12_GT_SQCNT1,
> GEN12_STRICT_RAR_ENABLE);
>=20
>  	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>  	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> --
> 2.34.1


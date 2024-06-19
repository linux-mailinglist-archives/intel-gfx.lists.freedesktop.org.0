Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F41890F5C3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 20:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6145210E025;
	Wed, 19 Jun 2024 18:10:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nstWDBz6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FA110E025;
 Wed, 19 Jun 2024 18:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718820638; x=1750356638;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iI+KIO2rX1ElNQrF6uORAiYDS58jba3Y4yGz9yVdjsc=;
 b=nstWDBz6SIqtQIOXG4ZmrCFXlUUqju4Rnljem23UWEGw6casXApKMlOq
 7ozH5qyb3LkKno0dSuGzJDTRZeo/y/OuumZmcXnZ96DgI4A3WV7iztnSJ
 RV9/DrmAidfemyac65omvMHhyrrVDFJE4uU2C1E9+nrdNZyfIobcsjReP
 6bQyV13o4HsJN6M/1I7qVxdQkB+kL3P9+NpcIUrr/9yghy2UxnpIMVJps
 4VYYFnJm7/6Jsv2OTUDyx8exwNp0EsYetAABavd9iUpgY1qsgtJ236OIf
 4r/IQtiCL3d9rkGEVUz+BnbY9m9HqewBZIJzDgb3OJdHYrTwdK+ebbGrA A==;
X-CSE-ConnectionGUID: CRRpMaM0QcqNM6Stxou6FQ==
X-CSE-MsgGUID: dbZ2xwbQT6mvUnFNhf5snQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="41176815"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="41176815"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 11:10:37 -0700
X-CSE-ConnectionGUID: 3iISPjlRSA2uf7fbk+p7Wg==
X-CSE-MsgGUID: VetRtZo3SJevNkTZz89ZbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="42695371"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 11:10:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:10:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 11:10:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 11:10:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C7E+GPNdjtj7UystPPs+trqAOpTBGlVRFV8o3Zm3OcVneFwxNq6/0Me6f0vyplCY/RjonHSe/fZ4jLQIOGRbg2CNiK19U++IniTWdn7fbNJRWZGwhsD+PXrf1F2ikTsEqV9LODv1Hk0qXClgQsD0OWt7JFxkIGnoclgU2T0ZAl1nJK+0Y/zN+6AhKhLd92fT30s3hERPkKOlGrmSRcMaAFRoR+vLrzEBvjD1DnCMma8OV32E6s9AfOEG6eowsieyjakgFsV+S1x9cvWuVx1Q1ouu9N46c3tJvcLe/Fs8C04dB/uRPsD0+ME+aebMBKCKoKj5/70cfwrTo/hcdokYrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VhUkUtREXBVQeU5fGscFC6kXyRa2p9MDqRbZk262OHg=;
 b=HL9u7r++U88cCGY6VyHBNrI5YIl/YiHtyA4nDvV47rGD53pMmF+IGGpGawzWWLMwXNsUWHgSyvKRsus+hnoOcASQCrc0cxC+s1d9c3ydX3wR+PDCynPakG4D1StlldxUj9lhfex3owzq26wev0nfEw2b2iW86f0rnouVOPr/7CLDTuQk8PVKyh9fzZCFA2D9USwbftSoQekyj1l55pyLrQmUKUDndnX0CI1wGdUEWPKhxAnA5/2qFCNiG4fwBTc9+XoluqFNfbVOD/gwBkXFuqySR/dJ7QU/bMx7WnyX2pOlUgZSq0tuI9iTmGWwJiGaEcAHDEquCkkAKb8z/N3PDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.33; Wed, 19 Jun
 2024 18:10:34 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826%5]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 18:10:34 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Nathan Chancellor <nathan@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v16 9/9] drm/i915: Compute CMRR and calculate vtotal
Thread-Topic: [PATCH v16 9/9] drm/i915: Compute CMRR and calculate vtotal
Thread-Index: AQHauwb1wkpVT4XYeU2NJWNTI/5LY7HPSG2AgAAndYA=
Date: Wed, 19 Jun 2024 18:10:34 +0000
Message-ID: <CY5PR11MB63444654C5E879687DE83D60B2CF2@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240610072203.24956-10-mitulkumar.ajitkumar.golani@intel.com>
 <20240619154207.GA1125704@thelio-3990X>
In-Reply-To: <20240619154207.GA1125704@thelio-3990X>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: nathan@kernel.org
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|CO1PR11MB5057:EE_
x-ms-office365-filtering-correlation-id: 773fbb72-4078-4e8b-89b5-08dc908b1d12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?4NYWzvJoa47tv/6yYLlatk7vdRYAnzZ5r6TdnxQ24rXf7olgZ5b5mm+0I0ZL?=
 =?us-ascii?Q?Ht4dCxYF2m8EECUZMex/09VifptDVttTQloUqZCszpKSrP8TFKaIRlaC+orO?=
 =?us-ascii?Q?1zvs80xlta0bbDCAXvzApRX4sn7gqMVpImM8EiiwUner3isG2TKlStB8dBAZ?=
 =?us-ascii?Q?+fIR/A/zIMUfnoZIYwbkV3dcGlVG1EY9q2d/n6TBcI98gwRXHQOj2GIgizJ+?=
 =?us-ascii?Q?R4u9F8DAnSelL4AGIqwLl8yLYWX0RwxYXPuAl7DIyNR+4MLRMt2tcg6BIkWj?=
 =?us-ascii?Q?QWsuwYIudIxxadDixDidkDJGpMdPtw5g+tIb6yKCmWlwj3aH9a5pu6DlBMQp?=
 =?us-ascii?Q?S0oLJIsMsN4Y7LPvH6jIK0nrsw/ZhiwCmRoGutHXxm03fS/Cmanx3yCBhjcS?=
 =?us-ascii?Q?Q/rXWoOZJFnDd7IoWbNri49rLgou6/n2UJV7PjPuCqNm1rb8+D7qO7QjHn7H?=
 =?us-ascii?Q?HftD70ueitIPGv1JvNNK9VJ1CWn1SdRqx8kxKVJpt/OxH8hdZo+i6QblNBC3?=
 =?us-ascii?Q?qngIoy6aQZxYC/LiVswXT3zZEDbtL3q1K1AnRGYvKR4Bg2Tc2U2DW1Fj46av?=
 =?us-ascii?Q?TQhvgQ6tEJK3pwLLmoFvGFwQYAWCUyMHHvL72YwQ+XdBiLD5QHFTnRH+hv4H?=
 =?us-ascii?Q?WLLDvyBWNzBGcVL76PkQ5043TKnGY+oeV8vqaiOh+4sYnsdrCwWu7Gp9ms4T?=
 =?us-ascii?Q?XUCd/MBKJckRmMK7uaob/DxtV0Q0mVFtv6atlEGI9jjz9/jwGrbVHRDy/g0M?=
 =?us-ascii?Q?UsSUu76cYtbqhLTudzVw8sQYjVFGPrAQqJgyyodyrCnWIUd5skhfQio9PTcZ?=
 =?us-ascii?Q?C4unX5QBMNwdEvg2oluosuuDMd7IarR7fH62gM7HRWM3d2f2SQgcsYh9r2wp?=
 =?us-ascii?Q?D465LXqOAwG5oE8+0/Skpek+v4K9xaY0jpO/LZYRSMOSr40eW3W/YBs8rVxz?=
 =?us-ascii?Q?amh3moHT1ZVnaF1jSjX029TtsIp1IG/q+b2Qi6c28itxuqfjO5+YgQU8Y/yv?=
 =?us-ascii?Q?UQz5NBH0Sj1spLnTmwa6YkA+TbIBpMzT8xbo/YlesvCAuXuPPA1wBJ2pks6U?=
 =?us-ascii?Q?SV5p8FDrCE6LG0FTJMfYPOATOSiSm2YPJg0b7jYKMioXnMFsBhfnLWTd+9d6?=
 =?us-ascii?Q?yt8zQxSfbO077Kc01I8BC+8VOZOj6Gaw7xwP8imc2XpldO1vSoX5k4nVeSSk?=
 =?us-ascii?Q?SXUkcMJPIXB9iPlguQmWh5mHkmR1PLanRJTddapW3Rr7peE2VLd5cqZIyPti?=
 =?us-ascii?Q?ZAFnStGV6Xm+I088jO/K3GIHKnI3bKGTVgOfx1+4YYe5MNJ5UHSFJqqUXQBz?=
 =?us-ascii?Q?DN6sfiMUeanVeYYxo/W2U9+4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KO9UN98q8nommem39SqvFmF6Ryf3oLT/KQhnCcIXinEcLBAZIBX/YtMVEsuS?=
 =?us-ascii?Q?n9q5HU5uqfZzhBMu/hqjo6r97h/EuhgMij7CyOXcNcAYreZK0o/GpdiGoLBy?=
 =?us-ascii?Q?ByK35Zly6GUD3mNzHPi5vERNUC+sb27QH4r1Nck6XnGsCk/v0OOxUtlpGX4x?=
 =?us-ascii?Q?btkbZahZNtwuHs2RzVRy+eQK3CJ9Ebut8+5DQFSqyeahLagfCszrZhEPQ1kE?=
 =?us-ascii?Q?GDJe2Khsx4rAi70ERfQHGtCF9HrJoyHm6h0Wi4RecBuwibPvWVBYF+rUfZMq?=
 =?us-ascii?Q?DE8yJxJP+NMVgSbr9L/6OybyzLM3n9O21h16M8eEzEfM8RL50K2RNMigCvm3?=
 =?us-ascii?Q?pi8OeFodyJcAyPDhEUDIrb7Fpw/fi+Xsogna04SP6I2pXwXgop60rZU1g/PU?=
 =?us-ascii?Q?e61wKtuyWiNcELxvCZXt4lsg+fX6WGwY3MKj3LoeNed9MW2GCJJVWcQ6Y7Ac?=
 =?us-ascii?Q?ZULXoWDWOyhw0m7f5A9ADBCao1Ct9z59KcVF6dxfj3ol1Rycfdj5omA62UKP?=
 =?us-ascii?Q?LCwxPVI9IO1lgHDg0fhede9XxHN+Vxn+Pm8xpa/pj2WL/zJxQ6VhFQRGos30?=
 =?us-ascii?Q?AzdA5bEvsomChBnkcUVHFy0J7K2xK1o57qnGDmalGtUBmle6+ec2Qu+wIPR+?=
 =?us-ascii?Q?w1ds7D8cjHhWlZo4Jjgb98Arr35Rxe/yoBP9OuFiidAew6Rzk8auDvhMTN7c?=
 =?us-ascii?Q?TPRYTdleY1leJXr2WGeTIgJXZlSYbJ4pyH7lQiL4OVOdHsJzdB/d1UxLEFve?=
 =?us-ascii?Q?ks+n0sImKNbfK9aEhc+zEqtZ0owiF1bN4O1dDesCOLhXV8s2YmHbsHLIo5e7?=
 =?us-ascii?Q?+p5GdLj6ut+iFZGxMnUbcxdjY1DP/hyXwUSkwOJYH3NhMWeXAitAKEo4vRbe?=
 =?us-ascii?Q?mXA6ExPfLyrSmrUK2RaDCpfmIZU5M1PPCXPzUmEwoTdIT2ZRwcnXrpZDNRou?=
 =?us-ascii?Q?MahkoC97l3CUCtPhGxaxwQ5mh76ZJv7TV+J8uy2OTYt7oW7G/8w6osODcPsr?=
 =?us-ascii?Q?ywO+m/OuvJPH7TNkI+r2fl07Ow/wRplyME/Cl/1ziKSSiWLxLKhNQ5gm8964?=
 =?us-ascii?Q?ujff3hpgw+n5CB2CgWGwIz8t4Midltn4rfvKcjXFU9DHPawOMalhKojCHQip?=
 =?us-ascii?Q?HQ4le48VLZp6aaw0AkaL0ixm9u4CeL8QTMJAJzWyajUSv+8jbfUw525AvI2D?=
 =?us-ascii?Q?F+ki3LbJWYOtZqnzQJ7pTY03Tt++O/w+ZU9Avzz3a0/0FLsv2e+NkDrPV8wU?=
 =?us-ascii?Q?3+88dzH6iHmktQT8xthBLAilQbapZNWdwyanB97Jr/yP1T99SXnyulLXLz+b?=
 =?us-ascii?Q?SBqfyi6NmvsUOQr5Hn2u5zMuiuwPLdTc7TAo3wppHH1QCqEBwXuzpI2y3pMv?=
 =?us-ascii?Q?7ajyGSzUCHOMV3hYQOfr83GRplGBDQ6jB5dPFbAmoqu6d/z5LzX/6Fud44td?=
 =?us-ascii?Q?6iyU4vGKQ5OXxFMHWwtE06/Hx32fivrp9ip3dzo06gGXkLqaZp5/j2ugU4XO?=
 =?us-ascii?Q?yBRo+aRjdwCX+VggsxKmkCxQp5IhEcpwxe/ryfV8q6b10RD4YlQuJEzFVmEm?=
 =?us-ascii?Q?A5qJtR4P/Ed/OFfh2ODjexBCe58wOI0Ju8oQ97gPyyx64o0icYfvdnLb1eJi?=
 =?us-ascii?Q?eDchSYHS1ch00uEnZqsDyks=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 773fbb72-4078-4e8b-89b5-08dc908b1d12
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2024 18:10:34.2342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: czCRjqoaL72uRYkKjD1fJbvHLV31Oz8+tG4io+kzN3SWQ1aemeCb6UzXEcwiDK3F0ge+eWVH/aSJjPrvG/nVIG9Q9OUbtGvPH95IiG+Ok7hjynWScMtns9rTCLfaGpvU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5057
X-OriginatorOrg: intel.com
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

Hi @Nathan Chancellor

Probably fix is merged in drm-intel-next
related patch:  https://patchwork.freedesktop.org/series/134860/

Can you please check and suggest if this patch is merged ?

Thanks,
Mitul
> -----Original Message-----
> From: Nathan Chancellor <nathan@kernel.org>
> Sent: Wednesday, June 19, 2024 9:12 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH v16 9/9] drm/i915: Compute CMRR and calculate vtotal
>=20
> Hi Mitul,
>=20
> On Mon, Jun 10, 2024 at 12:52:02PM +0530, Mitul Golani wrote:
> ...
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 4ad99a54aa83..05f67dc9d98d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -12,6 +12,9 @@
> >  #include "intel_vrr_regs.h"
> >  #include "intel_dp.h"
> >
> > +#define FIXED_POINT_PRECISION		100
> > +#define CMRR_PRECISION_TOLERANCE	10
> > +
> >  bool intel_vrr_is_capable(struct intel_connector *connector)  {
> >  	const struct drm_display_info *info =3D &connector->base.display_info=
;
> > @@ -107,6 +110,52 @@ int intel_vrr_vmax_vblank_start(const struct
> intel_crtc_state *crtc_state)
> >  	return crtc_state->vrr.vmax -
> > intel_vrr_vblank_exit_length(crtc_state);
> >  }
> >
> > +static bool
> > +is_cmrr_frac_required(struct intel_crtc_state *crtc_state) {
> > +	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
> > +	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> > +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev)=
;
> > +
> > +	if (!HAS_CMRR(i915))
> > +		return false;
> > +
> > +	actual_refresh_k =3D
> > +		drm_mode_vrefresh(adjusted_mode) *
> FIXED_POINT_PRECISION;
> > +	pixel_clock_per_line =3D
> > +		adjusted_mode->crtc_clock * 1000 / adjusted_mode-
> >crtc_htotal;
> > +	calculated_refresh_k =3D
> > +		pixel_clock_per_line * FIXED_POINT_PRECISION /
> > +adjusted_mode->crtc_vtotal;
> > +
> > +	if ((actual_refresh_k - calculated_refresh_k) <
> CMRR_PRECISION_TOLERANCE)
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> > +static unsigned int
> > +cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool
> > +video_mode_required) {
> > +	int multiplier_m =3D 1, multiplier_n =3D 1, vtotal, desired_refresh_r=
ate;
> > +	long long adjusted_pixel_rate;
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	desired_refresh_rate =3D drm_mode_vrefresh(adjusted_mode);
> > +
> > +	if (video_mode_required) {
> > +		multiplier_m =3D 1001;
> > +		multiplier_n =3D 1000;
> > +	}
> > +
> > +	crtc_state->cmrr.cmrr_n =3D
> > +		desired_refresh_rate * adjusted_mode->crtc_htotal *
> multiplier_n;
> > +	vtotal =3D (adjusted_mode->crtc_clock * 1000 * multiplier_n) /
> crtc_state->cmrr.cmrr_n;
> > +	adjusted_pixel_rate =3D adjusted_mode->crtc_clock * 1000 *
> multiplier_m;
> > +	crtc_state->cmrr.cmrr_m =3D do_div(adjusted_pixel_rate,
> > +crtc_state->cmrr.cmrr_n);
> > +
> > +	return vtotal;
> > +}
>=20
> This change is now in -next as commit 1676ecd303ac ("drm/i915: Compute
> CMRR and calculate vtotal"), where it breaks the xe build for 32-bit plat=
forms
> with:
>=20
>   $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi-
> allmodconfig drivers/gpu/drm/xe/i915-display/intel_vrr.o
>   In file included from arch/arm/include/asm/div64.h:107,
>                    from include/linux/math.h:6,
>                    from include/linux/kernel.h:27,
>                    from include/linux/cpumask.h:11,
>                    from include/linux/smp.h:13,
>                    from include/linux/lockdep.h:14,
>                    from include/linux/spinlock.h:63,
>                    from include/linux/kref.h:16,
>                    from include/drm/drm_device.h:5,
>                    from include/drm/drm_drv.h:35,
>                    from drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h=
:13,
>                    from drivers/gpu/drm/i915/display/intel_vrr.c:7:
>   drivers/gpu/drm/i915/display/intel_vrr.c: In function 'cmrr_get_vtotal'=
:
>   include/asm-generic/div64.h:222:35: error: comparison of distinct point=
er
> types lacks a cast [-Werror]
>     222 |         (void)(((typeof((n)) *)0) =3D=3D ((uint64_t *)0));  \
>         |                                   ^~
>   drivers/gpu/drm/i915/display/intel_vrr.c:155:35: note: in expansion of =
macro
> 'do_div'
>     155 |         crtc_state->cmrr.cmrr_m =3D do_div(adjusted_pixel_rate,=
 crtc_state-
> >cmrr.cmrr_n);
>         |                                   ^~~~~~
>   cc1: all warnings being treated as errors
>=20
> Also, is do_div() correct here? It is different from the other div_() mac=
ros in that
> the "return value" is the remainder, not the result of the division.
>=20
> Cheers,
> Nathan

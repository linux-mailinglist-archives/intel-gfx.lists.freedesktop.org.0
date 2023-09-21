Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD797A92C1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 10:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C95910E588;
	Thu, 21 Sep 2023 08:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A3710E588
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 08:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695285879; x=1726821879;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YLrj/BBbPb79sj0xJcY6tn5CLNC8A21+whbCKPsV4PY=;
 b=DPg3lZiFw55fihWyaqh0mJd3zZH6hU2X2C91VJ5F7TUJ1OMCiW35MGD3
 NJV7fM4ou4rvJlXBT/+DxrAYyPytFnH5FqSewLLa4o/bpSq8koelp17Nj
 V48ITAHqRKA7s4RJAxDYkPtwKdyc+Tk/FQa0rmdG/1p5XAXyeqDtIDx31
 /apejjVsctpuznVfTOiZ0sHLj5Q6h6GVi4AVf7zl91H3wAsuKdUNcx0ss
 Yr1pB7zRVZKd1mQJn07tHc7l6MGcgrYWCoq65qr79zWb37S7wCPVGAawz
 1lLtfty9XKd2XvasJJWElau73O1IawTH4Cy6zpFuPFeEU9UGWjNX0uUNx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="370775159"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="370775159"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 01:44:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="890288153"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="890288153"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 01:43:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 01:44:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 01:44:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 01:44:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iBddH4CDM+O9ivNS3Mg05qHMeUrHg6VdEROJ+xQzSu20eJui7g26DZ+15B6oYZiIuE2lZyc4ugztXkRYSGFYPsDcVFhMHny2tac5xb0ITbHbf+Arv6zKyl8gSqSv6mSH3Fs1AX80NbGejQNJ5A+C0/zLf2wWzS5GtPISt+AZ6fiQNEdFpBOunkNAypLIRzKHOCoC2qanieBO4znwBI4jMPvj74mLbqVfdNEswkVuLJyCu/19bMjNAmYhPMdik+eLEZ6wHTr/PSxiSYhE+tzfUYrJ85oNoicptjh6MaqQq8603rS/CJor6SaXopq91Zg4nWNXhRF5n7b1Jo6iJZaf5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mlqdON9GuKQV5iVLWtsyTjJGNroFvPjaar/rVGz5HPc=;
 b=bgyDJV/axvNN4/BpipCUTWF0UCZnl9oLSsKW17pppeCI4I2r00L4jyI5HuZ3RRSF77w/mK1zzgXxS3UzW+RMCh43hMp6fa4p9+uh4sn34/jyL84tP/ARHoCvF0wZ8ivddhum8isFBl8ZfF/DzDHeCMXl6gOa+L24Ovus9o8nlkTnDPQTuhh8hFwNni6lHrs5FRh9KSmOsWOs6P9id4o4XDJwwvWRXyy0pri9E/lGUcctcmQ4CfPjW3/uL9rVQlr+2kC4GXS5T62jCtOR5zwrLeGP5ru043dFDy2Nq7DL/cumlNDaW2n4JaTbj35SZZFiD/dhm5/s3DXQt6dQNLFgew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5763.namprd11.prod.outlook.com (2603:10b6:303:19a::8)
 by IA1PR11MB6292.namprd11.prod.outlook.com (2603:10b6:208:3e4::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Thu, 21 Sep
 2023 08:44:33 +0000
Received: from MW5PR11MB5763.namprd11.prod.outlook.com
 ([fe80::eecd:99ac:9917:f8c8]) by MW5PR11MB5763.namprd11.prod.outlook.com
 ([fe80::eecd:99ac:9917:f8c8%7]) with mapi id 15.20.6813.017; Thu, 21 Sep 2023
 08:44:33 +0000
From: "Cetnerowski, Adam" <adam.cetnerowski@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>, "Hazubski, Filip" <filip.hazubski@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/uapi: Enable L3 Bank Count
 Querying
Thread-Index: AQHZ5ztfshdDuw23Dk+nSZWZUlY8GLAj1TgAgAEr7BA=
Date: Thu, 21 Sep 2023 08:44:33 +0000
Message-ID: <MW5PR11MB5763BA3AABDC2F1C85871AFA8AF8A@MW5PR11MB5763.namprd11.prod.outlook.com>
References: <20230914183249.2505085-1-jonathan.cavitt@intel.com>
 <20230914183249.2505085-2-jonathan.cavitt@intel.com>
 <ZQsGyDufT6Ohb9J+@intel.com>
In-Reply-To: <ZQsGyDufT6Ohb9J+@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: filip.hazubski@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5763:EE_|IA1PR11MB6292:EE_
x-ms-office365-filtering-correlation-id: 50a75cc7-b034-498b-7bd7-08dbba7efa72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JN9TRNzzMWwF73nL76ka/wZ2b8hwINN269fM5C18zoJWl6pky29mPOFJEdkT0DuvdSs9fcvc8QnISvTaKadCErFVuI95YisVts/9suMMPKDtaVY2urduksj0sWfIMuGMmExgx3+HgkT4ozgDmJHwBKmMx+3HEOQ+H3jd12dXK5EIZyM5+aJYZszaPSR03ptU6gps9ap7eaBIj6bJFNoKNib3Cu8+xpCBQR4j2Hnu5WqD1gn+SUl2sJcEN2zsJ4zxO6xLofcz/eFkmXO4CsXfAL6J5gEOAQaFwZFrfRYcbNSRHAB57cOGYXdTjjE5pe15mV0wPEpjUiAdnb6yDM/CKvEqp+xnIuauMM9Icfmka8Pg3Xd7nZPCd3RStXrh0KmyMIP23lEKxy+WYikcBR69azBWui4mqZko7dMYS1Le6rI028vcW/xpZWXmirnrIBUVjqAabdwRsitTQGmXZQqi6dgmOIj5EJSig/B0paPA2hmoFzFnZtAS0WQpEhH+iTjVvFqWd6cRF3PiVSk55+jp/uP/UHKvxLIDdw8ijAPwZlc2eGOVi4floZVfMMjZ09j35YYlZjlYADWoXhEbcYwRtQ/v4xA2nBcRlaCPc2vx4qKGRWrgGjHQI8W6UAASK85r
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5763.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(346002)(396003)(39860400002)(451199024)(186009)(1800799009)(53546011)(6506007)(7696005)(9686003)(15650500001)(2906002)(26005)(76116006)(71200400001)(64756008)(41300700001)(66556008)(66946007)(107886003)(6636002)(54906003)(66446008)(316002)(66476007)(110136005)(4326008)(8676002)(52536014)(5660300002)(8936002)(55016003)(86362001)(122000001)(33656002)(38100700002)(82960400001)(38070700005)(478600001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qA6r8Fe4cSyINE+/kgjax7KP1NzOe+EtCgLGtOztapQ1sm3zl1ng5BGFUyFG?=
 =?us-ascii?Q?Hka7ktGC8yQTRry09SDDrHeD9/0Lu2Wx5CuKcbz3HpLFFla6ZPdjtAt3b/dF?=
 =?us-ascii?Q?SkpJA9Qq3rrjP/1nHkjXq4LgHUOT0Hyk9IxSFfexqnmxX0IqaJAW2XsJ6i4H?=
 =?us-ascii?Q?qkgrmqH62zOALLQWzag1Ug+0o3H/14yphjMg4zF0YAUaMfTa/ozeullhDs9c?=
 =?us-ascii?Q?j1f1Ix3rUXSMmxV+N/YPqKP3s18hzncl1Ocslmjh61scphazeR2TBTee4DtW?=
 =?us-ascii?Q?YDZrJgqEicn9cKYVPdMhXeUCueKh3R+M+fVYR2CKSk0iVO9Jt552lmqXsOJZ?=
 =?us-ascii?Q?BXBAR0VRf/+EoB0E9PmmMLP5BF+v6KLlHmrtWQD6QtpZvuDvxKlOeXF9I0Wy?=
 =?us-ascii?Q?1Cte0FnoxQ14FHrQmFqwlSPbpHEYDsrpYGpN1Fr6wM1eKi056yqcZbznYHgo?=
 =?us-ascii?Q?xWREXWH+G448LAURwdqsMqMg0/3AMdJowo1m3+Qtx0DAyerJUs8QxMc1hrd2?=
 =?us-ascii?Q?pQoOUyU+1E7JjtfNZtDpvQ5qUpb3aJK7C0bMDzGc15j90lWY3lQNF8Kjgiwk?=
 =?us-ascii?Q?4W8orm2Xgop0/HWObq9NC4Aoo902gdnooWaLPpjjq0nz2iKXjXF2qwaCCoP9?=
 =?us-ascii?Q?g+mtc64dFXTtrsCEM8GZOK/ljvoPtkduTE9hXxFOqWhs+VjDEFlbIJQjGKMZ?=
 =?us-ascii?Q?hHiF+iLFVNMR6WXIk4yvIP9fnzaR8WlFsQsA/X3HXR5P9i9EKO1aaj5Hwsfk?=
 =?us-ascii?Q?DdLUSFIZMKH+Doh7tuPIPDh3tafI/HQlDx8L3ttaGR/c9fuDWBQrUvqd1NG3?=
 =?us-ascii?Q?Eo20S75buxEk6voTOdLcKsHVcqjiscwkrBa7yQvOVDhOW4EVsD+YrfkX2SYz?=
 =?us-ascii?Q?JU8zpLxBbulM8YfLandRRy9veHfj4bjTCbv7GU0CQzXfDpeMx3cnCfLTxLp3?=
 =?us-ascii?Q?PEWrG1iLOGiHqOPm0Iw6YlbcV1O7NtX/3JGmWg1uzF7EJLe+BqK6IzeMpUEm?=
 =?us-ascii?Q?Qn0fTkopsBo5Q60fOPJElzaePhFdpfEv9TjlpLNGdcunmbLB/wmF4trIqQVw?=
 =?us-ascii?Q?Gr8GzquUerIyKC3RUmGPZ3Th8Pz0VA8inp2ooiZYY4pXMPOZ8XgKYSnU2uaK?=
 =?us-ascii?Q?teCgyAQxDWJ6l7ZeQfTTMydSVdNg9fB1wkmSSzqeO+LAqKW9MzCRJ7e+qU9D?=
 =?us-ascii?Q?FXssykzzt70ImMjqW1r9YgpKB1Fph6PQkGwF6bmHOxO5CD1htElMsWb/5VgY?=
 =?us-ascii?Q?SxDOgXMlkTgivywwuig8QbVb/4pc0RJ2/FP91kD69UYuPcEPrBo7wIFJi7zl?=
 =?us-ascii?Q?zTF+9VjAuTEI3IuCaqsjDlFkFfJ5JLvOIIAFyLqnekit9KfjatsYQcgtnL1B?=
 =?us-ascii?Q?ToZ6EoXbax4rSevQ09cOg40IA0NuR6d7LaT2PZy8ijrUp0DFksug1XxW/dan?=
 =?us-ascii?Q?Y5PS/ntRLz7K4gMuTG+7JBO96BUpwRCHPkvg3vq6SduwyrGUaXiKQCZk3ui2?=
 =?us-ascii?Q?Dgpk1XNL9SoIt3s4ec3Lxz/lFomU97mHM1X09kiXQGM3NVwrwpKJeJpHgev5?=
 =?us-ascii?Q?3KH8NtSMj1fdBb/jvucGMJIGKigUVQIMhxrA5udLlds3lzXhHOXNQ/edziQr?=
 =?us-ascii?Q?BQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5763.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50a75cc7-b034-498b-7bd7-08dbba7efa72
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2023 08:44:33.3169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vUuIghfLTZMxvb2Qs4/BNZd9ZktFKKZauRi0n6BTzFDAKsRFHGK1+km4V8fT5MuXVoPMARJNmFV/z+eYE5yctRTSENVYQrRaH+d1GSjiMas=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6292
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/uapi: Enable L3 Bank Count
 Querying
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
Cc: "Dunajski, Bartosz" <bartosz.dunajski@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Milczarek, Slawomir" <slawomir.milczarek@intel.com>, "Mrozek,
 Michal" <michal.mrozek@intel.com>, "Wright,
 James C" <james.c.wright@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+@Hazubski, Filip


-----Original Message-----
From: Vivi, Rodrigo <rodrigo.vivi@intel.com>=20
Sent: Wednesday, September 20, 2023 4:51 PM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Dunajski, Bartosz <bartosz.dunajski@in=
tel.com>; Cetnerowski, Adam <adam.cetnerowski@intel.com>; Milczarek, Slawom=
ir <slawomir.milczarek@intel.com>; Mrozek, Michal <michal.mrozek@intel.com>=
; Wright, James C <james.c.wright@intel.com>; Roper, Matthew D <matthew.d.r=
oper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/uapi: Enable L3 Bank Count Qu=
erying

On Thu, Sep 14, 2023 at 11:32:49AM -0700, Jonathan Cavitt wrote:
> Extend the query ioctl to allow querying the count of the available L3=20
> Banks on a given engine.

Why do you need this? Who is using? Where's the pull request for the UMDs a=
nd IGTs?

>=20
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---

Please never send a cover letter with a stand-alone single patch.
Specially in this case where the cover letter is not bringing any additiona=
l information. But even if you had enough information it should be added he=
re, below these '---', after the format-patch, so it gets to the email with=
out getting into the patch itself.

>  drivers/gpu/drm/i915/gt/intel_gt.c      | 26 +++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt.h      |  3 +++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h |  1 +
>  drivers/gpu/drm/i915/i915_query.c       | 34 +++++++++++++++++++++++++
>  include/uapi/drm/i915_drm.h             | 15 ++++++++++-
>  5 files changed, 78 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c=20
> b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 449f0b7fc8434..865854c76c375 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -884,6 +884,32 @@ static int intel_gt_tile_setup(struct intel_gt *gt, =
phys_addr_t phys_addr)
>  	return 0;
>  }
> =20
> +int intel_count_l3_banks(struct drm_i915_private *i915,
> +			 struct intel_engine_cs *engine)
> +{
> +	struct intel_gt *gt =3D engine->gt;
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	intel_wakeref_t wakeref;
> +	u32 count, store;
> +
> +	/* L3 Banks not supported prior to version 12 */
> +	if (GRAPHICS_VER(i915) < 12)
> +		return -ENODEV;

-ENODEV is the best choice?

> +
> +	if (IS_PONTEVECCHIO(i915)) {
> +		with_intel_runtime_pm(uncore->rpm, wakeref)
> +			store =3D intel_uncore_read(uncore, GEN10_MIRROR_FUSE3);
> +		count =3D hweight32(REG_FIELD_GET(GEN12_MEML3_EN_MASK, store)) * 4 *
> +			hweight32(REG_FIELD_GET(XEHPC_GT_L3_MODE_MASK, store));
> +	} else if (GRAPHICS_VER_FULL(i915) > IP_VER(12, 50)) {
> +		count =3D hweight32(gt->info.mslice_mask) * 8;
> +	} else {
> +		count =3D hweight32(gt->info.l3bank_mask);
> +	}
> +
> +	return count;
> +}
> +
>  int intel_gt_probe_all(struct drm_i915_private *i915)  {
>  	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev); diff --git=20
> a/drivers/gpu/drm/i915/gt/intel_gt.h=20
> b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 239848bcb2a42..4a05443418efd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -161,6 +161,9 @@ static inline bool intel_gt_is_wedged(const struct in=
tel_gt *gt)
>  	return unlikely(test_bit(I915_WEDGED, &gt->reset.flags));  }
> =20
> +int intel_count_l3_banks(struct drm_i915_private *i915,
> +			 struct intel_engine_cs *engine);
> +
>  int intel_gt_probe_all(struct drm_i915_private *i915);  int=20
> intel_gt_tiles_init(struct drm_i915_private *i915);  void=20
> intel_gt_release_all(struct drm_i915_private *i915); diff --git=20
> a/drivers/gpu/drm/i915/gt/intel_gt_regs.h=20
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index a00ff51c681d5..f148bf3dfd4b3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -569,6 +569,7 @@
>  #define	GEN10_MIRROR_FUSE3			_MMIO(0x9118)
>  #define   GEN10_L3BANK_PAIR_COUNT		4

This seems to contradict what your comment above told about gen12+

>  #define   GEN10_L3BANK_MASK			0x0F
> +#define   XEHPC_GT_L3_MODE_MASK			REG_GENMASK(7, 4)
>  /* on Xe_HP the same fuses indicates mslices instead of L3 banks */
>  #define   GEN12_MAX_MSLICES			4
>  #define   GEN12_MEML3_EN_MASK			0x0F
> diff --git a/drivers/gpu/drm/i915/i915_query.c=20
> b/drivers/gpu/drm/i915/i915_query.c
> index 00871ef997920..bd3e68cf1bd10 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -10,6 +10,7 @@
>  #include "i915_perf.h"
>  #include "i915_query.h"
>  #include "gt/intel_engine_user.h"
> +#include "gt/intel_gt.h"
>  #include <uapi/drm/i915_drm.h>
> =20
>  static int copy_query_item(void *query_hdr, size_t query_sz, @@=20
> -551,6 +552,38 @@ static int query_hwconfig_blob(struct drm_i915_private =
*i915,
>  	return hwconfig->size;
>  }
> =20
> +static int
> +query_l3bank_count(struct drm_i915_private *i915,
> +		   struct drm_i915_query_item *query_item) {
> +	struct drm_i915_query_memory_regions __user *query_ptr =3D
> +		u64_to_user_ptr(query_item->data_ptr);
> +	struct i915_engine_class_instance classinstance;
> +	struct intel_engine_cs *engine;
> +	int count;
> +
> +	if (query_item->length =3D=3D 0)
> +		return sizeof(count);
> +
> +	classinstance =3D *((struct i915_engine_class_instance=20
> +*)&query_item->flags);
> +
> +	engine =3D intel_engine_lookup_user(i915, (u8)classinstance.engine_clas=
s,
> +					  (u8)classinstance.engine_instance);
> +
> +	if (!engine)
> +		return -EINVAL;
> +
> +	count =3D intel_count_l3_banks(i915, engine);
> +
> +	if (count < 0)
> +		return count;
> +
> +	if (copy_to_user(query_ptr, &count, sizeof(count)))
> +		return -EFAULT;
> +
> +	return sizeof(count);
> +}
> +
>  static int (* const i915_query_funcs[])(struct drm_i915_private *dev_pri=
v,
>  					struct drm_i915_query_item *query_item) =3D {
>  	query_topology_info,
> @@ -559,6 +592,7 @@ static int (* const i915_query_funcs[])(struct drm_i9=
15_private *dev_priv,
>  	query_memregion_info,
>  	query_hwconfig_blob,
>  	query_geometry_subslices,
> +	query_l3bank_count,
>  };
> =20
>  int i915_query_ioctl(struct drm_device *dev, void *data, struct=20
> drm_file *file) diff --git a/include/uapi/drm/i915_drm.h=20
> b/include/uapi/drm/i915_drm.h index 7000e5910a1d7..746d427af8e4c=20
> 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -3013,6 +3013,7 @@ struct drm_i915_query_item {
>  	 *  - %DRM_I915_QUERY_MEMORY_REGIONS (see struct drm_i915_query_memory_=
regions)
>  	 *  - %DRM_I915_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob uAPI`)
>  	 *  - %DRM_I915_QUERY_GEOMETRY_SUBSLICES (see struct=20
> drm_i915_query_topology_info)
> +	 *  - %DRM_I915_QUERY_L3BANK_COUNT (see `L3 Bank Count Query uAPI`)
>  	 */
>  	__u64 query_id;
>  #define DRM_I915_QUERY_TOPOLOGY_INFO		1
> @@ -3021,6 +3022,7 @@ struct drm_i915_query_item {
>  #define DRM_I915_QUERY_MEMORY_REGIONS		4
>  #define DRM_I915_QUERY_HWCONFIG_BLOB		5
>  #define DRM_I915_QUERY_GEOMETRY_SUBSLICES	6
> +#define DRM_I915_QUERY_L3BANK_COUNT		7
>  /* Must be kept compact -- no holes and well documented */
> =20
>  	/**
> @@ -3443,7 +3445,7 @@ struct drm_i915_memory_region_info {
>  	__u64 probed_size;
> =20
>  	/**
> -	 * @unallocated_size: Estimate of memory remaining
> +.	 * @unallocated_size: Estimate of memory remaining

   ^ garbage

>  	 *
>  	 * Requires CAP_PERFMON or CAP_SYS_ADMIN to get reliable accounting.
>  	 * Without this (or if this is an older kernel) the value here will=20
> @@ -3690,6 +3692,17 @@ struct drm_i915_gem_create_ext {
>  	__u64 extensions;
>  };
> =20
> +/**
> + * DOC: L3 Bank Count Query uAPI
> + *
> + * The L3 bank count query called through the query id
> + * DRM_I915_QUERY_L3BANK_COUNT and returns the count of
> + * the available L3 Banks on a given engine.
> + *
> + * The count itself is an integer, and since no additional
> + * data is returned, the count is returned as such.
> + */
> +
>  /**
>   * struct drm_i915_gem_create_ext_memory_regions - The
>   * I915_GEM_CREATE_EXT_MEMORY_REGIONS extension.
> --
> 2.25.1
>=20

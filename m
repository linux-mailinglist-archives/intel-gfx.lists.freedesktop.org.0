Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A29CA86AAF6
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 10:11:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27BAC10E2B7;
	Wed, 28 Feb 2024 09:11:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W/p5pR6s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF6210E2B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 09:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709111461; x=1740647461;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mF1gUxW7s57RlUF/kOo5WI4PJRcAJ/TP1PFuOT/N7K8=;
 b=W/p5pR6sIsV0Unzd1b2q+pNfwKVVfEGVkJKZ8p23xSlerioPo9m5HW52
 IaJBFEqdVuhY8nZ2ldF8DzTUxu2J0xrsS4QzC0yQ3OR9lzI1wbWEwbmF1
 SW9YDEJj/5ZaqIwZFxQeYUSIZJ+Mdd/vdVBqmHDf1c7cgRvMXUY2VtP9x
 6jtJ+SlbZ5k43HjxkRFux0ySPVdxIFxotl1qVmRLmrx+1HgHOu05S1JqF
 RE43pEdXtbdNBomaM0ySeYGdeB7wIM+6bgqVlJLxIVMke1uvBMoQ/ja6l
 rZspeeiBdDwsIStncATAu8WdNntcnzTKWGrzgDehKlOPPknqWp7NkM+KO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="7321414"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7321414"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 01:10:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="11927516"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2024 01:10:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 28 Feb 2024 01:10:52 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 28 Feb 2024 01:10:52 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 28 Feb 2024 01:10:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nFSlcKkPJN2+XYUQW/jgjXTFbGt9d2CRF7CusBV3ZyeVzubxaGivqofN3Bl10RF0JGrGU/RmMUkE4ItSxg3Yj9mlMrkS8nplUepYsK9zvE/nquwsoLEpIU8Qn03mAoR025KtP5Ypq/5yY+yV7mds06VGRVFDJ7fq744eyeZQuYYwo1zjmCmXolZehlQHxr4qqHh9fg2Xxsg7txPt0BFd3OEhxFqqgC+uztx33sIsFftBdJVJD6F2N+PBo4W0BJZ3dXzvnTi+hapNAf2h1T43c1iLymoOLiCNUSL0koP61O0KP+m0FN64lpuz2TaLMThY/r67JSndAkVjEwvZ+qszeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IDrDPQAL1zaZzHOUk7VqengOGHxTfnhVWOAjCeJncms=;
 b=My1dkqs3GB+BqhN5kTE1vpQes4JnDNmoPEVnO1Ey/YZD27+wHcac1HaFzERZAjR7tDHHSEMZ1BS+CZWISLlsaiuaUkd/gd/82IlopWLfzorWmT3PO5tAv1TwNOH2xJfvNsmmsBi7vLnuiqDR0HyTdO3iKuMcwTtdAQdJ0vhCRKWUeo1d3hhIwc7uk28fArp3tP5BU5G5naWpNSzVEyQ2mSYZuPTKWq4gfApc5G9hFc8hpQSk9WuIQAyxyAgDvDCjT5HBC96wexTvtjEDmCpIrq9SO1exUKiNc5QOGqn01leFzEQBMCLPHPN8s/Yi9d8E11SEkXD+wq0SqtX7l4RSug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SA1PR11MB8543.namprd11.prod.outlook.com (2603:10b6:806:3ac::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Wed, 28 Feb
 2024 09:10:49 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833%4]) with mapi id 15.20.7339.024; Wed, 28 Feb 2024
 09:10:49 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
Subject: RE: [PATCH 1/2] Revert "drm/i915/mst: Reject modes that require the
 bigjoiner"
Thread-Topic: [PATCH 1/2] Revert "drm/i915/mst: Reject modes that require the
 bigjoiner"
Thread-Index: AQHaaawO0XwnLKgGbE+3YrGp1HrIobEfeCqAgAAAUPA=
Date: Wed, 28 Feb 2024 09:10:48 +0000
Message-ID: <PH7PR11MB8252EBECD173BE8AD14D3DDD89582@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20240227181849.22614-1-vidya.srinivas@intel.com>
 <20240227181849.22614-2-vidya.srinivas@intel.com> <87bk81dkgo.fsf@intel.com>
In-Reply-To: <87bk81dkgo.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SA1PR11MB8543:EE_
x-ms-office365-filtering-correlation-id: ae4a685c-842e-4828-4fc2-08dc383d27bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YU9WTuaSNoimj5u8Awibu0HmMfkgRjMkTWZ+PX8Jf3YSUS4u1sZxLDJSefzvsH3tLupMcZ33TpPMTIDmEhp+t1YTDdWGpX2GhKYDJHGRqAKfnX+HS+mvwHDI6BkIxjlNERaN3c7yiZVzw29zoHg57nCzmNWIMUefqCgt3EvpBzPpOOvFcVUaJtA6ycCApbLDY1qhzhwt0E7RG7xVia4BWGZOSEUuoPZ+bEnsa6nE60ZRDgfhEFl4/fRjMgLSbeY/1nbUCtOG1lO9LZWOql47W5sUtDKnYeluc1roSPSY/EP5LniQ5DelIQ4piP07slqN3YGkXFfWZy5zKkqUaGUAgz2GFDRhcpKxkhO2T9HcctV72bojN+DQt8FAv3gv51vSIi0XLnZeR/434M448lFCA6GAWtcFdepjN9mHSPbYSfOA0pmr18ZS0VbVzK2kuvYQcyawK4mfrzIFUwrUN++ipgEgJuxUfCT+LAfJdQivhFlgPVrqB6yopY1wo2brwDDnwXOtiJg+rhYxa9bzBXAifI+the/smXRvPnycI1p+cPCPk3AHwjCveg6CDDf4qNPKDMSXzUDJKF5fpJ3mApErPLKTHxCgfoyXcj0wdhD+VLAsBy78BdvHFIopg7EgZ55LXhE7PlmFtkJ8Y803BP43M41wJtKkAZaHdTz5K4P5UFf/ZeJTSmd3MsWgC8pml6fBqsf1BeCfnVmVeLkiOaSQ+g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8BXNHh6Z6cXpQrY2eOYvqmS/JkInPF8u+D4hnxrrxpQAby8luI1FXDTWGPTm?=
 =?us-ascii?Q?YdW+vYRuF4uq0mrzXg5uzd9ZCZ2rJBOyPOyKATY/cpZqPvqzvvfXl25oZaBf?=
 =?us-ascii?Q?HTowY8YmLhdgYxvV4DKZXj9ItXUzbd+fdSj/nV/FG/U7n/d+3sPpDszpDxd8?=
 =?us-ascii?Q?JVYnFq+TO1decvLerMDivTPIdz833FdvsKKanLHzUMWaaFG2ENUDe6XsBoaI?=
 =?us-ascii?Q?bJzkWSyNY7hgtg01c21kDT7Yqah17uYvmjD/vC9c69UYVUVOAufzflx/X+WV?=
 =?us-ascii?Q?pE2W0tM1zxmJktZWr2hhOgIx68IMO6cp+AoyD0hfjP/komBwN3TFC+K6OCbj?=
 =?us-ascii?Q?t6Scomao2fjq+pJcjLRfVc3K8GrZyg2EUoqCPfs2kPQ1p6qDv5X9CHklc6wC?=
 =?us-ascii?Q?6xAYCPhYxxoWfzB3T8aJ7R/7l4p+VVyQLHi4YOkYtpdFK8bs9uivUP1jJIke?=
 =?us-ascii?Q?leEDg1S27dGjRfLYfH77YJQuoSEx0WVOt06TYfrGs+mj9wHmHKd2BfDbyX4S?=
 =?us-ascii?Q?eV+PfaDIrsnzyVXppMKs8ngD/gNa1TVw62JvSolrlLfOxNO9AaW23CUL3jNJ?=
 =?us-ascii?Q?cgYxJpGB86vjD2lBrlsmEhDVZLMbqZc4xz/2RIapLjcjULYNywBDkAYRiVvF?=
 =?us-ascii?Q?fnu8HTdjoTLzRB+q2CQJop0kp/1eKbPUvou5+l9zLwORemgYjfJhnUUcaOzd?=
 =?us-ascii?Q?UMinemvogB6rFNORX9+P08d+1qoc8zLKAV70I4ztrVAd24z/eCGWk1SRRnri?=
 =?us-ascii?Q?Di0BTdFcWgXQHHE+L0VHTpN5tg35sJqeijzdQsagxx196esCcIkXvsA6fY+e?=
 =?us-ascii?Q?Sq5YffsWaSQ/tZ2FIFPSBWLGgGbtMU3mKp5mLlHDSU2iOPQXPjsCxSregdNC?=
 =?us-ascii?Q?9bmx3xvDKv7M4nS9WXo0hNo1JrXpoeOkYM+Vvjyv7wiKKoAVrqJcMskmPsh6?=
 =?us-ascii?Q?9xJW0C0XVyQhlDUDCV4o+muc3u163gaOlIiHMmwnjaoKHl1GNgauOKgRkcIH?=
 =?us-ascii?Q?qwXWQTqLNzBfkm8rOJ0i7ZYeA0J47pjSiwSPNUY5S7HIS9mByTkOIfSdWwMT?=
 =?us-ascii?Q?9BRwV6O1EP5DJsCkNFDTTAIqse5/qZaNm/jzvCw/J1CH13Iou9Ic/lRQ9Zwy?=
 =?us-ascii?Q?TTQWcGfDtcz2/6QQkt49jFBCUsbBybIDlDIZsdfpr9AFyStMqugJagCVk/8u?=
 =?us-ascii?Q?DMCxhjImtZciXdESvSLM4+3sfuAcMFh1wFtYCXu7JYWRTF7ynjMOwAYmzqXl?=
 =?us-ascii?Q?E38p1PuEKUljZHZ9SR7XaOWtkXFPul/P9Vx8e2BNjoP86WKd8J63/LB0RSr4?=
 =?us-ascii?Q?JYmcnjFM1XDBjdow9hFdg4AOLkfGGLbNdVBsHzXh+aaxlbrDTAKqcQTSdBKd?=
 =?us-ascii?Q?VYL+5Donq9C9VkKZIGzdVOweZtkGRAABOOb2EvN7E4ddAqoCV1eYmj8kmTix?=
 =?us-ascii?Q?4mxwa3QwOdshtb2Ly0o50ZpYwRhpaGR/g6xqPFBfc4dkvdVrWPxu9W8NKcuM?=
 =?us-ascii?Q?koWAwuqdNHjQZ4cfRYSwWdkcRDnMU2sC3WYOfQQ9AhFoszp3shjfrPQUk8Te?=
 =?us-ascii?Q?6lICk9HAa8xCjgxSB63iu64WdD4l2aiUN3SLVOLI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae4a685c-842e-4828-4fc2-08dc383d27bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2024 09:10:49.0065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ooaHVX4lPOQLUZ3trHiogWZY5byLkFrqv4p9zV0fYSCIyLt4mUBRfX9wfrtGuxlymu9BeClUGG/qD1YaGJQokRZkjx857P01cZj9rnKDwO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8543
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



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, February 28, 2024 2:39 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedeskt=
op.org
> Cc: Almahallawy, Khaled <khaled.almahallawy@intel.com>; Srinivas, Vidya
> <vidya.srinivas@intel.com>
> Subject: Re: [PATCH 1/2] Revert "drm/i915/mst: Reject modes that require =
the
> bigjoiner"
>=20
> On Tue, 27 Feb 2024, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> > This reverts commit 9c058492b16f90bb772cb0dad567e8acc68e155d.
> >
> > Reverting for adding MST bigjoiner functionality.
>=20
> Please squash this together with the fix. Someone might think a revert is=
 a fix
> that needs to be backported. Besides, for bisection this creates a non-wo=
rking
> commit.

Hello Jani

Thank you very much. Sure, I will squash it together with the fix and submi=
t.

Regards
Vidya

>=20
> BR,
> Jani.
>=20
>=20
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index db1254b036f1..b062f4ee6c8b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -1349,10 +1349,6 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
> >  	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) =
{
> >  		bigjoiner =3D true;
> >  		max_dotclk *=3D 2;
> > -
> > -		/* TODO: add support for bigjoiner */
> > -		*status =3D MODE_CLOCK_HIGH;
> > -		return 0;
> >  	}
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 10 &&
>=20
> --
> Jani Nikula, Intel

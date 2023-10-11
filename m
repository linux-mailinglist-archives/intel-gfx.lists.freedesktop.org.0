Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 328567C5E6F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 22:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4855110E1D4;
	Wed, 11 Oct 2023 20:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE5D10E1D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 20:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697056352; x=1728592352;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZAYbj7W9wDbaQioU2ZuXzuRj73KSKQVr30WqmhwXhN4=;
 b=clPLqMpPO64KVVhknIjvXBPw0ov/PSu7jjazpt7KuVSbN3EYaxeR38XL
 yCmemwo9JWIg1cZbH67I2Pjkd6bvYqxxDenl/cguHRmbwZnGOf2LVcOKs
 6PgEFws/MlAZo7+f3rG6VL4bGMVHXsoCuBshIRwzq4cGRhDzoMLkgwLqT
 x8ih55M1KT/dYGdUt+QQ2UOLvVPeJxhb9zBKPPxO3KCmS/Ny7BKS3IiK2
 q+FIDs38/7Cz3o+c/oWMRgSt3S3B62w34mNoIVBeQ257FRY2qXQTcTY1E
 jbe1ShVheWqnnB7YPAD/sU33WHMuCrAwyZ6Hb85b5BiiZUKzEKNQDflKo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="369828814"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="369828814"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 13:32:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="1001269352"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="1001269352"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 13:32:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 13:32:12 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 13:32:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 13:32:12 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 13:32:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FV2+h3Yq9LGVT7lyUMuDsk9fH0HPA3LUP03vhDj1xWJVsz461pGyJbsLR27LWjKl92W8yJHKzLn/NHGXUl+35RqhPbCUxBzbzo0v6cM5BOxkDE/B3CJYJjH7E4rptiV+qXe3ub/xCr3PhXHQPSzulO6NOLgb1QF8zG9EUA60CNrQdfMzoZTRLvUuamUMOu1P5FlsG1wuf/seBVL55vxtzg0Tk5VcUlcXwudgREZmPm0yhuYsEHxZfoVtKWbzOJGbFmnKdUSsy1KqY9zZyi2NcjIb12rgwiRqdDqXfAWk2nDliXMzxxhEy6xPbyaQFMVXYj4MstaQhD/y1h9FRO1PlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kryv+VCmy0fLruiMo7dq4Jl9jUY6kOJxX5zQI4KSuyQ=;
 b=ClnTbylxIs/bIEBi/OFU1zWPSNrTAoxyG6lAN1zZhLHUzAjn0mDk8dkL4r/vuWOVdxb5zp1NHdJ6z6vLBXCnDn/KEa1kaj0UUSD4S04wjcY42LP28Yy+N3Qyv+v6IKa+I9BwCQGcOO5j7NLMilelS0Z80LMSeRgWsi3kv/Tw68zMUMt1J+rJBEevfOUm9jZF+NiGMPvXG5tBnqChD1RQ873v9rBVql2FpovpqzB/UUPaDRvsbcY6Q7NEFCYnd9jToWcqg5lIYlKmzeyIYlRFE35the7218H17VamQeZtNFvf4zevFgn3TOiASvBaX78zp+evxYROGz+FCXUKG2E6fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DM4PR11MB6382.namprd11.prod.outlook.com (2603:10b6:8:be::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.37; Wed, 11 Oct 2023 20:32:08 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::b250:5960:7172:34c9]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::b250:5960:7172:34c9%3]) with mapi id 15.20.6863.043; Wed, 11 Oct 2023
 20:32:08 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/cx0: Only clear/set the Pipe Reset
 bit of the PHY Lanes Owned
Thread-Index: AQHZ9yNJ25rBQerk/keSixg89zwPerA7I8yAgAAKP4CACeNYEA==
Date: Wed, 11 Oct 2023 20:32:08 +0000
Message-ID: <DM4PR11MB59710238B9EA14B48857C54D87CCA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231005001310.154396-1-khaled.almahallawy@intel.com>
 <169650959377.1601.4111271359854746928@gjsousa-mobl2>
 <878r8hciq6.fsf@intel.com>
In-Reply-To: <878r8hciq6.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DM4PR11MB6382:EE_
x-ms-office365-filtering-correlation-id: a9622261-bdf7-4287-707b-08dbca9923b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wF+1rktax90LdFbIp1x4okpZnJrb+LOg6Z7yHm9D2yeDyEAlocfqs4IOQ/1woWG2tV0/+6sdl3AClN5sPn27CF1I6MPDkly8kIbmZ0rbl/T+F92oaGKzANL4dYWO9aPOEw3wbOt9HJExw3qkVwwOnPtVCRBrJ7WqU9dzonBaVBGEEerxzDxrZWAHJ2FdGyU4MMWhVyB5Eth3Hb6LbOh1LhA45EvxBs3u3937w7nnRs7KPxbI0PZ/tZzwZraujeRrlzGLbaNlTjxRFIIyOAGAbEzyUJKe0hp0WLhiP/ewD6TPpXSWssqVlKC8Qing4OnpNzYp0TawII+5BjcZlVF3vUkpE2coSutQ797HuVFJ2GkykUMBCnYPjV15REkLQC+dDFtTKbp6nQGYsIWcNP1pT5xmhaMVxOePHQhxIQgVF+aAvBGw/+zinIE064rVUje1t3bDqovrHL3Yhy/dP+WSAyLe2owZyNaXb805OR+m2vLlNZe3HiaybFHCKlEDqsQTSScWjbJevR46Q5TLGhC1IheGxxbLZv0p2fakKlXs/Lx4XKGHqh7npfS2lbaI/RX7dnMXGfGb95ANhjGa0qh/XRD8AHdDa8F1uOYghU+01Y2hp0Y1muhrgPEW6goD4Ot8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(346002)(366004)(39860400002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(7696005)(6506007)(9686003)(53546011)(55016003)(33656002)(86362001)(82960400001)(38100700002)(122000001)(38070700005)(316002)(2906002)(71200400001)(41300700001)(478600001)(66946007)(26005)(83380400001)(8936002)(64756008)(66556008)(5660300002)(110136005)(8676002)(66476007)(66446008)(76116006)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0N9U5WDQOt4xizu2X+WZ9Nr/H/BtD/Q/RujItyjKdeWo52q+77YLx8xduHFP?=
 =?us-ascii?Q?hEK6yEHn5+tgb/O8NothIQnlW/8GA1nZxd3/gA9tewqxZsbiIm78I938no6L?=
 =?us-ascii?Q?ceai8J2Ny6k0bsHMHhM8hicAfjdOb6ib+5hpOA5XHFJ2t6ox0uP31Y1QZCBK?=
 =?us-ascii?Q?42sfaoOKqiDGg3J9o1wlJWb2DNWYhflrRcUmfYWm+VhfauldV/dbX41AVJC2?=
 =?us-ascii?Q?op4sVYhXmQ5iI6lxvVF5fZ7qa0W3E8jLzzBJKDvNI4d2opWtgKg5gNTcIhTe?=
 =?us-ascii?Q?4l+tGugQEnuihtT+CCebV4HsHL7D5zoTuADgsQlM0GAvZnD+5Mr0Uum8phmX?=
 =?us-ascii?Q?0CRmyMEeyTGCurNBgTon42QRkT0ocKnTdkSqArEMabWanvMBm8mukz4Qr4pu?=
 =?us-ascii?Q?9gvH/3LgpyJy04xRyL0ar7i3ef5VNESud5LgpxWRefeDfWdnvhEri4x3zFnq?=
 =?us-ascii?Q?UFMHNLXr0+FmLU31ASsyiCmOY8yj4h1n042+FJy1f6F8EP+O25vw3dYApgT7?=
 =?us-ascii?Q?pe8skf50UnpO65Ens6/9R1+vs6CaVfktQ/DCo8rXg1gf7FwSfhEuwOCHKjJ0?=
 =?us-ascii?Q?MiGOeG+ZslvFjzSAQnzbENZfX/3H6ktNhDvESpEPuopc5iElayibc/KHDie2?=
 =?us-ascii?Q?SBygwLCoXPbc5OxPv5PvRR1RiKsUZ341A5s/Hv/+ezIroagD+x1J3bwIVWRa?=
 =?us-ascii?Q?aRV9AUUHXQu5yQJP4oKUkp1SucpitcL2K3m8WFnIpV0/v3fxH04Ud/FvLJc+?=
 =?us-ascii?Q?GbJYP+7R5jiNg5OmsEi5OQfjk8yGI//kID4OZXFPhAWH2LO7i/ZibedpNIh4?=
 =?us-ascii?Q?4CC86nKPdv6XM1kZEX+lAf3tq9ayTm0GMA0JvfbO91bf6XrSwUW+2L1ETyDX?=
 =?us-ascii?Q?AMT256sw+G8RSWtu+uVjmxzNpLR+4vttHK8HO7WUM5+Zl2f7pujkvWRfRsjS?=
 =?us-ascii?Q?kel/Itqtz9cpqnn9AgJh4NzfSTYOOe2PenZ/1fqUEm3QJlz7I9dQu6csXbLa?=
 =?us-ascii?Q?gDE9jybPk1RfODirA+diFpoOJt2SgBVZ3rjsz57rhOpshNbjmaC/PX01F6DZ?=
 =?us-ascii?Q?E8bvkwPpuEKb3Vg7KSdYLpJq2zIcRBB6HeFnxBnRQV+4k4WpUlB39n454BM/?=
 =?us-ascii?Q?2xLRpCqeX9MHO9dFR16sH4o9F5LSmlTGH6sTDrximeomKZhfb+DEVWNFsXJz?=
 =?us-ascii?Q?yZD6tPstmHHHO6TYxWlW0oFCC3Xf0khJPCC+GLJGJWTYDf/nfkyFyVJBsKrU?=
 =?us-ascii?Q?ixsLlnnnL2IkR3R31oJve+3JR82CxmYOq/mM+cgg5vVpPVbCSg3hwnChb1xj?=
 =?us-ascii?Q?uRa40wloyMaK3JcbiooWXQhP/nmIDbsujYGDj2AFYsVvrWtpew7zMFw/sis7?=
 =?us-ascii?Q?i9iDLE8NhgJFwfMCgoyNeH+jbSiwYFN0LJGRdonUGPq4jK4+qVknrxtKPXS7?=
 =?us-ascii?Q?lijXqYiVPdJO3BwnggzKSqIOwX4zJgPwn/u8hi5Aw5vR05l0UUyaLWbTxgCw?=
 =?us-ascii?Q?i21SEc0osW9qn2QfQcg7nB123Vwfkvt52wQW4DSFlwxaPDEVMOa5Vd/uyRse?=
 =?us-ascii?Q?DqunrrWepWE9SVx2G6GzcjVBuz2PHY3D2FiJqdSF+2Y5V+SxMqg8yIrM1ZCb?=
 =?us-ascii?Q?0g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9622261-bdf7-4287-707b-08dbca9923b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 20:32:08.1211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J29SG6EneYO46HwKxrr54qNx/vqBlBshE5A/fSBUMB444uyyfjoFc20nHC+uM5PTu00DmK8zF53UP5EmibQMt6pWQghvkGeKzUtsPy19HqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6382
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Only clear/set the Pipe Reset
 bit of the PHY Lanes Owned
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

Fixes: 619a06dba6fa ("drm/i915/mtl: Reset only one lane in case of MFD")

With that pushed the patch with mentioned nits. Thank you for the patch and=
 review.

-- Radhakrishna Sripada

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, October 5, 2023 6:47 PM
> To: Sousa, Gustavo <gustavo.sousa@intel.com>; Almahallawy, Khaled
> <khaled.almahallawy@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Only clear/set the Pipe Re=
set bit of
> the PHY Lanes Owned
>=20
> On Thu, 05 Oct 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > Quoting Khaled Almahallawy (2023-10-04 21:13:10-03:00)
> >>Currently, with MFD/pin assignment D, the driver clears the pipe reset =
bit
> >>of lane 1 which is not owned by display. This causes the display
> >>to block S0iX.
> >>
> >>By not clearing this bit for lane 1 and keeping whatever default, S0ix
> >>started to work. This is already what the driver does at the end
> >>of the phy lane reset sequence (Step#8)
> >>
> >>Bspec: 65451
> >>
> >
> > We should not have blank lines in the trailers section. This could be f=
ixed
> > while applying.
>=20
> Agreed.
>=20
> >
> >>Cc: Mika Kahola <mika.kahola@intel.com>
> >>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> >>Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> >
> > Nice fix. Thanks!
> >
> > Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >
> >>---
> >> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 +--
> >> 1 file changed, 1 insertion(+), 2 deletions(-)
> >>
> >>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >>index abd607b564f1..f653b83a7d4f 100644
> >>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >>@@ -2596,8 +2596,7 @@ static void intel_cx0_phy_lane_reset(struct
> drm_i915_private *i915,
> >>                 drm_warn(&i915->drm, "PHY %c failed to bring out of SO=
C reset after
> %dus.\n",
> >>                          phy_name(phy),
> XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
> >>
> >>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> >>-                     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESE=
T(1),
> >>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset=
,
> >>                      lane_pipe_reset);
> >>
> >>         if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(po=
rt),
> >>--
> >>2.25.1
> >>
>=20
> --
> Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B01F798495
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 11:10:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 097C810E88E;
	Fri,  8 Sep 2023 09:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28CFA10E060
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 09:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694164243; x=1725700243;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=adH52yIRPcDy9AFC4mvlYdivRYN/pVnEqObATfZOvfk=;
 b=FBz45SPqiaRyF7WDioeB3FxdjyPcdB9IcouxWNdf9cCQkd/JJdFQbQEu
 Le7GxnOXQlfnBgI3E5wSbdEKT61sWBOgqJK23atRynccZNFPbEQDxs7Hz
 pDUNIEVt4wG4Yss0ORkkOVQ1pLl8tjLOTsp74C41G5z7Xk2aTkVVFwsHU
 SPNNy0M0c4esF34fk1l5srLASc/ZPry1yTv5LB+3/BLfPDL2g05oBrTIh
 +MuNSQhEL7YyYBmHEmZPTNatRHeGJYOah3glcGykN6jlXfewUE/m+Xuaq
 J2bohFHL5OxmzBt89judabK0pE7fOcZ1KuejQ+zqMR0Oqlh3XTiiJklou A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="367866984"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="367866984"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 02:10:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812511412"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812511412"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 02:10:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 02:10:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 02:10:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 02:10:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 02:10:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W8erwPfmonZ7kxpsl7+lRWp1Xlig+kj2sc02fwsivO0fq1M27OwoJETk++olUtrOFBfxNxhuXYkKBF+HSLmPEqfBy20SdzUTzbHGI5vG5mzMMgrQ07w0Yn7NCiEmIkizzanZ8tzFoPSNtnwyP4ioKe0AcBiVG7TSWe/f6+/6N7qVOycw4ICmlBTDcxE3KYRR0IbCbVRLPw22hevExZsqL4lltd/2/7YHUNbcbRAvS/jkAHTifF4uXMIBU10w5S2IGQVw6LRG5A1rcgfMzmbh9wQXfbqNYs9IxqsAHl+jzKEq1rBD+ARBwECz8R4IQVRJuuZqsjob4JdAqDuecgaIJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/CG224O+bQ90DWszIdhSwqLe0xeKi31HLW851OVogsg=;
 b=ViNkQgw7eS30PKLHIqdo+2G6RJl3vXPcszxNrCtfK//tY9+X7hNxQnFwDYEp2eVaenrOXJ6WuYWqrOXEcSh11WedLIjvXj52acFfLHjpeOp0gEb+nOxBcPoHwzOM60DF3wDFLaDzfIU11L6EthkyN911kjI1EBmMWKEswJNyccf3lQtF3Tz2P9I/OXT5BTbOa1J3V/rLRmppBuJV7ZjjExYZUOZkEvLPIKVHNhimYL/VZRTBxYK7h9RzVj2q3fEOUZJLEl9yym5fHBghyIPBWPW6TO/GOCUadceqfOjZ1MQQnP4iyDT6nXqmpfY7ICrLlYAqKqwek/k0I61BQgbqXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by MN2PR11MB4533.namprd11.prod.outlook.com (2603:10b6:208:264::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 09:10:39 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::60d8:9d3a:9848:b9ef]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::60d8:9d3a:9848:b9ef%4]) with mapi id 15.20.6745.034; Fri, 8 Sep 2023
 09:10:39 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Added Wa_18022495364
Thread-Index: AQHZ4VifCOUjyE7kkUqNpngAvTUoibAP8lQAgACzFNA=
Date: Fri, 8 Sep 2023 09:10:38 +0000
Message-ID: <IA1PR11MB6266A8756D8E3AFE6A8FD373E2EDA@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20230907065734.3871575-1-dnyaneshwar.bhadane@intel.com>
 <tg3egnpgipczry3gobovsx7nokhmdtj467gojjnoe3ej7zfygh@2wznhsyxvras>
In-Reply-To: <tg3egnpgipczry3gobovsx7nokhmdtj467gojjnoe3ej7zfygh@2wznhsyxvras>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|MN2PR11MB4533:EE_
x-ms-office365-filtering-correlation-id: f43ca18d-85d3-4b65-9c97-08dbb04b7800
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WAPK+NJYXITdFN8mVM64JTF4Rxd8SwavSklnpKoZcQKIRLfirS5hW4gHnre2KVHbe3kxOvpUnQHGkePwtgjfAoEnreB1HSFCtS3sUibKqtEeukndo7iP8KShL0R1R4eLBW1O195/CtEVaAVpSdTgvPTG+T5PYgBBTJ42LkjoAAiuDpSBIq6Pg4Bem/Ux+F3as8CntD3eq+qtKWi9rw9maRNe3iK4wTBiX8e5rXoNy/h91SZRcLSEULGWw0mT8qKHRBa3i79T9xPmcuL93AyV5Z0kmPOc5BZqPU+aXVqy4ayG1Ci1yvcpcthfq02RLY7wVOY3r6MR9BMNkZxSnl1BPe29/q3UYg2WlAzraJGaj5m9twq4BmMbDVhtCowlltK5mquZ3TEqUJmn1mAp7KWf9UtWxJwLQSLkvv66psgddi4fOmgkxVyX9LnoPQ3TXQu2ZgiJIKZ8+gYToZXQ2MThBAAQjA4+QIPrldiTv68nx0NnNgiWGLbHQQsNnwvJRpAy6oDi2vzN03/c86s+r0Kf+h5y0yYGNf/TRlJCCGWa3dZoLBk/XSQk4Bc1R+k1xfvf8pe8NEUhX9dkwCfy4gbrKZnaXsmjlCnqBO3XvoApLRHOvJhZq1egpDnP9ghd3Gzx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(39860400002)(366004)(346002)(1800799009)(451199024)(186009)(122000001)(71200400001)(7696005)(53546011)(6506007)(82960400001)(86362001)(33656002)(38100700002)(38070700005)(55016003)(107886003)(26005)(9686003)(41300700001)(83380400001)(478600001)(52536014)(76116006)(4326008)(5660300002)(8936002)(8676002)(6862004)(2906002)(66946007)(316002)(54906003)(66556008)(66446008)(6636002)(64756008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SthZyr4LbNxVkRH2umK1o1ibwOfSihUUUF5N9M+o2T2y+wEmM29eOppbcWus?=
 =?us-ascii?Q?OB6cGbgwpYlpIqz9JUqd0S4C+Me0M06CmQxNGnTbJtNb5dzfucLTobxhBaOi?=
 =?us-ascii?Q?XB98uPSDi3KWHvTibSea9hIt+T4UD9BvlNGVPlAjpA6MvXgn+XdYoQkYeu5a?=
 =?us-ascii?Q?u9T2if6hP/mEvHB95yBMtz1KSlSlR57ykJ/C2GD0oOdofgvaXxjYF4UoqES4?=
 =?us-ascii?Q?mf6hXzc90NjMfzp6ylBWI0GC4EC4cezXxA7A/cMUmZN58sQMbuP2KNbZ1j0E?=
 =?us-ascii?Q?s1DQc3D6XxhhP/F66Jt4L3+1KZsTAO3JJ2Ye+FUxVqTyqGR6a1XnvaC4hRJG?=
 =?us-ascii?Q?L188ezDx2/kXsaXKrH6JLiSpRiKTQQ0x2DM6PovEUK7qiBrLIJar/kUUyNuw?=
 =?us-ascii?Q?SWTpUEVEMXMerizrU1pbkzakdZ4ngqdAjKWiKb9/IAQdC8zay9EMYtBjChpG?=
 =?us-ascii?Q?1Urdjjy1+DBTBiBuZMvkFzBhnV4+jMScdC7UrIyuqKt1eSulTdYPbeofpPwt?=
 =?us-ascii?Q?CCFrX1aq93D83GlSFud452BEPFTWVvkjSV/pQbUt+bszUZG9u9dOxJthpu1C?=
 =?us-ascii?Q?9uP6ispUjnzvMSHjzD7sgVq/LOrAxY76muXEfhx3O4GTuiYg2r3cghtQ6rrC?=
 =?us-ascii?Q?yvTj+gC7/4P0U0elyDr+aMhelpJN4zWL1S1oDnu/ovC3+m+dFwJ3LhlvlV+n?=
 =?us-ascii?Q?DvcvsYZjbJVLKdvSb0ol5+JbpqEd3myqT9JOcejPZkz19GAuSFfKieQdLm1Z?=
 =?us-ascii?Q?3Dwd4d1dGn1dJKwi8e0o/z3mqDvmqT2st7VIRZTwJORp22eSQ9JflVeyfUpn?=
 =?us-ascii?Q?U0m/9N9L34niHL9ZgZuswoDGBvhKxVko4Yy46hLSd8sRnzdcQHVmihIZlP63?=
 =?us-ascii?Q?6PtUW09GTDCwtRl3YZwwHAuFANyknCbD/j0lPCkBQNckLdplb1ZQTQPjE/5x?=
 =?us-ascii?Q?UDq96Zdt1jc0kL+1EE7BUC23OA5Nuw7VhW+7DnNoEJoVmO1OzRUGtn60gJU9?=
 =?us-ascii?Q?Uu/ScvDUWf3qJZXn8acvWrrkAjxruLhh5CRWJBHU24J5r4oibIbN+SJKHA5h?=
 =?us-ascii?Q?yPkzCa5j8d4WrAXVCjIYNDW1NJnYWD79EC1ITRxUKoQONjPG8AcvtlMz3QgT?=
 =?us-ascii?Q?Fl2mhtEl84CD69HniNtP0Hiyti+n1K26d49qYntnRA40gzCiqXqMYaCePuIy?=
 =?us-ascii?Q?PtpJf1h4q5t/u3DW7Hf39cKq+XraejibkLfzvymtqq28STqOWZCRQJyNSW3n?=
 =?us-ascii?Q?BvxmR5AT3fdMYkoPM8/+qQwM6qNvDHBXmEUyLjqDZZSkTfoV94u7r/9zrjGx?=
 =?us-ascii?Q?xNP5cjrGCXDR2y7J+J2tODD7EWWloz65O36Qo9crpxy//fHsvTL3jZAO3sfh?=
 =?us-ascii?Q?lVkYFqTmpczl3qIuqeFg7rM3oil6vJ+vWr0/OnnO+u/y9ornseF29fxSbkzj?=
 =?us-ascii?Q?YSWZdv+LBcGvR5Pa33KuIgH5lsxgyh4hk8shWO76E/wBoDuotbV7/Ga92I4Z?=
 =?us-ascii?Q?aDQsEkYL3xysRsf3UsxWDrYibLGgry0282DtBz035APFgGNTyvYKhbmnzL9N?=
 =?us-ascii?Q?w4wNGNeIvESps/N4VSlo6AHtlb/sgh8JvojDpqNmiTu9KSCa2jPiv421tUFh?=
 =?us-ascii?Q?Zw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f43ca18d-85d3-4b65-9c97-08dbb04b7800
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2023 09:10:38.5234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dxd2XW3sXAGLIloB+Xo/Ub7zbKviaYiytsJo+LZERk9aW63c3q51bQd4T5q6AX2ARjlFv99hccI/tm1nANRMRdWPfD8RiMIjQxsKXSfvSzQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4533
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Added Wa_18022495364
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Friday, September 8, 2023 3:58 AM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Added Wa_18022495364
>=20
> On Thu, Sep 07, 2023 at 12:27:34PM +0530, Dnyaneshwar Bhadane wrote:
> >This workaround has two different implementations, one for gen 12 to
> >DG2 and another for DG2 and later.
> >Bspec :  11354 , 56551.
>=20
> You seem to have extra spaces here. Please format it smilarly to other
> commits.
>=20
> >
> >Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> >---
> > drivers/gpu/drm/i915/gt/gen8_engine_cs.c    | 4 ++++
> > drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
> > drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> > 3 files changed, 9 insertions(+)
> >
> >diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> >b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> >index 0143445dba83..fee2712f81e8 100644
> >--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> >+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> >@@ -271,6 +271,10 @@ int gen12_emit_flush_rcs(struct i915_request *rq,
> u32 mode)
> > 		if (GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70))
> > 			bit_group_0 |=3D PIPE_CONTROL_CCS_FLUSH;
> >
> >+		/* Wa_18022495364 */
> >+		if ((GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70)) ||
>=20
> 		    ^  why the extra parenthesis here?
>=20
>=20
> >+		    IS_DG2(rq->i915))
> >+			bit_group_1 |=3D
> PIPE_CONTROL_CONST_CACHE_INVALIDATE;
>=20
> it's usually preferred to leave a newline after then if/else branches to =
help
> readability.
>=20
> > 		bit_group_1 |=3D PIPE_CONTROL_TILE_CACHE_FLUSH;
> > 		bit_group_1 |=3D PIPE_CONTROL_FLUSH_L3;
> > 		bit_group_1 |=3D
> PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> >diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >index 0e4c638fcbbf..4c0cb3a3d0aa 100644
> >--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> >@@ -164,6 +164,8 @@
> > #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
> > #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
> > #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
> >+#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
> >+#define   GEN12_GLOBAL_DEBUG_ENABLE			BIT(6)
> >
> > #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
> > #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
> >diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> >b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> >index 864d41bcf6bb..1a026d4d7ac5 100644
> >--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> >+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> >@@ -712,6 +712,9 @@ static void gen12_ctx_workarounds_init(struct
> intel_engine_cs *engine,
> > 			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
> > 			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
> >
> >+	/* Wa_18022495364 :tgl,rkl,dg1,adl-s,adl-p */
>=20
> 			 ^ extra space here too.
>=20
> Actually there is no need to add the platforms names as comments.
>=20
>=20
> >+	wa_masked_en(wal, GEN12_CS_DEBUG_MODE2,
> >+		     GEN12_GLOBAL_DEBUG_ENABLE);
>=20
> missing newline
>=20
Thanks Lucas, I will address all above suggestion in next revision.=20
>=20
> Lucas De Marchi
>=20
> > 	/*
> > 	 * Wa_16011163337 - GS_TIMER
> > 	 *
> >--
> >2.34.1
> >

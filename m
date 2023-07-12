Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C923750F88
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 19:21:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320AA10E5C0;
	Wed, 12 Jul 2023 17:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1ECC10E5BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 17:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689182463; x=1720718463;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+H0qBGqZlk6vi9x6uQc/8OkYj73PVbr1pwN4rTm3s5s=;
 b=fx9F9503oAbj/4QIvfm/IQPVEPAsGOkg/9GDKaTKogw6spf25l5IUL3D
 8m4otdD6OqMHDrDmieZX1+5XuvVaLfrzTmPp+CDLYodzCkjoObmwzIQJa
 dNBb655WU3rUxfSyZonbYkOaZWeQCGqM1EB8KJ6+YiK9hB+o7+idVzSi5
 wcd7gXh5lrwqFOHqbzG16F1Hau5YamXt/sk2QvsWgzWJMXYVLusbH7w4o
 IYf1qiHfLK0PTIH0eKDUj2eGyoCdjQdqnEFTt+uaVzaXVZAiMPMemzLA+
 41R6BBP9WZ5zbC01A0VdZGyDkERKfvdw78V539AVjsib/WWl1uVJOIQUh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="344549417"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="344549417"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 10:20:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="787120430"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="787120430"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 12 Jul 2023 10:20:47 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 10:20:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 10:20:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 10:20:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=loCJYH66wF7bUXDjhK8HssLZK/Vx1a/l6/7oD9JJ3JBakZhWR6TmDF3BR3zSA1+L5djelYDcXEb9iz7vYBE4h89LHzyPccgZhcdKz7v7fNyohSWOEFtLaQBzTQZQyZYi1Fk31DdriOLZOAs+cckzHjd93XZmMxGXqvKX2LO1V4wJ1pEMrUqzst13TYgvd9RM7i7hsYXumH+eaQ/SPinzFtfBo7QlYUK2A/RzTyPNQ8yf1pkr87JUmzI+/jVv/23lS42uYoJZHQ3sxsigfcDL1CCk28GVAZhNzy3Gg3PBD6z0ZQOjmRTYwWvMTnxbyn+xKuLLi14v3B/zsGdUcCeRLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v6xvqUBSy8BjpigTAjNP95taN1FdB2hYdIvKZExMRy4=;
 b=d9uWkDXwQ91NWSqiwA0uCvIoaoQ5zDaQJ2AWYpd71Y34+4rZfKr1Kc6RdGaZNkXJ42ZhjrSlbMFccm88e7TEcs11yK9N6Es5mVyzbHE7oAfEjCkBTppgbpiI2o2XY5MjdhZisXajChjuQdXKhEuRAKiJEvFNNAZbZ/Lf9jqowrzK7q17qoF5wKbeRj6g8AxDRQ9o5NZxJiTB8VQStXgzI0ZZ3SSTbOdvnxTSxUfQNL8wCLqucqdZeT/52GHb4LVCGl62Ttsqgx1iAS/HoAcreYE0yxHqOiB73SX93sfxLA4Ps0sDyAmm//rkJumnuRowLcthTrLXH2YhTY5WTEXZOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Wed, 12 Jul
 2023 17:20:44 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::b4d8:c2fb:e619:5584]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::b4d8:c2fb:e619:5584%6]) with mapi id 15.20.6565.028; Wed, 12 Jul 2023
 17:20:43 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>
Thread-Topic: [v3] drm/i915/mtl: s/MTL/METEORLAKE for platform/subplatform
 defines
Thread-Index: AQHZsx1z3KcifpzLvUeN5qAu1/3Ooa+zAw6AgANgtwA=
Date: Wed, 12 Jul 2023 17:20:43 +0000
Message-ID: <SJ2PR11MB7715C3BBFC9992CF6036942CF836A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230616114200.3228284-12-dnyaneshwar.bhadane@intel.com>
 <20230710105815.2056018-1-dnyaneshwar.bhadane@intel.com>
 <IA1PR11MB62660C3B6D48EA16DF2E7AFFE230A@IA1PR11MB6266.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB62660C3B6D48EA16DF2E7AFFE230A@IA1PR11MB6266.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|DS0PR11MB6541:EE_
x-ms-office365-filtering-correlation-id: 8bb8bac9-63a3-4056-1eda-08db82fc52c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: itlKiMwxEi3YzfJZDvCaoo12+MKE64rYJCr/CZ42C+OUBin9tgmwKVpen69/dFYvnYMpfGuiYNdNKiqOgaULwIh8AIs5smuWUWPZb10K2zzQPc4lsC+ZhDRWzMECHWKnWfITuO9jWyLFuj4zHxkJO00cy+v1RaTk/NXLR+jGZqIZatpHTS0o5aPOOzBZF7oFvdoYxrstdILFIl0pVGxl85qXFnwhJYYz4hDKMiB0F4meotK6dtQXLKTENaE0grQUvy6Aha4PNEc8Gb2nJG0D/JtEzPdXrPaPfVdBtNN/3pw5raFFE8l0XlE4ECK2K50ISVxsK60uoMhDMSznJBUsMOhEScHrGd2/s0cLHFP6Jo/lyLDPVEK5LR+bVhKdJz3IOjYqHqFSQCyMDFu7484W6wjBIY/czg+a8bNLOI1a+wJjeYXdgXAWD2G1qvJSYft1L6yIsby2MQgvqjCXwaKo8RSZfvnQlTBKIOkz1ssT6MCe47bxxiCfAxQYieKwD/rxN/aOPQJUkFzjULVzW9cxG+iFhR7rI7etWawhaB/SdG+D62rvIXateiQBGxWfyBYDLqBTxmecac/qqgYw5BtHoMIK8GQs2PAYQWa0Cajcqv+4Tb+aAQGyE0QqGp0Fq8Fa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(346002)(376002)(396003)(451199021)(71200400001)(186003)(9686003)(316002)(110136005)(66946007)(76116006)(7696005)(66556008)(66446008)(64756008)(66476007)(6636002)(4326008)(41300700001)(478600001)(8936002)(8676002)(53546011)(55016003)(86362001)(6506007)(26005)(52536014)(5660300002)(83380400001)(33656002)(122000001)(38070700005)(38100700002)(2906002)(30864003)(82960400001)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HYKn38rxJSn3LS39E4QgfI/udbH1gu4KU39dWfhXXFskVRz8vFjRETAklAeE?=
 =?us-ascii?Q?vJul9Knj1thxyEzoFOqSzi2B9mxlQ+97ymBs01nnHekJsr0izoQy0dFvakUW?=
 =?us-ascii?Q?OoBrCAdGAg+D1+hjnhhxLtasNBEVL3mVEDcX1jeeAmhs3Dm/DgPBvS82W5oM?=
 =?us-ascii?Q?4SmicGp+ktrDbmzUoIU2LhXkFattggz92QlK9du8g/923QWrNZyEdMaiU6CH?=
 =?us-ascii?Q?aifH9mIDlW2mClXMFj2soKhugP4em/uuPaw4dSR+xK1blQAMMZ1p6ipUViki?=
 =?us-ascii?Q?Tu7J8Q9jQMsRQfjF3Q0ncXhQcmMcxsiZeiFv3QFHZv7bEyXtawIZ//kR4aEH?=
 =?us-ascii?Q?gXNqca+qRilDJYB+kucO6Dt5uG6z3VR3J6LkqCs9oSeMJbad8jGGhKRvZtDv?=
 =?us-ascii?Q?xyWzU3dfVZB+AoWH1da7wjxMeLsiT4/sJPgR3YbXFssEY2cb/MP9ArHuHclX?=
 =?us-ascii?Q?bU2u+jCmxTkOw4pvM7sYA7KsghSyixXrXWCbw64MXMIA1LPfVl8PxviPKL8T?=
 =?us-ascii?Q?uIX63TL6ydZ8X1SYE0qAPcRTlgisjhokyT6fTM92miGT38JPKZRl1EXHY1Mn?=
 =?us-ascii?Q?t29RWwoPCaxe2Ps/ScSPl8/pUPHRm2u7Q0NwDcEL+F+QHnDoq/GgX0A5TmYg?=
 =?us-ascii?Q?WUMZ5ZZ60KBp5VMIvK70nDuv48tFrp1P53KF2elWBQLQyeW406x1rlZgLRYR?=
 =?us-ascii?Q?TFg534hLYBvh+eZveUFJqzOZPNQQCRhZFxe6QUVc95mGXYHtmGc9z0mWHjIM?=
 =?us-ascii?Q?pWTjdA/q5OavoR0pPAKJ44CfVPdMmkPgrYbvEcE/fA+Xn6tEyX83OKCsBOmi?=
 =?us-ascii?Q?Rpuj74u9RXY2qBR3a+khK4Stroy0aTtLVtgC9qHhzzKn6s2NnH/Hl0waX+u2?=
 =?us-ascii?Q?YbJMVk8DInkkSzFOWBh5XTo8E+ZfEz9EPOuUBHsbwwr9sX8cOSThQ7WdXgVe?=
 =?us-ascii?Q?czmC6topTH7ytmxsq4bdrX37Fpml4TGcIIxCelXMsb0T9VMpqeIvsi8JuTu6?=
 =?us-ascii?Q?/4q8OjyRhwVFiqBWRKSLk/wAf5TiRQWkD5Hnv5OhAAXFzYEPEkCWIl3al/KH?=
 =?us-ascii?Q?Djr0qPu/b9179CmujB6BwyO+wXIaQJ6axt8adkl/PeEgzioFXtwKreu0laxH?=
 =?us-ascii?Q?dSdRM97oubDho4EJqzr7BsYPZW3pdk3iqbpDNwcgglTkIPllLKoGyly39QEq?=
 =?us-ascii?Q?XBmSfaQfbOdUJXn/USPEBOiGCYtkDZFBFcBlh1PWn3Rnyy+ePnMsbRS2kh0U?=
 =?us-ascii?Q?gdRBrJP/Qva9aEdDfUCpfDSN3KYeLlnk+xuwmdcSxA120adxzZl5ahY1mzgT?=
 =?us-ascii?Q?pCfwquY+S3FYmZ6xCY3l2BPcDGmrxCbbo6cov0r2xfE8L/UR9qVlicR2tkl/?=
 =?us-ascii?Q?JhN60dBEcA3c7aiRTT5UIW+K2CIcv0Px9jLODJZ2uXwOZuStlvx+OGMzLk8f?=
 =?us-ascii?Q?u7bQt6SHQ+03x0HvLsV/QutGai7Hs20kqbo5vtUX09MiYIRMuPdiWfJL4ZBw?=
 =?us-ascii?Q?9uz3m+YMWrNVd7FDAiBUcFbMGp3W3dlQ8kpLgih9bam3fWIMK5W910o7wy1j?=
 =?us-ascii?Q?W31W7qXcMBiV+zA2lQrXjBuUAaNg+QpVc0gOYGXElLxN/hOUn5o78a4fknS0?=
 =?us-ascii?Q?KQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bb8bac9-63a3-4056-1eda-08db82fc52c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2023 17:20:43.5276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +M9XTCl8i+4OaHR1FEnufyYCp83NQqGjy9iULCl5247GZwldvFc2QONbvUp/KsIK6Ik1fyoqeCl6oOyhfJT0/g7f4d7IakYAlYoAWg0MzkM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6541
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v3] drm/i915/mtl: s/MTL/METEORLAKE for
 platform/subplatform defines
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

I Like the acronym replacement approach - despite making the macro names lo=
nger, it is consistent with how platform is referred everywhere in the driv=
er.

For that,

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Monday, July 10, 2023 6:44 AM
> To: intel-gfx@lists.freedesktop.org; Ursulin, Tvrtko <tvrtko.ursulin@inte=
l.com>
> Cc: jani.nikula@linux.intel.com; Srivatsa, Anusha <anusha.srivatsa@intel.=
com>
> Subject: RE: [v3] drm/i915/mtl: s/MTL/METEORLAKE for platform/subplatform
> defines
>=20
>=20
>=20
> > -----Original Message-----
> > From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> > Sent: Monday, July 10, 2023 4:28 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>;
> > jani.nikula@linux.intel.com; Srivatsa, Anusha
> > <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
> > <dnyaneshwar.bhadane@intel.com>
> > Subject: [v3] drm/i915/mtl: s/MTL/METEORLAKE for platform/subplatform
> > defines
> >
> > Follow consistent naming convention. Replace MTL with METEORLAKE.
> > Added defines that are replacing IS_MTL_GRAPHICS_STEP with
> > IS_METEORLAKE_P_GRAPHICS_STEP and
> IS_METEORLAKE_M_GRAPHICS_STEP.
> > Also replaced IS_METEORLAKE_MEDIA_STEP instead of IS_MTL_MEDIA_STEP
> > and IS_METEORLAKE_DISPLAY_STEP instead of IS_MTL_DISPLAY_STEP.
> >
> Hi Tvrtko,
> Could you please give the feedback on this ? or suggestion regarding the
> approach.
>=20
> > v2:
> > - Replace IS_MTL_GRAPHICS_STEP with
> > IS_METEROLAKE_(P/M)_GRAPHICS_STEP (Tvrtko).
> > - Changed subject prefix mtl instead of MTL (Anusha)
> > v3:
> > - Updated the commit message. (Anusha)
> >
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 10 ++---
> >  .../drm/i915/display/skl_universal_plane.c    |  4 +-
> >  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  8 ++--
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
> >  .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
> >  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
> >  drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
> >  drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 +++++++++----------
> >  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
> >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
> >  drivers/gpu/drm/i915/i915_drv.h               | 15 +++++--
> >  drivers/gpu/drm/i915/i915_perf.c              |  4 +-
> >  15 files changed, 60 insertions(+), 51 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 7f8b2d7713c7..6358a8b26172 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1093,7 +1093,7 @@ static int intel_fbc_check_plane(struct
> > intel_atomic_state *state,
> >
> >  	/* Wa_14016291713 */
> >  	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> > -	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> > +	     IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> >  	    crtc_state->has_psr) {
> >  		plane_state->no_fbc_reason =3D "PSR1 enabled
> (Wa_14016291713)";
> >  		return 0;
> > diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > index f7608d363634..8c3158b188ef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > @@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915=
)
> >  				     &pmdemand_state->base,
> >  				     &intel_pmdemand_funcs);
> >
> > -	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
> > +	if (IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
> >  		/* Wa_14016740474 */
> >  		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0,
> > DMD_RSP_TIMEOUT_DISABLE);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 62151abe4748..ecd4e36119b2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1247,7 +1247,7 @@ static void wm_optimization_wa(struct intel_dp
> > *intel_dp,
> >  	bool set_wa_bit =3D false;
> >
> >  	/* Wa_14015648006 */
> > -	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> >  	    IS_DISPLAY_VER(dev_priv, 11, 13))
> >  		set_wa_bit |=3D crtc_state->wm_level_disabled;
> >
> > @@ -1320,7 +1320,7 @@ static void intel_psr_enable_source(struct
> > intel_dp *intel_dp,
> >  		 * All supported adlp panels have 1-based X granularity, this may
> >  		 * cause issues if non-supported panels are used.
> >  		 */
> > -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
> > STEP_B0))
> >  			intel_de_rmw(dev_priv,
> > MTL_CHICKEN_TRANS(cpu_transcoder), 0,
> >  				     ADLP_1_BASED_X_GRANULARITY);
> >  		else if (IS_ALDERLAKE_P(dev_priv))
> > @@ -1328,7 +1328,7 @@ static void intel_psr_enable_source(struct
> > intel_dp *intel_dp,
> >  				     ADLP_1_BASED_X_GRANULARITY);
> >
> >  		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
> > STEP_B0))
> >  			intel_de_rmw(dev_priv,
> >  				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
> > 0,
> >
> > MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> > @@ -1489,7 +1489,7 @@ static void intel_psr_disable_locked(struct
> > intel_dp
> > *intel_dp)
> >
> >  	if (intel_dp->psr.psr2_enabled) {
> >  		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
> > STEP_B0))
> >  			intel_de_rmw(dev_priv,
> >  				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
> >
> > MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0); @@ -1963,7 +1963,7
> @@ int
> > intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> >  		goto skip_sel_fetch_set_loop;
> >
> >  	/* Wa_14014971492 */
> > -	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > +	if ((IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> >  	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
> >  	    crtc_state->splitter.enable)
> >  		pipe_clip.y1 =3D 0;
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 636a88827a8f..cf1bcc6bff08 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct
> > drm_i915_private *i915,
> >  				 enum pipe pipe, enum plane_id plane_id)  {
> >  	/* Wa_14017240301 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> >  		return false;
> >
> >  	/* Wa_22011186057 */
> > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > index 3173e811463d..26656d4be61e 100644
> > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt,
> > u32 *cs, const i915_reg_t inv  static int
> > mtl_dummy_pipe_control(struct i915_request *rq)  {
> >  	/* Wa_14016712196 */
> > -	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(rq->engine->i915, STEP_A0,
> > STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(rq->engine->i915, STEP_A0,
> > STEP_B0))
> > +{
> >  		u32 *cs;
> >
> >  		/* dummy PIPE_CONTROL + depth flush */ @@ -765,8 +765,8
> @@ u32
> > *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> >  		     PIPE_CONTROL_FLUSH_ENABLE);
> >
> >  	/* Wa_14016712196 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> >  		/* dummy PIPE_CONTROL + depth flush */
> >  		cs =3D gen12_emit_pipe_control(cs, 0,
> >
> > PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0); diff --git
> > a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 0aff5bb13c53..df4883764ad4 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -1616,7 +1616,7 @@ static int __intel_engine_stop_cs(struct
> > intel_engine_cs *engine,
> >  	 * Wa_22011802037: Prior to doing a reset, ensure CS is
> >  	 * stopped, set ring stop bit and prefetch disable bit to halt CS
> >  	 */
> > -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0,
> > STEP_B0) ||
> >  	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
> >  	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
> >  		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine-
> > >mmio_base),
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 2ebd937f3b4c..802b31ad982e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -3001,7 +3001,7 @@ static void execlists_reset_prepare(struct
> > intel_engine_cs *engine)
> >  	 * Wa_22011802037: In addition to stopping the cs, we need
> >  	 * to wait for any pending mi force wakeups
> >  	 */
> > -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0,
> > STEP_B0) ||
> >  	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
> >  	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
> >  		intel_engine_wait_for_pending_mi_fw(engine);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 0b414eae1683..e30b56be0cb8 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
> >  		gt->steering_table[OADDRM] =3D
> > xelpmp_oaddrm_steering_table;
> >  	} else if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70)) {
> >  		/* Wa_14016747170 */
> > -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +		if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0,
> > STEP_B0) ||
> > +		    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0,
> > STEP_B0))
> >  			fuse =3D REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> >  					     intel_uncore_read(gt->uncore,
> >
> > MTL_GT_ACTIVITY_FACTOR)); diff --git
> > a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index a4ec20aaafe2..80608090fb1e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1370,8 +1370,8 @@ gen12_emit_indirect_ctx_rcs(const struct
> > intel_context *ce, u32 *cs)
> >  					      cs, GEN12_GFX_CCS_AUX_NV);
> >
> >  	/* Wa_16014892111 */
> > -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(ce->engine->i915, STEP_A0,
> > STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(ce->engine->i915, STEP_A0,
> > STEP_B0)
> > +||
> >  	    IS_DG2(ce->engine->i915))
> >  		cs =3D dg2_emit_draw_watermark_setting(cs);
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > index 58bb1c55294c..cc8b09b8a7fa 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > @@ -526,7 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
> >  		return false;
> >  	}
> >
> > -	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> > +	if (IS_METEORLAKE_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> >  	    gt->type =3D=3D GT_MEDIA) {
> >  		drm_notice(&i915->drm,
> >  			   "Media RC6 disabled on A step\n"); diff --git
> > a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index bb948ffc95ca..f840376f107f 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -819,8 +819,8 @@ static void mtl_ctx_gt_tuning_init(struct
> > intel_engine_cs *engine,
> >
> >  	dg2_ctx_gt_tuning_init(engine, wal);
> >
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER)
> > ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))
> >  		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0,
> false);  }
> >
> > @@ -831,8 +831,8 @@ static void mtl_ctx_workarounds_init(struct
> > intel_engine_cs *engine,
> >
> >  	mtl_ctx_gt_tuning_init(engine, wal);
> >
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> >  		/* Wa_14014947963 */
> >  		wa_masked_field_set(wal, VF_PREEMPTION,
> >  				    PREEMPTION_VERTEX_COUNT, 0x4000);
> @@ -1716,8 +1716,8 @@
> > xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list
> > *wal)
> >  	/* Wa_22016670082 */
> >  	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> >
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0)) {
> >  		/* Wa_14014830051 */
> >  		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> >
> > @@ -2413,15 +2413,15 @@ rcs_engine_wa_init(struct intel_engine_cs
> > *engine, struct i915_wa_list *wal)  {
> >  	struct drm_i915_private *i915 =3D engine->i915;
> >
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> >  		/* Wa_22014600077 */
> >  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> >  				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> >  	}
> >
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> >  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> >  		/* Wa_1509727124 */
> > @@ -2431,7 +2431,7 @@ rcs_engine_wa_init(struct intel_engine_cs
> > *engine, struct i915_wa_list *wal)
> >
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> > +	    IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> >  		/* Wa_22012856258 */
> >  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> >  				 GEN12_DISABLE_READ_SUPPRESSION); @@ -
> 3016,13 +3016,13 @@
> > general_render_compute_wa_init(struct
> > intel_engine_cs *engine, struct i915_wa_li
> >
> > GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
> >  	}
> >
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER)
> > ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))
> >  		/* Wa_14017856879 */
> >  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3,
> > MTL_DISABLE_FIX_FOR_EOT_FLUSH);
> >
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> >  		/*
> >  		 * Wa_14017066071
> >  		 * Wa_14017654203
> > @@ -3030,13 +3030,13 @@ general_render_compute_wa_init(struct
> > intel_engine_cs *engine, struct i915_wa_li
> >  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> >  				 MTL_DISABLE_SAMPLER_SC_OOO);
> >
> > -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> >  		/* Wa_22015279794 */
> >  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> >  				 DISABLE_PREFETCH_INTO_IC);
> >
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> >  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> >  		/* Wa_22013037850 */
> > @@ -3044,16 +3044,16 @@ general_render_compute_wa_init(struct
> > intel_engine_cs *engine, struct i915_wa_li
> >  				DISABLE_128B_EVICTION_COMMAND_UDW);
> >  	}
> >
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> >  	    IS_PONTEVECCHIO(i915) ||
> >  	    IS_DG2(i915)) {
> >  		/* Wa_22014226127 */
> >  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> DISABLE_D8_D16_COASLESCE);
> >  	}
> >
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> >  	    IS_DG2(i915)) {
> >  		/* Wa_18017747507 */
> >  		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN,
> > POLYGON_TRIFAN_LINELOOP_DISABLE); diff --git
> > a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > index 2eb891b270ae..c8e2a110b833 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >  		flags |=3D GUC_WA_GAM_CREDITS;
> >
> >  	/* Wa_14014475959 */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
> >  	    IS_DG2(gt->i915))
> >  		flags |=3D GUC_WA_HOLD_CCS_SWITCHOUT;
> >
> > @@ -292,7 +292,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >  		flags |=3D GUC_WA_DUAL_QUEUE;
> >
> >  	/* Wa_22011802037: graphics version 11/12 */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
> >  	    (GRAPHICS_VER(gt->i915) >=3D 11 &&
> >  	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
> >  		flags |=3D GUC_WA_PRE_PARSER;
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index a0e3ef1c65d2..6f0e07c4488e 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -1658,7 +1658,7 @@ static void guc_engine_reset_prepare(struct
> > intel_engine_cs *engine)
> >  	 * Wa_22011802037: In addition to stopping the cs, we need
> >  	 * to wait for any pending mi force wakeups
> >  	 */
> > -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0,
> > STEP_B0) ||
> >  	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
> >  	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
> >  		intel_engine_stop_cs(engine);
> > @@ -4267,7 +4267,7 @@ static void guc_default_vfuncs(struct
> > intel_engine_cs
> > *engine)
> >
> >  	/* Wa_14014475959:dg2 */
> >  	if (engine->class =3D=3D COMPUTE_CLASS)
> > -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0,
> > STEP_B0) ||
> > +		if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915,
> > STEP_A0, STEP_B0) ||
> >  		    IS_DG2(engine->i915))
> >  			engine->flags |=3D
> > I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index deb5b9064621..8b4cc3f4df1f
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -688,15 +688,24 @@ IS_SUBPLATFORM(const struct drm_i915_private
> > *i915,  #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
> >  	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
> >
> > -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> > +#define IS_METEORLAKE_GRAPHICS_STEP(__i915, variant, since, until) \
> >  	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE,
> > INTEL_SUBPLATFORM_##variant) && \
> >  	 IS_GRAPHICS_STEP(__i915, since, until))
> >
> > -#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> > +#define IS_METEORLAKE_P_GRAPHICS_STEP(__i915, since, until) \
> > +	(IS_METEORLAKE_P(__i915) && \
> > +	 IS_GRAPHICS_STEP(__i915, since, until))
> > +
> > +#define IS_METEORLAKE_M_GRAPHICS_STEP(__i915, since, until) \
> > +	(IS_METEORLAKE_M(__i915) && \
> > +	 IS_GRAPHICS_STEP(__i915, since, until))
> > +
> > +
> > +#define IS_METEORLAKE_DISPLAY_STEP(__i915, since, until) \
> >  	(IS_METEORLAKE(__i915) && \
> >  	 IS_DISPLAY_STEP(__i915, since, until))
> >
> > -#define IS_MTL_MEDIA_STEP(__i915, since, until) \
> > +#define IS_METEORLAKE_MEDIA_STEP(__i915, since, until) \
> >  	(IS_METEORLAKE(__i915) && \
> >  	 IS_MEDIA_STEP(__i915, since, until))
> >
> > diff --git a/drivers/gpu/drm/i915/i915_perf.c
> > b/drivers/gpu/drm/i915/i915_perf.c
> > index 0a111b281578..e943ffbaecbc 100644
> > --- a/drivers/gpu/drm/i915/i915_perf.c
> > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > @@ -4214,7 +4214,7 @@ static int read_properties_unlocked(struct
> > i915_perf *perf,
> >  	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings
> > where OAM
> >  	 * does not work as expected.
> >  	 */
> > -	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
> > +	if (IS_METEORLAKE_MEDIA_STEP(props->engine->i915, STEP_A0,
> > STEP_C0) &&
> >  	    props->engine->oa_group->type =3D=3D TYPE_OAM &&
> >  	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
> >  		drm_dbg(&perf->i915->drm,
> > @@ -5322,7 +5322,7 @@ int i915_perf_ioctl_version(struct
> > drm_i915_private
> > *i915)
> >  	 * C6 disable in BIOS. If Media C6 is enabled in BIOS, return version=
 6
> >  	 * to indicate that OA media is not supported.
> >  	 */
> > -	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
> > +	if (IS_METEORLAKE_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
> >  		struct intel_gt *gt;
> >  		int i;
> >
> > --
> > 2.34.1


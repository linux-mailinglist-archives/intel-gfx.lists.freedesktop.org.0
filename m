Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A6774355E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 08:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B5610E10D;
	Fri, 30 Jun 2023 06:55:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A18110E10D;
 Fri, 30 Jun 2023 06:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688108115; x=1719644115;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=MbfHg3/way4osbO6Zt8+aM+v9IV/t6rgLq2cyx3e5Xo=;
 b=D5QDefKqKt7RSsaeK1426rJEtG8kyxyj8ln+UKjI5N6eOrWfT54jXQ27
 4MMSlEgPyIX3dgTOypJlApKTNBXw3cVfJkseeyPKVsKYbBl5tvR6UF5d+
 L1Nx9KRsPY9O4tR1VMHSwDPi1aBqt/FQ/IuWyiRs/rEw5UTJ9aLAjMqE7
 OiXwGUSO4HvbAfPeyYbbHUgRlQ/SwZDq/cxWms90347Tq4QIRXe8NBpcQ
 P0wjAjjwDf2dEpGNMLWKaFtOGP0MhQjb5qLGOCQ8JpoIZwxrjg8RPBwTD
 hVJCncZzXzXLoyJyg9eO25byw2+ijTu456VCvl6uBqbubA7AaKIT6KXM0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="347110179"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; 
 d="scan'208,217";a="347110179"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 23:55:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="747316006"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; 
 d="scan'208,217";a="747316006"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 29 Jun 2023 23:55:13 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 29 Jun 2023 23:55:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 29 Jun 2023 23:55:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 29 Jun 2023 23:55:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m0KTM2TQ5qnQRBHWnCUaUrJx/du6ejTAryUhihC4V1g2ibCEeW7nLEISulESjcRkysHYA9i0zqpP0cyNPqKsGkilhVpWm0lSd3mX5wNLYUtCQUQMxbmyUjpZvcBE4joGut57cwKLhSRnpIY8dIuwehMue5YoZ9HeZtB8ImsrIzBfqnI300SQ7QGWoMxAhz8KPauFDszzCSf5gI3fYkwkJ3fysJy4Aei26JHi6x8a5RjbEdf41W+sAsUdBZXoAMubfRz5U9fU1JJCvj3YKGHnhCX5hOYHFNvgFRgt1wBzWJ6iOJ+3FdrA4FfOmh+nwhJVot+jzdmdPuZ0u37Z6g5Wow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=izSn6TP/1im3DrjHJJnwAO1vnWLSKsgi/TFHMkIWIFo=;
 b=jeytzP4NH+4nbn883cOs7Ca1e4NW/Km7J9bxvRurRZw7Fg5R7ASpjscjXuzBR4OHC7g83GZjfzxiuSn1ChLKtGx6WVj0n8OM1ch/pCBYjxlSlFubOf1QWMIuQFlZwq7mbY8jgUP9t7hK0mw3pvz6XBFme/duv34opcC1WBNMtBX7kc1q8Uu4PvangHHMLrVXIyvBJ5HqKV3Lf+J7bNx0i6Ox24ySoJD5fpfriueGcljs59QpdChppSfVhms4pSNRMZaBNoFdjiMcfKVIRUI5M/BCP3hIAtMqlK984wHRJ6QVMk30qVKg2pLiBOFJqMvaBd1TEFfsNVQ5R5rGhqdErg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2567.namprd11.prod.outlook.com (2603:10b6:a02:c5::32)
 by MW4PR11MB5872.namprd11.prod.outlook.com (2603:10b6:303:169::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Fri, 30 Jun
 2023 06:55:06 +0000
Received: from BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::28b4:ae85:a4f0:3f46]) by BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::28b4:ae85:a4f0:3f46%4]) with mapi id 15.20.6544.019; Fri, 30 Jun 2023
 06:55:06 +0000
From: "Yang, Fei" <fei.yang@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Refactor PAT/cache handling
Thread-Index: AQHZqpQvF7ewKzrr+kCyWWOnY6DVxa+i6j3i
Date: Fri, 30 Jun 2023 06:55:06 +0000
Message-ID: <BYAPR11MB256721AE29EBF133E60D7CD19A2AA@BYAPR11MB2567.namprd11.prod.outlook.com>
References: <20230629141509.3194090-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230629141509.3194090-1-tvrtko.ursulin@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2567:EE_|MW4PR11MB5872:EE_
x-ms-office365-filtering-correlation-id: ea04d9fa-c9e2-49a8-3834-08db7936eff8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a1CH+z8RUclCYlfVar7+677IJx/sZJMG09jnPi6QmqSKcer2AAqdSPpmH1734wSHI7bImnag/MPOgi30hbgUEx4aD/pamjOQRaR6uK00Xrr/k25dXl6OmK/N4wZRhbXuoeofYnVmnrsMzYoDku2qaXmRvAnryfg2EjGK1c/uSiDdyO2xe33aecZT1Yd+ENLysMOg4Xi34h8NldXxIsnIHgYLT7N7hFWhHrv1sTz+wqv2NKl2xz8W1/38UXjFlLt7RC0mE55mkwurlbR8V66yhEz1W89sfI75wthf/ZFsvhOO1lp3gjA5KSG7PJ45cYaH7vCBjXPmPeqVI2lD47IA+isoazQ633v4R7ArkenLhOCaiE/tTfhHotbw9mV8lqwqbM9wO/ru6KNqWm0MV+K+5aMtucSY/8uo52QMc5IYx2i6nkf8TsD+Ks+JQNwf5uSgQ1FEj0YFS1q+uOX5kdthRfVzgG783c9wUla5wYZGg3mXlDHV76HhTATmu+Cefz5yWqcFCQuHrQ+R0xxzoMTeCtVNGBkYLM2ReXdTvw0yhYAgtVQS3cRr2Gx7c6ETUT48xNno0tk826okbBsL57y4aAkadbDyyZ4q8Bn6jI7SjlgYrAWGx6T4EdGhyRrmKoie
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2567.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(39860400002)(396003)(136003)(346002)(451199021)(2906002)(30864003)(7696005)(9686003)(122000001)(71200400001)(83380400001)(38100700002)(82960400001)(26005)(186003)(6506007)(55016003)(110136005)(41300700001)(86362001)(478600001)(4326008)(76116006)(66946007)(64756008)(316002)(66446008)(33656002)(66476007)(66556008)(91956017)(8936002)(19627405001)(5660300002)(8676002)(38070700005)(66899021)(52536014)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ysiIVnZxyc5W6/mQoZvjZeuHAY/WyZI5oFekmbMYIo49s5XkNz0sWZJ7u3?=
 =?iso-8859-1?Q?dyB7fw5Mgq4jyDFInPECh8BkR6UEgsC4iHwSDQU5lUy4xErmURZee+OIf0?=
 =?iso-8859-1?Q?zuS04Zp25LVBLmaNSq1x5HtcLzbrJSPakfkFKsn5ii0f53B/sUZ/K+i1kf?=
 =?iso-8859-1?Q?5cDIvDs2fJA/5N7MsXPqPgpiqKdqtpGAJUmFNg/R17QRQ9alNO2ui1s40+?=
 =?iso-8859-1?Q?6GczW/5ISravGClKdHBgim32dExl5NB9OqKFWoge6MEN0xrl2we9xT19kg?=
 =?iso-8859-1?Q?IdGFKGw5qZwg0rBSUT8HBzs9Mmno5d/1VzocUqGZlb+OEEz9QqKmR6RfHS?=
 =?iso-8859-1?Q?D56qqllaz5/N85biepaIQs8cKwR30MEqjUb7FI/pMHHyeL7drtyUSxVjtt?=
 =?iso-8859-1?Q?VS+qXwxMKgboQYf20jLXtc2yrIxTcoQf21Q8BqDAK1s29LVyY1VVeqwicJ?=
 =?iso-8859-1?Q?wtah1e6JSqlQbXkBMJODaIfb2jGqn8znJWx1YO6x6kVXaeMSn23I5GdOH8?=
 =?iso-8859-1?Q?qqYPQExQq900pDnjHTNRygX6hczVC630IAiDcnHKN4gCTaGInlPmOzPC3P?=
 =?iso-8859-1?Q?DjtFCj2/NHHrOOI8aBZX/UQdXMXomqrkEMhqRf/r/J4HCGfeTWrPUjqenA?=
 =?iso-8859-1?Q?cQd/VtmeHn9ycJOdrzU5R5RdCQsZF1HYBugBeqloPBllbs3IP6kxX4I9dV?=
 =?iso-8859-1?Q?K0/snJxwkawz7UedyMl8DLqQ9dspEzZifhV3eSm62IfukwhycQsUPrMir9?=
 =?iso-8859-1?Q?sUHQI+qMQ3dIIaw1afK8AEzvV5tJdZmaR60yDTYTGlpdfiRNoXIpKcuMev?=
 =?iso-8859-1?Q?mHty/Qn9ARKBObh7aLTUI/8v1yUxgUd+/t50Ay3eeplOAaX72RngVCfJt+?=
 =?iso-8859-1?Q?F4LVeVEgx6acBA5+O6LTXPMJavUnPAunBICON9MMvt2ogKUmN2FJpDOis2?=
 =?iso-8859-1?Q?I8AUXUB8VXVXXCpCGz3zYYaBtLfQUiaJFNHBEfrRLUNZEg8I+IeWgPU4l5?=
 =?iso-8859-1?Q?uIPSaQFN7oJkpQ/6mLTvGt5yUKS8QFTrpVTddya8DmKJrbHWp4Wb/2TCBn?=
 =?iso-8859-1?Q?SUTvtHWLf8iHWzsaSlhQrsNL/Srh8R6XSAbobcrIREVNiacUUFDupFdyzS?=
 =?iso-8859-1?Q?agwT9QEK/rL7PGVNs/3oDNcPjydxsct3CfpDiW0/bXTt284Ic4glX7GTEO?=
 =?iso-8859-1?Q?/pRHpEwRQt4LIllNQyUN38Ka2ZHF6oKuZ24EgHuMOlLFeqcTUrf+ExtY81?=
 =?iso-8859-1?Q?J78UZnHW8+PmkHANM7vwylu5H6eBsk30bM0qWHasqMjvKDjOgjq121Xk+I?=
 =?iso-8859-1?Q?5a518j6cOo7Ayju54O7OqKEoeRZKGF+WWzPt2hwIb7sU7AUESNgiWnsx5w?=
 =?iso-8859-1?Q?QhsW+WbfF/rE8veNgNztTbBn7I+Uh5JFu5A7yFxBeCTcYFarSNbHUMpOBU?=
 =?iso-8859-1?Q?C83B0d5KWRbNAy8tfkyeOlhzJrJwLGPCpSrGFHfitYtwMLTRxn//mMw7xn?=
 =?iso-8859-1?Q?qJsfh9AQFCWUGeO+gQF7O88i5MyRYkAnK5jitwXLhykzFLCTRhgHehtM5o?=
 =?iso-8859-1?Q?Xs+EXE/LHmpLz2sS9NAoZfXzKsHT0im24zfaaTiPL9KLWqgjZ96My2KpuD?=
 =?iso-8859-1?Q?C+9x/z2MWYxLw=3D?=
Content-Type: multipart/alternative;
 boundary="_000_BYAPR11MB256721AE29EBF133E60D7CD19A2AABYAPR11MB2567namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2567.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea04d9fa-c9e2-49a8-3834-08db7936eff8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2023 06:55:06.3821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AVH8QI1n73v/uSp6aBg8pJEUXGnCl5Nl0K9SeRUATovn4q9crJgtc2e+LdcuPxDep5FbUWVKP46tXuYi3x4ssw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5872
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Refactor PAT/cache handling
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

--_000_BYAPR11MB256721AE29EBF133E60D7CD19A2AABYAPR11MB2567namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Informal commit message for now.
>
> I got a bit impatient and curious to see if the idea we discussed would
> work so sketched something out. I think it is what I was describing back
> then..
>
> So high level idea is to teach the driver what caching modes are hidden
> behind PAT indices. Given you already had that in static tables, if we
> just turn the tables a bit around and add a driver abstraction of caching
> modes this is what happens:
>
>  * We can lose the ugly runtime i915_gem_get_pat_index.
>
>  * We can have a smarter i915_gem_object_has_cache_level, which now can
>    use the above mentioned table to understand the caching modes and so
>    does not have to pessimistically return true for _any_ input when user
>    has set the PAT index. This may improve things even for MTL.
>
>  * We can simplify the debugfs printout to be platform agnostic.
>
>  * We are perhaps opening the door to un-regress the dodgy addition
>    made to i915_gem_object_can_bypass_llc? See QQQ/FIXME in the patch.
>
> I hope I did not forget anything, but anyway, please have a read and see
> what you think. I think it has potential.
>
> Proper commit message can come later.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_dpt.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   |   2 +-
>  .../drm/i915/display/intel_plane_initial.c    |   4 +-
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  66 +++++-----
>  drivers/gpu/drm/i915/gem/i915_gem_domain.h    |   7 +-
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  13 +-
>  drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   6 +-
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  10 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    | 116 +++++++++--------
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |   9 +-
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  | 117 +++---------------
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |  10 +-
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  13 +-
>  drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |  43 ++++---
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   2 +-
>  .../drm/i915/gem/selftests/huge_gem_object.c  |   6 +-
>  .../gpu/drm/i915/gem/selftests/huge_pages.c   |   8 +-
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   4 +-
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  19 +--
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |  33 ++---
>  drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c     |   4 +-
>  drivers/gpu/drm/i915/gt/intel_gtt.c           |   2 +-
>  drivers/gpu/drm/i915/gt/intel_gtt.h           |   3 +-
>  drivers/gpu/drm/i915/gt/intel_migrate.c       |  11 +-
>  drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   6 +-
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |   2 +-
>  drivers/gpu/drm/i915/gt/intel_timeline.c      |   2 +-
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   2 +-
>  drivers/gpu/drm/i915/gt/selftest_migrate.c    |   9 +-
>  drivers/gpu/drm/i915/gt/selftest_reset.c      |  14 +--
>  drivers/gpu/drm/i915/gt/selftest_timeline.c   |   1 +
>  drivers/gpu/drm/i915/gt/selftest_tlb.c        |   5 +-
>  .../gpu/drm/i915/gt/selftest_workarounds.c    |   2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |   8 +-
>  drivers/gpu/drm/i915/i915_cache.c             |  72 +++++++++++
>  drivers/gpu/drm/i915/i915_cache.h             |  49 ++++++++
>  drivers/gpu/drm/i915/i915_debugfs.c           |  65 +++-------
>  drivers/gpu/drm/i915/i915_driver.c            |   5 +
>  drivers/gpu/drm/i915/i915_drv.h               |   3 +
>  drivers/gpu/drm/i915/i915_gem.c               |  21 +---
>  drivers/gpu/drm/i915/i915_gpu_error.c         |   7 +-
>  drivers/gpu/drm/i915/i915_pci.c               |  83 +++++++------
>  drivers/gpu/drm/i915/i915_perf.c              |   2 +-
>  drivers/gpu/drm/i915/intel_device_info.h      |   6 +-
>  drivers/gpu/drm/i915/selftests/i915_gem.c     |   5 +-
>  .../gpu/drm/i915/selftests/i915_gem_evict.c   |   8 +-
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  13 +-
>  drivers/gpu/drm/i915/selftests/igt_spinner.c  |   2 +-
>  .../drm/i915/selftests/intel_memory_region.c  |   4 +-
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  12 +-
>  drivers/gpu/drm/i915/selftests/mock_region.c  |   2 +-
>  54 files changed, 440 insertions(+), 485 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_cache.c
>  create mode 100644 drivers/gpu/drm/i915/i915_cache.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index 2be9dd960540..2c3da8f0c78e 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -30,6 +30,7 @@ subdir-ccflags-y +=3D -I$(srctree)/$(src)
>  # core driver code
>  i915-y +=3D i915_driver.o \
>            i915_drm_client.o \
> +         i915_cache.o \
>            i915_config.o \
>            i915_getparam.o \
>            i915_ioctl.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i=
915/display/intel_dpt.c
> index 7c5fddb203ba..5baf0d27a288 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -268,7 +268,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>
>          ret =3D i915_gem_object_lock_interruptible(dpt_obj, NULL);
>          if (!ret) {
> -               ret =3D i915_gem_object_set_cache_level(dpt_obj, I915_CAC=
HE_NONE);
> +               ret =3D i915_gem_object_set_cache(dpt_obj, I915_CACHE(UC)=
);
>                  i915_gem_object_unlock(dpt_obj);
>          }
>          if (ret) {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index fffd568070d4..dcf54b354a74 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -66,7 +66,7 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>                                  continue;
>                  }
>
> -               ret =3D i915_gem_object_set_cache_level(obj, I915_CACHE_N=
ONE);
> +               ret =3D i915_gem_object_set_cache(obj, I915_CACHE(UC));
>                  if (ret)
>                          continue;
>
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers=
/gpu/drm/i915/display/intel_plane_initial.c
> index 736072a8b2b0..9988f6562392 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -121,8 +121,8 @@ initial_plane_vma(struct drm_i915_private *i915,
>           * cache_level during fbdev initialization. The
>           * unbind there would get stuck waiting for rcu.
>           */
> -       i915_gem_object_set_cache_coherency(obj, HAS_WT(i915) ?
> -                                           I915_CACHE_WT : I915_CACHE_NO=
NE);
> +       i915_gem_object_set_cache_coherency(obj, HAS_WT(i915) ? I915_CACH=
E(WT) :
> +                                                               I915_CACH=
E(UC));
>
>          switch (plane_config->tiling) {
>          case I915_TILING_NONE:
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm=
/i915/gem/i915_gem_domain.c
> index dfaaa8b66ac3..f899da2c622a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -8,6 +8,7 @@
>  #include "display/intel_frontbuffer.h"
>  #include "gt/intel_gt.h"
>
> +#include "i915_cache.h"
>  #include "i915_drv.h"
>  #include "i915_gem_clflush.h"
>  #include "i915_gem_domain.h"
> @@ -27,15 +28,8 @@ static bool gpu_write_needs_clflush(struct drm_i915_ge=
m_object *obj)
>          if (IS_DGFX(i915))
>                  return false;
>
> -       /*
> -        * For objects created by userspace through GEM_CREATE with pat_i=
ndex
> -        * set by set_pat extension, i915_gem_object_has_cache_level() wi=
ll
> -        * always return true, because the coherency of such object is ma=
naged
> -        * by userspace. Othereise the call here would fall back to check=
ing
> -        * whether the object is un-cached or write-through.
> -        */
> -       return !(i915_gem_object_has_cache_level(obj, I915_CACHE_NONE) ||
> -                i915_gem_object_has_cache_level(obj, I915_CACHE_WT));
> +       return i915_gem_object_has_cache_mode(obj, I915_CACHE_MODE_UC) !=
=3D 1 &&
> +              i915_gem_object_has_cache_mode(obj, I915_CACHE_MODE_WT) !=
=3D 1;

This logic was changed for objects with pat index set by user here. It used=
 to return false
regardless the cache mode. But now it returns true if its cache mode is nei=
ther UC nor WT.

>  }
>
>  bool i915_gem_cpu_write_needs_clflush(struct drm_i915_gem_object *obj)
> @@ -255,9 +249,9 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_gem=
_object *obj, bool write)
>  }
>
>  /**
> - * i915_gem_object_set_cache_level - Changes the cache-level of an objec=
t across all VMA.
> + * i915_gem_object_set_cache - Changes the cache-level of an object acro=
ss all VMA.
>   * @obj: object to act on
> - * @cache_level: new cache level to set for the object
> + * @cache: new caching mode to set for the object
>   *
>   * After this function returns, the object will be in the new cache-leve=
l
>   * across all GTT and the contents of the backing storage will be cohere=
nt,
> @@ -269,19 +263,28 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_g=
em_object *obj, bool write)
>   * cache coherency) and all non-MOCS GPU access will also be uncached so
>   * that all direct access to the scanout remains coherent.
>   */
> -int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
> -                                   enum i915_cache_level cache_level)
> +int i915_gem_object_set_cache(struct drm_i915_gem_object *obj,
> +                             i915_cache_t cache)
>  {
> +       struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>          int ret;
>
> -       /*
> -        * For objects created by userspace through GEM_CREATE with pat_i=
ndex
> -        * set by set_pat extension, simply return 0 here without touchin=
g
> -        * the cache setting, because such objects should have an immutab=
le
> -        * cache setting by desgin and always managed by userspace.
> -        */
> -       if (i915_gem_object_has_cache_level(obj, cache_level))
> +       ret =3D i915_cache_find_pat(i915, cache);
> +       if (ret < 0) {
> +               struct drm_printer p =3D
> +                       drm_err_printer("Attempting to use unknown cachin=
g mode ");
> +
> +               i915_cache_print(&p, cache);
> +               drm_puts(&p, "!\n");
> +
> +               return -EINVAL;
> +       } else if (ret =3D=3D obj->pat_index) {
>                  return 0;

We will have to do this conversion and checking again later in this
function when calling i915_gem_object_set_cache_coherency().

My thought was to simply remove the use of cache_level/cache and replace
it with pat_idex. Conversion from cache modes to pat index should be done
before calling any function used to consume cache_level/cache.

> +       } else if (obj->pat_set_by_user) {

Shouldn't this if-statement be placed at the beginning of this function? th=
e original
i915_gem_object_has_cache_level() would return true if (obj->pat_set_by_use=
r), so the
function returns right away.

> +               drm_notice_once(&i915->drm,
> +                               "Attempting to change caching mode on an =
object with fixed PAT!\n");
> +               return -EINVAL;
> +       }
>
>          ret =3D i915_gem_object_wait(obj,
>                                     I915_WAIT_INTERRUPTIBLE |
> @@ -291,7 +294,7 @@ int i915_gem_object_set_cache_level(struct drm_i915_g=
em_object *obj,
>                  return ret;
>
>          /* Always invalidate stale cachelines */
> -       i915_gem_object_set_cache_coherency(obj, cache_level);
> +       i915_gem_object_set_cache_coherency(obj, cache);
>          obj->cache_dirty =3D true;
>
>          /* The cache-level will be applied when each vma is rebound. */
> @@ -326,10 +329,9 @@ int i915_gem_get_caching_ioctl(struct drm_device *de=
v, void *data,
>                  goto out;
>          }
>
> -       if (i915_gem_object_has_cache_level(obj, I915_CACHE_LLC) ||
> -           i915_gem_object_has_cache_level(obj, I915_CACHE_L3_LLC))
> +       if (i915_gem_object_has_cache_mode(obj, I915_CACHE_MODE_WB))

This looks wrong, at least for MTL. Prior to MTL the GPU automatically snoo=
p
CPU cache, but from MTL onward you have to specify if WB or WB + 1-WAY COH =
is
needed. And for KMD, cacheable mode means WB + 1-WAY COH for MTL to keep th=
e
behavior consistent.

This used to be taken care of by i915_gem_get_pat_index() call. With that b=
eing
replaced by i915_cache_find_pat(), you would need to do something there. Bu=
t,
without cachelevel_to_pat[], you might end up hard coding something directl=
y in
the function, and that is platform dependent. hmm..., I don't really like t=
his idea.

That's why I commented in v1 that we should use INTEL_INFO(i915)->pat_uc/wb=
/wt
instead of enum i915_cache_level or i915_cache_t.

>                  args->caching =3D I915_CACHING_CACHED;
> -       else if (i915_gem_object_has_cache_level(obj, I915_CACHE_WT))
> +       else if (i915_gem_object_has_cache_mode(obj, I915_CACHE_MODE_WT))
>                  args->caching =3D I915_CACHING_DISPLAY;
>          else
>                  args->caching =3D I915_CACHING_NONE;
> @@ -344,7 +346,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev=
, void *data,
>          struct drm_i915_private *i915 =3D to_i915(dev);
>          struct drm_i915_gem_caching *args =3D data;
>          struct drm_i915_gem_object *obj;
> -       enum i915_cache_level level;
> +       i915_cache_t cache;
>          int ret =3D 0;
>
>          if (IS_DGFX(i915))
> @@ -355,7 +357,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev=
, void *data,
>
>          switch (args->caching) {
>          case I915_CACHING_NONE:
> -               level =3D I915_CACHE_NONE;
> +               cache =3D I915_CACHE(UC);

For code like this, my thought was

-               level =3D I915_CACHE_NONE;
+               pat_index =3D INTEL_INFO(i915)->pat_uc;

And later the set_cache call should take pat_index as argument instead of c=
ache mode.

>                  break;
>          case I915_CACHING_CACHED:
>                  /*
> @@ -367,10 +369,10 @@ int i915_gem_set_caching_ioctl(struct drm_device *d=
ev, void *data,
>                  if (!HAS_LLC(i915) && !HAS_SNOOP(i915))
>                          return -ENODEV;
>
> -               level =3D I915_CACHE_LLC;
> +               cache =3D I915_CACHE(WB);

-               level =3D I915_CACHE_LLC;
+               pat_index =3D INTEL_INFO(i915)->pat_wb;

This should take care of the WB + 1-WAY COH issue for MTL mentioned above,
assuming the i915_cache_init() set pat_wb properly, and the
i915_gem_object_set_cache() consumes pat_index instead of cache mode.

>                  break;
>          case I915_CACHING_DISPLAY:
> -               level =3D HAS_WT(i915) ? I915_CACHE_WT : I915_CACHE_NONE;
> +               cache =3D HAS_WT(i915) ? I915_CACHE(WT) : I915_CACHE(UC);
>                  break;
>          default:
>                  return -EINVAL;
> @@ -409,7 +411,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev=
, void *data,
>          if (ret)
>                  goto out;
>
> -       ret =3D i915_gem_object_set_cache_level(obj, level);
> +       ret =3D i915_gem_object_set_cache(obj, cache);
>          i915_gem_object_unlock(obj);
>
>  out:
> @@ -448,9 +450,9 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_=
gem_object *obj,
>           * of uncaching, which would allow us to flush all the LLC-cache=
d data
>           * with that bit in the PTE to main memory with just one PIPE_CO=
NTROL.
>           */
> -       ret =3D i915_gem_object_set_cache_level(obj,
> -                                             HAS_WT(i915) ?
> -                                             I915_CACHE_WT : I915_CACHE_=
NONE);
> +       ret =3D i915_gem_object_set_cache(obj,
> +                                       HAS_WT(i915) ?
> +                                       I915_CACHE(WT) : I915_CACHE(UC));
>          if (ret)
>                  return ERR_PTR(ret);
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.h b/drivers/gpu/drm=
/i915/gem/i915_gem_domain.h
> index 9622df962bfc..d07926758b36 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.h
> @@ -6,10 +6,11 @@
>  #ifndef __I915_GEM_DOMAIN_H__
>  #define __I915_GEM_DOMAIN_H__
>
> +#include "i915_cache.h"
> +
>  struct drm_i915_gem_object;
> -enum i915_cache_level;
>
> -int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
> -                                   enum i915_cache_level cache_level);
> +int i915_gem_object_set_cache(struct drm_i915_gem_object *obj,
> +                             i915_cache_t cache);
>
>  #endif /* __I915_GEM_DOMAIN_H__ */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu=
/drm/i915/gem/i915_gem_execbuffer.c
> index d3208a325614..ee85221fa6eb 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -640,15 +640,9 @@ static inline int use_cpu_reloc(const struct reloc_c=
ache *cache,
>          if (DBG_FORCE_RELOC =3D=3D FORCE_GTT_RELOC)
>                  return false;
>
> -       /*
> -        * For objects created by userspace through GEM_CREATE with pat_i=
ndex
> -        * set by set_pat extension, i915_gem_object_has_cache_level() al=
ways
> -        * return true, otherwise the call would fall back to checking wh=
ether
> -        * the object is un-cached.
> -        */
>          return (cache->has_llc ||
>                  obj->cache_dirty ||
> -               !i915_gem_object_has_cache_level(obj, I915_CACHE_NONE));
> +               i915_gem_object_has_cache_mode(obj, I915_CACHE_MODE_UC) !=
=3D 1);
>  }
>
>  static int eb_reserve_vma(struct i915_execbuffer *eb,
> @@ -1329,10 +1323,7 @@ static void *reloc_iomap(struct i915_vma *batch,
>          if (drm_mm_node_allocated(&cache->node)) {
>                  ggtt->vm.insert_page(&ggtt->vm,
>                                       i915_gem_object_get_dma_address(obj=
, page),
> -                                    offset,
> -                                    i915_gem_get_pat_index(ggtt->vm.i915=
,
> -                                                           I915_CACHE_NO=
NE),
> -                                    0);
> +                                    offset, eb->i915->pat_uc, 0);
>          } else {
>                  offset +=3D page << PAGE_SHIFT;
>          }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/d=
rm/i915/gem/i915_gem_internal.c
> index 6bc26b4b06b8..7e7bfe7da76f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> @@ -142,7 +142,6 @@ __i915_gem_object_create_internal(struct drm_i915_pri=
vate *i915,
>  {
>          static struct lock_class_key lock_class;
>          struct drm_i915_gem_object *obj;
> -       unsigned int cache_level;
>
>          GEM_BUG_ON(!size);
>          GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
> @@ -170,8 +169,9 @@ __i915_gem_object_create_internal(struct drm_i915_pri=
vate *i915,
>          obj->read_domains =3D I915_GEM_DOMAIN_CPU;
>          obj->write_domain =3D I915_GEM_DOMAIN_CPU;
>
> -       cache_level =3D HAS_LLC(i915) ? I915_CACHE_LLC : I915_CACHE_NONE;
> -       i915_gem_object_set_cache_coherency(obj, cache_level);
> +       i915_gem_object_set_cache_coherency(obj, HAS_LLC(i915) ?
> +                                                I915_CACHE(WB) :
> +                                                I915_CACHE(UC));
>
>          return obj;
>  }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i=
915/gem/i915_gem_mman.c
> index aa4d842d4c5a..5e21aedb02d2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -386,13 +386,11 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf=
)
>          /*
>           * For objects created by userspace through GEM_CREATE with pat_=
index
>           * set by set_pat extension, coherency is managed by userspace, =
make
> -        * sure we don't fail handling the vm fault by calling
> -        * i915_gem_object_has_cache_level() which always return true for=
 such
> -        * objects. Otherwise this helper function would fall back to che=
cking
> -        * whether the object is un-cached.
> +        * sure we don't fail handling the vm fault by making sure that w=
e
> +        * know the object is uncached or that we have LLC.
>           */
> -       if (!(i915_gem_object_has_cache_level(obj, I915_CACHE_NONE) ||
> -             HAS_LLC(i915))) {
> +       if (i915_gem_object_has_cache_mode(obj, I915_CACHE_MODE_UC) !=3D =
1 &&
> +           !HAS_LLC(i915)) {
>                  ret =3D -EFAULT;
>                  goto err_unpin;
>          }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm=
/i915/gem/i915_gem_object.c
> index d77a375871b7..2d3a58c62122 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -45,33 +45,6 @@ static struct kmem_cache *slab_objects;
>
>  static const struct drm_gem_object_funcs i915_gem_object_funcs;
>
> -unsigned int i915_gem_get_pat_index(struct drm_i915_private *i915,
> -                                   enum i915_cache_level level)
> -{
> -       if (drm_WARN_ON(&i915->drm, level >=3D I915_MAX_CACHE_LEVEL))
> -               return 0;
> -
> -       return INTEL_INFO(i915)->cachelevel_to_pat[level];
> -}
> -
> -bool i915_gem_object_has_cache_level(const struct drm_i915_gem_object *o=
bj,
> -                                    enum i915_cache_level lvl)
> -{
> -       /*
> -        * In case the pat_index is set by user space, this kernel mode
> -        * driver should leave the coherency to be managed by user space,
> -        * simply return true here.
> -        */
> -       if (obj->pat_set_by_user)
> -               return true;
> -
> -       /*
> -        * Otherwise the pat_index should have been converted from cache_=
level
> -        * so that the following comparison is valid.
> -        */
> -       return obj->pat_index =3D=3D i915_gem_get_pat_index(obj_to_i915(o=
bj), lvl);
> -}
> -
>  struct drm_i915_gem_object *i915_gem_object_alloc(void)
>  {
>          struct drm_i915_gem_object *obj;
> @@ -144,30 +117,70 @@ void __i915_gem_object_fini(struct drm_i915_gem_obj=
ect *obj)
>          dma_resv_fini(&obj->base._resv);
>  }
>
> +int i915_gem_object_has_cache_mode(const struct drm_i915_gem_object *obj=
,
> +                                  enum i915_cache_mode mode)
> +{
> +       struct drm_i915_private *i915 =3D obj_to_i915(obj);
> +       i915_cache_t cache =3D INTEL_INFO(i915)->cache_modes[obj->pat_ind=
ex];
> +
> +       if (I915_CACHE_MODE(cache) =3D=3D mode)
> +               return 1;
> +       else if (obj->pat_set_by_user)
> +               return -1; /* Unknown, callers should assume no. */
> +       else
> +               return 0;
> +}
> +
> +static void __i915_gem_object_update_coherency(struct drm_i915_gem_objec=
t *obj)
> +{
> +       struct drm_i915_private *i915 =3D obj_to_i915(obj);
> +       i915_cache_t cache =3D INTEL_INFO(i915)->cache_modes[obj->pat_ind=
ex];
> +       unsigned int mode =3D I915_CACHE_MODE(cache);
> +
> +       if (mode =3D=3D I915_CACHE_MODE_UNKNOWN) {
> +               drm_notice_once(&i915->drm, "Undefined PAT index %u!\n",
> +                               obj->pat_index);
> +               obj->cache_coherent =3D 0;
> +       } else  if (mode !=3D I915_CACHE_MODE_UC) {
> +               obj->cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ |
> +                                     I915_BO_CACHE_COHERENT_FOR_WRITE;
> +       } else if (HAS_LLC(i915)) {
> +               obj->cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ;
> +       } else {
> +               obj->cache_coherent =3D 0;
> +       }
> +
> +       obj->cache_dirty =3D
> +               !(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE)=
 &&
> +               !IS_DGFX(i915);
> +}
> +
>  /**
>   * i915_gem_object_set_cache_coherency - Mark up the object's coherency =
levels
> - * for a given cache_level
> + * for a given caching mode
>   * @obj: #drm_i915_gem_object
> - * @cache_level: cache level
> + * @cache: cache mode
>   */
>  void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object *obj=
,
> -                                        unsigned int cache_level)
> +                                        i915_cache_t cache)
>  {
> -       struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> +       struct drm_i915_private *i915 =3D obj_to_i915(obj);
> +       int found;
>
> -       obj->pat_index =3D i915_gem_get_pat_index(i915, cache_level);
> +       found =3D i915_cache_find_pat(i915, cache);
> +       if (found < 0) {
> +               struct drm_printer p =3D
> +                       drm_err_printer("Unknown cache mode ");
>
> -       if (cache_level !=3D I915_CACHE_NONE)
> -               obj->cache_coherent =3D (I915_BO_CACHE_COHERENT_FOR_READ =
|
> -                                      I915_BO_CACHE_COHERENT_FOR_WRITE);
> -       else if (HAS_LLC(i915))
> -               obj->cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ;
> -       else
> -               obj->cache_coherent =3D 0;
> +               i915_cache_print(&p, cache);
> +               drm_puts(&p, "!\n");
>
> -       obj->cache_dirty =3D
> -               !(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE)=
 &&
> -               !IS_DGFX(i915);
> +               found =3D i915->pat_uc;
> +       }
> +
> +       obj->pat_index =3D found;
> +
> +       __i915_gem_object_update_coherency(obj);
>  }
>
>  /**
> @@ -181,24 +194,18 @@ void i915_gem_object_set_cache_coherency(struct drm=
_i915_gem_object *obj,
>  void i915_gem_object_set_pat_index(struct drm_i915_gem_object *obj,
>                                     unsigned int pat_index)
>  {
> -       struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> +       struct drm_i915_private *i915 =3D obj_to_i915(obj);
>
>          if (obj->pat_index =3D=3D pat_index)
>                  return;
>
> +       if (drm_WARN_ON_ONCE(&i915->drm,
> +                            pat_index > INTEL_INFO(i915)->max_pat_index)=
)
> +               return;
> +
>          obj->pat_index =3D pat_index;
>
> -       if (pat_index !=3D i915_gem_get_pat_index(i915, I915_CACHE_NONE))
> -               obj->cache_coherent =3D (I915_BO_CACHE_COHERENT_FOR_READ =
|
> -                                      I915_BO_CACHE_COHERENT_FOR_WRITE);
> -       else if (HAS_LLC(i915))
> -               obj->cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ;
> -       else
> -               obj->cache_coherent =3D 0;
> -
> -       obj->cache_dirty =3D
> -               !(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE)=
 &&
> -               !IS_DGFX(i915);
> +       __i915_gem_object_update_coherency(obj);
>  }
>
>  bool i915_gem_object_can_bypass_llc(struct drm_i915_gem_object *obj)
> @@ -215,6 +222,7 @@ bool i915_gem_object_can_bypass_llc(struct drm_i915_g=
em_object *obj)
>          /*
>           * Always flush cache for UMD objects at creation time.
>           */
> +       /* QQQ/FIXME why? avoidable performance penalty? */
>          if (obj->pat_set_by_user)
>                  return true;
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm=
/i915/gem/i915_gem_object.h
> index 884a17275b3a..c852e59aeef9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -13,6 +13,7 @@
>
>  #include "display/intel_frontbuffer.h"
>  #include "intel_memory_region.h"
> +#include "i915_cache.h"
>  #include "i915_gem_object_types.h"
>  #include "i915_gem_gtt.h"
>  #include "i915_gem_ww.h"
> @@ -32,10 +33,6 @@ static inline bool i915_gem_object_size_2big(u64 size)
>          return false;
>  }
>
> -unsigned int i915_gem_get_pat_index(struct drm_i915_private *i915,
> -                                   enum i915_cache_level level);
> -bool i915_gem_object_has_cache_level(const struct drm_i915_gem_object *o=
bj,
> -                                    enum i915_cache_level lvl);
>  void i915_gem_init__objects(struct drm_i915_private *i915);
>
>  void i915_objects_module_exit(void);
> @@ -764,8 +761,10 @@ int i915_gem_object_wait_moving_fence(struct drm_i91=
5_gem_object *obj,
>                                        bool intr);
>  bool i915_gem_object_has_unknown_state(struct drm_i915_gem_object *obj);
>
> +int i915_gem_object_has_cache_mode(const struct drm_i915_gem_object *obj=
,
> +                                  enum i915_cache_mode mode);
>  void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object *obj=
,
> -                                        unsigned int cache_level);
> +                                        i915_cache_t cache);
>  void i915_gem_object_set_pat_index(struct drm_i915_gem_object *obj,
>                                     unsigned int pat_index);
>  bool i915_gem_object_can_bypass_llc(struct drm_i915_gem_object *obj);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/g=
pu/drm/i915/gem/i915_gem_object_types.h
> index 8de2b91b3edf..a136d137b980 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -14,6 +14,7 @@
>  #include <uapi/drm/i915_drm.h>
>
>  #include "i915_active.h"
> +#include "i915_cache.h"
>  #include "i915_selftest.h"
>  #include "i915_vma_resource.h"
>
> @@ -116,93 +117,6 @@ struct drm_i915_gem_object_ops {
>          const char *name; /* friendly name for debug, e.g. lockdep class=
es */
>  };
>
> -/**
> - * enum i915_cache_level - The supported GTT caching values for system m=
emory
> - * pages.
> - *
> - * These translate to some special GTT PTE bits when binding pages into =
some
> - * address space. It also determines whether an object, or rather its pa=
ges are
> - * coherent with the GPU, when also reading or writing through the CPU c=
ache
> - * with those pages.
> - *
> - * Userspace can also control this through struct drm_i915_gem_caching.
> - */
> -enum i915_cache_level {
> -       /**
> -        * @I915_CACHE_NONE:
> -        *
> -        * GPU access is not coherent with the CPU cache. If the cache is=
 dirty
> -        * and we need the underlying pages to be coherent with some late=
r GPU
> -        * access then we need to manually flush the pages.
> -        *
> -        * On shared LLC platforms reads and writes through the CPU cache=
 are
> -        * still coherent even with this setting. See also
> -        * &drm_i915_gem_object.cache_coherent for more details. Due to t=
his we
> -        * should only ever use uncached for scanout surfaces, otherwise =
we end
> -        * up over-flushing in some places.
> -        *
> -        * This is the default on non-LLC platforms.
> -        */
> -       I915_CACHE_NONE =3D 0,
> -       /**
> -        * @I915_CACHE_LLC:
> -        *
> -        * GPU access is coherent with the CPU cache. If the cache is dir=
ty,
> -        * then the GPU will ensure that access remains coherent, when bo=
th
> -        * reading and writing through the CPU cache. GPU writes can dirt=
y the
> -        * CPU cache.
> -        *
> -        * Not used for scanout surfaces.
> -        *
> -        * Applies to both platforms with shared LLC(HAS_LLC), and snoopi=
ng
> -        * based platforms(HAS_SNOOP).
> -        *
> -        * This is the default on shared LLC platforms.  The only excepti=
on is
> -        * scanout objects, where the display engine is not coherent with=
 the
> -        * CPU cache. For such objects I915_CACHE_NONE or I915_CACHE_WT i=
s
> -        * automatically applied by the kernel in pin_for_display, if use=
rspace
> -        * has not done so already.
> -        */
> -       I915_CACHE_LLC,
> -       /**
> -        * @I915_CACHE_L3_LLC:
> -        *
> -        * Explicitly enable the Gfx L3 cache, with coherent LLC.
> -        *
> -        * The Gfx L3 sits between the domain specific caches, e.g
> -        * sampler/render caches, and the larger LLC. LLC is coherent wit=
h the
> -        * GPU, but L3 is only visible to the GPU, so likely needs to be =
flushed
> -        * when the workload completes.
> -        *
> -        * Not used for scanout surfaces.
> -        *
> -        * Only exposed on some gen7 + GGTT. More recent hardware has dro=
pped
> -        * this explicit setting, where it should now be enabled by defau=
lt.
> -        */
> -       I915_CACHE_L3_LLC,
> -       /**
> -        * @I915_CACHE_WT:
> -        *
> -        * Write-through. Used for scanout surfaces.
> -        *
> -        * The GPU can utilise the caches, while still having the display=
 engine
> -        * be coherent with GPU writes, as a result we don't need to flus=
h the
> -        * CPU caches when moving out of the render domain. This is the d=
efault
> -        * setting chosen by the kernel, if supported by the HW, otherwis=
e we
> -        * fallback to I915_CACHE_NONE. On the CPU side writes through th=
e CPU
> -        * cache still need to be flushed, to remain coherent with the di=
splay
> -        * engine.
> -        */
> -       I915_CACHE_WT,
> -       /**
> -        * @I915_MAX_CACHE_LEVEL:
> -        *
> -        * Mark the last entry in the enum. Used for defining cachelevel_=
to_pat
> -        * array for cache_level to pat translation table.
> -        */
> -       I915_MAX_CACHE_LEVEL,
> -};
> -
>  enum i915_map_type {
>          I915_MAP_WB =3D 0,
>          I915_MAP_WC,
> @@ -409,9 +323,7 @@ struct drm_i915_gem_object {
>           * Check for @pat_set_by_user to find out if an object has pat i=
ndex set
>           * by userspace. The ioctl's to change cache settings have also =
been
>           * disabled for the objects with pat index set by userspace. Ple=
ase don't
> -        * assume @cache_coherent having the flags set as describe here. =
A helper
> -        * function i915_gem_object_has_cache_level() provides one way to=
 bypass
> -        * the use of this field.
> +        * assume @cache_coherent having the flags set as describe here.
>           *
>           * Track whether the pages are coherent with the GPU if reading =
or
>           * writing through the CPU caches. The largely depends on the
> @@ -426,7 +338,8 @@ struct drm_i915_gem_object {
>           * i.e @cache_coherent is zero.
>           *
>           * On platforms that share the LLC with the CPU(HAS_LLC), all GT=
 memory
> -        * access will automatically snoop the CPU caches(even with CACHE=
_NONE).
> +        * access will automatically snoop the CPU caches (even with
> +        * I915_CACHE(UC)).
>           * The one exception is when dealing with the display engine, li=
ke with
>           * scanout surfaces. To handle this the kernel will always flush=
 the
>           * surface out of the CPU caches when preparing it for scanout. =
 Also
> @@ -437,8 +350,8 @@ struct drm_i915_gem_object {
>           * Something strange here is why @cache_coherent is not a simple
>           * boolean, i.e coherent vs non-coherent. The reasoning for this=
 is back
>           * to the display engine not being fully coherent. As a result s=
canout
> -        * surfaces will either be marked as I915_CACHE_NONE or I915_CACH=
E_WT.
> -        * In the case of seeing I915_CACHE_NONE the kernel makes the ass=
umption
> +        * surfaces will either be marked as I915_CACHE(UC) or I915_CACHE=
(WT).
> +        * In the case of seeing I915_CACHE(UC) the kernel makes the assu=
mption
>           * that this is likely a scanout surface, and will set @cache_co=
herent
>           * as only I915_BO_CACHE_COHERENT_FOR_READ, on platforms with th=
e shared
>           * LLC. The kernel uses this to always flush writes through the =
CPU
> @@ -447,7 +360,7 @@ struct drm_i915_gem_object {
>           * flushing the surface just before doing the scanout.  This doe=
s mean
>           * we might unnecessarily flush non-scanout objects in some plac=
es, but
>           * the default assumption is that all normal objects should be u=
sing
> -        * I915_CACHE_LLC, at least on platforms with the shared LLC.
> +        * I915_CACHE(WB), at least on platforms with the shared LLC.
>           *
>           * Supported values:
>           *
> @@ -459,13 +372,13 @@ struct drm_i915_gem_object {
>           * optimisation we try to flush any writes as early as possible =
to avoid
>           * stalling later.
>           *
> -        * Thus for scanout surfaces using I915_CACHE_NONE, on shared LLC
> +        * Thus for scanout surfaces using I915_CACHE(UC), on shared LLC
>           * platforms, we use:
>           *
>           *       cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ
>           *
>           * While for normal objects that are fully coherent, including s=
pecial
> -        * scanout surfaces marked as I915_CACHE_WT, we use:
> +        * scanout surfaces marked as I915_CACHE(WT), we use:
>           *
>           *       cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ |
>           *                        I915_BO_CACHE_COHERENT_FOR_WRITE
> @@ -492,9 +405,7 @@ struct drm_i915_gem_object {
>           * Check for @pat_set_by_user to find out if an object has pat i=
ndex set
>           * by userspace. The ioctl's to change cache settings have also =
been
>           * disabled for the objects with pat_index set by userspace. Ple=
ase don't
> -        * assume @cache_dirty is set as describe here. Also see helper f=
unction
> -        * i915_gem_object_has_cache_level() for possible ways to bypass =
the use
> -        * of this field.
> +        * assume @cache_dirty is set as describe here.
>           *
>           * Track if we are we dirty with writes through the CPU cache fo=
r this
>           * object. As a result reading directly from main memory might y=
ield
> @@ -517,7 +428,7 @@ struct drm_i915_gem_object {
>           * for both reads and writes though the CPU cache.
>           *
>           * Note that on shared LLC platforms we still apply the heavy fl=
ush for
> -        * I915_CACHE_NONE objects, under the assumption that this is goi=
ng to
> +        * I915_CACHE(UC) objects, under the assumption that this is goin=
g to
>           * be used for scanout.
>           *
>           * Update: On some hardware there is now also the 'Bypass LLC' M=
OCS
> @@ -530,15 +441,15 @@ struct drm_i915_gem_object {
>           * information leak. The driver currently ensures:
>           *
>           *   1. All userspace objects, by default, have @cache_level set=
 as
> -        *   I915_CACHE_NONE. The only exception is userptr objects, wher=
e we
> -        *   instead force I915_CACHE_LLC, but we also don't allow usersp=
ace to
> +        *   I915_CACHE(UC). The only exception is userptr objects, where=
 we
> +        *   instead force I915_CACHE(WB), but we also don't allow usersp=
ace to
>           *   ever change the @cache_level for such objects. Another spec=
ial case
>           *   is dma-buf, which doesn't rely on @cache_dirty,  but there =
we
>           *   always do a forced flush when acquiring the pages, if there=
 is a
>           *   chance that the pages can be read directly from main memory=
 with
>           *   the GPU.
>           *
> -        *   2. All I915_CACHE_NONE objects have @cache_dirty initially t=
rue.
> +        *   2. All I915_CACHE(UC) objects have @cache_dirty initially tr=
ue.
>           *
>           *   3. All swapped-out objects(i.e shmem) have @cache_dirty set=
 to
>           *   true.
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/=
i915/gem/i915_gem_shmem.c
> index 33d5d5178103..538b3029de35 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -375,7 +375,7 @@ __i915_gem_object_release_shmem(struct drm_i915_gem_o=
bject *obj,
>           * On non-LLC igfx platforms, force the flush-on-acquire if this=
 is ever
>           * swapped-in. Our async flush path is not trust worthy enough y=
et(and
>           * happens in the wrong order), and with some tricks it's concei=
vable
> -        * for userspace to change the cache-level to I915_CACHE_NONE aft=
er the
> +        * for userspace to change the cache-level to I915_CACHE(UC) afte=
r the
>           * pages are swapped-in, and since execbuf binds the object befo=
re doing
>           * the async flush, we have a race window.
>           */
> @@ -577,7 +577,7 @@ static int shmem_object_init(struct intel_memory_regi=
on *mem,
>          static struct lock_class_key lock_class;
>          struct drm_i915_private *i915 =3D mem->i915;
>          struct address_space *mapping;
> -       unsigned int cache_level;
> +       i915_cache_t cache;
>          gfp_t mask;
>          int ret;
>
> @@ -621,11 +621,11 @@ static int shmem_object_init(struct intel_memory_re=
gion *mem,
>                   * However, we maintain the display planes as UC, and so
>                   * need to rebind when first used as such.
>                   */
> -               cache_level =3D I915_CACHE_LLC;
> +               cache =3D I915_CACHE(WB);
>          else
> -               cache_level =3D I915_CACHE_NONE;
> +               cache =3D I915_CACHE(UC);
>
> -       i915_gem_object_set_cache_coherency(obj, cache_level);
> +       i915_gem_object_set_cache_coherency(obj, cache);
>
>          i915_gem_object_init_memory_region(obj, mem);
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm=
/i915/gem/i915_gem_stolen.c
> index 3b094d36a0b0..e3a3b824a536 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -563,11 +563,8 @@ static void dbg_poison(struct i915_ggtt *ggtt,
>          while (size) {
>                  void __iomem *s;
>
> -               ggtt->vm.insert_page(&ggtt->vm, addr,
> -                                    ggtt->error_capture.start,
> -                                    i915_gem_get_pat_index(ggtt->vm.i915=
,
> -                                                           I915_CACHE_NO=
NE),
> -                                    0);
> +               ggtt->vm.insert_page(&ggtt->vm, addr, ggtt->error_capture=
.start,
> +                                    ggtt->vm.i915->pat_uc, 0);
>                  mb();
>
>                  s =3D io_mapping_map_wc(&ggtt->iomap,
> @@ -679,7 +676,6 @@ static int __i915_gem_object_create_stolen(struct int=
el_memory_region *mem,
>                                             struct drm_mm_node *stolen)
>  {
>          static struct lock_class_key lock_class;
> -       unsigned int cache_level;
>          unsigned int flags;
>          int err;
>
> @@ -694,8 +690,9 @@ static int __i915_gem_object_create_stolen(struct int=
el_memory_region *mem,
>
>          obj->stolen =3D stolen;
>          obj->read_domains =3D I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;
> -       cache_level =3D HAS_LLC(mem->i915) ? I915_CACHE_LLC : I915_CACHE_=
NONE;
> -       i915_gem_object_set_cache_coherency(obj, cache_level);
> +       i915_gem_object_set_cache_coherency(obj, HAS_LLC(mem->i915) ?
> +                                                I915_CACHE(WB) :
> +                                                I915_CACHE(UC));
>
>          if (WARN_ON(!i915_gem_object_trylock(obj, NULL)))
>                  return -EBUSY;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/d=
rm/i915/gem/i915_gem_ttm_move.c
> index 7078af2f8f79..52c0273001b2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -48,14 +48,23 @@ void i915_ttm_migrate_set_ban_memcpy(bool ban)
>  }
>  #endif
>
> -static enum i915_cache_level
> -i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource =
*res,
> +static i915_cache_t
> +i915_ttm_cache(struct drm_i915_private *i915, struct ttm_resource *res,
> +              struct ttm_tt *ttm)
> +{
> +       return ((HAS_LLC(i915) || HAS_SNOOP(i915)) &&
> +               !i915_ttm_gtt_binds_lmem(res) &&
> +               ttm->caching =3D=3D ttm_cached) ? I915_CACHE(WB) : I915_C=
ACHE(UC);
> +}
> +
> +static unsigned int
> +i915_ttm_cache_pat(struct drm_i915_private *i915, struct ttm_resource *r=
es,
>                       struct ttm_tt *ttm)
>  {
>          return ((HAS_LLC(i915) || HAS_SNOOP(i915)) &&
>                  !i915_ttm_gtt_binds_lmem(res) &&
> -               ttm->caching =3D=3D ttm_cached) ? I915_CACHE_LLC :
> -               I915_CACHE_NONE;
> +               ttm->caching =3D=3D ttm_cached) ? i915->pat_wb :
> +               i915->pat_uc;
>  }
>
>  static struct intel_memory_region *
> @@ -102,8 +111,8 @@ void i915_ttm_adjust_domains_after_move(struct drm_i9=
15_gem_object *obj)
>  void i915_ttm_adjust_gem_after_move(struct drm_i915_gem_object *obj)
>  {
>          struct ttm_buffer_object *bo =3D i915_gem_to_ttm(obj);
> -       unsigned int cache_level;
>          unsigned int mem_flags;
> +       i915_cache_t cache;
>          unsigned int i;
>          int mem_type;
>
> @@ -116,13 +125,13 @@ void i915_ttm_adjust_gem_after_move(struct drm_i915=
_gem_object *obj)
>          if (!bo->resource) {
>                  mem_flags =3D I915_BO_FLAG_STRUCT_PAGE;
>                  mem_type =3D I915_PL_SYSTEM;
> -               cache_level =3D I915_CACHE_NONE;
> +               cache =3D I915_CACHE(UC);
>          } else {
>                  mem_flags =3D i915_ttm_cpu_maps_iomem(bo->resource) ? I9=
15_BO_FLAG_IOMEM :
>                          I915_BO_FLAG_STRUCT_PAGE;
>                  mem_type =3D bo->resource->mem_type;
> -               cache_level =3D i915_ttm_cache_level(to_i915(bo->base.dev=
), bo->resource,
> -                                                  bo->ttm);
> +               cache =3D i915_ttm_cache(to_i915(bo->base.dev), bo->resou=
rce,
> +                                      bo->ttm);
>          }
>
>          /*
> @@ -147,7 +156,7 @@ void i915_ttm_adjust_gem_after_move(struct drm_i915_g=
em_object *obj)
>          obj->mem_flags &=3D ~(I915_BO_FLAG_STRUCT_PAGE | I915_BO_FLAG_IO=
MEM);
>          obj->mem_flags |=3D mem_flags;
>
> -       i915_gem_object_set_cache_coherency(obj, cache_level);
> +       i915_gem_object_set_cache_coherency(obj, cache);
>  }
>
>  /**
> @@ -196,7 +205,7 @@ static struct dma_fence *i915_ttm_accel_move(struct t=
tm_buffer_object *bo,
>          struct drm_i915_gem_object *obj =3D i915_ttm_to_gem(bo);
>          struct i915_request *rq;
>          struct ttm_tt *src_ttm =3D bo->ttm;
> -       enum i915_cache_level src_level, dst_level;
> +       unsigned int src_pat, dst_pat;
>          int ret;
>
>          if (!to_gt(i915)->migrate.context || intel_gt_is_wedged(to_gt(i9=
15)))
> @@ -206,16 +215,15 @@ static struct dma_fence *i915_ttm_accel_move(struct=
 ttm_buffer_object *bo,
>          if (I915_SELFTEST_ONLY(fail_gpu_migration))
>                  clear =3D true;
>
> -       dst_level =3D i915_ttm_cache_level(i915, dst_mem, dst_ttm);
> +       dst_pat =3D i915_ttm_cache_pat(i915, dst_mem, dst_ttm);
>          if (clear) {
>                  if (bo->type =3D=3D ttm_bo_type_kernel &&
>                      !I915_SELFTEST_ONLY(fail_gpu_migration))
>                          return ERR_PTR(-EINVAL);
>
>                  intel_engine_pm_get(to_gt(i915)->migrate.context->engine=
);
> -               ret =3D intel_context_migrate_clear(to_gt(i915)->migrate.=
context, deps,
> -                                                 dst_st->sgl,
> -                                                 i915_gem_get_pat_index(=
i915, dst_level),
> +               ret =3D intel_context_migrate_clear(to_gt(i915)->migrate.=
context,
> +                                                 deps, dst_st->sgl, dst_=
pat,
>                                                    i915_ttm_gtt_binds_lme=
m(dst_mem),
>                                                    0, &rq);
>          } else {
> @@ -225,14 +233,13 @@ static struct dma_fence *i915_ttm_accel_move(struct=
 ttm_buffer_object *bo,
>                  if (IS_ERR(src_rsgt))
>                          return ERR_CAST(src_rsgt);
>
> -               src_level =3D i915_ttm_cache_level(i915, bo->resource, sr=
c_ttm);
> +               src_pat =3D i915_ttm_cache_pat(i915, bo->resource, src_tt=
m);
>                  intel_engine_pm_get(to_gt(i915)->migrate.context->engine=
);
>                  ret =3D intel_context_migrate_copy(to_gt(i915)->migrate.=
context,
>                                                   deps, src_rsgt->table.s=
gl,
> -                                                i915_gem_get_pat_index(i=
915, src_level),
> +                                                src_pat,
>                                                   i915_ttm_gtt_binds_lmem=
(bo->resource),
> -                                                dst_st->sgl,
> -                                                i915_gem_get_pat_index(i=
915, dst_level),
> +                                                dst_st->sgl, dst_pat,
>                                                   i915_ttm_gtt_binds_lmem=
(dst_mem),
>                                                   &rq);
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_userptr.c
> index 1d3ebdf4069b..7d50d43dfbfa 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -553,7 +553,7 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
>          obj->mem_flags =3D I915_BO_FLAG_STRUCT_PAGE;
>          obj->read_domains =3D I915_GEM_DOMAIN_CPU;
>          obj->write_domain =3D I915_GEM_DOMAIN_CPU;
> -       i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
> +       i915_gem_object_set_cache_coherency(obj, I915_CACHE(WB));
>
>          obj->userptr.ptr =3D args->user_ptr;
>          obj->userptr.notifier_seq =3D ULONG_MAX;
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c b/drive=
rs/gpu/drm/i915/gem/selftests/huge_gem_object.c
> index bac957755068..ad7798d34c74 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> @@ -104,7 +104,6 @@ huge_gem_object(struct drm_i915_private *i915,
>  {
>          static struct lock_class_key lock_class;
>          struct drm_i915_gem_object *obj;
> -       unsigned int cache_level;
>
>          GEM_BUG_ON(!phys_size || phys_size > dma_size);
>          GEM_BUG_ON(!IS_ALIGNED(phys_size, PAGE_SIZE));
> @@ -123,8 +122,9 @@ huge_gem_object(struct drm_i915_private *i915,
>
>          obj->read_domains =3D I915_GEM_DOMAIN_CPU;
>          obj->write_domain =3D I915_GEM_DOMAIN_CPU;
> -       cache_level =3D HAS_LLC(i915) ? I915_CACHE_LLC : I915_CACHE_NONE;
> -       i915_gem_object_set_cache_coherency(obj, cache_level);
> +       i915_gem_object_set_cache_coherency(obj, HAS_LLC(i915) ?
> +                                                I915_CACHE(WB) :
> +                                                I915_CACHE(UC));
>          obj->scratch =3D phys_size;
>
>          return obj;
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gp=
u/drm/i915/gem/selftests/huge_pages.c
> index df6c9a84252c..060830c51c2f 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -177,7 +177,6 @@ huge_pages_object(struct drm_i915_private *i915,
>  {
>          static struct lock_class_key lock_class;
>          struct drm_i915_gem_object *obj;
> -       unsigned int cache_level;
>
>          GEM_BUG_ON(!size);
>          GEM_BUG_ON(!IS_ALIGNED(size, BIT(__ffs(page_mask))));
> @@ -200,8 +199,9 @@ huge_pages_object(struct drm_i915_private *i915,
>          obj->write_domain =3D I915_GEM_DOMAIN_CPU;
>          obj->read_domains =3D I915_GEM_DOMAIN_CPU;
>
> -       cache_level =3D HAS_LLC(i915) ? I915_CACHE_LLC : I915_CACHE_NONE;
> -       i915_gem_object_set_cache_coherency(obj, cache_level);
> +       i915_gem_object_set_cache_coherency(obj, HAS_LLC(i915) ?
> +                                                I915_CACHE(WB) :
> +                                                I915_CACHE(UC));
>
>          obj->mm.page_mask =3D page_mask;
>
> @@ -354,7 +354,7 @@ fake_huge_pages_object(struct drm_i915_private *i915,=
 u64 size, bool single)
>
>          obj->write_domain =3D I915_GEM_DOMAIN_CPU;
>          obj->read_domains =3D I915_GEM_DOMAIN_CPU;
> -       obj->pat_index =3D i915_gem_get_pat_index(i915, I915_CACHE_NONE);
> +       i915_gem_object_set_cache_coherency(obj, I915_CACHE(UC));
>
>          return obj;
>  }
> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/=
gt/gen6_ppgtt.c
> index c2bdc133c89a..fb69f667652a 100644
> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> @@ -226,9 +226,7 @@ static int gen6_ppgtt_init_scratch(struct gen6_ppgtt =
*ppgtt)
>                  return ret;
>
>          vm->scratch[0]->encode =3D
> -               vm->pte_encode(px_dma(vm->scratch[0]),
> -                              i915_gem_get_pat_index(vm->i915,
> -                                                     I915_CACHE_NONE),
> +               vm->pte_encode(px_dma(vm->scratch[0]), vm->i915->pat_uc,
>                                 PTE_READ_ONLY);
>
>          vm->scratch[1] =3D vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/=
gt/gen8_ppgtt.c
> index f948d33e5ec5..bd5a7d295251 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -16,11 +16,11 @@
>  #include "intel_gtt.h"
>
>  static u64 gen8_pde_encode(const dma_addr_t addr,
> -                          const enum i915_cache_level level)
> +                          const enum i915_cache_mode cache_mode)
>  {
>          u64 pde =3D addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
>
> -       if (level !=3D I915_CACHE_NONE)
> +       if (cache_mode !=3D I915_CACHE_MODE_UC)
>                  pde |=3D PPAT_CACHED_PDE;
>          else
>                  pde |=3D PPAT_UNCACHED;
> @@ -40,16 +40,11 @@ static u64 gen8_pte_encode(dma_addr_t addr,
>          if (flags & PTE_LM)
>                  pte |=3D GEN12_PPGTT_PTE_LM;
>
> -       /*
> -        * For pre-gen12 platforms pat_index is the same as enum
> -        * i915_cache_level, so the switch-case here is still valid.
> -        * See translation table defined by LEGACY_CACHELEVEL.
> -        */
>          switch (pat_index) {
> -       case I915_CACHE_NONE:
> +       case 0:
>                  pte |=3D PPAT_UNCACHED;
>                  break;
> -       case I915_CACHE_WT:
> +       case 3:
>                  pte |=3D PPAT_DISPLAY_ELLC;
>                  break;
>          default:
> @@ -853,9 +848,7 @@ static int gen8_init_scratch(struct i915_address_spac=
e *vm)
>                  pte_flags |=3D PTE_LM;
>
>          vm->scratch[0]->encode =3D
> -               vm->pte_encode(px_dma(vm->scratch[0]),
> -                              i915_gem_get_pat_index(vm->i915,
> -                                                     I915_CACHE_NONE),
> +               vm->pte_encode(px_dma(vm->scratch[0]), vm->i915->pat_uc,
>                                 pte_flags);
>
>          for (i =3D 1; i <=3D vm->top; i++) {
> @@ -874,7 +867,7 @@ static int gen8_init_scratch(struct i915_address_spac=
e *vm)
>                  }
>
>                  fill_px(obj, vm->scratch[i - 1]->encode);
> -               obj->encode =3D gen8_pde_encode(px_dma(obj), I915_CACHE_N=
ONE);
> +               obj->encode =3D gen8_pde_encode(px_dma(obj), I915_CACHE_M=
ODE_UC);
>
>                  vm->scratch[i] =3D obj;
>          }
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/=
i915/gt/intel_engine_cs.c
> index 0aff5bb13c53..b1e846682cd9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1103,7 +1103,7 @@ static int init_status_page(struct intel_engine_cs =
*engine)
>                  return PTR_ERR(obj);
>          }
>
> -       i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
> +       i915_gem_object_set_cache_coherency(obj, I915_CACHE(WB));
>
>          vma =3D i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
>          if (IS_ERR(vma)) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index dd0ed941441a..05fafb076556 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -921,9 +921,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, =
u64 size)
>                  pte_flags |=3D PTE_LM;
>
>          ggtt->vm.scratch[0]->encode =3D
> -               ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
> -                                   i915_gem_get_pat_index(i915,
> -                                                          I915_CACHE_NON=
E),
> +               ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]), i915->pa=
t_uc,
>                                      pte_flags);
>
>          return 0;
> @@ -1013,11 +1011,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>          return ggtt_probe_common(ggtt, size);
>  }
>
> -/*
> - * For pre-gen8 platforms pat_index is the same as enum i915_cache_level=
,
> - * so the switch-case statements in these PTE encode functions are still=
 valid.
> - * See translation table LEGACY_CACHELEVEL.
> - */
>  static u64 snb_pte_encode(dma_addr_t addr,
>                            unsigned int pat_index,
>                            u32 flags)
> @@ -1025,11 +1018,11 @@ static u64 snb_pte_encode(dma_addr_t addr,
>          gen6_pte_t pte =3D GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>
>          switch (pat_index) {
> -       case I915_CACHE_L3_LLC:
> -       case I915_CACHE_LLC:
> +       case 1:
> +       case 2:
>                  pte |=3D GEN6_PTE_CACHE_LLC;
>                  break;
> -       case I915_CACHE_NONE:
> +       case 0:
>                  pte |=3D GEN6_PTE_UNCACHED;
>                  break;
>          default:
> @@ -1046,13 +1039,13 @@ static u64 ivb_pte_encode(dma_addr_t addr,
>          gen6_pte_t pte =3D GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>
>          switch (pat_index) {
> -       case I915_CACHE_L3_LLC:
> +       case 2:
>                  pte |=3D GEN7_PTE_CACHE_L3_LLC;
>                  break;
> -       case I915_CACHE_LLC:
> +       case 1:
>                  pte |=3D GEN6_PTE_CACHE_LLC;
>                  break;
> -       case I915_CACHE_NONE:
> +       case 0:
>                  pte |=3D GEN6_PTE_UNCACHED;
>                  break;
>          default:
> @@ -1071,7 +1064,7 @@ static u64 byt_pte_encode(dma_addr_t addr,
>          if (!(flags & PTE_READ_ONLY))
>                  pte |=3D BYT_PTE_WRITEABLE;
>
> -       if (pat_index !=3D I915_CACHE_NONE)
> +       if (pat_index)
>                  pte |=3D BYT_PTE_SNOOPED_BY_CPU_CACHES;
>
>          return pte;
> @@ -1083,7 +1076,7 @@ static u64 hsw_pte_encode(dma_addr_t addr,
>  {
>          gen6_pte_t pte =3D HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>
> -       if (pat_index !=3D I915_CACHE_NONE)
> +       if (pat_index)
>                  pte |=3D HSW_WB_LLC_AGE3;
>
>          return pte;
> @@ -1096,9 +1089,9 @@ static u64 iris_pte_encode(dma_addr_t addr,
>          gen6_pte_t pte =3D HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>
>          switch (pat_index) {
> -       case I915_CACHE_NONE:
> +       case 0:
>                  break;
> -       case I915_CACHE_WT:
> +       case 3:
>                  pte |=3D HSW_WT_ELLC_LLC_AGE3;
>                  break;
>          default:
> @@ -1298,9 +1291,7 @@ bool i915_ggtt_resume_vm(struct i915_address_space =
*vm)
>                   */
>                  vma->resource->bound_flags =3D 0;
>                  vma->ops->bind_vma(vm, NULL, vma->resource,
> -                                  obj ? obj->pat_index :
> -                                        i915_gem_get_pat_index(vm->i915,
> -                                                               I915_CACH=
E_NONE),
> +                                  obj ? obj->pat_index : vm->i915->pat_u=
c,
>                                     was_bound);
>
>                  if (obj) { /* only used during resume =3D> exclusive acc=
ess */
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c b/drivers/gpu/drm/=
i915/gt/intel_ggtt_gmch.c
> index 866c416afb73..fedf02c9ecb6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
> @@ -21,7 +21,7 @@ static void gmch_ggtt_insert_page(struct i915_address_s=
pace *vm,
>                                    unsigned int pat_index,
>                                    u32 unused)
>  {
> -       unsigned int flags =3D (pat_index =3D=3D I915_CACHE_NONE) ?
> +       unsigned int flags =3D (pat_index =3D=3D 0) ?
>                  AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>
>          intel_gmch_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
> @@ -32,7 +32,7 @@ static void gmch_ggtt_insert_entries(struct i915_addres=
s_space *vm,
>                                       unsigned int pat_index,
>                                       u32 unused)
>  {
> -       unsigned int flags =3D (pat_index =3D=3D I915_CACHE_NONE) ?
> +       unsigned int flags =3D (pat_index =3D=3D 0) ?
>                  AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>
>          intel_gmch_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->sta=
rt >> PAGE_SHIFT,
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/g=
t/intel_gtt.c
> index 126269a0d728..8729eb244d28 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -676,7 +676,7 @@ __vm_create_scratch_for_read(struct i915_address_spac=
e *vm, unsigned long size)
>          if (IS_ERR(obj))
>                  return ERR_CAST(obj);
>
> -       i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
> +       i915_gem_object_set_cache_coherency(obj, I915_CACHE(WB));
>
>          vma =3D i915_vma_instance(obj, vm, NULL);
>          if (IS_ERR(vma)) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/g=
t/intel_gtt.h
> index 7192a534a654..af4277c1d577 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -636,7 +636,8 @@ void
>  __set_pd_entry(struct i915_page_directory * const pd,
>                 const unsigned short idx,
>                 struct i915_page_table *pt,
> -              u64 (*encode)(const dma_addr_t, const enum i915_cache_leve=
l));
> +              u64 (*encode)(const dma_addr_t,
> +                            const enum i915_cache_mode cache_mode));
>
>  #define set_pd_entry(pd, idx, to) \
>          __set_pd_entry((pd), (idx), px_pt(to), gen8_pde_encode)
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i9=
15/gt/intel_migrate.c
> index 6023288b0e2d..81f7834cc2db 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -45,9 +45,7 @@ static void xehpsdv_toggle_pdes(struct i915_address_spa=
ce *vm,
>           * Insert a dummy PTE into every PT that will map to LMEM to ens=
ure
>           * we have a correctly setup PDE structure for later use.
>           */
> -       vm->insert_page(vm, 0, d->offset,
> -                       i915_gem_get_pat_index(vm->i915, I915_CACHE_NONE)=
,
> -                       PTE_LM);
> +       vm->insert_page(vm, 0, d->offset, vm->i915->pat_uc, PTE_LM);
>          GEM_BUG_ON(!pt->is_compact);
>          d->offset +=3D SZ_2M;
>  }
> @@ -65,9 +63,7 @@ static void xehpsdv_insert_pte(struct i915_address_spac=
e *vm,
>           * alignment is 64K underneath for the pt, and we are careful
>           * not to access the space in the void.
>           */
> -       vm->insert_page(vm, px_dma(pt), d->offset,
> -                       i915_gem_get_pat_index(vm->i915, I915_CACHE_NONE)=
,
> -                       PTE_LM);
> +       vm->insert_page(vm, px_dma(pt), d->offset, vm->i915->pat_uc, PTE_=
LM);
>          d->offset +=3D SZ_64K;
>  }
>
> @@ -77,8 +73,7 @@ static void insert_pte(struct i915_address_space *vm,
>  {
>          struct insert_pte_data *d =3D data;
>
> -       vm->insert_page(vm, px_dma(pt), d->offset,
> -                       i915_gem_get_pat_index(vm->i915, I915_CACHE_NONE)=
,
> +       vm->insert_page(vm, px_dma(pt), d->offset, vm->i915->pat_uc,
>                          i915_gem_object_is_lmem(pt->base) ? PTE_LM : 0);
>          d->offset +=3D PAGE_SIZE;
>  }
> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915=
/gt/intel_ppgtt.c
> index 436756bfbb1a..3e461d4f3693 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> @@ -98,14 +98,16 @@ void
>  __set_pd_entry(struct i915_page_directory * const pd,
>                 const unsigned short idx,
>                 struct i915_page_table * const to,
> -              u64 (*encode)(const dma_addr_t, const enum i915_cache_leve=
l))
> +              u64 (*encode)(const dma_addr_t,
> +                            const enum i915_cache_mode cache_mode))
>  {
>          /* Each thread pre-pins the pd, and we may have a thread per pde=
. */
>          GEM_BUG_ON(atomic_read(px_used(pd)) > NALLOC * I915_PDES);
>
>          atomic_inc(px_used(pd));
>          pd->entry[idx] =3D to;
> -       write_dma_entry(px_base(pd), idx, encode(px_dma(to), I915_CACHE_L=
LC));
> +       write_dma_entry(px_base(pd), idx,
> +                       encode(px_dma(to), I915_CACHE_MODE_WB));
>  }
>
>  void
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gp=
u/drm/i915/gt/intel_ring_submission.c
> index 3fd795c3263f..fc7781b47bbf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -551,7 +551,7 @@ alloc_context_vma(struct intel_engine_cs *engine)
>           * later platforms don't have L3 control bits in the PTE.
>           */
>          if (IS_IVYBRIDGE(i915))
> -               i915_gem_object_set_cache_coherency(obj, I915_CACHE_L3_LL=
C);
> +               i915_gem_object_set_cache_coherency(obj, _I915_CACHE(WB, =
L3));
>
>          vma =3D i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
>          if (IS_ERR(vma)) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i=
915/gt/intel_timeline.c
> index b9640212d659..ceb2616fb8d9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -26,7 +26,7 @@ static struct i915_vma *hwsp_alloc(struct intel_gt *gt)
>          if (IS_ERR(obj))
>                  return ERR_CAST(obj);
>
> -       i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
> +       i915_gem_object_set_cache_coherency(obj, I915_CACHE(WB));
>
>          vma =3D i915_vma_instance(obj, &gt->ggtt->vm, NULL);
>          if (IS_ERR(vma))
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/d=
rm/i915/gt/selftest_hangcheck.c
> index 8b0d84f2aad2..f0baf86b6848 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -64,7 +64,7 @@ static int hang_init(struct hang *h, struct intel_gt *g=
t)
>                  goto err_hws;
>          }
>
> -       i915_gem_object_set_cache_coherency(h->hws, I915_CACHE_LLC);
> +       i915_gem_object_set_cache_coherency(h->hws, I915_CACHE(WB));
>          vaddr =3D i915_gem_object_pin_map_unlocked(h->hws, I915_MAP_WB);
>          if (IS_ERR(vaddr)) {
>                  err =3D PTR_ERR(vaddr);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm=
/i915/gt/selftest_migrate.c
> index 3def5ca72dec..a67ede65d816 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> @@ -904,8 +904,7 @@ static int perf_clear_blt(void *arg)
>
>                  err =3D __perf_clear_blt(gt->migrate.context,
>                                         dst->mm.pages->sgl,
> -                                      i915_gem_get_pat_index(gt->i915,
> -                                                             I915_CACHE_=
NONE),
> +                                      gt->i915->pat_uc,
>                                         i915_gem_object_is_lmem(dst),
>                                         sizes[i]);
>
> @@ -995,12 +994,10 @@ static int perf_copy_blt(void *arg)
>
>                  err =3D __perf_copy_blt(gt->migrate.context,
>                                        src->mm.pages->sgl,
> -                                     i915_gem_get_pat_index(gt->i915,
> -                                                            I915_CACHE_N=
ONE),
> +                                     gt->i915->pat_uc,
>                                        i915_gem_object_is_lmem(src),
>                                        dst->mm.pages->sgl,
> -                                     i915_gem_get_pat_index(gt->i915,
> -                                                            I915_CACHE_N=
ONE),
> +                                     gt->i915->pat_uc,
>                                        i915_gem_object_is_lmem(dst),
>                                        sz);
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i=
915/gt/selftest_reset.c
> index 79aa6ac66ad2..327dc9294e0f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_reset.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
> @@ -84,11 +84,8 @@ __igt_reset_stolen(struct intel_gt *gt,
>                  void __iomem *s;
>                  void *in;
>
> -               ggtt->vm.insert_page(&ggtt->vm, dma,
> -                                    ggtt->error_capture.start,
> -                                    i915_gem_get_pat_index(gt->i915,
> -                                                           I915_CACHE_NO=
NE),
> -                                    0);
> +               ggtt->vm.insert_page(&ggtt->vm, dma, ggtt->error_capture.=
start,
> +                                    gt->i915->pat_uc, 0);
>                  mb();
>
>                  s =3D io_mapping_map_wc(&ggtt->iomap,
> @@ -127,11 +124,8 @@ __igt_reset_stolen(struct intel_gt *gt,
>                  void *in;
>                  u32 x;
>
> -               ggtt->vm.insert_page(&ggtt->vm, dma,
> -                                    ggtt->error_capture.start,
> -                                    i915_gem_get_pat_index(gt->i915,
> -                                                           I915_CACHE_NO=
NE),
> -                                    0);
> +               ggtt->vm.insert_page(&ggtt->vm, dma, ggtt->error_capture.=
start,
> +                                    gt->i915->pat_uc, 0);
>                  mb();
>
>                  s =3D io_mapping_map_wc(&ggtt->iomap,
> diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/dr=
m/i915/gt/selftest_timeline.c
> index 39c3ec12df1a..87299158815f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> @@ -837,6 +837,7 @@ static int setup_watcher(struct hwsp_watcher *w, stru=
ct intel_gt *gt,
>
>          /* keep the same cache settings as timeline */
>          i915_gem_object_set_pat_index(obj, tl->hwsp_ggtt->obj->pat_index=
);
> +
>          w->map =3D i915_gem_object_pin_map_unlocked(obj,
>                                                    page_unmask_bits(tl->h=
wsp_ggtt->obj->mm.mapping));
>          if (IS_ERR(w->map)) {
> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i91=
5/gt/selftest_tlb.c
> index 3bd6b540257b..6049f01be219 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> @@ -36,8 +36,6 @@ pte_tlbinv(struct intel_context *ce,
>             u64 length,
>             struct rnd_state *prng)
>  {
> -       const unsigned int pat_index =3D
> -               i915_gem_get_pat_index(ce->vm->i915, I915_CACHE_NONE);
>          struct drm_i915_gem_object *batch;
>          struct drm_mm_node vb_node;
>          struct i915_request *rq;
> @@ -157,7 +155,8 @@ pte_tlbinv(struct intel_context *ce,
>                  /* Flip the PTE between A and B */
>                  if (i915_gem_object_is_lmem(vb->obj))
>                          pte_flags |=3D PTE_LM;
> -               ce->vm->insert_entries(ce->vm, &vb_res, pat_index, pte_fl=
ags);
> +               ce->vm->insert_entries(ce->vm, &vb_res, ce->vm->i915->pat=
_uc,
> +                                      pte_flags);
>
>                  /* Flush the PTE update to concurrent HW */
>                  tlbinv(ce->vm, addr & -length, length);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu=
/drm/i915/gt/selftest_workarounds.c
> index 14a8b25b6204..900b4e19087f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> @@ -111,7 +111,7 @@ read_nonprivs(struct intel_context *ce)
>          if (IS_ERR(result))
>                  return result;
>
> -       i915_gem_object_set_cache_coherency(result, I915_CACHE_LLC);
> +       i915_gem_object_set_cache_coherency(result, I915_CACHE(WB));
>
>          cs =3D i915_gem_object_pin_map_unlocked(result, I915_MAP_WB);
>          if (IS_ERR(cs)) {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i91=
5/gt/uc/intel_guc.c
> index 2eb891b270ae..3a862051423c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -749,7 +749,7 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_=
guc *guc, u32 size)
>           * as WC on CPU side and UC (PAT index 2) on GPU side
>           */
>          if (IS_METEORLAKE(gt->i915))
> -               i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE)=
;
> +               i915_gem_object_set_cache_coherency(obj, I915_CACHE(UC));
>
>          vma =3D i915_vma_instance(obj, &gt->ggtt->vm, NULL);
>          if (IS_ERR(vma))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i=
915/gt/uc/intel_uc_fw.c
> index d408856ae4c0..e099414d624d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -991,14 +991,10 @@ static void uc_fw_bind_ggtt(struct intel_uc_fw *uc_=
fw)
>
>          if (ggtt->vm.raw_insert_entries)
>                  ggtt->vm.raw_insert_entries(&ggtt->vm, vma_res,
> -                                           i915_gem_get_pat_index(ggtt->=
vm.i915,
> -                                                                  I915_C=
ACHE_NONE),
> -                                           pte_flags);
> +                                           ggtt->vm.i915->pat_uc, pte_fl=
ags);
>          else
>                  ggtt->vm.insert_entries(&ggtt->vm, vma_res,
> -                                       i915_gem_get_pat_index(ggtt->vm.i=
915,
> -                                                              I915_CACHE=
_NONE),
> -                                       pte_flags);
> +                                       ggtt->vm.i915->pat_uc, pte_flags)=
;
>  }
>
>  static void uc_fw_unbind_ggtt(struct intel_uc_fw *uc_fw)
> diff --git a/drivers/gpu/drm/i915/i915_cache.c b/drivers/gpu/drm/i915/i91=
5_cache.c
> new file mode 100644
> index 000000000000..4d0033bf1658
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_cache.c
> @@ -0,0 +1,72 @@
> +/*
> + * SPDX-License-Identifier: MIT
> + *
> + * Copyright =A9 2023 Intel Corporation
> + */
> +
> +#include <drm/drm_print.h>
> +
> +#include "i915_cache.h"
> +#include "i915_drv.h"
> +
> +int i915_cache_init(struct drm_i915_private *i915)
> +{
> +       int ret;
> +
> +       ret =3D i915_cache_find_pat(i915, I915_CACHE(UC));
> +       if (ret < 0)
> +               return -ENODEV;
> +       drm_info(&i915->drm, "Using PAT index %u for uncached access\n", =
ret);
> +       i915->pat_uc =3D ret;
> +
> +       ret =3D i915_cache_find_pat(i915, I915_CACHE(WB));

For MTL, this would find pat index 0, but KMD wants pat index 3.

> +       if (ret < 0)
> +               return -ENODEV;
> +       drm_info(&i915->drm, "Using PAT index %u for write-back access\n"=
, ret);
> +       i915->pat_wb =3D ret;
> +
> +       return 0;
> +}
> +
> +int i915_cache_find_pat(struct drm_i915_private *i915, i915_cache_t cach=
e)
> +{
> +       const struct intel_device_info *info =3D INTEL_INFO(i915);
> +       int i;
> +
> +       for (i =3D 0; i < ARRAY_SIZE(info->cache_modes); i++) {
> +               if (info->cache_modes[i] =3D=3D cache)
> +                       return i;
> +       }
> +
> +       return -1;
> +}
> +
> +void i915_cache_print(struct drm_printer *p, i915_cache_t cache)
> +{
> +       const enum i915_cache_mode mode =3D I915_CACHE_MODE(cache);
> +       const unsigned long flags =3D I915_CACHE_FLAGS(cache);
> +       static const char *mode_str[] =3D {
> +               [I915_CACHE_MODE_UC] =3D "UC",
> +               [I915_CACHE_MODE_WB] =3D "WB",
> +               [I915_CACHE_MODE_WT] =3D "WT",
> +               [I915_CACHE_MODE_WC] =3D "WC",
> +       };
> +       static const char *flag_str[] =3D {
> +               [I915_CACHE_FLAG_L3] =3D "L3",
> +               [I915_CACHE_FLAG_COH1W] =3D "1-Way-Coherent",
> +               [I915_CACHE_FLAG_COH2W] =3D "2-Way-Coherent",
> +               [I915_CACHE_FLAG_CLOS1] =3D "CLOS1",
> +               [I915_CACHE_FLAG_CLOS2] =3D "CLOS2",
> +       };
> +
> +       if (mode =3D=3D I915_CACHE_MODE_UNKNOWN || mode > ARRAY_SIZE(mode=
_str)) {
> +               drm_printf(p, "0x%x", cache);
> +       } else {
> +               unsigned long bit;
> +
> +               drm_printf(p, "%s", mode_str[mode]);
> +
> +               for_each_set_bit(bit, &flags, sizeof(i915_cache_t))
> +                       drm_printf(p, "-%s", flag_str[bit]);
> +       }
> +}
> diff --git a/drivers/gpu/drm/i915/i915_cache.h b/drivers/gpu/drm/i915/i91=
5_cache.h
> new file mode 100644
> index 000000000000..ffb621d8a8a0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_cache.h
> @@ -0,0 +1,49 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2023 Intel Corporation
> + */
> +
> +#ifndef __I915_CACHE_H__
> +#define __I915_CACHE_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_printer;
> +
> +struct drm_i915_private;
> +
> +typedef u16 i915_cache_t;
> +
> +#define I915_CACHE(mode) \
> +       (i915_cache_t)(I915_CACHE_MODE_##mode)
> +
> +#define _I915_CACHE(mode, flag) \
> +       (i915_cache_t)((I915_CACHE_MODE_##mode) | \
> +                      (BIT(8 + I915_CACHE_FLAG_##flag)))
> +
> +#define I915_CACHE_MODE(cache) \
> +       (enum i915_cache_mode)(((i915_cache_t)(cache)) & 0xff)
> +#define I915_CACHE_FLAGS(cache) \
> +       (unsigned int)((((i915_cache_t)(cache) & 0xff00)) >> 16)
> +
> +/* Cache modes */
> +enum i915_cache_mode {
> +       I915_CACHE_MODE_UNKNOWN =3D 0,
> +       I915_CACHE_MODE_UC,
> +       I915_CACHE_MODE_WB,
> +       I915_CACHE_MODE_WT,
> +       I915_CACHE_MODE_WC
> +};
> +
> +/* Cache mode flag bits */
> +#define I915_CACHE_FLAG_L3     (0)
> +#define I915_CACHE_FLAG_COH1W  (1)
> +#define I915_CACHE_FLAG_COH2W  (2)
> +#define I915_CACHE_FLAG_CLOS1  (3)
> +#define I915_CACHE_FLAG_CLOS2  (4)
> +
> +int i915_cache_init(struct drm_i915_private *i915);
> +int i915_cache_find_pat(struct drm_i915_private *i915, i915_cache_t cach=
e);
> +void i915_cache_print(struct drm_printer *p, i915_cache_t cache);
> +
> +#endif /* __I915_CACHE_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index 4de44cf1026d..03d366e0bdf7 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -140,68 +140,33 @@ static const char *stringify_vma_type(const struct =
i915_vma *vma)
>          return "ppgtt";
>  }
>
> -static const char *i915_cache_level_str(struct drm_i915_gem_object *obj)
> -{
> -       struct drm_i915_private *i915 =3D obj_to_i915(obj);
> -
> -       if (IS_METEORLAKE(i915)) {
> -               switch (obj->pat_index) {
> -               case 0: return " WB";
> -               case 1: return " WT";
> -               case 2: return " UC";
> -               case 3: return " WB (1-Way Coh)";
> -               case 4: return " WB (2-Way Coh)";
> -               default: return " not defined";
> -               }
> -       } else if (IS_PONTEVECCHIO(i915)) {
> -               switch (obj->pat_index) {
> -               case 0: return " UC";
> -               case 1: return " WC";
> -               case 2: return " WT";
> -               case 3: return " WB";
> -               case 4: return " WT (CLOS1)";
> -               case 5: return " WB (CLOS1)";
> -               case 6: return " WT (CLOS2)";
> -               case 7: return " WT (CLOS2)";
> -               default: return " not defined";
> -               }
> -       } else if (GRAPHICS_VER(i915) >=3D 12) {
> -               switch (obj->pat_index) {
> -               case 0: return " WB";
> -               case 1: return " WC";
> -               case 2: return " WT";
> -               case 3: return " UC";
> -               default: return " not defined";
> -               }
> -       } else {
> -               switch (obj->pat_index) {
> -               case 0: return " UC";
> -               case 1: return HAS_LLC(i915) ?
> -                              " LLC" : " snooped";
> -               case 2: return " L3+LLC";
> -               case 3: return " WT";
> -               default: return " not defined";
> -               }
> -       }
> -}
> -
>  void
>  i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object=
 *obj)
>  {
> +       struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> +       struct drm_printer p =3D drm_seq_file_printer(m);
>          struct i915_vma *vma;
>          int pin_count =3D 0;
>
> -       seq_printf(m, "%pK: %c%c%c %8zdKiB %02x %02x %s%s%s",
> +       seq_printf(m, "%pK: %c%c%c %8zdKiB %02x %02x ",
>                     &obj->base,
>                     get_tiling_flag(obj),
>                     get_global_flag(obj),
>                     get_pin_mapped_flag(obj),
>                     obj->base.size / 1024,
>                     obj->read_domains,
> -                  obj->write_domain,
> -                  i915_cache_level_str(obj),
> -                  obj->mm.dirty ? " dirty" : "",
> -                  obj->mm.madv =3D=3D I915_MADV_DONTNEED ? " purgeable" =
: "");
> +                  obj->write_domain);
> +
> +        i915_cache_print(&p, INTEL_INFO(i915)->cache_modes[obj->pat_inde=
x]);
> +       if (obj->pat_set_by_user)
> +               drm_puts(&p, "!");
> +
> +       if (obj->mm.dirty)
> +               seq_puts(m, " dirty");
> +
> +       if (obj->mm.madv =3D=3D I915_MADV_DONTNEED)
> +               seq_puts(m, " purgeable");
> +
>          if (obj->base.name)
>                  seq_printf(m, " (name: %d)", obj->base.name);
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 294b022de22b..8663388a524f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -80,6 +80,7 @@
>  #include "soc/intel_dram.h"
>  #include "soc/intel_gmch.h"
>
> +#include "i915_cache.h"
>  #include "i915_debugfs.h"
>  #include "i915_driver.h"
>  #include "i915_drm_client.h"
> @@ -240,6 +241,10 @@ static int i915_driver_early_probe(struct drm_i915_p=
rivate *dev_priv)
>          i915_memcpy_init_early(dev_priv);
>          intel_runtime_pm_init_early(&dev_priv->runtime_pm);
>
> +       ret =3D i915_cache_init(dev_priv);
> +       if (ret < 0)
> +               return ret;
> +
>          ret =3D i915_workqueues_init(dev_priv);
>          if (ret < 0)
>                  return ret;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index a18013787c9f..462b076e2650 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -250,6 +250,9 @@ struct drm_i915_private {
>          unsigned int hpll_freq;
>          unsigned int czclk_freq;
>
> +       unsigned int pat_uc;
> +       unsigned int pat_wb;
> +
>          /**
>           * wq - Driver workqueue for GEM.
>           *
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_=
gem.c
> index b46d7a2dab1a..ef6d33c2c288 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -422,9 +422,7 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
>                          ggtt->vm.insert_page(&ggtt->vm,
>                                               i915_gem_object_get_dma_add=
ress(obj,
>                                                                          =
     offset >> PAGE_SHIFT),
> -                                            node.start,
> -                                            i915_gem_get_pat_index(i915,
> -                                                                   I915_=
CACHE_NONE), 0);
> +                                            node.start, i915->pat_uc, 0)=
;
>                  } else {
>                          page_base +=3D offset & PAGE_MASK;
>                  }
> @@ -603,9 +601,7 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *=
obj,
>                          ggtt->vm.insert_page(&ggtt->vm,
>                                               i915_gem_object_get_dma_add=
ress(obj,
>                                                                          =
     offset >> PAGE_SHIFT),
> -                                            node.start,
> -                                            i915_gem_get_pat_index(i915,
> -                                                                   I915_=
CACHE_NONE), 0);
> +                                            node.start, i915->pat_uc, 0)=
;
>                          wmb(); /* flush modifications to the GGTT (inser=
t_page) */
>                  } else {
>                          page_base +=3D offset & PAGE_MASK;
> @@ -1148,19 +1144,6 @@ int i915_gem_init(struct drm_i915_private *dev_pri=
v)
>          unsigned int i;
>          int ret;
>
> -       /*
> -        * In the proccess of replacing cache_level with pat_index a tric=
ky
> -        * dependency is created on the definition of the enum i915_cache=
_level.
> -        * in case this enum is changed, PTE encode would be broken.
> -        * Add a WARNING here. And remove when we completely quit using t=
his
> -        * enum
> -        */
> -       BUILD_BUG_ON(I915_CACHE_NONE !=3D 0 ||
> -                    I915_CACHE_LLC !=3D 1 ||
> -                    I915_CACHE_L3_LLC !=3D 2 ||
> -                    I915_CACHE_WT !=3D 3 ||
> -                    I915_MAX_CACHE_LEVEL !=3D 4);
> -
>          /* We need to fallback to 4K pages if host doesn't support huge =
gtt. */
>          if (intel_vgpu_active(dev_priv) && !intel_vgpu_has_huge_gtt(dev_=
priv))
>                  RUNTIME_INFO(dev_priv)->page_sizes =3D I915_GTT_PAGE_SIZ=
E_4K;
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915=
/i915_gpu_error.c
> index 92ca81f9feab..6a6f97aaec60 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1124,14 +1124,11 @@ i915_vma_coredump_create(const struct intel_gt *g=
t,
>                          mutex_lock(&ggtt->error_mutex);
>                          if (ggtt->vm.raw_insert_page)
>                                  ggtt->vm.raw_insert_page(&ggtt->vm, dma,=
 slot,
> -                                                        i915_gem_get_pat=
_index(gt->i915,
> -                                                                        =
       I915_CACHE_NONE),
> +                                                        ggtt->vm.i915->p=
at_uc,
>                                                           0);
>                          else
>                                  ggtt->vm.insert_page(&ggtt->vm, dma, slo=
t,
> -                                                    i915_gem_get_pat_ind=
ex(gt->i915,
> -                                                                        =
   I915_CACHE_NONE),
> -                                                    0);
> +                                                    ggtt->vm.i915->pat_u=
c, 0);
>                          mb();
>
>                          s =3D io_mapping_map_wc(&ggtt->iomap, slot, PAGE=
_SIZE);
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index dea3609fc496..c0c6248fbc78 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -32,6 +32,7 @@
>  #include "gt/intel_sa_media.h"
>  #include "gem/i915_gem_object_types.h"
>
> +#include "i915_cache.h"
>  #include "i915_driver.h"
>  #include "i915_drv.h"
>  #include "i915_pci.h"
> @@ -46,36 +47,42 @@ __diag_ignore_all("-Woverride-init", "Allow overridin=
g inherited members");
>          .__runtime.graphics.ip.ver =3D (x), \
>          .__runtime.media.ip.ver =3D (x)
>
> -#define LEGACY_CACHELEVEL \
> -       .cachelevel_to_pat =3D { \
> -               [I915_CACHE_NONE]   =3D 0, \
> -               [I915_CACHE_LLC]    =3D 1, \
> -               [I915_CACHE_L3_LLC] =3D 2, \
> -               [I915_CACHE_WT]     =3D 3, \
> +/* TODO/QQQ index 1 & 2 */
> +#define LEGACY_CACHE_MODES \
> +       .cache_modes =3D { \
> +               [0] =3D I915_CACHE(UC), \
> +               [1] =3D I915_CACHE(WB), \
> +               [2] =3D _I915_CACHE(WB, L3), \
> +               [3] =3D I915_CACHE(WT), \
>          }
>
> -#define TGL_CACHELEVEL \
> -       .cachelevel_to_pat =3D { \
> -               [I915_CACHE_NONE]   =3D 3, \
> -               [I915_CACHE_LLC]    =3D 0, \
> -               [I915_CACHE_L3_LLC] =3D 0, \
> -               [I915_CACHE_WT]     =3D 2, \
> +#define GEN12_CACHE_MODES \
> +       .cache_modes =3D { \
> +               [0] =3D I915_CACHE(WB), \
> +               [1] =3D I915_CACHE(WC), \
> +               [2] =3D I915_CACHE(WT), \
> +               [3] =3D I915_CACHE(UC), \
>          }
>
> -#define PVC_CACHELEVEL \
> -       .cachelevel_to_pat =3D { \
> -               [I915_CACHE_NONE]   =3D 0, \
> -               [I915_CACHE_LLC]    =3D 3, \
> -               [I915_CACHE_L3_LLC] =3D 3, \
> -               [I915_CACHE_WT]     =3D 2, \
> +#define PVC_CACHE_MODES \
> +       .cache_modes =3D { \
> +               [0] =3D I915_CACHE(UC), \
> +               [1] =3D I915_CACHE(WC), \
> +               [2] =3D I915_CACHE(WT), \
> +               [3] =3D I915_CACHE(WB), \
> +               [4] =3D _I915_CACHE(WT, CLOS1), \
> +               [5] =3D _I915_CACHE(WB, CLOS1), \
> +               [6] =3D _I915_CACHE(WT, CLOS2), \
> +               [7] =3D _I915_CACHE(WB, CLOS2), \
>          }
>
> -#define MTL_CACHELEVEL \
> -       .cachelevel_to_pat =3D { \
> -               [I915_CACHE_NONE]   =3D 2, \
> -               [I915_CACHE_LLC]    =3D 3, \
> -               [I915_CACHE_L3_LLC] =3D 3, \
> -               [I915_CACHE_WT]     =3D 1, \
> +#define MTL_CACHE_MODES \
> +       .cache_modes =3D { \
> +               [0] =3D I915_CACHE(WB), \
> +               [1] =3D I915_CACHE(WT), \
> +               [2] =3D I915_CACHE(UC), \
> +               [3] =3D _I915_CACHE(WB, COH1W), \
> +               [4] =3D _I915_CACHE(WB, COH2W), \
>          }
>
>  /* Keep in gen based order, and chronological order within a gen */
> @@ -100,7 +107,7 @@ __diag_ignore_all("-Woverride-init", "Allow overridin=
g inherited members");
>          .max_pat_index =3D 3, \
>          GEN_DEFAULT_PAGE_SIZES, \
>          GEN_DEFAULT_REGIONS, \
> -       LEGACY_CACHELEVEL
> +       LEGACY_CACHE_MODES
>
>  #define I845_FEATURES \
>          GEN(2), \
> @@ -115,7 +122,7 @@ __diag_ignore_all("-Woverride-init", "Allow overridin=
g inherited members");
>          .max_pat_index =3D 3, \
>          GEN_DEFAULT_PAGE_SIZES, \
>          GEN_DEFAULT_REGIONS, \
> -       LEGACY_CACHELEVEL
> +       LEGACY_CACHE_MODES
>
>  static const struct intel_device_info i830_info =3D {
>          I830_FEATURES,
> @@ -148,7 +155,7 @@ static const struct intel_device_info i865g_info =3D =
{
>          .max_pat_index =3D 3, \
>          GEN_DEFAULT_PAGE_SIZES, \
>          GEN_DEFAULT_REGIONS, \
> -       LEGACY_CACHELEVEL
> +       LEGACY_CACHE_MODES
>
>  static const struct intel_device_info i915g_info =3D {
>          GEN3_FEATURES,
> @@ -211,7 +218,7 @@ static const struct intel_device_info pnv_m_info =3D =
{
>          .max_pat_index =3D 3, \
>          GEN_DEFAULT_PAGE_SIZES, \
>          GEN_DEFAULT_REGIONS, \
> -       LEGACY_CACHELEVEL
> +       LEGACY_CACHE_MODES
>
>  static const struct intel_device_info i965g_info =3D {
>          GEN4_FEATURES,
> @@ -255,7 +262,7 @@ static const struct intel_device_info gm45_info =3D {
>          .max_pat_index =3D 3, \
>          GEN_DEFAULT_PAGE_SIZES, \
>          GEN_DEFAULT_REGIONS, \
> -       LEGACY_CACHELEVEL
> +       LEGACY_CACHE_MODES
>
>  static const struct intel_device_info ilk_d_info =3D {
>          GEN5_FEATURES,
> @@ -285,7 +292,7 @@ static const struct intel_device_info ilk_m_info =3D =
{
>          .__runtime.ppgtt_size =3D 31, \
>          GEN_DEFAULT_PAGE_SIZES, \
>          GEN_DEFAULT_REGIONS, \
> -       LEGACY_CACHELEVEL
> +       LEGACY_CACHE_MODES
>
>  #define SNB_D_PLATFORM \
>          GEN6_FEATURES, \
> @@ -333,7 +340,7 @@ static const struct intel_device_info snb_m_gt2_info =
=3D {
>          .__runtime.ppgtt_size =3D 31, \
>          GEN_DEFAULT_PAGE_SIZES, \
>          GEN_DEFAULT_REGIONS, \
> -       LEGACY_CACHELEVEL
> +       LEGACY_CACHE_MODES
>
>  #define IVB_D_PLATFORM \
>          GEN7_FEATURES, \
> @@ -390,7 +397,7 @@ static const struct intel_device_info vlv_info =3D {
>          .platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
>          GEN_DEFAULT_PAGE_SIZES,
>          GEN_DEFAULT_REGIONS,
> -       LEGACY_CACHELEVEL,
> +       LEGACY_CACHE_MODES
>  };
>
>  #define G75_FEATURES  \
> @@ -476,7 +483,7 @@ static const struct intel_device_info chv_info =3D {
>          .has_coherent_ggtt =3D false,
>          GEN_DEFAULT_PAGE_SIZES,
>          GEN_DEFAULT_REGIONS,
> -       LEGACY_CACHELEVEL,
> +       LEGACY_CACHE_MODES
>  };
>
>  #define GEN9_DEFAULT_PAGE_SIZES \
> @@ -539,7 +546,7 @@ static const struct intel_device_info skl_gt4_info =
=3D {
>          .max_pat_index =3D 3, \
>          GEN9_DEFAULT_PAGE_SIZES, \
>          GEN_DEFAULT_REGIONS, \
> -       LEGACY_CACHELEVEL
> +       LEGACY_CACHE_MODES
>
>  static const struct intel_device_info bxt_info =3D {
>          GEN9_LP_FEATURES,
> @@ -643,7 +650,7 @@ static const struct intel_device_info jsl_info =3D {
>  #define GEN12_FEATURES \
>          GEN11_FEATURES, \
>          GEN(12), \
> -       TGL_CACHELEVEL, \
> +       GEN12_CACHE_MODES, \
>          .has_global_mocs =3D 1, \
>          .has_pxp =3D 1, \
>          .max_pat_index =3D 3
> @@ -711,7 +718,7 @@ static const struct intel_device_info adl_p_info =3D =
{
>          .__runtime.graphics.ip.ver =3D 12, \
>          .__runtime.graphics.ip.rel =3D 50, \
>          XE_HP_PAGE_SIZES, \
> -       TGL_CACHELEVEL, \
> +       GEN12_CACHE_MODES, \
>          .dma_mask_size =3D 46, \
>          .has_3d_pipeline =3D 1, \
>          .has_64bit_reloc =3D 1, \
> @@ -806,7 +813,7 @@ static const struct intel_device_info pvc_info =3D {
>                  BIT(VCS0) |
>                  BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3),
>          .require_force_probe =3D 1,
> -       PVC_CACHELEVEL,
> +       PVC_CACHE_MODES
>  };
>
>  static const struct intel_gt_definition xelpmp_extra_gt[] =3D {
> @@ -841,7 +848,7 @@ static const struct intel_device_info mtl_info =3D {
>          .memory_regions =3D REGION_SMEM | REGION_STOLEN_LMEM,
>          .platform_engine_mask =3D BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
>          .require_force_probe =3D 1,
> -       MTL_CACHELEVEL,
> +       MTL_CACHE_MODES
>  };
>
>  #undef PLATFORM
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915=
_perf.c
> index 0a111b281578..1b8e067f37dd 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1861,7 +1861,7 @@ static int alloc_oa_buffer(struct i915_perf_stream =
*stream)
>                  return PTR_ERR(bo);
>          }
>
> -       i915_gem_object_set_cache_coherency(bo, I915_CACHE_LLC);
> +       i915_gem_object_set_cache_coherency(bo, I915_CACHE(WB));
>
>          /* PreHSW required 512K alignment, HSW requires 16M */
>          vma =3D i915_vma_instance(bo, &gt->ggtt->vm, NULL);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index dbfe6443457b..f48a21895a85 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -27,6 +27,8 @@
>
>  #include <uapi/drm/i915_drm.h>
>
> +#include "i915_cache.h"
> +
>  #include "intel_step.h"
>
>  #include "gt/intel_engine_types.h"
> @@ -243,8 +245,8 @@ struct intel_device_info {
>           */
>          const struct intel_runtime_info __runtime;
>
> -       u32 cachelevel_to_pat[I915_MAX_CACHE_LEVEL];
> -       u32 max_pat_index;
> +       i915_cache_t cache_modes[9];

I was commenting on the array size here. It's probably better to make it 16
because there are 4 PAT index bits defined in the PTE. Indices above max_pa=
t_index
are not used, but theoretically new mode could be added. Well, it's up to y=
ou,
not likely to happen anyway.


-Fei

> +       unsigned int max_pat_index;
>  };
>
>  struct intel_driver_caps {
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/=
i915/selftests/i915_gem.c
> index 61da4ed9d521..e620f73793a5 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
> @@ -57,10 +57,7 @@ static void trash_stolen(struct drm_i915_private *i915=
)
>                  u32 __iomem *s;
>                  int x;
>
> -               ggtt->vm.insert_page(&ggtt->vm, dma, slot,
> -                                    i915_gem_get_pat_index(i915,
> -                                                           I915_CACHE_NO=
NE),
> -                                    0);
> +               ggtt->vm.insert_page(&ggtt->vm, dma, slot, i915->pat_uc, =
0);
>
>                  s =3D io_mapping_map_atomic_wc(&ggtt->iomap, slot);
>                  for (x =3D 0; x < PAGE_SIZE / sizeof(u32); x++) {
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gp=
u/drm/i915/selftests/i915_gem_evict.c
> index f8fe3681c3dc..862d3ba0e025 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> @@ -246,7 +246,7 @@ static int igt_evict_for_cache_color(void *arg)
>          struct drm_mm_node target =3D {
>                  .start =3D I915_GTT_PAGE_SIZE * 2,
>                  .size =3D I915_GTT_PAGE_SIZE,
> -               .color =3D i915_gem_get_pat_index(gt->i915, I915_CACHE_LL=
C),
> +               .color =3D I915_CACHE(WB),
>          };
>          struct drm_i915_gem_object *obj;
>          struct i915_vma *vma;
> @@ -267,7 +267,7 @@ static int igt_evict_for_cache_color(void *arg)
>                  err =3D PTR_ERR(obj);
>                  goto cleanup;
>          }
> -       i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
> +       i915_gem_object_set_cache_coherency(obj, I915_CACHE(WB));
>          quirk_add(obj, &objects);
>
>          vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0,
> @@ -283,7 +283,7 @@ static int igt_evict_for_cache_color(void *arg)
>                  err =3D PTR_ERR(obj);
>                  goto cleanup;
>          }
> -       i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
> +       i915_gem_object_set_cache_coherency(obj, I915_CACHE(WB));
>          quirk_add(obj, &objects);
>
>          /* Neighbouring; same colour - should fit */
> @@ -309,7 +309,7 @@ static int igt_evict_for_cache_color(void *arg)
>          /* Attempt to remove the first *pinned* vma, by removing the (em=
pty)
>           * neighbour -- this should fail.
>           */
> -       target.color =3D i915_gem_get_pat_index(gt->i915, I915_CACHE_L3_L=
LC);
> +       target.color =3D _I915_CACHE(WB, L3);
>
>          mutex_lock(&ggtt->vm.mutex);
>          err =3D i915_gem_evict_for_node(&ggtt->vm, NULL, &target, 0);
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/=
drm/i915/selftests/i915_gem_gtt.c
> index 5c397a2df70e..a24585784f75 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -135,7 +135,7 @@ fake_dma_object(struct drm_i915_private *i915, u64 si=
ze)
>
>          obj->write_domain =3D I915_GEM_DOMAIN_CPU;
>          obj->read_domains =3D I915_GEM_DOMAIN_CPU;
> -       obj->pat_index =3D i915_gem_get_pat_index(i915, I915_CACHE_NONE);
> +       obj->pat_index =3D i915->pat_uc;
>
>          /* Preallocate the "backing storage" */
>          if (i915_gem_object_pin_pages_unlocked(obj))
> @@ -358,10 +358,8 @@ static int lowlevel_hole(struct i915_address_space *=
vm,
>                          mock_vma_res->start =3D addr;
>
>                          with_intel_runtime_pm(vm->gt->uncore->rpm, waker=
ef)
> -                         vm->insert_entries(vm, mock_vma_res,
> -                                            i915_gem_get_pat_index(vm->i=
915,
> -                                                                   I915_=
CACHE_NONE),
> -                                            0);
> +                               vm->insert_entries(vm, mock_vma_res,
> +                                                  vm->i915->pat_uc, 0);
>                  }
>                  count =3D n;
>
> @@ -1379,10 +1377,7 @@ static int igt_ggtt_page(void *arg)
>
>                  ggtt->vm.insert_page(&ggtt->vm,
>                                       i915_gem_object_get_dma_address(obj=
, 0),
> -                                    offset,
> -                                    i915_gem_get_pat_index(i915,
> -                                                           I915_CACHE_NO=
NE),
> -                                    0);
> +                                    offset, ggtt->vm.i915->pat_uc, 0);
>          }
>
>          order =3D i915_random_order(count, &prng);
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/d=
rm/i915/selftests/igt_spinner.c
> index 618d9386d554..d42d1bcffe21 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -23,7 +23,7 @@ int igt_spinner_init(struct igt_spinner *spin, struct i=
ntel_gt *gt)
>                  err =3D PTR_ERR(spin->hws);
>                  goto err;
>          }
> -       i915_gem_object_set_cache_coherency(spin->hws, I915_CACHE_LLC);
> +       i915_gem_object_set_cache_coherency(spin->hws, I915_CACHE(WB));
>
>          spin->obj =3D i915_gem_object_create_internal(gt->i915, PAGE_SIZ=
E);
>          if (IS_ERR(spin->obj)) {
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drive=
rs/gpu/drm/i915/selftests/intel_memory_region.c
> index d985d9bae2e8..b82fe0ef8cd7 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -1070,9 +1070,7 @@ static int igt_lmem_write_cpu(void *arg)
>          /* Put the pages into a known state -- from the gpu for added fu=
n */
>          intel_engine_pm_get(engine);
>          err =3D intel_context_migrate_clear(engine->gt->migrate.context,=
 NULL,
> -                                         obj->mm.pages->sgl,
> -                                         i915_gem_get_pat_index(i915,
> -                                                                I915_CAC=
HE_NONE),
> +                                         obj->mm.pages->sgl, i915->pat_u=
c,
>                                            true, 0xdeadbeaf, &rq);
>          if (rq) {
>                  dma_resv_add_fence(obj->base.resv, &rq->fence,
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/g=
pu/drm/i915/selftests/mock_gem_device.c
> index 12aa7fbb0748..f478a4102299 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -126,13 +126,13 @@ static const struct intel_device_info mock_info =3D=
 {
>          .memory_regions =3D REGION_SMEM,
>          .platform_engine_mask =3D BIT(0),
>
> -       /* simply use legacy cache level for mock device */
> +       /* Simply use legacy cache modes for the mock device. */
>          .max_pat_index =3D 3,
> -       .cachelevel_to_pat =3D {
> -               [I915_CACHE_NONE]   =3D 0,
> -               [I915_CACHE_LLC]    =3D 1,
> -               [I915_CACHE_L3_LLC] =3D 2,
> -               [I915_CACHE_WT]     =3D 3,
> +       .cache_modes =3D {
> +               [0] =3D I915_CACHE(UC),
> +               [1] =3D I915_CACHE(WB),
> +               [2] =3D _I915_CACHE(WB, L3),
> +               [3] =3D I915_CACHE(WT),
>          },
>  };
>
> diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/d=
rm/i915/selftests/mock_region.c
> index 6324eb32d4dd..8c16202e79cb 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_region.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_region.c
> @@ -77,7 +77,7 @@ static int mock_object_init(struct intel_memory_region =
*mem,
>
>          obj->read_domains =3D I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;
>
> -       i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
> +       i915_gem_object_set_cache_coherency(obj, I915_CACHE(UC));
>
>          i915_gem_object_init_memory_region(obj, mem);
>
> --
> 2.39.2


--_000_BYAPR11MB256721AE29EBF133E60D7CD19A2AABYAPR11MB2567namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
&gt; From: Tvrtko Ursulin &lt;tvrtko.ursulin@intel.com&gt;
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; Informal commit message for now.</div>
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; I got a bit impatient and curious to see=
 if the idea we discussed would</div>
<div class=3D"ContentPasted0">&gt; work so sketched something out. I think =
it is what I was describing back</div>
<div class=3D"ContentPasted0">&gt; then..</div>
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; So high level idea is to teach the drive=
r what caching modes are hidden</div>
<div class=3D"ContentPasted0">&gt; behind PAT indices. Given you already ha=
d that in static tables, if we</div>
<div class=3D"ContentPasted0">&gt; just turn the tables a bit around and ad=
d a driver abstraction of caching</div>
<div class=3D"ContentPasted0">&gt; modes this is what happens:</div>
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; &nbsp;* We can lose the ugly runtime i91=
5_gem_get_pat_index.</div>
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; &nbsp;* We can have a smarter i915_gem_o=
bject_has_cache_level, which now can</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp;use the above mentioned tab=
le to understand the caching modes and so</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp;does not have to pessimisti=
cally return true for _any_ input when user</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp;has set the PAT index. This=
 may improve things even for MTL.</div>
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; &nbsp;* We can simplify the debugfs prin=
tout to be platform agnostic.</div>
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; &nbsp;* We are perhaps opening the door =
to un-regress the dodgy addition</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp;made to i915_gem_object_can=
_bypass_llc? See QQQ/FIXME in the patch.</div>
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; I hope I did not forget anything, but an=
yway, please have a read and see</div>
<div class=3D"ContentPasted0">&gt; what you think. I think it has potential=
.</div>
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; Proper commit message can come later.</d=
iv>
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; Signed-off-by: Tvrtko Ursulin &lt;tvrtko=
.ursulin@intel.com&gt;</div>
<div class=3D"ContentPasted0">&gt; Cc: Fei Yang &lt;fei.yang@intel.com&gt;<=
/div>
<div class=3D"ContentPasted0">&gt; ---</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/Makefile &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; 1 +</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/display/intel=
_dpt.c &nbsp; &nbsp; &nbsp;| &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/display/intel=
_fb_pin.c &nbsp; | &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;.../drm/i915/display/intel_plane_i=
nitial.c &nbsp; &nbsp;| &nbsp; 4 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gem/i915_gem_=
domain.c &nbsp; &nbsp;| &nbsp;66 +++++-----</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gem/i915_gem_=
domain.h &nbsp; &nbsp;| &nbsp; 7 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;.../gpu/drm/i915/gem/i915_gem_exec=
buffer.c &nbsp; &nbsp;| &nbsp;13 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gem/i915_gem_=
internal.c &nbsp;| &nbsp; 6 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gem/i915_gem_=
mman.c &nbsp; &nbsp; &nbsp;| &nbsp;10 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gem/i915_gem_=
object.c &nbsp; &nbsp;| 116 +++++++++--------</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gem/i915_gem_=
object.h &nbsp; &nbsp;| &nbsp; 9 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;.../gpu/drm/i915/gem/i915_gem_obje=
ct_types.h &nbsp;| 117 +++---------------</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gem/i915_gem_=
shmem.c &nbsp; &nbsp; | &nbsp;10 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gem/i915_gem_=
stolen.c &nbsp; &nbsp;| &nbsp;13 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gem/i915_gem_=
ttm_move.c &nbsp;| &nbsp;43 ++++---</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gem/i915_gem_=
userptr.c &nbsp; | &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;.../drm/i915/gem/selftests/huge_ge=
m_object.c &nbsp;| &nbsp; 6 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;.../gpu/drm/i915/gem/selftests/hug=
e_pages.c &nbsp; | &nbsp; 8 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/gen6_ppgtt=
.c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; 4 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/gen8_ppgtt=
.c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp;19 +--</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/intel_engi=
ne_cs.c &nbsp; &nbsp; | &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/intel_ggtt=
.c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp;33 ++---</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/intel_ggtt=
_gmch.c &nbsp; &nbsp; | &nbsp; 4 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/intel_gtt.=
c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/intel_gtt.=
h &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; 3 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/intel_migr=
ate.c &nbsp; &nbsp; &nbsp; | &nbsp;11 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/intel_ppgt=
t.c &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; 6 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;.../gpu/drm/i915/gt/intel_ring_sub=
mission.c &nbsp; | &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/intel_time=
line.c &nbsp; &nbsp; &nbsp;| &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/selftest_h=
angcheck.c &nbsp;| &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/selftest_m=
igrate.c &nbsp; &nbsp;| &nbsp; 9 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/selftest_r=
eset.c &nbsp; &nbsp; &nbsp;| &nbsp;14 +--</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/selftest_t=
imeline.c &nbsp; | &nbsp; 1 +</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/selftest_t=
lb.c &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; 5 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;.../gpu/drm/i915/gt/selftest_worka=
rounds.c &nbsp; &nbsp;| &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/uc/intel_g=
uc.c &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/gt/uc/intel_u=
c_fw.c &nbsp; &nbsp; &nbsp;| &nbsp; 8 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/i915_cache.c =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;72 +++++++++++</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/i915_cache.h =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;49 ++++++++</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/i915_debugfs.=
c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;65 +++-------</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/i915_driver.c=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; 5 +</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/i915_drv.h &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; 3 +</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/i915_gem.c &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;21 +---</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/i915_gpu_erro=
r.c &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; 7 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/i915_pci.c &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;83 +++++++------</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/i915_perf.c &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/intel_device_=
info.h &nbsp; &nbsp; &nbsp;| &nbsp; 6 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/selftests/i91=
5_gem.c &nbsp; &nbsp; | &nbsp; 5 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;.../gpu/drm/i915/selftests/i915_ge=
m_evict.c &nbsp; | &nbsp; 8 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/selftests/i91=
5_gem_gtt.c | &nbsp;13 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/selftests/igt=
_spinner.c &nbsp;| &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;.../drm/i915/selftests/intel_memor=
y_region.c &nbsp;| &nbsp; 4 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;.../gpu/drm/i915/selftests/mock_ge=
m_device.c &nbsp;| &nbsp;12 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;drivers/gpu/drm/i915/selftests/moc=
k_region.c &nbsp;| &nbsp; 2 +-</div>
<div class=3D"ContentPasted0">&gt; &nbsp;54 files changed, 440 insertions(+=
), 485 deletions(-)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;create mode 100644 drivers/gpu/drm=
/i915/i915_cache.c</div>
<div class=3D"ContentPasted0">&gt; &nbsp;create mode 100644 drivers/gpu/drm=
/i915/i915_cache.h</div>
<div class=3D"ContentPasted0">&gt; </div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/Makefi=
le b/drivers/gpu/drm/i915/Makefile</div>
<div class=3D"ContentPasted0">&gt; index 2be9dd960540..2c3da8f0c78e 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/Makefile</div=
>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/Makefile</div=
>
<div class=3D"ContentPasted0">&gt; @@ -30,6 +30,7 @@ subdir-ccflags-y +=3D =
-I$(srctree)/$(src)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;# core driver code</div>
<div class=3D"ContentPasted0">&gt; &nbsp;i915-y +=3D i915_driver.o \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;i915_drm_client.o \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; i915_cache=
.o \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;i915_config.o \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;i915_getparam.o \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;i915_ioctl.o \</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/displa=
y/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c</div>
<div class=3D"ContentPasted0">&gt; index 7c5fddb203ba..5baf0d27a288 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/display/intel=
_dpt.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/display/intel=
_dpt.c</div>
<div class=3D"ContentPasted0">&gt; @@ -268,7 +268,7 @@ intel_dpt_create(str=
uct intel_framebuffer *fb)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ret =
=3D i915_gem_object_lock_interruptible(dpt_obj, NULL);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (!r=
et) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ret =3D i915_gem_object_set_cache_level(dpt_obj, I915_CACHE_NONE=
);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ret =3D i915_gem_object_set_cache(dpt_obj, I915_CACHE(UC));</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;i915_gem_object_unlock(dpt_obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (re=
t) {</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/displa=
y/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c</div>
<div class=3D"ContentPasted0">&gt; index fffd568070d4..dcf54b354a74 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/display/intel=
_fb_pin.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/display/intel=
_fb_pin.c</div>
<div class=3D"ContentPasted0">&gt; @@ -66,7 +66,7 @@ intel_pin_fb_obj_dpt(s=
truct drm_framebuffer *fb,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;continue;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ret =3D i915_gem_object_set_cache_level(obj, I915_CACHE_NONE);</=
div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ret =3D i915_gem_object_set_cache(obj, I915_CACHE(UC));</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;if (ret)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;continue;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/displa=
y/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.=
c</div>
<div class=3D"ContentPasted0">&gt; index 736072a8b2b0..9988f6562392 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/display/intel=
_plane_initial.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/display/intel=
_plane_initial.c</div>
<div class=3D"ContentPasted0">&gt; @@ -121,8 +121,8 @@ initial_plane_vma(st=
ruct drm_i915_private *i915,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * cac=
he_level during fbdev initialization. The</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * unb=
ind there would get stuck waiting for rcu.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, HAS_WT(i915) ?</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I915_CACHE_WT : I915_CACHE_NONE);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, HAS_WT(i915) ? I915_CACHE(WT) :</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; I915_CACHE(UC));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;switch=
 (plane_config-&gt;tiling) {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;case I=
915_TILING_NONE:</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c</div>
<div class=3D"ContentPasted0">&gt; index dfaaa8b66ac3..f899da2c622a 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
domain.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
domain.c</div>
<div class=3D"ContentPasted0">&gt; @@ -8,6 +8,7 @@</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;display/intel_front=
buffer.h&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;gt/intel_gt.h&quot;=
</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; +#include &quot;i915_cache.h&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_drv.h&quot;</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_gem_clflush.h&=
quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_gem_domain.h&q=
uot;</div>
<div class=3D"ContentPasted0">&gt; @@ -27,15 +28,8 @@ static bool gpu_write=
_needs_clflush(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_DGFX(i915))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return false;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* For objec=
ts created by userspace through GEM_CREATE with pat_index</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* set by se=
t_pat extension, i915_gem_object_has_cache_level() will</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* always re=
turn true, because the coherency of such object is managed</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* by usersp=
ace. Othereise the call here would fall back to checking</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* whether t=
he object is un-cached or write-through.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; return !(i915_gem=
_object_has_cache_level(obj, I915_CACHE_NONE) ||</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;i915_gem_object_has_cache_level(obj, I915_CACHE_WT));</div=
>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; return i915_gem_o=
bject_has_cache_mode(obj, I915_CACHE_MODE_UC) !=3D 1 &amp;&amp;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;i915_gem_object_has_cache_mode(obj, I915_CACHE_MODE_WT) !=3D 1;</=
div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">This logic was changed for objects with pat i=
ndex set by user here. It used to return false</div>
<div class=3D"ContentPasted0">regardless the cache mode. But now it returns=
 true if its cache mode is neither UC nor WT.
</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;bool i915_gem_cpu_write_needs_clfl=
ush(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; @@ -255,9 +249,9 @@ i915_gem_object_set_=
to_gtt_domain(struct drm_i915_gem_object *obj, bool write)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;/**</div>
<div class=3D"ContentPasted0">&gt; - * i915_gem_object_set_cache_level - Ch=
anges the cache-level of an object across all VMA.</div>
<div class=3D"ContentPasted0">&gt; + * i915_gem_object_set_cache - Changes =
the cache-level of an object across all VMA.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; * @obj: object to act on</div>
<div class=3D"ContentPasted0">&gt; - * @cache_level: new cache level to set=
 for the object</div>
<div class=3D"ContentPasted0">&gt; + * @cache: new caching mode to set for =
the object</div>
<div class=3D"ContentPasted0">&gt; &nbsp; *</div>
<div class=3D"ContentPasted0">&gt; &nbsp; * After this function returns, th=
e object will be in the new cache-level</div>
<div class=3D"ContentPasted0">&gt; &nbsp; * across all GTT and the contents=
 of the backing storage will be coherent,</div>
<div class=3D"ContentPasted0">&gt; @@ -269,19 +263,28 @@ i915_gem_object_se=
t_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; * cache coherency) and all non-MO=
CS GPU access will also be uncached so</div>
<div class=3D"ContentPasted0">&gt; &nbsp; * that all direct access to the s=
canout remains coherent.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; */</div>
<div class=3D"ContentPasted0">&gt; -int i915_gem_object_set_cache_level(str=
uct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; enum i915_cache_level cache_level)</div>
<div class=3D"ContentPasted0">&gt; +int i915_gem_object_set_cache(struct dr=
m_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_cache_t ca=
che)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; struct drm_i915_p=
rivate *i915 =3D to_i915(obj-&gt;base.dev);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int re=
t;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* For objec=
ts created by userspace through GEM_CREATE with pat_index</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* set by se=
t_pat extension, simply return 0 here without touching</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* the cache=
 setting, because such objects should have an immutable</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* cache set=
ting by desgin and always managed by userspace.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (i915_gem_obje=
ct_has_cache_level(obj, cache_level))</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; ret =3D i915_cach=
e_find_pat(i915, cache);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (ret &lt; 0) {=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; struct drm_printer p =3D</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; drm_err_printer(&quot;Attempting to =
use unknown caching mode &quot;);</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; i915_cache_print(&amp;p, cache);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; drm_puts(&amp;p, &quot;!\n&quot;);</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return -EINVAL;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; } else if (ret =
=3D=3D obj-&gt;pat_index) {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return 0;</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">We will have to do this conversion and checki=
ng again later in this</div>
<div class=3D"ContentPasted0">function when calling i915_gem_object_set_cac=
he_coherency().</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">My thought was to simply remove the use of ca=
che_level/cache and replace</div>
<div class=3D"ContentPasted0">it with pat_idex. Conversion from cache modes=
 to pat index should be done</div>
<div class=3D"ContentPasted0">before calling any function used to consume c=
ache_level/cache.</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; } else if (obj-&g=
t;pat_set_by_user) {</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">Shouldn't this if-statement be placed at the =
beginning of this function? the original</div>
<div class=3D"ContentPasted0">i915_gem_object_has_cache_level() would retur=
n true if (obj-&gt;pat_set_by_user), so the</div>
<div class=3D"ContentPasted0">function returns right away.</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; drm_notice_once(&amp;i915-&gt;drm,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;At=
tempting to change caching mode on an object with fixed PAT!\n&quot;);</div=
>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return -EINVAL;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; }</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ret =
=3D i915_gem_object_wait(obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; I915_WAIT_INTERRUPTIBLE |</div>
<div class=3D"ContentPasted0">&gt; @@ -291,7 +294,7 @@ int i915_gem_object_=
set_cache_level(struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return ret;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* Alw=
ays invalidate stale cachelines */</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, cache_level);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, cache);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;cache_dirty =3D true;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* The=
 cache-level will be applied when each vma is rebound. */</div>
<div class=3D"ContentPasted0">&gt; @@ -326,10 +329,9 @@ int i915_gem_get_ca=
ching_ioctl(struct drm_device *dev, void *data,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;goto out;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (i915_gem_obje=
ct_has_cache_level(obj, I915_CACHE_LLC) ||</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i91=
5_gem_object_has_cache_level(obj, I915_CACHE_L3_LLC))</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (i915_gem_obje=
ct_has_cache_mode(obj, I915_CACHE_MODE_WB))</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">This looks wrong, at least for MTL. Prior to =
MTL the GPU automatically snoop</div>
<div class=3D"ContentPasted0">CPU cache, but from MTL onward you have to sp=
ecify if WB or WB + 1-WAY COH is</div>
<div class=3D"ContentPasted0">needed. And for KMD, cacheable mode means WB =
+ 1-WAY COH for MTL to keep the</div>
<div class=3D"ContentPasted0">behavior consistent.</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">This used to be taken care of by i915_gem_get=
_pat_index() call. With that being</div>
<div class=3D"ContentPasted0">replaced by i915_cache_find_pat(), you would =
need to do something there. But,</div>
<div class=3D"ContentPasted0">without cachelevel_to_pat[], you might end up=
 hard coding something directly in</div>
<div class=3D"ContentPasted0">the function, and that is platform dependent.=
 hmm..., I don't really like this idea.</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">That's why I commented in v1 that we should u=
se INTEL_INFO(i915)-&gt;pat_uc/wb/wt</div>
<div class=3D"ContentPasted0">instead of enum i915_cache_level or i915_cach=
e_t.</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;args-&gt;caching =3D I915_CACHING_CACHED;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; else if (i915_gem=
_object_has_cache_level(obj, I915_CACHE_WT))</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; else if (i915_gem=
_object_has_cache_mode(obj, I915_CACHE_MODE_WT))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;args-&gt;caching =3D I915_CACHING_DISPLAY;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;else</=
div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;args-&gt;caching =3D I915_CACHING_NONE;</div>
<div class=3D"ContentPasted0">&gt; @@ -344,7 +346,7 @@ int i915_gem_set_cac=
hing_ioctl(struct drm_device *dev, void *data,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_private *i915 =3D to_i915(dev);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_gem_caching *args =3D data;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_gem_object *obj;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; enum i915_cache_l=
evel level;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_cache_t cach=
e;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int re=
t =3D 0;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_DGFX(i915))</div>
<div class=3D"ContentPasted0">&gt; @@ -355,7 +357,7 @@ int i915_gem_set_cac=
hing_ioctl(struct drm_device *dev, void *data,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;switch=
 (args-&gt;caching) {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;case I=
915_CACHING_NONE:</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; level =3D I915_CACHE_NONE;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache =3D I915_CACHE(UC);</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">For code like this, my thought was</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; level =3D I915_CACHE_NONE;</div>
<div class=3D"ContentPasted0">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; pat_index =3D INTEL_INFO(i915)-&gt;pat_uc;</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">And later the set_cache call should take pat_=
index as argument instead of cache mode.</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;case I=
915_CACHING_CACHED:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;/*</div>
<div class=3D"ContentPasted0">&gt; @@ -367,10 +369,10 @@ int i915_gem_set_c=
aching_ioctl(struct drm_device *dev, void *data,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;if (!HAS_LLC(i915) &amp;&amp; !HAS_SNOOP(i915))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return -ENODEV;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; level =3D I915_CACHE_LLC;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache =3D I915_CACHE(WB);</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; level =3D I915_CACHE_LLC;</div>
<div class=3D"ContentPasted0">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; pat_index =3D INTEL_INFO(i915)-&gt;pat_wb;</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">This should take care of the WB + 1-WAY COH i=
ssue for MTL mentioned above,</div>
<div class=3D"ContentPasted0">assuming the i915_cache_init() set pat_wb pro=
perly, and the</div>
<div class=3D"ContentPasted0">i915_gem_object_set_cache() consumes pat_inde=
x instead of cache mode.</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;case I=
915_CACHING_DISPLAY:</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; level =3D HAS_WT(i915) ? I915_CACHE_WT : I915_CACHE_NONE;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache =3D HAS_WT(i915) ? I915_CACHE(WT) : I915_CACHE(UC);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;defaul=
t:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return -EINVAL;</div>
<div class=3D"ContentPasted0">&gt; @@ -409,7 +411,7 @@ int i915_gem_set_cac=
hing_ioctl(struct drm_device *dev, void *data,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (re=
t)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;goto out;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; ret =3D i915_gem_=
object_set_cache_level(obj, level);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; ret =3D i915_gem_=
object_set_cache(obj, cache);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_g=
em_object_unlock(obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;out:</div>
<div class=3D"ContentPasted0">&gt; @@ -448,9 +450,9 @@ i915_gem_object_pin_=
to_display_plane(struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * of =
uncaching, which would allow us to flush all the LLC-cached data</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * wit=
h that bit in the PTE to main memory with just one PIPE_CONTROL.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; ret =3D i915_gem_=
object_set_cache_level(obj,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; HAS_WT(i915) ?</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I915_CACHE_WT : I915_CACHE_NONE);<=
/div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; ret =3D i915_gem_=
object_set_cache(obj,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; HAS_WT(i915) ?</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; I915_CACHE(WT) : I915_CACHE(UC));</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (re=
t)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return ERR_PTR(ret);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_domain.h b/drivers/gpu/drm/i915/gem/i915_gem_domain.h</div>
<div class=3D"ContentPasted0">&gt; index 9622df962bfc..d07926758b36 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
domain.h</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
domain.h</div>
<div class=3D"ContentPasted0">&gt; @@ -6,10 +6,11 @@</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#ifndef __I915_GEM_DOMAIN_H__</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;#define __I915_GEM_DOMAIN_H__</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; +#include &quot;i915_cache.h&quot;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; &nbsp;struct drm_i915_gem_object;</div>
<div class=3D"ContentPasted0">&gt; -enum i915_cache_level;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -int i915_gem_object_set_cache_level(str=
uct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; enum i915_cache_level cache_level);</div>
<div class=3D"ContentPasted0">&gt; +int i915_gem_object_set_cache(struct dr=
m_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_cache_t ca=
che);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#endif /* __I915_GEM_DOMAIN_H__ */=
</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c</div>
<div class=3D"ContentPasted0">&gt; index d3208a325614..ee85221fa6eb 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
execbuffer.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
execbuffer.c</div>
<div class=3D"ContentPasted0">&gt; @@ -640,15 +640,9 @@ static inline int u=
se_cpu_reloc(const struct reloc_cache *cache,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (DB=
G_FORCE_RELOC =3D=3D FORCE_GTT_RELOC)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return false;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* For objec=
ts created by userspace through GEM_CREATE with pat_index</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* set by se=
t_pat extension, i915_gem_object_has_cache_level() always</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* return tr=
ue, otherwise the call would fall back to checking whether</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* the objec=
t is un-cached.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 (cache-&gt;has_llc ||</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;obj-&gt;cache_dirty ||</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; !i915_gem_object_has_cache_level(obj, I915_CACHE_NONE));</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; i915_gem_object_has_cache_mode(obj, I915_CACHE_MODE_UC) !=3D 1);=
</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static int eb_reserve_vma(struct i=
915_execbuffer *eb,</div>
<div class=3D"ContentPasted0">&gt; @@ -1329,10 +1323,7 @@ static void *relo=
c_iomap(struct i915_vma *batch,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (dr=
m_mm_node_allocated(&amp;cache-&gt;node)) {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; i915_gem_object_get_dma_address(obj, page),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;offset,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;i915_gem_get_pat_index(ggtt-&gt;vm.i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;0);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;offset, eb-&gt;i915-&gt;pat_uc, 0);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;} else=
 {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;offset +=3D page &lt;&lt; PAGE_SHIFT;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c</div>
<div class=3D"ContentPasted0">&gt; index 6bc26b4b06b8..7e7bfe7da76f 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
internal.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
internal.c</div>
<div class=3D"ContentPasted0">&gt; @@ -142,7 +142,6 @@ __i915_gem_object_cr=
eate_internal(struct drm_i915_private *i915,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;static=
 struct lock_class_key lock_class;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_gem_object *obj;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; unsigned int cach=
e_level;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEM_BU=
G_ON(!size);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEM_BU=
G_ON(!IS_ALIGNED(size, PAGE_SIZE));</div>
<div class=3D"ContentPasted0">&gt; @@ -170,8 +169,9 @@ __i915_gem_object_cr=
eate_internal(struct drm_i915_private *i915,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;read_domains =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;write_domain =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; cache_level =3D H=
AS_LLC(i915) ? I915_CACHE_LLC : I915_CACHE_NONE;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, cache_level);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, HAS_LLC(i915) ?</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE(WB) :</div=
>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE(UC));</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 obj;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c</div>
<div class=3D"ContentPasted0">&gt; index aa4d842d4c5a..5e21aedb02d2 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
mman.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
mman.c</div>
<div class=3D"ContentPasted0">&gt; @@ -386,13 +386,11 @@ static vm_fault_t =
vm_fault_gtt(struct vm_fault *vmf)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/*</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * For=
 objects created by userspace through GEM_CREATE with pat_index</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * set=
 by set_pat extension, coherency is managed by userspace, make</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* sure we d=
on't fail handling the vm fault by calling</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* i915_gem_=
object_has_cache_level() which always return true for such</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* objects. =
Otherwise this helper function would fall back to checking</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* whether t=
he object is un-cached.</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* sure we d=
on't fail handling the vm fault by making sure that we</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* know the =
object is uncached or that we have LLC.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (!(i915_gem_ob=
ject_has_cache_level(obj, I915_CACHE_NONE) ||</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; HAS_LLC(i915))) {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (i915_gem_obje=
ct_has_cache_mode(obj, I915_CACHE_MODE_UC) !=3D 1 &amp;&amp;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; !HA=
S_LLC(i915)) {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;ret =3D -EFAULT;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;goto err_unpin;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c</div>
<div class=3D"ContentPasted0">&gt; index d77a375871b7..2d3a58c62122 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
object.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
object.c</div>
<div class=3D"ContentPasted0">&gt; @@ -45,33 +45,6 @@ static struct kmem_ca=
che *slab_objects;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static const struct drm_gem_object=
_funcs i915_gem_object_funcs;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -unsigned int i915_gem_get_pat_index(str=
uct drm_i915_private *i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; enum i915_cache_level level)</div>
<div class=3D"ContentPasted0">&gt; -{</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (drm_WARN_ON(&=
amp;i915-&gt;drm, level &gt;=3D I915_MAX_CACHE_LEVEL))</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return 0;</div>
<div class=3D"ContentPasted0">&gt; -</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; return INTEL_INFO=
(i915)-&gt;cachelevel_to_pat[level];</div>
<div class=3D"ContentPasted0">&gt; -}</div>
<div class=3D"ContentPasted0">&gt; -</div>
<div class=3D"ContentPasted0">&gt; -bool i915_gem_object_has_cache_level(co=
nst struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;enum i915_cache_level lvl)</div>
<div class=3D"ContentPasted0">&gt; -{</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* In case t=
he pat_index is set by user space, this kernel mode</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* driver sh=
ould leave the coherency to be managed by user space,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* simply re=
turn true here.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (obj-&gt;pat_s=
et_by_user)</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return true;</div>
<div class=3D"ContentPasted0">&gt; -</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* Otherwise=
 the pat_index should have been converted from cache_level</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* so that t=
he following comparison is valid.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; return obj-&gt;pa=
t_index =3D=3D i915_gem_get_pat_index(obj_to_i915(obj), lvl);</div>
<div class=3D"ContentPasted0">&gt; -}</div>
<div class=3D"ContentPasted0">&gt; -</div>
<div class=3D"ContentPasted0">&gt; &nbsp;struct drm_i915_gem_object *i915_g=
em_object_alloc(void)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_gem_object *obj;</div>
<div class=3D"ContentPasted0">&gt; @@ -144,30 +117,70 @@ void __i915_gem_ob=
ject_fini(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dma_re=
sv_fini(&amp;obj-&gt;base._resv);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; +int i915_gem_object_has_cache_mode(cons=
t struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;enum i915_cache_mode mode)</div>
<div class=3D"ContentPasted0">&gt; +{</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; struct drm_i915_p=
rivate *i915 =3D obj_to_i915(obj);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_cache_t cach=
e =3D INTEL_INFO(i915)-&gt;cache_modes[obj-&gt;pat_index];</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (I915_CACHE_MO=
DE(cache) =3D=3D mode)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return 1;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; else if (obj-&gt;=
pat_set_by_user)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return -1; /* Unknown, callers should assume no. */</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; else</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return 0;</div>
<div class=3D"ContentPasted0">&gt; +}</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +static void __i915_gem_object_update_co=
herency(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; +{</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; struct drm_i915_p=
rivate *i915 =3D obj_to_i915(obj);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_cache_t cach=
e =3D INTEL_INFO(i915)-&gt;cache_modes[obj-&gt;pat_index];</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; unsigned int mode=
 =3D I915_CACHE_MODE(cache);</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (mode =3D=3D I=
915_CACHE_MODE_UNKNOWN) {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; drm_notice_once(&amp;i915-&gt;drm, &quot;Undefined PAT index %u!=
\n&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; obj-&gt;=
pat_index);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;cache_coherent =3D 0;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; } else &nbsp;if (=
mode !=3D I915_CACHE_MODE_UC) {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ |</di=
v>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; I915_BO_CACHE_COHERENT_FOR_WRITE;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; } else if (HAS_LL=
C(i915)) {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ;</div=
>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; } else {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;cache_coherent =3D 0;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; }</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; obj-&gt;cache_dir=
ty =3D</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; !(obj-&gt;cache_coherent &amp; I915_BO_CACHE_COHERENT_FOR_WRITE)=
 &amp;&amp;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; !IS_DGFX(i915);</div>
<div class=3D"ContentPasted0">&gt; +}</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; &nbsp;/**</div>
<div class=3D"ContentPasted0">&gt; &nbsp; * i915_gem_object_set_cache_coher=
ency - Mark up the object's coherency levels</div>
<div class=3D"ContentPasted0">&gt; - * for a given cache_level</div>
<div class=3D"ContentPasted0">&gt; + * for a given caching mode</div>
<div class=3D"ContentPasted0">&gt; &nbsp; * @obj: #drm_i915_gem_object</div=
>
<div class=3D"ContentPasted0">&gt; - * @cache_level: cache level</div>
<div class=3D"ContentPasted0">&gt; + * @cache: cache mode</div>
<div class=3D"ContentPasted0">&gt; &nbsp; */</div>
<div class=3D"ContentPasted0">&gt; &nbsp;void i915_gem_object_set_cache_coh=
erency(struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;unsigned int cache_level)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;i915_cache_t cache)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; struct drm_i915_p=
rivate *i915 =3D to_i915(obj-&gt;base.dev);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; struct drm_i915_p=
rivate *i915 =3D obj_to_i915(obj);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; int found;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; obj-&gt;pat_index=
 =3D i915_gem_get_pat_index(i915, cache_level);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; found =3D i915_ca=
che_find_pat(i915, cache);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (found &lt; 0)=
 {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; struct drm_printer p =3D</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; drm_err_printer(&quot;Unknown cache =
mode &quot;);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (cache_level !=
=3D I915_CACHE_NONE)</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;cache_coherent =3D (I915_BO_CACHE_COHERENT_FOR_READ |</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;I915_BO_CACHE_COHERENT_FOR_WRITE);</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; else if (HAS_LLC(=
i915))</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ;</div=
>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; else</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;cache_coherent =3D 0;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; i915_cache_print(&amp;p, cache);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; drm_puts(&amp;p, &quot;!\n&quot;);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; obj-&gt;cache_dir=
ty =3D</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; !(obj-&gt;cache_coherent &amp; I915_BO_CACHE_COHERENT_FOR_WRITE)=
 &amp;&amp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; !IS_DGFX(i915);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; found =3D i915-&gt;pat_uc;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; }</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; obj-&gt;pat_index=
 =3D found;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; __i915_gem_object=
_update_coherency(obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;/**</div>
<div class=3D"ContentPasted0">&gt; @@ -181,24 +194,18 @@ void i915_gem_obje=
ct_set_cache_coherency(struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;void i915_gem_object_set_pat_index=
(struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; unsigned int pat_index)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; struct drm_i915_p=
rivate *i915 =3D to_i915(obj-&gt;base.dev);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; struct drm_i915_p=
rivate *i915 =3D obj_to_i915(obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (ob=
j-&gt;pat_index =3D=3D pat_index)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (drm_WARN_ON_O=
NCE(&amp;i915-&gt;drm,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pat_index &gt; I=
NTEL_INFO(i915)-&gt;max_pat_index))</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;pat_index =3D pat_index;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (pat_index !=
=3D i915_gem_get_pat_index(i915, I915_CACHE_NONE))</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;cache_coherent =3D (I915_BO_CACHE_COHERENT_FOR_READ |</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;I915_BO_CACHE_COHERENT_FOR_WRITE);</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; else if (HAS_LLC(=
i915))</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ;</div=
>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; else</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;cache_coherent =3D 0;</div>
<div class=3D"ContentPasted0">&gt; -</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; obj-&gt;cache_dir=
ty =3D</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; !(obj-&gt;cache_coherent &amp; I915_BO_CACHE_COHERENT_FOR_WRITE)=
 &amp;&amp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; !IS_DGFX(i915);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; __i915_gem_object=
_update_coherency(obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;bool i915_gem_object_can_bypass_ll=
c(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; @@ -215,6 +222,7 @@ bool i915_gem_object=
_can_bypass_llc(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/*</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Alw=
ays flush cache for UMD objects at creation time.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; /* QQQ/FIXME why?=
 avoidable performance penalty? */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (ob=
j-&gt;pat_set_by_user)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return true;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h</div>
<div class=3D"ContentPasted0">&gt; index 884a17275b3a..c852e59aeef9 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
object.h</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
object.h</div>
<div class=3D"ContentPasted0">&gt; @@ -13,6 +13,7 @@</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;display/intel_front=
buffer.h&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;intel_memory_region=
.h&quot;</div>
<div class=3D"ContentPasted0">&gt; +#include &quot;i915_cache.h&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_gem_object_typ=
es.h&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_gem_gtt.h&quot=
;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_gem_ww.h&quot;=
</div>
<div class=3D"ContentPasted0">&gt; @@ -32,10 +33,6 @@ static inline bool i9=
15_gem_object_size_2big(u64 size)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 false;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -unsigned int i915_gem_get_pat_index(str=
uct drm_i915_private *i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; enum i915_cache_level level);</div>
<div class=3D"ContentPasted0">&gt; -bool i915_gem_object_has_cache_level(co=
nst struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;enum i915_cache_level lvl);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;void i915_gem_init__objects(struct=
 drm_i915_private *i915);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;void i915_objects_module_exit(void=
);</div>
<div class=3D"ContentPasted0">&gt; @@ -764,8 +761,10 @@ int i915_gem_object=
_wait_moving_fence(struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;bool intr);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;bool i915_gem_object_has_unknown_s=
tate(struct drm_i915_gem_object *obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; +int i915_gem_object_has_cache_mode(cons=
t struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;enum i915_cache_mode mode);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;void i915_gem_object_set_cache_coh=
erency(struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;unsigned int cache_level);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;i915_cache_t cache);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;void i915_gem_object_set_pat_index=
(struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; unsigned int pat_index);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;bool i915_gem_object_can_bypass_ll=
c(struct drm_i915_gem_object *obj);</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h</d=
iv>
<div class=3D"ContentPasted0">&gt; index 8de2b91b3edf..a136d137b980 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
object_types.h</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
object_types.h</div>
<div class=3D"ContentPasted0">&gt; @@ -14,6 +14,7 @@</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &lt;uapi/drm/i915_drm.h&g=
t;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_active.h&quot;=
</div>
<div class=3D"ContentPasted0">&gt; +#include &quot;i915_cache.h&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_selftest.h&quo=
t;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_vma_resource.h=
&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; @@ -116,93 +117,6 @@ struct drm_i915_gem=
_object_ops {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;const =
char *name; /* friendly name for debug, e.g. lockdep classes */</div>
<div class=3D"ContentPasted0">&gt; &nbsp;};</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -/**</div>
<div class=3D"ContentPasted0">&gt; - * enum i915_cache_level - The supporte=
d GTT caching values for system memory</div>
<div class=3D"ContentPasted0">&gt; - * pages.</div>
<div class=3D"ContentPasted0">&gt; - *</div>
<div class=3D"ContentPasted0">&gt; - * These translate to some special GTT =
PTE bits when binding pages into some</div>
<div class=3D"ContentPasted0">&gt; - * address space. It also determines wh=
ether an object, or rather its pages are</div>
<div class=3D"ContentPasted0">&gt; - * coherent with the GPU, when also rea=
ding or writing through the CPU cache</div>
<div class=3D"ContentPasted0">&gt; - * with those pages.</div>
<div class=3D"ContentPasted0">&gt; - *</div>
<div class=3D"ContentPasted0">&gt; - * Userspace can also control this thro=
ugh struct drm_i915_gem_caching.</div>
<div class=3D"ContentPasted0">&gt; - */</div>
<div class=3D"ContentPasted0">&gt; -enum i915_cache_level {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /**</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* @I915_CAC=
HE_NONE:</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* GPU acces=
s is not coherent with the CPU cache. If the cache is dirty</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* and we ne=
ed the underlying pages to be coherent with some later GPU</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* access th=
en we need to manually flush the pages.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* On shared=
 LLC platforms reads and writes through the CPU cache are</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* still coh=
erent even with this setting. See also</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* &amp;drm_=
i915_gem_object.cache_coherent for more details. Due to this we</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* should on=
ly ever use uncached for scanout surfaces, otherwise we end</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* up over-f=
lushing in some places.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* This is t=
he default on non-LLC platforms.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; I915_CACHE_NONE =
=3D 0,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /**</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* @I915_CAC=
HE_LLC:</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* GPU acces=
s is coherent with the CPU cache. If the cache is dirty,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* then the =
GPU will ensure that access remains coherent, when both</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* reading a=
nd writing through the CPU cache. GPU writes can dirty the</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* CPU cache=
.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* Not used =
for scanout surfaces.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* Applies t=
o both platforms with shared LLC(HAS_LLC), and snooping</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* based pla=
tforms(HAS_SNOOP).</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* This is t=
he default on shared LLC platforms. &nbsp;The only exception is</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* scanout o=
bjects, where the display engine is not coherent with the</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* CPU cache=
. For such objects I915_CACHE_NONE or I915_CACHE_WT is</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* automatic=
ally applied by the kernel in pin_for_display, if userspace</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* has not d=
one so already.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; I915_CACHE_LLC,</=
div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /**</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* @I915_CAC=
HE_L3_LLC:</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* Explicitl=
y enable the Gfx L3 cache, with coherent LLC.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* The Gfx L=
3 sits between the domain specific caches, e.g</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* sampler/r=
ender caches, and the larger LLC. LLC is coherent with the</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* GPU, but =
L3 is only visible to the GPU, so likely needs to be flushed</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* when the =
workload completes.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* Not used =
for scanout surfaces.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* Only expo=
sed on some gen7 + GGTT. More recent hardware has dropped</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* this expl=
icit setting, where it should now be enabled by default.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; I915_CACHE_L3_LLC=
,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /**</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* @I915_CAC=
HE_WT:</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* Write-thr=
ough. Used for scanout surfaces.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* The GPU c=
an utilise the caches, while still having the display engine</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* be cohere=
nt with GPU writes, as a result we don't need to flush the</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* CPU cache=
s when moving out of the render domain. This is the default</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* setting c=
hosen by the kernel, if supported by the HW, otherwise we</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* fallback =
to I915_CACHE_NONE. On the CPU side writes through the CPU</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* cache sti=
ll need to be flushed, to remain coherent with the display</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* engine.</=
div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; I915_CACHE_WT,</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /**</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* @I915_MAX=
_CACHE_LEVEL:</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* Mark the =
last entry in the enum. Used for defining cachelevel_to_pat</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* array for=
 cache_level to pat translation table.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; I915_MAX_CACHE_LE=
VEL,</div>
<div class=3D"ContentPasted0">&gt; -};</div>
<div class=3D"ContentPasted0">&gt; -</div>
<div class=3D"ContentPasted0">&gt; &nbsp;enum i915_map_type {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_M=
AP_WB =3D 0,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_M=
AP_WC,</div>
<div class=3D"ContentPasted0">&gt; @@ -409,9 +323,7 @@ struct drm_i915_gem_=
object {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Che=
ck for @pat_set_by_user to find out if an object has pat index set</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * by =
userspace. The ioctl's to change cache settings have also been</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * dis=
abled for the objects with pat index set by userspace. Please don't</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* assume @c=
ache_coherent having the flags set as describe here. A helper</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* function =
i915_gem_object_has_cache_level() provides one way to bypass</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* the use o=
f this field.</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* assume @c=
ache_coherent having the flags set as describe here.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Tra=
ck whether the pages are coherent with the GPU if reading or</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * wri=
ting through the CPU caches. The largely depends on the</div>
<div class=3D"ContentPasted0">&gt; @@ -426,7 +338,8 @@ struct drm_i915_gem_=
object {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * i.e=
 @cache_coherent is zero.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * On =
platforms that share the LLC with the CPU(HAS_LLC), all GT memory</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* access wi=
ll automatically snoop the CPU caches(even with CACHE_NONE).</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* access wi=
ll automatically snoop the CPU caches (even with</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* I915_CACH=
E(UC)).</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * The=
 one exception is when dealing with the display engine, like with</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * sca=
nout surfaces. To handle this the kernel will always flush the</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * sur=
face out of the CPU caches when preparing it for scanout. &nbsp;Also</div>
<div class=3D"ContentPasted0">&gt; @@ -437,8 +350,8 @@ struct drm_i915_gem_=
object {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Som=
ething strange here is why @cache_coherent is not a simple</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * boo=
lean, i.e coherent vs non-coherent. The reasoning for this is back</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * to =
the display engine not being fully coherent. As a result scanout</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* surfaces =
will either be marked as I915_CACHE_NONE or I915_CACHE_WT.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* In the ca=
se of seeing I915_CACHE_NONE the kernel makes the assumption</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* surfaces =
will either be marked as I915_CACHE(UC) or I915_CACHE(WT).</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* In the ca=
se of seeing I915_CACHE(UC) the kernel makes the assumption</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * tha=
t this is likely a scanout surface, and will set @cache_coherent</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * as =
only I915_BO_CACHE_COHERENT_FOR_READ, on platforms with the shared</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * LLC=
. The kernel uses this to always flush writes through the CPU</div>
<div class=3D"ContentPasted0">&gt; @@ -447,7 +360,7 @@ struct drm_i915_gem_=
object {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * flu=
shing the surface just before doing the scanout. &nbsp;This does mean</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * we =
might unnecessarily flush non-scanout objects in some places, but</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * the=
 default assumption is that all normal objects should be using</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* I915_CACH=
E_LLC, at least on platforms with the shared LLC.</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* I915_CACH=
E(WB), at least on platforms with the shared LLC.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Sup=
ported values:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; @@ -459,13 +372,13 @@ struct drm_i915_ge=
m_object {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * opt=
imisation we try to flush any writes as early as possible to avoid</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * sta=
lling later.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* Thus for =
scanout surfaces using I915_CACHE_NONE, on shared LLC</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* Thus for =
scanout surfaces using I915_CACHE(UC), on shared LLC</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * pla=
tforms, we use:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; &nbsp; &nbsp; cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Whi=
le for normal objects that are fully coherent, including special</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* scanout s=
urfaces marked as I915_CACHE_WT, we use:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* scanout s=
urfaces marked as I915_CACHE(WT), we use:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; &nbsp; &nbsp; cache_coherent =3D I915_BO_CACHE_COHERENT_FOR_READ |</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;I915_BO_CACHE_COHERENT_FOR_WRITE</div>
<div class=3D"ContentPasted0">&gt; @@ -492,9 +405,7 @@ struct drm_i915_gem_=
object {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Che=
ck for @pat_set_by_user to find out if an object has pat index set</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * by =
userspace. The ioctl's to change cache settings have also been</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * dis=
abled for the objects with pat_index set by userspace. Please don't</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* assume @c=
ache_dirty is set as describe here. Also see helper function</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* i915_gem_=
object_has_cache_level() for possible ways to bypass the use</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* of this f=
ield.</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* assume @c=
ache_dirty is set as describe here.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Tra=
ck if we are we dirty with writes through the CPU cache for this</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * obj=
ect. As a result reading directly from main memory might yield</div>
<div class=3D"ContentPasted0">&gt; @@ -517,7 +428,7 @@ struct drm_i915_gem_=
object {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * for=
 both reads and writes though the CPU cache.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Not=
e that on shared LLC platforms we still apply the heavy flush for</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* I915_CACH=
E_NONE objects, under the assumption that this is going to</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* I915_CACH=
E(UC) objects, under the assumption that this is going to</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * be =
used for scanout.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Upd=
ate: On some hardware there is now also the 'Bypass LLC' MOCS</div>
<div class=3D"ContentPasted0">&gt; @@ -530,15 +441,15 @@ struct drm_i915_ge=
m_object {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * inf=
ormation leak. The driver currently ensures:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; 1. All userspace objects, by default, have @cache_level set as</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* &nbsp; I9=
15_CACHE_NONE. The only exception is userptr objects, where we</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* &nbsp; in=
stead force I915_CACHE_LLC, but we also don't allow userspace to</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* &nbsp; I9=
15_CACHE(UC). The only exception is userptr objects, where we</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* &nbsp; in=
stead force I915_CACHE(WB), but we also don't allow userspace to</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; ever change the @cache_level for such objects. Another special case</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; is dma-buf, which doesn't rely on @cache_dirty, &nbsp;but there we</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; always do a forced flush when acquiring the pages, if there is a</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; chance that the pages can be read directly from main memory with</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; the GPU.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* &nbsp; 2.=
 All I915_CACHE_NONE objects have @cache_dirty initially true.</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* &nbsp; 2.=
 All I915_CACHE(UC) objects have @cache_dirty initially true.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; 3. All swapped-out objects(i.e shmem) have @cache_dirty set to</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * &nb=
sp; true.</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c</div>
<div class=3D"ContentPasted0">&gt; index 33d5d5178103..538b3029de35 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
shmem.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
shmem.c</div>
<div class=3D"ContentPasted0">&gt; @@ -375,7 +375,7 @@ __i915_gem_object_re=
lease_shmem(struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * On =
non-LLC igfx platforms, force the flush-on-acquire if this is ever</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * swa=
pped-in. Our async flush path is not trust worthy enough yet(and</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * hap=
pens in the wrong order), and with some tricks it's conceivable</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* for users=
pace to change the cache-level to I915_CACHE_NONE after the</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;* for users=
pace to change the cache-level to I915_CACHE(UC) after the</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * pag=
es are swapped-in, and since execbuf binds the object before doing</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * the=
 async flush, we have a race window.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; @@ -577,7 +577,7 @@ static int shmem_obj=
ect_init(struct intel_memory_region *mem,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;static=
 struct lock_class_key lock_class;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_private *i915 =3D mem-&gt;i915;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 address_space *mapping;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; unsigned int cach=
e_level;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_cache_t cach=
e;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gfp_t =
mask;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int re=
t;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; @@ -621,11 +621,11 @@ static int shmem_o=
bject_init(struct intel_memory_region *mem,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; * However, we maintain the display planes as UC, and=
 so</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; * need to rebind when first used as such.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; */</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache_level =3D I915_CACHE_LLC;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache =3D I915_CACHE(WB);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;else</=
div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache_level =3D I915_CACHE_NONE;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache =3D I915_CACHE(UC);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, cache_level);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, cache);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_g=
em_object_init_memory_region(obj, mem);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c</div>
<div class=3D"ContentPasted0">&gt; index 3b094d36a0b0..e3a3b824a536 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
stolen.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
stolen.c</div>
<div class=3D"ContentPasted0">&gt; @@ -563,11 +563,8 @@ static void dbg_poi=
son(struct i915_ggtt *ggtt,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;while =
(size) {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;void __iomem *s;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm, addr,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;ggtt-&gt;error_capture.start,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;i915_gem_get_pat_index(ggtt-&gt;vm.i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;0);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm, addr, ggtt-&gt;error_c=
apture.start,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;ggtt-&gt;vm.i915-&gt;pat_uc, 0);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;mb();</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;s =3D io_mapping_map_wc(&amp;ggtt-&gt;iomap,</div>
<div class=3D"ContentPasted0">&gt; @@ -679,7 +676,6 @@ static int __i915_ge=
m_object_create_stolen(struct intel_memory_region *mem,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; struct drm_mm_node *stolen)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;static=
 struct lock_class_key lock_class;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; unsigned int cach=
e_level;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;unsign=
ed int flags;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int er=
r;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; @@ -694,8 +690,9 @@ static int __i915_ge=
m_object_create_stolen(struct intel_memory_region *mem,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;stolen =3D stolen;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;read_domains =3D I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; cache_level =3D H=
AS_LLC(mem-&gt;i915) ? I915_CACHE_LLC : I915_CACHE_NONE;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, cache_level);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, HAS_LLC(mem-&gt;i915) ?</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE(WB) :</div=
>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE(UC));</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (WA=
RN_ON(!i915_gem_object_trylock(obj, NULL)))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return -EBUSY;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c</div>
<div class=3D"ContentPasted0">&gt; index 7078af2f8f79..52c0273001b2 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
ttm_move.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
ttm_move.c</div>
<div class=3D"ContentPasted0">&gt; @@ -48,14 +48,23 @@ void i915_ttm_migrat=
e_set_ban_memcpy(bool ban)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#endif</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -static enum i915_cache_level</div>
<div class=3D"ContentPasted0">&gt; -i915_ttm_cache_level(struct drm_i915_pr=
ivate *i915, struct ttm_resource *res,</div>
<div class=3D"ContentPasted0">&gt; +static i915_cache_t</div>
<div class=3D"ContentPasted0">&gt; +i915_ttm_cache(struct drm_i915_private =
*i915, struct ttm_resource *res,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;struct ttm_tt *ttm)</div>
<div class=3D"ContentPasted0">&gt; +{</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; return ((HAS_LLC(=
i915) || HAS_SNOOP(i915)) &amp;&amp;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; !i915_ttm_gtt_binds_lmem(res) &amp;&amp;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ttm-&gt;caching =3D=3D ttm_cached) ? I915_CACHE(WB) : I915_CACHE=
(UC);</div>
<div class=3D"ContentPasted0">&gt; +}</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +static unsigned int</div>
<div class=3D"ContentPasted0">&gt; +i915_ttm_cache_pat(struct drm_i915_priv=
ate *i915, struct ttm_resource *res,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; struct ttm_tt *ttm)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 ((HAS_LLC(i915) || HAS_SNOOP(i915)) &amp;&amp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;!i915_ttm_gtt_binds_lmem(res) &amp;&amp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ttm-&gt;caching =3D=3D ttm_cached) ? I915_CACHE_LLC :</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; I915_CACHE_NONE;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ttm-&gt;caching =3D=3D ttm_cached) ? i915-&gt;pat_wb :</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; i915-&gt;pat_uc;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static struct intel_memory_region =
*</div>
<div class=3D"ContentPasted0">&gt; @@ -102,8 +111,8 @@ void i915_ttm_adjust=
_domains_after_move(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;void i915_ttm_adjust_gem_after_mov=
e(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 ttm_buffer_object *bo =3D i915_gem_to_ttm(obj);</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; unsigned int cach=
e_level;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;unsign=
ed int mem_flags;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_cache_t cach=
e;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;unsign=
ed int i;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int me=
m_type;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; @@ -116,13 +125,13 @@ void i915_ttm_adju=
st_gem_after_move(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (!b=
o-&gt;resource) {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;mem_flags =3D I915_BO_FLAG_STRUCT_PAGE;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;mem_type =3D I915_PL_SYSTEM;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache_level =3D I915_CACHE_NONE;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache =3D I915_CACHE(UC);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;} else=
 {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;mem_flags =3D i915_ttm_cpu_maps_iomem(bo-&gt;resource=
) ? I915_BO_FLAG_IOMEM :</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_BO_FLAG_STRUCT_PAGE;=
</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;mem_type =3D bo-&gt;resource-&gt;mem_type;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache_level =3D i915_ttm_cache_level(to_i915(bo-&gt;base.dev), b=
o-&gt;resource,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;bo-&gt;ttm);</=
div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; cache =3D i915_ttm_cache(to_i915(bo-&gt;base.dev), bo-&gt;resour=
ce,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;bo-&gt;ttm);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/*</di=
v>
<div class=3D"ContentPasted0">&gt; @@ -147,7 +156,7 @@ void i915_ttm_adjust=
_gem_after_move(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;mem_flags &amp;=3D ~(I915_BO_FLAG_STRUCT_PAGE | I915_BO_FLAG_IOMEM);</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;mem_flags |=3D mem_flags;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, cache_level);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, cache);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;/**</div>
<div class=3D"ContentPasted0">&gt; @@ -196,7 +205,7 @@ static struct dma_fe=
nce *i915_ttm_accel_move(struct ttm_buffer_object *bo,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_gem_object *obj =3D i915_ttm_to_gem(bo);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 i915_request *rq;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 ttm_tt *src_ttm =3D bo-&gt;ttm;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; enum i915_cache_l=
evel src_level, dst_level;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; unsigned int src_=
pat, dst_pat;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int re=
t;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (!t=
o_gt(i915)-&gt;migrate.context || intel_gt_is_wedged(to_gt(i915)))</div>
<div class=3D"ContentPasted0">&gt; @@ -206,16 +215,15 @@ static struct dma_=
fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (I9=
15_SELFTEST_ONLY(fail_gpu_migration))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;clear =3D true;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; dst_level =3D i91=
5_ttm_cache_level(i915, dst_mem, dst_ttm);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; dst_pat =3D i915_=
ttm_cache_pat(i915, dst_mem, dst_ttm);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (cl=
ear) {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;if (bo-&gt;type =3D=3D ttm_bo_type_kernel &amp;&amp;<=
/div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;!I915_SELFTEST_ONLY(fail_gpu_migration)=
)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return ERR_PTR(-EINVAL);<=
/div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;intel_engine_pm_get(to_gt(i915)-&gt;migrate.context-&=
gt;engine);</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ret =3D intel_context_migrate_clear(to_gt(i915)-&gt;migrate.cont=
ext, deps,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dst_st-&gt;sgl,</div=
>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_gem_get_pat_ind=
ex(i915, dst_level),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ret =3D intel_context_migrate_clear(to_gt(i915)-&gt;migrate.cont=
ext,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; deps, dst_st-&gt;sgl=
, dst_pat,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_ttm_=
gtt_binds_lmem(dst_mem),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0, &amp;r=
q);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;} else=
 {</div>
<div class=3D"ContentPasted0">&gt; @@ -225,14 +233,13 @@ static struct dma_=
fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;if (IS_ERR(src_rsgt))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return ERR_CAST(src_rsgt)=
;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; src_level =3D i915_ttm_cache_level(i915, bo-&gt;resource, src_tt=
m);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; src_pat =3D i915_ttm_cache_pat(i915, bo-&gt;resource, src_ttm);<=
/div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;intel_engine_pm_get(to_gt(i915)-&gt;migrate.context-&=
gt;engine);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;ret =3D intel_context_migrate_copy(to_gt(i915)-&gt;mi=
grate.context,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; deps, src_rsgt-=
&gt;table.sgl,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_gem_get_pat_inde=
x(i915, src_level),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;src_pat,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_ttm_gtt_bi=
nds_lmem(bo-&gt;resource),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dst_st-&gt;sgl,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_gem_get_pat_inde=
x(i915, dst_level),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dst_st-&gt;sgl, dst_p=
at,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_ttm_gtt_bi=
nds_lmem(dst_mem),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &amp;rq);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/i9=
15_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c</div>
<div class=3D"ContentPasted0">&gt; index 1d3ebdf4069b..7d50d43dfbfa 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_=
userptr.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_=
userptr.c</div>
<div class=3D"ContentPasted0">&gt; @@ -553,7 +553,7 @@ i915_gem_userptr_ioc=
tl(struct drm_device *dev,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;mem_flags =3D I915_BO_FLAG_STRUCT_PAGE;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;read_domains =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;write_domain =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE_LLC);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE(WB));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;userptr.ptr =3D args-&gt;user_ptr;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;userptr.notifier_seq =3D ULONG_MAX;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/se=
lftests/huge_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/huge_gem_obj=
ect.c</div>
<div class=3D"ContentPasted0">&gt; index bac957755068..ad7798d34c74 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/selftests=
/huge_gem_object.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/selftests=
/huge_gem_object.c</div>
<div class=3D"ContentPasted0">&gt; @@ -104,7 +104,6 @@ huge_gem_object(stru=
ct drm_i915_private *i915,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;static=
 struct lock_class_key lock_class;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_gem_object *obj;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; unsigned int cach=
e_level;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEM_BU=
G_ON(!phys_size || phys_size &gt; dma_size);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEM_BU=
G_ON(!IS_ALIGNED(phys_size, PAGE_SIZE));</div>
<div class=3D"ContentPasted0">&gt; @@ -123,8 +122,9 @@ huge_gem_object(stru=
ct drm_i915_private *i915,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;read_domains =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;write_domain =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; cache_level =3D H=
AS_LLC(i915) ? I915_CACHE_LLC : I915_CACHE_NONE;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, cache_level);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, HAS_LLC(i915) ?</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE(WB) :</div=
>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE(UC));</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;scratch =3D phys_size;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 obj;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gem/se=
lftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c</div=
>
<div class=3D"ContentPasted0">&gt; index df6c9a84252c..060830c51c2f 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gem/selftests=
/huge_pages.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gem/selftests=
/huge_pages.c</div>
<div class=3D"ContentPasted0">&gt; @@ -177,7 +177,6 @@ huge_pages_object(st=
ruct drm_i915_private *i915,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;static=
 struct lock_class_key lock_class;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_gem_object *obj;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; unsigned int cach=
e_level;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEM_BU=
G_ON(!size);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEM_BU=
G_ON(!IS_ALIGNED(size, BIT(__ffs(page_mask))));</div>
<div class=3D"ContentPasted0">&gt; @@ -200,8 +199,9 @@ huge_pages_object(st=
ruct drm_i915_private *i915,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;write_domain =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;read_domains =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; cache_level =3D H=
AS_LLC(i915) ? I915_CACHE_LLC : I915_CACHE_NONE;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, cache_level);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, HAS_LLC(i915) ?</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE(WB) :</div=
>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE(UC));</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;mm.page_mask =3D page_mask;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; @@ -354,7 +354,7 @@ fake_huge_pages_obje=
ct(struct drm_i915_private *i915, u64 size, bool single)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;write_domain =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;read_domains =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; obj-&gt;pat_index=
 =3D i915_gem_get_pat_index(i915, I915_CACHE_NONE);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE(UC));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 obj;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/gen=
6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c</div>
<div class=3D"ContentPasted0">&gt; index c2bdc133c89a..fb69f667652a 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt=
.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt=
.c</div>
<div class=3D"ContentPasted0">&gt; @@ -226,9 +226,7 @@ static int gen6_ppgt=
t_init_scratch(struct gen6_ppgtt *ppgtt)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return ret;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vm-&gt=
;scratch[0]-&gt;encode =3D</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; vm-&gt;pte_encode(px_dma(vm-&gt;scratch[0]),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_gem_=
get_pat_index(vm-&gt;i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I915_C=
ACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; vm-&gt;pte_encode(px_dma(vm-&gt;scratch[0]), vm-&gt;i915-&gt;pat=
_uc,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PTE=
_READ_ONLY);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vm-&gt=
;scratch[1] =3D vm-&gt;alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/gen=
8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c</div>
<div class=3D"ContentPasted0">&gt; index f948d33e5ec5..bd5a7d295251 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt=
.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt=
.c</div>
<div class=3D"ContentPasted0">&gt; @@ -16,11 +16,11 @@</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;intel_gtt.h&quot;</=
div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static u64 gen8_pde_encode(const d=
ma_addr_t addr,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;const enum i915_cache_l=
evel level)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;const enum i915_cache_m=
ode cache_mode)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;u64 pd=
e =3D addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (level !=3D I9=
15_CACHE_NONE)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (cache_mode !=
=3D I915_CACHE_MODE_UC)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pde |=3D PPAT_CACHED_PDE;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;else</=
div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pde |=3D PPAT_UNCACHED;</div>
<div class=3D"ContentPasted0">&gt; @@ -40,16 +40,11 @@ static u64 gen8_pte_=
encode(dma_addr_t addr,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (fl=
ags &amp; PTE_LM)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D GEN12_PPGTT_PTE_LM;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* For pre-g=
en12 platforms pat_index is the same as enum</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* i915_cach=
e_level, so the switch-case here is still valid.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* See trans=
lation table defined by LEGACY_CACHELEVEL.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;switch=
 (pat_index) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; case I915_CACHE_N=
ONE:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; case 0:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D PPAT_UNCACHED;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; case I915_CACHE_W=
T:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; case 3:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D PPAT_DISPLAY_ELLC;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;defaul=
t:</div>
<div class=3D"ContentPasted0">&gt; @@ -853,9 +848,7 @@ static int gen8_init=
_scratch(struct i915_address_space *vm)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte_flags |=3D PTE_LM;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vm-&gt=
;scratch[0]-&gt;encode =3D</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; vm-&gt;pte_encode(px_dma(vm-&gt;scratch[0]),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_gem_=
get_pat_index(vm-&gt;i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I915_C=
ACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; vm-&gt;pte_encode(px_dma(vm-&gt;scratch[0]), vm-&gt;i915-&gt;pat=
_uc,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; pte=
_flags);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for (i=
 =3D 1; i &lt;=3D vm-&gt;top; i++) {</div>
<div class=3D"ContentPasted0">&gt; @@ -874,7 +867,7 @@ static int gen8_init=
_scratch(struct i915_address_space *vm)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;fill_px(obj, vm-&gt;scratch[i - 1]-&gt;encode);</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;encode =3D gen8_pde_encode(px_dma(obj), I915_CACHE_NONE)=
;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; obj-&gt;encode =3D gen8_pde_encode(px_dma(obj), I915_CACHE_MODE_=
UC);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;vm-&gt;scratch[i] =3D obj;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/int=
el_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c</div>
<div class=3D"ContentPasted0">&gt; index 0aff5bb13c53..b1e846682cd9 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/intel_engi=
ne_cs.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/intel_engi=
ne_cs.c</div>
<div class=3D"ContentPasted0">&gt; @@ -1103,7 +1103,7 @@ static int init_st=
atus_page(struct intel_engine_cs *engine)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return PTR_ERR(obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE_LLC);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE(WB));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vma =
=3D i915_vma_instance(obj, &amp;engine-&gt;gt-&gt;ggtt-&gt;vm, NULL);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(vma)) {</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/int=
el_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c</div>
<div class=3D"ContentPasted0">&gt; index dd0ed941441a..05fafb076556 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/intel_ggtt=
.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/intel_ggtt=
.c</div>
<div class=3D"ContentPasted0">&gt; @@ -921,9 +921,7 @@ static int ggtt_prob=
e_common(struct i915_ggtt *ggtt, u64 size)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte_flags |=3D PTE_LM;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ggtt-&=
gt;vm.scratch[0]-&gt;encode =3D</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ggtt-&gt;vm.pte_encode(px_dma(ggtt-&gt;vm.scratch[0]),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; i915_gem_get_pat_index(i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ggtt-&gt;vm.pte_encode(px_dma(ggtt-&gt;vm.scratch[0]), i915-&gt;=
pat_uc,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;pte_flags);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 0;</div>
<div class=3D"ContentPasted0">&gt; @@ -1013,11 +1011,6 @@ static int gen8_g=
mch_probe(struct i915_ggtt *ggtt)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 ggtt_probe_common(ggtt, size);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -/*</div>
<div class=3D"ContentPasted0">&gt; - * For pre-gen8 platforms pat_index is =
the same as enum i915_cache_level,</div>
<div class=3D"ContentPasted0">&gt; - * so the switch-case statements in the=
se PTE encode functions are still valid.</div>
<div class=3D"ContentPasted0">&gt; - * See translation table LEGACY_CACHELE=
VEL.</div>
<div class=3D"ContentPasted0">&gt; - */</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static u64 snb_pte_encode(dma_addr=
_t addr,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;unsigned int pat_i=
ndex,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;u32 flags)</div>
<div class=3D"ContentPasted0">&gt; @@ -1025,11 +1018,11 @@ static u64 snb_p=
te_encode(dma_addr_t addr,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gen6_p=
te_t pte =3D GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;switch=
 (pat_index) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; case I915_CACHE_L=
3_LLC:</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; case I915_CACHE_L=
LC:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; case 1:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; case 2:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D GEN6_PTE_CACHE_LLC;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; case I915_CACHE_N=
ONE:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; case 0:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D GEN6_PTE_UNCACHED;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;defaul=
t:</div>
<div class=3D"ContentPasted0">&gt; @@ -1046,13 +1039,13 @@ static u64 ivb_p=
te_encode(dma_addr_t addr,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gen6_p=
te_t pte =3D GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;switch=
 (pat_index) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; case I915_CACHE_L=
3_LLC:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; case 2:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D GEN7_PTE_CACHE_L3_LLC;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; case I915_CACHE_L=
LC:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; case 1:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D GEN6_PTE_CACHE_LLC;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; case I915_CACHE_N=
ONE:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; case 0:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D GEN6_PTE_UNCACHED;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;defaul=
t:</div>
<div class=3D"ContentPasted0">&gt; @@ -1071,7 +1064,7 @@ static u64 byt_pte=
_encode(dma_addr_t addr,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (!(=
flags &amp; PTE_READ_ONLY))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D BYT_PTE_WRITEABLE;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (pat_index !=
=3D I915_CACHE_NONE)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (pat_index)</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D BYT_PTE_SNOOPED_BY_CPU_CACHES;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 pte;</div>
<div class=3D"ContentPasted0">&gt; @@ -1083,7 +1076,7 @@ static u64 hsw_pte=
_encode(dma_addr_t addr,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gen6_p=
te_t pte =3D HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (pat_index !=
=3D I915_CACHE_NONE)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (pat_index)</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D HSW_WB_LLC_AGE3;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 pte;</div>
<div class=3D"ContentPasted0">&gt; @@ -1096,9 +1089,9 @@ static u64 iris_pt=
e_encode(dma_addr_t addr,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gen6_p=
te_t pte =3D HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;switch=
 (pat_index) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; case I915_CACHE_N=
ONE:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; case 0:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; case I915_CACHE_W=
T:</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; case 3:</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;pte |=3D HSW_WT_ELLC_LLC_AGE3;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;break;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;defaul=
t:</div>
<div class=3D"ContentPasted0">&gt; @@ -1298,9 +1291,7 @@ bool i915_ggtt_res=
ume_vm(struct i915_address_space *vm)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;vma-&gt;resource-&gt;bound_flags =3D 0;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;vma-&gt;ops-&gt;bind_vma(vm, NULL, vma-&gt;resource,<=
/div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;obj ? obj-&gt;pat_index :</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;i915_gem_get_pat_index(vm-&gt;i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;obj ? obj-&gt;pat_index : vm-&gt;i915-&gt;pat_uc,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; was_bound);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;if (obj) { /* only used during resume =3D&gt; exclusi=
ve access */</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/int=
el_ggtt_gmch.c b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c</div>
<div class=3D"ContentPasted0">&gt; index 866c416afb73..fedf02c9ecb6 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/intel_ggtt=
_gmch.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/intel_ggtt=
_gmch.c</div>
<div class=3D"ContentPasted0">&gt; @@ -21,7 +21,7 @@ static void gmch_ggtt_=
insert_page(struct i915_address_space *vm,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;unsigned int pat_index,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;u32 unused)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; unsigned int flag=
s =3D (pat_index =3D=3D I915_CACHE_NONE) ?</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; unsigned int flag=
s =3D (pat_index =3D=3D 0) ?</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;intel_=
gmch_gtt_insert_page(addr, offset &gt;&gt; PAGE_SHIFT, flags);</div>
<div class=3D"ContentPasted0">&gt; @@ -32,7 +32,7 @@ static void gmch_ggtt_=
insert_entries(struct i915_address_space *vm,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; unsigned int pat_index,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; u32 unused)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; unsigned int flag=
s =3D (pat_index =3D=3D I915_CACHE_NONE) ?</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; unsigned int flag=
s =3D (pat_index =3D=3D 0) ?</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;intel_=
gmch_gtt_insert_sg_entries(vma_res-&gt;bi.pages, vma_res-&gt;start &gt;&gt;=
 PAGE_SHIFT,</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/int=
el_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c</div>
<div class=3D"ContentPasted0">&gt; index 126269a0d728..8729eb244d28 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/intel_gtt.=
c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/intel_gtt.=
c</div>
<div class=3D"ContentPasted0">&gt; @@ -676,7 +676,7 @@ __vm_create_scratch_=
for_read(struct i915_address_space *vm, unsigned long size)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(obj))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return ERR_CAST(obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHING_CACHED);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE(WB));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vma =
=3D i915_vma_instance(obj, vm, NULL);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(vma)) {</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/int=
el_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h</div>
<div class=3D"ContentPasted0">&gt; index 7192a534a654..af4277c1d577 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/intel_gtt.=
h</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/intel_gtt.=
h</div>
<div class=3D"ContentPasted0">&gt; @@ -636,7 +636,8 @@ void</div>
<div class=3D"ContentPasted0">&gt; &nbsp;__set_pd_entry(struct i915_page_di=
rectory * const pd,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; const unsigned short idx,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; struct i915_page_table *pt,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;u64 (*encode)(const dma_addr_t, const enum i915_cache_level));</d=
iv>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;u64 (*encode)(const dma_addr_t,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;const enum i915_=
cache_mode cache_mode));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#define set_pd_entry(pd, idx, to) =
\</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;__set_=
pd_entry((pd), (idx), px_pt(to), gen8_pde_encode)</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/int=
el_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c</div>
<div class=3D"ContentPasted0">&gt; index 6023288b0e2d..81f7834cc2db 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/intel_migr=
ate.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/intel_migr=
ate.c</div>
<div class=3D"ContentPasted0">&gt; @@ -45,9 +45,7 @@ static void xehpsdv_to=
ggle_pdes(struct i915_address_space *vm,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Ins=
ert a dummy PTE into every PT that will map to LMEM to ensure</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * we =
have a correctly setup PDE structure for later use.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; vm-&gt;insert_pag=
e(vm, 0, d-&gt;offset,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_gem_get_pat_index(vm-&gt;i915, =
I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PTE_LM);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; vm-&gt;insert_pag=
e(vm, 0, d-&gt;offset, vm-&gt;i915-&gt;pat_uc, PTE_LM);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEM_BU=
G_ON(!pt-&gt;is_compact);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d-&gt;=
offset +=3D SZ_2M;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; @@ -65,9 +63,7 @@ static void xehpsdv_in=
sert_pte(struct i915_address_space *vm,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * ali=
gnment is 64K underneath for the pt, and we are careful</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * not=
 to access the space in the void.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; vm-&gt;insert_pag=
e(vm, px_dma(pt), d-&gt;offset,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_gem_get_pat_index(vm-&gt;i915, =
I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PTE_LM);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; vm-&gt;insert_pag=
e(vm, px_dma(pt), d-&gt;offset, vm-&gt;i915-&gt;pat_uc, PTE_LM);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d-&gt;=
offset +=3D SZ_64K;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; @@ -77,8 +73,7 @@ static void insert_pte=
(struct i915_address_space *vm,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 insert_pte_data *d =3D data;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; vm-&gt;insert_pag=
e(vm, px_dma(pt), d-&gt;offset,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_gem_get_pat_index(vm-&gt;i915, =
I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; vm-&gt;insert_pag=
e(vm, px_dma(pt), d-&gt;offset, vm-&gt;i915-&gt;pat_uc,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_gem_object_is_lmem(p=
t-&gt;base) ? PTE_LM : 0);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d-&gt;=
offset +=3D PAGE_SIZE;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/int=
el_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c</div>
<div class=3D"ContentPasted0">&gt; index 436756bfbb1a..3e461d4f3693 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/intel_ppgt=
t.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/intel_ppgt=
t.c</div>
<div class=3D"ContentPasted0">&gt; @@ -98,14 +98,16 @@ void</div>
<div class=3D"ContentPasted0">&gt; &nbsp;__set_pd_entry(struct i915_page_di=
rectory * const pd,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; const unsigned short idx,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; struct i915_page_table * const to,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;u64 (*encode)(const dma_addr_t, const enum i915_cache_level))</di=
v>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;u64 (*encode)(const dma_addr_t,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;const enum i915_=
cache_mode cache_mode))</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* Eac=
h thread pre-pins the pd, and we may have a thread per pde. */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEM_BU=
G_ON(atomic_read(px_used(pd)) &gt; NALLOC * I915_PDES);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;atomic=
_inc(px_used(pd));</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pd-&gt=
;entry[idx] =3D to;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; write_dma_entry(p=
x_base(pd), idx, encode(px_dma(to), I915_CACHE_LLC));</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; write_dma_entry(p=
x_base(pd), idx,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; encode(px_dma(to), I915_CACHE_MODE_W=
B));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;void</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/int=
el_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c</div=
>
<div class=3D"ContentPasted0">&gt; index 3fd795c3263f..fc7781b47bbf 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/intel_ring=
_submission.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/intel_ring=
_submission.c</div>
<div class=3D"ContentPasted0">&gt; @@ -551,7 +551,7 @@ alloc_context_vma(st=
ruct intel_engine_cs *engine)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * lat=
er platforms don't have L3 control bits in the PTE.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_IVYBRIDGE(i915))</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; i915_gem_object_set_cache_coherency(obj, I915_CACHE_L3_LLC);</di=
v>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; i915_gem_object_set_cache_coherency(obj, _I915_CACHE(WB, L3));</=
div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vma =
=3D i915_vma_instance(obj, &amp;engine-&gt;gt-&gt;ggtt-&gt;vm, NULL);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(vma)) {</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/int=
el_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c</div>
<div class=3D"ContentPasted0">&gt; index b9640212d659..ceb2616fb8d9 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/intel_time=
line.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/intel_time=
line.c</div>
<div class=3D"ContentPasted0">&gt; @@ -26,7 +26,7 @@ static struct i915_vma=
 *hwsp_alloc(struct intel_gt *gt)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(obj))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return ERR_CAST(obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE_LLC);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE(WB));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vma =
=3D i915_vma_instance(obj, &amp;gt-&gt;ggtt-&gt;vm, NULL);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(vma))</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/sel=
ftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c</div>
<div class=3D"ContentPasted0">&gt; index 8b0d84f2aad2..f0baf86b6848 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/selftest_h=
angcheck.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/selftest_h=
angcheck.c</div>
<div class=3D"ContentPasted0">&gt; @@ -64,7 +64,7 @@ static int hang_init(s=
truct hang *h, struct intel_gt *gt)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;goto err_hws;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(h-&gt;hws, I915_CACHE_LLC);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(h-&gt;hws, I915_CACHE(WB));</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vaddr =
=3D i915_gem_object_pin_map_unlocked(h-&gt;hws, I915_MAP_WB);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(vaddr)) {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;err =3D PTR_ERR(vaddr);</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/sel=
ftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c</div>
<div class=3D"ContentPasted0">&gt; index 3def5ca72dec..a67ede65d816 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/selftest_m=
igrate.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/selftest_m=
igrate.c</div>
<div class=3D"ContentPasted0">&gt; @@ -904,8 +904,7 @@ static int perf_clea=
r_blt(void *arg)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;err =3D __perf_clear_blt(gt-&gt;migrate.context,</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; dst-&gt;mm.pages-&gt;sgl,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;i915_gem_get_pat_index(gt-&gt;i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;gt-&gt;i915-&gt;pat_uc,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; i915_gem_object_is_lmem(dst),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; sizes[i]);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; @@ -995,12 +994,10 @@ static int perf_co=
py_blt(void *arg)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;err =3D __perf_copy_blt(gt-&gt;migrate.context,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;src-&gt;mm.pages-&gt;sgl,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; i915_gem_get_pat_index(gt-&gt;i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; gt-&gt;i915-&gt;pat_uc,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;i915_gem_object_is_lmem(src),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;dst-&gt;mm.pages-&gt;sgl,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; i915_gem_get_pat_index(gt-&gt;i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; gt-&gt;i915-&gt;pat_uc,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;i915_gem_object_is_lmem(dst),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;sz);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/sel=
ftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c</div>
<div class=3D"ContentPasted0">&gt; index 79aa6ac66ad2..327dc9294e0f 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/selftest_r=
eset.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/selftest_r=
eset.c</div>
<div class=3D"ContentPasted0">&gt; @@ -84,11 +84,8 @@ __igt_reset_stolen(st=
ruct intel_gt *gt,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;void __iomem *s;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;void *in;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm, dma,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;ggtt-&gt;error_capture.start,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;i915_gem_get_pat_index(gt-&gt;i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;0);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm, dma, ggtt-&gt;error_ca=
pture.start,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;gt-&gt;i915-&gt;pat_uc, 0);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;mb();</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;s =3D io_mapping_map_wc(&amp;ggtt-&gt;iomap,</div>
<div class=3D"ContentPasted0">&gt; @@ -127,11 +124,8 @@ __igt_reset_stolen(=
struct intel_gt *gt,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;void *in;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;u32 x;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm, dma,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;ggtt-&gt;error_capture.start,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;i915_gem_get_pat_index(gt-&gt;i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;0);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm, dma, ggtt-&gt;error_ca=
pture.start,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;gt-&gt;i915-&gt;pat_uc, 0);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;mb();</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;s =3D io_mapping_map_wc(&amp;ggtt-&gt;iomap,</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/sel=
ftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c</div>
<div class=3D"ContentPasted0">&gt; index 39c3ec12df1a..87299158815f 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/selftest_t=
imeline.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/selftest_t=
imeline.c</div>
<div class=3D"ContentPasted0">&gt; @@ -837,6 +837,7 @@ static int setup_wat=
cher(struct hwsp_watcher *w, struct intel_gt *gt,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* kee=
p the same cache settings as timeline */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_g=
em_object_set_pat_index(obj, tl-&gt;hwsp_ggtt-&gt;obj-&gt;pat_index);</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;w-&gt;=
map =3D i915_gem_object_pin_map_unlocked(obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;page_unma=
sk_bits(tl-&gt;hwsp_ggtt-&gt;obj-&gt;mm.mapping));</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(w-&gt;map)) {</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/sel=
ftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c</div>
<div class=3D"ContentPasted0">&gt; index 3bd6b540257b..6049f01be219 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/selftest_t=
lb.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/selftest_t=
lb.c</div>
<div class=3D"ContentPasted0">&gt; @@ -36,8 +36,6 @@ pte_tlbinv(struct inte=
l_context *ce,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; u64 length,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; struct rnd_state *prng)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; const unsigned in=
t pat_index =3D</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; i915_gem_get_pat_index(ce-&gt;vm-&gt;i915, I915_CACHE_NONE);</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_gem_object *batch;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_mm_node vb_node;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 i915_request *rq;</div>
<div class=3D"ContentPasted0">&gt; @@ -157,7 +155,8 @@ pte_tlbinv(struct in=
tel_context *ce,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;/* Flip the PTE between A and B */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;if (i915_gem_object_is_lmem(vb-&gt;obj))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pte_flags |=3D PTE_LM;</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ce-&gt;vm-&gt;insert_entries(ce-&gt;vm, &amp;vb_res, pat_index, =
pte_flags);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ce-&gt;vm-&gt;insert_entries(ce-&gt;vm, &amp;vb_res, ce-&gt;vm-&=
gt;i915-&gt;pat_uc,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;pte_flags);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;/* Flush the PTE update to concurrent HW */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;tlbinv(ce-&gt;vm, addr &amp; -length, length);</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/sel=
ftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c</div>
<div class=3D"ContentPasted0">&gt; index 14a8b25b6204..900b4e19087f 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/selftest_w=
orkarounds.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/selftest_w=
orkarounds.c</div>
<div class=3D"ContentPasted0">&gt; @@ -111,7 +111,7 @@ read_nonprivs(struct=
 intel_context *ce)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(result))</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return result;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(result, I915_CACHE_LLC);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(result, I915_CACHE(WB));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;cs =3D=
 i915_gem_object_pin_map_unlocked(result, I915_MAP_WB);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(cs)) {</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/uc/=
intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c</div>
<div class=3D"ContentPasted0">&gt; index 2eb891b270ae..3a862051423c 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/uc/intel_g=
uc.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/uc/intel_g=
uc.c</div>
<div class=3D"ContentPasted0">&gt; @@ -749,7 +749,7 @@ struct i915_vma *int=
el_guc_allocate_vma(struct intel_guc *guc, u32 size)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * as =
WC on CPU side and UC (PAT index 2) on GPU side</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_METEORLAKE(gt-&gt;i915))</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; i915_gem_object_set_cache_coherency(obj, I915_CACHE(UC));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vma =
=3D i915_vma_instance(obj, &amp;gt-&gt;ggtt-&gt;vm, NULL);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(vma))</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/gt/uc/=
intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c</div>
<div class=3D"ContentPasted0">&gt; index d408856ae4c0..e099414d624d 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/gt/uc/intel_u=
c_fw.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/gt/uc/intel_u=
c_fw.c</div>
<div class=3D"ContentPasted0">&gt; @@ -991,14 +991,10 @@ static void uc_fw_=
bind_ggtt(struct intel_uc_fw *uc_fw)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (gg=
tt-&gt;vm.raw_insert_entries)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;ggtt-&gt;vm.raw_insert_entries(&amp;ggtt-&gt;vm, vma_=
res,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_gem_get_pat_index(ggtt-&gt;vm.i915,<=
/div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; pte_flags);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ggtt-&gt;vm.i915-&gt;pat_uc, pte_flags);<=
/div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;else</=
div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;ggtt-&gt;vm.insert_entries(&amp;ggtt-&gt;vm, vma_res,=
</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; i915_gem_get_pat_index(ggtt-&gt;vm.i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; pte_flags);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; ggtt-&gt;vm.i915-&gt;pat_uc, pte_flags);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static void uc_fw_unbind_ggtt(stru=
ct intel_uc_fw *uc_fw)</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/i915_c=
ache.c b/drivers/gpu/drm/i915/i915_cache.c</div>
<div class=3D"ContentPasted0">&gt; new file mode 100644</div>
<div class=3D"ContentPasted0">&gt; index 000000000000..4d0033bf1658</div>
<div class=3D"ContentPasted0">&gt; --- /dev/null</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/i915_cache.c<=
/div>
<div class=3D"ContentPasted0">&gt; @@ -0,0 +1,72 @@</div>
<div class=3D"ContentPasted0">&gt; +/*</div>
<div class=3D"ContentPasted0">&gt; + * SPDX-License-Identifier: MIT</div>
<div class=3D"ContentPasted0">&gt; + *</div>
<div class=3D"ContentPasted0">&gt; + * Copyright =A9 2023 Intel Corporation=
</div>
<div class=3D"ContentPasted0">&gt; + */</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +#include &lt;drm/drm_print.h&gt;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +#include &quot;i915_cache.h&quot;</div>
<div class=3D"ContentPasted0">&gt; +#include &quot;i915_drv.h&quot;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +int i915_cache_init(struct drm_i915_pri=
vate *i915)</div>
<div class=3D"ContentPasted0">&gt; +{</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; int ret;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; ret =3D i915_cach=
e_find_pat(i915, I915_CACHE(UC));</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (ret &lt; 0)</=
div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return -ENODEV;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; drm_info(&amp;i91=
5-&gt;drm, &quot;Using PAT index %u for uncached access\n&quot;, ret);</div=
>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915-&gt;pat_uc =
=3D ret;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; ret =3D i915_cach=
e_find_pat(i915, I915_CACHE(WB));</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">For MTL, this would find pat index 0, but KMD=
 wants pat index 3.</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (ret &lt; 0)</=
div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return -ENODEV;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; drm_info(&amp;i91=
5-&gt;drm, &quot;Using PAT index %u for write-back access\n&quot;, ret);</d=
iv>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915-&gt;pat_wb =
=3D ret;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; return 0;</div>
<div class=3D"ContentPasted0">&gt; +}</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +int i915_cache_find_pat(struct drm_i915=
_private *i915, i915_cache_t cache)</div>
<div class=3D"ContentPasted0">&gt; +{</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; const struct inte=
l_device_info *info =3D INTEL_INFO(i915);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; int i;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; for (i =3D 0; i &=
lt; ARRAY_SIZE(info-&gt;cache_modes); i++) {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; if (info-&gt;cache_modes[i] =3D=3D cache)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return i;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; }</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; return -1;</div>
<div class=3D"ContentPasted0">&gt; +}</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +void i915_cache_print(struct drm_printe=
r *p, i915_cache_t cache)</div>
<div class=3D"ContentPasted0">&gt; +{</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; const enum i915_c=
ache_mode mode =3D I915_CACHE_MODE(cache);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; const unsigned lo=
ng flags =3D I915_CACHE_FLAGS(cache);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; static const char=
 *mode_str[] =3D {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_MODE_UC] =3D &quot;UC&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_MODE_WB] =3D &quot;WB&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_MODE_WT] =3D &quot;WT&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_MODE_WC] =3D &quot;WC&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; };</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; static const char=
 *flag_str[] =3D {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_FLAG_L3] =3D &quot;L3&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_FLAG_COH1W] =3D &quot;1-Way-Coherent&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_FLAG_COH2W] =3D &quot;2-Way-Coherent&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_FLAG_CLOS1] =3D &quot;CLOS1&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_FLAG_CLOS2] =3D &quot;CLOS2&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; };</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (mode =3D=3D I=
915_CACHE_MODE_UNKNOWN || mode &gt; ARRAY_SIZE(mode_str)) {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; drm_printf(p, &quot;0x%x&quot;, cache);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; } else {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; unsigned long bit;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; drm_printf(p, &quot;%s&quot;, mode_str[mode]);</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; for_each_set_bit(bit, &amp;flags, sizeof(i915_cache_t))</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; drm_printf(p, &quot;-%s&quot;, flag_=
str[bit]);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; }</div>
<div class=3D"ContentPasted0">&gt; +}</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/i915_c=
ache.h b/drivers/gpu/drm/i915/i915_cache.h</div>
<div class=3D"ContentPasted0">&gt; new file mode 100644</div>
<div class=3D"ContentPasted0">&gt; index 000000000000..ffb621d8a8a0</div>
<div class=3D"ContentPasted0">&gt; --- /dev/null</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/i915_cache.h<=
/div>
<div class=3D"ContentPasted0">&gt; @@ -0,0 +1,49 @@</div>
<div class=3D"ContentPasted0">&gt; +/* SPDX-License-Identifier: MIT */</div=
>
<div class=3D"ContentPasted0">&gt; +/*</div>
<div class=3D"ContentPasted0">&gt; + * Copyright =A9 2023 Intel Corporation=
</div>
<div class=3D"ContentPasted0">&gt; + */</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +#ifndef __I915_CACHE_H__</div>
<div class=3D"ContentPasted0">&gt; +#define __I915_CACHE_H__</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +#include &lt;linux/types.h&gt;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +struct drm_printer;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +struct drm_i915_private;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +typedef u16 i915_cache_t;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +#define I915_CACHE(mode) \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; (i915_cache_t)(I9=
15_CACHE_MODE_##mode)</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +#define _I915_CACHE(mode, flag) \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; (i915_cache_t)((I=
915_CACHE_MODE_##mode) | \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(BIT(8 + I915_CACHE_FLAG_##flag)))</d=
iv>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +#define I915_CACHE_MODE(cache) \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; (enum i915_cache_=
mode)(((i915_cache_t)(cache)) &amp; 0xff)</div>
<div class=3D"ContentPasted0">&gt; +#define I915_CACHE_FLAGS(cache) \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; (unsigned int)(((=
(i915_cache_t)(cache) &amp; 0xff00)) &gt;&gt; 16)</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +/* Cache modes */</div>
<div class=3D"ContentPasted0">&gt; +enum i915_cache_mode {</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; I915_CACHE_MODE_U=
NKNOWN =3D 0,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; I915_CACHE_MODE_U=
C,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; I915_CACHE_MODE_W=
B,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; I915_CACHE_MODE_W=
T,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; I915_CACHE_MODE_W=
C</div>
<div class=3D"ContentPasted0">&gt; +};</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +/* Cache mode flag bits */</div>
<div class=3D"ContentPasted0">&gt; +#define I915_CACHE_FLAG_L3 &nbsp; &nbsp=
; (0)</div>
<div class=3D"ContentPasted0">&gt; +#define I915_CACHE_FLAG_COH1W &nbsp;(1)=
</div>
<div class=3D"ContentPasted0">&gt; +#define I915_CACHE_FLAG_COH2W &nbsp;(2)=
</div>
<div class=3D"ContentPasted0">&gt; +#define I915_CACHE_FLAG_CLOS1 &nbsp;(3)=
</div>
<div class=3D"ContentPasted0">&gt; +#define I915_CACHE_FLAG_CLOS2 &nbsp;(4)=
</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +int i915_cache_init(struct drm_i915_pri=
vate *i915);</div>
<div class=3D"ContentPasted0">&gt; +int i915_cache_find_pat(struct drm_i915=
_private *i915, i915_cache_t cache);</div>
<div class=3D"ContentPasted0">&gt; +void i915_cache_print(struct drm_printe=
r *p, i915_cache_t cache);</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; +#endif /* __I915_CACHE_H__ */</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/i915_d=
ebugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c</div>
<div class=3D"ContentPasted0">&gt; index 4de44cf1026d..03d366e0bdf7 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/i915_debugfs.=
c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/i915_debugfs.=
c</div>
<div class=3D"ContentPasted0">&gt; @@ -140,68 +140,33 @@ static const char =
*stringify_vma_type(const struct i915_vma *vma)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return=
 &quot;ppgtt&quot;;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -static const char *i915_cache_level_str=
(struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; -{</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; struct drm_i915_p=
rivate *i915 =3D obj_to_i915(obj);</div>
<div class=3D"ContentPasted0">&gt; -</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; if (IS_METEORLAKE=
(i915)) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; switch (obj-&gt;pat_index) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 0: return &quot; WB&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 1: return &quot; WT&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 2: return &quot; UC&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 3: return &quot; WB (1-Way Coh)&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 4: return &quot; WB (2-Way Coh)&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; default: return &quot; not defined&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; }</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; } else if (IS_PON=
TEVECCHIO(i915)) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; switch (obj-&gt;pat_index) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 0: return &quot; UC&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 1: return &quot; WC&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 2: return &quot; WT&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 3: return &quot; WB&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 4: return &quot; WT (CLOS1)&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 5: return &quot; WB (CLOS1)&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 6: return &quot; WT (CLOS2)&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 7: return &quot; WT (CLOS2)&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; default: return &quot; not defined&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; }</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; } else if (GRAPHI=
CS_VER(i915) &gt;=3D 12) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; switch (obj-&gt;pat_index) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 0: return &quot; WB&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 1: return &quot; WC&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 2: return &quot; WT&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 3: return &quot; UC&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; default: return &quot; not defined&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; }</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; } else {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; switch (obj-&gt;pat_index) {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 0: return &quot; UC&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 1: return HAS_LLC(i915) ?</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot; LL=
C&quot; : &quot; snooped&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 2: return &quot; L3+LLC&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; case 3: return &quot; WT&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; default: return &quot; not defined&quot;;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; }</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; }</div>
<div class=3D"ContentPasted0">&gt; -}</div>
<div class=3D"ContentPasted0">&gt; -</div>
<div class=3D"ContentPasted0">&gt; &nbsp;void</div>
<div class=3D"ContentPasted0">&gt; &nbsp;i915_debugfs_describe_obj(struct s=
eq_file *m, struct drm_i915_gem_object *obj)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;{</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; struct drm_i915_p=
rivate *i915 =3D to_i915(obj-&gt;base.dev);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; struct drm_printe=
r p =3D drm_seq_file_printer(m);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 i915_vma *vma;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int pi=
n_count =3D 0;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; seq_printf(m, &qu=
ot;%pK: %c%c%c %8zdKiB %02x %02x %s%s%s&quot;,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; seq_printf(m, &qu=
ot;%pK: %c%c%c %8zdKiB %02x %02x &quot;,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &amp;obj-&gt;base,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; get_tiling_flag(obj),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; get_global_flag(obj),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; get_pin_mapped_flag(obj),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; obj-&gt;base.size / 1024,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; obj-&gt;read_domains,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;obj-&gt;write_domain,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;i915_cache_level_str(obj),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;obj-&gt;mm.dirty ? &quot; dirty&quot; : &quot;&quot=
;,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;obj-&gt;mm.madv =3D=3D I915_MADV_DONTNEED ? &quot; =
purgeable&quot; : &quot;&quot;);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;obj-&gt;write_domain);</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp;i915_cache_=
print(&amp;p, INTEL_INFO(i915)-&gt;cache_modes[obj-&gt;pat_index]);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (obj-&gt;pat_s=
et_by_user)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; drm_puts(&amp;p, &quot;!&quot;);</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (obj-&gt;mm.di=
rty)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; seq_puts(m, &quot; dirty&quot;);</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (obj-&gt;mm.ma=
dv =3D=3D I915_MADV_DONTNEED)</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; seq_puts(m, &quot; purgeable&quot;);</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (ob=
j-&gt;base.name)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;seq_printf(m, &quot; (name: %d)&quot;, obj-&gt;base.n=
ame);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/i915_d=
river.c b/drivers/gpu/drm/i915/i915_driver.c</div>
<div class=3D"ContentPasted0">&gt; index 294b022de22b..8663388a524f 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/i915_driver.c=
</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/i915_driver.c=
</div>
<div class=3D"ContentPasted0">&gt; @@ -80,6 +80,7 @@</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;soc/intel_dram.h&qu=
ot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;soc/intel_gmch.h&qu=
ot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; +#include &quot;i915_cache.h&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_debugfs.h&quot=
;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_driver.h&quot;=
</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_drm_client.h&q=
uot;</div>
<div class=3D"ContentPasted0">&gt; @@ -240,6 +241,10 @@ static int i915_dri=
ver_early_probe(struct drm_i915_private *dev_priv)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_m=
emcpy_init_early(dev_priv);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;intel_=
runtime_pm_init_early(&amp;dev_priv-&gt;runtime_pm);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; ret =3D i915_cach=
e_init(dev_priv);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; if (ret &lt; 0)</=
div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; return ret;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ret =
=3D i915_workqueues_init(dev_priv);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (re=
t &lt; 0)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return ret;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/i915_d=
rv.h b/drivers/gpu/drm/i915/i915_drv.h</div>
<div class=3D"ContentPasted0">&gt; index a18013787c9f..462b076e2650 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/i915_drv.h</d=
iv>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/i915_drv.h</d=
iv>
<div class=3D"ContentPasted0">&gt; @@ -250,6 +250,9 @@ struct drm_i915_priv=
ate {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;unsign=
ed int hpll_freq;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;unsign=
ed int czclk_freq;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; unsigned int pat_=
uc;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; unsigned int pat_=
wb;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/**</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * wq =
- Driver workqueue for GEM.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *</di=
v>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/i915_g=
em.c b/drivers/gpu/drm/i915/i915_gem.c</div>
<div class=3D"ContentPasted0">&gt; index b46d7a2dab1a..ef6d33c2c288 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/i915_gem.c</d=
iv>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/i915_gem.c</d=
iv>
<div class=3D"ContentPasted0">&gt; @@ -422,9 +422,7 @@ i915_gem_gtt_pread(s=
truct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ggtt-&gt;vm.insert_page(&=
amp;ggtt-&gt;vm,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_gem_object_get_dma_addre=
ss(obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; offset &gt;&gt; PAGE_SHIFT),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;node.start,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_gem_get_pat_index(i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I915_CACHE_NONE), 0);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;node.start, i915-&gt;pat_uc, 0);</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;} else {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;page_base +=3D offset &am=
p; PAGE_MASK;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; @@ -603,9 +601,7 @@ i915_gem_gtt_pwrite_=
fast(struct drm_i915_gem_object *obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ggtt-&gt;vm.insert_page(&=
amp;ggtt-&gt;vm,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; i915_gem_object_get_dma_addre=
ss(obj,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; offset &gt;&gt; PAGE_SHIFT),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;node.start,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_gem_get_pat_index(i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I915_CACHE_NONE), 0);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;node.start, i915-&gt;pat_uc, 0);</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;wmb(); /* flush modificat=
ions to the GGTT (insert_page) */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;} else {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;page_base +=3D offset &am=
p; PAGE_MASK;</div>
<div class=3D"ContentPasted0">&gt; @@ -1148,19 +1144,6 @@ int i915_gem_init=
(struct drm_i915_private *dev_priv)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;unsign=
ed int i;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int re=
t;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /*</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* In the pr=
occess of replacing cache_level with pat_index a tricky</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* dependenc=
y is created on the definition of the enum i915_cache_level.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* in case t=
his enum is changed, PTE encode would be broken.</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* Add a WAR=
NING here. And remove when we completely quit using this</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;* enum</div=
>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp;*/</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; BUILD_BUG_ON(I915=
_CACHE_NONE !=3D 0 ||</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE_LLC !=3D 1 ||</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE_L3_LLC !=3D 2 ||</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE_WT !=3D 3 ||</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;I915_MAX_CACHE_LEVEL !=3D 4);</div>
<div class=3D"ContentPasted0">&gt; -</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* We =
need to fallback to 4K pages if host doesn't support huge gtt. */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (in=
tel_vgpu_active(dev_priv) &amp;&amp; !intel_vgpu_has_huge_gtt(dev_priv))</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;RUNTIME_INFO(dev_priv)-&gt;page_sizes =3D I915_GTT_PA=
GE_SIZE_4K;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/i915_g=
pu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c</div>
<div class=3D"ContentPasted0">&gt; index 92ca81f9feab..6a6f97aaec60 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/i915_gpu_erro=
r.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/i915_gpu_erro=
r.c</div>
<div class=3D"ContentPasted0">&gt; @@ -1124,14 +1124,11 @@ i915_vma_coredum=
p_create(const struct intel_gt *gt,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mutex_lock(&amp;ggtt-&gt;=
error_mutex);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (ggtt-&gt;vm.raw_inser=
t_page)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;ggtt-&gt;vm.raw_insert_page(&amp;ggtt-&gt;vm, dma, slot,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;i915_gem_get_pat_index(gt-&gt;i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;ggtt-&gt;vm.i915-&gt;pat_uc,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; 0);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;else</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm, dma, slot,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_ge=
m_get_pat_index(gt-&gt;i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I915=
_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0);</di=
v>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ggtt-&g=
t;vm.i915-&gt;pat_uc, 0);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mb();</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;s =3D io_mapping_map_wc(&=
amp;ggtt-&gt;iomap, slot, PAGE_SIZE);</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/i915_p=
ci.c b/drivers/gpu/drm/i915/i915_pci.c</div>
<div class=3D"ContentPasted0">&gt; index dea3609fc496..c0c6248fbc78 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/i915_pci.c</d=
iv>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/i915_pci.c</d=
iv>
<div class=3D"ContentPasted0">&gt; @@ -32,6 +32,7 @@</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;gt/intel_sa_media.h=
&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;gem/i915_gem_object=
_types.h&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; +#include &quot;i915_cache.h&quot;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_driver.h&quot;=
</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_drv.h&quot;</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;i915_pci.h&quot;</d=
iv>
<div class=3D"ContentPasted0">&gt; @@ -46,36 +47,42 @@ __diag_ignore_all(&q=
uot;-Woverride-init&quot;, &quot;Allow overriding inherited members&quot;);=
</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.__run=
time.graphics.ip.ver =3D (x), \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.__run=
time.media.ip.ver =3D (x)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -#define LEGACY_CACHELEVEL \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; .cachelevel_to_pa=
t =3D { \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_NONE] &nbsp; =3D 0, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_LLC] &nbsp; &nbsp;=3D 1, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_L3_LLC] =3D 2, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_WT] &nbsp; &nbsp; =3D 3, \</div>
<div class=3D"ContentPasted0">&gt; +/* TODO/QQQ index 1 &amp; 2 */</div>
<div class=3D"ContentPasted0">&gt; +#define LEGACY_CACHE_MODES \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; .cache_modes =3D =
{ \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [0] =3D I915_CACHE(UC), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [1] =3D I915_CACHE(WB), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [2] =3D _I915_CACHE(WB, L3), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [3] =3D I915_CACHE(WT), \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -#define TGL_CACHELEVEL \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; .cachelevel_to_pa=
t =3D { \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_NONE] &nbsp; =3D 3, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_LLC] &nbsp; &nbsp;=3D 0, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_L3_LLC] =3D 0, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_WT] &nbsp; &nbsp; =3D 2, \</div>
<div class=3D"ContentPasted0">&gt; +#define GEN12_CACHE_MODES \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; .cache_modes =3D =
{ \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [0] =3D I915_CACHE(WB), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [1] =3D I915_CACHE(WC), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [2] =3D I915_CACHE(WT), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [3] =3D I915_CACHE(UC), \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -#define PVC_CACHELEVEL \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; .cachelevel_to_pa=
t =3D { \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_NONE] &nbsp; =3D 0, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_LLC] &nbsp; &nbsp;=3D 3, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_L3_LLC] =3D 3, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_WT] &nbsp; &nbsp; =3D 2, \</div>
<div class=3D"ContentPasted0">&gt; +#define PVC_CACHE_MODES \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; .cache_modes =3D =
{ \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [0] =3D I915_CACHE(UC), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [1] =3D I915_CACHE(WC), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [2] =3D I915_CACHE(WT), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [3] =3D I915_CACHE(WB), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [4] =3D _I915_CACHE(WT, CLOS1), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [5] =3D _I915_CACHE(WB, CLOS1), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [6] =3D _I915_CACHE(WT, CLOS2), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [7] =3D _I915_CACHE(WB, CLOS2), \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; -#define MTL_CACHELEVEL \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; .cachelevel_to_pa=
t =3D { \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_NONE] &nbsp; =3D 2, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_LLC] &nbsp; &nbsp;=3D 3, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_L3_LLC] =3D 3, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_WT] &nbsp; &nbsp; =3D 1, \</div>
<div class=3D"ContentPasted0">&gt; +#define MTL_CACHE_MODES \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; .cache_modes =3D =
{ \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [0] =3D I915_CACHE(WB), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [1] =3D I915_CACHE(WT), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [2] =3D I915_CACHE(UC), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [3] =3D _I915_CACHE(WB, COH1W), \</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [4] =3D _I915_CACHE(WB, COH2W), \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;/* Keep in gen based order, and ch=
ronological order within a gen */</div>
<div class=3D"ContentPasted0">&gt; @@ -100,7 +107,7 @@ __diag_ignore_all(&q=
uot;-Woverride-init&quot;, &quot;Allow overriding inherited members&quot;);=
</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.max_p=
at_index =3D 3, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_PAGE_SIZES, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_REGIONS, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; LEGACY_CACHELEVEL=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; LEGACY_CACHE_MODE=
S</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#define I845_FEATURES \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN(2)=
, \</div>
<div class=3D"ContentPasted0">&gt; @@ -115,7 +122,7 @@ __diag_ignore_all(&q=
uot;-Woverride-init&quot;, &quot;Allow overriding inherited members&quot;);=
</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.max_p=
at_index =3D 3, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_PAGE_SIZES, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_REGIONS, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; LEGACY_CACHELEVEL=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; LEGACY_CACHE_MODE=
S</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static const struct intel_device_i=
nfo i830_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I830_F=
EATURES,</div>
<div class=3D"ContentPasted0">&gt; @@ -148,7 +155,7 @@ static const struct =
intel_device_info i865g_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.max_p=
at_index =3D 3, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_PAGE_SIZES, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_REGIONS, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; LEGACY_CACHELEVEL=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; LEGACY_CACHE_MODE=
S</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static const struct intel_device_i=
nfo i915g_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN3_F=
EATURES,</div>
<div class=3D"ContentPasted0">&gt; @@ -211,7 +218,7 @@ static const struct =
intel_device_info pnv_m_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.max_p=
at_index =3D 3, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_PAGE_SIZES, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_REGIONS, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; LEGACY_CACHELEVEL=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; LEGACY_CACHE_MODE=
S</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static const struct intel_device_i=
nfo i965g_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN4_F=
EATURES,</div>
<div class=3D"ContentPasted0">&gt; @@ -255,7 +262,7 @@ static const struct =
intel_device_info gm45_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.max_p=
at_index =3D 3, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_PAGE_SIZES, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_REGIONS, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; LEGACY_CACHELEVEL=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; LEGACY_CACHE_MODE=
S</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static const struct intel_device_i=
nfo ilk_d_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN5_F=
EATURES,</div>
<div class=3D"ContentPasted0">&gt; @@ -285,7 +292,7 @@ static const struct =
intel_device_info ilk_m_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.__run=
time.ppgtt_size =3D 31, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_PAGE_SIZES, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_REGIONS, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; LEGACY_CACHELEVEL=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; LEGACY_CACHE_MODE=
S</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#define SNB_D_PLATFORM \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN6_F=
EATURES, \</div>
<div class=3D"ContentPasted0">&gt; @@ -333,7 +340,7 @@ static const struct =
intel_device_info snb_m_gt2_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.__run=
time.ppgtt_size =3D 31, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_PAGE_SIZES, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_REGIONS, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; LEGACY_CACHELEVEL=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; LEGACY_CACHE_MODE=
S</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#define IVB_D_PLATFORM \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN7_F=
EATURES, \</div>
<div class=3D"ContentPasted0">&gt; @@ -390,7 +397,7 @@ static const struct =
intel_device_info vlv_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.platf=
orm_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_PAGE_SIZES,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_REGIONS,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; LEGACY_CACHELEVEL=
,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; LEGACY_CACHE_MODE=
S</div>
<div class=3D"ContentPasted0">&gt; &nbsp;};</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#define G75_FEATURES &nbsp;\</div>
<div class=3D"ContentPasted0">&gt; @@ -476,7 +483,7 @@ static const struct =
intel_device_info chv_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.has_c=
oherent_ggtt =3D false,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_PAGE_SIZES,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_REGIONS,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; LEGACY_CACHELEVEL=
,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; LEGACY_CACHE_MODE=
S</div>
<div class=3D"ContentPasted0">&gt; &nbsp;};</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#define GEN9_DEFAULT_PAGE_SIZES \<=
/div>
<div class=3D"ContentPasted0">&gt; @@ -539,7 +546,7 @@ static const struct =
intel_device_info skl_gt4_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.max_p=
at_index =3D 3, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN9_D=
EFAULT_PAGE_SIZES, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN_DE=
FAULT_REGIONS, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; LEGACY_CACHELEVEL=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; LEGACY_CACHE_MODE=
S</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static const struct intel_device_i=
nfo bxt_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN9_L=
P_FEATURES,</div>
<div class=3D"ContentPasted0">&gt; @@ -643,7 +650,7 @@ static const struct =
intel_device_info jsl_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#define GEN12_FEATURES \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN11_=
FEATURES, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN(12=
), \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; TGL_CACHELEVEL, \=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; GEN12_CACHE_MODES=
, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.has_g=
lobal_mocs =3D 1, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.has_p=
xp =3D 1, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.max_p=
at_index =3D 3</div>
<div class=3D"ContentPasted0">&gt; @@ -711,7 +718,7 @@ static const struct =
intel_device_info adl_p_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.__run=
time.graphics.ip.ver =3D 12, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.__run=
time.graphics.ip.rel =3D 50, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;XE_HP_=
PAGE_SIZES, \</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; TGL_CACHELEVEL, \=
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; GEN12_CACHE_MODES=
, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.dma_m=
ask_size =3D 46, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.has_3=
d_pipeline =3D 1, \</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.has_6=
4bit_reloc =3D 1, \</div>
<div class=3D"ContentPasted0">&gt; @@ -806,7 +813,7 @@ static const struct =
intel_device_info pvc_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;BIT(VCS0) |</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.requi=
re_force_probe =3D 1,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; PVC_CACHELEVEL,</=
div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; PVC_CACHE_MODES</=
div>
<div class=3D"ContentPasted0">&gt; &nbsp;};</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;static const struct intel_gt_defin=
ition xelpmp_extra_gt[] =3D {</div>
<div class=3D"ContentPasted0">&gt; @@ -841,7 +848,7 @@ static const struct =
intel_device_info mtl_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.memor=
y_regions =3D REGION_SMEM | REGION_STOLEN_LMEM,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.platf=
orm_engine_mask =3D BIT(RCS0) | BIT(BCS0) | BIT(CCS0),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.requi=
re_force_probe =3D 1,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; MTL_CACHELEVEL,</=
div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; MTL_CACHE_MODES</=
div>
<div class=3D"ContentPasted0">&gt; &nbsp;};</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#undef PLATFORM</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/i915_p=
erf.c b/drivers/gpu/drm/i915/i915_perf.c</div>
<div class=3D"ContentPasted0">&gt; index 0a111b281578..1b8e067f37dd 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/i915_perf.c</=
div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/i915_perf.c</=
div>
<div class=3D"ContentPasted0">&gt; @@ -1861,7 +1861,7 @@ static int alloc_o=
a_buffer(struct i915_perf_stream *stream)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;return PTR_ERR(bo);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(bo, I915_CACHE_LLC);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(bo, I915_CACHE(WB));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* Pre=
HSW required 512K alignment, HSW requires 16M */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vma =
=3D i915_vma_instance(bo, &amp;gt-&gt;ggtt-&gt;vm, NULL);</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/intel_=
device_info.h b/drivers/gpu/drm/i915/intel_device_info.h</div>
<div class=3D"ContentPasted0">&gt; index dbfe6443457b..f48a21895a85 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/intel_device_=
info.h</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/intel_device_=
info.h</div>
<div class=3D"ContentPasted0">&gt; @@ -27,6 +27,8 @@</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &lt;uapi/drm/i915_drm.h&g=
t;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; +#include &quot;i915_cache.h&quot;</div>
<div class=3D"ContentPasted0">&gt; +</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;intel_step.h&quot;<=
/div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;#include &quot;gt/intel_engine_typ=
es.h&quot;</div>
<div class=3D"ContentPasted0">&gt; @@ -243,8 +245,8 @@ struct intel_device_=
info {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;const =
struct intel_runtime_info __runtime;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; u32 cachelevel_to=
_pat[I915_MAX_CACHE_LEVEL];</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; u32 max_pat_index=
;</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_cache_t cach=
e_modes[9];</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">I was commenting on the array size here. It's=
 probably better to make it 16</div>
<div class=3D"ContentPasted0">because there are 4 PAT index bits defined in=
 the PTE. Indices above max_pat_index</div>
<div class=3D"ContentPasted0">are not used, but theoretically new mode coul=
d be added. Well, it's up to you,</div>
<div class=3D"ContentPasted0">not likely to happen anyway.</div>
<div><br class=3D"ContentPasted0">
</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">-Fei</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; unsigned int max_=
pat_index;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;};</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;struct intel_driver_caps {</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/selfte=
sts/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c</div>
<div class=3D"ContentPasted0">&gt; index 61da4ed9d521..e620f73793a5 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/selftests/i91=
5_gem.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/selftests/i91=
5_gem.c</div>
<div class=3D"ContentPasted0">&gt; @@ -57,10 +57,7 @@ static void trash_sto=
len(struct drm_i915_private *i915)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;u32 __iomem *s;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;int x;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm, dma, slot,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;i915_gem_get_pat_index(i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;0);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm, dma, slot, i915-&gt;pa=
t_uc, 0);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;s =3D io_mapping_map_atomic_wc(&amp;ggtt-&gt;iomap, s=
lot);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;for (x =3D 0; x &lt; PAGE_SIZE / sizeof(u32); x++) {<=
/div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/selfte=
sts/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c</div=
>
<div class=3D"ContentPasted0">&gt; index f8fe3681c3dc..862d3ba0e025 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/selftests/i91=
5_gem_evict.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/selftests/i91=
5_gem_evict.c</div>
<div class=3D"ContentPasted0">&gt; @@ -246,7 +246,7 @@ static int igt_evict=
_for_cache_color(void *arg)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_mm_node target =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;.start =3D I915_GTT_PAGE_SIZE * 2,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;.size =3D I915_GTT_PAGE_SIZE,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; .color =3D i915_gem_get_pat_index(gt-&gt;i915, I915_CACHE_LLC),<=
/div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; .color =3D I915_CACHE(WB),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;};</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 drm_i915_gem_object *obj;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;struct=
 i915_vma *vma;</div>
<div class=3D"ContentPasted0">&gt; @@ -267,7 +267,7 @@ static int igt_evict=
_for_cache_color(void *arg)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;err =3D PTR_ERR(obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;goto cleanup;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE_LLC);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE(WB));</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;quirk_=
add(obj, &amp;objects);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vma =
=3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0,</div>
<div class=3D"ContentPasted0">&gt; @@ -283,7 +283,7 @@ static int igt_evict=
_for_cache_color(void *arg)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;err =3D PTR_ERR(obj);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;goto cleanup;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE_LLC);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE(WB));</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;quirk_=
add(obj, &amp;objects);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* Nei=
ghbouring; same colour - should fit */</div>
<div class=3D"ContentPasted0">&gt; @@ -309,7 +309,7 @@ static int igt_evict=
_for_cache_color(void *arg)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* Att=
empt to remove the first *pinned* vma, by removing the (empty)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * nei=
ghbour -- this should fail.</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; target.color =3D =
i915_gem_get_pat_index(gt-&gt;i915, I915_CACHE_L3_LLC);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; target.color =3D =
_I915_CACHE(WB, L3);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mutex_=
lock(&amp;ggtt-&gt;vm.mutex);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;err =
=3D i915_gem_evict_for_node(&amp;ggtt-&gt;vm, NULL, &amp;target, 0);</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/selfte=
sts/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c</div>
<div class=3D"ContentPasted0">&gt; index 5c397a2df70e..a24585784f75 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/selftests/i91=
5_gem_gtt.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/selftests/i91=
5_gem_gtt.c</div>
<div class=3D"ContentPasted0">&gt; @@ -135,7 +135,7 @@ fake_dma_object(stru=
ct drm_i915_private *i915, u64 size)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;write_domain =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;read_domains =3D I915_GEM_DOMAIN_CPU;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; obj-&gt;pat_index=
 =3D i915_gem_get_pat_index(i915, I915_CACHE_NONE);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; obj-&gt;pat_index=
 =3D i915-&gt;pat_uc;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* Pre=
allocate the &quot;backing storage&quot; */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (i9=
15_gem_object_pin_pages_unlocked(obj))</div>
<div class=3D"ContentPasted0">&gt; @@ -358,10 +358,8 @@ static int lowlevel=
_hole(struct i915_address_space *vm,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mock_vma_res-&gt;start =
=3D addr;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;with_intel_runtime_pm(vm-=
&gt;gt-&gt;uncore-&gt;rpm, wakeref)</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; vm-&gt;insert_entries(vm, moc=
k_vma_res,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_gem_get_pat_index(vm-&gt;i915,=
</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; vm-&gt;i=
nsert_entries(vm, mock_vma_res,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vm-&gt;i915-&g=
t;pat_uc, 0);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;}</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;count =3D n;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; @@ -1379,10 +1377,7 @@ static int igt_gg=
tt_page(void *arg)</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;ggtt-&gt;vm.insert_page(&amp;ggtt-&gt;vm,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; i915_gem_object_get_dma_address(obj, 0),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;offset,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;i915_gem_get_pat_index(i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;0);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;offset, ggtt-&gt;vm.i915-&gt;pat_uc, 0);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;order =
=3D i915_random_order(count, &amp;prng);</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/selfte=
sts/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c</div>
<div class=3D"ContentPasted0">&gt; index 618d9386d554..d42d1bcffe21 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/selftests/igt=
_spinner.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/selftests/igt=
_spinner.c</div>
<div class=3D"ContentPasted0">&gt; @@ -23,7 +23,7 @@ int igt_spinner_init(s=
truct igt_spinner *spin, struct intel_gt *gt)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;err =3D PTR_ERR(spin-&gt;hws);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;goto err;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div=
>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(spin-&gt;hws, I915_CACHE_LLC);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(spin-&gt;hws, I915_CACHE(WB));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;spin-&=
gt;obj =3D i915_gem_object_create_internal(gt-&gt;i915, PAGE_SIZE);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (IS=
_ERR(spin-&gt;obj)) {</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/selfte=
sts/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_reg=
ion.c</div>
<div class=3D"ContentPasted0">&gt; index d985d9bae2e8..b82fe0ef8cd7 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/selftests/int=
el_memory_region.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/selftests/int=
el_memory_region.c</div>
<div class=3D"ContentPasted0">&gt; @@ -1070,9 +1070,7 @@ static int igt_lme=
m_write_cpu(void *arg)</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* Put=
 the pages into a known state -- from the gpu for added fun */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;intel_=
engine_pm_get(engine);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;err =
=3D intel_context_migrate_clear(engine-&gt;gt-&gt;migrate.context, NULL,</d=
iv>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; obj-&gt;mm.pages-&gt;sgl,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; i915_gem_get_pat_index(i915,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I915_CACHE_NONE),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; obj-&gt;mm.pages-&gt;sgl, i915-&gt;pat_uc,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;true, 0xdeadbeaf, &amp;rq);</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (rq=
) {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;dma_resv_add_fence(obj-&gt;base.resv, &amp;rq-&gt;fen=
ce,</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/selfte=
sts/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c</d=
iv>
<div class=3D"ContentPasted0">&gt; index 12aa7fbb0748..f478a4102299 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/selftests/moc=
k_gem_device.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/selftests/moc=
k_gem_device.c</div>
<div class=3D"ContentPasted0">&gt; @@ -126,13 +126,13 @@ static const struc=
t intel_device_info mock_info =3D {</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.memor=
y_regions =3D REGION_SMEM,</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.platf=
orm_engine_mask =3D BIT(0),</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; /* simply use leg=
acy cache level for mock device */</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; /* Simply use leg=
acy cache modes for the mock device. */</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.max_p=
at_index =3D 3,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; .cachelevel_to_pa=
t =3D {</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_NONE] &nbsp; =3D 0,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_LLC] &nbsp; &nbsp;=3D 1,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_L3_LLC] =3D 2,</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [I915_CACHE_WT] &nbsp; &nbsp; =3D 3,</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; .cache_modes =3D =
{</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [0] =3D I915_CACHE(UC),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [1] =3D I915_CACHE(WB),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [2] =3D _I915_CACHE(WB, L3),</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; [3] =3D I915_CACHE(WT),</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;},</di=
v>
<div class=3D"ContentPasted0">&gt; &nbsp;};</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; diff --git a/drivers/gpu/drm/i915/selfte=
sts/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c</div>
<div class=3D"ContentPasted0">&gt; index 6324eb32d4dd..8c16202e79cb 100644<=
/div>
<div class=3D"ContentPasted0">&gt; --- a/drivers/gpu/drm/i915/selftests/moc=
k_region.c</div>
<div class=3D"ContentPasted0">&gt; +++ b/drivers/gpu/drm/i915/selftests/moc=
k_region.c</div>
<div class=3D"ContentPasted0">&gt; @@ -77,7 +77,7 @@ static int mock_object=
_init(struct intel_memory_region *mem,</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj-&g=
t;read_domains =3D I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; - &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE_NONE);</div>
<div class=3D"ContentPasted0">&gt; + &nbsp; &nbsp; &nbsp; i915_gem_object_s=
et_cache_coherency(obj, I915_CACHE(UC));</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i915_g=
em_object_init_memory_region(obj, mem);</div>
<div class=3D"ContentPasted0">&gt; &nbsp;</div>
<div class=3D"ContentPasted0">&gt; --</div>
<div class=3D"ContentPasted0">&gt; 2.39.2</div>
<br>
</div>
</body>
</html>

--_000_BYAPR11MB256721AE29EBF133E60D7CD19A2AABYAPR11MB2567namp_--

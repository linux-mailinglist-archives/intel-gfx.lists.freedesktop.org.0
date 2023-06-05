Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C621F723189
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 22:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0930C10E2AE;
	Mon,  5 Jun 2023 20:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7540710E1C6
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 20:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685997629; x=1717533629;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wIBmXmHWNA5RgNX39WEkFXdJaJ/ILUoyNkgCs5pgmlk=;
 b=Ek26ZU9I5ays+YtMtgS3p/GQdX5xjcOaONacBtK57I5AuCMUipPQ/S/7
 CKpwUxv9/LAaKC581lNQ7HSYEVjrrDMZM5/YABnKIHtSblZa8P2w8nu4K
 JkcaHuz9Dw8n15QfPdfff5s/7FLgMvo4MxaJ6s2F+JRue8YdDWlkmO/oE
 Shh6xAwWENAbkocDNXbpb5w8nXwIC1wuaHySlAHmwlN+ilk1xyIjIA8oP
 MIwNCnoolYdoWSwM7OdjK/nn4w3YezK+p6QCd/YrAoGmHTRiba9olDD3q
 yznSVsSpaf23sdD1MysI8/rH/2RhR7anS9a+vajIZZDCpT9zoQ0+nbuSb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="353972280"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="353972280"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 13:40:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="773861691"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="773861691"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jun 2023 13:40:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 13:40:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 13:40:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 13:40:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 13:40:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VbmDVTJ5l6VlzW4JDoC2K0cbO8BCj3ZPeD8jmcpBGVpHP/5HcCEBpdRT6zMiF598GGScU+5VX2WStChKSVDWvlwZ3uJnqu2QBNT32TGCYD0TMA8MLnNiE+e+ZvSpBDUpSiz16bWEac8Dq8VVfxynqo5/+Ud9oWfyweyiaIslXP9nt/wLMw9EGYViW12hep7wqL+7pBrDfd6ZCJUPSeb+s/yzjTZMxxE7uM8x9vQMauz+2n2AsszazExT1wGXCKLQuRf/CZ7MNFErjFOOIJNSJCZEQX28T/341WuSiSRvdQr8and9wfY/VnkHjeM7LCMxoewJvjGlRJYwNoNe4QEeoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zzftoicUajOWtHABbX1Lg2QgcZxT9+W7SvMAzirZfSw=;
 b=Pkbu2AN4ZhZx30EyjKVoHibKi2VJlPoNFkKpnz+dsImko4aFSR7tspCn0v22eN4xBysJSMILdUcm0JEZqU1Kacqh1j1+7SfyF+TrAZyBn32zPpcUUhWIABO6NO4Ce2Brsl9dEUnMtY8Jwddw80BLwO76ZxEnFGMVO00yzfoo3O0Olr5PG9+6KxRi7Qb3YWaUds6dZjzwsQi5LwD3vhaKqypv6eY5oNuM6gRzlZg5HQq3QlshUtqQDNQHgM6x3gsys7vM4GX7FgMj1xampsRj0MG7GrBfEzQu5vSapQOvbA1zuEFjzQ3b7gAh0jAuG90JDOm9l3VhWema0AXQ06Ev9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by SA0PR11MB7160.namprd11.prod.outlook.com (2603:10b6:806:24b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 20:40:20 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%6]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 20:40:19 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/5] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
 display and graphics step
Thread-Index: AQHZkygjO3/9xl4K3U6+X5xzhTttjq98WliAgAAxfpCAAAUmgIAAI5mw
Date: Mon, 5 Jun 2023 20:40:19 +0000
Message-ID: <SJ2PR11MB7715CA4CE2EE7BC7BFABF841F84DA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
 <20230530185529.3378520-2-anusha.srivatsa@intel.com>
 <87o7luaqmq.fsf@intel.com>
 <SJ2PR11MB7715BC65288E5EA92B328868F84DA@SJ2PR11MB7715.namprd11.prod.outlook.com>
 <87cz29bw58.fsf@intel.com>
In-Reply-To: <87cz29bw58.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|SA0PR11MB7160:EE_
x-ms-office365-filtering-correlation-id: 97512133-517d-463a-6adc-08db660513d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y96cCJxSv7OHJBhKYtvnJFxvue7D8y9txPvZXlUThdRNKJJVGaPAIsIpjUvfJdXEnnA2LmAjtrmpeiPBm+sOBc/HgL2ffyuH+YM4owCznY3jgx9l+g2Ath2u90ldL8Br8GEKuGt15iAk7S2vbLCYtW2BAYVgKFJmA2MQboKTaSNRbWrJtsR8fgGa4O0o2bBVEZE11eO6oclSa0Eyn8IXZhbA+pW9uRLgUdZ9DNA5g3rJx4JSB/FEKI4v7vTzup3lpQfrlBTVPt48jvmSE1qf250R3b4SqPTmyTFWcrMc0ptfa0XUtoHpkWSGalSKj4q2o9ygAMze9E+m8PveTpgcyx9dZy77cEJOa+nW7UDsm1gNf5TDp18Vr2Uojq6D2kE0mIAfX9NML2u85eDE6PCn1X57m6gD5+gOZfffV2Zu2nJHONu+2Ou941NvtpBKomd45PnUmpIAk7/vBxTXTHHHmbp+/gvfXBvB7HAE6npOJ1Ox590fpTel8gA71cs+2AtnqkVfyhwxcFoFB2hmQFATxtIZmDgL2zTniMVLU0jSYPz6UVw2/1CXtLVkoTPXx2SluJL+UL+zZQNRgc4Z5WeSDdBawHG1PXRzqYlWrifE7WMf571Isy5+E6vLBE3oEa+d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199021)(54906003)(110136005)(71200400001)(478600001)(52536014)(8936002)(8676002)(5660300002)(86362001)(38070700005)(2906002)(33656002)(4326008)(122000001)(66446008)(66476007)(66556008)(64756008)(316002)(66946007)(55016003)(76116006)(82960400001)(6506007)(38100700002)(41300700001)(53546011)(9686003)(7696005)(186003)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GlWUzh43SnSM61PPUK08OVSo4u3/UM/pgs/VfD0MLtNXGv6CT2Ut3GHcbOTQ?=
 =?us-ascii?Q?kHJ8qjuFiM4TYptvAnKaWzZash6vmsBOL3sE0WqQGneIyY+2kYU1dhRWtvjF?=
 =?us-ascii?Q?nA//gjC3dE80qip+93zuYLA+eeZeQjinpIouqDPdpyzx1QJRMKGYQDtFKzNl?=
 =?us-ascii?Q?WlENOORSk6gDOqdFE+2A/cf+TPQYhLAyhoysi2LcKOQS9SUK1NohmsO3f9YW?=
 =?us-ascii?Q?r+MzwxR7HBX7I/qCS2rN4MRswEQIaoDle+/Z0uZgMHyVY54AQSuVQg6L4471?=
 =?us-ascii?Q?jHObohTXIkG6wEw4zcJOe1LZQTvpFuBoy9EYOitzqxkLao0TSKWbTp0JrFTC?=
 =?us-ascii?Q?63CNr2hkpz2R7Cq2SxVu6pH4uylgsgI52FGG4UAJ+JvDBDdMCwBVgbTqa+YY?=
 =?us-ascii?Q?rjd8rsqNozEYvswuaQGyKu9ZK0iBamS2sJdrx6QPuglZkVtPcK/sY4sfmXK4?=
 =?us-ascii?Q?6vHsmmtDUYQfzgklrnYkgYF+9rKyS1JW9CENOUcxtaaVFUMrZC3nH4KBsCIM?=
 =?us-ascii?Q?ddgZushq2CgVQZEU1q9V+GbQDI58ewchjHkRT6vrEvrcS4l1xLO2eyoxMb2S?=
 =?us-ascii?Q?tVtOHtQegDrvPJFAuyeSomzkLPVAwIPLlGdw+fwX4S3YCPTRvg3RbffPmW5W?=
 =?us-ascii?Q?hcHSz4weZ8c/iEu0YEeBdzx8mOYaN6Cz6UAAp6ycF7wxOm2eqUC94rGkzTwp?=
 =?us-ascii?Q?qpxkG4VpqViozZdhBFN3SHiX78tjO/4LEIDMS/aJGn8tuGujCmHp325orlzs?=
 =?us-ascii?Q?oVenbfNomq7PEeMTfyrPhubgJHw+3BVuXTjx4pjtEXGOd/TgYPQFIaySxmLD?=
 =?us-ascii?Q?ZSB4fViegbNFKKNT9c8Hrfg2N7UCAjyowxI4FdDCQbdfqjKKnLHLL6+Yt1bk?=
 =?us-ascii?Q?59taxAOsXqsQNvfWe2/8Ut8MJAknF0qy938n6ypbb/wlgiAKTZ0WlSnWEfc+?=
 =?us-ascii?Q?kaVcD35rz7tQETxT5RkuW6brhgvvtKVgfm8kbeUkiP0JWUItzlXGTA/IC/E9?=
 =?us-ascii?Q?iz7ONjme48MHNvmPmwStuRV27xVhnlIbsCzVD8669hJLgw9ujIfs/gDDX9Nr?=
 =?us-ascii?Q?Ff6R25URXWe4m/lnxwFqQaCscMWCmMGHM38OVcehnelI/oh9TuCGPul+Qr2M?=
 =?us-ascii?Q?NODpLC6a/WDpI48PeIrL70cJ34B5lMon0GkRovJmQVTr1DiyIxzgdrFsY7TZ?=
 =?us-ascii?Q?kZH8rcnHziLLevApNUnNu9irP553GDuh8bue5FNIOMiDDU/OErxf3z62WwpP?=
 =?us-ascii?Q?w0akg6xz7PJ0tdgLEb34+cpQ3NanVrbcFHIcU228sMAtchXWtTHp5Mk7oa+1?=
 =?us-ascii?Q?fVYmfqGf+OGHJl4H4BY9NiaTV2YuIMc+5CRAWYWJcSg4Ig79HJGERn3YbE1a?=
 =?us-ascii?Q?o1j8bDE/ZijMYil3FN08qZ6C+Jrr41I+iQULNd/c/jdN75ymmsvE1KLe2Xiu?=
 =?us-ascii?Q?5LDt/7P0iBT35ozT+G+ljvxHcRViu1JZzQIU1qVLKt8Li8KMnczjGwmT+Ayo?=
 =?us-ascii?Q?GrdNY+jUT2//Ou3Mt5xhQEa4dds2TxiNj3APLSUD7BBadmzGBC4Q/ugTLDBd?=
 =?us-ascii?Q?NWWMz+knilg8YMQksrY2xCmC8FdjGZcEI3NsEh66LOj9AZpkAbTwZVp+gBq0?=
 =?us-ascii?Q?kw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97512133-517d-463a-6adc-08db660513d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2023 20:40:19.6323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NJKQbcF0m5JGDWtQ29KfgJf0kWROvwfynOzt3ugobKTaGbvUQpwz/GjGFCfbXEaLefR95qDHWV8WnbrMSRO2l4RuzQb7xEi483pyh/xRccg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7160
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
 display and graphics step
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

+Tvrtko
+Joonas

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, June 5, 2023 11:29 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH 1/5] drm/i915/adlp: s/ADLP/ALDERLAKE_P fo=
r
> display and graphics step
>=20
> On Mon, 05 Jun 2023, "Srivatsa, Anusha" <anusha.srivatsa@intel.com> wrote=
:
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Monday, June 5, 2023 8:14 AM
> >> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/adlp:
> >> s/ADLP/ALDERLAKE_P for display and graphics step
> >>
> >> On Tue, 30 May 2023, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote=
:
> >> > Driver refers to the platfrom Alderlake P as ADLP in places and
> >> > ALDERLAKE_P in some. Making the consistent change to avoid
> >> > confusion of the right naming convention for the platform.
> >>
> >> $ git grep "#define IS_.*_DISPLAY_STEP" --
> >> drivers/gpu/drm/i915/i915_drv.h
> >> drivers/gpu/drm/i915/i915_drv.h:#define IS_KBL_DISPLAY_STEP(i915,
> >> since,
> >> until) \ drivers/gpu/drm/i915/i915_drv.h:#define
> >> IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
> >> drivers/gpu/drm/i915/i915_drv.h:#define
> >> IS_TGL_DISPLAY_STEP(__i915, since, until) \
> >> drivers/gpu/drm/i915/i915_drv.h:#define IS_RKL_DISPLAY_STEP(p, since,
> >> until) \ drivers/gpu/drm/i915/i915_drv.h:#define
> >> IS_ADLS_DISPLAY_STEP(__i915, since,
> >> until) \ drivers/gpu/drm/i915/i915_drv.h:#define
> >> IS_ADLP_DISPLAY_STEP(__i915, since, until) \
> >> drivers/gpu/drm/i915/i915_drv.h:#define IS_MTL_DISPLAY_STEP(__i915,
> >> since,
> >> until) \ drivers/gpu/drm/i915/i915_drv.h:#define
> >> IS_DG2_DISPLAY_STEP(__i915, since, until) \
> >>
> >> They all use the acronym. Do you suggest to rename all of them, or jus=
t ADL-
> P?
> >
> > Got the idea after looking at subplatform defines in i915_drv.h:
> >
> > #define IS_METEORLAKE_M(i915) \
> >         IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
> > #define IS_METEORLAKE_P(i915) \
> >         IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_P)
> > #define IS_DG2_G10(i915) \
> >         IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10) #define
> > IS_DG2_G11(i915) \
> >         IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11) #define
> > IS_DG2_G12(i915) \
> >         IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12) #define
> > IS_ADLS_RPLS(i915) \
> >         IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S,
> INTEL_SUBPLATFORM_RPL)
> > #define IS_ADLP_N(i915) \
> >         IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
> > #define IS_ADLP_RPLP(i915) \
> >         IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPL)
> > #define IS_ADLP_RPLU(i915) \
> >         IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> > INTEL_SUBPLATFORM_RPLU)
> >
> > We are using the same platform name for platform and sub-platform defin=
es
> for Meteor Lake and DG2, but somehow for flavors of Alder Lake, the sub-
> platform has acronym. The idea was that developers should not think if th=
e full
> name or acronym has to be used. And that resulted in the series. But now =
that
> you have pointed out the above other  such occurrences, I am leaning towa=
rds
> having them changed as well. That is for a platform defined as TIGERLAKE,=
 All of
> its steppings etc should have
> TIGERLAKE_(TIGERLAKE_MEDIA_,TIGERLAKE_DISPLAY_, TIGERLAKE_GRAPHICS_
> ) etc instead of having TIGERLAKE in some places and  TGL in its stepping=
 or sub-
> platform defines.
> >
> > This was the naming is uniform and consistent.
>=20
> One could also make the case for switching all of them use the acronym in=
stead
> for brevity.

That works too.

Anusha
> BR,
> Jani.
>=20
>=20
> >
> > Anusha
> >> BR,
> >> Jani.
> >>
> >>
> >>
> >> >
> >> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
> >> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 2 +-
> >> >  drivers/gpu/drm/i915/display/intel_psr.c           | 8 ++++----
> >> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ++--
> >> >  drivers/gpu/drm/i915/i915_drv.h                    | 4 ++--
> >> >  5 files changed, 10 insertions(+), 10 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> > index 6bed75f1541a..013678caaca8 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> > @@ -3541,7 +3541,7 @@ void intel_init_cdclk_hooks(struct
> >> > drm_i915_private
> >> *dev_priv)
> >> >  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> >> >  		dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
> >> >  		/* Wa_22011320316:adl-p[a0] */
> >> > -		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >> > +		if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0,
> >> STEP_B0))
> >> >  			dev_priv->display.cdclk.table =3D
> >> adlp_a_step_cdclk_table;
> >> >  		else if (IS_ADLP_RPLU(dev_priv))
> >> >  			dev_priv->display.cdclk.table =3D rplu_cdclk_table; diff --
> >> git
> >> > a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> > index 6b2d8a1e2aa9..81f3ce5a0a1e 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> > @@ -3781,7 +3781,7 @@ static void adlp_cmtg_clock_gating_wa(struct
> >> > drm_i915_private *i915, struct inte  {
> >> >  	u32 val;
> >> >
> >> > -	if (!IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
> >> > +	if (!IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
> >> >  	    pll->info->id !=3D DPLL_ID_ICL_DPLL0)
> >> >  		return;
> >> >  	/*
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> >> > b/drivers/gpu/drm/i915/display/intel_psr.c
> >> > index ea0389c5f656..c25457dae315 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >> > @@ -639,7 +639,7 @@ static void hsw_activate_psr2(struct intel_dp
> >> *intel_dp)
> >> >  	}
> >> >
> >> >  	/* Wa_22012278275:adl-p */
> >> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
> >> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
> >> >  		static const u8 map[] =3D {
> >> >  			2, /* 5 lines */
> >> >  			1, /* 6 lines */
> >> > @@ -807,7 +807,7 @@ tgl_dc3co_exitline_compute_config(struct
> >> > intel_dp
> >> *intel_dp,
> >> >  		return;
> >> >
> >> >  	/* Wa_16011303918:adl-p */
> >> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >> >  		return;
> >> >
> >> >  	/*
> >> > @@ -975,7 +975,7 @@ static bool intel_psr2_config_valid(struct
> >> > intel_dp
> >> *intel_dp,
> >> >  		return false;
> >> >  	}
> >> >
> >> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> >> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> >> >  		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely
> >> functional in this stepping\n");
> >> >  		return false;
> >> >  	}
> >> > @@ -1033,7 +1033,7 @@ static bool intel_psr2_config_valid(struct
> >> > intel_dp *intel_dp,
> >> >
> >> >  	/* Wa_16011303918:adl-p */
> >> >  	if (crtc_state->vrr.enable &&
> >> > -	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> >> > +	    IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> >> >  		drm_dbg_kms(&dev_priv->drm,
> >> >  			    "PSR2 not enabled, not compatible with HW stepping
> >> + VRR\n");
> >> >  		return false;
> >> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> > index 36070d86550f..2019e0a87bd3 100644
> >> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> > @@ -2174,7 +2174,7 @@ static bool skl_plane_has_rc_ccs(struct
> >> drm_i915_private *i915,
> >> >  		return false;
> >> >
> >> >  	/* Wa_22011186057 */
> >> > -	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> >> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> >> >  		return false;
> >> >
> >> >  	if (DISPLAY_VER(i915) >=3D 11)
> >> > @@ -2200,7 +2200,7 @@ static bool gen12_plane_has_mc_ccs(struct
> >> drm_i915_private *i915,
> >> >  		return false;
> >> >
> >> >  	/* Wa_22011186057 */
> >> > -	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> >> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> >> >  		return false;
> >> >
> >> >  	/* Wa_14013215631 */
> >> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> >> > b/drivers/gpu/drm/i915/i915_drv.h index f1205ed3ba71..1a50b8b2f00d
> >> > 100644
> >> > --- a/drivers/gpu/drm/i915/i915_drv.h
> >> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> >> > @@ -669,11 +669,11 @@ IS_SUBPLATFORM(const struct drm_i915_private
> >> *i915,
> >> >  	(IS_ALDERLAKE_S(__i915) && \
> >> >  	 IS_GRAPHICS_STEP(__i915, since, until))
> >> >
> >> > -#define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
> >> > +#define IS_ALDERLAKE_P_DISPLAY_STEP(__i915, since, until) \
> >> >  	(IS_ALDERLAKE_P(__i915) && \
> >> >  	 IS_DISPLAY_STEP(__i915, since, until))
> >> >
> >> > -#define IS_ADLP_GRAPHICS_STEP(__i915, since, until) \
> >> > +#define IS_ALDERLAKE_P_GRAPHICS_STEP(__i915, since, until) \
> >> >  	(IS_ALDERLAKE_P(__i915) && \
> >> >  	 IS_GRAPHICS_STEP(__i915, since, until))
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center

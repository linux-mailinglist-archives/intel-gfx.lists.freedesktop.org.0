Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBE8736EC3
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 16:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29AF210E0BE;
	Tue, 20 Jun 2023 14:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599F510E0BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 14:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687271831; x=1718807831;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KwHRztszvHLwtyxes5Y0Wy7AAdIj/OTcMHgRbt84BR0=;
 b=m1xZw6dkAQYEX8Ne/o8d9UR6AlmEJoVrz1ng7T+9ZBpoq1KMPWOG60xQ
 YA8sUApmTyGTLNr8zbwzrCRrWwCWWP8dV83qwgUv56e/gnOTe+RVAxCdL
 F4/QqIwL3d7att5qsnbiY4+vd+xDjfHXwBctrXbRRw3G8TKuekc1TMG66
 2sxJU/LLNqQ2hBu0fEgClqcC9s4NYNNHmXHeFoR1kWad+kHu9/8+rBm9e
 vqJTjqowysQlX9armqtk7LRsBdellaxiZJJrsUeS+Jm6dd5NLqJ/cRBrN
 iTAPcEaKyRymF1cqeZkwt+JuMjWmeJE3y3dSFQ/hr/lxNmTF5k1HB/crA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357367397"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="357367397"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 07:37:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="664301233"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="664301233"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 07:37:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 07:37:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 07:37:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 07:37:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jlgyL2Ea2H2qAAwgtPV/RWJkOQ4Zfh1iitlyl7BR59/LUZh/ttyNiFro+Z9Uz3nth0Q3HXIkS+ondHUyogqpq86y50pHaPLJO+rJTdgvJcddFMdVUTtC77PLgz0bke6nkoN/BHIwhHcMiXQhP/U1feJK0INtHo/VGcdX8U53ZI/C6aAEIHTndR9zyaPRXmqKSLXGU9qpT9AzYs+Gj48ZlIYKIhjcXtWY9CI6tU3xFbPw+obNNVG+NMG4UWZZ8+2OAM/8cApR9ga1Tn6yiDJ13M+f5Dmw1r5WZ8Ulbvnupmpgz3mZ0r+Y7RSCm1jc5RPs2i+C2IJ5m7ZiR3xwwnHmaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bGy8MqFS2oyLdfxxwYVIYNbpN9sUceo3KrTLp60AzQc=;
 b=NocH1wzc14R4kHur/ScP9LhCRr155EHWJhuqnBVn03IlQ1m7y985G88yxyO/KTzb8fu+IGuWJ1oVUvP/MGJWsnmVW5rMxiPO7CTHCn+XtdeOrLGFwDNYag/mu0LWiZz1a3fYXfq6UgSJnbX7cqjwpl1LyBM3MJ1YAt/4NR/NRhTf4pzP+ikbMKXFW23TbKMGHM6p5qpYEq4/XjaoEHoI5QkuiV6rH8DT+xSjHF3oRaEA8vHFc+bysfJ/HI/MdNJhHumbQxn2NoRTm/X9BrUNM6DWAz78h5kMtJ0kk+w2At7cPOjfDylD97khCj4iCKfvhrJ8E/X/jifcsA/GugqwEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by DM4PR11MB7254.namprd11.prod.outlook.com (2603:10b6:8:10e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Tue, 20 Jun
 2023 14:36:59 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%6]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 14:36:59 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/11] drm/i915/JSL: s/JSL/JASPERLAKE for
 platform/subplatform defines
Thread-Index: AQHZn2+K/LAtPlWc20S0nPMRXRFctK+R1iUAgAHwneA=
Date: Tue, 20 Jun 2023 14:36:59 +0000
Message-ID: <SJ2PR11MB77154734BBAA89E6A6E09810F85CA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <20230615095421.3135415-5-dnyaneshwar.bhadane@intel.com>
 <87pm5rkffr.fsf@intel.com>
In-Reply-To: <87pm5rkffr.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|DM4PR11MB7254:EE_
x-ms-office365-filtering-correlation-id: dbee5da8-68c6-4b8b-c32d-08db719bce03
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jiui4AgwIPLw1sg84ZU45uvxrfO2XaHPw97yu6OMEnltmxHtYRMId58erdaIqBHWFztl0H4Bw1njT+YEjuAfD9Von9BnhWyquHwl+k+8+Th5MMO+tfItZ3V1HV+TCSXPEdwd0O2TM8S9tYVjZu8aviw5jStpWSqfFcVd2Dgt7Q1PZ8x9YuSkaO7ijBI7ZXFfBwe9KudfsAs7SDCFMl7LaQGZ/tKgDjKMGEKvdplbrWldbQSLuBbIsm8+BzIFzrowzwNy2dmfs5shF/OG0GLW/tfmkKe+RNqHunyw/qUn5ZvzINmT1+20wusb2TeDTPJx86NozLC29wEieRHm2wPdjv48wdC3nZLqHC+1VTtDpqbpFqQeiPnTa+tCmakLaIk7rC2TIG7lA/wpM6OuObMCM2CQ/pFeIl2J7jMR8k0lrNJbJc8tmOzvR3Xn9mxsaEW/326i2mLsDLwnIA24LOc4eyY/3oiIKH3+q6Pwx9eHasskvkRh6sJvutnlo9CNRmaE7Wpdc+C3MxWdmRGGWQhkf0sj2LteXvqT8OpTdCQsdt+1hmo9hjwX8n53Re6yYh1Ri3iUnt8SqnOAdhaDemdNSOi2Q8XsFZs6RXtA/Utjy+pQmq1x6VEbraL4w5IemgJm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(396003)(346002)(39860400002)(136003)(451199021)(38100700002)(82960400001)(55016003)(122000001)(110136005)(71200400001)(7696005)(478600001)(52536014)(2906002)(5660300002)(4326008)(64756008)(66946007)(76116006)(316002)(66556008)(66446008)(66476007)(8676002)(8936002)(41300700001)(83380400001)(9686003)(26005)(186003)(6506007)(53546011)(33656002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sYmqC+0oZnFd28QnpiHJcx38urwG67BqQJwAjA0eTZDpXsg79m06Ycz2KrdR?=
 =?us-ascii?Q?rgzLHtqlSEvoa4sH42Ao0AmSQfkIZ0Kh3tH09qZ1qYrbjdIWgervDZ0CEoji?=
 =?us-ascii?Q?KvjJqx/eE6Pf/M35AuvMGBQf8czY2CJ2chyxKvFuibFec4tt8ixNP73b98mQ?=
 =?us-ascii?Q?wVfGIsWiHRlZ8QyEzbWjqLe69612LgIQQED3Ux6kNvlHMp23SNS4DnhUkcnJ?=
 =?us-ascii?Q?A4JYTgQ55oxzs64S9G83uK2JaLN9n+oFG1b41V9hgTip7aKxf2UeoIWnqj5+?=
 =?us-ascii?Q?4pf7ysZlHzbcPJGmbQ8MOVRjOcZLw/B4QbhE5i3AFad9bwQ0HItbGxD2LbrC?=
 =?us-ascii?Q?/wyRXzN4nyqVcfQBgJLEu7eV/i+PpsztvobbW1xoAHK7VxuUJMOHqJfPzUNG?=
 =?us-ascii?Q?Jb7d/mVFZ2pEYuthQJpVR1WDpYXKlBHBw2rzx9EhQAVFl0YByg4tN7r9WU+z?=
 =?us-ascii?Q?FHpzh313eQ+LeAradsTaGtB+lUqDnuGw4tBFeoL2NlSoI6IwCJAlkpHjir3C?=
 =?us-ascii?Q?mDO6PyBNps5aFF1mG8C0SLBX/+3xcf3rqKeVUof5/m0+0hLxS+opLp/IjcEY?=
 =?us-ascii?Q?SNIsiWg1PAF/nIJcBvb/fcOVBMvBKDFEkjaX63/2FUNXmPkHDH7kY/4X4GST?=
 =?us-ascii?Q?6Kiu4sh38GhwiK4AOAdGJKs2aNExdmNMVzY1l+p/CzbIiTf88eQVU+ATN/P5?=
 =?us-ascii?Q?T5JOEGnHZviCbeeHGq7t4cWA/pY8cLeFfPZtvj1dp8Ypx0vUHIT/Wd85/w8k?=
 =?us-ascii?Q?gTvP0zBxjrnuUsNsASxUx5EnpjvFSzTHedTRqV13TQq5MULc3hZv7ebeOTMy?=
 =?us-ascii?Q?Ulvw8Ie4Fuf9S6nYPEcIWzYz+KeOZf9q1n+4d0Lg1z7+lHx/ZvuT3Acv+fST?=
 =?us-ascii?Q?M/7XCg1k3jHKib7VU/HXZ19jKCn2r+jdNjW7sjl/kq/IDNFe4ftSKaNDoJw4?=
 =?us-ascii?Q?hBJ8rk3Hc0oMmn1IHrA2+794bzQgGcgk0C41MCSahek8g6xgWb8+TKhv+dbc?=
 =?us-ascii?Q?Dj68Bcq9tsChMNUSFGm6V/fzrb3UjfcpvuQ/grx2Y/aaLUTHWXakPVOxvKKr?=
 =?us-ascii?Q?/orFVroYwt/6m18dHL6ZZiUHds2U4DEzFSeYG8LnfAPRNcawf6FP3Uq1HzRp?=
 =?us-ascii?Q?TzXOeafpMPteRTRxexEtalOuLk2eN1jf1XDEn8vkHvqhQabjTzWhWGhXIl2I?=
 =?us-ascii?Q?WhLPJ04ztQmP52QpU5J1ilMLxSJFweD+x6WR9ZCS4JCkfmdxdhL9Qrhyhgip?=
 =?us-ascii?Q?BXY9+nybNxdfrU3coVlVGQtaM6PzrgKso7nnzpgOUEbtZKrM8lzyoojP01Jw?=
 =?us-ascii?Q?KQVPvSOm1z5+33sWeSLFOlnci/dW+w2hhq9ie+aP+xz/o4QBt4To1yUMTOAO?=
 =?us-ascii?Q?eyDcUuAliyLokfkEvlaD8qoDtfOT58EKVobqX0BAdtBJ9Wh0jFYwme0kPvgL?=
 =?us-ascii?Q?biyJf5MfvLLlJeUFn9IKTPoKPA8zckzLDhsYzryTtxBI1ktt9ZkKQRocjOxg?=
 =?us-ascii?Q?P1xx6C/32xdgT2Sham71kJZRU+11+K8FM284fjBknFM1WtuPN7jB9Z90kYzz?=
 =?us-ascii?Q?qdMR46fz/4eMNhBNO+5f/f9OFvv+mK6Lc2oFWPzA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbee5da8-68c6-4b8b-c32d-08db719bce03
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 14:36:59.3098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zwna3NfXXtnrTKGCiZX6313hOBSe7bZfnop9h7uDofghxntDEJYXasVAnNPA0MCyL2NIJ3nLwZjWIDMh0kPlmFpmS1fEWNasB2UQ2TaUK6k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7254
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/JSL: s/JSL/JASPERLAKE for
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
Cc: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Monday, June 19, 2023 1:46 AM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/JSL: s/JSL/JASPERLAKE for
> platform/subplatform defines
>=20
> On Thu, 15 Jun 2023, Dnyaneshwar Bhadane
> <dnyaneshwar.bhadane@intel.com> wrote:
> > Follow consistent naming convention. Replace JSL with JASPERLAKE.
> >
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>=20
> > -#define IS_JSL_EHL(i915)	(IS_PLATFORM(i915, INTEL_JASPERLAKE) || \
> > +#define IS_JASPERLAKE_EHL(i915)	(IS_PLATFORM(i915,
> INTEL_JASPERLAKE) || \
> >  				IS_PLATFORM(i915, INTEL_ELKHARTLAKE))
>=20
> The new name for this is just dumb. This matches two platforms, JSL and E=
HL,
> and there's no point in one of them being an acronym and the other one no=
t.
>=20
> And IS_JASPERLAKE_ELKHARTLAKE() would be too long.
>=20
Agreed on the long name.
Given that we are not touching Elkhartlake in this series, we can probably =
skip jasperlake too?

Anusha
> BR,
> Jani.
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center

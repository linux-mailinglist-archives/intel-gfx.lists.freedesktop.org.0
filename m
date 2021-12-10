Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E841946FF05
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 11:50:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB84E10E680;
	Fri, 10 Dec 2021 10:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7393C10E67F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 10:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639133442; x=1670669442;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=X+L0Xl7miqlggOOz8C7UZKzBoQAe0BuFSpzAvTWFZF8=;
 b=LwzQhlLHe4MXTnZ1pdNc2eOyVf0WIXRpxvMCuFIfCbJmHs3kd6jtswFJ
 SgOMSRm6hMvGrd+gC+qNQz+lET41e3aRhttMW9qmp9m3bGSM71tnIkxAf
 LJgGSTZY1OBxHr93uHkRiVvF3FCLvSKyk7cgObc1Y6+0hQwyZsFS2v5qx
 ULZg6q5toP23qPvg0We8omnNd7dCL/BUYH1/ELCoke1lHWvkGAhk4SMVS
 TEjpYrLqO0uTST2iP1xs9UXVcuOmKr5phq+V+Is4IQ+vwiam2KmRUT8S6
 2D6gwyQ+sdAxQkmUNURWGUIoDfEJee2J7yGePK9dy/pZaaeDBhfQNLSrC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="225598778"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="225598778"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 02:50:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="581653221"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2021 02:50:41 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 10 Dec 2021 02:50:41 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 10 Dec 2021 02:50:40 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 10 Dec 2021 02:50:40 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 10 Dec 2021 02:50:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mU8UaZhLH0sx8W2CS2C7MJtWJ4QJMs29zRxejvCq3IHqTUdy8Djif2hpg21uSiBMaqOQJdJT/OXowJ0sSDiJbFjSlQrFA02A+1IyYhGSc7vjP7RnkQtRTAnKBJ/RdDzdsqaWKdAzPfkKhR4PWyfYAg3yZKzjTL0XyqAlDm+/s95JJWBbOxo9XysIeYKA+wJQodZZveF6aVWd3ImPhuNRmdt97v7D3Mbvdp89RRdYSu11QAF1ERVzD0/IfK8jTzOu193DW3/f7rI7X9cdFKbs+6s/8GfhC2qso816BU+L/bHbjsRQl26UVZrMV1Df1/cT+02ggPVcgc2xpMq81TVz9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yDLoT1Y+XYjDHTYWQIUTn7drqCrfyJVsVOK9tFToGDI=;
 b=cbgBoUJWyTotpfquT13PTKPRGFhaAF75TIbEed73NHeNpAXEJspEOqtkvFTC8sfdmNAFRFaN86wKfhlnm6ZDpxn0a7Nykj+3t+pmdGB58+0Thi3axCY7X9ZHW/IbgQMuuaacLM0SUjQo9weIGiVHWsPX5F8u991waIuX2cfLZymG3ij0RkI/rxWde7nKGS7V8Ol16l32RYW0c3lf64sedLR5B4GGn0bFe9PCUS8V584QmaEApdgY4CuHsy8MnCQvUX28jeGYWPFHncBJfwdiv+wkyI1fBFUZxfuGZSNDSwcVPiE+a4E3oie6UXP++D9lkEtNwL49YEzRDUF6F4bnwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yDLoT1Y+XYjDHTYWQIUTn7drqCrfyJVsVOK9tFToGDI=;
 b=HIH0IFzCRs45xzjm5fq3T8+1LaYMdLn+IZZy8NYkG7lR+BTnstXJDrSaAn4MkSHg7Ug3RP6h8tIaNeG1WupTO2MlMyrgcOOaJCJ34u8R8/CuQiUFOYnrbproSUmwK1yE1mAPnjc/9sFwCYAl74sV3Mnbds06qf26781FYaKSFYs=
Received: from PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 by PH0PR11MB4934.namprd11.prod.outlook.com (2603:10b6:510:30::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.12; Fri, 10 Dec
 2021 10:50:39 +0000
Received: from PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::3508:ff4c:362d:579c]) by PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::3508:ff4c:362d:579c%5]) with mapi id 15.20.4669.016; Fri, 10 Dec 2021
 10:50:39 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
Thread-Index: AQHX7YYhrOOTKiq5DEe+BSsBx1UfbKwri98AgAAAXgA=
Date: Fri, 10 Dec 2021 10:50:39 +0000
Message-ID: <PH7PR11MB5819F79DC3340A5357D850D4DF719@PH7PR11MB5819.namprd11.prod.outlook.com>
References: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87zgp820sl.fsf@intel.com>
In-Reply-To: <87zgp820sl.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49537695-e7e6-44f0-d643-08d9bbcae796
x-ms-traffictypediagnostic: PH0PR11MB4934:EE_
x-microsoft-antispam-prvs: <PH0PR11MB4934DCFD2F8180FF2EB347FFDF719@PH0PR11MB4934.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:27;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G7gruHQwxv6HVQMxgI+BAMynigCW1RtOloLhaGjQs5owBNPx57PcFmjRj/bbdSoLQP/9f28SgIP+sDh1eKzSzVORLtgnKTyyBSOk5RlCgcVBwrt/3/GeyPQi2LVfa6mWOuxD11D4UsQsp6OoId6uAepmznx1cGq8iTLv4syg9nkgkW/kUCIk2JMeg/1OrgfcabYedUksuxIflDjhQni2lVuk6H8rJ56dfPx0ZhULsvmFJICdGisz4yXWNE56ZMiWDcHwSIHgs6Mh6rqENmRE6LjbCVGZVZEf3APhwjj/SGpodL4dcUf29AQaMk3Xax3JpwSMNxyiJNsRipPnh2p0qtqlm+T7GAtMgermlneMHmbJsZvuuGOCaPWGNd0n+wM+zJoQa09mT9YO2OppJzZd2nIcmN+GG4b4Q/8pnlk3l+yg8771VaiMfEmjPwx8JqVU7v/EIO3zSNOx2A0+9/fE9yeXWWanXPi/60C1zN3aKvYH7/hNt66PeUvtvhel+uHIERp7p6ssNDk32M8Slk3dmA/WP97/uQl1y6Gk1LkALfFxd7KkNDNmm2uc/4tQJ5s4wpP7cgcLCy6Zog2cdBsx/sFR991TK3d8dImNglLr7CCdqHAwPi0e9b1RJVu5aPn7IDwGEgsMP2zMw4CE+fFp5L225DxYscFphsvCq/oSyg2LhN9rA4ZMU5XJbONPszMD0W0Rnb2M5WTMfXCVyLu9gw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5819.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6506007)(82960400001)(316002)(2906002)(8936002)(26005)(71200400001)(7696005)(53546011)(52536014)(508600001)(110136005)(38070700005)(9686003)(33656002)(64756008)(122000001)(186003)(76116006)(66946007)(66446008)(66556008)(66476007)(86362001)(8676002)(5660300002)(55016003)(83380400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oHfuEW75JjWbNico9OfX0o7TXxblnzebREB/nblZzKxW3j+HDy2Pw+P9KncE?=
 =?us-ascii?Q?0n70UPHI0J7tqGNhoRmiS++Gf14PN4kyY7HbV3qvv8MTgfrh3eghgHm46YK/?=
 =?us-ascii?Q?txL5vfCHHz4pIzdSarU5ncduBJaCpLnHbaJme1Jr+qDHoJ9D+BPffbD25cTH?=
 =?us-ascii?Q?ePX57Ng8JcpgINEGpRM+Fsq+8s6QE3aZVD0kjGCjA1YG5g7YaonH/5f5ZYlI?=
 =?us-ascii?Q?Wewh9TDdOq0lRakk/scwioEyV9Hxl4NXp3qO7MuZkIWE482YwLbUayGX+1xz?=
 =?us-ascii?Q?TvlS587VkwFuTWTU1NqpjBudFWwu+HVGRCzwoN/Yo7pN4oycY7KEcJsKyWxz?=
 =?us-ascii?Q?xGVUBOdhs2R/KYKCelPdFxJIYkOIbORbHlP/9BxwsltXow61nAPCJxeAAdEs?=
 =?us-ascii?Q?yHs0OfycWfGJgMAvtpbHZaV3ASdpazkYJWQMjIbdxF4LqUP3k2367iCq8mxe?=
 =?us-ascii?Q?eOW9/5XoZxCuywiHm6keFaYtE5QwxR3lt1qvHCImNowcLtemRdNZF9UR2a1y?=
 =?us-ascii?Q?9JJP2fmLq7nglm6lfJBxnpYG5JpJd0EmkMxVJDBvdzOS3WPJDaEaPayudFgg?=
 =?us-ascii?Q?0szxoVyoP9rfc6aVfpxeJzUxT2XXPIzjnmGm0lC4Qkp5dGIVug3uDDh7bGdA?=
 =?us-ascii?Q?pvHe5fLLTMLrVl9VXt4UKbd+RuG48Qh1KCF1xM049ipZsLA/74SBZlLtkZmt?=
 =?us-ascii?Q?ZrrvrQzKjjCtQQBg4HBrqbSqik4XGI8Eq5gmiTjXEhIanqgBpWa10gZNeL7n?=
 =?us-ascii?Q?iNBCrm0QL15qTuGnio1FXG8Ad6IqUL6iCW/bcq/hTD4dVxWYikeyRg2IYQtt?=
 =?us-ascii?Q?H0jaRJlJ65fImCXc+JyJieg19jalu7ZM4WGHA4nKBrGPt99gdL2VejLjsbRW?=
 =?us-ascii?Q?EIetLCvrfirhRiDDOnCAnBCnWdJfnE7V6clAdHY5PKmzJPA3eTrYyJoxHbH3?=
 =?us-ascii?Q?Y0UlMzL43lbONkmRTZudh6r7zFt4I5yVgVfFGJm1jz40r+ATvA8VovNESDN7?=
 =?us-ascii?Q?UOh/vomvkJ83ag6J5v7otYPx/sszz5CvE9muyxrjHsFc4l2FY/i8zpbFCAVt?=
 =?us-ascii?Q?8zo35W3lh8xLBMeDRSZJu5huAUiZnK3ifxgIDNX5fjG7UD4WmS4/Q7sUgr6M?=
 =?us-ascii?Q?fQqc6CSP9Y8VNts9mq41kjVjt4ldJ8cLm6GlAPtY6LgtpVs2qIlIX2kYJ+zY?=
 =?us-ascii?Q?T9FguF6hUtrQEfjEhbCUzQY9goqW/+WPBMA2jOEluXfrGI79vLQuCVOZwmqE?=
 =?us-ascii?Q?w37fI+l7seCZw1uC4yjC/6+B/S98T6B1CbqBgnrjN0Pe3oAXJsz8hmGDU3rp?=
 =?us-ascii?Q?93M1vdqfE4HaVc4S16cGfl/hLtxMQU+9tNHvMswPBWgM6zAwMr0TRbopUCu9?=
 =?us-ascii?Q?eE8XYB8VBi6XrZ/f9hIPzHH0cp+WJ1H0+yfZjSYIOgsSvkyOkmRpJTNMhMVE?=
 =?us-ascii?Q?rChHYK9La2tiMSmENY8idlLoahO6nPz7UfA6RDTgFBt8dxke1qpi7K4O0WOG?=
 =?us-ascii?Q?dGQtB1/PEvdT+i+EFpQ1Rb4n+Jg6PgeL7YBQdXRQMbml70g5Ni6kPvA1IST5?=
 =?us-ascii?Q?QaKr87iuPZYY2GDJP7N59+IN6Em4OWDx9nSpBlM/WJqtbz/pvwQ3GV1h8T28?=
 =?us-ascii?Q?SirENtmGMNVIUjQ8u7ub5fyAGVm79UqaZXjTMv/W37c6tyJazuCKgzVjezVV?=
 =?us-ascii?Q?73KKUIuT5UbSMzvZ1laZn/R+NDOIYp9LoiCKG2EJFmJMltmN5t+8uKRApibD?=
 =?us-ascii?Q?sNVJT4xi+njzuaged9prjstcuXjvORALblg74GmhE6TwLReRQ8AVKXRbIa2m?=
x-ms-exchange-antispam-messagedata-1: vHraP9rFho362Q==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5819.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49537695-e7e6-44f0-d643-08d9bbcae796
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2021 10:50:39.1501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LUHHgLOfsLenAK/BMiCjaNUik81KwxL0LmjkmEKKD4IyM2XAk/VXYRoyjuP8Y2hoEU890iALkVBAKSGn20YcwtPhCdRHcRTPYlVMvtuAonaOQxxc1cMMbsuxgkwHPR/gtZ2xQwskyrut5xYR+ZAzrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
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
> Sent: 10 December 2021 16:18
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
>=20
> On Fri, 10 Dec 2021, Tejas Upadhyay
> <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> > Adding PCI device ids and enabling ADL-N platform.
> > ADL-N from i915 point of view is subplatform of ADL-P.
> >
> > BSpec: 68397
> >
> > Changes since V2:
> > 	- Added version log history
> > Changes since V1:
> > 	- replace IS_ALDERLAKE_N with IS_ADLP_N - Jani Nikula
> >
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  arch/x86/kernel/early-quirks.c           | 1 +
> >  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
> >  drivers/gpu/drm/i915/i915_pci.c          | 1 +
> >  drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
> > drivers/gpu/drm/i915/intel_device_info.h | 3 +++
> >  include/drm/i915_pciids.h                | 6 ++++++
> >  6 files changed, 20 insertions(+)
> >
> > diff --git a/arch/x86/kernel/early-quirks.c
> > b/arch/x86/kernel/early-quirks.c index fd2d3ab38ebb..1ca3a56fdc2d
> > 100644
> > --- a/arch/x86/kernel/early-quirks.c
> > +++ b/arch/x86/kernel/early-quirks.c
> > @@ -554,6 +554,7 @@ static const struct pci_device_id intel_early_ids[]
> __initconst =3D {
> >  	INTEL_RKL_IDS(&gen11_early_ops),
> >  	INTEL_ADLS_IDS(&gen11_early_ops),
> >  	INTEL_ADLP_IDS(&gen11_early_ops),
> > +	INTEL_ADLN_IDS(&gen11_early_ops),
> >  	INTEL_RPLS_IDS(&gen11_early_ops),
> >  };
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index a0f54a69b11d..b2ec85a3e40a
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1283,6 +1283,8 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> >  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> #define
> > IS_ADLS_RPLS(dev_priv) \
> >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S,
> INTEL_SUBPLATFORM_RPL_S)
> > +#define IS_ADLP_N(dev_priv) \
> > +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_N)
>=20
> Oh, what do you need to use this for?
>=20

Tejas : This is readiness for ADL-N specific workarounds.

> BR,
> Jani.
>=20
>=20
> >  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
> >  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D
> 0x0C00)  #define
> > IS_BDW_ULT(dev_priv) \ diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c index 708a23415e9c..6a19e9da53cc
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -1132,6 +1132,7 @@ static const struct pci_device_id pciidlist[] =3D=
 {
> >  	INTEL_RKL_IDS(&rkl_info),
> >  	INTEL_ADLS_IDS(&adl_s_info),
> >  	INTEL_ADLP_IDS(&adl_p_info),
> > +	INTEL_ADLN_IDS(&adl_p_info),
> >  	INTEL_DG1_IDS(&dg1_info),
> >  	INTEL_RPLS_IDS(&adl_s_info),
> >  	{0, 0, 0}
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > b/drivers/gpu/drm/i915/intel_device_info.c
> > index a3446a2abcb2..54944d87cd3c 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -170,6 +170,10 @@ static const u16 subplatform_portf_ids[] =3D {
> >  	INTEL_ICL_PORT_F_IDS(0),
> >  };
> >
> > +static const u16 subplatform_n_ids[] =3D {
> > +	INTEL_ADLN_IDS(0),
> > +};
> > +
> >  static const u16 subplatform_rpls_ids[] =3D {
> >  	INTEL_RPLS_IDS(0),
> >  };
> > @@ -210,6 +214,9 @@ void intel_device_info_subplatform_init(struct
> drm_i915_private *i915)
> >  	} else if (find_devid(devid, subplatform_portf_ids,
> >  			      ARRAY_SIZE(subplatform_portf_ids))) {
> >  		mask =3D BIT(INTEL_SUBPLATFORM_PORTF);
> > +	} else if (find_devid(devid, subplatform_n_ids,
> > +				ARRAY_SIZE(subplatform_n_ids))) {
> > +		mask =3D BIT(INTEL_SUBPLATFORM_N);
> >  	} else if (find_devid(devid, subplatform_rpls_ids,
> >  			      ARRAY_SIZE(subplatform_rpls_ids))) {
> >  		mask =3D BIT(INTEL_SUBPLATFORM_RPL_S); diff --git
> > a/drivers/gpu/drm/i915/intel_device_info.h
> > b/drivers/gpu/drm/i915/intel_device_info.h
> > index 213ae2c07126..e341d90f28a2 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -113,6 +113,9 @@ enum intel_platform {
> >  /* ADL-S */
> >  #define INTEL_SUBPLATFORM_RPL_S	0
> >
> > +/* ADL-P */
> > +#define INTEL_SUBPLATFORM_N    0
> > +
> >  enum intel_ppgtt_type {
> >  	INTEL_PPGTT_NONE =3D I915_GEM_PPGTT_NONE,
> >  	INTEL_PPGTT_ALIASING =3D I915_GEM_PPGTT_ALIASING, diff --git
> > a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> > baf3d1d3d566..533890dc9da1 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -666,6 +666,12 @@
> >  	INTEL_VGA_DEVICE(0x46C2, info), \
> >  	INTEL_VGA_DEVICE(0x46C3, info)
> >
> > +/* ADL-N */
> > +#define INTEL_ADLN_IDS(info) \
> > +	INTEL_VGA_DEVICE(0x46D0, info), \
> > +	INTEL_VGA_DEVICE(0x46D1, info), \
> > +	INTEL_VGA_DEVICE(0x46D2, info)
> > +
> >  /* RPL-S */
> >  #define INTEL_RPLS_IDS(info) \
> >  	INTEL_VGA_DEVICE(0xA780, info), \
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center

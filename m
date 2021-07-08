Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A41EB3BF2A8
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 02:01:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE6FD6E1F7;
	Thu,  8 Jul 2021 00:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 047AD6E1F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 00:01:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="209234064"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="209234064"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 17:01:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="461537525"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2021 17:01:33 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 7 Jul 2021 17:01:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 7 Jul 2021 17:01:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 7 Jul 2021 17:01:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZHNa/t12xCAIUpBUAFx3gv2X+Lqj+QaY+7dRgRvR7dJAjylxvK/wFAumZPzN+BDFF8bzLNGgAXqfOjxE1scTdApCb+xBsj5lDa2bxFZZlbCnBf3XgkdOKdK7BL4NKWLpVaHlEgNEfMMypOrmxZLO/ne8hyQ5QcDYoqGZqZwe1K8bwu3ZiZYRTC47g1TLqfhHamfwkurz0cOpLNDe64KumNNtgP2MyWPuCKMTJ5m32RHXM+YFFv9os662sF59PaTku+ANlsf2V22uzYrZklfUxFExIkaNfw24sXAQufkghR0p0GZP0cd0sSSRA3tCB4NhNsctE1YwsAVMEd3r45A9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kQe2r/Cx7u+Z9R+rXtm6jhEjP2kfsUb4Z0zL28wUG7s=;
 b=BoZJ7iSmucDBPqmJMnq0DgENHiuAbYsWieNRl30nTqEJwV5AeTPrW0kKQeClr6e51z2SbUG2Ug6og1El6lX1S1PAuHTev2H02g+L4zy8LX2kI78E3UHcuLdmmEK0P5lM9EpooV3ceUz5k5A3pyW+bBw+siuQFw1Ql8k5zVB7qrYhmjpuod0rIfK/38QB5K/2ersd38h91cCi3mrxOzp/bS6uyOevhv0ye5csZNp3ySUMiH0V/U/YUyDqNk4Pro80UFfUZ9Ci2nV670GY3hQZ6oYVz3RwFdDqiVaLAc4qvROKHKM/1eSnZZJjBx2/Ev3HMJTHa3pqB6ugQrJslamSuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kQe2r/Cx7u+Z9R+rXtm6jhEjP2kfsUb4Z0zL28wUG7s=;
 b=VEtCj/Wn+wqHj34TGl4Uj2BfCxsicLE3qWcr90AqvouAN04FUSPAgV3Bqr8gMKM7u3nIofck6SBFSUmpRmJzeGLqupUM6HHAvTqtaKzLhA5p3nywtD2/S0mzpn4D24jw109+9zSRgey7qooDASO6kV9MwWj+ZwxvdjNqGU0ngM0=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR11MB1310.namprd11.prod.outlook.com (2603:10b6:300:28::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.23; Thu, 8 Jul
 2021 00:01:30 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e9f3:b903:83f2:d244]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e9f3:b903:83f2:d244%2]) with mapi id 15.20.4308.020; Thu, 8 Jul 2021
 00:01:30 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
Thread-Index: AQHXbHh7DpG9qJHNiEuzACuu1945eqsrknmAgAytY4A=
Date: Thu, 8 Jul 2021 00:01:30 +0000
Message-ID: <822bc4dc438d59d9c666fbea92cdeee77f80dc22.camel@intel.com>
References: <20210628235054.694581-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <f87ced2d9d378eeaba2be633dd9c5dd770ac9e63.camel@intel.com>
In-Reply-To: <f87ced2d9d378eeaba2be633dd9c5dd770ac9e63.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-1.fc32) 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a25fbf0f-afda-4313-a111-08d941a38a61
x-ms-traffictypediagnostic: MWHPR11MB1310:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB13109DC88259F00B71FDE2CBC7199@MWHPR11MB1310.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DbJP2vty+uB0eYrjgV+3i6pZBtE23x7+djAZ7lc8NQjeu7EzSzCtxjzhDjATY9c1oaTCq/3uPIQPghpuAPHY7ZkBJrlP9qP4jo2aBtTVrj64+qEvzfspGrLIJL4l6Mbd8bIE9POlaFKebEVwGziIGvRoweY2C4OC5+GAtUnMEciFRHRzdKqIXLNLk4uYp+w/Eeyrw/IjtYZoX8w73wx1BvIbg0XfzNKItO4LTYjoLvfzbcsMvbQIxJmka60KeEbUzxI5iaY0SAoj63KOuPYMaDNmRF3J6xYL5Xx7m4+M9iJv+vWrmqzPaaiHSmhhwXi8pT4mCYNFsMR+Of2Dg6pajuHcg95cCl1XERGSbP5vdiWuKNiDw6oQhukYyPvmmWj9dh+tW0JDeUSncfraCLU4RgeafssDbCcI3jKoc0n+pvXmNuuAYIf7gRea/jHJEFgRw3Ugwm7+dP/tSAlpw2eWfY6rbugYlh3R3qNZwmV/1XwvQGtwjrblXC3fxQwCMGEd+cZ9pYELS3fGkXQUL8MmsiYaDrYcVDKSR6ovtlBlOSFCAXAFS+biTGtd8kJLl77+NCI0RPPUTPG8RBDrmiUy2MzVgyKdlwRjYfIBuiNJ0b+70J9T/Nj+WoD2bj/MmEIV5jQJ3j0h1y/jY6hy3gXBiQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(346002)(366004)(376002)(39860400002)(478600001)(6506007)(66556008)(2906002)(186003)(36756003)(76116006)(64756008)(66946007)(2616005)(122000001)(66446008)(66476007)(6512007)(5660300002)(38100700002)(71200400001)(316002)(83380400001)(6636002)(8936002)(8676002)(6486002)(110136005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmM3RnhSQkM0N1llcE1hWm9GSDlCMDNsK3dubThKRWoxT0ZMSjhLdkk0b3NU?=
 =?utf-8?B?TVZGMXhZZ1pGVU5YL0hBcnNQWUtpL2pNKzFXMitoMWZjVDdxUDNBTVpxaHF3?=
 =?utf-8?B?Uk51NHlRS2dON1NTdnF5ZE1XYXMwY0ROSXp0bVVteThMUmM3cVdtaU5sVWRF?=
 =?utf-8?B?MnIvVDNJZ3MzbjhmUnVOelVPRDVLY1pLbzRabGM1N1gvOHdzZGt2M2VvcFY0?=
 =?utf-8?B?dUpuK1NUWVE0c3pSd2FrRmNacVhTejU1bkgvNnQvSmpPVnVDTkRZbGoyUUh3?=
 =?utf-8?B?K0NxeGFMdnlrc1h5d0ltT0lYMW91TGlJeU9HV2tOK09MbmxwTXczcmVtUkhG?=
 =?utf-8?B?dXJkWUxZdWs2eHNXa09wZGZOUXhncjJpN1pLOEJmM0VpVGd5R3JnZVFMRy82?=
 =?utf-8?B?UVBQa3V6L0k0b0VIdFQ1YmtPSEtvVzlTZlV2SG9nM1RYT2dtNFlCZVc5WkNH?=
 =?utf-8?B?UXlmbUM0eW9iUDNBbXRxYkpvK0dUbHlEejl0bFllQzNYWGFlYURpSVY0akkw?=
 =?utf-8?B?OEp3c29jK1V6eGxjYmVyUUgzR3d1cS9zeU5McUtLLzN3SDdkbjNkOUJLZzBr?=
 =?utf-8?B?VGttZjA0NVFhN0lHVkF1dWp6eGdYV1hYRDlPSHRVdGRTSDRPYzJqS1UvT0Fz?=
 =?utf-8?B?T1lndjZ5OUxXTzA3UjVZT0xVSENNMW4zRmIweGkyOEg5MmhpeVE1SmhJRExp?=
 =?utf-8?B?dlV3QnRyS2cyTGt1b3EzL3F5ckRNSWlwbEtwMUVQcUVrVlVJcFd5WUVqdDVl?=
 =?utf-8?B?QVBKYy9qM3U4NWk5TjVBb0NWMENGQmR0SjZib3JBQXJ4VFNmd1JwdUh6cXVl?=
 =?utf-8?B?R2pkbU1zTzNnc0FOaDM5aG5GN3llSnJqVnA0cUpuRklKdWVSbVI4TVBVZk1y?=
 =?utf-8?B?czRBVUt3eEJMOHdZUWZGZ3E2aVF3aHViSGxzWVJqSE0ySjFLamJXSk05VWFV?=
 =?utf-8?B?RXRyelI5MVgxcXg4VGx1UWN6eS9uK0NEWXB1R241L0lBeXJQK1ZPR2Y2ZExB?=
 =?utf-8?B?MFllK1Q3cllsSTMwSytGR3NzSi9vdFJIdm84TUc3dFhzK2VXeXVBdlpsd1l1?=
 =?utf-8?B?L0VvZUxINDM3b3pZaVk3U3JUc0xVclJENnBBTHpHRmZBRjdyamhiREhPTEg4?=
 =?utf-8?B?am55MndTZm9PZ2RHUldQNTZqbE51K2g0STVQSVd5ZzVrM3dWRWx5Sjd5MU1J?=
 =?utf-8?B?K3N4aVlORnZXVFpObmtORkRualBnQlNsWHJMZktZSDlPQ2RGQ2Nnelp5UWp3?=
 =?utf-8?B?TnhsbW8vMWphejNkTkFOdU1DU3J2VVNPQjQrd2ZXYjlKSzRhd2xVNVVQMlBv?=
 =?utf-8?B?TUZDcWpNaU9zUzRXVEg0b2tBOExiNmdoR2NLSTBZd214NWoyMkdxdmV6MWll?=
 =?utf-8?B?UFZYc3JDckdlcDAyVWFtYVp0TlpFRUNDbEJCdjJlM2p0WDM1UVdoaXh1TWlL?=
 =?utf-8?B?bEYvWStxeUthaHl2VWZEMHdlN2JmN1AzdzNoeDBlenR6NjhUdFJFUlQ3L1ZK?=
 =?utf-8?B?VTZ3YVNWcElCbVV5SExkdSsxR0NoZzJmT0U5czBTQ1NNWE9oY0NIRTY1enQv?=
 =?utf-8?B?bzdyaS9NUlZWOFFUY1NLclh4RzVHRUxBNEl4Sy9mSU5kY0I4azUrZk1hVWJZ?=
 =?utf-8?B?cTJaTEJ3aHV3SFYwWEtvMitQYnpUV1Vnd1gyNTM2MWREY3NTRDBvcnlqNDVD?=
 =?utf-8?B?Yi9FVVRhMTNoakgwRkl0Q21sYXExM3hXRWxuMy9xRGtxcnNuMVlkeUdZQ3lt?=
 =?utf-8?B?c3JXdGltZDErU2pUcm9BWC95QndoL1cxZlQ3TzlzeFAwd052Q01nMHl0UXpv?=
 =?utf-8?Q?8+MXq8pmgSnGJNF/aPPmV+MPu4BaCMyKd5x6k=3D?=
Content-ID: <13C7F2C397140B49BB9989152CEF5EE2@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a25fbf0f-afda-4313-a111-08d941a38a61
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2021 00:01:30.5231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lN7LTpk0lsA4WKMT+JuNF+aXm3Ug6ErNMEoVw8HlOnWTt5AiCz8fRqZCzQlDJokzw1V1d68FqkSvbCfTztDJkeQIM3e48yagdWd+wrr5byfHBkJSKPQMzn+wpWJtherdhHuAZonhkYl2Jov/jBBS+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1310
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2021-06-29 at 22:25 +0000, Souza, Jose wrote:
> On Mon, 2021-06-28 at 16:50 -0700, Madhumitha Tolakanahalli Pradeep
> wrote:
> > PCH display HPD IRQ is not detected with default filter value.
> > So, PP_CONTROL is manually reprogrammed.
> > 
> > Signed-off-by: Madhumitha Tolakanahalli Pradeep <
> > madhumitha.tolakanahalli.pradeep@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_power.c   |  8 ++++++++
> >  drivers/gpu/drm/i915/display/intel_hotplug.c     | 16
> > ++++++++++++++++
> >  2 files changed, 24 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 285380079aab..e44323cc76f5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -6385,8 +6385,16 @@ static void
> > intel_power_domains_verify_state(struct drm_i915_private *i915)
> > 
> >  void intel_display_power_suspend_late(struct drm_i915_private
> > *i915)
> >  {
> > +    struct drm_i915_private *dev_priv = i915;
> > +    u32 val;
> >  if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
> >      IS_BROXTON(i915)) {
> > +val = intel_de_read(dev_priv, PP_CONTROL(0));
> > +/* Wa_14013120569:tgl */
> > +if (IS_TIGERLAKE(i915)) {
> > +val &= ~PANEL_POWER_ON;
> > +intel_de_write(dev_priv, PP_CONTROL(0), val);
> > +}
> 
> Code style is all wrong, please fix it and run "dim checkpatch" to
> validate it before sending patches.

Thanks for pointing that out, I will fix it in the next version.

> Also PP_CONTROL(0) don't point to the same register that the
> workaround is talking about, between generations register address
> change that might be
> the case for this one.

Could you point me to the right register that I need to be
programming for this WA?

> This satisfy the "before going into sleep to allow CS entry" but it
> do not restore the workaround after waking up from suspend.
> do not restore the workaround after waking up from suspend.

Ah, I missed that point, will fix it in v2.

> Also you could improve the code, you are reading the register even
> for platforms that don't need the wa, also check intel_de_rmw() it is
> better suited
> to this case.

You're right, I will move that code under IS_TIGERLAKE().
> 
> >  bxt_enable_dc9(i915);
> >  /* Tweaked Wa_14010685332:icp,jsp,mcc */
> >  if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <=
> > PCH_MCC)
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > index 47c85ac97c87..8e3f84100daf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > @@ -26,6 +26,7 @@
> >  #include "i915_drv.h"
> >  #include "intel_display_types.h"
> >  #include "intel_hotplug.h"
> > +#include "intel_de.h"
> > 
> >  /**
> >   * DOC: Hotplug
> > @@ -266,7 +267,9 @@ intel_encoder_hotplug(struct intel_encoder
> > *encoder,
> >        struct intel_connector *connector)
> >  {
> >  struct drm_device *dev = connector->base.dev;
> > +struct drm_i915_private *dev_priv = to_i915(dev);
> >  enum drm_connector_status old_status;
> > +u32 val;
> >  u64 old_epoch_counter;
> >  bool ret = false;
> > 
> > @@ -288,6 +291,19 @@ intel_encoder_hotplug(struct intel_encoder
> > *encoder,
> >        drm_get_connector_status_name(connector->base.status),
> >        old_epoch_counter,
> >        connector->base.epoch_counter);
> > +
> > +/* Wa_14013120569:tgl */
> > +if (IS_TIGERLAKE(dev_priv)) {
> > +val = intel_de_read(dev_priv, PP_CONTROL(0));
> > +if (connector->base.status == connector_status_connected) {
> > +val |= PANEL_POWER_ON;
> > +intel_de_write(dev_priv, PP_CONTROL(0), val);
> > +}
> > +else if (connector->base.status == connector_status_disconnected)
> > {
> > +val &= ~PANEL_POWER_ON;
> > +intel_de_write(dev_priv, PP_CONTROL(0), val);
> > +}
> > +}
> 
> Not sure if this is the best place but anyways it is missing handle
> the case were tigerlake boots with the external display connected.
> No hotplug will happen and workaround will never be enabled.

Could you suggest a better place to add this WA?

I will add the check for TGL booting with external display connected
in v2.

> 
> >  return INTEL_HOTPLUG_CHANGED;
> >  }
> >  return INTEL_HOTPLUG_UNCHANGED;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

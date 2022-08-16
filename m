Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC745A0085
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 19:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C14711238B;
	Wed, 24 Aug 2022 17:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2DEDB202
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 03:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660622378; x=1692158378;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kmfmAs8Ha/7FjtHZfFzIQ3MqyqtFMnK08IwgsO78ZGY=;
 b=iJTH48F3ff32M2Rby8Tztx9QPm7dS4DNjJS/aEDYoqdFkzGh/X8SsEO2
 fXYu7FA7Erm1MeIhJfGuMD/qbMx9yFG8pLneigeOhmbW8AgJtJ5uV94pI
 kuzsY4a658rtgjGqovoT5Qs2QfgOCCbNjT/MOID3sC+cbxPCQi5Fa/eV3
 paskDbAUEdR92+qiHfVjHv5bh4z/WvLkHDPGPANbStxY9j+SH5Y8lFIpl
 klK3lswOWUVEbnwzU5gKWF6xG3xcq7ddxwf0ug2CJwIMsnSThE/0QAKue
 Xn/b/b4YDzB6GYZH7QFbXOyt2Jq0dD5I3Uo8qvRtzhDO0I8vOMLflmP/c Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="356121392"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="356121392"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 20:59:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="639880018"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 15 Aug 2022 20:59:37 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 20:59:37 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 20:59:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 20:59:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 20:59:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SIivYdjBpbNBJC3P6dcm8mdMbcmstlWRfJk62R78n4mZ01qY2afbSvIKEayLRoDGQBqbfsjDb+1JmklbHl6IBfYGjmY6OldGv21yL84pQLa7QUj7g1B3KHW/NyZUMQ3iEVX9ZkAHblSk4rcl31vkIKqInni+/3VPJ7FLyGb67YPE16lMYn7q8nC1916tKFRPW7ojc/1btU3cKr3h/RgBbkeUkPlr/03/EK2MwA3QVnN+KLqtBVPPnCWpsRiWj8vAe61yMU1K8QCOD3N9dSvDGwS5JbovfXzyO2tJtx37gxoG99N0oSYnqpwvKhW/xN/7WwgbY8KSOc8DkXzaI+kfiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AGTzgiZepw9vfyn85HpaYJOM2ihH6zspqlQHFjIBwHw=;
 b=Gf4oZN4An/MWiKWnrdfH1wfwo3p8yTK8efjmQX9/AkN5gSJ0YcEhslTY9SsqtRDCphYF5+/jejZe1oYqI+xIC/dx2/e3eqLSyp/ORy71riTdyDX/i5z4ox6EoG2KlHnVyb7zyYJ9yxig6mAXzGvTs4Vuixeve+/sSsnPWirXdVhN3Nt1twFWeKiRIN8XWNzvdXck1bTiEn0lgaB9RjS9pcxeXKAWscelSafq51a/D6+mxncnGWrtWmcz/c1bwEbUy0twQM+KcrwfwIzw+B+0Angls6hlKohaOzR5tzBoW/+cua//8C89LPpd68YUxjFa6hcjUb+kq9GvWBu8BNzn7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN6PR11MB1314.namprd11.prod.outlook.com (2603:10b6:404:47::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Tue, 16 Aug 2022 03:59:34 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 03:59:34 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus members
 under display.gmbus
Thread-Index: AQHYrZWGBLUkCX4tMUCK2Z6OaLr8Xq2qsrSAgAAjXoCABhVHcA==
Date: Tue, 16 Aug 2022 03:59:34 +0000
Message-ID: <DM6PR11MB3177133F3D84617B275A7393BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <5e67135a49e766b6890c92fd35bab43386f40c11.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177BB7AF101A9021E62C4DCBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87sfm2rlv2.fsf@intel.com>
In-Reply-To: <87sfm2rlv2.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6119816-27e7-4bb7-7d85-08da7f3bbb27
x-ms-traffictypediagnostic: BN6PR11MB1314:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uSsBetXyM36L5HljQLqdS2Ix9sR6tbyinY9tLev1VxbBlKEUk65W9+E2F0W5NJ+GP8J8j+FgXxWLqgyZMF4VTBNoAxrYj/GmL9+FX4mjmTmXsWCxrUcSofOubs6+GwqBjZMH2TuvbuZXVNp/+F1EvOLhIPON06OIZpmMdMX8fH5xUOeY1HLOqxw/KU/vhdyCegjltk+tzC/a7MBV0P8sdxqWgypmH5SzO4Nf4qUguuvxDu+efLJgh0ilurwQ8qxg8TfqyDmC8gOFRityxyDMni6BPhgs7laEEDOjK1vZ7qTHsWgYKZieKMkmk/EG1b3tG4l7w7GhQ/ktueH5UWbWwzx0ShqCAtETTs3Oy0u4gDjuYkBN2PJQSGW3ryT7uP3wWo4RcCwzS8NZQafF5F4tBSNTgi+vBKUZuBrgHqnio/sD/Q7MXgyZEzq4UErJJmtBlLipijtTtw044qkNj0YBTF6+CEitmlwsNalaKCsoKnvLxO9r38xKFggSuJhISpn3HJ2Nl7M/QoXhNSriTBpBu/JpxcS/qEj4dF0u/7p0L/ejC7VR1LpHh+fR0bquYs2P6bp8qmCiGllNccN7F3QrfIxNEPeRPntM/Dm1q+7V2FiCLPBzUX3ag8VPismyDdTt1AfYHQnW5JqOFIq1Zjsb7ghIRXdH9qCJgsL2rdPjQSYqnTYCkvaW0o5C+PI3/UL3Or8PCIEUJSCGEX126jOHJJVtoHIu+yOfORPBLZOyumelAmxTzGYGeQHCKnpI10GZIdOw8KMcRa6jVJxM5Lwrin/c+Im23oahZYJPbZy/zoTtVJMtD5mhr8kCigKv/H3/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(396003)(39860400002)(376002)(76116006)(2906002)(55016003)(38100700002)(107886003)(186003)(122000001)(4326008)(33656002)(83380400001)(26005)(9686003)(41300700001)(86362001)(8936002)(82960400001)(5660300002)(52536014)(7696005)(55236004)(6506007)(53546011)(8676002)(110136005)(478600001)(66476007)(66556008)(316002)(64756008)(66446008)(66946007)(71200400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+TccYr0fpj9MShK/dOW4W9MQpctXh/7vN7w3u+pDHeFA/tw7cmpatsp2zIjl?=
 =?us-ascii?Q?2kS2HvGWINiP+DrxZ/11+ZVbV5fqn0qKbYTP5C0/3bb/n5BFqbq/JThoKjZx?=
 =?us-ascii?Q?4RkHENjVSoPbQHBX3TPr/BNd1kcxpUYGZcxx/xa9kUKa7mBaK0GPOch7/Vgb?=
 =?us-ascii?Q?KhGLuCN6WlBswu8B63xxG3goaL5gEtwn+U/2Red1hQOIe6phxnqnAj1oqjfC?=
 =?us-ascii?Q?Pmi4tRzELEj6oLCoY0T7vgCWhQu+nlzw5LehX39o+hdEgNEV6Ind3Ja1j9pr?=
 =?us-ascii?Q?AumglI1CRCjBAs9vYeR1EzDzsYkoj+RpR247fh8TabxOm/YbBV4I1IjlCR3c?=
 =?us-ascii?Q?uO+8UNiWiZK91wnggGwC1D7LQDoNuNK6jwbDEHmb4tk7L+AN1ybhhfTR6OWV?=
 =?us-ascii?Q?B/gziWSTAPo/u5qLAzaUGKg6kUbdOP0h5X2uAJeaPWNkvciqz2XStXi3olR7?=
 =?us-ascii?Q?OYtd8WJTeZWwvyHJZORXoriIbDX8TR/16Fy5+nalZTmZHC2EGxzluRbnFJSz?=
 =?us-ascii?Q?MTi4wa/4R/ZfSFZ4lhSibghwlJqnenIhwrINy1sBVmZpU2zd/BMzh9vch3MZ?=
 =?us-ascii?Q?CYtFKOUZCj6p2z00g7Y0DK3h57/lNKnI4J+SDYjISKL15hz0AZqlxmKa7Owq?=
 =?us-ascii?Q?GFi6VkkQEzpetDwMTaQeGV7DfOfLzEiGe46E2IucJk+wIURRaOMYiFYjXVec?=
 =?us-ascii?Q?SOhHz/9gKLFaOYzleaXyHTRVdA5/L786UsfFCdWh48jYEdqhHslZze3toG2M?=
 =?us-ascii?Q?CeNWCMbEdzozQqP70tGAB7egoC6lWqtsgaAhEUzV8crDGCSsXjVjVxUmR8pM?=
 =?us-ascii?Q?+fhy/mlObfb41p96zsMrK+3KEDFEVVp1BQ0zGqOo6agWm2DEupjtqcuGvkiq?=
 =?us-ascii?Q?JpzLxs++yGQ+UAuDrGB4Kk4hPSv5Rf1LNPeeruyQG/Rs22L1wUJ8t3yuLpdx?=
 =?us-ascii?Q?V9sDCIe4KyoCEFpVv90ofRqa9jylSu97pp8N9e9ZH7V2/KGjJON+vjWmwjxI?=
 =?us-ascii?Q?Nyrzb46dvygpo3XZ7Pzfh3EJE9Q8FpfnpRjOvVSS6vO86zgxzATReiUboLp/?=
 =?us-ascii?Q?8/ly+7qEhKAOcb/syfkshwDu/1Al13ffBGSW84F9TUHVx87kHkvkCl72KYq3?=
 =?us-ascii?Q?9+/7djZywzxjLjVW511xlviBuzSNdLGsJpNbBFAGg72Sg8+sFa8ZU7cb5kh6?=
 =?us-ascii?Q?KBhFsTW9Gc2gbyqw7TdsoK+p9G6Id6P7uIGu1Hw4C0ofny2/SAWb9QqJn+A8?=
 =?us-ascii?Q?xLLmMbmcBxQlLAYwNtgqxG6U+tEpBJR5bxL/5LTYBMQngGBI4A5xenJsqJTB?=
 =?us-ascii?Q?566WYiU/t3fi7qt0rTyOphBZBJmv2ep2YZaQ7Y2nUNbRGuMD0UthmWTCs6OT?=
 =?us-ascii?Q?hyN78KOXoiygWLDyWi7+GP8GwgsMVyd2GCa3C7IBIxo/fj8yqpxPeUY1S4Vv?=
 =?us-ascii?Q?PZwDKAcAsDmceCUPcilhAB7xmFcbHhrPleUWxXSG/iADV3MQBFlNervKLCAC?=
 =?us-ascii?Q?Opx0tyJZAr4kdftWUa8Bw9NC9ipaiXe8YKMvau1qGV7Mu3qyRgUlyKQC66LC?=
 =?us-ascii?Q?vh0ootCmPrXcm5hArWeca3Q0+GJ0YHbmY1MspltE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6119816-27e7-4bb7-7d85-08da7f3bbb27
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 03:59:34.5759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ziA6R6ZX853SQQO+5/TjNDngMtmDhdNjI4mVpRYJKx4Wy++zBpCU5xXW01z115ocFm+FXVcjIcIa0r4GOgpjdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1314
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
 members under display.gmbus
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, August 12, 2022 12:26 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
> members under display.gmbus
>=20
> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> Of Jani Nikula
> >> Sent: Thursday, August 11, 2022 8:37 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> >> <lucas.demarchi@intel.com>
> >> Subject: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
> >> members under display.gmbus
> >>
> >> Move display related members under drm_i915_private display sub-
> struct.
> >>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +--
> >>  .../gpu/drm/i915/display/intel_display_core.h | 23 ++++++++++
> >>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 46 +++++++++---------=
-
> >>  drivers/gpu/drm/i915/i915_drv.h               | 16 -------
> >>  drivers/gpu/drm/i915/i915_irq.c               |  4 +-
> >>  drivers/gpu/drm/i915/i915_reg.h               | 14 +++---
> >>  7 files changed, 59 insertions(+), 52 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> index 6095f5800a2e..ea40c75c2986 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> @@ -2098,12 +2098,12 @@ static void intel_set_cdclk(struct
> >> drm_i915_private *dev_priv,
> >>        * functions use cdclk. Not all platforms/ports do,
> >>        * but we'll lock them all for simplicity.
> >>        */
> >> -     mutex_lock(&dev_priv->gmbus_mutex);
> >> +     mutex_lock(&dev_priv->display.gmbus.mutex);
> >>       for_each_intel_dp(&dev_priv->drm, encoder) {
> >>               struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> >>
> >>               mutex_lock_nest_lock(&intel_dp->aux.hw_mutex,
> >> -                                  &dev_priv->gmbus_mutex);
> >> +                                  &dev_priv->display.gmbus.mutex);
> >>       }
> >>
> >>       intel_cdclk_set_cdclk(dev_priv, cdclk_config, pipe); @@ -2113,7
> >> +2113,7 @@ static void intel_set_cdclk(struct drm_i915_private
> >> +*dev_priv,
> >>
> >>               mutex_unlock(&intel_dp->aux.hw_mutex);
> >>       }
> >> -     mutex_unlock(&dev_priv->gmbus_mutex);
> >> +     mutex_unlock(&dev_priv->display.gmbus.mutex);
> >>
> >>       for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> >>               struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> >> diff -- git a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> index 306584c038c9..fe19d4f9a9ab 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> @@ -6,7 +6,11 @@
> >>  #ifndef __INTEL_DISPLAY_CORE_H__
> >>  #define __INTEL_DISPLAY_CORE_H__
> >>
> >> +#include <linux/mutex.h>
> >>  #include <linux/types.h>
> >> +#include <linux/wait.h>
> >> +
> >> +#include "intel_gmbus.h"
> >>
> >>  struct drm_i915_private;
> >>  struct intel_atomic_state;
> >> @@ -78,6 +82,25 @@ struct intel_display {
> >>               /* Display internal color functions */
> >>               const struct intel_color_funcs *color;
> >>       } funcs;
> >> +
> >> +     /* Grouping using anonymous structs. Keep sorted. */
> >> +     struct {
> >> +             /*
> >> +              * Base address of where the gmbus and gpio blocks are
> >> located
> >> +              * (either on PCH or on SoC for platforms without PCH).
> >> +              */
> >> +             u32 mmio_base;
> >> +
> >> +             /*
> >> +              * gmbus.mutex protects against concurrent usage of the
> >> single
> >> +              * hw gmbus controller on different i2c buses.
> >> +              */
> >> +             struct mutex mutex;
> >> +
> >> +             struct intel_gmbus *bus[GMBUS_NUM_PINS];
> >> +
> >> +             wait_queue_head_t wait_queue;
> >> +     } gmbus;
> >>  };
> >
> > Can this be moved to struct intel_dp?
>=20
> Well, no. The data here is shared across all of them.
>=20
Then maybe we might need to think on this. I somehow feel having this under=
 display wont look good. Since it's a low level bus communication, can be t=
agged under bus related to interface.
I agree from your other comments that this is just a first step to cleanup =
i915 and there is scope to cleanup further.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

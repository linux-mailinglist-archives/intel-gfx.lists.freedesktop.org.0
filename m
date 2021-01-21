Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 419152FF75F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 22:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2CDA89F35;
	Thu, 21 Jan 2021 21:35:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C38889503
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 21:34:59 +0000 (UTC)
IronPort-SDR: IQn9PZpTeMFzJ6c0vQuBZjldN+oJLt1kZQJAPQvW+vt6ZHFeAjjFPAdEn0va8KOy4jsOYXX3IT
 Ab6yhJgIuXbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="158530599"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="158530599"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 13:34:58 -0800
IronPort-SDR: FmALXSJyWBz4tpox+Qztlpy4vvwGY4mJK6v86iKypu5R6jqVOW82ZNKoT/2YM8lrOjk7k42XjK
 Lr+EpXQHVf4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="571849954"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jan 2021 13:34:58 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 13:34:58 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 13:34:57 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 21 Jan 2021 13:34:57 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 21 Jan 2021 13:34:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bu103sO+QN87mI1BcB69yMCwvfHR6jZVmp0d1lxIBNPuR+B7c3eaEJ5MfUoGRjUu6vq1zZWSF5SPGgcuJOTrvEXXkRLRwnP1CYwDCQgBZTDwFy5ulPdGCH/zXm+BuO6e9ps4q2NdyFYPL2dQrtOFYGP6mD2Fvmmi+1qLpHmwobq30o5pvvEjKUMXw+SluyAY05kNeyf+YQxgPddX5bHt97ZaAhwi35D3Hq7oD2nhZPWSX96mXX6uejV2wbEAmrQlNx1kdwfa8F1iSllTpiEjiH7wesUWQvf42sP0xZC2bMHp7rcVj5kL6AhIFULibqvy0+dfCRreCHW0ypQB+/tg/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFaaQh0RSHLVNKlLG53EeKKP8kjc7zSgdB1K65AOy3A=;
 b=b3EJmdrLO4c8DPOK7KwCDx06yGAu0z2v00QH1b3+9MsyPRbtUVWti6dPp2dOnlwFM9rc5vQZNJ5Sfq7uC7ZDEYtUax5OHbjpQIuLJ6JNHdnQW46bb50FdShWGKvfqce7K97nqnJ38sr2YzZ1lfdcUfFutOHnH0JF85LWrQOHpZPQqrPJPPv7zqitqlas7JUQIOqzWQnIWspQfYf5Z6YXxuQzsZeOrjs3EifAmXpbP0CQGAY+J3sGufTw9Y7gPqLdZomGaovMVZX74m+rfEJ5vSpxGM6W+2CB/v8sZ2DMJIDeixVU5tWqm7gHPrnKure3EriHRdbqZfqIbVq0F79LOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFaaQh0RSHLVNKlLG53EeKKP8kjc7zSgdB1K65AOy3A=;
 b=YU/fVK6rNycqkd9iymblIJtVEBQMs6539FM+OAmj1QP0L9cJvzlfG5fEW+QACk4FiMmpSYcP2n6ZXQPUenG8dMtyHa73bjvr6szH4njjekDD+4m1tdV1Rgk/aaLBD9D+YCrzhNQAQIrpL/ytzUO+7MTmxSXvhyKeKY9ny4lfYJc=
Received: from DM6PR11MB2683.namprd11.prod.outlook.com (2603:10b6:5:c6::13) by
 DM6PR11MB3370.namprd11.prod.outlook.com (2603:10b6:5:56::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.14; Thu, 21 Jan 2021 21:34:53 +0000
Received: from DM6PR11MB2683.namprd11.prod.outlook.com
 ([fe80::29b9:554:9ed:83b2]) by DM6PR11MB2683.namprd11.prod.outlook.com
 ([fe80::29b9:554:9ed:83b2%6]) with mapi id 15.20.3763.013; Thu, 21 Jan 2021
 21:34:53 +0000
From: "Gaurav, Kumar" <kumar.gaurav@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support
Thread-Index: AQHW7jbIH9N2MRh6tkiniInCJdu+rKousF4AgAPb0QCAAALfMIAABUiAgAAAczA=
Date: Thu, 21 Jan 2021 21:34:53 +0000
Message-ID: <DM6PR11MB26830728CD1B4CEEA315A0AC97A10@DM6PR11MB2683.namprd11.prod.outlook.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
 <20210119074320.28768-14-sean.z.huang@intel.com>
 <9babc226536544f7aa7ec98e80de4b21@intel.com> <YAnketZoGh4+ppkg@intel.com>
 <DM6PR11MB268360BF1C1787E2EFECF5AD97A10@DM6PR11MB2683.namprd11.prod.outlook.com>
 <YAnrUeLAXCPATJ2F@intel.com>
In-Reply-To: <YAnrUeLAXCPATJ2F@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [98.208.38.76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21099150-8eec-4adb-d014-08d8be5463db
x-ms-traffictypediagnostic: DM6PR11MB3370:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3370A479D84BCF76E3A686D197A10@DM6PR11MB3370.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1xi1KOqICoqcXTt7U3qDnvA6MLqmwFKXj+Cyu728ua6zicJhiiogJFL+MEhcdD3ed3t4KwuhAW2/ghGdNq8NBNK3qJmwyiWvM3Czi34m/N6ezP2FYwDrQb5lDpVZN0qzh7NStJlpSju0oiNmioRGJmtvuYK0UHzPZxYYiseu2SuM7RBthTtHgWZDHOGZl2aJCQP8QWAd4hgI0P4ff5Yu6JTDHzrTHGLLXn8EnXZj8ZGqVUqSFzv42QjxN+amDDgvAbzDq5zzRWvCSt8kCXioDmQOX7JoE1cULeIxu7Dq+79bSh03zV5MvT+yowA27HA3k6F+hU36hajnYKZDk4eFU852WFRRBHQ7zEpePPdq/QM2NvcA0xBg2mucQCzxWrFRz1AuDnm9SKSiU9hEoTQl7w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2683.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(396003)(39860400002)(346002)(376002)(9686003)(71200400001)(8936002)(316002)(8676002)(66574015)(55016002)(6916009)(86362001)(54906003)(66946007)(33656002)(4326008)(66556008)(83380400001)(7696005)(6506007)(2906002)(64756008)(478600001)(26005)(66476007)(76116006)(186003)(52536014)(5660300002)(66446008)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?quDG9zGMZ0eGzcEEEIw8yPwHmq2ptZF/8lgtbMf2Ol2lIQkTCRBLV0U239?=
 =?iso-8859-1?Q?tAo+WugmxTQymWRvlFUWLSzfcjmNbBR1zMfjhGeI6gO59uM4moYA8bwIzh?=
 =?iso-8859-1?Q?xQrprf1pHgSCY4O2TX2TT34YFOUWDIcWX0m1LkqyKEMrzUn26Oup0cu3uA?=
 =?iso-8859-1?Q?abQPaNpchyipE/0dW38Ha2+bbYSsLrLJ0KAHj5hL7SUVF1yKbBvwqej/Ja?=
 =?iso-8859-1?Q?tItJaRTZBGhrD9fjF5cqV6WvF3lYd6SrC1BpTnZepDVRrFjQ656dXTLmD/?=
 =?iso-8859-1?Q?HcJArGk+UZhF4q80bny8igQR44daY9qC1UjQZUsLJ7Mte14yjzgOFS/2Cy?=
 =?iso-8859-1?Q?w3qb5g0d2868f5B5w2na4CJdet4/5j/10OrpVKjqbdi7mjdmVLKS/UOAqs?=
 =?iso-8859-1?Q?NDCgF6WknP//q0cXfkEV41N6yV8eebsjF8TR+ajwvI0j3sNfDng+oIeMdX?=
 =?iso-8859-1?Q?DbpnXJbUzLWEwUUKwFXbqzejLH6arE6ZQg4ow5e0r6nWZ4t75Ej/0VI0bV?=
 =?iso-8859-1?Q?8M9gqUC8NQM90/+M0ePPlx+/TXOto5KsBASZB5oSKC1w6uuQLMc4+fPUhw?=
 =?iso-8859-1?Q?b+Go6yRce1D1bNkiJx7WI12/BnF/ugrh9GZyNmHFg+udQMfOGQXk9w+d2+?=
 =?iso-8859-1?Q?QfP9+bIajCuCww4XZKXccF1Sw87kSQ8leBlYOityuR5TNshKOGpTngWL/d?=
 =?iso-8859-1?Q?nbiqNPgIjbPhH6vGI3prbjyEPlEINekI6Qw20GGFp/E0n3hYx9fiWOoecf?=
 =?iso-8859-1?Q?PhPJlD/oflQAKRYAuCbsfrP/48sEaQKn3bHvjSsDctUHHrc5iiQ9XLjGp1?=
 =?iso-8859-1?Q?IrclSvlvz7r7j8Pgt1Oiaeht25ZZFQBMDICq3BVaOxYyFGEWFL+/gH/zFf?=
 =?iso-8859-1?Q?QKcqQTA5jPmgDRQox2RNxGy/yTgKe8pgcJ0eYoJAGJxe+KHqm0VLd0Y696?=
 =?iso-8859-1?Q?Il4UV1U6TOyFrs4i4etBLx/LN8aoC89TuvUaVZpzi/eXnEiTnvRflEqs7h?=
 =?iso-8859-1?Q?qujp0Qr9maBkOFbUg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2683.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21099150-8eec-4adb-d014-08d8be5463db
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 21:34:53.3736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TWpzzSmfF9gF67l/yvudpT/4YpHFjJiMZIFXFj2gIkqTsa19zC5lBUrgOaAHDuaUsxhSYQ3LOSouYB/qd+3iRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3370
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v23 13/13] drm/i915/pxp: Add plane decryption
 support
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>, "Huang,
 Sean Z" <sean.z.huang@intel.com>, "Bommu,
 Krishnaiah" <krishnaiah.bommu@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

So the idea is to perform HWDRM session check in flip IRQL and i915 PXP wil=
l guarantee that IRQL is not blocked. =

We have done similar check in Windows flip IRQL.  =


-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> =

Sent: Thursday, January 21, 2021 1:00 PM
To: Gaurav, Kumar <kumar.gaurav@intel.com>
Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Huang, Sean Z <sean.z.huang=
@intel.com>; Intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@int=
el.com>; Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; Vetter, Daniel <da=
niel.vetter@intel.com>
Subject: Re: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support

On Thu, Jan 21, 2021 at 08:50:18PM +0000, Gaurav, Kumar wrote:
> Thanks Anshuman for adding me for review.
> =

> Actually, using plane Gamma is good idea to show black frame. Another opt=
ion could be alpha value since we know for ChromeOS protected buffer will a=
lways be flipped on overlays.
> =

> Below explanation captures need for black frame in i915 Display for =

> HWDRM protected surfaces - Problem Statement - There is race condition =

> between Ring3 and Ring0 where encrypted frame could be flipped by i915 Di=
splay despite Ring3 checking if HWDRM session keys are valid for encrypted =
frame.
> =

> Google Bug -
> BUG1 -[Intel] i915 framebuffer tracking (protected surfaces that can't =

> be decrypted are being rendered as encrypted) -b/155511255
> =

> Background -
> There are 4 high level pipelines working together in HWDRM playback.
> 1. CDM Pipeline -
> App CDM SW Stack -> LibVA/iHD -> i915 -> MEI -> CSME-FW
> =

> 2. Media(Audio/Video) Pipeline
> App Media SW Stack -> LibVA/iHD -> i915 -> GPU
> =

> 3. 3D Pipeline in Compositor
> App Composition SW Stack -> OpenGL/MESA/MiniGBM -> i915 -> GPU/Display
> =

> 4. Display Pipeline in Compositor
> App Composition SW Stack -> Ozone/MiniGBM -> i915 -> Display
> =

> Discussion Point -
> Even after Pipeline #4 is context robustness compliant there is a =

> corner case/race condition for corruption as following  - BUG1 App's =

> Composition SW Stack -> Creates Protected Context and Protected =

> Buffer(MiniGBM) App's Composition SW Stack -> Supplies Protected =

> Buffer to LibVA/iHD -> i915 -> GPU -> Encrypted decoded output App's =

> Composition SW Stack -> Gets back decode output -> Checks for context =

> robustness -> Submits frame for flip -> i915 Display(by the time i915 =

> Display gets flip PAVP session is invalid despite being atomic since =

> invalidation of PAVP is HW async event) -> Display HW -> Shows =

> corruption

It'll always be racy unless the invalidation becomes a two stage process th=
at first tells display to stop scanning out the thing and then waits for th=
e display to finish scanning out the current frame.

> =

> =

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, January 21, 2021 12:31 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: Huang, Sean Z <sean.z.huang@intel.com>; =

> Intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>; =

> Gaurav, Kumar <kumar.gaurav@intel.com>; Bommu, Krishnaiah =

> <krishnaiah.bommu@intel.com>; Vetter, Daniel <daniel.vetter@intel.com>
> Subject: Re: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption =

> support
> =

> On Tue, Jan 19, 2021 at 09:35:18AM +0000, Gupta, Anshuman wrote:
> > Jani/Ville
> > I had received an offline comment form Gaurav on this patch, See =

> > below,
> > > -----Original Message-----
> > > From: Huang, Sean Z <sean.z.huang@intel.com>
> > > Sent: Tuesday, January 19, 2021 1:13 PM
> > > To: Intel-gfx@lists.freedesktop.org
> > > Cc: Gaurav, Kumar <kumar.gaurav@intel.com>; Gupta, Anshuman =

> > > <anshuman.gupta@intel.com>; Bommu, Krishnaiah =

> > > <krishnaiah.bommu@intel.com>; Huang, Sean Z =

> > > <sean.z.huang@intel.com>
> > > Subject: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption =

> > > support
> > > =

> > > From: Anshuman Gupta <anshuman.gupta@intel.com>
> > > =

> > > Add support to enable/disable PLANE_SURF Decryption Request bit.
> > > It requires only to enable plane decryption support when following =

> > > condition met.
> > > 1. PXP session is enabled.
> > > 2. Buffer object is protected.
> > > =

> > > v2:
> > > - Rebased to libva_cp-drm-tip_tgl_cp tree.
> > > - Used gen fb obj user_flags instead gem_object_metadata. =

> > > [Krishna]
> > > =

> > > v3:
> > > - intel_pxp_gem_object_status() API changes.
> > > =

> > > Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > > Cc: Huang Sean Z <sean.z.huang@intel.com>
> > > Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_sprite.c | 21 ++++++++++++++++++-=
--
> > >  drivers/gpu/drm/i915/i915_reg.h             |  1 +
> > >  2 files changed, 19 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > index cf3589fd0ddb..39f8c922ce66 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > @@ -39,6 +39,8 @@
> > >  #include <drm/drm_plane_helper.h>  #include <drm/drm_rect.h>
> > > =

> > > +#include "pxp/intel_pxp.h"
> > > +
> > >  #include "i915_drv.h"
> > >  #include "i915_trace.h"
> > >  #include "i915_vgpu.h"
> > > @@ -768,6 +770,11 @@ icl_program_input_csc(struct intel_plane *plane,
> > >  			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);  }
> > > =

> > > +static bool intel_fb_obj_protected(const struct =

> > > +drm_i915_gem_object
> > > +*obj) {
> > > +	return obj->user_flags & I915_BO_PROTECTED ? true : false; }
> > > +
> > >  static void
> > >  skl_plane_async_flip(struct intel_plane *plane,
> > >  		     const struct intel_crtc_state *crtc_state, @@ -804,6
> > > +811,7 @@ skl_program_plane(struct intel_plane *plane,
> > >  	u32 surf_addr =3D plane_state->color_plane[color_plane].offset;
> > >  	u32 stride =3D skl_plane_stride(plane_state, color_plane);
> > >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > > +	const struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> > >  	int aux_plane =3D intel_main_to_aux_plane(fb, color_plane);
> > >  	int crtc_x =3D plane_state->uapi.dst.x1;
> > >  	int crtc_y =3D plane_state->uapi.dst.y1; @@ -814,7 +822,7 @@ =

> > > skl_program_plane(struct intel_plane *plane,
> > >  	u8 alpha =3D plane_state->hw.alpha >> 8;
> > >  	u32 plane_color_ctl =3D 0, aux_dist =3D 0;
> > >  	unsigned long irqflags;
> > > -	u32 keymsk, keymax;
> > > +	u32 keymsk, keymax, plane_surf;
> > >  	u32 plane_ctl =3D plane_state->ctl;
> > > =

> > >  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state); @@ -890,8 +898,15 =

> > > @@ skl_program_plane(struct intel_plane *plane,
> > >  	 * the control register just before the surface register.
> > >  	 */
> > >  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> > > -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> > > -			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> > > +	plane_surf =3D intel_plane_ggtt_offset(plane_state) + surf_addr;
> > > +
> > > +	if (intel_pxp_gem_object_status(dev_priv) &&
> > > +	    intel_fb_obj_protected(obj))
> > > +		plane_surf |=3D PLANE_SURF_DECRYPTION_ENABLED;
> > Here in case of if fb obj is protected but pxp session is not enabled i=
.e intel_pxp_gem_object_status() returns false, request to show the black f=
rame buffer on display instead of corrupted data.
> >                             plane_surf =3D 0xXXX; //Pointer to black =

> > framebuffer But above approach would be a hack.
> > @Jani and @Ville could you please guide with the general way of handlin=
g this as pxp session keys can be invalidated at any time.
> =

> Would need such a black buffer to be always pinned into the gtt, which is=
 seems a bit wasteful. We could perhaps just force the plane to output blac=
k eg. by using the plane gamma. I think we should always have the per-plane=
 gamma available on skl+ universal planes. Cursor may be a different story.
> =

> --
> Ville Syrj=E4l=E4
> Intel

--
Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

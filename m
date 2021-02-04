Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB8C30F762
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 17:14:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD63C6EE1B;
	Thu,  4 Feb 2021 16:14:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEFA46EC7E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 16:14:40 +0000 (UTC)
IronPort-SDR: 6+qZ2txzEJLVDQ7i04exz/aFMYUY8wgIdsL5FO9FroL9EQyxoY571PCVwfH++wRIzKswFbKNx7
 ZFJDK9FZpdnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="180497361"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="180497361"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 08:14:39 -0800
IronPort-SDR: xcucI7xJfTscgTU8/fqyNEPnHmTM6uFENma/+dl3nR/AO+Ubs0blp7Hs1pT4Wmm3ZT1ukSLePu
 0k4a+1hBEksA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="415226949"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Feb 2021 08:14:39 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Feb 2021 08:14:39 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Feb 2021 08:14:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 4 Feb 2021 08:14:38 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 4 Feb 2021 08:14:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U12RwqKHu0F0VyE0/BzQtwo+wh8cjSudJvE9mHUMxngNDoi2DaHH7YBDRTuAtJlQykQr7V0on/uBT5LKUwcZzjF1Td+ysq/0/c/fVQ0EUdjEx0sqMmZjISjHDvdpr41tCszdl651+qBBC7SKGfQPsIo4Sh8a5WKbmC4a9ue1sQL/1z6MGChjPf93qkYGvfYCEMoCYitYuYfqHq8/ZSTrYoPTWe8g/DKuQycqzhLAqBAjT1sx+G20S2NIMSyPD8HJfu4ZAwe0XfSCau6s2e1uF56EvTyip8swvLUSEVAqRP9CpV/CZENKrG1/TdlmiURu8FK7d+YQcl4xS3QOHBJmuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YYRfmTFSjdfJ7bdunsFIDvMnj44zlh6YTVI/yCE1Ols=;
 b=TxGv6b3T0tC4YB9C4tawdRoL9Ny41uuRmLgitGW6T05/x9labVc3z1Crqa43cQjnjIuD1V+speTb4Xr0dtFA9/HXYvPmnt2NMFYCjghLxDGPwgmgcizeaaG6W/anELC2FzPZADMmbRkgOEvfRIXozCb3KcJpAez8svHPoHgv1o16C5nXGyhQp3e3OjOx+RakN4jN/kdg9jFojai2s1b3wFWnam3V2puYGROSJQtOYv/1FDjLCrWWChbQ86+p/Kp02leFhkVGiXw5b3MHaNqCu+1hUdvfVFEWB+4iMCrrXyukH8ht0kt/KieVWD3Mc4V80Gjg5VecwMRDTNCT4mHnUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YYRfmTFSjdfJ7bdunsFIDvMnj44zlh6YTVI/yCE1Ols=;
 b=zhCIH6phQcLbHB43XT9CVXfmdSZK8v5CArlKZ9paImTXR4XQjYavGuSs0BbyE/4sBTRoCdVGKBLn+LKb8vvrqW80LioAXRhEBwlvDJlaCWBkZeQlBU4CYDfc9cAcLWCy9DeukCtGTanw5bUFTqeDxldLWAD9/vuzXrYFlhdhYbU=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB5020.namprd11.prod.outlook.com (2603:10b6:806:11f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.17; Thu, 4 Feb
 2021 16:14:37 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::858b:c175:afcf:1672]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::858b:c175:afcf:1672%6]) with mapi id 15.20.3805.028; Thu, 4 Feb 2021
 16:14:37 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>, "Souza, Jose"
 <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH V2] drm/i915/jsl: Disable cursor clock gating in HDR mode
Thread-Index: AQHWsXSbi1xYJJrbF0qesOYo/ZTTCqng+fSQgGfCpdA=
Date: Thu, 4 Feb 2021 16:14:37 +0000
Message-ID: <SN6PR11MB3421A8B6D025F8D96A75DD5DDFB39@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201102073946.158633-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <025cddace9c4164803fb71f770adcf260b7052e4.camel@intel.com>
 <SN6PR11MB3421C859BD47570139D7A694DFF50@SN6PR11MB3421.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB3421C859BD47570139D7A694DFF50@SN6PR11MB3421.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [106.213.242.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68da7cf8-8dfb-48f6-6920-08d8c927f83b
x-ms-traffictypediagnostic: SA2PR11MB5020:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB50205185B923933FCC536F65DFB39@SA2PR11MB5020.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ugry2keSzQGadw5aYZzouivVOwxYBybBey0LWO8afTliIVD6zd2YCru6Q322Z1yt43uLxxUa8ELPT8un2dMzrYxfoz7QQ/3WERacQbySf9bQBMOXRRg9rPgj9ELGhplWZWOPL6/IaB79gwvdORJXsobDSJgIxer5+R6sfTYnLugdqJJ5oEqZ4yvg8ED5FclPpreNuKeCguUWEVFn+OLY1PUdNF96EVoRnmN/H/twcas4IEWBiEYU1wyqGlsMDRxuCJmT42YeZMvot7oDIMWLjeaiRwrcw8E/x3R8nuZtzk1egABd/Byqqb1yqwLLmlNjzWISdJLfC1TACiw8xc4xywRzOfsEzLyyoy89aQel1Wh8xXIcqne9o2iZCCBMnWjsmjj20UaUGCSaMm03QmNbx7VC3Al87wMrmK/Ie6CpgYZrwNOAoITpQfEpEbOlOifUN38tlCsF75aUWGA/Q7baPbcT2DN+F4a3ipOabM9G26AMQeUz7L0sGlPE/5npZ1Si9o1zq8qeVQlTfBDfd5jHAOYhQYgAXAg5U8oxGDAyTa0C5FpvQhCDGbxhGeDUBnLo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(346002)(396003)(376002)(39860400002)(316002)(55016002)(33656002)(66946007)(83380400001)(66446008)(66476007)(76116006)(9686003)(110136005)(8936002)(64756008)(2906002)(478600001)(7696005)(4326008)(186003)(6506007)(53546011)(966005)(107886003)(26005)(8676002)(52536014)(5660300002)(66556008)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?MQANkcBSL0saXndZ4E/KgE3oFj9bXMKogI+FvrKbMXdR/1QMHfmQZDN9y5Rk?=
 =?us-ascii?Q?O+wrMH91xcIyIN1V+CLUoNBqlleHY5PwBTVpLRRM9RvOndRR91WAyoiZJDtZ?=
 =?us-ascii?Q?NaW+1iLNaWvhoC9ujnULuKz4/+R3UEdrCwUmkTWF5oPDTD2vbiWDx6MOYdZA?=
 =?us-ascii?Q?tiMBdkhJAj61Qq2zltzsrcweSqeNVxsCEz06I3/2H8Jf96Oc/ni8l4OfI+/m?=
 =?us-ascii?Q?YNyMcwRwaU5douZgtZ4QOVNhhw6f9DNvch9h+kogQceTi27KWa93oHEeHYbN?=
 =?us-ascii?Q?hCIQlnae/D+gI8rLIKQhqLtjLH8IHBJGl8rNOqrolpT2kWioXDIgO9nyp4jf?=
 =?us-ascii?Q?qJdETA0qRNVCjbinrlVy0zTYOk7+TsVJvxAstQdjwzf3ALJcpHwhrdhXFMiQ?=
 =?us-ascii?Q?Ii6vZbJV5MRH7K6McEizbStzO4RqUhYZL6vkTdUdFTz59VPBuhbGPFIbaL0V?=
 =?us-ascii?Q?+q01RQXCBJ58vCVNDew19STHxHHCgVORN8NGQWM/DuJTBqa1dAvOxgnFIYN4?=
 =?us-ascii?Q?Cz5EgMA5oAoZlNYYYV2eOfKGAYJIX0m/IRzVUXAWh1dPQunYNbQcex3cOXGQ?=
 =?us-ascii?Q?Z4uN2UnIN5IVTLNokhwFeDQFqw0aOvRsg8VvtdxtjqInwoOZVonu6jypCXOI?=
 =?us-ascii?Q?V3GLM7jyVh+KTQsdiDBLTeTAVu8LoOhx6GFKexvmFCjqdXVxEb0lmAKrR4rz?=
 =?us-ascii?Q?9TumhrxrLKWSUq6wPdy4PLNOa1tjQ0iCM6m9KpI8bY5uHxEQLaOiLiEVRHiy?=
 =?us-ascii?Q?m48RuPm1ojVMbVAjCrW/GuPfjLp5K73GvwH7hkFaw4g9mBh+LVOStSreVnbu?=
 =?us-ascii?Q?nCE5xAm2HbJxg4YmqQ2ViRD/0hwFqtiwOJGOv5+GVc4R9ymKUSWLu3nhRB++?=
 =?us-ascii?Q?p7PY9dJaqvzhVArHKJ9zlJK9XdH764zrBP7h9tODnMVFNE0t1QId/wz9rlf5?=
 =?us-ascii?Q?+BTHodQ+eljovlwx/ziDJnLq1cu+kaJBY735MTYc01qak11rQIMHsZN0dG8U?=
 =?us-ascii?Q?hXp4fgvgtbzYJl7UWCUDd30QengN+zl9k6z/xUO47vW5lGjojjPbdDoUdJ9J?=
 =?us-ascii?Q?G9atAoLQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68da7cf8-8dfb-48f6-6920-08d8c927f83b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2021 16:14:37.7056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5wgwq6OEfZjw8sho5NlCIMJaGGW+qOgKEVKuFD/UGTWAgJnP/OjvCegXKbWmwa4E7gxBY4Y5BluZcE2yuOKHFytTyMfNGEuadG0IomCoON2AvvvcJwvKqlIC+zqviu3tMlHCEbysMVPPWtFl4zBErQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5020
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/jsl: Disable cursor clock
 gating in HDR mode
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Surendrakumar Upadhyay, TejaskumarX
> Sent: 30 November 2020 21:21
> To: Souza, Jose <jose.souza@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Pandey, Hariom <hariom.pandey@intel.com>
> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/jsl: Disable cursor clock gating in
> HDR mode
> 
> 
> 
> > -----Original Message-----
> > From: Souza, Jose <jose.souza@intel.com>
> > Sent: 03 November 2020 05:32
> > To: Surendrakumar Upadhyay, TejaskumarX
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Pandey, Hariom <hariom.pandey@intel.com>
> > Subject: Re: [PATCH V2] drm/i915/jsl: Disable cursor clock gating in
> > HDR mode
> >
> > On Mon, 2020-11-02 at 13:09 +0530, Tejas Upadhyay wrote:
> > > Display underrun in HDR mode when cursor is enabled.
> > > RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> > > As per W/A 1604331009, Disable cursor clock gating in HDR mode.
> > >
> > > Bspec : 33451
> > >
> > > Changes since V1:
> > > - Modified way CLKGATE_DIS_PSL bit 28 was modified
> > >
> > > Cc: Souza Jose <jose.souza@intel.com>
> > > Signed-off-by: Tejas Upadhyay
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 28
> ++++++++++++++++++++
> > >  drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
> > >  2 files changed, 33 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index cddbda5303ff..b132585d9e78 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -541,6 +541,15 @@ icl_wa_scalerclkgating(struct drm_i915_private
> > *dev_priv, enum pipe pipe,
> > >                 intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) &
> > > ~DPFR_GATING_DIS);  }
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > > +/* Wa_1604331009:jsl */
> > > +static void
> > > +jsl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe
> > pipe,
> > > +       bool enable)
> >
> > if this is a gen11 WA why naming as jsl? also include in the comment
> > icl and ehl.
> >
> > > +{
> > > +intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> > > +     CURSOR_GATING_DIS, enable ? CURSOR_GATING_DIS : 0); }
> > > +
> > >  static bool
> > >  needs_modeset(const struct intel_crtc_state *state)  { @@ -6637,6
> > > +6646,16 @@ static bool needs_scalerclk_wa(const struct
> > > intel_crtc_state *crtc_state)  return false;  }
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > > +static bool needs_cursorclk_wa(const struct intel_crtc_state
> > > +*crtc_state) { struct drm_i915_private *dev_priv =
> > > +to_i915(crtc_state->uapi.crtc->dev);
> >
> > line break here
> >
> > > +/* Wa_1604331009:jsl */
> > > +if (crtc_state->active_planes & icl_hdr_plane_mask() &&
> > > +    IS_GEN(dev_priv, 11))
> > > +return true;
> >
> > line break here
> >
> > > +return false;
> > > +}
> > > +
> > >  static bool planes_enabling(const struct intel_crtc_state *old_crtc_state,
> > >      const struct intel_crtc_state *new_crtc_state)  { @@ -6678,6
> > > +6697,10 @@ static void intel_post_plane_update(struct
> > > intel_atomic_state *state,  if (needs_scalerclk_wa(old_crtc_state) &&
> > >      !needs_scalerclk_wa(new_crtc_state))
> > >  icl_wa_scalerclkgating(dev_priv, pipe, false);
> > > +
> > > +if (needs_cursorclk_wa(old_crtc_state) &&
> > > +    !needs_cursorclk_wa(new_crtc_state))
> > > +jsl_wa_cursorclkgating(dev_priv, pipe, false);
> > >  }
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >  static void skl_disable_async_flip_wa(struct intel_atomic_state
> > > *state, @@ -6743,6 +6766,11 @@ static void
> > intel_pre_plane_update(struct intel_atomic_state *state,
> > >      needs_scalerclk_wa(new_crtc_state))
> > >  icl_wa_scalerclkgating(dev_priv, pipe, true);
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > > +/* Wa_1604331009:jsl */
> > > +if (!needs_cursorclk_wa(old_crtc_state) &&
> > > +    needs_cursorclk_wa(new_crtc_state))
> > > +jsl_wa_cursorclkgating(dev_priv, pipe, true);
> >
> > Like the idea of only enable the WA when a HDR plane is enabled but
> > there is some problems:
> > - never disable the wa
> > - not checking if a cursor plane is also active
> > - calling it in the post and pre plane update, I think only the pre is
> > needed
> > - checking the old state, no need to do optimizations like that for
> > just one MMIO write
> >
> > other thing, would be better have the wa function being called and
> > inside of that function it will check if the WA is needed and write to
> > the register, no need of a function to check if needs and another to apply
> the WA.
> 
> Tejas : I have addressed all above review comments in next patchset.
> 
> >
> > ICL WA description says that it can only be applied if "CUR_CTL[18],
> > CUR_CTL[16] or CUR_COLOR_CTL[15]" is not set, did you checked if when
> > a HDR plane is enabled it causes a complete modeset(disable pipe, set
> > wa, enable pipe) in the pipe? if that happens it is complying if not
> > we have a problem here.
> 
> Tejas : Would you elaborate more this scenario? As far as I understand once
> planes are attached to CRTC/pipe they can be updated runtime. Are you
> referring planes attached to CRTC/pipe will change while CRTC is enable? I
> would like to understand if I am missing something.

V3 patch is ready but Jose as I understand, here you referring to check when system normally boots up with 
planes are initialized and it finds HDR plane is enabled it should basically restart pipe and during restart it 
should enable W/a as well. Is there any other workaround which is doing same which I can refer ? Or if I check 
myself it will be putting logs which I can show you as proof, right!. Any other way you can suggest to prove it!

Regards,
Tejas

> 
> >
> > > +
> > >  /*
> > >   * Vblank time updates from the shadow to live plane control register
> > >   * are blocked if the memory self-refresh mode is active at that
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h index bb0656875697..f81a503c5d4b
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -4194,6 +4194,11 @@ enum {
> > >  #define INF_UNIT_LEVEL_CLKGATE_MMIO(0x9560)
> > >  #define   CGPSF_CLKGATE_DIS(1 << 3)
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > > +/*
> > > + * GEN11 clock gating regs
> > > + */
> > > +#define   CURSOR_GATING_DISBIT(28)
> >
> > should be defined between other CLKGATE_DIS_PSL bits.
> >
> > > +
> > >  /*
> > >   * Display engine regs
> > >   */
> >
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

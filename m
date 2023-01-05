Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 495A865E228
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 02:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D55410E48C;
	Thu,  5 Jan 2023 01:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E969310E48C
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 01:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672880745; x=1704416745;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Am4MZUdL0x6yP/QARfffkO6gRofQNKY4PSm1y2f1GtI=;
 b=YJs6CwUvAaK86EG/WlYskZOue8YjuvHWF7/sbZv1Tf7RUha6tLVIWfHg
 KSJjwng4MYQ0Oaz8tPVqb70TTccbl0ECTAMpyFyZRLve7XWzTeAPm1G3B
 DGISNhT86c8+rZOJg7FOukC2OHCrOfLGk4DYzw9vAuN6caFSyTzlo6Bu8
 LY6nh0HBNYeImjQ7lJIp/67QRgeYoiIb7kRCy/WylxTYxK9VzUWteWjEC
 TUsBen65YD1UXMg4sA5erUHGcpGbMGRbKA72tp78Zra+vmlIGoDfT67bM
 j+53F0V1LDMwAdYZpxoKiVTV0Pt7iVaxmdPF4Yc8bE3kDkRpVm6B/Y83B w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="322157071"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="322157071"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 17:05:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="779392550"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="779392550"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 04 Jan 2023 17:05:44 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 17:05:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 17:05:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 17:05:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 17:05:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Utjeqy1RmcLEIpeEEAaQdq0O3ZqL7kD9fQ0qkMKPkykrQ7IaICzbkuQBPyCjmHmWG1Y9ClTK0F1KW1IwmOoQGHlRYVRGQi7nXs4f6nz1gT2+j3YVspj/yHtgJo1JvjiGyr1LzVEMXlcrKn+PmHuZQwU9+wh23qDElI2dU+ZMzb0aDgaUP5eMbExKI+i8xx0RA9INq81E/oBiGuwLo03wSJ01/AU10ujO3BkJbyDP7cjK+heevEWMa69L/9hY7arhZH3wGP4bR76Z+sgVGzp5258ypwvnxzLOjIhwTpfYJeCa4aY1TFGxj6rkCPRrgUvptxp3WvaUM5NV/wImROIwFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=498bjSTpfxlKKRITLMJkSb5GbwK27T3Sz60P9Zx7M2E=;
 b=TYya17O4k7+rd/eUjCp0ekMcGO+QYqHATT753GFDRa8+WrqmMSUrt/BivKH5Yr9SP+hxOKJZIJd5VR+J/uZneCXkpJsWh3jt/f/C+JwFQQG4L4PXNHeJfhAre4TG2bRGyU/b4id1weQuVCQPmOQ1aG4w1xQlhvJTg2MNxYgO0L3uu2Zik8Q169nj5rrNWXzoqB8+dvbGP1YQVSuHYpeg8BUaiTND/49XiitzYnreCWg2fwjkWyoSm1bkLNwUaretWQgJUweQ5U0r6M3jJThPC1gqGZLAVq6TvjMdwfxZ8CCCkpjrZOSccwmW05vfwBEH1EMoc3j9g9KKBHXU/o9w3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by SA2PR11MB5099.namprd11.prod.outlook.com (2603:10b6:806:f9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 01:05:41 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117%8]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 01:05:41 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for CDCLK
 PLL disable/enable
Thread-Index: AQHY//D6YOCgrj9gQE2GNYbsadLkEK5WTlGAgBcAOgCAAJHXYIAA+7GAgCBnNSA=
Date: Thu, 5 Jan 2023 01:05:40 +0000
Message-ID: <SJ2PR11MB7715961C452070D324B95109F8FA9@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20221124103623.13974-1-stanislav.lisovskiy@intel.com>
 <20221124103623.13974-2-stanislav.lisovskiy@intel.com>
 <CY4PR1101MB2166A66996BCE28F1B6B70C1F8129@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Y5ml/OHxUUU/GzzA@intel.com>
 <CY4PR1101MB21666C38CA97D519842805DBF8E09@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Y5rzdZniS5z5d8Si@intel.com>
In-Reply-To: <Y5rzdZniS5z5d8Si@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|SA2PR11MB5099:EE_
x-ms-office365-filtering-correlation-id: 33134b47-780c-43b3-bb55-08daeeb8f6e9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3P5RFgkTryrR4ZTofJekEugO9qFN5tzit3ks5rphAk4rg5oRUlJo7ueysXruzAPgxOvxyvkRK+cdSMEwiNyGitUa1+SI1sxnGwUk2OR788spiM+GzHPBc5JQo+1LyWDCkM7Da6+t5w8LcW6gfYVUzjfsSySAWROZPNZONPli1X49OrTKwZBlppYoDZL0ywLN092D7oaJmX5bz3P2DLpLSajBC9o3OwOVmF/AelT5e4FlNqiWJ56AS7gxh94kSBhoiwS4I/GCwsDdixtKg6P6+azvH8/34BDVbkNExDGgaSCWu/cSb4Ngll3LbSB1CIEDs7V6Qt5RqDVp/tC2Qck/b/JPjLabqG8wqkM75ugNUABrHuIgPOTaBgQVdL4TdqYtBOkrUrqALx3SDAZ+K2Scqcux5bmRPDTArxJyceQsGnISqlmXbyTQKpWL3RWP8aiqbb8DNM16nMTJ8zJMkYWEJt3W00W/sXB9YU/dq3u6W/iu6H2dxkqdUfLtu5f7mFYzLQKSFE9lTKA0U9tGDF83ho16ZCsK3LFPm/oFr4NwQerZszRs8hOBgs2Pp/NTJ9FwzEUlEK9YNOrL5uv++9H0zYPgt8f5sTttal3glrHCdiRJORedy2FK+4e9zs9KX8sgmyVNZ9QsDrCzi639LRNicDVRgu2vT4T06epIz36tcUgb+jQluKAnS9u3UhfOTtU1QuKD5muZ4QXZMpMKbQofFw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(346002)(376002)(39860400002)(366004)(451199015)(316002)(41300700001)(8936002)(6862004)(66946007)(5660300002)(52536014)(76116006)(8676002)(54906003)(64756008)(2906002)(66556008)(4326008)(6636002)(53546011)(6506007)(7696005)(71200400001)(66446008)(107886003)(66476007)(478600001)(86362001)(186003)(55016003)(9686003)(26005)(83380400001)(38100700002)(122000001)(38070700005)(82960400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lxUJ2UmrVkD//JbYgWPA0yhNYkh+aK0zNHkBNDfboFVqXmRMm9fvu0JjowXN?=
 =?us-ascii?Q?seRKrFBvRAe9Hw8/rsW7qrImJbrAKVMTPoKV/qHoWbf7WkHQE9maM+AGi+AM?=
 =?us-ascii?Q?jIv8pA0MIo2wgJJhMMhvWaDnNPpTzB0Qi9ZwTTVUgp9E2fj6b1QhKxupctuq?=
 =?us-ascii?Q?L6bzhrDy2jOY61EhJeldBcg4F1k52H5KbXhUgTkezKfIdQ4lz0FTIRtbbD25?=
 =?us-ascii?Q?CaNXTGlz/BpBupPIoI7HLP8UjMX31p2IoOKV0AOs+ZPaC/Jec4y94RzG2qgb?=
 =?us-ascii?Q?kHbwbVsP6fgK3giDRhnsSxwYGmQf5ArsUogRTnPrfi5D5N5W1BwrhWlolSFN?=
 =?us-ascii?Q?RZTGzV9U8EWa0MXveB7hhaMwTzpYeorkvIWcKJQPooy6/eek2T30I/vEBtLm?=
 =?us-ascii?Q?7twq32L+AtZGxEEb3A/kL2FVVtMgVuyiUR7RFL72CVTa4SBKgO8uAdzsyJUC?=
 =?us-ascii?Q?7mhw/LQZ2uH8D+emvaSIYnk52d8azU6hWGWw/a/fXS5uSvg+1q+keN+QPUHH?=
 =?us-ascii?Q?KOnsKK0pD2zBqYdFRlDHBmb8TtwyqTK8Klu+MzSK/IpbM7lwSgbkMpKvR9nn?=
 =?us-ascii?Q?blP4a9Xmr9CZW3Nx02Ny24p5aPWrgcgg2E4KgMnatPSYXluOAQXic4NsQb55?=
 =?us-ascii?Q?1Mr/DNd2MDtm/E9o51R4Or4jrI5PFgErpZKVKmgdHVunejlu2b0vzUf/xl5e?=
 =?us-ascii?Q?S4ndyLOsp+QO8B3ARplZRLyP8AmjEyXzxtPoX3zaVnyEW9ZIanw3hw0M4e1R?=
 =?us-ascii?Q?TURctbn43bxvCV+eWg0RlSFYMBDT6SFxhbtTucV4oCGmBxV3hYFCq9heOPU3?=
 =?us-ascii?Q?bhHfyV9DSn/g+h/gEYmcZXVGtkn53d7rvSefUia85jzth5cBsZSSW1VKwNeb?=
 =?us-ascii?Q?jgnihvHs6CMbpn4RZHisxySem3pIgcOKurTDkC14h7AnqSi+fD7l6l87MD12?=
 =?us-ascii?Q?J7XVI7FJj40leSn0CKKOjKLp3TwFiRmH6c1kLVP65dGjCE3bA1zyW80JQk4h?=
 =?us-ascii?Q?0lGK6CddvrCPlEBILKSZFkP04q0fDrgDLEpx5ZlJtJlZnZrioAapZXZsvP7+?=
 =?us-ascii?Q?CzjSQg/w2pV2nmZTtM5yJE0KYvaUeVVvv886cmB5NdDoIVAuQayHYZT9UqGj?=
 =?us-ascii?Q?FsZu2QxcNONfXxlun06VnXYKtObEPv+FzHb03mDKFw9NciLaIMD28RsEgBtB?=
 =?us-ascii?Q?6cv/mLJm4YESo5GwSMXUYIsazsmqEcV4xWP2nnQ6NBRNaU8bjm1sgxE4Q9BY?=
 =?us-ascii?Q?tRin/KMWg9m2n42IHZYrl6/8OJ6pSF/GJSjQLEs2DsVna8X+tB72GF7djnL/?=
 =?us-ascii?Q?RD9G9fCucdSUDYe1D32oS9G8ILzpCpDMl2eHyqU1uS3mU9a0i1aNoo4hk3W+?=
 =?us-ascii?Q?plbCWkVKpP4RZ5hpSbVynAkUfHEtcZSTplGDVqy7y0m5XzN/tTwafYmgkGpD?=
 =?us-ascii?Q?DnKEdWRf8WDmtcNf0B9VvtTV9Ji/dwHA134+8c9kWkx7UM1YTnZhYCRhKHhd?=
 =?us-ascii?Q?uajeXvB8uQL5xLletLbaKSk2DCnnsHfg0bBvqGcSL1fZmf+95ymgVpV5zB7y?=
 =?us-ascii?Q?cm8tIUPXXJLegbkUqrtIiMsHKZ436Nh1Xdsz8xla?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33134b47-780c-43b3-bb55-08daeeb8f6e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2023 01:05:41.0096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lT+5nJh6DnCv6C5LPMfA0hKSoRIcoUbELPw2NEc2pLiE78zyGDWiqlOVhWN4UVHdVBQ1ilO/JrUCwUKCkQokbXv9tlR5MZuBGa2n8K6js0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5099
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for
 CDCLK PLL disable/enable
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Thursday, December 15, 2022 2:14 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for
> CDCLK PLL disable/enable
>=20
> On Wed, Dec 14, 2022 at 09:15:07PM +0200, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message-----
> > > From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> > > Sent: Wednesday, December 14, 2022 2:31 AM
> > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani
> > > <jani.nikula@intel.com>
> > > Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround
> > > for CDCLK PLL disable/enable
> > >
> > > On Tue, Nov 29, 2022 at 09:19:40PM +0200, Srivatsa, Anusha wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Stanislav Lisovskiy
> > > > > Sent: Thursday, November 24, 2022 2:36 AM
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Cc: Nikula, Jani <jani.nikula@intel.com>
> > > > > Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround
> > > > > for CDCLK PLL disable/enable
> > > > >
> > > > > It was reported that we might get a hung and loss of register
> > > > > access in some cases when CDCLK PLL is disabled and then
> > > > > enabled, while squashing is enabled.
> > > > > As a workaround it was proposed by HW team that SW should
> > > > > disable squashing when CDCLK PLL is being reenabled.
> > > > >
> > > > > Signed-off-by: Stanislav Lisovskiy
> > > > > <stanislav.lisovskiy@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
> > > > >  1 file changed, 12 insertions(+), 2 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > index 0c107a38f9d0..e338f288c9ac 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > @@ -1801,6 +1801,13 @@ static bool
> > > > > cdclk_compute_crawl_and_squash_midpoint(struct
> drm_i915_private
> > > *i91
> > > > >  	return true;
> > > > >  }
> > > > >
> > > > > +static bool pll_enable_wa_needed(struct drm_i915_private
> > > > > +*dev_priv)
> > > {
> > > > > +	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
> > > > > +		&& dev_priv->display.cdclk.hw.vco > 0
> > > > > +		&& HAS_CDCLK_SQUASH(dev_priv));
> > > > Redundant check. If it is MTL or DG2, then it will have
> > > HAS_CDCLK_SQUASH set to true always. Shouldn't vco be 0 instead of >
> 0.
> > > The commit message says the hang can be observed when moving from
> 0
> > > to
> > > > 0 vco.
> > > >
> > > > Anusha
> > >
> > > Idea was that we probably should bind more to the feature rather
> > > than platform, I agree checking both "IS_DG2" and if platform has
> > > squashing is redundant, because then we would have to add each new
> > > platform manually, so I would leave HAS_CDCLK_SQUASH and then at
> > > some point just cut off using some INTEL_GEN or other check all the
> > > new platforms where this is fixed in HW.
> > >
> > > Regarding vco, the icl_cdclk_pll_update func works as follows:
> > >
> > > if (i915->display.cdclk.hw.vco !=3D 0 &&
> > >     i915->display.cdclk.hw.vco !=3D vco)
> > >     icl_cdclk_pll_disable(i915);
> > >
> > > if (i915->display.cdclk.hw.vco !=3D vco)
> > >     icl_cdclk_pll_enable(i915, vco);
> > >
> > > 1) if vco changes from zero value(i915->display.cdclk.hw.vco) to
> > > non-zero value(vco), that means
> > >    currently squashing is anyway disabled(if vco =3D=3D 0, cdclk is s=
et to
> "bypass"
> > > and squash waveform
> > >    is 0), so the W/A is not needed.
> > >
> > > 2) if vco changes from non-zero value in i915->display.cdclk.hw.vco
> > > to zero value(vco), we are not
> > >    going to call icl_cdclk_pll_enable anyway so W/A is also not neede=
d.
> > >
> > > 3) if vco changes from some non-zero value in
> > > i915->display.cdclk.hw.vco to other non-zero value(vco),
> > >    which can happen if CDCLK changes, then icl_cdclk_pll_disable(hw
> > > vco!=3D0 and vco!=3D0) and then
> > >    icl_cdclk_pll_enable would be called(hw vco is still not equal to =
vco)
> > >    So that disabling enabling in between is what we are interested
> > > and where we should make sure
> > >    squashing is disabled.
> > >    BTW I have another question - is this code even correct?
> > > Shouldn't we avoid disabling/enabling PLL if we have
> > >    squashing/crawling? As I understood the whole point of having
> > > swuashing/crawling is avoiding swithing the PLL
> > >    on and off.
> > >
> > Squashing works when we don't need to change the PLL ratio. We fix the
> PLL ratio to say 307 (this can change from platform to platform). Then
> squashing can be used to vary frequencies below this. So we set squasher
> to ffff it will mean highest. We can use squasher to change frequency wit=
h
> squash waveform, max being ffff and any value lower will take lower
> frequencies.
> > Cdclk Crawling is used when the PLL has to be changed. Eg higher than
> 307 then we need to update PLL. In that case we first program squashing t=
o
> ffff(this will take to 307) n then use crawling to go up to the desired
> frequency.
>=20
> if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 &&
> vco > 0 &&
>     !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> 	if (dev_priv->display.cdclk.hw.vco !=3D vco)
> 		adlp_cdclk_pll_crawl(dev_priv, vco);
> 	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> 		if (pll_enable_wa_needed(dev_priv))
> 			dg2_cdclk_squash_program(dev_priv, 0);
>=20
> 		icl_cdclk_pll_update(dev_priv, vco);
> 	} else
> 		bxt_cdclk_pll_update(dev_priv, vco);
>=20
> I think that condition above will trigger CDCLK crawl whenever vco is not=
 ~0,
> CDCLK crawl is supported and both hw.vco and vco are > 0 and vco has to
> be changed.

Why?

>=20
> In bxt_set_cdclk which calls _bxt_set_cdclk we calculate the midpoint
> however I don't see how _bxt_set_cdclk is going to distinguish between
> crawling and squashing.

We are populating the mid_cdclk_config according to the desired action.
"/* - If moving to a higher cdclk, the desired action is squashing.
         * The mid cdclk config should have the new (squash) waveform.
         * - If moving to a lower cdclk, the desired action is crawling.
         * The mid cdclk config should have the new vco.
         */"

Anusha
> I can see that squash waveform will be returned as 0, if CDCLK is >=3D 30=
7
> MHz for MTL for example, or if CDCLK is equal to bypass, however the only
> way to skip crawling here seems to either have vco =3D=3D ~0(probably aft=
er hw
> init) or vco =3D=3D 0, but if vco =3D=3D 0 we are going to then call
> icl_cdclk_pll_update which might disable pll, if current hw.vco is not 0.
>=20
> So what am I missing here?
>=20
> Stan
>=20
> >
> > Anusha
> > > Stan
> > >
> > >
> > > > > +}
> > > > > +
> > > > >  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > > >  			   const struct intel_cdclk_config
> *cdclk_config,
> > > > >  			   enum pipe pipe)
> > > > > @@ -1815,9 +1822,12 @@ static void _bxt_set_cdclk(struct
> > > > > drm_i915_private *dev_priv,
> > > > >  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> > > > >  		if (dev_priv->display.cdclk.hw.vco !=3D vco)
> > > > >  			adlp_cdclk_pll_crawl(dev_priv, vco);
> > > > > -	} else if (DISPLAY_VER(dev_priv) >=3D 11)
> > > > > +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> > > > > +		if (pll_enable_wa_needed(dev_priv))
> > > > > +			dg2_cdclk_squash_program(dev_priv, 0);
> > > > > +
> > > > >  		icl_cdclk_pll_update(dev_priv, vco);
> > > > > -	else
> > > > > +	} else
> > > > >  		bxt_cdclk_pll_update(dev_priv, vco);
> > > > >
> > > > >  	waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
> > > > > --
> > > > > 2.37.3
> > > >

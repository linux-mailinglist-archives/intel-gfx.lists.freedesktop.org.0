Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FA13B82D2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 15:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6168A6E0FF;
	Wed, 30 Jun 2021 13:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98DBB6E0FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 13:25:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="195500339"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="195500339"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 06:25:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="419988223"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 30 Jun 2021 06:25:02 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 06:25:02 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 06:25:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 30 Jun 2021 06:25:02 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 30 Jun 2021 06:25:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pz85EWSZJWMVAZr2Rspnbl7SXQOUk2jbUEKmgT5yJdaso9O9MPduinqnZeWu7kF1FQzzIobZO2lRqGn/KxVytpKXrXUyhBNfh0yCHh1fj6ZP0s1sxxxg8C0KSwNuKotne63Y2yUXSQnc1bkdkZkbT6lq0uWXJcs4ESVb6pEuBO8NIoHZrvwBkZEICSl0tRC/4mu8eAGyuk4SgUjn/g/OtUZaQiaRzmQuA6m5o1INq8cnZ5EpoGwT4COUqlKZqfyb4vVCImi43MqNL0AX4ElnUlb0veIcUlfryJkrHPU8O5qM2ZjnkWlOlGdYSDcQ3X2bbBU6AHKxvuKbqqlP0NYxKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DDsT/+8p5HeqURsoYCXgyOG77F9Vs5vkDkBtBRR+DYQ=;
 b=hiI1vhxzHwuAA6Mz+LycK6jYViCYt4WCwegkmSwHxA4C1L60SesuZ12y70ac3DCS4lnpPx7Av2HVG9OFCLj4QzESgKcyvgCYGm0MNTBWGZxa2UcAe2HQngQmXvMa7n7fX65hiAJa7AxOl2yZZuRC0lvfSoqmzBsUAOC9Z1/q5pzd2Q4nmpoj5FmiBSz2YupDw9T/F56EN1k1ggQY9Lzw6bRhN/wSq0roimJQb9zmieyzNaPNaocEHj+MwC70WsP8TsIHEgGEoSHbi0zCH8cuJNGwktot+CH6OXd8d9UptTMrdUNcaGwMEg9ab+v6SFhDO8RdxmSglMc60Icc5Ex8Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DDsT/+8p5HeqURsoYCXgyOG77F9Vs5vkDkBtBRR+DYQ=;
 b=qZN4iicmQ2bxf9LLcjwQsdxE4GP+Vaxt1gvQTvRcRcs165WolF8EU6VagJGpYTD1F1qVcKOr9Yq1l99Oy2UWe+ndzj8PW7QCQJ3Lc5eTmFcRsCOMj6gqoLpHoKJe1vY1uTntgkKM0mLzUi14F91kq7bsUT0oCMv9kYsZuZfEtN4=
Received: from DM6PR11MB4594.namprd11.prod.outlook.com (2603:10b6:5:2a0::12)
 by DM5PR11MB1769.namprd11.prod.outlook.com (2603:10b6:3:10a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Wed, 30 Jun
 2021 13:24:59 +0000
Received: from DM6PR11MB4594.namprd11.prod.outlook.com
 ([fe80::1918:2232:99e4:e088]) by DM6PR11MB4594.namprd11.prod.outlook.com
 ([fe80::1918:2232:99e4:e088%9]) with mapi id 15.20.4264.026; Wed, 30 Jun 2021
 13:24:59 +0000
From: "Patnana, Venkata Sai" <venkata.sai.patnana@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Navare, 
 Manasi D" <manasi.d.navare@intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/2] drm/i915/display/dsc: Add Per
 connector debugfs node for DSC BPP enable
Thread-Index: AQHXbLTDpeAaWdo77kWdqFxdYU9+hKsrDqGAgAEJU+CAAHGFkA==
Date: Wed, 30 Jun 2021 13:24:59 +0000
Message-ID: <DM6PR11MB4594C12C0BDD22EADD5813A3B3019@DM6PR11MB4594.namprd11.prod.outlook.com>
References: <20210629065156.30301-1-venkata.sai.patnana@intel.com>
 <20210629065156.30301-2-venkata.sai.patnana@intel.com>
 <875yxwspqg.fsf@intel.com>
 <DM6PR11MB45947698BD6584B1B56912A7B3019@DM6PR11MB4594.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB45947698BD6584B1B56912A7B3019@DM6PR11MB4594.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: manasi.d.navare@intel.com,vandita.kulkarni@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [2401:4900:4b57:d9cc:b4a7:c47:934d:15d2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e257ab0b-12c8-457d-5529-08d93bca7600
x-ms-traffictypediagnostic: DM5PR11MB1769:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB17698A83C7953425A9965ED5B3019@DM5PR11MB1769.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: deldlrABl/5941AjO3NEdrMpP/EEOemepQMd9qmvuT8eZGjOHOkjr8Le1tSldhjZoN77qJSKAtWEENs65lDj44yeA5s2E8RW21xkPp8UU+62u5WLwd6uRRRNK0kpcBxHkIJxSIYAOi1SMkNjw/aCONstaSdPTwecGR4aqDCPrcuYTa/sFo7TD2UDwG71tFsKx1JvnOWqyfwBKsMVCZ1I9LsC4V51PoNRyT2C+0aCzRVTkGagIW6HL6hAn4HFvI/95V7r42qvsCrSqFCGVqQnT4bhpGKDUS7YODouxOTp+xgR1fg6omF3qCKl8E8HVgTGF6l8L4JipBoumitbvFgw6vTduDRS3JfekU4hfxSRtK3lS8m6voxO4PvE3JCOuiHLlnMZd8mK5flofi9CkdWSQEFjymwMZC+yzThkxCdJ4BrhISKgC54MFDcCxwjkjcBEnTFMfP+wRg9q38PRtgO9t0DDICpJeDFi9F7R64JA+aD+1G3uoiGt640SoksM85g6aeq2CGaBx6iMUkpdyxRdqoJp9v8I7T2cHRoxefIgxyLnkzZNFV3HOZN9ntqV9AdkJTsz0BTunMIHLQW+q+jbQfyBbvG42jrMeNOE0mNZ5gSdUUv7rJk3duDXCSvrsdzzCmwGFXX94JohPR9sy71eUw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4594.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(39860400002)(366004)(376002)(346002)(478600001)(66446008)(64756008)(66556008)(8936002)(53546011)(66946007)(9686003)(122000001)(2906002)(66476007)(76116006)(52536014)(6506007)(110136005)(55016002)(86362001)(83380400001)(316002)(186003)(71200400001)(6636002)(5660300002)(8676002)(7696005)(2940100002)(38100700002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0erfeoZl6XhQWExO0ei/v9rK8bgqdXlF7bcOnvZFppim2/SbUGtGnDjouKmn?=
 =?us-ascii?Q?m+w9ry6pNPXhjlfKJ5iyzSYsBNblygD5Cn/2/87bYSu1Zy6FI5Sp+kfv9f9+?=
 =?us-ascii?Q?O4FUhrvrgVrGFcN6GwWycBIeSlXSdILcP5QSwquNJgUvrD7RS8aewf0HHdgH?=
 =?us-ascii?Q?CsIhQApOJUNl7G9EM5W6BCKAU3iYtTYigss3JCuU+mn7yOFt7SZlPvaKMtgk?=
 =?us-ascii?Q?TsvpQavCjMy+f0aWt1aEkegbMjzhy+LWtqD1efcpXpH2e6vM9QE2pTKqQjI1?=
 =?us-ascii?Q?yPXsAGN7Nsu4gAP6gYiswL6mszIfzg068ATghGZYhTsjir6OZHUUCYgXyxPt?=
 =?us-ascii?Q?umSuvUTWLDTChr3t4oKmrjmm37YPuzG8LKwRTCuMdoZeghAwSVVbCDxXymi3?=
 =?us-ascii?Q?4o0NNufYyHeWib/5QLAJSNX+wLGTCmQUMGO5PSYWN/Az/HolQIW4l4r9z6YO?=
 =?us-ascii?Q?JaejBgsVcvUx+zOJhumuFwzZiSAA89kZZ+RmOSoOapdlSxBVZZk63Lfu4muU?=
 =?us-ascii?Q?LoPZsiU+JUR2MvKtBcRH3zSQ+J9nwmNYoeJLIupR7lw1w5aeF/IrrcTm2CuP?=
 =?us-ascii?Q?oUYTG2tW9NNGptWZELenQYJ0/F8ZKCoEpY8gUiR3sex2oT2cZ+HI3D5ibNwi?=
 =?us-ascii?Q?eU8Gmj/rOVrLMEqAQ8necrZBC7Mk0pJQDn3XP7eGQ9OjH3gn8LplkkDl0osL?=
 =?us-ascii?Q?+u17m7KwMQnROZo39ojQyFDggqVdd+T+cm/XSxEqpMdqMWeADPR2J1rzUV/7?=
 =?us-ascii?Q?yLw2NA1F3fPPBfZkyPTqkLVXsmFPWK6O72u+rUJE2oYRA5rKn0MVXGbc6gPt?=
 =?us-ascii?Q?YhO6bFSmrFzbhYG25EXY6TYzgj4NWQldo5/SoGxkDvUjZO9ipsX456xRLA4x?=
 =?us-ascii?Q?DhdzA3NKsUkRGQ1s/RVXE8sY0o9uXGoyusD+zXuOtk54lDOgSzpYOb8i/m23?=
 =?us-ascii?Q?ENaRprmJIn1JpS7u8I9SlpX1pT/XtEhyojgVL1oBcpt4hVZNBxB1cPb6HE2F?=
 =?us-ascii?Q?2o9/JYaEVcHHmTtntKF1VQb/heEyZQIvRNjn55L+NvxxZ5c/N8Phb7G9oU4s?=
 =?us-ascii?Q?LxwEf05vmIEJc/ykRhuiE14+txBCwovFJaG0eQof3oOqZsbtt+NImbvg66hP?=
 =?us-ascii?Q?HQI+Bddz6SRrSfdAU2fUz18gfGzeZAonYJEuDc07Hk/VzkwDTkq8q5TJmoei?=
 =?us-ascii?Q?YZCf3LLZ4Uxv9BpKaHJNo+RwifxmUMaXvZfX8r02HT06UL9jHMK4sm6+Tdol?=
 =?us-ascii?Q?Sw88/qjDz5B5wLShJUvz1TCsXzJ65nlsiqT2js1/IjopNXggzFzTX0dp16P7?=
 =?us-ascii?Q?omyLjllvqe8L7inpewR3zms3vLknPHK5MtlRk46OzW3s4vggWcJGj4d0YAjt?=
 =?us-ascii?Q?SUWkU99stwUk5i8GiWdrD2zBOeeL?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4594.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e257ab0b-12c8-457d-5529-08d93bca7600
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2021 13:24:59.7746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Icg50SpcSiBy9o/to4xPDaHt60M9o9vjKB0/X5CAyMR2v/if/8XKHPEk/C8LuOrsLr5VjCglgtD0CdKkJIolfRyp6jpeUNfxoq0XR4wyBGI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1769
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display/dsc: Add Per
 connector debugfs node for DSC BPP enable
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



> -----Original Message-----
> From: Patnana, Venkata Sai
> Sent: Wednesday, June 30, 2021 11:59 AM
> To: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedesktop.org;
> Navare, Manasi D <manasi.d.navare@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>
> Subject: RE: [Intel-gfx] [PATCH v2 1/2] drm/i915/display/dsc: Add Per connector
> debugfs node for DSC BPP enable
> 
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Tuesday, June 29, 2021 8:06 PM
> > To: Patnana, Venkata Sai <venkata.sai.patnana@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display/dsc: Add Per
> > connector debugfs node for DSC BPP enable
> >
> > On Tue, 29 Jun 2021, venkata.sai.patnana@intel.com wrote:
> > > From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > >
> > > DSC can be supported per DP connector. This patch creates a per
> > > connector debugfs node to expose the Input and Compressed BPP.
> > >
> > > The same node can be used from userspace to force DSC to a certain
> > > BPP.
> > >
> > > force_dsc_bpp is written through this debugfs node to force DSC BPP
> > > to all accepted values
> >
> > This commit message only describes the "what". It's nice and helpful
> > to summarize the code changes.
I ll update commit message with below details.
> >
> > But the key question the commit message must answer is "why". Why are
> > you doing this? Why do we need this?

We want to test all the possible compression bpp's otherwise else we can verify limited bpp's 
> >
> > This looks like it complicates code that is already complicated to add a
> debugfs.
> > There needs to be a justification if it isn't obvious.
> >
> > A couple of comments inline.
> >
> > >
> > > Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > Cc: Navare Manasi D <manasi.d.navare@intel.com>
> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > Signed-off-by: Patnana Venkata Sai <venkata.sai.patnana@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_debugfs.c  | 103 +++++++++++++++++-
> > >  .../drm/i915/display/intel_display_types.h    |   1 +
> > >  2 files changed, 103 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > index af9e58619667d..6dc223227eeaa 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > @@ -2389,6 +2389,100 @@ static const struct file_operations
> > i915_dsc_fec_support_fops = {
> > >  	.write = i915_dsc_fec_support_write  };
> > >
> > > +static int i915_dsc_bpp_support_show(struct seq_file *m, void
> > > +*data) {
> > > +	struct drm_connector *connector = m->private;
> > > +	struct drm_device *dev = connector->dev;
> > > +	struct drm_crtc *crtc;
> > > +	struct intel_dp *intel_dp;
> > > +	struct drm_modeset_acquire_ctx ctx;
> > > +	struct intel_crtc_state *crtc_state = NULL;
> > > +	int ret = 0;
> > > +	bool try_again = false;
> > > +
> > > +	drm_modeset_acquire_init(&ctx,
> > DRM_MODESET_ACQUIRE_INTERRUPTIBLE);
> > > +
> > > +	do {
> > > +		try_again = false;
> > > +		ret = drm_modeset_lock(&dev-
> > >mode_config.connection_mutex,
> > > +				       &ctx);
> > > +		if (ret) {
> > > +			ret = -EINTR;
> > > +			break;
> > > +		}
> > > +		crtc = connector->state->crtc;
> > > +		if (connector->status != connector_status_connected || !crtc) {
> > > +			ret = -ENODEV;
> > > +			break;
> > > +		}
> > > +		ret = drm_modeset_lock(&crtc->mutex, &ctx);
> > > +		if (ret == -EDEADLK) {
> > > +			ret = drm_modeset_backoff(&ctx);
> > > +			if (!ret) {
> > > +				try_again = true;
> > > +				continue;
> > > +			}
> > > +			break;
> > > +		} else if (ret) {
> > > +			break;
> > > +		}
> > > +		intel_dp = intel_attached_dp(to_intel_connector(connector));
> > > +		crtc_state = to_intel_crtc_state(crtc->state);
> > > +		seq_printf(m, "Input_BPP: %d\n", crtc_state->pipe_bpp);
> > > +		seq_printf(m, "Compressed_BPP: %d\n",
> > > +				crtc_state->dsc.compressed_bpp);
> > > +	} while (try_again);
> > > +
> > > +	drm_modeset_drop_locks(&ctx);
> > > +	drm_modeset_acquire_fini(&ctx);
> > > +
> > > +	return ret;
> >
> > Looks like copy-paste from i915_dsc_fec_support_show() which already
> > makes me cringe. We can't keep accumulating this kind of code in debugfs.
> @Navare, Manasi D, @Kulkarni, Vandita any thoughts ?
I ll create new file each entry, so that it become simple.

> 
> >
> > > +}
> > > +
> > > +static ssize_t i915_dsc_bpp_support_write(struct file *file,
> > > +						const char __user *ubuf,
> > > +						size_t len, loff_t *offp)
> > > +{
> > > +	int dsc_bpp = 0;
> > > +	int ret;
> > > +	struct drm_connector *connector =
> > > +		((struct seq_file *)file->private_data)->private;
> > > +	struct intel_encoder *encoder =
> > intel_attached_encoder(to_intel_connector(connector));
> > > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > +
> > > +	if (len == 0)
> > > +		return 0;
> > > +
> > > +	drm_dbg(&i915->drm,
> > > +		"Copied %zu bytes from user to force BPP\n", len);
> >
> > Just no. Again, copy-paste from the fec stuff that we shouldn't have
> > to begin with.
> >
> > > +
> > > +	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_bpp);
> > > +
> > > +	intel_dp->force_dsc_bpp = dsc_bpp;
> > > +	if (ret < 0)
> > > +		return ret;
> >
> > Check the errors before using the data!
I ll update it to above line
> >
> > Also, how are you prepared for fractional bpp?
"ok, I will check"
> >
> > > +
> > > +	*offp += len;
> > > +	return len;
> > > +}
> > > +
> > > +static int i915_dsc_bpp_support_open(struct inode *inode,
> > > +					   struct file *file)
> > > +{
> > > +	return single_open(file, i915_dsc_bpp_support_show,
> > > +			   inode->i_private);
> > > +}
> > > +
> > > +static const struct file_operations i915_dsc_bpp_support_fops = {
> > > +	.owner = THIS_MODULE,
> > > +	.open = i915_dsc_bpp_support_open,
> > > +	.read = seq_read,
> > > +	.llseek = seq_lseek,
> > > +	.release = single_release,
> > > +	.write = i915_dsc_bpp_support_write };
> > > +
> > >  /**
> > >   * intel_connector_debugfs_add - add i915 specific connector debugfs files
> > >   * @connector: pointer to a registered drm_connector @@ -2427,9
> > > +2521,16 @@ int intel_connector_debugfs_add(struct drm_connector
> > *connector)
> > >  				    connector,
> > &i915_hdcp_sink_capability_fops);
> > >  	}
> > >
> > > -	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) &&
> > ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
> > !to_intel_connector(connector)->mst_port) || connector->connector_type
> > ==
> > DRM_MODE_CONNECTOR_eDP))
> > > +	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) &&
> > > +	    ((connector->connector_type ==
> > DRM_MODE_CONNECTOR_DisplayPort &&
> > > +	      !to_intel_connector(connector)->mst_port) ||
> > > +	     connector->connector_type == DRM_MODE_CONNECTOR_eDP)) {
> > >  		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
> > >  				    connector, &i915_dsc_fec_support_fops);
> > > +		debugfs_create_file("i915_dsc_bpp_support", S_IRUGO,
> > > +				    root, connector,
> > > +				    &i915_dsc_bpp_support_fops);
> > > +	}
> > >
> > >  	/* Legacy panels doesn't lpsp on any platform */
> > >  	if ((DISPLAY_VER(dev_priv) >= 9 || IS_HASWELL(dev_priv) || diff
> > > --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index d94f361b548b7..19d8d3eefbc27 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1612,6 +1612,7 @@ struct intel_dp {
> > >
> > >  	/* Display stream compression testing */
> > >  	bool force_dsc_en;
> > > +	int force_dsc_bpp;
> > >
> > >  	bool hobl_failed;
> > >  	bool hobl_active;
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

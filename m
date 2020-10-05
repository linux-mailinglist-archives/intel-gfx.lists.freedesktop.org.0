Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA7D283146
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Oct 2020 10:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8972B89CD4;
	Mon,  5 Oct 2020 08:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07B489CD4
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Oct 2020 08:01:14 +0000 (UTC)
IronPort-SDR: Of5UqYWe+w7WCGLoUCZkjk0s6z4CYzfHRtIx/KreMRI7WVVSroli6wfWUigD6FPX3nxv7KEGkh
 xAv9YN3pkL+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9764"; a="181470676"
X-IronPort-AV: E=Sophos;i="5.77,338,1596524400"; d="scan'208";a="181470676"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2020 01:00:53 -0700
IronPort-SDR: EcrmeZOyXa/MLdy8sFkmccXw9xMLiIQ4Nq8m9Npfc0J8mKvw4KokiuODWNyls5gUHFVmZa3DK4
 VqhUpbsYLCNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,338,1596524400"; d="scan'208";a="515908764"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 05 Oct 2020 01:00:52 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 01:00:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 5 Oct 2020 01:00:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 5 Oct 2020 01:00:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J+81wxHhl5heVyw080w5WewpDQ3ofNsUXXym/lqCrOpdtOJpCj9ubOfQX4cw/h2OGuSrVatzcwhFqSdGqewte+AIVSnjWdfTrE+Lc0c3Ln5WIYIFvTlMddu/fzTnlMbc82fp9Up4XxbAnvpyM+c2qz/REuGIx3CqzOQSbJGWGBwtfKudXD4eomyNOWkZIA03qDLZGlSCVQAYzDkDvxABezxXpoW2754hI04Ap8RukUMRRibGwonQ+A2R7l0BumJufsbTtGix5vr1pHzGAVONvbFjuTG3tdIu09R569K8j4h+Woc5eNNiwFEkrzID0plPpARAMq3rrdxLFA3E3k1l7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dySJt0XxZD7SURYRJC47zUoWZndZ61jAzbu82YAqUi8=;
 b=Qs7pWFbBYvnPm10miSfdUpnWHicsKeOvO52iX3x09DgA6FcnI7/LfEhbKp+2GxbyDm3YFV/TrunehFE3Ot8NAzyBXNr1iU0ZFb51LXN2w6ItnNKN4nHsHjvRCh5FukQ/S1/KGRJfkkjLOC+TeQmjtfxCGF1ViKPd8NsZvCEhwKLQFcjulg/Cgt8aMWHFswcR0WWkouhI7QLQoq/cscKT+05T6HcJ3f6H6CdtEXZT1Yv9+ah3wa4+e2FQ5IZ3J5EzewDaHuBS7ZqpxFT2A4B8P7NAG/VLAFSNh+z+z9v2ohaIoyVJRpX75ACtbmcCJpQr2kZN+wRJNTBEY4qh0KZM9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dySJt0XxZD7SURYRJC47zUoWZndZ61jAzbu82YAqUi8=;
 b=Ze66upc41iKAPsgfYifHmX8YQyBPZmi9w0EBBqPtlRHFpMkgrkU53uglYElcgrZ3Wn/0bhDt86k1UC/mfY0PSmgiPGv1sBiwfGlcAil7J89ZGaM4NviVH/UUSm3GTHXY4IhFBoQE83pB/RPb86KJ/FewTEALyP7E2D9jrPBtNPw=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BYAPR11MB3621.namprd11.prod.outlook.com (2603:10b6:a03:fc::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32; Mon, 5 Oct
 2020 08:00:46 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3433.042; Mon, 5 Oct 2020
 08:00:46 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Implement display WA #1142:kbl,
 cfl, cml
Thread-Index: AQHWkrNrzb0WiddIAUyKR2eNsW1dH6l5MN8AgA9+vOA=
Date: Mon, 5 Oct 2020 08:00:46 +0000
Message-ID: <BY5PR11MB4307FB8F37E66B9155BB3384A30C0@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20200924194810.10293-1-ville.syrjala@linux.intel.com>
 <1187052a52622a66b89267cc7573370419bcf832.camel@intel.com>
 <20200925110054.GP6112@intel.com>
In-Reply-To: <20200925110054.GP6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.3.26]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae97f9c5-23d2-4642-2e83-08d86904c462
x-ms-traffictypediagnostic: BYAPR11MB3621:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3621604BDDF15C9A35A85B64A30C0@BYAPR11MB3621.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iopV0Vhv4Gh3zx6Y3uIcyVyl1njJS6mQ7saLNU8exhWBkOCEe2qbkWWcMgMhiWDyET/GR1sh/1ug1Jsn0W7ssw8mQizx7ouoHIfbOyjzH1Y1x3l+x81TADZRCoEPIrPMssgjC6ibKMx6jNggUD2xyrgNgKqynBfDLKcG6fI9lbFCXhddUkoN7j/2D7i2hysGIaaTdl/tRheepCIw7JWpB5XtjyrkdPfq3aaLuHusnxzxlB6tCPVp/1sJvoc5YdlabRlzjy9G06SngTTlGZugR1B5Fh/gxTW5p+z4GiK+3c7Gd/emz94FXPKgbPJLH30Y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(376002)(346002)(39860400002)(366004)(26005)(4326008)(6506007)(8676002)(8936002)(6636002)(55236004)(316002)(2906002)(71200400001)(110136005)(86362001)(186003)(52536014)(55016002)(478600001)(7696005)(66946007)(5660300002)(66446008)(64756008)(66556008)(66476007)(76116006)(9686003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3wOrV6LjtKQ8c/clPyaAGjroTusQx7RyH4GjS4NfrL9vC+de5L0xGl1Whq26VxEBHcXqk61j67Q2/ZYPT6qp/GqFxM6DaAii/xZi7IPCFeyIr2GegWiOAzHi4vnill3YERROASc+mP25iXt9lyIh52QBAWHGWp2lYlyjgK0DcOiKjpzZ1trPDz5qvi30Nf/ZwpzF2Yvb7ol6sGc0CydylOZTSJk8C4t7UaVEPu7HCqMblhl5AIUWgsAvfZw4oAJUosbLzBN8jx9l2ZLvGAEsDLl1/c86+ZIqGq2ZrjtLfwpPOfVVDPqnm4G5HVUGWLjJnStYlqyHDCeRzzHVoOmS4ydvw1TWTpOoaq7OTLartkccv7OhLZUNkp8ldMjC7zhRD+wjrhgZObxYTdC7QKU1dvoYfRydA4ZHB4zN5tfkobG0pQG8eRihpEU0unIZ5ElbumN9+WvidW9+l34/QnryrDI1FWXsM4RyVXv04Sh1uh/oaSBsTd5DSIvufohOWVxXmvtsDyxthWZ5z0kuhGRmUm1RrO7/U7pNVwT32OLv43xV69ke13arcFWlu+1Me6yRCfEvEJMVKTuTC2+lfWmzPl3JCMfGgq5Ykr5K8S20aEoFKH/UKRJuQhzNdcMGno1Eof/2Kgw65rRKMQv2EPm9Ew==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae97f9c5-23d2-4642-2e83-08d86904c462
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2020 08:00:46.7290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jqI/RytXs3bWqCikzDmmQbhf8Qg7QaZs/t5Ic6ilGIKfz7sQ0Aadww2Sez45DKdNqxgpFDjkr3Phj75HZ8054g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3621
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement display WA #1142:kbl,
 cfl, cml
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
Reply-To: "20200924194810.10293-1-ville.syrjala@linux.intel.com"
 <20200924194810.10293-1-ville.syrjala@linux.intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sept. 25, 2020, 11 a.m., Ville Syrj=E4l=E4 wrote:
>On Thu, Sep 24, 2020 at 08:43:33PM +0000, Souza, Jose wrote:
>> On Thu, 2020-09-24 at 22:48 +0300, Ville Syrjala wrote:
>> > From: Ville Syrj=E4l=E4 <
>> > ville.syrjala@linux.intel.com
>> > >
>> > =

>> > Implement display w/a #1142. This supposedly fixes some underruns
>> > with FBC+VTd. Bspec says we should use the same programming regardless
>> > of circumstances. Apparently we should flip the magic bits before
>> > turning on any planes so let's put this into the early w/as.
>> > =

>> > Cc: Lee Shawn C <
>> > shawn.c.lee@intel.com
>> > >
>> > Signed-off-by: Ville Syrj=E4l=E4 <
>> > ville.syrjala@linux.intel.com
>> > >
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++++
>> >  drivers/gpu/drm/i915/i915_reg.h              | 3 +++
>> >  2 files changed, 12 insertions(+)
>> > =

>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
>> > index 5a9d933e425a..9d64187cfd56 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -18677,6 +18677,15 @@ static void intel_early_display_was(struct dr=
m_i915_private *dev_priv)
>> >  		intel_de_write(dev_priv, CHICKEN_PAR1_1,
>> >  			       intel_de_read(dev_priv, CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PL=
ANES);
>> >  	}
>> > +
>> > +	if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv) || IS_COMETLAKE=
(dev_priv)) {
>> =

>> WA mentions that it is required only for KBL, but if Lee says that this =
helps with his CML issues.
>
>I think there's a note somewhere that says cfl+ are derived from the
>last kbl, and I don't think there's are specific cfl/cml tags for w/as.
>
>> =

>> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>
>Ta.
>

Thanks for the patch. We already shared this patch for external customer te=
st.
According to customer's reply, the reproduce rate of flicker issue is lower=
 than before.
Unfortunately, they still can see panel flicker happen very randomly.

Best regards,
Shawn

>> =

>> > +		/* Display WA #1142:kbl,cfl,cml */
>> > +		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
>> > +			     KBL_ARB_FILL_SPARE_22, KBL_ARB_FILL_SPARE_22);
>> > +		intel_de_rmw(dev_priv, CHICKEN_MISC_2,
>> > +			     KBL_ARB_FILL_SPARE_13 | KBL_ARB_FILL_SPARE_14,
>> > +			     KBL_ARB_FILL_SPARE_14);
>> > +	}
>> >  }
>> >  =

>> >  static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_p=
riv,
>> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i9=
15_reg.h
>> > index d805d4da6181..3f97cc0fcbf1 100644
>> > --- a/drivers/gpu/drm/i915/i915_reg.h
>> > +++ b/drivers/gpu/drm/i915/i915_reg.h
>> > @@ -7865,6 +7865,7 @@ enum {
>> >  # define CHICKEN3_DGMG_DONE_FIX_DISABLE		(1 << 2)
>> >  =

>> >  #define CHICKEN_PAR1_1			_MMIO(0x42080)
>> > +#define  KBL_ARB_FILL_SPARE_22		REG_BIT(22)
>> >  #define  DIS_RAM_BYPASS_PSR2_MAN_TRACK	(1 << 16)
>> >  #define  SKL_DE_COMPRESSED_HASH_MODE	(1 << 15)
>> >  #define  DPA_MASK_VBLANK_SRD		(1 << 15)
>> > @@ -7877,6 +7878,8 @@ enum {
>> >  =

>> >  #define CHICKEN_MISC_2		_MMIO(0x42084)
>> >  #define  CNL_COMP_PWR_DOWN	(1 << 23)
>> > +#define  KBL_ARB_FILL_SPARE_14	REG_BIT(14)
>> > +#define  KBL_ARB_FILL_SPARE_13	REG_BIT(13)
>> >  #define  GLK_CL2_PWR_DOWN	(1 << 12)
>> >  #define  GLK_CL1_PWR_DOWN	(1 << 11)
>> >  #define  GLK_CL0_PWR_DOWN	(1 << 10)
>> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

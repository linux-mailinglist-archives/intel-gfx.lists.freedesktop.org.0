Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F002724AB
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 15:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6611A89DD3;
	Mon, 21 Sep 2020 13:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B5B6E35D
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 13:10:15 +0000 (UTC)
IronPort-SDR: 3FluA+514DOuhwMA2NIJLfkkguIAh66pLr1heZitcndGOozYVS/hXc0uEHeBYXBVF9tEIINcUx
 ULGQmoyRm6/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="139871242"
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="139871242"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 06:10:09 -0700
IronPort-SDR: UY3qxqBo4SauHzztcMc+RjQyfYYiNX7p4a5dn7PJO9K3Jx9R1JUxIzTxnJCy7+qjOTPhEmN25c
 QB7J6FzCe5OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="337894156"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 21 Sep 2020 06:10:09 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Sep 2020 06:10:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Sep 2020 06:10:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Sep 2020 06:10:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 21 Sep 2020 06:10:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odnX/ZI5dgvr+GwLqVIG7ovxZsn+WLFVpjwghHLvOKVUWsGC54Jb437mywMm/mWbSSdb3CgBoCZLYz6mkCCQKrqBtMCLUWbXzisiiOHFJM5FaUkVWdMEP5UG+He5xaZA0iccZTvE5TxRe5wpCrj1HTJuA/XtcFVlkrLAuhMxK83nLcoP4gjtA/P5SP3UBXW8btNNLaoY17tjY7u7sUP+79OOOOnpuL/iwxilL5WNcWzWCLg4CXcKdcYHCw8MmST0GXAF2Jm6BOvtgnSyMrVofWH5Lhy0ODSUGFTD4t5stmU1QB0u9rOSxBYFPYKlOQ7+5WPI+9CKW12ZwzUGpqBVCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iLy6VcQikVCHuJAh3vdPKzIQgWJ5Ni8/IbHNfW1+KPo=;
 b=R+XAa6yoZE1tkBAbrqA7DVoMXSVFnDX2VamxzHWAnOPeybQ7hh6DgfXPOE1E9NtVmKJROB69wl3ZYJiVGaoyB12yLHhPOukkT38uAi1NfNmSM6lcV98AMtGvJTUFcMzgCLj5dsaeX+QYvhjv5G9uKjNrC9XQX0zZwtjcNjsd15EZLtff4YgK7HfYQPXF7eTvJn2BtjKCsj59Pq75G1d0RR9TV4frddkcJfJXUuaRs7D5+qB5THngvTb0SdpxJQZzSlKM3BGlbK2bWDG4y5Eg/N9v4XlJ2KNQ1LbkUlRtkovGWjPuWp7H548mEUx/BIKdCuvTSExqUBAmABxy7DSWHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iLy6VcQikVCHuJAh3vdPKzIQgWJ5Ni8/IbHNfW1+KPo=;
 b=kX5aO93IgAIdNPUBOEs2Ovch4gezCLo4TFKDVsI5emXCn+GnsGiYWAeyRtT+dnsTQEZUrvMGmJ4D7JeDZyeSXtSyDwEUh83PEkTsGo2Djxu8cP5UiKXOJev1M0hBmF30FhX8XV4P9pdJ3u2QbkCs0yaEdUg+lEI4g6lk+/bgbDs=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BYAPR11MB3608.namprd11.prod.outlook.com (2603:10b6:a03:b1::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.19; Mon, 21 Sep
 2020 13:09:54 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::98fb:1978:c0aa:80a3]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::98fb:1978:c0aa:80a3%5]) with mapi id 15.20.3370.033; Mon, 21 Sep 2020
 13:09:54 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: RE: [PATCH] drm/i915/fbc: disable FBC on Nightfury board
Thread-Index: AdaQF81EwVtAtRnFRRSDzLeXHMA3Lw==
Date: Mon, 21 Sep 2020 13:09:54 +0000
Message-ID: <BY5PR11MB43077FD606FDBB3738A93F63A33A0@BY5PR11MB4307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.12.231]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a25fc57e-fc5a-4ece-f123-08d85e2fa1f5
x-ms-traffictypediagnostic: BYAPR11MB3608:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB36086E4AE9BF36042410E7ABA33A0@BYAPR11MB3608.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AZP7AvDiXHv9uePcwjIoghBRHoC9XGMOd/oaihfSavjQrRfKAYU2+9xP4t5hvK2r1AA+EFIAvgsGUkXXlW8b52k95LklM2K7r0s+Y/Un18PwJzHxpg0Mt/BIdbE7EJJyhFepsopWgdYpbyXPyLwnpsd7tMdJIW2ZjsosiKFtUf4amQu7l1MvMcn3zsuyHhxHPDruV6i7uH2GydeD9kqVTMmDkDjwP+xsKApblH9i7Lkt9r6Q2UuLZ3cyT+dDkqhqfxhJkk89GCEt99XVVeMw1MQe3Zau+pFLyhUwSnT6dpwKjrpDhxPtJp7E8i/Osn5N3gKLrvSTruby/eOuTURh0XJVQaXLpX2DiVY4JyuJMXc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(346002)(366004)(376002)(396003)(316002)(478600001)(55016002)(2906002)(9686003)(966005)(6916009)(83380400001)(66446008)(71200400001)(64756008)(66946007)(76116006)(66476007)(66556008)(66574015)(5660300002)(52536014)(54906003)(86362001)(7696005)(8796002)(8936002)(4326008)(8676002)(33656002)(55236004)(26005)(186003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: +aWdTIi+7bHJM8aNCJZW7CgIBrky5MuDwgL2WCOdZ98Zc2BMDkb2jsJXo5u6Q+Hmee8DycDYvrlNpxaR+9HbcRGixq9QK5KD1TdDYVwDLvzJxuqTUr+DBvBfrH/UrjvZz9al9vMD8GssYJrv7dBFOBPEskuNxvtrNb0RUi7cmzmbbK4MPSywMm+h2QtRDM4yW/xEoRy84uC8JhWXCPhgZJdVepxESqs8nx/yYkig8nhZrlTh5r5M2L8y8S6VazI+soS3DEN8qNK4yu33HKRhd1p7bE9X19GiX3XKT5b+BtxXHFVEYDfxjiJxWcJ4mrNWUMZePTANKsdbYaUxkKD1i+elC79QHdqFgIFqlNRkOkmrJAmx5Lp69WC9SdrmlBp+C/lWodHC3IndG/lwiJFLF8yDFvV88DjTfUSBHQS54Qkl+JAeXXYBmZJGw9SzV1dP5k7fkpsh7a1dWz6MtOLwVXTsfkeTVbPbzOko5lXVOLNNPwtocor6z8c3HvIwL/sesoxqSJ2v1SX0kiB5VtvpzpuKrl76YOJX6Uxx5cyHI1+Gi8V5cEUxkwD12aZqF1ST3u12AVDurwCVKNxv2D6SNv6v572kX2aNgwO7Iy8vNJ0Q4c8jCBp1IFryzeC+BF4PGwfJ3JX4QzCFkjXL3niU3w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a25fc57e-fc5a-4ece-f123-08d85e2fa1f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2020 13:09:54.4729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JqZ6sg9DnRxwXx+VL7dDbuELgr+/nnIkepPvLZZ2kw2BIjEUaJgUka5HAmG4g5IZgDwnrTNjsgBlEW4yhP9zsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3608
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: disable FBC on Nightfury board
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
Reply-To: "20200827055129.26566-1-shawn.c.lee@intel.com"
 <20200827055129.26566-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sept. 15, 2020, 1:35 p.m. Ville Syrj=E4l=E4 wrote:
>On Tue, Sep 15, 2020 at 01:18:13PM +0000, Lee, Shawn C wrote:
>> On Fri, Sept. 11, 2020, 2:21 p.m. Ville Syrj=E4l=E4 wrote:
>> >On Thu, Aug 27, 2020 at 01:51:29PM +0800, Lee Shawn C wrote:
>> >> Customer report random display flicker issue on Nightfury board.
>> >> And we found this problem might be caused by VT-d and FBC are both =

>> >> enabled. According to sighting report, it recommend to turn
>> >> drm/i915/fbc: disable FBC on Nightfury board
>> >> =

>> >> Customer report random display flicker issue on Nightfury board.
>> >> And we found this problem might be caused by VT-d and FBC are both =

>> >> enabled. According to sighting report, it recommend to turn FBC off t=
o =

>> >> workaround this kind of issue.
>> >> =

>> >> This change refer to DMI BOARD_VENDOR and BOARD_NAME information to =

>> >> disable FBC.
>> >
>> >What is this "nightfury board" exactly?
>> =

>> It is chrome os project on CML platform. The board name is "nightfury".
>
>OK, then someone should definitely test if that missing w/a
>fixes the underruns.

Customer already confirmed display flicker issue disappear after
applied this w/a.

BTW, here is the patch v2 to fix some typo in v1.
https://patchwork.freedesktop.org/series/81087/#rev2

Best regards,
Shawn

>
>> =

>> >
>> >I think we're missing at least one fbc vs. vt-d w/a on some kbl/cfl/etc=
. era platforms:
>> >git://github.com/vsyrjala/linux.git  vtd_wa_1142
>> >
>> >> =

>> >> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> >> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> >> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> >> Cc: Jani Nikula <jani.nikula@intel.com>
>> >> Cc: William Tseng <william.tseng@intel.com>
>> >> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_fbc.c | 22 ++++++++++++++++++++++
>> >>  1 file changed, 22 insertions(+)
>> >> =

>> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c =

>> >> b/drivers/gpu/drm/i915/display/intel_fbc.c
>> >> index 327af428d73f..20660fdbab36 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> >> @@ -39,6 +39,7 @@
>> >>   */
>> >>  =

>> >>  #include <drm/drm_fourcc.h>
>> >> +#include <linux/dmi.h>
>> >>  =

>> >>  #include "i915_drv.h"
>> >>  #include "i915_trace.h"
>> >> @@ -1439,6 +1440,24 @@ static int intel_sanitize_fbc_option(struct dr=
m_i915_private *dev_priv)
>> >>  	return 0;
>> >>  }
>> >>  =

>> >> +static int intel_fbc_vtd_callback(const struct dmi_system_id *id) {
>> >> +	DRM_DEBUG_KMS("Disabling FBC to prevent screen flicker on %s device=
\n", id->ident);
>> >> +	return 1;
>> >> +}
>> >> +
>> >> +static const struct dmi_system_id intel_fbc_vtd_detect[] =3D {
>> >> +	{
>> >> +		.callback =3D intel_fbc_vtd_callback,
>> >> +		.ident =3D "Google Nightfury",
>> >> +		.matches =3D {
>> >> +			DMI_MATCH(DMI_BOARD_VENDOR, "Google"),
>> >> +			DMI_MATCH(DMI_BOARD_NAME, "Nightfury"),
>> >> +		},
>> >> +	},
>> >> +	{ }
>> >> +};
>> >> +
>> >>  static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)  {
>> >>  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */ @@ -1450,6 +1469,=
9 =

>> >> @@ static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
>> >>  		return true;
>> >>  	}
>> >>  =

>> >> +	if (dmi_check_system(intel_fbc_vtd_detect))
>> >> +		return true;
>> >> +
>> >>  	return false;
>> >>  }
>> >>  =

>> >> --
>> >> 2.17.1
>> >
>> >--
>> >Ville Syrj=E4l=E4
>> >Intel
>> =

>> Best regards,
>> Shawn
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

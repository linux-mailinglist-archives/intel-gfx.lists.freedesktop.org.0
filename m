Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F0E27252C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 15:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA0B6E15A;
	Mon, 21 Sep 2020 13:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 975316E15A
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 13:16:03 +0000 (UTC)
IronPort-SDR: HiPRnI+/tb9aY+/n6USJ2/z/GyYE+zg9683O4YhL/nQWXcinE5wDAWVxytuThwjKBwCEV2OykV
 tdLfSOAFtnUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="159671806"
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="159671806"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 06:15:59 -0700
IronPort-SDR: 9ZXXIYEbv49GcJg23xkJkLWfYvyXPw3Koo3m4LnnWa9oLtFbSS8+SLJzahgHjEil9Ib/ghZho2
 SmZ1D28jbZuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="289966067"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 21 Sep 2020 06:15:59 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Sep 2020 06:15:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Sep 2020 06:15:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Sep 2020 06:15:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 21 Sep 2020 06:15:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nEFxfSSAkzBcApo+3e+jmVpdf21qFmmBlyWNZuHJOmpQ2wJRlhryd7tkuxaM+ORMjnGmNOyUu0YwLMvuRCLXhqmL1KpcBEEiQu5KZ/14tRo46QWJPguhRAxEAKTGUydwChoBx3xQViY8ORX5qStOvmS88qNDCjRrw9BafzO8DgSUUhprMDbB9vLK7hsEW8XIUKxh16mDWy5rT0TjcQsut0gzGg7alzy4nQXrqGuuBZTbIa/5DtcUggdF1eBgHQA098INcXWPkO+JZQ2CCHoKbm8+zzJT5SYlNXvt780QTcNlxXm155VYe0BBT7naPDbE+uERm1H4Whzn8BoDBNip5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=31hevmHm64nh+lMRZGpOTzEeXEDQcSG+nLceo8gM9NQ=;
 b=A4gvtCWd3tp1lGqVHkT5opgfOmYljwaVNZEeua+rU1g7uACgQhDAvfNi3LPHCcPllODc8OjEd/jpEPPYP+D8vZ0vmbCiReBGFYXDwjODO95yo2K5n7Irf7nbDKcOZgSpKJNGPGrOzxJA6WDRdjfcfQFq1dIogYTZp9ZDuw+Q676C8l5izHATcw0OjMQdRATTdCr/2H6PNHL7Cy+zTzLJfUvzmTQ6L6rcYaQNuXmfLL5v1Sjg70KQ0Wgr+duvUtI8DOLfv9dyY4QMi5YKFwJlh7XcdHeUUkWoieA0vJK03U7jvkBd7l0o0SRQ/o/pmM0MbR5zB9HLXX1SSj0tndnzGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=31hevmHm64nh+lMRZGpOTzEeXEDQcSG+nLceo8gM9NQ=;
 b=jeam2XO3BgcsfxT2sdCXUrvYWUDFOlV/8qxGpM3ra8bt04z5ySYbR3rWmQ9/VaX938OrCTETHJZOWj+N2j+ID/vMwmGIFhR3QaLKKbUTtj4+elZHyBYRhrO7fBya70sqxfgetkvalNAvObSUhNow4Yoq0gxVQzFMbAPmJd2qp3c=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BYAPR11MB3560.namprd11.prod.outlook.com (2603:10b6:a03:f8::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.19; Mon, 21 Sep
 2020 13:15:56 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::98fb:1978:c0aa:80a3]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::98fb:1978:c0aa:80a3%5]) with mapi id 15.20.3370.033; Mon, 21 Sep 2020
 13:15:56 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "20200827055129.26566-1-shawn.c.lee@intel.com"
 <20200827055129.26566-1-shawn.c.lee@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/fbc: disable FBC on Nightfury board
Thread-Index: AQHWfDZQgR8ZHUVOuk6iIDOxKwjRfqljlS6AgAY1wRCAAAbGgIAJaA2A
Date: Mon, 21 Sep 2020 13:15:56 +0000
Message-ID: <BY5PR11MB430771491DD2DDD4B542061FA33A0@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20200827055129.26566-1-shawn.c.lee@intel.com>
 <20200911142113.GJ6112@intel.com>
 <BY5PR11MB43073FAD5FBBD0A47986E296A3200@BY5PR11MB4307.namprd11.prod.outlook.com>
 <20200915133525.GG6112@intel.com>
In-Reply-To: <20200915133525.GG6112@intel.com>
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
x-ms-office365-filtering-correlation-id: 0d6d450c-ea4a-4bc0-f0e5-08d85e3079a9
x-ms-traffictypediagnostic: BYAPR11MB3560:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB35607FE574DCC7EA7A574774A33A0@BYAPR11MB3560.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x8JpOuTMzT/HNtKCZkRMJ744PyXsetXMq0XmwHTqmcHcp3sMG07si2NZmpKlIfVZRTP9iaEV2Un12P9tbfpS/Uvvwb/jebNTpMg4fQzo8iqRrBaWIYB38GPgHcGuKAzLWziS+RQ3tPrHCrzniDRFzxQ9rIFZjHAVBZ8irMIj65RLEsA6IMC/ZRj03iY66NMXi76TF6QOV5KEksTlCJxfWXuCddh3PR74iy4g4rkw9sVefInqMZlrsgUQ3RMXnNK9kf3vl0t37McxVt7V7pgAptZiVAaqoexvH5PNHfYZx88oMVBk3rTMEel0apnb/4DaKZNMlcQZaojSIww3RDQF0UE73ruapLVTZnY9WS7gv0N83G3VfJpRXwOVmHgIZBfOnOaP0JVFfE5vnW78zD4Heg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(9686003)(966005)(55016002)(2906002)(7696005)(6506007)(86362001)(66946007)(76116006)(55236004)(66476007)(66556008)(64756008)(54906003)(66446008)(71200400001)(52536014)(4326008)(5660300002)(316002)(33656002)(110136005)(8936002)(8796002)(83380400001)(8676002)(478600001)(6636002)(186003)(26005)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: QupnN7sAMVm0tDgLkezK2d88130oIdQEyFfgn3Gbun3SnSlD4QiHHxz5OK2xh6qsqymvg4kKxXfkrAKS0Z1EnCwAv2ijwSq8TcRx/K9ltKcDedbBfqp5LeQNvHIFXl1rlS2xSRRu09OXluF1Bhp2lNz+tRaUWbBUXZv2vdfpm15RzOCpUmbjCmtWlb0nlOm6sbQftGQOZP0Iih4C23RLjFWvnjTVaO4v2waffcS9e35vFXoUCNV11dLRtTN2fDJxmKRCAGrI4hbuocyo6N7H8/LBzXBPkkM9gOEcFWRMiExZIHurlCUAPgGsKC+GQRd52d/ffgzzXqp55tW2cKBvXtGru79T21Mm3hJyqj5QaYfUJbcURuW24vxLNMnhCO9Loz4HwwLyiRZ/9N7x+YtiuLR7MEGPPAcTgzupokVCnTvqwrLC/Kn8hJqUPeh56OwgDkORa70aN3eGrYRNMqS6LUhRvpd4xYws+ujFgnBvSvUiSsCS7FtOGQ/qCCuh/2YlfLpIew7k8Gm0HlqVLnL4IRLMxuBeuKk12/FeUzolT4fyr2S2GNgHFisF9tD9MoLMqVu+H3gFKs+1/+mDBNa9U7mgP1d7ulZCqeYh7JsckaLjtojZt/wR1WEvNTl03rL7A2eUi+pxPET1hdWakZbKig==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d6d450c-ea4a-4bc0-f0e5-08d85e3079a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2020 13:15:56.3717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rAKit3To4529o7EtAnem4AbzSW1ykYMfoRllPtQ158mYs/9qlsXpGASDcdGpKlGtwes8Yi2K78wdtChLMvXC2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3560
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Chiou,
 Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Tseng,
 William" <william.tseng@intel.com>
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

>> >> enabled. According to sighting report, it recommend to turn FBC =

>> >> off to workaround this kind of issue.
>> >> =

>> >> This change refer to DMI BOARD_VENDOR and BOARD_NAME information =

>> >> to disable FBC.
>> >
>> >What is this "nightfury board" exactly?
>> =

>> It is chrome os project on CML platform. The board name is "nightfury".
>
>OK, then someone should definitely test if that missing w/a fixes the =

>underruns.

Customer already confirmed display flicker issue disappear after applied th=
is w/a.

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
>> >>  drivers/gpu/drm/i915/display/intel_fbc.c | 22 =

>> >> ++++++++++++++++++++++
>> >>  1 file changed, 22 insertions(+)
>> >> =

>> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
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
>> >>  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */ @@ -1450,6 =

>> >> +1469,9 @@ static bool need_fbc_vtd_wa(struct drm_i915_private *dev_p=
riv)
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

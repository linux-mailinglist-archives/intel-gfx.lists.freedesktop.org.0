Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAAE26A618
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 15:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E146B6E2F8;
	Tue, 15 Sep 2020 13:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C576E312
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 13:18:23 +0000 (UTC)
IronPort-SDR: NmTHSJpGSl10wnyshux4kDEpEkRfPDDTHQdTLzOWZakaG8GUa5qFOirnVKsZvu5lxXVasuU08W
 tt/4+5zjpP/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="158538118"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="158538118"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 06:18:22 -0700
IronPort-SDR: nnUUCmY/FX2q8UaKNiQdneZ43ptSbmiAOfvO4Xf8xd9AZ7Kk06Co7QO9Ztozlkq3Hvm9NGILRB
 ZYFevQcjqvPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="507540564"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 15 Sep 2020 06:18:22 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Sep 2020 06:18:22 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 15 Sep 2020 06:18:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 15 Sep 2020 06:18:21 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.50) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 15 Sep 2020 06:18:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XvKP1FsYr7rZEflrpbBm97MMvQ3enbq1ccolQEhhecMWjpRJGdChW9rIRKs5dQY1xjopmzV4L4apiaVl0gSlcVW3d+Th82ofjTlH0LGGEf9lsK46qFR0lUqV8fRw9Cfs5GjUa7cgZo98vh7/xzTZ8EZ+5eqL1l2MGFMZkI0WlFEwrHCQNZMcfMdsRJoIWMtjTPmkver13eJ85cDjMDRfheOXFI5IvRj6Q/mV+N6rfLkEGF8PJ8Ty/27caG/scwYATLg4kr3zkiY4XehQQ6gNDXsabd4K1DZCEG/Wy0o1Lv8c7GxrefIcp7Oby5H7PhcuCF0p6rW0u6kzJ2vPqG/Iww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nzjq69G0OlI7DMuu57LXHTHt1+fyAbPYlj2VKzc6oFU=;
 b=ISTppbkGDx/nP1IPEs+WJQE3f5P85hsxe6cLI1FcvVV3MLuoV5tW3scRQ/xuHxj6laD/oMSjnOeppnsZYZIH0IgG5JIVlaCabHJUQjCqPBiq1gPpm+yqOvmTufYV6tk/BYtC8VdzRKEDl0FhMgcW9jN/vaLelv5KmOhFQA6mTrRyjfrZZoEwKZXPA2wD9ehYMT4WsDnCs1XaoMTmejqFqbv/lcoXnJJLvwo5ISi2Dsc5sV0ZLWnrYfGfpA9LjFSTkJ0icCeqr4ZkZF/UhDiy2e2miiCOArL9T+4bT5dRa0kCIaG021RpWQStTUz9IwI7pBLZy304twt+tsKlDPOzAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nzjq69G0OlI7DMuu57LXHTHt1+fyAbPYlj2VKzc6oFU=;
 b=yWwHCYax3cFSyca/VggMHbrFAfcsQ/EorSa0jL5SK66QP9cTw0wYzHQD0MLkgzUQFlYKQRGvo/RTs2EYOxUnk3KF123j43Dz6k56KkLTcfzbFtwci37yunvdpjTjFWjyMwya5Wwi8RLIC2gXNgyHerWg2TH2uBMqgS0E0mFFmmA=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BYAPR11MB3477.namprd11.prod.outlook.com (2603:10b6:a03:7c::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Tue, 15 Sep
 2020 13:18:13 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::98fb:1978:c0aa:80a3]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::98fb:1978:c0aa:80a3%5]) with mapi id 15.20.3370.019; Tue, 15 Sep 2020
 13:18:13 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/fbc: disable FBC on Nightfury board
Thread-Index: AQHWfDZQgR8ZHUVOuk6iIDOxKwjRfqljlS6AgAY1wRA=
Date: Tue, 15 Sep 2020 13:18:13 +0000
Message-ID: <BY5PR11MB43073FAD5FBBD0A47986E296A3200@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20200827055129.26566-1-shawn.c.lee@intel.com>
 <20200911142113.GJ6112@intel.com>
In-Reply-To: <20200911142113.GJ6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [1.161.42.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50a8ee0d-6c32-4e1d-11e4-08d85979cd02
x-ms-traffictypediagnostic: BYAPR11MB3477:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3477F540238C594FAC75161FA3200@BYAPR11MB3477.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1sXHG0Uv51Wo1hDALZ5IlfC9heLF0kVyp4MW53kshjUwv4PRP8KO9Gl9QkdODgQX6mGg7W+U0Y5qWS/koTZFY+PCbC9DQYTS+1jQTEbYq2SFY6teC+yWtaCdJZTc6PkKL3UpSpZv33UveDKwUHAyExp2vM4c3uUXebdfx77jREovazIE5cEMthoJYSoPO6xU6VBNJyfsHRGdzXsqqW1R4oxZavGVP6yTAJXEe4Q8x1iZJfqTi2KuHJO+3WNWt8tg0icSfwi6/6bfNiG8NpJGsUKYaejWDz6VeQAy9Si1JEq9pWRWrAVXQ7a52OGKDV8dVxkJz8GeDB6YJRwfrIRmaTFduooLBA7D9LNYFWcaqBAqHfTUIMo976fs7FY7k5t5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(366004)(39860400002)(346002)(376002)(316002)(8936002)(6506007)(478600001)(8796002)(9686003)(33656002)(66574015)(186003)(26005)(2906002)(83380400001)(52536014)(5660300002)(6916009)(86362001)(8676002)(4326008)(54906003)(71200400001)(7696005)(55016002)(66946007)(66446008)(64756008)(66476007)(66556008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 0YQAh72Gh4l6NtUxKM6JyLK2GrHmu54Mkmkc6sPXtggsPLcj3gKzDPn2XhSO19+f8djMdNkV7wYWF7lycy7QgPv0V3CyH3oHLKHanZukYEh2jHaInYW3yan474diGuYvMJmBxskQZCtkf6Ii86rxGUxV3wkkSwPLJZpz6DQZCYJNDmwhi7ICfa/F7f4vBswNB1DtafrhzwScJ7T/UTk9LuSLCs77p6WnF7KupBhImJ/vMMdCyf2uX22OLVSeASQscCOib3STVrtrUpAkWX6b3Sozb/JFNb4zkJbS+RdYKNWEPpKkx79Z4Ztqxvx1tbQJtknxdY7Tol16yHCkBgUn/gk/3/kvzeQH9q0XNdAzezOeI/PCe1IF4DnmMtbM2jTyDBuY8e1oB4RZC7AonnJlWFfbDDCraHzn3XPZc4zKOur8jm72Ql4Oc9gixXBAZrD/T+FnMY+y2f7gHM9WYUwfmsDJFcCfVPZ5SKRmOmYZxXH7+W9/sUV9dSZjTCoUAFfKa4NjFGxNjycf2D2cI9N/6a4KDdvjBep4uHWPn+UQFDn1IM99X4SKiFzqaTtWt9J3pr2GuP99RGX2veQpApD0joHuc/mTE0H6c+gBSXdpfBVsWFzZ6r0ruEtjtHGwaCtjgTW+PP7G3aCYr53ufAUi9w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50a8ee0d-6c32-4e1d-11e4-08d85979cd02
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2020 13:18:13.6895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BT6gl2CFtxpj963V+6h0DMKAfZSbjqRCqOd/2bPiDtB1XPCK+ylDD+MU8tLLhja5NevC8CCNq4RPVBpPHeqr3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3477
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

On Fri, Sept. 11, 2020, 2:21 p.m. Ville Syrj=E4l=E4 wrote:
>On Thu, Aug 27, 2020 at 01:51:29PM +0800, Lee Shawn C wrote:
>> Customer report random display flicker issue on Nightfury board.
>> And we found this problem might be caused by VT-d and FBC are both =

>> enabled. According to sighting report, it recommend to turn
>> drm/i915/fbc: disable FBC on Nightfury board
>> =

>> Customer report random display flicker issue on Nightfury board.
>> And we found this problem might be caused by VT-d and FBC are both =

>> enabled. According to sighting report, it recommend to turn FBC off to =

>> workaround this kind of issue.
>> =

>> This change refer to DMI BOARD_VENDOR and BOARD_NAME information to =

>> disable FBC.
>
>What is this "nightfury board" exactly?

It is chrome os project on CML platform. The board name is "nightfury".

>
>I think we're missing at least one fbc vs. vt-d w/a on some kbl/cfl/etc. e=
ra platforms:
>git://github.com/vsyrjala/linux.git  vtd_wa_1142
>
>> =

>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.c | 22 ++++++++++++++++++++++
>>  1 file changed, 22 insertions(+)
>> =

>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c =

>> b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index 327af428d73f..20660fdbab36 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -39,6 +39,7 @@
>>   */
>>  =

>>  #include <drm/drm_fourcc.h>
>> +#include <linux/dmi.h>
>>  =

>>  #include "i915_drv.h"
>>  #include "i915_trace.h"
>> @@ -1439,6 +1440,24 @@ static int intel_sanitize_fbc_option(struct drm_i=
915_private *dev_priv)
>>  	return 0;
>>  }
>>  =

>> +static int intel_fbc_vtd_callback(const struct dmi_system_id *id) {
>> +	DRM_DEBUG_KMS("Disabling FBC to prevent screen flicker on %s device\n"=
, id->ident);
>> +	return 1;
>> +}
>> +
>> +static const struct dmi_system_id intel_fbc_vtd_detect[] =3D {
>> +	{
>> +		.callback =3D intel_fbc_vtd_callback,
>> +		.ident =3D "Google Nightfury",
>> +		.matches =3D {
>> +			DMI_MATCH(DMI_BOARD_VENDOR, "Google"),
>> +			DMI_MATCH(DMI_BOARD_NAME, "Nightfury"),
>> +		},
>> +	},
>> +	{ }
>> +};
>> +
>>  static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)  {
>>  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */ @@ -1450,6 +1469,9 =

>> @@ static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
>>  		return true;
>>  	}
>>  =

>> +	if (dmi_check_system(intel_fbc_vtd_detect))
>> +		return true;
>> +
>>  	return false;
>>  }
>>  =

>> --
>> 2.17.1
>
>--
>Ville Syrj=E4l=E4
>Intel

Best regards,
Shawn
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

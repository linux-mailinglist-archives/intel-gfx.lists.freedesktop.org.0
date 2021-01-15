Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3964B2F7287
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 06:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87DA6E151;
	Fri, 15 Jan 2021 05:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DD946E151
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 05:46:08 +0000 (UTC)
IronPort-SDR: STz/G4Kt4xERjo6TjH+/34c8qBYZM1DXr+RPC8zxWDj914WNyMrOTRpnz+uvB0KZIEQcslyMjy
 p+/bMC111LUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="158277126"
X-IronPort-AV: E=Sophos;i="5.79,348,1602572400"; d="scan'208";a="158277126"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 21:46:06 -0800
IronPort-SDR: 9gSpmwNDVH37n7/3uJz/+CoZ9zSDy/a9aDp8m2qk36J/4VXw1rUjxxsddNt3lT+Hr9ZOUjVzsV
 TqSBFH7avJUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,348,1602572400"; d="scan'208";a="346117021"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 14 Jan 2021 21:46:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 Jan 2021 21:46:05 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 Jan 2021 21:46:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 14 Jan 2021 21:46:04 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.52) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 14 Jan 2021 21:46:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FrKecJnhsubLvxPY58A2pH6dX5jRBSwr+QHNY+8blFPxNBqBUt7WxRwrVkI6Ke2MigVa4zMjXp/bq+vPqa9Ius+PMkIpRAxIqaAgEtawhq6FPbOCFHftlr9L76FNvaNX7GQvev0b8tdIxhsqTS0FpC4jHF1yLp4pNgaQdJWl4vphMeXIvD1cLLrWqgRQ9eTjsdagNk5jPXfi7PiDBCR6N5NRFNKa7uAFlWYoJzmKWtzqmuKGQO1pOxCQ5oBdZZkXIX0raM/Hy2/xYPOX1vIYR/W8FdJsVbpi47Y6mJ0gpnus+I0HPqGSYawucJlyH9reIApdUStDcSyV0Ds1JyYoPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlu77iibjnvssTdBY1Zv2eVnx59n3ieHM3YeupWLL7M=;
 b=Udcw3+ezc2L6nNehfdzYZZfbsJ2xWnCSLpF1DdD1ueFMKzrmlEgVITLpnK0ltcYfA1LFs19V7G2xfAogv9ZaHDnSvV32SgugkmMxWXtR6EYKhjRSpMXW/pNTK+rWKNHQjkDhptDUKaiicSp2ygD7NSB9CoL8I0z3G+FBpu38erVOnHtUnvhKFq28/h437SsnRMfoouTEEGwok5VNX+kq7ZEL2DvBtjHVFRRLIq3JRUSJXO3zBDflw8KEEPpuTto98vJCaQGdXIPqvH++BTHH2C6pI5t+AnyP0PY9k1k8zQTLep0DJYxBdtdGZQSdK+B+elQBBjZSip3LRWlewezUBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlu77iibjnvssTdBY1Zv2eVnx59n3ieHM3YeupWLL7M=;
 b=E4+rpslPG5EMzrfVjB3BZFBrgQwsdmu0kykIbXtynMpOcnXkUdidkYCw5lcY0MwC/hF08RpwIXlQquK/+Twf2IVUyo2QarwWLO1l4alDUAEsqvDj83KK/B9C6b5/9mA5NrZSeF1tJSpDQVDTaLfMS5SCRC5PDeTAdW0cL53y/4A=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9; Fri, 15 Jan
 2021 05:46:00 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::48d7:81c7:7594:cc0f]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::48d7:81c7:7594:cc0f%3]) with mapi id 15.20.3742.013; Fri, 15 Jan 2021
 05:45:59 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: support two CSC module on gen11 and later
Thread-Index: AQHW6lYuRP0Me4Q9cEScqm7H3Dlte6onQAsAgADt1hA=
Date: Fri, 15 Jan 2021 05:45:59 +0000
Message-ID: <BY5PR11MB4307004C479931555C6E2B09A3A70@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20210114092236.20477-1-shawn.c.lee@intel.com>
 <YABj3sk5eF43yhwm@intel.com>
In-Reply-To: <YABj3sk5eF43yhwm@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [1.169.150.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3f168e9-617d-4319-2cd9-08d8b918d65c
x-ms-traffictypediagnostic: SJ0PR11MB5165:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5165E11B32CB7CACAB94B0A6A3A70@SJ0PR11MB5165.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HhaCHaoAEb0cOA2yv1LhJqPntjtPEkBRcPX9Xc1WCFmBPmE2dHK3cM1g0MRNahwBWFMy+/hgb5ie3nXY8A7XzXirU4RBYLHksJ88VSF1HwdrKIWnrJ9PHRCcTxBfXs2pJ9JFDLK1ApcBI1Y+WAqOIlPRgPngGj9+UdZZ8ezZubTQsTLxYhZFU2wG+z8dIEpEywi89nX1xciTuuNTwI9ihbHDMKa8kJmbjhEscnt2JlMpVWZ+0Ar6DHF3AzLal62+zFBLgA9wrgWtpJDVyT5eNiFnLBHE8GJmcJWExVGXjeprB/A27OES0KBrGCp6KBR9UKYHPcedZIANq46Wl8i+AWqLE5HwAbsJsNkvf6l7M/jgSowDwEG02lZTWQaEMH75T+El0B0vAAYb0As+GAF1Dg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(346002)(136003)(366004)(376002)(478600001)(5660300002)(8936002)(26005)(55016002)(66574015)(66556008)(9686003)(8676002)(8796002)(86362001)(76116006)(7696005)(54906003)(53546011)(66476007)(52536014)(6506007)(71200400001)(186003)(33656002)(66946007)(316002)(64756008)(110136005)(2906002)(4326008)(66446008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?J6RrzTFRCXAMN1i5nT/2HX59YoqEiwoIfL6L5Io4rV4QNAmIt/UeJBmprG?=
 =?iso-8859-1?Q?Q6v5TWK+B4WEMzDicdVi+OjwOSmC376ILArBBmp7cjOXQQ9IydY1IbxDjD?=
 =?iso-8859-1?Q?4vyeuYs/EXCZzP7S0zEqZVvuhDMsmOy01Ra6/1zBmzBx4/tSyM68SeTEK1?=
 =?iso-8859-1?Q?ZD0twUYUt+fIbqOPkcI9JaGruANUMIMr85xZqzXl5FXHdTbhE7NIyxwxqf?=
 =?iso-8859-1?Q?3wz4v5h9H61peet+MfZMdF8WRm+H8es9CmQ9PxaMmownO9v2s/u3Qcc+fA?=
 =?iso-8859-1?Q?7mIDHTfHWcfJTtbYz1QVhU5tuNfmv4hmBkGiyQyiYmjRQwVYqWyS79/MS0?=
 =?iso-8859-1?Q?mBjb/hXw4nUxVfgUYM79azhe5VEZkbosxHHxrdVfI5zpocWO7EAzPlvaty?=
 =?iso-8859-1?Q?ZzcIW54z9/EkNRlLk6ChWfcUEe//vGDL025XivyUPS7fkLjRskAOokJR+r?=
 =?iso-8859-1?Q?aju5RdjY45eyLnGAGrXDFp+coKvVamRlmjbPRPRcqeGANM078r2OEbC9Fo?=
 =?iso-8859-1?Q?JNHVOTMxPygpMIB5HFbsv3dNvbhOEDq0APjAjYMi2TEFO63KGQWnAoRKau?=
 =?iso-8859-1?Q?mu+ud7c1ZG64Zqx0jO0qK/2hDSbNsLe4LVzDHXJvYc4QrtvCuMSQpaH0ZK?=
 =?iso-8859-1?Q?iL5Y7lAPQrTEL6MVpSDP370POBSnTPI6X0re7tGXfQzTD76oAV8H9EZG+L?=
 =?iso-8859-1?Q?teIRSxp2Mt/wXOfvjPj73HhxR8QZ3Xq2kmnhHw40jgJmQqVokfg2U61f2m?=
 =?iso-8859-1?Q?vZ7/4rFIE9fFbCcc8TgwUcQjmNTP1fIZ5aZWY9lHrMW3lrX7afpVb/G8kf?=
 =?iso-8859-1?Q?jNW3OVeuNJo1Z8ujDG0UZK+UCtgPLVxf9ey4V/grVT/qv27vk402oRXzk3?=
 =?iso-8859-1?Q?RX4kz5f/nPfrzM60B4gtfyQNLK4pVf6BXnZOAxToAd511Lrpyv/o+XKWk/?=
 =?iso-8859-1?Q?Wo1RZjApuRsg2oTPiZsSSuuvlTu12s9qyqjfpWROa4Ibwq19YxTvLnmsJi?=
 =?iso-8859-1?Q?/PRnAZ85SY8oZ2tL4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3f168e9-617d-4319-2cd9-08d8b918d65c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2021 05:45:59.8204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i1aF4jj0iDIMaFD5j6/oHCVuchpyJ07Uj3sGa//c0gkIChAErn6n4zj8VH1EShnUkm4IzvETJXPvuxPzEctTUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: support two CSC module on gen11
 and later
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
Reply-To: "20210114092236.20477-1-shawn.c.lee@intel.com"
 <20210114092236.20477-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thursday, January 14, 2021 11:32 PM, Ville Syrj=E4l=E4 wrote:
>On Thu, Jan 14, 2021 at 05:22:36PM +0800, Lee Shawn C wrote:
>> There are two CSC on pipeline on gen11 and later platform.
>> User space application is allowed to enable CTM and RGB to YCbCr =

>> coversion at the same time now.
>> =

>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> =

>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>> =

>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c =

>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 1a0f00f37ca9..721d5ce1ed2b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -8303,7 +8303,8 @@ static int intel_crtc_compute_config(struct intel_=
crtc *crtc,
>>  		return -EINVAL;
>>  	}
>>  =

>> -	if ((pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 ||
>> +	if ((INTEL_GEN(dev_priv) < 11) &&
>> +	    (pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>  	     pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR444) &&
>>  	     pipe_config->hw.ctm) {
>
>Didn't realize we had this check here. It should really be moved into {ivb=
,glk}_color_check().

Thanks for comments! I will move it to {ivb,glk}_color_check() and submit p=
atch v2.

Best regards,
Shawn

>
>--
>Ville Syrj=E4l=E4
>Intel
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

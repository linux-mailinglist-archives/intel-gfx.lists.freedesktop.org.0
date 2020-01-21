Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 318E91439E9
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 10:54:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B196EC24;
	Tue, 21 Jan 2020 09:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E75426EC24
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 09:54:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 01:54:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,345,1574150400"; d="scan'208";a="426999522"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jan 2020 01:54:41 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Jan 2020 01:54:41 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 01:54:41 -0800
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 21 Jan 2020 01:54:41 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 21 Jan 2020 01:54:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MwG4TZxH1+zB5A9K9UHpRtFZ/pQUjQOq22So8sTIH7fT4+eeah5fUczwZEh7jcgQlUMdM/mE0U/zwuXiR4nCzfyG+tcYzo7s4nT9prpB9PYm4oA31h7tA6W7ZNwr4HdB5y54HjBgdTxbHIQmYpHROpNLEAiIip0j/w6zZuwtczWVw93XtXbAIffCGVmq/xR6Ev483Cq7yNbDVatm8iQZ29l7WB7gtBe5yGOkFoJi2RnfLW7QsQy53HUjHPzz+3CYI5HcF2BbLGDZ0gfBsw+VLoz1KJHjVF1b9eSQXCsVkEBaT8K0GJF+Q69RUodyfD/q/CZGEi6I1bLsdvRDnRGJig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UENTUNPcuhWZJngn35Ruy1YlgXpLApYTXykaTlTfUI=;
 b=Q67Kd/4PNGg/RWyckFd0o+6/cvtN4eQDFdyuq+lx6NbpofPGNSP50eTH8gpmbxfHJjDtLSI3bQi7a8HQ8WlMJQpDUyvKW/bjkKHpf69oxUUMbxfy1Obt++WcD10kA4omV4TIeXNgHw/64uczbjcCufiJMLCSZXqomAnchLNvFx67FjL5Wk2XFmiumG25gno/ZJF8KkWCvkZy0dCLtdjbWq2K3E68+xoEFroncTsUMoqdEfa0X/Iu3zQJICYDgHBlvIqmNr83dTv/pbUrnKJQDHMuXdMIakH2lYy8da8E+IpKrM+fqKOB6G7wCLDXwFXVKfMDZgv4gl9897L6+i0Sww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UENTUNPcuhWZJngn35Ruy1YlgXpLApYTXykaTlTfUI=;
 b=rmqR1uBj6NZuqwJf2lQ1Tw3TmxpgNeuiEHvFw3vg/80NNobXl49loswvJlIhAEd+SD4x1AfzF571l79i+DexUjLW3nv0EQUhwR5sFy69nqIR3JNcL1BCu2w2EXwD6LWXnNkS8i4tuaNtm/9oHpeHBs2JVr0+m1MxIw8QxYJ8kfs=
Received: from DM6PR11MB3211.namprd11.prod.outlook.com (20.176.120.27) by
 DM6PR11MB3083.namprd11.prod.outlook.com (20.177.217.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.24; Tue, 21 Jan 2020 09:54:39 +0000
Received: from DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::71c5:efdc:c87a:456c]) by DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::71c5:efdc:c87a:456c%3]) with mapi id 15.20.2644.027; Tue, 21 Jan 2020
 09:54:39 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dp: set fail-safe mode if EDID corrupt
Thread-Index: AQHV0BdoUxqYAJSkVU6pzJbZzoScW6f0zfAAgAAOpQA=
Date: Tue, 21 Jan 2020 09:54:38 +0000
Message-ID: <DM6PR11MB3211C47054844945F62A2960A30D0@DM6PR11MB3211.namprd11.prod.outlook.com>
References: <20200121125613.21138-1-shawn.c.lee@intel.com>
 <87iml5fbat.fsf@intel.com>
In-Reply-To: <87iml5fbat.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=shawn.c.lee@intel.com; 
x-originating-ip: [192.55.52.196]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a0c7d44-e2c7-4b8b-884b-08d79e57ee2f
x-ms-traffictypediagnostic: DM6PR11MB3083:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB30830534BE05973E39BB30A7A30D0@DM6PR11MB3083.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(136003)(376002)(396003)(366004)(346002)(189003)(199004)(2906002)(6916009)(54906003)(9686003)(55016002)(478600001)(5660300002)(52536014)(7696005)(316002)(186003)(66446008)(66574012)(66556008)(76116006)(66946007)(86362001)(66476007)(4326008)(8796002)(6506007)(71200400001)(26005)(33656002)(8676002)(81166006)(8936002)(81156014)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR11MB3083;
 H:DM6PR11MB3211.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6WjMWMLR+48euz5FfWRQjJx1pdpP13/OPbJmxepzlXU43D0wWIwnZzkpTSNhRXJXRgdVE6nJDtMikIGOTe+khsKHj2F6OEOJCu6sXn5YwQkVbImZ77HB1hrYrh+M0odW+ctTCw/2j4T0+R4C0QwxsXmoY6/qiiP2YqIq5JJpukODVr8fFU6/qSOD1acSzVt3ei9m1o8cjG6D2mzGpXtMskMVmfmfp6hgwds+vdSkAP29piTi5fngRwKDaqmswNbgfqonGsJx89qHkCqAvNECmiC7yCZUxy4siNAOKLoLeIphJ7KVUkc6361b6RgtHNSF5KxL/oD4AIJ9Men/luu4IxANoAx1utQ19PKDOmDVn4uoHsgZ4wMJZ0EC5D9bwDh2MHj7ZoznnmCrVBsw/6lT6oACNwN6qb1L491W3f9cXloL10Eg6RRGSG6dxt/rUDZP
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a0c7d44-e2c7-4b8b-884b-08d79e57ee2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 09:54:38.9731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: boSbGY3N1kPMvjH07/KCwlEtXOzVaHwrUCpDyoFuovGBRwJegDeh/GbYXBZieZFaZc3vkPYWSkkuom6O4knMmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3083
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: set fail-safe mode if EDID
 corrupt
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
Reply-To: "20200121125613.21138-1-shawn.c.lee@intel.com"
 <20200121125613.21138-1-shawn.c.lee@intel.com>
Cc: "Chiou,
 Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Tue, 21 Jan 2020, Jani Nikula wrote:
>On Tue, 21 Jan 2020, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> According to chapter 5.1.1.2 in DP spec. When the Sink device =

>> capability is unknown, for example due to corruption of an EDID. The =

>> Source device may fall back to a set of fall-back video timing formats =

>> its choice. When none of the fall-back video timing formats is =

>> acceptable, the Source device must fall back to the fail safe mode, =

>> which is 640 x 480 at 60Hz.
>>
>> This change set source driver output fail-safe mode automatically if =

>> EDID corrupt. It may also benefit link layer compliance test case =

>> "4.2.2.6  EDID Corruption Detection".
>
>Are you fixing a real user visible bug here, trying to pass compliance tes=
ts, or just trying harder to comply with the spec?
>
>I am wondering under what circumstances we could actually display a
>640x480 image when everything else fails.
>
>BR,
>Jani.
>

Yes! We try to run link layer compliance with UCD-400. 3rd party
lab used UCD-400 to run DP 1.4 link layer compliance instead of
DPR-120. Its behavior is a little differnt to DPR-120 for test
case 4.2.2.6. DPR-120 would assert HPD. Sent test request to source.
Then source driver got corrupt EDID from DPR-120.

But UCD-400 will not. It just assert HPD to source. Then driver
got corrupt EDID but without test request coming. So this change
can handle this case because of igt tool (intel_dp_compliance)
would not get test request and set resolution to 640*480 to pass
this case.

Best regards,
Shawn

>>
>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>>  1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c =

>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index c27d3e7ac219..7e072db4a530 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5659,9 +5659,18 @@ intel_dp_get_edid(struct intel_dp *intel_dp)
>>  			return NULL;
>>  =

>>  		return drm_edid_duplicate(intel_connector->edid);
>> -	} else
>> -		return drm_get_edid(&intel_connector->base,
>> +	} else {
>> +		struct edid *edid;
>> +
>> +		edid =3D drm_get_edid(&intel_connector->base,
>>  				    &intel_dp->aux.ddc);
>> +
>> +		if (intel_connector->base.edid_corrupt || !edid)
>> +			if (drm_add_modes_noedid(&intel_connector->base, 640, 480))
>> +				drm_set_preferred_mode(&intel_connector->base, 640, 480);
>> +
>> +		return edid;
>> +	}
>>  }
>>  =

>>  static void
>
>--
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

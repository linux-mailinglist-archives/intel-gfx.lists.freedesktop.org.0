Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0F2140EAE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 17:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781B76F61E;
	Fri, 17 Jan 2020 16:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1267A6F61E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 16:08:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 08:08:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="220765129"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jan 2020 08:08:07 -0800
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Jan 2020 08:08:07 -0800
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX112.amr.corp.intel.com (10.18.116.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Jan 2020 08:08:06 -0800
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.54) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 17 Jan 2020 08:08:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F9j7xuJz5tC2nveMRIvAOBnnYG3tkrVRmtUWr0zw5n1II1GRen4aBMbClRSWO6nhZKnOs1rqBE/64xNsAp6wZGsE3DmLDncqGwpGQkm8c1msMXg3ttkJlEyMPicM1eXwHbay3UAWMfGIohmAvr82Y9biiz2ojCjRKQZlMufFruMh/ZUvvR29uW7Fa/gupCEdqPk2qCeN2g/CoE1/4oc1C0bzow7a4CuESCjIWqK8PeQJEE2b2bTgM5AJ3RBskuG1gexP5FUivIYG0GP1ae26smTlKQbNBAyre/OFzoYhTK1Jc4A0gRz2k7+kbTaWbPKUjAjdRHF2RPKfn/WnSFqCQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QSUytVvX9Qxm/ap1zuq9ayrWaaz4qT1i+lEi2H6CQ5k=;
 b=BYxQM9xTEMib49FegHQeUAKui9i58s6x9CSqhLijEaHuW1qtbzzH/QiZfiSesbXCKOT6I1HKpO6br2xxuxK/3epZQP/hV1Xe7sD7Wr8CJG6f8KzR8repF/JF3KiZ/P1jcm7TkKOGy/qfjehP6cOK/9nCXNHo6+iLmsXAeUOwmtNsMvfqINSPnzgvxOz6ESEyktBOVvlcelvx7+nC3n7tRa47emGLAgKHqe4BFatB2ZSzAl0x5hFcPG7GDOcyMSMHXtir3oGlufEfX0lk64BUjCW667/4s3O0Wrut+CoTbbMoUWWZG84500V0sqzZ5j4T08JQSXTBUrBXXSMeHRoVsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QSUytVvX9Qxm/ap1zuq9ayrWaaz4qT1i+lEi2H6CQ5k=;
 b=d/QD2qooFuG9uJsjpprAStHt1yViE98nsWHYAT59wnK0+dPfeVZazzBcnihsFEDdfpNpxai/3gdc4PsCPYLegwl6HjZYEI/7VIyU6Qzz5AK0k+9B0p0q/UtjX3mFM+XGLfJMQPIGouJJIaEkgmFP1IcpsMh6XHDemq7DxI66RyI=
Received: from DM6PR11MB3211.namprd11.prod.outlook.com (20.176.120.27) by
 DM6SPR01MB0081.namprd11.prod.outlook.com (10.255.172.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.21; Fri, 17 Jan 2020 16:08:05 +0000
Received: from DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::71c5:efdc:c87a:456c]) by DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::71c5:efdc:c87a:456c%3]) with mapi id 15.20.2644.023; Fri, 17 Jan 2020
 16:08:05 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Check require bandwidth did not exceed LSPCON
 limitation
Thread-Index: AQHVzPnpKXaRvBwcnUOU7j1VYMFME6fu5AsAgAAcjFA=
Date: Fri, 17 Jan 2020 16:08:05 +0000
Message-ID: <DM6PR11MB3211728E2D25C69957623F04A3310@DM6PR11MB3211.namprd11.prod.outlook.com>
References: <20200117134717.2703-1-shawn.c.lee@intel.com>
 <20200117140414.GL13686@intel.com>
In-Reply-To: <20200117140414.GL13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=shawn.c.lee@intel.com; 
x-originating-ip: [59.115.243.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74e7a964-e241-4b0a-59d1-08d79b676fc9
x-ms-traffictypediagnostic: DM6SPR01MB0081:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6SPR01MB00813F89B2E0428FA3C8F998A3310@DM6SPR01MB0081.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(39860400002)(366004)(376002)(136003)(199004)(189003)(8936002)(8796002)(86362001)(7696005)(478600001)(33656002)(6916009)(26005)(186003)(6506007)(71200400001)(4326008)(8676002)(55016002)(316002)(81166006)(54906003)(2906002)(81156014)(76116006)(966005)(52536014)(66446008)(5660300002)(66476007)(64756008)(66556008)(66946007)(9686003)(66574012);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6SPR01MB0081;
 H:DM6PR11MB3211.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sz/CfDapJIbZYQZLBPw9YhrWfRRbneOJlNoBCDz05aGAFhmjW3lxacOIQiYNBn2bIhXRs+0ZXQ9hf7l/zWJJjx6kVRFSnbkGCrwS2SvhZJHz4cSBgVac8vvXM7mtn83lfdA+28jhvCLBR99/j6Ly5Pmg1reOb7loszl9DUTuYcuAj1FcGm/up9nBXb00nqHQUaTa1LPvBZ0+8CWAy+1Naoti/AyNhNCJSL3AVv2uuQgFqHQZFjc+F3EdEVvynp2x/+UnT+7Bl55Hv+Zy2lipKK0Y3WP3ANhwr5iqDKjsh5pVdd/v7Mtq5th7izIFAiTdHKd9ECr2bLuP2l2ON0HQcZLngk0vVs6qXvq8kUn5nUlPOeD0H41kn6HdlrkdnhPLW7/5TviQB1hIPJ/KaflZ8rJ7kOVV1oirRPO9eyXfHo2BZ0o0ZKcceSZecqXgrOsF1MxfxiEdWqoib3SjvHcG7B+qLqj2fYRhi10PZAkoV44=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 74e7a964-e241-4b0a-59d1-08d79b676fc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 16:08:05.3669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +p78BaLrsnHn1JVyTXrZJTLpbcx0FwdfeTN6LAlOwcV5nnmy3S750b+PGJc8RVkpkGxo8PMU1lDS83LSwcekIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6SPR01MB0081
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check require bandwidth did not
 exceed LSPCON limitation
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
Reply-To: "20200117134717.2703-1-shawn.c.lee@intel.com"
 <20200117134717.2703-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, Sam McNally <sammc@google.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Fri, Jan 17, 2020, Ville Syrj=E4l=E4 wrote:
>On Fri, Jan 17, 2020 at 09:47:17PM +0800, Lee Shawn C wrote:
>> While mode setting, driver would calculate mode rate based on =

>> resolution and bpp. And choose the best bpp that did not exceed DP =

>> bandwidtd.
>> =

>> But LSPCON had more restriction due to it convert DP to HDMI.
>> Driver should respect HDMI's bandwidth limitation if LSPCON was =

>> active. This change would ignore the bpp when its required output =

>> bandwidth already over HDMI 2.0 or 1.4 spec.
>> =

>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: Sam McNally <sammc@google.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c     | 45 +++++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_lspcon.c |  5 +++  =

>> drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
>>  3 files changed, 51 insertions(+)
>> =

>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c =

>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index c7424e2a04a3..c27d3e7ac219 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1976,6 +1976,47 @@ static int intel_dp_output_bpp(const struct intel=
_crtc_state *crtc_state, int bp
>>  	return bpp;
>>  }
>>  =

>> +static bool
>> +intel_dp_lspcon_exceed_bandwidth_limitation(struct intel_dp *intel_dp,
>> +					    struct intel_crtc_state *pipe_config,
>> +					    int bpp)
>> +{
>> +	struct intel_lspcon *lspcon =3D dp_to_lspcon(intel_dp);
>> +	struct intel_connector *connector =3D intel_dp->attached_connector;
>> +	const struct drm_display_info *info =3D &connector->base.display_info;
>> +	enum drm_lspcon_mode lspcon_current_mode =3D lspcon_get_mode(lspcon);
>> +	const int pcon_mode_max_tmds_clock =3D 600000;
>> +	const int ls_mode_max_tmds_clock   =3D 340000;
>> +	int mode_rate, max_tmds_clock =3D pcon_mode_max_tmds_clock;
>> +
>> +	if (lspcon->active) {
>> +		switch (bpp) {
>> +		case 36:
>> +			mode_rate =3D pipe_config->hw.adjusted_mode.crtc_clock * 3 / 2;
>> +			break;
>> +		case 30:
>> +			mode_rate =3D pipe_config->hw.adjusted_mode.crtc_clock * 5 / 4;
>> +			break;
>> +		case 24:
>> +		default:
>> +			mode_rate =3D pipe_config->hw.adjusted_mode.crtc_clock;
>> +			break;
>> +		}
>> +
>> +		if (lspcon_current_mode =3D=3D DRM_LSPCON_MODE_LS)
>> +			max_tmds_clock =3D ls_mode_max_tmds_clock;
>> +
>> +		if (info->max_tmds_clock)
>> +			max_tmds_clock =3D min(max_tmds_clock,
>> +					     info->max_tmds_clock);
>> +
>> +		if (mode_rate > max_tmds_clock)
>> +			return true;
>> +	}
>> +
>> +	return false;
>> +}
>
>That's rather ad-hoc. I've been cooking a much more generic solution to de=
al with all kinds of DP DFPs. It should handle the TMDS limits for HDMI/DVI=
 DFPs (and on board LSPCON too IIRC), as well as hooking up YUV 444->420 co=
nversion if supported by the dongle (though those old on board LSPCON chips=
 do that differently so shouldn't affect them).
>
>Rebased version available here:
>git://github.com/vsyrjala/linux.git dp_downstream_ports_4
>
>One caveat is that I've not re-tested it in maybe half a year, so not enti=
rely sure it still works 100%.
>
>--

Thanks for comments. Below change just like what this patch did but it's mo=
re complicated.
https://github.com/vsyrjala/linux/commit/45779beb3ebbe6d4d36b8ff1de97f45076=
fc8d90

Here we got an issue to connect HDMI 2.0 external monitor with 12 bpc capab=
ility.
Connect to a HDMI port with LSPCON, driver would output 36 bpp because of b=
andwidth did not exceed DP's.
We can resolve the problem by this patch. Do you think maybe we should go t=
hrough yours? =

Could you share any other idea how we solve issue like this?

Best regards,
Shawn

>Ville Syrj=E4l=E4
>Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

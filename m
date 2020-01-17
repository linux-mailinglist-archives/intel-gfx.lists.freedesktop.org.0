Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C9B140462
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 08:15:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323E36F3E2;
	Fri, 17 Jan 2020 07:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5D176F3E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 07:15:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 23:15:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,329,1574150400"; d="scan'208";a="398549284"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga005.jf.intel.com with ESMTP; 16 Jan 2020 23:15:38 -0800
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jan 2020 23:15:38 -0800
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jan 2020 23:15:38 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 16 Jan 2020 23:15:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LaNMoDQpqR0UO2HLYeZWfWuKnFxgGOKqOkoCrF7h/+jW2YFwkeXRzR48rPSTUaN1RFOoimlJMOziUfkFVo48NxJZE4o8DOlaETSNfcPL5C/AbZiR/YHrIc0mWdzUx6rwMI7pzJ2MS6VMelQYp0kuYsdh5h1k5DlW/v24wpdBRmUmD/uOws4PKyz5Ndsvk9lZhk8nB8HcY/G/tBNdSCDHFiOxoK7sZjjrZSJmwJEriRPg9boDohz/AuRt9z7iqkcWrZ2fJJamTeSpxe9FVC+qzobp0HuoZ3wmjW4/MNx+R9BXsxPmw/MQiUuZSecvJoT5zAdiQS1S7URZo9W6o26a6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WCM1Abqvts2gbxfoqp9olQBHQdos5KCV5onuVMQmG/c=;
 b=mS4OA4fOit5s4Kt2ZNkjkMtOjQh3m6AjNMP3qB/LEXecpYohBk6chFGufg3q5NGZwlXGB240FOS2BiJrkS9yMK+Yn6O+244g9zb7M0mWeJ9krt4/ZnmzwGNX4LwP0CuWqQe8KJTEJFP4ZlCZ3rHG17ggIM9BZQPw/joSBj/rS4pmuCmqeTbXG7UGE0pKuRRva/dqTYwSUSS60w3NW73IDwBT4Nw1Ct/CON6K6PzqcAqoOKz2KpMac2eHcH10fohP7CfPV52cRgVIVOPYSwGmu4J55fGGaaKsMlvLKsxtDqR2SsekkkK3JuINLsfwZPy4vvsqRiYUOen/dXHYtO+Dzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WCM1Abqvts2gbxfoqp9olQBHQdos5KCV5onuVMQmG/c=;
 b=LXVbJ3huXrie2+a+RBjM0+jqdpoF4Mu9NMvxNU8x52A3WVKocPXDCWk5XI84S+84+GMy9Dvk41ww5jkxpuk1VsQzYdfjjzhZxeUcowawJFvzy27xtfqS/5SZYMB54Yr3rgrskRVaRCjtC0NWDOzOKSFNr0pTyX7cvx5ID6D3xZQ=
Received: from DM6PR11MB3211.namprd11.prod.outlook.com (20.176.120.27) by
 DM6PR11MB3659.namprd11.prod.outlook.com (20.178.231.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.8; Fri, 17 Jan 2020 07:15:35 +0000
Received: from DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::71c5:efdc:c87a:456c]) by DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::71c5:efdc:c87a:456c%3]) with mapi id 15.20.2644.015; Fri, 17 Jan 2020
 07:15:35 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Check require bandwidth did not exceed LSPCON
 limitation
Thread-Index: AQHVzPnpKXaRvBwcnUOU7j1VYMFME6fubHyAgAAEpvA=
Date: Fri, 17 Jan 2020 07:15:35 +0000
Message-ID: <DM6PR11MB3211770FC150BDE9DC5881C2A3310@DM6PR11MB3211.namprd11.prod.outlook.com>
References: <20200117134717.2703-1-shawn.c.lee@intel.com>
 <874kwuk1v0.fsf@intel.com>
In-Reply-To: <874kwuk1v0.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=shawn.c.lee@intel.com; 
x-originating-ip: [192.55.52.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a74970a2-a78b-4f0e-5b95-08d79b1d0bfa
x-ms-traffictypediagnostic: DM6PR11MB3659:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3659E064AD6B701EC184FC03A3310@DM6PR11MB3659.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(39860400002)(376002)(366004)(396003)(189003)(199004)(8796002)(7696005)(81166006)(71200400001)(8936002)(316002)(86362001)(81156014)(5660300002)(6506007)(52536014)(9686003)(4326008)(66574012)(6916009)(8676002)(55016002)(76116006)(478600001)(33656002)(26005)(54906003)(66946007)(186003)(66556008)(64756008)(66446008)(66476007)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR11MB3659;
 H:DM6PR11MB3211.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ws4gLV4CJ59Gpxjoi5lbvFfur3ZUxtQ1gAJ0GCYyQx4xeAzxl+PnTApEV9/LdyzPKyq+4dnOL6OfqKvE7bnl0gzCuh7XP1+mEj7piYTkozgWs9XkqGcK4z8Yte68CBiePcfVTRh+wLR6M5o1cC6BrYAd4TENs+ahTZJyPN5N3UpnqBABdYAmZwaurAWKSwbDVxUoYIhCfNsmWvNf4WUkLkQbOe8JBb+OOFB5BniD6aPkFTgs2CF2TBvzK57JPu95YeaVpdluaxAauh8qRj8LkGr3w5zvEBMiI6JiyfbH3rZDJlIgubfTwUqLFNj1fJM5PvQFkTUXkgPPJnQ6X5eN8xuWhAASV3RrMc5EQTs/kbV2div3ZowxzgCq0klC/aW7kLwPam3RS8AWr9FJitd5CbR8duy+H8Bgd4Jr/vnAIS7PKecySRrA4a24uw/r865C
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a74970a2-a78b-4f0e-5b95-08d79b1d0bfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 07:15:35.2978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z1Phgi9ADhOD9VhEX/vmRfPB/eq78z1EaTZMxMEw67tOPOqVHlprrEEAtCHqknqfVMtMk3Td8mMP6dxOhAlKJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3659
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


On Fri, 17 Jan 2020, Jani Nikula wrote:
>On Fri, 17 Jan 2020, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> While mode setting, driver would calculate mode rate based on =

>> resolution and bpp. And choose the best bpp that did not exceed DP =

>> bandwidtd.
>>
>> But LSPCON had more restriction due to it convert DP to HDMI.
>> Driver should respect HDMI's bandwidth limitation if LSPCON was =

>> active. This change would ignore the bpp when its required output =

>> bandwidth already over HDMI 2.0 or 1.4 spec.
>>
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
>>
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
>> +
>
>Instead of this, please add a simple intel_lspcon.c function:
>
>	int lspcon_max_rate(struct intel_lspcon *lspcon);
>
>that returns the max rate. Everything else can then be done in intel_dp.c =
around this. The function gets simplified enough that you can throw out the=
 const ints and use the values directly.
>

Thanks for comment! I will rename and move it to intel_lspcon.c.

>>  /* Optimize link config in order: max bpp, min clock, min lanes */  =

>> static int  intel_dp_compute_link_config_wide(struct intel_dp =

>> *intel_dp, @@ -1989,6 +2030,10 @@ =

>> intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>  	for (bpp =3D limits->max_bpp; bpp >=3D limits->min_bpp; bpp -=3D 2 * 3=
) {
>>  		int output_bpp =3D intel_dp_output_bpp(pipe_config, bpp);
>>  =

>> +		/* Bypass th bpp if require bandwidth over HDMI spec when LSPCON acti=
ve */
>> +		if (intel_dp_lspcon_exceed_bandwidth_limitation(intel_dp, pipe_config=
, output_bpp))
>> +			continue;
>> +
>
>The placing sticks out like a sore thumb. I think we need to filter out th=
e modes already in intel_dp_mode_valid(). =

>This isn't all that different from intel_dp_downstream_max_dotclock() is i=
t?

Yes, what you said is right. intel_dp_mode_valid() did all the thing based =
on source DP output capability.
And intel_dp_downstream_max_dotclock() report LSPCON's DP RX bandwidth.
We have to consider LSPCON's HDMI TX limitation as well to avoid display ou=
tput data over HDMI's spec.

>
>>  		mode_rate =3D intel_dp_link_required(adjusted_mode->crtc_clock,
>>  						   output_bpp);
>
>But I guess since the mode valid limit is for 8 bpc, you'll also need a ch=
eck here? Maybe Ville has better ideas.
>
>Here it would be something like:
>
>	if (lspcon->active && mode_rate > lspcon_max_rate(lscon))
>        	continue;

Let's wait for more comments from Ville.
I will follow the suggestion to update v2 patch later. =


Best regards,
Shawn

>
>BR,
>Jani.
>
>>  =

>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c =

>> b/drivers/gpu/drm/i915/display/intel_lspcon.c
>> index d807c5648c87..6952c5028fdf 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
>> @@ -550,6 +550,11 @@ void lspcon_wait_pcon_mode(struct intel_lspcon *lsp=
con)
>>  	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);  }
>>  =

>> +int lspcon_get_mode(struct intel_lspcon *lspcon) {
>> +	return lspcon_get_current_mode(lspcon); }
>> +
>>  bool lspcon_init(struct intel_digital_port *intel_dig_port)  {
>>  	struct intel_dp *dp =3D &intel_dig_port->dp; diff --git =

>> a/drivers/gpu/drm/i915/display/intel_lspcon.h =

>> b/drivers/gpu/drm/i915/display/intel_lspcon.h
>> index 37cfddf8a9c5..5ce9daef9708 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
>> @@ -18,6 +18,7 @@ struct intel_lspcon;  bool lspcon_init(struct =

>> intel_digital_port *intel_dig_port);  void lspcon_resume(struct =

>> intel_lspcon *lspcon);  void lspcon_wait_pcon_mode(struct intel_lspcon =

>> *lspcon);
>> +int lspcon_get_mode(struct intel_lspcon *lspcon);
>>  void lspcon_write_infoframe(struct intel_encoder *encoder,
>>  			    const struct intel_crtc_state *crtc_state,
>>  			    unsigned int type,
>
>--
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

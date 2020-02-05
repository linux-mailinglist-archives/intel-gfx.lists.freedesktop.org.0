Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DACE6152853
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 10:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E3146F4EA;
	Wed,  5 Feb 2020 09:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32F846F4EE
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 09:29:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 01:29:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="264158895"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga002.fm.intel.com with ESMTP; 05 Feb 2020 01:29:28 -0800
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 5 Feb 2020 01:29:28 -0800
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 5 Feb 2020 01:29:28 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 5 Feb 2020 01:29:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X7jk0Z6BFTN8mF3LPr/85sWQZ7eEoIQdhMK+Z2AgHVs6RAV4cgBOH5usUDXhbF3Mw7x1i/lUBMsK/3UMs/gTm0ECACNP9BfQ1JbA7OKotO6vKNLy3j78KGH0+L8+HIfsV7YgLUL0QAyLMMqvkUyq/QXq4kooq10VM53oJWEhSFSzSkYmdU8m+hF2psw9Ia1B6ungJzdUc2KtZofQihQq4IywHoDAVvko45Z7D0GA23LsbcQw8ArBoALU9OSwBqgEQQDbl+BIet+tJQonbUD2dPqLf7UTKDu+edAo8I8lGntdvTFAvgxNgUgxgNYFbB2gPh5VNN2S7reAQXCai3p42g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wxNKQAgXmmf275Ks0CNfNn5hiMO7vxZ5iKgUxqkJBEE=;
 b=DwfFXV0vnNc47RyIS2l8B3b5n+G5p3ybC57rf2FDGmYjmAGzMSu3gZhTUE11hgDei0ZU7MISzdsuaHq5zuqQ3O19CQ23a46HX/qq/81sTQJ61OzUwJ6u+3I0NNsIg8a+Vp1viud5DSe5xkQClhVQlhaYzsvxaDbthvLHt8xXhOhR5WBYtri0m7XdlML/blLrcoDhOSRpxQQZVfWP0xvVtwjucOYSix8dI3BOtj5OgrWuNe/9MH3YiRI6YpIFzjHnZi1yS0eS9mBAhcj7/mT4Br1zgjZkcTuTKbxjemJZ5Wo3kxJzIfaXREhty6+7GNZfB/EbTdjbB3tLDpScmm9fmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wxNKQAgXmmf275Ks0CNfNn5hiMO7vxZ5iKgUxqkJBEE=;
 b=FMnzIe+YHYMg8N5eqa7VEUHMbGWaq0G/rr8XwWMVJoqh03lAcLiNw3cBkNtU5p7dPg2U0d2nU3CH+o/iEOXU9CA1jJb0p5pV/jbM6cydJg54owpR3kGgXYZ6QqehxGHFEaOFS5lWZQ391eoGRMz73h9Ie4cZFMH2BiRqrbjEgLU=
Received: from DM6PR11MB3211.namprd11.prod.outlook.com (20.176.120.27) by
 DM6PR11MB3804.namprd11.prod.outlook.com (20.178.231.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Wed, 5 Feb 2020 09:29:01 +0000
Received: from DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::71c5:efdc:c87a:456c]) by DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::71c5:efdc:c87a:456c%3]) with mapi id 15.20.2686.035; Wed, 5 Feb 2020
 09:29:01 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Check require bandwidth did not exceed LSPCON
 limitation
Thread-Index: AQHV2+8+AWDRLSSIDEiOwnZuF5GcEKgMU40Q
Date: Wed, 5 Feb 2020 09:29:00 +0000
Message-ID: <DM6PR11MB3211EED8516F047C53CC2132A3020@DM6PR11MB3211.namprd11.prod.outlook.com>
References: <20200205143854.10557-1-shawn.c.lee@intel.com>
In-Reply-To: <20200205143854.10557-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=shawn.c.lee@intel.com; 
x-originating-ip: [192.55.52.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12618605-130f-44f9-6148-08d7aa1dd5a3
x-ms-traffictypediagnostic: DM6PR11MB3804:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB380460E682867DFBE6336D86A3020@DM6PR11MB3804.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0304E36CA3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(346002)(376002)(366004)(136003)(189003)(199004)(55016002)(478600001)(4326008)(8796002)(66574012)(76116006)(8936002)(66476007)(66556008)(64756008)(66446008)(66946007)(9686003)(5660300002)(52536014)(86362001)(33656002)(6916009)(316002)(26005)(54906003)(71200400001)(186003)(7696005)(2906002)(81166006)(6506007)(8676002)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR11MB3804;
 H:DM6PR11MB3211.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vaPr/35fz1hvJjcqqhspTdRL9hvzPZ9i72tqbjpL+NbkP0guf/wEZ7rbrl1P+krjqCJhT6/HfU8qgMhZG7huWJctg+iOjVWHOrJzSS9hJX5hm39Mbul1nmKJMEOq+tYpKIyeqrS5OzmJswvTfq6Gv0v1sgySB6UGSw90QVS6BjDxjpuxsR59lpZIQHPm12f77VaT1Tj8OOsHVINdka90QjbsElqv/MchhLRwd20xTvtcPPCCcpruuYb3klQGPmxkeXddoZ7pY4tyCxhS6h2INT4YIQWExUsb7RGRprPqw//O/W9qYoJvdfNQLGZkYW7z7jcK5h5bcdXHTXI6/f5WlptWsCW2YRW2XZU33pALPsTM3R1HeFIXHjgMM1eOliiPxdZzN/mstEuatEs0dZWWnRlk5OmX+RSsoaVSkAf2JP9Z/sIZfHR7T5GVuVLjSt0S
x-ms-exchange-antispam-messagedata: WJH22qQKTYdAzUljmqUd1B6l7u+MA/1UfndBVlRBP/kjtg5qAnQkhOyt1kkP2RVyjRxWAKnC/lVj9MM6PYrCpVyGOfH9FzfcTxmuEFnvdegu0kABvRHzjl5EcQwXXIMUKTj04hmQH7jLQjdesl5S3A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 12618605-130f-44f9-6148-08d7aa1dd5a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2020 09:29:00.9293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qsODi7C9cEUQsuQxQTfIBxpIA+OXal2OBlYygj++0sSsGG/su91/Xhyoj4OR+N3XB8nudpJUkj2kQULcZvMAoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3804
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
Reply-To: "20200205143854.10557-1-shawn.c.lee@intel.com"
 <20200205143854.10557-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, Sam McNally <sammc@google.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 05 Feb 2020, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>While mode setting, driver would calculate mode rate based on resolution a=
nd bpp. And choose the best bpp that did not exceed DP bandwidtd.
>
>But LSPCON had more restriction due to it convert DP to HDMI.
>Driver should respect HDMI's bandwidth limitation if LSPCON was active. Th=
is change would ignore the bpp when its required output bandwidth already o=
ver HDMI 2.0 or 1.4 spec.
>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Cc: Cooper Chiou <cooper.chiou@intel.com>
>Cc: Sam McNally <sammc@google.com>
>Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dp.c     | 18 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_lspcon.c | 10 ++++++++++  drivers/gpu/=
drm/i915/display/intel_lspcon.h |  1 +
> 3 files changed, 29 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i91=
5/display/intel_dp.c
>index 2057f63e32f0..64969ae1c285 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>@@ -1992,6 +1992,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *i=
ntel_dp,
> 				  const struct link_config_limits *limits)  {
> 	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mod=
e;
>+	struct intel_connector *connector =3D intel_dp->attached_connector;
>+	const struct drm_display_info *info =3D &connector->base.display_info;
>+	struct intel_lspcon *lspcon =3D dp_to_lspcon(intel_dp);
> 	int bpp, clock, lane_count;
> 	int mode_rate, link_clock, link_avail;
> =

>@@ -2001,6 +2004,21 @@ intel_dp_compute_link_config_wide(struct intel_dp *=
intel_dp,
> 		mode_rate =3D intel_dp_link_required(adjusted_mode->crtc_clock,
> 						   output_bpp);
> =

>+		/*
>+		 * Bypass this mode if require bandwidth over downstream
>+		 * limitation or HDMI spec when LSPCON active.
>+		 */
>+		if (lspcon->active) {
>+			int max_clock_rate =3D lspcon_max_rate(lspcon);
>+
>+			if (info->max_tmds_clock)
>+				max_clock_rate =3D min(max_clock_rate,
>+						     info->max_tmds_clock);
>+
>+			if (mode_rate > max_clock_rate)
>+				continue;
>+		}
>+
> 		for (clock =3D limits->min_clock; clock <=3D limits->max_clock; clock++=
) {
> 			for (lane_count =3D limits->min_lane_count;
> 			     lane_count <=3D limits->max_lane_count; diff --git a/drivers/gpu/=
drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon=
.c
>index d807c5648c87..3b0438356a88 100644
>--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
>+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
>@@ -518,6 +518,16 @@ void lspcon_set_infoframes(struct intel_encoder *enco=
der,
> 				  buf, ret);
> }
> =

>+int lspcon_max_rate(struct intel_lspcon *lspcon) {
>+	enum drm_lspcon_mode current_mode =3D lspcon_get_current_mode(lspcon);
>+
>+	if (current_mode =3D=3D DRM_LSPCON_MODE_LS)
>+		return DIV_ROUND_UP(340000 * 24, 8);
>+
>+	return DIV_ROUND_UP(600000 * 24, 8);
>+}
>+
> u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
> 			      const struct intel_crtc_state *pipe_config)  { diff --git a/driv=
ers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/inte=
l_lspcon.h
>index 37cfddf8a9c5..b584c02ab33b 100644
>--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
>+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
>@@ -18,6 +18,7 @@ struct intel_lspcon;
> bool lspcon_init(struct intel_digital_port *intel_dig_port);  void lspcon=
_resume(struct intel_lspcon *lspcon);  void lspcon_wait_pcon_mode(struct in=
tel_lspcon *lspcon);
>+int lspcon_max_rate(struct intel_lspcon *lspcon);
> void lspcon_write_infoframe(struct intel_encoder *encoder,
> 			    const struct intel_crtc_state *crtc_state,
> 			    unsigned int type,
>--
>2.17.1
>
>

This patch version info is not accurate.
I will submit a new one instead of this patch. Thanks!
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

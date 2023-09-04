Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7103791026
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 04:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1A310E280;
	Mon,  4 Sep 2023 02:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A6D10E280
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Sep 2023 02:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693795563; x=1725331563;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=JNI9I2q2j5/devcW8/psv2EUzapfjthPjoaNNfW9YlY=;
 b=PO52pJIaosYMeRivZzlI/TUR5OW76rMOoVhJO+Io352pSUxNZqBt1byj
 dN6dgd703F5VwRR+iWUGGYSaZ/aVeXJGZWbDsP3U2dB/8gvqviH3brTiU
 EmZCpR7l+87LJq3kRESgpIasNWes0/oYzZOCj9L2ERkBNK+zEB3VLHkM1
 obJBtX36/mJr8X0zM3tA13vjG+XMQiIj0QWd+7kZ0YwMXvQimMTJeZwHB
 EF7TfM/To7oGGnRhvOxhW9iXUaNSWP1s2rw5flmq839zgZmvbbQHhQfpe
 XoG2Oqu41So+fWI6ipmXPWBOdCSqqDBNysN3LVP6mtEiAkxtNN/SffQ2/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="373892414"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="373892414"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 19:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="743774692"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="743774692"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2023 19:46:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 3 Sep 2023 19:46:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 3 Sep 2023 19:46:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 3 Sep 2023 19:46:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I7T7I0g5QzPWLYbrpVBBjIGwDUWA+AGdMzL1VKZEIyoSXTl1GCS/QGN708cfrPRrI68spaAU/VtWGvGaoZTgU6Wvf50csIwUkn3XQ2ZPq+Dzaz+KCkrlNrJLLsEvG5RWXqMu0dI/kofHn65Jxp9TUvof+UhxpycMKLKgjQ4H6p+B8ABoFmIm3zC5g+ZCFMvcC8LeXlLGI+j5OfyJIml3QMfPdG/UbPmtF9haiGE5tF0VurvtUAZXk+U3P+h9xb/IkOVwZk6N1hBcdEhGgPiE5MKS8a/xLyDdlzXaSbhQ0sCgAGwmJYOlg/BkfW83ydcUV3eh6QXEs/qv9fDTg1t4CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jqNPaj39WycTMvio+LRLouuGlE/zkOE4bZOH47D/Hgw=;
 b=hMqBYazZIWYCsu/Zags/42cKmKfdhmjFMOyKP2Qqdz8RUKs91gUFmt2pt452WCzIvaq9sH+C6K5yxqR7HPB+8cO1+mHoPbDy9WFPvCcz1RKfPbSqX0fPH7dO4PdATEOq0CYiSy6yn+oDEvKICtUECRDEHG/HqenRbuHC7sOaFAY44PuDH5AyNEb09QgQROogrQam55JPY9DcKHx9ObFz8+2rNtHeE2crutc5rfB48UP75SyGy6sRNxYkzcA8jFwCW1mkg+2op3FHa1RA+fg2BJKGT3ofUj+S1+MbsZGY0UIWIiJjijrSDQbe9QUhj26Cv9CI8o7DQBz5XadhMXGexw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by CY8PR11MB6987.namprd11.prod.outlook.com (2603:10b6:930:55::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.30; Mon, 4 Sep
 2023 02:46:00 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::7400:ffc5:2f24:c721]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::7400:ffc5:2f24:c721%5]) with mapi id 15.20.6745.030; Mon, 4 Sep 2023
 02:45:59 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsi: let HW maintain HS-TRAIL and CLK_POST
Thread-Index: AQHZ3LnYeloOKGdoLE61cOBSU66C77AFxI2AgAQmywA=
Date: Mon, 4 Sep 2023 02:45:59 +0000
Message-ID: <SJ0PR11MB589469C74D37DF8FEDE56339F1E9A@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20230901095100.3771188-1-william.tseng@intel.com>
 <87ttsei3wm.fsf@intel.com>
In-Reply-To: <87ttsei3wm.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|CY8PR11MB6987:EE_
x-ms-office365-filtering-correlation-id: a2a24a95-3ae6-457d-3f23-08dbacf11258
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C6NgM7U+poFTE1iRuKFFqGxqaYFSM0geFj/yNGDL14wvbJSj3tujfKRO6Xz2FSm+CkFMXf7lrLtc2yLfOs3M+JUnxUEMf7i3B7JsRcfFAYL2C1pZCoFdWDkF0zgiwqSQnnWNgyxeU6HcVKOLcxLcSQ5W1AFi7g9ZGggm/gQ6jg3Ti89WumWR3mWWAV0253TjfqT4J7/DM6Kv/KXH76jOeqbw4YICrbmAK/mjdK0yLxJvtehgPS+B7YUihxGdToksgd0laXdZpVChkJRLnV2MQJTReZjgy/Dp63EaoXBa7FkMH25/Yrt7wiPXk7W+vM6lpsMPfQ5KD+LUd30jEDSyZ4+YW8+AEmImtG41/6FG6RJzN7NufFkaL1xvl6htoi410vBYtcydUMVpipQ0vs1adzzLdJD9ORExwUjW/BLPI2M3sbAN7EYtTnol9mYAGEipfjy9UQuysaaYHrmnNfyCuwLWJ+kTAEjuYAgXoLRdoWphWt971zH+8H4MRgY/X/g7N1FbelGXZe3G8oVzxEO3ilpIVydJp3FalNtxd7TdHM0Kbx2TzsrqfxMrF5xHy/ojj2vysE19gSVkZByRV6hg2ioBOU481IkPlZoosbVSiSKZEYX4WjSXLrxNwEUccMS0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(39860400002)(346002)(136003)(1800799009)(451199024)(186009)(8936002)(8796002)(8676002)(5660300002)(316002)(54906003)(66476007)(66446008)(2906002)(110136005)(66556008)(64756008)(66946007)(76116006)(4326008)(52536014)(41300700001)(53546011)(6506007)(7696005)(9686003)(26005)(55016003)(38100700002)(38070700005)(82960400001)(71200400001)(122000001)(478600001)(83380400001)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?S0r0bewp1XiLTgy5ISJ71mnvbBAYwV8/1kaSJynxlPr0g46Ui7hV3V1OYkWg?=
 =?us-ascii?Q?b3xtZ/RXNEg6yeRXBp7CToHoZbb6COuehBpW7IuFJsaAYIF3mruG9AHsev28?=
 =?us-ascii?Q?nhI9z6qH8LqIUHuoGlscQBIACPsY3aIwf1aKPC9tZUw6GDIOIl7ZDFF302OD?=
 =?us-ascii?Q?Lqy6ZQixXr6OIQMDzeTndn4Ihb0TiAofgsQQvMsYw+7jQoAM+eCkqPIO341L?=
 =?us-ascii?Q?14VKTXYztszvs8yGca0AlFfJZEI9lxz/A6zYL7lJFh2HL8bM2h0Q52kNrlZS?=
 =?us-ascii?Q?bQfbKLdW6Y2Jeyx2WijzsHTkozSgwck3zwfvWGpmffABY5iTkXCILe/cCmX3?=
 =?us-ascii?Q?XTlNIwQMjrQ1s7rXQSNhHuAIL6hC5MupF/nHow8QpPLPltks661a9Bk8kBuR?=
 =?us-ascii?Q?bKUSYsvPI+O4vyxhwjW8w+OuXys7zgHdRLYGg8BCcvr8px39pKRQqrE1rMRG?=
 =?us-ascii?Q?cZ4sxkhsqE0Ugh8OhTnArSM8wV2VAmx95uJzXC2mWXl3JrjDREcBQYnwcGg3?=
 =?us-ascii?Q?dJjUsQx/+YvwFINIob+sI3X7wVl8nzPddinOjhNSPIirSIrcrRQcgIeccjv+?=
 =?us-ascii?Q?UBRXZcJ7+6z3uFO4YQ3eKH6/U0fem71zD+Vma02fNxuWH3HMpa3TdqfmqQAq?=
 =?us-ascii?Q?PZTn2g8p8SW6TV580gIma/yVY38TscY4PFtUgbFxu2AK7MhmmKv7XuUZu5iD?=
 =?us-ascii?Q?yVO+Gdc5zO/CaTuhldDtCxqphFEStkiFUKlzhc6mso3Yiyyg61R61UhysFIS?=
 =?us-ascii?Q?DWXUPglPjlL0XtEkWoGrjz9KLSY+FjCccO91MjfXFmS6d6hj8aBsCvB4jOfq?=
 =?us-ascii?Q?axQPt/EOo/dz0nI4UnfPvi/yLsrCexrLnFzEWYydVk667529KZaGfhawuDhU?=
 =?us-ascii?Q?+PVjwieNloM+8tINMT9f6PH9WSoApuwDkBsHwWG5+Ag724+6z2ueUtv9BFkc?=
 =?us-ascii?Q?8n+TIEAsrBCb4+4jVQd5Omt0yvHzqUfHVn9ZfEYUJEr/z8RmjGBRZPatL5hJ?=
 =?us-ascii?Q?a7c0wU+d2HCoKy0bi0f1Ha47AJ+6C/0/f0yxfXB2CMv1s4zxlPxY9wQm4jmO?=
 =?us-ascii?Q?uRPPp3gP3Ony57KcpkgRP2qZa4UE1gDWWtrwKiIWJ7G50riF614z6eQ2PoLS?=
 =?us-ascii?Q?JTeNfos0qite5vlqrBZ3miWEJ+Vgn05dsd7t0eMYnCsrAc6ygmq2KHnHdH6M?=
 =?us-ascii?Q?jtK+Xw63RivaolMX1B5HXAMcu3OStkdBZw9PqsUXmwoudLJ8G1gfx6llMawY?=
 =?us-ascii?Q?heH6rwBuhVfzQnwxxZsXLvXVr49kJ8jOEsnvxEFmXETerhPx66sMvQsmHYAZ?=
 =?us-ascii?Q?0x7LZj2FDRXqsSgt5S0MTX2g43HFMzp2EaCtoDyBXjeUxGAQCZ8a4QyJPkci?=
 =?us-ascii?Q?ctmejp6PjZsvc1PMPoWFDEYdWCIlC2GHFXl1j/cnG9Srm0aLH2PEGVxMraNw?=
 =?us-ascii?Q?+Z4POOZIbhnhG09Po4G+oLLfn7z7rUt55yzR7Z4qe7sqHbalrt0uT4xXjM3o?=
 =?us-ascii?Q?OwR+XbTvipdVxhtYUmojTY5g8n9IgJdde4wGb5Uc1cHKauADrL7L7OzVyzwQ?=
 =?us-ascii?Q?r3NKvTwpn6qApUN44zjQCmeScMsdyAV+zQSQ9Ufu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2a24a95-3ae6-457d-3f23-08dbacf11258
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2023 02:45:59.7758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WdFKJjofOis9apPbx6uuRu0dzitemUi5Jl73vbQT9HjCBvQ9jdwn6kk8U0wJexFhexkSXhJxAos3g/cR9AG+MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6987
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: let HW maintain HS-TRAIL and
 CLK_POST
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
Reply-To: "20230901095100.3771188-1-william.tseng@intel.com"
 <20230901095100.3771188-1-william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For current VBT design, it does define the parameters ths_exit and tclk_pos=
t,
which are related to the timing values, TEOT and TCLK-POST respectively. Un=
fortunately
they are not configurable from VBT because both parameters are constants pa=
ssed by VBT. =20

To fix the timing problems, shall the VBT design be changed to make the two=
 parameters adjustable?

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Friday, September 1, 2023 6:28 PM
To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Tseng, William <william.tseng@intel.com>; Ville Syrjala <ville.syrjala@=
linux.intel.com>; Kulkarni, Vandita <vandita.kulkarni@intel.com>; Kandpal, =
Suraj <suraj.kandpal@intel.com>; Lee, Shawn C <shawn.c.lee@intel.com>
Subject: Re: [PATCH] drm/i915/dsi: let HW maintain HS-TRAIL and CLK_POST

On Fri, 01 Sep 2023, William Tseng <william.tseng@intel.com> wrote:
> This change is to adjust TEOT timing and TCLK-POST timing so DSI=20
> signaling can meet CTS specification.
>
> For clock lane, the measured TEOT may be changed from 142.64 ns to
> 107.36 ns, which is less than (105 ns+12*UI) and is conformed to mipi=20
> D-PHY v1.2 CTS v1.0.
>
> As to TCLK-POST, it may be changed from 133.44 ns to 178.72 ns, which=20
> is greater than (60 ns+52*UI) and is conformed to the CTS standard.
>
> The computed UI is around 1.47 ns.

The question is, why does the VBT define all this stuff, and when should it=
 be used and when ignored?

Also, this won't build.

BR,
Jani.


>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 31=20
> ++++----------------------
>  1 file changed, 4 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c=20
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ad6488e9c2b2..4a13f467ca46 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1819,10 +1819,10 @@ static void icl_dphy_param_init(struct intel_dsi =
*intel_dsi)
>  	struct intel_connector *connector =3D intel_dsi->attached_connector;
>  	struct mipi_config *mipi_config =3D connector->panel.vbt.dsi.config;
>  	u32 tlpx_ns;
> -	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
> -	u32 ths_prepare_ns, tclk_trail_ns;
> +	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
> +	u32 ths_prepare_ns;
>  	u32 hs_zero_cnt;
> -	u32 tclk_pre_cnt, tclk_post_cnt;
> +	u32 tclk_pre_cnt;
> =20
>  	tlpx_ns =3D intel_dsi_tlpx_ns(intel_dsi);
> =20
> @@ -1853,14 +1853,6 @@ static void icl_dphy_param_init(struct intel_dsi *=
intel_dsi)
>  		clk_zero_cnt =3D ICL_CLK_ZERO_CNT_MAX;
>  	}
> =20
> -	/* trail cnt in escape clocks*/
> -	trail_cnt =3D DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
> -	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
> -		drm_dbg_kms(&dev_priv->drm, "trail_cnt out of range (%d)\n",
> -			    trail_cnt);
> -		trail_cnt =3D ICL_TRAIL_CNT_MAX;
> -	}
> -
>  	/* tclk pre count in escape clocks */
>  	tclk_pre_cnt =3D DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
>  	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) { @@ -1869,15 +1861,6 @@=20
> static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
>  		tclk_pre_cnt =3D ICL_TCLK_PRE_CNT_MAX;
>  	}
> =20
> -	/* tclk post count in escape clocks */
> -	tclk_post_cnt =3D DIV_ROUND_UP(mipi_config->tclk_post, tlpx_ns);
> -	if (tclk_post_cnt > ICL_TCLK_POST_CNT_MAX) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "tclk_post_cnt out of range (%d)\n",
> -			    tclk_post_cnt);
> -		tclk_post_cnt =3D ICL_TCLK_POST_CNT_MAX;
> -	}
> -
>  	/* hs zero cnt in escape clocks */
>  	hs_zero_cnt =3D DIV_ROUND_UP(mipi_config->ths_prepare_hszero -
>  				   ths_prepare_ns, tlpx_ns);
> @@ -1902,19 +1885,13 @@ static void icl_dphy_param_init(struct intel_dsi =
*intel_dsi)
>  			       CLK_ZERO_OVERRIDE |
>  			       CLK_ZERO(clk_zero_cnt) |
>  			       CLK_PRE_OVERRIDE |
> -			       CLK_PRE(tclk_pre_cnt) |
> -			       CLK_POST_OVERRIDE |
> -			       CLK_POST(tclk_post_cnt) |
> -			       CLK_TRAIL_OVERRIDE |
> -			       CLK_TRAIL(trail_cnt));
> +			       CLK_PRE(tclk_pre_cnt));
> =20
>  	/* data lanes dphy timings */
>  	intel_dsi->dphy_data_lane_reg =3D (HS_PREPARE_OVERRIDE |
>  					 HS_PREPARE(prepare_cnt) |
>  					 HS_ZERO_OVERRIDE |
>  					 HS_ZERO(hs_zero_cnt) |
> -					 HS_TRAIL_OVERRIDE |
> -					 HS_TRAIL(trail_cnt) |
>  					 HS_EXIT_OVERRIDE |
>  					 HS_EXIT(exit_zero_cnt));

--
Jani Nikula, Intel Open Source Graphics Center

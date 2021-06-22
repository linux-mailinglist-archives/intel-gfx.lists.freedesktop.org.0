Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBE73B0836
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 17:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E348C6E1D3;
	Tue, 22 Jun 2021 15:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A2236E1D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 15:05:42 +0000 (UTC)
IronPort-SDR: 9gz2JE15B2/r8dGMd65W6uwF0OKbTeDsqsJMd4L4H6xYdxGuorLNWqmNUrivTLlsffJdkAug5C
 tUB++TObhW6A==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="207015573"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="207015573"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 08:05:35 -0700
IronPort-SDR: EaHWKfjDEcWPWg+6mHQthI8beN2mt37JEYVP5zI2ron9Uwv8lw5yf0N6FYE8moUCZiiIsEYp20
 ih4QoRlbIMTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="641679211"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 22 Jun 2021 08:05:35 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 22 Jun 2021 08:05:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 22 Jun 2021 08:05:34 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 22 Jun 2021 08:05:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9lp406CAMeb8GtWdz/oRY8VYITAiKfkyLMoHwdsjUIBIauzUkCchVQHhLMrAOFLpWGTTg0j6MBLgDb/uktvP96UuHWR41kSmPt9Bm98GpbTDr7H0N/FBD1mjlE61FVKn4fCiop7X6gSoEz2yZTwBvhVh1ld0g04YWpR4/OIVgWURRHizJVM/NVsGMo0w/kdbdj7h7ILwHJ5dwRa3frEjMc8z9CyM2qs+G9B1qBmvQZ21RFT+qJWF/Tpd88/d2Kf1m0FBIt20jDjDDp/lTzVJRCbX7qm92h0T3twMGlmz0nS7la+wk9EnefsHQ8PcHscrgP79Dt+33l0nZe8yUn1HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CxgRClrfnivLpKDUi2yjKldV6fm/Eb/ySD+yd2mkgOc=;
 b=kjoTsVTwuE9MdG2bb9RCSuti3titzQ93BaiQIEb2Or7tfs6sN1ahypEKRxVPL/1TWHC/tB+CTT+lG4RGhO4lzNM+MvVde2EfhLvOVUdoVc/mOGZFGUuumHxHruARm3pmc5BT+2Z2yGwqY8CpmyB3db9QcsvKXzQ59qxCQLpBMwP5qq9yb9/QoV1ziXdDUEN+/+F9avVpuTq9WtfkmOHBNt7YkGrP/pykGgUgl6F3eU+sO9QUs3PjV/hLI1lv3bUURsl0HJ1dHGVwcrs5INj/JmoSseGIxft0GPgktdhckSMCC5AjbuhfjNtUiKMz3yVNOixeNJRYnEOFhWcVKMlcwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CxgRClrfnivLpKDUi2yjKldV6fm/Eb/ySD+yd2mkgOc=;
 b=qsJX2vdbGfve/iRCL3JeRsJkQmYdKn0cU9gBeC6GqCl8rvVJ0oAEsGD3SPEurYDkeuKWnpFiK/2Pl4nzBT3t6ejiAdC+svQ0NeQa+kssKImhnt+OTVtvm2S97H8JzV+hOEpsBxCE6+IDLtwvtdtLHFSmawGEo/wsA885wrJ17Io=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5619.namprd11.prod.outlook.com (2603:10b6:5:358::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Tue, 22 Jun
 2021 15:05:31 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::9464:7496:86c9:5807]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::9464:7496:86c9:5807%5]) with mapi id 15.20.4264.018; Tue, 22 Jun 2021
 15:05:31 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: keep backlight_enable on until turn eDP
 display off
Thread-Index: AQHXZ2oVr5lUcB2srEyMkZWg5CcMvasgE/KAgAAB7dA=
Date: Tue, 22 Jun 2021 15:05:31 +0000
Message-ID: <CO6PR11MB56513F8FF5427208EB00F215A3099@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210622133107.7422-1-shawn.c.lee@intel.com>
 <8735taugoe.fsf@intel.com>
In-Reply-To: <8735taugoe.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [1.169.144.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d55c1b3a-13b8-40ae-fbde-08d9358f2db5
x-ms-traffictypediagnostic: CO6PR11MB5619:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB561973A27FBA778B4B8D6D25A3099@CO6PR11MB5619.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cKajbB5UaS3AT/E3ggjDICSDSvloBbHWEXSoZ+r7uIPLaCjFEd7s/Xd7vZIlTbFZBbzC4Q6DPmJs7SB+hJ2ar+Q28yBCyXl9znY+i2ldJT/zYHt8+O7YlzbRNwVsnM3E+NPRzqKPT0HSobu7s3TG5gFRfGLM29RIquzRoSlRiBIzYIzaJ2fWrtRB1xh187RunDoe6B0XdhRWJcAZnRsMkAhVPqc8YDAyfQTLOJ9OuuwnGIEEw9Boe/yaIyYmivoukUzGmfqVhq8KTma+0YjQTou6+6Y5a5IF+0wNiqNnnhEj63RX9ffqAy4Hw079soytz4UlBKHgySX1Af4h0fMrQsGfwxzadi6PLS3OEIrNg+jgY7qBbz+2psnA8QeqCkeVDg3oSvJYQEoA9R5NRE7B7DAJgagNv52IdbgNvexLtnn1oOCI6FdlFhvTFoObSU4jiXSQFhNyA9xd2cT1/O4eIesjhiKTTpSoGZEBuzR0fZ/Fhr0Qa/JvQ+VfwcI5AppVxVUMQlBn21bR7la1cRpAMvdeIqixcgYyjdnCyOcoHkYINvxbosg8CR8VtwdGJfEtwvoxBLLygXNFhOC4lHnHZmGhtvzuoZ5SNAPNRJyS54g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(39860400002)(136003)(396003)(376002)(8676002)(110136005)(4326008)(8936002)(2906002)(54906003)(6506007)(122000001)(8796002)(38100700002)(33656002)(86362001)(66946007)(5660300002)(76116006)(7696005)(316002)(55016002)(52536014)(71200400001)(478600001)(64756008)(186003)(66446008)(26005)(83380400001)(9686003)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?osP6yZ4Qn0QALn7lpNz9Mcz8RAwBVYaGPRs+6GfAJXM6wZr+RoWOZw7rAzLg?=
 =?us-ascii?Q?3YRHgaXB+xH+zO7Tzsx8OdWEGOe3QhO8pPZLAXcn9L3yOdXuUJC/drNTX5nB?=
 =?us-ascii?Q?pxIntu2UwTlqBrcVzWBcwFkbHvSKpH9AK4xFtn3pS+nEftAe+JlKZWfBZKUX?=
 =?us-ascii?Q?s+MMcN9xOTl5aX1rxhRbbveI4LbEYLM24CxxFLaXpIKOHWEvtwY+loooycHD?=
 =?us-ascii?Q?oWnib6GHpRw2dJaJ0Bq4WsOIpR0XELM7uRg3qCfAeV9XS9W8MriaF4XntBTU?=
 =?us-ascii?Q?4EbvvaAhm6dA7eBPRdKvXTiTxT9C0ql4gT+8zX4MpiyZsPT8ak/cJqrTbMkU?=
 =?us-ascii?Q?/iWhtI0qA++TIErolirOZP3ypiOcE6gy3jOjkOn1xdtMEae6PoTTT4MVPDLn?=
 =?us-ascii?Q?uQnD0Assv4YIuIvc2F+oM6MhGY/6Hh9T874Q1hR3V3TlKJSUnTYH9ykz5c8Z?=
 =?us-ascii?Q?Sy/MMAIsZC5YriH8hfYT3m46zC7tkQn7eVjWSQ+gXn3TqaANb5i8t22i0eeq?=
 =?us-ascii?Q?cyPd35Ywr7wNcpNQ+ESDSwPhZ9T3CS0Lko6UVGua6DGIouaKI/Bm6qZUg4Nb?=
 =?us-ascii?Q?9/3XKDb/G4qspfzkZEuckuGYs09iYwFIhdKkrpELZKVNBknDUNDDbBCAARS8?=
 =?us-ascii?Q?LXYnvLP3oNAOQRHafQwWYLzTAIUPItoU1DtKLSma3CvW19d7jQlDeAO0xWA8?=
 =?us-ascii?Q?P5YQVwMF/NlPKNuqBF/JJIvcHa8NBwCV07qo2Ckb9a/494nJvidjWyt+ppDw?=
 =?us-ascii?Q?g8/xcUy4ltbu37v7+4vkWJwkkjInOmQs8+41UL0UOhBx1lxhqYwj6cbkMzrk?=
 =?us-ascii?Q?xQEpRMQnd6dMGL/aBQ8mJUv8rLsQNdGMT9CHd416KCgoAmaTsMU15VU/8qpu?=
 =?us-ascii?Q?brQ1rvvSm13rcC+MiUrVqFI3fKVf+zqhQIxkC5DXIBahfljV6Szg8LarJHPq?=
 =?us-ascii?Q?2E/rRbd71JJUbMi2zHuKURxhySHg0CdemNdvK2srKyyJK6mRwVn3kl56puh4?=
 =?us-ascii?Q?2sAQZJOgPQhrMb2oKxJrKTnlL53CUu9FLs6iz8wAF3kTIPiFVC0oqnU6zZGs?=
 =?us-ascii?Q?H4i7zqX/kSxFrQh3g09pH70P2I+q9zzxEATIuT7sJiCWhsEroWoofdVXAuHf?=
 =?us-ascii?Q?Y7kKdDJSiKO7Vuz/qyk1fFmNsqeq2WJy1ReINbmKylVavPFSovgg612dJEsL?=
 =?us-ascii?Q?pX7Pzhe59PK19iD5lHKEuqcM1XSeETp7mKy2LLO5w3aWq1UO1sHsm7xkDffq?=
 =?us-ascii?Q?ukAKRb9ApQSx0MQ2naTJEG1uQX3m5XpukM51m5ZpGkgbJLB9xbQwC5LuIzKT?=
 =?us-ascii?Q?AndCC1K2QYDY8RPri2lLLxCB?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d55c1b3a-13b8-40ae-fbde-08d9358f2db5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2021 15:05:31.2326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i3GMaUqZmo86GOWL8bCMoeedy9NtA/AVzUwquhrj4+pP8Ur50ZodPNjOOOBgXrHNsMCfb9bpIaLSfoi+AhmjJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5619
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: keep backlight_enable on until
 turn eDP display off
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
Reply-To: "8735taugoe.fsf@intel.com" <8735taugoe.fsf@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Tue, 22 Jun 2021, 10:18 PM, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>On Tue, 22 Jun 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> This workaround is specific for a particular panel on Google 
>> chromebook project. When user space daemon enter idle state.
>> It request adjust brightness to 0, turn backlight_enable signal off 
>> and keep eDP main link active.
>>
>> On general LCD, this behavior might not be a problem.
>> But on this panel, its tcon would expect source to execute full eDP 
>> power off sequence after drop backlight_enable signal.
>> Without eDP power off sequence. Even source try to turn 
>> backlight_enable signal on and restore proper brightness level.
>> This panel is not able to light on again.
>>
>> This WA ignored the request from user space daemon to disable 
>> backlight_enable signal and keep it on always. When user space request 
>> kernel to turn eDP display off, kernel driver still can control 
>> backlight_enable signal properly. It would not impact standard eDP 
>> power off sequence.
>>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_panel.c  |  4 ++-  
>> drivers/gpu/drm/i915/display/intel_quirks.c | 34 +++++++++++++++++++++
>>  drivers/gpu/drm/i915/i915_drv.h             |  1 +
>>  3 files changed, 38 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c 
>> b/drivers/gpu/drm/i915/display/intel_panel.c
>> index 7d7a60b4d2de..0212b53d932b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -1311,6 +1311,7 @@ static void intel_panel_set_backlight(const 
>> struct drm_connector_state *conn_sta  static int 
>> intel_backlight_device_update_status(struct backlight_device *bd)  {
>>  	struct intel_connector *connector = bl_get_data(bd);
>> +	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>>  	struct intel_panel *panel = &connector->panel;
>>  	struct drm_device *dev = connector->base.dev;
>>  
>> @@ -1330,7 +1331,8 @@ static int intel_backlight_device_update_status(struct backlight_device *bd)
>>  		if (panel->backlight.power) {
>>  			bool enable = bd->props.power == FB_BLANK_UNBLANK &&
>>  				bd->props.brightness != 0;
>> -			panel->backlight.power(connector, enable);
>> +			if (enable || !(dev_priv->quirks & QUIRK_KEEP_BACKLIGHT_ENABLE_ON))
>> +				panel->backlight.power(connector, enable);
>
>We'll want to avoid the hook altogether in this case, instead of complicating the logic even more. Something like:
>
>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>@@ -5286,7 +5286,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
> 	}
> 
> 	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
>-	intel_connector->panel.backlight.power = intel_pps_backlight_power;
>+	if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
>+		intel_connector->panel.backlight.power = intel_pps_backlight_power;
> 	intel_panel_setup_backlight(connector, pipe);
> 
> 	if (fixed_mode) {
>
>---
>
>Please adjust the quirk name and debug logs accordingly.
>

Thanks! I will modify the quirk name and debug messages later.

>Truth be told I'd rather nuke the hook completely. But it was a request from Chrome to have this lightweight sub-state to black out the display, without mode set, using the panel power sequencer in cases where we can't set the backlight PWM to 0.
>
>Hmm. Is the brightness controlled using PWM or DPCD? We probably shouldn't do this at all when the brightness control is done using DPCD.

This panel refer to soc's backlight_enable signal to enable backlight. But adjust brightness via DPCD aux interface.
If source turn backlight_enable signal off, panel tcon await source execute full eDP power off sequence to disable local display.
And panel's backlight is not able to turn on again.

Best regards,
Shawn

>
>BR,
>Jani.
>
>
>>  		}
>>  	} else {
>>  		bd->props.power = FB_BLANK_POWERDOWN; diff --git 
>> a/drivers/gpu/drm/i915/display/intel_quirks.c 
>> b/drivers/gpu/drm/i915/display/intel_quirks.c
>> index 98dd787b00e3..ed57b083edbb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>> @@ -53,6 +53,12 @@ static void quirk_increase_ddi_disabled_time(struct drm_i915_private *i915)
>>  	drm_info(&i915->drm, "Applying Increase DDI Disabled quirk\n");  }
>>  
>> +static void quirk_keep_backlight_enable_on(struct drm_i915_private 
>> +*i915) {
>> +	i915->quirks |= QUIRK_KEEP_BACKLIGHT_ENABLE_ON;
>> +	drm_info(&i915->drm, "applying keep backlight enable on quirk\n"); }
>> +
>>  struct intel_quirk {
>>  	int device;
>>  	int subsystem_vendor;
>> @@ -72,6 +78,12 @@ static int intel_dmi_reverse_brightness(const struct dmi_system_id *id)
>>  	return 1;
>>  }
>>  
>> +static int backlight_wa_callback(const struct dmi_system_id *id) {
>> +	DRM_INFO("This is WA to ignore backlight off to prevent OLED panel issue on %s device\n", id->ident);
>> +	return 1;
>> +}
>> +
>>  static const struct intel_dmi_quirk intel_dmi_quirks[] = {
>>  	{
>>  		.dmi_id_list = &(const struct dmi_system_id[]) { @@ -96,6 +108,28 
>> @@ static const struct intel_dmi_quirk intel_dmi_quirks[] = {
>>  		},
>>  		.hook = quirk_invert_brightness,
>>  	},
>> +	{
>> +		.dmi_id_list = &(const struct dmi_system_id[]) {
>> +			{
>> +				.callback = backlight_wa_callback,
>> +				.ident = "Google Lillipup",
>> +				.matches = {DMI_MATCH(DMI_BOARD_VENDOR, "Google"),
>> +					    DMI_MATCH(DMI_BOARD_NAME, "Lindar"),
>> +					    DMI_MATCH(DMI_PRODUCT_SKU, "sku524294"),
>> +				},
>> +			},
>> +			{
>> +				.callback = backlight_wa_callback,
>> +				.ident = "Google Lillipup",
>> +				.matches = {DMI_MATCH(DMI_BOARD_VENDOR, "Google"),
>> +					    DMI_MATCH(DMI_BOARD_NAME, "Lindar"),
>> +					    DMI_MATCH(DMI_PRODUCT_SKU, "sku524295"),
>> +				},
>> +			},
>> +			{ }
>> +		},
>> +		.hook = quirk_keep_backlight_enable_on,
>> +	},
>>  };
>>  
>>  static struct intel_quirk intel_quirks[] = { diff --git 
>> a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h 
>> index 01e11fe38642..8103919bf3b4 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -467,6 +467,7 @@ struct i915_drrs {  #define 
>> QUIRK_PIN_SWIZZLED_PAGES (1<<5)  #define QUIRK_INCREASE_T12_DELAY 
>> (1<<6)  #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
>> +#define QUIRK_KEEP_BACKLIGHT_ENABLE_ON (1<<8)
>>  
>>  struct intel_fbdev;
>>  struct intel_fbc_work;
>
>--
>Jani Nikula, Intel Open Source Graphics Center
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

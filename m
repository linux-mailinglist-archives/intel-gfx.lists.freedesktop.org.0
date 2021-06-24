Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D6A3B2487
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 03:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 745216E9A6;
	Thu, 24 Jun 2021 01:31:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DFAD6E9A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 01:31:55 +0000 (UTC)
IronPort-SDR: qTxPBaJW5+0NjDxjpRAcuv+eJMOerQC9LNQ4y/ZY5ee97uhBx+9VJXnvGrlHsdHIsVDYUzFYbZ
 jmJcfamxmiRA==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="293002987"
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="293002987"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 18:31:54 -0700
IronPort-SDR: RM+lduI6/dCW/GbygBtRjuLULPugZuc73CIUMt0i8FjDLQV5S8R1/TqsP007aXU7wlXES8fGNa
 b3e4IZKicjrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="454853131"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 23 Jun 2021 18:31:54 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 18:31:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 23 Jun 2021 18:31:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 23 Jun 2021 18:31:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kmxRBAYFBcJpV2DK6Z2lvD+QiyN1atN8nSrEeTmiwIUUiFXt1OviTjf+0lumGPBIzfMoawg/ci6aW6R4R9i6JWO6iHUBgbSSvmi7RU1NMyeolY1ZdpNEoPuhAAQKIZax6uW6eYOkQYn95LZQlbtzr09iHk4b7PVQ+8o2wh3hEIqhy0j9O1UmDJcOmoqcwOEdGgRyd4zhqCWwM8Ykjm1mdjZiMFiRXSbT9CDAY6uuwrDgSCoVbDcPLlOsRxS0v4rf3PPkb95wfrHcAkGKWKdpL2FAERBQ0D1IvCN8w+TaaIaSNYdWtuDLTjYZAhOLQbOlR4hPR7FGAaMvEm/Eh2uGRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GxxaaRK17zSNu787yJ2LRq+54QvziidswDfdeGy5CJA=;
 b=Vqk2anljwoyZy2rIqy0j3N95/gPlMFJiTJnU4H9nrxqBCoiacwRYRgvK5Bk52gTYCqxsJUdpuHMKzb1Y0F7efv27eRMFUIqXA7rZzdFwtg83go0l//60RKIQfd+eOQXoD559dCedzUicBw43YOt8hciEH22KL/kbYpynYZXJ4iuMpwpWD6yEmOZR9ikVpLBC1T0FI6O1T0bWQUchtghF7x4/XvFiSe3PazYOXSrCLcGa/eL8jPHnFxeOQz4mo0NGEca5SRfZpb0kksriX5rcHBUr9/tlbgXiQplJtELUXldaRCkL7wo4+3ThjHxwyR18P9/fSuRNYFH0RwRHHbnVjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GxxaaRK17zSNu787yJ2LRq+54QvziidswDfdeGy5CJA=;
 b=OhRzMi/s4WAb3SzZfEWMXxWloZT7JAiKrvlLegByVsqia2UDcxorKv8rKAtogqzGGak+wD7hxIE404LoyYNyjY+3zxyKwD9kCsGGAqEiqDJvZYoKOxhxEKcUzzw5EWiOHht7qwoeFxQes8jGj/8uwrrPVU37ozGwQnpK42yMvfs=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5652.namprd11.prod.outlook.com (2603:10b6:5:35e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Thu, 24 Jun
 2021 01:31:49 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::9464:7496:86c9:5807]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::9464:7496:86c9:5807%5]) with mapi id 15.20.4264.019; Thu, 24 Jun 2021
 01:31:49 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915: keep backlight_enable on until turn eDP
 display off
Thread-Index: AQHXZ3sFnqSUmObZ7EywPMLFHSgFK6shz1SAgACP8EA=
Date: Thu, 24 Jun 2021 01:31:49 +0000
Message-ID: <CO6PR11MB5651E15E3B34A2721019203DA3079@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210622133107.7422-1-shawn.c.lee@intel.com>
 <20210622153225.24578-1-shawn.c.lee@intel.com> <87lf70ttr6.fsf@intel.com>
In-Reply-To: <87lf70ttr6.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: 770ba115-c4ff-4486-bb86-08d936afd6a0
x-ms-traffictypediagnostic: CO6PR11MB5652:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5652677D447392D68F152474A3079@CO6PR11MB5652.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AFrmYxWs4EDIzTvtE1/nkzuFh4R022HF8k5mCWdlEpOivTp428p71DeED307wzFxFU/gRKQuS6ODf/DcgSVdT0Uo1U7QGJAm0+n+Zz3IZ0KW7C3xGQud6vC5JynkEFwqPOjPmXA2tqjRZRI7/Du4wM3Gk9qD/szfhUQfIyR1NFVaVpOWbVdBQ3UFKdgMLVbuIiWOViu7YV6obItCamtLiB3YOiuJvJoMtohHO0nScTEuagcygeWIyF0u32lojsFKsa1TdhbZ6vlsSpDKrYI5jT7QdCNt98XXkEeo5h935fPwbhFcs5cRbla3O1GxiogCUdnEzYENDMq0gVvJVRXeDYo+FLuGrM+UlEEkVOwbq02iTwDzNiaUAgBxUbp7bf9mqZTga7jF3rqZsArgbVXnfSVpBsUs4k8iI2dI380bBt4yAA+UkvRSFYO4m0f8gacI1e7RRa+S7zhiNgu1ayYcbJxeccsY3A9ZEFcBFcZ1kGflutdgk2x5zrtqP4fwIIOu2LiwTGFIFW8n+KqKkYTRcAX0qPH3c84GRjom9w2QC7v4dd2ucLUGLXttYTBYzn1nbeFhKgiIzc0UeiD+UIJ+Wn88/NX39e9Z7jID7OckO3Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(39860400002)(376002)(346002)(136003)(316002)(54906003)(110136005)(478600001)(2906002)(76116006)(66476007)(6506007)(4326008)(83380400001)(71200400001)(66946007)(26005)(64756008)(66556008)(186003)(66446008)(8796002)(52536014)(5660300002)(8936002)(86362001)(33656002)(9686003)(122000001)(7696005)(38100700002)(55016002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fqRKepb982nLcsuBJOlbZC++5mDWZR8hfY8atB3RNRdVIZdnKnuthtTo9OrF?=
 =?us-ascii?Q?lSkWa1eiqbdcSVSO9X42r9+OwQUZKN8BukM2ar706YqKQln+/a8Lf7qwPix0?=
 =?us-ascii?Q?Rvv728apPoC5cT3rNkANiauxKzUFmOR9ZusLTCYrwwXcS7DJC2sJir9/dOJj?=
 =?us-ascii?Q?zc/IiRstZghnYsv+NEVhkNmgl06AspNe9y7NPbOxwck6R/9B9xXPP14nK71f?=
 =?us-ascii?Q?geb0Hf6K7Pu0ESUwqbo7l/RlROHdaUTn12D14COcYVBn3qrhFWQopBSFuomT?=
 =?us-ascii?Q?L2UgA9cnkRtNyv3PQwb09SugvgFSMn4hJX4N3o4g3jUvQtE5crMFq91r3MCO?=
 =?us-ascii?Q?87t0LcaK4lDPwT5JlwFL1GB7qF44QJgdLxKXuL37mzWd0F9E9MILZJj3bjtB?=
 =?us-ascii?Q?wZnnWobbGCiQ6YyvT2IXA3iG9AXG7FwZtqRf6g71eZjr2hzMKEDJ8rp0RwWl?=
 =?us-ascii?Q?KIW9DYuktQtOIe+2TXhcvE3zBLUUYflkW++xDEJ38UdgRAo3LC0XG5IjIm4c?=
 =?us-ascii?Q?13suGzoHfkcoLTy0f56nug365DqL1l3txm1TxHj6TgKhKRTcF8ExzDyLzUAw?=
 =?us-ascii?Q?S0Ae8DizDqo6ROl/AdSIVkSoq6UCtZ2kfvUq0JdYzS85aIjF/b1S1V6CQ2+u?=
 =?us-ascii?Q?YOnRXvM2EF9JdDT9/3uR3lkP8ktCRk6gjSu2e/15+JtM1yG96bs9+plHw2nq?=
 =?us-ascii?Q?IYR7MnbX3EOmAz/WqLIuFx+2+PDNMZp5knN9AGc02juFZdAONj6em5VPaItT?=
 =?us-ascii?Q?Yaxqa03Yig/hSdnoWBOtkahboB5REmhEY/esUY9d8820nNNifoEagdlDJTxu?=
 =?us-ascii?Q?iJUtts+PpP/iBp86cbhNkv2LF/bJmWDTLO2LHnSIpMtik5S5G3Ll71Lmk5C6?=
 =?us-ascii?Q?/E1MSI+YcTW3jm1o9Rf4eCSFbakqhfylv8beNZoHsY5uZorXZqJKmVQr69g2?=
 =?us-ascii?Q?RUPVKYelZIKDM8N742zAtzw60jQeH7RSIR0iJ1jOgkDCWTdBiJt1rsMUr6Zw?=
 =?us-ascii?Q?/LZ8lZyRd7DRYwKJDPUBOlIqqbIp8Jx9V4CEr2RltrLujJnDyBzCHNXKk8E2?=
 =?us-ascii?Q?35UXYkBG+qXXMPoO3kb1ynpzZsX8UjzUcv4/Yqg0md6ZZweE2YsPHjhtWRfm?=
 =?us-ascii?Q?n01b1ea1QFdagqs3Q17mz+mb3VTg/gibqn4ZAXYGNZr8mduWuXygKvuB9Tbr?=
 =?us-ascii?Q?BzwRGGofX1qILRyXKQrOtA9gLH9G7v1knqLMNpY/SG9IKAcek7blqFPELZW9?=
 =?us-ascii?Q?EHv87fdBJYMREb06MvRC8vElpS65E2TmwUQEI6LvDyEQzb9Ap5tNVOd3I1EN?=
 =?us-ascii?Q?Imn4eCDk3ahMVNHCJpsNcY1n?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 770ba115-c4ff-4486-bb86-08d936afd6a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2021 01:31:49.6416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tfu/x5oo1AB82r70zm48N4zYMITK8EXyuImM/OjBomwFVuUQkrz82YyEJ9vc2oDwDEyYw+MQEtQ2Rd+JcDC3Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5652
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: keep backlight_enable on until
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
Reply-To: "20210622153225.24578-1-shawn.c.lee@intel.com"
 <20210622153225.24578-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 24 June 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
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
>> v2: modify the quirk name and debug messages.
>>     unregister backlight.power callback for specific device.
>>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c     |  3 +-
>>  drivers/gpu/drm/i915/display/intel_quirks.c | 34 +++++++++++++++++++++
>>  drivers/gpu/drm/i915/i915_drv.h             |  1 +
>>  3 files changed, 37 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 6cc03b9e4321..d3312b9bcc6f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5238,7 +5238,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>>  	}
>>  
>>  	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
>> -	intel_connector->panel.backlight.power = intel_pps_backlight_power;
>> +	if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
>> +		intel_connector->panel.backlight.power = intel_pps_backlight_power;
>>  	intel_panel_setup_backlight(connector, pipe);
>>  
>>  	if (fixed_mode) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c 
>> b/drivers/gpu/drm/i915/display/intel_quirks.c
>> index 98dd787b00e3..5f3cb006db01 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>> @@ -53,6 +53,12 @@ static void quirk_increase_ddi_disabled_time(struct drm_i915_private *i915)
>>  	drm_info(&i915->drm, "Applying Increase DDI Disabled quirk\n");  }
>>  
>> +static void quirk_no_pps_backlight_power_hook(struct drm_i915_private 
>> +*i915) {
>> +	i915->quirks |= QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK;
>> +	drm_info(&i915->drm, "Applying no pps backlight power quirk\n"); }
>> +
>>  struct intel_quirk {
>>  	int device;
>>  	int subsystem_vendor;
>> @@ -72,6 +78,12 @@ static int intel_dmi_reverse_brightness(const struct dmi_system_id *id)
>>  	return 1;
>>  }
>>  
>> +static int intel_dmi_no_pps_backlight(const struct dmi_system_id *id) 
>> +{
>> +	DRM_INFO("This workaround prevented panel backlight issue on %s 
>> +device\n", id->ident);
>
>Not sure I like the verbose "This workaround ..." style messages.
>
>Contrast with what the messages for reverse polarity would be via dmi:
>
>"Backlight polarity reversed on %s\n"
>->
>"applying inverted panel brightness quirk\n"
>

The hook function will print messages to indicate driver had this quirk and it should be enough.
I will remove this debug output DRM_INFO("This ....").

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
>> +				.callback = intel_dmi_no_pps_backlight,
>> +				.ident = "Google Lillipup",
>> +				.matches = {DMI_MATCH(DMI_BOARD_VENDOR, "Google"),
>> +					    DMI_MATCH(DMI_BOARD_NAME, "Lindar"),
>> +					    DMI_MATCH(DMI_PRODUCT_SKU, "sku524294"),
>> +				},
>> +			},
>> +			{
>> +				.callback = intel_dmi_no_pps_backlight,
>> +				.ident = "Google Lillipup",
>> +				.matches = {DMI_MATCH(DMI_BOARD_VENDOR, "Google"),
>> +					    DMI_MATCH(DMI_BOARD_NAME, "Lindar"),
>> +					    DMI_MATCH(DMI_PRODUCT_SKU, "sku524295"),
>> +				},
>
>I think you should use DMI_EXACT_MATCH instead of DMI_MATCH. The former users strcmp while the latter uses strstr for comparison.
>
>The .ident string should probably be different for the two cases; otherwise the DRM_INFO() logging above does not differentiate between the two.
>

OK! Let me confirm with ODM team. We can have differnt .ident string (+ sku1, sku2, etc...).

Best regards,
Shawn

>Sorry for not catching all of these at v1 review. Anyway, this is just small details, the approach is fine.
>
>
>BR,
>Jani.
>
>> +			},
>> +			{ }
>> +		},
>> +		.hook = quirk_no_pps_backlight_power_hook,
>> +	},
>>  };
>>  
>>  static struct intel_quirk intel_quirks[] = { diff --git 
>> a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h 
>> index 01e11fe38642..5a065be0792a 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -467,6 +467,7 @@ struct i915_drrs {  #define 
>> QUIRK_PIN_SWIZZLED_PAGES (1<<5)  #define QUIRK_INCREASE_T12_DELAY 
>> (1<<6)  #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
>> +#define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
>>  
>>  struct intel_fbdev;
>>  struct intel_fbc_work;
>
>--
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

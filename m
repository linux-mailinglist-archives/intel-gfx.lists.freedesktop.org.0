Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31688186CAE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 14:56:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73D766E429;
	Mon, 16 Mar 2020 13:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D526E429
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 13:56:37 +0000 (UTC)
IronPort-SDR: szXA6sUnlEswF5/mHjkBdCXQB931ZrjCoZESZ6VqkTW5TKrsmhzZAvNmoQzAZf9B9pSug1mg0D
 nQ5hRk1hSiaQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 06:56:36 -0700
IronPort-SDR: iNW3D5cTZ0cmFkmRjOAtjb3KQFGh/PhBganvttmtx5FmSY1SLCkDOn6g9SWFlSlyMcal1gzTc0
 h0ZSViLoaaEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="262680946"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga002.jf.intel.com with ESMTP; 16 Mar 2020 06:56:36 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 06:56:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 16 Mar 2020 06:56:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZeAy5/l6tjxWPWofIJkChYlY9+asX8VexmW6Krw51O2qJ6lyu2Kpo4NXMFYr0DmGtV3fqEMDk+6z8BEo2zUIQId5pJdQTaMebX94m67QttXn6YERNvxLcicuxI0IP8dthrW7BnPrWUQHzx6na+JIkf2l4RYASOwtfz91QGKsC67FPoqw+KhQWVW7sZ69NG8lSQOeruNCERF2GzFOtblymuXkcreCUAI5CV5FGlRCLSUwlk0mUKj95oU/ILHxpomJ3rdV14976zw1NRNealcznthA+U6nSKwipzOOV4hPKqn05fPtU3QYQx1WNgMCzNeudlKycPRT72aZBsfJxSv+jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tp1+gX+amAr+1ziL64iS6Ssr1zTGx3oYJOdpME45fM=;
 b=JbE27Zkigsj8xKYsBnb+5qPTUeLOx74IdpMZkH5MlsjGNd/8XCs+YoA5pRfCyMDLVtuT1Isgx/2EpKAw98Ez4qOMhoHojbO9IxydDQMSL05PLMXnPd4246fSFl9txlKBExbpmMtThR8CbrT4XGR6UXcpPbuzSk7XB5OYAYhZ6SsDOTAV0nPpEGgWq54BxljzzACPHJVhj/POzyI1d/s9c2ZsJIcuylneyh2fFCekV08gBEIV0qC6+Qgqy8S0Z7tqMwKNHEYEqqdckPetRBqba87Az2i9Jv/rsgWi5nlrHrs70VseQrhK3K2cqy4fiF8rqqxGotyJQ1GzyovqfHe48Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tp1+gX+amAr+1ziL64iS6Ssr1zTGx3oYJOdpME45fM=;
 b=HiMjXNLIasO0ezQBRTx43QqsLUs+eUz6D8Gfdv29iZQRWzDH7ymLseyuJhFfVIl9Yl7jMr/JjrkJZkY5i6hRWzeipim15EqvtOeshbCG+rjuYfNlwnUReC2xr57Gh2M0hxhseeXTuu9+mQWlHKFbQPlHBv36whbfLYZJvFD2BY0=
Received: from DM6PR11MB3211.namprd11.prod.outlook.com (2603:10b6:5:58::27) by
 DM6PR11MB3003.namprd11.prod.outlook.com (2603:10b6:5:71::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Mon, 16 Mar 2020 13:56:32 +0000
Received: from DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::a9c1:5ee8:394f:6cd1]) by DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::a9c1:5ee8:394f:6cd1%7]) with mapi id 15.20.2793.023; Mon, 16 Mar 2020
 13:56:32 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Lyude
 Paul <lyude@redhat.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp/mst : Get clock rate from sink's
 available PBN
Thread-Index: AQHVxHXpCY0YxHASsUOfGr3kpjgZN6hEa02AgAc8o5A=
Date: Mon, 16 Mar 2020 13:56:32 +0000
Message-ID: <DM6PR11MB3211D565FA22058AFDF195F0A3F90@DM6PR11MB3211.namprd11.prod.outlook.com>
References: <20200106174156.11081-1-shawn.c.lee@intel.com>
 <65e0bfc983551ae016f43c5f8654b4adbbd00842.camel@redhat.com>
In-Reply-To: <65e0bfc983551ae016f43c5f8654b4adbbd00842.camel@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=shawn.c.lee@intel.com; 
x-originating-ip: [59.115.246.17]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ce5575a-ea29-49b1-f9e4-08d7c9b1d5c3
x-ms-traffictypediagnostic: DM6PR11MB3003:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB300314F86E58FD1AC36901C1A3F90@DM6PR11MB3003.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(366004)(396003)(376002)(39860400002)(199004)(316002)(52536014)(6506007)(26005)(186003)(33656002)(7696005)(86362001)(110136005)(66946007)(9686003)(55016002)(66446008)(66476007)(64756008)(66556008)(76116006)(107886003)(478600001)(4326008)(71200400001)(2906002)(81166006)(81156014)(8676002)(8936002)(8796002)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR11MB3003;
 H:DM6PR11MB3211.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dkx2u/JrgZX1LLuRIv5oiUQcE7H6eifsPijdOGpQaA5bSzizxJs0btkxgKlaRiTEf9r7XfA7g91QZs4hHBcMNUrkUfxPHsraYmPkBS9fpGFfO/jT7XEXVyNhcwFBjInpVVHHggqpGxrIYljRDgZYa02yGk2CMeneBMwX/R+lNHDSN8WShHSgsvBc2DZZ3Qdw2q+193l5jUes+cl+Abgxz67vdrxvIOLmixAi3YZ5UMXpaYDcBTuCS3kP3CZ9Xa5m4dlxwhn1NYZcBk32HDcWMFgIHyDI76N9o4tY4mDngl5Am6426qayHueIOuZJcG/jvJyWiuvlv77hO1oCqig2+WcpvTvp1N6FSnMA7zyOycra/mrHUtArNLoYoslS+8erz1wZRoOBs+ZyG6jq59G5cEDf2ZpnZ/LHU15VFAUWK2WFsxOq+3XOkCftLkHfSnzodkqYGZYR27GHxLa8DlJR4zLuo8gNn5gkyBq1cn6CC/w=
x-ms-exchange-antispam-messagedata: dgsbn4haOrIh86cq3G/lswkidiUAlbRwh8s8GlwmdtLCpNWi+uAhjSqh93QDhmrtdxt6qwyGAcbCzTV9Cx8+CLfmXRRRLsgttllhnJS5LL00zn1lewX6U2HejO479mQhuX6n8nHiVC2U5kvPZV+zRQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ce5575a-ea29-49b1-f9e4-08d7c9b1d5c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 13:56:32.7750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pQ7fbIM1WL6MuS9UQdad90f+nNSC75z/DZcH8gM2KarpKtFxMVj6YFTHS1J02KfEsSb8ZDk2HALwBJydaJ/fjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3003
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp/mst : Get clock rate from
 sink's available PBN
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
Reply-To: "20200106174156.11081-1-shawn.c.lee@intel.com"
 <20200106174156.11081-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Wed, 2020-03-11, Lyude Paul wrote:
>On Tue, 2020-01-07 at 01:41 +0800, Lee Shawn C wrote:
>> Driver report physcial bandwidth for max dot clock rate.
>> It would caused compatibility issue sometimes when physical bandwidth 
>> exceed MST hub output ability.
>> 
>> For example, here is a MST hub with HDMI 1.4 and DP 1.2 output.
>> And source have DP 1.2 output capability. Connect a HDMI 2.0 display 
>> then source will retrieve EDID from external monitor.
>> Driver got max resolution was 4k@60fps. DP 1.2 can support this 
>> resolution because it did not surpass max physical bandwidth.
>> After modeset, source output display data but MST hub can't output 
>> HDMI properly due to it already over HDMI 1.4 spec.
>> 
>> Apply this calculation, source calcualte max dot clock according to 
>> available PBN. Driver will remove the mode that over current clock 
>> rate. And external display can works normally.
>> 
>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> 
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 27 
>> ++++++++++++++++++---
>>  1 file changed, 24 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 3b066c63816d..eaa440165ad2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -550,6 +550,27 @@ static int intel_dp_mst_get_modes(struct 
>> drm_connector
>> *connector)
>>  	return intel_dp_mst_get_ddc_modes(connector);
>>  }
>>  
>> +static int
>> +intel_dp_mst_downstream_max_dotclock(struct drm_connector *connector) 
>> +{
>> +	struct intel_connector *intel_connector =
>> to_intel_connector(connector);
>> +	struct intel_dp *intel_dp = intel_connector->mst_port;
>> +	struct drm_dp_mst_port *port;
>> +	u64 clock_rate = 0;
>> +
>> +	if (intel_dp->mst_mgr.mst_primary)
>> +		list_for_each_entry(port, &intel_dp->mst_mgr.mst_primary-
>> >ports, next)
>> +			if (port->connector == connector) {
>> +				clock_rate = ((u64)port->available_pbn * (54 *
>> 8 * 1000 * 1000)) / (64 * 1006);
>> +
>> +				// FIXME: We should used pipe bpp to do this
>> calculation.
>> +				//        But can't retrieve bpp setting from
>> drm_connector.
>> +				return (int)(clock_rate / 24);
>> +			}
>> +
>> +	return to_i915(connector->dev)->max_dotclk_freq;
>> +}
>
>Hi! So-there's no need to loop through the ports like this, just use the drm_dp_mst_port struct that's associated with intel_connector->port directly (feel free to change the declaration to `struct drm_dp_mst_port *port` instead of `void *port`, it's not illegal to dereference it anymore I promise!
>
>Additionally - you don't want to use pipe_bpp here at all. My advice is to use the hard-coded bpc we currently have for MST. Once you guys have retry logic to dynamically select the bpc depending on the available bandwidth, I'd move this check over to using the smallest possible BPC reported by the connector's display_info. Remember we're checking if -any- variant of each mode is somehow possible, it's ok and expected for modes to potentially fail at higher BPCs.
>
>Anyway-this looks fine otherwise, but like Ville mentioned available_pbn isn't the thing that we want to be using here. I've got support for using full_pbn instead and that should be pushed sometime today or tommorrow (dealing with some topic branch weirdness with dim right now). This is the patch series,
>jfyi:
>
>https://patchwork.freedesktop.org/series/74295/
>
>Also-feel free to write a drm helper to do these mode_valid checks for mst, if it's feasible and not overkill
>

Thanks! I will refer the change from patch series you mentioned. Hardcode bpc to 24 and use full_pbn instead of available_pbn.

BTW, this patch series still on specific branch (topic/mst-bw-check-fixes-for-airlied) and not merge to drm branch yet.
It would be better to wait the patches merged into drm branch. After that, I can commit new patch to fix issue. Any comment?

>> +
>>  static enum drm_mode_status
>>  intel_dp_mst_mode_valid(struct drm_connector *connector,
>>  			struct drm_display_mode *mode)
>> @@ -557,8 +578,7 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
>>  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
>>  	struct intel_connector *intel_connector = 
>> to_intel_connector(connector);
>>  	struct intel_dp *intel_dp = intel_connector->mst_port;
>> -	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
>> -	int max_rate, mode_rate, max_lanes, max_link_clock;
>> +	int max_rate, mode_rate, max_lanes, max_link_clock, max_dotclk;
>>  
>>  	if (drm_connector_is_unregistered(connector))
>>  		return MODE_ERROR;
>> @@ -572,7 +592,8 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
>>  	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
>>  	mode_rate = intel_dp_link_required(mode->clock, 18);
>>  
>> -	/* TODO - validate mode against available PBN for link */
>> +	max_dotclk = intel_dp_mst_downstream_max_dotclock(connector);
>> +
>>  	if (mode->clock < 10000)
>>  		return MODE_CLOCK_LOW;
>>  
>--
>Cheers,
>	Lyude Paul (she/her)
>	Associate Software Engineer at Red Hat
>

Best regards,
Shawn
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

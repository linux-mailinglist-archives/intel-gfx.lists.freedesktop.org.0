Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A811351C2
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 04:11:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8CB6E37F;
	Thu,  9 Jan 2020 03:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EB756E37F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 03:11:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 19:11:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,412,1571727600"; d="scan'208";a="371184095"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga004.jf.intel.com with ESMTP; 08 Jan 2020 19:11:17 -0800
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jan 2020 19:11:16 -0800
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX159.amr.corp.intel.com (10.22.240.24) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jan 2020 19:11:16 -0800
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.50) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 8 Jan 2020 19:11:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MHo+ICVr5/z6JBjcEem0WrjSSVkPz+XgQVUStM0ecJtUdnExBZUoKn68FfyRB7iuK5qy8nWAIOw/7gN9buGdBa6xFHikFBW6TZWClxGqMdP0riRV6CkYe+gnVvDA5NB8z7es2ecKGnWX4Voyorqa+MCdrpS8ouqWAuoCTSbr7nw7w2GItZeCAa29MF3L8THzuL0M3YAvPifyORa2giwt162uanx+U3stZHWJ/uutl2XYcuf2cH/pUi6+WVQKZB1gHEhXeeRQ9FzZGYyFO/mGIsGS1MBqnfQMPxIPNQJuj+EYJ996Olpz/os6cssTVLdOCTeZO5/rZCgTBu2mAnr9GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YYVTggn51CqA8CXJyebTj96Or2psJPvd1k5gFq3kFAk=;
 b=SIms0DOP1bW23o4mXGC7ct24M07EzQ2KIG78VY72oRE2S/voeWetRrX+vkNZME2Lnz5g9Qni8FZvLdldCkSaiw4IdQHDn3z3NDd2zgpk0ccKLqeCeoA4MjastaNai8phkXtsLZQgFbc4BLGsWUL22ThCrdxv4I171P0bfgUURz3DVMSOJdI1FvmikuLbYNJOqWDtxJ0UV6nkjvgA9TR0fpUs25Pq6JSXr25uqfvvAKBK5J/3NxOcwWnpCkWBxbSKZXqKnYwzOkVr3ABDfz5GpSdf1tOHXaaT39817RieoZZiJ2tG2iaYUnQKo8DI9tMHS8ggxgss4EJ2dqlcdwQsCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YYVTggn51CqA8CXJyebTj96Or2psJPvd1k5gFq3kFAk=;
 b=f8YBuBKxU9Y2wPpYIfMXAZiLe1MDTazNpbZc5Py1WP+BLfjgV3u6+Bf+dfFk+mu3sVO6n+OsCpLoge8ZZrIlHOksc0a6/4O3xqIX8TYW/ev0qSAPF256rj+juUM1yagT4V3ajhdstgWWfTuVOQ01jquk2vuVRGtwNix90zNYRAc=
Received: from DM6PR11MB3211.namprd11.prod.outlook.com (20.176.120.27) by
 DM6PR11MB3003.namprd11.prod.outlook.com (20.177.220.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Thu, 9 Jan 2020 03:11:14 +0000
Received: from DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::71c5:efdc:c87a:456c]) by DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::71c5:efdc:c87a:456c%3]) with mapi id 15.20.2623.008; Thu, 9 Jan 2020
 03:11:14 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dp/mst : Get clock rate from sink's available
 PBN
Thread-Index: AQHVxHXpCY0YxHASsUOfGr3kpjgZN6fg5BqAgADF4iA=
Date: Thu, 9 Jan 2020 03:11:14 +0000
Message-ID: <DM6PR11MB32111E860B5CA3370E8747C7A3390@DM6PR11MB3211.namprd11.prod.outlook.com>
References: <20200106174156.11081-1-shawn.c.lee@intel.com>
 <20200108151551.GL1208@intel.com>
In-Reply-To: <20200108151551.GL1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=shawn.c.lee@intel.com; 
x-originating-ip: [192.55.52.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82591ce2-b741-4d21-5782-08d794b19610
x-ms-traffictypediagnostic: DM6PR11MB3003:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB30039B576CEA7816EA7C5D85A3390@DM6PR11MB3003.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(366004)(346002)(376002)(396003)(136003)(189003)(199004)(7696005)(316002)(6506007)(5660300002)(52536014)(26005)(71200400001)(33656002)(55016002)(9686003)(81156014)(8676002)(81166006)(86362001)(8936002)(8796002)(6916009)(54906003)(4326008)(66556008)(64756008)(66446008)(66946007)(66476007)(76116006)(478600001)(2906002)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR11MB3003;
 H:DM6PR11MB3211.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nLNhUEXmz1t/sORHeZ6opLHzL3Dbh4PB2KwpssrRJTmhysMttSjpKiBhUYQg4y1iQzIhPRRgcUccviHXXJphyVpHwlgzy7YLTOnfhrGb6HHBw+D5Z1o0Q0JJjGrOre9JRbi42HA91lRufHwNVh70VbOMO9AdyNlXY0kqbZGSjSUXnWZq9lZQvUEppgJAamS+vBE0QRCoouN/MOpoAEs3Gvu+D1xRy1Y7nbelJ2JMFbqZ40XYyyG76/v337bL9z3pmZzVIcWSw0U5pHScSzKBlKGh+gJ+DdbBn8QWVf0WGvQ3gAOdfUhh+npuFysPlvtW84m7JFwUrT79KwWZzorZfo4JblpYPGoIYodbOR7rYnGvx5qyxqJ/b2L35LfX7iAetpMeDenUoZVA3XWcAm2/OK7WZt7vyqqKeBvCVy8GBHrrk0/mZz6986+uYZp70FRu
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 82591ce2-b741-4d21-5782-08d794b19610
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 03:11:14.2281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RqrYC4/qfBJrFjtPy95SPWgfgM58BjcZmcLNgR8DYmdo9h2ci77XYlGqkFHu6Hu60NJ5Cx8f3FGh9fdShUNE1A==
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

On Jan. 8, 2020, 3:15 p.m, Ville Syrjala wrote:
>On Tue, Jan 07, 2020 at 01:41:56AM +0800, Lee Shawn C wrote:
>> Driver report physcial bandwidth for max dot clock rate.
>> It would caused compatibility issue sometimes when physical
>> bandwidth exceed MST hub output ability.
>> 
>> For example, here is a MST hub with HDMI 1.4 and DP 1.2 output.
>> And source have DP 1.2 output capability. Connect a HDMI 2.0
>> display then source will retrieve EDID from external monitor.
>> Driver got max resolution was 4k@60fps. DP 1.2 can support
>> this resolution because it did not surpass max physical bandwidth.
>> After modeset, source output display data but MST hub can't
>> output HDMI properly due to it already over HDMI 1.4 spec.
>> 
>> Apply this calculation, source calcualte max dot clock according
>> to available PBN. Driver will remove the mode that over current
>> clock rate. And external display can works normally.
>> 
>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> 
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 27 ++++++++++++++++++---
>>  1 file changed, 24 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 3b066c63816d..eaa440165ad2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -550,6 +550,27 @@ static int intel_dp_mst_get_modes(struct drm_connector *connector)
>>  	return intel_dp_mst_get_ddc_modes(connector);
>>  }
>>  
>> +static int
>> +intel_dp_mst_downstream_max_dotclock(struct drm_connector *connector)
>> +{
>> +	struct intel_connector *intel_connector = to_intel_connector(connector);
>> +	struct intel_dp *intel_dp = intel_connector->mst_port;
>> +	struct drm_dp_mst_port *port;
>> +	u64 clock_rate = 0;
>> +
>> +	if (intel_dp->mst_mgr.mst_primary)
>> +		list_for_each_entry(port, &intel_dp->mst_mgr.mst_primary->ports, next)
>> +			if (port->connector == connector) {
>> +				clock_rate = ((u64)port->available_pbn * (54 * 8 * 1000 * 1000)) / (64 * 1006);
>
>IIRC avaible pbn is soime kind of dynamic "how much bw we have left
>currently" so we don't want to use it for this purpose. If we really
>wanted to do this we'd have to refilter the modelist and generate
>hotplugs whenever the bw allocations change.
>
>In the current design what should happens is that we check that we
>have enough bw when doing the modeset, and if that fails userspace
>is supposed to handle the situation in some graceful manner.
>
>Also locking totally missing.
>
>So nak.
>

Thanks for comments! In my opinion, branch device (MST hub) would tell
source driver the available PBN for each extended port it owns.
And source driver will renew it everytime after HPD coming. 
That's why we should refer the PBN report by MST branch to calculate
dot clock rate and make sure sink can support the resolution while
creating mode list.

>> +
>> +				// FIXME: We should used pipe bpp to do this calculation.
>> +				//        But can't retrieve bpp setting from drm_connector.
>> +				return (int)(clock_rate / 24);
>> +			}
>> +
>> +	return to_i915(connector->dev)->max_dotclk_freq;
>> +}
>> +

Here try to get the max dot clock according to PBN value from sink. If driver can't
find it, will return the orginal max_dotclk_freq.

>>  static enum drm_mode_status
>>  intel_dp_mst_mode_valid(struct drm_connector *connector,
>>  			struct drm_display_mode *mode)
>> @@ -557,8 +578,7 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
>>  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
>>  	struct intel_connector *intel_connector = to_intel_connector(connector);
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

Then driver would the clock rate exceed max_dotclk or not to create mode list.

	if (mode_rate > max_rate || mode->clock > max_dotclk)
		return MODE_CLOCK_HIGH;

When connect to MST hub with HDMI 1.4 output. If user connect the monitor with
HDMI 2.0 capability. EDID from sink shows it can meet DP 1.2 requirement and
source set the prefer resolution (4k@60fps) to display. But MST hub can't
output the video data via its HDMI port due to this resolution already exceed
its ability.

This change may increase source driver compatibility at MST mode. Please give us
advice if more concern.

>>  	if (mode->clock < 10000)
>>  		return MODE_CLOCK_LOW;
>>  
>> -- 
>> 2.17.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

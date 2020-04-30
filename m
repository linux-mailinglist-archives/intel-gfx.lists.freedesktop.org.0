Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 046001BEE5C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 04:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38AD16E898;
	Thu, 30 Apr 2020 02:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3BBE6E898
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 02:37:10 +0000 (UTC)
IronPort-SDR: 9BpGWetoa/O25X72eG4axw66vBZd/C/KFZNuVk5PokOlJG3IZPhwCyZYkFiA7AYhH4qHqPIcM/
 bsi0RphttpKg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 19:37:10 -0700
IronPort-SDR: ZJZdCFS25zvis8I3yeNJnG93/6ZO+GpsVRGxHdglD4DKqGMqCG1H+RgcA2s9TPnPcRAR5LJXoL
 q2kCkx0h8ByA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,333,1583222400"; d="scan'208";a="258152419"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga003.jf.intel.com with ESMTP; 29 Apr 2020 19:37:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 29 Apr 2020 19:37:09 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 29 Apr 2020 19:37:09 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 29 Apr 2020 19:37:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 29 Apr 2020 19:37:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P47+SYFE2vu9UlXtWHbLavpnDZ4MNmf76Qt4ok/8Vj1zpqTSwJ/WJ/3oxqgwQO+nMcyTKVKXwaKrIJcLxfWLEzhshCaitRhFOe3ltz/Shj2kse7XcshQLIVNI7X909JlXieWiBbqJCuBiiqg5cNxkSft/UiL/odyL1qST4EM9ItK4gi5habFKKU8eoKH/a+pgzPIm144PSfhu/2JGGthJ1kCwp/+sYKMau+TdlMAZAuZu1bSj/9FyCz5bH5lrej4W9laFjerbNokuKl24kSpsSk04eKXS7pVGuDD+wKNterqT9dBHYP4YuNZYLvu1TA2bg0Bw9lUPEfAznUt/0o5mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m4yXUCRsQOvrTeaj6A8+Xzan+H0A2JPk9s57yf1TMIA=;
 b=noHE96FgbO0bSbi2zB9M5H3Qv3EZR1/o18mcnSPZ1ERwGDB/8Zg0jmr5dZHq7SwMs+btvwkDv47wGByudOHYX1nKiLpMEpDWlmzJ6d538ir4NNLVPdRnBNkiZckcFyADafCY8n6U0q7TJN+Zy+EoQ8PzErFOfkWdPvaPMHTXDKk/DtrVEZOnyaMS40KbuujRMVPzWPKC5I95vSkGW5QQmLKZbEzbwv7WntyiLz76FlEX4YnPrVrv8KnITzlwjJDe4immx50wLadqaWgxhW306IpzDHQpV4m1P85Dmb9ycz8vyb1wPqq+el6mCgfcVVRYVeCFRpNfI2i3Vuu4Wq8s1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m4yXUCRsQOvrTeaj6A8+Xzan+H0A2JPk9s57yf1TMIA=;
 b=s+nv5pe9bqQGVoNk12Qr9nRKQM8JHUjkKZNZjLMMKz1l3NuLQ4+lMvflTx3QSR5WbbjeXJ7np37ShSYdgZsKR4dWUGFkCm5pv5irP9mg9qUIT3IpdAaCgtsKS1qjg/b30q9IqBJzwDIDiZvqcrcmnmirZKaZj+VEASs4L2zeZqk=
Received: from BN6PR11MB1588.namprd11.prod.outlook.com (2603:10b6:405:e::13)
 by BN6PR11MB1540.namprd11.prod.outlook.com (2603:10b6:405:d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Thu, 30 Apr
 2020 02:37:04 +0000
Received: from BN6PR11MB1588.namprd11.prod.outlook.com
 ([fe80::b514:64cf:f469:dcc6]) by BN6PR11MB1588.namprd11.prod.outlook.com
 ([fe80::b514:64cf:f469:dcc6%6]) with mapi id 15.20.2937.028; Thu, 30 Apr 2020
 02:37:04 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Lyude Paul <lyude@redhat.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mst: filter out the display mode exceed sink's
 capability
Thread-Index: AQHWFLwnGN/umVG7OUWdyvcd3EqKbqiIw+6AgAhCy5A=
Date: Thu, 30 Apr 2020 02:37:04 +0000
Message-ID: <BN6PR11MB15883B388981ADA59DAEB97FA3AA0@BN6PR11MB1588.namprd11.prod.outlook.com>
References: <20200417212408.19649-1-shawn.c.lee@intel.com>
 <078627d6dff5e01868771b5b2158b75446200fd9.camel@redhat.com>
In-Reply-To: <078627d6dff5e01868771b5b2158b75446200fd9.camel@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [1.161.40.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9db50afa-96c5-41d3-d451-08d7ecaf5eac
x-ms-traffictypediagnostic: BN6PR11MB1540:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB15406B0881536ABDAB52F22FA3AA0@BN6PR11MB1540.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0389EDA07F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1588.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(346002)(376002)(136003)(366004)(396003)(7696005)(66556008)(76116006)(64756008)(66946007)(26005)(66446008)(478600001)(66476007)(55016002)(110136005)(54906003)(5660300002)(316002)(2906002)(52536014)(33656002)(8936002)(6506007)(71200400001)(8796002)(186003)(4326008)(8676002)(86362001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Tq/iUmJa0VqZ8++qmXJkjfKOv2Nx+Z5hx3RDhjbj4TO7zrO40GFkvfexn8wdquK65Zin+GNVIt0eN7AGjQAeGiQgQ7Npo4fcS78ZjJ+N+KlG1SDJvrcFWOxQBtpKlPj1Kv0x033Xgrt8804Do3BUdGIfFQKTmARJvaJlfEdIiq1qepVBM30wgyMr7LAGDAXk7fqM4TwcZSltWS16QFQvO1mVzEO9k3oNSVrT7ay4uNOn+GQX9cKPK4fOjouW9Dl7LHoLy16Guc5u3FdT+IKrR0RKhRzdHYLilwXC+ewgr3yDGrU/sgLvoMeWbzwPt9vdFGR1cR1/KzinnCPRhEUDCDUHW7fPfYkmL9J+XrCV/PLCnphYF4j3clC95s5bNIDK5ij+PhgePd0ooSk6s2UnNBuSQJjzl+g+R2ngh+N/mAYqeTbIHvhGqoo1Zb0YfN+
x-ms-exchange-antispam-messagedata: +w3c+Mq65w7LWwfEj+puuS9IjWI7SxaXvPR1Q9lXxCZoeUDKTOrIQyoF3PJEiVe1wAeGwF5xLBurS2oc7Mj5Q+ekav5EeqOyn8Tvw5CbKVXagLQXBFJKMccGl2B7aBKO8+7y+EosOl8kb62G452LNbZD1KTeMbDPgvgDC7YdbICw0M+FNa303oBSb/RYJHA5WpAgc23p7o4KjZPeYK1d3pGU4UpNnduJOQjl6MbpSo1nOPr/77iZWTIddwXaO9LB+VQduHY1lfAfgumLgIHqBDbQNE2gK1Y1eSPejGHana3V0emV+9nGLg0xFd8rv61SBtSOQbxRW6vwE/DFZl1cjdVwOH87yzJNAKOor/0mckDhqrIVDAQ+7TfvrYUoYNukBT295iIbcwVI/EQrEUkI1ebO5ORDvQSbyNI3hLV1m1C7dVAAadMt/N7oFAuuV7Q8ZJGmk30WGDE9onhIa5jmuECUJ+TlIa2eEqHUadMKK3k/aCAHi64H6iHVqxQ0sMVkeGo8a6ucV8ECJePOCqwbIsjwj1uzE3Qbchns1x0tQOCU8Mz0Xvn4rDyKCV0bAZv6UhqmcV43/QC+v8/9CvSW/UoygTcFXxvYmMCeZk8rPy4IvG2NpwBFm7oYAljXiOxwYeNuZtkgDWnF20AjZDhq7Zawh+RzWGR9ez2IfbJxMcrFjEiuNYLPDA/HtTgv7ZTryHwqkaODM2bsrVoETPaqRgJZxgjZIViGIT84H2843QeyXy4NOrnDmMtHYpU1zuFQJ+JwaCZMu+u53A6oz0PgLuvgYfnI2+qHzRx7NevsrHk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9db50afa-96c5-41d3-d451-08d7ecaf5eac
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 02:37:04.4013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: duhI1FkMKEBNADSzS+111FtRJWRkpvx+fL+bY3+Gy5mRfw//2XxNanPaarVGBwpjKd0QTfw8oWewwsUGwScrrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1540
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: filter out the display mode
 exceed sink's capability
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
Reply-To: "20200417212408.19649-1-shawn.c.lee@intel.com"
 <20200417212408.19649-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Sat, 2020-04-25, Lyude Paul wrote:
>
>Hi! Sorry this took me a little while to get back to, I had a couple of MST regressions that I had to look into
>
>On Sat, 2020-04-18 at 05:24 +0800, Lee Shawn C wrote:
>> So far, max dot clock rate for MST mode rely on physcial bandwidth 
>> limitation. It would caused compatibility issue if source display 
>> resolution exceed MST hub output ability.
>> 
>> For example, source DUT had DP 1.2 output capability.
>> And MST docking just support HDMI 1.4 spec. When a HDMI 2.0 monitor 
>> connected. Source would retrieve EDID from external and get max 
>> resolution 4k@60fps. DP 1.2 can support 4K@60fps because it did not 
>> surpass DP physical bandwidth limitation.
>> Do modeset to 4k@60fps, source output display data but MST docking 
>> can't output HDMI properly due to this resolution already over HDMI 
>> 1.4 spec.
>> 
>> Refer to commit <fcf463807596> ("drm/dp_mst: Use full_pbn instead of 
>> available_pbn for bandwidth checks").
>> Source driver should refer to full_pbn to evaluate sink output 
>> capability. And filter out the resolution surpass sink output 
>> limitation.
>> 
>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: Lyude Paul <lyude@redhat.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 24 
>> ++++++++++++++++++++-
>>  1 file changed, 23 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 61605eb8c2af..68697f463dab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -609,6 +609,26 @@ static int intel_dp_mst_get_modes(struct 
>> drm_connector
>> *connector)
>>  	return intel_dp_mst_get_ddc_modes(connector);
>>  }
>>  
>> +static bool
>> +intel_dp_mst_mode_clock_exceed_pbn_bandwidth(struct drm_connector
>> *connector, int clock, int bpp)
>> +{
>> +	struct intel_connector *intel_connector =
>> to_intel_connector(connector);
>> +	struct intel_dp *intel_dp = intel_connector->mst_port;
>> +	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
>> +	struct drm_dp_mst_port *port = (to_intel_connector(connector))->port;
>> +	bool ret = false;
>> +
>> +	if (!mgr)
>> +		return ret;
>> +
>> +	mutex_lock(&mgr->lock);
>
>This isn't the right lock for this - mgr->lock protects the topology layout (e.g. drm_dp_mst_port.mstb, drm_dp_mst_port.next, and drm_dp_mst_branch.ports). port->full_pbn is protected under &drm_dp_mst_topology_mgr.base.lock (not drm_dp_mst_topology_mgr.lock), so you need to first add a version of .mode_valid() to struct drm_connector_helper_funcs that accepts a drm_modeset_acquire_ctx so you can use that to safely grab &drm_dp_mst_topology_mgr.base.lock.
>

Thanks for comments! I will correct the lock to protect port->full_pbn.

>> +	if (port->full_pbn)
>
>Also - there's no reason to check if (port->full_pbn) here, so long as you're holding the right locks this should always be populated by the time we create the drm_connector for the MST port (if it's not, that's a bug that needs to be fixed).
>

Just want to make sure full_pbn value is greater than zero. As you mention in another patch, it's hard to predict sink report full or available PBN properly.

>> +		ret = (drm_dp_calc_pbn_mode(clock, bpp, false) > port-
>> >full_pbn);
>
>Finally - I'd say we should probably have a separate patch to add a helper for calculating the PBN and checking it against port->full_pbn. Maybe something that looks like this:
>
>int drm_dp_mst_mode_valid(struct drm_dp_mst_port *port, struct drm_modeset_acquire_ctx *ctx, int clock, int bpp) {
>	int ret = MODE_VALID;
>	/* TODO: DSC support */
>
>	/* ...try grabbing locks here...*/
>	if (drm_dp_calc_pbn_mode(clock, bpp, false) > port->full_pbn)
>		ret = MODE_CLOCK_HIGH;
>
>	return ret;
>}
>
>That way we might be able to add some checks for DSC capable connectors later once I've migrated most of the DSC code from amdgpu into the MST helpers

This sounds good. DRM driver provide a public function call for different vendor to check the current mode exceed PBN's limitation or not.

>> +	mutex_unlock(&mgr->lock);
>> +
>> +	return ret;
>> +}
>> +
>>  static enum drm_mode_status
>>  intel_dp_mst_mode_valid(struct drm_connector *connector,
>>  			struct drm_display_mode *mode)
>> @@ -631,7 +651,9 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
>>  	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
>>  	mode_rate = intel_dp_link_required(mode->clock, 18);
>>  
>> -	/* TODO - validate mode against available PBN for link */
>> +	if (intel_dp_mst_mode_clock_exceed_pbn_bandwidth(connector, mode-
>> >clock, 24))
>> +		return MODE_CLOCK_HIGH;
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

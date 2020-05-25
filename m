Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B001E0639
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 06:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF13989C46;
	Mon, 25 May 2020 04:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA2F089C46
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 04:59:25 +0000 (UTC)
IronPort-SDR: B0qVH6mmkF9ylwasAlxzbdSD33QJ/BmH4pdfWvSEQg1rdU5q/8yt21LEP3C4elgVYD0HyJq0lG
 A5S1xwMXOWBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2020 21:59:25 -0700
IronPort-SDR: vjqshTgKE3413Tm4PQlRcZsR2zJvgJ4Mv9x0qhtvTNjOwigoBuR5xqooY8h0g2F6urHZn8rPIn
 QRyHETUPry3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="266041234"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga003.jf.intel.com with ESMTP; 24 May 2020 21:59:25 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 24 May 2020 21:59:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 24 May 2020 21:59:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L9Vu5utXJ9J/JVtG+yNepKEq2aVYThExDiAZjwRA+YTAbwk05X1UdLMmN3iv0os5L1wekZHpnfBsr0u/7kp79q83UJoBJeRGTdPvJij/S/FnN3Up8XhqVGbqGGB+mmyYoPziILyiNAzKen3BDPDs8ZeX+MqpfnS/4R24CGqy/hHr7puQYHMHlS/ieTA6UwXYFdj48BZLLYVKQvW2Qtr+DUk1Nivz+UzIo3KHIc0jYqPTWgHp6fPIhL2RkWNyymwTAFuCh9bYAeGSkSFBBhkJ7AzuRApNb3hwJJqo8HyMK8kmiutjc04hLjj2f8X4VWwa7LuCVmNQTjCdU8oS8w2oZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jxDQqgHMqXywoytf1UC60sTM4Tzf5qBzr2ehjwTNJdY=;
 b=ASN1xiWNKzPzf0XWU6Fr/GZxfLKh5jifsL+B71/3Gh/ehQyDOv+IfX5XEZgdyKI4X+Hqgj1hZHPx93ic0qYTcNf8sztWJEjutwDPK/gEJbehZa6Iglid2pUjjlLrpYRQiz1eIIgqQViMsrL+Xp7q9fZf2v8AYPmFuGkNnDFOdiP9kma//YJe8Bowt3oHx+PZxuOodit+yQUTirGUuiH5r2iKzta+ija4RfUIFK0sFkTfipE9VqgoJ/4/6vpaNAvk7rJqRyCHFCukuaBOYTOhSwF5+wdYC9MccrKbu9K95e2nESRprXeRCldNXgKnwNhfjy8IrRQJMvj1usUKFxAGjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jxDQqgHMqXywoytf1UC60sTM4Tzf5qBzr2ehjwTNJdY=;
 b=ivYrH4Ypdw5oBMTCjxRBFvweeyFocLTcQAmVs3Cl7G+8KdbJ3j9/8cyCsYUZbDrNi6/2DcJxvfy1D7clXSzN9I9vOhL8h5lKrC2WHPgW8N8bMguTJwIw/Ocuxgc7ZEqqi3hHIINzpeZh2HyeSv68x+YoeukqA15ERMFu62dtloo=
Received: from BN6PR11MB1588.namprd11.prod.outlook.com (2603:10b6:405:e::13)
 by BN6PR11MB1972.namprd11.prod.outlook.com (2603:10b6:404:105::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Mon, 25 May
 2020 04:59:22 +0000
Received: from BN6PR11MB1588.namprd11.prod.outlook.com
 ([fe80::b45b:e45e:f6b2:9120]) by BN6PR11MB1588.namprd11.prod.outlook.com
 ([fe80::b45b:e45e:f6b2:9120%9]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 04:59:22 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "lyude@redhat.com" <lyude@redhat.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/mst: filter out the display mode exceed
 sink's capability
Thread-Index: AQHWLZGjIjoGkfmNNkCMqFTurOy+Yai0dIEAgAAA5oCAA9B8kA==
Date: Mon, 25 May 2020 04:59:22 +0000
Message-ID: <BN6PR11MB1588EE03087C7DA476DEFCF5A3B30@BN6PR11MB1588.namprd11.prod.outlook.com>
References: <20200417212408.19649-1-shawn.c.lee@intel.com>
 <20200519035656.4885-1-shawn.c.lee@intel.com>
 <563ca1af3518cb2b50653b4fd77830718d528826.camel@redhat.com>
 <85e9ded6dd5066d15a0d703d98e72a289c168a64.camel@redhat.com>
In-Reply-To: <85e9ded6dd5066d15a0d703d98e72a289c168a64.camel@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.196]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96215412-326a-4b79-fb7c-08d8006863d7
x-ms-traffictypediagnostic: BN6PR11MB1972:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB197274E4DCAAB5F89B47328CA3B30@BN6PR11MB1972.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0414DF926F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hxJmbJ57g2AKE1Prtb6xpHM5uvL0lcHuvvyHjmSuUFigi1qavz0ALuRvyLfWh3WSMIEDhzzdpHATIsjSvQmHxEC5BlFYsHTxcbNhDOh2mK+INuBmm3bGDBh4JpFzO/zesYVXSw+fqmtQaUm2EJ7LZy2YmYVMiaRuL274XR5yXIHzbqo9/pDz95251fjdiRRyaNxiJuKYrbDBoPKQd4qDr+Si6wuzDF4MJEZIZ11aVQ88DjJ4Zb7MVa/F+ngtlYK1Q3LL3+4zFwryunx/Ds9MAImHHT2XyKP7/B1gaL/WDCWz6JTrh35fI6YbCbW2qqj3D95pY2y/63/bDQFadRaSOs/OrdCeCrdWSs4AP0I7y5I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1588.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(396003)(376002)(136003)(39860400002)(76116006)(5660300002)(66946007)(66446008)(966005)(66476007)(66556008)(64756008)(71200400001)(52536014)(8676002)(110136005)(55016002)(54906003)(9686003)(478600001)(316002)(8936002)(8796002)(6506007)(186003)(4326008)(26005)(33656002)(86362001)(7696005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2gtCh4YCv8TsV1Z2eG6byFdjN/dQCMgXDVzi+lYMkfwtqyJDYspwl0rzrMEDIw7K5RmZurMVRsWFoZAE1jvwOIUxrQMp8KVpcRZFEKqA4FmfGz035xnI0iXvYQ3HYP5B+K3rr3P7lFCHmeJTksVkSkmPg8B6JYXZSElLiyvXF066VYxK8jefoUO6A00tPa/m0FSf7jDcTS+pNKq5IZAiscTv+RG5nDSJPJanyE9Yks9KBO7LLSzdyj5lPiI61QSrjkaA+M/Cela53FxUKTiPLGRVI/e1QZtdsuczpBo3n06Zh+Z5cT89rh4g645nSkmBuuQ9ImbnjCSWLX68ePO8LBaEvVI0J2Rs2gQ52mWzUafdSza7FXOx2TAqwNJfQGTrJr6MLzrePB+QhlQyOml+l4/k9Sltk/vzILOKnRGeaufdJSlGwuXnCq+z3J7OEh2Vi0d8ZrVJkKoqXO1gC5sOYBtJ1QZXx8uPGrdEQaL0300=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 96215412-326a-4b79-fb7c-08d8006863d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2020 04:59:22.2423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8LkwUSrQKhs9s/MWAinlFzoxO7180wNWsaZNyBERTdH9rp/lfJ7G0SKL36Gy1NNdxfcaOAp27AYZ6Vs3l/5sbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1972
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mst: filter out the display
 mode exceed sink's capability
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
Reply-To: "20200519035656.4885-1-shawn.c.lee@intel.com"
 <20200519035656.4885-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2020-05-22, 06:35 p.m, Lyude Paul wrote:
>On Fri, 2020-05-22 at 14:35 -0400, Lyude Paul wrote:
>> 
>> On Tue, 2020-05-19 at 11:56 +0800, Lee Shawn C wrote:
>> > So far, max dot clock rate for MST mode rely on physcial bandwidth 
>> > limitation. It would caused compatibility issue if source display 
>> > resolution exceed MST hub output ability.
>> > 
>> > For example, source DUT had DP 1.2 output capability.
>> > And MST docking just support HDMI 1.4 spec. When a HDMI 2.0 monitor 
>> > connected. Source would retrieve EDID from external and get max 
>> > resolution 4k@60fps. DP 1.2 can support 4K@60fps because it did not 
>> > surpass DP physical bandwidth limitation.
>> > Do modeset to 4k@60fps, source output display data but MST docking 
>> > can't output HDMI properly due to this resolution already over HDMI 
>> > 1.4 spec.
>> > 
>> > Refer to commit <fcf463807596> ("drm/dp_mst: Use full_pbn instead of 
>> > available_pbn for bandwidth checks").
>> > Source driver should refer to full_pbn to evaluate sink output 
>> > capability. And filter out the resolution surpass sink output 
>> > limitation.
>> > 
>> > v2: Using mgr->base.lock to protect full_pbn.
>> > v3: Add ctx lock.
>> > 
>> > Cc: Manasi Navare <manasi.d.navare@intel.com>
>> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> > Cc: Cooper Chiou <cooper.chiou@intel.com>
>> > Cc: Lyude Paul <lyude@redhat.com>
>> > Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 30 
>> > ++++++++++++++++++++-
>> >  1 file changed, 29 insertions(+), 1 deletion(-)
>> > 
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > index 74559379384a..6b6f7eef5b68 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > @@ -611,6 +611,32 @@ static int intel_dp_mst_get_modes(struct 
>> > drm_connector
>> > *connector)
>> >  	return intel_dp_mst_get_ddc_modes(connector);
>> >  }
>> >  
>> > +static bool
>> > +intel_dp_mst_mode_clock_exceed_pbn_bandwidth(struct drm_connector
>> > *connector,
>> > int clock, int bpp)
>> > +{
>> > +	struct intel_connector *intel_connector = to_intel_connector(connector);
>> > +	struct intel_dp *intel_dp = intel_connector->mst_port;
>> > +	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
>> > +	struct drm_dp_mst_port *port = (to_intel_connector(connector))->port;
>> > +	struct drm_modeset_acquire_ctx ctx;
>> > +	bool ret = false;
>> > +
>> > +	if (!mgr)
>> > +		return ret;
>> > +
>> > +	drm_modeset_acquire_init(&ctx, 0);
>> > +
>> > +	drm_modeset_lock(&mgr->base.lock, &ctx);
>> > +	if (port->full_pbn)
>> > +		ret = (drm_dp_calc_pbn_mode(clock, bpp, false) > port-
>> > > full_pbn);
>> > +	drm_modeset_unlock(&mgr->base.lock);
>> > +
>> > +	drm_modeset_drop_locks(&ctx);
>> > +	drm_modeset_acquire_fini(&ctx);
>> > +
>> > +	return ret;
>> > +}
>> 
>> Sorry to do this, but this still isn't right :s, and will likely end 
>> up deadlocking. I'm going to write up a fixed version of this patch 
>> and add you in the Co-developed-by: tag, shouldn't take too long for 
>> me to do so I can send it out today
>
>Completely forgot to actually explain what was wrong here - this creates an acquisition context that would be separate from the caller's lock acquisition context. So, drm_helper_probe_single_connector_modes() would grab connection_mutex before calling the hook, and since it's not using an acquisition context we could potentially deadlock when locking &mgr->base.lock if another thread locked &mgr->base.lock before connection_mutex. If we add a lock acquisition context to drm_helper_probe_single_connector_modes and use that to grab &mgr->base.lock, the ww-mutex code can detect the deadlock and give us a chance to back off and try again.
>
>anyway-i'll send out the new version of the patch asap
>

I already test these 2 patches from https://patchwork.freedesktop.org/series/77573/.

Here is my test env.
1. DUT with DP 1.2 support max 4k@60fps output.                 
2. MST hub with HDMI 1.4 support max 4k@30fps output.           
3. BenQ monitor support HDMI 2.0 max 4k@60fps input.            
                                                                
WIth these 2 changes, DUT works meet our expection.             
The resolution from EDID that over 4K@30fps will not be support.

>> > +
>> >  static enum drm_mode_status
>> >  intel_dp_mst_mode_valid(struct drm_connector *connector,
>> >  			struct drm_display_mode *mode)
>> > @@ -633,7 +659,9 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
>> >  	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
>> >  	mode_rate = intel_dp_link_required(mode->clock, 18);
>> >  
>> > -	/* TODO - validate mode against available PBN for link */
>> > +	if (intel_dp_mst_mode_clock_exceed_pbn_bandwidth(connector, mode-
>> > >clock,
>> > 24))
>> > +		return MODE_CLOCK_HIGH;
>> > +
>> >  	if (mode->clock < 10000)
>> >  		return MODE_CLOCK_LOW;
>> >  
>

Best regards,
Shawn
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B5E369489
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Apr 2021 16:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 797CB6E111;
	Fri, 23 Apr 2021 14:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D696E111
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 14:23:55 +0000 (UTC)
IronPort-SDR: BasAOa2vK+3Lpwx9rhBbhTF+bxEB40LeYD8anyezZ1+O0DGsSIGuTfwuR5LrsD0bLB2lvSwAYs
 iVJh1VtTLJKg==
X-IronPort-AV: E=McAfee;i="6200,9189,9963"; a="175560023"
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="175560023"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2021 07:23:55 -0700
IronPort-SDR: OBeUnCqpAp78SioMfjxrnBpXzzC/stcCy3mohwGRQAO3fBFVuVKBtFsMXADqPflls9bl5g66pV
 a7BXOn+LPO2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="525032302"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 23 Apr 2021 07:23:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 23 Apr 2021 07:23:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 23 Apr 2021 07:23:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 23 Apr 2021 07:23:54 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.55) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 23 Apr 2021 07:23:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GpRx2OBHb69mnbe1wf41r8jqsx2/m0DoOsZWCCwyaNNqb5cI+ejEaTjshsjhP9w6c1tSpH2rJ0yzIdoP3QD/HJDXw62gezHSZ/rzrnaP8STBAGsDfEbxDT+3z+R5sWTp6a1x2u/+d5jbij+IDcec9qd4XZddqWIa94ZDG5lDSi0CSYgVlFAc9oQZroaiFs562vVxvCnWDO2jGHnQsepFOuQdaKj2+52oMWAXE9MKZO03JQ7lxuFYRb5PuurZE6IlzTkHYLH/JE/qrSeEEVM9JIEsk/A3IL/TXb8zQ7/hqFvRL0X2SnnvPNV4jFHjeHCMB6/DV0oy3+17ZqZJpsqwNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6kBOLtL9H+Lr4kNaRbTcUrByO0pma4cjeAtpmh+MEQA=;
 b=CVxW47nwuDG2y++cVeYOQwG1pJbFq9yePL7KgCNLOrUbxjKmIhvDPg3/8TMWE4n2L5xn+o9+62bkWeckPiztJg+Xk4g3GflVzs29DZCjg+i5Qe89SUNcxOn/CDCaWhUpMA+6E90abGlDvYtry457ikEHarilrb7C59XEYYVNvHRQo7h7qenCsQfhi755HqBY3nc+DFmBFuwCKElIj2jexUu1bUCyZ3nf33uJ1lwqIqPe1kLsDWJBD7OgdD7/89mu5nLCWHtlK9RqdaD/Y7hsaF2B5cPecQfx8mVS2yc2G+bfhHrxr+j6adHZmkdTYmtjiRVBpjUiKDsoOVK/Aw2WOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6kBOLtL9H+Lr4kNaRbTcUrByO0pma4cjeAtpmh+MEQA=;
 b=fS/gPk2jgRUBwXcF+SbvSEYNMi7UTFLOpXsQfGHqTNQ4vT8iGUPQdzHUnEf6AwdSLHUeP9Vm7kxHmigYal/luQzBF9UqsfXc+qpKHp153MDIZhXNOojcK9AefKEgSNa322LSqJghGuGi52S5Lbs0oioqsS8t/GAcj2mSYLuxS/g=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5587.namprd11.prod.outlook.com (2603:10b6:303:139::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22; Fri, 23 Apr
 2021 14:23:53 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::d4f0:68f6:3cec:29f6]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::d4f0:68f6:3cec:29f6%4]) with mapi id 15.20.4065.024; Fri, 23 Apr 2021
 14:23:53 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: set min brightness for aux backlight interface.
Thread-Index: AQHXNS6VHWe4BIFSZ0KjedM9z0dAQaq+uwuAgANxSkA=
Date: Fri, 23 Apr 2021 14:23:53 +0000
Message-ID: <CO6PR11MB5651FD340EF3F1CA9B35C6C4A3459@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210419151718.22979-1-shawn.c.lee@intel.com>
 <875z0g9dnk.fsf@intel.com>
In-Reply-To: <875z0g9dnk.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [1.161.45.17]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d493d6d3-5e0f-4e41-67ba-08d906636c02
x-ms-traffictypediagnostic: CO6PR11MB5587:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB558744CC39D3941318919C4BA3459@CO6PR11MB5587.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ou0DDzEj0wGU7UlaGsfh4f7P2JG7GRehZktRiHkOOhwxnzWw0u5Oem1kwLUZq/sgZUcB/X4GvQaG3iT8VQq/qaXziCHSnzLO4kbbu6RrANnkLRFs1JbMJohVFlbcKfSAX3G3KH626Ov7vhNXYyJX9X62bpgYxqb4Y/IluIkP4G+UYZuHHVPtuUuKygly/wyJzlSiWbTqDK3ptytbS7z21JREB1ZtDmgRdrcCy6IGACIkmuPheHPTdYb5HRnvuUviOvh/Br+oUtgKixUzZk1+JZzedJumKpMMSz4FY1yt/4AHYxo6ahUx2uoMAua8Lv+ts7BlJuwIpuPrLkKA+CYbbCSr2ROqeKQtyF3gUsmmiJMuWmd33kWMCBm7wmTFa+NtsJqheKmA66BN4k9CIsPdsBbfGTgzpKFH7rBSmwvbrdI4MzIyOHy9fOmA+5QDRfQav2ZHCOTEKagaAvkgwWsc6vC/4uvSElIm6RE/WxzP00tbtueQ1TKJDHeSfeIOOS0Wp+21HavvZttabpKQb8TDHuUoKI3Ks8JH9p0YpShwCGlUlecuROvA8Oe/DDPcYBkEwe/QeofAo2SGPE3oZOotY6uAbhH66CMc/6jGY5cBh9E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(136003)(366004)(39860400002)(7696005)(9686003)(4326008)(55016002)(6506007)(8676002)(83380400001)(8936002)(8796002)(64756008)(76116006)(186003)(66476007)(122000001)(110136005)(66946007)(33656002)(316002)(26005)(38100700002)(66556008)(54906003)(66446008)(86362001)(52536014)(478600001)(5660300002)(2906002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?H4JM2WvBaWYUUZYw2Y8ty8EBMrkVcr57VT/7g208NelgJHNzbwaFhg6toDu0?=
 =?us-ascii?Q?FFOAt33+3+QWyyIuUil7oU9PklXNKK2L2Q7ndqj35avacfpdvabOW68Mq15i?=
 =?us-ascii?Q?zNExURwrhYcXzqM4ugBJnCRTn0hySUWvKG0Gqn3CSTzJzm/hnOxa6mPpahXe?=
 =?us-ascii?Q?JIk8g5JrLS/JKb00UwqDx/7jbmIG/vyHONsgSLoE3ufpJHbcYmheC1XHwW0H?=
 =?us-ascii?Q?hbWnAPXrmwNzrV1xYYBDQIRRCCV1ThcSCgcuseC7lX9xVPg+ipswru0j0845?=
 =?us-ascii?Q?9++kVGNiGb0LgB25PpfxaVluv7lyju9EOG2jPmF0VkgHHNkL2T0HgwDwiDGL?=
 =?us-ascii?Q?h37z7UzmF6Iert5ROZ3e3SpN3/9/GB7m/lbKRiaw6vrVQ9TTwxcaHIn4BZkM?=
 =?us-ascii?Q?1gSO758AxzeJLZwSWXI0Gphp3fFLV7BkdkH7x6pWBcNLOzCkXy0P08kAhAYN?=
 =?us-ascii?Q?Ki2qmt+pK9f26xKGKdXejk4ZEuezIQSNhEFqHsHGf2yPpJocqXEL3TS5S3rl?=
 =?us-ascii?Q?zC02idZioUFfUzI1tVnx0uwjcxnKeZVxzFRqPe+l4Tlqe9OBkYA9s8wsJ2bX?=
 =?us-ascii?Q?02823fGvDCpN6piwjPT0hma9x55cteHeQpp0s1CbB9W7cSXzPHrShv+hI+ao?=
 =?us-ascii?Q?Jxvoqx+k4nqvXQhLv7bDOimCoVRZ4rL3Ui6lbYllJxV3uYF4EpPK4K/ndF0k?=
 =?us-ascii?Q?yN1RKXBpzxTWGKBtyW05KDgXW9cNowzLESqdc3wt/cPqYqyuhdYbQyZQwuhx?=
 =?us-ascii?Q?oQGP61V+IWEEa7XJyugqgPwGZiuR/hUtFExbRzcdwCdFbfg4cV038F8hV67K?=
 =?us-ascii?Q?SebFUKNGNCIyH+FA4i2r0IF9rTZwvj3P0QCkoNmcRMh4ewlaTbPS0R/3Ov+0?=
 =?us-ascii?Q?m1OKI8femju7tf/ut7SSCUayD8jT/afG7rgwliAbB66Tai93O6MGzxAepg10?=
 =?us-ascii?Q?5CWRbetvVLEKEPjJdSGVHJehLW73PutpB/EAU1HPn0P7kIiWQmVZVwSmiVpN?=
 =?us-ascii?Q?TCqxn5dianrzE14DTBnVOFZ/p11A4qpZysKtyfwSIIHRhccMiVFWPNk3Asff?=
 =?us-ascii?Q?4BnZLtmLGwL11TtnpOCYgxK1OtVVzs2SQT5lFsvRz9wdufOcI62Vc9d2n532?=
 =?us-ascii?Q?Ru4W5/nlWuCXRJyNcEJkGZBZlabCjYekfdzneq4elJrbRP+QJqb7d9n/cAcV?=
 =?us-ascii?Q?8Fm3NKqCNvvwXVhURC2rwA2jaJVbLu1+nnFkLbDjToqSfSN6id5ncul+m794?=
 =?us-ascii?Q?1Q6xoveS4sYdDqTVczRn196WC64Mb5jvI3hBCHMGJdUH3erOOTxgrr8jKEcB?=
 =?us-ascii?Q?Imc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d493d6d3-5e0f-4e41-67ba-08d906636c02
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2021 14:23:53.2017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7cuERfgZGubcNMI7cLQxa8zy5IsiXh2cfWz2j0vgPOW+P30IsgmZdGyJW/MMEFgFOKwXhcDpcGpLYjW+Lha5Pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5587
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: set min brightness for aux
 backlight interface.
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
Reply-To: "20210419151718.22979-1-shawn.c.lee@intel.com"
 <20210419151718.22979-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Wed, 21 Apr 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>On Mon, 19 Apr 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> Min brightness level for aux backlight interface is always zero.
>> Driver should refer to VBT's setting to configure proper minimum level 
>> just like PWM backlight interface.
>
>Unfortunately this change makes it harder for Lyude to extract the dpcd backlight code from i915 to drm helpers, and I think the min brightness should be handled after or in connection with that change.
>
>BR,
>Jani.
>

Understood. We will wait for Lyude's patch landing on upstream. And confirm i915 driver need this change or not.

Best regards,
Shawn

>
>>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Lyude Paul <lyude@redhat.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
>>  drivers/gpu/drm/i915/display/intel_panel.c            | 2 +-
>>  drivers/gpu/drm/i915/display/intel_panel.h            | 1 +
>>  3 files changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c 
>> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> index 4f8337c7fd2e..efd8fa155105 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> @@ -571,7 +571,7 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>>  	if (!panel->backlight.max)
>>  		return -ENODEV;
>>  
>> -	panel->backlight.min = 0;
>> +	panel->backlight.min = get_backlight_min_vbt(connector);
>>  	panel->backlight.level = intel_dp_aux_vesa_get_backlight(connector, pipe);
>>  	panel->backlight.enabled = intel_dp_aux_vesa_backlight_dpcd_mode(connector) &&
>>  				   panel->backlight.level != 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c 
>> b/drivers/gpu/drm/i915/display/intel_panel.c
>> index 551fcaa77c2c..6d58ec192a04 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -1614,7 +1614,7 @@ static u32 get_backlight_max_vbt(struct 
>> intel_connector *connector)
>>  /*
>>   * Note: The setup hooks can't assume pipe is set!
>>   */
>> -static u32 get_backlight_min_vbt(struct intel_connector *connector)
>> +u32 get_backlight_min_vbt(struct intel_connector *connector)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>>  	struct intel_panel *panel = &connector->panel; diff --git 
>> a/drivers/gpu/drm/i915/display/intel_panel.h 
>> b/drivers/gpu/drm/i915/display/intel_panel.h
>> index 1d340f77bffc..63da4e355585 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>> @@ -53,6 +53,7 @@ void intel_panel_set_pwm_level(const struct 
>> drm_connector_state *conn_state, u32
>>  u32 intel_panel_invert_pwm_level(struct intel_connector *connector, 
>> u32 level);
>>  u32 intel_panel_backlight_level_to_pwm(struct intel_connector 
>> *connector, u32 level);
>>  u32 intel_panel_backlight_level_from_pwm(struct intel_connector 
>> *connector, u32 val);
>> +u32 get_backlight_min_vbt(struct intel_connector *connector);
>>  
>>  #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>>  int intel_backlight_device_register(struct intel_connector 
>> *connector);
>
>--
>Jani Nikula, Intel Open Source Graphics Center
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

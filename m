Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F38F528B05D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 10:37:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F256E0C9;
	Mon, 12 Oct 2020 08:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DE36E0C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 08:37:41 +0000 (UTC)
IronPort-SDR: 25csOig3btxcmd2OIf6KETDXVqg3cYMNxo3esBGKC4LPDUvJ6zKnDEKXVlNqD11qTOaia4GWLE
 nmwCZzWvV5RA==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="250401576"
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="250401576"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 01:37:41 -0700
IronPort-SDR: 6Yh+tHwQ5rkQ/b+/6eGiIAru4u2bSFlceX3ckQqP4ahk0TMnWP9EKCT7GZItky+yzOPrcEiW/N
 6LWLjSO0kdLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="299157603"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 12 Oct 2020 01:37:41 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 01:37:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 01:37:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 01:37:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=USeT9z7rWsSGtWDrZsIxj4o3I49ANpCQB9831NH2kSydaePe5IPkeK5jFvxBfMd0uoklZXsjWK/t7fhrBZev3NVtnmtxmi6WC6c3JZ0ZbLOmjpP6MIJqXQtHjpGBklCNoCVNgFbQeT31W1sPt6NIp4+Lbt2k2oeKjnAMj6N4zof9TGZ7JcgpPqidMD7yLbBBqmGV6juofzqRH+wpdMqCEU3FoJcz2hJEtOWBvkSUZo0+ynp6F/7LaVJRhh2E7Zufqp114lKewN49bFGKnRfjzByWhU0zn65J3k+ojIu0136YKAHSWR/NHEOUoNhHeJ/d3+sHNnX6o9YuCSHvan7SQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1pHlsG5tTSQmJKs8aFK54mMtHuNt4UlGM7nlyPOIQg=;
 b=T0u3A3l6cXkgr9NzmDHgiRgeavetmwdqI0Slg5PsE9+fxQo42dZS1tsuFQoHueaNJmr+ZpiRjIMFiZMmSVlOXKTSFI2P8FcrYvyOMcoxwsubTnQAcK56HrqCMtMPOgQXjBSee0fCtsNvY42e21gmYQ83eEuPwU3ZOX3H2EcDOkPHWb3WEBFofZZotbjewiMIUvPIX1HapE30IZ6RoQfF6xxH7+seiChAMGnc4nDM0ZNurDIr9yaQJfD26z/B/vDSzhdLWbjg8rlz47GfFcFa0Ew3488HanTBD5O2XRP9qfu8tWRJ68qNBXM4USIm7A++/AFmXb2vq8X4nE/DQJ1oNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1pHlsG5tTSQmJKs8aFK54mMtHuNt4UlGM7nlyPOIQg=;
 b=HVhCB7xvuPWwg1Ysb6kC+JJzb0hsX/xWZuzsMmyu93fir00dbJiRRRbznC4brxiaGhqH6X5zwMPc+Ai1MUHeLFXMKD+MwdWQXWH57dd+q0MgfVLlnSSZiDssJYUWfBJbMeZKgLAVAwu9b+Xfrmgp1h4aZ7I+7apwAA/7EQ9GxFg=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.29; Mon, 12 Oct
 2020 08:37:36 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 08:37:36 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Thread-Topic: RE: [Intel-gfx] [PATCH 2/2]  drm/i915/dp: use opregion mailbox
 #5 EDID for eDP, if available
Thread-Index: AdagcnlaNpkJRJ5uRiKaCqkCkGfl+w==
Date: Mon, 12 Oct 2020 08:37:36 +0000
Message-ID: <BY5PR11MB4307E5790B466389CE00D68AA3070@BY5PR11MB4307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.0.15]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e170dd1b-49a7-4382-0b18-08d86e8a1257
x-ms-traffictypediagnostic: SJ0PR11MB4896:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB48967BF1A8EE2A37E2E8A6B3A3070@SJ0PR11MB4896.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WshDloEDj/E1U8SBIb0T+M1rk6D7aO59p56/BMAKf8KNEWrCQQ6neh3Cc6H9U6p56RzP+nmWHs8iijB0MUhHaQ2o6oaFt/ykM5z1aGWZXDqrJc0DvnqXqWFWKk9O/c8ElfWFpiPMrV5LSVs8PaB3xTVbET9RSYYeVdW8BMMc3DTAqlpSJ3WdcX4sTm5ad7l2IfnEh3p+BUMHlFUvfDGMh9LZ+NbdaLEfeVwGjhX5e58B/lRm882oYhgt7SOq29KHmOIs8P0K2hHve0+EAZx0SU1/UMaUHXL02yN2CQUWGtHOzJUQKT2mS5r6AulEwBrD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(39860400002)(366004)(136003)(346002)(76116006)(15650500001)(66556008)(66476007)(2906002)(66946007)(4326008)(186003)(316002)(7696005)(9686003)(8676002)(64756008)(110136005)(66446008)(33656002)(5660300002)(71200400001)(53546011)(83730400001)(55016002)(83380400001)(6636002)(8796002)(26005)(8936002)(478600001)(86362001)(52536014)(107886003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ZtobbXW+bltZG8m6oM7amVaquUSIQzgSPcHsP241I7ozeBcEm/nfM9xzHhBQ5R7aCirxqxpRV0WDb9uY+UGutIt9/TvHFLLnGZsMlRdvsYzvPwSzZCCz9zgekNpDk0c/Wd+Doqs6LDi+Cd0JeqYnAfj40hT/6lJe7+uxGGz0smOsTyXnsXUw8/Nfkk/co7vwpPNGcjvvBvGoCtS5/BeiyiP9dF4rmDyD5caOFRy2TBoUEN+zss06Jh3owqSDVRu02BDieglNCCOFoYVrY15ZCg14JwM0eGXHjyUeEymfhGVyGzeLbMwozQGFT9ysEOtKHWzyLDzOZIvTuksAntUx8G258ePQIitzcM6j5xm5bFTjlCv43xUJMfe6hvXfu2xJYQotKZzD3hVvn2GZ7mEjAvTe75ABSyuWy5Mod5U1y0/KnHhabAlJedyZwohTrSHMt1293pW6dzxTrmdkQXdlXaaMIUwdolAvItHZLPFYRMAX3W+jYaiOwM4ZhP4hM1zcY4fmTVagea4zhu3jTl/2SSEgC/gNdFYU5tzSHKaMe/HL02+zW+k+tJtzWtHmh2IXnURufvf4yX2dJDvl2a2H6GTCBwZ1aeiO1r8Lw3yDVxvY1H3LOtBthl4EOMFXus0nd997Gh29Kyzdo8ZNnYAkdg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e170dd1b-49a7-4382-0b18-08d86e8a1257
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 08:37:36.3952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EuObvP3siG0jU4GjkWcKnsA0ga9pPeL0wn9AjrPF0vQDAuY/9fL9o/zNhZnk3xfSKK+iNd6BOpwhLsF9XOPyCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: use opregion mailbox #5
 EDID for eDP, if available
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
Reply-To: "20200828061941.17051-2-jani.nikula@intel.com"
 <20200828061941.17051-2-jani.nikula@intel.com>
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 28, 2020 at 06:19AM, Shankar Uma wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@intel.com>
>> Sent: Friday, August 28, 2020 11:50 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>
>> Subject: [PATCH 2/2] drm/i915/dp: use opregion mailbox #5 EDID for eDP, if
>> available
>> 
>> If a panel's EDID is broken, there may be an override EDID set in the ACPI
>> OpRegion mailbox #5. Use it if available.
>
>Looks Good to me.
>Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>>  1 file changed, 3 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index c57ac83bf563..d1307be196a2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -8114,6 +8114,9 @@ static bool intel_edp_init_connector(struct intel_dp
>> *intel_dp,
>>  		goto out_vdd_off;
>>  	}
>> 
>> +	/* Set up override EDID, if any, from ACPI OpRegion */
>> +	intel_opregion_edid_override(intel_connector);
>> +

Customer report DUT still get EDID from eDP panel instead of mailbox #5.
After some investigations, this change can retrieve EDID from mailbox #5 properly.
But driver still used panel's EDID to enable eDP display. This is because of drm_get_edid()
was executed after intel_opregion_edid_override(). drm_get_edid() return panel's EDID
and overwrite mailbox #5's. 

We try to move drm_get_edid() before intel_opregion_edid_override().
The test result is positive, mailbox #5 EDID will substitute for panel's.
It seems we may need some additional change for this patch. Thanks!

Best regards,
Shawn

>>  	mutex_lock(&dev->mode_config.mutex);
>>  	edid = drm_get_edid(connector, &intel_dp->aux.ddc);
>>  	if (edid) {
>> --
>> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

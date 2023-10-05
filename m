Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCA37BA3BB
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 17:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7538D10E423;
	Thu,  5 Oct 2023 15:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F8B10E423
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 15:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696521535; x=1728057535;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=wiSCPTu6WPJI/JypAjPOWOC+k8WDa+KM15C6zuRCZCg=;
 b=hS6lNgXkmR9JyIw6ZBYaCsYUCRrrCAczN/xxHAUt3xPCV6rmTcmj2JcN
 gw36RPcisjAlLbrNIf96DwdiG+Q5lbm3jepPrf6kTWjsJOwP9RuSwM8js
 xuc2aiomBf6Vi0k/qFK6Jecu3iGfQt5VBgSGX0rQa7oiDo/fmDhDG7P/v
 /a67ElMzujXqzWrubOTZSA7THdExYTJ/Fr238rL2SJVhkVWlCjbEP3vf2
 chkp69YJkl7bX0btXBHsz7dCFaS4aeheLlPFol7T1OgFlOboNaMvs4HFA
 pJ4ZWsK8Uzp4pDF5lIqRQKoBVM0AlTrf8kO5gNJ69H4b9N+xdrejIf5Z6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="386368629"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
 d="scan'208,217";a="386368629"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 08:58:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="1083086342"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
 d="scan'208,217";a="1083086342"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 08:58:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 08:58:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 08:58:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 08:58:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 08:58:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IsQH7MacNbXu12fPH37fd/CEzCgHmUtSKQ28l14sKeebqJFeZy/AW3U4l8qGkDZgl1J5dyNeQRbCkj9S/v51HFqLlJAe6FM03nVO9gh6BWcP8Cm7bckV6G5CyljI8OzZMKsDYqOlolbL8X+ZmsQ1gIn/lxNwZZqQMcLoNN5UYIW2EM/mL2mkXNMdV5rIxdxaFM+Fhm7gHZ0QtSrLHpAfAo5Z4tpHA+v6S7QYraOohI9JjDD+I/mLhfrLg7o39Bgo5yQHX4PuYwrt/qS2JiUi9nRGxPl33hcJSOqlZaEbSPb2eQVCSO1aBHD3K4aT+4NhPqr6ZEax2/UV63zHQy3esA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NyZYxvO5CCMxmTLrLGIgpMDrtStviEeVo+/aR1mv4IA=;
 b=Ri72/lEaGopTyJo8NTwi3AbsVnagGwAaGybmfTxl8R09ow7gmY7kV2uoBY4XkWv9x/+r4MsjzE/3qNMQiij2EYuybNosPlsLFOl1Y9MpmkgwVHkNt1hrqtVTpNl/D39g0qDyGH39TtPUkkrE0gbpv/tXehTOJ+sRtz3yQd2+QHjATURsFMrvqAsY6WUKS5xnWoOTCRqxUZ1cBDe5/Lr63bGpUnHbrhzAT7R52nWquXQRuZ4+zFV3ZRS7piwNQNxXgsHyP69Wors2Yu2/QwdYAsPhBu8I/Mo6nkwNkpm68bLLhLaM9TNO7y0sVmbUagDPOA4nVWdMOb5vwKQ4iaaC+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by LV2PR11MB5999.namprd11.prod.outlook.com (2603:10b6:408:17d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.37; Thu, 5 Oct
 2023 15:58:48 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5%7]) with mapi id 15.20.6838.033; Thu, 5 Oct 2023
 15:58:48 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
Thread-Topic: Regression in linux-next
Thread-Index: Adn3o7Bh7SaOGGjsReCgQdslYEN8VA==
Date: Thu, 5 Oct 2023 15:58:47 +0000
Message-ID: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|LV2PR11MB5999:EE_
x-ms-office365-filtering-correlation-id: 81eff86f-daaa-4789-2a11-08dbc5bbf604
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E7uI6eymAoyTknikBbRnZP/onCxnrYH7zV2YkAuh/QnHrK/tcqF5Mdj3M3sqyH07fel5ugYYzAGKKqbmVgkPAg2skM4SWI8tl/l4Wkq103Q3AfJMH5QG/It1tHAOahiZDisMKs610AIDR5rFfxB03Ay6znf1kKMuj1zAIvxJAXNmkT4hrDw9XKMlsmKcq7M03Z6QbbjNaGWhjdNSmufSezcF0jYZ8Kiv0ZC53R3e6xamzkG+wUBu0/5C340zBYSoQ1vjdU8Jdvb9TD7s4zri5OB8ECXFQo3cCV12R2kgbYgDJk2nPaXamxpJEANNwXOJM++zMwPyvaZ859YYsfzHP0NImGlXL28AvSdRSH71GlVFJh8Hc9sfBPi9cReM/6vrS9Kc+SIuBwHoNPa2eCLcWETFkjmKDXck1I+SxHX0fUYL+GR5Sk3c3uHhub47Vt+JBHKikZnOJnwJoOKnbTcDpo/AfZ7mBWffHNYhRX8pZnqaHqaWAzwzJgXbx2mIJQsjprNcnIGYSdJLhfxc7QDqWKBc8Se4GrgJQwj44lKjDihW5wHPnl/Rk7YFi9XSc6fKNw8vxSi7DlwudTkK/vUNCgCSKyEmI62f5jryeyluPDWEJ9M1JQfDOkVH2PydGJCD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(136003)(396003)(376002)(366004)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(2906002)(107886003)(3480700007)(9686003)(83380400001)(55016003)(26005)(9326002)(8936002)(4326008)(6862004)(8676002)(966005)(33656002)(41300700001)(45080400002)(5660300002)(21615005)(52536014)(478600001)(66446008)(54906003)(66476007)(66556008)(66946007)(64756008)(76116006)(6636002)(86362001)(316002)(166002)(82960400001)(71200400001)(6506007)(7696005)(38070700005)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?No19+nOau3cMo6//Z00zUbOXVeSX7HovjerOJR+ADSh0MxMn7eMXIStyXJzH?=
 =?us-ascii?Q?iyWalGGARO1Nsm2qgfuqQy/JHl7IpvaswHDTtLAwfDJ0fH0orT/GO+qSkUoU?=
 =?us-ascii?Q?DRgWe2GaEUH2/j5ngRMS3apiaNyLY/0MLrjz1ZFIz4EbqJtrvIkAhfyjHq5+?=
 =?us-ascii?Q?9nxcaogtDpOrHzIa5PU01zzkvtxn0WxihVXa2gyS9ypdTj8KUtrCru5AOPuq?=
 =?us-ascii?Q?b2eArK95ryHSJSFTeD2zzS6UA7BKk0xRXrmIRQxoV9FuF5uwCPaHfHZOI0a1?=
 =?us-ascii?Q?ZS1O+YKCqPHZka5TtDP1g644ijJAGNPmuX0G/tsg/k9w9sSWUWN6vMp4oMo/?=
 =?us-ascii?Q?YIFy6UhYGWzsuZRyDwIwUxEgNOHzLRNBuYdzVhy4MDPUbpN6Hqh9+6Z7Im2e?=
 =?us-ascii?Q?Kd32BOaUHbNaaEb97OuV6m0MKPhoyhY6k8/dFm0ftrLvL7g2ML45R1u1fl9U?=
 =?us-ascii?Q?Fp/MFjTbbgnhP6vgITw7ZqKNGWcm4NZbCXAWgGoqBZ/ZlbM0CJ3drCPNk2u/?=
 =?us-ascii?Q?0xfe8e/t3F46MatuRLcO31gg0gp3DvG1mbq6WLm7XwxwQDR7Pe82mDmQcZSH?=
 =?us-ascii?Q?R+a979Ta0RpOc6nvbb2BmU2FworVXrc4rKOdJ8jTP8dR45kIx6gCo/0r//7a?=
 =?us-ascii?Q?ODaAXu5vM1Vdj/mERmDx8zglGZ3x0eJYWCmaWDZ4pMmwtd4co5QZtP1JoIua?=
 =?us-ascii?Q?SaW93Un7TdAaKAkmeLX+0zoYkakj6v0qk2SsNP6Zan1hdnDOONK3r9iMpL6p?=
 =?us-ascii?Q?4l5Cs5UfJTH1H8gim1u3vZkUGGLevTZpjthcVylPE0e9KBhFVGcBinOuM7Xx?=
 =?us-ascii?Q?CyIpHotY18euaRP0UM4HRyRko37H5d+97KpgeB7RBUPjZ760hqRHqDO1MEom?=
 =?us-ascii?Q?s5Q4HjlBl27NKqSYxZvL76MkZX+u7b7qejUwfq/AlM8xTeJI7nW1c1bMcrgj?=
 =?us-ascii?Q?HYhSnRpEC4Yf7S/vstrxTlRyZB72jN+AwLiCzn7471O6aUQZPxiX9SxCEe7Z?=
 =?us-ascii?Q?ZAY+CcksMDMGnt+kOP0QjyJwFjXeMI+GL4UJP++MOtHR2nqClE7D+z1NP4ts?=
 =?us-ascii?Q?3mYSwE/V8tvxVJK0s/TkX2b7tzxCe5LS80K6AuTjtxVl2gpxZNC+DzRn7IG3?=
 =?us-ascii?Q?0XE8K+Ur32021jieWZpbp5pE1AQNx6n34hUUcBvXYKhLgPzcxY6+7hunh9EG?=
 =?us-ascii?Q?ErUE5IpMP4om/EGeflbn25/3YswPdc43aCLT0G01TYSfLyStc5kMmS/cso8Q?=
 =?us-ascii?Q?dUU1ClSnL2uvEu/FcoxMtLGjEv/9HqF8LpI6Fg6jEE9/+xiPJXgI6YZeB6fd?=
 =?us-ascii?Q?mUre1JwPqx3Dr/1gz8TlH6Uhe2prUMbonMyTMZAsKy3fc8BPaRbRswxpMLe+?=
 =?us-ascii?Q?RUfX6R1oUaXIPn5itXF9Knv4RPa7tj6WeTVydeg1er/heLXFTTEqIZBaunTc?=
 =?us-ascii?Q?UHKas+5auiawFMWchUnaEZdWf7RHgAO8l8FeVDzVL7+VFWj6urNthKaotSHZ?=
 =?us-ascii?Q?7PaGuNrDOXAx8tWpcR6jYZkNAnCblSymiD/grY9kS9lqxelc8YhoGse8Sk66?=
 =?us-ascii?Q?t/0a/z/Eq2dBc8VYNKSjbbxh4mH+/+PddJz5fFNXE+LhWbZbHwxW7FUqyg+C?=
 =?us-ascii?Q?gA=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAASJ1PR11MB6129namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81eff86f-daaa-4789-2a11-08dbc5bbf604
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 15:58:47.9764 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2zgViq+9fzPaWhA/aC5p2/bqYqfjlVPnEd/FJtpKJPw8je0SNEb1o9kmUTuY05lkSWmYwv4x5UcDe1NGtlhGgIUh4KuB5bdFESs45w251rk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5999
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Regression in linux-next
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAASJ1PR11MB6129namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Rafael,


Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.



On next-20231003 [2], we are seeing the following error


```````````````````````````````````````````````````````````````````````````=
````
<4>[   14.093075] ------------[ cut here ]------------
<4>[   14.097664] WARNING: CPU: 0 PID: 1 at drivers/thermal/thermal_trip.c:=
18 for_each_thermal_trip+0x83/0x90
<4>[   14.106977] Modules linked in:
<4>[   14.110017] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W        =
  6.6.0-rc4-next-20231003-next-20231003-gc9f2baaa18b5+ #1
<4>[   14.121305] Hardware name: Intel Corporation Meteor Lake Client Platf=
orm/MTL-P DDR5 SODIMM SBS RVP, BIOS MTLPFWI1.R00.3323.D89.2309110529 09/11/=
2023
<4>[   14.134478] RIP: 0010:for_each_thermal_trip+0x83/0x90
<4>[   14.139496] Code: 5c 41 5d c3 cc cc cc cc 5b 31 c0 5d 41 5c 41 5d c3 =
cc cc cc cc 48 8d bf f0 05 00 00 be ff ff ff ff e8 21 a2 2d 00 85 c0 75 9a =
<0f> 0b eb 96 66 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90



Details log can be found in [3].



After bisecting the tree, the following patch [4] seems to be causing the r=
egression.


commit d5ea889246b112e228433a5f27f57af90ca0c1fb
Author: Rafael J. Wysocki rafael.j.wysocki@intel.com<mailto:rafael.j.wysock=
i@intel.com>
Date:   Thu Sep 21 20:02:59 2023 +0200

    ACPI: thermal: Do not use trip indices for cooling device binding

    Rearrange the ACPI thermal driver's callback functions used for cooling
    device binding and unbinding, acpi_thermal_bind_cooling_device() and
    acpi_thermal_unbind_cooling_device(), respectively, so that they use tr=
ip
    pointers instead of trip indices which is more straightforward and allo=
ws
    the driver to become independent of the ordering of trips in the therma=
l
    zone structure.

    The general functionality is not expected to be changed.

    Signed-off-by: Rafael J. Wysocki rafael.j.wysocki@intel.com<mailto:rafa=
el.j.wysocki@intel.com>
    Reviewed-by: Daniel Lezcano daniel.lezcano@linaro.org<mailto:daniel.lez=
cano@linaro.org>



We also verified by moving the head of the tree to the previous commit.



Could you please check why this patch causes the regression and if we can f=
ind a solution for it soon?


[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20231003
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20231003/bat-mtlp-6/bo=
ot0.txt
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20231003&id=3Dd5ea889246b112e228433a5f27f57af90ca0c1fb

--_000_SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAASJ1PR11MB6129namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello Rafael,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Hope you are doing well. I am Chaitanya from the =
linux graphics team in Intel.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p></o:p></p>
<p class=3D"MsoPlainText">This mail is regarding a regression we are seeing=
 in our CI runs[1] on linux-next repository.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">On next-20231003 [2], we are seeing the following=
 error<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">````````````````````````````````````````````````````=
```````````````````````````<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp; 14.0=
93075] ------------[ cut here ]------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp; 14.0=
97664] WARNING: CPU: 0 PID: 1 at drivers/thermal/thermal_trip.c:18 for_each=
_thermal_trip+0x83/0x90<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp; 14.1=
06977] Modules linked in:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp; 14.1=
10017] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; W&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.6.=
0-rc4-next-20231003-next-20231003-gc9f2baaa18b5+ #1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp; 14.1=
21305] Hardware name: Intel Corporation Meteor Lake Client Platform/MTL-P D=
DR5 SODIMM SBS RVP, BIOS MTLPFWI1.R00.3323.D89.2309110529 09/11/2023<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp; 14.1=
34478] RIP: 0010:for_each_thermal_trip+0x83/0x90<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-ligatures:none">&lt;4&gt;[&nbsp;&nbsp; 14.1=
39496] Code: 5c 41 5d c3 cc cc cc cc 5b 31 c0 5d 41 5c 41 5d c3 cc cc cc cc=
 48 8d bf f0 05 00 00 be ff ff ff ff e8 21 a2 2d 00 85 c0 75 9a
 &lt;0f&gt; 0b eb 96 66 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90<=
o:p></o:p></span></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Details log can be found in [3].<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">After bisecting the tree, the following patch [4]=
 seems to be causing the regression.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">commit d5ea889246b112e228433a5f27f57af90ca0c1fb<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Author: Rafael J. Wysocki <a href=3D"mailto:rafael.j=
.wysocki@intel.com">
rafael.j.wysocki@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">Date:&nbsp;&nbsp; Thu Sep 21 20:02:59 2023 +0200<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ACPI: thermal: Do not use trip in=
dices for cooling device binding<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Rearrange the ACPI thermal driver=
's callback functions used for cooling<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; device binding and unbinding, acp=
i_thermal_bind_cooling_device() and<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; acpi_thermal_unbind_cooling_devic=
e(), respectively, so that they use trip<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; pointers instead of trip indices =
which is more straightforward and allows<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; the driver to become independent =
of the ordering of trips in the thermal<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; zone structure.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; The general functionality is not =
expected to be changed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Signed-off-by: Rafael J. Wysocki =
<a href=3D"mailto:rafael.j.wysocki@intel.com">
rafael.j.wysocki@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Reviewed-by: Daniel Lezcano <a hr=
ef=3D"mailto:daniel.lezcano@linaro.org">
daniel.lezcano@linaro.org</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">We also verified by moving the head of the tree t=
o the previous commit.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Could you please check why this patch causes the =
regression and if we can find a solution for it soon?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">[1] <a href=3D"https://intel-gfx-ci.01.org/tree/l=
inux-next/combined-alt.html">
https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html</a>?<o:p></o:=
p></p>
<p class=3D"MsoNormal">[2] <a href=3D"https://git.kernel.org/pub/scm/linux/=
kernel/git/next/linux-next.git/commit/?h=3Dnext-20231003">
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/=
?h=3Dnext-20231003</a><o:p></o:p></p>
<p class=3D"MsoNormal">[3] <a href=3D"https://intel-gfx-ci.01.org/tree/linu=
x-next/next-20231003/bat-mtlp-6/boot0.txt">
https://intel-gfx-ci.01.org/tree/linux-next/next-20231003/bat-mtlp-6/boot0.=
txt</a><o:p></o:p></p>
<p class=3D"MsoNormal">[4] <a href=3D"https://git.kernel.org/pub/scm/linux/=
kernel/git/next/linux-next.git/commit/?h=3Dnext-20231003&amp;id=3Dd5ea88924=
6b112e228433a5f27f57af90ca0c1fb">
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/=
?h=3Dnext-20231003&amp;id=3Dd5ea889246b112e228433a5f27f57af90ca0c1fb</a><o:=
p></o:p></p>
</div>
</body>
</html>

--_000_SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAASJ1PR11MB6129namp_--

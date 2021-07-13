Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5D83C7806
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 22:32:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8AF6E12C;
	Tue, 13 Jul 2021 20:32:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9737C6E12C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 20:32:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="197422889"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; 
 d="scan'208,217";a="197422889"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 13:32:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; 
 d="scan'208,217";a="412572589"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2021 13:31:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 13 Jul 2021 13:31:58 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 13 Jul 2021 13:31:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 13 Jul 2021 13:31:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 13 Jul 2021 13:31:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JdaIS7vjHLfXrjIXE5LqQJFkKk8Qy4B6pftf4+JIIm/AKaH8/wev72XrEJpH6zXETGRrMCv6PZtW3WMkIvvnyoEr03V50qRFu17rpnMn+dEzdcpM5cgUPtD/PqDE6SLlIazb2Uzj2sv1bzgpoLd693VFHkpQtAwxnrim/JvzYhQ+wajQC8vsNIHkHPsRSq/sttX4qYgEHJHIjvXe1ajwuYM+nnFi5lCbdbbvmlALLFRaHhUfHn+Ju4DNQ8uJ+7nskNZWxx6znH1fNPPNVSQsgWmcQjfUfSZD3iNAAH4E7dswXpJ0xUjQvhYqzD28CaJcNkpOrfasfrfNzrL7aKBBcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dg0w562yaUfsu9KsoXGeI1LBj/sw26o5xrl8MrQD7Ok=;
 b=JaLEnozHzXuTQcBrKoTOrioKlKcazD7PzT9bGfeINI2A+DBS6dM0gh+oQ6U6AbZVkK8CF/3GCuJzsduq0nyl62osBv1J/o+PvXWJ9enSm98f8s3XPZKFZ+LprxYf2yCPykSoJAG9i1ha+1W8/acHgl6tYDfG3BFkfLM8tS7Vkxq8q9Fjft9jd+mqWDjUO5SDmQAWDlnKNXLHENhy/2ez2MRahcPjqn2TaQsiwE/R3znyTEOI6FA7e9SXrQTq1Q55Fg1tBtrmLbykgOR4Wg/X4xdPfKHm8RoU7q90LHmhgiTDegwvtrQP96RPpWWTP5xiVEozbbyuDO2ZBn8+s+Pv6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dg0w562yaUfsu9KsoXGeI1LBj/sw26o5xrl8MrQD7Ok=;
 b=qyzKZiPa1SRDZxO9lqWhAKVcngAw7N+N751ahHSKPyBamd1TBVSXEZOvWFCLjEdycIwzljaSVQzVh8M0ItYs3klPkK1L0m71hPz+0XUnoqhD3PzH7gCdTn2aFbG5zCgI2jQLW+LBrDyok+ALztAmDr/nlqNCOsutmOaedQ7UHws=
Received: from MW3PR11MB4522.namprd11.prod.outlook.com (2603:10b6:303:2d::8)
 by MWHPR1101MB2093.namprd11.prod.outlook.com (2603:10b6:301:50::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Tue, 13 Jul
 2021 20:31:56 +0000
Received: from MW3PR11MB4522.namprd11.prod.outlook.com
 ([fe80::1ab:440:337e:1bca]) by MW3PR11MB4522.namprd11.prod.outlook.com
 ([fe80::1ab:440:337e:1bca%4]) with mapi id 15.20.4308.027; Tue, 13 Jul 2021
 20:31:56 +0000
From: "Box, David E" <david.e.box@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [REBASED v2] drm/i915: Tweaked Wa_14010685332 for all PCHs
Thread-Index: AQHXdu9gbNoODvzUJUSu71E6cHfcEqs/bSY7
Date: Tue, 13 Jul 2021 20:31:56 +0000
Message-ID: <MW3PR11MB4522E99061866F53DEEFB60BA1159@MW3PR11MB4522.namprd11.prod.outlook.com>
References: <20210325093213.20794-1-anshuman.gupta@intel.com>,
 <20210712070917.10851-1-anshuman.gupta@intel.com>
In-Reply-To: <20210712070917.10851-1-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4a6551d-dbf7-45f4-febe-08d9463d41df
x-ms-traffictypediagnostic: MWHPR1101MB2093:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB20937A19F2625E0161A71F98A1149@MWHPR1101MB2093.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K0ZwP7EgG8TaaD9sfkvOd641IUnGnjgnXJeTtLSKrU4o7Euh2lHxq1Ner4hfqi1iUMAa1+gCUd2L/RzZqE+WXg1sZjoz9k0Srb+wC1V6u0uAf9MIOTab67tse5VGKgflTdwak+1y+XHqKlYVVizoyHurfNipM7ZRJeiaqiooKu772u988rvTY2/n1CTj10soBRpuhNloiyEOG/baBuu4wEI1h4c9TZxq/RyzLjuNJm7jD+RhkZuHib9inbNuOFYJDP/3mupyHjJISHng/0ui2hFs0uc8XAs9iZQcDdezmMlELXH3cdFEYjPF7r4cSXHM86VKupz+fCrz9hMn+kRnPFK33er8/u8LUUYX6zZOnomwcmaXMj+fiMPTJayKlGA/i+50Ko1e2CYQAfcjPLnkQqSH2H0JrV4yHnNA+1BEbK0F/lYZ9BM32LCjBAVW5iJ9VZ3+AMD8hTSaysXmH1zY0Kuu7oIdL/6IufD0fq/VcAXxYo5oPKCwoF0tTQat5M/TeqG6flULp+/8t9jaBvUYNb/L36+Qa3mWafKjmIO/R6/166gdEag+aLvDYobaowVku/C553PSAmaMYyEEjm3JC0QvGeWcKYZaPvEJXY7DqhUp1HhY4wu22pwqDaKgTW2VtJefwbM01ErSq9nFzNo0wiQ5ERh/n/Fra2dessgfhGnIKnlsL6zfufMxMaNBOJ7DxCef8uKQx4UB8t5/m5zP3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(396003)(136003)(39860400002)(376002)(9686003)(66446008)(66476007)(7696005)(64756008)(54906003)(5660300002)(66946007)(71200400001)(53546011)(55016002)(52536014)(76116006)(83380400001)(478600001)(66556008)(2906002)(122000001)(86362001)(26005)(33656002)(38100700002)(8936002)(6506007)(107886003)(8676002)(19627405001)(316002)(186003)(110136005)(4326008)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?VLiidrXLz8qMca/I1G2q3pctcBBsqn0L61mZ8Ukiss1/LqadEgcc7Z8OZm?=
 =?iso-8859-1?Q?Dwe9PlAzQZ9UyByEyHLP7M4C/q/m86v1hqXr3VsOWH8xeGP6Sje0egNK/2?=
 =?iso-8859-1?Q?wudhqjaxbdJch4MShqtJd8BQez5DSRq+9Zk8ul/eqYZVCCFD3zTWcMHsoz?=
 =?iso-8859-1?Q?hjEN/uMSFaayIaIcJ5eUVUav0kB42md/F5Web5mTozt+tE6ibasm9gLcmX?=
 =?iso-8859-1?Q?jvyM2WKoK9dPFiMVQTE74ktWtqpMUxCkrMuqa9vIe+xhwJ3sgjD7RyVBp+?=
 =?iso-8859-1?Q?YyL4flgPaBlaIZBs1Q09A8NVzvC9sinaWpCr9qSVZHgzaDW4Ef1C+2rfz1?=
 =?iso-8859-1?Q?yKLnp1gnWyjiS1r+tXuGoAuaZQ4HTt6NRF49ijLGVxsrDOQ5omCk7rmgR0?=
 =?iso-8859-1?Q?k+5a0UnhosjvxliILx1YkehRJQNeRsn652hJpnbjiIfLqipxK26sR5gM8u?=
 =?iso-8859-1?Q?QL2431RdAZpKb2Dwl1mmNxGVQTDvPMxycUp3PwHO9tIrMiLQmpZxZnY+aw?=
 =?iso-8859-1?Q?uUgnYop2u2SI/0BqWnpRDakKx3KmVGv/qScxfb4UtDzfyEROur6f90bxtz?=
 =?iso-8859-1?Q?2YcGIhaqpQIfrxJchiAfidH/vSQMNaLnKjWGTSU71hxdPuoJEAVGczQ8U/?=
 =?iso-8859-1?Q?xBeWRa9zOdJ/KYR9JnZsXWM3ad9kkuqAK3gcUjvkY/K/TSbbOYvRJomNHV?=
 =?iso-8859-1?Q?pC+wvzxWBks53KFG6rq+tYfNd84JmFcc4ltts6CLiWan32Ax0QoukD5Ygb?=
 =?iso-8859-1?Q?knY6no2PAKWhjOTQbrc0E4hm0jhJr5bQTNX1sOkwwPnq9dMkqfxI2oLi6g?=
 =?iso-8859-1?Q?8tg10n6WjbFM3l+Sf26VovzHzoQUoJpMvaz3kAruN4sUJ85hHzulxETR03?=
 =?iso-8859-1?Q?YGkG/hDZcKPNKP5asM/BhETNZbMrAS3ZUKIWhz8oGen9YD50ZXjgzDa/rT?=
 =?iso-8859-1?Q?esIc3bhLr6eEw/ZSnIL22i/I/1SC0CSmHVR/YfTu5WgLha31Wq27XKZJam?=
 =?iso-8859-1?Q?6qo2aJnkoIVd8TOBQtPZ0/BXuGevN+DJY/JQ2fyuizUIJOwCvSNzZDw/9Z?=
 =?iso-8859-1?Q?cq0iAeU1jNs+VOam3+kd/89Ajw1kIK2NLSe76z1UVTuM5XWCkdDtxzlf88?=
 =?iso-8859-1?Q?/IjDGvp7wjJKsFAhY0nFiqdO21YPFnwlUu5AnAzAirgrfGFvVO8OZ/qQzh?=
 =?iso-8859-1?Q?QUKqA7uPC/753BrF4YHI8P+5667jyaZuKhRtAEZ0fRzXLqIY9osShy+Yqc?=
 =?iso-8859-1?Q?MbfSq/VzWe7OpROQHNZ2DeEWFcTS0aEzKNlDpZJWCrA58o4kpi4fEYlgtg?=
 =?iso-8859-1?Q?svaSlEBF6aWl2e0Yaxm71Dt5sn7RLmLJ+xeuCA4iUUoEIsxBY8EsPfeub8?=
 =?iso-8859-1?Q?q6oPoTjikc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4a6551d-dbf7-45f4-febe-08d9463d41df
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2021 20:31:56.0858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8g17aLzsTZvxbhGiA7JD+IEdgKTSrsgVRP2wQtrYefSVllIzbS0eN3E8rnvW0h9rMQNDyt3prMRBzGfX2Qi9hQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2093
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [REBASED v2] drm/i915: Tweaked Wa_14010685332 for
 all PCHs
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
Content-Type: multipart/mixed; boundary="===============0355638537=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0355638537==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW3PR11MB4522E99061866F53DEEFB60BA1159MW3PR11MB4522namp_"

--_000_MW3PR11MB4522E99061866F53DEEFB60BA1159MW3PR11MB4522namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Tested and confirmed working on TGL-H Dell platforms.

David Box
Linux Power Management
IAGS/SSE
________________________________
From: Gupta, Anshuman <anshuman.gupta@intel.com>
Sent: Monday, July 12, 2021 12:09 AM
To: intel-gfx@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>
Cc: Box, David E <david.e.box@intel.com>; Gupta, Anshuman <anshuman.gupta@i=
ntel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; Vivi, Rodrigo <rod=
rigo.vivi@intel.com>; Deak, Imre <imre.deak@intel.com>
Subject: [REBASED v2] drm/i915: Tweaked Wa_14010685332 for all PCHs

dispcnlunit1_cp_xosc_clkreq clock observed to be active on TGL-H platform
despite Wa_14010685332 original sequence, thus blocks entry to deeper s0ix =
state.

The Tweaked Wa_14010685332 sequence fixes this issue, therefore use tweaked
Wa_14010685332 sequence for every PCH since PCH_CNP.

v2:
- removed RKL from comment and simplified condition. [Rodrigo]

Fixes: b896898c7369 ("drm/i915: Tweaked Wa_14010685332 for PCHs used on gen=
11 platforms")
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 16 +++++++-------
 drivers/gpu/drm/i915/i915_irq.c               | 21 -------------------
 2 files changed, 8 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c
index 285380079aab..28a363119560 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -6388,13 +6388,13 @@ void intel_display_power_suspend_late(struct drm_i9=
15_private *i915)
         if (DISPLAY_VER(i915) >=3D 11 || IS_GEMINILAKE(i915) ||
             IS_BROXTON(i915)) {
                 bxt_enable_dc9(i915);
-               /* Tweaked Wa_14010685332:icp,jsp,mcc */
-               if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP && INTEL_PCH_TYPE(i91=
5) <=3D PCH_MCC)
-                       intel_de_rmw(i915, SOUTH_CHICKEN1,
-                                    SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK=
_DIS);
         } else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
                 hsw_enable_pc8(i915);
         }
+
+       /* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
+       if (INTEL_PCH_TYPE(i915) >=3D PCH_CNP && INTEL_PCH_TYPE(i915) < PCH=
_DG1)
+               intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, SB=
CLK_RUN_REFCLK_DIS);
 }

 void intel_display_power_resume_early(struct drm_i915_private *i915)
@@ -6403,13 +6403,13 @@ void intel_display_power_resume_early(struct drm_i9=
15_private *i915)
             IS_BROXTON(i915)) {
                 gen9_sanitize_dc_state(i915);
                 bxt_disable_dc9(i915);
-               /* Tweaked Wa_14010685332:icp,jsp,mcc */
-               if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP && INTEL_PCH_TYPE(i91=
5) <=3D PCH_MCC)
-                       intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK=
_DIS, 0);
-
         } else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
                 hsw_disable_pc8(i915);
         }
+
+       /* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
+       if (INTEL_PCH_TYPE(i915) >=3D PCH_CNP && INTEL_PCH_TYPE(i915) < PCH=
_DG1)
+               intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0)=
;
 }

 void intel_display_power_suspend(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_ir=
q.c
index 1d4c683c9de9..99c75a9d7ffa 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3064,24 +3064,6 @@ static void valleyview_irq_reset(struct drm_i915_pri=
vate *dev_priv)
         spin_unlock_irq(&dev_priv->irq_lock);
 }

-static void cnp_display_clock_wa(struct drm_i915_private *dev_priv)
-{
-       struct intel_uncore *uncore =3D &dev_priv->uncore;
-
-       /*
-        * Wa_14010685332:cnp/cmp,tgp,adp
-        * TODO: Clarify which platforms this applies to
-        * TODO: Figure out if this workaround can be applied in the s0ix s=
uspend/resume handlers as
-        * on earlier platforms and whether the workaround is also needed f=
or runtime suspend/resume
-        */
-       if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_CNP ||
-           (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP && INTEL_PCH_TYPE(dev_pr=
iv) < PCH_DG1)) {
-               intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_D=
IS,
-                                SBCLK_RUN_REFCLK_DIS);
-               intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_D=
IS, 0);
-       }
-}
-
 static void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 {
         struct intel_uncore *uncore =3D &dev_priv->uncore;
@@ -3115,7 +3097,6 @@ static void gen8_irq_reset(struct drm_i915_private *d=
ev_priv)
         if (HAS_PCH_SPLIT(dev_priv))
                 ibx_irq_reset(dev_priv);

-       cnp_display_clock_wa(dev_priv);
 }

 static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -3159,8 +3140,6 @@ static void gen11_display_irq_reset(struct drm_i915_p=
rivate *dev_priv)

         if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
                 GEN3_IRQ_RESET(uncore, SDE);
-
-       cnp_display_clock_wa(dev_priv);
 }

 static void gen11_irq_reset(struct drm_i915_private *dev_priv)
--
2.26.2


--_000_MW3PR11MB4522E99061866F53DEEFB60BA1159MW3PR11MB4522namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Tested and confirmed working on TGL-H Dell platforms.</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"Signature">
<div>
<div></div>
<div></div>
<div></div>
<div style=3D"font-family:Tahoma; font-size:13px"><span style=3D"font-size:=
12pt; font-family:Calibri,Helvetica,sans-serif">David Box</span><br>
<span style=3D"font-size:12pt; font-family:Calibri,Helvetica,sans-serif">Li=
nux Power Management
</span><br>
<span style=3D"font-size:12pt; font-family:Calibri,Helvetica,sans-serif">IA=
GS/SSE</span><br>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Gupta, Anshuman &lt;a=
nshuman.gupta@intel.com&gt;<br>
<b>Sent:</b> Monday, July 12, 2021 12:09 AM<br>
<b>To:</b> intel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedesktop.=
org&gt;<br>
<b>Cc:</b> Box, David E &lt;david.e.box@intel.com&gt;; Gupta, Anshuman &lt;=
anshuman.gupta@intel.com&gt;; Roper, Matthew D &lt;matthew.d.roper@intel.co=
m&gt;; Vivi, Rodrigo &lt;rodrigo.vivi@intel.com&gt;; Deak, Imre &lt;imre.de=
ak@intel.com&gt;<br>
<b>Subject:</b> [REBASED v2] drm/i915: Tweaked Wa_14010685332 for all PCHs<=
/font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">dispcnlunit1_cp_xosc_clkreq clock observed to be a=
ctive on TGL-H platform<br>
despite Wa_14010685332 original sequence, thus blocks entry to deeper s0ix =
state.<br>
<br>
The Tweaked Wa_14010685332 sequence fixes this issue, therefore use tweaked=
<br>
Wa_14010685332 sequence for every PCH since PCH_CNP.<br>
<br>
v2:<br>
- removed RKL from comment and simplified condition. [Rodrigo]<br>
<br>
Fixes: b896898c7369 (&quot;drm/i915: Tweaked Wa_14010685332 for PCHs used o=
n gen11 platforms&quot;)<br>
Cc: Matt Roper &lt;matthew.d.roper@intel.com&gt;<br>
Cc: Rodrigo Vivi &lt;rodrigo.vivi@intel.com&gt;<br>
Cc: Imre Deak &lt;imre.deak@intel.com&gt;<br>
Signed-off-by: Anshuman Gupta &lt;anshuman.gupta@intel.com&gt;<br>
Reviewed-by: Rodrigo Vivi &lt;rodrigo.vivi@intel.com&gt;<br>
---<br>
&nbsp;.../drm/i915/display/intel_display_power.c&nbsp;&nbsp;&nbsp; | 16 +++=
++++-------<br>
&nbsp;drivers/gpu/drm/i915/i915_irq.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 21 -------------------<br>
&nbsp;2 files changed, 8 insertions(+), 29 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c<br>
index 285380079aab..28a363119560 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_display_power.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c<br>
@@ -6388,13 +6388,13 @@ void intel_display_power_suspend_late(struct drm_i9=
15_private *i915)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(i915) &gt;=
=3D 11 || IS_GEMINILAKE(i915) ||<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IS=
_BROXTON(i915)) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; bxt_enable_dc9(i915);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; /* Tweaked Wa_14010685332:icp,jsp,mcc */<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (INTEL_PCH_TYPE(i915) &gt;=3D PCH_ICP &amp;&amp; INTEL_PCH_TY=
PE(i915) &lt;=3D PCH_MCC)<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_rmw(i91=
5, SOUTH_CHICKEN1,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SBCLK_RUN_REF=
CLK_DIS, SBCLK_RUN_REFCLK_DIS);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (IS_HASWELL(i915=
) || IS_BROADWELL(i915)) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; hsw_enable_pc8(i915);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Tweaked Wa_14010685332:cnp,icp,jsp=
,mcc,tgp,adp */<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (INTEL_PCH_TYPE(i915) &gt;=3D PCH_=
CNP &amp;&amp; INTEL_PCH_TYPE(i915) &lt; PCH_DG1)<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, SBCLK_R=
UN_REFCLK_DIS);<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;void intel_display_power_resume_early(struct drm_i915_private *i915)<=
br>
@@ -6403,13 +6403,13 @@ void intel_display_power_resume_early(struct drm_i9=
15_private *i915)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IS=
_BROXTON(i915)) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; gen9_sanitize_dc_state(i915);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; bxt_disable_dc9(i915);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; /* Tweaked Wa_14010685332:icp,jsp,mcc */<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (INTEL_PCH_TYPE(i915) &gt;=3D PCH_ICP &amp;&amp; INTEL_PCH_TY=
PE(i915) &lt;=3D PCH_MCC)<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_rmw(i91=
5, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);<br>
-<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (IS_HASWELL(i915=
) || IS_BROADWELL(i915)) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; hsw_disable_pc8(i915);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Tweaked Wa_14010685332:cnp,icp,jsp=
,mcc,tgp,adp */<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (INTEL_PCH_TYPE(i915) &gt;=3D PCH_=
CNP &amp;&amp; INTEL_PCH_TYPE(i915) &lt; PCH_DG1)<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;void intel_display_power_suspend(struct drm_i915_private *i915)<br>
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_ir=
q.c<br>
index 1d4c683c9de9..99c75a9d7ffa 100644<br>
--- a/drivers/gpu/drm/i915/i915_irq.c<br>
+++ b/drivers/gpu/drm/i915/i915_irq.c<br>
@@ -3064,24 +3064,6 @@ static void valleyview_irq_reset(struct drm_i915_pri=
vate *dev_priv)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; spin_unlock_irq(&amp;dev_p=
riv-&gt;irq_lock);<br>
&nbsp;}<br>
&nbsp;<br>
-static void cnp_display_clock_wa(struct drm_i915_private *dev_priv)<br>
-{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_uncore *uncore =3D &amp;=
dev_priv-&gt;uncore;<br>
-<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Wa_14010685332:cnp/cmp,tgp,ad=
p<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * TODO: Clarify which platforms=
 this applies to<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * TODO: Figure out if this work=
around can be applied in the s0ix suspend/resume handlers as<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * on earlier platforms and whet=
her the workaround is also needed for runtime suspend/resume<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (INTEL_PCH_TYPE(dev_priv) =3D=3D P=
CH_CNP ||<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (INTEL_PCH_TY=
PE(dev_priv) &gt;=3D PCH_TGP &amp;&amp; INTEL_PCH_TYPE(dev_priv) &lt; PCH_D=
G1)) {<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS,<b=
r>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SBCLK_RUN_REFCLK_DIS);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0=
);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
-}<br>
-<br>
&nbsp;static void gen8_display_irq_reset(struct drm_i915_private *dev_priv)=
<br>
&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_uncore *uncor=
e =3D &amp;dev_priv-&gt;uncore;<br>
@@ -3115,7 +3097,6 @@ static void gen8_irq_reset(struct drm_i915_private *d=
ev_priv)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (HAS_PCH_SPLIT(dev_priv=
))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; ibx_irq_reset(dev_priv);<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cnp_display_clock_wa(dev_priv);<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static void gen11_display_irq_reset(struct drm_i915_private *dev_priv=
)<br>
@@ -3159,8 +3140,6 @@ static void gen11_display_irq_reset(struct drm_i915_p=
rivate *dev_priv)<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (INTEL_PCH_TYPE(dev_pri=
v) &gt;=3D PCH_ICP)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; GEN3_IRQ_RESET(uncore, SDE);<br>
-<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cnp_display_clock_wa(dev_priv);<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static void gen11_irq_reset(struct drm_i915_private *dev_priv)<br>
-- <br>
2.26.2<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_MW3PR11MB4522E99061866F53DEEFB60BA1159MW3PR11MB4522namp_--

--===============0355638537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0355638537==--

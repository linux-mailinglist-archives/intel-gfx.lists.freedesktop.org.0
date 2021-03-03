Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A5132AFDB
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 04:31:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FAC26E3EE;
	Wed,  3 Mar 2021 03:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DC8C6E3EE
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 03:31:11 +0000 (UTC)
IronPort-SDR: fByitiF/7LDLS4A0DMHspdE6gtwSocX482UcND4JfLuoXSOAYTNffu+ndBGzrRm/+g4zgjmtYn
 tX/gwRQOdTTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186431347"
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; 
 d="scan'208,217";a="186431347"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 19:31:10 -0800
IronPort-SDR: N8wk1pfoXuLQ288fvZemS1zPOADvv99W4huA2PJaNcJNghZGffNDMoyJ3XStU0rIU4OZbSjTUD
 GvSD3wsruqBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; 
 d="scan'208,217";a="373825497"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 02 Mar 2021 19:31:10 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Mar 2021 19:26:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 2 Mar 2021 19:26:36 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 2 Mar 2021 19:26:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N6uU64DNL30zB9RX/xqpkZVgQ6ec4PjcvwZAKeWrzeL1SEz4kJMgt6uPaVz6MmMCUZMKI+Gk8+idF32ccWCxnAXClr5gchRlGhty50KfIjN0EQFZ/iaFTpaGcddmGMo7ROj2oPTyowxJFo0nxfrfmuc+AM6wjbSCAtDbqv6WGLF0obMGvFLhnyRQuuuQPbwHv6BZUc+w1EybdXlNOpbYnZBwEDGjhbigG/hRQG14GK9Nx7KzGxDuVdeZaMb51S/0AjfT6jTGKRLc+5LLwJN2Ujt/XX0f1s/R8FNHJFVx70SYLRzs+eCdjHtfGQijKAZS0BIRwIC+YfltC67CJRRI9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HNPDQze52TMTGOK1/Bah7Fsr1aIV3l4ADumsroTokjQ=;
 b=LCpGw6+zYMQF/DQscDq3YgeF+ta7xArI8mL1KayvM6kkk93NeNAfzdtfSd1bv9xGNzopmeA0Ofg28nAN6jVYMK2XiO7GxVWE4rRwdV7DJ1tSuXiPOZ2DNVTxJ8BDozTuXuWYf6BFl1hruGLeQPO3rGZ/N0wfeza9AJrIv832mMWBv3ZApkIFjsRc2QtEDQ1PVyzhzOwXTMGIKLJirm20yQgxLGef8o9ruvqITGOYe7nOf7Hd6z2dfgRJgMgSuobRUIc0ansGBTnD1AkPvvJOm48DnYz3ocCxfL56693W3LgecyER9HE0ZGWvay/H1+FjRQHEWDMbigzfDfWWF+qU1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HNPDQze52TMTGOK1/Bah7Fsr1aIV3l4ADumsroTokjQ=;
 b=ar+REKOWvPDZyTnacVjbgPJlGn9MUHXePitkyVmZEsumbCg0pEGsu2BVH8gOrzjg6AslI6Zn48XACCa8/zMYcICCQdPr1v8DsR3M78igCs5+XDd7St3sP2rCO5iAJojGX9lZAzdbRYs2N2BwIOdVL04PkVU5GZH9WDcL8yeWy3E=
Received: from DM6PR11MB3915.namprd11.prod.outlook.com (2603:10b6:5:19c::11)
 by DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Wed, 3 Mar
 2021 03:26:33 +0000
Received: from DM6PR11MB3915.namprd11.prod.outlook.com
 ([fe80::fc40:35da:deb:df9d]) by DM6PR11MB3915.namprd11.prod.outlook.com
 ([fe80::fc40:35da:deb:df9d%4]) with mapi id 15.20.3890.029; Wed, 3 Mar 2021
 03:26:33 +0000
From: "Han, Zhen" <zhen.han@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/4] drm/i915/dg1: WA GPU hang at RCC
Thread-Index: AQHXD8mkUm/firYv0kqmoYBfC4pXiKpxlXIQ
Date: Wed, 3 Mar 2021 03:26:33 +0000
Message-ID: <DM6PR11MB39158CC62B7D7BC5F697F8E59F989@DM6PR11MB3915.namprd11.prod.outlook.com>
References: <20210303010728.3605269-1-lucas.demarchi@intel.com>
 <20210303010728.3605269-4-lucas.demarchi@intel.com>
In-Reply-To: <20210303010728.3605269-4-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f671df2-06e8-475f-cb01-08d8ddf424e3
x-ms-traffictypediagnostic: DM5PR1101MB2235:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB223524ABE8DF6218D569C1719F989@DM5PR1101MB2235.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rQxlXWWU4Vwt7NTxv0XLlAM3foIlXAQJ7ULR2JWF382PwCukJ5ZaJjYq3At/I7vIs0MbgE3jLRh1WXZHI7rP6DdoVfQ26dvo0FpmVac1aOkWNAEsAYRvrMnMFpGE7/ceYFvh3qYzf0TPRxpZRTBw+GUsMyytPPQFLgfhvkLVYPwb9+vCdc+jMrwnJRCka5s/UY3WxW8DzvFHzcdHNGy1ZRxwv5s/k7X46wMS/D8f0BWYFUpd2Nbjl+x0TehvGlpCiMOnFl6j9ytNfg7ZdMRYLQI3PWdvov12kHcRl/uG9MFcLal+5JbJ8peNY5V8mwXyLIAhx8Y63HQBaqmxiwtrJKjo7gUMvedAfq5F1GeWjfqZLNy+B7UqP7IbNx69gtElNicSAUtcup4N01vVv1GTPkzzhqdl76Us7wmOFA5+ATDco5JFN8g9RoVeF1WJl4gkq1JYa7dsR/3VfCxcvMVXA/D34LoqGLtQPl6tdnLVdTWga7OH9Qh3S74Y3xCpfub7T904d6uY6E/KwlJJBZI9Bg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3915.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(376002)(346002)(136003)(366004)(26005)(71200400001)(110136005)(66556008)(86362001)(30864003)(966005)(478600001)(186003)(54906003)(76116006)(8676002)(7696005)(66446008)(83380400001)(52536014)(8936002)(4326008)(66946007)(6506007)(107886003)(64756008)(2906002)(9686003)(316002)(66476007)(5660300002)(55016002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Obm7fjH4AurKfLVBrdeFf4SFJiICSRM0Ua0EJmwQum3WXD/nkgLpjD5U5W62?=
 =?us-ascii?Q?wWIN17UrOV596QyYFNovIP0NMPmUu8/QxNwGsq1aq2G7VN+6LYWiku7Q1iaW?=
 =?us-ascii?Q?rkLVAOC1F7rmoy2DLsQ5g8zyMVEOQDcODqm4DOJJGY60+AmHLMbqmuX+90CS?=
 =?us-ascii?Q?D3KRWJHy3oRorkpNVDyO6cAKS5Sdobhito+pzp9VZifE+Y6NF7msW0Dh5eQG?=
 =?us-ascii?Q?WpHoih6tE7nOHpk+afCVHDXfWhDX3E5xjTWA3KZAylUPfLjbNGABS0F6yzMZ?=
 =?us-ascii?Q?7cbuwcmVfPOLSMFsrFzWQkjXPgmWR3Mfut4tO9PmHRpBUkooNaEyHTzYAlxy?=
 =?us-ascii?Q?F+l72Mzf914dyRZrWwegsLo9wFlOlvaseghUQvT9H0Lg4nZxlIQTu+Tu1Tuz?=
 =?us-ascii?Q?HpNGUE/oMgxlH28kDUoWYtoek4+9RXwJRVzyOcFpHIrbDFKXfp8mFLQ4/Njg?=
 =?us-ascii?Q?lB8rMvNfnkU+lidFGxSzN+CtAfYcxqA15EqjZS+L1tI/o6ZWH/9kv25S/b8Y?=
 =?us-ascii?Q?nI6BpSbUll9geNOiIEb/5OlDWUEYw4cNh6CBkmJaoUPtdJlv3kpz3ibT/cMc?=
 =?us-ascii?Q?onZ94bH0uFPWyBba+pTwGcDafU1gDXKdSGV90jTAUxOllOKEggiZ2wK5d6OK?=
 =?us-ascii?Q?7y0u8um+NbZQVpxlmqYRTCLH1sTVQyfJ9N83FrMjmkYEAFm3UIzkT6M/Rrij?=
 =?us-ascii?Q?gMyqp0IzdsPlL+Vh+njE2NIEOjbJ8wdCP0o6GK9I4cqOA20z9m8aKbPsdQju?=
 =?us-ascii?Q?CYLMyR+rSGbabvF9cpVKkfBgl2LouLbhkYC8VKkQ9nFdpapH4kL5F0Fc8z/p?=
 =?us-ascii?Q?ICwn5m/LysVI9vX7UPSbLw2t4QM0ONddCJnuAWvNoUyhdt0dzy2/tps4xdXT?=
 =?us-ascii?Q?fgf3KTXtHDv/AMzZNEfe3aNbLi+5G9YIiFEGQ00dehMil7PZHtPnHciwXgpa?=
 =?us-ascii?Q?ZDd97b3/wgRXYLFesHZaDKPUoeuw8AR7rz5X1tYt/YxW075csnxiTiFakdtB?=
 =?us-ascii?Q?eqgOzwDiGkYMSgLPTj6I5NbawrwpQ/VHtPtfg5llOJNP4mFYUzTWq3qYcR4O?=
 =?us-ascii?Q?XyLD2ZfO4dzFGYMosyWZOO/v2YTm359guDpeAliax7OorZ2SMIoetSkxIfVT?=
 =?us-ascii?Q?DliIrX2/Jkt7JX3wqEEFEAbHmel5wPfSgLVUUXDw0SJmSc/kX1/TnCXoxOZE?=
 =?us-ascii?Q?8vQ4SWfRVs9iPHclZL+QGGVXR/vwsZySXRZ6RLdGi6JkDYQkBxjb2iDJ+UHx?=
 =?us-ascii?Q?MlhmwSGht58T6LEE4Lh8mlXLZssus5KteKGbgg7lgwAdisdjn6ubA9gVjxoA?=
 =?us-ascii?Q?Q86o0WfdUa8Xdvhc4IDnqMxd?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3915.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f671df2-06e8-475f-cb01-08d8ddf424e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2021 03:26:33.1593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ht1Dmu5Kd5sud1enmDksqYV42gJU5WZioHgpi/pwX6nDhYhSQphnbf/WL27bEd6HOG5N9X3Bw1SDER/10oRp9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2235
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dg1: WA GPU hang at RCC
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
Cc: "Liu, Jianjun" <jianjun.liu@intel.com>
Content-Type: multipart/mixed; boundary="===============0651934479=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0651934479==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR11MB39158CC62B7D7BC5F697F8E59F989DM6PR11MB3915namp_"

--_000_DM6PR11MB39158CC62B7D7BC5F697F8E59F989DM6PR11MB3915namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, that's the case.
It has RCC related silicon issues in gen12-lp.
Followings are two consecutive GPU hangs we found in SG1 and DG1 linux whic=
h have no media compressible render target.
1. HSD-1508524297<https://hsdes.intel.com/appstore/article/>  [SG1][DG1] GP=
U hang in PIPECONTROL in running 120 ways of Android container with running=
 pocket story HD apk.
--> The solution is disable RHWO optimization in default.
2. hsd-1508734716<https://hsdes.intel.com/appstore/article/> [DG1][Linux] G=
PU hang in PIPECONTROL(IPEHR:0x7a000004) with (PSS, RCPFE, RCC, WMFE) not d=
one in running Monkey test
--> The solution is keeping RHWO optimization in when Render Target Resolve=
 type is PARTIAL or FULL. The change will be in mesa code.

SV and RCC design team have further study and give the root cause explain t=
he bug-eco HSD of 1508744258 - Hang due to deadlock created by RHWO scenari=
o with RHWO optimization enabled<https://hsdes.intel.com/appstore/article/>=
.

BTW, recently, Windows team found similar GPU hangs in custom's TGL platfor=
m and need "disable RHWO" as the WA solution.  So it's a general issues in =
Gen12 (TGL and DG1).
*       14012336472 - [HP-TDC_IEC/HarryPotter]SIO1880260 Simple Solitaire U=
I show garbage when playing the game by finger.<https://hsdes.intel.com/app=
store/article/>
*       18014955083 - [TGL] Sporadic pixel shader hang when alpha blending =
is enabled <https://hsdes.intel.com/appstore/article/>  (SV sighting)

Thanks
Han Zhen

-----Original Message-----
From: De Marchi, Lucas <lucas.demarchi@intel.com>
Sent: Wednesday, March 3, 2021 9:07 AM
To: intel-gfx@lists.freedesktop.org
Cc: Han, Zhen <zhen.han@intel.com>; Liu, Jianjun <jianjun.liu@intel.com>; L=
iu, Chuansheng <chuansheng.liu@intel.com>; Sripada, Radhakrishna <radhakris=
hna.sripada@intel.com>
Subject: [PATCH 4/4] drm/i915/dg1: WA GPU hang at RCC

From: Zhen Han <zhen.han@intel.com<mailto:zhen.han@intel.com>>

GPU hangs at RCC. According to Wa_14012131227 we shouldn't have a hang due =
to RHWO, but that is what we are observing, even without media compressible=
 render target. Feedback from HW engineers is to leave RHWO disabled.

Cc: Jianjun Liu <Jianjun.liu@intel.com<mailto:Jianjun.liu@intel.com>>
Cc: Chuansheng Liu <chuansheng.liu@intel.com<mailto:chuansheng.liu@intel.co=
m>>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com<mailto:radhakrishn=
a.sripada@intel.com>>
Signed-off-by: Zhen Han <zhen.han@intel.com<mailto:zhen.han@intel.com>>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com<mailto:lucas.demar=
chi@intel.com>>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/=
i915/gt/intel_workarounds.c
index e678fa8d2ab9..5235fb70a69a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -739,6 +739,17 @@ static void dg1_ctx_workarounds_init(struct intel_engi=
ne_cs *engine,
               FF_MODE2,
               FF_MODE2_GS_TIMER_MASK,
               FF_MODE2_GS_TIMER_224, 0);
+
+       /*
+        * Wa_14012131227
+        *
+        * Although the WA is described as causing corruption when using me=
dia
+        * compressible render target, leaving RHWO enabled is also causing
+        * gpu hang when using multiple concurrent render and media workloa=
ds.
+        * Disable it completely for now.
+        */
+       wa_masked_en(wal, GEN7_COMMON_SLICE_CHICKEN1,
+                    GEN9_RHWO_OPTIMIZATION_DISABLE);
 }

 static void
--
2.30.1



--_000_DM6PR11MB39158CC62B7D7BC5F697F8E59F989DM6PR11MB3915namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>Yes, that's the case.</div>
<div>It has RCC related silicon issues in gen12-lp. </div>
<div>Followings are two consecutive&nbsp;GPU hangs we found in SG1 and DG1 =
linux which have no media compressible render target.</div>
<div><font size=3D"2"><span style=3D"font-size:10pt;">1. <a href=3D"https:/=
/hsdes.intel.com/appstore/article/"><font face=3D"Helvetica Neue" color=3D"=
#0056B3"><u>HSD-1508524297</u></font></a>&nbsp; [SG1][DG1] GPU hang in PIPE=
CONTROL in running 120 ways of Android container
with running pocket story HD apk.&nbsp; </span></font></div>
<div><font face=3D"Wingdings" size=3D"2"><span style=3D"font-size:11pt;">&a=
grave;</span></font> The solution is disable RHWO optimization in default. =
</div>
<div>2. <a href=3D"https://hsdes.intel.com/appstore/article/"><font color=
=3D"#0563C1"><u>hsd-1508734716</u></font></a> [DG1][Linux] GPU hang in PIPE=
CONTROL(IPEHR:0x7a000004) with (PSS, RCPFE, RCC, WMFE) not done in running =
Monkey test </div>
<div><font face=3D"Wingdings" size=3D"2"><span style=3D"font-size:11pt;">&a=
grave;</span></font> The solution is keeping RHWO optimization in when Rend=
er Target Resolve type is PARTIAL or FULL. The change will be in mesa code.=
</div>
<div>&nbsp;</div>
<div>SV and RCC design team have further study and give the root cause expl=
ain the bug-eco HSD of <a href=3D"https://hsdes.intel.com/appstore/article/=
"><font color=3D"#0563C1"><u>1508744258 - Hang due to deadlock created by R=
HWO scenario with RHWO optimization
enabled</u></font></a>.</div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div>BTW, recently, Windows team found similar GPU hangs in custom&#8217;s =
TGL platform and need &#8220;disable RHWO&#8221; as the WA solution. &nbsp;=
So it&#8217;s a general issues in Gen12 (TGL and DG1). </div>
<ul style=3D"margin:0;padding-left:72pt;">
<font face=3D"Times New Roman">
<li><a href=3D"https://hsdes.intel.com/appstore/article/"><font face=3D"Cal=
ibri" color=3D"#0563C1"><u>14012336472 - [HP-TDC_IEC/HarryPotter]SIO1880260=
 Simple Solitaire UI show garbage when playing the game by finger.</u></fon=
t></a><font face=3D"Calibri"> &nbsp;</font></li><li><a href=3D"https://hsde=
s.intel.com/appstore/article/"><font face=3D"Calibri" color=3D"#0563C1"><u>=
18014955083 - [TGL] Sporadic pixel shader hang when alpha blending is enabl=
ed </u></font></a><font face=3D"Calibri">&nbsp;(SV sighting)</font></li></f=
ont>
</ul>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div>Thanks</div>
<div>Han Zhen</div>
<a name=3D"_MailEndCompose"></a>
<div>&nbsp;</div>
<div>-----Original Message-----<br>

From: De Marchi, Lucas &lt;lucas.demarchi@intel.com&gt; <br>

Sent: Wednesday, March 3, 2021 9:07 AM<br>

To: intel-gfx@lists.freedesktop.org<br>

Cc: Han, Zhen &lt;zhen.han@intel.com&gt;; Liu, Jianjun &lt;jianjun.liu@inte=
l.com&gt;; Liu, Chuansheng &lt;chuansheng.liu@intel.com&gt;; Sripada, Radha=
krishna &lt;radhakrishna.sripada@intel.com&gt;<br>

Subject: [PATCH 4/4] drm/i915/dg1: WA GPU hang at RCC</div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div>From: Zhen Han &lt;<a href=3D"mailto:zhen.han@intel.com">zhen.han@inte=
l.com</a>&gt;</div>
<div>&nbsp;</div>
<div>GPU hangs at RCC. According to Wa_14012131227 we shouldn't have a hang=
 due to RHWO, but that is what we are observing, even without media compres=
sible render target. Feedback from HW engineers is to leave RHWO disabled.<=
/div>
<div>&nbsp;</div>
<div>Cc: Jianjun Liu &lt;<a href=3D"mailto:Jianjun.liu@intel.com">Jianjun.l=
iu@intel.com</a>&gt;</div>
<div>Cc: Chuansheng Liu &lt;<a href=3D"mailto:chuansheng.liu@intel.com">chu=
ansheng.liu@intel.com</a>&gt;</div>
<div>Cc: Radhakrishna Sripada &lt;<a href=3D"mailto:radhakrishna.sripada@in=
tel.com">radhakrishna.sripada@intel.com</a>&gt;</div>
<div>Signed-off-by: Zhen Han &lt;<a href=3D"mailto:zhen.han@intel.com">zhen=
.han@intel.com</a>&gt;</div>
<div>Signed-off-by: Lucas De Marchi &lt;<a href=3D"mailto:lucas.demarchi@in=
tel.com">lucas.demarchi@intel.com</a>&gt;</div>
<div>---</div>
<div> drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++++</div>
<div> 1 file changed, 11 insertions(+)</div>
<div>&nbsp;</div>
<div>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu=
/drm/i915/gt/intel_workarounds.c</div>
<div>index e678fa8d2ab9..5235fb70a69a 100644</div>
<div>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c</div>
<div>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c</div>
<div>@@ -739,6 +739,17 @@ static void dg1_ctx_workarounds_init(struct intel=
_engine_cs *engine,</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; FF_MODE2,</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; FF_MODE2_GS_TIMER_MASK,</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; FF_MODE2_GS_TIMER_224, 0);</div>
<div>+</div>
<div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*</div>
<div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Wa_14012131227</div>
<div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *</div>
<div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Although the WA is descr=
ibed as causing corruption when using media</div>
<div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * compressible render targ=
et, leaving RHWO enabled is also causing</div>
<div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * gpu hang when using mult=
iple concurrent render and media workloads.</div>
<div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Disable it completely fo=
r now.</div>
<div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */</div>
<div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wa_masked_en(wal, GEN7_COMMON_SL=
ICE_CHICKEN1,</div>
<div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GEN9_RHWO_OPTIMIZATION_DISABL=
E);</div>
<div> }</div>
<div>&nbsp;</div>
<div> static void</div>
<div>--</div>
<div>2.30.1</div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_DM6PR11MB39158CC62B7D7BC5F697F8E59F989DM6PR11MB3915namp_--

--===============0651934479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0651934479==--

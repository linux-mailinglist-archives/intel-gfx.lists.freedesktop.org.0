Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 886B52ADA2A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 16:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FACA89A4B;
	Tue, 10 Nov 2020 15:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD9189A4B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Nov 2020 15:17:19 +0000 (UTC)
IronPort-SDR: 9KqZXRyeQ8hyHjGizyC1uWXGlfUt9z+zBxaLtfQbSwnTBp2EuXluPwYgVqkgLuk3iDXjxM1hk9
 TvLLsR8xzing==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="157768653"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="157768653"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 07:17:10 -0800
IronPort-SDR: utkubOoKqO16IGMkmWKkPyQhnUM7ahMdykHXcDgcb1x+RydjjcswW1jTbd4Q9ZbaMONIr/klyC
 3ZPSvh6/YK5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="308428992"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 10 Nov 2020 07:17:10 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Nov 2020 07:17:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Nov 2020 07:17:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 10 Nov 2020 07:17:09 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 10 Nov 2020 07:17:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KYWnsYoS9KYmOcEeuHo/fZiVrW07tPu30YSKjtB9rhWmHhgZr0gCMOKBYFSznGMCos9F90/z3NNRhgMGMh6at382qW2g5zb/hXns7jcWxL5To12AA5NN3Fk7GzRZRecK8EcSEA7DaVRlyffFFR598GRfmR9M3MfXHqrne+Jsvk4MlrEvnML9RVkwDEe6INLZpbZAGsxydtA5nPjdLnvQLJyn177YIRmumguGO4nyr1a5pyi9it7xTxnT6G3biMaoAsjV3Vq/S+/FQz8VwHRdPF3mCZkAY2yXvgxavt/thNC36C6b9EAxSJMwWgnPm4Nit4T6HGZlEpbzkQjotZjMDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QgQt3zi78UmMfU9u07Pu9npUlt8M8XsurdMIOTPR9gc=;
 b=H7yisKzVNCV05ELjWBIENNlugFvm29SKaOZo3LLEKJDXrwH6t5cR6XURasqadISPS6lndPMjpNsqzvz6trOP6asnLHbZSVsDAQiqkrvRDuf1x3Qf09kNYPiVnla+wShqaNCi/8m8YraNAdixVljHQ9UfcP4KTxkznqz3bLvD9ZqtLzheLTdQTgS/Y0ZEhlecFM6AOqdstR4xd0ejwldodqnED8h50jD5tiv3FGHFJx1MtuLyssuMaaAkBfIZOIZQ4jhw6/LzJVUNyxpgLfDPyh9g+iUn4sVSqOwuo7zLGEKy7a/E4/E8DXDcCL0pd8nPK01U8vPqUPwvSfkTm//gVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QgQt3zi78UmMfU9u07Pu9npUlt8M8XsurdMIOTPR9gc=;
 b=RcagcKmLMeR7We23Rtwg2UeUtmKWnBqgzaI1FJVaH9ZR/DfHD/6m/1KQ5FrsFZP9zcT045jNvj6TOT9TKYdpAxPTSt9UmaFUGJd6r/dIZZie4N8tM1lbrgoKUBCflmGQw6Vuv/npDd8S2IoESYSeSTxzLi1yt0T+a+uQ+W8XeIw=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BYAPR11MB2678.namprd11.prod.outlook.com (2603:10b6:a02:c1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.29; Tue, 10 Nov
 2020 15:17:07 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3541.025; Tue, 10 Nov 2020
 15:17:06 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/rkl: new rkl ddc map for different PCH
Thread-Index: AQHWsR90vFlYnwTn2Uqbfd7HyHC42qnBhbng
Date: Tue, 10 Nov 2020 15:17:06 +0000
Message-ID: <BY5PR11MB4307BC35618ED9DA01182DD1A3E90@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
 <20201102135614.857-1-shawn.c.lee@intel.com>
In-Reply-To: <20201102135614.857-1-shawn.c.lee@intel.com>
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
x-originating-ip: [1.169.151.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8c07228-e016-433a-05de-08d8858bafd2
x-ms-traffictypediagnostic: BYAPR11MB2678:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB267895F15E4DB071A16DBF0EA3E90@BYAPR11MB2678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:130;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G8KKwIHEhlWv8MdS76uJAG8FGBsCioX9PAd+kdu2IhuJtV5Fo2BBRVO+evoAAWTV0xz3GBjxsRcJH/r7Q5nEG+aBS7nRjKEWM1thRCkappltu3u5KZrH62CknROeu8qFv40DSDrOllny732I0rqelEUVZH7oLVNLappMN8BFhf3U9YxEpMJf98DXWKbIYE2tb/TDv8m2VOZvsWMDBWohEbVMVyr6ic+SX9IBdo5MyRdKD6hKoHwbodi76d9TetBAEPTRKWKPHGgCz96h63SSPZ2rSFwLkvD0vpoT6nEUlXQjP1myFcJ+hNt0axwRd5Vwcsbttuf3aUw4HznPdIdaJZt58Pu07zIKmPHCXw2KBOOvXq2XBrs4eyJ8qfZg2Nt+qJ8yBmyCXRmH+NME916J0fYT93SmF6wzklh57wIEmJ8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(39860400002)(346002)(396003)(376002)(478600001)(7696005)(4326008)(966005)(54906003)(316002)(8676002)(83380400001)(6506007)(8936002)(33656002)(8796002)(71200400001)(55016002)(86362001)(9686003)(52536014)(2906002)(66946007)(5660300002)(66556008)(66476007)(66446008)(64756008)(6916009)(26005)(76116006)(186003)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: LuPc0QvyxB01JB+uwHqkU2ON8j5yVHxZFZpTdjHIrZJoxKb4r+u9R2wY+deRfI+V154IEWulheffBtEWk+2CYyuep+Ct6TS/4D9ab1TNC0h7HBTdXm0W3AWOpgx9Gs2btqljGxAM2E5hX34O4+/PsCrFlWpdYIcmICXTsXiYSTBASByzZLP8aFQ237qc4ct0QkRPkEJFw1E+GR+BjpsF4iQIvgkzmfzlS7CMupFasHuxWvx9h0z5AaOpRk4jLUOnOK/oD0FlkznlDYNTdYVXQ7WwzEv89m3W0uPWPw/tFKeiPQzqmbC492ruPSi2b+XVTNQBoDn36/Rsnpk7K33yAV37z04Qkb2FKMBDKEDmHLnXlDJypaVvCW665VcoZDnte+ZHzKr1eeJD80ALuk+VmgBKUGD8hg2Nf/7H0LF2YBWSv3vhnxQ1wZY5Wc6uyTmX1NSBbEWwvMWJ2XArs4+ybgb4es9nexQvVKtFnjtCgiKBV5JsKNp0+cQnTt9TYifzcgHWHN8B34ApLbI9DY0sVa7TjNqrYL+hQLDWHr3f+0sIuDtqHC6FWOUzbV879RYXiuCFgaEn8wopI7V4kJSJB57nX0xlfI6NiVyl8OXNpjvpW+vdo3B4ED7RhgyhyOgDuk+SlLC0PUSrGRa/+T0ZrQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8c07228-e016-433a-05de-08d8858bafd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2020 15:17:06.7821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YtHTmorcagL42Q5XTBgI0RxUSIHwRFCE50/JNfBCSqNV61X3lQfHcpTHucaBL1cBSMCQtkt4PJOz7wci4hxlcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2678
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/rkl: new rkl ddc map for
 different PCH
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
Reply-To: "20201102135614.857-1-shawn.c.lee@intel.com"
 <20201102135614.857-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Mon, Nov 2, 2020 at 01:56PM, Lee Shawn C wrote:
>After boot into kernel. Driver configured ddc pin mapping based on predefined table in parse_ddi_port(). Now driver configure rkl ddc pin mapping depends on icp_ddc_pin_map[]. Then this table will give incorrect gmbus port number to cause HDMI can't work.
>
>Refer to commit d0a89527d06 ("drm/i915/rkl: Add DDC pin mapping").
>Create two ddc pin table for rkl TGP and CMP pch. Then HDMI can works properly on rkl.
>
>v2: update patch based on latest dinq branch.
>v3: update ddc table for RKL+TGP sku.
>    RKL+CNP sku will load cnp_ddc_pin_map[] setting.

Hi Matt, may i have your comment about this patch v3? Thanks!

Best regards,
Shawn

>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Aditya Swarup <aditya.swarup@intel.com>
>Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Cc: Cooper Chiou <cooper.chiou@intel.com>
>Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
>Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bios.c     | 16 ++++++++++++++--
> drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 ++
> 2 files changed, 16 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>index 4cc949b228f2..4de991bafd10 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -1623,6 +1623,13 @@ static const u8 icp_ddc_pin_map[] = {
> 	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,  };
> 
>+static const u8 rkl_pch_tgp_ddc_pin_map[] = {
>+	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
>+	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
>+	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
>+	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP, };
>+
> static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)  {
> 	const u8 *ddc_pin_map;
>@@ -1631,8 +1638,13 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
> 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
> 		return vbt_pin;
> 	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
>-		ddc_pin_map = icp_ddc_pin_map;
>-		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
>+		if (IS_ROCKETLAKE(dev_priv)) {
>+			ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
>+			n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
>+		} else {
>+			ddc_pin_map = icp_ddc_pin_map;
>+			n_entries = ARRAY_SIZE(icp_ddc_pin_map);
>+		}
> 	} else if (HAS_PCH_CNP(dev_priv)) {
> 		ddc_pin_map = cnp_ddc_pin_map;
> 		n_entries = ARRAY_SIZE(cnp_ddc_pin_map); diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>index 49b4b5fca941..187ec573de59 100644
>--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>@@ -319,6 +319,8 @@ enum vbt_gmbus_ddi {
> 	ICL_DDC_BUS_DDI_A = 0x1,
> 	ICL_DDC_BUS_DDI_B,
> 	TGL_DDC_BUS_DDI_C,
>+	RKL_DDC_BUS_DDI_D = 0x3,
>+	RKL_DDC_BUS_DDI_E,
> 	ICL_DDC_BUS_PORT_1 = 0x4,
> 	ICL_DDC_BUS_PORT_2,
> 	ICL_DDC_BUS_PORT_3,
>--
>2.17.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

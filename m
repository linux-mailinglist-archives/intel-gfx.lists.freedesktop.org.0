Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D03613CBE
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 18:59:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E134610E027;
	Mon, 31 Oct 2022 17:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 762B710E055
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 17:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667239141; x=1698775141;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mp51q08Ofjh8drNGyJPdSiSZkhdc/YPI72TfMxeLdeI=;
 b=XU6h4vqIIMluiUpqGTTHH8LAW0NzC4uGe7oRteDpNNrE16eUO5dmqsX2
 6rscCWaCl7aHWVvFG8jwks2EVOoWY6EYLzrTs7shEDuUpHee1xyNCo5kF
 qnJkyHh3ri4/T6c5Vgp2KZ1qfbo300IwGqiGiTC/jv4cd+jT3s83gMq6C
 TSbs2MXODx/ZwWxiD+VatwqbIJNMeh7moOWdIDYVh7gWEpCwwPogY0kiJ
 qUwl4NVcL6M9tiO+yyh3diKxm3A7DXx+zIKs1KmmH9k9mpMJYUZFN71DP
 T5CyEVdZnI2QRZ95XdZy4wvIKSoq1BbmUO2UlnJq0wdmO/T7H0xL20Wbg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="373175635"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="373175635"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 10:59:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="776223027"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="776223027"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2022 10:59:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 10:58:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 10:58:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 10:58:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gpe2Wx56YiNA/gAlZZvQ4IfkHD3+2QRecsbJDtJ4Yof80fgNhcASLwfAz7wP2UT85pa5MNDS/QcEhFJoiBLot2Xjy0TNP0ai+I+lzeMQPVj2eLGSFojsUUe+H6XG0uFDGHSkqNvaH2tOxreK0Ee2gIRw/w/sxCOjzcHbeHgd/pQo27bjmciAaIKd/qEtLp/rrMixMAycFP7dAuL+XJfQphFkcHT2OomvCXg2p0iJIUn5X4csqLvlUmzL8aDyeCxCTHkqEO8FioC2mCAAi1gOdG2Nzh8VZePXnXE6qgBaRP119/m/I8BeQtoiXOvFH1Ar+CPYpYyQcEI+CbGBt0ax5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pYxj0nbUcdySwPK+l5YjLc6VS8hnnip5UvGpg5dzXEA=;
 b=myYGXrBVRsvKdMRle0wgAgAc3mCwlFZ9/oMMQtUQgXe5P8LvUvB4k8JjrsmIFTxAqoEe2hO+j5N7H/kVdbG/fhqYYAtwioQ6JZPrpY2PO1uSgPMhcJTXZKEijntGHMwlCiL6CSrhY8x1H8hUQIHJPMOaKKJM4piDWkxG6wcOS34Fo699TTRxKZiwu8P/l2S2D5CgbLizNNZWTjil2UZNHKK93UVzXqRmiYr2p4CVs0dCtR8gavlzPmouksdaXqKSN9YGq1beH818nICZXpDTeNlzYVah2Z682w2fIsDfKzd/SL/kEFk7vRQHiCn5Y4zoIvXuNIh5yMcE/sPf4MJyVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by CY8PR11MB6940.namprd11.prod.outlook.com (2603:10b6:930:58::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Mon, 31 Oct
 2022 17:58:57 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::f5c6:3c37:1f8c:d7dc]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::f5c6:3c37:1f8c:d7dc%3]) with mapi id 15.20.5769.019; Mon, 31 Oct 2022
 17:58:57 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/display: Add CDCLK Support for MTL
Thread-Index: AQHY6xS9dhUR1UIWBESRWCmt+SqOC64ozn/A
Date: Mon, 31 Oct 2022 17:58:57 +0000
Message-ID: <BN0PR11MB57115DD360117AFC1C6DC13ECE379@BN0PR11MB5711.namprd11.prod.outlook.com>
References: <20221028213211.326198-1-anusha.srivatsa@intel.com>
 <20221028213211.326198-2-anusha.srivatsa@intel.com>
In-Reply-To: <20221028213211.326198-2-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|CY8PR11MB6940:EE_
x-ms-office365-filtering-correlation-id: 13486026-41ab-4453-47c0-08dabb69950f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gbGQ9OwshLKiI9brS2RuxLLaSi+fBB/u0ZT0gdw2cg5APcfcbBPiAjUOtJwVL5gDD+V3IYCiE0UTXXuRyqtylsHD/aBAsSwWIbgnQioKO8duk/eIjzIgv3GhxzxEz9eIeD3vRmwajHb+S9eraCTC8qQLMjD0kgDhH4Ctnx90S6PGlZK2vJptuCbDO/d+2Kw671iy8/PJMsH8DbhmHoRPUy+f1A7xati1NbKgDda6R7UWHoHFhQ1Fmcy7ffE5bNMzSo4G2u6FqejSMUilt09XwDePhc5YhO7HJewG9LD5yrWBomvl8chg/JBq68InrHG0BmB7/zN6wZ2mp6Uxy0VxspQJniDWSxpilSfKgcWR8irWvsM7R0fcSp5+s/04qNO17Y5FE5GNvipwT4hN9kvkcHNOyboF1LEuC2MakVIzZtJmldifrNJAp6E4aJAtmTDNGieqZVlGjKv/dR5KThUin7VGjHGto2mPejBfa8XJCnCTCquUqU1S2PRdRTtzoMX44fTJ8conhxizArUoATN4phJD68aW0a0rxqghNKadh0b2luMWQXkwk25F6RWZMNhHZKxWETYEVXXxVpYkX6iVAZphF1px2tLw+w3YJRTbuTsdlm1nJ3C3Pk9FSDLZ82cxfU6f7pGbBdqIsKwrY9wOAQuKCwYwhAQgpEAXtNUBjcv/mOLbEw8uAZ+TegTlgJqjZ3quYVUsPCLaL1lozrbaNPNw/U9785OUihUcfalwqGME1aq4IVNi85PdSzl7KLhc9QczCMsTjTJQl4yYD6sDfQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(39860400002)(396003)(366004)(451199015)(2906002)(38100700002)(82960400001)(122000001)(53546011)(41300700001)(76116006)(26005)(8676002)(9686003)(66946007)(64756008)(66446008)(66476007)(66556008)(55016003)(6506007)(7696005)(33656002)(38070700005)(86362001)(110136005)(186003)(52536014)(8936002)(316002)(5660300002)(478600001)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FaeYM3wUQ9eDt24jYRdeTiwY4Hf/4w2X3DZ9rDzmbJwjXpqiUrh94XYESCb3?=
 =?us-ascii?Q?n3Unr3kixaQem9mm0nvf5lQVDOoIEerRbfkYYgdNSsLeHJjtrpK8KmtkiFT0?=
 =?us-ascii?Q?hXnv/DfpbmA2DPCq8E3iOPKyqfumII4NZ2orMJvWvNffcAwqpg6oC7qUY+Pr?=
 =?us-ascii?Q?wqc202HNa420uqVls203tTj63xEBHj2pS2oeNpIizM/sxkaNGBWFWSLnq0Z6?=
 =?us-ascii?Q?RbK9gBrgAgulWUWB9dgYS3WlXxew6q7d3RIKHDlyNjS5Xtwc8XOzA7INZnlI?=
 =?us-ascii?Q?htka3EiLD6BxptfFWLlpOC+pr+8r30yCgsTdI6Y5G9TawpoeIwvPP+z89TI7?=
 =?us-ascii?Q?bPdG9s8xsH+P4mEVTE53mdojhdbsWSiXuoXK6r684TlVlI3wOonCIgHoQ4os?=
 =?us-ascii?Q?JPv177YEiYAWry6BN5J8qMpOBGsacU9dCav4xx038mRICA4N0VANpEi0WwZt?=
 =?us-ascii?Q?61moe7iNNKkMB3I3UESorY+A6P//YBTfJzSNX6yAbvXRpYLDNUhQ+RsYWvbr?=
 =?us-ascii?Q?BaizVEs2vRM9hC2PgmVmpJzwGz0FD19vqigwDK4AjcBLhAO+eAelfPb8qc5z?=
 =?us-ascii?Q?DMwcRo0Lp+yzfnkAI3fSGVktLBivWkJjhgRZ0o+ApDX44Mqobd3dZno/s99B?=
 =?us-ascii?Q?bjGMtezEB19JdSviGZyDfhD+6qjlw214VeSzSZ27u2DnXc+fmovKmn2+17KS?=
 =?us-ascii?Q?0TAY4cEJ4B4NJlCgMAWAeWLEs4dRfGtbTRknzj+YrtIcT0yfhKjAB1xpoJe+?=
 =?us-ascii?Q?l0H4J0InRMGn+aiFNaBAMoCE/NRG8/oqyeVDBUMsN/3ZEOQ6rCeiQKqUq/EM?=
 =?us-ascii?Q?X8IUANNldiUbZYw08NpGabU1G7ujwz7cSKlxS9DJa0XiSZnggvmqAiDmiXTm?=
 =?us-ascii?Q?MOPp5iBemA3vEyqd/ZYGzFvJI8cxTDpOm+3r14eld4PAQB4gFrNkvbavMO2E?=
 =?us-ascii?Q?NeHI54fTndGMCVicxn7k02vBia/wVnrWKcAnUNwvSfLDwoCzoVCQEvMQjbBt?=
 =?us-ascii?Q?QB+t0lYArWQ4UHor9hT/+yG5ITBjPsXs2Tq6G6x5dg0kztyifYnpSMU4inWM?=
 =?us-ascii?Q?7buW7bO3lA+Q4ZGAHTOBjZzhvU4oEiN8D/ssBEPQ9RbJt8TZKOjmRdDyKs5w?=
 =?us-ascii?Q?3KnpPGpwc7mUqGq6xnnn1gAhaOn46kvMf231jB8b2gH6tkrFOnlz7vNlyTj8?=
 =?us-ascii?Q?+4+IYD1M5nAi4+swc9Fw1YbGQesfMBcXIarvPBFluK8Sz8IUNv5rXxYDJPaR?=
 =?us-ascii?Q?zxZnPzMeY/cjCWp1Jdzl2iPYjNnz4+gUZxuBrRlR1zxclJJvvTE7RlgkpaFW?=
 =?us-ascii?Q?fqp0EaI+lmFK0rw9u0w/5/bYUEcnhhIpZlrsGnGN3kUcCIgM/AIMFxovh9kM?=
 =?us-ascii?Q?sSff6GCEFSHojyENxxxsiLV/bZ/BA1mfCe9LzQHXebOy2LNUWlWl1zzNs8bk?=
 =?us-ascii?Q?KRIhOizwBVez2dtjhUL3JNlVxtchkdU9oFcYphQ1kVOd13zlwVvFXRCAK2QF?=
 =?us-ascii?Q?v8l7lMFro1L33RUTQQuEr90hPWGUPS6AHb9Ch5NrCm2Kc3DOs6jkfo2DxgXL?=
 =?us-ascii?Q?ikpieSd6r5WFmzKQQbfYxDeHRus/UmpKNSwUJU0f?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13486026-41ab-4453-47c0-08dabb69950f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2022 17:58:57.2957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3J0Q7FoLre4llIFiokeeeJC6cTxwYal+txAiBD6ClBP9/9pJaOgBbU/fUpnFoMKpPS8R1L5PXievmmYRiYVyhoyYhva3FSBmJUB86lQzNsE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6940
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add CDCLK Support for
 MTL
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

See below

-----Original Message-----
From: Srivatsa, Anusha <anusha.srivatsa@intel.com>=20
Sent: Friday, October 28, 2022 2:32 PM
To: intel-gfx@lists.freedesktop.org
Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; Taylor, Clinton A <clinto=
n.a.taylor@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Add CDCLK Support for MTL

As per bSpec MTL has 38.4 MHz Reference clock.
Addin gthe cdclk tables and cdclk_funcs that MTL will use.

Spelling issue here. With this fixed
Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>

-Clint


v2: Revert to using bxt_get_cdclk()

BSpec: 65243

Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i=
915/display/intel_cdclk.c
index d79cf282faa8..54ac7f9a1253 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1345,6 +1345,16 @@ static const struct intel_cdclk_vals dg2_cdclk_table=
[] =3D {
 	{}
 };
=20
+static const struct intel_cdclk_vals mtl_cdclk_table[] =3D {
+	{ .refclk =3D 38400, .cdclk =3D 172800, .divider =3D 2, .ratio =3D 16, .w=
aveform =3D 0xad5a },
+	{ .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 16, .w=
aveform =3D 0xb6b6 },
+	{ .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, .ratio =3D 16, .w=
aveform =3D 0x0000 },
+	{ .refclk =3D 38400, .cdclk =3D 480000, .divider =3D 2, .ratio =3D 25, .w=
aveform =3D 0x0000 },
+	{ .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .ratio =3D 29, .w=
aveform =3D 0x0000 },
+	{ .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 34, .w=
aveform =3D 0x0000 },
+	{}
+};
+
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk=
)  {
 	const struct intel_cdclk_vals *table =3D dev_priv->display.cdclk.table; @=
@ -3159,6 +3169,13 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_pr=
iv)
 	return freq;
 }
=20
+static const struct intel_cdclk_funcs mtl_cdclk_funcs =3D {
+	.get_cdclk =3D bxt_get_cdclk,
+	.set_cdclk =3D bxt_set_cdclk,
+	.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
+	.calc_voltage_level =3D tgl_calc_voltage_level, };
+
 static const struct intel_cdclk_funcs tgl_cdclk_funcs =3D {
 	.get_cdclk =3D bxt_get_cdclk,
 	.set_cdclk =3D bxt_set_cdclk,
@@ -3294,7 +3311,10 @@ static const struct intel_cdclk_funcs i830_cdclk_fun=
cs =3D {
  */
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)  {
-	if (IS_DG2(dev_priv)) {
+	if (IS_METEORLAKE(dev_priv)) {
+		dev_priv->display.funcs.cdclk =3D &mtl_cdclk_funcs;
+		dev_priv->display.cdclk.table =3D mtl_cdclk_table;
+	} else if (IS_DG2(dev_priv)) {
 		dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
 		dev_priv->display.cdclk.table =3D dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
--
2.25.1


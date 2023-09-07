Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EED637978CF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 18:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617DD10E824;
	Thu,  7 Sep 2023 16:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253FE10E827;
 Thu,  7 Sep 2023 16:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694105736; x=1725641736;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Do9tcUetzXGJ+rSzGap82h8bz3P1zO2bPKr9QesGW0A=;
 b=hfGwUs5Rd67kH5Mnli2jVAAj3R1zyM+Uvwr5GWzHzV6WOOqem25BEvmN
 jn76aixGHCli7qstT1XHQ7X+qSo4ZQkjKFg7rtFd0OrTrMMrW0nzttwJW
 Y8st4WY1urCnQ1+gSvXr1XMRDDnuSh28ZXi8UsmW/BMnICna+/rAq3eL4
 1q603e/Uc7TVA5UrpUppNSgmkFOCVvaSRp873D9v6fZ25UmIxEYXhTRGw
 f0VE9xk94Qj9V23phdYVgY1GEweqimvLsgp/cQ/kDiJ8RsdkJUl0Lsony
 /tslF+AzPTwVH1ss75TWbpGUZ3hFvv4tZBUzoUPQvYlApik9wnGAF/jqS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="376318634"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="376318634"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 09:55:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="807602693"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="807602693"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 09:55:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 09:55:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 09:55:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 09:55:33 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 09:55:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eClAfx8xW+TkYeocZzJ8QkpGC1in251Mz1tSC/WxPE/cUtC1wKZD59Hk7p+4PQzrWp3kBw85esHRC+PgVjecaiHyEeQq1dfyI4OslAQVC+6aqKsz/wDd1Iv8nQym1R2yZoucvaJY2Ycj1A0PBaOm6vxTlj37HK0ah9AWb+eoSPV5VU6nGMdoqATfjDJKzUvq2KOFrEkg/00UFvlpQZARiE0+7UtHTemfubhm0KrQB9hmP9i+2Lb6pASNTNPgkFs7Srr5zynBX9GnsQZIV1jdeSBBr/ZlqMPTIrot5rBmVyGNrt/44+O7zJfQt20XcPIh3+UFPz1obmsRk57Xn6N40g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=erz1JlVm5qnCJz4M5z0x4rajpDrI1VYL6Xa7AQAmmPY=;
 b=VTzMLZjq9HmNxCvLbceCGCNB+m2v5wftePNpNxxVep3dCa4XKLYOIzsB1xT3mycIjPAgDk7UaQ9ItZ0LDTPpz2BdNz+L0Gs3M7UN5x3vfplnn0TkWYdE8BbvjDRgGeoGwKi76uyOPKQDGoaB+sqSyFJHJwojk3GxceIroK47wCV6n+Sf0KoYBHbDSAv8MDiPlvvNMqWxwgzRGIqSfRfLG+d5mB0x5T6VNOafZX+4xTY/G5k9i7gF0lN9cu6RlphgDIz/l5k32vTMqNMlpQruOLesuoTp+uBvuFFw+ZhYaOtZA9MIoMUoYCmWiSCOl6n/lQGWU7XlkCWBwH0XaNACuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 SJ2PR11MB8421.namprd11.prod.outlook.com (2603:10b6:a03:549::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.34; Thu, 7 Sep 2023 16:55:31 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::b9a3:5861:febd:8ecd]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::b9a3:5861:febd:8ecd%6]) with mapi id 15.20.6768.029; Thu, 7 Sep 2023
 16:55:31 +0000
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 25/27] drm/i915/lnl: Add support for CDCLK
 initialization sequence
Thread-Index: AQHZ4aFZKMueOwmgS0SWWMgkuJt/D7APlO9w
Date: Thu, 7 Sep 2023 16:55:31 +0000
Message-ID: <DM8PR11MB562430596159BD04DAA0B870C7EEA@DM8PR11MB5624.namprd11.prod.outlook.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-26-lucas.demarchi@intel.com>
In-Reply-To: <20230907153757.2249452-26-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5624:EE_|SJ2PR11MB8421:EE_
x-ms-office365-filtering-correlation-id: 806026de-db2c-4dd5-69f9-08dbafc33ed6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BtKWMkHwesMrRhy/2ytkTEkQrVbFk0ZO36D/q3+Y4INMCMjshJW1c87xSsfeXNDJ5Ps53hUBZdxjUQ88XIkSExU1LGuxLopxNMHgw7Knsl43Gx02kLYFO5bReK2ivoCdkk9LYX5o3wFGIIugfZwTrbkA4A0jDHDuouL6+l7kmPNvMSs5JTGsh1+hw0YkOvJd8kpMAO4NJu9JiT+o443eNkhYoGr/6Vd6O0inICRLImnFE1TYsB7IbdOmJh4pyoH7eT776UA6YwNHGCV2oSBHWWygBZr2+90XU0MyaD15HdGFccY9MBtE4A7WZYnJ8/IJ1mYwFGGK+Ik7e8dWfze8ESwPCUBsZy5ws4nqBxdPIetya4+Eo0U3F393WcPUeR4FVxVJSGnE088tKS7meOuSdiAq9CShGy46YVTnGOrO/fAbSfla4jXUQ69/tLXbD9SJ8Lpe/UdQ2/eMlEoDa9TjUvqhhzVC47Dx7m3SI4za5/zn65PzPRI6Z+Uu/U+uEgahzMfAZeGIGLuAWWWdJW3byJNkgpGRzNeQquI9tVtyL3j+VKlYOOR5Z/xp8IuBwIlcyopjWdwfCvs2W+TNJUJH5KvE6kJEUh9PHkh3SsGclNhf9/L0mG3vlFXD1nOKxdCf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(396003)(39860400002)(346002)(451199024)(186009)(1800799009)(83380400001)(26005)(52536014)(5660300002)(450100002)(8676002)(8936002)(7696005)(53546011)(6506007)(71200400001)(9686003)(41300700001)(82960400001)(76116006)(316002)(66446008)(66946007)(64756008)(66556008)(66476007)(55016003)(110136005)(2906002)(33656002)(86362001)(38100700002)(38070700005)(122000001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pLi1RHoBngTwKTMPXEiiXwfeBr8XUiCYrKb7nPf2g1A4iyMU4vooA5I+VS/6?=
 =?us-ascii?Q?suAovPAuiqUIKiBBw8rXqK9vd7/zEmxJWNwMSctVu8WQdfg+7K/sqN13f8J7?=
 =?us-ascii?Q?/BGBcmuEAo6e4sWDUfMGNVyMJADyVHAo8iQls+RRninC9sPksSgR4yffwdj+?=
 =?us-ascii?Q?J/JryXENdAZDv1ZkKS1oETBMmFr9yA96XGgSRhHbqtWf68ahxtgtbncEYFAc?=
 =?us-ascii?Q?yWlG1vkqmNuGhhfIWRfQ7Pm5H4wV0KQLeaHRpKgvcARO9VFXpay38msXq+wv?=
 =?us-ascii?Q?1ZmHbpx1oSce8iC19kRCCm4iZVb6FPGKEY/IY3DCRf8fV2ycUN3UJnB0arxg?=
 =?us-ascii?Q?Z8HcGhiLdE+QufXTXtUaLzchGzLLlHOuuSPhahcVfSHVWrV75QSxL0cijqIB?=
 =?us-ascii?Q?aLVxl+Hq29IWUQA4OOpiDIJZ0lgj8uqXq7KuvQ+Z7LYQgTHiDFZLP8okNsJx?=
 =?us-ascii?Q?V/UGsBStuXobQ/JVe2plsF4j9kHtS0bmXDbjFxZmNdw1qw+wOv7xXfU0tCi2?=
 =?us-ascii?Q?feOzPdcO50bT98vSsaStg81YMO8z/uonUbm5yw2j4XGH3dt/+OQZhyQRNrqs?=
 =?us-ascii?Q?9eNh9T+HdPFmxidQ0sbEhHHRCbuFoOXlgN6n1Lq84G9oWqo39xQ0UgDNSpFQ?=
 =?us-ascii?Q?iAfjizwrw4P15t3Iu45T9g6W1XxImqTFn1tNkLANalu2IesGEPL1VPBpFC/b?=
 =?us-ascii?Q?Z4ZbBQi/7kuwHk+jMXNIYzQTZFoUGX1rMEfi5HLEyv5EkkeMjNouMAgjtxtq?=
 =?us-ascii?Q?YWfc6NoqOG7rqyszc6fXO/KwMkTY22K+dfQ608ExcuxNMdepraAD7T+UI3D6?=
 =?us-ascii?Q?dUqroGwFpnzaqGotJfXgjObDvEqKXSKz7OiCtM8UkBbTqKeqYPFpgkD6qYSR?=
 =?us-ascii?Q?03mBML6TRybT0FN09+u9TK3Apxsx/AC+jgZr/ibB9mjMDpuLuAyHRXoU+ZwX?=
 =?us-ascii?Q?IQn4rsQrwybEz5Tyya7R+/0sz3ehdkZTibiU26utsLHnMtaZ2biOX8khi8do?=
 =?us-ascii?Q?3gVKHQMWbwD+OkJq2lDEmf+oUb36vPnyUQV5P1Bn94GSiFQsr/3wU4M07m+0?=
 =?us-ascii?Q?sbXSZZTHHzrp4AvL/6/3nqoPQBU8Oqjp8TLhpt6uefvqb9BX0eCuDSJeHHP1?=
 =?us-ascii?Q?QyPPAfP2lckADz/fgtNwjO6K90V0y2lxoSX96NrKma6dOZQ2NjBlOQ7WkeiG?=
 =?us-ascii?Q?dDMFjPou4IX2AOZsgQSfVrPJng47MFlSOK6Ro9j+4glJ0iGdLKQwb6wFMI7m?=
 =?us-ascii?Q?kITGDb6BXJQwuNdIqAE4lMY+KQql3gqcKWG2MdMAGtexsBvWA1ys19r8lNbL?=
 =?us-ascii?Q?Po+lFbjhJYHAmMpp4nWoVqnZroTzCkugplPHe1vpqixTDIHt4aIHa7Qj+Z+r?=
 =?us-ascii?Q?JsJJmLEhUr9mtTNtycweZ1QYKHfqDiiRKIrocAdHZiVyf1vp3fVy3y9vOenJ?=
 =?us-ascii?Q?jNKUBNUo7A82NUFv/aEBlvBVM9vFHIjAiUCMvtcD61SAmayWo0Y/TjFrM8wI?=
 =?us-ascii?Q?uVvig2behi8BpOMTb6FXsmbkTcF9RedhGJLc/6OeKUJrLkqZV83dYCWFosBh?=
 =?us-ascii?Q?Nu0URyvdjQ/u1Ylbin2bVhswESEbUY25VGtNlqrlrSmj8LiKqenzWmNxPZkE?=
 =?us-ascii?Q?8A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 806026de-db2c-4dd5-69f9-08dbafc33ed6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 16:55:31.0328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R9XHtqDiSq/F0F+Kz7qQhiw30VDJC/YIjjHqs+AiG/Gzza0UcGAdSC0qfmiJnms4NTwn5XDY2LTp8FyE5EYAUGVZJ0SQFA11LxyReDdvA24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8421
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 25/27] drm/i915/lnl: Add support for
 CDCLK initialization sequence
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

Looks Good.

Reviewed-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>=20
Thanks,
Ravi Kumar V

-----Original Message-----
From: De Marchi, Lucas <lucas.demarchi@intel.com>=20
Sent: Thursday, September 7, 2023 9:08 PM
To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
Cc: Vodapalli, Ravi Kumar <ravi.kumar.vodapalli@intel.com>; De Marchi, Luca=
s <lucas.demarchi@intel.com>
Subject: [PATCH v2 25/27] drm/i915/lnl: Add support for CDCLK initializatio=
n sequence

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Add CDCLK initialization sequence changes and CDCLK set frequency sequence =
for LNL platform. It's mostly the same as MTL, but with some additional pro=
gramming for the squash and crawling steps when when a change in mdclk/cdcl=
k ratio is observed.

v2: Remove wrong changes for bxt_cdclk_cd2x_pipe() (Matt Roper)

BSpec: 68846, 68864
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 51 +++++++++++++++++++++-
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i=
915/display/intel_cdclk.c
index 677a50c28dae..dfefc971b733 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -40,6 +40,7 @@
 #include "intel_psr.h"
 #include "intel_vdsc.h"
 #include "skl_watermark.h"
+#include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
=20
 /**
@@ -1811,6 +1812,47 @@ static int get_mdclk_cdclk_ratio(struct drm_i915_pri=
vate *i915,
 	return 1;
 }
=20
+static void lnl_prog_mbus_dbuf_ctrl(struct drm_i915_private *i915,
+				    const struct intel_cdclk_config *cdclk_config) {
+	int min_throttle_val;
+	int min_tracker_state;
+	enum dbuf_slice slice;
+	int mdclk_cdclk_div_ratio;
+	int mbus_join =3D intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
+
+	mdclk_cdclk_div_ratio =3D get_mdclk_cdclk_ratio(i915, cdclk_config);
+
+	min_throttle_val =3D=20
+MBUS_TRANS_THROTTLE_MIN_SELECT(mdclk_cdclk_div_ratio);
+
+	intel_de_rmw(i915, MBUS_CTL, MBUS_TRANS_THROTTLE_MIN_MASK,=20
+min_throttle_val);
+
+	if (mbus_join)
+		mdclk_cdclk_div_ratio =3D (mdclk_cdclk_div_ratio << 1) + 1;
+
+	min_tracker_state =3D=20
+DBUF_MIN_TRACKER_STATE_SERVICE(mdclk_cdclk_div_ratio);
+
+	for_each_dbuf_slice(i915, slice)
+		intel_de_rmw(i915, DBUF_CTL_S(slice),
+			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
+			     min_tracker_state);
+}
+
+static void lnl_cdclk_squash_program(struct drm_i915_private *i915,
+				     const struct intel_cdclk_config *cdclk_config,
+				     u16 waveform)
+{
+	if (cdclk_config->cdclk < i915->display.cdclk.hw.cdclk)
+		/* Program mbus_ctrl and dbuf_ctrl registers as Pre hook */
+		lnl_prog_mbus_dbuf_ctrl(i915, cdclk_config);
+
+	dg2_cdclk_squash_program(i915, waveform);
+
+	if (cdclk_config->cdclk > i915->display.cdclk.hw.cdclk)
+		/* Program mbus_ctrl and dbuf_ctrl registers as Post hook */
+		lnl_prog_mbus_dbuf_ctrl(i915, cdclk_config); }
+
 static int cdclk_squash_divider(u16 waveform)  {
 	return hweight16(waveform ?: 0xffff);
@@ -1913,8 +1955,13 @@ static void _bxt_set_cdclk(struct drm_i915_private *=
dev_priv,
 	else
 		clock =3D cdclk;
=20
-	if (HAS_CDCLK_SQUASH(dev_priv))
-		dg2_cdclk_squash_program(dev_priv, waveform);
+	if (HAS_CDCLK_SQUASH(dev_priv)) {
+		if (DISPLAY_VER(dev_priv) >=3D 20)
+			lnl_cdclk_squash_program(dev_priv, cdclk_config,
+						 waveform);
+		else
+			dg2_cdclk_squash_program(dev_priv, waveform);
+	}
=20
 	val =3D bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
--
2.40.1


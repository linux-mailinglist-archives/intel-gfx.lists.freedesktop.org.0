Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EDA45F1F0
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 17:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCA9E6E48B;
	Fri, 26 Nov 2021 16:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 485F76E194
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Nov 2021 16:33:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10180"; a="235627439"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="235627439"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 08:33:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="498459502"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 26 Nov 2021 08:33:21 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 26 Nov 2021 08:33:21 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 26 Nov 2021 08:33:21 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 26 Nov 2021 08:33:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kzrVkl5jxAccITIrw13tz31AarF6ZmHBE+iA1wRtZObxKZmQ7uR5aYgD3BhgM/CCE5BCOlrUlPfjMKEi7v8SB2GHdFsOMQlKmwJxnod+SFRkktXpFRKY86yZDEsRZbLiBCQF08bWYp6ZwmFalKy3WRVLSrUODFBM7YQo/GVtJPrSWEpt2ixjnqf0Z33Vdbbe2LuIHhe0mRH+bgUjobtZxzZ/QMzhLD0P075IYnNXYsB6JD/34zcPUh+eypsoQYTZBVOF1ngwY8edoUpS3Yf/dae8GjK7EV0g5YJwIkFko0pmkeoG4eJCmizTxzCtD/YAMH1zQ9P4UjFhgzKch9rTWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTk7gYmsTffsq5crNHWQQXQWMWCQNEA7ra+/FRWHggs=;
 b=RTZOmcCdAZBPm8blufrZo5zD1bW7qU6HsgQ27A6EaslpyhnP2Jk23TeIYLaE4LEZ8vhvyGxUGyUSbojzF9xm4yok9uo5EwN+jOF5pjjM8Vdxa02Lt3ZNvlSYXQeHye9jYU4N19VKHhor9khpYL9LYJNUL7DVDwcTWGBbc1q9IjNq9OBagYzrRp0/ltDxbypHAeMMTsmBuLFbQ5xEJO4vMwCnRZuWckt9CJiAI5t56+4AUE6Y+b0cQyfe0VqJmvI46ges38jljFi3Lu0LJYwqYXL+KJ6Bs+7qQPxuuKNBWuqL0+ltOxPm9JqIbl6uRQi1fEj8PwACHI57eGLfBkOHfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTk7gYmsTffsq5crNHWQQXQWMWCQNEA7ra+/FRWHggs=;
 b=RLDIaJI1diSariRyMqdWd89lZWPKj0RIdBZAg4xOBn4ednYkpVhor0ZMqr0XM9NOlJSCS0gzrY4Kn6T5sNh+2HRdhQLAGTOp75zqm80E7L28r6DAtXULn1YQvZ3xjVD0xQFPCDdH+Yq/FtZGLCB+otlIXeWa+YXQWLiWMDJncYQ=
Received: from BN9PR11MB5417.namprd11.prod.outlook.com (2603:10b6:408:11e::7)
 by BN9PR11MB5435.namprd11.prod.outlook.com (2603:10b6:408:100::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.20; Fri, 26 Nov
 2021 16:33:17 +0000
Received: from BN9PR11MB5417.namprd11.prod.outlook.com
 ([fe80::a597:1f9:4b5c:598d]) by BN9PR11MB5417.namprd11.prod.outlook.com
 ([fe80::a597:1f9:4b5c:598d%3]) with mapi id 15.20.4669.024; Fri, 26 Nov 2021
 16:33:17 +0000
From: "Talla, RavitejaX Goud" <ravitejax.goud.talla@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>, "Pandey, Hariom"
 <hariom.pandey@intel.com>, "Harrison, John C" <john.c.harrison@intel.com>
Thread-Topic: [PATCH] drm/i915/gen11: Moving WAs to icl_gt_workarounds_init()
Thread-Index: AQHX4HhicLULGvTixEm0Hfqxj86PUawWBIWg
Date: Fri, 26 Nov 2021 16:33:17 +0000
Message-ID: <BN9PR11MB54176271A36D62CDECF77408CC639@BN9PR11MB5417.namprd11.prod.outlook.com>
References: <20211123144559.3474989-1-ravitejax.goud.talla@intel.com>
In-Reply-To: <20211123144559.3474989-1-ravitejax.goud.talla@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.41
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e190906b-141c-4d47-6eab-08d9b0fa7388
x-ms-traffictypediagnostic: BN9PR11MB5435:
x-microsoft-antispam-prvs: <BN9PR11MB5435E1C2EB0588C520CC5FFACC639@BN9PR11MB5435.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:517;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lPwsxU9uebUV2eIyZhpa0zRmVIUYoRqkKf3mjVceTWRIS5eeoTDAg9/Ngz8q161Ow/0xQnuiOXweKv6Jk+86mX+yWGcvEu/FEeX5OLEouKoNugu4T1Y6L8ohblBg0clh5nwC7MQx4LerVDslJrk6hIyjQLj93qpkIIVSn2Kz6sIMVXQsRlvCBcO/Smb/48Y5ZfW8nHs9Tv1kZwMfLPrQl42Ptq+/svcuYgRXE5ufwF2HbIDqpGzGN5WqCWWNmHUWUDWcPQ7pHtSrxLlWQngo/+co0QhVEgLmNZL97OrmAIccKJXs6ctbYyBtkEi1SrOD1ddfF0nE6h2k2g6qfC/uhZRp2EHNk9drxLsug8Mlw2a7Rt1gvV2d0UHxow9egNrnsbM3UYm46hQ69Y7iacLNwAuC4UpYkioBMofd8DeHpECFkxWtNuYhOQ/5vXYSB8Ci3bvSFGGW5gr2Lqu8n1tJTcqGce3Ijo7TgDHrY/KYAilnveAz3PvTik9Qx25xkzL5oXjxyAxxIHe6nDl0+CTm/8v8g1qXg78i1T7cC0QuDfPCCr6Wdsptq4JzWJTylB0Cb2Sf2zgLI4xJFaCH2RBteEUAZ5gIboN7dTg8Mj0vTGsBy0JK0GF+1Cn2G0Hx61Ju92B/Z4v3N3q3RXAf9ZWErdyodRJVFu13NWw2MLvawTS7xW0zxHzLsKO3oorBQsj5d4LXpb1TRMIW1BUlN/0k0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5417.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(8676002)(8936002)(82960400001)(52536014)(7696005)(55016003)(83380400001)(38070700005)(316002)(38100700002)(6506007)(76116006)(66446008)(64756008)(33656002)(2906002)(5660300002)(66556008)(71200400001)(66476007)(26005)(6636002)(66946007)(122000001)(86362001)(53546011)(186003)(9686003)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DdIkcHFioMxnLZwCzgZiyM94dwe2pc+xPhHe64sOd06ICboif92IB2SqUxFH?=
 =?us-ascii?Q?Mm8aRZf5tVv6iQr/I7OWiHZ8dMvc7DcLm0ukKdK8Q7tjGNtDBzk9IFw3PW8Z?=
 =?us-ascii?Q?Ba+YxlsVWuKXPXZzCgM9opITd61M5bbUoSfasDTEyhMszu2pw2uNBiZzJmCq?=
 =?us-ascii?Q?SpzOF9p1CwjXU9c1N4AlL4eZm1n7boPMee/+TfeUqH62RXDf9wiIgO1RfF1u?=
 =?us-ascii?Q?S6w+PcvSgBUpvK6HHpWSyin+ApDLGoNzrAkZaIVWVKLvkFaUK/TIClLxc9Ee?=
 =?us-ascii?Q?qJbQOAD8mJzjUllGcbXIb2KT6luBv/ulj8B8Raguru8n8O2+q4f60vk03/CA?=
 =?us-ascii?Q?/ic7eRODhz07LIs9F3j1nT8elWes6fnlJMIXOjBO8hVhQu5Jeexi4//6fmNv?=
 =?us-ascii?Q?v0yRlkBozirHvh7YK/FIShum3CcDZQqMEussBQyBuKcNB/3c1eoixqc1WEdI?=
 =?us-ascii?Q?4hPlnhpliJXtETbfNneJShCFyP9PvHgQEiJBSxCaFWPM6Ad6N9IUsGkCtGAj?=
 =?us-ascii?Q?N3QjlysWIqtBh4npQyEePRdfKBA2ZWLHdvgSo+RsZDrs3knpTsb42NrClGec?=
 =?us-ascii?Q?ZIwhbcXyba4IuEufRihGYfwhzN8iEjkDBaPhQ5yIJORpGDYvdxh/97WSdZ83?=
 =?us-ascii?Q?4sF2yE48O5JYLVyPPlfLGvQ9gfAQiSaLhFQo1btU/xKT6Jtbg//nO7krMrXH?=
 =?us-ascii?Q?X9dRmB9q4nSk1zLDQOplYkSIhasSUpj/hbr5dDjG3N1UnTkEwq0kCLf97bZz?=
 =?us-ascii?Q?+R5ppKL1/nJg2NLBd/jcZSd/GAuzpOuIafNhYDURm5vzvZsZet1SusBBffqT?=
 =?us-ascii?Q?Pld7IuckAwNiq4+s/cerZqCFcc89oixLWjLI2bV86F6zpwsDCd9cXrF6UQPz?=
 =?us-ascii?Q?O0m2XutW3yrmlZ+PoVTyJrQELmhUdSQFx1RvvMnQbZvWKXaBPpv5WKlpgL0f?=
 =?us-ascii?Q?3gORizvrkc+lTYAQD0DkAFu2Q4D8bbQpz25/Y3hsRax43jadhcOT7xagRCiD?=
 =?us-ascii?Q?qdUyB84EVximzuNwHvfqCc0dUP5v/p7xLJaND5LYlaITUCX9uXgCQh6SzGrl?=
 =?us-ascii?Q?Jp4ljsWulPej5D6ztQZzpkOAV/Awc7pzEnC2SCNrOkGHGIssDRCHvSW+dMuX?=
 =?us-ascii?Q?QeMWcvZ11wNYzUQWP/PLlZVSscZQHanByr+VANdh20RMOXfZV8U38FckqhqR?=
 =?us-ascii?Q?wOJ3Cwxw3DvD4HdSG5CB7fpcEt7UH1LfEMoJ/L37marMwjuBqgqVJ80qagYu?=
 =?us-ascii?Q?9g9uWONImMAxtqkq+FE6Bedzf8/uRC5FW7jcegnPkUsh7rXGdUI0G2TARINA?=
 =?us-ascii?Q?qJBFO5VjrMj4CA+v83SsDzCqrBtqN50qZcZcxRp1imzLZMKe0rdM99f7mnc6?=
 =?us-ascii?Q?S1IzvQvahbX1r9ZypovI74hpsF5V+tFplIXZ6oWhxwORRlV9Oy4mTKLTy0OM?=
 =?us-ascii?Q?haJVn2jYrMTgG2ckafQOyrS9o7xi2pVAntf7GConUP/cezP2p5wgzADr/YFv?=
 =?us-ascii?Q?lmZgua1FdGE99PSpSNyD1Swla6e86pucTzFsIrmr8TPR/KiMzOOkexQ4TtDY?=
 =?us-ascii?Q?sqta83kjt2dJVmSzS2JAn/JEbwhVCGChvP+bHbFZPDeXZAVbFVTL6BJBRleJ?=
 =?us-ascii?Q?BjA83+vy2oCIQ/sB5BF6yR7qRve029DvM2XPbQLaVNOwiLTzEJon27ps8g7K?=
 =?us-ascii?Q?7Q6qog=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5417.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e190906b-141c-4d47-6eab-08d9b0fa7388
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2021 16:33:17.5054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5OE8prv3rMzEvbC8zs413Pe+PG138iEoTS3AK8c9oOjtaST1Nx094LkAbAUdo48SdJbOIRNZ/yl7pqjCnfxSkewkVQ45IyhkbqWc4+EjLm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5435
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: Moving WAs to
 icl_gt_workarounds_init()
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

Hi Harrison,
This patch will fix guc enabling error which is tested on local setup, plea=
se make your comments.

Thanks,
Raviteja=20

-----Original Message-----
From: Talla, RavitejaX Goud <ravitejax.goud.talla@intel.com>=20
Sent: Tuesday, November 23, 2021 8:16 PM
To: intel-gfx@lists.freedesktop.org; Surendrakumar Upadhyay, TejaskumarX <t=
ejaskumarx.surendrakumar.upadhyay@intel.com>; Pandey, Hariom <hariom.pandey=
@intel.com>; Harrison, John C <john.c.harrison@intel.com>
Cc: Talla, RavitejaX Goud <ravitejax.goud.talla@intel.com>
Subject: [PATCH] drm/i915/gen11: Moving WAs to icl_gt_workarounds_init()

From: raviteja goud talla <ravitejax.goud.talla@intel.com>

Bspec page says "Reset: BUS", Accordingly moving w/a's:
Wa_1407352427,Wa_1406680159 to proper function icl_gt_workarounds_init() Wh=
ich will resolve guc enabling error

Cc: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: raviteja goud talla <ravitejax.goud.talla@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/=
i915/gt/intel_workarounds.c
index a9727447c037..4f7b598d21b1 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1231,6 +1231,15 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct =
i915_wa_list *wal)
 		    GAMT_CHKN_BIT_REG,
 		    GAMT_CHKN_DISABLE_L3_COH_PIPE);
=20
+	/* Wa_1407352427:icl,ehl */
+	wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
+			PSDUNIT_CLKGATE_DIS);
+
+	/* Wa_1406680159:icl,ehl */
+	wa_write_or(wal,
+			SUBSLICE_UNIT_LEVEL_CLKGATE,
+			GWUNIT_CLKGATE_DIS);
+
 	/* Wa_1607087056:icl,ehl,jsl */
 	if (IS_ICELAKE(i915) ||
 	    IS_JSL_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) @@ -2272,15 +2281,6=
 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list =
*wal)
 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
 			    VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);
=20
-		/* Wa_1407352427:icl,ehl */
-		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
-			    PSDUNIT_CLKGATE_DIS);
-
-		/* Wa_1406680159:icl,ehl */
-		wa_write_or(wal,
-			    SUBSLICE_UNIT_LEVEL_CLKGATE,
-			    GWUNIT_CLKGATE_DIS);
-
 		/*
 		 * Wa_1408767742:icl[a2..forever],ehl[all]
 		 * Wa_1605460711:icl[a0..c0]
--
2.30.2


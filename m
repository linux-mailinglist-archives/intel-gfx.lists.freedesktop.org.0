Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA6347BEE8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 12:28:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E5D10E56C;
	Tue, 21 Dec 2021 11:28:55 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C85AF10E56C;
 Tue, 21 Dec 2021 11:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640086134; x=1671622134;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pL2cAMJLR2C3pG2Nuo8xYXQG9EZoKQcF2pHLwzkRlHE=;
 b=I8DJNPAZzxVyAggEx+Uym+dyEbOC1zul2uUc23HkGz+9l8cZZROt76Bz
 CkIsZa54o/qelXzrxnishaJyji/LdLnOonBVQkHD1vAwfdz6yktZjGENT
 PU0jj62Ay8kY6awAqzW12tOY8akrtDwHbx6SrlcUtzSfcsxrr7yTCKHAT
 DEH+SRP8/vSDtVckS5zAUyX3gKn90ESBG1vH/J6UOhlMmsk6fpaKhwgUC
 Mtvri5tT8PdLt91JtNpv3NWIx22CNaSOnOHDdry6a/5O5gNe5ZMcUv5E6
 Wb5P5A0gyMBpcFgozZMtTC7YCQYjtpdNUZi8aCx8SB0JU+TZsaL3ACIaX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="221053196"
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="221053196"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 03:28:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="484388404"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 21 Dec 2021 03:28:54 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 03:28:53 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 03:28:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 21 Dec 2021 03:28:53 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 21 Dec 2021 03:28:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nRmrYwbYeViiqx+tPgm+2plFSbKeZSbb83zhuv+GJZlTlr2xuQJlgBN/Vkx27m1sjXQICX4FzPoLOBMuEedodt7lGq2Xynh3crbkB9KiBbj7vPc3POFrwrHEjN1oqxx4H6XKSIgf5WSmHyudY7Sgb1PUgAafCZwKu4WRNs6rFh5zeSjHOgIZ407krw1y8mi82GkoCIDxhvwnNZSQJ2nj61gwHt2O3Int0mg0hAuxTQt/1pYG9g7rGf9PIv12qIc+n2TZwQbnXHbEojHq38ob/qDAUM8UeAAWKyho433le+FNnTXoIqvbXwwvySJuMX+1lZPicZIB72CrpzZcxZLAdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wc6IJ4HVh0CZ738uSxv5C8fTMTZIRGZgGKbNCYzFbPI=;
 b=S/h2fOepOQXfBXtPGDlhXRzyIYWVQsYWeRNp5HY9NhPcolBxqk540DRien40/1Z0soO6PeubtlzpCHmvrl86BNfU0irb4QPMdLj8X7LR+ldeFKmvDvPBDsPuU8RIYGrqOS49pnKSseg8sue7s0cpx5idUTMuKYpN5Dwiqaxplvd7Psca8OigqgtVlE8S1MW6yLmgoFkQstMb0qOvlNTK1vENGZJQOkFksjLwVje19njySHJpBOlUswR97bupY+6v9DIcsLuws2uR9rxQnmu0U3DlfSvl/s7oOLor+QVqDSeGV9ambTw37K2y8yo4reqrhEvYXBdUSkXGl5xTqo7lUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4492.namprd11.prod.outlook.com (2603:10b6:5:201::31)
 by DM5PR1101MB2265.namprd11.prod.outlook.com (2603:10b6:4:50::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.19; Tue, 21 Dec
 2021 11:28:51 +0000
Received: from DM6PR11MB4492.namprd11.prod.outlook.com
 ([fe80::e0df:24ed:d523:5693]) by DM6PR11MB4492.namprd11.prod.outlook.com
 ([fe80::e0df:24ed:d523:5693%4]) with mapi id 15.20.4801.022; Tue, 21 Dec 2021
 11:28:51 +0000
From: "Dandamudi, Priyanka" <priyanka.dandamudi@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "IGT-Dev@Lists.FreeDesktop.Org" <IGT-Dev@Lists.FreeDesktop.Org>
Thread-Topic: [igt-dev] [PATCH i-g-t 04/11] tests/i915/i915_hangman:
 Explicitly test per engine reset vs full GPU reset
Thread-Index: AQHX8HlQhzPCFgFD10KBMN7ms0CWD6w819sg
Date: Tue, 21 Dec 2021 11:28:50 +0000
Message-ID: <DM6PR11MB4492860E286EBE5F6CB8D1648D7C9@DM6PR11MB4492.namprd11.prod.outlook.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
 <20211213232914.2523139-5-John.C.Harrison@Intel.com>
In-Reply-To: <20211213232914.2523139-5-John.C.Harrison@Intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d1bd0d1-742a-441d-d0ed-08d9c4751049
x-ms-traffictypediagnostic: DM5PR1101MB2265:EE_
x-microsoft-antispam-prvs: <DM5PR1101MB2265CE7F25886EC4B030B9D38D7C9@DM5PR1101MB2265.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:146;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qz+bhzZBWEcigNB/RU1WfxiQHcPrB7pD5XWjrrSRcvlW7fcdMF8cmrE1t3+tQqs3JIMoMVgtPFg6NNHhNq4CVCLmgXehxWINTsL1xrFoynaaLB7hm7vuhuBdYnwb4EUqHbXnjxEn9lKpCuYCssSkIwV6gRKeMoV2U1isjRi3Mx46W1TASdFVQQOueNRORdqUOODMIaHmIawYjijFmM/20Y/MhMtxe6lsg7QUaQUp6eq3b16osVubWf5gcgF4vhL2W/tn4Gcf05HbROdpTP/GN279oc49K5E5+yc8IilmX8Me5D81xHnxguLp7bo+lKvZ77U3vT1J+0V2J/itauv7KZkGwzxsTxM+UCWleqDN7BIG4NhfNYy3n50www/M1j+jfUqQQFIaM4OcGJ/KqgSsqHSS8WE1Q6iPlc8rR9jN18St7o58Q/7/p34EdCG/ZeV8Vqc72mvIKGwmpvZi4Nm8xVcJEjClfQX/+l2owKv9ikI3v23U+JE31+jBV+ioGLnJLkWMtxJvWypHgFQPbsaS2YqaNWxrmXDjBfjumoo+Uetx0uFcCXEjO9wW4NxzqQA19T53k9mpESc7qNDFimQCfoXAe26KPRopZq6ltESrLmfg948mQMzB4nq87OnmBpfmh1oGQEzTnM/irXWzIV6a1rSHeZWPfxK7q9rpnTDCv0ZycIRs8rSRIiY7HpfDAKHyo0A2EW5mKDfYRPZPchCgNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4492.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(8676002)(83380400001)(76116006)(450100002)(8936002)(316002)(4326008)(110136005)(66946007)(52536014)(66446008)(9686003)(86362001)(64756008)(71200400001)(66556008)(5660300002)(38100700002)(33656002)(186003)(6506007)(122000001)(26005)(7696005)(55016003)(38070700005)(2906002)(66476007)(82960400001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?od3JNhKtkCfoyUM0QRRQTycweOtmJ6Wz0HZIaGwGTT4D1ch2pVrlH308kS0h?=
 =?us-ascii?Q?xE4wsWmE5wWC4pEnvmFv1OFXFezCcxUAzUfISeRVxrtngnZxssReN0t/IZHw?=
 =?us-ascii?Q?QcUSovj9nrVWDH2Xaw7r37a83Y55jLxn70Pi4tp8abcejkwd+jjEPPhSethG?=
 =?us-ascii?Q?X6d7Wmp6lKMSjec7nDyqFe+/rSp6sgyAcq2L29H021ZJgOY+lKssT/MZ8pf8?=
 =?us-ascii?Q?WTUsski27ZpcOJXSDd52aFmF24j2Pp1QCIwhRBuj07tWSs2eUXlvjQumaVd/?=
 =?us-ascii?Q?K6CAWu2T3caU4VuzZMNXiE0ewZJlOdJB8dIYxv+pVel9mWzh3OkdB0BRj0ba?=
 =?us-ascii?Q?+RKZTbVMY8U1HCpIE6TOtrCsHzlcnoW2LipfvESZTTPQaSLnAQXjgAwc6hTM?=
 =?us-ascii?Q?csgZsG8BUqJ24fFJXNTHESvdnvOo1UtH7ew+p3EhTv9qxWDwYRvSe/spsylM?=
 =?us-ascii?Q?3Uo4ow5PMnds0/IYfXeZTjI1Rc7PRhVFL3hblNC5VVS2pzUxP7XBnGqlP+dI?=
 =?us-ascii?Q?a+NyCx8SaE42nlxVZI/s1qQa85awGfrhRYr2TiGBIT8+wbgXR8T5/Fq8g+kw?=
 =?us-ascii?Q?qbWfADiLJiykSTYznDeff2MWIn8rN1ioA1vurzZfj2zP9vShLKUksdvYnMFq?=
 =?us-ascii?Q?E9thzoirgMCC9JZNUbrvm4wkbJLgatZBNcT1wnve/CIp1IVz4WnMHiANYnQc?=
 =?us-ascii?Q?IlKg4/oMU4eQH+WAvwgHMqqvJ3Uo5V8aDVgOnp6UD1Ix3xwe/I3LoLIq/VFE?=
 =?us-ascii?Q?KQWrZ26wys5j15h7+FgClL6c0rJFShmovGPcgq257NmVQmUJvmKzncnLruVd?=
 =?us-ascii?Q?RVv0NchY0/VrUqZJEmT3TYzhbGEUsINSsieAJB1+AwN1K1igOLP2t8n+9FUe?=
 =?us-ascii?Q?KT/jhr5EEV2rWH1hHZ8tOFqRm/vx0R+vRMPChg7ZGmxQLgqeknR8Ef6c+wIU?=
 =?us-ascii?Q?pcQpBE4AzL0l8P7kqwN62tkv6Nn+fTzA3+shVNUmJ+OtgDCfI0XSueTSFVJR?=
 =?us-ascii?Q?pWiANgdsjlWudLGoXYOFKAmjCtJwFI1nGzh2ooFO2o36ElljUrs/1djpVFsH?=
 =?us-ascii?Q?nlYkIuJN8DfPMu3vAOPBnB7XZBjOASJoVwc+OFytMx8DH2ZwiPEqiWju0fob?=
 =?us-ascii?Q?YBmWx02z12nD/Il2URcWgeY5ziSD+ftYKYm5aFMJQiVLaxDMaI7ty/f5K8oj?=
 =?us-ascii?Q?hlRwkZI+1CBHO3XwLyARYWUsz21G+Sd8cMN1IWTIWbs3IZOPb2u6vmwexKCj?=
 =?us-ascii?Q?c30YksivIH9r8XUlL7d1f7hYXJB2ILnQq3hgjqJOEajbyCudeZGBagJllNRi?=
 =?us-ascii?Q?UIwrxDce757TudYF7wpIl99gGYBkPTWgec1oRP0+90sqKmS1t2Z8VWKzKRGv?=
 =?us-ascii?Q?QbSmsHx6HJFtT2SqaBTsk5FCp4js2FJuJuPg7/JzZVp6ye3WjVoUHiv1jFKV?=
 =?us-ascii?Q?Z7KfJHU4Ohxmsl7jrwIUd7Tx5k6GZvX6ygA62NgGcqB4lqNfeqR8kiD8sAwr?=
 =?us-ascii?Q?JaBWgWWdvh+fS4+Y9STYsWC1KQn7EGLbCsiJOz7ort/H5BG9XGYmAm3Jexto?=
 =?us-ascii?Q?IqRRkXa9ZFuKhgLBVlqc3VY8kf4V/fLq5KgyXmOyutyfoZKS+BRnB1ogX1sp?=
 =?us-ascii?Q?qmlsW56J/PGqsAeAeR/i0yLlXPRrSWDgP4JWPAp4KKg2+lrLnbz+iRRP4Szz?=
 =?us-ascii?Q?RuSpvw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4492.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d1bd0d1-742a-441d-d0ed-08d9c4751049
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2021 11:28:51.2189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MXCWcIvVCbJL49k/QZSc6ciVc6FlJzibQrtmnSlQhfn6uN5xWmxdoF5c4Wn8GdpvPj7KoO9XaVE+3onjN2JEpzNam5HLVIbZKbPGij7mV2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2265
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 04/11]
 tests/i915/i915_hangman: Explicitly test per engine reset vs full GPU reset
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
Cc: "Intel-GFX@Lists.FreeDesktop.Org" <Intel-GFX@Lists.FreeDesktop.Org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Does this test series cover to prove that it can survive killing one withou=
t killing all the others except RCS+CCS combination(killing one affects oth=
er and shows with the help of reset stats)?


-----Original Message-----
From: igt-dev <igt-dev-bounces@lists.freedesktop.org> On Behalf Of John.C.H=
arrison@Intel.com
Sent: 14 December 2021 04:59 AM
To: IGT-Dev@Lists.FreeDesktop.Org
Cc: Intel-GFX@Lists.FreeDesktop.Org
Subject: [igt-dev] [PATCH i-g-t 04/11] tests/i915/i915_hangman: Explicitly =
test per engine reset vs full GPU reset

From: John Harrison <John.C.Harrison@Intel.com>

Although the hangman test was ensuring that *some* reset functionality was =
enabled, it did not differentiate what kind. The infrastructure required to=
 choose between per engine reset or full GT reset was recently added. So up=
date this test to use it as well.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_hangman.c | 77 +++++++++++++++++++++++++--------------
 1 file changed, 50 insertions(+), 27 deletions(-)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c index bd=
787d7b4..f8a48337c 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -323,40 +323,26 @@ static void hangcheck_unterminated(const intel_ctx_t =
*ctx)
 	}
 }
=20
-igt_main
+static void do_tests(const char *name, const char *prefix,
+		     const intel_ctx_t *ctx)
 {
 	const struct intel_execution_engine2 *e;
-	const intel_ctx_t *ctx;
-	igt_hang_t hang =3D {};
-
-	igt_fixture {
-		device =3D drm_open_driver(DRIVER_INTEL);
-		igt_require_gem(device);
-
-		ctx =3D intel_ctx_create_all_physical(device);
-
-		hang =3D igt_allow_hang(device, ctx->id, HANG_ALLOW_CAPTURE);
-
-		sysfs =3D igt_sysfs_open(device);
-		igt_assert(sysfs !=3D -1);
+	char buff[256];
=20
-		igt_require(has_error_state(sysfs));
-	}
-
-	igt_describe("Basic error capture");
-	igt_subtest("error-state-basic")
-		test_error_state_basic();
-
-	igt_describe("Per engine error capture");
-	igt_subtest_with_dynamic("error-state-capture") {
+	snprintf(buff, sizeof(buff), "Per engine error capture (%s reset)", name)=
;
+	igt_describe(buff);
+	snprintf(buff, sizeof(buff), "%s-error-state-capture", prefix);
+	igt_subtest_with_dynamic(buff) {
 		for_each_ctx_engine(device, ctx, e) {
 			igt_dynamic_f("%s", e->name)
 				test_error_state_capture(ctx, e);
 		}
 	}
=20
-	igt_describe("Per engine hang recovery (spin)");
-	igt_subtest_with_dynamic("engine-hang") {
+	snprintf(buff, sizeof(buff), "Per engine hang recovery (spin, %s reset)",=
 name);
+	igt_describe(buff);
+	snprintf(buff, sizeof(buff), "%s-engine-hang", prefix);
+	igt_subtest_with_dynamic(buff) {
                 int has_gpu_reset =3D 0;
 		struct drm_i915_getparam gp =3D {
 			.param =3D I915_PARAM_HAS_GPU_RESET,
@@ -374,8 +360,10 @@ igt_main
 		}
 	}
=20
-	igt_describe("Per engine hang recovery (invalid CS)");
-	igt_subtest_with_dynamic("engine-error") {
+	snprintf(buff, sizeof(buff), "Per engine hang recovery (invalid CS, %s re=
set)", name);
+	igt_describe(buff);
+	snprintf(buff, sizeof(buff), "%s-engine-error", prefix);
+	igt_subtest_with_dynamic(buff) {
 		int has_gpu_reset =3D 0;
 		struct drm_i915_getparam gp =3D {
 			.param =3D I915_PARAM_HAS_GPU_RESET,
@@ -391,11 +379,46 @@ igt_main
 				test_engine_hang(ctx, e, IGT_SPIN_INVALID_CS);
 		}
 	}
+}
+
+igt_main
+{
+	const intel_ctx_t *ctx;
+	igt_hang_t hang =3D {};
+
+	igt_fixture {
+		device =3D drm_open_driver(DRIVER_INTEL);
+		igt_require_gem(device);
+
+		ctx =3D intel_ctx_create_all_physical(device);
+
+		hang =3D igt_allow_hang(device, ctx->id, HANG_ALLOW_CAPTURE);
+
+		sysfs =3D igt_sysfs_open(device);
+		igt_assert(sysfs !=3D -1);
+
+		igt_require(has_error_state(sysfs));
+	}
+
+	igt_describe("Basic error capture");
+	igt_subtest("error-state-basic")
+		test_error_state_basic();
+
=20
 	igt_describe("Check that executing unintialised memory causes a hang");
 	igt_subtest("hangcheck-unterminated")
 		hangcheck_unterminated(ctx);
=20
+	do_tests("GT", "gt", ctx);
+
+	igt_fixture {
+		igt_disallow_hang(device, hang);
+
+		hang =3D igt_allow_hang(device, ctx->id, HANG_ALLOW_CAPTURE | HANG_WANT_=
ENGINE_RESET);
+	}
+
+	do_tests("engine", "engine", ctx);
+
 	igt_fixture {
 		igt_disallow_hang(device, hang);
 		intel_ctx_destroy(device, ctx);
--
2.25.1


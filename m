Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A35FA737BF9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 09:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB1F10E3D8;
	Wed, 21 Jun 2023 07:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E8A710E3D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 07:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687332207; x=1718868207;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=EwOqCe9WT7UlO54sKgCeVZkCRyuWuKSKDQ+ucqPzr6Q=;
 b=lKy/fPzg8a9fNfKOC7s8+iMm+h2RjTaXbzfQARKvtNsWnYpwn8YsxpX/
 d+5rtl6xofd1JlNuEmH4kIZdcB/mYvj/38UvQwBsFBJAE/jAezTgBLxa1
 wELFmS3GNdCara060SvftQ89VUxxyiUpR9jc3by1tQ7i67ap0nB5jyL2P
 TiCAfvH9fdTEPF/olzNP+w11fEkeK1Q9kop2CxjEIBSxGEyzNsmH/2IJX
 uBpTOi+tOOmRZtOS9XVjlvHLoM1XT74OZSx3c77FK/m1IWJf2ebgYUzwe
 MorPqLPm1rl4CpS+2avUtgeZZQ3FeIbVdBziwvpg+NWUu6wW7soNo//Y9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="344832357"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="344832357"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:23:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="804264911"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="804264911"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Jun 2023 00:23:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 00:23:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 00:23:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 00:23:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 00:23:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fm+uAhRmcq2OMTO0nTDlVYFVVkdRb0NtixVBrBeYKiUcNXHPVOkf++kQdcu8HEpqtwoXpEgbobmZ/ct4nbtKpv2k4lZPw+uxtyr5UOS1FpUPiAOFtxP3yMgvZHPe3GFXOu3F/Iz8aNEU0myEsBeRkRLn43PTwA0/LiunfDAO/rmjwqPfXBCWFmpdFkoNeLDVHhw3lAlNyCQBXawosBfJlY4niIxPlIPxV0NywCEo9tLZAFF7s0g7Aj3EuMqcRv7FxEGVqjvSXJSWVAxaAkoKhKMAUU7JBSWxzNNqZuUzJhfjXV9kX8HE+3GbaYtR/WngQOE4VcMvujcZ5bu53yLkUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KmxFiJCxE+X/EvJeH2GifaQNWg5p+9VUQndnwxVDnL4=;
 b=H/HtpBGaJWr78NFcLb6vidd5vOmf+Lh3BYbeGxVwROPWrDlCpiw4zwXA0qmQCI6waGdBIhqc2FxD0mij+jYiF1tuGY/I86HPofd7DiXwy1bpc94OdmegG0g43nvQYEiETfegmii5HCDwicnpNFZszvBVjIoNJOWSlRhjpu7lkEDElv8dk9oD9HQWQwl8KcQivSmI9G3Cgzffl6+M9WT4ca/PdQW+hGSbYYxQFITLazAiZH5rMctEn+Y0JQQdrQ/sIwErTzAU6KXU4qf0qmBcSPx3jnQ3B930tYKvTtrdwqdlgEw9BPW3C875o35lEEQfAabjbIP2mWgwqL4DElPsLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Wed, 21 Jun
 2023 07:23:08 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8%7]) with mapi id 15.20.6500.036; Wed, 21 Jun 2023
 07:23:08 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: Regression Tracking: Build failure in Linux-next
Thread-Index: AdmkD9fJ56lCHhruTsWrPkA0Bq4AUA==
Date: Wed, 21 Jun 2023 07:23:08 +0000
Message-ID: <SJ1PR11MB6129B119B2F096F711560DECB95DA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH3PR11MB8466:EE_
x-ms-office365-filtering-correlation-id: ee970cbd-2623-42f6-acf7-08db72285cb5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: juVR0Om9IWivxQimcORWHENLr5tUeXTxSSWS38jfeaBArSzZzfG+wSSNisds9izdmGx839uukWKgDhYgfofkhOxzp+nkT9Bf7ID8GbK8piAoFi3PF/b5YF7mi5Yyrmst+Ax4UDwOYjCcMQZt9j3qH6TXj80iD1E0sTz5hF+D1+xUeFjU4sJ2FT/+iSuED5D8X891E8Po6C8bpeKrZzLC/B+YYxK8J40NDu3l7lgjOzNpjtZ9MgcQS7VMElMlMNKnZ7iGF98oS4XeXWuBmRr1zZ89YURnyRsDU2yEVt7lmUUM/6feueGzOZ/vER0v8THWgLP8z5DpuzC9wAJcYjwHvs0SGE5GavqIoK2qZmhWBt2RNnpst+IP/yp20+SN/qevJM8OXc1wQ3GaTW0jcOeJDYnLXn7DgvP3GVgulxhFpjMFlIObsceYhAur1Y0S/dBxN4QAShzGEuuc75Ci/UR/03D+dBDDvSWGxXwzQCQoHp0mG6wADyWtRuLaEG7zUYel5vMU8Wtmo5GbZlerflGPp9jwrPdyOLjpCM/yZZGMfUj1hyZAv+g5zIR4fuDPg55TGyz89XThS2SG3JUFBTYszmvmOARWb/BA57oucP7WoAY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(366004)(136003)(376002)(451199021)(478600001)(71200400001)(76116006)(66556008)(66476007)(66446008)(6916009)(66946007)(64756008)(26005)(186003)(9686003)(6506007)(7696005)(966005)(4326008)(66899021)(55016003)(5660300002)(52536014)(41300700001)(316002)(8936002)(8676002)(2906002)(38070700005)(38100700002)(82960400001)(122000001)(33656002)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cmmwEMq9KguhMh5kpM1ll/05Zn9HNuJF5rDqRyePEgYWSQzibxideddJPVBS?=
 =?us-ascii?Q?fyjT6LTr2VX++x4HQEfEYBkn+FpyjX46DqNThNQP4BIrtCytt1MOJ0SIJg8A?=
 =?us-ascii?Q?pREulwrBcgPkA98T2jhBkUGpdWHmBMk2wIEVcRXI33gd8N8uAwQrS6KQjdCu?=
 =?us-ascii?Q?BozDRxVFAAWMGDTMNMlkEyijanQDdqqed+9M3AXcKWoYsZBMMQakLt1EIdqg?=
 =?us-ascii?Q?aKvJtQqHCaYdX1hsgDIvrl7nXyQdYlAhN/rBXhKjgSfO+mjZZL/ieFa/0VrA?=
 =?us-ascii?Q?w+R5HzDPlUjx16cveqIx2XGDFAzmKU44FoDxehx9o8T2XFpNYJXviVMbe6Wt?=
 =?us-ascii?Q?t0ZBganU29clFcuQ8u2nqJ/2FQZnl04TOAhqrW9hsWGBFkazW8Mj/c4jAL/c?=
 =?us-ascii?Q?rKNGTHlKiUS4x7KMEbvLCDRDzlkmBTw9/PJT7JsCoTC5RoO6KbdJQ/wHjYqi?=
 =?us-ascii?Q?SWIYiVvMOO39HRpQGguSeLYjIFI3nno5xAKoF3C7q7qRWVNgHemBgg5PZtdN?=
 =?us-ascii?Q?DRlNHLZloX+/3tzhoSM9ZKNu/kgunCHyQrwvBLD0BsiwLwdcLkYYm1JoLpcY?=
 =?us-ascii?Q?Mp3ITVWhM+RTVAtXZZV6YtwxowPzm171z8H81zIW+l+0+QkiyPyJFZpsh7mb?=
 =?us-ascii?Q?4UpE9RAA710ActBoATC1ckkMMI9+L12/jGoJt/tMmatf7bqMqYxIuhV0yOY/?=
 =?us-ascii?Q?/1LvrtqjFqrtjVjBoIMA1lXiziOv3vj5T8GnLDhvFTHZ5PVmUmwVY5bCz7TA?=
 =?us-ascii?Q?oqj8FnUjubC5hiLSc3imry0kkh6yugKfR1Y8nN1f01OHvwlPANAbDXxitYOZ?=
 =?us-ascii?Q?6o9s0Q2ZZuVLrrNtAdsj5Pw/zSEyTdOsWe6O68YEQgl/YZOziLwLLUjgpcp1?=
 =?us-ascii?Q?AOE7EA3Yx/zb0IP7okKXkav7T3WN6kk959SSpZhmhhOqGM/b5UGYvq12ZD6G?=
 =?us-ascii?Q?XSCGv/waOi3Y8qk8F98/mjfw+lTI6mJZJLYdZ95hm8ChQkSfDQ4DP7vFmDwt?=
 =?us-ascii?Q?XPGmYBkWB3yC555e35G60nM6+8L2wFU3szifyTXWGhCSWOuFLN85M24QRXyy?=
 =?us-ascii?Q?1QSPIjqLh63eP+x9RROBwuXRgjX+pElc1PUMxjiXGP33QEJw+BafgoQQfgf/?=
 =?us-ascii?Q?qHQW2tKDmNOoClTBHpD6Qqr4hfOENnT6YorofiBJ5a8iJBthk7ADQ772Nfu4?=
 =?us-ascii?Q?oPPfK12kKJRRRpwpY9xyvZ7JFb3voN/cPqb8CUCkMRXFVpFLDwZIOka+MmxR?=
 =?us-ascii?Q?IOhRAFJk6Sy39X7vXJvgXdwwxWfR5KUUfsMi9n7ffwW64Hb/7vzku8Q+2U1k?=
 =?us-ascii?Q?1aa9y9vih0/FrHbHR0agfhXjL4NGxYiJi0kacYPNpXmbYyUCVX3WzOkM1RQG?=
 =?us-ascii?Q?BuBcQIivnCYZiVPfAwBMdGmhVIpuQN9po6ehJ2DkS0lSlB0n2WfDwZh4senN?=
 =?us-ascii?Q?Mw+OGmr8ZY4B4GU/NWfjzVlVWZ0qx9wDOPZy1mek2b4LmiO/wbs2a9BwtRdb?=
 =?us-ascii?Q?sUTsJcN9GDEo68diVv/T5Rq0OuIzQooKUntLao/dbB/Nl4XlxbdKShvADnCp?=
 =?us-ascii?Q?0isJgLHdnhz1supu4Ui9N8qeQ7dXsll9HFlK7R3zEvKbzqiNSPVQjQMB8iCn?=
 =?us-ascii?Q?vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee970cbd-2623-42f6-acf7-08db72285cb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 07:23:08.2300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z4tIAqorfhO0/9X/VyFpVIq3METFg8qfykXGgNOnF1FJ3Twbo+5Y5HtZAG88w6FS4Qh1CTx0dIaK/C5mbUU5m1tKKeIDDVNMKutMK4hF6Lc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Regression Tracking: Build failure in Linux-next
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

Hello all,

Since version next-20230613[1], we have observed build failures in the linu=
x-next tree [2]

We have bisected the issue to the following patch[3].

commit ef104443bffa004f631729dfc924f0b84abbd602
Author: Arnd Bergmann arnd@arndb.de
Date:   Tue May 16 21:57:29 2023 +0200

    procfs: consolidate arch_report_meminfo declaration

    The arch_report_meminfo() function is provided by four architectures,
    with a __weak fallback in procfs itself. On architectures that don't
    have a custom version, the __weak version causes a warning because
    of the missing prototype.

    Remove the architecture specific prototypes and instead add one
    in linux/proc_fs.h.

    Signed-off-by: Arnd Bergmann arnd@arndb.de
    Acked-by: Dave Hansen dave.hansen@linux.intel.com # for arch/x86
    Acked-by: Helge Deller deller@gmx.de # parisc
    Reviewed-by: Alexander Gordeev agordeev@linux.ibm.com
    Message-Id: 20230516195834.551901-1-arnd@kernel.org
    Signed-off-by: Christian Brauner brauner@kernel.org

The issue is particularly because of this change within the patch.

diff --git a/arch/x86/include/asm/pgtable_types.h b/arch/x86/include/asm/pg=
table_types.h
index 447d4bee25c4..ba3e2554799a 100644
--- a/arch/x86/include/asm/pgtable_types.h
+++ b/arch/x86/include/asm/pgtable_types.h
@@ -513,9 +513,6 @@ extern void native_pagetable_init(void);
#define native_pagetable_init        paging_init
#endif

-struct seq_file;
-extern void arch_report_meminfo(struct seq_file *m);
-

Adding the declaration struct seq_file in intel_display_power.h or to expli=
citly add the header file seq_file.h to the file helps in solving the issue=
.

Suggestions are welcome.


[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20230613
[2] http://gfx-ci.igk.intel.com/archive/deploy/next-20230613/build_failure.=
log
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?id=3Def104443bffa004f631729dfc924f0b84abbd602

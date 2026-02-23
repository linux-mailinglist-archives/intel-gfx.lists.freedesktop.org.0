Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ON57GDH8m2kC+wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 08:05:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2286172802
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 08:05:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC6010E258;
	Mon, 23 Feb 2026 07:05:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJWuynyb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EE9010E24F;
 Mon, 23 Feb 2026 07:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771830318; x=1803366318;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZZX+ub1u0gEUbX+v2ALVpW4uOfnRR04hhIn/zTrCeMU=;
 b=lJWuynybtY2tOTBKDvD8HOQnXyr9k9Zi2DW150E/bAyf+DzOmXgUGae3
 mjFpiOjwwDpLqeL47/soN5FG4A2jw2wDSYTo8G1Uu2s3DYBDmODxcsCXR
 +dYIgJxNMrqFhEwf5PbZSZQQ3sS5eYpA2eREXv1/tbXQPhtMUtT/yuagh
 lwuMSLf74ImG9YOLL4lbZmV2niXDarmLd6EZTdE/vvTIC0AC9jKXL9d1C
 IiR1hMVandEXhMsvU1TFYZQzhv1CyvGVxgJSGiY6IMXZ7J8FcakoJWGqJ
 BQFPmYvtYHd1px6RJn3vRrlvcD1qY1tWxj1w14GSYCzjBDOL1XZC8u2dX A==;
X-CSE-ConnectionGUID: lbbRzPdRSWa0MO5SDk5qpg==
X-CSE-MsgGUID: /kVNPodSS/KzebpfTTAo4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="72697468"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="72697468"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2026 23:05:17 -0800
X-CSE-ConnectionGUID: rfv4qQ1AR4ypGYqdqT8+IQ==
X-CSE-MsgGUID: dDDkgnqlSDSuVQrh6akpHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="214555815"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2026 23:05:17 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 22 Feb 2026 23:05:16 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 22 Feb 2026 23:05:16 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.26) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 22 Feb 2026 23:05:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bpIFsZRM9xAJaYeK4yyb55cObCZAkoSoig4Cmdb859pgrus62Qga4e56Ru8ZKFGzcOnsYaHPajsG/Rzirp9owMbdbO7xocwE7uwp65t57dMYnJ37i2/34RvHZnqRC2A+FgdWA84KUq3732ms0iI6kGR4TRDUPTOFXmZKsYWxJdT6xOzhq8WTBdf59ZORsIcU2oSDdwuoiSBN8dLl7+j6kC7g/BgBhystJjb9ApESVCPJcAFlHoAnSCjbRChHMxqQGq5UFwbFMgiVmTzVx033zPR7N3wZ8i/cEgFda0gWPqy+zRn5HoIl4W+kA2HCKAPYGwBuznatC+9IOrBak+pnIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=djwmlcTfJoXJo4M8m4F8X7PvrrEWpaR6ZaHmq4XKsMI=;
 b=AzGJBKU6fP1ynUUTmcCDjaZMxkmxL2kK7HHHooQNQS4DS0FjsmlERXqKgWTw0d/zZMB0HeweZcP/yzWtOV0PcQJd79N7F2TpWTfpSxWti4IJm9YWcmirgkvBlA6fgWmH1hFAZ8x0euKHEagt3dMb6D15znSsklxFlR+OUtaLE7uRuIq6lw5fHFNx96lIozy8+XJ6hmIyfCTU0MYMW+X7WBEvSmaNFYK4pazemUzbKZACRjd8DOiznztqzR7bKAsDZ+uLQYrAAgoLssDvgAPmWf18xrRtIuYUXqTOWS9v1J/IP6j8AzNnEOxAzy5tckv4zZ0B7kes4f8enUHxduTX1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SJ1PR11MB6251.namprd11.prod.outlook.com (2603:10b6:a03:458::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 07:05:14 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 07:05:13 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH 6/8] drm/i915/backlight: Update debug log during backlight
 setup
Thread-Topic: [PATCH 6/8] drm/i915/backlight: Update debug log during
 backlight setup
Thread-Index: AQHcoica2kEuTfXifEuHXvMxVfjyg7WP38tQ
Date: Mon, 23 Feb 2026 07:05:13 +0000
Message-ID: <IA1PR11MB64670ABDAC9EC44406BDC577E377A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-7-suraj.kandpal@intel.com>
In-Reply-To: <20260220050217.2453681-7-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SJ1PR11MB6251:EE_
x-ms-office365-filtering-correlation-id: e3c584f1-7c06-4f92-4d8f-08de72a9e41c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?MrTvN/XnnqBd5G3o2oMdYH5+Tm2A9hG5x7+Nim8KLF+FpHtZ3I3DcmeNryv4?=
 =?us-ascii?Q?tIOiAhF91/WSxyAWhNfiLfwqFjwQPbtXZ4sHqMvPkjS2QULteH50lbgvtOmI?=
 =?us-ascii?Q?8aj4/yztw0Ip/8WYbEDJBwTlZ2JhJC/28W0TAR7B6rewpfiKdmSpU4PKJnW3?=
 =?us-ascii?Q?koeITeiokfQs443za8R3DP/r+xXxSmIBPhA5sWBnGQVcris35X96n7351zDV?=
 =?us-ascii?Q?L/I3zvsunitlMdUJXQGiP+SmsAX+PuDJAGt6cZpCGwijDRhhxWp2jCsT1Fr1?=
 =?us-ascii?Q?7hXrQXriStGNekNmjdI9m6Q286G4ugQ6ATs7O9YrdtDYUBG5IW0aPN+eDIWz?=
 =?us-ascii?Q?QYaQNluHpKRyn8l4k/ph/V+voLP5C7/riAYPy17aVBrk93EkTZvZ3l2x19U/?=
 =?us-ascii?Q?PqYKho3Ezlr+pBjzY7PP2AS2eOwwKgJHq58ZpMS5ncqtbsijZ24I1fq+fhP5?=
 =?us-ascii?Q?DvEBwpAWnj9s9+hYSL5ik27xS0UdDOPq1+P5t5/V0w+mSLym6vdfseCREIBU?=
 =?us-ascii?Q?RHfzaP6/dQ0CWLJk9MMS6ghnUa/V6CcGYUpwvy+oIKoFvrJbmABM+Xo3K/kn?=
 =?us-ascii?Q?YX2I0wFUYbJbln7n+X+9fFZi562YnaV1bN7Mm8rlkmH77LEnXKDxyxDERIUy?=
 =?us-ascii?Q?mhyaPDYkESjd6kZIhRytw7Md9a54jGk+v8MBdYimIvZDcDhRC5PMSk3YsRo+?=
 =?us-ascii?Q?Wf6jrOZEdao6GiTqMl6OhEN4pQZAp7qKVRTJ+ZsJtQeW1XjvvxdXgZ6EyXuh?=
 =?us-ascii?Q?BNqAGvRGRuY4KyZHwrskIJa/uRAHPrPFBvjBTUe6e+dDHjZhIu02dczWoZGW?=
 =?us-ascii?Q?E4kg4RVvHZ70MJ1m12z/dV3sCjHfF3T4uaxozYAJNNt/5TmGtpDHfcWfUMBv?=
 =?us-ascii?Q?IYirUdwkosOV3hwxhclaC5Ikdpg7QJ3RCuJvq5XVMcJzMf2IiYREGo+2JZnj?=
 =?us-ascii?Q?QWOMhz1DgZzZSQiqNLdKbS62SCVE8WeCwuCKzbxgik7mRVDy+zVEfhlPM/hU?=
 =?us-ascii?Q?nFqi7dQem/d8Ab/UoVmaJzwQoYPTfnVKTXyj0yKj/+1gpnTeLcU0ZQSkSjoa?=
 =?us-ascii?Q?ZVSQck7/JQOKNtORDP0wT5UlJnt0fVMJFhy5Jl2jP43iTEqiFcWzaFnLTih6?=
 =?us-ascii?Q?yKIzNa8ZHu9X3pHr/sDJ06P3itMHY72OcxINKey82I+fKu7W8kkzDwjasGx/?=
 =?us-ascii?Q?KgjrcQ6moA/teCXu9x8vN2HPHqRc/AklIvdkBtvkJ4V0j4IliZR+sJOcVIdX?=
 =?us-ascii?Q?FmWRWJ6FQbWqoFq350pI/jo5xFTFddM5+Jxphzb8noj2G3AD7q5L0lLkoA++?=
 =?us-ascii?Q?mQlJsOzfsxsfC8uFZvtclKqfF9iKM5VnrXOcIeD9IXJIFwiwzF7lACnRcYJf?=
 =?us-ascii?Q?zuBOh0h11CtF/uoNulDXaqWwLV+u0CjoYkYLFaROaSsuLRk6UHmSnDlKQ6RD?=
 =?us-ascii?Q?+kyJW2X4QUKuafmyyvJLs47ChUN6l83xl6nCUjCktqa1YAKc+SGpnbPrImUN?=
 =?us-ascii?Q?rqv82r07S/YsqO6/2z5D3Tx9K7N1N5n6REKPqNMDGImzKVK41GD5CZo5uaTg?=
 =?us-ascii?Q?7QtkrvEQxEfVU9PRCZ7bM3x6ozJnSajiasBYlhlUi245hAES0ZQ2YEevAwkk?=
 =?us-ascii?Q?yb5pAjUz0rOizswVX96mj+c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+827DX1oBf5c6N45wXF1/VEv73SU9VX1mQkEtnTXPpcScQMOA5c+bu04b660?=
 =?us-ascii?Q?+v1YoKaWnLBbf+u+wiApogtthKSKxd+Ux74j7low8Lj661R0ah2U7GRJnzEX?=
 =?us-ascii?Q?jWgqMZsVjmGUwKSuVJ6qjQBY2HyTFImDCXXe+qLJpGoMfrOdOLmKj0tPKUBQ?=
 =?us-ascii?Q?PmB1dxeXj4GdNKWay5ot+gZ0tK+XY0Vxo2jpFVJtC1qcazywiZRc7fT3Pbvu?=
 =?us-ascii?Q?G6ZoK5Sj2i2iTDnw7hoHNzV2NEAHKNL23fIlSBg8FKSaHl6tT97rLaoI/64u?=
 =?us-ascii?Q?fB7cu+TCA9gquvLp9sh8yotEHrLm3ADgvEkDuGlU5W/JMulpgpTNGqFuHunX?=
 =?us-ascii?Q?shI/zalXpn/9dU3Db2ZF5A7n2MYSal+cwGGKl5C7HQUo70w9vhdT8zauVFQb?=
 =?us-ascii?Q?RN4KO4CzIoKqyQzyt/YXcu1FfBLIuJam3zvCLiUTfXn7WVhe7M9EdbOCVveD?=
 =?us-ascii?Q?cYAM/n9m2cVTlZQBZFIBlJ9dkTkYB48aA/g3cXTswW5KXMQSTyEs+P/EySQ/?=
 =?us-ascii?Q?5SRtuHeYwe7+aLVqd9tbmRcGlRk+2QmDefb6wWs18NNF2WGTrg8eOHgw1eqM?=
 =?us-ascii?Q?Gwq+03DKmts0VICAeeCZeWdMar/Xlewy6gKt5/ZDvLWoQ52n1/bLrOxcv3nq?=
 =?us-ascii?Q?+Dvm8rnRxrzJp4pUKZYEHR6uNBWlhsm7dkAcLGAG8bRE2imQUYX2eujT2Bs7?=
 =?us-ascii?Q?NrQCgwGkEaqn6keQkZwkxhvg2Mjcg1jKb5OOWHTioaHbFFwTadOi2IpM4OLg?=
 =?us-ascii?Q?HMLx00O4SDqb2pA6zKXknNrBmweOVWLXK+kZdtfeV7GStDx3kJ07ZEp5AjrI?=
 =?us-ascii?Q?NRtpaSrM4gaVB5nXx60mzserdVY444fMtKmA5To1l5xSXjsqbcVUPyozJpJ6?=
 =?us-ascii?Q?sZlqrUcOcpB8YlHI9gemSMZOjlzS24ebScINE6IJkRPldLrjJWYETRooNtPS?=
 =?us-ascii?Q?byu+ip6FBNx2T1xU3klA+UNfUpYdICQJzlKMPHuPXd0CA+JQ2YT/gizNnjNt?=
 =?us-ascii?Q?miK/lRIHzovpSh255PucavtVDUQLMZJgN0ZHLaeafhTwO5IfzPATaanPKRlL?=
 =?us-ascii?Q?TGiFx49DCv/ICiyotVTqLbP/7EpojSDrDMK8Xok1zddFkbxAhv0RRU2ZY5hp?=
 =?us-ascii?Q?nHBAfeicZ87hYOLvYS/2p/u34oSzHMTrDbbUYbajFnl/xtS5geUFiy6DEPaB?=
 =?us-ascii?Q?6SimPdZVsLr3RtZvTHO+tws9msA4XLL3WRYl0ojP/FhHFNkbtim9Nd+1yfp/?=
 =?us-ascii?Q?JikfO5HwwiMM/Z2o73wTUJ0jfCXiHvFXxc5tWzcziOp58tXSA4VGPGfyK/3v?=
 =?us-ascii?Q?hNPi9y0dCOYS2JBan5TXg5BaehZoHxs5KFTM5fXZYdg23+yaSF/CBxchGWrU?=
 =?us-ascii?Q?HtPqGDBD0GGfJNHnrtK0ZSGHIRxbkWllemNMBHNQ9rOeNj1Up9stMNuKvHk6?=
 =?us-ascii?Q?ht6Y2HvTXnBmvbLG37OnLdjroiIpo0QmR/NQNWM/mGb8TsyiSfpqkHeFzIyt?=
 =?us-ascii?Q?gbWG0iEfPUM/EuGYeddJ/EIp37efnNhxNcVnmQyTtaRDuZJ5p80cGpGbmA3U?=
 =?us-ascii?Q?6HMgE0dn+f+fUXJe85RQiejaDPFf3Wo4OaJDIs/gZZU85/v6Tx//Y40G61Ov?=
 =?us-ascii?Q?gPI2F2wmE9bFRYTCyI3OC13274/dMzg/uxWyYIQjB7fOKu6VhhpCYCxJBW85?=
 =?us-ascii?Q?/MNeEVuHQZQ1iN7hjT0K+pjqM8Bsw5U4ACSnFLsuCmIqwXrCakNgTfmHN0+s?=
 =?us-ascii?Q?oGDFWFgg9w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3c584f1-7c06-4f92-4d8f-08de72a9e41c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 07:05:13.5086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: psS4NK9FRR5vlbwj2piAG7toRCzzKHLchyJx8a+uyFpi/h4qb1U0C9iwaU90SgKBeYNopG0XmcaPTJ0wTk2fEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6251
X-OriginatorOrg: intel.com
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C2286172802
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Friday, February 20, 2026 10:32 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 6/8] drm/i915/backlight: Update debug log during backligh=
t
> setup
>=20
> With luminance_set which represents PANEL_LUMINANCE_OVERRIDE, we
> have another variable other than aux_enable to decide if we use PWM or
> DPCD. Make drm_dbg_kms log represent that.
>=20
Hi Suraj,
In this patch we have existing parameter aux_enable and you are adding lumi=
nance_set
as new parameter in the log so I guess commit message can be something like=
 this:

Since luminance_set (PANEL_LUMINANCE_OVERRIDE) will also affect the brightn=
ess control path,
so log this as well along with aux_enable in drm_dbg_kms logs.

Thanks and Regards,
Nemesa

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index c7143869bafd..043c9aef2ea6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -539,7 +539,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct
> intel_connector *connector,
>  	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] AUX VESA backlight enable is
> controlled through %s\n",
>  		    connector->base.base.id, connector->base.name,
> -		    dpcd_vs_pwm_str(panel-
> >backlight.edp.vesa.info.aux_enable));
> +		    dpcd_vs_pwm_str(panel-
> >backlight.edp.vesa.info.aux_enable ||
> +				    panel-
> >backlight.edp.vesa.info.luminance_set));
>  	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] AUX VESA backlight level is
> controlled through %s\n",
>  		    connector->base.base.id, connector->base.name,
> --
> 2.34.1


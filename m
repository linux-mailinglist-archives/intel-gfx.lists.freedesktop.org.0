Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HC3ADn/k2mD+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:40:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63058148D88
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:40:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA95310E43B;
	Tue, 17 Feb 2026 05:40:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IoLh2U62";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0502910E43B;
 Tue, 17 Feb 2026 05:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771306805; x=1802842805;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RujjZYUM5z3jfFHVR8xGhWFALOaSHdKzpVTyJrBPXZQ=;
 b=IoLh2U62aRb36ktFfqlHHRVb1+/4iD181DSTX7N/61DQcU64/vDbBc8S
 eja/WFYF3JlQG2+Z5QgBE7JELG/Ws8HwyY1qctafpLnsJ2aqkoKjlhJ4B
 zW/PbcMR+V3hkF6bMI/MWVBnlCVohO90JkUn8HdVyS7sudbOOielX8i79
 tGej1rvmWoPYsIvme8ITIDR5Ljmb/oz3FUzmnZeUvuuYXAHVADt6RuEwI
 y1v0Dd+ZLmuIArK+ZbB1iRLGwMA0InwGTzRkz2svSW1FbefwQm7l2HFaW
 PDE6n3CtEWX5nTi0f3THLu8SPwBWqYV6fuawQq/NAFwp4FI3uDXNxBKTM g==;
X-CSE-ConnectionGUID: pfseRD/uS1u4bbQoZEYlIw==
X-CSE-MsgGUID: xk3MkFtrRjqUPjANP68F5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="71570059"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="71570059"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:40:04 -0800
X-CSE-ConnectionGUID: 5nVZIyYuSN+Z9MgE2jJ/xg==
X-CSE-MsgGUID: W956w183Q6m8RPAe5VnRhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="236800464"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:40:04 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:40:04 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 21:40:04 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.32) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:40:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KLD7Bw1+QviteA81ZBs0ay2CQcKPGx3599fqxQZqfOIzTY//Z7iaCzz2w1r9pMVUWlaIIcwYvK2UXAKPb8ct7DJBNE7xEqcKm1vBJDTBIF84FuwUPPuXv31bdVtG/cVzJoOEi9rVZtCkJaZZO7aicK1e+FUBe/Y0X6BGtXIeNNWEVxrHDuoOfuSFPOJLHvKgB/fHZ9J76oHw0SX5aXJS9Pmr+04yqbqRND1mUSoIRJOG5rBvi5vPIoY2T5VZX2HckUzTNdCVFPT5sz8SBdiH8O3txN0C6w1MXGXjykFcbo/Go2Hpj7iFBs2LOclD6hnaDxc77pxR7GzYKji26pFCEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g5/bgEEj0mAIrjCig1SI7ypnVok0EKKT/QhpB+t414M=;
 b=a1/0KG5aimTNoJuRCOCJTHtOy8yhYmvArNi/gg1l/WHH04ewqC6sRhEqxH7wXfM2lESMkpA8ScyAuOZwmvQPS8/To1lWTm7nNe5D9SX6re71Y8BUSQlvdwjZZA3vMnbv015k0yLgfigp4v6V6vxqjy/GEVl3Tk9BUjSBKlvSY8eSP4PNsg0n8RnPczPZ3xzapMXKSYc6YwnwGztJzFIynb29By5JeKxDQUPkHFgCSxjm+4Vdp4pB7j5ttN3cr4ZEEeyxSxt1/AKO402R9C17gaqn0etr+G/WmpOWcP/XkL/RCGZvf25ZxfxPy2VaT5Dm48RM/Xv3kXPgwzvjAs/PzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MN2PR11MB4647.namprd11.prod.outlook.com
 (2603:10b6:208:262::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 05:40:02 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Tue, 17 Feb 2026
 05:40:02 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 02/16] drm/i915/display: convert audio workaround to
 new framework
Thread-Topic: [PATCH v3 02/16] drm/i915/display: convert audio workaround to
 new framework
Thread-Index: AQHcnNMcEP9W7fqZh0e5U/kQfMmxKLWGZfaA
Date: Tue, 17 Feb 2026 05:40:02 +0000
Message-ID: <DM3PPF208195D8D19FAAB8B4A6E1EF5D60DE36DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213102500.406925-1-luciano.coelho@intel.com>
 <20260213102500.406925-3-luciano.coelho@intel.com>
In-Reply-To: <20260213102500.406925-3-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MN2PR11MB4647:EE_
x-ms-office365-filtering-correlation-id: 3f922883-59c2-44da-0e2a-08de6de6ff04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?JCYQkf9B5gh8gmT697rlOuSg2lkKPekuF31LITvnfAy0fDCLfscAkOLMtDFt?=
 =?us-ascii?Q?YHUHfgdK5tqPnkXJU0eRwo0IeDvtuTGjIhd3JspKB0ZZ+OEgKzlV3kaaW92E?=
 =?us-ascii?Q?p5UqM1Ew6/xE8fbvu8cCXa/uvxQEzwOND586TlEIM2V6somh2TKfBl7IgWzX?=
 =?us-ascii?Q?+eCGuv+xae2WyC56pcb5FhBG3wni5rPxVzcxivbuKvmICh1mpw62JEVKDqvq?=
 =?us-ascii?Q?j+Ytwi5AK1orGSiL3hn9uaDjRCLBfGKf4SO9GNcd/LQTwTu23K6UQ+JmOC7e?=
 =?us-ascii?Q?xS/tXhOfBKjCCD7LsUnbAFYuZgFmREcBbMX1z2n6/95VZd53prYRk81dHzGT?=
 =?us-ascii?Q?ICpuNpn4hitP+Xx0i4RGuor1Y56vmkham0U9v2nyX7Y0UL804ajaKU/+JaVe?=
 =?us-ascii?Q?8i04Xb8Dggi24lH+WEDjW+cGIdzJOX1Ivqc/vSpl4GebSJbdG5aa12FBrHH3?=
 =?us-ascii?Q?6c8MMuffTIvbMaQj5E0yvjJMydhNQeU/o84kC2Vt2p4CtROgI+UDvJbrNzNa?=
 =?us-ascii?Q?WoPzDg2SQNG4UyHO6wuxTaoyu4IueWJkENhjLQkotGw0twgaK/FpY/5by2QB?=
 =?us-ascii?Q?mzsPajo8lDlku279MpfC6ec4KgihfsKxKVK3ZKsDK8bCIjK0hlz2Vs0YWdgX?=
 =?us-ascii?Q?YUlOFwa/mpSIU2lRyBS2LZdNICM6VpNgdaTxq0zHb/QQpUTcYj9RFW1KspkT?=
 =?us-ascii?Q?SGL8PNiDJ/50QIISbFRtnIcy/5IbNetra7/I2g8p0X7oxuw6TcPXqZtY2QfW?=
 =?us-ascii?Q?3lSzPRwTqhV/jcau1rNLpRP3bQSs3p9Ya2BZ6GZ/3Fb4oNaNKHGevLEXARUU?=
 =?us-ascii?Q?4ngExUqe8RVGz48mOn0GXx9tq90Fm7m7rLhgClK2+hjFFccS4yA9rG3ssI/l?=
 =?us-ascii?Q?iai8Ei/qrTKj1DsNVLXS88hhl6QSTLPVWTKT9xWPB6TUlAnoUZViwSO8QYXg?=
 =?us-ascii?Q?g8njMLkR4DVV4fbbqdDLUqpGjpbtFYdClM8gsLpzO5IBGEh6NaXvo8Q86VZk?=
 =?us-ascii?Q?L5lxtbCdipEgjhUoJgR84vvGlfFL9vaqaZHdyFpGoYkXN2vweuKKcY1Po+nm?=
 =?us-ascii?Q?HuSMFm1nAaPRaDGaGS9Jo2LWAX+CprgSGnomiMxSk9Q5o40yh795KLZBKoS3?=
 =?us-ascii?Q?ItdIVSIduH6YhSRWTk/+cMSoK2GasOVn8rwAbCc8Brx1JlIxZmezU9f/mPDR?=
 =?us-ascii?Q?xG/NC1S/wijCqm15nftk8feLiIIiFt0/qtu3ZPXYSlJ5ESHpsWckVNgyXH2d?=
 =?us-ascii?Q?dt4zw5PPNcL0FUxBcAp4RWoyaOnKPjJ4PzDYuyOmH8yQ6l/f7LA7T7MXmASK?=
 =?us-ascii?Q?aTcC+wVIxjvyFdbaQjr0B+oRlB8NAD9e/twKQ2+G1txmjAfpSz5nxva9jYiu?=
 =?us-ascii?Q?GOOBLR5tZc/plqe8atpxWneEfqsXW4q9uFag2cki4KktT8bBRM4y5vS+yPUn?=
 =?us-ascii?Q?r5VcRa5kHYl7P6lLVLXlTSCHp0Lm3eIgHWszzsTOGBsOatbHkWXeOQ6r/Pxb?=
 =?us-ascii?Q?hlYZv3/JTZ1UUiuKu2eeq8ZgSG8OpsNxWcXMc+yE+QIYbur5uJqawmpMM1la?=
 =?us-ascii?Q?MGzTnkWCw+XvPPsPuDEkd+TvC36HuhQfQ2vR63UbptFXEWueAO2eZGDPSD0H?=
 =?us-ascii?Q?SA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fBx9TG/jFMjoc07+BaiSmv1nmo/eAXxx4q9BVWf0aIOo/Chbg4U4sKa/Gyom?=
 =?us-ascii?Q?OyoU2or93dwCX6glnzk12iuUsNWFdPAOuwgz0l2EMGxEM5pWcAZCDOod08j8?=
 =?us-ascii?Q?VjSk2LZLSApnTHf829QFAVjcCoZa+8V11PNsI5Mp8dlmET7Svdi9D21k0/zx?=
 =?us-ascii?Q?gDs24PBwJnwwpLhz2GKTLiq+Z3cYpFhx45Cq+VAkJDwn3LSnJgUR01jzmGDB?=
 =?us-ascii?Q?lM8z3s84b6XpW8ei2iBAA3IFi1zKGkOXI35PRcdk6TLuJDlP380JSsa4CTpK?=
 =?us-ascii?Q?txxBOj0V6OtUT+kOnx9SK8BPIj6eBI2jeY93LsEUKG7kDCI/KNGp8ZTG5vRk?=
 =?us-ascii?Q?vNRdVXng97EAJgv2XNLlAhOy7KsbRCkftVOQeCOJqNzgE2JBuLOgkAVY2zsT?=
 =?us-ascii?Q?hO43gMazWe/rxTbgDn+GNh0Ztnz1IOyU6Nz6v+OO8ft5kwgNwib+J5IZzkqV?=
 =?us-ascii?Q?A7/77i41dEf7hY7w8X7Ryle1rFYuEecnsH9ixFeg8rdMzfqmyCNC6CL5dzbZ?=
 =?us-ascii?Q?IypS2ICe8AcTJkgBbkWpfTgyUfaTbOkED2rOQ1rxY3Bi7l0WulIbqRGCUCu0?=
 =?us-ascii?Q?3uyhYq0KNQHn0AKvOe/ay9zjZ17tViadYpn8PpCZMsqxDr7t3jVkvUGIXkRn?=
 =?us-ascii?Q?LkfMGP9tAwneeAKntJGfEf36URhzgFK7QlZwLpmTISq+BP7n8+F4aVZPRLvx?=
 =?us-ascii?Q?hN9hEtKPW4hXufk5k/UdBuxaRti1yOheBzjSfauWXUikiUEbh0LGs+ritPFL?=
 =?us-ascii?Q?BFZMNNmv3flKeq5fXiPtGVCrP1qSP2eygWX/8as8ABwiuGtTzFG4EbPsyhlj?=
 =?us-ascii?Q?+QoMnA/spsZ2wqP8dkBSbk2iLm4xPeN0Yg0KEsK0gz2MdZdzeOZ/wwlYdvHH?=
 =?us-ascii?Q?iFCj/COxAerd2FRCEdA/uMIo39Wd8dTNEXhf8MzcKbXrvhdD6ZiuvKIpmZLe?=
 =?us-ascii?Q?weArno3twAJ6P5J8bR914yK02Q5gU9A7xdpNZ8a/JedDNTL1ibuKRNzCU4gt?=
 =?us-ascii?Q?nm4Ai4eW/L8QLQ0v5lr2Sr7DdDlImFfv3bv3VE56Mykwjh2Q3xrhae9dxLod?=
 =?us-ascii?Q?V/cH1y4y84g1F7IwSnIGG9cv43RqEDhw24pjEbzjSgfkOhqJVV3WHUmF/3aM?=
 =?us-ascii?Q?0d8mldZC/pJbAN1PZMeNAIo8fyYInJsySgZb6TxpSuKi5xxU7gP/+cQXsjb1?=
 =?us-ascii?Q?Tn9S9VpYph0pyDcFmROmJIPKvO+ERLpSoEJ1hoiuhS+xI4dzilqqNCvlkssr?=
 =?us-ascii?Q?b+ye/MjHh/NeSlNFesF8GPxxJplh2t9Qb2fSQRNlKK+lvsK1iadaMTd+Pt2w?=
 =?us-ascii?Q?SByOaEEAIo1KPHvVopRd4qqx1y4BTJu25ho+9YkNXPrpQ1dMX/iuzcW0cCsc?=
 =?us-ascii?Q?dgNYrZuM8d72lM3B2vrSWnMAUfeQrEmRycQFk+33oZ1HYQzCKeKfpFosR8pA?=
 =?us-ascii?Q?uaKKKja+CBWRl+/T0zRN6LGj0658M9BHpRkL/xwgG5pePJn7Zj/X5SN2kOPy?=
 =?us-ascii?Q?iQUK72jndz0YVyYKyXAh52Nrs7GbnBqocwP+F5nuOwcI4MmDgWhJyvZeS66k?=
 =?us-ascii?Q?7Lc+ZfSnaMyFYx0crk+OZfOyWocMGwDpCer2wkK2+u88eS4PU8BZAhk5GUiS?=
 =?us-ascii?Q?Bj+L9P3MdWGAMYNEr8TLissy8HdTMgi0WPjdbhZcDXFRUUQqKA8NtnzPsrO6?=
 =?us-ascii?Q?fbOMjOnxSiHFnTPPq9x62jCwI3J8JCdqPJqxxJzf61C4kHxpkOFobMoNoKSd?=
 =?us-ascii?Q?Bi+U2De+cA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f922883-59c2-44da-0e2a-08de6de6ff04
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 05:40:02.0978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c/E7AygQS3EGaSk7reWMURR4DJwg1W/G1z4e3bixykqGaiYkMhxiTEbuDcwt9Rle6ri4HVJ3EtHLf7Pl+1OM9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4647
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 63058148D88
X-Rspamd-Action: no action

> Subject: [PATCH v3 02/16] drm/i915/display: convert audio workaround to n=
ew
> framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_display_wa.c.
>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 24 +++++++++----------
>  .../gpu/drm/i915/display/intel_display_wa.c   |  4 ++++
>  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
>  3 files changed, 16 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 5f3c175afdd2..9a7d9cf3d571 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -37,6 +37,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_display_wa.h"
>  #include "intel_lpe_audio.h"
>=20
>  /**
> @@ -184,17 +185,6 @@ static const struct hdmi_aud_ncts
> hdmi_aud_ncts_36bpp[] =3D {
>  	{ 192000, TMDS_445_5M, 20480, 371250 },  };
>=20
> -/*
> - * WA_14020863754: Implement Audio Workaround
> - * Corner case with Min Hblank Fix can cause audio hang
> - */
> -static bool needs_wa_14020863754(struct intel_display *display) -{
> -	return DISPLAY_VERx100(display) =3D=3D 3000 ||
> -		DISPLAY_VERx100(display) =3D=3D 2000 ||
> -		DISPLAY_VERx100(display) =3D=3D 1401;
> -}
> -
>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */  static u32
> audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_state) =
 { @@
> -440,7 +430,11 @@ static void hsw_audio_codec_disable(struct intel_encode=
r
> *encoder,
>  	intel_de_rmw(display, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
>=20
> -	if (needs_wa_14020863754(display))
> +	/*
> +	 * WA_14020863754: Implement Audio Workaround
> +	 * Corner case with Min Hblank Fix can cause audio hang
> +	*/
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14020863754))
>  		intel_de_rmw(display, AUD_CHICKENBIT_REG3,
> DACBE_DISABLE_MIN_HBLANK_FIX, 0);
>=20
>  	intel_audio_sdp_split_update(old_crtc_state, false); @@ -572,7
> +566,11 @@ static void hsw_audio_codec_enable(struct intel_encoder
> *encoder,
>=20
>  	intel_audio_sdp_split_update(crtc_state, true);
>=20
> -	if (needs_wa_14020863754(display))
> +	/*
> +	 * WA_14020863754: Implement Audio Workaround
> +	 * Corner case with Min Hblank Fix can cause audio hang
> +	*/
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14020863754))
>  		intel_de_rmw(display, AUD_CHICKENBIT_REG3, 0,
> DACBE_DISABLE_MIN_HBLANK_FIX);
>=20
>  	/* Enable audio presence detect */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 1d8340b36c01..b383bfad3af6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -74,6 +74,10 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  			DISPLAY_VERx100(display) =3D=3D 3500;
>  	case INTEL_DISPLAY_WA_14011503117:
>  		return DISPLAY_VER(display) =3D=3D 13;
> +	case INTEL_DISPLAY_WA_14020863754:
> +		return DISPLAY_VERx100(display) =3D=3D 3000 ||
> +			DISPLAY_VERx100(display) =3D=3D 2000 ||
> +			DISPLAY_VERx100(display) =3D=3D 1401;
>  	case INTEL_DISPLAY_WA_14025769978:
>  		return DISPLAY_VER(display) =3D=3D 35;
>  	case INTEL_DISPLAY_WA_15018326506:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 06c1f62c0f6d..b1bcc18dd2c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -29,6 +29,7 @@ bool intel_display_needs_wa_16023588340(struct
> intel_display *display);  enum intel_display_wa {
>  	INTEL_DISPLAY_WA_13012396614,
>  	INTEL_DISPLAY_WA_14011503117,
> +	INTEL_DISPLAY_WA_14020863754,
>  	INTEL_DISPLAY_WA_14025769978,
>  	INTEL_DISPLAY_WA_15018326506,
>  	INTEL_DISPLAY_WA_16023588340,
> --
> 2.51.0


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mImONnR5Cmqe1wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 04:29:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0E956514B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 04:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3E110E047;
	Mon, 18 May 2026 02:29:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lv4gLl8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD27D10E047;
 Mon, 18 May 2026 02:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779071344; x=1810607344;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xaP7c+WueSmbT13YT4uiKdzv3TJy7M3FeogRkOqSY/M=;
 b=Lv4gLl8EH4Ig2wpFUai/F5i+MLWGUC1AhRO/NgzhBeedB9ojb4w+FaeF
 TRVTbqlUUtvPJCAXQAcAcOmuNdu8dtOEDp2kijyLnbqWShwVj0LxhlNZX
 Q4l5W/79D5xNskoujbohxmg0bcRNmTnSEEmGKXZ31nfhnJ5YyNGYA5VMx
 dLzMLOHMrXbL0KxRiPxWbLxiiL1u3y4OLIG/6C/mJ11AWEJtZByLiDPuf
 aVxERWpIFpsf0L1C+5eS80vzY/hbBjxVPd88+PbHCCg0L60r8pz9iZhbb
 b41g7h015Dj7PDLjvDHcP8aHrxzCD6xS0rty4BPcbqwjojok9g3nirBU+ A==;
X-CSE-ConnectionGUID: XnS+vxYVTWudNIwyHxS64A==
X-CSE-MsgGUID: DpsnQU36TzysPNg+F2gFTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="90501882"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="90501882"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 19:29:03 -0700
X-CSE-ConnectionGUID: 7TJ57elnSpSa9b2mYDjlTw==
X-CSE-MsgGUID: WP/FED4VSfaFagRSvGiwpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="232891860"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 19:29:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 19:29:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 17 May 2026 19:29:02 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.63) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 19:29:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ddUurwLdBF0zEj3O4JSGnUSwbjzy7QfyoiCCqk3HB7WyqaFoThOz94GMqk1mdFq/9oxhalwyAhXzpneURXLETXgviJGJn+BiLOThqa7BtjwP3uZmAzVkxTzCMHyadCO6zyWnrexMqVlHtDG0HVSsiLesZ9ffMMg9jZUmfsbXLqGECOKvsZx4UNIQYRFRm/rFJeIOGrkUDR3AO8MBc2Ui4frAddkvtig+yXpM8labdIU1N9kSGXZG9M4cowCT7tVA1T4FknKqfuJeASqSm61qDyavQX4dXspf/zulg2VNCV/S7pP2XTEPjs4xqBW/eJcSQoE3bCupMh2In7zDwhSblw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m0+oRH5zIErqKEK96G6L0ae3CtZOvaVznUZ+a7jvisg=;
 b=Y4N6eaiNyXu/2dazVPPvB7MXe137F++T0QQW0R2SYC0m1YMH4jaBiGMqFpsaxfDw28dRGP4Ar1wm+kv8YweR+IDQIZzccQMAvy8bjOly9gLcIv5xoDkQYSQRuyFHVgX7bKwBuGfc8OBkJ6UxaPvQK4fWl48Ddu/z+RR0t6HP3ccy/5T7p4QWpymPMRheBCM1T7D8XBcp7be+G/vZQkWdXZSXTUO4biOckc7YfMfQSDSiGMBhaaXrJQWhyVsOnOBUtHL/olR3QjCij0BuH7l2824T4fJK7rD6SKkYq7+14UMlsxe7mzjAGbSA20tZMuFcfggsOcS9+yH/onjSx1sDFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ2PR11MB8539.namprd11.prod.outlook.com
 (2603:10b6:a03:56e::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Mon, 18 May
 2026 02:28:55 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 02:28:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/psr: Allow SCL=0 on platforms with always-on
 VRR TG
Thread-Topic: [PATCH 2/2] drm/i915/psr: Allow SCL=0 on platforms with
 always-on VRR TG
Thread-Index: AQHc5gtutOuVAqTP6Uqz3jPIZ7z4vbYTD2yA
Date: Mon, 18 May 2026 02:28:55 +0000
Message-ID: <DM3PPF208195D8D53EFC0C32E92A465270EE3032@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260517142753.2813959-1-ankit.k.nautiyal@intel.com>
 <20260517142753.2813959-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260517142753.2813959-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ2PR11MB8539:EE_
x-ms-office365-filtering-correlation-id: 92885171-0a66-412d-e7e7-08deb485357a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|38070700021|11063799003|56012099003|18002099003|4143699003|3023799003;
x-microsoft-antispam-message-info: MKaOL6bkYbtqtk9oHMyA70fwrlWSpV7q5JTVP3tWBOTMMdcm2BEsR9NRRIaEF3ss6u4hszMjptORtOmGVpfxdL6zcd0++HDtVLMADIxHEGa5qCxRmzGfiuvHy5adLc/Z4YzzbxeVBKz60d2bQLwkRNa+FATsDWyMlgiXTulx/pA67ykzqC6zsBK2pPDkZLH/bLOww//Y7Vo7JnXtAz3MTU0I+XghvQGBjtmL0PkS/7I5fcRwThLqaarL2RJxMBOFYbkIwkh8Y7j4DFh+N0PZ8a/slv23sm463DoeEOb908hGVITNHs3pvDMvbpBZoViZVBmvOCcFyqgo2GZLdx+sCYC16EQB3rH6MHjNVKQ4qvh8+JFhtU5k9mbFpqVmh7c4Rm8YY7HFq+uJ6Dr4iR/hHBNwwehwVQexGvkmgfUspdr7koL4+1gKNmmsLr4UY5i5sIDSSDHEROAOEk0LWF4zBYuzWU/lHDlYdRlRStdhGMpVMDim5J8T/lKdKvEsWi1Vocn2+BHPBD3ZIypgS39IQ6v5MO16KbD5vZtgHT1ltc39ji4wFBcG0MNZWgtEwvO/vgmWtjmTqDcCd0WDJA+CJPO0+cAbla09C3973hS6Da2F7UdyOs5FOyYx2YhreD7xrMgWfJHZezViVqMpbz1Mbt4ct5fk/DrqPqy/9w9T/LxcNna3T6U+Vub/8YO8j+1DdRk7+6SSTOxqgDuKsnbP/a9kND8O6S0tdMdvk8d+ng0HM19SuFBvI0iEJ6H8XAmq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(38070700021)(11063799003)(56012099003)(18002099003)(4143699003)(3023799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CDb4nXRbuaYPLfJHpfgm+KIlls8jN/B9l4QNQUPkVyJy8eSii2swt1w0ebnh?=
 =?us-ascii?Q?3GtS8tAKUGnhDLSlsvXkO4zfAglEv6afpYYwyjqvJCPadCFTukxjQQ6NAC+L?=
 =?us-ascii?Q?xhyuhelmNW9Vh9ZwGByLZImQy4/NlfbkPhSgTkGU1bW8zTcUqQYqCixFpBRe?=
 =?us-ascii?Q?ou55m3oRpNdPv9WIA0EjYaj8HUK/fY+xWG3nQi4VCLoM/hZzwJb/bX6GrRrz?=
 =?us-ascii?Q?O/95FL7cqcRFNndyYbNNTh6F9wEUzcEI/o235aKMQLG+zrRtrJoyvGKGE/PI?=
 =?us-ascii?Q?g2otgz1/aCa6z5aghrrfgq9/Z/8UgB7mzgTxS1BZyC7ISRMqdTcKaH/7d9Vc?=
 =?us-ascii?Q?dChS3Lcgj3xfp2StpAihPRp24vTWqPD3id2/Sd+ZnyKqVjHMN7bpTN/di0C1?=
 =?us-ascii?Q?2lJXdXB5WYxi+liQaB2NjVoUiZBCk6+CRpkdgCT7afpJUsM9n2ezxq/YeN2A?=
 =?us-ascii?Q?OkLA73w2eN0wFUOs1HmXX7w2C3sUO9HOvCPZ3y/VRJU11Xe9q5MseC7pmJS6?=
 =?us-ascii?Q?G7uMkT0gHBsyS+InMXu6+QttLxHaC9q1veyKbrp+bJ9MHgDPg2Y0lnTEbfi7?=
 =?us-ascii?Q?/aQuZd91u9NePKRoqy0vGyeCkGAr+7obdCqFsqhuI2BVT68YHxpnnAUyIwA9?=
 =?us-ascii?Q?IazUATofFvfO0ymGTRZy6nIQ+p0HNcA1aFDwRHezfpHhtr89f0Eg0xw6W9mS?=
 =?us-ascii?Q?gJlJmr0OyJEb9o1EWjJHKH99kxkPXbYfFeqDq9Gk8oENfETShdLdDqIr1LDJ?=
 =?us-ascii?Q?7zgXyd7/fEAwJPVkklZniYFbWMqBvdp53tNTTpjOoXWXYhZV7HTbndGRX/WW?=
 =?us-ascii?Q?N81od2+GeSkumqzDr9MdUDMKYXnEG1f2RJXxFlwQcYPKSEuEWkhdR8yTZgaP?=
 =?us-ascii?Q?Enb/lEPXu7m6nu/kSqSx8j50WMsqIComSaCK/xwWrkvptINPzBAu9lXo7KYE?=
 =?us-ascii?Q?lO2sprlu351qOj4TibkUM1wjdHJr90lJVo5XHV8JR9BTwOZO1RMjwJapgMsu?=
 =?us-ascii?Q?cdYZJiwZ2dozzqneEp6rZzIAN+o2+JLgd1ITV2/XxPNYFvnWkRpwei0Ah25N?=
 =?us-ascii?Q?dK8hvT2eejKVDm/j7IgXSLWUK9GnJCf1xWhiC9T0bO94giDM6Ac94KHOksZy?=
 =?us-ascii?Q?9UpmFZ9aC9mv+/N71Im9KxoK5nVkPZpoU27jhtO1vLHl6wObsc8tRON54XAp?=
 =?us-ascii?Q?Nj9+ngG/7wbJqI2Ns4L1JGWJ1LYab52mvLZ2sjbeWGxKPiuI1Ue3FBFe8E//?=
 =?us-ascii?Q?M1AWlVxil5d/eDQedpMsSrF4vjafHuRjXpoIc7VRY0RXoOH2lwKRNzw1wBUW?=
 =?us-ascii?Q?YMyMm09YgAZoZxRzgUJq8oH5z0C9TWLfyLDo8s5uk25suZ1L9XFVvYfopSkg?=
 =?us-ascii?Q?HF2Ba4OahcyHzmwMY0bdK2YEA/cPrQB7PQ28QI2uvg4yCrmUpYfl0oS0pmph?=
 =?us-ascii?Q?1aXh+KlukEff60Stmeb1fAV/eC8Lkrlkqr1tkjGj0X++UJNo2Wt5JcQ7KqJJ?=
 =?us-ascii?Q?P23I495QRTBm/JiFxqATbas2GyoVnUx/GZdvt/urVc6jwMV5/nyQtkVLhwjL?=
 =?us-ascii?Q?gYq4xDmd+UAuuIrnzdkWF0m72w2Jw91FFtbW1SSKYBAnylfaKGZH72JTXvDF?=
 =?us-ascii?Q?kNaGaTn4kYBdS8EmRV36rSdnaRhNHICj7/NNiY1vlJ9mWDL9VHWXkNNj/CPO?=
 =?us-ascii?Q?Nvyo1Iji7pLScva7+WU5UPIAKhALnWVnXjnNDIaSoiRWF2L5szFhpEgEv3+h?=
 =?us-ascii?Q?Kn8n180xEQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VSBni6U0SJdebWoxfIvX7Yo+/G8kEM1Z7TP+07LZsy1s6d/GG0mpMCtFt24w99bOYYJVAUn4oMWtkSG68UGcrmyU8yhbxKtm+olCGRuNGIYExz7j8I4DaYsUDOwvo6s9DgM3yfsRmr/LhsirsQIZk7KCILEIWlS5XFMH22RjZqCTCQvM/fEAQdUlneaeJQSKMmtQxQ4vABP72zWaUgBaW0q+Pc9UYNORHl3LHy5ENn+RLsg1yE2yIBnmmSjZqkaicrkj/D5X/pATvx9GpTodYapJHM4ijsyY3ZVfD6VqdsXVX7CCKnY3XvL2vS65vLM2MSxdjhC/ov2TeU01nvjGdA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92885171-0a66-412d-e7e7-08deb485357a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2026 02:28:55.3751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O8CeopGxZgKSOEgkRHWptwlggBllhFSI6q7Pw0AfcvHUDoXSGPqJH+oMUw7/d4EhiAZ8rUtWwKsE3QnuQenrnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8539
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
X-Rspamd-Queue-Id: 4C0E956514B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH 2/2] drm/i915/psr: Allow SCL=3D0 on platforms with always=
-on
> VRR TG
>=20
> For Legacy timing generator, if there are no panel replay/sel_update or o=
ther
> SRD constraints, the Set context latency (SCL) window should be at least =
1.
>=20
> However, for VRR timing generator the SCL window can be 0. It has other
> guardband constraints, but that are checked during guardband computation.
>=20
> Allow SCL to be 0 for platforms that have VRR TG always on.

Maybe something around the lines of "Allow minimum SCL be 0 ...."
Otherwise  LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>


>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index f6cd88902be9..f0350e7f76a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1488,6 +1488,9 @@ int _intel_psr_min_set_context_latency(const struct
> intel_crtc_state *crtc_state
>  	    needs_panel_replay)
>  		return 0;
>=20
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		return 0;
> +
>  	return 1;
>  }
>=20
> --
> 2.45.2


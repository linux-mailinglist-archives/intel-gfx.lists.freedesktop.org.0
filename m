Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E514D8D0980
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 19:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED6210EE61;
	Mon, 27 May 2024 17:47:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mfB/OE9Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC8710EE61
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 17:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716832049; x=1748368049;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=eSUscktEosX116Nt8A09cNxgmaVi0uFFiapXYj9oan0=;
 b=mfB/OE9QGodAILG0PCJTpVQTlcRWsBkdrox9JfEPi5b5TzmkZvSCrxJJ
 HkQ6Mw7ZJOQ9qIeJ0wNNAnYeBPcbUx/WkbNeZLuq+qCv8splZ7SXfUOS2
 Yt3nKc3NhZg1hNBHequtpZX5Y0cf/AzPS/gyf30hvrXt0EOuEqc1kxSz9
 B6tC03pxlK6z/yP33I/9KGf/Zw8eVXsBhDgMKLj9ua3d5tfL6Lo6DG+Kn
 ffT5ak5FV9ZxcadYF1NgQoLXk738h7L/ALFlVircLgdA/hXHUyQTj8hBG
 pl1Zpf6WW9iLqtZTyS0B8mD4mh31yKlD26QlqSe7EuVvuSA6KKbpASntU Q==;
X-CSE-ConnectionGUID: 8g9BPEt7QAKNYO7vws9/Cw==
X-CSE-MsgGUID: /AFn2RIzQ1mfdbjuiYbMig==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24574684"
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208,217";a="24574684"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 10:47:28 -0700
X-CSE-ConnectionGUID: rxdKyhcCQBCYTnbt63zFSA==
X-CSE-MsgGUID: YgBjy/GyROexde3OGt6F+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208,217";a="39616980"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 10:47:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 10:47:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 10:47:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 10:47:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mDPuoiJftN5mIaxUEvqMAmYOtEGFU/iyl6DQlV36Bq6FwtFM+DdNcOxpLB9zs4eNO0PzoNzYooismdn0Li7FHFqqKnBsH2XxHvNLM2UyglMfyhRqSV84QBRpMHzALlp2dZIWbCAfWICY2jheyfiOnPFz+CZyR1hCglcDXrKndsIclfW9yzertHnNt/Bbmaj4KGLpL+GsIfPu5H+1LYCLdL5+yl15fy+AgvdXuRGTqBl2VT5f5MElmd+Nqq8w+28nOyAM248WBxYue4gj3hmiHAl7YKqyB3Fzm5xK37QwiV9wIvYRtVn5PIhjDAndu76M8tMhdXrJESbq+4BDYi4aig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LnyHGNjICKshO4ZvRDN8zGIw2KmAa9yUeqiQVZOy2KY=;
 b=HDafkTtqv/N5jIzCxTk3cJtoFGWyDNlqCiyyJZn+nZQSkQNmey/TUbAMOBhQZ8SdXDLxXDUJO1jsebMwrPwZw+mgqWqZz1+IWN8WE27UwnUe9RpZ5JmUg+HAl8g5dc9ZmqTZNIKFwNd1eyb89LNTRuwPtc+3i6MfwWuH772Yd659TMlpShKPfollI/QFsO5j7pUq4GAIUHDulPqqDm3V8FPMjN0InUmd7728Jalgc7gZUGOZ9k95/3CBIdrzNC2Obb4iJq571Xh/mPUE81LH7aaOvXYtJY0XDXcI5qHSXox+HLms2vRC+NxdfRluodYseRxZ3uFfk+ULOYM9XT7LZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB6290.namprd11.prod.outlook.com (2603:10b6:208:3e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Mon, 27 May
 2024 17:47:24 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7611.025; Mon, 27 May 2024
 17:47:24 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Vinschen, Corinna" <vinschen@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Regression on drm-tip (CI_DRM_14817)
Thread-Topic: Regression on drm-tip (CI_DRM_14817)
Thread-Index: AdqwXHFlyhCfGOAZSmC81SG58DkUlA==
Date: Mon, 27 May 2024 17:47:24 +0000
Message-ID: <SJ1PR11MB61298590FE85274CD1E3899DB9F02@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA1PR11MB6290:EE_
x-ms-office365-filtering-correlation-id: 7f55a8ae-7ddc-4560-1162-08dc7e751168
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?I5k/OlDIjOF2WGacw3CWVpl3+z2qLGEDJ6okBKFxIVbYRCk15h6IYCFE2mUG?=
 =?us-ascii?Q?cdaMyPJhA/6cogfClcyQMwlmS6lCH/hd6l2uuUmRbk8e25bxO9tD8NWf1IlI?=
 =?us-ascii?Q?os2zRPxma+3nGjq+S9HTn+U08NEpCNwEQbf1bpVnXkur/b5HnVejNZnD/9X7?=
 =?us-ascii?Q?8ZdwFpTrA6YapdeWhfBSBTXl56IwEUAFDMDK45FGLvBY/iZOv9nH7ECZL94h?=
 =?us-ascii?Q?EfKhUDYOqSPthWCptF5zT04bLdGzeMOHYYa6h1wKLXogA3SNsXl9Y1kZ1nLE?=
 =?us-ascii?Q?xC2pN2zqXJ7umGQDAKKLGCmLOS+2yQv/28p1P1qRbrC48vYgFu/R/9J4K3ey?=
 =?us-ascii?Q?NWag4aEvBHbIjG4ExAgRz8pfdEAyYRvPaxPB/HkkxEmt5HkV0Q8npg1ILkqE?=
 =?us-ascii?Q?kRjWQ7KwdlTajRSZKVaA3Iub4IAB5PCNsz1s8vbyOid8fD4YpPeJ/N9/TYGz?=
 =?us-ascii?Q?qN0q8e0APZM3ruzgqA9O+NC9pRNn24kvHoEjzidpujNYLAco6yrx48w/BwP0?=
 =?us-ascii?Q?Wwjn/BQtuZAuoEXNy7K1sdO5v9BLHzbdnwWXtYF0koFbiTa/18wdMOhusZLO?=
 =?us-ascii?Q?6z0LcC8+htEEx3iCJvqfDjnXBIUpj4dxkAoqGZnmtswPAxMswfQ2uV9GwPFb?=
 =?us-ascii?Q?sCqxBNFRopTYZ1uGVOkWAXPjHIAfwrfrSOrXW+VegvS1MLdX36SliWDArGbY?=
 =?us-ascii?Q?EiFtacyBAdUKaVZBPwnHHAgtNV2x/zz/5FJUAwC6u1bvThM1wT81jj0/YvW7?=
 =?us-ascii?Q?ppT9ENrOhx8eTlTvKw5P2dWj7Pgj4JFSm9O4v/xb4boJdIWj9F7eWtN7oiOX?=
 =?us-ascii?Q?Cmn/zpJjkP4uJUF6e/h+CtQLrBtSEx6SI3z7G8TJDDQ4SLMVThIF2WtTAKKd?=
 =?us-ascii?Q?KZAwbGAyl/dLrfi8baOxph/2Uzn0eZyWHZkPw3B4TXDZuuBpm/B0TjNRsOoE?=
 =?us-ascii?Q?y/1TNj1QxzVn8thchaJfaKOpQserNPBqCLyFjAFSxNZlqi9PeAcCKvDVtipk?=
 =?us-ascii?Q?d6hNQQQghiqaRL/xCBtoOWzViIEblCelNibAKgVkAo/yjGATMSHCZZqTnAdv?=
 =?us-ascii?Q?vc9nBP8t6ptPYeankHCtZeU+fv/50B/gEgBoFCL/MwfALSL0bAfMIjcDfUdj?=
 =?us-ascii?Q?cxM4SxaI5WI/pyK+7MNgJ7Pzcbkyo/Xb8kuKz5/GGwOO/oYh3agPjcImscuk?=
 =?us-ascii?Q?X0SfzIBmah6+nehvCJML9V07t9as5AqhefNzWBC3Vf4fKOki/f/vpCf2zgf7?=
 =?us-ascii?Q?ToPc7pNPC+gxo/q+trTYXxH5VDQQFDO7YfG4+kg+K+VkUKg3pP6RMfEBSPST?=
 =?us-ascii?Q?3U4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fJcBy2oHoYWrfqYqXQXjOiQQhvtHEogCBOZRgh4E5je6blaT+Hc5pr00V7U5?=
 =?us-ascii?Q?wySFnDJkZ2q4lhnMTRjWYpZjATqnesDFBlMrlQSYxUsen5XQGsNO3FPld4DP?=
 =?us-ascii?Q?9B04PeChU9+UVyA8K+EX7TuDtga9RtSDM96a7Jp7w4JW6/kR/Qr47qK3YeHQ?=
 =?us-ascii?Q?GXSzfR73BLaRE+Rh8WKg0/3eAuvnuWD89yee12aaBfmOVW7/86oyhlPk49Bj?=
 =?us-ascii?Q?DRbTli4yDkg5oaCHD6p4C3c23byChK88Mj1NaSvc2Y1iVmGvsXOqpUdyR/W6?=
 =?us-ascii?Q?kDHgCIL01zWoaW47GGomizcsxPcsZfjJ4e28lOVLQifqCLtq9oiMSB95HJJY?=
 =?us-ascii?Q?zTUrDUAt0LbeqcCz0+1T/uO4DPG042WxY2bjlQ8+XRQTGO7gAyh0fuknBfFS?=
 =?us-ascii?Q?hkbyczal55lHacR7EKCi2Hq4nMRnQNBaF/GqywWFMLXhf9XmaRSP5e4vfd+P?=
 =?us-ascii?Q?QhuNDl6AYrAq8cdsWh+pdl5xOxh/5nFCom8lNBXPHQFq7T9J1xLquJKR01kh?=
 =?us-ascii?Q?+knbvf8ApZAuQ9PsaS1LUEC4aFvdHdvAfXsTz1j09Smv64yKdk4DqmYODf9+?=
 =?us-ascii?Q?Z8H5u0+Crobdnr8hzqF6wqv9vo7dLK9PMwFryuLGnJiEKwlUv0IIPKaspntT?=
 =?us-ascii?Q?Pb26Ag82l1vUg3vAhCbQcWmVoNZIqnEROXISwzkgyu0ThuJ2syfevE9ZuGm/?=
 =?us-ascii?Q?tmyTc61ETrhx9sLAojfSmFf6N+t7FAHrRFOQFWREkR0ixAmpfUM1FZIrbjOz?=
 =?us-ascii?Q?wJJMOnFnR3nalE0/7qhzMda7WcatmNAFBIfPJrO/ViMjJR5jXM2ZlHIgjFu1?=
 =?us-ascii?Q?x6HuQm6RpkgGDIl5g02jCZz5LFy1mvgKgDvBaamM+4kdbwH5NzxMzrfTS9rd?=
 =?us-ascii?Q?XdYsIvlYZ1BYwbm6rar8K0QMDi+kR/evkbFc6MKf7wDvi3Zp1GmhE4qcFz17?=
 =?us-ascii?Q?G5pWyH4cuE6igCnxKLmCJg7VIrWUgTR7CdDMmUoqXIo14NfxubuyzvrqDmCF?=
 =?us-ascii?Q?1WjQ+q/TkjWuNtz+zVfDy/PfnJxOQNSaoKSO/LRbxnzYE/nePJlpe7CDi0F8?=
 =?us-ascii?Q?kt4TxIE6yLqcK3lDn87kSDa760zHg8h8zTFzpPciJ4CWLQSFbZ1DkrfuvHYm?=
 =?us-ascii?Q?rLc32mv2chUpsJWLFx5BnSmFlNMzg9o3yBj3gGb8esK6vIY4FYYuGAdU4syU?=
 =?us-ascii?Q?wwqr0Tr7gqTNzvNAlCdzBcNoifHYUCVWCLcw+NKzWXzZTdxDab7pF7EG/FMb?=
 =?us-ascii?Q?a6rDzW9wzyMRSeU5qvTdauy0WX1Cvp7Xy/MnL2OCylCLcoERJzMV3e/CGE9b?=
 =?us-ascii?Q?pfgGlQ+LH7dk9d1j1GMzqpKc9CMKbIG2nZDdMUMjhJOTEyj5yznu0NaCYFSu?=
 =?us-ascii?Q?CNLpLfEYU9EryJbvHYCl03nijF91EkJzKX4rs3k/w4aNFEXtPtEqfO6mTC2+?=
 =?us-ascii?Q?mWW6YYF2v5FbBtd8oAxA4fZfugoQNEjsQ8eIVuQmcS2Dh+VYwJN2QOHmqB8c?=
 =?us-ascii?Q?Z+zNvXFWGY3xsn6n0S/L6ffpPfr+0wECKCe3liyUaXEqYZ+pIj8/wqWLZfbe?=
 =?us-ascii?Q?65VDZgwwCAC7IXvGRe72oDdGicrxpMf47g7p2QTCJBgKpKVqx0DayEQSET8V?=
 =?us-ascii?Q?Zg=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SJ1PR11MB61298590FE85274CD1E3899DB9F02SJ1PR11MB6129namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f55a8ae-7ddc-4560-1162-08dc7e751168
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2024 17:47:24.7482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BLz+/7FQrlvwu286o9T6TUnxycd8DCYgURz4Tgo9ZQO7dkzeZoG07LCjMxanwn41EB+boL/U0E3o5GSqxl9Qmab9H0ADNwRpgp3+6xRZ/Os=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6290
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

--_000_SJ1PR11MB61298590FE85274CD1E3899DB9F02SJ1PR11MB6129namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Vinschen,



Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.



This mail is regarding a regression we are seeing in our CI runs[1] on drm-=
tip[2] repository.



Since the version CI_DRM_14817[3], we are seeing the following regression



```````````````````````````````````````````````````````````````````````````=
``````

4>[   10.361988] Hardware name: Intel Corporation Arrow Lake Client Platfor=
m/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.3473.D80.2311222130 11/22/2023

<4>[   10.362613] Call Trace:

<4>[   10.363227]  <TASK>

<4>[   10.363835]  dump_stack_lvl+0x82/0xd0

<4>[   10.364446]  register_lock_class+0x795/0x7e0

<4>[   10.365054]  ? __free_object+0xa1/0x340

<4>[   10.365659]  ? lockdep_hardirqs_on+0xc1/0x140

<4>[   10.366261]  __lock_acquire+0x73/0x2230

<4>[   10.366857]  ? _raw_spin_unlock_irqrestore+0x58/0x70

<4>[   10.367451]  lock_acquire+0xd9/0x2f0

<4>[   10.368038]  ? igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]

<4>[   10.368638]  _raw_spin_lock_irqsave+0x3d/0x60

<4>[   10.369212]  ? igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]

<4>[   10.369794]  igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]

<4>[   10.370369]  igc_ptp_set_timestamp_mode.isra.0+0x20b/0x230 [igc]

<4>[   10.370944]  igc_ptp_reset+0x31/0x180 [igc]

<4>[   10.371513]  igc_reset+0xb4/0x100 [igc]

<4>[   10.372083]  igc_probe+0x797/0x8e0 [igc]

<4>[   10.372647]  pci_device_probe+0x95/0x120

<4>[   10.373199]  really_probe+0xd9/0x370

<4>[   10.373748]  ? __pfx___driver_attach+0x10/0x10

<4>[   10.374291]  __driver_probe_device+0x73/0x150

<4>[   10.374835]  driver_probe_device+0x19/0xa0

<4>[   10.375375]  __driver_attach+0xb6/0x180

<4>[   10.375908]  ? __pfx___driver_attach+0x10/0x10

<4>[   10.376438]  bus_for_each_dev+0x77/0xd0

<4>[   10.376968]  bus_add_driver+0x110/0x240

<4>[   10.377492]  driver_register+0x5b/0x110

<4>[   10.378015]  ? __pfx_igc_init_module+0x10/0x10 [igc]

<4>[   10.378551]  do_one_initcall+0x5c/0x2b0

<4>[   10.379079]  ? kmalloc_trace_noprof+0x22f/0x290

<4>[   10.379602]  ? do_init_module+0x1e/0x210

<4>[   10.380131]  do_init_module+0x5f/0x210

<4>[   10.380651]  load_module+0x1d44/0x1fc0

<4>[   10.381173]  ? init_module_from_file+0x86/0xd0

<4>[   10.381691]  init_module_from_file+0x86/0xd0

<4>[   10.382206]  idempotent_init_module+0x17c/0x230

<4>[   10.382723]  __x64_sys_finit_module+0x56/0xb0

<4>[   10.383237]  do_syscall_64+0x66/0x140

<4>[   10.383751]  entry_SYSCALL_64_after_hwframe+0x76/0x7e

<4>[   10.384264] RIP: 0033:0x7f668aeff95d

```````````````````````````````````````````````````````````````````````````=
``````

Details log can be found in [4].



We have identified the following patch [5] to be the first "bad" commit



```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

commit 86167183a17e03ec77198897975e9fdfbd53cb0b

Author: Corinna Vinschen vinschen@redhat.com<mailto:vinschen@redhat.com>

Date:   Tue Apr 23 12:24:54 2024 +0200



    igc: fix a log entry using uninitialized netdev



    During successful probe, igc logs this:



    [    5.133667] igc 0000:01:00.0 (unnamed net_device) (uninitialized): P=
HC added

                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

    The reason is that igc_ptp_init() is called very early, even before

    register_netdev() has been called. So the netdev_info() call works

    on a partially uninitialized netdev.



    Fix this by calling igc_ptp_init() after register_netdev(), right

    after the media autosense check, just as in igb.  Add a comment,

    just as in igb.



```````````````````````````````````````````````````````````````````````````=
``````````````````````````````



Could you please check why the patch causes this regression and provide a f=
ix if necessary?



Thank you.



Regards



Chaitanya



[1] https://intel-gfx-ci.01.org/tree/drm-tip/index.html?
[2] https://cgit.freedesktop.org/drm-tip/
[3] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14817/git-log-oneline.t=
xt

[4] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14817/bat-arls-1/boot0.=
txt
[5] https://cgit.freedesktop.org/drm-tip/commit/?id=3D86167183a17e03ec77198=
897975e9fdfbd53cb0b

--_000_SJ1PR11MB61298590FE85274CD1E3899DB9F02SJ1PR11MB6129namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hello Vinschen,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Hope you are doing well. I am Chaitanya from the =
linux graphics team in Intel.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">This mail is regarding a regression we are seeing=
 in our CI runs[1] on drm-tip[2] repository.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Since the version CI_DRM_14817[3], we are seeing =
the following regression<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">`````````````````````````````````````````````````=
````````````````````````````````<o:p></o:p></p>
<p class=3D"MsoPlainText">4&gt;[&nbsp;&nbsp; 10.361988] Hardware name: Inte=
l Corporation Arrow Lake Client Platform/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSF=
WI1.R00.3473.D80.2311222130 11/22/2023<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.362613] Call Trace:<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.363227]&nbsp; &lt;TASK&=
gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.363835]&nbsp; dump_stac=
k_lvl+0x82/0xd0<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.364446]&nbsp; register_=
lock_class+0x795/0x7e0<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.365054]&nbsp; ? __free_=
object+0xa1/0x340<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.365659]&nbsp; ? lockdep=
_hardirqs_on+0xc1/0x140<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.366261]&nbsp; __lock_ac=
quire+0x73/0x2230<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.366857]&nbsp; ? _raw_sp=
in_unlock_irqrestore+0x58/0x70<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.367451]&nbsp; lock_acqu=
ire+0xd9/0x2f0<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.368038]&nbsp; ? igc_ptp=
_clear_tx_tstamp+0x28/0x60 [igc]<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.368638]&nbsp; _raw_spin=
_lock_irqsave+0x3d/0x60<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.369212]&nbsp; ? igc_ptp=
_clear_tx_tstamp+0x28/0x60 [igc]<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.369794]&nbsp; igc_ptp_c=
lear_tx_tstamp+0x28/0x60 [igc]<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.370369]&nbsp; igc_ptp_s=
et_timestamp_mode.isra.0+0x20b/0x230 [igc]<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.370944]&nbsp; igc_ptp_r=
eset+0x31/0x180 [igc]<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.371513]&nbsp; igc_reset=
+0xb4/0x100 [igc]<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.372083]&nbsp; igc_probe=
+0x797/0x8e0 [igc]<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.372647]&nbsp; pci_devic=
e_probe+0x95/0x120<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.373199]&nbsp; really_pr=
obe+0xd9/0x370<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.373748]&nbsp; ? __pfx__=
_driver_attach+0x10/0x10<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.374291]&nbsp; __driver_=
probe_device+0x73/0x150<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.374835]&nbsp; driver_pr=
obe_device+0x19/0xa0<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.375375]&nbsp; __driver_=
attach+0xb6/0x180<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.375908]&nbsp; ? __pfx__=
_driver_attach+0x10/0x10<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.376438]&nbsp; bus_for_e=
ach_dev+0x77/0xd0<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.376968]&nbsp; bus_add_d=
river+0x110/0x240<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.377492]&nbsp; driver_re=
gister+0x5b/0x110<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.378015]&nbsp; ? __pfx_i=
gc_init_module+0x10/0x10 [igc]<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.378551]&nbsp; do_one_in=
itcall+0x5c/0x2b0<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.379079]&nbsp; ? kmalloc=
_trace_noprof+0x22f/0x290<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.379602]&nbsp; ? do_init=
_module+0x1e/0x210<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.380131]&nbsp; do_init_m=
odule+0x5f/0x210<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.380651]&nbsp; load_modu=
le+0x1d44/0x1fc0<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.381173]&nbsp; ? init_mo=
dule_from_file+0x86/0xd0<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.381691]&nbsp; init_modu=
le_from_file+0x86/0xd0<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.382206]&nbsp; idempoten=
t_init_module+0x17c/0x230<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.382723]&nbsp; __x64_sys=
_finit_module+0x56/0xb0<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.383237]&nbsp; do_syscal=
l_64+0x66/0x140<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.383751]&nbsp; entry_SYS=
CALL_64_after_hwframe+0x76/0x7e<o:p></o:p></p>
<p class=3D"MsoPlainText">&lt;4&gt;[&nbsp;&nbsp; 10.384264] RIP: 0033:0x7f6=
68aeff95d<o:p></o:p></p>
<p class=3D"MsoPlainText">`````````````````````````````````````````````````=
````````````````````````````````<o:p></o:p></p>
<p class=3D"MsoPlainText">Details log can be found in [4].<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">We have identified the following patch [5] to be =
the first &quot;bad&quot; commit<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">`````````````````````````````````````````````````=
````````````````````````````````````````````````````````<o:p></o:p></p>
<p class=3D"MsoPlainText">commit 86167183a17e03ec77198897975e9fdfbd53cb0b<o=
:p></o:p></p>
<p class=3D"MsoPlainText">Author: Corinna Vinschen <a href=3D"mailto:vinsch=
en@redhat.com">
vinschen@redhat.com</a><o:p></o:p></p>
<p class=3D"MsoPlainText">Date:&nbsp;&nbsp; Tue Apr 23 12:24:54 2024 +0200<=
o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; igc: fix a log entry using uni=
nitialized netdev<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; During successful probe, igc l=
ogs this:<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; [&nbsp;&nbsp;&nbsp; 5.133667] =
igc 0000:01:00.0 (unnamed net_device) (uninitialized): PHC added<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; The reason is that igc_ptp_ini=
t() is called very early, even before<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; register_netdev() has been cal=
led. So the netdev_info() call works<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; on a partially uninitialized n=
etdev.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; Fix this by calling igc_ptp_in=
it() after register_netdev(), right<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; after the media autosense chec=
k, just as in igb.&nbsp; Add a comment,<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; just as in igb.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">`````````````````````````````````````````````````=
````````````````````````````````````````````````````````<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Could you please check why the patch causes this =
regression and provide a fix if necessary?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thank you.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Regards<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Chaitanya<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">[1] <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/index.html">
https://intel-gfx-ci.01.org/tree/drm-tip/index.html</a>? <br>
[2] <a href=3D"https://cgit.freedesktop.org/drm-tip/">https://cgit.freedesk=
top.org/drm-tip/</a><br>
[3] <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14817/git-lo=
g-oneline.txt">
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14817/git-log-oneline.txt</=
a><o:p></o:p></p>
<p class=3D"MsoPlainText">[4<span style=3D"color:red">] <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14817/bat-arls-1/boot0.txt">
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14817/bat-arls-1/boot0.txt<=
/a><o:p></o:p></span></p>
<p class=3D"MsoNormal">[5] <span style=3D"color:red"><a href=3D"https://cgi=
t.freedesktop.org/drm-tip/commit/?id=3D86167183a17e03ec77198897975e9fdfbd53=
cb0b">https://cgit.freedesktop.org/drm-tip/commit/?id=3D86167183a17e03ec771=
98897975e9fdfbd53cb0b</a></span><o:p></o:p></p>
</div>
</body>
</html>

--_000_SJ1PR11MB61298590FE85274CD1E3899DB9F02SJ1PR11MB6129namp_--

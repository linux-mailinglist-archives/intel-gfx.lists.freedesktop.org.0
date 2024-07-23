Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A8093A791
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 21:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD9010E196;
	Tue, 23 Jul 2024 19:08:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GOS7suNw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0206910E196
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 19:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721761737; x=1753297737;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=sxmO5Zt0Wg5PvnW9Dqtekg7ghRUuP0RmSqZ+3M2eI1k=;
 b=GOS7suNwUX2D3TlqIerzVRHMGIq76BlYS6iKvu8syP4JPcUq3peeQn41
 zlkL14dmqRCmKTiheDlXi9diDp1WQ9a9tI3LKqU0DIjYvmIxv8QtHqI63
 YDRmASKUjjJ3AaOzpgAACKpkw7ovaF7h31x9+vRtVemOKukBA1eSzbyPH
 nsQEXCWUeA3jQ8s9H0d64/EFkTTMIdkokc6o4SYcpjQku6meuac6rAUEl
 nY9/D+rZEkup6kqRyCj649ja/+Dgxy5/efzwvQESk43QqeKM3OHQwUJ3z
 CPf+DwppnQxAKFl5OjSdMVEBleObHdP7gsIEKPt6lnS8l+G4JcscoPmML w==;
X-CSE-ConnectionGUID: ko1bBuKvSEGICs8gb/cU2A==
X-CSE-MsgGUID: nugxaxRiSZW+DFBZrd9KPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="23216043"
X-IronPort-AV: E=Sophos;i="6.09,231,1716274800"; d="scan'208";a="23216043"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 12:08:56 -0700
X-CSE-ConnectionGUID: Vd1Z2IRETE6BqWvxFiJd9Q==
X-CSE-MsgGUID: KeNrWMbfQCOXofxizTMbRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,231,1716274800"; d="scan'208";a="52051888"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 12:08:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 12:08:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 12:08:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 12:08:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ofBbCBqGuKxCBOgwuaGSSnABA9nM2yPR8dul1d52ve4P9TJTTjSC8ESvl0/ok3vvOSS4sqoRd1j+TJpZRtYsolEGb1YAS5ChG5xgrE77kHnx896Djm/HRxLTORfkX7ROD4MfPiy7YB51gv3kjkvKfZBWM8wTr/+lz5OIimDB0rVtLorbWKSbuR5AXn3t6y2M0ucS4HMp9GNmthyJEzBgQgTKFxchOhcSuKxYNta0CRcJqbNMrZwbFb87cfYUDGZNY4QJl6DKEuG8k7ZJarRk5jrn9j66AMrm08hRjMrIAGbgpRO4S64iHAxh9uxyumSz/8tqNuNh8etmxgo0fwebCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JxZ7VsOauYuBsF94fkmhlgbckucDbo+szzCCTBgUv3M=;
 b=H65Ifpp988Fs4i6+9W1rJPRwLl713QA48Eg/h/VBjPGqyS/RRPCO7y9x+FjOHVq9HHzv3ZryYYDyS0SMQLh8Cbh92g9wM/YdLijjqxAp607Q8lCLaoBY/8R+QwObEr2wNyKFM7UPTHTIo87HXoEY95+Zn+qf3owcqdYMP0+yLtooJZ+xgIHJvv1Ej5g3o6dnbVpxmkw/R479+wBC2Rn/ksNmnCZ+ICKNt4WNUbIxeWynAzfVQS9JVQYBBAtKuFa8AgtbxiXaDyXw54xpK7EljeZbmsIIQp6DOG+OIJfYbXmugMrj2nbw7/R89VHB4ZWGFGUcuW3nsxNy7c8mK2sNEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH0PR11MB4983.namprd11.prod.outlook.com (2603:10b6:510:40::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.30; Tue, 23 Jul
 2024 19:08:52 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 19:08:52 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "anna-maria@linutronix.de" <anna-maria@linutronix.de>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Regression on linux-next (next-20240722)
Thread-Topic: Regression on linux-next (next-20240722)
Thread-Index: AdrdMsQq3VaTxJocSPK0ZhW9i8nYAA==
Date: Tue, 23 Jul 2024 19:08:52 +0000
Message-ID: <SJ1PR11MB6129A4C0783F3A624E6CB0E7B9A92@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH0PR11MB4983:EE_
x-ms-office365-filtering-correlation-id: 09e81f44-5f35-4834-c9e8-08dcab4ae46f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?jVMe3HysHfc+3GKU0iGb7KeWRtmtG2dW3aBls6OyIxJrItzoiVO+4Sqe22?=
 =?iso-8859-1?Q?Fr8uQ7hLRTweAR8npmWqqD4UTr2pi4rQE1Jr5A0p7MZhTJh8w7QaqA+Q9t?=
 =?iso-8859-1?Q?LVyvx4fy+MdaH0YjLed4vemRgvgfuNSQYfYQaMpWdNOp8j4zfGwC3CQzIB?=
 =?iso-8859-1?Q?HOH3NA+4hpl4IgbAFzweUKGO4gxMEJAXA/m4tD6V6/ssXQ7mul/yriyi5M?=
 =?iso-8859-1?Q?s/ETMzoMCSod42QKzop3lBZ6uVgyAY9OyLDLlwJtOuf8+ooExBihWD6QYJ?=
 =?iso-8859-1?Q?VKrdElMnXM0EVVyP+AbVY8ObDW47ZDwV9FOfgd/7ADxK2IApGSYVolL8Pg?=
 =?iso-8859-1?Q?Od/hyg99dPfiT67v6FndDZWveQ2KhNcEArKlZeUim1puty+4JGjD5avkw2?=
 =?iso-8859-1?Q?dCSVyqhLaf/kB8fitBiOjxJrAJML0wvQIGaOOErSME2sg1pqvUETzdLwtO?=
 =?iso-8859-1?Q?fCThR/wfT5WyRbj11qQxic10WtHPP1a+SEGxqFgvaFSjWigGbnMm2qrYd7?=
 =?iso-8859-1?Q?gTWMUxb/2kDT7r60JgQbex2NyXhIkRqKC5QJfSszsG//UW0LYOmRaiHVoy?=
 =?iso-8859-1?Q?0vmIoQ/GKO57TrVXnQeGD8QOa5+7xg1Wx/TTJpqudsakLYadG4/Td6aLDI?=
 =?iso-8859-1?Q?PK8Dp51qL0BiQlvqgVD5+LBBDih/5hpVmTbnFGhJCDsFXJglG+tGRyVkUf?=
 =?iso-8859-1?Q?W3Od+m9quTPwY6iGmJws8AneV7rg0lcC6MR1nlq9GiNrWvo+oJosmxy6sO?=
 =?iso-8859-1?Q?dLON/Tpq179mAlCKL1t1Vt2WF3pU3E+96/5vwjuMTRxLoZpX+pFrn/JAMG?=
 =?iso-8859-1?Q?hWiclR8q2DW045Rtzk33nDviFsERyd08n4l6K8GwjC96+t9PUVNMztr98Z?=
 =?iso-8859-1?Q?3juqzp9O6+GhAfZzmK0mafP7PlbJcX8Suk+wJjktioNfzpGE/MBX1+tc7p?=
 =?iso-8859-1?Q?0BBlHBBvlyOtSwfTmmN1I3Z2XaQ3dw/xe1saOD6FNPFFW6OBSqLZDqhXc7?=
 =?iso-8859-1?Q?3VUt72++VTAMrWJG7vZRO2ou6NFNkKVsAOn4xcswCwNpvtvi2YI8vYppn4?=
 =?iso-8859-1?Q?tTdtCdyreBE0AI8p+okwDLvCSVkylt7dy8fUw2vk3pqu1DTO5DwmPUefCA?=
 =?iso-8859-1?Q?tb/S8B3m3xp3+5xSczKwlqxDKsgpTxnptcLaQVW7jXXAQv9Aeb+QmhFPL5?=
 =?iso-8859-1?Q?bryJcFGVRAR+VfPMdQ41IPNn3REvdr7hDFYhv5AB2VTxpZD7GUcsZz8FYB?=
 =?iso-8859-1?Q?MWKeY7M7ZiPPea3eH/DyTOvUTktK3Y+pAKLwpD105m4gHRC64IXRXJ1FN0?=
 =?iso-8859-1?Q?ifK/zSglsiYpqWXEEQVt9zuJmKe5SXI1b2WX4hZ8vdzXzmbO95vZWFTQvW?=
 =?iso-8859-1?Q?zmZa8A/9gymmd3HwVXpbkYzNc0pN4VLYNbpZ4Nz7V/VE/wRUBlCTc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lHo02O3twlb6s6CqsP6RnVMwxVTZQqoV1d6GSQgDSyG5T8jgGZJBQhFnoG?=
 =?iso-8859-1?Q?02Rq0yUaN6GT82z5qwfcsfhO2TMo9sjqcgUz8ZHCJ9+0eT401PaK9Ss/TG?=
 =?iso-8859-1?Q?XM0ZMBgxtiFg8H+5Wy5yIcvkt6QCUou+/dOU/X43MxlHr01jVGAaQ7nuWP?=
 =?iso-8859-1?Q?FaSrGG+jYRS1ntGNTAGARqJz7jEpSmN5Ry9I+cjaibccdew7sdP2DzpbTx?=
 =?iso-8859-1?Q?lTScgXlV4mOvVxUG1yl0j6uKFgJebFli1jGu+CGHOCOYlZmtenlp3TwKkQ?=
 =?iso-8859-1?Q?DNlRbpVK+kJ+mSvHfqkFgW+5+QywyQ3LCguTDhOQO4scTmq6czCYZqlsJz?=
 =?iso-8859-1?Q?AMokWL6oMA5TwV6mYcmXZL/6jytkzpJ2tmjKnkul6LbYJjLz8MNty2gcd2?=
 =?iso-8859-1?Q?K679S/nG8Ih/LtKIKMSWxC4RL035H4dDyjfvUu1tOhdA1FCHiaP8hjmNWP?=
 =?iso-8859-1?Q?WivXOipdTBwWw6caYylBO6luhmpaHMqQHEaRjgxhg1OgKHopWXs8+zkbxS?=
 =?iso-8859-1?Q?Aw0k6KfQyL2pV2GVrGpVKE1EggQR1Yqg6AyXjZa/RRMiwyWc2x5xNVUqsP?=
 =?iso-8859-1?Q?JwRUl9/Cy6y5/PFHBWWfeYWMT1b6gdMJPaSnVUIAU+KQnLmcUIJ7rIjG4Z?=
 =?iso-8859-1?Q?HfZL0tRaYkIw72gJiT0fe+p5k2p0ABEja3e83bjohSZ00Vl0VvbLkxDVTy?=
 =?iso-8859-1?Q?hx9nYzIQkkp816HbP+Cu4xS62Ek+QhpJaoxg240ItE0bT274F9I/FUWURY?=
 =?iso-8859-1?Q?VbX6W7eEGgTAqTJMdK0UtFAXTp4O1rNXHXbB6X16mewyIuy0ouMPshVNd+?=
 =?iso-8859-1?Q?o1NQqkgS/KrbrhIy3BbkDMVCp52nUKGIdrmPg3SwGPCbXnYCpe/J2pxSlZ?=
 =?iso-8859-1?Q?2nv9LZmF6sAD8lp6cZegLLKQ+n+xZKWfFDgxfxOJRQVpvBY8OXHcq+KPaP?=
 =?iso-8859-1?Q?r6W45N7u9fISTqAUgS59LFuAqytX0OEilV7l6aGDhjBJQPiPgJ/FZQulI0?=
 =?iso-8859-1?Q?pXYduDcPS5IXo/3Hkm20DJn8LBzPumi9rgYbxOkL6Xt7LrPZz8NwkKYZD2?=
 =?iso-8859-1?Q?ulhdxoFQx0KubnjsKgZrEV4x+XOnbsIaF/r6nCFsaN5lZX2keMe4P6SmPN?=
 =?iso-8859-1?Q?OBxFaJUgBpvj5VzqQJeEE6jT//wOpzywNk0xjoU5xhnhmTVCe34fQj2pd8?=
 =?iso-8859-1?Q?kBnZYDJTotDWc9Df6LK/Mr4IutgRVZdUBSPdtNq0jfFOtuEQturzjB8M74?=
 =?iso-8859-1?Q?apQhZPmIctqbRE920iNq6nBh++EZ70p8jf3cagzHFpwL67GydW5PrhxvOm?=
 =?iso-8859-1?Q?SBRJ3YD29t0H72tDjNMPG1KZdYroLAQ78lRbjWJhi8ZZHPoMoxzNuzZYFW?=
 =?iso-8859-1?Q?MG1YR5iqFdl4qiz/uZh7UbRd/mhpIw9lYqBbLCEB1oVLqQ+XomhfaNRC7p?=
 =?iso-8859-1?Q?h66KRHEAM38F3QFNFWXFB1Ncub/3fPnwpUFHvBfcBHqznkrIv5uB+FBmY1?=
 =?iso-8859-1?Q?w447uO46XPoCvIzBIIP9KWBNR5GcrgmgL1xzRajAqyx8UcF3SJNZi2UuV9?=
 =?iso-8859-1?Q?yulSsQx7mWUOR9sUakaERPfquwueBkB9xbHZjkNJyGwZN2kZ17yWqpu2wF?=
 =?iso-8859-1?Q?wVxELcYwvozdHRRBaTfaDwJFsf7TrYO5AYtebFznI7Mwm0P7lA4ncvwQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09e81f44-5f35-4834-c9e8-08dcab4ae46f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 19:08:52.8072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vHVI4xRMt2RupuVpjblSGrIlGCE2lNVWO5WOzsWD9B9lsKfBKoJQIXabkDeAfrygnjqEbxxuDbVgUvaoiNpOsa4jOwNvhtr6DKG/iA5kYgc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4983
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

Hello Anna-Maria,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20240722 [2], we are seeing the following regression

```````````````````````````````````````````````````````````````````````````=
``````
<6>[    0.787321] Timer migration: 2 hierarchy levels; 8 children per group=
; 2 crossnode level
<4>[    0.787330] ------------[ cut here ]------------
<4>[    0.787335] WARNING: CPU: 0 PID: 1 at kernel/time/timer_migration.c:1=
714 tmigr_cpu_prepare+0x5f2/0x680
<4>[    0.787340] Modules linked in:
<4>[    0.787341] CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.10.0-n=
ext-20240722-next-20240722-gdee7f101b642+ #1
<4>[    0.787342] Hardware name: ASUS System Product Name/PRIME Z790-P WIFI=
, BIOS 0812 02/24/2023
<4>[    0.787343] RIP: 0010:tmigr_cpu_prepare+0x5f2/0x680
<4>[    0.787344] Code: fc ff ff 80 3d dc d5 6c 01 00 0f 85 56 fc ff ff 48 =
c7 c7 f8 ba 48 82 c6 05 c8 d5 6c 01 01 e8 95 1b f0 ff 0f 0b e9 3c fc ff ff =
<0f> 0b e9 41 fa ff ff 4c 89 e7 48 89 2c 24 e8 7b cd 11 00 48 c7 c7
<4>[    0.787345] RSP: 0000:ffffc90000067d18 EFLAGS: 00010246
<4>[    0.787346] RAX: 0000000000000000 RBX: ffff88885f0214e0 RCX: 00000000=
00000000
<4>[    0.787347] RDX: 0000000000000001 RSI: ffffffff8243cfef RDI: 00000000=
00000000
<4>[    0.787347] RBP: 000000000002e74c R08: 0000000000000000 R09: 00000000=
00000000
<4>[    0.787347] R10: ffffc90000067e08 R11: ffff888100ce8040 R12: 00000000=
00000000
<4>[    0.787348] R13: 0000000000000040 R14: ffffffff81198620 R15: ffffffff=
8264b880
<4>[    0.787348] FS:  0000000000000000(0000) GS:ffff88885f000000(0000) knl=
GS:0000000000000000
<4>[    0.787349] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[    0.787350] CR2: ffff88887f7ff000 CR3: 000000000663a000 CR4: 00000000=
00f50ef0
<4>[    0.787350] PKRU: 55555554
<4>[    0.787351] Call Trace:
<4>[    0.787351]  <TASK>
<4>[    0.787352]  ? __warn+0x91/0x1a0
<4>[    0.787354]  ? tmigr_cpu_prepare+0x5f2/0x680
<4>[    0.787355]  ? report_bug+0x1f8/0x200
<4>[    0.787359]  ? handle_bug+0x3c/0x70
<4>[    0.787361]  ? exc_invalid_op+0x18/0x70
<4>[    0.787362]  ? asm_exc_invalid_op+0x1a/0x20
<4>[    0.787364]  ? __pfx_tmigr_cpu_prepare+0x10/0x10
<4>[    0.787367]  ? tmigr_cpu_prepare+0x5f2/0x680
<4>[    0.787369]  ? __pfx_tmigr_cpu_prepare+0x10/0x10
<4>[    0.787370]  cpuhp_invoke_callback+0x17b/0x6b0
<4>[    0.787372]  cpuhp_issue_call+0x9a/0x1d0
<4>[    0.787374]  __cpuhp_setup_state_cpuslocked+0x1cc/0x2c0
<4>[    0.787376]  ? __pfx_tmigr_cpu_prepare+0x10/0x10
<4>[    0.787377]  __cpuhp_setup_state+0xb8/0x220
<4>[    0.787379]  ? __pfx_tmigr_init+0x10/0x10
<4>[    0.787381]  tmigr_init+0xd8/0x140
<4>[    0.787383]  do_one_initcall+0x5c/0x2b0
<4>[    0.787385]  ? call_rcu_tasks_generic.constprop.0+0x182/0x3c0
<4>[    0.787388]  kernel_init_freeable+0xae/0x340
<4>[    0.787390]  ? __pfx_kernel_init+0x10/0x10
<4>[    0.787392]  kernel_init+0x15/0x130
<4>[    0.787393]  ret_from_fork+0x2c/0x50
<4>[    0.787395]  ? __pfx_kernel_init+0x10/0x10
<4>[    0.787396]  ret_from_fork_asm+0x1a/0x30
<4>[    0.787399]  </TASK>
```````````````````````````````````````````````````````````````````````````=
``````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d" commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit 7a5ee4aa61afa9f1570c80ffba92987bc73ce3ab
Author: Anna-Maria Behnsen mailto:anna-maria@linutronix.de
Date:=A0=A0 Wed Jul 17 11:49:40 2024 +0200

=A0=A0=A0 timers/migration: Move hierarchy setup into cpuhotplug prepare ca=
llback
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We could not revert the patch because of a merge conflicts but resetting to=
 the parent of the commit seems to fix the issue

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240722
[3] http://gfx-ci.igk.intel.com/tree/linux-next/next-20240722/bat-rpls-4/bo=
ot0.txt
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240722&id=3D7a5ee4aa61afa9f1570c80ffba92987bc73ce3ab

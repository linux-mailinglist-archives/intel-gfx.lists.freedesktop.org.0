Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIihMkHmgmnNeQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 07:25:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA75E24D7
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 07:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE8610E2DA;
	Wed,  4 Feb 2026 06:25:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m7G4KRic";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50DC310E2AB;
 Wed,  4 Feb 2026 06:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770186302; x=1801722302;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/Nf6nD79EJK6Vwzb3pbNB/G/0yADAkOA81vaktZ0T7k=;
 b=m7G4KRicNxD1ylNBnxwRFLNTcjvDdHX5BnPKgyfgtVJC8UODAEr4JgiU
 uyKq7z1jiWHgxLkAGFTByXd6FW2suKlPf7ZKwm96mBV3rPY2eIrPFfEzZ
 HLI8ltxj2eKIyv1ozOfnt+8XrIx5gVEsteyrzwm+bmRSC+fg0Nruhlb4A
 bySItM+EZPl4dqY7ij3gTNyecJQTlVAUgfi2uRJFWDLO9EfoyQZvrgRqp
 p3rMmDPrmDkRy0XnPSrS50u5Oy+fehBlw8Ai5nQvwl8S/nSbvx47Y9rqr
 jfDs/ZkxGK7e7kiok4VVIVu1hsg5pZnGVYY1cYWZ7MXtRe6qjfMPnbENf w==;
X-CSE-ConnectionGUID: gVLCBTZuRpuDbvkoSOyy0A==
X-CSE-MsgGUID: haumygOzSEa9rnH0p/8CVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="70386897"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="70386897"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 22:25:02 -0800
X-CSE-ConnectionGUID: izz/9MIKRSCcH4KoJrScKQ==
X-CSE-MsgGUID: zMm2J0ekTUet3jEaklEe+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="209704907"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 22:25:01 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 22:25:01 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 22:25:01 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.25) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 22:25:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xNpNPS09DN9iYH5Gf05/ebiCnK0Ff4FAeMUkmgdEcz0cVpBVHdtx8X7TMbKlwmXAbuJ0eSC1WmfeBLJt51IHBY+RGts8GzrjDFOBulwksU3PTuphJPA8qHsv2GRqSd2bE51mpvcDXLZcMaHsr8jc7W88alg6+PY7Bf/SEcG3ErZGJCCu6WmQlXPMZGbgbeeqJKTSVLZ/3BoQJx4S1XHoOWPdjpdLNsXC8MVfQU2kMZYd8YYgplcSZTHiPJet0KAWos8ewe0uKsyc67MkPafEVVTNJY5JVYFGoCoLyPmI3dn+UeMFnA8qTWRkzfOMBn0OTnzz4AOs/zOs4bN2ymIYMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Nf6nD79EJK6Vwzb3pbNB/G/0yADAkOA81vaktZ0T7k=;
 b=f6ECGNZXquGIy2sjFNQysr/7D4/Mc5rC074kri/DLTyYYiq/7VuXpF7kaGP8DXXX+XhcgEDvR7/TdOoegVy1CP+i97NX9BJpL1A283SGXdhfM3tONPkqZzpxNWPAZdsfsW9B1UWXJg83BZHZCFoMisNrBSq5Ku7BpaBwuAvvvnc5C2Ns4o2a/ppKR26FQVeTIEmZXMHVc7oMwcXCl8UmDFuHMYW58SCtAaOoQ7+ob1nAmJRVFqbEpQ50jTtUApDU3BqLmeevgY44iNlemH9MYa4AYEAgbx33JmKb7FmsVboJMHRlVfd8KEn+EgY0VgNUikOTmyfWQz8cJzlBqnZaQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB5797.namprd11.prod.outlook.com (2603:10b6:303:184::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Wed, 4 Feb
 2026 06:24:58 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%2]) with mapi id 15.20.9587.013; Wed, 4 Feb 2026
 06:24:58 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Grzelak, 
 Michal" <michal.grzelak@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>
Subject: Re: [RESEND 4/5] drm/i915/alpm: Simplify and align LOBF checks in
 pre/post plane update
Thread-Topic: [RESEND 4/5] drm/i915/alpm: Simplify and align LOBF checks in
 pre/post plane update
Thread-Index: AQHclZXAcnDxBmh2ZUKP0u6y5o1A0bVyEsoA
Date: Wed, 4 Feb 2026 06:24:58 +0000
Message-ID: <a014bbf0403b4dfbc09ced3d7e925ea35739e245.camel@intel.com>
References: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
 <20260204050250.762718-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260204050250.762718-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB5797:EE_
x-ms-office365-filtering-correlation-id: c6322a70-3e5d-4dab-376f-08de63b61ee2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?U0ZmdTAvclJIVXBRTEZsSVhPVTVPdGVmOGw2ZkdXbHR3ZmlEQjkwU3c3MUt6?=
 =?utf-8?B?ZjRCaDU4K1R3UnBJU282TEN1VndNMmhNT2VsTmhhUDZ1bkJWa3ozazlEQTgx?=
 =?utf-8?B?VmkrWnJrQzZTdy82bWZSRjkvNzc4VGZURE9qVFBuaC9UbEw2ZlkyL21LWGRw?=
 =?utf-8?B?ZkpUL1pSNlNMQU5mdk9jMVNSLytpTm8reFlqOUhJb1dqanpkRUdQbnptdXM0?=
 =?utf-8?B?MWNReHdGLzhiSmNhM2RoUlpTTmx3dnJlMyt6eXVTcE5qRFF2OEhJVmJRSWZO?=
 =?utf-8?B?cXR0dG81Ym1oQ28vVlF1QmJzTFQrYXdsTTNmb0NlT1hLYnMrUHhxMmV4M0NZ?=
 =?utf-8?B?ZktGMUV2Mmtra0czaEdQdnNIelI3UWsvUVpXaUFJN1hCL2JjTmpIMWRhMXhP?=
 =?utf-8?B?bms2VjhMejZqeHh0WHU3VXRjZ1R1VnJkN083cGFlWVR3ZFI4MHdyM0pDZUxU?=
 =?utf-8?B?OGhQNjg5alNsNERiT2lGZnRtdnlqMnZHSTlCbi8vQTMyUlJ2NVprS09qUHU5?=
 =?utf-8?B?QVFqVTJ3c3E0dk9yQy9waXZPNkxBL216ZGhMU0dXenV6Y1dBdmZ3NG5JZjhl?=
 =?utf-8?B?QkN0eHEzUk5lUk9rMktER1A3SU5PK0pBS2liUWZ0WFl0amo1Z1dzSXUveFlv?=
 =?utf-8?B?QlE0d0F5cWMvSW4wQnZjeFlRWHpRTUg1T2JZcmY0Nm1aMk5ZMEdVUnZxV1hG?=
 =?utf-8?B?Qk5UOVFQdHN2NUl3bWJmT3R2TmlaSjRFRlZSQ1F6Qy9ZTmFnbi9oS01ZZ2dK?=
 =?utf-8?B?b0JFdXdDdEVKNVp0UC9MOStrYzNueVRocVpRNzkwZ1A1M200VlJpRnpDZnhh?=
 =?utf-8?B?MDhjRHFXRTc3MUV3YTg1VVpXRXhHcysxTXkzMHUyT3kvTlEwaUpQeDAyUkQv?=
 =?utf-8?B?VDFSNHYzekVBVUhtQUZ0WTlDL2pndVRZTEw3UVdWekFCK3BkOGRLZXlHSHZ2?=
 =?utf-8?B?alpVa1FoOVdrcHR4N2hLVVNEb3JlVXg0MFRSU2IwUXY0MmhNelQwQ3NKZUs4?=
 =?utf-8?B?aThNbjN5TUpIMkZxN3NOblpsa0Z1djJnaGl1Sy9GQ2VZTy9QTk9aVnFKWHhy?=
 =?utf-8?B?K1owT3B1MzlxUmEvUWkvOGVNT1MvNGdkaDZDWWFVT0paeWZxTklHcnhRVFRG?=
 =?utf-8?B?elFiNTVFMkMzYk9OR1FxQk5XUWNVN3A0Z1ZZb2FKdndNRndWemtsQ2pFMkFE?=
 =?utf-8?B?Ykc5Z051ZUhZZDc4RFF3UDBmdUgyOVllUkg2bmdob0ZtcVQzMVpCSFJJSVlU?=
 =?utf-8?B?dGFCbnBjbWRGZmczMzQyTjdyTHd0STF0V1llTDdtcFNLdWxaaGxyODhYWW1X?=
 =?utf-8?B?dVpVazlPYVMrZGkzNU5SUFQ5dUQ5M0hybGV1ZTFsdFNLUmpER1RTbzk0Wmxp?=
 =?utf-8?B?cGVTTzlmc3NVaTBBRWtxT0gwaVhmVndVVVdINWxmdGg5a3I0RmxPdUttbHF2?=
 =?utf-8?B?ZTRXak5WVUJwYmZWSmxzd0JtMVZaYXc4WHYvTDE3bVo5OVJhNEF6UHYxVktn?=
 =?utf-8?B?eG85eEc3VVNwVFp4WDlKWW5ncWJLa3NzQUM0L0pMOVN5dXEyZnJ0aW1Rd2JM?=
 =?utf-8?B?MlhzSHlqd1FwV0RrMXZxU3N6SU03WC9vVlpVRnlTczRPcFl2OE5IcWlRMUZM?=
 =?utf-8?B?cnZVMDVYWkZ4ZXdjRnRubThNL2dmT1krNllRUUdXL0dJT0FsY0ovRHlHU1Iz?=
 =?utf-8?B?QmRURExBTVJlM2tVRVI0NUVxRExSYndneDNFcFlsRVN2Mk5jUG9obytUbFR0?=
 =?utf-8?B?WTJoV0NYUnNLc25iK29IOWJzOU5zazc1RGNrcDRxTmdKMkJPYXRoUU5HU3FC?=
 =?utf-8?B?Ym55bDF1TEcybEp4cjdzQ2NBVzN2ZEwrdzNWb1RCeGkvdzdwZStFK1VGUGNn?=
 =?utf-8?B?TS92QXNJVEUyMkxOSUxXMnJvWklOQWJrYzdTUmJ6YXZSdU1CTWZnektHYzZB?=
 =?utf-8?B?Mzg3WE1XUGxrRjdRTkZXNE1rR0JWSk9SdUZ6NmJmdC9EcmJ4d0hvR3NqMlhM?=
 =?utf-8?B?K3g1RzFoenVDVC9BbzVhaVk3MlUyUTZrc1dHTUw0MkNRNzBFdDhGRzlrYmNv?=
 =?utf-8?B?cWxqZm9sR3hZS3AxdVBWdEU4dlpxUjdSL2hid3U5OHpNc2pkYklqUlE3U0Ry?=
 =?utf-8?B?bzU5M0RMdGlpZXBmQWJWRk81NXdnRjhnTmRIQWQxaUJvZkpBRERiMzU4L0ZW?=
 =?utf-8?B?UWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEFybFh6b0RnQUw2RmZpcXM4Q0VjSTBlSTYwckd6UU1xRU5hM1h6cDJ2dkNs?=
 =?utf-8?B?d1FMOVVDQ2s0b1phdDN6OVl2TEoyT1hGQVNLYlBTZXRhQXRxZlV5RkR2dTR4?=
 =?utf-8?B?WWJJdGJjVTVFSzAydHBObEhwOEdpU1drZnBwL3lhYlQ4SkdFZmlna1oraWVk?=
 =?utf-8?B?UkxWUUpuNEJESDNZaWxvS1hLRm9va2pDdk9kN2Y1bUIvNk8xUno0QkRpc3dv?=
 =?utf-8?B?aHpUZmlyWnVaYVBpTHJCNVlHN0drcHhWL1lxdGpvd3FhZVFud0h4ckdhSHNF?=
 =?utf-8?B?OFBpY2orUUJDdGtqT3JCUTc5eW9xVlNva0g2WkdEenpUT2loR1lUalNNWFBR?=
 =?utf-8?B?dElyVXF6ZUhPZ29qVDNWUkF0RXJncm55WUE4cm16dUkzdW1HT2MrOU1uQWFw?=
 =?utf-8?B?N3FSN2d0VUIvVDBLMkxlNnZyY05ORWVET0sxeWZ1WFdTVEdBaWtsTGM2TFcw?=
 =?utf-8?B?bmJ5K0ZIcjd0QjMyMHZNaWJCSHFoZVZpMS9VMTY1ZExwWFpzRGt1VDFIUWZW?=
 =?utf-8?B?ZUNlTmVwdGtzSEJpQW9WZis1TUs3dE1hekNIZzVQNWVyZCtzamordTE5K3pl?=
 =?utf-8?B?MGExVlkxNFg2aCt1WVZ4NC8xdmQvTkFiNjdKUkdPcE1yaFJXWGdaTkNCVysr?=
 =?utf-8?B?Wm9CM0JsWVlEdlN5ZUpNbmFsY1B1dlBrZW5ua1BvL2FQRXZicVhjV0hhMzhn?=
 =?utf-8?B?em9ZMmVsWk1aRjM2aU00eTNIVk9oL0pFdFdRaFVYMzVHMUNBbmc0RzNqblFM?=
 =?utf-8?B?WDNoYWhoclZxZlNQSlVXQWVoSHhycFZGZk5KRzdhdzh6Wjk0bDhLdVEyYUJE?=
 =?utf-8?B?Tno3ZSttUDhyQkM0a0JOVEVyQU5xVTlhOVp5eHNWSG9ZSE84UEdja2phUE5X?=
 =?utf-8?B?MGNuWURpaC9PZFZoTWw2NjRYQ2IyREVBaFZJei9MUFV1YkFuYXZYV3dmL0FM?=
 =?utf-8?B?aFFsb0Nta2lJV0gxMisrRXk5RFByb3RTbU0wZWNNcW83WnNVYU1SRk9JMEt3?=
 =?utf-8?B?cHJiUWtPRTFaS1N6dWMxd2RESEF4RVJHbVlLdUxpNnZVODVtLzZKaW1WVmg1?=
 =?utf-8?B?MTNJOVo2M3JFaXRtYkJqbDg4Rm5TNFdXbG1iQnp1amNHQWZOUGtvV0J6M0Js?=
 =?utf-8?B?bE5iQ1BEdmJaMDJzT3IyUjl3Q0pLMVlaTmloa1pIQ0ZGTkhpZVYvTHpkUlY0?=
 =?utf-8?B?bUhvVlRFbmRhSWEzcmZpK21YMVZmeDMzbW9aTExMWUp4S3hiSE5VT041ai9X?=
 =?utf-8?B?eHdBTXhNOXRYSTFDSVVobGZ2clJVWWcrVEo3UDY0Mml5ZmpRTFpXaW5RQmxM?=
 =?utf-8?B?cXVIdm8zcW0rdHJTNDRqTmgwSUkvUmRMTVRkZ0ErVDljRnZyUnlsMVNvc1lG?=
 =?utf-8?B?K09NZGNzWG5VRURadVdEN0xyODFqRm5va1ZNQm9sT1NlOVFGY1lieWNsc0Nn?=
 =?utf-8?B?WUNuc1FSSUVxdkxMY0JuVm10K0dNM3RRQjd6SUY2cEF4dmF2WFdFcGNrVTZk?=
 =?utf-8?B?bElkZmhQcVZBd2RjQjlVb0xydmNtdVN6dUh5NUE2YXd6bUs5bE5ES3dLWkxw?=
 =?utf-8?B?Z1V5YUJkL1RhaC95Yk5iTTVvTFUxSXAzNVBWTDgzdnRhZkw3aDIxTUpZMTR0?=
 =?utf-8?B?TU1YYW1wNVVGTmQ3VXg1L0VQTzhoMUxJano4SXJKWk5hQXltR2FvM3c2Z0ZH?=
 =?utf-8?B?TVZVMVVwZ2dlUlNSemF0ZWhROC9HTEl2MVJnS2dpd2xNb2dTQWVpZytLcEhs?=
 =?utf-8?B?RW1xQ1VIMjJMVHB0ZEZXK3pIRS9xWkxJNzBURitBUnlBaFdQU0hEcWhzRmNp?=
 =?utf-8?B?bE1nSEdsakdLdmVhSUl4WGsvN0JJY3JhREw1ZUhBaTZlb1crbmpDaWRrbWRQ?=
 =?utf-8?B?SDhqbUFuMmN2bHBVeFEyUHo5MEtqbDZmRFhwTUJKWWtXSkZOVnBidUY0bTJ4?=
 =?utf-8?B?ZHFnbkU1aTc1YWlJNHRKMklWSTlSdWZqSlFDWVJpVlFHU0l5V1F4enZyNXgy?=
 =?utf-8?B?MFJGdlJIYzZueFVsWmZqZGNsNzd6SWZVSTA5UVhLNUhwR3Vpek5EeTFQT3Nn?=
 =?utf-8?B?OTJUcWliZkZ3bmJGajh1YmdiWmZqR1JIcXBoOHliSlo1WXg3aWJEU3NPcUdl?=
 =?utf-8?B?VUwwWEs1OGJIS2FpWEJRUmRzZURPQTR6cncxQlp4RlZ1eEw3OFl6aGo2UjFO?=
 =?utf-8?B?czFiS004T1NLMW5CZGlhSVE2U05Zd3h3Z1A4Vyt5enJiYUExakhFdy94T056?=
 =?utf-8?B?U0pFcWl4aVpSWWJTZnlQSE1yUHI5aUIyNDROcUFWN1p0c3hoZjYzc0RPUFI2?=
 =?utf-8?B?TDlveXhCODRFdnZvcDR2cENqczE5QlFkZTVkWDdBM0dtQzladG5KUDhsUWhn?=
 =?utf-8?Q?yO42Cz2ze6UlRPeDaCPXMy0oEbVRUU24s9PLnKDMGthL7?=
x-ms-exchange-antispam-messagedata-1: GBNNxzkgQTAsiaiQexqxYyEhVDla9tOv9c0=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E1DE623B397AFE49AB6485BBDF8AACEF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6322a70-3e5d-4dab-376f-08de63b61ee2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2026 06:24:58.6469 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n4fqKduFNei9aKZeHwrOuqVOVAuizE1NqiJfUpm1+zXzvXtYkNtIDMvyOxBZ42D6KEVvv4XUfy7r4DIa+ZP6ilgKAMMvXvRCQeYMa2Xovvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5797
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4EA75E24D7
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAyLTA0IGF0IDEwOjMyICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gVGhlIHByZV9wbGFuZV91cGRhdGUgYW5kIHBvc3RfcGxhbmVfdXBkYXRlIGhvb2tzIGVzc2Vu
dGlhbGx5DQo+IGRpc2FibGUvZW5hYmxlIGxvYmYgZmVhdHVyZS4gVXNlIHRoZSBleGlzdGluZw0K
PiBfaXNfZW5hYmxpbmcvaXNfZGlzYWJsaW5nDQo+IGxvZ2ljIGZvciB0aGlzIGluIHRoZSBwcmVf
cGxhbmVfdXBkYXRlIGFuZCBwb3N0X3BsYW5lX3VwZGF0ZSBwYXRocy4NCj4gDQo+IEFsc28gcmVu
YW1lIHRoZSBoZWxwZXJzIHRvIGludGVsX2FscG1fbG9iZl97ZW4sZGlzfWFibGUoKS4NCj4gDQo+
IHYyOiBSZW1vdmUgcmVkZXVuZGFudCBjaGVja3MgZHVyaW5nIGVuYWJsaW5nL2Rpc2FibGluZy4g
KEpvdW5pKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1
dGl5YWxAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwu
Z3J6ZWxha0BpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uY8KgwqDCoCB8IDQ4ICsrKysrKy0tLS0tLS0tLS0tLQ0KPiAtLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5owqDCoMKgIHzCoCA2
ICstLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MjUgKysrKysrKysrLQ0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgNDEg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hbHBtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uYw0KPiBpbmRleCAzYWVhYjRiZWJjZTIuLmUwYTRhNTlkYzAyNSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gQEAgLTQ1MiwyNSArNDUy
LDE0IEBAIHZvaWQgaW50ZWxfYWxwbV9wb3J0X2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHANCj4g
KmludGVsX2RwLA0KPiDCoAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBQT1JUX0FMUE1fTEZQU19D
VEwocG9ydCksDQo+IGxmcHNfY3RsX3ZhbCk7DQo+IMKgfQ0KPiDCoA0KPiAtdm9pZCBpbnRlbF9h
bHBtX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
IC0JCQkJIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiArdm9pZCBpbnRlbF9hbHBtX2xvYmZf
ZGlzYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUp
DQo+IMKgew0KPiAtCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlz
cGxheShzdGF0ZSk7DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUgPQ0KPiAtCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsN
Cj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiAt
CQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gLQllbnVt
IHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsN
Cj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+IHRvX2ludGVsX2Rpc3BsYXko
bmV3X2NydGNfc3RhdGUpOw0KPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IG5l
d19jcnRjX3N0YXRlLQ0KPiA+Y3B1X3RyYW5zY29kZXI7DQo+IMKgCXN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyOw0KPiDCoA0KPiAtCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwKQ0K
PiAtCQlyZXR1cm47DQo+IC0NCj4gLQlpZiAoY3J0Y19zdGF0ZS0+aGFzX2xvYmYgfHwgY3J0Y19z
dGF0ZS0+aGFzX2xvYmYgPT0NCj4gb2xkX2NydGNfc3RhdGUtPmhhc19sb2JmKQ0KPiAtCQlyZXR1
cm47DQo+IC0NCj4gwqAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrKGRpc3BsYXktPmRybSwg
ZW5jb2RlciwNCj4gLQkJCQnCoMKgwqAgY3J0Y19zdGF0ZS0+dWFwaS5lbmNvZGVyX21hc2spIHsN
Cj4gKwkJCQnCoMKgwqAgbmV3X2NydGNfc3RhdGUtDQo+ID51YXBpLmVuY29kZXJfbWFzaykgew0K
PiDCoAkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcDsNCj4gwqANCj4gwqAJCWlmICghaW50ZWxf
ZW5jb2Rlcl9pc19kcChlbmNvZGVyKSkNCj4gQEAgLTQ4MSwxMiArNDcwLDEwIEBAIHZvaWQgaW50
ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiDCoAkJaWYgKCFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiDCoAkJCWNvbnRp
bnVlOw0KPiDCoA0KPiAtCQlpZiAob2xkX2NydGNfc3RhdGUtPmhhc19sb2JmKSB7DQo+IC0JCQlt
dXRleF9sb2NrKCZpbnRlbF9kcC0+YWxwbS5sb2NrKTsNCj4gLQkJCWludGVsX2RlX3dyaXRlKGRp
c3BsYXksIEFMUE1fQ1RMKGRpc3BsYXksDQo+IGNwdV90cmFuc2NvZGVyKSwgMCk7DQo+IC0JCQlk
cm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJMaW5rIG9mZiBiZXR3ZWVuDQo+IGZyYW1lcyAoTE9C
RikgZGlzYWJsZWRcbiIpOw0KPiAtCQkJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+YWxwbS5sb2Nr
KTsNCj4gLQkJfQ0KPiArCQltdXRleF9sb2NrKCZpbnRlbF9kcC0+YWxwbS5sb2NrKTsNCj4gKwkJ
aW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29k
ZXIpLCAwKTsNCj4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiTGluayBvZmYgYmV0d2Vl
biBmcmFtZXMNCj4gKExPQkYpIGRpc2FibGVkXG4iKTsNCj4gKwkJbXV0ZXhfdW5sb2NrKCZpbnRl
bF9kcC0+YWxwbS5sb2NrKTsNCj4gwqAJfQ0KPiDCoH0NCj4gwqANCj4gQEAgLTUwNywyMiArNDk0
LDEzIEBAIHZvaWQgaW50ZWxfYWxwbV9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHANCj4gKmlu
dGVsX2RwLA0KPiDCoAlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1JFQ0VJ
VkVSX0FMUE1fQ09ORklHLA0KPiB2YWwpOw0KPiDCoH0NCj4gwqANCj4gLXZvaWQgaW50ZWxfYWxw
bV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
LQkJCQnCoCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gK3ZvaWQgaW50ZWxfYWxwbV9sb2Jm
X2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUp
DQo+IMKgew0KPiAtCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlz
cGxheShzdGF0ZSk7DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUgPQ0KPiAtCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsN
Cj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiAt
CQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gKwlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+IHRvX2ludGVsX2Rpc3BsYXkobmV3X2NydGNf
c3RhdGUpOw0KPiDCoAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gwqANCj4gLQlp
ZiAoY3J0Y19zdGF0ZS0+aGFzX3BzciB8fCAhY3J0Y19zdGF0ZS0+aGFzX2xvYmYgfHwNCj4gLQnC
oMKgwqAgY3J0Y19zdGF0ZS0+aGFzX2xvYmYgPT0gb2xkX2NydGNfc3RhdGUtPmhhc19sb2JmKQ0K
PiAtCQlyZXR1cm47DQo+IC0NCj4gwqAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrKGRpc3Bs
YXktPmRybSwgZW5jb2RlciwNCj4gLQkJCQnCoMKgwqAgY3J0Y19zdGF0ZS0+dWFwaS5lbmNvZGVy
X21hc2spIHsNCj4gKwkJCQnCoMKgwqAgbmV3X2NydGNfc3RhdGUtDQo+ID51YXBpLmVuY29kZXJf
bWFzaykgew0KPiDCoAkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcDsNCj4gwqANCj4gwqAJCWlm
ICghaW50ZWxfZW5jb2Rlcl9pc19kcChlbmNvZGVyKSkNCj4gQEAgLTUzMSw4ICs1MDksOCBAQCB2
b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+IMKgCQlpbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsN
Cj4gwqANCj4gwqAJCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB7DQo+IC0JCQlpbnRl
bF9hbHBtX2VuYWJsZV9zaW5rKGludGVsX2RwLA0KPiBjcnRjX3N0YXRlKTsNCj4gLQkJCWludGVs
X2FscG1fY29uZmlndXJlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gKwkJCWludGVsX2FscG1f
ZW5hYmxlX3NpbmsoaW50ZWxfZHAsDQo+IG5ld19jcnRjX3N0YXRlKTsNCj4gKwkJCWludGVsX2Fs
cG1fY29uZmlndXJlKGludGVsX2RwLA0KPiBuZXdfY3J0Y19zdGF0ZSk7DQo+IMKgCQl9DQo+IMKg
CX0NCj4gwqB9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2FscG0uaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5o
DQo+IGluZGV4IGI2OTg5NzlkMWYxMy4uMWNmNzA2NjhhYjFiIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiBAQCAtMjUsMTIgKzI1LDEwIEBAIHZv
aWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4g
wqAJCQnCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+
IMKgdm9pZCBpbnRlbF9hbHBtX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+IMKgCQkJwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0
YXRlKTsNCj4gLXZvaWQgaW50ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiAtCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+
ICt2b2lkIGludGVsX2FscG1fbG9iZl9kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlDQo+ICpuZXdfY3J0Y19zdGF0ZSk7DQo+IMKgdm9pZCBpbnRlbF9hbHBtX3BvcnRfY29uZmln
dXJlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJwqDCoMKgwqDCoMKgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gLXZvaWQgaW50ZWxf
YWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gLQkJCQnCoCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ICt2b2lkIGludGVsX2FscG1f
bG9iZl9lbmFibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKm5ld19jcnRjX3N0
YXRlKTsNCj4gwqB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yICpjb25uZWN0b3IpOw0KPiDCoGJvb2wgaW50ZWxfYWxwbV9hdXhfd2FrZV9zdXBw
b3J0ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+IMKgYm9vbCBpbnRlbF9hbHBtX2F1
eF9sZXNzX3dha2Vfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA1
NjRkMTE5MjVhZjMuLjczOWEwYTc0ZTAwOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTEwMDgsNiArMTAwOCwyNCBAQCBzdGF0
aWMgYm9vbCBpbnRlbF9jYXNmX2Rpc2FibGluZyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX2NydGNfc3RhdGUsDQo+IMKgCXJldHVybiBpc19kaXNhYmxpbmcoaHcuY2FzZl9w
YXJhbXMuY2FzZl9lbmFibGUsDQo+IG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7DQo+
IMKgfQ0KPiDCoA0KPiArc3RhdGljIGJvb2wgaW50ZWxfY3J0Y19sb2JmX2VuYWJsaW5nKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpvbGRfY3J0Y19zdGF0ZSwNCj4gKwkJCQnCoMKg
wqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUpDQo+
ICt7DQo+ICsJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiArCQlyZXR1cm4gZmFs
c2U7DQo+ICsNCj4gKwlyZXR1cm4gaXNfZW5hYmxpbmcoaGFzX2xvYmYsIG9sZF9jcnRjX3N0YXRl
LA0KPiBuZXdfY3J0Y19zdGF0ZSk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBib29sIGludGVsX2Ny
dGNfbG9iZl9kaXNhYmxpbmcoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKm9sZF9j
cnRjX3N0YXRlLA0KPiArCQkJCcKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gKm5ld19jcnRjX3N0YXRlKQ0KPiArew0KPiArCWlmICghb2xkX2NydGNfc3RhdGUtPmh3
LmFjdGl2ZSkNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJcmV0dXJuIGlzX2Rpc2FibGlu
ZyhoYXNfbG9iZiwgb2xkX2NydGNfc3RhdGUsDQo+IG5ld19jcnRjX3N0YXRlKTsNCj4gK30NCj4g
Kw0KPiDCoCN1bmRlZiBpc19kaXNhYmxpbmcNCj4gwqAjdW5kZWYgaXNfZW5hYmxpbmcNCj4gwqAN
Cj4gQEAgLTEwNTUsNyArMTA3Myw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bvc3RfcGxhbmVfdXBk
YXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAkJCWFkbF9zY2Fs
ZXJfZWNjX3VubWFzayhuZXdfY3J0Y19zdGF0ZSk7DQo+IMKgCX0NCj4gwqANCj4gLQlpbnRlbF9h
bHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0YXRlLCBjcnRjKTsNCj4gKwlpZiAoaW50ZWxfY3J0Y19s
b2JmX2VuYWJsaW5nKG9sZF9jcnRjX3N0YXRlLA0KPiBuZXdfY3J0Y19zdGF0ZSkpDQo+ICsJCWlu
dGVsX2FscG1fbG9iZl9lbmFibGUobmV3X2NydGNfc3RhdGUpOw0KPiDCoA0KPiDCoAlpbnRlbF9w
c3JfcG9zdF9wbGFuZV91cGRhdGUoc3RhdGUsIGNydGMpOw0KPiDCoH0NCj4gQEAgLTExNTIsNyAr
MTE3MSw5IEBAIHN0YXRpYyB2b2lkIGludGVsX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRj
X3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gwqAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0K
PiDCoA0KPiAtCWludGVsX2FscG1fcHJlX3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsJ
aWYgKGludGVsX2NydGNfbG9iZl9kaXNhYmxpbmcob2xkX2NydGNfc3RhdGUsDQo+IG5ld19jcnRj
X3N0YXRlKSkNCj4gKwkJaW50ZWxfYWxwbV9sb2JmX2Rpc2FibGUobmV3X2NydGNfc3RhdGUpOw0K
PiArDQo+IMKgCWludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0YXRlLCBjcnRjKTsNCj4gwqAN
Cj4gwqAJaWYgKGludGVsX2NydGNfdnJyX2Rpc2FibGluZyhzdGF0ZSwgY3J0YykpIHsNCg0K

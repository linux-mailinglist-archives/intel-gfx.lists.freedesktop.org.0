Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BF6A94837
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Apr 2025 17:50:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3713310E100;
	Sun, 20 Apr 2025 15:50:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IadgFWeM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F72010E100;
 Sun, 20 Apr 2025 15:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745164242; x=1776700242;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u55yEwVe6z682QQrq/avu0BNWjDwN7Yvx9TrMOmcRU4=;
 b=IadgFWeMF/3LdiVOZdFygBczGNxeCirZWcYOb0FIgs/KOPBBXs7se/sQ
 UU+wWK2UJYbkS+uJUcVBfJ1FifLvXATDNDHphU6Xi+F5KgCD2jD7BlefX
 UjEh8B8obBH6H9xnR+mo0IwYGGfuTw6kPZILsvTyCD0hdBal20v6grhvc
 xPqGQAlQaA5nt3xB0Uhro/mtKgx/ozVNYJrfejjGmWXUUX0wiqOXnYgfG
 bB9lAH5/axFqk2+rV8S/+WzncktWMEUzf1aaQux0VLn2Po7ApP1VsixBQ
 4uuJh+BqJqnlNVk1F4iZHlGWhLgPhYxTZwzt/nllI+PwBO6QjcdaVdQIe g==;
X-CSE-ConnectionGUID: qdLYe7KtRE+MH+F1PT0DRQ==
X-CSE-MsgGUID: LDR+zaetRx6ZBSGbsALAAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11409"; a="46595209"
X-IronPort-AV: E=Sophos;i="6.15,225,1739865600"; d="scan'208";a="46595209"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2025 08:50:39 -0700
X-CSE-ConnectionGUID: SB433rRBTkmqca+fQ+vVdg==
X-CSE-MsgGUID: WZfSmkpwRh6m5U4v+AVrYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,225,1739865600"; d="scan'208";a="136678716"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2025 08:50:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 20 Apr 2025 08:50:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 20 Apr 2025 08:50:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 20 Apr 2025 08:50:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S8BlZc6oFhRsBBauZah++mYFPV5Zu2cl8U+8HzoSquKNyHOjEHpC5Z36bgQdzlA/LDx9/JENp2ccRXmmkxIkyxTBdmT62dteGIKeWRroApXFQ1B2W2vynEmj/b7tgR+QKjwgpn3pj6iBSLR/osypHP9cAi6x9Inzh3C4atB1IAg2k5xORTjB9YVM4ONv1PAxXh9qxDUNPx4GWHs/vD1fEUcQF+Nyj2vkPNyUZ0DWYm/duP8pkZpzpjmDVM3pzYh9kHwsKhAlgUftw9LiftfVuwa+vodqwvFl0STtlJQ1IwhEywYycOE4qIAbefM2sE3/MRDGojtXZnxz3KYcPAMpJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u55yEwVe6z682QQrq/avu0BNWjDwN7Yvx9TrMOmcRU4=;
 b=s/wsn4P70PhZJ2yF6xHWtskqBLOeA6tvY4Nbd8KswTmS6tn0BBWV0n5PVObuB+J1JGnRXt1LY+GcGfqqPTaq+rA6/HoLSdMTdeZWWVTC7CdxnL+w6FJwHX6gooBqFIc2ErlRRldwpAeV+CKAr5keU7p9kJlGgHegTG3h4AA4nD0rbvGhnhRifGSdGujFKz7LewVE6BhKGRVz+OStXOM+tE7co0UauSkv/8rsLFH33RCfvxmWO2R1wmPpjRtuY2KxiIKAHHbCiwjcRZ7JCSTmZLYFc74UNOmSeqnMJ5l9Qb0OORgFP4A9jG4cuUR/loUrZHrO64wZT7J9DMXgamAUEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY5PR11MB6536.namprd11.prod.outlook.com (2603:10b6:930:40::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Sun, 20 Apr
 2025 15:50:36 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.8655.033; Sun, 20 Apr 2025
 15:50:35 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Thread-Topic: [PATCH] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Thread-Index: AQHbr8X8SY5Z1DUMf0Cb+1KoOgHrhLOr2ykQ
Date: Sun, 20 Apr 2025 15:50:35 +0000
Message-ID: <IA0PR11MB7307ECC591508B0B1B8AB50BBAB92@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250417182356.169593-1-jouni.hogander@intel.com>
In-Reply-To: <20250417182356.169593-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY5PR11MB6536:EE_
x-ms-office365-filtering-correlation-id: 9fb7e052-6abc-4e54-86f8-08dd8023173a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZmxOa2JxbE1RZjl1NjhNdU9PWWVkYy9ySzRCYTRNNmNrVVAwbkxHdnVReEJs?=
 =?utf-8?B?dTYrUlAzdU1uK3RtQndaNDQxWitwenV4WUJJdW5UOVdORnQ2c21KcWZXWnV1?=
 =?utf-8?B?Q3hPZFN2M3NqdFJCSTFZZXFXUTc1N1hPcDBmcGVXNzNFUUIvUGtJcDFvSlor?=
 =?utf-8?B?cXdXbGt4RWI5WFdPVnRJaWFrMFRMOTN6WWE4TlZQNDZvZVlZSmJDc25yRVpE?=
 =?utf-8?B?b0toSDRDaWd1dFVINW5KQWhkVlN5dTg3eGlVaE9oQnUzTjJLUytGS01hbVpR?=
 =?utf-8?B?ZXRianMvejF5VHVYclVpc2czR3hvUHBJQzVMQXFmWkowdFg2dW9pN2VOZEds?=
 =?utf-8?B?YWdhUWZ0eUJJckJoTWlzeXJFMEZ5RGVFdHVwR0oyb1E4THJUb3ArT0xtSnRS?=
 =?utf-8?B?K0JQaWhPV2x5UFdXUDd2bE9sSjhhRUtmcitXUGl2T2lGM25rTlZ6djJXdFZz?=
 =?utf-8?B?RndySXZoNldTWG5tdmFvUUhNWTFPRjBKZXZ1TEZ3ZVE5QjlkRjF4aXBHMklT?=
 =?utf-8?B?aDdlVkc3WDc2TlhZQkZZRVhmenNCOHo0b2RWa1ZpN21vQklrZVlKTmpmcmV6?=
 =?utf-8?B?dEc3cStmL3ZNR0hLU2U1UDdmMjFUb0lYQWZuT1VqSGh6bk8yMjJidzYwaXU5?=
 =?utf-8?B?Z1lZYkZGcVBGdXFXQkNYdGhVanRwcW1rSi9xSytxOEFzWm5KZFpOdXc3M3dK?=
 =?utf-8?B?OHVDallhQVNzTDNzR1FvVk9JejVmWVhleVN3L2pycjJPb0s3U255N1NiRHVH?=
 =?utf-8?B?RlhEN1ZyaVN5NHJYeGtLOU5CMEM5ZzlzK2dZeTBlYmpWYkl5bUtLanVEQStL?=
 =?utf-8?B?YWIwa3l0aisvMEtBalRKN3NQb1FxSWdiQWYwVTNJQjhBNjRBbjRmQmRKYXBR?=
 =?utf-8?B?T3pLRlpjRGpjZ3RWYWcxNWJUcTQvcmFtMTAxK2xYWnoyNTFubG81NE1wckZC?=
 =?utf-8?B?Y3NIbnM3RjIrclJVeFFweVcyalFPQnhTL25XZjZpTTNFQTg0YXBwQXFlRjlz?=
 =?utf-8?B?TVJmRE5kOEk5bTlvN01GeGVpVklhUkt5dzlTWXN4aEFxd0p6TWNaOVNrV1Rk?=
 =?utf-8?B?R1k1ZkdTcDBnWlk4VnlhelJiV01iWjE2Q0pxejZabDdQVGZTL2dsd0U0dm41?=
 =?utf-8?B?MC9yVmwxa2Roblk2NzBLWjluZEp3VENjRzlkYzBLMkJRNVZZUmErZmJhdTRI?=
 =?utf-8?B?WXFOdnVSRDhtZ1hmSXVVNTRIN0x5WXd0MW5WSDJ5VklkZm0zbm1XTG5NKzYw?=
 =?utf-8?B?Z21LYTBNcVB4dExVNEEvdW95UnVHbW1kZzdIbzBMdjZDUGxEMjhtZWp4UEtY?=
 =?utf-8?B?UE5Udlg1bldudHJhcDNwZjRxamVMa0p0NzlLRGpBSWVWckt1V0tVQ2lsR3lh?=
 =?utf-8?B?eG1zTTFlSlpreGpUc2lETFNEZ3p0WjMvb3hSMEk0dEtuQUUwMjk5eUZEUkV6?=
 =?utf-8?B?MENWM1owTXh1THJWb0FTaVFrTzkraHJvTDZ1S0FkdVprU2xvT3VMYUVQU3Bq?=
 =?utf-8?B?QWxkRk11bTNBS3VISWx6S1k3WFRBakRWMUpvU0x2a1p0YnpRQlZzeGlWd0Fk?=
 =?utf-8?B?OXlucFErU1VNVWdwandUbVNzK3VHWUw0dXZIRjhPOEVBdzF5eGVDUDJFendF?=
 =?utf-8?B?NnZyVFdOdTJsZGxGQXhNdkphSDU2V0lRaTB6S0hpSSt1Vk80TzJ0U0QrektZ?=
 =?utf-8?B?RFlHMjA4RWxYeHlONFliTkxZeW9IVkZhZytUOWtSdmdsWFlaSlpWUjd4SXVr?=
 =?utf-8?B?dHV5SEsrV1k3Uy85a3ZES2MrdnJZRzlxSkVnK3pjTnZneDN6YnNuWEJEMXkx?=
 =?utf-8?B?UlJJbVJNZHY5QWxqZkQxL010d0ZLNGhOZ2dGdWF2d2w2QUorS3NVWFFDYU9K?=
 =?utf-8?B?T1Ruc05oMDVxcFhvU1crelVHaC9UWjNhaURvZTMxZk40ZHlpZ3J5TnRRd24v?=
 =?utf-8?B?aGFmWDVSMVRQZzFqZ25GNVRndWx4MjROWklmWFhkWk5zd1RMbVZZbURPc3c5?=
 =?utf-8?Q?CLDyER5+BUmBH9mJ8MdxbdnVO7HCh8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tk9LNUIxeGxiSDAyMFJzYms0Y1Zvci9DSnF0aGxldW53TzgzMnNmeFNqTDBE?=
 =?utf-8?B?ZU4zUmpkSERCYnlCOStkZ2xGcndWY3Z0ZCswdER5ZDB0a1RGL1hwVm9EV1pT?=
 =?utf-8?B?eWtOK3FyWHBsdWVoeFY0QTFZTEJ1MzBWNHNkNU16VU5EVHVpR3RIdDBpb2Y2?=
 =?utf-8?B?alNYTnZ2MTVSVmZWMG5sT2RMaW9OVGxHbmNNbmNGYXBBeG5oNGtHQ3IzR0c3?=
 =?utf-8?B?RXJFZXVkTEtjbHI5Sktrd08vZGdtdzBjT1hXTFZlREVSdDBVenB6V0VPaklF?=
 =?utf-8?B?WXZZbDZQMVE3aWcxVGNML0k0VXlYZ0pGRVo1RUFSTVFjR3Vud3BDczNMZENS?=
 =?utf-8?B?bExudFJHcHA0a3V4aW5VQ0kwYU14VG9xTjZFdXp0SGhJakpwRStJKzJsY2Vu?=
 =?utf-8?B?MjhBMFpOcmh3NVNqcGZUM3V6c0tQRVFWNWZVdFZFdmRJR2NVMVFCY1huU3JG?=
 =?utf-8?B?aHJybUVWY1U5OWRmNUV1MW5jQTJaTTZzbmI1eDk5MjZVTTBMK1VKd0hHNXpP?=
 =?utf-8?B?UTNaL0pDQi9qNmdEalZhOFhQS01wRnlmTU9GV2toaWFZbXlxU0dvdUtiN3Zl?=
 =?utf-8?B?ZUpQWlpYL2pSTWFpZzUydG5QR2N0aW1vbWt1MXc5d0dCSzNwRDZYNHhnWTV4?=
 =?utf-8?B?TXFyTkNFSVRZNzRFSDVKbGVRUkFHVFpxV2NrbUF0eldZVGs0RjAwS21hRG9L?=
 =?utf-8?B?ZjlnelpRRW05UHJWbTFGNG9FZDBHRUFvd3ZZcWJJS2tpYVZYYXVRNU80ejZZ?=
 =?utf-8?B?Q2x0c1U1ZWFEMzVOdGRuL2ttQmFZMGg5eHRMSEdHWkt6bUZzZmRNMUQ3VUpS?=
 =?utf-8?B?Rk40NlpkVXlSRk9aVzhoc1JMdm5CQkdBdDJLTExFaWxOeEY3cDhLYmltbUNP?=
 =?utf-8?B?bFN3WHd5bU5IN0pYbmhrbWxmUzlmUDVvbUJraDhiY3AvYm1jZFNHYmNrRVhZ?=
 =?utf-8?B?azBSRThVL04vU01wU3ZldFp2cXZnN014ZUtxODJ5US85Umw4RTNMVENVRGF1?=
 =?utf-8?B?bXJ3bUt4QmdvSzAwUXQ4WklLL0d6N2xSb0V1UENIWHF5cmJMdWxLSjRURHZR?=
 =?utf-8?B?ZVhINCtaK0VmVFU0QVJEOUY0MzdnN2J1eHdNNUFEanZZUERpdGRsdTdQWG9k?=
 =?utf-8?B?TURKVGZmVTNwNEV1S1lYT1loUDhZV0RwVTVXWitLcTUxeEJqeEFoWUJWV2dJ?=
 =?utf-8?B?bE1wOG9QYjlHR2lVSTJGVm02TmhqbENQQVB3NXhOMTY1VVdRZ1huWE5nRlV6?=
 =?utf-8?B?bWdaSGxhanVYRkxCTllKbmgrQm5ZSDRVR2xGLzllZEJpRGVNU3J1NFFOdVVN?=
 =?utf-8?B?dDFiRUUvN3YzTWlXRnNmVG1KQmltazVFMlpLaXE0THE3TjNqWEZla1h2amFP?=
 =?utf-8?B?Q2ZrcmMzWHNWeVBvTWtPekpRRzFtMnVnekV3a2ZCWmM3am4weWpzUThTTEpB?=
 =?utf-8?B?UDc3VmNHK1NFYzR1UFMyeFBaTXhFN2tBRU9PTGhJa29VYlBEdnBIam9Yakpn?=
 =?utf-8?B?UFFyRC8zYWY2R0xyZVg0Y2ZKcS9xS0JUV2J4OHZuK2IwUVdHUjlPTHFCMGF5?=
 =?utf-8?B?ZUJVNHNxTTc2WXl5RDhzTFZjK0xreGhheUVUM1Zhc3k2N216ZlhsTTJ1SUtm?=
 =?utf-8?B?cTJoNmFEVE82d0t1TEh2K2cwaG9OWVBadGFpNStSRVdYRXc4aG56VVI2Tlls?=
 =?utf-8?B?OVVjaFVTdU0vMGFyaHMyLzdHZjkrTFdJZTR6UzJOK2JIbit3SENTZVV5SUZV?=
 =?utf-8?B?c1MrbU13K0pFMEFNbkhSTHNESlFxanVmNzh2NlJMUEczdkhoTyttU1R3TUpP?=
 =?utf-8?B?RnJkT0JHQnlpQjduMW1NS2N1Z3ZndFdxWW40SFdYbENFYUVuTXZQRTVXelA2?=
 =?utf-8?B?WThWK0RheHVGNXNjSTZzNjFJakdNZS9hSThWU0N3M0s4S2IxL3o2dE94aGRQ?=
 =?utf-8?B?c3JtamZ0RytxcWJpbThHODFNVkNucjJ4WXVqOWJSVmp4bGdOWUprdkgydXhQ?=
 =?utf-8?B?amZKcmJ1SkxZVWJlLytpM3gweFUwNzhpNk1FZzdncDdFa3djRVlQdklVbG0r?=
 =?utf-8?B?ZHlDYWdWMWdjWE15TWgra2hEOEgvSXhCYVkrSU5hTlFUSXRkcFpSdjBua0Fw?=
 =?utf-8?Q?g09VouzIRXXX3LkmGKlIOheJn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fb7e052-6abc-4e54-86f8-08dd8023173a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2025 15:50:35.8066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tK4sileWQdJ/uhvUX2M4gRVRSVARyb24Tw1JXaIuam1KSay9flCVokrMUD4FcJK9xpB3tyhBlc0owl0rPC6hoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6536
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBUaHVyc2RheSwgQXByaWwgMTcsIDIwMjUgMTE6NTQgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogRW5zdXJlIGVub3VnaCBsaW5l
cyBiZXR3ZWVuIGRlbGF5ZWQNCj4gVkJsYW5rIGFuZCBWQmxhbmsNCj4gDQo+IFRvIGRldGVybWlu
aXN0aWNhbGx5IGNhcHR1cmUgdGhlIHRyYW5zaXRpb24gb2YgdGhlIHN0YXRlIG1hY2hpbmUgZ29p
bmcgZnJvbQ0KPiBTUkRPRkZBQ0sgdG8gSURMRSwgdGhlIGRlbGF5ZWQgVi4gQmxhbmsgc2hvdWxk
IGJlIGF0IGxlYXN0IG9uZSBsaW5lIGFmdGVyIHRoZQ0KPiBub24tZGVsYXllZCBWLiBCbGFuay4N
Cj4gDQo+IEVuc3VyZSB0aGlzIGJ5IGZvbGxvd2luZyBpbnN0cnVjdGlvbnMgZnJvbSBCc3BlYy4N
Cj4gDQo+IEJzcGVjOiA2OTg5Nw0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDExICsrKysrKysrKystDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jICAgICB8IDE4ICsrKysrKysrKysrKysrKystLQ0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
aW5kZXggZGI1MjRkMDFlNTc0ZC4uOTQxNTZlZmE1YWE5MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTI3NDcsOSArMjc0Nywx
OCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXRfdHJhbnNjb2Rlcl90aW1pbmdzX2xycihjb25zdA0K
PiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Yw0KPiAgCX0NCj4gDQo+ICAJaWYgKERJU1BM
QVlfVkVSKGRpc3BsYXkpID49IDEzKSB7DQpDaGFuZ2VzIGxvb2tzIGdvb2QuIEJ1dCBwZXIgQnNw
ZWMgNjk5ODUgbG9va3MgbGlrZSB0aGlzIGNoYW5nZSBpcyBub3QgYXBwbGljYWJsZSBmb3IgWGUz
Kw0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0t
LS0tDQo+ICsJCS8qDQo+ICsJCSAqIENvbW1lbnQgb24gU1JEX1NUQVRVUyByZWdpc3RlciBpbiBC
c3BlYzoNCj4gKwkJICoNCj4gKwkJICogVG8gZGV0ZXJtaW5pc3RpY2FsbHkgY2FwdHVyZSB0aGUg
dHJhbnNpdGlvbiBvZiB0aGUgc3RhdGUNCj4gKwkJICogbWFjaGluZSBnb2luZyBmcm9tIFNSRE9G
RkFDSyB0byBJRExFLCB0aGUgZGVsYXllZCBWLiBCbGFuaw0KPiArCQkgKiBzaG91bGQgYmUgYXQg
bGVhc3Qgb25lIGxpbmUgYWZ0ZXIgdGhlIG5vbi1kZWxheWVkIFYuIEJsYW5rLg0KPiArCQkgKg0K
PiArCQkgKiBMZWdhY3kgVEc6IFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1kgPiAwDQo+ICsJCSAq
Lw0KPiAgCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LA0KPiAgCQkJICAgICAgIFRSQU5TX1NFVF9D
T05URVhUX0xBVEVOQ1koZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLA0KPiAtCQkJICAgICAg
IGNydGNfdmJsYW5rX3N0YXJ0IC0gY3J0Y192ZGlzcGxheSk7DQo+ICsJCQkgICAgICAgbWF4KGNy
dGNfdmJsYW5rX3N0YXJ0IC0gY3J0Y192ZGlzcGxheSwgMSkpOw0KPiANCj4gIAkJLyoNCj4gIAkJ
ICogVkJMQU5LX1NUQVJUIG5vdCB1c2VkIGJ5IGh3LCBqdXN0IGNsZWFyIGl0IGRpZmYgLS1naXQN
Cj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBpbmRleCBjNjU2NWJhZjgxNWEx
Li4zYTI3ZGVkNDVlZTA0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zyci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdnJyLmMNCj4gQEAgLTQyMiw4ICs0MjIsMjIgQEAgdm9pZCBpbnRlbF92cnJfY29tcHV0ZV9j
b25maWdfbGF0ZShzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAkJ
cmV0dXJuOw0KPiANCj4gIAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTMpIHsNCj4gLQkJ
Y3J0Y19zdGF0ZS0+dnJyLmd1YXJkYmFuZCA9DQo+IC0JCQljcnRjX3N0YXRlLT52cnIudm1pbiAt
IGFkanVzdGVkX21vZGUtDQo+ID5jcnRjX3ZibGFua19zdGFydDsNCj4gKwkJLyoNCj4gKwkJICog
Q29tbWVudCBvbiBTUkRfU1RBVFVTIHJlZ2lzdGVyIGluIEJzcGVjOg0KPiArCQkgKg0KPiArCQkg
KiBUbyBkZXRlcm1pbmlzdGljYWxseSBjYXB0dXJlIHRoZSB0cmFuc2l0aW9uIG9mIHRoZSBzdGF0
ZQ0KPiArCQkgKiBtYWNoaW5lIGdvaW5nIGZyb20gU1JET0ZGQUNLIHRvIElETEUsIHRoZSBkZWxh
eWVkIFYuIEJsYW5rDQo+ICsJCSAqIHNob3VsZCBiZSBhdCBsZWFzdCBvbmUgbGluZSBhZnRlciB0
aGUgbm9uLWRlbGF5ZWQgVi4gQmxhbmsuDQo+ICsJCSAqIFRoaXMgY2FuIGJlIGRvbmUgYnkgZW5z
dXJpbmcgdGhlIFZSUiBHdWFyZGJhbmQNCj4gcHJvZ3JhbW1pbmcgaXMNCj4gKwkJICogbGVzcyB0
aGFuIHRoZSBub24tZGVsYXllZCBWLiBCbGFuay4NCj4gKwkJICoNCj4gKwkJICogVFJBTlNfVlJS
X0NUTFsgVlJSIEd1YXJkYmFuZCBdIDwgKFRSQU5TX1ZSUl9WTUFYWw0KPiBWUlIgVm1heCBdDQo+
ICsJCSAqIC0gVFJBTlNfVlRPVEFMWyBWZXJ0aWNhbCBBY3RpdmUgXSkNCj4gKwkJICovDQo+ICsJ
CWNydGNfc3RhdGUtPnZyci5ndWFyZGJhbmQgPSBtaW4oY3J0Y19zdGF0ZS0+dnJyLnZtaW4gLQ0K
PiArCQkJCQkJYWRqdXN0ZWRfbW9kZS0NCj4gPmNydGNfdmJsYW5rX3N0YXJ0LA0KPiArCQkJCQkJ
Y3J0Y19zdGF0ZS0+dnJyLnZtYXggLQ0KPiArCQkJCQkJYWRqdXN0ZWRfbW9kZS0+Y3J0Y192ZGlz
cGxheQ0KPiAtIDEpOw0KPiAgCX0gZWxzZSB7DQo+ICAJCS8qIGhhcmR3YXJlIGltcG9zZXMgb25l
IGV4dHJhIHNjYW5saW5lIHNvbWV3aGVyZSAqLw0KPiAgCQljcnRjX3N0YXRlLT52cnIucGlwZWxp
bmVfZnVsbCA9DQo+IC0tDQo+IDIuNDMuMA0KDQo=

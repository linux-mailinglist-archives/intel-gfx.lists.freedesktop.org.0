Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E539C8D1466
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 08:30:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D656510E303;
	Tue, 28 May 2024 06:30:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cAoUJ3Nj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8213E10E1E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 06:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716877804; x=1748413804;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SIoUwoPR8ZXoEpv5lXorK5gyjj35gYaYUPCKIvk5C38=;
 b=cAoUJ3Nj2XUHDop/cSEelmxApq8jjJv8oKlG//9rPc+y+Sj98wVQdqKm
 R91+WiLDyYWjFT69eFY4kJjVe3ms8ZrFMm9J7gsF5uMz/JrW6daL1PwzA
 OVr0+PTgMObiHzQV/9S/8WbVQDNf0A8JTx6e8LF8jMl8Q6hNF4znrrjdr
 3488dKhHYZ2pWWyoRpeXXfgSMqXTmtVRSeOfiDmETXktVttrcKLjvji8k
 G17e9SVnf42qjPSe+fUegrPBGw71jWobeAw4/Jn9+JgecWGPWvAOe4sZ9
 RorSnTRUGo3ST6rgvQ1QWsO9CJrhOx81qr+gijOZXDLEMtoi1zPbJ5au2 g==;
X-CSE-ConnectionGUID: tuRiAltiQ1OnfBLb57yd7w==
X-CSE-MsgGUID: xkAvpbjVTuyWD437+2KrVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17035621"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="17035621"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 23:30:00 -0700
X-CSE-ConnectionGUID: qGJQ4xO+SkeEQbNnvej2+g==
X-CSE-MsgGUID: IyKyebCmRMqgFPcq+tuZGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="65788107"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 23:30:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 23:29:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 23:29:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 23:29:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 23:29:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aTpAts4n/4wtfeBOGD7nbqc57zW2NJqVJ0i/D09gAl/hgtCOn37pZu7i+lCDxcglMKp8mVqgJWEWK/mk0SD4WCKCr2xoURSH2v3uZEhce9DcjaWB/d50krQh6T22nJK/D+iqx6LS9EsNkq47BIPEsD9l9Y9vZ12nZegydgs2/DZ2AWWRTXeB/3s2Fmw4dOoTjH9WinZrvvQV2m2CvmJPiFjMYpQ/ci6U5Jtgo6PDYOlDkTz5rLdG1Ux6KRjl2njZd2uan64dcSyy7Cxuvejuhq3AWe47i0WzRfa2FGubzqobqhA8pLIJPjnux/pxnCbCMGO2R2i0/0czk+9PEXPt0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SIoUwoPR8ZXoEpv5lXorK5gyjj35gYaYUPCKIvk5C38=;
 b=mkHcEQ2MJBZhwV/mOYCotTUTuTLH6mR21d9UPa1jP8jkb2ON0EDcmpqjfMIXX/hBV1cOIrIVZASawjtBg89eJ+w169HqsIzlZHEc8DN2FxRA/B6Z+59Rc2mYg+LSK4flVPvhYVIZ63gOa8/GHP5xpoo6Iau2f5nrfxWWrtSYzEIUsqgYGb6S2AJXCbt2AqJhIXkx3zQX+Ep63qdYLZLk43tu9DKXShObKORX71nsNBkHo1sHfF2PCL0Bvw1uelKq6etWLRZ2Z/MGHuPQpy4wBypwV/B41ovcGF34C55rSz/OX8cmwATrCPbUVxIkTSoJ9EQD/PppkJhCQ5QhAicg2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB4974.namprd11.prod.outlook.com (2603:10b6:a03:2d6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 06:29:52 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 06:29:52 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v3 03/20] drm/i915/psr: Move printing sink PSR support to
 own function
Thread-Topic: [PATCH v3 03/20] drm/i915/psr: Move printing sink PSR support to
 own function
Thread-Index: AQHasAawqeM1irHnj0u1I5xz2KrV4rGsMMdg
Date: Tue, 28 May 2024 06:29:51 +0000
Message-ID: <PH7PR11MB598160F1475194DDA33B2569F9F12@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
 <20240527072220.3294769-4-jouni.hogander@intel.com>
In-Reply-To: <20240527072220.3294769-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB4974:EE_
x-ms-office365-filtering-correlation-id: b3f09eeb-bc2a-49cf-fdeb-08dc7edf94d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?a1RDUUYySHJaU2Y1V1Qrelk5TlhnU1NLUkxBV1lENldtUzFYSXdRNjZyQ1FH?=
 =?utf-8?B?dnhqUSt6OHhPSE1uYlRiWXF1b0diNVFveU8venlPaTBqUGkzRGxjaXFzbkZH?=
 =?utf-8?B?MFBiK1EvVkk2d0JTREJ2eTJhdWZGdU96Z3NvMUEyejdWMkhsaTVTS2JieFB5?=
 =?utf-8?B?Y1pLY1o1YnMyck9PN3BZYUMrSEVaRHpaT1Q4ZDc3KzUyVUdrUi9UbFZ4aTlU?=
 =?utf-8?B?OW9NZUV6M3M3QTVIZndkZGpGSEl6a2V0NW90MVlnMGxnVGhsUmhuc01YUGph?=
 =?utf-8?B?TzUzMk43Ym56ekVYakQ4cFZraFJRS0VQeGlxNTd5eVovaW1jZ2dwckVvZ0lB?=
 =?utf-8?B?aXdTcU9UM3VlNGVPTWxWa3gvSWhQMTY4dVp3UzBsNmI2OXNuTTQwTG1ZZThZ?=
 =?utf-8?B?aGdMdFNWVFl0TzVudWYvdUpBOWcrMTBZTnBMMGZDcnNNUmpRM0lvMDlUbU5a?=
 =?utf-8?B?ZEpDejFUcHdKQmtleDYvVGVha0tkd0ozVXhraXo5OThiY2pqVDRkQmJjVVlF?=
 =?utf-8?B?S0dTb3JkRUYrelY5VzI0SktwSStlcHZBYW9kTkp6Q1IySmtSbzFzenpVanNM?=
 =?utf-8?B?ck8weEdpOTBSdU0rSk1DK3JwYnlwRmlEbzRlR0s2UTBHdk5qVUhrOS9yYjAv?=
 =?utf-8?B?NGVXS3FtYUJNaVVZaWppdEtCcm5qUFlTSGZNSm4wdU8wZWxNVG8zSFVZK3NI?=
 =?utf-8?B?bTFWK2w5YnFhSTBJOGROVU5WWlgveWFYOVZ1TzBac3ZkeDB1N3paa0VvYSti?=
 =?utf-8?B?T0l2L0hScHVCVTBtaTl3ZWhQTnNzanFnYnhHeCsxY3lmNDlOZFBBTTNrU21X?=
 =?utf-8?B?YnYrbGh6U0JuelZLdzEzbEN4K3RDSlQ5SER5NWN2L1ppNGc3U2tEN29SOWNB?=
 =?utf-8?B?bE1XdEc2VElpL2lYbDJnL1RFOXM4bXRQZk1LQXptU3BGUlhxNmNYaE10aDBQ?=
 =?utf-8?B?cnBrOGFlR0NvVVUwSlZDTGZidkRrV1pPL1RKQlUrWndmVkNCdG41MnJnNlhu?=
 =?utf-8?B?a3hTZHM2UDNjQ3ljTnNNaUVZQk5KZ1l4RS9zeTJkNXoxSUxwRTU3WFdpNEhu?=
 =?utf-8?B?LzFIOUl1aVVtajl2T0FIZngvVXp0cHF2cUcySGs0Z1FRblJjaWVobVN2Ujdv?=
 =?utf-8?B?cStLdHd4S0F5N0FPR0wxVWFuenZ0K2JXZ2tEckFHK252M3Vxemd2Y1dRWmZt?=
 =?utf-8?B?bFpiSVF5VzFqS3lYdHZKVWtiS2I4VWlvOVFIY2lzYnJ3ck56WVVXVGMrbXdB?=
 =?utf-8?B?aEpKMTdWSzNqWGkwNnYvaHc5dkwrV1ZYY3FmeVQ4d2c1MUc4RzBzRFVkaFM5?=
 =?utf-8?B?c2xQYXFHZkNIcW1XK0oxYlppb1NxeVlPV0MzQlRxK0kxTGVSWWNxVUt5QjB5?=
 =?utf-8?B?blNrQTBubU1Tbnczb1Yvbjg4VThhT0Z2cmVHcEpydGthb3ZsTXhqZDhINlZr?=
 =?utf-8?B?ckhxSVRBeFBaUVd3emZQYjZkNDBIREJkL3FwcFNGTmdVZ2tZbFFxbzVCVmRG?=
 =?utf-8?B?M0FiQlB6VDdJaWF6YUpxeWRhRjd6L3VkQUh6aUhDUEVBYWJReURUa0JMdkR3?=
 =?utf-8?B?SkpldVI3SCtaQ21pTWpyOE9VdVloSzQ0Skd0TlpKOTYxYWF0S1hyZnZ1WWpS?=
 =?utf-8?B?TFF5aVV4dVRaY3Jhc295OCtNbHZEMXpia1FKQnRHNURhbHAxZUpndFlrNkUy?=
 =?utf-8?B?aDVEVkVGRWZhSnFvTEhUSUdNVHltdG9IUUNBSHRkSHFFaUN6MUdUQkhLWDVh?=
 =?utf-8?Q?QZ+bGkU7FDXWKDuOI3spDsoL9ZI8rdwwlkGiEL0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2ZsRndrSmMrcWRGektUTFpPTDU5Zk8zaDVJL3hNbFJrK2VpNkhkYVRHcnFT?=
 =?utf-8?B?Rks5K0gxZ0Z5dzFtaTZwRUlZekR2cVBoRjErb3J5UlorQzFNUTg4eDdocVlt?=
 =?utf-8?B?ZHpaMEN3bUNyR05yRWU4dHJoVHhYWVVrUnRWaFNwWG55bFdOWDFERlFDdkhO?=
 =?utf-8?B?NUJES2crRVZacU1NRmNrbjlEaXRORDFpbmVkWlRVQU1pMWFENnh1UncwTjRX?=
 =?utf-8?B?eisrVzdSalE5bU01N2l2c3I2Q1NHeGlheTdWOVZVTUNDcGw5Rmd0QjhNQzV4?=
 =?utf-8?B?K0hOLzZtc0oxQjJkUDBJeHZxOHAweld1SnJJYm5nVEVBQ0xZSGxwWVJsVEwv?=
 =?utf-8?B?eEthbTNWRWV2ajVrN3Z6cmh6WjlWN1dxSUhIajAycjF3amlZMzVHY2JSY0Yr?=
 =?utf-8?B?NmZMNHNhVlZlNms0Y1RqVllYOEJaRmZIMTVjekFNMFRpWDNJUHpRTHI3b0U5?=
 =?utf-8?B?V0JwUVcwTm5SdjZqenNGWkxHRDR6REJnL3FBdWMzQVdvZlI2a245N2FNeWxW?=
 =?utf-8?B?RllQZ3JtV0F2eVhON2orbXFkZ3UyTDE3RHVaTXNXanFGUlZ2MnhxVGhlc3Vz?=
 =?utf-8?B?dEYzaTVhK0pXWVhCUCtZa3ZuWDFVSnpQbkZqMkNEWlRwR01xK3R4VFE0ekxh?=
 =?utf-8?B?Q2NIR09PT3RHYklvcVVOM0FFRE9xTGpCWHZwaENKS3E4Qlo2UVBiWHRUcU4w?=
 =?utf-8?B?V2ZJUEZnaGpCdE5oTmlzRFBGMjRVVmwwc2tHK0RsYmsvRkQvM0RZL1N3WlVY?=
 =?utf-8?B?NDIzbG5pZncxMW52aE1INkdoUzI3aDhDMUhRVEF2UERGczh0WkRuUTBpa3RL?=
 =?utf-8?B?L3ZOL1ZHTWVERmhXMlhSY0JHdVI2bmQ2M1JVSUdmeUQ4NFVtcW00aFBsdDVa?=
 =?utf-8?B?MVIxWjJxVVFFYzFXbnUxY0hTWXF5REs5czJsNU95dHRMc3J0M3ZodVNHZ1pW?=
 =?utf-8?B?TEhKUWRmaXdPS1dGWUtGdEp2RU8za3QvQ2lPMExFYytqNnNOLy8ySUlYWmxC?=
 =?utf-8?B?ZENuTXVXdU5Qc0lhZ2lrTzdtalArNnEySjZLYXEvbktQdlNNdUhqWFhCbExY?=
 =?utf-8?B?OG5wSWNHS1VURFY1dlNBMml3elBHR1ZjbXg2ZTd5WU1hbTZSM2xVY2FUSzhr?=
 =?utf-8?B?VHFXQ2hDdE8yVlpydG5IcFUxU05Ec09KWnc5RG5mUGczMWZEaG9pb2FUU0VM?=
 =?utf-8?B?bXo5TlJ0RlAvcFpxd2F4SGZYM3RmWGRYREJ3UzhiRFkyNzB6ZXluUW02SEd2?=
 =?utf-8?B?QWt6eHVKT1BLNlEzU3RWWkFpV3dmMVZ6ZDZ4dU9DNC9BS3UyQVViVzNlUndo?=
 =?utf-8?B?NklxYVVGc0U2NUtrckNMaGwyWURJbDZ6a0VlK3BvUnpPTStMK1NiZXpTRjlZ?=
 =?utf-8?B?MEgzMlcvcU9jTmltaENDVWQ0ZjkyTDhOV0hLZk5VUDhQV2R6N1pGVTBXQmNv?=
 =?utf-8?B?VUJoc09WdTI5d09kbStHY1c3OWJxanBLZGs3NEs5TzNQRlRPREpyMUJwL1dl?=
 =?utf-8?B?ZVd0UGxUUmNGOUlPZERwdTFrOWNFeVZ3aVhISkZQc2hVSUdVYkNKbkdYMmpr?=
 =?utf-8?B?WDhEZWhROUFpUDBzWjZiL0ZmS3h2VUpBNklSclNjalZhZWg0VzZSbHdvTDRp?=
 =?utf-8?B?blJKNk84alRHeFRHQ3BGeExuWTNWQUN6NmNBdVJrY2lVL0EzbzN4VlArYlZY?=
 =?utf-8?B?S205c2g3K0VQaTdsallzMzRSdDR6UmJORGNxTVIwTGRrOFdHeXllZDg5M0Qw?=
 =?utf-8?B?a3AzdWdLZnBtaFZQclUvUUYweUhPL2pzUUZoSkFRMC9vY21YSE9HZzZUZ291?=
 =?utf-8?B?VHNkNVZ2Z3F1OUY5UUdtSVdNd2F2dG1FNnRBRm0vUnk1LzdTM1RnTTdNbS92?=
 =?utf-8?B?a3N4ajlXNzBJYUJKYUZzWHMwd1YvZXhnci9wUi9vWnBEaGFLZkRicVlpTU1H?=
 =?utf-8?B?QjQrUTdsTmlTdWpMSTlpcU40NG43VGEwRGpONGFZV0E0OEp5WW45ZlpMOXlL?=
 =?utf-8?B?SE9CQ1JuRE5WSlZmd2V6YXpZM0tZZHhYVmJHZy9hNEFLOTJmdlJPTHhXOHZh?=
 =?utf-8?B?eWFhdWRiUlBOVTRDQlcxNjllNk5wUlc4V0RQcVVFaVdPREp1aDV5dXByeDN3?=
 =?utf-8?Q?JNO7ItCu8I2J4QXOra21jbE98?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3f09eeb-bc2a-49cf-fdeb-08dc7edf94d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 06:29:51.9431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kI9hn0zF6jw9YqbqBQHSWh1eu4Fmlht3gsE9sdqN4zTH1dBBV1HebsuXmDDqWu4VSaZA1sPmy+4Or3h8FHeQKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4974
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWF5IDI3LCAyMDI0
IDEyOjUyIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
YW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4g
PG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDMvMjBdIGRybS9pOTE1L3BzcjogTW92
ZSBwcmludGluZyBzaW5rIFBTUiBzdXBwb3J0IHRvDQo+IG93biBmdW5jdGlvbg0KPiANCj4gaW50
ZWxfcHNyX3N0YXR1cyBoYXMgZ3Jvd24gYW5kIGlzIGFib3V0IHRvIGdyb3cgZXZlbi4gTGV0J3Mg
c3BsaXQgaXQgYSBiaXQgYW5kDQo+IG1vdmUgcHJpbnRpbmcgc2luayBwc3Igc3VwcG9ydCB0byBh
biBvd24gZnVuY3Rpb24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFu
aW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIyICsrKysrKysrKysrKysrKy0tLS0tLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDA4ZDNjOGM4MTU4
NS4uOTQzZGUzY2EzOWMyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gQEAgLTM1OTAsMTUgKzM1OTAsMTAgQEAgcHNyX3NvdXJjZV9zdGF0dXMoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gc3RydWN0IHNlcV9maWxlICptKQ0KPiAgCXNlcV9w
cmludGYobSwgIlNvdXJjZSBQU1IvUGFuZWxSZXBsYXkgc3RhdHVzOiAlcyBbMHglMDh4XVxuIiwN
Cj4gc3RhdHVzLCB2YWwpOyAgfQ0KPiANCj4gLXN0YXRpYyBpbnQgaW50ZWxfcHNyX3N0YXR1cyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICtzdGF0aWMg
dm9pZCBpbnRlbF9wc3Jfc2lua19jYXBhYmlsaXR5KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ICsJCQkJICAgICAgc3RydWN0IHNlcV9maWxlICptKQ0KPiAgew0KPiAtCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiAtCWVudW0g
dHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsNCj4g
IAlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gLQlpbnRlbF93YWtl
cmVmX3Qgd2FrZXJlZjsNCj4gLQljb25zdCBjaGFyICpzdGF0dXM7DQo+IC0JYm9vbCBlbmFibGVk
Ow0KPiAtCXUzMiB2YWw7DQo+IA0KPiAgCXNlcV9wcmludGYobSwgIlNpbmsgc3VwcG9ydDogUFNS
ID0gJXMiLA0KPiAgCQkgICBzdHJfeWVzX25vKHBzci0+c2lua19zdXBwb3J0KSk7DQo+IEBAIC0z
NjA4LDYgKzM2MDMsMTkgQEAgc3RhdGljIGludCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFf
ZmlsZSAqbSwNCj4gc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlzZXFfcHJpbnRmKG0s
ICIsIFBhbmVsIFJlcGxheSA9ICVzIiwgc3RyX3llc19ubyhwc3ItDQo+ID5zaW5rX3BhbmVsX3Jl
cGxheV9zdXBwb3J0KSk7DQo+ICAJc2VxX3ByaW50ZihtLCAiLCBQYW5lbCBSZXBsYXkgU2VsZWN0
aXZlIFVwZGF0ZSA9ICVzXG4iLA0KPiAgCQkgICBzdHJfeWVzX25vKHBzci0+c2lua19wYW5lbF9y
ZXBsYXlfc3Vfc3VwcG9ydCkpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IGludGVsX3Bzcl9z
dGF0dXMoc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgaW50ZWxfZHANCj4gKyppbnRlbF9kcCkg
ew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50
ZWxfZHApOw0KPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5w
c3IudHJhbnNjb2RlcjsNCj4gKwlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBz
cjsNCj4gKwlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gKwljb25zdCBjaGFyICpzdGF0dXM7
DQo+ICsJYm9vbCBlbmFibGVkOw0KPiArCXUzMiB2YWw7DQo+ICsNCj4gKwlpbnRlbF9wc3Jfc2lu
a19jYXBhYmlsaXR5KGludGVsX2RwLCBtKTsNCj4gDQo+ICAJaWYgKCEocHNyLT5zaW5rX3N1cHBv
cnQgfHwgcHNyLT5zaW5rX3BhbmVsX3JlcGxheV9zdXBwb3J0KSkNCj4gIAkJcmV0dXJuIDA7DQo+
IC0tDQo+IDIuMzQuMQ0KDQo=

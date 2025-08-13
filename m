Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 998FBB242AC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 09:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81B810E1C3;
	Wed, 13 Aug 2025 07:28:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="avFj3vif";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F47510E1C3;
 Wed, 13 Aug 2025 07:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755070095; x=1786606095;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/E1czs1FSaSsjjcYBA27gtyNLsjASdFIjdubNRf5eAk=;
 b=avFj3vifS16jPMfLhbz3o8wol2TPb++FGFh7sXWvlynzJV3CuVoj6uU0
 c+M8e9MQ1z0QPdROuMSJYGdvHa1SPf2JI6TG8npIuk7bF9n1BSe4B0GuG
 jD6LQaZ2LvsoxLaM2Bm6Oi1tb3GeoyJ8UCzS6GplRBVdx2ng2z4DKJCIJ
 KHEz7Zbkk+/ZvMzkulgvktXOb3oLknu9mlSEPyDUQXAmYly6d2H51ECR9
 owAJscNHdSGiusV7Aduko2vIhLd6sfa/2Tl1ZHLWvf0D2A75S3wKP3W0Z
 QWPkTeWH2HNT9kKMw6nVlMykfKleLw8Liyo4Opevlmp4Z5hjxFXXBNUJs A==;
X-CSE-ConnectionGUID: M9PTF8PCTtOuLB3r3XfJzA==
X-CSE-MsgGUID: n9jaSsK0Rw2tGx3YpvzNag==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="68058191"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="68058191"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:28:15 -0700
X-CSE-ConnectionGUID: W7GpjusVRlagYEnGbRPlQw==
X-CSE-MsgGUID: bWONFcMyRhaKEXe3/mYcuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166672496"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:28:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 00:28:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 00:28:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 00:28:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PXRbYc7Y+e0bA12gOkC9pvrvYMHZuDi2BaAFDgFzs+GeyhsgqBsHUq2l+rOnqDvDR8/2JttiZQFuRLbwSnf4udgX6endb3iXxBWrgl5eoeJ77AXUGCNLPPQqITwbpEcutq7VCbzHjldM+o7PJQXqymbK9etlu0UOo8nBTKySVDJzaim6moQvbE4utX3TzRwxnMY6Wf00cbbFtQkw81AY0EWCyhnAGzGdovjzJoKWAHpykIxZXhe0tWmBOWvJjTAdkavhQyf0cgfNsYdavvPe2ZKFpPMTBOyZy3m3yRd9qKdpWWYbb/IVpjlc9EhmURCbgbkQHrgKwBAt3+8EwobmAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/E1czs1FSaSsjjcYBA27gtyNLsjASdFIjdubNRf5eAk=;
 b=xVvy/0aEq8nT/fMe+i/LSR0wZu6tee8dF51d0HtZ9hOJ/LfOUsAGkHd0+yZcsvWG+f5vtpuQaBIWwcf2A0NyHQ/Ye/acBpoSv8GFPWuMZTJiqGA53Z3eZP2jEF10je2/MhKSk2U1uDY0qXIsxYzQ2Omyz/RTGWq9Zwl+Pz48/wob5JTYDGXLn0itSkr6e7MPrlcpgd9cE0GiF3pGN1Ro+AiMTvEMihVhEMnnbBRpUETDbni3wZC7uyjNr95aQ1tgOyfhPeZKA1FZaSrZGmkLz4CBlYxzHR/ExchEysXDvM3nc08ZCcVQo9W99eqLz8l1nRJJ7cVll+q8DkBYgm8aZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB4885.namprd11.prod.outlook.com
 (2603:10b6:510:35::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.16; Wed, 13 Aug
 2025 07:28:12 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Wed, 13 Aug 2025
 07:28:12 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 2/4] drm/i915/psr: Add new define for PSR idle timeout
Thread-Topic: [PATCH v2 2/4] drm/i915/psr: Add new define for PSR idle timeout
Thread-Index: AQHcBpIoZi4dRBTjlkimx4zgSGoaQrRgOmlg
Date: Wed, 13 Aug 2025 07:28:12 +0000
Message-ID: <DS4PPF69154114FE7AE7704387B248DF0CCEF2AA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250806052213.1800559-1-jouni.hogander@intel.com>
 <20250806052213.1800559-3-jouni.hogander@intel.com>
In-Reply-To: <20250806052213.1800559-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB4885:EE_
x-ms-office365-filtering-correlation-id: bcd2ee6f-cbb2-488b-4ba3-08ddda3af5af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?akI4blJ4WTMyNjhYdW5WSUhsTHN1a25pWFV4TUs3bmMzQzQwR3B3TFMrUlUy?=
 =?utf-8?B?cmxTZGF5cWlnb2hhWGUxUDAwbHpVQXc4eCtmc2pQcWRNNmpMaGI3aFZOZVds?=
 =?utf-8?B?VzhBMGFBV3l0NjZPR3V2UFUxb2hFT3VpWDhPVzVvZ05UenVKQXhnNmpJMFBj?=
 =?utf-8?B?V0pqb2FjR2JkTHl4RFdNN3ZkTldDTlhKNURmVjA0Zmw5WElsNk5kVElKM1do?=
 =?utf-8?B?a3lsZUVybXRmOWJjRWkzd0xnZzhsSnlSNndwZnMrWFBSM1RRSnQ0R1RSVWhP?=
 =?utf-8?B?QkwwYXAzejlUMVB1cjNVRzlNVnhmY3MzalZ3dE85eXdVR2ZkTTlpMzgrZzlG?=
 =?utf-8?B?R3MxQ0ZCZnNkNzA1Q2dwNGxvd2M4TFpmVU1Pc3psNHdGUEk4b0N5WVR2ZUxj?=
 =?utf-8?B?cnErbmplTWdKQkpNYTN1RnZRWWpzZDBMN29lREd4WURaMzFlQnRQam1iTmlM?=
 =?utf-8?B?bnhuaDRDVUx4b3pCU3pVdnBBR0hSRHZrWEUxaHR1dlY3dWFyM2p0VXhQQmk4?=
 =?utf-8?B?YWJKbFd2MnVuRXl4Z2NkdHUxb1RCbVZLRDEwMEIvcDN0R1JjSEkybkducytJ?=
 =?utf-8?B?eElUY1ZsMjJ3MUpsbVhVWkFxQlNtOEN1c0pQREVsRjdVekxibVJvWTFOZFNN?=
 =?utf-8?B?VzJtaFc4bk5INUJCdzJkOWpFQnBTd29Sb240ZU5JUk51YmlELy9yeFd1YW94?=
 =?utf-8?B?UWpkYml6eXdzcG43a3V6TVNTekhUWDlqL294b3FFVlAxZ01nU3BEdjdhM1pY?=
 =?utf-8?B?VTBRWXdrSHZ5QWQxSUR6UXprRTYxVEdRRXBIaW1qT1dqenNraHFWSGRndXYv?=
 =?utf-8?B?dG9DMXlKSkhlTm05Y1lheXFNSFJlTm9qelBndWM0ajFTSEFXMmNIN0FGN2pE?=
 =?utf-8?B?VGNCalZwRWFUTFQzc2dkejNQYlRYVWRIK21TMWRjcTY3U3YwYjdoSGVrR0dX?=
 =?utf-8?B?eElpRVZ0MW9OdGpIdlhiU3pteFc5RnNPY1UwRUFKUzdXS3ZLRStwZGltWStu?=
 =?utf-8?B?dmxEWVFPWXduQmFydjIvZEQzSXhKaXA3di9zaEhRcWdUcFV6NFRHb1hpcmYz?=
 =?utf-8?B?NS85UldwcFpRUSsyU1VRRnFtRENhUzZ0K3FvTStyalFNY3NnQjRhQnNDbzJG?=
 =?utf-8?B?WVdualFlMFdaV1VNR2JlVHV6S1ZaeURRZVUxVUZ6cW4vUWFyYjBtYkVMUlhy?=
 =?utf-8?B?YUpIME5KUmRyZm91eTEwTEhUQzJUeGx5UTNUSE4wZldncUNkVG8rRTB6TG4v?=
 =?utf-8?B?cGFWQXpRRnZsRFF0akt5S1ZQeDU4MEZlZG1rUnU5YXE5MGNOZG11OXk3TUJZ?=
 =?utf-8?B?KzBQelN6eWY5VHlzS1kzRWdxeTJZeEROcGlSTU92YTZ6b1BTNEx2ODhjZzNw?=
 =?utf-8?B?UkV3aVBBdHlsaC9MbUJVRXdCZ3lIS0hFYlVEMnB3V2xrZ0pyOEJkY1lTZVVI?=
 =?utf-8?B?UUR5dDVTMzhwTnhpRjJkZkZNV2pNcVJmc0hTOVVUUlZVbXBzdWtZNWFrYlRt?=
 =?utf-8?B?a1FyNllITFdzNmVaeW9wdFZRVmZacnV5NlVzVVlzWGZsMHE3WnhHQXhCanBR?=
 =?utf-8?B?ZTQ3ZldhZWh2U0R1RzNmK0VEY3VSY0dlSm1sNlNLZVFMQjJrckRoUXZYWERV?=
 =?utf-8?B?dHdEb2w4TXc3VUJOVTBUcFZKQzN2WnVCT2tvQkg2VVNoTkNNZnNFdWlmaVpG?=
 =?utf-8?B?MWhPdHp5UC9DaC9tK1JIOUlWNm4wUXMzNVVrM2x2QnlPVDI2Y0diazBRcUhv?=
 =?utf-8?B?ZStMMFo3d0Z3ZFg0ZFZ4Q0pwaHRNcWd3U3YwZ0JwaEh6by9UNU1CK2NYdmt1?=
 =?utf-8?B?M2pTbm50eXJ1K2FjQmwwM3R5Y2dGb1JnQkFYT3ZxWDZwSDJqa0FybHJMaHVp?=
 =?utf-8?B?OFZGVktUMkJZMVVUUUR5NGJONmJXME9CNzBLVUlFcUswWXM5Um1pYkRUY3Rh?=
 =?utf-8?B?MkNBY2V1b3FoQzd2MTFZc0E1SHFtU3EvWHpDV0RnMWM4Q0wxK05Uc0dXejFv?=
 =?utf-8?Q?jrQs0boBaubQdA7xPTrLl2zuNAs3JE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTNqVEcwSG9GU0NlMlJsN3NBOTI2STk5S3c1dW1mbFBZZk04T1AvMktkZ3Jx?=
 =?utf-8?B?cTAvelQ0ZHk0THBGeTBhRmxnWFdOTnV6VHl1MndGemM4by9lRVlIVHc3MjBP?=
 =?utf-8?B?RE9RWFU1bzFhTWYwL1kzdW1DOFF6SzFNSzliTEo0SklJOWRkUjBpWW1qNWxq?=
 =?utf-8?B?bWpjbUQwZ3hBaW5kQ01WejRhcnBLUmN3aklqMkowUjR4MkJ5MW5oQWNqdGxi?=
 =?utf-8?B?S0NsYVFjZUwrdW15RlhNZWM3dkpOQXY1TitXY2RwbGxqQnR5clUzeUZUelRT?=
 =?utf-8?B?ZkVHYWR0OWhYbU1JWXdYaWduTHk1cmRPMXdIZXFDTHpYYi8wV25CTVhRVXM0?=
 =?utf-8?B?QjgwOU5JOEY0SFo3WE5YcVIzNUNPdG1lM1N3cFVCUWdkL1BKZGJ6cU9wWjVB?=
 =?utf-8?B?dHBWQUFWMUVsOVdxYW0wQWlxQlBmSGlwRi9maExwQUMxRUZmSEJKWWhxT05M?=
 =?utf-8?B?WUhKaUcydmRjWVhRUitMR1ZTaXU1aXVTY2Y2Q1pDcm9lVC9ucXFqVFEwWHJC?=
 =?utf-8?B?d1RNRkN6Sm9kb0pQa3FodG53RTNTZUxKdldRZ2R4emFsYm95QlF5NVN0RXRp?=
 =?utf-8?B?OHlFYjFZYy9Pc055TFFpdGE3eVNoemtsMnRXNTNuS3hYSkxQcVhJUFJzaWN2?=
 =?utf-8?B?NUlLd2N4Vk0zZmxJeW5mbG8rc2hOMUJ1SkVkMEN4eUQvZVhCZjdjRXRlajdV?=
 =?utf-8?B?Z0NGQ1Z4WkZXTUNVWlRqbklpc1EvdWRUSDdXdStIMFlCTFUzdjFSby9kMU1C?=
 =?utf-8?B?U1ppU3hZbFhsZFBLRTdtSjdIUnJNdVMvZlhHNmJWQ3d2R29WU2E5VmFmUjE1?=
 =?utf-8?B?NXRYVDNyVHRIOFlDak51R3o5bXlZUng1bnNkR01CU25WdWk2K0YzY2JjVGJx?=
 =?utf-8?B?Z0dCTG9CdzFIdEUyQkhOQms0a2g3OVlXTEhibWt2RnhrWnNwalpHd3IzU2Rr?=
 =?utf-8?B?Q2hPUHVPcUZmbHRza1VFNDQzcXRCdTJucFBtRGM3d3lJN0ttbDU3LzhURG9w?=
 =?utf-8?B?UEw5dGRxcW5DU3E0MFlpSWFlT3NIbDNEOGp6K3I1YzhTVnNzUm9HWnEvNUxR?=
 =?utf-8?B?NkZteXpNSENsMEJ1RGNOVWlPOHY2R3hjNUJ4Y2QvRk9tOVV3Tmc5M0xIQlBi?=
 =?utf-8?B?Rnd2Z2pNVHNub2xqUTNGbEpzOEZKMjFtVGlLdEQ4OTdaa25VblBLaDQ5eUpI?=
 =?utf-8?B?dFcwTkU5Y2cvU1VZYzRaSUVQeXNPSzRqbVBZVmMyNjBpZlRQdldqeFdKVitR?=
 =?utf-8?B?MFd0VXNSdFNYMnlqWlBYOWwyN3p2U1Zqdk9EcWdOL1JwQmlleUZ3b2czZUFX?=
 =?utf-8?B?c0tNdWpPcHBIdmpEZ0UrSG1WVDhIaEhMS2E1THIrMGRiRHRjMHFwbVZKRVA5?=
 =?utf-8?B?cWMzMkJDaVZHQU9uNnhwd2xiUHpLNllTQTRnYlU5U0V4elQ4blFqR2ZTeFl5?=
 =?utf-8?B?SDluNGg1YXFyZjQzV1RZeGJ6NVNLUzAxUEREK2R0cElPUTRvS0gxaUhsdTdv?=
 =?utf-8?B?b3R3RGdCV240emZSUjMrczNhZ3hLVzV1eEUwT0FGUEtxZjk5Uk1NRTlVQXla?=
 =?utf-8?B?NXcyK0drR1pNZTY1WEJPWnh6Q1JKSHRKdzdYSFcxeUVPcCtOMElZVVBiREVx?=
 =?utf-8?B?MU9TemxGWHhaazhnTCtUa2RKVXdnSFQyOElVcUdKdXVpcmJSMDN3QUNxUlRF?=
 =?utf-8?B?cURkUUxwdUpyOVV1N09ONDZCamJmbEY3TjZCUzlmSEtBUUF4OElGWmdoWHh5?=
 =?utf-8?B?cC9LeHFYYmNNWmkyRUFFRnZrYjZ3bWx0OW8wUUlNcDFUK1BGUk5pR1Jwb3dy?=
 =?utf-8?B?MmZvWjBaVHovY21DY3BIalZMR3BhYnVybzFDQ2lpalNhUjAyclIyVVZqL1Jj?=
 =?utf-8?B?aEt0K1BkKzBneTcwY0FuU1B3c2FtZHNONENObGNJQXRqRVgxWmRQTmZXR0xi?=
 =?utf-8?B?a3NnQXBuVlFuTUJXV1AxVEI5cUNYRFFibVR1aXlVLzZzU1lEVExVMXlwOEJG?=
 =?utf-8?B?WXRyYXF0OGs5Q0FXVWNFS3VTVDA0UEZLcnAxM3ZDRWxSRzVqUVhJN1ptc3l2?=
 =?utf-8?B?K2RGU3o4Q0ljSmhxbC9vYjhLWTJUM2tyaUdEMzhPNnYwVDN5THpGZ01VcjEy?=
 =?utf-8?Q?onwOAIZqXucXwxFEJ4HeizE5j?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcd2ee6f-cbb2-488b-4ba3-08ddda3af5af
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2025 07:28:12.1125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RCV1JPxeeUGPQok/IPpSHeMA6/WOOXVz3YAzsQbRX0kIlpZBfMSYlRNB0qUqgahJsUn3v3fDpXRDCd0XjkqxUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4885
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaSBIw7ZnYW5k
ZXINCj4gU2VudDogV2VkbmVzZGF5LCA2IEF1Z3VzdCAyMDI1IDguMjINCj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSCB2MiAyLzRdIGRybS9pOTE1L3BzcjogQWRkIG5ldyBkZWZpbmUgZm9yIFBTUiBp
ZGxlIHRpbWVvdXQNCj4gDQo+IEN1cnJlbnRseSB3ZSBhcmUgdXNpbmcgdmFsdWUgNTBtcyBhcyB0
aW1lb3V0IGZvciB3YWl0aW5nIFBTUiB0byBpZGxlLiBBZGQgb3duIGRlZmluZSBmb3IgdGhpcyBw
dXJwb3NlLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDIwICsrKysrKysrKysrKy0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTIg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBjMmFiMDBmZTJjMjAuLjE3MmJjMGMzOTk2OCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0y
OTgyLDYgKzI5ODIsMTQgQEAgdm9pZCBpbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJfQ0KPiAgfQ0KPiANCj4gKy8qDQo+ICsg
KiBGcm9tIGJzcGVjOiBQYW5lbCBTZWxmIFJlZnJlc2ggKEJEVyspDQo+ICsgKiBNYXguIHRpbWUg
Zm9yIFBTUiB0byBpZGxlID0gSW52ZXJzZSBvZiB0aGUgcmVmcmVzaCByYXRlICsgNiBtcyBvZg0K
PiArICogZXhpdCB0cmFpbmluZyB0aW1lICsgMS41IG1zIG9mIGF1eCBjaGFubmVsIGhhbmRzaGFr
ZS4gNTAgbXMgaXMNCj4gKyAqIGRlZmVuc2l2ZSBlbm91Z2ggdG8gY292ZXIgZXZlcnl0aGluZy4N
Cj4gKyAqLw0KPiArI2RlZmluZSBQU1JfSURMRV9USU1FT1VUX01TIDUwDQo+ICsNCj4gIHN0YXRp
YyBpbnQNCj4gIF9wc3IyX3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKSAgeyBAQCAtMjk5NSw3ICszMDAzLDgg
QEANCj4gX3BzcjJfcmVhZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tlZChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUNCj4gIAkgKi8NCj4gIAlyZXR1cm4gaW50ZWxf
ZGVfd2FpdF9mb3JfY2xlYXIoZGlzcGxheSwNCj4gIAkJCQkgICAgICAgRURQX1BTUjJfU1RBVFVT
KGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4gLQkJCQkgICAgICAgRURQX1BTUjJfU1RBVFVT
X1NUQVRFX0RFRVBfU0xFRVAsIDUwKTsNCj4gKwkJCQkgICAgICAgRURQX1BTUjJfU1RBVFVTX1NU
QVRFX0RFRVBfU0xFRVAsDQo+ICsJCQkJICAgICAgIFBTUl9JRExFX1RJTUVPVVRfTVMpOw0KPiAg
fQ0KPiANCj4gIHN0YXRpYyBpbnQNCj4gQEAgLTMwMDQsMTUgKzMwMTMsMTAgQEAgX3BzcjFfcmVh
ZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tlZChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
bmV3X2NydGNfc3RhdGUNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkobmV3X2NydGNfc3RhdGUpOw0KPiAgCWVudW0gdHJhbnNjb2RlciBjcHVfdHJh
bnNjb2RlciA9IG5ld19jcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gDQo+IC0JLyoNCj4g
LQkgKiBGcm9tIGJzcGVjOiBQYW5lbCBTZWxmIFJlZnJlc2ggKEJEVyspDQo+IC0JICogTWF4LiB0
aW1lIGZvciBQU1IgdG8gaWRsZSA9IEludmVyc2Ugb2YgdGhlIHJlZnJlc2ggcmF0ZSArIDYgbXMg
b2YNCj4gLQkgKiBleGl0IHRyYWluaW5nIHRpbWUgKyAxLjUgbXMgb2YgYXV4IGNoYW5uZWwgaGFu
ZHNoYWtlLiA1MCBtcyBpcw0KPiAtCSAqIGRlZmVuc2l2ZSBlbm91Z2ggdG8gY292ZXIgZXZlcnl0
aGluZy4NCj4gLQkgKi8NCj4gIAlyZXR1cm4gaW50ZWxfZGVfd2FpdF9mb3JfY2xlYXIoZGlzcGxh
eSwNCj4gIAkJCQkgICAgICAgcHNyX3N0YXR1c19yZWcoZGlzcGxheSwgY3B1X3RyYW5zY29kZXIp
LA0KPiAtCQkJCSAgICAgICBFRFBfUFNSX1NUQVRVU19TVEFURV9NQVNLLCA1MCk7DQo+ICsJCQkJ
ICAgICAgIEVEUF9QU1JfU1RBVFVTX1NUQVRFX01BU0ssDQo+ICsJCQkJICAgICAgIFBTUl9JRExF
X1RJTUVPVVRfTVMpOw0KPiAgfQ0KPiANCj4gIC8qKg0KPiAtLQ0KPiAyLjQzLjANCg0K

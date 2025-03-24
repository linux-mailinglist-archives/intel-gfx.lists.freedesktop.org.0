Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3C3A6D5AC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 09:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C44D10E215;
	Mon, 24 Mar 2025 08:01:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NI795o1Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6825D10E215;
 Mon, 24 Mar 2025 08:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742803261; x=1774339261;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Z7HXnvbdeiBqKd2caeBubJbwBzmDb3Mo62OElhm3Aso=;
 b=NI795o1ZW0ANByDa52DKJggB6sdzbwJFrIMCINGcGJTXiT1LTKi4wwBh
 TYU6kxgF8uVHNJk7onTyMdOGDPzhyLFPWtKDFSQbCWVAmbx+JvpHQ5v12
 NyMdeD8a9ufM0FAPPXMX1BYfiVQlOhlZqwkODtqK/O3JCTHdX1DzktXV5
 jPcfDh0HVBnbo2GPLixJo/deMBYYoudFijZnVW3GAsTKrIgOwZInjzysV
 iR+j+09az+5MNwLHqUcG/lv5Mtmu8b5oCpQs2KyhbETKnUCPNFlS+P3Mw
 Y9F0wB0H4dRXqQP97fKONMQerRA8hLWprluPmTDiSPd7j5Jr+Zqf6PYWY Q==;
X-CSE-ConnectionGUID: wWmdDmrVQkaPLmoF0di/nQ==
X-CSE-MsgGUID: nOLceKanQ92+ua4h+VOYBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="54658997"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="54658997"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:01:01 -0700
X-CSE-ConnectionGUID: bL0TI7UyQuWHsuZZoWhvqg==
X-CSE-MsgGUID: OTGJml9tQM+Sr2ah2aZObg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124132585"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 01:01:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 01:01:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 01:01:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 01:00:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T4naPsZ5gBZY+qRUVCKx7RjKi5XcWV1Me4YR4ZVmDn13MJEUJu4+Z6gyyZ81TgSn6p29viN76U4rjUKGg2PMX/dvQc1Hswu1KjMXUWVAWlH49AWcCC7FgJ0vZqmBUnEmY9ZCBP23ekD748ATEhTD1d8jzI6+lCKQJHFUjSfSCPr7kduEHpTcEVKBz8IP4ww9lSXMye2A2boFne1C+bPXVg0SSNRkcjiieuE7STnnUEOl1VPD9dofPFh0UUJghGVn0soDi4sk4C+J2PwqUgp5ASv/j3VQtoB8WKG3j7ya6u3eSkWgsTAT2rNjQBalh14OUJ+e5ZjtKRE0zWbR4VoqzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z7HXnvbdeiBqKd2caeBubJbwBzmDb3Mo62OElhm3Aso=;
 b=uJ/048DalXS3OBI4jtMjPHPTEy+EKCFapoTGf38x/ck+sGqTbJPawiPpI7RaQG7Xkee+QQEizBaHZbKAyIGJNKUEiKAYxzhRcYX9Hf+r8Kr7IVvz5pKsN59PcBpAffwpqo9HJVMaZciQmMT5xs4L1IeCLTzVbpquljhFhiRZFzJalddUoBVe9Htft8VGFm+kKkCZ4tho8JyJOofLAzj2KYxMhwREp4JOHscPFHqxFrlUW4yPeIt+Q1JlTkERzBvZz6C07XP4dJUjCVMPb4cYISC9XbfcJD6REs34BEVkgLYVC+HhBP46uXJwp3aSx2wDK4soLtDz67bC8lL2UjrZow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6802.namprd11.prod.outlook.com (2603:10b6:510:1ca::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 08:00:27 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 08:00:27 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v6 3/8] drm/i915/lobf: Add fixed refresh rate check in
 compute_config()
Thread-Topic: [PATCH v6 3/8] drm/i915/lobf: Add fixed refresh rate check in
 compute_config()
Thread-Index: AQHbmQZlvVQNQPe2u0aPj5QtiQAd2rOB840A
Date: Mon, 24 Mar 2025 08:00:27 +0000
Message-ID: <bd0d6aa54f473a34ddacae1eadcdb2d4543444f9.camel@intel.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-4-animesh.manna@intel.com>
In-Reply-To: <20250319191508.2751216-4-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6802:EE_
x-ms-office365-filtering-correlation-id: f18e4453-13e1-4f7e-64c6-08dd6aa9f07e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?d0xxVkVRYmcxY0JuRWRJUVVLSVhhTDd6MHZUU3h6bk9JOW13UFluMVZwU2ky?=
 =?utf-8?B?UlNaOGdYT3BNZkI5M21oZTQrSDNpUWs4ZjFhbTJyZG0xRzZ6eEFIbHhEREhF?=
 =?utf-8?B?R25KY016RTB1ZzhRWjRTTmkyOTlSUGpuSVRzVlRqWFpXei9SeVcyOUZpWjNU?=
 =?utf-8?B?TGJTZU5OYVh4Si9SRGJ0QW00QW1Eb1hYWjdNeUZFYXhPU1NUcmFnVnhNSHA5?=
 =?utf-8?B?S0JETWJHUWhrRFBYdHlaSHI3N3NZYTRmMWNtaVJXc1l4cTVXVWZoNWhNS3dY?=
 =?utf-8?B?R2JrU3liYzdkRHFXVlI2UlZDOWhLcXJ6M3cyUjFoT2h0VjlKUU5Bd2w3QXdj?=
 =?utf-8?B?cXJndzkxZ1lsZ1VoZ1JwcE9HM295RnJKa2ZTaUpXWTl6cDEzTTVJQU8xNVZr?=
 =?utf-8?B?MEJJTGpvdHVFY1V3djJBMWtGcStkemQzeGJLWW1pRzlVeDI1VE1XSHZXNzZ2?=
 =?utf-8?B?bmR2STBIRU1XNFFVZnlvVVEyYVdtZElNUmtvbU5EZStLT2lYZXBHNDZUOHJq?=
 =?utf-8?B?Mlpkc0p3QWV6U2FJbnVxaCtBbnpHdFhKZEkrVW90MDE5cVBndnVWMnhFcWts?=
 =?utf-8?B?R3YwSEVvaGxDNmhTbXEyS3pucjVvRlc5MmVwTFBQcTZ3UC9lUU05QUZYZkJq?=
 =?utf-8?B?SHNzZ0V0OS8xWkF3bFlJcmpacUloVUxLTEU4UTVWYksvTmRMcjFxU08zK2tX?=
 =?utf-8?B?bXhFdHdCZ2gzZ2lBK25jQlVteWE4SFVrMFFXNnEzYmtlSDBWSTRZTTFBUHEx?=
 =?utf-8?B?L0ZwTE0rWlluRjF0d1pwbDZ5c3lqSzR1Q0NuMG41WXpaRHVhOGVUTzRoYnBX?=
 =?utf-8?B?bDdjclBKdWJnbjlQSWpMNktZMmZKQzFFaG9TMmpmTk9hRnVJcjJ4N3o5WStS?=
 =?utf-8?B?UFdMaFZXSk1jSU5HdjIzeGp2QzZBME5UUXg5cVd4dUhEeUxGRURHMHVEZzJl?=
 =?utf-8?B?TWhaU2VOblJBZHhQWnk5RUdkOGVhL2JqL0FzaFFoMUFSWVVlK09lcTM4cjBv?=
 =?utf-8?B?Z2xiQlpKZ1hDTWE5YjNPRHQ3QXlMZlRuRnZzbVFVK0d5Q2FkeHhSb1dKY0xv?=
 =?utf-8?B?OTNSbGd3ZlR6ZE13bjdocjB6dzNWekV5QnBEUmxReGJhamEyY1FFejhTQnE3?=
 =?utf-8?B?Ty9qWDVidk5SYlYzVTU3TkJhSHdvSnM4N1hxenVLWWlBVUZpWDd3U24rTjlo?=
 =?utf-8?B?Um9PSnArUFBBOE9KeTFZMHlzcUQ3dE5uMVM3bXFEd3h6L21UK3I3WHNWRk1t?=
 =?utf-8?B?YzBzM3BBVTVLYXdrVDBtUmhuUmxXT2puOTRDTEQ1aVZmZnoxdXBuY3pEMGx6?=
 =?utf-8?B?NzBzY0V0SUZyZisvQU01RXkyVStEVDZsWHB2cldDTVRINFlaQUxLWVk5Tng0?=
 =?utf-8?B?bG9JWUpoMWZCdSsyR0t1UStRVjNxdE1wdFRkRDlpNG01d3czNWRlZmRQakFZ?=
 =?utf-8?B?Rk1aTEtkdERNSXdGUWQwdTAvL3VnTHRlaXdsYnlKMmNaZE12Rm1HRmxxV3ZK?=
 =?utf-8?B?dC90MnVBWUFqUE8rNXNOVC9GNmFOTTlBdUVURWFOUEhFM3Q5U0cwS1VESUpt?=
 =?utf-8?B?UHFjMFlOR0RsclBtWWtNek00d2lMSUgwT1VkenBubUlJdGUreHZDbzYyZE9s?=
 =?utf-8?B?MU9ia1p6VVh5ZHI5Tjd1cjltTjNQVXJ2bzhzeDlEQWRpcncwRE9xTmJONDAv?=
 =?utf-8?B?bnhUSzRUYWtyaFJJL05MQitRN3ZHeTBHd2pvZkhIZ0ZUM2JMd2lpNWFJRUNT?=
 =?utf-8?B?ZXNkMkNva05TNVFsTFZ0TjJWdDltWGVnVTZIcEgyeXpxdFh3VlhUaWpST2sv?=
 =?utf-8?B?eld3V05TYTFQanpMNlZzV2NHM01SSmJUOE43UW5YMkQ4UUZZT0trMW5oaU1z?=
 =?utf-8?B?Nk4wS2M5OElTN0JPN2h2djFiWTVlcEYvNWxYWDNIdWNhbEF3RFV5bmwrbHdw?=
 =?utf-8?Q?TbzZOWqaY3g2Aor30xMHQ76o5OIxCz8Z?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGMxc1BXQjFmdFBKV1EvT1BXUUZ3ejdrdjZkQ295cXAvUmtGMXMvOEl1MXJC?=
 =?utf-8?B?WGVhWGhDMjBQZ0Z4Wi9UNW9mUVlNTlgrVkhyVGF6L0Z6Rkh2djFlQW40U2k4?=
 =?utf-8?B?a3RndVB5dk00b3hxWE5SbVRsa2ZjZVBCOFN0YzNYeno5VFZyNHlOeStHYWNz?=
 =?utf-8?B?ZElHYU9hQWxQTy91U1JEVTVEMW1OenRvQW40ajkzN0hhUCtTQnZUdk5hbnpY?=
 =?utf-8?B?YmcwdXdWSE1qZEFSWitoZWJTaTk3dlp3MFM3MnFIMGhYcWk1VVNObmhQdG1W?=
 =?utf-8?B?eFRDNE00WWpIR0FlSHJ0c2lqYW9yT3FGYmRwVzFET0dueFkwdXJVZWtacU9z?=
 =?utf-8?B?SnE1Y0hibERQeTJaSUhCZWJYZ092dURUSjF6S2h3aWkxZU5JQ2psNkRDS095?=
 =?utf-8?B?SGxTa1h1bGtBR2doVWx2SGI3azJqSk1vdTJyaThBUmxmMmxpbzlrd2orK3Zv?=
 =?utf-8?B?SC9wNFRhOUZTLzZjaW5yRDJDVHlnei9HanFaTXJiVXVRbjU1SzJ5TElVeU4z?=
 =?utf-8?B?ZUNrK1ViL0RnNFJuM1F3TGx6UWdoNHBUZnpUMWtXQXZSaHg2WEpEWGlDRk84?=
 =?utf-8?B?M2YzdFQyUGRxU0lQaEE2a0pMNStzdDgvQXVZY1dmZ1pSS2dWVFFTakJuNkFT?=
 =?utf-8?B?eEt0cG56SG1YVDV6L2EzZW16MUtNbU8yQnVGMUlyeG4yZXRjMDF6dmRBWDdZ?=
 =?utf-8?B?NGh0S3B5TVBUTmtZUDNhSFQ3U3pUcUZVZkF3SDlJc2puYlpMZnBIajJmbDlj?=
 =?utf-8?B?dHI4ZGorUVFWL2xFZHU5SkxiWFM1K2p5Q252alpXaWVXeXB4c2JXVFExUjhq?=
 =?utf-8?B?NUlYZVFkUFZVYzhDRE9vUmhYVWNWKzhsV0QyRnlRb1lMeDhlQUhTL0o0QTRt?=
 =?utf-8?B?ZExZcG1PTi9OMk5MTkpyNlFsNUYycUNORzc4Q0cyWXd6U0lwSjB1dDc1L1Bh?=
 =?utf-8?B?cWNlNlFsZmpCbGt2WGZrRnQ2WXZqb3d3NmhzZzB6MVphcXhEMk9OeTZKc1hM?=
 =?utf-8?B?dDlxY2ZmNEFXbUJld2ZZMHVGNStRUUtUYUpzRk8xYTdoOVc4VEZ1eXZia1pB?=
 =?utf-8?B?ZmJoMGExSHA2T2hEdlpNRVJkVnV4TjRvQzdFTVRvN1hRWllKakVqY1ZQN3lW?=
 =?utf-8?B?bmp4aWdHL2s3ZHd1VFcwOTFjOEUvT3RVWTlpZkxLVVRjdFVPTk5VZG12cUo2?=
 =?utf-8?B?SjFuR1JQblQyOXVodUN1VjJwUjR0eW9QRGl4K2JKdFdoZWsrUEF1bTRPeDBM?=
 =?utf-8?B?SzNKVmE4cXFRNFBiLytPTmFtSWNUYkdCT3lJOXVxbW5DdmtOb1RFNkQ5MUVN?=
 =?utf-8?B?UEtadEFBTEFTSTlSd1JDaDQ4ZTRLTnQwUWVwcWc5bGh1OTVNMkxwUWNwamoy?=
 =?utf-8?B?TGt3dHZEd0U2ZllNU2pRemM4Q2lGZTZFcmdqSWpvSFhlM3pqdVVDak5zRHRP?=
 =?utf-8?B?V0RXRnRHcS9YMmh4Yk5PWmJMeXJQaHVrck5vQkFTekM0OXVlVkk0WGRURFg5?=
 =?utf-8?B?L2lOeVlkQXQ4UEllbXA4UlQxWHlsN2pxbVNBSzBGSmxaSUhRS0JkMWh2SVA0?=
 =?utf-8?B?andKTC90cVl1bU15eWp5b29XZjBXN0JMM1BHdjlBb3pXRnpDaTV3alNpaGJG?=
 =?utf-8?B?eXJwbnlQRWY4S0YveXMwWk9rcG84YWNCdEhCQVV1aW5GbXFnTlNTaEZIeGJF?=
 =?utf-8?B?Rys5MGRSMktoWmNqZ2tJT1kwdjV6dG9BMUVVUnVGaGdDc3BIWU5zdzIvNVpG?=
 =?utf-8?B?a2RsTlRqb1ZicEVoL2RIeXc3TGdsK2taamptMEFZYk1ZdHZyU0s3cEFvUG5m?=
 =?utf-8?B?UTBBc0JwRHdUVktxSFhXRE5BMG1vcWJvNzdFaEpFVWpFTlBzbDJORWpZOS9X?=
 =?utf-8?B?RjZxYU50WEpWTi9Qc2lzWGVLOXBnZklXVkxSaWwyT1JZWkZHTFExMkYxUDg0?=
 =?utf-8?B?Vzd2VC83eDFpWVpPUFhFL0pFMlp3ZktIQmlQNktWNWhNRTdvcjB0VkxQYk1q?=
 =?utf-8?B?bnhXTGxxTzluM1ZJZDFqQ1VWSkVka2RMdlI0eUh0anRxeXRhWVRQbkVBVTcw?=
 =?utf-8?B?bVJnUi9lNGIvT2ZzeG4xTE00em5KZEl0UFc3c0dHcWt2bTd6UzEybTJhd1po?=
 =?utf-8?B?VHFFOE1henNyR1NBUDUzbitMZ0s3TVltV1BlTDNXQzNVNXliSkZMNmNuaUNP?=
 =?utf-8?B?NUZSODBpUE5BMXp5QUFzeklzeVZGRjZQdy9pNVRPU0g1bzdZSVpLNjNrbzhm?=
 =?utf-8?B?MFRuZ1pTek4xVTVFR3ZuWjV2bS9RPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <473776051A1A1640809342A7CEEEB7E3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f18e4453-13e1-4f7e-64c6-08dd6aa9f07e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2025 08:00:27.2831 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jV96r7oLPNF9t/CM3RX5srw0rRI26C2Utw4RL770bzg+D2dBaEDOsu3ctFvHYyIYats0E+q48r8rLqPRSLVSGW/J60uYvJX26C/XGR8ABaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6802
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

T24gVGh1LCAyMDI1LTAzLTIwIGF0IDAwOjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBMT0JGIGNhbiBiZSBlbmFibGVkIHdpdGggdnJyIGZpeGVkIHJhdGUgbW9kZSwgc28gYWRkIGNo
ZWNrDQo+IGlmIHZtaW4gPSB2bWF4ID0gZmxpcGxpbmUgaW4gY29tcHV0ZV9jb25maWcoKS4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
Pg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5j
IHwgNCArKysrDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gaW5kZXggZDJmMTMz
YmM1ZjM4Li5jMjg2Mjg4ODQ2NmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0yODgsNiArMjg4LDEwIEBAIHZvaWQgaW50ZWxfYWxwbV9s
b2JmX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCWlm
IChjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiDCoAkJcmV0dXJuOw0KPiDCoA0KPiArCWlmIChjcnRj
X3N0YXRlLT52cnIudm1pbiAhPSBjcnRjX3N0YXRlLT52cnIudm1heCB8fA0KPiArCcKgwqDCoCBj
cnRjX3N0YXRlLT52cnIudm1pbiAhPSBjcnRjX3N0YXRlLT52cnIuZmxpcGxpbmUpDQo+ICsJCXJl
dHVybjsNCj4gKw0KPiDCoAlpZiAoIShpbnRlbF9hbHBtX2F1eF93YWtlX3N1cHBvcnRlZChpbnRl
bF9kcCkgfHwNCj4gwqAJwqDCoMKgwqDCoCBpbnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vfc3VwcG9y
dGVkKGludGVsX2RwKSkpDQo+IMKgCQlyZXR1cm47DQoNCg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAF4A28DB6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 15:04:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9228D10E7C2;
	Wed,  5 Feb 2025 14:04:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O0KIW5NO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BB9810E1C8;
 Wed,  5 Feb 2025 14:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738764264; x=1770300264;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hg2W+C5ddvnEOYrC1VhCVVkkkRHZdVbE3Q9mdzbsEHw=;
 b=O0KIW5NO1sHlaeniZxlumVRaeuT5nQghgC7tediz4MsCaCrTsGhs5i0m
 CwTVtUkrVpOKpko11dp+pipnlrW+qjnZMAsfVP3gj8uU+QWuhYx7q101B
 xCk/2WsThH6sbhl9YAi9ZR7HWMuavjkdQpmVZXPQA6pA7/DL9k3xNX4YE
 b49pBA7DePdkhlL5Ab2arwzemOXS5C0MYrlY7Pus3YH/GKUFMNeCIMdGu
 6JNs/jru2AYFB5ltB4Mh8pjUkpJSfcXJapawIjUxrrkLA/gZRdpdzZ0r5
 HSnM1GudqKiIM+QgbKdAXohhJjlHU4xfLk+5OyScHz3Ycaad+/Dy//515 g==;
X-CSE-ConnectionGUID: N9FwuPg0Qie7xS/1tpeCWg==
X-CSE-MsgGUID: wPSg9eazRASRnJPDdumG9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39355760"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39355760"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 06:04:24 -0800
X-CSE-ConnectionGUID: GCzI8e18SVGszBkKK88kig==
X-CSE-MsgGUID: baBnILksQumvnldZ5cFcqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="111087888"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 06:04:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 06:04:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 06:04:22 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 06:04:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dv2j6IxmDXv6qyWVedrFQS25O0OnONIydl5gO+45hGtv3uLhXvgEECr2NTLC2hfTsrjiEbMa+OAEZ9gFDzeNvBRBB38r4+l0szHc21iOdYgVaBrCoLPdWE7j8+OpqrarazopctqOc9CfWMyD63mvUhYUZLDcXemlDFeUxbJpPb+FXPmiwAvcgUXIvVo0183+YjVaa/zw1F8c7ko2GWHZXCOkRplewD9gNwfSb+NQXGwmVrV7EgC5FDqG8awgSptgUwVX8eQSD7iP+RG7iMMiYRtCAJBByXHe8AGjdJSTQRoGzEQtThRAQ/HtBcqEpomrvy7mjdvQOdTWFK/XULItmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hg2W+C5ddvnEOYrC1VhCVVkkkRHZdVbE3Q9mdzbsEHw=;
 b=zHNXIP5P5XHQzeCMMahG4TIOm+R5Ne5kqQklRzqF+2H0yo8Zg4xw9beboXP5+etfp+hBVb4P45XSA55H05hIiw0GktqLtrkLnPNjaVfV72to0EzcX2JYV8kYQ7/30XTVQn6x5sOp+VbTCVCErdZeQD9JaB21M77/HTYZr2lek0tFShTfp3nk2pkyqfxmWJaZr/10/09cP7qUbFTYRNp19BTs4/EMU9+aQqWfmVtzXRhI0KiqH6oGHwkYcsr0yJlJFQUwxK99i7tcpfbbx4/Q+DDi/bLVc6AVTonn0awft4v68XLJMRqY/4rSgBqTksaHbX2OkO0BX0UU1HdWv/LCiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by CY8PR11MB6964.namprd11.prod.outlook.com (2603:10b6:930:57::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Wed, 5 Feb
 2025 14:03:38 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%6]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 14:03:38 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvYmFj?=
 =?utf-8?Q?klight:_convert_to_use_struct_intel=5Fdisplay?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9iYWNrbGln?=
 =?utf-8?Q?ht:_convert_to_use_struct_intel=5Fdisplay?=
Thread-Index: AQHbd7EAk0pkf90cZU6StEij6MHuH7M4vtOA
Date: Wed, 5 Feb 2025 14:03:38 +0000
Message-ID: <CH0PR11MB5491768CE2364B176FF677C6EFF72@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250204132423.2910978-1-jani.nikula@intel.com>
 <173868957891.976180.5891882877547956524@b555e5b46a47>
 <87zfj04tyr.fsf@intel.com>
In-Reply-To: <87zfj04tyr.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|CY8PR11MB6964:EE_
x-ms-office365-filtering-correlation-id: 6b502ada-80bb-49e2-6831-08dd45ede361
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|7053199007|13003099007|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WUFGdzN1SFZWU1JRQUJzc2RhYUdKNnlqbC84NW1lV25xbTIraFFIYlZ2M3Rz?=
 =?utf-8?B?bVovQU8rMEhLNjhVR3VqcUZCUW1zZXFEdldGQ1dZSFdIRmhIbG54N1VPQzdu?=
 =?utf-8?B?SXh5UTNOaXZQZXlKVTAwTlVQaGRxYXpmR1JzOEJXci9PNXhsaDR0bHZOVEM4?=
 =?utf-8?B?bzdwMzkzQTB0dHl4QWZTTFRJcjVha1hTeHNSbHJkNHZRd3QyYmVUSHNOU0dX?=
 =?utf-8?B?cmZEVlJ6cTFTWHVZcWh0czgwSTRzaXRoL0tVVnNYSjI1RndKdEV6NTVpYzNt?=
 =?utf-8?B?NjBIeVNvQzFSY1dBcXdLcVpaZHpOQmQ4TkhuQnpseUI2emJuVFBlOElQZ043?=
 =?utf-8?B?R0hPUzgrRU05UDdhY0FpS0lwR3lqaHFXaFZMNTBENFc5Yno5dmM0ejM5RER3?=
 =?utf-8?B?N21PMmRVSFZSL3BKWFdHc0JVRWs2dlRuR0h0TXFlMDRxUzE3M0xRMXJSSW5t?=
 =?utf-8?B?VVJ0QVgrdmJOMzdRcnh6UjR2aVJyMms1c2g2cHpWaThjejBxbWhVY0ZaQUNa?=
 =?utf-8?B?b1VXZXd4Y3BPa2d4MnlCNGM4MVV4aXZwa0hJOFJic3ZWZitocE41M1czenN3?=
 =?utf-8?B?YjB6S1JkdGZ3ODFackptdkFpWjNXamhpT0cvMW5BdTZMTitVWDZMVmZlRWJR?=
 =?utf-8?B?T3pQWmhxckpoRS9leUF3QU43REN0V20rSkFPTUpDaEhHLytZK1FDTFZ0V0Vu?=
 =?utf-8?B?ZDNWUmhPZW51Qnd6ajFlWEtFOU02N3RMdzBiNTBHUTJXSnVIM0Fzc0owbDFm?=
 =?utf-8?B?S1MrZ1Y0ZWNQdVN6QVMzRUpiZlI2aTRQOTBSNUhsdzk5K3BSTGxxWU1kdUh0?=
 =?utf-8?B?czNjbGdTaWNnM000MEllNXR0SnZYeW1rQnhTQUh3NXQ1WlhTYktxTmY2VGRy?=
 =?utf-8?B?RXJoWUVpQ0RvaDlCWjRsTU1yOWVTK1dVd3pzR1JMV3U4azE5c0phc0dMckl1?=
 =?utf-8?B?enpZV2hJTmluWjZRM2RnSi9ObFczTjNseVpTdHZRWll0ZkFpcjhwd2ZtcUFm?=
 =?utf-8?B?TTFzL21tOW1jNHhhYWQvVkNKbHJ1SVkwcjNZcE0xOVBGNlg5RFRKUitKZDdk?=
 =?utf-8?B?elpCQmFYU2FkOTVsMU5zSklsRHNKa0pmeFhXWGdpcG5EQlFrMVpGNmU5OCsy?=
 =?utf-8?B?YUNDODZabHB5YXhWZ0JwdENMejhIQ05QUGxIaFR5WGNuQkZPMW1HdVZOVTZp?=
 =?utf-8?B?bnpMdlBGaTYvSUFrbWZ4Z3VQVUpsbC9WOXJjc3VUZ2xBcDhHNTlWeEgxcUVz?=
 =?utf-8?B?Si9HS3RZY0JKcG5vNkJxZ0dGYzQ1WUlKM2xRMWh2TjU2YmtweS9tT2ROVDJi?=
 =?utf-8?B?bTJaRXIwSkt0V2FjTEtoK0JWanhmbnJ5YlJFay9xY3NSMnorc1lKYi9KZFJo?=
 =?utf-8?B?c24razBBUGk4Y1VUeDVhb2RaN29Ib2Y0VzN3T1NRcGJvYTlha0Foa0tYV3lK?=
 =?utf-8?B?L2ZkeGRPeDMrUFNyZmsxU2xmbEVETnZZblp5MW1RNGp4ODJiUVM2cVBxNVd4?=
 =?utf-8?B?cGovRzBjM2lLRnBhb2EyVFpTa1FsNEFqcTBWVnFVZ3RzQWgyZzBKWWR0Zy8y?=
 =?utf-8?B?L0JTT2pvMWlqT0FLWUVQZGZ1Y1o5bDBGSXFvMHdHQ3VTUW1iU013QW84b0pv?=
 =?utf-8?B?UWF1b2liTVZOS2VQQ3Vzdlhmc2lreGxNUjRwc2Z6dzByaVNxamFRR1pPOGd4?=
 =?utf-8?B?bWxsaHNIMndldTRHanhmbFNxR0lBNVVsSWY0dC9hZzNFV0tUdlovN2dIVENH?=
 =?utf-8?B?YXFMR0lXNUNUZUU5L3YvS2I5MUdWZlFxeHVZVE5YU2lEc3h3UGxPbEpGT1o3?=
 =?utf-8?B?RElFblZnRVFtRkJEN2VycDNuUXJxaWhXbmczRjE0c3FBS01nSWJVQ3Z1NFhx?=
 =?utf-8?B?Mmt4OVhGSTlpc0I3VitDc0Vrc244KzRSdG43ZnRPdXN3cmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(7053199007)(13003099007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlhGcVlVc2tFTXR5YnloeXhIWFBISnRJUTlIOG9XWWczWEFtUXI4Yi9Oc2c4?=
 =?utf-8?B?U2l0ZGRXT3hmV1lPUG5BSURUT2wxaEkzU1lIU2EycVhZK3VkZ3o1MHBIdmRI?=
 =?utf-8?B?RmRDaEJQM0ZEUjhHazk1R2ZYK1RTRUtRSnN6ZGJqZEJTWDA3a0J6SzNzNFlj?=
 =?utf-8?B?QmxzNzNmQ25Pa2cxSmhqTDlIbFFyQUtwdExQWWNOQ0Y3ZVpsck0zcWdua20w?=
 =?utf-8?B?M1lIdlBWYTM5YkdFYjhVZituZEt0R29yUXNxNGdkMXlvUmx5a3hsSzNNVTZZ?=
 =?utf-8?B?NWUyK3RhemV3dGlObFZKUGhveUJ4K3ZycTNlQW5rZEhZYTlQSThMSWlEVkwy?=
 =?utf-8?B?UWJVbi9YVXdQd3pEcjRqMEFDVk04NE8xK0prWjdaOVN0UEdra29HK2dqdnY3?=
 =?utf-8?B?N2RRdEw3RDZ2YUxhYWwyT2J5dmNvT2ErZE5yU1JRMDQycDAzWVpyaTJIS0ND?=
 =?utf-8?B?YTJ5ZFlSZlBabTZkejB1R0pGRUdmc3dveHU4QnYvYUtIU2wrVi9aclhZVUdt?=
 =?utf-8?B?cGdOejhuWWRzM2FjOFdWdENqVUxtWjFsb1dSYzJTRVpQOHRLYy82ZEJ6dUtM?=
 =?utf-8?B?SjlCeXRxTy9HYjJHbkJPK0dmTUlNRWVvejRLTXo2YWthclpmU0J4TmV5QjFB?=
 =?utf-8?B?ZmRwSVRZdkJmZWpEQXdhT05oZExrNWxmc0RMUGJNNndqSE10YlBZYTVBbGIz?=
 =?utf-8?B?TzM1cEtwRDIwbFVaQkkzUTVUazF2SkxmVzI4bHZsVlFld1Jyeks1R0c1UTZk?=
 =?utf-8?B?bmh3dmgzVE1UWU1jVkJRd1pTV0xNWmlwODh6dlBJWHZPRzlxOU9odUtNRE5x?=
 =?utf-8?B?WkJ4eGRqOWUvaUFBZC83L2FFdmNGVUpVNU1ROTE1L2srLzJ1L05Kckp4Y2Rj?=
 =?utf-8?B?UXJaSGJlNDRkd0V6R3NwQnUxaHR0anZUSWZHd0NLMmY2bU5CZ3prVHNlMnVO?=
 =?utf-8?B?M1YzS1hKWU16cjBYVHJ5dmNGcjVOZE01VDZucklScitoaHNubzV3b1FQRnlG?=
 =?utf-8?B?MWtXZGM2TEtKL2J4VkZEVlpkazZjNk5rN0J0V0JBU0lldWtQYWdwdkZ2SDJH?=
 =?utf-8?B?dXoxVUdmcHY4K1VMMDBDTmVvL2FUYUpRVDg5TkJpWDU2djI3ZDhPVlpNdXpl?=
 =?utf-8?B?R21BdUtVaE1NNWcvcVAwNStIekZtdjIzbVQ0a3RMc3VpMkowWEI0Q3VvWCtF?=
 =?utf-8?B?WWowVlNxSjEvNFNiMEhsWHdyeFNUVTZOVXBoL0NTUS9IQk1hQVNVUUtNR2Fm?=
 =?utf-8?B?eEVnN3ZqUk12a0d5b3JoT01Sb2lBZHYxTjFVaml5VmpNQjFVY0ZYS2xhREph?=
 =?utf-8?B?N2N1T1Q4TzNnTjlWT1QrQ2NoMzhMU2pGdUt2UndEWW1ZVVFLM2JQM2JsWFF0?=
 =?utf-8?B?aHR4VnNKMW9ySXBnZ2JoZDl3a3R3cmhoak1JVlRzZmxNdmFOdXBuZ2VrZW9s?=
 =?utf-8?B?UkJGcmFzK252a0t1NVJjUTdsa0theDQxd0ZGZloxY0NCbXMzT09WUEtZcnJj?=
 =?utf-8?B?SEV1KzUyRFh3YmxOQ1JJZDZaTVNrb1NPWGQycFg5bkpCaFA3YVZWUXRBdGgz?=
 =?utf-8?B?VnhyTzU1THNzZ2tqeWhOTmhLK0xSQ0pyaDNjcHliTTZPemx4aDFTUEF0eDZq?=
 =?utf-8?B?TGNpVEh2aTk5TFhBcTBVQWd5N0xHVWt0bXJLcGE1RHdUVWVQbUF0SXNaWVpt?=
 =?utf-8?B?cUcrZW1kbUVLSHUvTFJwSThma01qYy9qYzNHS0VWRzJPcTNBQ1hHYlNWOXFJ?=
 =?utf-8?B?L3c2TjZTc2VsWkZWcnNRQ0hhWURBVHFJeGQ4WXdkalhEcWovYkNGZHhTR001?=
 =?utf-8?B?Umc1Y1VrNXpjMkhhZVMwaEI4Unpnb0NFR29NenczSkhycy9mM3FHQkFwaDFX?=
 =?utf-8?B?YldPUG5zWkQzYXpLUENKdk5WRk1UUHY3UXdHZXRWaHRyYXh1VWowTCtSRzIw?=
 =?utf-8?B?Y2RFZk5WRVBlK1BEUUd4SHNzSlJydy8ybzBCUjkxL3FYZUFYU3dnYi9OWmVl?=
 =?utf-8?B?ZVlFRkJSQmN0M2hHUUVZMmpDVERNaHhPQVQ5ajZzRHhxUytZdi91S0tSUFFW?=
 =?utf-8?B?MFZUSlpSeWlxeEdpT29Ndy9jNFdNd2Y2QWdITDBKWjFlMjhzd09TWDZreDYz?=
 =?utf-8?B?OHZDY1cvVnRCK0Y3bUhQNDh1Vmx3ZStkdmlYMUdFVTRFK0NCOTd5TVoxRHdU?=
 =?utf-8?Q?HfN5tBPT6Ky7NUy7rMW3U8ZKLcQs/zcWbNz0Hn5M+Maw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b502ada-80bb-49e2-6831-08dd45ede361
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 14:03:38.0782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l6mApZ7LBY9nk88dESzmx7ni2PdrsUIWLbN4qNAZ3B69YPmBGkV6BL0aH/q8zG765Dxirqt7WfqJi1a2gCXhrcUt0Gjxnl2yMrKyjwG3T9c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6964
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

SGksICAgIA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDQzMTIvICAtIFJlLXJlcG9ydGVkLg0KaTkxNS5DSS5C
QVQgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkgTmlrdWxhDQpTZW50OiAwNSBG
ZWJydWFyeSAyMDI1IDE1OjAzDQpUbzogSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTog4pyX
IGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9iYWNrbGlnaHQ6IGNvbnZlcnQgdG8g
dXNlIHN0cnVjdCBpbnRlbF9kaXNwbGF5DQoNCk9uIFR1ZSwgMDQgRmViIDIwMjUsIFBhdGNod29y
ayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVza3RvcC5vcmc+IHdyb3RlOg0KPiA9PSBTZXJpZXMg
RGV0YWlscyA9PQ0KPg0KPiBTZXJpZXM6IGRybS9pOTE1L2JhY2tsaWdodDogY29udmVydCB0byB1
c2Ugc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzE0NDMxMi8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+DQo+ID09IFN1
bW1hcnkgPT0NCj4NCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTYwNjMgLT4g
UGF0Y2h3b3JrXzE0NDMxMnYxIA0KPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09DQo+DQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPg0KPiAgICoqRkFJ
TFVSRSoqDQo+DQo+ICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3
b3JrXzE0NDMxMnYxIGFic29sdXRlbHkgbmVlZCB0byBiZQ0KPiAgIHZlcmlmaWVkIG1hbnVhbGx5
Lg0KPiAgIA0KPiAgIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhp
bmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KPiAgIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0
NDMxMnYxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gKEk5MTUtY2ktaW5mcmFAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnKSB0byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcg
ZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+
DQo+ICAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MzEydjEvaW5kZXguaHRtbA0KPg0KPiBQYXJ0aWNpcGF0aW5n
IGhvc3RzICg0MyAtPiA0MikNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+
ICAgTWlzc2luZyAgICAoMSk6IGZpLXNuYi0yNTIwbSANCj4NCj4gUG9zc2libGUgbmV3IGlzc3Vl
cw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hh
bmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ0MzEydjE6
DQo+DQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4NCj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9u
cyAjIyMjDQo+DQo+ICAgKiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoNCj4gICAgIC0g
YmF0LXJwbHMtNDogICAgICAgICBbUEFTU11bMV0gLT4gW0ZBSUxdWzJdDQo+ICAgIFsxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYwNjMvYmF0LXJw
bHMtNC9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+ICAgIFsyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MzEydjEvYmF0
LXJwbHMtNC9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+ICAgICAtIGZpLXRn
bC0xMTE1ZzQ6ICAgICAgW1BBU1NdWzNdIC0+IFtGQUlMXVs0XQ0KPiAgICBbM106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2MDYzL2ZpLXRnbC0xMTE1
ZzQvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbA0KPiAgICBbNF06IA0KPiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQzMTJ2MS9m
aS10Z2wtMTExDQo+IDVnNC9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQoNClBs
ZWFzZSByZS1yZXBvcnQNCg0KDQo+DQo+ICAgDQo+IEtub3duIGlzc3Vlcw0KPiAtLS0tLS0tLS0t
LS0NCj4NCj4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQ0MzEy
djEgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KPg0KPiAjIyMgSUdUIGNoYW5nZXMgIyMj
DQo+DQo+ICMjIyMgSXNzdWVzIGhpdCAjIyMjDQo+DQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlOg0KPiAgICAgLSBiYXQtdHdsLTE6ICAgICAgICAgIE5PVFJVTiAtPiBbQUJPUlRdWzVdIChb
aTkxNSMxMjkxOV0gLyBbaTkxNSMxMzUwM10pDQo+ICAgIFs1XTogDQo+IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDMxMnYxL2JhdC10d2wtMS8N
Cj4gaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+DQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlQGd0X2hlYXJ0YmVhdDoNCj4gICAgIC0gYmF0LXR3bC0xOiAgICAgICAgICBbUEFTU11b
Nl0gLT4gW0FCT1JUXVs3XSAoW2k5MTUjMTI5MTldKQ0KPiAgICBbNl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2MDYzL2JhdC10d2wtMS9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlQGd0X2hlYXJ0YmVhdC5odG1sDQo+ICAgIFs3XTogDQo+IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDMxMnYxL2JhdC10
d2wtMS8NCj4gaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndF9oZWFydGJlYXQuaHRtbA0KPg0KPiAg
ICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gICAgIC0gYmF0LW10bHAt
NjogICAgICAgICBbUEFTU11bOF0gLT4gW0RNRVNHLUZBSUxdWzldIChbaTkxNSMxMjA2MV0pICsx
IG90aGVyIHRlc3QgZG1lc2ctZmFpbA0KPiAgICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2MDYzL2JhdC1tdGxwLTYvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFs5XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDMxMnYxL2JhdC1tdGxwLTYNCj4g
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPg0KPiAgICogaWd0QGtt
c19waXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2U6DQo+ICAgICAt
IGJhdC1kZzItMTE6ICAgICAgICAgW1BBU1NdWzEwXSAtPiBbU0tJUF1bMTFdIChbaTkxNSM5MTk3
XSkgKzMgb3RoZXIgdGVzdHMgc2tpcA0KPiAgICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjA2My9iYXQtZGcyLTExL2lndEBrbXNfcGlwZV9j
cmNfYmFzaWNAbm9uYmxvY2tpbmctY3JjLWZyYW1lLXNlcXVlbmNlLmh0bWwNCj4gICAgWzExXTog
DQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NDMxMnYxL2JhdC1kZzItMTENCj4gL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAbm9uYmxvY2tpbmct
Y3JjLWZyYW1lLXNlcXVlbmNlLmh0bWwNCj4NCj4gICANCj4gIyMjIyBQb3NzaWJsZSBmaXhlcyAj
IyMjDQo+DQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiAgICAg
LSBiYXQtYXJscy01OiAgICAgICAgIFtETUVTRy1GQUlMXVsxMl0gKFtpOTE1IzEyMDYxXSkgLT4g
W1BBU1NdWzEzXSArMSBvdGhlciB0ZXN0IHBhc3MNCj4gICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYwNjMvYmF0LWFybHMtNS9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gICAgWzEzXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MzEydjEvYmF0LWFybHMt
NS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gICAgIC0ge2JhdC1t
dGxwLTl9OiAgICAgICBbRE1FU0ctRkFJTF1bMTRdIChbaTkxNSMxMjA2MV0pIC0+IFtQQVNTXVsx
NV0gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2MDYzL2JhdC1tdGxwLTkvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFsxNV06IA0KPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQzMTJ2MS9iYXQtbXRscC05DQo+
IC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4NCj4gICANCj4gICB7
bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9y
ZWQgd2hlbiBjb21wdXRpbmcNCj4gICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVu
Y2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLg0KPg0KPiAgIFtpOTE1IzEyMDYxXTog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8x
MjA2MQ0KPiAgIFtpOTE1IzEyOTE5XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjkxOQ0KPiAgIFtpOTE1IzEzNTAzXTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMzUwMw0KPiAg
IFtpOTE1IzkxOTddOiANCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1
L2tlcm5lbC8tL2lzc3Vlcy85MTk3DQo+DQo+DQo+IEJ1aWxkIGNoYW5nZXMNCj4gLS0tLS0tLS0t
LS0tLQ0KPg0KPiAgICogTGludXg6IENJX0RSTV8xNjA2MyAtPiBQYXRjaHdvcmtfMTQ0MzEydjEN
Cj4NCj4gICBDSS0yMDE5MDUyOTogMjAxOTA1MjkNCj4gICBDSV9EUk1fMTYwNjM6IDM0ZjExM2U5
ZmVmNTQ2MTM0ZTQwMmU3NjU3ZmM0N2U5MmZiYTU5ZGMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9nZngtY2kvbGludXgNCj4gICBJR1RfODIyMzogY2NmZTA0Mjc4N2IwODJjMDY0MDJm
ZjlhZjI1N2Y4MzM4YjhlZGQ1ZSBAIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aWd0LWdwdS10b29scy5naXQNCj4gICBQYXRjaHdvcmtfMTQ0MzEydjE6IDM0ZjExM2U5ZmVmNTQ2
MTM0ZTQwMmU3NjU3ZmM0N2U5MmZiYTU5ZGMgQCANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcvZ2Z4LWNpL2xpbnV4DQo+DQo+ID09IExvZ3MgPT0NCj4NCj4gRm9yIG1vcmUgZGV0YWls
cyBzZWU6IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDQzMTJ2MS9pbmRleC5odG1sDQoNCi0tDQpKYW5pIE5pa3VsYSwgSW50ZWwNCg==

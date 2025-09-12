Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FFAB55018
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 15:54:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A27210EC57;
	Fri, 12 Sep 2025 13:54:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HjlpKs6e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6210210EC57
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 13:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757685271; x=1789221271;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=COcB1WnreNM2rmd5Fyrz252a2/SakfBu122A7L8jqGs=;
 b=HjlpKs6eYIxVNGCzxiRFC975uUQb0N2mS6+VUCyKmkK76BC3qqlg02+d
 du2ifUrjAf1qICmddul6NhpC1KoIPZW3PWZuoz8GYJ8eVAtKWrmtaVOvL
 pUIOAwt8D0QU13jagDHY4QSeHeg1KG9HapbnvymYa0Y5rumzjkvwlZOE7
 5K8LJpGVSVPFP8VgO6U01OLZMqnfXq3na3yJoL/Kz32WTbPQuWYwCRI5B
 HNoy0BiGZKHlKr7SWCSrKGJp+IFU+dzIw081FMjYNb6TwRn5Ezz96GQEO
 TocOmVkNAvAw8z6GXBV6+E7Kb1sXOyBLNWy3nUV5INusthtKzFcESb34J g==;
X-CSE-ConnectionGUID: K/v3uHkHQFmqjS5yUgTMjA==
X-CSE-MsgGUID: toL30razTp2HWzjWfMTqTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60093370"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60093370"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:54:31 -0700
X-CSE-ConnectionGUID: FzlKQbODRKSPcgxmJXAfBg==
X-CSE-MsgGUID: M3/LSxafTw64E+eFaHAFdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="174750483"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:54:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:54:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 06:54:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.54) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:54:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jf6bpEUsd1KJpwwb6UHTaWHPkIQRkmrom/7Ij3NxhJvJDe3myNcQ0YSPI+KmjsMKF8RCtBtwpI5TV+CLSB36tJqYjIuzYh7Vsh5pxaZHtnctR+EfC1OMdiEFNFn5Gs2L5zJQ25CAFffTSpOm7z8I5UCU8dnpZJ+z5g1WzGTgZpSnDbRcdQMA9YytEqmaRIB3rXnfMyJD00rE6tfoW+zhbGbCjoDrTk6j9QYb6M1o4v0W76AL377RA08KYcRXj7uOd3h/bZk/AUT2LEijZeU8wI0FVNcBtIvX7L+mJfmgCHsiALqxoBbt04kNzhub5f3FqbM6oaxODsJRtuFsLjhVNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=COcB1WnreNM2rmd5Fyrz252a2/SakfBu122A7L8jqGs=;
 b=cEMo48oXHiObS8aOz69mkLAe+QequPLoAFDOCxcOAP77D1D6ftWkXCd0TUTsXLRRCbg9f9qf9T+d85aRkmYxplZm8GN298Qh3keYezd9UiDgO7foZsMp2qN+ZLvVcfyzQQLJPoxSsPV3wHot6IGJYg1RsVUovgUzcvTnijXXJhbSEScn7IlgpKlWXwJf11g5c00yhhPWG3JO4940oUe3tz9ULMrq1kABwCCGL+zDuGb3Euifye6kmM6BJCTRb1paxsYHdhaZnnpA/cfzTvE8WA6C2lAsHk7qtSGpVPxPDjqwZCmC7zyEgWsjC55tDUE3PthltB8pW39tBu1GNsCWJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB7365.namprd11.prod.outlook.com (2603:10b6:208:423::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Fri, 12 Sep
 2025 13:54:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9115.017; Fri, 12 Sep 2025
 13:54:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 6/6] drm/i915/pm: Drop redundant pci stuff from
 suspend/resume paths
Thread-Topic: [PATCH v2 6/6] drm/i915/pm: Drop redundant pci stuff from
 suspend/resume paths
Thread-Index: AQHbkr/Bb48FSiF/x0eMzIGiF9aom7SQs/4A
Date: Fri, 12 Sep 2025 13:54:25 +0000
Message-ID: <54f8c556a05cf37a79b27ffe58f5b0b6cae4f987.camel@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20250311195624.22420-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB7365:EE_
x-ms-office365-filtering-correlation-id: d80f21c2-739e-4e9a-e169-08ddf203e27d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VmdBZEk3bFIrNGRUK3liQkVoaUNRTndPWmxZb2liSklqeFNIR2NWdXZTWGNO?=
 =?utf-8?B?TndsNExmbWNOcGYzREdJb0pQYjIyM3dJaFNNMTZkOUJ0eDdNL1FucGZvZnNk?=
 =?utf-8?B?c0JhREU0Um41U0xmWUtsc1dqeElZRmx6TzgzY0ZRbHZ2QVBnb0lEUmRaM3pE?=
 =?utf-8?B?WE56QzcxRjh2TGlSRStTTEY0UWtqUkhFSjV3bHVtaHZRUkk0ZXdNM2IyeWFH?=
 =?utf-8?B?NHRDUFBjb014QkFCZnp3QTI5VW5EU1N5Mk00MnN6VVBoc2k1Qk4rM3pPK3Vp?=
 =?utf-8?B?b1BReVJTeXJ0T1VyanFPWG1jaE9lQWhRMjVrcGgxaWxiMFJwQS80YTdtd0ZS?=
 =?utf-8?B?NGtYVUJFampxczBGWGV5WFI4Zms5clZmZGdNTmlMYlY1UUNEQzA2Um9Od0Nt?=
 =?utf-8?B?WEpuWEs2dEpMQVgrNWV1OGxZQWJQdXZWNVZNUHVveGdVSFJTU291NkNLdk5k?=
 =?utf-8?B?ZlRuNEZsL0tybGh4aGxrelpZRTdKMEJYaVlOaDFVQW9UalZ0Skd6Qm93Y3pn?=
 =?utf-8?B?LzlGdy9ZSHplK2hlK0phYWI3ZWthcHdzVXZiRmJ6YUJTRXk5ZWYzM0ZQTjhE?=
 =?utf-8?B?TUFyaUsvem5rT1JjSnh5aWw3TjhUbW5KM29kbVNMa3pWQzVhRVJPSWlYd0ph?=
 =?utf-8?B?WXdYWnkzUGYra3d4MlJ5Z0JFaTN6VnBQSmFUQXFZQVJudmhRR1M5LzFhNzBJ?=
 =?utf-8?B?NTZvSnBDYzBlKzQxRy9jZXZqTDQ2NUpKcS80NnFPeW9LbnduYmRYWTZvZU53?=
 =?utf-8?B?cFNwN09FengwWm9lR2hqenU3NHBhamEwNUpYSGc4WkdCOXZwNFhGMXlZK1ZP?=
 =?utf-8?B?aXVqakhMNnV1bHVmdzc5ZTlFNVBjUzEwZGhmNVFkRDBIdERObjdBTHdJa1Ju?=
 =?utf-8?B?YXVQZWxLNm5IeTh1MGE3M2daQTlPMzQvQU1JYmtmVEttWHRiMGJ1a2M2M2ZQ?=
 =?utf-8?B?b1UwMlpsZ2lBYnNwTlMrYjZTYy9QajR6bTl5aFg1NjcyQVBKSmNIODlpK2JG?=
 =?utf-8?B?RzBzY3N0UTMvR25jL2ZVUW56L01HclRTVndqenFIOFdDLzB6bklPWjZEU1BL?=
 =?utf-8?B?cXNjNXMxNGFoTHppeU82VjJhcUZTM1o4UTlvWjVPMEtJYjhPdURTVERPZWlz?=
 =?utf-8?B?aE43TVVJWnlxc2lkVmsvNWd5RzYxRmFmMkRUdDN1dFBnREZQZ0lrRG4xQW1L?=
 =?utf-8?B?TWh3RVNCRkkvdXV3U0hZZTIxbFRram5vd0V4ei95bmRBWmRMdzdKNitmamlX?=
 =?utf-8?B?cnd0T29NZVlDTFBOelpiTFFydjQrUHFUSVNEeEQ0QmVXL3J3Tnd0Wi9PaHFJ?=
 =?utf-8?B?SW8zWk9PU3E3R1ZxRU1NNmtKU0Z5d0t0L2NZeHZYa0RFdUdUZERDMnNMMXp1?=
 =?utf-8?B?bE1kMzRhYnBUTGlCc0RyVDdaZ2w1dTYzbUxtNzIxWkUwaVA3VElwZUpuWVY2?=
 =?utf-8?B?TXNSa2F4V05JMEtMZkpOT2VpR1VuVmhBNVpuVDJFQlpib2tEc1hNb3M2cWty?=
 =?utf-8?B?WlkxZUJnWS9ubUtLTnNoQjlKeHJLWFFWWGdhenRHbmlPY0VGNWF6MlZpdjF5?=
 =?utf-8?B?R2tjRk04WFh5WG51MWp3QTMxeTJrWlp4cGVkZG5HTkhpWGhhNFR6aCtLdlZz?=
 =?utf-8?B?Ri9XWVkxRndaSy9WdWRFTVdQT2JNNFRvQnJHeUtCa1N0dkdIRlFTMWwyZ3lY?=
 =?utf-8?B?Ylk2M1JmZXROanplbXFYTXpNU1dpRVQvR21iNnl6WkxqQWZTU0pPS3FkVzgy?=
 =?utf-8?B?Y0lzSGNvdFY3d2Z0TzJMY2drYWxkSVJIUlZtUDQ5STdKMkpWZDg0WE9VVER0?=
 =?utf-8?B?V2g3OXU1MjN3TjVURkd5MURxNW5zR0YxOXp1eitxbEZDTC9GTkJXMUgxVHVr?=
 =?utf-8?B?N1dpNmJhSEZUeW5FOUJsRDBoMGZtUW9SamNOUDkrK09FRFFwVVhGTnhvZGdp?=
 =?utf-8?B?Y2Z2a3ZNcS9rUlBlTjJKZWRESFNtbE1LN0FVblUzajYrZVdwMzFXRjBxQk1z?=
 =?utf-8?B?V09YYVk4UVBRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmlYTDE1bklOQ3VUUFhXdkVwMDlSdy95clBhYXFLT05rYy9aSkFxYVZSS3Ir?=
 =?utf-8?B?N0dzNjRkcmtpS3ZUTHUvSlZQcTZiakxKanEwdkF2Tnh2SStiNzE1ck9WODhB?=
 =?utf-8?B?cjRzUWNJejdOU1YvVTlxbVE3MmRuWnhueWVOenRUbjcvd0Y2QjNDS1UzN3c2?=
 =?utf-8?B?aGtGWUJCV2ZuYTdMbkZ5Q09XWjdRZ2RNSFhWMDAwb0NpWUs3Q0lqL2xySUVj?=
 =?utf-8?B?SlE1RmJUSDQySFM0bmU2RktuZHl0Tm9rY0NFQ0lPZ2FOamVYNGkyM1Y1azRt?=
 =?utf-8?B?SkdQWmxQTm1qV3pXVVZMVkNJWGRFL0xYaDEvU0djQndXT2ZyM1BQTTZ1TGtS?=
 =?utf-8?B?SDJKK25DSlpTT2dSRWxWRDQ1Smw3bU5JTXFneVVrblZkczVISWhZTHMyaXUx?=
 =?utf-8?B?aXB5bFJvS2dkSG1lemR4d2czTUV4NjcvaGw5YXgxSUJCTEw4NkNRLzBqYUdo?=
 =?utf-8?B?ampMNGZ4TnVVOUFKMFg2a1BPdExxUTVMRWhtQVdGNDRBVHhQaWJJRk1SaTNP?=
 =?utf-8?B?RTRXcTFpTkFBdHRKM0xhU1JWVEc1RFU2QVhyVFhJalZkMFU5dUpRdXExZ3pN?=
 =?utf-8?B?SzBMamdmbXZXYmU0M2NmYURxOWZ3clpsMGJMRXUzOXFmbHIwblB2Sk5pcmdU?=
 =?utf-8?B?MTd5aTh3M3FGK25XMit0RFlXSU5HRlRNWndWNGUrUGdhaENNK0VCNVo1YnhC?=
 =?utf-8?B?NHgrbXpMakU5QzEydTF3VXkyckJRcmN0enNBcDJlREcrcFJyNGVLQkNLc2l3?=
 =?utf-8?B?MTNuV1ZSZmdpOTl1cSttS2VHemdpVWVKVDRheEY0RjR5OW9palU4NkMydkRO?=
 =?utf-8?B?MUpIbThQbWpnRytLekVKMHl6WDU0RHVFWU1tY2x5bXRaMCtodXF6QnUzSldU?=
 =?utf-8?B?Yy9XNlBpbDhCZExaTDJYMTVxdWJCUTIzaUFoemZOMTNaZTFRRzc4L1A3d2Fm?=
 =?utf-8?B?bTVyUmtDSVByN2NiSW9aQWYwSXVlRzZlRU5LZGpDaEo4K2Y0ZHI0VXE3WC9j?=
 =?utf-8?B?cXZHR1didmVSWFpZNlZyRnAyVzRsSHUzaGF1UE95aEkwQ1ptZU90UnNTS0Fj?=
 =?utf-8?B?Lytsc3lqUFZwUlYwcnVqL0E1QmFOREI2SUhQdmxzeEF4NW1FZWVNTFowQzRH?=
 =?utf-8?B?VWRtRHVSQ2VPVFZUUkRuck9pRDZtNG5vcGsxZ2o5Rk81OXUxOTB3c1VZUEdo?=
 =?utf-8?B?MEtCQUJBcjl4NUlVdlJCaVNjVDRndlFEamIrbXYvcVpoenY0aHlOZTdMSG9n?=
 =?utf-8?B?TGZjL1hlc3MrQ01NZTlKekJiM3pXWXRKNWlMdkNRSVN6NWpaMlFxb3ZvTVFn?=
 =?utf-8?B?anoyTVp0RmRoSGtYcTU4V0hjbDRTNTR0REs0VTdoS1BxUjJKcGJoTUZISFAy?=
 =?utf-8?B?emI1bzIraXRneVZWYVlucVh5M0lidG1uYXljQ0JuU05MY01xZDlkVGM5enAz?=
 =?utf-8?B?bE84aWFsSnFxcXA1R0hmV2JwSTNuSkgvSjk0dTAwc1JzL2FlUE5kSjNSTXAz?=
 =?utf-8?B?S09WVS9jSDZ0WUpLZUYvNldodUpxeXEzbDJKRmZlT0Z1Si9GZXZEZ3dyYStV?=
 =?utf-8?B?SWk0Ni9BWUc2czl4RWorRFZoUTZNUzZ4ZHdsRS9nZU5PMVl3TktPZ0RtN3lx?=
 =?utf-8?B?ZzZPYVlXckMwMTI4SkRRWlEwNGp5QjhySjFWaWNXeUNXMzhyMWt1Vmd6eTB0?=
 =?utf-8?B?Q1h5ZFAwWkw3R1hOUHc1MXlaRFM2em5yMVZjS3lrQWZ0ZWZLMmFxZTB1R1E1?=
 =?utf-8?B?NFQzdy9lV0lPelQwbnpDTURNZDhqOGZOZWp5YXpQUXgrQTVXTUVhT1VXb1ox?=
 =?utf-8?B?dUN1THYwZDhrS2VKZG1pK3VxeXAwUit5TFJTRHd6QXNkK0d3OGNwSEQ2czJx?=
 =?utf-8?B?TjlwcjZsNEwzeEhuTENxL2ZhWHoyN3o1L3FBMG10VzN0dWV5ZXVsODJqRk41?=
 =?utf-8?B?b1NwZ2hsK2xPU1YvYXZTYktWdGJteXFMckVKL1lJSGxYeGVSMWlLZFZtWkFl?=
 =?utf-8?B?c2t3NkhobEwrRzc2ZXZoZ2ErSzFVVm5Vdyt0RjEwclBST2dCcHBxNHNZamUz?=
 =?utf-8?B?bXhPbXNsR3JHMFhHOGtzUGZoQ1VFZy9HY3Z1bllYUXJsNnNnVnJjMHhqNmt3?=
 =?utf-8?B?MEtXMjR4UXNEOFhkc3laRUhJUFhyR1g5ZU16dGl4UDZyQVdQVUwxNVhxaXRJ?=
 =?utf-8?B?NEdMODN3V2cxU1pOZE93RU0ycDZVZ25pWERVMWlKR0d2eUlxa0owRU9PZ3Jj?=
 =?utf-8?B?SmFiUGRqV0dOU0ZBdVlobkFubUlRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D7C4209310717946BD7B3E2E89E5E583@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d80f21c2-739e-4e9a-e169-08ddf203e27d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2025 13:54:25.4666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jT96DWY0J1wcYamyfycebH5yq7MJEVx+srT7I1XKqF7b1crrokO/AYFdLjGiN684AlyeOokeLbVbxO6F3PwXgaBhQnw1Hg2E+O+zj4Q9Oz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7365
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

T24gVHVlLCAyMDI1LTAzLTExIGF0IDIxOjU2ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSSBkb24ndCB0aGluayB0aGVyZSBzaG91bGQgYmUgYW55IG5lZWQgZm9yIHVzIHRvIGNh
bGwgYW55IG9mDQo+IHBjaV9lbmFibGVfZGV2aWNlKCksIHBjaV9kaXNhYmxlX2RldmljZSgpIG9y
IHBjaV9zZXRfbWFzdGVyKCkNCj4gZnJvbSB0aGUgc3VzcGVuZC9yZXN1bWUgcGF0aHMuIFRoZSBj
b25maWcgc3BhY2Ugc2F2ZS9yZXN0b3JlIHNob3VsZA0KPiB0YWtlIGNhcmUgb2YgYWxsIG9mIHRo
aXMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJpdmVyLmMgfCAzMSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IC0tDQo+IMKgMSBm
aWxlIGNoYW5nZWQsIDMxIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RyaXZlci5jDQo+IGluZGV4IDUwM2YxYjZiNjk0Zi4uZDNkMWIyZDA4MmRkIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gQEAgLTEwOTIsNyArMTA5Miw2IEBAIHN0YXRp
YyBpbnQgaTkxNV9kcm1fc3VzcGVuZF9sYXRlKHN0cnVjdA0KPiBkcm1fZGV2aWNlICpkZXYsIGJv
b2wgaGliZXJuYXRpb24pDQo+IMKgew0KPiDCoAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGRldik7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0gJmRldl9wcml2LT5kaXNwbGF5Ow0KPiAtCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gdG9fcGNp
X2RldihkZXZfcHJpdi0+ZHJtLmRldik7DQo+IMKgCXN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpy
cG0gPSAmZGV2X3ByaXYtPnJ1bnRpbWVfcG07DQo+IMKgCXN0cnVjdCBpbnRlbF9ndCAqZ3Q7DQo+
IMKgCWludCByZXQsIGk7DQo+IEBAIC0xMTEzLDIxICsxMTEyLDEwIEBAIHN0YXRpYyBpbnQgaTkx
NV9kcm1fc3VzcGVuZF9sYXRlKHN0cnVjdA0KPiBkcm1fZGV2aWNlICpkZXYsIGJvb2wgaGliZXJu
YXRpb24pDQo+IMKgCWlmIChyZXQpIHsNCj4gwqAJCWRybV9lcnIoJmRldl9wcml2LT5kcm0sICJT
dXNwZW5kIGNvbXBsZXRlIGZhaWxlZDoNCj4gJWRcbiIsIHJldCk7DQo+IMKgCQlpbnRlbF9kaXNw
bGF5X3Bvd2VyX3Jlc3VtZV9lYXJseShkaXNwbGF5KTsNCj4gLQ0KPiAtCQlnb3RvIGZhaWw7DQo+
IMKgCX0NCj4gwqANCj4gwqAJZW5hYmxlX3JwbV93YWtlcmVmX2Fzc2VydHMocnBtKTsNCj4gwqAN
Cj4gLQlpZiAoIWRldl9wcml2LT51bmNvcmUudXNlcl9mb3JjZXdha2VfY291bnQpDQo+IC0JCWlu
dGVsX3J1bnRpbWVfcG1fZHJpdmVyX3JlbGVhc2UocnBtKTsNCj4gLQ0KPiAtCXBjaV9kaXNhYmxl
X2RldmljZShwZGV2KTsNCj4gLQ0KPiAtCXJldHVybiAwOw0KPiAtDQo+IC1mYWlsOg0KPiAtCWVu
YWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKHJwbSk7DQo+IMKgCWlmICghZGV2X3ByaXYtPnVuY29y
ZS51c2VyX2ZvcmNld2FrZV9jb3VudCkNCj4gwqAJCWludGVsX3J1bnRpbWVfcG1fZHJpdmVyX3Jl
bGVhc2UocnBtKTsNCj4gwqANCj4gQEAgLTEyNzgsNyArMTI2Niw2IEBAIHN0YXRpYyBpbnQgaTkx
NV9kcm1fcmVzdW1lX2Vhcmx5KHN0cnVjdA0KPiBkcm1fZGV2aWNlICpkZXYpDQo+IMKgew0KPiDC
oAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7DQo+IMKg
CXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gJmRldl9wcml2LT5kaXNwbGF5Ow0KPiAt
CXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gdG9fcGNpX2RldihkZXZfcHJpdi0+ZHJtLmRldik7DQo+
IMKgCXN0cnVjdCBpbnRlbF9ndCAqZ3Q7DQo+IMKgCWludCByZXQsIGk7DQo+IMKgDQo+IEBAIC0x
MjkyLDI0ICsxMjc5LDYgQEAgc3RhdGljIGludCBpOTE1X2RybV9yZXN1bWVfZWFybHkoc3RydWN0
DQo+IGRybV9kZXZpY2UgKmRldikNCj4gwqAJICogc2ltaWxhciBzbyB0aGF0IHBvd2VyIGRvbWFp
bnMgY2FuIGJlIGVtcGxveWVkLg0KPiDCoAkgKi8NCj4gwqANCj4gLQkvKg0KPiAtCSAqIE5vdGUg
dGhhdCBwY2lfZW5hYmxlX2RldmljZSgpIGZpcnN0IGVuYWJsZXMgYW55IHBhcmVudA0KPiBicmlk
Z2UNCj4gLQkgKiBkZXZpY2UgYW5kIG9ubHkgdGhlbiBzZXRzIHRoZSBwb3dlciBzdGF0ZSBmb3Ig
dGhpcw0KPiBkZXZpY2UuIFRoZQ0KPiAtCSAqIGJyaWRnZSBlbmFibGluZyBpcyBhIG5vcCB0aG91
Z2gsIHNpbmNlIGJyaWRnZSBkZXZpY2VzIGFyZQ0KPiByZXN1bWVkDQo+IC0JICogZmlyc3QuIFRo
ZSBvcmRlciBvZiBlbmFibGluZyBwb3dlciBhbmQgZW5hYmxpbmcgdGhlDQo+IGRldmljZSBpcw0K
PiAtCSAqIGltcG9zZWQgYnkgdGhlIFBDSSBjb3JlIGFzIGRlc2NyaWJlZCBhYm92ZSwgc28gaGVy
ZSB3ZQ0KPiBwcmVzZXJ2ZSB0aGUNCj4gLQkgKiBzYW1lIG9yZGVyIGZvciB0aGUgZnJlZXplL3Ro
YXcgcGhhc2VzLg0KPiAtCSAqDQo+IC0JICogVE9ETzogZXZlbnR1YWxseSB3ZSBzaG91bGQgcmVt
b3ZlIHBjaV9kaXNhYmxlX2RldmljZSgpIC8NCj4gLQkgKiBwY2lfZW5hYmxlX2VuYWJsZV9kZXZp
Y2UoKSBmcm9tIHN1c3BlbmQvcmVzdW1lLiBEdWUgdG8NCj4gaG93IHRoZXkNCj4gLQkgKiBkZXBl
bmQgb24gdGhlIGRldmljZSBlbmFibGUgcmVmY291bnQgd2UgY2FuJ3QgYW55d2F5DQo+IGRlcGVu
ZCBvbiB0aGVtDQo+IC0JICogZGlzYWJsaW5nL2VuYWJsaW5nIHRoZSBkZXZpY2UuDQo+IC0JICov
DQo+IC0JaWYgKHBjaV9lbmFibGVfZGV2aWNlKHBkZXYpKQ0KPiAtCQlyZXR1cm4gLUVJTzsNCj4g
LQ0KPiAtCXBjaV9zZXRfbWFzdGVyKHBkZXYpOw0KPiAtDQo+IMKgCWRpc2FibGVfcnBtX3dha2Vy
ZWZfYXNzZXJ0cygmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOw0KPiDCoA0KPiDCoAlyZXQgPSB2bHZf
cmVzdW1lX3ByZXBhcmUoZGV2X3ByaXYsIGZhbHNlKTsNCg0K

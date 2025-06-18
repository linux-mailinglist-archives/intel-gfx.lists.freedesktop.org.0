Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47761ADEE66
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D808310E84B;
	Wed, 18 Jun 2025 13:51:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VJbTqVGu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B319510E84B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 13:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750254700; x=1781790700;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=q3z3ucXNMKpiLkNPShFZQ9Rtm7fOuis1p4G7Z7pxvug=;
 b=VJbTqVGuDE2daUjD2BTBdKMteez95dp2u/C03BvNSSM/aLhgsXCUtmZm
 ca7sNPsV0cLiysuC6GNNjiN8rlRWMpupFMkdKAD1lQAIZyEYmUefxcPZt
 BUyofgph8KQTGgAAOnBSZSSLNkrB904aMHNj5Hfm3ynQLXXWVn2WY0aR/
 cfaOjl2J3qM0n77M3wQmxAbz2ZMXzvNBL7arXCkHxmH6xOu8dMPrY/vvU
 Ch9gZgEc6oEo/B0545dgVhAKP9j8sYhn1jV+UKBs3iLaNrS5C+ilR/9N8
 v0WB4BJUQRY7Pk4+tuZJf+QqBvmwreETWAKZ5eCmaiRBERv8kgTaQqf0H w==;
X-CSE-ConnectionGUID: NYwyOyvNRFuuYvq9bw+FSg==
X-CSE-MsgGUID: ytlhY221Ry2AHDztJ4XouQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="56275742"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="56275742"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:51:39 -0700
X-CSE-ConnectionGUID: q9TRANkgQB6G6xSrE73kkw==
X-CSE-MsgGUID: RNxqP9XqRqqvq1osUuu3Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="155394860"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:51:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:51:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 06:51:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.73) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:51:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PlULyCsK1V1iXbJcK1E/Zk1+O81zfOq6jMDgZ+hV0haTaId13El7482YdasyLT8XBegslzI5hc5AgqqTxra2PTY+YGu2b2Xd4j+ofvBpzqVkbW8ZVG1ES9AE67k4jk9xUV/EeNRUNng3BtK44hrCd5fKUEGVODES/uxNtIcGVGiy88xzgqcE1ZQaW8UiDz9NbD7+aZVj/B3RleCf74lZjLyJe44Bqx1s8txy8RFK/3kUH4bKyeVQNnuDuClqsI082H0Ig4x9hh7wZki0i7c++dvERkjjz8XcWEBvWPgvZ4PwPFeZx7H17Ig3qCxE9OdFS6ZxZW5/57QUfMvpQ/zwiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eYIRgtYwIDwjfeOvsUStFTXr/R2puSesL1HLBCj0ovU=;
 b=mcHmRq53Q7HOkoEeUpCBF3uI/zHL05JEEpL8LcXwxyLEMhONi8ckEp0TdS8J2yXthCn22Qt94P1oHIbQitWoMferuPSz9XqhnmLgeT9/7+mfINPvACo8nRLf2e0JGdLW6b1Zw6OzCAWJBcGnPIRpbUSYns3P1Ww55ftr2HfDLBui7pLZu0XFGKgnXanqy8x1/nEegkeAFX7aR4+hPCqjVgLvHhlF3cSDVuuY+OATehk7grK0KsCnhshzhuP6HkafT61QnxBollLOBRd3mxHc0KzlVw56X7XQP2yS+ud0YSes3PDxUym29NnMwk8T9jmMi2KZ0b0tqf8/bmeLGnjB1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW6PR11MB8412.namprd11.prod.outlook.com (2603:10b6:303:23a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.19; Wed, 18 Jun
 2025 13:51:35 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8857.019; Wed, 18 Jun 2025
 13:51:35 +0000
Date: Wed, 18 Jun 2025 13:51:30 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH 1/2] drm/i915: Move out engine related macros from i915_drv.h
Message-ID: <9b9ed5bbdb37470fa679c5baf961424c9cfbad11.1750251040.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1750251040.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1750251040.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: WA1P291CA0024.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::18) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW6PR11MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ce4c5ee-58d6-4212-df5c-08ddae6f3d34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NFNBdFh0VjBNb0syd3RIWlJWZTl4bFNQSWVGbnR6OFBXV2txRXNsdjA5b1Yy?=
 =?utf-8?B?eDV6MEFWMWVWaGozN01QY29RcHdUeXdacXVsdTFJUVdvVkYzdUFlTDFLMjVL?=
 =?utf-8?B?UXhsRlZnTGlSWTdBSnhmODdQeTBGWDVNMW9kaHc2OUFmR292ZUxVMDFxbXRU?=
 =?utf-8?B?NXlodGFUYW9MNmRiTlZKS09FR1B2b3RkL3NMU3hhRkFTcHcrVWtpUVJBVFdW?=
 =?utf-8?B?WXpYZm14SWtBSEhZSGtSV1JycGJDWjEyQWZsQzRnOW9YTkVZMkFFekNRR2J6?=
 =?utf-8?B?d29ZZTFzaHNmYlpiZEN0Z0FnMXZMb050cy9QQytDTzYxemlyZGYxV2NVM2I2?=
 =?utf-8?B?amxhNTNFY1BUSVZtbUFPeWY4T2FOdG04NXlEYnM3Y2UxaFNYVEFMUll4U3l5?=
 =?utf-8?B?WFFyTXNYdmN4M1ZTeUZUbVdMRldFSjZRQVJ5RTlXWVJNVFcvRHA3aGhjRGFD?=
 =?utf-8?B?ZVRVU1RmRm9ZazAvMytOVCtIbGh3VlVrK0g4V20wdmV3NzM1ejRISUc0Mytz?=
 =?utf-8?B?dkl4ZUpRSG83REswUjRJK2swZGFMbGdGbTR0WURQWnIraFBCN2h0eHFlNXJJ?=
 =?utf-8?B?TlpPT0xHQUtKd1UyeXFOQ1cxeHErd0VMbnRkNEZ2SkpIRHJVNTg1NE43Q0NG?=
 =?utf-8?B?OGJ1QWZoRTMzQ0k0OUc1aFRyMDgwZG93N1lvd29hUzJTMFlMTWNabkloWkVv?=
 =?utf-8?B?N0JUZWozS0JZUmpyY2hEc3kvN3Y2VTIrYVJTSEpnelBXQ1hmdFZOK3NSRFp6?=
 =?utf-8?B?NGg3eXN1NEdPTHh0VkljTWhRaEJXbEZyYkI2dDdNR2hJU21MaDJ6Z1BHdEEx?=
 =?utf-8?B?eEduMjFoN3lNWDNkS3R0T0xIdndFdjk2ZWV3Y1EzNnRnalV4T3BtQXVDQ1B2?=
 =?utf-8?B?YzVzSHcvMUtJRDk3cFZ6MkdDVmh5WFROOXVqbHl5cnFVVCtaWHpnYU5hKzRN?=
 =?utf-8?B?aUJEYld3bVFZbVRrZVhsYnZQeHJMNElpanFKaUt3M1ZPMjNZYlpSUlI3NTF6?=
 =?utf-8?B?dHh0WU9KMzhLR05iMnZ1YmJPaFBGdVpQZkF3NC9OK1RrREFFLzNQQkVyTWVV?=
 =?utf-8?B?ZmtyUDFWYTBzMy9rbWxKYzZEZ1dZbzZodEVlNXI3czJkM1laVG5GM204SkFM?=
 =?utf-8?B?cE5LemxQdE5neXpwS2Ireld4WS92OG8xVzFXTHBtRThQdENCNFhFblBYRWJp?=
 =?utf-8?B?ZnJPQmdaUVZ2QVRnaTk3N1hhU0dlQmlSYytjaXoyRWhPYkhWKzlEWEdYU2o1?=
 =?utf-8?B?c1FjS3F4cmJSRDZmOGRmc1djMVhNaGgxTDZKM2F3R2I4bWY3cXVpd05tSTgy?=
 =?utf-8?B?cmZHbWJ5TTRQM3hBRlN5M0tsTWYrUnBUSUxpUmZJUjI2OG9Zc05aeU1HbWR4?=
 =?utf-8?B?TXRMVGpndU1TTXMrU2R4d2hxUDdyc1IxSHhmZHJtUHBBdkJCYlk4QnE0YmRp?=
 =?utf-8?B?LzQzS0luYk5yTUxmUHR2NW9UaHBuNmtxcHlYZW44SnNXdVB0eDJNVW5LWTVN?=
 =?utf-8?B?L2tJeWZlSDZYQ1lJOThpdGJWVERmdkJobHdjTVhYMTJsTzhsTElrN0FJcTVX?=
 =?utf-8?B?UkZVd2xRRUd5bmRLQTNJTm1OUG9mUW1Pa1JtNk5wdVlMMVVDai9kS3V3cGRC?=
 =?utf-8?B?L0VrUWlQRXZ6R1RUTC92ZFY0YXBzN3d5Qldvc1lSVlk0eXQ4ZDg4aUMybDNK?=
 =?utf-8?B?K3VjQm13U1JGQzR6cHpDVFN4V28zNzFLbGplbXA1N1NlaWsvNCtOR29yeDIr?=
 =?utf-8?B?SjB1YTliRVNKS29yWTZlajlZUGp0cVlEbUNQQWlGSTZrcGZzbVpxcHdkdkNR?=
 =?utf-8?B?ZUFxZlN6TmhsSXdsTElOZjcxaUlIQktmQUVYOHp0MlBlZERnaWZMNnBLOHdN?=
 =?utf-8?B?TVNxOXRhQjM1bklSQTM5N25MOXpmSktjNUVVbk8zRDQrbUpPZ0JjNVVIZmJn?=
 =?utf-8?Q?cadK6pC9ZLk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjQxajBGbUFVR3NZbzN2MU5JN2t3eHN5OTJtTlFhdXZJL00ydzdvUk9PVUdD?=
 =?utf-8?B?ZHlaNFlkT2FpTjd4Sm92Q1FoZVl2NnZJR0FKRWR1dmZQa3NpRWNPenJIaElH?=
 =?utf-8?B?bFM3dkJqK2FleThEeURaa0J6bHdxNzZKS2xVSkFYclUwYXZ0akZTMXovQXN1?=
 =?utf-8?B?WGcwZ2dBRTNVNEI2Qzh6dk0xaS9ZSW9qV2hqVDZUMkJqUGEzeFR0eHlYa05B?=
 =?utf-8?B?UjFiOXh0Y0ZxcDJIeWg3ck1YVUJ4bmpHQmFTaWhCZ2Y1ZVBmYTZQeFR3Z0VW?=
 =?utf-8?B?MmltK28vOTkzeVQ2a0Rnc2hZRC91YXhUMUpNalJtbzVlODUwdTFGNk83MDR3?=
 =?utf-8?B?S0hNOG54RUp0RzhJbTJTN04rRlU2RFp1OGk1aGpwUlZHKzYya01Mdzc1S01L?=
 =?utf-8?B?ZTJkbjI0ZjlFb0tDTGtyQm05a1hlVUdHSXlrcFhVZ0RjNGQ0MW1zSEV5YzNk?=
 =?utf-8?B?MFZqdmpJQ1Z6cTk4MVBIYWpwTWFCVVNZSWtodWErSW05eGhsWWtSNHkyNUZ5?=
 =?utf-8?B?dzI2SkhHMmRKZjBqRitVa3lsUnNZWkdsc2hnd2FzT002OWRVejJNWEJOU3Y3?=
 =?utf-8?B?R2tKME9zUmtFV2xuRWRIOEsxb1VOc3d1S3lGQlRRVDJpRTNkYUk3TlZTaDhJ?=
 =?utf-8?B?SDFBWlhnRGVJQU9taGVlNkRNZ253dlVFTW4vMGpteGFrM1N3Tk5qOU5QNVNp?=
 =?utf-8?B?R24zRUpHM1ovVVBXRmxHTXcveXRkdjN5MjNCOWpPYnJObitEVXJsQkw2eFFH?=
 =?utf-8?B?Si8rQ25vWnEzMEZWN1RRQkpHV2hWaTQ2MHljODBDZ2IxN1BST05uSzlmWmJ3?=
 =?utf-8?B?VGlkVkVCVFdFa0ZIZkw1c1hRSEZZZG4wMzhhd21xaGlsbzVHQ1l6ZGVIV1Fv?=
 =?utf-8?B?dkk3cnFkRk85ODBna1Nwd0h0aGpkbUJkQkU3bmtEZmF5VU9Nek9FczBVUFN5?=
 =?utf-8?B?Z0FlWnFEZUNMSUE0eFZXUDJlL3ZLNDNBL1loVDltTnVCNm5NblNkWUtBbTBm?=
 =?utf-8?B?U1pFWHBUVGN5Y1lManZpVXEydEM0YkVHdnIwRXVIc3QwV1pLa1U0MlZTQlpn?=
 =?utf-8?B?NTl1RHJkeWR1NHlrREZHK3pZUzFEeWZEaHBROUFCcjI2Q1RQdGhQVTRIaS9a?=
 =?utf-8?B?TFV3UDdhNnN2cS9FQktGcEFKdUtudHlFMHh3aEFmejdwQjF2dStpZWVzakph?=
 =?utf-8?B?QmE3UWQxdEoxNG5FcmFvblI2Q0Yyd0kveDUrT3czeWV6QVRHKzExcHBlMHBa?=
 =?utf-8?B?ZmlheE1KY3ZrQ0NPSTUwUzRUbWZSRU1laDQ3b2RYYktJa1BiZ2hhKy82ajRC?=
 =?utf-8?B?NEJuSmU4endSdUxQQTc4TGVvY1p1OW5wN0RPSXRzU2hQNGZsNVRiRlVuQTk5?=
 =?utf-8?B?VWpLSnM0WG9LL21UTGRvVWhNd3pkL1I1SGpjb3lQZ0pMbHlpeW1zUGx6ZnIy?=
 =?utf-8?B?c3JvMklJS0syajJUZkgzbk9JeHROaFU2dEwzZXlGYys4S2RhWGY4NXVmekRp?=
 =?utf-8?B?ZUN1Y1NaYnowckZiUFdvN05kN09SdUlXVFpKSUpKVEpReXQ3TlBFcFFkcStj?=
 =?utf-8?B?U3JEYldEbnZVSHNnQmthcGdaMWRXK21teW14L2NTdzIvdXYxQ2FnK2tEUXVZ?=
 =?utf-8?B?dTd1VmlWV0ZGRDUxRjcrL0JkUGV0M2tFVjR3WUVpNHEvWE1xeGN0eFZkVVRN?=
 =?utf-8?B?aGFMN0d2dndyL1VWV2lGVVVPdXNhVXB4emwzUVJkbS9jWGVPZjJNeDhCZlUv?=
 =?utf-8?B?NFZ3eWdSd1BVVldXRTgrZkgycmxMSVZKeFIwM08vTHV4dXFwaUQ5N0pRanNk?=
 =?utf-8?B?Q0IzVFlpWmY3clV3N2tFZDNQb3V1NFhWaGgwbnN3VE9RQ2d2ak1uUFpjeDhv?=
 =?utf-8?B?OUJkUFdaRE0rUnFnZGNrYWxrL1NDc3JQRkZJVCtmcXhKcExwaXViS1Avb01O?=
 =?utf-8?B?RDU4TTV2KzZMQUZoN2lHMzhwSklacFpOTm9IRGxqNVhTdHRweGpneGFoS0Jt?=
 =?utf-8?B?LzBCSVF0UVg0QVpNUlVBdWxrNm9kb3Z1bGhZaFpjU3pBSzIvOGs5NVkzNHhG?=
 =?utf-8?B?VGJQUnJ3elFxWXBiWFZydVorVWM3eVRmL0poTjdVUDVDY0JQU1FYUm1nb3dH?=
 =?utf-8?B?UHAzSjY3UGxQZUdacElGYmJMeG15NEdVdGRpSU02UjA5WWFjeUFNTUNUbldh?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ce4c5ee-58d6-4212-df5c-08ddae6f3d34
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 13:51:35.0614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ePDMAxHwnsp72o4txxkznR+QSE+RcBiocXplZBc31njxjsRx77WLjGpiO7Sqpj0rKz5zaFr1sT9nVAti/LFP/NP2vHmCECyBgmNlrCa2ZWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8412
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

Move macros related to engines out of i915_drv.h header and
place them in intel_engine.h.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h | 31 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h        | 31 --------------------------
 2 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 325da0414d94..f6a98cf1e5a5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -79,6 +79,29 @@ struct lock_class_key;
 #define ENGINE_WRITE(...)	__ENGINE_WRITE_OP(write, __VA_ARGS__)
 #define ENGINE_WRITE_FW(...)	__ENGINE_WRITE_OP(write_fw, __VA_ARGS__)
 
+#define __HAS_ENGINE(engine_mask, id) ((engine_mask) & BIT(id))
+#define HAS_ENGINE(gt, id) __HAS_ENGINE((gt)->info.engine_mask, id)
+
+#define __ENGINE_INSTANCES_MASK(mask, first, count) ({			\
+	unsigned int first__ = (first);					\
+	unsigned int count__ = (count);					\
+	((mask) & GENMASK(first__ + count__ - 1, first__)) >> first__;	\
+})
+
+#define ENGINE_INSTANCES_MASK(gt, first, count) \
+	__ENGINE_INSTANCES_MASK((gt)->info.engine_mask, first, count)
+
+#define RCS_MASK(gt) \
+	ENGINE_INSTANCES_MASK(gt, RCS0, I915_MAX_RCS)
+#define BCS_MASK(gt) \
+	ENGINE_INSTANCES_MASK(gt, BCS0, I915_MAX_BCS)
+#define VDBOX_MASK(gt) \
+	ENGINE_INSTANCES_MASK(gt, VCS0, I915_MAX_VCS)
+#define VEBOX_MASK(gt) \
+	ENGINE_INSTANCES_MASK(gt, VECS0, I915_MAX_VECS)
+#define CCS_MASK(gt) \
+	ENGINE_INSTANCES_MASK(gt, CCS0, I915_MAX_CCS)
+
 #define GEN6_RING_FAULT_REG_READ(engine__) \
 	intel_uncore_read((engine__)->uncore, RING_FAULT_REG(engine__))
 
@@ -355,4 +378,12 @@ u64 intel_clamp_preempt_timeout_ms(struct intel_engine_cs *engine, u64 value);
 u64 intel_clamp_stop_timeout_ms(struct intel_engine_cs *engine, u64 value);
 u64 intel_clamp_timeslice_duration_ms(struct intel_engine_cs *engine, u64 value);
 
+#define rb_to_uabi_engine(rb) \
+	rb_entry_safe(rb, struct intel_engine_cs, uabi_node)
+
+#define for_each_uabi_engine(engine__, i915__) \
+	for ((engine__) = rb_to_uabi_engine(rb_first(&(i915__)->uabi_engines));\
+	     (engine__); \
+	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
+
 #endif /* _INTEL_RINGBUFFER_H_ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5e4c49f0d5d4..f69b64e06078 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -354,14 +354,6 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
 	return i915->gt[0];
 }
 
-#define rb_to_uabi_engine(rb) \
-	rb_entry_safe(rb, struct intel_engine_cs, uabi_node)
-
-#define for_each_uabi_engine(engine__, i915__) \
-	for ((engine__) = rb_to_uabi_engine(rb_first(&(i915__)->uabi_engines));\
-	     (engine__); \
-	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
-
 #define INTEL_INFO(i915)	((i915)->__info)
 #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
 #define DRIVER_CAPS(i915)	(&(i915)->caps)
@@ -570,29 +562,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_GEN9_LP(i915)	(IS_BROXTON(i915) || IS_GEMINILAKE(i915))
 #define IS_GEN9_BC(i915)	(GRAPHICS_VER(i915) == 9 && !IS_GEN9_LP(i915))
 
-#define __HAS_ENGINE(engine_mask, id) ((engine_mask) & BIT(id))
-#define HAS_ENGINE(gt, id) __HAS_ENGINE((gt)->info.engine_mask, id)
-
-#define __ENGINE_INSTANCES_MASK(mask, first, count) ({			\
-	unsigned int first__ = (first);					\
-	unsigned int count__ = (count);					\
-	((mask) & GENMASK(first__ + count__ - 1, first__)) >> first__;	\
-})
-
-#define ENGINE_INSTANCES_MASK(gt, first, count) \
-	__ENGINE_INSTANCES_MASK((gt)->info.engine_mask, first, count)
-
-#define RCS_MASK(gt) \
-	ENGINE_INSTANCES_MASK(gt, RCS0, I915_MAX_RCS)
-#define BCS_MASK(gt) \
-	ENGINE_INSTANCES_MASK(gt, BCS0, I915_MAX_BCS)
-#define VDBOX_MASK(gt) \
-	ENGINE_INSTANCES_MASK(gt, VCS0, I915_MAX_VCS)
-#define VEBOX_MASK(gt) \
-	ENGINE_INSTANCES_MASK(gt, VECS0, I915_MAX_VECS)
-#define CCS_MASK(gt) \
-	ENGINE_INSTANCES_MASK(gt, CCS0, I915_MAX_CCS)
-
 #define HAS_MEDIA_RATIO_MODE(i915) (INTEL_INFO(i915)->has_media_ratio_mode)
 
 /*
-- 
2.34.1

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BCy1E3mtMWoZpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E20D2695139
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="K/FJrK1F";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D43FB10EB67;
	Tue, 16 Jun 2026 20:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0233110EB37;
 Tue, 16 Jun 2026 20:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640566; x=1813176566;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=0mpBmWNRLwrrEkzaGKG9yeC3ae/Rc6TcYqcYwP9Lpl4=;
 b=K/FJrK1FRsl6C6GukpMpCMi5FMLUjsWnXXrr3ihJvBgPCntebXnv42m/
 O0dUdvw/N63WBJRMCqeoRKKFdWasda3wt58WcRcK8e4Qjs+9DYPuql6XC
 OSU8sFfndN0JIhTrYTQb7w9pZLFH14+43cGofmmzzuLA4WFiL3M1s5QJZ
 LQTrTQ+YlDL8FhMB7oN18IR3t38ZwtGI1nykE0BuoehsrdpI3vmdLyigK
 qN+FOW//6FN/aB5vuCXNMWEvwAM6hTzLgo+Klqp1WQZUVgqmpEF4RcMjj
 yDWyUeW4v5WK1XOvU3a9i2FB250Y20liOjeW0J0jaKc5kWfTlSi9UuJQO w==;
X-CSE-ConnectionGUID: 6wh+80ifSiKBHTZbAXDfbg==
X-CSE-MsgGUID: 0ZH+KDgwTku5IjH4pJG3Xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93913178"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93913178"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:25 -0700
X-CSE-ConnectionGUID: GC5vVBO/TMKmllurlQQ+bg==
X-CSE-MsgGUID: 8Rh9Et/+Q2+RrFZPPoyk8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="243711430"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:21 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ncZCjUnZdvfm5Hc67Do0Xjfpgyp9yH5zx9mxDg6xw9dfiMaiGAWA873GgdCEZYOs97bKlDcEpp4sEeo2CcBk6xTrTeuWjvMJUjYVhdcHtITdQ26VQQTEeLri0Gx4o+TUaSxFVQKxb27Vwyeh8preKcR3wjwSWnPGY4ltL87lYlpum+R3/956Fus0PAV1s8OP6C2Qa4yFjqMzAstfXaKl8N/QMG+GeVRVAfRWPmyj1HkDDniAKn5X6uCUWsU5q/Sr02BAD6i2Z6DyH5t5PDhw7bJqk5IN6jBKkrpkP0W/nLssUiZBL+TP3As5WSTUl68wPQV6ET7v/GVIoz2pAyrA7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=taDEtQ4DT6cBO4Wcu5ReJC238+5BWzF6NGgnDSfyuDw=;
 b=wHPkInfjk1DiFL67MKcPbP3TQHk89D9OdmZHCSnMS8hyoaPnqIU6K1w5eyu/surAU2ftCnQh7RA1j0M1R63ZmI/8pfPqjlsGkxu9ya3ag+mQkAGu/x8xxhRGRNQXiPs4Tlkegcxo06t421LB//66kaQChejpBrEr5fEie9Rtu3ZG+RP2WF7UXpToE0Cv6+AT2F3K9i9t/L+Xct1lKzj+/2kL4FxbmvgtE5ACjSSMNJ/41aySaDLH0lKM5DST1odlLn+swSXFtHk7obV6R/wF2KXAkOvLD463zFOxkb3Qo7b/mz0ulLucdnMOuKfAny38uMG+TJ44U97rszWQ0Bjb/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:17 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=
 <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 00/28] drm/i915/dp_link: Refactor DP link capability logic
 part1
Date: Tue, 16 Jun 2026 23:08:20 +0300
Message-ID: <20260616200849.3534628-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH3PPFE994B740C:EE_
X-MS-Office365-Filtering-Correlation-Id: b8cd6d26-98e5-45f8-d53e-08decbe324db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|6133799003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: /cH/LdVJMhj9hpM34Fg0MUudrPqGh7UAB6azo/7bB//gdlbvAP+uOLGHMJ55cBLkXFaLDzqlFZ65jeqJ7wjHyJMQjDv0G1llbRNtCBi2Xtx5Mggw6MlV31VsAVc35wD27XpYLNxu4CqLp/ZKejVeJmUv9xv42RgW7KujcMrjkmw8fOONzdv5RQcqE4vI286zBGL8udSdG4Grss/LPj6pu68UEL+hthLa8WfvDNkulliNAYE36FkopgAjRtsYE0B3u6IKwekiBD83MWQSfwEsxHrn7iiqlez+Mma5f5VukYZBfCbOESSVbqrJIuILpgTEU4a2U+oDfm22rkAn8QXUp1dWGoa0UHmHtqDtG8QUGZmd7UPjAGmTPaX0dIVAXIHnrtCfEYyNgMFgWgIcQQsyhPM8DHqo5gnZ+L8wVkudS5PNZvtIaLK1zEDRl9A23Ggr4uyTcKJynmVJSBemxpHv6O7zIEC+bnvy/6qs8vaZTeBYkh8nLOgUSMQM6eGXUcHP69sGzwtl9NEw9dpgpSjJtOAK6Ucu4QkHeiXDX6WFFjG9/f5C7c9pOew5L4AhA9Ffb20jwTB0H5HyzRNLjnNKte08ZXTE2q2Cih17vGwlLZsdY79EqyUMkLA0qbeHq5KHaWmdy2CHEwNdcAtDSIn17Uq3U4TF/KgCwkx1KS9+wvSNHqU8kG2jVz7Bn9tZDGGq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(18002099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2tmK3ZDTDJ3NVdJdUJkcDEyZG9rQy9TczE5REZqL0k5QlRQdis1SFZoS28x?=
 =?utf-8?B?elI2cVlLZms4cHljK2tnME5YaW9zTG1VUXhUa3AvVmlheXpwZklJZ3ZjV28v?=
 =?utf-8?B?NzNJV3hzZTBBTkRNWjNUeUxLRE9EUDQ4bmdIN3dZa0QrU3phVUN0ZXpaQkFu?=
 =?utf-8?B?OFdVT1lGL3VjdnY0Z2JaK0tzNjVPN200MFA1S0ZEZTNOaTZobndHOU5GWnVz?=
 =?utf-8?B?ZDRuSlpiTngzM0phTG5CVUp0RVlIdFNhWGlHaDQyK1ZwU25PRi9FL3JPV1hN?=
 =?utf-8?B?NHhXazFuRERFZlgwUURjUkxtREhFZWo3SXJUc3B6NGpjeXZncitXTzZyYXZ4?=
 =?utf-8?B?Z0thUEJvR3Jsd1ExdWJmV1ZZaEtDTVR0dTFqMnJjSCtQbU1MUGtBRDErcG1h?=
 =?utf-8?B?TVQ1ZEMwVmdaZVY0c2xud2F4a0pwZ2Q2UHFIVjhWWFVhRVJGSWtGNnlGc3c2?=
 =?utf-8?B?T2NRZFhSekdaTWF6R1pkcGNUekx0azBYQml3R1BvanVDUm5ndDZhSnRLdFFE?=
 =?utf-8?B?MER5N2dzRmtRdWs5cE9tUzRmejNTekJyczRZQ2UzbXlYQXBDdWl3Zkg2VE1N?=
 =?utf-8?B?ZmtXRmFaWUpXaTRmeHhyYWZ5OEtUSWFONDJFSkNmUk9KYkYvZkNLM01FK0I2?=
 =?utf-8?B?bGQyN00vUUdPYmtvcTF3NDc3N1hIN0dvc2xKY25hNzhvSU0xWnJxclBiTFM2?=
 =?utf-8?B?anI4QWkrVC8ybW5aY014R0ZxTXZrNWp5M1VXd2ZYd1dXek8vSUdrQ3k3VStC?=
 =?utf-8?B?RXJRL01nRThPSXJjSUlISFY5T0twSlNnQVhQRjFVQ21JL2xBbm9JRWQrMUt6?=
 =?utf-8?B?ZStYMlVXQ3BGaUtqSmhCb2p2SmlrYThnZ01rc01ZSmZjQXZ6WnJ0QzllRDNl?=
 =?utf-8?B?Mi80ZmlUbllDRWxtQnRkTEpWSzZtVkREYTlINVkyY2tBQlE4d1Rod0RsMDhT?=
 =?utf-8?B?UWVKMUI1VWVMWHNnajhjSG12NGY0M1JFZ3dNenk2NThkdHU3S0Q3TVNSYVVh?=
 =?utf-8?B?U293Q3NSemlReE1naHlmWVBqNmNFeUp5U3p3T3hiWlhORUdKMmFaUldVTkhq?=
 =?utf-8?B?YjhYTmRqbDROSWo0aHlJbVc0QUE1WUs3NlpsV0puQjc0VW5aOW1KOUE4ZEJ0?=
 =?utf-8?B?UU1WU0FabmNhWmVVZnBuMFdxb1NpcnVGazZYczh2bnJGUjQ0ZGdZZFRQQ2kr?=
 =?utf-8?B?bURUTHRBS3lSL1k2dytuYTQxRnJMS2cvT2UyQ2hIb0xRRURQem5BL1pYdEtG?=
 =?utf-8?B?V2gwdElLSnZDaDBlZEQzYlFCcG9KSmxFaTFKaVQyLy9WWUJ6VWpscXJ1QjlC?=
 =?utf-8?B?cCtmMkM0YTNuemJkMlJmeWhMV3ZBeVpFYmxtelRQUmFsVmRrQ2hCRm84c1ZO?=
 =?utf-8?B?MFBrTWdESHVZRjhsRnQ1aHEyMzF5TDVSSnAyajkzQ2ZsMW5uZWpJeG5wd1Yv?=
 =?utf-8?B?UHl4UHltVnZGWk5DaTJud3lGN0tacHJGakE3Q3g4Z1EyMVpCcVVUUzNjalZY?=
 =?utf-8?B?VDIwUEsrVXY4L2d5U21BbkhkRit3RmpjNnJseUYwVlFzRXNLdXNaendkSW4x?=
 =?utf-8?B?U2lkQnlzaGJFdFdnZUMyNjQyWVJxTWZqdEJFMXBFSTlaa0kreCtWcHpyaERE?=
 =?utf-8?B?UWtZVTlTalJTMHFWemNaN0M4UDhiNUxuQ0hHT09ZVk9YUDBHYi81eFJtSUVx?=
 =?utf-8?B?akxTbFVpUWpTRU54S3NPYm5jZjJuSkpHRkpSOVFGK2QwTHRFK3ZYZEszZ1Nr?=
 =?utf-8?B?RzQ4R3l2ZlpsUTNOVUkxQkN0cCtNN0IxVkhjd1NGblM5dGh4M1VpK0lsTUFO?=
 =?utf-8?B?K1dwUXppTVVuemFnVmdOSnZ1d3poa2dQVWJyeFlJaGhoWHZsZUFsb2pNQnZw?=
 =?utf-8?B?SmRSRVBBTGtmcHNpZks2Z3pSRWJtM1hHN0Q3UllHOG5WQUVqNjVEUnJiakQz?=
 =?utf-8?B?R2RqRzZwMkdjWXJsMzZIN3krU1k4cCtCVVZzaXRDVkcxcjNSTHYwdDRyTjFO?=
 =?utf-8?B?NG40MkVhVTYxclcwTWhsUCtvOFVWU05TdFp4NFl4TkxEbjNRUkJyeVVyNDFC?=
 =?utf-8?B?Nm9vLzRiQWpwUHJ0Y3lySitIWWFnckZNYXhuRmowQllycFdSeVd3ZFRBT0tT?=
 =?utf-8?B?Tk81d3dFeFd1RHBabjdQNnFzcUtZZTBnUHJEQWhySWZXVWFJc3NEN0dieE9n?=
 =?utf-8?B?RnAxMTF0Zy9GdjFldCtvKzVlV3lsT2Vpd1puUlF0Q3VDamFlemVTakFJeG96?=
 =?utf-8?B?VGFwbWVwblo3aFlrRmt5bXV3U0gvSy9SNldDS3ZsdW1uUFY2aERTbnROR0ZJ?=
 =?utf-8?B?V2JtUzdEYzBuRklVcEhzbWgvYzNVOFJnVkVYRndpSTNnRk90azhBZz09?=
X-Exchange-RoutingPolicyChecked: iSOWgILLAFGfL0V4ReNtN1oANSzG0cVOlebQRvNq77NRg/kKwKt+X8gu+/dcfhE6i1yHHQRIJoDX0XLEMhQhNJMi2kAuGf2BYVaRBVxuLGH7I+xr8YGnDfHVt0mv0wrSYlhf0uCTn2MkCAJ3HtK8tovaXVTuK+dV6mXPH9gYTmk3LK32i8R1jCghx9A0nM6KhQbKwYXQXBqCQAwMaMpSEsQ3Sr1tIq8mvPr4m/yAtwp5+rSOI0vU0gqMLmKkUfWjbneJwCkuWNPpoip4WQSiclghUNW+f35Q7wkOoS+qH0zMy7GT3jsivcsWAouDiH1nZg8Y3EG4t+MZ+ek8D06Owg==
X-MS-Exchange-CrossTenant-Network-Message-Id: b8cd6d26-98e5-45f8-d53e-08decbe324db
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:17.1280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6NHHxtmbO8ipJBHgcsojHzWDZILcLBe2aLVLgaJqwCpXt0l4xSsdvlv0n4EWXFokh5BrY6i7udnYcyEKn1EQIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE994B740C
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E20D2695139

This is v2 of the second part of [1] refactoring the DP link capability
logic in patches 27-57 of [1]. The first part of [1] was merged, see
[2]. For the rationale of this patchset, please refer to the link
capability parts in the cover letter of [1].

This v2 version has the following changes:
- Address the review comments from Jani:
  - Remove unneeded function documentation.
  - Add a helper to debug print the link rates tracked by link_caps
    instead of exposing the rates.

- Simplify tracking of link capability changes as suggested by Ville,
  removing the need to track changes or adjust the maximum link
  parameter limits set by the fallback logic. This is possible, since the
  limits are reset now (after patchset [3]) whenever any link parameter
  changes. This resulted in dropping patches 46, 48, 51 from patchset [1].

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

[1] https://lore.kernel.org/all/20260428125233.1664668-1-imre.deak@intel.com
[2] https://lore.kernel.org/all/20260601093836.3057345-1-imre.deak@intel.com
[3] https://lore.kernel.org/all/20260522160514.2628249-1-imre.deak@intel.com

Imre Deak (28):
  drm/i915/dp: Rename intel_dp_link_config to intel_dp_link_config_entry
  drm/i915/dp: Add struct intel_dp_link_config
  drm/i915/dp_link_caps: Introduce DP link capability module
  drm/i915/dp_link_caps: Move common rate helpers to link caps
  drm/i915/dp_link_caps: Move forced link param helpers to link caps
  drm/i915/dp: Simplify querying of forced link parameters
  drm/i915/dp_link_caps: Move forced and max link debugfs entries to
    link caps
  drm/i915/dp_link_training: Use helpers to get forced link params
  drm/i915/dp_link_caps: Move forced link params to link_caps
  drm/i915/dp_link_caps: Move link config helpers to link caps
  drm/i915/dp_link_caps: Move link config tracking to link_caps
  drm/i915/dp_link_caps: Rename helper updating the link configurations
  drm/i915/dp: Factor out helper to get link rate capabilities
  drm/i915/dp_link_caps: Pass supported link rates to link caps update
  drm/i915/dp_link_caps: Add helper to print all supported link rates
  drm/i915/dp_link_caps: Add helper to get the number of supported link
    rates
  drm/i915/dp_link_caps: Add helper to get common rate index
  drm/i915/dp_link_caps: Move tracking of common rates to link_caps
    struct
  drm/i915/dp_link_caps: Track max common lane count in link_caps
  drm/i915/dp_link_caps: Use max common lane count from link_caps
  drm/i915/dp_link_caps: Add helpers to get max link limits
  drm/i915/dp_link_caps: Add helpers to set max link limits
  drm/i915/dp_link_caps: Add helper to reset max link limits
  drm/i915/dp_link_caps: Add helper to reset link_caps state
  drm/i915/dp_link_caps: Move max link limits to link_caps
  drm/i915/dp_link_caps: Pass link_caps to static functions
  drm/i915/dp_link_caps: Pass link_caps to config update/lookup helpers
  drm/i915/dp_link_caps: Pass link_caps to common rate helpers

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |  32 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 272 ++-----
 drivers/gpu/drm/i915/display/intel_dp.h       |   6 +-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 675 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  47 ++
 .../drm/i915/display/intel_dp_link_training.c | 320 +--------
 drivers/gpu/drm/i915/display/intel_dp_test.c  |   7 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |   6 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 11 files changed, 854 insertions(+), 515 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.h

-- 
2.49.1


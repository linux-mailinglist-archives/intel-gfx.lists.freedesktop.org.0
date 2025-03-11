Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBE1A5CA9B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 17:17:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B60E10E24C;
	Tue, 11 Mar 2025 16:17:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="INCvQayO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E788C10E24C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 16:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741709872; x=1773245872;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DRRy65FuWSWXz89eqSWrcUidTJTdOM5KUVa1bX97RBQ=;
 b=INCvQayO/Nl+sGdtNC+yFEL41ZrjYno4E7ak1xMvuFybenLX4mQ5K8+c
 DjB5+ygsZz3vhxcFV09Hsms7YPSC79oXo7UgckORm0r1uGiflBZ7BGNa8
 c2HueKpozyA+LjsSyEfV7z8lSUPW6+RLb47jwYgoaMRv74F7NJLcde8kB
 4SRT23DjOjSsy1Cxuyu71wSVakxNQ0HpSWEH/lOfg4DgY0FzSHoLTDddQ
 me9E8xlRmibJVj81aHEc+d9BEl7hQkPo6d5oSoFQqrSxHl493/vDSW/ww
 PE3pXqOYMNveBjUtwq0t3MxIihJFLUEeI0lUtAG3NSV881fR79EgOeqpH w==;
X-CSE-ConnectionGUID: y7XhPMLbR2qS5uilIH0RfQ==
X-CSE-MsgGUID: JtluEaGaTJG8Gm2DFx4OKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="41926940"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="41926940"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 09:17:51 -0700
X-CSE-ConnectionGUID: hSzoLbcxRMW+EuxqnQzkJw==
X-CSE-MsgGUID: RSXIsLkHQ8WDDeDT6v+Mlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="124980346"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 09:17:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 09:17:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 09:17:50 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 09:17:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G3m8sdUoiBLO8Ie6/LirDOB5tA242lqFAypwNceM0X9QKHp3X/eaorTLuNz3TLYrHIIQHeyeOPaqtt4yWHlB6W7EuNvvP5bJCisnwVUwaBTyvECH+TY+IWv1RjJl56iMSCqdbvawQyGUISe6sUkcPfAEP7z05zzNuNYV1CaGfGdbmaVBfefbrMKA2BMHj18l6UeXKFRwrN054TSIkcIKx23N00+tHZFHyT3TQTQ3U6oENgNe2Xqt7QdzwGcsgorRDTOVrAuBVIvC+zQBSwknPXM1jG2GlHva10xPimpSGfW85zm37hzRqhz7UhEFCb+sRnwIQ4pD4Q6MYL580hfmjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1tu196Uehq+1popDvpzILk+rviBLJsjW5JWon9ISJjE=;
 b=UpFggyYkwIRbE8Q5ciF96QUDo+65U+b9jwmw08RJhOLyTVYcXvD6ctjjHVAI5OTMg1zR+zLKqQPIGY0HDNeBHj358re442kZxGK4oATeUcbjzEA3RW2Csvv5xmTl8Eyk03D3NSprUr9yS8KuXoQ4+K9Y7fHF1UTqCuqrNp1qmzyBa5N3NDNGv2LsmlbU75RhVKkVcMAIbg11OR83qXsWOk9lnkgEYkVnKPSWpN7QGn77btVBbEElvIvl4Mh8ZBcwyC99PFzZjEnaudeVcdbFQw3un3/id8hmrjmX0LqFs2SNpgqOAH5XbJCN+ATHQeu1KaHM5rRzoPaE1LiYCYNsZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SA2PR11MB4826.namprd11.prod.outlook.com (2603:10b6:806:11c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 16:17:48 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 16:17:48 +0000
Message-ID: <660ef7ae-cd08-42b8-8a38-f6b653e9b5b7@intel.com>
Date: Tue, 11 Mar 2025 21:47:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/selftests: Refactor RC6 power measurement and
 error handling
To: "Nilawar, Badal" <badal.nilawar@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>
References: <20250306191110.2582025-1-sk.anirban@intel.com>
 <5dc3a46b-886d-44d7-9f55-42809189dbfe@intel.com>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <5dc3a46b-886d-44d7-9f55-42809189dbfe@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0061.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::18) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|SA2PR11MB4826:EE_
X-MS-Office365-Filtering-Correlation-Id: 49710297-2f94-4ed0-ecc3-08dd60b8436f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cSs1dkQvMDZZWFRiUllKaEdmRjBvc09MamdnQ1JkeXRtKzdrNXIxS3lHVllk?=
 =?utf-8?B?VE5QZU1tdEwvU0RMdkYrWU9GZ0w2VXZxU2I0NUtJbEdVeGw4ZGJzSGpPWExZ?=
 =?utf-8?B?OTFxTHFyTytxRU91dXk2NGhSd0d3Q1ZsVmczTEk2d3dzZ21nalZBT2VwaVIz?=
 =?utf-8?B?L1dQWlg4b1hyeHMxRS9lbHVDS0JmNjJGZzVuZHBuc2JqRkdHdkRhY01PZGZX?=
 =?utf-8?B?Y3Q5bm00c0RjbHg4bWVsajZIbEZ6WENpdldZMGlnWHd4L3FiKzFBem45Mktq?=
 =?utf-8?B?WlRQNFVaZmRJTDIvM2NGK0NPRHhPejBqeXdMM1N6WFlIUHJtbmM0MVJPbHJL?=
 =?utf-8?B?ZGdBLytxTC90anJranR2TDJJbTlDVmxlTVJ1UWRHZHczdmg0S0p2bE5GZ0l6?=
 =?utf-8?B?UUx1RjVZK3daQlRsYmhJRmpJb3hJN3JHNnpVQmxSNHozbEgxdVhEclVwVFE1?=
 =?utf-8?B?NGF5NGt2a3V2R2ViWlVVbFR2OURuQVQwUjhHMjRUR21oOUJrZ081UnpSdzRV?=
 =?utf-8?B?akNTRUl4b3JwRWsyVExleVlMdml0MzltS2xXVU1FVnRveStKOWc4QUQ5endz?=
 =?utf-8?B?R0U4eWREa2pDZnpHSnU1RjAwTTliT1NTOUNvd29YdDU4djhxcm9sQjMzenpF?=
 =?utf-8?B?R0RKTE9Uci8rMzFpTlE3UXJvQWRXT01CUU8wQU5xTlhBTTE0VEFxOU01c3ZJ?=
 =?utf-8?B?Q1VGZjNSK1FnaDJxckpTdXY5c1J4c0l3a2J2TVN5M1JCSDJ2eFEwcUxJOFVX?=
 =?utf-8?B?b2xDcHFqMUpMa2JkL1VEMkhPTmxiR3hCVWFlMWhSalZ3cksybFBQQ29JcTRS?=
 =?utf-8?B?dGw2SUl0Z25FYmNWaTRJbitRcnlGblc1K0ZjN1BnK3BESSsvajdsM3R5TkR0?=
 =?utf-8?B?TXI2Mnd5WEh6Zm8ybm8va0Z2dHY1blhLWGtRbGZ3Z0RuSEtiMGtBMzg4N3lP?=
 =?utf-8?B?TlFJQWVUNkVHMXhnNEJaeGZXUHl3U0w1eTRJMkNYOC9VbG1CdkhVd2l1THo2?=
 =?utf-8?B?SE1XcnA0cGhYKytMaHpEYnRyQWpUbkZXVDhDY2phRW5tS1Z3SkFqcVRBZm9C?=
 =?utf-8?B?aHQ4Nm9neS9MR3Jwa3dXM0hhZVpBU1B0Yjh1T21qbGFsekMvZWovS3psMUQ2?=
 =?utf-8?B?NzByajZhaWdobWZ5d2FQWnc3d0xQdEM2cU9BdWo0K3RieVR4NFFYaWpSQXo3?=
 =?utf-8?B?NVNGanBNYnoyV1hCZWJkT2Evc0FQQWRPbzlFUy9qUjBnakN2M1hIc0ppVDd3?=
 =?utf-8?B?MDRUVFBtN0JiUXE4a2tSWm90R3VuekpoMHAzeDhnKzV2RFRqU0hIbWpTZktZ?=
 =?utf-8?B?WjJqTnZDSjkwWVRkU2prS1Nwc0xldU1ocGNYUXJ3TXRxSkhvbDRIWlVBVU5s?=
 =?utf-8?B?M2ZZMzVZeW1FWEo0RjNmYVh0OEpDZFVFdjUzb2FRZ0hTZGJMZTFNeUlkK1BS?=
 =?utf-8?B?aDlOSjlxVXFWZExkTldhWmszalhiOWZOUFRNcUhtandYUjlMYWdrR0RWQS9i?=
 =?utf-8?B?aU8xYVZxSGUxNS8vZDdSVFlVazZNeE8wVHN0dkpVQkl6VlVHSUJsQ2tIZXk1?=
 =?utf-8?B?RDRYbGlLYWYrWkZJMHNYeEY3aldOQnB4Nnc5Yktjc0xYTnZ2bSt4MVNKbW8v?=
 =?utf-8?B?dG5GTlY3TlIvTWtQZXM1M2lpOXpCUUU0UTR1Y1FjVVdqd0hrU0NaRUlYOHA1?=
 =?utf-8?B?Y2wwc0x4MnM4a3dqdnpxOFptUnZVUlNnWVNLNWJJK0o4UXlaV2kxRnNuMUdJ?=
 =?utf-8?B?VnViVzU3MXRQZFdJZFFybmhvcS9YZzRXeFZSYjlaZW9meSs2eW5PSlMrY0Iz?=
 =?utf-8?B?cWhlM0Jld0lXOWNFbEt5cVNPeXJXQUh1NzZnWnAyWGpUdlhEVTA5RlNhaTJU?=
 =?utf-8?Q?yXHOhH2fGApaB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkUyQ3BFaVBUaXBFd0pGZndKVHJJVnl0RnJCTXlWUklDU2xRVXB6Si9IMnZk?=
 =?utf-8?B?TGtReURDTG1JcU5OM3lVbXFaR0ltQng0aXBKc0kwYmdaeUVhdTllNUxibUNH?=
 =?utf-8?B?Uks0RnRhZjdtSjJkcjZ4eTg2OEtuVWlIUENuSEVUWFkxMElxQ3QrdzQ0Q2Nw?=
 =?utf-8?B?R0ZDWnA4d0VUd05Bd0kvUDk3WHB5TGxGdTUwNHczSXc2anJsQmhncTQ5Tita?=
 =?utf-8?B?TnFTMWZHMVk2Zm1DU1VuSG45dkNCSGQ0SHZKa2Jsa2tvVE5ELzdvYURmdG9K?=
 =?utf-8?B?YWdYOHRzSmszMWZQUDNHS0xoU1Y4UkdmRGNSNXRZZ2EyR3d2MEpTd1ZYMWdQ?=
 =?utf-8?B?USt6VlR0VW5kSlZtTVJKSEk0OHdpYUYra3RSOWZYVnVITGpYVVNZakh4QThX?=
 =?utf-8?B?MXhZSW4vempDMWpxdTBxdGhaT2xZbi9ZTy8wcHNNTm9ybkpBcUpRbUpoOUwr?=
 =?utf-8?B?bXNDdGxQWkFURlptaXArV3lmYkd5NnhpazVvTzdDMGdLaEExTGxJUE9ocVgv?=
 =?utf-8?B?ZHlVQmlUTTdtZytaV20xeFo2WHJTTlNjdGZUR1hQZDBnc3RDcklycm4xNDA3?=
 =?utf-8?B?SFUzQ3dCM3B6S29GYUh4T1hxZDNoWUh6RHRWUXQ1RmtnNTBlNE1OenduY1o0?=
 =?utf-8?B?YXMvTGE1Z1djaUZNVFUvOTJDaE0zYVdyM3VTT0JBMzQ3ZDUwZU9YeWtSUHBx?=
 =?utf-8?B?dHV0aHBaK2c1ZEtOMkNQMm1EUXh4cnVFNVJHR2dCWTdCS3M3bUdLK2xlQUU2?=
 =?utf-8?B?Qm9aYkJ2N2NaNXFwalJzY0dxRW5SSXlmanRibWwvNWtmK3EwSU15NHZHRHla?=
 =?utf-8?B?UWJ3aXB0ZGp4amtYcENpUWZWVDZCOG85cnFYZDh2Y0RCcWRBMnZPS2VqR1pP?=
 =?utf-8?B?Yi9kZmVHQVdkMk9Ha2VvcUl6b0RDakpEdGdheXY2LzZMbExZbXU0dUd3YWxY?=
 =?utf-8?B?Z1RnbVgrRlVLNEREVy9BbmZqZFVYTGYzSEhLRzRFQXh1S0s1Y0xvWWhTdmRZ?=
 =?utf-8?B?V0JmYW5oL2oxSXo4LzRidWpYcWdMUzc1MldPQWRFUE04ZkxNS3ZKWlpkaWl6?=
 =?utf-8?B?NW5QTmZTVHBwVUFpWFY2TDliUS9qNmFzaDZUa3dMQ1pzYVNGN2lzY3RXWE1X?=
 =?utf-8?B?RHpReU1GMUxWSHJXdDhCUlNXTUhaRlNyMUFWbzlXVVMxamlXS1ZVYUVqM1Yx?=
 =?utf-8?B?bUQzY2x1WU10ZHNNR2Z5MlQwRHhqL2NxMmRBYkJZZjd5M1h3cGJoV0Q3TmVm?=
 =?utf-8?B?NnZPbkRzTmFxN2NqSFQxNGNmRE83TUQ5d3lXYmNVMThETWFRZDlla2tEUzln?=
 =?utf-8?B?c1V2ZzhmRGYvNmIyMitFR2FJRnNpN0RDM2tNdU9zUytzaXdGSUg4OW5zbmlB?=
 =?utf-8?B?M0NoMW9BNi9hNzM2WTlEUEpQZDh3azI0Z21zRkRHTjdKVWJiTzg1WDU1cUtv?=
 =?utf-8?B?TG5yTG5pQUE0Qk5OcHNKc2VqYlFmUTI4TW5lb2JaR3ZheU5Oc1p0TXRSeUg2?=
 =?utf-8?B?K3hNWEprTFNKZ0diY1F6a3JwUFVhOFFJVStKR0FVbDhwOWxCRFZoMG5rc25m?=
 =?utf-8?B?cVJ5L050RHhXRDVQWFBIQTZwYjZ1Mis0RHk5WGdyMlg4dms5N1JiOFRkSXRW?=
 =?utf-8?B?TFUrVGJkYWZlNHhaZi9rSm9XcW9ZZU9VTXdtLzllNUV4bXpxRmoxSzFQZEZJ?=
 =?utf-8?B?dWdCQ0NnNkFDNlczd2lyd0NwdWwrK0x1UXczcGR1dnRjMUh3S1hldWpvRDdo?=
 =?utf-8?B?S1pTbjNiMzNFbmxaR202a3l0OWpleHkzMjZSUGcrMWVQRUVKeWwzVTVKcDdB?=
 =?utf-8?B?TU5GM2ZINVdIMm1Tckx6cUZZR0hZcDI0bnRoNEdTbTRQQWlZU0t3aWVxSHdH?=
 =?utf-8?B?V1lMY0t4U3NSQkdUUVFrYnJjb3JDcC9IQWNYazVuaDBpbERZUEd3UVgwNmk4?=
 =?utf-8?B?TDJvOVNVYncxNitkU2NsYWJEdnJ4elhzTkdCQWtJY0UybWM4T1o1c002ZjVX?=
 =?utf-8?B?bnBnbjkzaFlMUjZyMURjVkh2SERzUnYrWnNZYUk3L29PSjJoZlpoNjZ5YUpS?=
 =?utf-8?B?VEtYMjZZUFlvOHk0ZnhJWGNIUTlkU2laZDAyNWdGMEFvbjdqTUowZnl3M3lR?=
 =?utf-8?Q?UB/Leso0GRMeEnjqRNIMs0s8K?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49710297-2f94-4ed0-ecc3-08dd60b8436f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 16:17:48.1590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aIiQsGtSghM0LEzJoJ8g0cxQthqufutSDn4nTnTJQkwQrrk58bdvMvqlr9w8AyAi2nynnKoRO70NaDrS/u9F6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4826
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



On 11-03-2025 16:47, Nilawar, Badal wrote:
>
> On 07-03-2025 00:41, sk.anirban@intel.com wrote:
>> From: Sk Anirban <sk.anirban@intel.com>
>>
>> Refactor power measurement logic to store and compare energy values.
>> Introduce a threshold check to ensure the GPU enters RC6 properly.
>>
>> v2:
>>    - Improved commit message (Badal)
>>
>> v3:
>>   - Reorder threshold check (Badal)
>>
>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 59 +++++++++++++++++---------
>>   1 file changed, 38 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c 
>> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>> index 908483ab0bc8..5364e50be638 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>> @@ -33,15 +33,20 @@ int live_rc6_manual(void *arg)
>>   {
>>       struct intel_gt *gt = arg;
>>       struct intel_rc6 *rc6 = &gt->rc6;
>> -    u64 rc0_power, rc6_power;
>> +    struct intel_rps *rps = &gt->rps;
>>       intel_wakeref_t wakeref;
>> +    u64 sleep_time = 1000;
>> +    u32 rc0_freq = 0;
>> +    u32 rc6_freq = 0;
>> +    u64 rc0_power[3];
>> +    u64 rc6_power[3];
>>       bool has_power;
>> +    u64 threshold;
>>       ktime_t dt;
>>       u64 res[2];
>>       int err = 0;
>> -    u32 rc0_freq = 0;
>> -    u32 rc6_freq = 0;
>> -    struct intel_rps *rps = &gt->rps;
>> +    u64 diff;
>> +
>>         /*
>>        * Our claim is that we can "encourage" the GPU to enter rc6 at 
>> will.
>> @@ -65,9 +70,9 @@ int live_rc6_manual(void *arg)
>>       res[0] = rc6_residency(rc6);
>>         dt = ktime_get();
>> -    rc0_power = librapl_energy_uJ();
>> -    msleep(1000);
>> -    rc0_power = librapl_energy_uJ() - rc0_power;
>> +    rc0_power[0] = librapl_energy_uJ();
>> +    msleep(sleep_time);
>> +    rc0_power[1] = librapl_energy_uJ() - rc0_power[0];
>>       dt = ktime_sub(ktime_get(), dt);
>>       res[1] = rc6_residency(rc6);
>>       rc0_freq = intel_rps_read_actual_frequency_fw(rps);
>> @@ -79,11 +84,12 @@ int live_rc6_manual(void *arg)
>>       }
>>         if (has_power) {
>> -        rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
>> -                      ktime_to_ns(dt));
>> -        if (!rc0_power) {
>> +        rc0_power[2] = div64_u64(NSEC_PER_SEC * rc0_power[1],
>> +                     ktime_to_ns(dt));
>> +
>> +        if (!rc0_power[2]) {
>>               if (rc0_freq)
>> -                pr_debug("No power measured while in RC0! GPU Freq: 
>> %u in RC0\n",
>> +                pr_debug("No power measured while in RC0! GPU Freq: 
>> %uMHz in RC0\n",
>>                        rc0_freq);
>>               else
>>                   pr_err("No power and freq measured while in RC0\n");
>> @@ -98,10 +104,10 @@ int live_rc6_manual(void *arg)
>>       res[0] = rc6_residency(rc6);
>>       intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
>>       dt = ktime_get();
>> -    rc6_power = librapl_energy_uJ();
>> -    msleep(1000);
>> +    rc6_power[0] = librapl_energy_uJ();
>> +    msleep(sleep_time);
>>       rc6_freq = intel_rps_read_actual_frequency_fw(rps);
>> -    rc6_power = librapl_energy_uJ() - rc6_power;
>> +    rc6_power[1] = librapl_energy_uJ() - rc6_power[0];
>>       dt = ktime_sub(ktime_get(), dt);
>>       res[1] = rc6_residency(rc6);
>>       if (res[1] == res[0]) {
>> @@ -113,13 +119,24 @@ int live_rc6_manual(void *arg)
>>       }
>>         if (has_power) {
>> -        rc6_power = div64_u64(NSEC_PER_SEC * rc6_power,
>> -                      ktime_to_ns(dt));
>> -        pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
>> -            rc0_power, rc6_power);
>> -        if (2 * rc6_power > rc0_power) {
>> -            pr_err("GPU leaked energy while in RC6! GPU Freq: %u in 
>> RC6 and %u in RC0\n",
>> -                   rc6_freq, rc0_freq);
>> +        rc6_power[2] = div64_u64(NSEC_PER_SEC * rc6_power[1],
>> +                     ktime_to_ns(dt));
>> +        pr_info("GPU consumed %lluuW in RC0 and %lluuW in RC6\n",
>> +            rc0_power[2], rc6_power[2]);
>> +
>> +        if (2 * rc6_power[2] > rc0_power[2]) {
>> +            pr_err("GPU leaked energy while in RC6!\n"
>> +                   "GPU Freq: %uMHz in RC6 and %uMHz in RC0\n"
>> +                   "RC0 energy before & after sleep respectively: 
>> %lluuJ %lluuJ\n"
>> +                   "RC6 energy before & after sleep respectively: 
>> %lluuJ %lluuJ\n",
>> +                   rc6_freq, rc0_freq, rc0_power[0], rc0_power[1],
>> +                   rc6_power[0], rc6_power[1]);
>> +
>> +            diff = res[1] - res[0];
>> +            threshold = (9 * NSEC_PER_MSEC * sleep_time) / 10;
>> +            if (diff < threshold)
>> +                pr_err("Did not enter RC6 properly, RC6 start 
>> residency=%lluns, RC6 end residency=%lluns\n",
>> +                       res[0], res[1]);
>
> Check if BAT failures reported are related. Similar errors were seen 
> with other selftest related patches too.
> Otherwise this looks good to me.
>
> Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
>
> Regards,
> Badal
BAT failures were not related to these changes and re-reported.

Thanks,
Anirban
>
>>               err = -EINVAL;
>>               goto out_unlock;
>>           }


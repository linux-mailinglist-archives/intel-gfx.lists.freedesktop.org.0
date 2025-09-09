Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 950EEB4A1CF
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 08:12:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A3EC10E22C;
	Tue,  9 Sep 2025 06:12:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eHcFFB8h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C35910E22C
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 06:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757398328; x=1788934328;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Gg1P5jpM/1TiaU9QQ5uJohf9ue+5csEujgeRg2gHB70=;
 b=eHcFFB8hjL8uc3pe3QXuaqp7usQ2EjCWxH46YzNYcLh06NouGBzJRTcY
 cXliRSFeb8aEIXdL6sG9iZX0ywpPqHQpgHHlMd0nE12F/1orhpicO0PVZ
 pkXLCWIVipY3OrFSwbDXwJWfmeuozSJlMY9AkCbayr5y0nl/kpTf/UUdl
 z0muNFzMocJA7KHq/rSFsa7NiNk1zgDwiu0zMlWplop5lCe1jyPo08vX/
 sq77/e4qPtMyujKwDye1MWwB3G6LoAb8F2eJh5PuH2Mx26G6uZolE79JV
 5RpvI0cdSXEqSwFJlHxJ6MNgiWmdu3Kxv7SXJeROIfAdx7P8gcOV9KV05 A==;
X-CSE-ConnectionGUID: BFh/0A8tSPWtZAHggQHtcA==
X-CSE-MsgGUID: 7XPLyWUsSKm0bGH0iyWPgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="70770588"
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="70770588"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 23:12:07 -0700
X-CSE-ConnectionGUID: hrOC+gtZRWqMBN1fxEaHZw==
X-CSE-MsgGUID: cTE3TLkXSJulpInUPMv+Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="177339063"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 23:12:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 23:12:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 23:12:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.48) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 23:12:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fI+sJkMsiPY8gL4bAyBThYysKrAYBp4ZbqZNaXw10sQRD6ZXqBZPxro0x40aqU9rbSuJT0b7Am4kW8hRFf+Gqv/t2Yv4xVkWocXqQAXUVLHJlYYjtdqsUq7UG+Qra7Nhv+JLkLUzHlw4HE5pp39mzQLNPGxNvvg6dpFkEHWlEyAUshLB5rIml/mbgTL7g8URy0OA5b9Y59QOGNFzO/GKnHKcE8UcBgxQ0z0F7LloeXhmjATXtW+w3BgQRLVbbjvzt3z0iOC4qX3N977KqG8rActycnApb5QHgwU238XWMMBlpT0JcCYQCgOAn48FhErHMnk63bQtZN58R/c325vQrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ksFrrukgptkSPoogJ13fvG5WELsjG4JsMOHMltsuFRY=;
 b=sz3zmy1y4H5bcz0bPEbG9nG2QYWdZbBYTfbkzyqLtfx5JNh9Hx5pQaF9JlCky3UPnLDvT0LG/ND94goYI3adWMn8O5iIcfW/y1QJZ6doqgGByHWzQaytZijNwVJE8YJjio4hMzWlLA3LAWeA5j4sbQ1hb07sy9Chz7be4H77Pc+6L2F5owyL+YvpF6w64Ul/HM9WtbXalTyxXZ6IFiXl/lv6CeyyIXQNPZwNhLbMbK5VTR0LycUB05lKRSZQQOm87cZTJaXkZTc/RelWVkBfDkzu8GJcBpc/ezaahDrhsExwsoo51BdUHyXeCnIn58scIgwTqElRH9ui2KPrUQiNxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS4PPF2A0C3F85C.namprd11.prod.outlook.com (2603:10b6:f:fc02::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 06:11:58 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 06:11:58 +0000
Date: Tue, 9 Sep 2025 06:11:51 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Simona Vetter <simona.vetter@ffwll.ch>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 3/6] drm: Remove drm_modeset_backoff() return code
Message-ID: <vvvmkvc64kyvl3t6bbswhyvs66whfz6ommow2i6a5vvkqgzx4l@tvar6w4qseum>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1756995162.git.krzysztof.karas@intel.com>
 <875e9a8b71dd3dfe7b865acb489755b4a205a55a.1756995162.git.krzysztof.karas@intel.com>
 <aL64uVL06mhJZRnj@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <aL64uVL06mhJZRnj@ashyti-mobl2.lan>
X-ClientProxiedBy: TL2P290CA0025.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::20) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS4PPF2A0C3F85C:EE_
X-MS-Office365-Filtering-Correlation-Id: e39bab36-6760-42cc-f516-08ddef67c865
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WGduSlRRMDhwTUxRdnA2YUxBUnJNSkQ2dUVTMldtV1lPOWRoOEo1Zld6MWZi?=
 =?utf-8?B?NEpWNjVMemIyaUg1Z0hveGUvZms4QXFtSUN3WWlsMHhOMEEzZWE2SkVNWEtK?=
 =?utf-8?B?eDFhT2MrUktlY0hKUVdNRUwyQ0F3aU9sUDhmRVl6R0JBT214RzMwNDVCWjFD?=
 =?utf-8?B?MGZkejJCaXNZTlB4YXduVEpySVhuOFpjMXVWc3RCN2F2SzFCUjRDbVhFRVlD?=
 =?utf-8?B?M1hSbUorZ3VwMGlaQVhpa1BjbmJWd3lhaUp5RS9TZ3RmYVVpRGlEc210STRM?=
 =?utf-8?B?ZjFHcjk2bW14MnVXMWJyNnRIbHNIa0dnWW1BWEVHNVdwSVRpL3RWVzZsR1U0?=
 =?utf-8?B?M2dNL0FPY1g2ckpUMU8xelNOQnNROGE5Yk81M3FKN094KzhLNGNtRlY4eXJu?=
 =?utf-8?B?TWZzQVNDbXlpYnJFSTNXSnFHNHgrUDRiVW9HeWZxbXoyQTVaSWpoRFh5U0tX?=
 =?utf-8?B?azFYRVRHUStwbTR4a25EQ21HT2hPckp4WlVKQy9NclJWd1EzekJscExGRXJx?=
 =?utf-8?B?MzFkVGRXRXdtNzdPajMxc1ZoNmUyMWliVWNxSW5UUTkwQ0IwVnowUmRwUGtj?=
 =?utf-8?B?aW1oeDZDdEpSOHlMaG1XeTBaTFRweXdLQTZiQzJSdGtVT2dtNG1KSHp4OUZV?=
 =?utf-8?B?eFpoaGRoZ0tjWHBiZWM0ZUd0SUtrRG9ieEp1UkY1ajF2YlVhWlBoVkNrNVB5?=
 =?utf-8?B?VWtveTNYckF3RDVROW1obWdkNkJKbDFuZkppWG1zY1FUaEtLRFczT0hIUXB1?=
 =?utf-8?B?VTlITmN4YTJHdzRzMHBrM1JKTExteEdmOWhiQ2xISHVmY25mT0FNWkNYMnpL?=
 =?utf-8?B?dHJ3ZkQrbWJXbXhKOXRZM2dPTjZJOVdhUzlqQkl3WU03NWg4a1Y3bjRMS1dk?=
 =?utf-8?B?bzl6SjNKUldyc2lpRDA3RlhRekZlVUZnc1JHM2tKNm12WE9LMmhnbXBaNXlV?=
 =?utf-8?B?cUR5SFROVmY3Qk9BbDZ0dTZscjRJUEJxNmkwSHlHWE9HbFJrOUZER2kwMC9v?=
 =?utf-8?B?VEhtMDM5TDdIbEFmdzR6a01BN2JZQ2VRdTJjc1FxUVJ5TWJ2N3BMdFRwcUp5?=
 =?utf-8?B?V1h1ckpubitKSkp3dzFEQ2grL0VIV05DUUlUVWpjRUZMT1BYNy9sbDZ0WHpu?=
 =?utf-8?B?ZUluTDJqN1piWEZyV05ZODBPckNhV05PbkhmRFNhd2JSUzk4eFlnTmRBeXpT?=
 =?utf-8?B?blJDeThqcXhmYVUyc0tQK1dscitMeFFyUXlLN2NkZW9ZVDBBQXZnUzVCejha?=
 =?utf-8?B?b3dVVmpBZHJnbmd6aUpkcXB4RzlEOWVYR1o2SEsyK01KR1pLNFdWenIrWjha?=
 =?utf-8?B?L2xBRVVZRHZoR0VmUGd1elRzSmVFcW5LYllhb0dnSnl2aVdFZVBCQm9WL3k5?=
 =?utf-8?B?NW52V2lZWGlDVE1WdmN1TEJQUGdkejIzRHBOT0MxQk02bS9yUGQweXNnWXJk?=
 =?utf-8?B?RFZ2ZHBrWE5iSUxZYk9uVEM3SDNmWjhuWjNBN2c5RkVOaFpiRXYvcjhFQmgx?=
 =?utf-8?B?YkVTSFFUMENiUDd0K09UM3J5Z0duRGc3a1EyTWVVUGtsdklMSXRLVlNZLzJm?=
 =?utf-8?B?SE0wMWt6WlF2QjVjb3dQeFhka2NKK0pwRjh2U3dOZDYwL010SVkrM1JhQkZo?=
 =?utf-8?B?NTQ0K2tvQTdEY1d1a0xWZjJEdHh5bFRuTEduN3Jtc0pUM1RPTmZZT1pBWDli?=
 =?utf-8?B?MVVBUUNxRTcvQTZkQU9ZTzlSc3NZV0pMNllFSG1nNlo3SVdIRXZwYmdqUkVW?=
 =?utf-8?B?d29hazJhVjJHeVpJTVZZOGNKc2FOSmgvc1RIUks4TE1uSnFsOGp2SFFOSlZp?=
 =?utf-8?B?eTAxZUxuWlNQa1Joc28yODJieGhnTzYvRlpVcUg1ZUJCbEtJUkdHbXp3cGZ1?=
 =?utf-8?B?VlQveXRtUEhlR0Q1MlhGMUlQN1E2dHJmRW0rOEtuZTVoQkErem4xWllsRjY0?=
 =?utf-8?Q?tCtu1Ldl0Lc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHE3Q3diWng5QlVrU3Y4VFhPNm93ZStVcnFES3AwRXBBSzhMY3FLMy9yMGNw?=
 =?utf-8?B?VFBQTS9JYjVnZFFxWFdpWUh6THlTZDB3QWdHa0xCazR1Yis1MC9PMWt3aTAx?=
 =?utf-8?B?Zmo0Ukk5SlFXWDE2NlVNZ3psMllZRWJFc0loV1hPZ3BzdnVEdWZrTUlIK3Fl?=
 =?utf-8?B?Z2I5ZzlJT3A2VXFQZ2NNVE5Tb1ZvVktBTDFXaTZwelFFUThjam5nK1FsOFlC?=
 =?utf-8?B?d01TWXRSWjVxSUxoNW1LVjZNUHRIZ3l6REZrQzBYYWlIY01rY21WVkdFSEsr?=
 =?utf-8?B?TkRlMGt4UmdBeitFR083bDdzdy9RREVYNGlHbVJuUEdjeEFDMGdjZWx0WWh5?=
 =?utf-8?B?R29XcjNNMXp3eE9LcTdSR2pxclprcE9JMTZ1WTdSUkt4RlE1M1gvY2VDSXV0?=
 =?utf-8?B?ZnpRN3NFQWxNNGxad2pNSXlJWEJEM0s2YkJYYXRrRmRhbm9FUjFCdHU2ckVE?=
 =?utf-8?B?eWk0cWJpL3V1aTFsRkdaRmNwbHNsTnpVa2JFMDE2SGJjZ08wM1BrTVg2S0Yv?=
 =?utf-8?B?NEIyU1U1WGkyZjM3SE1tdWFnUkJQbjFCZytQUWYwQmVhVGdwSExreGYzcDdm?=
 =?utf-8?B?N1VERnJ0dWJQVmZadm42RTRmVXdtNGxGV0dwaHExMEdKeGF2VVBkZUtnMCtS?=
 =?utf-8?B?UEJvNFVLZ1ZidXpkUWQ2K1VualJ1YkRLN25RRGNGVmd1ZFh4eG5Rd2ZzQURx?=
 =?utf-8?B?R2pLUE1Oa3ZvU3BOdTIrT0RBR1plVTR6Tk5OYi80aGcxTXBIS1NnVm1RRjZS?=
 =?utf-8?B?V3VzN2N4VTcycGpLWG1ISUZsL3NBQVV0VU53eEhoakNlNjJyU3E4bzA1VHYw?=
 =?utf-8?B?dmc2N0NqdzFEelI1MmVpWkF5UGdXdDR2akw0M09SbitsMU1tM2VJQTI0MzQ5?=
 =?utf-8?B?NDlHMEt4RC9yekc5NWtPVytxcUlDdjhzQW5oTVVHU21adHFpYmpEWHVQWHBh?=
 =?utf-8?B?SEdXcUE2V0JsdCsvMFl1emZpYUFHR1NqVmIyT0RaQzc1di9UVnptakNWY0tB?=
 =?utf-8?B?V3lPWXlZRWNzeXV4Y2E4Q1JTTkVvSHMwQWhkWHZhZDRQUXpnbGI5TG9oY2NB?=
 =?utf-8?B?aE5RcHhkYWpFRDhCdGptZTV1NjF0dW9KTXRRSUFFN1FDUmZhUGZBckw3Wlk3?=
 =?utf-8?B?Mm11QlpqWm4xOXVXNS91clloOFNLZTYySCtQKzJRTDdETW1VZGliZ1ZySXhC?=
 =?utf-8?B?d3FxZ0dYMmtHclFnRHNQeTI4TWtxN0w5SE92Z3hRNU5lOXVnYXB3aGM3UXp4?=
 =?utf-8?B?MDYyaEQvWi9iS3ZsVUFISmRDQ05Zc1BoOHNRL21mVnc2YVNPR1lxam5aZldW?=
 =?utf-8?B?aXkwRllvbC9jeXdHK0J6UC9mVElSMlFKV280RFVrVG5pV1JhUFp0dFh6UHhv?=
 =?utf-8?B?a3BXOTJMUkFFYWtqRmp1N2UxbHg2clBTWWRrSWxNRHJ6cUhrdTNSU0lWdGYy?=
 =?utf-8?B?dmhhNzhqRWpiUmdWa1dtajkzcGM3YVFQMC9IWGxWNldnTExMWWpGbllORzZp?=
 =?utf-8?B?bUhoZ25SR013bXhuV2FuTGQ4UTFsZ2VRa0trdURMYVRNSG4rMTNHTk9SKzcx?=
 =?utf-8?B?TGY0RjYxUEZDSTdHVEdJSkY3UytRQXJoUlp3WXVrZjBsbWJDM3YydE53OTNm?=
 =?utf-8?B?TERlSlEwbzFjbnhDL3BPeitocGYrTUNrQ3UxbG44cnN5QXRzbWJGQ3JKWU1G?=
 =?utf-8?B?Zmlsc285eUhzN0E4VmQ3T2gwaHljWlZUVkxwVVlHZGhaUDM0YSswQkF2QlQ5?=
 =?utf-8?B?NE1sTkYvMXY4TCtJQU1oVzlHTHNzcEY0ajhYdklJa3MxRXZZQVZiR2ZwRmJS?=
 =?utf-8?B?RW54cDhXZ243bG55VzBPSTM0Qy9ha0VRR3NQV3p1NTJ1VU9PRUVRTEhsUUhl?=
 =?utf-8?B?TVBwM1psQkQzSG5UQzJxK0NSaFV0VmhaQmYySU5raVlxQ29iY2MrTW9BRUpl?=
 =?utf-8?B?WUJ1RVB3S0g0c1o1OTRUaU9GcUxDRkg1WFVZRGtzNTJCNVpOZ1NOTXNjd2VR?=
 =?utf-8?B?RmNyQTYvUytoVGpXOGdFV2JpK0Q3OTVhU3BjbVkxR1dmTXZrRkNua3NKdlZa?=
 =?utf-8?B?QWUwY29OQnVRSm1qQmJ6NFpsQ0ZZNmJZc2ZKU0IreXFlSzJMYVJYalZBVkxk?=
 =?utf-8?B?RFZ0VGk4emNMNVkxamdONFh6TksxbVRvdDJzREN4MTl1SHh0dUcrejFSZnVp?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e39bab36-6760-42cc-f516-08ddef67c865
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 06:11:58.1015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zBn0tV/lE5GQ4c6tI7w+XAo6OrSf15lQUxdziruhj1TsVY1ZGAVAcJ62Q0T6h1sa2CIh1OC4111lYC/m5Ypw5oZ+eSbhq/j0Gowg6BIBnEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2A0C3F85C
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

Hi Andi,
[...]
> > --- a/drivers/gpu/drm/drm_mode_config.c
> > +++ b/drivers/gpu/drm/drm_mode_config.c
> > @@ -471,7 +471,7 @@ int drmm_mode_config_init(struct drm_device *dev)
> >  		ret = drm_modeset_lock(&dev->mode_config.connection_mutex,
> >  				       &modeset_ctx);
> >  		if (ret == -EDEADLK)
> > -			ret = drm_modeset_backoff(&modeset_ctx);
> > +			drm_modeset_backoff(&modeset_ctx);
> 
> This is a very insignificant change because whether we set ret or
> we don't it doesn't change anything.
This is something that static analyzer pointed out and I decided
that for the sake of having a nice looking code I'd do that and
see whether community accepts it or not.

-- 
Best Regards,
Krzysztof

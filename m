Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9689C7E63
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 23:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921BF10E75B;
	Wed, 13 Nov 2024 22:50:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXPYD3aI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48F4F10E742;
 Wed, 13 Nov 2024 22:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731538234; x=1763074234;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lMGWCyC5CktOJ2i57Zox09HzK7iLVst3o1Sj4YEXpfI=;
 b=NXPYD3aIjYmLlNzh0/a78dQKzETaB+4fgRg4yNOAsE8OmW5SlBc7/zBy
 j02Dcrjpz/SZFCVEd9j3FQZlR82AmM9fZjUDcfrkdtEL//JgRw6gpKstJ
 sEl55bkgyqv9hcb5KqYFYarUYTpMS4ZPHpW7S35sz6n0m6doY/JItpNnB
 OnNtklIHqEt/0FzBReKYpMVcR3SPJP4VxgTFVFMwe25m790zZzkfu1ndY
 ucu89YoGndIF1mv7ciK7ZKZShSypCKM34/Gkx/7FEv+kTWUmPf8Cuk51Y
 JQspWeGGmesSUaY0czl1+PhbQnlFzMEQF5nbLejyvTFwL/lt/s99dpX8E A==;
X-CSE-ConnectionGUID: H7FE4pmXTEWJYuDI8dDy6g==
X-CSE-MsgGUID: Vh1SK+i7QAiWIjBhG4Z+xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53997863"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53997863"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 14:50:34 -0800
X-CSE-ConnectionGUID: YV5dpEaPQxqX+/zOD0XsHQ==
X-CSE-MsgGUID: DykWnnV/SdS9e3XVxRQn9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="93071985"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 14:50:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 14:50:33 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HRvEHkLzn2AbLkGs1gisnRpe4EzFRgovf2jG3JhnSNcpVjs35LpgfdFMJkE4BTrSLN5o/ORECa/nVlSs8LOj6N35iC+ve1cbYnCVEcpytJ1/WNElxTC6OQZGlfBm6GgCwL3zkUulIxlc66s8mnYfEJYj59hnASE58t4fXTheZ6ZP/MemrNMcyd34h7xnOb+WI1aOsnsImz+zxh8PsPHN7Va9NhxcMapkb/KAK5J967HNN2IXFrp5iTKEDZZQCT/xSDXNIVQIO7N+bbojfDUTkw7+Q/VqUt2jIlwvUs9tzs8u7MWt2mz78g+7196Iog89aRG2sdUTibFo6PvQdTt6tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YZ+cIfdkSdVbMdciniTFBNDOF/y4TXB7ClXjjcTslss=;
 b=wilRUMVKFfrzutSLe5WTHGvTleE8huqPiOioXYpn5bnyh4Hh4ltHWp0EzxGAa/l1RMDovclDiX3Z/3utCjMCbS3fbua983fp7jcVeZqLEOWyujV3FmR5KeV7nv4+ewPIdvMdwO4sd+E0T97PYEnmq7tHKkTtbxUp5I8jjsZTX7Du7P9YQnqLhqp88yLlVRb3/aph8k5uH/WGU5hlHvCgYhHgJFB/3leDj6Cq/LU4chB0F/SQ02LDxDYpt2tUfIh2rBCcI2UAqGv5eDkR9g493g6XWCsQ4eQx5hgnoQ3MEMk+kYJqRbvGVhfNByZPEcUr+YGj1zNwnZr1FIZkTGeS4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8416.namprd11.prod.outlook.com (2603:10b6:610:17f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Wed, 13 Nov
 2024 22:50:25 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 13 Nov 2024
 22:50:25 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jesse Barnes
 <jbarnes@virtuousgeek.org>, Jani Nikula <jani.nikula@intel.com>, "Jonathan
 Cavitt" <jonathan.cavitt@intel.com>
Subject: [CI 2/7] drm/i915/display: Convert i915_suspend into i9xx_display_sr
Date: Wed, 13 Nov 2024 17:50:11 -0500
Message-ID: <20241113225016.208673-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113225016.208673-1-rodrigo.vivi@intel.com>
References: <20241113225016.208673-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW2PR16CA0008.namprd16.prod.outlook.com (2603:10b6:907::21)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8416:EE_
X-MS-Office365-Filtering-Correlation-Id: e159ebdf-be0d-41d5-f160-08dd04358fd0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TXpKU04rSEY4S1Q5WmxtQit3R01uOVErSFVGUDRxcGNxZW0vanJCZzZqWlJ2?=
 =?utf-8?B?SkhIazBwTjJRMzVxRS9KN2RIRkRxL0NhdG9UUlFWeXMwOWdxY3BhZVRHT1Ur?=
 =?utf-8?B?aFpUcGdkdFVLLzBrNStWVFlIa3lGdUdSa1JTb2F4VDg0MVJUQzRJdHVxY3Yz?=
 =?utf-8?B?bHdpZG9hTmdjY1o0ZkVWMzJHUHJINStzRTBLaTFWY0M2d0N4d3VWcHE0TmEz?=
 =?utf-8?B?VGFERE1YMGZUZzRBeDlrblNtR01TT1NKSG1KUzFmNUs0MWVoSllSby9RRS9P?=
 =?utf-8?B?dktSVEd5Qk9xRG05T0c5M2Q4UnZES0NTNG5YNVBFNUhHQXVBc3FmMm9PWWlx?=
 =?utf-8?B?TTBDYTZDMHJhVjNIRnVubm1QdjBpTmkxM2c5aDJyTWlzZUIvWEkzQ1poQjB2?=
 =?utf-8?B?QjhGL3JkeEZ6Sko2STJObU1uWFZQVzB2a2xyUDRiQXU5Um5xVmtqbVdKZVp6?=
 =?utf-8?B?L1NUbjdONkxZVk1oUC9sMVdVQ01xMmZuTEkzT3p0RVN6aEJPbEVVOWZheXJw?=
 =?utf-8?B?eG5zYTFoYy9aME1GV04vWmRsT25ocFBnVUdraG1WV3pYM0ZrOTlHaTNnb0Vp?=
 =?utf-8?B?akZaaUFWR0Y2ZmF0WlRNanJjL3o3NDhrVHJVaVY5c21hQ2xaZC90bTJPS21M?=
 =?utf-8?B?Y3o5alM5NXNtcEw2RFQ1S29IWEQvN3BYaElNMlZaMzN3WUIrdDZUN2FTeks5?=
 =?utf-8?B?VkpSeFkyaDFQOHZNWGVRK1RvZFBxR21Kalo0WlRPOEdvbUJPazdNUXdCcHBX?=
 =?utf-8?B?Y2JsMGQ5WG81Qk52RSt1SE04akl3MkF2bTY1d2VUWjJCOXpDdGtIK2g2anZU?=
 =?utf-8?B?WEZkZGhkRWp4dWlTSmtDcG5iblI2dTlJdStrR1pNb1ZtemUzWWFkOU8vYTUy?=
 =?utf-8?B?V0hLL0YwMG1sL2QxcjhncW1SVDBiWko4aDh2YjJkVHV5VVp6ZUp6ZkplWWFT?=
 =?utf-8?B?ekFoSzJUOUNaaWthcE9HaEpHbjROTmNPTmtHQVF3TmJJbWk1VG04cDQ0QkZ3?=
 =?utf-8?B?QmY3R0FSWlkwRFErTDBBY0Q5b3pLaFJza21zVXJVWDB0NllDVnRuTVhDVUdp?=
 =?utf-8?B?ZFNHdEk4TFBkSFVLLzVMU203VDVzcjhaNDlTbzhXYnhDUndyaGNJbmJ3WGRX?=
 =?utf-8?B?VnlKdVAvQTRtRXZuSFlNT2J5T3JQWGZ2NWh0bzVuMWdNWUo5Y1ducU9ZUC9D?=
 =?utf-8?B?TTF1VERsVFdnUzIrWVZueTI3VHFDaGsrSFJ6WUIrSm11NWJNbVRnNXJWSGxN?=
 =?utf-8?B?WTQ0VFhDN2loSE9CSFZCY1JCR3pRTGh6dEFOOFhrNjFORUN4dVVXNjZ6Rkx4?=
 =?utf-8?B?ZjZhZnVyZjFFRHpSWjM1cGliODY5WHhXajg3dThiZko5LzhQd0t5SDNWME1U?=
 =?utf-8?B?a3NEa2FKblVTN2R4TUhKRWxScGpuMXZXMHNoczJ2OVdTckcrbStwSEVLS3Zx?=
 =?utf-8?B?VmRyZStpdFJtUXRxNEFPQW9ra3hTNTg3K01kY3B4Qkd3Vlg2SCtVVU56TWZy?=
 =?utf-8?B?dWhDN1l5ajhFSHI5SVhyT0t6TUt0ak55MmlzbG14RGovamJBV0FQejJrSjl6?=
 =?utf-8?B?UkJXK3prUUpFTEp4WE5ZYldIUS9FS2I4SmVwbUFKb3hkSkZjNzBwTEluS2Rt?=
 =?utf-8?B?N00vTENMTVhUNlEydE01TGZpNjZpcWRUZlRoeG02dHl3K1RUR051L25BOUVX?=
 =?utf-8?B?MFdaSVBmekpaeUl5WjZKdWljNHpqUzhYbGxNaGs0UzhqaG40SU96UUNnL09M?=
 =?utf-8?Q?u6sDafpqybCwkTyOos=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFJnRHpmaFphbG15K0FkbTBoSUpleWVsQWt5dFU2bENvc094Y0lrbTZWbmE2?=
 =?utf-8?B?MVhvMjRwSmxOa1Y4anNTWGd1YlR2NTI0cXFEcnJVVTFWSjJZQVEyR3VOUjM2?=
 =?utf-8?B?bTRVeDVWV2QvcUx6THBpd0xvQmdNRU1haXhuSldLaWxIektiK2k4ang3NDVa?=
 =?utf-8?B?WXBqZldsQyt4N1NjNUhNOElNaWFzZno4WHNvZU9XT1pta202dVV3VWJ2WnFu?=
 =?utf-8?B?cmZ2OTNBVy84NVJFUVZ6YXVyUFNOaWlJVXk1UTA3UTYyLzZiUnNzS1lHalNK?=
 =?utf-8?B?eXhTejZYOTZIV2dmTE90MDNyOUJLY3lVQ2xTR2xiS081U1J1Z1dqRm5IckFa?=
 =?utf-8?B?VFNnTlQ1RmdLTDA5ejZmMUY3d05PVDZmS1R6N2hqVzNiT3RvMjRLUytPY0Rq?=
 =?utf-8?B?bWU1aG9XUlZKL1N2MmkwcS9xUlRLU2RUdllMR0JzbE41STdZaUpnWitPNEtO?=
 =?utf-8?B?cG1MWFlIRGw2K3BuQ2hxbFdxWlhOZ3ZyVmtETzJjdjgwNlBkRnczeGozWUN3?=
 =?utf-8?B?QUlzOE8wODV4VFZ6MkJMSDhrVVNkeEFZdUVKRlpmMi82NGZSVDRnY21RSlFw?=
 =?utf-8?B?VG5yTmJqKzQwUGUvZnIrZlI1ekEwQ050aWkyeW1DYzZOQktXWWZSamEyclFu?=
 =?utf-8?B?YTU4VVc4dit0TlRSTTFBQ296RWtoaGhWbDlHbEttNGMxNmd6Y2NIZGdoaExM?=
 =?utf-8?B?MWhuYkRDT0dueXhDMjdkVVQrb2c3R1BXZjVyTXdoSzExTzkzTk1oRW1kV0Rp?=
 =?utf-8?B?czlMd2Z0NGVnQ1ZKbHpyZHdEclJRNi9RSHdHUkNiYS8xNWtUbXVFMVhLSXVV?=
 =?utf-8?B?YXd1VFp5QjY4TVg4UklZYkU1TDJtSDdQM1NmckVaNitkNUpRMWdsZ3M3TVBP?=
 =?utf-8?B?WGJZaDJDdDlhaWk2K0I5MGk3QlVyUG4veExwblJKSmcvYys3VVFXWTF4bW1u?=
 =?utf-8?B?YUtjSVNTRCtROUlScTY1eDlncUpIYlNHV0YzaTh3N1h6bDFYSE9SZ05hZUsv?=
 =?utf-8?B?OWRxY3ZyVjhLTVNhTkYyK1pYMVFhczcrZVlyV2RWYkJ4V0NsYkZ0YkRxbjNp?=
 =?utf-8?B?aW5wc0k2SjlHQTNmVGN1SU1Zb1ZrK2VyK1lYeDJhS2hEanFpRkNxNzR6UjRt?=
 =?utf-8?B?RkVoTEdOT0Yyc2F2dmlVTGZlRTNhVnArTm84RlZSVitXRjVzR2h0ZWNyNmxB?=
 =?utf-8?B?dWV0OFQ3bm41UDVFRkFKZU54b2RPdm9Sa1grTEg3SEhlWHIvcndyczZabm10?=
 =?utf-8?B?NVM5cHhqSkJ4VWdIMFRGcllMRitSRGdJdGt6djNRZm9BL3hyZmY3S0hJOHFF?=
 =?utf-8?B?dFUrdFd6SWh6OUF4YnZEUXJUL3k0aG9Nak9OcU95azVYZHo2MGFEUUdEeWV6?=
 =?utf-8?B?RlM0UUZsRWhEbVozbEdjRXVaanFwQmcvS3VqOHd5dGVSNC9XamdOY2hQMUx5?=
 =?utf-8?B?MmtlenFjb2hYMFY2Mzh3VU1XTGRmYmNwVUUrcnpDbGNTMS8wYTNTWmxsMk41?=
 =?utf-8?B?c0VScEJyS0RhamxYSHlpMG9xaWZPME1ES00weWQzcWRFNEttK0MzTlhUWEZj?=
 =?utf-8?B?OUZYMUJtSTRKeHY4QW9TeTFzN2xBTmVPVGM4enJoYUxMamxSUlJzRlhmYlha?=
 =?utf-8?B?R1RpSDZxbWpnekxQdThEUG1WblB1MXRHTXlGS3pHWU9NWmorLzFhdzY4QzNn?=
 =?utf-8?B?Snk1RHBJUWlFN2wyY0pIZHE2SjVHTU1OQWx0WmV4Ri90dEhzYTRmNmd3RGly?=
 =?utf-8?B?SHdCays3OUZGWkpOc3pqVDA0bjUyeFdzM2xpWjB5cnRmVGVSQUVGSWNWWkI0?=
 =?utf-8?B?Y2h4bWdnYXdqY0t2SzNoOUduUE1YOHNOaUF6VEV6elk0UnRkMm00T25CaTd0?=
 =?utf-8?B?Sm9IWWJHbXQzTUo3UVVUd1FRSTBtNHRZYnd6ZFU4eEdEN2daNjR4dTF3N2o2?=
 =?utf-8?B?bUlCSmdENUthQ2JTWGJXYllFYmRSbjgvUEhhOHdPRkF1UWFzQTJLVWY1VFlW?=
 =?utf-8?B?WlNhTFFkSisyREZQQWcwSDJ5aE9DcTYyQi80ZUxuZVhnTUN1ajJIa3VBblVN?=
 =?utf-8?B?M0x6U3JoelRBY210V0tGZ28yZ25XWmpQSUlSekNPdzNzdDQ5aHBOVWxHck9H?=
 =?utf-8?B?RkxzcjZzT09INmk4LzN5NzNoZ1hQaXVaa040QVpXR2FLOG5YQ1M1WHdrMXNx?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e159ebdf-be0d-41d5-f160-08dd04358fd0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2024 22:50:25.1043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hrt5MIgqZJ6DOhTgPzdHId2RgRnvDwb2c3TYJg54UzNQWoGw2g/xjM9htZk9POSDEtUR9uvDGr37CjSLdp9ZnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8416
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

These save & restore functions inside i915_suspend are old display
functions to save and restore a bunch of display related registers.

Move it under display and rename accordantly. Just don't move it
entirely towards intel_display struct yet because it depends
on drm_i915_private for the IS_MOBILE.

While doing this conversion also update the MIT header using
the new SPDX ones.

v2: Fix Makefile and include (Jani)
    Removed vga and gmbus (Jani, Ville)

Cc: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   2 +-
 .../gpu/drm/i915/display/i9xx_display_sr.c    |  95 ++++++++++++
 .../gpu/drm/i915/display/i9xx_display_sr.h    |  14 ++
 drivers/gpu/drm/i915/i915_driver.c            |   6 +-
 drivers/gpu/drm/i915/i915_suspend.c           | 135 ------------------
 drivers/gpu/drm/i915/i915_suspend.h           |  14 --
 6 files changed, 113 insertions(+), 153 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.c
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.h
 delete mode 100644 drivers/gpu/drm/i915/i915_suspend.c
 delete mode 100644 drivers/gpu/drm/i915/i915_suspend.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 31710d98cad5..e465828d748f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -30,7 +30,6 @@ i915-y += \
 	i915_params.o \
 	i915_pci.o \
 	i915_scatterlist.o \
-	i915_suspend.o \
 	i915_switcheroo.o \
 	i915_sysfs.o \
 	i915_utils.o \
@@ -220,6 +219,7 @@ i915-$(CONFIG_HWMON) += \
 i915-y += \
 	display/hsw_ips.o \
 	display/i9xx_plane.o \
+	display/i9xx_display_sr.o \
 	display/i9xx_wm.o \
 	display/intel_alpm.o \
 	display/intel_atomic.o \
diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
new file mode 100644
index 000000000000..4dd0ce267994
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "i9xx_display_sr.h"
+#include "intel_de.h"
+#include "intel_gmbus.h"
+#include "intel_pci_config.h"
+
+static void i9xx_display_save_swf(struct drm_i915_private *i915)
+{
+	int i;
+
+	/* Scratch space */
+	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
+		for (i = 0; i < 7; i++) {
+			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+		}
+		for (i = 0; i < 3; i++)
+			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+	} else if (GRAPHICS_VER(i915) == 2) {
+		for (i = 0; i < 7; i++)
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+	} else if (HAS_GMCH(i915)) {
+		for (i = 0; i < 16; i++) {
+			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+		}
+		for (i = 0; i < 3; i++)
+			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+	}
+}
+
+static void i9xx_display_restore_swf(struct drm_i915_private *i915)
+{
+	int i;
+
+	/* Scratch space */
+	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
+		for (i = 0; i < 7; i++) {
+			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
+			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+		}
+		for (i = 0; i < 3; i++)
+			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+	} else if (GRAPHICS_VER(i915) == 2) {
+		for (i = 0; i < 7; i++)
+			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+	} else if (HAS_GMCH(i915)) {
+		for (i = 0; i < 16; i++) {
+			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
+			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+		}
+		for (i = 0; i < 3; i++)
+			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+	}
+}
+
+void i9xx_display_sr_save(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	/* Display arbitration control */
+	if (GRAPHICS_VER(i915) <= 4)
+		i915->regfile.saveDSPARB = intel_de_read(i915, DSPARB(i915));
+
+	if (GRAPHICS_VER(i915) == 4)
+		pci_read_config_word(pdev, GCDGMBUS, &i915->regfile.saveGCDGMBUS);
+
+	i9xx_display_save_swf(i915);
+}
+
+void i9xx_display_sr_restore(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	i9xx_display_restore_swf(i915);
+
+	if (GRAPHICS_VER(i915) == 4)
+		pci_write_config_word(pdev, GCDGMBUS, i915->regfile.saveGCDGMBUS);
+
+	/* Display arbitration */
+	if (GRAPHICS_VER(i915) <= 4)
+		intel_de_write(i915, DSPARB(i915), i915->regfile.saveDSPARB);
+}
diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.h b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
new file mode 100644
index 000000000000..30383758f97e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __I9XX_DISPLAY_SR_H__
+#define __I9XX_DISPLAY_SR_H__
+
+struct drm_i915_private;
+
+void i9xx_display_sr_save(struct drm_i915_private *i915);
+void i9xx_display_sr_restore(struct drm_i915_private *i915);
+
+#endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 420b54b61569..7ded0f4675a0 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -45,6 +45,7 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 
+#include "display/i9xx_display_sr.h"
 #include "display/intel_acpi.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
@@ -94,7 +95,6 @@
 #include "i915_memcpy.h"
 #include "i915_perf.h"
 #include "i915_query.h"
-#include "i915_suspend.h"
 #include "i915_switcheroo.h"
 #include "i915_sysfs.h"
 #include "i915_utils.h"
@@ -1052,7 +1052,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_dpt_suspend(dev_priv);
 	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
 
-	i915_save_display(dev_priv);
+	i9xx_display_sr_save(dev_priv);
 
 	opregion_target_state = suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3cold;
 	intel_opregion_suspend(display, opregion_target_state);
@@ -1171,7 +1171,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_dmc_resume(display);
 
-	i915_restore_display(dev_priv);
+	i9xx_display_sr_restore(dev_priv);
 
 	intel_vga_redisable(display);
 
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
deleted file mode 100644
index fb67b05cd864..000000000000
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ /dev/null
@@ -1,135 +0,0 @@
-/*
- *
- * Copyright 2008 (c) Intel Corporation
- *   Jesse Barnes <jbarnes@virtuousgeek.org>
- *
- * Permission is hereby granted, free of charge, to any person obtaining a
- * copy of this software and associated documentation files (the
- * "Software"), to deal in the Software without restriction, including
- * without limitation the rights to use, copy, modify, merge, publish,
- * distribute, sub license, and/or sell copies of the Software, and to
- * permit persons to whom the Software is furnished to do so, subject to
- * the following conditions:
- *
- * The above copyright notice and this permission notice (including the
- * next paragraph) shall be included in all copies or substantial portions
- * of the Software.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
- * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.
- * IN NO EVENT SHALL TUNGSTEN GRAPHICS AND/OR ITS SUPPLIERS BE LIABLE FOR
- * ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
- * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
- * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
- */
-
-#include "display/intel_de.h"
-#include "display/intel_gmbus.h"
-
-#include "i915_drv.h"
-#include "i915_reg.h"
-#include "i915_suspend.h"
-#include "intel_pci_config.h"
-
-static void intel_save_swf(struct drm_i915_private *dev_priv)
-{
-	int i;
-
-	/* Scratch space */
-	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
-		for (i = 0; i < 7; i++) {
-			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
-								      SWF0(dev_priv, i));
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-		}
-		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
-								      SWF3(dev_priv, i));
-	} else if (GRAPHICS_VER(dev_priv) == 2) {
-		for (i = 0; i < 7; i++)
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-	} else if (HAS_GMCH(dev_priv)) {
-		for (i = 0; i < 16; i++) {
-			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
-								      SWF0(dev_priv, i));
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-		}
-		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
-								      SWF3(dev_priv, i));
-	}
-}
-
-static void intel_restore_swf(struct drm_i915_private *dev_priv)
-{
-	int i;
-
-	/* Scratch space */
-	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
-		for (i = 0; i < 7; i++) {
-			intel_de_write(dev_priv, SWF0(dev_priv, i),
-				       dev_priv->regfile.saveSWF0[i]);
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-		}
-		for (i = 0; i < 3; i++)
-			intel_de_write(dev_priv, SWF3(dev_priv, i),
-				       dev_priv->regfile.saveSWF3[i]);
-	} else if (GRAPHICS_VER(dev_priv) == 2) {
-		for (i = 0; i < 7; i++)
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-	} else if (HAS_GMCH(dev_priv)) {
-		for (i = 0; i < 16; i++) {
-			intel_de_write(dev_priv, SWF0(dev_priv, i),
-				       dev_priv->regfile.saveSWF0[i]);
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-		}
-		for (i = 0; i < 3; i++)
-			intel_de_write(dev_priv, SWF3(dev_priv, i),
-				       dev_priv->regfile.saveSWF3[i]);
-	}
-}
-
-void i915_save_display(struct drm_i915_private *dev_priv)
-{
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	/* Display arbitration control */
-	if (GRAPHICS_VER(dev_priv) <= 4)
-		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv,
-							     DSPARB(dev_priv));
-
-	if (GRAPHICS_VER(dev_priv) == 4)
-		pci_read_config_word(pdev, GCDGMBUS,
-				     &dev_priv->regfile.saveGCDGMBUS);
-
-	intel_save_swf(dev_priv);
-}
-
-void i915_restore_display(struct drm_i915_private *dev_priv)
-{
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	intel_restore_swf(dev_priv);
-
-	if (GRAPHICS_VER(dev_priv) == 4)
-		pci_write_config_word(pdev, GCDGMBUS,
-				      dev_priv->regfile.saveGCDGMBUS);
-
-	/* Display arbitration */
-	if (GRAPHICS_VER(dev_priv) <= 4)
-		intel_de_write(dev_priv, DSPARB(dev_priv),
-			       dev_priv->regfile.saveDSPARB);
-}
diff --git a/drivers/gpu/drm/i915/i915_suspend.h b/drivers/gpu/drm/i915/i915_suspend.h
deleted file mode 100644
index e5a611ee3d15..000000000000
--- a/drivers/gpu/drm/i915/i915_suspend.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2019 Intel Corporation
- */
-
-#ifndef __I915_SUSPEND_H__
-#define __I915_SUSPEND_H__
-
-struct drm_i915_private;
-
-void i915_save_display(struct drm_i915_private *i915);
-void i915_restore_display(struct drm_i915_private *i915);
-
-#endif /* __I915_SUSPEND_H__ */
-- 
2.47.0


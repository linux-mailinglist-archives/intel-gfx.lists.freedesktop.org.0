Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3DEBFB0F9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 11:06:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE79510E717;
	Wed, 22 Oct 2025 09:06:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CtcKIGcq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4242E10E717;
 Wed, 22 Oct 2025 09:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761123987; x=1792659987;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A6RW8Kn9zpBqa9Xfw9omExI2td0ix+W8qYCJV8YxO5A=;
 b=CtcKIGcqVR3r4ilwEy7HXTv1QVk9lqL7JBBvtjbrQhXZSWiB+E23soPY
 kP4OcHB6D9mTEU+Y+uT26Y0B6Z8Xtc3E41I1lUjtIO+tXRWOA0A+JjdNJ
 BZrz1B5SuX8vYT9f21Q80JLA+fSd9jBQYwRahslMmRh796PAttGoyeZxX
 MsIAA6Hb3b7mptOo4a/vB+OZQDHPBEH3RVpyQRoZ7y0ZEyCiZwN6dcaT9
 n8V/bLLb58eeoYNZQyT1xDsd5n2xhYp5gOKAg9jQm1ubVRqJC/sOV6ryY
 /bnkhtznDVh3jODVHZ440BK6qEyzEDfOVSa0qrtbO85f+kP7A8wDHjKQr A==;
X-CSE-ConnectionGUID: 5CtUSNcUSu+PWuE7cWUigQ==
X-CSE-MsgGUID: xCTdzAb9Te6ckDrAiabpQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63303059"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="63303059"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:06:26 -0700
X-CSE-ConnectionGUID: yM57bggQTWqPrd/sakcaQQ==
X-CSE-MsgGUID: slxIvNC5QcS9qAPCm6g7fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214463839"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:06:27 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 02:06:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 02:06:26 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.46) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 02:06:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ErGQsJnYQj4AhjP+KfckdO9zF2reecAj/fxdqdzKplCDrxj/zdZZ1jhKap30lVAAso1MPTK+sp0IwtBBzqx2Gv2P2gYghw4MTSTOuhAzrAVGNMJ42rDtZ5wwjrmc6fLVi22+x+BUwkLKbbnqrHI89NgqREkum3dlCH/BYo3BJNQkRaEHPKkHn1lx8ig+xtD9Nb5dWA/ZMDmtslAmmqQ1kv8NLPuluBzYBDPwTJTfsWSOsIw6xynV6r2qoh9DNL5eIaMmmaLi1v0id5wN/b5x4E7huS/qwa9exGvD6K1ZaXmMNtzpeekhV+SXnlMcsDPJmsm0aH5Zv9vHQRFebYVLoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbW1Ji4Ub2PNfTlJRzQXLW2QmNsmCJM/S/LPvUB48Tw=;
 b=NVWXUCnVqZNtIwgAq7uk6dUj321uhhIl9GQIouMnsKpCe8QjaAn0Zi8OHFcIJKqMIW3okKxazBqv2dZnhFeaPWDav97NH7tnBQbyXP5pFs/1EGk9bMJfd9LRdXYn/qMBGFwCqaZMZH2gIpDvKkvonrmduVvcvz/rJ13jslNR4vJSsrimsyBStmBO4ZrgZfjLJnuAndk9HStUBti1EaM6qamZMAUCJKxIIMCFLrghgT5UxcoNwrp52xmkkdt/Dtb6KEdgysCEvyEyIerT7llaYjhgiwp4UKWEDHWnThW0SvCWUyyXeAuEMhCksQ7w+BEZIgY5u4dmV0uVeSxe3BJwfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 by CY8PR11MB6916.namprd11.prod.outlook.com (2603:10b6:930:58::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Wed, 22 Oct
 2025 09:06:24 +0000
Received: from CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d]) by CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d%4]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 09:06:23 +0000
Message-ID: <cdb4d233-87a9-4a04-b9b6-fc3c6154419e@intel.com>
Date: Wed, 22 Oct 2025 14:36:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/25] drm/i915/ltphy: Program sequence for PORT_CLOCK_CTL
 for LT Phy
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-5-suraj.kandpal@intel.com>
 <e7e2172b-1daa-4161-825b-ca3363a6ff12@intel.com>
 <DM3PPF208195D8DA97B08782D935568B15EE3F3A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <DM3PPF208195D8DA97B08782D935568B15EE3F3A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b7::14) To CH3PR11MB7300.namprd11.prod.outlook.com
 (2603:10b6:610:150::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB7300:EE_|CY8PR11MB6916:EE_
X-MS-Office365-Filtering-Correlation-Id: 8dfe4b77-d045-4a2d-86a7-08de114a4610
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eThodGt2alBUMWtKUWR0Vlc1VHJhZzd3eW5zK2orTklYQWxnNlJLTTRmL2x3?=
 =?utf-8?B?R3ZJRFo4OWtQL0txRFMxVFRKalZhRndoa3hURi9sVUp0K0h1MjdIUVBZdVlJ?=
 =?utf-8?B?d1VxQ1lnMmdEajhpQS95UVFvWFgvdy82NXVzQTMydFAyN1FVSkQ2RXE4N3NB?=
 =?utf-8?B?QmhCYkdqUkJoc0I1a2NNZXJLUDJ2TGhBR0JyelJ6RGY1clVrV2FqMGxvMjhn?=
 =?utf-8?B?QktPc0tSa3NBYVVUb1RLZ3ZWeUlodUZSSVBGLzZrQWlDdGltazdtZE1lcENk?=
 =?utf-8?B?Qnp5ajRnUHlROTNiVWRDR0wxOG5mdVN1Q0VKaTNTb0VxNzZpSFlHY1lyM0RC?=
 =?utf-8?B?Y3RydUVVYXZxRTV0VW55V0ZnQjdqNjJreSsweExqSGVXb2pQTktueEM1eHZV?=
 =?utf-8?B?M3ZaNUd1NUNpb016TnkrTzFFMjQ4L2xBZ2RZSWQyVTN0OGF0eTdMc2lkOEda?=
 =?utf-8?B?V1FKZnV0NGYyM09XcGR3aGNoV21rZ2tYWGlVdGdsejI3cWN4Q1hOTGFFc2pv?=
 =?utf-8?B?NnEzcEZwN3I4STMvbUxFajlUdHB4Q0NpOU1KWkVsWmI5Y0RjbjQ5MEExaTN0?=
 =?utf-8?B?QkREQlRzTlQ2b1c2NTAvbTcyYWYwaEgvRkJ3L0FNS3pDSi9PeERCVHZVbWRp?=
 =?utf-8?B?N1RET3luL1RJakZZblhuRERwbG9hbDQ2eGVOSzAxbUF2Unh5TmdtamU4SS8r?=
 =?utf-8?B?RE4zbHUyK3N4clAyWE5oL2xkb2NPUXFNOTlzZjFPK0pzRVYzYzNyZVJSMC94?=
 =?utf-8?B?aUd6TmQ0R09xeTErcDJTeGoxeUgwMGJyc1RUcUNFSFlYNUp4ekZ3WlFhZlI5?=
 =?utf-8?B?S1ZHdmYwV0dYMFQwaHVudjVReGhDSkwyaTQrZHRiVlk2bHRVZ1FDVkFTVVd5?=
 =?utf-8?B?akE5ZmJDdnRUMTNickVCbVhMRGN5OVM2cEhya0tFQlpWekJTbndCN1NaYStF?=
 =?utf-8?B?NUh3aWx6RHd6cFhqVnVTVWVkUmkyRU80cEJGMDE4akxhcElpYy9BVHl5RG14?=
 =?utf-8?B?VU80T2E0OXNCbEgzWkJwQk9Bb0hpa3VKakdndS91Q29hV3NVQU1JZkRROWVI?=
 =?utf-8?B?eDhzZ3E4SlpOSGtOUEdNVFRpTlc0b3lWTFlKVGZheDVrWTJ2dmY5ZjJldGI4?=
 =?utf-8?B?Q0xyQ2lIdUQvUmR4NFpOVm1ZS3VEbUJyeFVPUzlmbjg3elZtY2RLY3dTQnRD?=
 =?utf-8?B?YzVmS0ViVkt3MFNWbGdKRWxnRlF3VkM0RVJ5WkRDdjhlNFJkMHBxeEpxTmR6?=
 =?utf-8?B?M0tkV3hseVVCOEZ0N3B3VXk0K3hnT3dwakdRbW1WdkFGMktRVThMQkxMV04z?=
 =?utf-8?B?TnA5UVU5Y2pzSU1vaFdNWVlxUEoweW9GaGNpLy9lektmdXdtSGZkY2praHB3?=
 =?utf-8?B?RXcrQ0JHMSt0VTI1a0o1L2oxaGlyMm9hQUYxWnVlVGliZWJSZ05iNGJpZW9Y?=
 =?utf-8?B?d2tkWjRheFBpNlQ2ekEwUStmenR5NVBEcytHc3dBNUZ5ZmNhK05HMmdJVVBD?=
 =?utf-8?B?MzJvVjhBRjNTUk9NUkZYSzhYZ0piQkVvcndDZVA0RlVBOWxUK1dMTXp3S0xn?=
 =?utf-8?B?WFF0YU91MHYxVWEzbE9nN0U3NUJZaXZZSjZiaXh6dHpYVEtuQUd5enowRUdR?=
 =?utf-8?B?RGVSdjRoZ3B2d01Db0tJbEVIVFV4M0JYYjh0cjNob25QMW9hcGRDYUEvMTBa?=
 =?utf-8?B?MHd6NG5xZUEvdStHQWloc0UyZWFtVHJ6SFFtOXVlZlp5MDRLd0hYR1MvUVFJ?=
 =?utf-8?B?R2FJMGI5NlZOTHdHZGpEd0NoOUQxNWRsMlFla2gyZEg4UDFDNEZZb044L2Zl?=
 =?utf-8?B?Nk1IaEQrcWZ3MGR1TXVnbktzN1ZnZjByUXBxV3BWRmVkSFhkWS9qek04clVG?=
 =?utf-8?B?ejA2bGtwOHIvekJhYi9HZkpWRDlzNVlKWExObFNUeFBTRGhVM0xiYWREaUhu?=
 =?utf-8?Q?I5O8/x1WbZONBpONktiZxL5xzKcERTZl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7300.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3M0SWxNQjZnZHdPNWlNd1E3MDZoaUZGOWgzWnExYzcwdTM5ZjJPVmtDYWdG?=
 =?utf-8?B?cC9oa3hmTFJXMjN6dW5zWHkxYnQ1bDAzUmJxcmp6U09ldVFmeksvL3NXWXZJ?=
 =?utf-8?B?c1dSU3ZaQ2dXQitxMTNwN2hsOGk3cmw3SnJFM2V3YjNEdERqbUVsUmZraG1U?=
 =?utf-8?B?NEFIUFdIcWJTRlRLUkw1eFEvWStqV3gvTmlZTm8zUXo0eTZIdXAxZXZtNGZI?=
 =?utf-8?B?Nkw1d3k4bnFkeDNTZkVyK1R6YmFMYTBrcGJEU0x1RWdRVFRpbGFDT2hoUUEw?=
 =?utf-8?B?eW1HTFloRU03N3ZRTS9yenZ5RXZWQlF0UmlqdzBJaWxpL3ZEZGJMb0JPYXdM?=
 =?utf-8?B?Q0NJYTFPNU5lVmRRejJxb1RIam44WlRmemdLeFhtdmtQTStKUzFZdDlYemVu?=
 =?utf-8?B?WTlpZnhuYWJnQ1RvQUVYU29LVmQ4MWlIekE2dUtNVE5DNzFaN1A4SGZoRTNQ?=
 =?utf-8?B?UTlVMXpTbjR5Y3hRVm9aT0RobXE1OThia1FFWmd4U3ByUUNSbStwM28wT21I?=
 =?utf-8?B?dmlhdXdPOXNEVndiYjVVenFKNHBNamczYk8zdHZPQ21nbllmNmV1VWdiZ2Uy?=
 =?utf-8?B?SHJBUnhxa0JORy8vdklZQW1mdklmQTZvaVQ4UEx3a2QwT2dSREZEMnVIUm05?=
 =?utf-8?B?czhjV1pMSEJTczBkS2E1YWNQV0lsMFBveURCWHg0WEV6djNpUlUwUU5iaks3?=
 =?utf-8?B?WXdvd1E2Y29ERDlhanQ1TTVaQVozelMwaWtrRk0zUmNwQnVhT2ZtQitlRWNr?=
 =?utf-8?B?N2tIVHhGL1lMMEN6OXNadHpncVRVNWJyT21RVmJmWGY3MS9TOWlTVFZYVDhO?=
 =?utf-8?B?WVFQMVhiUXdWclR5YkpMWjcwQXlPL3JkbnMzaTVMZUVRVVdqSmZJZmhwRUMw?=
 =?utf-8?B?LzNSWkxVYk80a3dkaU1GTTNHcnU4QWpVeXYwQ0pQUWExTFVXQjZ1Y2p0a3pD?=
 =?utf-8?B?bWRrdUJ0dXF0UzJmSWtTZEFLM3hWdm5UQjFFVUFhRkx6cHhUT1Y1a0FRcXF2?=
 =?utf-8?B?NVNXaUFRRGZ6OG1tWjc4N3oreENMclN1eWZtWXpyWGRQYlNDRmZoWGE0UEhk?=
 =?utf-8?B?SlI0THo1SFpzSFNmbndwdTljTUpVckFaL3FoNFY4cXpMK3lNTWs3MkttUnFI?=
 =?utf-8?B?TnlRYXpxSFhBWEx6R09IWG5rM3VYaDVwajFxRVJWdmxPZXhkbHhZMWpUS25i?=
 =?utf-8?B?UDBNSGNsUUNpMHdOb0theDdvMmNqdlg2MjRITG8wUE4rU2tVQ1QvUExOdDc0?=
 =?utf-8?B?YXpQL1RlejVGRjFmbzR1M3RaSTZQdVlXM0VnNWUzTWlzZkdKdHkzZEZYeUFB?=
 =?utf-8?B?ZlVaUDFHcDhicWhBemVJaElPd1IzNXNDTHdEallvWWtXeUNJS2JKZjN4WHJt?=
 =?utf-8?B?RjFXcXNab1lpN01IYjJKK0xSdjNmcUltaVZTUWo0UU93YmtMVSt2bVZCc2RK?=
 =?utf-8?B?YUQ1NWhzWUc0dlA5Skc3RG1zVW51YzFvN1BiemZBdHh2WWNtRXVSQVBCdDJa?=
 =?utf-8?B?R1hEeUhzWTltbmN1bmQvcjRON0Mzcyt2UHJKaTRaNDVlSFZiY0I3Qll5d25T?=
 =?utf-8?B?OFMwK1pFMGRCUUpwN0JPSktMVjFrSjNXNHRMdU83ZWdrOUI2bUxQcnJETU8r?=
 =?utf-8?B?UTYwN2E4K0pEK3o4VTNPeHRUTG8yMis4SEhwdE44K3Foamc2TUZ5N0lRL0NT?=
 =?utf-8?B?SzBzeHJtNElNNFQ4K3hwKy81ek5EeDJuYnl4ZjBmZURxWGdLYW5wdmo4VFph?=
 =?utf-8?B?NHlFOHNnWi9rTDhTRXNzbC9xRlNrQVluT1pkaGI5Tm8vcklUSkdVVjZhZHVu?=
 =?utf-8?B?QXQybXpJWUduQzVMMnA5akEzT2ZDUGg2NEFBNXl3N2J6ckhaU3dXK0lzZVE2?=
 =?utf-8?B?V3lmeUhwMkZXY21kVnRTZExLaVlwUmYyMm5OQy9aeXFJcm53S25jK2xoNlZ0?=
 =?utf-8?B?ZGRSVUI2WDdJTENidjZDOW1KNHd4dmVhNTJydkRrRk5oWTd5Yk5hM2s3aFFa?=
 =?utf-8?B?d2xKT3djM283YnA5cmliek4zYzlManJUQTdwTGNWUzRESlJYbTR3ejJFblJM?=
 =?utf-8?B?cWZvYko4bG96OW5EdVZIT1d0MVJwT0RTVHBUZTQwVXZTWDliS0k3Z3ZReFpI?=
 =?utf-8?B?dWNYQjdZUzNieDZOM0VjZ2svUnUyVUZLVVFFRGppVWJsL20rV2ZGNFR3OXBL?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dfe4b77-d045-4a2d-86a7-08de114a4610
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7300.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 09:06:23.7988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sMJg9BpDCXmYf48gGU/roLpGlyoaaDtE3bHSVopHTCnU0RyyEXJnX3UpD5aHVOq2loFqI6aStcbCiL9O51WjYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6916
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


On 22-10-2025 14:28, Kandpal, Suraj wrote:
>> Subject: Re: [PATCH 04/25] drm/i915/ltphy: Program sequence for
>> PORT_CLOCK_CTL for LT Phy
>>
>> On 15-10-2025 09:37, Suraj Kandpal wrote:
>>> Program sequence from port clock ctl except for the SSC enablement
>>> part which will be taken care of later.
>>>
>>> Bspec: 74492
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_cx0_phy.c |  8 ++---
>>>    drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
>>>    drivers/gpu/drm/i915/display/intel_lt_phy.c  | 36 ++++++++++++++++++++
>>>    3 files changed, 41 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> index db2b05521c62..eab49c08d7ff 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> @@ -2585,7 +2585,7 @@ static bool is_dp2(u32 clock)
>>>    	return false;
>>>    }
>>>
>>> -static bool is_hdmi_frl(u32 clock)
>>> +bool intel_cx0_is_hdmi_frl(u32 clock)
>>>    {
>>>    	switch (clock) {
>>>    	case 300000: /* 3 Gbps */
>>> @@ -2612,7 +2612,7 @@ static int intel_get_c20_custom_width(u32 clock,
>> bool dp)
>>>    {
>>>    	if (dp && is_dp2(clock))
>>>    		return 2;
>>> -	else if (is_hdmi_frl(clock))
>>> +	else if (intel_cx0_is_hdmi_frl(clock))
>>>    		return 1;
>>>    	else
>>>    		return 0;
>>> @@ -2706,7 +2706,7 @@ static void intel_c20_pll_program(struct
>> intel_display *display,
>>>    	} else {
>>>    		intel_cx0_rmw(encoder, owned_lane_mask,
>> PHY_C20_VDR_CUSTOM_SERDES_RATE,
>>>    			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
>>> -			      is_hdmi_frl(port_clock) ? BIT(7) : 0,
>>> +			      intel_cx0_is_hdmi_frl(port_clock) ? BIT(7) : 0,
>>>    			      MB_WRITE_COMMITTED);
>>>
>>>    		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES,
>>> PHY_C20_VDR_HDMI_RATE, @@ -2766,7 +2766,7 @@ static void
>>> intel_program_port_clock_ctl(struct intel_encoder *encoder,
>>>
>>>    	val |= XELPDP_FORWARD_CLOCK_UNGATE;
>>>
>>> -	if (!is_dp && is_hdmi_frl(port_clock))
>>> +	if (!is_dp && intel_cx0_is_hdmi_frl(port_clock))
>> Would it be better to move this to a different patch?
> I can move it to a separate patch I was also thinking of having this function inside intel_hdmi then,
> What do you say?

Sounds better to me!

Thanks and Regards,
Arun R Murthy
--------------------

> Regards,
> Suraj Kandpal
>
>>>    		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display,
>> XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
>>>    	else
>>>    		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display,
>>> XELPDP_DDI_CLOCK_SELECT_MAXPCLK); diff --git
>>> a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>>> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>>> index c92026fe7b8f..b111a893b428 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>>> @@ -43,6 +43,7 @@ void intel_cx0_phy_set_signal_levels(struct
>> intel_encoder *encoder,
>>>    				     const struct intel_crtc_state *crtc_state);
>>>    int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>>>    void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
>>> +bool intel_cx0_is_hdmi_frl(u32 clock);
>>>    int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>>>    void intel_cx0_pll_power_save_wa(struct intel_display *display);
>>>    void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder, diff
>>> --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
>>> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
>>> index c65333cc9494..8c6f60d9e0ac 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
>>> @@ -108,13 +108,49 @@ intel_lt_phy_lane_reset(struct intel_encoder
>> *encoder,
>>>    	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
>> lane_phy_pulse_status, 0);
>>>    }
>>>
>>> +static void
>>> +intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
>>> +				    const struct intel_crtc_state *crtc_state,
>>> +				    bool lane_reversal)
>>> +{
>>> +	struct intel_display *display = to_intel_display(encoder);
>>> +	u32 val = 0;
>>> +
>>> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder-
>>> port),
>>> +		     XELPDP_PORT_REVERSAL,
>>> +		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
>>> +
>>> +	val |= XELPDP_FORWARD_CLOCK_UNGATE;
>>> +
>>> +	/*
>>> +	 * We actually mean MACCLK here and not MAXPCLK when using LT
>> Phy
>>> +	 * but since the register bits still remain the same we use
>>> +	 * the same definition
>>> +	 */
>>> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
>>> +	    intel_cx0_is_hdmi_frl(crtc_state->port_clock))
>>> +		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display,
>> XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
>>> +	else
>>> +		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display,
>>> +XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>>> +
>>> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder-
>>> port),
>>> +		     XELPDP_LANE1_PHY_CLOCK_SELECT |
>> XELPDP_FORWARD_CLOCK_UNGATE |
>>> +		     XELPDP_DDI_CLOCK_SELECT_MASK(display) |
>> XELPDP_SSC_ENABLE_PLLA |
>>> +		     XELPDP_SSC_ENABLE_PLLB, val);
>>> +}
>>> +
>>>    void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>>>    			     const struct intel_crtc_state *crtc_state)
>>>    {
>>> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>>> +	bool lane_reversal = dig_port->lane_reversal;
>>> +
>>>    	/* 1. Enable MacCLK at default 162 MHz frequency. */
>>>    	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
>>>
>>>    	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes,
>>> gating, and SSC. */
>>> +	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state,
>>> +lane_reversal);
>>> +
>>>    	/* 3. Change owned PHY lanes power to Ready state. */
>>>    	/*
>>>    	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check
>>> enabled PLL type,

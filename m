Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Jf/AoOD32mNUgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 14:24:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2B140436B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 14:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E65010E6D7;
	Wed, 15 Apr 2026 12:24:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D8PhQD+i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57BFF10E21F;
 Wed, 15 Apr 2026 12:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776255870; x=1807791870;
 h=content-transfer-encoding:date:message-id:to:cc:subject:
 from:references:in-reply-to:mime-version;
 bh=ifjsNmHXzyrMNNxLpG4FzSE9yJqxjryDBDiiLTncpN4=;
 b=D8PhQD+iRKxk06d2nBZpKfJDPdCIekv+5YyiiZ5piBG+V0OXPTp4Qj1H
 hkT5sobJ0QB0laeRc91v9gI/WgH9yZbPt4dQv7K7SWaNAXz0uMkFh0zD1
 2U0q96QlJpXPjPO1Y4ylwAA8xs277JBf63143KQv4kxZ7rGlhnxvUO79J
 mu+Z3/LhLbNn9sAlFy6LaPGKl2+/uUrtEKzd6ceXjqx1mvrFlbH4ivzRe
 q9o4uuOAav2FZAvJnMFG5wHb+R4nwp012DaSLoHVdpdc+cbHqCyxv6fgM
 j14+lV50ESrZ774tT4Rv/4TUQE5YSPWbvwxOjTVmGeY5Uexx8YjkOLUVA g==;
X-CSE-ConnectionGUID: HTEi9eKGTXW11NKtxGQ7ZA==
X-CSE-MsgGUID: s3LPB/+7RKe+ltWj8ackbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="64774842"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="64774842"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 05:24:30 -0700
X-CSE-ConnectionGUID: jOT0HePmSiOMxoyvPCS3mw==
X-CSE-MsgGUID: JDZCbAumQH+N5XpawB+DWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227756240"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 05:24:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 05:24:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 05:24:29 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.28)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 05:24:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J0y1VmhE80FHSZGzYqRn6WcVHhPN/scoWe5/kU3bnERH0wslUFom86d2bYbd/27HUEZLk876eHeWXCOoP0Ta7kHKKLExZ5EnYT4Z/euij8DNwZR2hazAe4Oafalh6QvQT4zzMk2f0LiEci3eECry0DXqln8X8uFAK60hPgGU0qvbKsfSTrZaaNe1wJtgjnoLGsFUBHAVVFk6YKnpHbEyfH047cDQTyWOSfNERQmUDUe2ctxFCsf737Seo3BnOAnbzw3iIREgloC6QQVU7JBvaQgru8tMT11GCqurPJ/o/8pAak1EGvdutgBkZj2SNwGzgDaeQf/Hj4bfXoQLRNG+2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cU0J+1SVol62TDZWuNQ0/xtrgbFw7iK0ba4kwK6qMXo=;
 b=aSaix+4ydOkUHoONpJRrWR44Rmdweyf3fhxr4QXQk6QVH4R/j3piokx5c4oC4EAUFfKOjePRPESBS3XTjlSq9Lsu2wZD014AvxnPdELcpRMvXNX7EG6Pys9TaZEBHOhdcr88o5Mjno6vOirOe5Tz1AcSYi9WSmfYdv5V+wAEH3MPn52UHWPSjlZqxsER1Ngpoh8kkjr3biea7lN2Dqk1TOBaEI3oafr+5Att8NR2vCr88TSUhSv7nVdv1gBWLddkGG+FBIAEx8uRtR9ddAHN1Fbk4WUX9glcMCRCF1TneUPX5eZ5Kwt3nDx7k8VbeLPNs+gm+FhcrDdm+May/OJcWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH0PR11MB4920.namprd11.prod.outlook.com (2603:10b6:510:41::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 12:24:20 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9769.046; Wed, 15 Apr 2026
 12:24:20 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 15 Apr 2026 14:24:27 +0200
Message-ID: <DHTQ5KJVKH6P.38S6Z11FUX4DU@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <dri-devel@lists.freedesktop.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Simona Vetter <simona@ffwll.ch>,
 "Chris Wilson" <chris.p.wilson@intel.com>,
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, Andi
 Shyti <andi.shyti@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915: Fix VMA UAF in execbuf setup
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
X-Mailer: aerc 0.21.0
References: <20260414195834.115460-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20260414195834.115460-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: VI1PR06CA0107.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::36) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH0PR11MB4920:EE_
X-MS-Office365-Filtering-Correlation-Id: 95b3b5e4-4b72-4375-b142-08de9ae9eb3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: abE8InfRyarQS1wxnnmxyXbxeWPscsz44x7V5Awn8CUnps1QJI6O3HyzPxRrJeJndzBkRlPwbycWyo6OkdSmsaYUHqjro19hoVPoz5vMMB9vpJTVLjwNnsG7cR8ZinNM0Ng15ffZPsWDCA35RtK/EIAYWNOjbQwdZeyYen80AGcwXHZzb9J98xUC8pSWlw8KaNW+CUpR6trgT9SeGvaRHBis5KImhRgyEQ9S+TOrGohaJA400xE6MBErAIzlR/xWgZtKvXYoMBI15RXpg+MbZ3ThwKQrxhQVmQKCRRCOG/ZHSZhLtZHI5ENsR5uHLDl3iYsHK+jRpuF5T14EuFgpN9eGb6lLP7qgA89uZLg8zaZEUlpyM6cDv0bsZmiIHhQH1L3KbSzDQMUyxVkKqIPwlRbdw9ILHqchXHs32xUAVd3BwGmkjc2OwD8VNXN7LZemXPwvyG0WbtK/KNbxiKtrUoDQkuKTQ7uftFFEEU16JSnx/taABAS6kgPRUXpkKAGQ3ZzCd9GpDENLVVjWl3Wnov4CckAbH2CaXv3hek74qnCqnJ/jvo1Z16qxfd8lkzupvxGFpqMY+CtfKWSSY1/nIQ0K4rXFq8Gy5N6wZF6+qKre5qdE0ZFYWz0V2IqJzN8GvOqXVyALWL+2f95X4e4UojcWf8TPJQHzHvMTeIUzfZlCIQu8Ml5hPwZpUIqUOAFj/UA0TYObBDu4Dyfni0hzaCKzblxmL+0cCNaJNUKCDs0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3RWZnBid1ZLL0IzNWVaQzZiNkh3N0Q3TXZxeVBhSjdSZTNoNHZkSGszQS9K?=
 =?utf-8?B?a3lNOUcxS05jM0taeko5QUJjcmx6SEVmS2VkRmExbUlYUElRQlJvbnhoVHNk?=
 =?utf-8?B?MTA5OVlhYnRDU2cxYWYrMkdya0NORzJaWU9ZcUdvVVRudFBpb2RCZU1ZejAr?=
 =?utf-8?B?d2RKMEY3UThvMytENE5nSmcrVko1YWEvc0xnY2d1WWdwOUsvWXZCWC8rQWw5?=
 =?utf-8?B?aDJxQW5ncHhHODVNTThZZXhWTi90Q0J3L01JUXo3ZHh3UitySlExNWp3RzV6?=
 =?utf-8?B?K0U0eHRFSWUyZXZzT3NTYyttNVpSWEVXdURqaUZZQkFUNDY0Vml0ekxESk1l?=
 =?utf-8?B?VzN6Q1RmUUh3c1NvbVA1VUowaFFwWDFYbU42bHhuWFJ4TVViWldUaGI3Um5Q?=
 =?utf-8?B?ejI4SmhoWDVxcnREZjBXbm5raFhTSVlpM2hKY0FCYnVYRGNlQzc4Sm5zMXkv?=
 =?utf-8?B?b013Y1lOS1ZHa3ZGYWlkajBsL3JUcHVrY0NaU2JCZVhTcUhEbFFDY3VkWFha?=
 =?utf-8?B?bVZzSTNDRDR6U2s2c25qUTVzRnhmUHNDSlpBNGMzV0Jxd3R1cldGaDJtU1N2?=
 =?utf-8?B?YU1rNllMcGljYks4VXp2UmlMU2JzOGtGeEtjV3FUMkJodFF0RkhIL1RyWjFK?=
 =?utf-8?B?VzVzVlZ3SDFwVzAwUGVnRzF6cUgwUlZadWtFSXpROGd0TlZwNmZRU2g0Z3NS?=
 =?utf-8?B?SnZVVmRjb2ZVeFB2c0NZcVNnTCtyM1BXSG9YVDEycjVZeDFVSEJjckhBS29w?=
 =?utf-8?B?SFZYdVdZeWpSTG95ckc5YVUxemNTb3RuZjNLcGJNYk5HQ1NVWWYxQlo4dnJ0?=
 =?utf-8?B?TGtTa1pmMU9ETEM2OHRlL21BUzNSWWJVdklkam1nVXFTeWQ4Rk15Y3ZhY1k3?=
 =?utf-8?B?L08wODlWNGNHV29YYUxzYWhFUDZZNnB4TUd1YUVobnNjOTZMSkNuK2h5NHE1?=
 =?utf-8?B?L2JRMjBZUU5hN0FFeUtzUkJSdDhTbVAyempySlRYMUlnUzJ0STdKZTRnc2hr?=
 =?utf-8?B?d3RyUkJkOHhVSkV3emU1SDYxTFBKU0tScU5laHZqTlRyQmFlWkpYRXZBYzU3?=
 =?utf-8?B?OGRkdGNvNk9BcjQxR2Z3UnhoVksraWhqTFBacitNKzg3a0tqVmpVRHgzMVJa?=
 =?utf-8?B?cnhleGRSNThqUS9PL0NFcXFYL3R2OXY0dmc4ODFLTFhxU3lGblZraGhmeEtz?=
 =?utf-8?B?STM2eDNDZUFyajU4NVl5T0x5cURldVE0dkh4TGRTMGVtS3FQcDhsbXZrajE1?=
 =?utf-8?B?bEFvY2JvK0FFbXRwUzBKVkQ5MlV3a0txOGdsUXJWbXpaZGhZWVlTZnYrS28w?=
 =?utf-8?B?bmE3M3JqaEFpbSs0dXNjNTl3ck1oUk5oeU9MNC9ZdnhJZGpYWS9lbEhuNExy?=
 =?utf-8?B?R3c3dnhMdnZvWUUyZFREZ2QwSVlCSW9IZDVBMStxeEJTVzU2SC80OGdpNTBJ?=
 =?utf-8?B?OU5iVmhNNGZ1Y09NUFJ3UnFZajZORDR1eDVvSWZhK3dnMklwTDdWc3hUQmJN?=
 =?utf-8?B?cytoUjhGVnUvWXpnNTBQMkxnbEI2RFNZOURLM1h6S2NaVVNuNjNhWU9GQXk1?=
 =?utf-8?B?QzE0OVRxcU5RVFRjR1FpTE1Jb1VmS0dOOFNMSVhLdEhzZUZXMmZvUDdEYmph?=
 =?utf-8?B?SHZ3M0lVSTdkdlpxYVFWWGFZUVp0ZjlBNzBFbmFCWHJ1M2I1ZFNOMVliNXZC?=
 =?utf-8?B?eEUzL0dJeDVPMzNQUHlHL1RSZUJ1QmZNaFA4dXp0VHdLVEhteFVxczNhcWZm?=
 =?utf-8?B?RWdybUdsaTAya0lubHFFNE1jbnJUZjZpTHFtTjlxS0tBRTJkWUs3UllteW5V?=
 =?utf-8?B?V3RVTllpelI4SWtUSGZ6VFgxbjJLSUI4VmpIcmMveVNYYzg5blVFOE1zUDUy?=
 =?utf-8?B?TVJqNU1YNFk5M3ROQUJRbm9wOG9TMTdPa1IyZ0tDVGNZamNoRjlTbzZPZzJL?=
 =?utf-8?B?cG54MmkvYlRFcjZFUUltbzRkcUNJaGtlV3NVdTQvL0Q2b296SkNRUDZtR1Zq?=
 =?utf-8?B?Zy84ZE1zTDloWWIra2FCR3U1NVNDY3M0ZllwZUxHZG9ZM2RMWVFZYU5qVnVw?=
 =?utf-8?B?dFJ0ZFErZ0NKdWs5QUg1bER0aER0MWhsdHVhT3dGdy81OWJZZnk2YUZQUGdD?=
 =?utf-8?B?QkZ5TDFpUWJ4YWdUUFFpdW5SaWI4UE5rd0xTQWFDa2sxa01YdnNDdGxVb3g3?=
 =?utf-8?B?M0JibklTaktsdGpDQWZVTVp5SUlPc2RRQWlER2dmMXNlLzdNbllwTkZBUGh3?=
 =?utf-8?B?SjMxaEM3WnpDOFdHUWRZNlducGE0U0sycWRWbi82TGhGZDdrVUNuQkxDei9p?=
 =?utf-8?B?YklhNjJkeU9OZzl5M1owOTUrd3U0T0x2SDcxZ2FJLzRhQm5ESWEvUkhnMGVH?=
 =?utf-8?Q?NAzQKXSdEIkHxZ0g=3D?=
X-Exchange-RoutingPolicyChecked: YdfPycb0YjCLDd03kHMLFJF7RVHkNkYWYQxehbsVdPXyFC6dLHfuIn6N/xVJfFpGFXtEGMnzuDqZX0wD7vq/WLk8SVijB4ez0GlynEdk3fMwEUN31SQQB/2KB9Ei4Lc8yidTgauTINH8TDroTPc7JrhudVAUi1Hu7MMiU1oew8W7Fac2a1KQlMXfXP0mmN4EKjFxVyYI9CC6S/H6c8mHSTaglS/noPI5dV+q2s0MjUchU3HLZfN9rTECnHib4p66JGpVY/2hJ7SB/sB9J+D9r51wuz5AlWbD5jhX6xclVHJO/WwxqgAVN52catLtfLWB9RM9sRQWN8QJ4xSQPXdO/Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 95b3b5e4-4b72-4375-b142-08de9ae9eb3d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 12:24:20.1003 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N7TAoVOCqH4MDqtrnKMMpCI9IRc092s+Jay4RmpwaSRzyhKnhkkQ35HCaebBlahFQjZMwzFA+kS4408gfGBm8Yls3HPpz5n2m4C8cjV2/8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4920
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9C2B140436B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Apr 14, 2026 at 9:57 PM CEST, Janusz Krzysztofik wrote:
> We now depend on RCU protection when looking up VMAs associated with GEM
> objects of an execbuf task in a radix tree based lookup table of a user
> GEM context for that execbuf.  That's not sufficient.  While the radix
> tree itself, as well as GEM objects, freed by RCU, are safe, VMA items ar=
e
> not, and memory they occupy can be freed concurrently if another thread i=
s
> doing a cleanup.
>
> [550.183466] Oops: general protection fault, probably for non-canonical a=
ddress 0x6b6b6b6b6b6b6b6b: 0000 [#1] SMP PTI
> [550.183490] CPU: 6 UID: 0 PID: 18815 Comm: gem_reloc_race Tainted: G S  =
 U       L   N  7.0.0-CI_DRM_18329-g4e3f5ea9aacc+ #1 PREEMPT(lazy)
> [550.183508] Tainted: [S]=3DCPU_OUT_OF_SPEC, [U]=3DUSER, [L]=3DSOFTLOCKUP=
, [N]=3DTEST
> [550.183517] Hardware name: Dell Inc. XPS 8300  /0Y2MRG, BIOS A06 10/17/2=
011
> [550.183527] RIP: 0010:eb_lookup_vma+0x89/0x770 [i915]
> [550.183909] Code: 00 00 00 49 8b 44 24 38 4c 89 f6 48 8d b8 20 02 00 00 =
e8 1a 65 c2 e1 48 89 c3 48 85 c0 0f 84 c8 00 00 00 48 8b b8 c0 00 00 00 <8b=
> 17 85 d2 0f 84 b7 00 00 00 8d 4a 01 89 d0 f0 0f b1 0f 0f 85 53
> [550.183928] RSP: 0018:ffffc90001aeb7e8 EFLAGS: 00010282
> [550.183938] RAX: ffff888175b4cb40 RBX: ffff888175b4cb40 RCX: 00000000000=
00000
> [550.183948] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 6b6b6b6b6b6=
b6b6b
> [550.183957] RBP: ffffc90001aeb848 R08: 0000000000000000 R09: 00000000000=
00000
> [550.183966] R10: 0000000000000000 R11: 0000000000000000 R12: ffffc90001a=
eb8b8
> [550.183975] R13: 0000000000000003 R14: 0000000000000003 R15: ffffffffa0c=
ed6f2
> [550.183984] FS:  00007a83cce026c0(0000) GS:ffff8882a3997000(0000) knlGS:=
0000000000000000
> [550.183995] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [550.184004] CR2: 00007b5f1317e428 CR3: 0000000179690003 CR4: 00000000000=
626f0
> [550.184016] Call Trace:
> [550.184021]  <TASK>
> [550.184031]  i915_gem_do_execbuffer+0xc84/0x36e0 [i915]
> [550.184362]  ? lock_release+0xd0/0x2b0
> [550.184376]  ? is_bpf_text_address+0x74/0x140
> [550.184387]  ? kernel_text_address+0x139/0x150
> [550.184398]  ? unwind_get_return_address+0x25/0x50
> [550.184410]  ? __lock_acquire+0x43e/0x2790
> [550.184421]  ? stack_depot_save_flags+0x28/0x960
> [550.184435]  ? __lock_acquire+0x43e/0x2790
> [550.184446]  ? find_held_lock+0x31/0x90
> [550.184455]  ? __create_object+0x68/0xc0
> [550.184470]  ? lock_acquire+0xc4/0x2f0
> [550.184479]  ? find_held_lock+0x31/0x90
> [550.184489]  ? __might_fault+0x53/0xb0
> [550.184505]  i915_gem_execbuffer2_ioctl+0x169/0x320 [i915]
>
> Protect a VMA item retrieved from the context lookup table with a mutex
> associated with that table while taking a reference to an underlying GEM
> object.
>
> Fixes: f7ce8639f6ff7 ("drm/i915/gem: Split the context's obj:vma lut into=
 its own mutex")
> Cc: stable@vger.kernel.org # v5.9+
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian


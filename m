Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DC5C271E4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 23:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C1F10E329;
	Fri, 31 Oct 2025 22:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mn+zUvr+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB83D10E329;
 Fri, 31 Oct 2025 22:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761949052; x=1793485052;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=A6KYDgZZ7KigIq7UHfNheRrDXpR7mqXm+3adWvSxXlQ=;
 b=Mn+zUvr+EzYhujiX2DuHtCqj8B999+ss7kteeMIvo0EbkXutnRurXAvA
 +HsPqSPA4LCQMFK7SvCEmXbvEiz30a7bo5AELenhxBRZ2b5v2Se97j2V9
 oQcqP4U3EaYtN7Iy2J6CqCGZg25WYjHTPs8VA/h9XwrvFlZONuXLRFEdF
 qdIyp2FYO28N5Nn5A8w2yf8W6GYuNNbTYPYn0tQoiKBQdBIMaUKDT2iPY
 jwFroiw5J0qBFvnwACcv87N2uIgR6C+zy/FeQzQmvyDYd/ARh1Bq75tsb
 xNLNanePgozVREsTjhwn/OUxstkBU8dGfjFDBWyZnuzjyXn3Ts2elf2ft A==;
X-CSE-ConnectionGUID: 6ciI+uj7SLCDhH/I/Fzg5Q==
X-CSE-MsgGUID: Z1+dEBVXQOajo/5C5wqTzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="63813843"
X-IronPort-AV: E=Sophos;i="6.19,270,1754982000"; d="scan'208";a="63813843"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 15:17:31 -0700
X-CSE-ConnectionGUID: s8dt6YGPR3GkrI2Iv8nG6w==
X-CSE-MsgGUID: kZCUmMSiSNycqlhC61VH0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,270,1754982000"; d="scan'208";a="186008462"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 15:17:31 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 15:17:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 31 Oct 2025 15:17:30 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.47) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 15:17:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BqPHd0mdJCvWXw8fubGpbEu1kgOJJkLExY64HVOHNLWWSAQPAiUXETxGwH4rtAIQ+ls5mPy419cPujFeCDTQVncR3KF/iDFiNmlIv1caKq/SCBWB0UpHSmzyX2Me+pAdv9xXgkyxXM4rsVnNIdDffRxFpLaWoZKrDMNC1sdAVO7uJShnb9XBQ3kuRW8xS+2MfYT24b+PDJ/mt2sE/CduE+OIrfDAhQexNwsHsHtns+7AjpCVe/PHb3lSxpC3NjwSXqN5nI5CCWzw9LJBY9KWRkHh+yjxhLstM37YXHoTXj/6mQfCeAoUb5BtLpo0mRcqwdHp0lYahVfa85i4bZpLug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pg9lW/cPNd7/luRwIzYyqhGlvI0Ej+lNNzWU2UlFlYM=;
 b=AZph4N7mSnyYa6MjHIv/SHfDCkXUv+tm7sKwZXlZVLlZoFru7qito85Aby8uxx6fkw6NtV9GvUOxdqwcVItHty8Sm9kr1IYmiO7Pp2tgVx9AAjCOB6LGDNPoiuF27tNqFR0xPz6HlUPS3NhoPG7OMbb9sCbVAnrr/lUPLUVU+7/FwJAStlgFz34vuqokgrubN1aNxSaycaChKAdTHudT2ZnkqsxKI+Xt7tWTQMaSKxoG/5kATJl3Lsv8Q2chmVl9X01KqlQNXt1NJ5USz/+dshN9idyWkV2KwCpYIDDDutQ6zEcgG+NBJFf6XvcxMYe/v7VM56c2c1e2T1mL6YYj3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ5PPF0D43D62C4.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::80b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Fri, 31 Oct
 2025 22:17:26 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.013; Fri, 31 Oct 2025
 22:17:26 +0000
Date: Fri, 31 Oct 2025 15:17:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 11/32] drm/i915/xe3p_lpd: Underrun debuggability and
 error codes/hints
Message-ID: <20251031221723.GB2980942@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-11-10eae6d655b8@intel.com>
 <20251029205439.GB2806654@mdroper-desk1.amr.corp.intel.com>
 <176186136767.3303.5566189832436852888@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <176186136767.3303.5566189832436852888@intel.com>
X-ClientProxiedBy: SJ0PR05CA0129.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ5PPF0D43D62C4:EE_
X-MS-Office365-Filtering-Correlation-Id: 35e5a5eb-ea07-407c-8c9a-08de18cb4586
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?0TlBLEeVB9YCifMJ3M7fGKxzruoGYkigcpXXm1SF/FZV66u9SzMAhrlRvv?=
 =?iso-8859-1?Q?JNgk68usU8au6L40IqPr3d/oGyQ4SHEbgjoSSeGlk4cyCerb0woMGGE/yO?=
 =?iso-8859-1?Q?sawtqXpH8KuS9qCreBPy2uVAHPBsm1gJ7UMJeeZAzZUiVS/npE2XglSvbw?=
 =?iso-8859-1?Q?9Cs/BUaiUNuypbNQFDHsYKN7j4xemoR0ERezxcp+Q+tGz1lnnzo6rgU33+?=
 =?iso-8859-1?Q?AGlNDrQOWPyj5NibAwUkaIE26ww5atOQhQafrhieK+nmvGWBs6XqTpzqmv?=
 =?iso-8859-1?Q?hclJtqtbbB9Bj3XKaaeUHRoKMNxnqSHXQjuy4nmdjIexrMcZVQGRvLNFAD?=
 =?iso-8859-1?Q?AFfKU45mHxeG5qJ3NkpKjAtR7ExKPAmqXEYAlD/DtV9shK/LWti5LTxcm5?=
 =?iso-8859-1?Q?SwgOkF3Rc9ijIhR4Y+03d8uG+w/67wxWRzLJQ/O9Hu3nc7aeBkX8N7+Nnf?=
 =?iso-8859-1?Q?6jzmgW5i3FE6r6DkznUq7VXkZKYlNcnkzrDzLKN9eZfvg/XwjNa6LvglH7?=
 =?iso-8859-1?Q?e5UjMJXPzfWyqWxzSxk+pjFerX2MOmFx2vASw5pZszo1rxG9F6IpwpAYrH?=
 =?iso-8859-1?Q?uvNVHg1SpntVBplHasMHTY/CRqyv4eHpPghuwwxsBMYzKM1ToVfahaEkEx?=
 =?iso-8859-1?Q?J+sd0auTFzrla6y9NWAHaKTs2Es05sKQbWGXGpxf3i9/N64ZBmz+GjkONK?=
 =?iso-8859-1?Q?vEyI/6QVMfcpQfpUAYnQeSKma/TC7EiUhj7jr6yw4YEGLdL0xSZwmQnQKt?=
 =?iso-8859-1?Q?pnOJ3cyxNWHJqp2dxo36t/t2kbz/PJzNSCmZFYhmiIyWyDVKpgJPfd4XOa?=
 =?iso-8859-1?Q?cqlBnxRVs7dEly7h0VQRATcvGOPIwFVs7QqKhegs1SvRMmvp+qwpo2s/YQ?=
 =?iso-8859-1?Q?B1NKcF7boQeWwzBtOxH9i3uC78EqltiR7mbCESIvk+CRumreJ6ER2A7s7j?=
 =?iso-8859-1?Q?KQjB3QY5PYHLRj2EQcW/bBoSfVSm0Er88pX25Ocmdk9bzP6GB4Y86pQmNK?=
 =?iso-8859-1?Q?IH+8EJz2lQoOcpxgNt0wGgul089C250ePHjx2ZWH0yNf4/11eVvwCxY+bW?=
 =?iso-8859-1?Q?umb2D5lDr/fshxYGozvzeJ2kv9jOUOgU1RaNgl3LDQZDvm9MqYYEeAnHDN?=
 =?iso-8859-1?Q?2SskWvWpBgmTFkU7YdxVO/1pNdWtfVtEctfpil4xv8A1DZNi8ZoZenjD+w?=
 =?iso-8859-1?Q?/CpI6jB2bJr6n9MvOoP+QdK0abHPRp+oogqRzan4Oub1tNe2ltrUFHiNN6?=
 =?iso-8859-1?Q?x6EQ+HvwdWqa3brDBGdjVJrWAP1qyycQFKSpaUZU+sOKSrh5g7lHhFzIPY?=
 =?iso-8859-1?Q?DYGkbT7XB5Dkz738WQO5hRb34MWnIsNP9TbDc4Tq0FMiiJG4xYNC5gcJFi?=
 =?iso-8859-1?Q?chxBFerfurV3SrGSzUpuFG6Ddkm8RujMLxSY2EM1cv94Z+arJrnPaRlEPD?=
 =?iso-8859-1?Q?PmdO8UJSqPd8DNcrK7wg0mYmvSJzbxTof5fozgAqFKZdWHm5YnrdGiJKJ4?=
 =?iso-8859-1?Q?8zhKEzmp+6KvgvF9nphrYg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qD9eh5470+zjX0hhHtBgWaq9aDqhEsjWOIQfMPTwXCkiqs7XAiG+9izAY9?=
 =?iso-8859-1?Q?lLFL4GrwGCKbGftr5mhJ/vNBauQ87/OGBEL1ICaH3Ji/lyIveDtjoT5o8c?=
 =?iso-8859-1?Q?SHN4G8h9b/LV+erHUYGIRABkyuBTKCWw4/vcek/oR0HsUOeCVubSglXWBi?=
 =?iso-8859-1?Q?3sSj+i2iLGAUN1Bb5WuG/xpOt2+jzitfY7YmpR5EJr1YYR5VkEiPBerGOx?=
 =?iso-8859-1?Q?I+1ypkw9ylRXM+Go0WHbk07FiFMKkOAorEcTzwoMnJezL1SA8wajlvcIOX?=
 =?iso-8859-1?Q?Bcq/sotqufwGGNDINH8TDawl6J8t6xFAPNTiXT1qnWvMLF1LIO6kfkbu4q?=
 =?iso-8859-1?Q?h7s9oSAbErE5X3gtip0bSNmFBu7+T+91lMJpuYwD4F4TWHA2NCdEPL9qnE?=
 =?iso-8859-1?Q?UJqtBLLBqE/tIEItMMDeRi98jRR5MksU9g8vsjEwAKHKsEEtXZaDkeLi5f?=
 =?iso-8859-1?Q?kcYgZ/Hc/irGq5lbF1sXvcYT3qVNxyKrbypgyGDlmjxdl5rYMY0B8QKMSt?=
 =?iso-8859-1?Q?ERBhycljHlmIUwq2jGWN307AveYg25nl2ANj9A0N7/7mPRSiEQ58lU4qan?=
 =?iso-8859-1?Q?LKkFuaqT4kOM2fPYAovuIRag1vD6pBgb4BmOdB6lOTFmldRw5Ti1cgODrx?=
 =?iso-8859-1?Q?Jp7cW1LQd3+JtSPKsp2TTppA+bm097bdozbqGuidhXEFqFXsEtjhmyi0Cl?=
 =?iso-8859-1?Q?qOzgMbcNC9m2BTtr3wtdHzNzRLfx8XZ8zUooy9t4hv4rJ+3cxv7FMDKegH?=
 =?iso-8859-1?Q?Yr/HyFFwSEu+zSDGvBKNqbppWm6N8besREBmNWQ3Nec888KZdjB9kOKSPP?=
 =?iso-8859-1?Q?HpnvQUPNDnzTewUY6hqa86OPO9CrCGbO7mZaq1IE0MtyT9bX6I9rzGQNDm?=
 =?iso-8859-1?Q?zJ+i2kvv50RK4CHr8M4211nNmqeIxYm0xsHYecMLs9q+0eFNUBRZhzNDap?=
 =?iso-8859-1?Q?i9yXLtH3KXzuUzneLDUTCjw+xbfYLLuXhg1f9/cVS30XIxFUDhU+m91/J7?=
 =?iso-8859-1?Q?8qE9jPYdf7L4q6FIL4AQhZUHexGRjWYeF4Pytzamfq76WqcRoQzCRCvMa4?=
 =?iso-8859-1?Q?wlXERKhrW1FqqDJZ7cZkobHuyNUb+1JFFCAzAgNPhST3hVQaFd8pyM11Sg?=
 =?iso-8859-1?Q?YxijBv8tViSX2H+G/iRVN2nMEILE2ccJOINUes6Z52v9AR+onFr4DSGpB4?=
 =?iso-8859-1?Q?wq5+ABlb6cqMfL4cjHlap1V09ECpLV37EdF97gM3xYINRg66bM0rRwOxxu?=
 =?iso-8859-1?Q?mCx6R+KA17ASp12UEyEhcNSx4uschgj62tYe8ATRsByvZi+lKH9cV1Ajji?=
 =?iso-8859-1?Q?P5eG5iVpakOpjuzYyRazecuQAX9R8jq0pxuBmd4PcGoKB5mNmzgAv/lPvn?=
 =?iso-8859-1?Q?BG+Q2UtxprTAXIxzzoZCiL0Ffl1hFweaUgZzPohEIkTXIujGQlHH4zVklY?=
 =?iso-8859-1?Q?BiuYwAoFkAZiaZ3e1jDOi+Pnet4P66A06X2rqd7ZBcp7ln66xR79pRaHI7?=
 =?iso-8859-1?Q?8W4U29ps3RGM3GNEj73kW+mIiCVKp4BgUO71Rg4f046A6awSoBtMoAJlFP?=
 =?iso-8859-1?Q?k5VctqLljOtNx1N8OkzZrbMhFIvFzYcSsjVDmZokDQ5lS4wmgsuy5WDhYa?=
 =?iso-8859-1?Q?JgcVf8C+Ws29ImMisKMIDZvn32stslAlLOb0vVfyQcgc2wWGhhLTOgtQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35e5a5eb-ea07-407c-8c9a-08de18cb4586
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 22:17:25.9080 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Q8YmGls7ZVjkVY9AkZhvT86jGBPDsM7H1du9IUGId3c+XHMJjbYpH4KqSxkhDMlT8PCyLfq9XPLkEJ9ZkHpMCRVSK5rHr5Vcyw1DO9hYT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF0D43D62C4
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

On Thu, Oct 30, 2025 at 06:56:07PM -0300, Gustavo Sousa wrote:
> Quoting Matt Roper (2025-10-29 17:54:39-03:00)
> >On Tue, Oct 21, 2025 at 09:28:36PM -0300, Gustavo Sousa wrote:
> >> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> >> 
> >> Starting with Xe3p_LPD, we get two new registers and some bits in
> >> existing registers that expose hardware state information at the time of
> >> underrun notification that can be relevant to debugging.
> >> 
> >> Add the necessary logic in the driver to print the available debug
> >> information when an underrun happens.
> >> 
> >> v2:
> >>   - Use seq_buf to generate planes string. (Jani)
> >>   - Move definition of FBC_DEBUG_STATUS to intel_fbc_regs.h. (Ville)
> >>   - Change logic for processing UNDERRUN_DBG1 to use loops and move it
> >>     to a separate function. (Gustavo)
> >>   - Always print underrun error message, even if there wouldn't be any
> >>     debug info associated to the underrun. (Gustavo)
> >> 
> >> Bspec: 69111, 69561, 74411, 74412
> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> >> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display_regs.h  | 20 +++++
> >>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  2 +
> >>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 87 ++++++++++++++++++++++
> >>  3 files changed, 109 insertions(+)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> index 9d71e26a4fa2..c9f8b90faa42 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> @@ -882,6 +882,25 @@
> >>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK                REG_GENMASK(2, 0) /* tgl+ */
> >>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
> >>  
> >> +#define _UNDERRUN_DBG1_A                                0x70064
> >> +#define _UNDERRUN_DBG1_B                                0x71064
> >> +#define UNDERRUN_DBG1(pipe)                                _MMIO_PIPE(pipe, \
> >> +                                                                   _UNDERRUN_DBG1_A, \
> >> +                                                                   _UNDERRUN_DBG1_B)
> >> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK                REG_GENMASK(29, 24)
> >> +#define   UNDERRUN_DDB_EMPTY_MASK                        REG_GENMASK(21, 16)
> >> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK                        REG_GENMASK(13, 8)
> >> +#define   UNDERRUN_BELOW_WM0_MASK                        REG_GENMASK(5, 0)
> >> +
> >> +#define _UNDERRUN_DBG2_A                                0x70068
> >> +#define _UNDERRUN_DBG2_B                                0x71068
> >> +#define UNDERRUN_DBG2(pipe)                                _MMIO_PIPE(pipe, \
> >> +                                                                   _UNDERRUN_DBG2_A, \
> >> +                                                                   _UNDERRUN_DBG2_B)
> >> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN                REG_BIT(31)
> >> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK                REG_GENMASK(30, 20)
> >> +#define   UNDERRUN_LINE_COUNT_MASK                        REG_GENMASK(19, 0)
> >> +
> >>  #define DPINVGTT                                _MMIO(VLV_DISPLAY_BASE + 0x7002c) /* VLV/CHV only */
> >>  #define   DPINVGTT_EN_MASK_CHV                                REG_GENMASK(27, 16)
> >>  #define   DPINVGTT_EN_MASK_VLV                                REG_GENMASK(23, 16)
> >> @@ -1416,6 +1435,7 @@
> >>  
> >>  #define GEN12_DCPR_STATUS_1                                _MMIO(0x46440)
> >>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
> >> +#define  XE3P_UNDERRUN_PKGC                                REG_BIT(21)
> >>  
> >>  #define FUSE_STRAP                _MMIO(0x42014)
> >>  #define   ILK_INTERNAL_GRAPHICS_DISABLE        REG_BIT(31)
> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> >> index b1d0161a3196..272dba7f9695 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> >> @@ -88,6 +88,8 @@
> >>  #define DPFC_FENCE_YOFF                        _MMIO(0x3218)
> >>  #define ILK_DPFC_FENCE_YOFF(fbc_id)        _MMIO_PIPE((fbc_id), 0x43218, 0x43258)
> >>  #define DPFC_CHICKEN                        _MMIO(0x3224)
> >> +#define FBC_DEBUG_STATUS(pipe)                _MMIO_PIPE(pipe, 0x43220, 0x43260)
> >
> >Is 'pipe' correct here?  Most of the other FBC registers are
> >parameterized by FBC instance rather than pipe.
> 
> Yeah, I just blindly copy/pasted the definition without realizing that
> the rest of the file uses fbc_id. I'll change it to use fbc_id as well.
> 
> >
> >> +#define   FBC_UNDERRUN_DECOMPRESSION                REG_BIT(27)
> >>  #define ILK_DPFC_CHICKEN(fbc_id)        _MMIO_PIPE((fbc_id), 0x43224, 0x43264)
> >>  #define   DPFC_HT_MODIFY                        REG_BIT(31) /* pre-ivb */
> >>  #define   DPFC_NUKE_ON_ANY_MODIFICATION                REG_BIT(23) /* bdw+ */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> >> index c2ce8461ac9e..43cf141a59ae 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> >> @@ -25,6 +25,8 @@
> >>   *
> >>   */
> >>  
> >> +#include <linux/seq_buf.h>
> >> +
> >>  #include <drm/drm_print.h>
> >>  
> >>  #include "i915_reg.h"
> >> @@ -34,6 +36,7 @@
> >>  #include "intel_display_trace.h"
> >>  #include "intel_display_types.h"
> >>  #include "intel_fbc.h"
> >> +#include "intel_fbc_regs.h"
> >>  #include "intel_fifo_underrun.h"
> >>  #include "intel_pch_display.h"
> >>  
> >> @@ -352,6 +355,87 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
> >>          return old;
> >>  }
> >>  
> >> +#define UNDERRUN_DBG1_NUM_PLANES 6
> >> +
> >> +static void process_underrun_dbg1(struct intel_display *display,
> >> +                                  enum pipe pipe)
> >> +{
> >> +        struct {
> >> +                u32 mask;
> >> +                const char *info;
> >> +        } info_masks[] = {
> >> +                { UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, "DBUF block not valid" },
> >> +                { UNDERRUN_DDB_EMPTY_MASK, "DDB empty" },
> >> +                { UNDERRUN_DBUF_NOT_FILLED_MASK, "DBUF not completely filled" },
> >> +                { UNDERRUN_BELOW_WM0_MASK, "DBUF below WM0" },
> >> +        };
> >> +        DECLARE_SEQ_BUF(planes_desc, 32);
> >> +        u32 val;
> >> +
> >> +        val = intel_de_read(display, UNDERRUN_DBG1(pipe));
> >> +        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
> >> +
> >> +        for (int i = 0; i < ARRAY_SIZE(info_masks); i++) {
> >> +                u32 plane_bits;
> >> +
> >> +                plane_bits = val & info_masks[i].mask;
> >> +
> >> +                if (!plane_bits)
> >> +                        continue;
> >> +
> >> +                plane_bits >>= ffs(info_masks[i].mask) - 1;
> >
> >Nitpick:  It seems like we're just open-coding REG_FIELD_GET here.  Any
> >reason not to simplify down to something like this?
> >
> >        u32 plane_bits = REG_FIELD_GET(info_masks[i].mask, val);
> >
> >        if (!plane_bits)
> >                continue;
> 
> We can't use REG_FIELD_GET() because the mask parameter must be a
> constant expression. That's why I went with open-coded version.

Oh yeah, I always forget about that restriction.  I'm fine with keeping
the open-coded version in that case, although you may want to move the
plane_bits assignment up onto the declaration line.  And maybe use
__ffs() instead of ffs() to avoid the need to substract 1.

> 
> We could change the current patch to use REG_FIELD_GET() with something
> like below. What do you think?
> 
>     |diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>     |index 43cf141a59ae..34faedb9799c 100644
>     |--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>     |+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>     |@@ -360,35 +360,28 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
>     | static void process_underrun_dbg1(struct intel_display *display,
>     | 				  enum pipe pipe)
>     | {
>     |+	u32 val = intel_de_read(display, UNDERRUN_DBG1(pipe));
>     | 	struct {
>     |-		u32 mask;
>     |+		u32 plane_mask;
>     | 		const char *info;
>     |-	} info_masks[] = {
>     |-		{ UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, "DBUF block not valid" },
>     |-		{ UNDERRUN_DDB_EMPTY_MASK, "DDB empty" },
>     |-		{ UNDERRUN_DBUF_NOT_FILLED_MASK, "DBUF not completely filled" },
>     |-		{ UNDERRUN_BELOW_WM0_MASK, "DBUF below WM0" },
>     |+	} masks[] = {
>     |+		{ REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, val), "DBUF block not valid" },
>     |+		{ REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DDB empty" },
>     |+		{ REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val), "DBUF not completely filled" },
>     |+		{ REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DBUF below WM0" },
>     | 	};
>     | 	DECLARE_SEQ_BUF(planes_desc, 32);
>     |-	u32 val;
>     | 
>     |-	val = intel_de_read(display, UNDERRUN_DBG1(pipe));
>     | 	intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>     | 
>     |-	for (int i = 0; i < ARRAY_SIZE(info_masks); i++) {
>     |-		u32 plane_bits;
>     |-
>     |-		plane_bits = val & info_masks[i].mask;
>     |-
>     |-		if (!plane_bits)
>     |+	for (int i = 0; i < ARRAY_SIZE(masks); i++) {
>     |+		if (!masks[i].plane_mask)
>     | 			continue;
>     | 
>     |-		plane_bits >>= ffs(info_masks[i].mask) - 1;
>     |-
>     | 		seq_buf_clear(&planes_desc);
>     | 
>     | 		for (int j = 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
>     |-			if (!(plane_bits & REG_BIT(j)))
>     |+			if (!(masks[i].plane_mask & REG_BIT(j)))
>     | 				continue;
>     | 
>     | 			if (j == 0)
>     |@@ -399,7 +392,7 @@ static void process_underrun_dbg1(struct intel_display *display,
>     | 
>     | 		drm_err(display->drm,
>     | 			"Pipe %c FIFO underrun info: %s on planes: %s\n",
>     |-			pipe_name(pipe), info_masks[i].info, seq_buf_str(&planes_desc));
>     |+			pipe_name(pipe), masks[i].info, seq_buf_str(&planes_desc));
>     | 
>     | 		drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
>     | 	}
> 
> >
> >> +
> >> +                seq_buf_clear(&planes_desc);
> >> +
> >> +                for (int j = 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
> >> +                        if (!(plane_bits & REG_BIT(j)))
> >> +                                continue;
> >> +
> >> +                        if (j == 0)
> >> +                                seq_buf_puts(&planes_desc, "[C]");
> >> +                        else
> >> +                                seq_buf_printf(&planes_desc, "[%d]", j);
> >> +                }
> >> +
> >> +                drm_err(display->drm,
> >> +                        "Pipe %c FIFO underrun info: %s on planes: %s\n",
> >> +                        pipe_name(pipe), info_masks[i].info, seq_buf_str(&planes_desc));
> >> +
> >> +                drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
> >> +        }
> >> +}
> >> +
> >> +static void xe3p_lpd_log_underrun(struct intel_display *display,
> >> +                                  enum pipe pipe)
> >> +{
> >> +        u32 val;
> >> +
> >> +        process_underrun_dbg1(display, pipe);
> >> +
> >> +        val = intel_de_read(display, UNDERRUN_DBG2(pipe));
> >> +        if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
> >> +                intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LINE_COUNTERS_FROZEN);
> >> +                drm_err(display->drm, "Pipe %c FIFO underrun info: Frame count: %u, Line count: %u\n",
> >> +                        pipe_name(pipe),
> >> +                        REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, val),
> >> +                        REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
> >> +        }
> >> +
> >> +        val = intel_de_read(display, FBC_DEBUG_STATUS(pipe));
> >> +        if (val & FBC_UNDERRUN_DECOMPRESSION) {
> >> +                intel_de_write(display, FBC_DEBUG_STATUS(pipe), FBC_UNDERRUN_DECOMPRESSION);
> >> +                drm_err(display->drm, "Pipe %c FIFO underrun info: FBC decompression\n",
> >> +                        pipe_name(pipe));
> >> +        }
> >
> >As noted above, I'm not sure if 'pipe' is technically correct for this
> >register.  I think it always winds up with a 1:1 relationship on current
> >platforms, but would it make more sense to just move this check and
> >print into intel_fbc_handle_fifo_underrun_irq() where we're already
> >handling the FBC stuff on a per-FBC unit basis?
> 
> Yeah.  We probably want to check if there is a valid FBC instance
> respective to this pipe and then read the register.
> 
> I see complications with moving this to
> intel_fbc_handle_fifo_underrun_irq():
> 
>   1) The function intel_fbc_handle_fifo_underrun_irq() is more about
>      disabling the FBC on an underrun.  I think reporting that the FBC
>      was decompressing when the there was an underrun makes more sense
>      to be grouped together with the other info related to FIFO
>      underruns.  It could even be useful if, due to some hw/sw bug, FBC
>      is still doing something after we disabled it (or so we thought)
>      due to a previous underrun.
> 
>   2) Logging underrun debug info is currently guarded by
>      intel_set_cpu_fifo_underrun_reporting().  So, we would need to
>      complicate the implementation a bit to ensure that
>      intel_fbc_handle_fifo_underrun_irq() would only report when
>      reporting was enabled.
> 
> 
> So, I was thinking about defining a new function
> intel_fbc_fifo_underrun_log_info() and calling it from
> xe3p_lpd_log_underrun().  What do you think?

Yeah, that sounds fine to me.


Matt

> 
> --
> Gustavo Sousa
> >
> >
> >Matt
> >
> >> +
> >> +        val = intel_de_read(display, GEN12_DCPR_STATUS_1);
> >> +        if (val & XE3P_UNDERRUN_PKGC) {
> >> +                intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKGC);
> >> +                drm_err(display->drm, "Pipe %c FIFO underrun info: Pkgc blocking memory\n",
> >> +                        pipe_name(pipe));
> >> +        }
> >> +}
> >> +
> >>  /**
> >>   * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun interrupt
> >>   * @display: display device instance
> >> @@ -379,6 +463,9 @@ void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
> >>                  trace_intel_cpu_fifo_underrun(display, pipe);
> >>  
> >>                  drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
> >> +
> >> +                if (DISPLAY_VER(display) >= 35)
> >> +                        xe3p_lpd_log_underrun(display, pipe);
> >>          }
> >>  
> >>          intel_fbc_handle_fifo_underrun_irq(display);
> >> 
> >> -- 
> >> 2.51.0
> >> 
> >
> >-- 
> >Matt Roper
> >Graphics Software Engineer
> >Linux GPU Platform Enablement
> >Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation

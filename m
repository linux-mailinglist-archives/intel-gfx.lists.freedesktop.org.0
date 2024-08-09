Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 258F394D4A8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 18:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F8F10E987;
	Fri,  9 Aug 2024 16:25:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jq4bhzuD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7FE10E985;
 Fri,  9 Aug 2024 16:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723220755; x=1754756755;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=O+5yGEmIC0i3ETV1lfUJCvnUZFmQs9TkwTCYTV1Oi3s=;
 b=jq4bhzuD4GXgxajABzg3Fg5KC1rnKSB5ckRGi1cCI3X4QOIGcC2n3nVb
 0hH0wopUmI+Cn3j1EWitktiNKd4nxoJHOfXwYqzWLSV9bgGyLT+/q3qJe
 qtDdMgCgamOpkg5LUeNCSpLz/YvpwV1XFny7TEoFtXdy5D0vVZ5E/lOJT
 81swLJfXJGJQKbq9OIIB+kdUX+4vf62L1bSI48px0aASEtlcGtwF+lYBC
 8bsfaReoXi5xU34s1QAf6WMzwRVFYZbNgyLvir77i2ucXIpINYpoJXBuk
 70g0FF/YfBJ8EQAQ+5LuT0rEswWkBafED5fkTJ9aQEGL8KfUe3n0gBw31 g==;
X-CSE-ConnectionGUID: K449KWu9TaeUlgu5y45png==
X-CSE-MsgGUID: bzLuTvz/TNuGry3ig8auBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11159"; a="25268827"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="25268827"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 09:25:55 -0700
X-CSE-ConnectionGUID: bBcaibWZRHWddQslnEKIxw==
X-CSE-MsgGUID: Bp5GoeezT2S/M7VQEDzBiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="88253101"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Aug 2024 09:25:55 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 09:25:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 9 Aug 2024 09:25:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 9 Aug 2024 09:25:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m17HQf2PSkyjAwjPak/yidOpv0unmR8Xnw0O0uF/nRobuvgpg0LqmGOxTKJSvCAZ7Vivx0rGiouf+jA3bbvIWPF6XlRzulfeglrb7cMqacX8KpwyEsLw1pG1G125dUHZtdWocAe/Fr2dOQmlrV9FgJ10qxCaM8tgMO32FSTt9FraKSK2fABxToBWEms1BQaP4SQGWgbTcq486GzFMk7cchMTK2HH4PBxpNYMd/f6bG+VpFaYQIbfIWUFP32Xq+gQ50xykQpxqJ/Ng8Dd5B8fuxF8wrzY4hiHqNKCsR9/hfh56E7KFlhy74/aYZFLfTxxgzTUBDmqMAXbllrOcgOTAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=67F+S8sgjqHL27oQbJk9U4BBU0kAh3UsUYKXUBCRWHY=;
 b=Yi6gQsXS7JwVP7SCDiu55YVTnL65vVFxWnfFd08AYJ/iaS/Sacd3Y7MJ1IpnBGT9m9EjIO/J01YDhxW9CGZklUSErGBJVKVrge7NcrjLpC4jtGK1NUvM+5cXH05rGEDOT4EOUYcfZxPFcS3mb3xOPz/s0o0DP17z42ZZAu1kdhTpznOTIeh4iRLGzEzelgy3mwi/fIYBRzQBSeBg2jphLqqqk5O5R5qJ7bzO9QMXmh8u4tGZ07Fed+rHpvaAvpG+YhZIvVjFJmVKTXOs0hmKQ+RpxSun8/c+3YRUPncD9PB9gr6yta69X1I+Uy1D9CUbcb1bS5hL+Oq6u+KGO76kEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB6007.namprd11.prod.outlook.com (2603:10b6:510:1e2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Fri, 9 Aug
 2024 16:25:51 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7828.023; Fri, 9 Aug 2024
 16:25:51 +0000
Date: Fri, 9 Aug 2024 11:25:48 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Gustavo Sousa <gustavo.sousa@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 00/10] drm/xe & drm/i915: drvdata usage changes
Message-ID: <luk4l4jlidukwvo5y3cxajcvou2s4gxseopifb6fmltbwysode@lfjilqcrjvgj>
References: <cover.1723129920.git.jani.nikula@intel.com>
 <2pep6oj5dd7ocei2a3egnm3agoa46nxad2e6e2riwby66khfpt@22g2ari2u4ps>
 <87mslm2hg0.fsf@intel.com> <87jzgp3k4c.fsf@intel.com>
 <7a6in4kafx2umpil7tmjxpbt55oumgovcgbyjawiihbjz4gm67@vidlbchuk6me>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <7a6in4kafx2umpil7tmjxpbt55oumgovcgbyjawiihbjz4gm67@vidlbchuk6me>
X-ClientProxiedBy: MW4PR04CA0237.namprd04.prod.outlook.com
 (2603:10b6:303:87::32) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB6007:EE_
X-MS-Office365-Filtering-Correlation-Id: 65c431dc-acd0-4e0c-4245-08dcb88feefc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Jemq7p08ncwpjRqFofyyRuOBApYx/YjA+UA+tHua1Rq5OyKrN+5C7lQFb9Nd?=
 =?us-ascii?Q?S/rEtoossz3xVxVs4wZxGIUUNtBdKqHTSpDhpXNx3qQlwV3+WzCd7e7MmR4d?=
 =?us-ascii?Q?yYa6rWS4dXTvqNHnCG28syUQZV7vBVxAetQT3mNTrn1at+pC1S1cfUCNra/3?=
 =?us-ascii?Q?47tyo5itrDe8iLUkMo1lKDVIt2gwNJ7OmBE3IScc4ZVCwx2jlVhmQiACoB1G?=
 =?us-ascii?Q?6YKXTVyiNAH3T3H6RQdoxFAfL3Xx0VlmtRPl3WvampI9QEEHgkipn+LgAYr0?=
 =?us-ascii?Q?edmnVRsxKUPFcf6W4Wj+QGFrnNRMxovP1R0NJTgXumb4A7c8PWhu4XVQ1b4i?=
 =?us-ascii?Q?o0Qwnx2Y5Z9Kg6lVCKc1ezGheyBemqdn2og088GAPNQdL5NQJW+L+RRIeKCc?=
 =?us-ascii?Q?khjOj8LRAStmzh2PZZV0NXlk9irVwh+XEYqG007bO2oBP15sACJp42w61AP9?=
 =?us-ascii?Q?YhCwDPXW02InIFY/Yv0nin/Z7St+/U7gdLI3bqPybLkpTShbbVoCLxJ86DEO?=
 =?us-ascii?Q?nzOVkT+nVn2VZ9Vu6vH8QrRANsgcBXn0WcmV2L917l+M1WtuC8y4NRwV9LxG?=
 =?us-ascii?Q?UN1fAhxdY5EPfSgF5Byl2u9ITK/VsJ3l2hB3qzZ7GSqBy/rfrqLfO8nu9I0T?=
 =?us-ascii?Q?rkcoh6jW0hE7pUJSvXUmo3Q4/ZJe2bycy/JQF09m/iVbisS+ufSOhRELQx48?=
 =?us-ascii?Q?xJ0cSaSpMtsgQlUfXp/aFMVdujaPoQ/7OGimBhxeH254F8Ys4KBeUVAF80oO?=
 =?us-ascii?Q?DQJIePp0L4djn8fId7WGtAhgOUP1DqvPl2cvJZhCK6QYpbWVyVr0AJsziO84?=
 =?us-ascii?Q?1amNzwY8Zw2/Y9fkQfoHWA/lZ1ckyXAdg94mlNAlsRgGXR5RdFkYoG+RaNKP?=
 =?us-ascii?Q?iYKB3eFmhuOPHog7jxuIVnuBtkcQFZMQa2P+z4nRJGGSounxrmBKH8Mz8QHS?=
 =?us-ascii?Q?We8a5bxJCr2Ul7TK/UchNqCNYVa6Bwjw2OrnsGqld0pcZXKEPBPCQR8k2432?=
 =?us-ascii?Q?sHyFU+2mOnVPMk3PrV3fTIc3DT09iVSmKPWFRDjUGjPVSvhMtLGcCkbfxYM+?=
 =?us-ascii?Q?MXmP0iQbKKH5O/pSRPGHfS+p1BCONvI4LSNmED49JvCNfCbTKwNdp3ODpWaR?=
 =?us-ascii?Q?F/CtkI+0KTDjm13EmHt7fyDC9hBMio7oVELV0GMpoN9ofgDBVAdk80dRbQJj?=
 =?us-ascii?Q?YRULkOmXBunqTCDTK7TgsicE9oZq0sFSRChUPj4DMmz2C2lQvJRTLs8r3MqP?=
 =?us-ascii?Q?I/7i1Qh5efLIiV8OxK0kv1u56StDb5DMzTd3simnftaeFcksu1ixLA8rj4t8?=
 =?us-ascii?Q?FC/6UztZc4vjq6+X/eCzudfiA8ir579GRIoLk+SreznlwA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cmZipS1i64vzavnqivgIqn5zcL8MwutBYHBqrQbLidXwbadZ+AiRduFGH5QF?=
 =?us-ascii?Q?daA7eZm8ZGzBF+2CInqF41U4q/YGkLXqD5cY1E3HucLKTOYTiAJEjJtLYmDC?=
 =?us-ascii?Q?p6WzxI6iGqyA2lMb5GeKyycnYzVwFRiXdXFYmBa28m2CKs4lZD1fk7wF0owP?=
 =?us-ascii?Q?k+og4x5UMlyhupwPgJRoTtbJPwZufvs203qb9OgbTPmrj30+zwHR9fe/pyPK?=
 =?us-ascii?Q?8Rnm+hAdbAxkH2Fn3iIyTQc5iAqh7VsqF12XX1+cSus5kiSUcPUFCCtc6r4Z?=
 =?us-ascii?Q?5Sdb2quGmGQ4k8Vx+SjGnQme/C7IeG0azwlcpz1MWSkIMCjsZTzFCj7sUcmS?=
 =?us-ascii?Q?J8DPvaxPN5wOnICWL943sg4SRTP2n59DbArMJzHoSiprMdCwyspK3tdsVXh+?=
 =?us-ascii?Q?KHdlCiqVo9o4IzqEKpghYI9aqoSC3Md2sjOndZkROqeIvuO2u5JcyP3PRcIP?=
 =?us-ascii?Q?KwTv8g7fA9RaIt2M+ev1IVqvJYpTh3t6Db7WIikdeulv6C9XX03540Q8doAz?=
 =?us-ascii?Q?glx3pKjiqs0EnnIVECFBjTC6kAfSeqSAPycGB/3G2nlapgNffffj7GZMEjAP?=
 =?us-ascii?Q?asRBzNsFAEDOq0CEyv6ZVNGT222jBreUVexKFJZVze4UlZyZ5zLj7UyeXhQ3?=
 =?us-ascii?Q?DQs4LT1pGGFmDdfuqFnVOLt7dC+nM4BQm8UM0tHxulJPIXwLxr6I5+GkFC3o?=
 =?us-ascii?Q?Xgv+t9f4pkWizJX59kwOV2FkmxTLP5rG8ygU7rKH64temQudg/EUCVJVUc0H?=
 =?us-ascii?Q?UOsjPh7ev1RGRVZkyiahMBifSjLKScZc6WMaBJpcwJWFApjd6sy3RuOyweLP?=
 =?us-ascii?Q?uTE9if+lDcevdL3Ge/eAh0XboZxNUL+IFs0u/H3F+htWuLeLjw1QfSraG2Pw?=
 =?us-ascii?Q?jsqUGHmB1s9MLyhUaIWO3xOzcBrwzOu2770/FS03NQYRhfqw3ul9/XmA/45g?=
 =?us-ascii?Q?ckidCIvds5R8hr0+LD19rAtb29u2sb9SXdKMMUHgnvqaPfdDuN/TMQLF4JBc?=
 =?us-ascii?Q?/Za2i0rVka6BSkxftvgQMjaRhDnvJXs8jVCWCT/VnDMNi/1xDB644pkmVF4d?=
 =?us-ascii?Q?3UDWzjLkDxwytVaiAfpY6xGRT3OzAFujjp64rkNjwUaCuwKoLtBpZUSc8/JY?=
 =?us-ascii?Q?+sS8XGLVH2Sdly6hUGXigTILQosFNapi1gakApdnjiClrjJ/x8XTUxvgCwtt?=
 =?us-ascii?Q?FpKYcQ9LsodO2KJCJcDRPMJB4oF47uKR498mwqcb+rpkee2/S12ZHX94dyjb?=
 =?us-ascii?Q?tXVv/CzzEctljkg4L2yo+IqfUhWEUMAUvKQU4q4ybp1IqsdynGOl/xkP6h5G?=
 =?us-ascii?Q?RvsACRTtzC7Wwmi668dzrDQCG3Wd1iY2rXMeQRMrwnZzZPgjzDTK6clKl3v3?=
 =?us-ascii?Q?9ceWL5T1Xr1cjCprpYHPuhmOtInvskXr0kp8rHvzSRl0hasPZcOoTl3Y9Rfo?=
 =?us-ascii?Q?B0kqEww5XrRr5gK8OJTQ4hCsp/Z+jNQfqm96FUwcGE2TboGhlOBVwdQwFYFv?=
 =?us-ascii?Q?9ObF9eECRLzwOUzXix/jMd1f/XTghqE3xFVToz+V0Z+g8m7HTgtCFLszYed9?=
 =?us-ascii?Q?rarFCsZVpkZRyHrjPgGmbkJpc/HZIwphw2h4FR2JcqwqPJBZWtHdxR8pxuZ8?=
 =?us-ascii?Q?WA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65c431dc-acd0-4e0c-4245-08dcb88feefc
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2024 16:25:51.0653 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JaU8t9n63cIObght4t6/rnpSa7F46NkIZ0ChdtwmQ6h+X21wA8WVcH3VuVyVdZlgtRLBnuzs0czwA95wp2So8JtAlO8H84cG5VcOI+oIfO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6007
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

On Fri, Aug 09, 2024 at 10:58:24AM GMT, Lucas De Marchi wrote:
>On Fri, Aug 09, 2024 at 04:23:47PM GMT, Jani Nikula wrote:
>>On Fri, 09 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>>>On Thu, 08 Aug 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>>On Thu, Aug 08, 2024 at 06:15:45PM GMT, Jani Nikula wrote:
>>>>>v2 of https://patchwork.freedesktop.org/series/136621/
>>>>>
>>>>>Removed "drm/xe/tests: fix drvdata usage" from v1 in favour of
>>>>>"drm/xe/tests: remove unused leftover xe_call_for_each_device()" here.
>>>>>
>>>>>Due to the display dependency, I think it would be best to merge the
>>>>>whole thing via drm-intel-next, and do the first drm-intel-next pull
>>>>>request and backmerge from drm-next to drm-xe-next in fairly quick
>>>>>succession.
>>>>
>>>>I was waiting the drm-intel-next pull to do a backmerge as we started to
>>>>have some big divergences. I will try to review the missing patches to
>>>>expedite that. Are you planning a pull this week?
>>>
>>>Rodrigo? I think it's your shift.
>>
>>In the mean time, ack for merging this via drm-intel-next?
>
>
>Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

oh. wait... but I don't think you will be able to merge the first patch
through drm-intel-next.

$ git branch --contains 57ecead343e7
+ drm-tip
+ drm-xe-next
* tip
+ topic/xe-for-CI

Sorry for not noticing that before. Alternatives:

1)
merge this patch via drm-xe-next, and possibly (if it unblocks more
patches on top), your 'drm/xe/tests: fix drvdata usage" from v1' via
drm-intel.

2) do not apply this and patch 10 until we are back in sync.

... something else?

I don't have a preference.

Lucas De Marchi

>
>thanks
>Lucas De Marchi
>
>>
>>BR,
>>Jani.
>>
>>>
>>>BR,
>>>Jani.
>>
>>-- 
>>Jani Nikula, Intel

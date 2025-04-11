Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B58ABA8604D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 16:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE62D10EBE5;
	Fri, 11 Apr 2025 14:18:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dx/pPV9m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FF0E10EBE6;
 Fri, 11 Apr 2025 14:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744381092; x=1775917092;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4uDdCPG8XNqlyWAILCuPEGMNfmr+kL0u5MZzVjpPA0E=;
 b=dx/pPV9mIxWNSqCZc4mE6J5P6fPxtQ7G3lu9ThaZW9vT6tN+YXf6mbbO
 /PLfTM9IHPbLxftwO4u5GGXHVihCV3etnN6wriLBRWJOt561cTUSGhQkS
 6P8nqFzDlQYVxc1mCG4k2b6h05wna7agWA2yJkCtkh3vUiFeNd5HAa0yg
 o/t2J58zO+Oe/+7jjybqpQ/Udb6XVyWJkzW4gXmrG+8KkOoSN4Y7Ue1ss
 tdmxhILkBINVhCfhYrWINCpuEQX6qL9TsD21Fx+gvNH3brWmUo0ZNg7FF
 MMI1VbvM/+C9LJLjpBkKuLIbCt1XAUQNv9ZLvxTUtNZzopoFuo0gzKAuO g==;
X-CSE-ConnectionGUID: wC+FrSaxSc2cKJqCFGTOeA==
X-CSE-MsgGUID: 1MMdEZhCSh2RDmUR+OA8AA==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="68422143"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="68422143"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 07:18:11 -0700
X-CSE-ConnectionGUID: k3yfQHBNQrWNrsjHQBmJ8g==
X-CSE-MsgGUID: KkI1yiCWTdqzF2ppembwog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="128981038"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 07:18:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 07:18:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 07:18:11 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 07:18:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gw9Y1EQELHAGzAZ4T+Pxjb9XjFvG46JG+1sUymHRQYp+YpYYjQb2rRpSwRK3ix/6fMr3ji77uRsvVkUtu7YtKTMApePqCIHj4oILpJbqztVFaWNHIfuq1vTJIOsgp8heOE/0XmnlvubwJDQIBy82HF6JFuo7e1i3Kg9bhjzl2OF0m+dtEmQWASUR1wRJLqK65sPUcCjwlkOzbHsqnJpE4D2cVD62cRf0kSdNG50ubl0p+J4GQYXcHOOYZsLhddq8R/zTMS/u0nfiVr6Lkd930RUvhrNHMmJkbHQ5s6TzFeFfMsWAmNNVzeVRs+uST/yhVkcUgWpJFs6MdLZ9NZfv5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7bBPSWL7mN97PT7/n53offtuq0mGf06gmwPuFCpHIhI=;
 b=nK2Dqs41sWsjsYE5GvTKR/jApN4NDyhJ73tDm1LciS4xObVBWGkERLctL+jNH8ncqjkI1HduJRxXXkjI21q2/pUVFb3/G7MBoyN4aRD7M5pkUS/wBzmUVo3yh2U0zSj4icdieHGiDdcyAZZ8nkw9VNXzGs5FbcbCMzyaKvE7KfRW1iHbFcLeMcBXB5roCrt0O6cFFhU7B5J3RrMk9I1zqadsKGl3f42ZYM+ySmLrM9FYODFCB9tpFk3XuG/iIzB2gI1dkEFnRzmHU34bNkGuPto/Z0E6J1ixOXxBPr5UROr/PpsdHEaj+KrXCenKv/FJDjCF3vVuhkoNKuHvOafg1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB6966.namprd11.prod.outlook.com (2603:10b6:806:2bc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.29; Fri, 11 Apr
 2025 14:17:38 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8606.033; Fri, 11 Apr 2025
 14:17:38 +0000
Date: Fri, 11 Apr 2025 09:17:36 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/4] drm/i915/display: Convert intel_pch towards
 intel_display
Message-ID: <dso7an5ln47xqjbhh5r7mighwt7fg3cooedxx46qi4ssde5qa5@qqka36ocja5i>
References: <cover.1744364975.git.jani.nikula@intel.com>
 <8ffe86eb2a02153e3f866a81fb6dc8a3327a0f25.1744364975.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <8ffe86eb2a02153e3f866a81fb6dc8a3327a0f25.1744364975.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P223CA0010.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB6966:EE_
X-MS-Office365-Filtering-Correlation-Id: dbf8cbae-0efd-4758-3909-08dd79039d37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FCGDA0CJnDKxH9XaF/6+nUhZ18JGDpzUhmfA+jTtwPZa2JI1cd/qJqy5TlNu?=
 =?us-ascii?Q?4cuzEW7uQt/n/ipG/fmZPGDgC/M84sbOTzcl0t9i6mNpq9MeuGv8IaPyAVjY?=
 =?us-ascii?Q?piAndgQo5BF2FxPYY3LC9s1XI3sjRtIUjMSTgW5BGbbVtAMGND8OJlMQJ3Xi?=
 =?us-ascii?Q?x7jZhURvS5SRKdxSuVvawt7oAoVPpuWXQ2NttqKn7DYaZSlBphx9wHhNKWv7?=
 =?us-ascii?Q?M70J5MugbeGaupEiEf7OvwstIh8ZivRZtnVRUAYLLyPIsGh6kFePcheCFlcV?=
 =?us-ascii?Q?RTAMe2RRVBc8cSElcr2SfTL0ySLcH5ZazTeHMM7AlwjZ9bmyLNuVksRzYM3y?=
 =?us-ascii?Q?Majx7g1XzW7ZYuE02BsnAR1MWldWoR41pFuvjKAiAMLDrDF27VmmZ5SbmtR7?=
 =?us-ascii?Q?btK0gt6vbNwhp3hIs5Gh6brKTrX/6qSNJDbvlEQ8ID0ZdSH5HDTwR4XEwVQs?=
 =?us-ascii?Q?U15Cd3bpQvo/VGxAuHDJwsgbup2LFro4WUl3R4tkKgEBzvAoYQoX/xY+YT7e?=
 =?us-ascii?Q?VZyTfWwVrOXiwJrFIYJg3IzRiTBtkfdaVQcreIXm8Fk3V0gRD9a+l+xmi3x6?=
 =?us-ascii?Q?fpPMB3SZndqLiFSupflIY1lveWJpqtBKlp5skbVj4eSfDKzVBhJketozKCsK?=
 =?us-ascii?Q?UAjIRhYbv+gwWzYg9lA6WDmQUB7NbBdJTNx5CzAMIaoQFJ5prs1nCGQdAjWb?=
 =?us-ascii?Q?o9gLEsaRg+aLfVkS6RDcmg/q7HSmfRhXE8Xr+xJIxHcrKZ/28eWi9m7lt2o2?=
 =?us-ascii?Q?rRVnmJB6X3UfM5k+4qJ3u4pabQqBUeCIyLe/lh/Yl/4UupJuUDd3KISD6fmy?=
 =?us-ascii?Q?nIwVpl3VzqOYuM5lc49rRcOicob85FhR8phmkNJMEuxBvYkIdWyCeWoKvSNt?=
 =?us-ascii?Q?XBukG3kLlzX44ScsfUs1oYW4IAX9VuD0U4e+n6AvB4BbMg6saHtvkmOJkxyH?=
 =?us-ascii?Q?9uJl2G0evVJl0uOvZwPtlciMI748zkSM0Felu1/gQzcNfMGhxb/EsAT8MG4W?=
 =?us-ascii?Q?VBg/azLdVoxu5ZW+7myZAU67yQ/+afiYPNP7EiFBV+Pl1QmsFjsyYUR0g3wN?=
 =?us-ascii?Q?kbyNjnzD20bqyIo7GkZ5GuJ9kb5ySpxW9P8YxS7y3OcvN9303ftyxxSvX1nW?=
 =?us-ascii?Q?QyzUx8Qhj6VQgnPEHDvDornlKrv0KtGMD18wjUCsSj4pqFc36MpRnU7P6vjD?=
 =?us-ascii?Q?nj174882+HVTrPhM0mc6F1DoIz6Rv2r0TNIYMEzT3CvyLCAAnG9Zq6XewNhx?=
 =?us-ascii?Q?539+oqo6yytNk7VThgg7IuwikIPEHDZRT6gEeZ8hs+a26m/ws2RfDqDz8QoN?=
 =?us-ascii?Q?tIxl9r2a1h8q4GHZezOSHLHSHUPYxrxyZeTDZxcJ8CLOOGeIVtawRyRIfneW?=
 =?us-ascii?Q?xA3lFFZOZQkzaAyers3aTDH5Bk2JePstRDjx3IhNuGFjjISeSnh4m+GoUgfU?=
 =?us-ascii?Q?xBf3R1OfWBc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yU4Nmf7iA14c8y2XpdZf5J3NJDOystsE5seLkbIBTKYGhr1fBCyQ7CZ3KJIP?=
 =?us-ascii?Q?OtzX5nja8sf5bYxHf4h2xw+xzggGNyYRKSbXIYsT5xEnzEvjfQf/R5cf4kwL?=
 =?us-ascii?Q?DvXmqYFsJzGJTb5nJUWT04gLmBg148zj9t4WFQnbmDSu0zUY4sdPU3sE4Jy5?=
 =?us-ascii?Q?UMU+Y5XaWqw/trTAQj3dRilZ23DSyEKar3Kdcj7XS6Lf0lvvCax8Q/0ck8mo?=
 =?us-ascii?Q?l1Bh34DGs4nIaK9vJo6h6/xayRE0NA5bdNYvr8WD9U8q9UjDlIOI90hJmZTm?=
 =?us-ascii?Q?sCplNDi9kQQ55VdTmKkAjUJVXsgPabbwUVwFTxFFmNK4a9V10HjOy6Zqlgf9?=
 =?us-ascii?Q?w77POT1chALYqwIVdAgM/NZpSD0ASQaYrQUwM544A+oqyF9S9SxRbVfzsKjV?=
 =?us-ascii?Q?OjgVuiWqU+9B3UK2J5hRbQY+SZTkC0qrVyVtb7DCFnRxWApjOGSzYKnNS0I/?=
 =?us-ascii?Q?jCvXgSoLsARY2aRRXu3i5pqgSCmI6vTJgb0U5t3HVrZAzui/Gp4I0aOiJkrA?=
 =?us-ascii?Q?9ScLTJ366OROJUUmRV1sNhD/S5KMssSzgLCUSJo2XR+Pzzaqy4IycXFFU5Oi?=
 =?us-ascii?Q?CMkMVI6Mgr9Y1UPb9FM4kWNTicJuM4Ko4lKUC3jIy5YUqrPW7Tr6gVphKEE3?=
 =?us-ascii?Q?q6/gF0qleC+YGhStkXPUiSuqva1M5zK4DVOsV/9Cw9IkmIYACgQ4hn/Tol+1?=
 =?us-ascii?Q?1KYNFgP3JO+zF2DN7CD3f5BWx0J4Jthauz48m90u4J6uJjaDCrTqOQ2W0OP3?=
 =?us-ascii?Q?USjpbCWXe8xwpONoTwLaov33Y8eZPl3PHxxsonvtIhiKOnlv98UYOLfYZkOn?=
 =?us-ascii?Q?r+44UqUcTlP092A7azIZJV9+2qeD1eidwlP/tVtMLu/RLRED2Na8RBEsmu/2?=
 =?us-ascii?Q?opwV94FzOdsA/QeB819a+jeCX1wFR24i6s2tOKHUUlDCXpg+djXWvb3HpIBp?=
 =?us-ascii?Q?DJtcUQ78oo3VM+1jS1SrByDBoKxqPxGWgaqI10wsXbRnM/k1wDXZ6bsRWZcL?=
 =?us-ascii?Q?g4+W49OEOZs4hHU7fsATSzqZC8y+XE+0D+M8zac4tUj6DqYo+ukpFLMarHA8?=
 =?us-ascii?Q?oCTSvaSIWTrnT/rvFHQwNVqCPAfCAoCbghzvGvb0wa1OaAK3zs+q0cgpZRJ2?=
 =?us-ascii?Q?Cj7utOQX/53Csc4yTZN1Jn/4Z5FlInOCjoXzEpP1JLoSsGMJAe+aFL8+3wP6?=
 =?us-ascii?Q?/M0zxU5HMnSLTlaGcL9ZpnRiLeRhZAJarkL4sgyyr9+BOv6fIezXlE3I+2u8?=
 =?us-ascii?Q?4XFRzjGBjRF4qOUP7bCW740TKFUzb9oUP7To6aVzuuwmf4hUapTrrhs416R6?=
 =?us-ascii?Q?mCo2eVgw2DF4yNOnjxKu6p7htOiqZ27EdmL2qZqt7hEJ187sVz2CdaGsqUlW?=
 =?us-ascii?Q?z7w6OZk+PJSCqJOGUb9+WAfaXFVleekcL5ISAhTCpXbdI9C5rul3wHZD5xuM?=
 =?us-ascii?Q?/DWYpQ1KFpmYJpw4aBCzF67bEDgD0sZRpsPSPa3xxSQhqew+QO0vrv9mW2LZ?=
 =?us-ascii?Q?mFbFUO3N3pA9j3V6JAsMZB+okorWUdv+xVNq3BmnWmIhkxAesYfgFmjBAn4T?=
 =?us-ascii?Q?qYvQWRBZwV2mEQxq3p3sIqNMauwVXtY7d8Z7HM6pcaCJ8+qh0CIXP8ctljOV?=
 =?us-ascii?Q?7w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbf8cbae-0efd-4758-3909-08dd79039d37
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 14:17:38.7900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +TiFS5+CoGmX8lckMtKL/BRb2dfwGIimlI+1mdhxbSI50PSAivGeKB0zGZJbJ12HDe+Giu/Yk4b76YcNiBSu3q9mJwYu5FHy7H1WrwB+qlk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6966
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

On Fri, Apr 11, 2025 at 12:54:12PM +0300, Jani Nikula wrote:
>From: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>Now that intel_pch lives under display, let's begin its
>conversion towards struct intel_display.
>
>Move the pch_type to inside intel_display and convert the
>callers.
>
>While doing it, sort intel_display_core.h include list
>alphabetically.
>
>Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> .../gpu/drm/i915/display/intel_display_core.h |   6 +-
> drivers/gpu/drm/i915/display/intel_pch.c      | 242 +++++++++---------
> drivers/gpu/drm/i915/display/intel_pch.h      |  40 +--
> drivers/gpu/drm/i915/i915_driver.c            |   2 +-
> drivers/gpu/drm/i915/i915_drv.h               |   3 -
> drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
> drivers/gpu/drm/xe/xe_device_types.h          |   1 -
> 7 files changed, 155 insertions(+), 141 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index eb6d6f2d0f75..48e47f0fd8b7 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -21,12 +21,13 @@
> #include "intel_display_limits.h"
> #include "intel_display_params.h"
> #include "intel_display_power.h"
>+#include "intel_dmc_wl.h"
> #include "intel_dpll_mgr.h"
> #include "intel_fbc.h"
> #include "intel_global_state.h"
> #include "intel_gmbus.h"
> #include "intel_opregion.h"
>-#include "intel_dmc_wl.h"
>+#include "intel_pch.h"

why not merging intel_pch and intel_pch_display? Now that both are
under display/, there isn't much reason for the split, is there?

Lucas De Marchi

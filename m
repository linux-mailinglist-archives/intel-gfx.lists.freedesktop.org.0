Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD8F97CA1B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 15:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3213110E6EE;
	Thu, 19 Sep 2024 13:21:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LRFfLQa7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C63510E6E9;
 Thu, 19 Sep 2024 13:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726752082; x=1758288082;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lbTHnSqOqaLRjzwssRkuf2Y1HjjrQkHiN+UkomH5Ipg=;
 b=LRFfLQa7qKOIWzSbefWEHpx2UFW9xai/zNeIFIHVcEh8AN+YQpfGIXiB
 xsXCPae+7LBktJZEk5IQbT479DXlCFpSbF/rp9sqvQGlyyd44N1QhkJHh
 X0iF6OATWDFbekjCbrG1xg3jnhKDs1+glUnM0Rllj316tNQyE+y357Fio
 Hf1wZrG+O/dgAkHbqx47lrnS6Q0ksOSgMWELxCDs8O53LannEJsoLRy/3
 F2y8Anc6JpuwN0BqjbzIcHB7hmEVkjGnXYQWR1MC0hQK9+FW2eZj2mMcS
 XRm4fz1G5UV7zUJgu3zrW7DAPH21duLZ++IirRXQQLd1ejaDFHzNId0E3 A==;
X-CSE-ConnectionGUID: zbIUP4ziTJW/boz/aK8eZg==
X-CSE-MsgGUID: VwmxyIARTEuDtnMjWQPl4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25591366"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="25591366"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 06:21:22 -0700
X-CSE-ConnectionGUID: V9hpZWiLRpOF2QrbAVQDjA==
X-CSE-MsgGUID: uXQ4ZgeeTEmPd+oPdI22VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="69533281"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 06:21:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 06:21:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 06:21:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 06:21:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 06:21:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xjHjd0qV3aYKWx5Mfo72CGx7cggZDeKjkG6YJi37fkJkLDVhHV/2Lg8Ey9lYIiQv0bPuxuHn9lO6mMp9dnXb4Z/bF9/Z3knfePJ6LvcsAvK1i8stZUjH2j5CuplKRsYa4OHACPk+iFwn7EIHW4RHPBMg2FA0gYouK1iPRAhNKs3Q80HBvqtj0W516fIFlwS6ODaEbVY1kKoTPgSAr2Jcc9C0+MwbaosA7U9IoLPxPQlbrkt48SF+cVSBcuwc4JpsuKBn6yDcniyX2mUxXYCIea56VZD/yxOODDbT9UjMg8KS51XYiCu8Jw2Yd5pvQxWI2febEOV5zL6fDbNV80Oq0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lbTHnSqOqaLRjzwssRkuf2Y1HjjrQkHiN+UkomH5Ipg=;
 b=I0FojApJRgPKJ+c7XwbQCAXLaZRUt4IYIky8gwDKftkh+t6HGV2uwqKy0P2usC7JxxGhU/UlI81g0ssoXpKa3zHxI8gOpkBYISwU8ckOAac0QKcICZGXkQCu//wEb7oydRGM96fTkaS4+8PgrI3S3NH4X269tIJkGBHZ67KEIrITCDUty4kk/LaVInz+O6ZamaSDnyjaagnukbLZdm6TfSR6T6K+eVsC9b6OZOhBasLqLPZ22qYAyx+IEIP+u1E1GFkHXLsd1IkEhidhk9fHmlgDTTZ7exmf961Bx5w/L3aQAnB3OdQD/m9aUMMrnX2zboXxn49nraKUCgfwmHDRxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.17; Thu, 19 Sep
 2024 13:21:19 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.7982.016; Thu, 19 Sep 2024
 13:21:19 +0000
Date: Thu, 19 Sep 2024 08:21:17 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>,
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 10/22] drm/xe/display: use correct bo type in
 intel_fbdev_fb_alloc()
Message-ID: <yvz4kekrt3vemmrcdfd4fd3nhm6fwwbjsjqzlw7g6wa5w67ryz@kkh4c7ivpe36>
References: <cover.1726589119.git.jani.nikula@intel.com>
 <344a5a4c88a3ce17dd276b0155bcdbf93e5fb475.1726589119.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <344a5a4c88a3ce17dd276b0155bcdbf93e5fb475.1726589119.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P223CA0007.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::12) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB5087:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cf30d3b-12d9-42ce-e918-08dcd8adf2f6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?BZ6SWAjdYIE0ynngLEHYMv+PwdoSn0CsTPaExxwIv7O2xjv9k0xBgNw7jbRQ?=
 =?us-ascii?Q?zpF4IizTRJ5lVz7QFYGMT40chE6NLq5XWLlDdrz6ibdSgoHyCrmmaMX6wlXw?=
 =?us-ascii?Q?aYk/RCcIptIgxDIXOpPzMUrzWGXP/LiWnLBJ63CbXl20XlwhmPRVWUqp/gaL?=
 =?us-ascii?Q?3pkg2fKiKXgnbghFgSYo85ngfNIt3SLzZBbYlE6YZIiUgI6KibA17d4Hlwq+?=
 =?us-ascii?Q?mVRlzbjgPbvXu9J/qlEnoxSW4s0lxGl/b1LSeUDWiatX+v2Ted3hwdmV/jgA?=
 =?us-ascii?Q?ZYdl6GE7cGJ33dXra0ulnGTI9hWXpHfc37a4g9AxGjpB1NmYuVcJzq5n6JMD?=
 =?us-ascii?Q?ZgpQwEdOMtMEd57EfxDccLjKsxUZWbRHRy1g7LCUeC9lTTZEvV48Ksp6YYeK?=
 =?us-ascii?Q?PJ8Fjdo9UIAwSh1bNP3xj5sHiwGoBPWFiiELfsBawg+hPibagbX6yI4BPdkw?=
 =?us-ascii?Q?mFyfY56vIrQTf47ydfT6Yt6yv1gxSaF0tplsKjnF0bIemg7zv0z5BmqGqErl?=
 =?us-ascii?Q?0ZtbhNsg9hpSqZlfid1s4SU6rb9c0OfFAiDfNljtHH9dxrVQvQvu5blhpk0U?=
 =?us-ascii?Q?4KVQPJ8isf6/ilSCUrToOkb9EahC+VBX9KGwNIFxDLeevjGz+ByUmq9Z9cVA?=
 =?us-ascii?Q?drYYbHu4CJcDtwy3yg8GAKBoiYrLxrqOdVpHJNUos4qFMMILzLzP99PQHfa/?=
 =?us-ascii?Q?tLV5n0YOwxA2376zyMT6q7w/TJr8lPur5oXwYGiQ4vtioyl/Oq2ll43KmYRp?=
 =?us-ascii?Q?9Xd0tMCDnN3+Z690bmc9DZ/DAhuaXOH44LXkZCbtHDhfL8gv/xhPnsdK5fxs?=
 =?us-ascii?Q?Eio8gM9OEkLsWHLps4mRO4yShATJFy4r9b0tnVQtmG1ELOaSWCn5mb6p8JcA?=
 =?us-ascii?Q?0Pnk0X9cCNXzUX5B7EDOJlm7sIZI3dMEwR+IKth7U1fRORr23bsrEgGSPdlT?=
 =?us-ascii?Q?gGZz/GF4JTvT7TP33bGbnXmtdh14y2SN+7aXuMYeW1K2TE4Wavrl4A/97RhC?=
 =?us-ascii?Q?728RKT3S0V3P1Mt/ZI/1PVkYcoJlUX838W8PMe+i8HXr/o9wloeL1IhaWUmS?=
 =?us-ascii?Q?MeusUiu3fSMzb0JEtS0GM/5YhIN8XejlP+yuur1UlljeHdjGZ/gMDnnPTOwv?=
 =?us-ascii?Q?TxLpBsq3fQeAECReur/H/9t71Zoq8Qpr99pRtycfHS1wI5Ry5jbKEia+54Wo?=
 =?us-ascii?Q?cFClTFwztA7iJDzuvBibNV2gQrd533F6GDKZNkjh1xvN8KLs/oQdBqy1H23u?=
 =?us-ascii?Q?q6tB69eHrZykPLnB3bv39ZkU4YWCgHsL/NVoUQb1IWrbOgjuANBy+02CLkOv?=
 =?us-ascii?Q?D5r3HD7aUk8t9cD41SORrvK9dXKa2wJ7VWYRz6lDzT4wWw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SOPYwVcihziI2gEWC6sVWX0PnMB3vf7kxGWTIdDpufzfLVb/O6wz2rv/raHh?=
 =?us-ascii?Q?IYF82698xgyEmkhAwS145MrOWr3F9xH1xM5ogS5+i0g3ubnkXtlOZ4GjPaj5?=
 =?us-ascii?Q?s9+9HQUfBg1Dchw3UBPVo+8NGoxmJJGPXRCA2RWSS10utTp1uvW7KwhJFBCr?=
 =?us-ascii?Q?AEWzZ9pQAYeJ473ajHdDdRZjfoxEiu5JvldQurGGPFsAziQAf69qOYwCSbaf?=
 =?us-ascii?Q?Wu9uvuxfFsvZb8nG61jbsRR9E3VpeJmyux+s127e8QCChrFtLFzaluaaj4zV?=
 =?us-ascii?Q?xFNJejhXIqWUmlm4T1VZdV3gIJavN+wCjUOnDityPy6j3CkmV4Gy8Akn9QaG?=
 =?us-ascii?Q?uTpb7WnUxs/R03fodWXUZexgGfcTcwxwLXn+MQi2UW+6GjC2KQA25LIQI4Zz?=
 =?us-ascii?Q?+x9oIzZsCwuwpb7qbvmMYLmGAleXzo500Ascnq141VJMvaUv+sMO2VQzOYOq?=
 =?us-ascii?Q?+qXgxz+b4affhVZ/6lpYYXfWjPJ+D090oKjf1NAWj1MPEtvvKqbdqqxYpLtS?=
 =?us-ascii?Q?W3LjOlrK6IlYX7Tm36gPIqoSEygmwR1Dg7Aq+cDcz/0riuklJETuNw0psIsA?=
 =?us-ascii?Q?sy7L/0bIssfxFrzOv1CngQQ5cb00acM79n0HtNnEL7lWn8CVfLy5UofNrSLB?=
 =?us-ascii?Q?N7d5wcibW4gVcvAuuo7wddNIX4xYw9kzJdTGli8VggQUbbml85oEgzVA37qv?=
 =?us-ascii?Q?3BhOn5E2zIKXm1yJDuF/hgOlTp2OjlxywAEK9WvYdNEb/hpbfZDpV99AUIbV?=
 =?us-ascii?Q?xK52BMHeiqHIx6w3IGXOLDSIYhtOthgIaMz6iGhu+gIBOyO+ZKYtBCjhYUxc?=
 =?us-ascii?Q?HdR3gq9u3XQ+99I3kZdJRtX5JJPR1YyU5Hnov1RHBU4g9+igVgz+Y18iVeHe?=
 =?us-ascii?Q?GYvD7/qZKhNGukX/X9kEtD0eC2mB0AGNQOi7361194/QbDBuLNJ/As2aKxIG?=
 =?us-ascii?Q?5ss/Fd7F+bHhM5wQL373akVP4Y6dTmhDJihXehK7IpWRzMSOqGPb0JkGbE5C?=
 =?us-ascii?Q?KU8HgvxbcCeni+fM2WBuo67rOCiKEtsTASn9AEhUTAbLQVv3DXFZAhSBP6e4?=
 =?us-ascii?Q?0wIYNKcI6YG1sp7IbPEJvU7MyAe/s0lkMGOLH9t/kcEgBKqCtBZoHlAxzHFL?=
 =?us-ascii?Q?PfOEsulK9QNsq9lQu7JY7YWaFmRAK+T3TbXNtLnGhGCzMItnq2eCmuNLmaJg?=
 =?us-ascii?Q?6XhqbL6DNPFLVrMDSZmwcqf4Nu4Pupa0QK9awgJZqa8VPMvG8KiQXSu2SuOd?=
 =?us-ascii?Q?ePZxt/e8nPgpFlkBEtlAkvQA3XTH/6Q/wpyEHKMSP1iHSZxrpQ7zV7rSrqsd?=
 =?us-ascii?Q?5YAI3G+wcNK2sodCURvGwU813OQq0NAZRmiHxL+3db3RMuJg/Sse0QYiqq52?=
 =?us-ascii?Q?78tfa2aW1JO5Q5JkRv0icxe302ulUioRdbTH51/q7Q7Z/2F4op8vZTNzJFhE?=
 =?us-ascii?Q?hAq5FXOaiu60ipCuvq2D8PVSd4SZSipr1mkNIuz/KgkY6NZAYjAsghHKVjP1?=
 =?us-ascii?Q?dXdeg4a1K6VlTp5QaI9B2zLsv2B4N6WzHkfoVg3JE+JzfcOoBRZazXbmHUhI?=
 =?us-ascii?Q?EwXzUsvcDYQOYoKD6mFt0JKY/6gBirfLOZlnaVo6xVn9spaWNl0eftTiW78w?=
 =?us-ascii?Q?nQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cf30d3b-12d9-42ce-e918-08dcd8adf2f6
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2024 13:21:19.7904 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8n0CWJymfTLXDrqomelH6jjPciwUSFJVQYYG9rfKCFeM5fuA0VJ2hql4d6ovGOxV3U/00IAlD6kF7ru9uGjlaV0gKYPsTVukRZt4zCjLsDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
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

On Tue, Sep 17, 2024 at 07:13:49PM GMT, Jani Nikula wrote:
>It's really struct xe_bo, and struct drm_i915_gem_object only works
>because of -Ddrm_i915_gem_object=xe_bo in xe Makefile.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

for merging through drm-intel.

Lucas De Marchi

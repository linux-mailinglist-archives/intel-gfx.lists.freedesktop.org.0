Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4AA97CA1A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 15:21:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C166B10E6F1;
	Thu, 19 Sep 2024 13:20:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QSdmkDvL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F9C10E6E9;
 Thu, 19 Sep 2024 13:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726752057; x=1758288057;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IYb3on8jwMSoLbOH7Nr0d704FigfcrJ7/aa3Mm9ifZY=;
 b=QSdmkDvL708AX5uxzYdvFaOCi6FOEoh+84xkHHbYxzLjBqdI19gKwJlE
 IUIO+33aM435yjDezYMxUSMMUC4MdiLPxFS571tmBgtfZObO6yvohOmOo
 QgnxtEmVWzrNXEqerCtIY4syWPRhDkG+AlrnOnd5p5vM247tpB+c+ducT
 w2HEUoVV6xIKDGiCxCOTaDNqfE8KB4HNlXcK/rOl5d9uVMJesrwB94tJh
 XhhpRxcRZxRsH7yv5DlbPUWqsJbViYFgFm+d0jXfElz1zfWbEjvaTKw5T
 gFu0WQ1EU+StOOxeniuMU5EQmfTBW96KvO7tvjXW1SmGNqiveT0moSuea A==;
X-CSE-ConnectionGUID: Zasj/dv/TLeLrIQWJ8RShQ==
X-CSE-MsgGUID: o+a0kDekQei2R2KyNhh70Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25591272"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="25591272"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 06:20:49 -0700
X-CSE-ConnectionGUID: EZuuzEaTTvKE7x+DfA2psQ==
X-CSE-MsgGUID: ODMLtnucTKqB2eow+zqxlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="69533098"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 06:20:45 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 06:20:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 06:20:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 06:20:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V+b443Bcd7S5RRl9gYE/87VXJutmnwNIVvDVNlnqJy3Q202ZHUvJCMWVU9LwZqurWqv8pyn+cfok473pp3KwC/tfP1Xy0/KkigEgR4+nxZ9X/T77Qelyg8vJPP+Vqk2BkADFchfXUYFLQGmBKpphqnshA2y5yvBOdgxKfU4rrpnJS9RFZFKUx3XB4rKX0hXxgOAMeUMjlPPYbEaKL1v6pTrJJK4qM8aPvMLZFpSyDinE5DRtiLDXN59v6839o1h2p36WNlw3mtaAiIATO5k4ijABsOOHxVtNhEWDYrKX38/PY8qMB3XYdOjprYkPCzVbSz6jSxY/uP3MQNJL8T739A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IYb3on8jwMSoLbOH7Nr0d704FigfcrJ7/aa3Mm9ifZY=;
 b=mw/Yu5DThKJ0XdPhnH6t1c+FQqDYvG+QH3Y316rci8MqWSIYwpDAmJh0o9ik9SrjU4rsQd8ahc4FGKKO9UeTyoKTmRXcJAg3d6IO1oV8CaUlccYrwmhJLhJq1tVlv3f7smDkij7Qxzr2TxJtO9xoZ4O+qmPkcuBvIA8mWvztwtqbT1QF9yYlV4vEaovCuS2IP2pFEITR1ASguXVucgrRyfxiGb2g3k1BiosCSGZKAuat7br3hYQcZBrM+RugRocCoCLdJN69GKHKGz6YBK/mJ75a4wttmJZowDb/kYRj3DoEfy4BjYsE4iZ5sEzzAKrtq3Yb6tl4W7+LCA3lPVd9jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.17; Thu, 19 Sep
 2024 13:20:40 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.7982.016; Thu, 19 Sep 2024
 13:20:40 +0000
Date: Thu, 19 Sep 2024 08:20:37 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>,
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 21/22] drm/xe: remove a number of superfluous compat macros
Message-ID: <zoabc3eohzfib6qfc4pa25mrdckmm5hnc42uwil7ht4b2ba6f5@24hx5uhtwrhb>
References: <cover.1726589119.git.jani.nikula@intel.com>
 <418185993c5825a54ac3f87a85463c799c91e47d.1726589119.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <418185993c5825a54ac3f87a85463c799c91e47d.1726589119.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P222CA0003.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::8) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB5087:EE_
X-MS-Office365-Filtering-Correlation-Id: e5219c22-05a3-425d-feff-08dcd8addb80
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?B1UT3TB7L5dsRYg6/R2+8kTZR+cqUbY2upAlji9nurOF6+SmjYLbzRdOXGb7?=
 =?us-ascii?Q?KkyNTbCztplF6MzVxfPUN3ZvdksrE9Hh9xPFOR+1vH5Bf9olNbYcSDJt72YY?=
 =?us-ascii?Q?jdBxpp6mXdpWfA5KzneDTya5B7f4yklPrCL2yd464pgBZhOLkgaDqda0pKzY?=
 =?us-ascii?Q?U2ymXlhQp9HGrv2vHrh80HOXgOg3iY7gEsx4fndEUQ30XMf34UPwq5kHzVz4?=
 =?us-ascii?Q?dBeM5WYuNEZon8+n3BZb8YAQVu8OtrCXADxsTfSuC7suw0FKHet7MXbR/sXs?=
 =?us-ascii?Q?3mcOcaTL7VCtWZG9YhFep+R17XIaT9ZHU2O9E2tkj62JWiazvOnuKllqpuT0?=
 =?us-ascii?Q?mk9tgYMWbyV65uOi3iJFIUhJm/moMmqJP+sZUBDqgaQqVWBbqNlhB7RQEgjD?=
 =?us-ascii?Q?wjm5CNjuUEVAsOjWnvMprPA647ljnz1kSPdFuyaKc4rVHoGvhn3GUJppoBls?=
 =?us-ascii?Q?7P0enS6dJ6kjZQkXgWbVOtelsmDOHTtYVn2gDgHJtxibjRY/1dfNQiP1786Z?=
 =?us-ascii?Q?kB4BWpp+KF5GC/ukFpEXyW2mo4rV91UzUuVTVSMqlRrR61lAXoZz+cTiewPb?=
 =?us-ascii?Q?qLsf+T3GPMv1ks1LDpDIrqbiwZ9ipN5japWQD6DNs6qtWmlLWvTNdYehjKAV?=
 =?us-ascii?Q?VbJu74mqWo4qAnbIP+vZsqjhBOhITPZfKXKQEwj+tEL64tMZ2E+tJR6ek5Q9?=
 =?us-ascii?Q?J+YdReMYKwF3LkOuFVyBisxbudkRz9xaNtVy5WnodU0/1awzuom1rN8RacdR?=
 =?us-ascii?Q?h0Kltm+hUvMgf4GPkk22XNMnN5e1I26LlOhCvzDHo0zZYfkE3jnwgsYlRTU5?=
 =?us-ascii?Q?7NLHBxysQ31etvn7xn26E/Fn2juLK73myHWknlDM2QVXe+Z8XvrTLXdl94K9?=
 =?us-ascii?Q?l0pABnZKB0LSYv51TOXaIKDRGtbgHxnUrgJSM/Jq4fJgpS1hplsQovXApx2W?=
 =?us-ascii?Q?PUgiO0ETKcoiZ9pIbrCEJ9fuHoLD1qYVjs4ym4L/xdJjyykPk7YRFiL/3fNn?=
 =?us-ascii?Q?W2gMxlEhywbI4rxw1YPRLzOUzJ1uhZq5ea2iLyyjDiU3AnvMFYVnX8vt303U?=
 =?us-ascii?Q?GsPk/knKtzLdGc8pNrdpGx1mALIuglG/wj8sZKDYphoSGz46faD9TzKcEewd?=
 =?us-ascii?Q?vdj9ODW2/oZOc1K07RuJuCZv+kukXvz0303KwzPeXlbESiskSFfV0+drl257?=
 =?us-ascii?Q?WkJHBQolibm0WVqiZtVVPsRPwFmDEM5J5diNLGulTfb5GAr/kiY+RsymSP73?=
 =?us-ascii?Q?uPPb2EajN7uvd/sfDKM/kYiCUmZX6of3TN/g3FVQ+jrnGmvPCitI2b671FqK?=
 =?us-ascii?Q?vMN4zoX6+sWoEX1U1frLXWKGQKxcZD94FJU8bX8IQAtseQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D0NF8i8LJrbHVQxGSZ71XZVzooJtvkEYm8DZ6qSKXbSNhsgr7cDCa9bvG+Ow?=
 =?us-ascii?Q?wNfkbs1pz0h6vkiZH54CXeF7BM6L6nnYM6+oTZbwHBlxb+xaFoU6vuW2Uz4N?=
 =?us-ascii?Q?oBDMnD+ao0jzDvJQgX6qgXDk+yU9KV+klqww/F/HQwiiWF4rWQA966XIzsD0?=
 =?us-ascii?Q?RKgciwORaMytsKgfxXk6SIfv3HwhICStSN8HOaWNjelWMG1zDHP/+zKfRUtT?=
 =?us-ascii?Q?eXZVFQbH9bHJFebhfGPIrmcwDn4oWgNcgbV1C3OWe9HaGYRJ0P+iivSWQWZr?=
 =?us-ascii?Q?p7zA47wMN+nBzf3AV5RWddZCefJk9ZK1sm5skYXk1I9fv2xkI7FZ1VdPzrCy?=
 =?us-ascii?Q?Q5RxeEHFWq0Yky6+xL2/JcPIVUg/5RU461UR/mLKJnsvvT9ObkVEC0E+CSri?=
 =?us-ascii?Q?rRGyF7NOjYfPVYmi57+h/kEMArjN6/NocKwmsmfhrTEnuq+p+tF0v+xTfnXC?=
 =?us-ascii?Q?1eo5kv/DGgaGRh3kzs0uMMqLR8SR/Qq8EuHo5wTiRJk29MVMuJ3Ans/O+UL+?=
 =?us-ascii?Q?ffmMXPqYhn/8uOnIPxG2MD8z6MBGyxEVwKd5PlWBle/QSvuRasNB7gCU+6uN?=
 =?us-ascii?Q?uj9J7HsBDIYU9AvyYZjbVN9FqSNbgsbceqltCH2b3ZXyRiBvy9Z8mc9RMnqa?=
 =?us-ascii?Q?nrhUy4yJdgB50pWPc3j9a3bOshCaGDscK5ZQ/yEryFMN0sEkwv92gHZQIc5E?=
 =?us-ascii?Q?dS1J2AAjzBxzMphT7s2BRwtht7+Fu0cJi/sGRU7TIXaJMlD9d0Z5JQx7AF8h?=
 =?us-ascii?Q?FQ+pECkZmY1i5x0lxK6Ny6P2OCGCkicBxY3FDjyO3Bnn4NxlodWC4YBvBiI1?=
 =?us-ascii?Q?G24yd2EeIhUuzrphPlllV1JAiLJoJehpC8//NJZP/P5fKgy6yNyM6o2TNE4c?=
 =?us-ascii?Q?nS7wglWa2TvG1OFbk4TKk9RmdQlt3kZtL2U+kUlx/d/khcZ5p8J8eTyNcMgw?=
 =?us-ascii?Q?JYBNv1ya/RgA/YSCfTJ9oA0nB1rdEmvbV9FiZmF9ro2vizZpOWRYB+GkDwXX?=
 =?us-ascii?Q?Js0S2BSGa/hzJen6xfdnZ1xjxHArgv9WaCx5J70Z6vQcjsPkyfgLrY34ByPX?=
 =?us-ascii?Q?b3+czFJs3J+ZJi1jNmFs4ghUSsUbY9K8P9MTC7cDVQuZXcj+f5GIKP+cLgAu?=
 =?us-ascii?Q?7rNNXWiljPVPWS9z99XBxF/vGbftY8p3UNwTmYLNTojTvGd7NDnQXxuGglPo?=
 =?us-ascii?Q?71MFRc6pWANCP1gyiYVmIVnFluNCaNnfgbIoaOKb+/s+U1x4VnPfjQGv+omr?=
 =?us-ascii?Q?ekOR0Q1fFnQSSbPyfVcgpWEkakQ7Fzn3JwFUGBpRNdmIdQ5axyryN+xFqH95?=
 =?us-ascii?Q?eVf/OP5ERSrVLpMyDJ9uYegPX/WzYnxSUJ83HS27HAWJ7mo5tOvYzTjlvWZH?=
 =?us-ascii?Q?PPxs0fxOej9WsOcLhFl5PATkvDOqFGEy5YT47aQiXo7dsrWkPWabS620BKH/?=
 =?us-ascii?Q?kkm/sgl84z9r+7tjrUQ77/qN/hRHVdzIPZnFB2TdeB4kefXvKX3bxBnn9T8z?=
 =?us-ascii?Q?k1CmhlIDrI1PCiTagFPNOk3HxcQtaWhgxamRz0FPDcFjLmnWRrPv+6AFedFN?=
 =?us-ascii?Q?Sp/m4SabCtdXw8TtKrDO1vETJTAuetm8YCU+WlHbewu8nx2wo/kgdIBy2ct6?=
 =?us-ascii?Q?mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5219c22-05a3-425d-feff-08dcd8addb80
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2024 13:20:40.4828 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yX7l9379b0N/lOXZynlzNxeWf7pBP3yYUthu1IsESzxzBBmsQ+RQ7LrK+LId7if3kgLzbMsJjT6se/FdpE68lQWlRoe+VSex6wroeeErhv0=
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

On Tue, Sep 17, 2024 at 07:14:00PM GMT, Jani Nikula wrote:
>Some compat macros have inadvertently been sprinkled in xe core
>headers. Remove the final users and the macros.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

for merging through drm-intel.

Lucas De Marchi


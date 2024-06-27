Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F8891B1A3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 23:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93E8B10EB76;
	Thu, 27 Jun 2024 21:45:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fidAKSvq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E8610EB76;
 Thu, 27 Jun 2024 21:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719524728; x=1751060728;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fphp7jwbwktXqIqFRBGv+whfS3prP3eZPfeS/lZdU/Q=;
 b=fidAKSvq9cRImIOK9Q5QmsOpD1dWPSUHAYbaxNWrOfHbQoCUwe48jQHx
 aGeJGuil23sAzbXD0NcKpAMmF26TuKZEqH4f5etP68OU/qHBQGobLT1TW
 OE8OEmpEza66YElvCiGg+kDeSfx3hb/TxEFsllU3nqBdR86Zc49+0hYEQ
 wC/P9lZ1wAnrkcDWqO8dcSZ2dWguxN2u+ini5/cG1H6zGUK7nwaN2fruL
 PGTpzyX1y8GnH12swC4uCwwjHPohP2grRj4UVw0Jeb51FjNsqx0S2OhnZ
 MM1cRd9BkzlM4G63QBr7nvejClG7/0A7cxh9bhd+VuqjmvNLrLTIL60XL A==;
X-CSE-ConnectionGUID: X5Yy7PdFQWCFO26w/H7p0A==
X-CSE-MsgGUID: mFHWiMwdRRSkN7dBJdDcuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16817464"
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; d="scan'208";a="16817464"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 14:45:28 -0700
X-CSE-ConnectionGUID: md+hqj0DTKSsOFFVuNRT0Q==
X-CSE-MsgGUID: AlorhOFYRGmJS4OaEx6VEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; d="scan'208";a="44362202"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 14:45:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 14:45:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 14:45:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 14:45:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 14:45:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ent2pe3jO2zLkPXdaGQJZnIbL+wegWPs5tA/zAZ3aXSQvHUgE/4NVpCchtCA+iLm3ANrSUt4enLSlxVzmK3sbCnPNN0PlDpGFq1/E6rQ3DAW7QfwlP8LjF+yd8H13vx8iyETYMvGXFdBDTb9o8xadxNhOPTwZTAyQIxoeYAhIAPxJxWAofwvI46FzDtGOxuOJp3+S7uLfkhGWds7warACD5NaDD1l2PLgfvoUfFK2cs084Qe8kQfKubStzZ2nKNYYwKaOhqHiYDLwg5MgpVTTaI+Z2OsvBpNxvow/JukDqmjLvvlrC5jfFmT19oi6m76lLkySR21NjvDHnhNPRSebw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dclnBxflAssqtoxOQOiWpdnTawiYKgwEOcw0OrVgryw=;
 b=hqsIRXAw6RBysjLCo4U0IxJcnO+Nvn71yBfJIQc1x/oAv+YJM60+GYmkHES3mrtldWNRjh0ZJzHUIvuBXRauyqfpRFc+ZOGMTxfAVntTFRQtxfnYxkdZNyn4psDwGfwwLdZy7bKnIxImVtjwpXcdEPoVe5Vd/pEeds1iigISGQuh3K6GfbPooBl8PO6wNfF4pEPH9mFGSk1IJnWDx+2qiVpBKb4IaVkDjoDgulMNHZ9nei80MagXzqnc2wLMlQ7DMgPDVIo+8oUqCJZWkBK1Za4LzC8Hodkv0Y+fxAX/qAHlA2700c0d+ejVpQ4QY1XGKERogUN9XP2GfqEhzgG01Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.35; Thu, 27 Jun
 2024 21:45:24 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 21:45:24 +0000
Date: Thu, 27 Jun 2024 16:45:22 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>,
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 5/6] drm/i915/display: add "is" member to struct
 intel_display
Message-ID: <t5qanekbmoww5mey7r33yui52bs2xf4oup6vqtmrzobpqh4lrb@lj37d6r55kgk>
References: <cover.1718719962.git.jani.nikula@intel.com>
 <450b5883a7783d0967c3da8ce853af0c2da8082f.1718719962.git.jani.nikula@intel.com>
 <uulo5ybhcvxbj7orgtovxahieyogz2iw7csn42rcnwsifkdfqr@zxjryherobpp>
 <87wmmab4ui.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87wmmab4ui.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0334.namprd04.prod.outlook.com
 (2603:10b6:303:8a::9) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ1PR11MB6297:EE_
X-MS-Office365-Filtering-Correlation-Id: 44854ef7-e26a-4924-9b20-08dc96f2736e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PJg10gLOOi0Qt3fjuqYCy6dnyRPb2ZlNzz/nAbAO6DTQX8S0OXeK5fkUjujr?=
 =?us-ascii?Q?zepr6K8QuiQKPY2yfPlUu1nPrA09DAZjXiDkNHqPDqW/JymAONpMjLlrg1fW?=
 =?us-ascii?Q?2rsalS2k4CmVLShi8CW+at7hPEQ+Hdnb9f0itUlaMliaim/mR2XGDpKxTcpA?=
 =?us-ascii?Q?+2mq+842Z6uetLegmGxE5UNitRY4WMT3AVLK2qx1hP2vVJJk0zznpqtNQjZV?=
 =?us-ascii?Q?Mz/dVLiosWHi6DOEdYgVr2MVrHEM4UUrhsp14Q1vuF8uvxeluhjcu7+m4+fl?=
 =?us-ascii?Q?J3Cy/6QCNtRsgdMoXxQJf4TUfZf0LNRDdY2BOFv/v+EcdOk2A4cLIOSwNolA?=
 =?us-ascii?Q?kS/dznlpep8CNhA+qtUp+cLv8GmWNqyOZ9R0gB+wmRyMESAdiVBhRES+K0qt?=
 =?us-ascii?Q?su+J1R2RRq1e+M2oVYGN64E+H/1QKDNcDXtIcgMVCmds0NHdy/HhaCMNoa1C?=
 =?us-ascii?Q?wl4AskdQjTHjtmqDb/Xi+xliBtJ4gqkDZtIt1KnD3phD69BrM36Z6i/FXlKd?=
 =?us-ascii?Q?xPJNJu1Xh8ZP9DPr7+jleiABTJeYKFveblHKrEoKbPB9kyrQaCeXJ3yUGmlr?=
 =?us-ascii?Q?CjH3NjqAGPCBDq9iLVXBlZCTzAFecjsVFvdSbKW6lp2stC7/Oh7d9V96d5CW?=
 =?us-ascii?Q?Nsm7JNB91dppEeNER39HJ85ih3cHUJb+YDmymgwC0DW8+wEKCAhVv5I/NiXx?=
 =?us-ascii?Q?QY1XAgyPjbZTOXgU9jqKrL1I8fUqotRnAa9vYBcNToIrYTo4brHKCVG16ATk?=
 =?us-ascii?Q?cUp521JH5imycJWQ9E/+nmkIbx8ZB1myPOUXmIqpobATUZoR3SlKFqwssHcZ?=
 =?us-ascii?Q?IDS2aiZKUpl4ZzkspmJGace4ICQZ8MvqU42j1pi3ESX3f2fi9qOZU2MdNX3d?=
 =?us-ascii?Q?FiD/FfoW2xeVIh+68F5H71DgWLV7Q11/4xtDZF8ZCg3/QYxGkxYif8nVm5he?=
 =?us-ascii?Q?aHJUyfRyb80G4S/huMqcWbSIAcbML5bZooHh+6m56E7Ti+K6b98hrQPrSl7g?=
 =?us-ascii?Q?5/B38DtzbOOwdcdTdlhOpFJ2vF7CUam3scV3mCYGwLrTSY1cnsXBMJzye1b4?=
 =?us-ascii?Q?rm7KmT+kInk8Gv0mZWhspxWtIhRDdkzk2/R4e/1y4oZeHUTxhoKgl17AmF7u?=
 =?us-ascii?Q?cS36fQ6BiYppEQGsWmDnFAhmk7dnhQrCdflcVbHWXIwf2vj3Z4YHDJCdkyIK?=
 =?us-ascii?Q?hUqAwv9mzazPYR57hSbQfaYd3fDUwWBbamRGxlYQZQfqH/mpbpjB7ZLKO+XX?=
 =?us-ascii?Q?YZJU+OaAzqlN+xnOCZU87aamjWEsNHGwEi39+awthFVfanyUM8DZQpAPPgPK?=
 =?us-ascii?Q?r/T3msnERSGQnKCT3Y96SKqGs/3Djb2z0j5x0NH+j08r8Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0EHdZZAaPNuJdPb7IJ6uko+HPqxFVu/cuROrPaVtt3BKd6kD8B9USjvWCJam?=
 =?us-ascii?Q?36DZDWV32IZvgg7/0PmceGNeep+gp0heWAxu+7+sVNqfco63EjC/4r43AmW4?=
 =?us-ascii?Q?kR2J737X82wnIylvXyH+UjOWZw5/N2X8SNhKONVRp6mUBbZ5mxsFVE+SQEf+?=
 =?us-ascii?Q?yotzcRIklmx0wsm+2rr5wp8EnTrVXN5iiDZQtkmqZei/rxwOTd1PAPu16bqz?=
 =?us-ascii?Q?hgZbevhg9gpnvP/JN50O73XNyHjGZYkGUwgRGkIQT+8p6S+bfJm5nH48zq6p?=
 =?us-ascii?Q?EjzkJHqooqGhxEf9EY+eSEysLiNJSFyLAGaPdF0Lz1ChUnrtklvXGigcQdh9?=
 =?us-ascii?Q?sN7KdtSRW0F2uuBAzKxvbV9RQUfRvhAYLcPrubu522zduYLnxmQtX66FLsas?=
 =?us-ascii?Q?WDmTopsAACMblGid3RmoIe1VkzYb/7/IXk8YbpwrMKXRRPaBGqJx2zxluMuL?=
 =?us-ascii?Q?S0vEntTtKBX/e8hIPbiMAzOce7ImDQ+1hi5z9wRpU7ih0H2Vn7Yr0QjMvI4s?=
 =?us-ascii?Q?Hk8nYscQ44+FXWpti0OEQQMAkQ3qXtgOONUEXY/kZoz70kPWlCB6jAbRmE1Z?=
 =?us-ascii?Q?5OtTv65NTi6JMC9dQc/NHSmv53lyCR/FY5X2goQw5ISKz8ptHZEVEMQpP6zl?=
 =?us-ascii?Q?k8KRJH1LB6EBl7IUaGwkkH0BehAsKhTlA5ColvOHggY4pWB9jN7sbUyc6cAy?=
 =?us-ascii?Q?oV8D8YTZSnfAfP/ooTmrq8u//2fDHCEe7TiGNBvH/n++VhXta8XB1rpg3YQn?=
 =?us-ascii?Q?ulD0fOwdRekOc/BSs/RZ8mkUubLpDFt8tbbdDGhDpj/f/6plaoHVg4RqhJcF?=
 =?us-ascii?Q?/i4bc7lxlvU9AXfmIrcpOnC1TWkp1waM8rQWKOMiLs2Ocf/Xfiy4mXOSHO4u?=
 =?us-ascii?Q?sNi6SFAjfbglPVsfcrJjeUu0JZ2qYrOR79Cfzx1HgmnyOj5WMD+V8MomL8EY?=
 =?us-ascii?Q?S39EZm69mUa3IJP+NNn4mzybJYUNYeZaLxxsIITDedj+UpUS5eLpPpcaTMak?=
 =?us-ascii?Q?lGnfJvZiU1J9BE5/gTz/ZFf3sNA+sqWnv10YeThOVQHAdeMTNkRnPTCSNvwS?=
 =?us-ascii?Q?dWrRNbw531haJmnw7Zt40LxO+30IKXeYsKnGQoHYp1Q/qDPsLdaqD1XHOZRL?=
 =?us-ascii?Q?9Q1rraKj5W9RkRqbWKYPjhIQ7XBfjFrzSsqcYRdoEiOmJv7oIgDhvh5AT4Q0?=
 =?us-ascii?Q?IJWMCI8v8PrEjsFpxwwnJFagxUbMZ2/1+q2yPqkM83EGzaopB9xbEpDHy9/1?=
 =?us-ascii?Q?QCzrykw4rXOdo6xcKNWDjyDI35q+7/swJnKaWWNiw9PWzgG3knO8GrYYCkiq?=
 =?us-ascii?Q?4qjHHewupSbHy5fi9ZeBRYDFc7EQyTjNMT5t3g959ADhb4fKATHdq0iGIvFo?=
 =?us-ascii?Q?gd0KSJlXcUlCI5B2kML8XGHfRYKRlADf85fOIfmzKSuuN67eM1fZ64DTary9?=
 =?us-ascii?Q?ej7cP0hpFpHFVSKB7gNclH54VANPicSazQwurgNGPM8G3l7VfQkR2ibYWSGb?=
 =?us-ascii?Q?eUodkCpNFimympzXLh+IS5BC7hcXP4MtXppm/chzRcqGzZ+vvycSXqNp6k75?=
 =?us-ascii?Q?wEc3+lLjc1ti66ftEx8ci0b5EddkH5TpBzq4reTW1T57eK3wuXEPi0P7wk1Y?=
 =?us-ascii?Q?cA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44854ef7-e26a-4924-9b20-08dc96f2736e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 21:45:24.4194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2uS+QkxSDvHxMbV1IDWXdVjzFgVyUt/gWh3vMnHjaFIPcDyo69A8XCaLzBkQvs2O5gusUNeIhX0cnLdKf0ykea/Mo3Tb/uBo8ijNVJ/5jes=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6297
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

On Thu, Jun 27, 2024 at 09:47:17PM GMT, Jani Nikula wrote:
>On Thu, 27 Jun 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Tue, Jun 18, 2024 at 05:22:55PM GMT, Jani Nikula wrote:
>>>Facilitate using display->is.HASWELL etc. for identifying platforms and
>>>subplatforms. Merge platform and subplatform members together.
>>>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> .../gpu/drm/i915/display/intel_display_core.h |  3 +++
>>> .../drm/i915/display/intel_display_device.c   | 19 +++++++++++++++++++
>>> 2 files changed, 22 insertions(+)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>>index 7715fc329057..35bea92893af 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>>@@ -286,6 +286,9 @@ struct intel_display {
>>> 	/* drm device backpointer */
>>> 	struct drm_device *drm;
>>>
>>>+	/* Platform identification */
>>>+	struct intel_display_is is;
>>>+
>>> 	/* Display functions */
>>> 	struct {
>>> 		/* Top level crtc-ish functions */
>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>>>index 0c275d85bd30..954caea38005 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>>>@@ -1269,8 +1269,25 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>>> 	return NULL;
>>> }
>>>
>>>+static void mem_or(void *_dst, const void *_src, size_t size)
>>
>> why are we not using linux/bitmap.h that has support for bitfields with
>> multiple words and instead rolling our own?
>
>Because this is primarily about named struct members, and the bitfields
>and ORing them together is just an implementation detail.
>
>I could use bitmap_or(), but I'd have to rely on bitmap implementation
>details to get it all precisely correct. I would not be able to
>trivially use DECLARE_BITMAP() for this.
>
>Using a union can get tricky:
>
>struct intel_display_is {
>	union {
>		struct {
>			INTEL_DISPLAY_PLATFORMS(MEMBER);
>                };
>		DECLARE_BITMAP(raw, NUM_PLATFORMS);
>	};	
>};
>
>I don't know if that even works. Can't used named structs, otherwise it
>defeats the purpose.

a union like that seems good to me

Lucas De Marchi


>
>BR,
>Jani.
>
>>
>> Lucas De Marchi
>>
>>>+{
>>>+	const u8 *src = _src;
>>>+	u8 *dst = _dst;
>>>+	size_t i;
>>>+
>>>+	for (i = 0; i < size; i++)
>>>+		dst[i] |= src[i];
>>>+}
>>>+
>>>+static void merge_display_is(struct intel_display_is *dst,
>>>+			     const struct intel_display_is *src)
>>>+{
>>>+	mem_or(dst, src, sizeof(*dst));
>>>+}
>>>+
>>> void intel_display_device_probe(struct drm_i915_private *i915)
>>> {
>>>+	struct intel_display *display = &i915->display;
>>> 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>> 	const struct intel_display_device_info *info;
>>> 	struct intel_display_ip_ver ip_ver = {};
>>>@@ -1308,11 +1325,13 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>>>
>>> 	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
>>> 	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
>>>+	display->is = desc->is;
>>>
>>> 	subdesc = find_subplatform_desc(pdev, desc);
>>> 	if (subdesc) {
>>> 		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
>>> 		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
>>>+		merge_display_is(&display->is, &subdesc->is);
>>> 	}
>>>
>>> 	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
>>>--
>>>2.39.2
>>>
>
>-- 
>Jani Nikula, Intel

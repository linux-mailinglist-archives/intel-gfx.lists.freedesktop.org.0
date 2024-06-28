Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719FE91B625
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 07:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C7A10EBB4;
	Fri, 28 Jun 2024 05:31:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mm4Jf97A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C04B10EBB2;
 Fri, 28 Jun 2024 05:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719552669; x=1751088669;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=uq9Xcjy7oQbbnQax3yj52wsB+bd6AD8VDfUEdMhbyA4=;
 b=mm4Jf97Ac4cXFkos6F2CbnxM06rZWcQMBNRBmstZU0/m6ZeBbatNS9hk
 /AJTNGqexg6bOeD0aCWYUbv63o4sPqG4DatOUwk4SxURe8QzrPvtZZHJ7
 tEeKNssz64W58adg6RKtKb3YJ1Lnwugn1+ICNUipZSy/R1P+UlKiHQckX
 AOGr76i61lf3R3NGS3hIEFvuKEDrM9ZiNTsZRqy3gqFMwUV7MzOhE1T50
 SBMhzfkQ5Hir12pOvQfg+z9LN/i5KW7ER/wXLnjq3ckJYWzbuwh0ITNPQ
 jKwGKaq9ymlV6Hw4sCkWppA6ksxQYJId5cqLXqAV8mtIZqC4QuZlkpTyV w==;
X-CSE-ConnectionGUID: DQcR0tNzQ96M84Dlw+J/Qg==
X-CSE-MsgGUID: mVWb6hd4R+mp0g9/okyPLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="28115312"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="28115312"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 22:31:09 -0700
X-CSE-ConnectionGUID: Q62ayLj6Toysvh7Mul8icA==
X-CSE-MsgGUID: QjFZRgvWQU6teWvFBoK37w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="44742661"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 22:31:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 22:31:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 22:31:07 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 22:31:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ht1SXnqnUgKP3K7H36KqrEe9IF4ss/Fv+p95iG/5jX4O6+DuS57UV6nEKALcl/7zLl2faMQrt60jY230ma8botUzUDiYxQduTenBJMQsxNZgLx9LLdnp4xnc3IJWjWUeMRQXb9+hBBAQ6fnxl1ffL5q4eD9BWXzA7+cV6JO/GuIEXkxrkpu6hquckqCLFGtopqqksplaKyBqFUofTEoGU6sZZNXyOnli7eaKUYp41v/U42jzHoIQHICiXYR8wIExjwvRkUyTxmuSydqOgYazczAPSQ9/OZmGyeh1tGvwDfGVH7MgmX7UqottXK/rxEPWQmK8PXhAJBU+x8rqJkilpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NGJkReP7jKu9WbpBBn/Jbqfjj4/fOjyCLtdkf1MAQss=;
 b=jFDAhfOUysYbzyMnCSozxdyA3CXNjWD/BhIQ1AYyWCFDy7NvD3RoQT0Ojma+dN7BrqqV/asnNbqRn4s3BWwJgzIo/cIGrBolYtyQbHLNqY2/64E+vTWIeCenxDtoZzDzrprhlyk+FQoDedqRKBHlS0mvLO8ATVcjIeWd5wDg4YbYCV3P8nIx/zeO0wGnqou+IbeF5v2z9h7AMNThwMjAWd+g+s62HR1DGEpxzvqiKdF7oWmEQbrHjjfaEXhLjtquWD86ojqea6jJZkvhKLFijaDEYHvO9rLA5GuNOqYc0rNNk934rEUe8a7zobNhA22NFZDcNLdPi9LES234MYodhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB6421.namprd11.prod.outlook.com (2603:10b6:8:c7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.34; Fri, 28 Jun
 2024 05:30:58 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7698.025; Fri, 28 Jun 2024
 05:30:58 +0000
Date: Fri, 28 Jun 2024 00:30:57 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>, <intel-xe@lists.freedesktop.org>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
Message-ID: <thill5bemih77oisv2fcbgote36xbuh6bbzobt2ppvqabb5rp7@xfwvht77tien>
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
 <Znw5jj7YROnoWD9j@intel.com>
 <70fd9b0e-36a7-4247-914f-ac71c33fca7d@intel.com>
 <ZnxPKAIPax-95pyk@intel.com>
 <20240626174224.GZ2906448@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240626174224.GZ2906448@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4P220CA0015.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB6421:EE_
X-MS-Office365-Filtering-Correlation-Id: 57c1e2d5-928d-446f-444e-08dc97337d95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?H0IKlML2f/AmGhagD4+PnbOhfaafWoaORUGSWN3+CNrcBNiv+otkrBIzHk?=
 =?iso-8859-1?Q?YBpJPdLs/wOlaxk8kOxM9iCv0QO4w/YutNQg+oB4Qp3J5xDqZLb9XPDfLV?=
 =?iso-8859-1?Q?LSgl1R3rA1nkf0swE3U8+uY6+ShI3el/GFjHqzMD6/bAbeJHtd/bfDzGeH?=
 =?iso-8859-1?Q?mM5CMydvI4pQSEEQB7ViniQS267Kfff87MXymb+rNsVfHCaTLcKUGb8sT/?=
 =?iso-8859-1?Q?hdVHFi5XtZjESHkvo7oxx9uxMl0mv88+rY3EuyTYrGWRwvVYZMiCMDnmzj?=
 =?iso-8859-1?Q?1SyGMzD1nKaYhMVU7rlZPF0UChw8UO4ddalkBk9TGaEHvEh8iDm370T1Gk?=
 =?iso-8859-1?Q?u4P7nC+69yh8vE3DP+leNuZ0yY9qVccZLX2GAJfeorGMo1FoP9ev3S5yZv?=
 =?iso-8859-1?Q?P1dZfTKRxASESQY7MDwc3vK1OHcu9YajapJxHjsVJg8XrAHrZdxBlSluB5?=
 =?iso-8859-1?Q?Sxv9Ocq39svccafa1AgfkNFgpayxtNeEdRa9hY3ws05xIFWqyNXBEmnjq3?=
 =?iso-8859-1?Q?OO937VCatpwU1YX2vMAha78E1PWgo+bHyuUf7DMbVGsMVbcEH6VrPRbzPx?=
 =?iso-8859-1?Q?gfYkdMUCZJ1eUtXy4qezxbKlB+f+ODuEQjLykxye1dYbzXKz+mL6mSRL/q?=
 =?iso-8859-1?Q?yznKRZlmVhOTJA/IOOxs1KHate1xE34VgdiZfwDYBozT8+2j73Rs5JJFYn?=
 =?iso-8859-1?Q?wc3bcn4vivbxMkk/hPWT4fWmTasNkKMemMx+kXMhR5nxAKDEqOBRjdh7dI?=
 =?iso-8859-1?Q?s+vtPVDLZJRCq4I/qrRcFXHuItf0P3jpDacHm/JUvkxVaH3QGITetTD0YJ?=
 =?iso-8859-1?Q?x4nJ5PJ3lnR3bfXCyt1Yq4ZCE2qjreeO3fOFCI1wld0WIWD6+YxfTn1TeE?=
 =?iso-8859-1?Q?HxOs8//s5Ae46oOP2Sq+tkWxQZnmMXdCJfmKmT1q6xQ0L79Rn64aD3Mos9?=
 =?iso-8859-1?Q?Gb+FcS5WpWPjGMQO+kKhz/BHIcWUSew2pxgEga+QeggB9ls482XS6W8ZpT?=
 =?iso-8859-1?Q?/y1OrOiT9QVDsLoyKbZ5pfUC+HVVbGOwKHYVWX14/3wC3ITkbF2/RDNyvq?=
 =?iso-8859-1?Q?kNO1xXXoOGUs2z7OX/Ra1BlkyI5WXVLxUOiPlQ7nfk8y/TmWx5r0kjXFuQ?=
 =?iso-8859-1?Q?Gr3qqyfFIsQpaKlpnlPpbqZFn+CPMt/MwqoPHwvh9wkGaCIinaEJo7Q7k1?=
 =?iso-8859-1?Q?blcBqBPuaS6r6VF1xRiSvGyPmy8zbG+jLE8jKsVuQf8Mq0uNSsfeGvjhsU?=
 =?iso-8859-1?Q?DzjDnLL2TgneLvjFL6Q2562fyOjU+eqOVzDZI+WWXftJ7KjR3VC/r1fSfn?=
 =?iso-8859-1?Q?ydOd2NocuOD8f6SEbt0tp5DGLaulI+8HFSyH8PXtcj4c0oHuMZ0eW3L4PK?=
 =?iso-8859-1?Q?hzeOvteNYUZg0U8hrUql55p5dTlTLnqg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?sAdFG7GUkU3CXR+wT+7vvV5Mz+kXDYGmZF8rUbpxLQKQBc8hQ2kUssFg81?=
 =?iso-8859-1?Q?fga9Lzm3Cpwh2frx+NsZmiIveyOdkO9KCCN8+d5wqZxGDIa0LvgAPgWPpm?=
 =?iso-8859-1?Q?RBHM6w4VATIM+uJRZJhvRxb+qqLQXeRv5y7ydSX0PoCiHivfogAy7GcEvg?=
 =?iso-8859-1?Q?/JeICNgpzWNgbZ4XXERCNIUll5f4IYH/nTKjK1auEZr4FeBRyl7bYYWqwM?=
 =?iso-8859-1?Q?UoYGc+ID3SQ2nzPkZm7C0We0ZGdV6gnmpqBVPQRU7DrrIZRojXsIaKuZBo?=
 =?iso-8859-1?Q?DJuckWnZkAIbHGzBxoneu/a3hHGSNV8YjwZMQLYnycid3r+ZlHb0V97hW5?=
 =?iso-8859-1?Q?bVtDiaFKVvrBNhXtMl+My2mXVLsz8ho96BDSuyVHWqAqu194tqVgnYBbm2?=
 =?iso-8859-1?Q?bHYT3hXpbP3AyVF1ZOeCseVXJCtDYEEfo7MGxD5ehASOmBJxUTLYthWMou?=
 =?iso-8859-1?Q?e5B+b/sstf4S17a4sQGaH+xmce1QuWeLyieT2PhmW8ZoAOTOcCZ8DrDSEX?=
 =?iso-8859-1?Q?FSLgqaxcZsCGP5fY7+yBlKsq4J4jXJBWEqeaTnZ1Q+Ld+Zlt0iXxqGOlYD?=
 =?iso-8859-1?Q?T0LXXIiTxmn5EhoF++mDuttI4wc0/YaixgJ7DKE35xfhfAMF34puHxspo+?=
 =?iso-8859-1?Q?JVYNUk/tBOuNzliDEhsLzgAsLYtoRspK8XGOLvM6qI0+uChO78KJrdNJHD?=
 =?iso-8859-1?Q?hjfmlGpld4CelnKFI4ww3h1MRmdReC0jrFFmMzuXa6dlHhB4fCf6FU4Dgi?=
 =?iso-8859-1?Q?UwS1W5eubjQF5gnLU/N/m8CahmtQEHZ4wfRLvd+4KcyaJsV4AFCOfWjtoc?=
 =?iso-8859-1?Q?k4Ff0UDeIolDBAo6iGsJOTr3V32gtgrO1Wyez6LI7QUtTZPpbhSp54c5Pd?=
 =?iso-8859-1?Q?xwBYIAHFpdeayONyhGnJl9Dc1TCM4B64frw1APW10oXjaYn916fGdHGRHi?=
 =?iso-8859-1?Q?l8rliq5MtBdNCsPaG4H9ZK6mxtGXqcedh7wptgtB8AST2SrqA/ZI9t6Vkr?=
 =?iso-8859-1?Q?5qodjVaEC41VwCSlUzl96oss+taunJ8ur1Sb41eHJ8wmyODL8q7YzuabIP?=
 =?iso-8859-1?Q?p3r/BG9Lm4AbajqYMmHcfpFvHWMytfCUJmIuWD7rdQIT/6n5TmXQ2EJgpe?=
 =?iso-8859-1?Q?/ugswlL44rRaHlVLsR37UP6aPWKUQspWHg6A8SonBPJ6ug1ZTmtmlp/I5C?=
 =?iso-8859-1?Q?E3DbvhWydMP0SRiOi4zo/3DAV51cXmZHqTb4p+wHOmtX0Ba5skwluS+12q?=
 =?iso-8859-1?Q?43++me9yDE9o+mag+zcb1825boAeN+edUE8+IZwgOhN1O2pXb5altR74dK?=
 =?iso-8859-1?Q?YiraKH0GCEXT4HUsVSvXP4HsHsyMI97WCR4KxHg3Qh0wdvlOqg2FJdJehy?=
 =?iso-8859-1?Q?HqF72KiwY1EJwj9bRSM6KbCQeS3H6d/XEuBJXfUwJ5YIOwq+8qofq1sHYc?=
 =?iso-8859-1?Q?ye4v0wk1o8wf48HZrieBBDahbfiUBnwJFUr/WbnOO2cdit7lf0IEpuJkyl?=
 =?iso-8859-1?Q?mW86jCf8a6BXVZYAA1TVsLURQf5iHVBY6V56gsp53JZxBZthR7D9A7M0TB?=
 =?iso-8859-1?Q?Y367a4p7Kf77EmfAbfFdSIXPRujiI/nWTM6SyIm82soibK/kvvE7krjV4i?=
 =?iso-8859-1?Q?VvOODcKl/RoYDJHb5vEDupMqYZs5u2AVAGNpcEIccJt0hBmOYwN1mxQw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57c1e2d5-928d-446f-444e-08dc97337d95
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2024 05:30:58.8244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bIDDFLKeJlLjHZgIi9k4MzHOPr4Zqo3oNiV6FXUydXiUaxleGoVSIyIAXfW+2910GdPYQ9MBpzZLNVfa/QMXI74UCfNB1naKVFJGpxJ/miQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6421
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

On Wed, Jun 26, 2024 at 10:42:24AM GMT, Matt Roper wrote:
>On Wed, Jun 26, 2024 at 01:26:00PM -0400, Rodrigo Vivi wrote:
>> On Wed, Jun 26, 2024 at 05:17:41PM +0100, Matthew Auld wrote:
>> > On 26/06/2024 16:53, Rodrigo Vivi wrote:
>> > > On Wed, Jun 19, 2024 at 03:31:27PM +0100, Matthew Auld wrote:
>> > > > On BMG-G21 we need to disable fbc due to complications around the WA.
>> > > >
>> > > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> > > > Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
>> > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> > > > Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > > > Cc: intel-gfx@lists.freedesktop.org
>> > > > ---
>> > > >   drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
>> > > >   drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
>> > > >   drivers/gpu/drm/xe/Makefile                     |  4 +++-
>> > > >   drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
>> > > >   4 files changed, 33 insertions(+), 1 deletion(-)
>> > > >   create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c
>> > > >
>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > > > index 63201d09852c..be644ab6ae00 100644
>> > > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > > > @@ -6,8 +6,16 @@
>> > > >   #ifndef __INTEL_DISPLAY_WA_H__
>> > > >   #define __INTEL_DISPLAY_WA_H__
>> > > > +#include <linux/types.h>
>> > > > +
>> > > >   struct drm_i915_private;
>> > > >   void intel_display_wa_apply(struct drm_i915_private *i915);
>> > > > +#ifdef I915
>> > > > +static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
>> > > > +#else
>> > > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
>> > > > +#endif
>> > >
>> > > please avoid the ifdef I915 in new patches as we are trying to get away from that
>> > > in favor of a clean separation.
>> >
>> > Can you please share an example for the best way to do that here, with clean
>> > separation?
>>
>> hmmm... looking more to the patch now...
>> I don't believe that the WA/RTP rule from Xe should leak into i915 to be honest.
>>
>> It looks like we are trending to a separate intel-display.ko that shouldn't depend
>> on driver's declarations like this.
>>
>> Ideally I would also say that wa in the display code should relly on the 'D'
>> (display-id) of the GMD-ID. But I see that this 16023588340 is for the 'G' ip.
>> So, perhaps the display code should inspect the 'G' id from the device inside
>> display code?
>
>This is one of those rare cases where a GT-based workaround also has a
>side effect of "oh, and you also need to disable FBC in the display
>driver."  So as you said, the need to disable FBC is entirely tied to
>details on the graphics side of the IP, not the display version.  :-(
>
>So there are two options --- either you duplicate the logic to decide
>whether the workaround applies in both the display driver and the core
>(i915/Xe) driver, or you make the core driver the authoritative decision
>maker for GT-based workarounds and give the display driver some way to
>query the core driver.  The patch here is following the latter approach,
>and for the short term future while display code just gets re-compiled
>into each core driver, this seems to be an accurate implementation
>(always false on i915 builds, and querying RTP for Xe builds).  As we
>proceed with moving intel_display into its own standalone driver, we'll
>need a more formal display<->core driver interface and it will probably
>make sense to have a formal "query a GT workaround" entrypoint as part
>of that interface so that we don't need to keep adding more one-off
>"needs_XXXXX" for future workarounds that wind up in the same boat.

agreed. Let's not leak the decision on other places: it belongs in the
core driver.

When there's the proper separation, then I believe we can just copy the
root_gt->wa_active.oob over to the display struct. And then implement a
macro on the display side to do the same check. Or we may have a set of
function pointers and one of them would be to query if a WA should be
enabled.

Lucas De Marchi

>
>
>Matt
>
>>
>> Jani, thoughts on this?
>>
>> >
>> > I can add a new .c just for intel_display_needs_wa_16023588340 and move it
>> > there, which then avoids the ifdef I think, but that then adds an entirely
>> > new file just for this tiny stub. Unless I can dump it somewhere else?
>>
>> One temporary workaround that I see without the ifdef I915 would be to
>> declare this function in i915_drv.h so in xe you add to the compat-i915-headers
>> instead of creating a new file there.
>>
>> >
>> > >
>> > > > +
>> > > >   #endif
>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > > > index 67116c9f1464..8488f82143a4 100644
>> > > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > > > @@ -56,6 +56,7 @@
>> > > >   #include "intel_display_device.h"
>> > > >   #include "intel_display_trace.h"
>> > > >   #include "intel_display_types.h"
>> > > > +#include "intel_display_wa.h"
>> > > >   #include "intel_fbc.h"
>> > > >   #include "intel_fbc_regs.h"
>> > > >   #include "intel_frontbuffer.h"
>> > > > @@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>> > > >   		return 0;
>> > > >   	}
>> > > > +	if (intel_display_needs_wa_16023588340(i915)) {
>> > > > +		plane_state->no_fbc_reason = "Wa_16023588340";
>> > > > +		return 0;
>> > > > +	}
>> > > > +
>> > > >   	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>> > > >   	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
>> > > >   		plane_state->no_fbc_reason = "VT-d enabled";
>> > > > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> > > > index 0e16e5029081..f7521fd5db4c 100644
>> > > > --- a/drivers/gpu/drm/xe/Makefile
>> > > > +++ b/drivers/gpu/drm/xe/Makefile
>> > > > @@ -34,7 +34,8 @@ uses_generated_oob := \
>> > > >   	$(obj)/xe_ring_ops.o \
>> > > >   	$(obj)/xe_vm.o \
>> > > >   	$(obj)/xe_wa.o \
>> > > > -	$(obj)/xe_ttm_stolen_mgr.o
>> > > > +	$(obj)/xe_ttm_stolen_mgr.o \
>> > > > +	$(obj)/display/xe_display_wa.o \
>> > > >   $(uses_generated_oob): $(generated_oob)
>> > > > @@ -192,6 +193,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>> > > >   	display/xe_display.o \
>> > > >   	display/xe_display_misc.o \
>> > > >   	display/xe_display_rps.o \
>> > > > +	display/xe_display_wa.o \
>> > > >   	display/xe_dsb_buffer.o \
>> > > >   	display/xe_fb_pin.o \
>> > > >   	display/xe_hdcp_gsc.o \
>> > > > diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
>> > > > new file mode 100644
>> > > > index 000000000000..68e3d1959ad6
>> > > > --- /dev/null
>> > > > +++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
>> > > > @@ -0,0 +1,16 @@
>> > > > +// SPDX-License-Identifier: MIT
>> > > > +/*
>> > > > + * Copyright © 2024 Intel Corporation
>> > > > + */
>> > > > +
>> > > > +#include "intel_display_wa.h"
>> > > > +
>> > > > +#include "xe_device.h"
>> > > > +#include "xe_wa.h"
>> > > > +
>> > > > +#include <generated/xe_wa_oob.h>
>> > > > +
>> > > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
>> > > > +{
>> > > > +	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
>> > > > +}
>> > > > --
>> > > > 2.45.1
>> > > >
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation

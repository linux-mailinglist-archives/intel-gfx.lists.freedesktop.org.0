Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12113AD043E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jun 2025 16:50:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83E510EAD3;
	Fri,  6 Jun 2025 14:50:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nuidj066";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC63610EAD2;
 Fri,  6 Jun 2025 14:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749221403; x=1780757403;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=tJPjlVX5QjS1Jq2rna+bHfbr6E/Z/JbHqok9gpnqoPI=;
 b=Nuidj066jWfzlKy6wqz3fXtn5SzuV9wddkPZUNVPCC9sP3vXc0aofFPm
 eUeBq50Q98UEnIkgOqrJE591m7dHSiLIuoP/dd7C9ToscS+KTtl0wPEjV
 B6h5DV9UxINT7H3MBnqA6uapdPHcMfQhwXkoXXmh043zT3SpzPacROKwm
 epS/6zGUEXgaZ/Ab+LZf2IxiqyIzuqRGpZOJjCPZWUbuF0PS8XKvF8+Rm
 kQm46wgAjNuYETgdmFJ7aPhm1xS5UfyXOgBfHvfMFA32cLrNwPMsxk4J1
 wVZdhIllz0Gr5xJTJ8OWUhnqML0c86UziS2ddJBTtdUbFAjtE18eIwuMY A==;
X-CSE-ConnectionGUID: lklzCwi9QNu+lF5Mo3jzbg==
X-CSE-MsgGUID: h9e0wsz2Tm+mKsdVQQngNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11456"; a="62731673"
X-IronPort-AV: E=Sophos;i="6.16,215,1744095600"; d="scan'208";a="62731673"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 07:50:03 -0700
X-CSE-ConnectionGUID: x6JPwDyUSTiGNNYzp51uSQ==
X-CSE-MsgGUID: eSFRLKpJQK6gMFeZYS10oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,215,1744095600"; d="scan'208";a="176718687"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 07:50:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 6 Jun 2025 07:50:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 6 Jun 2025 07:50:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.72)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 6 Jun 2025 07:50:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bir7zKGHnYcQnPcbz7vHYlpj+emgIYJxy7SwlQ2AH8M8xwkrs2jMmdRFpGebsirVKrZ/0fJi8s8T/dBSe8ZvqxqpmcjzBWwq6YNTt/dqjdrQrxLxY62JyIC72tm4v5yzPuIOq+/HwTc6ZoWXZNLiroE015kWvM+ASYM2r9UzBg3NLekTjvszw/qt8MAf+qX2nWSnivMxEvlezU2su1bf3CK/AJaeQs4tFs+U/zKmttYTJvPATLEJXl/rq0WM54WIcMvq3CA4Ckseipc7HCDDqPWVBzyN8NhsvvFrih/Rw2watKSNSPgfnyKUCQp4SJ198eAWWC68xLx1QfNFF9bHZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CHb/wuOG84BJJwqe0iJeaV/wDxyRctIZ0fRVAwFbhk8=;
 b=WWbsudhceHWBf0LdHNajFQUClgQJT7XqqWRAmYqDgo3LCHrgiNl99p6i+Ryl2eIMar/WOR+QmHF9qGlVwVY9rVvhf1GjzQzCkYL5kb9iv4D7cix1itU4ToDWZNI0q/zOo7dt9JOWwYrIabeCd2clFI73ZdUnGZdOiyF05JJu8Z5seFj4syjEIeY1K1MGN6IlnmPeiof6qaE8p1A6Qb3SiGqu6wp0sAonqsiMcJRFnCxhZLzIeRPmMpAKADy05PVCqDLcO70HLGKx318jUPWEpKMKqAOE3R7rY/Evin45WdZr5jQg2IXHOY91AF3TRmZ9nW+yX3KZbWpfIUpHkxg8hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS7PR11MB6246.namprd11.prod.outlook.com (2603:10b6:8:99::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Fri, 6 Jun
 2025 14:49:58 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8792.034; Fri, 6 Jun 2025
 14:49:58 +0000
Date: Fri, 6 Jun 2025 09:49:56 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Suraj Kandpal" <suraj.kandpal@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v4] drm/i915: split out display register macros to a
 separate file
Message-ID: <cqww6aekcmcy7h3mlttlp6v3udmxw2yh6hlzbhz2dnpmanbkda@lbuwmw2i7bcg>
References: <20250606102256.2080073-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250606102256.2080073-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0123.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::8) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS7PR11MB6246:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b00b200-1642-4675-5c82-08dda509686d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?hMdWw5nENl+w0i+awCQDrrNMLTI3zvKnEfW8Ka7/W6R7x3COKkH/4mdMsm?=
 =?iso-8859-1?Q?9TQW4OhoX1daTRBMjSVQ1lD3j45PO8h/2/8Viy1ovOBMY/33snstWlaajq?=
 =?iso-8859-1?Q?MHLUjdvjzGG+b6x1Krxi5qMpJxuEne0aT4CMfEkY9d7emnir2tV6evy9Xs?=
 =?iso-8859-1?Q?5z42hCcMG+JMLFVwxth1GLkAvkjyGNireQX0Ad5oWlhSurRrejEsuR7MhF?=
 =?iso-8859-1?Q?MbR4cQRNtnpkJuxKy/XFXp1b231Hx3Bj3CBZzZBNLTIm98QL0C3I5dLVUe?=
 =?iso-8859-1?Q?QU3bLmCsiYgWmk2hEKa60wVa6OfzJvmLMaF3SDIyKMGrqHJjZB55Wqb54n?=
 =?iso-8859-1?Q?di5b+i76QZ8L0uBEz6vIObOz00Zum5KqefEhv8U4a0Yyw6l/Y7y6xDk0PG?=
 =?iso-8859-1?Q?BRG/aEvufU8oomvBaDuGKgLGvCAfXQJ6j0j6zE5JzmgCNmOVuRHLR9ll3I?=
 =?iso-8859-1?Q?oEAQDm0GNeb5Y8Dyr7+kk1vVKjHhZTD7XrN6y6SAq3pNgLjQpDSLfTwqc9?=
 =?iso-8859-1?Q?uhGyS/fpZyOfEjrgIrdPcD6bcSUQfR3VL97yYWp+DnASzHWZJkS3Dt0fb3?=
 =?iso-8859-1?Q?0zQsLwXIxd/eXdGItBEloGKeVSy+syVVE4ySBewQ/SSLHmtoOPo0dNiuvv?=
 =?iso-8859-1?Q?yJqOpHU1ILnu1b0hq+aJ28BBLiFR3dHljZsE15hzX+jOD92TAYys84RQrI?=
 =?iso-8859-1?Q?i55uFaOez3n9dd8ru0LyKaRWxqrHN9jGH7y10BzddoAG6OmzIe737UP2Ev?=
 =?iso-8859-1?Q?R2n+iZB+s0reXuWO7Hm5v6gDpIH14+uAvAQ974rckybnujT2AK6dJzqAZf?=
 =?iso-8859-1?Q?Pybn0iGjSbxk7AZdVOqBUNH/7gbhT20PObYfNRWQilt2lN/34mnRmNjsba?=
 =?iso-8859-1?Q?5wXjLh5OUtaK/DB4vXkod4+hlDj5UBgHuiSkwPfciAGec8yOOw7mCtpcb/?=
 =?iso-8859-1?Q?sQ0mWWaWJnp8S3IMj1F+CqXj/6a0gb7yDF62IO0L3yH8hCpSwiL+s5CXUA?=
 =?iso-8859-1?Q?M+eqqgQtM5OrAJswkB3FNzsKZMO28VaqNKnjQApuBXEapjGTTZbjV5uW+h?=
 =?iso-8859-1?Q?jtcdiv7phJZ72u6BunDRWOZ9a5bDZnHn1THoq0AVRe6GvZOljaXDPb5jgw?=
 =?iso-8859-1?Q?pMv1SObPS6fFyp3OtZsdLTR1ZH18sBUAihc6dkE1C0NcqYY+zg+knlch+f?=
 =?iso-8859-1?Q?sAHOqhZe3Pn2SrHLkRPnyOIHdPmaJHIr6TZzMVufcSg5mxRIkFbSOk1dv7?=
 =?iso-8859-1?Q?+TispxDVquAvQtnGxnkWiF9z76v+hMxOVcrPka3Vxio717uEchbEMzHrCz?=
 =?iso-8859-1?Q?8Qwiqc9GSNc/E94GHaKZu78G8kWEH9yQ/ni3dcupdMiVSZItCShmz4sPAg?=
 =?iso-8859-1?Q?vuXgjZwqt7EFuC2xY1KYp9XwqjHbvp2zW5znP/UVqE9vMvYwFPGItvaxMh?=
 =?iso-8859-1?Q?AikhtaZkNCOXHIA5EpieHGqHR1OJZR0biiyemP5xAoTOaffjJc8nTLiJZd?=
 =?iso-8859-1?Q?Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Hn0LzK7XBSxkpGmNltK9cj1NpDQT4RrT819/qVewLFJhbpWzVXiKcg60KT?=
 =?iso-8859-1?Q?diKl5aQKVOAJyHRlq4X9p4xiFhS6j+036c3LPKhbZpMbe5OACN2yzIIEeT?=
 =?iso-8859-1?Q?FdHWyeXjsaWBLRyiso/hy4XyyG3wJt2TSvpg86JGIMbGMPnQsSR7q8CNqb?=
 =?iso-8859-1?Q?KMQQ4u1Xi//S0gYSEegS4v1xT7MhyWJgUe1Yb+mEy9tUsuAdev7uYlV0X/?=
 =?iso-8859-1?Q?C0X0yP0W/0yhopAoUZwq5jajvsKFPB4P10RC5uIcPgwB5yUlfC/51a7C9d?=
 =?iso-8859-1?Q?u9JKRMXbX0Be9QljCPDQKMBGs+yUfEoC4J5gYrYekmsJLGmGMeFORcwblQ?=
 =?iso-8859-1?Q?W18QlzGxtXxrqkNau92cENme0XhjOsfoEmIQG0GoqZ3M+V3cQ8jsYYbEuA?=
 =?iso-8859-1?Q?cxJeHRsPef0IQpTdiRT6gOVrj06ydqlKhM/NL+GcntRsm2jLPCbbCtp90y?=
 =?iso-8859-1?Q?aw7nc46j7noxOzjEF36658Jf2t4tC0DO5bI2GhkurT81JcxxzMt1pqC/Ap?=
 =?iso-8859-1?Q?Kbz3V5zex5Y0oDhnx/IUR5vy/oNLN06/oo1tdm7eRvzsCenqW1iAnQH3Wd?=
 =?iso-8859-1?Q?VhcaZ3aUvWGqRFl6zF+eF+Bh3Z1XvxiF5RwpHFGi3VrXy/1w/xDqtAT/Cc?=
 =?iso-8859-1?Q?fFyIzRH06/YTEseJAte7YXQwZRxynmQPA/RM46S5K/6PRQ0AJxVgnJyGS8?=
 =?iso-8859-1?Q?vm4giTCduThUp/F42v3Ai3Cumrc7rSpyine0dE7GW2gdsX8lmKkCKF5W10?=
 =?iso-8859-1?Q?BEPkKDd7UAV1HD3YMozHYt1e9qFSjf82HWMhx9/u6FcaedsVGFX8VaI556?=
 =?iso-8859-1?Q?uUnolortzFreR6Z9xhTcRhqEfYZiSbdbIQpY4NgRCT29whvwgHBORdF21B?=
 =?iso-8859-1?Q?F8Et2hnZMMwDgyAuRgCUDixK+OctZkDwKaczCWbCfS6Gn/RwsebtjUmBMW?=
 =?iso-8859-1?Q?CS4gmkJ6Qa7AXPd4//pRfleECazT3u71KHR/hEs0vs/6kC9MgL4J0bfpst?=
 =?iso-8859-1?Q?TfN+QJUoeBdJSeEB/vUEzpknn5OGzJBvtGLCqpjMvc18MKxsoy/j+LV5/u?=
 =?iso-8859-1?Q?8WJwbUXkoIfsQw3t0rTrYUP3xGscyKQoqmivxIx+h3dSpykou2lENb8l33?=
 =?iso-8859-1?Q?Tm6DmsdkGktqL1UwuxFt/5wH9z/sxHPU5N/FOI+8c3XxKdgQ3qrOD0P2LE?=
 =?iso-8859-1?Q?YmmCE5XoColns2hBOTortM+mPJ10uP0xPLtS7JtAB/lA3gYwG5X209/XVH?=
 =?iso-8859-1?Q?lXCRr5PETUhxG62NmYbLxuovIlIuTLw4XZP68ILYWOfV5Qgz6AHbqQW8z/?=
 =?iso-8859-1?Q?FYWzvjxbvJghD9foBSaCNtQ5qIN1TcL+ySoNv9RC1ait7UJZWKBnOMpTSM?=
 =?iso-8859-1?Q?PbilV1lmi+1ADXrRsGvYZwjhtKPMRAEzRLcTbifFKc8PmvswyK7NjvL56j?=
 =?iso-8859-1?Q?w8mxr3gyyPlYcmlgLNuRaZH3f9l9f5npz91y4Lzzf5DY2py9J7FnD4F2El?=
 =?iso-8859-1?Q?GxqfVUK0ji2tSrp/fPtzIwbZtiqiR7EF7P2PSCwpuP5IxEQukmYvhpDU1U?=
 =?iso-8859-1?Q?P8KHqCjYkV0pXA5OT/p6GTGjzE8OUIXRpEV//wZCEq38A1yDNpCg0YtK8u?=
 =?iso-8859-1?Q?ys5sbhKhPXxnQoOGhf6qsD6q0ncawSUVZN+iXpPsUkG5Ed3r6ChrOQcg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b00b200-1642-4675-5c82-08dda509686d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2025 14:49:58.3566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4rBauePrrYXOks8sllvb4GeB+t/uXmEdXn8ROmdLC6WSM+prQQlQqi2+zAND+n8fJBIOvISAjmsWoPRDGmG9Wup4z9iwLETkPrfwtXA0cUA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6246
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

On Fri, Jun 06, 2025 at 01:22:56PM +0300, Jani Nikula wrote:
>This is a scripted split of the display related register macros from
>i915_reg.h to display/intel_display_regs.h. As a starting point, move
>all the macros that are only used in display code (or GVT). If there are
>users in core i915 code or soc/, or no users anywhere, keep the macros
>in i915_reg.h. This is done in groups of macros separated by blank
>lines, moving the comments along with the groups.
>
>Some manually picked macro groups are kept/moved regardless of the
>heuristics above.
>
>This is obviously a very crude approach. It's not perfect. But there are
>4.2k lines in i915_reg.h, and its refactoring has ground to a halt. This
>is the big hammer that splits the file to two, and enables further
>cleanup.
>
>Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I skimmed over the registers and didn't spot non-display related ones.
For the code move, there are a few unrelated changes due to sorting the
includes, but that should be fine as it's easier to just sort the block.

Changes in drivers/gpu/drm/i915/display/intel_display_regs.h indeed come
verbatim from the other file, as colored by git show --color-moved.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Let's get this in before it conflicts again.

thanks
Lucas De Marchi

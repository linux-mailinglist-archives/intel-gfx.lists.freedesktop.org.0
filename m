Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 170DAB4FD76
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 15:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A38A110E745;
	Tue,  9 Sep 2025 13:39:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVZM8rCs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A4910E745
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 13:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757425157; x=1788961157;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=u7eSp5cgSySCdgBQE7AsqbJO5Q4Gpqx0KzA3ILpdaUE=;
 b=HVZM8rCsaWacdFFagAY0ormKPfp+DvxgII/aHi2N2Nva2KRnW53EuNXR
 55dTuDpR9X2bw1JCBN/4AFCQiYDRy6Dl34h/zLtGW7bJs16UNLxdSuQzr
 XUK+tko5twCLmmftEnKO3P4++YUFh75nY0uuX0RQZBFsEpSX6PxnvzJCe
 0O8+84AilAcH38UMmwYHgFoxxTwjq8Tpnzao8f4XH6Jfpexud85RNHPDi
 vYtfZsA9cJDY1H8f2Hi5agrsisVYHC9YWSmZ4Doe/64gcceahTcf6JnAg
 jPtvixlKQV/SwHWN5TCgOq0t63DCEEjZOlDuK+8R9DS5vQV7ossaLkI3D Q==;
X-CSE-ConnectionGUID: X3IwMadcTr2Nu6hdZCBMLQ==
X-CSE-MsgGUID: 9d3Zu5HiTL2JweX5mxJEGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="77164782"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="77164782"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:39:16 -0700
X-CSE-ConnectionGUID: mYMrlkqvTTSv2ORFYuYFWg==
X-CSE-MsgGUID: oL8v7XU6STOlZUZHB8niug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="203861301"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:39:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:39:15 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 06:39:15 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.45)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:39:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b0TKzviBwtVxaz//P5hbTllYFX8upKVOaD2dMpZGyUKGdb2usvj+NSkeUJk6vVdAhYI/CGv9BEsHNDRXzs8TuarblRrkO6cbBZCrsWeWHlF9JO6wu/XP4KaOf01ZVvlPhumdSW+NXDF+WwaI+qtRh8E8uC+W6cz69mXm2Lu6qkzxNbiI+C2w0S1/fs6MCg1n1+GkhY7EIScM66Y1l2iUyC8GsKLJloYK6F5tytHS/vHqwHuKrRJsaRmX1pWNsHY34kRKDjkAe2te/F+aobw8Nw7XniW+gigDY5a5xuPEhoaGD/w+u4x8RkQGKqBoRpMd22SeyBQfAnN74HQamPtGeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RzzhF0no4VotRfz9nM9poC8SIuAN4nX4HMLoxvNrv+s=;
 b=sVtTNG/zo8hS94Dyek2eluFO5bA7D3ljFDjq1fM0182cLyUT7M8H0mujvdeJ7qD70UOoEOSiTcafIFtuh5fAjoaPO6PM1Hfy3sFip5umhUoab23noF5FWGARX8xMJjPeuw5auu83t311zyPPmAkhCwmbErzyWv7IQLehKrqliHZma1C5s7HZhqxvLW0vMukjgOA+A1hTihggadxpezExrB0BYHnluKkq7CDOHDG/13BBK5x0glmfBPcSlhgje/rqAjpqiHwxFnt6+S1OYrRsxwPFyxvFGG5bJg/DklMN203L0C4YWXxasVAlmud1xb6sn82AR88Ry/Ae82hT5qHGDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM4PR11MB6453.namprd11.prod.outlook.com (2603:10b6:8:b6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 9 Sep
 2025 13:39:12 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 13:39:12 +0000
Date: Tue, 9 Sep 2025 09:39:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/5] drm/i915: split out i915_list_util.h
Message-ID: <aMAt_T1nCt0-XOX0@intel.com>
References: <cover.1757340520.git.jani.nikula@intel.com>
 <73279e53f57d803f0d4b9a1572613ea0be87c5b8.1757340521.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <73279e53f57d803f0d4b9a1572613ea0be87c5b8.1757340521.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::28) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM4PR11MB6453:EE_
X-MS-Office365-Filtering-Correlation-Id: 3485f312-6ecd-4840-fa12-08ddefa642b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?fmA3gw7r7ojL9sl/VKLW8C8iemYRSlF+GxWURWDkxmD1MibDVAV1BBq75A?=
 =?iso-8859-1?Q?NpZmdLnlFkkNK803ATarZ/Gdh0FzdarXgqGZAzZsgT1EmfexK9/TUTRAdo?=
 =?iso-8859-1?Q?J1yMK0O9hJettDEArEJY1fkuMbL2PUcNEYYJw1pig0JKeILWcx2CZ7LJY2?=
 =?iso-8859-1?Q?c9WWHabouGxfcViPTBmLjDOADB3fiINKQOrjRzQGiRkz+jvLYupx0MapuN?=
 =?iso-8859-1?Q?keqJrAxp7Qpa1hOL3F/+z7G86G114xuuP1qVyI2FMOPTnqwYgI0ikYrkMG?=
 =?iso-8859-1?Q?zbvQLtOpXfclcU+ZVxXw+qzWlj72Vy5T6h8tp5jt5OVy+LVff3fT9cCCu5?=
 =?iso-8859-1?Q?Gm065bg4ITDkSVJboTaq5Oew/x4qS5y+eZU/jydvnlgP2yZ91NAkViz1HL?=
 =?iso-8859-1?Q?szYb2BuxHI6xrXSndnQr2lOk1ECef55496dGHRaZ2TBP+yNJcMWUKL8tKl?=
 =?iso-8859-1?Q?KhkrHlXK07FZDGHZnOL5YP1vijFmIDtb/kAhmEWC1IcIrpGv896AtMY9TX?=
 =?iso-8859-1?Q?X0RniR0A9Sr6bgz9lmKRq07cPKCdzAx+1Z3dzOsOPlDE1NSdJrW1gq61Gz?=
 =?iso-8859-1?Q?f/iv44uVaCWGIT5Gg4oSrgGf+d/tHeAGBnCcBGV8pPYf7ZNUC1BGuprtaS?=
 =?iso-8859-1?Q?4DT7TGegTZ+t3a8IxnwfnYwAE2/0CJu6sCuYkfEzlHUH0HTJq1bqbjJf/4?=
 =?iso-8859-1?Q?uO370TiOBf/YayXd9i85/Ryki+wDguvPS5PQ2FJLuIa+bgh36LwTgh9xz8?=
 =?iso-8859-1?Q?0fxoyECBFQ4uylxqE5Hg3fQCwT0nq2VBTl+yii7EZANImszDZjN86NnEX4?=
 =?iso-8859-1?Q?gGmjsyBb5bfAaIU98XhvIiv30bu/N/FqvtZohu1pB4VJ3iJiRyh6fBoQ0+?=
 =?iso-8859-1?Q?D35hudW97cvx45HntgwlfJ/2a3upcWO5dlvkLKER+POkcu5jYaeCetIYBz?=
 =?iso-8859-1?Q?WyfLfhMsHWGjYj5uU9USBnipPqucmuYnS3PhfboLRiFXEYWVNe2SYZZBnj?=
 =?iso-8859-1?Q?HuV2iMibzA4MKr/ZgTBU/CRNdfoxtTGKnAEngpktXKP6slqx4Kj4DbxSjn?=
 =?iso-8859-1?Q?eDM+NCgUXySgl2a1+zdnTuC/caEGDgTSsCcJbW1ZQcxXP2gLhX41KUN0uP?=
 =?iso-8859-1?Q?KfJAjNVMZs8y7Zf4u82aConvhO70GXOFDqWNAG2NwCpm99m/oRczstsOVJ?=
 =?iso-8859-1?Q?M4Zhn1gAoEElAK9+WC0OcWJkVZ63x5egztODZQbBffiu/HmxspERJX4xf6?=
 =?iso-8859-1?Q?0XZQQj0Ir9hR9PyttKR5qGcAjXcVabqH5BgIKXV12eehP5iZ9yEFYJrPfn?=
 =?iso-8859-1?Q?AoQKra33UNJD6DmAyW7nWy0d6IMk2dlXenQnamU+vHW1+u4WoGqHg48cMB?=
 =?iso-8859-1?Q?tlhXlLpjruq5609xmfsUrBi1bFr6T5a5q+haRDQanzRE/ZRZVGWWxulASV?=
 =?iso-8859-1?Q?8uLWPZJ6JN7s28JvqT0mODSHFetURFG/zrSRPi9ZmF5xFZqlB017UIyf8D?=
 =?iso-8859-1?Q?4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?S3nRwOhebzPIFHXk4j8EiSFgUqDVlN5oClCAzdZKU6ZcywjJX7LGiJ/49E?=
 =?iso-8859-1?Q?bjGhPHLOpS3OQ4NjoP/PmqfOpPAwZr15Mhun4r6KoIvP5Jb6Kgupw4a2Jm?=
 =?iso-8859-1?Q?ke5NkR02aorEQNFZM4lQIoGLSqZHxgW3w2poceSPRQXdqQFMOP6NKw2GI/?=
 =?iso-8859-1?Q?VmQZYq36Nx/5NUWrLVhvsZiBeuuginlQxKYDlZ+6xh48AOBVgBzA8iy5Q1?=
 =?iso-8859-1?Q?Vo3VwZh/pYqustF52I45mkUNBOzdTMyoPAx6MlHb5noOEnSkfzwVuWqPbn?=
 =?iso-8859-1?Q?UnnIsOydM5hhK3ibbCjqg/zPHQFluMBTZKnLwizylQqvtyTtm28ZblVqy+?=
 =?iso-8859-1?Q?y/AeR6n14usiFDt+8uyGdiiWGzwQzsPmBHFcFyiZ4RaS9yBmjHzZkyUSkq?=
 =?iso-8859-1?Q?h9g8BVmmpmf3aIf18dhBvpu5pcbOCHekxP6pQi99aT7CdXMRXW+kuWYC0K?=
 =?iso-8859-1?Q?iu9Zr7QJOWds2zcUhjbxeQh4GNgVXDG7REbcNceJ4Jdh/rCAuYTFN+8Q0e?=
 =?iso-8859-1?Q?oGIJoVRINlvJjpXyjGXDn0pMyQqUApO+vBFBsBRo+xoFTXRlRvw2z0v1TR?=
 =?iso-8859-1?Q?1ZEpYrf/AsJOz/Xw91zF6U9/7N/mXzpzgGjKP1SRra6jRPLkgamuDGLsE/?=
 =?iso-8859-1?Q?NU6y8Q2xhej8ZYc0rWYTCCWey7vDRNdR1UNZoze3VSAtdGGagLjVYMiKjD?=
 =?iso-8859-1?Q?BUIKMqJUNmX+hIPSGUvg/bgPBAcxk1LiOXVnACSJ7EQH997ZqXDwae9uK8?=
 =?iso-8859-1?Q?Td7I897CpPVMOIrJ3ZMifc89C/xAGMHcdfrFOe+J8s6ASL6ItDwqNxHAnS?=
 =?iso-8859-1?Q?4F+y50ryAJ+3jCGpfzG7KgnK0VUHoeKdeTw0uavVJ/obdaaMezRePAPQW8?=
 =?iso-8859-1?Q?VOmmwWkbkH4vuOlz6wZ2gZJFbXDGWF36cNDnE6H0DUSGBWC7QmTlr6rWH/?=
 =?iso-8859-1?Q?V3tRSwjWHvjSrAFNVlb0PdcMVbECuD3veBPo6SgEI1JNRMsfSIQopE0d1j?=
 =?iso-8859-1?Q?52yiQ10z/mscZR9aS/ZIgeWYOwJwKBlWMRcgivXpr8Sfug7qF1g14VPxRd?=
 =?iso-8859-1?Q?0KLaDelVOz7kCZhMi5shr85TU/SzRbREqYMhd+isLkz3UnGJB8Tmn+PBjz?=
 =?iso-8859-1?Q?e9+qJJzZ/UbqvxYjOnU/avixQ8/6ednio73tJigo2n+2myD9oznfT4rpCl?=
 =?iso-8859-1?Q?oLkAxbY+HJTR449AQ8oJNs7x8L7m5ptKtuc+ylVE4bv2XVAyMaOY3QnBxe?=
 =?iso-8859-1?Q?7cdZf8wiN68IaDnzv/PJWO4FM+8a9NoU0DLCqWk7n9KM3K3eeFPU9j/E1k?=
 =?iso-8859-1?Q?6i4o1KiJHVb2HsjQvAaJ/OCDewbrLvRJ/Z4BIl1DItMjM0Q0yUe71dXcMw?=
 =?iso-8859-1?Q?Kyb5n1Uvvk8UmxNDP9YHcA1orfFBXuvhcvym8M8FkkvXAGezFu/y7arPuC?=
 =?iso-8859-1?Q?CAI5TpAMJupJKBKBLCC+B5w9WPGhDHaIIQ2WC5DXsMXefZvkYIAkLWmWs4?=
 =?iso-8859-1?Q?DLCa3WvA74ucf9V7fGwumLv1nsynwZUbN2gacj2ktNpXUWk5/MgdrebClB?=
 =?iso-8859-1?Q?7or97/mO6bOLYzX96v1SOaLEYyVbXZZj1O88xYB9ayNnShVk2+3YYmZnEw?=
 =?iso-8859-1?Q?r1aKSiMKt7i8YMRAl8LFFZLDF/bQSjSkBLnXiKBw/osdzkzTPzTzLhgw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3485f312-6ecd-4840-fa12-08ddefa642b6
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 13:39:12.1135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Eu+12iUbzEewsQC5hSCchH964pra6dPrbWPLUdlZxOVLoylWYTew+uQLYfKXAPHsdmzdEkDrYsoLNRjhJfl5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6453
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

On Mon, Sep 08, 2025 at 05:11:48PM +0300, Jani Nikula wrote:
> Move list related utilities from i915_utils.h to separate new file
> i915_list_util.h. Clean up related includes.
> 

here as well I believe it would be better to have an i915_ prefix.

but up to you

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> Note: Arguably none of this should exist in i915 in the first place. At
> least isolate it better.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/gt/intel_execlists_submission.c  |  1 +
>  .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    |  1 +
>  drivers/gpu/drm/i915/gt/intel_timeline.h      |  2 +-
>  drivers/gpu/drm/i915/i915_list_util.h         | 23 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_utils.h             | 14 -----------
>  5 files changed, 26 insertions(+), 15 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_list_util.h
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 52c8fddedfce..0c1b2df02d26 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -112,6 +112,7 @@
>  
>  #include "gen8_engine_cs.h"
>  #include "i915_drv.h"
> +#include "i915_list_util.h"
>  #include "i915_reg.h"
>  #include "i915_timer_util.h"
>  #include "i915_trace.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> index 86b5a9ba323d..c7befc5c20d0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> @@ -7,6 +7,7 @@
>  #include "gem/i915_gem_object.h"
>  
>  #include "i915_drv.h"
> +#include "i915_list_util.h"
>  #include "intel_engine_pm.h"
>  #include "intel_gt_buffer_pool.h"
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
> index 5f8c8f79714e..85b43f9b9d95 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.h
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
> @@ -9,8 +9,8 @@
>  #include <linux/lockdep.h>
>  
>  #include "i915_active.h"
> +#include "i915_list_util.h"
>  #include "i915_syncmap.h"
> -#include "i915_utils.h"
>  #include "intel_timeline_types.h"
>  
>  struct drm_printer;
> diff --git a/drivers/gpu/drm/i915/i915_list_util.h b/drivers/gpu/drm/i915/i915_list_util.h
> new file mode 100644
> index 000000000000..4e515dc8a3e0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_list_util.h
> @@ -0,0 +1,23 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2025 Intel Corporation */
> +
> +#ifndef __I915_LIST_UTIL_H__
> +#define __I915_LIST_UTIL_H__
> +
> +#include <linux/list.h>
> +#include <asm/rwonce.h>
> +
> +static inline void __list_del_many(struct list_head *head,
> +				   struct list_head *first)
> +{
> +	first->prev = head;
> +	WRITE_ONCE(head->next, first);
> +}
> +
> +static inline int list_is_last_rcu(const struct list_head *list,
> +				   const struct list_head *head)
> +{
> +	return READ_ONCE(list->next) == head;
> +}
> +
> +#endif /* __I915_LIST_UTIL_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 6278a74d08c2..4a6437d6e00e 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -25,7 +25,6 @@
>  #ifndef __I915_UTILS_H
>  #define __I915_UTILS_H
>  
> -#include <linux/list.h>
>  #include <linux/overflow.h>
>  #include <linux/sched.h>
>  #include <linux/string_helpers.h>
> @@ -101,19 +100,6 @@ static inline bool is_power_of_2_u64(u64 n)
>  	return (n != 0 && ((n & (n - 1)) == 0));
>  }
>  
> -static inline void __list_del_many(struct list_head *head,
> -				   struct list_head *first)
> -{
> -	first->prev = head;
> -	WRITE_ONCE(head->next, first);
> -}
> -
> -static inline int list_is_last_rcu(const struct list_head *list,
> -				   const struct list_head *head)
> -{
> -	return READ_ONCE(list->next) == head;
> -}
> -
>  static inline unsigned long msecs_to_jiffies_timeout(const unsigned int m)
>  {
>  	unsigned long j = msecs_to_jiffies(m);
> -- 
> 2.47.3
> 

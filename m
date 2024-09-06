Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B468C96F7F2
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:13:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C1F10EA93;
	Fri,  6 Sep 2024 15:13:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GH1Q/Rxv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26C1D10EA92;
 Fri,  6 Sep 2024 15:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725635580; x=1757171580;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=2wddRGGbRmo6GmA50/ZEX0MlHVX12++6XpAiGHb9dng=;
 b=GH1Q/RxvDA5UMSIdwjBILdaB0kERm9F3UOcL9aihmt/hmr9RRAc4loru
 DbkH6NfzraQOU3MfTHUsjXxzdCwGqfpi9ukv5L4wESguFUMx2td5Qihca
 AejbRrLgS4OVhUaV80IFQ7ljRlQDTmY02yGaG0i9P96+a76xXz88NAdot
 tB0f2IQKIeXg9ORe2u6uK4rREGUXgqG4nrdWw7t85qoaWAgMkbiNO3GlV
 3EhnIGf4EJDscHdX8nQzq/9vo4sOmtJ+qnFRqnlOfTt+ePDMk3OdSc+hV
 usx7hcbFVJUCdlxkXKal9zBCVrVq8shnF1UHdpWV39tn2z74M2JQgjbll g==;
X-CSE-ConnectionGUID: Hw7LHN9bR0OFULMQTkyuoA==
X-CSE-MsgGUID: 469VSWFcTj2FdUPuu78X3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="34995146"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="34995146"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:13:00 -0700
X-CSE-ConnectionGUID: /GPuDGX0TTakibhqyCqvCA==
X-CSE-MsgGUID: t/KN+WMIQf+tG2mLGziknQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="96695462"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2024 08:13:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 08:12:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 08:12:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Sep 2024 08:12:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Sep 2024 08:12:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l5LSx6koTcqkIWzu5wpAXGCYzq8aYRGt3iAEsIU4/t2xz0RzkpWhq6EAjBN1JKdKPs/5BLmfbFHBy+ylfsWkm4zCTQpf6PHFr9MJI6/AlwEzuR5K5+/V+Ye6az+b0Nnth9PEU+XCyjdNqM4vpwf33hQS9IHZwRUocrhiIa8XVXphIS6r3HNuXhdB73qk6qAOp3GVq01aIk6+/5P0ntUvHHh0++jNeeEoZHYIQW4IPPshMyYm09e2RQPdDmF5j0aCNyfNbJaFTKgqIrOj/0M4sCB/n8c5NGdT/58djQ9CNjEVbpLQpyKllttAyM7Hv0KP2xcUjdNUL7M22a6Pvdj7Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ylQ8Gyme6miybbwd+5ntQp6D5HN8yOThsHYDc3BrdxM=;
 b=A43aThxrmUcJqvIT5bB/dzQqncCtC/efRPQ+gcbnAR3xvEar/lkkOrCOPteGM9VQbQ/vCm957RtgZAVDxTgM0dGBlcrukSY/YAtLqcNZnQnJF1zX64kAXR63xkUyhcxkltNCkCM7ib2X0LsZ4wPAJMfEjcRCyaY8yJOi/V1mxxbHus1dxFr1709ucazVNKGdJTN5K4J6zRRODSKrw6q8vo8lAM7Va7k4TclBWXTUvv6DAFZgXKVhy1rJTqcbrriMXe99WflT8iIloN37j15olcyET6r5/AgZbat9X/nyeYaR6Kw2rWhCU7zVmHy6BtNPd9y5hwrREVe9cL+v+aAkJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7502.namprd11.prod.outlook.com (2603:10b6:a03:4d3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Fri, 6 Sep
 2024 15:12:56 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Fri, 6 Sep 2024
 15:12:56 +0000
Date: Fri, 6 Sep 2024 11:12:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/6] drm/i915/vga: Convert VGA code to intel_display
Message-ID: <Ztsb9OxzNdULmYn-@intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
 <20240906143306.15937-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240906143306.15937-5-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0308.namprd04.prod.outlook.com
 (2603:10b6:303:82::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7502:EE_
X-MS-Office365-Filtering-Correlation-Id: 66e5ba77-a0fa-4f52-b700-08dcce8662d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?i6BzSUr2xYbdVDUs+YlSElKNGORkdva/o/OSxFuw1YAslUuJrjvXhEaIEC?=
 =?iso-8859-1?Q?GDhy8k+L4jg1XTtmuevMQyKx3XZrRHvmDjqWt3D8PMuKbsRADZDnLxhZlx?=
 =?iso-8859-1?Q?Hx2jL8UJ6CPJ0oxsQBbh8PLN3TvvjW7hzHr391stGBdJP0Btfo+ecALAm4?=
 =?iso-8859-1?Q?uNvISDr6gDWiWYnDw5carQ/lBHteVx3zEZUGhO3d4ePnHpUFjBv3sdJjD5?=
 =?iso-8859-1?Q?BuSRd8uceVzGjrIxemCJZ2fMLUQ4gGPo8mQltz7EfNpZcWeQA0w3X3BU5V?=
 =?iso-8859-1?Q?zkGXci0xd4cN4DpkaMS3SL4pVPqYJz8wVrNYYhD4J8ZNjY3j7BxOFAq6hg?=
 =?iso-8859-1?Q?iHNWUgKUwEFinWtgjuqNUp2MaLE+i4QT9oAK2PGjnZSmP3iRzUYIEoySaG?=
 =?iso-8859-1?Q?9kVM8ktuf2XkkNCljm2407vBDj6B6PhEYJIpOT0QoKwM+Gq9/vaPbV+nRS?=
 =?iso-8859-1?Q?3Ss7qErueZYG/teSaLaBt/i5HYOuMjhgzB8KmJmYAI3jcHvg5tX9dog+Jm?=
 =?iso-8859-1?Q?ANKb2ThCL3eSmwAnJYEgnijWXgpA6WrYVXRElQW0MCjSkc7wTKgpghwyiU?=
 =?iso-8859-1?Q?+T7tRmgMSIQcEwj04O7HgHEnTzna5EHEreoSNGYXAa3LJNwXc0LY627374?=
 =?iso-8859-1?Q?CBJsw/UpKs4lh/sYEzWRNY+LAelAqM3I1K8ncXo7e8GQ4VA0v2vOkwrXoU?=
 =?iso-8859-1?Q?W4PkV7yoseMqoh90XM1383Zc4ZTUZAVvB4SUXuKM1FwNcYcgELw8woAPMa?=
 =?iso-8859-1?Q?f2gqjgxhe9XUhR0Iw/hVDpjTcw2SHPy80WrVgm1N0zYNrxBgV8VMegW2+4?=
 =?iso-8859-1?Q?Rp+mvr2LpbW2JBbNCyw5XY+EnJVilvA8PEgPzTYC5njW1gcpoyR7j0o97Z?=
 =?iso-8859-1?Q?Gjk+YuDajPugZDB4c0R1jbhF+4H81SKG6uO9Agpqlei/3HAo3a0mxxPXwW?=
 =?iso-8859-1?Q?GruqaBg9cfUUjjTWfW/xFdH3T2sORSnz+NgHaVOT5TR8tMzVpWAEpxVqJ9?=
 =?iso-8859-1?Q?jOhfKr6v83EZlNlaRJNJZ6pvGloHPpJW9aJJ40YBhK/e3HKg4r0qcjwQuy?=
 =?iso-8859-1?Q?FMZq1nrnONgRDpC6bWCvLrWdUXh38qT26aTgUt9GxMNfOPmFMZ4nNr/Hnc?=
 =?iso-8859-1?Q?UrMEdXLka2cbNKjirM9PJZ0IbUXvtVJP6lSQsPJFqKN95F/Hxiri5RB0nr?=
 =?iso-8859-1?Q?p0xATb/+MW9xlCIKHtd3A2YzY4eXp94wdWF4fGuaNMUGMFIFJAWsbITQNT?=
 =?iso-8859-1?Q?6GD3K4RU4bJcu5oD+2hfMo2tRheRSb7BPiVHXKN3czOZI1aCOkWSRKbNtu?=
 =?iso-8859-1?Q?Jyv8CMcer8HO0t/tzXUxd4fDWZ+S5h9fWR+tIqata9smli9TsBjBYCyhtY?=
 =?iso-8859-1?Q?SkJg2s9dvqD1ZvSf3+QDmwfLpFrmtZgg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?vkR1j5ebozH74o2Z5NQgjkSGAYhqLzFgYZ1WeA9zRGe2t1Q3NykemnUkfF?=
 =?iso-8859-1?Q?y33MvySQLFeOieVZYYPsLt72fI0gd7SUEC/y5Jxc7GG81zxuyxGiZPV3L2?=
 =?iso-8859-1?Q?TfhmL3p9a1bsFgureefesPH8VbU8HAuBTnyQcmek0y9U/8fMtdVgFH58Zj?=
 =?iso-8859-1?Q?GoZmX9JA5+KI4osXhLenu5L79u8RZHQlOI/jx4vxjKMfbHgTH2pz6bX4au?=
 =?iso-8859-1?Q?tIc17UyDxIKu113vFCWsiktaUEpmm2XYxmz3qHqVzZcOsyi79MDq2z2RdR?=
 =?iso-8859-1?Q?czPzkBHktJu6xyjkQeTHP1U/fBFFJ2gAhp6f2FMEvacnX/OmvbmTGCj/Os?=
 =?iso-8859-1?Q?it7nCNgmEm+zYtxzzFZKKu6LK0Efng2nZeQMgjzBVP5k8q/H3g0WdbRzYl?=
 =?iso-8859-1?Q?Y1z47ajObF/TpHp+c92EYqeVPUioAfz4y6spQXNekwfeIcwO/l0ukEc6k7?=
 =?iso-8859-1?Q?pinSP55JCtE1Xcfdm7CJOtnWkH7f2j4nxNDNDarBwD60D7+BNUUEEAfuBx?=
 =?iso-8859-1?Q?KklCD6Yohm/AZbOOn1cy2g6HHAK8iO3lHvnR67YuQnshGxXVn7qMB+Kx9v?=
 =?iso-8859-1?Q?UEQ3PpGFnTjyWCuBMwqMa+61bcuo0S8TqtrVyAyb/1e891yxf2fmeSla09?=
 =?iso-8859-1?Q?kkhW+kmz62jkVFQ0QKF1MGfmMRauifnnZX/nq33uPA/QzoJFJpjGEi2G4e?=
 =?iso-8859-1?Q?rDHLfPNypTZolY1hiMXGEiOReAO1FH5etQiyD6z0jYgdN6ygzKcgFXAPME?=
 =?iso-8859-1?Q?l1xZ8PKHaujbvrIB7LIbJFRQb6wkkVEEbfHVbdsGA6zLfdlIWz2E/MXDe7?=
 =?iso-8859-1?Q?5sahGkRwqzNQOsvwpW/ZIlF7XVkKziJIDfPULzwYfxhvOH2pH6xNgLu8YD?=
 =?iso-8859-1?Q?HnujAicxTgKUCN+1wNKmaTEOsq4JyAF2KIuDBXCI4Wed4GupQ5nSqltrSe?=
 =?iso-8859-1?Q?JNcdxgL+NRYYM6wgGMtrTY1WhrTltsUyC5dtpe4B60giVwRsBOgug7enfx?=
 =?iso-8859-1?Q?2hpw0pfiD1jT+V6ZEHHcKFSyO1jGBn91KBg5qiNhpqcyAt5ysuDJzPwaeg?=
 =?iso-8859-1?Q?FIWJ8RzVRQ82jT63dmLns2fclPfqYCNGfZ82bPoCYYfmVLokZyre3SvGiv?=
 =?iso-8859-1?Q?tHR12+lONG0hMLfdy2e3N4VEGFC/VK73yJbFn0/kd21Sgtf9BGEf9Q3tIx?=
 =?iso-8859-1?Q?e6q/ByGp4Ok9QNRGF40neaMAS5Sojz6xH7Afg2kcFOGTI33WSvMInmgwlZ?=
 =?iso-8859-1?Q?BvP+CS0YcOx2CNQU1HGhxBrgTFcaLdLEi/kwXinIarIHqZKSRCB7881NEe?=
 =?iso-8859-1?Q?NzXj1l7phxDhrrC2fwTN3Fc+fx0m3tdltzyOhEhbzvvxipDOT3/Yu3sfts?=
 =?iso-8859-1?Q?pOqPOhwibZRrqIR/+aORa/O6tcwCCg3HFaU+u77NEh73bnZz7qIVCRckBO?=
 =?iso-8859-1?Q?9CYIttp4qvcnnsU1mY1gUVd4DZIlb5h3nEhBJtyLLzWeZy7q6PBHWivwx2?=
 =?iso-8859-1?Q?QBSkVxGfRP0NovH0KEgJl67QXFk2CqXxdVkMZ8rSr7paSZrDG7cFm8gTRh?=
 =?iso-8859-1?Q?UeL2gT2/zSeRV4Mms5e3bU5pfpwF+AljszlHNIb7tMTTfAVhurpFpUqkve?=
 =?iso-8859-1?Q?UNcf+7qfxEGIMA62YoyxWCoq12ae8uXfvZMFuxuWGPqA4ki+kZXq7fbQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66e5ba77-a0fa-4f52-b700-08dcce8662d0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2024 15:12:56.2608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fTheeMKmrP/NaSnkC0NmfZHwdIuwsUvaLF8h9gWj2H/8Pi89I7pZUDz9ocsW9vT6pSACvQu9RNAog7zvoxmpMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7502
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

On Fri, Sep 06, 2024 at 05:33:04PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> struct intel_display will replace struct drm_i915_private as
> the main thing for display code. Convert the VGA code to
> use it (as much as possible at this stage).
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   | 11 ++---
>  .../i915/display/intel_display_power_well.c   |  6 ++-
>  drivers/gpu/drm/i915/display/intel_vga.c      | 45 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_vga.h      | 14 +++---
>  drivers/gpu/drm/i915/i915_suspend.c           |  3 +-
>  5 files changed, 43 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 434e52f450ff..f8da72af2107 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -221,7 +221,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  
>  	intel_bios_init(display);
>  
> -	ret = intel_vga_register(i915);
> +	ret = intel_vga_register(display);
>  	if (ret)
>  		goto cleanup_bios;
>  
> @@ -275,7 +275,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  	intel_dmc_fini(i915);
>  	intel_power_domains_driver_remove(i915);
>  cleanup_vga:
> -	intel_vga_unregister(i915);
> +	intel_vga_unregister(display);
>  cleanup_bios:
>  	intel_bios_driver_remove(display);
>  
> @@ -458,7 +458,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  	intel_hti_init(display);
>  
>  	/* Just disable it once at startup */
> -	intel_vga_disable(i915);
> +	intel_vga_disable(display);
>  	intel_setup_outputs(i915);
>  
>  	ret = intel_dp_tunnel_mgr_init(display);
> @@ -625,7 +625,7 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
>  
>  	intel_power_domains_driver_remove(i915);
>  
> -	intel_vga_unregister(i915);
> +	intel_vga_unregister(display);
>  
>  	intel_bios_driver_remove(display);
>  }
> @@ -683,12 +683,13 @@ __intel_display_driver_resume(struct drm_i915_private *i915,
>  			      struct drm_atomic_state *state,
>  			      struct drm_modeset_acquire_ctx *ctx)
>  {
> +	struct intel_display *display = &i915->display;
>  	struct drm_crtc_state *crtc_state;
>  	struct drm_crtc *crtc;
>  	int ret, i;
>  
>  	intel_modeset_setup_hw_state(i915, ctx);
> -	intel_vga_redisable(i915);
> +	intel_vga_redisable(display);
>  
>  	if (!state)
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 1f0084ca6248..a5d9b17e03a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -187,8 +187,10 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
>  static void hsw_power_well_post_enable(struct drm_i915_private *dev_priv,
>  				       u8 irq_pipe_mask, bool has_vga)
>  {
> +	struct intel_display *display = &dev_priv->display;

I was going to say that it would be probably good to replace the function argument..

> +
>  	if (has_vga)
> -		intel_vga_reset_io_mem(dev_priv);
> +		intel_vga_reset_io_mem(display);
>  
>  	if (irq_pipe_mask)
>  		gen8_irq_power_well_post_enable(dev_priv, irq_pipe_mask);

but then I noticed it is still used internally...

but anyway, I believe it is already a step towards the right direction and we replace
the inner cases as we go...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> @@ -1248,7 +1250,7 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
>  			intel_crt_reset(&encoder->base);
>  	}
>  
> -	intel_vga_redisable_power_on(dev_priv);
> +	intel_vga_redisable_power_on(display);
>  
>  	intel_pps_unlock_regs_wa(display);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
> index 0b5916c15307..2c76a0176a35 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -14,24 +14,26 @@
>  #include "intel_de.h"
>  #include "intel_vga.h"
>  
> -static i915_reg_t intel_vga_cntrl_reg(struct drm_i915_private *i915)
> +static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
>  	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>  		return VLV_VGACNTRL;
> -	else if (DISPLAY_VER(i915) >= 5)
> +	else if (DISPLAY_VER(display) >= 5)
>  		return CPU_VGACNTRL;
>  	else
>  		return VGACNTRL;
>  }
>  
>  /* Disable the VGA plane that we never use */
> -void intel_vga_disable(struct drm_i915_private *dev_priv)
> +void intel_vga_disable(struct intel_display *display)
>  {
> -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> -	i915_reg_t vga_reg = intel_vga_cntrl_reg(dev_priv);
> +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> +	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
>  	u8 sr1;
>  
> -	if (intel_de_read(dev_priv, vga_reg) & VGA_DISP_DISABLE)
> +	if (intel_de_read(display, vga_reg) & VGA_DISP_DISABLE)
>  		return;
>  
>  	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
> @@ -42,23 +44,24 @@ void intel_vga_disable(struct drm_i915_private *dev_priv)
>  	vga_put(pdev, VGA_RSRC_LEGACY_IO);
>  	udelay(300);
>  
> -	intel_de_write(dev_priv, vga_reg, VGA_DISP_DISABLE);
> -	intel_de_posting_read(dev_priv, vga_reg);
> +	intel_de_write(display, vga_reg, VGA_DISP_DISABLE);
> +	intel_de_posting_read(display, vga_reg);
>  }
>  
> -void intel_vga_redisable_power_on(struct drm_i915_private *dev_priv)
> +void intel_vga_redisable_power_on(struct intel_display *display)
>  {
> -	i915_reg_t vga_reg = intel_vga_cntrl_reg(dev_priv);
> +	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
>  
> -	if (!(intel_de_read(dev_priv, vga_reg) & VGA_DISP_DISABLE)) {
> -		drm_dbg_kms(&dev_priv->drm,
> +	if (!(intel_de_read(display, vga_reg) & VGA_DISP_DISABLE)) {
> +		drm_dbg_kms(display->drm,
>  			    "Something enabled VGA plane, disabling it\n");
> -		intel_vga_disable(dev_priv);
> +		intel_vga_disable(display);
>  	}
>  }
>  
> -void intel_vga_redisable(struct drm_i915_private *i915)
> +void intel_vga_redisable(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	intel_wakeref_t wakeref;
>  
>  	/*
> @@ -74,14 +77,14 @@ void intel_vga_redisable(struct drm_i915_private *i915)
>  	if (!wakeref)
>  		return;
>  
> -	intel_vga_redisable_power_on(i915);
> +	intel_vga_redisable_power_on(display);
>  
>  	intel_display_power_put(i915, POWER_DOMAIN_VGA, wakeref);
>  }
>  
> -void intel_vga_reset_io_mem(struct drm_i915_private *i915)
> +void intel_vga_reset_io_mem(struct intel_display *display)
>  {
> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
>  
>  	/*
>  	 * After we re-enable the power well, if we touch VGA register 0x3d5
> @@ -98,10 +101,10 @@ void intel_vga_reset_io_mem(struct drm_i915_private *i915)
>  	vga_put(pdev, VGA_RSRC_LEGACY_IO);
>  }
>  
> -int intel_vga_register(struct drm_i915_private *i915)
> +int intel_vga_register(struct intel_display *display)
>  {
>  
> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
>  	int ret;
>  
>  	/*
> @@ -119,9 +122,9 @@ int intel_vga_register(struct drm_i915_private *i915)
>  	return 0;
>  }
>  
> -void intel_vga_unregister(struct drm_i915_private *i915)
> +void intel_vga_unregister(struct intel_display *display)
>  {
> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
>  
>  	vga_client_unregister(pdev);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.h b/drivers/gpu/drm/i915/display/intel_vga.h
> index ba5b55b917f0..824dfc32a199 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.h
> +++ b/drivers/gpu/drm/i915/display/intel_vga.h
> @@ -6,13 +6,13 @@
>  #ifndef __INTEL_VGA_H__
>  #define __INTEL_VGA_H__
>  
> -struct drm_i915_private;
> +struct intel_display;
>  
> -void intel_vga_reset_io_mem(struct drm_i915_private *i915);
> -void intel_vga_disable(struct drm_i915_private *i915);
> -void intel_vga_redisable(struct drm_i915_private *i915);
> -void intel_vga_redisable_power_on(struct drm_i915_private *i915);
> -int intel_vga_register(struct drm_i915_private *i915);
> -void intel_vga_unregister(struct drm_i915_private *i915);
> +void intel_vga_reset_io_mem(struct intel_display *display);
> +void intel_vga_disable(struct intel_display *display);
> +void intel_vga_redisable(struct intel_display *display);
> +void intel_vga_redisable_power_on(struct intel_display *display);
> +int intel_vga_register(struct intel_display *display);
> +void intel_vga_unregister(struct intel_display *display);
>  
>  #endif /* __INTEL_VGA_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
> index f8373a461f17..9d3d9b983032 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -118,6 +118,7 @@ void i915_save_display(struct drm_i915_private *dev_priv)
>  
>  void i915_restore_display(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display = &dev_priv->display;
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  
>  	if (!HAS_DISPLAY(dev_priv))
> @@ -134,7 +135,7 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
>  		intel_de_write(dev_priv, DSPARB(dev_priv),
>  			       dev_priv->regfile.saveDSPARB);
>  
> -	intel_vga_redisable(dev_priv);
> +	intel_vga_redisable(display);
>  
>  	intel_gmbus_reset(dev_priv);
>  }
> -- 
> 2.44.2
> 

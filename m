Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B2C96E0ED
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 19:15:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A3A710E923;
	Thu,  5 Sep 2024 17:15:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="An3Y08OM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75EBB10E92A;
 Thu,  5 Sep 2024 17:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725556500; x=1757092500;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tRkB/1J5KTS8psI1hxdKEn+6vVr4LjjyMklfodmXgCg=;
 b=An3Y08OMh2Ubn602X7PI9Y8B+ZiRqA/9fn8bwU+NdehC5YwWLabkdgKh
 TsffrT/DxuPvk6NTE4yCDlUTqS93+1QuX0c3o0fRj6Hkura/iYGcOLiqL
 U7LV6zi/WkfpqzLYSZsR5YzYP2kY083Fpx05VOOPjenO/sy404+fZEher
 dQKoTkyA9EdtTpasj0MgJpQiMNBPYRAhF2N0AKAEhrWbpa1ChT3WkGaiZ
 cRSeJ/XYuU6n+ofWJGLcmJYHJKO2+3WHRBXlrEepWZfbUsxANZ54yRcW8
 mEmE/s34T2afupBtjmEbTwOPGnUvedooU+CLWyN23dvThvbw+buGLhNbt Q==;
X-CSE-ConnectionGUID: b+sKU1M/SqGR2+63+9OjhQ==
X-CSE-MsgGUID: 7XXiGDjyRaG54HHKR2aMmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="23847086"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="23847086"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 10:14:59 -0700
X-CSE-ConnectionGUID: jzIDQIcfSliYRxUS0pDA+A==
X-CSE-MsgGUID: rcBdgwqOQN6J64WyUPGsRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="96427848"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 10:14:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 10:14:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 10:14:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 10:14:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 10:14:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nFIWtIjb7bhq9MARFcYu0YKBt2PafEobPQhp1ZuwoEs46gs3pVBvPt0ZMnGw2WbCNRLZcZUPILBQXolTat+XH+CGvfdOXq54YZ0XkvOdbFJigKpFIMdMWWhvG/7Hg9rCwz+B32kPJmCqtFFXXvZGCMY4awL6Fdg48zQfg1XCk0VIKws3lxLEQr2R61tw67wIgVP7eLeRmK7xtJbNbCFCZ6t1l7OFoAg4ffGJE+4HO4dy5NnIPKXvzJoKsMopToSW6axS+TrwzB+IpQinh9tWORxiIt/wOlbGjAL1EfCm+WVX68HwqASX334pki4Q8MxUD1AuFEVGwB/m6tIYeYb8Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6GAQn/61G8aVAUeUgzzHhghCfLMELYWBxX69YDeCOKA=;
 b=frGl0rGZQlMp+iqhuE6xpcitZrpWER7HJIKHWo2AdrrJs78yUK9NZVcxYXihQEnhymbZ+LrRP8dTHkJ0fLV3zgBWfd3EqD3SdSEIoe9kun6MwbzDLQfNmE87v8sgyYRZsh57yGpqhw7g6EN/CYGFP/xsjopkwB7fCzldjUvn8GLAxz+QNvhac8bF4uvcC7sAEr8xk8TwT2DWGaBadeNDG/hRVhZ+HTsftbvK4JqRxwfFN855JTYP25gBAy/eFLwfIxb5CREjddrFgBUx96EexK6JQYytHNnNiO1Cq1VSwsQWnfGgZNyvB7bAY/Q3w4fvrNCgVeLW6tbrUOO0KW9GGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB7610.namprd11.prod.outlook.com (2603:10b6:806:31d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 17:14:55 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 17:14:55 +0000
Date: Thu, 5 Sep 2024 13:14:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/pciids: use designated initializers in
 INTEL_VGA_DEVICE()
Message-ID: <ZtnnDNFjC2WTt5u4@intel.com>
References: <cover.1725443418.git.jani.nikula@intel.com>
 <ce15f8f2a6b672155f9728c8e6a5f49d33fafd24.1725443418.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ce15f8f2a6b672155f9728c8e6a5f49d33fafd24.1725443418.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR05CA0018.namprd05.prod.outlook.com
 (2603:10b6:303:2b::23) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB7610:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b0c0cb6-e0b4-4cba-1434-08dccdce4300
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MRHmd5hpBBajS0CdEjl0+hzX7s48Scz6B9iHLb+mo5iFSHOQ9yXooAJA4Lbm?=
 =?us-ascii?Q?UwNt8+fLWSi9X5aiOCLbBzMAFNMg5Hbr/qAlVsCVw/ytG4lsoCwuomM2WhBd?=
 =?us-ascii?Q?MtzFOUCKjFpydgmoqqWBzIfTKu9yRFYKsdV+dGKMP4JwOXQunDmSoek9XpTo?=
 =?us-ascii?Q?lnsw4oFKYbBBWjXbB87cv8dMH7otPn8Wl/zieJ56a8CYXpezbSVeIEoR6azC?=
 =?us-ascii?Q?4TC5dkoGn4Y0rEUq/S2w7wRN5H/tcxlCQ4vgJeV7r6CfaThKmfOf6pOwIlbN?=
 =?us-ascii?Q?tpbuDFkcSuB0Yt9aHGUdcwS1tWF0R8FqpGerHPVHlTLvj/5HA3rQCTDl8gdW?=
 =?us-ascii?Q?R+A/xBzKPYWhz1T62kvXai5NAMozWJj8eDoqUg10C4aez6BFkTaBfCz2ov4Q?=
 =?us-ascii?Q?1+9qhdFCFT7OC7APPvCD9WQRIwRD283NedERcjlhq9BZxO4Bi+SWs13fDyI5?=
 =?us-ascii?Q?vrkhvjTRDSflEW2Hjd/jHOQydLzoamfqTQhSGoqZ+Kxw1KdTzbrRQlXQK0u6?=
 =?us-ascii?Q?SDD20AspSW5L5BdmcV/e6RT/JeeuYEDWiceYQa2XUiXQNTkTMZ66km2zyKbv?=
 =?us-ascii?Q?gGPkDm8yh4lYJ/Vlv7pLXtBxzz4y4E18jlpxHByvEF7wTaBvQUkYmFihQyyv?=
 =?us-ascii?Q?2wHDUuNdfgoasDqk9JDacrbakeQUQgJxvdPpmlVrdXbVw/0P2q0TrEHyyiN2?=
 =?us-ascii?Q?1vO8TX/nRVgHkSbd2tBk6NcaghMR54m0THc1LNlvd1N0eCzPc3Ex3/sBqrwt?=
 =?us-ascii?Q?gtJ2LOUfuL0/8Rrh27xyYvD0st4ZRRWvEsVucqDPqEH1ntZpUrt/armcbOkE?=
 =?us-ascii?Q?C7l2MYp1CS67nOxQk8Nf3+ghZor4moDMuTcjsUpHj7/LwP05YzRpUX4fAZvY?=
 =?us-ascii?Q?7qPwpn+L3gTM1ghiRBBWiCrlEL24E9fC+5OTm5zMZf6eZOX+5chiUQSZMLPU?=
 =?us-ascii?Q?Uli90LMIebzycBvMTG1gyMCRNjS7z/eiOMVelcEF7tpqO2LcuxtB423ZFQTl?=
 =?us-ascii?Q?yUIUXEbZ+hCwWXaOg+JDpeuSM5GEvzBlVL4pvcMTLbKU9KsstHApVUHz5mCP?=
 =?us-ascii?Q?DnMn3Ie7C1/+/cNyVqvFIum6iwjNFls9ZG5y19tDNZQwHAPTraRo92TnNFwf?=
 =?us-ascii?Q?SD26Oc6ZyNpG7EHl/hNV7f0/IZNihZ/92+XnLfA8GsJjAyQJSfGy8TZ6aPiF?=
 =?us-ascii?Q?aiobbY2GoSZTE9GuRW1GHkrNz/m7G4D0kpY5kMqqFu+uqBFjN4XrmGc/uXIS?=
 =?us-ascii?Q?ktFGpdIEQvZa8IdRXcXIdds5N6vlX5a8Pni6Et6w5nkXaPnstCm6yBfnrTSv?=
 =?us-ascii?Q?Kkk8gvj0DE9unckqD2taonLdb4zBHxYh20KqmkPLS9MPDXDUybrQNZPmxJbV?=
 =?us-ascii?Q?Dzafy8M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d17haOeTK4js73NR2pVPkB9Ig4Mbx8TrggmaC9lLF6IwCJa1uDWNOat67B0g?=
 =?us-ascii?Q?uj27WM4cI4TNHVWKg5jkySioNYhjLvj/b4sE+eyDR8fo1qROy5tpxKPAKLzS?=
 =?us-ascii?Q?DHEtsLhxOCWSfJ1bFGwgUF3zgNF1hSgsqXrMkn1Dr0rXWRXJPsyZUQxP7o7k?=
 =?us-ascii?Q?wdMCa2gBRSSRFJEk/HJP+L+F2VE1uApUyLAnWJ0YAHeOej9/YP9EPeICSLTU?=
 =?us-ascii?Q?LO1MOdXVj8WV8P9weQmFd2XOgTDuSIkyZo+pAAGKKJlnB0YdmZPsCnQfIBlf?=
 =?us-ascii?Q?zLJCkEEBjeZe81erN7e7k4WST8dxDH0a/v7VfL7XYyIaIA6v0c2OawtN46HE?=
 =?us-ascii?Q?W3a5unMIAV7drRN/0j12/9ERqeD+e5rpafFkunmbASw+XqK7fAIuRz9Kg7UQ?=
 =?us-ascii?Q?QI+prmhjKQfgO/HJ8GSs9HtZqlbeE/WTmGzBBSLv3FEtwmkoCgp/wL8PaVhc?=
 =?us-ascii?Q?1w9v2RN/zaznv9E/Lke8NvuWAueQRYoKXaQ0UE2xwMzkTLV5Oswp5i+PSXSN?=
 =?us-ascii?Q?O2aefllYyDvcPZH7F0OFbyLoymzuzPZp5gyP59atg61wubj1SFTBlKNIAswI?=
 =?us-ascii?Q?hHuO6uFcynIClU2Gi4LGpK3e6nKLKuH32NXHoqWOeSoPlREvJPi8PWJP+tbl?=
 =?us-ascii?Q?tv83TzBtQmZMKoPgX3ExLowLIODHTXJ9+6bOuwsLA+BmDpQY7SexxYoRiWV/?=
 =?us-ascii?Q?sf/XpLFnPG3twnYOnshf7BJIOB+RMogSjJhjWK7t4rEy75rQsSow/tBRHzSo?=
 =?us-ascii?Q?sijLbj/gGD4x3of3FZfogbP3bcK/Zb/5knsJ53kiGr8rVqAdd7a+X/qXmac/?=
 =?us-ascii?Q?Unl+8cDDsUth6to3GA76yEn0tm1MUkDhzG0jDmLSk+OAhe90j7yX2Xg1djOP?=
 =?us-ascii?Q?gzOoFC69s43ExoTM0llW1bK9IGkBfzqw4NuSnZFp653MsN6VSvUoMWLHh+y+?=
 =?us-ascii?Q?MLt7n9d3LgFnMAR4mJRrexTPJ+HZmVKk+NLNGLAFmWBQYpDVt7QyfnJ5Yst4?=
 =?us-ascii?Q?UhbTeocDXZj0gBr6fw8G822hCxOemm5iKtLu6ch+cEVZbosLQ6qZARRfU2Wp?=
 =?us-ascii?Q?jcZsExdpeb8gvgtJrD9yPlPV23n8+xZ5oVsug23gPYL/OaZdThDDVcmiCuGS?=
 =?us-ascii?Q?L4Zt1XT+CSiP0Ba1eEYJJCy3l08PVf7lH7wuMw7Eb1IOPHNBkSqxPIvBg2Qr?=
 =?us-ascii?Q?t+lnzGCg+Cm3eoEPPJK4NspFyNSlmXYviyzbWwmAXUsoG4aMl+FKUUctNUUW?=
 =?us-ascii?Q?8hJ1qjjxKm6XGuJIMXHD8Nl+ZEeU47BeusYhqFOxiUKgAZlxTFymEOKUAsE1?=
 =?us-ascii?Q?6ZKTnp0Uc64owafRBWzUxPEWzcAuRPRwSeHP+HMj/c+DjRFdzbUPUm9XMyr3?=
 =?us-ascii?Q?QYwWKEFEuOspCS+Y0UT6kd4XntqUmUPDuxTYc+8ig7QYocHnxIZxMA8/irKO?=
 =?us-ascii?Q?i6c72Emkzhlxeeg63+aGAoEIX/9Df44WnnHE1WbRonJvyL6MPNL4GgCkqweR?=
 =?us-ascii?Q?Xaf6LXUOXkGp5mm/4VI4/bhDc2tvl5JCHlYR8gwsFpp7MVrXpeUIiZwkEQaG?=
 =?us-ascii?Q?YQ+hbvastuiMhPu9adoGnIMHPjaTWyAtIzjD9VJ3pEIjDrGny/S43GQHZP4c?=
 =?us-ascii?Q?AQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b0c0cb6-e0b4-4cba-1434-08dccdce4300
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 17:14:55.5821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P2v7CJZXvmT0F/2I7WG+cZkhIbojWkux1Xiyzt+bcDIoaMi6lfyv6AGYmSa128/sZEZtsgxdXR1PV5+Uug4qyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7610
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

On Wed, Sep 04, 2024 at 12:51:32PM +0300, Jani Nikula wrote:
> With IGT no longer using INTEL_VGA_DEVICE(), we can make it kernel
> specific and use designated initializers. Ditto for
> INTEL_QUANTA_VGA_DEVICE(). Remove the superfluous comments while at it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> IGT INTEL_VGA_DEVICE removal:
> 
> https://lore.kernel.org/r/20240902134907.2186238-2-jani.nikula@intel.com


I guess that if someone else is still using this directly like IGT was,
then they will have to adjust when the sync with this header like this,
so:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> ---
>  include/drm/intel/i915_pciids.h | 35 +++++++++++++--------------------
>  1 file changed, 14 insertions(+), 21 deletions(-)
> 
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
> index 2bf03ebfcf73..6a78df5687c5 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/i915_pciids.h
> @@ -25,27 +25,20 @@
>  #ifndef _I915_PCIIDS_H
>  #define _I915_PCIIDS_H
>  
> -/*
> - * A pci_device_id struct {
> - *	__u32 vendor, device;
> - *      __u32 subvendor, subdevice;
> - *	__u32 class, class_mask;
> - *	kernel_ulong_t driver_data;
> - * };
> - * Don't use C99 here because "class" is reserved and we want to
> - * give userspace flexibility.
> - */
> -#define INTEL_VGA_DEVICE(id, info) { \
> -	0x8086,	id, \
> -	~0, ~0, \
> -	0x030000, 0xff0000, \
> -	(unsigned long) info }
> -
> -#define INTEL_QUANTA_VGA_DEVICE(info) { \
> -	0x8086,	0x16a, \
> -	0x152d,	0x8990, \
> -	0x030000, 0xff0000, \
> -	(unsigned long) info }
> +#ifdef __KERNEL__
> +#define INTEL_VGA_DEVICE(_id, _info) { \
> +	PCI_DEVICE(PCI_VENDOR_ID_INTEL, (_id)), \
> +	.class = PCI_BASE_CLASS_DISPLAY << 16, .class_mask = 0xff << 16, \
> +	.driver_data = (kernel_ulong_t)(_info), \
> +}
> +
> +#define INTEL_QUANTA_VGA_DEVICE(_info) { \
> +	.vendor = PCI_VENDOR_ID_INTEL, .device = 0x16a, \
> +	.subvendor = 0x152d, .subdevice = 0x8990, \
> +	.class = PCI_BASE_CLASS_DISPLAY << 16, .class_mask = 0xff << 16, \
> +	.driver_data = (kernel_ulong_t)(_info), \
> +}
> +#endif
>  
>  #define INTEL_I810_IDS(MACRO__, ...) \
>  	MACRO__(0x7121, ## __VA_ARGS__), /* I810 */ \
> -- 
> 2.39.2
> 

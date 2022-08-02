Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A6E5875F1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 05:26:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B08AF11A275;
	Tue,  2 Aug 2022 03:26:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E54C11A275
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 03:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659410773; x=1690946773;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=FciP/DJL/+ew1eUJATynYN6xJwjDnG8JxzKZD5Gm8jo=;
 b=hA/ZoOTMsFZPQQckRRq423nRwKkVJU0KHy4zbudk0YbNOUrlDNrRRhWT
 kg9dm5aDhYveCrPixxFArPQq+1TaTQkHjqmguxEpqJ/RVHfp/G6JrMUeH
 isb4eXmbWN0FoijzfcScL4iuNHktS/3Ec9L7B0YRMYSOxvh7ft2GkgbLs
 1C9bs97juyJfU5GIBmXMe/ncH/6P74agCmUOBG4j6MztEUzu9570vKMpX
 gWy1kJ9Jes2Rjak1vaQnKro7euRzYh1Fd8ZkdATDvUjESMedKDkmfvnWY
 nsuJ/THzVSr45oUQA62/26bGmHv//zPQGDTUtK4J4Gp4B7DnvvbnQpHmd Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="351018963"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="351018963"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 20:26:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="661443807"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 01 Aug 2022 20:26:12 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 20:26:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 20:26:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 20:26:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FD3YIbZKl/vZ+0T9KA7azjh4ckbWQuua+ZK0G0fqKtHHbCq0ak7rh1HJE/ZQHC23XMuDLmcJD0zYxDQoplfG56XgUnUNLwu39uADolsX0wz9orr1tLoAKgaOErHKp+3u/brpNbNm7PbOUGLBj6hfL2BI1tmU95yeg/pjVrUFSgbJ1c/z1kRPjEQ4V+N8/7XvcsPWqciKnr8vjWFjuEPp1M5Mr68uW4ccU1VJSMqo677uzl0zzQJscmauf+I4MFJdNbHmGoCpWDxfDsVLx9r0bTSEueev3gD+6Mhb5lHDkvwlEp0e5aTux7Aet6FvUq6uZeV3yMqfsGIXlD3c+8SNXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p/f5dk5KJgbHjrKf+yEyBKHnq2k6B5p/I3gqC2dAqMc=;
 b=WvC7U/NNVyxiivNFKXhU1tcwBvgFucTr41X6Nf1RcKukDuApl65cHzgN3WcwWmRhuqo9QNu5RXBFITGwrZLIkB14GDsKVwRSEgBlXmGppoP/cRcCS04f8F9XiiExTj0qLD5nYdzxPZcFX8syyOG6tIq8y3P/TJ/2m7f19VjPBRndXZXjQZrGuY25lP75SXXA23T/C1NuivlnkNa6zMm/WppndqlDGtBMELNJvjA1bDO8mxIZl8I/T23IjsibSb86D0THV3x3C2MoZHbyvW5L1+YmUWw2/vMdsjkGzxcbjBJgBAsmomz9APpzHs7SdC/FLk/6OijGDSbq6125/gOQzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CH0PR11MB5329.namprd11.prod.outlook.com (2603:10b6:610:bc::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Tue, 2 Aug
 2022 03:26:10 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 03:26:10 +0000
Date: Mon, 1 Aug 2022 20:26:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YuiZShox68X3mxBF@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR04CA0035.namprd04.prod.outlook.com
 (2603:10b6:a03:40::48) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc8b58e0-5447-49d7-322b-08da7436be89
X-MS-TrafficTypeDiagnostic: CH0PR11MB5329:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZuY7DH2z3mC8rM4v3JyXvBom3pNtghCmktHcSceGlXcN0PxmpOLlW8t8axYQgWACfu3Ed/eOQGlxm3ule/8nLBcWqqXlnrfmj2RnUflCMFoWkWoqCGm7MBhx9BjGP7VE91cvObb9o9lCmjN3uHMUYrZ7GOh/Vp4zBACxZaGoTWI/LZLL1Tv5V+1MA2U6mta9Bc3JOVI5pTt63obk/DiFv5K8B1Haal7wHYlF56JNIIGfrxPZuN8mqmoFSIEcAKVsW7iU/QV8yxVaeu66+aKzXsHKKF94OkrGaiZgERrl5A7O/ftGkiZF3blWxHJZtVEDUakt+xrElP7OwoGz0htg6FVOv3k8wZLiggBACphpNK6/vrinS1oCCuM75ICgb72V0PrwI529auNZfcLV0E34uoXGMoSfIturr1czFaNUcgTExtcQxYCyDTbF/VZCJ73CYXHqrWy7MlWUvL8H2PUIfwCpJubTvg6ZGzCHu1Um6HQzeu6FpUkzMTFJtczrXUN/o05VLWKCLEosq3DWsbgByxts4n7YrnQY8u4gA08pCcIa7bylr4ZtdXGVHXamILRa7rnGFQmXahb2BTH9cspuC8i4TT7XF3E9zQV2mSlN5E5XXzE4jAQfA90vMHFPZgKg6JlMjCLQqq82C93RzLaSY2T0lf9CwlSbdCArcUk6Dh82koxgp+qvBoeHP5dXT1+idnHFFAJTSVXgvEQovI2h1TaQu3HFE5Da3LmDTMAv0gl2tRcsWf1TrWDfmPAXd8C2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(396003)(39860400002)(376002)(346002)(5660300002)(2906002)(83380400001)(82960400001)(8676002)(4326008)(66476007)(66556008)(66946007)(8936002)(6862004)(6636002)(316002)(478600001)(6486002)(86362001)(26005)(38100700002)(6506007)(6666004)(6512007)(41300700001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?N1Rnggs39sdi2n7OnMhzqkaxKs3c7uIjfC3AABzkeM9zVM6tSc9cR0maEY?=
 =?iso-8859-1?Q?/GGN1n9+BRXRYEeGGVEEI2EXUy1M7r2H2rM8z/inhg3YLTOzGz5ZOkylHu?=
 =?iso-8859-1?Q?EGcpAypgdHTwZxqPMXIbhVFrCF/WA/qvy1PScqbv4e1fe2xi9EEzKlPh3a?=
 =?iso-8859-1?Q?p7nMwASxoT2ZKkMSnNgp06cImAponyWlPICrfm+fKw81SsAN+vmV8UwkjL?=
 =?iso-8859-1?Q?z3GRJyKdllM90PPN5myBRhwOBQZ76saQXES4PurA9S8yefPB+3QyS1JeUZ?=
 =?iso-8859-1?Q?9KfoUigfWbO726VAh5vBS8825CwNcA9TUC1kz5TXb5CwTnLXvas6r57k44?=
 =?iso-8859-1?Q?8I9YAa4aumAh3hJh+PB18VpSy7QWBUA4dZxsxuttvjy+YRUKyfr9svtGkA?=
 =?iso-8859-1?Q?wxbzCamzORNddy7lgD4nKM2yIDoVXVnSo9axdfcS+EcnKYU20lyCCnaVB/?=
 =?iso-8859-1?Q?Df2/r+Ri+Z9cMK/KRZN/hx4L+jH3cK7FyFHOPTmkLR7ZlnKjosRYKlG1vO?=
 =?iso-8859-1?Q?nMu+nr/agY1ITtwaMOqzQhdZz1eJpdIVJPLDFL/Jo3kibJ/b4+6sIZ0RKT?=
 =?iso-8859-1?Q?+7MvpaR3vFpAebWU+eyKPFWmd0ydjY2y62Y1NYm+zTa/M+Y3f4YPS4SyX9?=
 =?iso-8859-1?Q?3+AN8x1uarAatlH8hc2X6GPpyDOy0NjAaBT88A87as4q/STLDBLGfZYGzt?=
 =?iso-8859-1?Q?WKFjiwJS/+XnZxIftsipFf1OSiSW8+A5hJs2hey0VvAWB9N3nR99FFSwv5?=
 =?iso-8859-1?Q?3zGO9Vrljp7Iy8KCDrYro3W3OyCSNBaGzJmPFe3SGjdcS6XAtKUF8lxzHS?=
 =?iso-8859-1?Q?fJ+eOPvr6T/7IK6kj2aMsuXsI5adJeSSGrgtboDvXNQ3UYOJFGrlrSrMTU?=
 =?iso-8859-1?Q?HPu5Vo7xG0UyrB/X3gJMBOBLacXTQDtiWOvZmhEW8Gx9k1V4nxz6pkR9jh?=
 =?iso-8859-1?Q?yzDzfKkn3zgX3/8x3A2px3v+9CHzdQqdQcFjFVc2sRKLphpzahPqEzc8Nb?=
 =?iso-8859-1?Q?O14mh+vpvpHHHfnNrywHDR0dbTqJN/U0LbN1VhsbiuNaQ37PNxO5lSJkeg?=
 =?iso-8859-1?Q?uD8oOCa8TguAq+Z1OENfH5axGRWmBLH9r9XluoJgB6yorr4TEy/jsA5FFM?=
 =?iso-8859-1?Q?6BhmartUUL92FnjgKPcmMjypqgZEaITrkpdSUavgKcDpmPMCLVgi/F4Gq9?=
 =?iso-8859-1?Q?TKPujrGF6kTy7F/10Zf5wnqhoBy07x+KvVEwXZgcOUPaO4t6seM2WX4VMT?=
 =?iso-8859-1?Q?czmm+8QnEvNTiJ62fdaar52xFRNnXyimfrUhCkh2wVJaAlYOBXt8XBkdHx?=
 =?iso-8859-1?Q?Jg3SxvQdP+4IBFKQQlLyc9iVmcsNecgWnmeFeTjVBgHttN2OsFVc9U8E2Y?=
 =?iso-8859-1?Q?VeE/PBFMZ116bAL9pF9fmRwft/sKZ912tzeKE0oDYYPuhwrd9t0nXXSJN0?=
 =?iso-8859-1?Q?62XmRqs7ge2e8mk7znX+v3yAomQbbjucp92xXJcBZKSCcgNpB9FZHKpsgI?=
 =?iso-8859-1?Q?NC3hv4kZN/15XR/CJDyOxceUO5GV0jwjUJ8iC9SKSfbhrGhJdI1DexnxiG?=
 =?iso-8859-1?Q?cel2rLcf9EYVd5ef1755e0rMteEvgh4ZqXt79/MfpMLQVBSziF1qPR9HeE?=
 =?iso-8859-1?Q?uv70DvsbBOEapnJOd9s2+5AOJdQHKOhdIoidaYqpIx77l9aZzvAuK+TQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc8b58e0-5447-49d7-322b-08da7436be89
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 03:26:10.2095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fd+84FP/msreaCSpjgfsSdm9k3aS3lyrWkC2KYhphsuQOTN351qwbhvy+P2PPtKhQr4CVgvALUGeJJLFcJCpXVgbpnl/ztKNngKzT1eulmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5329
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/23] Initial Meteorlake Support
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 27, 2022 at 06:33:57PM -0700, Radhakrishna Sripada wrote:
> The PCI Id's and platform definition are posted earlier.
> This series adds handful of early enablement patches including
> support for display power wells, VBT and AUX Channel mapping,
> PCH and gmbus support, dbus, mbus, sagv and memory bandwidth support.
> 
> This series also add the support for a new way to read Graphics,
> Media and Display versions. 

One general note on the series --- most of the patches that weren't
authored by you appear to be missing your s-o-b line.  Make sure you add
that when you resend and/or push the patches.


Matt

> 
> Anusha Srivatsa (2):
>   drm/i915/mtl: Add CDCLK Support
>   drm/i915/dmc: MTL DMC debugfs entries
> 
> Clint Taylor (1):
>   drm/i915/mtl: Fix rawclk for Meteorlake PCH
> 
> Imre Deak (3):
>   drm/i915/mtl: Add VBT port and AUX_CH mapping
>   drm/i915/mtl: Add display power wells
>   drm/i915/mtl: Add DP AUX support on TypeC ports
> 
> José Roberto de Souza (2):
>   drm/i915: Parse and set stepping for platforms with GMD
>   drm/i915/display/mtl: Extend MBUS programming
> 
> Madhumitha Tolakanahalli Pradeep (2):
>   drm/i915/dmc: Load DMC on MTL
>   drm/i915/mtl: Update CHICKEN_TRANS* register addresses
> 
> Matt Roper (4):
>   drm/i915: Read graphics/media/display arch version from hw
>   drm/i915/mtl: MMIO range is now 4MB
>   drm/i915/mtl: Don't mask off CCS according to DSS fusing
>   drm/i915/mtl: Define engine context layouts
> 
> Radhakrishna Sripada (9):
>   drm/i915/mtl: Add PCH support
>   drm/i915/mtl: Add gmbus and gpio support
>   drm/i915/mtl: Add support for MTL in Display Init sequences
>   drm/i915/mtl: memory latency data from LATENCY_LPX_LPY for WM
>   drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox
>   drm/i915/mtl: Update memory bandwidth parameters
>   drm/i915/mtl: Update MBUS_DBOX credits
>   drm/i915/mtl: DBUF handling is same as adlp
>   drm/i915/mtl: Do not update GV point, mask value
> 
>  drivers/gpu/drm/i915/display/intel_bios.c     |  14 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |  87 ++++-
>  drivers/gpu/drm/i915/display/intel_bw.h       |   9 +
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 351 ++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   7 +-
>  .../drm/i915/display/intel_display_power.c    |   5 +-
>  .../i915/display/intel_display_power_map.c    | 115 +++++-
>  .../i915/display/intel_display_power_well.c   |  43 +++
>  .../i915/display/intel_display_power_well.h   |   4 +
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  19 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  53 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |  17 +
>  drivers/gpu/drm/i915/display/intel_gmbus.h    |   1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      |   6 +-
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   2 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  47 ++-
>  drivers/gpu/drm/i915/i915_driver.c            |  85 ++++-
>  drivers/gpu/drm/i915/i915_drv.h               |  18 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   1 +
>  drivers/gpu/drm/i915/i915_reg.h               |  91 ++++-
>  drivers/gpu/drm/i915/intel_device_info.c      |  32 +-
>  drivers/gpu/drm/i915/intel_device_info.h      |  14 +
>  drivers/gpu/drm/i915/intel_dram.c             |  41 +-
>  drivers/gpu/drm/i915/intel_pch.c              |   9 +-
>  drivers/gpu/drm/i915/intel_pch.h              |   4 +
>  drivers/gpu/drm/i915/intel_pm.c               | 180 ++++++---
>  drivers/gpu/drm/i915/intel_step.c             |  60 +++
>  drivers/gpu/drm/i915/intel_uncore.c           |  11 +-
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |   1 +
>  32 files changed, 1178 insertions(+), 155 deletions(-)
> 
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation

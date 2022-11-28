Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F2C63B322
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 21:27:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61EFA10E33A;
	Mon, 28 Nov 2022 20:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 204F010E33A
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 20:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669667273; x=1701203273;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rorkplHjS8JIjauwTtbQy1WQISAg6WFmQTh6oACVjWI=;
 b=k955GCZiNIY21TCfNjRzbDyXCxQx01REZmLdhP/ge9zxesHV/LIVnnZc
 11wPJQ74yhzLt6MCXlCFdQcFacCFiIVgT9Pv2umA3TUd0xCTCuty34UXD
 MHqvvy8/LuzxKiVClPQXYO11GWvtPwnDV9Z3pup7WRGOINwKPIlUdia/k
 +OArHsP2tKXQFTZDf0raaW6PXwUNZXjZmadruS7lz0/Jp2sVAJcUN3Ad8
 g/mt2MUwOQbCCX2do4zBOsQjz6/TV7bfWIif328J+Sxr9bwwIJlNkEllT
 m5Q0xnnghOerQvIUVrquPUiGEn8xyu8opuAvFjTFZl0xQ9FauLShRwjGo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="379203641"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="379203641"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 12:27:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="706933418"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="706933418"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 28 Nov 2022 12:27:47 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 12:27:47 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 12:27:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 12:27:47 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 12:27:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XZx8axL6e/GPNzoD0o0WQBFEyIAJjSaXjfGSPKpp6MCluxf2SQCEGsxDvIK/RPKQA7NuHCKqmxDtVCmGdFtcRIjtYeBCc5IqnpQOCp8g/cbeE/ptcMyGQvlrjG8zuRLbEYDw0WO/dIQhj5n6bW+5hSURwwSEkrfDOzTYYIsuUJnKiNl1Bv1r6gGvTKAd6eFsP5HIezFnCd+kWxFlG3mMYF38rZVReOoYGCC6n9Qz79WrevI3BWxdd4BnSlAQ2ol0LlFsSh4Ik/HHtBDrZdp3h1UsnYiDd9WMzH7lIn8qZMcFQQBjQqUURCK4DqLmSrPbvx39llNVkPU2LnkyoJbOcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=THMDLuKZxCWB/kXNWChE9X1jAIy3EXI5tq+GuMaVn6s=;
 b=IfZl5ha63vnAzvN28Iz9yOXafJs9SMc08ccgqQOMacXYL+q+lgvBiR5ogJ81eqcEW/T/JtIzvHInta0TliP1jrHjBqy3Gh09scI7aMcnIUI0c6Hp+cYj2iXpowcLOBmlsXFes+nSvL+LwiZ41FHnqj1JUm2r5n/BwVr6mcT56Tckad/012JweFqz9V6ONREALVX0Vcw+j/YY07ZeU1mwDdYR7obCcrrIlMeQ0OhdvlGFYkbIpmV2YBHy++isZRAJGK1GyGeslurmSZBmJg2b9Jm9JCzVo30hWtXUAgJdZk6qvCQwCCDpyvCldWDoFp/G0R6QLcSkFUi7GBFCWZ/Krw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB5802.namprd11.prod.outlook.com (2603:10b6:806:235::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.20; Mon, 28 Nov
 2022 20:27:45 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5857.022; Mon, 28 Nov 2022
 20:27:45 +0000
Date: Mon, 28 Nov 2022 12:27:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Message-ID: <20221128202743.zf2ro6ay67bxwjxa@ldmartin-desk2.lan>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <e65f3bc9dc0f90bc95bd529d2822568ac596be28.1669629369.git.aravind.iddamsetty@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <e65f3bc9dc0f90bc95bd529d2822568ac596be28.1669629369.git.aravind.iddamsetty@intel.com>
X-ClientProxiedBy: BYAPR01CA0044.prod.exchangelabs.com (2603:10b6:a03:94::21)
 To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB5802:EE_
X-MS-Office365-Filtering-Correlation-Id: 885361f4-77a0-4878-56e7-08dad17f01ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iqMjcEIc9GpAJ73tW37aorCJd1Kp9at8W+nEy9ZXq32nRKxG7p2NdtL2i11jJT2bYmGlNI7/nkA0XRfWkP1GXvFmGKmRdZrh2NYP9wDhY2f+9yhEkvBJr2M0GWjan6udUt2WgnwzUYJsagRXs24IN9kq2lE009/OCVFxSEWhJLOEcpNAE4j3Y6QDWyVL4tET089YIiGF1XCty4NQAFiYcLya9aUm6XPHoa9RKLP1374l4KJ1KSx565yiMr2NK7O1+5zMwCoPpqZGixnI4R+nVAZC4lrIPscCWTCDUzNmTK5Cx6Yz6TLfU/wjoMG86IIE1oKtK76Rol64xmF2Sur8Y0e8w8gvj9/ZBULRXzPBF/8+5uA290QyuYZkV+T824PMzIRlcwhToDjMvf+RR9TOec3r5HRb6+YOSPMy4EjHGRE58RAJ9fRG2Be2rEw4RQHltQ4hI/DC5+TNI2NWVPZuIpzSG4SPeXg6B5mhAQ6M1Sy62IuvNEUH81yx5h6iMvOHmPrI+v/as0QMfahlc+6RQGityEHhS2z8v1jdYfnd3ojLt0GHUHXmjDyLn3+IbU+LHtTk+a/82P3y/aVOaphmAP4H+wH7+M0aaSoOttcyzuzEm6fVzR0SU9x6Fh8jM2faKDvA5iRwWxtwESMA/Us4TA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(136003)(346002)(376002)(366004)(451199015)(6486002)(66556008)(6506007)(86362001)(107886003)(478600001)(4326008)(9686003)(8676002)(316002)(36756003)(6862004)(41300700001)(1076003)(6636002)(54906003)(186003)(26005)(5660300002)(2906002)(83380400001)(8936002)(66946007)(38100700002)(82960400001)(6512007)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zEHW9AhsafM1ishsTe6vXKAeKzCjPNzaUQL8kOINZWVXH2zBuwc84g+XNkOK?=
 =?us-ascii?Q?tdktKs5GLtC/+aDUVU/42dIiL4W7kLARGhACspIKZ0FEb5Ue5pzDeZXikzL4?=
 =?us-ascii?Q?i4xLbr8KG0YvFqOoOd7nhmQOkc2ni7NjVSytFMHbniF6uuWRGeV137jArCz/?=
 =?us-ascii?Q?IbeHw6DkgR5tFbt7XSRoBmjDvx6q64f3fhEHKRn5bW0wDHlz96w0i0uSzTL/?=
 =?us-ascii?Q?9PhKgsgzNarctJslZax0906p22hnCi2tXrZvksjlFt/jx4FvKtMcPk8h0KJK?=
 =?us-ascii?Q?K/vgvQfmoa68x60GLJpFMIU9a5FR0vdxhnRQ6nnoR8ISBUjilI8GulTx9B0K?=
 =?us-ascii?Q?GOzyP9mPtdf3J+SY3uA7gt7Y0ak118f0CPKCeaR6oeIc2E++FZymp2pCrnp7?=
 =?us-ascii?Q?fsCT93SH0LRmInQ/IgV7CJvRSgweW4NUVPuHxBaRUx8KINjXqbST40khX+c0?=
 =?us-ascii?Q?KcXBCsEzKal3375NHHNAFpSpHpxIP6/F6W+DxdvhzWD5/s0SEppeY5QkWfTC?=
 =?us-ascii?Q?voNf9va5ytE2xd8sviBPCRYXRJGX5dZBOcNSKYHKQbKKPVyPu960CPTHH7eI?=
 =?us-ascii?Q?6NF7b0O5ye/0TfJzVeZAfABy6mqQK3m2KlxyGD5982UgBcE0kqTSGwUyqI6F?=
 =?us-ascii?Q?y891oVW/m9BXYwjIcCfJYB3LlpftKdp9XO6txRCh8KYJVVgouHpUTRIIWiEs?=
 =?us-ascii?Q?+5oCMuFOACUctobaHGAgOuXLoz+HAeYv1ck273eQ8avQz8R3ViHl7LAz29Rh?=
 =?us-ascii?Q?b4gCL64iqDXDtR/vvYLkj0M+0vcaAhI7L3O1Kyc33jirghEloqkUtMXEn8V4?=
 =?us-ascii?Q?PnTe2vkKRuBBXcvgvx2lC7mJpWSADhVO+ARfEFv5+/Pze/AACGjT2aC7TJyJ?=
 =?us-ascii?Q?L+qwqbltgNnywzEsq8/iTlRFa0CyK2NMRBp6CTjNu87aKbiwpVgDA6SRzBWA?=
 =?us-ascii?Q?Kue9N4WvtpvBEW8DIYBPTdrko5mZnzrlsX7wZtk6ALyGKY8trHYFp1Z3cRqP?=
 =?us-ascii?Q?YaW1wuTTULUQ6iASSH4r2IWwW/y00jVnJnaJpbsuUsrZDeGfQKa//SEhBoV/?=
 =?us-ascii?Q?nALGjKxPUPhqJ+95SPNaXj+HZU2Na0FZiqIXFgJ5ZI2YXEgsinSu9ylMDHT5?=
 =?us-ascii?Q?qq73sLoY8TmiycJ2VlYaIvLR3Tx57BOzLvgsfMdMjs0hlfPsKh105oL59YZG?=
 =?us-ascii?Q?iJU2OWhqD0o1mEwA0bPZkRPxO2QeD2sLpE5oVbLcxso0T6zSFmD6xDVs0Wjw?=
 =?us-ascii?Q?zZ05vVE5pguuoeAjk8tf230zoeijNvlh6CXvQnfjEJgzP+H34tRMeJHWMyo6?=
 =?us-ascii?Q?AJnQbQuKs0ppdtiR6+0gKCyzUVMOT2m+tX0uerE9SQx9tkNksvk6Kb10FQbQ?=
 =?us-ascii?Q?P4l9t66S16iC886iTO+ulyLiLvW7k1PcrDSfxc44dfBX966hCsvfo4KDnKYF?=
 =?us-ascii?Q?i6VSUZeVqpcjAuPpXFkixsi+mVkINEvWQ1//xLw2W0hdJELVgc8EejfoPReK?=
 =?us-ascii?Q?dDZmhDb0dcJ7W2YQTpBAHSb0bUdRLbY0KrtnYrDVJ4UQfjUbQtSSpfqrJ/g/?=
 =?us-ascii?Q?3PyYrSIdh0K6B26nlMxDQgnmPoKStccxZ40DF/0E1ilmFiyBxTB8pMFNZQF2?=
 =?us-ascii?Q?Ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 885361f4-77a0-4878-56e7-08dad17f01ff
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2022 20:27:45.2159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0In4xYt1MATXx2mRatP/LOx9gP2ntMdOygfGk16LUkl96b0k//U0lewFFUwmwQR0QxWZVOq6Eo733umkgQ75C8Vjg0Q7/ggSmmp0KsHtgVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5802
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/mtl: Define new PTE encode for
 MTL
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

On Mon, Nov 28, 2022 at 03:43:51PM +0530, Aravind Iddamsetty wrote:
>Add a separate PTE encode function for MTL. The number of PAT registers
>have increased to 16 on MTL. All 16 PAT registers are available for
>PPGTT mapped pages, but only the lower 4 are available for GGTT mapped
>pages.

this would be easier to review with a preparatory patch, replacing
direct calls to gen8_pte_encode() and gen8_ggtt_pte_encode() with the
indirect ones through vm.

Then the patch on top adding MTL would be the definition of the new
encoding (mtl_pte_encode/mtl_ggtt_pte_encode) and assigning the function
pointer.


Lucas De Marchi

>
>BSPEC: 63884
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Co-developed-by: Fei Yang <fei.yang@intel.com>
>Signed-off-by: Fei Yang <fei.yang@intel.com>
>Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dpt.c |  2 +-
> drivers/gpu/drm/i915/gt/gen8_ppgtt.c     | 43 ++++++++++++++++++++----
> drivers/gpu/drm/i915/gt/gen8_ppgtt.h     |  4 +++
> drivers/gpu/drm/i915/gt/intel_ggtt.c     | 36 ++++++++++++++++++--
> drivers/gpu/drm/i915/gt/intel_gtt.h      | 13 +++++--
> 5 files changed, 86 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
>index ad1a37b515fb..cb8ed9bfb240 100644
>--- a/drivers/gpu/drm/i915/display/intel_dpt.c
>+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>@@ -298,7 +298,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
> 	vm->vma_ops.bind_vma    = dpt_bind_vma;
> 	vm->vma_ops.unbind_vma  = dpt_unbind_vma;
>
>-	vm->pte_encode = gen8_ggtt_pte_encode;
>+	vm->pte_encode = vm->gt->ggtt->vm.pte_encode;
>
> 	dpt->obj = dpt_obj;
>
>diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>index 4daaa6f55668..4197b43150cc 100644
>--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>@@ -55,6 +55,34 @@ static u64 gen8_pte_encode(dma_addr_t addr,
> 	return pte;
> }
>
>+static u64 mtl_pte_encode(dma_addr_t addr,
>+			  enum i915_cache_level level,
>+			  u32 flags)
>+{
>+	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
>+
>+	if (unlikely(flags & PTE_READ_ONLY))
>+		pte &= ~GEN8_PAGE_RW;
>+
>+	if (flags & PTE_LM)
>+		pte |= GEN12_PPGTT_PTE_LM | GEN12_PPGTT_PTE_NC;
>+
>+	switch (level) {
>+	case I915_CACHE_NONE:
>+		pte |= GEN12_PPGTT_PTE_PAT1;
>+		break;
>+	case I915_CACHE_LLC:
>+	case I915_CACHE_L3_LLC:
>+		pte |= GEN12_PPGTT_PTE_PAT0 | GEN12_PPGTT_PTE_PAT1;
>+		break;
>+	case I915_CACHE_WT:
>+		pte |= GEN12_PPGTT_PTE_PAT0;
>+		break;
>+	}
>+
>+	return pte;
>+}
>+
> static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
> {
> 	struct drm_i915_private *i915 = ppgtt->vm.i915;
>@@ -427,7 +455,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
> 		      u32 flags)
> {
> 	struct i915_page_directory *pd;
>-	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
>+	const gen8_pte_t pte_encode = ppgtt->vm.pte_encode(0, cache_level, flags);
> 	gen8_pte_t *vaddr;
>
> 	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
>@@ -580,7 +608,7 @@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
> 				   enum i915_cache_level cache_level,
> 				   u32 flags)
> {
>-	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
>+	const gen8_pte_t pte_encode = vm->pte_encode(0, cache_level, flags);
> 	unsigned int rem = sg_dma_len(iter->sg);
> 	u64 start = vma_res->start;
>
>@@ -743,7 +771,7 @@ static void gen8_ppgtt_insert_entry(struct i915_address_space *vm,
> 	GEM_BUG_ON(pt->is_compact);
>
> 	vaddr = px_vaddr(pt);
>-	vaddr[gen8_pd_index(idx, 0)] = gen8_pte_encode(addr, level, flags);
>+	vaddr[gen8_pd_index(idx, 0)] = vm->pte_encode(addr, level, flags);
> 	drm_clflush_virt_range(&vaddr[gen8_pd_index(idx, 0)], sizeof(*vaddr));
> }
>
>@@ -773,7 +801,7 @@ static void __xehpsdv_ppgtt_insert_entry_lm(struct i915_address_space *vm,
> 	}
>
> 	vaddr = px_vaddr(pt);
>-	vaddr[gen8_pd_index(idx, 0) / 16] = gen8_pte_encode(addr, level, flags);
>+	vaddr[gen8_pd_index(idx, 0) / 16] = vm->pte_encode(addr, level, flags);
> }
>
> static void xehpsdv_ppgtt_insert_entry(struct i915_address_space *vm,
>@@ -820,7 +848,7 @@ static int gen8_init_scratch(struct i915_address_space *vm)
> 		pte_flags |= PTE_LM;
>
> 	vm->scratch[0]->encode =
>-		gen8_pte_encode(px_dma(vm->scratch[0]),
>+		vm->pte_encode(px_dma(vm->scratch[0]),
> 				I915_CACHE_NONE, pte_flags);
>
> 	for (i = 1; i <= vm->top; i++) {
>@@ -963,7 +991,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
> 	 */
> 	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
>
>-	ppgtt->vm.pte_encode = gen8_pte_encode;
>+	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
>+		ppgtt->vm.pte_encode = mtl_pte_encode;
>+	else
>+		ppgtt->vm.pte_encode = gen8_pte_encode;
>
> 	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
> 	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
>diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>index f541d19264b4..c48f1fc32909 100644
>--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>@@ -19,4 +19,8 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> 			 enum i915_cache_level level,
> 			 u32 flags);
>
>+u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>+			enum i915_cache_level level,
>+			u32 flags);
>+
> #endif
>diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>index 8145851ad23d..ffe910694ca0 100644
>--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>@@ -237,6 +237,33 @@ static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
> 		intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> }
>
>+u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>+			enum i915_cache_level level,
>+			u32 flags)
>+{
>+	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT;
>+
>+	GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);
>+
>+	if (flags & PTE_LM)
>+		pte |= GEN12_GGTT_PTE_LM;
>+
>+	switch (level) {
>+	case I915_CACHE_NONE:
>+		pte |= MTL_GGTT_PTE_PAT1;
>+		break;
>+	case I915_CACHE_LLC:
>+	case I915_CACHE_L3_LLC:
>+		pte |= MTL_GGTT_PTE_PAT0 | MTL_GGTT_PTE_PAT1;
>+		break;
>+	case I915_CACHE_WT:
>+		pte |= MTL_GGTT_PTE_PAT0;
>+		break;
>+	}
>+
>+	return pte;
>+}
>+
> u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> 			 enum i915_cache_level level,
> 			 u32 flags)
>@@ -264,7 +291,7 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
> 	gen8_pte_t __iomem *pte =
> 		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>
>-	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>+	gen8_set_pte(pte, ggtt->vm.pte_encode(addr, level, flags));
>
> 	ggtt->invalidate(ggtt);
> }
>@@ -274,8 +301,8 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
> 				     enum i915_cache_level level,
> 				     u32 flags)
> {
>-	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
> 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>+	const gen8_pte_t pte_encode = ggtt->vm.pte_encode(0, level, flags);
> 	gen8_pte_t __iomem *gte;
> 	gen8_pte_t __iomem *end;
> 	struct sgt_iter iter;
>@@ -984,7 +1011,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
> 	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
> 	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>
>-	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>+		ggtt->vm.pte_encode = mtl_ggtt_pte_encode;
>+	else
>+		ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>
> 	setup_private_pat(ggtt->vm.gt);
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>index 43bf9188ffef..450ed0541d0f 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>@@ -88,9 +88,18 @@ typedef u64 gen8_pte_t;
> #define BYT_PTE_SNOOPED_BY_CPU_CACHES	REG_BIT(2)
> #define BYT_PTE_WRITEABLE		REG_BIT(1)
>
>+#define GEN12_PPGTT_PTE_PAT3    BIT_ULL(62)
> #define GEN12_PPGTT_PTE_LM	BIT_ULL(11)
>-
>-#define GEN12_GGTT_PTE_LM	BIT_ULL(1)
>+#define GEN12_PPGTT_PTE_PAT2    BIT_ULL(7)
>+#define GEN12_PPGTT_PTE_NC      BIT_ULL(5)
>+#define GEN12_PPGTT_PTE_PAT1    BIT_ULL(4)
>+#define GEN12_PPGTT_PTE_PAT0    BIT_ULL(3)
>+
>+#define GEN12_GGTT_PTE_LM		BIT_ULL(1)
>+#define MTL_GGTT_PTE_PAT0		BIT_ULL(52)
>+#define MTL_GGTT_PTE_PAT1		BIT_ULL(53)
>+#define GEN12_GGTT_PTE_ADDR_MASK	GENMASK_ULL(45, 12)
>+#define MTL_GGTT_PTE_PAT_MASK		GENMASK_ULL(53, 52)
>
> #define GEN12_PDE_64K BIT(6)
> #define GEN12_PTE_PS64 BIT(8)
>-- 
>2.25.1
>

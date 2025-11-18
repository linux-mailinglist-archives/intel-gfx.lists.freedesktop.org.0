Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E08C69684
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 13:35:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F2010E495;
	Tue, 18 Nov 2025 12:35:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="nia4zgvS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011017.outbound.protection.outlook.com [40.107.208.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD21610E495;
 Tue, 18 Nov 2025 12:35:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PkaRQlC25YAFFxFNTb4EIZiLWd2WCHnDeTSshq96TjGCMox2gVLay6cG7BGwAKZO2PG8OY0P0n+6k7ihUxRRxpFwXBtowust3zDhkf4EMCsXW4LgyboLCPB0n8VvnixvZ+Neojlc0GscjD1/8uCkUC7HgJ+UM7qvX+8YOR0oc7fNz4vcXyvGO5/6DNSsyKtl8+8PqaPnzoaYMuXXgto/4TqbKMyMemoRcIdE7Y2H1fi4x7aNLoGQ0CC3h3wVN5AgEPrxSdNuGd/GEsWr4LlJljHWN3RydJZBSowuVftvHa6Owv5zWwVzTKC4kiMMgRUfxkaJHYUJVuiHsQEOJ6WNug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GgkBknRLVKwLpHzpkZuVmbXvaulTaJqlffrrsV6qh6s=;
 b=rlWbFhB099evgjrXArmrcCQY8iOozMxNLNM/2p2/F+rBHbzNoQBMGOo3klmXB8pU0w97iSF953FUN6I84j1gNG+YBFuP9ZBRG9jNW32q4hYzYvzXvIWRyXvA0uNaLQXUYVjreLCvyNg/upr4eGXFM+3BrAnMtVls2+lc4eOM0C/xWZ2i1K4DRkGTXwnno7Npkw8cirSQgPDR8FktTLlQApwAXtL6GVJQoBKVxXv9FKFe775/3KiLsHX0uetzutf6O7jPjSc3UYWVcZin0XjbXCx/bC4n/NFufQFrRiX6nzQEKiRYBwXnV2zzaM/bfDE+u83P82Y81Obc5fD4uNthXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GgkBknRLVKwLpHzpkZuVmbXvaulTaJqlffrrsV6qh6s=;
 b=nia4zgvSuFWb6NwOsWG3nek+bgdKUpikbyTzB+teuFY485+znLSOqUP7SAeLL/O5tdtwF6+KmQMIRxSp4ckNh++4+A98t4BhIq6qBDctmehVRtoeLMn9Ynf+B5uy5SNY9Nn7vcQAJLaLSb0wT7vK6NYPZFQ00K+5uQjCuth8fdkdytaOznWOTy0TYTqzLS1FZhsi9V38DbbUbyTbMzzzAhy3IA+ly0lk6F8OkxhjE9zpyv9eSRMXiiMAHHswmQw8NV9NZbEJ9KK60dJpNeWtB/GwOyeY0P/koQuvoLrOdsfWS46r0X5LAwv/ARn4uVtLDKwawutsu/aVtCGLYjD/NQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by DS4PR12MB9633.namprd12.prod.outlook.com (2603:10b6:8:27f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Tue, 18 Nov
 2025 12:35:14 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 12:35:14 +0000
Date: Tue, 18 Nov 2025 08:35:13 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Baolu Lu <baolu.lu@linux.intel.com>
Cc: "Tian, Kevin" <kevin.tian@intel.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: Re: REGRESSION on linux-next (next-20251106)
Message-ID: <20251118123513.GJ10864@nvidia.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <BN9PR11MB5276C5F6D952CFFEC7CBF0D68CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <5ec170fa-d5e1-473d-a7b8-8d1737efb241@linux.intel.com>
 <BN9PR11MB5276323D350AEB5C5C3308228CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <1843821d-c3ca-480d-909c-2331521f6932@linux.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1843821d-c3ca-480d-909c-2331521f6932@linux.intel.com>
X-ClientProxiedBy: BL1PR13CA0350.namprd13.prod.outlook.com
 (2603:10b6:208:2c6::25) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|DS4PR12MB9633:EE_
X-MS-Office365-Filtering-Correlation-Id: a31114e6-7847-483f-6598-08de269eec3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PnbckI5aQMn3vPrjmstKKS0NlylSvM2ahn7FchHsFUPTa0dpsuTW8jcH2nZa?=
 =?us-ascii?Q?XHSV3yVKQoDZSMZzKEnjGh5izSSC7/ijc2c74yAIuust7dVpNfFUW90JibWL?=
 =?us-ascii?Q?8tcgKopYgmOCQONW2KLmtSg/Q1PJQFrBwF8ZJnIJA/HG7R+atuhrvE88oo6G?=
 =?us-ascii?Q?xZkJLtP1zRd+nDpqU+QEU/z+rZOzk0rA8ZS1gxcF5RiS1gwKrz8+BaRkIoeI?=
 =?us-ascii?Q?Jx2ZBb8wTHa/peFId+se0Vs5Ac7gluP00/1xct5XK1qNfjtCANOuPwL0BcH0?=
 =?us-ascii?Q?RHE6zvfoGurg1kZrgw/DlHZeT/gjQO6KEOll+kWbpYW8v8S5N3grYDncEFVm?=
 =?us-ascii?Q?7208ThVY7Cm5kxbXdGH2ArwxlKeo1e5ihiTljHjvuAv0r7PRw99yisIq//2R?=
 =?us-ascii?Q?CyHzUTXzu28N4pmrq27/zn9RdG98w4IeLc15HGXMl/07hhJcA0AWNdSIzv3+?=
 =?us-ascii?Q?BaueUnwZNYD+ypadyGE2ccSuk3jWu2hzdRhkgx51oYifv91okCdoYqJzCcGO?=
 =?us-ascii?Q?+Pxc3bib5JRKDI/IxCJA9KWMP9X7MhP2W8zyhnHMDm6kudqL9Mdx958j7/Ng?=
 =?us-ascii?Q?Gr8TinkPyU5DddRX6yLFG1Kmzi63ZZetJg+y1aXlEpohOqWEzxSPIAq2ObpG?=
 =?us-ascii?Q?y9aWomr7Rp+otrHyQxkMtfelf3BBvJmp+7FQyvGVxc2hQPg6W6ME46+wdFCy?=
 =?us-ascii?Q?LU1GyC3X6L7wkNpPpPIMqJUHKADFDnfPXKkzT9BRLTzrwV0YrUc061Bcknzd?=
 =?us-ascii?Q?KoGLZOw9Wx4YQ3Nk/YZ8WoMWpZd+Ax/wawQXreSSxr/2DjDSwj6RpIp0RND2?=
 =?us-ascii?Q?f2vFWrL3TjronE7kmu3jlljV8mgXLq6o7HIdEfNSRTpNv7Lwq1ooSu+Om+5b?=
 =?us-ascii?Q?/Zmu3KfgK5/t1w2YR+xTHbTc10zLTKygp0ghiTZ2NZt1qH6asCuWPnM1ZVNP?=
 =?us-ascii?Q?e9OsmKC/1iV8bJ+Dcnoff1L5eXQ/KdEYuzb5QKCqXCQLpz7Y+Wozup7H7UP4?=
 =?us-ascii?Q?K+iGBkRfYWg/Afc0IQOSY4jcjEnhn3RYBEplGJvLod+CCJWNSQYkVqysCW1Z?=
 =?us-ascii?Q?3UZo/9ZVIbktK6K5v/j9s4VUFQRq3ST2sDWboHZX2EkgUcToKHMe2HdUnaAf?=
 =?us-ascii?Q?LUh/h0MslpDaTKtZHBYSl3vcolJ5cxziOEr+W54yRtvD+rP87w8GlJ9jM6bA?=
 =?us-ascii?Q?ua/bxNtBg7LsMz8SturZy319Y2u6KOgIvtk4FGTdnR9GsRotgqCi+XiwoahS?=
 =?us-ascii?Q?jxAX3uNIa8RLhPakFIxnDTJiymaffXZ7gto0BEJtgROkvmaz1gE5ica/sHem?=
 =?us-ascii?Q?tRflJogwRrpGqPgFFVQ28cc3gYC8hA4+nzeT9jY/Tm0IoylusM2WVwQWHqDb?=
 =?us-ascii?Q?5zfOLtORvXRMsHRerS/QVtGxjAVRUCPo/S9/UgGYo4qcZ9YptcZEsnb50vhj?=
 =?us-ascii?Q?ggcAs46owuecNCJmic//3I0BcwRFNYqt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3613.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1D2MuwOpyCgipPluf48SGUoCCGD4b2vXi7YmCsVkZyaQekXSOn5WtH0sqY1x?=
 =?us-ascii?Q?/aZ2cwbaVC7Cofj7vCPSiU2CYzAru5rFaIV3V4SXFE+hePV1QHH6LXtTjesT?=
 =?us-ascii?Q?vX0cH9S2wAo/vDVRH7qROW7zU1xAaMC+eRGae39bZdMqzxhC9NSLqNR09Q5k?=
 =?us-ascii?Q?c+LfwTNBX2jaajir3BEei18BbjqOEM2aXPtGJtup8aEZi8WyK9cw7eNZEBa5?=
 =?us-ascii?Q?CHqf2rpAsqYOMCrzBCfYZ2aGxI8+9ZO+QZ9OwvUTmHxxVvW1yTENZ06xS6H4?=
 =?us-ascii?Q?lriJLMFFowk7cQpZVwcoWuJmn6nFPD41RpFJDZTXUzYi5kilcKCc8Zimfq1q?=
 =?us-ascii?Q?gkgPaoOBdP6zw1UwZzlHA6KLR2gtaWZ+O4fUkMR9aKM+mvNDbHJIOt+639Ov?=
 =?us-ascii?Q?sJq4pFp4dser9/gvFRH9PfSwMkT5iCHlU+JkaCVwci1gv1xaVXUkaWtlOH/3?=
 =?us-ascii?Q?1d1Zhovl1lXlJUvJz2Szrg38d857SJ0x8Y4qkv6D8uVRw8VW21hs0m6De6OX?=
 =?us-ascii?Q?F7thBWz/I1rfO1+7wFXcw/4LUOy7rKtw6VJSMHTw2H4wBWdAjqkq5zw/4+dO?=
 =?us-ascii?Q?MO2kGBuQ4WJkzPMLhrRc2nN/ww1pLS11zmVgJqT3xV6kv16EtC2p5lruTADT?=
 =?us-ascii?Q?iubYehTiq8TkEWzRX4IncK9e/KQ828KtxasWrujm3y/dYWntnY4FDu2CaBFG?=
 =?us-ascii?Q?W8cdyTpngBLxderCskMWg6ZALmpxu1dWdpScGypM9YDHH61l52/WhduBqz+E?=
 =?us-ascii?Q?618ZWzXrjK1jZXOHQDSf16sHJewcNGufZjDibsSiPW/Kl//0Ms1uAXvRrB2E?=
 =?us-ascii?Q?yShZPp7b5kQDHRORgyn5IrhMQpoITCwPH0L/5yo4ly+hz60tNu7pgutNJbqH?=
 =?us-ascii?Q?vMvgW7VOiQtvbhMxju39i+nZDYj1qvWTXJaiQ02oOmQzCmgwBN6QN4/tU6pt?=
 =?us-ascii?Q?39dBqMApmgYYltFdN4ARcMunO+uCx2e/MdmLqCG7P8l70bwoEALgF3HB/3Vv?=
 =?us-ascii?Q?0VIgY62lttfXsDTePwoAqMNblMkLXt1eg2G9lQN/RSPKbGUufjWxkJahMl7N?=
 =?us-ascii?Q?Wh4DWJTCaCN6/3Y0gaVSLksyErrE+WBk3KE6cbmEp9GIOj0PgwhBCajdfnL4?=
 =?us-ascii?Q?9yMxXoooIg8WrfK4CjEbT8slwkC7DMB3nvSNEvlF+ZBZ7qLS87I2PMAG/XUE?=
 =?us-ascii?Q?UV6bUa8rXaUxoRZ4+rEeVxE52cdK2ptDFf5BcjaHCVFE742r9M9i5k3iFgDT?=
 =?us-ascii?Q?vJOUzy/dnXtO6tWck5lB63WUL0FPjDNzg01of71HH1mP9z1Tqvan9ZtY1ty4?=
 =?us-ascii?Q?sQkzAXQ7DLSZ4xOQ13YlMegdCs/NxvWQmWbKXIepa9T82qQMZ4VjMaMd3Es6?=
 =?us-ascii?Q?qwz5NIX0Zknv4ecY+vhDkMqcDpiYcYltFgt+QX9F9nEyoN+oap/7A4UDhnE6?=
 =?us-ascii?Q?n4rmZBAEYOOzvf/B7NuZSwOOYg5hacasLX5SvDVaFZ+oR+vFgcJV4oJPcdXf?=
 =?us-ascii?Q?nQaS64jKDiQwemnn+i4toRGybFWq865fUJin8Q+5i1/AohJyp1PvmSG5CZMP?=
 =?us-ascii?Q?Fdov0OAzFFCg2druYfA=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a31114e6-7847-483f-6598-08de269eec3e
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 12:35:14.5724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rQT8kQ6UAIoqUo/K7x/p+QNxvL4ZpVdHnWqfnGan3V80KJnczOYu0V8HHEo6/pDj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR12MB9633
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

On Tue, Nov 18, 2025 at 07:29:22PM +0800, Baolu Lu wrote:
> On 11/18/2025 3:47 PM, Tian, Kevin wrote:
> > > From: Baolu Lu <baolu.lu@linux.intel.com>
> > > Sent: Tuesday, November 18, 2025 2:24 PM
> > > 
> > > On 11/18/25 12:04, Tian, Kevin wrote:
> > > > > 46 bits is not particularly big... Hmm, I wonder if we have some issue
> > > > > with the sign-extend? iommupt does that properly and IIRC the old code
> > > > > did not. Which of the page table formats is this using second stage or
> > > > > first stage?
> > > > Assume it's first stage for kernel IOVA, if available in hw
> > > 
> > > It's the first stage (x86_64 fmt) according to the PASID entry setup:
> > > 
> > > IOMMU dmar0: Root Table Address: 0x105a82000
> > > B.D.F	Root_entry				Context_entry
> > > 		PASID	PASID_table_entry
> > > 00:02.0	0x0000000000000000:0x0000000105a85001
> > > 0x0000000000000000:0x0000000105a84405	0
> > > 0x0000000105a86000:0x0000000000000002:0x0000000000000049
> > > 
> > 
> > so the 3rd experiment (if the former two doesn't show difference) is
> > to force using second stage to see whether it's caused by the
> > sign-extend logic.
> 
> I hardcoded the driver to always use the second stage for paging domain
> translation, and it works now.
> 
> IOMMU dmar0: Root Table Address: 0x1049b6000
> B.D.F	Root_entry				Context_entry				PASID	PASID_table_entry
> 00:02.0	0x0000000000000000:0x00000001049ba001
> 0x0000000000000000:0x00000001049b9405	0
> 0x0000000000000000:0x0000000000000002:0x00000001049bb089

Okay, that is a great finding!

So either it is something about the sign extend or something about
x86_64. Given the similarity of vtdss all the code around cache/iotlb
flushing is the same so we can say that is working.

1) Can you run the test with CONFIG_DEBUG_GENERIC_PT=y? Lets see if
   pt_check_install_leaf_args() fails?

2) Lets try to disabling the sign extend function:

--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -2818,8 +2818,7 @@ intel_iommu_domain_alloc_first_stage(struct device *dev,
        else
                cfg.common.hw_max_vasz_lg2 = 48;
        cfg.common.hw_max_oasz_lg2 = 52;
-       cfg.common.features = BIT(PT_FEAT_SIGN_EXTEND) |
-                             BIT(PT_FEAT_FLUSH_RANGE);
+       cfg.common.features = BIT(PT_FEAT_FLUSH_RANGE);
        /* First stage always uses scalable mode */
        if (!ecap_smpwc(iommu->ecap))
                cfg.common.features |= BIT(PT_FEAT_DMA_INCOHERENT);

3) Let's validate the mapping:

--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -2572,6 +2572,21 @@ int iommu_map_nosync(struct iommu_domain *domain, unsigned long iova,
        else
                trace_map(orig_iova, orig_paddr, orig_size);
 
+       if (!ret) {
+               paddr = orig_paddr;
+               for (iova = orig_iova; iova < orig_iova + orig_size; iova += PAGE_SIZE) {
+                       phys_addr_t pt_paddr = ops->iova_to_phys(domain, iova);
+
+                       if (pt_paddr != paddr) {
+                               pr_warn("mapping: Bad physical storage %lx != %lx at %lx\n",
+                                       (unsigned long)paddr,
+                                       (unsigned long)pt_paddr, iova);
+                               break;
+                       }
+                       paddr += PAGE_SIZE;
+               }
+       }
+

  Maybe the physical is getting truncated for some reason?

4) Please collect the map/unmap traces, including the return code

Jason

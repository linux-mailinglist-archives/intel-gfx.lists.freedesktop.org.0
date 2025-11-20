Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C62CAC71CE2
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 03:18:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CEF10E0CD;
	Thu, 20 Nov 2025 02:18:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="GIOFb6+Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011016.outbound.protection.outlook.com
 [40.93.194.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4137010E0CD;
 Thu, 20 Nov 2025 02:18:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VFgT1eQ/zLM/+s6GA5sIunFWhDwl4tyx94oGTcF/98o5tQEzB0Rz01wsvTaYP8jUXmqPPkfMJK3tyxZtJqbxKP58rVWvXzKUjXcJMkB20bNRrButqDc2MvOeYPqnRhHfpTB2mnFVEJn6/bsryyeVr1LN0sIiZZIcyDG72YgQeICOVIH6o45ViVkjsVlJ6rRsO/IUZdtHb0YG5wiPE05p9fN15hpfGGryMmGM24/W8DYxkog8YTGfwxMwP1Nug8tWbQ1N9S4CkM+rOUwJeYo5SWLEHsv5W/xQfLJZg7ZoC+Ns2lVkboLdzIRG5WdDlwVkvsJPt1sCZzH3YdNWEFSyJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HkTQtPpOc91KrnLEJUAVw+ZKf60N7hkdnJN6ev4Ft2M=;
 b=SstL3d7CfV1eBSXdUh+tbNA4KLK1LdUxZ37fpswJt6+27RW+80dc6En+mYEmpYiZv4qik7JGoFdOvUfRobaetEmsJOkYF97DMq9Hxuq3DiUG70EWM6MMdeduiRpXncI7LTT0u7suqtE4HmZvpvpi24CMTVw/lkO/LvQNc5VsBhK+VnxbHNWfQ4JJRwDR5oSlKVj4knRhg4E89zPXlmqwU+3SThzoEZHC10lTF7AUbD3UEznNl2wSouh9w3EwJnelKr4mDZcSLxtSzkIXcSS2/fluwrajGGcUB1am6czTeWlsvPOjrvGDT7F4lh9PSRjjHgzEikJIHkQtwUNpPsfiDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HkTQtPpOc91KrnLEJUAVw+ZKf60N7hkdnJN6ev4Ft2M=;
 b=GIOFb6+YIcYnSZsKmgEh56lty/3raBcjye4NTAVq77Bai0UiyP974/LdgKOkN1HCzrwUShDpe46sEagbgnSdSG2Ardzwpoyi3DtY+HkVuKFzsguLY0rOtkIO8KUKbD+T2SfITlAbPuR/5QU+nwKmY8WsFY8VaEkzLJ8Blz92K+/mkSDERe+K6ZIC/4/spOwbLM8JmQYlH4AaJng+aWC3T88iL34jF1J8XFtDnR5F8hfs47MfckDAlaqYFXnJyLwjefQ5GPPndGe4vexGa+u4Utwg4y98U7o1VoHL/AJAci9u5cjMb953D23d7LqyLcL3wKqxUEw4rr3uJLSyLGDDdQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by DS0PR12MB9398.namprd12.prod.outlook.com (2603:10b6:8:1b3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 02:18:32 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 02:18:32 +0000
Date: Wed, 19 Nov 2025 22:18:31 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>,
 "baolu.lu@linux.intel.com" <baolu.lu@linux.intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: Re: REGRESSION on linux-next (next-20251106)
Message-ID: <20251120021831.GT120075@nvidia.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <a79fe616-52c7-4fa5-906c-382b5ff2226c@intel.com>
 <20251118161341.GC90703@nvidia.com>
 <0c3cd494-e42a-4607-896c-4c341f90c270@intel.com>
 <BN9PR11MB52760A6BE22F89D29685690F8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251119185119.GP120075@nvidia.com>
 <BN9PR11MB52764557ECAEF2200054070D8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BN9PR11MB52764557ECAEF2200054070D8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
X-ClientProxiedBy: MN0PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:208:52c::27) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|DS0PR12MB9398:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e4096db-4df8-4bbd-5c33-08de27db1a26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?19ECAcRryw+/u2odsBclD+dy5H0wkOU9IeZ7mXkqh3QrGcMAKSxm7hYZdpXJ?=
 =?us-ascii?Q?M4qubHn1bcjXmSGAdKv7nj0kMfD78eRr/zoZ+4I5jha/uDqcCMyEgKKL5IlO?=
 =?us-ascii?Q?MV8mddxZS7JzqTiKKZx17ryB90G0m/9Yks+mKhOOhBSZIlD9ovruZLsLKtkT?=
 =?us-ascii?Q?vD0xBdnecpUxj87yhKu37E/H1KaogsYrlcvO8HqeHwpvMjEJ6VxKDtJa4CKJ?=
 =?us-ascii?Q?9vP3x/0ealF9lV1JqbTtthYtJTpDmkQqpJLpo+tpu5KIyYfQtjuh7rEkWP/O?=
 =?us-ascii?Q?/VSF5r5HNgzjwXB2WgG02+fgal2LORXeJOcJOJD8rhCymdTkSZ8iCZHJrgGl?=
 =?us-ascii?Q?LOdRRI3+wQgjtZDz3FP1HsM+bqEoUb1w0Gty3d0KWhsmxbAcW1muJrchQ8TT?=
 =?us-ascii?Q?Q3AqSm9Jg3MCmYpCPiugFRPTTm3J2AZbKb2jqMObTGS1JBsuHl2mHrkzScoB?=
 =?us-ascii?Q?+bplT8dQtHBKACdpq+GDcVfmnTBCiP5SyD7KbQ1f9/aZTgBqnBc5+gxFNfeo?=
 =?us-ascii?Q?0Yiv3eV7dsR/gBBZOTyKDrq9cQ/xsVWB5ltkXueJ1BG/B0OvPaF1Vo171mW6?=
 =?us-ascii?Q?vR+8F2R0ivwKIFU4E+X+8FS56qBJwUsoxPFHyYKRbZ5KUobcAdOdKpDJxOM2?=
 =?us-ascii?Q?pPDxSh90AOlqC3XTZwOG/27LVzVvW6aPIc+6bPVyqIcM3q3uQZ+SbCIQWBwh?=
 =?us-ascii?Q?b9ojNTVtp/qnqG2vqvIIMc7p9f9wr5aOW05a2o/viXHG6ojvARS3xbv0SEy+?=
 =?us-ascii?Q?INCfcrmEiXRN2k9YcT69Pfi9Ltujw4a/xESDLZ4+OjOqQ5hFsLzPLjkT57S3?=
 =?us-ascii?Q?/NkN8xxItIUe4AbkEd5BoyKMT24Z/wPa2wMw9mvyoHcuhNHGJS3dj41V4msE?=
 =?us-ascii?Q?CQmCjn0ZKMkF2LsJYazfq5jDqamFRbJHxOzeapY4uxVS+DpOqgH+4b/QC9bQ?=
 =?us-ascii?Q?iHrTx0cKizUYLqB/EVnsVIaehE9zxNJEobG0wjKfNlD8uLVPvcGm3Bc6n2ib?=
 =?us-ascii?Q?mRMFWca6fDT+yPfbd89/Mf6pshq7Bt6pEDWMvVgBlGYSBlNw2vmrWU5ceORU?=
 =?us-ascii?Q?5kaWIQoJ22ibSPBWTnfe/2TI0jphLCT0WOYtx7dNDHKVc34xToxzLENOQCCk?=
 =?us-ascii?Q?ngTPBzKn5sW6YAvzQvsALmCC9L73Co+virOS2IKubiXc0szBHRAwtA8otrGh?=
 =?us-ascii?Q?5pVNVbcBuRR9HbCEMzzzE/TgcUDcNCPkTlEWyzuQ+OksPOGEKmWvCEAmy0E3?=
 =?us-ascii?Q?FmmSz7V1E6yTYbJow/zZ6SEKpQy5XtBAU+bMKwzP0KKqJBarGa23gtgSE9dJ?=
 =?us-ascii?Q?6VlB8Wpjvrac7Moqwo+zkoDauyvot5dg5dQBGe/ZvUqkENG9BQav4Uf+bhbn?=
 =?us-ascii?Q?dTAbb45IMhFD32m3LW6uqX7yWkBrQKMoI/gKQYES8Gv30DSNIU3jsXi1owyT?=
 =?us-ascii?Q?mwg8gb97VtVo3TC4G4eSMPOlD0WQqt5G?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3613.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XGPjgJHHqUJpIeEwdXoBzbBENrGmq58644RBWSOOPHJRd/fkztq7n3//etkB?=
 =?us-ascii?Q?pKzbRgm6V0d+NqJpC7T123sEYiPeI/W6Zqesr4OIeFemafmqjg7ub9DKMq8v?=
 =?us-ascii?Q?kWEPyXXL4WB9Lh88MSsOihdYcxp8Mgjyz82FjPIfH+GrHW4AFCKlzXDBi9+c?=
 =?us-ascii?Q?7qWa2GFKZqOZfe7+leKhINbvUv4OdSakvT/oxKaQ5SjQYaWc/VT5N8AmHuyQ?=
 =?us-ascii?Q?MgDjVTSLOtZL1hvWozcBMwbfHqBgpOAqg3dwKAhB/xjP664zTENxvlORAVAG?=
 =?us-ascii?Q?Oto403foiXd2hbDAy/z8aTOaXXIjIeLJ3unhhFb0G5H1QF+TlrN/qddLCJar?=
 =?us-ascii?Q?bYn3crHMgVM6BvQdgQJX+A3225mL9UcBIQarp8+u2brpYIC1+qTAWssRMIo1?=
 =?us-ascii?Q?KRhWFVUXnMtLJ6LZ0hmA6xQMkgV3B1z1fXr6ulXWH05mtjiAnWnLr8Lfn3IU?=
 =?us-ascii?Q?UreKxJXaGOIyEvNj7pUn3e6vE9DGtLo9qNu67Gop9ctsL13ReLIBRfqQTa6X?=
 =?us-ascii?Q?TIOm9+64ZvVdPnSxxcItY29Uld3zrYVQebO/j94O9r1r/UE1iVfX2tfaqlGe?=
 =?us-ascii?Q?SJzzvkxabkg8iQxVNQ34dbjdJL9FqRDsQYv5Ll5Aw5jadqNVNZ7VdXW9JcrB?=
 =?us-ascii?Q?t7rRLHCBpv9y1W7eyWKkv34MCgNU07/hdl43Kf7l6iPI+3/aPB8+IWFMu8uO?=
 =?us-ascii?Q?aBxvnSO0Gwirt/xOpJ2O4k7iZ77/weHkHi4vuJYWjrfL30N0nxcAA7+GCPmL?=
 =?us-ascii?Q?Gw4pWxzRyF1yY7WY+PHmaWAkxnE10KuWl3g6doh9Fc96Z6JG4Ivp4V3RUexq?=
 =?us-ascii?Q?UOcw31XN4xo0b95RDLIfJeSoVWUscYsEm/hjX1t4ztflj0liPxNSBnkAT5nx?=
 =?us-ascii?Q?wWX4+dh59IPUddqmxPcN1w99eD+sSKkvxLUOXnEGEyhAmksgv3mBOB6s6OF+?=
 =?us-ascii?Q?93TN4BfS+P2UXMgfNqAKgyQegV7gpcmoFDg46kxzYL29qnpcJuLZbCPuNpfw?=
 =?us-ascii?Q?T6iwr7bfWQgDJ+z4YfrGg4aYyrWJHbvS+9+feQdmvftiMx0mdNrssrFDVT65?=
 =?us-ascii?Q?9mU62MvWOMUFtsUKZNRLsBTTIeiwmyXHwTtc+JEcCxOAoenVNYWxhpyVgUEJ?=
 =?us-ascii?Q?IgyYepQ+9WY1A9iV7lzQyfqRq4M/hkysu4NikbMP8ZvlgU1uVXz0n+Gcx4WW?=
 =?us-ascii?Q?1OPlKB5YMIbwT2pFXtoGmcuQfvx73pNOd9zEC9AXvS9jh+04RfHqOCI75YTo?=
 =?us-ascii?Q?jIakc/xtT4XlRp7Nj2kmoz2RtOe7sQqNSKYm0MwFixaGR3omDyqK+Z0k16T7?=
 =?us-ascii?Q?wzFnMf5qhhyCh86/ofyAj3b5xRe1AnziacfL/s9Oer66ONgq8VH3wWcaGQyq?=
 =?us-ascii?Q?SCs9DdHd34Etl0cxPnz52RAaqbjaLlY+qNtVGGtsgKa2E1aGhICfvc7jdC+I?=
 =?us-ascii?Q?T1FNj5lLfrKkfi8LqXuYDX5RILhu4XdlNPUC4rEbvWEkx9IvBnGaswtno/eW?=
 =?us-ascii?Q?q70SA3HS3kpJSU6tOPrnInT+p+gnEZbLr73O+d3SpdBpYmPONFVG3ZnNSXAy?=
 =?us-ascii?Q?vH1unIqU8m9caxUsqaI=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e4096db-4df8-4bbd-5c33-08de27db1a26
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 02:18:32.5775 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6PhEG+g7cc2vAfTfb8ocCIAvcIn/qDTeXnH1ehFVcvNA5EuxLxty44KyGTMpZVa0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB9398
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

On Wed, Nov 19, 2025 at 11:56:16PM +0000, Tian, Kevin wrote:
> > So we should be using dmar->width to constrain the first stage and
> > expect that mgaw is less than dmar->width ?
> > 
> 
> dmar->width is the host address width, i.e. for OA. so it's irrelevant
> to the input iova here.

Oh that makes sense!

In that case we should probably pedantically have:

	cfg.common.hw_max_oasz_lg2 = dmar->width;

?

However we get dmar into that function?

> "
> 3.6 First-Stage Translation
> 
> First-stage translation restricts the input-address to a canonical address
> (i.e., address bits 63:N have the same value as address bit [N-1], where
> N is 48 bits with 4-level paging and 57 bits with 5-level paging). Requests
> subject to first-stage translation by remapping hardware are subject to
> canonical address checking as a pre-condition for first-stage translation, 
> and a violation is treated as a translation-fault.
> 
> Software using first-stage translation structures to translate an IO Virtual
> Address (IOVA) must use canonical addresses. Additionally, software
> must limit addresses to less than the minimum of MGAW and the lower
> canonical address width implied by FSPM (i.e., 47-bit when FSPM is 4-level
> and 56-bit when FSPM is 5-level)
> "

That seems very clear, indeed. OK! Easy to fix then! Balou can you
take it? I think something like this?

@@ -2800,6 +2800,7 @@ intel_iommu_domain_alloc_first_stage(struct device *dev,
 {
+       unsigned int mgaw = cap_mgaw(iommu->cap);
        struct pt_iommu_x86_64_cfg cfg = {};
        struct dmar_domain *dmar_domain;
        int ret;
 
        if (flags & ~IOMMU_HWPT_ALLOC_PASID)
@@ -2817,7 +2818,12 @@ intel_iommu_domain_alloc_first_stage(struct device *dev,
                cfg.common.hw_max_vasz_lg2 = 57;
        else
                cfg.common.hw_max_vasz_lg2 = 48;
+
+       /*
+        * See "3.6 First-Stage Translation", mgaw is used to limit the first
+        * stage as well.
+        */
+       cfg.common.hw_max_vasz_lg2 = min(mgaw, cfg.common.hw_max_vasz_lg2);
        cfg.common.hw_max_oasz_lg2 = 52;
        cfg.common.features = BIT(PT_FEAT_FLUSH_RANGE);
        /* First stage always uses scalable mode */
@@ -3004,6 +3010,11 @@ static int paging_domain_compatible_first_stage(struct dmar_domain *dmar_domain,
            dmar_domain->fspt.x86_64_pt.common.max_vasz_lg2 > 48)
                return -EINVAL;
 
+       /* Address bits have to be identical to HW because of the sign extension */
+       if (dmar_domain->fspt.x86_64_pt.common.max_vasz_lg2 !=
+           cap_mgaw(iommu->cap))
+               return -EINVAL;
+
        /* Same page size support */
        if (!cap_fl1gp_support(iommu->cap) &&
            (dmar_domain->domain.pgsize_bitmap & SZ_1G))

Jason

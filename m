Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59722A72016
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 21:43:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF65A10E787;
	Wed, 26 Mar 2025 20:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="OAjqNfzV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2088.outbound.protection.outlook.com [40.107.93.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6BA810E785;
 Wed, 26 Mar 2025 20:43:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pye0EkQVNq3Nvfs/iAQBBm1sDkOzySwjHRADY59aCB02cCUiyQmOaY17cM0F7yQp0nWUbbAS5QakwWumR7g8hnYNvB6+h3bfyuoIfsO0lVr4aBuelU/vxBAvHlawpPcQE8vhlSIcTAXji+6skgz2gkRrn9NGgsj5PBascvjNNsLkqN2ES2M/hfHwG3bIndiP6agJY1mIqZsTnE9CEEbZMCxZpUG64ISCOmAn98i09VlGT5P6PJvZMwWTg6QeOOoTk1khhQ1OdxpZezrcTxhNA3QaTT/ui5JC+/TUJ+94z2BIGxXZbHdSGTm3UZWV2tOtyFHGcrQdE0BIfRyi+Qjbnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LxUS4ABegDaEqbDDmBGm7jtR/23XjMwS5xbejiwdjjw=;
 b=D5LIJUkISi9tnktnLYyaNHw76KEC3YfWF5GoHP0iyydMCwn7NNGgzq8UEMTqFsHgt5+b54wBPss6FsxjbdhfrNFXXiXKaHtTr0tstUsmEGIvo6ZXzLoAtbbKsMbSoCccMyLwdabnBxCcRBEoDAg19CuDf4DfRbIygVc6YvNknWi1kHn3y7auWtCMqpotERW6HjtnbS7tuMM79XHODos/B5b1Fv0P3eufTlsBeiCpOP5qTvyBca0TfLzKHJtxBhBQ3B55t9SPDuFDBIVIQXK1rlLo3+0PQIOmVcI5dTytLRUR97gpiBwBkcJmcSenhaPBzsxPBNgsgwjB5GU3NyOLXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LxUS4ABegDaEqbDDmBGm7jtR/23XjMwS5xbejiwdjjw=;
 b=OAjqNfzVffUqKhlZ+ECdhRbM9WUnnuBAXQ1sGRYgyaEKD3vnoUh7Ipq2zdrHVbEFFvg/dWs4lCWPI2p3vG/t+U1hshQFUVFksklAYwoIENNnoEZeKI90do52vBMG/b4potW96pTEEHeiipTFVPduuaPc8Pf/z80qP6cCsncK0onXEOWPr5hU27ym5d+q2Xn8qTNECp5kqOO754WrTjZxi4cMyCf22g8JqPwEZj+nIaJrlr+mZJffiTCKq4bxw+oxgw4IWKvxcDdwNT/b3zaSsZhAFTXAX9lxaQwDZ4wSHA+cIZqcjWFuFFHYY6GFwyl2ZBMMlVbdYVDv3zmtrjSGmg==
Received: from PH0PR07CA0012.namprd07.prod.outlook.com (2603:10b6:510:5::17)
 by DS7PR12MB6359.namprd12.prod.outlook.com (2603:10b6:8:94::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Wed, 26 Mar
 2025 20:43:47 +0000
Received: from SN1PEPF0002BA4B.namprd03.prod.outlook.com
 (2603:10b6:510:5:cafe::bc) by PH0PR07CA0012.outlook.office365.com
 (2603:10b6:510:5::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8534.42 via Frontend Transport; Wed,
 26 Mar 2025 20:43:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SN1PEPF0002BA4B.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.20 via Frontend Transport; Wed, 26 Mar 2025 20:43:47 +0000
Received: from rnnvmail205.nvidia.com (10.129.68.10) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Wed, 26 Mar
 2025 13:43:36 -0700
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail205.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Wed, 26 Mar
 2025 13:43:36 -0700
Received: from nvidia.com (10.127.8.10) by mail.nvidia.com (10.129.68.7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14 via Frontend
 Transport; Wed, 26 Mar 2025 13:43:34 -0700
Date: Wed, 26 Mar 2025 13:43:32 -0700
From: Nicolin Chen <nicolinc@nvidia.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
CC: "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "jgg@nvidia.com" <jgg@nvidia.com>
Subject: Re: Regression on linux-next (next-20250321)
Message-ID: <Z+Rm9LweNAtQBrmD@nvidia.com>
References: <SJ1PR11MB61295789E25C2F5197EFF2F6B9A72@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z+Jd4GDIzCP5cBQE@nvidia.com>
 <SJ1PR11MB61292F9467353BA9FBB8F4B6B9A62@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB61292F9467353BA9FBB8F4B6B9A62@SJ1PR11MB6129.namprd11.prod.outlook.com>
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF0002BA4B:EE_|DS7PR12MB6359:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dd04b81-3944-4b8d-03d2-08dd6ca6e833
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|36860700013|82310400026|376014|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ha9bNqFc8AgCCmcKd699NntGsX+S4eMp7yxf0FOjgAHMNpdPkjPi2I2aJcWK?=
 =?us-ascii?Q?ihjr6clbKxjzshDKTufYKPqvZu0Vua6sVZFupz63UdfTrVmbRv2U1hPRb5WS?=
 =?us-ascii?Q?+uo7pM4ISCmFoViqtMqaSMxjvtfZojfQaEiaZaeKNZjX7bteCzLvr1pvjdGD?=
 =?us-ascii?Q?EDPTX6XOAyC7jgIRACMFKUwtuoo5DtWwj/ovRWwIhyviMewEOBCScrpy3eXG?=
 =?us-ascii?Q?agkHLM4ygvi9Pn/TIwue/x5cxCFdwJL9jG0gkp2E6Bu/i2/L6slwrdqt9+fI?=
 =?us-ascii?Q?i/DnP9M7rCL2WaiXR0F0YiPwV8fSWxzhaZJWv8atHfHymHOX3XJIhVuq7tiR?=
 =?us-ascii?Q?bHTQXcfyXJByeBo+vt+6U+aF7Mepsn0vn17RU8tfBPBYwSkWJxfAtd/hgx1A?=
 =?us-ascii?Q?94SoaKkLfKGS7OFJr0bPh3x+lQe8OZaaIuiQUwWsxyrfV6vUWgoy+2zNP7tl?=
 =?us-ascii?Q?5sD47eyGrWVZ9XrzzmFiYzooPKtcvxLgauYv3lvUkgwCQ/w0mS6VM7541nas?=
 =?us-ascii?Q?od9EhOVXDle042TdKT5UEgZ3kfi4CDCqyy2u9zOPygfmSu0zJY9qvvG7N2Vo?=
 =?us-ascii?Q?kqrLT2q/ENUK3rSuStQnj5FzJrZ7NOljA0epocVYn5SfCBVDchli8m8GwqhC?=
 =?us-ascii?Q?OiefSZHDrb591LS8nxLUCe+kp84VKrWk4DaSv1RErmeDFsDoq5+GIxsFpOIZ?=
 =?us-ascii?Q?oGeeDSAduPMKm0NOZGK9oQIhfItkMLHhXPpZ8Cu3/1MHWvp53+zRCR2PO8LG?=
 =?us-ascii?Q?bVFrgTOWc++UI9NKEyhd5FpjJg/nvUuQ5Ibdyi9DMVmICR0GKyUv/OPTDJCG?=
 =?us-ascii?Q?GW2rAOGxQSHcie9N/Q8eTyNOZELBS1Ywih7I2vqBqr8RN9OpXfUCTRL2Vk6a?=
 =?us-ascii?Q?p++l8D38FQeRc3/2thiZbCBDKNxnQ2/E9aHrziIp4PFN1See08UNIf1YUgCN?=
 =?us-ascii?Q?/Y8ZcrMsZxnP3Ap4CKFU4eAA6D+IkppH5xZSTOUCud+6XnhG35g38zuEHZR1?=
 =?us-ascii?Q?BdAHPNLHFx84g0q1mE0GIjaA6Rv81JQovcBLoQ5pHFB5lTJ0IgB2eJyohZiI?=
 =?us-ascii?Q?91IOBw5WCpNP11tNGHmd8ucCMkUgTglEWdonDtugbe9H58NGxFNTZIn3Gwwq?=
 =?us-ascii?Q?eryQxnSr58euOEuPJRBtz+L81mSVzoJVvCVAN7JrsL+nlo5OXPXinkwdMCMq?=
 =?us-ascii?Q?+rr55l+1lZ1CcZ8B2G6UX3BvftutGK2ZBtXmWwZlSwYTyHT5W2Kc1kVEO2nG?=
 =?us-ascii?Q?qxPbqtEEHXaY1MLhCp51TcVJ9TtfOP76igPvG59zXSNzBs/mYrmzJ+QNnkb+?=
 =?us-ascii?Q?w1F7lstKrUSkvBgqJRkzDuEev5RZ4Y1ar9dcufGGxreKIeUC3W9lmBet43zz?=
 =?us-ascii?Q?5cMYua5ewTLfMRNOvS7gCKoIOxMa5SwQCZQr5EWfop0HT5M43cE9N+BaW29o?=
 =?us-ascii?Q?PtMxQ3wMBdYE3PUEzTc8Wg8bc/Hg8MS9/E0Rnp+wtJNzneEu48IzCBXpK5+M?=
 =?us-ascii?Q?39z/cPwhKoRsrq0=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(1800799024)(36860700013)(82310400026)(376014)(13003099007);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 20:43:47.1256 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dd04b81-3944-4b8d-03d2-08dd6ca6e833
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SN1PEPF0002BA4B.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6359
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

Hi Chaitanya,

On Wed, Mar 26, 2025 at 08:31:15AM +0000, Borah, Chaitanya Kumar wrote:
> > > `````````````````````````````````````````````````````````````````````````````````
> > > <4>[    0.226495] Unpatched return thunk in use. This should not happen!
> > > <4>[    0.226502] WARNING: CPU: 0 PID: 1 at
> > arch/x86/kernel/cpu/bugs.c:3107 __warn_thunk+0x62/0x70
> > 
> > Hmm....I wonder why x86 can be affected...
> > 
> > The only four callers of iommu_dma_prepare_msi() are ARM platforms.
[...]
> > > Details log can be found in [3].
> > 
> > And I can't see something obvious from the log..
> > 
> > Would you please give the git-diff a try (drivers/iommu/iommu.c)?
> > https://lore.kernel.org/linux-iommu/Z+Itnw4ys6dmDsc+@nvidia.com/
> > 
> > If this doesn't help, would you please give this a try?
> > https://lore.kernel.org/linux-iommu/20250324170743.GA1339275@ax162/
> > 
> 
> Thank you, Nicolin, for your reply. Unfortunately, these changes
> does not solve the issue. (applied individually and together)

Would you please try the latest linux-next (next-20250326) and see
if the issue still occurs?

If it does occur with next-20250326, would you please try reverting
06d54f00f3f5a on top of the tree rather than bisect?
 "06d54f00f3f5 iommu: Drop sw_msi from iommu_domain"

It still feels odd to me and Jason that this change would break x86.
So, we want to confirm that this is really the culprit.

Also, I think your platform doesn't set CONFIG_IRQ_MSI_IOMMU, would
you please check you .config file and confirm?

Thanks
Nicolin

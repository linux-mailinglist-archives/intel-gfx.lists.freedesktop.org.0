Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A1FA7025F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 14:43:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B76A10E3A4;
	Tue, 25 Mar 2025 13:43:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="tzuyPNu+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2078.outbound.protection.outlook.com [40.107.220.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA27210E39C;
 Tue, 25 Mar 2025 13:43:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LBC7ws0A9LoQyiNICY9PXy8pxOx9PaiYciA8og0sV9HNVCrZeep8u2VDmh39pD2KUdxcU6BOucGvL9SVdfdNp/Xd9Fq2c3xAjMl4WtD687594k/Y6xFXSdhQ1uj6m7eGcndo2K29osYhearHJ7a8DkMR9v/5UZpb4y4oJopl2OmAD1N/23TnuYrBqntahdU6MyUM/WOMnnKtFxmYN/OD7yzXQ1NpZBu1D/2ymlkcl7uZ6644KBbgWsudwELQrK1TeX3ccD3E9y0ife4FI2MNohF8eKlzH3p+EllxklVttaRghbnOFJb9pKWYb5rqIIIsTTUeXOV50Pu5vh9tWjK5jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Veo6nkCxo1aWsBII2JktYtXq+cGXDQQbNlmiA99LobQ=;
 b=zM5+4Zai8ebFI7NHHomUhXgkAsFkQBj6+9LZXhILdpilofHqqbKrLBcu4f57pkQN0k+sBamBE1G3uau/S+nUaVuKRWst8o+PPm859tD6OhmUrKDhlyMAOW4sL2CCTr71MTJ0FxRFFYNA8S3yQrsSkxt1qwq7tTySYhDulPEZurPmwjxqdZG9aDAQjsmGmB1CitB/07Wn5GiU6isH1O/eZMhZIh5SI0QPxwKfKFe0UJAbBTsbhDfuBwsO28iBbxCSytNlYPALogfdW5ZLPzunUDpntzEIeAxqIaAfvq5b23ggEhpDwyXBeFJbwGcBiK9J2xCrQ7XQgGysDhsmTNJm/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Veo6nkCxo1aWsBII2JktYtXq+cGXDQQbNlmiA99LobQ=;
 b=tzuyPNu+HcuMAPuxxtIS5QofVpHNFRt3KXFnmn477GdHqzEH627zi5ddKIMDEaQ8ldYtY29qEVPy1WfKvfb2EZNIGmtw3uEg9HO/leXlKtODtGBx94EcQ7XtxGU5fux9OZZ1YjNwhisVTM0xmhdRwm2T3P47VPRio+q96BAKCg1lVN2cbEAzR6BHuV1JQTYFIbW2rBylB/CHqO4CW/YA7aTctLYe4QcC08tuAu1NHq3fx2iySLDIM+9xxd9MwIQlg6c0P4n77TYYO1yi8W2H4+fb2folpK8lpVSTW5qPMz6riqXenWbbWizFDe3xU4GGWw4/MyIUxTEenG8qwLwhJw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MW6PR12MB8663.namprd12.prod.outlook.com (2603:10b6:303:240::9)
 by CH2PR12MB9457.namprd12.prod.outlook.com (2603:10b6:610:27c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 13:43:19 +0000
Received: from MW6PR12MB8663.namprd12.prod.outlook.com
 ([fe80::594:5be3:34d:77f]) by MW6PR12MB8663.namprd12.prod.outlook.com
 ([fe80::594:5be3:34d:77f%2]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 13:43:19 +0000
Date: Tue, 25 Mar 2025 10:43:17 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Nicolin Chen <nicolinc@nvidia.com>, Josh Poimboeuf <jpoimboe@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: Regression on linux-next (next-20250321)
Message-ID: <Z+Ky9XsxHo/cECgr@nvidia.com>
References: <SJ1PR11MB61295789E25C2F5197EFF2F6B9A72@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z+Jd4GDIzCP5cBQE@nvidia.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z+Jd4GDIzCP5cBQE@nvidia.com>
X-ClientProxiedBy: BL0PR02CA0001.namprd02.prod.outlook.com
 (2603:10b6:207:3c::14) To MW6PR12MB8663.namprd12.prod.outlook.com
 (2603:10b6:303:240::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW6PR12MB8663:EE_|CH2PR12MB9457:EE_
X-MS-Office365-Filtering-Correlation-Id: b351a13e-0f09-462e-0448-08dd6ba300d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/zRCTZxThUqIm+cc984kt9/DUPIiJOsAdys0ol/lnxB8I89LVkKCGulJzE/6?=
 =?us-ascii?Q?ZU+b0jCwysWK0bL2rPgjMti+urFm8pSqBU6cPA6b/+a85bwjfDUuBqSo8y/+?=
 =?us-ascii?Q?fzrNknA5fDTfe1j7IjtCORCm6DjoujC5rJZNRB44C/KlfCAIcWAgZJFG5S+m?=
 =?us-ascii?Q?fdYfHBXDKDJnZJcbzaqGYrWw1R8OsqsHxuoWgaWD/ipoUPzFJLdoREr5l18k?=
 =?us-ascii?Q?zliwcLDU0C+E6f+I2oZzuE36SaRl9XhvIn3D2fnUPs+gI+hSf7THiBARVy5Y?=
 =?us-ascii?Q?VW1niRnclLcyXkH92mQXIg0KN3MDVz+6HX8YrNujym1AEA+TFyfT2XVVEpiW?=
 =?us-ascii?Q?55tk2NZZAb7aPXkcQhBeE1W0TSXq80DvEyXcP0QS1pApVzHLCbp14hfHOzZt?=
 =?us-ascii?Q?BKKhZDlDb/4CCGFWzxsVQbiRDXXH/IuX30VxMfCatsalJz69e/ATB3zMAuzS?=
 =?us-ascii?Q?eZdSuwfa2ZEKH2cdRTcfdwM7RvCxeKbHIg5bXflWqvAJw6Voe0RAUd74zgSZ?=
 =?us-ascii?Q?D3NI/FFSKzJhqU+SV+yjxKhA9EN4yH1RwS8uwraVFwveiEmLDt/0+FSyPVuC?=
 =?us-ascii?Q?6h1cEB/m+cQO9+CLRcre6I8OTy2ThAF/5OwSgyjfFs0u8LJAsz0++8c62/BL?=
 =?us-ascii?Q?A6hYgqE5CZm1MIPhxCWULWalT27K6OyThQH8Vs1tqxX7xvieB2YceZg+1KsX?=
 =?us-ascii?Q?wBPo19qvnOIIj2Lz8LVziHFEUSetN18BTgc2KIwbSUV/VIoehM4Stu8Kxa5Z?=
 =?us-ascii?Q?e8HhmJKbtKaG3jNE/l0PXzz8defNEhay6XEyCjperaVDKpyq+bsGWvk7+sT6?=
 =?us-ascii?Q?D6JnxdEY75c01mhPmYPjJqMyk6s17rQ9O+WS9M2L0067GSK2fCXN9E7UKhfa?=
 =?us-ascii?Q?zKaGFO+QwrqIgVIYqnyVUMPPzCNA6tQOxaA1MXx/y9c7n6PyNWhA6c1w4iKC?=
 =?us-ascii?Q?ays8fxtC8n2eq6HRdyzjP9l+BPQrDVTO5fY5XH7bP6slilZGU6lEzv0HXFJA?=
 =?us-ascii?Q?owF8fGwuvYd3VSfr1iNTcLfV7855lKcyiGnfpr8lPnSFkvfz4oNEOduJpgyP?=
 =?us-ascii?Q?FDODqA1SPs6BFYqdcVO83VAbRetvuGOnk5D9KaAOiWkKuX/1i6HZenj+1oEV?=
 =?us-ascii?Q?7sx5MNJOpmWPfLO9sv9qstK1xPzLGfC4xCINIGnJSP6ZqSmAKZVOVReMI0Fj?=
 =?us-ascii?Q?YNOyBuA+Lmf+PkdTdtn7fRdoKmtboi5j1eEgML6poE42T3Iz2kFXPQ/WK2dJ?=
 =?us-ascii?Q?XkDcnrvwRBpozs9zzEuvKtZ3eOXQNmSYs/1PzsRm5yS3cyxg0bai+B0ZMij2?=
 =?us-ascii?Q?2WCO+/8n5U1fwnMUNq7mW1JxJuXMBLeQaZZdJyn3MySt+b2+MS5oN/mcNgiR?=
 =?us-ascii?Q?869GQGcVR+uMUNCUll/HI0DMKDfx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW6PR12MB8663.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SE+XgTFLXcXxX8VuVahW/a/yjU3Rap6WeeLhO9K5hIDCfSc8ujCUtMbO+2Nx?=
 =?us-ascii?Q?jxdp6Otyw7DjircvVIDKuQtxYtBecjwc37v75syDr92B8qlOC7sCXsP2xI9H?=
 =?us-ascii?Q?Z4MTs8JvQVwd2kf0lh3XNVNRNsooNZjQ5CQLaJYkrx8Tq3hK3QSb/pAi2k1w?=
 =?us-ascii?Q?r6ekyGUkDiiSRmX1kgjU2b+n64RQjZWucWv+eihw1fRfyNwXBaAo55/ZVtHt?=
 =?us-ascii?Q?PFHTLsBg/V6AG67bdYxDH50wgorQRj/YXoSHizw+nWJh3uEHKIcr7sHQ7j+9?=
 =?us-ascii?Q?HtqNxdqRvyRXU+ir9ls68YV5sorfSLOwDFUK24rFHZUW9A32/QWw5tuARpwE?=
 =?us-ascii?Q?yvpolZDUiuVfRidY0+ASEQCGFNPVI8qSa4ZWvxrEn0A1XANddBia1QEkjkuX?=
 =?us-ascii?Q?xGCWZGoSyS9774YRf9SwDcvmgbisBVnM73qVpOLqy+jfmJSWeoYJsW6Q0mpt?=
 =?us-ascii?Q?NXvRhptpELjs7wyMS4TkjjFqvfbWLSzNwOwRwtQfLac0QYm2Evt0WSnKvwRn?=
 =?us-ascii?Q?jVLPmnqe2XrNl4FKn9ApxN4s4HhD9x9d6EYFHM3KRnrIB4zGxQygpe5RhUJ5?=
 =?us-ascii?Q?Apy2p+Wqzlsbu0JYIzTFjXk+q4rh7Hi0PirKeWoar04kT2JLdn1gbyXk3YGf?=
 =?us-ascii?Q?A4uxJ2oqemPy5zZnvbzLJFjtzzp0TAFdgII8YaqdD272qxeC1e14oAOXc0JH?=
 =?us-ascii?Q?7GKsghYXaqbHCcK4AZSrcJcOIHiC6e+H3uRcTFqJnaGBNafM2Kpi11Qsc8LM?=
 =?us-ascii?Q?WC3oDN/YojoJNmvwwe1xiHrPwinf/QKLRAjrWqa5XF66QD9FYLlmfH++Q7iN?=
 =?us-ascii?Q?H85TSOstY2jqPdCQ/MfnWtlr9CRsjY2RvyuRbQR2XmpskH36VKhIsLZHdH0T?=
 =?us-ascii?Q?PtVy4mExVsKC/XqWjwCNt4bco4g/XS6Z56MNjgB5BA1aXAt8QpuO8+QL2CuA?=
 =?us-ascii?Q?tke3tJVGmNOfzBroPJSbDDgi1b9ANWDlN+4m1D2qq9UDlOD5mFv7P4Lwxxc8?=
 =?us-ascii?Q?bjrL0EKVGh/NPLicKtP84g0e0NAJFI5rrnTy2B8JLlTMOvnuygX/whLjVAQf?=
 =?us-ascii?Q?KazmvB4BRne4peEenKMndtAzzgZ0IAKGWJhH+GHru09zUC1soqybOebXPwWB?=
 =?us-ascii?Q?Yze8y7qkbjP/vCOzcm/AB4jn644seYDET71hpejsf5VFT1AIK4xAQFDNIchR?=
 =?us-ascii?Q?ZBifElQNAU1UycWt8Lp64MDV8SPhgGbxuIwwA+LLpzKiAwq2kmo2RPsdmBg4?=
 =?us-ascii?Q?dZM3ZtSkF6CHiRvvAyxxc4LfhH4CChrhycjgpjdprI622WyoeVgtYZK3NtZQ?=
 =?us-ascii?Q?7kiS/0BCEvrITYRLGs/nR0Z8/2p1YZJtfG9pUo2UTh/mo4XB3w14JFHkkCpS?=
 =?us-ascii?Q?jtN3Qa93PfShuCbbepw39bnohyh2B44MwuZpAzUmAEjNe2RW5iNwfW14tm86?=
 =?us-ascii?Q?0ixtbUJJqTKrsEeb1pG4hQvyJmbLNsgI7zsUMPLxE14RQx7vP24QEGdMi6mT?=
 =?us-ascii?Q?LC7bi12CzwupIraa2s2rAhbNsre4QHMIUa0xs/StPrliCCUMZirRLUxOUfeu?=
 =?us-ascii?Q?f8N5dSu/FrlquGr3arw=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b351a13e-0f09-462e-0448-08dd6ba300d4
X-MS-Exchange-CrossTenant-AuthSource: MW6PR12MB8663.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 13:43:19.5726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EZKAuxXhkhe1FTsjuFWpru6am5HwU50u0ddBLR4DEw6dhWSLCfg9tbC8L3ydN9+J
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB9457
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

On Tue, Mar 25, 2025 at 12:40:16AM -0700, Nicolin Chen wrote:
> 
> On Tue, Mar 25, 2025 at 05:39:39AM +0000, Borah, Chaitanya Kumar wrote:
> > Hello Nicolin,
> > 
> > Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> > 
> > This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
> > 
> > Since the version next-20250321 [2], we are seeing the following regression
> > 
> > `````````````````````````````````````````````````````````````````````````````````
> > <4>[    0.226495] Unpatched return thunk in use. This should not happen!
> > <4>[    0.226502] WARNING: CPU: 0 PID: 1 at arch/x86/kernel/cpu/bugs.c:3107 __warn_thunk+0x62/0x70
> 
> Hmm....I wonder why x86 can be affected...

I wonder if this is realted to the objtool warning Steven reported:

https://lore.kernel.org/linux-next/20250321193600.2bfe03bb@canb.auug.org.au/

vmlinux.o: warning: objtool: iommu_dma_get_msi_page() falls through to next function __iommu_dma_unmap()

I have no idea what either error means or how to fix it. AFAICT there
is nothing special about this patch to trigger this?

+Peter & Josh

Jason

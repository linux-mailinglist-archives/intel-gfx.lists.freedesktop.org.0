Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A6672E1F2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 13:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0E3A10E06A;
	Tue, 13 Jun 2023 11:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2060.outbound.protection.outlook.com [40.107.244.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4852910E06A
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 11:47:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k7543YAiZm5k5zyQUN3l0NeYnfZjJYOQKH5X8xN8sXeDcHPN/LfIMjEQ75YL7zUR8oBogA7ZSVGP9vvQZfybwVfe8mmvC614YUAJ+N4ih+ObN4JDq8vR0dF9q63LgG4AdPd1a5mciXG5LbTV/qBQA9dDgNve1xABtAGMfwPwVoC52pWAajHZsMNpNLuv5sdQ+fggaNSSVQL3/gpOSLuDHYnLnfh01XJZHdQ2HIWHDVCWsKlGgLQrTVYnVgScZckjt4e/Qvg7ojVespdu8JD0RD2loSc6cls8UCiDqcfYZemDs66cBmEWaXCdpFf7rvQyqjojl9A+E6L1OjbIn6Rj9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IFSJMVWl2qE0TZnaTF6JoTKhEQvRfYEZTyusha5dKbw=;
 b=Ccg5Iy1Fo1PMpuY3qwN9yZQdw8Tx6Kzcmoyngbro4zpaI8uUvABAFimPHNKH++jSx4nBpemI0qs1efbXliGqMOPSIfSsJrNasEYeIik2k3J2EsJJ/olLV/u2R3pXVKLg2kX+q2G/njnl/aSiCECosazuaY2u5i9ZkK8osZJyS/pT2MT1wxxqVv3sNM8FZV78EYCmIhbumRjMZK7/NAPsi46laJnYfEYGSuazGyTGNmDrgpt5j7oKY+LEtCSd3z66dFbraAOTPR9twyIytSbKv+dRfx22XcBWr2osRrZFyl9GyBYZxeABWMSWkoPBTw8W4nfe1ECXE25i7Em3RI8ezA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IFSJMVWl2qE0TZnaTF6JoTKhEQvRfYEZTyusha5dKbw=;
 b=KTW1ulPOj036YUljfP9q1pPMboq7guPrCoY6aMwAkYItCS+EqiGXBAvrbTp+Csu9GqRIfBARxsbtNszjIoFugGABZaqGJaOMWry12yYkCSOyilrNY+/Hw9ywikm9Axjn2gY04n7zBS9hUaPDBjpsSagQb2vYhUjMpT2nIQYGrvodYEI094CRPDmoX/r56h3V+JWIxLDeEzszlDNVaoRs//E/qzD0P5z+Sbvr5e/NuSYnw3SKStTLrqBYdkUNX9eO9exmTIKCjr7idZOsMtckDc+MlHWtv7LdvOBYTqrYf1t8tkekC9hEq09Byc6XhSbM6k+O5NQgXk8Z66/6Ub7tyQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by IA1PR12MB6628.namprd12.prod.outlook.com (2603:10b6:208:3a0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.44; Tue, 13 Jun
 2023 11:47:27 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::f7a7:a561:87e9:5fab]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::f7a7:a561:87e9:5fab%6]) with mapi id 15.20.6455.030; Tue, 13 Jun 2023
 11:47:27 +0000
Date: Tue, 13 Jun 2023 08:47:26 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <ZIhXTtUQYLpOlLlS@nvidia.com>
References: <20230602121515.79374-1-yi.l.liu@intel.com>
 <20230602121515.79374-6-yi.l.liu@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230602121515.79374-6-yi.l.liu@intel.com>
X-ClientProxiedBy: BL0PR02CA0099.namprd02.prod.outlook.com
 (2603:10b6:208:51::40) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|IA1PR12MB6628:EE_
X-MS-Office365-Filtering-Correlation-Id: 6821b801-4b89-4fae-43d4-08db6c03f64a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SVVIosTQOfhrVG3wsRKmadH9UYuiJCbqGgTR4uqtAB0REBvQ3wRtZXSnUdJtLGdyvV0CQ5ssiUJm+lmutJ7SiAI46UMr4XaJ196PP5eIlZdyNjRbsSWAb0RUVV/s2A3HBgTuZUboYV3R4dMRqtJKCLPYxj8pAbFLVXfiGkehKEoj8liS+8rwtR4lIZALp2eJMlhEyFGGxusqTrjREv2KZ9iZJ+9oPdWMdDNvbRqqbpZaOdWx1ZMuVTsuD8dXXWVuvKrpTRGIqzDGr8hiqvbyD415i2fddWVv4dXNyHlBw5W1a+LYp8FHsKl+K+KgwZCcY//cGZkotVdxPewRs7vCb/BOHyrRej7zTTaMiwEITdcn5bvUDS/zqZOaPUtqQm7zqNXVePhEJt9G3Po5gHW1L9VqpHzOnCStBpjNgg7iKT8kMaPDrk68PVFTvcjBcy8Ot+ytHEYxkPWZ7Txkqh2Tf06v08uqxkB2fwEgRmjLOK45s2y8osLhaNu4kDk0DlNG3CrfntrZ40tYnhEj5VD0zfy6pbxKsBdXD8coUngMt+s0C0CSnbdMnsmSvGyw9oc3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR12MB5869.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(376002)(136003)(39860400002)(396003)(366004)(451199021)(86362001)(4744005)(2906002)(36756003)(7416002)(2616005)(38100700002)(6486002)(186003)(6506007)(26005)(6512007)(478600001)(66476007)(6916009)(66946007)(66556008)(4326008)(8936002)(8676002)(316002)(5660300002)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zABypvw1pmUZ5J09y+3zi7vQYgDu0UNxQzmCUVC234ddPv1nH68Snk79ZmJC?=
 =?us-ascii?Q?zyP1eACP2iOVqMXiDFpiflkc7Ue/aSI2/koRGPUqdr8SHb/PoM9ZqH+WE6LZ?=
 =?us-ascii?Q?6WgCLibUXoauiVT7F4hbVerBRWDrGT5gGJmGeT3UFnXLebzN0hDSfZ0YylG6?=
 =?us-ascii?Q?WlRFEUWVYcq2Nvc8D8dbDTK3TnC8Bjdoz9TZOawrp/7r2k0q/AuG2feKpcq7?=
 =?us-ascii?Q?GJMuocqVvzpiBEJ5BDVrsSbBp1Q7RCJGRsWoCkkBDAswEtEfHRROEqoorXOK?=
 =?us-ascii?Q?a6S9RFajx7luqdYZJrRxPvbwG27ZCsAGvg1U5FmG+PbA2qe3g/838vgk141s?=
 =?us-ascii?Q?0bpeNfN/pWx4k5XAz/lqEX6RAaVeXBywctDFLIu13ZvkTI8smYtFCLlfJee2?=
 =?us-ascii?Q?godRpIPbgmxzXjVJ/7b3iUYaJ5skQ/lik8MK5hQQb7im5mk2M2jj6ErHTtbo?=
 =?us-ascii?Q?GopAKrJfa9aubWkFyJvQFx1Sl7QqP6lJ8AmkR5TlWbe2sgrjjtgSB4lFa/Mx?=
 =?us-ascii?Q?CD+VwuftjZDqLH2tSI7ve7lCo+DjwY9CV53aUE6F2iBmJeeWrspYV96sW1XS?=
 =?us-ascii?Q?X2DFO2L6IvhN96pY6YjZAr6WiG+Y3yU7/qPtgg0uf/orQ0jwvfoVgdBOMGkT?=
 =?us-ascii?Q?zUWZ74H4BTqCWRgfgr9RScHSucbAGYClhSmonWKAMEDQuZTTsEVJXKmoAeLc?=
 =?us-ascii?Q?sX6G8NEftPEv2E0YGE4Ud62YS6bhTA1LTlYG0XdN/oWjgrMks/07Al1RuGex?=
 =?us-ascii?Q?u8xvFSmi2uJKJ7f0XjJ+Y8TRxf45ek9lcLox93fk24TLzy02TigZ7j6xDoZt?=
 =?us-ascii?Q?bK3+4CGmyhHnTf5NCGxS4HA9dlnfiUGYJG+kvvnENWEZXudn2aToa0W0xXeg?=
 =?us-ascii?Q?O1qJv8yOw+wh/ugEqsuEyYBWsnT/78u2H2baCaIdC9FU95JCKxL+/sDNyItk?=
 =?us-ascii?Q?Gzsi/mhiHPzuB/HlqFcatE0dl/0LNyAK8ibRsfaB6XZ5QulugXcU07dS3rHJ?=
 =?us-ascii?Q?ixgZOb40g02bRK/1W5YeUFk4IMfDEa7WQ/YG/QKsb8IaZE0eiUVd2kcXzrtj?=
 =?us-ascii?Q?fBdyLzRcprFbvyUjy1Ph1AgpZ+wfXY021fCu1RlrKnAnOFiS5uXjwCfKIQSA?=
 =?us-ascii?Q?z/CDqrqnAqiQ+75h++gUWIa0nyuZOEPc9o3CMC/nHbWKzENkBMZZ/oAgniCl?=
 =?us-ascii?Q?jyaJYV4+YfvVjcsG/+NhAr7vZHqoGq0qJuAP4TDgcvukPrjQ6FR9paJx+SHz?=
 =?us-ascii?Q?dn1gUJMhlDUxq1CjSnpn4xnLwClouKLFWOeahhAGtvKS9iSTNTbc41pVx5D4?=
 =?us-ascii?Q?PhJjaGIqHPOqr6LSuRlt2SsZPE8k8NhA+x9O6ysATnyKHjgLHs16TGSg50w7?=
 =?us-ascii?Q?U3laDznpWqaLQvZxv6U6ifv9gv3KwtFKnBuzHIxzPcFuRHjOQgnH6GCBHZhY?=
 =?us-ascii?Q?2wCCIxGJSW+10TNBO3V42SbP84UNfJLQhz3T5HTA6RfucvGhoa1HIt8gOami?=
 =?us-ascii?Q?ZrbD+lBkRuWA6CfojAZbMbz5H7UkTzA2fVkCIxgbpPzlUxebtvFI2u5BQiw7?=
 =?us-ascii?Q?XELH91WFaE3m5OM7NeMUQxBcoEn+y0lBi9jgpO3v?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6821b801-4b89-4fae-43d4-08db6c03f64a
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 11:47:27.7774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nmTv+9HuA6VfNXOWiBuV+bAYfTfYvkUDN+MII6U7lxt6wQZ2oVGA7Dza40dFk9v2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6628
Subject: Re: [Intel-gfx] [PATCH v7 5/9] iommufd: Add helper to retrieve
 iommufd_ctx and devid
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
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 zhenzhong.duan@intel.com, peterx@redhat.com, terrence.xu@intel.com,
 chao.p.peng@linux.intel.com, linux-s390@vger.kernel.org, kvm@vger.kernel.org,
 lulu@redhat.com, yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com,
 kevin.tian@intel.com, yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org,
 eric.auger@redhat.com, intel-gvt-dev@lists.freedesktop.org,
 yi.y.sun@linux.intel.com, clegoate@redhat.com, cohuck@redhat.com,
 shameerali.kolothum.thodi@huawei.com, suravee.suthikulpanit@amd.com,
 robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 02, 2023 at 05:15:11AM -0700, Yi Liu wrote:
> This is needed by the vfio-pci driver to report affected devices in the
> hot-reset for a given device.
> 
> Tested-by: Terrence Xu <terrence.xu@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/iommu/iommufd/device.c | 12 ++++++++++++
>  include/linux/iommufd.h        |  3 +++
>  2 files changed, 15 insertions(+)

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason

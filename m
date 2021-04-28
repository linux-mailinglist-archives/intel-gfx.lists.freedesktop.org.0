Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFA736E07A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 22:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 087A06EC34;
	Wed, 28 Apr 2021 20:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2075.outbound.protection.outlook.com [40.107.237.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1AE26EC30;
 Wed, 28 Apr 2021 20:44:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HZmOprK88h9y4VZqENHCQgKUzWii3wgrlBTOxH0/nrPNYw/cJjFMF2ZmKzyZF3N9Z0UWlRc+ZXzyd24GSKFxt+aZk0qgthZGZcwa2+pxPARqSd0oy0iQrozrI2flYeiakheT1hQp0hddYu9eyi49DnsVFN4haa36gN9al7u63Gel2S31z83TQcjYgcnSrqsS9cldy2WkdQGLzLbS1tDvjhPDD4VyngYhtB2S7hLcqZGJz0nvXfvWMHHp32knUw3K4ENCEDKNgjPfx04Px1GV73UzaMv3klsWXm/EzMz6PLVrgA4r8bf6VyL50KCpdgY3qFF33UPQ/NjX3rWXHofauA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B7nDOmjVUNG8WH31TZYsE60H030ypT4A0E8XLZkoVaM=;
 b=eEeQyu2qmyzBJxnA0zIQ1t25iJPpeB0IrbxEhlZK0qcZYwwiNOIl+mF5Xk+dhmKFSa2easEeWihEWqqfT6gymd/weZSOoybhWNxgzYj3xZFB8woqq5zJ7KQHpJRFOaAevWanVxpHzilfeteglysNb2WFfHbRlcrOVkJHEY9/JHwUimULos+fSwRiTyLqPaFf+NzTb+eFfzAyR5lBlWHDioTSDOcmieOpVNaoiLQAKRKXc5amDfU7koHOlO0OJOy5VrT3hzeXroZfjPw1lskp5XluPzNqIOEzIBDFwD1KUm/3TyJeRhXXmxfneIFdmwE91hAGIkhmIvjKwdHHmViKoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B7nDOmjVUNG8WH31TZYsE60H030ypT4A0E8XLZkoVaM=;
 b=rgjRHcsMQUNeFrbb9tagetQqMU45wLWdfU+CXTONEWQnd08nJRloCABgvojkJsW5fjHmb15bZaHV5QvNY6eIbKYcW180og93aoHeP82JdQy6jHjKx5GECiBWdgbeWgYDobCmLzElprw4tw0JPkt7XjnJxewaZipLKCQGpXUO3ng=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from DM5PR12MB4679.namprd12.prod.outlook.com (2603:10b6:4:a2::37) by
 DM5PR1201MB0218.namprd12.prod.outlook.com (2603:10b6:4:4d::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.23; Wed, 28 Apr 2021 20:44:20 +0000
Received: from DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5]) by DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5%5]) with mapi id 15.20.4065.026; Wed, 28 Apr 2021
 20:44:20 +0000
From: Nikola Cornij <nikola.cornij@amd.com>
To: amd-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 16:44:05 -0400
Message-Id: <20210428204406.1067318-1-nikola.cornij@amd.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [165.204.55.250]
X-ClientProxiedBy: YTXPR0101CA0019.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00::32) To DM5PR12MB4679.namprd12.prod.outlook.com
 (2603:10b6:4:a2::37)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.localdomain (165.204.55.250) by
 YTXPR0101CA0019.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.25 via Frontend Transport; Wed, 28 Apr 2021 20:44:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cda2e08f-fe22-49f4-eae8-08d90a8665b0
X-MS-TrafficTypeDiagnostic: DM5PR1201MB0218:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR1201MB02188A4029E01B37B300B225EE409@DM5PR1201MB0218.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nV0cooDoWIpB7IG+SGJTUNinvhIQdmUMO2nM2H1NzCL2DAU8UzxkFS4pv7ZbRRR6kMZZKmFsoog0AfL6nA4hk91UrSmvgkFM3S0K/4Clx4xd5USrX5IxhBCPMg1EprWjuI+iO2di4Wt2fSae+YP0L2/4pU3MpPRRE513rKn0ZeD1dHJTVaKrT+A4sfbiS9vLAjwKJzI14lrd0S/XLW/7aHsHaciJJmT8bHgzvR6jUqINSK+LP1vfS7UKGpof348y5TYzDQCPQf6idwvnCfNLV1fel20SUhIxZFzzi3M7HjThnaMfU/KibubE+pK338Ilp1fDAUw4NlRoa9j9S42xsJ/kIAKBDp92sq+hWHraeu9KPkGDuFQTBpLmOxJElDSZMeM+kfM2Z9VgwsFNPKe5+p99oEqoh7wc0VPpcDi2X2cADxubgh+d9ww3lrtgGeI3vZ/XuzuP/vI+7CN4qxm6DgGvG58YlcPjWxwL5R/qYholr7xTThMqnQ3naMs1o9ABIk61XNNPa/HBWdJ2k1gCIezCEB2MLUVdoyk2KXY+jssMbHPaTBT+nZtAePrJAJ+NlHq2B3FgdatJ5nNOMA2Hy1H18ecy2WMaEQdS7y6F4HMGnkYzAX6IOcTtDJSEPVLr+vYb7GRNXLQkDauCKxUVIA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB4679.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(376002)(346002)(366004)(39850400004)(4744005)(1076003)(2906002)(6916009)(66556008)(44832011)(83380400001)(38350700002)(478600001)(38100700002)(66946007)(316002)(66476007)(2616005)(16526019)(6506007)(4326008)(6666004)(52116002)(36756003)(86362001)(6512007)(956004)(8676002)(8936002)(6486002)(5660300002)(26005)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?/v6kO/QNMTn8Fb4k28WUwFmUj0HNoPg830F6/gRulTb2n0/g1599YvdM4Dzz?=
 =?us-ascii?Q?x0dipqRtGcRJFnG4GqEdkTBwqnvABEE3GxqCDMl+GXhDfu3cDOah3g5saaq5?=
 =?us-ascii?Q?iqNmDdNYEgGmUOUZmsfHSeJqb+cgCGF2d7ya4RRvlE5JyL6qXqgNbbgH2vAP?=
 =?us-ascii?Q?4g9hP47bIBlLpCOHRSGpnhk4zTmm58oFm/o6d+GvOKuZOqUUNUCwcw7eGvPl?=
 =?us-ascii?Q?FzxoTZVhzsKR1VkRuhJE0B0kyvAXpqURmbQONTywiKzHHOFEcf+/Wp8ZTH+3?=
 =?us-ascii?Q?g6ynAuhAXMPAX0vLtG/D980rAds8RiyVpsBRQceCODwVqvg3dsxsFMQr9Fpv?=
 =?us-ascii?Q?uEFojudwOVJ+YiU8SksKmvhkMg1LCj7og9S8jf6Kuuh8K/7te36FgEbvplba?=
 =?us-ascii?Q?JBrJPfeSAWitbB7f2N8N6B5yrmtAdg3vUbRPo31hU0LSX52fyjP9BvAH+2Er?=
 =?us-ascii?Q?IuXZgnrSVQvfoRShJ8Qo6OQK5FUeLFrXe5yEjFfp9n0n+bTUSL8DSLmpWeeG?=
 =?us-ascii?Q?xILUF7azi33cHgMH6QL4pFz6PX071NAj4SkDFW6QwzLNIpGFwiTHr6IlHP04?=
 =?us-ascii?Q?GH1UNQLJzYKFIysgbnuCR1JYSGc0VNp2cRyVYSU5wMTPgYg/XEFcAZFh3Kzo?=
 =?us-ascii?Q?Gs/GwEynv61XxOAg1Rhr7XpKOgKES4oyMlF++6B6MxNZ+qJDkjN+nEQZ3UDa?=
 =?us-ascii?Q?4tuR5MADYYM71pYN3Bx4XCJqgQHBWxNqTVCJJY5jSxG69dzW40rlx8J7LL1i?=
 =?us-ascii?Q?Lg93gjw8W1BDu7ZgGZwOtjL//4ARVg++/D4h1Hiwtz3FSJ2X4DSGEqnpqJKP?=
 =?us-ascii?Q?U5vKm+hyCECBytkoynCfRZAe4Y6IKOtviOLvsQQc6kPaD2LCIwstd4ClYuEV?=
 =?us-ascii?Q?NszlfXiJBg8w9SkiLIaXVULgVc4vdRcgMdSM2A44EwYWouZ1DpckjQvFuUKP?=
 =?us-ascii?Q?+DJQ7CEOixOVFA8Zz9zAV+Do2hUu79yy0NmckX0Efdp6oTnxHAyB8AExlGCw?=
 =?us-ascii?Q?r3IKwqh7OmaFYQsLhXgOBys2pT3gfLthNJIzUyD0WHKykJZPu80HbWoBvELs?=
 =?us-ascii?Q?Yqcq6uokIXxWAffpdOeTNfBDjXEoxkH0+1U+45705BoY1HZk7/S0V5zwVGXq?=
 =?us-ascii?Q?YlmOKpscvszO7PbKuoBeAOsWEH+PHWeB9daBjlXFGuw0AN7CUJIRlIAKUIl7?=
 =?us-ascii?Q?x4ruS3//P0ouk2e1Wl3kHVd9MXWBWr0TmRiMewX7vJZqQXxHlL+8wgWnt/+o?=
 =?us-ascii?Q?OVkpbtzhiiuM42W8W02MiPtSbZAVSwdcxw4zw17i2UsBN8d8mDeZL/7VdVJ1?=
 =?us-ascii?Q?MsBYXx1AqM4DfWH6hkWtUbvM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cda2e08f-fe22-49f4-eae8-08d90a8665b0
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB4679.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2021 20:44:19.9983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6LeoEbISS7jq3zH+bj9ZDVvITH2DXl4yayD5kq4tFvusSSOoNgjiV3qE7sksvOCeyvjsGbVYG6xwQzTLm/CiTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1201MB0218
Subject: [Intel-gfx] [PATCH v6 0/1] drm/drm_mst: Use Extended Base Receiver
 Capability
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
Cc: intel-gfx@lists.freedesktop.org, Nikola Cornij <nikola.cornij@amd.com>,
 koba.ko@canonical.com, aurabindo.pillai@amd.com, mikita.lipski@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Change history:
v6:
 - Submited from (hopefully) the correct repo to fix build error

v5:
 - Fixed min_t() macro arguments

v4:
 - Fixed drm/radeon/ lane count and rate

v3:
 - Fixed check-patch errors

v2:
 - No changes, this was my mistaken reply to my patch

v1:
 - Initial revision

Nikola Cornij (1):
  drm/drm_mst: Use Extended Base Receiver Capability DPCD space

 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  5 +++
 .../gpu/drm/amd/display/dc/core/dc_link_dp.c  | 18 +++++++++++
 drivers/gpu/drm/amd/display/dc/dc_link.h      |  2 ++
 drivers/gpu/drm/drm_dp_mst_topology.c         | 32 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  6 +++-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  3 +-
 drivers/gpu/drm/radeon/radeon_dp_mst.c        |  8 +++++
 include/drm/drm_dp_mst_helper.h               | 12 ++++++-
 8 files changed, 71 insertions(+), 15 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

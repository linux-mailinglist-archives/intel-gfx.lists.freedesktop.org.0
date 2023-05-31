Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D35E4737413
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 20:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC0710E37D;
	Tue, 20 Jun 2023 18:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0126210E44C
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 00:13:45 +0000 (UTC)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 34UNwIBu015030
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 00:13:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=DRnACwvkhFWFLhKxDSN/mPKAULbm2JP5OtRenifR604=;
 b=NeVv4QzEhFz2+61P3llWN6DpdSuZTz/tVpbrvRAb016Dor/mPumAuotzdRV73vZ9WciK
 aeVSpqRVvJaQFR8uKvWJoyswuuYQylfE6gXghcsPYS0a2Xg3pTRhYuX9S0AkovTmH7MO
 xLQKfhz4T8MDqeZwTG7LxzgnDdjwgJIuig3QdCLzJztoImmiWQoKl1Nth27Hc4HME5Ya
 ym5aG59YeC/W6nuyBc3osIcXbPlWM7O0NEY+VXKszutTy89qb2jhmAv5tML/CTt5Til7
 y3LMLTMiDUhYegGUzsr0dUUQjDJomO9Cg1ddanvlDxG+pWaWtH/tmPFXR3IEKa3M7zp0 zw== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2174.outbound.protection.outlook.com [104.47.55.174])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qwqgj06cj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 00:13:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5eDOBmaciR47lcXTmVldvgb+EqPX4vdKxqMWeEvjI3hIbM6QIqSWwdXXFGSNrNjPTOJrRCPnDPQT5IhOZwd3NhsE9ZuQPjO84zmDe7hG9K9mbkPVKnft/Q14JvN7TJMrCfCo346XQc+jF7CLP82GWVlNgzSQC7eAwRjMeEDulR1wWW5CDNiuQctSacR1MtuBxe0b0FilKAMHJcOmv7oPvPPxMcM5WP8MmQ7OMuk9lQhUoaIV8SZRmkuQiheHYBt+akdqhQ9Wyad4HvHLLalE21CMrze7tCdfBB0vZR5yzMaH9CtBaCYGMjPbwQElwwTbU74t8BMaUkBzBTLsyzYgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRnACwvkhFWFLhKxDSN/mPKAULbm2JP5OtRenifR604=;
 b=c8CS4e4WOGa++AVatVPNoeijkVzikF3YM7zLavRkLzD+U3d9vFqh+rE9/TI6+++HSmUpFKvP0FoQgSGkRn0nNG73Df+fq2HzHUFQfZwHV3TnOYI4y2yDfLe4WXfI4JYhKbAHU8ajOJ7OsIPhiYXbCy+EFKiCYFzzHLxYJ6g0kIxhcrETgqm/Ql0Lge29QqBX9uTSSjvk4lqr8gGc7c+8znWNXJSKKH3v+MciT4u5dvbuPY4xZddvOHpkZSla0HRkf6vugE7+twqchH2EPWybpa1rY8tsiAUjENn8bBmbhW9Q7kPNjjRXhAMhxk1AnyCRdYcTuDHSMzDhYXPyAXs75g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB4609.namprd11.prod.outlook.com (2603:10b6:5:28f::15)
 by PH0PR11MB4854.namprd11.prod.outlook.com (2603:10b6:510:35::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Wed, 31 May
 2023 00:13:42 +0000
Received: from DM6PR11MB4609.namprd11.prod.outlook.com
 ([fe80::c51e:7d63:e3a2:4926]) by DM6PR11MB4609.namprd11.prod.outlook.com
 ([fe80::c51e:7d63:e3a2:4926%4]) with mapi id 15.20.6455.020; Wed, 31 May 2023
 00:13:42 +0000
From: Yongxin Liu <yongxin.liu@windriver.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 08:12:05 +0800
Message-Id: <20230531001205.3410334-1-yongxin.liu@windriver.com>
X-Mailer: git-send-email 2.39.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TY2PR02CA0017.apcprd02.prod.outlook.com
 (2603:1096:404:56::29) To DM6PR11MB4609.namprd11.prod.outlook.com
 (2603:10b6:5:28f::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB4609:EE_|PH0PR11MB4854:EE_
X-MS-Office365-Filtering-Correlation-Id: 05917018-c17d-48b3-3f42-08db616be452
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: li8D/pNXQobqVL+la4qG/tTLfVCdVhm83EMtnvAkthdg9PZWYQoAWT9uV4PVOlqaQtymP6ejVFMZjMYjFr/Q8Y+x6fH9BBx1n6BI5pvyUfERVV7c1TYKE+5827wa3iKZVf0AyHQA1QHYgu5MZVipMl44fNg0LrtJVc8EJs+t6GXleUKscIrqoYgZdqSbzqoRc0Dcy4B5/FsyrMD/CNS2/DaMmxmvQNSsMKagybCPM30rvfdxAyVp2Rwuqv9gmFDTg7MYRt4QRK5OqhuHig0Nib9Oilk4J7i0x35+KWU5NOR//bzhaezvzauRuvGyMcsSexccnR/PMJcnXL8J4PCQmtJGLDkSrDGald4KzqPXzds5iA31JG1C81OybUzvVhwkDn4iXtPg3IZYH1pKpTpcgoC6s9lCcgxWbGFd2jsdM5Rb++mowAg5D4CYn9ihcJ8CCe4eEq7HmA8HH9IfT8NtL7bwQ533wO0GxVcVYv/E9j8AUlYaGc7sj8SeNVAZs3y3mgfd/5unTqLuWtocQIU2tNiaGYr/h/cnxHiEWJsdL3jdhEIMfDOhC2UQBzIlrAFY2HXXeIGACGb/5by3LaXvosJbQo7niNMG6vd6ybPspBB4KdvQJZjaH+fFN9AL2UeK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4609.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(136003)(396003)(376002)(366004)(39850400004)(451199021)(186003)(1076003)(26005)(6486002)(316002)(6506007)(52116002)(6512007)(6666004)(2906002)(5660300002)(41300700001)(36756003)(44832011)(8676002)(8936002)(478600001)(38350700002)(38100700002)(6916009)(86362001)(66946007)(2616005)(66556008)(66476007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n26/xudKI1kaYDrl5EEgoa6+S5KMoe0Ig9xCqqC3dXO44Afg6/wS1e+kYfnc?=
 =?us-ascii?Q?DWKPEkSZbJxOCpZw6opHNn1K8exVegIR7VjkA+mUn81zxMSlWEADGu0TSnUm?=
 =?us-ascii?Q?ADli6VvYQ0fATcgt5a2ve+/WG7x9pDHWpsgHXEHAWldiSLzynKT1ZSQhlAO3?=
 =?us-ascii?Q?i1pmYGeehYzASTQqF/H6Ne9MOTMIw0qeAqHx/OyhOITogBlVkzuORpMkKSyF?=
 =?us-ascii?Q?xmgcCZbGhZVj/ybDoRn4Mc5XNQ7CuPAum1H7ErNgMP0ZZ1vEtjl3+uEwXkMZ?=
 =?us-ascii?Q?oSgFFc77G7R+qBxsYICMXR+cQVPhmvwQluyCNgIx/aPKCP70kBN2krGpvJrz?=
 =?us-ascii?Q?qUvW6a6G7NQsuUSyGsEskeq7+8fuOD9yQ2kJnMpgv0erlcm3VpaRg6G6WPhD?=
 =?us-ascii?Q?vgdyUSbAh4ksw9Z68HHGtpFZ4u5fZvsLWLbvOM/uce4EGSWP+oCaQr4Aoi1N?=
 =?us-ascii?Q?JMxRDJWgQ1d5Acw8yT9YJ+jXjhip9m1aPDp0Fhxukc6KIWyepP9SPQzGmWx5?=
 =?us-ascii?Q?7yLtLGrlV20p+1p+xE1JrCabLqs6YzKGTo9+Zivx1Wh59rxeVz+RNa/PFill?=
 =?us-ascii?Q?zi4FOOCInSoWJ1S3SxiZUimKGcGAZczaiq8RKMWdTNMJP6AO51BtxW2+GzBT?=
 =?us-ascii?Q?Fsxh9+0ynpsKVf0X2ZHYCCp4PbYdKtsee2X1k8M7DyGTtqO7KF/RO3Rmqfge?=
 =?us-ascii?Q?7nVZEK7WHH/9iG3P8/OYtdmYhC/6pwOxM9n1pe/7c+WUirV5iO2z9O6Vf6AU?=
 =?us-ascii?Q?dbvdusLtxyeu7LkIgrrCqzJ65jvAOOItMni2cN2otBrkADYAJE1LGKiv1wiW?=
 =?us-ascii?Q?+n1oXpX0tcNIM9jYqJJ1aj79Q22lE9pWCWXPAXvLqNCqsy2vkjU2nM8zONwh?=
 =?us-ascii?Q?MW/qJcwH+VA6jGLCr9RCqDfZ8k0+byNzypJSCe4HLeVxM9Y8xNhuls93l1ro?=
 =?us-ascii?Q?9OOPNmn/2mYp/pF+kxoOGn8xMRtsle4DDPCDy5suBMxh7bK0U//Gea7wCd/K?=
 =?us-ascii?Q?8x9friUQGxi3Kbaksbmy07da2tJje/il6pxsYOeA76nVDhSJ4bc913wTbEfA?=
 =?us-ascii?Q?TKOZ7iDba70Mn87jvo0hfY8QCQZ2MxU9Yy4YkvsHbC4WwbMTEvzKOyFtb94V?=
 =?us-ascii?Q?1filFJudrbhFEFONHu4GZ2EKO8AVB9NTHRlCgK8D+p9EMuNBUn2yk0xVlbTF?=
 =?us-ascii?Q?kKy4sZNNM/iPsRGz1I0xDyPU9P3TO5ncwubDIMFo0BOSx5p8KC62scNemH5l?=
 =?us-ascii?Q?hoKMSkL+DijNGH92Fg/mtkLyA++MgC8TGawzl2WSubvHPKxbvag5PHJU191D?=
 =?us-ascii?Q?Z1Xd07nmKknwra3j4YFs0ztWAyLqq0ajGTFPpV+Y8v84RLYrj1+JLyi+R53E?=
 =?us-ascii?Q?ffkz1ymQHTC8CdIHMojMlgxL+Y63HeLm443L9jcuXvW1iK2zFDOPhxnO1XGF?=
 =?us-ascii?Q?hfaOT9Q4+Ue4WDBmS99s0gFVH58go01EZFuykc6E28aYDCNBtut5c7vjxItI?=
 =?us-ascii?Q?vayfvYlLzSlVdUHuFwe69H/1VNV6MEf6/JzqnheHE63h9rexIzRPzWJ8ssB0?=
 =?us-ascii?Q?SoYyLUD2vSqAUyxMoUBobusTC1PWBNtG5rY/yih37ZMPqqAJ2QikefyLv8oe?=
 =?us-ascii?Q?Ew=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05917018-c17d-48b3-3f42-08db616be452
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4609.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 00:13:42.4795 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pygUH/NRD1SzMPhGdd1gRf8vKUvA4taGee40ktznLT9wK4RWSoRhSmlcAKu5LP1YHv90Ev7AATelhM3UP8DrPhhe7oXO7y5iCcRxN5q+OiE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4854
X-Proofpoint-GUID: xZv-9FtfMGad3n7wMVrW55ROazgJxkCH
X-Proofpoint-ORIG-GUID: xZv-9FtfMGad3n7wMVrW55ROazgJxkCH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-30_18,2023-05-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0
 adultscore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305300198
X-Mailman-Approved-At: Tue, 20 Jun 2023 18:28:21 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/dp: fix a memory leak in struct
 intel_vbt_panel_data
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

In commit 3f9ffce5765d ("drm/i915: Do panel VBT init early if the VBT
declares an explicit panel type"), intel_bios_init_panel_early() was
added to intel_edp_init_connector(), and it may call parse_lfp_panel_dtd()
to alloc memory for panel->vbt.lfp_lvds_vbt_mode.

If intel_edp_init_connector() returns false from lable out_vdd_off, the
memory pointed by panel->vbt.lfp_lvds_vbt_mode will be eventually lost by
kfree(connector) in intel_ddi_init_dp_connector().

Fix the following memory leak.

unreferenced object 0xffff9e076562f100 (size 128):
  comm "modprobe", pid 365, jiffies 4294749388 (age 73.473s)
  hex dump (first 32 bytes):
    14 44 02 00 80 07 d8 07 05 08 98 08 00 00 38 04  .D............8.
    3b 04 41 04 65 04 00 00 0a 00 00 00 00 00 00 00  ;.A.e...........
  backtrace:
    [<ffffffff99dd1386>] __kmem_cache_alloc_node+0x1e6/0x3d0
    [<ffffffff99d4754a>] kmalloc_trace+0x2a/0xf0
    [<ffffffffc0b50a39>] parse_lfp_data+0x1a9/0x300 [i915]
    [<ffffffffc0b52af1>] intel_bios_init_panel+0x131/0x3d0 [i915]
    [<ffffffffc0b52db3>] intel_bios_init_panel_early+0x13/0x20 [i915]
    [<ffffffffc0c0d342>] intel_edp_init_connector+0xb2/0x620 [i915]
    [<ffffffffc0c13267>] intel_dp_init_connector+0x277/0x490 [i915]
    [<ffffffffc0c01a87>] intel_ddi_init+0x877/0xd70 [i915]
    [<ffffffffc0b6fced>] intel_setup_outputs+0x79d/0xbc0 [i915]
    [<ffffffffc0b7dce1>] intel_modeset_init_nogem+0x1a1/0x300 [i915]
    [<ffffffffc0a85b2d>] i915_driver_probe+0x2cd/0x580 [i915]
    [<ffffffffc0a900bd>] i915_pci_probe+0xcd/0x150 [i915]
    [<ffffffff9a425334>] local_pci_probe+0x44/0xa0
    [<ffffffff9a425fc4>] pci_call_probe+0x54/0x160
    [<ffffffff9a4270ae>] pci_device_probe+0x7e/0x100
    [<ffffffff9a5ec997>] really_probe+0x197/0x3c0

Fixes: 3f9ffce5765d ("drm/i915: Do panel VBT init early if the VBT declares an explicit panel type")
Signed-off-by: Yongxin Liu <yongxin.liu@windriver.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 529ee22be872..b83d14c0f1ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5439,6 +5439,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 out_vdd_off:
 	intel_pps_vdd_off_sync(intel_dp);
+	intel_bios_fini_panel(&intel_connector->panel);
 
 	return false;
 }
-- 
2.39.2


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC3673741B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 20:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90E0110E383;
	Tue, 20 Jun 2023 18:28:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1007 seconds by postgrey-1.36 at gabe;
 Wed, 24 May 2023 09:59:27 UTC
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 098B510E34C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 09:59:26 +0000 (UTC)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 34O5mlT6013317; Wed, 24 May 2023 09:41:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=DRnACwvkhFWFLhKxDSN/mPKAULbm2JP5OtRenifR604=;
 b=aNWB3fMx7TFZs1cWTKKixZGgYgCXlYHT532FcT66ZLMiFs8IIKgZi4+18zQNjJPn/s/W
 iQ00MiO2hIvF/wrIJCGUm1Wy9vx+E2Z007pZHW6jHe7kouT+uBh8JfKEWde4X9MdxQ4Z
 cJGUS5vLAT0uU3OBFSPwqR/gEnzsF3QKIQdFLMDa/7ZKiquqTJHxTpiOU5UHliF4V/tZ
 2YkD9cUTU0eyRuMIKai1JisNYK/k4v/TUFGZFC0bSt4f/ku9/EukKYcY9FmvNsz8UIXa
 Tstr/EzqEGQIWNacLgNn8ppRzMnUy5xrWdm5m0o+ZKC1wj37Ed0jJYDKeuL6BwcQ/35w nw== 
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam04lp2169.outbound.protection.outlook.com [104.47.73.169])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qpn67ksr2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 24 May 2023 09:41:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hESSJaCreCF+7ujoUXYcbBPi+n2w0gfcWmfdTwEUqJnhNO2ZzvKj3ynu966mxDCpGuVAKW7MaJ0DCkOsNSHUDXs1KBXmHh7itKWFqY1uqmN9qUkFPFlvg2KfU+sZd3FYdCdb4C1KiD9R8GK25K69DUVW3bwzAvIfvewjvlzFYJ4vI1t5bAUpgnSKImEZvH6RsJ7u7G3+/eWoBUxch3Nw+8cxCJcmv2y8cf21Nt4a+IwR8lz2IMTG+z4Hs6O+H5QSEMfsZi7SU5UrWMaVWf9WTgpbTEFiQvYfJ7459BCB/C8is/B2uHbtkeR05NTkw88qlLPk5Q/su0fnZ2HhEqtkiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRnACwvkhFWFLhKxDSN/mPKAULbm2JP5OtRenifR604=;
 b=Gcu69QoZEpCjztAXtMSAvn2bXxRFi8v0n/f5YZ8xyBTBfxUBIK7m3iajlvPy3NP71QB+Zt8OQWPz/iptWRn0s64QB/eyhNVJjKwaHYiZ9tBZfCOMy8TFsrEqtW9DGvxcEma5tOXKtlmfqRJoQv39BjeqAnnQcju1nVh6ZMVvOh0mivWUq3nPFuBJrKdB6pCTeyqLQLNzrBXj753VZAZjxl8QSEVYZiX3hvfneHHc2s7MyTv6igE45G8fXxzdWv8RIOoNOMyhkbTy2ehLJZGBOdE/OhDzJXFfV9KzMdfyHQNqc0I0dsGrd9Y4WUGFd0waepysoDQgG9Z7H7OdTxt1Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB4609.namprd11.prod.outlook.com (2603:10b6:5:28f::15)
 by PH0PR11MB7634.namprd11.prod.outlook.com (2603:10b6:510:28d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Wed, 24 May
 2023 09:41:02 +0000
Received: from DM6PR11MB4609.namprd11.prod.outlook.com
 ([fe80::c51e:7d63:e3a2:4926]) by DM6PR11MB4609.namprd11.prod.outlook.com
 ([fe80::c51e:7d63:e3a2:4926%4]) with mapi id 15.20.6411.029; Wed, 24 May 2023
 09:41:01 +0000
From: Yongxin Liu <yongxin.liu@windriver.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 May 2023 17:35:16 +0800
Message-Id: <20230524093516.382711-1-yongxin.liu@windriver.com>
X-Mailer: git-send-email 2.39.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYBP286CA0016.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:404:ce::28) To DM6PR11MB4609.namprd11.prod.outlook.com
 (2603:10b6:5:28f::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB4609:EE_|PH0PR11MB7634:EE_
X-MS-Office365-Filtering-Correlation-Id: 862ae884-6f75-497f-6937-08db5c3afc87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lfONHjw3te2Fqwu3b6IWxaC3nvswga23yt3TsXolclusAPEVbLiO9Yy/qJQUlJ/IBOS8+Drr1zwdM6zqqRET/YRrlshk/UQDkAVn5d31HdWaf9VKAUGrHgxv01KSkxupkCylOC082EP1RPG2hMpltj2k16ahi9aPxki0IIv4ONmHUr1lEGqxGu1/SocYu17be/YpVsR+CBP0z/CjY8roQ5JpG7SWJUAStdWET4Bvd8t9Tq4EjETi08OFO76rDeSQXbVUZCaRoo5oc+TME2ZV/xBlSyC1iI8OXrsvLlmbOKbqf73tgB6AVHRPsEhqX/wNQNOyM1oB5g/GjvbOi/ZvA80vY6RtJEA7TKHE1vE849qCkOILIQ032UViyvh0ZzBlrOmPCyGe0i6qc6ZC+SSUJ0nhKfCvb9C+RIcRPdumt3Hddx8AXZIJE0awR1KvE8NNl+17+cnDF9IDifzyAs5jSD+AV8cTxiQ8uhTKtYieFV43V+801kVvDzVcRQzITKSkZMG4pEnwYJ5s5EtlJOgkLwA3i6fC2jgndCMJG95Vuvu4ED1mgIlNW+hrIbYDag2AicwOdXDsLMgmC9ipymWkkr7p17sUkwCOk8xvleSMUWLDxkybKOYAO+lovg5WkprL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4609.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(39850400004)(376002)(136003)(346002)(396003)(451199021)(6486002)(478600001)(6666004)(6512007)(316002)(6506007)(186003)(44832011)(52116002)(2906002)(26005)(1076003)(4326008)(6916009)(8936002)(66946007)(66476007)(66556008)(8676002)(5660300002)(41300700001)(38100700002)(38350700002)(36756003)(86362001)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+nket80GTNeYNJntwtwsjeUHn7ZGk1m9HobLok3clGRqPXn4p4lMPNeiHt/7?=
 =?us-ascii?Q?UJcei/AgWicDzJBF6pVHc7UJQmkfLGOpwTumxAd7cKvx9jX9sMFIhbLj2ILj?=
 =?us-ascii?Q?5MJQ8IS36oMHzYetDTIxYTm5gu660YCPu0fCyKsn15ke9X0VdJA9XTC+s+Nh?=
 =?us-ascii?Q?0HPjioWCug/U88XXE82/ZaIOpCSIOATN1xYdzDv4jAGxqUCAKKn0xW6UD0ZI?=
 =?us-ascii?Q?ZqP2NWIG4z47CMhETURR4Pxu0adiL5H/QjPcb1ikDrEeso8QYTjwis8XqqBG?=
 =?us-ascii?Q?xtjUftoQsTSj4X4l6jMg9D2MdGRu1YDrqmJYiFVMrr7/2aCYQGAZ6Fr6Mo+A?=
 =?us-ascii?Q?3eJ5nb6aXWLZc6owJExeZjZhCJTaCwnah7NgQz5giT8UFWZ8lri1V8xrdyY+?=
 =?us-ascii?Q?7fwT4xTgXs3bogO54nTWs4ikk/0AGZFF3jHu5yNH+FJNkMYjQbD7OSq1Q3g9?=
 =?us-ascii?Q?fx8QiRFfIuhJ6h/sDv6Y5Tz/p1Xj+0UI017qVids86d6BcOmk82l4nDuAMcy?=
 =?us-ascii?Q?tZpM1DwBj7dCelRL8vB9AiIkiDe+MM34P6ySakSYpstO1Yxlo3YvcQLKbQKF?=
 =?us-ascii?Q?sYwkJw90bod9MP1x2zIQUtz/5MG1+v2eRzmGn2NvLM5wRcmMZFoynQQ0L348?=
 =?us-ascii?Q?1EbY5lEO6wSiSmvJl+IzDOn2X4jz+0JwFECJ3ysmJctTQoj8HXoGPk9jHOW2?=
 =?us-ascii?Q?5XLSYk26P9I9ztIXOsLN8KSX1Col1ShXNoAwdUQb+ESMvOvLqAwpmW2gf4yE?=
 =?us-ascii?Q?jFxVM5GIhSKggT10NeD4O2XzNm+IDxetlzpnLiAvKLM/Jdg9/FicrqtOTM/n?=
 =?us-ascii?Q?xPUC4o3uZH5Bov5uI8Mr7REMTRbhUc57YRtFIIijZMECrS1ORP52ZvVdASvD?=
 =?us-ascii?Q?WXhNRuDqxtVd7O0l33VPJyQ16ZVgiVh+OxpsnvenDRVq2uG1ksIHxuatitHV?=
 =?us-ascii?Q?diGUOiMyf9NBhm2GaNLekHUQ0VbRd5DHxyoTLyzvDKeTZaJLeySiV0wCAFn9?=
 =?us-ascii?Q?/hNubgHVnFVcQzbCdm641RtKzLv2ELVk8jUrWeK93k7+r9Tz17DudjYy6U5v?=
 =?us-ascii?Q?ha/J38G8mxieVAM3pqrsMt3De9FHMLM3LGiM6nGohRJnUEzGmvb7YHdg8R3Q?=
 =?us-ascii?Q?2ftfLh+0L43kWnI4VpFKNx/XdDREAHHP3JzRkZZAZZ/CtTwgy51rY9244Kmk?=
 =?us-ascii?Q?WbbTqTZ+RosLPhGtagcYbX5I+zmbgrLzaOoQw3y6nwsjNEtEqVMTd+ZkbVQN?=
 =?us-ascii?Q?Kl4jgAGQnoyYOPYFdqG8oLsiqc6m8G6HdJcmLhvL2zqivDOfMPSEpDpXFxNe?=
 =?us-ascii?Q?kZjdUEfvT6mbWKPgirLLgun6xERxGwglLkVqLCeKtNDUv0/+JqhVe060Tu2F?=
 =?us-ascii?Q?3QIDcFLccJZjCgSKXqDwdzLqnCQla+yJ2yuiMOqYaBgxzMB9Ag0iPjRJ7tsL?=
 =?us-ascii?Q?XoyH6O+kl8E4fGXcCjHjI48RaEios0lQGwleRsS0n7PqwiUx5YD+XeuJ/Oww?=
 =?us-ascii?Q?HL/nDPMRHdrGwhGH+kKV4HevirNsN9OZEGPsFLa8mBHmWRoThg+2npSXJWej?=
 =?us-ascii?Q?eyEkDSWGQEDZPvHs2gX+ybzMOPqITdY/RmyC+ZcI4DWH0gKSePnjYoVTWmZ0?=
 =?us-ascii?Q?LQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 862ae884-6f75-497f-6937-08db5c3afc87
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4609.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2023 09:41:01.9288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uIt4HRQUZ/eNS/DCCiBQ264vXN92X/g0k0m1MKDHTyuuLFQP2QgFexDAO8bRlMm+zp6QJSwQgy82tCYkpUoDxcpXb4ue1ZiuX3YYouk7HT0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7634
X-Proofpoint-GUID: 5wauiRktI-n5Ezj7A-Ruw5mICIC0txTS
X-Proofpoint-ORIG-GUID: 5wauiRktI-n5Ezj7A-Ruw5mICIC0txTS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-24_05,2023-05-23_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 mlxscore=0 malwarescore=0 adultscore=0
 bulkscore=0 mlxlogscore=999 phishscore=0 clxscore=1011 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305240081
X-Mailman-Approved-At: Tue, 20 Jun 2023 18:28:20 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/dp: fix memory leak of
 panel->vbt.lfp_lvds_vbt_mode
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
Cc: jani.nikula@intel.com, yongxin.liu@outlook.com
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


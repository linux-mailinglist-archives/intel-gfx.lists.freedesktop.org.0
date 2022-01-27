Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6A749DCEC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 09:50:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C2A10E681;
	Thu, 27 Jan 2022 08:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C725A10E681
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 08:49:57 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 20R6l0lv012678; 
 Thu, 27 Jan 2022 08:49:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=HnwnUayK196dK1Tu2SsSqzTQhtv/5z+PXyomm4poedQ=;
 b=g+oWHT6ppxYeeDDbIEZdJRVnRmvzF1TeL4+TAV6sdD1kCH1qCon8yekzSoegM0Q69f0D
 ArwSFsuaLK1wYD7f7dFD2d+64D+ye3UMG+mnCXiU00QfOm9b0Gkv3yBX3WttoGDN5gVD
 wcjIJRL2zsWtT71RStu1RWQwdOAm7WyAjCrd38grKpn/B2x37ND+zjNWmekL6rg2hGRg
 CJuixplSaRc/IMzFPxHBEyijWjK7fxJbhOgtPivvnVlh3YmPPiIJdcnvXXMQ+xKhZ4Ww
 gbQ5dZANHj65rDIZQPiAqOzLkfTV6p9Hr5S9t2XXkyvG6NZqIPoHQWiQMc+2LfIrKX2R hQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3dsvmjh49m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jan 2022 08:49:44 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 20R8kZZR087279;
 Thu, 27 Jan 2022 08:49:43 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2047.outbound.protection.outlook.com [104.47.66.47])
 by userp3020.oracle.com with ESMTP id 3drbcsv2ga-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jan 2022 08:49:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VdlCEiwb+I3XF2ytbMIHSNz5w5nqMpEumf9OAUnNQCbQB2S1Qlz39nNxK2XNi+gx6HwpAnyCvzeyURUCZ9888/xBUK0y8PCI9/BVK1Jr+dAMbK373oLi9O9ZLMcKnV4UQjSxl41tzBRYONzowQmGq1nkI72bIJaY7o6x4ZlaM9jY+g/xK0XQJTaDg34yOMhH6OvqMr4AafQmTsl58DIqPUngwh9fMCL3hd+P/VroPvwohhj7WFvhQ3TFavCND4XtwPS1dWG+wgaBzW98DQSoPSp/nEc3tESrlC01ojnM4VieduWmQC58OuzUBn1nVijS6jEm4nIwF22Le5A1raLpmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HnwnUayK196dK1Tu2SsSqzTQhtv/5z+PXyomm4poedQ=;
 b=GtNBMBgt2j+wBEwM9wtKeWBYmZ+z/ZY1tdFhDm/aZ0OCHfe776lI27H3qAFpRRW9J6Q2yuRLD4LjTxrB9K5V51x1M5Tr7pyFUtKk3V3/kZ7an3ALSHAwPYakZcp1TddRLQpt45HiPjFy4zVwNFiPlemJMXBUHbtN7VaKoDTwFORMouXKUCba+CGE24NeKElHHwF5flKjL8DqnMQf6xTUrqMrGMCgC9GW/gYO/n9/nzk2BlSmtZWcIs8JSAUltVzz3xfUneyjOAuBjKYbNGxQffH+zFameU901c4XdcTIicBNBCit6azqQmGACSSz5bVFGF3BcTQVUqhlC8gXeJGJ7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HnwnUayK196dK1Tu2SsSqzTQhtv/5z+PXyomm4poedQ=;
 b=xsdSKZWcvhTl1DS+0ad0u019WIfvpo24BvqEGuNTyNh3iqUQgbJJPxb4V72hOJx4rdEK0eyDnoQn6tVtYtcYu/jmhVcgOAFuxdU3TPzQsVEBmeZB3KZQbGE8YBLKnAW2swm9G0rULiLPHS+xGqhYuvlX3xuhHm/t+EktMTFPbSQ=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by BY5PR10MB3889.namprd10.prod.outlook.com
 (2603:10b6:a03:1b1::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.12; Thu, 27 Jan
 2022 08:49:41 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::c13b:5812:a403:6d96]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::c13b:5812:a403:6d96%6]) with mapi id 15.20.4909.019; Thu, 27 Jan 2022
 08:49:40 +0000
Date: Thu, 27 Jan 2022 11:49:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Message-ID: <20220127084915.GC25644@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: JNXP275CA0007.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:19::19)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6907eda-2835-4d95-1068-08d9e171f4fc
X-MS-TrafficTypeDiagnostic: BY5PR10MB3889:EE_
X-Microsoft-Antispam-PRVS: <BY5PR10MB388957CAB98DEF16AF5816718E219@BY5PR10MB3889.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:923;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VIIG/g35o0O2hhOeu4xgWeQfaPC6dKyXA4Wy0CMovQuO0wOIVDrUQOsoGeDcJ5Cq2PM8BN2xrTPvmXGG5TjQ5MrdTWXNrSkT4HTPTm6IO6pj1JCqqwwmubkI9Z8BupKaG9O7sNbLNr63ejVTqndWrIJj/DJmzOSatlqUK1idMZ95vRMNrJQpl/kkjG0cZ8Z7lOqNwFlKkmN0ZSuezRfNoI6bnelRVgNgAjxJngoIsAi2AKZgZUYBLd6evX7Bmy80DOOZhiAIVu4QGYvUxvvT9IVUOJ5Ak+gN0yordNH+iDiir7er8jpiIkgaSjLkTgjAWEaEqkZn/iMU6XPMJ1ydm8BZiwQ53dX8XPaNNafWOaVd8pEGfgqSnf+Wma+gLLzufspopV356W1C1rA1wwRkKRRtSlHhqOT42Bb0pZLQ0xjWtaZxKH32+lgz7RGzfjVoZ8GlhoxS14ldOi5jKm/fOP6YFM/DfZIsKi5FeXVlGJ5WiC8MouToRwq+gxPS/nQEu9eTrtZCtBfP6EzcweMCJBl/FB0/SoXUvZJTvHaOYfQx38tItvKBSBYonUubo6+9NIVDSPWo2MvNqdbWkyGSEohoroBfmbSX7tDpiBcE9PxMaiUSX8UBfowt5UUCoIrVyvwlu91yDJJCaCn+YbZNlNmnJ6zogyWYn1SkGi6tvFJSyWxJLEOupINItNELyij0/Tu9r1dldrHky7EjW+d4AA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(366004)(4326008)(6666004)(38350700002)(8676002)(52116002)(44832011)(508600001)(6486002)(5660300002)(66946007)(38100700002)(186003)(33716001)(7416002)(2906002)(316002)(6506007)(33656002)(8936002)(86362001)(110136005)(1076003)(6512007)(66476007)(54906003)(9686003)(66556008)(83380400001)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?O+ZoBL1fQdanFAq0kfkoSMdrSmb3TCqjqL8iMuzU27saCmFeR0zM2V8ODYbA?=
 =?us-ascii?Q?cOhhDdQhfCPLbawyTUn+q0u6axjy1YuEIEkNg+q+9iJvaDbtTPbH4rO5OIxj?=
 =?us-ascii?Q?RBo0hsyHWKLd/W9c3dBTWgKjHYrGdpo8yw/dEyQLxYO/XOE/KZ/vF8BPqdZp?=
 =?us-ascii?Q?/a77Jxel4KYfJnVHy56ZRXoqaFXDTQtwLU5w8YMk4ur+2CEyrHEN/6D8GNfy?=
 =?us-ascii?Q?lmcJa4ltWyEoEp7vX0G2ERDm4iqP+Vv4zKGAmyi9P2iBxe3OvT7vox460gkY?=
 =?us-ascii?Q?ErydPUUfT18UU+GBOBD/ef/HWvWR9lik1Y0PwrvzsuPrCZN2+fT+PLY1xK/b?=
 =?us-ascii?Q?B1otD3Pbi01TM9sXc/YhhsKAFb4J8V62VdrerC5H2m99BNI8+D/ZKRnDKHGi?=
 =?us-ascii?Q?JmDAqgctUJ16EE32kaDaouMn/M4ddWI2eK9auO59y82GpX9PncFHM1tgrbZl?=
 =?us-ascii?Q?be+loGrY5KH7rj1rXQ1/yxOlOZnWvlet3a8WMHaLwq6K/tSw8JjOwMy+0F8y?=
 =?us-ascii?Q?0N51VFPQUo9siU0MOOqmrSvR/lgBvfs9hEmj2vRra+Li48X8GrcOuuN7czKt?=
 =?us-ascii?Q?0hbye4xLfFNShHPjt8l9H/DrA2NfHspEW75gdiks9Y2kw83rqYGRfW2D8eIY?=
 =?us-ascii?Q?2ktI3tYX7H54XdK0q+d8h1HSoO7/0P0FTavuoy5/dhn+yakh2k7OvyKIj8/1?=
 =?us-ascii?Q?z3nmIS/jYwmK5uStplvBu1zeOk5KrUrSjL+bCfZk3av4iIXnO3yV/hwXbZ9Y?=
 =?us-ascii?Q?L1u9PDJXCRlewkkkN2WvC5z4co3AXdOUSOen/DCftC7QgO4+ALMCCwZYcnnr?=
 =?us-ascii?Q?fCocQoBco2FEt2FfJte5t9cTC4vKGO+IZ2Mr7Wyuh2tL2iYYIMoD+2iFjp+C?=
 =?us-ascii?Q?ElK36CK43Kt8X9SIHs/6QnHeOrsHZnzpou/QX9NhGTH0fcdrrCfPEOM85XLe?=
 =?us-ascii?Q?GiUwKKNGSXfri3Ica417wZXEtg9U5I/3uFAACI8Rrg/gcST0n3KjyKB7LNkI?=
 =?us-ascii?Q?o4Efiw5Zcv1DWLx/FM3ENW2t+Xp85LwbVLdSrea33UYfbwRqDb7j/UYO6R8F?=
 =?us-ascii?Q?MVvT8dJYl2NBahZxlWpWKOGTWj3V+r9fbZ0gsKkgUy7NTjmlS6L5mnr+BFiV?=
 =?us-ascii?Q?twHh4mjYWXyfRYGQuLg/UOXw+CRa1DWzSWhytKR5D2OijtVWfL03ru4XGmlo?=
 =?us-ascii?Q?vKyqbojMyj9kh9L1Mlro50SJGj8jm2KHTIsoxH7nwnWAq8BLTnTt6FxOqeq0?=
 =?us-ascii?Q?5pr3u8wFHB97vofgfxz7hfbB7AyNvwxwoRlJ1RkGqOw0BWMyvs6aAYVIX9eS?=
 =?us-ascii?Q?2kjEEPxKX41a62xxPT2glS3g5wm5CL+vR5UWqZisYmImLJLGAVWvEAA7qkS6?=
 =?us-ascii?Q?RhFOT0wDd1nIaHZp4b8zGGgiQL7ECfftuaQEaTjKV6J2Kk/KWwLxBer1oUll?=
 =?us-ascii?Q?hc7QtlIALp3z/WkiXcdzy/EBhRIrmbKwtQHTgnqZENrw7v9UEMw1zJCHQ22E?=
 =?us-ascii?Q?UDcHSjVBqRNtWdmLeFqiOMHfC8BQrCaYlUhixOZyREBbCjdQ75rWdIPttqcy?=
 =?us-ascii?Q?9063knxtFXjietig7xG/Bt093bqtyTxuibs+T4Wi2WBYNKdR0MILacHtSkO2?=
 =?us-ascii?Q?lpAMLwAOFCSxUCI33nX06EVdLPo2pZRJI5WkRtrjN/lR7fab4nqp4w33EQuy?=
 =?us-ascii?Q?Du/URPvJeI9vIZR0Elo2udc6xao=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6907eda-2835-4d95-1068-08d9e171f4fc
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2022 08:49:40.8443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9WdB0oeItSA65I1/C7O3BaV3i/ziMA2gvPQzbLE3ZY37wIOWQ8MyTkyOMik3DhnsWaY/uTcWtZsra2xycETb67TwrMNqR2j9VrLTLike8KI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB3889
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10239
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 malwarescore=0
 spamscore=0 phishscore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2201270051
X-Proofpoint-GUID: q25CqzLEuU2M_eSPXth2rD14FtnFDyeG
X-Proofpoint-ORIG-GUID: q25CqzLEuU2M_eSPXth2rD14FtnFDyeG
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: fix some error codes in
 __cancel_reset()
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
Cc: kernel-janitors@vger.kernel.org,
 =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Zhihao Cheng <chengzhihao1@huawei.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There were two error paths in __cancel_reset() which return success
instead of a negative error code as expected.

Fixes: 4e6835466771 ("drm/i915/selftests: Add a cancel request selftest that triggers a reset")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
From static analysis.  I am not 100% sure this.  Please review extra
carefully!

 drivers/gpu/drm/i915/selftests/i915_request.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 2a99dd7c2fe8..05e9f977757b 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -809,7 +809,8 @@ static int __cancel_reset(struct drm_i915_private *i915,
 	preempt_timeout_ms = engine->props.preempt_timeout_ms;
 	engine->props.preempt_timeout_ms = 100;
 
-	if (igt_spinner_init(&spin, engine->gt))
+	err = igt_spinner_init(&spin, engine->gt);
+	if (err)
 		goto out_restore;
 
 	ce = intel_context_create(engine);
@@ -838,8 +839,10 @@ static int __cancel_reset(struct drm_i915_private *i915,
 	}
 
 	nop = intel_context_create_request(ce);
-	if (IS_ERR(nop))
+	if (IS_ERR(nop)) {
+		err = PTR_ERR(nop);
 		goto out_rq;
+	}
 	i915_request_get(nop);
 	i915_request_add(nop);
 
-- 
2.20.1


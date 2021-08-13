Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EAA3EB492
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 13:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B25276E5CC;
	Fri, 13 Aug 2021 11:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F7836E5CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 11:31:40 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 17DBV4HF009313; Fri, 13 Aug 2021 11:31:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=/8Wi8/a4u97HjXL7jsD4JuJ0gcG6wArI/9kZsgUdong=;
 b=bVSM7ncHQWSSQCm1LZNImrGzp3H9L3a+TveF4mibuM2rrt+OGhEigw7428Eo7kHp15CR
 361WSuFRPxZnGW5sb4yYkrBebSTmkcSlB2c4NfA3Hl51NrkpgYeE9fcmIV0aMAKS1w0Z
 ajvRTuKyt77btU09T/R1CWs+IdVIbkLxrXqrAartMXCjbqaqVey44s0pGflYZxB+1zpd
 ew/Y2rWTxyQOlqbBg9mkpxP8STYXhGbcrXce/+qRO89Qwuj7oJRVJxDVzaAI2fw8aQC2
 Ts8Q+Xd+PNEjgqfgwbpGEzjmXLKYa6wEtr+QMG1fn+b2Dz9Du8oRMUX1Y+bL3bB+PcBQ Fw== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2020-01-29;
 bh=/8Wi8/a4u97HjXL7jsD4JuJ0gcG6wArI/9kZsgUdong=;
 b=OIfk1ZVYOfhwHrNM10+VeevxBU84jve7xESvT5SaJ/eW2u1C7eB8Hnh5XPV32SxwbLho
 DVCGWY0WCjhd2MWiZwYSPuIucCma+tgzy2GX0HnTSmY/maMLh+H/qnt16d9zX/PsJOZ9
 pga+4P0Ad4oNUvtXq3MvEDLDb9IKJImXF254s48vyZg0idpicvpeWV2dEeeLUx1RPUPd
 6bbZB+krhu6PJpHaKKyNEEBVkcJmB+f83M5EoUkU87RUeW8pCMMg8gjb0P0Zj9E0y+57
 SZIbTsYKXGmyCq7CbzgkEI3PJgCLTqRO13+kl19ORrmBzaWy+a9ZirdojH1wCz3zRR2T kA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3acw9p359h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Aug 2021 11:31:37 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17DBUTT3162925;
 Fri, 13 Aug 2021 11:31:36 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2170.outbound.protection.outlook.com [104.47.56.170])
 by userp3020.oracle.com with ESMTP id 3aa3y07paj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Aug 2021 11:31:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dzwq27T9z05vMWiOnXXvOAOhCDHHkYiR9M94Z9445/B5w5MxWbK08X2Xv1tp/D658CSKmNcnBtP1UeX5lYFE2sVF4+pbsmUYtYakY0ZXuJBgmOaS2267Go2eYVewexY8N9eDyoDEemct23/sDBf87lbkJI7/TWgGcUXLEU6x/Bx11+9JAKR40gp5n0DYvIcFTggoAka3rSTcRAZRnKal8m36XGLDlO32jLuhJC4isoW4uaqWOyngaqsYW1bnr8mJqzellYs/qtv4PC5uTe8KMYF5eP0ptE9DPE/HmCpg5yXbuh5q4g1Yg1LBMtUH8RVR0NoloIXffli4H/ntnvASow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/8Wi8/a4u97HjXL7jsD4JuJ0gcG6wArI/9kZsgUdong=;
 b=YdJpdKA88B4hpiniY7SO5qbMoPMarDrUHgPGYy2fS5GSrEzhRa05sNSltJDfN4aerpi1MkfaSOneXHyp8HYXvMCzUWw0eSXQ1dDZFBkinMxlWJDF3EoA96D1lY7yvdt968mOnvcpOb+gdqZz0QwUtiL5lZFihiI31GEmQoBbybkMjxq6rcN1ZwhoBHUt14/R77cBYTYQRlDOpZlYZcUYR/8j3lNfz9OmKcpzDv+h/RQA+zBdg56z3aU7LnqzZVROw7/NjwWTE3OUBLAkaZCdP+jNNa4mDmu5pXw6+Itpnm8cSt4HCsf7NQzRXypK66Md9OYMmCNpEIvtR9f70SzJSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/8Wi8/a4u97HjXL7jsD4JuJ0gcG6wArI/9kZsgUdong=;
 b=C74JQxJ2yB/onjDGBwS159OEA+m5M5UekIrQvE0RDrY5a4/5yA0SglZ0b1zA4BF3LHsyXdBYLRRG/4g9nEq4Gb4RnBhaVdH1uNiw0Y9lDLrj0pWHjsFgmXOjy+SQBQ5zmmtiw8Wgm04WGFZZWXS8kJk5I7w1aBsByRS7hdnGCBk=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none; linux.intel.com; dmarc=none action=none header.from=oracle.com; 
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO6PR10MB5569.namprd10.prod.outlook.com
 (2603:10b6:303:144::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.15; Fri, 13 Aug
 2021 11:31:34 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4415.019; Fri, 13 Aug 2021
 11:31:33 +0000
Date: Fri, 13 Aug 2021 14:31:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: thomas.hellstrom@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, Nathan Chancellor <nathan@kernel.org>
Message-ID: <20210813113120.GA30489@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0159.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::8) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kili (62.8.83.99) by ZR0P278CA0159.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.13 via Frontend
 Transport; Fri, 13 Aug 2021 11:31:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb7e38ae-d340-41a8-6e4a-08d95e4de734
X-MS-TrafficTypeDiagnostic: CO6PR10MB5569:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO6PR10MB5569F3B0D806777092C6A83D8EFA9@CO6PR10MB5569.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:200;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SnZGrclA1UuJ7RUUxoKXifCTBxYnWtJtRwtAGWTb0kLXSuB2vj62YARUDHLUP89M2o9IZu09XnmE9WBizfhqq/nkqv3u13t2C5ZuRvDpTVOAzCh4N9b3QRXNPUa6BsYYIhD4WAmgQe1ZSByWmQi5grNOzRBObhLmpaSTWy/SBHrQszzjJ+eiQLrn8yo2Zh/7sQAbOXpqH6+dLrRPR0DoxG0sh1qG9yWi744cgEko3N+Zf37cA7vPLnZSaajUff0EsAkx+RsYXbrelWFtxBvZCkls8gNAXr22Pr8p0LqEQyd2Cu0IsE5xJdSRAYPuK64F/QK5+NObpqIylMsxuLxdV4sEJff3JSVAPVwZyg7utTohBXrLexhTqpsF0WJFR6VhVMTCmJgcgbdy8s8RGoIkmmTt22gbS+DWMHHY8oXLJyHUN4lGduQe/Q5RHnmIOqB1yIqlK2SGLKeWnW7cq/1YCufukWYvF3urKKQzz0sBqBtC7sBUVxEVxpO1cIBXz0JxSv73Jo56wl2H9QHq48FrUWGQTF0btdITO+ZP26lvsJ+laj1Oo00mYPup6J8T2aiyvMbv8vHsg+ew/OKTH8oIDbJ29d20JwxLMq1t5Gkp6XpEOx6bxCKkZZ4y/24mME26TejDzu08Aa+yqKQ78thJghAl+AZ5KplunCcmEs2cR9+IIT0HyIEpUGBelLj2cIQEPe3Zl7S58TKKZUbLYEI1Kw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(136003)(346002)(366004)(396003)(376002)(9576002)(6916009)(55016002)(44832011)(86362001)(9686003)(5660300002)(316002)(4326008)(2906002)(33656002)(6496006)(52116002)(38100700002)(38350700002)(6666004)(186003)(83380400001)(8676002)(33716001)(66946007)(66476007)(66556008)(956004)(26005)(8936002)(1076003)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3Uwk1+ytwE5jvLnFX5xh96w8fGqzoMEVZZFmqKoOltkwoavSe0SaL5g1ZJ4C?=
 =?us-ascii?Q?bJUnykwnJgu24n6mbYn/6j7XZCnFKTFeZWjGXBIqmSeQ0757vgZI/cZ1UeKQ?=
 =?us-ascii?Q?EgIiHchVztW/gKzPtzdkVo9U3BoaqY0G8Bp5r8BwMt6qFORpe/OXK/n9Xxr4?=
 =?us-ascii?Q?0zqFZQWIExCrzi1IN/wO0+qdEbj8vdVGxeB/CCCScT8qA7FA7aMPza3ED6fZ?=
 =?us-ascii?Q?dD//a6YgZjCPQPJYAWfhIHz5MyY24CJFAwkaRDti0W6O0o02xcgBmqLpY4zz?=
 =?us-ascii?Q?4y4sPP40iUAxV56+UOB3C5DbW7CZWLu+8v8RUXPPEplAjMPyJSda/n8ZQT2Q?=
 =?us-ascii?Q?AmsYRpxFa7jkM8YMFkJfKEuWaglWyB9bBAwmEcmWceQ7efDmLfiVfOs5kWzx?=
 =?us-ascii?Q?S+rQgApD01z/ZoFzf0/42nZoun/rOKeAhXtTX9CF68YlrlqFeorPLfSkUkdl?=
 =?us-ascii?Q?IETeO2vuekwm+JBbj/kH0LtgjjyH/pVID6dm/tVPuH5uB8M5Q8ke6SYll7fU?=
 =?us-ascii?Q?rNs0EFihHVVa4429JkU0fi3vcTwxYxJHDaRR4MJXx5gDMWLEPV+rHdSRBkNl?=
 =?us-ascii?Q?jFB/DE67G1zSb3o2kvvnlV6Q8eGlPY6XrE7LU4mt15qfgtNK/r37JKp+DAgd?=
 =?us-ascii?Q?m1vb+/R0n9NzyWvwJSfOpbCr3abGn8fNhDD17oWpGDEZZzwSvziOxDYDWQMn?=
 =?us-ascii?Q?tU+fjeVxO5UbyDZQ2o1rnx45m6ay9366bp0+SwqjJ6NFwhciG8Ug6bk01Sja?=
 =?us-ascii?Q?0YG/rik1QuIja8Gz3Iw6IX/wSPimRu3/nUESe3HX8/3mDJcfRxLziwMmU9zQ?=
 =?us-ascii?Q?DRJ2PZey5Eygi4TiUrvCWCRaf+RMl06YgEIFkG+evzNadddNW2Ww21K7u7pY?=
 =?us-ascii?Q?okxD5+4Uijdr/62CtYuAzgBDeZjs7VYsuyV/XFlTBsC9Y+fvRii9vWEVMy69?=
 =?us-ascii?Q?ItIoELvHwB5R6W7RRgYy/1bch48hYqMloyPFBR8LmHZv4p6j3k2zoYZ6D0yI?=
 =?us-ascii?Q?6fzhvaLK4D1sFxk+Shq8XXNX5zda2BURI5uuW5z6EhtVaf1W6K7lp2gz0hq3?=
 =?us-ascii?Q?G9sPCD1opXdqr+yA5NeYDY9x2E/0MWTus/ar4L0jGsJOA+PWEGLfMTfwRnyx?=
 =?us-ascii?Q?Xj0htEhCtrrxPTQQ7UJM0KqLf3oYM4GnzGMw/NL5+xWCnG9x8tovS7GGjlEN?=
 =?us-ascii?Q?f5bO+TSfG/E3ddEu05hZFJSj97eXyb9wzHiYlh+MVufoqSKnp4oRvrj4e04z?=
 =?us-ascii?Q?z+qH/89gBaFK+CitBp06Wo/h7qtiYRbo/B+5+Nub2DKm+SrII00vYYoxnUab?=
 =?us-ascii?Q?S8RdQHC5b2AUTBhGMA+XzaGM?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb7e38ae-d340-41a8-6e4a-08d95e4de734
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2021 11:31:33.8219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QaMugqiSDlB8LMoK7nPJwVNLW9Haz/0Vgs7Nig+NLEKQlOqY6BikDElinPTWlqLMGb75C1Nr54u23Gl5VBT/TvTQliKU0flrzegtv9y+3lk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR10MB5569
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10074
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=688
 mlxscore=0
 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108130069
X-Proofpoint-GUID: XrJOJ8MHoCormt30EmekBqFB3AbcfxdO
X-Proofpoint-ORIG-GUID: XrJOJ8MHoCormt30EmekBqFB3AbcfxdO
Subject: [Intel-gfx] [bug report] drm/i915/gem: Correct the locking and pin
 pattern for dma-buf (v8)
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

Nathan has probably already sent fixes for these.  Nathan, could you CC
kernel-janitors on static checker fixes?  That way we wouldn't send so
many duplicate patches.

Uninitialized variable warnings are really frustrating.  We disabled the
GCC warning for them because the new GCC is crap.  So now they take up
a lot of my time.  A few of these are because Smatch doesn't always know
when we enter loops, but more than half are clear bugs.

drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:189 i915_gem_dmabuf_attach() error: uninitialized symbol 'err'.
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:80 igt_dmabuf_import_self() error: uninitialized symbol 'import_obj'.
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:104 igt_dmabuf_import_same_driver_lmem() error: uninitialized symbol 'dmabuf'.
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:138 igt_dmabuf_import_same_driver_lmem() error: uninitialized symbol 'err'.
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:158 igt_dmabuf_import_same_driver() error: uninitialized symbol 'dmabuf'.
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:231 igt_dmabuf_import_same_driver() error: uninitialized symbol 'import_obj'.
drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c:197 igt_lmem_pages_migrate() error: uninitialized symbol 'err'.
drivers/gpu/drm/i915/gt/selftest_hangcheck.c:465 igt_reset_nop_engine() error: uninitialized symbol 'err'.
drivers/gpu/drm/i915/gt/selftest_hangcheck.c:580 igt_reset_fail_engine() error: uninitialized symbol 'err'.
drivers/gpu/drm/i915/gt/selftest_migrate.c:102 copy() error: uninitialized symbol 'rq'.
drivers/gpu/drm/i915/gt/selftest_migrate.c:113 copy() error: uninitialized symbol 'vaddr'.
drivers/gpu/drm/i915/gt/selftest_migrate.c:182 clear() error: uninitialized symbol 'rq'.
drivers/gpu/drm/i915/gt/selftest_migrate.c:193 clear() error: uninitialized symbol 'vaddr'.
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:819 __unwind_incomplete_requests() error: uninitialized symbol 'pl'.

regards,
dan carpenter

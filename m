Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C65B1460F81
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 08:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A3B6ECA2;
	Mon, 29 Nov 2021 07:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D89A6ECA0
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Nov 2021 07:43:43 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AT7Y7ok007906; 
 Mon, 29 Nov 2021 07:43:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=B9T7HK9Wbkfel//dSwv5ABE54DdKnseLlYdQ0QnmU3s=;
 b=LBiejrXvzeT89k5BDaqRAZHsMsbK9wqApXVKu3iOfK4ShDaswf80VeejMcUNZsWtui0l
 Bf7r7zUsRhNWqQCdn/9s+uz2xIvbedzYOxC5cBOikGYeTvjaNIVB+KQc+DLQVudtRKUU
 z0WcWKJ6qQfg0eVxDsi8YahuZsasphmufE86dKn2nEOEuUb19VgiIogempDsNBxhXTEd
 GMkbKn2fecxDknzBE/QpOy/aPVULOvC8mpxjBa+t7rB3qQCgJQp+AL4zPoeAXe1kFKFZ
 EqoLdPYKRp9AdNiLHHKIXbMXRdpDZN/z9BWRkoYA/TjMGuQvB/R7Q9LXFPDtLjM1V/X/ Nw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cmrt7rfhg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Nov 2021 07:43:41 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AT7fgGx068037;
 Mon, 29 Nov 2021 07:43:40 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2170.outbound.protection.outlook.com [104.47.59.170])
 by userp3030.oracle.com with ESMTP id 3ck9svspn1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Nov 2021 07:43:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GwBlFUv6tv38zFpI0KTJ6j54mBlacMdZuyj5WKoB0QptLYuARzePXjzTnQBiXXQQnuIjmjPCLk/Ri2excpHdWb6fqTeGEvxtzUVNFG0UzwsA1/J9d4lRN13Hv2BrLEpdKiFkQGjrDKjSeuL7zJ/gXRzJQfJuz15ICWuMLlc3c/RmH7AFUn3kIKGL2Neu81VSR1GdjE4pmmclyeKPTICosULO+Hwx+ek4FVCplS4i1ewvSC4s38gezPAgOtTU4rgadyMBEfApxD6vYbWkY59Lo05Jj3ScYd8jExZHI5GNRmjx/BmXM70ISjji0nlwQn5eIC3MV5xw8bZO1P3A8P/uDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9T7HK9Wbkfel//dSwv5ABE54DdKnseLlYdQ0QnmU3s=;
 b=jUPcq8yhafjrqqhlT2gcPadPAy3y4zVM5OVUmk7SJIeC72QhFCJMvqItb4wSU09jqf5IvSunmNUZhVSA7q6EzRlCZ98kMsJB47Ge3Hp6hH1t+n+t8c3Q/FEjLFTKSmFdqBGfyFVgV67k4d0Sc1PuJ0JS2R+1TdStoZjz1SqJj0rYeTZb0QoeDoUKB5HKSldiQlD8BQdLk0HiMBjDUWCZ2mdlZ1JQzu6xo8LtttSK9PA4E4cEb4/kOUeh2jfuVe2OLLIowxT4hCKk/hOB6tf5wIAwjc86SGmpdeiOR2CxXFRZPOQ/6itKF1GpjeZtpngFJLX3Hcm8M0ESze6mZ4c2eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B9T7HK9Wbkfel//dSwv5ABE54DdKnseLlYdQ0QnmU3s=;
 b=FbKRYkN0v+swrpGJlmH+uhab8EDmplxVXpfR+kfvh1IqH4UFnV8gZC5oVkiEO/89y9gbbqM5YBpKR28uxtpkZg1j+4hyQZ483F+QF/g/Yh6TqmgnOCGdlsmpQcoABWVWzCnRod6QjAYfiXpI6vTXv/lNnjnbj0spkOpBY620Nco=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1246.namprd10.prod.outlook.com
 (2603:10b6:301:5::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Mon, 29 Nov
 2021 07:43:38 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4734.024; Mon, 29 Nov 2021
 07:43:38 +0000
Date: Mon, 29 Nov 2021 10:43:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: maarten.lankhorst@linux.intel.com
Message-ID: <20211129074327.GA17913@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0027.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::14) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kili (102.222.70.114) by ZR0P278CA0027.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22 via Frontend
 Transport; Mon, 29 Nov 2021 07:43:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 33b899cd-29e9-44e7-c99a-08d9b30bf493
X-MS-TrafficTypeDiagnostic: MWHPR10MB1246:
X-Microsoft-Antispam-PRVS: <MWHPR10MB124679E0B79FE2B55A7C6CDC8E669@MWHPR10MB1246.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +TzYjVLdyMAmwB86lP0fQXgaLV+FpZlRBe0gA5O0wdAtUWCABy10GmHTPu+ljaFQwV8XQa/gNdrod+ltgtYZrbK4DLYKSHt/kcEXavqY0jYlLgxj6lX45RhyTg5ntKNW8e9XLPfWgIqSgjfVkNa3lW1REwyrZjS8OeJcl0MvbU1e4vWtrOE+pBX8ExsxcwSj4ZYYqDsT3Px2Uy/IoX//f11DLCa++V0HEc0VOvgOl0lRyhFHpg2/Q+YYY1UxrPovUDWfU3Js3XUF1den9zXeLRIn9jHQNPtYaCW3O7Q8SllqdvBUkY0kPCWOt/hUx6qKMAuJ82TA1mTjybwn96YsIIk3xoaxetsDNpEQWk6flhL/OjYtCxRA2QskopuGNom1Ayv4078dhSAx7VRG2WlFQpCBRIoI1ClCeDrRXKpDEYY6IF6B2klaSM/b9/k/YLepDgnrBf763WgiEY9lrdvhxQ3qUhH6pjnoreT5k6CjygzBcSo7qIPfZ9nOkZ/DuSkJMsU/vRYFZpaTh2z49cpIuZQIXYwwtmNjWcc6de5ro/rsD/ONFBcdBwm/gJ1qb+T9BemX4Ed5zOH4VfLsIapMVGgqHux+2T02xLCtRihsgGQvjAk8no9oAt1CS7pqm1nSEGJNlmNSe1N7qhCQTYt7HNQPmNPa/nUO5LylztLvAi/PJC1u3nKQad9tIM5FA/TW3F79JfRzHsb1GiEXcH9WSQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(9576002)(33716001)(316002)(38350700002)(38100700002)(83380400001)(66946007)(8936002)(44832011)(6666004)(52116002)(6496006)(956004)(40140700001)(66476007)(6916009)(5660300002)(66556008)(186003)(86362001)(26005)(33656002)(9686003)(8676002)(508600001)(1076003)(55016003)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1ThXGMs+Mt10Ry+WZED5/otlOFNRMhs/ffMPRo1W44+xpgfeffQz6nK4RwYQ?=
 =?us-ascii?Q?yDIRPo9VaFV5GUdnLPlV85T8c/rgwWuV3u7kiDIvOp4KZEGwhbfIahwQbQ+0?=
 =?us-ascii?Q?smRrPoEEP3oudKS6GJenVytu2x4KmAyVyhKWfwr78+3QjuXIWqlZKvU9qbod?=
 =?us-ascii?Q?fJxdP73NZoPI3H/AF6qKI+SlI8ARMLSsf3dGQ8W309yWd8qlZXwxTB5nFwAA?=
 =?us-ascii?Q?kuqHKYpBQgi2DYVeydtcPUaN2TUDYl5OsNgXGJKu+8db9fuzhCq+BsMkKcOr?=
 =?us-ascii?Q?O/vyRwEcYtBwctL1DqsUs3qRIWWqlx3LBqdnFmySQrvoUG+uKOq5AHic7rRq?=
 =?us-ascii?Q?PPeLm8zW2OO9ufmwszgH+LxL1ph2/Bz4fYjfvAediBY9ug+62l/DXp8gU3If?=
 =?us-ascii?Q?gzjQJihhOhWnUIQxpASQJ20giXhcNt4fZuJpgCLjN1ErlW+QBfdjy6F9h7Cu?=
 =?us-ascii?Q?QSyj8tBMvyEal5RsW90yaFBx2212I9wmtxAaT121jjeePx0A/cN0jeGvin42?=
 =?us-ascii?Q?WQl0I1mOGAxxXHR3krGPGhYlnsblUNDqvYkN+7M6j8lkx03gvmvg3e/dNslZ?=
 =?us-ascii?Q?d9lA1c11aWyvq7ERWOOAZSoKoypgnnmyX432a3JRWBSRyE1wgKo4j6UdqTmn?=
 =?us-ascii?Q?Goi+lc1yDOInhpI9IXzK5Cl5pCIL5ACBZSL7PuhL7/0bEyJnek9PIYMXcvy8?=
 =?us-ascii?Q?ujQVOYfhX0u+4EXdhQ7ceXzzMk9H04Mjmy8IqZyuGRBkyWUqDBL6GXgmhPdj?=
 =?us-ascii?Q?qezlhgooVRcb8u5Pnvz8bJIm0PvjgX0UwZCFIAyOQDKQ+2jJTtwV2hlujOyC?=
 =?us-ascii?Q?d9pPoSWqO1GuuD8sShjSa9MigoFYDQQYZiri54/sl4X2BI4MHD7DseBetBqA?=
 =?us-ascii?Q?5jJ4m3cT5k8oog1zEGfEEDagzNZ9YmpZzLVyG3LvapwI1r99srd638U2lPQh?=
 =?us-ascii?Q?zp0LLt00ZqcG/7lhA44IMuwvKt6scLzgYP35ZfdIMzKmZS5qJG1BhSyzwzSn?=
 =?us-ascii?Q?EAr1gykar8CKb376IU7EVbjLOwgaXcMT7vewylvPKepnHFlb7FJdaJUjyeTv?=
 =?us-ascii?Q?jlxRwLs6tKGEsUyYedB+Wh9qmTwUjJm0aOUFz//cDj13B/nI53Rjd3N0xXuz?=
 =?us-ascii?Q?jm/npIdGEApzP27bJuKdQHv9WzSQRV/J7yzID9H3YhrcgWAnar4K/nMZagJM?=
 =?us-ascii?Q?F/7h3/sLRKQ1Wge3XFLBH0kJ7ZoGlk+FPU2LcmwU71SlhYvGyo5jaU9XNwXe?=
 =?us-ascii?Q?2HEN7I18A5nCcIzopXK4RjPzuRsm573+t8fffyjcT9ye1gjX52F7zUAA42dM?=
 =?us-ascii?Q?A+30brCcm32WB78kqMTwdr0zfgoB9HAp271ZupWVphAKMlVYcCjrnlgWChTd?=
 =?us-ascii?Q?uQsTUCY57arLTunghpZI8GY9HbUk/LCEFwPdEwXXyIqLzCOURJ6xa2d076cE?=
 =?us-ascii?Q?OfrLxzWlbEF7ebDaOUM5yKLEJph6Vbq+hQAhzyWEb+hGbRYHfu+YoVVBeq9u?=
 =?us-ascii?Q?YxHESixhmD0HIwDaSzGOteAj4JV/0g6uK1DFvRSsfIPtUtprc5AQ11e1RB0+?=
 =?us-ascii?Q?xmaRKQa/VkOZHOexigyxwvbD07jlHii+6equ/6zWIOZFftqvcShtZp20MU3E?=
 =?us-ascii?Q?I6t6LE+3hjogxRuoEARBzL/DVH9fy6n2d5Ttv2G33GUbR+Y8feE+pmqkP9X8?=
 =?us-ascii?Q?fC59ljTFk7RMgPWsoOgKwI2CgIE=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33b899cd-29e9-44e7-c99a-08d9b30bf493
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2021 07:43:38.0163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FexCfJrdpyd/ti3Gsggn+l6zqjBr816Jk4icO8w2F8lOPh9ovIxOTXBRDrhPq2pTNoiOKgb1Eso4DgoI58A5Anjslaf819LYGtbsQn4AWXk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1246
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10182
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 malwarescore=0
 spamscore=0 bulkscore=0 mlxlogscore=893 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111290036
X-Proofpoint-ORIG-GUID: r3mYiLf3jeGcT9CFCufxsEiJxV31hApB
X-Proofpoint-GUID: r3mYiLf3jeGcT9CFCufxsEiJxV31hApB
Subject: [Intel-gfx] [bug report] drm/i915: Add support for moving fence
 waiting
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Maarten Lankhorst,

This is a semi-automatic email about new static checker warnings.

The patch f6c466b84cfa: "drm/i915: Add support for moving fence 
waiting" from Nov 22, 2021, leads to the following Smatch complaint:

    drivers/gpu/drm/i915/i915_vma.c:1015 i915_vma_pin_ww()
    error: we previously assumed 'vma->obj' could be null (see line 924)

drivers/gpu/drm/i915/i915_vma.c
   923	
   924		moving = vma->obj ? i915_gem_object_get_moving_fence(vma->obj) : NULL;
                         ^^^^^^^^
The patch adds a check for NULL

   925		if (flags & vma->vm->bind_async_flags || moving) {
   926			/* lock VM */
   927			err = i915_vm_lock_objects(vma->vm, ww);
   928			if (err)
   929				goto err_rpm;
   930	
   931			work = i915_vma_work();
   932			if (!work) {
   933				err = -ENOMEM;
   934				goto err_rpm;
   935			}
   936	
   937			work->vm = i915_vm_get(vma->vm);
   938	
   939			dma_fence_work_chain(&work->base, moving);
   940	
   941			/* Allocate enough page directories to used PTE */
   942			if (vma->vm->allocate_va_range) {
   943				err = i915_vm_alloc_pt_stash(vma->vm,
   944							     &work->stash,
   945							     vma->size);
   946				if (err)
   947					goto err_fence;
   948	
   949				err = i915_vm_map_pt_stash(vma->vm, &work->stash);
   950				if (err)
   951					goto err_fence;
   952			}
   953		}
   954	
   955		/*
   956		 * Differentiate between user/kernel vma inside the aliasing-ppgtt.
   957		 *
   958		 * We conflate the Global GTT with the user's vma when using the
   959		 * aliasing-ppgtt, but it is still vitally important to try and
   960		 * keep the use cases distinct. For example, userptr objects are
   961		 * not allowed inside the Global GTT as that will cause lock
   962		 * inversions when we have to evict them the mmu_notifier callbacks -
   963		 * but they are allowed to be part of the user ppGTT which can never
   964		 * be mapped. As such we try to give the distinct users of the same
   965		 * mutex, distinct lockclasses [equivalent to how we keep i915_ggtt
   966		 * and i915_ppgtt separate].
   967		 *
   968		 * NB this may cause us to mask real lock inversions -- while the
   969		 * code is safe today, lockdep may not be able to spot future
   970		 * transgressions.
   971		 */
   972		err = mutex_lock_interruptible_nested(&vma->vm->mutex,
   973						      !(flags & PIN_GLOBAL));
   974		if (err)
   975			goto err_fence;
   976	
   977		/* No more allocations allowed now we hold vm->mutex */
   978	
   979		if (unlikely(i915_vma_is_closed(vma))) {
   980			err = -ENOENT;
   981			goto err_unlock;
   982		}
   983	
   984		bound = atomic_read(&vma->flags);
   985		if (unlikely(bound & I915_VMA_ERROR)) {
   986			err = -ENOMEM;
   987			goto err_unlock;
   988		}
   989	
   990		if (unlikely(!((bound + 1) & I915_VMA_PIN_MASK))) {
   991			err = -EAGAIN; /* pins are meant to be fairly temporary */
   992			goto err_unlock;
   993		}
   994	
   995		if (unlikely(!(flags & ~bound & I915_VMA_BIND_MASK))) {
   996			__i915_vma_pin(vma);
   997			goto err_unlock;
   998		}
   999	
  1000		err = i915_active_acquire(&vma->active);
  1001		if (err)
  1002			goto err_unlock;
  1003	
  1004		if (!(bound & I915_VMA_BIND_MASK)) {
  1005			err = i915_vma_insert(vma, size, alignment, flags);
  1006			if (err)
  1007				goto err_active;
  1008	
  1009			if (i915_is_ggtt(vma->vm))
  1010				__i915_vma_set_map_and_fenceable(vma);
  1011		}
  1012	
  1013		GEM_BUG_ON(!vma->pages);
  1014		err = i915_vma_bind(vma,
  1015				    vma->obj->cache_level,
                                    ^^^^^^^^^^
This older code dereferences it without checking.

  1016				    flags, work);
  1017		if (err)

regards,
dan carpenter

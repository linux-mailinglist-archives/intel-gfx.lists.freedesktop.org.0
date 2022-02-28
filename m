Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C126D4C63C1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 08:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9DB10E4D0;
	Mon, 28 Feb 2022 07:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1962D10E4D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 07:23:33 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 21S7JDQH026177; 
 Mon, 28 Feb 2022 07:23:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=yIffOS3GR2GgQOq+bYQbgcJP2TEO/sgwH2eEqY0ndEQ=;
 b=xAqNqwlYKEePfiruAHqxLKFfFoP5qdDST9GKLjHVciT1w6t8n78RIipMm+EWKtwQEqGW
 QF8nGpfhL8QyptG2Lmfgotk2RoB8DO4K6cm9ycb7WOxZU7sCZFp+zQ4OBCMnwVVz+AOs
 +ftqKmTrWS70hz0tYtMq/JAEgiuyMNohHva6fd3Mfm6Vmj7M2HwIuDX8zHnmVaFhbbwp
 W4hK5d+H3ptnoN3ptbLuLJw8G15n4r4q5ouZpwVevLbYkkEIXyodpCPLQ2t/fMJGfUG/
 3Ojp7iivR5gw896+mydItUDmknedcrJZjYnc/FNXhE0+aR55/qOFsmvyGlSU5juXQvvn bA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3efc3ab6rn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Feb 2022 07:23:31 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 21S7GjNa101220;
 Mon, 28 Feb 2022 07:23:30 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
 by aserp3020.oracle.com with ESMTP id 3efc12m79g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Feb 2022 07:23:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i618d4kOdus57UkTpvrX8VIK77g5ZzDojX6B41ZfNQdSy7XdyRTrtry7hgUk2zmWCo2vyeckrf7l5bN05ligCS8TldOjp/NArCZExnxnAhWShj9eRdzOpdV58a/Sp32ponnEFu34o0HgldVLafJ48bEZDBW6tf4E/DM62S8JbTrQqHCXhsRahL5P3xKcS/Rp+JBvnowOpYFVSfImZ48PGSk3IBggqtbsRWoDP/+jPvKNI4BApzOZPy+FGTqEkkzk5iQKLTgIdzJAHaotOejgnADT2O99nzdXr7ISBfXAUAWYxe2zQp9UpZDOOppVOE+ruP+uxn+uMdk1kDHFj+Jk2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f+0gSGgnI5et/aniaE36ZhaPTtsMAUQIxbUT947IlQ8=;
 b=N5jQx8fcUbqGeEpvI/XWFfC5IUQ9VnEVmb1xAhKHHGJUqZTABMTQyb4cGcJFwBAxXo55BhK5EKxySGHhxZBrERlqcBFU/WpD9e+zBia36Couxy9TSH7XZ1ATj1KfOOwYOT2AuCbHfZu0r/k/ZKBhy3cUASKDLEUfQl7Qp4C/EphRWePxC4N17bwoOj3AIBSlKeA6wA4eTRDGMCsK2UxSqZ9XO5DhQvnqiPjNwBviuizoxMlqEIPQ4arbVY/d5NXPK1ox1Nj/UG0JZwoBuwnZJ44ytpdfRQFhK2OtQs8bfgDk/efwnDT6vMXw0mA4bFMoa1ok4rAkZLdAk7xxAdk3lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f+0gSGgnI5et/aniaE36ZhaPTtsMAUQIxbUT947IlQ8=;
 b=SUCyo+JnWA4Dw27zZiorxgXh0RslFBA1+gKppXFmV41Ud/F6Q4oB1Ywx7U78pye2AMESU7MJGMsrewvNDYCJQmgHEKoyV6GY5jSPeDjqkM8Es1dPjUg6NO35M1sQub0j97fXu6JUuj2P2HVMMahwMibxx/IXzvMmjoruigDU5Ps=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CY4PR10MB1688.namprd10.prod.outlook.com
 (2603:10b6:910:5::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.21; Mon, 28 Feb
 2022 07:23:28 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5%4]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 07:23:28 +0000
Date: Mon, 28 Feb 2022 10:23:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: thomas.hellstrom@linux.intel.com
Message-ID: <20220228072315.GA11695@kili>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0077.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:22::10) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: daece9fc-47cc-401e-1181-08d9fa8b36f8
X-MS-TrafficTypeDiagnostic: CY4PR10MB1688:EE_
X-Microsoft-Antispam-PRVS: <CY4PR10MB1688732EF113C1A27E7DACD18E019@CY4PR10MB1688.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4s0V4pUMWf9v1RZJ9GCOd/XWVmGTkEE4SRfC/N5pfjvbiw+k1z2L/P8cAT+7nI33IXoF+Lujm9eeUjtZxKnt/9PVDW92msvxz9W17+Hyn/TEB48+vCDgXsJVdqaplYxgWTQgBHgtblKX9SUkljpCsw3GuS/c31hTXEeucrYXf2j5nVZNDAzwXxd5UbyFKib2YD5O7bCcuzDUBsPHZDxH/qmVUBO14QaZh12sHrVsXMqqfzf8kda6/V4dI6+o1vGHZqHG8cGjY2I/8yD6GuUky+hpZTvd5Bl8sudUgAntCE+mwujZBtUewcEek1Mj1EfSxu0k1lghatbJhKlWQi15AIR1KzvSTx4NsjMpbeRJo6wjvJucHDSzEOx7sbG9BBBAbAFvnx5D2MiQwyDn3bJQ0MJQ2u4IcbIdCvCH/izmnv+56DkIgmGCI/332TFDN1GloRPAy1VPr+b6fXSQyXM5tWHJAgH4yimeJnmCBeUtBNpvlWmJdWuNfWKpaPJYqq7fMiNBs2JOZx8nq6JG9DPOrCrGiEnQ2Sb5VT0h2gn0bK5KR98kJ5TpVfv7IFPf/f8bupMC1XXPqomSEhJZIpTPrO3+sh806J4h73b20iomK/MUK0b4+Q8+pNyMfb6ApnfrITBhBxkilf+LgKW0H0cBpipk8mTaUl9KODe8Plr/jZNlP7QXhH2nqkKyhd8qFCBZs2Kd97G/257kENH2t4VAKw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(5660300002)(8936002)(44832011)(2906002)(4326008)(66476007)(66946007)(66556008)(8676002)(33716001)(86362001)(33656002)(38350700002)(38100700002)(316002)(83380400001)(1076003)(186003)(26005)(66574015)(6486002)(508600001)(6916009)(52116002)(6512007)(6666004)(9686003)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?OqsP7Fus02lAe0lG+7pimDhnV5LK5t+WDYGzji4+mqsIzuVGE0xNsj4wK1?=
 =?iso-8859-1?Q?vK6U4ANDIqQ3zi1CemPrvn1PcCGIYpzj+yJuZgOeWCoF3lYVKsQCgp4NgS?=
 =?iso-8859-1?Q?hAwOnKzNtstIWSP6tq/oIRYxtI7E7kiczmnvCyQRnFYiHGF9nG5ViZx40d?=
 =?iso-8859-1?Q?BwXgMukiQ71Uu0CzDBHUHxF6Fw1oVD4+d224JZTji3najVRZ4IDEI7xm1d?=
 =?iso-8859-1?Q?aw3d6AUL3HL3Y5dhYrRR/z58lslcAODCOwfW7kuaBuDy6WBlw99Pxx/JHO?=
 =?iso-8859-1?Q?xUeA4Jr0F5w2s6nbS8mPiVuR8Hbkk0t+Xr1Ys7Es1dujcBec9RunFX9dl+?=
 =?iso-8859-1?Q?1doxN0Ffkzf3OtBahleTJAnjWaKNLxAx+BFeAa/RZsz7U4xH5snRnRy5Ky?=
 =?iso-8859-1?Q?BwVvvr4Zn+esd5N7tWJM7JPZ8NobzFUsMpl50ntsvf4HJvRr2yEwXs1lSp?=
 =?iso-8859-1?Q?4LmS64MY+RY24X8klUCZhMR48qwGRS/2Uwz2fkXJKItifw/rXH4IdfJygA?=
 =?iso-8859-1?Q?rMs3crO7Nnn3kAGcePIsCKfw9ChJ/LD02fflzmkoGutwGhtuGxr4r7ZQZ6?=
 =?iso-8859-1?Q?3ceEKmMm4oaaM2vgcwRvciD5r2XyGoLOlGo7thU0xagBW31nXCL2/o6PgR?=
 =?iso-8859-1?Q?JilQVmWg2TsPYDraoUUaVXRKwjXhx5oVIUGJSbIi9TQWThIxmxCL/5QI5u?=
 =?iso-8859-1?Q?bCETUuTD7DYmgFx95v34kcaOZZ/Jdayy0hEAMxWKUwVYStN6vhbm7tP4gl?=
 =?iso-8859-1?Q?N3AXPnteX2uzhWNerrA5STNDAE+tA14UlOtfkaS7o6tf1F5C8/At0VXDZ3?=
 =?iso-8859-1?Q?Yfv1nnIhjg2JY1eK1Ytge9IUQE6V6nUDa8pYCcKv8psTr51eH00hfoVh7a?=
 =?iso-8859-1?Q?JmlIkxP9MnoTLRk9tQjIvHA+qznCi9A62rPfbPfXujcNPznGHm3UQCAs/J?=
 =?iso-8859-1?Q?sArZv+mS4K7wwqJs0cX97Z6rNIIYTjfRbjxdfxVY/4vZpm3EeC5p7s6tyy?=
 =?iso-8859-1?Q?hpOVVRTb/9mtZiCQUGd+vVnoGO5ebaSqsvOJ0eUqgSc8UFE/YZFgAP9rWq?=
 =?iso-8859-1?Q?V8Aq692CMGFx4MHgW52+qrD1BUNP95L3ZC/mPLjhzmmcaHupZqFGxY+xpc?=
 =?iso-8859-1?Q?kF9jrbYImY+h/rxP2SymcHlZQU1wCHJOuc3Ksl0RV8cSpOHiR+385CZy1G?=
 =?iso-8859-1?Q?DZBuk9wdE25sYRJ267gxXNPPjOcqg8feyE55b8tVVPXgzjEq7/+AIdI+rQ?=
 =?iso-8859-1?Q?QDr48jYNos1yZlXVX9gF1UWD8LISdfcmYI1UmdkTDjul00lfDmPwRoE0wt?=
 =?iso-8859-1?Q?TNw/N3Rrg88FEiiK5RjnLXrE3Yo/4XWeyfZhW3qHWKB19aAqCFfEMDBUFr?=
 =?iso-8859-1?Q?cmu1K+9kym2q0uWsygIxgEfSaGdb8A4cwEnTgyQP9BG0zq95y1nbYZvsGv?=
 =?iso-8859-1?Q?K9zWPBKRvRP8MF/luqrQNK0P1VVSmr4r7toRNgDa+J/T7/eLd5YyXu0G1S?=
 =?iso-8859-1?Q?FO3A7dqycPpisRXFlbmDx7kCOFC/VktrGVQM+fD+Y3yuPcXOqcaAOid8OV?=
 =?iso-8859-1?Q?FnGS/qeF0oxkau2hZrMTU24f42VvaLBhAMKlLiq8iMwKu9AU8pKdOwEej1?=
 =?iso-8859-1?Q?p5JU5i9vOVhvExQcu5ME0G6LX5O98WUDJ0vUaIc3+pbxMr88YRG0WKYtox?=
 =?iso-8859-1?Q?Nfm5/9fhr2Vec/3fiL02Wdg67obIx02JinqUm556diPQrWjpuFnwwZkhjF?=
 =?iso-8859-1?Q?J6Xg=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: daece9fc-47cc-401e-1181-08d9fa8b36f8
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2022 07:23:28.1135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zYpfiNKY7DZ/qPe8y9FdeRZpqtZhFOQnoILyIILO2q1PTCrfwdgzdvSI9upF8agbq0s7U4x3c2PcPSvsAYjspyHSUSVTL7839/is/UZ74P4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR10MB1688
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10271
 signatures=684655
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 mlxlogscore=807
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2202280042
X-Proofpoint-GUID: AKsR8NGpPFF5evpjbBJSUo_dlg-oc-lg
X-Proofpoint-ORIG-GUID: AKsR8NGpPFF5evpjbBJSUo_dlg-oc-lg
Subject: [Intel-gfx] [bug report] drm/i915: Use vma resources for async
 unbinding
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

Hello Thomas Hellström,

The patch 2f6b90da9192: "drm/i915: Use vma resources for async
unbinding" from Jan 10, 2022, leads to the following Smatch static
checker warning:

	drivers/gpu/drm/i915/i915_vma.c:515 i915_vma_bind()
	error: we previously assumed 'work->vma_res' could be null (see line 487)

drivers/gpu/drm/i915/i915_vma.c
    417 int i915_vma_bind(struct i915_vma *vma,
    418                   enum i915_cache_level cache_level,
    419                   u32 flags,
    420                   struct i915_vma_work *work,
    421                   struct i915_vma_resource *vma_res)
    422 {
    423         u32 bind_flags;
    424         u32 vma_flags;
    425         int ret;
    426 
    427         lockdep_assert_held(&vma->vm->mutex);
    428         GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
    429         GEM_BUG_ON(vma->size > vma->node.size);
    430 
    431         if (GEM_DEBUG_WARN_ON(range_overflows(vma->node.start,
    432                                               vma->node.size,
    433                                               vma->vm->total))) {
    434                 i915_vma_resource_free(vma_res);
    435                 return -ENODEV;
    436         }
    437 
    438         if (GEM_DEBUG_WARN_ON(!flags)) {
    439                 i915_vma_resource_free(vma_res);
    440                 return -EINVAL;
    441         }
    442 
    443         bind_flags = flags;
    444         bind_flags &= I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
    445 
    446         vma_flags = atomic_read(&vma->flags);
    447         vma_flags &= I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
    448 
    449         bind_flags &= ~vma_flags;
    450         if (bind_flags == 0) {
    451                 i915_vma_resource_free(vma_res);
    452                 return 0;
    453         }
    454 
    455         GEM_BUG_ON(!atomic_read(&vma->pages_count));
    456 
    457         /* Wait for or await async unbinds touching our range */
    458         if (work && bind_flags & vma->vm->bind_async_flags)
    459                 ret = i915_vma_resource_bind_dep_await(vma->vm,
    460                                                        &work->base.chain,
    461                                                        vma->node.start,
    462                                                        vma->node.size,
    463                                                        true,
    464                                                        GFP_NOWAIT |
    465                                                        __GFP_RETRY_MAYFAIL |
    466                                                        __GFP_NOWARN);
    467         else
    468                 ret = i915_vma_resource_bind_dep_sync(vma->vm, vma->node.start,
    469                                                       vma->node.size, true);
    470         if (ret) {
    471                 i915_vma_resource_free(vma_res);
    472                 return ret;
    473         }
    474 
    475         if (vma->resource || !vma_res) {
                                     ^^^^^^^^
Let's assume vma->resource is NULL and vma_res is also NULL.

    476                 /* Rebinding with an additional I915_VMA_*_BIND */
    477                 GEM_WARN_ON(!vma_flags);
    478                 i915_vma_resource_free(vma_res);
    479         } else {
    480                 i915_vma_resource_init_from_vma(vma_res, vma);
    481                 vma->resource = vma_res;
    482         }
    483         trace_i915_vma_bind(vma, bind_flags);
    484         if (work && bind_flags & vma->vm->bind_async_flags) {
    485                 struct dma_fence *prev;
    486 
    487                 work->vma_res = i915_vma_resource_get(vma->resource);

If "vma->resource" is NULL here then it leads to a crash in i915_vma_resource_get().

    488                 work->cache_level = cache_level;
    489                 work->flags = bind_flags;
    490 

regards,
dan carpenter

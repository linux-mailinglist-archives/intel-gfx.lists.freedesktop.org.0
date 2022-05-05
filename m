Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0CF51BD43
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 12:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506B910E9BD;
	Thu,  5 May 2022 10:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE2210E9BD
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 10:31:44 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 245AEX2F013507;
 Thu, 5 May 2022 10:31:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=9W3eY9ZX4cciyzoabgvgNgliEXFSUkEqL50qEKwiWAU=;
 b=Nd6dzw2V8JpYltcXXkxG5SuOWvpsB+ScKZD+S/Q3u8H7Yr6n+nAH//TLzs1aqZY000UW
 SZx6LslQkWLXxrLDemGbG7Is+2mW6WQg2odZOWDQkvyNzn7aV5ZaYKH3T8Yx8WKt8XP8
 Z8c7KF6q6a79C/zOmC8lzinUTV08bLlFMUulGctWKGWC6LjNFkDfnnH+hGytwxB69sfO
 tK5XtYyQegQMIq0wJi9zbLoMKr5Nu1uEvrSueRnmM8rwRB5g8tvRWtrkKYOoXyHRFDuT
 4h3a/vBhJovlIIY8TJFEbm0I65U1YmRz3AenNoM66L2mgAf5aIMxNWt8dj7AEuv4zs3a OA== 
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3frvqsjxp6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 05 May 2022 10:31:42 +0000
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2)
 with SMTP id 245AOxQf034482; Thu, 5 May 2022 10:31:41 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id
 3frujahccm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 05 May 2022 10:31:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3SgNQnumaMIQGUltfmPlGxVNletuefWgmD/2Uz08txQ4caoutNsxV8eXqydWq7WHTrpmgePaw1I9IdcMGEDezUfSqh9W98yCnWTDHsLjXm6xgG34dZuBTHk/wsgzfDJteH2v9f5uuNEX2vYSZjcver6qlG7d8PsihUFL2UUyYEzNLs2Wemfxyw1BEUcS2bL25cbjKFE6uOALO3DOVept0x5l//8z6H6E8TAZNrn0kwzdrovzVhc6e1fCP/WUHmmsV0oi97Dr7C/uNugpWGi7QAXGItN/KgxoHuiQB5vQz5FKWLJFm1mtT7HiK8c/gRsNlDYyauFoDnuMFrx8W6hHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9W3eY9ZX4cciyzoabgvgNgliEXFSUkEqL50qEKwiWAU=;
 b=a1EwNldGc7aUEBNo0reBM3/6aawfKNY1W7FUAFAK7YeXff7di05HHESN9KxF416YvUANCDEMdq/yxi/zJ/8dKoxdKXgikZpLxW9bC+g7PmvakA2OzVzEDVnCKzBWlZvmIR2vbFCNOyV73DbhnttwhfXmQKUCd0qEaVKdKAYNmjH3Z2aStZbloPwxqNP6w9LA3gUqMN+CEP/CSO4dvNbRzkf0a9QR3NtOUj4cJm6lpa9EkrWfr4Y8rRiWMIzCIyTkiwAGBc4nFLRXpGyzkJHmuL/QmtmQ0+bJdntiB4uBHvn0JQ5iOzPpTv8Nhn5CPz1xXcT2miZWH1MBM6YV8+VCXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9W3eY9ZX4cciyzoabgvgNgliEXFSUkEqL50qEKwiWAU=;
 b=f/x+gljam8O39GhAkUYx+FKx/Mngaaed+Pr+/odSc9D8s9kqkmyEoQlw9LpapWc7SQR4mJSh7sXoTbU3pE4JGM4TFys4qvTm2JFPazq49XXNmJC6sB23HjlcemEuBIJPV6XosZEn8UwxivLuBgrS82NwPIq/xrbKsLxk5ubHFbI=
Received: from CY4PR1001MB2358.namprd10.prod.outlook.com
 (2603:10b6:910:4a::32) by CY4PR10MB1541.namprd10.prod.outlook.com
 (2603:10b6:903:26::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.13; Thu, 5 May
 2022 10:31:39 +0000
Received: from CY4PR1001MB2358.namprd10.prod.outlook.com
 ([fe80::e929:b74c:f47c:4b6e]) by CY4PR1001MB2358.namprd10.prod.outlook.com
 ([fe80::e929:b74c:f47c:4b6e%4]) with mapi id 15.20.5206.024; Thu, 5 May 2022
 10:31:39 +0000
Date: Thu, 5 May 2022 13:31:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ramalingam.c@intel.com
Message-ID: <YnOngsSheKBl2whz@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-ClientProxiedBy: ZR0P278CA0007.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::17) To CY4PR1001MB2358.namprd10.prod.outlook.com
 (2603:10b6:910:4a::32)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 54d88625-912c-4a6d-b3f2-08da2e82706f
X-MS-TrafficTypeDiagnostic: CY4PR10MB1541:EE_
X-Microsoft-Antispam-PRVS: <CY4PR10MB1541665F365D20D65B27026C8EC29@CY4PR10MB1541.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wrB8G/ZXo/nX74G/lKvL/cQmu0X971/A3QXHTJud6/RS9NPCXiBj3cWEU8oeI8FZp0Y47JnhdXBifDRrQFaw1Lt3ezcDk/3AhG3iNFEIpwt2U9zUhWDOG844E+tTWiMfWRgVdHoK3/a1MtuH47kaBWnA5MF6xhY3a1HAJ8GvmzEJL7NQAkVxoySPQ0UioFryREaytKO9//ggth0tiWX7+CG//sG5AmIVRKzENyFCkAvgOxhibyAj/rtL3wXiOzQX7gamgCfamLkpguq4RAD7B9EC8n0LcL70VEPP2c6nj2Q+x51qw+VC6Cxp6IqoaAfDiKOa025KymE6HOXzE2zNGklMDAGKo4yMWotERoVUeHbq8HklHqHx078IYWwQaDTYPoNuF1KJOio1NRaow4XJWhleh/n8nvURA7aGXGzswUfuhE1MujnKr6Qdnev7ZDK9J0PzDogBe6dcjcJm+ncErRZHYsA31zGVMr9iBQYg8/p2dqvBUmx8l88ovNNtblX+GIu8W9ek+xaHWAMflSAYkWWyxUB5wReyTyEEh8+vN177W5/wf2Uf93dxLGOm1MxuAhEShv5s0oy92mwFzmBhM+h80yhfvRrSVH33dwtMBYJze7HogSE/ts1iqbHJwLet0XBlPmjt9D54YohJfZEGgeSj0JvUIfzZmZOkPw7OhYIbCSR4IZ+PNlhKJbguSzzi9ZgtlVGyfJGJtt6w3ZtsnA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1001MB2358.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(508600001)(6916009)(5660300002)(6486002)(44832011)(8936002)(316002)(6512007)(26005)(9686003)(186003)(83380400001)(6506007)(86362001)(38100700002)(38350700002)(33716001)(66476007)(4326008)(2906002)(6666004)(66556008)(8676002)(52116002)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cRISiBveGX+6y+X4vEmEgxc+BVKDORN0GrYVnH9MyIeFeC0DUA4vPhlKPSR1?=
 =?us-ascii?Q?V/ugGR1B+XrpGQ7H34WYO+16EGwSMgtzmUMGbtbGkKIypT9PjN/iqlB5ANv3?=
 =?us-ascii?Q?uIGWsq7UtiHAs/rm99zJWTjaHrm/AON0ZrjZG0T9KqdmYQfY4Xv9T1jwnco8?=
 =?us-ascii?Q?himYncxQXgYRprhnGuuXfM8f/z+B0OEnL6mCcbRahbSO6AGL09W+KM4Cl8dU?=
 =?us-ascii?Q?qrvSzqTVW7wOM3Q6h+ellj5NADBXI12kBLSRNDEu26evUTGGCWQsPhSQjuVL?=
 =?us-ascii?Q?qFdfvSdlL0xiuccIlBpB2OM8puaekAj9y/THv/gc/gID4B1Jdi6K+tPspWe4?=
 =?us-ascii?Q?+dQ/7X86Dy+iEC1zaHbCXcFMVK10R6UXuHKPZa4xT1dGX3KqC89u5zdHa6dE?=
 =?us-ascii?Q?yf4anqmF4LtwY5gFZXkm+zHQ8bR1VuqaaGdTxwNOMkAuLUItlrOhvZVLpsSw?=
 =?us-ascii?Q?zxsuzD3mv47bOlsJgVjYRBORx5WPK2raTeSR4ZWMioWQdef5zf9Xbc+0Cx1g?=
 =?us-ascii?Q?+LGJADd5I1IMHykzKBJ/wwEPPlP8WJ+slhtX6sRA7BlYPIElQX+AVt1GxSu3?=
 =?us-ascii?Q?GgnnBLAj0wHJ19620Vf94Z8GZmlSa8IGorc657S7QijSCSfoaOop0sT/w5lo?=
 =?us-ascii?Q?Dk/cwOaOYr1UbI9rr6Bc1gzihPQ73ocA0WZAJasvafMxj9H5VDX5wMX1bYR2?=
 =?us-ascii?Q?tQlU/5kf8S3oAzmeb0DUkziPvvikMkiqavTdYF2+9OVH26gHJEoHVBWRnFuh?=
 =?us-ascii?Q?bkhf9BoZmgHXbOsu0E3ypEeAoWid0w5yjN67ObB2geimC25GVN939YvQeYUP?=
 =?us-ascii?Q?uFmx6XlqkZPHkxMxqaRW5uuynm19pV0D5AUeG7VSLyuXn3BTdhIPX4b2MPo/?=
 =?us-ascii?Q?OUbuSK5PLuIgRLR1/UfGsAM3RW0toYDG7ZxHq8W8e9mzEVAQP2UC8gfUAgcz?=
 =?us-ascii?Q?WF8vIyVCRMtJ3bKxlmvME9xx9XlJ1dceE6CrbOWqnbp/GRroV5+ObouLIijE?=
 =?us-ascii?Q?NQdvpwvT8KbXPG8szPccGzCRVHw83agarpUQPAWPDxOMUy6IAj3WcvUORcii?=
 =?us-ascii?Q?7NUduaBOpmeScoKht9KITKaYwAHARvSj/9/DGI+/qHbd8dr7pV7vt0ABP2pl?=
 =?us-ascii?Q?4cjFadacP81QYRdHXovVJQEhG6eenG3YFJS6dDkXCs11ndcV859XUvTl7TZM?=
 =?us-ascii?Q?8wPQSlFSHnZSbnl6QS8QbQgnsQviR0KX9f1PsU2LkOGtx/kyFyopDMyJhtdO?=
 =?us-ascii?Q?jgnseCMcgAvo6ss+IL8tJVP2Jr8Ols+Y9lWqJLO/WnZzpSVkad1V08j+q4Np?=
 =?us-ascii?Q?HJO/DpQ2NLR1wGKiyBHA82TXTp+t2pwJ87aHQHmG1dkjs5nhFb1OKJo57X18?=
 =?us-ascii?Q?RgaGF/HbL5RVX4bZz94PChPh21J//dt7fuwcGiiA7tSLfRNgNL+IoqeW69tF?=
 =?us-ascii?Q?oyijyWQP/RLVBNgnzi0MlWV8OVurEjD/cWkyDIdO0Tdyj6U2f2HqIIok99Sw?=
 =?us-ascii?Q?lH8qsRX5rYXYuQx3PieQje6DIqfpbbdp7UDGJCLGxnC7oHZ1a64A9LumqevP?=
 =?us-ascii?Q?d7/qlY1xkpeNVTGFOsrRXjv1q/oDhlBPXGdr57MjnCv26qctafpmt4hRmmMI?=
 =?us-ascii?Q?gQou+vLhACXvT0MW4Naoj8wV377YQHqUtajl8nhi+erG6wv6LX9B6C1G0xuD?=
 =?us-ascii?Q?GKt1G4bqMF8cYVO2aejQMytIw2Zu9jCl7m3YT8V/Fzm5sWIneiJcMtFGq1wR?=
 =?us-ascii?Q?Ly0FBk+p9/e9OjclJ7ZPK39W5UiRHxU=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54d88625-912c-4a6d-b3f2-08da2e82706f
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1001MB2358.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2022 10:31:39.5372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uNTGzh+gptU++0rlKqAJAMLxo79Xz32YTZaAfwV/jhacLOD2suzQwCyNDHzTJfd1TCv0izeR1DfuCIURXMQ8/kdK5MHnN7H9Jpbs3lY9b58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR10MB1541
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486, 18.0.858
 definitions=2022-05-05_04:2022-05-05,
 2022-05-05 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 adultscore=0
 bulkscore=0 suspectscore=0 mlxlogscore=684 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2205050074
X-Proofpoint-GUID: XPbe2Fk5pd8rKjKuV-18wIV2Wb1gQoJ-
X-Proofpoint-ORIG-GUID: XPbe2Fk5pd8rKjKuV-18wIV2Wb1gQoJ-
Subject: [Intel-gfx] [bug report] drm/i915/migrate: Evict and restore the
 flatccs capable lmem obj
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

Hello Ramalingam C,

The patch da0595ae91da: "drm/i915/migrate: Evict and restore the
flatccs capable lmem obj" from Apr 5, 2022, leads to the following
Smatch static checker warning:

drivers/gpu/drm/i915/gt/intel_migrate.c:832 intel_context_migrate_copy() error: uninitialized symbol 'ccs_cache_level'.
drivers/gpu/drm/i915/gt/intel_migrate.c:833 intel_context_migrate_copy() error: uninitialized symbol 'ccs_is_src'.

drivers/gpu/drm/i915/gt/intel_migrate.c
    695 int
    696 intel_context_migrate_copy(struct intel_context *ce,
    697                            const struct i915_deps *deps,
    698                            struct scatterlist *src,
    699                            enum i915_cache_level src_cache_level,
    700                            bool src_is_lmem,
    701                            struct scatterlist *dst,
    702                            enum i915_cache_level dst_cache_level,
    703                            bool dst_is_lmem,
    704                            struct i915_request **out)
    705 {
    706         struct sgt_dma it_src = sg_sgt(src), it_dst = sg_sgt(dst), it_ccs;
    707         struct drm_i915_private *i915 = ce->engine->i915;
    708         u32 ccs_bytes_to_cpy = 0, bytes_to_cpy;
    709         enum i915_cache_level ccs_cache_level;
    710         int src_sz, dst_sz, ccs_sz;
    711         u32 src_offset, dst_offset;
    712         u8 src_access, dst_access;
    713         struct i915_request *rq;
    714         bool ccs_is_src;
    715         int err;
    716 
    717         GEM_BUG_ON(ce->vm != ce->engine->gt->migrate.context->vm);
    718         GEM_BUG_ON(IS_DGFX(ce->engine->i915) && (!src_is_lmem && !dst_is_lmem));
    719         *out = NULL;
    720 
    721         GEM_BUG_ON(ce->ring->size < SZ_64K);
    722 
    723         src_sz = scatter_list_length(src);
    724         bytes_to_cpy = src_sz;
    725 
    726         if (HAS_FLAT_CCS(i915) && src_is_lmem ^ dst_is_lmem) {
    727                 src_access = !src_is_lmem && dst_is_lmem;
    728                 dst_access = !src_access;
    729 
    730                 dst_sz = scatter_list_length(dst);
    731                 if (src_is_lmem) {
    732                         it_ccs = it_dst;
    733                         ccs_cache_level = dst_cache_level;
    734                         ccs_is_src = false;
    735                 } else if (dst_is_lmem) {
    736                         bytes_to_cpy = dst_sz;
    737                         it_ccs = it_src;
    738                         ccs_cache_level = src_cache_level;
                                ^^^^^^^^^^^^^^^
    739                         ccs_is_src = true;
    740                 }

There is no else statement.  Presumably either src_is_lmem or dst_is_lmem
is always going to be true but apparently Smatch can't figure that out.

    741 
    742                 /*
    743                  * When there is a eviction of ccs needed smem will have the
    744                  * extra pages for the ccs data
    745                  *
    746                  * TO-DO: Want to move the size mismatch check to a WARN_ON,
    747                  * but still we have some requests of smem->lmem with same size.
    748                  * Need to fix it.
    749                  */
    750                 ccs_bytes_to_cpy = src_sz != dst_sz ? GET_CCS_BYTES(i915, bytes_to_cpy) : 0;
    751                 if (ccs_bytes_to_cpy)
    752                         get_ccs_sg_sgt(&it_ccs, bytes_to_cpy);
    753         }
    754 
    755         src_offset = 0;
    756         dst_offset = CHUNK_SZ;
    757         if (HAS_64K_PAGES(ce->engine->i915)) {
    758                 src_offset = 0;
    759                 dst_offset = 0;
    760                 if (src_is_lmem)
    761                         src_offset = CHUNK_SZ;
    762                 if (dst_is_lmem)
    763                         dst_offset = 2 * CHUNK_SZ;
    764         }
    765 
    766         do {
    767                 int len;
    768 
    769                 rq = i915_request_create(ce);
    770                 if (IS_ERR(rq)) {
    771                         err = PTR_ERR(rq);
    772                         goto out_ce;
    773                 }
    774 
    775                 if (deps) {
    776                         err = i915_request_await_deps(rq, deps);
    777                         if (err)
    778                                 goto out_rq;
    779 
    780                         if (rq->engine->emit_init_breadcrumb) {
    781                                 err = rq->engine->emit_init_breadcrumb(rq);
    782                                 if (err)
    783                                         goto out_rq;
    784                         }
    785 
    786                         deps = NULL;
    787                 }
    788 
    789                 /* The PTE updates + copy must not be interrupted. */
    790                 err = emit_no_arbitration(rq);
    791                 if (err)
    792                         goto out_rq;
    793 
    794                 calculate_chunk_sz(i915, src_is_lmem, &src_sz, &ccs_sz,
    795                                    bytes_to_cpy, ccs_bytes_to_cpy);
    796 
    797                 len = emit_pte(rq, &it_src, src_cache_level, src_is_lmem,
    798                                src_offset, src_sz);
    799                 if (!len) {
    800                         err = -EINVAL;
    801                         goto out_rq;
    802                 }
    803                 if (len < 0) {
    804                         err = len;
    805                         goto out_rq;
    806                 }
    807 
    808                 err = emit_pte(rq, &it_dst, dst_cache_level, dst_is_lmem,
    809                                dst_offset, len);
    810                 if (err < 0)
    811                         goto out_rq;
    812                 if (err < len) {
    813                         err = -EINVAL;
    814                         goto out_rq;
    815                 }
    816 
    817                 err = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
    818                 if (err)
    819                         goto out_rq;
    820 
    821                 err = emit_copy(rq, dst_offset,        src_offset, len);
    822                 if (err)
    823                         goto out_rq;
    824 
    825                 bytes_to_cpy -= len;
    826 
    827                 if (ccs_bytes_to_cpy) {
    828                         err = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
    829                         if (err)
    830                                 goto out_rq;
    831 
--> 832                         err = emit_pte(rq, &it_ccs, ccs_cache_level, false,
                                                            ^^^^^^^^^^^^^^^

    833                                        ccs_is_src ? src_offset : dst_offset,
    834                                        ccs_sz);
    835 
    836                         err = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
    837                         if (err)
    838                                 goto out_rq;
    839 
    840                         /*
    841                          * Using max of src_sz and dst_sz, as we need to
    842                          * pass the lmem size corresponding to the ccs
    843                          * blocks we need to handle.
    844                          */
    845                         ccs_sz = max_t(int, ccs_is_src ? ccs_sz : src_sz,
    846                                        ccs_is_src ? dst_sz : ccs_sz);
    847 
    848                         err = emit_copy_ccs(rq, dst_offset, dst_access,
    849                                             src_offset, src_access, ccs_sz);
    850                         if (err)
    851                                 goto out_rq;
    852 
    853                         err = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
    854                         if (err)
    855                                 goto out_rq;
    856 
    857                         /* Converting back to ccs bytes */
    858                         ccs_sz = GET_CCS_BYTES(rq->engine->i915, ccs_sz);
    859                         ccs_bytes_to_cpy -= ccs_sz;
    860                 }
    861 
    862                 /* Arbitration is re-enabled between requests. */
    863 out_rq:
    864                 if (*out)
    865                         i915_request_put(*out);
    866                 *out = i915_request_get(rq);
    867                 i915_request_add(rq);
    868 
    869                 if (err)
    870                         break;
    871 
    872                 if (!bytes_to_cpy && !ccs_bytes_to_cpy) {
    873                         if (src_is_lmem)
    874                                 WARN_ON(it_src.sg && sg_dma_len(it_src.sg));
    875                         else
    876                                 WARN_ON(it_dst.sg && sg_dma_len(it_dst.sg));
    877                         break;
    878                 }
    879 
    880                 if (WARN_ON(!it_src.sg || !sg_dma_len(it_src.sg) ||
    881                             !it_dst.sg || !sg_dma_len(it_dst.sg) ||
    882                             (ccs_bytes_to_cpy && (!it_ccs.sg ||
    883                                                   !sg_dma_len(it_ccs.sg))))) {
    884                         err = -EINVAL;
    885                         break;
    886                 }
    887 
    888                 cond_resched();
    889         } while (1);
    890 
    891 out_ce:
    892         return err;
    893 }

regards,
dan carpenter

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1EA455EDE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 16:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C046ECAE;
	Thu, 18 Nov 2021 15:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73FC26ECAE
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 15:02:09 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AIEwaFs000706; 
 Thu, 18 Nov 2021 15:02:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=aMLUiAFXysCP+ZhiWSJ3r+pcHM9R6e2LYgBnbNmClAw=;
 b=uBSMt9XP+FYcOJfEm0vQLDr/wcGCcgNHARDS9i8Vy4zIo2tJVBqtaueNpPmbi4ljZTRF
 I101uT4SIBNstSShb4KX6o694TksHkif8U3yHSXzd+aCRLxqz6LXZ+++/3EjN1xRJt97
 EZMXMXWIQ4YlrEqEN+/0h1akVALxFYProft19dBV387rdYrKl2ETXEs/P+6+DLfsGCVB
 QggeCgCmzjgFq7lhhXZ2xukDE6Jni4crQfqu2l/G6I/sROj8NKKIxwTl0ljyMjod+NkI
 5oHY1fGotBvV78AHkZ2/VSeyEmaCeeE9rOOIUiO2Wehy69wwiV9MTUAfftxbX6WvVmQK YA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cd205g6tb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Nov 2021 15:02:03 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AIF1ABU173016;
 Thu, 18 Nov 2021 15:01:37 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com
 (mail-bn1nam07lp2046.outbound.protection.outlook.com [104.47.51.46])
 by userp3020.oracle.com with ESMTP id 3caq4w5m9e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Nov 2021 15:01:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SGRs1BwLdnOs+eeBX7TQxNIH9ryPGBWNsAXagIl34P1iVdDftKSBRDQ/RLBQa9epenGeqVo1pgsk+PeCvmGbPitdp9En+fI0Fr4KMcM2G5sBZfaRe6oXVzkRrfTs6GE5G9R41xxM1beJhZLXon8Dm7UQG9MKstXwWYZGyqW8/3zqhqs4762jQoUqL/qlHoDuAoBHLadM92cFejB1jpczDScpT9jheZd+eaIMZ4xUPhMVpNbBtMYz1JnOSgNEXUX5CAIiUpGZSNZP/xmYyqoCGmF9TvEJzLdJizuEYZjFKLrPzmpY2w3j65VUHqYZAyx3MPHQ4UO2cG9A0km6prvqvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aMLUiAFXysCP+ZhiWSJ3r+pcHM9R6e2LYgBnbNmClAw=;
 b=IH+eC1+YzBouXukye80NKlWUDfH9527Lr8cITx5/24o1p5eHtRFUCABzj64YeTXLd5vLWXqm5y+17yG4HJJl7oL1DaX0H5k+EURlMSrAGYH19e3Fh6zPzbMUPRY0T2TlWGbj4c8D2v/+y80rjOwbhJ1lsNBPkKQ6cH/Iiu9SrB9gkW81YgV9/F0ycen/dd6qkdKyvDKrHVAs9erL5jdB2edZoaDG9eNUYkHpoS6WsGbK33hhFagiWIayLPLEO2sEXK3VKineJ+cn7gofx1HsnUZpask4vkNhO4qAl9DO7I0cNCi1eL/RDG3HdnRxtC/2NsXMkL8Z0Ljbx0j9VajrbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aMLUiAFXysCP+ZhiWSJ3r+pcHM9R6e2LYgBnbNmClAw=;
 b=ltoyZ+hX7Igcz4fl3bnVki/lvtRVbJakFvA1Mviq47Dosz5t/F5PYNOHsM8P6ljbylJ3V1rj2V3Zc8HbYGe5aGSOUHRtpq85iCxFWFBPBNILOjDCDUiQvYsnIX9+nuLALj4mCEv8B51BqqRI+mwJAZWwdJD9ux5DN19HSiocMNc=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO1PR10MB4434.namprd10.prod.outlook.com
 (2603:10b6:303:9a::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19; Thu, 18 Nov
 2021 15:01:35 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4690.016; Thu, 18 Nov 2021
 15:01:35 +0000
Date: Thu, 18 Nov 2021 18:01:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: matthew.auld@intel.com
Message-ID: <20211118150120.GA22452@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0185.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::18) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kili (102.222.70.114) by ZR0P278CA0185.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19 via Frontend
 Transport; Thu, 18 Nov 2021 15:01:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8eb3b4a4-83ce-44ad-b2b5-08d9aaa45040
X-MS-TrafficTypeDiagnostic: CO1PR10MB4434:
X-Microsoft-Antispam-PRVS: <CO1PR10MB443403DBE957218288ECB9448E9B9@CO1PR10MB4434.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 56/uVBzWg9VFSf5SBint17OQfIY255UkDVvHoKhqCO1YO7u30G2BrajnaoiORLJH6iqAOZ0uHmWI0pOJDNuWpDTNfLIzrBbjO01oy7V//nG+R0QclzmETGxMlm8lTMh9zN2dJHxKwu4ZjbnmFpJFhI4MHawqNNeRGMjQcwBoLX18RlPfVaKhxkmXVQAWGDI7FThNrEdVSgsOAAlLEaE7oC82lvz6foruXjzcMlu2C5DdCRFyIIxkafr1Xz22O/hQB4kTdsA291vO5IqlX7jil73HJfTDZ2L6kzdgLSLm2o8JCGn91frEqrRsY14UCh2+8HoyjNLH37G4cVhGBImqT/x/NSKoz9dmpcr+s9REs+ZvFXqoO39EVaBsLno87w9qyHTjsFkJYM2f2MLBTNahINZ1YEjuagsxhkcrbOMO+Ly85yy6Ia/Gnu1W33e/u8KUuJ0T1p0MnUvkRWg//3CL/TIpuZvLHbVps/wJClPubS0+Ps4AzJkGWrgPN+zYPNPpL59+RMPinPPvyPx5yW6A4xO0cZXDizUNR+PgU9eXD0Bl4YW72YUwxDTurjrtfFCd9XQOFP+Jsa1Kn0pMMvjkmrWV6qHeHodooapGP1fz1F5SjokXKSxSHfHedTnrc9TQbDu0qtZAr+dfE9gqo4MZI/HrADD/wzrtGdH60FYRznHp9xhLnrjFjKmxQR14JbU8oypUEbJ241k66Cy1OqmTnA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66476007)(66946007)(44832011)(8936002)(66556008)(186003)(316002)(4326008)(86362001)(33716001)(2906002)(956004)(83380400001)(508600001)(33656002)(38100700002)(38350700002)(5660300002)(52116002)(8676002)(1076003)(6496006)(55016002)(9576002)(6666004)(26005)(6916009)(9686003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aSNmZjF2KFhaK3rK3NB21nhd2I2r6mTMrl7VhOnznUvbgnES5M5nFmJghytJ?=
 =?us-ascii?Q?TnsIIJPHouWfyxxUuTXySktBiuRUCaRtjaOmZVUaFTb3nfBZsAWJmyQ1fLOP?=
 =?us-ascii?Q?DfK8IxFDH2QPb+MkxsquiJcllABFXDqvpmuUL1rzXSAMnQQG0dqAivUg+Fb7?=
 =?us-ascii?Q?qvIxhN0ZDqxVOtiWEoTw/bdA37wTO5R/uxmIWmREZqQ+s8SDO8xuLLg9N8G4?=
 =?us-ascii?Q?KKzdzTlAQU+Q/W3iALPxK4DPfNW5aoV0UTj81atMaoxHcZrpV2QqBwoCBaBg?=
 =?us-ascii?Q?9KIpW2naEAw+bK3WMUPzp0dDHcCNtfwL3QM28t0kFQ8zYMe989T9lsD0JCxz?=
 =?us-ascii?Q?KyKf7Iz7/HUYNTquLr1ogect40nTMpboMNdFcNc3/xaBCjo5l3Q0clhuHq/l?=
 =?us-ascii?Q?J0oss1Rp6UVVjpIYvxEOzfi7HI3GxPtYArIFdBfk94rB4PONvAidwFhF2Bqx?=
 =?us-ascii?Q?P6YnMxWXcwqZDDZ9lGxoxeG5u7SGlsfpqRLSCGch1DNIfPWL+ADfkC894Pa0?=
 =?us-ascii?Q?SiR0VaMF8gDAP+Y0hKwZq0iSIOc5J2sXBzZNdBhAweGIM4U/Wte94h2qLwOc?=
 =?us-ascii?Q?BUn/9IHK/UEzlrRj85rMl/fSBl8/zim3gdtV+qCSRR7Csa6lEI6mhgvca2EB?=
 =?us-ascii?Q?ifCh6f4p8P0UcrWu1i8+EjQfF2JMnxva4dQzLTqJmLQyC8u+09FtSVkDAacC?=
 =?us-ascii?Q?eszAqpWdB0ntGMfFhdgR8VItSF8sE6cg5gDdKT/Z7WhJUFK4QT3tGLX2JQqr?=
 =?us-ascii?Q?jzjSepzLdPtJDs2Eq4sh+TzQ9v3PGbbuijeFNROfreH1wlSCtWmNvct9EJuz?=
 =?us-ascii?Q?mdcwwBpDhh9Bm9uo9CWVdGR39PfCt9awLH/uwiNcXzC2uucDV/gPU78BKc9x?=
 =?us-ascii?Q?6kKCm/ADAEOiOQttrFN9LWdgfd0vTbtab7kfX7COlCcvF+cp4JecwDAGgCVO?=
 =?us-ascii?Q?7y/1u9MvamANAAQ4NG1vqGt3y1CmW1z0uQJNC3ihlYtumsMO7vA+iBpoJEiM?=
 =?us-ascii?Q?fnpL4qfpg9ipIoT0Wc2xc7y+gYQgEbhaM6uhofWvyxXje0G/B1RpkBefPpvy?=
 =?us-ascii?Q?yOupAMruBZOawiru/b96Wska8N99oJoIJiD9TY9eXKX4ibth9PP9vyuoUevX?=
 =?us-ascii?Q?IiPRmRFPUpo6mh9pGe5ERs4PMMwls9ka/Mi/UBETzvhUowvOMkGtGkq3lHvU?=
 =?us-ascii?Q?TGdIq4BwCL4lZAFFEH2+TGXIYuxTF2WvtFKU+vqDnw+iMDWTuz6tEr8X87m2?=
 =?us-ascii?Q?p1dGJD7AKvdEIFz81BzIgA8w2LEe6RSQUEVPKmJjYKIr/deyf51miCPuSmp1?=
 =?us-ascii?Q?TlHF8tXRLrvxb/hSnYpLhT9EJ0yEhvUFpAtK9f1KOH8CMQKlyRaBQFtpbMrk?=
 =?us-ascii?Q?PJZCdhTLzBgLCPBD++r3FXpmgcW2d17GnpUFTXcLnJ1MZpNTcQTqbEFYFmLn?=
 =?us-ascii?Q?4SKk632t9LJ6A3qqOYBiQuLkAqAg2BONut98HuazO+iuxQjislw1AEEkj979?=
 =?us-ascii?Q?KtjtaI3TMdznYx5LZLVIu0uTeNHEm8EYHzinmMLa6HF7zaUtqJE4R+hRpp4o?=
 =?us-ascii?Q?ZmDERAx+PEfMK45kIHBVrRkn0du0ax72RwZuG2wHygyCfbwEbk7LholTnW7o?=
 =?us-ascii?Q?JS/3g0FyUdfQj35e+HwTO50954WDeLU1V7zC6MXbLE/ouYoarGb+jd7zIhz9?=
 =?us-ascii?Q?yyxurE/Hh70UKlKZSMwcMU+pShc=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eb3b4a4-83ce-44ad-b2b5-08d9aaa45040
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2021 15:01:35.1889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MzQwHEMfknkBHscJqjQy/E/o/mpxi9e2+W1ndnWw+2lU2QkwgGrFkCueJEF7yBd4ph+ZCoL1jMpUpPScYbcQqkM5ThW6F7+pq045owdbbOo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4434
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10171
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 mlxscore=0
 phishscore=0 bulkscore=0 mlxlogscore=910 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111180084
X-Proofpoint-ORIG-GUID: Lx2fxQblJWC9VXKdNC21Bg0x2DYe5HZE
X-Proofpoint-GUID: Lx2fxQblJWC9VXKdNC21Bg0x2DYe5HZE
Subject: [Intel-gfx] [bug report] drm/i915/ttm: add tt shmem backend
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

Hello Matthew Auld,

The patch 7ae034590cea: "drm/i915/ttm: add tt shmem backend" from Oct
18, 2021, leads to the following Smatch static checker warning:

	drivers/gpu/drm/i915/gem/i915_gem_ttm.c:335 i915_ttm_eviction_valuable()
	warn: signedness bug returning '(-16)'

drivers/gpu/drm/i915/gem/i915_gem_ttm.c
    324 static bool i915_ttm_eviction_valuable(struct ttm_buffer_object *bo,
               ^^^^

    325                                        const struct ttm_place *place)
    326 {
    327         struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
    328 
    329         /*
    330          * EXTERNAL objects should never be swapped out by TTM, instead we need
    331          * to handle that ourselves. TTM will already skip such objects for us,
    332          * but we would like to avoid grabbing locks for no good reason.
    333          */
    334         if (bo->ttm && bo->ttm->page_flags & TTM_TT_FLAG_EXTERNAL)
--> 335                 return -EBUSY;
                        ^^^^^^^^^^^^^^
This should be return false probably.

    336 
    337         /* Will do for now. Our pinned objects are still on TTM's LRU lists */
    338         return i915_gem_object_evictable(obj);
    339 }

regards,
dan carpenter

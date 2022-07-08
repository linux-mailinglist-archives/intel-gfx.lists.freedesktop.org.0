Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 543ED56B55F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 11:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 718E910F393;
	Fri,  8 Jul 2022 09:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECACF10F39C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 09:28:26 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2689Gtga030134;
 Fri, 8 Jul 2022 09:28:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=tptsQbHNEXVRSAuobdqsX9rpvVMiPWIh4YwGeUxpzng=;
 b=EFAAuqzpHT5yo0aa0sRDyJHcs+oH8vqLWgUJcSQ5h4Z5L26T5gTBiHtyROd9MRo39Okm
 bsVXonBRyp86UKR2DqSsEDrhktetLqmHWJiu4PGhTpSCQk/diLAfdl5zu8tTP3S/Nwgn
 TpueXtDcE6G3uTqLBnJsYWrHDeeRGfh4sUqBva9Opc2LJGJgD0WcvJ8ZrfvRkrTvXaVI
 WUj0eyhXP2jiFnkNDSNSS5sBGjsg4bfJn6vH9bKCIdYSZqS6OFFpEnAThaF7qlILMo2u
 tSK5djlGYVj/ho2ahQVodCyvLggpkfFsSAmHnC87ocgqrGKi/b6SJKrrrq/9Av37++oC Lw== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3h4ubyqm12-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 Jul 2022 09:28:23 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2)
 with SMTP id 2689Q6bj004840; Fri, 8 Jul 2022 09:28:21 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id
 3h4ud9pd01-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 Jul 2022 09:28:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bfRWwadqBt6Dwhn6jRJxKvNxtUdKapBPWeut2Jw4HnWDTF6zD/HsV+4F1s1dmqucIxERZKaW9BWZFXedIlNpFMH0Hzl8xwSIZtT7A3/K/5NrxnPe6H31MaolW//ghVnf85PuhL9tJ9Efpcjw3NDfJNvE0xzH8rB7YKRUh3VRIYnPz3SpIpQUtIhpQp3pf0jvdfnkfPxT6NDSo61uhatJbiHz7NNu3GE1EJH+S/9QYRmCTIUUMAEOR9IchJ9PSN3ks7Bp/B7amxKB5s3CPmYvKDb79/vPncxkuHWaWv7OHtMo/Kjc/cX0cM3HdRFZ5qWknTBZT/CqVuhGIY1jo5BchQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tptsQbHNEXVRSAuobdqsX9rpvVMiPWIh4YwGeUxpzng=;
 b=QXoth2+Z7eyeRTlQuG+hTuY7o6024MXjyX85mXo2cs74Yaz8Xbm+8/fVj/SjANpIaUf6CnWIXokpBCPWAf8JJ6uhAmPKlk5AjpEFhYb29bJi3pF0BVdohSqA9BJBOLiGGeDFvVW7161pbt7Iv3l9DIIk4Qr19mnhVjZjeOJv1dtCausd/izyaoPno+2q6KwFV1vti8QaviEivA4/Oo4d+XHJqwgzHXVbRYB+8SH1R8G0WFs1sw3nSI1sXT1NLJXc5NC3echidHrgZERH+TZauw4B4WrCe/RYl9MQobsaFeg5AEL+LA8BxKdkOOTdVa/g8rFpRVX3QtL7BKM1vs1Snw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tptsQbHNEXVRSAuobdqsX9rpvVMiPWIh4YwGeUxpzng=;
 b=KaR5S0xzALmGQgxuzAN89WjKpvZ6BBST7zBxbPw6cilel23X/N9b5MsP+bba7J8hoTm8XSRKABZFLnuhAnJqalUVxzGz+wp8ss6MVE4N3mw2K9YLQ8jLJI0yWOijs4swjqtYa0s2J0JyG7V0lQvE3dQPNJqxx7+MDNycelAPhNU=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by BL3PR10MB6233.namprd10.prod.outlook.com
 (2603:10b6:208:38c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Fri, 8 Jul
 2022 09:28:19 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5020:9b82:5917:40b]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5020:9b82:5917:40b%6]) with mapi id 15.20.5417.016; Fri, 8 Jul 2022
 09:28:19 +0000
Date: Fri, 8 Jul 2022 12:28:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20220708092807.GK2316@kadam>
References: <Ysftmk147JdS1gVu@kili>
 <861d92ff-1d30-10f5-e10b-403980af503b@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <861d92ff-1d30-10f5-e10b-403980af503b@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: MR1P264CA0095.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:3f::34) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 250e2be5-bc56-4ac9-7c48-08da60c431ef
X-MS-TrafficTypeDiagnostic: BL3PR10MB6233:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xrtIrppoSsHFFcewH4KBWZoo/WgKo07jGhuHliW0xBge4cLOo/arS91i2jrZQHcQk/PeU2pTfoZjxeaEjZAlkamDNQJIioEJisDRvTL9lXbfvBjYpf6YNPgvBtzSaEQ+74mUhe3uFqSA29+HNQQSLw0VPbliEQRhtB10gBAAlOxvAnmuscU6WWhhJfcgtSh6HVFhjZ8s995T+XTlgEg4Pbd9PmBIQYLqfxzDNXN6p827Hl/cXq/M2FxlNGPYYLJEPKa3kLoVPTsggVxD+JhsU1R1yeldn4vpZTDKfC5kaV9PjHbZJfiJ3qqyVp3tfaIJNAtijQwDO00OR8Zaj233p5Ti4T2t2v/urtB2FNmztoIwM+ZjrEW/5H3BfuxP8LyrtTQkqYYLbLW9S1OTOebB60kFHRwxsTV93nwZdxjbIrGccF23OOfpevydDgn3mvbNCWylVp3OyTjfnWT6Gj0lBPcWiMTEoK5dMwmMB4zfJ+ypHNb9DLVPooekqh2SAAq1Su7P3XqA2pDq+IqpVFbPvRd5CIsdK8Plm4jMBAWIvBHLUjbKOt/8loQmEjX/3J01bvCP4bQQv8vBp84zwkUt0GqN5PLXAdH0EYkQL82ChFwrmoFQ461GeSbffZL0z7cRqYpc6KT6p3cEZEakJA6rPkinkUEzRrGzCzW15hEebfM+39nZTLx2w/oWieDCUzhBVq06Y3S9X8PRN/TQSRIBVjB8HVPagWGwGBJdXshL8AMvgb4ZzLcbSpEd7ZhEdxEy9tO9sLxwaU1l8OdiWl49vVEake94bHoMu/4CdywuttE83/Dc47J5YyfzfkHlV5gm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(366004)(396003)(136003)(376002)(346002)(39860400002)(9686003)(5660300002)(66476007)(26005)(66556008)(6512007)(66946007)(8676002)(7416002)(8936002)(186003)(1076003)(4326008)(6486002)(38100700002)(52116002)(478600001)(33716001)(33656002)(41300700001)(44832011)(86362001)(6506007)(53546011)(6666004)(4744005)(38350700002)(6916009)(2906002)(316002)(54906003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RYWDAHLJNyeXChKaEM4SiBF55vywLytQoBsttQDSiJo7TZdWamcSRX43GJKX?=
 =?us-ascii?Q?vuPfaQNF7pDBpYA+L/JQhCNSCL59wWsE2rR/ufSqqlW01oTrAK8XSubEw9+h?=
 =?us-ascii?Q?zUn6v5d62dnHoDyjSUZ4wlYyhhos5gPAg5p/fxmjuDYv/bXvDZgepM4H07La?=
 =?us-ascii?Q?QUXNQaKmau48JWb0xzdhig3ZtVaDUokI0QpPQiYNLNlXCHDf+DrEJnwdVKps?=
 =?us-ascii?Q?o2G8lZZcMrtkGVtLYhtbny/daiyh4Jjul9tb2+yAEZ/MdV8Oa0x1yPkJ9Dpn?=
 =?us-ascii?Q?Oki6iqbQC93cooeQzxdgCDT/wnn+a5a+wUyrqYwuiU2ow133ounAcp0lI7f+?=
 =?us-ascii?Q?wJkhShHUKQy5+Rq2IG9tGdVjBIVRDJlR05w87KTdrjtiTxjUcBt6wuiEaODv?=
 =?us-ascii?Q?jEt+4RF1NC9Yrc263lN5giXjSMKDrPBmdF8FFJciXY5Rqsh+PrPIZfRSeIJx?=
 =?us-ascii?Q?N0eohFA3or3xFJn8dn2yV7c1BXkLhIsp0O331CcKjCJ4DU7v7psuOqHo14Uh?=
 =?us-ascii?Q?My0c05RwF97s665B+vsDmegDAQNTcIhGy8KFBTAppU7UDIjGBOlgezz/sfwu?=
 =?us-ascii?Q?pr1WCLABd6zfQjuWEU5yu3TtCkxfTPQK7MVcaUhtVRAmAS4u4XzOoAd9qxjs?=
 =?us-ascii?Q?oFYqLs/CTWOl4qP4cQOZwu8csuREpMyr0rFFPgNo2AGGULbqGw+co2YqLUEK?=
 =?us-ascii?Q?Fvcec0QSWFGoFJ/Voi27fn10PK5cwaGnpi9TwNsCKOb3b9bK+7Zy372l3MpQ?=
 =?us-ascii?Q?kocVQe4i7NcDR+9plET3SKNCf5YS/MrWPqZz6Gvgb3sG6EMF8fA4ygAjggrL?=
 =?us-ascii?Q?mYu7lyZt0DwZnxCrDMuLW18TVjGWE8dEvT9RqqK1QqbGbh1mPh2eTR0fPTmX?=
 =?us-ascii?Q?//noWYUDIqF/5d/SlgGpo+C/MJumkkl+QhKmvuY+ls1inJVbGAReQx9MhEL3?=
 =?us-ascii?Q?YwuqjUwaAq9ZPwiToL/xKqxULrAQ6yrTnz9b61CBS767kSeGgOyNRV5/L7g9?=
 =?us-ascii?Q?5muXxYZODTOOAR6vgffuhcmgq/ISsjVngV3zgu9DKMo4vS6UkBiJwV/xBxxh?=
 =?us-ascii?Q?Tl9Fps27Pd25ICzO78qCfXA705uVhe1XEzQUXk6TpMv2LGgeUGRZmc6W6Icr?=
 =?us-ascii?Q?6i+F43yVn9DHlXv5x1ptj0c3CwhWwkKVm7xbrEBx0S2zZMpbyrNWgjYl77iw?=
 =?us-ascii?Q?9/hrN59Gm2XqaGh0HB6KIAYbDvUtSeBGUi26dk8dAP87bbBS2yvQOlyGCDVR?=
 =?us-ascii?Q?8Gbggk4qUu0/DM5+2fFm3iT0mxja9E5Z/l+vZ0xQhBPZSvgHnDJslenNB7Hu?=
 =?us-ascii?Q?pqf8dd80KANjuSA2J7W1mhVg8YvDL4R/8fdrt7w1Af9iT5dkd7+C1ZGkqOGg?=
 =?us-ascii?Q?nsuTBYN0TmvEg4RcIZPEy7H+ZyE1SHMJO6U3SVykskjs1gAd8XOfA3yFFvXx?=
 =?us-ascii?Q?6LtpJvc4BLb6BQE6eq9+XF8hpZIXkvJEsalb+YMZoxioZPJYxT6q0aUnlLcc?=
 =?us-ascii?Q?FfJIn5sfSWLfjEHS14m51lIFWSb3yfWxloc/WB/srAk9XeIc0iFEjKCLUN+z?=
 =?us-ascii?Q?2AhZ8o6EZleF/nXJp6CGlqVZO19xE0hXLUcEZ5PZYo+FV1PmU3GfZ2+imvfj?=
 =?us-ascii?Q?FA=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 250e2be5-bc56-4ac9-7c48-08da60c431ef
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 09:28:19.6950 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rMgAbZhz2a1dKvSZJA+tBr5GixL8kKkE0WGLHzAT2gW5VcigOtcOM36qp72CmT1//jR1uUUzWreuDTw+Be4titB8mTt2tmGRkMjLO5dQQHM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR10MB6233
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517, 18.0.883
 definitions=2022-07-08_08:2022-06-28,
 2022-07-08 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 malwarescore=0
 mlxscore=0 spamscore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2206140000
 definitions=main-2207080034
X-Proofpoint-GUID: seL83XCzkFUQ5ICXahKi8LU5CJYXEu9j
X-Proofpoint-ORIG-GUID: seL83XCzkFUQ5ICXahKi8LU5CJYXEu9j
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix a couple IS_ERR()
 vs NULL tests
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
Cc: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, Chris Wilson <chris.p.wilson@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 08, 2022 at 10:02:34AM +0100, Matthew Auld wrote:
> On 08/07/2022 09:40, Dan Carpenter wrote:
> > The shmem_pin_map() function doesn't return error pointers, it returns
> > NULL.
> > 
> > Fixes: a0d3fdb628b8 ("drm/i915/gt: Split logical ring contexts from execlist submission"
> 
> I think this should be:
> 
> Fixes: be1cb55a07bf ("drm/i915/gt: Keep a no-frills swappable copy of the
> default context state")
> 

Ah, right.  I will resend.

> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> There looks to be one more in gvt/cmd_parser.c?
> 

I fixed that one in a separate patch?

regards,
dan carpenter


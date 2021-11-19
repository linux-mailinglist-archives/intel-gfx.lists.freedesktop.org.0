Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93096456B1C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 08:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB316F4F9;
	Fri, 19 Nov 2021 07:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 210426F4F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 07:47:49 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AJ5aNvD031693; 
 Fri, 19 Nov 2021 07:47:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=rr94NO3ccpjApQ9FRBk28/+jIMRwOUS2KXwtRjj1Glw=;
 b=PDxwjtvmKhk36M5ZdMQVOacuVkUSsqRyW2e9yFyyG4yQs800BZY2WkdJxWipcitE9bHM
 yh7MNU0hIRbr07vgMit/S0aKsKV4FTqEFAuVGx203ilvYivdNnUnsbmo44HMxy+kxvGr
 plMC9aFbMocPEuh2CA4qCGz/OyMqpvPB7CZHWn+ciN0cKdRaIMGvl3XWdE6kO2qQertm
 CF/5st+dIP9w3LjzJ9jJI+M+u7t3RjdMZHw7Emt6q7YaPBmqHgPC7nGd44msR4gbv+P4
 pAi3Jv3wH/s2d30pU0EothyOBYV4M5/chpIIJrz7ejPuB1kwJECBogmsUQ1FiwtufIzH ag== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cd2ajv6c2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Nov 2021 07:47:46 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AJ7kNYj021128;
 Fri, 19 Nov 2021 07:47:22 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1anam02lp2040.outbound.protection.outlook.com [104.47.57.40])
 by userp3030.oracle.com with ESMTP id 3ca2g1ue4m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Nov 2021 07:47:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HgMyjvbNe3k753qHz1gJ2oW8rDY1LyN5cAifWU7LhImEe1AfO1JPUXjeNKnkqtiMsSciSRHTROqY0UzjvOZ42g0+aPbJCFw4SdLhCQnC30HOD0c97xu0kjN+Ezvf0ZXCA9N9pcuGiL1z5dDEwRh9hlEOG6/opy2nlPNPeDoPydO52yrD3FlQbWAMQBBWWIBYtLBNBInSOOfcpywRiYNJUvY0pND8sq9DbSy95lWcyQwo6ADv12iwQIGAeAwAs5vZsNX6JoYSliw9tvWTxNek3apywZW9UznKLHLIG7ZG9aE/gWvC5cYHHD7lDm/ThH9y4t2KfsmN/ynKfAseYDkjDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rr94NO3ccpjApQ9FRBk28/+jIMRwOUS2KXwtRjj1Glw=;
 b=Xz0BzhHgKUZwgGBEOTpWULsM52Ycl7gGL/cX/DnkvGGysP8ZGbWDf8P4NugpWR6eF5ATb3lvlLmoiaaG20TK/LquFIrlLvUkJj7fH9uzsSZrqYtRhhE4jiEIBkmXDewhC6JpcX7AbHfDG587V08WmO0HG/ikCICnaRDh1SULu+oFQDeUqBONqPyAi1jwpXH6ERASYXHbzHxJH3pyhnCjHI+rh14oGslpKDvon5olR2We20Y4SlvhdaQvfazaIlXPPr9M7K/n8uiVQobVOSWHus0CmEgP+x1Ef13l7jrH/6fbj0WhhLNtRPNg8ChDQSOR/DlHQqNJx8AJVm6GWBpHww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rr94NO3ccpjApQ9FRBk28/+jIMRwOUS2KXwtRjj1Glw=;
 b=cV1sf1uZndcagdCFXB99zO3N8L2YxfWmePFBZfnRtepRZlWyu89AF8Z/l1/s7YmXfKAiRHSpIV7ZGqsUKUhjMSaDUQsIMuQ7Q+NMujzlvO6X1ccYG2RDtTr/r5t4WcIu2PtvbP/4+TYjeGMzhTs+/dMu05QCIpt3Q3ntdg0ZOg8=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR1001MB2399.namprd10.prod.outlook.com
 (2603:10b6:301:30::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Fri, 19 Nov
 2021 07:47:20 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4690.016; Fri, 19 Nov 2021
 07:47:20 +0000
Date: Fri, 19 Nov 2021 10:46:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20211119074655.GQ27562@kadam>
References: <20211118150120.GA22452@kili>
 <5bc9543f-b28e-bc57-ea02-8009ae64e436@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5bc9543f-b28e-bc57-ea02-8009ae64e436@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNXP275CA0032.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:18::20)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JNXP275CA0032.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:18::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.20 via Frontend Transport; Fri, 19 Nov 2021 07:47:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e8929869-97db-4043-c99a-08d9ab30d0cf
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2399:
X-Microsoft-Antispam-PRVS: <MWHPR1001MB239909DD1779CB4B07D5E0FE8E9C9@MWHPR1001MB2399.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CKjCI63uMu8sUj/5u63loBm/uGTBxnTwga8VKcXbYAcV0YtoTF6EjIxpdjDjTYDGEa5IhklwZF0wklfB/QpgTCrMn6GvKwKhYgVoIJSsBMOYER55dhJ3Eub/rB2rvlZzHpMduSbWTugr+knIm7UjJFl5+AG0XhuZZfROs0vdeccS8OaXHA19U48vmsQaWr4qi7GRLyj0BDnolRhsm/IsOiS2nVaCEeFaOgmfooozEy5hn9ZGFqK71FcSRv7h41D5e9TTD55oHdvLuwt6HUAU3xLfBsWAelNC69JQq1vlfc5LSY6iFdctO5oX2hrXSvrXauQpaYaHa2pE443RlBWlBZ7fULuvxWFRuYpnv/R1d48UGp0F49/cXldLQt75iySLHh7Ff0ASeImmgETkv+aIohgAiYrXuMdbZmZLrjlQ0wg+ol9XN14gV7K69cUbYhFEIs1tqNQMWMkFbP4WDNsHnpoOGhsfrxp8CzLtIc4whrWICaCOQkrOYpAuPN6Z9tTuGbu/R82CMnVhPextpdqhAOVgdq82ZZPLikq8FKFQ72mY3sN8OgnfwRWu7koMkd4FiJcF+aUZ3dBdskbpnW2Z9FMTqQYgAnjEaI6LlZlzhCAswtEgKQZCnaO/ZJNW8IT0616Cv9GOWJaRFTsY5ZKCKCwkIs6s8i4g0XCfcgxUa4++ePQgCw2OhZXki1QHwlOdYon1itFczELYGk1upVRVqg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(44832011)(6666004)(2906002)(6916009)(33656002)(86362001)(1076003)(4326008)(8676002)(38350700002)(508600001)(38100700002)(9686003)(55016002)(66946007)(26005)(6496006)(9576002)(316002)(66476007)(53546011)(5660300002)(8936002)(66556008)(33716001)(83380400001)(186003)(956004)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UmfteAEJhDML399aICO+ygQMoFuyYVecmpQjEE91TBqRH0aESHNu91prbDs/?=
 =?us-ascii?Q?8EYIRq2HZauxVKsudegYDw2XlaaJa8T7nw3876q9XDvnd1kls9XRfmiXz366?=
 =?us-ascii?Q?w/A00sJ2ZeOyaiRBHdI6XLGMkK3Ah//Q5hhdoosrXzvBR05zg8EgDZx6P/kE?=
 =?us-ascii?Q?VcLt4WSA7qpkdLcaJ+imDxEZ6fZX/bz5VXOD79wt9OTZi+VLTHiPmXUsxJac?=
 =?us-ascii?Q?Yslz0viVEQo4S+/VV0cjRjUl+Fh3lkvKMleuJGGNoxB0lPTtmUWfB4Ousbrl?=
 =?us-ascii?Q?df3kDRQ9cWLF/8bhPUHgCHZtiLMn0sARxfrAqrk8JZQSGDd2YLlPzb5zv+Sl?=
 =?us-ascii?Q?AZJJtZNfEerk8rRAULslZLuvkTZqkucqaRlpEG52Bhw4jKDza4yjfmX6XgQc?=
 =?us-ascii?Q?oJxXjsJAUzlYJHFq02pzOfJTole7nwnvBeQ6V31FqLS2RnfUwQD2XKKS6BNh?=
 =?us-ascii?Q?NOud9kUYP7NaHs4jnnsvueulJVTJLPj8Yd1XcYK7jb9kWU7pNtq0fsG+wOvq?=
 =?us-ascii?Q?xvPpk3R7zI9z5Fhk8CbeEZeBVWqzezw4Bzdwk+36sajNbkVWf7h1ff97WMCr?=
 =?us-ascii?Q?OwsVVdh+9R512s4HUEGaBcaOX/bAln/ar6h/9/2lpcdrlx8Q2QPL8w8z7Dpc?=
 =?us-ascii?Q?p9tjuXUIe6siJ7khKUdHxPVMSo3DefiELRp5Le/l6Cwi58aBNBiuLGmxY3iN?=
 =?us-ascii?Q?9piXD59YeSBLrvmzaVmR9CHAminbXeVKl6H2U792LoIPTrW5MuxwVLzs13nR?=
 =?us-ascii?Q?p69cmrKTg/Vvmp4hmT7mk9tO8JDNecnmm0UMgYd2bJ3u09LUhMb6rbWUYjU+?=
 =?us-ascii?Q?o4TUY3dY22wr0lMKyht6/lAXLqbhQpmWfvBhG64wDL4hngdZg2SW2FeiJSsj?=
 =?us-ascii?Q?+rWPskGvRewx6om8xjoqu+g85lZxQop16QJEzw6XfFBl74OUDbAoE6t6Mwmy?=
 =?us-ascii?Q?iLDcAv6vqk+nUtZAHZybCO+lnjGZxNlERKQ8h0E/yiRvuPpYOZDeWs2zsap7?=
 =?us-ascii?Q?yUZ0M1XGI9FkFG+9Clli/cWttI0p3qZo7Ni4LW+qTy56pZTCCmIm1MfdSWN0?=
 =?us-ascii?Q?dF9dNE4kXNED8pCEWF5WQlqxXNosEntuKPp2uN1izjR3pmhwVsvOgxlvdlq5?=
 =?us-ascii?Q?PFPT8zOWfEO1LgLmvzaRRb/5xveeKfl78LjwQ+mzP33/ZhIt6I6yB3Htj5Ws?=
 =?us-ascii?Q?jra3XuEfojZsPIdcDU7I4jT1sod8Oww41HcoaVONj00ZRqdJ5jbMVb1o5zOP?=
 =?us-ascii?Q?sUtnHcV1PNOdZJYPCo4U8FSBYVhUhHdNoVg2mk23rAZrlBWSB2XwTFMJnKaB?=
 =?us-ascii?Q?hcKl08Li9X8SLey/k/4yjXwe5ED78OPRiE4IMCMc4MIJ1z7v0zgFiyL6DMW5?=
 =?us-ascii?Q?99Ga8CJx1enWfiC1x0Zr3IowI56+NaqZ9dEbYJQ8+ksV4Ytb0Ad+zuKJgajM?=
 =?us-ascii?Q?w6xVWP8aFmxybzB2mHz8X4EbgfJEmRIg2kGr521rEgLG4S3s/NdUjA96ZkXl?=
 =?us-ascii?Q?jUHbq4uOVL4Zh7HrXRihiH3A+GRNty89UGaswqZ8LS4nKe0l8VhqIeE8U4V0?=
 =?us-ascii?Q?zhRoxR52/WDSQJDqUKSy8fQbveqyXt7phPF3KOzpO7PyV1bYqkF86Z5e1ZGX?=
 =?us-ascii?Q?z/eSWoKMme/lWTJdVotarlt+RL6yjK1xIh5Nsknkfd+GbIcIuhfqK71Zpkgn?=
 =?us-ascii?Q?alw0FL3ye+rf7RcgsPT4JO8uZmY=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8929869-97db-4043-c99a-08d9ab30d0cf
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2021 07:47:20.4951 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: skfPzP9reZN2RbE53Q+FBpaPx8xO5EuTymrXuhUHdddmzLhBJKG3w2KntQYG6jrfpApDhbU1lAaquGJ+y+WkZS7K4LFrWUb94rgPMr7Fwtg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2399
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10172
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 bulkscore=0
 adultscore=0 mlxlogscore=999 malwarescore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111190041
X-Proofpoint-GUID: MdS17o3mw4YDFZMqAcFAjysiEn7syjKP
X-Proofpoint-ORIG-GUID: MdS17o3mw4YDFZMqAcFAjysiEn7syjKP
Subject: Re: [Intel-gfx] [bug report] drm/i915/ttm: add tt shmem backend
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

On Thu, Nov 18, 2021 at 03:15:31PM +0000, Matthew Auld wrote:
> On 18/11/2021 15:01, Dan Carpenter wrote:
> > Hello Matthew Auld,
> > 
> > The patch 7ae034590cea: "drm/i915/ttm: add tt shmem backend" from Oct
> > 18, 2021, leads to the following Smatch static checker warning:
> > 
> > 	drivers/gpu/drm/i915/gem/i915_gem_ttm.c:335 i915_ttm_eviction_valuable()
> > 	warn: signedness bug returning '(-16)'
> > 
> > drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> >      324 static bool i915_ttm_eviction_valuable(struct ttm_buffer_object *bo,
> >                 ^^^^
> > 
> >      325                                        const struct ttm_place *place)
> >      326 {
> >      327         struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> >      328
> >      329         /*
> >      330          * EXTERNAL objects should never be swapped out by TTM, instead we need
> >      331          * to handle that ourselves. TTM will already skip such objects for us,
> >      332          * but we would like to avoid grabbing locks for no good reason.
> >      333          */
> >      334         if (bo->ttm && bo->ttm->page_flags & TTM_TT_FLAG_EXTERNAL)
> > --> 335                 return -EBUSY;
> >                          ^^^^^^^^^^^^^^
> > This should be return false probably.
> 
> Oh, indeed. Did you also want to send a patch for that? Thanks.
> 

Sure.  Will do.

regards,
dan carpenter


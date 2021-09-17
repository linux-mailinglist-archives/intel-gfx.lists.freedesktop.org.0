Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A50540F8B2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 15:03:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 346F96ED20;
	Fri, 17 Sep 2021 13:02:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172F56EADD
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 01:23:01 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18H0V2Lp012133
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 01:23:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=O1IsqrccnXHfAtqW/iIljyfpi6zxlPyPUf67RkfCyH0=;
 b=RAayYpehO6JJLeY771J00c440OdGwYxQbOaX2B3mDm4A8RrL6ScpI1IyooBAtJuWcqKq
 b47t7RjAjZ8t2wCiRXZjW6PLjePaD5MfusDlZblibj+p4D2J8BJrWvMksH6y4avWa6DJ
 Oy39mOIb70v+RlgFyGLiLIVeHM0ydOqPGtAX5D/ywTTYtE+v6u2cn+9PaBNJZg5JemxV
 /XBwyXrt5xG03lgFHdnP/Pe823/6CWAg2hAbYy6gztyh8nB+SVoIUx9HKhfm29iQaaF3
 CE8Mx+rFAorvu/l+Fv73Noc+ZJCTeNEEMY6vK4FKKyAfYF95grILzUCbuYGE/MTARTv7 FQ== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=O1IsqrccnXHfAtqW/iIljyfpi6zxlPyPUf67RkfCyH0=;
 b=KfJG3K6vK5/eTGwo8QxORLK5L9n7KNDlv6ObLbQSGw0n8oBvoqem1Lw6vNIisf+zrMwn
 C3jmkTY71tDiS+CAiB+/mUdg5lTCKdnqa8+gvtwwSPgd9wqgzvhnnyAoP8G/ntcMBp+C
 1pvW2IhtQO+o0i02OcAqq9Jt0TvnEfTzvwwfB6FpU4EkE4FUrwvMKlEzPRl+F1aP9s3/
 PEEcHnb/S/hCxP9uo45Y1Cy4+FPRljFKaDNYEweVN7j99AfGApGUS5wLdJg6l+P4eGEH
 L4XFmXo5RG8Z4nRRB5etzGTV5O4FoiclpWCsBSO8vdq6XAP71lm53wvt6F6CL2u/o+V/ hw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3b3vj145g8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 01:22:57 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 18H1AiVO099941
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 01:22:56 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
 by aserp3030.oracle.com with ESMTP id 3b0jggy0jv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 01:22:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=daIkXI9RBaJBLpGSs58dGqNSQgKSNorN1usvBg/X5kvg/Z+GYDllvEDZi7mffxx9Cau3Se4IfHctk1m0K1+ftKrlrs5Yx8k2Am4dWNcZQMfLpkEb7rEO4Q03GeEtZZhonXMkznP/rqjCV5IkDOobZE6ehycYe3cKjGg65wDk+cXvY0gS7DNaxW8I1mRtjnzKO63RpU0Gtbi0SLuwccMxcs+UCC77rYCTPvgDEaYT5qcTkkdGdgQddFITI8zmytm3OObpn0BR5Ty/Yu88KPGh8eyiRL38ueTvvf54wTME+Y2CvFuaPVN7yiyFcfK91HsG9iU1QOQRwANZ6zqMWxEDOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=O1IsqrccnXHfAtqW/iIljyfpi6zxlPyPUf67RkfCyH0=;
 b=YMgA5xhNCm7bTSAIM82lm1Kyi7P1FiDtHb5cjoC3ixv7uchVr5KfnvsByHR5JS1mxdz2lMKgOvgmCiWHI9v2Wb6adVE5czs3CJ0MDA2XtnST1JOmtNnicpBI2N6mnH+H36Yw2WJ3zmTQWl76yA5oZJyZQHyAq0q8LneUQAhEN85SBwoSGGAOfk4rvBpYWvIH5bzp9Om6U8ElvMaqiA6KCAdSAm2CLmDJm88hm6HWRV4EiLMwBjzwEwP8crl6exSLUfDegOxlvmkvYxFyK6bt4WBDglTRp2V0JGVw2KaWKlAiJRC8wfPZL3IF3iLZU9be1zD+ORbSys+AOagljD9YDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1IsqrccnXHfAtqW/iIljyfpi6zxlPyPUf67RkfCyH0=;
 b=GcAJsSt2Wi0qQkdj69MoCxKtenpRov7+3hUO9zPbq/KmtDR4A52BPVoI3d9GeOm+lgCZ0E4oxcTfPQyYSsueND3wQUmwkmruVd6ur7+P94ad67fFKfUaVcwlISJ/HrJa9TXSovCB9ddMp8PadDd71EfiKKjcJQdjPZhEKwmKZmU=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=oracle.com;
Received: from CO1PR10MB4468.namprd10.prod.outlook.com (2603:10b6:303:6c::24)
 by MWHPR1001MB2319.namprd10.prod.outlook.com (2603:10b6:301:34::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Fri, 17 Sep
 2021 01:22:53 +0000
Received: from CO1PR10MB4468.namprd10.prod.outlook.com
 ([fe80::f091:1dd2:38a8:e986]) by CO1PR10MB4468.namprd10.prod.outlook.com
 ([fe80::f091:1dd2:38a8:e986%8]) with mapi id 15.20.4523.016; Fri, 17 Sep 2021
 01:22:53 +0000
To: intel-gfx@lists.freedesktop.org
References: <20210916133535.3592491-1-imran.f.khan@oracle.com>
 <163183328999.8838.3501788052648702303@emeril.freedesktop.org>
From: imran.f.khan@oracle.com
Message-ID: <1c9d8c12-9cf5-87a4-f558-6c8c0e8b2864@oracle.com>
Date: Fri, 17 Sep 2021 11:22:44 +1000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.14.0
In-Reply-To: <163183328999.8838.3501788052648702303@emeril.freedesktop.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SYBPR01CA0170.ausprd01.prod.outlook.com
 (2603:10c6:10:52::14) To CO1PR10MB4468.namprd10.prod.outlook.com
 (2603:10b6:303:6c::24)
MIME-Version: 1.0
Received: from [192.168.0.2] (110.33.47.182) by
 SYBPR01CA0170.ausprd01.prod.outlook.com (2603:10c6:10:52::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Fri, 17 Sep 2021 01:22:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4271eba1-1a7e-4466-feb1-08d97979abab
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2319:
X-Microsoft-Antispam-PRVS: <MWHPR1001MB23193924B33A2AF3B94B65C4B0DD9@MWHPR1001MB2319.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4+t2Z+f66bV6EhnzCgfIvOZH8gwPJmH8wiUhLcAqWEeuWIG2LRo9lfXHEakaOoV51kbfoCMdZ234hz9xblGrPqIlomZqMwp/BDz+GIzAiKS+1/ImfWat5SO1RfBZ5avqAgClpMj0zvsUFp6710QQMAnV7rKXItU8xYM3h1piIbFEoYGTqLnhdu16/PvRrxHKLnRcQkNyMyIP2dedjFZpWURN9cmou6wq0CxhgZdp/OfENhQwHUG1Y8p4LeC5Vi+gNh6FmqB8sciqzW/7//RmedyXcO82D6dIMJxpnb+28OjaFNK9nCAY3ZtbamC6DkM+k+45psMqYKeA5ooqxEVhTZn1aoGH37OriR0hl519X5oTtRJS4N1HvHGXPNEa/+WyHSW8afnDpgSpgWTtFbZdbFjP1Cr/CZ/rWDMqfkMfZ68VMH0SCmSQgIWBdw6RyuQs7LfZyBWRU8983n3bvJ5HNgUveuVA8k4MMBwP8NXAgXwtwYUJr8NhyxTc2BkvaCdidmLkYAA+tZP0N3Nsi1lvc4RzabFWULHHAUt035TjJDNc0tU7b35hPKKUxI/C+f526PLz+twTYaYVooXsQXCXOv0mIljxan8m68tr7Gvg5ISGj+q1JVUr0jMikIDwCAMUaeRUQcNjrZaOemRs2MokqlCmCaioIFt5NXZho9q6QW7zqGhwLNDuAdX4hoXM0WYxwsLaNAHJMr5nVcpRlpkiEgvjrNpUtea7GP5wfV17bNyJq8LP4wxP7iQZUTYsmpzVzJ+5TqEDxgrSoZkDGjUTBA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR10MB4468.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(16576012)(36756003)(508600001)(38100700002)(5660300002)(31686004)(316002)(86362001)(6666004)(966005)(9686003)(31696002)(83380400001)(53546011)(66556008)(6486002)(6916009)(66476007)(2906002)(186003)(30864003)(66946007)(26005)(2616005)(8936002)(956004)(43740500002)(579004)(559001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmhrWExxRGhyMUNwTFN3Tko2dE1PZHhPSkNQT1d2d3ZlM2RWeFZUNjREeTlY?=
 =?utf-8?B?dHFIMlNxYkZFeGNGUGJLVTVUcGpYZTFUQ3RUNzQ4aS8ydnZDaEx6UkREQWsv?=
 =?utf-8?B?MVc5NXNjaTNabzAwTzZlaS9JYUsxMUEyUlZCSWE5d1YvdlM5YTZWRnh4Yk9m?=
 =?utf-8?B?N2tlTDRGRk4yZEtqWkF0c0Y2NE40a1FDRExpSWdOZTRkbzNVcE56aFNlc3hz?=
 =?utf-8?B?UzhQZDdwZGdjcnYwb1FKb3VZQ3FJY2NMcEMxbjMrL0tjYVNpc0ZHczVlQmxj?=
 =?utf-8?B?UVZQRGl2TWFnUGluRDRuNHo1RzFlT2s3bDl6Z05NeG52V3NoU1pwaDJCeThl?=
 =?utf-8?B?TE1ES2pJMVgrVVpOYy9mRHg2S0ZPN3orc2JNam8zRisyN3liM2ZIQmI3SkN1?=
 =?utf-8?B?RFlzdUdsaHRVM0N5SnF1WU1wbGdvcVJScFV1WXk4Q25OTERIc2pRaUFBUE9a?=
 =?utf-8?B?dmxtcHRjdGkwUEN0QkpkdzVaQ1U3ZmwvRmtla1J4U2w2YnNuZGZyUy8yY2Y4?=
 =?utf-8?B?dXhwV21HMDJ5anBUZmdXWGx3ejZOeGVSOXFwYXY1Z0VaUVBiOG1reUxRTjM3?=
 =?utf-8?B?UVFSWThuT29jSml3VSt3bkJNVUdHK0hlUWZaVDB1SWIzMEROS3hVNHo3U1FD?=
 =?utf-8?B?SVlsVlhmL2U2aHdVdS9ud3VEMi9kRFcvWFBvMkM3YnlzcDVnWWtEZlgzOFJV?=
 =?utf-8?B?MEJKelMwanRPTUhhSGh3SVhWaWJqNWdkZXErL1lJcDMzSXdlNHNWc2hnK2ZL?=
 =?utf-8?B?RjU5c3Q2Uk1FYXRrMldIdmZDTk5YQWE0QUJNcVl2NXNDWW0xdmVYT3pPOUhv?=
 =?utf-8?B?dVhuN2tqaUdBS1kwbm5YQnhCd1A4czJ6MXV3M2dzU1hoemRDZ3lQTVpXeXQr?=
 =?utf-8?B?RXUzd1pNTFdDSUNSeEZkc09HKzZpNlAxVFhQOHUzTXNrUjlVeFZZbHRuNkpG?=
 =?utf-8?B?WmxqVHFMc21FdjRpYjVWQ2wvL25rYnpaSDZGYisxdTJaWC9iWnVQc1BvMWtI?=
 =?utf-8?B?RjNGYlU3L1FxUllKcFdoOUI4Tzc0d3E4OTRCL3I3RFBHdUpHOXl0ZVljcWZt?=
 =?utf-8?B?TGtnaVlUUjRDMkJjd3F2VkljZ0Z5VWtPQlFQMVdTeEdhY3ZoKzFpUlh5ZFd0?=
 =?utf-8?B?SUJXTS81WlNVZ1NRTHB0NjhlQXlKQ2VMNEVMUm5SQjBTZTZ3ZU1xQzJBdW1Q?=
 =?utf-8?B?bFdyck83VDhObEVLOE5VQWNHQVNGSnZnKzNyTXYzbXhVaW1BNDVWQjdnUGZQ?=
 =?utf-8?B?SE9sRU1EM3ArcWM5YWErdEh4c0ZSTng1YkZaeGFBL2xUQ0lleDVuUGlpN2RJ?=
 =?utf-8?B?eTVORi83aFo4YTh4bGlIaFJYT0RQZ1FOVXNPT0NocU15dUFwT3dNK2ZSUVp6?=
 =?utf-8?B?dkVDNFEzQXpVdGRldWtvdDhTZkRYUFBzdEY3a2JwWi9QajlsbGtPL2p3S2dO?=
 =?utf-8?B?MWI2YkJLSEN6QjdkeHMzd3d4Q0VFWnJWQ2gxT2RQUmd5QmVKRTV1UHdHSnU5?=
 =?utf-8?B?MXQ3S3E0SWJZaTNFU3NIV0R4SGFYdkVUWkNaM0ttemJlWExHR1FoN2YzUi85?=
 =?utf-8?B?b24vYVIxTVpZVUVLTDNJZXBHNkFIYWVUeWZVRE5TblRiVEpxU1A4eE43bnpG?=
 =?utf-8?B?ZjhyU05oRHJvTWc0L1oySmhMclhkS0VHZFdQWkwwZGIyWFArc3FUOURUTnVC?=
 =?utf-8?B?ZGJMMGJ6S2NvWmw5Mm9nR0FleWRPZWN4cndaSjU3dkFxWWJFN21xaWowQ2Fs?=
 =?utf-8?Q?MFyExXn9FFFoze0EGBMZtnVU+CgrcCEKZXSbp82?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4271eba1-1a7e-4466-feb1-08d97979abab
X-MS-Exchange-CrossTenant-AuthSource: CO1PR10MB4468.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 01:22:53.1409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: urufXhmDYbXBQTA4zzBgVnRjHpLRrbyoR2MHpXwGkp7Q2iPe+QHIaj5UnSpLrpiscsinwjIl/I+DK9Br4Uwibg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2319
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10109
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109170006
X-Proofpoint-ORIG-GUID: PEYsuOPvO_pFXtwqGx33YeFVBXNZ_Q6r
X-Proofpoint-GUID: PEYsuOPvO_pFXtwqGx33YeFVBXNZ_Q6r
X-Mailman-Approved-At: Fri, 17 Sep 2021 13:02:50 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgbGli?=
 =?utf-8?q?=2C_stackdepot=3A_check_stackdepot_handle_before_accessing_slab?=
 =?utf-8?q?s_=28rev3=29?=
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

Hi,
This change is just adding a wrapper function, so it can't cause regression.
Could you please let me know if I need to do something in this regard or 
can it be ignored as false positive.

Thanks,
Imran

On 17/9/21 9:01 am, Patchwork wrote:
> == Series Details ==
> 
> Series: lib, stackdepot: check stackdepot handle before accessing slabs (rev3)
> URL   : https://urldefense.com/v3/__https://patchwork.freedesktop.org/series/94696/__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ6DE-Cfg$
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10598_full -> Patchwork_21075_full
> ====================================================
> 
> Summary
> -------
> 
>    **FAILURE**
> 
>    Serious unknown changes coming with Patchwork_21075_full absolutely need to be
>    verified manually.
>    
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_21075_full, please notify your bug team to allow them
>    to document this new failure mode, which will reduce false positives in CI.
> 
>    
> 
> Possible new issues
> -------------------
> 
>    Here are the unknown changes that may have been introduced in Patchwork_21075_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>    * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
>      - shard-iclb:         NOTRUN -> [INCOMPLETE][1]
>     [1]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTt7UJThg$
> 
>    * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>      - shard-iclb:         [PASS][2] -> [SKIP][3]
>     [2]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRObVMprw$
>     [3]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJT0kqrHAg$
> 
>    
> Known issues
> ------------
> 
>    Here are the changes found in Patchwork_21075_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>    * igt@gem_eio@unwedge-stress:
>      - shard-tglb:         [PASS][4] -> [TIMEOUT][5] ([i915#2369] / [i915#3063] / [i915#3648])
>     [4]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-tglb3/igt@gem_eio@unwedge-stress.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRbpeytVw$
>     [5]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb7/igt@gem_eio@unwedge-stress.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJS-YDOXkg$
>      - shard-skl:          [PASS][6] -> [TIMEOUT][7] ([i915#2369] / [i915#3063])
>     [6]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl7/igt@gem_eio@unwedge-stress.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ8PKB8Bg$
>     [7]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl4/igt@gem_eio@unwedge-stress.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJS6u6i8UQ$
> 
>    * igt@gem_exec_fair@basic-deadline:
>      - shard-kbl:          NOTRUN -> [FAIL][8] ([i915#2846])
>     [8]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl6/igt@gem_exec_fair@basic-deadline.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ2E89B_A$
> 
>    * igt@gem_exec_fair@basic-pace@rcs0:
>      - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842])
>     [9]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR03QXxww$
>     [10]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSloX9geA$
> 
>    * igt@gem_exec_fair@basic-pace@vcs0:
>      - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#2842])
>     [11]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSmDkLFQA$
>     [12]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQGV5dusA$
> 
>    * igt@gem_exec_fair@basic-pace@vcs1:
>      - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842])
>     [13]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSUV98hyg$
> 
>    * igt@gem_huc_copy@huc-copy:
>      - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
>     [14]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl4/igt@gem_huc_copy@huc-copy.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRzlZWuzQ$
> 
>    * igt@gem_pread@exhaustion:
>      - shard-skl:          NOTRUN -> [WARN][15] ([i915#2658])
>     [15]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl1/igt@gem_pread@exhaustion.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSoFcpf5w$
> 
>    * igt@gen7_exec_parse@basic-offset:
>      - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +64 similar issues
>     [16]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl1/igt@gen7_exec_parse@basic-offset.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSASS7JWQ$
> 
>    * igt@gen9_exec_parse@allowed-all:
>      - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#2856])
>     [17]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb3/igt@gen9_exec_parse@allowed-all.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQGlxHJmQ$
> 
>    * igt@gen9_exec_parse@allowed-single:
>      - shard-skl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1436] / [i915#716])
>     [18]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl7/igt@gen9_exec_parse@allowed-single.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQPH7MSYQ$
>     [19]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl4/igt@gen9_exec_parse@allowed-single.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTFWz6mDw$
> 
>    * igt@i915_pm_dc@dc6-psr:
>      - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#454])
>     [20]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb4/igt@i915_pm_dc@dc6-psr.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQfpDygRw$
>     [21]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb6/igt@i915_pm_dc@dc6-psr.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRtxqTtig$
> 
>    * igt@i915_selftest@mock@requests:
>      - shard-skl:          [PASS][22] -> [INCOMPLETE][23] ([i915#198])
>     [22]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl3/igt@i915_selftest@mock@requests.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQWYsSrGQ$
>     [23]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl7/igt@i915_selftest@mock@requests.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTiSQ6cOA$
> 
>    * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>      - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777]) +1 similar issue
>     [24]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJS7e-v4uw$
> 
>    * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>      - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#111615]) +1 similar issue
>     [25]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRjJWbltA$
> 
>    * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs:
>      - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#3689]) +1 similar issue
>     [26]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSzZkaF4Q$
> 
>    * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>      - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +5 similar issues
>     [27]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJS65TIlyA$
> 
>    * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>      - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +5 similar issues
>     [28]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl1/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRO5srBNw$
> 
>    * igt@kms_chamelium@vga-frame-dump:
>      - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +7 similar issues
>     [29]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl8/igt@kms_chamelium@vga-frame-dump.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRi2gX2qA$
> 
>    * igt@kms_color_chamelium@pipe-a-degamma:
>      - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +20 similar issues
>     [30]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl2/igt@kms_color_chamelium@pipe-a-degamma.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQpqYsfLg$
> 
>    * igt@kms_content_protection@legacy:
>      - shard-kbl:          NOTRUN -> [TIMEOUT][31] ([i915#1319]) +1 similar issue
>     [31]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl2/igt@kms_content_protection@legacy.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRPFWB3pA$
> 
>    * igt@kms_content_protection@uevent:
>      - shard-kbl:          NOTRUN -> [FAIL][32] ([i915#2105])
>     [32]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl7/igt@kms_content_protection@uevent.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSTCwo-vw$
> 
>    * igt@kms_cursor_crc@pipe-a-cursor-32x10-random:
>      - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#3359])
>     [33]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-32x10-random.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTB8KEzGg$
> 
>    * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
>      - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +189 similar issues
>     [34]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRG5HzeSQ$
> 
>    * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>      - shard-kbl:          NOTRUN -> [DMESG-WARN][35] ([i915#180]) +2 similar issues
>     [35]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSee1bHPQ$
> 
>    * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>      - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#2346])
>     [36]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRQ8jfMKg$
>     [37]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQaz9ggQQ$
> 
>    * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>      - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#79])
>     [38]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRJ2tdnBg$
>     [39]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ5fFloJQ$
> 
>    * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>      - shard-tglb:         [PASS][40] -> [INCOMPLETE][41] ([i915#2411] / [i915#456])
>     [40]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTuttr_rw$
>     [41]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQoY2kW0Q$
> 
>    * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>      - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111825]) +4 similar issues
>     [42]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRt8evK4w$
> 
>    * igt@kms_hdr@bpc-switch-dpms:
>      - shard-skl:          NOTRUN -> [FAIL][43] ([i915#1188])
>     [43]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQN-YnJtw$
> 
>    * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>      - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#533]) +1 similar issue
>     [44]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTUzo0ZEA$
> 
>    * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>      - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +1 similar issue
>     [45]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ9NLnGKQ$
>     [46]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQMwhPzdA$
> 
>    * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>      - shard-kbl:          NOTRUN -> [FAIL][47] ([fdo#108145] / [i915#265]) +1 similar issue
>     [47]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRkHFWbbQ$
> 
>    * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>      - shard-skl:          NOTRUN -> [FAIL][48] ([fdo#108145] / [i915#265])
>     [48]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJT7FWnvbw$
> 
>    * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>      - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#2733])
>     [49]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRmVWwDvA$
> 
>    * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>      - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#658]) +4 similar issues
>     [50]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSX17_2lA$
> 
>    * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
>      - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#658])
>     [51]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQnXwqQMQ$
> 
>    * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>      - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#2920])
>     [52]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRhoNC0SQ$
> 
>    * igt@kms_psr@psr2_primary_render:
>      - shard-tglb:         NOTRUN -> [FAIL][53] ([i915#132] / [i915#3467])
>     [53]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb5/igt@kms_psr@psr2_primary_render.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRvxStZzw$
> 
>    * igt@kms_writeback@writeback-fb-id:
>      - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2437])
>     [54]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl4/igt@kms_writeback@writeback-fb-id.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR1QuqK7g$
>      - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#2437])
>     [55]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb3/igt@kms_writeback@writeback-fb-id.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRRM02Mag$
> 
>    * igt@nouveau_crc@pipe-a-source-rg:
>      - shard-iclb:         NOTRUN -> [SKIP][56] ([i915#2530])
>     [56]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb7/igt@nouveau_crc@pipe-a-source-rg.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSEuYDzaA$
> 
>    * igt@sysfs_clients@sema-50:
>      - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2994]) +4 similar issues
>     [57]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl4/igt@sysfs_clients@sema-50.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJT_iraf5A$
>      - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#2994])
>     [58]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb3/igt@sysfs_clients@sema-50.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTKrqFnnQ$
> 
>    
> #### Possible fixes ####
> 
>    * igt@core_hotunplug@unbind-rebind:
>      - shard-iclb:         [INCOMPLETE][59] ([i915#4130]) -> [PASS][60]
>     [59]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb4/igt@core_hotunplug@unbind-rebind.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR277auyg$
>     [60]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb7/igt@core_hotunplug@unbind-rebind.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQxSQ16Qw$
> 
>    * igt@gem_exec_fair@basic-flow@rcs0:
>      - shard-tglb:         [FAIL][61] ([i915#2842]) -> [PASS][62]
>     [61]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQiJZStuQ$
>     [62]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJT5FFNT-A$
> 
>    * igt@gem_exec_fair@basic-pace@vcs1:
>      - shard-kbl:          [SKIP][63] ([fdo#109271]) -> [PASS][64]
>     [63]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRMjKATwQ$
>     [64]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJROTQF-mQ$
> 
>    * igt@gem_exec_fair@basic-throttle@rcs0:
>      - shard-iclb:         [FAIL][65] ([i915#2849]) -> [PASS][66]
>     [65]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSf3qer7Q$
>     [66]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSdC-2zLg$
> 
>    * igt@i915_pm_rpm@gem-pread:
>      - {shard-rkl}:        [SKIP][67] ([fdo#109308]) -> [PASS][68]
>     [67]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@i915_pm_rpm@gem-pread.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRy_dPw6g$
>     [68]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@i915_pm_rpm@gem-pread.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ0TtNQfA$
> 
>    * igt@i915_suspend@debugfs-reader:
>      - shard-tglb:         [INCOMPLETE][69] ([i915#456]) -> [PASS][70] +1 similar issue
>     [69]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-tglb7/igt@i915_suspend@debugfs-reader.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRkayY7ig$
>     [70]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb5/igt@i915_suspend@debugfs-reader.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJS45fOQPQ$
> 
>    * igt@kms_big_fb@linear-8bpp-rotate-0:
>      - {shard-rkl}:        [SKIP][71] ([i915#3638]) -> [PASS][72] +1 similar issue
>     [71]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ8hJmT3Q$
>     [72]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJS7-eadLw$
> 
>    * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>      - {shard-rkl}:        [SKIP][73] ([i915#3721]) -> [PASS][74] +1 similar issue
>     [73]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJStC7EVig$
>     [74]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJT1-wcJNg$
> 
>    * igt@kms_color@pipe-b-legacy-gamma-reset:
>      - {shard-rkl}:        [SKIP][75] ([i915#1849] / [i915#4070]) -> [PASS][76]
>     [75]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@kms_color@pipe-b-legacy-gamma-reset.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTJsv695w$
>     [76]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@kms_color@pipe-b-legacy-gamma-reset.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQtuMLWHg$
> 
>    * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
>      - {shard-rkl}:        [SKIP][77] ([fdo#112022] / [i915#4070]) -> [PASS][78] +1 similar issue
>     [77]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTYeYT4nQ$
>     [78]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR9eEKw9g$
> 
>    * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>      - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +10 similar issues
>     [79]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJThN3UPBA$
>     [80]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQMoX0kuA$
> 
>    * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
>      - {shard-rkl}:        [SKIP][81] ([fdo#111825] / [i915#4070]) -> [PASS][82]
>     [81]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR86qPuFA$
>     [82]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR4ralYGw$
> 
>    * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
>      - shard-skl:          [DMESG-WARN][83] ([i915#1982]) -> [PASS][84]
>     [83]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl4/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSIHJEk2g$
>     [84]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl3/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSgzx3IXw$
> 
>    * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>      - shard-skl:          [FAIL][85] ([i915#79]) -> [PASS][86]
>     [85]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRZsbxIMg$
>     [86]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSUESP9sA$
> 
>    * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>      - shard-skl:          [FAIL][87] ([i915#2122]) -> [PASS][88]
>     [87]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQqZ2LVyw$
>     [88]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTRnlBg6g$
> 
>    * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
>      - shard-iclb:         [SKIP][89] ([i915#3701]) -> [PASS][90]
>     [89]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRtrXG9cw$
>     [90]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRz5mwsfg$
> 
>    * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>      - {shard-rkl}:        [SKIP][91] ([i915#1849]) -> [PASS][92] +9 similar issues
>     [91]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQCEt45tQ$
>     [92]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-y.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTSutZVAA$
> 
>    * igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:
>      - {shard-rkl}:        [SKIP][93] ([i915#3558]) -> [PASS][94] +1 similar issue
>     [93]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTKF5NmtA$
>     [94]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQWEog8nQ$
> 
>    * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>      - shard-skl:          [FAIL][95] ([fdo#108145] / [i915#265]) -> [PASS][96]
>     [95]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRLd_Y61A$
>     [96]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSDiDc-FQ$
> 
>    * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
>      - {shard-rkl}:        [SKIP][97] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][98]
>     [97]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSXzOE6vg$
>     [98]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQrfY1J0A$
> 
>    * igt@kms_psr@cursor_plane_onoff:
>      - {shard-rkl}:        [SKIP][99] ([i915#1072]) -> [PASS][100]
>     [99]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@kms_psr@cursor_plane_onoff.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTHx2l42Q$
>     [100]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRnFnrE_A$
> 
>    * igt@kms_psr@psr2_dpms:
>      - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102]
>     [101]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb3/igt@kms_psr@psr2_dpms.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSQa1CP5w$
>     [102]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb2/igt@kms_psr@psr2_dpms.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTOVLtG1A$
> 
>    * igt@kms_sequence@queue-busy:
>      - {shard-rkl}:        [SKIP][103] ([i915#1845]) -> [PASS][104] +7 similar issues
>     [103]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-rkl-2/igt@kms_sequence@queue-busy.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSY00hHYw$
>     [104]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-rkl-6/igt@kms_sequence@queue-busy.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTyMsKpxg$
> 
>    * igt@perf@polling-parameterized:
>      - shard-iclb:         [FAIL][105] ([i915#1542]) -> [PASS][106]
>     [105]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb4/igt@perf@polling-parameterized.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR9-Yf88w$
>     [106]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb6/igt@perf@polling-parameterized.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRKGI0wGw$
>      - shard-tglb:         [FAIL][107] ([i915#1542]) -> [PASS][108]
>     [107]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-tglb8/igt@perf@polling-parameterized.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJT51UXuyw$
>     [108]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb1/igt@perf@polling-parameterized.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSkxYiwAA$
> 
>    
> #### Warnings ####
> 
>    * igt@gem_exec_fair@basic-none-rrul@rcs0:
>      - shard-iclb:         [FAIL][109] ([i915#2852]) -> [FAIL][110] ([i915#2842])
>     [109]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ_VM5KYg$
>     [110]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSn3YwltA$
> 
>    * igt@i915_pm_dc@dc3co-vpb-simulation:
>      - shard-iclb:         [SKIP][111] ([i915#588]) -> [SKIP][112] ([i915#658])
>     [111]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSj_geYGQ$
>     [112]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTTrUKNYw$
> 
>    * igt@i915_pm_rc6_residency@rc6-idle:
>      - shard-tglb:         [FAIL][113] ([i915#2681] / [i915#3591]) -> [WARN][114] ([i915#2681] / [i915#2684])
>     [113]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-tglb5/igt@i915_pm_rc6_residency@rc6-idle.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTGfpmpQQ$
>     [114]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-tglb8/igt@i915_pm_rc6_residency@rc6-idle.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRvNbz7ug$
>      - shard-iclb:         [FAIL][115] ([i915#2680]) -> [WARN][116] ([i915#2684])
>     [115]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTwQ22Y2A$
>     [116]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRUN2pDWA$
> 
>    * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>      - shard-skl:          [FAIL][117] ([i915#3722]) -> [FAIL][118] ([i915#3743])
>     [117]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJS3cnTcDg$
>     [118]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSd79frSg$
> 
>    * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>      - shard-iclb:         [SKIP][119] ([i915#658]) -> [SKIP][120] ([i915#2920]) +2 similar issues
>     [119]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRilYVvMA$
>     [120]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRZDOB_Bg$
> 
>    * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>      - shard-iclb:         [SKIP][121] ([i915#2920]) -> [SKIP][122] ([i915#658])
>     [121]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJScq2uMBg$
>     [122]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRJZY25xg$
> 
>    * igt@runner@aborted:
>      - shard-kbl:          ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
>     [123]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl1/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSCBqAOCw$
>     [124]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl1/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSCBqAOCw$
>     [125]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl4/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTJzjlfvw$
>     [126]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl3/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR_O8YFkw$
>     [127]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl3/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR_O8YFkw$
>     [128]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl6/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTuc3nSjA$
>     [129]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl4/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTJzjlfvw$
>     [130]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl1/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSCBqAOCw$
>     [131]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl6/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTuc3nSjA$
>     [132]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl4/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTJzjlfvw$
>     [133]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl6/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTuc3nSjA$
>     [134]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl3/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR_O8YFkw$
>     [135]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl4/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTJzjlfvw$
>     [136]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl7/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQRTzkNGg$
>     [137]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-kbl3/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJR_O8YFkw$
>     [138]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl6/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTnRlINgA$
>     [139]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl1/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQADH_tEg$
>     [140]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl4/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSztPWm-g$
>     [141]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl7/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSmHGvvbw$
>     [142]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl3/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQg8W_HZg$
>     [143]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl3/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQg8W_HZg$
>     [144]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl4/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSztPWm-g$
>     [145]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl3/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQg8W_HZg$
>     [146]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl4/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSztPWm-g$
>     [147]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl1/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQADH_tEg$
>     [148]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-kbl2/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSpNQjjXA$
>      - shard-skl:          ([FAIL][149], [FAIL][150]) ([i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([i915#1436] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363])
>     [149]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl5/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSZqttBOA$
>     [150]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10598/shard-skl2/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRewX2gcA$
>     [151]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl7/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ7-fosrA$
>     [152]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl4/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRoXs1BDA$
>     [153]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl7/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ7-fosrA$
>     [154]: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/shard-skl5/igt@runner@aborted.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTNNSLLhg$
> 
>    
>    {name}: This element is suppressed. This means it is ignored when computing
>            the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>    [fdo#108145]: https://urldefense.com/v3/__https://bugs.freedesktop.org/show_bug.cgi?id=108145__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQ06E5g_w$
>    [fdo#109271]: https://urldefense.com/v3/__https://bugs.freedesktop.org/show_bug.cgi?id=109271__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTgoZIl1g$
>    [fdo#109279]: https://urldefense.com/v3/__https://bugs.freedesktop.org/show_bug.cgi?id=109279__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJRNZfJ9IQ$
>    [fdo#109283]: https://urldefense.com/v3/__https://bugs.freedesktop.org/show_bug.cgi?id=109283__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSqxn99jA$
>    [fdo#109289]: https://urldefense.com/v3/__https://bugs.freedesktop.org/show_bug.cgi?id=109289__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTjarTUMA$
>    [fdo#109291]: https://urldefense.com/v3/__https://bugs.freedesktop.org/show_bug.cgi?id=109291__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJTxQvN-IA$
>    [fdo#109295]: https://urldefense.com/v3/__https://bugs.free__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJSjjuBipQ$
> 
> == Logs ==
> 
> For more details see: https://urldefense.com/v3/__https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21075/index.html__;!!ACWV5N9M2RV99hQ!eEcobnao0zhynlMOcyqvV3viLvvCZSM9cEUV5yaBEfrH8MHp54c4qQ0cRJQMZyKXVA$
> 

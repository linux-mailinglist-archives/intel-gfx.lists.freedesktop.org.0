Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C1874F30F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 17:10:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05EDF10E3B4;
	Tue, 11 Jul 2023 15:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1699F10E3B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 15:10:46 +0000 (UTC)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 36B77sOv009170; Tue, 11 Jul 2023 15:10:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=GZXd92w7ZXBiL2h1KDIr4D/yos5exrSPtNCprdpPUeU=;
 b=t/KGj9/yMFQbyfArJRzlRriCPcRksj6GNBkpFzYFS1sBAI8698OUQJL+NgLTIo5WJ3n9
 P+6T69w0ywKwPZmj3mqQb8fxR2Uj+zljUCIElLHZwtcJz7EaExxcU9P8qHvcIBOTq2Nr
 9ci3Ormkyi9bk8Zyoung5ayl6/N+SVMn2zaeV6wkKTlY9EzVD5H2KBDTrKjSIF3kbI7v
 iXFqUnEv9MvdRdbDlziTzSj9glPPxR2U85/DOBJjHndSe40n56sJzXJOhDJ0K2bvrYtL
 5idHuFCDiK99D9KxF+WphsKW4GXSITAYhsb/8OdPphvl4y1YmDpF8mzRjD+Cy4mQQuWS JQ== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3rrgn7tvtd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Jul 2023 15:10:44 +0000
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 36BF5sHg004344; Tue, 11 Jul 2023 15:10:42 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam02lp2048.outbound.protection.outlook.com [104.47.57.48])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3rpx8b9h0p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Jul 2023 15:10:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hQOnU5qWBUDYaO/WfcCULj/6Fi6J4KBNtbpVJBYrZLWuHF/wf/uzV1iTbTARtXqR7la20oblib1UVqTgn8ezUTEI/kdMZ/Jbp9zYYwfMGQvdztBz02UAgu9p11XKcjGmdKLZUSHz19fAdVfN6LP/+Knw0q0RQnV0+IVRUcMZO5X7d8jh1rq/cIpRv1Rmai2q9/HNSUQ7w4gU97DJAAXDta8hSg69Jp+Dbm2+cSjzcf2xIRckkAphGeijINI43YiyZau4671pE7R5x/rPQZ0q3cIUaYhlA+oOTqXBR5GLAu+/LbDwMV2KfkeNYoWlVgO4ykMHsvd87Y8rWuJZi+xZfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GZXd92w7ZXBiL2h1KDIr4D/yos5exrSPtNCprdpPUeU=;
 b=BjR5dDlwhf07w7ZxQojotJiAWhRdkJ1lQ2VB62zgEE5ufDzHMZtRlv0S2+KBdmNFloCMTeQE3yp8qfj9IFoFRtIKHsRmXkqriNRTcftTvJncv9Ulg3R0Is1CjmypjslFgTgXgCTJhAq73Eq0/gEG/dwReYifZjIto7GQA46FCLYIlxw/FAzdXOA5CcyS17tMe37OQQZOCl6rN68WlYHpMAIgx0wu8fwEY3rlwWCJSctwQZ3UmFmZF2k5f1bZ/6vfR1l6F/a025nD9tiUeAuVAIBsKrWTL63C+bw5lie1eLrJDIqc/T3xpLey9YzekjyLTVqSkC8bPJFu38NH88TcnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GZXd92w7ZXBiL2h1KDIr4D/yos5exrSPtNCprdpPUeU=;
 b=c5u0oPga/WGNcgvQsKIa1AyMrmTe6wgO7+6h78ESMx6rt5TuR7vLSSmJ8OllkpV/A9aSzEFE1jKQvz8LFMmnvzqntv2ashLd7K5SYG3DiVAPpYTPcxoP2ARKfO/wNTxLS0HGvqVY3EVdIoO5kDN73cc7vNVdwXCrh0A522PTHPw=
Received: from DM6PR10MB4313.namprd10.prod.outlook.com (2603:10b6:5:212::20)
 by CY8PR10MB7365.namprd10.prod.outlook.com (2603:10b6:930:7b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Tue, 11 Jul
 2023 15:10:40 +0000
Received: from DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::e38:5b81:b87f:c1eb]) by DM6PR10MB4313.namprd10.prod.outlook.com
 ([fe80::e38:5b81:b87f:c1eb%7]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 15:10:40 +0000
Message-ID: <c8b9b49f-0eae-c6f8-0d0d-b2828f1251cc@oracle.com>
Date: Tue, 11 Jul 2023 16:10:35 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230711110214.25093-1-jani.nikula@intel.com>
Content-Language: en-US
From: John Garry <john.g.garry@oracle.com>
Organization: Oracle Corporation
In-Reply-To: <20230711110214.25093-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0230.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a6::19) To DM6PR10MB4313.namprd10.prod.outlook.com
 (2603:10b6:5:212::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4313:EE_|CY8PR10MB7365:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c15d4ee-f2bd-45f4-d73c-08db8220fd43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l6AoDKAZBKpgikgIWjVds1VwCJZHl2EOx9+/ANFZ9fcjLekXD6ZpDcIinVvXFo9jBz3moRTNO23xGkHCsyX44+MrN0wA3Erh7z7R06iYY4ei21eOrNgwm8GL8KYOQYW5aHTGJunSFMFFmrxrWdwQiPGWeCgBgpAXZK1mLN8Yzizd49YUeFTbgTn0QfluZt0iZZ98lo21J0jB/ZFnmudsa2ijtVYcSQ6+O7mGwd+eyoyIupAlbHSAlfL3HpDHO5CBjSH+4PIqxp4L34tYdksIl3WDDFU+NxtUQLQEtB9CavRxTRlKyuO8H90oils4ZA6GWfn7acV6un2nW5gJzpvuscrIwjioG4I1EuFK7zw9undCl9InOo/gPDau8H+E8g/RP8LUhtDOaoIxJMluE/BcxD7/ERfWRnXwmpy4gme1/heFCRtmG36a2YEEF6nAXHmsMTOpZRxFuAf2DjFJ122HobrPyr/Mj1a3nzRdDzT6oLwNkWkoz+0/gpKz6TyWdh+coVhe/K46iLL5dks+1/vQna7HA42piyzMfeKB1tA0OgGTAGSflf/0fXpMsjExeXTmfTxzB8PUU7LknM+4YPAxZNUXSV+jOmNm2Q3ALJ/Dth2bAdk/kQIasH5R1MNuHfyvwhyRRymkauAy0VK6cjq9UBWYCCsVuE/oudC/cYepjEw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR10MB4313.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(39860400002)(346002)(136003)(376002)(451199021)(186003)(2616005)(54906003)(38100700002)(5660300002)(8936002)(36916002)(6486002)(6666004)(31696002)(86362001)(478600001)(8676002)(316002)(31686004)(41300700001)(2906002)(4326008)(66476007)(66946007)(66556008)(6506007)(83380400001)(26005)(53546011)(6512007)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDNTUmJXN2UrbWR6ZmdCZFllQUR6aXdqQjdTd0JVdklaTjVLYXN1N0pLRmUx?=
 =?utf-8?B?OUdweDI2bmZRWWZ6NlBwTTgzSlJ0QVdkaGQ4dGw3Ryt5MmoyazNwN0kyeUtl?=
 =?utf-8?B?NEt5YTQ1bTRyNS9qZTFaNy9XWFZEbEhtcUo4dXdLRU45QSttU3FrL3V3ZzVk?=
 =?utf-8?B?bU13RGRPSm1adVRFVEZmRHVmdWdaQjJjZlBmbUEvaXJlOWZTV3RpRlJXaHha?=
 =?utf-8?B?QUNhc3JsL25QV2wvVVRsbVQwUWtPcE15SFpPejd1eGhNc0VKQVRtSmgrRlFD?=
 =?utf-8?B?SzUzc3lDbzZqQjc2eUQ5SWpwU3B1Qk1md0ZqSG50SUM4SVJuaUprMWVMeGwz?=
 =?utf-8?B?Q2kzZ2tBeXkxQ1p0Wmd4ZS9NajVvS0FQcUZBaFFUN2dFMStOZW9HRnpHUHlF?=
 =?utf-8?B?UFZNcmN4SmJLNFRDL2hnYk9JdC9XdU1iVUZQM3NyTVFEYkMrVERMTUlsRzdH?=
 =?utf-8?B?aVU2YitqUis5SGRhaHBGUnlUbExwNnBRbE9xa0tyQmFhVU15Qm1EenVTTG55?=
 =?utf-8?B?a3UxcytNUWJGS3BndmVnZVk4RUZXUGg1ZCtsVGh4RDFHeURwYWNTY2E0U0Zq?=
 =?utf-8?B?eFdDR09vTWZEdkIwai9hRU1RaU85b21QWnN4TlVNZ1E4RjJ3cEhrZ04zRkdP?=
 =?utf-8?B?YWxVOWhWYTFrNTJyRUFJb3lSS2ZZSVRBemE4cEhRZi9TKyt2a1hXRGUrQWl2?=
 =?utf-8?B?Qk9FYjkwNTgvM1JJdzROcllxMFhJMHA1bG92MVI2eW1udC9VRDhiNGZVTUFq?=
 =?utf-8?B?aVNPWCtSZ1JkLzZSMElFcjV5eUE5OFZYTFlUVlQvM0FtUEZxSzZDSXV6VXFz?=
 =?utf-8?B?WUhqZlliZER6M2NrcVd5MUpwUG80MXByNWFQb0RDbDNHWS9SSklyOFhDL0tw?=
 =?utf-8?B?RUdHNTZzWEdYeWN5cEdIVUtheHU0eitBbVFlYUNGR1d2ZGlRTHdGUlFBZ29m?=
 =?utf-8?B?bW4xSGt2ZUJBT05uTW9hOEFvNWU1bEdTbEN1YWxTUzdsRGhxRWJ6OHpQSFhW?=
 =?utf-8?B?eWxSUFYvN3pzMTRIMUw5eHpqQ1p1ZXdUY2szUk4waFVxbEdWRE91UnU1NnVi?=
 =?utf-8?B?TGU0bTd6Q01PZU9ka3NwMEtqRjY2cGpmRnJTZC9FVTI2QWRDUHJ6OXp3bEVF?=
 =?utf-8?B?Q0dTM29uMUZlTjJmd25DUXluVlV1RkMvQmkrdHlYK25jTkU0UWQ0L2tQbjNL?=
 =?utf-8?B?Z2FaOGU4RkdsRzBDL0dmclFnTjU4K05QUmRyaFI2YjFDdGorTnRreDQxQkdT?=
 =?utf-8?B?TTlIREdETHVORW1ONzVuK1JVMHBWb01vSDlKRUIxSUgrY01KVElwbXZ4TXF0?=
 =?utf-8?B?WmY5V2p2VlhJZzJPY2laa204SjlJYVJLRDYzN2hNUE5TVS9hVHA2RExYWDkr?=
 =?utf-8?B?TWdiZUVBVXNoTkdmNVlVSThNUnpDemdJUlkwZWVUY2dFcm9RMDg0c085WlMw?=
 =?utf-8?B?SUFIeTVvYi93RS9HNXVYVWF2SFdueVA1aHQ5RWIzaHFKbk9PNGM4SWxRblJD?=
 =?utf-8?B?OUZ0RTFwalhIaFlWSVlVS3NTbnFnVmtBdWZrdCtRVzVMaVhxTDVBSFNpWitX?=
 =?utf-8?B?ejA3ZVA1blR3cWp4M1lkemdNbHByMW5odmg4cjdHNkdVRkRHSE5ORFRFdEgz?=
 =?utf-8?B?R2gvV0tNS2FDNHJXZ1o1dlovbnE2UmFIcmEwMEM1b0hXUVNncFpJUHVJOUNM?=
 =?utf-8?B?T095WTBFREJPSVZ3WmRkS0g3MXQrZm9ZdWJvMkh6N2c2US9SZ3RKUFpPQlMy?=
 =?utf-8?B?NmRIWjdDYUZpV25PQnB0OGI4bzlCTGVBMEJBWHg5U2F5NzBlWHdVNGFhNHFa?=
 =?utf-8?B?SGNaZUtZbzM3bmxZbU1VdkpITHQxYTJnZ3AwY3dibXIrSTg4QmRtdnI0UndG?=
 =?utf-8?B?b0hFdDM0YUxza2kydGVDbjZWVlY3Zk1pTWh1VnJoNEE5WEpkT2VaSFVZK09l?=
 =?utf-8?B?UG1CZVpiVUl5MVllczhaTmZ0WWV6andydno5UWJwK0hpWmlCYnhyR1RTZWJC?=
 =?utf-8?B?alNUdEV6YURJSEVDYlZDSDh2MFNNSnlLMFFzbjdGZExIb3F0RkZhOGxCMXdB?=
 =?utf-8?B?QTJDRmRtbVRvd2J4TjNoY2k0L3JZbjdRUUwxc1dJZmtWZEZOdWUxYlBPOFJ5?=
 =?utf-8?B?NlpSY0NsZjRvdUN5Mi9WbkN4a0xlVVZ1YjIrTG1uVVZOYlgrODdjUitYVWhk?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: m+drILn7EqiwC7htyY2i6MeaCo5oDSoyps7GGcKRRGyedVw0Vx/y3fyyjYjeYiHAyyN0fY73VDVyqE4mQ+vzrKRoKVJkv9a1QG8KzS/fr9j4wwSwWjFkkYP52KI6jNE6N34iAMrmUevF3tdxSvDRrgCPivHLZtpzmSlJdhYfYHhJ5OTUlfzD7rXTNh1MFncQu/nTY9LFV47qCtVIQuo1dSL0wl0J5KXrjsVxoNENMsOPixj/Dg084G/wI1xr3pYX6eL6xDXzvWehdOo1bxE4x/RY6yASc41RF8/jQXV470/xx0QY4u7/Xr5MdZiHQhY9/5JoVUO8p8XxoeU67MmOSjTtwxcAk73rmk1fMNMDWYnl2MG3PWRki2M/VD9+9T9alKFHHO7UbwhycxE5zKqN7Y8EQ7vsW/HCs9t8GxeeDgQ6vGbFujUmny+vllhAjyXYh4mrB7XR0OSpXPPR04mNxU6QvEUsEJDTnKnZ4FVNfokkQj1aLghbspsChYGa982DLwWPmkUir8blIXSeTIn0x3nKGUgmykxPSuCWYJ3GlZZrCRTnP2kRnVRhE66WOvSercee3mnyeNcu9BDkMqM9CDTzok/nHYEO6fwIhVLIHTrezsnDpxnkfx3gNu8Fha9HX9n60bK6whA0l4Xy5gcXtsfFFYM5/MkczxnsgwHw+VNMwF2RtDngds55WXEhhga8EsYpCtrZzHeULcN+M9gEoDY+UOqB/J3Rk4VCxjp4N3sXehNnXf2qZazegtOy+KXnGSAIFxcDr+BYUChnfIIkDY+YUXBekOlqgx6e0PSqv1vZ8N2qml4bp0zcDbjOB/YdlOvc1pbpylhvU/xH2bGD8L0gJpDgJVpVAGm+2xdcYIQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c15d4ee-f2bd-45f4-d73c-08db8220fd43
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4313.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 15:10:40.5265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sP/6rtLGk+OSvHL1Qid9CPDSF8HA4htuCPQNtNJS50zg3K71b9KRar+mpTPKJ24Tr2XrnCiCDf00UEKnrBf7DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7365
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-11_08,2023-07-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0 phishscore=0
 spamscore=0 mlxlogscore=999 suspectscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2307110136
X-Proofpoint-ORIG-GUID: UiKEDCRTGS-HAiNWvjPrK54Guu57R50X
X-Proofpoint-GUID: UiKEDCRTGS-HAiNWvjPrK54Guu57R50X
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: use localized
 __diag_ignore_all() instead of per file"
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/07/2023 12:02, Jani Nikula wrote:
> This reverts commit 88e9664434c994e97a9f6f8cdd1535495c660cea.
> 
> __diag_ignore_all() only works for GCC 8 or later.
> 
> -Woverride-init (from -Wextra, enabled in i915 Makefile) combined with
> CONFIG_WERROR=y or W=e breaks the build for older GCC.
> 
> With i386_defconfig and x86_64_defconfig enabling CONFIG_WERROR=y by
> default, we really need to roll back the change.
> 
> An alternative would be to disable -Woverride-init in the Makefile for
> GCC <8, but the revert seems like the safest bet now.
> 
> Closes:https://urldefense.com/v3/__https://gitlab.freedesktop.org/drm/intel/-/issues/8768__;!!ACWV5N9M2RV99hQ!IHKvxwtPYBXBj_pfrXmPg5H_6OVsPZaDRDgUUuYsj2IY_JpxM3APirbZR_0yg5UO61Gf2d79Ud7fgySHuVwhOPo$  
> Reported-by: John Garry<john.g.garry@oracle.com>
> References:https://urldefense.com/v3/__https://lore.kernel.org/r/ad2601c0-84bb-c574-3702-a83ff8faf98c@oracle.com__;!!ACWV5N9M2RV99hQ!IHKvxwtPYBXBj_pfrXmPg5H_6OVsPZaDRDgUUuYsj2IY_JpxM3APirbZR_0yg5UO61Gf2d79Ud7fgySH0A7kxf4$  
> References:https://urldefense.com/v3/__https://lore.kernel.org/r/87wmzezns4.fsf@intel.com__;!!ACWV5N9M2RV99hQ!IHKvxwtPYBXBj_pfrXmPg5H_6OVsPZaDRDgUUuYsj2IY_JpxM3APirbZR_0yg5UO61Gf2d79Ud7fgySHAwJkTDk$  
> Fixes: 88e9664434c9 ("drm/i915: use localized __diag_ignore_all() instead of per file")
> Cc: Gustavo Sousa<gustavo.sousa@intel.com>
> Cc: Joonas Lahtinen<joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi<rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin<tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula<jani.nikula@intel.com>

I tested on next-20230711, as this does not apply to v6.5-rc1 (where I 
originally experienced the issue):

Tested-by: John Garry <john.g.garry@oracle.com>

cheers

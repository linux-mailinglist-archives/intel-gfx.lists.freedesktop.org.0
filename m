Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FA845901D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 15:21:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D17889D64;
	Mon, 22 Nov 2021 14:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B5689D64
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 14:21:24 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AMEHF1P019937
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 14:21:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to :
 subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=H1URZ7rCQ0Guv5UsT6zK5d1quPuedh6GiHSgiC01F1A=;
 b=yazO8H2/BCVymTNgoxQnHjBflscvLjSDuBWeVs64DqDq1tLAc682FljsJkh0+Uj2k0x3
 PJAvCPdSk1CdOZkkZCXRXNRIj1ZrVNAGw1P9srlcCUxbBjSvwGwcmh8mlGDwu2ppV/Un
 aGlJLBceFLB0PUvwtQd7yd4bESnvnZ7+78Lj2OtN74S8Rqr7wxarpCXPntR1UCeKUOHS
 6i+2JNfcsRurmDXVzlC4C76qcpSnp7BZ/a+cNsxW9cxtNmmkIt3hfZE7VSGd8+zVTYV7
 I83kNqHomqSCrXDt+FNk1XfMm+aIz+bc83zWt1ox8uvJ8dQ2AIunLsAQ+hLNu0gPrH5H vg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cg55fta6u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 14:21:22 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AMEGX3d087346
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 14:21:20 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
 by userp3030.oracle.com with ESMTP id 3cep4wrqfc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 14:21:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WiHkRBjy3VQhEXZ3BuoGMeAmrte3rtB8oJUNqdmy4BtdLv8k2xXQvvyQMcau72zwTo6Ua8WesWbwobN41BECrx2DmuLvuYEcPt5yx9LGgTVcN31oq1mS9vH3GrWYGHhr5Hbkw/peqU3fgbia0TOXf4vSAm0tJF9Sr+T1QGPxKEfmS08Um3kO2bMH5ZreWRSD5HSQp9OPATbdqYN4whi5Zs9dqF0xgcMcKmt7eOAEEoc4SH0MgAj0SF8XeSKtGjmG2Hrsn4zV/Xqep6NNzROr1pkHtSiNcjO/ExeHXbjDqwIEG9069gbAcew5Rr+rmWyhskCnH5KKUyMRJnUYIxkgGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H1URZ7rCQ0Guv5UsT6zK5d1quPuedh6GiHSgiC01F1A=;
 b=jK+onPhIf70xy7wNW1PPz5AORo0ho5Gp0OOjS0Z0xT9tTZxSUELrb+PJz8bd36f3PwJ/MQmziAYWiGCdZCcA6K8aNu7gpa7Vheo68026veiZQp2yPof6P/ueIACDU6B4T3ewBmoucKtKFF/9HsUf23mMT0P0Nk0ncrGlfk+4gVQtMpQTLeh7A3kmX6ZcRvd2XaK4lhOqwskKtFGtzmG32BtMFCzqeXFkqFDR0nEwNkRtRiFBCyPZbVbEKaFVozWiKFCpHnqyi2npminKOfOdtcU5dMrcEvxleWfIogVvXkOkOX+EqizACoBRVNBCGtcffttGeuc/od2+IXcqcrUd4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H1URZ7rCQ0Guv5UsT6zK5d1quPuedh6GiHSgiC01F1A=;
 b=IUiTlGcIXF2WwAtjlSbYis20vgw01cKRIcoVD4OCcYkrce6VEgtvD7Gy/rjkVEAeCHCCxLK3YmiQf24mRb8psuF5QhHLTMQADV6PFzvnPAN77zQYj4hBLZn26ZYiUfLPHQcsSY9e2xkQgKTOG3aX6PtOX09CvZmszKsYnstDqjQ=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR1001MB2093.namprd10.prod.outlook.com
 (2603:10b6:301:36::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.24; Mon, 22 Nov
 2021 14:21:17 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::495f:a05d:ba7a:682]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::495f:a05d:ba7a:682%6]) with mapi id 15.20.4713.024; Mon, 22 Nov 2021
 14:21:17 +0000
Date: Mon, 22 Nov 2021 17:20:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20211122142059.GC10517@kadam>
References: <20211122061438.GA2492@kili>
 <163759011978.5692.17677605074846455044@emeril.freedesktop.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163759011978.5692.17677605074846455044@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNXP275CA0018.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:19::30)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JNXP275CA0018.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:19::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.19 via Frontend Transport; Mon, 22 Nov 2021 14:21:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 075448f9-af7d-4021-4b1b-08d9adc35877
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2093:
X-Microsoft-Antispam-PRVS: <MWHPR1001MB2093AE88E9F092102CA9663D8E9F9@MWHPR1001MB2093.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9qYjAdFoa+vIzUP+MNpAYcf6viut/TqMzNBVSyesRc2aPlbF9HdqdGH+sKxD2/JjINkVeUvOGKuSj9+ug2+/oRaHJ5HOU6KYz2tUjmv9ucdsuTVgOgAzZf1qghlSntpwb3oTdiXOogmcQTWR7cO1t5lBGfyNX2zTH44kpd90bM/bYy+vRr7qymExNoBNtGayfY/PGRFgYmefWJCVEAfg1wQljxrObfsvYHDKQY2ZKLvik/KqaXr8//kpK7U8OauxA7wdytqm8ebwvu1+74E9ggOPLlCq0caELoWvV6GsePX7YkQKx4JnoLcnrypcbth49jDqfkCN0qAgEoR4RAR4FiBr5z9FLG+Y2D+xAecfzW/UsMzH6NCmDoAMN+KdKx+Xktav5vcoATMpfWQ6LQtvOvzfFwSxtBCFPI2R1rw0+YMHnw3LLbJbK4caMGoH8aS8CFJMoELizhlBx5jkS2Yuyx+HQGGTITJkXP/F6h+xTwPGv0Sd6gR5jt8En2D2RygYngubEdopiYVCtAhpRhH7pNZuxZfWvSw8MmkKIY4depQ25M8Iv1NrY4JphNCvuchtyylUjaKrlZJg7zpqIq1TU/1BlB+Ax8ZhfJkECImO9+AuWf+sl0kBIBEghvf0eFGi/QecoxMmmCcrsJAvTyi9TJtiEGwvlUUIU+y1mXDS+1zLxdvULeTxaRU01ot0rhR4l5yAyhqJrE+ieN4gqzs3A+Az/zJWxHu9Y8ilL+ExXKbaBpWa0EzpKYEMER6mUqV+J3bAT2yfyFADN8K8xWw6XA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(30864003)(9686003)(38100700002)(316002)(966005)(38350700002)(6916009)(6496006)(55016002)(508600001)(956004)(26005)(9576002)(6666004)(52116002)(8936002)(33716001)(2906002)(83380400001)(5660300002)(33656002)(44832011)(66556008)(66946007)(66476007)(86362001)(1076003)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Q8xJqSC0RzXpIyHirYrInPzKA27LrH/wNEmlvQ/piNmSQDYu6ufoE2GeI9Ki?=
 =?us-ascii?Q?Qg4mxKz1Q6snjqfS4u+JmQkwXO9A+yAbp6bWZadJCONUGElE/g09RfdzeMNu?=
 =?us-ascii?Q?jYybSWB0M3FeNybXWMYkxgBR4r97lkIjSW7xqSqcoWm9DSLIaS9Xysl/WCPK?=
 =?us-ascii?Q?QWgBn3HBSQ3y//4o4+SrhYs0+gX4mQn5iZ5L/YMKyiXnxqWUb4nksgfI37LY?=
 =?us-ascii?Q?wOBMMAdvoJ0v7WzUDocPm2PH+lXlhMMFKPj4nNfVZuZeP9iAyCrevX7LbjlF?=
 =?us-ascii?Q?XWqjMNPjm3NSVNATTt8thjNl9rnIT5etV7y8LO5EYdbaV4qsfw9f7Fpr/M/C?=
 =?us-ascii?Q?L5iHcZyqrhcpX6CKSJoj1EJoUeR3Vn1FDLGVLdwB0SK07gR9P6hyf08CNtBj?=
 =?us-ascii?Q?RdGy7Yfb6uVd+YNT8j+EU2xtDxQvsTSn8XS90tnfkzbypNRys3AX2+EvHHfK?=
 =?us-ascii?Q?ljRUySoOqGRCoClsEF35gB/ZgELCRiEcFlyD4C/7ImjisXI79w+3ejEWiZVo?=
 =?us-ascii?Q?rygdfSsNQ1wXKNJiqPlwRnjOYyqGZBLMK3U/e+MCNyHIdqxQMQxigoXL/g16?=
 =?us-ascii?Q?1ngpYlsyXbRASfgT5TlxKecmULRqMZ/cMYJgr2XVWnw7C8JMoicRVMO+PdmX?=
 =?us-ascii?Q?vaKcPz/U0RevYjwjmOBrPvVVB5YeOJQRXOAK/4PaIL+58r0S/i+8zNs3lajo?=
 =?us-ascii?Q?fWwNu9uqlF8dS0ax1VD28A3zjzsQvz+H9rDbuSE/GPDkd7UaIqpQxmRWMQ6I?=
 =?us-ascii?Q?EQussFUib+2CoDyR+vgR6CclK6PmqCdynHQcpUHh1QTPyi0h4Y2w3VOIdrpA?=
 =?us-ascii?Q?xE14mxEWLNymxPrGqmKChRPO4AtJ+L4VahWRaUvRrvRfQChnaPaqb4CVJWn2?=
 =?us-ascii?Q?0sFLIk1XpYZLDNsqRiSH8LvPZnnGt+m402bjUi7pT/x2rrIGOowX8EJx20Fd?=
 =?us-ascii?Q?5a9/4oAYoarKQRRzagVDTw8CRQtd7o69YPDqHOBpUtU335MGiecUs3hCxTnI?=
 =?us-ascii?Q?LaYY3g2NvTvp5Zr/LlMJM9re8waBiFNLys1f+vm3xBQ9J+VnqCN4vqiPc2aK?=
 =?us-ascii?Q?EdPf8tdj7cbCl2+BM1DJSO2MTthSUkdX7lNKdt2aPVpQxauxaZ8tAiDOsSOO?=
 =?us-ascii?Q?+MHBlakDkvt31m+A3kyyInugPxQDr0edoN6nuftjybXfzJOuVMb3kTAU4+6w?=
 =?us-ascii?Q?aFYW3x1p3VQadgzEwORxYJylnHbGhKDrIxU3+XTdvoIzP1yyJdzy8sU3xl9B?=
 =?us-ascii?Q?joYOp5Uo+LtyitkBVojCv5cp3SAUpEBPbs9Byf4ZrMChy0l1iBRDHz6vRcYl?=
 =?us-ascii?Q?yXN8Ch5FznqdzQU4+oGgzTwafOo3tHITaVekDanBLCC4/ZNXpf+qSQIlBKBy?=
 =?us-ascii?Q?BTZRKa5Xte5Na5p4JY783FwBw+WRRTdLO90U2vDribU2waxc5R8WtKGoJF4/?=
 =?us-ascii?Q?2C8tec6i9AAMGWfV3qVAZryUNxCNN8/ZnZTtLxj8ifdYgULHkBa3WiToRY/f?=
 =?us-ascii?Q?OHvO1cbvG6zyfQwIJn5Yf+n/vZMqmRFw3rnBsjDkoDeT+k1sPUYXnpjD929+?=
 =?us-ascii?Q?QqGr4N0o4Dc1eH37CPne50rpHp32elHlqiv0BY0TR+dGBj8zTL+m/xzA23Nw?=
 =?us-ascii?Q?Eoe7/EeHGYKNa521i39zUfEK4k34wdAHoEtmS6+MbomHYP+WXjPgHWIdbTu1?=
 =?us-ascii?Q?40D9aBA/pVXxbHL3sQF70PT035E=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 075448f9-af7d-4021-4b1b-08d9adc35877
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2021 14:21:17.0023 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rMyZkvP8fe533PHPfj49ua27E/EpDUoayULE4CvBDOJXG9OzsAeIip0Ur2ugekd1zny7N9JfVKSbe3eyq4zn6XmHmsPDnHzsiTD4U2o9qkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2093
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10175
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 malwarescore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111220076
X-Proofpoint-ORIG-GUID: Uv-KChczm-jJRRjtMp1PpUTcoUXL8Ac4
X-Proofpoint-GUID: Uv-KChczm-jJRRjtMp1PpUTcoUXL8Ac4
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Fix_error_code_in_i915=5Fttm=5Feviction=5Fvaluable?=
 =?utf-8?b?KCk=?=
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

On Mon, Nov 22, 2021 at 02:08:39PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/ttm: Fix error code in i915_ttm_eviction_valuable()
> URL   : https://patchwork.freedesktop.org/series/97151/ 
> State : failure

Who is supposed to be reading these?  I feel like there should be a
human reading them but it's not me...  The system is broken, but who is
fixing it?

regards,
dan carpenter

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10911_full -> Patchwork_21650_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21650_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21650_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21650_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@dpms-vs-vblank-race-interruptible@b-dp1:
>     - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-kbl2/igt@kms_flip@dpms-vs-vblank-race-interruptible@b-dp1.html 
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl7/igt@kms_flip@dpms-vs-vblank-race-interruptible@b-dp1.html 
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21650_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([FAIL][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4392]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk3/boot.html 
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk9/boot.html 
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk9/boot.html 
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk9/boot.html 
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk8/boot.html 
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk8/boot.html 
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk8/boot.html 
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk7/boot.html 
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk7/boot.html 
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk7/boot.html 
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk6/boot.html 
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk6/boot.html 
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk5/boot.html 
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk5/boot.html 
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk4/boot.html 
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk4/boot.html 
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk4/boot.html 
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk3/boot.html 
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk3/boot.html 
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk3/boot.html 
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk2/boot.html 
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk2/boot.html 
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk1/boot.html 
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk1/boot.html 
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk1/boot.html 
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk8/boot.html 
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk1/boot.html 
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk1/boot.html 
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk1/boot.html 
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk2/boot.html 
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk2/boot.html 
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk2/boot.html 
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk3/boot.html 
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk3/boot.html 
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk3/boot.html 
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk4/boot.html 
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk4/boot.html 
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk4/boot.html 
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk5/boot.html 
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk5/boot.html 
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk6/boot.html 
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk6/boot.html 
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk6/boot.html 
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk7/boot.html 
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk7/boot.html 
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk9/boot.html 
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk9/boot.html 
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk9/boot.html 
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk8/boot.html 
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk8/boot.html 
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         NOTRUN -> [TIMEOUT][53] ([i915#2369] / [i915#2481] / [i915#3070])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@gem_eio@unwedge-stress.html 
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-iclb:         [PASS][54] -> [INCOMPLETE][55] ([i915#2369] / [i915#3371])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-iclb6/igt@gem_exec_capture@pi@rcs0.html 
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb2/igt@gem_exec_capture@pi@rcs0.html 
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          NOTRUN -> [FAIL][56] ([i915#2846])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl1/igt@gem_exec_fair@basic-deadline.html 
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][57] ([i915#2842])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html 
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-kbl:          [PASS][58] -> [SKIP][59] ([fdo#109271])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-kbl4/igt@gem_exec_fair@basic-none-share@rcs0.html 
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html 
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglb:         [PASS][60] -> [FAIL][61] ([i915#2842])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html 
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html 
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2842]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html 
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html 
>     - shard-iclb:         [PASS][64] -> [FAIL][65] ([i915#2849])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html 
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html 
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109313])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html 
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][67] ([i915#2658])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl4/igt@gem_pread@exhaustion.html 
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-iclb:         NOTRUN -> [WARN][68] ([i915#2658])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb7/igt@gem_pwrite@basic-exhaustion.html 
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#4270]) +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@gem_pxp@create-protected-buffer.html 
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#4270]) +3 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb3/igt@gem_pxp@create-regular-context-2.html 
> 
>   * igt@gem_render_copy@linear-to-vebox-y-tiled:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +99 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl4/igt@gem_render_copy@linear-to-vebox-y-tiled.html 
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +121 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl2/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html 
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#768])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html 
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][74] ([i915#3002])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl1/igt@gem_userptr_blits@input-checking.html 
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][75] ([i915#3002])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl1/igt@gem_userptr_blits@input-checking.html 
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][76] ([i915#3318])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl7/igt@gem_userptr_blits@vma-merge.html 
>     - shard-iclb:         NOTRUN -> [FAIL][77] ([i915#3318])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@gem_userptr_blits@vma-merge.html 
>     - shard-tglb:         NOTRUN -> [FAIL][78] ([i915#3318])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb5/igt@gem_userptr_blits@vma-merge.html 
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#2856]) +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb6/igt@gen9_exec_parse@allowed-all.html 
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2856])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@gen9_exec_parse@unaligned-jump.html 
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-skl:          [PASS][81] -> [DMESG-WARN][82] ([i915#1982])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-skl5/igt@i915_module_load@reload-with-fault-injection.html 
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html 
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-kbl:          [PASS][83] -> [INCOMPLETE][84] ([i915#151])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-kbl6/igt@i915_pm_rpm@system-suspend.html 
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl4/igt@i915_pm_rpm@system-suspend.html 
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-tglb:         [PASS][85] -> [INCOMPLETE][86] ([i915#456] / [i915#750])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-tglb2/igt@i915_suspend@fence-restore-tiled2untiled.html 
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb7/igt@i915_suspend@fence-restore-tiled2untiled.html 
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#110725] / [fdo#111614])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@kms_big_fb@linear-32bpp-rotate-90.html 
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111614]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb6/igt@kms_big_fb@linear-8bpp-rotate-90.html 
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][89] ([i915#3743]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html 
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html 
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3777])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html 
>     - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3777])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html 
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#110723])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html 
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#111615])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html 
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#3689] / [i915#3886])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html 
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html 
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][97] ([fdo#111615] / [i915#3689])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb3/igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs.html 
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html 
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html 
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl7/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html 
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#3689]) +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb3/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html 
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglb:         NOTRUN -> [SKIP][102] ([i915#3742])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb6/igt@kms_cdclk@plane-scaling.html 
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-glk:          NOTRUN -> [SKIP][103] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk9/igt@kms_chamelium@hdmi-aspect-ratio.html 
>     - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl7/igt@kms_chamelium@hdmi-aspect-ratio.html 
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html 
>     - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb5/igt@kms_chamelium@hdmi-edid-change-during-suspend.html 
> 
>   * igt@kms_color_chamelium@pipe-b-gamma:
>     - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@kms_color_chamelium@pipe-b-gamma.html 
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-kbl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl1/igt@kms_color_chamelium@pipe-c-ctm-0-25.html 
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-tglb:         NOTRUN -> [SKIP][109] ([i915#3116])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb5/igt@kms_content_protection@dp-mst-type-0.html 
>     - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#3116])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@kms_content_protection@dp-mst-type-0.html 
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          NOTRUN -> [FAIL][111] ([i915#2105])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl2/igt@kms_content_protection@uevent.html 
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109278] / [fdo#109279])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html 
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-max-size-random:
>     - shard-glk:          NOTRUN -> [SKIP][113] ([fdo#109271]) +38 similar issues
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-glk9/igt@kms_cursor_crc@pipe-b-cursor-max-size-random.html 
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          [PASS][114] -> [DMESG-WARN][115] ([i915#180])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html 
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html 
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
>     - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#3319]) +4 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html 
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-skl:          [PASS][117] -> [INCOMPLETE][118] ([i915#300])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html 
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html 
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#109279] / [i915#3359])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html 
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109278]) +21 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html 
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#3359]) +1 similar issue
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement.html 
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
>     - shard-iclb:         NOTRUN -> [FAIL][122] ([i915#2370])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html 
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>     - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109274] / [fdo#109278]) +2 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html 
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglb:         [PASS][124] -> [INCOMPLETE][125] ([i915#2411] / [i915#456])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-tglb8/igt@kms_fbcon_fbt@psr-suspend.html 
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html 
> 
>   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][126] ([fdo#109274]) +3 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html 
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][127] ([i915#180]) +2 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html 
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>     - shard-skl:          [PASS][128] -> [FAIL][129] ([i915#2122])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html 
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html 
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-tglb:         [PASS][130] -> [INCOMPLETE][131] ([i915#2828] / [i915#456])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html 
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html 
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271]) +117 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html 
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:
>     - shard-tglb:         NOTRUN -> [SKIP][133] ([fdo#111825]) +14 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html 
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - shard-iclb:         NOTRUN -> [SKIP][134] ([fdo#109280]) +10 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html 
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          NOTRUN -> [FAIL][135] ([i915#1188])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl4/igt@kms_hdr@bpc-switch.html 
> 
>   * igt@kms_hdr@static-swap:
>     - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#1187])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb3/igt@kms_hdr@static-swap.html 
>     - shard-iclb:         NOTRUN -> [SKIP][137] ([i915#1187])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb7/igt@kms_hdr@static-swap.html 
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#109289])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb3/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html 
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#533]) +1 similar issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html 
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#533])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html 
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][141] ([i915#180])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html 
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][142] -> [DMESG-WARN][143] ([i915#180])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html 
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html 
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-tglb:         [PASS][144] -> [INCOMPLETE][145] ([i915#456])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-tglb3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html 
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html 
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][146] ([fdo#108145] / [i915#265]) +1 similar issue
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html 
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][147] ([i915#265])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html 
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][148] ([fdo#108145] / [i915#265])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html 
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][149] ([fdo#108145] / [i915#265]) +1 similar issue
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html 
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][150] ([fdo#111615] / [fdo#112054])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-tglb3/igt@kms_plane_lowres@pipe-c-tiling-yf.html 
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-apl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#2733])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html 
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-apl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#658]) +1 similar issue
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-apl1/igt@kms_psr2_sf@cursor-plane-update-sf.html 
>     - shard-kbl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#658]) +2 similar issues
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-kbl1/igt@kms_psr2_sf@cursor-plane-update-sf.html 
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-iclb:         NOTRUN -> [SKIP][154] ([i915#658]) +1 similar issue
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html 
>     - shard-tglb:         NOTRUN -> [SKIP][155] ([i915#
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/index.html 

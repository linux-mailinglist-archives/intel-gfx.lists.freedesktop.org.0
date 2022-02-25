Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8914C41DD
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 11:00:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BBC10E409;
	Fri, 25 Feb 2022 10:00:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 522A310E409
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 09:59:59 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 21P9YFEq029578; 
 Fri, 25 Feb 2022 09:59:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=5EvLNqyzuc0h8xqpQftx3GGLkGxNIhgJusn8GVYEoWQ=;
 b=GaJ46PA50cti4NV261GYutoCVsRVPvqa7C4ZdvJ4DYSaz6nqsx6ObuJWwB4GaLVIRvI4
 O9Szdd5mL9GWrjfQvR7+PbZRE4V7fvAjxXDQAq9iv2QvCpzGX8fiZCjqgiS5U4G4Hhdu
 XXnfbNayFjoyQuyxUFwEeoBLrCC+8qZH5IKMzSRgAGQJbHkgFCA28jgKd5bFkv+1j5Tp
 Wjk7HJH6hEd/IjmEDTJXwdQu2JntFPixoCCods8N6hsJktX70L8o0EjDzph2V/0gofWw
 X6QT0WSdlXrrlxZMek3iJzhZrQne2Uc1vVZX3z0BiNoR67yMgT+9wWsnahG9V6Zi9lkO vg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3ect7astnk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 25 Feb 2022 09:59:57 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 21P9t1mg079109;
 Fri, 25 Feb 2022 09:59:56 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam07lp2041.outbound.protection.outlook.com [104.47.56.41])
 by aserp3030.oracle.com with ESMTP id 3eapkmg79e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 25 Feb 2022 09:59:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TrM2C3Avn3Aw7T4YTOYT1wsxqliBZ081WE5fBj9Cz3ffmQ7mmeUlvr0u8ws9vNQ0oH2Vda4FfxL23vrsP8883zaRGnpYDRxAX193MCaNEe5uRnrQw325JsN5pltY3F09lmYYyY85Ab80lIAhev7tp4T792gG6pV9X2N3S8Ogvfs3OUo3t4AUrmKOdiknf357RPVpdf2rWakVfYhLg2T4kpuaRFyvs3qad+vYyet/BKztK2JTAofQfMqLP0DtkgmPnlYyYNlZr6Xjxx+5b5Tp2RMuvMiAocFBFKD79WzP06e4EKsOV+yv/IjP6So9I9rR4RHF+7kyTM9CGmVP0VyF+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0tOqFHUE+MUOFsP2KmiB491e5JmeWocxOeERgzozHJU=;
 b=EQ6RV5ywHev6YEXmEfteQoeHBrsDyA0LTA31hILB32RDGq33SAfIqt0LDDI086yvHHDwXZgAu78H3y57B2xHbzuHmtbyfnMvxJEeHRL46CWCQezm6LAC5VmbcR3hY1RlUlYzrqUM4HmGSOnR9x/VqaXfvhs0FjU9tEURHL2pU7xVA+CGIc1Vg0BdvKBUHrRNKbYogLBVdisYaMRjgxiIj2WCHXEtxmNUYWyLUVCXQTn7ACOjo71LGaPUuSmI8rSYgj9MBxX04hC7AahIeAufc910i+zt4bQF1NyAFKMX5eVLeC9pOIKeDVcmxYCpmzJ3WYAjPw0ev9DhZJEJlMhN7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0tOqFHUE+MUOFsP2KmiB491e5JmeWocxOeERgzozHJU=;
 b=bN+ShPb1un4OMMJYqbA2TxTxwTZaeGkZK1m4ysgf5IGaXMLXfhhW4uDvJxNMF03YOts5BPYasUdOVqEZX/VMaHx0el+TSUgq/wYX68CfS6IBL2Ax05xr26Rk9QGBE8uyxZ1q7ZNujz2LMBHj1tSYd0F/2T/pNUeCIu5IMRbzPzw=
Received: from BN6PR1001MB2354.namprd10.prod.outlook.com
 (2603:10b6:405:31::21) by MWHPR10MB1325.namprd10.prod.outlook.com
 (2603:10b6:300:1e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Fri, 25 Feb
 2022 09:59:54 +0000
Received: from BN6PR1001MB2354.namprd10.prod.outlook.com
 ([fe80::54d3:796a:b63a:2582]) by BN6PR1001MB2354.namprd10.prod.outlook.com
 ([fe80::54d3:796a:b63a:2582%7]) with mapi id 15.20.5017.024; Fri, 25 Feb 2022
 09:59:54 +0000
Date: Fri, 25 Feb 2022 12:59:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ville.syrjala@linux.intel.com
Message-ID: <20220225095945.GA775@kili>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0054.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::23) To BN6PR1001MB2354.namprd10.prod.outlook.com
 (2603:10b6:405:31::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b4e48ada-292c-420a-d117-08d9f845925b
X-MS-TrafficTypeDiagnostic: MWHPR10MB1325:EE_
X-Microsoft-Antispam-PRVS: <MWHPR10MB1325C033FCF312891F94B7498E3E9@MWHPR10MB1325.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x1hx2aP2LWDnUIDs7nosYakZzKSmLWmgv8v6C/xI+JXWX9pV2KRr2zy3VscqI1LZcUfBPu+wBCEu6hQb4z6AXw5ulUaxjWXvfUcFMoi5fpvQnUOWnG3rbQ06PiOWhvq3o148actpa1rl+b4ppZPJt2zoQLW1TL8DPeUXKD2q1a8DirohxbOte6i+cLDceYnEK8E6/x0YmyUDmnQdq+XY40GhsPhWK0F7LOJ7m+XjKcuTD1QQ+/4kAvxs4Ftwe/6cJWEU5oPa5xmW70BJI3/uDiIssnVvUi7UK4JWm6LEjnzN1IqExGLjXfrGUC6EuXUiDBRMJMsfbT6gldkSx02MVpWgRuN0jSmkq+d/0nVBP1wcLMYVykA+vFUNdf9uDgaSvJhZ3avpWZWOACDLHi+rFZ+azRpU5rVYFk7AxICwAjDsTC6KiVX9Cr3WrevUY2B6ocaqNivflE5eilFvYtPag+XdnfwqPBviCeKQlk4A1UHCYoAQtNJho/5Ex58uD3UJOsJ9VtDKIx1uFuenA1qESJjfNKuQmZR/C3/sYKbkiqzT3PZeJzZDuZ3xeimK/c8YhzWaEsuAwz53lxEBJydip0lv+hZx8S2PtyTYg6LxLNDZIYn5g78kReU0p8CMH4QMFNKJq9CAhnqS2ytiifn4s3ZnhzbRAw38BJDPp0X/r9/nyim4ombNNkackSDITHK6ao2zMRXYbFI1/CzPbsTqvA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1001MB2354.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(38100700002)(38350700002)(86362001)(33716001)(316002)(6916009)(508600001)(6486002)(44832011)(5660300002)(8676002)(33656002)(66476007)(66556008)(66574015)(66946007)(2906002)(52116002)(83380400001)(6666004)(9686003)(6512007)(6506007)(8936002)(1076003)(186003)(26005)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?KfjTcY2buUaQzTW8MAy2kZdGafGRJ19CODC1wnCKwKiyjxvljj8Yno+Qul?=
 =?iso-8859-1?Q?AdrdzpWhWY3u+qMZjft8le1KZnFbf5e2U8u5tjtpUanr7KHBXhb08kl1oK?=
 =?iso-8859-1?Q?u8GHsxKeeuFELI6JSIlXzesDkvBm7mH+ZDurfL0cxI5bWCd6yQ6BeH7/69?=
 =?iso-8859-1?Q?CM5SWmR3hh/DVBe+ojyR4zc/dZ3Ym4TGq06HqlAfxsJOT6zNcaHWLni2Rs?=
 =?iso-8859-1?Q?9zEvErQEl9P1RbFPL+3s2KBPrm31vtxBPaEBADKyA0rCsjIzLREf3uHgNw?=
 =?iso-8859-1?Q?hmosxM2NI1mKEXv2xjRs1SjSZBaLVkycDUUo0+MjP9NoKDCBEjxfbO5Th8?=
 =?iso-8859-1?Q?qcAYrAkDxJCwvaTmIJZL+1xkl7YhFSpD2ix5O9qVDnb4BVbVmeZ6gNehy5?=
 =?iso-8859-1?Q?++PMQ6FAM7ZLN679cysmXEF0RXYdZnnnOzQFsO3pR3U5mdwwjvDBN3J9bf?=
 =?iso-8859-1?Q?XPO1M9xaUmJE3LvxODhrhU9nFnBPKnxMulmw8xfS3dQ6/Xrh/xseE+qlQ8?=
 =?iso-8859-1?Q?s23DMDgi4V8B7d4HK6nwfvR1HuTfK9Yg+FbegdXzy+cBSNm6WX/jfzNC55?=
 =?iso-8859-1?Q?5sqMH3eLKvmv6DS1uRlYjb8k+JD/c5SdeFW5A/LM11OalQJjKGi0FwXAiR?=
 =?iso-8859-1?Q?cdnEyvmF2iYHkSe2by9PTetKHuBMp1SQAnldht0V0ZXwULR/sJWkMR+aes?=
 =?iso-8859-1?Q?WpkICMxhc0oVZ4R21ciL6h/R2ANDUWPO+XRVCsTguLHxi9XhKqDU1nYWD+?=
 =?iso-8859-1?Q?EA1yvYEHO94o4uKg0XbRSkAsd8KVTLxekp9eQE36Pp/5JuxJxpWLzqeJI7?=
 =?iso-8859-1?Q?pSRPdOnjvxSfUUqo1l+cBeAzmGf8dNh+FkuUwlWmiuL9WFh8IsDVlkg029?=
 =?iso-8859-1?Q?zPsZSqZ5MG9IaLvkF1YTVicg1heZ0mRyDBbO2IinCi+KSue056Si11kJsw?=
 =?iso-8859-1?Q?+tbayUo6ICIKGXC3GnpBLsoKKQpofGtuYdoypnMXqFZ0CCwjsH4jEnzuoO?=
 =?iso-8859-1?Q?sPDyYWDp74QCWDdVFJc/sVzH0LV99WM0Db9DWM5SC30bj0vX8lMAJ30+KV?=
 =?iso-8859-1?Q?RSqvogodZ7RWf8SKWbDktBAkr7XpqU8W8ed+0ivyikGqp9lmqR9aPN2oeP?=
 =?iso-8859-1?Q?QtmzY6QwGK0O2avd7ffogO3grGHLSfTX/sGip/rNFB2O4QL4havRJGILLZ?=
 =?iso-8859-1?Q?nuqahHCTwprSmpTRntWUg2yUCiP0XjKGAso4kCVp1XVug+QqvUXwQARTP4?=
 =?iso-8859-1?Q?HVdHrdjElUOxgzlL4TY8UZyTSHP4Y0vZ2AjlLlq/54muQ1JHKxiCYzUfXT?=
 =?iso-8859-1?Q?Fia58wVaSgy/wzAfv7NrpWbJNyem1cTmNMRALLvoYJYDam5zsBlR64h19E?=
 =?iso-8859-1?Q?nLN+GROluR5/3NxRV0mjA/TOPIrWHwOhTPX3D0wARIheROXq0oRTCoDjuL?=
 =?iso-8859-1?Q?BYojCNWsCIBU/whVLo+JsTMrSrqoG1oShzBd0MIyjanog8HZD/Q9FaeNqh?=
 =?iso-8859-1?Q?bjSQwTPx3bTfeQkGWU+eu04yIhtrGCIbrymQvlfAoA/nFvcnee99M0V4+p?=
 =?iso-8859-1?Q?MJV93n6wbHTnlMPaBCxnK8PJbbauSL5sNX0XEBGtx2ECXbywKbPHOcKgWc?=
 =?iso-8859-1?Q?Xd7VYBMbuPu5LuLbJtanQ4rEzWx5DFE52js0hNDm4wURhAg1NdHpNZVYty?=
 =?iso-8859-1?Q?PncweO22e7JbEpkyzaQXbgP2Y5GSq3CoteJ8NQ7f5taMlYih7Lka3pUd7O?=
 =?iso-8859-1?Q?qimg=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4e48ada-292c-420a-d117-08d9f845925b
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1001MB2354.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 09:59:54.3277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G3VHbQVvGZV1Yz03GQLcERZ6JgpNVtJ3GZmapOjDrWwrffLR7cqquk3u4bVVxGVAJGk1T8z/xwDO2etfYiyyDvvQmUx+cVzBqz68a9DpL2k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1325
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10268
 signatures=684655
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 mlxscore=0
 spamscore=0 mlxlogscore=880 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2202250052
X-Proofpoint-GUID: FIJJdSHmGjfHKdGBjocM6qfKlo0UZHAz
X-Proofpoint-ORIG-GUID: FIJJdSHmGjfHKdGBjocM6qfKlo0UZHAz
Subject: [Intel-gfx] [bug report] drm/i915: Extract
 intel_bw_check_data_rate()
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

Hello Ville Syrjälä,

The patch 6d8ebef53c2c: "drm/i915: Extract
intel_bw_check_data_rate()" from Feb 18, 2022, leads to the following
Smatch static checker warning:

	drivers/gpu/drm/i915/display/intel_bw.c:922 intel_bw_atomic_check()
	error: we previously assumed 'new_bw_state' could be null (see line 910)

drivers/gpu/drm/i915/display/intel_bw.c
    885 int intel_bw_atomic_check(struct intel_atomic_state *state)
    886 {
    887         struct drm_i915_private *dev_priv = to_i915(state->base.dev);
    888         const struct intel_bw_state *old_bw_state;
    889         struct intel_bw_state *new_bw_state;
    890         unsigned int data_rate;
    891         unsigned int num_active_planes;
    892         int i, ret;
    893         u32 allowed_points = 0;
    894         unsigned int max_bw_point = 0, max_bw = 0;
    895         unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
    896         unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
    897         bool changed = false;
    898 
    899         /* FIXME earlier gens need some checks too */
    900         if (DISPLAY_VER(dev_priv) < 11)
    901                 return 0;
    902 
    903         ret = intel_bw_check_data_rate(state, &changed);

Before "changed" could only be true when "new_bw_state" was non-NULL

    904         if (ret)
    905                 return ret;
    906 
    907         old_bw_state = intel_atomic_get_old_bw_state(state);
    908         new_bw_state = intel_atomic_get_new_bw_state(state);
    909 
    910         if (new_bw_state &&
    911             intel_can_enable_sagv(dev_priv, old_bw_state) !=
    912             intel_can_enable_sagv(dev_priv, new_bw_state))
    913                 changed = true;
                        ^^^^^^^^^^^^^^^

    914 
    915         /*
    916          * If none of our inputs (data rates, number of active
    917          * planes, SAGV yes/no) changed then nothing to do here.
    918          */
    919         if (!changed)
                    ^^^^^^^^
So after this check then we knew that "new_bw_state" as non-NULL

    920                 return 0;
    921 
--> 922         ret = intel_atomic_lock_global_state(&new_bw_state->base);
                                                      ^^^^^^^^^^^^^^^^^^
But now that relationship is not so clear so it causes a Smatch warning.


    923         if (ret)
    924                 return ret;
    925 
    926         data_rate = intel_bw_data_rate(dev_priv, new_bw_state);
    927         data_rate = DIV_ROUND_UP(data_rate, 1000);
    928 

regards,
dan carpenter

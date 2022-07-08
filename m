Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44C656B5BB
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 11:41:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB0C7113549;
	Fri,  8 Jul 2022 09:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 812A9113600
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 09:41:23 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2689T5t4000347;
 Fri, 8 Jul 2022 09:41:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=z8xswaOTT9HAgJvkIl6MiCTfbgmlNUfPSsNptN4GApo=;
 b=NXDQYDZwQxNzBbJXK2u4mwO4f4XYMG1vUChK1NZP6lbz335Kc//9jcXbTmLbUOVpaZz7
 KKMAimQjZ2RPMfLXXvz1gOnYd51AQneize79eTabQBp2VNN9cc9bZzOqv3UXcgxNtbaP
 qE5IC7RHJq47sLBHLjf6v21FvX4meQccgYfJrFELPyUpA2T0JDf5yMjOXe7Si/OWFYR0
 kMR3Fsxx/KrQDzWANnGa3XLiEyUhvVceUKG86pNX3Yu3nA8uW+h1DNYc/8H6eqXtV2nL
 LJvKXeV4uKgbwOf3GLNnfJgy0lu+TwVynku+sOvEVMv7tGeKFgGJ1dDwV2JHv8HkZk9I JA== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3h4ubyfajq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 Jul 2022 09:41:20 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2)
 with SMTP id 2689a7gP032099; Fri, 8 Jul 2022 09:41:19 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id
 3h4ud9pnsg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 Jul 2022 09:41:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mNZVM2B6KmQVZ9/TAgpY40fKr3tdc2B5qGsXuj49uqlSUb/kyx+mgzGz4c3cJHF4kQpK1eCXQD2GFVgE8yGzP6/7c/jEZkLKLEX+BSgI+i05C5JdtEoOtI6tWzd05JnaeboezsxZhBR9UyR+ZCuHNBubndzrKe4feaIWX/MjqXjDbpaFz9wV5qQ+Gr3O4SnBsmS1DOQbCH7m3pVgWyR4i7m4k6MIWowkwhOhKpp1U//a+t6lLqSHKdQiaFVlzXOWB9ZQJxvvWQgnKP/aCsvfA7b/k7rhQIFOfPnhuM9wXsN74xY+Dh3MxKYVgyfFFSJSd9gqzKwHhpEfcPxN1MP6wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z8xswaOTT9HAgJvkIl6MiCTfbgmlNUfPSsNptN4GApo=;
 b=O/nlbxnm6F2yJfBD49g3/DsZRbPeWYVejk6nypHDY95O1Iw1I/5kbaLs0KCo96y+V2P0PC4DHZRABKFykBID0w/BnMmTOFvaDMDALThzantNdbpibVciIYDedfBTAf9UKNwLdRQuMr+4JRo2MQ/lzdtlzfxVGpHMo4YtfeROG0RdjKPQr0Z8XtgX6YsMTjeypbhp45uoIZWwCWsPdFe6moF9aXpPZHFG1Y9B8dZuX3ziypbtcxPMmD8V72SQUGIsryxMoluS1xCxJX12f0CxFamVGUjbeDEN+FOumknmrOe08fYNfuO+IAG6mQY6f19RJzdJMrYCO9AFfD//Qn5xbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z8xswaOTT9HAgJvkIl6MiCTfbgmlNUfPSsNptN4GApo=;
 b=ffIn8tFR1azfRgY0kXXCCtAPTlQMr7MkA8I14I5xhUd2sFdri4l1yGQSoZB+NgY21hAaDpJL+G6itZwPhGrnJ6vKGJ3pzERF0yFM7Ufkf5rw5VQYn88bbxn9JByCsAuUAOOefD5WrNWka6BrKlrURt6GDWZPu8k8YA9HVEVGkws=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by BN6PR10MB2002.namprd10.prod.outlook.com
 (2603:10b6:404:100::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Fri, 8 Jul
 2022 09:41:17 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5020:9b82:5917:40b]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5020:9b82:5917:40b%6]) with mapi id 15.20.5417.016; Fri, 8 Jul 2022
 09:41:17 +0000
Date: Fri, 8 Jul 2022 12:41:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <20220708094104.GL2316@kadam>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: MR1P264CA0171.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:55::12) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6af734ea-71e7-46ea-4c32-08da60c60147
X-MS-TrafficTypeDiagnostic: BN6PR10MB2002:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2td2YViZG3U7Nj4va7euTpP3l4N1ayRV+NilkbBwKXKvm5YFkx7UzKvmZPyIDfqMV/Donn5QOsNKKRCavVEu06vNm2wRMzoAymVPe+P5BFZpjqyJ4AwDbEhem0upL8ATu4f3xhRqbUPzmgTBedUQXQBuy/pUqREFiQC6qm2yp2IFforEnvljdxLkPPlxVjRcgwZO7dhMPBAEHlll5Pz0SFee2ATRAMdqjW6RUIfGafLsSpXLdgH5+iwiccEVinPfTQRTQY6ZQtCAit1nniPFAMt80OBWcBw9OMAK+14bRb/LUouELzD/fPtblX7mPiFksbO1Ws+myuwta2XR07T00HLj5nfVh8Jj61nwfYz7toRHeWPNWKRTsSPCbsew+GSqf7ht7PivWRx3LrvZsemu3lvWNndp0D3zLQdR+ayQPFqZMRlkV1sOrMggLIlaDXH8KduRevXUsvn660D/NsvjE3MH3zA0PvjuIPTQjlqHvHUScmTdGyuW35hZke7W6pTSTcWaMdygAmLJ00PwmvMoqjcFe7OKqb7P1ezOeVGs8ISMmgxvC5axHMmaDQH+A9ELiHXRZDoqcwfhu0UrfITg7SrtwDh6hvFxEHcKjWVfff2cb1iNT2k37iD1J2TV7pkY839vUV+TTcFkhI0LBn7mv4AzGBMy8T9mbwTG3olN7nQKFvysdDzM7bVI1nIZa++Bg39Bfl0Fdj2Ho+g4kYMzMtE4E2t+e70qmjNAvvfXFUDN4Vn24GH0YiIPHojq6Zer+tQzoL4gzpMAG5ZCsc8btusOmQLIwOVANhTU746KUB+EMAycp9NFR/o5vh68Hsso
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(376002)(39860400002)(346002)(396003)(366004)(136003)(4326008)(6506007)(54906003)(38100700002)(110136005)(86362001)(478600001)(6486002)(26005)(66946007)(6512007)(52116002)(6666004)(41300700001)(33656002)(9686003)(316002)(8676002)(66556008)(186003)(1076003)(38350700002)(66476007)(7416002)(33716001)(2906002)(44832011)(8936002)(5660300002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UWi+PYXHzxzWB/RFClG/1YvajCWBkSx5NZAfvH+pl5Gq337BWGKkva6srcC8?=
 =?us-ascii?Q?ujnJzTY4oE+bOYcJgQYQwPTc13mH76XjTlsgqkkOEXJ1vQYuy9Qy3fITVbMi?=
 =?us-ascii?Q?Xv8NHlAdhkKzb5y2vTFVROEhrkkpMKBnwars6IH3kUJFqVmagH+5GyM23oeB?=
 =?us-ascii?Q?RcPqsW3Xqkdt7KfOVTuIE+KfscsgXDIFWKWv8SEQQfCV7qvElPNLLhxut714?=
 =?us-ascii?Q?3sFYtjnZgrKA+/vAIfAVIUPftN/IN365J5mwM8uXMX/xXHBwWNHgxIVZvvcG?=
 =?us-ascii?Q?EgawGn9LoHTU7oibZdnTGUHiaMzlAl4Fgkfvm2ApGGhDjxNXw+K+ABhrMpuf?=
 =?us-ascii?Q?16+dLjyFpUtBGJ3PTOE6APvOiIY4UWbnnPO8Nb+zVx42EofxDrxMUeRccMhy?=
 =?us-ascii?Q?lUlbNKCu4U2Q8wAXIMLcqK8/rFZnnLe3VL4cIPYh0/PFTBtOTjp7mE0JWrgt?=
 =?us-ascii?Q?mGeFjv2LxdwNvEOXtxoFYV3b1+oRNSUAmQexOqc/xHwzcBPVOfXE6GYdm/tb?=
 =?us-ascii?Q?S7eKm3hTFxCYK38FaiUbfveL6hcMtvLyA/VdBQAYtTftY/3MsYK5JaFbX62D?=
 =?us-ascii?Q?rvTUnLR2cJGhLDfimrTBTcghp3wrShYcO/ATvgSZSWlqhD5kwASlrzq4HVcI?=
 =?us-ascii?Q?iYwm6yPnqEueFnS5rc0smSfoOK7qoVWzxAgALWoP4z+XwB9nA1KTowHDvz+D?=
 =?us-ascii?Q?qAf+auGWNlkAINXgkCJmXk1/XJhnkJ3rCObZ6V/MhAQ1U0ksiCi9Iu//sJCI?=
 =?us-ascii?Q?5yF4GByYZDGNnHRb0/pJ/RdAMWWPUXGHL06urWGzTz9WH3/fRpHZeNkfR1pg?=
 =?us-ascii?Q?DvnyDk96c8WeSdX8nUENu0wj4kRkxUigUYMECqaL3Q4wH+z5eAcRgoV+mi7T?=
 =?us-ascii?Q?GYqqTHbHJQRi/hA+yUuXeCpU3GyKnnbsHMTe6zrfyQ5FtSUk+MZAWepxRYr5?=
 =?us-ascii?Q?Zb34/aGTumkUl8mxkacOxUnDYG1X66wyv1OX4Um4XiDe5iNXlKhupnejAWsa?=
 =?us-ascii?Q?f4shiFemQ9vqv5v+xy5iuOyaro/sTAjtWwmvPP4G94DCqxEW82sLHmLmvDjg?=
 =?us-ascii?Q?JPM4uQnJSn5Kxw6QYe/BwXRZLOgc99olzVyOipHLk23Dt6eSXnjqtnNsb6m0?=
 =?us-ascii?Q?qu8U33G7CsGEeaNIWelxjRU5Z/ven0f0ty98XrmkHg1oOdJ7l0uEGwTmBSFp?=
 =?us-ascii?Q?KK7J0h18eoekNo5brzGbIioK8sR7GesVS01w+0K5LWrGUhEHuyeM+9QeH5rU?=
 =?us-ascii?Q?pqi/1CzKuM6fOb6dD6rZ+Wum4itVjfXGjjt/Nl/2kaM6XY1huU2ALfMVNKRE?=
 =?us-ascii?Q?9PllTK+7H0T9x4Ug4FEmHUGAz9AhiFOhhbbafbTZpawzLXfdH46390I2INL3?=
 =?us-ascii?Q?hhyHhWIhcT6RqZcfSGhwMWf1AjPGnNe6gIbatShhyoYDa8D0L/yTDieGc2hQ?=
 =?us-ascii?Q?TRM0zIfkpNGUBIbskLcMbehdMdBylY+MaHzi7sKYmthdyKsSmEqZ/lDGgXeU?=
 =?us-ascii?Q?G8q4cr5Pp82XZJIFB/wnRDnIMIOgtsYfL7gV8Mjd2tNyVZp4wRxTL0JZYhfV?=
 =?us-ascii?Q?DY2zX4gI+qrm+0NMP6iJXHh4R+40uFzZO71ajsQHYtf/02QetR+A4955dd7V?=
 =?us-ascii?Q?fQ=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6af734ea-71e7-46ea-4c32-08da60c60147
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 09:41:16.8837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bcVW5DVBIHeuxVzT8lDkbAcUQICcFWSLQzR7HtIj+B5bBapBwqjV5BGFozeQL4dSynFDrbWQmrsSVglxdT53T/D9oiNvHQvyhQFXOpv+Hew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR10MB2002
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517, 18.0.883
 definitions=2022-07-08_08:2022-06-28,
 2022-07-08 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 malwarescore=0
 mlxscore=0 spamscore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2206140000
 definitions=main-2207080035
X-Proofpoint-GUID: PKmpBeBMirUG6eUrxVawYE-SebzZ-897
X-Proofpoint-ORIG-GUID: PKmpBeBMirUG6eUrxVawYE-SebzZ-897
Subject: [Intel-gfx] [PATCH v2] drm/i915/selftests: fix a couple IS_ERR() vs
 NULL tests
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
 kernel-janitors@vger.kernel.org, Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The shmem_pin_map() function doesn't return error pointers, it returns
NULL.

Fixes: be1cb55a07bf ("drm/i915/gt: Keep a no-frills swappable copy of the default context state")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
v2: Correct the Fixes tag.  Add Matthew's reviewed-by tag.

 drivers/gpu/drm/i915/gt/selftest_lrc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 8b2c11dbe354..1109088fe8f6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -176,8 +176,8 @@ static int live_lrc_layout(void *arg)
 			continue;
 
 		hw = shmem_pin_map(engine->default_state);
-		if (IS_ERR(hw)) {
-			err = PTR_ERR(hw);
+		if (!hw) {
+			err = -ENOMEM;
 			break;
 		}
 		hw += LRC_STATE_OFFSET / sizeof(*hw);
@@ -365,8 +365,8 @@ static int live_lrc_fixed(void *arg)
 			continue;
 
 		hw = shmem_pin_map(engine->default_state);
-		if (IS_ERR(hw)) {
-			err = PTR_ERR(hw);
+		if (!hw) {
+			err = -ENOMEM;
 			break;
 		}
 		hw += LRC_STATE_OFFSET / sizeof(*hw);
-- 
2.35.1

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 298A95593A1
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 08:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D84410F1F1;
	Fri, 24 Jun 2022 06:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB6910ECE2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 06:39:53 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25O4V8Ff031413;
 Fri, 24 Jun 2022 06:39:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=sbey9I0563whtV9JrDMnL5kBCIIU0jg4sU7u7ZTo/qc=;
 b=WaSGrr2yQDdAXqdrTFqhGbL4suNXP6mQoZHbsbzsuaG0UxUiaAFurrQdUqgciWpc/oex
 6y1bYzBdcz2WEoPEpgfRdyIkQrYRtCVKr0UG2RA3uXAPqzTczI2XZcexBdmAJTCTt7lG
 nbbuFEBHnsZU3rvo0MlBG41hkrvQVswJAIzk/zEaYUnP9TfBUx1Sw0uvmVq4znrjixD+
 NkyoxGUWn4RKpSQEfRnfrrq+Lb4XfO6FBL1PS/UOYaw5RnX7PLNIyBC1FBYlos4ZukPO
 20cLqQtXTqKddsw+sep1Xj/YRZXqz3fDS598go9EPQteTTWyJk1cSh8txVmHtPdkOdw5 hg== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gs78u4ya7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jun 2022 06:39:42 +0000
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2)
 with SMTP id 25O6K5hh039678; Fri, 24 Jun 2022 06:39:41 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id
 3gtkfxa1dt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jun 2022 06:39:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XtFn1vDIxA7lxOtsx8eZiYQzccXheCNU5TOQIZxrsg1s45uJLD9YjuZQh+vJAmG5i5cBw2nsl8BNAV9TRc/AmlPPUN33SS5U6ddnt6mqzDZcbZGqVFTmF1fhx0Y3oASs3VsL8jWYlkCk78V+atMzkFGT/cDXAAN8jd89tf4zpMFhQ/972ByNoLVhtdZj+AWBOGxveb36lq1PkSRrhecQS+qr5j/s5teSdBb3MH0G+7Z2BRFMv4hOAB8ifY5zgEw27L0PNuFMfrpbooarhzXay8STlIZBgRysNRk0vuK3qXWx4jHG4JHdXqmKDWWpaae3QoBo27lXEWEZTbPatuGGIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sbey9I0563whtV9JrDMnL5kBCIIU0jg4sU7u7ZTo/qc=;
 b=Qu4tA83n8LAl0uXOvVVSkmFE1+Y6KsOEQ9tRdxvpKb9tLLGY9SMuyh43dZzvykJ0r28IEHxRnkRzKHmYIvL87l4+QPSwLJHuu2/0yifYahESEIxuWSiD7K25v3ALahD7BBK/p3aXTDpqAOHqM2bIGEmgHVQH8OuMNaeltd98WSfZAoOU5dhZVWitSIAw7NIp6EFSX8EFgwrfXdzWrOdyFvNvgMVhuPUQJfneTpoqCnOD27gL72CXI8MPnf3YiWgjdzKAoQG95nonI20rWLXtnaxL9Euk8IvhkzwHlSs0ma2KIMRdI0gKbMILmSiKA5As9z+5MihKTJ3x4+EhrV4hvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sbey9I0563whtV9JrDMnL5kBCIIU0jg4sU7u7ZTo/qc=;
 b=xEJT0N3cqfXgNxA4MBSzYYYblGPip8j6vjjExDPhYrxuBMP4z3u/bKpmh2gjaIE5vDf3JyigEp2jJe2JxvnJKASTZ+xEd7EtXKxTOYcSCt/GZZPWwTeiRvSCX4xPlTNkOV4JYjpRC8+apS/7bRC+S5ygpkISj8Wa/9p9XMsuhbc=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CH2PR10MB3878.namprd10.prod.outlook.com
 (2603:10b6:610:4::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.15; Fri, 24 Jun
 2022 06:39:39 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5020:9b82:5917:40b]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5020:9b82:5917:40b%6]) with mapi id 15.20.5373.015; Fri, 24 Jun 2022
 06:39:39 +0000
Date: Fri, 24 Jun 2022 09:39:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YrVcHArNMTGCSy+9@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-ClientProxiedBy: ZR0P278CA0159.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::8) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ea1c543-e27e-4bef-1ae9-08da55ac4fd8
X-MS-TrafficTypeDiagnostic: CH2PR10MB3878:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: no62/WlbMgzJhzTLi3E+vXpFm5bk28zEoKl6mGuiKtLyVHLvXQ2wIMYOd8Tc99KqKWQ6LLdbYIQeyHa8K485r9hi2GRJR1i1jLpY9dAvkT3hnJ7miPIVtM2aHYb0/iZXVs24auKFjJHwrLYz/zY1R/TGWIDgO8hLQNyNO5CpVjaaCn+9OCHoAy2JPqJOSOvy4RTGeplTbAvGl8msU+nLp6ywPKpDoTuWblQAlxo4PaI432yYrhXJL7UYKUyORVdKk2xSZ8eEwbsJEdrSt7CM58w6PX5baQ2k6PGLOFL1Flc6zVw4s5jOcXnnfX3WgCPKDDoCRfuFDY3LgANeGN8ROquo8+0mQlqpjEskL2wVEy/ekNIibrF8CqAf81sQJIpp5xNJlXxuNBQq4mpZGb+QU4SUWVTp3rnC1bueTdkf56EwRhJvoqXAOLTKCbXfQz7FB+DqoDDW/FVyhqUcInQFVs2bNbAA5zOTfKywE38RV/67ri7wMeA7EWFuOWCjBApgEAUjBcOgW3LgUIZ3ulgdSQxnLTMtRP0H6qI1MyM5B7YxHCLHqFanb/1mqbmMeQ/NVFjVP6weld+A7mMT/DCCCKBwO1KWwjdIVkY5NSfdtZB7bdqsSFK0WQnkOR6xNHAgyd4Tig7IQ49xmYjOYX/VOCAlZ2lsbSZw+RweDVm3mvsurBqRyH5uhe4ApAtU3xZm6wa/7mFU1846LWbF67IG2TauwAOpGMIxNF4VIakvUQ48AATk39oO9ZE2uBPfqGAAXbj5tq7o9pd5qoajHAzSpulFC0FLUPb5jIwC+XXvnFLs6/V30YV+9vpNx6GWvncsACCEy96D4HMDJnm/J/h4xA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(346002)(376002)(366004)(39860400002)(136003)(396003)(6916009)(7416002)(9686003)(54906003)(316002)(6512007)(86362001)(52116002)(6666004)(6486002)(26005)(41300700001)(38100700002)(5660300002)(38350700002)(44832011)(186003)(8676002)(4326008)(478600001)(6506007)(66946007)(2906002)(4744005)(66476007)(8936002)(83380400001)(33716001)(66556008)(67856001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6cqo8KEjLzt2b3fz5yEiNQzGBvQrSJmWCTfWzuMglMBI9pb4G+5quoT2c5Tp?=
 =?us-ascii?Q?9HHkEUuBaACagQ1Y7jKvJyhMtuTHq2F3kf8gDRMqI9/O9s/A54CCVfIuSip0?=
 =?us-ascii?Q?Y407lmRySJRuXE+wBMvz3nGaRGUZAkCnlgWOfVNa+tkNixI4V+ZBn66ZxQdc?=
 =?us-ascii?Q?5+bImaz0WE+pn4ukkMwuJLTNpstWWeiq6oOrw6SVYACQ8EfjOMQb57K0yTtN?=
 =?us-ascii?Q?YmlzZFPaxgegJOnNdYyXxe5ShKWtRWuXIYDoLQUQc0manHDjX7CKpuDHrjfe?=
 =?us-ascii?Q?KhhSAEfVcKdV1eOWzjrB1dgW3Zff33YqtrxgdBQIahhLaLU+NB7+lkmLDxlc?=
 =?us-ascii?Q?06rLJpPNQSp/tElMuEyEvjOxVcJzW7Btcbm21NAGVxzpKT/9+ra0OywXh6Ce?=
 =?us-ascii?Q?d00HTscLYYFzB608vo+g4bQEIVeB3+VCcLbQQ1/7ChyIQn+q0GjZZylDgDK3?=
 =?us-ascii?Q?ptgBditEruXwyZXFSGqHCY3YK2c8YXVKXIWVFjvuXo8ZwyDdHwLutQ64J6iJ?=
 =?us-ascii?Q?OcyZBCCcpMFObqHQNLzsGIuqv2JTe31rXd0gC130TfbAQ2urgi6n1b2s/Xu1?=
 =?us-ascii?Q?hESCt2hrtT+6XQN9XFA42y2UJ6NIqD50gtAv8GVZtCmxPq2Z63eVpKo1CQTh?=
 =?us-ascii?Q?Xp1PdKao/nJ3yCekK3cXQ9btcrOuoPH3FhHY6LLkTXxk7jZ2wfC52HhiC9P/?=
 =?us-ascii?Q?JOzjSnXYAl1Nry05JP4VkoFQN22ILRB05t5SFpae3bDJWbi4EvmRg7HkNHyJ?=
 =?us-ascii?Q?8aipYYuSJEsuJLQitfCTVtMW1/m/epGFf59BeDNvMNNfsdPuK+33P8oTcd8p?=
 =?us-ascii?Q?zcio5dXxSlrLFBKAMI8aLPAXlvPeJ696CgzS3ZuxCpdql+ms63J187OjvIUb?=
 =?us-ascii?Q?dY8E4+Mk4dnUT6iSeHBRdeRSu25XJaU0SV4ZSiDXx6WMCwm/ALjQiNFEEDL8?=
 =?us-ascii?Q?m1NxFVXYOUGtyZz9Te68mGBalCwzKOg04k6u+q3oC0ceSVr86GglKZNWlDvw?=
 =?us-ascii?Q?0CUGPpsZeRRgl9Wh2qx1hwnIG1heEQx7/eBnhzXGau654hADMszek4e3Pn4W?=
 =?us-ascii?Q?QHQH4Zg1JxrKazby/XMjOCjAzpJxy0o/dUgeqNezTdhTWKNr++6gLPNEtQ2J?=
 =?us-ascii?Q?hPtuwg4k9Zm+rYd0gIIEwQ3w20bC7JUEeTQGYXvCDV+htvBdPJFE5Li1PHoH?=
 =?us-ascii?Q?YhSn+v2XnE8XaYxjfkhrEQS2I94zC75rGDcSTuw6x+InngzTcfoHwhTfYDKb?=
 =?us-ascii?Q?I2PH8G6Yc4hEsIRhwvvqwBZXdllnuFc3pSASX72/dubKjSf4bOCd5xbqDujy?=
 =?us-ascii?Q?vYBsg4gP9DqoTMaz3/WpivJ9xbtSNzhNjU6LshBsN0dKCpGCsShjh1h5sO6e?=
 =?us-ascii?Q?luSNAgMx9EceAWLKXTLq78//DH1xbpB1ffEWUu1eUFYAAnJsGZnvRb/3OX+0?=
 =?us-ascii?Q?SREWxW17K6Lzmj3E9R307BzOQlUCqmQ2NF1d5L/Ck+cg6lju/13bX/PupnDC?=
 =?us-ascii?Q?qFLS5j3Yb5egamWf7cBQW5k2Fq+sIWpQa9C+yPwZByFnWvRohNAn8NtaJtaH?=
 =?us-ascii?Q?VQmbvfKgaPFNjkxqdkHa+mOe5mDlzDIATuvWIv5jXdFLoByH3ukbDcj1wYFZ?=
 =?us-ascii?Q?3g=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ea1c543-e27e-4bef-1ae9-08da55ac4fd8
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2022 06:39:39.1613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IPbn4+f9tsbPClXz9WUN2zIfErA1c/HH2fJxkoWjPA5wqw2wiJQGncW80a+WiFfWX8P6QMh+HnX7E6SpsI2IwLisTftHhr5ktyMb8SupBpw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB3878
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517, 18.0.883
 definitions=2022-06-24_04:2022-06-23,
 2022-06-24 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0
 mlxlogscore=999 suspectscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206240023
X-Proofpoint-GUID: PNtGc8LlnhZXVNbDL9fHCzv-kQuJunRj
X-Proofpoint-ORIG-GUID: PNtGc8LlnhZXVNbDL9fHCzv-kQuJunRj
Subject: [Intel-gfx] [PATCH] drm/i915: Fix error code in
 icl_compute_combo_phy_dpll()
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
Cc: David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This function is supposed to return zero or negative error codes but it
accidentally returns true on failure.

Fixes: 92a020747d6c ("drm/i915: Split shared dpll .get_dplls() into compute and get phases")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ddae7e42ac46..118598c9a809 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3184,7 +3184,7 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 	struct icl_port_dpll *port_dpll =
 		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
 	struct skl_wrpll_params pll_params = {};
-	bool ret;
+	int ret;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
-- 
2.35.1


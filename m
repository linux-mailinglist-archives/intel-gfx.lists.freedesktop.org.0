Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E4878AFFB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 14:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A75AE10E2AE;
	Mon, 28 Aug 2023 12:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE62C10E0DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 05:00:50 +0000 (UTC)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 37P4svvS032256; Fri, 25 Aug 2023 05:00:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=qcppdkim1;
 bh=FaYSNKb9QqD4ZeFrcURjw8nlE1+OcdihsCj4AW+O4IY=;
 b=PjTSa7zYN7RloUJES2cpCKXoBNFxI1lGxj8FViW7zQchML6EfFH9u0grgqbPkRSKTRFE
 PoBX24lE+cy+L+q8HrwfyBrDowXhd1n96ua+mPH5ewN8wziM/9ykm1ECMebqNh/FoXRp
 u2Ec7QZb26Agx53CU7Zi85QuewhZM3LHitehYLQIZofO/lv5SgHtOQraR9ZrbQA6UkKv
 o6I3t+iakEDAp3RrIh5MDEBD7vAi3PGmuRCG5Pzsv2pgCVrezr6hfwCt2hOQKgbXR1mF
 R3tpcscOtlgrxqay+cDeQ4jXTRSxRaHSXg2xCpAUEBGKTz7e7MBVOvI+8SiRovoUO/jg pQ== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com
 [129.46.96.20])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3spmny03qt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Aug 2023 05:00:44 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com
 [10.47.97.35])
 by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37P50hp6008698
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Aug 2023 05:00:43 GMT
Received: from linyyuan-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Thu, 24 Aug 2023 22:00:41 -0700
From: Linyu Yuan <quic_linyyuan@quicinc.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Fri, 25 Aug 2023 13:00:29 +0800
Message-ID: <20230825050029.1122-1-quic_linyyuan@quicinc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800
 signatures=585085
X-Proofpoint-ORIG-GUID: aeRXwyL2Sl1nyBuR_EhL2U0bZw4XcNqa
X-Proofpoint-GUID: aeRXwyL2Sl1nyBuR_EhL2U0bZw4XcNqa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-25_02,2023-08-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 adultscore=0 lowpriorityscore=0 mlxlogscore=703 impostorscore=0
 bulkscore=0 clxscore=1011 phishscore=0 suspectscore=0 malwarescore=0
 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308250039
X-Mailman-Approved-At: Mon, 28 Aug 2023 12:21:35 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/guc: fix compile issue of
 guc_klvs_abi.h
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
Cc: intel-gfx@lists.freedesktop.org, Linyu Yuan <quic_linyyuan@quicinc.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GCC report GUC_KLV_0_KEY and GUC_KLV_0_LEN is not constant when do
preprocessing.

Change to use GENMASK() to avoid the issue.

Signed-off-by: Linyu Yuan <quic_linyyuan@quicinc.com>
---
 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
index 58012edd4eb0..fd3c16695e5f 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
@@ -29,8 +29,8 @@
  */
 
 #define GUC_KLV_LEN_MIN				1u
-#define GUC_KLV_0_KEY				(0xffff << 16)
-#define GUC_KLV_0_LEN				(0xffff << 0)
+#define GUC_KLV_0_KEY				GENMASK(31, 16)
+#define GUC_KLV_0_LEN				GENMASK(15, 0)
 #define GUC_KLV_n_VALUE				(0xffffffff << 0)
 
 /**
-- 
2.17.1


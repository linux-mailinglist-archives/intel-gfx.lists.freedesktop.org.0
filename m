Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OyhBQSQuGnifwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 00:19:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6632A1E25
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 00:19:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5A510E3FF;
	Mon, 16 Mar 2026 23:19:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=oracle.com header.i=@oracle.com header.b="Z30TgR9a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03FFB10E3A2;
 Mon, 16 Mar 2026 23:19:27 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 62GECSQR383829; Mon, 16 Mar 2026 23:19:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:date:from:in-reply-to:message-id
 :mime-version:references:subject:to; s=corp-2025-04-25; bh=kmWDz
 LqVOpKWiyjfQ3bi6Wb9TFSqzztL1pI+mYDKm2s=; b=Z30TgR9aht+mqDFsIG9r/
 AqP3Qtgrg2I7zZmxGEMBQK8SNmCHTiB0ZTJ7JBShuF0sRWWJsV+YrYveHohE/6Vx
 nfGHczuh8rPG/Z+YkD9QtW0qQnDtcPXPMGw2de11tZKeruI1XJamNntxaZ93rUfa
 Qz8uz1NmNG6EFi+jVaNIRptXa5WOatFIRb/1PEQLwVONuoC0FxFXj8zXpkPxBgWz
 YOlr6yU+T989BZBBtgqa62F/LheZkgr2qXARr6475xoFn3igwVx0F/K12nil/sq8
 MHafZ2OxyhF1gXiOF2hHQWcqzwa5Jxk3Mkb6gyldDxIZrs6M7ac+cI1cjFgJK7XZ
 Q==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4cw07rb8gb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Mar 2026 23:19:25 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 62GLhpjo002821; Mon, 16 Mar 2026 23:19:24 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4cvx4khd7x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Mar 2026 23:19:24 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 62GNJJ2k000736;
 Mon, 16 Mar 2026 23:19:24 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 4cvx4khd77-3; Mon, 16 Mar 2026 23:19:24 +0000
From: Samasth Norway Ananda <samasth.norway.ananda@oracle.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: samasth.norway.ananda@oracle.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, rodrigo.vivi@intel.com
Subject: [PATCH v2 2/2] drm/i915/gmbus: fix a typo in comment message
Date: Mon, 16 Mar 2026 16:19:20 -0700
Message-ID: <20260316231920.135438-3-samasth.norway.ananda@oracle.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260316231920.135438-1-samasth.norway.ananda@oracle.com>
References: <20260316231920.135438-1-samasth.norway.ananda@oracle.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_06,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603160193
X-Authority-Analysis: v=2.4 cv=HcsZjyE8 c=1 sm=1 tr=0 ts=69b88ffe b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117
 a=zPCbziy225d3KhSqZt3L1A==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=jiCTI4zE5U7BLdzWsZGv:22
 a=7Gl3-_t3PgB9XO-mQDs3:22 a=yPCof4ZbAAAA:8 a=cFrEO5A57a23ubiOJx8A:9 cc=ntf
 awl=host:12272
X-Proofpoint-ORIG-GUID: 0Uz-iB4KZTLkGNSu-g233pgBGKieYS7z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE5NCBTYWx0ZWRfXwwd7hYIg3Loo
 xRHTizN1HT6EIsEP5HKCSycA+2uztmEeM+R5HUJVfhOk2J1zyWTtvsO2rnzh3OPyFK3QDU8aQsV
 wTykx2UGWcx+jmhiUSxtW02O9mJWRKVadbqGcMIgThEjWCi7Oar4BcmV/Lbm9W7NeuLPoLUVVM1
 XaVUGBQYKJRUYhT+URFy39N4YZPvSGXGFILGf+lLxt0d+eD2LCQYG9CvIijsYXw6efwPRBG/aFN
 CnK1QyJUWuIR0jS3mG/b5cfk44OZB9+/fwrEjs6KTZthBzmGm+A3LtOF0jidNKqS3eXhHDQkmaW
 b+DjqSFSNFbbi1e/GSFohw7lbDYXhgBr0FDrum5hmdKGkJ6vx+c3dut1h+MVYMuWeGUmryZUO1e
 NAOQhsm1jDpDbIKMyZwQGnOIcnggGkMd6X34NGZpO9Jwj5S4M5bes6bMTs7UiF2dOyY6ciHOmrt
 Gr/TqknOg0IBLJVIepy50fUKMAtamsRDlyytZlOE=
X-Proofpoint-GUID: 0Uz-iB4KZTLkGNSu-g233pgBGKieYS7z
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[oracle.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[oracle.com:s=corp-2025-04-25];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[8];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[samasth.norway.ananda@oracle.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[oracle.com:+]
X-Rspamd-Queue-Id: 9D6632A1E25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fix a typo inside a comment message from ("generata" -> "generate")
in function do_gmbus_xfer() before calling intel_de_write_fw()

Signed-off-by: Samasth Norway Ananda <samasth.norway.ananda@oracle.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index dd79a866b87e..ea5cf8f51b31 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -694,7 +694,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 			goto clear_err;
 	}
 
-	/* Generate a STOP condition on the bus. Note that gmbus can't generata
+	/* Generate a STOP condition on the bus. Note that gmbus can't generate
 	 * a STOP on the very first cycle. To simplify the code we
 	 * unconditionally generate the STOP condition with an additional gmbus
 	 * cycle. */
-- 
2.50.1


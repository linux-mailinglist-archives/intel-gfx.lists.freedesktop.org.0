Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GExQKAWQuGnifwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 00:19:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 515492A1E35
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 00:19:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 973F710E40D;
	Mon, 16 Mar 2026 23:19:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=oracle.com header.i=@oracle.com header.b="gGSO2LNz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D909B10E3FF;
 Mon, 16 Mar 2026 23:19:28 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 62GLEeGt1337612; Mon, 16 Mar 2026 23:19:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:date:from:in-reply-to:message-id
 :mime-version:references:subject:to; s=corp-2025-04-25; bh=hCmO/
 1KujtmmSOaFMR02A3UTYBXh1Y4xq14rESz5/Ls=; b=gGSO2LNzhz9reMs3kP3bc
 iF1S0WDVMaCj2gkQryL27ZgVPMKUA9cMHfUDqdhmp9wlg3PpO2li9jbJU8wplVov
 WqbkUuQlCRNl4wnBz6EhGvIhDAjqBxXqB+tHElIP34YK4Ws9PtL6IVxqkIabfptN
 zs+d7/O0c6Y+CoiF6CoDNE7ry6sou044UCwtWJASRSGM48ticzM4e5D/VMoCfvOp
 VCJfSGCUJsNAa/5rvbH4de5UOvljsjOOgyppvtfyX9S7Ow8C1zCOtxFYaXhGqOsr
 m7M4x3L5jgSn9m7lLLoidMQpk7xbTbswpRwAlrxPClbdJhDdvVnuJPtc6+nMJnZL
 A==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4cvy9ru6r3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Mar 2026 23:19:24 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 62GLXk2T002732; Mon, 16 Mar 2026 23:19:23 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4cvx4khd7r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Mar 2026 23:19:23 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 62GNJJ2i000736;
 Mon, 16 Mar 2026 23:19:23 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 4cvx4khd77-2; Mon, 16 Mar 2026 23:19:23 +0000
From: Samasth Norway Ananda <samasth.norway.ananda@oracle.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: samasth.norway.ananda@oracle.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, rodrigo.vivi@intel.com
Subject: [PATCH v2 1/2] drm/i915/gmbus: fix spurious timeout on 512-byte burst
 reads
Date: Mon, 16 Mar 2026 16:19:19 -0700
Message-ID: <20260316231920.135438-2-samasth.norway.ananda@oracle.com>
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
X-Authority-Analysis: v=2.4 cv=X5Vf6WTe c=1 sm=1 tr=0 ts=69b88ffc b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117
 a=zPCbziy225d3KhSqZt3L1A==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=jiCTI4zE5U7BLdzWsZGv:22
 a=3I1J8UUJPc9JN9BFgKH3:22 a=yPCof4ZbAAAA:8 a=OGXoSQydl6qUY9OtpiYA:9 cc=ntf
 awl=host:12272
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE5NCBTYWx0ZWRfX8gkcCytPSfQh
 osXP/qS9QX7SoD1JLLsojgWSg4PL/+CvRiciqjrIsPXu9svDApglnEv50Ly8Yxt9co77i2qWq89
 qPyoaEI7DQsdHFbHl/1wF+Mk8SoiNZ8qyTlMLFqqeAnnyhvL8Yltuzzvifim0MYgcuNqLWwBEkP
 MkAcQm1zFUmDf5d8OgeAUAwenB7A9+OIpDG6uPJKL30M0FH4TahUYP82eeS/ewVgv6kk9nUgxQd
 SnJxPTn6cEfaXB5RpxOjidX27oKbt4vGW+LG+VD9yK7fZPoarRxy8xuCcq+L0T5R8C06+n1qDY/
 SrwuE0/xct0uCd3T92/O+BHafUdpfMWhZH/eLA2O+eW5NhnkJaYYsqmgttSnR4JoRKAPl3jR2fi
 Q4MlTnNIRs9vi9JxRilD4K+1C0SDP5y8ZezfHzSQ/oVZtNv1Q8/7TCn19fDKUd/vuJf6Won9Hi2
 ffljrJT2UK94PyINjV1XPZl/OwoG0Gi7ieiQMd4o=
X-Proofpoint-GUID: mYphgop-aD6w7Ztb95pRGmHPCVOPeh0R
X-Proofpoint-ORIG-GUID: mYphgop-aD6w7Ztb95pRGmHPCVOPeh0R
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
X-Rspamd-Queue-Id: 515492A1E35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When reading exactly 512 bytes with burst read enabled, the
extra_byte_added path breaks out of the inner do-while without
decrementing len. The outer while(len) then re-enters and gmbus_wait()
times out since all data has been delivered. Decrement len before the
break so the outer loop terminates correctly.

Fixes: d5dc0f43f268 ("drm/i915/gmbus: Enable burst read")
Signed-off-by: Samasth Norway Ananda <samasth.norway.ananda@oracle.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index df48f27f1cc1..dd79a866b87e 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -495,8 +495,10 @@ gmbus_xfer_read_chunk(struct intel_display *display,
 
 		val = intel_de_read_fw(display, GMBUS3(display));
 		do {
-			if (extra_byte_added && len == 1)
+			if (extra_byte_added && len == 1) {
+				len--;
 				break;
+			}
 
 			*buf++ = val & 0xff;
 			val >>= 8;
-- 
2.50.1


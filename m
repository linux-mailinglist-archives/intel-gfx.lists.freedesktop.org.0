Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +K1QMQKQuGnifwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 00:19:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4465F2A1E1E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 00:19:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 908CC10E3A2;
	Mon, 16 Mar 2026 23:19:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=oracle.com header.i=@oracle.com header.b="NLn4P8Vj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5143A10E3A2;
 Mon, 16 Mar 2026 23:19:27 +0000 (UTC)
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 62GEGWNL2956065; Mon, 16 Mar 2026 23:19:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=aCP9hWVeJg9KkAlo1CvhQIT6+UYuu
 HTsu9Uoug1d2PM=; b=NLn4P8VjoRnwoyq9aRm3yQyMTKzj8rQLsKqC8YwYKxIX4
 Hj/pS3ZpVbwl0ZC1e1UbpIJ96MwrvL6Tx4Pv1trfDPecQlQ1wucUN5YW6Rxa8yE6
 UnpAWKfPAA6B/bC9olzc5A0WFl/5XPP4sgetTjbSvdlxxAVAuczi86nFIql1RnIu
 Mx7/aWJQu09BTKwmTpL0XHatmSkINq8S9teLE9rTootEyJEfHSKnDfuwWQvfY3en
 XykpIkahzcz1sDZwUkSAr6FwSPJ3Mm33KOitFOgadFxnMeMMlCJgYRxc4u26RoC+
 0ccABiVnS1+fzM84jCi7JOOfUUgCUplErNcDt20cA==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4cvyqbu7cb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Mar 2026 23:19:23 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 62GLmUET002985; Mon, 16 Mar 2026 23:19:22 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4cvx4khd7e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Mar 2026 23:19:22 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 62GNJJ2g000736;
 Mon, 16 Mar 2026 23:19:22 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 4cvx4khd77-1; Mon, 16 Mar 2026 23:19:22 +0000
From: Samasth Norway Ananda <samasth.norway.ananda@oracle.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: samasth.norway.ananda@oracle.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, rodrigo.vivi@intel.com
Subject: [PATCH v2 0/2] drm/i915/gmbus: fix bugs 
Date: Mon, 16 Mar 2026 16:19:18 -0700
Message-ID: <20260316231920.135438-1-samasth.norway.ananda@oracle.com>
X-Mailer: git-send-email 2.50.1
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE5NCBTYWx0ZWRfXxopFINOlt+Xu
 OhLxyDqWpcNN2nX3Q46syLGiYsSf8Inwjo/h69ET0NUyeQDooZnqthKiHQwqJVv6Y0dKMu1paxR
 1igocDtkbxkPyWI1M8GZORxDNM3/oivbZ4URy2q05nieZGB+US3mP72sz9qo8BO6vjHeJoBy1Yo
 lHck7UohMSEO22NADHQAYrEiT7ERa5dcMGIobP0d7/MIbjfbg1/T5NM2iQwWokBvuDu1PM7K2/e
 86M9XMNl2OuR1YVGp2S/leMYhX8ch4V6o31AoT3dAf50eW5mWYia8QKN3Eo4L5VoF683u1Jf8rL
 97HoJs53wQrq4Yur8PDoM2rC8tQ72gZsZUr+NbW2f0vMg/Fx/uGhWKfbMNJ7oPGJg7P5f7MdsEE
 Ap96jFAfJJusLneIz39vWHpY1sgSRXyrWAG9mzVl31GAhimBpnelJBBMZD6rYvwQxtdnJJ+Ikv7
 /N3cURuHdTIP/oEEZf9UBC+QlXoBCfb00OyIMOUg=
X-Authority-Analysis: v=2.4 cv=J8WnLQnS c=1 sm=1 tr=0 ts=69b88ffb b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117
 a=zPCbziy225d3KhSqZt3L1A==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=jiCTI4zE5U7BLdzWsZGv:22
 a=BqU2WV_vvsyTyxaotp0D:22 a=e1kWX8nsQG7UR3_6iG4A:9 cc=ntf awl=host:12272
X-Proofpoint-GUID: zwxShr6t8Shfi0OMEKXgtMrFiLMlmwvg
X-Proofpoint-ORIG-GUID: zwxShr6t8Shfi0OMEKXgtMrFiLMlmwvg
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
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	SUBJECT_ENDS_SPACES(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[oracle.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[oracle.com:s=corp-2025-04-25];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samasth.norway.ananda@oracle.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[oracle.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 4465F2A1E1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

v1 -> v2
v1 just included both changes, the bug fix and typo change in same patch.
Separated them to two different patches for clarity.

Samasth Norway Ananda (2):
  drm/i915/gmbus: fix spurious timeout on 512-byte burst reads
  drm/i915/gmbus: fix a typo in comment message

 drivers/gpu/drm/i915/display/intel_gmbus.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

-- 
2.50.1


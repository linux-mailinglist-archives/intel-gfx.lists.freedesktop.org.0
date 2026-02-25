Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NvxOognn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8624119AEC9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD73C10E812;
	Wed, 25 Feb 2026 16:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eqAX7y2G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3703A10E865;
 Wed, 25 Feb 2026 16:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038021; x=1803574021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=QxHUe3ZV+BlBm76C0Bgvou5KiMG8XKs63m7jnXe8uoI=;
 b=eqAX7y2GMokQY8mEM5lK0bD17wjaXBHcq0d+GncDxpu6xmOCzDOSTES6
 jcFL/NWFm+EP8S/REnpk4BeIZjyJNQdLuLLPsXBvw3vNhiDVREMw7USIH
 4H7uyE0sWmi2zpWlLjg9Sz2m8etWJrf2SkjiTCmyW8cE+XSVqiS0bTtfR
 mpYyN8UjGgFW7rN2rikR7xZDaDS/Xc5V4yiTPwkZ3MJyqkRGDSJ52fEhl
 w7jLMIRsE1s5APKlRZA4LIsRBcYOYE9/jODkBVslMNi+QPrK18wu55C2G
 85mzGwMNk4iJdGsw5CC7lWLGDJW5POOjiu6HHTQhryKDdcuzv7+WFF6Ur Q==;
X-CSE-ConnectionGUID: T5tdmZYCSzO3ldimKmkang==
X-CSE-MsgGUID: FzMWLvYJReuD618xpXRCGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76953584"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76953584"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:01 -0800
X-CSE-ConnectionGUID: 4p82YMvnTaCN7ktwgcHGTQ==
X-CSE-MsgGUID: oQmKoPpGQM2Dehbw2QrRRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220895495"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:01 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:00 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:47:00 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.40) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MgUi+XuzY9yIyxInkmXZiQVvU4Qwwqlp1FsEg9BbxKg01K6axCg4bOu7ZQ5PGeeab0bAn49ngWaNwAkqTxdrmOyJCGJNhu41OkkvqAiPqfDVsa7U8ov1ei44ssjNYC4dkdo9J9HpknOBkVRA4o1GIY2OVukW4VPDJ/HugNraq8VKqGoCqwhBPhScEIC/AnqXEsx05W2xCJ2npDHMV2K330WOrbpG2h/CNbLV5yV9fSh4oTZidqteyapqMMNxuffpYK8M15SnJ7XMgRhhXg2MMG8BvBUXf5y1vz2xRYySMIvpl6LauLFOFzO0ScDKDTfzfsbDRIqcJf+lO20qc0FTJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ntrGu9srq4RhTtd5H3Tk6f9lfkGMigtI2C4JwM8TQA=;
 b=ue7Jbl12EZJi5MZFyYuz1Gh/JPNNRx5rjj9zT65PqpZFh+12zEjCBiUIRt5Em6fVzHw3Z7kUddB48YYGWHwA4y293DyB7nYlDVL8QK2/90rAcexyLtNMvGjfWMnY4cMjxJ0mwTJHXL9/6+R0RJK8kjlsscRjXyItYWNhRgeKBRmeoRbwW0qaAHFAODsXQYqXyy+hxprUO3t2NVhmhsukhFuTzoe5YLLzhVOIJDH78I1K1L8PPi2Tvr8Tb7YGk+Ch9c+wF1M8DT3OtpTli3RN5e4fIzWotg5Z4ls5kEz6RKfbRYnqapXoerpkdJGJcW0xxbt7fK9q/xJrjjbLyih3xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:46:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:57 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 12/20] drm/i915/dp: Reprobe connector if getting/acking
 link service IRQs fails
Date: Wed, 25 Feb 2026 18:46:10 +0200
Message-ID: <20260225164618.1261368-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV1PR11MB8790:EE_
X-MS-Office365-Filtering-Correlation-Id: c679bcb4-48e1-4d41-caec-08de748d7cec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: EDbwGYXHMjtuWjqSMu4DRfNRBAziYnZPMINLXAr0WYngX5NlSrhcwTn0CiFu6VtQDo8EDYvzVEM85+aslNaSaNPnGvlEtzNWKrYYa9wUk2//oujnxSda3USZ0oWrgFqJ1MzT/H1q8kJFhOu4w2IMaFZ3VsRsgeg9ODjsAK69VPJ0HVHS+9u6PJuFkwmWX+xyzwKPGCk7FoxeI4iCcmlGRzSTI8Z3dazkj3ta+p+E/6g2yDPTYUqHT3IFI2091Udt/uph49UwXRNPFdWq0LRyY4LACzWZDcJXW5pj1OpByAxaYAoNNzauO+CUV+y5nuwD4Ruyyy7TN1PjjACriSROG02yfKGmn/Nuy6dC5c9P6T1gy0gIdVxhZndYSxcfogNRwLEoiA4zeOXdwT0wPMULoFbnSK0mSDF2zYVnpHrzUq3ANSq58e1VakvBzrZaEjQPtfsMhcZEE3zgsRNUIzqg54EzDkD7sDlw9hEws2LAVgXIhZ6WfULDvd7YSTu980KYgjoNsfQLXVNyUAdunl4bGbKrvCR1htLs/4j36yqlaaqQNb9aVm+OIsyiFaSDU4SpbXmezJqrP37LnU5gw8sQDlIOknpK1m99EtV/4emPdIH9vaGeZygP1/IWnoQRQQt5XDB8v0iCQ3yA92HdbGygfFkoNsrv633wNswI1nsr+TDHsHM7AnyGaf15guJb9uNPN835Bqaqvo6Vaq5sjbKpOKmbGFCXwbH9PeaxGzV4dUc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fDoRfj9IvdPejZbpxjjsnq7KdOtxncKCLyPAyv4BK8UUcBDq4t8oCnYvLehb?=
 =?us-ascii?Q?ijuQaMdxyGkNydDbON4T6CfFDlINwXDAvo4YGfd5Nk0vggVX3NQsr46LFblF?=
 =?us-ascii?Q?pjqYsMeosxxmhbxPq1EsonF9qFonjdhai4aNidmXmy23BaH/ExFqZ6j9ZehD?=
 =?us-ascii?Q?RnLxlVKUzyhzHM+EkKiOATu0EwCLWgaYWjfxvzvUyVRCjpMJWi+mbfPIoEny?=
 =?us-ascii?Q?AjcX17PgaOwyTdVmjjo/VsQVWiSTLLO+V4Hwdf27GrmvdjdQe0B/52eSlfLR?=
 =?us-ascii?Q?0lfooE3FaUk1Yr9LajVYOHEF2VMJnkYDiogeMHNyp8Cgd2eIgLc0cq0Yjc1g?=
 =?us-ascii?Q?72KGpFSvF+R93lP57keCgY8tXKLwkGhBbKE7MMnzqRhEGtbOwJh5nmhfih3Q?=
 =?us-ascii?Q?QOS9WC/WFAOLLkOExuZYUNh4YhcJEqrUnzoWfbPmkJtVmYX0xLFxC/5QQhh6?=
 =?us-ascii?Q?sGloOP10I/4hSVRSc9shFpUn34lbtsKXE8SlkixKHT4U8WoUqR8XYjNV6l17?=
 =?us-ascii?Q?VWqHhVG98hwIvWCiRygiPpHGV4+uSLyvalPnKRG5T6mJUAsM/y6wdQ58SptC?=
 =?us-ascii?Q?7pDfqf/wh9mYPnZ5iR2NEXTh6a6Nu9v1EF04wCZvDD8OKNvSBBH52hcpKqdt?=
 =?us-ascii?Q?SUIDKpVz7tr+8gKhJcRnEyKfXhXikofjKab6aFoLFeknpGBn7seA7/0dNzFo?=
 =?us-ascii?Q?oTisseuFNowpAo3YvXknfrKeNtilTmUde3b4/YgieTT45qcj2159GnthbwYk?=
 =?us-ascii?Q?Ewm1ckOSmILSMdxIJ2CqXSm/ABjx9Jw0kl4PK1FrTd2gagFwDrx45QYikELT?=
 =?us-ascii?Q?C1YUKBTTbd1941rLkOWx4bLmdB3mEwr4MqumMf8AwUCYb8CPSYAZQ3lYOQEr?=
 =?us-ascii?Q?PxUUTCWQkmto4ocRNovnB5F23DSRzcf51NFX2bHEPQpcFbVPd+Z6/7fkoWkX?=
 =?us-ascii?Q?q3XXyN+TNWFMK62c3AsA9Gg9rIHwnJPQv3tdh2vOoBGa8+CvN4oah4h3O5t6?=
 =?us-ascii?Q?NN51urHh/IrFiEK2BjrWhTUEzYDWec6FqDLPuSs/gmWByV1g3Q+E8XNIlnIi?=
 =?us-ascii?Q?JjLHYLGy+RZ/7ZcA8yj68aSr4kwjH5TUrbY1WxqVsWV2oTI7jegaCaWE7uQl?=
 =?us-ascii?Q?KIsnM6B6nGw27Y/mkztdZ7/qUoM1H4oopCPbI3x9W6lcGVCwPXMzesFxTdit?=
 =?us-ascii?Q?CBCl7g9+3EQ3qDLexp0Zn+lhARqRyJ8p9Nmi4BpCLHSK8ZFXT9XiArL6zQ85?=
 =?us-ascii?Q?4EDpf6Pb5l25BWUPPaRaUxBFA4RU/Dy6y52p2cDguM3yJ0hzqEOG1vGA/etX?=
 =?us-ascii?Q?h5LQeC1Ch4uucHuOWHAB1w6NH/8xq99ztU5uZHjML5AnGWAak+qCreD/EEll?=
 =?us-ascii?Q?HD5DHYGNePHeZGwPKqFDaiAJ4H4NIlRD4kF5QWf+DdHfwzCifnrqSjTRoY97?=
 =?us-ascii?Q?VIsUAOpMXAB8dmTRSzy/94bkJd0jBnBD+xofYHr4yfSsh/VojZ0dVCwikmcs?=
 =?us-ascii?Q?m2Bj7iZgQtMTFOM4rSsPIxnQLW18INDDw/ShBx12Zzr0nUSs7JesjOgDrTpf?=
 =?us-ascii?Q?yvB+8tnDerSQJ6UjC6mlrOixmdQIHBa8STx4zBkagxPh9JGzA2sw3rVePONJ?=
 =?us-ascii?Q?Hr0iDZSu+Z8FN4Yk534GuQuV2QVmE2nI773VfSvRV8b0OPQ6W3KDF/Vww2w7?=
 =?us-ascii?Q?TyqSTMxKqmygw4iJz9j6Pm0W9mzEnlMeNFOyVPMxSoqRwKh/SXHXv3i+7w4h?=
 =?us-ascii?Q?kaBhg3YEug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c679bcb4-48e1-4d41-caec-08de748d7cec
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:57.1899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rUJk9eTjB7T55veucrjaKJqGzIny5VxQUfsVzIwT6sPvH/j5xf5eOyAJf3VCMb9A2l9H6huzT+alzf75DH2NXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8790
X-OriginatorOrg: intel.com
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8624119AEC9
X-Rspamd-Action: no action

An AUX access failure during HPD IRQ handling should be handled by
falling back to a full connector detection, ensure that if the failure
happens while reading/acking a link service IRQ.

While at it add code comment documenting the return value of
intel_dp_check_link_service_irq().

v2: Docuement intel_dp_check_link_service_irq()'s return value. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4a44059362139..f7e91fc16b5dd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5803,6 +5803,11 @@ static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 	return false;
 }
 
+/*
+ * Return %true if a full connector reprobe is required due to a failure while
+ * reading or acking the link service IRQs or if the reprobing is required
+ * after handling a link service IRQ event.
+ */
 static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -5813,12 +5818,15 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 		return false;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val)
+			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1)
+		return true;
+
+	if (!val)
 		return false;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return false;
+		return true;
 
 	if (val & RX_CAP_CHANGED)
 		reprobe_needed = true;
-- 
2.49.1


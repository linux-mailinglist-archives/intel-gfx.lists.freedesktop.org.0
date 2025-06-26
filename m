Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEA8AE9816
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEAA910E85B;
	Thu, 26 Jun 2025 08:21:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N1rCyrjL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F7D10E85B;
 Thu, 26 Jun 2025 08:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926083; x=1782462083;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Wqs5QkViCawZJJLQi8QOn8HjOuOYYoia0225sgl2Ukk=;
 b=N1rCyrjLypea9m0reVCaJDH1GGsbwDVhGB0Kin/HUYJrYQSB/aRIWqjP
 rSwMXO/is8ULfdKDX8RZOS3AFu9LDnhI8XJogI4QN2CQWp9J5ExRqPd6u
 dgptLvDS8I9JrCDJkS75Q55nsMqPI+JQidS8Uq7a+Utm47CjEJtye7Xj0
 GfBnbVPcqDAQFpbJeqAJvHjA8MWmPU+tlSfdPd2g5kO9H0mOb/gVEaisE
 PCxaLcuXbsTX4w+wLCnnPh0gSIwewlVYV0fceCHmmcZYbrAuodGsPJM0t
 ehZBSAVbS4JBF2CTwP2tH8HUdPwkP7UEJ3XjwoNExlo4KIX75Azfq4uYH g==;
X-CSE-ConnectionGUID: dMQMXH9sS0OWrNpnFb/s1Q==
X-CSE-MsgGUID: SNQCXIi0R0+FNpm3bSsBAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="55837209"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="55837209"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:23 -0700
X-CSE-ConnectionGUID: 8KpIcWXcTd2txG8UJL/0ZQ==
X-CSE-MsgGUID: YL/6lo5TQVOSIlfScthr5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152213568"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:22 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.66)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N6Nf9nNtl/nNsrpbJnhT7tzsYo3HsngtyYqDgTtYEinzsgSq3sjQxNX2GUeCDJDX7M649PKqiQLkw6wuVuVrAZQLuzCph6No8oeDWuQZWgXOIVqfrd/0s2h2MAmhh5+oR6ewOVnJkWAoAPVEwGz7rGstyj708Dt7W5+BlLDYr8gG7DCmGG1ryp6p2BcqtXiH02cJWvu+7rrhaQZr2EfSldB4AD7jP78nGPBUP1FfRDDHohWShiC1BAgM38J9M/L9ecIrzFoIQIogIcYvMbQxNPBPpAPb+rmwKMMMJ9sO9Ul00wWbWo4YbEfrPpM5J6bWzd2u+Uc/56LTXBnO2DcfIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a92yyFYHxIlxJhgpeQVmA+SL5cmH4RCnh9L/7UXVr9o=;
 b=n8kWDQkSNDp2hEDS6YRD+6+5EogGjZypwO18UAruJt5aJgX7J1Fxd0uOLRiOxDx0+Ovgdj7CM7SesPwS+7BqMkJ9Zvotw2uIDJQdk4RIO1H25M+gMUYIDqgAcNR225diGUIbXEpkYWlyCF553UXuQIr2Zh0gDOf9dLwTyp+blHB6I8I0tzsnwaHId+wn5GsN5e1969IdQjhQH9T2COxAvuysqZe/hGR+cLvWLcYKEb0/pvK/JyTPjDbmsaHeRwRUS2vahORVVj1Bed8J1F/yqIdVWkCbeAN24ssBmjCNl/g4LwkLhFbBy7j1LdbbP7r+GcazHSvpdiKdrqHJ746gnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 13/20] drm/i915/dp: Return early if getting/acking device
 service IRQs fails
Date: Thu, 26 Jun 2025 11:20:46 +0300
Message-ID: <20250626082053.219514-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: b04195a5-72bb-4bb9-c6a0-08ddb48a6d37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nF2ng+C7pRtbarch63b4wLDl1w5nsQ8YvLRa5cY5ifdgm+3lYGl7sC2YtC6V?=
 =?us-ascii?Q?dEWVB7MfDeql0pN539BiBYadw+sAYKElNMHDk4y1iC9/uk6P/DU8Zm7mr6zU?=
 =?us-ascii?Q?JgXV1u0zqxm2/Xl8N8G1ktsGIJVcZAkTF4nZ9jNxkb4F8Fi99VTOTPJktzbn?=
 =?us-ascii?Q?764SSD/RWlE1uLm4YopS9SMl9uPyM/k1BAPu+X/cOU0DIiFoaCa1Yaa7ReaF?=
 =?us-ascii?Q?oCDJS/1wXQgqza8ynn4wYlEE+aTuDIpi41hMPj/DXoAMXvBS6Q2ON9cJqM2J?=
 =?us-ascii?Q?SlQUoD7fXAef7lmFdvELLBsYnnhM7bzT8ns/1ZF9HCw787/cE/DCObQGeuGu?=
 =?us-ascii?Q?NsPg3b0g2RixrehT/3ajT5tWb2UaH+URDY/txZQNvBj8HFPTbF7cLouuC2Ju?=
 =?us-ascii?Q?O52MNWXNazmUdoL8bCeArTF6f7CGpZ+9lfROd2gBCvOQRkWe8mwYnMgWNhgh?=
 =?us-ascii?Q?anB8ucwgKhLfU8ebuxYfWcREtZxxfPmLFfqOMNY6qSMx71rm3mWBK6n0XYf+?=
 =?us-ascii?Q?KgQLBsZIq/yN0lhb7z19594XJnjd5qTJPB2Ba0jI17wtz84O74fD4e/g7CGW?=
 =?us-ascii?Q?bqlPTbO4nM7v3XNhLNqvttNYIDsjjot+RK+CgcUfbsi4Ln3QVaasYPD1YF+X?=
 =?us-ascii?Q?JON7Q0PO+CDjethlG9SQhrBBHTkho+SyrkloZS3GMuZ2DwMrc+sZxDfsSZrf?=
 =?us-ascii?Q?UAN0YipITqmVmvhpOb2oELJzGhfuPvg7JvJE8C/GzwXsUgJIIrPzeEdzII/a?=
 =?us-ascii?Q?bL6OMf4L52FuCNCk5kssFqu9ChVdvA2o+zUWIc0lBdJf4XDwJ10GTXzooUt9?=
 =?us-ascii?Q?L7M6+ImRG8THzIvu2f7CNXI0VY2FmOpmkSxiz8ePtpGmDO1wb3Vty4jcBJQn?=
 =?us-ascii?Q?hB32TsgB+nCAWkjeuYuDoY8IEfSgZRcerbDk0H+TZrcVwe82qMz+XS6Tnkqt?=
 =?us-ascii?Q?8NuYFrfvDZv4AW3Zx/xod7crcyRwWCeC8CPIe5IoJFPBRQCv0szZjEQB+9j1?=
 =?us-ascii?Q?uVDmsSaSg97y4eM4Wj9REfdwt7As7QeH8PhLpPnVFl+bMJZ6n3wUx5/fkaB0?=
 =?us-ascii?Q?LwsdIhuisbuxh+zkkdQToBv3f9RJpVz3PQKLaK2OOmFLE4KnqiyMFZCOuAYB?=
 =?us-ascii?Q?JgjT0w7vDbCIxw0d/uE+6iJT5rbQv42TlTQO+SZDZYJFeXAMGRrhHBl4vTeN?=
 =?us-ascii?Q?u3ks6Gkn+Md6lK9ZQ7ASJ6SMi9sfyAcENuJaJW3WOOWSYVkU3HZSF8V7csD8?=
 =?us-ascii?Q?2WIJP8pnjDARjtOzyeOTEBemOo37l0gd9WusEEe2fjNT5B5syobRzqblXe8d?=
 =?us-ascii?Q?SfyXjwqP8DzifNfHRlpEhEH5248fO9stvHfSe4Ui1bQTpvCyXmFvNRbSXvmY?=
 =?us-ascii?Q?C/q9yw4qs4ZGjejoGiEcEvAbnSGOOk1+eqZ6xUWrtk7HrcyADcUBy8l8H5Ah?=
 =?us-ascii?Q?p1CfagwAv6g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NtrK5Ja17HW/bslBb4GjTNE2/LNE0zCqNdkDOzk/2hhXHzu68FVbui/5SQF+?=
 =?us-ascii?Q?JbobkqpjAiwocmMm6mdqbfHQVsMynKXDUnmZUu8xoXRH/30kKp1H4s4N4vP1?=
 =?us-ascii?Q?4XxOKMX/rxxR5V1N/U17QDu0JBTlQAMfkEFeersyoM26vGFeE2r9Ng5FyDQl?=
 =?us-ascii?Q?qgiVk4elH9uQpPOTDJGtoM27r3mcJTX9Lx0YxTD38zIfUBMJsiE4btAPCGBm?=
 =?us-ascii?Q?h/oqBI/0prRtgP4awGx944ffeVLF3PpPtpbSlmd2jZWrb4WRJkqrlAkSfmQC?=
 =?us-ascii?Q?uoXAqafvBlHqz/E2u2nBN75WG5fZ3PZHTNRkCjVcfiZesJjetu8LfOhesBFz?=
 =?us-ascii?Q?+vRduY2V1u5WJDqn3qFg2NBckATvMYqX/S1ALU6mOzQotJrkdqcEAY0Sbjsx?=
 =?us-ascii?Q?0hnkLYttLkCuLNYdJCKuo7TlYnNu3yKz8uFlRFUH4VYQt35xaZWOJa6ncyGV?=
 =?us-ascii?Q?b7fV7Bbr1MdgKS0GR0Od6DFWfoG8TYAHV3G9dAnxg7GQAVsaNd44zprMhZo3?=
 =?us-ascii?Q?7wQD50NisFltXMYltUVpfKU8b9DlFwESmGxLww1wrxyyK+LFnDNXILNJGm/F?=
 =?us-ascii?Q?L2yzJK6Z02xuPvUGC7nQ9yLYcD7IlVmYz/w5CM4hqF1NubsoQyCUTy6bbE6j?=
 =?us-ascii?Q?Q4gRTRbtvEaGmIE/08PoSb3LP4nvPE65AZiDhAGSp9WUHRBLdS0lHX4vZW4O?=
 =?us-ascii?Q?hFRKwr5BTRZrHH3OLSA2wA2XKeD0djKBlAK00SHnM2XMQT8yMDdIhAcH1Y6W?=
 =?us-ascii?Q?nkx+l+SR5mwKPStI9aDn/DC1afuxvhJW5+FXdjJKmBjHCXZUUCdWaEZbRI1V?=
 =?us-ascii?Q?0prsFyTr0WXQOaCZ0hoeL0tmdkrwDkZNfAo/fnpkBTeBMwjIvgEp3Rs+LJwf?=
 =?us-ascii?Q?Zb4Rec0qiNL/i6n7Myno9nYv1BCkfKv+xd1s4lo+zqtvxJrUIvJnw7lBFSMF?=
 =?us-ascii?Q?ETZ0EWNhBDD/l/yksNmceSprTMjeUc6mJ5oh3rRwJmVQowUlJAclvdlJLCBx?=
 =?us-ascii?Q?wXquT/XjP481Ycs32THTMFe+a3TTiI96d49y6AIwL34dxKFHLpoOP3bGUfB+?=
 =?us-ascii?Q?TTGnNaZ+9hrAS0BVFAgtJzaKw3GyAN3w+VWeowLlGqDYI6p0AgkqnUaPDiNB?=
 =?us-ascii?Q?/MV80Qzvh87PpyUaC6ExcISbwMo5lqmsmGQm9xUyrqAGLoKutVeFcGQBpLdK?=
 =?us-ascii?Q?fbj5hOi6aMTZJmLXdz/F5XEugAa06ST1PuB1bwy9maMVBhBGIXKEban7kZCP?=
 =?us-ascii?Q?EH5IC7czlxbP0pIbuS2m+sX+bmolwn6P7VrLmBb3HnUYPUb/55vV6MDpKxSF?=
 =?us-ascii?Q?VYRNTmSZW5Za7nantrBVlNmQzi9vSNl62e9Im1wkFxyF4NPnX4iKPJsXwyVR?=
 =?us-ascii?Q?QFdqPMmW7TDJH6q8Djmvle/NYNPiFpJ8avo5eoEipwTyKdTE3eRpx9lNZ8uD?=
 =?us-ascii?Q?DJIj3b7yrHXNKZ/s5F3JyUND0s9VVmPwN6XdaRiHbVaNOOdhcRR+yaxMyPT4?=
 =?us-ascii?Q?oyvngCzhFBOvMcOOBaoWGdNgRBZj9bPvfjYrzp2GTqNAl2+2ARmsrEgUnBeD?=
 =?us-ascii?Q?7QPH4ZrBUEgAAx8bxjXjHJu2dm5fpHeLGZldTX1V?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b04195a5-72bb-4bb9-c6a0-08ddb48a6d37
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:18.8554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5tXL+w0nVebugkjKlWMKLbKAarCSFjyoYoEdCJw5OQaL5b1i9F00z5ISkHPKfiL2zIshA+xdkJBRJUxFBp2APA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

If getting/acking the device service IRQs fail, the short HPD handler
should bail out, falling back to a full connector detection as in case
of any AUX access failures during the HPD handling. Do this by
separating the getting/acking and handling steps of the IRQs.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 ++++++++++++++++---------
 1 file changed, 23 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 66db426b4aca1..cfbe7c6f896ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5393,31 +5393,39 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
+static bool intel_dp_get_and_ack_device_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val;
 
+	*irq_mask = 0;
+
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
-		return true;
+		return false;
 
 	if (!val)
-		return false;
+		return true;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
-		return true;
+		return false;
 
-	if (val & DP_AUTOMATED_TEST_REQUEST)
+	*irq_mask = val;
+
+	return true;
+}
+
+static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (irq_mask & DP_AUTOMATED_TEST_REQUEST)
 		intel_dp_test_request(intel_dp);
 
-	if (val & DP_CP_IRQ)
+	if (irq_mask & DP_CP_IRQ)
 		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
 
-	if (val & DP_SINK_SPECIFIC_IRQ)
+	if (irq_mask & DP_SINK_SPECIFIC_IRQ)
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
-
-	return false;
 }
 
 static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
@@ -5471,6 +5479,7 @@ static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
 	bool reprobe_needed = false;
+	u8 irq_mask;
 
 	intel_dp_test_reset(intel_dp);
 
@@ -5485,8 +5494,10 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 		/* No need to proceed if we are going to do full detect */
 		return false;
 
-	if (intel_dp_check_device_service_irq(intel_dp))
-		reprobe_needed = true;
+	if (!intel_dp_get_and_ack_device_service_irq(intel_dp, &irq_mask))
+		return false;
+
+	intel_dp_handle_device_service_irq(intel_dp, irq_mask);
 
 	if (intel_dp_check_link_service_irq(intel_dp))
 		reprobe_needed = true;
-- 
2.44.2


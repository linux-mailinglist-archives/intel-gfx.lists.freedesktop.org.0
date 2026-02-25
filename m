Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGPHIIcnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221AD19AEC0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6355410E810;
	Wed, 25 Feb 2026 16:47:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P5eSD3qd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACBEA10E80F;
 Wed, 25 Feb 2026 16:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038019; x=1803574019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=5B/C75fpVkSwvz1bAtB0ZD00NYnBdT9F3S7oR47I230=;
 b=P5eSD3qdprwfuDYKwUkllp2z4r4bnd71E9s6/NMsBbj4CwKfRSMZOYw0
 iFbNuX1WKBjmLJQkOf/AMpN1mbsTwj4mGaiwlJJr7LWVyPHVsNBIAZYMU
 3w3dsJ257NECcmFHIfPd575sB8uA4Sx1Qxh+QdVeSKCI+HMEA5Pxl6QbE
 Vs+oPUnR2pZOQzczrn8V+08n9EpnqddDVrh80YKtY69ZyxrKeooJZSzNP
 w0p0Z6j/L53bvpLHr8S5KF4O7nx4qpUifX9MlhE818hArrEFUKG9lfgVK
 jFTJXuOQ9op8zKcO5d6TIvkil9NjNn7J9WSOPVT1ZDbrFRL09SXAKAnDZ A==;
X-CSE-ConnectionGUID: 79Z7n25UQ52Pe66RIRAjvQ==
X-CSE-MsgGUID: QCrWbu4dQlOZab23XmVEJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90495859"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="90495859"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:59 -0800
X-CSE-ConnectionGUID: Tu0Tc8EzTUOE0526mSKYPg==
X-CSE-MsgGUID: 62iwCx0sRKu6TTmDjuiyQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220424266"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:59 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:58 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:58 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.68) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VFV4/Wi9/v9gTgKOi7VyTX7WS9SE6jm5uxuayB+HA0Kd52c+SyvFASxBTZBlNnft8RR9jhzHYDBYJoxUgGSl5biATZ76qvgy307o5nLC4rojYkpw/Ke45GEUB+W0FOaJgis0ygb7AmlDuU/pdDEzVKa43N+JNRzLGPlM48KT0XDwPx4sb35Tv+FNsjNMhrrBtxSJngFzQeoEDqshJUc4Ay0InTugANLHxWWetz4n+ZZxhVbGyfioUw/CpKz32rh6FYqQYY49z2SPBjqPT1GZGeVROvvd7UIoGerNleBlIluIfa/xuhkSJzWQaHtB/lvswvDlhRQI9r8YM6iTCYS9pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3nt+PhSxWrte1pxIIxzELghOmyQfHViF+AeomatnRy0=;
 b=xTxJN3Y7Sc2InoJ1tR8J7WiGUQ8VjUIdcvKDWdFJwE1I5UnG/lWCU27m++adc4k5uPVCn2QCOdcRqZulTAzSrEitx+Wb78YH32hme+2LUdw9ikzpCYgEJ95BI6okT8eNnFpIXU2IPNFtwQV3Q3vcBeNEeNnfx1QVcH2KZ2JF8y2JTxXdCXCRaz235dqnOwJWrAkajlWksLXqIgggVbTmgWXp6UqCk+d9cZ+3EsGTu+KMMN7owiSrnoh21y+lfukGSifijEvmeMkVaqQmfOuMNdxzh4oaSWDmMSU74+36TMRah+SRDs3W247V6B7weZ6oQLHm05780Mr0jIlAlkrcNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:46:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:54 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 11/20] drm/i915/dp: Reprobe connector if getting/acking
 device IRQs fails
Date: Wed, 25 Feb 2026 18:46:09 +0200
Message-ID: <20260225164618.1261368-12-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB7449:EE_
X-MS-Office365-Filtering-Correlation-Id: f07c05d5-6979-455b-7810-08de748d7b52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: wOdiuEKqe+rCyMdA3WPwM1ICuaTD16rTMfTUhW0TWdqgOoARH72Jpot81/13HJMgPETE/G2HGVbGpQqo9yFwQt/BvJcVRnByw4iDzHV0JyB9Qdn5ZunM9iI55kOGjTXyikJ3svfI0MbFF4ETARjOLXJJWLdVN97hLADw87jvBoEPFuofcczXD9qZFJRxzTgd7QlXdt5mjxa5dm4t1z6NxZjUe7xAuKa6SnWap+CCwlh68FOJrwjWNvB3TXXhnNcVd1W9mzGyhKI5IvqGwiqJpRpa5R7feY6Rc1g5EhfipJqHPZFsyNfYuJAR/H3h/4X0hboRDqOEFBHGhtI22wUN47OA76nu7VzCi3Rjox2LTCehAmilUFTiczoEELG0Yv39408FSt9X5q22RDKyuhQ5nlclYDt1m40ro8Q5LAyucXiiduQ29AKaSuMne836RnofSXRZU+4pRTDxAC5KAbOEHbAzmNZ4IPDLXn1EMMgcNoSkCkuJHg6VSjs8Xa28NgWS73TQuoAzjiVgy/IA0FI4nASMb/SlIy/ih2o9A4kfNa2Aai6U3lgy1ppYFp5sRUjDCBULbnRXHcdBnFgEJxBExHAU0st1k76kckP+iqJXUON2pLn/EUVb/av+TGl05mnIehYmg63CTNk4Y/itKD8jqVSDUmfKPsNShBiqHIUYIeHxqxMTMcRS1HtMSQxc3zkZTw7SVOZyCkQWfLN1RTvLbX6Dgua7S01bVfd/+ip/j4A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ikZob17lDcKkz7sdqjcDFxijRsgwTzKpj8j4zh803ozaxZWlkHdo5hcdbmIq?=
 =?us-ascii?Q?/mAAAUBwhZD2acnZ6P8oIxxMH0IAvHzT74MTZzP79tlxdbnJVJyZMFzLsR9r?=
 =?us-ascii?Q?iojXHl0CSxQukahykvuHoobOhZXm4rBhdB2PK0Docv9w//i0x5JTFYuUPGMb?=
 =?us-ascii?Q?vZuXwsnW4czBsshK6PXCEo9n1ndQ2NBeYYRUqHVvP6AqAgXug29iJJDPBUCc?=
 =?us-ascii?Q?W4ujIfvggfIksL+2uZa/W/en+IpWonxb9sMTZVMCm0WJAqqQLbBiVKtkXhfk?=
 =?us-ascii?Q?IIUrTHEKOT0mdP04Vp2bzv99UoHe1aPXfk3gzPTQBJuqhWElB9Jo914BSrVH?=
 =?us-ascii?Q?LIu6GTQSh2YimsjPZsu2C55XOfGRwLoP9W2g+OmwQEITiKBln2+Pp3B+6FfW?=
 =?us-ascii?Q?+e1z2iXeXKkK2a+gFw2GSG2HhQLCUlGVuKNr9pi9e0HJU/XX6ffDYUvqtRTQ?=
 =?us-ascii?Q?TwgrlzkbDcvlGpjzd6NnTcHIefK6HGBy5AvNIlUb4M4fWg6CQ0ulgGUXl3yW?=
 =?us-ascii?Q?dl8eAL49egeII6bNpL74SKP04VrLkL9XVbkm4qrQY7o6NJ+fWu6gRiD7GW84?=
 =?us-ascii?Q?L2QZnutRFdPiDkz/dnfqlQaO5le2Sb/PJFvrLSiXXtY/EBfihd7SNmILV1ou?=
 =?us-ascii?Q?uiWf5QhBxyzHZo3sA8lMv5petl2zi93Ef/Iiet5UDlHFFLG6ypmMCWS3Qy0Q?=
 =?us-ascii?Q?PPZiqInNMffP8NPer5oJMeGwX1I/vISV2eqk23wxR0I3Gk/KGhEZOQ/G9ty0?=
 =?us-ascii?Q?qqG7UhWpGKkPe9CRJT0BqFKxWx2vO2YQqi+77GjNHpQLj2waXi3tfTf+Q710?=
 =?us-ascii?Q?T+g5LA1qtNYpwOjMiaAbQPJ2s01ScmWXXV+faSX7xfziVOP6T6yc/cEwUt+m?=
 =?us-ascii?Q?HAiOAELpqZ86c2/vE65TzP7D71A9+HaqMMsVPmNBfh7E9eC9NfhT7IEwrfZp?=
 =?us-ascii?Q?BY2vvWJfaaz19yaL8cxOcl6mBp//ptSyYT8+/6JXZXuOTzXp2lj2zQE1VeMu?=
 =?us-ascii?Q?5K8MIRHPuxUVeUc8y7+P9TNEOpJ/ogdUJl2aYBJ9EneP+XW2RMHUBRZ0tma8?=
 =?us-ascii?Q?8TA4KZ+50mpnygnuUzuuETyV7qsj69EY5YUqc0TpFUjnlMof5zHV9SqzER0b?=
 =?us-ascii?Q?uJimsZi67sKoWHhY8Dcj3R9qSk2Q7bvpxMsY9ZtlbC46QQ8f9ShQlBWhZm6K?=
 =?us-ascii?Q?/qdBiRTkOJSHUg6jnNKsn5cvvXWseywk4Q6S9OiWM/D9zY146kTqzZEvaWLV?=
 =?us-ascii?Q?jmS+aN6n3+8lE5VFUwvp+Ob7lC955jCjJbf0DAw/7XmSii+PcTz8VNI9nGuh?=
 =?us-ascii?Q?VhViIL3QI5AszbHcYctSnm9EX1yUEsYL0TIuxkDkrPTUGE97CgnduOFncK41?=
 =?us-ascii?Q?XCLHrI/qP/UaqJSGq/vtDr31tXKqT4gD8QVT2Ge9RP9JIldF800IOFskOM8B?=
 =?us-ascii?Q?Gyw9WzugUm6rEJhlfhHxp/5mzDLsmXlQZF9jvGXFojCO4V3QFG3CU2MZnZz4?=
 =?us-ascii?Q?geIKJ1bYRYl7wGYYeOoZnIaozYhIspy0fYpYUTX78bdLnUd7722m8ayfDBpQ?=
 =?us-ascii?Q?qXHss/VxHVm8RUFIgDV0HRWpPwOkX6Hzv+yjHoYgyM2Hq3Uf67Gk20DKeVg4?=
 =?us-ascii?Q?pVO4B5MgDY9JmxMQa+1s55rFcyoQ7NGjJLxTLZk9Sargwebqvta9djlOsqSy?=
 =?us-ascii?Q?8W5bIztLCuUAVWsjCISDjBEIS3A1KCvON8zymsWGRtL1qkxcIy4EOVzG/tVt?=
 =?us-ascii?Q?DipCgkhKhg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f07c05d5-6979-455b-7810-08de748d7b52
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:54.4129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: htl4lC0qF2/RQYD8XdQh2phaXztWAMI26s4JXLR8K0eI75IJV9zTjKrDh1/1GGYCOyPr00iCHrdIWm00rBKWsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7449
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
X-Rspamd-Queue-Id: 221AD19AEC0
X-Rspamd-Action: no action

An AUX access failure during HPD IRQ handling should be handled by
falling back to a full connector detection, ensure that if the failure
happens while reading/acking a device service IRQ.

v2: Document intel_dp_check_device_service_irq()'s return value.
    (Jani, Luca)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9feda949570ec..4a44059362139 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5772,16 +5772,24 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
+/*
+ * Return %true if a full connector reprobe is required due to a failure while
+ * reading or acking the device service IRQs.
+ */
+static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
-		return;
+			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
+		return true;
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);
+	if (!val)
+		return false;
+
+	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
+		return true;
 
 	if (val & DP_AUTOMATED_TEST_REQUEST)
 		intel_dp_test_request(intel_dp);
@@ -5791,6 +5799,8 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 
 	if (val & DP_SINK_SPECIFIC_IRQ)
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
+
+	return false;
 }
 
 static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
@@ -5855,8 +5865,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 		/* No need to proceed if we are going to do full detect */
 		return false;
 
-	intel_dp_check_device_service_irq(intel_dp);
-	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
+	if (intel_dp_check_device_service_irq(intel_dp))
+		reprobe_needed = true;
+
+	if (intel_dp_check_link_service_irq(intel_dp))
+		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
 	drm_dp_cec_irq(&intel_dp->aux);
-- 
2.49.1


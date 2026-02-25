Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIVWJJQnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB3819AED7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498AB10E875;
	Wed, 25 Feb 2026 16:47:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W+WLKoZi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6599F10E86F;
 Wed, 25 Feb 2026 16:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038032; x=1803574032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=1Ki5cHCUxrhridR1h9b0vSdE5Qadt2+QWDRbPiBlNJU=;
 b=W+WLKoZiruoMlmNQvs4U6rZQ7/BJGr3TnAqtjW3v82Fer1TGERUJQEq3
 iuXxIK9GNE0WwHehh770mYVMJqkP+0SoW/Y6qg4NcIHwd73tz+qUTpXhu
 eVhcqbIXx6hVGzuEvdv/qz8yPBMe/kpjZuFMuxZqtOsVhQPncFkj3fXxR
 66+vQjuju+/lhRluRAKkujS4+C1cXtQpWvgb+CGouEfHyOb/WAb1WnMVf
 Wsh9onifBCjyFw+3eeJybsWSDcvyQuk4dc8z10G/Ayt0SQDMx7UrZpRup
 PTW3qYK8AoVGSNojI5lfrwmYHaTJl6KIO8veRJgNE23Ev+gOQlPBv8b4J Q==;
X-CSE-ConnectionGUID: sRNt5drySuGeNv5xsbqRrA==
X-CSE-MsgGUID: +iiPXJfqTrGgpgtr/wBX5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76919826"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76919826"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:05 -0800
X-CSE-ConnectionGUID: i/OGg1N1Q2ekUC3tDYKsoA==
X-CSE-MsgGUID: 6XT/sbtwTxabziW1ydj/yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="254044963"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:04 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:01 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:47:01 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.43) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vgNwdbOQJZPBk9jsOiiI2U8+mzgfZyYwOwDhfOZuIVic/thknBBkDokQpgskrl83d20ZnZeYpqrQZK8R7E3ILC1JMURtHvlqrnInsPJg1EFJN/NyW6aqgZSzGsJNbTxwm2bTqmO9r4mSWvCFBSUA8PR+o4QmVgzgc3D8j9ZFf8eS/4+D7ew/69luEk+q24Xaw9zO51OarLGLts7epooe5TyYZpo5Hl3O8bB/XolAOoALkWTMqQAdJU32vi5qj5YArg8Qm4sTN/qoZZA0/Dfpe/C5z5/hvrI0idBnBj+DrsGhCgA9pqtTNO/F6e5Q59Hwl+mUlGVwQAV2KRxaRJw3/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J991q591uudoNYGrU1SbJ2FsFok4qVvJka7YoEXs+r4=;
 b=ZDPtVV4VXyEdDvWSwl4imodZN4Rju4LkP2lBUZKOMW8xudpr/UzZrDqdowJGGsjtgPp2/WBNNQh+Y9n1UwtDtmQ4NdpZ1W1AUMKxdk+m8BGgg8DzzB7Y1PPLXSvHTFhoJgGwXKbcAA7O3lf98kGNAWT1OQtSYmGNZ47NfnHcnQ2y4fzOuWD+1lz9Q4IO3QT44btVovTwt+r+MB5GZSya5cAy4SCZXn0mSj5TjeXdPSxWDyRmXDzouo/xg7LCJhsTfe7ArXgrmFgi3zTdc0fi6IELIuMmWu5y2i3zLkkeWCeD6TlT2U2uQuwGMov18PjM9vI1tE7HHK9D4C+KZ4UhoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:46:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 13/20] drm/i915/dp: Return early if getting/acking device
 service IRQs fails
Date: Wed, 25 Feb 2026 18:46:11 +0200
Message-ID: <20260225164618.1261368-14-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 65906e77-49ee-41a0-e60f-08de748d7e25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: ftiRYB75baBBrwZjZgDPhlcxl3mNUrz6kj73GFKLeeotW5cU3hvJsDchNpFyoVG5JDeS5OuYEzir/1Si18CDH4ZC7BdSoABDTGbMuQm3l6nEjN7YRiXcHaAdpyMi0i4DvA65B3HtvBiMQ5wdITMhL7Dytty1TRZMANdMghXjP2a2ZkVV7GVNW87nCXWmjZn/QfWAyBlZGFC7OYrfqQ72/XYE+2UcUolughgdKO1XH+Az5PTZqaw0h6x+aVjjKbPwbAIfB8A8ZTeBaSiaVuYnqVnw4hJ/b7r4YWNfkk8z94znk104hzHRErF6ZEkcjQqTvY67EIn+yNckTs8OlaAutJxSunPZDBMJYzLqH4V7oI5vtUy+/lpMoEWtJoNXWV9Np1669NmyBZQGSySsF/pjqsfEP+Yr5U1nR7vPc7OqbQYHj3YO3KRoXqbTeIcDZqFmrW/9BcLRyLP9qNuIR54dEjAosWAxSkp7Ie/cDeCcnkRU+nWx7t10Ayt0J8KYOoT5gzF7uSRscYcQqZlJHoILcepQ7kHRlEtl8gvm6f24o+lXV619uPL14fzu2ebOjLaWw5foTiq+qtrJS/T+r6aFI4ELczPtZHdkpCH0X0/zBRy7jU9X36SrQaJwhaCNQv7lU0q1jFd9dVkihmVAD1/cZNIb4QlhursmpFhRaSNmJTlDj83dnWfqxn5y/BkqiqnTO7M+soTthd+vRrj95bFX3/nDU8bWEovRMDQGqqxnkNM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?76Zm/WqSzY4Ku5FZ0Rm2PNwQjfYShuyGeAFm8Gp403MS9vCfvWgipDsYfMQR?=
 =?us-ascii?Q?P6jhzvbfrKc3UDtlnFkAwNy3WBwWitMYVSTVVRqv6wv9woa8Q4nj9eZelcTK?=
 =?us-ascii?Q?uV36OPtNg/42mWPO7R6O1di78y1/Uwg5h8UGOkVvu7qU4Bew/u6l5clbWArB?=
 =?us-ascii?Q?mn8YX6b3TNj/kQtRCU2M6Vg1WHE3Ei6M2rHpR5xUVKpaahTHLPZugIq4qvK6?=
 =?us-ascii?Q?QC6OrrDKpEdupvWMGKWyZP9+VMNArXGM9J/MsIsOkB2u4TNJTUx3SvZcogHM?=
 =?us-ascii?Q?fKFn6+WqJagtKXituvFhj7uJF7yiiwetsoRy1l5z/Oa1AUg/qlsWuFEdnj+l?=
 =?us-ascii?Q?pA7bFye9H0YBNOD2jWAh0Q6ujPMqSx/SXuuYFXbBAtFKzLL+s1fsiA1jgZI2?=
 =?us-ascii?Q?3bGPrilbRUENlgdnSckCWd+Kyk162zax1BhsRWTm/qx/ekJbs44aXDbEmAL3?=
 =?us-ascii?Q?VHF7dn8QX4xOfFyKVR1/BZSN00MplQ5s5Rmj6DLoA4Vvk4v7/zBPiwrRt3ev?=
 =?us-ascii?Q?O38TMLHqdyKmE+RIMgVwa83v56YtcXUhLvUjaII/MesKc0IcxWw7byWkTXfg?=
 =?us-ascii?Q?co/iv5cMK0kUI5tTepz6a/cdKAlQxsJZZUVO44kBWF6H+k6pFpsnFSmKxSCW?=
 =?us-ascii?Q?oTHpcfSmf8UM6faLC1bOejnPQOUvxF9CGVYl3CGi27UzYXdrvI87CcSqsRlk?=
 =?us-ascii?Q?8Swh8Gs9IXZtj8IRNr2IRdX/RIUEFOLGEWYZZdMjGnj+CT0DdRcYdNksJ3vZ?=
 =?us-ascii?Q?tpaOC5vtBRo7CGSS/401gV9nHKXSHq+Jco6zVsJkj0mYpNyt8WKVUXzQscQE?=
 =?us-ascii?Q?Ga/mfK3vrR0pEPOC+JXdwf1oN911027PeF+pEtVt46QH0OIBV4UPP0uD6yAu?=
 =?us-ascii?Q?2PPZGxMD+aIvtEpxsanOO7k3ZNI+kjsd86HwjYZadqLXWDYEJCJzIDWpbMKW?=
 =?us-ascii?Q?Jm+RfsBTdZa/gBCUDLKR9xmSCtdz/8oiP0v7ihr89x4MH8sMhW3SUCG3zo8l?=
 =?us-ascii?Q?PZW6Bd+x21ZBxYymX6jRQzmZMKz0tggJ3ULMj484rrOq966M2wQiGquLNOdr?=
 =?us-ascii?Q?lcHmUvDZ0jmCGkeRGu4wpV+Kpz/082wAgS6dadV7zW/5V9jpJYD6HgqbXQG8?=
 =?us-ascii?Q?5WUeStCdh+mJ3iqG/4Es7mW7C7wqunlOTrHJzNs91r2u4SvyGDy6veQVy4Vn?=
 =?us-ascii?Q?cYu4Tsfcxm4cJrYqFscFFnIynnvEwCYCgXbtAtTKHRNobc3DfaVjEV4RUX0U?=
 =?us-ascii?Q?EZeO+40xNibkgvV1v76bNlFq2TUOlYalMOiKpr5PMCBB2hqUPocO5xccPbJQ?=
 =?us-ascii?Q?eFMQcfoOt2kmd+22ze/IEhTNGAZ9BU6Ky4ATSy7u/19YhltfWHePt8Iznid0?=
 =?us-ascii?Q?wk0iutuJaII1jfZvVDK8FPWcUSB062DUaugLWQ/S+bU9bEcDgo0OeTJCk5u9?=
 =?us-ascii?Q?/fYeg/V5z9pjSrpUQZLzRskz5ZivlIE7g5clTlblx75KDKBuoU/lL8GC2pNQ?=
 =?us-ascii?Q?N72w38JPTsX4/CQCNR17erQ5x+SN6IZ3rWhwUmB9a3/r3KRySwHBMQYAMDoR?=
 =?us-ascii?Q?S0mbzUy8P7E7oh+/UoUZEI6XD7fsHpgjdSe3PHjb5awKIsurG6a5JuoLpduc?=
 =?us-ascii?Q?KiVU/9zP4eq/CK/hQjfUbeu4qnwCrnEPMxBAC12wri1FRjg3DbAMqFPYaYqc?=
 =?us-ascii?Q?EimpAEvXMSWSH6mr+XyigZHT3ouDLMXl8UCdoWAJaXUgmCsiXaI/JTC3s45N?=
 =?us-ascii?Q?VLhlzBq2Mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65906e77-49ee-41a0-e60f-08de748d7e25
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:59.0476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: grN1b1yryuufCRoiZAVFX/fWSyZqJLVJbDkx2aflxXRWZJ/63JMv8l11xxHLZj9bFPP+5fIpyFOahqs8YnPn8Q==
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
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: ECB3819AED7
X-Rspamd-Action: no action

If getting/acking the device service IRQs fail, the short HPD handler
should bail out, falling back to a full connector detection as in case
of any AUX access failures during the HPD handling. Do this by
separating the getting/acking and handling steps of the IRQs.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 37 ++++++++++++++++---------
 1 file changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f7e91fc16b5dd..3db2fdc78c92b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5776,31 +5776,39 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
  * Return %true if a full connector reprobe is required due to a failure while
  * reading or acking the device service IRQs.
  */
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
-
-	if (!val)
 		return false;
 
-	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
+	if (!val)
 		return true;
 
-	if (val & DP_AUTOMATED_TEST_REQUEST)
+	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
+		return false;
+
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
 
 /*
@@ -5859,6 +5867,7 @@ static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
 	bool reprobe_needed = false;
+	u8 irq_mask;
 
 	intel_dp_test_reset(intel_dp);
 
@@ -5873,8 +5882,10 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
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
2.49.1


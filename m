Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yLDsLnFVVmpN3gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A22B7566D0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SGolx9SS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C3410EDC3;
	Tue, 14 Jul 2026 15:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D2710EDC5;
 Tue, 14 Jul 2026 15:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784042862; x=1815578862;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=o5D8mrvR8/eDUyRAAJNvk07lkLrUXzplwE508QRAtYw=;
 b=SGolx9SSQlW39vTcOsdd3z4tqiw9N1sxygFIcGiWpAPvEAUkEF/OFzN7
 zvbsLXNzJjEuIJSJVtMCrlxiOsT7as600yZ4y3lgrQnYfZbzZMbNEbiOg
 5WSSIEtnPrq+Ymuf6vLAK/Va8pUCPjo6I+5N03rFAOqd7r6l0bv78E8Z9
 PZUZylKynZAhEVOBbD1Y8YPKF9QoZEoPyTcYNj++cZZMKyzh7ONhQ//Ig
 ylPyM5VAVr+I5+V8S4qo5ykJSVZIQvx5X0Va1oX7RASB7lL+u3be7mzNB
 NshJpernSccXkIgXtczI1biqx+BsfXa9onJsAZOaapHTZ+QkUwsDXwrkD Q==;
X-CSE-ConnectionGUID: 9ZcG2aftSsSUPO4rH86XTg==
X-CSE-MsgGUID: mMte/MwERwKBN2DYSEXwTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="88345862"
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="88345862"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:42 -0700
X-CSE-ConnectionGUID: dFwpn674R3yxURX4pmckBw==
X-CSE-MsgGUID: KJ5kMtn0RfCCJFaAkDFwFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="249529850"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 08:27:41 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qsyhrF3+qe+tPK6oKUCRBQT/vv9hi3GDemSsYwfyUOrxjjqRKEVPF5NPJqu2F1p2Wr6wDQk3Dpz6SWDGSNdEWTbOkERGk0c6LduAlPQLc5AwyAGs5GMLQwegVePV/SfdQXjoRO+jx5gjv1KgwgTHlGTijTkoGVyzUrquG0su1CYK1Vc5Qi1VyjjSfGjUEe7g7iFBI2Gv+xp4+yqeRYI+jyxwtsw99Wsu/tibDzjvAmOzoXaB2zUI+W62sBlq62PlIIXKTjGFp8Edi3g2vu9F/emExuibmkGhbJHy2frff5u/RLRV3hFZDSYohY3J838yOp6H+pnpOR6a7tcT7Jen4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z3LETKtQclIP/K7j2PK0O2y3yQRh/89wuLm13CQxgpc=;
 b=sin44lFEnua+9ARnbzxpE8MXCXP3h4niQRrNr9SA/kAe7Fd4bIPZZJMPhODwy5OtR1Ux646KQ/7/MbCjDAnAiKZmmGc4byXdvA0n2ZGwVmMw107keonDZuYWnFdMP0G9PLUhQJH/9EVWzXaIH+fjsaPYAXC4zw9Oaz6UHtcKdxZH0eB74NTh0Bi699o99z48+zfKzoeTiEcOLMGvrkSworTKMKjexeJg2oKUzXqtKQhRFW3T9FdKM86gFAGuJnniGtnylLBRoUPdD9gN+FePLi4FZtXgzZRkjwEJ2EDT4me6JtHDT3j2rFgmyJAQCA5xBmPjd4huzoeVwJYNWZAhOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Tue, 14 Jul
 2026 15:27:36 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 15:27:36 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 4/6] drm/i915/dp: Remove UHBR dependency from SST fallback
 kunit test
Date: Tue, 14 Jul 2026 18:26:58 +0300
Message-ID: <20260714152700.555527-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260714152700.555527-1-imre.deak@intel.com>
References: <20260714152700.555527-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF00073CE8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1d1) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA0PR11MB7354:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cc96eca-9231-4123-91ea-08dee1bc6e63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|3023799007|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: lcs3DQpZuJ8rBeHzvwLUh4c/Lavo59GCR7pJiJRf4tzGsluXSF1FK67Sxx8S84ilHn6OvMCvWV9bRfmNb3Mzyrj3AFNSaGYrs+DtsUggoDSO+juuuYpXPkNgUIwKrMLetqrpFe+RTFAyZjfbb0l8Ca5ybTYkZAasDC4+zaNykZ4CrmA7y7bzYkQAHrLCC5FyTYtoMVWUiUJLP7l94FERy9h4ZhahLBFpdDMatIikkMv79TJAtVvIuySl7KhY/wDLXDto4iQJfZujbxrgW4BIlRrQS1jCLng7ICxTW+3lvR5mbXIY+uwR77XZ4WCpIwGtHVSmRnvSKN/tujEoaXs3GVHJ+u9592fRFeYouDqW0KmHuMX5XzBO9BdlD2xcawl3fbpacW6peDtgIBMGtOa9sGYgWDfmaZ6A2ogch4/1EnkyFkHzoidImR9vKGOA+FRnMgTB1Aol0OOPkoyxN/DbrjV2PRxky4574oWLruRvnT8FkmqYU1wyguTMSbDntPxHQOd+thcZAVLdYu6q3jVwS+lZIk035l6CpGhQ/F725WXqYDBwZCycEg1mlGI3rTTVvBy8UHXCZZmawz/r57LjC6p5LPhF7Rh4EjBNUr6fSgz7eNd2srJj8PAmNjUHKqaK+dbKA+Ux8IcOjINVErM1Y96PJmfxOHcEvqV1/HOXiVQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(3023799007)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?c6JzyGWfHpU8SkKxp+MXZhtrmW31oCwjUF4hq81sqDxbGqABitGng8Cdj/65?=
 =?us-ascii?Q?HYqhPq6/zT8LIBH/2IvO20qMUio5voQCaQ/PUFD9OIwwHjPenXLZ1goXMOXo?=
 =?us-ascii?Q?G7m+X53WRGeAbdqVLC/+qamU+ECo/r2eZBOUpoN7D9fH4cJfDGHelV0dz54Q?=
 =?us-ascii?Q?eS06Ect6jONUuXfUYCy+PUwNzWSbPGxvn4WI2jxyV+y8LMdb4ed3wcmVzFdn?=
 =?us-ascii?Q?J/QY+Dosruh3bLd7tpWhn4DhG1zLi68kJhCBvdeMySPxFJ43rIttcsf2df5P?=
 =?us-ascii?Q?RXiJVP15NVjT88CYNgXI42lznk1AjUfsBnDUNyzGaLH4PICqq7iklI7c69nE?=
 =?us-ascii?Q?yQ6qviqc2qaKOHz2S1IbY4LE9J4yiAUvusa7qxKgDx/sXmkeQgqXXgmPm1xD?=
 =?us-ascii?Q?vYiYVZN32tnun4xxFCvRqd1fw3b3z9udrxX1s8/KDuc+m2qUtuBZRPCKUn98?=
 =?us-ascii?Q?iVlaTnpZSBtWDAVQQ+6+w/o729T+2voc+qP4v9pym2CxODEwOy984Vs97Vga?=
 =?us-ascii?Q?Wd9GkwQD8dg4KPXz4vBF3pyou4MOANvcdyRK72QODucxu6fKTopr4PcdDMLo?=
 =?us-ascii?Q?2RQXKfPweSlIZBZXiWPPB9uJFO5jLaTrnxY9A4zr0VNSFSMufsrv3P7k/bHg?=
 =?us-ascii?Q?Wl7lJOKXPO/ds31agSA8nLwXwDURfdKO5Zt1H8fre9uUgYQ4F+LtuuArZLbN?=
 =?us-ascii?Q?69MPIQk0jc914H5cD1Xjxe/fGNv33cAkdpCAJtxX/ulfh1y3tBKoYZHdbDaz?=
 =?us-ascii?Q?D+l0G4GXIdJ4TaVpQACXk3ZQPzS+/YLG1brd9vJiu+TlawHI7Q27OTqtqgle?=
 =?us-ascii?Q?zj5ihxF0thtMqqaZYYR2SGZUIowHlo6ghR6soJ4RSRdF7pI1j/p6e0fgZyrU?=
 =?us-ascii?Q?z6eNWM1U5yPDQ4J5Lguu1aVIQBHF7fhjXNP482GoIRhVzQvHDxBwYJ6NsBTk?=
 =?us-ascii?Q?YBBTfy3zVrsZfNMmi71mopdUbRsxchuvuagJPcaJp5LdJdheET4pFWpNPN+c?=
 =?us-ascii?Q?LQFBEzn0rpWw4+98s5tEFMJNH/zXqzyoXcSjy+aD/cP6D4RheFW5UAvgkEXS?=
 =?us-ascii?Q?3Zy5J+Bu4BdjNSUPhnONM5X/0tax60gIqcbFlYrPup24ce10aBkJKeIpavIN?=
 =?us-ascii?Q?oL9wVhUqjwaphWTRF+96vntWN9CDnUsnsaqpwbe+3zE6bHs+Y6MSii1xB8cJ?=
 =?us-ascii?Q?IWy5hjl4yRc0Nk6ttPUo3S8EtOUxlZUs/XPVfpUjktOxEqdQrHVNCGpwabDn?=
 =?us-ascii?Q?gvwJz4UR2TSBI+ziuMMdeaRDaLBo4pJsG3hqvDsZTthE1Mpcj/oUfZAkTDmx?=
 =?us-ascii?Q?9/Q8vCQWsz5gxr3fvOosf06h/aWQnXLKS31KXV84McjmMrrFyZXrHFBSQBcm?=
 =?us-ascii?Q?6sBa2gbF1wupYEJdeKwYA9CY7NM1VtVUBMCg7zqOk5DN7Wy9dc12FK0j3vls?=
 =?us-ascii?Q?HUYxO32F4jRlB6CDN193wHFOz564qbdg5wgK1VfgSZGdiCkh49F/iQf3DdRK?=
 =?us-ascii?Q?7poN1UiCYu4sIlDmutonYeGfgFVA9ovFn19IUJxaOxFCjOy4PKJFaA4Gc0HA?=
 =?us-ascii?Q?Cc2B7AwldQTkR0BD6ID07X/FF1n1aj2i7Xg0F3i61sUwxykWP4gfM7rhqQq7?=
 =?us-ascii?Q?tTF2reO3WdIMOqd5kMLpP+Znc1eygxeF/jGSlzN6rgSKsrnRixHzdrhBjTrt?=
 =?us-ascii?Q?UdQRG3ZGodKfBteuc7Z5eDDvRGRDL9qzp6bMlqHVDxRrmJsKXOCDgDt931Fb?=
 =?us-ascii?Q?35OPbB46TQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: eBrFJ3v7nAQDSuP1mEWRzlwZuZ6xQgmvfCzGnuFWQKNorKHcTU2M0jKq/RfBVMV0krAie/BosLRmJYFCuMo5juy75I1CNSIdUX4DA/flMAzOYH6lfSINvSPryE3OYXSbAKeQNMVl/lsp5vZ3ZmUdjv0qkNseWPcg9k4pyfxwZbGEWYTxj6rY04EcYRMWlHun+Wmf5SGnNF/coyteVo1e/K25DhBTXhIjuiWZZEVd5SxufzjY86gFGsSq5BtJV1eGUehy/RMBQfn4KXqf0jHPOYkK6HwA6alLAvMqdygPMMV9IQ++afORYxA82zihXO055WKJeG6K1BUlUufPj+KpfQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cc96eca-9231-4123-91ea-08dee1bc6e63
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 15:27:36.0580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z+Ou8bMCnZACXM+0JbtQu1s5qlLE98Gc4CoUQVcNUDD+w9I+7pmu0LwV1EbACfS6KC+SZZ0QjjaJ5mzxo5duvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A22B7566D0

After fallback between UHBR and non-UHBR link rates got enabled in a
previous change, there is no need to test fallback sequences for UHBR
and non-UHBR rates separately. Make the test simply start from the
maximum (UHBR) rate.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/tests/intel_dp_link_test.c   | 47 +++++--------------
 1 file changed, 12 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index 776d93f333851..67c6fe9f1812a 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -1101,7 +1101,7 @@ static void intel_dp_link_test_fallback_for_edp(struct kunit *test)
 }
 
 static bool test_fallback_from_target(struct test_config_table *expected_table,
-				      enum intel_output_type output_type, int max_rate,
+				      enum intel_output_type output_type,
 				      const struct intel_dp_link_config *expected_target_config,
 				      const struct intel_dp_link_config *expected_fallback_config)
 {
@@ -1123,8 +1123,7 @@ static bool test_fallback_from_target(struct test_config_table *expected_table,
 	/* Get the max connector config, optionally filtered to the max_rate limit. */
 	lc_ops->iter_start(&iter, link_caps, fallback_order, INTEL_DP_LINK_CAPS_FILTER_ALL);
 	for_each_dp_link_config(&iter, &iter_config)
-		if (max_rate == 0 || iter_config.rate <= max_rate)
-			break;
+		break;
 	lc_ops->iter_end(&iter);
 
 	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config,
@@ -1236,7 +1235,6 @@ static bool get_fallback_config(const struct test_config_table *expected_table,
 
 static bool get_target_config(const struct test_config_table *expected_table,
 			      enum intel_output_type output_type,
-			      int max_rate,
 			      struct intel_dp_link_config *target)
 {
 	struct kunit *test = expected_table->test;
@@ -1248,20 +1246,17 @@ static bool get_target_config(const struct test_config_table *expected_table,
 		const struct intel_dp_link_config *config =
 			&config_set->entries[i];
 
-		if (config->rate <= max_rate) {
-			assert_config_is_supported(expected_table, config);
-			*target = *config;
+		assert_config_is_supported(expected_table, config);
+		*target = *config;
 
-			return true;
-		}
+		return true;
 	}
 
 	return false;
 }
 
 static void test_fallback_seq(struct kunit *test,
-			      enum intel_output_type output_type,
-			      bool uhbr)
+			      enum intel_output_type output_type)
 {
 	struct test_ctx *ctx = test->priv;
 	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
@@ -1273,12 +1268,6 @@ static void test_fallback_seq(struct kunit *test,
 	struct intel_dp_link_config target_config;
 	int fallback_count = 0;
 	bool target_found;
-	int max_rate;
-
-	if (uhbr)
-		max_rate = expected_table.rates.entries[expected_table.rates.size - 1];
-	else
-		max_rate = 810000;
 
 	dig_port->base.type = output_type;
 	ctx->dev.dig_port.dp.use_max_params = false;
@@ -1287,7 +1276,7 @@ static void test_fallback_seq(struct kunit *test,
 
 	/* Get the initial target config. */
 	target_found = get_target_config(&expected_table, output_type,
-					 max_rate, &target_config);
+					 &target_config);
 	KUNIT_ASSERT_TRUE(test, target_found);
 
 	for (;;) {
@@ -1296,16 +1285,10 @@ static void test_fallback_seq(struct kunit *test,
 					 &target_config, &fallback_config))
 			fallback_config = INTEL_DP_LINK_CONFIG_NULL;
 
-		if (!test_fallback_from_target(&expected_table, output_type, max_rate,
+		if (!test_fallback_from_target(&expected_table, output_type,
 					       &target_config, &fallback_config))
 			break;
 
-		/*
-		 * The fallback changed the max rate allowed for the next
-		 * target.
-		 */
-		max_rate = fallback_config.rate;
-
 		/* Simply select the fallback config as the next target. */
 		target_config = fallback_config;
 
@@ -1314,14 +1297,9 @@ static void test_fallback_seq(struct kunit *test,
 	}
 }
 
-static void intel_dp_link_test_fallback_for_sst_max_non_uhbr(struct kunit *test)
+static void intel_dp_link_test_fallback_for_sst(struct kunit *test)
 {
-	test_fallback_seq(test, INTEL_OUTPUT_DP, false);
-}
-
-static void intel_dp_link_test_fallback_for_sst_max_uhbr(struct kunit *test)
-{
-	test_fallback_seq(test, INTEL_OUTPUT_DP, true);
+	test_fallback_seq(test, INTEL_OUTPUT_DP);
 }
 
 static void intel_dp_link_test_fallback_for_mst(struct kunit *test)
@@ -1330,7 +1308,7 @@ static void intel_dp_link_test_fallback_for_mst(struct kunit *test)
 
 	ctx->dev.connector.mst.dp = &ctx->dev.dig_port.dp;
 
-	test_fallback_seq(test, INTEL_OUTPUT_DP_MST, true);
+	test_fallback_seq(test, INTEL_OUTPUT_DP_MST);
 }
 
 static struct kunit_case intel_dp_link_test_cases[] = {
@@ -1352,8 +1330,7 @@ static struct kunit_case intel_dp_link_test_cases[] = {
 	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_disable_random),
 
 	KUNIT_CASE(intel_dp_link_test_fallback_for_edp),
-	KUNIT_CASE(intel_dp_link_test_fallback_for_sst_max_non_uhbr),
-	KUNIT_CASE(intel_dp_link_test_fallback_for_sst_max_uhbr),
+	KUNIT_CASE(intel_dp_link_test_fallback_for_sst),
 	KUNIT_CASE(intel_dp_link_test_fallback_for_mst),
 
 	{}
-- 
2.49.1


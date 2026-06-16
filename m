Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id grgcN3ytMWodpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEDF69513C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="QfK/WxBt";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10FF910ED02;
	Tue, 16 Jun 2026 20:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5ACC10EB37;
 Tue, 16 Jun 2026 20:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640568; x=1813176568;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=2zrVi6nQx10BYpztsOS20DvkXm28JqDt8klQbu5W+sg=;
 b=QfK/WxBtqPgSyKAA51iAMrEzYNSZqzXSQ23xbmFOcBuYCrmWIgzFh0ND
 zyiuUx6Bj57mwVriGPtwP30mRg46s9wxF/0N5evRfsvY3Cw9RPPafCnYa
 E1Kt1gOkTRs9drHuhizc7mpnPBF4GZupXWje7xpbbm1si/9LCwFqk9Rn/
 +VTJOawXQyGhvr3Bkvejfju24IypI4G+9zJ8kWfaUWSh7kmiIuxtn9GuL
 GM3E5yTuiRvf4uluXIM6mdeHnY6TZDhgx917I0lt78ZMlq9WI4CN06Enm
 JMqqHJuLsUM3KcEFdklGtGmMfpQziU7OP7y5lC5AxLhwosf+R4jAdloxc Q==;
X-CSE-ConnectionGUID: MEk4vhxsTMODyaKYinlnLQ==
X-CSE-MsgGUID: UzFeUohuT2WU9nVqd8p0hQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81427269"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81427269"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:28 -0700
X-CSE-ConnectionGUID: 77lXnMy9Qj2y5/cPoxSteQ==
X-CSE-MsgGUID: SXEPI4i4S8SZ9IcuRVE9iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="251786202"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:27 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:27 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:27 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.35) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FnBkMxc94GiUIE8J9F0VlmcAVNgVkvSFArJ6iA99APnJFclvci678CgO2ElLTUwHMHVyJTZUX2Bu4XsJt1t1q1EjUMuH+9kw5nFY7MOfNbl3od7HgZ/ZbJwbcKGNO+ECCihHu/BTDVKvOrRF2ZGuVO4v0s8vrYg0QJdEwyTYG43v9Cph7UL1bly1nIZZTyaIDMlxe2FBeQrki4iAIQGluwnVq3vMcKFz7pSxBGXzyqu2YPzri/hIRTXBhbgx+/HOSykmVVGfrxzCm1ARFskCuG8jebcekF9bmGDZkNEepyUc/aTHhzXAZRdvsSxNHDLj2nhw5PckA9xGG1UhpAVwRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8GRow6xZQk5/b/Yg6+0NdLOQwjV3h8aBIrwcV6OAocI=;
 b=KOoE1joAgmZL6Szzt+g1g44gXFgc/3X1O2tgepRRULa8F3P6asbkcFpW5qaFKGAiWRqVLsAhEZi2rfi+8O5lYY8gypS1kMiZUA+fRBtVSooqrE0pk39CInrtQWtjmPooBeicU9ODshGLrbj/UrnPhMDwE1dsO1YltWIahkwyQilcvqkdvlT3QDLaNukK56m/WgNhrhQowCaS33uRh2wtG5p6g83zMspWg0NzzP6mgPZWPc/f7jjqs6SsWwvZCYHubQy1zj8Qvd1OgfGcbtfEs6bgo5XXPBkSDu2S5TdZtUsjwhuyzyFhZ8HvaQhXlRUkitSC8XXgTsu7zx7HwtJGuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:24 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 05/28] drm/i915/dp_link_caps: Move forced link param
 helpers to link caps
Date: Tue, 16 Jun 2026 23:08:25 +0300
Message-ID: <20260616200849.3534628-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: f59636c0-5f6e-4fdf-4b3f-08decbe32936
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: oC+Y+ltUegHJFolEO7gSex0WttCj2+WVZ/qYDt3mV8ur/z4LtrzaNgO4RyN4gkWaibs17jSuTDNip36B1RSkRXNCkx5UGL9ZHNFFyHTOidkgGf7j7GLX7uNPgTe5PnoLEIZO4d+psN5F7ny/EFQxbJ9uQiZkdLbK0h7ozT8Si4pMWMyKm2ck0/IfkmT9fwTbGreSWl6rTmXneprZsb9i0rRQnBlbcDPAqZ8tqYRa/c9ynTzovuv/xlA+TDI3Q5D2fZDfZwF7Cxzp8T8BsC1qJ7TZBbSYunkpdUsDEYCKLEiUTfWJRM0NP7ZPV8L0Vsss7wByHdRc+V2YypOo2PLoQ9FYZ5Zq4LREx7MqXtGIWt4MVTY6HW8sbF5KBOkfSjT3mWM0+iNcT+Y0GZEL7vxaX7Wl9Enqvq+oQMnuemonB4PtFMO+XoLuz1STH3huFLqiSQ8q3v/94wAln61EkEzU5PFy9xDPGWx5WrgBeikw2Vp24BI7vJa8CU1VvYmJJ/ACIM3dJxKvSgLzsKxFSfewQ4Q6EwTBQo0K5NHS2fcbk+osWwsR1VvSaaa8WHEQXNSTxQT9JnuNwFs/mB7+0/+/mkjp7Sc3SlAC4wKF4tMnJjWUPZUjReOWrqEifVryLobWwGL+25MRLKyY6vMnkZ57GS9LwmQxSkfAauBp4q5+C36kFlFlzeUYdxSKM0wos1ND
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4w5EL0G0aocZZYq9KzQAsPWg17LZsyEqH7JyoCm6WUREpqvr5yrY2S11pHrr?=
 =?us-ascii?Q?Jxp4MgOTAB9Mee2M4bXHRY1wA0sTRis3yQ8C1CNBgQnMppEt8PNL4zvaRSCh?=
 =?us-ascii?Q?/C3g+XrlWRtldrHy6T0nFzV68bbtAu7p0SRM2vuSZPTpUhvazqLWd+DIB112?=
 =?us-ascii?Q?c11lrpCdpXdzISW0f1IbPMwyxOjTSZL0zPHXgW3uXImsHFx3iOCOQPVwOuoC?=
 =?us-ascii?Q?Zv3c+inESe+uSQuiNXakPFAXh8X+mJd5M9qILvsIBgPda+O3WEu6kMO6qJjo?=
 =?us-ascii?Q?qdu0RMOugOynS57pfiKkvZUAHYg2a/SGZa7AjLUW8vYQzzSG3g5r3PTxkZsZ?=
 =?us-ascii?Q?3XkIvYRTZ9XoVTYtbClnz3bMC5a7ssNAENW/IQAUrJbUifVaO1RCBLI61xIK?=
 =?us-ascii?Q?H1w6hn5uBBM/JAvxjAURjuTf0JDTlRyoifQI+3aU/YabEwx+OepjsosSLLYJ?=
 =?us-ascii?Q?KeBOtcfV4fJvJCAZXZ74TGz428nOvNdTneFVw9Pak80bnyPXWOmw+5WKs7Dt?=
 =?us-ascii?Q?3dJqvrEyfTVRGgZSx11oW1K/5trbQbiiA95i/1+Ndbk86SA6cIS5dsLV/Zg2?=
 =?us-ascii?Q?Qbl9sUqLs2CDxDnLAFcP+4aBL7+O3dL+aMOIQiBUqsU+xKHwE5tM5oNoHeiR?=
 =?us-ascii?Q?L0EOziphgXWs8p3VJLdPzWUMnEsDJ5QhZu5mO6fJztvnohday9p97t4OpDq7?=
 =?us-ascii?Q?dDiAUxNhRr2ZsgG4nOa+Vzc0J1UkDppvUfA57IXBM/JLd5i2L5CqdKjzeHQ1?=
 =?us-ascii?Q?VeUb9mFqr7Yw53FjyrLAj9aIl6gx9iuePOjFQTJC6T//MXi44PHlpXEPxS/m?=
 =?us-ascii?Q?obkFnEnm86Xfb4jODu83lPPgbnafA1Ria2cwqXznwLK8yMwUP7Lge07s0RaY?=
 =?us-ascii?Q?uT/YHV/SW/xxS2erNyKOC26h2JsBBMmlavQdceQtgJg2TWxKV1dxafBfVwGm?=
 =?us-ascii?Q?rMDWRMfQWJ1WcoQUPrqjsqgV9pvp1JNFkRXFihN8GyKbEH0dU6ryoJ2yMsgk?=
 =?us-ascii?Q?FeQ4CtCKFamATgLD/5eNxCUmzFSQbQ9g+Xa5H9/NM0tkWFRBducNp5MVAOBm?=
 =?us-ascii?Q?Chb2KRx0eeXP2t6rRLs2MnscMCB0KaUlsdXkEch0tfhNeVTckXXHr9HX/n31?=
 =?us-ascii?Q?ZaCPK71gAuxuKtH6EvW2TwebpQPz3N6Gz3FDA0zkkvyDAk/hh0MIsBSDxvVe?=
 =?us-ascii?Q?0fIluJWiHy4Z4W7ToYl11LIEorC2C6Tn3NXDFAJpeYCP//GeqVbjYZQ112c3?=
 =?us-ascii?Q?tp1JQgIqsAF1OSBNM8mJ31zUux9BVRF7rcPpuake9upOR9ADI37Sw7OjhwB6?=
 =?us-ascii?Q?7X3Qw8EN9SDif80UGKZIp26oE6CJiTNdeQr0CLkFUitevbhTM6TaXIje99A7?=
 =?us-ascii?Q?iVDtI4fdn6s3u1vHUfln6pjiI7g56ebfB7B0w1yCN1jTUvkfH2/Cjnc6DCzP?=
 =?us-ascii?Q?CNUjTW1965lEN75c2OzabcB9ZC94U8c8B5BHJG9JjSfE98RnAf6/dlh9miyl?=
 =?us-ascii?Q?7ffwqGJnXfIVLBK4r8xA3fYF3MVj/lhhGFAga2ZBpc4MR8gxEyeIIC9Jcy6n?=
 =?us-ascii?Q?REgUFPV0WmVkMDTxpz7ixd+HVPlijSfWQgUkPCDA/Rf3cR2U5tc2nId613uk?=
 =?us-ascii?Q?COB1aWHg8K4HGf3qpOGESXM7G/kAlaz0IJ+IBuDkafnxyufq8tApTSstzvYZ?=
 =?us-ascii?Q?4D5Gs1oNHK0fxTAXB67aTAhlZF9NRlBUbVyjRZe0DOloZWE7PM+3IrRiWWSv?=
 =?us-ascii?Q?l3TykkPA9w=3D=3D?=
X-Exchange-RoutingPolicyChecked: me32x2e3sAtq3leimeUE/yXoJ2/whzMtKnBLhAQ8DrkBlW7wYn1afThhHHNoyALeCvv+uzAZbiQFgLG5u7WNAD2ixR0AiAhmdJnVqH2z/XkUTuT+pUXuAgz3hrGTyeSweg0J7GDlmqq5Y+u2AIuPL/Yb5WQ6nVrlxdz/oXQPik+uWgFXrSa4A1s46ZoLwRHKtLm9h7IX4F6EqGzXidvsVMDjVs+upxwMAUyZsb0hPKv6wLg7gntH0VEY3xE2ZK8Wiyao9SB1AxIbIE+YwuTkSieqh4VFVf25fjYpjwJV+PQ4Cqws/WeswChCSxjVzKiGH50S4Nly8SoYufOyQyobYw==
X-MS-Exchange-CrossTenant-Network-Message-Id: f59636c0-5f6e-4fdf-4b3f-08decbe32936
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:24.6566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XUEbm4Uqaf1YqnhedYK5cTPXTSkj5wGmT8mzRhYrzvosLay4ZlUGMrsLNFV0/4hICoRcJ/0Y96fBl8uDt/cSNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8AEDF69513C

Move the helpers handling forced link parameters to intel_dp_link_caps.c.
Their functionality is part of the link capability logic and will be
updated to use the link capability state in follow-up changes.

Return the forced link rate and lane count through a
struct intel_dp_link_config, which is the canonical way the rest of the
link capability API will also accept and return link configurations.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 39 ++++++++++---------
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 22 +++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 +++
 3 files changed, 47 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a34d3704a5667..7643fe079e15b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -364,17 +364,16 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	return intel_dp->max_common_lane_count;
 }
 
-static int forced_lane_count(struct intel_dp *intel_dp)
-{
-	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
-}
-
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config forced_params;
 	int lane_count;
 
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+
 	if (intel_dp->link.force_lane_count)
-		lane_count = forced_lane_count(intel_dp);
+		lane_count = forced_params.lane_count;
 	else
 		lane_count = intel_dp->link.max_lane_count;
 
@@ -391,8 +390,12 @@ int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 
 static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_config forced_params;
+
+	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
+
 	if (intel_dp->link.force_lane_count)
-		return forced_lane_count(intel_dp);
+		return forced_params.lane_count;
 
 	return 1;
 }
@@ -1655,23 +1658,17 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
 
-static int forced_link_rate(struct intel_dp *intel_dp)
-{
-	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
-
-	if (len == 0)
-		return intel_dp_common_rate(intel_dp, 0);
-
-	return intel_dp_common_rate(intel_dp, len - 1);
-}
-
 int
 intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config forced_params;
 	int len;
 
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+
 	if (intel_dp->link.force_rate)
-		return forced_link_rate(intel_dp);
+		return forced_params.rate;
 
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
 
@@ -1681,8 +1678,12 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 static int
 intel_dp_min_link_rate(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_config forced_params;
+
+	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
+
 	if (intel_dp->link.force_rate)
-		return forced_link_rate(intel_dp);
+		return forced_params.rate;
 
 	return intel_dp_common_rate(intel_dp, 0);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 37ffd714c6a42..1d3a3ff007a03 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -41,6 +41,28 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
 }
 
+static int forced_lane_count(struct intel_dp *intel_dp)
+{
+	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
+}
+
+static int forced_link_rate(struct intel_dp *intel_dp)
+{
+	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
+
+	if (len == 0)
+		return intel_dp_common_rate(intel_dp, 0);
+
+	return intel_dp_common_rate(intel_dp, len - 1);
+}
+
+void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
+					  struct intel_dp_link_config *forced_params)
+{
+	forced_params->rate = forced_link_rate(link_caps->dp);
+	forced_params->lane_count = forced_lane_count(link_caps->dp);
+}
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 3248777d1287f..61dbce86ee3d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -5,12 +5,17 @@
 #define __INTEL_DP_LINK_CAPS_H__
 
 struct intel_dp;
+struct intel_dp_link_caps;
+struct intel_dp_link_config;
 
 int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 
+void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
+					  struct intel_dp_link_config *forced_params);
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
 void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
 
-- 
2.49.1


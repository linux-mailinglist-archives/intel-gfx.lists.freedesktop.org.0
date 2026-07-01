Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wCmbB0gzRWpq8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB15D6EF4A6
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FdJ0CYsq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1981C10EFD1;
	Wed,  1 Jul 2026 15:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6331F10EFCB;
 Wed,  1 Jul 2026 15:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782920004; x=1814456004;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=PeFye22FZWp8TS2bqURAb1L84fVut8AgTIEubkNVDxM=;
 b=FdJ0CYsqyDwZwPR1FARXp3KYbZfcPi5cnwWdyeHlN2LfUVkqJtiH2wtt
 cdGb/m9AE7HF7jSQXXoBXAj/khz53PsJti9NEnJ0ZuYhvQFJ6/qfqg4M2
 G4u5DzSwhxuwwZ6n9AoTbgqtoDDoamR5pNqr9/f3dAAfcTu7ic6E6J6X+
 Gh0wOsRzpEAExeoB6RMWnsTrs0ero4weNDWKbEd1Qp+uigJL5u87FoYTO
 VxmcrLhVkXIFTEGNsspekD7JccmNRk6PjhMxwaqcbjmeJbf8VvJSOn0AX
 H8V9xv/B+t6GXu2YJ/lId+yMybnnNf1zu3Vmx2ad1RO0qhSQI/sjAiTpY A==;
X-CSE-ConnectionGUID: ypQ/3AgtR1+rr2VZ/Vg1wA==
X-CSE-MsgGUID: lLvIqcnxQJuUoqBWCoX81w==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310165"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310165"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:24 -0700
X-CSE-ConnectionGUID: VR+cpmvfTjqUPa1HMnBKzQ==
X-CSE-MsgGUID: VJCGrdDwSQCZ0xV9PZIbVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515717"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:23 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L9hzyvimxAXioEHdrUuOfaWnxduYsisWikVuhmmpRHpcQ1nQSsbpcc7hgVlDorH1EOlO0UK3L/zT+lsLrd936XXq6Ois8T2ylYoVh992lA01gdh6XkMfbMMUZwL2pZDls4z3sRUCEPUFvvmgcEZ2j+PSvK69jdGee+lxqrMXFjKMzTolQsFnUH+l1RTj4/9z6PiUKSKP0Hvso6q6Pf8OPl1lcEJQdIrsT258WKZ4ep0904jPkrU8imPmanu/s5Rmk/PXtNp7PlJhsLMR/f953XqW/frUo6adeebaoH+zqbwbiwvRROe6o2ercbzxblrbmdO5+D+RJg7eVzvYXcB+VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2nmRNxVkGxXap82ILulhHM98KeFqP1pjgPpY5aivfe0=;
 b=j6EzobfH7uFF4wZBwX/JUDwMyFjta2lbqBrcX7SZAWq/f4ZwalbDazZ/PlmwLtIucamMhWoX7NUIBRuwcf3dkL465Lo84/iCZM+chd1qQM7GyFetdlnKU+dmct3SzTwbvpo62Cy1Y0w1aNmOWTfdj2poJ9wgkGzCwAq7RO4PLh262QG7rw4GcQtLscL3wrTdtiUC1mzK2tP6ishPoalT6YgFD8Z4rYSykGG+cZYc8CmXa1l/GFshwGaHF9DxZ5rtSbYCe7lIzXKyLaAVp2NylHhkTpJj/h9HugiJQR4EH5xP6QSHiErgXSFpOEvRgsL5d5UfP9I9YUs8y4RYeqBYlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:11 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:11 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 26/34] drm/i915/kunit: Enable KUnit tests
Date: Wed, 1 Jul 2026 18:31:55 +0300
Message-ID: <20260701153204.4124150-27-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CY8PR11MB7826:EE_
X-MS-Office365-Filtering-Correlation-Id: 064fdc40-0411-465f-6b69-08ded7860e59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: auP6Y15KLOFYuMeVWsnvF6QddSnWTo6zGFViaf5bgQjE2BGyA70aEwnKzNl/GyiaB8t31MxF3j0WGzLboWo2gTFvBaO1jC/RagPLj8Ug7p/NYsRfIr+Rs1vip+0Bcw66PKg5v86Uu33ElFtFzoE66irEbBCORKnKr9L1z02mtyX+iZWC9rC14j5dtrth0pFhVTUyl1aGKzvQHPACzk9IilTK12HT3vKKPRZu0tl5na7ZF0WdBHNN6xjQajYv37tPipMD17xpBbcARiSJXs9xphxu8tgano4oj3OCHSdXdygO27HdFsgiD9CbwRp3L+ni7GMnkkWeQYCxoSVDwbv4e/BLsfslLA+33cKXU8Q4mCfQPfu9NRNouahOm97Cw+IVKDI1zPNIdqovJUow5egY4PQj+vaRIbzFfObznFU7tJu4uwv5QNzYH8zuK7HTCKcDbpH68/VL05jlzKhtfjnnR7h8XocI++CXtSZ5iKNMlsMR/BeWr/DFx0jahxVTOHr3yjpaVURB357ClS0CpPvLaluvOLeIzzDoKr0jqu0Y7Q7qL8nIth5agd4fn7Q5hSvmV+3F1GQtWLyU1Vy3T/za9irgY7O0YdrFahbPidGagfSqLH5H/d3Fr0OgzjQnD4uQGqJB7BDdDbdfb+iiSMRlm1YOgFPJmpI+TkNSouh2P5E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bY6n/T2xWmgFHFBngIxHpYstCsk5/YxGwWxiYdSlH5jCGRz9+23jbfR/A6td?=
 =?us-ascii?Q?tWcqlNam7xnbPpHmhFaa+aFH+LJYJ5Hsx8/FIE6bzhjtR+WvfLRKhW0w8PPv?=
 =?us-ascii?Q?kb2XXF/pvC42mJKj6yTFw14fte0edKXkl7XqIYsl1am1Qg2qSwwYZVWDngHp?=
 =?us-ascii?Q?8QT7lhV/u8i5eUW1f/tZ4U0iSaaB2TzLF6DdhnK3J29gNe8ePJa53zMEF5Rb?=
 =?us-ascii?Q?/MJ+HxxMEFZOwfJ+CK4KtkIV5BRKrSeJIzguFu+1IBvQ8QYsFL4JmNmryQje?=
 =?us-ascii?Q?m6CSC7H64bQvyHChmkK4x05khSLHhUmiMB8xfiA0ZFCY9w4O1y25nHzr4vjV?=
 =?us-ascii?Q?mYDosCJXHlUUPCYka6m3F7ye1kMBQdl7Cdf2MYD7WWa9Q8pUysdONkZ2hNzr?=
 =?us-ascii?Q?37Tl8x/it/cCmyDYFcgMYJFz6xsOdtC6uNydmQGyLRrEbiDdRA6hI7xbx86B?=
 =?us-ascii?Q?bRxfrCD0/11tO53HEAdFAQy6UzDoMtELdP0fgr4qxBwl6VBv1tM3nCrGTxRW?=
 =?us-ascii?Q?igQbUGgzfJTNvbKy0SxS0we+hjbX6JSk6tus9ehGkr9SR81I24URHkRqrEbf?=
 =?us-ascii?Q?1eunqoXQEScBJCjVQN4/Lio29VZmBgj3suc6o3HMX29OQi6edstoMhdn6Lo9?=
 =?us-ascii?Q?eXqy+r3nKL5CqSGkTMpwfuNGTjkz4pu3CkRUV/ts/PUNEZYEJjGjwn3frc49?=
 =?us-ascii?Q?QD5bcx4W6Q/i0aXFVJO9sywDN1LJb3HmDPDYZ7jJ7BmVclmZfBgaSxsDUM78?=
 =?us-ascii?Q?epTGiah4ETlpJfE7POsg79cFfl8Pobuk/Igh82tB00iqhqW8yz+nzNhm22gI?=
 =?us-ascii?Q?DE3LqBjSwCts9q7RKYM1u9NtS4sj7Rv6Q9EHDDlaXCa+fqY+ed3DSOwR9sxY?=
 =?us-ascii?Q?RCCEU6TZnB0PFdFj7irySFwK1+hrZDC6opBCQWyB9Hg8Hx06vs1wpPY1UXbz?=
 =?us-ascii?Q?ClRukzOglmz6Z9Ru/unaG7oEzG4nBFM2jAD3wr/isDbSAJcvXd4nNmiU+473?=
 =?us-ascii?Q?wtO9aqm+TMkUNNUXI9Eo7A5Ogzw5JaCAFX88wDtJInF4e+l+UD11eYQbVmNY?=
 =?us-ascii?Q?SfV8fSVbJljGcQmTHRZbwMGinTPKn+30D1yRX37tqPIhKpyuBI/A1Cia59Ft?=
 =?us-ascii?Q?xoptUOyHnPoym4UxlECVtje3m1Amwhbtlcqdt/u1SyMEnHBKn22niVSZwHaH?=
 =?us-ascii?Q?lF+/XK9TxFLA7k5nxKbleC6UYPhVx9hrO3fDdzhYxRzFdk/vEDbn3M5B/fR9?=
 =?us-ascii?Q?+kp1zZtMfBLacAEqPk/c5Lndsj8xPuaGWJ/awm9igqpHYUv0LhIGRzwb9E9Y?=
 =?us-ascii?Q?o6nUJJ0v48qAOJ257sM+BCCb+zKp0K+qs3+XXAfoSb5tPuW8CYYFLdTXvBKM?=
 =?us-ascii?Q?MMGaImDnCVzDoeto8f+Zs1XJc1RAmJP+2RgECGOT41ICXfrw2ReyN9op/nge?=
 =?us-ascii?Q?b3SZJhR3thVq/8ugxJvoJ3hu2wEZI0kPf72Fy5z4ogV0DiKRk0RacyvYhtCY?=
 =?us-ascii?Q?Eei2UhK3idRoPxl23zX5cc1wq4HmBXRF/0NClTPUbzmySW71ON9x+2qtQ2WF?=
 =?us-ascii?Q?IgdQ0Fcvo3hGRdR4C3ubt88E/hDCv4XwLBdxnfRsZoGqLfnaAwvNOHbIbUjj?=
 =?us-ascii?Q?hs+3ltCqkUC4OUDJtYl3UcurYN3Lx3ssLeIWfGPf+iYOQj0093sU6lK+V/6n?=
 =?us-ascii?Q?DQkyoj3+U/GrAd9jef0qylpmkLTd9+VazZ3P48kJa1n1fTEhDiBkKo4IjglK?=
 =?us-ascii?Q?IIahVERCcw=3D=3D?=
X-Exchange-RoutingPolicyChecked: AEywh6jO9ISFdNwWpWYNG2MHRtSTePve4BujLzZy4GFQAFe9OeXKBOOAtYHVGjAnRSNq28T6sOGOQju5Ow474d7gG8zGot+koYxqNTPiNMQE9xDCgQZjvuxztFZts5WtqI++cjQfUN1w0GpBRdU6j8lLhfFcLCcWEKEy4Y07N1/rIA+V/5MY2FALrCL3HwWYRAQ+Q+LP/VfxmA2cFvLTkRuq0bP6+62XGf5JJllOxDLD6lu8M8TdBatlyKTiKUBUmegYjtI3TiDTi37HoSs6jVBWqtJFpWmsB9s4/4X2DMLkfW1RzdRhj07XXztscefFGoRwMiBXqBWlwqNpLligIQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 064fdc40-0411-465f-6b69-08ded7860e59
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:10.1442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3ALfWi9ImazsIMpz8eY+fhcb/4+Kqz6O6oKcxPlzaoVCxiz1hpWuUJPPWUxPyBGPD1r/z7BmwI8CLk3gkmYB/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7826
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB15D6EF4A6

Add KUnit configuration for i915 and a local .kunitconfig to run the
tests.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/.kunitconfig  | 12 ++++++++++++
 drivers/gpu/drm/i915/Kconfig.debug | 12 ++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/.kunitconfig

diff --git a/drivers/gpu/drm/i915/.kunitconfig b/drivers/gpu/drm/i915/.kunitconfig
new file mode 100644
index 0000000000000..70e55432bad64
--- /dev/null
+++ b/drivers/gpu/drm/i915/.kunitconfig
@@ -0,0 +1,12 @@
+CONFIG_EXPERT=y
+CONFIG_MODULES=y
+CONFIG_KUNIT=y
+CONFIG_PCI=y
+CONFIG_DEBUG_FS=y
+CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_KERNEL=y
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT=y
+CONFIG_DRM=y
+CONFIG_DRM_I915=y
+CONFIG_DRM_I915_KUNIT_TEST=y
diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 52a3a59b4ba2c..dc43dcfbadb6e 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -220,6 +220,18 @@ config DRM_I915_SELFTEST_BROKEN
 
 	  If in doubt, say "N".
 
+config DRM_I915_KUNIT_TEST
+	tristate "KUnit tests for the drm i915 driver" if !KUNIT_ALL_TESTS
+	depends on DRM_I915 && KUNIT && DEBUG_FS
+	default KUNIT_ALL_TESTS
+	help
+	  Choose this option to allow the driver to perform selftests under
+	  the kunit framework
+
+	  Recommended for driver developers only.
+
+	  If in doubt, say "N".
+
 config DRM_I915_LOW_LEVEL_TRACEPOINTS
 	bool "Enable low level request tracing events"
 	depends on DRM_I915
-- 
2.49.1


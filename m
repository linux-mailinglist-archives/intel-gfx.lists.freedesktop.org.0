Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIjbGtSt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6384852A5
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F05010EBCE;
	Tue, 28 Apr 2026 12:53:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O4kjk6hu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A50310EBBC;
 Tue, 28 Apr 2026 12:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380817; x=1808916817;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=wk03WvJVzxgvz7Q2tnuM/KGjcMk4v9WC3MTe8NbCNuE=;
 b=O4kjk6hu0ma5J8lIRbny9AstZvr1PpU+qMI8a5lwleg7Hxu7Tmw0+6f1
 dpro0g434unTuBEDnla2cF+3GtRXfjPo6yTm2zbUxiIf6M5PHyAXQiG2S
 0TTAf6bOkpd7m5gunnqSgFxCe1wFgOpucmYjbw/FW2cVXwKSqXULrF70A
 K9Andrq1cHguB0H+yzXzGAwikn3xUayEOzC/FJPdhItJslB2gQwqMwsoO
 wfeKMD1uwYb2dxj7bDOwN/GnfqftzWH1qMHBt0R2jsFf2SHN04nE/TkbX
 WQEmxahtKaCICIGFTRFlzgWyHECcvJoTK5F5R8oyVPmsYs5Z6EI5wKtwr g==;
X-CSE-ConnectionGUID: IF8dr1gzRwm3DM0pi8YDoQ==
X-CSE-MsgGUID: X6JM+z0hRyWIskFLcpWBCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398644"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398644"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:37 -0700
X-CSE-ConnectionGUID: ZMbkXkgfRJCOHHr8AEZDuQ==
X-CSE-MsgGUID: zx+OFfGuRzKwJIkPQkY2tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911380"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:37 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:36 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:36 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FybhbMj8acGqGlwCIOkn/e27vFY4J2B+V7pZrniknVjFF+akIQJ39FhWoC6zROiwFp2IaadUfxzEnreTldwSCL3/VIbtmEO50dzMQxbHsHOVfVaxlWlfUTYbszLPpqklyvwUVClxWO1N8Vo+S9dbUHBL4AjjR9ApFZ5ANepaSeZmC+yynzGFVAb3HvpwZvdin53Tk3lukvr4Kf49hDFURxK9uBOig5xjoW1c3X3bj71aRN1zkteGXx2zLJsnFBXiJpKucfjGVZpIMV9PF191WhOhPlKPg/KkPPCK9n4yj/VRYMfnPOpdxB2EDm8yv1GkkrQqvzsMhjF+f7CknAoTCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WeD185ziKbrFKWOZjsJ/LYar9mr5DbHZx5Pr4q5W26o=;
 b=EJEJN9JMp9Sb683yaRFDHcl/Q+v8MABKuLliBRgNMtoLhRXJE/xhhOxCqNqngT/Z6NpQUyRFI8vWp2rvcvnILMV8XdI104OgKYjUnyqfXbhuHqVK1MTJb0o2k17JGZW1T2AhkTvG7/PExIr8URerptBCCjH+qZduBqcrgBEWFei8YQ6ijQ6Jzj7iRlVsmvo2Expu+qnrpvI2Y/GFgVjKaS3mkkqmsp82Sh6LAweR+YUSuvW55E8Rhnm9p0vJXPJRDF8OQ+xLdBOI5821LFaVAqzb/lpykJ/kVnWQjbWdYr791dkiJUbJnsYfTbDOXyEdKIOoJ7Bwnghjfhgu2MFY4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:31 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 031/108] drm/i915/dp_link_caps: Move forced link param helpers
 to link caps
Date: Tue, 28 Apr 2026 15:51:12 +0300
Message-ID: <20260428125233.1664668-32-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b273769-8ab9-495c-2eee-08dea52526bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 0RNwtZPXXEv3yXq127LcIOQ4pg60Vttg0rYueaZXUbes2MrHKgV04JXGP4loBN0n7aHHIyDe3XNa3PIoeMjfHFYSYyznrqnfCnD//lyMJGSimznxHUxgpaVth9JzA95EPJVUSlSWwCU3XRCh9oFnmVH2ul2PpbjnqjK/lPt1B4dImue/TrgecG788fJNfMacBa4FL+yAO8QCqF924r2tv1qjHhwwfzB1pIQjvfbnvCE7bC6JkB+EtUU7oIigqTkxB4P5D0z9DE5KP0nbXvpv/M8XUTwKhP1kjeMmvtiCj+c4ugrDG0AUWngkxJYnZcI+Mm/dcVhgn1b5h/W/A0JYZ5HT6rrIXcrDxWQiUrDXL3UgA/C885bK8shb8RWO1Bl0+t+7nt5KPNXjox3PVS2lD8iSYKFuzVz012Y8vM3ebjc0dkNoq0OgfUV4VaLkHE9N7FmBqGJCCPwa3FHyEO+fgrYKE0Ih4JII5vJiXikWbnT9m4Mpg+ebmBxE03uS/wataNICd31e6IpRxl/CYxicv18p0jZmNkGWqM3J4GcC5/lgw0yWzGmGOAxlabSp6LDsehXBB+KRGDzqVpbrop7BBPfb+wNsoTRdiZ6PPDv6RSH9/LdGZIgSUicCmDtA279jH8I9amxOnB694y1X8MHzWgWFx7Xsx2y5nTzF5PpW1pYtNw/k+cQKl6mdMb4HHVzeV+6unnZhtMXbIIzY0/gc+W56TKmIX6kyqAZznC7/X2I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GkMBUepIkPS0Wkn3Wxw1b6yrujmUaNGk06EFKGuMqmWKOiVuChuZHY+APPim?=
 =?us-ascii?Q?uVF28sXsj5uXsGPd5zXH0KFQdHMYoRWjzrAdUSHqiG5vV2Zt686NeV+1/1vJ?=
 =?us-ascii?Q?rKXa/P6OlqbG9JuJ+zJDIwZhqCOTKbTFHn5ESjTTfSugQ9hfvRzeM42iKL0V?=
 =?us-ascii?Q?a6c8B+HXW+hjbIqH/zpsm+tKxDvoCSpA6D27Ko/QzQ7rm7tA22TXqhi4xzSN?=
 =?us-ascii?Q?4dkA83CO2RHtBWYf6CLDfiySVAkIjkmFThPIElBifiTi7cHIQ+wly1ypabQk?=
 =?us-ascii?Q?psyYI4J0mD0oOZcYiF6ntSajNQlO/O4J7Zn/dK+ZelANFCUiG3QEU9BVriPk?=
 =?us-ascii?Q?iMDK+JXznHu/CIZagr+2o0kSZPg9PugL3OhrlDbzravkenFjJ5aVFNQDsUce?=
 =?us-ascii?Q?oBV4G1X5MWPcJdldo6XJvhej60FvMwLjAgoMkXg/YHl18n5tkoW6iDzpVZiH?=
 =?us-ascii?Q?ERk8mpK0ZQ4Qr/K+7bV5m9r6gDQxsGF7G/aLXBB46twpxyNsLsGW9w/OLlMF?=
 =?us-ascii?Q?I4N0d6t0ZnIRQTLwd8eU8HLWvd4ksWLKACIhtckcaX54+eMh+N1fNw/gsZuO?=
 =?us-ascii?Q?hW+mYt2oMWOtBGNsjEwDIB7A/rawYMEuI+lDoUiABI5vJQfHDrjWmyDVY+ui?=
 =?us-ascii?Q?sfo5j9NzzCfUAG/HpiMO+dFPtjqYlyUsmfU5sTm3qzh3MrF451PD51prOKEn?=
 =?us-ascii?Q?/CIP9jcL9gb77m4Ju2Typ5nySror9fz8If9GaLwKNsvBb+R6ZiqhnDS2zhqv?=
 =?us-ascii?Q?dJH0eGOljLnrd7cY6+gphTtpHvrnq3Iy+8wlmnamws4YvZ1TMdN1iMc0PF1Y?=
 =?us-ascii?Q?oD/+oTYerneJrZt9tyScHcq2WuVhz2VnrVZ05sJ9BXItKqyMDMPREqce2fNb?=
 =?us-ascii?Q?1ghndECrYxlLFEVjiRYRUCYD/R4uPRXfLyg6/O6wSCLnH/B5COGYfuJtmv7s?=
 =?us-ascii?Q?zu9G4qQqFsOD1N8p5Jil0S3hzurpxR/BiM0ka8xAB/lr+sDzfscLvziaqVAP?=
 =?us-ascii?Q?UqSZcKFXtCLo+I22+UDZ5zmg6Y32f9sbCcxl4aYBe8OfR3XNTmOVBR6oSuk4?=
 =?us-ascii?Q?10pUzMqB60tDICe0QG4O9B+/tSlKF+WmfkiIBcWjqGJEk0ovklxePYTCA77e?=
 =?us-ascii?Q?kXjkyJpZ9RXVH0k0Ske7eOMNxweuLK20xzBhCNLiH6nk6L4m9V3iAX3yoBBD?=
 =?us-ascii?Q?LOZsqgY7/zl3LSQI5zh2GuobUfacP+MnGBOI3+3LupIfGMPIS0oCizB6FKBw?=
 =?us-ascii?Q?yvxk50FQ+89MyoAMwZ7lUKTwQfXKcF1LagHg4Yjug5wSEa5mUE0M4ACoiJQv?=
 =?us-ascii?Q?LYsjN9uFGWnCGHSjM7aHAthJ/KW9NDjv/68KiLq6/1zFkZZeoq3zqcha3alk?=
 =?us-ascii?Q?4Cmn0IGb98bQ4acvXHBFd3MaH+uZsB6xhIt4QTTF+ob3AEJkXBryO4b+IIqc?=
 =?us-ascii?Q?OUImIqYNGbNJu1+kBdJBezPTDo2m3Ry6Qlmpq7ZsVOmKIcuBd7yexkXOh/Bi?=
 =?us-ascii?Q?uJlW2xRjTEc3euBuhEYM8JiDTas2V5s0IkDO+Ecarizh3KH14hnufOIn3iPY?=
 =?us-ascii?Q?SruXoEqtX6cOuQUVRB2/vyVCXfxTGfnqusjc6uGQPtNO3upGf79cECDc2Pbr?=
 =?us-ascii?Q?Bx2n0jn0wLA8D9u0dIwwkfvwQsFNHctsWH8Zkd2uMuPDFlSzB+sghxbRaYyo?=
 =?us-ascii?Q?u5qHQPCZ+cxs1qRj3NJ+HXv6YQUjwGvtupohjldhHurDgGiOKvsHhxwH8lk4?=
 =?us-ascii?Q?cVrUU7NJOA=3D=3D?=
X-Exchange-RoutingPolicyChecked: SHB7HEdKq88ier0Z+snvIB1GHi4FbvQxHwc5kUtDF8wap53csgNf0ZsbTHnhvIGMQTv6otAonIOZs4LMFKF/u28+UZmaE7nCt+bSb+xsdHVMSFW6ev0ulVAES5VCJDD+It7IYtuO0WkQ6Fz6OI9os2QuaVx4wK8sCMj1JlKWI3OTE1XK9FFuTuyExj6bWn9Avlt5wmzdawp9wQC5p+UAHUPOav4lRySDSymxB6fQIfpxwB20bZnXoMbasL+W3V7FWTPNKXS5BZair5WIzTuY2Zkz4V1PsKxiX8qURN8HoM/Tvkcvg2aFVlNEVG0YwO3/MEr5h7mS1qker/mfco0lpw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b273769-8ab9-495c-2eee-08dea52526bd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:31.8246 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wW9FrrErSp0RN6Z4A5i/v1JMMsm2AQBOQyOv+3/5ZXIpDoXeeA2Wfoq/FPM4RijUtX+37vsJZSczm5m0hb69/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 1B6384852A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Move the helpers handling forced link parameters to intel_dp_link_caps.c.
Their functionality is part of the link capability logic and will be
updated to use the link capability state in follow-up changes.

Return the forced link rate and lane count through a
struct intel_dp_link_config, which is the canonical way the rest of the
link capability API will also accept and return link configurations.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 40 ++++++++++---------
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 22 ++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 +++
 3 files changed, 48 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1f903f9acec15..0aab37dcce97a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -353,17 +353,16 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	return min3(source_max, sink_max, lane_max);
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
 
@@ -380,8 +379,12 @@ int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 
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
@@ -1657,21 +1660,16 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
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
+
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+
 	if (intel_dp->link.force_rate)
-		return forced_link_rate(intel_dp);
+		return forced_params.rate;
 
 	return intel_dp->link.max_rate;
 }
@@ -1679,8 +1677,12 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
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
index 5711dde8d6eed..0a2db7d65e20d 100644
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
 /**
  * intel_dp_link_caps_init - allocate and initialize link caps state
  * @intel_dp: DP encoder state
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


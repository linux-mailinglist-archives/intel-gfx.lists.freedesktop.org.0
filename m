Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFSBNOCt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868F64852F1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E895810EBE3;
	Tue, 28 Apr 2026 12:53:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZIk4zOoU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3801810EBE3;
 Tue, 28 Apr 2026 12:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380831; x=1808916831;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=A/umnfXESTRmQMoAcxpvlnt/pZ7oqAMBtAEXWXH6QJk=;
 b=ZIk4zOoU6ezV3vHkFX4OVUf8CIAMLqSWQLgode79ZGubA1AkVUUZsP5V
 MziPgi9Y5tLPpVWhCBYD9+DIle3Av6+HhLNhL7FmuaF+hPrDWoiWAgQDh
 u+KTtO7YIzZkQU8TC+STRCCCDzYRMcPPYf/mDLucx7A2OJf1P34WjEpyL
 5QuEbbgm5Be6rKZyiQQ/dQURrV7k+nqVpNwI9MPQTS1+aCzrP3m1Ywms4
 +rg7qesUe8UoyMPw+z78n2bxnyuDOg4u5XLbiwhny70lVzf4mHF/QO8r8
 qKiQug89NND5iYXGSQpVyH9gJEKg6ZIo12rkdyHgbpbrnxNlRHZnPHEs2 Q==;
X-CSE-ConnectionGUID: fQJAwNj3R8SwYJUiPWZehg==
X-CSE-MsgGUID: byk5ev8vSJKZTXQJe2Px8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945132"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945132"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:50 -0700
X-CSE-ConnectionGUID: wAxfMtjETFC0CYWnX/o2LA==
X-CSE-MsgGUID: VOnh9XDnSpGf/X+9Wtn8ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377607"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:49 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.26) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FwriDRf2ztfQPaadbLXRqviktL+AtJTuDTkTbCHNxm1dlJrW9p6w7mTPGTWzZ+n375aB9lxinywizn0Pkkg7WcvVptdBpn5qvlaRBkbKPxd7XPaJPhIMBG/71+w7JZMCvu1IIA6vEFMfcxNU96gY8Zz0JKU7owi96rhJHx+Zm7HPToam1vISjXDvsdgz6c80mh3mNVsuos9MZHiPhzlY4O1s2HwIMy3XkbgjlTTBHvtyND4bdPxhgQ91Z4CpVanDrX2xYTl/dPk2UiWlXJTzJr9SunCsiXykS2TX1s4M2p/23Dj1b32+KavWfNPUjAzsOh28EQD92a/AWO6WSUT7qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HHkGUAhgW8zIa+PDFLLVmRpaoKa9xOTPVO6hBMCuB44=;
 b=duhcHiByXJEFCXN8/RTYsPn6pT0v4ZWTRqmLKzYyvbqxD2OmFG6XZm/EtcRS3+QYeALjxBIoXIy8Q5ygASdXoPz7sJ1S+zvsLjwzASDfmjNao+dtTU9RqBXPO5xnE3b9zUICoi5PEZQ8uSALXA57qazy+0lf8jqJ6AxLpXISuWEGny6b5yUS6HoEdfnOR25Db0egOq4GR8b2KBZIJzBVKJffpIj1GmkVT1HD5n8km7PRQTU4gx/NWYvklQ3Qvw1FIJQzRXP5f+qY+GjpYbOYoa3R5aL8hlxYIV61TwF3drpj4JLvPBUXd+3ZDMDeNVHGo9ERKyBJ0mbMlqroCJpQZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:46 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:46 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 040/108] drm/i915/dp_link_caps: Pass supported link rates to
 link caps update
Date: Tue, 28 Apr 2026 15:51:21 +0300
Message-ID: <20260428125233.1664668-41-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: e9bcaa7b-a9e5-46d1-fa1d-08dea5252fa6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: N1pELKsP756QT+W2HLLxDWNBSGm5vH5wSEczii8uacpXQ00E5KkCtRFlMOJDKbDSUUII6vXOQ9nagA/pLnj91fJ1oZ5xm+fyJi6d5qxky+9/XQODb3LrnzTNUItEWZY5lEQyETd8khKZx6zBTwQHk/r0IVgqvyPrlmsUy/cu68+ccAQVMGjFv8QwFkO3KiyWiW3yPweVrKAVVsyq6kJq9/Sr+V1wG5qjnX+kJCGcQCvPl7UQSVxbOK8T3sX9S9HCfLwPjyCRL5REBvPEKPOrx7nbDRuyCzIfWFllT+xFvnCwJjhZQhOI7NwL2T+wBYGtMXpXrdbzgYMwnwLQvX0RQrw8TcFSs1vt1Dt8vmZXfA8vDR8M6AMzAu1fJdekAqKu3uqek4OLWdUQA99wWlIhPjrnD4IXHg9bnLqKdA9hKlhHpJtHvlATzkO1xeJC7XcUHhs4h0Zy5MEY3Dneto4TtU+kR3aD6lmlVvdKnRN4+paeJ4R8IVrnPUO0pPxp7jzYfdkzP81ILtquT2NVNzkeAbOdwQJqYTdOFpkLHzT1x/VarpE3tEujR5qpAN7MryMLQekeLz5JPusRQeGEqQEE/yhKwsshwBVXcqp4DZH2uMov3Ide5SXqhHX5NxiKDjP4MKlysPq7TMMjsSgH9ab+TaGwCzPF8iTQ80QQOrZjfecz3DVtrz6GJZZHVq3GNSqJ464DuXBGIoZLL4az2HpAqojSry6VFHC9NCD394rnm08=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XnHZFEOsF5Zc49GYtCmUdY89XW/TIuynw3kjg0mtaNb4/7Tpdk16dLkewtuo?=
 =?us-ascii?Q?V/hq2KWl06NfvNazjKzy6PfMlsXX5WgZ3SshWCSYLHoClKUeKfj3ZO9XYCWm?=
 =?us-ascii?Q?RJfMH+so6p9YgMbdyB2161afX4YA70Vmar10apV658dnafZb3Iw1YdF5osgM?=
 =?us-ascii?Q?STzWmVLnfnOhohygWWmcDoUjuHNfdZnaby55vQ3b3+JV5ys2b/Ugrb7MSiij?=
 =?us-ascii?Q?9jkAMxXANvIcSsiyrwi5q0A4Zzuq5+eftSRFGpBrmifAmGGGMjQfi8S8pqw/?=
 =?us-ascii?Q?jGzivfZXMes13IVPR01TZDN7gh7TjcZniPY5j5QT/e74Oy8j5yzgVtlM9daA?=
 =?us-ascii?Q?k20WOAkmiFevROjyCw3JuPGUncnMOL8tnvv9ikJPNgIJPI1sVg/1DaWcXB5T?=
 =?us-ascii?Q?KgHJ9/sGySaN6oSFNeoSQYseLICTa59+onlxpT2sPLCn+6V3lXv3HAHP24dV?=
 =?us-ascii?Q?BQN6bj/o/XPjBbQKtTJ6C+QC3rIM/5xrS8QiLOKVClcHfBOyj1An6XdPZjfu?=
 =?us-ascii?Q?UO1A6Hw0tIt6aHHbBypXifWEz5JOeC9TpgS2NCq5MwNYaWLIio/OGXJ9zVis?=
 =?us-ascii?Q?AJO/kPkI497K8rxXUbZoVCrY7+cEza7Ny+Wg3uLiceoeBAoazVZgxFeK21Ot?=
 =?us-ascii?Q?Niui9xD4LWLbBrhoFB9Q4HmBld7DQYpEWGGOp4oh/jdONglmuwQPkKpiO9nd?=
 =?us-ascii?Q?hPRM/Ccc0hQkjhOQd+yTEUTuhDoAcDLvfcaX3YkOoBwGpLUCU941CaGhZU3Y?=
 =?us-ascii?Q?22DPRLzMk2w9jgP8QvJX69cJbDcRYZC+cxVaiY3ENKb9bgIcLHoD6Gnx2ffG?=
 =?us-ascii?Q?l4PFns6tZcMYkUsqMN6BVtTbH1C3svLCA4R63aGF/9E2lRRQM+d9M0LK1E69?=
 =?us-ascii?Q?VmisqcOQLKR+ohpQW+DdQWUgEEhWil4slJ78Q+ZufiltT9xTdqeEl8arxbb8?=
 =?us-ascii?Q?fk+nldo+EFpETA6N0maxv/OAj3HBPcUq2Mz/UFieHboLZq3f21r3IAYoJ0mn?=
 =?us-ascii?Q?XM5uVUCH6po2p+P20B7gby8fr3R1TWhNmeO/DwD/v/0JKt807DLyHk0MSgmx?=
 =?us-ascii?Q?5QCDO1G8sX0RObzbLUxZsozZ0uWQsGjnAVZO2cU1Vxbm6TV1XIm9KXlZ6zs8?=
 =?us-ascii?Q?30/+fyQhUCfZy+YfSl5loJPgJ1dkjMRwmDSbVQB5GbQxljbv1DmeAIeKTpdA?=
 =?us-ascii?Q?f2n5EC4l1DKi7ryPJyf+aUGv80XaedVKXe4N40EyzEUHOEGyfZfxdQvrbjRe?=
 =?us-ascii?Q?y3Jetx/MxBT+7p1zEUo9ZtXXoFTHAUXHTKOCYHbnZFVD4EG7Yq3sg3h7XCa6?=
 =?us-ascii?Q?RvK4/zV4Ux/stgHoKxRhfow2A/T2eCgdmk1cMWFpz6+jAmBGRA06P6gQLqSg?=
 =?us-ascii?Q?bMVG3Q68pQhxnIEh3A+EBWAJGmt5DJCyJfQaE6c9oZMsh9V78wkCHFxz5WXC?=
 =?us-ascii?Q?H8fZaINSlHFXAcvn3OI5w3q8FWojbY3EaOu/fRozty9WMZCyqecXmpcR9Och?=
 =?us-ascii?Q?bAPyYvGF2xkvpWhnhkfPhsYnhJnSLxFqb698vAH5ezMdncAW6fhzIhI3kE09?=
 =?us-ascii?Q?xDF04toenJ14VmYDnbfKPqv/sIpgBdoPzv+M1OTWwfdHthSnyT3bgcbfJ7FO?=
 =?us-ascii?Q?v4Unw6T19kI7x9aXH+KDro5DIb0ZegEJfs1cw+zsrJEh91Lki8WB7i3ihZjO?=
 =?us-ascii?Q?XMBRPF3cjPWa5ndUOQ8V/KsuTIKsxLnMjCXRx63+gY3nEO1cTYCuesrwcdQQ?=
 =?us-ascii?Q?EGZWcDK13A=3D=3D?=
X-Exchange-RoutingPolicyChecked: tQo04viSsGWgouEoPjVBCguMck7oxuTirAiGZsPbZFUHJ1QWB+B5UYYmfGOEnWE/ufSnLUZz2zLrhnIdxUsTjljBu8XcugCNTBDaEpT2k9s8ELK0AZNMy0cjNhFprklP1Sj0m2E+6Bd7/bT5Xe01UlYSprEbAkkhznTB2cuPH4yn5pIGU5bcX1929qXBgEjOl4IC/OKw62iH72KyzNP6v6ogXzMKvTmGFEWpB4n8r6qqYgpdVjzimr8Nl1qCEb4W2nfqfeHyKpes7PW3EaXfB3cwU85PngvcxCDT6uM+bK1OrbhTHEp7oxfFNoz+vyM0wrzIRAKbbSJlHRFAuNQJ5A==
X-MS-Exchange-CrossTenant-Network-Message-Id: e9bcaa7b-a9e5-46d1-fa1d-08dea5252fa6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:46.6961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0fLCyRSSDbNioEpZDADub49CXMiGpi5oaOw2Aw9W7VPSBNIi3NOa2FkEpra/1Moq54hTuDzBtSyEUPknbl2hJQ==
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
X-Rspamd-Queue-Id: 868F64852F1
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

Pass the supported link rates explicitly to intel_dp_link_caps_update().
This prepares for tracking these capabilities internally within the
link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 30 ++----------
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 47 ++++++++++++++++---
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 +-
 3 files changed, 50 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 347ea9bbe1ef2..febcf413bb63b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -665,21 +665,6 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
 	return -1;
 }
 
-static bool current_common_caps_match(struct intel_dp *intel_dp,
-				      const int *rates, int num_rates)
-{
-	const int *current_rates = intel_dp->common_rates;
-	int num_current_rates = intel_dp->num_common_rates;
-
-	if (num_current_rates != num_rates)
-		return false;
-
-	if (memcmp(current_rates, rates, num_rates * sizeof(rates[0])))
-		return false;
-
-	return true;
-}
-
 static void intel_dp_get_common_rates(struct intel_dp *intel_dp,
 				      int common_rates[DP_MAX_SUPPORTED_RATES],
 				      int *num_common_rates)
@@ -705,22 +690,17 @@ static void intel_dp_get_common_rates(struct intel_dp *intel_dp,
 /* Return %true if any supported or maximum link param changed. */
 static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 {
-	int num_old_common_rates = intel_dp->num_common_rates;
 	int old_max_rate_limit = intel_dp->link.max_rate;
-	int old_common_rates[DP_MAX_SUPPORTED_RATES];
+	int num_common_rates;
+	int common_rates[DP_MAX_SUPPORTED_RATES];
 	bool link_params_changed = false;
 	int len;
 
-	static_assert(sizeof(old_common_rates) == sizeof(intel_dp->common_rates));
-	memcpy(old_common_rates, intel_dp->common_rates, sizeof(old_common_rates));
-
-	intel_dp_get_common_rates(intel_dp, intel_dp->common_rates, &intel_dp->num_common_rates);
-
-	if (!current_common_caps_match(intel_dp, old_common_rates, num_old_common_rates))
+	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
+	if (intel_dp_link_caps_update(intel_dp,
+				      common_rates, num_common_rates))
 		link_params_changed = true;
 
-	intel_dp_link_caps_update(intel_dp);
-
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
 	if (len > 0)
 		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, len - 1);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 6e021b616934e..9f8b7da98305f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -8,6 +8,7 @@
 #include <linux/log2.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
+#include <linux/string.h>
 #include <linux/types.h>
 
 #include <drm/drm_print.h>
@@ -131,28 +132,56 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	       intel_dp_link_config_rate(intel_dp, lc_b);
 }
 
-void intel_dp_link_caps_update(struct intel_dp *intel_dp)
+static bool current_common_caps_match(struct intel_dp *intel_dp,
+				      const int *rates, int num_rates)
+{
+	const int *current_rates = intel_dp->common_rates;
+	int num_current_rates = intel_dp->num_common_rates;
+
+	if (num_current_rates != num_rates)
+		return false;
+
+	if (memcmp(current_rates, rates, num_rates * sizeof(rates[0])))
+		return false;
+
+	return true;
+}
+
+/* Return %true if the supported link parameters have changed. */
+bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+			       const int *rates, int num_rates)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
+	int old_rates[DP_MAX_SUPPORTED_RATES];
 	struct intel_dp_link_config_entry *lc;
+	bool link_params_changed = false;
 	int num_common_lane_configs;
+	int num_old_rates;
 	int i;
 	int j;
 
 	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
-		return;
+		return false;
+
+	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(intel_dp->common_rates)))
+		return false;
 
 	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
 
-	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
+	if (drm_WARN_ON(display->drm, num_rates * num_common_lane_configs >
 				    ARRAY_SIZE(link_caps->configs)))
-		return;
+		return false;
 
-	link_caps->num_configs = intel_dp->num_common_rates * num_common_lane_configs;
+	num_old_rates = intel_dp->num_common_rates;
+	memcpy(old_rates, intel_dp->common_rates, num_old_rates * sizeof(old_rates[0]));
+
+	memcpy(intel_dp->common_rates, rates, num_rates * sizeof(rates[0]));
+	intel_dp->num_common_rates = num_rates;
+	link_caps->num_configs = num_rates * num_common_lane_configs;
 
 	lc = &link_caps->configs[0];
-	for (i = 0; i < intel_dp->num_common_rates; i++) {
+	for (i = 0; i < num_rates; i++) {
 		for (j = 0; j < num_common_lane_configs; j++) {
 			lc->lane_count_exp = j;
 			lc->link_rate_idx = i;
@@ -165,6 +194,12 @@ void intel_dp_link_caps_update(struct intel_dp *intel_dp)
 	       sizeof(link_caps->configs[0]),
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
+
+	if (!current_common_caps_match(intel_dp, old_rates, num_old_rates))
+		link_params_changed = true;
+
+	/* TODO: Also detect a change in the max lane count and max link limits. */
+	return link_params_changed;
 }
 
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index aed2122a05d24..09e580bc5c9b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -4,6 +4,8 @@
 #ifndef __INTEL_DP_LINK_CAPS_H__
 #define __INTEL_DP_LINK_CAPS_H__
 
+#include <linux/types.h>
+
 struct intel_connector;
 struct intel_dp;
 struct intel_dp_link_caps;
@@ -20,7 +22,8 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 
-void intel_dp_link_caps_update(struct intel_dp *intel_dp);
+bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+			       const int *rates, int num_rates);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
-- 
2.49.1


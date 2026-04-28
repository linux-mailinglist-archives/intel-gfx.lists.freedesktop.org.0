Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKstOKmt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE2E4851F4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC74B10EB73;
	Tue, 28 Apr 2026 12:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZOK7qIyF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17E110EB73;
 Tue, 28 Apr 2026 12:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380775; x=1808916775;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=k3osh9nmLCbBHZwm4sNl+yGEcaKUSs44S+j2G950E/o=;
 b=ZOK7qIyFYVKxamVUHfOBLRIk5To3xbi5F4UjIZkQeXGkEE+jjdFrAkCi
 XAKwZY0A/XwJ13cpCMQSgh4bjao7yacKA2N2GgWyWpwZKRV8KCWmp6ZLY
 XhBfQxLSLygvrlFw9s1i56T0N6rKFjzusoThBd5QER5x9R/PIHI2kbpUr
 VH0Dv+fA9GRcYLmaGxNyLFB55vvvi+iK/aL1j9uWlJRmk6zIA6WIrSZM6
 4mEuqDMO7OIUHPr6DJpf4KvfPtFPfIfysfXVWo32b1N6Ji1BKIXQiIrs3
 gymyeojBoWUOH32dMOax3VGT1PJz0+pfLW93ZS/VNydt4NdO8toantPSQ w==;
X-CSE-ConnectionGUID: lGBPt2gmTL2qtDFQHGW89Q==
X-CSE-MsgGUID: FH+urVmLSCqi2Mo0oo6OkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398562"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398562"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:55 -0700
X-CSE-ConnectionGUID: KaDWVZ/qQO6P3ynt5Uyk5Q==
X-CSE-MsgGUID: NpoH9mzjThKITPvtoSogyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911274"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:54 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:54 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:54 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J0EQ3amaLzsyKozOLscBxNDSfxX2voJWWUD55G8qMzi+YNHZ1cPopVkFeFSWCLbIVUupML/g7H5IEgWuXltWdV6X11vjtqqrdApats4OQBFfzpj/lZBRlgzXJdEhYyuxV1Dm9tQLmpFHxriZczrPCbxfELyFLWSlq26MVZ1xeQmLTQwUfzUBO8Q2T4kNyiaxLU6G5i7kbFbIPDEsxBK9ihZ/BUkD/J4AUR3p9fW8aibETlPVueo9++bGnKNgpI/k6ftB699g1UDbA+y735ZiYOohKgMmcxxvK4P1VIK1ghd95bNzj7+4lY4ctNPIXsLgoFZuBbPLkvP5ihKRQx/cjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dcjP24djJPkLj2eJHMcvwA1V3htu8ThWJBMun3JLlzI=;
 b=IzkN+Rjo559S078OJynIIPsHF23XZCzNn3zVjabYHLUQmhKesjk71Q9HSXP9J4ZTwGu9/OsqgjTPFHKNCfyLl6D02kJM+NnmgCa/cR/wMIDX1KE9brzFb9rLOCrpRe1NC4OYr/ddA4uSq7MidMrvykbs30bOS6/ZUFHRnVIEBsZHCKtWUWmlbRIewUh7weVnzsMarjrup5erzlS9ar2eXrPnVENAcoB3Loav/zy4FZCkFJspbtK741CYluIamNre4WkVdpCUu9DHPH5M9kMujupcLRegjflkCT+3To5sD5fY4YKCwIxym84N81l6rsLcPpkAabbitxIg672IQ1mFQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:50 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:50 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 006/108] drm/i915/dp_link_training: Reset link training state
 on link capability change
Date: Tue, 28 Apr 2026 15:50:47 +0300
Message-ID: <20260428125233.1664668-7-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8156:EE_
X-MS-Office365-Filtering-Correlation-Id: aab13d1c-1c57-4f27-16ed-08dea5250e45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: DsfMd2qTZlIPb9vpTibnuSJbwZh+wqCW5IV6ORP6n11iEmxV+TR79479JbkeFf96q2H+sPI3pfN1GJDCD/i71cw/bfu6wdNHUwwns6Q7kiliiderkZPWtn7xvPE+VZLuJeGZpJ7aE20WmxrwxoNBVCsL6SxedrXE0MqPIOzjJHGEqBX6XuIe+8LuN5uw3QycYpegSbRhsc1uuvbEzuUaSmPmtgKaO8z/F7tRme50MlC9YpGV/1sRyZxgLOtDn8UEQ8YEqeEOzwUyBKVHfLcuhSl2YNDBHG2ExzEViPfZk+dOFIsSA+vupJ7cFqF13jC4+gJjTveli9lFXaPNlMM4y6vaDXvidTUctkSZrHi7UtwNKZ9DaDSTCZupBAuaZXG80/w7VQMwlVHGak8OnHeWP/JKYGPj/WBcuR/vlpnRcjiQL4bi3joAprp/7drbiNkXhZ3VcC123+xlubX0C9tcMS0VoDdIVL3lY0BIp5kC8BCg4951obWUOIMjQnpBUuRl6Y8Csyd+K57mXOTQoCarmTiO58nnYEM9dr7rO9qmcUv92Qt1zx6/SGEV4AsI6rxhi6AGRjY4QAQFICAVJTD2JHo8O1RMQfEIIpMvWrU9LY5jHCRFO3vtSv2kEV82xxhQPruyEpc7NOjYckZKullkP0XHNn4ele6shP+UIyE1cljJmJuw6zKjst+lSUYrQgowMB+/5HYtztEbifMojhblyLQTg9VdhSBHjogTsf+H+F0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YyJag/I75guxc5o2dE3lUz0E/gmDC/9vG8LJM7uS4BbW+sa3QIhqkFocwPFQ?=
 =?us-ascii?Q?BWXC40M77F6mCDOrFfXv/M+QYayj5yr3lvU4EVlwJdd9ad8AAXC5i/cpIHT9?=
 =?us-ascii?Q?F8Voqg+Isf7OkdSySZR2BXjTg5IWSXdQytnUifDTYkuFHrgrJANDaJqjtYbs?=
 =?us-ascii?Q?t0JeY4hc/1IZbkAUIxJqSM23D+9GxBMARuuvwvCYwqgNIL5RPWdP/++99Now?=
 =?us-ascii?Q?gGZClhZi0PDOY5lEyZxw8y0Zfq9dWLKezSY2bF1kHM0ptiOEJtPKH+CZaDPN?=
 =?us-ascii?Q?74O/xuXX2OtmNxQBSm2GU+5b+00aYqBfib1oNamIk1hEP1fJDdS9pCnLla2O?=
 =?us-ascii?Q?DosaSbX+bZ6zhXTA4OcYLUR9+DA617FcBNwUTSpc6OZmD7dW8d0VURQ4/rKN?=
 =?us-ascii?Q?I0NM+KBQ6yypLS3B/isrddc9n5UGgjh6Wkkuai/CLWSP8WfCLBMDSSaZ6PXm?=
 =?us-ascii?Q?IDgpZR+1txk9FOOF0z/yHDdkFhEP6STv6ALK7dBPSpcrC8z+9dNzdcjpZrIP?=
 =?us-ascii?Q?1S67BMtLxIsE5zxPXVQm+/bsZRD5vkUz7PmNLuFydCELutDpmEaY8xe9n3U6?=
 =?us-ascii?Q?DfueM40Bfm2+ydX75JzvQkwzjdEMs7pmww2GrvzJ7ciOIvFvrybbCCM9BvyJ?=
 =?us-ascii?Q?ZDOYT2jMH7j/1vCv/TqG4qGh0He/5cOBAYEVllvzj6aTykunQgKJPGDwkmaK?=
 =?us-ascii?Q?AYqxnPBLGK7cPLKEFG/u2MEFZGwIoq6LLzRfzb0+fceckR3fO3V0XkiznqcK?=
 =?us-ascii?Q?QIaOc5n3gKwHtasOE/L6TwBnn2RoeoRPBnteiiEuvxjDoUEr7IuMn1IGpDuX?=
 =?us-ascii?Q?PHprYcDCxI4hH3Z75+ZT6CmQrxE7Vyl/qEp7PxfUqSTknneEAQ50cS+eNSWz?=
 =?us-ascii?Q?jLJN7rtt7OB5GZbSCdNNlMeb9f0Vz/UQDAsHOPdUKj1lmNv4dv8IJKGrEGwE?=
 =?us-ascii?Q?iDJ2X0xpZE4tEcAWZZVM5yxtiGFPSv99Ig2V06dNl0zRBPX9WlklaiPxhPvP?=
 =?us-ascii?Q?yz0zAXOsuLkO7EyeEMUHfYq67aZ7tU3bpsnGkaeyf+CncqF6Xwccl87lEGtu?=
 =?us-ascii?Q?kA0nZzVy05BLUIdA9EG0gzPXxCmY9fJi2qdmPFt2GS/SOAipBEn8RF8tLFS9?=
 =?us-ascii?Q?HB5rIR4Z4FtleBjXfl4BF3h1/bIv1G8Idi2htZqeQvAqAYax0TGzAJ/NuX7J?=
 =?us-ascii?Q?2aHTKhfJL9XFTbp3tiwiy6frG1TlgwtPHl8kWBqI50DBN4xe1h1KazhrcDGw?=
 =?us-ascii?Q?4GDFiW0XpMfugdPMOaYLIQQRWqWCxDBRUV0qcfYG2kkmVQn85/p8DrmB6ipf?=
 =?us-ascii?Q?0P74+lEpiqes2vXr6pHf7pi6hSSvrSDI7eXUXtww728TW50971GOoxMjlngW?=
 =?us-ascii?Q?zpdOWEyMR92gUn0r3U48WsLV0Zil+Z3C4MikbAIvs9Zhuyv55wASoDLHu0dv?=
 =?us-ascii?Q?6N7OG2+JGewWRATxhtZt8yuOB84iX1la4Y5+5Tx0dUvcY+CR9Nvjav0AEoIV?=
 =?us-ascii?Q?8J1a6vXgMmludXTsDiR9/Uv4oY3OfGnChgw8sJF/rMW0QWeW1UslaGMFwgU/?=
 =?us-ascii?Q?NjNuiXQFZBqfu79f9Vu1D1wAgezzvYqHZ0j39vEgd3yhIrJfQGJIjr53XzA6?=
 =?us-ascii?Q?pShnL0HWNAEt78pNY1/0zTWk/qRGjK6ZhIJes49/lHcXlmjMQzpiS+7z8ozV?=
 =?us-ascii?Q?mwKWG/03RnTzlNTecObhxDAJ2ZIRK/opEC8WvXJe0j5+3S77PLtbs4aAfdxa?=
 =?us-ascii?Q?sS5XM/u7wg=3D=3D?=
X-Exchange-RoutingPolicyChecked: er4WTkRjbnploGXmRMZo/Mg34HiHVKb8HE4fD8AGRsxV9urSKTFwbVbFDBE9Z7pDgCyoc0e9y8Yuptiu+vYqNXgbn+FUkb2b/A4IIUM3vD9hSxumC1vsvIlp5hXHh7KII/E7jg2gkOuOXUXQnaJefC9VLxSWaAGQjKSU92/Sm4wBfWEMOvMfLp6rtQVzco749Lzu3kT2sFasXI50fq6PldJ8M8X/fbdo+F/3ZcA2uPGvDcuTY2jmmEGJhzUdxq3qo3kvllT6YH81TvfWE0N3X0yHM+elrtAZboXzBjqEgDWinFgtra4wdYrj8MQV+Pm6bcV6qtWq+2PNaVKeHmYyPQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: aab13d1c-1c57-4f27-16ed-08dea5250e45
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:50.7085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lV47pVvD/IoodtAKoeTg5EXf0Qcp9gG7PdmhPzUuoqlf0SNanIPB6ne+8iR3+km8Pl5dxXIeqY+lj6yjgSuqiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8156
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
X-Rspamd-Queue-Id: 8FE2E4851F4
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

Reset the link training state if the link capabilities change. This
re-enables automatic link retraining after it was disabled following
link training failures when fallback left no usable configuration. The
capability changes may enable a valid configuration, allowing retraining.

Also update the connector detect handler comment to note that link
state recheck may be needed due to re-enabled autoretraining.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ef7d5e55cc468..d7c8ace38a01c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6439,6 +6439,8 @@ intel_dp_detect(struct drm_connector *_connector,
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	enum drm_connector_status status;
+	int old_epoch_counter =
+		connector->base.epoch_counter;
 	int ret;
 
 	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
@@ -6522,6 +6524,8 @@ intel_dp_detect(struct drm_connector *_connector,
 	if (intel_dp->reset_link_params) {
 		intel_dp_reset_link_params(intel_dp);
 		intel_dp->reset_link_params = false;
+	} else if (connector->base.epoch_counter != old_epoch_counter) {
+		intel_dp_link_training_reset(intel_dp->link.training);
 	}
 
 	intel_dp_mst_configure(intel_dp);
@@ -6542,9 +6546,16 @@ intel_dp_detect(struct drm_connector *_connector,
 	 * Some external monitors do not signal loss of link synchronization
 	 * with an IRQ_HPD, so force a link status check.
 	 *
-	 * TODO: this probably became redundant, so remove it: the link state
-	 * is rechecked/recovered now after modesets, where the loss of
-	 * synchronization tends to occur.
+	 * NOTE: Handling link synchronization loss here is probably not
+	 * needed, since such loss tends to occur right after modesets, and
+	 * modesets already schedule a work item to recheck the link state.
+	 *
+	 * However, if the link is in an active unretrainable state and the
+	 * supported link configurations changed, either after an HPD
+	 * pulse-triggered link reset (via intel_dp_reset_link_params()) or
+	 * after a sink capability update without such a reset (via
+	 * intel_dp_set_common_rates()), the link state should be rechecked in
+	 * case the link became retrainable.
 	 */
 	if (!intel_dp_is_edp(intel_dp))
 		intel_dp_check_link_state(intel_dp);
-- 
2.49.1


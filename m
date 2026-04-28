Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANd5E0Su8GkYXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E35D7485582
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BCE710EC7D;
	Tue, 28 Apr 2026 12:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eoouYUdz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B37DC10EC66;
 Tue, 28 Apr 2026 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380924; x=1808916924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=JXTGkdaB3HafybG29MLXwj1NIT5E/w7O/fIIBDSmEYI=;
 b=eoouYUdzqNIIJhxGU5VgpnD32f7DKyDpas0ERS0BM+O3zrrl4V0NqjSV
 nIOyVcELUwBYZltkhZurnA4KPwDC74oWTs5rbGeoFzG9LLRpiCL0fM5hX
 VsUwxlEMhWYRMuYhFO51835MiR7AmakfBtHB1foPvrmlZoUf5c4eGp3yD
 Zqxe8cFquCCvi4hulUCCmbl4Q334QXY2+0syrTuV85vCFCf/PPXNO8q9b
 cHyfCMDbmuwdrBU3DvoG0725aOpjGj59BjSYqvnq2hLPxB2rUEidqwGRJ
 vBDehPtZePRWV20cVWXX345CO3Dj0hrWHWgusV5S1JHYIe/gK+Ap5QLp3 g==;
X-CSE-ConnectionGUID: HL/riloARxqgBtsmTgarLA==
X-CSE-MsgGUID: jF9Yxue0T0CmZ/3WHRch4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203307"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203307"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:19 -0700
X-CSE-ConnectionGUID: IMfRNodZTPeC2nGHh6TBQQ==
X-CSE-MsgGUID: Fo9TBOS5RTywdX2iAerhwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244809"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:20 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:19 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:19 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I8HHb9Ztfgm4Fd8daBYPmI9ASAdfEjDW2wk28kvQAbJkCwZ4TLIbCpu8wRg919N0UvgiQalJDS5lnBFS4sthcMB4re2ygtp41/qEaZ8zDIk2z6KVCD7uqzu212s5wEv5as+aKL+5MbEwL+ibn+VmngYg2nIqpB7igSYjCEFT1KxZpUh5gi7KlWfSw0xHaKXBUJpcwzWvBrK5GHlQg0nymY0Flv4H0bCOEBuwQ+ALCueYRj6DLzzL4Ndm1w+WOKu0ig/RgdDSs4s7wAYTwjB5nb+ZEnmxR1S2M2qrIZWUgzvBLyTgnQBmwtB7daWEyBpKqpS/XrLLCmrm2hcGccs11g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t++1HtDzfGLDt6kCpjce9TqSY0HZkeRe8oGDCBjrBOA=;
 b=GAQwBvLFvM4PCD7RhIsmeoWG9XbqigrUAR79qVqshtHurwZQHWYJDy4BBAPx93lMIPn+UjbxZdIqLlf6V4/2uM1DOTalG7JyYG8xUzXEW/facsg4cCjG5w2SgZ+OmjB23BsQolJ4oxtmHhL20KITdXtM3shbxTVcGPkEIAB+CQA7RmfUyc9vjZUlBFKT0l1ePtBdaFZOSj2ClQGB/56ZbneDSw7kcIFd36Nw1Prs7Lj0fbVZh9OmFTBNQx1YQPg5ixgFF2ASmYZokXZQ8Q0HC75cRWiydJhPfeXmAukPRdD9W3V3k0ZK8I/fVLt5K1F/JAHwVoxp9eNoON3eYp3UEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:55:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 075/108] drm/i915/dp_link_training: Look up configurations
 using fuzzy rate matching
Date: Tue, 28 Apr 2026 15:51:56 +0300
Message-ID: <20260428125233.1664668-76-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: acb49d8e-6314-4cde-5a36-08dea5255186
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: fEToSpXTios2/hR8WKHVQ/I1bJmVhPbJe9z1RQMD8wjGqwWfFherIpCryETelX2lIJqYYT7Z6ddZlRkhsMeCSYpo5tGJzuWC6ZjpWpm5T2TvfBvHG0EfeupszPm9eweqt/mAazdKpZ85fR6TEzGkXinz95GJ5qtPUYUb8w0hNZDHwZHvsmFRBea6i0Knc4l4Db/p71OQFFy9Y4mqQEsgqkZUXBN1okLK+KqQsghutsLzPM/YuUvq0nH0ECp69iRuh2Rxj+HTsryIrrnDfTQUS18YBQ0hOjjieb7iVJX36i9fiyECM54hFD6khOq3y+pL6M3Mq6a735QriUOb+9c/+RUUR6tEAxK7MmpgqT5Qjl+/QqlW1Ay9ySoxAGFCSEjfUYwYqDAOLmhmuzJ6AOfNVEs5ycxOxkXMZR+uFoxFoAd8F7b7ergbTlHBVIyYEPNF8ijYBcFexJ32kK4v5EzrkPBLqFywZSBDfpx928TvFJFMrJaMvN/s4XSKwviLHcGIrb8e1O2aGl9AxFnOox/LOhl/Foeg4FIJR9C31CahRcK5guRMWGa5M4p3LINnR13j/X05VRUMyGEPLFLFLNmr1mKEl+OpT2E1PgzSgsEaU1mFSlUgvB/cCG3aw4VRGS9P/Ic1QJ5GV1DQ8PVefDCjx642XE1sj+0ZuAWR1lRwnkcrP/6mMuaxIacU4n4z915AX7zUebI3fX9aLIzP0Ry84K6y9e/IE7Q+pxAcOqKuIyI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8Rekuzo8wPiR2CjSwbmncFJ8KV+qenxZikdAypeiVm4oeP2sglpHUAXhxp+1?=
 =?us-ascii?Q?v/siw24UDIsw38JF/dsilcN4mNn9aPzeVpOipg25SHEaIhZnO2yl0jJMW2Nh?=
 =?us-ascii?Q?Z5nqhZDBKcrJ0N4WESOeu3ujU6Sy+YBkB2TRGTuF2ZMSmLtXNoHeaLbzxmSB?=
 =?us-ascii?Q?JMOYGzaW8X1LwgpqHFJMC71gMjMsoHq+pqraljiA7O2YeuwhuArhBQy8v/VS?=
 =?us-ascii?Q?H0C5c4MjRhkLJp+F7AiyclvmV+Fed/j+W7NK+4GTSY0wuYlynPfJvGOMDKmc?=
 =?us-ascii?Q?8Hmc3arKsiU6j/TRQeyQ5hJXDInEHy7t5fBCwiknp9SaFlUUn/cXoYW2q+RJ?=
 =?us-ascii?Q?yIvC5xYbXoBn6CnZKjoJzoL8GrHg2tvTN91oveajyh8OkPMXWPNnCZwJAjJ0?=
 =?us-ascii?Q?By40rwLuubCGmQf2vznJ01aXlBipRgmZ1n6J9/8EJV5BmJWT0FPPmDX6loFA?=
 =?us-ascii?Q?KUlClm8dQu3myJawQauypz9P4nFkjvUPevodwkR8BkfUl99kOHlMjYXxklcp?=
 =?us-ascii?Q?FKqhPOGvq9ArEHVEUM1foLFhvuz8JuHqh6IRSsKXVZSxcp6qp+515hHSy1sv?=
 =?us-ascii?Q?qK/hZLc/Jxqb0HgqT5cpBD/x2TU1/vqLAqJzTjh6SZmpjdYsg7TYe4qXxLYo?=
 =?us-ascii?Q?5wGdYtLvbrwHGpLWCpY/VOwo4lhY/yBVur1/EN4XqeinLU2oS2ziqiPquRMR?=
 =?us-ascii?Q?iPyuvv1oD6CqeAm+z0Vfgeodns3EH8YpnprYy3DcdMaDrxb4ecfGuWoZM7ok?=
 =?us-ascii?Q?8fGMn/JtRfio1DCwRX/hbSjw4Fonr1czLtpe1zyjuHAGDYR6Y4v+abq+3qgy?=
 =?us-ascii?Q?9B4A4nYjBpywxV6Jfr81wdEsgmBkObzfAIiwqzTJS9xw2wqlY0vAN8MHNkSS?=
 =?us-ascii?Q?787yVodVax/Ms78pcCHOl2GzxPmZ5UqPMIKCeCRLcjPHPyFhU3H0/IKMn85l?=
 =?us-ascii?Q?yvhrahGeMsdmhDWMhniXxlDmUY/sr8b8gnw5SpFQTR2W1j5L9mSSEtVlC2xl?=
 =?us-ascii?Q?f/bvrBVFshE0uNgTpcUwIy2pj04FFm/88gpnufPrFLAzvV/OiNv1YYcvG0Wm?=
 =?us-ascii?Q?seZUnhmRClF5EFS7Zq2hJmeUSTPP+rfKqLu3pyCTGNZzvGf/VUNflX42U3MB?=
 =?us-ascii?Q?okzNEMajx0Z2s2ZII+3vjEn/9SEkCHLFukPdsHcyp2Ery2U+Qp6KK77ovBpP?=
 =?us-ascii?Q?yZcauEEWjH6b/KsjWdBpwfTYj7I+GBM5Fsv9m/fxiuIrlRgtXWMfh1Qzy0Xg?=
 =?us-ascii?Q?s8Qh/Blyd7051pGx6HKy2Jg9uzRwX5JE2b1JhQ2t7rLgKjHwek3XZ67dCIoe?=
 =?us-ascii?Q?eCHIk24IbegvGqGoE2tbkkadli5KOgx1nrrjcsLKFD0O74WHFzR6yxobmYC1?=
 =?us-ascii?Q?vII1DWs6DzXdp7c4iMZGtrdkszz3FYfS5qxmemQBiAjcXjHEsl0MfoWVC+hb?=
 =?us-ascii?Q?AdM5KzWCjfLZrcK9RKdUvq8lu7gX2K1X1m21JfuuJLx2vgQqc3VYSLj27Suy?=
 =?us-ascii?Q?zUcGTQkwI4sIem6DNCWBbhaLY4wYDidIQ63y3ZtpXS2KD0ASQB57Bc6iz4mV?=
 =?us-ascii?Q?c4EhWl9R3jcPxePvTr2Qff4xwh4e7KIXhkR7BKKOIEL2p6uOOxKXVx96m5St?=
 =?us-ascii?Q?BaLXbeSkITZ+84Sfle2F0Jg8eI+fkUxqpxH9agAM9XanIGlTbmtQxfjp5wmf?=
 =?us-ascii?Q?8oBQ8Wv/uS/LPv4GBHZQrabxdCSK82x0SwgRfz5niictx94/plq89bOij1W5?=
 =?us-ascii?Q?D67nVUz1lQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: d8pCMPNI1F48K+VOTWR0leBQpLkNLAehilAHee+qR+McZ4FC/Dqvgw4TirswWq+xpZtCBBkarb7hRut393c7wcHICFwXfGj6rPcenk+ww2v23bi5X2pRlBgJCyhkdJqC9QynSKe6YU4Kof8mxBdVXSFo/G07hmz/i3xowHPAbCKUg1SZWk/iFyv5mh1sx2wgRhySwM4Ymfka00PkUf8O5Aq41+A1tsfBq/Qe0oGvkRqkjfJlqZid/XRIpX1Nyi+w+VACvrfyFeSqMSngZBr9ZSkyKwvKps8/H0lKv30gF8Ye3rrYG2b47srpmTvl5v+hIP75P8nEX8WrnBTi+sG1Jw==
X-MS-Exchange-CrossTenant-Network-Message-Id: acb49d8e-6314-4cde-5a36-08dea5255186
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:43.5421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kRgrtZitOosilyJALnUQcZy0N3GRs+snM4Fot2kZSERzBXrYQxr+46yRvMG2B3hA1APokRt0hf4iqcHh8zKjNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
X-Rspamd-Queue-Id: E35D7485582
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

Look up an allowed link configuration during the BW-order fallback using
a fuzzy rate match to account for differences between the computed link
rate and the nominal rate tracked by the allowed configurations.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 20 -------------------
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  2 --
 .../drm/i915/display/intel_dp_link_training.c | 19 +++++++++---------
 3 files changed, 10 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 103490eec3d23..7643c468588d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -878,26 +878,6 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	return link_params_changed;
 }
 
-int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
-			       int link_rate, int lane_count)
-{
-	const struct intel_dp_link_caps_config_table *table = &link_caps->config_table;
-	int link_rate_idx = intel_dp_rate_index(table->rates, table->num_rates,
-						link_rate);
-	int lane_count_exp = ilog2(lane_count);
-	int i;
-
-	for (i = 0; i < table->num_configs; i++) {
-		const struct intel_dp_link_config_entry *lc = &table->configs[i];
-
-		if (lc->lane_count_exp == lane_count_exp &&
-		    lc->link_rate_idx == link_rate_idx)
-			return i;
-	}
-
-	return -1;
-}
-
 /**
  * intel_dp_link_caps_reset - reset link capability restrictions
  * @link_caps: link capabilities state
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index b380beedd8990..6599325932ab6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -100,8 +100,6 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 u32 intel_dp_link_caps_get_allowed_config_mask(struct intel_dp_link_caps *link_caps);
 
-int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
-			       int link_rate, int lane_count);
 bool
 intel_dp_link_caps_get_config_by_pos(struct intel_dp_link_caps *link_caps,
 				     struct intel_dp_link_caps_config_order config_order,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9dd302bb4968b..fb20795a7086f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1782,8 +1782,16 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 	forced_rate = forced_params.rate;
 	forced_lane_count = forced_params.lane_count;
 
-	i = intel_dp_link_config_index(intel_dp->link.caps,
-				       crtc_state->port_clock, crtc_state->lane_count);
+	/*
+	 * The computed link rate could differ from the nominal rate
+	 * due to platform specific PLL restrictions, so use a fuzzy
+	 * matching.
+	 */
+	i = intel_dp_link_caps_find_allowed_config_pos(link_caps,
+						       bw_asc_order,
+						       INTEL_DP_LINK_CAPS_CONFIG_MATCH_FUZZY_RATE,
+						       &link_config);
+
 	for (i--; i >= 0; i--) {
 		bool config_found;
 
@@ -1794,13 +1802,6 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 		if (drm_WARN_ON(display->drm, !config_found))
 			return false;
 
-		/*
-		 * Atm, the index of the configuration must match its
-		 * iteration position.
-		 */
-		if (drm_WARN_ON(display->drm, link_config_idx != i))
-			return false;
-
 		link_rate = link_config.rate;
 		lane_count = link_config.lane_count;
 
-- 
2.49.1


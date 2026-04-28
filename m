Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIhPKBuu8GkfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 545BD4854B2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5CD510EC44;
	Tue, 28 Apr 2026 12:54:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jhJqlHD4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29DDF10EC3C;
 Tue, 28 Apr 2026 12:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380885; x=1808916885;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=AmC24v6VAqK6Lq2vNeJ3/bbyypLL5rHFSXIS7bPv8Oc=;
 b=jhJqlHD4BcbwTcPIdXyOinwWfnnAyfQUtnpAmNv1sYqphmCwBsP+WBPO
 o4IJ5p6p7RxAs/4NpWdWPPiFjGwTzwUhrMQ0BFUWAQ0t2OeE/KlyVO6xu
 ZZ5ZMGa+bSNyrZNpS4WQn9f/w8yfweb2xOpqrM4gBOFmLOUCIDiiD5LBK
 utvg+DTO5zn97EdKuPJB/CHItqt4kPFAOPN/gRCRsDVvOpazBT7/zQEwf
 QyzXouzBKmffO9oBtjkcQPr8ttoEC/DcJnoBTY9vw1Sq8nyBu68FjQ7/U
 kDQKW4aatcfFxpSkiv+u079GulfEhS5tKf4SBtPXCXsNiaWg2lCHbiQAy A==;
X-CSE-ConnectionGUID: o0jjwmFISN2vTpYaS2ilKg==
X-CSE-MsgGUID: V+W2cFvtTW+upoMU+mtkVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893804"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893804"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:44 -0700
X-CSE-ConnectionGUID: e+iE98FWSluRObfeBF2Ehw==
X-CSE-MsgGUID: jcAHAQ3mSKWGNqVd+5XcAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083556"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:43 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SYxqeQwZA2gGC1IRcNlyl28Z9pQ5V8Y+ppT6mdEb4Lqdwi9QQRhJ+hOyT1vTdxJogg2iBVwQlPZII2tZwxk5PK8ocSCyPnC3mwY+zM4Oh5AHA77zWE7tr44k6tPCiahN1v33ZKd7XfTdWEy6Q1oHisyMpFBietyrVyFfaM0TI0ElJmBApFJN2qTMFzMWA96qaXIN91V2+s9s7UAnFQwK2ndrcRQ6HcE38TRkkO+tKFy5gY+u5d1iDUM1VF8AvcgoiHH6rnrpESkTYuGSzkikbO5Y6S/o+DSOSgKCOr1cPHz/81w/mpVyjdVnzY/y+U5mBkyLztGW+o+QLtPJ7TPRuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ba9wz6ezjjlW9iHWO9ap7P8tcqRrrT3XD4dD+FFUnV0=;
 b=X09cj6C/qKmCaPB4x/N3aolt3hUUXwXyC3m40N1OpyCG7RxSwAyPJM1kb1TlluMpSEdA9xNeDt2g2SdcZCYAXUduuLZGNg+kYZWfkT+lcjBLK8YeyfOONLPo3mFGXmJHwSAbWHHU9peA4Zwo75IjPchQrClX9qG6xyNmRXZ9kf3pEYuyOnYpWFJ7JWvyS5Q4hZEPKPJEAWn5iz7v1y8m+Dj5dV2ws00aZBbfW7f5Zuf1Xg8TWPrFVyOmEHLhZ+yrMdc46OqUprKoTym1onSKiyG+kWSFmXuw+aRhmmw5RMkGVGH1IzmUJgrnkXRT0nXfr/2wvHWTgaB4ZE58vP9jmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 065/108] drm/i915/dp_tunnel: Query max link limits via
 link_caps for BW computation
Date: Tue, 28 Apr 2026 15:51:46 +0300
Message-ID: <20260428125233.1664668-66-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: ea1a382a-5836-47d7-90dc-08dea5254796
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: pu2BenryCLqe4wuQMcOlcWUjZgGomRs1zRYRaLp2J6olhadtPqy5gjOPLP7Uk/i/at7f+fJ8uWJfc1+xArnyRH1ZgrKJ7NHrBh01tbIAlJu6b+vXi+onf3CjppqgCsKDLYbxzxMSgZjYSAMUyX9lSOJhr2fQGaR3+Xx8hgP57S2C87orC64MiwfLWtPaHI0ZRRP/a137jYDz3WX3Q3wjHmYzVKVZ8VJpzqILsL2svu0dOlOtCU7nG49R5SwjnHyjTS2EzkTFx4xjZmMxB73H/a3VVoGoAVipkd6o5SGPuydme9nqbAmfBzFDcglYpDmhPJd9gGHskj6h0lwJCAfoyamwjiVDI/eBWUzFdzVrn+v+OtTAzWEOWh4NxfZtDy7ZPI3hERFAyMOuCJo9fU0Hr0a0JlPz1BTvxozjEeOs/C1OcaxD3A8Q9kUK1tmq2KdDColg14ZYM95ZAnF5w3AlmvNzGMnwOqtAFNuuexBao2coCo5qysefeOM5MODMuE5P7tlWfi7tpQ6KP/RxZRWmy+J+dB+5RtMzp16SwwZP6Wr/5jRRjQCSZGV4ClLiDhLbzbAFWODXtCT4+1vrRSJ/DfvjkvJoXS7XGKcJpRwRiTXL+Kms4H4HJBtQgql8gMM+JoqLuG4bRqX6Am8y2IgR9SbT56NHxRYh9fsF/6PIPYtFumPryP1EX4qRz+EUuCx1TyeOYQlR0xtyLNz/RQUrBB4g+si7uRzZZenvmJYl9CQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?q/Vr+d0IdwIA2+5kRL8KxegcEq3+0tVRd3S9xs0UF/XSzQGArKSpkYwknB+Y?=
 =?us-ascii?Q?Qqzz8Jd0bRILhig0y8LfYOe9N1GvodGCwe8zPQ+7uHtzh1KccwlhrqHhGQdf?=
 =?us-ascii?Q?lQn8AR5s+vKuEe7cM3NpMA18LEChDujKc3ZYN1f7ScaTMVoAn7AU7ZT+sLM0?=
 =?us-ascii?Q?NC7qL3r/8XIrCXNyvOZVgZPUh1TDdpa6Qy+XBFG5GOvpdPdq+d0C74jj20oF?=
 =?us-ascii?Q?nMrjvls0TK72hC+wCiJfGeKg/DujSUeFd0GJLiu7OQE7oacgHxSYgWkJ3p4L?=
 =?us-ascii?Q?v88SNTWxtlBo9IvZp5XDeE8D/GCZRtrkvxFwYcA3wuqLKLqkyMwXHdUVNfzI?=
 =?us-ascii?Q?AVm21iiLzPf9oZzn3nq+Flq1xigOdQeXXRaRisaxXAE/qCf8ZGFP/r7+g989?=
 =?us-ascii?Q?Ih5yeCkwzwxgpx88jPsts8jM5NgWhjSAIk7/rTJtzpeUFMtW9NND9Y4M0ian?=
 =?us-ascii?Q?th6aEEZKMbFI5VbSG8gBH645uaS1s21cNq3/OHCqNlLI2UNzDrhVP5BhdkOT?=
 =?us-ascii?Q?+KdX90ocU8vQchqXJ/yAbxWrap6OOGFlUCz4FkQSkzACKj6ksguIaWkZihh6?=
 =?us-ascii?Q?hzOSZivr/3DTFnez5vAKVPV2oID65tNDNZK+E1gG4KjG9GECJhuyiLwrHY5i?=
 =?us-ascii?Q?WieC37be5zH9yb9iz6VCUDSbaPLbmcRXsWdKjfRG3ZDBOlt5zRU3dE/wnZbG?=
 =?us-ascii?Q?TXo0CY5q9TLsJTZJPU/cs6fbt+Gy01NffMUs9+scMFR36feTwg71PQGYNG3S?=
 =?us-ascii?Q?din3HmN3q39Ti22apsMLLk6LxvSX9ZDKuPrNb+/kfBjnf3/c6XCDGookOyIt?=
 =?us-ascii?Q?OD3Oyo+iBEieL7irXQgac4cIQ1EEWtaJKM2gk36l69jin5akg0YIwbgVdSEx?=
 =?us-ascii?Q?1eME+51plDDsTB/2nklwgRXbIWjvKU3NVDZbFeE885sF3qY6ZN+d+xL/QdFj?=
 =?us-ascii?Q?iC1qBPftSEcZ65I3pBd97gmzmzHkg+T/P3KvqZPCyoeB3JU7HIREnv5S7WHU?=
 =?us-ascii?Q?FgcALl8U35YOe5hnAQmP6UwA5tb0CsaZ5QXIOLrB8UKPKbdXKmVklz9yUAcZ?=
 =?us-ascii?Q?7n8R1mnbD3uH3p8A0sBMf/IQAGdK9cp2PPMvKY9n5tiwfaV/LS7LEEMNRkrD?=
 =?us-ascii?Q?lq7CeRFNtDGXFG/AZQY0uYltgDEGkEeWwqOOY8zd0DASQbZ1YaDfh5W5ZHID?=
 =?us-ascii?Q?h5M7xef9JL1l3ZpM+T0ApVdov5a7aINV0BzyZ7hG+RPclUsLdVIziUcrBiCI?=
 =?us-ascii?Q?T9hWgi4CiyjPacJfaWPeep58IbLM8OzoTCqxDsWv7nSIouoIhqzd8ZDrSG0o?=
 =?us-ascii?Q?irmenbQ522Ga+fiqrhNgjDhB10Imi1wgbGudomoQb+d0dap6fGadGDhCwSTN?=
 =?us-ascii?Q?ST5sZhMZ3m7SdiDZkiATy2IKbT3ygUTvCxrLDkLcnv15+fMg9z98bIMeDXCv?=
 =?us-ascii?Q?ggib22wS1IlGCHT8v+Va+OdQUVXGxh9oe3ckVG20GV5lHdrKYpYx7mGSIy35?=
 =?us-ascii?Q?N8FK2BIo8KYMgC5jofV/dRiqlauSpw82ayyiGXCbsJ9bI3YzFoJCe8JNZcSz?=
 =?us-ascii?Q?yY7oYJuucw3qBLpTSy7aj/Ymo/I4enNIhC/TlqsT0NWA9WabsvAR2ma6uUdA?=
 =?us-ascii?Q?+cziPWs3adsdbLrDIp5jRASTO8cKCj9n+T5bRqkpQYR+4D/x2CfL28vSdP2H?=
 =?us-ascii?Q?3bVT506WieLEE10ppmEPoJ1OlH4nc2DyqSvyx7kV8l5DPCmNLxYTmk96KZeD?=
 =?us-ascii?Q?6xEqrlSTbw=3D=3D?=
X-Exchange-RoutingPolicyChecked: SMKUp8AgxN45v/TYCYw3uPf8/Or0q4Zuoo43y9PKBLehsfflLaac9cVjTWvGmgnvMBp8CekImC2u7kAki/3KcYd+U+Kn50I7w05dkcR22RYH6YYkINHf44YP/OS9RmVi56u1AOZZwX2zjBCULVtlVjVpuDXVAjXBiOSrtkBN/8QHK4UrQ+F16vM9p5fl+Q0Ku8aWPVKtEzVbSaRPLkeJyQUD8iQs51ggNCOU1wdwxuP6NYEf2/1CsZ5wFDjHi4v5nwSd82UmdYTCCyEpXIfXWDYuyhE/zrhp4nrf1HhqLWVf9DtNVbsPhEBwUh09tPdllidfcUrKOxcgn3deb0oK8Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: ea1a382a-5836-47d7-90dc-08dea5254796
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:26.8751 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lPMb8dmipqXQDatv/GNP5LxW1LVcqRwCVoDBTlM8y+7sTi6NPNHZqzdqPMS5LgWl3VrW5OYElOGPJlvNu205gA==
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
X-Rspamd-Queue-Id: 545BD4854B2
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

Query the maximum link limits via the link caps interface to compute the
available TBT bandwidth. Unlike the max common link params used so far
for this, the max link limits also accounts for any forced link
parameters.

This makes the max_limits query uniform across modeset, mode validation,
link state checking, and TBT bandwidth computation. It also allows
intel_dp_link_caps_max_common_lane_count() to be unexported.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h |  1 -
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c    | 12 +++++++++---
 3 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 7c6259c95d388..e8d1fd86b327f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -171,7 +171,7 @@ void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
 	*num_rates = link_caps->num_rates;
 }
 
-int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps)
+static int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps)
 {
 	return link_caps->max_lane_count;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 110c1d1e604dd..7fe0e4a028f26 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -17,7 +17,6 @@ int intel_dp_link_caps_max_common_rate(struct intel_dp_link_caps *link_caps);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
 					 const int **rates, int *num_rates);
-int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 52f5c88f7e09c..07817f5251c81 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -58,10 +58,16 @@ static int kbytes_to_mbits(int kbytes)
 static int get_current_link_bw(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int rate = intel_dp_link_caps_max_common_rate(link_caps);
-	int lane_count = intel_dp_link_caps_max_common_lane_count(link_caps);
+	struct intel_dp_link_config max_link_limits;
 
-	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
+	/*
+	 * TODO: Compute BW from the maximum-BW configuration; max limits are
+	 * independent bounds over all configs and may not form a valid config.
+	 */
+	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
+
+	return intel_dp_max_link_data_rate(intel_dp, max_link_limits.rate,
+						     max_link_limits.lane_count);
 }
 
 static int __update_tunnel_state(struct intel_dp *intel_dp, bool force_sink_update)
-- 
2.49.1


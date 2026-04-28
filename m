Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MH+Dxeu8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB81748540C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7691810EC33;
	Tue, 28 Apr 2026 12:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JvhLSu3q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A94D610EC29;
 Tue, 28 Apr 2026 12:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380878; x=1808916878;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ujQPnyjO0AtQuAG4GnpU1UUAo+sR8MVg6lOIhjKcvPk=;
 b=JvhLSu3qC9AP5Afs9xdqCq5dDg2YsXmzGRPg+u839A+EISEUS8F2lqWb
 9JN0SzzMIZ+8jkxxDYJrJTQ12HYD1x/5eQM2PAuXkwduAAuX5/e5uRGgn
 a0RK14ZtYWDnaQewaICWk41zfcP/0gec3QmL8V7pN7QD2G6uJFP5Q122Q
 eVWuK15NedF85GcQU0vPohIvxmoAsd7b4Xb/TNrPT499xNIM+uFJfvguv
 d1P4k0wKF1IYN2VFiCZvPdhYtkK22VgynaazmS6DmCTnCvQd9hssRZjQ/
 JQFXG5VRtnU+4ffmRUeUX8FgcbhaDJkULOD4e1jRLEQZrW2+4/qTGqGAV A==;
X-CSE-ConnectionGUID: YwFvgCZWRWCZE/QZtbFiHw==
X-CSE-MsgGUID: RQDqEMFaQGCV02l9uOpXmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203211"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203211"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:37 -0700
X-CSE-ConnectionGUID: O8RGdm25TAmnQR/DkgitMA==
X-CSE-MsgGUID: qvSq4bAPRWyubSH1+qxaNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244464"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:38 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:36 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c3NwRY76UP7lGN8VxeGKDMI71hHYRYsijiW3AR0thVeCwgbeOPa3T57RvxnHJntmB+maan28+wb3/XKfP0Ddnwytu+F+9dHKfDukm1Qi3x2t46c+IjxrEc6TuBSmEAM8RHisVMOgsB+PYp+FPOI1bWb8MnN8SzWmmeWa69dnjpYzfmxtkEQvck9bL06xUx71nqe1Dw+GUEC8UA7Juk+x9/xgQXA2ADTb+yBkV9CbwiNkzN0AvhaieBZdeZbN1obXflsCj3bXZ12nqnV/kw5MvUtIaXLC5RCYXFv0Xdp4/nVjP+3yEUwXnPunas0jDNfGLomw3oItmA+xttDiP1j+FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t+D+tMCRFcCR+NxV7THbYAP9LNM1FOu+j5l1gszZIDg=;
 b=YiHTG1VfUXF2rUx9lqcl6DmDSzIFp8V12ddh++1zMnluBnsJuaco35SqW9lrLS4kreF2cuT2chSElo8KnHSXXV0RzuCPsC8/XtT4xiyW1wLc0jRXyjekmnJCIJdtT1TIpZL9UMrhrsaeigCeH5/S+8IRZUsEggnTCoSGmckObPTmVQaXysvUKX4MLYtlvm0gNcowrEY+QxfrLxvhvxbbG69+JM6J2waqSTewfcYXMM/oJ4RKeHzyMxTKdcSdRplaTw7BVA1Bhe8oUNdemmiIWxywL31ehTSM5zFO3eVI2B+KANZi46YO1r0vAj4aQ4G3IpWDPfjNh2Wm1Xcq7gFg4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:29 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:29 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 057/108] drm/i915/dp_link_caps: Pass link_caps to common rate
 helpers
Date: Tue, 28 Apr 2026 15:51:38 +0300
Message-ID: <20260428125233.1664668-58-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: e840af7f-d119-45a5-8bf9-08dea5253fdf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 7NtHWfK7G9rxQAGGbp21/zPieXTdFbG+J6U4miFxy+UE/+WDuh4txto4ac/j+DOSLyKQJwIOs8mOcbxBhCyXVnNsql0R1RzMLkR5EW9WLryrk+hLZWxPOl72H6qUfGHJx/WEmuc0XGShiaRnkCv8/HWfqVVvWjHRk/Hfm/RqQJi4M4VF2HBfM3Fu7VO2zZLLMk18W1kyt+oE9Nd9/8l7yqGEJpVYFcfZ2ZNgSdRXlzW3Pk+cNtkN8UoMt8bN37X7tYiHgvobr0cLeJhrYhRrEkaYFMnCapjAL94c4gZpow4DOtKuQ+q7fMHyhJJIV/O6fmxMb3ZAO62S7CbSkfyUJoQ0vr8OVjXRTeZbSKh0c4z4c/p1xWzk/nWZ8WFM7fH9aUFUQmarUhr+Pgqt2HNxTa35pzdgjh4r1Xv0bleDrsSFaopf7coU1dyq7TYU41Y0qFO7fTqrT9P6kSfOnZG81Din1J8llUDKunjhca2tllXfLQ6fefTcec2kPXd46VH3HLdb8OZqxA+lQjgArhBbDk63n3QWGFvCGpNpSB11a/yTmFr1qXKSOHiH45mNUsBfGC+fa80XSzsBop4J+D9aEigBNdKucQC1Ttl1yC5/eBwzXK9hA0XzB7h+rDT7pF2H4gOf4PiKwB7SrvIYjBre7RHhZ9Lz1TlgBu0m4sftlsA2X6948fyZP95zL0jBwA1D1KmBpisLQ5VIIFKdPbYLwgEiyFqlfC3t1SgA2V+MHTM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rdroBvjd1npqpAV5FhRWW7l7fscH4+Fu4RBhuEIwkdX6jAfJmIndpbq7gmDk?=
 =?us-ascii?Q?M1mm8ZNgTENs3at3PnQ2un7XD0B5DdZofTLnL1fnUiSLsmUpdFguYcjQ90Pg?=
 =?us-ascii?Q?Sad2POWorALMxzcd1QTIT/ejfXbHf6gLgrjEDSRtKHCNBorc/HEKhiWGAei2?=
 =?us-ascii?Q?IpORGRH8shBq9EnaR+kbZd7UmNG8An4BWhLkl8rkLY8nI79q1Kid2I3siLue?=
 =?us-ascii?Q?oKiWHk0BGJLmLZxLg2TDESXgKv8aLG2twaN5cnkCR/t7mFk2nJVl8Aw44zNA?=
 =?us-ascii?Q?7N6jB3k/JHeeY+7bR+cIZL2rPZ3USPk/Gu0YKGe5PwlJHww68ljQMqm+TBek?=
 =?us-ascii?Q?dMqtI56T2nM8/YIiOtesFcfsSVuXaBE+Ec8zbUtlhOgG78NF0bqpuFb+CJ5L?=
 =?us-ascii?Q?HoPRfzK0GkGZFeomNFzMacuiXzgQ8f/aW5yklT5ExE/tvNucF6FkLYmdeo7a?=
 =?us-ascii?Q?pNxGpMM0fYN9gVuMQKiN6q2VwNTs6VoaEru3LcsY+6+IhMg1cszTX4b80meR?=
 =?us-ascii?Q?4Zj/V9s3G4zNyrokGspDiY/boSP33FLQBeZoRUb+Kp1gYwmgEQzGg8J29FaX?=
 =?us-ascii?Q?cjgHG+Q3HnwNY5OXqBWTJlee7371o4Q+wiz5L68J1ofhpfYkj5hV4QZ2fyJP?=
 =?us-ascii?Q?ULkQqrOxUTwWrhaEMUu8g7YLlqW38Le20LNTPM3B//cI5QOTrUrFw9kxtcBs?=
 =?us-ascii?Q?rlN+aKCOlwlPmWrYWvniTVLTpcvOHpptuGJMcxFx6G9B0hZLYmjXV9w9TRUc?=
 =?us-ascii?Q?I7pN7dyZmU3StHYl+pmwb6OQ1dS095i6eNq45KrtR3artdOT6k5/TSi2axsE?=
 =?us-ascii?Q?qPsuOfrQ+5z/oVMV5aiHbOjP0ACJ3Td0K9Dhc65ITkIiCPNpdoa3zpsu1PVa?=
 =?us-ascii?Q?eVDKh0BawAO+GOV7b5Rnuvrr/X3XjO0UFTTJLrMYe96NRBbhfAVg20ik2a+7?=
 =?us-ascii?Q?owtaLzFpBU6nqp9JDOc0mI4TJjNm7aQFZoQ3cqkPM/BeBKS337bcxg1J8p7t?=
 =?us-ascii?Q?m7xoaJJzB+Zgjs4EVmTITtvIodeeUHFkH54+Kp1aZMlpjIx6QDgB/EhQg7TM?=
 =?us-ascii?Q?YoldOGGQt/fDAJZvIiX56WXx7WxUlw5YmydhDj7f6z2fZ9o5FZmDVGtAnQeS?=
 =?us-ascii?Q?QDXh6fm274d+xhTN2ocPXuPeur5O5dI/bGxY2tRMQG0rf2Nnu/vM93QUJczH?=
 =?us-ascii?Q?h25tubAW8u4hGZiDSWLxoym0oeLwY7xdS0UnZGcAc4oGwT/ejSd2pWYCSsuD?=
 =?us-ascii?Q?D6oCi1Dk88HDbiFxLWyss4oZtz+jgEZAtMe3aAZJd0eKoBs9OK6IS2Br6X/T?=
 =?us-ascii?Q?0fZrQXa9kJf/o0vSH24Eg8K6UTF1vEQMWeQ6yjVX7cZS1UIjRRO8iwMEgezP?=
 =?us-ascii?Q?gZEEx6NxotsoDrp/g2NA0icUZ3xVfjXGlJwuEgdszUi4UOJLaj6Le4eIIKIf?=
 =?us-ascii?Q?aNNfTy7Oaw2F0kv9/RlhM1WHHzYCY1sm2L3xhTSk6WPpXNBeDWrhlSCswKu7?=
 =?us-ascii?Q?LE9QyMIwcCsGQGwS+UnkDZnbF0XbSy/AD+7SF0t8U0I2ttKWitPuVzI2yoVn?=
 =?us-ascii?Q?qvXyl7c7XYwobGjkjNIYxz1N8lWixfocIypgCBQLuQu4rc/GfoEN1xMZosq8?=
 =?us-ascii?Q?58XpJzPuSbFXW1jm6/oaRW8cjyC9CqhtHk3scO0xs12tL9vVEd+tugRpMdDm?=
 =?us-ascii?Q?FTSwlkNZLRg9M1FRpJsyXP7GNgvHhq+WvFQEVHQ5ex+UpyQf+nk7TSYqrMbF?=
 =?us-ascii?Q?LLNSac8Keg=3D=3D?=
X-Exchange-RoutingPolicyChecked: tayYkeUjYcG/TFtQNP7xPhVuH9Kb7jNbolaDuFVgy7iP/IFAVGzMG+en3dH1G59rQt1R3TLqynLDc8TMyVEqJfRB7pMDGAxP4MfR4/5Nu3gGTTM4Mbr7qZNL2ph+fOGLpWQnF7B0DbMgRBqv28zpf5zl+Rr3uWV2hmxv2EzrK8bPd9yFK959nN7ddAMZqrPV03ECU5bFD16+uP2ycVQAHa5d2ACRlrpxczMLn8/O3fWxhr3DmWOp0PjU6rNMfqpGOBTZwi8oFBbBo7qADP/kb03Vf1BujeCiOu2DKf3ZlDNRH7tX/Gx9f/XRr8J5wclv9JHgipjkugGUyoXjS5y9kQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: e840af7f-d119-45a5-8bf9-08dea5253fdf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:13.9095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /yfBWUnaT79ZjkJ3Ymluk/v/7WAvWDLhEc/aJFa3rVzB42GToR7DxAEjLRXglyrCWwI5JsVSbOK8ULP14AMKfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
X-Rspamd-Queue-Id: DB81748540C
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

Pass the link_caps pointer to the common rate helpers in
intel_dp_link_caps.c, as it holds the state with the relevant
information.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  9 ++++--
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 29 ++++++++-----------
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  4 +--
 .../drm/i915/display/intel_dp_link_training.c |  5 ++--
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  2 +-
 5 files changed, 24 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a3f293af5dbfb..57f5c73f4c249 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1565,6 +1565,7 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 static int
 intel_dp_min_link_rate(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config forced_params;
 
 	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
@@ -1572,7 +1573,7 @@ intel_dp_min_link_rate(struct intel_dp *intel_dp)
 	if (forced_params.rate)
 		return forced_params.rate;
 
-	return intel_dp_common_rate(intel_dp, 0);
+	return intel_dp_common_rate(link_caps, 0);
 }
 
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
@@ -1756,6 +1757,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  const struct drm_connector_state *conn_state,
 				  const struct link_config_limits *limits)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	int link_rate, link_avail;
 
@@ -1766,7 +1768,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
 
 		for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-			link_rate = intel_dp_common_rate(intel_dp, i);
+			link_rate = intel_dp_common_rate(link_caps, i);
 			if (link_rate < limits->min_rate ||
 			    link_rate > limits->max_rate)
 				continue;
@@ -1990,12 +1992,13 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   const struct link_config_limits *limits,
 				   int dsc_bpp_x16)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int link_rate, lane_count;
 	int i;
 
 	for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-		link_rate = intel_dp_common_rate(intel_dp, i);
+		link_rate = intel_dp_common_rate(link_caps, i);
 		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index fc569092a4dd6..4250cdc7af702 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -78,18 +78,16 @@ struct intel_dp_link_caps {
 };
 
 /* Get length of common rates array potentially limited by max_rate. */
-static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+static int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 					  int max_rate)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-
 	return intel_dp_rate_limit_len(link_caps->rates,
 				       link_caps->num_rates, max_rate);
 }
 
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
+int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp *intel_dp = link_caps->dp;
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (drm_WARN_ON(display->drm,
@@ -123,11 +121,9 @@ int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int
 }
 
 /* Theoretical max between source and sink */
-int intel_dp_max_common_rate(struct intel_dp *intel_dp)
+int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-
-	return intel_dp_common_rate(intel_dp, link_caps->num_rates - 1);
+	return intel_dp_common_rate(link_caps, link_caps->num_rates - 1);
 }
 
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
@@ -172,17 +168,16 @@ static int forced_lane_count(struct intel_dp_link_caps *link_caps)
 
 static int forced_link_rate(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
 	int len;
 
 	if (!link_caps->forced_params.rate)
 		return 0;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, link_caps->forced_params.rate);
+	len = intel_dp_common_len_rate_limit(link_caps, link_caps->forced_params.rate);
 	if (len == 0)
-		return intel_dp_common_rate(intel_dp, 0);
+		return intel_dp_common_rate(link_caps, 0);
 
-	return intel_dp_common_rate(intel_dp, len - 1);
+	return intel_dp_common_rate(link_caps, len - 1);
 }
 
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
@@ -195,7 +190,7 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps,
 				     const struct intel_dp_link_config_entry *lc)
 {
-	return intel_dp_common_rate(link_caps->dp, lc->link_rate_idx);
+	return intel_dp_common_rate(link_caps, lc->link_rate_idx);
 }
 
 static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
@@ -258,7 +253,7 @@ static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps)
 {
 	struct intel_dp_link_config max_link_limits = {
-		.rate = intel_dp_max_common_rate(link_caps->dp),
+		.rate = intel_dp_max_common_rate(link_caps),
 		.lane_count = intel_dp_link_caps_max_common_lane_count(link_caps),
 	};
 
@@ -454,9 +449,9 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 		link_params_changed = true;
 
 	/* TODO: Update these as part of the rest of max param updates. */
-	len = intel_dp_common_len_rate_limit(intel_dp, link_caps->max_limits.rate);
+	len = intel_dp_common_len_rate_limit(link_caps, link_caps->max_limits.rate);
 	if (len > 0)
-		link_caps->max_limits.rate = intel_dp_common_rate(intel_dp, len - 1);
+		link_caps->max_limits.rate = intel_dp_common_rate(link_caps, len - 1);
 
 	if (link_caps->max_limits.rate != old_max_limits.rate)
 		link_params_changed = true;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 992917505b0d1..db17f7ba19954 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -11,9 +11,9 @@ struct intel_dp;
 struct intel_dp_link_caps;
 struct intel_dp_link_config;
 
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
+int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
-int intel_dp_max_common_rate(struct intel_dp *intel_dp);
+int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
 					 const int **rates, int *num_rates);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9da8892a80df0..a89f9161b8329 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1812,7 +1812,7 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 	if (rate_index <= 0)
 		return -1;
 
-	new_rate = intel_dp_common_rate(intel_dp, rate_index - 1);
+	new_rate = intel_dp_common_rate(link_caps, rate_index - 1);
 
 	/* TODO: Make switching from UHBR to non-UHBR rates work. */
 	if (drm_dp_is_uhbr_rate(current_rate) != drm_dp_is_uhbr_rate(new_rate))
@@ -1839,6 +1839,7 @@ static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
 						  const struct intel_crtc_state *crtc_state,
 						  int *new_link_rate, int *new_lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int link_rate;
 	int lane_count;
 
@@ -1846,7 +1847,7 @@ static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
 	link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
 	if (link_rate < 0) {
 		lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
-		link_rate = intel_dp_max_common_rate(intel_dp);
+		link_rate = intel_dp_max_common_rate(link_caps);
 	}
 
 	if (lane_count < 0)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 0f1a6f9d47ec5..bccd3bfe32a2c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -58,7 +58,7 @@ static int kbytes_to_mbits(int kbytes)
 static int get_current_link_bw(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int rate = intel_dp_max_common_rate(intel_dp);
+	int rate = intel_dp_max_common_rate(link_caps);
 	int lane_count = intel_dp_link_caps_max_common_lane_count(link_caps);
 
 	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
-- 
2.49.1


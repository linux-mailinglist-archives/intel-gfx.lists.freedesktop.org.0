Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLHGAkpTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE46961C996
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B811130B6;
	Mon,  1 Jun 2026 09:39:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UZiOptMp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB3F1130C0;
 Mon,  1 Jun 2026 09:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306759; x=1811842759;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=5AQDFQ+Of2Z6tuS5bLR3fN9Nts/y3tsivnS/i87zxv4=;
 b=UZiOptMpHp4aWFMPI1usjjs4+GRwd/XOHTcq0Ky6yRLhDCy7I9WhutWo
 5Gpe3bm2ir9mIL1nJJ2ltayXHAeRAhHJPKbYGTQVHeqtU9uoLE4/I//rt
 IYHzgjweOj5ukypOEaTCcaco0yrf/6rwA4onPbStEV/nvMh8W1US8xdq1
 UJESL53kbNxX/nuWxPoZ2klyq34IhracEmqeKEpL1vH/fvzhP3XDx/qBt
 Pvdwjd05yCLgkhtrS4OV+/9XvJSfcni2OBwN5pWXo6z46fQDEKoo9Bypg
 8a15rq3kpKi2/1s/kh/hXfIFBswDOB4PVYd1D1mVQaIkv3Zs5S9ojmxIL w==;
X-CSE-ConnectionGUID: FFUyXsHCRMuQemkk3kHvSg==
X-CSE-MsgGUID: Wgrq43KIQLCa7jtEhqy2UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094047"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094047"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:19 -0700
X-CSE-ConnectionGUID: NK7iGG7hTLaeb358KsacUA==
X-CSE-MsgGUID: P5z3ccLITc+p2ExX8uQYpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160592"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:18 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:18 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xbzwrqP7Silha+bZopbXILk8NBhf9pmTsTte3LIdhqqeh9bt2Uxuuu6bAI4v632bL7aOBUuSAZ4v91gKa1iQJOMhDfhQpGkAvCdjnUSVW6xhpQ2j7/IHLW4wGqVW52bNJpT/JxzcPKHydLXZ9HKYiKI39TGVeEaWXqGHv65jHQUn1DFLRq31Rgs3mgtwlOgQiykdBbwgBYPuFhyOAYEa0sHjuXXNTaHfeqV7FwlNm9lwPnjvXxYTcdR8/MIBstWMuwJS7zMcN3h1kje3qoHa1Lld+mA5Y+g5L6FzDa7htMvyw33YK+wS3sBimc/lWor0h1l0k5EmxzgVRdNxXhM4EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O1jazjED2UOLWj/bephq/NEGb+oOb5+HX2QvDE7IfnE=;
 b=LOi4IKoo7SNbouvBbRo/26UwKt6RnVPxBjjtgFwxVlj8H83gmNs7YCA5ARffW4o/m/iYW4Xn/A0VKnHRxPmitNpK51ymkFjIe3+CXX1rMuLNDtsS4qPxVEmrDzEkD606ohHTYeGMp5eXnfvBRKJiLzLulKT2wG4Y+XHLsQTFOfzx0GS6095yK69HGDoHyklpnQZuBY/RsuTAexzYI+tlIeFdQiD8M4K3vDhv+tszgsxEzG6kd+j5wrMONnwZQaBU9roju09qFxF7cZy00bp0W3iHrncmMuaQeFp6sMAKrC6/b+tPgbFOtvM5XAZ+dHQGQbEwQqAblYkZveIPcq91ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:07 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 09/22] drm/i915/dp_link_training: Clamp sequential link
 training failure counter
Date: Mon, 1 Jun 2026 12:38:22 +0300
Message-ID: <20260601093836.3057345-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: 023765f1-4eb0-4018-3676-08debfc1a014
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 6HzcFEXStgK0S7+OV4dAW3rCybwrjSVTpD63Z9RfrLNs0+8VFmWu1v/IciuNpFTyGLTEftrQ4OwLPdiA79tOqqtjKcQF563Mqho7tUogJHraMvnJ/Q5mTo6uQJNjxuH9rJ0jBF8B8KweSXkNAYVt+8VgsKxFS5IDuV0oTtCjlcaxu4ssHhBVkQizDsOiXzNo2qzwwa6oq1P8q4oP++CNwvSrX/6hOPqu0GmRq3mc2fCYad96de+hsMWejRuaqE0oz//KjXUfSj+lJTfmyrR78YIoXxUU9CzPmc/XUcGcbb1D/UNMFLYHpX413ywwKTt4HDU6YSJSm0LIj3kcc30/3hjwmcV2W3bQk14yPPoqKtwAhCOebBwXa9qM2sWE+Ql2ESb2Nkxu0zaSiY3RAM4Q67GERO2VZ0VlpfMuiUYvBrcxGHrYdI0mcXlGezpimOZrpzAt3v5TG5eHi7JC7MqR6W24UQF2nAA/WNpmwxfzuiwLzDgPGWUZ3wVhfwiBwL2om/RcH6c3UAtzy2Ww9emG5u0mnUN0vm+jTRqsE4JsRLy9D6hwyfgwxrRSJueGB/ROHh+S1s/D92rg4RXWZyEUL6xiTh1oeNlpj6nyHoQHZsE6l8+c9EHreVricw7JtlWge76APw2rNeJB14gpQqlR7a8NmbjpBpQMg+vKTMtrGFpXmQGN+CAUYFv8dKs5DrQE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2GtWda822enRVou/tCFXrmd//SVIlCEfNhf4tLDIkJOmyLp4nUdgLUjkQ5OD?=
 =?us-ascii?Q?oduAJjSRFV8sBqdt+/Rr6qtJNwcqcCkgnF7ACFF9GQ9128nCpANjRn3AfyJ8?=
 =?us-ascii?Q?kBbNu9szVQ1rBdT5iARFbMOdMJSQAruVbLPsLTPkL6h0Zi36MGBo3Vojt5Nx?=
 =?us-ascii?Q?K6e8+ITbEDo12O1+9Tf3WbghiyzxfbDHZq7mDwI0O1staJyE1OCGnTQ4LzfW?=
 =?us-ascii?Q?BSt7eTTLvnputLnEMtVRS64euYKbIychjAdB1aqve1NvktCBqSWPv5LXCFMG?=
 =?us-ascii?Q?qo/fyQUkBKATD2vpBHTTaY85FvwBd3462G6jorEwQxXLUvu0bAqsxiFQ9hBx?=
 =?us-ascii?Q?CTy4MA/bwUc+5dGqP6Y/IxIAoctoD438CBgrZdF+ttLQ0Nj0vkMIj/7xbFOQ?=
 =?us-ascii?Q?bQo59B1W9qIE4TxtjwKmUT94aAO5y+wWcE2dCl724pOV5JcdiVJFK13AMYJd?=
 =?us-ascii?Q?ikbZq9ja/y+pBZQ9LhqKG6LDXV4euTOzeiqZ1jaXB2xZP2QlL48tcD8dqzET?=
 =?us-ascii?Q?QI3d9PK5kw5Yy0fnU66K9tk9A+QWBPXm4di91Ojc2UEk5sKkLHHKhabS/ZaR?=
 =?us-ascii?Q?8VZIeEAF9Qa/ufy2zly5UA8ROaQS9OIoeiL0adUN6Gqa+ke6NKLOpdCshNQL?=
 =?us-ascii?Q?cCEjvCabOLbh8s67jxr7H1Bvxh4ObjWeFB3QslU5+XW3XjqaDb2xWmPCfXnr?=
 =?us-ascii?Q?Ykkk7veeOtQd+3GLDwhlzy5y3g6JG2P6EB/FZNf/cjqNc8fIYDOQKW4GQfQX?=
 =?us-ascii?Q?d0FdNBoUrQRnhmEHB8JQInaTl04VNI17c9AfLa7bFuWmfkXe/p5jM3Uy/nEN?=
 =?us-ascii?Q?QlPVimE/7TUr8y9FGJ3lv/yEDVUhfrEkiRsdm7SE+WIk0eOE8RzFw6gt8mrP?=
 =?us-ascii?Q?qPXyHvoVZ92UJg9GZJ6mCwbOnxFox4oLjBqVSzDctwa1Ug2eKjGS6TI71ly7?=
 =?us-ascii?Q?OKxP8wEeVeyZOCoO4EZBZCy8VxEcLVxcdtGpUjYn2R3eiebc6BEjT6YnGX/X?=
 =?us-ascii?Q?rw8kUiQzMpJnLil7M/AZ/sewnmCDEy24IgRQQwhGfHUAHyZQY8PFqTr4moye?=
 =?us-ascii?Q?PpvHKxw6jPvRUqsm9yyqY4/pmX97yyUajH+yuUpnPA8w3+05tvqXa2QH1c1r?=
 =?us-ascii?Q?0b+IHAX1mcfrP9+rjlsTaAYYItdNBfIjLTQ1k++TsKCLJTli4F9nJqP9aftm?=
 =?us-ascii?Q?QvQple8oztlHq40ofPcv5kNlSZFOML7EIl+AVNNhcAXszBUUpIPzPHcQE/bE?=
 =?us-ascii?Q?P0kHlwI1w48Oz3iUBm4dXPTOp+Pa2bAzfn4mjVnfuc5wdLaBEkQgjpJWvIMf?=
 =?us-ascii?Q?zpuL7p3sVliPQy8NMki4BUnvRz+iGFUTISV9WyXTtsWj0VERgFcW0HYRpJi6?=
 =?us-ascii?Q?0D2txDcLw6+kslbaCkr+Xoi/21EQLKJ1pWLK3QD8t4bP1lVBlvrgClQbQd9W?=
 =?us-ascii?Q?SWJyz3SdVx3UHp5tZdS2RDMZRUfmmy+ntP7sRMyQ+2dikyNBy/7Qy8z/ukdr?=
 =?us-ascii?Q?WYaY71vbiFIPyWeimIjC2I0SxR51AtjdUIPoV1bILgrgMcB+lW0voTi3F5lH?=
 =?us-ascii?Q?hiJL2ZELeEeRWIsP3zVK57AxwHADKykBYkIZ+6YqurdW6gyNbjM03KNFncDl?=
 =?us-ascii?Q?M633158VuNnEmzuFfdjjIBnub/22KYBUtRGhefOLfYwjM9hVmUVGtA0KKBcN?=
 =?us-ascii?Q?8n1rjOUuhkPLY0Ab/bQ284/sOcf2kFbDyZvq+5PU2/4TmDkDYqPwme2TaxT7?=
 =?us-ascii?Q?smww0hajjA=3D=3D?=
X-Exchange-RoutingPolicyChecked: UPPcBhhUO6LWofhmDlbJHyrinfemPHJiNe0Z/JJPCqrQBtg/ZLdEL59ApMEAAkyyhi3TzF8JMYyISc9FuKs1vqfW3eNanjDXHkMn2992+FkLbhctt+S3RBCUAkZCI5hd17NJVMxRGT8OOH9aTBUNWMzj+p0YS8hIYRueHu+j3rZBZ5vUL2o/zxg8X5SjyaU0YyvGMNsIFHD+2uf3esrUIr0XNlp5r7eAjacEEl3yQYf4wp9K3XIoOgiav4znthjzbjpBBeeLdBD5Rt6wYxyxIsOjVky1KGQlS4MYMIyDusIkaZSXahBlnFB+3vrzIUuFEZixcvJ8jrUfqNLZb0Wm6Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 023765f1-4eb0-4018-3676-08debfc1a014
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:07.0674 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x0ZQxXxnJbFijBQ0357h8CxOFomnSgpRhVttE+S0VSMnKQkdRsLZw2pZc5xpm9qxkfG4jCoPbr9JHo5QJFwEaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
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
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AE46961C996
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Clamp link_training->seq_train_failures to MAX_SEQ_TRAIN_FAILURES to
avoid - an unlikely - overflow. This is ok, because the code only makes
a distinction between the cases where the counter is below or at the
limit.

This also prepares for replacing the counter with an enum in a follow-up
change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index e766f7c323f72..f03e05c730a25 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1831,7 +1831,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	link_training->seq_train_failures++;
+	if (link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
+		link_training->seq_train_failures++;
 
 	/*
 	 * Ignore the link failure in CI
-- 
2.49.1


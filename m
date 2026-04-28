Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IK6WDr6t8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF3F48524A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610D810EBA0;
	Tue, 28 Apr 2026 12:53:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GtXuCdqJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 416C610EB9F;
 Tue, 28 Apr 2026 12:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380794; x=1808916794;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=UKVWt24kBHVAsn/qsptV8galF2FMKz3pUjBFBaFjkrM=;
 b=GtXuCdqJPDsgXYi+SYnRH0CLvqHomVVX2rNyddGn5iuMcLMSb6Itkw7M
 GOTVARx9Xqm95zVcfqinwdUiqjLEKgUFeGCsJ1KRzxqom7Fn0NVxO7NvG
 qDVpWWxbOBNiLVNahd0VF8YzfVhxEEF8AU+cDtosQW/KmwM/0/4TTpw/y
 XPRZV8ukdrp5VEEkhSixZnX3SDXiunHzxTgHhRwc8Sj6ORZsr+ZqeGPMr
 B4QOywggQU7LLfqpWDHXjoa258XYOK7ni4DbKUyiIk3uQmJQx18/uBdwm
 uw2FLrxou3Q7KfSer96c+14yVwwWGQJ/hQOKxCYRUxCX3kLY3ERzq6u6V w==;
X-CSE-ConnectionGUID: pkfTCZJ7THKCe1ymIs/GbQ==
X-CSE-MsgGUID: 0hnEBnyIRneP+JjJTGYNDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398596"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398596"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:14 -0700
X-CSE-ConnectionGUID: 2jwi9u+gRky22SMply5sfg==
X-CSE-MsgGUID: NZA/75SLS9uo/52m5kqkoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911313"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:14 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:13 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:13 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=acUaBTJCWzWS1GuHlKHJmJYQYFbB17UOQ52MlpYbZs4i7D1ga/ByOTZiAtC9f3/PGCdGfZ2QDmf5eY8ovaH4cVuXBIGifeAD5FZvDzqjTiwaHXKNZVNvUwpr3/XAgxMLUmfkxUqGXvLjZlKB/IGymDo4UDBVWqqeClFZjH1+gSZ+0fvWoInJCXw4qCQGg970gmx0sY3kiNFyT+o+7oGdElLv15R44c28W/vl2sUvAmdr47T7QSJF2Ld2y3ShVWj+3YCFB8pMYyU8yeWwRwz71ImqfWdEkU29eIK7Tup9yS47+UIPmXZCbzVdFA3D5iM94JNJqHFlu8RVqRQYG9OAOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UqG4mtcNuIIoDRMvV/75gr20ZyAtRzA1uCu3aXIshr4=;
 b=jPXhc/z0h9sYiepDOFYnjmuA7a/pc9mMaoy272dfx+lK2xoyBVC0nGD2fpWVYpGheRJgUc8YFZJp6YqApXblePKUiWU4u43DXICNihaHqm4X+8KLbaU6t1wxRu9rIxwrCumC1d+rOnEBxRjQfs75E44kxIGjMRsCeGpoFWtLidws2ZxvQ08eFuIm0xuR/vUYjlXnvOWVcfzS7yqqciDCZqSNS/aOhLtIubBFhhrcKrQ5voDFcpF0YRDvFCOPqGWpzCn2TRXR0pFZWXHlodxwpP+n31GXd8EZFr7aSWd6d8Yflb3JTVl3DfwE9u8xLwev7xulKyPncPtyTliQWfJpvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 017/108] drm/i915/dp_link_training: Add helper to mark link
 training failure
Date: Tue, 28 Apr 2026 15:50:58 +0300
Message-ID: <20260428125233.1664668-18-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 97166d39-ec08-4ffc-b686-08dea5251908
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: IgEzmzFpvNee5tdoq+uvqwy3iNTPrC5jfT3PEwds9B9iaPX/BInIXFF+QsLrBohZu4yjBB7pqNLlQ0mJdRKaCeRedM85tKG0G8NKv8YsDr1+hJNj4Mc3uW5768+FAafdMQ0bQLodfHuVoaSWa1I7kyyOU13PZBXKNNyqLiVhWJM5kBSu6dESDIj6bFgVpQlvJ1NSgToVLG0qiEmBr1kcySFuv2WNywZo4U3FHfVkReAMJPI5j6Uh+FCkYrAic6iVxZpIrJTbuUqkadXo0TfGKyFx6FcfxIoOrUDMWqmqTWCiklqMLOv96YwZBram1TLA+JUB/CX4jj49qH0SIUTqf6n6EclQvO8lBGKK8Yj8y4jFt6CsZjXGfgT+JZkLrT+K4I9X0yA1lsWBE5Eaph9eygv1IxRKbUueMHtZToQ1L6nwxv5rnq8wMobWyz5p/kMQmxKaSBaTv/vVmtcVc05xjYmxSjI6N+MhUfyDqn7NiqO/HkPAeG4tzjT8OWf2ED+aFfWCFYwWW2V4C0p0cNBXCQNv4fpPcCn6S6G1tfoEu+qLMpS+e1y+xgeqbdxOiSfUObJsBwsIVyYzA/RO6sC77SNAtoWGXnCknPNZJRVG8QrzutxMOS3kNhu/ZZ7TSjjgjaU3JXB8/A4BlqBICoZnglJyac96R62gJTwweQ/+KlSgmc+fdrXteImnYsEPy32OHWdHnaXUcjTUouShQBIZOuV1kgxv3uhKFF/Ecb2+AZ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sY294cB+EkvVxJlu7HdRoGr0sr4Q+SUlPLTaJovlMZNPc2auSs8L6Qg2XaoV?=
 =?us-ascii?Q?K1zJ2YjRr0/FE/4JI6STjKfcx/BQUCR5W365z+JWfjrob1jclDKh3JarQcJB?=
 =?us-ascii?Q?TVoqtsAorCovrk54LxjvMfRtE74HmAputY9Tzih89LTMyo9uG8/quMk7mIcm?=
 =?us-ascii?Q?tjz6iiq+SEsXhfx7rk4pzTtw9nsXV4hKwXlrYA/WY/5U+Y65Rsp3jjTJ8j37?=
 =?us-ascii?Q?1UsGJvuuMznqYcmPrz18jETNrxo+yWv5+5mFDhD4+b2l0XOD8XEms6oKn2II?=
 =?us-ascii?Q?0ub8Xq68+SZAGsw3RcV9sRCS1gcg3fLolgYJqD14UKa4VCTJq1+CPia/QcE8?=
 =?us-ascii?Q?/za8dlSNJTRrdgEJmUJr487U1leYUIV41Iry5P/u7WfFzbl4cvAfPZTMWjl6?=
 =?us-ascii?Q?sdXeQCiSMG4WUnmxbp55kD8gZBFbBNaYcWONm0oJaDVumAAUEQQk7ntvcct1?=
 =?us-ascii?Q?h0rmUCGBcEureeDupa+TfdSJ72Go1skNDTsTMnYHpkbulLspQserZlb6lFLm?=
 =?us-ascii?Q?2WwsPQN1yH1VID1Ti0v4ogMR2Y6zauI0NyBqPyBnamqd/y7QaQ2wZPgiJM4Q?=
 =?us-ascii?Q?i+sVbLu4BnDaIN7Xzag7EDePVEVLZiF7MVxBka2FdmJj1igPVJeCuA7g/5U6?=
 =?us-ascii?Q?gnDcK5tcyy9/FRklQ57dgZAIu6jtIrWImSLSk9+jwU1itOxkSQph6D15+2wj?=
 =?us-ascii?Q?3r20dbaHC4/tUHhbxYq/c+JxQ3bTufpxk5TktlK7u0kbaOPmLf/Y544HwOuG?=
 =?us-ascii?Q?lKjX68D2fIw1aw9gio3Cf4bHLDL4vDnJx7CPMmzKnfoUDb5LTGAZ0QbxIbS5?=
 =?us-ascii?Q?UdXZdD0uXoKhqOLMtF3mVhKfOnGbiX4a7CpruSuOnf9BDQsueRdGsaDIJVRH?=
 =?us-ascii?Q?CpHSDLacqcPcjaAwUPzSYSLSSDrbd34z4tGCNzEKZMRzrf7WlTVJe3wyOLxn?=
 =?us-ascii?Q?wBNUMPTd7G5yufRlA2Nr++UrmfzNgK7WytJZaqr1HZoggG6xGERZAWmIKxuj?=
 =?us-ascii?Q?G5DLl5Gbw1xV7OXzqSrL7D/I4KCZh8XzcNClOGiuv2p56uwdFAsHHPtP9vnR?=
 =?us-ascii?Q?bDWH+xAZqsBO9Lf6DWrsINmIrMeitUyKnbZIYXrgiwW68Qo98+qNTSiBCra1?=
 =?us-ascii?Q?UHApBFB8Z6cz9ipY/fC4DgmQgtSmQYlVyTtq+poVQscphMtweXDemWpxm5AN?=
 =?us-ascii?Q?4x3yZ1ZwMXpdKqWzf3da50cP0kDkJqtLfgGJujfubhaZhobjF0EAT6+F2tqF?=
 =?us-ascii?Q?AwcrMhBlNndFUUqRT4ZqS3xn9kR/IaRjsQyb9v5V9tIakTLZkbSB3wQ7B8Ap?=
 =?us-ascii?Q?EGe7VG2GpgrQAhJhYVaS1FbUXCUGZQJ0OI0kW9VxVKN4NwjXl2yipi6x+E+t?=
 =?us-ascii?Q?L0dyD+yPNLsnmg0Jb16PIvXyRzaIVOMcpeD0YEO9ftMCV6z1QRWVjft1k+4a?=
 =?us-ascii?Q?8yuzEQAs6eM1ecpLpqs9nEtuz2imsiHnptaaPj5IxwcDuEzwNO8YY5P6Q8BS?=
 =?us-ascii?Q?ZwK9nv+i1MC9Ig790nLjTQ5ZtQWr8nqebd0tHCPMnKfWF5fvEWz8efpfpNPE?=
 =?us-ascii?Q?xpuHWEW8Of7gRMLOUEs6KueV4MTH6EKoEbyFospeesEiGLBcELIaPtHocfXQ?=
 =?us-ascii?Q?RkUdN6MJMJSkvhIaholqVG213DjlK48KHNAYfJPCDOMnmzgI8dmmEqzp06Qv?=
 =?us-ascii?Q?hNpUmuHRrl4mzWL+TRBOThB4GNsV+Lh7uNnfR2fAUkuDgk0Pu188DgWCukNc?=
 =?us-ascii?Q?f8zwMOC4Xg=3D=3D?=
X-Exchange-RoutingPolicyChecked: XndWS0Yup9Njv8F3V/Kb97h0AK6C58K+UeBrHWbraTpgt47ueeFgq99+GriapMKkvu1OrTFLSswu6oRKhbCzviLYTKaxnQ/FaeSkjkUcmkMl0tHmPerHuxUmDajPqi1rHr+xWyy5SwEigYYvtNRGnlUsPztsOCbHdvowLHCHTfO4TQjkHkRgQfckiyndF2w0tgzICPcXQ0TdL9lsVtz+iMsWeEe8Hlhhxc1ssCOd3xo062gsJrrSHhFettoapR+ztBmZXPInnSU8iz5yVH1Hbs2PGp33A6psnEVj2H0Ha5lGn2J2QqAQTTJJ6ZLoZ859tt/5uAudrgSzIVP8Slc4lA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 97166d39-ec08-4ffc-b686-08dea5251908
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:08.8043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ZpJrUnUGrC6bG6ZOuUrgPxHZPYzPL4GzSTfeUZBnQiGtXg82Cf/pe6C68/GUyH4ggiNCx+iEhkWf3Kw06hIiA==
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
X-Rspamd-Queue-Id: DBF3F48524A
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

Add link_recovery_mark_train_failure() to record the failure and make
the link recovery state transition explicit after a link training
failure: recovery can continue with an autoretrain, or must be handed
over to userspace after fallback selection.

This also prepares for replacing the sequential link training failure
counter with an enum in a follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 33 +++++++++++++++++--
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1c2cef7d61f37..eb922dca69c5b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1277,6 +1277,33 @@ link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
 	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
 }
 
+/**
+ * link_recovery_mark_train_failure - record a link training failure
+ * @link_training: link training state
+ *
+ * Record a link training failure and advance the recovery state to
+ * indicate the next required recovery step.
+ *
+ * The caller must proceed with recovery as instructed by the return
+ * value, either via automatic retraining or, once automatic retraining
+ * is no longer possible, via userspace modesets after fallback
+ * selection.
+ *
+ * Return:
+ * - %true  if recovery should continue via automatic retraining.
+ * - %false if automatic retraining is no longer possible and recovery
+ *          must be delegated to userspace.
+ */
+static bool
+link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
+{
+	if (link_recovery_autoretrain_allowed(link_training))
+		/* Move to autoretrain pending or autoretrain disabled state. */
+		link_training->seq_train_failures++;
+
+	return link_recovery_autoretrain_allowed(link_training);
+}
+
 /**
  * intel_dp_stop_link_train - stop link training
  * @intel_dp: DP struct
@@ -1813,6 +1840,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	struct intel_encoder *encoder = &dig_port->base;
 	struct intel_dp_link_training *link_training =
 		intel_dp->link.training;
+	bool can_autoretrain;
 	bool passed;
 	/*
 	 * Reinit the LTTPRs here to ensure that they are switched to
@@ -1844,8 +1872,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (link_recovery_autoretrain_allowed(link_training))
-		link_training->seq_train_failures++;
+	can_autoretrain = link_recovery_mark_train_failure(link_training);
 
 	/*
 	 * Ignore the link failure in CI
@@ -1864,7 +1891,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (link_recovery_autoretrain_allowed(link_training))
+	if (can_autoretrain)
 		return;
 
 	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
-- 
2.49.1


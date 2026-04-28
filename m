Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIJGBaSt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D5E4851D8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 190FF10EB7F;
	Tue, 28 Apr 2026 12:52:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="POit0xS7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6620810EB30;
 Tue, 28 Apr 2026 12:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380768; x=1808916768;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=fmlhzKYyRlr7BIBqWbVfK3zezGHaKicYx0KJe5axs4A=;
 b=POit0xS79NrLZbDbC34u6Nh4RXiP+WS7VllchYogObQQuMWo6ulD3aCU
 58ohMk265MddPwwETzvCDE+DgHUeE+60z5RqA0j6FEAXk3IIW05iIw/JY
 RruniVkpGbCS0yIShAWnQP7YraJmW/XSozVebLuGJ/qT0bIQ7mvDOxMjp
 1Vc4kaUwnZzzJntRu+4IZocbQn5a+nZ1uDgpAI7S052v3GjtDTZlDopPZ
 oO5LKRJBKGyfPmM+lEq6GrrDjPleriQBPtwYxgDQ08b7WvxiCvlAkkc/s
 Ew7wJCNp4ydZxTz31p+VToqHYG1x47xgT0ltkf3Klnta9zKvxHGaeF5sq g==;
X-CSE-ConnectionGUID: w2yDsENZTAquUpNK3a2XpQ==
X-CSE-MsgGUID: 2+Dx2K5sRDaEIxIFVEDMQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398552"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398552"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:48 -0700
X-CSE-ConnectionGUID: RgkTMYq1QS2t2Zxn9aruPQ==
X-CSE-MsgGUID: sjPea3I5RnWapGATXLlEvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911264"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:47 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:47 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HtR8Wn5DP8IVC/MQ4OfejUfnFPvMuS0T1h8ovoDZzYdYpMO0VwCZlWKK7w4Bzmgm4f21rjMDchUWHpVWv2hA5Lijq5a/3ZaBi7Q5YhsZAuzk06xwUum1DxTc4QnXD7kA0G6zl6Ta9mt1LoMv08OPijnUHySDEApl0ZoLmWvJ9zpEsA0O4lIoP2VeRik4LBAwLni0acNZGHS2CT/QY3baPqfL0JMVsRpsVz4xURX8slPUcT/0bJhE4YCCwkuGskiAdItJ0M2Yl2vAYa5jflVpZYSDfA7PHemj5xa8p0nqh21rTfQ/J4RMJHaDb2J/ytyg/MOundU/Hqpzj+LbhJUosg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dbjs8rNpvb+Ej1LQB3rB4sNZJsUfIFR2R3logecWs9Y=;
 b=TE9fJQrFt+/uafQveDFINXZSxHTzjE0DuTbxCneHt61Y20rtkXIOzuFfrqMi93rM2yzIyAdxOBEssxGPhYJJ1ogqwfoE8QUkxpD/9ptMjatu+TFsB8fVolHqu7l0P1jdQvnOdBcZQWP45Oa+VQJkKNTyzhQXmrSw7KqlGsTGxHmswqoiWJhlZfwg36gyXNTNYJO2yJsi0/57hzWsKrI1L9mCd5O7adWSzzWIkA5dmfW/7IO0MNlHvU5sb3fCqKKCFzCnJObfzRP8XNdg0/MfCghJ1wVWwKa8HkQ6FFpk2CdOkFzNJN77ZcQMrUYQP355qIQ9RFKDzqWqZZdenZNKVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:44 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:42 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 001/108] drm/i915/dp: Move clamping max link rate to common
 rates setup
Date: Tue, 28 Apr 2026 15:50:42 +0300
Message-ID: <20260428125233.1664668-2-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: abd552b4-4942-4486-0ddf-08dea5250954
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: DJPcSv3XkaofNvh6wTShOV1dkyR13rQjQLdjvXmxH2pltDnC+gXDfoRsiqUlLiBU/MTjJicPRyzDc8BPZklbunzADT6ndXnvep9RVgC5MxcKFJiG4uYNy1ZuKNIuYB0rQqSu5Xs+fsZ3LTtAX5lxNOFDMlo5SJbtZwpZAxighCegqqX+OCeO5aQ/zA18UFLo+oh83h+2ugi+6KUCWEviA6vIbsa9Vtnz+oMZpJUVxRK5TXQbHJmuWpLUYv7HMgwegCB0jFJYCoHVs3wjqDHKf7IPRse5DO9gdmpTkX0wK+J1/WXXBRMTupTksHZZS3gZpvx0X5H2F/s/8gt9fEFjlwyzH6R22NSUuLlApKXAWdZglK+MPhcjG/xGOI69J0Hm9HLMCkH8/WSA5gBTztYXrbCJ6WzNmaqH8fIMiYczDnI6djDEmjXQ0gc2BOEHWccPBKVY2Wqf2RPpU5lAHc7GY0AD5avrGb4wNsEDP2jtv8MIcIFK1fYQYXjPwUmwOh3DyLz/s2q732FyMz3U8oHSWDSsJVZLGUQJqcDOG54PB913s7LuybnmYOGh28gvMl4hzOeSG/T8fHRUuwMpfA0gYGJI67VRR6ElXnipiCSACLI4AH6DLjE3YaFByQBGJ4zfGNedCHDbE0AV9YvxF61jK3XFwD/tk3V4Gr7UYNTFHKLN65mdbqHZLn2ENSBz3oL4qjrvnIRVVbbMPpjGQ+zPsExEvsW0+Ni9Htq/g0ulZJI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/o+RPqeYlChQGgnHhFv1ST22KOYRq+kCb1P2CgYb57a17UNpjLoOLAG17Pt1?=
 =?us-ascii?Q?pdOJp4iUDmSiKyQ/7pN1yi43/bnTCc5+fya1Zu0YV3Fg4lq1VNXE4udwu7GE?=
 =?us-ascii?Q?mUu2nPWe+T2b+AYrbAo3Ox8bC7HcgLV00cME0eYTiv6NtxN5QlKTfFY84bsY?=
 =?us-ascii?Q?9c9UwfF71Q9wMgCAjvxpbIlh/4CIJgqLkGKlkeS6bUSX9fzwYwe2B27nkguD?=
 =?us-ascii?Q?Mg7ZEkiquKWejlsrjEoIwwB/lRFdL6l2/Bdv/ajZHE7EGZ+rFWF2dpMSrUuY?=
 =?us-ascii?Q?YxaaSTqj0U9JxqD+ZsakJyQ5PjN1+7x1epQvDstaQcWZMNvqzpyF33bcfQ9T?=
 =?us-ascii?Q?lIlT6/FXhpktKAuwoNzFgYTlb5AAVCkf1riG5TOLuuTFfpP9s+vV+twgQwjl?=
 =?us-ascii?Q?ia79oXKnXw96OD7lhJuQhyab/XBjdMSxMNJtSwFCwRH8NYPGY4Sk6G5y7ppu?=
 =?us-ascii?Q?wF7R5vIEeELwTV8h6L/NDHx7nehT9WgKfsBOzFQ8iL8uZ+uQdjOdkqS+z2yy?=
 =?us-ascii?Q?ZJpGL83LGmss3KECpkHF8cmVOrJ0nklSLW7YxIOt9Pkffi+j+ALReOTDGDD1?=
 =?us-ascii?Q?DikT3y0gZwFMYD68+0F37sULAmqvY8A9focddmi8tMqgeWa4QMH0N2mKgB+p?=
 =?us-ascii?Q?6zFwhgnRWpnT75lu6vGprsUYHG0lwC92zxqNczMsu3wmFTODPPqtrCQ4dBFo?=
 =?us-ascii?Q?a2ZbTPjjsv8rw1DGTRosgWyhgW3iMAb1G8VBIQFmPytItvkwH69T5wkCnTfP?=
 =?us-ascii?Q?Vi2eXI5JlxFQ6nSYj2jhF3vI66kI3d4HKd/2xC3ARoJTddBRO2Omb30Y1EFR?=
 =?us-ascii?Q?GoW3fUYRtc50aOLJsGmN1EJXfhEhyvd24fX0kaSMrS9l/JVn/njwV8USjTcX?=
 =?us-ascii?Q?XV9QBIsCQimYkniEHJM1mVOnK+fr7QdajZ4tOQjX5irM8nWcEx0zo50WeH1J?=
 =?us-ascii?Q?K+CA7RHfbjlev6KL3L/VTVmEu0t356jOxP1lrr1W1WmZcvdlpT/0Dd1vcpF5?=
 =?us-ascii?Q?o8KyDKJV0ey+yd+nEieRLd0HoWDTTOb5h8RbvfQQ585a66GdLecCFC7wYx3F?=
 =?us-ascii?Q?3Mgatca8YS44wMoo8PrgaywqMWr5sqfqnR4WGQ5cZQPtnpK/eB/cmRJyGrPr?=
 =?us-ascii?Q?04H9avVQzT842g+DSKWYfW66653c0iipgQxY9H3vNIlccOa61NuFxYXy3Tzl?=
 =?us-ascii?Q?ZGwQoi2zvBhDO5z9+2jeEPFJFuH5j5+EFNv2F+aBu3AV0nU2D+KqT2HdQeLg?=
 =?us-ascii?Q?PVu4TbLgGObncTQvyTQOwMT1ucyDMI5zdjPcBk7XTq+psczYuJPPhTo8HY5f?=
 =?us-ascii?Q?h24cJItN//s5ViYvwaer4ktRDMuQStH8/H0dr4O2oA1Ileyvm1kavZt69+mh?=
 =?us-ascii?Q?Fib/ZJM5LlTO+gjoebq27INHpLydBlnB2oJ77rcHgShn9mVv4/2ayghJfdqD?=
 =?us-ascii?Q?pNuIOf5gac/yat5lSwG4e7gpJT0LG0SHguIRtwgpzSv5vheDPxsmKThbh9Xn?=
 =?us-ascii?Q?jM3JEl/eTQLy6EZm79yiRKtG+Kh0B8oRUSVY+XdzrVfE95tx5kYOXhE32HHB?=
 =?us-ascii?Q?NvNvXmPxMe+Ma8x8tVThGSuhPjtnNOjMf9OYrahgy+Xtrv9U98hPdujw8rOj?=
 =?us-ascii?Q?Ni1TMSySt7uUxK9nx2a5EbfY2mRsBFD01ZsbDBr5eaA0AYMQYXI3hUfV5fk3?=
 =?us-ascii?Q?xCkTLwOh/71diIE3/iKtBWWRAsIbFzrB+Mag7fGlBFfDB9iaho4XVCxe3vTU?=
 =?us-ascii?Q?INnCLEVCCQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: QGlZb0sN6YiT7pFWUiPAFzeFpMLwnz+EzeJE4n47g+T4E0jr6ncJN+kn+fxzm1GdzT7xwyrOiEah+bqF2JI81RrG84U3pO31BzJcnRM/lwH724osvDLeNIBB8sm2SZaof2eo6vAIdPI0mepZpCYiH8mnMSBN9TC4oB2uEoh3szMRTIC+DuOeaWhxZVXoHKtp81DYlxLOOBFqtqknizk8iBL6wYvPTzcT98aZHgEHZO7BWX56ixFBbBPHKxqxPQ81riz5vatwztoB9fSiKyNxBfP1FFBcFQ8AoacrckaL1OnIGb6bEA6gbEuusELS9X7mblaowNYDZlRgE2x1Ra+w+g==
X-MS-Exchange-CrossTenant-Network-Message-Id: abd552b4-4942-4486-0ddf-08dea5250954
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:42.4051 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xQn50I2B68yg0ib+yZQiDrNzRrq9gGnaFDTxt+mxbGNU8r4P7YX1HnxWGw0Qbdqx7TvENhmCYz2tHIqb1vxMEA==
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
X-Rspamd-Queue-Id: 99D5E4851D8
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

Limit intel_dp->link.max_rate already in intel_dp_set_common_rates(), so
it always gets updated alongside the common rates.

This prepares for detecting changes in the supported link capabilities
(common rates, lane count, and max_rate) in follow-up changes in this
patchset, allowing automatic link retraining to be re-enabled and the
maximum link parameters to be updated after such capability changes.

During the first connector probing after a sink is connected, the common
rates will be detected in intel_dp_set_common_rates() without
intel_dp->link.max_rate being set (after driver loading) or reset (after
the previous sink got disconnected) to the current sink's maximum
supported rate. In those cases max_rate will be reset in
intel_dp_reset_link_params() called after the common rates detection.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8631df908b07f..c6a961d02a4bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -790,6 +790,7 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int len;
 
 	drm_WARN_ON(display->drm,
 		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
@@ -807,6 +808,10 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 	}
 
 	intel_dp_link_config_init(intel_dp);
+
+	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
+	if (len > 0)
+		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, len - 1);
 }
 
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
@@ -1677,14 +1682,10 @@ static int forced_link_rate(struct intel_dp *intel_dp)
 int
 intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
-	int len;
-
 	if (intel_dp->link.force_rate)
 		return forced_link_rate(intel_dp);
 
-	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
-
-	return intel_dp_common_rate(intel_dp, len - 1);
+	return intel_dp->link.max_rate;
 }
 
 static int
-- 
2.49.1


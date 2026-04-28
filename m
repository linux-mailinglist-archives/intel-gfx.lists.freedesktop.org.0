Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qF01GkWu8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1C4485597
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0A910ECA5;
	Tue, 28 Apr 2026 12:55:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M1LxUVW6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89C110EC7D;
 Tue, 28 Apr 2026 12:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380926; x=1808916926;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Ih+0UbGnSakzb2FeHG9ByJ9bBemizJrrClflQO1Eso4=;
 b=M1LxUVW68GSfZBsFJyCKIDKqspRgh4K1yE2bkyK/jTfcvZ0MQz4cZZEs
 NFAVsH4Rw/hhaGkrBGQjEIz+zjUTg7D18mecrlBTaIvqCGNLLv9ET+zE2
 5swgU3ek8BIEamLs79iv6xXyY6oH0bdbMvDQ8nB7unk1j4Bwe/Mz0Jmuz
 Rt8E0V5lzjNTPrlu0c9Cj/5Qrx1Ts+YtB8IsvJnahWmSj9ezZ5NnWV8KS
 rz1LsyZ1MogZZVWBKrXrUULsngYTx3CEVwgdu8ukk0Kq6AATec0MTLTkK
 lGu3+hBL0I8tV2qK1/Yr0S3BqMAwZl4pkCQlKSIQtQucfZeIUY+TPKkAA Q==;
X-CSE-ConnectionGUID: ms0W4FcqTRK1aff3deHXYw==
X-CSE-MsgGUID: bIkzWJWmSR6PRX7gDploAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318776"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318776"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:25 -0700
X-CSE-ConnectionGUID: fQv20yzWS6a+pvEAWyxwQQ==
X-CSE-MsgGUID: Fnae8otUQvufVcMKUlEDwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818240"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:26 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:24 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:24 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.47)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rc1lPF3wCywXLTj+KGUKUHD5mv5RoZ97kUiXk2F72SUxaSxf4oatOPZDGwN70t9ghIj5cRVs0SVJ2686H3ipbgEtCKI5km/Q+3FN/FLtwJPwBzS1Oz7vKuSsr9PEE4sDcy+CSZt2mEhnoD+qE1XgaVaiaYvtjBsiywrTezQ5cqFL9u3hWBOYG1RglbR5tq9sHR0G0FhfxnP/whKVYyHMRBSjweHZUOwvldTnsXegtrUhVsiqJvcdFCJ5w4L91Am5tji9wsjfIqAE6fAJAHCeyOqFeD29yhN8ux+Jim+Kj/MWcAaYf8WXwn/QzzgKbJPaQ+1qRNnjzXSzZw1O54cTIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g+4z8vpfabY+IpCm+sSYa82vnHZOTr42oKpiHg27Oec=;
 b=bn1d7IEuuGDRToiH9udXGm+n8QTqMk91HXMjdpA4qmLGx9qgnY2o7beF+7AHOlqQsPwm/eFQb2oDuyXUIpvThxgRgRKXCUXo9LUFBJ6MNFPEBnGQp+UA+ZhjH1o3btF0BfwjrBLHWkmKlHz8rN0zShemKhRU4lt5sdLw5eGlcWiduLbEaOayi8ElTEnJ2wCgtbUf8TpJrjtQBgJkOaqFpQ1Wp2q0iay4GasiRqlLXHbQeQ0DRkO5TSLQyxcYExlXn5WjrDfj+pLUCLb+8+Ck6NLH5m8GAX0SS/4S/5PySkwOMzRk2mNEBcA0TMnBX7pF3zsscXGjjm+ILqRVxJaVvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 088/108] drm/i915/dp_link_caps: Account for disabled configs
 during max link info update
Date: Tue, 28 Apr 2026 15:52:09 +0300
Message-ID: <20260428125233.1664668-89-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e8b6532-37ca-49ee-f521-08dea5255e07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: iis0rIrhoHL7cOf3KLW/a9q4so8kMvyfchnq6I4HApR8TPg0XJALEvpZqIz0soPM07R66HOfE7tGVQPF6MAc9GubsNx11BM50vZMNDZam/Kv5haS7NQSf4aoeA3jFRD07L1uGRybZQTkS38JdOPzdDNginkAqf8iV3oLF4u+YKN5C9dWfkyRLM2NPyhA41q7LF6hb4Oqr8YP0Rm5jAyu6taFGuTscmtFYHsO6p4InehgPA6imRiqafJGF3WmYPY6IvflITCzyZk0mbV0vK03Iwx7XrUD0QcPYmwTFbU0vOnJSp5aTigdGYFy+iiT4M5r1TcAD0oSgsms4SGSsPvBuERa+CZU6nwDOxNL+XIew2WcccJb3YbCEmn3LJgyfCl7aTMDzt3fPCzUySidZd3K0Vtmgt0Ffk9MJWJWoYm+S0gnWOkrznV4b7wMyQjCfrLHKougmb+CYpxaPm2siOhA8cGKdSFmGRQ8WI92L1q8rC7RhSXKoUwD/VWZmYOyLrtpgmtwcqAQHz2NzsR8fdVfHecfbLnwaPodAQ9HLtYjiZFAqQ0P332CDy7lgoutg72tE2/asqaDHqQ6KOQSkQo4CyXyzS+hFgBJ4WTse9QiDIS5+jcKQh8KWxNAb9zIhWOayGHykkJX13RxWrHrFKHNUQlq6y/cSaHYyMrGLpXQOBp0w9zYsqBsiiyCEGHr3Ys8I+ZgdeYWJadXpXNPpE7LBONJlXWJM0AXdoiSnQR0LzM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2TbhvNvp7lH7Qu5Xg9yU4uUw4k523AVghtaz2m9Mzkws8afEQm47WDV+H/vg?=
 =?us-ascii?Q?BsZG0pe72PXGu775iE5yKf0vwcTWIKs+qPqdWpD4OOgxB/ljDLt2+Y//brNS?=
 =?us-ascii?Q?9wqVq6BeUnlztYz/Mg1UgXeq+nrA8J2xa4ivXno8+Onsl5rHvvL6C+p+AobO?=
 =?us-ascii?Q?TMxgZjyWknlufz8YJcPZhDPhzjyrdrDaW2zc2fmEHeK9varRwBcqqxdJLf3U?=
 =?us-ascii?Q?TreC+95z1d9dbJ0eWXI5WUgW74W1G4ObHRY53WCuQmbY7irbrgme8bQk5cJ8?=
 =?us-ascii?Q?3O/pWKbPU+g/X4GaWVEUaaWEF2XPLDxZYK4GJmPlctJMIX406/W/oXwW92pC?=
 =?us-ascii?Q?Z/8nGrV7jtk4J5lW//IclgtqSFx9DXwR5DXNZtXrB+v4a0TsZEv6t9Lhihit?=
 =?us-ascii?Q?APyqn+c2nXfk+kH7u1tM0rL3Rs9pMwwkHz+eQ9UjvCShFLpaTMNB+WkIhNSR?=
 =?us-ascii?Q?yuCtvI2uGPxaNKmpSt92vvJ1mwU13cGyOeQ4+MXxOTQ1jr8PG0+bQJHw+kLg?=
 =?us-ascii?Q?Td7a6lo+QTzxtRMteswF1OkUr7vqkrAnpBd61vhQioIsYbDtVBYBksMhcNGs?=
 =?us-ascii?Q?EpLvr+NHUn2rkCcAL8NUl2eVVrFkdMtK0/rLoZUreBWgxSyIYjc4G2tjjahG?=
 =?us-ascii?Q?ZJ/ZGhxmnXSmAvibJribR5VOqWK9yz4tH3MEcIrRH77/xoqtOOX77By5Orb+?=
 =?us-ascii?Q?Q6lvlhVoMr76q88MFHaaay9fRRF7tw3tlq3lIusmyLzZUQPwO9pBZWMK12pE?=
 =?us-ascii?Q?mRBR9SHFbvkaHHexP1IXltK22IzDRukQb2/AxXWgufymwehv92oETRluc9Sz?=
 =?us-ascii?Q?bXZrxqsNwBE7UVs9HC+u7OBgjP4Gk200GVeTHWlZaNVZkaCDnOzf1XgME0uA?=
 =?us-ascii?Q?l1vQHccchbcdRNKczmQvH2HVqi92jKjy/7mfqHn6FcMqF9kMsIKrfulrAPUF?=
 =?us-ascii?Q?PzaWv7Yobflqc0k5YQZShwG5qp3ceLizCjlm5jsaTzenQFZwRb1bp35oh0oc?=
 =?us-ascii?Q?7L1/Vte/ox7DZQDlh3eB1XzFf6vDfzMmQfBLVs33y/1v/16PdUl+RJzRqv5h?=
 =?us-ascii?Q?LoOlBnFuYF4+/SDCF4mwz9NWwl65LxvZ5JHehsjNELIxUBknRNpP93SMZoN7?=
 =?us-ascii?Q?2J7bNNdgBkoutD6gldk0CHOYlvMWmpKibsJ9B6a5CPQ3ecel4vi1RAqcYIDb?=
 =?us-ascii?Q?P9pyVpwp91IwG01pSMFE7sqFJbtfqS7h1v8h+yMRu0NOsbCheT8Ynl3xhGrQ?=
 =?us-ascii?Q?5xbb4G5moELevzV3OPkucvuhv9q2kKXZlChKCUfVgeUz4oRPw3Olp57MDiuH?=
 =?us-ascii?Q?qmCW1P96RMoy8KEI85abf2YCpsaUNOP/GvEf4W4EA6sCkNji7s+VZEl97UOJ?=
 =?us-ascii?Q?j76cdNOWNqgGBGqxGrQTRwZJgwv76OoqLYtjrACto6Prnys2rZypPMRAKsgD?=
 =?us-ascii?Q?5HpF6ZuP7R+K74sJ9CqMMe4P8fICpXIA665o6QaHYgHHG/q7G9VlFLwa/1ZZ?=
 =?us-ascii?Q?D76h785ZlOqqk1kW+35IQhTWLlUq7IAHZXkRthz/OzRdUuqFU39hDkaTtlNj?=
 =?us-ascii?Q?W35SWDD/VyELuM+79KHvdHzMs9+21bki0qyoUfyadOUT5c3m1gcIipa3ejV8?=
 =?us-ascii?Q?vuU9HOS2fZlkyu1ehqRw86JyFg4cmZT0g/xzw5fLq3KniWcahOfo4/nnUWdV?=
 =?us-ascii?Q?ZRkV5RplVetxPv6D87GAFyrp943tQBOnHaVVqiFf6oVzn4aR29ID8LojIWB8?=
 =?us-ascii?Q?6ku1OSCXLg=3D=3D?=
X-Exchange-RoutingPolicyChecked: BgQER220RO+X7CCk04Lu3iRumFihCCo69Sy/58Zd2aaw9BgZp6Gbk7SrZWx0PhROQc2chBHSsFq11WiL2hDBeovmntrdWdGSqyBEp/h5bgGGciqxSRrQlsyAMK6TtdyYVDiot76yjpcIlv7J8ZJ9byezdp6jN0k7GqYYGlvYbV7trhnQswCCbsh/WaJoyW1+GpSKt/hiPS+ifS6U7IbHDwZlnw40gTtcTKG/y6NACFQ5VpaJWe2L3/GdB+4D1UIRPxS8jv8WkDjeEvAkeXtjiiYosey4cFNkyu8IeB1gsP28KiBEPPxrTiO+N88czyvJ4YflMR7PmJ86GLtlwqw4sg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e8b6532-37ca-49ee-f521-08dea5255e07
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:04.7101 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2oJfYU5wmqUIXHz5ra6t688WPmONOw+itAQUfPUpTluMsSie0qk60xs8b6n5ZaAvhi8BmHj5kFlq9uf4Q03iZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: 1A1C4485597
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

Account for disabled configurations when updating the maximum link
limits.

If a capability update leaves no allowed configuration, re-enable the
minimum configuration and reset the maximum link limits so at least one
configuration remains available.

Also add a helper to look up a configuration by its canonical index,
needed by the recovery path above and by follow-up modeset state
computation logic.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 116 +++++++++++++++++-
 .../gpu/drm/i915/display/intel_dp_link_caps.h |   3 +
 2 files changed, 116 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 9b69e7642717b..d53cd416a4e09 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -595,6 +595,42 @@ bool intel_dp_link_caps_get_config_by_pos(struct intel_dp_link_caps *link_caps,
 				       config, config_idx);
 }
 
+static bool config_idx_is_valid(struct intel_dp_link_caps *link_caps, int config_idx)
+{
+	if (link_config_idx_to_rate_idx(config_idx) >=
+	    link_caps->config_table.num_rates)
+		return false;
+
+	if (link_config_idx_to_lane_count(config_idx) >
+	    link_caps->config_table.max_lane_count)
+		return false;
+
+	return true;
+}
+
+/**
+ * intel_dp_link_caps_get_config_by_idx - get config for a given config index
+ * @link_caps: link capabilities state
+ * @config_idx: configuration index to look up
+ * @config: returned link configuration
+ *
+ * Look up the link configuration identified by @config_idx.
+ *
+ * Return:
+ * - %true  if @config_idx is valid, storing the configuration in @config.
+ * - %false if @config_idx is invalid.
+ */
+bool intel_dp_link_caps_get_config_by_idx(struct intel_dp_link_caps *link_caps, int config_idx,
+					  struct intel_dp_link_config *config)
+{
+	if (!config_idx_is_valid(link_caps, config_idx))
+		return false;
+
+	to_intel_dp_link_config(&link_caps->config_table, config_idx, config);
+
+	return true;
+}
+
 static bool is_within_percent(int actual, int nominal, int percent)
 {
 	int diff = abs(actual - nominal);
@@ -714,9 +750,15 @@ static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps
 	set_max_link_limits_no_update(link_caps, &max_link_limits);
 }
 
+static void reset_max_link_limits_reenable_all_no_update(struct intel_dp_link_caps *link_caps)
+{
+	link_caps->config_table.disabled_config_mask = 0;
+	reset_max_link_limits_no_update(link_caps);
+}
+
 static void reset_all_restrictions_no_update(struct intel_dp_link_caps *link_caps)
 {
-	reset_max_link_limits_no_update(link_caps);
+	reset_max_link_limits_reenable_all_no_update(link_caps);
 	link_caps->forced_params = INTEL_DP_LINK_CONFIG_NULL;
 }
 
@@ -759,20 +801,41 @@ static void compute_max_link_limits(struct intel_dp_link_caps *link_caps,
  * derived from that same set, so it can only be less than or equal to
  * the stored max_limits.
  *
+ * In addition, configurations may be disabled, further constraining the
+ * allowed set.
+ *
+ * Although the allowed mask itself depends on max_limits, this update
+ * must not change the effective allowed set. The recomputed limits still
+ * cover every configuration that is currently allowed.
+ *
  * A %false return indicates an internal error (either the stored
  * max_limits was below all allowed configurations, or
  * compute_max_link_limits() returned a larger value). The caller must
  * recover by removing all restrictions.
  *
+ * A %false return may also indicate an invalid state, e.g. after a sink
+ * capability update removes rates or lane counts and leaves no allowed
+ * configuration. The caller must restore a state where at least one
+ * configuration is enabled (see sanitize_disallowed_config()).
+ *
  * Return:
  * - %true  if max_limits was updated successfully.
- * - %false if an internal error was detected.
+ * - %false if an internal error was detected or the state is invalid.
  */
 static bool update_max_link_limits(struct intel_dp_link_caps *link_caps)
 {
 	struct intel_display *display = to_intel_display(link_caps->dp);
+	u32 old_allowed_mask = intel_dp_link_caps_get_allowed_config_mask(link_caps);
 	struct intel_dp_link_config new_limits;
 
+	/*
+	 * If the stored max_limits is below all enabled and forced
+	 * configurations, the allowed mask is empty. Fail and let the caller
+	 * recover (see function documentation).
+	 */
+	if (!old_allowed_mask)
+		return false;
+
 	compute_max_link_limits(link_caps, &new_limits);
 
 	if (drm_WARN_ON(display->drm,
@@ -782,8 +845,25 @@ static bool update_max_link_limits(struct intel_dp_link_caps *link_caps)
 			new_limits.lane_count > link_caps->max_limits.lane_count))
 		return false;
 
+	/*
+	 * The allowed mask shouldn't have changed, since the bounds could
+	 * only get updated due to configs that were already disabled in the
+	 * old mask. So the new limit values will not disable any configs.
+	 */
 	link_caps->max_limits = new_limits;
 
+	/*
+	 * Updating max_limits above must not change the allowed mask.
+	 *
+	 * The old allowed mask is already constrained by the old stored max_limits.
+	 * Since the recomputed max_limits is derived from that same allowed set, it
+	 * cannot exclude any configuration that was previously allowed.
+	 */
+	if (drm_WARN_ON(display->drm,
+			old_allowed_mask !=
+			intel_dp_link_caps_get_allowed_config_mask(link_caps)))
+		return false;
+
 	return true;
 }
 
@@ -893,6 +973,34 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 	update_max_link_info(link_caps);
 }
 
+static void enable_link_config_no_update(struct intel_dp_link_caps *link_caps, int config_idx)
+{
+	struct intel_display *display = to_intel_display(link_caps->dp);
+
+	if (drm_WARN_ON(display->drm, !config_idx_is_valid(link_caps, config_idx)))
+		return;
+
+	link_caps->config_table.disabled_config_mask &= ~BIT(config_idx);
+}
+
+static void sanitize_disallowed_config(struct intel_dp_link_caps *link_caps)
+{
+	struct intel_display *display = to_intel_display(link_caps->dp);
+	struct intel_dp_link_config min_link_config;
+
+	if (intel_dp_link_caps_get_allowed_config_mask(link_caps))
+		return;
+
+	drm_dbg_kms(display->drm,
+		    "No allowed link config left, force enable the minimum config\n");
+
+	if (!intel_dp_link_caps_get_config_by_idx(link_caps, 0, &min_link_config))
+		return;
+
+	enable_link_config_no_update(link_caps, 0);
+	reset_max_link_limits_no_update(link_caps);
+}
+
 static int intel_dp_link_config_bw(const struct intel_dp_link_config *link_config)
 {
 	return drm_dp_max_dprx_data_rate(link_config->rate, link_config->lane_count);
@@ -1105,6 +1213,8 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	if (update_mode == INTEL_DP_LINK_CAPS_UPDATE_RESET)
 		reset_max_link_limits_no_update(link_caps);
 
+	sanitize_disallowed_config(link_caps);
+
 	/*
 	 * A failure could be only due to a bug, the update function handles
 	 * that case by removing all restriction and resetting the max limit
@@ -1135,7 +1245,7 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
  */
 void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps)
 {
-	reset_max_link_limits_no_update(link_caps);
+	reset_max_link_limits_reenable_all_no_update(link_caps);
 	/* On failure the following removes all restrictions. */
 	update_max_link_info(link_caps);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 939586c74e644..009bee0f7dffb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -180,6 +180,9 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 u32 intel_dp_link_caps_get_allowed_config_mask(struct intel_dp_link_caps *link_caps);
 
+bool intel_dp_link_caps_get_config_by_idx(struct intel_dp_link_caps *link_caps,
+					  int config_idx,
+					  struct intel_dp_link_config *config);
 bool
 intel_dp_link_caps_get_config_by_pos(struct intel_dp_link_caps *link_caps,
 				     struct intel_dp_link_caps_config_order config_order,
-- 
2.49.1


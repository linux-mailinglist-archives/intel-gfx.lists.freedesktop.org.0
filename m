Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 21YNCUczRWpm8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EAF6EF49F
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cyQwJGkG;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D2A10EFD8;
	Wed,  1 Jul 2026 15:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 968DC10EFCB;
 Wed,  1 Jul 2026 15:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782920004; x=1814456004;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=b37/5E+GLj91auZEYyZ42P0KSIG/wWFfUyOJVbI5cKY=;
 b=cyQwJGkGfPUN2lRQvQdDYUqb63pFHZ8R6hrLoq9AUPTUnjmRbhTZdQjn
 4CMDnHYdFxY+Z1clZZMhkZq3J9DVnOaG1EHquwLHfNHRLvepo4Lp1J8P1
 zgfBHumXfmt3JXcoJOhK2ACohQTSSAp0SNsG/9cf2Y2gK1T6U8XC76iLe
 kYI32Kv+EGwgdqYjItwosbbekkmP4VFdmMPSXEJKZ0RRIgq6JNGzFearX
 scNHAND4iNADbpZbsc9uL7v+8P0MhEc3ZKa8VNeb2Rm90zsnUlv9pAM8/
 eFx4Ua7VRLA0wbzss51aehZDqcF0r/ymYh0xA8XfKPpL881xALrSrFpDo w==;
X-CSE-ConnectionGUID: EIZCuGg3RX6rMLEB6r+HGQ==
X-CSE-MsgGUID: h3gvbMInQoum79n33C79lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310162"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310162"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:23 -0700
X-CSE-ConnectionGUID: a4gDRweaTGilAr8THDWlQg==
X-CSE-MsgGUID: 86Pv4K+dSN2mxvMANAXQTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515711"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:22 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bSUZZn1r5sB1qFjzxWJGKA3goFjdexxNn7rNWI8hCV/8TohLcen8BzBpSGB4ujO3/qrEDSgLB+d9sUAv6BsH+sucNRQ35PSOnSyUJc+nuXy3TDDYZVLzHYK3WcKEBpdKTGArHa8CuJ5t/HtHwsZ9abWpoSB2DMdehiues778M6cei49G7se/iTtc9yvIHh+ySUOjPdo/Dk8PyfEoW7Vs07+aO6mc4ke7I19o5nfAJzfhXTg8XTzny8EZVEY8PqlA+VwuH7fT1M6ugCEf1JISiZ5D8A4Zehwg/6uWn9AxUToMMC7e5A7T3rPBqhKo9mpvzRg2+4wOcRv2SQCBmWJ6Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ctCLDgMK4IHhwlqeBd05hzjibXfcpQVpmlGe10ge1Rw=;
 b=QdS4ZvMfO3n5IDAeu7jZUD/QEE2YFcvT6+kdfSBO6iHRuAa52KrbQX09dyWqGbkvpSmdjKTP/132JCCkjPk0HqiL0FI9oCYU4HT94Cqm0XDRcFs4Ndz6z5VY/mYcRDGe5inUDoKB+Ba8bJJ1p30C7X/cJI2lrjtNi9d3+LfqV5FvJvOf7v0qK8qWoUt41lHrBdUh/G4Nq4ypPbDR6EQo8Hw1JEcCxJzcD33VOO9nmtSNUno6Dne3IbXS9/Dvjp7SMmOOWiD4mBV0mSdO457BmdLtJIz4NeWNGwTDlfsPH6iT8xt+QI3yaZ85TLriFMR/ErKO6ONOWL+dyDgWxC1YEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:11 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:11 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 25/34] drm/i915/dp_link_training: Disable failed config
 during fallback
Date: Wed, 1 Jul 2026 18:31:54 +0300
Message-ID: <20260701153204.4124150-26-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CY8PR11MB7826:EE_
X-MS-Office365-Filtering-Correlation-Id: 4afe4e02-fb0b-4a86-9140-08ded7860d98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|3023799007|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: JvNbUpCjQpESjFUUUMxnOwHJ24kOEBPTYKg6oc4T8TocDcIuqVxYQUg7la8DtVw6xHMpNthTrbfq40N8bCjkqWmpCWPckossv7gfFyHKOE0Et8T1vM61WnPD/rE2qPHDk+7YDN9EgN80a4L9dmValUr56fClJdDsKTrNR0NlmyYasKTjI4dtWfmCCj0Qh5Y0lhPTB50SMMqMD599umyBkWaWymlzG2yLKjGNAHQOraxBqDSXke4KRywDHWVcIN24k50wYMmgJPccLcOpHZxija2LoiJ92uAtVzlk4uQHDhqa3avfP5xyfQuQ39UkwdO67v9t5ct5BuIbAJtv2Yfd32olOn+dKgVKaSP3qHxTcpRb8c3PNFbWoDI80TnizREP1JAnZO9C531eaFEMpeHMH6IGtHyPTACQ2d/NpWhcxlzOB4C+axT0n4jJdPcVX3hfAbvol99ENUzDuyxjuWjHitRuXA0EfZTSZucOSJ4F1B2zangQVhrm+sKPzeOOBYk3dqMmBCkcOQ23clX/KH0WXlPf1pNVXkRY/vRq3oHi71dAU0bxW2XjHgtfuhWWH/pGcRkX5xEE4NxIQ1LR1LsdPcj2qqx8saW08YgtTpHi1xktMY7C2s94lDS9u81vxd7gqYhpvwBSLiAoS3WzRTz9Bhf1ueWbs3Vb5ptfJ3gx89c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(3023799007)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D/dxEU/wNcQlStMkX5E+w7c75hF2YeJroU0SVl7hr1lDcd1wtj+EoiGlKoOb?=
 =?us-ascii?Q?MxTJHeyOuPR6lly2+BvDuYE7DBkedihAC778Qh+8PPrT4HQ0IxvlR/DP1HjH?=
 =?us-ascii?Q?qeUIP7Aru6DmFXCY0j3lWdUkqPxbCsVP1+FHb3VqJO6jn2OdMOEh7ms7KQJo?=
 =?us-ascii?Q?dUMmJWneRNRBMIjzgPblTi3B81uAwGckY29/UWSbLUzKt9n+Y4i1TbicREex?=
 =?us-ascii?Q?/zSLr+TxfkrwQuWsyrdFQlJVvUHOEf/FwRQIi5GJOl3yeTmNI1g/IgxGtOv6?=
 =?us-ascii?Q?o+4bHg9MEQnffKemyL5SWgayiR/qsBTW4m+hOM9I61a43tTyP2ltdxzBV1f3?=
 =?us-ascii?Q?kmiNKSUJ6o1DBtqNbuOFA6mx4g379VBjLZsDlYIn8No5eosnj3M9b8shPISg?=
 =?us-ascii?Q?BucPWGHP4FcmvfKZJJtNuSo7XMkn/EEipks9ooiliOTXouNT409w6/J+Fu9K?=
 =?us-ascii?Q?IrrHq5VuajT+PxL1oX9bBRmkEpo2gS37JOn1VADxqxUBreaXN1uv3CZcbSWu?=
 =?us-ascii?Q?HoA9ZD9NzEA/81f1hTyBr9WqMqUkmg+8mICyfVH9YlAxf0GGc0pkuHFhPqRB?=
 =?us-ascii?Q?yCrBDEeiXBoToKyims1m+vP8xYvSzxhnLgIXNkyuMAa359Kzzb7+/LvndZaG?=
 =?us-ascii?Q?SvSfiEvBS8SzZ83fVonHneXbssrGpxXeBIslzVAxTMT5HV2TqF6auF7WC2dR?=
 =?us-ascii?Q?vHRzEthlFg3BvBCsEXs5hMF675xvjU+U1fcEEBJNOuWW80U2fU8iIDGLPVfO?=
 =?us-ascii?Q?elmp6HPk0vCSMgxHRn/VXJqmzFtYAG1wRLFJVxGgqWY/T4lXrLEJ4kcZEhTn?=
 =?us-ascii?Q?j+ldINytzZn6EkTV7y5eMy5dsX/FVL/gxzQZE523g1Eo7c+ZrSe8Umy0UThZ?=
 =?us-ascii?Q?pYV0zf6tuZ77wAsShjrDrK+JZ/O5vgb4vUWI1uwuc9NV/Jrv6pKQHPFq8Il2?=
 =?us-ascii?Q?LYeoil8yhq/m/h0tpP0zEpCMVFVQTuJPgwkfimCVKtPF5LT+agbvW8Lrod3Y?=
 =?us-ascii?Q?UYZTCharymjhv+n57Q+F2EdgLpsBaWWM90HV2Dk6UYi7NQ8980lsZ6bzTy8v?=
 =?us-ascii?Q?5rmLKqGDofxFeeAm68tPkv/MM5R1ZQBWZeLbCNL5EO3Q4qhHWw5rt8Cv/iQ/?=
 =?us-ascii?Q?o5UopyKKT5RSLfd4fH8Oyf1A2FLgcQkA6Xt4B1AvfiJFIZfXaN55WF6SBhEx?=
 =?us-ascii?Q?1URHtKZ93b/5u/OS/DgSrqO4lrNW0l5/lyaLaOC3nAMEVYMn5DjlmrvIPQ0K?=
 =?us-ascii?Q?RlNDQfnBhCTUiOsQrlWYXU32/4MNEc0Q3Y2w3CPW1VGznKv5hJrdK/eHlyUm?=
 =?us-ascii?Q?T4TGk+ZpuQytQHyW7gYVnz8Xo3HlBKriYj165GBgNeVfv8gAp2lzKBsl1YKQ?=
 =?us-ascii?Q?VMP/0HpK4KHbXn6I07ArppnRNm9yoIT856v8JtQz0Y2/lLAfRiYshuLKYUIL?=
 =?us-ascii?Q?MVnv4oJVsyB47T2gAUDq3hQjolbrH6VAKgAyY8VKlAeVQcwdGWh6d07Zm3Uw?=
 =?us-ascii?Q?nIOYqIvD6+Ue0pLCIRdRuwMtCtCjeMY/kQJ7aBTwWvXO76HgkVGLOKe9MvrE?=
 =?us-ascii?Q?ohiaEfFecPxPJXOHSS9fd+RGbQEndRM3s2KXSkdZ0dJnWsAh+77sEm6jjXLQ?=
 =?us-ascii?Q?IgU6rC5qO7BOGRv6GLgdvlGndh+kch6uukm6iarSs0a2iaP/VAntIf2Fsaj2?=
 =?us-ascii?Q?BIYtb56LwWttLNjLJ3pPssKF+ef8J+o5PeN1tgCiHMe6W/DG0XJyTb/2PfkN?=
 =?us-ascii?Q?xiZc6dTXAg=3D=3D?=
X-Exchange-RoutingPolicyChecked: EA84zea3+6UyHiUoswXw8C1927vGQZGFra4WLjsDPY/VCc2ZziojIpKmP6U6XC1TV/UjPxE1hZY3IqjrB5gQMk9kstzHyCjk1AlR7olkVy01YOys8uVPxKusI684CtfueU7hUC4EBbC5KuNvsfBto5r2p7NhTiEj9OpfWKDzUrsOsLVwKO8gyiJ3gtWjc7NPf62ncKC5HIsRbYFW5SHayYugsW9lFY8yqvI145K3xzOYqkPP17OItRJaz+g4Im03wEfhp45BMkSzJpGD92oADhBq2SdFI6WkXRTZg4O03FC7RWCdXQHzgI5PoPt98OJKzAwJFztPNjs0UwmZaex35Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4afe4e02-fb0b-4a86-9140-08ded7860d98
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:08.8919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BZtwwtMvf7RMj9JcbLdk/Xbj56c/nXsIakqHeJ15xMmDcvqzRIXW0RKnzM84o3dauO4xvMlF440rRmmqWDvwUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7826
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
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
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B1EAF6EF49F

Disable the link configuration that failed training when selecting
fallback parameters.

Fallback still selects the next configuration using the existing
fallback order, but now also removes the failed configuration from the
allowed set. Functionally, this only affects the case where an MST <-> SST
mode switch occurs on the same root connector: previously, a configuration
that failed training in one mode could be reused in the other mode due
to the differing config iteration orders.

The current fallback logic also sets a temporary maximum link limit
across the allowed configurations to constrain subsequent modesets. This
legacy behavior is preserved for now; it will be removed once the
fallback logic relies solely on the individually disabled configurations
to restrict the allowed set.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 55 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  3 +
 .../drm/i915/display/intel_dp_link_training.c | 19 +++++++
 3 files changed, 77 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index c947e6511fbc5..76b7c0fc90115 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -596,6 +596,21 @@ bool intel_dp_link_caps_filter_add(struct intel_dp_link_caps *link_caps,
 	return true;
 }
 
+static bool intel_dp_link_caps_filter_remove(struct intel_dp_link_caps *link_caps,
+					     struct intel_dp_link_caps_filter *filter,
+					     const struct intel_dp_link_config *config)
+{
+	int idx;
+
+	idx = find_config_idx(link_caps, get_allowed_config_filter(link_caps), config);
+	if (idx < 0)
+		return false;
+
+	filter->config_mask &= ~BIT(idx);
+
+	return true;
+}
+
 static void set_max_link_limits(struct intel_dp_link_caps *link_caps,
 				const struct intel_dp_link_config *max_link_limits)
 {
@@ -618,6 +633,46 @@ static void reset_max_link_limits_reenable_all(struct intel_dp_link_caps *link_c
 	reset_max_link_limits(link_caps);
 }
 
+/**
+ * intel_dp_link_caps_disable_config - disable a configuration
+ * @link_caps: link capabilities state
+ * @config: configuration to disable
+ *
+ * Disable the configuration identified by @config. This removes the
+ * configuration from the set of allowed configurations. The disabling
+ * shouldn't leave the remaining configuration set empty.
+ *
+ * The configuration remains disallowed until intel_dp_link_caps() with
+ * reset=%true or changed sink capabilities is called, or
+ * intel_dp_link_caps_reset() is called. Each of these happens after a
+ * new sink is connected or the currently connected sink changes its
+ * capabilities.
+ *
+ * Return:
+ * - %true  if @config was valid and the derived state was updated.
+ * - %false if @config was invalid or the remaining configuration set
+ *   would remain empty.
+ */
+bool intel_dp_link_caps_disable_config(struct intel_dp_link_caps *link_caps,
+				       const struct intel_dp_link_config *config)
+{
+	struct intel_dp_link_caps_filter enabled_configs = link_caps->enabled_configs;
+	struct intel_dp_link_config forced_params;
+
+	if (!intel_dp_link_caps_filter_remove(link_caps, &enabled_configs, config))
+		return false;
+
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+
+	if (!calc_allowed_config_filter(link_caps, enabled_configs,
+					&link_caps->max_limits, &forced_params).config_mask)
+		return false;
+
+	link_caps->enabled_configs = enabled_configs;
+
+	return true;
+}
+
 /**
  * intel_dp_link_caps_get_max_limits - get the current maximum link limits
  * @link_caps: link capabilities state
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 5c0d660062149..56c585eb5a135 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -136,6 +136,9 @@ bool intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_caps,
 void intel_dp_link_caps_get_max_bw_config(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *max_config);
 
+bool intel_dp_link_caps_disable_config(struct intel_dp_link_caps *link_caps,
+				       const struct intel_dp_link_config *config);
+
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1c12503908d80..a592bfab5ff0e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1894,6 +1894,10 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config max_link_limits;
+	struct intel_dp_link_config current_config = {
+		.rate = crtc_state->port_clock,
+		.lane_count = crtc_state->lane_count,
+	};
 	int new_link_rate;
 	int new_lane_count;
 	int err = -1;
@@ -1920,6 +1924,13 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
 	intel_dp_link_caps_reset_max_limits(link_caps);
 
+	/*
+	 * TODO: Make fallback depend only on disabling the current config,
+	 * once max_limit no longer constrains the allowed config set. Then
+	 * disabling the current config will define the allowed configs for
+	 * the subsequent modeset, so there will be no need to select a
+	 * reduced config separately here.
+	 */
 	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate, &new_lane_count))
 		goto out_restore_max_limits;
 
@@ -1933,6 +1944,14 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		goto out_restore_max_limits;
 	}
 
+	/*
+	 * Shouldn't fail: the current config was enabled, and reducing the
+	 * link parameters should still leave the fallback config allowed.
+	 */
+	if (drm_WARN_ON(display->drm,
+			!intel_dp_link_caps_disable_config(link_caps, &current_config)))
+		return -1;
+
 	lt_dbg(intel_dp, DP_PHY_DPRX,
 	       "Reducing link parameters from %dx%d to %dx%d\n",
 	       crtc_state->lane_count, crtc_state->port_clock,
-- 
2.49.1


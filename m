Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFxVJKKt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E91974851D0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EAB10EB6B;
	Tue, 28 Apr 2026 12:52:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RyTV7Ydk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C07810EB30;
 Tue, 28 Apr 2026 12:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380767; x=1808916767; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=HJEvdnbb8TLX4SwirowyEiCS6qKu8yk93sgORCtMasw=;
 b=RyTV7Ydk/MOjVol6e9V7ambz7cpbn3HsflYl633DquwhOJ7umivlY4iG
 OlZBDIrWbeVyCt4wP/g7nVvOTDT5fC+wvyIt86RUrGRMycRsrsg7C36zd
 3tYetegeMKlKC1APp8GiQxTbfKkI/Ddj2IMBxoQx772ys66kQ9LcgoJfR
 fTbskGaDdcrjAnaQjW0xizQJeAYE7WRPribsUeKoJfn8tDkFZtOiCrMvz
 LDDpl1oPlGov0Satkb3u8mnWVtQTHd3BXU2j04CgaKCEGluDH8uKYCOUs
 g/5DsXd+F0j0PUryBvx8INqTMOBLw6CNSqJSVY6GKwqecs5tK3EaOoC3M Q==;
X-CSE-ConnectionGUID: /smGec4+QQWzKS/5ZYEWJg==
X-CSE-MsgGUID: d8r+SLW/RCC84/Wx+Suaag==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203011"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203011"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:46 -0700
X-CSE-ConnectionGUID: dxmFlP35TgiTDmEfwg8RSg==
X-CSE-MsgGUID: Zm8LxUl6R46F5/3aJ8+LrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234243767"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:46 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:46 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SblV0Vw1ExQjvkAvEaOnR6L6sxuwQ8f09IYn+O+RneWaCIRpECN/C4/XsG2fK/p5oCn+13fWU6m7Lz8EAOM2ZrnwbluyRSJkIDroZD1KBm88F2D6Dm2iq8gURqkCJcCqYKdmQGrwFQ583dmZakXp+RBUgh4LdIKBLRRbcfVVz7fVYAWVMOpnd0z/142hKnOEN8w5olOeQBsv2kKy2S486+BtQ3PtUTZLq0iBpwOnDMZytQl4xu/EPLW5PI9cCYBtFoA27KrpmAHm9zHncDtj834+Cx4Tmp7Mf6JTbo6+tNSM2y3DGvAjlKM2YdRwCo9Nr5VgBE2BEmfJdStQDjjKQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SnLilyb0NeWqxjNbO5JM9ZfSNW4aGHDoMrbg3MjvmDI=;
 b=CIizaLUniCv2mF8iD2ugrMfi97aveUgyqPogvjAKhsogs1TVg6nYd+wxT4iLYBlQqYVMEiNKUsffMTWNFSHDp6mQJnO4qaBTsblxGT6TIo+JtazCesNCndcrQIoVUL23rjrPMLUpwP7Y4J+miH0WWcZMx21hv+lnMtGD5dNxOWRjGB27Dp1SSX1pmUEUksSVW+QhkUSMK9f6R53/sfNqmDNhHXWmIRypsdka5XDVyC/jGxtv1aCzpx8cQLgAkv8coy9wBKQYULuhmb0ky5/6ngMY2EzCaM2Qfu77582vTZkWmaTPmTL/HaWPmTTygnKlj9o9766szKvxuY6GHHnSLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:40 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 000/108] drm/i915/dp_link: Refactor DP link capability logic
Date: Tue, 28 Apr 2026 15:50:41 +0300
Message-ID: <20260428125233.1664668-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
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
X-MS-Office365-Filtering-Correlation-Id: 931be09d-c140-489e-6d00-08dea525085d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: +BRzFhY3PZpIt3w9GK1v3hoTjc6jrZg0tVDtx22/uURB3/vNCKIWuA83BmhKxbo6hjf6FS3D4vAZgqY6/GYFkU56T+kup6sOBN76Nftn0ZkeeKqGryzbE9Jlq4/fcV4hsTBQFHn837M6CGJRT2kk4jRHRfmhHeIU+O/TLeWEkR2DKl6df9L79d6IqYBm9o1qgx3uuMmEIyb+eGHFHJ1sIyb3upZhDZ71DbjoN30GwfvEfznS8H6t4PnEiY/t9kU/WxLTM02h/Qp+vKEJCVZqn2KQN7EWzE4wobAjy1wJTYVMKBpYRZajVBHB4MdJjEJNfGyQZvMi8XG6pVKYQhuHtbuSZgGhIgWogSflFXTGCkDPro6O/VpQK1JbhYBhfmUSgOnSPF4gzXTOtt4Odkv4IuaADJseL9AMXLkSjuzg58+VfJ5sf1vviXyoCIR5/Mu3MuYv/oGOA6P76viNjynb28wzwXMl6PPPKecpe5fiK2E7d2+7FJgAh3fGfGkHP/d5KP2+yZSVgJi32I89+3IQtruQYmIkamtEqcz6oTRQ0IycXnEO5BVAx66NVpiLjVSTBgNjdYIjKADyjHOICUjF6hJbw1lDB4WYWDGiHrSbmy4Abmro7LWnRRB2opny5QUVBUWNDL5TlOax1x/CSM4+0MvZZpyehbzGPWoK2s5WzkocV8BRiwYb6FdQ9kpBdGXPbMOOQgywvR8liih5603NAPiWCAB7xJjdYklXzxg47QI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6NhNm6e4jdU9DulaAo90p0b83BcI9xtJzJ0V1oDC+jn6nxmK3hAbqn5fvDRi?=
 =?us-ascii?Q?HB13Z6luciARg0g/GgmsyN26D4qf8dsvQxJjOOsm5U0TFzwte0I9u1K4COsj?=
 =?us-ascii?Q?V3bBwLROxXm1AhS1vR4nOPV2aCfv1VhVkR0uxb/DYnJ+yLCA2w1bZEevpkW1?=
 =?us-ascii?Q?kvLK6yKOOkzPpziNmTctJon+5o66JL8M/zZ2dvbtBnEzdVJxcd+tQL8B1JMG?=
 =?us-ascii?Q?huB9ZGNpTYo3GU20yWgHGIN9iI1sEqmvnLLpn98IqhS40L3DCPBpDnK94Il/?=
 =?us-ascii?Q?Ez1mqoAvKVCWOvLHiA0VJGbRw3QGMc0lfVdy5Sn/MHN9+X/+KLUWkezMQbXJ?=
 =?us-ascii?Q?mN3VzibtJTGK+b8H0sIMEvA06gP4OGsBELeDkSKEsBei2NVf5qw+Nd+feaNe?=
 =?us-ascii?Q?Z7+zxR1abnZIUfmyIlv4iBZEcIg1HSQP+Ku+6JXfAz8EqSPEISxAv6T+9RaH?=
 =?us-ascii?Q?0O1WHg79s1KBv5msbF1vWbzvpdc2h+9uJO5TrPG6kFB6Nd/Oe2iNSGfyfQFJ?=
 =?us-ascii?Q?2voSA+hEYlXx6Gn57Ydy33ZmxXqJ9gtE+pxLjxO6FF37VEETi6d3DYtLNFQk?=
 =?us-ascii?Q?uE24qLH5nfK3Dm6FI2qnctGEvU1jlm6fAen6HscDn9eWhxl1Y90eaoyT02S5?=
 =?us-ascii?Q?fENYhO+GyX7uNXR39EjwOUrvhECiBdN7+48zFIve9Cfly+MHKqLNR/+roD64?=
 =?us-ascii?Q?+CdHEIYmCMDPu4sF3uENOpiouEt7ma6CzlwGAENauW1m3nioshRfcaDHn9if?=
 =?us-ascii?Q?/tcx4Fspa84wTuRse8E5uKoJQofr8ZmjAlrWmG6wJkw7Cnj7dZYaLArugp+8?=
 =?us-ascii?Q?MR1PvhmjMAbl62hhVxG4a943nFncIB5Suf27bqUPJGurnvCIIOmbp9ajq9O9?=
 =?us-ascii?Q?Gj0AMu4yFfpj0CSN7LoBeqbe1FAz8YjAGLpbkLm3aWe32QMkKnxWZtnhhi4A?=
 =?us-ascii?Q?M/7uhNthfc5pjyIvwJYH1RkD3DaIBN7EfiIk210IMH6MaBal7fnA1U/clNTA?=
 =?us-ascii?Q?XBaNBmxCdaxvQAB/0b7n4F0CcxpOxdnXhLiSAjBOF27IXmfBUbCCjOeuf9hI?=
 =?us-ascii?Q?e8dbdfdnQTv7SUE3QHtE1rb9R4ywEEXOCOaUMtBvMyUsbIsqt0E0ATLjlf+6?=
 =?us-ascii?Q?xk8SFNypnxpCgk3m9exwxX5kuNl8EzFTwkbKrCDC69M4hsd2Lclc0NX5+Ti/?=
 =?us-ascii?Q?DOk9wismM2c8AB/sGKDjvf9K0SU3twp+9DSiYrXTEJXr7IMO/ThKF8jhEkM1?=
 =?us-ascii?Q?qExGbHPwEbNcHBjrSZix48tzLDgXQhfkIniyjJA4Rf2FqVClBTnyrElW+/oX?=
 =?us-ascii?Q?5gnmnLaJ46zubWbhoGO8eOyD6ABGYv4atDAlKBqDsYM1tm8Z90Nyf/QVb9k0?=
 =?us-ascii?Q?tkS8S4ckGJZJIkY/AyYOLiBTsBLae9Lhn6SFIBt2eE10HzeOM1EeafmhjaAL?=
 =?us-ascii?Q?76OYraajV3hi67pPuOmYzvjqLoZ292DsH1xT4yROVIRSDSwY6MbLxpT+Y2gL?=
 =?us-ascii?Q?Qd6WZKlBzyHpBFPkT+0n9KukiHzbWYkE7950mG5mNZYryYVdj6uvaLeSjbfM?=
 =?us-ascii?Q?CJW9NJjLKpUYyVPvdeJZ8kkbe4AYuUqMjonkA3q+PfEGXFo+Hju+g8h02xvT?=
 =?us-ascii?Q?fJVzXpikCmZZMlphVl1w6mzHsYnFEE0VO2e4tP3FCTK695febRu4GkxDCRAI?=
 =?us-ascii?Q?gXRKu2H965KWAuQhf1+f4LOiNfRd0yK1vQIWZiCrj42f0tGDDmavWWoOXwdB?=
 =?us-ascii?Q?Gfe9PPfegQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: coRHuGs2Tb7nY6GN8MSWrKqshm7OV/GboEVnhWAIyUw6vMQ8SmUx9cylKy8S29EiPVi7lRMRYP2Y5dOQc2/xy78mee4ck1v9xcAldLm1LcrJNWuf0TdnPrsrX/N0pPSNZsavY7EHFl0GOqHsiNaCWdb1KWkUboxZ3UxSQfb1B5v2/+Noi6tOEFcA6kFYqzAm0Zecf1WOw9kROoJePInwuBcmTXssxgaOOaxvvBQrijHd5l6W99L4h34x0ugdP32SngueFAIKrOZ/m6wZhtiDTioaHsZfDwwnl35wLEfPqa7buo+O1ghkSjm6oL4Tm0GgG8CdbFV+kDfzG5Z1Ight7Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 931be09d-c140-489e-6d00-08dea525085d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:40.8271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /hcROvnhqpyyxEF+EgFgRzdbnd6/Bf00uipOQVyIEKUREE/Hjrij1SbxkNOQkQVL+3ER7eqEYaHuoCkg3TS8sQ==
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
X-Rspamd-Queue-Id: E91974851D0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

This series separates DP link capability handling from link training and
recovery and introduces a consistent model for link configuration
selection during state computation and fallback, with KUnit tests
validating the behavior. The patchset is also available at [1].

The issues addressed are as follows:

  Link state computation:
  - Diverging logic for selecting a link configuration for eDP, DP SST,
    and DP MST, for both non-DSC and DSC cases.

  Link training fallback:
  - Diverging policies for selecting fallback link configurations after
    link training failures for eDP, DP SST, and DP MST.
  - Inflexible fallback selection, setting a maximum link rate/lane count
    for subsequent modesets, preventing the use of link configurations
    that have not failed during link training and so could still work.
  - eDP and DP SST fallback order not compliant with the DP standard,
    using a descending lane/rate order instead of bandwidth order.
  - eDP and DP SST fallback lane/rate order not matching the link
    state compuation's rate/lane order.
  - The above inflexible fallback order resulting in inconsistent
    reporting of the valid connector modes for eDP and DP SST after a
    link training failure. Modes may disappear and reappear during the
    fallback sequence.

  Link training recovery:
  - Unclear semantics between driver-driven and userspace-driven recovery.
  - Unclear distinction between modeset failures and actual link training
    failures during automatic retraining, and lack of proper handling of
    the former.

  Interaction of link state computation, fallback and recovery:
  - Handling of the supported-, allowed-, forced-, fallback-link
    configurations, and link recovery decisions are intertwined across
    multiple modules with direct access/mutation of the relevant state,
    instead of having clear interfaces for these.
  - Lack of documentation and unit test coverage for the handling of
    link-capabilities, -configurations and for the fallback/recovery
    logic.

This patchset addresses the above primarily by introducing a central
link capability module (intel_dp_link_caps.c) and restructuring the
detection of link capabilities, link state computation, fallback and
recovery to query and adjust link configurations exclusively via that
interface.

The current behavior is preserved for both modeset state computation and
link training fallback/recovery logic. For now this patchset will enable
setting a particular link configuration ordering on a per-connector
basis (both as a default based on the connector type and as a dynamic
setting); that in turn allows - as a follow-up to this patchset - to
switch over to a unified, bandwidth-based fallback policy by simply
changing the ordering for a given connector type.

The changes in more detail are (everywhere assuming the switch-over to
the new scheme as a follow-up based on the above):

  Link state computation:
  - Unify link configuration selection logic for eDP, DP SST, and DP
    MST, for both non-DSC and DSC cases, using the same interface to
    query and adjust the allowed link configuration set, using the same
    configuration ordering for this.

  Link training fallback:
  - Unified fallback selection mechanism across connector types,
    matching the mechanism of the link state computation phase.
  - Enable a more fine-grained fallback policy by disabling only the
    link configuration that failed link training, preserving the rest
    for subsequent modesets.
  - Align fallback ordering with that of the link state computation.
  - Ensure a consistent view of supported connector modes across
    fallback sequences.

  Link training recovery:
  - Clarify and separate driver-driven and userspace-driven recovery
    semantics, and document these.
  - Distinguish modeset failures from link training failures during
    automatic retraining and handle modeset failures appropriately.

  Interaction of link state computation, fallback and recovery:
  - Separate the tracking of supported link configurations - based on
    the sink's detected capabilities - and selection of fallback
    configurations into their dedicated modules, with a well-defined
    interface to query and adjust the configurations available for a
    modeset:

    Detection               Computation  (intel_dp.c)
       |                          |
       | adjust             query |
       |                          |
       +----> Capabilities <------+      (intel_dp_link_caps.c)
                   ^
                   | adjust/query
                   |
               Fallback                  (intel_dp_link_training.c)

  - Ensure consistent link configuration ordering across computation
    and fallback phases.
  - Add detailed documentation and test coverage for the link
    capabilities interface and the link recovery logic.

Patchset layout:

  This is a large series because the interfaces and state tracking for
  link-state computation, fallback, and recovery are intertwined across
  multiple modules. They also rely on direct access to, and mutation of,
  state instead of a proper interface, so untangling this was involved.
  
  Nevertheless, most changes are mechanical code movement and renaming:
  separating link training and link capability handling from the generic
  DP code and moving them into dedicated modules.
  
  A large part of both the link training and link caps portions of this
  series follows the same idea:

  1. Move existing helpers accessing link training or link caps state.
  2. Add new helpers for accessing that state, converting all direct
     users to use them.
  3. Move the state to be internal to the respective module.

  Later parts (notably the link capability module) depend on earlier
  refactoring of link training. The rationale for submitting all the
  changes in a single patchset is twofold:

  1. The last segment, adding the link capability interface, requires all
     previous refactoring to both generic DP and link training code.
  2. The purpose of much of the earlier refactoring only becomes clear
     in the context of the last segment adding the link capability
     interface. All intermediate steps in those segments prepare for the
     introduction of the link capability interface, which at the end
     connects link-capability detection, -state computation and
     -fallback/recovery functionality in a unified way.

  The series is therefore kept as a single unit, but organized into the
  following segments of patches to allow incremental review and merging:

  - Link training refactoring:                              1-26
  - Link capabilities refactoring:                          27-89
  - Unify configuration selection for modeset and fallback: 90-99
  - Kunit tests for configuration selection:                100-108

[1] https://github.com/ideak/linux/commits/dp-link-caps

Imre Deak (108):
  drm/i915/dp: Move clamping max link rate to common rates setup
  drm/i915/dp: Clamp max lane count to max common lane count
  drm/i915/dp: Bump connector epoch on link capability changes
  drm/i915/dp_link_training: Introduce link training state struct
  drm/i915/dp_link_training: Factor out link training state reset helper
  drm/i915/dp_link_training: Reset link training state on link
    capability change
  drm/i915/dp_link_training: Flush commits in debugfs entries
  drm/i915/dp_link_training: Move link training helpers to link training
    code
  drm/i915/dp_link_training: Use link_training as base pointer in
    debugfs
  drm/i915/dp_link_training: Add helpers to access force retrain state
  drm/i915/dp_link_training: Move link recovery/debug state to
    link_training
  drm/i915/dp_link_training: Prevent repeated autoretrain attempts
  drm/i915/dp_link_training: Clamp sequential link training failure
    counter
  drm/i915/dp_link_training: Check for pending autoretrain explicitly
  drm/i915/dp_link_training: Add helper to query pending autoretrain
  drm/i915/dp_link_training: Add helper to query allowed autoretrain
  drm/i915/dp_link_training: Add helper to mark link training failure
  drm/i915/dp_link_training: Add helper to reset link recovery state
  drm/i915/dp_link_training: Track link recovery state with an enum
  drm/i915/dp_link_training: Add no-fallback link recovery state
  drm/i915/display: Factor out a helper to modeset a pipe with atomic
    state
  drm/i915/display: Simplify
    intel_modeset_commit_pipes_for_atomic_state()
  drm/i915/dp_link_training: Allocate atomic state for autoretrain
    modeset
  drm/i915/dp_link_training: Disallow autoretrains after failed modeset
  drm/i915/dp_link_training: Fix kernel-doc of
    intel_dp_init_lttpr_and_dprx_caps()
  drm/i915/dp_link_training: Document DP link recovery logic
  drm/i915/dp: Rename intel_dp_link_config to intel_dp_link_config_entry
  drm/i915/dp: Add struct intel_dp_link_config
  drm/i915/dp_link_caps: Introduce DP link capability module
  drm/i915/dp_link_caps: Move common rate helpers to link caps
  drm/i915/dp_link_caps: Move forced link param helpers to link caps
  drm/i915/dp: Simplify querying of forced link parameters
  drm/i915/dp_link_caps: Move forced and max link debugfs entries to
    link caps
  drm/i915/dp_link_training: Use helpers to get forced link params
  drm/i915/dp_link_caps: Move forced link params to link_caps
  drm/i915/dp_link_caps: Move link config helpers to link caps
  drm/i915/dp_link_caps: Move link config tracking to link_caps
  drm/i915/dp_link_caps: Rename helper updating the link configurations
  drm/i915/dp: Factor out helper to get link rate capabilities
  drm/i915/dp_link_caps: Pass supported link rates to link caps update
  drm/i915/dp_link_caps: Add helper to get all supported link rates
  drm/i915/dp_link_caps: Add helper to get the number of supported link
    rates
  drm/i915/dp_link_caps: Add helper to get common rate index
  drm/i915/dp_link_caps: Move tracking of common rates to link_caps
    struct
  drm/i915/dp_link_caps: Track max common lane count in link_caps
  drm/i915/dp_link_caps: Move max lane count change detection to
    link_caps
  drm/i915/dp_link_caps: Use max common lane count from link_caps
  drm/i915/dp_link_caps: Move updating max link limits to link_caps
    update
  drm/i915/dp_link_caps: Add helpers to get max link limits
  drm/i915/dp_link_caps: Add helpers to set max link limits
  drm/i915/dp_link_caps: Validate max link limits
  drm/i915/dp_link_caps: Add helper to reset max link limits
  drm/i915/dp_link_caps: Add helper to reset link_caps state
  drm/i915/dp_link_caps: Move max link limits to link_caps
  drm/i915/dp_link_caps: Pass link_caps to static functions
  drm/i915/dp_link_caps: Pass link_caps to config update/lookup helpers
  drm/i915/dp_link_caps: Pass link_caps to common rate helpers
  drm/i915/dp_link_caps: Add link_caps prefix to common rate helpers
  drm/i915/dp_link_caps: Add missing documentation to exported functions
  drm/i915/dp_link_caps: Set forced link params before resetting link
    params
  drm/i915/dp_link_caps: Adjust max_limits during link config update
  drm/i915/dp_link_caps: Adjust max_limits when setting or resetting it
  drm/i915/dp: Simplify the modeset max link rate limit computation
  drm/i915/dp: Query max limits via link_caps during mode validation
  drm/i915/dp_tunnel: Query max link limits via link_caps for BW
    computation
  drm/i915/doc: Document DP link capabilities
  drm/i915/dp_link_caps: Move config table members to a substruct
  drm/i915/dp_link_caps: Factor out a helper to look up a config table
    rate
  drm/i915/dp_link_caps: Pass config table pointer to rate lookup helper
  drm/i915/dp_link_caps: Factor out helper to get link config from table
    by index
  drm/i915/dp_link_caps: Add helper to get config at iterator position
  drm/i915/dp_link_caps: Add helper to find position of matching config
  drm/i915/dp_link_training: Reset the max link limits in the fallback
    code
  drm/i915/dp_link_training: Use config iterator for BW-order fallback
  drm/i915/dp_link_training: Look up configurations using fuzzy rate
    matching
  drm/i915/dp_link_caps: Pass table pointer to the sort compare function
  drm/i915/dp_link_caps: Compare config tables instead of link
    parameters
  drm/i915/dp_link_caps: Precompute config table before update
  drm/i915/dp_link_caps: Compare internal config entries during table
    matching
  drm/i915/dp_link_caps: Use virtual config indexing in config table
  drm/i915/dp_link_caps: Simplify idx->link rate/lane count lookup
  drm/i915/dp_link_caps: Simplify BW order pos->config index array
  drm/i915/dp_link_caps: Add helper to get iteration order for a
    connector
  drm/i915/dp_link_caps: Add reset and merge update modes
  drm/i915/dp_link_caps: Add mask for disabled link configurations
  drm/i915/dp_link_caps: Add link configuration iterators
  drm/i915/dp_link_caps: Preserve disabled config mask during merge
    update
  drm/i915/dp_link_caps: Account for disabled configs during max link
    info update
  drm/i915/dp_link_caps: Add debugfs entry showing allowed
    configurations
  drm/i915/dp: Add a mask of valid configurations for modeset
    computation
  drm/i915/dp: Iterate configurations via link_caps for SST non-DSC
  drm/i915/dp: Iterate configurations via link_caps for SST DSC
  drm/i915/dp: Use link caps for eDP DSC config selection
  drm/i915/dp_mst: Use link caps for non-DSC config selection
  drm/i915/dp_mst: Use link caps for MST DSC config selection
  drm/i915/dp_test: Use link caps for compliance link configs
  drm/i915/dp: Remove min/max link config limits
  drm/i915/dp_link_training: Account for disabled configs during SST
    fallback
  drm/i915/dp_link_training: Disable failed config during fallback
  drm/i915/kunit: Enable KUnit tests
  drm/i915/kunit: Add DP link test stub
  drm/xe/kunit: Add display test config
  drm/xe/kunit: Build DP link display tests
  drm/i915/kunit: setup DP link test context
  drm/i915/kunit: Export link training and caps funcs for testing
  drm/i915/kunit: DP link: add baseline fixed table reference test
  drm/i915/kunit: DP link: add update config tests
  drm/i915/kunit: DP link: add fallback tests

 Documentation/gpu/i915.rst                    |   21 +
 drivers/gpu/drm/i915/.kunitconfig             |   12 +
 drivers/gpu/drm/i915/Kconfig.debug            |   12 +
 drivers/gpu/drm/i915/Makefile                 |    3 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |   10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   18 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   42 +-
 drivers/gpu/drm/i915/display/intel_display.h  |    3 +
 .../drm/i915/display/intel_display_debugfs.c  |    2 +
 .../drm/i915/display/intel_display_types.h    |   38 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  741 +++----
 drivers/gpu/drm/i915/display/intel_dp.h       |   22 +-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 1752 +++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  262 +++
 .../drm/i915/display/intel_dp_link_training.c | 1257 +++++++++---
 .../drm/i915/display/intel_dp_link_training.h |   44 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   80 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c  |   95 +-
 drivers/gpu/drm/i915/display/intel_dp_test.h  |    3 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |   14 +-
 drivers/gpu/drm/i915/display/tests/Makefile   |    7 +
 .../i915/display/tests/intel_dp_link_test.c   | 1427 ++++++++++++++
 drivers/gpu/drm/xe/.gitignore                 |    1 +
 drivers/gpu/drm/xe/.kunitconfig-display       |   11 +
 drivers/gpu/drm/xe/Makefile                   |    4 +
 drivers/gpu/drm/xe/display/tests/Makefile     |   11 +
 26 files changed, 5033 insertions(+), 859 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/.kunitconfig
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_link_caps.h
 create mode 100644 drivers/gpu/drm/i915/display/tests/Makefile
 create mode 100644 drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
 create mode 100644 drivers/gpu/drm/xe/.kunitconfig-display
 create mode 100644 drivers/gpu/drm/xe/display/tests/Makefile

-- 
2.49.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HwqLBNvjGlmngAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 12:59:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC2A12405C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 12:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA4C10E00B;
	Wed, 11 Feb 2026 11:59:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MD2cQ/iq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B80910E00B;
 Wed, 11 Feb 2026 11:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770811150; x=1802347150; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=EEdluf0/Pi3xqTXSFDOcIwQ9P3QkEaWQcsZxjNPyAg0=;
 b=MD2cQ/iqIBiKqd16c2KW0zhoa0KO+HIDwATS0h42uC3n/iLG+KUTWcZ7
 vhdU7cM+/lO4J7MIQTx8Fo0nU8bigClbEbtt8O+WDJ60lu8VXBSijmSha
 /YcYqIquXu56fDWXAMZbHHKbJazCd78AisxHReyNFrQIal83da9nAJdBG
 ynemrYLl4wBJAw3FrbAJAhviBqMtW4RBhzSIpYBY+sDFgvy1U1NYG6Pi/
 UE3b8JmUsph89Nc2QBfKUG/jhtAmhL+7HvJnHvQoUCSeZw8yMxlMDs+Jq
 DIGrbuLHYE+TGne2Cwa6H6DHn1XPQvvgc68vXUdOMiz6N/K+E4ulviDk6 w==;
X-CSE-ConnectionGUID: k2DXZ3UBQ3SbFE/LXi08BA==
X-CSE-MsgGUID: 1B2tpXkdSHe8W8kiU52H+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71854314"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71854314"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 03:59:10 -0800
X-CSE-ConnectionGUID: Kj5zbH7cT7i7pzqp3Ih+Jg==
X-CSE-MsgGUID: 1fmOEOc+RBulKd76i2oYAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="235209598"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 03:59:09 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 03:59:09 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 03:59:09 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.32) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 03:59:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zLD3JrG4Igb4HgZ8jZ64y//Ir/qtnTtrl5mrkfvldS2tdvuJIe9z8nXA0RQ9odTUvgON3lqW3xleh4NtwK61jEj6wMnHsO6desIeN6krMGgZCuc20JE7qrTLFpLDz8P3vejKkiR8qS1C0BpygPINbS86uaRZAbYqZotzrG8Ak15wag+6m+4EPANHj8M8ry4DnqA5bTvABuNaNDIQr9s93n560E29qJiRdhC/MjvQhYy5wdCOsLXi5/mN0z7OjAKFic0MjjRaHhZNilYnwbreoO8UjaZUgnZDunbM8E9gc+T4jU7S0TPeim1RDiKDRernrFMMGUe66MeNHunH7isR1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KaMBh0kxcLVl2//PSAdsUpnXppMQQ5JWgH2ApnC1mw8=;
 b=Lk0F7CnetYCEBvAYXjPukvGlSKZr3OXZh7poRdTVC6uszo2TmwhgPlA9wxGdugtbz5v3Y8hOpqrnaqW/6LxJeT5ovs0C/zkZ1kn04ccFxt2ilgm5UJv0quyhsoG1GO4qlnnx0E9l6vehNxIMj6gRSvPvirW2klWbhDvUKEhs0IgSnp+gKyZ8iyHgzGsWZqJkwSNhkRK3rE9uARDdKc9z0ABnlLg+w2YWmwXwcKUEqLAxzc5QKYXxdfjxECZpPIh912YTLdVbkmgNmV8eHs35IaU55gePFURrjy8/zAU/nGyEy1DGfRyhOBxg4b8lpGBl5nREZTbojtzO4GSg/mSyYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB5069.namprd11.prod.outlook.com (2603:10b6:a03:2ad::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Wed, 11 Feb
 2026 11:59:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 11:59:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 1/2] drm/i915/display: Clarify target pipe bpp variable name
 in compute_sink_pipe_bpp()
Date: Wed, 11 Feb 2026 13:58:10 +0200
Message-ID: <20260211115811.508496-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3P280CA0025.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:b::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB5069:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b79e85e-9574-4b8f-3f21-08de6964f59b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?h4NuTA1emgmZuJOLSQY0n2FKhCyRKf0W9UovV5NQyRmUf7bS73htuMqJ8goJ?=
 =?us-ascii?Q?r+MsaG140xdp5qM0aF5f3WhmEda3K6AvZm2G8Eph09j8F2HhsISiEXw6tAM2?=
 =?us-ascii?Q?FKJ+B9SXUp3oGSkjJcUVuljXnXNZkYnuP/uJhz6DDMY1qI22/gF87oiP1fyT?=
 =?us-ascii?Q?nlpBTlMDocqeiMgHyVeMcKZ4b6qlL7GFOAg5X9OBbkvesYFC13qOsDM4US5g?=
 =?us-ascii?Q?TymJKojkpJFGPVfecQVDMZvlsk77tDwFHeyJWhuLV+S5gxWH6k12n5CFbKOc?=
 =?us-ascii?Q?LHe2WyweDCYvfjehUKjqarXVFPiawV2Yfj3KtTxzm277nxrknyjO2Pdutn0o?=
 =?us-ascii?Q?1SrCaV0/jTYPrVzcyyjQR6JSWvmtEbBjDh6T2RSHT0hoRY2zjfLRvxVE9uav?=
 =?us-ascii?Q?DDpRjPkXz2zpZ0T/oDRfFWnoiNiWodrQqYWpzm9Li1LhDOhcUUX2A57VAneB?=
 =?us-ascii?Q?YR7Fuu8BPKl0jGvFRTVRXdYAzwFtYW9cwTZJL5eEEjD1GQpCLbcFPnpcTSk/?=
 =?us-ascii?Q?NckJYEzqLYoTSLP5DR+1DcO5YS7itO4zMicZxNVH6CKzyqwoeGmynTCFQTYp?=
 =?us-ascii?Q?ZmDXuAK1zLrL0Fke8aESdaDB5jlmK/Z1CeQRlFfxM1atp7xGpMGNjXpUnY9N?=
 =?us-ascii?Q?v/mynupGQOTXXExZhhktDqAwjNk5uFoHGEwvoM26SVxXzWwJcM2P+ruT30tT?=
 =?us-ascii?Q?nhbXVxuReyfP1TiV0zIZ78e549mb039e4hzL2XSjyeLNQhSR5gXlMt4f1Bkf?=
 =?us-ascii?Q?myM5DgTXl6vekLWfGl5MK3MvZ6Tj6gVq56uGR/pAsf/HPHUhO6Rs7FUd7vmU?=
 =?us-ascii?Q?9FiqNjKMiy1c7fayXa9eDnYO2M1Y27BfB2Y0TyUUKtAPo8lkqI5oTeYtdNsS?=
 =?us-ascii?Q?529TU2LcuEP/VYE+Zy6fwuur2rN1nKQpiOqi/+lgZzKtceCZcdUPvFoIUtLi?=
 =?us-ascii?Q?8SP3Ya1gf4woAbczu2UhQk4rdVpPwsVgdvhuelahoq1CktvWS0j3Od8jQ56Z?=
 =?us-ascii?Q?3KkV+0aXz3nAygefCfMmUu91C7FP0VbYQSoGfQBufiN1ZFMySsm8kp0XoAmd?=
 =?us-ascii?Q?Nd4qqeEvCSW023A99zMJ/iB0fmAse3NuKIKxzY9F6mLNzfxz4VX7ZITVeWHE?=
 =?us-ascii?Q?dCyL3lk5KuSm+XzRkqCcZeoqLJDUFxjpid0yzCkiOBfU/XTmAmKnAY22qnX1?=
 =?us-ascii?Q?VbSL8Cu1SpeDl9X/RxM5v0Pj1vqh0DuqS6Pp5XuM740gqojYlcxj0rANATMn?=
 =?us-ascii?Q?NLxN9iZa3Bo11XOmstdB2i9MCCSGWwROri9D2Ti8mS8X1j7KsgcTQ3Ug3s/4?=
 =?us-ascii?Q?rWe1oA7Bere7TLWjSKD9+GDeqXxvy/kZMzf/hRQTGMe+H6rpmcOUP9XXX02z?=
 =?us-ascii?Q?gRbdwt77UcUJoIxOcG80vRj9SJ6oHZvwfg5PetOVWNeAx42Z1WMCqS1atrda?=
 =?us-ascii?Q?GzTfjfjEz1wv4Zczf+tMuXgvGX6nO8CLT5Flja/gsyLFlzuUvhkpJabWzhup?=
 =?us-ascii?Q?Gn0nXWMKlLMhUPqO+nuw8l3pEtBoJq8VXxSQdI5RXFl9a2GsbQ3ehaqJJQCR?=
 =?us-ascii?Q?bjNmsf5p8cZE2TncNvg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?i/SDcbtKiaA+cXSntr1v+5WkJHtT41PXm0lawYEdRvHwbYvzvBnK54epV68C?=
 =?us-ascii?Q?0O9/ogQq+t3nEHHehJL9Z4LeCr+UuQjwihBXL0M1R8j1BqLuH5LWs5xSI+t9?=
 =?us-ascii?Q?cEZ3dJt6BpTWWsQfLsn7Y+iAgyHmAzW3qA7/j12ReAySouh+cXc3PNpmIYNA?=
 =?us-ascii?Q?ZzxwD5xeDnFDFF7IhkO5sEIru3zRRxrUBfsTdFenb002MxNpwRUIeU2y7rDc?=
 =?us-ascii?Q?G/sjgIFG63owa4tFFweOVyponiREgU+wnjdsKwpUGXQgJbZNO4Ut200VkaZK?=
 =?us-ascii?Q?6+JgdqrgBs02fKISYnl2EQ+yfMyPNUPRWaJwtpuALPjsMaoQt/ssjoOP9Da8?=
 =?us-ascii?Q?ymiUwNFT03tAdQjCoEiP1IvTyI72wQ3Ql0JE4ocd51D7CgXZt6wScMh9HyyI?=
 =?us-ascii?Q?RGqOEiSMuAaTA4apGK4tkAkYGyIySe3lL57TMUorz2BzSwx9MZaYFGXfCmGD?=
 =?us-ascii?Q?4vw4AuCUsW3dA0sBzT+PLWq6+38eKj5InU1RkbcfKSqEMcS8cBYkgPRr4TJo?=
 =?us-ascii?Q?JIhoA0pp0ODznisurl0qt+8rwSdRVhtUDia97ts9r/Y65BZC+6gHBMOJDAWn?=
 =?us-ascii?Q?uiqZ/2BgVzhoMRBpY0sRiH0awoWDc15nS0KttYrLQ/w7SpepY+WwOyOMn0Vd?=
 =?us-ascii?Q?VR3mvq9OJkviUshgd3/X0nSjL5Dm1R/bGPZLLvRu9ho/AUUswq96pt6tbqe6?=
 =?us-ascii?Q?o6Be/qul7soUASDYPRTWsOpz9ukeZwCHWcYJovwev/2oXXms0Rky3KZiF/YQ?=
 =?us-ascii?Q?8jgLVs6cIaZQqsvwGLvJU3UQWgw9t3uSYOc/3Hs8UYXGb+DvrznxIVr4TGAd?=
 =?us-ascii?Q?WzwezTc5ro3aurPQ7bQj+IAyIDw3DfhpjL5WuTiKH6neu5vj8vUt8OEKUtJR?=
 =?us-ascii?Q?Z/AqYgLVN8itxUuVrRAZYq9Zc8yv38FGusoKsEZVODXcp4W0tIzudk5Y8heP?=
 =?us-ascii?Q?BP+XaWm4gI5aO0yGOM4t6hVMHvkFdH/GpPglMo8g2UnDsslYdSSby6RxjDFW?=
 =?us-ascii?Q?hhHRnnUvZLibqitPdA1skp1uAF7u+gyT2cogNXZQdZDBNVLz0Gd7YyYeNChc?=
 =?us-ascii?Q?0Zh+bj/3NkcZ2a3I6VsUkcOstX95QUYxcDUYdFHJG24tMjEiOdPwiebn3ZDp?=
 =?us-ascii?Q?LMBHJlhRpNuFGs+BVliiLd3Uhz9tTyb45GSkTD4M67ayzjcjRfqolSd2wfbP?=
 =?us-ascii?Q?QIuakdiEbo8MC7OiCzY8qB1wpeBEOifBb5aL6heiHjwP2pb2lm9bivWAXjPg?=
 =?us-ascii?Q?ektGNn2q91tDbvyVhZBmXJ8cRepcpZqVXTfOq6RBZx1izyVywsT7+ldVMFsL?=
 =?us-ascii?Q?CZ2XLyy3oExzspyyaZZn5nypxxB05VcySXF6jOseJlvhiZiwViXf4WWaIlow?=
 =?us-ascii?Q?LeEXLmnl3GBjSZt/FTG8IzgYAZzrFi7Ey/qzKpAhw5pq2J5GTKsOHxC73zCg?=
 =?us-ascii?Q?+lIwhzMoYx/z/P3bNrHJ6EzC+irG24awS86ttWEDd2RwSztu/USChQ9TyrbM?=
 =?us-ascii?Q?yQZ2xvhItWEd3J+yTQs9+hzSVqE5KbKZlREZ33SJKB55Vb0uppAtC7SifUqu?=
 =?us-ascii?Q?eWyFew2bTVYAj6TEwmRx4SrMkOuadYwGwFjvRe1H3p3x4P1MekSGgPL2NSbH?=
 =?us-ascii?Q?P9FP4ZUqq/xAE4FEpXfRSe1veMyjER3AYh/K3mS3/tX7fVzzXuinKrgk+z02?=
 =?us-ascii?Q?UAW8Gv4eL5NgKcNyDdW2W4/FB9vfqyMAS+4AIVVg18ytjNgZlQxs1UGtS5jM?=
 =?us-ascii?Q?aVA7AefVDQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b79e85e-9574-4b8f-3f21-08de6964f59b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 11:59:07.2480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /zcbBQVyJ7rD/NukJMskY7H6x3T657Vy+tsdUGa+cHeHlZlbFKotL9gloLkUhKN6uvjHmk0VaTcvi+lmlnqygA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5069
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EAC2A12405C
X-Rspamd-Action: no action

Clarify that the baseline pipe BPP - i.e. the non-DP specific
platform/EDID maximum BPP limited by any user-requested max-bpc setting
- set by compute_sink_pipe_bpp() is a baseline _target_ pipe BPP. This
target BPP can get either rejected or adjusted (lowering or increasing
it as needed) by the encoder state computation based on other
constrains, like a minimum pipe BPP dictated by a non-RGB output format
(24 BPP) or a min/max DSC input BPP dictated by a DSC sink. Whether an
out-of-bound target BPP is adjusted or rejected depends on the max-bpc
property's semantic assumed by the driver, which is atm to reject such a
request.

A follow-up change will also compute the baseline _maximum_ pipe BPP,
which is the non-DP specific platform/EDID maximum BPP w/o the requested
max-bpc adjustment and as such is a hard limit: The encoder state
computation must ensure that the final BPP selected for the modeset is
below this maximum. Tracking the baseline maximum pipe BPP separately
will allow for adjusting the baseline target BPP as needed, clamping it
to the valid DP min/max pipe BPP range, instead of rejecting an
out-of-bound BPC/BPP request.

To clarify the above semantics rename bpp in compute_sink_bpp() to
target_pipe_bpp in this patch, preparing for a follow-up change also
computing max_pipe_bpp in the same function.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 47 +++++++++++---------
 1 file changed, 25 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 295f14416be70..ab4b59916d2e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4350,6 +4350,23 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int bpc_to_bpp(int bpc)
+{
+	switch (bpc) {
+	case 6 ... 7:
+		return 6 * 3;
+	case 8 ... 9:
+		return 8 * 3;
+	case 10 ... 11:
+		return 10 * 3;
+	case 12 ... 16:
+		return 12 * 3;
+	default:
+		MISSING_CASE(bpc);
+		return -EINVAL;
+	}
+}
+
 static int
 compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 		      struct intel_crtc_state *crtc_state)
@@ -4357,36 +4374,22 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_connector *connector = conn_state->connector;
 	const struct drm_display_info *info = &connector->display_info;
-	int bpp;
+	int target_pipe_bpp;
 
-	switch (conn_state->max_bpc) {
-	case 6 ... 7:
-		bpp = 6 * 3;
-		break;
-	case 8 ... 9:
-		bpp = 8 * 3;
-		break;
-	case 10 ... 11:
-		bpp = 10 * 3;
-		break;
-	case 12 ... 16:
-		bpp = 12 * 3;
-		break;
-	default:
-		MISSING_CASE(conn_state->max_bpc);
-		return -EINVAL;
-	}
+	target_pipe_bpp = bpc_to_bpp(conn_state->max_bpc);
+	if (target_pipe_bpp < 0)
+		return target_pipe_bpp;
 
-	if (bpp < crtc_state->pipe_bpp) {
+	if (target_pipe_bpp < crtc_state->pipe_bpp) {
 		drm_dbg_kms(display->drm,
-			    "[CONNECTOR:%d:%s] Limiting display bpp to %d "
+			    "[CONNECTOR:%d:%s] Limiting target display pipe bpp to %d "
 			    "(EDID bpp %d, max requested bpp %d, max platform bpp %d)\n",
 			    connector->base.id, connector->name,
-			    bpp, 3 * info->bpc,
+			    target_pipe_bpp, 3 * info->bpc,
 			    3 * conn_state->max_requested_bpc,
 			    crtc_state->pipe_bpp);
 
-		crtc_state->pipe_bpp = bpp;
+		crtc_state->pipe_bpp = target_pipe_bpp;
 	}
 
 	return 0;
-- 
2.49.1


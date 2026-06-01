Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oALsG0dTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2365561C988
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 875531130BD;
	Mon,  1 Jun 2026 09:39:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ir25+UF3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497EB1130BD;
 Mon,  1 Jun 2026 09:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306756; x=1811842756;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Qp9K6CFS911x/NsWRYXQ6ESCbdGgPtinn08LV4zG10Q=;
 b=ir25+UF31Gg1bgQZzRN6jBbi639G/yK/Ck2yVh1ZJ4oxLCd+NnwNVJ7v
 4c9e1SfsbiwPpvzeOsqnjZ9sBliafehoIl0o4brUHnWXH+wZ1XuHv8CNs
 IZKIB/T/OpPp1X+Tkra0jBLt5hPtzZxxiibdy5UIOILCt+hYCGTOIaoK4
 id4mNtl5UjlFnb7LWzpb1nm7dtHU6oD0AfCXfOYIMRt8AFI6yRifUAYej
 fCKLeP17Jm6pUT/gBHQyxUw5jQq3HLln6jC11fk/0j3CTwcs3okaZmzYE
 SWC0hOFD+KtjHL8fL3sttcz7UDUqGs57vW2x/eLnhJLK2o4wIgxDFVT1l Q==;
X-CSE-ConnectionGUID: 4VS2aLU1SZyHeS9kpv6umw==
X-CSE-MsgGUID: ZT+GCzS+Te+PsX8hw66SnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094041"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094041"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:16 -0700
X-CSE-ConnectionGUID: lIc1vgcYT7OrMY9BK59Cvg==
X-CSE-MsgGUID: Br1ogLJ6QsS4g+E3Q19BHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160579"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:16 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:15 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:15 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RqxcQ1kIS3x2hxK8Jn8lta870O27NIogcZE767ihO4Basw3VvjiU3cUk/agIgbP8mCRjsUZ55H37UX8ei+rxmuZ/+UeYDhh8GMdIyr0WGfXvmGH4+R9WEPMDj/omjNHa+RWwGY1wS6xrgJ9ysc9cxyJ122622a/x8b9eN8QJqPGPTjbQOXfrrS8+t5xCfAuDTW6pKTRlvDYrP9HlWe3S789zpljpnjk1+2Duu7DuDhHOVtjZqYw27i4g7akvqMhm1G9WwHrr9VotxryVAli8kr9wo6OlZWJvFHMsvby6vTujM97drb1ot/Wmqp1tBc+iAvOxiwZEnCHRlMJ/vUI8Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+zsD3OhMhWZr8wGaFhB64lCKAIVy+DXC9cxaPmnnyGE=;
 b=MvevcoDF9u9gIbCFXRHStKAdtl6RATzYweZi63kaFHjjIXgfekPC7nG/HiT2Ph3Hh3iGip93pJNr6FBzq+pp3lZoNS11Hv9cqG75dnperlGZr7iP6ZUDEi/0QOUC/sLaBft7iYbnSSg6fCBUyZiBonyWNC/kQ0BXbukF5P/GR8nAZ9QjaFYIj5omMBwBANehq21vhAXvqAxiAdptanELwmfpoCHQjWpGfP3wXv7QzyWlQsfbCIx0ibe+SPN9vWYtvJM9uZelyPA4xEHdwrj5nqUPeEzXE9ZqwGQbeHdKI9KZYXcCg3yVHaJqXAR50RpTcGVkOA1Eo468S38EnQriuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:05 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:05 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 08/22] drm/i915/dp_link_training: Prevent repeated
 autoretrain attempts
Date: Mon, 1 Jun 2026 12:38:21 +0300
Message-ID: <20260601093836.3057345-9-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 03b82f36-c1be-44f8-f39a-08debfc19f4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|6133799003|56012099006|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: IiU5yNBU3rQn7sbBwt48hP0WuN905WT46knIj9qlOBjyrkq+BNdcxquIOHceNJJa1XjEZ4YMG2fd3KrNb5oi8V0JeNmsCLoOJdIVqUAJF/6YUwR99iZlIHrMFPBu8joTM/yhfd0Tnzraa3eLD/w+ItQw6su84qoTlAWqyeHMG5Wd/dSHqHqT0jUM4rxhwqdNhWJU1ecH+QznSM/xgsIsFRlneQkyOjd7t2IVRKQt/+co4xgwooARMebp/9BVcpwJ3K6RFz+xXx97/XIkyn+NlImTCE/VUrqFgp3LxIV5TiBAI1c4mjSOG07VGt1uuOXpXQu6QDofHMBuPTu+tJpd/Cp3plX12F6Z4TkH5heoNYg/p5Gq+GpeK2ftCvxZGkyaK/31CFYbIvhks5J+7PZ+ODHRqX8E9dQsooTmoPRxu4KmCBch3XS2sonC6fpmUYDQVyLxgGWxHVr55JoUsOtzFXNJOy5xxipmbrXonVqbqofomwZEfH9W/b/oC2u6FccOncm8QrGwhWuTqZu2/LB/QiHrHjd6xZeSFTp6wx9gv6I3+nNFKooR45Z5oqh+QerPoL5TB8ak7XYdTzfUYKzo7eeetSDwJDVJGPh+fI8idVwxh+z3IYIQ/enRcPe4vW0zMn6w1/jykToI3g4CPrVmktQhHVLfPq2F9rFb0d0rI1ZKEso3hR/PxIFZCku785qa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(6133799003)(56012099006)(3023799007)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yarBGPlL5b+rCIhgxdHUwIbbOCyiOszvQHb4erkyaS/pg42cw4uirvTL2sol?=
 =?us-ascii?Q?qKBWUBSLq6c4z/s1noFFBXccdj0PH068BbogY2Z6jN36yEjVwwNhK1TgFpIN?=
 =?us-ascii?Q?rNxUhhEQbkaTmw8Yd193gUCravV8zBcsMlMWyz5Z5sH2VPJhFhWdEL5jJ/L8?=
 =?us-ascii?Q?+TWThXQH5Gq2CU5IH9Q/RUVCZqk8vRPJI8mm0HbiSKvpOeiQS6h+9iNHE2lP?=
 =?us-ascii?Q?LBjJzP/lpjBbVfRCZ+vU3d7gFy8v7ZbQV+79SuHcQCoRiu82yNtyiaQzv/GJ?=
 =?us-ascii?Q?/tqOblwTM9szNcwTp7W0qgdKdzD108NsxtjpJIgOvWWKDurC8fjTKdXaB0Wc?=
 =?us-ascii?Q?5K78DINRswblK4gW5faoaV+e8GxEcOXyU/b4T/UlCOO1Bk4GkF8/FJUZ5G+b?=
 =?us-ascii?Q?BPN27sgvnYXbtm38LQShD/U8NiWNK+FDONQg6QTEtu0MnS9SLc6JPXqmPolr?=
 =?us-ascii?Q?MAPi2pqZVYbfZOTK/9XIFlx4t4YnYD7JOqOjKywrlfmJHejwB2STSqkgYnKM?=
 =?us-ascii?Q?lNfJf7GaHseZw4NYh3OWi3W3LZ942JMSPYkT52o/+5OzsaWm0mr36Nn1tb3l?=
 =?us-ascii?Q?wCGiT1p2I9SRBp2I6UDWjB2llAPbFCsosvftDPArSQyFgkgK/KO/mcnXsCzF?=
 =?us-ascii?Q?SWbHOILbxAEzbxlFT9DIO7Ofgh40457vh4ThjjgUulLoSIL/RwV7/FIED2+j?=
 =?us-ascii?Q?E++9XnMF6i3uBdHwPYxJMCVRSxhlrZF0A3zY5BJu3Uscp/cwSvH36/75+pZh?=
 =?us-ascii?Q?UUUYbQB9oXhJ1Xtbgh7w3h30wU+5GQnRB7VAUtejt87TOXfZyH4wmgigvUr4?=
 =?us-ascii?Q?KOnH8YC8QE2HsdOKBrvX3EPOWprn7pGjr1ia/TqNKKCEgv0IJORnJlK3il4O?=
 =?us-ascii?Q?6cO+QW5zbBPdBkKs+vRBbEn6mXNWkeJaYO4M0auOlAUE02laMqdsH6Y+H5Lw?=
 =?us-ascii?Q?B8jw1PsiVDu7oLn5trt7fPqyRzRVyt0laaJDUfBhQ+oCKo0Ed8Y4Mx0bWzsz?=
 =?us-ascii?Q?ZIoE/UnHaLfvyzEuRCXZy3pdCa+XNZ3SBP8BThTSPBO2K1B0Tx4ayyPyT6Py?=
 =?us-ascii?Q?3cSo0wv5aUPAgiAGGLlCgNpSwSolS2qctFRW+Bb8sx4vp5yzKTLN5VHUfkQm?=
 =?us-ascii?Q?vVFGskstOcD61L6ZWKbzs+KoRbnOad/lzFGejN7/FirZfjONzpNeq+H7JCyY?=
 =?us-ascii?Q?7CmuS2GTSP+dK6vAMb8jeNQjaSHNPZxsHz8njKshH2qo8usKSaeuPporZa0f?=
 =?us-ascii?Q?Mwk1Pdz+Qn2kj3BWUSs55zQ/4YNyBYc+OpxW/0a80e04gvl2OM1QpmjyxgtM?=
 =?us-ascii?Q?chif75czSe5zvyyHOMou7qKOG+4dddBEOJIlHLzTqIF+dp2ijGtYfX6gLXCU?=
 =?us-ascii?Q?gqrKPde0HAuAkC4xzWIA6n9bLKEHAB6J7HSMCbg15Yv8qIuDT2hJCQxPxH90?=
 =?us-ascii?Q?iF6yMCcUm2s7aoEPkYAhIb+BuBQnedNeSUHHopJsZije9EeAXuEW6Fq0sD2v?=
 =?us-ascii?Q?Pql0SG52zGE+mNbB4C9ROy4vLDLE9tJJ1fdtvNa/MylsndvDq/1wA5TngTY9?=
 =?us-ascii?Q?VJ5LksDy8zsPvGdVfYWGifY4iz53M1AGAQE2xzs4q68AeFXIRge/cgO++jv4?=
 =?us-ascii?Q?xYJFKmMii9Inm7x0ZGgw45NKpA/IMcD4CFVf5qBJsSqZdX0Izp5IGmoiqck2?=
 =?us-ascii?Q?aemoY6NUDeYpJZrf0zIkwYRLsjE2v1qMB1SVeNPv+oH5k46hx6t+SlQlZBOd?=
 =?us-ascii?Q?HvdSRzabqg=3D=3D?=
X-Exchange-RoutingPolicyChecked: OxkfvklW7HVM7tawPFnT23B47X0av62isxxAB3QHwxobQYknNDgWVz80/f4AFce2ZDuuHrDaYI3F9ywI75gQgpIZHO8OZgOrnw4I53zc2vE94ZKqo0gIAnBI93aDHv7qhZ/DoIIDkI3O1slbaotbWvHfVxJODH+DhRysfwekSQD8kBaW3OFa1yKJi+sfdUGxoXGxO4zPOPN0EUL1plFX+tXiXXHSG1Z8z7ZUpv249TamiyvwijC75Wzx4QnOjHdyb5QHcU1OgfT195K7m88skf2XtJsX16+LDq3AdfTY5WT5hts1db7j3rDPbu/bJIKI3eAl0v7sayx+pGHmaw3TjA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 03b82f36-c1be-44f8-f39a-08debfc19f4d
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:05.7106 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QObB2jhTzfduzVA8yq4ld7rJQVYOhfJx/CChwUtUPFhb44SRx2MBrc0EixkANDW9+BRHnkCPDZQh9wSdNy+YPQ==
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
X-Rspamd-Queue-Id: 2365561C988
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

After a regular modeset link training failure, the driver attempts to
recover the link via an autoretrain using the same link parameters as
the modeset.

If the autoretrain fails as well, the set of allowed link configurations
is reduced via a fallback mechanism. For further link training, the
modeset parameters will likely need to change. This lowers the required
link bandwidth and allows selecting a link configuration from the
fallback-reduced set. Only userspace can perform such a modeset change.
Therefore, the driver notifies userspace to take over link recovery.

Userspace is expected to continue with the recovery attempt via a
modeset with updated parameters. The driver must not interfere with
these modesets.

link_training->seq_train_failures is set to MAX_SEQ_TRAIN_FAILURES after
the autoretrain fails. If a fallback selection also fails after this,
as no link configurations remain, retrain_disabled is set as well.

retrain_disabled is therefore somewhat misnamed: it indicates that no
fallback is available, not that autoretraining is disabled. This will be
addressed in a follow-up change by renaming the flag. For now, prevent
further autoretrain attempts based on the correct condition:
seq_train_failures == MAX_SEQ_TRAIN_FAILURES.

This also prepares for replacing the counter with an enum in a follow-up
change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 154caecacecb2..e766f7c323f72 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -2002,7 +2002,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 					intel_dp->lane_count))
 		return false;
 
-	if (link_training->retrain_disabled)
+	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
 		return false;
 
 	if (link_training->seq_train_failures)
-- 
2.49.1


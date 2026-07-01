Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u1z2CDAzRWpW8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A606EF47B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=W4Ex2pfp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1955710EF5C;
	Wed,  1 Jul 2026 15:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C2110E3C9;
 Wed,  1 Jul 2026 15:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919981; x=1814455981;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=xDXUr0mNkxJcB0UpVLqksM/l+8gy366fJ4BSe1cQ+x8=;
 b=W4Ex2pfphR8xbdAmLkvQpgaMoxUtMIomisNTIq/gbZXVDVsqjc4mOQg0
 L1+ZehuqDKi4TLUpB4nCMahnjNX8sk4v4y6Gh1rtOrGevzfD/myK6UDOH
 cDD4wnno6vb26r2tjvgs8ZjPSL6CeysT+S8E1ZuZ//YMM0NjrMv3E+K4q
 WWWW7yuhaD6BhWNcxU+t3Gh5V1i0UhLFhr2twfjphgydjS92qRc0EJUoJ
 JUObnsMdZ9JUijIIErm5QwhhoxeZRNn0pReI6iVtODIW5UlxcPot1R/T+
 Hm9uXEAqlNRdBIUv6tx40oBjws0WWMrEArSFY6ZoyUaYoyCiB21u0P214 g==;
X-CSE-ConnectionGUID: WHTStQYSSgWZlBHrlIqkng==
X-CSE-MsgGUID: uPOkTSDTTFqheuSw9tTSSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310099"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310099"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:01 -0700
X-CSE-ConnectionGUID: r+7MDuxQSdqdbVCMg0K+OQ==
X-CSE-MsgGUID: wvhQ3DM+Txav91nTOKL9sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515617"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:00 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=il/lM55h+A6XNHSAWJGqWJdjxtoBSMoYHMGY+WiI6M9WUyXs66gHUdD0TpbNdRLZyBOwDoRRhvBgqeX3XeWxIFmjG7bcv57XDofjfwgk1DPzH2BiEJeQcSoim132TkB4qNecppYcSmjfK5wakx7ek6KR2m4cyAL00gcTLZy61RFWVV0TVwUAHjmV2BEAh6mL0cJVMsppwaHLUh1nVOtPNOHbLwfefHF4Zb+vEA7pcFTMb3Z0VOfOu2STC8XN5eNMAfnyJdp+vsyijfNK466ltk3mlycpFqVeh3cI0cagcA3NVqNN6LdCd5WPrGdIbuZK0FMFivef5KVyYuHXVJFcFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v8mHpRR2TOFdViN5wQrbP/eJtB74T/94OKSTh+HJGfo=;
 b=ScA92QF6OOaaJ1JAsdHQf8BkZ0Xd2acokD2oC8IHI86+Q15uNIIZPoOQlqiQmIRl403+Dw5pyBL9/JYrjWsc1WpuSTHF3RdCixNXK5W9XgNBqS5rlk04keyU8qcKoHTVpO4N6ecJUqb0Ppa5R6TJs4NvdyV6gwFiSF/tWF5DYETNSlBkNXOhKc9CzQarF1nOA/VdywbDIa9PDC5CY2OOiPS81sz4qMCNBW0s83panHja/N/PV9DYTlRvAhfACwpfh3oPDgrktwqq+A/FeEawIoOe/Nqr0b4XHA9tqHLmP7HqRX+2GHuuyl+cKfIdQwxdD+njD9M2/B8OnQl5djORmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:56 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:56 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 15/34] drm/i915/dp_tunnel: Query max BW config via
 link_caps for BW computation
Date: Wed, 1 Jul 2026 18:31:44 +0300
Message-ID: <20260701153204.4124150-16-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MN2PR11MB4598:EE_
X-MS-Office365-Filtering-Correlation-Id: 900d57b9-275f-4e14-3160-08ded78605fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|3023799007|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: zbEgD1CfhguyPwzYYiRY9CIBkqC16gPkfeOOVC4V/wuvCNxZO1s/dBMPDhZ6Puo/yG0RJqxteSUUefqsYSHvmEJfxp7V2Za3TrttW/BUSFIcSr1KtMqwJ4b1OFEMACBBgKNKqqph+KpP5LnbkdNjvroWqXeCMoecPCM3+DT016c6DZTBWORxFej03f2lFLcq3MXxTOKjcEtgfjMSHfIHP/zJgoGd4fo6y4fZ0EMSD0cSn6Jub0l3YMOLeIBvP/twXxOoWd7fKAMzwIrUFm2sYctqlOAZ/Jaujf03e/o2KoBaZtyv3TK+Ig9lW89aiqbHtrrBy0Vdzoqeien7pUPg1bqfT4kkOWxT8y++kzdxMBZloHOvwL0z6l0uCX84nl0Brmwq/oy9+7K0FoJ1uL7OJXUSKGt5yieNtZK/taB9giyOlMmDxr0GvOQerCnic7CRKDL+9tDr/4ds6/PHayOu8ki5YSO9yH2DXdTTfWVautBx1MnRAcVzVQUs1FpUmQmIJoZmee3VH/omauixEMV0oz2FnGwZlDoZmvPMjU3nCtOqBtoWD4YCRPiOLgQc8uJ9/x0Iemra/H839SBq1qUYnXRaXxqZN4+Iyz86JkVdDPT8q5te8PL6Oo/mQuRPA1eplWrp+V6oxZV0z4wESc4X1grpmYnagJlsBII6++RXNQc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(3023799007)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?84Kv2lvo0RvTklr0FkRC6YxCIt7mi+AEC4dfKaomwy4ADJrjBY1Eau/TpToF?=
 =?us-ascii?Q?W7ibMrtPWjmh8P/wrRl1627gY7VSuceR39Ed1e7Mn1RX0x6Sz/p02b+9Zm5a?=
 =?us-ascii?Q?PsHRbkVsUFfAeWvdMCRoVvCqwerXwRUgaFn3BWjKfE/PM3nKnjkoVr/WagZZ?=
 =?us-ascii?Q?UP1G4jkf4HqiV7PHZXpyz1KinXmHyekoV/JdGt/LikqoiX2WrO/h9OZTQHEA?=
 =?us-ascii?Q?npeHM7IvO/T2GGKFvzpv6o81UeH40wcCHC0VNRpxprSe6+bO8sQOkY89+Clc?=
 =?us-ascii?Q?APqHJwycRbgDyd8+vkkafKWttiePuOllQUtZXtYukbdrWqjmZDJ+97iiU4gW?=
 =?us-ascii?Q?H+0vu8IV44smp4E7U6575+7p6SuxhGzUPn73DlDb/QzDJ087XqJRmFbeUiCf?=
 =?us-ascii?Q?YFb623odfhT7DKvwWAzPQ3RGVfj2EvMBaG7WjB7ip5LreT7XWJdno8aCrLbk?=
 =?us-ascii?Q?d0GuX/7HJCSHtol+ZztW1pERDFej6Brkzco/jrE4P4g1BUhh88G6Rk5UBWdU?=
 =?us-ascii?Q?cWqKhzhA3eERnD3rzI12T5RtcK1j/DMUnxKeQ0Ml8CYEPop2SXWz6IOgvzxo?=
 =?us-ascii?Q?6JUgXWgvn/H2wOBp1fPuyeH3Y9h4jceq7r/sQ4s5ndbfis8e7M7GSXFNA+qM?=
 =?us-ascii?Q?CR3GANu/Pbkm2BDjV0JlMBD/aj+zJhlcmKRN8OYVSaELY6PfyzpAI3JwzaXc?=
 =?us-ascii?Q?6AXXA/gUmU0/vXterh7LigAO0LygpLkR7fwvwrIvKlB/+35Z9z+DMW/aW8HD?=
 =?us-ascii?Q?jXE0Bzp03b7ix3p8FDIE+u/oCsVw2khItWl/PLCG4yRkYeZWLRxulbEqDLig?=
 =?us-ascii?Q?Ib0lQMa3s2yQ0ASSe72dcdOmML/01rM0UkNlJbgfixdFSnDQ58GlPjEs6ufE?=
 =?us-ascii?Q?X10uTxiIMM5fevwMBSexrmQ25XIGgQYmYzlZpkhYnV+inPPO9QTdQNARTWyd?=
 =?us-ascii?Q?hG6kY1FevYRKVdZl2RwAxFII3RYBuiqMDpw9j+g9WSfDCW9PgVuEx1wVeWlA?=
 =?us-ascii?Q?rUdCq0rXTAcjw/9DWo21EdDIB0KiN8Rj6CwYiwDuqXKAXyJKbsW2f9+oUfBG?=
 =?us-ascii?Q?o4RZF3QJKjXogRCezTPkooigehTWR3ID+aR8S56GtFkbGXk0mzEec31a0bfC?=
 =?us-ascii?Q?oq/bp62Wvn4rTQpY5qAOvnQJE11af88hle2LXKW9VakqRNElp0x/J6SbUYv0?=
 =?us-ascii?Q?SH7n7E7qGPZ9tMQtEYdJE2scEOLIsOl8wUGKCpBaZYpPLXM4w76hmx3+qUpb?=
 =?us-ascii?Q?tOcTgkLSgCE8Paps+4ZFAys56nfYiZhySwIUssLLlbz/0JUfYuYLpBssJ2ZS?=
 =?us-ascii?Q?/iIX9dgrBbTJ5GV+VaFDZbVNFwfh+nKueoBeit2xociHXXZN9FSDmTERiUyq?=
 =?us-ascii?Q?q2D9a/skBSB8H3RN8SXCVYZNVDgmChjSbAyawqhN5iUfCHFrxK8Oamrx+s0f?=
 =?us-ascii?Q?V7cDiFbePUA0OzNlOmqPF6gq6SZfq7a84g/q5fxfFj/ubWSBAwNt4ZxguSvf?=
 =?us-ascii?Q?bicQwKxXlrrit7JjdKHESjRdcZPzDdVdQLKibvOweagOV8IXFlm/etrmS5qw?=
 =?us-ascii?Q?rvJxXNkdQvmiyXh3T5crd2N3WTNWJSRXuG4w+m+syoy02tWpb5a8keW/bxuQ?=
 =?us-ascii?Q?SDsT/F+A7x7Gthfwbrb0Km027dQHYs5dwizQJs5njhDRf3b6SXIKrjXv7t+h?=
 =?us-ascii?Q?fHV9RBNzaPbLwy2EMeQq/LNxtpShAMUtzudDyJkOJGYntJ+A5bW7ErN1ILVk?=
 =?us-ascii?Q?yovJcUCWsg=3D=3D?=
X-Exchange-RoutingPolicyChecked: IqcIPr3uMMtc6pwxAV7Pj+BcVivRjL/4uFnBASNPwlaUXUT+/DtE3cS4bECp1fexZ54d6z1iZpSn9QkfJr/AkNKI10d1BbFoFJrluXAsrlo7CSuf5SociX+huXhChE7wh+FIV0lpnCNx77aA3xPOcgRAcV/SiQk/B7EsasWB/pSl4YdPp3N83ZJfod7s6x9+IQpHgNSahzFSjypmUyzs0SPjzW6j/MWkXIVvf4FFCBuoseHD4SaJWMmWa/Q1l/Hamqa25GCbgm+Set00Dhp0QfO2xf14uN0kr1VqQxIrujUfB7wcpalQljwinVIWnznT1TvkvLRKAosNJ0f166I5MA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 900d57b9-275f-4e14-3160-08ded78605fb
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:56.1051 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W5W6bsPZtkkVITxNpB/ZavhO+Dt+B7+oMh/UxAmYmBqSBG+TrmSgUwFv2/GsUyNrWFNvSRttbldfz+T6RgRVFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1A606EF47B

Query the maximum link BW configuration via the link caps interface to
compute the available TBT bandwidth. Unlike the max common link params
used so far for this, the max BW config also accounts for any forced
link parameters.

This makes the max BW link config query uniform across mode validation
and TBT BW calculation, and allows unexporting the
intel_dp_link_caps_max_common_lane_count() helper.

v2: Use the max BW link configuration, instead of the max link limits.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h | 1 -
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c    | 8 +++++---
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index c209c8a935234..8dfb7f4f703bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -290,7 +290,7 @@ void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps)
 	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
 
-int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps)
+static int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps)
 {
 	return link_caps->max_lane_count;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 667bd70b2396d..07002d745d384 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -125,7 +125,6 @@ int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
-int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 76e9753766b9f..49fa4c9699b61 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -58,10 +58,12 @@ static int kbytes_to_mbits(int kbytes)
 static int get_current_link_bw(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int rate = intel_dp_max_common_rate(link_caps);
-	int lane_count = intel_dp_link_caps_max_common_lane_count(link_caps);
+	struct intel_dp_link_config max_bw_config;
 
-	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
+	intel_dp_link_caps_get_max_bw_config(link_caps, &max_bw_config);
+
+	return intel_dp_max_link_data_rate(intel_dp, max_bw_config.rate,
+						     max_bw_config.lane_count);
 }
 
 static int __update_tunnel_state(struct intel_dp *intel_dp, bool force_sink_update)
-- 
2.49.1


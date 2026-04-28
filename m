Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEU9DE+u8GkWXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B41B54855EA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9409310ECC8;
	Tue, 28 Apr 2026 12:55:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PE2mW2K2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31FCD10ECBD;
 Tue, 28 Apr 2026 12:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380938; x=1808916938;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=wgrZptgKyoOGqBPDM03RJAWYY/QLMsVplGbxBljD6/0=;
 b=PE2mW2K2aSubtZkKbr5pTRRXgSxHWM5Rgf4aTEWKFxu2R8hICBX2TXc0
 EX9Ee/u9Nd7FlDiV+8G1mUBZI5uxx/K6bZ+v8Ol8+h6NwSgsC3bIisQXX
 6DJcYrg3VyHDGfQ5kUYJ8gednPQ59Hz8niXKGV1HjI+L8N0aCAF3y5lLf
 tkEoWV7Dyj6vC/ZCMaC4yGJ+s0yduaN+I/92HWfBDHsUjp7pclYZ15xdw
 Z0iLifhrc4PnBI7RGyFPo9n+LfQD76504Fmq5XYGAiB3uY5OysbHfR2+8
 0T3IlaR+an4WIBr3ClO3YLi1CDKXnDqFO62NmjXe+tWmMOuJKS8U30Bhu g==;
X-CSE-ConnectionGUID: sxYPa+kpQyeri55gSt4aEA==
X-CSE-MsgGUID: 7uRGryBdS6e5fK3nYS1G/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203337"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203337"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:38 -0700
X-CSE-ConnectionGUID: dCcu4aUjTUGyH5Qk1hjKEw==
X-CSE-MsgGUID: eG82HEqrQz6xanHiFgQ9jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244952"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:38 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:37 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:37 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SB6313DiWKeU3quwRzSqrSqXX6/0s4nkUaneE854wL3SlsTnCXlDVMJaPCZFGlPbqPNvYu8CpNXWI8Jo7ApDeiyAj/ODOyRLS1UEUgzIbWvxyBl8ZftdUSjlEec5wsaNM2dCGSZnJVodn/wKkhHxpGP55QrnL42MdofjYAVL6L1TDwtChtqQQPYJ64ScHySrdROze1fIb2WOkBMSP/XjUgmCHIJvrdvcI94DLXzTmQzWmrfLTgTQPV7Oo+5k+Myi4aO6WRIW87yWAOQXPWRcLTziz8aTuY1fE0d2X4mDyQzzq4M7ukSHsc1LeJxECcapKPNi3t4AF5KoXYnof77aZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S2b+nWYUJXK2EbCPMHRu5Nfpz2Qq8q0ISmCbhd+1p+I=;
 b=QvRuAnPH2gD+iQdi2XdKaE9hrQyOvJsFwF9XfELzfFz1IzU+3bePOt07rsA/fhk6hdAYAPZ0LksVci5rcEd7UoPq6J6lMULJnFRKjVymU/7CQHdaA5p/rC8vJ4EHjguVW4m5mJNugIYPYHLnqaC4oVh4ASYIlBkbpsF8dBfVCmVrZy3W4SUPBCzwssBCpoa4V7RJfPDnGK2ZbW4rwXQEzm1X8FYxr16TbLqrvswt8U1p56Z0mu6IutkjOIe2x2s3QRT4tmco2L6593fZmLg/LD9Nc7Vf/k/R36GEP1ixKIAmht7+LEJ7c5MrCxwStOIfCX4moEHCWCgl4uLmrb0P3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:26 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:25 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 098/108] drm/i915/dp_link_training: Account for disabled
 configs during SST fallback
Date: Tue, 28 Apr 2026 15:52:19 +0300
Message-ID: <20260428125233.1664668-99-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: a328cd18-ee41-4219-75cd-08dea52567df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: rri1cQ4iRYYm6BZRroocs+n2NJQwmBAmHq/3Z2nMIKSXt3qyqfJ57D5pbWw8N6W+wC+/TcBFi5UZr0SQBXhS3VJspp+IFotnMflrcGhZ1epjKFS/l46yMK7WJ/Kq+OTHNP06JFBEuoRz5HVVN9ExVrTRejcEfD/RWV5rXLALeQwz2BpjB398MijT7UWu2Bfq/ovWF9mx96wbabNKu1DMDtWMtSaIxEuCicm8szJoFn22JaaJ9Xp1ERI2yoUv5RYKeeXUnsReIQ+5jAVrq8eoA4A3w+kO2gHViUauqHQvMN2fdcoAoS1bk70PLAfgdGL1sSwidh3OrcO0ayi6AKdtmkEaW6pm5owUelPbYB1S0c4693iapajea8Zfcpd3MoF1G8KniLtDkHTbh8KHpsUQCAW78hOdo4GpHe5iboSmBsyVgW8eUoc4JUYPuMJQt7y7TtrsCNinsERsdnVcTvZbGQZ+doPqhYZqyIi/VxCnfYyXjyh92BecGUtjzn1Zh5KPmQJp1iVkpFF9B/Hp9YvD9Kloo6GzvIsonwkpxt8Dq3uGasUtjyM+TOyF2ci2lvWPez3lTU2TqxbFqb+R90DA5VX3KDGEoKscF7d9CKRfSokoKfc2oASt1ztUN59qASjTGuRlMYQ9FQV3dGVdwn8iJ6QsDq8M/HlDGndqWECbULlPeSFnXdr95fChqMTC0hRvA5z7GdN9lUuFe4+AG9r+l42/ZDiwyHX4suC5w7AzkvM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/pG0nrBXxkyM3JTLAVF/BIKAfNYHR8oiCEamXUAqdOVTasWUzfpQFYD9tJKY?=
 =?us-ascii?Q?3qIjKB7Ntj26Q66xphoj0X5aux/vqeVARs3XtooWvosHvItseW1zs9AbuE+T?=
 =?us-ascii?Q?rIWVoHI85DMJKhxQ1N52SA7lt095l0qV6peCbXd3SQWiDmIbbrE5PBmNwGMb?=
 =?us-ascii?Q?1ZPpHDU6dRovSZqqNLzxoNAW3W8RtIMf27/wIKZBjKlm4gv04V0AFB0MsG+k?=
 =?us-ascii?Q?NX2l4wsi6XMvnZxRTlpPWhyIHQTAK5d8zNiBZGmI5GTljCsumi+rXmuDfRCy?=
 =?us-ascii?Q?Kog7MJW3yp2MbxhtLlvMwRCtZ03QAuNgNMuB9jx0CeHRSUx9gPAreesotuMa?=
 =?us-ascii?Q?VsaZWvbDzfSDZrGEIJb7Kp8c/x+ol3q7/y7A6kOUTMV75Q5CaqFAZRBoZWXi?=
 =?us-ascii?Q?atz/X/jjCP0EpcX82hbdfSb36sxWOcafmFR7htAZehhM666v4dMUEw2hdF0J?=
 =?us-ascii?Q?g97pSXmzi52ucymUjbU60J3s6LHoUGF07nrVyQa/dKa6ehrBFEQvxJ5Uvc7I?=
 =?us-ascii?Q?3WKTEWy++uou5qA8/J18U01Jjko7fsv5kXHjZFKVCcFKGP5ONFvUvQC7QHFC?=
 =?us-ascii?Q?vrlE4FVEgw/WYTD6fR8gUK9rGtKGbySMDmkk5OyAXhF9q79UDCpbyn4EI2yh?=
 =?us-ascii?Q?e7FpeZfPWcjsDizcV+RcwS1XOKJnrk1QDFB5DxCXJhKMeV7LRvbSUAroE7MR?=
 =?us-ascii?Q?HetxydPKDw1YNVN3hXhgUnGdnFUhNJD3KDFxwXCGcFgR9DA7ghlrOV1nZ60P?=
 =?us-ascii?Q?RiYQ4ZRh6OxxUOzbN6rrGbmz4sVih+yNbDsS/7efUQ/MwVSyVXSZxCBW6pUo?=
 =?us-ascii?Q?Ohpm7YK72pBFUqDGUCasrEm2PBN95IJ+wQu+oyTZ84StGY/ivIwE3HrEMj1k?=
 =?us-ascii?Q?59NG594tpnqt1TAiOeLBMOI5aYYV3lkbvZukultx72bcnSWoNdHjcT73t1Y/?=
 =?us-ascii?Q?WVeZ1yajz4FpDfRbn9wHGfAk5up0Deq47T6x3EMznrAujWzlx97KXTc8nGfG?=
 =?us-ascii?Q?HgvplT+BGc8ZTOM7iFgyJAu1vyuI+rbiGHXIQVCzTVTRhH0wmNegIGkD6VG+?=
 =?us-ascii?Q?lzPpuy8DYFLl0e2u/M/O/vv9cFWlqs9NlebQVgaTuj37CPTSn/pbgZLMY8KG?=
 =?us-ascii?Q?qe7U5+tXur50qH103UDcS1WkQq9fK1i6p/wNZz2rGI/bLiemOayYnAlQkAJn?=
 =?us-ascii?Q?BZ7gyzGmEBtujMsg9NeJX67Kv3NMbjudGCqw69hlb0cx7tc6G9x1/q9kOpK2?=
 =?us-ascii?Q?287T+3pK3C1UI5VRSZjce3yo6aGc99NaUpdS8Nqi9zgMsMe5Na91/qovb13S?=
 =?us-ascii?Q?afbtMnWnaZidyayA1BDpDxOE99foz3S8nfB468ygxBOCv/pCLRAh1zgII1G1?=
 =?us-ascii?Q?JeWMywr17XCMQ8cjiTi6c+j9CZ1HGEeidqS/NcWG6/gheVpjUAUvcjqEWTV5?=
 =?us-ascii?Q?iUuiPZzuf/2HPfuVEl/32bRNaGkxjbt1QM1+Pn5D+cjL5PuTy8CZgKBDePpV?=
 =?us-ascii?Q?W7NGVmsShxDD1PJC74eOeLkfDm9DsIJQ9F10gwLlinvqa1oIe0tO0AMZ66Yx?=
 =?us-ascii?Q?p/BZWuBDBqna2DcWag1XikKzFXyD/MCNxAFBdV2+oW9p6P1213Jl0jS+Ck/e?=
 =?us-ascii?Q?Pgw1bYiVOXCnypE8oGhTFK8DPTEa3PHa6rVYdX/o2yBRYriGgKN67SiVKa/j?=
 =?us-ascii?Q?gxx6ueq2FzRrTi4Ki8D+S2RYLXNn33YElrE5wUfymnwHOkGA2Tzcpb+Iu4QD?=
 =?us-ascii?Q?1ao7/MNZbw=3D=3D?=
X-Exchange-RoutingPolicyChecked: KpnNRx2xQEQAgqNI+6QbMg83vHt1axXM+2a3qJr78NKh/neiA0Nj8OR8RNF4c5SquSkHSRwfQOWSIANuTZK/QWK8CQRCeLmo14GsDSEWxWKeXROIRRjShMtTXrwUQOhNGsRu6OGytw5cnnCOq9O/1HfD8I9SEWNUHYbLx6JvFURHDVrNB+TVC9op1MtDrmGX5j1lMaH7dTHfpvf/x++gOb7cicvrD3zG7JKkF3cj4HHLumEJ4wZ90nBj+UE3NTu2ORgxTqsboD9m1KO/dLwrc2WxNQRnZw/ERAQHtZa4uqKppfsqj55fuQ5x3fgVRhTUuYZPnwO0x22QJwXp+/oUdQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: a328cd18-ee41-4219-75cd-08dea52567df
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:21.0702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d+ciiLCipjdEDwdbDpnv9WpQS/SVjydfujeVVDWcUZ8VCo6JLAhLxqDx3al+9lBX+HI3gkWV/bdz1d2AuGRaYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: B41B54855EA
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

Account for disabled configurations when selecting the next SST
fallback configuration in rate/lane order.

The rate and lane count reductions are applied independently, so the
resulting link parameter tuple may not be an allowed configuration once
individual configurations can be disabled. Keep reducing until an
allowed configuration is found.

While at it add a TODO comment to the rate look-up to handle non-nominal
computed rates.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 65 ++++++++++++++++---
 1 file changed, 57 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index fb20795a7086f..a9955f04d507f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1834,6 +1834,7 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 	if (forced_params.rate)
 		return -1;
 
+	/* FIXME: Account for a non-nominal current_rate */
 	rate_index = intel_dp_link_caps_common_rate_idx(link_caps,
 							current_rate);
 
@@ -1863,30 +1864,78 @@ static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
 	return current_lane_count >> 1;
 }
 
-static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
-						  const struct intel_crtc_state *crtc_state,
-						  int *new_link_rate, int *new_lane_count)
+static bool __reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
+						    const struct intel_dp_link_config *old_config,
+						    struct intel_dp_link_config *new_config)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int link_rate;
 	int lane_count;
 
-	lane_count = crtc_state->lane_count;
-	link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
+	lane_count = old_config->lane_count;
+	link_rate = reduce_link_rate(intel_dp, old_config->rate);
 	if (link_rate < 0) {
-		lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
+		lane_count = reduce_lane_count(intel_dp, old_config->lane_count);
 		link_rate = intel_dp_link_caps_max_common_rate(link_caps);
 	}
 
 	if (lane_count < 0)
 		return false;
 
-	*new_link_rate = link_rate;
-	*new_lane_count = lane_count;
+	new_config->rate = link_rate;
+	new_config->lane_count = lane_count;
 
 	return true;
 }
 
+static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
+						  const struct intel_crtc_state *crtc_state,
+						  int *new_link_rate, int *new_lane_count)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config old_config = {
+		.rate = crtc_state->port_clock,
+		.lane_count = crtc_state->lane_count,
+	};
+
+	/*
+	 * Guaranteed to terminate: either the rate decreases, or the rate wraps
+	 * to maximum and the lane decreases, guaranteeing that the minimum
+	 * (rate, lane) combination is reached.
+	 */
+	for (;;) {
+		struct intel_dp_link_config target_config;
+
+		if (!__reduce_link_params_in_rate_lane_order(intel_dp,
+							     &old_config, &target_config))
+			return false;
+
+		if (drm_WARN_ON(display->drm,
+				target_config.rate >= old_config.rate &&
+				target_config.lane_count >= old_config.lane_count))
+			return false;
+
+		/*
+		 * Rate and lane count were reduced independently, so the
+		 * resulting tuple may not be enabled at all, and either
+		 * parameter may even lie outside the range of enabled
+		 * configs. The target returned above has already a nominal
+		 * rate, so require hare an exact match.
+		 */
+		if (intel_dp_link_caps_find_allowed_config_idx(link_caps,
+							       INTEL_DP_LINK_CAPS_CONFIG_MATCH_EXACT,
+							       &target_config) >= 0) {
+			*new_link_rate = target_config.rate;
+			*new_lane_count = target_config.lane_count;
+
+			return true;
+		}
+
+		old_config = target_config;
+	}
+}
+
 static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state,
 			       int *new_link_rate, int *new_lane_count)
 {
-- 
2.49.1


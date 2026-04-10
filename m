Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKMEF/gN2Wl+lggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 16:49:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB013D8CB0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 16:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5D4B10E969;
	Fri, 10 Apr 2026 14:49:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lfErUajT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9EC510E969
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2026 14:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775832565; x=1807368565;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2UrOVLl3TFLnNmuYtKaK5NlBrV+fgN13SZ6no7ylEEE=;
 b=lfErUajT2qjiLkoh6XuZx7am4GemgipWer7nG6ltquA0ynNZQwIyfg/t
 hVI2GSUVeXfGezTtGEFhBeZbUmG+A0lwL+zGRnRgpO0neLxWgp29lTtOf
 sg85rxkV4sjIHWz5aKbNq20UQlH1QmJGpJS213341of1l2P56Ihlcow7F
 MSITagYGTSGNxzCWEiJyfFskTL/KQiUpIFD+gnhJVN6cLMaCMneWl9P9k
 bzi/cJXSOvXjv+WzO9MdfDZkcb3C/L4Z+XrvxM2PbTkHO+QwwCK631Jl3
 7XbmlGZDltyQaAF9qPkb+MW3RtxqwJGhrVZ4Q05NPcqmToRk6e52CRgIJ w==;
X-CSE-ConnectionGUID: ONjB34BXQri8h4aWQkJTaQ==
X-CSE-MsgGUID: CmV5U7ZQTbCEWLAEtPNq/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="88237699"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="88237699"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 07:49:24 -0700
X-CSE-ConnectionGUID: PH2C6zTdSJmBn/uwGO5ouA==
X-CSE-MsgGUID: lPRtH11xSKCaDrrGejtaCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="224799429"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 07:49:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 07:49:23 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 07:49:23 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 07:49:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yx5JxzQErELAZbnBfP1M7H8aoAADgNIWajAgTQKwpv1CCb4cZ9IRKNSHBUNB36662RwBu5htDd1nNbUhPfWVjbFvjnf35QOf1eA0RFkfQCsdJ++LgbH705gGWxgPLaPsJ1eUtdB5OrVRQ/J2zXXoclaikeTgllW2eKkVDAi9UbSsO8dlHBL+nBJW8N3nnFmDogsU2tOmT2QRoFJjfMVR2PG/+ftdOAnanj5cCAUm2pk2eplkmSGPZr55jXWFuczv3ftVz3xJgn2c0lXmiHgBFP78iTaAyKD7Z8YbmaNw6PU3yoCE5GEJQa4xnzfGhqOPywF3lfVcrxsEqYQXm/FGUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DgfuJ2chCW2rRdc1zSl90vKjO6EebultRJtP0J7txQM=;
 b=j9cz08Fsr4jC7nodJ3TaPCru5+YB4Zvh4F/DAEHWxEfWmz4T2qBwuXX1pW86UtF22V4MZ2DyLth5NMBmP/0i5m0X0NIPRbA7yM0CcGzMPM1IaoSkVNANQ6X1a+2IIpggTq02LNjTQSG1UR0Y2/T/tJjT983XdzQCoFhIiclxLNLs7XhLrGmaPY9jwFnYp5QeR/3RMzJJfvN8GFLmtGJ12o3hQsxS/E8CQK0NvuU4E2uI1Mkt1KBz3fxzd0FDC9pytHJfki/W6sboZIbbdYsiDfw105ZKMB5Z7T1gd9XvDTxv/WtIaKDWDKfTCh+rMcDJPiIwq+ZAuXZWLPJ2U58L3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8537.namprd11.prod.outlook.com (2603:10b6:a03:56f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.42; Fri, 10 Apr
 2026 14:49:19 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%3]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 14:49:18 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/bw: Deduplicate intel_sa_info instances
In-Reply-To: <20260409232630.GC6301@mdroper-desk1.amr.corp.intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-2-23c53afa7db0@intel.com>
 <20260409232630.GC6301@mdroper-desk1.amr.corp.intel.com>
Date: Fri, 10 Apr 2026 11:49:14 -0300
Message-ID: <87fr52x445.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0P220CA0007.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8537:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a7e7e4f-055d-4719-da6b-08de971057da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: HL57VcDxJMg/2FEDwJpIwQGNUlzAj8e/WSlWqCUwgTl3gMGGZzHgCo+2P2uhkHnPJQzR5cr2XJsSfhBloEomqGyURYz4hFA0zZLf1+XJ+TggvEeHk2rih3nWeqOAFl4ihzcjgdkStKlWyeH/X55fdb8GXtPLTjQejpnMPOZy5ydNS674fOh+84pqofJiDEB56HhmStKQ6lfilw5JTqZ577ccZps4uESAVK9tQEVayLJ4raIu3wKa/LUN67LV3L4DuwRm3sQIiO6f/bIjw2twIhbLa2etT2DmZtjv0hC/cXF+S9S84w6nKaoReJIRNc7RWz/dyRjRRA5NKFIcjuK0Sn6zfens0c6AT7qaXHqYmQ94qkxZalsqR52H5ejXCGzV0yduvXWqlapGldNkHOMZn9gKQcaQWYpnK6tDffIqQOpm92GnmZngw2JDJz+FJPcm1S9EoYC01aLRiHo61Pakx+qt/9V/UEtvS4ynVkihvo8xuxqFoheREDrvR+6+mBuS/m8fL3042YzdsY1DoFncrOGgLlUYIoEPkqBfg3tx0g9T9ijpHBAUY+JAWAInqtaQOAlk7ptEU7Bo1XZT6bPmf7IzYlcA1wXBGB33H9CwOHecVwYPmPujz2f6iQ406VqU0DI7VrxMUKPwTVr22Nwe13Xz+7JByv4S55DG0Z0I0hbpeh7sbrSmoolmrbkaJvi4+bGaYUQ8tfTE0kXqcPiafmZbk76iM5jJqzAyrmtFDGI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jzHVKDEM/vrYxLjnfmTRWa4D/vOXAniUZqf0nTU7xPWj2ba52vegIiYrWdEF?=
 =?us-ascii?Q?hEOXKo71YRZlUqOYCGmFv6yQtoF7DhEYxcUoHN4cbS+qc8R0QjkOIi/ClYXP?=
 =?us-ascii?Q?Xic3YLMktSQLlnqyYGgtvLudGHl8rgjvOFMKCf7mD4KkJCU4YSA3iDSsrkkp?=
 =?us-ascii?Q?sOD5UgIDeMksLwudqNODDQMU729DQcJt1dnCEqrtNbKIzOwP89SPRjYpYNjR?=
 =?us-ascii?Q?aroBNuSZ+nrZw1ucVGj2n1Y6oappIbYTztg04gjvqqNRs2cubVNMdUsjqIf6?=
 =?us-ascii?Q?bB9938RKeoFMxXvBWo4iS8sj1AIv3OW5phl9VhxoY/cKIJ+nv/6J2exk/Cqm?=
 =?us-ascii?Q?o0Zz6pqq3Oa6sA61WU8ZF9l1TPxtvwIAfrnNprd7+PsO/yqrcSguZBXUGrii?=
 =?us-ascii?Q?uEhxivBX+IF5e3y6W6FyqTorIVMxmjDXIBCYXlsNV/7F6JNxByfNgN5I975z?=
 =?us-ascii?Q?FYNiSDvFfLIJAQB4rUUjUoLacLtRODLu4cR4FtZJkOStQYg1jP9m4jj+LfmH?=
 =?us-ascii?Q?3mwEM5a9b4yJXpFWbsh9pstJ/5Hhr3N7p8Q0sIipCk3ah901P3FcVWmrT3dA?=
 =?us-ascii?Q?BbkVGXcQfd5vJirVShkYULC+YaUlV4Kjz6Dy14zlI5HQTvJIfrajl0qOSI0v?=
 =?us-ascii?Q?D3cJnSZmTZvccN3B2OJnWMBHnNHgr6bkXXzqYL6HdXRgfl7pHUl+tubz8RZn?=
 =?us-ascii?Q?71nIeIs8olSKwrleGyRfJsuqyvc5s7+bUAURS4PhBMS8cf9Fqhkft7piEdnf?=
 =?us-ascii?Q?IyuBFYw+wGiv/n7I6kpJAyCIx3fO5LzZz1W3cBc6XeWWpvAXYVkZl6SZf0qi?=
 =?us-ascii?Q?wn4OiGKUViwrN0H/CvK+/db97bhh+LTfaHDBs5dmmMISrigyFcUNtAfV1A60?=
 =?us-ascii?Q?xzOJh0ExYuwsB3kAuwQayluqJuMWuAR8caCcbFnc+NF97cxNfdyZoNoyDXDx?=
 =?us-ascii?Q?zYjZXZS+LFAYGy8aogAw3k92WzZY7x0uqKkdfeqVIgLidxDhoAov8HF6BF57?=
 =?us-ascii?Q?fAAt+cck+Hz7eEmf5aK912yb05Gh9YYrJw6T/JpJt5wnCghy3NhMv040LLfj?=
 =?us-ascii?Q?sKIzTeqANZNedToHB3AWecXSZVq2KLFVXScKkeTyc8jXjfxZgM8XIsgkje7a?=
 =?us-ascii?Q?f3lvZmTJbBvOCZfqM8QSDZ9Pc6x6Vy9rlEKycDQqR+vWGwzXSAq2FFZtxKVN?=
 =?us-ascii?Q?CQ4kiJbpPgsKDsYIiE5U+NOhNknyNxSdHeo92ifIvMfwDtTSV6YKK2sFZCfu?=
 =?us-ascii?Q?+pfLpiWVy+S/cXuwfBjAk8Vbv9zFyrFWppSzPF2bWRpOWUIz60+LAfLFU4OT?=
 =?us-ascii?Q?XpQwy0xraafpSteJkC4Yvhq2QP3kfCc42K/BLBybPUi40shlU/lzbtq1Q43+?=
 =?us-ascii?Q?I1r+lOkhT5MPkh2fvrg3exRmM2Y62NpeWOJqRgKZr2W5a1uP3tUk3rtj3dSG?=
 =?us-ascii?Q?4bFS/qRra4VOCLhmJLfN9sWYGcTrw+8kvsyjO5qEZsw/+J67Oo6kD858JIjw?=
 =?us-ascii?Q?FFsW4E092Wst7fbhYjCWBlbNOfQv+DcQ9cxU/vr8w98fDuA5/0b1XYWCCr+5?=
 =?us-ascii?Q?22TwvP+Sf8U5jrhk73tU8Y3C0AimQSUbehPLdQxH0zxydtij5+L+H3eHlXGz?=
 =?us-ascii?Q?eE8UIMhyj5eiMLiaC34ORqduwLAIBzklgi/NaZSn4YnWRYdSEdlP4SKx+uVW?=
 =?us-ascii?Q?rqaQzXCxA7hTnQegHS2O5qPVTzZmYO0Q0GjtiSa6vVZfAzQjLDCvenMpcsQr?=
 =?us-ascii?Q?WjXmJ/Ea4Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: gPLzGtrkn9lotpc6f3xSNDgiDMg5rug+kbgyb19RKr78Wzd3nzJzBpvnbanP3PSOKZZ8Ry0rhIB570y2ecC1rjyoW/xe0mg6zevsAXYCduhWGt+w00rsHkfHFZMFcnH1LyO6kGqFqFNYPRV6v9XxEOFLaKS0Ivtl2t+opB2HilHgLkTrJIldGhwroZhkyzw3OvNBV6SrA1adIdr3RICRzII2yefwm4TSaE3Ii6tq2TOHkUPprt8GGME3vqYLgmLxEVxNX1+GUBZYhyKA97CNoD07kv4C2tuz5A+V66wuvNBSco/gfHj+A5DsY2An1qKK815BGtT6lPaaPO3i8MKj5w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a7e7e4f-055d-4719-da6b-08de971057da
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 14:49:18.3853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V0+tR2Ynm3sYgCXaquIgV7M2BJ+PtaY850BOAeuRFvXvkdasKj9uxF/Hhydb5mtaOtoYNC6ovQDX5NoXxJgGig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8537
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:matthew.d.roper@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: ACB013D8CB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Matt Roper <matthew.d.roper@intel.com> writes:

> On Wed, Apr 08, 2026 at 03:53:00PM -0300, Gustavo Sousa wrote:
>> Now that intel_sa_info contains bandwidth parameters specific to the
>> display IP, we can drop many duplicates and reuse from previous
>> releases.
>> 
>> Let's do that and also simplify intel_bw_init_hw() while at it.
>> 
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 44 ++++++---------------------------
>>  1 file changed, 8 insertions(+), 36 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> index ed840b592eff..654876215ace 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -516,27 +516,7 @@ static const struct intel_sa_info rkl_sa_info = {
>>  	.displayrtids = 128,
>>  };
>>  
>> -static const struct intel_sa_info adls_sa_info = {
>> -	.deburst = 16,
>> -	.displayrtids = 256,
>> -};
>> -
>> -static const struct intel_sa_info adlp_sa_info = {
>> -	.deburst = 16,
>> -	.displayrtids = 256,
>> -};
>> -
>> -static const struct intel_sa_info mtl_sa_info = {
>> -	.deburst = 32,
>> -	.displayrtids = 256,
>> -};
>> -
>> -static const struct intel_sa_info xe3lpd_sa_info = {
>> -	.deburst = 32,
>> -	.displayrtids = 256,
>> -};
>> -
>> -static const struct intel_sa_info xe3lpd_3002_sa_info = {
>> +static const struct intel_sa_info xelpdp_sa_info = {
>>  	.deburst = 32,
>>  	.displayrtids = 256,
>>  };
>> @@ -903,25 +883,17 @@ void intel_bw_init_hw(struct intel_display *display)
>>  	if (DISPLAY_VER(display) >= 35)
>>  		drm_WARN_ON(display->drm, dram_info->ecc_impacting_de_bw);
>>  
>> -	if (DISPLAY_VER(display) >= 30) {
>> -		if (DISPLAY_VERx100(display) == 3002)
>> -			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
>> -		else
>> -			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>> -	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>> +	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>>  		xe2_hpd_get_bw_info(display, dram_info);
>>  	} else if (DISPLAY_VER(display) >= 14) {
>> -		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
>> +		tgl_get_bw_info(display, dram_info, &xelpdp_sa_info);
>>  	} else if (display->platform.dg2) {
>>  		dg2_get_bw_info(display);
>> -	} else if (display->platform.alderlake_p) {
>> -		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
>> -	} else if (display->platform.alderlake_s) {
>> -		tgl_get_bw_info(display, dram_info, &adls_sa_info);
>> -	} else if (display->platform.rocketlake) {
>> -		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
>> -	} else if (DISPLAY_VER(display) == 12) {
>> -		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
>> +	} else if (DISPLAY_VER(display) >= 12) {
>> +		if (display->platform.rocketlake)
>> +			tgl_get_bw_info(display, dram_info, &rkl_sa_info);
>> +		else
>> +			tgl_get_bw_info(display, dram_info, &tgl_sa_info);
>
> It seems strange to need to need to drop back to a platform check here
> on something that's supposed to be tied to IP version.  But if I recall
> correctly, RKL was a bit of a strange frankenstein platform where TGL's
> "gen12" IP got backported onto an ICL-style chassis, which caused it to
> inherit various ICL traits despite the new IP.  It might actually be
> more clear to just re-use the icl_sa_info for that one and leave a
> comment admitting that yeah, RKL was an oddball platform that didn't
> really follow the rules.

Huh.  Yep, using icl_sa_info sounds good; I totally missed the fact that
rkl_sa_info matched icl_sa_info.

>
> We might also want to rename tgl_sa_info to "gen12_sa_info" since that's
> a more accurate description (and is the last version where we're allowed
> to use the "gen" terminology rather than the new marketing names for the
> IP).  By similar logic, "icl_sa_info" should become "gen11_sa_info"
> since it does indeed get used on the other gen11 platforms too
> (jsl/ehl).

Sounds good.  Since I'm renaming the struct type name to
intel_display_bw_params (to indicate that those are tied to the display
IP) in a separate patch, I think it makes sense to do the instances
renaming there as well.  Ack on moving back to mtl_sa_info here and then
doing all renaming in the patch that also renames the struct type?

--
Gustavo Sousa

>
>
> Matt
>
>>  	} else if (DISPLAY_VER(display) == 11) {
>>  		icl_get_bw_info(display, dram_info, &icl_sa_info);
>>  	}
>> 
>> -- 
>> 2.53.0
>> 
>
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

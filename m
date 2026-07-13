Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wo+GNQlqVWoroAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 00:43:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C84AC74F8F9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 00:43:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eumimyeQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B5110EB5F;
	Mon, 13 Jul 2026 22:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F5D10EB5C;
 Mon, 13 Jul 2026 22:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783982597; x=1815518597;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ic4O/ulSzGzeI+WxENo9PDMzu0P3O3l4PaJQGKBa3pA=;
 b=eumimyeQEszPJzBuuJd3MIBMQVykyaCvV+sne2Dr1GYCKSvx/BdVcQ18
 awRWSNZ7SV01oN5Ucnj1+GawxC8DpHeOIumXdzO4MqjvBLES3PyD5Mawv
 wnjruNPPhqiRISrRNH4hLmLKpfwUW1+Gy2ygIeQk70Xq4REl5/IyhIneg
 4+mbfP2G0xNHi2E20igE62A0wSkCAPZNISErIaNWuvBgNDtnehn/yNi+w
 Wc5DsG8B5pbb70/JMIvtoJwDn20gnSRN/NfJr0psTPFmvXMgVHkzoYz6i
 O4BViURPBeUMeHL5PnzlHzW16sGZWWLPlbB2AzCUezAqlNZ+Ey8T1PAdO A==;
X-CSE-ConnectionGUID: XVnQpMndSemtTi7hujeKNA==
X-CSE-MsgGUID: SZh+S+QhQEuCcMOL7LMl8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="72124070"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="72124070"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 15:43:17 -0700
X-CSE-ConnectionGUID: O3vUeZv2Tq+owsfPPYG04g==
X-CSE-MsgGUID: 40NnRx+VTK29SnXbr85icA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="259994502"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 15:43:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 15:43:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 15:43:16 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 15:43:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rKtLeHdWbueGirLMXQ6tSR3g18LWkly1u/iNplE1lVvIrk0EZe78tW+B6KebyYME5BVhAWe/t2uWokbmDU8F7FzeAlIBRcmVC17c//uoP/GNxzYieIVDH8xLQq0MuV++Am6ht4JmhCnBDJRUM64ez4HmlUQ7l2nViPN9PhhR5pbGObXV4+ZxeKEYLTQSaONFzklFDhF+tQEoRJ/X1Rr0OSB1jRLExU2F1kmGQX+nnxNNacgqCpJnHfTQ/Z10OqJP1xpo1G7AmZxLibMoGn8Whsc9MZgiBgPs9hoqTQWWPXiqyMIv44V8aVJ7PT4Rjcln7wKyxxNeB9thALOYHpZzWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8KTHSuKz7V/c7WokFG4gZRdjjRoPRuDM09J0A3Bkz4s=;
 b=bodeVjIN/JTLFujakbTDkFTpP6BsRywotFJR8hX2PhpkDfpGVTKNGja5z6xGQWW69XfY+nf8oj8AxICU6yDAsBooEx2gWWu15e31LdhCAjUgp/AuJzD4xukD7wyMuJV1KZDPYqv1HnjXFakasz+gT2QDF368t9c6JipHwXP+SYyIUAZlEYbwDOFuX1IqPfptyUJCu4/FIx7Fg8qgalSKXLhVrw3/9w4dSXO7q0zV4Yl8GlqSlftTVZYAYQsN1oomDrc6iTvojaKmEQAbrpVnxl+px6MhdKbPcTQoG/Km/hBulbrTxKfmaHuQuvYq6R5sAve8/8k0J4L5bh1eHEvIRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by IA4PR11MB9418.namprd11.prod.outlook.com (2603:10b6:208:56f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Mon, 13 Jul
 2026 22:43:08 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0202.018; Mon, 13 Jul 2026
 22:43:08 +0000
Date: Mon, 13 Jul 2026 18:43:04 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: John Harrison <John.Harrison@igalia.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <kernel-dev@igalia.com>, Uma Shankar <uma.shankar@intel.com>, Animesh Manna
 <animesh.manna@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Fix too few bits in transcoder mask
 variables
Message-ID: <alVp-CHJWlgYvL_k@intel.com>
References: <20260713165626.2827609-1-John.Harrison@Igalia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260713165626.2827609-1-John.Harrison@Igalia.com>
X-ClientProxiedBy: SJ0PR13CA0049.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::24) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|IA4PR11MB9418:EE_
X-MS-Office365-Filtering-Correlation-Id: 117b4df7-63ad-487c-361f-08dee1301c0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|6133799003|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: vd46bdsl83X9rdTUrAKBW1PQfcojpmN0cnE22da4tp86ASAMaPbkPJ4/AmQkKk4LtBJrOSUQYze0hecNNVCIuJYUIo4/W5LL+24cw+sUrrMwuBwDXr2H7Z5fyIi4ZwKclraExwXTwK/6DaTwjA0Z1MiPSDKtm24iMkr5ARHOO2In98FWUsgSqDQ5BTWSGAAT5/Shr8Y1kakd31zY92Cr/i0S/MlHnRhvlWGfuIVaUHhtai9EvzZFxOxoMUv5E/A+k5pzFFYJTBTk0bR2iJVsjrDRJOAEdlVJXMtS0pRbQOi5lioyKc9rzBDJZak7D4tcU/AfpWaQ13Vg/lNiVKGPv0oq3vfA9+GEaN9cL6lP5gxKNtE0N6AzFQDJ0tBjN3nUnN7dfNYvwSma4QQsDYt8Oas40+yEWAT+GRxvnoVlfQnLo22R6m3sEcxaKKGT6Psv6ccwdAzgLqqQqauD+KBJWAlQ/CVSksDHW4hg4hdmSmS8AJolYuLzLiElOAPaFSwzJCZk2uFlYRdCjlN5yC+4Vi2sWQwZqyHYMcFthg5ExD6I/zMvI6IPPhQMtaKQWvJnZIMdSZDvHNaXau+N1GQyDT3ad1aArf6xngIsmie7hYc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(6133799003)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rVuYGfLFQDHUlLY2TmzzRnu7miHUuZU6b+6bQIsUfpvqOEK8tdhybEOh6zOG?=
 =?us-ascii?Q?lds448hEQHFur76ogSIgoxYC0xcx55Fh9HATokpyrD+ouQDksmRntJytHZjB?=
 =?us-ascii?Q?SaSKM453yLUmYRodwNynMCaY0TN0BBLXu3wTTmKb9mr4gUTelK1aBT5hpLXs?=
 =?us-ascii?Q?/9dg7t4urCVGk+gkjWNDJiMGIvmyTS9at+XITQEpCBXBdBtXI0FHihJvyofW?=
 =?us-ascii?Q?EfLBMYniQQiPYClja/h/Iro4yaBwsk5jKWkuvChXH6aKuPBQqtc/xzc7Jvju?=
 =?us-ascii?Q?QU26v2TrLjnOwHoy5Q9bT+0/ReoTDdZI2frlZ/wbMrfhVuDzuGosu/luAn6h?=
 =?us-ascii?Q?wfbH22VVhYPDDli+H+dSVzAX/dxBoITIxhR4B3svXle8fySNq8hpheAP2NlV?=
 =?us-ascii?Q?lVKNkC7vTcP7NMgABYNc3CisQhB1pb2fTKcp2PbwsTDkDxnMZ8yB8ZrWeF6A?=
 =?us-ascii?Q?dCmpFPJTKsOKipiUeID9ACuD+O7/zL0/0qUGFzo209uN+7BgWjfiWobHXkQP?=
 =?us-ascii?Q?wSDt0xsHZMU/BE7W/5QcuM+7aFmkP+qmH44MxcaZ4wFLBqpv6B+oDDdbXFw6?=
 =?us-ascii?Q?rJvzSW17KqF3MrMiRpmnTerhilz3fgLDY0ltiC8XW8PvfB+Yz7a/SSgKpbCQ?=
 =?us-ascii?Q?iZmqepg7zump5MLXP7P4LMEvMmHWiF8yOAsCFq2HbAd0jPES+rD5C8hMyAzy?=
 =?us-ascii?Q?INI5bcoIz4f+30FEZmJMsYGz/DO73/K0/mTJTzIJA5S2rv27rQJ0ohj0TNKD?=
 =?us-ascii?Q?w7YUmtukTJhbVQUv+lopC82XGMrPwkwjGLvBbQsAEN3xHJnlEogq+PER3XEX?=
 =?us-ascii?Q?1TtDyqWexYEHtuwOcR52JYXh5I/5Zs2puj4T43M2YBgY9AmzFJu9AB0zNrgg?=
 =?us-ascii?Q?Ad2KDj/Db1cZGtcmNUqjdowdS14q9+wBbW6aNeu7gz3UrXvor/A6NTYG8Cmf?=
 =?us-ascii?Q?zPbRzrJUNZAPgSP+3j8VBw6kAC84rXpJ9SN6v5uH5YLw5q9WiF7eHYV/dCvm?=
 =?us-ascii?Q?9AWGLZU1qheK44qs9Qb7V23mNVsvBrrIdZVQ9hiqJ+/5QssPTfC5gr79VO14?=
 =?us-ascii?Q?3Bzfklf++zS+gx8XSd5DrSW03miqRSnNG+j9mc7ybOroppA5Zw3xUp6QD7DK?=
 =?us-ascii?Q?TuRzGCSmyoFhzC9dwqxWFwUNNIaSbCh/w8D1OsM9FktcXo4dDieuGJ07hGls?=
 =?us-ascii?Q?UaT3srWsfdqFq1c7VuitJLJkuoi3RK/YFsNrC2iyWJyxiaCYb0LZCaOBohEa?=
 =?us-ascii?Q?hMOseQF9bff3GRbY2bx+/wQdgTXtsBEi0QrIFJ/rxMyIK3Qt9I3pbvcYWQmv?=
 =?us-ascii?Q?bNW7SwLCUchkqPevsizPRfEyAbdGqu+mM5KUVa+gFqL6ACT1x0xOdCMWDdGe?=
 =?us-ascii?Q?AmvBzZa8kthnBxGn1dIiJs1aR2nL/h9Bpguihtoh4SJYDagARV/cLlSJwqJs?=
 =?us-ascii?Q?VXPCaGnQcc93/vrsOFXwco3Wod56iOBosbP3VbHlMdRdFy2yF947R0dskUUc?=
 =?us-ascii?Q?f3913LfQ4ezb6nSTECsGeZQhBgghrPs2Sh1w1magyO4s9zHOvq7nPEp65MzR?=
 =?us-ascii?Q?zQGt+TTtqYiopGqoNmDRH9X5r0i1+BAtiSWMVc4JiYko2bYGwH9qsxeiRnQV?=
 =?us-ascii?Q?GCfcjnG0wfZR+5CzUSgeaiCffrnOeaF+StP26sarZ38LB/gqN6+bF560SKwS?=
 =?us-ascii?Q?s1G37qfCnVVX6BRfycY1wCXf2/oeUp4vHF9pGsXoFJnvuKfHVF+M162gtfUM?=
 =?us-ascii?Q?fOgpxJXd1w=3D=3D?=
X-Exchange-RoutingPolicyChecked: a8jbOT3rzJA6LOzHraI6FcePoBqDvZeHKV1JUV6lcx7yHQDB1rAMdokArlVlKLimu1D7XdmscKjxEpoRMKXpVOEqELRzCTAyJXH6JkVw0uwGozm9PAjNxtzVJ5f6qS2diL9J3J0HwTzcVXBL3KDHlUw0MDdRILVyAko5CDMr+Gt+1HDVVTAPYlJVj07toug2A2i9dYhC2QgaV5nVrKguaHWroV5pcPE4dLIY/zffvm7/xG/QWF/kzkCM4S4G/UdvwkaISZa6i7Fgnw8c1cbRIXHxnJQhUqy6lX7YE8ydUMVSFajc2w9XGJ1z/J8ZkaywopwA0JltNTmKxMcAsFZCIw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 117b4df7-63ad-487c-361f-08dee1301c0c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 22:43:08.1663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g5/ZK/1w7YVraesVcuTisoFL054Z5S/qAg6SQT2YdLgRFfA8I50kN9Yxy8cB1h3myZ0sg3BGNUxFV0jJ0bX86Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9418
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C84AC74F8F9

On Mon, Jul 13, 2026 at 09:56:26AM -0700, John Harrison wrote:
> New transcoder enum values (for CMTG) were recently added which pushed
> the maximum transcoder mask beyond 8bits. The patch in question
> updated the info structure's u8 to u16 but not any of the functions
> that process transcoder masks. So fix those as well.
> 
> Signed-off-by: John Harrison <John.Harrison@Igalia.com>
> Fixes: 789dda6429e0 ("drm/i915/cmtg: Add CMTG transcoder offset in struct _device_info")

Thanks for this finding. But could you please double check Sashiko?
We might have further gaps around this:
https://sashiko.dev/#/patchset/20260713165626.2827609-1-John.Harrison%40Igalia.com

> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 214454f419e9..38763a6802c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3767,9 +3767,9 @@ static void enabled_joiner_pipes(struct intel_display *display,
>  	}
>  }
>  
> -static u8 hsw_panel_transcoders(struct intel_display *display)
> +static u16 hsw_panel_transcoders(struct intel_display *display)
>  {
> -	u8 panel_transcoder_mask = BIT(TRANSCODER_EDP);
> +	u16 panel_transcoder_mask = BIT(TRANSCODER_EDP);
>  
>  	if (DISPLAY_VER(display) >= 11)
>  		panel_transcoder_mask |= BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
> @@ -3777,13 +3777,13 @@ static u8 hsw_panel_transcoders(struct intel_display *display)
>  	return panel_transcoder_mask;
>  }
>  
> -static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
> +static u16 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  {
>  	struct intel_display *display = to_intel_display(crtc);
> -	u8 panel_transcoder_mask = hsw_panel_transcoders(display);
> +	u16 panel_transcoder_mask = hsw_panel_transcoders(display);
>  	enum transcoder cpu_transcoder;
>  	u8 primary_pipe, secondary_pipes;
> -	u8 enabled_transcoders = 0;
> +	u16 enabled_transcoders = 0;
>  
>  	/*
>  	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
> @@ -3844,18 +3844,18 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  	return enabled_transcoders;
>  }
>  
> -static bool has_edp_transcoders(u8 enabled_transcoders)
> +static bool has_edp_transcoders(u16 enabled_transcoders)
>  {
>  	return enabled_transcoders & BIT(TRANSCODER_EDP);
>  }
>  
> -static bool has_dsi_transcoders(u8 enabled_transcoders)
> +static bool has_dsi_transcoders(u16 enabled_transcoders)
>  {
>  	return enabled_transcoders & (BIT(TRANSCODER_DSI_0) |
>  				      BIT(TRANSCODER_DSI_1));
>  }
>  
> -static bool has_pipe_transcoders(u8 enabled_transcoders)
> +static bool has_pipe_transcoders(u16 enabled_transcoders)
>  {
>  	return enabled_transcoders & ~(BIT(TRANSCODER_EDP) |
>  				       BIT(TRANSCODER_DSI_0) |
> @@ -3863,7 +3863,7 @@ static bool has_pipe_transcoders(u8 enabled_transcoders)
>  }
>  
>  static void assert_enabled_transcoders(struct intel_display *display,
> -				       u8 enabled_transcoders)
> +				       u16 enabled_transcoders)
>  {
>  	/* Only one type of transcoder please */
>  	drm_WARN_ON(display->drm,
> @@ -5880,7 +5880,7 @@ static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
>  }
>  
>  static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
> -					       u8 transcoders)
> +					       u16 transcoders)
>  {
>  	const struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc *crtc;
> @@ -6516,7 +6516,7 @@ int intel_atomic_check(struct drm_device *dev,
>  		}
>  
>  		if (is_trans_port_sync_mode(new_crtc_state)) {
> -			u8 trans = new_crtc_state->sync_mode_slaves_mask;
> +			u16 trans = new_crtc_state->sync_mode_slaves_mask;
>  
>  			if (new_crtc_state->master_transcoder != INVALID_TRANSCODER)
>  				trans |= BIT(new_crtc_state->master_transcoder);
> -- 
> 2.43.0
> 

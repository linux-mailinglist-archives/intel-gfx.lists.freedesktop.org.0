Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4N60J+xKNWo1rgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 15:58:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D2D6A6370
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 15:58:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=mms3kXtI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8BDF10E0BD;
	Fri, 19 Jun 2026 13:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B8C10E0BD;
 Fri, 19 Jun 2026 13:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781877481; x=1813413481;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=PcHZAxXF3MG60ngm/OPWwiISzzRMonVOU3aUtytvm6U=;
 b=mms3kXtINly3x8wHA7WmHf6aseGjwePc+uCNsuyT9lsiZ7opOWSLO5C1
 hfKOFRXAf327eLBlCmuQz1QnLxp45Kl5QSu9VmHVwV2VIeljwpU1LwSxE
 EEvXNxwfXHFcdukuorltPIWUFK1rwN6K3kR1Xr3Q33e0n+dXhMuPHPGgt
 U8HjJHGrOgiZOrjt8Bd6OXuJbDErLRpnZaY0nnzjLJKcfMcy7NBTO0dTq
 AZv3S+tJPcCBBo42J+xaK5liH3kGilGALfn1icneh/jGxko+mclTa9c4g
 CltCkrLbnRBhx0BWBZ/fJ+J+fIzexBZD9CjQFp0BfQRhvrfPu4Q59K9ny g==;
X-CSE-ConnectionGUID: efoi/TzSTxuyt3/7F3e2Nw==
X-CSE-MsgGUID: AArZw3hjRre/Kj5SDzYPQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="82831812"
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; d="scan'208";a="82831812"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2026 06:58:01 -0700
X-CSE-ConnectionGUID: kTqLXw5YT4GLJk5okGkiAg==
X-CSE-MsgGUID: mmYkwTYmRMKueWmq3qs0PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; d="scan'208";a="252545098"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2026 06:58:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 19 Jun 2026 06:58:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 19 Jun 2026 06:58:00 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 19 Jun 2026 06:57:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a87IrTJF9T8DefXgvEVE0BN15W77ZRREyGVtvoID1zQwii2WNdOp+M+p+tkR5or74anjysbnQlzt+kmaqJCRkVRNH0uXfNhoW4DSZuojXRq75+HB8AKn6kX64FzdeRSKVOqTCDViWuxSnPcUKLn2hYg3yK2HbbvdTRW5n4VZr4BeCFRe9pINE4vMqDpaJsCqu0CibCD132qJZYRBRI+2855LNN/8NgNkzuu5rdmIPTd3bX1rLbaYTRu7B86hpYmncaeueh6HdX6NYBlctN9f3vENFhsQFaHMfY+FYGQjqQJ2OKoQr2YUjpv2kYh6Z+ynigSKoBJgDhnuV8VTcD+8Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iU73CStPDuD34f+LBsKfcX9AlLt6c+sxzNfcW9yQbA0=;
 b=mQGB8yODYjpTE62FMdGgqsPVZnQc+83NRWmnvgj7fFrr2SOR9qxOqPGMWY60c92BNSVXWV4aZod4xXANacnSIT+gIOjLWaEP39TkMGT49VKCYpST6sI5MpbIb8Q1EPrl/Ym4MV5NNpF9Jx/HtNDFpML380v0+VBCAwkky805WRg6VH3lMa9TolDZfCeex60y86lqlJyI3ErH9EdXcflr7tQTae5yY3UsB0FXz+Kn7Q+Ud8k9cu0MHKFbRFLmxbfJW8nJo6IHAGaboii8ERvvQKnna+BavvQy7TQ51bxnXp9U1OmvQ38/xMXWEmIbDc2jz6hJODIIdIkDWYq5cmJV0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DM4PR11MB5325.namprd11.prod.outlook.com (2603:10b6:5:390::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Fri, 19 Jun
 2026 13:57:52 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Fri, 19 Jun 2026
 13:57:52 +0000
Date: Fri, 19 Jun 2026 16:57:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/display: Add DG2 MPLLB DPLL manager support
Message-ID: <ajVK2b81DUMM_Y9V@ideak-desk.lan>
References: <20260518103642.3678448-1-mika.kahola@intel.com>
 <20260518103642.3678448-3-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260518103642.3678448-3-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF000167F7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::668) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DM4PR11MB5325:EE_
X-MS-Office365-Filtering-Correlation-Id: 39fcb088-ba1e-4828-b87c-08dece0ac123
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|18002099003|22082099003|6133799003|56012099006|11063799006|5023799004|4143699003;
X-Microsoft-Antispam-Message-Info: 8rZmdQ/ZvbsyXMhcrQKOWt+m2r7pRaW+04rPHXbfl8WSPW88HGoVZ5apbuNx9QyMtwPU8Bnc2qjjykQVEQR2lj6lSb0Z0Iub7VNdXPLry2rdOFx+R93pdI/rRwMEcag4mzudvgeCddUwJoQMwxVK2EbygJ6sda243zPKDzL3y2rCpCFfSb14m5s5VZBp4GaD3c1JBfdv2dVFRsyCrB2OLEElC5lRxdYTbpRVGiRGdJzguSMjqRTsJPKaxIop2sE77mhWgXv31hzT79g0LfF7KdhL806Z4XG8ADvs5XqOwCyrn1jXeQVpQgQt6A+HF+8qE2caOVZ9N6fzD1VJ90NUSsaBzOf9INWAu+X2PyX1gxLBGT4oHi3YQE8uxjC9a6zkXFGtSCrsd5d4jUtsraAS75Gr4ZMFf8DalU3u/q+ah4FAi5WnzfwTf7wX5iA4nz+0jyN/3Z5F5QmrLI1rj6VFT4udMPnYFNBcz7viU1rw3xzZkK3qBhukymu8O2m43VuCv33JahEZPzdJyXnDT/PjMXF9RxXhZMBUP9XTTZe6USMcC3D0qh549VH15UtZzhEzjHOtk+t7u5jmmc95DgMDXrkaYO6S45Hw1ygDhNEcN1BxeHmyhPr+K68Cd/LpcdHiGjXhDU1usSRbRxN9QAtEt54/shM8wCOeAGWvdfrYwVo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(18002099003)(22082099003)(6133799003)(56012099006)(11063799006)(5023799004)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XbkDEh65HD2vXDrSFuSDs4xtqlL5bXtCDwYBRx1YBRn8grLWKMr6qhjI4xvl?=
 =?us-ascii?Q?ch4LFyb6VDU4CfVJeOCQNtupjdY+0bqXnrEr4umbSARvBOVqjfShRH0t5QbN?=
 =?us-ascii?Q?SamFZZOFR41T/9KgC5ta0Wu32MCR6jacBQPFFlALU/XWaZoK5wBzBM9cTETE?=
 =?us-ascii?Q?a+Enwj58fsMhICuSKZAPRYpXKsE3lAL/OAxdvnPoGMl1Lo9dSrIJ7m8GTPvU?=
 =?us-ascii?Q?jp3NtzWmJYD9fUJoE5SziqMbue6ShdmnSuif7UWY+bAUMbMmAShd6Yy2yxiv?=
 =?us-ascii?Q?kU1sKqN44DpZ+1+0l1W2uvXYiZD4R9NlXb0IRDpf6qK74pzkZZRFPDdIZLTa?=
 =?us-ascii?Q?8EQEnI+FzCpURk6GdGhvNmswPOQK56acd5UmQ/l20P0+o8cxS0hnpabi+/BQ?=
 =?us-ascii?Q?Kbb0E+RVm6woghTvW4RdAy5ZP0Eu9Q1PrxB33UBvPcyfeGVdzGYo4N61xxs2?=
 =?us-ascii?Q?OPApYJAqDPqBwgjCvQJr4FbiW7t/q4JyGZaky5OFtMdRYJxYvHlyiCRurCQH?=
 =?us-ascii?Q?jY/QyLsNY6dKgN4XeSIEuWut5s9BYDVIJ2e8+k/VDy0uvU7vsCkxYhmSH/86?=
 =?us-ascii?Q?ErvS9CLRDR/NsEqMQ+ly1SLEsTnIBCyVRmYOd2uySTp/l2C3uEJYsJeTGceM?=
 =?us-ascii?Q?l6aDKwZ6NPKzYevATNw/vo4jbDPSOfsGhd15PVuAq7d/FoGTGRv/LvRCfF/r?=
 =?us-ascii?Q?Ewf4VM9SAv63NCl8+znFhaH7GO8c5C/utWZisvu5OOSKYM5i6az9MRTp6nsZ?=
 =?us-ascii?Q?irhRq6icOONm+YEpA5C2F3+wanioAqAvQu/lqNe8iY29EH3aY2Phsq1fhW+I?=
 =?us-ascii?Q?NuMPsDbuR2LhBliIRIUzF46skOaviXG30jp7TWLHcAqUxo5QLfasjCyZs2kg?=
 =?us-ascii?Q?0j7asBxVxcu1SBQoGKjMTDPD8GyzkTDuIKNS/Dry5V+8sRzrMhqLGrBBuygw?=
 =?us-ascii?Q?ZKYmMJBNSpuhHs/VHh1forYu1x/l1pvsNAnh2ukk0aUKI9ZwCicEPPF+MR8V?=
 =?us-ascii?Q?iuc7bP4cluQzfUD4sWLxroyHhv0pZkXc7H04Q+IJ7QJdybLEcvBRCiKpf7iY?=
 =?us-ascii?Q?6m+/GFPhgudJp1t5dTRJfqosIWislWKB1NoS7NvfTnd3f2+zU1AZFbPGJ9ma?=
 =?us-ascii?Q?wFgDb++L8jYrdddKYAgo4cHkzeP49veqZvhiHiljqUpZpeQMipaZG/hp6K64?=
 =?us-ascii?Q?iWf3617JPXiXjzcvjndnJfFLUq2U3FT4f6ETCKVH3JDRK09S6REAdHOFV/xl?=
 =?us-ascii?Q?3GdX0fR82k61unK8NvdJQ6mU7Z2v3K5xLOi7c803bsoEzBI4v2ahzm/QQJov?=
 =?us-ascii?Q?Bq0hiF26XkT8jND6D83mFF2O2z7rewtW5VqrEfQt1nvEwjQtUm2o/xrQnvTA?=
 =?us-ascii?Q?hNscBxELHaJKrt2fAWnnep+n4gA+nGk5+hFa7s9q/cI/HheoZlP0Jvqn34+G?=
 =?us-ascii?Q?iWl+BfQXFGEdOeE5+HdhWvC70jSYUPAMGhFf1mXpFevyDoQncC6lJLlSS4GO?=
 =?us-ascii?Q?y0qei9H9Am6Zowku8T6d/bTz5yNI31w8rtuasapUX06FJ/2FdhNUC517PF51?=
 =?us-ascii?Q?JomQ7tCYOX/iFgDozbK5t3nHi7aKDgQ+PWGZnvHndL4SBztp0n5t+DIfmj7U?=
 =?us-ascii?Q?dDhxplGUYyMGVY/jE6f8/anACeUK2OACRDxMlg3LEFHMTYZOuuIMX1Ht0Xht?=
 =?us-ascii?Q?qy6v1QBQNg12d9wSFkQZQWJ8oc+sMWOJp3tP5eWkL/iTnYVArRLELH0NhmVw?=
 =?us-ascii?Q?sz0+4YPuDA=3D=3D?=
X-Exchange-RoutingPolicyChecked: Ty/Lxy8uHPkCBN61OPaNIkPKTta2NkHxaAGTBhJPfDkkEJZ0xTRhjQavfUGSFfuQc0P0c9E8iMU/Sc4SAtK8lxeHnEcgl4LizAvYBnldZFveAbFj9zGPG4x+jtiyPIVFtaPXQH1Zqhd1+gtkhNkybE7KWK4eHcrnaJQETmDQzT34FRRCEEGe4rJChzjeuEAo8swHRihb0rjnoJMtvBl27pZ7hpitxjR5E5OQvQUYKXh1ffreIAZXkY67d3TjNSL8WxWzgWmhyS7UeBdKcO6Z3GusXg4vO2UkSWCt1H03zcWx5ubhf6w+e4lGpQf6ToYH6v3nmbLqp99vu8pR43WdZQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 39fcb088-ba1e-4828-b87c-08dece0ac123
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2026 13:57:52.0592 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uiRK8yBrgbAywMMJcmUY2MWbQ2B7x5qM2MRMPSu0dvZovumIEiRilRA0FJFpN+Jb8cRVR6mENfhlvcBBVmI1RQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5325
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93D2D6A6370

On Mon, May 18, 2026 at 10:36:40AM +0000, Mika Kahola wrote:
> Add DG2-specific DPLL manager infrastructure for MPLLB-backed port PLLs.
> 
> Introduce PLL id mapping, DG2-specific DPLL callbacks for
> enable/disable/readout/frequency calculation, and manager callbacks
> for compute/get/dump/compare. The platform is not switched over yet.
> 
> DG2's PLL-to-encoder lookup prefers the active encoder using the PLL,
> but fall back to a matching encoder for the fixed port-to-PLL mapping
> when no active user can be identified.
> 
> This keeps the active-user fix for operational paths while allowing
> readout and verification paths to resolve the PHY even when
> pll->active_mask does not identify an active user.
> 
> Assisted-by: Copilot:claude-sonnet-4-6
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 227 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  22 ++
>  2 files changed, 249 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index bb487e647f76..c03560532d94 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -42,6 +42,7 @@
>  #include "intel_lt_phy.h"
>  #include "intel_mg_phy_regs.h"
>  #include "intel_pch_refclk.h"
> +#include "intel_snps_phy.h"
>  #include "intel_tc.h"
>  
>  /**
> @@ -4735,6 +4736,232 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr = {
>  	.compare_hw_state = xe3plpd_compare_hw_state,
>  };
>  
> +enum intel_dpll_id dg2_port_to_pll_id(enum port port)
> +{
> +	switch (port) {
> +	case PORT_A:
> +		return DPLL_ID_DG2_DPLL_A;
> +	case PORT_B:
> +		return DPLL_ID_DG2_DPLL_B;
> +	case PORT_C:
> +		return DPLL_ID_DG2_DPLL_C;
> +	case PORT_D_XELPD:
> +		return DPLL_ID_DG2_DPLL_D;
> +	case PORT_TC1:
> +		return DPLL_ID_DG2_DPLL_E;
> +	default:
> +		MISSING_CASE(port);
> +		return DPLL_ID_DG2_DPLL_A;
> +	}
> +}
> +
> +static struct intel_encoder *dg2_get_intel_encoder(struct intel_display *display,
> +						   const struct intel_dpll *pll)
> +{
> +	struct intel_encoder *encoder;
> +	struct intel_encoder *fallback = NULL;
> +
> +	for_each_intel_encoder(display->drm, encoder) {
> +		struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
> +
> +		if (dg2_port_to_pll_id(encoder->port) != pll->info->id)
> +			continue;
> +
> +		/*
> +		 * Multiple encoder objects may exist for the same physical port.
> +		 * Prefer the encoder that is actively using this PLL.
> +		 */
> +		if (crtc && (pll->active_mask & BIT(crtc->pipe)))
> +			return encoder;

This looks wrong. Could you provide the details (i.e. the encoder->type)
for the encoders you see using the same port?

I suppose it could be MST per-pipe encoders, but in that case it's not
the per-pipe encoder selected above which should be used for enabling the
PLL. The PLL is specific to the whole MST link in that case, not to the
streams/pipes on the link. So the primary encoder should be selected
above, matching what has been done before. For that you could select an
encoder only if intel_encoder_is_dig_port(encoder)) is true for it.

> +
> +		/*
> +		 * Fall back to a matching encoder so that readout paths can
> +		 * still resolve the PHY when active_mask does not identify an
> +		 * active user.
> +		 */
> +		if (!fallback)
> +			fallback = encoder;
> +	}
> +
> +	return fallback;
> +}
> +
> +static void dg2_mpllb_enable(struct intel_display *display,
> +			     struct intel_dpll *pll,
> +			     const struct intel_dpll_hw_state *dpll_hw_state)
> +{
> +	struct intel_encoder *encoder = dg2_get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return;
> +
> +	intel_mpllb_enable_phy(encoder, &dpll_hw_state->mpllb);
> +}
> +
> +static void dg2_mpllb_disable(struct intel_display *display,
> +			      struct intel_dpll *pll)
> +{
> +	struct intel_encoder *encoder = dg2_get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return;
> +
> +	intel_mpllb_disable(encoder);
> +}
> +
> +static bool dg2_mpllb_get_hw_state(struct intel_display *display,
> +				   struct intel_dpll *pll,
> +				   struct intel_dpll_hw_state *dpll_hw_state)
> +{
> +	struct intel_encoder *encoder = dg2_get_intel_encoder(display, pll);
> +	enum phy phy;
> +	i915_reg_t enable_reg;
> +	struct ref_tracker *wakeref;
> +	bool ret = false;
> +	u32 val;
> +
> +	if (!encoder)
> +		return false;
> +
> +	wakeref = intel_display_power_get_if_enabled(display,
> +						     POWER_DOMAIN_DISPLAY_CORE);
> +	if (!wakeref)
> +		return false;
> +
> +	phy = intel_encoder_to_phy(encoder);
> +	enable_reg = (phy <= PHY_D ? DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
> +
> +	val = intel_de_read(display, enable_reg);
> +	if (!(val & PLL_ENABLE))
> +		goto out;
> +
> +	intel_mpllb_readout_hw_state(encoder, &dpll_hw_state->mpllb);
> +	ret = true;
> +
> +out:
> +	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
> +	return ret;
> +}
> +
> +static int dg2_mpllb_get_freq(struct intel_display *display,
> +			      const struct intel_dpll *pll,
> +			      const struct intel_dpll_hw_state *dpll_hw_state)
> +{
> +	struct intel_encoder *encoder = dg2_get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return 0;
> +
> +	return intel_mpllb_calc_port_clock(encoder, &dpll_hw_state->mpllb);
> +}
> +
> +static const struct intel_dpll_funcs mpllb_pll_funcs = {
> +	.enable = dg2_mpllb_enable,
> +	.disable = dg2_mpllb_disable,
> +	.get_hw_state = dg2_mpllb_get_hw_state,
> +	.get_freq = dg2_mpllb_get_freq,
> +};
> +
> +static const struct dpll_info dg2_plls[] = {
> +	{ .name = "MPLLB A", .funcs = &mpllb_pll_funcs, .id = DPLL_ID_DG2_DPLL_A, },
> +	{ .name = "MPLLB B", .funcs = &mpllb_pll_funcs, .id = DPLL_ID_DG2_DPLL_B, },
> +	{ .name = "MPLLB C", .funcs = &mpllb_pll_funcs, .id = DPLL_ID_DG2_DPLL_C, },
> +	{ .name = "MPLLB D", .funcs = &mpllb_pll_funcs, .id = DPLL_ID_DG2_DPLL_D, },
> +	{ .name = "MPLLB E", .funcs = &mpllb_pll_funcs, .id = DPLL_ID_DG2_DPLL_E, },
> +	{}
> +};
> +
> +static int dg2_compute_dplls(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc,
> +			     struct intel_encoder *encoder)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll =
> +		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	int ret;
> +
> +	ret = intel_mpllb_calc_state(crtc_state, encoder);
> +	if (ret)
> +		return ret;
> +
> +	port_dpll->hw_state = crtc_state->dpll_hw_state;
> +
> +	/* this is mainly for the fastset check */
> +	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> +
> +	crtc_state->port_clock = intel_mpllb_calc_port_clock(encoder,
> +							     &port_dpll->hw_state.mpllb);
> +
> +	return 0;
> +}
> +
> +static int dg2_get_dplls(struct intel_atomic_state *state,
> +			 struct intel_crtc *crtc,
> +			 struct intel_encoder *encoder)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll =
> +		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	enum intel_dpll_id dpll_id = dg2_port_to_pll_id(encoder->port);
> +
> +	port_dpll->pll = intel_find_dpll(state, crtc,
> +					 &port_dpll->hw_state,
> +					 BIT(dpll_id));
> +	if (!port_dpll->pll)
> +		return -EINVAL;
> +
> +	intel_reference_dpll(state, crtc,
> +			     port_dpll->pll, &port_dpll->hw_state);
> +
> +	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> +
> +	return 0;
> +}
> +
> +static void dg2_dump_hw_state(struct drm_printer *p,
> +			      const struct intel_dpll_hw_state *dpll_hw_state)
> +{
> +	const struct intel_mpllb_state *hw_state = &dpll_hw_state->mpllb;
> +
> +	drm_printf(p, "dpll_hw_state: mpllb_cp: 0x%x, mpllb_div: 0x%x, "
> +		   "mpllb_div2: 0x%x, mpllb_fracn1: 0x%x, "
> +		   "mpllb_fracn2: 0x%x, mpllb_sscen: 0x%x, "
> +		   "mpllb_sscstep: 0x%x, ref_control: 0x%x\n",
> +		   hw_state->mpllb_cp, hw_state->mpllb_div,
> +		   hw_state->mpllb_div2, hw_state->mpllb_fracn1,
> +		   hw_state->mpllb_fracn2, hw_state->mpllb_sscen,
> +		   hw_state->mpllb_sscstep, hw_state->ref_control);
> +}
> +
> +static bool dg2_compare_hw_state(const struct intel_dpll_hw_state *_a,
> +				 const struct intel_dpll_hw_state *_b)
> +{
> +	const struct intel_mpllb_state *a = &_a->mpllb;
> +	const struct intel_mpllb_state *b = &_b->mpllb;
> +
> +	return a->mpllb_cp == b->mpllb_cp &&
> +		a->mpllb_div == b->mpllb_div &&
> +		a->mpllb_div2 == b->mpllb_div2 &&
> +		a->mpllb_fracn1 == b->mpllb_fracn1 &&
> +		a->mpllb_fracn2 == b->mpllb_fracn2 &&
> +		a->mpllb_sscen == b->mpllb_sscen &&
> +		a->mpllb_sscstep == b->mpllb_sscstep;
> +}
> +
> +__maybe_unused
> +static const struct intel_dpll_mgr dg2_pll_mgr = {
> +	.dpll_info = dg2_plls,
> +	.compute_dplls = dg2_compute_dplls,
> +	.get_dplls = dg2_get_dplls,
> +	.put_dplls = icl_put_dplls,
> +	.update_active_dpll = icl_update_active_dpll,
> +	.update_ref_clks = icl_update_dpll_ref_clks,
> +	.dump_hw_state = dg2_dump_hw_state,
> +	.compare_hw_state = dg2_compare_hw_state,
> +};
> +
>  /**
>   * intel_dpll_init - Initialize DPLLs
>   * @display: intel_display device
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index d408ccf6f902..f4b84733a58c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -169,9 +169,31 @@ enum intel_dpll_id {
>  	 * @DPLL_ID_DG1_DPLL3: DG1 combo PHY DPLL3
>  	 */
>  	DPLL_ID_DG1_DPLL3 = 3,
> +
> +	/**
> +	 * @DPLL_ID_DG2_DPLL_A: DG2 port PLL for PHY A (PORT_A)
> +	 */
> +	DPLL_ID_DG2_DPLL_A = 0,
> +	/**
> +	 * @DPLL_ID_DG2_DPLL_B: DG2 port PLL for PHY B (PORT_B)
> +	 */
> +	DPLL_ID_DG2_DPLL_B = 1,
> +	/**
> +	 * @DPLL_ID_DG2_DPLL_C: DG2 port PLL for PHY C (PORT_C)
> +	 */
> +	DPLL_ID_DG2_DPLL_C = 2,
> +	/**
> +	 * @DPLL_ID_DG2_DPLL_D: DG2 port PLL for PHY D (PORT_D_XELPD)
> +	 */
> +	DPLL_ID_DG2_DPLL_D = 3,
> +	/**
> +	 * @DPLL_ID_DG2_DPLL_E: DG2 port PLL for PHY F (PORT_TC1)
> +	 */
> +	DPLL_ID_DG2_DPLL_E = 4,
>  };
>  
>  #define I915_NUM_PLLS 9
> +enum intel_dpll_id dg2_port_to_pll_id(enum port port);
>  
>  enum icl_port_dpll_id {
>  	ICL_PORT_DPLL_DEFAULT,
> -- 
> 2.43.0
> 

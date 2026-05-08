Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kB19Aisi/mmunAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 19:49:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE594FA344
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 19:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC4010F586;
	Fri,  8 May 2026 17:49:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XoCXUylA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961F410F571;
 Fri,  8 May 2026 17:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778262565; x=1809798565;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=+SnyC0bmTRusBtcfM+biwcwZ4pN+0yDyQPxpnJUkUek=;
 b=XoCXUylA1yp/fYJF95fMe0HoUA4jLxc7HMxEPPqVfcMXvtGa5t39pdfn
 7AycG11QOn9vWSo/1mb6VR9q3iFScXlYonEzo+WqPVduNb9vlVVlavR6B
 9KbCR5u0BSbHuvYSIM3WAv1tKNxxsBgL7F4RyV3b6OX1SGUpCktwkrfO9
 NVCULJyMzikSyQZcarz1NKO8l6l8tnqlzo9iZCs8QO/A6fGJ6XwYRt/gb
 BodqtTd63kRg5PGtJBSJK9Z65jekCbknSCQ2ofIaZ+M7LBzA10UiFHQ3E
 z47OymAIhq757nTAIuIyTfRQqZWcYv/q2k0ehdyI62irdtja1jmGOYi5G A==;
X-CSE-ConnectionGUID: T05HryhrS4eRBbg4CnSstg==
X-CSE-MsgGUID: u4onvy1PRdeJ519wsUcSlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="66764831"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="66764831"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 10:49:02 -0700
X-CSE-ConnectionGUID: wjObwpHbS466+AvhUXrLIw==
X-CSE-MsgGUID: dTRplIb3RieUdymfbiwpjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="236953423"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 10:49:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 10:49:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 10:49:01 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.6) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 10:49:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lSiGrEgN2lkXrHx8CIYkegqaWuSR6mnTvUBsW2ZkTijh/QdKDH8W9xQvNtpFzpE1QD+DerPCImeAyWLu9HAEP2iH8BH7ELn1zIo7Gti5OGC2G2/5laijDYLmDZCE/N5+hnS8xIrQBV6/IPGbCUbeWzJIEFTAA4E1LQHRXNy4K6kAGk6z2KechobFhobTZ4CDe61BWXLVsivdm7f9qG0VvqIorW3gNB9j5wZPlnRhl5fKSHSQLeLekNBrPsYjWo/kq8cUSq4+yXIj8h5QiFiqnVhACeAzDqVcJxc32w9owbXir79zwrlsblIeMJ1fJtRoeE3geqh5e/mxSxRkeA6SgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=StZz9qjSRjt7EZBJkhH660J1oJ9oAa2N96uoy3Y9XBQ=;
 b=ECYFUjcZqZP+GwUObsv5aIl8lo4Tg+NkPajny3IIhbNScR5m6yW32NQvIkCFfANTX2z/VYPmHuxgM3TF4tp/Q0bf7YbzcdGWoYZKPEfyLlUhQcv3hIPmTpyVx7GwbazxqLAccnkyF6TBDfh15IuqwKDfz4qupKT7q2lma2+0KkqSbF14rWbx2cgYlL2BpAciJhQopE6nnWlIJ2JOiJtwjBrDE7YeOkXzOgLpItphyTG3KIk6Zjms8uiMkizPEjB1l6YnIeQFIkBodAx+w95OTyvQNTKB4/cmzXCqh91Qb3WUsl/SSDSSorkGCiw8nv3/ISR7ZrmwNRIp6D2E7GjgGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8673.namprd11.prod.outlook.com (2603:10b6:408:21c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.20; Fri, 8 May
 2026 17:48:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 17:48:57 +0000
Date: Fri, 8 May 2026 20:48:50 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 017/108] drm/i915/dp_link_training: Add helper to mark
 link training failure
Message-ID: <af4iAiMQ8R6YNJ1D@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-18-imre.deak@intel.com>
 <1df1beb8661ad06de0b6e29b983720507ab72b06@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1df1beb8661ad06de0b6e29b983720507ab72b06@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00023A19.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::21a) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8673:EE_
X-MS-Office365-Filtering-Correlation-Id: d431cd6c-0280-4c81-2488-08dead2a140d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: /0yJqRKVtgJ6IXwsLNbkGrRrra6D16ymtUI9tZZbNQkg2VOKFds+UldtIh1hOZ+v17mkbpFRpXku6i0X0hSJGTMT3l4vt2feusNaPDxxff4/6EOBEzA2E8nyQ7gFOYjPzeJFd/Z844uM2WaKhsU7NRfAmbfRXndyvxB4zmw8T1YB56C3Z/TFsTocNWAMNuZHccRHP1pw3lSSYJuLEnPExokOGM4TsATRwDKowHJz0PhDb05gserWRMUemCZTwc5s7yl2EC36Ai1a080vYx+OFVPqEP+Vc48Y13Gd4MV3AT3XaPJTio3iI0Vnn3PQjA0Z88FK65LMiX5J7NSi8RjEzqXfDquqAnQobWuytYuKLnyc05V8CdSIezMF4IoFUqM3oKiDJoNeqyQnOZRU3zthNOzu0pplRt6Hkcikdrw1qjovvi8cpLzg+MGLalik+k4P1nzuoUn9JGHuWIj4umO+jZeU96ENlapOLhXxCQXdMV2s8FI4dp5Wn2lqgrRzPvPbE4aJA7W2ArY3xv8W2Qs/fVkCobtc67FrdnSfQ+DbW+4y2rZtXArZKK6gDw+/90oKVhP+VuAICodzQO8g/rkhZQEoE3XiX+777GaY6nC23yqPdRkIG7pPgVfdX6/0vzHVV3dp18iTHxwBxKtLKWJoJDXEaBLzuCEX+3tzTnaWocxEqiBYep3wxhvntRj/r01R
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JK6iMfD61dNrPvyXSg5T1Rdmap64FYlYcvryXtcwHlPvthypaIS0AHV+0Zfw?=
 =?us-ascii?Q?Cw9SwrlX0kJFBwcVRfSJBckXkCKqRHVvC2q5BGUFpHZxsxcCNrNIaNgXePE1?=
 =?us-ascii?Q?+zkhiguVWszye259LIOHLSEV9tORQGsNyDhJ86SVf+MyXfctXkEYHFs7XoBX?=
 =?us-ascii?Q?WDukMEuP37KB6WStCB0wVXrqGjpjXNfRqxVhZY1mFbKuwMr1LYirTen5vOCT?=
 =?us-ascii?Q?nMeyRxpiGLHOxNyMalgL5p+tnodNy1Y0i4Hk7LDouhWkGumMvbyRvcYKXjn5?=
 =?us-ascii?Q?fGwmRNljAgkEU7MOoxJ4ysmIrlmeQOI7Fdqnj1UBzp87KQ9yZe4sl5cnLqow?=
 =?us-ascii?Q?gnUcj6nYvkiBwhiRhXSM++6raD+w1l2+myhkE3IBPhXj7BIt8SDUnsZrz+qZ?=
 =?us-ascii?Q?cOwTrDsklt7cz73O+GTyyK9geFAh7HB1T5lB0snDbp0v3gu2mzoSTkfko7DW?=
 =?us-ascii?Q?VllSBWLMQlgjBVdixKhvaEWgoztWXV069AhLdxqq/bN1uZSx0vs/KZg1GTrI?=
 =?us-ascii?Q?zsmLZcVo7ugcundGDCD2lWyar0ms2YzNXhYOZELL2+xxJGj0c5C4TRRcES8q?=
 =?us-ascii?Q?VT+bvzEEdp/xdQG+81qPJtTLZWBtx9+BV0Q4NmaejuYf16r89HJHKvMvAsSX?=
 =?us-ascii?Q?A42P7BD/zw4dlS+umrW3JIOJBk15EGZhbmrzaPlL9EASz6avhhIOrt2XXH3J?=
 =?us-ascii?Q?vvI9gAtdiIpF0gmIfYjxAcEcAcTHa08JniCK886/pokPf4LoQYQ3PFCoHQ9j?=
 =?us-ascii?Q?3BuEsRx6MqxIFkYxhUdkdeJs2dc6oYp4OcADr6lO5PNFN9NHT4oDzllqjdx8?=
 =?us-ascii?Q?YhlyBnOIH3wBwUA4U+HsK00jn0wrfydJRFasivi4L3UJvzHFkIjMjdsof2Ll?=
 =?us-ascii?Q?PyAgnW9IAZ7g3fK1wIQK7MNTI/N4N7v0w+SFrz0/rBWY5R0PPhH6UiFr+/+T?=
 =?us-ascii?Q?8KVsw4qjQc4m8CbDXJ9ciT4fZXPghvLB6TmekOkSl/eOWwYSzar52rurMyfY?=
 =?us-ascii?Q?Y39unhKkPxgvryiMEfObfCNSk+Ou17eDKIrdn8vxUS1TRoUH6YxdEIt2/z8f?=
 =?us-ascii?Q?IZqL/06KmZrFucRG6VDWIyqJXWsLZLfQ2CnOiSLNnWKE8c4A9iDVYc8II/1I?=
 =?us-ascii?Q?j/BTC8RK1wt5mXJ3ARVRSUcvr41CTTWNda8s+rd57NvIXp9FU+VZKq3kBy3U?=
 =?us-ascii?Q?G2ZzznAvFqCZmVifeD1MgbBPgj2rcsEv7nYM8CIpfn37q+yAtE0nMTjkjtcD?=
 =?us-ascii?Q?9IO+oQ7kLNv9d1YVosf+p5PIPzXQz/E9a+NSQP6iWcOHgwS7CFxZ5jntvxwl?=
 =?us-ascii?Q?Cc8/I/mO1nu9gafiSowWkF4TjC6lrK0B38C9Rr72GvK7IMdKn9XRz5WJJvB+?=
 =?us-ascii?Q?LK0QyLhWAwAP0dlNsZq8hXEDXwAEx4RY3s/6/DX/ABb9UUyZplkTOQ6uZh3k?=
 =?us-ascii?Q?PgiPub50upvDLePq54OTJatlBlABNgkXBwA2RVY8k4r/PTrUZJLNwB9q/6WC?=
 =?us-ascii?Q?l/q9WHK/5liAjmJCJ5cDKI8vsFq5C8i9XDSGlEdmInlkF79zY5PkhYuz4z9b?=
 =?us-ascii?Q?uxKN+Z6llOrmCVXnuQdfRVnDijhTmnae1cCPuPvkCdxwUm43eXF84C3wphSc?=
 =?us-ascii?Q?h1frPrIhZnRS9KlU3I133PY5EtA88dfPtjQMSoYStPm0dW7oxOJPrqKAAj9R?=
 =?us-ascii?Q?xj1Xi2V8rVWAQpEDiXUaNwL24trOn/0+dileTT2eCFj5qeZTijzuCZkmu6V3?=
 =?us-ascii?Q?I6bx/4qRbA=3D=3D?=
X-Exchange-RoutingPolicyChecked: oPcx6FbvVV+in61fWdzZHNwFXmqP7UdsFv+iMIK69AFuZsh9VMFVgz9ygR2SaS0WtM/+78itRrOZ4D6mxQiivDw2OqKksLaXdX9WNlw6ZoPsiyvrmWAuByV+jYockcMQ6ZGjJ75M6OY+njfukS9yvsUyV5AuadlUm9XQH7Y7wpxNJjfwtvaJIOxzQOyK90Aafox0iLP36NdbLNzZx4M+gGtoXwu5fG7AjeuRaD6TONdgCf1lQnxR+O8sEsSf44KY+zIT/gR1M1XUe0jXH17kWOpgCzyAyBV7DzpoxsGSQ3Y2h3Y5KAAEWmaMP9nHlDJbU4ljQNEfHwl0L8hOdGAjsA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d431cd6c-0280-4c81-2488-08dead2a140d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 17:48:57.2540 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JiX+47geMJ77O4jx2AD8ZvYq9BlyqKcpMOtE64EzidUCD7sIS2837SIxTwn2szBcncbq//457XBaLvpDF9j6SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8673
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
X-Rspamd-Queue-Id: 0EE594FA344
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:replyto];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:42:20PM +0300, Jani Nikula wrote:
> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> > Add link_recovery_mark_train_failure() to record the failure and make
> > the link recovery state transition explicit after a link training
> > failure: recovery can continue with an autoretrain, or must be handed
> > over to userspace after fallback selection.
> >
> > This also prepares for replacing the sequential link training failure
> > counter with an enum in a follow-up change.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 33 +++++++++++++++++--
> >  1 file changed, 30 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 1c2cef7d61f37..eb922dca69c5b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1277,6 +1277,33 @@ link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
> >  	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
> >  }
> >  
> > +/**
> > + * link_recovery_mark_train_failure - record a link training failure
> > + * @link_training: link training state
> > + *
> > + * Record a link training failure and advance the recovery state to
> > + * indicate the next required recovery step.
> > + *
> > + * The caller must proceed with recovery as instructed by the return
> > + * value, either via automatic retraining or, once automatic retraining
> > + * is no longer possible, via userspace modesets after fallback
> > + * selection.
> > + *
> > + * Return:
> > + * - %true  if recovery should continue via automatic retraining.
> > + * - %false if automatic retraining is no longer possible and recovery
> > + *          must be delegated to userspace.
> > + */
> > +static bool
> > +link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
> > +{
> > +	if (link_recovery_autoretrain_allowed(link_training))
> 
> Yeah, I still think combining the above check with the below reads
> wrong.

To me it does read understandably once the plain seq_train_failures int
is converted to an enum which indicates the point in the recovery
sequence: the function is called after a link training failure,
reflected by the function name. The function then advances the recovery
state in the recovery sequence, expressed by the state++ line below,
either to the autoretrain pending or the autoretrain disabled state. The
function's return value indicates to the caller what it should do next,
depending on the new state determined by the function:

- If it's the autoretrain pending state the caller should perform an
  autoretrain to recover the link.

- If it's the autoretrain disabled state the caller should - instead of
  an autoretrain - fall back to a userspace driven link recovery.

> 
> > +		/* Move to autoretrain pending or autoretrain disabled state. */
> > +		link_training->seq_train_failures++;
> > +
> > +	return link_recovery_autoretrain_allowed(link_training);
> > +}
> > +
> >  /**
> >   * intel_dp_stop_link_train - stop link training
> >   * @intel_dp: DP struct
> > @@ -1813,6 +1840,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
> >  	struct intel_encoder *encoder = &dig_port->base;
> >  	struct intel_dp_link_training *link_training =
> >  		intel_dp->link.training;
> > +	bool can_autoretrain;
> >  	bool passed;
> >  	/*
> >  	 * Reinit the LTTPRs here to ensure that they are switched to
> > @@ -1844,8 +1872,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
> >  		return;
> >  	}
> >  
> > -	if (link_recovery_autoretrain_allowed(link_training))
> > -		link_training->seq_train_failures++;
> > +	can_autoretrain = link_recovery_mark_train_failure(link_training);
> 
> The documentation says "the caller must" but the variable says "can".
> 
> Maybe the code here would read better if this wasn't conveyed in the
> return value but rather in a separate call to
> link_recovery_autoretrain_allowed().
> 
> Or should it be link_recovery_must_autoretrain() or
> link_recovery_need_autoretrain()?

Imo link_recovery_autoretrain_allowed() expresses it what the caller
should do:

- If autoretrain is allowed the caller here should perform auto retraining
  (i.e. return from the function without a fallback selection and
  userspace notification which would instead switch to a userspace driven
  link recovery).

- If autoretrain is not allowed the caller here should do a fallback
  selection and notify userspace to take over the link recovery.

To me it also makes sense to express what is the next expected step by
the caller by returning this expected step from
link_recovery_autoretrain_allowed() function directly where the function
determined this expected step.

I can rename the can_autoretrain flag to autoretrain_allowed to be
closer to the function's return value.

If the above doesn't make sense to you I can also just call
link_recovery_autoretrain_allowed() from this function directly instead
of returning that value from link_recovery_mark_train_failure().

> 
> BR,
> Jani.
> 
> >  
> >  	/*
> >  	 * Ignore the link failure in CI
> > @@ -1864,7 +1891,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
> >  		return;
> >  	}
> >  
> > -	if (link_recovery_autoretrain_allowed(link_training))
> > +	if (can_autoretrain)
> >  		return;
> >  
> >  	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
> 
> -- 
> Jani Nikula, Intel

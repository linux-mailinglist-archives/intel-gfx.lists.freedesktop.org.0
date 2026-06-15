Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HtirH4nqL2rvIwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 14:05:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5757685F63
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 14:05:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b="oGbVwr4/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F2F10E3AE;
	Mon, 15 Jun 2026 12:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 989FD10E3AE;
 Mon, 15 Jun 2026 12:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781525126; x=1813061126;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=ahlwrESDLn/pJnKHRO4BrDpKZ/6eWuKZSHAtnSI0hxU=;
 b=oGbVwr4/RMg3SApOkebLv3ZmymqkeOuZDH8CL8zVsk83qmixfcZlqimL
 c3I54ArMcGIxzm1ql8dddGzuym1xKORVflaUWKnwDl86wJWtkJLjz0+Mi
 PIF8bmp9/RJgQMx/RmJTBh1FHIRU77Dc8uUBvmWJcX3MOQDiolwiaPMt/
 E4fyPY6nrit9LpdbBjXU0kkpsM2i5tqMiPSzCoDUJiQ7/xOySp7GEm7DS
 3GF3OaRE+WWanZWfRtrSJZAQdRLo73BMeTU+g/cdIHwSOzIaOshKwzSi7
 jLOfkEPN+i/qOtZuAhszbgUiCzMpOnTrBZf4CjZTcOMT37F7ZRElT7eVq Q==;
X-CSE-ConnectionGUID: vbczemG3TpSqniW+L3kMBg==
X-CSE-MsgGUID: SmwITlAJTQGWqzhK+fLT9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="84827649"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="84827649"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 05:05:26 -0700
X-CSE-ConnectionGUID: 66M4XXxLQ06fvE2P+j9Asg==
X-CSE-MsgGUID: NMHn6SrRTcapbLrlSEVvUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="252544051"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 05:05:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 05:05:25 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 05:05:25 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.0) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 05:05:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IN8uoVjXzEW9s5m0959lI0pO/XX8/EpvVVyhwnWwhFvv3d5y1EFu7pAGX3je466z4IK/l+RDJMEEiPV/lj64lEn2V5+mjsLWMUsLZZl9DNF9Y2aA/HOj8Uhr9tWFNuhQiiYFVf8a3ULNEl8l3eE9OybX0kDI44azCglGX++Q2hOBSjt7BySK6lIGDGaJy6yeRrTrtH3CJILd+0xb5we/tda1jVfhhP3UEf6JNdYXOaXB9HezYwq20LTj09W4Y9HMdCU9LWN5go+FnojF/ThLjMAwLvR3YC2X6CuRKMX+eqQYdB8OOimvl2b1gbKiT4O6ao46ISYXWXDUfjyNhqKHKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ant5XeQyWedsodMkMx+ucKPXxZ3NGW3V03OB98qKGCU=;
 b=ECoRLzkE1bP2E4TJ+obEKShTSCGWHWWq5FSKoQsbkEKqDlFQ2AUuwaqhsnMpJXszpoDS4EbFEpADw2EqKAiFVmvuUA/St+VpB6rQF3zTtSCKCrJVY85dbj2jMs4m7KOQJgKeCr6zR3EPAf0RA1EK4lvIVlKT1ApMqhutDMlLfn7q3u0FVUe9AEZz0ql0lezdmbT/X81NDHxIP2TacDzHLAH2pR968sSXBDFulyS7rXt1qmuNoOdFrIChqllbURYKprX9Lj+le18vOma3dMQBS8x8pQHQGH4ki5ZZ5WQko8xD1KVxuKgKQdeNQM1TaYIyT+x5L43KpzKFYsNecTsuoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5070.namprd11.prod.outlook.com (2603:10b6:a03:2d5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 12:05:17 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 12:05:17 +0000
Date: Mon, 15 Jun 2026 15:04:52 +0300
From: Imre Deak <imre.deak@intel.com>
To: Guangshuo Li <lgs201920130244@gmail.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>, Uma Shankar <uma.shankar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] drm/i915: clear CRTC color blob pointers after
 dropping refs
Message-ID: <ai_qZKu5pKVIWz67@ideak-desk.lan>
References: <20260612035310.3013066-1-lgs201920130244@gmail.com>
 <aiwXPz0u6HAgSg51@ideak-desk.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aiwXPz0u6HAgSg51@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239FE.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2b2) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5070:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c729f9c-4030-4b0c-cd63-08decad65d9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|7416014|1800799024|376014|921020|18002099003|22082099003|56012099006|6133799003|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: m2jvDlSbRBWEfOFp0LNqoSfUdG4ClHWLA+Ft7P7Je+AKlpRtjEvoVaLcBClLrB6M+zMg6LglWbumaOFBnn4JUTC2i1NS9TfBbBe6cr/8+eUtPY8hqBfkux5wtAeJXfiNiZF/33aHtYYCYHEdulmGoCJclYkQ+akWAz8Ewe7BOJgX/8Tbc7tzO34BUgcwC7t8yg3VFgOaNxLkTAXfiAs+/GioTtsAlllgIUraO7A6T4IuYkqyNkYyc5wnzmbueeQwkgYVc32/6ohSzf/utUK4DEQPacwmd2hoG6y+F0J9FP6ZEz8sS2af4WxF14yuewRWweqXBlQHPRfmnsZAl77V8cjpUnu0sFNebX2JbKO/uepqgtUM0ZwHDlD374wO+WGFAqIYPLypF8kapNvhIdqpbjcGSPanOvt1F4Dd/mXpfMwHpoxMv3pUpGBjEsidci6wPUjniLATdWrUo93+gZGqVUCkQKw1wJKaPUhAlSQKtEpmKCDTt0JQ1vrNFWwn4aC3v3UDYIk4dggfSaKEzoutK1tPHq4QVW+rZD+cLEjVCbj/KrFuvf5azzSy/n1kfHmFwSQ/sCA/MV0kIAiU3l32nkVlIc2O5gNNq07xVzma9iZAEVQW6mzJIswmZ0ymLFZySN/3pCoaLJrhY0ePSrVr+hA7VKx2uKq8yX+Iwc+UkzfKsk3FuYShEpWoV5f/8T7WNu77ZXD4PMEqLjOOP1rp4g2TH31jcCrO9+iwG9Y7A6o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(7416014)(1800799024)(376014)(921020)(18002099003)(22082099003)(56012099006)(6133799003)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1kP/FJGreImEtoF0H8DpPUjuaKcu2FHajTQHxYr6kHPbIVVjMeXdO8TZFbB4?=
 =?us-ascii?Q?DkshGhp67chkzxx3+agBLvXHmWCM2DRg4DrUfL4WPxrmaqXK2DMXzPEkNQOk?=
 =?us-ascii?Q?7peDXoiEbKx/GSXOBETx3bpZU8GwXliJUO7aHzoajQuHym0CJtX9rFtTGoDO?=
 =?us-ascii?Q?gqbqFD/9unmBWcuZa0ClHr3vxvDi1kc3W/TbUi0q2uPcEvyxsxYOs0S78aBc?=
 =?us-ascii?Q?oM+p1mHvaw5vrhsGiAP4ZyUXJTUyN5WhiDDi4789kwFmU3EgaTa0dTXCOkIp?=
 =?us-ascii?Q?y91tGxZloI2IxjdR04SXFDSKeU0ft9NdjI9cDnHIUmnP6JCbyHWWfsm+4wKY?=
 =?us-ascii?Q?WGxuT7rCWuEGpyKb620s1aJcjk8v1L3+feNLsBuefBKImL1N58IcK4V0qwvy?=
 =?us-ascii?Q?i20PGLS7iLaLXQPeFFO5iHbsUHeNxLI2NQy3nozXUikIAAmusQBbCP8rWnMK?=
 =?us-ascii?Q?XWFNHvHYf0WhkF/weiqY25hQxKkx5d1+WquhQY5dMXRXNX8msPaSDi4DoSRT?=
 =?us-ascii?Q?5BnVKG1/Jl+zEvBk2mYbJN/WfHJI4h1ErtQj8aaNHaN3KHFwWN2107vHpc5i?=
 =?us-ascii?Q?5AiX1e75eeuXzh41aDjLpdyGd/nZAMu0QZjnY/OxSd1F8u/JDOuqSfdSnWZK?=
 =?us-ascii?Q?jm1Fir+y3jbTbY/XNpCUa0GWd8klAMRa8vfeoP5hlsys1B96wToyROCdMODS?=
 =?us-ascii?Q?PZhru4UpuzvbCLXAKqZGrklrdBYG3egRS5feTTFAM8Tu5ezhsKagJG5aHMDT?=
 =?us-ascii?Q?Qlr9KMCo5lZhlTUmH1R+cEd8mQTsNb/hY7ZgzF/scSFB5Ney/HfdwbbW7TAL?=
 =?us-ascii?Q?71Iw3n+9d/a3sb9h+Obt7ilt1tNroR/vKi19G6xkssK8uHNS1goOnKVE2ImE?=
 =?us-ascii?Q?14QqclD8XV92qmvijLnB8YiHZaTuM3yrU7Wz4q17UY6jsBjP1CzxP9CtOPwZ?=
 =?us-ascii?Q?Shm5h+H9bvRMlOFwpvZK/qvxa8hGSUaY0nmZyNBP3Y+lVMLb7P3X83wMhAs8?=
 =?us-ascii?Q?so1RJRw77wDNhBUaUSpRumroVh80Kpy0F6cmA0UcJQz6oRLCwXdUfqHwIGdo?=
 =?us-ascii?Q?o2MDFD9K0viJn0vZplM5dBlW8O45avjeSGlglDPzu7CHIzQvRQvAu/HI3j80?=
 =?us-ascii?Q?qsMt6pzjX+hzIAbVBuJdno/hkDvnoSZR3ogad142HqvEFGDx2NVX30mbX4Lx?=
 =?us-ascii?Q?7xnhFaoVvFynXM8O9a5JPmvPdZ6QYmWU/SUh9wF9H5V8vpD8cqq3HcsQtonZ?=
 =?us-ascii?Q?J3tkYJDsi8BkTheOqy3ttMYZJ23F6myXJQE3dnZiAVCKYEJZayZyConodvSk?=
 =?us-ascii?Q?TySg3pCdw9whSoUikUVxT6hiQHcw0YglKNPd2bjHWKyFlq5xakasYKyxLH8u?=
 =?us-ascii?Q?E5c038Zc0vX/AUxgDooQTbfSbn1q5/RXFgu5YLhCj1asdU9F6ugWThnKGYhw?=
 =?us-ascii?Q?xkPkR+TgrrF23Msj5LUkTr71bqyDcZ4vU5OLnlNpcOqK24VeEDNcKygz20FN?=
 =?us-ascii?Q?7eHU8NrA6XUmoTuUuXjMr/bIZKcOF4USQu+elMGRReUUcu25tInv6evArdHr?=
 =?us-ascii?Q?f3YMHm3JmWO60n+oscfF8oy1pqco0krf72nw2m/B3QpJOuYqP0pQQiHVHfu9?=
 =?us-ascii?Q?Op+chTdVdDqBr7ORaWFuT9u9zb+Ixj8HwngrjkJPmfWaU+ROo0GqIDquQPlN?=
 =?us-ascii?Q?CUB+Cwx1nng68aySvPX7UVQU8ut8KXU0l0Vo6KVrsj+i8XmpTKsHM2JuhdCo?=
 =?us-ascii?Q?jDRx3fioUw=3D=3D?=
X-Exchange-RoutingPolicyChecked: D7MI/uSs82b9qvXalM3kfIDLP7u3XzmtnBH44b16yElcT2hv9Mk8SBrzEihb19ALtNGhT98BpXypIOEShulLPRDO/I/1cZKezeVBbb7HBmLdKDfo7Rxfv14tiDo6EEwXcqpX8HiEw5le/PzpsG/DV07m22UV7CgcChMerWPEE+VPzMo/RBXLDKmnRaHNHXfLjzUTISwr29US0pWLPtZT6JJKT6sd0CMBktqP6J1EzoZTmwceFMZMq/jhf11p0kZmebj3b/pr9o6RP9doJkSc0o4C2MBQqX1b6+j3IbQhgt6vM77u/+WY1TxPP4xQAaK4xOOjsganKIZO2q8GPPRFyw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c729f9c-4030-4b0c-cd63-08decad65d9a
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2026 12:05:17.8191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OoYsKTv544wAc3SwftC2QkelDHI4ZGZtAcFNAIoEcjePR2ub/rr+aPnK+102hkc3/MSmVzfbu2sNALJe++kovA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5070
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:replyto,intel.com:email,intel.com:from_mime];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,intel.com,ursulin.net,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D5757685F63

On Fri, Jun 12, 2026 at 05:27:11PM +0300, Imre Deak wrote:
> On Fri, Jun 12, 2026 at 11:53:10AM +0800, Guangshuo Li wrote:
> > intel_crtc_put_color_blobs() drops the CRTC color blob references, but
> > leaves the corresponding pointers unchanged.
> > 
> > This can matter in intel_crtc_prepare_cleared_state(), which frees the
> > old CRTC hw state before calling intel_dp_tunnel_atomic_clear_stream_bw().
> > The latter can fail while looking up the DP tunnel group state, for
> > example with -EDEADLK.
> > 
> > If that happens, the function returns without completing the cleared
> > state preparation. The failed atomic state will then be cleared by the
> > atomic core and intel_crtc_free_hw_state() can be called again for the
> > same state, dropping the same blob references again.
> > 
> > Clear the blob pointers after dropping the references so repeated cleanup
> > of the same CRTC hw state is safe.
> > 
> > Fixes: fb69d0076e68 ("drm/i915/dp_tunnel: Fix error handling when clearing stream BW in atomic state")
> > Suggested-by: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> 
> Looks ok to me, thanks for the fix:
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Patch is pushed to drm-intel-next, thanks.

> 
> > ---
> > v3:
> >   - Move the blob pointer clearing to the end of
> >     intel_crtc_put_color_blobs(), as suggested by Imre.
> > 
> > v2:
> >   - Keep the original ordering in intel_crtc_prepare_cleared_state().
> >   - Clear the blob reference pointers in intel_crtc_free_hw_state(), as
> >     suggested by Imre.
> > 
> >  drivers/gpu/drm/i915/display/intel_atomic.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> > index 71b7325917b6..a16e1cb7d41e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > @@ -289,6 +289,12 @@ static void intel_crtc_put_color_blobs(struct intel_crtc_state *crtc_state)
> >  
> >  	drm_property_blob_put(crtc_state->pre_csc_lut);
> >  	drm_property_blob_put(crtc_state->post_csc_lut);
> > +
> > +	crtc_state->hw.degamma_lut = NULL;
> > +	crtc_state->hw.gamma_lut = NULL;
> > +	crtc_state->hw.ctm = NULL;
> > +	crtc_state->pre_csc_lut = NULL;
> > +	crtc_state->post_csc_lut = NULL;
> >  }
> >  
> >  void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state)
> > -- 
> > 2.43.0
> > 

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICW0M4Q32WkjnggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 19:46:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171513DB2DE
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 19:46:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320F410E9AF;
	Fri, 10 Apr 2026 17:46:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lWOaBHGO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6545310E9AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2026 17:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775843200; x=1807379200;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=I3ZgtiYXmwp0zyquKG0Wg9WVWJycorY/JGxbNVvTTpI=;
 b=lWOaBHGOl9r3mvxN2QkxfPYBjyTXtL6Cqk6cDS3E8L4aCdTPoW+gwm1m
 c5YVL7YbucGICq7G/4EWC619tKZbnxCsqGMZ6++ZVvwyAJdn6t2fHQdoO
 AMH9OQIRNNa7eEN6wgYaEr8WIo/Q+f7Iz5hRaMfbs8Lu2HskCojPQ1q8/
 +qpxey9tSafqZGMOjMZJ3A4AIAYtOaFGpk4Uxxg39BuP5BzI2fmrvuYhZ
 ChveWNqHnw4txys1+ubfjx+axkvUZdCeqPmapms+wumJ8HimKOkfF6MrG
 q8T6w7PGzBYDJuL64v0JNtSwmffvEsw1Mr89VxUd+OCCc60yyY8+wgogW Q==;
X-CSE-ConnectionGUID: WPIwwDkIQwelATIqM1SBUQ==
X-CSE-MsgGUID: sDB84ynQRnGMZ/c/WeWLtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76830143"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76830143"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 10:46:40 -0700
X-CSE-ConnectionGUID: XrTjFhjASPuRliZfGyeMXg==
X-CSE-MsgGUID: oXIrhr63Q+mPeDCxMbUhCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="222663268"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 10:46:39 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 10:46:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 10:46:39 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 10:46:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j3MyFBKWAoC0wvXxM+asFURImMbzYsWYmFUcuj1094/s/Dgl7oGq078FDsZQ5s7VONW/rCTd8skAMLepyMNfp3vO+neiCb7ZxHQ8qBMZ1TiZx89hWOT0M7J1lfGkRY0h0SXrsisPkpDs3b3Tryvv9Em1ZtCVGmOte57JoRIUt0L29ONduX2OULe/JMDA+XG/S6vR8gHPGxpmmUg7H1GmVYJvN1ozEcaXA2dMzHGhuCm9Y+Z3X8R7dnBkHQSE+uSh6YdcNYeUGVv08bO/mmib1PAQf5lQTMVO/aGmM1hyRIpe5DQE9K5WHHLMrbn13hzB1knADU0iJE4TxkAEeqzZZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1o4wk7b0Eo+gU6WHEUwjVwUxQhYSgWuNzWoN0PJwNU4=;
 b=ZIW1kS3FoEA1MW20BoQmmBkBQ0sQ+X9Y1YPPoJSacBoLUuhryCOaGjdEFLGxlFU42Yi1d8jrNz+DTl7I0FK5f7inga7YahFcz32HDkeOd5P2XkqsNHHWiILX/ilSWXapES0h0RpoMOedebqsz9UmTvG2NterxfGZB4DQhwxL0YdP7pcz493Yu1rFUFMRbJzj/cA0bUNRojDdGZYcubhhQBUpOsZOmanoZcqeAqKuiO52rk/g0P5cT3FG8VFjhj2Rg9pgHxdtc1m4NTJCwnQhpRTe91RPKrypzE3Hq6d52Av6ppbkMXPyiIxx8XgOjd0OCLKBFQ7J0bSAymjWru79UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA4PR11MB9324.namprd11.prod.outlook.com (2603:10b6:208:569::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Fri, 10 Apr
 2026 17:45:36 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 17:45:36 +0000
Date: Fri, 10 Apr 2026 10:45:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jia Yao <jia.yao@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <stable@vger.kernel.org>, Shuicheng Lin
 <shuicheng.lin@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Maciej Plewka
 <maciej.plewka@intel.com>
Subject: Re: [PATCH v2] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Message-ID: <20260410174533.GG6301@mdroper-desk1.amr.corp.intel.com>
References: <20260410140619.736008-1-jia.yao@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260410140619.736008-1-jia.yao@intel.com>
X-ClientProxiedBy: BYAPR01CA0053.prod.exchangelabs.com (2603:10b6:a03:94::30)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA4PR11MB9324:EE_
X-MS-Office365-Filtering-Correlation-Id: f29fc8ae-b9fd-4206-1eb1-08de9728f8b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: jTdHZtO2y59gVYr2gA9+5YkGWrU4uoU2QTJOVHfAgebxLQzw9mk8/9YswTKp9s3lLA2oPv5con8JO4cWPFCPQyAJPFD3gLq/l/ZR+YFEH9CXlxwmwRyqVZossCzX+2NG89fzqYbDMEUn9qoBM8kZQCfejJS6t43ApJ04pfaKeHuMQbgq+FRplppY+1Z2sU5JLVSTVwPImVpwtwE7rV937TN5O/Lm24QjwA4WPZdh49eJ4sG27Yz3aY0puG/YYOLXrfrgLzKHaVYh/xbK3eYjxjIwccyilgYYOihnNf9Is0fxcNd5mC3owyE1oH5LC3MJWCyT26n6pwdk3rZcw95EQxNrt6Vb2g6G7fb6PQaC5jP8PxNR4ZXT4LBERWwPviqtKbB7/84eDDn5cx9V6UE5PyczA5IIiyzl93JzavN0U1pFppbj56BjfSphIAcfL/XZTOZVkZlVfj2hzFT8Hpez22zYKSKdyuDTcNOb7xF1z3I+ZmSWPAjs3gJxF7wy4YIjHq7WWSGv87kE+68Y5hJ72KcEZVrihYt4pGbFl+244ZhY9WIxMQ1v97x/qOT9hM4c3tWUvaKZ4NpmDxosmuw0Ls2xkpG2uCsjhiW7zi5fPqe/eKeS+tuaoGDNZ8xcdkRZ5X3zL3uirJBK9OvStYnygCD171ax3JTZwAcfN4UiH6aFX6uJXo8NV/MKSm960/NnDyZVvmz1kfLjbyDt9VIwlfSVK2lEYw33iZNzXWonBPs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R6GXm6x5PlBC48KYZxWLPrSe7ZxuCO6posMJeGe5JGqfdqbLVBjeGKGRXtpA?=
 =?us-ascii?Q?hsZEA+eyZc5vMepi31ArgtTKEpMrrgxdw5fVEggIo7f77tReaUdA2ZgFO+wy?=
 =?us-ascii?Q?mGNlt7dIFmWyZcVrtcnjXivhH2oVvQUTzJz0Z9LBwyjFZJJ8zobvLGAyUfTw?=
 =?us-ascii?Q?NGOVbfhtvegJXfNDL1lpcMYcsFBrVZIeFTBXBkC8TL1vuDpmyYllpAI3DUY4?=
 =?us-ascii?Q?LlKSytACko3fFAFVl9GsGx7EXOsHaFMv/lDppTMmXTaCfPqEguw7veCWl+IN?=
 =?us-ascii?Q?V8ON+kSzhZaO7rqmvbxsdk367Q7TqIDlp2K/QGjihjLPx9xlhDf2NiAcxyz+?=
 =?us-ascii?Q?3mP7CMGbhwAKgeG83FjqG8kyeuQKnuWarVhxz5oUpe9DqnPMWXGtA7zUq5rT?=
 =?us-ascii?Q?mW1sbZE7F9vDSvr5pXQ6jgl5jkBqh2Z/glyRA3vFU6bPISCUrT7PLh2JUheQ?=
 =?us-ascii?Q?nCN0HWmkd8ZfbyMIQqoKUBXU1RVJoDVvG/sbZ8xkiwnx3apHjLQuSNE2/q+B?=
 =?us-ascii?Q?XRhdz0jJhdW2y+Y1t30eFWYLK4I4mBMsyUULUf6BlV9FXCD9S8zWmqYhcNRW?=
 =?us-ascii?Q?/VdEemgMCKVPPrD9fBSUYR24OY7nHl5GxG+u1BpPTO/53k/qhq0TYAYa7m4p?=
 =?us-ascii?Q?H2EPOJ/Id17fXxj1jQkXz9dZ0D4nFuUa+hNgDPPV+Lh/8aut9VJKRR7vPEAw?=
 =?us-ascii?Q?MUR1x7FO+iQc3U5rqBJ5foXY4U+4HwstJHGaAv/iJzHMnWxfS6lDof98sSel?=
 =?us-ascii?Q?GfQad9ta9ck7LjbZc+W02XYh4d7PJbuB7+JvDQf0kaEh05IHVfwHpYXqIWQj?=
 =?us-ascii?Q?ERQgPm+ae8SwQaWK8BI4U4MtJHnVJ7VqNglqPQicjkSy4Io1umqo1rNhynZb?=
 =?us-ascii?Q?MENCrRSN3n1ZgLbM77ClodKQfyukhcgug7jwRVyQvohM/u6B72fEMzcB5MBS?=
 =?us-ascii?Q?bA6jRr+nuByU2sGuO+qYutaT5L6eEAfDY497depJ7ERGobGiQnHirQHN6hjA?=
 =?us-ascii?Q?L31QUu7Y+w5NbCDGN2T1FCsatrWeZJ1GGqu2ebixXpsnMaUgTKPqiH7eCaGh?=
 =?us-ascii?Q?axXbCShN8TwIZAo8I8BszQEs9s0jz/jfv3scUzwrk/msCmuCLRTwoaEBRSdI?=
 =?us-ascii?Q?zyHlfeV0ez+KGSCp6a+F2Txh+0EQaN0GLBs2vtTox4JNHH1m+LqOhvvmLza1?=
 =?us-ascii?Q?+U0dor9vxVSVwfoqzTaPekvyfMPeZOmmPzNj7FkF24aH7CCawi2Rid0SYlGR?=
 =?us-ascii?Q?PCgmXiD5BTmU2NXiTKCVDu2ctpLmYyHFYqdXVuLf4A0adQ0x54E+K8sIG0ly?=
 =?us-ascii?Q?7N19SUiuQiqrZr61DWNvpXrDwZ+MDgE9Z4ivO/dfWnowc8zPZ3DgryDn5bPr?=
 =?us-ascii?Q?0WWG3+q0XqIoFGbVfyMn0AZBU32d0dAK6GqFr1qlyvzW6DynUC5eVxuQfhv2?=
 =?us-ascii?Q?hHlq2PK8/rE5TD22CuvLeterQRjF38kBFuDOrL53RziIyeZ9xMgTfDg62RH9?=
 =?us-ascii?Q?iFAac0vCeSzVk4PC8IcdaQwRRZI4IwiBVCtSUZe8pid8E2LnDKJycahaWEaB?=
 =?us-ascii?Q?u7YTV6/MFsQk0WiGvUNUyc7QIZh4GtSjWcdM0FLBSvb5P9UK+ffsycEcPm6m?=
 =?us-ascii?Q?lg1NZAWYUZ7TWnmm0OtBdqe6xhnjAq0FUDYvTdNO1brDGzBFx2U8L0Az7N49?=
 =?us-ascii?Q?gKp7dTOPCQuDbJ5uyFjZAExsDP1/lZABBlPemS5uVyWB6MvWD7ICMUc4bJf3?=
 =?us-ascii?Q?WSXD6+Jsu2b30MfI81wqRdgi2ndpK5o=3D?=
X-Exchange-RoutingPolicyChecked: tbIhomu7+BrCKDDlG70i8xsbkzgg4vvAdKrJpSuyD1coS26mJG/Qwg3RaElsGeNBwV71W/J/TOna15/f4DJKaN4aIMs2t6+X4DvWXqHlafkCzUAQEviJltnNJQi4Iq6D6WUFlTTbOQnbXAQqaS8EBAQBSZED+yfSEkCPG0GO2Q3Ppfhj8xCFdpO2MPU9+UhQFaK0TUKvMieuBZNrLbo3gXC04gveSXc3nYGJd/zLTQgmOeZOEB4Ny9DLhXWo2OtqgGdJO11pG63iApfP7AoawErm3ZGiSj8T/IP+snCxVLujeKfrcprLWQpYU5sahZBjVGatZDN+FrT0basB+deILQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: f29fc8ae-b9fd-4206-1eb1-08de9728f8b2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 17:45:36.1616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EeLcpTVJ8XVNxQ97E9PnYfLp8KU/VyllmJuuZSF+4kszmHQFvF+zEorzcnNocLI+T+f9+J3me8QTH3Nve2z68ET051IqZOvzAl6obnCnV/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9324
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
	FORGED_RECIPIENTS(0.00)[m:jia.yao@intel.com,m:stable@vger.kernel.org,m:shuicheng.lin@intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:maciej.plewka@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 171513DB2DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 02:06:19PM +0000, Jia Yao wrote:
> Wa_22013059131 sets FORCE_1_SUB_MESSAGE_PER_FRAGMENT in LSC_CHICKEN_BIT_0
> at engine init, but this is known to cause GPU hangs in certain workloads.
> Add I915_CONTEXT_PARAM_WA_22013059131 so userspace that handles the
> workaround itself (e.g. by limiting SLM size) can set it to 1 to let the
> kernel know bit 15 programming is not needed for that context.
> 
> LSC_CHICKEN_BIT_0 is not context-saved by hardware, so the kernel restores
> the correct value on every context switch via the indirect context
> batchbuffer to avoid leaking state between contexts. The old unconditional
> application of Wa22013059131 in intel_workarounds.c is removed.
> 
> Bspec: 54833
> Fixes: 645cc0b9d972 ("drm/i915/dg2: Add initial gt/ctx/engine workarounds")
> Cc: stable@vger.kernel.org
> Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Maciej Plewka <maciej.plewka@intel.com>
> Signed-off-by: Jia Yao <jia.yao@intel.com>

We'll still need a link to a fully developed + reviewed userspace
implementation that uses this uapi before we can apply this (and also an
ack on the mailing list here here from the relevant UMD people), but
once those are in place,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

You should also check with the i915 maintainers on whether they want
something like "drm/i915/uapi/dg2:" or "drm/i915/dg2/uapi:" as a subject
prefix here to help highlight that this is a UAPI change.  We've been
trying to do that more consistently in the Xe driver, but I'm not sure
if the same is desired for i915 or not.  Since i915 isn't supporting any
additional platforms, it's very rare for new i915 uapi to get introduced
these days.


Matt

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 12 ++++++
>  .../gpu/drm/i915/gem/i915_gem_context_types.h |  1 +
>  drivers/gpu/drm/i915/gt/intel_context_types.h |  1 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c           | 41 ++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 10 ++---
>  include/uapi/drm/i915_drm.h                   | 10 +++++
>  6 files changed, 69 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 6ac0f23570f3..d24e449f1eb3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -911,6 +911,15 @@ static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
>  			ret = -EINVAL;
>  		break;
>  
> +	case I915_CONTEXT_PARAM_WA_22013059131:
> +		if (args->size)
> +			ret = -EINVAL;
> +		else if (args->value)
> +			pc->user_flags |= BIT(UCONTEXT_WA_22013059131);
> +		else
> +			pc->user_flags &= ~BIT(UCONTEXT_WA_22013059131);
> +		break;
> +
>  	case I915_CONTEXT_PARAM_RECOVERABLE:
>  		if (args->size)
>  			ret = -EINVAL;
> @@ -1003,6 +1012,9 @@ static int intel_context_set_gem(struct intel_context *ce,
>  	if (test_bit(UCONTEXT_LOW_LATENCY, &ctx->user_flags))
>  		__set_bit(CONTEXT_LOW_LATENCY, &ce->flags);
>  
> +	if (test_bit(UCONTEXT_WA_22013059131, &ctx->user_flags))
> +		__set_bit(CONTEXT_WA_22013059131, &ce->flags);
> +
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index 0267c924634b..4efc0e758d3b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -338,6 +338,7 @@ struct i915_gem_context {
>  #define UCONTEXT_RECOVERABLE		3
>  #define UCONTEXT_PERSISTENCE		4
>  #define UCONTEXT_LOW_LATENCY		5
> +#define UCONTEXT_WA_22013059131		6
>  
>  	/**
>  	 * @flags: small set of booleans
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 10070ee4d74c..84011ce7c84d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -133,6 +133,7 @@ struct intel_context {
>  #define CONTEXT_EXITING			13
>  #define CONTEXT_LOW_LATENCY		14
>  #define CONTEXT_OWN_STATE		15
> +#define CONTEXT_WA_22013059131		16
>  
>  	struct {
>  		u64 timeout_us;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 147d22907960..9bae82f9746a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1348,6 +1348,35 @@ gen12_invalidate_state_cache(u32 *cs)
>  	return cs;
>  }
>  
> +static u32 *
> +dg2_g11_emit_wa_22013059131(const struct intel_context *ce, u32 *cs)
> +{
> +	/*
> +	 * While re-writing LSC_CHICKEN_BIT_0 for Wa_22013059131, the
> +	 * other bits of the register will also get overwritten.  The
> +	 * hardware default for all other bits is 0, but any workarounds
> +	 * that adjust the other bits in the lower dword of the register
> +	 * also need to be re-applied here.  At the moment that's just
> +	 * Wa_22014226127, which is always set for DG2-G11 platforms.
> +	 */
> +	u32 val = DISABLE_D8_D16_COASLESCE;
> +
> +	/*
> +	 * i915 should only set LSC_CHICKEN_BIT_0 as a solution for
> +	 * Wa_22013059131 on contexts for which the userspace driver is
> +	 * _not_ applying the preferred workaround implementation in
> +	 * userspace.
> +	 */
> +	if (!test_bit(CONTEXT_WA_22013059131, &ce->flags))
> +		val |= FORCE_1_SUB_MESSAGE_PER_FRAGMENT;
> +
> +	*cs++ = MI_LOAD_REGISTER_IMM(1);
> +	*cs++ = i915_mmio_reg_offset(LSC_CHICKEN_BIT_0);
> +	*cs++ = val;
> +
> +	return cs;
> +}
> +
>  static u32 *
>  gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>  {
> @@ -1371,6 +1400,10 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>  	    IS_DG2(ce->engine->i915))
>  		cs = dg2_emit_draw_watermark_setting(cs);
>  
> +	/* Wa_22013059131:dg2 */
> +	if (IS_DG2_G11(ce->engine->i915))
> +		cs = dg2_g11_emit_wa_22013059131(ce, cs);
> +
>  	return cs;
>  }
>  
> @@ -1387,7 +1420,13 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
>  						    PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE,
>  						    0);
>  
> -	return gen12_emit_aux_table_inv(ce->engine, cs);
> +	cs = gen12_emit_aux_table_inv(ce->engine, cs);
> +
> +	/* Wa_22013059131:dg2 */
> +	if (IS_DG2_G11(ce->engine->i915))
> +		cs = dg2_g11_emit_wa_22013059131(ce, cs);
> +
> +	return cs;
>  }
>  
>  static u32 *xehp_emit_fastcolor_blt_wabb(const struct intel_context *ce, u32 *cs)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 24ea5d8d529c..ef6eea3ab597 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2840,7 +2840,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>  	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>  	    IS_DG2(i915)) {
> -		/* Wa_22014226127 */
> +		/*
> +		 * Wa_22014226127: Note that this workaround also needs to be
> +		 * re-applied in intel_lrc.c when LSC_CHICKEN_BIT_0 is
> +		 * re-written for Wa_22013059131.
> +		 */
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
>  	}
>  
> @@ -2867,10 +2871,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  				     MAXREQS_PER_BANK,
>  				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
>  
> -		/* Wa_22013059131:dg2 */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> -				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> -
>  		/*
>  		 * Wa_22012654132
>  		 *
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 535cb68fdb5c..0f553bb12fb0 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2172,6 +2172,16 @@ struct drm_i915_gem_context_param {
>   * Note that this is a debug API not available on production kernel builds.
>   */
>  #define I915_CONTEXT_PARAM_CONTEXT_IMAGE	0xf
> +
> +/*
> + * I915_CONTEXT_PARAM_WA_22013059131:
> + *
> + * Default value 0 means the kernel programs Wa_22013059131 for this context.
> + * Set to 1 to inform the kernel that userspace is taking responsibility for
> + * applying the preferred workaround implementation, so the kernel programming
> + * of LSC_CHICKEN_BIT_0 bit 15 is not needed for this context. DG2-G11 only.
> + */
> +#define I915_CONTEXT_PARAM_WA_22013059131	0x10
>  /* Must be kept compact -- no holes and well documented */
>  
>  	/** @value: Context parameter value to be set or queried */
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation

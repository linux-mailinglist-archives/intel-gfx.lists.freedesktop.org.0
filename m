Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73148B00755
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 17:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FCCA10E8FB;
	Thu, 10 Jul 2025 15:43:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B/eV5ztS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 363F610E8FB;
 Thu, 10 Jul 2025 15:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752162194; x=1783698194;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6lOogAmu+4qK6aeZZKgPORmOp4FZy0xxvvvU+gSvjAw=;
 b=B/eV5ztSR72Rl8snXcp3Kfnd9Lu2J/v0uN7y86+36C1KIGpL5qDhB7jm
 WahWFhMKRhmfjJCmANI0MYf5fiOS6PMBIsXFnylHwKdOZyNsdnEWAwvTU
 LFf9lV8ZBAUe5RX0nKTuQpnyK572aDg9BrpcEk+T8WJVV2kwqtXL7LYNM
 BHJWO1+FYqINQlF7SlX9VbkwVY8+tntVk1lMSmpR9y1Gmg5aFi6eMNOgA
 zSaQ5TPIl8qkmd+zcNapVJt+WqS33XUqPyXCWaBRlIenNuCn6wO5W6IBE
 RlG7jTEyKUONsiqsJh/braDK1BOg9bhMUuL6+d8dV5vXtwl7MQaI94+by g==;
X-CSE-ConnectionGUID: buB503ahRWm7sU8415BD7A==
X-CSE-MsgGUID: efZVKyL4Ryesc6ZLJO8qPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="79885272"
X-IronPort-AV: E=Sophos;i="6.16,300,1744095600"; d="scan'208";a="79885272"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 08:43:13 -0700
X-CSE-ConnectionGUID: H9GFaHiVSCSgJKm59pOdpQ==
X-CSE-MsgGUID: crU3UV4DRgq+A6PZ1kLxAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,300,1744095600"; d="scan'208";a="187128250"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 08:43:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 08:43:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 10 Jul 2025 08:43:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.73) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 08:43:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fk6aA0xKGhrc+aJAsk2nKlfoYRgYpL8PMZQExBI2BblaFg/JXua3fGIqyrwm8SFnE6YfFf0j/Z5g2XR1FJeWAoarLDYh2qk88UUj3gFGfZT4hrtXghh547gkbQbtbDT0MKibSG4aV/ci8RXhom1ZPoczsI4t4NnQ9W5TxWeZFV6pYsh+kamTYrVENNu6+zZ6Nn4q387foosubppdvJAj6EtkFH7/My4jkc/Iqe+g6ih+V4LN5dFu49hrGICnWxvP8Ls2R2vfID3ZWiz3h1E4EJdC+9uvUg9QIw3Ya2PeLoqBtvCKHwpI2nsq3KaSfeD+SaZaX78ocl+FgZjf9XjDcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XhajVpOzAGDLqR+T+vW7pLSmfhXTH6aJU7BFv/MxUkU=;
 b=tZc5oB5xwzNfbGSbUfizxhSJKrlwd66TjjwPV88BvrX6mctG/E3Q0LsRo3gyKtQo2FV2Rvak5Cl1/7sRZly03bPJH8pyc2aoksBAJE2L7qq6LgJfOGJUarwm53W8WjxM/hrUG7yRXa2KY5iUTwBCBZbQX4XT/69Pcu3lJ5e/ZgqTsEAopv+pi9gdVPHkHIaqv97yC901LVhExRAHQ6u5ZJDxOu3YJLuMvQmBI4drdDHM/ZwIuAC9nmxvgtefbMO0zzaERBtPRwkMiMV8ctytw+UZvrU3Mu7P6327QMJFk88z2KzP4T7gS4ngxqqqmEi5uucI/4HKo76fpjdeDJHh/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA1PR11MB6490.namprd11.prod.outlook.com (2603:10b6:208:3a6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.24; Thu, 10 Jul
 2025 15:42:56 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8901.024; Thu, 10 Jul 2025
 15:42:56 +0000
Date: Thu, 10 Jul 2025 11:42:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Message-ID: <aG_ffKlueD_8fx2E@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
 <aG6g5C-nUMPqYSzS@intel.com>
 <e4f4572425562c23117710d538ab2d8f377bc1f3.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e4f4572425562c23117710d538ab2d8f377bc1f3.camel@intel.com>
X-ClientProxiedBy: SJ0PR05CA0095.namprd05.prod.outlook.com
 (2603:10b6:a03:334::10) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA1PR11MB6490:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bb78089-fd5e-4588-6fcd-08ddbfc8706d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?Dq8jdnw3/7I20JCkQV9wL3u/G3qHPI0mx74nY+ucYgvStk9xpQEqNdk7BF?=
 =?iso-8859-1?Q?D1NPsr8CSE0gj72SbjSKhhiTgymK1LDOzYiIVv3X4+qn7PJDVRc23f05I0?=
 =?iso-8859-1?Q?T+ULzTUfE1nUQjX32WzNma0n4Cl2qU9ZhgE23LWNw4M0XMtyvFpevXPh04?=
 =?iso-8859-1?Q?e5JxaIh8CyBfZpG8+pehYMiiwC4jDjujW3XGf8kaStNk1jhvlfKfzyj6gH?=
 =?iso-8859-1?Q?lcMNlMsyiCQigUFpMQnjfwUzdtHwd87hXG9wpLukmNYYP4TSwE25KAfWwH?=
 =?iso-8859-1?Q?uKbsd7nEn9wwJDUG0CRlBAAmxYdQEa39lv6vQWzuLnhpmzLjx0YHc1f5Pv?=
 =?iso-8859-1?Q?zhL/0/ugU44wCy7LA5Fbh25SP6N20DCFpe6nAy0Ii9vQU9Ox4G44EZY4/K?=
 =?iso-8859-1?Q?Xg6LTy5BeWuvkNeLyUb4dnJkG+STx5i+0yqHnnJkH13q3ZSbum7JNbABDS?=
 =?iso-8859-1?Q?jslvozKEEJBEbHlpI030IFjAW3V4xY1WRLXv7cdh36dA8B5atHuYUvo4tf?=
 =?iso-8859-1?Q?4Kbo7EdJ6AKiafltj/73PlZ7nhnu4WrrgzeC4miB+hAJYgMniysoVa3zLR?=
 =?iso-8859-1?Q?6wQEZlW/vcTrok29aofnE/uo19QQceqkX/plC6VpEIOWuPaxIGWBmYt2mP?=
 =?iso-8859-1?Q?wH1uCAiJEQkrp3PCDICl7eWT/cgmAruzqCAAYR5rSQ1CugZ5ALSlwrfDn+?=
 =?iso-8859-1?Q?LZ1BVUHljIEmvhGT64aHjA/bfcGdhTAETzvte4hbghmHVGf4VfRo3OZi/X?=
 =?iso-8859-1?Q?YzuNKg0sRb8jwWZilizATWJrXoi0pqTu1/09PfS2eFBBf/E4x2gFAaE/uQ?=
 =?iso-8859-1?Q?jJkt+ETewnqNzGEkQQWiycEgV8vZsQ7leXY75OUSBkmnkMS783osEwNWUe?=
 =?iso-8859-1?Q?XleaA+kdCeGw3SNvrY8I+vNnoRiJZtUvl6hVA0xvnmIXU0NvxDan+mQxAf?=
 =?iso-8859-1?Q?rgksiJlk0/qMH5I2pctCDkJU9JoO/YFdRM434jENYwf02BNMGIfy/gabwm?=
 =?iso-8859-1?Q?1Mqfja65icLk5Y9mSNkrmRyu9GwBAyzq/b0kfE/R0bKkqll9D3+0t1DOk5?=
 =?iso-8859-1?Q?tTCS9hWGe58R484SKa++P4D78r28X0wxcRavnfOqdgnzfz9xJjxNvirjQR?=
 =?iso-8859-1?Q?VycCru1vxCqntGK9U4721Pqm3kKT4elj+v23h0bMhyLLXIvOGe3PSD8o/b?=
 =?iso-8859-1?Q?PYBLxLkjHPIZScF6O6d0cfezhoVLB69wtNGo35DMozncTrICQI/1ywpsUy?=
 =?iso-8859-1?Q?BIr1475Ilt1EQPEnYkNLakWdsBJPxfAPxabw7emw6jBbX20o7bIlCoDoXG?=
 =?iso-8859-1?Q?HyrKayFqkq3hQfdeCP1xMkkBO1V7odjTcHrdzj6507nThR2/COzBrII3YN?=
 =?iso-8859-1?Q?Yz4YcOOCFY7vCYJiVboqYMQ+I5oautf7JOw9yFOIUD7yhMzq5vm/LVRimg?=
 =?iso-8859-1?Q?W9a8jsfFcrnPCkQXRxNGILgQfftFpjLMI2eSLoCQNNdCA53tahseNUZR96?=
 =?iso-8859-1?Q?0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?LZMtZt823RxW0NAeZCEQGp/NC8OekKInsvBhOnz72TeaNOacbBJXRMTusv?=
 =?iso-8859-1?Q?JEa7odWBnnsduuO6HZpEvECBDDmeMNh4QqPFy5/k/jDknT/bg955XBySh0?=
 =?iso-8859-1?Q?uaAzn1EYgfQKtLG6ycsYy0BzYm8D5CC+TFZZHPZOE5Y0nU/V/nHeoAerAW?=
 =?iso-8859-1?Q?QOuq5WoIH6xmCtiSRtqM9lBMtViH7ruVZS2O/eV7kmkTusGgXbJSABQRXb?=
 =?iso-8859-1?Q?FqCaiZp9Wn2eQRdlM/HmCsbJQMdo/DmwF45hVk4DeusPYYx+d6odCvNWBV?=
 =?iso-8859-1?Q?IpaPm9dGdKzYPdeBR9nl12GTO5NsqDRdforp0meGqR9fhJbyWSSqxrytXs?=
 =?iso-8859-1?Q?3mWsFN7+0GmxPZV7CRipWyyk4Db9RWnb/zYFqEhoN/pBukxkpg4cLp6CCM?=
 =?iso-8859-1?Q?yQ9Vv6P5avEfIXORXlFWWDmLkdYn1KiFx2MamGEwR4NhwoTHbLzPriSkMe?=
 =?iso-8859-1?Q?UEZkruMlPg53FmO5Hs7VGFe09YXMNbq7Ivbdl3zJ4NxPgufkm1ROaaPlQS?=
 =?iso-8859-1?Q?8JqQ8rHZiDvUjOmWe/Q6IbAhJLakWz8z8yDW/8uY58aQzQyKLRn4FZcNeU?=
 =?iso-8859-1?Q?jZnrDHVbco1lrro6Phu+pOQxXxAd89IGUr7aEbbkFobAQ38oIixwiPapVw?=
 =?iso-8859-1?Q?lW5f4DzwncQSzwtBkQpw37grk0xw6ouYPLPenTKVvMljT4lLZEevg4m9oK?=
 =?iso-8859-1?Q?aMZwMmD73KjY3DuCkc6yEFn3GKxH1e4yJ3sYDRtc40TtXtvkgVGnL48VVk?=
 =?iso-8859-1?Q?U5/jfEzGldZUDwlPZ7+II8TLBUhPoMb61qdLOWcwxR77k/kjHvHEg7Ls1u?=
 =?iso-8859-1?Q?BgNkqdIf2gi0oD1Tg3zxJ57HP18p6ZQfMR1oz+lMZXhY9Onfu66Zmzs1HP?=
 =?iso-8859-1?Q?C0MC61QiD7Gs7Pp1crfhyxeinzXocLC0gdrdEvflFRbZGHxFrHBvdjM7yt?=
 =?iso-8859-1?Q?By6jgVI5zY11pvAJbvqjkcy2emV6k6deeVyoZQEu1E49lABvuXdHrrUihZ?=
 =?iso-8859-1?Q?9OPm3NlPJ1AVqtOY4xb8/I1x5xJOZ5BbO9GcHRswra+lg0uTsmcd2f0dO3?=
 =?iso-8859-1?Q?h1qyZ8iaHOB8cykIFYLeUqQlUoZab3e4A9PMGIHwch30M3CftdnYmA3IzR?=
 =?iso-8859-1?Q?2uoqWJj5290kaMNx2QrBAxejVbG3vVUReYjH4uekusmCEvSL35Ya8N2h2s?=
 =?iso-8859-1?Q?tfWuPoV6Ik+LjNuAP66p0/mNXDYUYQyqdzV8tbDfiAvRfjHHliJmoGzVP6?=
 =?iso-8859-1?Q?zolsKLyR0Nuk7YwipjZOpyi6Q/liLCE1yxPYZWS222XzpyV/tJowIYTcoS?=
 =?iso-8859-1?Q?RJmjswGCVz82+A40OeORHiE1lXB+orr0Tx0gY8Hw9poqSThqpzfjV2I6Lt?=
 =?iso-8859-1?Q?Mwv4aAEOibL9tMm2Xs11rnhyhrGAQ/0Dx1N/ABa/ed0MZjMfC/CR7ctyH2?=
 =?iso-8859-1?Q?4Fg+jsbNabHu5XnhbyVzsp3+rSucdWBv1unnXkEfUDS8lOnE2eYx0ZfvDr?=
 =?iso-8859-1?Q?k6UQvEzm7EP5/83mfEGgBd4FJ5vx3KuXhkwMmnW7SDPCB0cauI6NtXAH1E?=
 =?iso-8859-1?Q?ctvbYFtivUSuFLArenhgOpEFMR/WsklT+/gAFaODiRwdxKvk+snmYr+xG1?=
 =?iso-8859-1?Q?WG2BtkU35k+ajRDO/4G6hZtE3kp+gSrbgn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bb78089-fd5e-4588-6fcd-08ddbfc8706d
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2025 15:42:55.9315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Di7OLog9IR8BJEIPRJ8z1HkIC4sw0siYxpe+h3O7UhJA1pCovmfZVCYeKHYlJXOmI7dH6/KpqGZhzKnmB9RbIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6490
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

On Wed, Jul 09, 2025 at 06:11:17PM +0000, Hogander, Jouni wrote:
> On Wed, 2025-07-09 at 20:03 +0300, Ville Syrjälä wrote:
> > On Wed, Jul 09, 2025 at 10:57:58AM +0300, Jouni Högander wrote:
> > > Currently disabling PSR2 via enable_psr module parameter causes
> > > Panel
> > > Replay being disabled as well. This patch changes this by still
> > > allowing
> > > Panel Replay even if PSR2 is disabled.
> > > 
> > > After this patch enable_psr module parameter values are:
> > > 
> > > -1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
> > >  0 = PSR1 : no,  PSR2 = no,  Panel Replay : no
> > >  1 = PSR1 : yes, PSR2 = no,  Panel Replay : yes
> > >  2 = PSR1 : yes, PSR2 = yes, Panel Replay : no
> > >  3 = PSR1 : yes, PSR2 = no,  Panel Replay : no
> > > 
> > > I.e. values different than -1 and 0 are handled as bitmasks where
> > > BIT0
> > > disables PSR2 and BIT1 disables Panel Replay.
> > > 
> > > v2:
> > >   - make it more clear that enable_psr is bitmask for disabling
> > > different
> > >     PSR modes
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_params.c   |  6 ++---
> > >  drivers/gpu/drm/i915/display/intel_psr.c      | 22 ++++++++++++++-
> > > ----
> > >  2 files changed, 19 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > index 75316247ee8a..195af19ece5f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > @@ -116,9 +116,9 @@ intel_display_param_named_unsafe(enable_fbc,
> > > int, 0400,
> > >  	"(default: -1 (use per-chip default))");
> > >  
> > >  intel_display_param_named_unsafe(enable_psr, int, 0400,
> > > -	"Enable PSR "
> > > -	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
> > > -	"Default: -1 (use per-chip default)");
> > > +	"Enable PSR (0=disabled, 1=disable PSR2 (BIT0), 2=disable
> > > Panel Replay (BIT1))."
> > > +	"Values different from 0 and -1 are handled as bitmask to
> > > disable different PSR modes."
> > > +	"E.g. value 3 disables both PSR2 and Panel Replay.
> > > Default: -1 (use per-chip default)");
> > 
> > This thing is very unintuitive. Why don't we just get replace it
> > with a new disable_psr modparam that is clearly just a bitmask of
> > what to disable?
> 
> I was thinkinig we should keep it backward compatible. I know this
> parameter is in use.

I agree on keeping this backward compatible.

Also our experience with disable_power_well shows that negative
name in the parameter can be much more unintuitive and confusing.

> 
> BR,
> 
> Jouni Högander
> 
> > >  
> > >  intel_display_param_named(psr_safest_params, bool, 0400,
> > >  	"Replace PSR VBT parameters by the safest and not optimal
> > > ones. This "
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index a2b5688f0c82..959b868672d0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -254,13 +254,16 @@ static bool psr2_global_enabled(struct
> > > intel_dp *intel_dp)
> > >  {
> > >  	struct intel_display *display =
> > > to_intel_display(intel_dp);
> > >  
> > > +	return display->params.enable_psr == -1 ||
> > > +		!(display->params.enable_psr & 0x1);
> > > +}
> > > +
> > > +static bool sel_update_global_enabled(struct intel_dp *intel_dp)
> > > +{
> > >  	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
> > > -	case I915_PSR_DEBUG_DISABLE:
> > >  	case I915_PSR_DEBUG_FORCE_PSR1:
> > >  		return false;
> > >  	default:
> > > -		if (display->params.enable_psr == 1)
> > > -			return false;
> > >  		return true;
> > >  	}
> > >  }
> > > @@ -269,7 +272,8 @@ static bool panel_replay_global_enabled(struct
> > > intel_dp *intel_dp)
> > >  {
> > >  	struct intel_display *display =
> > > to_intel_display(intel_dp);
> > >  
> > > -	if ((display->params.enable_psr != -1) ||
> > > +	if ((display->params.enable_psr != -1 &&
> > > +	     display->params.enable_psr & 0x2) ||
> > >  	    (intel_dp->psr.debug &
> > > I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
> > >  		return false;
> > >  	return true;
> > > @@ -1415,6 +1419,12 @@ static bool intel_psr2_config_valid(struct
> > > intel_dp *intel_dp,
> > >  	if (!intel_dp->psr.sink_psr2_support)
> > >  		return false;
> > >  
> > > +	if (!psr2_global_enabled(intel_dp)) {
> > > +		drm_dbg_kms(display->drm,
> > > +			    "PSR2 disabled by flag\n");
> > > +		return false;
> > > +	}
> > > +
> > >  	/* JSL and EHL only supports eDP 1.3 */
> > >  	if (display->platform.jasperlake || display-
> > > >platform.elkhartlake) {
> > >  		drm_dbg_kms(display->drm, "PSR2 not supported by
> > > phy\n");
> > > @@ -1517,7 +1527,7 @@ static bool
> > > intel_sel_update_config_valid(struct intel_dp *intel_dp,
> > >  		goto unsupported;
> > >  	}
> > >  
> > > -	if (!psr2_global_enabled(intel_dp)) {
> > > +	if (!sel_update_global_enabled(intel_dp)) {
> > >  		drm_dbg_kms(display->drm,
> > >  			    "Selective update disabled by
> > > flag\n");
> > >  		goto unsupported;
> > > @@ -1664,7 +1674,7 @@ void intel_psr_compute_config(struct intel_dp
> > > *intel_dp,
> > >  	u8 active_pipes = 0;
> > >  
> > >  	if (!psr_global_enabled(intel_dp)) {
> > > -		drm_dbg_kms(display->drm, "PSR disabled by
> > > flag\n");
> > > +		drm_dbg_kms(display->drm, "PSR/Panel Replay
> > > disabled by flag\n");
> > >  		return;
> > >  	}
> > >  
> > > -- 
> > > 2.43.0
> > 
> 

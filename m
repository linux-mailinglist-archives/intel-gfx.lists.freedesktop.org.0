Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNEVCnAzgWlQEwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:29:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C554D2A50
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:29:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37ACE10E464;
	Mon,  2 Feb 2026 23:29:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QHTbKYSs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9016110E4CD;
 Mon,  2 Feb 2026 23:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770074989; x=1801610989;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZOnCY5HN0eNe87GcNiaCyV/UmREaUugBe2aEl3q/ER0=;
 b=QHTbKYSsUSkpXRPebw7alCnL26L0QGlaLupaTYepvoZvFUoL5pIs5ms2
 gO5t/oWq3QXFYpmAxc3+CpaaHvWzNTPRnKY0znk9BdfDHVqSlWxeTuCmK
 lZ/cjh9AV+vdDjs3YpWGvy+OYdPGAz7GOZeWu6rVv2vPwGoIdPGNGqiae
 sze6mAPYOLLy5vFJd4TVUokKJn5gOl7uiVgI4JhXlG1a73A3eZViyyZDo
 03Xyhzhr36SZEb7SqLkbh9hkRuOn3dBiTqnSqRSnyNmR6lBOs4EXRqPiL
 YAgS8HV/9YyRCK3j89vKxOCBoQwkJgHbEgY6R/uuUxF4RGlTsk4mZGeqs w==;
X-CSE-ConnectionGUID: YXAD3YBkQlaGnVNeeBvVgA==
X-CSE-MsgGUID: BftYszc5SOuW5/R3TnhZpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="74864556"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="74864556"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:29:48 -0800
X-CSE-ConnectionGUID: 8WKg+8uzS/WJePfjrYOd7g==
X-CSE-MsgGUID: UrGTtgANQU2khaeKXESNwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="214145518"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:29:47 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:29:47 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 15:29:47 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.55) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:29:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y1XqTYy7c9hZnPs+Gwm45dIRFyxQTbeHKbdUW0UCxkN4d9CQvJz1d/pB7inKf3X2tApHEwBbGS9/S1JcnxVdpvoMMA/AUVSRr6FQ52I31Z7t6LUDmZIuOJPpXtrtyTqZYyieML096DrCcKCoxEYgXnpI4vTnzMC55UYL5tmYN6j+P+9I0yqE8TeZ7L8XnJoxytVA1Hdfdqb4fMCRJxB7oF8CRtfnt+7+NMkccEsf7balk04yEHs2ToVGJQwO035q7D6hGjCWCZq4jRmf3Cu5TJyGW8rOxIVhWAcvZBEZ2iyLAQ11qZUEkBmPB21+zkmvfieEfyxC2vJ8HXR7chAW2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i3uhEt/UL86Ii5g/yekuHMmEpmoD348MVwUikN/gaLU=;
 b=XKkuIN/uVChVUoJdG25G3EyAQndgKbWOX4ApbJJZNpmt3huEg5S4ZHyGC+Eiaz4snFz2HSKEPGuUNJwVfn5qoh3+kuD/B8sOqSgOPzfjuYaxu+tmJLwDLupQt3m/ifVDFxsobmjqEFpKe3HzKxa6kYr/xDoXYS5Wgfck8C+/lWGyggJo8kIzOmAXKmzotI4OAe9vWligczgGIeT+FJEy8Vf+JRl7OHQiHsxw6EYPZEFPYkrRzhB2UH/2aHgwuS13aP+MclkrY7f+DMCh/ai/rZTnwQJ1wlZzJ3AM9ciAkxLmNhbSUXUvygjqMYTcXXf13KAPgL1Ez240ZCN62NJG0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB5992.namprd11.prod.outlook.com (2603:10b6:8:73::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 23:29:44 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 23:29:44 +0000
Date: Mon, 2 Feb 2026 15:29:42 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 10/16] drm/xe/xe3p_lpg: Update LRC sizes
Message-ID: <20260202232942.GL458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-10-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-10-653e4ff105dc@intel.com>
X-ClientProxiedBy: BY5PR20CA0029.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::42) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB5992:EE_
X-MS-Office365-Filtering-Correlation-Id: c47828af-9d45-4437-5911-08de62b2f26d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qTApgUs8mj9TTiiwnyJ91YzKvohu9QzuoEYdo81OBdY2doQVkrpYnvJMnAjn?=
 =?us-ascii?Q?Ju/HhPzIGxOHaCY6vzPBKid9+tTlWUdMVF8J85k7WCLmCdSBTVbuctYhkwCa?=
 =?us-ascii?Q?FopUf5Uae54uff4FCOj5SwifrdRuPYCzhYwoEfCMBcJEkDVcHplzAU1f8+rW?=
 =?us-ascii?Q?ylG29E+tWsqSdUiz4/ObAzoyWdmQJfrxS5uMu+Mt5Rvo8QADinTpbVp+8o7j?=
 =?us-ascii?Q?ctCx+ukibFsa23bYtUbdo5POUl6zsR6vOFucB89/8PdsDZgzETduJzCQ+sSx?=
 =?us-ascii?Q?pilM3InYxdpzj365obPG18v6qlOPKOEfqXU2Ob4bsMxE2+u4csKkYsJFa0hn?=
 =?us-ascii?Q?SxHtRZtqL+8FXzbDfGki5mzJC7RUOuncYOWCP4RkezGeVpBD2F9+mN44ZviV?=
 =?us-ascii?Q?xNeWPu0826a+0Er5SY6dT29MPZ7Bf0DVqGf9GEkEtkcAZqwpvrvaszwTrZOZ?=
 =?us-ascii?Q?qSsWeo/fTiAn0qCrYcuVbRILXlv0P+yrHYw0SVVLxU3aKDGCRvBGIwEwMydV?=
 =?us-ascii?Q?E+uTalgN9IacbHNsV4SDdXhPOQ1n5Vb4hUddeR5KwBrkppWJS+SQNJiz5d1y?=
 =?us-ascii?Q?CmQWpvaKRic3yU9urlesYyEf/Mt8c5pnevSjpAHnVM6buEu+zPzcZ2pL1q2l?=
 =?us-ascii?Q?8X4Ek2r9vIsVt4HKC0WAoRNpxNkdUMOuY8Xy5Hunyy9aw1OPbl5TANONK8q/?=
 =?us-ascii?Q?sr7U0r3Ku5zWTuczDgx/d5qQIwqJ2+/HKJSr23g4BDTzpBeS2RwBH+HPkFYh?=
 =?us-ascii?Q?U4t+5ikMgCbKfLMQ2hlNwumvoiEASjunOiH6og081ER0OFIsKijOh7ofnOD0?=
 =?us-ascii?Q?ija54d3ZaGFSSOdq32mOx7Yst0YTnNclqyB9y/kobv/ia0ywiU5cwxhVUyIB?=
 =?us-ascii?Q?Qt1SVtcJFYRpzXs2v8yLLuSPT578EK60knkZ/G2uIHgeVPHy6+zhWOGJhJ8J?=
 =?us-ascii?Q?QF0EF8OF6xADtRP+RXKyuiLYLqO798eWGCa5N4OYlmW//jgRFzRS0ElJlzI0?=
 =?us-ascii?Q?G3Ih2qUt4p+VW3ciPpqPxgRdyV8Dx0okhOA2YhpX9+9pL3qdEeRhF4yZRpp5?=
 =?us-ascii?Q?NhOn2uJfuzV0g+Hi21JicgnKWmM19cJqyfFI2pY1RLBbYeVuj9GF0QFcYTsp?=
 =?us-ascii?Q?sTbwggJwUht27YetruBFKG3b/9t2bQh0N6336jBWSb5KV1/uPZTMnL97bFi0?=
 =?us-ascii?Q?mNg7JM6N0x8+iPLZVj18VWN4bF9uUHcHzwzccN7br2/lZQ43vWGsxZG7gqQc?=
 =?us-ascii?Q?xrzTtfzXhnJlZvhRLOWgxh+1KzeRvbfcTg2fDWZSUc7CHREAPpTxX7XvjPH8?=
 =?us-ascii?Q?qh6GJmTHE20HltxpdnH5cGRfTLG7KrvbcFQOznRTCFrQ80+a4GNdufXgdfC1?=
 =?us-ascii?Q?paTlXcJR/2ypJBY4usUK23TXSYJi07qZGNMJs5SGHsux6uGAOE+GbARl+pHS?=
 =?us-ascii?Q?oNX8qkDqVi7rr6IxfMOnp8LPG+NIEJysxfy02NRRIEUZ2ZtghwTwHpWa47IZ?=
 =?us-ascii?Q?avJD0jh3edCSlkcgjORbBiAu4eQpOzlog3Pa/FHlIAgDE6YCNGxVrp8VAvTj?=
 =?us-ascii?Q?+6d0ZbFa2DQromFOxXs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nGnDyQURVr+9+DmmG0LGakOspmgShE9N1IGrQpSednvJD1ijyOwdomgHfPfy?=
 =?us-ascii?Q?3xQlsrhSMZpFA+uYWuHirnqlqCewtnTknHLgaZB1pY673my4bxFH+ihwC5L6?=
 =?us-ascii?Q?vPda0jC8CSyFQWneTvYnT58+xBkApTC3BGRpwCfMT/dM43E/8q558MK+gFlt?=
 =?us-ascii?Q?QMZJ2nxAKsO6R/ONAqZVgOGyBmSmSBq7f2B3nLWfWu14mt6kjkb20zBLVitY?=
 =?us-ascii?Q?BBW4kMvPbe40DNz0Em29LEzVpl/RhoYQrrrD6Cvbb9KsDWQGFcHcd9qWbDp1?=
 =?us-ascii?Q?eX5Uae1LJ2TMwRwVOS3a2EaQRbQqHxnEv44E/RO0S1nD4iu55PWNaYfpwyA4?=
 =?us-ascii?Q?FQnpCYRV1Y2cqvPA4uhIIRTrPDsTz7//w+RYCLg8gQbtbqdbLT3FgThywM79?=
 =?us-ascii?Q?9RGDop2vxPr/ATyCSXdPBPTaXiO5goLyebT4z6eLc7qrMWx2/UgeidHRVAzi?=
 =?us-ascii?Q?qB67X0qe3z/qC5pCCc83ehbxftnrwYjUKLuTwI+rvYxNZI+TRuNQjrRH3ayi?=
 =?us-ascii?Q?7BZ3+FHbrNk9K/BNHQuuZ4F+eqlCjx+bkg5T7Jz4zWRTQ8NaYe7tfzEl8dzo?=
 =?us-ascii?Q?u+4gbrlPWCA/p7LjsYQTo6Mh2uWJJS3uo9E7lLJWRMAEr24H0PYMRb6pD9NG?=
 =?us-ascii?Q?euB2AczrobgJayJXC2PkCizZThkr6zAIqEmkSKpcdwbyGfCi3Bh1Da0StGcZ?=
 =?us-ascii?Q?gtaS/VZkchfSCXI3MoyV92blD5toYMaJjkaJ6WqD7nxJDIaX6xhf57JD2MpA?=
 =?us-ascii?Q?0+246dVl6L8lmXwwxAlCHBwjcs8Nfi04vkVr2pwby7VyxXW9l57g6UVicDrH?=
 =?us-ascii?Q?9AKRB3hutH0p1Ls/3PAGpRVVDYdRwoFGBa4ZnN04vx8akoC1hOJ9gYmknG6B?=
 =?us-ascii?Q?pwKSBHLGeaMIQTDEDsfD7MD8iXIsQdMbMZ9RYYYBK86BSg7HRm+kK3d/B4Aq?=
 =?us-ascii?Q?qHpeWUfrVF4kuV1C8Zvvhe2qo5eA8WOPFsdHYFakbXuj4NC5cUtxQuLDPbv4?=
 =?us-ascii?Q?r65vUscqsaq4jYmMOqiG0O7mfeSf5jf1esx16Q+t/zQgJNcpQJmNtwSA09Ij?=
 =?us-ascii?Q?xhcq4Z4p5UyAkYPZ6BQNpqYTcQU/inIsi87GHayLYrNA2taJpR9aHAFQkn6W?=
 =?us-ascii?Q?GzT7KJ0wX20Xj2td3uL00tx5ZqdQJusm9TvpEKaTBq5wAJSATLplaaUJSI1j?=
 =?us-ascii?Q?Fvm/KgUpXmiP2X4PEaYiy6/lbr2TbCV1EM3xGjGYb0GGmEnKQnOiGqDVqbFY?=
 =?us-ascii?Q?bqSg8Qeb2+ev+i2uKpoZgv5UnD7SL1O7W5rvc2p/U11O5LMMdJNMjx+o/9iz?=
 =?us-ascii?Q?0E6mqxpLKhwYJF1IFrqyoqEzlPnkKxO4Fz63sK3WdUQO3oksdgbV7TOuHNvI?=
 =?us-ascii?Q?rjOYEOoZNiQMkkhKl8+rLAQMUAJ7G/ydfFGQGQ0dWNdd8v8aI+Pu37x6AGf4?=
 =?us-ascii?Q?f5M16AyR3+hmUSKHUF92KGIPDw8c29w8tKMCFzHYd2GrhF4a9fOW5ynuOksu?=
 =?us-ascii?Q?izjJPFkxl3B74+VjYLUF8QQi5A5pomTZrhIjHtbtXKu8AG+IDHyYsroFi7E5?=
 =?us-ascii?Q?hSVlS+k5xKjNRz/2LOmHsG+hPj96cZQ1nc/BUs/wLZ0kuedlt3OJeEB7lkaJ?=
 =?us-ascii?Q?hZnXyGsgbe+eZ8QrWkjJhbYJ4alxx3MZHoPrwpkvZhX3XNzak6tzuvtHvJ9H?=
 =?us-ascii?Q?OPvT1VMgOcHKwHQqyj5MR9zi4Yn/Lfe961Cw9niWpqq9xSwI8BzqpQkIgoPk?=
 =?us-ascii?Q?ZDvySLYxpdUj+W0VLTwS2zoK+H0fTCc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c47828af-9d45-4437-5911-08de62b2f26d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 23:29:44.6158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0dqB1Yesymuuo5oe08/xGglNkRAD6NN+GI8vG5MfWK5cwE0QNsXKVhKKRV5cfFDKEhn1JRD3UVEMlpEt8h5RZtsc5O/hD5ChIF1pV9R/5IU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5992
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8C554D2A50
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:16PM -0300, Gustavo Sousa wrote:
> Like with previous generations, the engine context images for of both
> RCS and CCS in Xe3p_LPG contain a common layout at the end for the
> context related to the "Compute Pipeline".
> 
> The size of the memory area written to such section varies; it depends
> on the type of preemption has taken place during the execution and type
> of command streamer instruction that was used on the pipeline. For
> Xe3p_LPG, the maximum possible size, including NOOPs for cache line
> alignment, is 4368 dwords, which would be the case of a mid-thread
> preemption during the execution of a COMPUTE_WALKER_2 instruction.

Double checking:

CW_INTERNAL_STATE_2: 22 dwords each * 128 instances = 2816 dwords
CFE_SS_RESTORE:  2 dwords
COMPUTE_WALKER_2:  64 dwords * 24 instances = 1536

2816 + 2 + 1536 = 4354 rounded up to cacheline (16 dword) alignment is
4368 which matches what you calculated.

I didn't carefully re-count all the non-computepipeline dwords again,
but eyeballing the list there aren't any major differences in that part
that would meaningfully change the size of the LRC once we round up to
page size, so replacing the old Xe2/Xe3 compute pipeline (~1128 dwords)
with the new Xe3p 4368 value gives me a rounded up value of 7 pages and
5 pages for the RCS and CCS respectively, which is what you have here.
So your numbers look good to me.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Hopefully in future platforms they'll make these numbers easier to
verify in the bspec without requiring us to carefully count up hundreds
of instructions by hand...


Matt

> 
> The maximum size has increased in such a way that we need to update
> xe_gt_lrc_size() to match the new sizing requirement. When we add that
> to the engine-specific parts, we have:
> 
>   - RCS context image: 6672 dwords = 26688 bytes -> 7 pages
>   - CCS context image: 5024 dwords = 20096 bytes -> 5 pages
> 
> Bspec: 65182, 55793, 73590
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_lrc.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_lrc.c b/drivers/gpu/drm/xe/xe_lrc.c
> index e58eb8b9db78..38f648b98868 100644
> --- a/drivers/gpu/drm/xe/xe_lrc.c
> +++ b/drivers/gpu/drm/xe/xe_lrc.c
> @@ -113,13 +113,17 @@ size_t xe_gt_lrc_hang_replay_size(struct xe_gt *gt, enum xe_engine_class class)
>  	/* Engine context image */
>  	switch (class) {
>  	case XE_ENGINE_CLASS_RENDER:
> -		if (GRAPHICS_VER(xe) >= 20)
> +		if (GRAPHICS_VERx100(xe) >= 3510)
> +			size += 7 * SZ_4K;
> +		else if (GRAPHICS_VER(xe) >= 20)
>  			size += 3 * SZ_4K;
>  		else
>  			size += 13 * SZ_4K;
>  		break;
>  	case XE_ENGINE_CLASS_COMPUTE:
> -		if (GRAPHICS_VER(xe) >= 20)
> +		if (GRAPHICS_VERx100(xe) >= 3510)
> +			size += 5 * SZ_4K;
> +		else if (GRAPHICS_VER(xe) >= 20)
>  			size += 2 * SZ_4K;
>  		else
>  			size += 13 * SZ_4K;
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation

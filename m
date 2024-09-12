Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF76397621A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 09:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4542310E0E7;
	Thu, 12 Sep 2024 07:05:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7LcDIvU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C4F010E0E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 07:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726124723; x=1757660723;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YoR3rhDtTtZRcfHp65RZ/E05NtFG6YnXzeJbufEEuyc=;
 b=j7LcDIvUwGdKXzmNTLuw/+7bM1iDJvx/e+jr2Rh43tfkYJlQMzzaZAdv
 vijGwpHo07ouEPlLHwYRdXGjGQMMSwB43yzvHPgQMBgMiwVM2c2qduT5L
 LYdmC9yww//BQfbZ1d/Xn2tLvcipIET6dZ7JKRZPfjCilNmyVY/bKEKfB
 s6Qd1aXmHI2+cK0OfG/7o77x1I+eB/XiUzcjVyXXS+QsZTwLstO5Z/Md2
 zZrzWb7FywO0WRxW+fz0cDyXHwvJZml2nKXFt9Cy70vLiufGxb9tVgT3u
 oR6pu5VFRt6P21okP9DZVaiqDDWsAL+nIvEUMli3R/glq8KB6a/+WQd6f A==;
X-CSE-ConnectionGUID: fPTkAnPJTNKtHoOhWOOEww==
X-CSE-MsgGUID: /baqm9FGRIyQqcSnUDOKRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42475332"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="42475332"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 00:05:19 -0700
X-CSE-ConnectionGUID: nXYlsGm5TJ6GqJJVBPYZ+Q==
X-CSE-MsgGUID: u5rqwO/rSw6OpD6+VKZsCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="98321264"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 00:05:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 00:05:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 00:05:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 00:05:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pL62ZNa/eJA6N2l3dt0I6FOUoqDsBhfmQDJ/9bdFsi9i4lftayJTseYU8LigbNrGXYMVy68w9OdAZomHCsg6gbQt/sNncN+hD5E3F74yz7Qy72iVI/n6LR1nswBJC3F0nF2ZoKdMTlRCNZPE/aonusIKKZNmTL5zDiZHheD0gsjXfQZ6TAkaQ8rgfRpykL+yxX8BJsvFR4TxMKzrkDKFNih39qNcU0+muO8a0VJLgFSpqpW77TLSn5SSYLgeIkGuVaSrnjuBxbog2WwF/m/0qSuUUJWG/1dRJmvBHfE0s1doVCkmeGIXfhHx0x9sM40NcKaOngCG3f0bJLCdhKzX9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YoR3rhDtTtZRcfHp65RZ/E05NtFG6YnXzeJbufEEuyc=;
 b=BLj4Ox7qGon1fWN42z8PYpNWu9HI/JTiE0TxC0VSATQZIBpMuQQOU+HHC9TkyZVzsJiBhNBxzgvsneWM6T41Jytokan0naVxBCZjbV8nbSP50X3VYQP5B3o5v8myPH50EPLWz3jzR2hNhR3vH6RRM2ibXDQADrxnR8r8S6Qeus4MjJSUTNh8fDgcOnRdAkg7XXOkVzW41Le3C2oJ9NcEcZ6i1SYPEsIS8MUYskYAm6Pyegix4rNYP3+YPIt+x72vu6po9PJzTidpog032DPHUB4YXiP+Ulvs0rZjspZHzixdiVFLYqWBWNFLziBSLEvU6BfxP2cIuwer72QXIK7gEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7191.namprd11.prod.outlook.com (2603:10b6:8:139::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7962.18; Thu, 12 Sep 2024 07:05:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.7918.024; Thu, 12 Sep 2024
 07:05:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Prevent DC6 while vblank is enabled for
 Panel Replay
Thread-Topic: [PATCH] drm/i915/display: Prevent DC6 while vblank is enabled
 for Panel Replay
Thread-Index: AQHbBEfbYU/hO4B0iUGBPYuBSXA2irJSjJgAgAAD7ACAABNKAIABF9oA
Date: Thu, 12 Sep 2024 07:05:14 +0000
Message-ID: <add0beda290e1324c1c40687ef18ed7f77927934.camel@intel.com>
References: <20240911124015.1420976-1-jouni.hogander@intel.com>
 <ZuGUbvpnba19oGRo@intel.com>
 <8c3320cd5be33a6b9d92231758ae0e0a712d9eb9.camel@intel.com>
 <ZuGn5l9oLy_gk_Il@intel.com>
In-Reply-To: <ZuGn5l9oLy_gk_Il@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7191:EE_
x-ms-office365-filtering-correlation-id: 23d178e9-10ab-4f86-741c-08dcd2f9401c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cDJoNkYyd25Fd1BDY2Z6aHdKOUZldytzR0xVUFEvVkhBVTBXVHNVS0cwL3NR?=
 =?utf-8?B?MXBBRU5rNWJIWUE1NERUcGVUb2Rqb0YzYXIzU2NiZnc2MENUK2lYOWQ1ZWQ1?=
 =?utf-8?B?MTV5K3lmZkNiMWRvNDlEcE43YWhjUHB6aFlLNG0zaXhoQmVGaVk4VVFiZko4?=
 =?utf-8?B?WThNdHhGNDU1QjI1UFlOQmh3dVJXQXpWLzcxdERSWElrdmhCb1BzendYMmR0?=
 =?utf-8?B?Q2l3cGZibXdiZXBKdWFmcVlSYzZ2c0NDd2RsRUt5cmtpd3A5akhFb0ZhZm50?=
 =?utf-8?B?T24ydnFEV0lVS1VYUE1zeStEUHBUdXlPczFPUEZiNDJhYmxMSHRHWDE2eFlt?=
 =?utf-8?B?MUZxeHc2MVlhOUZ6Sm02cjkyRjRwNlVFNGtVaTM5SWtsdkFNT1RmYnFXVnh3?=
 =?utf-8?B?eGpqOVlnL002RitLQXI5bnBmckFYbzAvM09SUW1ZU1doVVVJUm81T21wYk1O?=
 =?utf-8?B?Z3lGd3FyKzFuMzIvYTR2dXdiZ2ZhTzhhbDhPand5MkNvQkkvQWJocXRJa1N2?=
 =?utf-8?B?TklUL3JrTTZpeGFTQmgxZHpHRWl0UjdaMnZJTlkwN1F0VUxSSDNIUFVHY1cw?=
 =?utf-8?B?VmFNbU0zWmd5cjZuWXZ3dDdTZFE2UjBIRWZ4bHlTOW5wR29PdGZ3MGRMdXNs?=
 =?utf-8?B?ZXgvdUxGbWZkRGhWaUVTZkRuUS9oVVRNa2pETHpadWdqV20yWitEL1AwODEv?=
 =?utf-8?B?MWRoSnRCYXJoOFpyZnVlSnhVSnlQeGNlcG94UkI4eDlkS1JrWjFQVVpGY20w?=
 =?utf-8?B?eURwUlIrSTU0ZVFtTmM5eXl0Q3BlTmhhcDRrODJtQkE2bXJIMVNjelBHYnRB?=
 =?utf-8?B?cW1heWdEMmQrZnZzdmNGbTNKZTNNblNxRVRDTGZ5MVc5eFV5QWM3Rm54R0Y0?=
 =?utf-8?B?Vzg1dEpwcVFncnhkMnRxZG1yem9Ea0tTUjBJSXVsQXhMUkQzVHhPVmRoN2pU?=
 =?utf-8?B?SkI4ZGVWRHdOZEhPcjVLZm1pZWxubGFQd0pVOVYrVzliZ3NJd3lOUGtzZzNI?=
 =?utf-8?B?OWtvUElESVczdEszN0pORVNpTjlGY0N2UktRb003ZG5HYXoyNHVPS0dDVDc2?=
 =?utf-8?B?SlJOMUtNTkhSRFJnWEtXWGgyQ3loVVNFQjZORUU5UFpuQ3ZPZ2JwNk01eGM4?=
 =?utf-8?B?Q1hHaXUrbFpmSkdYUTRFbmRZSDBQQUlneGNDeHBMbXFFMGVKK2lrWGZsRUJO?=
 =?utf-8?B?MmpzL1RELzR4YVZKS1lCekJVZFJnWHA4WjA0RzcvRzVyRDZtTUNhdGJXdldO?=
 =?utf-8?B?alNUa1RLb0ViZFVWc2JZemhMZGFwS0JXU2Rhb1d0VW5pMEt0Ti9FaTZPS1Y3?=
 =?utf-8?B?YlRhellnVFFTQndTMVA0ekZFK3VpdzFvWU50a00yK2V4ekJJRXlBazdGYVBx?=
 =?utf-8?B?a0dnL2xqbVlpYWJIaXFEUzZxaFJ0enpzclRwWFRhRGsvUW9UYTNxeklKRHBH?=
 =?utf-8?B?UXZvdjQrWnB6dkFWRGpPZWhQUnB6TFJJZlRYbDBLL3JqUlN1U1M2bm5OQ1N3?=
 =?utf-8?B?aFJXRkRNK1NnKzBvS1ZGS3hlY3ZMUEJxZ2MvcGN5U0x0QlcwSWdrZXdvNEox?=
 =?utf-8?B?NDhnWW1BcnVKQUV3RG42Y1hML3h0aEpLSitmd015cWpMNlZPNDFDRHczOHRo?=
 =?utf-8?B?WWR0NDIwaE9WUEtLNU9McFI3QTdOWGMzYkJOS1VQV3JGeE1OazhINHdpT29l?=
 =?utf-8?B?ZjRZZFViVGEyZTBuOUNwZm9nNTNBdFhKNjBjaVpsOW85NS9KVGJFS1NuTFpx?=
 =?utf-8?B?ODY1UDBEUlVDQlNvVXNiU250TkVnQU4wK3FBTGZoMWxISHQ4WU5BdnMzb2VP?=
 =?utf-8?B?RXFCMlhwdHBub1VTQitFUXpXMUw5ZjNUbnF1QnUzWVVYbHo1eFc2TjFoaWNt?=
 =?utf-8?B?Y2ZMeEsyS2NHTmpucWl0V0NyaFR1UElmdWNaNGd3TEJqeWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFJSRTVCUTExUmovUHBhTGR6Y3lWcFdtMVpqeFV1Y0FQdEhPMUxNK1ZaOU5N?=
 =?utf-8?B?eE1aYThpZm9ValRKdHl2T0czSzg4VHJlMk1KZzhualgySmlOQ2FndkZod1Rh?=
 =?utf-8?B?OTZ2NWk3VjNUMk55NkxaQlpSQ2xkTFN1VWxxeENQbm9Bd0tyN0xPSDdTQ2dn?=
 =?utf-8?B?UHBxeE9vaFkvY2JaRXg1NFo5T2hmT3luSVN1WlJEQ1FyMkp6NDdZT2VtWnc0?=
 =?utf-8?B?b3c1eG9qR2FpUjJ2aTBvSXFHQnVDS1NlekRCa21Cc2s0YlhHeERDV3l5aDdV?=
 =?utf-8?B?QXRQVnppbytsNkNWV2ZhalM4VUgxZ0NlbGZOQzdYLzJRWEhtSFNleTZxMm9Z?=
 =?utf-8?B?dlRKM3orUVNLMVo3dDNEZ3g1UTcvTEpkQVVHN01kSDVjelNYSUVxWkF0QklP?=
 =?utf-8?B?WG9xMlgzUlNwaituSUpMbFlMZHAvNWhUdXZHRUJtSXZKVTB3U3lZV291WWtQ?=
 =?utf-8?B?cUxxZFhZYStSQU9CZmcwZ1VhRmhYcU0xOHJVaHkrM2hCUStuT3QrNzJlaXdk?=
 =?utf-8?B?ZlNLeDB5bVhLQkliWGUxbzFlSHJIa2VrRlNPNk5QV3FvY2I5MVNnellPUHhN?=
 =?utf-8?B?dDZMT1BzaHVKNG5QbFgwUUljNDFCbjRiNStheW5ObGtsZ1VpSGQvUFlWRlpx?=
 =?utf-8?B?b3BEQkp2YWx1djc3cEpKc05MRFBLVWNWMml5bDIrUWtUa0dUMm1sMlFab3FM?=
 =?utf-8?B?MTgxVFI4MklXbDZKWnJWQ2ZWYm9WcFgrRkZRTzU1aW1xTnM3S01hSEdNdDI2?=
 =?utf-8?B?YnVrV2JwUjQ4WXFrUkl2VmJyN0U2TW1QN3pVUFNzOStGMmk0UnVvK0llZWt2?=
 =?utf-8?B?T1RUcG5jSGhMQnpQNXo2c2FHVEVhYWVybFlJc3VMZUhUamM1WGVRMHh6eFpl?=
 =?utf-8?B?ajZmcTZhTHlsUkdFTys5enB0OHpRVU1YczMxZDhZU3pOZTNZNXlnaDRvM3VZ?=
 =?utf-8?B?Vk83WlEwQWdsZVh6UmFJdVlQdms5cXlNc3F0NnBmNmNqUkxFWFY1alV0cEta?=
 =?utf-8?B?Sjl2ejMzcnQreVMwZFVaNnl2SXV1UFFOY3lYRE5VL1dneGx3SkNvYjFPTU5t?=
 =?utf-8?B?MzFCR2hkMStDdzlaSnJoMjU5UmV3b3Fxa0IwSFVmMjdha3doL2hUZDU1SGs4?=
 =?utf-8?B?RkZsQ09KKy9KanpQODNtb2Jzc2d4bjlCb3g1c2UrSU9jelJLV3R4VnhNakg3?=
 =?utf-8?B?aVlIRkVaeFNkSFlXWGw2emhLRkRjcU9FWWVFRThGNFJnVnQxYmdJTmViMEFx?=
 =?utf-8?B?YnB3ejF5Y0V2WVF2REY3RXBrOTl1aEsvV1JIa093VmZDQS9vcUE3UTlEK3lB?=
 =?utf-8?B?QWxnMTFROU5MeDl5MzRxb3NpTk9zU2ZyR0dwcEEzTit0b1hjZmNMMU96cWRS?=
 =?utf-8?B?RkxjVjIrWGxSSms2bkxKanBKc21QaU1LQ1dNS3JxSzVicjg4WnE3d2haUFlu?=
 =?utf-8?B?RFozVEZOdHZZVXV6eEtvaWszUS9lZ1hqTC9EcGN1K3VHV2RFL1RuMzh5dmRk?=
 =?utf-8?B?QkY3bVhBeXdJZzBTTWRhWkRnVW1EZ1hJaUM2RDk0MlpDZ1krYTRnOEJqWFVx?=
 =?utf-8?B?N1hLYVEwaDZyb200TGJ6Z1dZaXZRd0dFc0NiV1U0TUZZU21jOHh6cmsrWTVn?=
 =?utf-8?B?ZjVndFFwek9CanZCYlJLQkdQU1BydzZrNXJ2SzhzSzFwcTA1amR5WjYwbDhn?=
 =?utf-8?B?S292RHZ4RlZoTzBKT3JzTWtIMHQwaHJ2YWFQK1JyVndPcGFPeHM5SEplUFZC?=
 =?utf-8?B?QTZFeUFpVGJsWktwb3FJcjc4Wm1Hb0NsT0VDdzNTbERnREE1VnQ5elNhYiti?=
 =?utf-8?B?MzVpMFJsT2VwZ3JEQUwyY2NmbUNoYkxLdStyNmlQT0Y3K25oeThqSlJBaGdu?=
 =?utf-8?B?ZGdIaTQrMk5aMXJESDdFTkpZT2JQL21QK3JLelMyNjFzTUM4Tm5kbWlZSm5N?=
 =?utf-8?B?TDhJdWNmYWgzclh3bFI0U2RDbUlWUEs3Y1MwcTI4K1FQWGZvWXlxR1JiYXhh?=
 =?utf-8?B?ZHE3RFRkRmlmcW9DTWVqTmE4VnFjOWUyWEtBODdZZGc2M2dOM3ZnRHNyMzVT?=
 =?utf-8?B?VGRuYXZBdzFSY0ZwWjN2S1ZtSngxWjdNMHVJd1A3MlJaZ3lBWVFySWduOUhU?=
 =?utf-8?B?MDdoTlkwNlArRUd6YXVrbGhhSzh6SmlQQWh0ZkVka292eit3QmhSc21Hckg0?=
 =?utf-8?B?UFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <568C8BBD2A6C2D4AA6D7C2F6A896CD74@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23d178e9-10ab-4f86-741c-08dcd2f9401c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 07:05:14.3979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3emgNkdPfCGR61jf+wuAhQf979Wrre+JkRH/vHqUsW3ghwbFIVLj3CjC0n2fNDHm6oMmK16cCN8xBsB70fydMLHE0ayLUVeamEe7hSklUwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7191
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

T24gV2VkLCAyMDI0LTA5LTExIGF0IDE3OjIzICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgU2VwIDExLCAyMDI0IGF0IDAxOjE0OjMzUE0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBXZWQsIDIwMjQtMDktMTEgYXQgMTY6MDAgKzAzMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFdlZCwgU2VwIDExLCAyMDI0IGF0IDAzOjQwOjE1
UE0gKzAzMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gV2UgbmVlZCB0byBibG9j
ayBEQzYgZW50cnkgaW4gY2FzZSBvZiBQYW5lbCBSZXBsYXkgYXMgZW5hYmxpbmcNCj4gPiA+ID4g
VkJJDQo+ID4gPiA+IGRvZXNuJ3QNCj4gPiA+ID4gcHJldmVudCBEQzYgaW4gY2FzZSBvZiBQYW5l
bCBSZXBsYXkuDQo+ID4gPiANCj4gPiA+IFRoaXMgZG9lc24ndCBtYWtlIHNlbnNlIHRvIG1lLiBJ
ICp0aGluayogd2UgYXJlIGN1cnJlbnRseQ0KPiA+ID4gc3VwcG9zZWQgdG8gYWx3YXlzIG9wZXJh
dGUgaW4gdGhlICJtYWluIGxpbmsgb24iIG1vZGUgZm9yIHBhbmVsDQo+ID4gPiByZXBsYXkuDQo+
ID4gDQo+ID4gVGhpcyBpcyBub3QgdHJ1ZS4gQ2hlY2sgYnNwZWMgNjg5MjA6DQo+ID4gDQo+ID4g
IldoZW4gcGVyZm9ybWluZyBQUiBvbiBhbiBlRFAgcG9ydCB0aGUgU291cmNlIHdpbGwgYWxsb3cg
YWR2YW5jZWQNCj4gPiBsaW5rDQo+ID4gcG93ZXIgbWFuYWdlbWVudCAoQUxQTSkgdG8gdHVybiB0
aGUgTWFpbiBMaW5rIE9GRiB3aGVuIG5vdCBzZW5kaW5nDQo+ID4gYW4NCj4gPiBTRFAgb3IgdXBk
YXRlIHJlZ2lvbi4iDQo+IA0KPiBSaWdodCwgaXQgc2VlbXMgdG8gYmUgYSB0aGluZyBmb3IgZURQ
IG9ubHkuDQo+IA0KPiA+IA0KPiA+IEFuZCBpZiB5b3UgY2hlY2sgYmxvY2tfZGM2X25lZWRlZCBp
biBteSBwYXRjaCB0aGF0IGlzIGNoZWNraW5nIGVEUC4NCj4gPiANCj4gPiBJIHdhcyBvcmlnaW5h
bGx5IHBsYW5uaW5nIHRvIGhhbmRsZSB0aGlzIGJ5IHByZXZlbnRpbmcgUFIgZW50cnkNCj4gPiB3
aGVuDQo+ID4gVkJMQU5LIGlzIGVuYWJsZWQsIGJ1dCB0aGF0IHdvdWxkIGJlIG1vcmUgZXhwZW5z
aXZlIGZyb20gcG93ZXINCj4gPiBtYW5hZ2VtZW50cyBwb2ludCBvZiB2aWV3IC0+IGRlY2lkZWQg
dG8gZ28gd2l0aCBibG9ja2luZyBEQzYuDQo+IA0KPiBOb25lIG9mIHRoaXMgZXhwbGFpbnMgaG93
IERDNiB2cy4gREM1IGlzIHNvbWVob3cgZGlmZmVyZW50Lg0KPiBEQzUgc2hvdWxkIGFscmVhZHkg
dHVybiBvZiBhbGwgdGhlIGNsb2Nrcy9ldGMgc28gbm90aGluZyByZWFsDQo+IGNhbiBhY3R1YWxs
eSBoYXBwZW4gYW55bW9yZS4gVGhlIG9ubHkgdGhpbmcgREM2IGFkZHMgb24gdG9wDQo+IG9mIERD
NSBpcyB0dXJuaW5nIG9mZiBzb21lIGV4dHJhIHBvd2VyIHdlbGxzLg0KDQpPaywgYmFzZWQgb24g
eW91ciBkZXNjcmlwdGlvbiBJIHNob3VsZCB1c2UgRENfU1RBVEVfRElTQUJMRS4NCg0KPiANCj4g
SG1tLiBTbyBnZXRfYWxsb3dlZF9kY19tYXNrKCkgc2VlbXMgdG8gYmUgdGVsbGluZyBtZSB0aGF0
IG5ldw0KPiBwbGF0Zm9ybXMgb25seSBoYXZlIERDNiBidXQgbm8gREM1LiBJcyB0aGF0IGNvcnJl
Y3Qgb3Igbm90Pw0KPiBObyBpZGVhLiBCdXQgdGhhdCBtZWFucyB3ZSBhcmUgaW4gZmFjdCBkaXNh
YmxpbmcgYWxsIERDIHN0YXRlcw0KPiBhbmQgdGhhdCBhdCBsZWFzdCBleHBsYWlucyBob3cgc29t
ZXRoaW5nIG1pZ2h0IGhhcHBlbiBkdWUgdG8NCj4gdGhpcyBwYXRjaC4NCg0KUHJvYmFibHkgdGhp
cyBpcyB3aGF0IGhhcHBlbnMuIEkgd2lsbCB1c2UgRENfU1RBVEVfRElTQUJMRSBpbnN0ZWFkLg0K
DQo+IA0KPiBUaGUgb25lIHRoaW5nIHRoYXQgc3RpbGwgZG9lc24ndCBxdWl0ZSBtYWtlIHNlbnNl
IGlzIHRoYXQgSSB3b3VsZA0KPiBhc3N1bWUgdGhhdCB0aGUgbWFpbiBsaW5rIHdvdWxkIGdldCB0
dXJuZWQgb2ZmIHJlZ2FyZGxlc3Mgb2YgREM2DQo+IG9yIG5vdCwgd2hpY2ggSSB3b3VsZCB0aGlu
ayBjYXVzZXMgdGhlIHRpbWluZyBnZW5lcmF0b3IgdG8gc3RvcA0KPiBhbnl3YXkgYW5kIHNob3Vs
ZCBzdGlsbCBnaXZlIHVzIG5vIHZibGFua3MuLi4NCg0KQ29tbWVudCBmcm9tIEhXIHRlYW0gd2Fz
Og0KDQoiVW5saWtlIFBTUjEvUFNSMiwgdGhlIFRyYW5zY29kZXLigJlzIHRpbWluZyBnZW5lcmF0
b3IgbmV2ZXIgc3RvcHMgd2hlbg0KUFIgaXMgQWN0aXZlIChhc3N1bWluZyBEQzYgaXMgZGlzYWJs
ZWQpLCBzbyB0aGUgVHJhbnNjb2RlciB3aWxsIGFsd2F5cw0Kc2VuZCBWLiBCbGFuayBldmVudHMg
dG8gdGhlIGludGVycnVwdCBzdHJ1Y3R1cmUuIg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoN
Cg0KPiANCg0K

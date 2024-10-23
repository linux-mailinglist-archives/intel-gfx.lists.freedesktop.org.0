Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B17AF9AD782
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 00:24:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0EF510E254;
	Wed, 23 Oct 2024 22:24:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KshV38WZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 856DF10E254;
 Wed, 23 Oct 2024 22:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729722297; x=1761258297;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=miriV24zrihuOSaIt4jS0eq6mf9NpZa7+5JxQBOVMNU=;
 b=KshV38WZKVyY9dy2aeVFOJxFB0Of6UaQMKEUpj2fxCjyKMFusDom/0pY
 aSGth6d4AYCrdHyJkdRuZGSxOqO7X/H4dd8ftOC4w01uQaRC0RrjWwvL/
 6DHlFw2zbfzLrsUCWgAthYP2JZXBwUjvxdXSdkI+Z69Q+KD70giFmNThq
 lEvI72JvstKWtDlxJY2vy1FbqXvMn6oMPoNHNLa5M8/7P+09ARwWzDuWO
 dMRLuY6ibtWER1jBSVrhk1viSGX7WadDNvACX4pycMthttvL6m5AA3YWo
 4eD5hPhlHzYisMG3uZbk8yk3PXrQYBhB+ah2sSpxZJ9N9B4vCpsqg+Bqs A==;
X-CSE-ConnectionGUID: bI1dFknIRG6yLXd3O9LbNw==
X-CSE-MsgGUID: LlNIvXieQTaBXYU8NTybAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="39946920"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="39946920"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 15:24:56 -0700
X-CSE-ConnectionGUID: OQfDQhgrQqGyp+/TJtwYhg==
X-CSE-MsgGUID: 9+Oer8g8RbWPQXaghkxwlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="117873318"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 15:24:56 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 15:24:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 15:24:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 15:24:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ugVqp/r1JvlqZFiEMLijZrvzjma1UA3KlmpGzD0Kklnh2S4d15MxtcXd/lUR3OgQkfaj1NpQF2LNpB6Y3knfy0WTw0CTODpXyDqHs5cxDkIJP5xGP175yXySwgKVj5pd5flDDpBp6FpyycItHK9mHG+FivdGLoGm77rx86dHyyqIudblMVulCEpnECfybSmHU9lzInzYQVuKRapb6Pi/OrMrUoT4GRhZwDBo8NbTgKP5Wy8IarbSzhCgBZZGUKSmK0KlNR+wgXFtd1Woro1xHBdlTbvNCDrAz3oiOysZOag2z4OurXNGQkzkBjhkXP4p1xB+NNV27uFPG40CCjvnIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZGIMz7AsojWxZP+pLRkOAeMewfCL09x1fcimKeODb2o=;
 b=V94L+LdF1LSxdB0PuJ1/x9We1qpTPJ5QHNgbPNptUBxLUDLIa3bpb58iQBh9dZb/0Z5d/eqOMkdN7JREESy0IlnNOv46ieNmsCUAu3mUSw9m767ZilmKfmSSOxt/QblouZ7ka3eiqWfWRlvGWUoFDziqkF2Jfp3nBKgtnbJLk4mzLDEGIm3n62b3YzBDmhPy1DyOsf3CBd6xg47CQt0H1zy6gLMIDhXZT81zWTs+ZiLAgDFls3VCgG55npjBOrkgNtMqw99ie6fFFSuMwoHK0TWzu85jFJX9+5p/cLghILWgqBS7NMZzofm01ra9AMJtk+8/Dm/tBzxeEXD2W/56vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6420.namprd11.prod.outlook.com (2603:10b6:208:3a8::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.26; Wed, 23 Oct
 2024 22:24:53 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 22:24:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241023214701.963830-11-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-11-clinton.a.taylor@intel.com>
Subject: Re: [PATCH v2 10/12] drm/i915/display/xe3: disable x-tiled
 framebuffers
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 23 Oct 2024 19:24:48 -0300
Message-ID: <172972228880.4179.11499113561480102641@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0269.namprd04.prod.outlook.com
 (2603:10b6:303:88::34) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6420:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c02c370-e714-42b1-a86a-08dcf3b1842f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TE1uVHhCSUlyTk9PVFlONVRpRmFTOTEyM1pqbG1rMEJubzE0T0E3a0MxZnlr?=
 =?utf-8?B?TG5lbWw2bSt4anlKT1JpUTlZR3RSeHkxc2w3cFRDQTFWZVpWMHMwRjBadFlO?=
 =?utf-8?B?NC9TMEUrUTRxRFpxb3VrWUNTM1VvL1BUY3YrbFd3Ym5rSXZac0FQZVFpWjVa?=
 =?utf-8?B?UnBnYUVTVE1KWThES2N6c0o0bHNTaUxGSU9ZNWFBMGZCa3RyeGZyaDlWUTcr?=
 =?utf-8?B?N1FHbE5BelZRMmowM3dZdGRxc2JBMGQ3ZlNiaW5kVC9IeFdQdjBuWldGejht?=
 =?utf-8?B?b2Y0Z04wd0hmNjFzU243dGJsQnltaWRsbi9oODJVOGFFOFJkZFJBSUNIdUY1?=
 =?utf-8?B?VFRJeHdMN2hJUWhlSzVwYUJkSUZMVitxZlN6Z0tteXByNDRCdncrOVY0Szl0?=
 =?utf-8?B?anpnbmV2MlNVR0FpSjE0NTYyalpyay92b3ROQktPemhLcUEzcUNwZmVjVGsy?=
 =?utf-8?B?V0VHZk5iV3dkNjM0QXhjcDVtOHpWWVZRczJ0ak54VnFhKytWdmJQMmNSaUdP?=
 =?utf-8?B?OCtCWDVJenpubXYyaThTVDBNWHZiVnV5YWZhMWsyMHI4NUY2Mmp5aFlhenU4?=
 =?utf-8?B?SFkrTU1Db0tsYThSVnplR1VTdkNzTmpSeGdlcTNhckQyblIyNTI3Ump1STZ5?=
 =?utf-8?B?dXg1emdqR21TOEdhMjRIZnQzbCtXY2xoeVR6WlIydE9aY2dKOTJSZERYZ3VN?=
 =?utf-8?B?TDFNT0hMbkE1KzJRVjdqcm1iTGNjQzhmQzVoSkNSc2VVeVB0VkdoU2F6aWhl?=
 =?utf-8?B?Tlg3SVI2WWcvc082RW5WMXdUTjlPRHpkSUJ2TjlnU2xxdUx0QU5EUkE5Y00y?=
 =?utf-8?B?eW5iU3JYclJQRlpyUEJhOVczSVJGSXZjb29ZQ29xVFBmR1F3NTZIVnNiVGRL?=
 =?utf-8?B?ZHY0bG12eTIveWM5Qm9WbUNaQVNJN1hSdHRlWGhrRlZDUU9yL2NYdzA5YjdZ?=
 =?utf-8?B?c1Y2L3FvUnY2eGg0cFhERTFwTDU1MTZYMFJDSldCN3hWNUROSSs3U3RHdTdN?=
 =?utf-8?B?dEZGUVRVRUZCRXZFVFhPQTBnWkpJWUtSWm90d3NIeHQwVlorSWZhWmtrMllY?=
 =?utf-8?B?ZHovUTJ6MStkcFp0a0Z0cUdxU1RmSXlEWTRGN252Z3pLSy96eGtxekRMVk84?=
 =?utf-8?B?SERucG1VeEFNNmovOEt2d2VhUW10Q2l6NURuVTBlNjRiUjRJWnVSbnBpaXlm?=
 =?utf-8?B?QU04dUZ6U09SSUgvTHNzOUlGcE50dTA5dVhBWjF5OU9KWnVuNTloVXdHMVda?=
 =?utf-8?B?ak00RDQxcHBuSHlvUGRCVzlmNWtGQjdDVVYxOFYwK0YyR1lXZWFJUE8wcGp5?=
 =?utf-8?B?MWgwcDB3QytMcXlsZVpicXlTbHZLV3d2YTdMYk5INjBPTzU0QWZlWUNQelAx?=
 =?utf-8?B?U0ExRGpjWkNqR0RqTDVRQUVLbVlSemNQVGQyZWduVFcxM3RHaVd1RVVCK0NV?=
 =?utf-8?B?NU5ETVliRkdrNEVtQjFkemNkc3ZlcXJzcnhNb0gvYzBkK3BrUTdtK0tjQ2h6?=
 =?utf-8?B?WUpZc3FteXd5YnlWUWZkc0tXK2Zud3Rob3JabjVBUFVYNnMrSzk2d3BDWkU5?=
 =?utf-8?B?K2lyRzNUUnRXdkE3bXRCOVRmaVc0bmxCVURPckZiT0tGc1V0TEdOb2ZjUWtx?=
 =?utf-8?B?dWdQd29hMUtKSGVQZGlOS1A5cmZXNS81WVg3TXBYdG93YmtqMTJkYUVsOElw?=
 =?utf-8?B?VmRwb0JNWHBoMWpnQ0QrdzNnT1p3d0t1bEpRT3FRV2pzZXQ0TEppTFZDeXFS?=
 =?utf-8?Q?+uCogtMKUP4/uKBuVwsS1x/G4FbCiqzmVkps2Xm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VU9iT0lXbm5JWUlxM2UyZExKVGRpY1NJRGhNTGxSblc3ZU11b0VRaDBDaXA5?=
 =?utf-8?B?NkkybjErYWVnVWlpdFgramVBQmM1Z0hVdEloZFpvaml0ZHdxZ0lJWjE0TFVI?=
 =?utf-8?B?SjViYm1VNVE3TFFGbHY3bHdXQzZZN010U2NSN3pKMlhOU3NCUGtKaFBQM3Bt?=
 =?utf-8?B?NTIvYXJjY0NjZER6MkY2OS9TdEovc01TWlRFcGNWTkhCRjVFY2lsVDRJKzU2?=
 =?utf-8?B?UmhYZEdPZ1k1OUI4TjMvN2hBei95S09YdVdmQ0RFNW5Wb08wU05SR3p2aWJ0?=
 =?utf-8?B?T3ZySjlKZkYzbXBSMkpDcW5taFVwNHBma2JkdHBqdndidU5Jc1hCNldiMFpD?=
 =?utf-8?B?TUp3ZDd1RHVZTTdVMDRTZzNUckdvT3JQV1puUzRZV3pURDI5ejBEK0MyVjFr?=
 =?utf-8?B?R3Q5SkRRU1p6L2ViTzNvbDdvVHZENitGWWdBK0txMWNKQWlWYU1mWkZDYWQw?=
 =?utf-8?B?eEhERzdKY1NDRVBORVRPYzRBckhrZzQweXNzNWtHZDRrMkVvS05sMU90Z1lu?=
 =?utf-8?B?MjUzcFQ5eHF6aG96dys4YXhFb0tEUmovQ1RLNTArRWcyNnpUaTVqdnhKVkFI?=
 =?utf-8?B?YVB6TEVwYkY1aWhEaFJaQlJiY0NVdDA1NWg3UTU1YkF4UWxBZ3l2SldtSENR?=
 =?utf-8?B?WFZ2Z250RFUzbXpFUy9nL3RGODhsMkZSR3VoTlh1OWJZMnlNaUM1Y2JxZ1ky?=
 =?utf-8?B?K1YrVlIyYmYzdDJ6eG5CRFdGcTlQbSszZytGR1ZVb0o3RjJBenJTaFBXdXBV?=
 =?utf-8?B?NDhLb0tzZSt4SmY0QzVIQ2tpRDloOXMzbml5VTkrbDArVFdLS2lGNmVueC9r?=
 =?utf-8?B?djQ3bCtLZkFtRzJzLytsWWxwaWJuNjRtUlV6ZFJXRFNnTnJ3K2FZTDFoTncy?=
 =?utf-8?B?YTFubFpRMFFUUzhLcVZWK0NhQ0dqTmxrSHVFbmxuNnI3Z1Bsc3M0NDRMVWNa?=
 =?utf-8?B?dzBrYllrWDVhMGxpQ3p1ZlpRSytaK0NOSjFBNUtKM2dFem9PNGlIOU8vOFFx?=
 =?utf-8?B?bmVhWCtvZW5PSlFhT2kxeTNqNGtqQnMwYktRUk5ZLzJUMlpTYnVQazNrZlVN?=
 =?utf-8?B?QUR3TUtHQk1wN1hHRnpXekc2cndBaTZMTUtQVThHSTRWRy9jbDcyYTZJbkRR?=
 =?utf-8?B?aC92WnJDeUt4Z29ic3NQWnJrU0JnWDIzUm5zYUp6UlRvaXdYbkhoRThnOUNx?=
 =?utf-8?B?T0lNVDQvRXoxUkltVit2aFhObEJUVWw4UlFjNkorMlpnM2YxNHBzQXpUbmk5?=
 =?utf-8?B?SktFUTRkMXRISXlmMUovT0FtVlFpU09JMmZ4bWxqUlBKbng1R1VGdmt1SWk0?=
 =?utf-8?B?MUttNjFpeEJya01BWVp4bG5FOWx3bks0cEYvbHU1TFFnSCtMcFNkcEd5OUMx?=
 =?utf-8?B?YWtnZC9Ka2JETEdJcU5aWURMdlU3b1dYeDlLMUEvdWgvVVZmQW9uektmNHY4?=
 =?utf-8?B?YW5SM1lwV2dtcTlkK1pFa1BMeGh3dXIyV1dzMG1GSVBOOEd1aTdXaGx2a1Nx?=
 =?utf-8?B?S3ZhemQvZ3diVDZqRVZrdjkvYXE0NzhaSUMwZFFpaDRLUk00andIUUVlQTdy?=
 =?utf-8?B?ZFhON3lKNUVoQUQyVHBuS2Z6TnZQNytiVkpEQjJHWUhVY1J2TWR0bHJMa3NU?=
 =?utf-8?B?bTcxdTV3UW9jdE95ZnlRVk9jVEl2UEdxbGVtcjBwOXp6cmg2aEl2cUgyUmxE?=
 =?utf-8?B?Tzk5cW5QMEIxWHlLUnZqNk41eWJucXVQcm9LMnRJb3ArVnVmRVJZZVg0ZUds?=
 =?utf-8?B?ZzkwUHRjRjZFNkVscFN3NE1jcnZiRTVqNWxRcU1wRlBma0E1TytUVUNqT1dX?=
 =?utf-8?B?Ukt1alZuZkN1SjhwZ1VBT1hFbHJrZkl4djFaME1hLyt6dWFYVDFub2hmNnM3?=
 =?utf-8?B?UEZhTC9meUlFdGo0cXF0cEZCMGFJVEp4V21jZGlmZUdlaXEzbzdqMGhIeUlN?=
 =?utf-8?B?Z0NEOE8vNWRhYUFhMEdxd2VoaUxyQjVhNjEzem50VVhud2k4VUwwNjZ3Umo5?=
 =?utf-8?B?TjVaRmFTZS9rd2xkSk9wRlNYemlHU0FvZEhCWVRVcFZRdUhYTGxMTUJ1cEJ3?=
 =?utf-8?B?Y2FSbnJFd2Uwck1xQ3drLzZGMUFySjNLcU5yVkhPeWE5aFMxUTBpUzdBS2FU?=
 =?utf-8?B?UXc3SlJxMmo0WDRXYm1DQnZLTFk3QzVPNi9xckZyd3Z6akJBdWNnbWIwQUtr?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c02c370-e714-42b1-a86a-08dcf3b1842f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 22:24:53.3656 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I0VdcNegU5QQH+8d514q9ZHwqYiOxRt120eLDKE5Q2eVcF5miIfJyZrVdbxB6UWOCPxzHL5AHNh6zI/ODFlRDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6420
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

Quoting Clint Taylor (2024-10-23 18:46:59-03:00)
>From: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
>
>Xe3 has no more support for x-tile on display.
>
>v2: Include up to display 29 for X-tiled support. (Gustavo)

We usually do not define the changelog via git trailers, so I think a
blank line is necessary here. With that,

    Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>Signed-off-by: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i91=
5/display/intel_fb.c
>index a7b4cf8b6d50..6a7060889f40 100644
>--- a/drivers/gpu/drm/i915/display/intel_fb.c
>+++ b/drivers/gpu/drm/i915/display/intel_fb.c
>@@ -349,7 +349,7 @@ static const struct intel_modifier_desc intel_modifier=
s[] =3D {
>                 .plane_caps =3D INTEL_PLANE_CAP_TILING_Y,
>         }, {
>                 .modifier =3D I915_FORMAT_MOD_X_TILED,
>-                .display_ver =3D DISPLAY_VER_ALL,
>+                .display_ver =3D { 0, 29 },
>                 .plane_caps =3D INTEL_PLANE_CAP_TILING_X,
>         }, {
>                 .modifier =3D DRM_FORMAT_MOD_LINEAR,
>--=20
>2.25.1
>

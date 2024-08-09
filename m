Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7B594D08D
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 14:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2901310E907;
	Fri,  9 Aug 2024 12:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FWD7fhoX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358E110E903;
 Fri,  9 Aug 2024 12:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723208024; x=1754744024;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7VpWgJq05B6uawM4zQ9h9WRo+Aq2XbQwneZhn/ayceU=;
 b=FWD7fhoXbF5h0Od2yZ64jeH+w/3+rNNRc2/f1UrffdztghG8qdZyOHXq
 fKSImOelpeqzaYQ2CKqDc0nWNJbocALmlwvhNY+BrB81nv0a6Wia1pEin
 XLRenc87JHpEw7KrG/pN2ImpAWHWPputXqx24jMF5cGXaaOjEFt8kILxA
 QOl5yRDnNkTf4vkaWQapqa1MKiT1YyONvmw/17bgW1cQ1dJNMeGcJKAE8
 I6Eri/xY/s9kvBX3De6hMMXQrvtyFijsKKTm0Q0WMT3mb9ep09Edzqjch
 l4QOLKJN44XtqvRX8EDx1TisKBpi2GSCokzFj9lXFn7D8l9yBcmNNvqoO A==;
X-CSE-ConnectionGUID: TQo68DnmQjGwiJiPVgKaeg==
X-CSE-MsgGUID: 1NUFE1AOTfOu8K4z1B+fsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21189592"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="21189592"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 05:53:35 -0700
X-CSE-ConnectionGUID: p3bp9g+LQDu9wl+IWFVdXA==
X-CSE-MsgGUID: GDaDiJKNQx22oW0Pa6T62A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="88197966"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Aug 2024 05:53:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 05:53:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 05:53:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 9 Aug 2024 05:53:32 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 9 Aug 2024 05:53:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g2sakCRVrOP8Smu6oMLie80F14WofDsm0iWKw2XNFXmkHGdnCtr7zNCzDWyEaVnvIaCg4izH7y4tDntxC3abE78ytVGBkYlmH7me1AgBeAwUhdomLze9nyMrrmqXtbREw6ZH7whxg4Bpqoq6E4pch0YM8c725hT1/o3dysZZos2tPS+VHvTU37yL/Ve6qXXA/PZsuuJyjpgmUelmioLP6yrHrBCPFuIyba6OG2PyBTZT7piLFpAHJk4WgQ2j/BVXkni6qrJGrhvmB5gh0g8YpNT0Z9MpUVRoHPGbuK452TzZxjk1CLz1y/FfPBcN/SznIIH2Gbkglu21hY99y/TMew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Usr9GXp/yj86Ryq+ziTlJSHzKY1+nEJ+uOyKiJJJI+8=;
 b=VgKaTy+k4qfpcoofBQvd2WoAfj5zAix37/+MHCEgDImJ5zKtvxI8hXnxX2zVQ+VjeP081veKtjt8WifCS/ITV8wLD1w9EvcePz4poYGrPzCStQyBoNnTpGK8V6ryQXrV58pGsD8cZ+QzqP6RtAbZ6ZAzw7Ei7Tl6vRuznyGvLjxlzgNH9hEog475A6fhYpwlCGdNe9Li+RrOoYNAlVZbRfLZwLOHK/fgvHdW8X+qLHx41QTMp0HD00E8sI0EoQ4cSeMj6PT+1zMafezHj2yZNz1fQilK5Qz8Xf3W/D9FVz3YGCZSRT0s5vAPG3tKsivuV7zBjI++HlcYZJ6S96IR6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7663.namprd11.prod.outlook.com (2603:10b6:510:27c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.24; Fri, 9 Aug
 2024 12:53:30 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Fri, 9 Aug 2024
 12:53:30 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <59a4d62438e529a398709d44d8fc7931f1d73822.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
 <59a4d62438e529a398709d44d8fc7931f1d73822.1723129920.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 01/10] drm/xe/tests: remove unused leftover
 xe_call_for_each_device()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <lucas.demarchi@intel.com>, <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 9 Aug 2024 09:53:23 -0300
Message-ID: <172320800361.4788.17968816670268826022@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0353.namprd04.prod.outlook.com
 (2603:10b6:303:8a::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7663:EE_
X-MS-Office365-Filtering-Correlation-Id: fd30cbdd-355c-4889-6b79-08dcb87244a2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aGxmVjE5aHo3U0V5RUdET2pOY3lPeEIyMlZQamk4RzhJeFJVOTVKUElEVWZl?=
 =?utf-8?B?NHQ2blptRHdYWEg4cDZCZlJVZTZGckNxMGYrNlJLcVd6MFNlaXRRam44Z0Jj?=
 =?utf-8?B?MUVyY2lZVU5kdExjOGgxQlpkRjZvcE84K2lveVpuYXJTNnZVWWpqL1RrRXBW?=
 =?utf-8?B?TlJ6VWNHODBMTThUVGZOYXRycnFUcUpLamFTakFkK1BwQm9yNFFJaWYvYVhF?=
 =?utf-8?B?em9kQnFPSGRNcGQzVzBGZVlzMUtHL1dLbmJ0bnVLblMyMWhjaWFpbm5Vak9I?=
 =?utf-8?B?S0ZCditiM251eFFHMU9SMCt0U0N1U3pyUGNzUkJCRVNGMFcvNzBhQkRQd1d1?=
 =?utf-8?B?UFFsZEJQcGlFL3huYWpHbDNWTUcya1dsRWpSSmlsdEhpV0o0bTB3enNua0ZX?=
 =?utf-8?B?OTVxM0ZVaW1qd0ROK1ZrRkVVZ0VVSlljNW94amwydmZMenNKNytlNE00Y1ds?=
 =?utf-8?B?Q0RtazJsUnVUc3R4aVREeHFFdHV3ZXNodFdHb1BtczNRMDlTT25vMDNMRlJs?=
 =?utf-8?B?NTBjL0wvOU9QNUdJSlZZeTNzWWNkeTY1OFFxR00xZlo2Q05EUzZ2V3EydFIy?=
 =?utf-8?B?NitkeDUwUUREMm42UFFIcEtMT2h5ZDFnNjNNaDh2eWZGcGtLRlNkSUtrTjdB?=
 =?utf-8?B?a1JIU2tDVzB0a0Q4ZDBJbXA2TkpFQTc0RWs0alRQM1pqTnkxWFZBMG5GemRZ?=
 =?utf-8?B?TWNGNk15UjBCM2d4R0kzTUM5a2MwUE5xSUJiUk1CK2xXZUtUdDhoWUw5Mmx1?=
 =?utf-8?B?SUo0Z212SjdITTRQOE5USHpzb2gxckFiRkR3U0RzeHJFWndRTnhIWU12a0JS?=
 =?utf-8?B?MTVNRGNkRTZUTDJseno0TDFLVllYdWNxZVBESVdXZmNORnFVVUZXUmM1Zlk5?=
 =?utf-8?B?VHpMbGw1ZUpLMEljRTVOREUxbGxNYUhGU0sxQ0pjaEpLNTVac0JWTVQ5L2FX?=
 =?utf-8?B?WjRsNUowRnZFa3F1VUE0N25Xb0pVUzJwUzV1OEJwcytiK1ZYelRTdDBBa3Y5?=
 =?utf-8?B?T0xycDdUekdJdnhrUXgwZXJkRFg1VXhmdmZKWDlVTzluUUhBOXhMbW9pdmdO?=
 =?utf-8?B?Vmc1VUdRNVByNzl5a0FBVitXYjN2TmZvZTBicjRFdFhHM0FGZ09xbnVhaUxN?=
 =?utf-8?B?aHpBclltTmdwdERSMFRNTGtLVkFTNnFUVjhuVGFKZXJYeml2TmJXZk9CL0JE?=
 =?utf-8?B?bjhJRkthWUgvOEVkY0NienF5dmdUclVEdkZZalBac2JReUc1REo5QitBd1RX?=
 =?utf-8?B?cDkvTGRtQ3FUVVlQNzlYOENBL0E0OHU1VnBKTVZEOHIyUXVqTzRtbUZBWFB3?=
 =?utf-8?B?WWZRRmcxTHhpb1dTYTZzNFRaeWtQMXRHVUI3T2QwcWdoZTZDcnVGbndFMnBw?=
 =?utf-8?B?QXU2ME9vQmExRUplUUhHRFMyajR0YzRUeTNvUGlOTVZ1ZnlZZEdBTFhtSjJG?=
 =?utf-8?B?QTV6Z1pQZnFJdi9CemNYeFhCYzk2Kyt6OHNMTVM0OUJUUzY3SnBmdllyMC9W?=
 =?utf-8?B?TzllQU1qT0dUaDUyRUdiMUJVL3BTbjV6RE84T1NxVy82UUZiZXRpTEVJL1VP?=
 =?utf-8?B?aU10aTMzcS96S2FWSEFKaDhiN1JING40RVo2Q002czRvTEw3WXIrNytxRWJP?=
 =?utf-8?B?UCtFc3kyaTJrQTh1REpKbVNZQTdESDdmTlhmTlhIU2Y4c2l2ZGtRMGh3UGFY?=
 =?utf-8?B?QkE4ZnJQeHR1ZDlFQ2IvZEZ0UGxzcGcvL1pYYnBZQjNLUHgvd3prRDZnN3pa?=
 =?utf-8?B?TVVUT3dQUWhjVGhVMEI2UVZmeTRXRE1TaWg2dW1JQXl0ZkNBK2hjcVBpcmZ0?=
 =?utf-8?B?NVI3emcwd0tsemJEUFRjZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1VuNGhUYitQVGV5Szh1TG1mbzVSdjdiZElSeVB5VkEwVzltcHZzaVdqUC9k?=
 =?utf-8?B?VzMwWE5OTmNNeUZFV25kUTJ1aTd4Q2hyZXNJMERpVU4za04vMVA1OFo3ajFJ?=
 =?utf-8?B?MzdtMkk1aEVHWVlMZjd2Y0J1MXpLa1MwQWRuL3pmbDJ1QkxoOFVxeTFzL01C?=
 =?utf-8?B?ZFlJTk5EUlc1aThxZFQvK2o0YmZ6OWpnMnVxMUVGMHdaMDJBUlp3REJEbmZj?=
 =?utf-8?B?TUFlcEE5WXNQUVhTYysxWWtnZG1iQnFoR0YxWlVBbXlFaVd1NWgwT3hQZjVD?=
 =?utf-8?B?V0pkbVJ6aWVFaFFpQ2wyS2Nsc3h1WGJqUjFYRlBuNXpGenhhTys1YXNsSVov?=
 =?utf-8?B?d0x2ME4yQ0JEK3A0Y09GckZya2pQb3B3alM1Ym5QVkMralFxc1V4djlxazNp?=
 =?utf-8?B?N1hrU2RpajdUQmlqSlgrYlEvamlSVVJPK0JNMDVzTGhKUTYvQWNCS01GbTBp?=
 =?utf-8?B?RURMMXg1S3BJOVBDNlJQQkUvTlFPbGd3dTNrM2hud0FERVVnS3pKdVRTREZE?=
 =?utf-8?B?d1NhM1BHeEFkdm9UQzB2S2loWXdsa1JTS0tLbDErdWlpVm4zd1FhY2N6dTJt?=
 =?utf-8?B?cEZueU5EUmZycGlNWStLdmljZ0ROakZGNmFmRGZEcU43am1HbDNyVEVEcVJs?=
 =?utf-8?B?OVU1T2JESTZQWTlyeUpnZmdxM281WnR5UFg3eFBCVjhFeFhMcnJBcVVwcy9N?=
 =?utf-8?B?dENmc3paTkcrNmlqekNGTjFPMzQvdk45Tm9kOGJBWXZXRythNEZTeGUvamFP?=
 =?utf-8?B?VUdiamI3a091Y2xoQytlRi9iSTJ4bzV0eVdGc1grbW5HWENjWjhtcGxhWU5Z?=
 =?utf-8?B?dGhyOUJjMHVaZW1uckZYejVNeUhiRXM1QnNjZVgxL0NmdDRoNTdnTFgxUTI5?=
 =?utf-8?B?MkNVWTZmdmVGUTVNVnFWTm5ScExmV0NnY253WlVJNWNYb1dRdkJGTnEyazU2?=
 =?utf-8?B?WGNyZ2t4Tk5YV0YxY2g5M2tYZ25rNHZtQXRGa3BlNmdCNnRiOEpyRE1tWXB3?=
 =?utf-8?B?bmZIcU02bkJKQk5OUWNYWFpLUzF6TDV2VmthTGpXNmJVUi9DbFhXaE9lc0wz?=
 =?utf-8?B?K05Nb29XeDVSaVc3WnpOeS9CZHg1YXBkbU9reXhIeVQ5R09uL2tnKzF5RkND?=
 =?utf-8?B?UVA1YmV5NUQ3RWdaaXRzUHhaRmhrNU50NzFFTHU1WWVmVGg0b0daWVZ1eUZB?=
 =?utf-8?B?YWVSSmJzcFFicEpmZVNvdkt0WWl2dmc2VllHemhFOWpSYWtNM2N6UWw1bnh5?=
 =?utf-8?B?bmlTMFJQQW10U3pHaVB4L1VOZmxLdW8rZUFhN1lDV3dYMWUwUmJib0tTakp4?=
 =?utf-8?B?d2R5SVp3RjBld3l5NVJpUVlzOXdMa0VFY0JsV05OVmxBNklFN3I1YkUxNEFm?=
 =?utf-8?B?Yi9PN0FjWGxmalZhaVNPT2p2aHdSRkU5M2FSUng3Z1M2RU0xVlo3YmxXOGNX?=
 =?utf-8?B?ZG84bUgvYVlLSVNFNDhrUU1QbE5KaG4rdDVlSU11WC9Bc01OeEt3WThVMVFM?=
 =?utf-8?B?VzNPYkExZkRUdXdXbXQwZmJ4N2hBa3gvS0t0ZkV4dWR2bm9qcURMc3NDR2VS?=
 =?utf-8?B?MFM4L3BISDNSaWd4cVFnMUZ4eXhYdEQ2amx1WEIrZ1c1eGh5MkxGTnZDVWVL?=
 =?utf-8?B?M1IyeWxrd3RXaFJDZWxVOHhnOGRQZGFiYURGSWF5SHBWbGRGWjBoTGRiWGJC?=
 =?utf-8?B?QXZKVWNmd3g2VTA1Q2UzQTJWY29wc044R0hIVUN2V0xxdVc4anZwZkwrcEVY?=
 =?utf-8?B?RHhHMFZKWFpITTlMQUhvRVRxTVlzN0s5bmV5Y3dNemF5WlJ1QjVYa3R6eS9B?=
 =?utf-8?B?WGZISG5HTGY5NzJ6TThOSVAzZkZUMmQzcGM3M0dvR1JlbXRSendJRzlWWlRW?=
 =?utf-8?B?anF5c2Q1cURKQXU5cm9wVUc2ek9VVm1KR2FNa3Ewa055Rm15VmZlTHpQQWNo?=
 =?utf-8?B?cUh6bDJmemFXTzJjbjlmUDYvcGdmN2pxTWVYV0g1THJ2M1FSbXFKc0hqRUho?=
 =?utf-8?B?Q1gwU1R2WWRaUU5KdjNFOEhxNXVkVmJZS3ZLRE9zQWMyclkyMkI5R2FJalMz?=
 =?utf-8?B?dXJiRmJKT1JMdmZsT2FtSk42NUhUOGg2N3hVVmxZbGw4OEd1SkxYS0dYaGtY?=
 =?utf-8?B?Z1pWbGNXVUNkN1pFVmgxSmdzREtnVUpNUk5BcFh0aG92cS9DRG1SQmRNNTBK?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd30cbdd-355c-4889-6b79-08dcb87244a2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2024 12:53:30.1489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: knHjsmT/H5Tbyei4HkB4L9HCozK6ukln0cYXUmeTf/WN83kyOCDooEYJV8vFQLvRf0Jy5e63Nxsntyd7oZYXDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7663
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

Quoting Jani Nikula (2024-08-08 12:15:46-03:00)
>xe_call_for_each_device() has been unused since commit 57ecead343e7
>("drm/xe/tests: Convert xe_mocs live tests"). Remove it and the related
>dev_to_xe_device_fn() and struct kunit_test_data.
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/xe/tests/xe_pci.c      | 52 --------------------------
> drivers/gpu/drm/xe/tests/xe_pci_test.h |  1 -
> 2 files changed, 53 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/tests/xe_pci.c b/drivers/gpu/drm/xe/tests/=
xe_pci.c
>index 577ee7d14381..67404863087e 100644
>--- a/drivers/gpu/drm/xe/tests/xe_pci.c
>+++ b/drivers/gpu/drm/xe/tests/xe_pci.c
>@@ -12,58 +12,6 @@
> #include <kunit/test-bug.h>
> #include <kunit/visibility.h>
>=20
>-struct kunit_test_data {
>-        int ndevs;
>-        xe_device_fn xe_fn;
>-};
>-
>-static int dev_to_xe_device_fn(struct device *dev, void *__data)
>-
>-{
>-        struct drm_device *drm =3D dev_get_drvdata(dev);
>-        struct kunit_test_data *data =3D __data;
>-        int ret =3D 0;
>-        int idx;
>-
>-        data->ndevs++;
>-
>-        if (drm_dev_enter(drm, &idx))
>-                ret =3D data->xe_fn(to_xe_device(dev_get_drvdata(dev)));
>-        drm_dev_exit(idx);
>-
>-        return ret;
>-}
>-
>-/**
>- * xe_call_for_each_device - Iterate over all devices this driver binds t=
o
>- * @xe_fn: Function to call for each device.
>- *
>- * This function iterated over all devices this driver binds to, and call=
s
>- * @xe_fn: for each one of them. If the called function returns anything =
else
>- * than 0, iteration is stopped and the return value is returned by this
>- * function. Across each function call, drm_dev_enter() / drm_dev_exit() =
is
>- * called for the corresponding drm device.
>- *
>- * Return: Number of devices iterated or
>- *         the error code of a call to @xe_fn returning an error code.
>- */
>-int xe_call_for_each_device(xe_device_fn xe_fn)
>-{
>-        int ret;
>-        struct kunit_test_data data =3D {
>-            .xe_fn =3D xe_fn,
>-            .ndevs =3D 0,
>-        };
>-
>-        ret =3D driver_for_each_device(&xe_pci_driver.driver, NULL,
>-                                     &data, dev_to_xe_device_fn);
>-
>-        if (!data.ndevs)
>-                kunit_skip(current->kunit_test, "test runs only on hardwa=
re\n");
>-
>-        return ret ?: data.ndevs;
>-}
>-
> /**
>  * xe_call_for_each_graphics_ip - Iterate over all recognized graphics IP=
s
>  * @xe_fn: Function to call for each device.
>diff --git a/drivers/gpu/drm/xe/tests/xe_pci_test.h b/drivers/gpu/drm/xe/t=
ests/xe_pci_test.h
>index 3e2558bc3c90..ede46800aff1 100644
>--- a/drivers/gpu/drm/xe/tests/xe_pci_test.h
>+++ b/drivers/gpu/drm/xe/tests/xe_pci_test.h
>@@ -19,7 +19,6 @@ typedef int (*xe_device_fn)(struct xe_device *);
> typedef void (*xe_graphics_fn)(const struct xe_graphics_desc *);
> typedef void (*xe_media_fn)(const struct xe_media_desc *);
>=20
>-int xe_call_for_each_device(xe_device_fn xe_fn);
> void xe_call_for_each_graphics_ip(xe_graphics_fn xe_fn);
> void xe_call_for_each_media_ip(xe_media_fn xe_fn);
>=20
>--=20
>2.39.2
>

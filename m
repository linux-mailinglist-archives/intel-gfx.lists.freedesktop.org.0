Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA819ECBE9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 13:21:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A86310EB1C;
	Wed, 11 Dec 2024 12:21:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UJB8LnlX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 915F910EB1C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 12:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733919712; x=1765455712;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LJnGo071WJgpsp935ErPdV3HVxWavQVAJmhMl6kVYaw=;
 b=UJB8LnlXohcttrSRqV8GVyI1zzDRQL3Z8n3eoZ84kfiXE38z6H1kfiJw
 546mkn4V9hqIe8j5C6/WsjkenRFXnPQ/yb2+JJsrtYdYZsKIDynN8zuP3
 DjyTlcRs1zdaTuS1w0UshGlAoMe2Ap04LHntFlyhRKG5F9ir/G+Ax6rnB
 TP/MxsKvd7Nuzwg+5JRvtEgfI3za9C/4t2UUp6x2Ue6Ql36mXue/MX8A0
 P/XiV1ub0F9/m0uPxtoyotcLIS0qJXQ221q/cCuebvj8ttr0nz7wTetOj
 T6kUZ66sxKl/AXRh7oWeIN49iYZPcguuOiol9ln7ZkwJt9XFvdzfCk5I1 Q==;
X-CSE-ConnectionGUID: Lh7yhdFXRzioauoKQp9zEw==
X-CSE-MsgGUID: lNVHc2eZSjGcC9aOGiGYVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38224709"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38224709"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:21:31 -0800
X-CSE-ConnectionGUID: YOFFzCn0RM+W0Ne4aaZqWA==
X-CSE-MsgGUID: Sis+UxpuS86OixObVRzEiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="100827630"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2024 04:21:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Dec 2024 04:21:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Dec 2024 04:21:31 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 04:21:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JV6FutcOpphYU6NOqBa8lbl/i5dfG5ZRf6n4EO06IfeXEli/1DdPRb8bNZ5kBks7MDjSz7DIRfM/jjOmJ3HHCvOuLY4kmodNIkS7TkXJ/VHKYJTIlfkfTj/VzGTiQYrlM3zvWldfR9vjyI5dIvOUov6r4emWM9QXNSVqukSdURKtuianA1iITpKYJoKNcer41G9ZXxT5u+i3qPZ/Rxm+Y06AjpKlwkUK0jh+lrEVAYF7Www4O6NGya+BVtfUhIHPiiIbCcxP6RfHWBgxARPXN7sfoowoXBhhsa//d0XlY9gJdru2AlyGfWML5JYwuezWSqVTXASx9N6+yu/6JXbsmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VXd29xxUVgKnfFeuLHaf00R2waIp3idFZgYDLto0GUQ=;
 b=KMSFbqEOD6C7fY6QfGRa6Nw9m3cGINWwmNGZKSKtFOo1xJS+7MOhRhODeXYfc6jlRO7BJYQ1Coh2m1sxAcNw7QYP/tPn/F46m0TtRqBw0s3+w626l+vpGApDqNGkl935Oq/MZM4nijMltfxF6E7TumpXttR+sGBJtQPT+YImWX767gTZXBDLdXGbjAHTbp4PSgjGW8smDlyKc2BbDg6wz7qsJKvuXu25Y8VrKjQXZ1ziOivgcVMWeK1NryhV5tA6qP+BgOE1c/tQ8T6NuEFB5EEOVtNI9T0I76nvr2NfgKIoUuGg7/0tC23b3k+FL4Z+0bonCQKic8ixpUM1OvtRxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS7PR11MB7833.namprd11.prod.outlook.com (2603:10b6:8:ea::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Wed, 11 Dec
 2024 12:21:14 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8230.016; Wed, 11 Dec 2024
 12:21:14 +0000
Date: Wed, 11 Dec 2024 12:21:05 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/display: use IS_ERR_OR_NULL macro on DP tunnel
 mgr creation failure
Message-ID: <o7a66zseb55l7uw4yfjdmifs673tcmdo4y4eomz3wyurjwk2zk@jopzsrtojqtw>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <fw4bnfdbbolmg5zdzrf7raw5d7vzcxxz3zno3pti6tmnakrnvt@tx3262k6bzfs>
 <42d4e7d6-8134-4c34-81a7-cd3eaa8d638b@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <42d4e7d6-8134-4c34-81a7-cd3eaa8d638b@intel.com>
X-ClientProxiedBy: DB9PR06CA0012.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS7PR11MB7833:EE_
X-MS-Office365-Filtering-Correlation-Id: 2379d1a2-32fb-46a5-18ec-08dd19de4df0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGErOWhFTFhmRENxTEdjTkNtQ0g3WEQyc09RRExHNHZ0T3RuV0RBNnluSWN0?=
 =?utf-8?B?QnhGSlQ0NkU0SlpxMkJsUWk5akxERTNoRjlpQzJhODZ0empzRFArMW9XMlgy?=
 =?utf-8?B?Tm1GY0ZMYzQ5bXJvZk9LTlZRWnFTY2RuMnV0ZE51S0c0N3VOYVR3dGxOM2tU?=
 =?utf-8?B?L29lNGRNbkZ6ZHRIRGNmQnZtNXRzUmk1YUtLV2FUWTJqT1ZCYkdseGFqN0dK?=
 =?utf-8?B?bEVDclQxK1lmRVc4a3pJUVVLNVJjL2lvbXpvMTczQ2FnL0dPRXY0V1pnUDhY?=
 =?utf-8?B?bHFIaVRPTHVkR3lCeTZ0NGp6anFvTWFZWkZxTzNyUHRnQ1BGWk5nSGtzRExB?=
 =?utf-8?B?RktITVFoajUvL1ZnbUIzdFJPYjFJeklzTnBKMmdHL2RuZHp5N1FIeWg3Wmxu?=
 =?utf-8?B?Q2IzYkpyaGFUOEU0Y3JFRVQrOEN2eXp5ZnRrSjlwUmh6dnFBZVFLVFU5ODV4?=
 =?utf-8?B?ZmQxdmxFTklhb20reXJBbnUwbUkwcm5PVVVoODRUVmZUQlhPd0d3VjViNWcw?=
 =?utf-8?B?WFB4c0hDQ04vUy9NVHFpK0FZZFN6Y3BuVzFoRVZ5cGJwWEVGRG5selNMYnRt?=
 =?utf-8?B?M0dJVU56WTQrSmd2Sm1laVovUStzY0lqS21iekNXekp0RnoyUnB4UitVbEt1?=
 =?utf-8?B?d0FLREFCQkJDM21ORWkzM090MkUreStKc3A0Q1FwY1BtT0FjL01aZjlUc2Rp?=
 =?utf-8?B?RFh4VWRCSVFjRWZ5RDd0aWhaR0JGaXlpQjlKb1o3ZDl0OUNMcS94NTFzaTR0?=
 =?utf-8?B?bi8yMStDYmEyMDNHanl5UkgyZEEwa2FHQjZDbTkvcS9wUm14ZDVYWWtkMVll?=
 =?utf-8?B?TFdpSkROV2pnbXQ1MVNRVnAzdHQ0amxaMXU4OWpxQnBVZ2N0R2VVdmR3MXY1?=
 =?utf-8?B?Tnd0Tyt3eFhaQzFaWXMwUXRSS2c5eVk1SGlubUF1SXdSZFVQcHZYQXFQVW9F?=
 =?utf-8?B?aEZwbjhNeGY4MGV1aXM1RHZacGcxekduY1NKMmNENzZLVXM5STdvZE1MeGky?=
 =?utf-8?B?QU1jVHpkaG1rTDRVNFkwQ0xPRVM4ZGN1L0tIWWpPOUhUM2xtQ210Nks4cTNW?=
 =?utf-8?B?Tk9QaTBIRnZFS01hRGVWK2JyOHl0QktHUzB5QS9hOEFvZmIwWEI5VzlHeVNt?=
 =?utf-8?B?eDdBOVA3dGlyc0NmK1VVekpiUUwyYWxGSHNuNUE2bUFKZ1k0dGtnaFFaQ0tp?=
 =?utf-8?B?Q3IvUXhNZ1MwYnpvSmpSdEFpOUtYSDF6OUdWbUVaTnZtN0xLT1VmSmY3d1Rm?=
 =?utf-8?B?QlNWNFNWajRMQnVpaDFnVXF1L01Ibnd2ejZ2T0krcnFMN25Ib1RMTElrdE0r?=
 =?utf-8?B?aDF0QXE1VHJERCszS05Ca2lFZEtKb2IwTFBDQ3FxdVVmdHNOTWVoSFcrK2NX?=
 =?utf-8?B?WFA3TjJkWUpMNU5zaVU4T0MzTUhhZUdMMzJVVXAwdWRxUWZ1RzRkNGIvZDFx?=
 =?utf-8?B?YmM2RXAyS1BraUJhbkJOL0lQSVYyaXJDU2dGREdTbDR1aW50RVVpL0UrTkFn?=
 =?utf-8?B?ZkMvWjlrM2k2QXl0WDFxMVVybGVGNlFweDlhTHdwTGY2NEROdDgrakNnSVF6?=
 =?utf-8?B?QTZQN3dtSXg0Tmk2SHozQjJDRUNPQ3h2MER0OHk0Z1YvQkltbHQxN1MwMGM2?=
 =?utf-8?B?VHVOcW9YYmpSNVZ1SnVxb3k4clpaSnRxazJIS1F2dkxRdHZEcUluS3lpdTBB?=
 =?utf-8?B?bHJXRjhmSGN5RXJUVlJLT3d2a1l4WkJnU0xOSjhYQiszOEZDakFVWjd0MjJt?=
 =?utf-8?B?QWVmQjcrNi9QV1ltUS92dlJld1BpUThVYkJsQ1dJQkl5S3Brb2k4Y0hsajF4?=
 =?utf-8?B?cUlhWDdDbS8rdW9PczQ5K1JaNkJmQ0d3N1N5VG1adE9oYjFmOWhXWi9ETmZX?=
 =?utf-8?Q?eLdbW1aoaejMM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkFWNytaTmdidEtRZFFGV0gzZ0orV0t2UGt2R1V2bWR4NW9BcTZlSEd2Mmw0?=
 =?utf-8?B?WVRFMTRRUG05N0pGaUt2TzZvaGk2WDExSktFRms4cVNDWkdhelE3bWtPZVdR?=
 =?utf-8?B?UkdZZTJRQTU0ajZIcHFLUDZaVWVQazV5REFmNTV0bWdXOEw5VmlYSlZsTXg5?=
 =?utf-8?B?SEMxblIyUFlKcGRCZDEzZitiRnBuejlkK3NGMzZ4S2t0UytCUUZCOEZDOExs?=
 =?utf-8?B?ZU1PQnJINEFHdllDMlpDajY2cld0SDcrSHhDcEw0ZzFNblFUN0pGeEZjR0l2?=
 =?utf-8?B?c0lJZllpZGYvZFRUSDIrTk9FRFRFNUduL0plemllZmFlampDSDdBclJWRy81?=
 =?utf-8?B?UWE0bmxzSnhjTEZCYUt1Mi9TRkJhQWlMYndTK0I3N1NETi80eGhPbllTbWtC?=
 =?utf-8?B?OVowY2VRaVhQTkFZY25DL3lYUUNnWGx5TDQxMkZTWEhsSHpDNjhzWXhJOGJS?=
 =?utf-8?B?SkpWR2d5emM5YS9HQ1JvQzAzSG9KMVVIYVN4S1JUMHNXTEhWV3dwTXZhUVZx?=
 =?utf-8?B?cS9GM2FDVWtSR09wa0hocVNxbmNLbU9TNWVRdmtSUTdHNFZVc0t1TkxKUkhD?=
 =?utf-8?B?NGhvMEFjTDVaMUN2VUYwTTFwVGxaMXRJWXdLRENha3FRMHNNSWxlZjliUzVB?=
 =?utf-8?B?RTRReTZ1V1ZtUlBYYThmNkEyU0taLy9icUFtYUpEVDkxSkdUK1ZVWnYzcmEw?=
 =?utf-8?B?d0xGZmhJZWR1emsrV01tRFlKamxGU09PdjNYdXR4SHdmN1k3NjllRzl6cnpl?=
 =?utf-8?B?KzE2STF4akU3MG1rdG42ZlBiL0xHZGxUZllLelJGUW1GNUVHdVMvMitob1VH?=
 =?utf-8?B?c2FiWXhHNHJsaXRGSmVRMVROQ2xiV09CNVZHdzJBTjlmY1djbW52UUdxcGNX?=
 =?utf-8?B?YkNHQnN1NEIzMlAyQThmcFZESkFsSitLeFBTYVIrSG12NGdRNDMrNFZQRlBm?=
 =?utf-8?B?b21CZjkyWisxQXhiejJHeldDYTFzYXRka2c3L0RKeE5pZXpDRjNNQlRuWThY?=
 =?utf-8?B?VkxHRWFkWDBCYXlrSXpkd3NtekFkakNMUFowQlROd3hkdGMxRThhQ3YwUHF1?=
 =?utf-8?B?Q0FZRHdRR0JhSDRWcDk3cGlFMlJaV0dqZXVUR1dqT2xLTDEyZjFjYUxycTlT?=
 =?utf-8?B?bmJCNmVlaW13SURQSCtNUFhhOVdQaEhrQzU5OFdPRXZjeGRWT3ZOTlkwSTVz?=
 =?utf-8?B?d3BzclhmWjhUZ1JoaTFPVDZBOFFRbys2dmQ0N3hrdnBidzNjbHhyV3d6NHdx?=
 =?utf-8?B?REp0RHN1MnJDSWdYK1d4SWNhL1dxNVZqT2dFZUlnYjVMejg0S0hOVnkycUM4?=
 =?utf-8?B?MndpdmVmcmNlYk1QdDVyYXh0a1h5U2RCbnNoK2cwT1lDUVVJOXlDV1V6cjB4?=
 =?utf-8?B?TkdBc2Z2TEdpVHlaME1DWVhTTVBBNW4zTkJmdG1ORlM2S1BkR2Zqd1VrOGRt?=
 =?utf-8?B?NHdvS3VpSkZ6b0gwOHY0ZDIyMC9PS1I5NjF3MitSdDEwZmxmNEtkTHdSL0E3?=
 =?utf-8?B?cHRZQWJNb0ZHR2F4SmdyUWc0MWdhZEZqeXpFZW5xMVlPWHVocE8xTTloVVVq?=
 =?utf-8?B?NDJRZHQzc2QwZWNrOWF0TkpiM0NROU9OWncvTEUzcG5YajNEZDU1bGoyMGVK?=
 =?utf-8?B?NFF4L0hIWVQ0UHNuT09hMjJ5MW41eW5yUzN6enpjcjNXelluSGJ4elhINEp5?=
 =?utf-8?B?RVcrYUwxeVFUcmxTSUZhZjNJUncyWTFkY2xTa25UNzNyR0ViMXlISnlmTGNi?=
 =?utf-8?B?ZTZQaU1vL2RDNnhramxPcUdHcDg0UTdNb2paQm9YN3BsRUxrSzFOeHEzWnBw?=
 =?utf-8?B?OFNjWVM1aFdIdG9KeTkzN2VXdm9uMm1Ca3E5b1dYNEJhelZyNmlKT3J4azls?=
 =?utf-8?B?bXZKRmd1VmZTUnd3a25wVDhNeTc3VzVGQVRVYlV6RWR6UUNkM0gxMzFvNjZy?=
 =?utf-8?B?Z0hRTDZnc21RWkhWQk8xVWw0MWV5YTdjS0l1cGpJSXA1cjdhWlFaMW40SHN1?=
 =?utf-8?B?ZXBland6Z016RDhiTEJHckZzbEZTSXhITkYxRUk5OXVhOWZZL082TVZkZy82?=
 =?utf-8?B?anVwcFRaZHdOV3NhWnAyMnRQOG5ENlhZMytaYXNURVgyT0ZNbkR1WFVxdVQz?=
 =?utf-8?B?QkpvT25YRE9keEtvdWFQUHhBRHRubkJoOTdKcG9YZTQzSjBURzJwdkFocmFk?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2379d1a2-32fb-46a5-18ec-08dd19de4df0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2024 12:21:13.9793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pJGuhILlTLUebhujqxXWH6t4AZfLdBGRLQWVMI9ZTw7pZwhogUjMIYKaOXS1T+IQ7Svj8XNXXWsmpkZBlBvRWdEIc9Qo2IAkaw19860DM/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7833
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

Thanks for review!

> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > @@ -793,7 +793,7 @@ int intel_dp_tunnel_mgr_init(struct intel_display *display)
> >  	drm_connector_list_iter_end(&connector_list_iter);
> >  
> >  	tunnel_mgr = drm_dp_tunnel_mgr_create(display->drm, dp_connectors);
> > -	if (IS_ERR(tunnel_mgr))
> > +	if (IS_ERR_OR_NULL(tunnel_mgr))
> >  		return PTR_ERR(tunnel_mgr);
> 
> this still will not work as expected, since in case of NULL it will
> return 0 (success) instead of "a negative error code" as described in
> the documentation of the intel_dp_tunnel_mgr_init()
Good catch, we should not return 0 here then.

> 
> OTOH the documentation of drm_dp_tunnel_mgr_create() says: "Returns a
> pointer to the tunnel manager if created successfully or NULL in case of
> an error" so more appropriate fix seems to be:
> 
> -	if (IS_ERR(tunnel_mgr))
> - 		return PTR_ERR(tunnel_mgr);
> +	if (!tunnel_mgr)
> + 		return -ENOMEM;
> 
> but then it will not work with the drm_dp_tunnel_mgr_create() stub which
> actually returns undocumented ERR_PTR(-EOPNOTSUPP)
> 
> so unless you are ready to update implementation and documentation of
> the drm_dp_tunnel_mgr_create() to return ERR_PTR instead of NULL in case
> of error
I considered that and I think this would be overall a better solution,
but as I understand functions in drm_dp_tunnel.c file generally try to
return NULLs, whenever kzalloc/kcalloc fails to allocate, so we'd have
that one odd out here. Though, other ones are 'static', so maybe there
is no need for concern, as they are not going to be exposed.

I'll update drm_dp_tunnel_mgr_create() to return error pointers.

>, the fix IMO should look more like:
> 
> +	if (!tunnel_mgr)
> + 		return -ENOMEM;
> 
> and keep existing IS_ERR check
I do not think it is good to have the caller assume error code from just
a generic NULL. If anything changes in drm_dp_tunnel_mgr_create() and
something else than allocation would be allowed to fail, then ENOMEM
would no longer be appropriate here.


Krzysztof Karas

> 
> >  
> >  	display->dp_tunnel_mgr = tunnel_mgr;
> 

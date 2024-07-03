Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AE9925329
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 07:50:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D70A10E52E;
	Wed,  3 Jul 2024 05:50:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VgaZaW65";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72B2F10E52E
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 05:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719985803; x=1751521803;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fMHAmuQ65yu3cSI/ZP0Epf9+tefnyAnOWIIbnyemCsk=;
 b=VgaZaW65RpOgWOk3yAOmylLoDfb2JgbkW0kO14WIEsUPGYQQshE+UeJ3
 RVaRs79iND5/XtaYhjC0Cbl9KkqR96VCejxZHQhkrtk8hqfQXWfQC9XJ1
 wTxB+1nO87YDjV9lODyyZYq7K6l+6CObo5vLVowxivSFzlE56Jx4+UM2z
 KuvuXKPC+lO+g6MaSZkVV2e0TBYY0l9LDXcYIcSE1/lfb0ovqzlrsZJAj
 4M/AIU7ygFUIx5AxE8HcFs82MaTO2B4CX924Vhb9O0sgjPhm7thYYvFze
 JYZJ4QL5UhTXZ4jtFQtCFHhUExQjV1VHRqFHw+LJbK2FqC039kaKZBqeX g==;
X-CSE-ConnectionGUID: qSmTjFn+Q8CpKZbzjz+21Q==
X-CSE-MsgGUID: w+CtmTOkThK3gwp3/13t4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="21066743"
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="21066743"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 22:50:02 -0700
X-CSE-ConnectionGUID: fWuQBGg5SCyi1FgIi6uc+w==
X-CSE-MsgGUID: dhTFcup+T6eiuD13Vweuqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="46042824"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jul 2024 22:50:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 2 Jul 2024 22:50:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 2 Jul 2024 22:50:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 2 Jul 2024 22:50:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V4oq5yWe3WEjl5WMnQWKUJcsbifNzgIrlwleZMmSTv/tbkJwtDaxjyGxYuX/I3xqtEfC4lgAk0kzwJM0Jpo74L5HR0BFbTy6flcovsKDRltQANepBZDfTYqE+kCPj4YT9HQ4MbF1OPkb5Gd1nF67QSDd9b1clr2QNTz+pDCoFvYdRWht9KYekDp1DM47btuL15+6qpsTC8700t/PsLWOWUvDpBSauoUmyOGEg5tuI/Gnn2V7WlmxQKTvHD+vZIUjp/iJ5kTVMHunNW5z3rfkNNTngQjsrxKFOt7cP8P9ILXQlkoa1F3FQsjFttlTo/UslM51dRzdNzOeUcXvCT4pGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fMHAmuQ65yu3cSI/ZP0Epf9+tefnyAnOWIIbnyemCsk=;
 b=VN7G8LokSPjtoUdwJpFTpvUWW2Zb7lAIGMT9i2+G9inmj/ZTq9DWl+yD5YHVWUg7riYdHKcZR/bw6FeFKtwDKDXqoLskbR6R+u9hNvANFxO/QgueIFCtrIvFbDq/wPWDGWWbM7HeHY9ax6qqP5CFpvxanVMrqVc8uAr2t8IQn0FgkXRTRqyOYupeu9kcqtQLBT2LwVmzDAcEvTiLZIg+CWKJg33nWOJwfJvCnjFlc+TuqqlYfQr0K8i0E94USyBP/w9Zn3+7smf3MqY+NuRdfLwdVEASxuHkxCRTho4pIGmV08zeaG25xu0K+PJhyoWmkQsxbrFZmujohXB2dqmbpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB8122.namprd11.prod.outlook.com (2603:10b6:510:235::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.25; Wed, 3 Jul
 2024 05:49:58 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7741.017; Wed, 3 Jul 2024
 05:49:58 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 05/14] drm/i915/dsb: Shuffle code around
Thread-Topic: [PATCH 05/14] drm/i915/dsb: Shuffle code around
Thread-Index: AQHaxmpQH1ZbTjOizUOIVbtm1Rl1yrHkjJzQ
Date: Wed, 3 Jul 2024 05:49:58 +0000
Message-ID: <PH7PR11MB5981A887A37F6DE6F8D2D6EAF9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB8122:EE_
x-ms-office365-filtering-correlation-id: e40b8eff-aec8-41fd-8d84-08dc9b23f8e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VWJhcktIUStDOUNGS2pnTTFzcVl0bFljUEhYU2UwOWZGUDU4c0twR3g2cS9X?=
 =?utf-8?B?S0hmNXh6blNIVENnSUc2UE0yYU85b21WdFlhZjJqamUxSHZKSEpQYmZnLzNR?=
 =?utf-8?B?Sy94YXRSM292Rm1zR1diOHVUMGRyQ3QwcUZDeklSRnZEazVINUZpNDdWRENa?=
 =?utf-8?B?TnpObXhBcEVGbWJqNkRBTzBnbFN0TU54M2xtUEpMK1RvTDZhN2RCa2RNSnZl?=
 =?utf-8?B?OUxKZExzZ29pdEIwNnN6NnIxYlhLODlPTWtLeFhBUTBKQ3dKUndwbEw1NmdP?=
 =?utf-8?B?ZWM0cE45NHp4QVoyNm5hd0pkYTZBS2VVR1F5RlhWNlBuelY1TmdoQURnWmZy?=
 =?utf-8?B?UFQ5MURmSjMxdi9xdzZTdDB5UmFRMTM2eElabXZBUjUyVVhUQmRrWWRjbHBF?=
 =?utf-8?B?QThsNE9nVjFNai81aGJUQ2xEZUUxR00zWVg3QkRpNEN0ZGN0TkpZdXMyVDFm?=
 =?utf-8?B?RmdISm50OFc2UkJhN0FvQkhyWERibjF5UnhOcnN3eVNHY3Axa21UdjJOMnVY?=
 =?utf-8?B?S1ZCOGtqWUxrNi9XNGpuQzA1UWo1OEdwbmh6c3RRVkRBR3ZuRjNoeEN4Ym1q?=
 =?utf-8?B?NnVBWlo1ZHE3anJQZ2RiUU9xUE9Jem5UK0tOUzNGcHBXcXM2Q0lQVFpjQ241?=
 =?utf-8?B?bitOTEtIR0J0YU9wR2dBbkNpOVI1TWVzM3hybUNlVi9Rd1lodUpvTG5Bb3cx?=
 =?utf-8?B?SlhMY3k4L3pZclVSQ3hELzk5SG9Udys4cDd1RzZJRHJYVDdHNy9KVWZnbENO?=
 =?utf-8?B?Yk9ka3hiaGhiMTJpNFJsN1BQOWRZMXVsZHZsV0ljRDhraG00cHlGazErUU80?=
 =?utf-8?B?cko5WXJ6cEJDTncxMThlWm1KeUVjMGFiR01sdU5aV01JL1JqbnBaUTh6RkJw?=
 =?utf-8?B?U0NqUzRpamkralpJN2plUWYyT2RubEgwWnVSMFVHL2hqZFRZcVB1eUxodHZ1?=
 =?utf-8?B?VEFPN0FIN28vMnNUV21BRXlsZ01QdjFTTWJyUm53dFZUWkFMRG85NlljbGNH?=
 =?utf-8?B?WGtXSlhVTWQxUlFOS3J2U1JqK3YzZTdOOE9yVEx1YnFoRFFJZWRBOGRDa0pX?=
 =?utf-8?B?QTNSUDJCQzNSMWdFeDJlSWxTSVBYNjRXOUNFQVBBdFJoRVluWFFaZ0poZmpY?=
 =?utf-8?B?eUJrVUI0bDRoWjBJU3h3MmZrUEpZQVNMSzBqM0FjRmZQSlpmWG1uYmJEaUtK?=
 =?utf-8?B?VVEzMHcySndpNDNZVWtiOEZ1ck9GbnpScE1lWGoxa0dZQk5yY0Z3MGt1SWNP?=
 =?utf-8?B?ay9OSDNOVzFHL0dSTi80aGVLemFzbnFSbzQ4dWpVT0JMNzlXQWdpOFEwUVN5?=
 =?utf-8?B?YjV4WEZoT3ZqU3QwbVplY25IR3pselBkTTAvQU1mR1VHUXcyZWx2WC9wOFZj?=
 =?utf-8?B?d1VrdWVOR0tUK3kyQ0JTWktFbnkxTlE3M1JJNlkxMlZOY1JYUmRxOTFadGdv?=
 =?utf-8?B?ODFXWkorcE9TdWxESUVNWlhMK1RZWWoxTnZvSjM3N1haZ0piVVdHZy9JTHh3?=
 =?utf-8?B?VVBidU1XMmdLOG9UVCsrMm53amQ0ZnVxZWxCWW4yQXZ1emlPM0txQUtDL3la?=
 =?utf-8?B?UXBsMkpxWG9WSEZ6Qmd1RmNSeTdBTkVWRHRYTkhnNG96RGxDQXc5VDNsVzFH?=
 =?utf-8?B?S1ZHUkxMeW9RS1l3Um9jcG91QjdRL2lpYzdUWjUrVzFyL1RkdzhkdnE1ZnlG?=
 =?utf-8?B?aUxzZFVDaHVuY3M2Z2l0NE8xU3NLSHBMODlMNmJieXRuTHpOckxZRWludWxl?=
 =?utf-8?B?RnlUcEgrTVFsVVFSd3MxTWRqWnR2WUJnYkNKUUE4UUYvLzc4VTBpeEp1WUhi?=
 =?utf-8?B?MHI0R01TTzBKcGIybTZ2UEdCWnJoczg0aGdqbmJ0dlB3MGNpM3JVV0FBTkZS?=
 =?utf-8?B?N2V4ZVJTdHNYTnljZ1dlMUhJandaTno5UUdXQzllSDFHWXc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3crWjRBYWptSVNid1VJcnMxUkZuWFB2R1JHZFRVRTFGSDVLMktJRTYwQVdF?=
 =?utf-8?B?MGFoMHJZYVZOMlpoeXBndFlZbUNBVWxkaXUrOG9kU2daUjdadk9mZXpEUk1I?=
 =?utf-8?B?NUJUdko5S01EY3FFVXhtWDVCRVdIOVQrTUdLZll0TzU5UFhCMUJUNTNaWGp0?=
 =?utf-8?B?MG5rTnJ6ajRjRjNVUEErbWNWNnZNTzFlOC81NWFDNzlnaGQvZmJJdDY2Q3RJ?=
 =?utf-8?B?ZmtpcUxtb2ZxVDVSbWcvQUJVc3hqZ1Roei9EaXp3dTBNMXk4c1dRVFA2aFpw?=
 =?utf-8?B?bXlSYm5kL2g2bm9mczY4MnM2TkNBSGVhVjdQc3BnbEFYVkxJWjlxRC9kand4?=
 =?utf-8?B?a244eEV0SEdhamZsc3VydEZ0cnk4L2IyZllTRnRSSmVBNDFSR0E0ZFFqeWw1?=
 =?utf-8?B?TkUyZFdSc1QrUUV1dkxFdlNlN040dU1lYWFJSDNZdVpQU3JWejBjYVRVell3?=
 =?utf-8?B?V1p5RWo3eHNpWnN0RHgvWVJFbFB2alg1aU0rSy9TaVQzWWJKUlNzWWtoMmZm?=
 =?utf-8?B?QTQzR0YwUzM2M0Y1aDBsOC9KNS9WaHl3K1dzbkZUaGFlODNyaExlSXU1c1Fk?=
 =?utf-8?B?UGN4Uk5FSEVWNUk1SC92NDhVbDczZkZGVWN2dWpmOUdxcWdKbWl5a1EwM0xC?=
 =?utf-8?B?WlA5WnBIN0FUMU5ITVpocE41NThTSTJqLzNJM0FVUmVTdVlkM29QTU1NaERU?=
 =?utf-8?B?bUJ5bUgycU9IUkU3OE9WSW1sN1MvZ0ZJcWVaeklkTHVJQytOdVkra29wcldH?=
 =?utf-8?B?ZmhFbjBrS3kvcDY2S3poNU9uaUtwY2o1U1pic2NQd1lzNkRJZTE4aFNJOXV3?=
 =?utf-8?B?elFkSGRMOTdTaUlMaFd0bXBwSE5UM3FoVGtGVm92TjcvZkRadG00a0ozY0lp?=
 =?utf-8?B?SzBNVUozSmtTamFkWktWYUtuanc5LzVHeVd5aHVSZXFuVUZhRGI1S2FySnd4?=
 =?utf-8?B?NS9vWjdrT0dEL3FaMlR6TmVkRHlmTWtGbVhncGpCTmdHM3Jub2JVYUQ2VGd4?=
 =?utf-8?B?QTFNcTFXSXhjMTduSjBBZElLR3RLMExZZ3ArdVpCUXJXK1FxWFl4V1IxSDdr?=
 =?utf-8?B?Qm1RNzZVSFZSRlp6T0VYMURucExVb3JpY3Z3MWUvUi9HSEVrMmRtaFhKTmVm?=
 =?utf-8?B?dys5WE5rdGs5T016WVVzSjJ6RlQxVmRCK2xiRG5HRVhld3I2cE13ZjNxbUov?=
 =?utf-8?B?VGpyM29iUVhEd2hrbmltV2ZUMXhSM0dJMFlFaE9CSElESExvSFdjck1mTk5E?=
 =?utf-8?B?dXk4bG9vSWNqRGVnbUhjQzNKVnBuU1ZMUVRHcDZMSmJ6TTZncFNHNXZDWnI5?=
 =?utf-8?B?RlFTd3RyWjZJZlE3UUhPeWhLa2twUFZ5cEU2WHVqSyszcTVCZVBWT3c5ZE1u?=
 =?utf-8?B?N3RQVnd3cnM1UFphQTdWS2xQWWFHdUZFTjYyVGtGeG0vTzJIaHFJa1g2S1ZG?=
 =?utf-8?B?dE43aUNHMUZKbkxXRlBjYlRWSWh0YTBDc2pKRDFQZUxUNHMxM2phUEVUK210?=
 =?utf-8?B?WEFaSjB1NklUaWNRUHE2d3B6eUM5ZVRBUWRCYlZaeEFaaVlWSEhyWHZiNjNW?=
 =?utf-8?B?dDNvNVorMlJSU3k5eGVhNGZBMGRUMjN2WmVMbWxzbWVvbzljbkRpMkQyemh6?=
 =?utf-8?B?eWxlN05pMlM3dTl3VlNQdGJnTE5kKzZseEpFMHRlZGdqYnd0azIyOEJiVzFD?=
 =?utf-8?B?RDBHN2ppblFjZTFZY0p0Y29Hbzk0Y05DSDcvMnR0MUg3c2h6cnJtclBYM21y?=
 =?utf-8?B?ZFhBR29xMTBmUENnL0pkbkhXakxWeDJKV0tzUkMrR2lqNVVKdy8rdkg2U0N0?=
 =?utf-8?B?V1dmRlc2M1ViYXpSdVhKVmN3d2lDSHhhWWRtWjgvVmxoSDNBenlyRjdJTU0z?=
 =?utf-8?B?eWwwTnFUdUZwaWN3eDJnenVoOWdqbVNVNk1JWkZhNzhSY0hDNHBqWndQTFhB?=
 =?utf-8?B?a1c0N0JHZkxHVm5iNnBLdkphTGNvK0YrVmQva3JXbEFMcmU5eDlIbVlSZWhn?=
 =?utf-8?B?ZjNEamU0WjlnbUZoYUdQM0VlQ1hmNG54RVZQOHlrd3owVm9KRHdpMHd4a2Zm?=
 =?utf-8?B?bmVvaTFlRFU0TDA5NGhVZ2tIbmZRa0tXVnh2eCtTbUc5YTRqYXR5a2ZJWlNm?=
 =?utf-8?Q?VT2z8THy6XhltbcRjuPxVrJaA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e40b8eff-aec8-41fd-8d84-08dc9b23f8e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2024 05:49:58.1013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rKR9FgcTVrQVHGRTSwbqvY8HrOERodl0PlblRlaCNH1rcEKKJkbdhviI/vwC0xEcW8t76pliKG65M9QKLRC91A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8122
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDAgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA1LzE0
XSBkcm0vaTkxNS9kc2I6IFNodWZmbGUgY29kZSBhcm91bmQNCj4gDQo+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBSZWxvY2F0ZSBp
bnRlbF9kc2JfZGV3YWtlX3NjYW5saW5lKCkgYW5kIGRzYl9jaGlja2VuKCkgdXB3YXJkcyBpbiB0
aGUgZmlsZS4NCj4gSSBuZWVkIHRvIHJldXNlIHRoZXNlIHdoaWxlIGVtaXR0aW5nIERTQiBjb21t
YW5kcywgYW5kIEknZCBsaWtlIHRvIGtlZXAgdGhlDQo+IERTQiBjb21tYW5kIGVtaXNzaW9uIHN0
dWZmIG1vcmUgb3IgbGVzcyBncm91cGVkIHRvZ2V0aGVyIGluIHRoZSBmaWxlLg0KPiANCj4gQWxz
byBkcm9wIHRoZSBpbnRlbF8gcHJlZml4IGZyb20gaW50ZWxfZHNiX2Rld2FrZV9zY2FubGluZSgp
IHNpbmNlIGl0J3MgYWxsDQo+IGludGVybmFsIHN0dWZmIGFuZCB0aHVzIGRvZXNuJ3QgbmVlZCBz
byBtdWNoIG5hbWVzcGFjaW5nLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBB
bmltZXNoIG1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA1NiArKysrKysrKysrKystLS0t
LS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAyOCBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0K
PiBpbmRleCBjZWUzM2M2NmEyNmIuLmQzZTVlNTI2MzYwMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC04Myw2ICs4MywzMyBAQCBzdHJ1Y3Qg
aW50ZWxfZHNiIHsNCj4gICNkZWZpbmUgRFNCX09QQ09ERV9QT0xMCQkJMHhBDQo+ICAvKiBzZWUg
RFNCX1JFR19WQUxVRV9NQVNLICovDQo+IA0KPiArc3RhdGljIGludCBkc2JfZGV3YWtlX3NjYW5s
aW5lKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0KPiAr
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBp
LmNydGMtPmRldik7DQo+ICsJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVk
X21vZGUgPSAmY3J0Y19zdGF0ZS0NCj4gPmh3LmFkanVzdGVkX21vZGU7DQo+ICsJdW5zaWduZWQg
aW50IGxhdGVuY3kgPSBza2xfd2F0ZXJtYXJrX21heF9sYXRlbmN5KGk5MTUsIDApOw0KPiArCWlu
dCB2Ymxhbmtfc3RhcnQ7DQo+ICsNCj4gKwlpZiAoY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkNCj4g
KwkJdmJsYW5rX3N0YXJ0ID0gaW50ZWxfdnJyX3ZtaW5fdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUp
Ow0KPiArCWVsc2UNCj4gKwkJdmJsYW5rX3N0YXJ0ID0gaW50ZWxfbW9kZV92Ymxhbmtfc3RhcnQo
YWRqdXN0ZWRfbW9kZSk7DQo+ICsNCj4gKwlyZXR1cm4gbWF4KDAsIHZibGFua19zdGFydCAtDQo+
IGludGVsX3VzZWNzX3RvX3NjYW5saW5lcyhhZGp1c3RlZF9tb2RlLA0KPiArbGF0ZW5jeSkpOyB9
DQo+ICsNCj4gK3N0YXRpYyB1MzIgZHNiX2NoaWNrZW4oc3RydWN0IGludGVsX2NydGMgKmNydGMp
IHsNCj4gKwlpZiAoY3J0Yy0+bW9kZV9mbGFncyAmIEk5MTVfTU9ERV9GTEFHX1ZSUikNCj4gKwkJ
cmV0dXJuIERTQl9TS0lQX1dBSVRTX0VOIHwNCj4gKwkJCURTQl9DVFJMX1dBSVRfU0FGRV9XSU5E
T1cgfA0KPiArCQkJRFNCX0NUUkxfTk9fV0FJVF9WQkxBTksgfA0KPiArCQkJRFNCX0lOU1RfV0FJ
VF9TQUZFX1dJTkRPVyB8DQo+ICsJCQlEU0JfSU5TVF9OT19XQUlUX1ZCTEFOSzsNCj4gKwllbHNl
DQo+ICsJCXJldHVybiBEU0JfU0tJUF9XQUlUU19FTjsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGJv
b2wgYXNzZXJ0X2RzYl9oYXNfcm9vbShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpICB7DQo+ICAJc3Ry
dWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+IEBAIC0zMTMsMzMgKzM0MCw2IEBA
IHZvaWQgaW50ZWxfZHNiX2ZpbmlzaChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpDQo+ICAJaW50ZWxf
ZHNiX2J1ZmZlcl9mbHVzaF9tYXAoJmRzYi0+ZHNiX2J1Zik7DQo+ICB9DQo+IA0KPiAtc3RhdGlj
IGludCBpbnRlbF9kc2JfZGV3YWtlX3NjYW5saW5lKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlDQo+ICpjcnRjX3N0YXRlKSAtew0KPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBpLmNydGMtPmRldik7DQo+IC0JY29uc3Qgc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPSAmY3J0Y19zdGF0ZS0NCj4gPmh3LmFk
anVzdGVkX21vZGU7DQo+IC0JdW5zaWduZWQgaW50IGxhdGVuY3kgPSBza2xfd2F0ZXJtYXJrX21h
eF9sYXRlbmN5KGk5MTUsIDApOw0KPiAtCWludCB2Ymxhbmtfc3RhcnQ7DQo+IC0NCj4gLQlpZiAo
Y3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkNCj4gLQkJdmJsYW5rX3N0YXJ0ID0gaW50ZWxfdnJyX3Zt
aW5fdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUpOw0KPiAtCWVsc2UNCj4gLQkJdmJsYW5rX3N0YXJ0
ID0gaW50ZWxfbW9kZV92Ymxhbmtfc3RhcnQoYWRqdXN0ZWRfbW9kZSk7DQo+IC0NCj4gLQlyZXR1
cm4gbWF4KDAsIHZibGFua19zdGFydCAtDQo+IGludGVsX3VzZWNzX3RvX3NjYW5saW5lcyhhZGp1
c3RlZF9tb2RlLCBsYXRlbmN5KSk7DQo+IC19DQo+IC0NCj4gLXN0YXRpYyB1MzIgZHNiX2NoaWNr
ZW4oc3RydWN0IGludGVsX2NydGMgKmNydGMpIC17DQo+IC0JaWYgKGNydGMtPm1vZGVfZmxhZ3Mg
JiBJOTE1X01PREVfRkxBR19WUlIpDQo+IC0JCXJldHVybiBEU0JfU0tJUF9XQUlUU19FTiB8DQo+
IC0JCQlEU0JfQ1RSTF9XQUlUX1NBRkVfV0lORE9XIHwNCj4gLQkJCURTQl9DVFJMX05PX1dBSVRf
VkJMQU5LIHwNCj4gLQkJCURTQl9JTlNUX1dBSVRfU0FGRV9XSU5ET1cgfA0KPiAtCQkJRFNCX0lO
U1RfTk9fV0FJVF9WQkxBTks7DQo+IC0JZWxzZQ0KPiAtCQlyZXR1cm4gRFNCX1NLSVBfV0FJVFNf
RU47DQo+IC19DQo+IC0NCj4gIHN0YXRpYyB1MzIgZHNiX2Vycm9yX2ludF9zdGF0dXMoc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSB0b19pOTE1KGRpc3BsYXktPmRybSk7IEBAIC01MzIsNw0KPiArNTMyLDcgQEAgc3Ry
dWN0IGludGVsX2RzYiAqaW50ZWxfZHNiX3ByZXBhcmUoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZQ0KPiAqc3RhdGUsDQo+ICAJZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ID0gMDsNCj4gDQo+ICAJZHNi
LT5od19kZXdha2Vfc2NhbmxpbmUgPQ0KPiAtCQlpbnRlbF9jcnRjX3NjYW5saW5lX3RvX2h3KGNy
dGNfc3RhdGUsDQo+IGludGVsX2RzYl9kZXdha2Vfc2NhbmxpbmUoY3J0Y19zdGF0ZSkpOw0KPiAr
CQlpbnRlbF9jcnRjX3NjYW5saW5lX3RvX2h3KGNydGNfc3RhdGUsDQo+ICtkc2JfZGV3YWtlX3Nj
YW5saW5lKGNydGNfc3RhdGUpKTsNCj4gDQo+ICAJcmV0dXJuIGRzYjsNCj4gDQo+IC0tDQo+IDIu
NDQuMg0KDQo=

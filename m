Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF10CC7C3A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 14:11:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F8BC10E05A;
	Wed, 17 Dec 2025 13:11:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="elp4LyYe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E929710E05A;
 Wed, 17 Dec 2025 13:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765977069; x=1797513069;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JWHkiobpD7aD9eKyJdfb0+fcpkw2/V2ElnKu7iMYfy8=;
 b=elp4LyYeICeN5pKLO4K11zBpPqDucXfjatZ7IBenPqyuMR+N/L0hstzn
 AZ+qHAtC4FFEPkNtZqTXoaVEQuRyVYggwR2hMIrHgIhmsvKvYOddoQBQO
 gSJasRPqWLVJmliwbolXxxq1roCUCGgfNXcgxw4BzrY6t4Bv8pqMNnYKB
 Rd8ZoD/P3lvAOair+nIpSVbiOh/aQ64QucsQNbJmvnCDH3eCa2rOujfn6
 hevef5wt3bNONe6LjPK3lPoSxs+BPVbT9ekSlHHA7IeBJkTUYomE1guAj
 Haj52XtFc59J1CnbWbSMveAdUihMS4+R5wWfdvMaaA+KX6Viaml9WBrs/ g==;
X-CSE-ConnectionGUID: ae1NfotCQVSga9jSkjNDSg==
X-CSE-MsgGUID: Rd19YBvHTbqQn/8MXyfgEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="67954827"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="67954827"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 05:11:08 -0800
X-CSE-ConnectionGUID: pLU6+hdkSN6ZAVBB/2ITtQ==
X-CSE-MsgGUID: +Aw+fwFBTZ6+ltA1s+RbSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="202678742"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 05:11:07 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 05:11:04 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 05:11:04 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.49) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 05:11:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YK6HHm9zlN5wlcz5KvMxIuOpLtvkI0xlqUUNhgbyztWk+fDqMO+/NQOiwfNZHxwpfTajxP//METtVQEVRkijARLeBZgXN0nbm56Jc2Y9Y9EQT2mjFA4wwFenoPDYPlqSL4T42GEfjFBq6S+4rkDzItitk6R+Luxf7dRfGRtqFd19MdLMLIrBdLaOQbNs5hKbpWKoY5ases80WJcPlV7Kb4RSl/bx/32L7EG+U68UBPMdlhtSNZrgKDs85KyMUzgm69GgCiARvK8b0fw1CVg/KNpQ4/S+54kYxdex8fS6AZv4rMLXO7bjgZDekBLk8l0EKI0J3wYcZmfGSg+5Aa+Lbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWHkiobpD7aD9eKyJdfb0+fcpkw2/V2ElnKu7iMYfy8=;
 b=M4cUQn+mvu8V/+EKB2mYncYNlbsdYJ39ziXcLrPyX0Y1nGnmi/SD7wr+GlHp9cgUT5OIOK88RMMgaDRf2rZ7PjXpeRHBxVID7l7pRPK5cXjZz81c9eCWq1e46h5XiBrNbTljIAf+dH7t8RqSw/2gB89qXTLKWG6oezNQilUxfaFts4+IVkJmZGiSMj0RCVinmcMR2KQ6fUbVdM7LZSJ9ZxHNptnddhqIHfssVKZj9Gfpoy/T7tmgG445l1rvbgnN+EJ0Ejwq24Z94o+6ptC3DeJxXBc8W0Rpw2dglEyM1W+N2vnIAKhGjOUzx2uIGu87tn+zjNg9YWPSFAdebqYIOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6674.namprd11.prod.outlook.com (2603:10b6:510:1ac::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.13; Wed, 17 Dec 2025 13:11:02 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 13:11:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
Thread-Topic: [PATCH 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
Thread-Index: AQHcWV12jdNbH6FUt0qwyEnRVQQX87Ul+nGA
Date: Wed, 17 Dec 2025 13:11:01 +0000
Message-ID: <dffd1c790c9c391c9b3c9afcaffd7ae04436528d.camel@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251119135152.673276-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6674:EE_
x-ms-office365-filtering-correlation-id: 0a38d688-01bc-4fcc-ede0-08de3d6dba3c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?eXF2ckY3SDFKeGpxSHREYklKYWwzWXZXSUtMUHl5djBuOWNmc2s4YmhlcFNx?=
 =?utf-8?B?aE9JNjBYcHFUaHZ1ZGdWU2VRRDhWYmd1akQ1Qk5CNFI4am9qY09sc2MwejYy?=
 =?utf-8?B?S1ZXTHhkMk1WZzBxaUk0SEdEN2M2QVMxQis1OTd4MDl1dE5EN2JOSTJjdUdx?=
 =?utf-8?B?RWd4WHFTTzJDdlVTemM4R0dGcEt1N1h6d2pscDhoTWRwMFZIUHI3UnBMYnh2?=
 =?utf-8?B?MDVWd0ZjRklybjJOVnZXdzBqYkZSdk81a2MxM2RRdzM4K0twSFRrRStCSHlz?=
 =?utf-8?B?QmdZME9RVmpjMlYwc2F4ekhSdTE2Njl2ZVFKSFhscWJBTTQxQWVERjhCQ3hU?=
 =?utf-8?B?VmNldFkrVFF3U0lvYmw3ZGFOQVdFUm5vTVBGbFlJTTNnL3E1TGZ6d1RiWER3?=
 =?utf-8?B?c0FNYkZBRFdGclBndEQyL3A2V2wyNmttRW13RXlMazRLWU1Bd3RRZ1lpQWpa?=
 =?utf-8?B?eXhxQ1dxMzc0U0lBamlNQnVDUGZOTEVaZSs5TzVhNDdOdE1uRTNuRnM0b01F?=
 =?utf-8?B?clhQTTU2Y2pySEh2U3dqNDdUZXVpRHZkdjIyVEhiREFRK2JLdkdheUhJUElN?=
 =?utf-8?B?OUhkanZzZTcwMEVreE9Fcmx0eHhBOExodmoyOE56SXBkU2JpWjdwL2IrRmVY?=
 =?utf-8?B?K2FOSmdLS3U0Zmh3RWd0a2VGQmttTHNTWFhCRkF5Nkx4dU9ORmdZUHJBQm80?=
 =?utf-8?B?d2MrRlhzalpzSHN0RTRCZTJjaXpmb090OFVaTm5URW95ekxMLzFGTjJpcjha?=
 =?utf-8?B?TkNVQVVpdUlaTmZXaSsvQndmckU0NDdVeVdpa0lHcEhkMnZHWVhhcjVDU0VS?=
 =?utf-8?B?Q21iT1RLVXRyUDliVWVScVlRV2ZZbHZMejNpa1VUaEZ2TTlFam1XZmNobUhS?=
 =?utf-8?B?Tno2K25JNmpIN0VRQ041MnFaMzlmQzNQdUJtd0pZM2ZnNk1mNng0SEhjSHls?=
 =?utf-8?B?VlE5N1QxbHF5eHdqYVc3WHZVeEtVWDNISytONW1tZ3dyMXV5U2cwTWtTK1NH?=
 =?utf-8?B?Mmh5NmRMRlJtSWpRNXFwdEltL1VWZmlsU0Y5OCt2QXBTcGZxYnpsbmNpUWZ0?=
 =?utf-8?B?dTVkUEd0VG4zVUxxN1hDdXAxK0pHaVYwMU8yMTF4RmpVREdyWFFEVkFnb2pT?=
 =?utf-8?B?RFJka0FOc2tpYWRmekgySnUzazlMSXZ6MGMxbC9aazhUS2FVaVlRbk9FbEgy?=
 =?utf-8?B?SVJpVjhqeFRjeVpLN3gvZisraTB2Q2N6d2N1bFp4eVM0b0ZyNnRFbHc2VHQ3?=
 =?utf-8?B?c2E5Ylg2UTQ1ZERBRHR1d2VrL2sxVjlYOExqcmo0V2d2L3VsOG13U25wclZv?=
 =?utf-8?B?OUU1SXlHVWV5THplcnBtY1hpbmNORmh6Y1RnSmFZRXVUVEx2VW1waFhCVkxY?=
 =?utf-8?B?Nkt6eGd1bHMxMzVYTDYvR3YvQU10YnRpRUdxMDBCdUZ5ejM2OE42aWROOVRV?=
 =?utf-8?B?ZnNDVTg1RmhYblcyYnpXTFplejVLWmZpM2dtbVlSNXhPRWRNNnlvbXZ1TWs5?=
 =?utf-8?B?RGlxUUpucElNUnphc2VGMUEvSk1ZOGp5NmNsc2ZJSkVmdE1QUy9Ob0RBbUxo?=
 =?utf-8?B?c1hYUFNyN1hJcktvUWx0eWtSbTJBV2pwSTFMRnhmY2JtSHlFSzdiR3g0WXZh?=
 =?utf-8?B?R1AvN2M3TEVQdWNPMFVuVWVzOFBocnFDcU5EcWRvbkJGekU2M0FDdGlKSnhJ?=
 =?utf-8?B?cmRGUWpTU0JYWmZNMVZPTDE1TzdwUWd6aUxzRHFma0ZPdnNrVmhPbG94SEli?=
 =?utf-8?B?SlQvdFB0QW5MeTNoYmNreldIbU5LMFJLdzRGb1pwTXpJbTR4a3RzS0F2ZTB4?=
 =?utf-8?B?T1VaZ0RvS2crbDUwanN2NnZmNWZlejJyMGEyT1ZDMjlWelFyeDRScXlONnI0?=
 =?utf-8?B?b0NMTDVnd0NxSXhEVXgzNHVjVlk3ckEvUi9EMU9wM21qZmdHRjZ0dElvQnBZ?=
 =?utf-8?B?aXFNVUx0NDZ3eXUxa2V1bmdUSk45dE5GbDEwOFdod0lCNXA3NGlrWHdLcFlK?=
 =?utf-8?B?eFFPdjdmbnBUK3A0SVdwbU1iV1dIZTdkUm9SNUUrME5WWmNZWjZobG5oT2xJ?=
 =?utf-8?Q?qeJ1as?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZVU0R1lhTzZMVWpIM3MwWVFSaVIzcWtIQjlTdmFYdFlVUFdjYTRCeW1oU2ZF?=
 =?utf-8?B?WEdrdnVBV080a1VJMTdLVXBUUmFaWSsvekZJWFVEMjVsbUJ1QllXcEdEaGx4?=
 =?utf-8?B?ZmRsMjNXcUtJcFRFbytsUHhVZTQ1UGNCU1FxWmdJUFFwUXYzNG00RFg1My80?=
 =?utf-8?B?dVFoeC9YWEE2UDgzVUpoMlFkOUNpaUtvVHJyWXNEWkhyTHFaVFNBWTBUUjI4?=
 =?utf-8?B?S2ZYT0FMT3A1YXJjbWNpdFRKWXJySVh5MU1wU01IMk9vMkt4MDZ1QXVUTktZ?=
 =?utf-8?B?VlJld01hVFRFaDdnN0RtdVh5a1lNQUxJYXJpRjR2aEtYb1dtZElDMHIrOFVP?=
 =?utf-8?B?aFdpZS95VmdoeGpBQXVtQytvNmxjSUorZkgyeHNvb3JXTmVXQ2g4dldVd1pE?=
 =?utf-8?B?RXIwY2FwcTNoVHVqdTRtNjUrbHkxS1lvNFlWd2Q2T24zeWFhUGd6cVhtNEJS?=
 =?utf-8?B?T0gzd3FGeThtK3M2RUdNR2JuY2Z2SmZ2MGRhTysvMVFvdXo4eS9CUHFqa3Qz?=
 =?utf-8?B?aFNGNklPNVJpdy9IZmpIS1M3TkFRZXhsZTBhQkVTTi85NWp4VU00a2JPSjNp?=
 =?utf-8?B?MkhnbU1wWXpaVGlQNXd3YytHb3ZIdVVJZCsrdW1qT3ArclNTRjJuYmFYdXZR?=
 =?utf-8?B?amVrRXdiNFJvalp2UXdMbnJCV3FpWENoMTlJUXFmUWpjUHlSa2trcmdvRVFw?=
 =?utf-8?B?OUcwbWtERHpnSk5XSzd0ZXBuOG5qNWs3S2hpTVZxTWdvbnBvRnhzRlRoWURq?=
 =?utf-8?B?U3hkVmRGQXh2YnhkSm11MFZOUkFaeFdvVmY2b3JQbENnenlUYWUzWTEwc1lu?=
 =?utf-8?B?VUtzZHFOYXJGclFzWS9HZVRvMUtWbUZWeVd1clJ1clhnTEhPL0lXU2VkVEVD?=
 =?utf-8?B?OS92c1hsQnlwbDNzOWpEeVlINUJobit0blZ5WUVlNzRBeW5lOEhUUWVlekZY?=
 =?utf-8?B?a01zYUhWM010bTY2RTlBRkxSdTVRaTcxcFFRNUFTcUdEMnZsVW00SXNQOVY3?=
 =?utf-8?B?WXZsdTlYNkRGZmVQVlZ3dU54RTJJZDFoTkt0bmNDcUhRN3BFSjdvN1FuVWNa?=
 =?utf-8?B?TzBWTDJvYkRLVVhuQ3hFNGpLSWlTbWJNdlBxaFhYdnBBUmRqQlM2NXhxZ3RC?=
 =?utf-8?B?aDNENUl1MnArYmwzejZDOXdDaUpjeFZWQmxQclpKK1E1Sjl5YTJiNFFUbjlp?=
 =?utf-8?B?Um91WkI2U0NiQmJNYkt2UERXQ0xoY054SFhHSnJsaGUvdUo1MUdRNUZzSGZo?=
 =?utf-8?B?RndPaUZ0RGJwOCtKWCtZd3ZheVYwSng4Zml2QWpSemJvdmlsNzBpSzYrSEdX?=
 =?utf-8?B?SzFWUXdsaEdXM21iYkNGTWZKQm15K1lUak1EZGJqemtpbVR2YnVBUGtvMmVl?=
 =?utf-8?B?cENmQzBzTCtlZWRLazA0ZUo1eUNGQ1FMbjJxYnJFK2xMZm9PY0NlODNIemZk?=
 =?utf-8?B?KzUrbWJreERIajZneEJzbDRwQlVYS0JocVVScmhYZWIyT3ZQN0FaU2ZxNXBs?=
 =?utf-8?B?cnNoU2ZuZUhmdDVjVk1aNDhYaU1BdmNBejlTM1VNekgvNVNCVmM5K0Qzb2d3?=
 =?utf-8?B?bXdSMXl1TTB3UytPTitGWXNiZzNwTTNQd1o2U0dVNUMwbUpseVBEMUlzSWJW?=
 =?utf-8?B?V2FHOXhXeXZxRUpiL1dPL2dLVUNaTW9xSjRoTWczdVQ5Z0p6bU1iUC8ybWtT?=
 =?utf-8?B?Uy9vbndObFN5MThpNkJUdE5TeXYxWlBReHBOK1FzdUdKaVJMbnpoZUtHTXNE?=
 =?utf-8?B?U1c3dnJnTjd4YzFYNXdFaWRxNHZlekdmbytoa25IUElWaUNrMFdGWHFIMjVL?=
 =?utf-8?B?b0Y5ZUViSmoyaSt5ZHRaYUk0cjhDU2xqMjFOZTBYQmEvNDdDUExKZXVuZktj?=
 =?utf-8?B?aUxUTDQxZmdEZTQ3dnlqWVVzRzNGSnAzS1R5TUtUaTI0VUpwZzFnY2VHbUdr?=
 =?utf-8?B?SlJGakFBVDI3Nk90Z2dLWjI4YkI4L0VDSThSdUdDcnkxaUgxckRMWk1ibGJR?=
 =?utf-8?B?L3BnNVVyOVBKM2szeXhxaTJjaWx0cnAzT0ZsazZwQWRHWWFxNXdCcGRteDZH?=
 =?utf-8?B?YWtoN0ZUZnJYeDR0Tzg5MkdKcmYxU1FXUk5XbzRQREpUNWRHa2tuN3JQb3hh?=
 =?utf-8?B?a1RBaVhHSTJFcnlmd0xXTkpSSjR1UHNRSnNlV0I3dFNoQWxGK3dXTG9JUS9m?=
 =?utf-8?B?aFprKzdHZy9QWFB4KzhiSVQxenVrQ0ZxNFlMb081akpSNlE1N0JDUmovS2Z0?=
 =?utf-8?B?QjlPVExXQVFmUUNPaWJQV3pNbnBRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6103AEE2424D234492DDF6A55BAAF9FD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a38d688-01bc-4fcc-ede0-08de3d6dba3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2025 13:11:01.8207 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PQZ4hGJYYeVSvZoRitSjg6ApDYIyTxfDqupeHcDOuks8MupD62JfpDmGbn1Lo+hRaHxmAkDKNxW8xmYQwK2WYhBYMDUpD0a5It4jqUrww3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6674
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

T24gV2VkLCAyMDI1LTExLTE5IGF0IDE5OjIxICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gQ3VycmVudGx5IGludGVsX2FscG1fbG9iZl9jb21wdXRlX2NvbmZpZygpIHRyaWVzIHRvIGFj
Y291bnQgZm9yDQo+IGd1YXJkYmFuZCArU0NMIHJlcXVpcmVtZW50cyBkdXJpbmcgZW5jb2Rlci0+
Y29tcHV0ZV9jb25maWcoKSBwaGFzZSwNCj4gZXZlbiBiZWZvcmUgZ3VhcmRiYW5kIGlzIGNvbXB1
dGVkLg0KPiBBbHNvLCBMT0JGIGRlcGVuZHMgb24gY3J0Y19zdGF0ZS0+aGFzX3BzciB3aGljaCBj
YW4gYmUgbW9kaWZpZWQgaW4NCj4gZW5jb2Rlci0+Y29tcHV0ZV9jb25maWdfbGF0ZSgpLg0KPiAN
Cj4gQWNjb3VudCBmb3IgbG9iZiByZXF1aXJlbWVudHMgd2hpbGUgb3B0aW1pemluZyB0aGUgZ3Vh
cmRiYW5kIGFuZCBhZGQNCj4gY2hlY2tzIGZvciBmaW5hbCBndWFyZGJhbmQgaW4gZW5jb2Rlci0+
Y29tcHV0ZV9jb25maWdfbGF0ZSgpIHBoYXNlDQo+IGFmdGVyDQo+IHRoZSBndWFyZGJhbmQgYW5k
IHRoZSBmaW5hbCBzdGF0ZSBvZiBjcnRjX3N0YXRlLT5oYXNfcHNyIGFyZSBhbHJlYWR5DQo+IGNv
bXB1dGVkLg0KPiANCj4gVXNlIGNydGNfc3RhdGUtPnZyci5ndWFyZGJhbmQgYW5kIGNydGNfc3Rh
dGUtPnNldF9jb250ZXh0X2xhdGVuY3kgZm9yDQo+IHRoZSBjb21wdXRhdGlvbiBhbmQgYWRkIG1v
cmUgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIGRlcGVuZGVuY3kgb2YNCj4gZmlyc3QNCj4gc2RwIHBv
c2l0aW9uLCBndWFyZGJhbmQsIHNldCBjb250ZXh0IGxhdGVuY3kgYW5kIHdha2UgbGluZXMuDQo+
IA0KPiB2MjogQWRkIGhlbHBlciB0byB1c2UgbWluIGd1YXJkYmFuZCByZXF1aXJlZCBmb3IgbG9i
Zi4NCj4gDQo+IEJzcGVjOjcxMDQxDQo+IFNpZ25lZC1vZmYtYnk6IEFua2l0IE5hdXRpeWFsIDxh
bmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoCB8IDYzICsrKysrKysrKysrKysrKysrLS0tDQo+IC0t
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmjCoCB8wqAgMyAr
Kw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoCB8wqAg
MiArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9pbnRlbC5jIHzCoCAw
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuY8KgwqAgfMKgIDIg
Kw0KPiDCoDUgZmlsZXMgY2hhbmdlZCwgNTYgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0p
DQo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaW50ZWwuYw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmMNCj4gaW5kZXggNjM3MmY1MzNmNjViLi45OGNiZjVkZGU3M2IgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0xNSw2ICsxNSw3IEBA
DQo+IMKgI2luY2x1ZGUgImludGVsX2RwX2F1eC5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9wc3Iu
aCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfcHNyX3JlZ3MuaCINCj4gKyNpbmNsdWRlICJpbnRlbF92
cnIuaCINCj4gwqANCj4gwqAjZGVmaW5lIFNJTEVOQ0VfUEVSSU9EX01JTl9USU1FCTgwDQo+IMKg
I2RlZmluZSBTSUxFTkNFX1BFUklPRF9NQVhfVElNRQkxODANCj4gQEAgLTI0OCwxNCArMjQ5LDU4
IEBAIGJvb2wgaW50ZWxfYWxwbV9jb21wdXRlX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmlu
dGVsX2RwLA0KPiDCoAlyZXR1cm4gdHJ1ZTsNCj4gwqB9DQo+IMKgDQo+ICtpbnQgaW50ZWxfYWxw
bV9sb2JmX21pbl9ndWFyZGJhbmQoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3Rh
dGUpDQo+ICt7DQo+ICsJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPSAm
Y3J0Y19zdGF0ZS0NCj4gPmh3LmFkanVzdGVkX21vZGU7DQo+ICsJaW50IGZpcnN0X3NkcF9wb3Np
dGlvbiA9IGFkanVzdGVkX21vZGUtPmNydGNfdnRvdGFsIC0NCj4gKwkJCQkgYWRqdXN0ZWRfbW9k
ZS0+Y3J0Y192c3luY19zdGFydDsNCj4gKwlpbnQgd2FrZXRpbWVfaW5fbGluZXMgPSBtYXgoY3J0
Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuaW9fd2FrZV9saW5lcywNCj4gKwkJCQnCoMKgwqAgY3J0
Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuYXV4X2xlc3Nfd2FrZV9saW5lcyk7DQoNCkkgdGhpbmsg
d2Ugc2hvdWxkIGZpeCB0aGlzIHRvIHVzZSBwcm9wZXIgdmFsdWUgaW5zdGVhZCBvZiBqdXN0IG1h
eC4gQXQNCnRoaXMgcG9pbnQgRklYTUUgd291bGQgYmUgZW5vdWdoLg0KDQo+ICsNCj4gKwlpZiAo
IWNydGNfc3RhdGUtPmhhc19sb2JmKQ0KPiArCQlyZXR1cm4gMDsNCj4gKw0KPiArCXJldHVybiBm
aXJzdF9zZHBfcG9zaXRpb24gKyB3YWtldGltZV9pbl9saW5lcyArIGNydGNfc3RhdGUtDQo+ID5z
ZXRfY29udGV4dF9sYXRlbmN5Ow0KPiArfQ0KPiArDQo+ICt2b2lkIGludGVsX2FscG1fbG9iZl9j
b21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICsJCQkJCSBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gK3sNCj4gKwlzdHJ1Y3Qg
ZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLQ0KPiA+aHcuYWRq
dXN0ZWRfbW9kZTsNCj4gKwlpbnQgd2FrZXRpbWVfaW5fbGluZXMsIGZpcnN0X3NkcF9wb3NpdGlv
bjsNCj4gKw0KPiArCWlmICghY3J0Y19zdGF0ZS0+aGFzX2xvYmYpDQo+ICsJCXJldHVybjsNCj4g
Kw0KPiArCS8qDQo+ICsJICogTE9CRiBjYW4gb25seSBiZSBlbmFibGVkIGlmIHRoZSB0aW1lIGZy
b20gdGhlIHN0YXJ0IG9mDQo+IHRoZSBTQ0wrR3VhcmRiYW5kDQo+ICsJICogd2luZG93IHRvIHRo
ZSBwb3NpdGlvbiBvZiB0aGUgZmlyc3QgU0RQIGlzIGdyZWF0ZXIgdGhhbg0KPiB0aGUgdGltZSBp
dCB0YWtlcw0KPiArCSAqIHRvIHdha2UgdGhlIG1haW4gbGluay4NCj4gKwkgKg0KPiArCSAqIFBv
c2l0aW9uIG9mIGZpcnN0IHNkcCA6IHZzeW5jX3N0YXJ0DQo+ICsJICogc3RhcnQgb2Ygc2NsICsg
Z3VhcmRiYW5kIDogdnRvdGFsIC0gKHNjbCArIGd1YXJkYmFuZCkNCj4gKwkgKiB0aW1lIGluIGxp
bmVzIHRvIHdha2UgbWFpbiBsaW5rIDogd2FrZXRpbWVfaW5fbGluZXMNCj4gKwkgKg0KPiArCSAq
IFBvc2l0aW9uIG9mIGZpcnN0IHNkcCAtIHN0YXJ0IG9mIChzY2wgKyBndWFyZGJhbmQpID4gdGlt
ZQ0KPiBpbiBsaW5lcyB0byB3YWtlIG1haW4gbGluaw0KPiArCSAqIHZzeW5jX3N0YXJ0IC0gKHZ0
b3RhbCAtIChzY2wgKyBndWFyZGJhbmQpKSA+DQo+IHdha2V0aW1lX2luX2xpbmVzDQo+ICsJICog
dnN5bmNfc3RhcnQgLSB2dG90YWwgKyBzY2wgKyBndWFyZGJhbmQgPg0KPiB3YWtldGltZV9pbl9s
aW5lcw0KPiArCSAqIHNjbCArIGd1YXJkYmFuZCA+IHdha2V0aW1lX2luX2xpbmVzICsgKHZ0b3Rh
bCAtDQo+IHZzeW5jX3N0YXJ0KQ0KPiArCSAqLw0KPiArCWZpcnN0X3NkcF9wb3NpdGlvbiA9IGFk
anVzdGVkX21vZGUtPmNydGNfdnRvdGFsIC0NCj4gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192c3luY19z
dGFydDsNCj4gKwlpZiAoaW50ZWxfYWxwbV9hdXhfbGVzc193YWtlX3N1cHBvcnRlZChpbnRlbF9k
cCkpDQo+ICsJCXdha2V0aW1lX2luX2xpbmVzID0gY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUu
aW9fd2FrZV9saW5lczsNCj4gKwllbHNlDQo+ICsJCXdha2V0aW1lX2luX2xpbmVzID0gY3J0Y19z
dGF0ZS0NCj4gPmFscG1fc3RhdGUuYXV4X2xlc3Nfd2FrZV9saW5lczsNCj4gKw0KPiArCWNydGNf
c3RhdGUtPmhhc19sb2JmID0gKGNydGNfc3RhdGUtPnNldF9jb250ZXh0X2xhdGVuY3kgKw0KPiBj
cnRjX3N0YXRlLT52cnIuZ3VhcmRiYW5kKSA+DQo+ICsJCQnCoMKgwqDCoMKgwqAgKGZpcnN0X3Nk
cF9wb3NpdGlvbiArDQo+IHdha2V0aW1lX2luX2xpbmVzKTsNCg0KTm93IGlmIGNydGNfc3RhdGUt
Pmhhc19sb2JmIGlzIHN3aXRjaGluZyB0byBmYWxzZSBhdCB0aGlzIHBvaW50IHdlDQpzdGlsbCBo
YXZlIGxvYmYgZ3VhcmRiYW5kIHJlcXVpcmVtZW50IGluY2x1ZGVkIGluIG91ciBvcHRpbWl6ZWQN
Cmd1YXJkYmFuZC4gSXMgdGhhdCBvaz8NCg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiArfQ0K
PiArDQo+IMKgdm9pZCBpbnRlbF9hbHBtX2xvYmZfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gwqAJCQkJwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+
ICpjcnRjX3N0YXRlLA0KPiDCoAkJCQnCoMKgwqAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUN
Cj4gKmNvbm5fc3RhdGUpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiAtCXN0cnVjdCBkcm1fZGlzcGxheV9t
b2RlICphZGp1c3RlZF9tb2RlID0gJmNydGNfc3RhdGUtDQo+ID5ody5hZGp1c3RlZF9tb2RlOw0K
PiAtCWludCB3YWtldGltZV9pbl9saW5lcywgZmlyc3Rfc2RwX3Bvc2l0aW9uOw0KPiAtCWludCBj
b250ZXh0X2xhdGVuY3ksIGd1YXJkYmFuZDsNCj4gwqANCj4gwqAJaWYgKGludGVsX2RwLT5hbHBt
LmxvYmZfZGlzYWJsZV9kZWJ1Zykgew0KPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAi
TE9CRiBpcyBkaXNhYmxlZCBieSBkZWJ1Zw0KPiBmbGFnXG4iKTsNCj4gQEAgLTI4OCwxNyArMzMz
LDcgQEAgdm9pZCBpbnRlbF9hbHBtX2xvYmZfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVs
X2RwICppbnRlbF9kcCwNCj4gwqAJaWYgKCFpbnRlbF9hbHBtX2NvbXB1dGVfcGFyYW1zKGludGVs
X2RwLCBjcnRjX3N0YXRlKSkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gLQljb250ZXh0X2xhdGVu
Y3kgPSBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZibGFua19zdGFydCAtDQo+IGFkanVzdGVkX21vZGUt
PmNydGNfdmRpc3BsYXk7DQo+IC0JZ3VhcmRiYW5kID0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192dG90
YWwgLQ0KPiAtCQnCoMKgwqAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y192ZGlzcGxheSAtIGNvbnRleHRf
bGF0ZW5jeTsNCj4gLQlmaXJzdF9zZHBfcG9zaXRpb24gPSBhZGp1c3RlZF9tb2RlLT5jcnRjX3Z0
b3RhbCAtDQo+IGFkanVzdGVkX21vZGUtPmNydGNfdnN5bmNfc3RhcnQ7DQo+IC0JaWYgKGludGVs
X2FscG1fYXV4X2xlc3Nfd2FrZV9zdXBwb3J0ZWQoaW50ZWxfZHApKQ0KPiAtCQl3YWtldGltZV9p
bl9saW5lcyA9IGNydGNfc3RhdGUtDQo+ID5hbHBtX3N0YXRlLmlvX3dha2VfbGluZXM7DQo+IC0J
ZWxzZQ0KPiAtCQl3YWtldGltZV9pbl9saW5lcyA9IGNydGNfc3RhdGUtDQo+ID5hbHBtX3N0YXRl
LmF1eF9sZXNzX3dha2VfbGluZXM7DQo+IC0NCj4gLQljcnRjX3N0YXRlLT5oYXNfbG9iZiA9IChj
b250ZXh0X2xhdGVuY3kgKyBndWFyZGJhbmQpID4NCj4gLQkJKGZpcnN0X3NkcF9wb3NpdGlvbiAr
IHdha2V0aW1lX2luX2xpbmVzKTsNCj4gKwljcnRjX3N0YXRlLT5oYXNfbG9iZiA9IHRydWU7DQo+
IMKgfQ0KPiDCoA0KPiDCoHN0YXRpYyB2b2lkIGxubF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hbHBtLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uaA0KPiBpbmRleCA1MzU5OWI0NjRkZWEuLjE0ZGM0OWZlZTRjMyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gQEAgLTM4LDQgKzM4LDcg
QEAgYm9vbCBpbnRlbF9hbHBtX2lzX2FscG1fYXV4X2xlc3Moc3RydWN0IGludGVsX2RwDQo+ICpp
bnRlbF9kcCwNCj4gwqAJCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRj
X3N0YXRlKTsNCj4gwqB2b2lkIGludGVsX2FscG1fZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKTsNCj4gwqBib29sIGludGVsX2FscG1fZ2V0X2Vycm9yKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApOw0KPiArdm9pZCBpbnRlbF9hbHBtX2xvYmZfY29tcHV0ZV9jb25maWdfbGF0ZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJCQkgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gKmNydGNfc3RhdGUpOw0KPiAraW50IGludGVsX2FscG1fbG9iZl9taW5fZ3VhcmRiYW5k
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gwqAjZW5kaWYNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCAwZWM4MmZj
YmNmNDguLjc4MmU5ODFiYmM4OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiBAQCAtNzAyMCw2ICs3MDIwLDggQEAgaW50IGludGVsX2RwX2NvbXB1dGVf
Y29uZmlnX2xhdGUoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IMKgCWlmIChy
ZXQpDQo+IMKgCQlyZXR1cm4gcmV0Ow0KPiDCoA0KPiArCWludGVsX2FscG1fbG9iZl9jb21wdXRl
X2NvbmZpZ19sYXRlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gKw0KPiDCoAlyZXR1cm4gMDsN
Cj4gwqB9DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ludGVsLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2lu
dGVsLmMNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi5lNjlk
ZTI5YmIyZDENCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdnJyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+
IGluZGV4IGI5MmM0MmZkZTkzNy4uZmNlY2RmM2RjNzhjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gQEAgLTYsNiArNiw3IEBADQo+IMKgDQo+IMKg
I2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4NCj4gwqANCj4gKyNpbmNsdWRlICJpbnRlbF9hbHBt
LmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2RlLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2Rpc3Bs
YXlfcmVncy5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+IEBAIC00
NTEsNiArNDUyLDcgQEAgaW50IGludGVsX3Zycl9jb21wdXRlX29wdGltaXplZF9ndWFyZGJhbmQo
c3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IMKgCWlmIChpbnRlbF9j
cnRjX2hhc19kcF9lbmNvZGVyKGNydGNfc3RhdGUpKSB7DQo+IMKgCQlndWFyZGJhbmQgPSBtYXgo
Z3VhcmRiYW5kLA0KPiBpbnRlbF9wc3JfbWluX2d1YXJkYmFuZChjcnRjX3N0YXRlKSk7DQo+IMKg
CQlndWFyZGJhbmQgPSBtYXgoZ3VhcmRiYW5kLA0KPiBpbnRlbF9kcF9zZHBfbWluX2d1YXJkYmFu
ZChjcnRjX3N0YXRlLCB0cnVlKSk7DQo+ICsJCWd1YXJkYmFuZCA9IG1heChndWFyZGJhbmQsDQo+
IGludGVsX2FscG1fbG9iZl9taW5fZ3VhcmRiYW5kKGNydGNfc3RhdGUpKTsNCj4gwqAJfQ0KPiDC
oA0KPiDCoAlyZXR1cm4gZ3VhcmRiYW5kOw0KDQo=

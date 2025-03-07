Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F59A56903
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:32:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2C210E181;
	Fri,  7 Mar 2025 13:32:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jTcdSCNj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00C310E181;
 Fri,  7 Mar 2025 13:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741354353; x=1772890353;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SmWiBrTIse9n7vH/HMLEn45NGJoCsRNsifH8XR5YUKo=;
 b=jTcdSCNjnSBqVJefeQoYqluLrK/S1PVAwI7gfD1x7QnQ9ZkTK+L0uSmG
 dgxsrutzoxQwp9e3yRPNTm+nR3VrP1649gdH1v0bxDEC6x/p/VdHoModC
 qoNIDt8G5McIQKX4BFMsL1KAIfP0Nc8jl24klY05Pdqv5FyMRCOeIDRKm
 rT4mazuLzhBd+8hWh20Q282XWcIoa8qxTfttSIctUmQN8U9wsWbCsJqHv
 1DQTj52salKh7fd1ayOxPMcqcxpXckDMn+UeAQJiS6t4oj4XCWM+YHzOZ
 mpKKj826jbZ73HuGSGUJehgpxpWQRbidSSHIxGZOaW+tJmydRWorsj9vB A==;
X-CSE-ConnectionGUID: KgLsBByHQq+kYVnQ241Zaw==
X-CSE-MsgGUID: AbhaGzDAT0m4cEOkLYRcqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42436374"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42436374"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 05:32:32 -0800
X-CSE-ConnectionGUID: 5cX27qMBQ+ehk0RHCQl7Lw==
X-CSE-MsgGUID: Wbs8/wuaR2yogoDZLL4dNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="119152532"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 05:32:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 7 Mar 2025 05:32:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 7 Mar 2025 05:32:30 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 05:32:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GnrN9SSpGmjiZUxwTmAfjMA6jIXpi5tYl80y2Kf26VzgPjOP+u2yifS+Ylvy1vUZHgT6qe5TbeRy4rqoZOqGCFMKcJZ8CiZMU0/suziF3iQ8R3cKvWd+DbNKRodtRvnrQz6o4SXjgIbDoPrCTzxQw12vafH76sQ9hQ/JxT0pY1PUfGvaq4qVBfI0PSQxZatfLW4fg3BsQ3FLJFGjBqn2NdY0PtMMoSSdSvb5USIfZaaEsvfH200xZLzuwhCfJEB6BrPVhGkOs/vsSArUGPVVlHo08CY9h7PCd8olmGRoRPst7j8dsxKoyGySv2/x5wSZdhKGjcM8I1yKlv8vggBy3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SmWiBrTIse9n7vH/HMLEn45NGJoCsRNsifH8XR5YUKo=;
 b=vAqh3KSZ/UqulRvy/JgnA/TlS33Lk6Q2ZaLaTudY/bxs3RoWBk152uKMqVi+cZFs835eS9VT9BNVXOVkZrsmFyfmf5x9eM/SC1qYWJLtxiKAI6f+P/OC/UQxk1UQAqaiz9k9axEbGUdxGtlHASVMIcy80U0DzskM7f7kBNUlKIKVmJHbzQjkbRyL4QeXzjs4pT2t1ekqSQeRasUNaqTbBOXmOUiGhicOeMKf6fZhq5YEJpbAaAXC4InkqmNhthO27xhg1KQ67XUgyhbbQAEEbnqVUSyC2yGGo8TDYfgDLUM0i8bv2TUhe0iQeZKfVRxoWFiVzynqGHob8XBnQChMqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6680.namprd11.prod.outlook.com (2603:10b6:806:268::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Fri, 7 Mar
 2025 13:32:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8511.019; Fri, 7 Mar 2025
 13:32:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v5 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v5 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbjBpZSydiO3wcjk6wT4fJpkh/fbNnsoYA
Date: Fri, 7 Mar 2025 13:32:28 +0000
Message-ID: <cdf0aeaca85eec62f84100898f9f87d0ad9b57fc.camel@intel.com>
References: <20250303083522.845224-1-animesh.manna@intel.com>
 <20250303083522.845224-5-animesh.manna@intel.com>
In-Reply-To: <20250303083522.845224-5-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6680:EE_
x-ms-office365-filtering-correlation-id: e8d1df04-a88f-42e3-fa70-08dd5d7c819b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aHorZ1d0Yml6VVUzMlFNUFQveVVFU1FwUHg1OEx5TFBzT1JlOHNvSXZGZVFq?=
 =?utf-8?B?Q1FxUU5xM3JBNlkyemtxcE5rUTVjNUZWZkw1T3EvSENJcWVGVzdiNm9pa2k1?=
 =?utf-8?B?UXRsOGVJcHhQZTJEM3FzSWM3OEZ4U1FmUm5mM0NHeE9XcnU0bTB1RjBmd1ds?=
 =?utf-8?B?MWJ2cHZhYStYdnF6bGl2QlNkZlBabVE2dkpiT0RXV3lUOE5oWVpJOWNob3J1?=
 =?utf-8?B?WG5KTTE2MDFwTy9TYkpwZ0pLN3I4RitNdW5Ldmp5c0tJd1p4ZWd6N2VTcVUx?=
 =?utf-8?B?RnVPTzlhODRmb0ZxN2JVNG1xZk4rTjdIeWRTMFJxa2F5YWFlZlZTWjM2aWMw?=
 =?utf-8?B?RkkvSFdrTXU0alYya3ozbUMvSm5NZG9Vb1ltQmplUU55ZG1lMStQUDJWZmJQ?=
 =?utf-8?B?a1JFRUMrbHc2TFQvdTRXMFNNZnV4S0s5NmF0ZnAxSzhQQjU5RGpjck5OdFZi?=
 =?utf-8?B?VWIrYWllcVEwQ0oybHg0ZDQ0dTZ2VE8rTTRBcm52R3R0OVByR3JBd3F4ZE5X?=
 =?utf-8?B?TzEyd0JoQzVzWTNFbnZBSURZRmdkcGVEdzFYNFBPYWxWelNDZ1doRFgzZ2lk?=
 =?utf-8?B?WEZla2FJRjIvRjhWK0tNZEJIRWcrU3JoVGJ2MWRaQmY3bXpQV3ZSTDRCaWlP?=
 =?utf-8?B?NS9PY3dYL2c1UUpPekF5Tm9ZUjA2aG1JS1ZubFRPQnRybnRRa1Z3a1AwQzR0?=
 =?utf-8?B?OWJqZnN5NytPeGpleTUzQ0xtcWlzQlppeUFFWUxQZ2hHZE16U01iMDRPYjVv?=
 =?utf-8?B?OFpWZXBob24yUk13Wk41UC9zSTJsUTdYQW1tMG5PM0xxQVVqMWZwamQxMjZX?=
 =?utf-8?B?NmF4QzR5aGF3ZEJuZmtWR2plWGZVY3JMb1FQbGRqUDJDZXF1cnpNNTNpcU4r?=
 =?utf-8?B?cE1xa3ZVbVlwZ2VNYVMxdzlwWUdHbjhaVkxVZHBUOHplL0lMUkpNdWtnTzlj?=
 =?utf-8?B?d3RLVmxLNkY4a2lvZG1hU2Z2S2RqYzIrNHphQXRFZzZ5MjJONUNqQW1YdFpJ?=
 =?utf-8?B?WVF2cmFWdm1aNmdXL0VmOEo3MkhVcWJqSTZlWlIyUUl1bm1ET1pObWNwSVE5?=
 =?utf-8?B?ZVBaZHRrWjhZK0xKM2szbmFpVXJsNVlUVnp0bEErbVhiMjlna3V0c3l4OHRv?=
 =?utf-8?B?REQzMER4RDcwSjVTa09aNzh1K0d0NkRXK3p3NWRJMVk5OHlJQkNTajFNRlVy?=
 =?utf-8?B?K0Zsc2xYVTlMVjhNMUNhR0x4VkNuNW4ybjgzVDg3UDJlcHQxTlRqN1JGNzcr?=
 =?utf-8?B?Wi9ac2pzVmFLM1p4eVpnL2xiNk9VUGxDeXllU2pVWWpJaVRWSTVMWEZmaWtv?=
 =?utf-8?B?djZ1U2ZLdHVvNTFkQVE0c3JUNW5qcm0xbzlFdHZZMEJDaWNlNUxKYzlCN3Rq?=
 =?utf-8?B?d010Y0pldlF5NEF1TDdzK2VmUUsrOXhVcnJ6dXVXd2tleFpuMmNZR2FoNzZJ?=
 =?utf-8?B?M3RBNVJyWHhPUzBaakozS1U2Zjg2KzZtWThYNWJ1Rm9tb3ROLzM2ZisrT0NX?=
 =?utf-8?B?R2RvdUNkSi9UYlV3WXVnL3dsUG1ZYk9NSENpbmcxNzhwVmVsOWc1RzM5MGRj?=
 =?utf-8?B?TFZhRTBiZE1kU0pjNGM2bXFINkRuK3NjYTFFMlpYRm5McHc5R1JQK3hSZ2RU?=
 =?utf-8?B?UmV2d0NKd1djWmpkMm0xVHlTYW5iaWxDWHYrTERWaGhpd0I3eHJ4eFlac1hX?=
 =?utf-8?B?REp0cFhkTjVMUjdESmhoUkxIYXJJUGQ4SDVPMThMRXMxbnppcWVFZFZud1ZB?=
 =?utf-8?B?dW52QXlhbDB3a3VOcE4rT1NWRElhUU1kYUYxWm9lWVlZazBrYnpubmIya2dM?=
 =?utf-8?B?YUFkMUVGeTkwTVZHU1M4MTRDQ0tHdFZXb1NXV0lXeExNWU1qQmY2blRZRDB2?=
 =?utf-8?B?ZGExWkZ1MTE4am1vbG13L3YzWnFBcGVURFhGZWVsRDA5aFZUa0pNaUZuNEEv?=
 =?utf-8?Q?Ut7KFqh26pz/rZ6o8nrVi3WAu8APo8LZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0Y4NUhuZ3dETjBGdFh0ZFFSdTFVb2NObzJmQW8rcXNmajdiMDJVeE9HTElK?=
 =?utf-8?B?a1MrWG9ZVURLZjA2YzFLT04yRVhzMStsTnBTWjVSQUszbEtYYmxjTW9xSC9a?=
 =?utf-8?B?OWEweGJxaG5OeVE1NDliL2Vtelc0WFhreG45Zktoc3Y1cnByMzRDNFIrMFlt?=
 =?utf-8?B?a2dzQW81NnFma2NVc05mM3hNbWU5c1VLNlZDek5DVkpKQ3dRbHFkMlAwYmxp?=
 =?utf-8?B?VHVZWU42OXlDNnA5NWMwREdrcDJWTm14S0owc083ZlYrK1puOElFSk1ZSjcr?=
 =?utf-8?B?blpreFh2TG9JMHJNTXZBdnpTK1A4OG1DQ2lPbWdxRDVyWW1mdytiT1hkdExP?=
 =?utf-8?B?ZEZuVHdaTVFYaTR6bWk0M01MOUFsQllCWUVncC9JU3VpYnB2aXNxc2pZYnB5?=
 =?utf-8?B?eklON3laYjFsR0U1WHI3WC82Q0lEYkJGTFMwRTBKTEZoQldNTkcwTVFDUHNV?=
 =?utf-8?B?WC9mTWNCdHdUbDF1a0grYk9SV3VjN0xZdXVmWFF3b21GWkNkK2hFK3IzcFNh?=
 =?utf-8?B?d013RUp5ZEsrMEdJOHJtRjBqT083KzhVRlc3R0xqVGRUaFh4STZQamF5YTIv?=
 =?utf-8?B?Y3Y1YkJVVW8yRWo2alFHY3NRM1BpK0d6RCtXcGJEcXNZczQzSXYrc1NpM3pq?=
 =?utf-8?B?NlhORzNKeHBXOFNnVnM2anhZcVZBbFRMc09lem5GQnh4dVJWZkMvcGhlUVQ3?=
 =?utf-8?B?M2xmczJaSGVMZk5pK0VkUXV3RGZnL1lTeUdabW01WVFaSWdRVzlYTVNkK29T?=
 =?utf-8?B?VDcyTWtwWUpXUUZrc0kvV3RRMERYUkRPZnFscVFoWktXS1hKS25kNmg2L2VG?=
 =?utf-8?B?VFhQNDA2bVRkajJoOWFTYm5BQVQ3K1pUQ0EweHhxR3BmaUlKdXRZVGhJU2hy?=
 =?utf-8?B?L2FPdFlnK0xQUEhBRlJUZlNhdU14VXJESUdJd2RTZXVzQkVQbGRHTkhVNkk2?=
 =?utf-8?B?eVRGY3hCUU54Q2JKNjZTUEtuNy90VHhWaVBKVzFNRFY4RjdjbWVGNzhrNVdo?=
 =?utf-8?B?bHB2dkdRVnFFdld4dVV2b0JGTjZlK0lTNzhDb3gvNHFGcXpLcjY0Y0NDcEwv?=
 =?utf-8?B?QUpVcWl5VktZSTBFNjdtbTF0bUxVOEViTzIwdCtwOW5HcFlHV3d6amxjcitw?=
 =?utf-8?B?ZVY4b09jSW1wa2FuL3B6ZVZQcnQzWGk3cStIU0UyU0VLcVRDT2FkUkxRM2J0?=
 =?utf-8?B?ZTh1Ry84UFBhWkt3NEZZNXQwZ2dYOVNtVlNxK1N3aUJrQVlzNDNJdFYzWUdU?=
 =?utf-8?B?a2NCa2RHekp2NGRuOStYaGlwTHJFUWUxenZOU1QzZTY4bU55aGF6N1BCR1ll?=
 =?utf-8?B?bEhsOU4rOXpnMkJqMFpOdG5RS0E0cnhFZWc2cjZEajhRclVtMXRhWjV6SGti?=
 =?utf-8?B?Q014bXNkOVdReWRuT1ptdUs1d3ptdmVFSktFalVWTjVxYmQ0elBhUlhUMzJS?=
 =?utf-8?B?YmNaUk9WNTJQTTNqWlpEbk1RS0pzMkNVYmQ5dHNYTWNZSUJ6M3BWdXlvTUFH?=
 =?utf-8?B?YkovOEpmOVV0ZExBZnVUWUMyQitsMWh3c0hYLzRQd216czEvejRaaFA3UTA1?=
 =?utf-8?B?QzYzOUozQk9ELzdqVndVVVNTcG1NUnk1VkRQS2NOU0VTcStxZmEwV0hSMGxW?=
 =?utf-8?B?K0NDMGp3TG43S05uMUJieUpTeUR2NGV1cXNZazlqM0twNDk2TmpNOWU1eUI0?=
 =?utf-8?B?b2VyaXJBdnFzaVVKNmxaeVR0Y1ExMnZCaUNwbkU5SW8veWxpOEFITXRLUVRk?=
 =?utf-8?B?bDhWOEI4YWZBT3poZU1tcDJJUTR1UXBaVlBRWXV4cVhkNzBYemVibnZoU09R?=
 =?utf-8?B?eWFwY0R1a3hCZ0pJRXJocUlZclNrWll1TFVlQmZaVjhzNWlHT1lKQVBOaWt3?=
 =?utf-8?B?RUh6dzNmUlVyc2F6dFRwVk1qaWoyNVhKSTdIWnMvOFFkU0lRVTUxRWthdWw4?=
 =?utf-8?B?WFJKaEJOQVY1L3NtNTk1RjNGVTFZYXJMd3NLa1g5WDFCSnR4K3JidDdqdXhv?=
 =?utf-8?B?Tzg1bzV0ZEw5UjI1dFlCcjJySllybXdIZGNLVTVHdVRxcGVQUFdPbnpQVDNB?=
 =?utf-8?B?QkJnZmN3R3Z6S240NXFnUjV4Tk52dWp3dmI1V0owSFFmbWdWcnQzZGlPSFlD?=
 =?utf-8?B?NXpsZnpZbXF6eFlQUHRPcnFWeU5lR0xxYUpyUWVLK3l5M3lMa2k4VjA0blZi?=
 =?utf-8?B?bDAwanYrOHFrTGxZOWYwS3ZyVkRGRVdiTmtLajZGdHlLcWR3NHRkSURQOEc4?=
 =?utf-8?B?R1N0R1V4TVZUeitWbGlkMi9aOWdBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9E9BC8E8044EE34F91F19C47AE1B780A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8d1df04-a88f-42e3-fa70-08dd5d7c819b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 13:32:28.7924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vjqsp9X5VORekBIKHOskoM+Dj2IB2m/wGjDS4t2JDK3hcrkjLkpdwbp/4IyHuFGnvhkzW0yJKd6vEj9RqKgYPBQ4V2FPxGuU1zMeFPwyG+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6680
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

T24gTW9uLCAyMDI1LTAzLTAzIGF0IDE0OjA1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBGb3IgZXZlcnkgY29tbWl0IHRoZSBkZXBlbmRlbnQgY29uZGl0aW9uIGZvciBMT0JGIGlzIGNo
ZWNrZWQNCj4gYW5kIGFjY29yZGluZ2x5IHVwZGF0ZSBoYXNfbG9iZiBmbGFnIHdoaWNoIHdpbGwg
YmUgdXNlZA0KPiB0byB1cGRhdGUgdGhlIEFMUE1fQ1RMIHJlZ2lzdGVyIGR1cmluZyBjb21taXQu
DQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjogQXZvaWQgcmVhZGluZyBoL3cgcmVn
aXN0ZXIgd2l0aG91dCBoYXNfbG9iZiBjaGVjay4gW0phbmldDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCAxOCArKysrKysrKysrKysr
KysrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaCB8wqAg
MSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuY8KgIHzCoCAx
ICsNCj4gwqAzIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4IGMyODYyODg4NDY2
Zi4uZjQ1ODZjNzZhN2I3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2FscG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2FscG0uYw0KPiBAQCAtMzEyLDYgKzMxMiwyNCBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9j
b21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAkJKGZpcnN0
X3NkcF9wb3NpdGlvbiArIHdha2V0aW1lX2luX2xpbmVzKTsNCj4gwqB9DQo+IMKgDQo+ICt2b2lk
IGludGVsX2FscG1fbG9iZl91cGRhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
KmNydGNfc3RhdGUpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0K
PiB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiArCWVudW0gdHJhbnNjb2RlciBjcHVf
dHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiArCXUzMiBhbHBtX2N0
bDsNCj4gKw0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwKQ0KPiArCQlyZXR1cm47
DQo+ICsNCj4gKwlpZiAoIWNydGNfc3RhdGUtPmhhc19sb2JmKSB7DQo+ICsJCWFscG1fY3RsID0g
aW50ZWxfZGVfcmVhZChkaXNwbGF5LCBBTFBNX0NUTChkaXNwbGF5LA0KPiBjcHVfdHJhbnNjb2Rl
cikpOw0KPiArCQlpZiAoYWxwbV9jdGwgJiBBTFBNX0NUTF9MT0JGX0VOQUJMRSkgew0KPiArCQkJ
YWxwbV9jdGwgJj0gfkFMUE1fQ1RMX0xPQkZfRU5BQkxFOw0KPiArCQkJaW50ZWxfZGVfd3JpdGUo
ZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLCBhbHBtX2N0bCk7
DQo+ICsJCX0NCg0KV2h5IGNhbid0IHlvdSBkbyB0aGlzIGluIGFscG1fcG9zdF9wbGFuZV91cGRh
dGU/IERpc2FibGUgaXQgdGhlcmUgaWYNCm9sZF9jcnRjX3N0YXRlLT5oYXNfbG9iZiAmJiAhbmV3
X2NydGNfc3RhdGUtPmhhc19sb2JmPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gKwl9
DQo+ICt9DQo+ICsNCj4gwqBzdGF0aWMgdm9pZCBsbmxfYWxwbV9jb25maWd1cmUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCQnCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+IMKgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiBpbmRleCA5MWY1MWZiMjRmOTguLmM2ZWZkMjVj
MjA2MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgN
Cj4gQEAgLTIzLDYgKzIzLDcgQEAgdm9pZCBpbnRlbF9hbHBtX2xvYmZfY29tcHV0ZV9jb25maWco
c3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJCQkJwqDCoMKgIHN0cnVjdCBkcm1f
Y29ubmVjdG9yX3N0YXRlDQo+ICpjb25uX3N0YXRlKTsNCj4gwqB2b2lkIGludGVsX2FscG1fY29u
ZmlndXJlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJwqAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpOw0KPiArdm9pZCBpbnRlbF9hbHBtX2xv
YmZfdXBkYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsN
Cj4gwqB2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJCcKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4g
wqB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMNCj4gaW5kZXggOWI1MDRkY2ZiNDQ2Li5iNjE4NmUxY2Y4MDQgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtMzYyMCw2ICszNjIwLDcgQEAg
c3RhdGljIHZvaWQgaW50ZWxfZGRpX3VwZGF0ZV9waXBlX2RwKHN0cnVjdA0KPiBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLA0KPiDCoAlpbnRlbF9kZGlfc2V0X2RwX21zYShjcnRjX3N0YXRlLCBj
b25uX3N0YXRlKTsNCj4gwqANCj4gwqAJaW50ZWxfZHBfc2V0X2luZm9mcmFtZXMoZW5jb2Rlciwg
dHJ1ZSwgY3J0Y19zdGF0ZSwNCj4gY29ubl9zdGF0ZSk7DQo+ICsJaW50ZWxfYWxwbV9sb2JmX3Vw
ZGF0ZShjcnRjX3N0YXRlKTsNCj4gwqANCj4gwqAJaW50ZWxfYmFja2xpZ2h0X3VwZGF0ZShzdGF0
ZSwgZW5jb2RlciwgY3J0Y19zdGF0ZSwNCj4gY29ubl9zdGF0ZSk7DQo+IMKgCWRybV9jb25uZWN0
b3JfdXBkYXRlX3ByaXZhY3lfc2NyZWVuKGNvbm5fc3RhdGUpOw0KDQo=

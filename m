Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E45A45E30
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 13:08:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819F010E8D8;
	Wed, 26 Feb 2025 12:08:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AaTp+A8L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7BBF10E8D8;
 Wed, 26 Feb 2025 12:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740571706; x=1772107706;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TYFv+ukw/DAhlL96/PTkItYaw8J6iOFAdYCsRJBLUdo=;
 b=AaTp+A8L9K19LIzJXBq885szBt4GgTUDxtml6+3k0Lroq6QDOop+VtkJ
 RWXxfFc42dhmXkFTTzrHrSSGYMVcxO8u2VfBWZ6G/UPe0wLazZVrZJ29L
 M758MnvVz8uLqpeR15E2dTUp5mUY+ej/5txIsLrj7b5ZYY0sL/J7qWaum
 EBUOHQw9ldTSy/5lqgj9HKRZ3ujXxLXQa+GItLujIEwuGBKqlqFEO/iT3
 jjNloqveVJYFc97Fs/GzQGsbMaHOShXMbjxksXXwtPGsVEy3EWcqStjcw
 ZGn6JRSIUUPQURS2PMYTUhOkep3ZVFDZWWNAvBeKWUn+dieeAQiz+6UIi Q==;
X-CSE-ConnectionGUID: I+rC/MuaSp+2QI9641aurQ==
X-CSE-MsgGUID: SRTcVcWDS2KXTBOsydmiAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="63876270"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="63876270"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 04:08:23 -0800
X-CSE-ConnectionGUID: IO8Ib3VZQ5qJee/Je7R+Ug==
X-CSE-MsgGUID: dmu5/r6TR9mPs+0Qv6NG5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="116689002"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 04:08:23 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 26 Feb 2025 04:08:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 26 Feb 2025 04:08:22 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 04:08:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ANlvHOg8BptKPOJrIqMPAbQY7XPot8r7ji5JydjKC0ycG4aKlmk/UH2lJdMtAuM0pZS7GbppvJp1kwYEz1poJvN5BccXYZM8var3im760cM4tdPkzIhGX79D66ASEK1hCgtu6UM3OhCcl2/DhQrhquzFQFtWYw+FngX8rZ3qJfkRBWAsUSdLLdJNdSZZzEhrBc4zVUTVEXfauh1DWuZYNwyLjIgubJVgR3LYSAxOngBj9aiDxLzI5tmbfZYGCQISwvcSTLXiYrQ4eWRDoVqObksfrK5IAywFr3dH1/k/N6cgDKqfjyPXLIxtmMY11MxQj2tjXunNsT7BMJ+6uz3eQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TYFv+ukw/DAhlL96/PTkItYaw8J6iOFAdYCsRJBLUdo=;
 b=xEAKqtilMk2ogtx907GbZyFqm08tgsvdXfvJVQfNizlno5F+RiwCJ0KlGqeBuUDVZGRUgUFJ6pjKHdq3dyUElhvATZddTUCh4g3RecN3VwN4Q0GKLGVjXqrpem7e4dLwj7xcl6Xe3qUYz0A2e2uemzLUUvX56JAj9lJumuQcJ0ghFYI0TkjgY6c1vcGBaz4OKxekD1xMcRoOAdAKnO4CsgG3MKeFxZLECJv6eFoVjNaTkGVtudAsoQZk4Kq2H50ggSISJi1kXZhjLkuKYRJ3qf0HUFrslFSWN8nYWhvlMv/3Jd9lQOW5ma9oUs/u32bQGapNh7qJuuPFAXBJC/6stA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 CY8PR11MB6937.namprd11.prod.outlook.com (2603:10b6:930:5b::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8466.19; Wed, 26 Feb 2025 12:07:52 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%7]) with mapi id 15.20.8489.018; Wed, 26 Feb 2025
 12:07:52 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "I915-ci-infra@lists.freedesktop.org"
 <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcGZp?=
 =?utf-8?Q?t:_panel_fitter_refactors?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9wZml0OiBw?=
 =?utf-8?Q?anel_fitter_refactors?=
Thread-Index: AQHbiEV9CXgjogp7mUaNDHdH/RWNq7NZfVKA
Date: Wed, 26 Feb 2025 12:07:52 +0000
Message-ID: <DM8PR11MB5655AA1F78661E68C90E9FBBE0C22@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <cover.1740564009.git.jani.nikula@intel.com>
 <174057097908.2320629.13610250296780902229@b555e5b46a47>
In-Reply-To: <174057097908.2320629.13610250296780902229@b555e5b46a47>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|CY8PR11MB6937:EE_
x-ms-office365-filtering-correlation-id: f925790e-ebd6-439a-c8e5-08dd565e320d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|13003099007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SkhFWmlhNGJJY25KSmJoYWordkxBMWNDSHZTdVhVL1graHlaTXpuYkt2Mlp4?=
 =?utf-8?B?OEE5dGVJejJsOFdEZDhTQnl3RWZIUVhteVdqZklscERRQ3BGNlZxaDVSM3Ju?=
 =?utf-8?B?ZDcyZmZON3JDYzg5NnhENjhMbzFTYkVPTnVQblFKNU5wWENONUFxK01oOFVj?=
 =?utf-8?B?VHFEV3lFVHVWN1l3SUQweW13RUxRR0hVcDVJQVd6T0UvSllmYkkxL0dCQ244?=
 =?utf-8?B?SFBnY0lUdUJTZ0dneUxQSFVzTlB1S2hFL2FaeUV1Q0c2YlFxUm14bWduS0Mv?=
 =?utf-8?B?aXlZZStKZW5qeU9wZmJlVVl0a0tta1U5czdFUU9ubUVJS2YweVd2L3dFZmRO?=
 =?utf-8?B?QlJUMHY5YUZoZmkxK0Z1YmdpSzl6RjRuUU5ZSWhqOXlNQ3RTWDh3MERyeDJJ?=
 =?utf-8?B?QjYrM0VGS3BPQTF2SlRnV2NORGMyaE9HOUFyaU9qUEFPVTJ5TG9jbjIydHZj?=
 =?utf-8?B?Sm5ielF6UDZIdE5hQmJzN0pCTkZvVy9pcDQ3cmpqU2JGK3dhb3pObEZHN3ZF?=
 =?utf-8?B?SFBYUVR0N1g4cmZDb2ZaeGFXRnZvK1E5UWxLRGNqZXhHRDF1dldPVVdNM2Zm?=
 =?utf-8?B?QzlWUVJWK0JxcXZ3RVVmWDRyLzNBbVpyMFJrb1lnS3dCUDRaVGZlMHZsbFJP?=
 =?utf-8?B?SGlqUGlGOXhUWGtXVTRsOG45TnNTeVVDODdyMkMwYmFpU3BZQzNVanZwTExw?=
 =?utf-8?B?QTlyL3R2aXVHTzI0TFN0TFlkSkVJMDFHM1MxMzJZcStpU2JXaTZnQktybjgr?=
 =?utf-8?B?cHFHL1VPd3hNUUlrS3FldzIzNWxGUXU4QlQ5L3IvMEwwMDJuSWhTdi9sMzIw?=
 =?utf-8?B?SW1iTWxvQi82MDV0bzkvUGRjZ1k2ZDBKR2ZDeWpqbytsUDBtSW9OdlNVUjZz?=
 =?utf-8?B?NjZuVWVBR3R1blAvZ0kyK1BlMVc4U01DNWM3dStjRG1zZWZ0MzNaUGI4cUhG?=
 =?utf-8?B?aGc1WHdLNHcxYlRDNXVFL245ZWdBWFNyNnREMUN3YXVIMjZaT3AzOTNWSmwx?=
 =?utf-8?B?R0Vsc2d0OW5JTzZOUnpiazR6V2RwT1BrbXlvSGVGcmVtSGdZajJVdzcwSHoz?=
 =?utf-8?B?dnVGWVJWWW0zaDFDZnVyY0ZFa0pkTHZLUFVCSDNuRTVzN25tK3M5QVF1L1Bu?=
 =?utf-8?B?Wnp0dmVDY0NFYm9NNEdJQTRQdUZJUEovYkZkd014RDQ4VmVzd09mWGpKVE9t?=
 =?utf-8?B?QWVwdUI3eVM3TDlXd3JnUUEvdC9UZUF6cUxScUViOW9PY0ZqM05iVnpKdmlv?=
 =?utf-8?B?aGprUVIvMmVHMU13TUVnVkZiU0I1R1E3R3VldlhUalFOWE9zL2VTMUE2VHBR?=
 =?utf-8?B?UmRyN0NyU0VyWnNsakVaaXZacE1zUFJWTWNNNlhYd1FXeTR5Q3B3ZThCMnlQ?=
 =?utf-8?B?bmpnTHpkY3hDZWpDY3hXYzl0NkQ4RVR2RGtaRnY4QTdtY2NnNFhlYmd5bXFS?=
 =?utf-8?B?YUg5KytlcEkyUU1FemdJR255eWN6OHZjY1QxVHhRM3o0WVRaaFhjeG9VTEpP?=
 =?utf-8?B?R0pDTzhmTzZMNnZWc09zRUNJVGdVNFVXSGQ3TlN3TVZCNjFoeWEvU2xFMWVP?=
 =?utf-8?B?ODNENUgrVnZ5MUQxVHQ0aWordFB5MUJCdjY5Rm1TN2h2VUxLL0ZiSGdGeWJE?=
 =?utf-8?B?ZTVRekIxMkhVUXhEbk9qYnNkbFBxRy9FSzdnSVMxZzZqVXBxT0pwVi82Sm5q?=
 =?utf-8?B?VnBrMm9mYUhKOW5ONlVhUnRFSG5mWTlrSFNncHlaakYxSnBPRzY1Z2ZpdEox?=
 =?utf-8?B?UFRIKzRYZzZ4amFZenRyejhDT09Wb0wrUElkUjZVYUJXSnE4a1RBYmc0ZFlD?=
 =?utf-8?B?Q2M3dlkzNFhlMndtWFBEcFJuWi93WWhIcFpaUE5TTVQ4R3VhcEVNS2JGQlZV?=
 =?utf-8?B?WFJDbGg3TkJ6NlN6UWpXdk5tQjNYZC92NjN0VDFzRklkalE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(13003099007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0JTdS90U2o3cDc1UjBSR1NDanpRNWh1b2d6QVY1dGNaTklYcXVZWXpRYmIw?=
 =?utf-8?B?d0YrN2lzUkdpOWZxR2FlVFJFMTZQUkJXdFhmN05xZWM5aDVvOHVsb0oyZjVG?=
 =?utf-8?B?SUlWeE1GZVVqUC9JVFNDYWpwSUs5cm5YNzFiNjFUeG5HcjhSNG9hS1hyZklI?=
 =?utf-8?B?dTBIc3krSzJMZmZWU1JCQ250RXpvV1l3OStCeVlnU1ZsNGhWYXZjUnpJS2xB?=
 =?utf-8?B?TEhFOTB6MGhHRG1UbjMzdmVKRlhaMFkwVUZYcjNvakxoa24vZnZjVUFQSWtH?=
 =?utf-8?B?MVNJNjlFdnlNZDJtOEFuN3ExYlFGTytXY3lFczhxZWJjRTlMaHB6WlZORmF6?=
 =?utf-8?B?K3A1dTdTWnoxdnd0cno2c2YxL3c0V29JQUo4WlhoRDl2b3BUais2OThJZUpG?=
 =?utf-8?B?ZEdOQzRTOGRKcVZuWHVVcFJmVlBXNUwzZlhtWUpuKzJTY1VKcHd4NWh3b1lJ?=
 =?utf-8?B?YjVWV3I3Rmo1SVpweGNXejdCbUZDRjZxdnNWSFdENE5PV3pidjZySDBsbFAv?=
 =?utf-8?B?bFdNUjJkOUkyaVo4VEtpR3M5ekxSQk5XaFUvbHlINm96WWFiOU5DMVg2MXF0?=
 =?utf-8?B?em0vQUtmNjB5WFBFcjVBcWcwYzgvNHdjNGhjbE1sZFV2VVdBeVlXaGxoOUhn?=
 =?utf-8?B?RDV4d3JRZmFpblhER3dHMStaKzErcnVBb1V0c0NSYnFMQUFHWk12cU5kdW5n?=
 =?utf-8?B?V2R2clpKcHFZb1VSMklhQ1NNTTViT0o3ZW0yVytLOStSYzBmZUU0SjlaL0JS?=
 =?utf-8?B?eUtYVHUxcENJOERndlhQOVJqRWx1MTEzRXpWUHFOYzNGcmVoOGZxMmNzdUsy?=
 =?utf-8?B?UWVacUNQMTNWbkpDSGdDZFViZU90TWhPd09nS0VsYnN3YTJvMFd0UWowYUZy?=
 =?utf-8?B?NURUU1kva0U1bldYUUJ4b3BLVzlDTG9XZ1g3SmZjNVhwbmthckRZNnhwK1Fy?=
 =?utf-8?B?OW5LU1BpTzY4a2NBYWU1SDF4UkgzMUp4NnlWaDlvKy9sSitJZDZRbEw0SHZw?=
 =?utf-8?B?Wjl1TGdpU3hyeStrYWxYUHBUelNmVEJhcTh6azFUZjgwWEsyQjFVbUZWYzRu?=
 =?utf-8?B?djB5NUxBaEd0elZMazlTQ1dDby8zV0l2bStBSmxENVVmZmJKZC9nR0RtRzJy?=
 =?utf-8?B?NUlYQiszL1RLYmtUWkw4T3FIcTBHK2VvMGUxaFpEVExVOG01SmhJSlNpZ3BH?=
 =?utf-8?B?Nk13OFpOQVZxbDRsVm5vNGFKZUIvenRXbERpdVUyRWtNbVc1M3RlWEhiVzVl?=
 =?utf-8?B?SUY1M0I5WW94eEs0NWhhVEVvRTVzbDd1ZjQ1aXJDZ0xVc2ZEL0hoSWlsM0xC?=
 =?utf-8?B?U0RVU1lleFJ4SUJQR0c0V1pCaFBBYTdxbWF5NlYyQUM5S0hKQWo4SlBOZXFw?=
 =?utf-8?B?Z0g3YXJodjBpa3l3VFcvQ1dra3V4UTJrak1TektTWjRpM01oT3A1Q1J4WjZi?=
 =?utf-8?B?dkh6UnFkeUg2NmhXeFpPWU1xRDBPWFBsREpUWm5CQlJ5Sy9mazR0ZTlJUDBX?=
 =?utf-8?B?c0NBUmVLZXppVG5CUFBWc2FHMkoxNTVtQVl0RWVJQ213VGc1RHBMR2x2L0Ux?=
 =?utf-8?B?NytncTZrcm5XbEZENWxvNjdYeko0czQwUHFOQzV1alFpTTRNdG9ndFBsRTNl?=
 =?utf-8?B?T0VYczlpbFlySk9CQjlrSWlnMVVoUElyYTdNVTNFVSs1dG83Mm1UU2pMTllm?=
 =?utf-8?B?dmc5NkVwaWgwVDYrTW81MDNYa1I4dEVmV29EaFA0REtYSzdndlB0YTJqVEJn?=
 =?utf-8?B?QXVZVXVwMGFpMkZIaG00Tk04UDl3eTBRV1lVdTByWlF4bXo5cGY0dm1DWFJW?=
 =?utf-8?B?Q0JkMlNkQXJ3U2w1bEprK1JSR2o4UnFMaG9TRGZyaFZGdVV2engwUGhuanZL?=
 =?utf-8?B?NDNJOHdLb3JUWmJNeitmcVVoQUlmcnE4ektwRHVySjNqZndsSDhCdFZLaXNJ?=
 =?utf-8?B?N1o4cy8xM0E1YnBYc012elpsQjI3aG1pdXgrK2VqMURnUFVhQTB6MUN1RFZr?=
 =?utf-8?B?eCtVS2dwMkRIYk1rU0FjOTNHMnhOOXRFOUVGamM5K2dhTVBLWlF4WVF4RW9D?=
 =?utf-8?B?am9tNEZVWi9acEtnZEo4enI2Z1V6OU5CQVpDRVN6YnJ2QXBhalRiLzlWN1dH?=
 =?utf-8?Q?7PGurJvt/dtYl6zsyZqUCN+ap?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f925790e-ebd6-439a-c8e5-08dd565e320d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2025 12:07:52.2597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SKtrGtvepjXEng5FSo1CAn7B7fGWRTh7VDBR0JkGhzNWkTYvhIuh9lrzueFGeWi4fGEbe3/q6vYyGaPe94Cfpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6937
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

SEksIA0KU2VlIHJlbGF0ZWQgZXJyb3IuIFBsZWFzZSByZS1yZXBvcnQuIA0KDQo+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4gUGF0Y2h3b3JrDQo+IFNlbnQ6
IFdlZG5lc2RheSwgMjYgRmVicnVhcnkgMjAyNSAxMy41Ng0KPiBUbzogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+IFN1YmplY3Q6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcGZp
dDogcGFuZWwgZml0dGVyIHJlZmFjdG9ycw0KPiANCj4gUGF0Y2ggRGV0YWlscw0KPiBTZXJpZXM6
CWRybS9pOTE1L3BmaXQ6IHBhbmVsIGZpdHRlciByZWZhY3RvcnMNCj4gVVJMOglodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0NTQ3MS8NCj4gU3RhdGU6CWZhaWx1cmUN
Cj4gRGV0YWlsczoJaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAv
UGF0Y2h3b3JrXzE0NTQ3MXYxL2luZGV4Lmh0bWwNCj4gDQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2Vz
IGZyb20gQ0lfRFJNXzE2MTgzIC0+IFBhdGNod29ya18xNDU0NzF2MQ0KPiANCj4gDQo+IFN1bW1h
cnkNCj4gDQo+IA0KPiBGQUlMVVJFDQo+IA0KPiBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21p
bmcgd2l0aCBQYXRjaHdvcmtfMTQ1NDcxdjEgYWJzb2x1dGVseSBuZWVkDQo+IHRvIGJlIHZlcmlm
aWVkIG1hbnVhbGx5Lg0KPiANCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhh
dmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+IGludHJvZHVjZWQgaW4gUGF0Y2h3
b3JrXzE0NTQ3MXYxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gKEk5MTUtY2ktDQo+IGlu
ZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbSB0byBkb2N1bWVudCB0aGlz
IG5ldyBmYWlsdXJlDQo+IG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBp
biBDSS4NCj4gDQo+IEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzE0NTQ3MXYxL2luZGV4Lmh0bWwNCj4gDQo+IA0KPiBQ
YXJ0aWNpcGF0aW5nIGhvc3RzICg0NCAtPiA0NCkNCj4gDQo+IA0KPiBObyBjaGFuZ2VzIGluIHBh
cnRpY2lwYXRpbmcgaG9zdHMNCj4gDQo+IA0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IA0KPiAN
Cj4gSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9k
dWNlZCBpbg0KPiBQYXRjaHdvcmtfMTQ1NDcxdjE6DQo+IA0KPiANCj4gSUdUIGNoYW5nZXMNCj4g
DQo+IA0KPiBQb3NzaWJsZSByZWdyZXNzaW9ucw0KPiANCj4gDQo+ICoJaWd0QGttc19mbGlwQGJh
c2ljLWZsaXAtdnMtbW9kZXNldEBjLWRwMToNCj4gDQo+IAkqCWZpLWtibC03NTY3dTogUEFTUyA8
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE2MTgz
L2ZpLWtibC03NTY3dS9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1tb2Rlc2V0QGMtDQo+IGRw
MS5odG1sPiAgLT4gRE1FU0ctV0FSTiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzE0NTQ3MXYxL2ZpLWtibC03NTY3dS9pZ3RAa21zX2ZsaXBA
YmFzaWMtZmxpcC12cy0NCj4gbW9kZXNldEBjLWRwMS5odG1sPiAgKzEgb3RoZXIgdGVzdCBkbWVz
Zy13YXJuDQpTYW1lIGFzIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9r
ZXJuZWwvLS9pc3N1ZXMvMTM3NzAgDQoNCj4gDQo+IA0KPiBLbm93biBpc3N1ZXMNCj4gDQo+IA0K
PiBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQ1NDcxdjEgdGhhdCBj
b21lIGZyb20ga25vd24NCj4gaXNzdWVzOg0KPiANCj4gDQo+IElHVCBjaGFuZ2VzDQo+IA0KPiAN
Cj4gSXNzdWVzIGhpdA0KPiANCj4gDQo+ICoJaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6
DQo+IA0KPiAJKgliYXQtcnBscy00OiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTYxODMvYmF0LXJwbHMtNC9pZ3RAaTkxNV9wbV9ycG1A
bW9kdWxlLXJlbG9hZC5odG1sPiAgLT4NCj4gRkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1NDcxdjEvYmF0LQ0KPiBycGxzLTQvaWd0QGk5
MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbD4gIChpOTE1IzEzNjMzDQo+IDxodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEzNjMzPiApDQo+
IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbWVtb3J5X3JlZ2lvbjoNCj4gDQo+IAkqCWJh
dC10d2wtMjogTk9UUlVOIC0+IEFCT1JUIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1NDcxdjEvYmF0LXR3bC0NCj4gMi9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlQG1lbW9yeV9yZWdpb24uaHRtbD4gIChpOTE1IzEyOTE5DQo+IDxodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyOTE5PiAp
DQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHM6DQo+IA0KPiAJKgli
YXQtYXJscy02OiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+
IHRpcC9DSV9EUk1fMTYxODMvYmF0LWFybHMtNi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmth
cm91bmRzLmh0bWw+DQo+IC0+IERNRVNHLUZBSUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xNDU0NzF2MS9iYXQtYXJscy0NCj4gNi9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWw+ICAoaTkxNSMxMjA2MQ0KPiA8aHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2
MT4gKSArMSBvdGhlcg0KPiB0ZXN0IGRtZXNnLWZhaWwNCj4gDQo+ICoJaWd0QGttc19waXBlX2Ny
Y19iYXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2U6DQo+IA0KPiAJKgliYXQtZGcy
LTExOiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9D
SV9EUk1fMTYxODMvYmF0LWRnMi0xMS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5n
LWNyYy0NCj4gZnJhbWUtc2VxdWVuY2UuaHRtbD4gIC0+IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xNDU0NzF2MS9iYXQtZGcyLQ0K
PiAxMS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1mcmFtZS1zZXF1ZW5j
ZS5odG1sPg0KPiAoaTkxNSM5MTk3IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2k5MTUva2VybmVsLy0vaXNzdWVzLzkxOTc+DQo+ICkgKzMgb3RoZXIgdGVzdHMgc2tpcA0KPiAN
Cj4gDQo+IFBvc3NpYmxlIGZpeGVzDQo+IA0KPiANCj4gKglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
QHJlc2V0Og0KPiANCj4gCSoJYmF0LXR3bC0yOiBJTkNPTVBMRVRFIDxodHRwczovL2ludGVsLWdm
eC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYxODMvYmF0LXR3bC0NCj4gMi9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQHJlc2V0Lmh0bWw+ICAoaTkxNSMxMjQ0NQ0KPiA8aHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjQ0NT4g
KSAtPiBQQVNTDQo+IDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDU0NzF2MS9iYXQtdHdsLQ0KPiAyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAcmVz
ZXQuaHRtbD4NCj4gDQo+ICoJaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4g
DQo+IAkqCWJhdC1hcmxoLTM6IERNRVNHLUZBSUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjE4My9iYXQtYXJsaC0NCj4gMy9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWw+ICAoaTkxNSMxMjA2MQ0KPiA8aHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2MT4gKSAt
PiBQQVNTDQo+IDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDU0NzF2MS9iYXQtYXJsaC0NCj4gMy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmth
cm91bmRzLmh0bWw+ICArMSBvdGhlciB0ZXN0IHBhc3MNCj4gCSoJYmF0LWFybHMtNTogRE1FU0ct
RkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJN
XzE2MTgzL2JhdC1hcmxzLTUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1s
Pg0KPiAoaTkxNSMxMjA2MSA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1
L2tlcm5lbC8tDQo+IC9pc3N1ZXMvMTIwNjE+ICkgLT4gUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzE0NTQ3MXYxL2JhdC1hcmxzLQ0K
PiA1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbD4gICsxIG90aGVyIHRl
c3QgcGFzcw0KPiAJKgliYXQtbXRscC05OiBETUVTRy1GQUlMIDxodHRwczovL2ludGVsLWdmeC0N
Cj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYxODMvYmF0LW10bHAtDQo+IDkvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sPiAgKGk5MTUjMTIwNjENCj4gPGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTIw
NjE+ICkgLT4gUEFTUw0KPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ1NDcxdjEvYmF0LW10bHAtDQo+IDkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZUB3b3JrYXJvdW5kcy5odG1sPiAgKzEgb3RoZXIgdGVzdCBwYXNzDQo+IA0KPiANCj4gV2Fybmlu
Z3MNCj4gDQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6DQo+IA0KPiAJKgliYXQtdHds
LTI6IElOQ09NUExFVEUgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV8xNjE4My9iYXQtdHdsLQ0KPiAyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRt
bD4gIChpOTE1IzEyNDQ1DQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5
MTUva2VybmVsLy0vaXNzdWVzLzEyNDQ1PiAgLw0KPiBpOTE1IzEzNzYxIDxodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0NCj4gL2lzc3Vlcy8xMzc2MT4gKSAt
PiBBQk9SVCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0
Y2h3b3JrXzE0NTQ3MXYxL2JhdC10d2wtMi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWw+DQo+
IChpOTE1IzEyNDM1IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2Vy
bmVsLy0NCj4gL2lzc3Vlcy8xMjQzNT4gIC8gaTkxNSMxMjkxOQ0KPiA8aHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjkxOT4gIC8NCj4gaTkx
NSMxMzUwMyA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8t
DQo+IC9pc3N1ZXMvMTM1MDM+ICkNCj4gDQo+IA0KPiBCdWlsZCBjaGFuZ2VzDQo+IA0KPiANCj4g
KglMaW51eDogQ0lfRFJNXzE2MTgzIC0+IFBhdGNod29ya18xNDU0NzF2MQ0KPiANCj4gQ0ktMjAx
OTA1Mjk6IDIwMTkwNTI5DQo+IENJX0RSTV8xNjE4MzogNWJjYjY3YTJhNGM2MTAzNGY1YTI1YzAy
NDYzMWM1ZmJmMzUxZWU4ZCBADQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1j
aS9saW51eA0KPiBJR1RfODI0ODogODI0OA0KPiBQYXRjaHdvcmtfMTQ1NDcxdjE6IDViY2I2N2Ey
YTRjNjEwMzRmNWEyNWMwMjQ2MzFjNWZiZjM1MWVlOGQgQA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCg0K

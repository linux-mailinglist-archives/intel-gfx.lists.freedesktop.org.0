Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E60D2A0B558
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 12:22:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4507C10E052;
	Mon, 13 Jan 2025 11:22:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QS2wzlaW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E88B10E040;
 Mon, 13 Jan 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736767374; x=1768303374;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4f7poDDqDMt/B++w1Sf0rtCCqjBLaYEovNJ4CMwx1aM=;
 b=QS2wzlaWk2O9inVYbxo3Ofe3teJddFxUxxOwUvN/U/g64vDAr0kWmcNK
 g2bS2EXcP1qFSuCSIsgZ4q5H0QoYclyQrEEJ0xsy3ueDMti4xyiiKJ0Nt
 nx6MUsV+Qbu00SKKelj0Sx46x4siChDXloypLGUauw6s94UNq5MuCDNrc
 MnHP6f9AA8kMabiBQ6g2Gcxl5NHFWDZpPVX39obl4DAqmRkoOSdULi1DC
 MeNqpvMtknFJLFbkJbsrMDbQzYclcOKq092IrztA0uQ/e8ldv3rp6N71M
 iIpXjq0HRlG9O/Whc9JsuK9AhCzhB8ToR76Yt6wgeKUVT2Fow3LzDIQ8Q g==;
X-CSE-ConnectionGUID: H7IT0ZspQAaalUskeHjMmA==
X-CSE-MsgGUID: A7GKo1TvTuGH5rtYsa7qwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="36309864"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36309864"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 03:22:53 -0800
X-CSE-ConnectionGUID: W0nhLK5kS2eatzZ1/xV88g==
X-CSE-MsgGUID: BOFWUCNgQJ++X18Z7ukyvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="141738373"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 03:22:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 03:22:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 03:22:51 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 03:22:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fc15eo/AuXDyZLOu86dGbULF5Dfl3mSXhKPC7iAJ5HJiExijHNYFnhNSNlQW7Ai3ER2Suwpf+RCIzDBvDAEBJfkQeWwAdEO07l61sDf8b0QKAYE+NkJVktcu0QfQZNc203T4Z3dytq4+SzWwzhwGHLTfAhTQOMZxNOdT4otm0CW12hw1m3pUPHxWQhzFY50IjBCMRCYesOF3rgcFbuBZC8ntXJFjvXzpAqIQhcIJY2MV1XfJiGotdKmcgcBPb3ATnDQuDVZdBlEZXuM8/yypXq1eLrhX4wMWtGFfXE6NfIihfVwapWG/pWxEz6zpKtT5fhuR3UdyzlBB3/dWk6j2Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4f7poDDqDMt/B++w1Sf0rtCCqjBLaYEovNJ4CMwx1aM=;
 b=w4azNJH3g1QkGbAe7PtVGDxwkBR9i284WShD3UNoKav/2tqGm70hmFX//yEQEm71erNgj3+lYMpTuQrMOTXKjb1XMH7LIhyMhTWbKJ2Is1dA3lIN0yyjKUZ9BQgObpwmDEzeihRZp3AmDsowBNX5eHZAm0g496SdXhXd3a7ARO7TDGET8DV1WGy6yOnEhy4YYkeGx4oRPaFFaN0RczdlwaQioxJei97kxsjyWnVeV1J1nCdU/WrGpMQNYl/d+HT6gGbjDCCcKjz99FJPrxTJbNqlny/aLxVBQLByYZ6YEbI3ujKaoHG7d1nHqsQagyR218gLgEDt5lhzO2WjB5DMYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS7PR11MB6104.namprd11.prod.outlook.com (2603:10b6:8:9f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.18; Mon, 13 Jan 2025 11:22:48 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%7]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 11:22:48 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 4/4] drm/i915/psr: Allow changing Panel Replay mode
 without full modeset
Thread-Topic: [PATCH 4/4] drm/i915/psr: Allow changing Panel Replay mode
 without full modeset
Thread-Index: AQHbYoJRzt2Soc+v/UqERWeTeE0DS7MUlccg
Date: Mon, 13 Jan 2025 11:22:48 +0000
Message-ID: <MW4PR11MB7054D047097AFDEDCFCF9CFCEF1F2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250109103532.2093356-1-jouni.hogander@intel.com>
 <20250109103532.2093356-5-jouni.hogander@intel.com>
In-Reply-To: <20250109103532.2093356-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS7PR11MB6104:EE_
x-ms-office365-filtering-correlation-id: a03217a8-f295-44c5-3ea4-08dd33c49c63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Q1MycjV2R2MxVlg1OC9mVlg2eUgrVXpWenNTSGxMR1lPS3p5RGw5Z1ZldmpX?=
 =?utf-8?B?cUJ5M1FtVVA3bENJWXVlYTM3YkI1TUJYWEpCU0ZzZU5qK1VyZnl4UHZaK1RF?=
 =?utf-8?B?aVJCM2JVK20vcDVQNmEwcEs4WlI4aGlPdXkyeXNqVkEzYXpQckt3QUtiQzFy?=
 =?utf-8?B?R0RHQ0pOdi83Q1E5N0VYK1RneHZsaHM0OXB1aXZmNVdNUnFWeDU4Mk9QTytG?=
 =?utf-8?B?UnArSUQ4amFyWmJBZUxDWUpNK1Y2Y3owdVkrRTIrYWlZSU4yWC9jbE82MUhh?=
 =?utf-8?B?bGRXWW5NMUtrN2tsbUpFM09GUzMvNWpNeFhqTU5lMVRuYThCMjhuN1ozbEdR?=
 =?utf-8?B?VDdIRFBnbjEvZHhBWFRad3BMbnVaYTZUenRSa3kxdlhLTjVKY0E0bW1xRWtm?=
 =?utf-8?B?dE9PVlJKYytVZEZpV0RqYVhHcEpOVm9SZC8xekVpSEFlbWcxc2VwTUFtaUpi?=
 =?utf-8?B?WG0ydExmNDVWYzh4L214bWNhSGlMeE93dmZVbE1Hb2tla0FzK3U2bTFkNVlI?=
 =?utf-8?B?aVhqc1VHNFFxWkhoMFJnK3QzbUVuYlhaaDFBWFBvalpEc29QR3VXc0R5THRE?=
 =?utf-8?B?by8wM05WdjljT0N5aEVxVFhYUVpibVoyamdoK0tMdzI0MGFXMlVOalZ2UnB6?=
 =?utf-8?B?Nzl2NitUazlLSWdxK2ZGcVVXQWk5YktxZ0g0Vk9BQjNZcXdGNFF6a2pvQ0tU?=
 =?utf-8?B?OTBoWkRhNW9QUTg1TFYzRTR0VVhDd3lUUWo5Ky9SbXRiWUlEc3dzVnoxM3h5?=
 =?utf-8?B?bkNUcmZQcjVQQ0JlMzN4dkJhZEJoMWVNMkw5Qis4VWlMcHJGUjQ3NFJLL21x?=
 =?utf-8?B?aEFRTmtBcUhGU1hKcXZ2ZjlzVklwbGo3K0JWZGpDNWN4QXRyQkRJTXY5Vm11?=
 =?utf-8?B?R0hReEVSVHd3clowZXVqVEFTZHV1SUZPY2F5Q2VwZ3lXcHRwRklPMjZjQ2px?=
 =?utf-8?B?NWE1bEpLZFA2NWpDUlRJTGp1REpnMk9XMC82bFdiMUhGSTU1VXF4enlIM3Ir?=
 =?utf-8?B?ZmNPblJlU2gxZm12Rm5Nd3grcWFMQWZkdlc1S0g0eXMzbmEyZkJhSjlpZVpU?=
 =?utf-8?B?cVdJVzhRUTAwWktBRW9nWks5Q041STFNNFdxbHR5WFVBYUhzQ0tFZzRkdUN6?=
 =?utf-8?B?ODN6d1NJTnE2dFl3SVZJZXkvL0NLam1BMWlIUHlRTFREN2VoNU5yd0ozMjJH?=
 =?utf-8?B?bWxCV084dk9YdVpMZVlTNGJ6MXh3RFBRNlZiMWRIVCtJSk9KSGpjZFhFVDJO?=
 =?utf-8?B?VmVwd29xcERZTTc4QVFwaXBZRUI3bGkzQWlqSUF4UzI5elh3VVIrRnNnd0Jl?=
 =?utf-8?B?TnpmZ0lBN3dLL1Zyd3dteWtFOEloTnN4L3FXM0dQdXdKZE5YUGRVSDc0eG5P?=
 =?utf-8?B?SkR1UFQ5anBDREhTc0JxSURDMTI5cWtJUnpiR1h2VzY5blBEQkd5UG0yVGJT?=
 =?utf-8?B?eTVzS2hhVFRtT0hnQmZINE5lMFh5Wm54YjdIWjRRU3pKQyt5U2hMM1ZkWVFO?=
 =?utf-8?B?OXFFSlp1KytiUTM0eUcybUtnbDB6bUhRbjA2aTZ2aW1RbHlyR0xZM0V4WVdy?=
 =?utf-8?B?SFNlSTdBL1F2WVhUTzlZQ0RDT1ZKTm84TUpZSHZRVU1MMkhhZmhVRTIxZ3Iy?=
 =?utf-8?B?UEVxcVRzbnRMa0VaMTZMaE1OUDVNclZiQVIvZFRHMDJEUUw1clpZV2lqSmFB?=
 =?utf-8?B?Qnp5ekMyYUViT2tJYWJaNzJHeW5jSVlWajFTbC9JWnpMK2VIa21UM1pKSXFE?=
 =?utf-8?B?OEk1YW5XRzJ6WmprblgxSnFaam1IS1VaZGxDc2ZMbmZaMlFJczVJMGlHTUNR?=
 =?utf-8?B?ckl2NmxIV0hBcEFtK3l4blUrWHFTY1RyRXpuTEd0Mk53UVE5UXFCcjZBOTlp?=
 =?utf-8?B?bkl4djdUK3FPdjVwRHQ3TEVLS3dvVkZOZ1FtUFBKczhoeE1iOWZIeVpiT29Q?=
 =?utf-8?Q?SxV+UKjxSDhXQjqJPvG/uU4SvPX1jHA2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MklDUlcxUFlrSVhuZ0pWRFZCcTFzODhXSkVBRzFTMDN0eHFYVHpZdG5EWkNv?=
 =?utf-8?B?MnZtV2pOY1ljNWZRaDdxSmxDTUY5Z0QvRkMxblpTRXg5eU11c2hUbEtiUGVs?=
 =?utf-8?B?aXZqVDdmdFF4OEw5dzRLcm5GYzJuc25MN3ZZQTNMYWZuNHN3dkwrSlhpb2VL?=
 =?utf-8?B?RGZRNUpYTURkRzVVbUVKWE82MnFuc0Y4R1ZpTi8vbGM5dWFGZ0YrdFh5TWNq?=
 =?utf-8?B?R21JVjJueWJmYnQrVElTNE5OWjQ3OFJ2Y1dQeXNFSEcvTUtqRG4rSks3K2Rq?=
 =?utf-8?B?OXVtL1Q5aEw4Nm5hVy9MOW1aY1UyVWVTRmtKeEtXVWozYnFXbGU1aVFqemVz?=
 =?utf-8?B?R2dpaERqRkhXaVFSWlhZeFZLUU9hUWJLdkhlcUJhcmpaMTd1MWZ2bkY3dU9F?=
 =?utf-8?B?SS8zdnF2RVFnNnl3MU94dnFITXA2OWpLbHJQeU5ZK0I0Y3hCa2lwQmtzZC93?=
 =?utf-8?B?czRSL3RDeFU3akFHY2oveFlZTjlPY000MTZ5UGJ3ek5KaGtVdmFQWnJac0JQ?=
 =?utf-8?B?M0ZtQmtqd0RhZ1hEZlBWK3N3bUNrM1BBSG9qdXdSVDBYOFRwbzdWZ2Q0OE52?=
 =?utf-8?B?OHhSMXUwcEJTdklaOVZVUGVYeG5kOVMvem1mNEZWT2drT3hpN245bGFrYjRZ?=
 =?utf-8?B?L0JhOGdML1B4V0FZWEw2RkhLY3piUUM1N25uUC9WUUlzcUZRWkVKdk1WK0pk?=
 =?utf-8?B?VGVER1Z2b2NkNUxlQzJUeWF6TStKR3hPMERoNDhQVmJPNzFlZ2x5SzFlZEhB?=
 =?utf-8?B?M1pWWGdSMmYzR1UrelVRVmxDZU5ZRkxRZ0FIaXk3QkZFYXludXgwZ1loTkRX?=
 =?utf-8?B?WDlpQmhBYTJFYU5MRmoyQTI3aG5EV3lVOTRQdHllMlMzL2ZyZUdxcjNrTzUz?=
 =?utf-8?B?MTU4dlhUeWd2cTEwak43V040WCtlbi9DY2tRM3pwK1RYV0lad3VhdDlKZTFw?=
 =?utf-8?B?K0tqSjdGWVNpME9lcVNTaGhwNFlmbDYxZElFd2N4S08zTnNPcm9IeGZoYlhC?=
 =?utf-8?B?ZTVGNmJyUHc5WkNmS0NVUi9WZmRhSmR2cHIxYkt3Q0RJM1RSSjloNDBwSFVr?=
 =?utf-8?B?T040czNZRWlkYmV5Z3lHSEF3Q01KVnkvZnA0Ym52aXQ4M2U0bTZscXJ4WWg3?=
 =?utf-8?B?V3FzZ20vUDFpRVEvQllFT2grL0hvSHJBWThHRjdoN3JIWGZKSHVyQ2VnMmY0?=
 =?utf-8?B?dnU0U215bzI5NWFSd3NJOENza2NWTEU2WlFvMHEyc0tnOGxJclQ2MDJiVncz?=
 =?utf-8?B?OGtJTWo5d3VjS015RVpJOXNhUnNjMXk4WmJYb3p5OVZNbEdWQ0w2dFJ0MlYv?=
 =?utf-8?B?NExHR2toMVJYRkxrY2NuVERKUUszRFY5TG9kYWE2bEN4ZkQ3UFJVbktoajdx?=
 =?utf-8?B?TmlZc0EvalJGSFI0STVkZTZQdVppTlRoTE0vZXRwMmhrSi8yR2gra3VBMSt6?=
 =?utf-8?B?cWNWelBMd1dlS1o4VGFaaTdzQUpxK1U1VUJGa0dVanFmSUJOamFtUDNRbkow?=
 =?utf-8?B?UEhRamdVY0NlV3krd2RKWFlpMXlmTkwvSytodFBFSVhvQnVXODI2ajF1ZmFT?=
 =?utf-8?B?RzZKYlBiUko3bUdtbUtGZi81dTVCUFpTamdBZThzci9kdi9SQ0tucXVEbTJa?=
 =?utf-8?B?ajRNMW92RmErNUovQllOMUJ6T0F2d3g2c21keDVJME9MOGkyTnRRR2tIUU5u?=
 =?utf-8?B?Z2RFV005V2JEeXgwQkRPWEF1K1lEeXJEblJ6UzVvc1RqV0lLWXpZS2pZMjBk?=
 =?utf-8?B?aWRnTUNXbE94dHRGOEt5ZW4yYWdaMDR4M3pOYTBDY0IxWGdyd0s3RS9IREZH?=
 =?utf-8?B?Q3U5YUY5NkNFZWtGNUs2bFdlWldxcGhOdG8zQ0tpYnovWFZpMlhteGd5QTlF?=
 =?utf-8?B?YmdkVGxaWVRRTnl5enNpTFpaS2dkQTEyMnNJS0hRUjhpblRZd0tpNXpRR08y?=
 =?utf-8?B?eXRodDNwMkYzMzFIN0ZZUCs2OVVXSVdzRUwyK3R6Y3gyZlBvVDVyd3NUZ0Yr?=
 =?utf-8?B?cmlpdGhEemFVWTF1K3l2OHJNeklrdHd2OW9TRnBXVjdxQUs2Nk9CRWdSdHlS?=
 =?utf-8?B?Q1AyS1ZldHlpUXlYZDBoN3ZrYXEzMWVtei85bGd3QVlpbXlraXF0MDNCbnRK?=
 =?utf-8?Q?sU2vhTwVrtTCZbC+22xaD46w+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a03217a8-f295-44c5-3ea4-08dd33c49c63
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 11:22:48.6465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6zIHbN7uAq6b6ZQtnw90Ob9vojXMMlF/u1mXGG2/FqyI1YdnlnPLhDx0n65RlJmaVcRWo+DjaUOOST3oJtrOgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6104
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0KPiBIw7Zn
YW5kZXINCj4gU2VudDogVGh1cnNkYXksIDkgSmFudWFyeSAyMDI1IDEyLjM2DQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBbUEFUQ0ggNC80XSBkcm0vaTkxNS9wc3I6IEFsbG93IGNoYW5naW5nIFBhbmVsIFJl
cGxheSBtb2RlIHdpdGhvdXQNCj4gZnVsbCBtb2Rlc2V0DQo+IA0KPiBDdXJyZW50bHkgd2UgYXJl
IGZvcmNpbmcgZnVsbCBtb2Rlc2V0IGlmIFBhbmVsIFJlcGxheSBtb2RlIGlzIGNoYW5nZWQuIFRo
aXMgaXMgbm90DQo+IG5lY2Vzc2FyeSBhcyBsb25nIGFzIHdlIGFyZSBub3QgY2hhbmdpbmcgc2lu
ayBQQU5FTCBSRVBMQVkgRU5BQkxFIGJpdCBpbg0KPiBQQU5FTCBSRVBMQVkgRU5BQkxFIEFORCBD
T05GSUdVUkFUSU9OIDEgcmVnaXN0ZXIuIFRoaXMgY2FuIGJlIGFjaGlldmVkIGJ5DQo+IGVudGVy
aW5nIFBhbmVsIFJlcGxheSBpbmFjdGl2ZSBtb2RlIChMaXZlIEZyYW1lIG1vZGUpIHdoZW4gUGFu
ZWwgUmVwbGF5IGlzDQo+IGRpc2FibGVkIGFuZCBrZWVwIFBBTkVMIFJFUExBWSBFTkFCTEUgYml0
IGluIFBBTkVMIFJFUExBWSBFTkFCTEUgQU5EDQo+IENPTkZJR1VSQVRJT04gMSBlbmFibGVkIGFs
d2F5cyBpZiBwYW5lbCBpcyBqdXN0IHN1cHBvcnRpbmcgUGFuZWwgUmVwbGF5Lg0KPiANCg0KUmV2
aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVk
LW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNCAt
LS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAg
ICAgfCAyNSArKysrKysrKysrKysrLS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNl
cnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDIxMzE5Zjc1M2EzNC4uMzU0OTll
YjI5NmIzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiBAQCAtNTYzOCwyMCArNTYzOCw2IEBAIGludGVsX3BpcGVfY29uZmlnX2NvbXBh
cmUoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLA0KPiAg
CQlQSVBFX0NPTkZfQ0hFQ0tfQ1NDKG91dHB1dF9jc2MpOw0KPiAgCX0NCj4gDQo+IC0JLyoNCj4g
LQkgKiBQYW5lbCByZXBsYXkgaGFzIHRvIGJlIGVuYWJsZWQgYmVmb3JlIGxpbmsgdHJhaW5pbmcu
IFBTUiBkb2Vzbid0IGhhdmUNCj4gLQkgKiB0aGlzIHJlcXVpcmVtZW50IC0+IGNoZWNrIHRoZXNl
IG9ubHkgaWYgdXNpbmcgcGFuZWwgcmVwbGF5DQo+IC0JICovDQo+IC0JaWYgKGN1cnJlbnRfY29u
ZmlnLT5hY3RpdmVfcGxhbmVzICYmDQo+IC0JICAgIChjdXJyZW50X2NvbmZpZy0+aGFzX3BhbmVs
X3JlcGxheSB8fA0KPiAtCSAgICAgcGlwZV9jb25maWctPmhhc19wYW5lbF9yZXBsYXkpKSB7DQo+
IC0JCVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19wc3IpOw0KPiAtCQlQSVBFX0NPTkZfQ0hFQ0tf
Qk9PTChoYXNfc2VsX3VwZGF0ZSk7DQo+IC0JCVBJUEVfQ09ORl9DSEVDS19CT09MKGVuYWJsZV9w
c3IyX3NlbF9mZXRjaCk7DQo+IC0JCVBJUEVfQ09ORl9DSEVDS19CT09MKGVuYWJsZV9wc3IyX3N1
X3JlZ2lvbl9ldCk7DQo+IC0JCVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19wYW5lbF9yZXBsYXkp
Ow0KPiAtCX0NCj4gLQ0KPiAgCVBJUEVfQ09ORl9DSEVDS19CT09MKGRvdWJsZV93aWRlKTsNCj4g
DQo+ICAJaWYgKGRldl9wcml2LT5kaXNwbGF5LmRwbGwubWdyKQ0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggZjk2OWFiYzU2MjU2Li4zNDk0NjIw
ZDFjNDQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBAQCAtMTk5OCwxOCArMTk5OCwyNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xv
Y2tlZChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAgCWlmICghcHNyX2ludGVycnVw
dF9lcnJvcl9jaGVjayhpbnRlbF9kcCkpDQo+ICAJCXJldHVybjsNCj4gDQo+IC0JaWYgKGludGVs
X2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpIHsNCj4gKwlpZiAoaW50ZWxfZHAtPnBzci5w
YW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gIAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiRW5h
YmxpbmcgUGFuZWwgUmVwbGF5XG4iKTsNCj4gLQl9IGVsc2Ugew0KPiArCWVsc2UNCj4gIAkJZHJt
X2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiRW5hYmxpbmcgUFNSJXNcbiIsDQo+ICAJCQkgICAgaW50
ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQgPyAiMiIgOiAiMSIpOw0KPiANCj4gLQkJLyoN
Cj4gLQkJICogUGFuZWwgcmVwbGF5IGhhcyB0byBiZSBlbmFibGVkIGJlZm9yZSBsaW5rIHRyYWlu
aW5nOiBkb2luZyBpdA0KPiAtCQkgKiBvbmx5IGZvciBQU1IgaGVyZS4NCj4gLQkJICovDQo+IC0J
CWludGVsX3Bzcl9lbmFibGVfc2luayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+IC0JfQ0KPiAr
CS8qDQo+ICsJICogRW5hYmxpbmcgaGVyZSBvbmx5IGZvciBQU1IuIFBhbmVsIFJlcGxheSBlbmFi
bGUgYml0IGlzIGFscmVhZHkNCj4gKwkgKiB3cml0dGVuIGF0IHRoaXMgcG9pbnQuIFNlZQ0KPiAr
CSAqIGludGVsX3Bzcl9wYW5lbF9yZXBsYXlfZW5hYmxlX3NpbmsuIE1vZGlmaWVycy9vcHRpb25z
Og0KPiArCSAqICAtIFNlbGVjdGl2ZSBVcGRhdGUNCj4gKwkgKiAgLSBSZWdpb24gRWFybHkgVHJh
bnNwb3J0DQo+ICsJICogIC0gU2VsZWN0aXZlIFVwZGF0ZSBSZWdpb24gU2NhbmxpbmUgQ2FwdHVy
ZQ0KPiArCSAqICAtIFZTQ19TRFBfQ1JDDQo+ICsJICogIC0gSFBEIG9uIGRpZmZlcmVudCBFcnJv
cnMNCj4gKwkgKiAgLSBDUkMgdmVyaWZpY2F0aW9uDQo+ICsJICogYXJlIHdyaXR0ZW4gZm9yIFBT
UiBhbmQgUGFuZWwgUmVwbGF5IGhlcmUuDQo+ICsJICovDQo+ICsJaW50ZWxfcHNyX2VuYWJsZV9z
aW5rKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gDQo+ICAJaWYgKGludGVsX2RwX2lzX2VkcChp
bnRlbF9kcCkpDQo+ICAJCWludGVsX3NucHNfcGh5X3VwZGF0ZV9wc3JfcG93ZXJfc3RhdGUoJmRp
Z19wb3J0LT5iYXNlLA0KPiB0cnVlKTsgQEAgLTI4MTUsNiArMjgyMiw4IEBAIHZvaWQgaW50ZWxf
cHNyX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICAJCW5lZWRzX3RvX2Rpc2FibGUgfD0gbmV3X2NydGNfc3RhdGUtPmhhc19zZWxfdXBkYXRl
ICE9IHBzci0NCj4gPnNlbF91cGRhdGVfZW5hYmxlZDsNCj4gIAkJbmVlZHNfdG9fZGlzYWJsZSB8
PSBuZXdfY3J0Y19zdGF0ZS0NCj4gPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCAhPQ0KPiAgCQkJ
cHNyLT5zdV9yZWdpb25fZXRfZW5hYmxlZDsNCj4gKwkJbmVlZHNfdG9fZGlzYWJsZSB8PSBuZXdf
Y3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSAhPQ0KPiArCQkJcHNyLT5wYW5lbF9yZXBsYXlf
ZW5hYmxlZDsNCj4gIAkJbmVlZHNfdG9fZGlzYWJsZSB8PSBESVNQTEFZX1ZFUihpOTE1KSA8IDEx
ICYmDQo+ICAJCQluZXdfY3J0Y19zdGF0ZS0+d21fbGV2ZWxfZGlzYWJsZWQ7DQo+IA0KPiAtLQ0K
PiAyLjM0LjENCg0K

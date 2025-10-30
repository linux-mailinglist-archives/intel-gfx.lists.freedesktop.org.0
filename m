Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA36C227AB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 22:56:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC4810EA47;
	Thu, 30 Oct 2025 21:56:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AbpOa/lI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CEDA10EA42;
 Thu, 30 Oct 2025 21:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761861376; x=1793397376;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=JP9s1XxjbjchBREcEH0GnaqmUz0AF1bazyuFx62kPzA=;
 b=AbpOa/lIa9bEtDhuYGU5gJJ3I3RZqELzYyjcAbc3kSISjG7Is96Y8zrC
 BZfS2Ah0YSDOtHgZEPI3K4YaNxjD8QRax8/MZ1AAihlAn5tIgkBeZBohX
 CmXMEXd1LMnrbxw+qv4lFHBZx+HqTNYV4Vpt/4OUM1AfwrZ3fj66VEXqm
 jTOtvhRxKzf257Z+ihSmTny0ZBOLx/KKNZjueFR6NPOhB+94t3JqtpDJQ
 A5KBiIb+LS5HqGoBpHA9PZ0C8OTNj5Sq1l1cwEARk6/DB7Re7rWK2z8b0
 z//Q/8kOUeJwQZDmDaioUwOupfai+pCN1XXzK5rrk7oN/eTZQJGc+t5H2 A==;
X-CSE-ConnectionGUID: klgGk3T9RZuTdZy5X4ZNYA==
X-CSE-MsgGUID: k6/qYl/BSMWfrnzWhnj+KQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64049766"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="64049766"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 14:56:15 -0700
X-CSE-ConnectionGUID: w7i9sLi8SbC4GBupcFdSZg==
X-CSE-MsgGUID: J1Ee6u6pSDeswtNuemnkkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="185944750"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 14:56:15 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 14:56:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 14:56:14 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.37) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 14:56:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v01EypkrZRjoODDnVm344261KYJZQH5Txrw1SgrFdbEs9y7+WL91Bn745AQ0lXhVHE4X1z/pbZwWVm7sS2Zk258R1Z0h95qJ9os9m9NBG0QEogE99JsFeKf4ISFsTJ1eZTXua1Y8Z9NVucKlY+Y+f/FwdEcVyS9HOvncYh5Obif7M1jRf1DWMYhadQ71GLyPHEQkpSqltOq8KcUN86kMdIfLtWeOTlI8eoHGI8aZKwtprUCyqQ++CMUGireDe67EV8iYr3UgnfFqJXh4+VJr/394W7YYmL2ReR57uEsaJ/24c3rzxc9tJaL4w/pn1rizo5Bichp40YevpmqBY+ZADg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C/APXsFi4yeLQhTse06VwD+9PnVoY1/XFAtpa8w3r6o=;
 b=Nrfl9l7e+vZZ06nD3sngfnhZ36qNoGVhaeXtwCnowDr/VpurJk3hIohwc499toZRs5RSc8xuFCN9an473u2GmY20FwKgfZBqsavNim+Fco82Vi6ObVxqmM8yLM0989MaT9CWUcUZ3+JzG8cLDnfxE8d4YisBmzRkQFaW86eo8zVXg2WuMOLFQZfIrcsFyX1AU9HL0A9l6SaY0o6+rFb8pGmi/2FiV8WsJ7m+sOy5ZLKK2tie/3E5O7j0kbTwau2+jpc7erCaR84WpU3Fu9VECVuWa9sk8saGF1lEnsbV7JG9gEoBhvGbTQoZ7XdkD5A4qDvNJtXZHmwIXrmhJIsdjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6751.namprd11.prod.outlook.com (2603:10b6:806:265::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Thu, 30 Oct
 2025 21:56:11 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.013; Thu, 30 Oct 2025
 21:56:11 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251029205439.GB2806654@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-11-10eae6d655b8@intel.com>
 <20251029205439.GB2806654@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v2 11/32] drm/i915/xe3p_lpd: Underrun debuggability and
 error codes/hints
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Thu, 30 Oct 2025 18:56:07 -0300
Message-ID: <176186136767.3303.5566189832436852888@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6751:EE_
X-MS-Office365-Filtering-Correlation-Id: 348bdf10-64f1-40ca-51f7-08de17ff2383
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aFJkZGloa1lFR09oT0o1alk4Vm9waFBBaUpoV0x4WHFiVEd2aWQzNkVIcFNN?=
 =?utf-8?B?UzhpYzlURTJHRTF4SnFDSG1jUHVKc3ozS2ZCaGJjWGQzc25CKzJsbWdXSExC?=
 =?utf-8?B?R1ZHdHkzVHVKckxMUjVVSy8zbG80eHZZellMUWdiYStpVkR4TmRKOTM1MmQ2?=
 =?utf-8?B?cmZNVm1RVDVCMitvQmxpVk1mejJxcmxHMXlyOHR0RzBCeHQxckFieEdaem00?=
 =?utf-8?B?NWp2MzI0SDlpc01TY1pDZ1dGSDFpUkVRRXUzTVNEblpqeWJaWjZPaGVXRXhl?=
 =?utf-8?B?b1RORHh5RGU4QmVnb3MwMm5OczViNzRTRUhWK2lnVUFzcFNNd1pZQUsraU1Z?=
 =?utf-8?B?eCs2UlJsWVF4bG1ENWZWUFkvUkE5SWFKdWcvOUtqV0pxakJ5T1BDVlNYNERT?=
 =?utf-8?B?aXVqY1B3bnZYQ29CanRxMnlsaEV1bmJqNittOVhBdE0ycklqR1MveEVzY1ZW?=
 =?utf-8?B?cnFLdWlGcXZPblpzOVZOWkdDS25FTVJxc21lakhPeDEwSnZERVEyRVl0RUp1?=
 =?utf-8?B?MW5ZTThtU0ZLRVkxdW9rUXUwMVpPKzFYREJ0Wkp4SlZLaWdwRHB1UlNqZ2Fu?=
 =?utf-8?B?OVl0RHZtbU5GOEljbGRyZHJWNVlxUlhMUjVMb000bHVPMkIrbWxibzNOMHdZ?=
 =?utf-8?B?WjU0K1ZtcFFJUGw3cEZJL2xKOUtzMFY3VW1JcFBpZHlVNDM1ekREenExeUNZ?=
 =?utf-8?B?MjJwTTdwOXJZUGpGbE5WMlJxc0J4OWJFbDVDSm1wc1VCbk9hem1vTFlvMlpM?=
 =?utf-8?B?dnhaYmpXb01MNGVRcjZwZWdtbkIxcHVNVERnalNVYnphUldxajlSbkhGT0VQ?=
 =?utf-8?B?K2hEalNCaHFscFFoa3l4V3d4VEhYaVFmK3JZaVlNZjh2MDBJSW9VQldZanVi?=
 =?utf-8?B?NUJDRUpMZmNuamp1TkFiWTV0OEdCdUFBR1VTS0ZGYmYwQThPczVOaVEyRkxL?=
 =?utf-8?B?VE04cU52WHBkYlJMS0xjVElJNlh2KzJIbkswaWo3SUV2NmVxZS9XdHNBbmQv?=
 =?utf-8?B?UmJCbmQ3aWFXQ0RnVlNUV3FmUFp4VzdBRmJ0aXoxR2ZoRmsyN2d5eDZNVWFR?=
 =?utf-8?B?bTZKZlZNbVJiQmhTRndaSTBXb0J4QXlMV2xubzZwUmZZL2dEWXNUVnhTNU9t?=
 =?utf-8?B?WEkxd1VwSS9naFZZYk1US1Z3eUhZd0VPWm5scmc2Z3ZnOHp5cEgybElET3hI?=
 =?utf-8?B?K3VVektwWTVlRENGMGpjaFRUWG5Vc3habEpUZWdsZG9PQVdNaTNlTm9BSzJx?=
 =?utf-8?B?NHlUcnhrUmI2VUtxeENUMWpWNW5vc051dWJMeVNiTUErdWhJVEdJSjRGZUVp?=
 =?utf-8?B?U01raVhaZDNqWmhGQmhzTHJFaHRCM3FGajZ6WXNDeW5TMEp3NDJrWFIrZ2Ro?=
 =?utf-8?B?K203RW5iZmxnNUpzTVEzbC9rSkxYWW1GcHpPTWt5WnlVSXpKOWVST1JsUWdX?=
 =?utf-8?B?bUdFY3cvN3kyVHRVdXpBV28yM2hsMTk5WU1zaXNtbGRaK0ZKRkIzaVc0MkN0?=
 =?utf-8?B?VGdTUW45RE5lNW5GOS81bTZ6alVjQnZrQ0pxS3FmLzBtczlQQ3IrWVVBeGRy?=
 =?utf-8?B?eG5QS2lwcGp3cExpTEVWRjlZZTY2bjZPOU9QNktvM0VaMUx1ZWFRMDdBbWV4?=
 =?utf-8?B?cHBUVXNYS1kzKzVTejIzR3J1aStEMDZ6YS9abmZJUjRacUhGZVJKVEduTlAr?=
 =?utf-8?B?b2tKYWh0dnMveEprRVJLclk2cDdtcnQvV0IrcFR4NnpYdWQ2WmttcVBKT0xK?=
 =?utf-8?B?QXRVTTVEVTZ1bFk3VjRDNS9UUTlwbVJJZXk5c2hEODg5ZGYrQ2V0YzdnSHNF?=
 =?utf-8?B?WXRCNC9sU0t3UXA1MGl1WEY2N0ZlYXJpZmh1dmtPdG5NbFEvZEZpTVpwMi92?=
 =?utf-8?B?UlBwa1JuVVEyYTdWVThwL1Y4Z2tiMUhOeTV2Y0ZLdTR1a2ZNbmpWYkpHRERC?=
 =?utf-8?Q?Vsf5hH5RyVuDmC1GOTrO0NWcphrU1kT6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YytqZUZOTVhpZkdjd1J3THlMR0hGSDk4ZDJIOFRDZTNYMEVveUlmOFFNTXA5?=
 =?utf-8?B?dXBudFR1czVzcldINGttbFp1K2dwNlNzZ2NzU3ZTQ09YNityekxydFVRckpW?=
 =?utf-8?B?bTAzYjYyUHJCRzhWN282TTRzdlI1bXhucmswa0RXMlVRNEUyaXBXeEl4RHQ4?=
 =?utf-8?B?WTVnWWxkZndMdlpsOU9pOU1zVkg3d3o0Mjl6eHRjWTdMbWFGcVNQbmVuVXR5?=
 =?utf-8?B?MDlSU1YzL1UyNEl4R1ozcmh6QnovU1FBd0d5MTllNFN1TjZUTUZZL1pVb29l?=
 =?utf-8?B?UStLRXNpRVpEM0taYzhmdjBGTHJJTkszak9GOXFqY1dtUlBBbVdDZU5VemV0?=
 =?utf-8?B?a1ZkL1pPaWJrZmwyaDlxU0lVcXo4NThQMTJzaFFrb0t4R1grSVVRMjkvZWVE?=
 =?utf-8?B?RTMyalU2bG4vckJoYlRKd21xYjEwU2kxR1RGWE9pM0JoSkZoR1YraDNobmtO?=
 =?utf-8?B?dUJ6bGlLOG5oSVNrbnpQZUNCYlEyNHdWVmxRaVVocmp4cVZLWTUrRlpPWEZk?=
 =?utf-8?B?d0NwcTl6VXZkbWxhZGZUMVhzWXNFdGJRTWVwNnJjdWxQcUt3eVRwOTY2NGcw?=
 =?utf-8?B?cWZVelE3dU9TMkhXOHFVVUxsVXVQQ1ZodnBFQXFmdGZJaXZ4RlVyQWVSSTZB?=
 =?utf-8?B?YzhWNFlVNTl5cUNJWnlTYWpGcnVteVZ1ODkwTURMV2pVemdtTE91UjlKUkZz?=
 =?utf-8?B?Rm1QZnNpNDdiY0FBTTFxVzRtVk9aNmF5cXdlajJQNTNUU0FmWkQ2TDlBZllO?=
 =?utf-8?B?WlI0TTVyTVdVZXlOd0VQczVlRm5Qc3dWVFh1enMwM2J4czhSeVp0ZVU0U2xx?=
 =?utf-8?B?NHlqVDJaL2dmUXVuSUMzVE1kTkhwc1JGaHNoVWNEK2dTMW9sM21pTmFrc1V2?=
 =?utf-8?B?MjZoaFA2aTA5d0c3YjVFQklXOTFrQ3gzeFpFcnVVanN5ZDNEUWFpSUFObm12?=
 =?utf-8?B?WUJuMHIwUjBPMTdqZDFydmFjV1c3SnF4bmdwMzBvRmJ6Y0hmNUtjc1B0R21T?=
 =?utf-8?B?eGgyWVNBeUlKVXhlcTdrS1d4N3V1R0ptNmM3WTVLM1BDT1ZzdGVsRW5VMXZP?=
 =?utf-8?B?Yno4S21CS3Zrc0JyU2UvUGdGZldnZXpQSHJyL0I4UCt4ZUFLNzNrZjIyRDJT?=
 =?utf-8?B?TU8wSnBDb2NVTkVnUXFYeDYyOUk3UExrRnQ0MWxzSnZER2hNWTRUbzVsOXQy?=
 =?utf-8?B?OHBrYzVNYks3L3MxS0kzNW53UzNNUm54Sk8vRDR5ZDM4a0VTQVAwOXdRN1VZ?=
 =?utf-8?B?QUtyN3M2UWtabkhGalgzOFdPY3k1YzU1SlRjOHVlcEg0Z1N5WDB6UUt5K0JY?=
 =?utf-8?B?czNtaXE0Tm5TNUxEN2ozSmFIM1hVc0p4NEkxTStJNFhxUkI1Uk50aXAvQnh4?=
 =?utf-8?B?QytZazJoVXEwTDB0bWtKVG5xVkxaMjNpbFg2Mi9Ndng3cEJaWFBGUGZIcjN3?=
 =?utf-8?B?Ty85UTcyZ1BSUnIxTFcvREtHTHpGUTNMRncvVVVJNEVRSjNLUXlPWlZWbUky?=
 =?utf-8?B?eTZqZCsrTkxNQkkrTDc3TFdVaWVrRkVuSUZ2K0hvMWtjTS9PMTMvTldaS2lE?=
 =?utf-8?B?OEc4eVBBVmpQZllDemNhZXdTdUNlbzlCMmlnRno1OWZUam5jYmY3cHoyczFv?=
 =?utf-8?B?K2RyU3R1SUd4RDdya1lYclREQWxpU1NFN2l5ejRRd09vSnFTUGF3UnNsM0Q4?=
 =?utf-8?B?YXlqR1lYSmNZT3QwTnVCelhJZmpaQmR6bVhpNkxLMHNDYW9hU2pZYVM0OFJD?=
 =?utf-8?B?NThzbGlhMTlQYWRZRklzUVZ1KzJiQm8vVk9KamptbEExR002dHhValEzSnEw?=
 =?utf-8?B?YjZTWGZBaFRSeDhJWldGZ3dFZmJQWjRaTFZ6eWxtck4zNGhsOGJJSXpLYndj?=
 =?utf-8?B?VUJ6a1EyQmNLaFVBYzhNSjkrOEZ1dEdva1JWRWsvNmdHVjRGc2ZCZEFPQUFv?=
 =?utf-8?B?bXlyVm5iTktBNEsvaHl4Ym5YK0VPQ3V5VnlKaXhFNkhuRnZhTnZsUXFCZjVJ?=
 =?utf-8?B?NEU5QThNVGxTSThBOHdBc3VrTGpMSjFFYzhoeVlRUlpqdEJMd0xzUkFoNWw1?=
 =?utf-8?B?cDNlZUdOYTBPcjVLZVZVZ2dHamdCSXduaHROOFJId3R1ODIrY1doTW1HT2FD?=
 =?utf-8?B?cE5wQmYwNEhTbTQvczVjMnQ2NFJYdFlndzU3OG5GWmpGWXhHZC8yV2pEU3Zm?=
 =?utf-8?B?NXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 348bdf10-64f1-40ca-51f7-08de17ff2383
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 21:56:11.5304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HCEemhCnuQx3ybD8jvzPNOVwTS5Suy0BeikZDNQhbP3GsV96t7B3d0IJw+UD5pMpzko2OOPmOXZiu4af5fSyjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6751
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

Quoting Matt Roper (2025-10-29 17:54:39-03:00)
>On Tue, Oct 21, 2025 at 09:28:36PM -0300, Gustavo Sousa wrote:
>> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>>=20
>> Starting with Xe3p_LPD, we get two new registers and some bits in
>> existing registers that expose hardware state information at the time of
>> underrun notification that can be relevant to debugging.
>>=20
>> Add the necessary logic in the driver to print the available debug
>> information when an underrun happens.
>>=20
>> v2:
>>   - Use seq_buf to generate planes string. (Jani)
>>   - Move definition of FBC_DEBUG_STATUS to intel_fbc_regs.h. (Ville)
>>   - Change logic for processing UNDERRUN_DBG1 to use loops and move it
>>     to a separate function. (Gustavo)
>>   - Always print underrun error message, even if there wouldn't be any
>>     debug info associated to the underrun. (Gustavo)
>>=20
>> Bspec: 69111, 69561, 74411, 74412
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_regs.h  | 20 +++++
>>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  2 +
>>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 87 +++++++++++++++=
+++++++
>>  3 files changed, 109 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers=
/gpu/drm/i915/display/intel_display_regs.h
>> index 9d71e26a4fa2..c9f8b90faa42 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -882,6 +882,25 @@
>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK                REG_GENMAS=
K(2, 0) /* tgl+ */
>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_PRE=
P(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>> =20
>> +#define _UNDERRUN_DBG1_A                                0x70064
>> +#define _UNDERRUN_DBG1_B                                0x71064
>> +#define UNDERRUN_DBG1(pipe)                                _MMIO_PIPE(p=
ipe, \
>> +                                                                   _UND=
ERRUN_DBG1_A, \
>> +                                                                   _UND=
ERRUN_DBG1_B)
>> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK                REG_GENMASK=
(29, 24)
>> +#define   UNDERRUN_DDB_EMPTY_MASK                        REG_GENMASK(21=
, 16)
>> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK                        REG_GENM=
ASK(13, 8)
>> +#define   UNDERRUN_BELOW_WM0_MASK                        REG_GENMASK(5,=
 0)
>> +
>> +#define _UNDERRUN_DBG2_A                                0x70068
>> +#define _UNDERRUN_DBG2_B                                0x71068
>> +#define UNDERRUN_DBG2(pipe)                                _MMIO_PIPE(p=
ipe, \
>> +                                                                   _UND=
ERRUN_DBG2_A, \
>> +                                                                   _UND=
ERRUN_DBG2_B)
>> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN                REG_BIT(31=
)
>> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK                REG_GENMASK(30,=
 20)
>> +#define   UNDERRUN_LINE_COUNT_MASK                        REG_GENMASK(1=
9, 0)
>> +
>>  #define DPINVGTT                                _MMIO(VLV_DISPLAY_BASE =
+ 0x7002c) /* VLV/CHV only */
>>  #define   DPINVGTT_EN_MASK_CHV                                REG_GENMA=
SK(27, 16)
>>  #define   DPINVGTT_EN_MASK_VLV                                REG_GENMA=
SK(23, 16)
>> @@ -1416,6 +1435,7 @@
>> =20
>>  #define GEN12_DCPR_STATUS_1                                _MMIO(0x4644=
0)
>>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>> +#define  XE3P_UNDERRUN_PKGC                                REG_BIT(21)
>> =20
>>  #define FUSE_STRAP                _MMIO(0x42014)
>>  #define   ILK_INTERNAL_GRAPHICS_DISABLE        REG_BIT(31)
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu=
/drm/i915/display/intel_fbc_regs.h
>> index b1d0161a3196..272dba7f9695 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> @@ -88,6 +88,8 @@
>>  #define DPFC_FENCE_YOFF                        _MMIO(0x3218)
>>  #define ILK_DPFC_FENCE_YOFF(fbc_id)        _MMIO_PIPE((fbc_id), 0x43218=
, 0x43258)
>>  #define DPFC_CHICKEN                        _MMIO(0x3224)
>> +#define FBC_DEBUG_STATUS(pipe)                _MMIO_PIPE(pipe, 0x43220,=
 0x43260)
>
>Is 'pipe' correct here?  Most of the other FBC registers are
>parameterized by FBC instance rather than pipe.

Yeah, I just blindly copy/pasted the definition without realizing that
the rest of the file uses fbc_id. I'll change it to use fbc_id as well.

>
>> +#define   FBC_UNDERRUN_DECOMPRESSION                REG_BIT(27)
>>  #define ILK_DPFC_CHICKEN(fbc_id)        _MMIO_PIPE((fbc_id), 0x43224, 0=
x43264)
>>  #define   DPFC_HT_MODIFY                        REG_BIT(31) /* pre-ivb =
*/
>>  #define   DPFC_NUKE_ON_ANY_MODIFICATION                REG_BIT(23) /* b=
dw+ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/driver=
s/gpu/drm/i915/display/intel_fifo_underrun.c
>> index c2ce8461ac9e..43cf141a59ae 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> @@ -25,6 +25,8 @@
>>   *
>>   */
>> =20
>> +#include <linux/seq_buf.h>
>> +
>>  #include <drm/drm_print.h>
>> =20
>>  #include "i915_reg.h"
>> @@ -34,6 +36,7 @@
>>  #include "intel_display_trace.h"
>>  #include "intel_display_types.h"
>>  #include "intel_fbc.h"
>> +#include "intel_fbc_regs.h"
>>  #include "intel_fifo_underrun.h"
>>  #include "intel_pch_display.h"
>> =20
>> @@ -352,6 +355,87 @@ bool intel_set_pch_fifo_underrun_reporting(struct i=
ntel_display *display,
>>          return old;
>>  }
>> =20
>> +#define UNDERRUN_DBG1_NUM_PLANES 6
>> +
>> +static void process_underrun_dbg1(struct intel_display *display,
>> +                                  enum pipe pipe)
>> +{
>> +        struct {
>> +                u32 mask;
>> +                const char *info;
>> +        } info_masks[] =3D {
>> +                { UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, "DBUF block not v=
alid" },
>> +                { UNDERRUN_DDB_EMPTY_MASK, "DDB empty" },
>> +                { UNDERRUN_DBUF_NOT_FILLED_MASK, "DBUF not completely f=
illed" },
>> +                { UNDERRUN_BELOW_WM0_MASK, "DBUF below WM0" },
>> +        };
>> +        DECLARE_SEQ_BUF(planes_desc, 32);
>> +        u32 val;
>> +
>> +        val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>> +        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>> +
>> +        for (int i =3D 0; i < ARRAY_SIZE(info_masks); i++) {
>> +                u32 plane_bits;
>> +
>> +                plane_bits =3D val & info_masks[i].mask;
>> +
>> +                if (!plane_bits)
>> +                        continue;
>> +
>> +                plane_bits >>=3D ffs(info_masks[i].mask) - 1;
>
>Nitpick:  It seems like we're just open-coding REG_FIELD_GET here.  Any
>reason not to simplify down to something like this?
>
>        u32 plane_bits =3D REG_FIELD_GET(info_masks[i].mask, val);
>
>        if (!plane_bits)
>                continue;

We can't use REG_FIELD_GET() because the mask parameter must be a
constant expression. That's why I went with open-coded version.

We could change the current patch to use REG_FIELD_GET() with something
like below. What do you think?

    |diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/driv=
ers/gpu/drm/i915/display/intel_fifo_underrun.c
    |index 43cf141a59ae..34faedb9799c 100644
    |--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
    |+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
    |@@ -360,35 +360,28 @@ bool intel_set_pch_fifo_underrun_reporting(struc=
t intel_display *display,
    | static void process_underrun_dbg1(struct intel_display *display,
    | 				  enum pipe pipe)
    | {
    |+	u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
    | 	struct {
    |-		u32 mask;
    |+		u32 plane_mask;
    | 		const char *info;
    |-	} info_masks[] =3D {
    |-		{ UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, "DBUF block not valid" },
    |-		{ UNDERRUN_DDB_EMPTY_MASK, "DDB empty" },
    |-		{ UNDERRUN_DBUF_NOT_FILLED_MASK, "DBUF not completely filled" },
    |-		{ UNDERRUN_BELOW_WM0_MASK, "DBUF below WM0" },
    |+	} masks[] =3D {
    |+		{ REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, val), "DBUF blo=
ck not valid" },
    |+		{ REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DDB empty" },
    |+		{ REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val), "DBUF not comp=
letely filled" },
    |+		{ REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DBUF below WM0" },
    | 	};
    | 	DECLARE_SEQ_BUF(planes_desc, 32);
    |-	u32 val;
    |=20
    |-	val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
    | 	intel_de_write(display, UNDERRUN_DBG1(pipe), val);
    |=20
    |-	for (int i =3D 0; i < ARRAY_SIZE(info_masks); i++) {
    |-		u32 plane_bits;
    |-
    |-		plane_bits =3D val & info_masks[i].mask;
    |-
    |-		if (!plane_bits)
    |+	for (int i =3D 0; i < ARRAY_SIZE(masks); i++) {
    |+		if (!masks[i].plane_mask)
    | 			continue;
    |=20
    |-		plane_bits >>=3D ffs(info_masks[i].mask) - 1;
    |-
    | 		seq_buf_clear(&planes_desc);
    |=20
    | 		for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
    |-			if (!(plane_bits & REG_BIT(j)))
    |+			if (!(masks[i].plane_mask & REG_BIT(j)))
    | 				continue;
    |=20
    | 			if (j =3D=3D 0)
    |@@ -399,7 +392,7 @@ static void process_underrun_dbg1(struct intel_dis=
play *display,
    |=20
    | 		drm_err(display->drm,
    | 			"Pipe %c FIFO underrun info: %s on planes: %s\n",
    |-			pipe_name(pipe), info_masks[i].info, seq_buf_str(&planes_desc));
    |+			pipe_name(pipe), masks[i].info, seq_buf_str(&planes_desc));
    |=20
    | 		drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
    | 	}

>
>> +
>> +                seq_buf_clear(&planes_desc);
>> +
>> +                for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
>> +                        if (!(plane_bits & REG_BIT(j)))
>> +                                continue;
>> +
>> +                        if (j =3D=3D 0)
>> +                                seq_buf_puts(&planes_desc, "[C]");
>> +                        else
>> +                                seq_buf_printf(&planes_desc, "[%d]", j)=
;
>> +                }
>> +
>> +                drm_err(display->drm,
>> +                        "Pipe %c FIFO underrun info: %s on planes: %s\n=
",
>> +                        pipe_name(pipe), info_masks[i].info, seq_buf_st=
r(&planes_desc));
>> +
>> +                drm_WARN_ON(display->drm, seq_buf_has_overflowed(&plane=
s_desc));
>> +        }
>> +}
>> +
>> +static void xe3p_lpd_log_underrun(struct intel_display *display,
>> +                                  enum pipe pipe)
>> +{
>> +        u32 val;
>> +
>> +        process_underrun_dbg1(display, pipe);
>> +
>> +        val =3D intel_de_read(display, UNDERRUN_DBG2(pipe));
>> +        if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
>> +                intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_F=
RAME_LINE_COUNTERS_FROZEN);
>> +                drm_err(display->drm, "Pipe %c FIFO underrun info: Fram=
e count: %u, Line count: %u\n",
>> +                        pipe_name(pipe),
>> +                        REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, v=
al),
>> +                        REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
>> +        }
>> +
>> +        val =3D intel_de_read(display, FBC_DEBUG_STATUS(pipe));
>> +        if (val & FBC_UNDERRUN_DECOMPRESSION) {
>> +                intel_de_write(display, FBC_DEBUG_STATUS(pipe), FBC_UND=
ERRUN_DECOMPRESSION);
>> +                drm_err(display->drm, "Pipe %c FIFO underrun info: FBC =
decompression\n",
>> +                        pipe_name(pipe));
>> +        }
>
>As noted above, I'm not sure if 'pipe' is technically correct for this
>register.  I think it always winds up with a 1:1 relationship on current
>platforms, but would it make more sense to just move this check and
>print into intel_fbc_handle_fifo_underrun_irq() where we're already
>handling the FBC stuff on a per-FBC unit basis?

Yeah.  We probably want to check if there is a valid FBC instance
respective to this pipe and then read the register.

I see complications with moving this to
intel_fbc_handle_fifo_underrun_irq():

  1) The function intel_fbc_handle_fifo_underrun_irq() is more about
     disabling the FBC on an underrun.  I think reporting that the FBC
     was decompressing when the there was an underrun makes more sense
     to be grouped together with the other info related to FIFO
     underruns.  It could even be useful if, due to some hw/sw bug, FBC
     is still doing something after we disabled it (or so we thought)
     due to a previous underrun.

  2) Logging underrun debug info is currently guarded by
     intel_set_cpu_fifo_underrun_reporting().  So, we would need to
     complicate the implementation a bit to ensure that
     intel_fbc_handle_fifo_underrun_irq() would only report when
     reporting was enabled.


So, I was thinking about defining a new function
intel_fbc_fifo_underrun_log_info() and calling it from
xe3p_lpd_log_underrun().  What do you think?

--
Gustavo Sousa
>
>
>Matt
>
>> +
>> +        val =3D intel_de_read(display, GEN12_DCPR_STATUS_1);
>> +        if (val & XE3P_UNDERRUN_PKGC) {
>> +                intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDER=
RUN_PKGC);
>> +                drm_err(display->drm, "Pipe %c FIFO underrun info: Pkgc=
 blocking memory\n",
>> +                        pipe_name(pipe));
>> +        }
>> +}
>> +
>>  /**
>>   * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun inter=
rupt
>>   * @display: display device instance
>> @@ -379,6 +463,9 @@ void intel_cpu_fifo_underrun_irq_handler(struct inte=
l_display *display,
>>                  trace_intel_cpu_fifo_underrun(display, pipe);
>> =20
>>                  drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pi=
pe_name(pipe));
>> +
>> +                if (DISPLAY_VER(display) >=3D 35)
>> +                        xe3p_lpd_log_underrun(display, pipe);
>>          }
>> =20
>>          intel_fbc_handle_fifo_underrun_irq(display);
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF15BE1ADA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 08:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C2ED10E94A;
	Thu, 16 Oct 2025 06:16:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h8PWhjHa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D2C10E94A;
 Thu, 16 Oct 2025 06:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760595365; x=1792131365;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Zba/E72aHbxzalHRj5DaFi2Z2jPTDoXMwnpfoCv0huw=;
 b=h8PWhjHaSDzs4pHSyhG4vg6x36BGZnArBwBuTfvHsrltDT1PNZA5vP1V
 ML2PxnmVelQfRbLoRnRSBJ0FC7M1zAGW0s47CwUsVEBnn8kwCDJgydz4z
 sF1jDIfwt7TJ2k2HOWjnl9OGwua8BDZy6c0C9ssI/NHgBFhV03azTIHfn
 xetW7BrA/qyF8mg0Jr6u5Pf5pg1CbtL1HWIpHxhrTZP2DcVO5QU9HW8Ni
 OuDSU6/GKuXaxjdWAJZrxTMYPAx/bQsF8D3jZ4NZI8uavsxfNkPJCPQQQ
 G9TLfqEekxEhUu/HlTJKIEYsGb24nfj8fulBM5mOBj6mfwRR2SgeWgD24 Q==;
X-CSE-ConnectionGUID: ZATnExmKT7WpP23Y+jZmeQ==
X-CSE-MsgGUID: hKWeAenKRtmqrc2gda92RA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="85398397"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="85398397"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:16:04 -0700
X-CSE-ConnectionGUID: nIQmUN3uTGCphVJTkTbFKQ==
X-CSE-MsgGUID: tm1TzjuqTOO4MSor9+Tseg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="186634749"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:16:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 23:16:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 23:16:03 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 23:16:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bsIcYAopsa/4KOkEc5C51q71IWGok2H6z3o7tZ4mvSFxRJioUNM9w03aGfsjME0nTJoVxDP+z0CiATMlNvV1QjQncY69/6VkwDQuQVSNAqZPfgrf6AJ96U90ltz+abVWGkGNz5aSYkB6G7dAHXwsFB5EJypKpU3lSTw/f8qNJIibh4F7N4HzyeKdnVzdNwjc4I6NCJCtBJVo9BckWQfVKqsOYQzF2AjvTYveq1BqbrMrJWCNSx4U/OoNJ/vnFDpNEcdkDVFWnhynoCbGe05R/sE2hNU3cKrhDYON0xMzhCOqv9rEZe/q4kANER4UWe8asoWu8u4lx8CjM6ma9RZO9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kVnFLQEzRD8CKK/BT7JuX9cWi+ArKEz/679ZftOsSn4=;
 b=FPL7+MZKFmBlpMlb6t5Cpuf/W8Z66kwjXZgPDRvrPuVKU8RTwjoh29ewFqNk3Q3sEPJ4YVasI9FhWNXeAnQkY86akHRE+szR2o/2jsSC6KcP0NJ2mBVED6lppUtSW8NG8gKtXluhxPkc8Act+hA9MRGuDC57SR2naBB7RMccS5oC5MYqLUpRcpfgUojE0CoQaV6nsV/C/Xoa0XpsWdmUx+YbyRvCPF8cQmpnfk6ZVRmpJp92ex78dcxLmGWKFG0oMsoEJlr7HzZGxLDaiDPHkyE/h3w4V3C7Gx12wPw/R+wQ0A55Em3+VBvdykprsSEqOIgbAJWh4CTMgq4askuPdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by DM6PR11MB4723.namprd11.prod.outlook.com (2603:10b6:5:2a0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 06:16:00 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e%6]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 06:16:00 +0000
Date: Thu, 16 Oct 2025 06:15:48 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t v3 1/6] tests/gem_eio: Skip on too few reset-resume
 cycles
Message-ID: <lbenanp7dzhqhet23ej363l3as66m2gywxsskifdcuzgx76l5o@ilrk373i7mie>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
 <20251015124419.66460-9-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015124419.66460-9-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: TL2P290CA0029.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::19) To SA2PR11MB5066.namprd11.prod.outlook.com
 (2603:10b6:806:110::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|DM6PR11MB4723:EE_
X-MS-Office365-Filtering-Correlation-Id: 244c9daf-f0b9-4c28-9c08-08de0c7b7993
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UE9pMHB6OHJ5enVwTnVJMXBPOEV1TTRMb0FRTTJqamxhVzNCcE9LdnN4alpL?=
 =?utf-8?B?Zmg4VWE5THVIckgzSlN0RzdaVjg3NnRWaWhnUWRjMHVGUmJ0WDUxeUlPQndo?=
 =?utf-8?B?K0dRekpuNXFsYjUxc0g2b0lsUXdqWlRKSTBSNmN4bGx4cVliWHBOSDhTcWQ3?=
 =?utf-8?B?SmY1SVI1bFI0RG5EajA2S2EzL3Bsc2VON2FEYXVyQTQzcmlLTVd1WTdnZEc4?=
 =?utf-8?B?bnNFN2M2Z0dBOHpEQytiUkpSUmFoMlVVeUxCWGlYM0lPN0t4aFJBaWJ5THZr?=
 =?utf-8?B?cGZ3S0RpaFpQVmt5ampOeG84T3JaZzBiYkt3cVVmSStJYlRlWEMvS2JIVjhw?=
 =?utf-8?B?UWk5d1JHVldvd3hNb2ZxWE5QUlRrdEFyQllhSlNWaXVIVkRFNzlaQUNyVGFW?=
 =?utf-8?B?a0FnSGFFaDRjZ1dXWXJzcWJwK014L09BZmdoYUJNU25LNXQ5VW1lRkc3dTNT?=
 =?utf-8?B?bldUNEhmVjd2ZG1PSUlGVHFDeVhxdFpuK2tDNTFremxZSXpJZUd3SjM0Q3VG?=
 =?utf-8?B?SWhpQjErQnVXTFNNZ1c4VWViYXZ1OERsWnhZeHY1cnFjTFBoWDF0dm81TWFV?=
 =?utf-8?B?bVVLYTVvQkNNeEhqUmdWNEtwOWt3VmNwelNCU3lhL2IycWlmVXlkRlArMUVC?=
 =?utf-8?B?aHFYV0hnZlgxU3QwbmkzTEo1aTh6MTQvc1BQSnhwU2lOWWxoZkJTaEZVZS9I?=
 =?utf-8?B?aGxyLzcwU3daWHNJYXNtb2hGK1JYZ240V2pQUFZhT2d0MForYTAxUkhGcE1l?=
 =?utf-8?B?WWZVVFFuVlphV0tBWlhRbjNTNkQvZHhPQU56ZFRmd3RkMWgzUVJyRWJxc1Fs?=
 =?utf-8?B?QjEvRURPUzJoV1ozUlNkTk9Ma09VdzRucjNnUGJKelhYQVkvb3hGeVVIL1kw?=
 =?utf-8?B?RGd5eFlKV2N3Z2IwdmgvTTczVGFNZXhzYTFWRlprNW5mc2RhTng4MmdZTUNW?=
 =?utf-8?B?WU4rY05ucENjMWRPaGIxSnhTRWVCMEI3TklPeUd3OTlqaVc5UElUVS9kdHFi?=
 =?utf-8?B?Q1BxR05raHFlYlJNOGduSjFwN0oyc2RiVllhUnpzeTlZYnF1Y2RvVm4rYzBi?=
 =?utf-8?B?Ujh1M25aQWJoRitoRDFLenhEeTRocUUrNFNWajg0bU82Lzd2RnkvTm5UYWZy?=
 =?utf-8?B?Nk9ndWtSTWNHQ1Q0TGNuK04vL012anR2VnBqMCtFdjVEOXBGb2hGNTlJdURC?=
 =?utf-8?B?WFRmalJGSDZINjRzM3kxL2pQWkNXQ1loTFRobU5sTTgxdXJTZFlGMWRJZ3NY?=
 =?utf-8?B?bmpZd3drdVJBMThnUWVweGkvMm9Oak1OSWRjV1cwaUVQeGNCajd6RThtbmwy?=
 =?utf-8?B?ZEMvVmorRlhxZEdLT2dIeDRrVEdUOVB5amVnbkp1dmNUUFJBMGUwN2MyT2Jo?=
 =?utf-8?B?WVJnS3lORElqTUU1aUR3TnFUczNKalJRUjBJaXVhUXdJTkMwd0o1TCs3dzQ2?=
 =?utf-8?B?aFJWaXk1OUhLREJNc0puM21rZ1diYVkyK1dqNDBrS1M1RjNpbEU2QXB5TlZB?=
 =?utf-8?B?VFRzUTY2Umh6N0RtUlhqa2x2SVZkUU5iTTZLWkxOTXdUT3BtSFlPNzNGek5y?=
 =?utf-8?B?a0ZKU2xobzN2dmlFS2ZhUU8vSStyZDhaTHdTZ29tRTlnVlBRMjAvQmxDcllo?=
 =?utf-8?B?ZzNDYk4xVmd3UnJmZUwvTzVqQ1hGdmcyWGc3Um1QQ2RGQU5QRVBWcGlOYlZB?=
 =?utf-8?B?R2o2K3ZOd3pxUmJzcFVUelVqNmlPOGE0aFBTaEV0Y21aclByZWlyM2dQVnhX?=
 =?utf-8?B?aktKd1VTWnZtRFNzMSsvQnVXL3hkTktaUkVIVGo1QVg5ZnpWbzBzTjFhWm9V?=
 =?utf-8?B?L1NxQWxZdTNtYzk1aUU4a2F4dllKeDE2cXhXUDJiY3dMM2FQa0QvYk45bm9V?=
 =?utf-8?B?YWRZeU5nUjJyVkNZVHM2WmVnOEk0TDREOWNBYkw5KytUSHRTakJLVzdPL2g4?=
 =?utf-8?Q?PLffY6mZFAbRffUxiQ0VvOrieTr+2yNV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVNUSVFqWncvZit0R0o1VHo4eHpmNDJ0QXJSM3lMd0QzTDVNQlhGZTlTTjRP?=
 =?utf-8?B?bjZmVjFhY2VUVDU5c0UxMTFpdDJrR2JjTUU4RERWSnJaRWhvYjVuQTNNMktK?=
 =?utf-8?B?YnFIMUZPU2pQbnpWd1Y2eHM0RlhvRXczZkQwRWpYeE9xUnF6cEludWR0ZU5Z?=
 =?utf-8?B?ZElVdStlSnJPZzA2YTBSNXNaWFIvdGxQZ3IrK3p0OTBQdTUycldQZW8wUzZK?=
 =?utf-8?B?UUhtRVpuVFlVVS9hZEdYa3FZWnVIUTlSeko3angxSkYxa2ZNMEJReCtWeWNv?=
 =?utf-8?B?OTZJckJHVzVVL1B6N0o1cGdERm9icHJQa2tQQUVMSWdpMFE2Nkx2eUdVaDRC?=
 =?utf-8?B?QVd3RGVUWm5aZTYxaW40VUlVOEtUNTRpVWRsbGpBWVJvUER4NWE4eEhSMis4?=
 =?utf-8?B?VzJOMG9PRnNYS216MGQraTNLR2Y0endUdTJPakEwczhtQ3JGQnQ0Y3krNi85?=
 =?utf-8?B?MUt0U2U0YXM4bUUxTUR4Ymtua2kzOWdsR1dLTTI3cXkzWHU1TmhzRXpFYStU?=
 =?utf-8?B?ODM3QnRJWE5qTXRET0Rmb3J2R2hHRUdOZ2R1a3V2R1dLemUvT05uVGZYbUw3?=
 =?utf-8?B?QU16UW5ybkQwbXNMcEprOXJKMmtkWlVTbUY0eWc0VzVwNHd0UUJuV2QwRXJr?=
 =?utf-8?B?NVp4OEsralR6cEtoZGY1QU5XQnk2dCs4ZEdpYndqUUwwQ0U4NXJLZ3JCYjRv?=
 =?utf-8?B?aHVGREhYZWtyOVVQWXU4NEQ1VWROdG1aNEh0TGlnb0czTzl3aFl3V1NpT05w?=
 =?utf-8?B?eFR1cnNaUjJIWXljOHczekQ0aDByTlFZZXZMUGYxM2FBbDkyOGhKYUVyaVRs?=
 =?utf-8?B?RlRTNHJ3REc4R2oyLzNhQzU2ZEN3NUlmVjFCemxFMG1vV2IyRlRIRWxiQ2VQ?=
 =?utf-8?B?VG81V1d5dk9CbUFWQUJaVGRzREFKVU5wUVNZa0dYZW13ZFNjWjZlRjgwZnBG?=
 =?utf-8?B?VmNrNGFzN2pJZjhyNmYvWGp1ZFpnZGM5OWhKb2pvQW12ZUZZcWZHMkFXczhZ?=
 =?utf-8?B?VGw2dEkxbWRCeTFURnNUMGF2ZWpJSlJhYmpPblRGVmFOVGprWWFKRThkZzdS?=
 =?utf-8?B?TW43dlFuS1M2a0w2M1htNGRtYnA1OWVqNXNnSHh2c0ZrUVFMZmxEWlBZOUlR?=
 =?utf-8?B?QXowVjNESE9XbVpjSm1NNzY0QVFZdHJFbVV6Qzl0eXhrM2lNYXRoS1ZXSm5C?=
 =?utf-8?B?ZWZyMkVtSVBLT0FFUW1EL3BSUFczN3V5SXlMa0ZUdXV3a0ppZDZ3NVdIRlJV?=
 =?utf-8?B?K1ZpSWFSVVh2RXI0aWJkcktWTG1GOUlnNjJzWE41TlpqNHV1di81eTNJdEpG?=
 =?utf-8?B?SExsWEFCckhCeHFHTGdPaVFvS25jSDY3VjEwTlp3VlV1OXBhanV6MFpjM2Js?=
 =?utf-8?B?dzY5UnBnanhUTGNQNVJ6QUxpdHU4cTJiQXI2S0xXaUszK2tBYWZkYTVFVU14?=
 =?utf-8?B?TTNmVGRyNENIeHlQN1BiZWJscEJ1ZDIwNlAzc3hNQ0xuMFdhY0F3TytsVEx2?=
 =?utf-8?B?VzZFMXY0T0x6ekJYOWFKSGliTmJZcW9DZnBlNjB2eTlrY20rZ1RleUl2Y29v?=
 =?utf-8?B?ck9lTWI2ZEJ1M3NaemxjaXNuRk9yMjZ0OTh0eWwyYWFiSFBZRFBoNDk0ZEkw?=
 =?utf-8?B?N1UrWXo5MUtiNzc0K0FORk5yZkRtWDVTOWpTV3MzYktKUmZlcG5heHluNVIw?=
 =?utf-8?B?S0pOcldQZjVzSitnSVlIZzZ6L0ZVditFNi9SeTNObWpMYmE3RWxMUkZ6VitO?=
 =?utf-8?B?MFJnMVI1S3lHZVRKeGR3N2pxVk43b1RTQkQ3bFc0UFIvMWl5YXBiMWh4Wk83?=
 =?utf-8?B?ZlZCQ0hEWnFISXJZbVpHUVhON1cvWDZQckFNTDdwaUgvaEhVNDgzMFA5K3l1?=
 =?utf-8?B?QmxESDkwbWF3bFgxK2lHRkkzWU4rTDJWNkozQ3ZxQytNdHpiWVhkM1ZFdUlB?=
 =?utf-8?B?Q1oxTXkwK2ljY0htUWl4NFBzU2Y2V2JxSVczMnliQUIxUWJVMmlKMnYyTUJi?=
 =?utf-8?B?VkFlUDRwZmJVL05ySGJCN0FjZXNLbk1ZelVoWjd4WWg3N1J5emVETHNHbGoz?=
 =?utf-8?B?KzN6UnBaVGt6UTZBSkRRNzJhZThiQUlJREdGQjNSS1VPL1d2cENsbmV3THVP?=
 =?utf-8?B?b1dZUGU0dmNyaHd5RkpaNVA0bWNIT3A4Y2Y3QTF5V2l3RkptN0s2Y0d0VEx0?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 244c9daf-f0b9-4c28-9c08-08de0c7b7993
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5066.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 06:16:00.0517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XUcX6KyGRmCoBnbOdSoHLxG7FNEqVCzvbQwBYmMc7HesCfw2bhSqpWyZ+ZRrKQmZ9yZngt1henbhgMQjyzU/v1TkxxFF7aCHpl7+VurPw8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4723
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

Hi Janusz,

> Subtests that measure time of resume after engine reset compare a median
> value calculated from the measurements against a presumed limit and fail
> if the limit has been exceeded.  However, if it occurs not possible to
> collect enough measurements required for stable median value calculation,
> that condition is now ignored and success is reported, as if the measured
> time fit below the limit.
> 
> Skip if not able to collect sufficient number of time measurements.  CI
> results from slow platforms that always skip may be handled as expected
> skips.
> 
> v3: Use a symbol for minimum number of measurements (Kamil),
>   - reword skip message for its better readability (Kamil).
> 
> Cc: Krzysztof Karas <krzysztof.karas@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
-- 
Best Regards,
Krzysztof

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D17F9C4D80
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 04:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7753610E556;
	Tue, 12 Nov 2024 03:55:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kpm2kArg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF1710E233;
 Tue, 12 Nov 2024 03:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731383700; x=1762919700;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ogvje0chgpA+3wwsvFM1jjuBAv0v625hernP4Gt8W+Q=;
 b=kpm2kArgMreMhplwNNXtuOWWRYXBX0jHZBPKn3KPaJsOds9KdtKcITI1
 PPEtMKLIW/AsX0pRi2Ty2ITUukkQLKDcKMkJ8AHX46NYgVKeJVpn17XQ7
 k5jVeBSDtuX4k2/9aZekZg5ebBEXofSVhzaBD52M/R2WibKFz6U+EUgkV
 o2cSXZ4NFSp2YtAa7eh37xxHToDbWxTmLU27VdvsXoDJFZS8W2KvGqagf
 CV8u7FCjK+Ozfm+1rThvzcbK6xDmrx2gRwGMf0EvZQSrL4q3pagRKBOMd
 NbQodyqjbOzqQUQF14j+QKxoEjTFRfjNRmDyFeDw5tA7dmBwPlyvfsA2k A==;
X-CSE-ConnectionGUID: qYbESkqrTQ6Vl36hg5aoDg==
X-CSE-MsgGUID: rbvUx/a5Rc2LQhe6laP3ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42603441"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="42603441"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 19:54:57 -0800
X-CSE-ConnectionGUID: weBsROJBRliK0Rbor6nh4g==
X-CSE-MsgGUID: G+2k3QybSQKKWeU1DUhQyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="87189285"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 19:52:00 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 19:52:00 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 19:52:00 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 19:51:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HC1G36Q5jFRbxedbqOayomTcwPfgX3PFOsBC1nMRVIW8pNz1tTSl9Orm/M8n7dJsZWSuZn27Cx7zHxrJ9n/BNJnYhPlUoQZAwwcfLHW9bmzha44nZyVX3hSoJ5m4Xsr1k+7/YTrYUmAbCk1s7VKdPTy5RycLYhgnZRnHtNOAvD449bpsgl2Dd/nTNOU+HFCz89FyAY5nUkMt/rb9WGTluOt6r2DwG6OYHzitgvaEH3tiiIWUVVi+K5G9IlGnuM7v8b2uja2MVrb5j+4DI/RedRBMI0GpTP+IlRr5aHEFAZFyW+H6/AWTmRi0ig6+z0/k3VgOSv7TmqmaY46DcsioLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WdMVxlWbAbS/iMFcVKIo33ZttLd2YV7W9Mjb7T4CZ8k=;
 b=IaY3Hf1TlLK57LW7gJeRdTExVs4Yxx8Ccki804oq5J4W3AiLLj6Tz6GY4fyZiEtEwLUt8740g1wvdeQYGiGIynUnXpIkYrfWJtK1Jo78TsbWW/vf4L7jtlmN1THk5tKSoTjZ+XkH7T/0QRgOq8yQR3d64lFdn/iBgG/uNsO8OWdJIZIaui5Ku0C754G4SlaPoWhMXpI2Vs0Zp1npFb8AHqrPe+/1Tgdo1GaxkedyCAb64y87wsancNvXEq5PFUqKddePBZdW8uxnytFwqEiJ65m5ymDTfky23UdWm+ezssBhP+NfAvFmwZstYAv/qyVNJmiKUGL+FNm6aoQTSgqX8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by SJ0PR11MB4942.namprd11.prod.outlook.com (2603:10b6:a03:2ac::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Tue, 12 Nov
 2024 03:51:57 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%5]) with mapi id 15.20.8137.027; Tue, 12 Nov 2024
 03:51:56 +0000
Message-ID: <2b92d697-12df-4de5-996f-90955ad24538@intel.com>
Date: Tue, 12 Nov 2024 09:21:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/23] drm/i915/vrr: Introduce new field for VRR mode
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Golani,
 Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <20241111091221.2992818-4-ankit.k.nautiyal@intel.com>
 <IA1PR11MB64674DAC6C3554DC920F3A2BE3582@IA1PR11MB6467.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA1PR11MB64674DAC6C3554DC920F3A2BE3582@IA1PR11MB6467.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0056.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::20) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|SJ0PR11MB4942:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a084a2c-027d-4c2b-4aca-08dd02cd5a5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bjZqMlhKUm40cGFHVnFlTVJCbk1PM3R1M0I0Yk4yclg5Q1V3K2hPVFdJY2lB?=
 =?utf-8?B?cU5Ld1ExQ3FnY1ViNXQ4amp1dHRQVlpndE1MSEVGcTBGcjNxVHh5S0tXMXVz?=
 =?utf-8?B?MTdueWJYRGFWc0hQRVBPQm5lbGFQbHgxZlNXUnlVMnlBTWl6T1RWeWJqUDFx?=
 =?utf-8?B?YitiV1BJOStoejYrMkc5bkhDWDkwTjF1Qlg2bXRFTzZoUjZXUEU5NEVGbEla?=
 =?utf-8?B?Y3lKaVN3KzZvTnlQTTI3aXJ4RlZmSC8zcDJHckwwVjF5WWhERXk3WWRlRThW?=
 =?utf-8?B?TUlJTXlGZmtYODJvUmxUdE5OaWxzak5mcUpLNWpOVzVkMVlUVFFBWkVuUGFW?=
 =?utf-8?B?M1dxeitWcGFUQk5oNWdwMHVvNE5Ic0llQm16TklYZnZXaUcwTHhQQzRMczI3?=
 =?utf-8?B?RnZZTWJCc1JuSmhoOEswUHd1RFFDcEhIUk5vdVZBRlZPeWwwVE0xMU5GVWFQ?=
 =?utf-8?B?RFRwbDZ1WThrYVprd2kwd1RYZjR2T1c2aGtBcWFQdDRLVGY2RDh4RitDczNx?=
 =?utf-8?B?NXRYVkRSa0JTT0Zjbmgxd1BvQWZZOXJ2WkcxQWhNckFXeSt1MVF4RGsvUGRn?=
 =?utf-8?B?NHhZTFlKaXhaem40Q1RvbThPbnRBTW9VUnNtemVZUmUrS0FDaER6K3lwT3ZN?=
 =?utf-8?B?KzB1Vlc1dWZIRnF4aWJicTYxYTJzU0hWVU5GQWxZRTdVQlJkNHptSWpMMEx2?=
 =?utf-8?B?cnFoV1I0QnpSOGdTcC8vK2NUNkZlVFRXME8xa3B4Ym9MUk1zaElVOFY2QXJh?=
 =?utf-8?B?ekltMUhkaW5QbDF2OFpaY1NPdnEzRXRYTmtNN3ZyRlBTeVNlb1Fhem1Md1NQ?=
 =?utf-8?B?SFI1Y2ZaOHRaUklSM2RmMXNzWHZMbkdudTdSMXFULzRqRHJWUUVIOWdVQUZq?=
 =?utf-8?B?QmZmVnAvTVc0OWRaWmdBd2llMGh1Vzd4SlpaMU9xaDFaV1JIclByWVg2Q1Iy?=
 =?utf-8?B?N3o5WG1HQ2ZTNm9qS0FCVk1TZmJIYlhwVHJZU2JzT0grbThsQXRsSmQyL0Nz?=
 =?utf-8?B?cFlzM3VyNUx4cXQ3WGNIM1UvcEZxOEtHVlluZWZEOVM5QjVPRGxwUFFDMXUw?=
 =?utf-8?B?cWZqcWNqYnlScktKdS94UE9ReXpxTi9CS0FOcGFLUnBvWlhtaDFUTmVZZm5S?=
 =?utf-8?B?ZzRWVEdyVlRRM3IzU29LOTZERjFRTFVJMHdla1F6SENEb1FjRlJHNEhPeUlX?=
 =?utf-8?B?K0ppcVlIWFlUM1Y1U2VjSFhtd0ZldCtPZDN6cm9RamVVb2thdmJ3ZlB6c1Jq?=
 =?utf-8?B?alhVYUI1aisxYnBCcDhBS3dIY0VJQnZqUFo3OGNJbktRUWRxUTl5S2QwS21r?=
 =?utf-8?B?T080eHdReWFMc0oxU0tRckdzNGY4a3RsSGM2WHFyZWpGamxhd2hNZmJqV1BT?=
 =?utf-8?B?ZFFybjVlQVczM09zZm5VdVRIQlM2YzYzTXNoanQwMVRvb0o4NjhuQUROZDl1?=
 =?utf-8?B?TloySmlMMjNJSDlDSjBPVmZKZ2R0ajZIR2UvSGdTdi91dTlLNzJJK05XanUv?=
 =?utf-8?B?SHFjNUFsM0FHcUo3TEtWTUJ4RVk5RVhSZTBGNDdBMTJyQ0NibG5SMmNOVDdE?=
 =?utf-8?B?bllsckl5MDVQYVh0UWVEd2R4Rks3MUJzWm05bEFtcG0vSEdiejVLWmVnVUhQ?=
 =?utf-8?B?ZDArZFoweEpyMW1VQUV3WHpMaFVMbG9BQkFSd3Y4dVRiK29QM2NocTdaM1h2?=
 =?utf-8?B?YlNWSXpmRCt3NnBqV04yNmhYN2RIdWZWWTJmc1JSaUlpNkNXL2o3RS9xM0hh?=
 =?utf-8?Q?pFdNmDAI8f4nbtZ3IL4YRwdXHbad9LQDCQBIfwH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGRQL2tSd3RpMUt0MWdqQWxmTVlsZHVTQkxDTUpQYWVlVTFETFBML3BNQ3Jq?=
 =?utf-8?B?WGMwYWxYZlFqVVMzUDRwMEcyYU05bmRqMGRPWDFHem9DdGFScm5hYlZLeWRr?=
 =?utf-8?B?NWs4ZXlydmhqeUtWZVRrdFIzcmNkNTV2WkVXRkdlaVRUbkIrd2ZucmM3MW1r?=
 =?utf-8?B?bTRCMGxpZWNhZXp4RzNtTmJZMTlSMVdZVEtrTXFrcm0zTzhrUlZseTNOZDdG?=
 =?utf-8?B?Z3JETU5lbUpmMkVCck05STAvcjd5amtlYUlQNDJHb0g1eGRNUlM2T2Vpem9i?=
 =?utf-8?B?ZnhEUnBvQ1hQT21kbnUvaTU4OThGaE1lR2I0d3hPSWJEWUtwUjkrRTRueWVm?=
 =?utf-8?B?M3pUS3pwcm9zSDB2SHdZcm9QK3lQT0padFJYNHpwTktjbWZOMDRkMGxPby9T?=
 =?utf-8?B?M0grTGpHdnYrZWoyaFZ2VU9SaHNLK3BvSmlmaXVkcXg2THJpL3ZpbWdzU0xl?=
 =?utf-8?B?MlV0QjlUN3dtTk1GdUUvbjNUS2Q1UUp5Qk9Fdm0rVlB1cm9XV3gyWllVQWk5?=
 =?utf-8?B?SFgydDA4QTBheUttV1pQVkFGdzJoVEcrT3BMZmYyREpiMkVRNGNsdXh3UnAz?=
 =?utf-8?B?VWl1MGRzYTNNUlJOREFhV0FPc0tnNVNXSGpFdWhxVWRyTXZnU3ovM3p1cy8w?=
 =?utf-8?B?T3c5cnVHcEhSbUFpNTBFZ1o1QTd5N0lXV0ZYckRIMTloQjJ5cDRTaVl4Z3Zi?=
 =?utf-8?B?V0pTdzErTEc2K2FOUjNyTlR4TEFoRTlvcW9mYlNORWJETDJQZm0zVkpBUjl4?=
 =?utf-8?B?Ylg5TGduSGpRN3RHc1RURzdic1lJU0xwL0hzdTBCOENXbUpxd1RDek1zd2ow?=
 =?utf-8?B?T3hHSlUvZGxuc0tyUWVZUllrZG5PeERBa2JMY05UM011ejVnVnQ5dmJudTdQ?=
 =?utf-8?B?a0V5L2NsUEQ4Q2NUY1ZMQW85eE9KUW8rdEsvREthcUp0UWdRU1l5d1dBOTBV?=
 =?utf-8?B?dWp0SUJtVVRDM1ZmYXd0KzZWN0VYVTg5eDl4dERLbWxTeXRYQ2hMb05wTnpM?=
 =?utf-8?B?ZGR5WER2YklPM2Q3RFdRR1VNb2VwOUNDSmdXcEdlMmMvUm82VkVKaEpNeGFo?=
 =?utf-8?B?V09vUUZrRjkxeTRCeC9ma0tDemtQcTA2enpyOHBXVGJCZk5MUHVUUzN4RXRL?=
 =?utf-8?B?R0JZcUx4d3pKWXNHZy85R3RPd3ZHOUdlQ1lWQkpEa2I4a0tidHM3QXFLN3Vw?=
 =?utf-8?B?TFFGRlVwNzkzT3pMMzJSTlZ1eHJRckgwQXFMMnY3a2gwM1JXM3NqOXAyV0lI?=
 =?utf-8?B?aVlEaFlySkNSdlVRWEplblVxWm1jTFBFWHJqcmRvM0RtdjVBb1ljazRWTlll?=
 =?utf-8?B?akxUbTRTNFJmNkFEa2FkUWZ4SzVDM2M0ZWtMUzR4NmZEc054N0NTM3ZQdVVp?=
 =?utf-8?B?Rmx3eWNwY3lhaGg5WWdSRkx3cmNWVTlFZitCbUhqSnFnUkNoMWEycDJxV0dT?=
 =?utf-8?B?bHhRRzVMR0FqSU9yYmlCMmJMczV1dWxGSlhtQ2NBcXljMFdaYkVqNkoyVktC?=
 =?utf-8?B?elh0SGRYNDBveTNnZlJyUHIzUnVoQm1aRzJheHIzRGliMksxQlZ3Y3g5UkIw?=
 =?utf-8?B?aU80ZHhKVFhxcHdRNmNRclFISWt4b0ZrV2NQY2JoNTVsOWpUNzdxUUNVSDNR?=
 =?utf-8?B?QUdWZ3dWNzBoRExjaVlLNnh3UHQvUEhSdkxMVUJZS3lIa2pOYWNQSXhQS2dQ?=
 =?utf-8?B?emljZlJPMHZETHZKU0hsbFFoY1owZUt1QXN3dlgrNnBDaTB4RklvaWQrU281?=
 =?utf-8?B?c1NBRXpoRnlLYThlVXFwOFpHbWdkMUI1RU80am5WRXlFZldCb1dCS2dya1JG?=
 =?utf-8?B?MUVCYlpRK1RnZnNjOHdaNUJ3bjA4WmpvU2w1RzhJcSs0WW9kQmZpemNIZHYx?=
 =?utf-8?B?d1F1K29pU2ZNb3Yxd2w1STQwZncwcEJDbkJtU09YLytXRms4MCtiMUFMbG11?=
 =?utf-8?B?QzRWcStUSU8zS3ZCdHZoelA2TnRnYzU5aUlrMFRvV25pcFNzbWtIeWFqSThk?=
 =?utf-8?B?VEFEVmFPV2RVT2gxYmhtR1FzSlJrMG9hZldJQkZoTUtuZmFUelF0ZlRyUHNW?=
 =?utf-8?B?eFpncGoxUEJIalMrcFNEc0xhckxhdHl3Yy9uWjUyemQ0OXVtMWZHZjB4TlZY?=
 =?utf-8?B?SlZIZ0pqNlMwZFVVTXAyMG90MUdGNWpNb3dPRi9rcmxybTFHTlRpQ0hCaVcy?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a084a2c-027d-4c2b-4aca-08dd02cd5a5f
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 03:51:56.7778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bO44f6mBkinSzIF2bvLC2/m4+QlwEGQsTW+upbmCmkmrcgQRVkZOtRyULQa6T377lUbE8chyNa5vto26Pc/GLVZaFuLArxenWgPCRBqDoY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4942
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


On 11/11/2024 11:03 PM, Garg, Nemesa wrote:
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ankit
>> Nautiyal
>> Sent: Monday, November 11, 2024 2:42 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com;
>> ville.syrjala@linux.intel.com; Golani, Mitulkumar Ajitkumar
>> <mitulkumar.ajitkumar.golani@intel.com>
>> Subject: [PATCH 03/23] drm/i915/vrr: Introduce new field for VRR mode
>>
>> VRR timing generator can be used in multiple modes: dynamic vrr, fixed refresh
>> rate and content matched refresh rate (cmrr).
>> Currently we support dynamic vrr mode and cmrr mode, so add a new member to
>> track in which mode the VRR timing generator is used.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index d3a1aa7c919f..a1b67e76d91c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -913,6 +913,12 @@ void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg,
>> u32 val);
>>
>>   typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
>>
>> +enum intel_vrrtg_mode {
>> +	INTEL_VRRTG_MODE_NONE,
>> +	INTEL_VRRTG_MODE_VRR,
>> +	INTEL_VRRTG_MODE_CMRR,
>> +};
>> +
> Here INTEL_VRRTG_MODE_NONE mode means fixed refresh rate mode ?
> And if not should we add this as member for future purpose?

Hi Nemesa,


INTEL_VRRTG_MODE_NONE means that VRR timing generator is not used.

For fixed refresh rate with VRR timing generator, INTEL_VRRTG_MODE_FIXED_RR is added in later patches.
Perhaps I should document the meaning of these in comments.

Thanks & Regards,
Ankit

>
> Thanks,
> Nemesa
>>   struct intel_crtc_state {
>>   	/*
>>   	 * uapi (drm) state. This is the software state shown to userspace.
>> @@ -1286,6 +1292,7 @@ struct intel_crtc_state {
>>   		u8 pipeline_full;
>>   		u16 flipline, vmin, vmax, guardband;
>>   		u32 vsync_end, vsync_start;
>> +		enum intel_vrrtg_mode mode;
>>   	} vrr;
>>
>>   	/* Content Match Refresh Rate state */
>> --
>> 2.45.2

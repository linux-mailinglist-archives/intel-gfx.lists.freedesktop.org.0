Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3729487F2
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 05:36:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F33FB10E2C5;
	Tue,  6 Aug 2024 03:36:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dv4LOul7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330D210E2C5
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2024 03:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722915372; x=1754451372;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ADawrEKiyw2CJps181BbW87Hkx8Mij8gl9iDIwtmlwU=;
 b=dv4LOul7XHKOUJSJBIiaRcR/aYD3xtEf3rX+B8O8D6VEpeXpa1ZE2lsU
 FO53cUSfW5NqcvgJKuA5jiDJUiPjFTAoTM5HOpYQOdcV2Ctj/jpEWAOa0
 lqfWkLXZM/HBBl5j0teW2IgDCGziC+2vV73bLxERFwdst91d7lfZPGXFQ
 QgI8yN6/bPMs+c+CO280ZJ2dSGcA5eb3zAhXq5OUlu1UN2j7j6QsPE+2l
 /77Joba8iNi3WIoBvyp8Kml7ZH1aTUR2UBjHdu56KOs/Ctm3Mk3JPleRa
 vC5wKRRiB1YEmlyMJoJYhHPmiW4KwxxdKsAMtPBdlYsGPG1CB6XOyBDlr w==;
X-CSE-ConnectionGUID: UbIiXYLUTrSPiLY50e6iSg==
X-CSE-MsgGUID: SFz3LLBRSyyLCt+W61H1bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="24700273"
X-IronPort-AV: E=Sophos;i="6.09,266,1716274800"; d="scan'208";a="24700273"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 20:36:11 -0700
X-CSE-ConnectionGUID: bNGrYUxdRKi27nm/4gCO4g==
X-CSE-MsgGUID: 5UdtjoMZT8KJdC3NnMo8cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,266,1716274800"; d="scan'208";a="56938622"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Aug 2024 20:36:11 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 5 Aug 2024 20:36:09 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 5 Aug 2024 20:36:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 5 Aug 2024 20:36:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 5 Aug 2024 20:36:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BcmgPKb1q7FoEe4lmYdLo+jJPjcOYwPDlSzLyoozaDhBYf6tnME+CfKjWwM4k9JFGegxAJivoL8zyJy297UZ3s4zW1TxnXiQnOrMzSjFZLgXClSWsAxcW6jYqk6n0Kzc9n+KponTof4eDKqPY9opNy6i8WGl5QQisKycb4+dJg75Y7x+qr4zTwFUuip/Yswzu7EoerHYkEd1WJP+ukHC3tK9vI6YHIkaRI50UxgkiytSDpOaPTHTfTH/fb9Y1C1Z5AIQ7YOIfyrQtoYK50JgVUyInSEWfsdT6uYgDR1qiGtZxtAj+EHCGDqK6oIlGO8Fa8zGgPa+LMIonOBSGypjJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sJvGSY6Ya1V6wOhgrb9AADve/a6qn6OyFjOS3rT1iCo=;
 b=UOst+9PBOLriKjZVN1E8HBc8z/p++fkJ0aj2wPQt1M0ZcEnt8nm6XzWbVKxBnDDSg/lPudeHj2VCawZXczfv7NPgedy7e7fMspAvSK1rMVpLDcEsnsZ98DOh4mlLVSqfvxqT9Mfv4St5ZZRfIu6EfXj0Fd+b+lYXbhvCq6NhtA5UUc6YORvsCGhuPNBdPbNrfJPKpQOwuKVEWAK3k8/VzgonlGnwcXn+1WQiOoDAtXikpoliOLLewXCNdME58VjZxYfugwfVk3lREOZmdWQ4azjDM4yayE4DCTw8bnB58/AEeE2LX+HhBcdqu9K8zAWGWL27QF+RGX2O9+egqrxeIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB5988.namprd11.prod.outlook.com (2603:10b6:208:373::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Tue, 6 Aug
 2024 03:36:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7828.023; Tue, 6 Aug 2024
 03:36:02 +0000
Message-ID: <d7408a95-0737-457f-a88d-77aeddebb9a1@intel.com>
Date: Tue, 6 Aug 2024 09:05:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240805062538.1844291-1-nemesa.garg@intel.com>
 <20240805062538.1844291-3-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240805062538.1844291-3-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0003.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB5988:EE_
X-MS-Office365-Filtering-Correlation-Id: 22c86007-07f7-4adb-cc5b-08dcb5c8e4fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SjBPRzBjWjhmMW1BTG9HYmFZaWxZN2FQdEFDS3VWMHZkRk9tYVVBQnU5MDNa?=
 =?utf-8?B?MlFzRTNiU3M1WUJQd3M3UWJQbzV1cmtObXJHNFpXTlhweGtwb29Jemx3c1Vv?=
 =?utf-8?B?UEZ2Y2E0RXoxNG01SkxyMVF0THhQS0NHbVhyOVFlUVYrZTl3Zi9tSThaN0lQ?=
 =?utf-8?B?ZGJVZXlreEtOb3VOdy9SVDd0N1RBWnUvRHpOZDQxcXpNWkhWTUxWNXloSmZZ?=
 =?utf-8?B?VHJRcEozcXhWOGp6NDNJNWk4Y2NEWmRlKzBMTDJoQlp3UE5oRXBXdnNHMGlW?=
 =?utf-8?B?akdjcVk2YnZkQ3FIR1Zia1IweVVhZDNpZzh4SS9TNHdodXVmKzNXYkNPdHAy?=
 =?utf-8?B?bUd4MDRlOGthWndZNS9jOTAxMHFMdm1FTHRHSFB4dElwaXRuYlE5Rm1MbS9Q?=
 =?utf-8?B?Qm5ydHJOeFVjYVhGc1FCQmV0TTIyaUZYVG5uVSt1WHVieEtBNjhTZ1dhVlBC?=
 =?utf-8?B?ZjkrcG1wRnJQMU5GblAveUhwdGlwUTg2UUNKait2R3lQRkx4cnUreFE0dmRh?=
 =?utf-8?B?L2VDdzF3RDlENWU0UHVCTUQ4YWRKenJUZVc2NUMrRVNsaWNZTlhJb1pzVlc5?=
 =?utf-8?B?b0NiT2hUQVY4WkdhWHpRY0huQ2ovNndSdnF3OGdMQ09lYVI5RXRxOTZlV2lS?=
 =?utf-8?B?eFkyZXh6QVdSZ1NlU3IzRldrK2Q4RkdnQTIveStzZDJDbkF2cDNRTGhWaDBF?=
 =?utf-8?B?NENOdHVid29OUVZwNzlKMnNTTTVDaVIrbmZiUXBZczNOUFdiZDhlVjREbm95?=
 =?utf-8?B?N1F2MVV0bVhHN3dXbHhaT3VENUJST0ZzaThReXNLRWY3czFwSFh0WlhpcTFo?=
 =?utf-8?B?V2pOc3ZiR0x1enRaeFhvbE54VXNVdkpnaUd3VHpWZ0g5dDJmTXpKK2Q5ZFRD?=
 =?utf-8?B?M0hHTksvS1lzb082RnFHRTJDa0h5RjR4ZnM0YURrUFNyM295dUdhWlQvamFx?=
 =?utf-8?B?UnNuWDFiTDR5c3E4Rjh3YjRZYllReFNLalBVOFVPWTJjc3pGcjNpN1dDWEVa?=
 =?utf-8?B?NXAzUG8wdW40bll4dXFjTk1McjE4dWo0OFJydUxIYjNzb29vdFVDU1oraTJh?=
 =?utf-8?B?dHJXRVl0eU5ubGYwOThNeXZJTnRheVR6UUpNTjRRNjNKNWYzNkFEdkcwVTlU?=
 =?utf-8?B?cUhvUkRJQmJUYkpvWVpoK2hnTkpCUUpPNDJHL3pKUlE5ZkNOTU83V3lQcVpH?=
 =?utf-8?B?U1JLMGxYbEQvSnFVeXF5L2YrQzNjcjloWEF0RWp1NEJyNXFUYWllSm8wd3cw?=
 =?utf-8?B?MUdwYlh6bUJlZUNPZjI2Q1B4RnE3N0JXZHN1OUpMbEQ1VjEyZ1lVWUc1Ynh0?=
 =?utf-8?B?bmZDWW14WHZ2QTBiMVh3dEpCdGVscG9FQ0pkSXVWbmpocHJza3JkVzRVclY4?=
 =?utf-8?B?WWY3eUV0MWQvTDZkYVBlaENMSTN6eUFYUWt1eGhidk15YWM0MmQ2azRLdlIr?=
 =?utf-8?B?WWRXMHozYXN2Mkw4Z0k2a0VSSzFJRDBXYjZWSEFiTElCUklpQWtBd0dxMGlG?=
 =?utf-8?B?NzlWRTNGc1VUSG1Fb1hMSk5vZnpmVDRYV28wcXZ1Mk5HVUdRYmNrRVoxKzFS?=
 =?utf-8?B?eGJhVCt1RFBGMlVma3BieXpwR3FWa1U4emQzY0dXcGF1Tk1HV0lscHBhNnB3?=
 =?utf-8?B?V3A3NVpXbzVZeUtEQlJuVEFEQWdOOUIxaVpQOGlraWZ3U0N2VEd5MjFGZkl0?=
 =?utf-8?B?OVNUZXYwNGw4MUM1STBjSHc0ZVJ4amJscTBRVFJFQnlJWTg2NlZ0eEovbU1y?=
 =?utf-8?B?Q1A1QVdyK25EeWZTZTJOZFlHZDgvaCtTS0FFYm5JQ3lCanNIV3hsN3FWa2Fv?=
 =?utf-8?B?Y0lBY2RUVElidnBXRjJDdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2hJQUpITHlVUTNYRkYveXIzcUNLUS8vUjdUUk5DVVBBcTBQS0IzQjVlWG53?=
 =?utf-8?B?Ni9kR0hRdHhPcWM5bS9Bd2l2VUF5N21QVkZhVTdRR0NZQWZuQzIxWk5kNVNE?=
 =?utf-8?B?amc3eDdjMHE4VjZxZ09XaW1WTTBjODM5eDJwMzdYSVZ3WW83a0FMVHVndmJQ?=
 =?utf-8?B?NzEwWjFoZWRoNWlqNnBSVDJBTzVqZ1Rya0RKc0pIT0VMaGtRbXpFSUNUTVB2?=
 =?utf-8?B?WncrKzA3NkpYUktzRFFNTjlpNUZrRWt5RzZ4OC8rYWVrL2hHV25vQzA2Zkt5?=
 =?utf-8?B?Sm1pYlJPRXJsM3lYbG9rWXVIRi9rQm5KVVlxaHB6S0Q0T0diVXdhZTM2Q2dN?=
 =?utf-8?B?MU9MbHI4L3g4Rmdyc2hTNVdvMmN6aHV1UWJiVWQrNXJObS9VVERSZW40d2NK?=
 =?utf-8?B?SEN2Q240d1FXd2hsMWIzeU1PUjN5WlZsTUFqTmhOZHBkVWM1eTVaVWRXMVk3?=
 =?utf-8?B?ZFNTSnBOTDhpSUgvSWdKQmpCNkY2aW5jYlhaanltdGdTVDhabUVCWjFicDZS?=
 =?utf-8?B?S05KU2VpYkVSSVEyanRpL2l6WkorNXByRmtveklOa0w5MDNLb1pTa1kxWVBO?=
 =?utf-8?B?S0xWeWI2L1lpV1ozL0cwYjVzWksxY0RENXJQV2V3a3RyOTM0M3JEY2pLRWVH?=
 =?utf-8?B?MWZIVXBwTHkwVUxTVHRUazdCVWEzeU5KSGFGcGNKR1BKaEY1VFBzcnUvbk5H?=
 =?utf-8?B?RVJMTldBSnBLa2tOeFROd3VjYS9PQ2tJaHBaOVJ6a2M2T3VONGVIVGp3NlQ2?=
 =?utf-8?B?blEvVXdPM3FHSFFzN0k5MWFaSDljM1BtM3QzUHA1dEhIdG9uRnRsNkFpYTdH?=
 =?utf-8?B?NXNDNHRQS2RlbWVER2NaNUJuTDRTVldSR25wS3l3K0dacTl4KzkwOEhjMHVi?=
 =?utf-8?B?aThkMXNMSCtuZnZnNTVqQzc5Z3pqVkVYYmxQanZQaEw5STdEdjhGY2M2Q0lh?=
 =?utf-8?B?dmt1Qk16TmExR0plTEJ2OU1xR2JXUXFOOVpBNTRVaXlzSG1aUk1ac01wMzha?=
 =?utf-8?B?L1dqWnRlNGVxbkhHL0doNjAxb1pwYmZ2S1NJMG9sVkpFV3NTbVVrMDdncVFz?=
 =?utf-8?B?Z21UYlRHSnRNZHBiWU9JdXpjVlovSktIakk3c3BmYXVrdXYwM0dLRmhGZ0JQ?=
 =?utf-8?B?dHZlYSt6MmhuVkExa1F3SnBkYzdyYUJlZzdjay9TMU5pZE1za3A3bFpQUkxa?=
 =?utf-8?B?VC9ZY3JKYk5pUm1xVktnR2tYUjI2VzluZnZqR0N5c2xORVNXNTg5MEduUmsy?=
 =?utf-8?B?V2twUzZNc25uZjdLeUdOdlVaZ0V2YzRoTmVUOURmeDBlT2pZeFoydk0xU3F2?=
 =?utf-8?B?ZXV2My8zSmh0c1FYUjJLUDhFdFNwaGd4THpDVWhzdFlsYjN2TjdrY1E2SWpa?=
 =?utf-8?B?a2NTbGtyZjAxQkVBK2srMUxkSVZkeWRsNlplZmw1WlpUdEc2ZnZJdTdIVnBh?=
 =?utf-8?B?eUhXQU5ERTVkeWNDOVV3TEJHS1c5RWZxNEV1SEZ0eDdxVHVXY2gxRFlGYmtk?=
 =?utf-8?B?ZWxvbGxMaHNlenhVNVVwbXRqVVA4a25FandaVkx3UnEwcE5DOFV4RUEzd3U5?=
 =?utf-8?B?dHJjK1RFd1M4eHMzWUpTc0JBbHhIWGF2Z2VEd2lBeHJwYVhxNzRNZjd1U1BT?=
 =?utf-8?B?eUNXMlVMMEVyenFyVGsvQ3lic3RiL1RLWEpCbHpDMjNad29HNnkzY0l6cDgz?=
 =?utf-8?B?NjVmYndrZUx4dkhaaVYxSjFlQkpkUW5tdnlNckNuRXVpM0NjeU12a0x1c2ps?=
 =?utf-8?B?K2s5dEdDcDdpVUprR3dlMmtJUUtTQjkrWnFYV3NDY2piUVRQUUYyRHYwT3FG?=
 =?utf-8?B?a0lGbG83dmRIVmpLbkFJSjhmSm5DUmVrWW9lRkcvUGR2WG14R0pKWVNFc2NO?=
 =?utf-8?B?S0diMVBub3Z4VXZOQTlKN24zZndHaEhMWE5ic1lkTXh3S01CbGwyZExQc0Fw?=
 =?utf-8?B?bkhycWtkb1F4L21Bb09Uanc2SzEyODVMbmpiRCs0VUpJZXN1YzIrb1o2Z2JG?=
 =?utf-8?B?NnRVK0NxSzIwTmJsK1EyS3lpT294ZSt0c1ZXK3cxZnJGcTgxK3RUL3JUeGg1?=
 =?utf-8?B?bnVQUlh1ZnRtSk9MOGVpT1I1NU9KYW9zZ084cm8xNG04WGdQQVBkR3Awamhy?=
 =?utf-8?B?OVNBNmJwTXFGdzZ3UWxBYnN4MG5nRkYzZEV0eDQwTW9HZGdEYmh0R1VYTzZr?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 22c86007-07f7-4adb-cc5b-08dcb5c8e4fb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2024 03:36:02.0868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B/gZL3bqMtFkl3uZEL0/kB5tEP6lblEYa2s+BYaKLl1GP0Y1YNdTK0z5b0DnFiUvTj5g2NcORSKxWxMb4fU0/zhAVPWc7Cm+w84IP9JU+ek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5988
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


On 8/5/2024 11:55 AM, Nemesa Garg wrote:
> In panel fitter/pipe scaler scenario the pch_pfit configuration
> currently takes place before accounting for pipe_src width for
> joiner. This causes issue when pch_pfit and joiner get enabled
> together.
>
> Introduce a new boolean flag is_required which can be filled
> during dp compute_config and later is used to compute panel_fitting in
> pipe_config.

This is now only being done when joiner is required. For no-joiner case, 
the flow remains same.


> Modify pch_panel_fitting to handle joiner pipes by adjusting
> crtc_hdisplay accordingly.

Lets maintain version history of the patch.


>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
>   drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>   drivers/gpu/drm/i915/display/intel_dp.c            | 11 ++++++++---
>   drivers/gpu/drm/i915/display/intel_panel.c         |  3 +++
>   4 files changed, 23 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8bbde03f2508..a7194a84b6b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4796,6 +4796,17 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
>   		return ret;
>   	}
>   
> +	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> +		if (connector_state->crtc != &crtc->base)
> +			continue;
> +
> +		if (crtc_state->pch_pfit.is_required) {
> +			ret = intel_panel_fitting(crtc_state, connector_state);
> +			if (ret)
> +				return ret;
> +		}
> +	}
> +
>   	/* Dithering seems to not pass-through bits correctly when it should, so
>   	 * only enable it on 6bpc panels and when its not a compliance
>   	 * test requesting 6bpc video pattern.
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a04d52dbf6e1..a4ab26d8fa43 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1258,6 +1258,7 @@ struct intel_crtc_state {
>   		struct drm_rect dst;
>   		bool enabled;
>   		bool force_thru;
> +		bool is_required;

I think this flag is now very specific to joiner case so need to have a 
better name to reflect the same.


>   	} pch_pfit;
>   
>   	/* FDI configuration, only valid if has_pch_encoder is set. */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 65182bf69b62..4b707d029206 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2953,9 +2953,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   
>   	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
>   	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> -		if (ret)
> -			return ret;
> +		if (!pipe_config->joiner_pipes) {
> +			ret = intel_panel_fitting(pipe_config, conn_state);
> +			if (ret)
> +				return ret;
> +		} else {
> +			 /* Incase of bigjoiner panel_fitting is handled during pipe_config */

This can be just joiner.


Regards,

Ankit


> +			pipe_config->pch_pfit.is_required = true;
> +		}
>   	}
>   
>   	pipe_config->limited_color_range =
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index dd18136d1c61..0da45c2330d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -395,6 +395,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	u16 crtc_hdisplay = adjusted_mode->crtc_hdisplay;
>   	u16 crtc_vdisplay = adjusted_mode->crtc_vdisplay;
>   
> +	if (crtc_state->joiner_pipes)
> +		crtc_hdisplay = adjusted_mode->crtc_hdisplay / 2;
> +
>   	/* Native modes don't need fitting */
>   	if (crtc_hdisplay == pipe_src_w &&
>   	    crtc_vdisplay == pipe_src_h &&

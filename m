Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A379C85710
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 15:34:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA08A10E40A;
	Tue, 25 Nov 2025 14:34:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n6IbLaW+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2783B10E40A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 14:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764081241; x=1795617241;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jv1Q83GAYS0E3QI+ql29J514K9Squwdio8dwRRoKGlw=;
 b=n6IbLaW+vMfnUpQXt1Cgn8MWLGKRf3WSBDZaZli0+z0l1R+zzBnVRTje
 OrX9YVozk8OeNl2hBc0KCDZJgEULHUWVWoNK7LaVNwtf33EjnkHseSauS
 WPw57eRmrVJnh9JuYFsupMiM3qAyrD/G4TWGZay/+XusVkgdCYgQf/2IH
 sdWOiAl7nQLNfozSPw4lp0LFzTHX7+dKWP8C22BynhjOcZDML/5Vb6jFR
 eAa9dLutJ/iM716Ly7HRhNxZKmmPS6zQd/2hht3b3jy326U1/TiY7Smm7
 QPgSJeNFXO82jNoBf4jdcaChLD1Me6HZ8yfNl2Elx47ioljQFzcxt5IzI w==;
X-CSE-ConnectionGUID: lAtFlMhySDKKp33mKpjerg==
X-CSE-MsgGUID: kZqf5eC2SX2XY0P0AxCKtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="53668303"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="53668303"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:34:00 -0800
X-CSE-ConnectionGUID: W+H/DM0SQAeUX15xysQDVA==
X-CSE-MsgGUID: Q6OeIJcwSaCYOEy1XNwetQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="216001333"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:34:01 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 06:34:00 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 06:34:00 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 06:33:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uaT1FuXGk76ai+F5MkVGtCE+fdR4TkA5am2vjmCRdwbYXh451d/YqF2xK7tcIk6+nBhAzkVFj5KjYJa+zVDCJaSWFTWIwbcbo2/QDNSnWMHMJfxXZFT89JkwzySLARcMa3aVBIhGpUWgOV8oJFPyKcmV30db97g2CQRuLsdnjbM5xw99KlMCFcaL5Pe0aTQG7v2oo/A0yDZ8pZxYJKOYAClaTax0b/AatYkE4dOzIj82dVLufJ+gpOidG/eLPXa3DyjCqu24b/AG9RASr/jHkrym4IPf/0nRNXM1uFZ2kXdg0E1djl4OwXCkY4PSwdPCDEe/KRhlLoTJs0foj/IYlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ZhhwBJnxJeeCPT5Bx/JbpD6DdmrAVj6ZvmJ3hMfk30=;
 b=Mri39tWU2HGeSzN0vyjOTWVmfcEv+AvWC7rtxk7EKKX1C4mmT47bZDg68mFc3jgNPW+K4zrP2CI61wgBKdgZMjj7O6wNcQi3KybVvTd/uIWQ3qj1hAKK6b/xvkN0Wv2QERI1QWT8pKWajNyW9EH6LaUqlGsmc711v7+eZFvvNtrtbyx0nnMwZC11Gpe1s2pcodZcsDSdXZbZMLuJZvHmQWm+suEma6/GeJk2KiB5Ro2njJt2WdGM8j1tLGayLby0DybKeT7biJcXn1Aaqji47Ipe07yqrGD4NEKeSoly+65p1/jY3dL9HwSsUeWQBoE5D7zZEQJdr+F1MtKfoDWU7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB7164.namprd11.prod.outlook.com (2603:10b6:303:212::6)
 by MN0PR11MB6277.namprd11.prod.outlook.com (2603:10b6:208:3c3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 14:33:50 +0000
Received: from MW4PR11MB7164.namprd11.prod.outlook.com
 ([fe80::a972:1395:dd49:1dc5]) by MW4PR11MB7164.namprd11.prod.outlook.com
 ([fe80::a972:1395:dd49:1dc5%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 14:33:49 +0000
Message-ID: <755ef47b-411c-41e6-bf37-0b6af1176bdd@intel.com>
Date: Tue, 25 Nov 2025 20:03:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [V6 PATCH] Due to SLA agreement between PF and VFs, multi CCS
 mode can't be enabled when VFs are already enabled. Similarly, enabling VFs
 must be blocked when multi CCS mode enabled.
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <Michal.Wajdeczko@intel.com>
References: <20251125101345.2324973-2-naresh.kumar.g@intel.com>
 <aSWw5JGOGNaNyT6O@intel.com>
Content-Language: en-US
From: "Kumar G, Naresh" <naresh.kumar.g@intel.com>
In-Reply-To: <aSWw5JGOGNaNyT6O@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0234.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f4::9) To MW4PR11MB7164.namprd11.prod.outlook.com
 (2603:10b6:303:212::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB7164:EE_|MN0PR11MB6277:EE_
X-MS-Office365-Filtering-Correlation-Id: 0050bf9c-2171-4ded-f2ec-08de2c2fa629
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dUgzN21OOHh4aWxJNzkwam1SNDJwTG9HajFGRldZOXpUWkIzbXNsWGtkZG5S?=
 =?utf-8?B?SUYxNXh6Y2ZHeFVwNmFrc25rRVNJQ3RoQ1BMV0dzVFlIdVlybzQ1VUlQb1FD?=
 =?utf-8?B?cUZMa25CS2h3ZCtMZ3Z1VDhvQWF5Slc0MHlESGhFYjhybmUwM2xyRUhzY2Jr?=
 =?utf-8?B?V3FVMGk4RFp5KzljWFdaUUpsUnlaMU1SSE9sOThYMmpOYk4vRmliS1VWLzMv?=
 =?utf-8?B?ZkM2MThyWm9xV1dPTG93eGhQMnpHMG5EbWNhSytVeng0V3dZWE9WeDU5UURE?=
 =?utf-8?B?RjZDbVpCVlM4ckNHVmJVZHRYdngwMS9IV2pjdnI5cmR2WktxaXlwUm82SGZs?=
 =?utf-8?B?RVVpc2VMZlJzbDRWaG0wcWZjM0o5bVJqNXd0UzEvb1VEbGowejVSNmlEclVP?=
 =?utf-8?B?N0N5UVRVZnJ6WkJ0dEVDY0ZzV21uQUpBQ3grZXJiY3U5OWJ1MEF4WnNWVG1C?=
 =?utf-8?B?VGNJcHVoQ0Q1WWhSVWgrRU9xMGhQK0NjWjVDbmw2ck92N29Dd1ZDcUdONjJu?=
 =?utf-8?B?OXJlQlFDTFhTSTdsaFRMSTJIVjluQ21NTGhCSDRrNmNRZkMxNWRZVkNZc0dn?=
 =?utf-8?B?bFZjL0pTdENiRTV3U2Vja0tlZk00NzF4azhwZURrL2RqS1UvWHJzZ21PTkxi?=
 =?utf-8?B?VmtGMXQxU0h0RU5rM2UrRXdITmpGQi9TcW9SYzdXV29KcXdaeWlYdFAwOWZG?=
 =?utf-8?B?MTdQdGRZRjhEZDM2VVgraU56RWIzYzBSRzNlK0s5M3V1MlllZ3hWcVVBbjll?=
 =?utf-8?B?Mk9lZDI3enVScG5iK0FRdnNCUnkvZWxUMVJJeTVQYzVUTUxFMjYzcWFYcE5o?=
 =?utf-8?B?U2UwL1JCZlZ5WWVqd2dnT2RZb1VISGd3NGxxeG5lQmxxeDlUQXJRREllVkNz?=
 =?utf-8?B?VXNpcmlydUhtOVo3L0ZoeHZPWUpnSWNNN05OQnJMYUtjdkhvS1k4c0FaanAx?=
 =?utf-8?B?N3lSU0MxdmNiWlpCSnp6cmgycjZMRmNHUHF1RHpsVVNidXRqWnpaWFFVTHpj?=
 =?utf-8?B?aEVWSXkvUm5xVmZGdHV1WnB2VXdQQlNoVHZTb1ZZK1VmbWdyL1hxSmVhU1I4?=
 =?utf-8?B?bjFaTW9TRGZ2a0dyczg4M3U5cGdVTlN4bUFYRzZtNEhaQXBJWVJxWDIyekox?=
 =?utf-8?B?QnV4Z3ZQM1lKS3hTcXU0MCt4UjVtVkpjZGVwZmVPWVkxQmNwV1dXd2dVMkRj?=
 =?utf-8?B?VGlYbWJYV0xOd25lYVFzdHhHclMwU1lNRWZVaFRBYWRFdmR4ZVhwZjM3SFlo?=
 =?utf-8?B?dURIZEh1Yk1QY3ZKdWZ5R2t6bys0Z05xUnpkQTR1d2NQMEZZUU1XdjZEaG9p?=
 =?utf-8?B?L2QxaFVRdkpCd1o4eVdodmVhbEk4OFdzTDIyckFmN2RPazJxeEI5eW5vcG50?=
 =?utf-8?B?Wjh6Qm9WTTE1NCtkVEJ2NnN5eTM5U2xQaW50bzFXcWVCUGZkUjVKR294ei90?=
 =?utf-8?B?RWwxdzE5UThTb1AvN3BiTk5tOXdzdjdERG5ZRy91YkxWMlpSa1RlUjZNdzhM?=
 =?utf-8?B?RFo1aWRLNGRSU1BvMGlQVktLRTJqdFpwbUtiUHRiWjl5OU9wbDZCY3VBdXFp?=
 =?utf-8?B?VVZKU3RTWWZ4Q2xERDIvOFlaVy9DSjNJRXdlclVoVDlyYkdwNzUwalMzWGxO?=
 =?utf-8?B?MXFnWk5lTHEvUHM4Tkt0OVRjT3RSQTd6cDFrM1ZVR3BoSUJYdGdBSlN4SU1t?=
 =?utf-8?B?WVRaK1BseklPNTJTTTdVaVU4bnNrancvcjBYVWdLZko5V2IyaHNVc3JsRENG?=
 =?utf-8?B?R2xLbENlUG9hMlNUY2RidmFOdEp2OHNjdXBUUWtabDNEd1pmRWlsbVordHBz?=
 =?utf-8?B?OXpLRjRzK21TVWdFcE0vYWpETjU2cTR4SlFGNTBSQ1pCbjFCZGlqQlVpQlNj?=
 =?utf-8?B?YUs2Z3FIUEJ6TGhteEZCdDQ5UkhzKzIxbTd6aGVhYVFpYmFDWCtHNklLcklE?=
 =?utf-8?B?YUI1WkVZV2loclA4T05HRFJkRVRSaGtNeHdFR3F2RThnYTE1RXJseXJYeEtC?=
 =?utf-8?B?NVJoZCtBeFF3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7164.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWJDVklTSXZwdjZoMlFYb213c3h0a2cxZTVqRWVIK0RWYzZ5Y2I3dWxhY253?=
 =?utf-8?B?NmlqVnk5cVgzUldYRjU0d2o1U1pmUnVQR1FCRksrWDNXT0RGcDg2NXQrdHA4?=
 =?utf-8?B?ditBMGUwSU1TWnZIMm5xUHcrMmRaRDNHQUdtajZZanJ0TUVhNzBTWlN5UWM0?=
 =?utf-8?B?bmZEdE84SDVuaUE2dXZrcTNRTDF4S0pwMGRHR3dmRlhXeUhSMVVzWTYzNVgz?=
 =?utf-8?B?RHZsK2VGM3VMdjU4UjhoOEtLL0ExUmNNeWd3aG5ZU2RPQ2hTS0sza1hRUVZt?=
 =?utf-8?B?UzY0Sk5wV2E4MThGMkRDTGl1MXREMHBkTTdvOU9UcWNCcmtmYlgzSnNUNzBB?=
 =?utf-8?B?Zlh0K0RTemlEU1pIbjl0U2hzOWhmVHY1KzRQRndaaFJYMmZEQWZiM3BLRTBV?=
 =?utf-8?B?UzFuekd0NFVHQ2RzRGNxMDExS2VSQ0xZeEpQYUdCWFRjZjZLcTluWHExK2V2?=
 =?utf-8?B?MEh6MlBFVTBOOU5ORC8rakd4a1RlVFJCSVlHL0NrQzNmenN4UDlnSWo5cTFx?=
 =?utf-8?B?Yk51NjE1aW9RVEpFdVZ6UjhIcEw2MEFVNnhXSGRjVC96YXVVZWl0T0F1bzBp?=
 =?utf-8?B?UUR4QkNUSjZaOGliK09Sb1hnMFFNWVJ5YklZWHJtQjZwMFRud3V1T0JtR3VX?=
 =?utf-8?B?RHowVGJNS3pjcllhSDFqL2U3UFdXT2FoUE1PU0NnUXNNdEVLd1cydXR6MUNT?=
 =?utf-8?B?bk5lTitvWUVpR3lqSmJlVDJRSC9UYnpWK0VrazhrN0tBV1VBOS9zQjZ2bmla?=
 =?utf-8?B?MEtCdVB6T2pyNHB1aDkxR0hxakhLNTdzT1IraDNCWTJCZ2IySEE0Uncvdk5s?=
 =?utf-8?B?bitYOGpmV0dEOUl4YTBYQnNOWDZyck5YNndzYWk0Z0IzOVo5UWVMTmI3Unh5?=
 =?utf-8?B?UElYKzVTVWZoaXZsNVVVTy9GRndhd2I4VnR3MkxYTWRBM2J5L1JiV2pRTGZX?=
 =?utf-8?B?OWxpdG5xc3QraXJDNHVzcGdZQ0xiVDBaTjIzUGNOVTRwVkJKNjVqVHBwc0JW?=
 =?utf-8?B?ZnIrQkhnMm8xOUIwS1pjWitpNmc5bEN6NlhIM25tWU5rSG1XUWczVDlDYy92?=
 =?utf-8?B?Y0JIMTB2S1MvUzRrTm01TXFjUTFEQVF3TnNPYzZ2U1AwQWNaRE9xWjZDUDFn?=
 =?utf-8?B?djEyRVRwWHNrZ0JuRzdBV2JIczZFdjRCT1pFaW84WFovQkhZTElXckxmWHpT?=
 =?utf-8?B?OU1DdStaZXI1WjY0QU1neTlZVERRa2I4MkduaTBFa1V0cG1EeExDWFhVbVl5?=
 =?utf-8?B?c0QyWTlwNmxQYTQxY1BxVGQrVmlmRG9rV2xmM3JpV0EyenBJay9oWTNEakV6?=
 =?utf-8?B?K1lnM1JJaUJWV1J2eXpjcGd2UmREenpaRjFNR0ZqM0t6UHJpRTNycW8vd2M0?=
 =?utf-8?B?R1VzNWFtQlZMa0FtUXQ0ZUpqcE42N0loVG5oQTIrN1M1VTdNRDN4ODVoejFl?=
 =?utf-8?B?cTIrRE0zMHpxKzFxTkp2Q3dTdnJjdXMvQnpmOG5RSWJCc1A2SFc5M2U3cVVW?=
 =?utf-8?B?YkQ0bDFvaTZXUFVnQnJzdmwzVkp5dnE3UlNVNjBqNThvcTR0YmZrR24rUC9u?=
 =?utf-8?B?eGM4djBIbEZ5YkdTSjUrRXpPQURmbkU5S1ZJMzdTZVlMZjY3N1EvazhJNTFZ?=
 =?utf-8?B?Q055VXNrZmJUeDRkRDJBdnlZcW1uYTRia0NIQnVoMGZNV0hXWXFKYU1NVndW?=
 =?utf-8?B?L1lJa1hKMjc3OXBDZ1lBTjhFdHFrL3R5L3VnNitNRktXNFdxeGhBT1JsR2Ja?=
 =?utf-8?B?aTcraG9rcEhKNkRxUjZCNCtrWHVqdXVTRXIvM1FvdmdEL2E2TjJObmRpWWtM?=
 =?utf-8?B?ZGNnS0FUTlAzd2dYYk1acnZnUzRlay9JZFlwTUdybklISEREM0ZDSkxVMTg5?=
 =?utf-8?B?dnJOQTBVeEMrOFhRekM4elFIZGZwSURMZ1ovd2RTVkpHUkJBb2ZDY3kzNmV2?=
 =?utf-8?B?Ri9HdjdrWk9zOE9nYzk1SWZOU2pzSEwrTlpTSmVwUFBUaWdsdzErYktqdHpy?=
 =?utf-8?B?ZXNTOXNYbVROdzh0VmZUY010NXY2YTdyeXB3UC8rMFl0bkFPRERFYUFGV3NU?=
 =?utf-8?B?MEJWajRVOXc3ZlpjcFE3bm4wcnJpVlhEMytkUG12eklUZ2hVRU1SR2dCYTM3?=
 =?utf-8?Q?+FwZTsKL4KM8gNHZmm5ekYAeP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0050bf9c-2171-4ded-f2ec-08de2c2fa629
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7164.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 14:33:49.9296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mEGZWGATleoCy4zGHaveYTFxX5opAabviT8x8s3A3lovFrU1uQ9dkE99O4Ad4e69kwk5BpGhrm+CPIiQS6iayN9eg8KDt9E5OT8wSpTY7lw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6277
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



On 25-11-2025 19:06, Rodrigo Vivi wrote:
> On Tue, Nov 25, 2025 at 03:43:46PM +0530, Nareshkumar Gollakoti wrote:
> 
> Big subject, no message...
> Please:
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html
>
My apologies, I mixed up the message subject. I accidentally sent this 
patch to the wrong mailing list; it was intended for the xe mailing list 
(I made a similar mistake there as well). I will resolve the patch 
submission issues and resend it to the xe mailing list.
Probably will discard this patch from this mailing list to avoid 
duplication.
>> v2:
>> - function xe_device_is_vf_enabled has been refactored to
>>    xe_sriov_pf_has_vfs_enabled and moved to xe_sriov_pf_helper.h.
>> - The code now distinctly checks for SR-IOV VF mode and
>>    SR-IOV PF with VFs enabled.
>> - Log messages have been updated to explicitly state the current mode.
>> - The function xe_multi_ccs_mode_enabled is moved to xe_device.h
>>
>> v3: Described missed arg documentation for xe_sriov_pf_has_vfs_enabled
>>
>> v4:
>> - sysfs interface for CCS mode is not initialized
>>    when operating in SRIOV VF Mode.
>> - xe_sriov_pf_has_vfs_enabled() check is sufficient while CCS mode
>>    enablement.
>> - remove unnecessary comments as flow is self explanatory.
>>
>> v5:(review comments from Michal)
>> - Add xe device level CCS mode block with mutex lock and CCS mode state
>> - necessesary functions to manage ccs mode state to provide strict mutual
>>    exclusive support b/w CCS mode & SRIOV VF enabling
>>
>> v6:
>> - Re modeled implementation based on lockdown the PF using custom guard
>>    supported functions by Michal
>>
>> Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
>> ---
>>   drivers/gpu/drm/xe/xe_gt_ccs_mode.c | 47 ++++++++++++++++++++++++-----
>>   1 file changed, 39 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
>> index 50fffc9ebf62..495bf517a6d3 100644
>> --- a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
>> +++ b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
>> @@ -13,6 +13,7 @@
>>   #include "xe_gt_sysfs.h"
>>   #include "xe_mmio.h"
>>   #include "xe_sriov.h"
>> +#include "xe_sriov_pf_helpers.h"
>>   
>>   static void __xe_gt_apply_ccs_mode(struct xe_gt *gt, u32 num_engines)
>>   {
>> @@ -108,6 +109,30 @@ ccs_mode_show(struct device *kdev,
>>   	return sysfs_emit(buf, "%u\n", gt->ccs_mode);
>>   }
>>   
>> +static int xe_gt_prepare_ccs_mode_enabling(struct xe_device *xe,
>> +					   struct xe_gt *gt)
>> +{
>> +	/*
>> +	 * The arm guard is only activated during CCS mode enabling,
>> +	 * and this shuould happen when CCS mode is in default mode.
>> +	 * lockdown arm guard ensures there is no VFS enabling
>> +	 * as CCS mode enabling in progress/enabled.
>> +	 */
>> +	if (!(gt->ccs_mode > 1))
>> +		return xe_sriov_pf_arm_guard(xe, &xe->sriov.pf.guard_vfs_enabling,
>> +					     true, NULL);
>> +	return 0;
>> +}
>> +
>> +static void xe_gt_finish_ccs_mode_enabling(struct xe_device *xe,
>> +					   struct xe_gt *gt)
>> +{
>> +	/* disarm the guard, if CCS mode is reverted to default */
>> +	if (!(gt->ccs_mode > 1))
>> +		xe_sriov_pf_disarm_guard(xe, &xe->sriov.pf.guard_vfs_enabling,
>> +					 true, NULL);
>> +}
>> +
>>   static ssize_t
>>   ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>>   	       const char *buff, size_t count)
>> @@ -117,15 +142,13 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>>   	u32 num_engines, num_slices;
>>   	int ret;
>>   
>> -	if (IS_SRIOV(xe)) {
>> -		xe_gt_dbg(gt, "Can't change compute mode when running as %s\n",
>> -			  xe_sriov_mode_to_string(xe_device_sriov_mode(xe)));
>> -		return -EOPNOTSUPP;
>> -	}
>> +	ret = xe_gt_prepare_ccs_mode_enabling(xe, gt);
>> +	if (ret)
>> +		return ret;
>>   
>>   	ret = kstrtou32(buff, 0, &num_engines);
>>   	if (ret)
>> -		return ret;
>> +		goto err;
>>   
>>   	/*
>>   	 * Ensure number of engines specified is valid and there is an
>> @@ -135,7 +158,8 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>>   	if (!num_engines || num_engines > num_slices || num_slices % num_engines) {
>>   		xe_gt_dbg(gt, "Invalid compute config, %d engines %d slices\n",
>>   			  num_engines, num_slices);
>> -		return -EINVAL;
>> +		ret = -EINVAL;
>> +		goto err;
>>   	}
>>   
>>   	/* CCS mode can only be updated when there are no drm clients */
>> @@ -143,7 +167,8 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>>   	if (!list_empty(&xe->drm.filelist)) {
>>   		mutex_unlock(&xe->drm.filelist_mutex);
>>   		xe_gt_dbg(gt, "Rejecting compute mode change as there are active drm clients\n");
>> -		return -EBUSY;
>> +		ret = -EBUSY;
>> +		goto err;
>>   	}
>>   
>>   	if (gt->ccs_mode != num_engines) {
>> @@ -155,7 +180,13 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>>   
>>   	mutex_unlock(&xe->drm.filelist_mutex);
>>   
>> +	xe_gt_finish_ccs_mode_enabling(xe, gt);
>> +
>>   	return count;
>> +err:
>> +	xe_gt_finish_ccs_mode_enabling(xe, gt);
>> +
>> +	return ret;
>>   }
>>   
>>   static DEVICE_ATTR_RW(ccs_mode);
>> -- 
>> 2.43.0
>>


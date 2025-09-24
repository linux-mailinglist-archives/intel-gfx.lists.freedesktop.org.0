Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A834BB9A34A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 16:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF8D10E72D;
	Wed, 24 Sep 2025 14:19:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iXYQmygO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBAF710E22F;
 Wed, 24 Sep 2025 14:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758723588; x=1790259588;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iOa7J0xeWTOwgq/gl6yknVy8az262eQRwg2EzUpL9MY=;
 b=iXYQmygOocbBMM15uMyf9xoiIJCgRPkJvfZSsAwyE+j+AiTqjDKojIOj
 AxYKHXDpFH5arbY6g2uuwq0JVtrHnbGQf3Ie7JM5t8e5Qn7U3mMvNDO1/
 gUMTuhaamcO/VxV89LbZNS9ASMXkw/1G2HA7lTfSGF69NhQvzkR8VzhZF
 i45vf0TMlY35Ft6cYYN57IWLWXJt+Mkn2VQ2r4F6ORfXe0zJDxA4JJdpg
 08Mm5KMGuGZORG1h3DyZMbEbP1Ye+g5tjPy/CRSTRmUszoBUYtkcbLOCZ
 dRPVI0mxy/0/Rdf99dgT6ez/ZczfSiV3Ydme2G+8KJO+omhGOSOFMElT+ w==;
X-CSE-ConnectionGUID: jE/qy41AR9yqane8tqCdXA==
X-CSE-MsgGUID: YFGAOetmTxan7ZkHrR44TQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="71265384"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71265384"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:19:48 -0700
X-CSE-ConnectionGUID: pZ6P9JLpR329boWuRxI7tg==
X-CSE-MsgGUID: TAThWFuvRp6GAHRf8R4mPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176340830"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:19:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 07:19:46 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 07:19:46 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 07:19:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VIkyRAofbL1I7f09YnlbOvsCK77zJnbbYfn3lH83ps17seGLydDyNBSRblZWPNDUcwTDyxy4RxLlJB9j1Lp3qjt36qYrxmn/EJSJ2U/FuSon+6BTyRLbhhkm1jDaYNVD4uIXXVHZtaNANYIykhbkyd37m945hDquISp2BzJLwBtf798qCI7Oqyp0nD88OCFlcQ5z3oaM6Vb/1OQ9Dt7l1pO4Ezl/1RZhuefDC2EK54yMlgfnO7hCaXBTzACddUekaHV1WhxB3er80H4Ezn41qupQ8ygLgwMjbBjPz0Cw2yyEAid7Abd570l0nAxscF+AQPej1suwUlazfgpUd7Q/fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2rkYDDRIoN9YrncAkR4xtWnT2PANdC51bwEEQeTS2EM=;
 b=alkZjyeGVYBjrIhAapgH47s3LvjVAcXPPsXYe01wotQLr5qplRgyehnScDPCElOJD1J6ljxHgbv6sUCsfitiUwJ2/usgyNLDYe/S0x7rBVwbj8IzonXR4aGM1aCs9Z9X70bNr6IuXCQIqt+MItYJxpFNtb+YJffwCfYiDwhLY686E8Oeu30dWSYUIt5XpLTnEG1oPSSvBKmphqdGLBqHxp2jdUIyUKN8K4dkr09Y95HMoLjHp3o1GImsWyNoLKEL4H3zz/hctrTKTE69/UrJnNl+IT1l2V7qexldaqZ5HnFr5gsJlX92ej3ayw6Y9b2C0dd9Ova1fpKu0KHt4/V4Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB8828.namprd11.prod.outlook.com (2603:10b6:8:257::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 14:19:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 14:19:38 +0000
Message-ID: <a75cba5d-4811-4fb4-ac77-365e8b2d4929@intel.com>
Date: Wed, 24 Sep 2025 19:49:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] drm/i915/vrr: Clamp guardband as per hardware and
 timing constraints
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
 <20250924105129.2771196-9-ankit.k.nautiyal@intel.com>
 <aNPeXDMHgDLzDWvD@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNPeXDMHgDLzDWvD@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0022.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB8828:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d31a84f-7647-43a1-3983-08ddfb75651d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bHd6S3BZV3NnSUY5RzlhVkRzNWE5L05JWWFVR3JYb3ZHQVZjNlQ0QWl4MjJE?=
 =?utf-8?B?OTRkUmlMd2tQMmFLOVlLV2hVeGJNanFONTJlRDgra1YvZVB3VFQrT0V3UmlB?=
 =?utf-8?B?RngvelBHa2wzSnI1cnNqVytuTXZEZzdYQnl3NTdBbDNsb0IraDRiRnltM092?=
 =?utf-8?B?S2hqV0Ezc0pKKzIzUHIzQWhsOGlUN29zWFAvSXVXaU82a01ZekFDVFlyTjlX?=
 =?utf-8?B?U1ZHSWxpRFo0UG5ZcHJWWGRJUmJwUUxJQWFHaXJMU09rdDNIRXBhTWdGKzFS?=
 =?utf-8?B?NTF5Mi81RVpNd0c2ZXJCK1oyemhBNExDZmE3d0VBT1dJM1dOU2lQQWcrc3BW?=
 =?utf-8?B?Ym4rOFFhZlVpT1g5N29kT1YxM2ljN1k2YXpVVkVXbHBjb01Xd3BFUERWZU1j?=
 =?utf-8?B?M0t4MUc1Z1ZjTnB6VllteTVRbTIreUFxaWdnK3BZYTRQRDNpWFVDaXNwTzZj?=
 =?utf-8?B?dUpIOFAySG8ydDBjcjBqank4NnR3dHdvQXZCcXNrZUNpNWhxWHJlWndWeWJ5?=
 =?utf-8?B?RE1UMlJnNG5DOGFqV0Jkc2k2blhTVEI3OWlGeHZmVDRqSUJTaWFQMXN4Ynp3?=
 =?utf-8?B?SUhBcjJJQUhrR2lKMVo4VDE0VnFiQXAwYnFiV0tvaDROVkFuQzdSSjI4V0N3?=
 =?utf-8?B?d3lqdzNFcEVvWHA1dzdjS1lIaDdSR2NiYm81eCtUOC9zdVJ3ZVhmQzUvL3Rm?=
 =?utf-8?B?UWd5cURwMkgzdi9JL2lOM0J3ZnhuUkRhbU5FcURRUnROc3JxL0p5QkhiT3hO?=
 =?utf-8?B?cjZXMlB3azNRMkN5OGQxbFdReFRYL0dpanFxL3RYdU1aa0RlbjUvbFFQZ21i?=
 =?utf-8?B?bll0dkl5cytpa2FMVWR3VU54QUNGNUtWSW4rVis2a0VkaVc5QXEyRzJFSmZt?=
 =?utf-8?B?RWtXSXRmSGhPRVp6NCtZTWNNWFFxNU4zTEx5eFQzSStnSWxQNVpya1lSUjlV?=
 =?utf-8?B?bDU3T05GQnNrRktaV1Z0T1R3MkVTR05xelNwQTZnUG9OZ2JrWDV0OTU2RlAx?=
 =?utf-8?B?OU5EWkd0YWRpanF6L1FyeGJuRGZjOUJKRU42b2RiQjBSK0RMYThrQkVUZ2Mz?=
 =?utf-8?B?cTM1RlhvUDlJUFhjSy95VjR2UzRjL21jOVArdzZGakNnSThHcjVmV1lUbFM2?=
 =?utf-8?B?M1l1VFlsSEwzQnZDREQ2VFJlUGxjWUxpWThZdHh3MGFnNG1PVFQyaEFYQmFI?=
 =?utf-8?B?Sjd1RmxKb3NCUVdvMU1rbUpmYUtkUkJ0Tzl5NVZDU3JQMUtHYTZYb3JHR2dk?=
 =?utf-8?B?VUxrQzYvaU9qRFY1VmhVRnN2RW9ieU1ja0Q4QmxlWm9LTXI3bGJOb2JsWjhs?=
 =?utf-8?B?N1JtUmk3VFY5UDl2aWZUSFZXbnY5UlVZS1AxcElTOGRTSlk3UWpZVVlKck45?=
 =?utf-8?B?ZDlLUk02bUJEL29tRXJQeklxWnU5SW5ZcWZqZml5dmhjWVRLVjB6c0Z5ZTB0?=
 =?utf-8?B?VEdZcTRlTW5WZGNOeUxZQmR6SmtjbmNHaXN3cU9SdDg4bXFBcWNWUzkyNHFn?=
 =?utf-8?B?RlVJZkVMamh4M2tHM1pLWXdpYnFHVXlPeEhaSWpYdklBamkxS0tZSmlhN2Qv?=
 =?utf-8?B?dzM5QmM4cjRmTUZaWlpGNzVaRnA0RWpsUnZWakYrV3d0K3Irb1Rja1VNY2Qr?=
 =?utf-8?B?NTRubG5lbFlGUTJ1dFVWRmFwNVczL2hXUHdUNSs0UkdrMm9KNmVJbitObWc0?=
 =?utf-8?B?LytvbU1qekdaRVlocnVIK3NmSGVESUNHSFByU2N2Wjl4UnoyWEtHeTJETEdw?=
 =?utf-8?B?MlZiZk13bWlNZHM2dStuNDhzWHozbG5rcUhGUEdIdFBuZ2lXUStDeFQ5SEJV?=
 =?utf-8?B?UEM4VEUxTXRwOWh4Vlh1NGovUXZJbHNkb2dNZ2JlVVdnMWRYN0tSOFFUcHJy?=
 =?utf-8?B?M0F4L0pnVHlabHhlUGcyRnoycXZGT3IxbEk4cGtMS2J1ak54OVdmQ0NhQlcw?=
 =?utf-8?Q?BRzH5CQB2jA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3ZUL2tlUWVsSG43VHZueUE4amxGdS9LS1FxandSRU9nTFR2UmJDamRJazlQ?=
 =?utf-8?B?SVJVNlowcittMzV4UDFDamtVUE0zZTNienliWkpEQVUvMCtsa2Y3aGNkaTFp?=
 =?utf-8?B?U3dxZE9jQk5qUi9rS0JkNXkyR2xwS0NGSlV4YnBPMGt6Z05xYkl1T1RKZHhR?=
 =?utf-8?B?R2wvV2dVcjlVVnZBTFRKdFpnNE83UzJONDFHYlBzTFlVaWpUT0huM2ZMaVJu?=
 =?utf-8?B?U1l3TWRDWXZXUU1LRS83aXNHSEs1dlRtMThUbExQUUwyOTZiNlZZb1BUMFcw?=
 =?utf-8?B?QmFTcWVWbk5pVmJ2ZEVBaXJLekF2NzI5YXZTYzVGbWJ6U0FYZmw0dXlTbUJL?=
 =?utf-8?B?SWppQTVGemU2ei9CMVJuMjRnWENkeTBxZkR2R0dQaWhaSzNMczA3ejZRTjRJ?=
 =?utf-8?B?NVErY1hyR3hkR3VhbVdLbWF3VWQwblBON09kMzlUYld6andIalFHT3JYV2hV?=
 =?utf-8?B?bVBNcVVTU0Q1RkhuMXp3ZXh4RUtGc3V1TVBVcmlTWG5pV2gwMnpBYzNuWldt?=
 =?utf-8?B?MFRMMmQzYzY2TXdtVFVGdDJrOUcrcDBDM2lPaTVRYXBESEcyd3BubHRJTzMz?=
 =?utf-8?B?YlZueGl6MW11a0hKZERrR2N2ZGJJVlY1MkxlTlFXZjllSTZIMERqTkRmMWNq?=
 =?utf-8?B?T0JZazdrTisrVTBJVExRZVpsNS95Vy95K2p4SzRCUm85VXV0aVRWZy9GVDhj?=
 =?utf-8?B?eVZ1UHNPWnZQS1JKZlJTVnBYWTBFeEM4d2trOXRUakM4T2dPa2xnNWZpZmpR?=
 =?utf-8?B?Q2pzTnM1cjlHMyttR3hBRGJyM3o3d3AyZDRxdUVuOTdvaXZycnNuZUl2WHJk?=
 =?utf-8?B?ZWgxTXRMWWZBWW1LWk4rby84Q3RSOUNFenJPNGVHbnhnRXpMMzhrTXJiM1E3?=
 =?utf-8?B?dm82b2tTS2tLQ3oyMG5ubWJsNFRQa2NIaWpLazlpL0tPSVNqdkF3eXhxcDdH?=
 =?utf-8?B?b3hlVlJyVkpEeml2ek4zcEZudUgzcHd2cHR4dXk3SHZFWnV0MVJVSDlJT0Jv?=
 =?utf-8?B?Wjg4ejBZdGM3NkNNVWxHZEYwRXpmWVFoRm1pZTdFa3VuZmRHSGgramdNWXdu?=
 =?utf-8?B?eXY0SC9KbDN3ZTRScjNLOFNRcGRWeXV6ZUNod2Jnd2Y3LzV5QzZtd243eG5U?=
 =?utf-8?B?VXJMSTkwMXNXN2tKUlQzWGJNaVQ2UHJFOWtURmFTVHFKSXE2V0JubnBQWEpW?=
 =?utf-8?B?ZXl5dWVxcXdhcXFTendFVW5DdHVMbHEzVmhhOHE1YlZhcW5uMmFXT292QjF3?=
 =?utf-8?B?VEt0MnNHQlNoWW13ZDNCa3BZMUdkTmM2OCs4dFdld3J0a3B2UjRkaVZjdkl2?=
 =?utf-8?B?Z240YVFMSjVSOVBlcVN6MHlWWENoVUFMK2cwTG0yaS82SzdRaWdvQ1Jvd09Q?=
 =?utf-8?B?S3Jsa3ZyWHg3TVdIUVNIOTFhMSszc1hFSXZ4ODNYT1pmVnFKZ3dTT2dpZmxk?=
 =?utf-8?B?MWFkcFhjWFVVSjZJak1zdGk0ekRCdUlCRHpEZ29DVVpwK0FuR29oOEJXeFFJ?=
 =?utf-8?B?U0lReVVwM0hKUEQxajd5Ukk0bFJwbys4S09iSlJBUjhjemF6elcySGQwQ0tz?=
 =?utf-8?B?dVMyYlNmKzE5WkpRc1VTdzl5SHROaW9Cc1B0TW5CVDJMK0dpcVJkZEdlUlN0?=
 =?utf-8?B?cTJZeFdxd0pNYzFJeTNzNDUrUklmWU5FSEcrUS9yWDlPaFhIU3c4MUlleXpq?=
 =?utf-8?B?M1FhdzZIS013U0lEbmZSZXNCaUdjeHJnYW1Xdkg1S2RZaVJIdER6UlBYQWhH?=
 =?utf-8?B?NU9EaVFKWTNBWTViVWpHVlpucDAxVDBHYW1wOWdKSGpEaG5tNnF2NGZoZno4?=
 =?utf-8?B?OXR0Yk1kWENqNU5uKzhEdllwWnJzb2hJZGh2eHc3MHF6STM0bi80THBkRERK?=
 =?utf-8?B?MGdkNkRCZStnTk13aFFBMDM2Z3NnZHQ2eXZtYzBJTUo4c3hNWFlqVmtyTXZE?=
 =?utf-8?B?MHc1MVJtc0ZISnZYS2dmSW5sOXAwcElKTDhsMjBCODJSdGp2dGtvTGZmbE5M?=
 =?utf-8?B?UWdYalpyaU53RUx4K0JXTkt3OVdQK3BKUm05SlFBQzRhc3NHczFrOFpOaVdV?=
 =?utf-8?B?VjFralk0a2tIR2xFR3AvZzVneXBpZlF1TUUyN255ZWVZTkRhaG5zc0RpYTcw?=
 =?utf-8?B?UE9nbFZ5b1N6ZE5zVXA4Y0ozbEdUN2hqNDV5YXc5YXBnSUR6czUzMFR4TXFa?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d31a84f-7647-43a1-3983-08ddfb75651d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 14:19:38.9200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nyHkpDaSYFN23x7jOAZw6Q+jlBMoe8mBWqqJSobm/03e8DzCCfptYr6BuTwNl3DZa2uJhDRakOuI0B9Jp/2eJaaeh5/doJpuVqvacqKy88w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8828
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


On 9/24/2025 5:34 PM, Ville Syrjälä wrote:
> On Wed, Sep 24, 2025 at 04:21:28PM +0530, Ankit Nautiyal wrote:
>> The maximum guardband value is constrained by two factors:
>> - The actual vblank length minus set context latency (SCL)
>> - The hardware register field width:
>>    - 8 bits for ICL/TGL (VRR_CTL_PIPELINE_FULL_MASK -> max 255)
>>    - 16 bits for ADL+ (XELPD_VRR_CTL_VRR_GUARDBAND_MASK -> max 65535)
>>
>> Remove the #FIXME and clamp the guardband to the maximum allowed value.
>>
>> v2:
>> - Use REG_FIELD_MAX(). (Ville)
>> - Separate out functions for intel_vrr_max_guardband(),
>>    intel_vrr_max_vblank_guardband(). (Ville)
>>
>> v3:
>> - Fix Typo: Add the missing adjusted_mode->crtc_vdisplay in guardband
>>    computation. (Ville)
>> - Refactor intel_vrr_max_hw_guardband() and use else for consistency.
>>    (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 49 ++++++++++++++++++------
>>   1 file changed, 37 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 26c5c32a9a58..e29b4050a9df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -409,6 +409,40 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	}
>>   }
>>   
>> +static int
>> +intel_vrr_max_hw_guardband(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	int max_pipeline_full = REG_FIELD_MAX(VRR_CTL_PIPELINE_FULL_MASK);
>> +	int max_guardband;
>> +
>> +	if (DISPLAY_VER(display) >= 13)
>> +		max_guardband = REG_FIELD_MAX(XELPD_VRR_CTL_VRR_GUARDBAND_MASK);
>> +	else
>> +		max_guardband = intel_vrr_pipeline_full_to_guardband(crtc_state,
>> +								     max_pipeline_full);
>> +	return max_guardband;
> The 'max_guardband' variable looks useless here, could just return
> directly from both sides of the if-else.
>
> 'max_pipeline_full' is perhaps redundant too, but I suppose the
> line would get pretty long without it. So maybe it makes sense to keep
> it.


Yeah the line was getting pretty long, so added max_pipeline_full.

Can drop max_guardband though.

Regards,

Ankit

>
>> +}
>> +
>> +static int
>> +intel_vrr_max_vblank_guardband(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +
>> +	return crtc_state->vrr.vmin -
>> +	       adjusted_mode->crtc_vdisplay -
>> +	       crtc_state->set_context_latency -
>> +	       intel_vrr_extra_vblank_delay(display);
>> +}
>> +
>> +static int
>> +intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
>> +{
>> +	return min(intel_vrr_max_hw_guardband(crtc_state),
>> +		   intel_vrr_max_vblank_guardband(crtc_state));
>> +}
>> +
>>   void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> @@ -417,22 +451,13 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>>   	if (!intel_vrr_possible(crtc_state))
>>   		return;
>>   
>> -	crtc_state->vrr.guardband =
>> -		crtc_state->vrr.vmin -
>> -		adjusted_mode->crtc_vdisplay -
>> -		crtc_state->set_context_latency -
>> -		intel_vrr_extra_vblank_delay(display);
>> -
>> -	if (DISPLAY_VER(display) < 13) {
>> -		/* FIXME handle the limit in a proper way */
>> -		crtc_state->vrr.guardband =
>> -			min(crtc_state->vrr.guardband,
>> -			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
>> +	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
>> +					intel_vrr_max_guardband(crtc_state));
>>   
>> +	if (DISPLAY_VER(display) < 13)
>>   		crtc_state->vrr.pipeline_full =
>>   			intel_vrr_guardband_to_pipeline_full(crtc_state,
>>   							     crtc_state->vrr.guardband);
>> -	}
>>   }
>>   
>>   static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
>> -- 
>> 2.45.2

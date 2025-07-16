Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A56B0760A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 14:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3AD210E27C;
	Wed, 16 Jul 2025 12:45:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FZsUlInE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A196110E27C;
 Wed, 16 Jul 2025 12:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752669948; x=1784205948;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RDch7grH/9JDABzjk749a6canuOVXO5l/ULYxPB08bQ=;
 b=FZsUlInEBX2a6JhH+d3dmbJFKUHM6AtJhkMAIjXTHDJc5SXZ60moRby+
 n9MMbtZhWDCZ3cvR/m91xAv6GfRkaEUfxmbjGV6DUMHsvbBQrja2kEi/U
 tbJc7bbGGBJTd+RitVOSEHnWSH66eH39o7CWsUXZkhK2x2Kf69SOHRWqV
 NIA/BmBEmfMkxWHPyokojMvCkYyENgv3wtaHN8kz8tROlMuCf3C8Hje+v
 p8Non5HbZvXCh4uFhnO2QuZ5VD0Fjg1UtUHfOFI3NChGu2QxvXLXpXm1o
 0QrCxt/YToMCHxxjsfeIbTxXKf0oaoVu74PmGKfcbW0BpJsNtSEH814hb A==;
X-CSE-ConnectionGUID: DHxPkiHxQ1aauLEnswlHVA==
X-CSE-MsgGUID: 63rYejoRSYmt0lvwAeItVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="65978341"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="65978341"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 05:45:44 -0700
X-CSE-ConnectionGUID: mP7tk8ucRIO2w0qowLk3jA==
X-CSE-MsgGUID: VGD36fFNQ8edIX/iVjGEiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="157589590"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 05:45:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 05:45:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 05:45:43 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 05:45:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hz54IqMIsE/+gFKl/jaywFKpy8ibwLtVI7PlpVNMoZIrPJcKmGD/UlEKK3aiX9cNApURqfnOudXSIFHtiA0UEv/HHmhgU+snZg+F68et3UA7ueqyHL4Au8d4SOhl59BxAgQpnwVgDdgmZY0itr/wcSYkRT5FLYjHZj/LIzyisaYdHMgbkHLy6y77m+PpT/x+Qbmj5ZQLNrAYFGBw2vQNUmFSCfRn7cNaDuHj2y8kAAYxiZ+yL7WUt8ngdmSEGdgILBoVbIdO2MVgH0TG+e+Um6r3hiPX65Oct4CvlHUHSl6/Imi0gJWTXwDs/SEl9ncm+AX+1P1kpF2xSCED9pcqag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WxPY64+Xw+Vpyakqk1Ap7MJ6Z+rLGH6xJosLbHZGEDM=;
 b=g/cGtyAg/v89CZppppS595z1G/4Ii0w5FveAQyIiwNW/fwhZ07paji70q0w025jJugUfk3AP7GLa7P/1EVaNywWcaJNsaNFJOnaJdEK94L8USPUvf+ZpJBoe5qD2nWtdESQMi4Z81kI0CuDANa5kGWWEdCxHfMmcF5G7GrXpstnV1g2arpXfZNVS+Fy1GZWri1aQfp4CmvZCYD1qZv/C4hWPaGtUbD/JaVsmGszdQB5OzUM4Bh6md5oll/7WSkXoWfT0QcxWUR/mbB6ebbEk6Q5u6YrM0wz0IampEO7wiayqaqueWPM7E4vejVnovY52FEa/9KPIITjCuKFh7AGKKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 by BL1PR11MB5980.namprd11.prod.outlook.com (2603:10b6:208:387::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.33; Wed, 16 Jul
 2025 12:45:39 +0000
Received: from IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::21c:1228:5006:c7ed]) by IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::21c:1228:5006:c7ed%4]) with mapi id 15.20.8922.035; Wed, 16 Jul 2025
 12:45:39 +0000
Message-ID: <73fb37d0-c891-49e2-804e-c60924a02989@intel.com>
Date: Wed, 16 Jul 2025 18:15:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/display: Avoid dig_port work during suspend
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
References: <20250715055219.410193-1-dibin.moolakadan.subrahmanian@intel.com>
 <aHYh8Yg78OYk2oQr@ideak-desk>
 <630b39c2-2e0a-4d10-82ac-81b5023d6315@intel.com>
 <aHZy7-KnWhHiVzhu@ideak-desk>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <aHZy7-KnWhHiVzhu@ideak-desk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0023.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::12) To IA1PR11MB7175.namprd11.prod.outlook.com
 (2603:10b6:208:419::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7175:EE_|BL1PR11MB5980:EE_
X-MS-Office365-Filtering-Correlation-Id: fc9c1734-88f4-41b2-cd39-08ddc466ab21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YzZwZ1BQd0JKb0JsZS90Nm5qaGlXNmJuSFA4MGh1dTM1TFhLUTVHMEYxVHJo?=
 =?utf-8?B?VWpocjVkZHlOVzk2bmNNUEhYWkxDeFZWaW0zMWtEZUFHZEIzOEdVNVFRVkJE?=
 =?utf-8?B?bEZHUFRVYWV6aHZ5bHB3d2dHb2h3OCt4UHRjWG5VeTV0dGJyZVh2b1lJVWUy?=
 =?utf-8?B?eVZ4cHdRU1F5OE1ycDczOGpVTTNmcHEyczcwbFZLS0w0bDhBQlZBQnBrSWlP?=
 =?utf-8?B?OTZJbUhTNCtoUG9OQUtsazBCSzJ3Q25IQmdGbnFYVHl5YkdobmtoRjdJeHBj?=
 =?utf-8?B?Nm10ckQ4MnJ4MGY3em1hSlZNUlptNkZqUnlaaVBFOUtDNEVBamEyNldNZkdZ?=
 =?utf-8?B?bXo3ZnBZTE1kcGJrNTJYMXpUSUFtTHVqeGltaVIvK3hpcjA4LzNpUWY1bkha?=
 =?utf-8?B?SStYWjJNaWtwM3FNYUtGUHNZSDgvK0tiT1BkdTNOL1M0Qng0QlErL3I2YWl0?=
 =?utf-8?B?U0FvMzRqdmdGWXNoSHlTMzlNZGhGblhRNDVUN2dkOHZJaUpweExCckhIT3ky?=
 =?utf-8?B?V2RxcDVDdlZSQ2lZbTJXdkExbXdBQWo2M044bERteHZUdE1kMmFTeWdEdkMy?=
 =?utf-8?B?L1E1MW5XSGxPQWdwd0kybWRxQmVpRzFnYVNNNlNVenZteDAwYk9Jb1FNOG9F?=
 =?utf-8?B?RmtPbkZLem85dTEzN3kya3plYTliL2VwM3Rudm83bWN4dWMrUCtkSGc0Q3RH?=
 =?utf-8?B?YjVaYlBrNXNNb08zMzRjUjJvLzlwZXF3dHZ2RkJRODJpcy9abWZKY01VUElz?=
 =?utf-8?B?cGRHcjY2WkxHa0pSN0tlcTBSVyt2UVcwQjNNam5zc0t0WDZHUW1aODE3K2Ex?=
 =?utf-8?B?ejVVb0hrSmhLdms1cDNqTG52WlNCUERTTHJOT3RnVWllQ2FYU1hIQVpPS24y?=
 =?utf-8?B?cTRhY0V2Rzh4WDZJbGNvQ0VBV0FWdi9abzl5N2wzcEhqSzlCUFhLWTllK2JZ?=
 =?utf-8?B?OXF1Z0Y1VmwzWFo4Q1puR0ZaZXNCNFNYTXg2UUxRRXVIM2MyNUo4VEF4eHFF?=
 =?utf-8?B?MUJLdFNjczY5NjRhZTFhZ2tWVFJ5MXQwQllwQWsrczNjNTV1ZHdiWTFuRXFu?=
 =?utf-8?B?NTd2WEdyTnJJcS9KZ2VlZWhRYXAvQkpqWDU3ek12ZHkvMVdteUZjRllmQWpa?=
 =?utf-8?B?d3l5RnJBVjNqa3ExRys5b1FTbDQxeXNZYW1ST3hveGlEMC9pdVJIOTNWVktE?=
 =?utf-8?B?cWZFd2ZuaVJSZU1PLzQ1UE4rb0tjejE1ZTdYS0R6V05SVGI2V2diK082dGs4?=
 =?utf-8?B?cFU3UGFJK3RhNTVzcWl4TEFGR2pqSDZyQXJ1dG1vSVBkT0NKdE5KNWZUMXZ2?=
 =?utf-8?B?Qzl0N3hBSWZ4a0NTQ1pDT05LY0x6Vi9waW9NOExwc3dmWGtzWVdSNUNoMlV3?=
 =?utf-8?B?TmJCY2RQOElqcU9LZmc5UDdNSmJMVmRuSElmRFpubGplM3U5T1dDNnNCV01M?=
 =?utf-8?B?cmM2cW9GZVFrZitla2VYRW9Gai8rL0NDTzI0bDRRdnN5RFkxZkRUT08yeUdz?=
 =?utf-8?B?c1NsV0Q0ZGNrVytqRERYcWlUQ1pRRWdRS09HZ01LaEJua0tIdFFQN01kTVk1?=
 =?utf-8?B?MU9LWk5ha1JmUkF1QXdOYUJrc0Y0dVRId0hUUXZYQ0Q2UFd1U2drYWVPU2xn?=
 =?utf-8?B?dGlRd1NkbFR0cnExc1R6UktLTFh3ZkdqR0NtWlNNa3BrM25xTG0rRFUwMUdn?=
 =?utf-8?B?MStzMkpxK2I1RStnL0R2cXVpNElsemIrZExMSFdvMUEwQjdzeHhETXhjbHI2?=
 =?utf-8?B?cUdOdXptaVVRZ0Y0bWxjQVN5U25EM0c2a0tMUEpvVmlGUXUybjVQSzg1bEdq?=
 =?utf-8?B?WnJtemVHV0pPZytCZkhJNXBqT1pvdHFmQitDZjN5WVQ3c1JXYlU4VjJhMFFM?=
 =?utf-8?B?ZUJEbzBodmpzanFYK3F1ZFRPdkZBVC8yNkVLUEpKR213NGtDZ0FNS2dLTDRp?=
 =?utf-8?Q?cxo0a5UmQwU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3kvS2ZicTEzdHVkNnlNRFFrdTcvV2JGNlZOb2VuTEFXRTJHMkJpaUE4Z1Mw?=
 =?utf-8?B?ejhSQzFBbnpYQmptdzMxMGVEV2NuZFloWkxzNW1iVWdDYUUySjJiM2VxNkR4?=
 =?utf-8?B?SHo0K010YkEyVzZDeWpnM3dSVzM1Q2tackM4MTREWlBsRVJ5WG1yUnZGSlVy?=
 =?utf-8?B?bCtiNU4xZjlpcG9HdmlybnVwOUN1VUJwMHVKb3pySDhSRE5jeFFMeEF0eERP?=
 =?utf-8?B?TFJXU0VrVFM1anVnRGxMQmdFWG9Gd1lRQ3RKbkxRTTNOQmg0NFQwTjA1Y25k?=
 =?utf-8?B?RkxlUXBMbVpyVVc2T2w5ZVpodjBPQ2tTK2ZXcjlMbzVneTV1SlhHcTdHZmFF?=
 =?utf-8?B?RjAwYnA3Qm5PR1RBdlZTOGRXT0FMd0lCVFdCbE8wa3RUQ0RlRnVmcTJCZURE?=
 =?utf-8?B?d00ySUwyYWs1MS91eFNWcWF4cmlSL1dRaFVzcGxqanZkT0owSDJGMnhYZW5N?=
 =?utf-8?B?SXBiZ2Vid3ZQL093TTQ5RXR1a0dvZ0c2eWpwcElYTW9kUU9KOXpBRWJQWTMv?=
 =?utf-8?B?dnJrVjN5SVh2aG03bDI0SDhrWUlNRkZyKzBZbDVrdnpxTFNnVDNJeXBHczRW?=
 =?utf-8?B?RkxHTituQ05wZmczZjRVdXVYWjBITHZiSUhpbUVBYUc4YnZFYTlPL1QrTDU1?=
 =?utf-8?B?RDlDVEN3VGk1MnBPc3h4djRmWGVxSGlkZjc4ZkpHdVhHWmZlODZ4QTBnUUZF?=
 =?utf-8?B?UEJMdE9uWlcvY1VUa1ptbmZaaG9YajcxcHQ2a1hnNlFxT0xrRVFORE5yaEN6?=
 =?utf-8?B?SUUzZERZeW1JejQ4aVFIRG9vVDBsM2hzZFdmY2xjVjFKa01UT1MyQkpQRGFt?=
 =?utf-8?B?SmMvbmtQbWZkcDJaMWNjSlVDKzBHL0hzMkxxN2VqOHFBMEhTak5jc0MvYjRa?=
 =?utf-8?B?MXdiOWxPa29Tb2RvbmNTVXNEcWpKTnZqdFFWR1U3blE3NXZNZXVaSCtFTUt0?=
 =?utf-8?B?ci9iM0lWSW9qN3RwVDRFVEltZE1FdXdRTkw1ZVRsU0ZIUE1wYys4RzhMcVZo?=
 =?utf-8?B?bHJkbUE2WUovZzBhaUFqKzF0WUVFdG5lSUF0cjdJMnhLU2l1aEViTlNqcnA0?=
 =?utf-8?B?WnpjdDJTT3I5TWJ5SE11ZFU4ZUZzT1lEU05Gd0V2VTgvLzRKNWhscEpWV2x5?=
 =?utf-8?B?ZlAyTVlsd3kvSk9xM09KY2QxZUppY1hjZ3ZZd2tXRHhHaUpoRXJQN2JKZDhn?=
 =?utf-8?B?NnRXYXRXeGFKN2JiRG56UG91YjhUd1dRVTlTSld0WmswNit5NGl2WmdCdHRI?=
 =?utf-8?B?US8xVzNTeHdYSVNyWlMvcjYvQlZ5TXA5ckZndllhTjJMb2FxRVdMNkxRVWRB?=
 =?utf-8?B?eEtGUDJ6Z3ltKzU4Mk1GM2hBZlNYNGNLTjZOeThSRjVEMUlXVXo1ZXB0OEFp?=
 =?utf-8?B?S0JwWWpFT1pmbmxVMFNkZGc5WnlEUDJEM1RwcW0vV1Vqa1B5YmxIeXJZaDFn?=
 =?utf-8?B?K2pTZmh1ajIvTk5iRXNIZHBzKzlHd0crd3RhcjRlMUYwK2RhY28rcmI4N0V5?=
 =?utf-8?B?OHZ2aW5VMXJscGdHWjlEOWo2aXlFR0IyV2ovYThQOEc1THdXWS9TWGpWWHFI?=
 =?utf-8?B?aGVmbXpKZzVTdzVFdmVmRkxFellRTC96UXlYazMrUzkzaFFnM1dWYlptREJa?=
 =?utf-8?B?OGpiMENRaHowazJEWDBFdjNPNWI5Yno3ZW1VTkdyVS9DN1Z2U2duMXNwNDMy?=
 =?utf-8?B?aTBESW8vbEJ3eHk4N0NFa2Z1R0F0a3p1ZnlhRGM2Q0tSUndJSk1iNW04dGpJ?=
 =?utf-8?B?Vnh6VjFrQngwU2tHUlBnK2FjemV2a1pudkUyNTR4azUwb0dOdGcwa0VMMVdk?=
 =?utf-8?B?d0NOcWY0N1BCVXRITUJ0MlQzRW9WUVdCSEFWNGRURU1MblM4SjNoY3E3OUxs?=
 =?utf-8?B?Q1NLN2wzRTlFQ1Zld3puZWUvK1Y0UElOWkd1OUVrQjE3eTEvV0pyWTRRT3oz?=
 =?utf-8?B?bmowV2pRaHFlNGZWeFo4VkZab213Wm5nbkhrVklNMklrWDZWTE5JR0RwTUps?=
 =?utf-8?B?dWp5L3BYV3VoQTY4U0xhM2Z1SFJWZVBhQlB5UGxNQVVUeWRYNHdzU3JOeDNv?=
 =?utf-8?B?dXVFQ3RORmpCUUZ2TFM1ZGpvVTIzbkt0WDMvQUFhcG85ckZFS3RDeERXcUVS?=
 =?utf-8?B?UmhSYXIyUXVWSlVFUE1MNzBmazJreDN6aTRjV0s1b2JMQm1XU0FMZllMc1N1?=
 =?utf-8?Q?/fZb5g87N6rvI4gNxme07lEqmMTrQ5eq5CD0/tWqwJKD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc9c1734-88f4-41b2-cd39-08ddc466ab21
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 12:45:39.6767 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5V+C98uWIHI7gZ3P8F536+0B/DaPuXk+v7QmCobe2n8giSLksrCWoc/oNYte2OFpHj+Z+aXS5vyxPzS0dpdGGvafL42T1LgCsxA5KQ3l3vhRq7F0Bq8hI375VTbhLoik
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5980
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

On 15-07-2025 20:55, Imre Deak wrote:
> On Tue, Jul 15, 2025 at 06:38:15PM +0530, Dibin Moolakadan Subrahmanian wrote:
>> On 15-07-2025 15:10, Imre Deak wrote:
>>> On Tue, Jul 15, 2025 at 11:22:19AM +0530, Dibin Moolakadan Subrahmanian wrote:
>>>>    It has been observed that during `xe_display_pm_suspend()` execution,
>>>>    an HPD interrupt can still be triggered, resulting in `dig_port_work`
>>>>    being scheduled. The issue arises when this work executes after
>>>>    `xe_display_pm_suspend_late()`, by which time the display is fully
>>>>    suspended.
>>>>
>>>>    This can lead to errors such as "DC state mismatch", as the dig_port
>>>>    work accesses display resources that are no longer available or
>>>>    powered.
>>>>
>>>>    To address this, introduce a new `ignore_dig_port` flag in the
>>>>    hotplug in structure. This flag is checked in the interrupt handler to
>>>>    prevent queuing of `dig_port_work` while the system is mid-suspend.
>>>>    This behavior is consistent with the existing approach of suppressing
>>>>    hotplug_work during suspend.
>>>>
>>>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>>>> ---
>>>>    .../gpu/drm/i915/display/intel_display_core.h |  3 +++
>>>>    drivers/gpu/drm/i915/display/intel_hotplug.c  | 22 ++++++++++++++++++-
>>>>    drivers/gpu/drm/i915/display/intel_hotplug.h  |  2 ++
>>>>    drivers/gpu/drm/xe/display/xe_display.c       |  4 ++++
>>>>    4 files changed, 30 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>>> index 8c226406c5cd..376682c53798 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>>> @@ -209,6 +209,9 @@ struct intel_hotplug {
>>>>    	 * cue to ignore the long HPDs and can be set / unset using debugfs.
>>>>    	 */
>>>>    	bool ignore_long_hpd;
>>>> +
>>>> +	/* Flag to ignore dig_port work , used in suspend*/
>>>> +	bool ignore_dig_port;
>>>>    };
>>>>    struct intel_vbt_data {
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>>> index 265aa97fcc75..b2891b7c3205 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>>> @@ -223,6 +223,26 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
>>>>    	return queue_work(display->wq.unordered, work);
>>>>    }
>>>> +void intel_hpd_ignore_dig_port_work(struct intel_display *display, bool value)
>>>> +{
>>>> +	if (!HAS_DISPLAY(display))
>>>> +		return;
>>>> +
>>>> +	spin_lock_irq(&display->irq.lock);
>>>> +	display->hotplug.ignore_dig_port = value;
>>>> +	spin_unlock_irq(&display->irq.lock);
>>>> +}
>>>> +
>>>> +bool intel_hpd_can_queue_dig_port(struct intel_display *display)
>>>> +{
>>>> +	if (!HAS_DISPLAY(display))
>>>> +		return FALSE;
>>>> +
>>>> +	lockdep_assert_held(&display->irq.lock);
>>>> +
>>>> +	return !display->hotplug.ignore_dig_port;
>>>> +}
>>>> +
>>>>    static void
>>>>    intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
>>>>    {
>>>> @@ -691,7 +711,7 @@ void intel_hpd_irq_handler(struct intel_display *display,
>>>>    	 * queue for otherwise the flush_work in the pageflip code will
>>>>    	 * deadlock.
>>>>    	 */
>>>> -	if (queue_dig)
>>>> +	if (queue_dig && intel_hpd_can_queue_dig_port(display))
>>>>    		queue_work(display->hotplug.dp_wq, &display->hotplug.dig_port_work);
>>>>    	if (queue_hp)
>>>>    		queue_delayed_detection_work(display,
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
>>>> index edc41c9d3d65..9dc40ec7074c 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
>>>> @@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
>>>>    void intel_hpd_enable_detection_work(struct intel_display *display);
>>>>    void intel_hpd_disable_detection_work(struct intel_display *display);
>>>>    bool intel_hpd_schedule_detection(struct intel_display *display);
>>>> +void intel_hpd_ignore_dig_port_work(struct intel_display *display, bool value);
>>>> +bool intel_hpd_can_queue_dig_port(struct intel_display *display);
>>>>    #endif /* __INTEL_HOTPLUG_H__ */
>>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>>>> index e2e0771cf274..2db71bd07c9f 100644
>>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>>>> @@ -342,6 +342,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>>>>    	intel_hpd_cancel_work(display);
>>>> +	intel_hpd_ignore_dig_port_work(display, 1);
>>>> +
>>> The actual problem is that HPD IRQs are disabled too late in xe, this
>>> should happen already before intel_hpd_cancel_work() is called.
>> You're right — the HPD IRQs appear to be disabled only later via xe_irq_suspend(xe),
>> which is not early enough to prevent unwanted behavior during suspend.
>>
>> But unlike the HPD IRQ enable path, which uses function pointers from
>> struct intel_hotplug_funcs, there doesn't appear to be a hook to disable IRQs early.
>>
>> The proposed approach mirrors how we're already handling hotplug_work,
>> which is gated by the detection_work_enabled flag. This flag is cleared during suspend
>> by intel_display_driver_disable_user_access().
> The work should not run after intel_hpd_cancel_work() returns. To ensure
> that it's the IRQs scheduling the work which should be disabled, before
> intel_hpd_cancel_work() is called. For now, calling intel_hpd_block() on
> all the encoders would be enough for that. intel_hpd_cancel_work() will
> see then blocked IRQs, so the WARN about that should be removed from it.

Thanks for the suggestion , I will modify the patch accordingly.

>> Regards,
>> Dibin
>>
>>>>    	if (has_display(xe)) {
>>>>    		intel_display_driver_suspend_access(display);
>>>>    		intel_encoder_suspend_all(display);
>>>> @@ -469,6 +471,8 @@ void xe_display_pm_resume(struct xe_device *xe)
>>>>    	if (has_display(xe))
>>>>    		intel_display_driver_resume_access(display);
>>>> +	intel_hpd_ignore_dig_port_work(display, 0);
>>>> +
>>>>    	intel_hpd_init(display);
>>>>    	if (has_display(xe)) {
>>>> -- 
>>>> 2.43.0
>>>>

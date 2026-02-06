Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDbWAo6mhWljEgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 09:30:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C7AFB82E
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 09:30:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595C710E59C;
	Fri,  6 Feb 2026 08:30:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CD8SX3yf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C89C910E566;
 Fri,  6 Feb 2026 08:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770366602; x=1801902602;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/UnKkkzeqp2vLr6ruA44/tvJJDaqEM/E0RsgXLQZYlM=;
 b=CD8SX3yf4rtlv3XklHTuLQJu4h5vC6fb8fclqoqQ31Ws0pMzOre/Aslg
 jAjze6ow8kTiPDKgu46ORUCk5z59EEyrmAMdkDemS447lciLokBwre6oJ
 0W8i4Uk8M4UHlYaKGMALY/038BwygRA5yQysf/x+OzGoUMMnXOS3oITSQ
 QXZdEumXG/5fDqK0fM+NZsIJ626WpLG/YYtgUSD8HTDC1xIrEhUeDCq1G
 LJm1maArZsOUxoJYwqdKFqQhxoHhEGZtTwg3HISQzZY18Gy1t7txlzpLq
 itaTczYqR3oIQfzXbJnors2/ISnzl4vHUxfxTUWlDMxAQ6z2d5ZbTmtg5 A==;
X-CSE-ConnectionGUID: v32fmbk8TdmaKoZfjBdCdg==
X-CSE-MsgGUID: qTQ/QU0iTB+SZQ5firZ66w==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="88996379"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="88996379"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:30:02 -0800
X-CSE-ConnectionGUID: dvSRpnr9TSmX008b8NBSdA==
X-CSE-MsgGUID: lUuLK+LETRqtZL+b2i8ouw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210714590"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:30:01 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:30:00 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 00:30:00 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:30:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TtxTRSWPobg7DCnFllFs8dMu+vKJn42pC8WvyxWLB2xpJQwvyk7MNynReCpQOGXb5rFgkCw0CRgLM4hMIlcRwlxTJ2nnqkr0FktEXq5Zr/iRdzrNuJv/fRfQYH5ooj+n0WUn7ifg0fUo1HQYiO3k5P2/KKV+qbSjZQf3pfXP4zgByRFAbraMrpipgwa17qcBcasT49O9fvSRPcx4eRMWLQ4qhUb0ru0Du+rxEyJWqjNmopxjBA1b3sR/13PszR3R9ul8OiKTRkLUeWDPckVN4K5AU/WS3iztXrXrdvOFdhZVwTl1bO2P8VFLSNWnPfBqbHfVj82Q74V2Gj0CzYUMaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NaAXloXIfwiACFGz69rvbLN96PrkWsFgw3GZef4J+rc=;
 b=ZPF9hlfdwFuvd4lJq59OyfaClRd/mDCb8n5sELHv6xVBPrRJdCrVsWRzxqUIlewY+aOn2o0GDBG18CuyhPKmlN6SSQJdKaZbGhb/7xEy8DvEHleESplDnZvMXEelqLU3190ewh7VRKPGyuHvdNQT5qSaSlgOONOoK69KXBxyUz4B0XWQ4oDUZikq9SedD5YP75U1O/WlJv9H1nnZ/yevxzEcy8y3RQg5PvQRynrJzJgprU8SpScMBk4QL9Guoa7ddbLrsoFGDTQPeaWpeuykudVj2Og2iUjvgXmm6zFfYPu5aqPjLBOCOFizEpb+eWsRKYXHpGqASb1GnjQVLjaAaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by DM4PR11MB6044.namprd11.prod.outlook.com (2603:10b6:8:63::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.15; Fri, 6 Feb 2026 08:29:58 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%5]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 08:29:58 +0000
Message-ID: <d1f5572f-9f66-4b12-b18a-c0b6c2c62ded@intel.com>
Date: Fri, 6 Feb 2026 13:59:50 +0530
User-Agent: Mozilla Thunderbird
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH 05/16] drm/xe/xe3p_lpg: Add MCR steering
To: Gustavo Sousa <gustavo.sousa@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-5-653e4ff105dc@intel.com>
 <IA1PR11MB6266F2346F428242E7F37C50E29BA@IA1PR11MB6266.namprd11.prod.outlook.com>
 <87ikcd73g4.fsf@intel.com>
Content-Language: en-US
In-Reply-To: <87ikcd73g4.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0235.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::13) To IA1PR11MB6266.namprd11.prod.outlook.com
 (2603:10b6:208:3e6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB6266:EE_|DM4PR11MB6044:EE_
X-MS-Office365-Filtering-Correlation-Id: 5864d75f-598b-47d3-9aae-08de6559e9da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SEI4Q3FvNFVZcnk5ZUZyWjNKTHBMbUhOTVhqSXl6UktVanV2TEtXWGdRUHRl?=
 =?utf-8?B?allPanRFWjhndWplSm1lb1BxRGxRaDNSOW5TZjViQVI3VGMwRjNDenRqQkJW?=
 =?utf-8?B?V204bzFIeTZtZGFZdnBJV2l4M2xwNDg5VzNncXhGSTBrd2NUSEpvd0Nmd1By?=
 =?utf-8?B?b3V1a2NyeEhLek1mbUt3d2ovTlpRZFdTY0NsY21kUk1iK0lLa3V4aWpRWmJB?=
 =?utf-8?B?Q1I1cElZQWd3d1ZzRHRJSG9WdnZ2VG1JQUlHZ1gvcE80azhrdXduSmF6Y0Q2?=
 =?utf-8?B?cFM0Y2V5RzB4UHpDOFJocEQ3a1dOcmdja0RwekYreUUyL1dTSlFWVHlxRyt2?=
 =?utf-8?B?Y3RyVFcxMDJGemEzOTk4MHFZVnh2akN1bnUwU1VOZGhWRG1OSEI3dmNyaFg5?=
 =?utf-8?B?YzdyOWFudHBNZkxYMVlraUM4UmhoaWlqNldQZTRSTVFGdTlEVC83VjJzajFu?=
 =?utf-8?B?UzYxcEVtSnlBMk1sY1BmSThScWJiN1BFejVuTUQwQ3dLUHVGNEdSQlUwT3Nl?=
 =?utf-8?B?UUsxVWtIM2JkY0RLOHNSMXkwbUNHNURJQVpNcStPQ3kyc3ZFK3ZROTBCRDJ3?=
 =?utf-8?B?akd5OXNueThod0pCeHR4SkVQT3JyZ0VLN3pZT1crYmpROG5tSVBpNHRpS0VK?=
 =?utf-8?B?WTVzU2FSUERqRDlhdXpKa3lzMlE1eHBidUpiYXdFdk9yYXdHM253NlNyaXBV?=
 =?utf-8?B?S2tvbGZXSkNWbUlnYUJVYWxwQzdwWW1sQ1k0R1RtNWsyLzl4dERRdWNVUzA1?=
 =?utf-8?B?VzZaQURSUWlmSUVRUW9BNmJTL3NLUjNucWx6YXprRTkvUWZ2a01HaTV2YmlY?=
 =?utf-8?B?NzQrWWFGcHZ6aTFpWDNldlM4WFVKR2hzQmgvekRLWkRjRmthN2lxMHBBQ1Fv?=
 =?utf-8?B?S0tBOHlZTHFKalo1YW9ETzlKU1lic2dSQVlWcVkzbkMxMCs5QWhUaitUVmtm?=
 =?utf-8?B?OTVHSE8wQnFPbTRjRzhIMG1TbjZRazdiclR1TUlxTWlZcXhYcFcxczZFUmor?=
 =?utf-8?B?bFpsSlRXL3BzaFh6YjBoOS9RZDFXWTFCdGxzOURiU1lhOXhFOVRKWDJmWlFp?=
 =?utf-8?B?em0rVWtOSmxBQlQ1MWpJNnpJaThhY0pYOXBRa1RGN21zckpHQXNEZnlNaDFh?=
 =?utf-8?B?ekI3TU1yNG52WTRqYUpHaEpoVE00eERQcHFJSENaZXFnMGQrRVlkUWgvUUxK?=
 =?utf-8?B?dnZMdDNRR1o1eDhPNlFyRHBEcWVkd0F0ZWFxOUVIYXFUbDJMQXFQY0I3U2pZ?=
 =?utf-8?B?bjcrbGE2aEluR200WnpOOXA5V0psd3VZLytFU2wvNGZVczJtZ214SWRoRzVO?=
 =?utf-8?B?S0c1Vmp6MjJrYUMvd0JjUFVwTm5GNjBkMDRNVW05ZEcyM1gxNVpOb0RXdDdF?=
 =?utf-8?B?SEhieTEzczkyMWEvYkIzMjRxYVhZODYrTkFkN0FHc3d4RGNiblM2dTQvYWU0?=
 =?utf-8?B?dXVoeHc5MlF6d0YvS1Z4ZWloNkJwMXFxSVQrL0RxWVBrTU52RmpvMXJxNVE1?=
 =?utf-8?B?QlVtNkpISHMrbnczQ3BwTHpoeXA4akg2YWRMaGNqeFhyclIyeCsyMTJlTUlx?=
 =?utf-8?B?NkFvQXI0Nmg1b2cwUUFOYllyVzJSclFZeVdhWkI2ZVVZRzBxYmtoS2k1N3dI?=
 =?utf-8?B?Z0hPdi8wdW9kQmtsT3Q5ZlZhV3Fmellab3dFOWpGMVZ1VWF3RjkzOEVkQlBa?=
 =?utf-8?B?dDd1Q2czSjJKY0hoc3RwOVJ0TlA2NzJ0RjFJS2JVS0pDOStuelNIQ2ZsOHc1?=
 =?utf-8?B?Z2tvWkYyZlA3VThiZ3JUVlRDTDhvaktCeTdpYzJnNlB5VnJJRzVwTlMzc0li?=
 =?utf-8?B?SHFkMS9EZ0N3Ri9NbC80cmVJZXZKNjI5OGJYWU9WM2ZSekd1U3g5cDBITTJz?=
 =?utf-8?B?UXBzajFHT0tYaloxQXZhbk9POVRoanRDZDNSUVVPZlcrTlFCMWhrYUhmQ1RB?=
 =?utf-8?B?QUxRcUg5NzJCcmQ4TEk2L1h3aHZ5ODZHcitaajRFc1JLdGdwbmtRU1owYTdW?=
 =?utf-8?B?WURrRWdZTjRlTEJZcTFRelhZMCtGNkw2MUIyR0cwd1hIVUhhb1lVL3ZFa3ZJ?=
 =?utf-8?B?NVRPcmxMbkc4R3BESVR6ZE9NVHhHZzh2ZG8yMHZWdFZvOE5Tek1NQ1FlOTEy?=
 =?utf-8?Q?uFVA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXg2RWM2ZVpLRG9LYzI4cEI1YzZkK0kzVmRQb1VVblVyTmVlQnJ5SWoxclV0?=
 =?utf-8?B?Q3I1QVBxMzk0Znc0d2Fkc1BxU0QyczRHaDhselljRk5uZjlGMzNBN09PTWh5?=
 =?utf-8?B?djhHYjV6THYvRGtkMFAvbU9yK1dreHE0VElISEcwcDNzTEVIdEpUSHU5U3NC?=
 =?utf-8?B?R2gwUFpFSEt3NEQvejFCRzNWS2VMZW5abXd5aGoycmVqUGxNd2pFWXE3Tkp3?=
 =?utf-8?B?L2R0eWsyK2FBWlN0aUFZcndwMlNuK3NSdFlrMThoRjllUUQxRHhLeW1kekhl?=
 =?utf-8?B?VUNzQkJuV0hvUlB2ODZIdjRwVVlmK3QwVzhEdy9jSmhzQnp4Tk5jejdTd0ZV?=
 =?utf-8?B?dzhieXZjQW9YMlNhT3Rwa0trR2pUQzEwazM3bjhmVXpZa3QyWWcrSmFodWhX?=
 =?utf-8?B?Umt1TXNDdGFKYmp0RWpSc3QwOEx4SWMybDRDTXR5L293TzNYVDlvSmF2ZEhU?=
 =?utf-8?B?TU02dlJDS2NNZjRiL1c5clpKSCsxSURhWDNLZzdObkxTZEZlMWx5SFl1cDJ4?=
 =?utf-8?B?bDR6YlRnYnV3djZkR0xlNWRHYnZQZDdQNWp3cUlGODNNU0VyS3BEMTZadE1H?=
 =?utf-8?B?ZjFOZUlHQ1NtcWlPSzFrM3Z0aW4xNzM5azNQQkNEQXVHQngwOTY0QkNhU2ww?=
 =?utf-8?B?bzFWMmF6N1VtZ2UvU0ozcDJIVjNHazBrMTF2VEFOdlBmbUx0TGVMclRTdmk3?=
 =?utf-8?B?YU9CaVdFWVBJeW42SGRuZTcrWVFTVUNoeDBadW8zRWc3NWhuaHNWendLVFFh?=
 =?utf-8?B?V0ZJaHJqYUxoYlBVUzBSemlMZzBJM1V1ZW84b1dBbGlIL003ZDlJcXp0ZDZW?=
 =?utf-8?B?eDFsYUtYMTRreG8yeFdRVkhrNklJdzZKSDd3M1hwYy9oV1BFSis3bUk0cmdx?=
 =?utf-8?B?aUk1bDFjc2xYblcyRXk0N1pqMEVtYm9MWDFJNzFzeGJtYnBsLzRHSmMyL2xH?=
 =?utf-8?B?cjR5SjZoY3lXRUcva2VHZTgvSURXNTVsU25VUG16bVJlMlpyZFlmbVhIR3NV?=
 =?utf-8?B?UXprZmZBTEJOeUp3TlJjNldsdTcyWWtqZjd0cGtmUmZHSFBpNDM5TGJtY0VH?=
 =?utf-8?B?SE93azlUaU1lRmh6T2psTEpuSlJvd2xNd3VZTGJpeGpJdFdyRitWdlloRXNG?=
 =?utf-8?B?eXhUYnNiSk92ajBYZEFFSGJNbjJUNE9Temo3WXJZY0hER0xQUVI3WlBnOUg4?=
 =?utf-8?B?cWtJeGV4cGViTkhob1F2L0htUVdxUyttOHB3Q3FINmFmc0ZMcHpBWWh0NndQ?=
 =?utf-8?B?VFJzbk1VU3dnNEpLbmdHUjIyK3ZoZ2hvVXk4MkVvMndZaHN5bTF1eThML1ZM?=
 =?utf-8?B?alprb2V6UWxPdVgxTWFBZk9vYk9DQjRmTzhFaDE1UGpjc0xuNTc4QjJyUGtS?=
 =?utf-8?B?V0o5ekRXcVk3UkFIMFlPdzBYTDR0bjJSbnlIRlJxVDlFNldaVjczN3pzTGRR?=
 =?utf-8?B?cDF5OWFIOXBScDM5Q1g1NG5EWWprRnYxZTJEcEpEVkMxM2p2eTUrUVhxKzVm?=
 =?utf-8?B?RjR1RzhTZDdCWjdrWXBtNkR5UGVtWVpIcXVuYmFUMXY5M1VNNkdhV2FZa0I1?=
 =?utf-8?B?NTJrZE5lZW9yZ2I1algycXNVQlNaS0NVdXlZSXQ4a2cvbG15bURkekk3ZkRv?=
 =?utf-8?B?QkZUdDE3aWVlLytNeENqczFvY2NCd1ZNV0VITmZzZFk1VDBwcFB4cjJjYnlj?=
 =?utf-8?B?bk43dzMvWFVrZExoeFBMOStyenhIOUM5UnRmcVNtRmhsRkhtckpqSTNzd2lr?=
 =?utf-8?B?eTh1ZDcwSDI3SEVFVGVMNGY1Q09BZXJGTXJ6RXFsSG95S0ZYdndKQ3FMSGwz?=
 =?utf-8?B?RzgzT01oNTRrZ0VrMmJvQjJDd2JHc3FjTVBUMEFoaTR1US94TXh5QnpEcjk4?=
 =?utf-8?B?UlJRTW43Zm83QWFyVmdZS1JqT0ZYQU5OdzlTb0lYOFh6RFBuNUo4NTNRRElh?=
 =?utf-8?B?UHFWc3ZBNkJ0ckJKd2ZEakwrcnhXSm5MUlFwVWlnMzZxK0pRVzdJd1l1dzZJ?=
 =?utf-8?B?aG9PbEo0ZkMyR2pHV0c4aUMxWVRCQkxWTndvQ2NvTXRKbkhUa3FtMHY2TjVE?=
 =?utf-8?B?N2lXQTJXYTRWMGJ5OHRXSDcxQVJkTS9GNHF4ck1hNnBaWnNGUEF5ZUZwZDdp?=
 =?utf-8?B?c2pZKzVodStOUEh2VTBhY2tyejRRU2RsOSttck1vRlcyVjhDYjM1dW9hRnJD?=
 =?utf-8?B?ODJsRWpaSnFCN3E0U3l2Y3B4YWQzcnN2elZWZVBiRFdwLzlJNXVuZDBBdW0z?=
 =?utf-8?B?OEh1RFRFV2t6Qm9jazZHejJWc3dSUVgxcHRiL2JqR1dHazNsd2l2QVA1aE9q?=
 =?utf-8?B?VHFBdFNienBxNlhldGtPYnE2bEpPZGllN00xRWxZNExwWG5kZXkwNXpQcDR6?=
 =?utf-8?Q?/87Ti3ZdLFNwGln8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5864d75f-598b-47d3-9aae-08de6559e9da
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 08:29:58.6803 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MtvHXhxArYatS8CQhRlY+8dmyAijBphIzEt6c+Ep8cimzj/R2vMxQp/2N1MSvHt1DV2jKKYssXsoQ78/Zo5VcAS2TlnDlzRAbncpsvYLPJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6044
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dnyaneshwar.bhadane@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 55C7AFB82E
X-Rspamd-Action: no action



On 04-Feb-26 6:03 AM, Gustavo Sousa wrote:
> "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com> writes:
> 
>>> -----Original Message-----
>>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Gustavo
>>> Sousa
>>> Sent: Tuesday, February 3, 2026 3:13 AM
>>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>>> Cc: Sousa, Gustavo <gustavo.sousa@intel.com>; Roper, Matthew D
>>> <matthew.d.roper@intel.com>
>>> Subject: [PATCH 05/16] drm/xe/xe3p_lpg: Add MCR steering
>>>
>>> From: Matt Roper <matthew.d.roper@intel.com>
>>>
>>> Xe3p_LPG has nearly identical steering to Xe2 and Xe3.  The only DSS/XeCore
>>> change from those IPs is an additional range from 0xDE00-0xDE7F that was
>>> previously reserved, so we can simply grow one of the existing ranges in the Xe2
>>> table to include it.  Similarly, the "instance0" table is also almost identical, but
>>> gains one additional PSMI range and requires a separate table.
>>>
>>> Bspec: 75242
>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>   drivers/gpu/drm/xe/xe_gt_mcr.c | 18 +++++++++++++++++-
>>>   1 file changed, 17 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/xe/xe_gt_mcr.c b/drivers/gpu/drm/xe/xe_gt_mcr.c
>>> index 7c1fe9ac120d..b112e551fc79 100644
>>> --- a/drivers/gpu/drm/xe/xe_gt_mcr.c
>>> +++ b/drivers/gpu/drm/xe/xe_gt_mcr.c
>>> @@ -201,7 +201,7 @@ static const struct xe_mmio_range
>>> xe2lpg_dss_steering_table[] = {
>>>   	{ 0x009680, 0x0096FF },         /* DSS */
>>>   	{ 0x00D800, 0x00D87F },         /* SLICE */
>>>   	{ 0x00DC00, 0x00DCFF },         /* SLICE */
>>> -	{ 0x00DE80, 0x00E8FF },         /* DSS (0xE000-0xE0FF reserved) */
>>> +	{ 0x00DE00, 0x00E8FF },         /* DSS (0xE000-0xE0FF reserved) */
>>>   	{ 0x00E980, 0x00E9FF },         /* SLICE */
>>>   	{ 0x013000, 0x0133FF },         /* DSS (0x13000-0x131FF), SLICE (0x13200-
>>> 0x133FF) */
>>>   	{},
>>> @@ -280,6 +280,19 @@ static const struct xe_mmio_range
>>> xe3p_xpc_instance0_steering_table[] = {
>>>   	{},
>>>   };
>>>
>>> +static const struct xe_mmio_range xe3p_lpg_instance0_steering_table[] = {
>>> +	{ 0x004000, 0x004AFF },         /* GAM, rsvd, GAMWKR */
>>> +	{ 0x008700, 0x00887F },         /* NODE */
>>> +	{ 0x00B000, 0x00B3FF },         /* NODE, L3BANK */
>>> +	{ 0x00B500, 0x00B6FF },		/* PSMI */
>> Hi,
>> Could we extend the range till 0x00BEFF ?
>>> +	{ 0x00C800, 0x00CFFF },         /* GAM */
>>> +	{ 0x00D880, 0x00D8FF },         /* NODE */
>>> +	{ 0x00DD00, 0x00DDFF },         /* MEMPIPE */
>> Same as we did here extend till reserved.
> 
> We usually only include a reserved range if the range is preceeded and
> followed by MCR ranges of the same steering group.
Yes, But there's a bit of confusion here. We are extending 0x00DDFF for 
MEMPIPE, but we are not extending the PSMI group to 0x00BEFF?

BR,
Dnyaneshwar
> 
> This doesn't seem to be the case here.


> 
> --
> Gustavo Sousa


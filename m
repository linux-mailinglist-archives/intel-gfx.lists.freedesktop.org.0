Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 068B89E4D19
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 05:49:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B6D10E021;
	Thu,  5 Dec 2024 04:49:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hUZU7iqY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA11210E021;
 Thu,  5 Dec 2024 04:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733374182; x=1764910182;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8sut9+xAtktlr8SdVqvizMhWE9EEoZMDCzOly4lJX98=;
 b=hUZU7iqYm4pxqLQhBHMehdn66+/MF7qWWtRGDnXpsvfK3DmX3UAOgdgn
 1X9Snfxw48mbiOzMRcKMQIQk88oITpHlLUmJgEOEmdTQB0qGb1GbV+GkN
 jgRhFE9uTXE/crAHN91NJQOrAf4U8/MbSzYPxhks8KPCdjchPXv1fMXZP
 nyKnG1euecvpfvssUpIXOJDb4tXqII2LuckS+TDpvTaZQi5vdqcUs0DQI
 32ogEwPf25yzUoIckQbg2mV1LzfKAjsX+P84okh89oLLlcmJ/hv4Ngazb
 jT78PKGol/3SDBZCv+DbdSWjyXImTFM1G0IucRNONOMH8v8UTFr/j8I6j g==;
X-CSE-ConnectionGUID: qNzxiEXFRLCpy8uN0hYObg==
X-CSE-MsgGUID: 0wGC/s4oT+aDwje+OaxWig==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="51205625"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="51205625"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 20:49:41 -0800
X-CSE-ConnectionGUID: Eph52jjdTsWol2b6NIoMOA==
X-CSE-MsgGUID: zMLnIoe0R5eE2aZ5DzimmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="124897002"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 20:49:42 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 20:49:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 20:49:41 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 20:49:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fLBtHIDXWdh1qSu/PvxwOvvtNSLQSpOrbNwHn2DIS/KVm3BhOx4aYZbbUjypJkYvfDDJxQ9yLsOzn02lGs9fza4ZpWpi3lih088KU2LJBdIIfnR59u2yEnn9ANyLYUfIV7NmBTg2eWZ8iBn7TmvKjgIu9XHL8zQuflizOIfj+6XlAnSHjO1kmbsEnamZSDbUSbuGlBFiQVjF4c7qWOIqMJJkATcytzKlmAo4zrTJRUyrQoIJYJuykHMWmW6ABNplWXuS1OMGw1PoiQuFLmcwLusHJiuA+oclmnGnQlhWdr9Oc3MMmUjktoIRb4qyYxDQuYaEnpQmiEYgB0lD0gumyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S9eYbqyqoLtxUz6hp6F77PgrwL/ntY7edHP6zLZpx+0=;
 b=ivWMgisrW3zs/xINBHt+5CWuloL+68Mrc9qT8wi+qhSM2eL3NMLvUTnV80trMj06W2A2+iVFDEQgt0cbHLkjyWTEOWuwT6oomOvWSf3SQ2JMYqMtYcsiumjZSLSIkceBKyEm5Zk2HDpUpzs8/oSV+31jZnV4AxTErhthUqIutW5GPVv0RcNfuxhNBBu5cTH9JnYroYzeFr2ul5bZfmn+Wlj+1WBJJ+DU4BsQnkuoB7urVOjZPxja0NGe9Saw6RR0JF5SMNvsyMksE+PKU7ktTbo3qI7nX4UUDVpwHvGi6cvbC/Z/nQefCsGbq1aCCeAyT9yd62LqQzNhZd9i4m6a9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4588.namprd11.prod.outlook.com (2603:10b6:303:54::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Thu, 5 Dec
 2024 04:49:38 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 04:49:38 +0000
Message-ID: <0d150b3f-b43e-4113-b52a-1e0e984f558b@intel.com>
Date: Thu, 5 Dec 2024 10:19:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/6] drm/i915/vrr: Compute vrr.vsync_{start, end}
 during full modeset
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <jani.nikula@intel.com>
References: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241202024540.2578856-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241202024540.2578856-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0110.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4588:EE_
X-MS-Office365-Filtering-Correlation-Id: bbbc3c57-4507-4321-6fc0-08dd14e83969
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZzB2N2JodHlObGVrU2pZZUtkRk5XRFlHclBzSTloQTVmdHYrZGpwNDIxNXVQ?=
 =?utf-8?B?RW1rb3dWR25PNFg0bkV3QUlkUDQ3VzR4UFhtcVNJYkNUQVdrVFRaU280ZEc5?=
 =?utf-8?B?Znk1ZUVVZy95QUU0VStaNE9pNERxZ2o4NC8vbzRCaTV1ditNNlB2N1hNazZW?=
 =?utf-8?B?SWNnM0pMNDJSa0I3dTRRVW8zQTNuMlBhQzRnMzU5dGZ6d3J6cG42a3ZYQzV0?=
 =?utf-8?B?eGlscm11ZjJpRm50YVdGeGQ1eFI2c0R3dWYwQlpuY2FXak1TdmUzeU55b3Qx?=
 =?utf-8?B?cmkvTjVEUmhZUXpmU25OMUFOUFFzT0xKRXdxaXpWVTMvQVF6YSsrbkZLekZh?=
 =?utf-8?B?dW5sTTZFZUhDZ2ZpbzA5QkMwRVlMbkZ6UkFLTE9qTGkxS1lZellZLzFGUzg0?=
 =?utf-8?B?Wmt4NlpMNDArYmVQMGF1aVJZbi9YYXdPUnEvYWZjZm5RZk9rYlhsa0NkY04x?=
 =?utf-8?B?MlBhWHBXNHlLWDZZU0dIWWVKME8yclhySHBlZDN3VnFGU3Jjdk9RTXpPSjZ2?=
 =?utf-8?B?SG5uRUpOV1M4ejJuSGJNdThVZnN1eVU0Y3lIbWFURTNBTVJ4ZlNFc3EwWThV?=
 =?utf-8?B?WFZQdnlidmRDRGxzU04xNVovTzFMUXVuZjFBc21ObkFxd2cwTmJscWoxcU1m?=
 =?utf-8?B?TUNuSjJuNWRnY0J0YlRJZVFML2pXMU9jNWJORmRMVVFzd0lrMUVHRnBYVXBx?=
 =?utf-8?B?QVljVFVrVlRkdnY3Q3dYUzlvZnU0K3IrWEVESkJkTWhlcitTcy91bEZmTUxv?=
 =?utf-8?B?cDNha2FMWHFRa0c4NjlxeE9FY3hEczNOR1Bta1NIZHV2OHlLdURPRlZuWDFT?=
 =?utf-8?B?TEJCdjc0WFlaZXI5SEgzM1V2SzFucGc3cHQzeVZHUnlUaktDTGlna1JybDd6?=
 =?utf-8?B?UHJrZTc4VklqdEhOeUNlTWh2NHVhWDFPdHRMbDFFOHoxOWVDbGlhVmwzOFVO?=
 =?utf-8?B?YXR4d3gxdk1aMm5kdXpSM0FoNHliNFVkbTNGeDZwbFpmNC8yMHZQSFZYT3pU?=
 =?utf-8?B?QktEbzQ3R3A1bm9oQ0VlNHVmcjBhc2FIZGZLMDEzZkJoc3E5UEhJMXZJVGNG?=
 =?utf-8?B?b01kTERvSTJZNHM3MkMzb3Z2ZWpDQ1hSQitVcmRGVlpZN0RrT1B0eXlRaWNt?=
 =?utf-8?B?Y2Vka0pNOFg1YkVBVU9SaUJ2bEpKVkRwN1NwbDZUZlY1Y2xJTjlNWmFlWEd4?=
 =?utf-8?B?YVpSN1grTDJZSnVYTWNjN2o4cGwxdlBZR1dwcWsrOFluQVdEUFVtSTJ1ZTd0?=
 =?utf-8?B?SkR3MVo3dDlwUFlIY3BQLy8rQm1MdlpDRmtOdlVZOEZYN200aDczQnVTUk5m?=
 =?utf-8?B?UkM5Nm9lWG10aXl6RDFYY2k2UjVEU3B0WmJCVkVyUU0xeDliaFlWc1dQamoz?=
 =?utf-8?B?MFRuaEMyNkZjMW9JY0VLZ05jQnYxdkthU1YzYWZVSENaQUZETkx4TGZWNDBW?=
 =?utf-8?B?UlgrMTEyYWdEWHRia05wTnFOVDg3MjlqUXFGbHZLSU9WSFkvRUhwdEJpM01B?=
 =?utf-8?B?WkRQR2tQYjNBWlBkU0w1OU96N1EvWUhKazJsUDBqQTJwQlZwWlFydEc4dHJC?=
 =?utf-8?B?MThHWm8yTkp4Kys1WXU3QktRaUNjYkdTVWFzczF1d2Q1N3hIVk9mYWxYQ2Zi?=
 =?utf-8?B?a0lKaFFnSXM2RnFZeUJkdUNVcW9wdTUxbEdvZ3V0MFZ3alhjdGVXak82YlYv?=
 =?utf-8?B?NnpGaFRwMTE4SVdaUzVKdklwMHFQaEoyUlcyZlNuaUp0YVQzdEZnSmJOMXZU?=
 =?utf-8?B?WEt2bm1wK3owL1BWMVNPWXBqbXdwRXFLN2pnemUvc21vQ3VwSzkxNHEzYXEr?=
 =?utf-8?B?QVZ3dWxqZEVzZThQdm03dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bENXOFltZUtubnRsRVd5dGVwblN4SFEvUXppLzZ3Y1lBSWV2NTJhZXpUQThK?=
 =?utf-8?B?cFo0V0RlakpDV3NYU01iMFR6TkFLS1BtS2JDZlRWV29OWHU3ZythcCtrblBK?=
 =?utf-8?B?YmdZbk5LdWU0SmIvWjhiVUhTMlBoT0ZRdVFlWHVVT3J0YWR0Qm5RZlU4TTRB?=
 =?utf-8?B?VjhLY0FiOXQwM2JNK3hMS0pTMkZQOHhYM01kT01tVUg4bVFmc0h2dndQVS80?=
 =?utf-8?B?dDUweDBLS0p5cEVuSWs0ZUUxYkxLdFQzeSs4OWxOTGlCNjYxYTNCUlNSRS9i?=
 =?utf-8?B?elg2VTZPWnhXYm1kY3ozWStEeHQwT1h1d1VUNW1vbm5mYisvVEd0ckl1eW5L?=
 =?utf-8?B?cm1xVFQyLzdra3BPV0RKVlI0V005emN4YjBoZmNid1RVQWEwZjNXNUYvWTF5?=
 =?utf-8?B?OTdwRTVpU2ZSemdseTBYajdMSnFLTVh2LzBTNmtsamk2SDZsTTJNWTBmdkJ4?=
 =?utf-8?B?d1FGT3NXNXdwMzRwUjhGbi9oUTMxa1ZyV2VTVkw3VXpTZlFieldKa2N5cXlr?=
 =?utf-8?B?cmVYcEZYaDJhTFkxVTVucE9JMk1wWTdVU2ZyMTdKNTNMdjk3a1lLNFRuWkZD?=
 =?utf-8?B?TG9jVmJ1R3dJbGEzMzc4MTZVZHc4WVo0cWkwOVJudkUwWmxwVEFDbjFuODBn?=
 =?utf-8?B?eXp5cnVUQ0plaHE0T3V2UmtnSXdISFZHL1JRQ1RTTllkbTJmQlc3ck1oMnF2?=
 =?utf-8?B?K0ZybXU3QlBtRkFkemVXVmV6NGwrUmROdVhTbWNhdEs5T2lhaU4yRkVUSUF6?=
 =?utf-8?B?MTZhYzRXcXdYTHBaZGZwWktLc3dabjgxNlJLMy9PK1VidzhYcTlsK2ZsY3ZI?=
 =?utf-8?B?SmYzUWt3MmUzZG5Gd25La09aU3J5TVE4RzlRTTBnem0xYzAzUGZET0czTUZS?=
 =?utf-8?B?L3hUc3ozWGdWMkpWbVJZSEFobXhqZmtWWCtpaVJGU2VlVEJlZmtIU0JXV2hN?=
 =?utf-8?B?ZmtYTGNWRElWYURrUXJ0aEFoeGo5RXpwUTVxWTg1Z28xeE1qUVZRNTBJQ2pp?=
 =?utf-8?B?UC9PVldNSFFJVmpTTzNVQURSUlZYVFZNQ2dDSDJjVlUzV01CUmVoUHp2eElH?=
 =?utf-8?B?blFGWkJBSTA0d0hmbE5tbEdZUVVlOXJFNG44ZmdoNTgzOE1LNzMwNERONWxt?=
 =?utf-8?B?U252TEpiVDBjUVpVMkNucHFSdUtPWlcwS2k2SjFja0xGa25yYm4zSWF4a2Q0?=
 =?utf-8?B?TDlDL3ZHeG1qRmpvMlhzNFRsVDl2WEVqVWNxd1BpeERZYnlzRUlNSlByMUZ0?=
 =?utf-8?B?UitEWU9VMUM1aXczc3hkTmg0OGp2OEVBV3U0a1FJQlpWY0N2QjJia1Y5L0E2?=
 =?utf-8?B?Tml3Nk5FSVN1Z01QVHN6ZEZYQkhrMWdZNnFFZmUxTTJvc1dqT1M0bjhJNm9W?=
 =?utf-8?B?SmRXOGFtaEtxaW1UYUo4ZURQdWhBbmYwWkFEb2dNVW1jaUFkK1JNK1h1ekV4?=
 =?utf-8?B?MXV2TjErR1dzZTdTQ3hDWmdjL2Ztb1EyVWU4b212bW5Mc0ZvZkVEc2xMbVZo?=
 =?utf-8?B?UTNUK1FXZldCRkZodFVKOXdmUHFTRTFMclc1VDdERDVGNzMrZXJubGJUS0du?=
 =?utf-8?B?NDA0SzU4Mm43TGhtTWlZQ1FsT0taMTkrcmF4UGxxMzNVaGZCeTdoUGdOeGFs?=
 =?utf-8?B?OVp6VmM2OUt4dTdaVG1iMVNjZEk2czJBSXlpWWw0OTBCUExmNy9HU2lCRkl3?=
 =?utf-8?B?b2F3d1lxNmFVR2FXUDVTSklDa3p1bXNRSjk1UlZraktWbVpVcU1QK0t1dVdn?=
 =?utf-8?B?QllEV3Njd3BMdVI4MjFGUFZKZ0g5bElzeE03R1EzL3p4MjRPcVZmL05SN0V4?=
 =?utf-8?B?YkJ2am8vNVlFajczeTRWWU0wMUs1YkU1VmJYV29qMk82VmR2bk9naWNNMXlP?=
 =?utf-8?B?MWt1TUVhVFdlcFgvRkhyN1o2K1BZbWVMSmUya3pBNGp0cmQwMTJzMitob1M3?=
 =?utf-8?B?SzY0dDFVSnR6UlpkQ2hNM1dtdFZLUDZyQnowNlFUenJpdkJxN3lkZk9PYzBN?=
 =?utf-8?B?azBvOUo5amhDdEZRM0w5TjlzVXZ3YVdNMitrTFhEcjQrNDRqS0NkV1A5Rm9r?=
 =?utf-8?B?QnhZWjJjVWpmRFB3RlJSblVtRmkxbG4xMVlYZGNSdERVKzFDMCt6NlB0T3Vy?=
 =?utf-8?B?VnJoMWtpUHhmVjd2YnVaZWRnTUs4QjEvVitQUTJIN1VTMUFSUDNrMlZjL2FJ?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbc3c57-4507-4321-6fc0-08dd14e83969
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 04:49:38.8232 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qKW/vwSRY2/oi3JmbFdyTaXNxdPJhHySQfntLD5xqGwHMxlWhLQIzUgx4FW5ppv40sCPh7uYQiVO1S6+zq8mHVKqmH3FGN0IidYUWLRlCWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4588
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


On 12/2/2024 8:15 AM, Mitul Golani wrote:
> vrr.vsync_{start,end} computation should not depend on
> crtc_state->vrr.enable.
>
> --v1:
>   - Explain commit message more clearly [Jani]
>   - Instead of tweaking to fastset use vrr.flipline while computing AS_SDP.
> --v2:
>   - Correct computation of vrr.vsync_start/end should not depend on
>     vrr.enable.[ville]
>   - vrr enable disable requirement should not obstruct by SDP enable
>     disable requirements. [Ville]
> --v3:
>   - Create separate patch for crtc_state_dump [Ankit].
>
> --v4:
>   - Update commit message and header [Ankit].
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 25 ++++++++++--------------
>   1 file changed, 10 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b386e62d1664..c395af419ce3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -236,7 +236,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   	}
>   
> -	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
> +	if (HAS_AS_SDP(display)) {
>   		crtc_state->vrr.vsync_start =
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.vsync_start);
> @@ -316,6 +316,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   		       trans_vrr_ctl(crtc_state));
>   	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>   		       crtc_state->vrr.flipline - 1);
> +
> +	if (HAS_AS_SDP(display))
> +		intel_de_write(display,
> +			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> +			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> +			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>   }
>   
>   void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
> @@ -352,12 +358,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>   		       TRANS_PUSH_EN);
>   
> -	if (HAS_AS_SDP(display))
> -		intel_de_write(display,
> -			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> -			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> -			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
> -
>   	if (crtc_state->cmrr.enable) {
>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> @@ -382,10 +382,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   				TRANS_VRR_STATUS(display, cpu_transcoder),
>   				VRR_STATUS_VRR_EN_LIVE, 1000);
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> -
> -	if (HAS_AS_SDP(display))
> -		intel_de_write(display,
> -			       TRANS_VRR_VSYNC(display, cpu_transcoder), 0);
>   }
>   
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> @@ -425,10 +421,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
>   		crtc_state->vrr.vmin = intel_de_read(display,
>   						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> -	}
> -
> -	if (crtc_state->vrr.enable) {
> -		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   
>   		if (HAS_AS_SDP(display)) {
>   			trans_vrr_vsync =
> @@ -440,4 +432,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
>   		}
>   	}
> +
> +	if (crtc_state->vrr.enable)
> +		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 554AFB4FBEA
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 14:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21F110E24B;
	Tue,  9 Sep 2025 12:58:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ax8yVYtA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3E8E10E24B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 12:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757422700; x=1788958700;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=W9iIcVzzUDn6L8V1ZrJN5kAouGFsqYYZQf1/UdWlFmM=;
 b=Ax8yVYtA82qcfbiNF+FpSp3hLquqhSkUoYR5ne5C0cAyXI5koONa88LB
 qxK6o9HzTt9qagYSHQTlAfgv8LHDHiRTIM1Mx61lcWLezEn1THXKzvND4
 qxvZGyzEfCPgBj4/PN1zx3Rac8EY1+Q0AVm6N2P1Jm1fGRZHobg9CxBsX
 JxfA0Yn26IkqUcBAjOzO8l7lK43UXyk9X3CSStuwBaUkw7hWrj2El9CkX
 evU0aReEYMeFeds6V/uqkHhs4PqzGEVs/Szm2w0IWpUDsnUwIz/yl4gM9
 OWPtiLrxB2aQGpdBXsvfuxoQ3EoYQ7R3oKOTD3PBNSZxAW+IU1QWucZvk w==;
X-CSE-ConnectionGUID: Xrji6YJWRrKpSbdauvZASQ==
X-CSE-MsgGUID: Vt5+Cq3QTseDiJMoqInE2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="59811238"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="59811238"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:58:20 -0700
X-CSE-ConnectionGUID: KPbSBowRTM6g0SzAGByNwg==
X-CSE-MsgGUID: AYcb9xxcRvaNHeupo9ghlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="172660172"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:58:19 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:58:18 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 05:58:18 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:58:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iua8jiey+PnUN9y/jLhzAMnbUtDH8AVPAvxsGpDhbLdN2YZowi+s+VWETdQBgYQtA/mhB9kYX/3gAZRWX3eHgv50D0GuBiFlfn4PD3WGar1c8EL0HVWCrEdOMe6+O9ZQ4QQYqgD2RZOkxyN8VhdLB6lgyUELhzAPJrYDIVxp7+lkFJJhNxujOfRFP3YgNByh+9sSJqYwWkR67eAB5x5/Ot3e9pSjSoOc8EJn7YVDjCVO/WVfT/8BYSgiPY3ACNf/2ZnIg0q5LAxnT3MJX9mX6X6jsnl9A3EBjEcoFdOFfH9mvZPN6vLW/1ec2wquB6E8QOTiO7mX9fw44a5qxwaaYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HgZTaL17PrcQyxKfhMn7MIfebqG5/+XOjKLndnDxHRc=;
 b=vIWS0WItEIdkWEBS+BxwA/rNScecuFaNWnUgGbyj4u4j1Zl8xQ0KyzDAefLyrsngtR7mWyTjeHbv3fOZom0hW3IGHweDIB9YFiF7zTrEiecq5TvNEJJTBqqe5B/AFIGTSSjL0zppp9/hKB6D3k6S+XjblSNIG7AofjLtze8PIWQ+WsDFDfJ8Um6BQu+AmCgCI8NqE2T3ONLXyNX0QLlXiU9vZqf8rKMdaKnioaGhkD4sxqEx8we4AXEpZ1b4eT7nhACeoBrCy+uSt8MiSbMo5I0xRwFSb0LaJqJN1urufAXU6d2gNAaaMplObnqsqmX8R5/KpUXsD9+OlyyR7CDzvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS7PR11MB6127.namprd11.prod.outlook.com (2603:10b6:8:9d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 12:58:15 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 12:58:15 +0000
Date: Tue, 9 Sep 2025 12:58:06 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 2/5] drm: Do not attempt to round_up() zeros in
 drm_suballoc_try_alloc()
Message-ID: <be63aaccc9beaf1861c51f069bed6982c2d01a49.1757416325.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757416325.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1757416325.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: TLZP290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::7)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS7PR11MB6127:EE_
X-MS-Office365-Filtering-Correlation-Id: 193c0c8c-d50b-47a4-7272-08ddefa08a70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dEsvbWhrNE1HcDl3MlBBd1dBSUM4b1U0YnBiRkRPOC94elJqdGhXZTBaRUYr?=
 =?utf-8?B?NC9Geld1T1Fjb1RFaGE5WnUzUzBlOTZMcGllNUs4OEU1NjBabUNySEJLeCsx?=
 =?utf-8?B?VDF3bXM0Z0FzUTgyOFhZSkxmWXF2Q294dmxJaktnMDdGQ1B6YmZkY0ZKU2cr?=
 =?utf-8?B?MkszekdyOGxNRW0yZ1dJeVFJdTlya0pKbWsvMi8yaTI4K0h2MzNkQ0VsQnli?=
 =?utf-8?B?aS92Vi9tMGlVMXBXZG5GSzIxTEc5Vi9RaGdLWEVHdTM4UVk0WVh0TWdKOUQ1?=
 =?utf-8?B?SDJPNHplYjJicmttb05QYVdvalZWUS9vWUJjMFF6Q3FPNDhDd0JoWmt1dDhm?=
 =?utf-8?B?UXJoWmpqR1BLcStPUWc1OEZGaSt1WEJGUEx5eFlacXcwMVRxcWR6bzBjYXNU?=
 =?utf-8?B?T2F3VUhVd3hhT3hnbHcranUwTktrTGYyeFNDOE9jNTRCS2JyUTNDSDM4MXVK?=
 =?utf-8?B?Uk9KVW5pVmJGQXhHZnpoN1UrQ2kwalFQQVpoYS9tT0FFWm1mVWp5NldxSElM?=
 =?utf-8?B?RFdKenVIVGdqWWMweU5sa2FyUytKNXhCN3FPdnRuT1EwUi8yY0JWTUI5aXJw?=
 =?utf-8?B?N0I5RGMzVEp5dXZvYzFJOCszY0d4R3lPV0RoMEFzMlFUWTV0eDViaU55bGdN?=
 =?utf-8?B?UHd6a2JId04vYkZlU1R0c0toUGViMGx2R1VUSlpZck1mNDhrczB4b2FrNm1G?=
 =?utf-8?B?SGlSYW1haW1wRXpPTUJrL0RSVTRYd2VVRUpGeTJSUHU3SEVOVWhaK1UvZzgw?=
 =?utf-8?B?SlJlZ1Z1R0ZNQnRsRExXYlZCVGI0SmtGdzFSM2VhRjQ5enpJVDFMQkJZNDlV?=
 =?utf-8?B?ODRtb1JBVnZaVG5palVjRjgwcHlIS2p3OC9tVDFzdTBZWENleXJ3N3YvVE1k?=
 =?utf-8?B?QmlGZ2twTUJqTWt4QVJWS25uQTkxaUpSOHI0bEQvd1BIdENGbHRHcmdyWHNI?=
 =?utf-8?B?TndSRzVoZ3lFMnN1OUZvSERUb0xWSjBLdm0ySC9PYWcrWTQwSnJ0NldlNEo3?=
 =?utf-8?B?cVVxWU1HUGIzYWNGc3hCbXk5emMxUjdSWUlRdFVYREFVSEYxaHlmYnFHYThZ?=
 =?utf-8?B?SHgyRVdOajVBWXlYT1NXc0tNMGNzRFNIZ2JFMTF5OFljY2htZnYvNnBBeGJQ?=
 =?utf-8?B?bzQzbjJOSXBOblhGdk95UDU5bkswNVZFOVNFdXN0R0ZjWmw5cC9uWFB2MGlF?=
 =?utf-8?B?Um5IRzJtakMrWmlvcytiWmgzWlliVUYvWm9HS1lWT096V3RiOHZESVZWTldm?=
 =?utf-8?B?WG02N2wydUU2bDk1R1N0SnloQ0pFWHpuNnEzMEhIekhTQk5ZVW9OWXZyMGlJ?=
 =?utf-8?B?ZVp3WjZCOUVhNDJnYU5TSDVQMHRwYkNzdDRHekhMczNLOE9VVUFJNkdGS1d0?=
 =?utf-8?B?NVoxNzM1by9oRk5lcHhPNXJQVWFhYTV0cnRJZzgyZDhWYXhCaGhRcHl3Z1Zh?=
 =?utf-8?B?aVNlQlpTUDNHQXQ2K0JzNVFMbml0bDRwMWNWcExQUzU4YXlQWE1NR3Q1QTNT?=
 =?utf-8?B?NkNLdUs5QWRxNmNIWUZoK204RU84N0JqSlhwcVprWU9yd3RRNUxTWEpTQWEv?=
 =?utf-8?B?NzZKbTA4a29lQjNhb2F2T3BvazhjbUlIR1RYS0ttditaQkRQcEZmK0NxM0FW?=
 =?utf-8?B?MEhRNlpKcjU3dXRrbm1SbWNnN0hjdmNuWTBBTHlxeDM4QXRBZzR6ZjRNeG9z?=
 =?utf-8?B?aDJhbzNPL2xxclBEejVnMkkrZnlOZ1grVG9xWVR5d2pQSFpuV1pwcWdxMG9q?=
 =?utf-8?B?cUpmMG4xRVpCQTcxaG56MU9aUDh3cGNJOHBUUm1SMGJBK1NadUxmM3NsdGJK?=
 =?utf-8?B?bnNWbUNJRFo5Z2xJa3RVbkRjNUVwdVdxSERmREdWNE9RS2h0K2Zmc2Rndnc0?=
 =?utf-8?B?N3lMcmRXYWtCNkhIRlJWTkFqRnQvRjhSVXNsMWJGRTRQSW03L0tHL05tRTFU?=
 =?utf-8?Q?q+ICLWYBpQ4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OE9qTFFXNk9oblgyR3ppS2M5SzUxL1FrdG9COTZCcUtiTlFwVW1UVVRmMXlB?=
 =?utf-8?B?ZklnY2FqS1NPekhUV0hwNVMyNk1ocCtpUWJoZGhlbHdIZURqTHdYV3Yyckx2?=
 =?utf-8?B?M0pxWWFTdjlLU09CdlkrRFNSblhOOTdwVDR2UUxTZy9IOGlGQjBBVXIwQmdz?=
 =?utf-8?B?VjBUeG1WN3U3cncvWG1yNG5yaE9iRXVxcm5zWFNLcVNIWlFZTW9IYjB1ZG84?=
 =?utf-8?B?TkpoQk85VXZPcDZGSm5SeFFMNUo0WW1vVjFNYjM2Y1h1bUJqUHVyZTlWNGtH?=
 =?utf-8?B?SFBIQ3BwUFFXU25jaVAyaWlmQlhiRGZ5ajAzV0JJNWlIcVVyRVRydmdydnpV?=
 =?utf-8?B?bmtYV1ErZ3Rod1hVbDZZeGo2NWIxSUtxbkNBYW4rQUYrK05BSHhQYktTU09l?=
 =?utf-8?B?eURLMFMzVW5GNDR4Nk5JcTNFM1lScDVhTU1yc2tTbFVRSDc2V1o0eHMra0pa?=
 =?utf-8?B?cXd2Tzc2Y0l1aVlQWXBta1dJRll6cmxUWElkTGU3WXhkTGZCcEV1dXRFVkVY?=
 =?utf-8?B?R0x2cTg0VUtQbjJpR1pieXJuR1c5TmV2aS9yTkIyU1lzOFdGMnd6S2ozbEpr?=
 =?utf-8?B?dmZnOG1FQ1VxcEkwaWgvd1JoMU1PMkJYbTBpK3Y4TXdmR1JTYmNSSTVjM1ZF?=
 =?utf-8?B?bDJja0Y3OWpRaWU4V1JnVVNQSU1tSlhQc1YrMVdEejVqOXBBdGs3WitIRE1u?=
 =?utf-8?B?aE81ZHFSV1pyM3Bjc25FeFBvay94YTZycWtjK2dXRmxKN1A5TWNkeEtUanVz?=
 =?utf-8?B?a3Fpa21nMHlhUTBKYVFocTdscEVValI0Y0tFWmhQL3ZXWitMM0FHeFRzcWh0?=
 =?utf-8?B?aGVjTWZqV3V4M1ZDbnc5NURhaHpQVTNCT0dOL3A4MXhTT3hSM3MwdzQ3YS9X?=
 =?utf-8?B?ZThta004K2xmTGVDeUlnaWI3bzlrSG4yanM1cnZKQzF5Vm9TSTEreTJMcHU3?=
 =?utf-8?B?WkdhVm5qODliNTY0VG9ZK3Qvc2YyelJIWmlNcFRONTNqbUJiMytxSGRiNVIz?=
 =?utf-8?B?REVTS09SRUZZMlNKUFI2ckwvKzVoRWRHNFhSOFV2L1lxR0RCalluNUFLa3Br?=
 =?utf-8?B?OXdxSEFMeUtxcXFBQVhGNmpqMFJ5K3RSV0dvZE9kRWc4U05vdVRLQzl2ZjhZ?=
 =?utf-8?B?YlpCcGExL3V2amFVMUdXV2crTmV6OVRmMkZ5TjMzWXcrQTJ5TVZmRWNLdGpn?=
 =?utf-8?B?RlZ5aEVWTC9IekcweHgyZkN1bVBvMFZxcXZZazV2b21OZURMUEU3S1lFaVpy?=
 =?utf-8?B?UVczTzl1NjFqOTMvb3Y4S1J4aWJ5U1huUExzcEVJVFlZb2daQkJTSEVMK0ov?=
 =?utf-8?B?QmxOTk5aYUNTaVNoQ2kydlErKzUyUGlKcUcwNmxTcDRHaFNUU3hwMzY0aUR0?=
 =?utf-8?B?T1d3WGxqWThMcmJLOHVQR0xVb3p1bHpxUmZZTWxZbzlJVjdWLzU1a2c5UHZt?=
 =?utf-8?B?UXBqTk5kUnRVMjZhUFY2NEF1bTc1UzRkM0lOSFkya2ZFbC9kaTBqY1FvMjRk?=
 =?utf-8?B?M2hKUlBUYkc1VDErU3lOemtjZnRONWVJOUpQY0hxdXhOOGFuQmVyYUprVFV4?=
 =?utf-8?B?MllBSDdMM2NIc0RMTjhMVVQ4dTluOW5jWjdEdTZyd0pOQnRhcGc4NHFYVjFF?=
 =?utf-8?B?N3lzbVJkVmlYbFlWRU0wL0dBWGMwcDlrTHEwQXByazhFRmMzYkFtdzBiTTBO?=
 =?utf-8?B?Q2xvdFJrcXg4U0RoSVJSU0NIa0dNdzJjeVJlOTJUdW0xZWN0dWtuWjJoQmla?=
 =?utf-8?B?SEUreldwdWx5ZVlhOVFUa3lHcUVOWmRHNkdvVkhIdnJ0Uk5XeTJtemlES2RX?=
 =?utf-8?B?cHIxU0pESDVFU0NlTG85RUU1d0FVSm55UlZ4cEpxdUo2QmtPNGpUdS9GZ3FQ?=
 =?utf-8?B?SHpUcndqbmdRQzNjRmtSM0JBZHFvZElPVzRJdTJiZzJCRldaOHAyVmU0VzNo?=
 =?utf-8?B?clp4eDJIaG9lVEFiY1BvZWg3cUhzcUhrZVc0SEZGRFh4dTZTM0xqNDI0MGlX?=
 =?utf-8?B?YlZOUHdEQmdxcDlUVUNuK2tUd3NEeUNEOXZ2b3F2aTVrdlpPRmE4eWdWbXJn?=
 =?utf-8?B?bkhkV1FJKzVkWm5XOUtEaUQ0ejc2Q3dJNGh6TExjVHhsaWQyb1ZaektiWVF1?=
 =?utf-8?B?N0J1R0ZrQ0pjbmExanNReThKdk83WXppbnhIcWNKazl5MlBNRXNlcEhQMDVO?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 193c0c8c-d50b-47a4-7272-08ddefa08a70
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 12:58:15.6125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5pPldumSdMy1PK32XVq1qnl5e3nz5hdfTVgGin57uiGgC86QsISXes78V6LOhVRT0tCPiWtVdYnzTACC5wuQUxYTlKVZch1ApqtWMz8vKSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6127
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

Due to the nature of round_up(), its first argument is
decremented by one. drm_suballoc_hole_soffset() may return 0,
which is then passed to round_up() and may wrap around.
Remedy that by adding a guard against that value.

Fixes: 849ee8a2f0df ("drm/suballoc: Extract amdgpu_sa.c as generic suballocation helper")
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: <stable@vger.kernel.org> # v6.4+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_suballoc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_suballoc.c b/drivers/gpu/drm/drm_suballoc.c
index 879ea33dbbc4..7f01e9d9fcfd 100644
--- a/drivers/gpu/drm/drm_suballoc.c
+++ b/drivers/gpu/drm/drm_suballoc.c
@@ -165,11 +165,13 @@ static bool drm_suballoc_try_alloc(struct drm_suballoc_manager *sa_manager,
 				   struct drm_suballoc *sa,
 				   size_t size, size_t align)
 {
-	size_t soffset, eoffset, wasted;
+	size_t soffset, eoffset, wasted = 0;
 
 	soffset = drm_suballoc_hole_soffset(sa_manager);
 	eoffset = drm_suballoc_hole_eoffset(sa_manager);
-	wasted = round_up(soffset, align) - soffset;
+
+	if (soffset)
+		wasted = round_up(soffset, align) - soffset;
 
 	if ((eoffset - soffset) >= (size + wasted)) {
 		soffset += wasted;
-- 
2.34.1


-- 
Best Regards,
Krzysztof

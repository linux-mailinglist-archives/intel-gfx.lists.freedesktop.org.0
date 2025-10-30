Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0FAC204E7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 14:46:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C680110E97A;
	Thu, 30 Oct 2025 13:46:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kBLi0O68";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD0E510E0A1;
 Thu, 30 Oct 2025 13:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761831965; x=1793367965;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=l5Zacrv7ow/COtX9H6qAJQPWg0IbQkDtkpwgFo9UdMc=;
 b=kBLi0O68SrSAqUPAatkP7RBtC1ks2lrSnO+Nee85qxBtxW4hiU/yoQ6j
 J1W6g9a2H2opq+sYOn7EFYq2HgzuOk/S9h3pASjvfVk+XoYB0X98WR6e/
 P98Xj7f3PH4bTrNCkK3hGHEUQ/PrTswdPdZvi3kxWEiZRagz5VJMCFWPj
 En3hh8hz70xwvosiZ9byF6KBmrchn4km0guSUIE2c0oxXzfEWo6VMN4dS
 n60MQlqcJsgw2UPUNaF81kXaj6G12Yl5cLW7u1gWgGfVGiLeKrBaujKv9
 jfyVFtxrIdEFzaWzW9Sm9GEL7yK/5IoPHF+qNhXVn7Io0c8CRd6LlyaIU w==;
X-CSE-ConnectionGUID: ibrJ9JXcQ26yLCXj9hYkDg==
X-CSE-MsgGUID: h84Dj6eOQHqWtI4YbkfCSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="67625823"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="67625823"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:46:04 -0700
X-CSE-ConnectionGUID: r2sy3+N5Sr+ySkLj7hF5/Q==
X-CSE-MsgGUID: 5nXKn77DRwq++k1W9LAfIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="190297637"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:46:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 06:46:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 06:46:03 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.16) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 06:46:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QshJwmIeskjWXiNoU1gUxU6QRsbKJNm5u9BPl+FIYaNr6QtGNXw5P1aGwVkDsNGsMf06kzjVBeiEQyRdfUPYO0rm19Ckt8FpDTkUYKqBPZKMsdpw2bDdjo2J8Y2gThOgkp6HtUxBTt/ixRi8xJZ7gzr+1Hrkc7Oz/UrUiCw+B4YaCiEH9CGJoPRoC9D8+5+gCNxEu0NHGJqfjw+r1mjEs4kHDjN67apku4WsNUHVNR4CLTvs4EMCJ4Wi9yXbcGoRZCr+WgDSM3UwYZ5JJXglzLve1dwFrm3Mr5P2ANuY63Xy3EhJ2LdtKARMKuqMpxOFC2gSjtP0mEaz8B8M/QfS2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FY7TkieARAZHepW4w7cxAc0yByAMyUeOHQxb4MI+Y3Q=;
 b=bMpImg9NhtHPPDWqjF/RPlGc2ZmstagQKpXzyl5PowcRh5PnJiFYHO8oHmCNns4CSrjrpmqc+T98FB73dcf5iE99q33bIJ11sGm+qRargJTk/tTR0Ia4nJcanefCntNZVZMEACh9eF1YapcwjLFV+/8PKjC4ouPgrBwtRudppFV+HrK37GV2gNupiLT91MQsoZei6nbqMzNqB8ez05tXx8LrnvyILIHC7+LpY/B6d0gGkfM9QVUM3Or31t5P/6CL2CSCUBCZGfZPKL7sQqz1NNatNG9MPfn17STAVXltSB4xxc4mboEH1H68sGkdy4dFNaIVI7OX+WlBBjOc1Yuh7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA3PR11MB8001.namprd11.prod.outlook.com (2603:10b6:806:2f5::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Thu, 30 Oct
 2025 13:46:01 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.013; Thu, 30 Oct 2025
 13:46:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aQKW3rfS1l4BdDdh@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-14-10eae6d655b8@intel.com>
 <aQKTXsWok4HaRCdv@intel.com> <aQKW3rfS1l4BdDdh@intel.com>
Subject: Re: [PATCH v2 14/32] drm/i915/wm: Reorder adjust_wm_latency() for
 Xe3_LPD
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 30 Oct 2025 10:45:56 -0300
Message-ID: <176183195677.3303.15857641770094558190@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY5PR16CA0020.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA3PR11MB8001:EE_
X-MS-Office365-Filtering-Correlation-Id: 52813d1a-27a0-4721-e311-08de17baa963
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YWcrZVBNYkFjbG4vbGlOclpXVUFGcWFSNEZaVStuaG5ERmlmdVdyWnNOYjNv?=
 =?utf-8?B?T09zUzJ3RjdqSk0va1pyc2NndWEwWjdBR3FOR3dnbExuRW11Tk9ZeGVYdmZL?=
 =?utf-8?B?TlBSNWxVeDd6SXZkQnZSeG1iZ0dtWEJJbUZpYlRrYmJGRmNmZ1Y3Sm81Q1RU?=
 =?utf-8?B?RWNQTHIzZThSV3JYMlR4d1lBRFlTM09WM0VVaG85RURQZTVySnhYMm5kdVRG?=
 =?utf-8?B?SmpLMSs5elZUN1BNS2dGYWdVSXZGKzNDeXIyZ0ZiV1JFVVlZOTh3N01lZjlN?=
 =?utf-8?B?ajNlem5XQ3FDNk10UjdMYXhkWmE5Z3VlS3BmVEluVlQ2NUxRQjhSdVZraE53?=
 =?utf-8?B?VVVhcW1PVGplRGtjUkhubklrT2VwNnVHN0p6UkNCUy9ZdEUwVk5Bb21EcnE1?=
 =?utf-8?B?cHpuOHhoMDRWbDluSkZWckZneFJMenBSbjZJbUVNS0VuUmpMcXVvUWo3QW5D?=
 =?utf-8?B?QUplQWp2Z1o3VCswelpINWpob1k4Mk9aK0F5VXlrQkltVUNBNjhnUVp5UndH?=
 =?utf-8?B?ajEwR0VXYXhZWTdkM3JyQnJXbXZzRnVPWCtzYXZZeGUxanRSSGFYb0tJMSs5?=
 =?utf-8?B?TnpnWm5LdWdzb20rcHpIWTgzUmRMeUtmVjJlcXhjOXFrRmdYR2lFdm01RjI1?=
 =?utf-8?B?N1FtQi9kdlVzZU1JcS92MEdOdDhkQm9rUUFaZ3hmMGd4Rks4OVZGOUJnME1K?=
 =?utf-8?B?dGVNMGljWUI0M0ZSR3FyeS9RSGRzWUZYMjBtT3A5Y0U4QXVwYWJFMmFKcXV4?=
 =?utf-8?B?emRWUDZOTmo3ejVwM3hLUW56clJUVVN3Z2VwTVhMb0huM25ES0prQ3ZLK0Jn?=
 =?utf-8?B?MllSR3NXbzd0RGRMNmUwQUEyd2w4UUNjc0xSbGZzK0dDcm1aNXJxcTJ5RmpY?=
 =?utf-8?B?Qyt6d0lBaW9tSE5nMjRzdFRSa0NRWUd6clFmYWpmL0tQNTJlS0NpM0NZQmVP?=
 =?utf-8?B?L0tJRkpjMTRrRkpkcVNWcHp4YnhZNGxVOGQvYklsRDlmQWJ2OWUyR25lMXBW?=
 =?utf-8?B?dW5OdmNBUS84cmo3cWI2MlE0WDdlczVINklhMlQzMHN2L2MzSGFnOW9rNGM5?=
 =?utf-8?B?ZjI1bXVJWDZhMW5YUnp2T21zUndrVmJ4bFBOYk50VW5PditmdDYrd3ZmZ2hN?=
 =?utf-8?B?eHU1WS9xRExiS01pOWpXcE1JbERXeThiTktlWTlxRHZGaEVkbUJFS2phQ0FX?=
 =?utf-8?B?YmYvV0IzakhET2l3YjlxN1YvTExQNHh5Um4vcGsxd2E3OHZVOFA0VWpLQnpr?=
 =?utf-8?B?ekZ0YU4ydDlUTFJ3VStBYjJHS1NXR1N3UGtOTXVGa2VoVWxjWjlNZ0tqZE1S?=
 =?utf-8?B?c3o2VU9HZlR1b1Z5U1JLL3BLYkdmZHhEM0NMdFVSWHI0VVVXVGZ3ZXFNQnVX?=
 =?utf-8?B?UzJKaUQvZmhuLzNHRjFOa3g2U2JhZ3NqZDJrenR5d1ptRDJMRW41NWhMZTky?=
 =?utf-8?B?MlM4TGlnQm80czJZODlIbWtBVVY0UVYyVExLMC8wSjFkaUFoN1hET3R5UHRK?=
 =?utf-8?B?VitqQ0FkdDBBaUFhaGQ3dnFpN2NUcTltc0MxN0tILzQvMFQ5OFBDbmtNQUtm?=
 =?utf-8?B?QW5CSE5YTXUxVXhWQkp5L0ord1FQRXZPWmhNQ1JUUnM4RnAzRWNOQW54TFJP?=
 =?utf-8?B?a1JpWXN6a2VMOVZFelZ5SElPdm5pMzN3UFRvd25oNmVQVlFtbEFHSTlUY1dz?=
 =?utf-8?B?dmlxK2FvRVExUllZemZrQjdhUmJNVDRKUHkrSkgrVldQTTVlcXIwY0Z6WkxQ?=
 =?utf-8?B?UjRDVjNicEltY1NGbktPZ29nTHVmc2xhUDdFVWwxOFVEQ3BpNWlObWxKSkg5?=
 =?utf-8?B?MDNobjFncWJzMnptUzF0YjlhN0FRN0tpUW10K1ZFaFNSTU1OSUdaL0syY2hJ?=
 =?utf-8?B?VGtsSXgvZDE3cWltWUJNaDcvNi9PS0w4N3NoWVhLOVdFZGdRYytRSDU2b1FF?=
 =?utf-8?Q?eVavnWGh1rcGCSldIYUlBouoxqqIcb4K?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFlURHRRMUlhY0labTFWaGZjazJkRGtrK3lhUDN3WnF5MjVFcndRdkFOWHl3?=
 =?utf-8?B?QzNreTdjNEcvdlcvS2hBUEtJZUdOOW5JcGJ1VXFxVURlbDJmYXVvQnJEUjly?=
 =?utf-8?B?MmFveGZwRmN1VmdSbE5EVzVxbGtqRU90aXNmb2lGOVNMQmdvSmtKNU9KVXpS?=
 =?utf-8?B?cENMSWlDSEkrVGM1WldyS1JlWlNrWjhUUWhtVTFNVjhrS0NEbGF0K2kxaFVC?=
 =?utf-8?B?K0l3K0dKN1pvWjJTR2Y3TkVVcEdzcWZwNHk0amhUWWZZcWFld09YK1NmSWZa?=
 =?utf-8?B?Z1ZueG0vVWg5RlB6R3Fmelg0cVhUWUt1Z01vRlZoRW1rcTlQcVBLU25nTTZr?=
 =?utf-8?B?NkluWDVyRUJrQXVVYldyVyt2UXEzdE9KeEhGbzNQaWUzeXB3bEYwRGczQTJm?=
 =?utf-8?B?RXh4Y3JyTDNyUEdYQjJaQUFGNE5wVkhaZWJ4eFVHMzV0dWdLM3Avd0JFdGZq?=
 =?utf-8?B?dlpzWUR1K3FQSytKRHJvSDQ1akhudlQ3RzJNeEc2eVJQcFVlOURCMzBubkFS?=
 =?utf-8?B?MDk0cVdCZ3hHeTFCQ0ExNWdhRGgrQ2I4cm5BMEh1S1pzeXNBb25xZVhodk1P?=
 =?utf-8?B?MHYwSmJLQnlvUlZsZWN5ai9uRzZic0kyQzNQNGN1RjNDR1BPZVFDbWw4Y1FE?=
 =?utf-8?B?U2dDL1RFSkYrQ0h5MURmU1FiRURnMDV2YTlmS1crajIydHpHMlgrcVBiRkVG?=
 =?utf-8?B?WXlxNklTMWwreVNCTWMzTSs5TjRYNVZQTjcySit0eFNXNmVXajcvMlY4Y29C?=
 =?utf-8?B?R0JDZndJVklyYWpMOWYrSUVpOTNEMWpuNG1XUjZMMDBKY0VGS2tJM3U5Tml4?=
 =?utf-8?B?Mk5PKy9DczU3MGlIS3lJY2V0VDZnRHlZYzh0ZVc2TkFqNGJWQUVrRWhrNkFL?=
 =?utf-8?B?clo4allYRjRrNFpaanl5OGxvOUFqM0dwUWU1ZGNVVm1nTUhrMVFTWWo1aWlr?=
 =?utf-8?B?MXRnSjdFVk02TFZhTjJNNWM3TEtoc0FwMHkvZklvNG1jMDlJZHloZ1hpTk5o?=
 =?utf-8?B?WmhlTmpoMW9wNFZFb1JNa1ZuNzI2V3plQnFabC9tRnhzVit2dmorMGorRi8y?=
 =?utf-8?B?ejByRCtTNCtjbzRUU0VuaGVaejNiUDg1Q21oQ2R2TEZpV3QzQW9vSkJSZmh4?=
 =?utf-8?B?M2dJVGRwRTdMU0ZmNFhUUVFWYmpvNkJrTTZ5QTFtMHZXTS8ySThZYUdGWTY1?=
 =?utf-8?B?c1NPNzBBMHMvVUlvdWl3L3JoNGplNXlMVUFnR1Z6Tk9ESGN2cHpuTDRKdm9l?=
 =?utf-8?B?L1A0aS90cHgrZnpGR2o2a1BiRGhhZmhMY0dVcVh6S05Hbm9kM0hNRTlORVRY?=
 =?utf-8?B?Y1BFR2xZTGVoWnlPTUZpa0t3RTJ1SWIzN1NDOTRiSTNaTHBKdVVJVVpFa0JO?=
 =?utf-8?B?TUFWU1NFdC9oa2NqWjVSRHpIeHl1bTdJSWRlR0QyWURIOWlIZjBwOEF0ZXUw?=
 =?utf-8?B?RzNseUxaTkFNNk91QnM3NWdUd1RPQWh5QTBoOS9aNjRQcnZOL1JVcXhnM0c5?=
 =?utf-8?B?S1FoemVVdnBwcmt5NEJLOFRHd09yNGw3ai9KVmM4TlNSS09sb2hCdk5MNHdu?=
 =?utf-8?B?Tk5WWURmY1pWNlZnaWVNL2dvbnpyTWxqMXRIYjlRYXhSbDl6UHk5RndTbkVC?=
 =?utf-8?B?U0ZRN2N6OC8weFJ4eFRLOE4vRUZpa2hhMnk4bENFSW9NRGI5SzFUdkw4S2RO?=
 =?utf-8?B?dGV5ODlJRHBDajhxUHJSbit2cXJkTlBrU2pPTmdOcWpUM0J0dVF0a0RIY3lM?=
 =?utf-8?B?aUVnVEdFQ0NVaTlIWFdFN0djQis3anZialM2NU9EemMyK2NNL3FwaTlEY1RW?=
 =?utf-8?B?bkZjSURCQlovMEk5dlFKdEJxWVMxajVHUG1qeWE2ZkgwdFdIVHlDVXk2OURK?=
 =?utf-8?B?YzZBTEg1azRmME9BaTJkd0xxQVdjWlFqU3pYUnBQc2U4bHg3V2ZldzZtVHFS?=
 =?utf-8?B?U3JJc1h0c2k0K09JM0VDK3g0TC81QVlQa1pMdWdWNzhpZ3JwRUhEMzNRakVT?=
 =?utf-8?B?dWhjYXBZSDBFZnpKaVcwNUxnMG1GUUQwNEZLZml3M2ErQnBSWlpTV1E4K3Vp?=
 =?utf-8?B?RlNpbGtwL0FhcEtuNmRaYythdWlLL3YyUDhuaXI5VHl2OUxIWWIxY0NwWDFV?=
 =?utf-8?B?cGZMbkxPdmwxTGlGQ3NhVHZhZ0k5WGplTG1wbTRJbkNva0l3MTNBaU1SNnNj?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52813d1a-27a0-4721-e311-08de17baa963
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 13:46:01.0086 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 31/H+UFNFzfxNDB4J6gh33u5fofyU/pzkxVBYIqofd8DO54pc/wTxMhEw5s4UPBbHJTxlYEDTQMg2inWePGI8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8001
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-10-29 19:36:14-03:00)
>On Thu, Oct 30, 2025 at 12:22:01AM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Tue, Oct 21, 2025 at 09:28:39PM -0300, Gustavo Sousa wrote:
>> > In an upcoming change related to Xe3p_LPD, we will need to (i) update
>> > wm[0] in adjust_wm_latency() and (ii) do the same increase_wm_latency(=
)
>> > that is currently done when (wm[0] =3D=3D 0).
>> >=20
>> > Because make_wm_latency_monotonic() depends on wm[0], part (i) needs t=
o
>> > be done before it gets called.  In order to keep (i) and (ii) as a
>> > contiguous logical sequence, let's reorder adjust_wm_latency(), making
>> > make_wm_latency_monotonic() the last thing to be done.
>> >=20
>> > Also take this opportunity to simplify the code by doing the call to
>> > increase_wm_latency() only once.
>> >=20
>> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++----
>> >  1 file changed, 8 insertions(+), 4 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gp=
u/drm/i915/display/skl_watermark.c
>> > index c141d575009f..57260a2a765a 100644
>> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> > @@ -3213,14 +3213,13 @@ static void
>> >  adjust_wm_latency(struct intel_display *display)
>> >  {
>> >          u16 *wm =3D display->wm.skl_latency;
>> > +        int inc =3D 0;
>> > =20
>> >          if (display->platform.dg2)
>> >                  multiply_wm_latency(display, 2);
>> > =20
>> >          sanitize_wm_latency(display);
>> > =20
>> > -        make_wm_latency_monotonic(display);
>> > -
>>=20
>> I was thinking that by doing this early we avoid potentially papering
>> over our own bugs in the later adjustments. But Windows does appear to
>> do this after the read latency adjustment.
>
>Hmm, I suppose it doesn't really matter whether it's before or after
>since the read latency adjustment applies to all wm levels. So I think
>I still prefer to keep it early to avoid papering over our own bugs.

Okay.  In this case, I guess I can drop this patch then and go back to
the original approach + moving the assignment of "wm[0] =3D 0" to be done
earlier.

>
>>=20
>> And it looks like Windows actually stopped doing this for xe3 and now
>> it rejects non-monotonic values. And it also does that after the read
>> latency adjustment.
>>=20
>> So I guess what we want to do is move this later, only call it for=20
>> pre-xe3, and add another step after it to validate that the latencies
>> are indeed monotonic.

I guess in our case, we would reject them in sanitize_wm_latency(),
making everything after the invalid level (i.e. wm[level] < wm[level -
1]) be forced to zero, right?

In summary, with keeping make_wm_latency_monotonic() early, something
like this?

    |diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gp=
u/drm/i915/display/skl_watermark.c
    |index c141d575009f..6cf1565dcefd 100644
    |--- a/drivers/gpu/drm/i915/display/skl_watermark.c
    |+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
    |@@ -3183,11 +3183,16 @@ static void sanitize_wm_latency(struct intel_d=
isplay *display)
    | 	int level, num_levels =3D display->wm.num_levels;
    |=20
    | 	/*
    |-	 * If a level n (n > 1) has a 0us latency, all levels m (m >=3D n)
    |-	 * need to be disabled. We make sure to sanitize the values out
    |-	 * of the punit to satisfy this requirement.
    |+	 * Two types of sanitization are done here:
    |+	 * 1) If a level n (n > 1) has a 0us latency, all levels m (m >=3D n=
)
    |+	 *    need to be disabled. We make sure to sanitize the values out o=
f
    |+	 *    the punit to satisfy this requirement.
    |+	 * 2) For Xe3 onward, only accept monotonic ranges.
    | 	 */
    | 	for (level =3D 1; level < num_levels; level++) {
    |+		if (DISPLAY_VER(display) >=3D 30 && wm[level] < wm[level - 1])
    |+			wm[level] =3D 0;
    |+
    | 		if (wm[level] =3D=3D 0)
    | 			break;
    | 	}
    |@@ -3201,6 +3206,9 @@ static void make_wm_latency_monotonic(struct int=
el_display *display)
    | 	u16 *wm =3D display->wm.skl_latency;
    | 	int level, num_levels =3D display->wm.num_levels;
    |=20
    |+	if (DISPLAY_VER(display) < 30)
    |+		return;
    |+
    | 	for (level =3D 1; level < num_levels; level++) {
    | 		if (wm[level] =3D=3D 0)
    | 			break;

If so, I could include this patch as part of this series to avoid
conflicts or keep it as a separate patch...

--
Gustavo Sousa

>>=20
>> >          /*
>> >           * WaWmMemoryReadLatency
>> >           *
>> > @@ -3229,7 +3228,7 @@ adjust_wm_latency(struct intel_display *display)
>> >           * from the punit when level 0 response data is 0us.
>> >           */
>> >          if (wm[0] =3D=3D 0)
>> > -                increase_wm_latency(display, wm_read_latency(display)=
);
>> > +                inc +=3D wm_read_latency(display);
>> > =20
>> >          /*
>> >           * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
>> > @@ -3238,7 +3237,12 @@ adjust_wm_latency(struct intel_display *display=
)
>> >           * to avoid any underrun.
>> >           */
>> >          if (need_16gb_dimm_wa(display))
>> > -                increase_wm_latency(display, 1);
>> > +                inc +=3D 1;
>> > +
>> > +        if (inc)
>> > +                increase_wm_latency(display, inc);
>>=20
>> I don't see that variable being helpful in any real way.
>> Just makes the function more complicated for no good reason.
>> It also has nothing to do with the rest of this patch.
>>=20
>> > +
>> > +        make_wm_latency_monotonic(display);
>> >  }
>> > =20
>> >  static void mtl_read_wm_latency(struct intel_display *display)
>> >=20
>> > --=20
>> > 2.51.0
>>=20
>> --=20
>> Ville Syrj=C3=A4l=C3=A4
>> Intel
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel

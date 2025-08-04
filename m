Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5208B19D03
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 09:57:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E971210E40D;
	Mon,  4 Aug 2025 07:57:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mLZ44qcM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E72910E40D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 07:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754294242; x=1785830242;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=z42jzPK6Mtm9AzvQ0lNtKPTOpsqWFSuKfzAwUK7yNYk=;
 b=mLZ44qcMMm4FS8ZT55AkmjLj6gD2t+bDs0fn6HvftYEdBpPqckt7ulUR
 NoSvBE8Z7WCIkIVghx4FU8lUEPYGYzMIc4Oci+B8CApDA9gnttWzXUJlW
 hYqF7KHYipZds6g2P1HopyIEQsv4SAGI/IDr33bzxLIhQNayKeSC3OyGn
 cUmrmPNJf3d7eBmDmBYUbU9J9cWLnhXLS6yo+kV/WxvMQkNH+ikil7imY
 jL9TWqOwnA4u4Af/Yt+4bPWCHb+wJK1sM5roRXb5OctP2pRjrvpfNelUx
 679EeBGVVBA/Id/nVSNyoFfXdRF4k9dr0PYtJEjyrMP/l5b7gDruzz2GM A==;
X-CSE-ConnectionGUID: OlcbM4iyQmWcS/nLmj0BGw==
X-CSE-MsgGUID: OYMtQsXpQwGwoOpxAryNfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="44136527"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="44136527"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 00:57:22 -0700
X-CSE-ConnectionGUID: OnSM5F4tTcmOJDKIXid7CQ==
X-CSE-MsgGUID: lBJgbY1ASEO3DLbozA9gCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163362310"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 00:57:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 00:57:21 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 00:57:21 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.55)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 00:57:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EIpdrc+bpOYz4tGt8DTJz7/vDJRMvmetTLQBb84RsjM3VnBAHqso3GHi8jGDRMUZJO241CSqMZPFPC8/qxdp7HyNVeFoY5dpM4JvVVBvc7iVPjMQgzqG5QZ3srgsiC9PJwEZSWlTC4+piJch+ruMl0MiM+KrrNgArwUIy5zZBwY3oZxpyb6Fdc52Bo0++oG6zKLBt/E+tcFesxBGU+dgrUeq8kL+f8CEMbWlW9m9drWmXikyG/v2aRzt8f8qLPMkDyzNxJCXKdVqTY5UobtsOsdNLEjVKl2Dh8/uLdRAr5NzTIkG8AldAon7TegPb4dNXH4BXwLSyXPjyCA3r/p/Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A6C5EqqjEX6RH1/RhGnu4+td78GyP3qS1CZ1oaDWIio=;
 b=o05w55Maa5q4XxJL8dP6fWdRfhaMxN1BkugIK4EolLBci8FoD1a5krsKmvBr7rVvgtuAIr7MEDEfYpEj7Ef8cD1LQ4g64MKbguMLWqiGydx3QzJRsJbrCb7JHkRZDDm9rakBUa2O5LIa1chW3N4VWBFLDiVVu+7+amHn7TPrOtVz5k4NHD+zlPbQe9VQ45yic1g1Z7PB2IabEdMFYV7WUu7x5u7nVP3X77xfiupiSXHAn3JDgGjK70ktM/7qL/AnSDLvQuwJL7ShmxedScwzoxSVjxLs2h7QJKeZ+w1zezRICoeB73WFFEFG5wC/sGN2SPyLIpnOujM6hyj18HNExw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB6331.namprd11.prod.outlook.com (2603:10b6:510:1fd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.16; Mon, 4 Aug
 2025 07:57:18 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8989.018; Mon, 4 Aug 2025
 07:57:18 +0000
Date: Mon, 4 Aug 2025 07:57:08 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH] drm/i915/gt: Protect against overflow in active_engine()
Message-ID: <xb3spla5mxe3y74hbn3pbhjdb7b6peopcwctfokf43qs54uu64@a5pgr7dctcrt>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DUZP191CA0023.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB6331:EE_
X-MS-Office365-Filtering-Correlation-Id: f80695b3-51b3-4638-a98b-08ddd32c88a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b3puWDY2cytQZGJONTFKVUtUS25VdmdHTVBLeEZvK1lyWS9uWHJ2T2QvRWhl?=
 =?utf-8?B?eldMR2lLZFFhMjQzYlEvZXNGZlFMaFdpdHczT2lBOE9RNWwza2FxbTBPa0V6?=
 =?utf-8?B?YzBndzF4YWl5SklmdGxrQm81NGhRbTcyVWZlTTh6VXhRL251MVl4WFBSNWlJ?=
 =?utf-8?B?UjE1SnJtTmtBV0orVjlaZm5YZHYyME11N2QycVNqeVl2RmFYZExtRzNFTVM1?=
 =?utf-8?B?TmJqellMenk1NVdJSEFkZVVTRlVWSFFMREdCVEpONXplVElPZmFZeDN1N3Nm?=
 =?utf-8?B?K01ERDFxbHVDaWJqcEVJVk9RVFk5S3lSTU5uZ3ZqTUlHQ0hxQXN5TGVZUkFr?=
 =?utf-8?B?MDRhYUgyR215OHlIR1d0VjdjTU1RWlh2ZWdrbFloS0U2RXlTS2dsMTFFZnIw?=
 =?utf-8?B?L0R4eDBqejdRZ2o5amg0QkpjTUJXeWJYZHVvS1QxRXZ1WStxS0tPWjNoTWRj?=
 =?utf-8?B?bmtPcUhDdXVvcTl3UkM2eVJuTWpWZTA3TjUwK1RqQkROYmo5UlJhMXZYSXk1?=
 =?utf-8?B?UTZzT3lCandCVDdxY01aeitBZXJZUWNvQUJLWUhZUnpJd2lMUEhpeHFQdFNj?=
 =?utf-8?B?Ris1c1lJY0tucksyT1pXbFFxSW9vbFhBbzVtK2dCZWtaSTU3MTNteTBzN2ZR?=
 =?utf-8?B?Mjh2UnVqbUNjLzl4dW9KejFWZVI1dDRxekJhcHA2SWFSazBmWUJCMHQ3MUpa?=
 =?utf-8?B?S0VTeE45TTBpTStPbFNiNHBkUnpsWG9CcTZ5QjBIV0xBWmtSWWhMVDdLZUhQ?=
 =?utf-8?B?VVQ5VFFabDhNb0dvYTM3VnljbEQrV21UbWtocTZZQWV3VHE4allMUGxIZ2hJ?=
 =?utf-8?B?MXB0MURybzNUSDluNE1uSC9XK0NhNTZmclUrQlBJL1N5MmFLanV4Tzk0REgx?=
 =?utf-8?B?RDJHRERPSE5BcnlGaEQ0eHdidnlZME0wajZvRkNRWFloWU9UT29iaWRFejI0?=
 =?utf-8?B?U0tJRFoxOTNZTG5adEg2VGVEL0c3MS9nMkFITzVIcHR6NWJHcVRXdm9NZVV6?=
 =?utf-8?B?VkQ4dG5qaVNTTkY5UGVudXNHa0lKS1NhNlI3WmNXN21RU21JaC9RRGJKMG94?=
 =?utf-8?B?WTVkRVVaVW9QOEtWam9KenBPL0huM0pib05STFc3TUFOZEVHckhCbDN5RE5T?=
 =?utf-8?B?NlhnUnl5ZjI1NFdSdlpoWnBzczh6QVdXV01SZjdFM1NlZzBObXJ1M0JITjVE?=
 =?utf-8?B?OW9sMEJOOTlrT0hCRmV3a00wTUlxZVQ4Wmx0b2ZQZUpQWVZidDgyaitETFZr?=
 =?utf-8?B?cnAzdWtpUUlkRjcxRHpuWTFydXZpZ2VLVTl0UEZFZUV5cm43Z2hTc2V2dHdG?=
 =?utf-8?B?dVBJdnU0VXhkeDdvYkMyU3VCcTlPSEJQbDlCcHFVM29UZyt2YkFibXhHVkpz?=
 =?utf-8?B?T2JsMTMvNklIZTlSMnZLRWFlMWNYcUNFYjg1M3MyTVRHOFVTRGtFYUJwZC9J?=
 =?utf-8?B?eUY1U1lnNjBqcmlkQXNxTTA4ZFAzeGowMGdwbFFSWnZKOFdGYW9vK0hubWgy?=
 =?utf-8?B?cGF2SUk0VnhpbzFlS3FEK08wb3BKSEZOYzlUUnAwazFxY0dpbUw1OHkrRXR1?=
 =?utf-8?B?SDB1Y1dScm1zZFdaSVBkVjVHYXhiL1BkVlhiYkswbmg4ZjA0dEZ6bC9RT1Ju?=
 =?utf-8?B?amdxaXdCOFpoVjREdWFWZGd4TDFZd0NYaFVZak4yRWVCV05POXE3V2FicU92?=
 =?utf-8?B?MHBYMmw1U2hhd1F2TFdtU004VzhQZnQ4T1E3amhBRDZaVEplTFoyWW83NXNx?=
 =?utf-8?B?S0dtcnJoNzM5Skh6WWFOaE1ZaGdteDF1RWNlWDJBT05vWnJ4dWxIRUhieEVu?=
 =?utf-8?B?VWV1THBiZUhUR0dVaFN0NnlVOFRpOHAybm5aWjNVZkpwR0dyNFBIbW1EUERk?=
 =?utf-8?B?V0dYRlVIM2xpUDVJVTA0OFBxTEV0ZDg0VjZTT0ZkWGdEN0RhYmg3ZHkrVlhE?=
 =?utf-8?Q?dw0iCJRB25o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmtGK1VwNDJ2NjlUaGFHZC9GZ0x1STg0bjJpUndVZmpMbUdpSklxQWl1UWZL?=
 =?utf-8?B?Z0xXWXBzYUxXUTBJK3hCaVdYa3VPQUhHQTArTGhuY2ljelVCNkZHSzA2ZVR1?=
 =?utf-8?B?N2dLdkl6MXAxS0NiY0Z2OGRHVGZ3ckNrb21qb1RQVml4NndxbUtxaHB1TjN1?=
 =?utf-8?B?NDJhUXZDZHF3bjhzdzQ3Z2pCQU1jZ2FqQTdQcnlmZDc0b3UzanFMVVVKczlQ?=
 =?utf-8?B?L3JvQ1BBYmt5a0NveFN4QUNKWUpTUTV4d3ZzVG1KV05JemdVNE5NWS9VMjUw?=
 =?utf-8?B?OHgyTEtsWVoyYitrN0h1YzZhY3RhZDlnL3lCYWdPV25ZRGF3U3hGQmNSZGlT?=
 =?utf-8?B?cEFVeCtwWG8rcHQ2em1ySnNWWkZCN2NLcEFZNk9WVkpBeTEvblJsK0tzdHlX?=
 =?utf-8?B?THE4K3NGN0ZHVmt2Z25HaVBYb1Q0U2ZoSUNQYU9FWXZPekswOWJaOXFUT3Z3?=
 =?utf-8?B?WE13eXp1d0MwMURzdjliV1J1Zm9hWnVBS2hWVEMyOUNaZHBVdDNJSWtYRVpO?=
 =?utf-8?B?dkFWTHpzU0tOdmZUTzh1QkpESkNNUVN1MzF1YlJyTzcyYnkyVmlueEdOTkNS?=
 =?utf-8?B?ZTN1bFZQQ3hLQ3dJWEdUOVd3NUFyakp6TnZ2L2hZUVVRZWFHNmhFekNKZnQ1?=
 =?utf-8?B?Y1JmOTYzczg4aGpoWmxRZHRoS3l3a3QwRnRMZjQ4ZVA3U25hZEpFSGJ4VlQ3?=
 =?utf-8?B?b3h2cGNYVHlrQ1RvRllka3psamFsMGZtRTRtejYyMUxPU1doRmR0VHNIL1FJ?=
 =?utf-8?B?ajRuV2EyWkNzTjFLUVc5aGk5RXV3MUlrcGpnV3FDNm9pOTY3dGRDcnYvQWVQ?=
 =?utf-8?B?TS8weFVhUHZ0elMrMGJhcFFTM25SdDNLd01pTnkxRzQvV0lUMzJBQjNPSGUz?=
 =?utf-8?B?YTU0a0M2VjNBWExVc0svMnNmengwcHRoY1VlZkthdXdENmczTEx1VElXZmxD?=
 =?utf-8?B?L1NBaUwzVk95bXhEcVNOK3JmUUd1SE1JUnJ3ZXp1RVcyK2Z0dEsvKyt4Nzd6?=
 =?utf-8?B?UG15a0ZZdG93eDNnUnE2bmtZWVY3ZTlkY0VhdHlreGkxOVdYaElFdmtRa0dC?=
 =?utf-8?B?ZUp2N3lpQW1JcXB1SDlpaS80RHJ5Snp1UWkzWWtJRlNPZFRTWWVPb2ZrbE96?=
 =?utf-8?B?Q09oYzQzU2NSYjQ0OXo1SUNkbHUrajJOVDdnTElaNEFtcUJMek5Fa1RZSmMy?=
 =?utf-8?B?Q1VSS0ExN1lQQUNkeUFIVmZ2WUJLVjFSZitVNmpFSEZiOUxueGJabGE2b3hB?=
 =?utf-8?B?UkFYdDJrT1ZBeThRQXh3TEV4NUJIQlZjbDNJMXF4WWpyZzI1S3htWk9wRkVw?=
 =?utf-8?B?TEZVMHN2Qi8vVmhNZXRrQjUyWiszc0JXd0cya3BlQUNheTNDK1ZWNitsUmlm?=
 =?utf-8?B?VzNjL2RkVVBJZDFDb3NRWE5Nb1JJSEMxY2U2US9wTFNBcWEydWt1YmpvcUM1?=
 =?utf-8?B?ZlAvS1dwZFQybXhLUVVUT3NLM0xpbnZXRkxzM2hWT0tyaExDbmx0UTB5eWg4?=
 =?utf-8?B?ZHlkVjZWbGdITHRheVU3TUMwWHFXR1ZUREtSUjBTTUZjK2MvVElLN3ZhUW1r?=
 =?utf-8?B?K0dXZ090bDVURzNsVk4vQ0hNWWRtTE5aQ2h2ZDlmQmRtR1ZqMTcvcjBDYzNp?=
 =?utf-8?B?MzR2WUE3ektGSVE3Q3lOdmNFUzI1MHg2WDJDdHYvU3llQnJzMkxWTUxXV0FO?=
 =?utf-8?B?MzM4emFCczlxR0pKdFg3ekFoVlJIcmJUS2cwVzhXOE05ZUtCVE1jY3JtWmlt?=
 =?utf-8?B?djhVdmozZzgzZ0hSM0xKZTErdzVZeDRrSEJNaUl3N3ZvNjdKVzdIekFYdzNM?=
 =?utf-8?B?VXlYb0hPVWp1TlZqdExuK0xMN25NWTAxS29OcHBTd2V5MWI2dXBRTUJmOW5D?=
 =?utf-8?B?RHV4VFR3aGFHYjZ0enBVUDVSVkZWVkdhbDMrSktiSjRndkdwVEVCMGQvZjMy?=
 =?utf-8?B?NktGdkFPRmZYb1YzR3M3RENaRXZ5elhmUXl4NGM5bm9VeGxJbDVFWXgxcXdR?=
 =?utf-8?B?dXpMZS93dkpjU1BEREUybENxWHIxbXRIQlhxdWZYSjVHclBOR01rK3dpMytP?=
 =?utf-8?B?cGpmVTF2ejhURGxXazZ0OHdlMnZ5V3BWQm9qLzk1dGtCemRDcTJQMmQ3blc4?=
 =?utf-8?B?R2VpRjlQOFBsS1RRdXFLRktKMkpGQUxwWjRiODMzN1JaUTkzUUdzbEQ5c2xJ?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f80695b3-51b3-4638-a98b-08ddd32c88a0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 07:57:18.2740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cqw0n0+JqNYtgzpkEOvyUPXB3cImKJek6HnPvHin5IiFTYrXvUM9kdbtT90N/RrkY8WlOfhC4G1s1qyB0jZYb4Z6mgdGLD/PCngFjVVldEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6331
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

It is unlikely, but possible for the first call to
intel_context_create() to fail with -ENOMEM, which would result
in entering the following code block and decrementing "count",
when it is set to 0 (initial condition in the for loop).

Protect from overflowing the variable with additional count > 0
check.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index f057c16410e7..cc0798dd30d5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -904,8 +904,10 @@ static void active_engine(struct kthread_work *work)
 			arg->result = PTR_ERR(ce[count]);
 			pr_err("[%s] Create context #%ld failed: %d!\n",
 			       engine->name, count, arg->result);
-			while (--count)
-				intel_context_put(ce[count]);
+			if (likely(count > 0)) {
+				while (--count)
+					intel_context_put(ce[count]);
+			}
 			return;
 		}
 	}
-- 
2.34.1

-- 
Best Regards,
Krzysztof

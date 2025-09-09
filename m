Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B09E9B4E99E
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 14:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0533E10E6E8;
	Tue,  9 Sep 2025 12:09:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YEkE1utW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DC3110E6E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 12:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757419783; x=1788955783;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=kM0StvO3B22nIr3Q1TAwgB0wLeiPdmcqv59vRzNkzzs=;
 b=YEkE1utWbNjS05GZ2xMrGWQXotONKDnmXY0nQry6SlrfFWpoNi1jpZoX
 W6YCvRkyYGuWPnpjPS280ELALZHAHum20gWcZgPGzszZzpyw+YYpQs22G
 wqq7MdcJ2Kj6fwxD7vz5W1N73GS1ukSTXiLCrlecyNVJbLGRVkaB/apmW
 pr/cwfYMhYhvd/rFu8wpv8K1TvobPF00ow3spD47d/5hV8GA3Cxj+SgV9
 OyYViPH5Ah+VG2xJXq1QAKsxkPCuzJe5qUPoMkkW66SGWbekBisGkfDH4
 U4VgXrxV4qXvbiUA0ae4zmaYPnlEgxqO9xMGFAGXus7xG0L84XTRMfU3F Q==;
X-CSE-ConnectionGUID: YE2eIslvTa+PlDusRGKfCg==
X-CSE-MsgGUID: fnik7UPuRZG6Fr6/oFZ0mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="71118558"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="71118558"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:09:43 -0700
X-CSE-ConnectionGUID: gYpSBw/0SfuD8B0U0rPJ9g==
X-CSE-MsgGUID: OfQnx4Q2Qu+/iFXSc/O36A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="210226254"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:09:43 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:09:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 05:09:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.67)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:09:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mb2kzVqkXnl+6ezG0kP4V0NXKz7lQrcq8LO4pwK5Gu7/DtU2vEOWvpLE7APCH1JVs6JlVzD5RQXpgRmNldsQJSVuYMxFFuO8AV2/b6VQqP9UMepaBy81340Za3pPFDJGc/JRr5DBiM+CnDoUdVznFI7XuDXvi5JO1ohd39oPmlqTcncR39BMVuQIDh7362jBoYgaNJlCGJXyIXmC0ZyEPyHU1xRZPiDtN/rftdxkvZOsoMkVEz/pAdCuoqmyTREoo4qi7QBSVuxeUemdBcu8zSWZKyJZUjdINDH4yJBwvLJeWwElTF7+MN8vsdqDXFir37Sv9/O5SsECtW4OpFtWTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k3ur5qrevND5Nr8U9VZNSjjJPz0AJzn7wQSQiFo4MTQ=;
 b=GA4m38XV+3DUJEAWkCYVXNKoZ1ExWpTJqWKiK8jP//OHEnKQRfQF7FgdA/YepTI+skEv7lKMVF/DRhTHX0VlgfdbvNxVTmWq3YS7vtJ9Ww9D9AN63f5HTci64baBezlnqwVDxWWuwhvkYNBlyLOlPeJk2smtGMCbWYQPTCNIU3fZgCJK87p3VIPkyqxoTBQDoXmEnit58V29YKp84KwRcyONM7tpQjhRyaKLxJVviAbaQnc0C7cwuN6zoM58y3qxZ7PNQZ2tUoNnZXXHVkwCTTNjbhc2spWZKaLVcuPRQo4xfLMPC59aGOSlGUXXIZH0ptWN0kICVx0omFAdRUMjWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA3PR11MB7980.namprd11.prod.outlook.com (2603:10b6:806:2fc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 12:09:40 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 12:09:40 +0000
Date: Tue, 9 Sep 2025 12:09:28 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH] drm/i915/gem: Avoid accessing uninitialized context in
 emit_rpcs_query()
Message-ID: <casutxyfjv7o4ivadvbich2sq2dt22btc5wcke55r56ptgxx2h@lv7hnxrqw5rq>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: TL2P290CA0013.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::7)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA3PR11MB7980:EE_
X-MS-Office365-Filtering-Correlation-Id: 81cb4bc1-14bc-4617-f617-08ddef99c0cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aFZFYnFpSTdobTJOck83eXZCTTBwdHhBVzhoSXdyQ0JhZzhYc2E2bWE0bmxk?=
 =?utf-8?B?NGZ6TE1PNzlyRll4SVNrb1REZE9kbFQ4S3N1VUpNR2VsNmNGQWxEUzRDK0xS?=
 =?utf-8?B?QmVMalgwbEdOUW5wdjZXZ3JFSkpmVVZ3ZGVXMTNiK0l1ZHRpbTZHblYyNEJW?=
 =?utf-8?B?SW82MGJRd05RSzNiaExOUHBnZy85ZnpWclNhM216RmxDRmtKVmhpKzZCdmxt?=
 =?utf-8?B?bVV2NDJ1UGxyTXowTTM2RVRob1hRU3QrM3JEU1Y3cEJseUpjWEt0d3ZkT2V0?=
 =?utf-8?B?OEU4YkRhMkpoOCtsQlUwY0VRc0cwRDI2T3IvMzYrdmF6VEdHZVpmUFduc1ZK?=
 =?utf-8?B?ZmdFVk9LMkpBMWM4ampVcDNlbDFvZENiRGh1SEpBWkFWbm5nNUhVTWFvcWdE?=
 =?utf-8?B?cWt6dTQxSktIRmdtNldaWW9wc0lkazhNdVJFOWx6L0pvbEFDMjkyRXp0bXZT?=
 =?utf-8?B?Zm5BdFM2OWM1VlV5Rkp5ZytXbzBrVm5ZK01OQVgzUHlFV0NwZkswYUlTU3E2?=
 =?utf-8?B?SnRqZzdUWlk1dGN4eG9FNEl2NlZvZG9kelMvRzhzdzVVa00wYm9seUxQM0lG?=
 =?utf-8?B?djlTVU1rQXBaWjdQcnA4YTduM2NCZ0Q4TmNXTndwRlpLbGU3cUMzaTNUajJD?=
 =?utf-8?B?RERXN25uYmRSbHFIZXAzSlJZb3BqWmpoVnlmSlg3NHJUR1Z4UTk5YW5JdUph?=
 =?utf-8?B?Nk1wYkpYSnZrbWVoNC9zdVBPa1JwOC9PcXl6R0lJSVEyRnh5MllLTzltU1p1?=
 =?utf-8?B?ZVdydWpYOXlhQzBqK3NPb2dPODBjejRTVHAxT3lPWStsVVVzUGVSVWw2dHBv?=
 =?utf-8?B?TXJmaFAyRnlVV05XTkdkZXRyYlR1QUxxTmdKSStsUlBNbE12ZnoxZThuc05E?=
 =?utf-8?B?ZDN6b0tMQzlFcmUyL3JwSVRwMnpuSkcwa2VoM1dONjZ3eHJtN01qbDJWY0RR?=
 =?utf-8?B?b3FlQWRtV1g2ejA4SjIyYjRKQXY5MWNMcUpsTTRkOGJNdnkySXVJQXpualRT?=
 =?utf-8?B?VkJmMjhLQi9VVE1FYlc2Ti9lRzd6UEZxaXdDbmI2ZU9MSTJaRnBSMGFqYXhm?=
 =?utf-8?B?Qms1QktYaGNVMDB1NDRONWt5MEMwUjJ2eHArOXc3YzgrT3ZFdXZ0UVcwUExn?=
 =?utf-8?B?MmVmOGRFV0dETDBYV01qZm5vMFdWOGcrUGNoVWdGdDUrMkxtZ2llbGRCTW5v?=
 =?utf-8?B?UGNJVHg5MWZKdk1KbjlwMzQremdUZUV6dy9pYjE1WmdLUmNHQm9MVmluYXNR?=
 =?utf-8?B?VDYyYzBmWWN1bEZwWEhlT2p0Y0RiRlJXZ1lDVkQza0xCWXN4TFZKYitwMnk5?=
 =?utf-8?B?UmNWekhjSnU2eVhkTitxenJqc3lQeVY2MjkwY1R1b2QvVVBreElpckUyc25T?=
 =?utf-8?B?bkpGeXhhRFNucUhYbUdvaWt4SXRJbE5lZFlLTE5qcEo1NkRaYVIzS3Z0U0NE?=
 =?utf-8?B?S2pNZnVaUnFhYTFrd095VEx5Vi9yOTFsMWRxSW5uempJWXNiMUR0R0owTHJ2?=
 =?utf-8?B?dmp4aE1EaHRXaTVrN2RhRktwcHdNVVptQm03aEVSUm5STXRvM3JKRHQrVWNu?=
 =?utf-8?B?bXFncCs3OGtrb2JnWXNrZ3RwZVBXVnI1bytObk5DVVduM1BoMkMycHhZUWx6?=
 =?utf-8?B?SW80alFxSkJMV2FpNTFuRkYrbGVkRUNvNTJsNmx3bWMva3Z6K0xrbzhnMG9E?=
 =?utf-8?B?RDlDSmwrcGFvSEIrZXBqaGpmNTFXRkoxOW5JRnZ3eC9EQ2NLTTNQZ3FrdE56?=
 =?utf-8?B?YUVodEZ5MzVrcU5DcnBpU2JlTzNrb1dOQkJ0MzZ1TEVQNTRmeFh5c1lrek80?=
 =?utf-8?B?NUpEczdqZ011cXAzYWcrSHkrdHJzNk9tWkJWWjNFa2xWUkFFbnJubWVQMWxK?=
 =?utf-8?B?ZEdKQW5iZUl1bmxxSmVCYTQ3T2FPV3Jib2tGTXRyN2Yxak0ycmtlVk1zSFpn?=
 =?utf-8?Q?XKOx76/xUpw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVNnK3gvT2ZYTHBNaEJVRnp4cExJOU8xeHpLRFM3NHZNRGtUVGs4VVI1Z2RD?=
 =?utf-8?B?dUcyVWxKZks3KzJpU0RtdlRpZ3NjSEhZemZ3OHR1bWw4emV6UDZaMEVVRUc0?=
 =?utf-8?B?U0VndHFTRm9zTUJWL2dHRmh2Vmhxcjk1RmVJVDZPUlYweU13YzJoaXpITkpI?=
 =?utf-8?B?QXJtWVQ4cDJCeU9NRExNRkJsWnN1MXQvQkhTa1RoSW9tRXRVWVRRc2hDVWdJ?=
 =?utf-8?B?a0NaaHJlUkVjVGtrMGp4Zmh0TS8vWWkwVXpaMnBsd2pxZDcyL2ltZWd6cTRF?=
 =?utf-8?B?RXhjb0Y2ZkJTMFNwUHRNUFJCVnBvOVlpU0N2MWR5S0tvU2pVTUsycjlaNFdp?=
 =?utf-8?B?cnVjdCs1dHJiT296b3J2TzdlNTJmdDgvbXJ2Qndqcks1Rm9Udit6SytabFd4?=
 =?utf-8?B?cmtxQS9PYXNpcmtnaXhORXhzcVV0RGlCNUFVVGdnSnlKOFBqZ2N0aTFUeSt3?=
 =?utf-8?B?UDJtWDdtbzBZbmkvTmRlWXN4MWJOdHpBVGU0cGZUOGVxcndxWHdCM3ZEK0pt?=
 =?utf-8?B?UjZVK2xiYlZKMFdsajVhc0dSN1FkTW9BVEhKL2xDWm13TjNSK1RVZkhjNHgw?=
 =?utf-8?B?VU9IMlAwa0xiUzgxSnI3d2kzQ3BoUlNvenJkYUVOZVp2U2hDRVFsNFFmeHRL?=
 =?utf-8?B?MDZ0c0xhT0pmOFJwZitvZUhzdHF6VHlyZG0zNkNvUGNoOVRKV2dJOXU0L3Vh?=
 =?utf-8?B?RGdZZUVzOThoK242MktRTjMrNHFrc1VXN1BuWmRLd21kbTk4cVRWM0dxbzNT?=
 =?utf-8?B?ekpTWXJOcFhrTkx3WlV0elVwcFBHTVMxWExsN25FWTE3dGxMcGg5bHQ5UmZU?=
 =?utf-8?B?R0FkOHZMNk9ob1oxSHVEU2JOc2xJaDBqT05rY2JrWTJBM0ZySXd3c1UxSkx6?=
 =?utf-8?B?UHpIL0J6cnRBUjhOUHovelRKazlpSkhRZmtZNWwxZ0JiVUFPbU0vRHovL1Ez?=
 =?utf-8?B?RVVlNVdIaDNUNnVSR3dhalJwcTlvUW1UMjh0NXh4eGtZdjRyeE9SMGYrOWUw?=
 =?utf-8?B?VkpBdEhWRUhCU1Rmc2VCZ2J4TjhmMW1HdjRuWGhnUWNWcTI4Tm1nSElkT2w1?=
 =?utf-8?B?ZktzZ3NWdHJXVEpyTEZqMStCbGVtZVFNL2VZY2J1Q1g0L0pkMzlORnhMY3Jo?=
 =?utf-8?B?MkJ0ekJOMzFDZXRaSzN2WmRGaEp4VXBXUDZrVFBDeWprcTlBZHErNTBlVUFQ?=
 =?utf-8?B?YnowOEdDMFNWV25mbHN4QWxVYTh1aUV2cGtlZXFYV1pqS3V2ZmMzbEViQm9S?=
 =?utf-8?B?UXlrd2dsbjVQc25KUlRERXEwUVZLanZta2xFZlducUtmSW1lUkJuYlQyTUt1?=
 =?utf-8?B?dUxUWUpHVE0xOGpMVW9HaVFSMFZ6YXdFSzExVU5lWmFEZ0o1Rk1qZ1NFM3B3?=
 =?utf-8?B?NWxMYm45VW4yZ3NWUHBrcWhFaE55OWJkcXZuWnJOU3RZZ3d2TW16Y0pPWDF0?=
 =?utf-8?B?alo4RnJobmhwdUVRellIMEEvNHNCYnpmNmp5MTF3UFFBUGNTZWVOcEpSZnNz?=
 =?utf-8?B?SlpHOVo3cVg1NnJGelZLTTY1R0JXSmM4ZTM1SkhtUmhRQThUS3lNNFk2aUlK?=
 =?utf-8?B?LzRnSExVSTZ6VFF6OVowMmJUWkI4YlRqT3BaSUhiL2lyZlU0ZjAvd20xSEJT?=
 =?utf-8?B?Zzg2MnYyQ1YxU0szZlQ3U1NwNmV0eEZpMGptamN5aVVUeFNHSFo1SGdUVmRa?=
 =?utf-8?B?RHBsR0NXSGJVdjB4UFBQT29rRmtEVjhVdDkxL2IzMVVzK3NuSTBhR3RJbTJl?=
 =?utf-8?B?R3ZMdWwwV1ZlV1R6OFZVb0tSMzRTQU5VdkloSzl1NEMrOGp0M0JObGwyN056?=
 =?utf-8?B?RXI2VVlpMmJFU2NReGtPNEVmUDhYcUZEczlwaGxWclppcTQzenRvOTVnMmZl?=
 =?utf-8?B?TGVpQUhjZkJiM2g2WDJWUktqdnp1MDRlazRRRU1vQi9jRWVIUnFhNFk3bkc2?=
 =?utf-8?B?RGh6VEF1WEF2cC9JUmFmR3VjUGJRajN3dTFEdlZZRXRVWEQrZHJVblZvQ2xI?=
 =?utf-8?B?RXJTaG1JQlUyMVBMcjE1UnZkYWxBamNmQTJDTllKUFNVNnFiRHR1dGJlQkZx?=
 =?utf-8?B?eDZjRGNaMVpnbDFpblV2SVEwK2E0T0JuMkNmNnNsbTl0emREZXZQY2UrY0F2?=
 =?utf-8?B?a0t6YlQzd1QyNHRhYXFNakVtdGJSZ1RvZXVKQXNaZStIdkE1MUxHdkVSeUp4?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81cb4bc1-14bc-4617-f617-08ddef99c0cb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 12:09:40.3212 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Pr5fmZ1JLXEP7mqefpAzvPhSle0Fba2+ong58yWC+Rc7mfCW0wwRy7QCVOVjICina6RT0Jw+poC2ZFx06m/XgNEyVaWZedGcV54vAT1hPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7980
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

Following the error path in that function may lead to usage of
uninitialized struct i915_gem_ww_ctx object, so move call to
i915_gem_ww_ctx_init() a bit earlier.

Fixes: 15b6c9249870 ("drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.")
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.10+
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 This patch was pulled out of a series with mainly drm changes as
 per suggestion from Jani Nikula. The code did not change.

 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index eb0158e43417..1330c0b431a7 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -962,13 +962,14 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 	if (IS_ERR(rpcs))
 		return PTR_ERR(rpcs);
 
+	i915_gem_ww_ctx_init(&ww, false);
+
 	batch = i915_vma_instance(rpcs, ce->vm, NULL);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto err_put;
 	}
 
-	i915_gem_ww_ctx_init(&ww, false);
 retry:
 	err = i915_gem_object_lock(obj, &ww);
 	if (!err)
-- 
2.34.1

-- 
Best Regards,
Krzysztof

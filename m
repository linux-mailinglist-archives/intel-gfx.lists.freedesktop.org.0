Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 953BBA1559B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 18:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0EFC10E0B1;
	Fri, 17 Jan 2025 17:21:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VDZzBGu8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D9810E0B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2025 17:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737134511; x=1768670511;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PisW/1ec8v1BtgRaqpuqR1bJWuNwrdgHgRG7gUxOSzU=;
 b=VDZzBGu80LdbySdI91sjAzCYh3BlteD430GX462t4XlXa6AWglF8R1mr
 bVt/433RsNqCVcd1g1yV6/5xMb1odhGcyvf178JYRf0G8sRAyBzGncUdU
 B+C0azqfgsp1WlzxfV5dfFCnwRSeCyaChzcRiz5QrlPulTEkQycuFDSXW
 gkWCXGf/9BPdIVV50qdDdT+RYmctVxLx5Xfb8HxPtaPhkG/mRiUQWc7XU
 x1hGIfn5WeMpbVXUCMrKruYppcguSKVUhdVRgJMK27gzq1Qiv9w/AsP0R
 79TN83Wm/fbX10IqypIELWWqYIPrfZ01aVWYk1IAqSEiE5ObB0iA8FUPS g==;
X-CSE-ConnectionGUID: fzRSnesASJWhPhQc0GBtaw==
X-CSE-MsgGUID: kBuOaBH8TGqkhtbzTDbC2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="41339846"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="41339846"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 09:21:49 -0800
X-CSE-ConnectionGUID: iKAqxqhGQnejZLEMribIeg==
X-CSE-MsgGUID: K3VAe3DdT3C+O7hqXFyVGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="105823243"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 09:21:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 09:21:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 09:21:48 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 09:21:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HoVKWpttLdZBuF32iP6sVSaVBEheo97EoqQh1kcdZ0NKUAWR2VfEiDjJclPfbZVIDyyuHdvjsNg4JcfjogmqfaVERc3T+3XzRnpt9ZGe74T/VUSdj16wr0wMl18dfSTPVsm+VtPJdKUY9tANf+ARDHKMJBPTgoyZKmI9xkxxWkgkxGbR4GEZItaQczpjkrp/eSrRLZAFNMMnT303avwlHHV0A2/Y/j5zoGxCcGSH3KI//SUGZ9uTXUoc8wx4elyzJfrh6CwUv3ig/eFszS71jU6biH2BMRRobN17iEtgo89HZiUXMnpdzhB4XWuAWhQhLjzHDQXjwUKpeEyWtcTndg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6zVvvj2HP2793NZYmdqbtIqopKnrOjTQ2bMdW8bi/0w=;
 b=MWGCC2VNsk2JL4L7l3/TLjlWvmG2FSq+vbibtF+SoFAdv5uh9//UVSegRCpMOa3gXLpPYsczYf8k5eWLzVJgWqv/OCfIAk6seztKXBLDx6ahTmNmwHqialnxQd/IvHISB9c6Tz+Yjt2hGQu9oWV4vIcQ+hmT6HFl/VipLBZlGLToQRg3t9HwqzpCYkstrVTBvhcgGy369B3pMU3E7QVAvZXvNt6UQdQEMcD1KvQetidK+OMJPQHFYNrsNp5hfkviNRnp2SBaZFw0eZAwF+w04Q2e1iX9BUv1JpO2Iho9zL4fPKlyxyI5S155VJo1bWSSyaDjNLHM91OeLrKxXgV4PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by SA0PR11MB4576.namprd11.prod.outlook.com (2603:10b6:806:97::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 17:21:04 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 17:21:03 +0000
Date: Fri, 17 Jan 2025 18:20:54 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 1/8] drm/i915/gt: fix typos in i915/gt files.
Message-ID: <fxka2ywsayqb6u63jmwzvqs6ndmi7emsgs67h23o7tzjmgur7t@kvpczybuw3pl>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
 <20250113184318.2549653-2-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250113184318.2549653-2-nitin.r.gote@intel.com>
X-ClientProxiedBy: VI1PR09CA0120.eurprd09.prod.outlook.com
 (2603:10a6:803:78::43) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|SA0PR11MB4576:EE_
X-MS-Office365-Filtering-Correlation-Id: d8012e5f-9b4d-4fe0-502e-08dd371b51fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjNUZEExNzNlK2lWNGljTXJvUkhQN1NXemVGVExTMTRQRWFnQTNucVRZeFNn?=
 =?utf-8?B?RjZuSDFvaHRnUGdUM2Q1Q1I0cTIweW5US3R5QUVoY2crVjRyRjkxNk9qYzAv?=
 =?utf-8?B?eXZVRER4YWxROUZBT0FFSEY0d0JnNU5nRGJIV2pURGV1bGN1NW96QWpjYnBn?=
 =?utf-8?B?OHd0RGlSdEo4N0ozQnBhNFBld21jeG5lWWJxcklhZ2VNNmJrK1Nsckhrb3NF?=
 =?utf-8?B?RmxSVzQwL2s0NXd5T1o3R1IrZTcxVENQMkh1WjZHYkNSYUpqd2ZKdTZsbEpX?=
 =?utf-8?B?TFpJdW1WTWRJZ3IzVDU3VUlRbFR0Vlk0VUVPaloyemNBSW1FUjg4cTE2ZnB2?=
 =?utf-8?B?MDBoZjgvdlVaRWkwb0owdDRiSHBoRzBLNjFXbmpjYzdZZWtWOENjaUNmUURZ?=
 =?utf-8?B?TmlHQ1BtODdGemMxQXlSKzFkb0d1NHhmWUs3dWFpOUNLTFlyZHp0TXV2Qnov?=
 =?utf-8?B?TnlDZTBrWmJqWVhpWDBKNWJBV0FOQnhBN3JtTDVPSkVhcGFway8wS1c4bmJY?=
 =?utf-8?B?V2ovUW9rcDlnQW1NYnNmMkJueExGR3dJMkxjUjhxM1pnNWxiY0k0RXBPSjlq?=
 =?utf-8?B?cjZYQzE4UFRLRnY1SUVlNFBYeHNCYTdKVnFrOGFrZHpzbngwaW9VSFBpUVVB?=
 =?utf-8?B?Mlc4QjZ6akV0YUFoeGNsSjZZV3VvZXVPb1BuWlduczNsWktLdnZ5RElYV2lB?=
 =?utf-8?B?Nk1PbjVTK25jWnFmRi90dGo1Zi9Ybk1vZHlsSW5mUDcrWEJVVDFVcUYvcDNn?=
 =?utf-8?B?akozZEJ0Z2F3cyt2S2J1UHN2VFpibGwxcFNaekhmdXNSZXl1YUV6OElwVlNv?=
 =?utf-8?B?dk0zekdUd2huVkcvWGhaZUZQRTJPcHgrL2JOYVkvT3JMc3Z1YTZnMDdtcFhY?=
 =?utf-8?B?Z3hDVkhUV1ljSWVCOXcra2YxQ1RqK3FrSFJMakJYUjgyNzBhc3lkWmROYTRh?=
 =?utf-8?B?WVJGR01xWnEvQUM2aDRYWEs2QTg1b0l5c3hEK3hNdzBkV09VNGpndTdOUXEy?=
 =?utf-8?B?ODRld0pMNmtKRmI4TEl5ZFdkSzR4c3c1ZmgxOTV3TkJQcGcxNXR5R3NrcURt?=
 =?utf-8?B?b0hkL3o3ZmdxMkt4eXFBeitISVd3cWVkWEVNdGFxNzBmc3ovUG9wWFF3NmY0?=
 =?utf-8?B?dVlCcWJHWEtVYkxCSW5mbWI4T3lBOHlwMnNnSjg4eFliZ1NraStjeWxlZSsy?=
 =?utf-8?B?eHNoT21yOThIcXE5b3JTUGtsVmdNYXZySlhFNklLM1Bic2k0OHg3RXQ0ZlE1?=
 =?utf-8?B?cG9QRVJ2dm1Ya2dwdDZyZnpHWWxNVjFZd2VmQks4aUhpcU9LVjZsMW0rT2w3?=
 =?utf-8?B?bnBxOTZNNFk4VGZ4UWxpZ1RLeDVSMG93OEFNOUsrZWowZW9INHUxZ2dWRlhQ?=
 =?utf-8?B?SEFoUDNHWTBVUkdiUy9XM1JoRTF1NVJnQytkVW9CcW8vZWVNMWpNYld3Uk5C?=
 =?utf-8?B?K3ZhQnV1anhDN0twLzU4bHdoRGQrRmRSZWlMT0VkNHU4d2M1eTRzVFpQTVc0?=
 =?utf-8?B?TVZmWW1lVnVqTGFCa0lQbDR0V3ByUU9qZXkwc3ozNmU1UjRZTFJSM3U5eHBT?=
 =?utf-8?B?OFF4ZFdVbU8vcC9NeTBQbXlvaHIrSHV3eTNKS3FHQ3Q2V0doVVFleWhvZ1Zj?=
 =?utf-8?B?SzNvNHBwd0x4M1VraCtTVUNyVkREQkFkRWM4Y1RTd1Zqa0ZKZFIvcXU2a3ov?=
 =?utf-8?B?dGFCYWFkajhKVnFOSDlsMUl6NE15azVIMyt6cThuU3hZRUhyWmYvL0dETncy?=
 =?utf-8?B?TXR2dStQYlFsOFZDM2NPRTJmbUdwRmJlRjBML1ZEN3gwZ1Bad0l1Q2ZvVmhk?=
 =?utf-8?B?VytDL1RHeVBkcTBQTnlSODJVQ1EwaU9wUkhUVEZSSkNjZFR5NHI3V0xlNGF0?=
 =?utf-8?Q?6qB5BGPAh9JhY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3ZpUDBiQjllQU1uWVRKTmxxZ2ZVTVQ5Q0k5bmZYcklMck1pMExydldpVEo2?=
 =?utf-8?B?NTgzRFdGaTJuVm1BSXpuU3QyK3RVRHVGUmRKZ1VYZkkxMHY1ZjdMSnQzdXhI?=
 =?utf-8?B?VDlzZDZVZG4vU0VHcVlwOXVHazFVaG9YUE0zOFRiWVZQMllTS3hGTlNuOXZV?=
 =?utf-8?B?RDBDaElURkI0YnUwTHViaVB0OWkrN2Rkdm51VTlNV0xMMHJqbVpvZ21WYkFY?=
 =?utf-8?B?UXdkNHRva2dhS1BDUHJPbC9TNFFFZDNQUkJQUncxSXlwMlYzNjNqYnRsZVdN?=
 =?utf-8?B?QmVUdmt6NW9nbEowMXp2SjBNbE0xK0ozRHNzV0l3NWRhL1kxa1hEMDZPSzFx?=
 =?utf-8?B?RXZjR2tiQ3k3NFlNMmxYNjBCc3RNb1d6YjB2VDVRWFZZRXpHVzhmMTNFcW5z?=
 =?utf-8?B?d1RhTnVnN0lxdTg0cldxajN4ZFRvYUFOZGcyT1IvaE1CSDFaTnlsNFUzUXcy?=
 =?utf-8?B?SkRJbjFWZTFEUDNFWVo4U2tsL3hzTXNQVkJCRW9pV2ZsQXNFa3d1UE1KSFd6?=
 =?utf-8?B?dGp1NERobVVJZGRoNkE0aU5YSy9ncUxWaDhNQzNndXlCN3RUS1NsQURvS2JP?=
 =?utf-8?B?WjZ4Vll1bXFqYkFwcUJiSDltVk1lSDhjTTJzbjdENHVoZSswQ0xHTXl2a3I1?=
 =?utf-8?B?WFk1dTNUMVpuUll4Q1dLdmpuU2FwYnZ2VkFuVkVoTVh2S1llZjJJM2xEYjZk?=
 =?utf-8?B?NzduYzd3T3kwOEZnbHFpMVYwZDhUUVJhNmJob2FxL1lBUmZMQU9TbnRVWkRB?=
 =?utf-8?B?NEJjZHJnNjRJem1wbnY0NkZCeHJqYW01TlBZS3JJN25pbkZCT080N0xuQ3N2?=
 =?utf-8?B?Ti8vTmxTeGw3cnBJMDZlcENHY25NTlBHRzhob1FueGpCY2pkRUxaNmVmb0pa?=
 =?utf-8?B?TlNVcDExZ0dYR2wyVjdYcXdjclFsUERXOEg3eThRTkFrdHlVanJNbVVRdXdj?=
 =?utf-8?B?ZkRvVHFza3hHbGZnSUdGTUhndVNkb1ZQdWZYUEM4cjdzL0FDamFRMHJhemdm?=
 =?utf-8?B?VXROTmpoUkFSNnJ3MktRTFJMb0RmOVNvbEFUTFIwTnd1djJGMTV1ZmpxMWZE?=
 =?utf-8?B?cTE2WE1BM3RGNFNLemxOUzcyK3NCMlFZVXpFVjQ2NVA2R2RwdVM2c1RwTjlL?=
 =?utf-8?B?aHliZXF0NDcyYmNRUGFpZHJiSDBWSDZoVnV2MTV2YzFNTWxVRmhSZW5NTGQv?=
 =?utf-8?B?SnJWTW8xekdERWhQK1lWcEFKTEdDRGtnMzlZMytpcXlOYWExTmxoRFhhOStM?=
 =?utf-8?B?aGNPSzBHbDM5NGhXRXgzSXlUK0Y0Y0R6d0EwcDNFaDBwREZORkxvZndzaWlJ?=
 =?utf-8?B?UDU0WnM3MTZzZkNTQkVrbm4wYnVmRlJNSW9uSTk4bm9tdVBEU3V3RUh5Umlz?=
 =?utf-8?B?eGYzNHd0RThKNnhiUzBNdXpqRHRvRWZ2OHZxa1hsd0l6RVFlMU5NT1JLbGRQ?=
 =?utf-8?B?MWNMaXdVMTFHWDlqWGFBNFZWell2VHNRN0lSa1MzdHJpUXVxYkpMQmdzT1pP?=
 =?utf-8?B?amlVTWVCbzUvMXFZdE4wdnEvZzcybjdrSDNwVzFOVDRIVjFaUFpDTmwrRlc5?=
 =?utf-8?B?YmMxOWExQlNudnI3ejRvNDMxRUhFSURhTFA4Y0pWa05RaktYdGluR2Y3ejhl?=
 =?utf-8?B?QTEyUmtxbmI0V3h6NlNCelhFbmlrNVZXL2djM0c0M2NoYWJsVFhuOWVLY1Bo?=
 =?utf-8?B?WkhYSnpqektUSDVHd3k3Zkc2SmtVWTAzVmpETWVwQUVBT1ZPVHhSNGlxUjlJ?=
 =?utf-8?B?Ui9PclF0QUNBS1pxMytiUlFCUXlCM2xwTkFaT2cyU0RDWE16dG1vamw0UnpE?=
 =?utf-8?B?WlpvZzRkdTE5WTBneTFrakk1M3lPbE5VdTQ1ZVM3cFFFZHZJUGVoV1JUZkdQ?=
 =?utf-8?B?am0xY1VEV3pxNHlnWXVaMllhc0FOT0E1dmp2WDFTYTh4QXp1RmJERkRycyty?=
 =?utf-8?B?UjAyZlUvd3U4UysxRUlxcTZMQTdpcCtsVGt6bWZFcVd0Vjc5QU1JNjhHVWZ4?=
 =?utf-8?B?MGZWVElPM3JqRU55SXpXZ0czcENSdEpRWkJDM0szZ0I0OVIxaC93bEpQNnh5?=
 =?utf-8?B?eXJSc3lvRVh4TUtpZngvZlNiNXcyNktUaUVraWJZTXN5NCtGNkNPRmFuQnc5?=
 =?utf-8?B?Mmh2bzJUeDBxbmc5NUw2NHIxbyttZzNSaW1sTUkxRjBUQWsxZXIrT3VocFpj?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8012e5f-9b4d-4fe0-502e-08dd371b51fc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 17:21:03.7003 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oxouSeFaSkUEOoQgvKg31JYQT0Dy2k9dqtKhyBQd7ufAVkB+J61/9DoDWuoQ8KayH7lRghZyzgiKgk7B+y+6iMjtsa/o0QCCfJpWV2wSoAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4576
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

Hi Nitin,

thanks for the series.

On 2025-01-14 at 00:13:11 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/gt reported by codespell tool.
> 
> v2: Fix grammer mistake in comment <Andi>
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Small nitpick - there's a typo in the commit log: "grammer" should be
"grammar". Apart from that, the patch looks good.

Thanks
Krzysztof

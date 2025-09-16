Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E999B58E7E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 08:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6EB10E676;
	Tue, 16 Sep 2025 06:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L7yYvtDo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB8E310E676
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 06:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758004462; x=1789540462;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wQ619dQud2VczufUqR2ayH/sS/O7UGo5znTQOcRw3Cs=;
 b=L7yYvtDoXm9SqFj8s80hk4hgLNuXwsBp6R8jWWWVaczURER6BhWntxG5
 8l87dkCV1TuBcubWszkzYMUw7KrVKU3Pt6zJz9e4T4L/QeMzoAh8Xpqcu
 1tAjh0C3FPWg5pso7qJdCB3roDMfjK1H2bGQOSIz8HHgS2pbOcl/VIdIa
 LvIQpo7a/D0QDcFyJfDb0PcoPYMCcnHnr+hnuJb4atKv5oYr6e6u1HpL2
 w+A4IUiV3W3eXC4U4YhPCj64wcl5Oai0EAHtVRjrJpe2zqOsnWFOIiAqA
 WuO1ijUzVSWVib0HIWL6vT2QRr0IUKoX/YaBQNFH8pifIV8dzcSvCh2XY A==;
X-CSE-ConnectionGUID: WGRpqp+CTS6/bsYM0ptJWw==
X-CSE-MsgGUID: u99iAQUCTi2D/pL0qUb/UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="71642943"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="71642943"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:34:21 -0700
X-CSE-ConnectionGUID: Tl1tG9iQTLCGS9E9ZVeTKA==
X-CSE-MsgGUID: rB6xHuVfRYCaZyg41pzA/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="175282194"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:34:21 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:34:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 23:34:20 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.38)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:34:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UoqxicBqj43inPKxn/2x4QEUowRZVupjBnZTj7/ni99+BHc6u3JTiISib6I31kiSO+akE9CAzrGA9aoncw82M1xdprZTIDfkuFIojLiWjKuVQOPCYChZ5AhtdH+vlLziLn1N3KFRw53+Kuk+ZX+pZAD1bGUSXODhIQNHAhlcdQdmGVzzhR+wFO8rJkV334NrCP9MXfqdFnkULzJ7WbhvEiMI4xeCqcWHaG6IcPS5Jx4q5zPRjTCdYO1Ut/HmWMDj9whJw3hlu0T7Q8UAOVssdf50OZqVlZA+8bmXJGk2lq2GkrYabUvK5hssZz2+rbDGxP7f4FOUJEnalkus0oQAVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J04j0XWK9CVQU9Zlq+e2+Mm5qcSlDulObY68jb2aeoE=;
 b=lvc+Xno8iSao2fpxYiyz+UtbrL7FeQrgOZBZoAq9+hiJjoV0ap+dGzDURb1U8ZiwcqUzfQZQsTpLcX4XNw4RLyjEOjqDc+0EUAEogIyBoISlao7PB6Js89krq5KESrxOdtlTWvo2YqxQfKPYnrF9cVKagSIhk06IiqqAorWdMizP/Ht4XwRj5hCF/KWxfqBuxT5UozuBCgI7dL1ksu23Z0gLD6sGDROEHxzTHipb7/ez99CDpmi1jX1G9lfT0I11F6MalIltdnpRE3l7HY61967VcKq34U6EcBXx9U6VGStZOXztKXfZryimaJtgpiYfUCCoFdadc8fX8+0yjuHAlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB5823.namprd11.prod.outlook.com (2603:10b6:303:186::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Tue, 16 Sep
 2025 06:34:12 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 06:34:12 +0000
Date: Tue, 16 Sep 2025 06:34:06 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 3/5] drm: Avoid undefined behavior on u16 multiplication
 in drm_vram_helper_mode_valid_internal()
Message-ID: <827eb7e52afb3e2a24988e4e12479a2a83b1400e.1757576103.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757576103.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1757576103.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: DUZPR01CA0279.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b9::28) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB5823:EE_
X-MS-Office365-Filtering-Correlation-Id: e09fcd40-48af-4069-c1c9-08ddf4eb0cb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUMxanl3K3hDczYwY1ZHRkRjMDNBWkhERFBNWWViWDFJYnJXUEw5REdLaXNi?=
 =?utf-8?B?azZITk1sbUVtd2drMDl6aXF3Z0ZwdjMxODNTSTNiaE5UZW9xNkl2R052Ym8r?=
 =?utf-8?B?RUpzVGR3eEZGSjFJOVVhOXppc1JyVnFoaExiMFNNTkd6Szh6eTQreWJIbkdU?=
 =?utf-8?B?Uzh1d3FOL3lxZTgvdGZNSEphSk1HNEIwejZYLzJNbC9Xd0EzWVA5Q1h0N3lC?=
 =?utf-8?B?aUQ2L0JCNjJ5YVQreFl1MXlMQmhiREdFQ2NMRU96a0xja0E2TExvZjM5anB1?=
 =?utf-8?B?SzJRVVFFLzZtc1BpQzh5bVF1ZzhQeVJPaVlFcTRsL1BhaURIZHZHZXM0UjNi?=
 =?utf-8?B?TzhoWTdxVjFxanRZejVsaGQwNW9kbmFESmF6OUt1OStUQnFZYk1SNmtma1dL?=
 =?utf-8?B?V2w5MDJwYlhhMldRTUNZTGtwSTh6VGI2NTlaeTdwQUY2NjJiRjgrNitlS3Mx?=
 =?utf-8?B?dTJUaENabU42LzdFQkg3c3dNQldSa3BacFc4bDhNdy9WeFdFYWhkc1FOVWxv?=
 =?utf-8?B?ak5PWi8ya1pZdkdMa0t1L0VLS3F6RVE0clhSb1JlNFJyTURjY1FEVTdubGdv?=
 =?utf-8?B?bTRjYzFtK09iSWFlSHNZZFo3UCtIbmVGZWJBWk5rOGVjbkk4S214VFZja05V?=
 =?utf-8?B?ZHo5OUhnNmtUV2dBVkNXRlM3Yi9wb3RRWGNjQjdKTnNnbVkrL3BXU3FPMHpj?=
 =?utf-8?B?eXR0bTJGOFMzMkJEaU1wV2M4ZU9RenN3Y2J0RmxPWm1WR0RaZmdtYWlYTmtS?=
 =?utf-8?B?TWdPeWFJb3A2eVViWk1uSURROUJFQWo2Nk5vb1JodE5QUTZvV095QWpVVjNl?=
 =?utf-8?B?OHdLY1NOUmdONlBTSmdlSFEyWU5NczdHeW5nbnVXQjkxVDI4K05nSVJYQVZ1?=
 =?utf-8?B?NWJrSWlOaUJNNm9RZkxCckdLZkJFdVU0SmFPZi9NUWFXVjVha29uc0g4WEh1?=
 =?utf-8?B?RzhuUmZSZDV1ZnJxc1RXL3dWOVRWWUcyL1U5cnE3UzFaaHcvT1VoT1dhcGti?=
 =?utf-8?B?YjZ3c0RGMEhYano5Q2M4TnF0dEFKT0U0dDI5eE5ta1FLSXZuNFRJRkZsVlZ4?=
 =?utf-8?B?RitZcHZDYVpuNDZjZDFsaDFOdmpqd29OR3ZwemVydHEycE5RYlRBaEY3ZWpz?=
 =?utf-8?B?ZERKV1JWRFVxMGhoUFR6clhVY2xaQ3I3OXhKOUlZdHhFa2xPZC9IazFjSmpq?=
 =?utf-8?B?SnlRV20yRm9QbWNGVU16VjhGclFkZVplTGRlUzNJbTVWK2NjdDhPSWp6NGM2?=
 =?utf-8?B?YytqcWtGUEVmdWxFSkNvRVdtMzNjOWlCQVh2L2tRc1B5RDdFNklzY2xCVHNM?=
 =?utf-8?B?ejNwTVFOZ2J0TkQvOE1UTms5VXlYQm83dHdiY1dwSHRtT0Y4dWtJWVNYcjBR?=
 =?utf-8?B?M0I4TlFzVVJkbVY4ejYrYXpoUXFjdEtoc0R3WDBvUXE3eHJTb0FlQ2UrMVUy?=
 =?utf-8?B?QmdNWUZEOENLWUs3dmo0MXUzUS9uWHpjTzBjWGZKbVJqV0FSUjcrcXpOK0RG?=
 =?utf-8?B?cThMRVM5QXFZM1YzYUs0TUlBbE8yaU9Bc0VrQzI2WXpGUEdSUXpLaElQZExR?=
 =?utf-8?B?c1dkcTNJR3lmd2RHT0lYYVhLb3JQOHlmQ3dFaEtoUGRKQUJuRzU1ZWg1T1oy?=
 =?utf-8?B?YlgrOFd1SndyeW01OERZaUlQSU5rYzEzRnRSbk5MRWdJRVVjR3gzZ24rb1Jj?=
 =?utf-8?B?bDRRQk9ML1Q2dk9JOC82MWo4L0xEdGt2c0JOU05YekVEVWd1QmdHdUlBa0Jy?=
 =?utf-8?B?c1VIVlB5TEFad2VhSFprWVNxa3BBcXRCS09yeFhEM29Qd3hzOWM2SEZ1eEUy?=
 =?utf-8?B?dUtqbkEyS0tTUWxmZDN2NkdhVmptNEdHdUVzbm54UlFoNisrZXhnOWQ0UG1K?=
 =?utf-8?B?QUdHMEROTzVUTEsyTmNpd1NQRWFRNzJVZ0VHYS8xSXhPOGxHV2huOWVnS2Iw?=
 =?utf-8?Q?6oTTki+VEhY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnJhSzdNWVUxRlQwbVV1cnVuUGFseVd4RUdmK28yd1l1K0xvNmREOHVyZSty?=
 =?utf-8?B?QXc4YTVFV0RXU0hXb2J3RER5QUNWaTB6RGNlMFd6cmxGb3MvNnJ6c0RSaXhU?=
 =?utf-8?B?UTdadGh4NUtOM3A2N3dXdXp3aDBxUWdGUXJ1bDh1TzV4QStrZVE1Q3NZbGpq?=
 =?utf-8?B?WU82L1ltWW8xRUVSejdsVmlGMmExc0dycTFFQ1l2YStoVjdEcWxmdnNHTk9H?=
 =?utf-8?B?d2lwM2MwSEkydWhEQm5RYkxTamNveXlFWWsrSEpTZmliMGhtajdNanlwUEZp?=
 =?utf-8?B?eS9WSE14N1AzdzUzSjJHTEhTWFFLLzM0UUlNVnpZV2YzQm5wNWJEa3Y0c2NY?=
 =?utf-8?B?NkNGYTF3azNpbkl4cmxzdlo4Nnc3M2tUS1pVM0prdUp2TjhybW1yNUxrS2Q1?=
 =?utf-8?B?ZWNHVWJFdHdCcXZrU3VlUk9uTVlqdEdKSHZ6M015eVF3U0hGQktsaFNRMmp3?=
 =?utf-8?B?eDdrSWtKUmFiWG45ejNXRk84TUxIUDdoRzd4ZUJSY3Y3Z1NBejIyWSsrRjdm?=
 =?utf-8?B?VjMzYzVScHZySzJsbTFJV2pSWk1WRE50Y0Y0WUJRdzZ3aWZJWDJSQlJMb0lL?=
 =?utf-8?B?R2hFdERNcHBuNzQ3OHl1QXVkbzhXVzRYU0pRdlc5MmFudDFCWk5yM0ZwZlV5?=
 =?utf-8?B?SmJoM2JSMzc3VEdMSjZLUHc3QldiWTUyVU8vMEIyL0NreDRsSmhEMktYelZy?=
 =?utf-8?B?NkVtNTNPejlUY2ZBOTFHdXF2ZFhJVmhSVldSQnNwTEw2bUNrL1VuVysyWnBw?=
 =?utf-8?B?TEtkbWpVd3VHTnJCNTVHSjJuMzhyaXJHYllMY3d6Q3gvOHhLTUpBMmViQ3Mw?=
 =?utf-8?B?WGxFeVUzbjRYd2x5bnpjSzQ2bVdqVGJMNWd2cEpEWTZHOG5OOTI2QVc5LzlZ?=
 =?utf-8?B?L0NYM1BPSmw1Y3haODllTytTeUNKOUcwU3NQcGRuRFd2cnBURzRtQUZTTHM3?=
 =?utf-8?B?bXpHVmZ4b0liRVdPa1Q4Ym5qL1E0d3F3Wm1JSTNLb3RLQ2dPWFh6T3g3L3pr?=
 =?utf-8?B?MmZaWWRVbVlQWE1xQmM2ZW9PcndSWjBmL2RvYVpaV2dheDB1SHZKZU9COEV5?=
 =?utf-8?B?REZmVmtxY1BFUUJTRk8ycFMrS2s2RzZzeHd0N2RSdVpzUXFQQS9xZnYwVitp?=
 =?utf-8?B?OVJmRmV4UXE5bUs2SEo1UXJ0TjZkZEhVMlFodThUSk9nbmd2MTZ2WmtTZzNJ?=
 =?utf-8?B?T2hRZFNvanV2V3Q0ZDRjaS91RWVELy9RdzlibTFrQzM0U0pzcHZkUWxKWTdY?=
 =?utf-8?B?RDdISmhQR0RIYW9hTUFQbnQvY1cwSktCQzhGRFp4YjM4M29RN0NzTXRqcThI?=
 =?utf-8?B?Sm1BTmVYNmdDMldpTzlQVVhJSnV6eXRRbnpsMUpXaDA1QlhzRjdhTHpMS2U1?=
 =?utf-8?B?VmRvT0ZUZVROYnhEa3dMcWFONERkQlRHankwd0RyMVNGeU5OYjIvZHZVaGZ0?=
 =?utf-8?B?NDZaRXUzalBFSmlGR0sxRFBOMlF1dHNCYXVEWXlDaGpSbExoeDNqbzZOL1dl?=
 =?utf-8?B?WU1MUzBrMUtQdkxVbW0rdWxCMzhMQWNpU2F0alNjQUtGQWdLZnBuWEFhTUFi?=
 =?utf-8?B?TG9EVGJJejZ0c0M4V2wvYWpnWVd1S3JYWStjSEREUkFhM2s3WXVoY2xqanVq?=
 =?utf-8?B?cThwV2QzZWhPS2JaZ2h2eGpFVHIrWFJaOWxBM3V0MnU2bHZmem1wOFd3L1Qz?=
 =?utf-8?B?M3B4RHlkNEdjbDI1SkxFbGM4Sk1aMXRpa1NKdk9wREt6dWRpbzErT2g3Y3VV?=
 =?utf-8?B?cjRCQVBMSDNrb0JxcEJITW5IMEhaakw0WndQWmVZcndZcW52LzdSK1FBL1gv?=
 =?utf-8?B?V0orL2RIck5SZXJiV3RLdDVuVWttUGlqSktadElNNytXTzFoWTNMV3ZOWnUx?=
 =?utf-8?B?QW1tbjlxaEU5ZTZkdlIyU2FVUEZUbFhobWxlWGlZOHdQK3p1Mm9ZOEtOQWE0?=
 =?utf-8?B?WmpDSGFYblhpaEZIdW4ybmUvMUhuOURxdk9MRkdTNDhhbkNXWStTS0ZxcURl?=
 =?utf-8?B?eU1XMzlZK0VRSlBDQlljM2lqbHBrdTgxVklNSU9Ob2xMMEpkYURncUVWdmdL?=
 =?utf-8?B?YnVzVWVqaUJhTmlFZ3JLRmFzakJmSVhhSDJwak1RMGUxeUhzN25vQ0MrSmw4?=
 =?utf-8?B?eTlEZ00zZEw3Y21RTGFHb2N3L3hLV2Vha0I5S1NZWmUzODNZUUdPNXVWZzZR?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e09fcd40-48af-4069-c1c9-08ddf4eb0cb2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 06:34:12.6077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZqlsU4ad+z4OK0L32rsEnqKPfEN9Y2zPuCCR9ZLLfr5DaRZrs3Yk/jhiOtM6BOgTnihfWFspUS0wZkzd7j0zuev176PRZosRVqKnFalq5MM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5823
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

Fields hdisplay and vdisplay are defined as u16 and their
multiplication causes implicit promotion to signed 32-bit value,
which may overflow and cause undefined behavior.

Prevent possible undefined behavior by explicitly casting one of
the operands to (unsigned int) type.

Fixes: 80f7c3f77697 ("drm/vram: Add helpers to validate a display mode's memory requirements")
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: <stable@vger.kernel.org> # v5.7+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_gem_vram_helper.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm_gem_vram_helper.c
index b04cde4a60e7..4b144e9603b8 100644
--- a/drivers/gpu/drm/drm_gem_vram_helper.c
+++ b/drivers/gpu/drm/drm_gem_vram_helper.c
@@ -967,7 +967,7 @@ drm_vram_helper_mode_valid_internal(struct drm_device *dev,
 
 	max_fbpages = (vmm->vram_size / 2) >> PAGE_SHIFT;
 
-	fbsize = mode->hdisplay * mode->vdisplay * max_bpp;
+	fbsize = (unsigned int)mode->hdisplay * mode->vdisplay * max_bpp;
 	fbpages = DIV_ROUND_UP(fbsize, PAGE_SIZE);
 
 	if (fbpages > max_fbpages)
-- 
2.34.1


-- 
Best Regards,
Krzysztof

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AACA49AB3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 14:39:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB0B310E2A7;
	Fri, 28 Feb 2025 13:39:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZQbSCK00";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2CB610ECB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2025 13:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740749982; x=1772285982;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=g7iPUCnjzjlc1lN00av5icbEhs/G79Yo/nfbB3+ZB2M=;
 b=ZQbSCK00GnCRALTGFRZ0aIhU8GgzohuSB5+bFNh7Js7slabRHVPZH6k7
 zNtpXfkXFzccSXhgcXLJhG0X3WSQKuZnhX8OcObdF4CmF78baY7A8+PDw
 AnNLSh/QVCDJgzGdwXz2kADlnJM7ZbIoHUkuSBHviahNuDey53ZBtDuPM
 J38kQWanzXcd80A18crddZfD8NlQnoKZhxOENBFwfyriirB7Gf61cugq8
 uN7pR6CFZNw+zY2u4wdVvl0hOHOosnDaYCtTNcQs9wdrhDixD0YaSX444
 SDnmRlww9UdZS296tFlrmoxOekd0VAXl+WZg+Dzuveut2lTQ0dQxhRLYw Q==;
X-CSE-ConnectionGUID: HB9kgzvvRyOuJ0/2FWMarA==
X-CSE-MsgGUID: rqXkI52vSHuoIlkO+9Dimg==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="41377898"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="41377898"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 05:39:42 -0800
X-CSE-ConnectionGUID: oE5J1W6YTdeaNRXXdzpHIg==
X-CSE-MsgGUID: c8CfCRzySuqk/mQ6AXf8sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="117323488"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 05:39:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Feb 2025 05:39:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 05:39:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 05:39:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UR2tPhF/PPH7/PC6yzpEuUc+oFYAV/mQs+GyGi1/7KH184tkISgchNkIsqmKgAKfFAsxjyqjP84N5bmzFkXasQFAPlRQpKtakM0YHATDy5YT4MFDOi/7hoeVVn27RQ0UXDVFwIeaH4RKHAQLxdqqV/ib8Q5k0nt/tqzAO2EtLmSO+v8LMzSiuCKj4uXl416I0/S02CMH3TJ+81dIQ9+n3AIXWa0TokYWCwJWw4VdCapp8gJ9r/TKPnhONYqqWUOnFcFZlbO1oe4B4G/hosB3hX1W30GmVc5/tKudRCia8CUktXJH4HjwgHv6grI+9+UZ7wkmMnyx/4gccossAnsCJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hOM5l5SZN3bpE9L06PQOZE7aYPRqauoC9BDstZMZ0zQ=;
 b=GzDQ/Ggew78edF4uAH1x2f3Z3jkHoQWtRV4/jz8vxHU63jJ/spg8dTHtxAwTJ4YSH3eKimomaBoHOV0qXJd1IoDGmOb+ChkIrKp66IMh/lpYp8SiNeXuxtw6pBk3NRo8PnW7dw1nZorxQHUa16G9cOXibgy8OkZR81nEOeaaZ0E9knMo0A5PowHSPgPCJEY3FbMU3NuSlj2yInF8WKl9A5W+omBM8MtmAwx3u6cNwbMEmnDWKCoGsnCeJkPeAriKqRbjvFUbopKUuGMck7WpK8PRLOXdij52EUyjKay98MVLRqVplhLiQyBzX49ON29+XbpuT0tqhhbBo70GrxGpJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by DM6PR11MB4628.namprd11.prod.outlook.com (2603:10b6:5:28f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.21; Fri, 28 Feb
 2025 13:38:58 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 13:38:58 +0000
Date: Fri, 28 Feb 2025 14:38:49 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: Andi Shyti <andi.shyti@intel.com>, <intel-gfx@lists.freedesktop.org>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <afep6ynabhhkgwnaqlmnsti447idy6lf73vteltmzanksk7amd@go5d73r5face>
References: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
 <6774543.4vTCxPXJkl@jkrzyszt-mobl2.ger.corp.intel.com>
 <2x5mflmsnr2uw4hpximytd6czfia4k7o2gfebyf34ovvb2mgxt@2vqna56iatm5>
 <2049735.PIDvDuAF1L@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2049735.PIDvDuAF1L@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: MI0P293CA0010.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::12) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|DM6PR11MB4628:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b0e82b3-eb7d-4c5a-b76b-08dd57fd409a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkF0M05kS3NyRXZWSFFKb0pkaW1YNmRIeUZnNkowc1RCVUk0enR5eSszQ2Ix?=
 =?utf-8?B?ejJxeWlieGxCTVhYQlYvL0c3R3RBU1ZyUGJoSytSVVJLV2RLMTN3S0tRbjgw?=
 =?utf-8?B?TzZOcjcyRG9oRmVFTTNsSE1ESlAvanUxSlI2M0pZVTBObyswRFhveHhMVnM1?=
 =?utf-8?B?T0hkbExmN1ZhaXRQZGl5MmR6Qmo3ZzhzNW5WWVk4R2d0ZDFlT1Z3cTZQZzRo?=
 =?utf-8?B?d1M4bVdOdEFiT29EMHl6S2ZLa2I0OGhhalJXZnBmSXp3Q09jNmxXZVdacHNy?=
 =?utf-8?B?K3kxRGNvSDBvZU5HWjliejI3U0tDS3dsVkpkQzduazdqYzcrQUczTGJqUEhM?=
 =?utf-8?B?elJWbkg1RncwNVFabUZUWXZwNHBIRFhTR0M3UmRSd3k2NUtqdVpJUmZKQ3dI?=
 =?utf-8?B?bEF4c2cvVmNoZGtEY3AwMmZBUWFRU3BacU15MktsMDBaaW9rQXBjVHJIN2R6?=
 =?utf-8?B?aHJqeXFOMFFSdit0TFNudXg5U0VLd0RBSkRLQzA0blRLQ3ErdkNsVWJuanJB?=
 =?utf-8?B?MnFUbFpFR2VKU0ZDbU1sc1RFNXVWcURtazQ3VWdzYTVvVDZOUFZ1dFVFSXlk?=
 =?utf-8?B?MFM2Ykd2UitEeDlTdUZ6alBUdDBMQkZvOXJmZU1IT1JLVjZ3a1lxZUNmWS9X?=
 =?utf-8?B?MWk1UmxTN3FDY1FQZUpqVFV0bUFidC9JZXpiOWhmUHBMYTg0VWovYW1wMk9S?=
 =?utf-8?B?Z1RKK0hETlhlZUFnSmNxc1M0OFlTUmp3RUEyVGUwWUxCQ2ZUK1F6bjdHWlpB?=
 =?utf-8?B?WTlHV3F0K1FEd29IVGNsN2FWQmlLbEpCRm1OVHJMMjBIUmdlV2s0Sm9DWHFS?=
 =?utf-8?B?MmZ1Zm9hcVZodFZZdytmNFRXZ3hFbSsvL2htczhEY2ZNeWd2enV4V3JPcmZZ?=
 =?utf-8?B?dW1rZHViMVRHUlE1Z2VWOG0vek9lWFBQVVo4M20zSjBSWXNaeGlDeGpjbG9l?=
 =?utf-8?B?M2NsWW45aFNPSER2VloxMTA1MEoyZ0hxQVNncFgwcjRUUkMxQVV1WWNrSVI5?=
 =?utf-8?B?L3QzVUpUSFZ6bThkcG84bk8xajF2MncyaFJtOEdlQnU3cm54ZVhMUHMwWHhl?=
 =?utf-8?B?TnVCcXVSWS9IQmFLOG4xaFE4cjhBQnJobzVxaUN5NHZteDMwTlVPVXBvSVR6?=
 =?utf-8?B?aHZrN01rcVk2NFgwTmp2bnBPYmVodjBTa2xnQ1UyNEd4NTdqNXZoalBSMzgv?=
 =?utf-8?B?eEllQmVzcUF2ZFhKRE5uRW1HcFJiaENFcTA0SmlzNC81YzBCeWFiNHdqWHc5?=
 =?utf-8?B?Q3ZNZ3hHTGQ1dVJkdTZIbUVic09UUDBweHozaVVhSTF1cHN3b25ON0Z1L2Fk?=
 =?utf-8?B?eTJUa2xSZFZwQ2pMOS9xWVVESkNmaVNGKzVkU2xrN1NvT2VGZ1NLbERYL2F4?=
 =?utf-8?B?WGIyQVpBeUZWZVZtc3VGZm9ITjBOaTBqY1pMKytOU0VCQ1N2UjIrRlpSbEdK?=
 =?utf-8?B?ZXpSNWp0QndBcENWa3BVZDNyc1F6UXc3RnQvdkorTmV0WGhjMWQ1SHVNbGlv?=
 =?utf-8?B?Njk5OEl0NWJ4Y09HUmpUSW5mTHNnNk5qYWZMZnhJdmFYeEQyemdkME1LVUEw?=
 =?utf-8?B?SHpHcU81K0kzT2VBMWwyVk1GQWQzUDhqSUJhcHovQVRLYTdXOEZWbVNqdnc4?=
 =?utf-8?B?QTkzRnBoSHRQSTlob0toUitLQVhjcTN0d3k1TUs3OEtzSjBERnJVZS9hQWs2?=
 =?utf-8?B?dE1nSG96V09VODZTS2lxck9uZFdrWkZxeTFKZlFiY1lqK1dPR2pFaGpsRzVG?=
 =?utf-8?B?VnZ3Zkdvc3Izc0NWNitBN3hFd3I0WkFSV2dKaVE5TjJXUjZoU1pKcEhYYVBU?=
 =?utf-8?B?bmhpeWNYZ3FEbHlJWWpoQU9aTENlZ0ZUY2xwUGMyWSt1SXcwc3l0aHI4VDVw?=
 =?utf-8?Q?63fjBgQf+lMRY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1hpR01VK2wxQ015bjJ5R2FLRW5QMHVuYWp0UTY4aXlydUdVM0NDb09Qb1JF?=
 =?utf-8?B?c3NOM1hma1E2NHNXSlVHZjlDb1Bsem5iUFFTbUJoc2lRY3RjTjhuKzFvN1Ft?=
 =?utf-8?B?eUppUjVwMW5aVTNVNTFhRDEwR1hpd0JpbWx0MUtVbnllOXcwT0dwN0gzWnov?=
 =?utf-8?B?czZYVXcvLytKdWlVd3d0SEVsL1ppMVpEY0RuWDZiOUNGNXZpMWZXbzdHSmVn?=
 =?utf-8?B?VWZZVnJvYU5wUSs0cEpkRjc2dFkyQkNteHdKN0hjdEplRWFub091d01IM0Ur?=
 =?utf-8?B?b3hnWDF6d01rY3BFUDRxTkRCMHBONWllaHFhQnV2UW1nMWR2d05aK0xyNmp5?=
 =?utf-8?B?TWQwSVVWY0ltZzM2SU5MbG5IdDFvdFNKbTVZNmFTMkU1ZWkrbG0yakYwK3BK?=
 =?utf-8?B?N1ZWZWJ3YXFQc3QwNVMvNW9lZS9WeHpPVjdLM0E2TlRIdHh3UHZuMnZmZndU?=
 =?utf-8?B?SnprZ2JPVGFlWkRBUEwzZjdVWDdhbU1hMERtR0VReXZBd3ZyaFZiWlBvblQ5?=
 =?utf-8?B?NjMwWFBNYk9hUzc1czZqdlNiZllJZi9RV2tGVkdvYnpKakNCT3c3WnB6b0VN?=
 =?utf-8?B?U0dJMGdzL1M4d2QzTURJcUVmS0o2ZkZpMzRrcnhhbzNzN2JRK2xqZ2RiTy9m?=
 =?utf-8?B?UC84SEE5SGx6WEtwQ3VENlhBS0hLb243RVp6OW9CZ2RPSlNDUjhzYm1yTkRI?=
 =?utf-8?B?TjZVVlVQeTF5b0p5YWtkajJpZkpMb2xQNUFVMGU0WmhEektvTlJYRnlhRk9q?=
 =?utf-8?B?S3JOSlg0WUFGWkY1SzRtNWFSemp3SDBIdEhYZ1JkSU1YRDZhZCtuYjlvNTh6?=
 =?utf-8?B?bHcwWU90a0RRakpKRU0wVVZXdWp5TWdDUTNQNm9aSjcyWUl3bVdJVEtuSDY1?=
 =?utf-8?B?bkxoc0thd3gyZnZ0eHJubThlRi85RzJQVDBZU2Y5ekdzbmxvNVBBbXF0T0Y2?=
 =?utf-8?B?bzFqYk10UTZBczQ0WUlCRWJzYXNkQWw4aHhMRjZnM2JRZE5reko2V2FKaVZz?=
 =?utf-8?B?eDRSRXdGOXdnaEJpQ2pYdFZ1blBYUUdjdCsyWmpVV3lSaVBRYS9uaDVIdEVj?=
 =?utf-8?B?RG9ZanM1Y3lTaG91RWNjSjE4WkdJeEsyT0doSWh2OWRBUDQxNmY1YlR2MVYw?=
 =?utf-8?B?N0hibXlBaTZ5ZVc3K1plUnhEK0VjajhMWlBIelNxWEUxMUZxUlQrRGpuWjRP?=
 =?utf-8?B?dGU4a1Z4c3MzK3VxenlMdU9LWmZDL2JPK3pJL2RGTDN5dTFnOVVtMGRueDYy?=
 =?utf-8?B?YmVVS3cvOHRrU2gwMSszdDF2VDlFeGlJYm5iMzNqZ0RCTEhsZ01GbGNrbWZr?=
 =?utf-8?B?N3JxeWRuQUZLNTFOVzdxWVErRXV3amtpUTRZanJ5RWdGMk13YjJsS3JzdEZM?=
 =?utf-8?B?a2pPa0NIUlZSSDZ5VHlJb1N5TFdpanQ3ME9Pdll3ZnFPTjJaRTg1dEZoUnVu?=
 =?utf-8?B?K0Y2YWRONW0vMHBzeEN5VHJjd04wUUJKakdLWkE0N29GZUZ2UTlMK2ZtZSsr?=
 =?utf-8?B?SEo4MGJNZ3BQTGkwVWQ5cnRIS0FzMnBienAxRVVVMis3SGZYVlB1bE5jWTdh?=
 =?utf-8?B?c1kwTU54cUhBU1BoMldVRVIwUXp1UmFSQ2NlbXZXZjVQTVJEWGRpSkt3YzBz?=
 =?utf-8?B?K0RiKzlsZXBIeS9sakJJWmF4UlgxWUEwRW5QRk9vZ2dRWHBtTC9HREV6cTZF?=
 =?utf-8?B?bFFMK3hHcWsrWHFwRmFYVjJNalN3UXhtRTJDZlVsNTNDODVkOFl4ZVFVckxF?=
 =?utf-8?B?Vm5nRForQWFJSnBXM1ByY2pINUM4RzcxM2l2S09IT1BvOUtqTzhEcmRSQkg5?=
 =?utf-8?B?MVJ1TWVZenRZNzBrcTYyL01KZTdTNTVmckU2bWVrRDZYOERhQk9QVWJoZEMz?=
 =?utf-8?B?MTVkMjloRm5HcjlJbXUwQjQyK0hQZ210SEhxWnZ6dENmWTdoM0hjTFFxaitB?=
 =?utf-8?B?SEY0NVpwbEFHUDdSOXMvT3p5MkhneHM1VC95bVhIWXpoUkZreGZpeU82RVhQ?=
 =?utf-8?B?bk8yck05MC9EbkVtM0h0K0F0bHVRSkRsR1hNQWpNZWdENnZtUHpNK0dWd1JT?=
 =?utf-8?B?TmVobG96Y3VqZEpvQlZsTjNqSWVNUDVhOEQ3Si9zWmNtbUN3aGRYTnJKRnl2?=
 =?utf-8?B?cm1iOElZWkEwZFh5bVQrZElvVFBSU09XRVBrQWdoZGVVaVk5NzlvT3A3ZmFS?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b0e82b3-eb7d-4c5a-b76b-08dd57fd409a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 13:38:58.0313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: po8ilf3ZIQnqgbHBiriZ4n1O+0rSlHoht/fSqAXeiugHHRlRga3LmI8/T2ZYrUphkDmQKY4bR6aJatg5wGIk9gIF7t9wzvWrzLcaCSTTjYc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4628
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

Hi,

On 2025-02-26 at 13:41:34 GMT, Krzysztof Niemiec wrote:
> I have two suggestions for a different fix:
>
> 1. Disable the test on systems with NUMA and/or if it's running in a
> kthread, on the premise that it doesn't make sense to run this
> specific test in a kthread. This is the easier option.
> 
> 2. Find a way to pass an argument to the selftest, so we can pass a
> known mm to the test thread. Then set it as current->mm for the
> duration of the test like you're doing in your patch. We could pass
> the IGT process's mm to "emulate" having it being the initializer of
> the test task; this way we're being a good citizen and we don't mess
> with some other process memory. I figure this is the harder option.
> 
> I'd try 2 and if it doesn't work then just resort to 1 if there's no
> better idea floating around.

From I can see, Krzysztof's idea won't work because we can't access
current->mm address from igt in userspace and the kernel switches to
ktherad before we can do anything in the driver. Or am I missing
something?

On 2025-02-28 at 11:06:50 +0100, Janusz Krzysztofik wrote:
> > > While looking for similar cases, I've found commit 51104c19d857 ("kunit: test: 
> > > Add vm_mmap() allocation resource manager") that seems to have resolved a 
> > > similar issue for then newly added kunit tests accessing current->mm.  Maybe 
> > > the approach used there is worth of reusing it for i915 selftests.
> > > 
> > > Thanks,
> > > Janusz
> > 
> > I've seen commit you found. It sadly uses symbols that aren't exported
> > outside of mm module and kunit tests 
> > and so I can't replicate it in our
> > selftest.
> > 
> > Mikołaj
> 
> Well, strictly speaking, those core symbols were also not available to kunit, 
> and that patch exported them to kunit namespace.  While i915 selftests are not 
> kunit, they are still in-kernel tests, then maybe it would be acceptable to 
> import the kunit namespace as needed to our selftests and use those symbols 
> for the same purpose as intended.  CI already runs kunit tests, then builds 
> the kernels with CONFIG_KUNIT=y.  The code of i915 selftest that will depend 
> on those symbols may then just check for CONFIG_KUNIT defined and be skipped 
> if not.

Andi, what do you think about setting selftest as kunit to have access
to exported symbols?

Mikołaj



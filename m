Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C2BB159BB
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 09:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AE5510E410;
	Wed, 30 Jul 2025 07:40:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJMPuojX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ECCF10E425
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jul 2025 07:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753861205; x=1785397205;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1XAQfsmejZtadXS1PGHFuX8nztVKq5C6xdL5Hq4Eu3c=;
 b=cJMPuojXfd2rtdrTyzj4rMCRXPMIh5IHY5fu5x6X+7Whd5u9yYQedZYT
 IV4+EWYSFh0ObYu9eivDc39FXiEJmtfRgMwUKpKqqh+H5qU21QpkKNWmx
 EKiv0d9TvanHRIWRIihsrXAjDWjIpeb/Uge6d/p3ac/qzmmMkOGh8MfPc
 mP5CfekCRqy6HS8wJoMP7ao/W/StcTwfAjax8APbHDkCLII+9Ho43/JBc
 RkJbX7JKfUKVmwOcaW3JtW0dv6cag5B+g+DuELK06o2mJnxxHlcYd3qRC
 Fw/iwS/P2LxYBCLXB8gMcaWr0tfcF2489gjgy4oCrfNRhglc8EPRp7zso Q==;
X-CSE-ConnectionGUID: mOa5Riu8S5mDh0dYTw1LPw==
X-CSE-MsgGUID: HspfPZGQQbyoh7AcH+tsJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="73606840"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="73606840"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 00:40:05 -0700
X-CSE-ConnectionGUID: utewkieSQVyrRKlo+tYttg==
X-CSE-MsgGUID: yrLqNb3ISLKQmh81XXWICQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="162801910"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 00:40:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 00:40:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 30 Jul 2025 00:40:04 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 00:40:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hFzXdWVMIm1VKl5k4luIuw7FVCAPKcPMJX/jCJWlW/tYB7VHN8JTKIaLL9kPb+rKGAR3yrXx3heh0tiIw5uAexRbZMUXt4BDwMhY9WR2ofC4f/MKJHTSjQ3Y4hYyPonfddr3A2Z0WUrAGJDj3FAp+PzP1UYM3n0uCP+LRVd11EGsniWdLUGxmSe1JtKSgbbbH5J4OqmnZ4Z3Z+aGz1fDHSkM0qqPJC2A5BawN4O3H6/m6OH7t3l9QwgMeeDqwKIK9QkBhMldVQHoEPhSp1I32NQ5mqxKlCAuJrZw9VFGHPFch//zK5sAkZDJLXE88nhcrAzsCU1/ArKfyGttNfQ92A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6eXkt0pFE4f91Z0sj+mL/rsca5hIpa9ltTltRuT9VnA=;
 b=fOP8hsXCRoOas9soYJorErGk8c8GfppU8BBgaI9QE8S0bxi3SJeL3WywYgJxlpKcC5FVPUuO0lKEcRLSMqiMRT/1QAuMfdQgmwNa+o4o/rJ1vHvUpbTYFai5aDaRAgwoM/d3cSxouRH+/I7VExWuvedCL+wPwZHb8MoZXwbCgY+/liFbXYnuksQe5iy+YN/m7rPdJDa22lBvniKu6Ii54uA1OMy+bC7Ai77DZPj4sHZ0MrUdc1WmMz5LP4K5gqU/sEKfmt3bEmT/u/xKYL9lo4m8VmUvbZqw8MgYMUFDCgKXSEbzXWj/WxDgiNEdZ/f02MZ4VabRsg02OD53OscwEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB4797.namprd11.prod.outlook.com (2603:10b6:a03:2d4::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Wed, 30 Jul
 2025 07:39:29 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8964.025; Wed, 30 Jul 2025
 07:39:29 +0000
Date: Wed, 30 Jul 2025 07:39:23 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Matthew Auld <matthew.auld@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH v2 1/2] drm/i915/selftests: Do not overwrite error code after
 intel_context_migrate_clear() call
Message-ID: <c0348e052bcb2870acdc15d60f5389fbdf4ef886.1753859971.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1753859971.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1753859971.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: VI1P190CA0007.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::20) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB4797:EE_
X-MS-Office365-Filtering-Correlation-Id: 79b861ed-7cdd-4f6a-c683-08ddcf3c3774
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VXFvbHljcWcvcDBTazRscW11Y2gwVWFQeG53MTFpT2hVbUM1U2ptZlpvU2lt?=
 =?utf-8?B?bXhaMGd6RUtYM2JaWExHanJpY1l3THYyekJvMTdHM1V2MFZDeGg3Vm1JMi9z?=
 =?utf-8?B?T3dXLzhJWkUzUFNBVC9TV1Y5L0l1OFpSNmRmeFp1S3BoemhFVmREdkpiV3NF?=
 =?utf-8?B?RlZJNFhhMWs0UGJCWSt3K3BCZXcrcXUzTE56WkhCNkUxcW9Db1Vxekh2MWZm?=
 =?utf-8?B?LzNRdnBOdVJyRi9lZy83c2Rsb1FJa3dyemlrOVpMMWVTQ1BpN0N5Vm5LcG9l?=
 =?utf-8?B?N2I0aVNOOWZwbDFPUGc3dkhMZGExY0JGT3hiV1NKQmVrTTR6d2J0blBWcXEv?=
 =?utf-8?B?cGw2dENnTjFtZU9pM01LeEZMTFdwVmYvTGpZWi94K0VtRDJDN1NlME1BSTA3?=
 =?utf-8?B?NDBKbk1tb2lIK053N0RDOEpBeFFYTHV1S3RWTUxPbG5KMlZERzRGTUdsRld4?=
 =?utf-8?B?UXYzbGRRdjBlN2UvelRsSU5JMStKMVJZWFFFQzU2T0FOYmV0REtaNnJoSzFr?=
 =?utf-8?B?Zlg3QmhGa0ZOZWRiZkV4ajlnbzlSVGpoZHlGTWNzeS91SDNJTjVPU2xaM1lC?=
 =?utf-8?B?dUdlK0hWV2Z5d3R3VHUvZUJ6OEVlcVpGNkVYcGd5L09qd1Zvb0RrMGEzb1V4?=
 =?utf-8?B?b1Bxb05MelJvci9GUE5TNnpBZVFUTnYwUGZYMGdJWm1QR3RDL0dkOFlVSVBx?=
 =?utf-8?B?L1ZDN3ZUZHhXQWM4WUtBMG9GeTB4L1g1aHV3bWErdEg2VE5sK09vdHFjRG91?=
 =?utf-8?B?TUhZbHc2YUM0RGJSdmxKSE10UmRUZ2gwVzF0SUdycUQxai9nMVRHK0NYWXJ0?=
 =?utf-8?B?TnN6dEVBUXd2bmE1NXk0SkNhLzNIdW1tb0dYbGVKUjVtV1N5MHhlY25tRjl1?=
 =?utf-8?B?aWNyZmNlNlhLWSt4RERETkR1dU9ldWpMRGxiQnBsaVRqY1Jnc3hGWXowTnUz?=
 =?utf-8?B?ZElkejJIOVhsVWsxQUJ4WTZsUVEzc3lxOEFCcWVla0NiMGZORGpwb0U3aUJT?=
 =?utf-8?B?a1pnMHo0SC9MN2I0aXhxd282VjdaUlZ4eXFFbHc1d29HL0FHYmlta0tWeUYr?=
 =?utf-8?B?YWhlMnVScHl1S3lvMWZWNnk4ODhKTG04OXhkUFQ4WVUvM0YzZStVVzE5WUpC?=
 =?utf-8?B?WU5PY3crd1RJMjNGOVVJeVI1Y1dGbERKamJZVnBZNExqNkpYRHlGZ2ZIbmxs?=
 =?utf-8?B?OVdZQTh1YlBZaEdhSmVXNGRqdTJtVTcvSE94M0NidEZCTHBaMWI2NWEybWt4?=
 =?utf-8?B?c2R1RTZqa0xWbTJ4SnN3ek16TXk3Q1F2UEp6VkVrZE1kRm00Tzd2VjNNYzJk?=
 =?utf-8?B?SjJqSHJSUkVQb1hPTDJLOTc4T1AvNUxyYWo4WWpmT3g4bnlEVlJGMnZFTDJC?=
 =?utf-8?B?Z3ExZnZ1RURhSVpuajBqTlFjeHVWaXdkeGNUdG5QMXpidENscUxuamVDaWpX?=
 =?utf-8?B?cEs2RlJta0U4RFdBNGhsQ0szSmw2dDBuS3NWcGRxVVQ0MVpjVjNmbVZWd2I3?=
 =?utf-8?B?QVZjbEg0aVdqRUVEU2hNL1AyWGJCNUlqTWcxMVhla0wzQ3RPZUFxWDRGcEdB?=
 =?utf-8?B?a1N0UkVqNitZTWNETlJYcTZtUnNsV3Bnc3ZtRTZWcG14emFZQ0picTNOMlNx?=
 =?utf-8?B?aEV3eG9wQUFWeXl2TUhpcFRtY0EvR3BOa01raXlzNkFpUTJvUm5DYnV1QW1z?=
 =?utf-8?B?NUlsYUhxdUlNVi9xN2U2TTg4NDEwVDA3M1ppeGFQc2ordkdXR3ZoT05FMlpr?=
 =?utf-8?B?Y3Z6bGh5TzlLUmdhKzJNcVYwbG9KY2dXWC9kSFE1RWRWQlJIZW5ubE1DVndG?=
 =?utf-8?B?cExYNGgxR3lqOW9qcXVFN1BwTDRidElPWnZwZHdTdHJhNjBuSExXb0NwemZG?=
 =?utf-8?B?R2tZZzdlVUJ3WExQa09ZZjFBb2NkcVcyS3BMc0J0b2Via2c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnRPZ2tYdW5RS2VEcUlkOVRNKytuR0FvdDhaNzdiSitLeXYrVUlOakQrenJ5?=
 =?utf-8?B?T0QyNUJwZnlPR2Jscml4NjA4VnRIWVhHenhjVlJnVWN5dGhiMzEyZ0dlRVVH?=
 =?utf-8?B?K1JjUS9PcCtSQnRzRDdCZjg0T0tBUmpERjZuYlBZV3dRZzNiVkprTEJ6UVpw?=
 =?utf-8?B?eGFTUnhCbmlyb2lEZ211V0F5ZWMrVEUrM0ZjcVNMeE4rSnl5SldNZStLR0Rx?=
 =?utf-8?B?NlhFNlB1aVU3WCs0K3VTVmpJZ3pQUmlkbVBYL2NFM0hudXcvZTNVcVZEMHZy?=
 =?utf-8?B?VHVrZGh2OWpGQ0l3SEhabkVhMmhqVFJ6eW5hWmF6UUQ3ZURFTjVmRCtLc0JO?=
 =?utf-8?B?WW9QenUyUkdUTzBqWWlqT3VnVEg4VkY1RXNRWmczUGx0Qk9IUHJFbVdIYlNY?=
 =?utf-8?B?ME5XbFIwNTJTajNOMXU0SjVsbDZwZXVneS9oWUh4RlBjeFFVYU5jSUlPOCtB?=
 =?utf-8?B?UnhnR29GenhRS1h5VGQ1RUx2cG5jZkNSb2NRV3ozdW82bTAzZHN4WTluZDFu?=
 =?utf-8?B?cmZoQlVuS1RKblJKUWptOXpFdXBra1A3T1JubWtaMHBrRkMwR3lYTkhIUWVh?=
 =?utf-8?B?QWRlektrVGZ6SEJHUzBnQU9EaVAvN3hpQU02TDdPNGMrS3hpWjNHeDdpVW9F?=
 =?utf-8?B?WWNnTGMyUzZ6R1hvWXZOOER3QThpQlp5ZG5wMjkvc0xBV0tzR0hieXZqbFZN?=
 =?utf-8?B?RmQ5NFJTVk0zUGx2VTJGUTFNVnRPV3NTeWF6ajFoU3RvaFdLc2tCUVUzd2Zh?=
 =?utf-8?B?Mm1SYWJuR3BuU0RvS3podkE4SWZkbFo3clJhSi9qaWNyandrQ3hXWk5RRHQ5?=
 =?utf-8?B?VlZrM2FjUHl4OTdybTRmcUpuK1Zkb0ZQMzNFbEtpTC9Va2ZheWNEWXRtbHlV?=
 =?utf-8?B?QVBBYzVXYzBYR2pvV3pSRHNlZG5mYjgwTDRmOG1MdEx4ajc2NkY5LzhkMG8x?=
 =?utf-8?B?VCsvN3d1eVNkMGlHVWVuck9XZGgva2RSMjljTWVzN3BIZ0YrM3phT2lPR2Fj?=
 =?utf-8?B?SmVZbXluUEZXWDk1L28yWDNNaGpNODd6Q3FVYXVTUHRIMC9mK2ZLdWtBY25C?=
 =?utf-8?B?bVRzdVdCSm1wVXlkelRLU1BxZ2xGRnlTQ0VZMUpsNHl5dGM5YUxacFdKRUY2?=
 =?utf-8?B?dlQ4SHdCczFuR0FLcGdlRkhMQW4rUWIrN2w1WTdjb2J2RU10TyszQlU2cU1E?=
 =?utf-8?B?cDE3QmxIMkdhVmtIaFowNGZHZk81R01lVUU4MEhuK1lJaVh3d21sTjByMXFu?=
 =?utf-8?B?QzlXNlBYOGlkNkc1UFZteFVEbjQ1Qk0xWTJ4WU1mR2ppeUhWWTBjc2l5QUtI?=
 =?utf-8?B?OVJrUm9yd2w0MUYramJoMlBPQStmUzNBOU1URG1DMFFYZnFwZEVkRGpYcVBT?=
 =?utf-8?B?WW1NQklZWnpVQWs1QVhTbjdjK1k4L1NtZlBMREF6bFJiaHB4TTlSSTZ5RHh4?=
 =?utf-8?B?MUVQMW5uSXVjTEtzL3pQSDBxMkVCUU5ES0ZXOFFSNVIrdjlvWUZRRkFTWXhn?=
 =?utf-8?B?aDd5VWw1SFRiMDdoKzBybUNhZDZaTnpGMVRQRW9wRVFyanBoZmNhcjlWd3hT?=
 =?utf-8?B?NzY0WWE4Q01pZ1cxU25FaGs5Vm5UbWR3VU1MVXdyUmViV0NSdkhjRXRRblJ0?=
 =?utf-8?B?STdtOUlVOVlwUzIrNUJ1enZCL3JpSkRzMDNmbVplblhiZTNFa1UwU1Q5ZTR6?=
 =?utf-8?B?R2pxSWFXTFJpbnVDSEFPaGs0SVNiMWl6a0Z5ZVordTYvUXJyNC9sQmR3WVNL?=
 =?utf-8?B?andqMVp5dWppRWJHbXJmcDhvNWJFWGhZR2VySHFBR2RxVHZmbWxGM3YwSUZm?=
 =?utf-8?B?VnRlTXkyampVSS9RWStyb2kxaXdhUCtDYWRReXVWeU9ZQ3JvVTlEdEF0Z0x6?=
 =?utf-8?B?LzRZU3VNZWZuUENjUkpoOVJadW1rekU1RnBTWGdxT0MrNzV1cGpHVm92Q2t3?=
 =?utf-8?B?ZFNHMjU2TjFJN1JSb2JMaUlGb1NabFJsaEJ5TnpxN09TZ2pOaDZvTVFaSmZK?=
 =?utf-8?B?eGxmZnF5bjQ1Q2llVngrOTZDSnpORVJyV0Jjc1o0Y1ZMNUMwbVk0cC9IMmE0?=
 =?utf-8?B?ZW5QQVBzZklmbno1UXRhZEtiNnYySWlMM25YQUNBeDRIbXlSczlKMzhOekhQ?=
 =?utf-8?B?NkwwUGpsUkFMdWhCQUtIM09JQk0vVkRuQUhzQUpZcFhldDFTSlZGaGI3bDlv?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79b861ed-7cdd-4f6a-c683-08ddcf3c3774
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 07:39:29.3052 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: igd5pq/mDf65b0xTKDeQz9WVYvx9wSqUgoePsSW9nY96uPjWr7e07RnIzBvShUrZwoKIiD+BDGDYii4KiV0ha+cUMWu5NgwvJESj4f4Mkm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4797
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

Currently this function's error code is stored in err variable,
which, if a i915_request is present, will be immediately
overwritten by return from dma_resv_reserve_fences(). Call DMA
functions only if intel_context_migrate_clear() succeeded.

Suggested-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c3f17e51885..c94b71a963b2 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1228,7 +1228,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 					  i915_gem_object_is_lmem(obj),
 					  expand32(POISON_INUSE), &rq);
 	i915_gem_object_unpin_pages(obj);
-	if (rq) {
+	if (rq && !err) {
 		err = dma_resv_reserve_fences(obj->base.resv, 1);
 		if (!err)
 			dma_resv_add_fence(obj->base.resv, &rq->fence,
-- 
2.43.0



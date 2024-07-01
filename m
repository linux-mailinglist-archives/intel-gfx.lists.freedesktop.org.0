Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E08691E22F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2024 16:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C867D10E443;
	Mon,  1 Jul 2024 14:18:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DXI0lVPV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D814410E439
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2024 14:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719843504; x=1751379504;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7VFyEF2vAoxHbqbzctGNZuiFeQcalE224ndoAoBdeh4=;
 b=DXI0lVPVowPr2+NGxkl+kqADL2ucL7sTNFLEBBiG10fddCtQFP6IJ+vZ
 2zF4UWOJae1jTMQc15aWLWAYFBOMF4tbQ8FCbUVyayIggxfdnUlQTPAPr
 fJLAl29T0LDJcn97fljMuL4d9toBv72TxyijqH9aO5DiXZhIQd7ofyrmr
 JUTajGFR5tSsSVAJp38HzqnMcjtcqqH3FmHJECfH6FtlQQz0tuSQ/Puzs
 lPqtAMFoHOdgzg0FDxDN9K/ACitGhzBu/iwI5rw3Z6SQw52bDlTWIy5TE
 xiKiXFf5RqRfWbnqzjN4j80VJ6i79lGgpHYaMeR+j0acj2idE1RlZJyRY A==;
X-CSE-ConnectionGUID: VUnBReCpSB+Us2UYbw1gcA==
X-CSE-MsgGUID: kXZmYrUJT6Os80S2i6z6Pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="12340200"
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="12340200"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 07:18:23 -0700
X-CSE-ConnectionGUID: 8ofRjbgWTL+aiXpiWCIr0A==
X-CSE-MsgGUID: rYFVywMqT9W6NGgN2iZNEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="76254648"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Jul 2024 07:18:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 07:18:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 07:18:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 1 Jul 2024 07:18:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 1 Jul 2024 07:18:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UguZ81Bz9h10I+2aAiK85170zSt5b5Q2p09+FPSCrvIRKvYKbue3/S5WGVRtVusFTUxbbKckw9KiEn5TU4BHRim6JomF2HxRgWIhURuD9HlkWKh5nxhS1oQtjnB0c0G6aJz6sw6B+zrlcDYd0AO0WS4C/4nfzgLwXOD4vtOiGYUX2rc9oZu2AHB9otJWwbFdOcgTJCI5pgJ0e7MAUzNiSnjB+EF3r+rjjwUaqsrvsxKNBjbYWqNVEgmAm1pvfoO2r2zm5wfpjNSqnBN/3oxFqrgp/Xj7tjOES8SPIhB6ChuDVQiLQMMW7U2Z6ltnIVQn/zkWjHPon+8G4lTQ3P3Dsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aEjPoEZqdAHlDJLxVmA2HWk303aBm+H5d5o/3Ob4U8o=;
 b=YqQes6+8/Qm0lXf877rglY4mSTF2nqpq8jn2VoaL4T6dKDAd89HYmqg/ejm24KyqGUhGcLQFzUe4vAumWm2YFbcxv2MyTQwS+dWKY70MLYyBFsFbumiRp0fTTd+mbKB51iohmpgEyG2hpgz0/WyfZtWPIEXDV+GfpjZ3A4QHIvL11L96BHWcVrK4j1V445G5v8SHVXicKWMffJ6W6hd+xj8sjNXN8ZvvDC/rtre63gRPlLXLFNz2QwwfNUcrxL8SzKmYlOJuSIMFzeAiS+Qv23nIZDGcL6R9I55BNDayQQL/qJZ9RbZWzW1+uVXRds1CsFP8Q+A0+zhqfXosS4A+3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB8414.namprd11.prod.outlook.com (2603:10b6:610:17e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33; Mon, 1 Jul
 2024 14:18:02 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%2]) with mapi id 15.20.7719.029; Mon, 1 Jul 2024
 14:18:02 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <171940157898.159665.15432546197973984832@a6498e030952>
References: <20240625202652.315936-1-gustavo.sousa@intel.com>
 <171940157898.159665.15432546197973984832@a6498e030952>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.IGT: failure for drm/i915: Skip
 programming FIA link enable bits for MTL+
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>
Date: Mon, 1 Jul 2024 11:17:58 -0300
Message-ID: <171984347812.17689.853195680583618894@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0054.namprd05.prod.outlook.com
 (2603:10b6:a03:74::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB8414:EE_
X-MS-Office365-Filtering-Correlation-Id: 27f68eb5-df93-4668-d9c6-08dc99d89e0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UlRrcndRcVRzVXprWHRMdXZFT09DUW1MSVhscFllRjc4VktUK2MxODA4L2d0?=
 =?utf-8?B?cG9IYWcyYmpsQllYd0dtaWRyNVlIbEttV0p6dndYQS9HR0ozTGxPUytxeVB6?=
 =?utf-8?B?Q3RnT2wzZC9jTkEzWFUwQlpmSk5CMjNXajd1OWF6WTROak5MLzhSZHVXSEdt?=
 =?utf-8?B?OXIwQlNzMXFLOVJrSTZVU096d0NTZDVkMi9neFBWcktMZW9EaU13WVQrTVg3?=
 =?utf-8?B?U3FJd3dxSFkyY3ZHaHVCSzVGRTJXMjd1WStoQ1lzSlh6ZnZoVlpaeDVLNGFj?=
 =?utf-8?B?QyswRTh4cGNmK0xoWmVwT1dMd1c5TVh6OXB5bzFTNlVlMEF2dUFLNGJRTkZK?=
 =?utf-8?B?V2JyZVNOQUtmTEtBYkVZQkYvU2xoTjBiVGJtU0RZZHU5Ykh4RFlmSlExOVRC?=
 =?utf-8?B?a3Y3cjlObk1qRStaRUtQcktBOXdUNVIrVmxyQy9GWTJYOTl0eUpKOFB6T3F2?=
 =?utf-8?B?Vk42U1hRRGZFK3FXZm10SEMxb0FEdmtVMlpaV2lhMHhWWWdZVXc1STZnRjVz?=
 =?utf-8?B?S3Q1emVyQ0wvb3ZUYzRaTEtSWWQwb3JINjc5Ni9xWlpBZFY2OTc5WnlKN0lp?=
 =?utf-8?B?NnJxeS8wcHBwcC9lUmM2bThwQjkvMC96bTJKalFwMHR0WkY0dG5samJTRTBu?=
 =?utf-8?B?R2pjTks2M3JFdEJra0xaRDFjMHVjVVdWVTRoOEd3dUJMTGZndnd0UG9vNkJH?=
 =?utf-8?B?ei9CRU1lSVNQMS80S21QN1hKeTBkT3RCU2RFeEdZYUhSaE9HSG0ra1JHaXJI?=
 =?utf-8?B?VjFpZmFFd2NCV3ZLQkwrOEhRU3ZsMDFPbmk2UVRCZlVHZUp4NWxONTJxK1FS?=
 =?utf-8?B?UXdoRzVMMTRISERqcXYweUsvOHpLdE1aeTJwalNhM1A2UXpjOTNmc0VyaVZn?=
 =?utf-8?B?YTJ5cytlcjRkZ2VDT1FoR3RSRXcxNGVXNFRUbVAwWWZSK0NLVmRSVWJrWk5S?=
 =?utf-8?B?K3BXUnpkK0FsMXVBQkZVRzF3ZjNtZXNBekhtTnlITkhtanBRc24rVU9TM1Fn?=
 =?utf-8?B?NCtXZGhKY3dQR0hqVnk2aFNqY2p1Q0JWdm9WUjRnR3ZIQU9HdkRvczJUVVpx?=
 =?utf-8?B?djExNVhscFJvbWp3V0w4ZG4zYTBpK1RWYk9ZRloyYmptbkpRQlZwaEhoNWpV?=
 =?utf-8?B?SFFGbkFTYmd5Qm9VRHppZEFMdk1zWDR2SG95QTJjYnp5ZW9DTmxMdlA5VmMv?=
 =?utf-8?B?a09VSFkxUEt0Rm11VTdaSG80aW5oT0sra2h0eU5FbXd0YjF1UlBJeW0rTlBv?=
 =?utf-8?B?RDlXMURlSHZub1ptWkxxNnNXR1BIaUN0Q1ZRWE5weUJ4Zk1SMkdCai9ZMm10?=
 =?utf-8?B?YTZQSHZnaVM0SURiRTh4aWhNWkkzdWdPRHNtNHhCMUtUV0hPTTF5SnF0bnZ2?=
 =?utf-8?B?SFdPRWY2QWdPSlhGd0dHWmxta3VPN0QxUTdENGpkUzUvWVdRV2lRZy9aQWpP?=
 =?utf-8?B?STF2NnUrOHJwZHh5NEk4bmh0QmUwMnJBNElUcC9YNGMrWUZ2V08rTU9mNDdL?=
 =?utf-8?B?c0Rla25VdDI5SVZIME5INkIyeW5oeW10VEZ2czJvdVJMSlZvbVFlUE9qWjIz?=
 =?utf-8?B?L2hvWjMzL2tpbXlsUW5DNjVVS01yOXNCVlQwVFN3M0kxMDROMjc5TEl5Z3Vn?=
 =?utf-8?B?UHcvRVVSRFhyQVIvcUl3cXd0dG9ueDRnZC9MRUdSZHczZkJuN05tblRYNkRG?=
 =?utf-8?B?QW5KYnkvOGdWQ3lrbzMrTHJ5QlhmYXUyeG9VcTN2M3JDYUV2ekZVYVhGMUFp?=
 =?utf-8?Q?t1WtMsmZX0gO0eEPnw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVY2V014MU56M05hZ2xVelltY21iQ3lxbDFlZGx6QzFRUkZhODhwbGcvQm5p?=
 =?utf-8?B?KzhmdWZCbzlkdC9UOFIySlkyMUxXM1RvUmd4QTZsY1BVdGVkSFhuazZmNTVS?=
 =?utf-8?B?Rmo5R3VsTmhWcEQ3Tm9nSHovNmF1QzEzdWpqMXpsMW4yQ2gvdFpkelJWb3Bm?=
 =?utf-8?B?UHMzN01oTFRqTkhEZnZkcmpGdTNMQU54MFAwdVlIendqcHNpbHBxY1Z6NE9n?=
 =?utf-8?B?clFNR0hYSHduMWZWek1iQ2wrcGk3OU5PRDAzbHY1SWJSY1R1SzliT21VQkVK?=
 =?utf-8?B?NEk1YVZaMkVpSGlDbEhIOEFuSDlDUlkxa1BXVHNPVHl2K3hRSzBzOTJJQ2Mw?=
 =?utf-8?B?WEdWNDNCS044UE9FM0g3clcwaDA5UjhuR3A5M3VjMDlZR0FNaUlOT3hWMlRI?=
 =?utf-8?B?dXY1RTdnbmFkK3k2Vm1ZS0tJODliU2E3bkRyb3NrVkV5N1BNYWpJeVQ4OUM0?=
 =?utf-8?B?bitaZGdacXpXVWVGVG1haWhQS3ZQdTFUODArYm1QeU0vLzZ3UThDT0puT25E?=
 =?utf-8?B?Z2xoOTNETTNTYnB1bW5CQUJDcHZyWWZwTldDN1gvTXREbzNBdVFzZkFHa28y?=
 =?utf-8?B?T1VSTElVYWVzOWxWNCsxN1h3YmUwN2NkZXVMMHNlVjJ1T04xaFFNdFlabjNE?=
 =?utf-8?B?OHJSSERnVkl3MmZHR2xCUlNMRDROUzhtYkZhcFVyQXFXVnZrSGdnL3lFVWpQ?=
 =?utf-8?B?aUk0NE5WcitPODdKUWg3S1ROYlQ1eFZkNTlxeFQvT3M5c0k1MkhVaVYzRzBF?=
 =?utf-8?B?RE1oaWFLcHhGcFI0WEtaekFBYjZyUCtIRVdaNE5HTnRzRXphN2Z1ZlVBeGdm?=
 =?utf-8?B?YXRHMXpaUGx2V3J3SUJKNnBWKzVzd2ZmSjgxb1VzOVhRVmIzT05OeFNLcnVh?=
 =?utf-8?B?QUdUdXIveVhiN2I0Q2luTHAzVjZxbVE3eHpMUFZiSXN0RlZwY3dha0FhaWZQ?=
 =?utf-8?B?YUFIb2JKNlhZQXovSStTNkJCSlVBUE81bks0VTRRTjZmOW1POFZuNHRBT3hB?=
 =?utf-8?B?akw5VmM5ZWhLNHhVcUhucnVQNk1ZaUJuV212UGEwdi9PVHhZNCtVNURib3pS?=
 =?utf-8?B?QnN0SnRvWXlaT2ViczhEbEw4TFo2ckc1eXJmcW1Ka0ZMK0UySWtEaG94b3JN?=
 =?utf-8?B?bUlFb09XaklDSWlNeWpVSzlHdE1IUXpYQUVtTC90K0E3TGcwcndqNFF0aWtu?=
 =?utf-8?B?cVRuazd1NFZiWVQ1a1RyRFc5bkxpUTVEZ3NBcGFEbTJ0aDNsZkFCNGxaTXJy?=
 =?utf-8?B?U0hsWW5PL1I4dGRFM3JPSy93bmlUNG1NQytMUHNJdVk0a3pDNStOanZjR3o2?=
 =?utf-8?B?d3owVzNhalNWc3l1UHFIZjZsUWN1aTVzZ1cwYURqZCtIT2o1M0toK3VRVHNr?=
 =?utf-8?B?cnMrZVJMZmFXdWtDUVJpS2VNNmxIUmtqSTQxRW52MWt2TGFpaUo2UDUwd1g5?=
 =?utf-8?B?MmpGY2xKUXpDSzFET3FrajdyaE52bFhUZUl6b0VXOUg0MjNBQU1Dc3RSTEo2?=
 =?utf-8?B?N1dLVVczWFFpWUxzMWxBdmJtam1PaVlOWGRlbitWWXptU3ZUSlp2eXdPU0Yw?=
 =?utf-8?B?NUY1RTk3VG5TSXJJYVF2SzFzQi9KeStnQkhpWjcwTi9YUUlyOS9IdnlMRU1L?=
 =?utf-8?B?Um03dXRpOU9xTmo4dTdnNFEwNy9GYlhqamdqVzRNQnZrelZubkx0ekZxZmJQ?=
 =?utf-8?B?azhORkFIVFNTZ1I3VXRENysvbEt4OVUvQVpVS0xSOW1VQ3BYeHVwcnQ5OXh2?=
 =?utf-8?B?eHdvdzg1TUs0UlZsTmNGNEUyY1pxRVdZVnBMWm9jY3FMUE8zaytUV2FaYjhv?=
 =?utf-8?B?Ukg5RkdFaTZZcVRVYmRtdTM4dEFnY0N3V0FHaG0xM2hIbzY1VXZKOUVsTHIy?=
 =?utf-8?B?ZHVzZjFtSTBTQVNXZHpNSG81UXBDM2NieEovc0JqbGhEK2xkenZBV3pTMVVW?=
 =?utf-8?B?NTJvbHVveStTN20rbGxHQVJPT2dtdG9za3JpeHoyZHhkeVp6d0N3dEJwNHEv?=
 =?utf-8?B?eFZueXBWNWNpWTJkTHBlY0t0Y1FnNjJQOTRJYkhPcmRDQ3dCdE1tYzkrSS9U?=
 =?utf-8?B?TjdzSTZ1YStXSThSb0ZiS3dkc2JJa09EOXRPOUpaekEwNEIrMEE5VEswbzRp?=
 =?utf-8?B?NHhLZmxyeHEvam1KbWNnN2taTVUrRytoOEtZWU9UMWtaM3ZiRE5JdTdvcEhF?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f68eb5-df93-4668-d9c6-08dc99d89e0b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2024 14:18:02.6407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V7jOoMZXYt6VreBk0RijhygaCo/Xtzl9Gc1Qmtsn7+0UZo5Mn/xDohW9GPb5Xq7zQdlhrz3Ldex2PPBqym8Pbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8414
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

Quoting Patchwork (2024-06-26 08:32:58-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915: Skip programming FIA link enable bits for MTL+
>URL   : https://patchwork.freedesktop.org/series/135387/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15000_full -> Patchwork_135387v1_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_135387v1_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_135387v1_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (9 -> 9)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
135387v1_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_flip@2x-flip-vs-panning@ab-vga1-hdmi-a1:
>    - shard-snb:          NOTRUN -> [INCOMPLETE][1]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard-=
snb6/igt@kms_flip@2x-flip-vs-panning@ab-vga1-hdmi-a1.html
>
>  * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf:
>    - shard-rkl:          NOTRUN -> [SKIP][2] +5 other tests skip
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard-=
rkl-5/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf.htm=
l
>
>  * igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:
>    - shard-dg1:          NOTRUN -> [SKIP][3] +3 other tests skip
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard-=
dg1-18/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html
>    - shard-tglu:         NOTRUN -> [SKIP][4] +1 other test skip
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard-=
tglu-10/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html

Unrelated to this patch, which applies only for platforms containing
Xe_LPD+ and later.

--
Gustavo Sousa

>
> =20
>Known issues
>------------
>
>  Here are the changes found in Patchwork_135387v1_full that come from kno=
wn issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@api_intel_bb@object-reloc-keep-cache:
>    - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#8411])
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard-=
dg1-16/igt@api_intel_bb@object-reloc-keep-cache.html
>
>  * igt@device_reset@unbind-cold-reset-rebind:
>    - shard-dg1:          NOTRUN -> [SKIP][6] ([i915#11078])
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard-=
dg1-16/igt@device_reset@unbind-cold-reset-rebind.html
>
>  * igt@drm_fdinfo@busy-idle@vecs0:
>    - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8414]) +5 other tests=
 skip
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard-=
mtlp-2/igt@drm_fdinfo@busy-idle@vecs0.html
>
>  * igt@gem_basic@multigpu-create-close:
>    - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#7697])
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard-=
dg1-16/igt@gem_basic@multigpu-create-close.html
>    - shard-mtlp:         NOTRUN -> [SKIP][9] ([i915#7697])
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard-=
mtlp-1/igt@gem_basic@multigpu-create-close.html
>
>  * igt@gem_ccs@block-copy-compressed:
>    - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#3555] / [i915#9323])
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@gem_ccs@block-copy-compressed.html
>    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#3555] / [i915#9323])
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-4/igt@gem_ccs@block-copy-compressed.html
>
>  * igt@gem_ccs@block-multicopy-inplace:
>    - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#3555] / [i915#9323])
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-15/igt@gem_ccs@block-multicopy-inplace.html
>
>  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#9323])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>
>  * igt@gem_ccs@suspend-resume:
>    - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#9323])
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_ccs@suspend-resume.html
>
>  * igt@gem_ctx_persistence@heartbeat-stop:
>    - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#8555]) +1 other test=
 skip
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_ctx_persistence@heartbeat-stop.html
>
>  * igt@gem_ctx_sseu@engines:
>    - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#280]) +1 other test =
skip
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-4/igt@gem_ctx_sseu@engines.html
>    - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#280]) +1 other test =
skip
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-2/igt@gem_ctx_sseu@engines.html
>
>  * igt@gem_eio@hibernate:
>    - shard-rkl:          NOTRUN -> [ABORT][18] ([i915#7975] / [i915#8213]=
)
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-3/igt@gem_eio@hibernate.html
>
>  * igt@gem_eio@reset-stress:
>    - shard-dg1:          NOTRUN -> [FAIL][19] ([i915#5784])
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_eio@reset-stress.html
>
>  * igt@gem_exec_balancer@parallel-keep-submit-fence:
>    - shard-dg2:          [PASS][20] -> [ABORT][21] ([i915#9856])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-1=
0/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg2-1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#4525]) +2 other test=
s skip
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>
>  * igt@gem_exec_capture@capture-invisible@lmem0:
>    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#6334]) +1 other test=
 skip
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-15/igt@gem_exec_capture@capture-invisible@lmem0.html
>
>  * igt@gem_exec_capture@capture-recoverable:
>    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#6344])
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-4/igt@gem_exec_capture@capture-recoverable.html
>
>  * igt@gem_exec_fair@basic-deadline:
>    - shard-glk:          NOTRUN -> [FAIL][25] ([i915#2846])
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-glk9/igt@gem_exec_fair@basic-deadline.html
>
>  * igt@gem_exec_fair@basic-none-vip@rcs0:
>    - shard-rkl:          NOTRUN -> [FAIL][26] ([i915#2842])
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-1/igt@gem_exec_fair@basic-none-vip@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace@rcs0:
>    - shard-rkl:          [PASS][27] -> [FAIL][28] ([i915#2842]) +1 other =
test fail
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-rkl-1=
/igt@gem_exec_fair@basic-pace@rcs0.html
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
>
>  * igt@gem_exec_fair@basic-sync:
>    - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#3539]) +1 other test=
 skip
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_exec_fair@basic-sync.html
>
>  * igt@gem_exec_flush@basic-wb-rw-before-default:
>    - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#3539] / [i915#4852])=
 +3 other tests skip
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_exec_flush@basic-wb-rw-before-default.html
>
>  * igt@gem_exec_reloc@basic-gtt-wc-active:
>    - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#3281]) +3 other test=
s skip
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-2/igt@gem_exec_reloc@basic-gtt-wc-active.html
>
>  * igt@gem_exec_reloc@basic-scanout:
>    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#3281]) +9 other test=
s skip
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-5/igt@gem_exec_reloc@basic-scanout.html
>
>  * igt@gem_exec_reloc@basic-softpin:
>    - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#3281]) +8 other test=
s skip
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_exec_reloc@basic-softpin.html
>
>  * igt@gem_exec_schedule@preempt-queue-contexts:
>    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#4812]) +2 other test=
s skip
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_exec_schedule@preempt-queue-contexts.html
>
>  * igt@gem_fence_thrash@bo-copy:
>    - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#4860])
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_fence_thrash@bo-copy.html
>
>  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
>    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4860]) +1 other test=
 skip
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
>
>  * igt@gem_huc_copy@huc-copy:
>    - shard-glk:          NOTRUN -> [SKIP][37] ([i915#2190])
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-glk2/igt@gem_huc_copy@huc-copy.html
>
>  * igt@gem_lmem_evict@dontneed-evict-race:
>    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#4613] / [i915#7582])
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-5/igt@gem_lmem_evict@dontneed-evict-race.html
>
>  * igt@gem_lmem_swapping@heavy-multi@lmem0:
>    - shard-dg1:          NOTRUN -> [FAIL][39] ([i915#10378]) +1 other tes=
t fail
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_lmem_swapping@heavy-multi@lmem0.html
>
>  * igt@gem_lmem_swapping@heavy-random:
>    - shard-tglu:         NOTRUN -> [SKIP][40] ([i915#4613]) +2 other test=
s skip
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-tglu-9/igt@gem_lmem_swapping@heavy-random.html
>    - shard-glk:          NOTRUN -> [SKIP][41] ([i915#4613])
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-glk9/igt@gem_lmem_swapping@heavy-random.html
>
>  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#4613]) +2 other test=
s skip
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>
>  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
>    - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4565]) +2 other test=
s skip
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-15/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
>
>  * igt@gem_lmem_swapping@parallel-random-verify:
>    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#4613]) +2 other test=
s skip
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-4/igt@gem_lmem_swapping@parallel-random-verify.html
>
>  * igt@gem_media_vme:
>    - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#284])
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_media_vme.html
>
>  * igt@gem_mmap_gtt@basic-write-cpu-read-gtt:
>    - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4077]) +3 other test=
s skip
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@gem_mmap_gtt@basic-write-cpu-read-gtt.html
>
>  * igt@gem_mmap_gtt@fault-concurrent:
>    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4077]) +8 other test=
s skip
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_mmap_gtt@fault-concurrent.html
>
>  * igt@gem_mmap_wc@write-read-distinct:
>    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#4083]) +2 other test=
s skip
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-18/igt@gem_mmap_wc@write-read-distinct.html
>
>  * igt@gem_pread@exhaustion:
>    - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#3282]) +4 other test=
s skip
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-18/igt@gem_pread@exhaustion.html
>    - shard-tglu:         NOTRUN -> [WARN][50] ([i915#2658])
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-tglu-10/igt@gem_pread@exhaustion.html
>
>  * igt@gem_pwrite@basic-exhaustion:
>    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#3282]) +3 other test=
s skip
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-5/igt@gem_pwrite@basic-exhaustion.html
>
>  * igt@gem_pwrite@basic-self:
>    - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#3282])
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@gem_pwrite@basic-self.html
>
>  * igt@gem_pxp@protected-raw-src-copy-not-readible:
>    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#4270]) +4 other test=
s skip
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-3/igt@gem_pxp@protected-raw-src-copy-not-readible.html
>    - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#4270]) +2 other test=
s skip
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-tglu-9/igt@gem_pxp@protected-raw-src-copy-not-readible.html
>
>  * igt@gem_pxp@reject-modify-context-protection-off-3:
>    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#4270])
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-2/igt@gem_pxp@reject-modify-context-protection-off-3.html
>
>  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4270]) +2 other test=
s skip
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
>
>  * igt@gem_render_copy@linear-to-vebox-y-tiled:
>    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#8428]) +4 other test=
s skip
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@gem_render_copy@linear-to-vebox-y-tiled.html
>
>  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#4079])
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-15/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
>
>  * igt@gem_softpin@evict-snoop-interruptible:
>    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#4885])
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@gem_softpin@evict-snoop-interruptible.html
>
>  * igt@gem_userptr_blits@create-destroy-unsync:
>    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#3297])
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-3/igt@gem_userptr_blits@create-destroy-unsync.html
>    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#3297]) +3 other test=
s skip
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-tglu-9/igt@gem_userptr_blits@create-destroy-unsync.html
>
>  * igt@gem_userptr_blits@dmabuf-unsync:
>    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#3297]) +3 other test=
s skip
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-15/igt@gem_userptr_blits@dmabuf-unsync.html
>
>  * igt@gem_userptr_blits@map-fixed-invalidate:
>    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#3297] / [i915#4880])
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@gem_userptr_blits@map-fixed-invalidate.html
>
>  * igt@gen9_exec_parse@batch-invalid-length:
>    - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#2527])
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-15/igt@gen9_exec_parse@batch-invalid-length.html
>
>  * igt@gen9_exec_parse@bb-chained:
>    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#2527]) +5 other test=
s skip
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-4/igt@gen9_exec_parse@bb-chained.html
>
>  * igt@gen9_exec_parse@unaligned-jump:
>    - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#2856]) +2 other test=
s skip
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-2/igt@gen9_exec_parse@unaligned-jump.html
>
>  * igt@i915_fb_tiling:
>    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4881])
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@i915_fb_tiling.html
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-rkl:          [PASS][68] -> [ABORT][69] ([i915#9820])
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-rkl-2=
/igt@i915_module_load@reload-with-fault-injection.html
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
>    - shard-snb:          [PASS][70] -> [ABORT][71] ([i915#9820])
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-snb7/=
igt@i915_module_load@reload-with-fault-injection.html
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-snb5/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@i915_pm_freq_mult@media-freq@gt0:
>    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#6590])
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-5/igt@i915_pm_freq_mult@media-freq@gt0.html
>
>  * igt@i915_pm_rc6_residency@rc6-fence@gt0:
>    - shard-tglu:         NOTRUN -> [WARN][73] ([i915#2681])
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-tglu-9/igt@i915_pm_rc6_residency@rc6-fence@gt0.html
>
>  * igt@i915_pm_rps@min-max-config-loaded:
>    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#6621])
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@i915_pm_rps@min-max-config-loaded.html
>
>  * igt@i915_pm_rps@thresholds-idle-park@gt0:
>    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#8925])
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@i915_pm_rps@thresholds-idle-park@gt0.html
>
>  * igt@i915_query@hwconfig_table:
>    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#6245])
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-1/igt@i915_query@hwconfig_table.html
>
>  * igt@intel_hwmon@hwmon-write:
>    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#7707])
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-1/igt@intel_hwmon@hwmon-write.html
>
>  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4212])
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
>
>  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#3826])
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
>
>  * igt@kms_addfb_basic@tile-pitch-mismatch:
>    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#4212])
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@kms_addfb_basic@tile-pitch-mismatch.html
>
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc=
-ccs-cc:
>    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#8709]) +11 other tes=
ts skip
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4=
-rc-ccs-cc.html
>
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y=
-rc-ccs-cc:
>    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#8709]) +3 other test=
s skip
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1=
-y-rc-ccs-cc.html
>
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4=
-mc-ccs:
>    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#8709]) +11 other tes=
ts skip
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg2-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1=
-4-mc-ccs.html
>
>  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#3555])
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#9531])
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>
>  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#1769] / [i915#3555])
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>
>  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-interna=
l-panels:
>    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#1769] / [i915#3555])
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-inter=
nal-panels.html
>
>  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#5286]) +2 other test=
s skip
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-tglu-10/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>
>  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#5286])
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
>
>  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#5286]) +4 other test=
s skip
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip=
.html
>
>  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip=
:
>    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4538] / [i915#5286])=
 +4 other tests skip
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-f=
lip.html
>
>  * igt@kms_big_fb@linear-16bpp-rotate-90:
>    - shard-mtlp:         NOTRUN -> [SKIP][92] +11 other tests skip
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-4/igt@kms_big_fb@linear-16bpp-rotate-90.html
>
>  * igt@kms_big_fb@linear-8bpp-rotate-270:
>    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#3638]) +5 other test=
s skip
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
>
>  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#3638])
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-16/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
>
>  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>    - shard-glk:          NOTRUN -> [SKIP][95] +130 other tests skip
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-glk2/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
>
>  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#6187])
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-mtlp-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#4538]) +5 other test=
s skip
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
>
>  * igt@kms_big_joiner@basic-force-joiner:
>    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#10656])
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-tglu-10/igt@kms_big_joiner@basic-force-joiner.html
>    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#10656])
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shard=
-dg1-18/igt@kms_big_joiner@basic-force-joiner.html
>
>  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#6095]) +75 other te=
sts skip
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
>
>  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
>    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#10307] / [i915#1043=
4] / [i915#6095]) +3 other tests skip
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.ht=
ml
>
>  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
>    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#10307] / [i915#6095=
]) +155 other tests skip
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html
>
>  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
>    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#6095]) +23 other te=
sts skip
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.h=
tml
>
>  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1:
>    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#6095]) +31 other te=
sts skip
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1.html
>
>  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#6095]) +67 other te=
sts skip
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>
>  * igt@kms_cdclk@plane-scaling:
>    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#3742])
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-1/igt@kms_cdclk@plane-scaling.html
>
>  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4087]) +3 other tes=
ts skip
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
>
>  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
>    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#7828]) +3 other tes=
ts skip
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
>
>  * igt@kms_chamelium_frames@dp-crc-single:
>    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#7828]) +7 other tes=
ts skip
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_chamelium_frames@dp-crc-single.html
>
>  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#7828]) +11 other te=
sts skip
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
>
>  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#7828]) +3 other tes=
ts skip
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
>
>  * igt@kms_content_protection@dp-mst-type-0:
>    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#3299])
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-15/igt@kms_content_protection@dp-mst-type-0.html
>
>  * igt@kms_content_protection@lic-type-0:
>    - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#6944] / [i915#9424]=
)
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_content_protection@lic-type-0.html
>
>  * igt@kms_content_protection@mei-interface:
>    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#9424]) +1 other tes=
t skip
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@kms_content_protection@mei-interface.html
>
>  * igt@kms_content_protection@srm:
>    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#7118])
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-8/igt@kms_content_protection@srm.html
>    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#7118])
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_content_protection@srm.html
>    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#6944])
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_content_protection@srm.html
>
>  * igt@kms_content_protection@uevent:
>    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#6944] / [i915#9424]=
)
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_content_protection@uevent.html
>    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#7118] / [i915#9424]=
) +1 other test skip
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_content_protection@uevent.html
>
>  * igt@kms_cursor_crc@cursor-offscreen-512x512:
>    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#3359])
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x512.html
>
>  * igt@kms_cursor_crc@cursor-offscreen-64x21:
>    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#8814])
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-64x21.html
>
>  * igt@kms_cursor_crc@cursor-offscreen-max-size:
>    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#3555]) +6 other tes=
ts skip
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_cursor_crc@cursor-offscreen-max-size.html
>
>  * igt@kms_cursor_crc@cursor-onscreen-512x170:
>    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#3359])
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-512x170.html
>
>  * igt@kms_cursor_crc@cursor-random-512x512:
>    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3359]) +1 other tes=
t skip
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html
>
>  * igt@kms_cursor_crc@cursor-random-max-size:
>    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#3555] / [i915#8814]=
) +1 other test skip
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-1/igt@kms_cursor_crc@cursor-random-max-size.html
>
>  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#3555]) +1 other tes=
t skip
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
>
>  * igt@kms_cursor_crc@cursor-sliding-512x170:
>    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#3359]) +2 other tes=
ts skip
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_cursor_crc@cursor-sliding-512x170.html
>
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#4213]) +1 other tes=
t skip
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#4103]) +1 other tes=
t skip
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.ht=
ml
>
>  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#9809]) +2 other tes=
ts skip
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
>
>  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions=
:
>    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4103] / [i915#4213]=
)
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-15/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transit=
ions.html
>
>  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions=
-varying-size:
>    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#4103])
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transit=
ions-varying-size.html
>
>  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#9723])
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>
>  * igt@kms_display_modes@mst-extended-mode-negative:
>    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#8588])
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html
>
>  * igt@kms_dsc@dsc-fractional-bpp:
>    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#3840])
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-18/igt@kms_dsc@dsc-fractional-bpp.html
>    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#3840])
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_dsc@dsc-fractional-bpp.html
>
>  * igt@kms_dsc@dsc-with-bpc:
>    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#3555] / [i915#3840]=
)
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_dsc@dsc-with-bpc.html
>
>  * igt@kms_dsc@dsc-with-bpc-formats:
>    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#3555] / [i915#3840]=
) +1 other test skip
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_dsc@dsc-with-bpc-formats.html
>    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3555] / [i915#3840]=
)
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html
>
>  * igt@kms_dsc@dsc-with-output-formats:
>    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#3555] / [i915#3840]=
) +1 other test skip
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_dsc@dsc-with-output-formats.html
>
>  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#3840] / [i915#9053]=
)
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-18/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#3840] / [i915#9053]=
)
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>
>  * igt@kms_feature_discovery@display-3x:
>    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#1839])
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@kms_feature_discovery@display-3x.html
>
>  * igt@kms_feature_discovery@dp-mst:
>    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#9337])
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@kms_feature_discovery@dp-mst.html
>
>  * igt@kms_feature_discovery@psr2:
>    - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#658])
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_feature_discovery@psr2.html
>
>  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
>    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#3637]) +3 other tes=
ts skip
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
>
>  * igt@kms_flip@2x-flip-vs-dpms:
>    - shard-rkl:          NOTRUN -> [SKIP][147] +33 other tests skip
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_flip@2x-flip-vs-dpms.html
>
>  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>    - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#9934]) +2 other tes=
ts skip
>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
>
>  * igt@kms_flip@2x-nonexisting-fb:
>    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#3637]) +2 other tes=
ts skip
>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_flip@2x-nonexisting-fb.html
>
>  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:
>    - shard-snb:          [PASS][150] -> [FAIL][151] ([i915#2122])
>   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-snb2=
/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
>   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-snb7/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
>
>  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:
>    - shard-rkl:          NOTRUN -> [FAIL][152] ([i915#2122]) +1 other tes=
t fail
>   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pi=
pe-a-default-mode:
>    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#3555] / [i915#8810]=
) +1 other test skip
>   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscalin=
g@pipe-a-default-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pi=
pe-a-default-mode:
>    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#2672] / [i915#3555]=
)
>   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscalin=
g@pipe-a-default-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe=
-a-valid-mode:
>    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#2587] / [i915#2672]=
) +1 other test skip
>   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-15/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@=
pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downsc=
aling@pipe-a-valid-mode:
>    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#2672]) +3 other tes=
ts skip
>   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-dow=
nscaling@pipe-a-valid-mode.html
>    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#2587] / [i915#2672]=
)
>   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-do=
wnscaling@pipe-a-valid-mode.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
>    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#1825]) +15 other te=
sts skip
>   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
>
>  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
>    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#8708]) +14 other te=
sts skip
>   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
>    - shard-dg1:          NOTRUN -> [SKIP][160] +51 other tests skip
>   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwr=
ite.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#3023]) +36 other te=
sts skip
>   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#8708]) +6 other tes=
ts skip
>   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-g=
tt.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#1825]) +48 other te=
sts skip
>   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
>
>  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#3458]) +17 other te=
sts skip
>   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
>
>  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
>    - shard-tglu:         NOTRUN -> [SKIP][165] +37 other tests skip
>   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
>
>  * igt@kms_hdmi_inject@inject-audio:
>    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#433])
>   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_hdmi_inject@inject-audio.html
>
>  * igt@kms_hdr@bpc-switch-suspend:
>    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#3555] / [i915#8228]=
) +1 other test skip
>   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_hdr@bpc-switch-suspend.html
>
>  * igt@kms_hdr@invalid-metadata-sizes:
>    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#3555] / [i915#8228]=
) +1 other test skip
>   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-15/igt@kms_hdr@invalid-metadata-sizes.html
>
>  * igt@kms_hdr@static-toggle-dpms:
>    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#3555] / [i915#8228]=
) +2 other tests skip
>   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@kms_hdr@static-toggle-dpms.html
>
>  * igt@kms_hdr@static-toggle-suspend:
>    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#3555] / [i915#8228]=
)
>   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-10/igt@kms_hdr@static-toggle-suspend.html
>
>  * igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1:
>    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#9457]) +3 other tes=
ts skip
>   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1.html
>
>  * igt@kms_panel_fitting@legacy:
>    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#6301])
>   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_panel_fitting@legacy.html
>
>  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
>    - shard-snb:          NOTRUN -> [SKIP][173]
>   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-snb4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.htm=
l
>
>  * igt@kms_plane_lowres@tiling-y:
>    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#3555] / [i915#8821]=
)
>   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_plane_lowres@tiling-y.html
>
>  * igt@kms_plane_multiple@tiling-yf:
>    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#3555]) +10 other te=
sts skip
>   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-1/igt@kms_plane_multiple@tiling-yf.html
>
>  * igt@kms_plane_scaling@intel-max-src-size:
>    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#6953])
>   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_plane_scaling@intel-max-src-size.html
>    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#6953])
>   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-3/igt@kms_plane_scaling@intel-max-src-size.html
>
>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pi=
pe-a-hdmi-a-1:
>    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#9423]) +7 other tes=
ts skip
>   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format=
@pipe-a-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pip=
e-a-hdmi-a-1:
>    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#5176] / [i915#9423]=
) +1 other test skip
>   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@=
pipe-a-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-=
a-hdmi-a-1:
>    - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#5235]) +3 other tes=
ts skip
>   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@=
pipe-a-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-=
c-hdmi-a-1:
>    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#5235] / [i915#9423]=
) +11 other tests skip
>   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pi=
pe-c-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-=
d-hdmi-a-4:
>    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#5235]) +7 other tes=
ts skip
>   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-18/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@p=
ipe-d-hdmi-a-4.html
>
>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-=
b-hdmi-a-1:
>    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#5235]) +5 other tes=
ts skip
>   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pi=
pe-b-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75=
@pipe-a-edp-1:
>    - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#5235]) +12 other te=
sts skip
>   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-=
0-75@pipe-a-edp-1.html
>
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75=
@pipe-d-edp-1:
>    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#3555] / [i915#5235]=
) +2 other tests skip
>   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-=
0-75@pipe-d-edp-1.html
>
>  * igt@kms_pm_backlight@basic-brightness:
>    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#9812])
>   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_pm_backlight@basic-brightness.html
>
>  * igt@kms_pm_backlight@fade-with-dpms:
>    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#5354]) +1 other tes=
t skip
>   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_pm_backlight@fade-with-dpms.html
>
>  * igt@kms_pm_backlight@fade-with-suspend:
>    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#5354]) +1 other tes=
t skip
>   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_pm_backlight@fade-with-suspend.html
>
>  * igt@kms_pm_lpsp@kms-lpsp:
>    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#9340])
>   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html
>    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#9340])
>   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
>
>  * igt@kms_pm_lpsp@screens-disabled:
>    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#8430])
>   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_pm_lpsp@screens-disabled.html
>    - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#8430])
>   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_pm_lpsp@screens-disabled.html
>
>  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>    - shard-dg2:          [PASS][193] -> [SKIP][194] ([i915#9519]) +2 othe=
r tests skip
>   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>
>  * igt@kms_pm_rpm@modeset-non-lpsp:
>    - shard-rkl:          [PASS][195] -> [SKIP][196] ([i915#9519]) +1 othe=
r test skip
>   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-rkl-=
3/igt@kms_pm_rpm@modeset-non-lpsp.html
>   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>
>  * igt@kms_prime@basic-modeset-hybrid:
>    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#6524])
>   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_prime@basic-modeset-hybrid.html
>    - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#6524])
>   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_prime@basic-modeset-hybrid.html
>
>  * igt@kms_prime@d3hot:
>    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#6524]) +1 other tes=
t skip
>   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-15/igt@kms_prime@d3hot.html
>
>  * igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf@psr2-pipe-b-edp=
-1:
>    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#9808]) +1 other tes=
t skip
>   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf@psr2-pipe-b=
-edp-1.html
>
>  * igt@kms_psr2_su@page_flip-xrgb8888:
>    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#9683])
>   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html
>
>  * igt@kms_psr@fbc-psr-cursor-mmap-gtt@edp-1:
>    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#9688]) +7 other tes=
ts skip
>   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_psr@fbc-psr-cursor-mmap-gtt@edp-1.html
>
>  * igt@kms_psr@fbc-psr-primary-render:
>    - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#1072] / [i915#9732]=
) +23 other tests skip
>   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@kms_psr@fbc-psr-primary-render.html
>
>  * igt@kms_psr@psr-primary-render:
>    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#9732]) +11 other te=
sts skip
>   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_psr@psr-primary-render.html
>
>  * igt@kms_psr@psr2-primary-mmap-gtt@edp-1:
>    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#4077] / [i915#9688]=
)
>   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_psr@psr2-primary-mmap-gtt@edp-1.html
>
>  * igt@kms_psr@psr2-suspend:
>    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#1072] / [i915#9732]=
) +26 other tests skip
>   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@kms_psr@psr2-suspend.html
>
>  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#9685])
>   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>
>  * igt@kms_rotation_crc@bad-tiling:
>    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#4235]) +1 other tes=
t skip
>   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_rotation_crc@bad-tiling.html
>
>  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>    - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#5289]) +1 other tes=
t skip
>   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#5289])
>   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>
>  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#5289]) +1 other tes=
t skip
>   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>
>  * igt@kms_setmode@basic-clone-single-crtc:
>    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#3555] / [i915#8809]=
)
>   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@kms_setmode@basic-clone-single-crtc.html
>
>  * igt@kms_tiled_display@basic-test-pattern:
>    - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#8623])
>   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-18/igt@kms_tiled_display@basic-test-pattern.html
>    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#8623]) +1 other tes=
t skip
>   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_tiled_display@basic-test-pattern.html
>
>  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#8623])
>   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>    - shard-tglu:         [PASS][216] -> [FAIL][217] ([i915#9196])
>   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-tglu=
-9/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>    - shard-mtlp:         [PASS][218] -> [FAIL][219] ([i915#9196])
>   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-mtlp=
-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>
>  * igt@kms_vrr@max-min:
>    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#8808] / [i915#9906]=
)
>   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_vrr@max-min.html
>
>  * igt@kms_vrr@seamless-rr-switch-virtual:
>    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#9906]) +2 other tes=
ts skip
>   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-1/igt@kms_vrr@seamless-rr-switch-virtual.html
>
>  * igt@kms_vrr@seamless-rr-switch-vrr:
>    - shard-tglu:         NOTRUN -> [SKIP][222] ([i915#9906])
>   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-9/igt@kms_vrr@seamless-rr-switch-vrr.html
>
>  * igt@kms_writeback@writeback-check-output:
>    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#2437]) +1 other tes=
t skip
>   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@kms_writeback@writeback-check-output.html
>    - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#2437])
>   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-4/igt@kms_writeback@writeback-check-output.html
>
>  * igt@kms_writeback@writeback-fb-id:
>    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#2437])
>   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-tglu-10/igt@kms_writeback@writeback-fb-id.html
>    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#2437])
>   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-18/igt@kms_writeback@writeback-fb-id.html
>
>  * igt@perf@gen8-unprivileged-single-ctx-counters:
>    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#2436])
>   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-1/igt@perf@gen8-unprivileged-single-ctx-counters.html
>
>  * igt@perf@global-sseu-config-invalid:
>    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#7387])
>   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-1/igt@perf@global-sseu-config-invalid.html
>
>  * igt@perf@per-context-mode-unprivileged:
>    - shard-dg1:          NOTRUN -> [SKIP][229] ([i915#2433])
>   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-18/igt@perf@per-context-mode-unprivileged.html
>
>  * igt@perf_pmu@rc6-all-gts:
>    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#8516])
>   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@perf_pmu@rc6-all-gts.html
>
>  * igt@prime_vgem@basic-fence-mmap:
>    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#3708] / [i915#4077]=
) +1 other test skip
>   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-2/igt@prime_vgem@basic-fence-mmap.html
>
>  * igt@prime_vgem@basic-read:
>    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#3708])
>   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-15/igt@prime_vgem@basic-read.html
>
>  * igt@prime_vgem@coherency-gtt:
>    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#3708]) +1 other tes=
t skip
>   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-4/igt@prime_vgem@coherency-gtt.html
>
>  * igt@tools_test@sysfs_l3_parity:
>    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#4818])
>   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@tools_test@sysfs_l3_parity.html
>
> =20
>#### Possible fixes ####
>
>  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>    - shard-rkl:          [FAIL][235] ([i915#7742]) -> [PASS][236]
>   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-rkl-=
3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-rkl:          [FAIL][237] ([i915#2842]) -> [PASS][238] +1 othe=
r test pass
>   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-rkl-=
2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>    - shard-dg2:          [FAIL][239] ([i915#10378]) -> [PASS][240]
>   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
4/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
>   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-1/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
>
>  * igt@gem_lmem_swapping@parallel-random-engines@lmem0:
>    - shard-dg2:          [INCOMPLETE][241] -> [PASS][242]
>   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
5/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html
>   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-6/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html
>
>  * igt@gem_lmem_swapping@smem-oom@lmem0:
>    - shard-dg1:          [DMESG-WARN][243] ([i915#1982] / [i915#4936] / [=
i915#5493]) -> [PASS][244]
>   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg1-=
17/igt@gem_lmem_swapping@smem-oom@lmem0.html
>   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-dg1:          [ABORT][245] ([i915#9820]) -> [PASS][246]
>   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg1-=
16/igt@i915_module_load@reload-with-fault-injection.html
>   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
>    - shard-mtlp:         [ABORT][247] ([i915#10131] / [i915#9820]) -> [PA=
SS][248]
>   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-mtlp=
-5/igt@i915_module_load@reload-with-fault-injection.html
>   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>    - shard-snb:          [SKIP][249] -> [PASS][250]
>   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-snb2=
/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
>   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
>
>  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
>    - shard-dg2:          [FAIL][251] ([i915#6880]) -> [PASS][252]
>   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
>   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
>
>  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>    - shard-dg2:          [SKIP][253] ([i915#9519]) -> [PASS][254]
>   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>
>  * igt@kms_rotation_crc@multiplane-rotation:
>    - shard-dg1:          [INCOMPLETE][255] ([i915#10743]) -> [PASS][256]
>   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg1-=
13/igt@kms_rotation_crc@multiplane-rotation.html
>   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg1-13/igt@kms_rotation_crc@multiplane-rotation.html
>    - shard-glk:          [INCOMPLETE][257] -> [PASS][258]
>   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-glk2=
/igt@kms_rotation_crc@multiplane-rotation.html
>   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-glk4/igt@kms_rotation_crc@multiplane-rotation.html
>
>  * igt@kms_sysfs_edid_timing:
>    - shard-dg2:          [FAIL][259] ([IGT#2]) -> [PASS][260]
>   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
8/igt@kms_sysfs_edid_timing.html
>   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-11/igt@kms_sysfs_edid_timing.html
>
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>    - shard-snb:          [FAIL][261] ([i915#9196]) -> [PASS][262]
>   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-snb7=
/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>
> =20
>#### Warnings ####
>
>  * igt@gem_lmem_swapping@smem-oom@lmem0:
>    - shard-dg2:          [TIMEOUT][263] ([i915#5493]) -> [DMESG-WARN][264=
] ([i915#1982] / [i915#4936] / [i915#5493])
>   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
8/igt@gem_lmem_swapping@smem-oom@lmem0.html
>   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>    - shard-dg2:          [SKIP][265] ([i915#10433] / [i915#3458]) -> [SKI=
P][266] ([i915#3458]) +1 other test skip
>   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.htm=
l
>   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwr=
ite.html
>
>  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
>    - shard-dg2:          [SKIP][267] ([i915#3458]) -> [SKIP][268] ([i915#=
10433] / [i915#3458])
>   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
>   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
>
>  * igt@kms_pm_dc@dc6-dpms:
>    - shard-rkl:          [FAIL][269] ([i915#9295]) -> [SKIP][270] ([i915#=
3361])
>   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-rkl-=
5/igt@kms_pm_dc@dc6-dpms.html
>   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-2/igt@kms_pm_dc@dc6-dpms.html
>
>  * igt@kms_pm_dc@dc9-dpms:
>    - shard-rkl:          [SKIP][271] ([i915#3361]) -> [SKIP][272] ([i915#=
4281])
>   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-rkl-=
1/igt@kms_pm_dc@dc9-dpms.html
>   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-rkl-5/igt@kms_pm_dc@dc9-dpms.html
>
>  * igt@kms_psr@fbc-psr2-sprite-blt:
>    - shard-dg2:          [SKIP][273] ([i915#1072] / [i915#9673] / [i915#9=
732]) -> [SKIP][274] ([i915#1072] / [i915#9732]) +10 other tests skip
>   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
11/igt@kms_psr@fbc-psr2-sprite-blt.html
>   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-10/igt@kms_psr@fbc-psr2-sprite-blt.html
>
>  * igt@kms_psr@psr2-cursor-blt:
>    - shard-dg2:          [SKIP][275] ([i915#1072] / [i915#9732]) -> [SKIP=
][276] ([i915#1072] / [i915#9673] / [i915#9732]) +16 other tests skip
>   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
8/igt@kms_psr@psr2-cursor-blt.html
>   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-11/igt@kms_psr@psr2-cursor-blt.html
>
>  * igt@perf@non-zero-reason@0-rcs0:
>    - shard-dg2:          [FAIL][277] ([i915#7484]) -> [FAIL][278] ([i915#=
9100])
>   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15000/shard-dg2-=
11/igt@perf@non-zero-reason@0-rcs0.html
>   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135387v1/shar=
d-dg2-10/igt@perf@non-zero-reason@0-rcs0.html
>
> =20
>  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
131
>  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
307
>  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
378
>  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
433
>  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
434
>  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
656
>  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2
>  [i915#10743]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
743
>  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
078
>  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/176=
9
>  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/182=
5
>  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/183=
9
>  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/198=
2
>  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/212=
2
>  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/219=
0
>  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/243=
3
>  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/243=
6
>  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/243=
7
>  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/252=
7
>  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/258=
7
>  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/265=
8
>  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/267=
2
>  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/268=
1
>  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284=
2
>  [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284=
6
>  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/285=
6
>  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/302=
3
>  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/328=
1
>  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/328=
2
>  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/329=
7
>  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/329=
9
>  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/335=
9
>  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/336=
1
>  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/345=
8
>  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/353=
9
>  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/355=
5
>  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
7
>  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
8
>  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/370=
8
>  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/374=
2
>  [i915#3826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/382=
6
>  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/384=
0
>  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/407=
7
>  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/407=
9
>  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/408=
3
>  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/408=
7
>  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/410=
3
>  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/421=
2
>  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/421=
3
>  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/423=
5
>  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/427=
0
>  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/428=
1
>  [i915#433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433
>  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/452=
5
>  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/453=
8
>  [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/456=
5
>  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/461=
3
>  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/481=
2
>  [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/481=
8
>  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/485=
2
>  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/486=
0
>  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/488=
0
>  [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/488=
1
>  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/488=
5
>  [i915#4936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/493=
6
>  [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/517=
6
>  [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/523=
5
>  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/528=
6
>  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/528=
9
>  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/535=
4
>  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/549=
3
>  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/578=
4
>  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/609=
5
>  [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/618=
7
>  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/624=
5
>  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/630=
1
>  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/633=
4
>  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/634=
4
>  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/652=
4
>  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/659=
0
>  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/662=
1
>  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/688=
0
>  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/694=
4
>  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/695=
3
>  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/711=
8
>  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/738=
7
>  [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/748=
4
>  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/758=
2
>  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/769=
7
>  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/770=
7
>  [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/774=
2
>  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/782=
8
>  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/797=
5
>  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/821=
3
>  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/822=
8
>  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/841=
1
>  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/841=
4
>  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/842=
8
>  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/843=
0
>  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/851=
6
>  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/855=
5
>  [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/858=
8
>  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/862=
3
>  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/870=
8
>  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/870=
9
>  [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/880=
8
>  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/880=
9
>  [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/881=
0
>  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/881=
4
>  [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/882=
1
>  [i915#8925]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/892=
5
>  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/905=
3
>  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/910=
0
>  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/919=
6
>  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/929=
5
>  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/932=
3
>  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/933=
7
>  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/934=
0
>  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/942=
3
>  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/942=
4
>  [i915#9457]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/945=
7
>  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/951=
9
>  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/953=
1
>  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/967=
3
>  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/968=
3
>  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/968=
5
>  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/968=
8
>  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/972=
3
>  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/973=
2
>  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/980=
8
>  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/980=
9
>  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/981=
2
>  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/982=
0
>  [i915#9856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/985=
6
>  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/990=
6
>  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/993=
4
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_15000 -> Patchwork_135387v1
>
>  CI-20190529: 20190529
>  CI_DRM_15000: edccdf441f1e061f81e0d1d172aa0f37511bbe4d @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_7900: cec03bdc0e810e09dc7d632ef340f704069d316c @ https://gitlab.free=
desktop.org/drm/igt-gpu-tools.git
>  Patchwork_135387v1: edccdf441f1e061f81e0d1d172aa0f37511bbe4d @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fr=
eedesktop.org/piglit
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
35387v1/index.html

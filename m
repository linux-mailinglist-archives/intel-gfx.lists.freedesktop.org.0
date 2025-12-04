Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E34CCA2EBC
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 10:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D7C10E8E9;
	Thu,  4 Dec 2025 09:12:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D3ZTII8F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6979210E8E9
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Dec 2025 09:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764839526; x=1796375526;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=cDEeYN0uoPcn1LcQWdD+aISIxm1U0u+dG1bA98VXkSI=;
 b=D3ZTII8F4YY1cQr6lrpFWP7hqMuvEcfDG2xsVlvfTasOGjaHxR2tFy/z
 SsSzittoFv8GfN6nEQ3bEsjqUWOOYoWnbQLM8hdPX+TSBrBnH6F3Y2XLW
 mSN3WXYWUjNHQmMmKtjkPIo2AbFlRZmjfJSacBUSwY3DfAGo6SxozOTTP
 MVOc8mFJ3UijMhmVSwPrbvTMAOs6WPbo8vU6UuAyV9H7MgVP5Z/rfBKC3
 RJ7Z1zJXvd456DCgl5t481Vd+NJtHuRyjoG1xch0uPVEzLZTyVsf91pez
 lMPzV7raiLQGmbkniqURtAcDNd0wfkpXzYDI2xykR4X01GC0EKlUccz0f g==;
X-CSE-ConnectionGUID: VeW1MuP/QCuQmE+iKJr0yg==
X-CSE-MsgGUID: tPGR8XZoQg6CjL2qBN9psQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="77533153"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="77533153"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 01:12:06 -0800
X-CSE-ConnectionGUID: RVPGZQ2ZTe+CkvNFjdib5Q==
X-CSE-MsgGUID: 1sVKmmXXT0CtcJl/B/DMDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="200065988"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 01:12:06 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 01:12:05 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 4 Dec 2025 01:12:05 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.38) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 01:12:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U7yCXpd9ChsTvmGB0NOvhAAZy/OFUNj/UtUjqw+3dRisAkEHWJDuB8jkEiohq8Il/+0GAUnhhUUxh5lOtDcJb90WDivrGCXA41u5VXZ3PJ3y7L+usiUlLUkLhl+Ewk1nshRUeYgUMY8drG0QkRgVwnbDto0SyQshFgXolZ7u/lgdurU7b1tD7ZKyoLJ4Ge3TiHVZIjTiWJz/MrSSZ7bU6lgwZyRxuO+/UM1T3PxeeP8I6OwcfFMs8ydw6Ml2E7RuTODGgyaupyo4qA8kzRabRjFhvCuYJ8Lp/knJBBm9OZUjRveaajr8udVpFq9g2MXUEAM9va0TqV0MH16e2bJpyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uyYIV2FUmDBMJD6fLC3i2nQ6D5h93vc3iMQ37frR6Z8=;
 b=ur29z7GIZMt5ZO9/IozEIFwbVZOoY4sws59Igjzre6YKNBwmRDHGumqfitMz+xq0Oe3/+HzcShXWn4YvCmJduUlRXToIq5EPmVTQeEYc0ldzdMXuVQMQDAJrf6iXD1ldmkKBv2qrZ4aeoiCHKJy5D/++qyXIpCLpwscVBFkneS0ANBHdBlvb7NUNcpEpF5KVO5fbQPpfr81/1ozQLssOS/jo2J+GQlG2upU3qoHWvHHxhDOrnFUY92eL3t8E19JLJeVEqHRSme9oYtbSxN73cZ1MnIspRmvoMSP0Wqj01NJJnvbCve6l1axrwURg3BMPyUv5I16nN5MZ20DlkzxKsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SN7PR11MB7418.namprd11.prod.outlook.com (2603:10b6:806:344::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.11; Thu, 4 Dec
 2025 09:12:03 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9366.012; Thu, 4 Dec 2025
 09:12:03 +0000
Date: Thu, 4 Dec 2025 09:11:52 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Matthew Auld
 <matthew.auld@intel.com>, Chris Wilson <chris.p.wilson@linux.intel.com>,
 "Andi Shyti" <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v5] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <osapjeuydjklsnzluarewwhb4h3thsjvipxlynd2465wk26prw@huo4rflrfrql>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: LO4P123CA0508.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:272::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SN7PR11MB7418:EE_
X-MS-Office365-Filtering-Correlation-Id: df2a8d02-9358-4d3c-70f5-08de33153023
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cFE3UHdta0YxQ2FJZC9RWG8zdGNYNXhneDlLTVMyOUl4emN3TW1ycHY1UXph?=
 =?utf-8?B?MkZJQ0RhWlNqOFh3cE1ydlZOVUZFYyszSWY0U3R6dHYwck1jVHdpRWw3bEw2?=
 =?utf-8?B?cklmNUo5VDRPUy96ZkZEeDk4RTRWUUlzSldjV3RjYVIwTXIrQVhkM3RRVkJ3?=
 =?utf-8?B?RE5pajdXYWlpdEVIVDFzODB6cGEzN1BFM29XS1o1cVpBMkN2aktZQkhkMWtn?=
 =?utf-8?B?M0NIYnRBRkptSE9QSHJuZi8yQzlHLzZrU3NHT255NGFlOXhQcHljUFppWmNl?=
 =?utf-8?B?WURtT0l4L0JQMTJKeUlvLzdZSC9rRVMyQTdIN2haM1N6Q1Fvb080bFhXR1Jz?=
 =?utf-8?B?eUc0aEJCZTdwcC90N3MwVlBSN1JqYzFOVEdVd1BvTFc3ckdQL1A2QjFnTkJD?=
 =?utf-8?B?NFZXSUJPNEdyNm9DalN2M2ZZUWc0TDZNTzJVcFJxdCs1Y3NnOVZ3Nk1xaW9l?=
 =?utf-8?B?aU53cFVZYXBpNzdLV0NtSkRIeGgvNFBlNGNCdnMxNFAyaytpQVZUN3pzRFhG?=
 =?utf-8?B?OEt0RFlkU2pzZEJzRUl5QkhrZXRXQ0ROcWh5aDJQbXhUak1WR2N3ckRxQ2Ux?=
 =?utf-8?B?K2hQaWZxRHUvQ1JKNWlMdmVvdlp0S2lZbU4zNHN0SmxTN0p5dkJ6T0tERHpo?=
 =?utf-8?B?MUtwSDhiRHNKTWN0cS81dUR1U2NyRm1hM0FGYXZ1d0IzUTdtTjhKcjhCazkx?=
 =?utf-8?B?SGJ0Y1JOajcrTktXRjlmYXBvd3BsQ3h5S2RaSUlQOHZVcnNhL3NQdFFaUDho?=
 =?utf-8?B?aGcrY2tHdi95WHZQbWFONGxvL0FqbkZQVTJLY0lxYXJ3NE1ZSDFQZVU2ZnhZ?=
 =?utf-8?B?SEZXK3lMTEdFOEl3U3MxSXRUVnhoNm9xcUh6TDR5cHJmNFh4Nnpab2xlOWp1?=
 =?utf-8?B?dTJKNTlPcmZsaGMrdjdwd0lSWGNoaFlqQ1JLWk9jeVFUdWVvNVNDMGkwWFJz?=
 =?utf-8?B?QXo4L1Z4YTlqczFzaVJMejNnaGxJQy9zY0oxSWhLZE9ZTVd2ZkJsUWhWM3BW?=
 =?utf-8?B?VDJHTmJrenpRb3lWSTlOMjNXTGV2eTV4bVVrZW9KZXhuUDZGeDIySE9EQURn?=
 =?utf-8?B?bWVlbDdXWnBwY3RSdmhoRVVkb3J6UFFaQlp6SitlbldBOFFuMWFMWmhFQVUy?=
 =?utf-8?B?dmxRcWIxQkkwOGJDLzdYcllJeUlMNFVOL0VTOElVR2ZjMHdJWTVXT1hyK2x6?=
 =?utf-8?B?RnRqbHZ5MUFSU0QxNUNId2ltcnZvWlZUZ3J5bzRFNGZpb1VyM21rbmhaUlAx?=
 =?utf-8?B?SFBRQ3VOYk91MHBvOU9IbmxPc1lrNTlaUCtpSkk2TnNCUHI3ZzFhS3cwbnhZ?=
 =?utf-8?B?Ni9wM2Q5VDd4VmwyWGVXVHJOQnowOWtMYis2UUthSDN6RnhwMlJCYlpnZ1Jq?=
 =?utf-8?B?UHAybHlpbDlSdTE0RjRTdVFBWG9scUxmLzcvZ3FSNysydXhKTnV6VXA0RFJ1?=
 =?utf-8?B?SWREVno2WVlZV0JscUZYYnAxMnJFc2lmRlQvdWtQUEJja0RScmJwYWRZZ3E5?=
 =?utf-8?B?bUtxdGd0Wmt1WWhoNkVBYUp3MmRoeURZbEg4d2JMTUpBenlJOFhOZmVVYklk?=
 =?utf-8?B?RklGR0g2cGVRVWZQUGtjSXgrUXBDVjdyM1Bmam1BcDdUV1k5cVZ6c2hYaXBa?=
 =?utf-8?B?TnlDZHJoM0RFU2diM3laUlFTbDJ5UzJMOEpzM20wL01YaEIzRDg5SEpmUXpp?=
 =?utf-8?B?N0RNTHRqZU1IOWlicVRiZVdDYnRWci9acUR1YXB2RjNVUHEwajE5K1dNbEFj?=
 =?utf-8?B?MzdNZjV1bHk3ZEc3RTFuSXkzamtnZ05RN05kMm5NckVHc2R0d044Vm5FNncy?=
 =?utf-8?B?cFNWWHNoRWRaVWRHR09rZXRLcTJWN0I3WGlzaURmNTdBUmdqcUVsOWk3MGJ5?=
 =?utf-8?B?UUlLbENJK2FhNUJmYTViSTdBekhMNXVsS3AxT1RFRTZwTWxRakV6dTZxRTRU?=
 =?utf-8?Q?WcG2v17J38pZbCDs9Z0n04LMxvlxjSeJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXBVb3lwMmFRV1NIRDBwSmZGakloa2ptZFQwRXMxR1N3N3o0c3FJNDhUbE4v?=
 =?utf-8?B?TklBby9iNzR6UjdlRzlSV3VSMVA1UVRXMmZ6ekpJSkJVbm85YjdPbTg0WEUy?=
 =?utf-8?B?RkREUnJQVWVjTnFGVTZob3p6d3JCVU5IMnZscmJNM25iZC82R0UzN0c0ZVIz?=
 =?utf-8?B?UFBET1M4NUNmUjNFWmV0ODZ0N205YlJSZTAzWkNkZCtqM0ZCOTR3VDZqRURp?=
 =?utf-8?B?T05CYXFrWWJyaEtyR21QNjdkckYvUkhpWm00elFweFJXVUNYeDhLNllBYXRD?=
 =?utf-8?B?V2VKa1FQdDJaN2NtSFN2K0xWWG5SdDc1SEpCOUxaWHRrSVpzVFFnamRsN3px?=
 =?utf-8?B?VWZyOVR3SXIxTHF6ZGI0Z0Q5WlFrMUlIaWhCL2NuYkd6QVJaaXZhRlhyTTFZ?=
 =?utf-8?B?aDEwdEJZSW1sTWJpcXB0WUlZVEorQ3V0eGpoUHZENjUrWFFTYUpLK0VSQnNT?=
 =?utf-8?B?TU5tQ01DQU5FSFYzL3V1dW5SeDZ4SjBCdTBqdXp2QWJIdG9hWXVzZm9qQTNv?=
 =?utf-8?B?cllxSkpvTG9xUStaRGg0dkxLRHNyY3NtUkpMdTVJc0VKa2IvKy96NXIxQnho?=
 =?utf-8?B?c3Qvb2xESzJBUUpCbVNFTUZUdHlQeWZIMzNXZkdnWGl0RWFGYUxLRm9JUFl1?=
 =?utf-8?B?ek5UeW5hTWY1Z3RRZlBadSt4UlRMZ0VSYVVDMGNxYTlVVW9wYlJ0MzNFUFMr?=
 =?utf-8?B?QUNYdm55V2hoRmh2ZzFTSTVjWjhSbE1oRzA0cTk5dHAyMUIwTTA2WUpmMmxP?=
 =?utf-8?B?SzBoZUVBQ2ZkZkdoVktnLzZXMktXWHRZVDVXM1pUcVVmcGZyYUlTKzZqOGtw?=
 =?utf-8?B?T3NoQ3hpbU1TMnRhakRzcHdPenZlRWlDeVFZREt4VVJPbVIyaVU4MDREOHFT?=
 =?utf-8?B?bzBTaXorRno3eHppN2ExNGhrcmJXV3l1TEU1ekpkemFPRExVZFFmR3pmNXNU?=
 =?utf-8?B?ckQ3Y2YrS3JLVmtkdlVMd25pMlpFRXpjazA2RTU5SEN6WUlWWnZhM0pBZGdI?=
 =?utf-8?B?OGZVU2pnUDBLa1Y2N2RFTG0yMXJudXMwaUdUbWw2V1NnbGE5RUFZVVJZakxE?=
 =?utf-8?B?dm81V0w4MzJxWDRuSEhjSVlyOUlCVWxZL3pWa1BvdnlWTVJ5T1ZwcmVRaGpl?=
 =?utf-8?B?R0owclg0TzlTWHV1OGMxVVRPV2lxRTRYMjljeHM2cEJBRTdiak1wTS9zbEY4?=
 =?utf-8?B?L1plK0g3R0JvK1RncEtReU5RRkRXaHJNQ0xGeERaVVk0TS9SUmw0T0g5bFJM?=
 =?utf-8?B?bTdjUUxubSt0cDFFeDFMMFl6Y3FVZWFuNGZSTEV5bmpoZE1KZ24rWkg0OTJs?=
 =?utf-8?B?QkJOendVWTczSUlVZEVCcG82eXI5bUdhcnJlVW8zSFJBRE95dFJLd081Q2lG?=
 =?utf-8?B?R3RRVUlDTWZPcnQyMTZubmhneUtxR3VQcEtjd1BCSFpmVnd5bHJSRFRXK0s4?=
 =?utf-8?B?bWhWMkw4MXJJQ2Y2aTFVT1hzRzJBd1FRdzY1RlN2ZTBoZ21OR3VnV3FmamdV?=
 =?utf-8?B?ZTBWemZFcWZzWHpyQXQzK3llWGtTTEowb0V4SEdacVdGUkJmVVZ2TGYwV3hE?=
 =?utf-8?B?cVh1YW1oTUd1dUFBT1RuVXJqSG1adGovMmxmMVJXZmZlQU5LODlwQUJmWno1?=
 =?utf-8?B?MEZsV3MrTDdnV1FJdS83TWFCTHVYeVlaVGpsZGRCVkJkOFFWQldmOEVSdzR3?=
 =?utf-8?B?UGJidFNvcXU1UllvNVo3TWordzRWU3d6cW80UjFBei9BMGs4WUZvb2FvUjlY?=
 =?utf-8?B?ck9CUVNWK292TVMvM0tNV0QrM3FCU0p3aERVUlZ2amczc0RmZVdMSWNuT0py?=
 =?utf-8?B?aUxlVFphQXFISC8vZGkvdDVIS0M0K1JQTzV2cTdiZUF2ZnZHSFVrcU5tYlFr?=
 =?utf-8?B?am1YWTMxUVBmRThsZm0xQkUzNFIvQWlsaGhHWi9TT25xZmN4cHhjQ256Y0ta?=
 =?utf-8?B?VUZLSHZZYmdFbEhtWnpCWW1sSCtSTjJrcDYzKzg1QnVNU3pJbUNhTXBPM2Vi?=
 =?utf-8?B?UHNob2hHWmN5R21qdWN3amFOaERSejJxSlhMU0Y0dis0OXhxTWdxV1ZwVmVN?=
 =?utf-8?B?SDh1WnlXT2JXTDBsQXU0ajJmSXZKY0tsY1J2MERRT1pMOVh6S0ZqVlUxeXU5?=
 =?utf-8?B?TGVkZ0ZJREMvUkRsY2RpbjZzYlZIWHhMdG41S2lSUFlJWll1Wm1nRW1SSlVY?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df2a8d02-9358-4d3c-70f5-08de33153023
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 09:12:03.1533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8NiE2lbh37+QXOJRTHG9dr01V+Izfty5vwG47sONJS6PUzHnxHwnqXlP9cL/EZlpjEepdbTMvkKIRT/ERMcCR558NyLKs2wa2NQ5GZ6G9iU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7418
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

igt_mmap_migrate() tests migration with various parameters.
In one of the cases, where FILL and UNFAULTABLE flags are set,
during first stages of this test, a mock file is opened in
igt_mmap_offset(), which results in allocating GEM objects for
page table structures and scratch in GPU mappable memory.

Then, also in igt_mmap_offset(), the file is closed (fput) and
the cleanup of these objects is scheduled on a delayed worqueue,
which is designed to execute after unspecified amount of time.

Next, the test calls igt_fill_mappable() to fill mappable GPU
memory. At this point, three scenarios are possible
(N = max size of GPU memory for this test in MiB):
 1) the objects allocated for the mock file get cleaned up after
    crucial part of the test is over, so the memory is full with
    the 1 MiB they occupy and N - 1 MiB added by
    igt_fill_mappable(), so the migration fails properly;
 2) the object cleanup fires before igt_fill_mappable()
    completes, so the whole memory is populated with N MiB from
    igt_fill_mappable(), so migration fails as well;
 3) the object cleanup is performed right after fill is done,
    so only N - 1 MiB are in the mappable portion of GPU memory,
    allowing the migration to succeed - we'd expect no space
    left to perform migration, but an object was able to fit in
    the remaining 1 MiB, which caused get_user() to succeed, so
    a page fault did not fail.

The test incorrectly assumes that the GPU mappable memory state
is unchanging during the test. Amend this by keeping the mock
file open until migration and page fault checking is complete.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
There are 7 GEM objects in total allocated as a result of mock
file creation:
a) 1 object from __i915_gem_object_create_lmem_with_ps()
 -> i915_gem_object_create_region(),
b) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pt()
 -> alloc_pt_lmem(),
c) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pd()
 -> alloc_pt_lmem().

I inspected the behavior of this test on ATS-M and DG2
platforms. The latter always freed the GEM objects originating
from mock file creation at the end of the test. ATS-M, on the
other hand, performed the release much sooner - around the time
a call to igt_fill_mappable() would be returning, so there was
not much leeway in the timing. I confirmed this by delaying the
fill operation by one second and that did away with the issue.
On the other end, adding a delay to __i915_gem_free_objects()
produced 100% reproduction rate. However, I felt that juggling
delays would not have resolved the problem, only decreased the
probability of this race, so I decided to increase control over
the contents of mappable memory instead.

Chris Wilson had a suspicion that this patch papers over leaking
vm_area struct, which was addressed in
f768ebbba9110846c9f986a96109d70154d60b5d, but that did not
resolve the original issue.

v2:
* change ownership of the file used in igt_mmap_offset*
  functions to the caller (Krzysztof, Sebastian);
* rename igt_mmap_offset_get_file() to
  igt_mmap_offset_with_file();

v3:
* remove double fput() call (Krzysztof);

v4:
* extend the comment above mock_drm_getfile();
* reword commit message to contain information about GEM
  objects;
* rebase;

v5:
* skip checking if file exists in igt_mmap_offset_with_file()
(Jani);


 .../drm/i915/gem/selftests/i915_gem_mman.c    | 23 ++++++++---
 drivers/gpu/drm/i915/selftests/igt_mmap.c     | 41 ++++++++++++-------
 drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 ++++
 3 files changed, 52 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 0d250d57496a..c561df41ba49 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1159,6 +1159,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	struct drm_i915_gem_object *obj;
 	struct i915_request *rq = NULL;
 	struct vm_area_struct *area;
+	struct file *mock_file;
 	unsigned long addr;
 	LIST_HEAD(objects);
 	u64 offset;
@@ -1178,13 +1179,22 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 		goto out_put;
 
 	/*
-	 * This will eventually create a GEM context, due to opening dummy drm
-	 * file, which needs a tiny amount of mappable device memory for the top
-	 * level paging structures(and perhaps scratch), so make sure we
-	 * allocate early, to avoid tears.
+	 * Pretend to open("/dev/dri/card0"), which will eventually create a GEM
+	 * context along with multiple GEM objects (for paging structures and
+	 * scratch) that are placed in mappable portion of GPU memory.
+	 * Calling fput() on the file places objects' cleanup routines in delayed
+	 * worqueues, which execute after unspecified amount of time.
+	 * Keep the file open until migration and page fault checks are done to
+	 * make sure object cleanup is not executed after igt_fill_mappable()
+	 * finishes and before migration is attempted - that would leave a gap
+	 * large enough for the migration to succeed, when we'd expect it to fail.
 	 */
-	addr = igt_mmap_offset(i915, offset, obj->base.size,
-			       PROT_WRITE, MAP_SHARED);
+	mock_file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(mock_file))
+		return PTR_ERR(mock_file);
+
+	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
+					 PROT_WRITE, MAP_SHARED, mock_file);
 	if (IS_ERR_VALUE(addr)) {
 		err = addr;
 		goto out_put;
@@ -1295,6 +1305,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	vm_munmap(addr, obj->base.size);
 
 out_put:
+	fput(mock_file);
 	i915_gem_object_put(obj);
 	igt_close_objects(i915, &objects);
 	return err;
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
index e920a461bd36..106d5c0dfcbc 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
@@ -9,14 +9,14 @@
 #include "i915_drv.h"
 #include "igt_mmap.h"
 
-unsigned long igt_mmap_offset(struct drm_i915_private *i915,
-			      u64 offset,
-			      unsigned long size,
-			      unsigned long prot,
-			      unsigned long flags)
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file)
 {
 	struct drm_vma_offset_node *node;
-	struct file *file;
 	unsigned long addr;
 	int err;
 
@@ -31,22 +31,35 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 		return -ENOENT;
 	}
 
-	/* Pretend to open("/dev/dri/card0") */
-	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
 	err = drm_vma_node_allow(node, file->private_data);
 	if (err) {
-		addr = err;
-		goto out_file;
+		return err;
 	}
 
 	addr = vm_mmap(file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
 		       prot, flags, drm_vma_node_offset_addr(node));
 
 	drm_vma_node_revoke(node, file->private_data);
-out_file:
+
+	return addr;
+}
+
+unsigned long igt_mmap_offset(struct drm_i915_private *i915,
+			      u64 offset,
+			      unsigned long size,
+			      unsigned long prot,
+			      unsigned long flags)
+{
+	struct file *file;
+	unsigned long addr;
+
+	/* Pretend to open("/dev/dri/card0") */
+	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	addr = igt_mmap_offset_with_file(i915, offset, size, prot, flags, file);
 	fput(file);
+
 	return addr;
 }
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.h b/drivers/gpu/drm/i915/selftests/igt_mmap.h
index acbe34d81a6d..7b177b44cd3c 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.h
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.h
@@ -11,6 +11,7 @@
 
 struct drm_i915_private;
 struct drm_vma_offset_node;
+struct file;
 
 unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      u64 offset,
@@ -18,4 +19,11 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      unsigned long prot,
 			      unsigned long flags);
 
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file);
+
 #endif /* IGT_MMAP_H */
-- 
2.43.0

-- 
Best Regards,
Krzysztof

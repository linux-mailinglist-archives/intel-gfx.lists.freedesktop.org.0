Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C640A2F27D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 17:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9A5C10E0FE;
	Mon, 10 Feb 2025 16:05:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nSNDunIG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89D510E0FE;
 Mon, 10 Feb 2025 16:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739203513; x=1770739513;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=wOsni5n4QpYlxAZqSQE+NmxAeU6r2uE9TDipPXKpyGM=;
 b=nSNDunIGcE+PQlCawhS9kGCF1ysqETvI+mlGQnXukqe9FPMmtZoiCVZJ
 qpCOayY4KSRJcSGinkBcsyBDnqkcJsg0cy5BmT4ecvoYlj96H/iEN5kl9
 sCJ7R+cfxtA8qTuH1iie53B2fkAqymoKBUKqW0id+l2SL0jKNArZxwc5q
 cJn0TyyZXsWZIVxOKjGiSigoshOmV0fYLU0+JLrhYe+TqhVW71SOGFj1X
 WyF5qXJ7BHuuEuDPR0WJ07QsKdEJRQ0ZJQZDenZsm3AD56QIOxRPbOoLi
 M59UFgo+qKZm/ow77VzWRVjWkWFSwr9sFpalLKGmo6KqzzxW4p78Ks2JS g==;
X-CSE-ConnectionGUID: SF/1HpQXRpKqAhqZfAfDiw==
X-CSE-MsgGUID: VPB4EES5RIe8EOjN3U5xGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39678874"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="39678874"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 08:05:12 -0800
X-CSE-ConnectionGUID: 0GcuRT3tTgmxUO1Y3OrcSA==
X-CSE-MsgGUID: xRO0mElfQ5SepUICPfMpuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149420966"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 08:05:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 08:05:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 08:05:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 08:05:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hOgL7XQ16oDHLCJpgXMmwwtY/cggj7b7NZ/aQS25rdWyx7WDq5gEidktNmlYcLEVguLhtbZ3mrL/L/WybQlusGR53x1sCX7CfwCqtjvoLylvJy8vA9Mt+JBnm2x8Kc8SZ9MjlRLKfHdSjikYLYNE0LLBEA7dpN/94tKnCds5Fo/4khybR5nXtBYZGGnIFxDaNprHELlRsEsDmhy8TjUu6vxCOq7ovh1m8ZjnjgYspgG/JWne8E7/t2wRCqIBj5jJlBplDnDf6cPRESLnB4j7cvM7vYrqsmS7Z12f8Vf0WwdZaKZzccPaMG+j7/bws6KCSRhjjhondAfmsme100ODXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UkpM2g9RF2JK5p/5bTdCDRyr8SmnY30JG+WP/8gG1g0=;
 b=D8bNdBdI/CTAeZQl06Lgr1NfBeJoI4Kpfo5ozwEcbw++aQmghMkdjfcIcXycyFnb9GsmDsNySpfms/xIgcyX8ayImiTFH85eJYs7IFaV72lUTTgj5vjR6NMPs2ne3Y3GZ80uWEL6ebplca/7SlH4KU2PUEUyfVWv/F2VsZ8t/LNgmqzxz1qdy2yk88k0vS20xEXpSd9RELY9rrysUDslOxozHz8rRW4vq9P79lVnGuT7Yz1xCUbuQxhhwLdA6wZz3F7QnaRePf7pETvFWewdUFSE07MYLOpzSLBmn3gDRy1zhL7uvCcFSCOurAu2VRHW5CN4uNdcvcausg6w/kSNmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA0PR11MB4528.namprd11.prod.outlook.com (2603:10b6:806:99::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Mon, 10 Feb
 2025 16:05:09 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8422.012; Mon, 10 Feb 2025
 16:05:09 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <hwau7ipfc7kfmjtosaxhdiz5cjvc3y3dborr4l36lugrfw2s75@bb4p7hjsb7wa>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
 <hwau7ipfc7kfmjtosaxhdiz5cjvc3y3dborr4l36lugrfw2s75@bb4p7hjsb7wa>
Subject: Re: [PATCH 0/3] drm/i915: Fix scanline_offset for LNL+/BMG+
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Date: Mon, 10 Feb 2025 13:05:03 -0300
Message-ID: <173920350323.1477.11957777998040050269@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0084.namprd03.prod.outlook.com
 (2603:10b6:303:b6::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA0PR11MB4528:EE_
X-MS-Office365-Filtering-Correlation-Id: 391e31f9-1cde-4e30-0f83-08dd49ecb118
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bmNPQ1E1SVFRZEU5TzNNRWd4dkdYckt2YkovS0xiQkxUVUZOTG1KSWxEakx4?=
 =?utf-8?B?cmo1NWNldjRWaFV3ZTYzMVVuTWdUTUIyNnl5cWhBTksrS0J5OWVwWVhZb2dY?=
 =?utf-8?B?djR4WFp1cmVtdEZ6WktGbE1UZENEYk1BMUNva004UWpvZExzaG03RXlERS8x?=
 =?utf-8?B?UDUvNEZTTVpueWw1WERJeGZuSVQyZUlSWTF2NFJrZnhYb21ibTRyNE9OOEVF?=
 =?utf-8?B?bE5ySzEyU2VFVFk5VEtzV0wrNUFlZFd1d3lWNm1FTTBNSXF0ZkozTHU4RUx4?=
 =?utf-8?B?alFnN0dMN0Y2K2gzcWEwR3FGZ0VaSFd6dm54dU1EWnE4ZWNnVkpnK2FVdE5E?=
 =?utf-8?B?N3I4Z1RhYVpLSnU1cERxUFdsTlE3RHZxK010YU1PemZtUkZueGZ1bTNZUE1l?=
 =?utf-8?B?UlpwSWRiY3lTdExCaTR4NHdDTFExSEloOXVMeTNHRnJrKythNHFnQjExblFl?=
 =?utf-8?B?QjloZE8rcU0wNVQyaDBGZFhyNXVKZzBKaEExZ1o3eWpocnh3cjVmc2I2bW1C?=
 =?utf-8?B?Um8wNVdKNGNvdnZ6elliMlBvVG05RFg4VkRHWjAyUVRMWUI4WnhYT1RtSm1m?=
 =?utf-8?B?aklUM0E4YUMzRm81ckpCbGIrZ3I1SnRTUkJoUkJnMUxYZG5YYnFtMnk0RURP?=
 =?utf-8?B?SXBRT2NSWUxtWTZCM0d2bmtYN3laYysxcTV0bk1yOFFrc1ozcVk3TGRkU0Vs?=
 =?utf-8?B?QTRaUzFQVEpLOUFoaEZEdHdJUVVQSk9vMGpTVlhVb2ZONHQ0ZElpb3dqcjZB?=
 =?utf-8?B?K0tMSng5UmlUOUMwS25TTDl6bjdVMkp2Y0xKclBjNC9wT21pdGVaK1RBMHQw?=
 =?utf-8?B?b2h1ZXV4NHkvdEYrZTRZNjFOZEduSStKaUtsQzdXbU9DYlhBVFFuZ2sxVzRF?=
 =?utf-8?B?b0JOVVdZRUZjYjZ3Nks5bzZ1c3ZsRUh3ZHM2Ump5aWdJd1djZUdZZEhuTmVL?=
 =?utf-8?B?NFFjbGpaOGY3YVpRVW9uRjBMK1N0Ny9zYkFqbm1lL1cyaCt3VXRVUmNBYXVi?=
 =?utf-8?B?RUxNZzB3TXNIK2Y4aVQ0blFhZEFPTjJ6aFR3MUROeWxKYnZuZldoRk1vQ3F4?=
 =?utf-8?B?RDVqWnpJcWszY0RIWGVzRndzY243Nkx0T0MzdEdkakNuSXg1RmxQNDZ4TWlH?=
 =?utf-8?B?ajZyc0lEYTh3Ulc3V0kyaG0zUUNKZm5mU2wyMEZoZG1PWW5hUFJzQXlESjgx?=
 =?utf-8?B?cUtGQWR6TFFiMldaSWZKU25vcnFzR1BaNEVjNUttZnl0cW1nb2M2TnZ6bGEw?=
 =?utf-8?B?OTA4b1ZmTHpMMzN2K3ppZFpvUnpoQ0t0NmZJaVoyVE0yS05vZTVQWlBObm9Z?=
 =?utf-8?B?NnlaS0haYkFtTXUvMGx6Z3dJcDM3OU85ZkQ2WWV0N2kyOWxqZE5SeWEvNFFE?=
 =?utf-8?B?Y3V3WWY5MUZBZ2M3QkR1Y2wwcjdJNXF3ZWxBMFVUc1dETGdCMnBveUNvV0RM?=
 =?utf-8?B?MStEQVMvQjJua1RML2sramhxSThrMGJHN3cyOS82VjMzSjlwYzgrMFlGVzh2?=
 =?utf-8?B?Mmx0T3dHR2N6YmZ5ODFCVVU2STgvcVlJdlFTVEZ3RGxpMTRhVDI2OGk2M1Fy?=
 =?utf-8?B?dVhSeHFXNlZDSElnV1ZSU3JUeFZYTE0zcERPZTlaQkFJU2JFb0s5VGRvNUpo?=
 =?utf-8?B?TmxPdGRLNEVUVFNlRW1ZVXBlcnZmbFJOMTZrMlR6VWtJVnNGM2NVMVhCVkZH?=
 =?utf-8?B?YytuSzFuUWV4NktodmdwNkNBRUFQenR2QzQ5TnJkSlZuZXBnRFVKUVUrU3Fr?=
 =?utf-8?B?YXo0SUg5WWR2a0w4QVpBZW9pRXgrbyt1bGJpK2x1TzZGdkF1bnF6M1NTLzNW?=
 =?utf-8?B?UTZzOWhLSitwa0NzYmhUTFJYUHZXOEs5NDdDV2laVEtobUoveFNTaWJIUGhZ?=
 =?utf-8?Q?fvPsB2d/r65KP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEIzeE1uWDJ4TUpXaGRzQ05xR0ZpaEx2ejN4dTNOS3I5TXVSQzF1UVkwZ0hx?=
 =?utf-8?B?Y1RDbGVLVmJNQUlNRUJJVEN2dnBvT1VGRnBCeVZOaDN1MUlQTHVpeVRVUFg1?=
 =?utf-8?B?UCtSZTE3U2tZMmdUVXU2RHFTOUVpMDVmNkNyTFZVQlhGYXg5dXhNNFpiTnNr?=
 =?utf-8?B?MVdMU3NjMzl3anZ5Z0xPZGdER25mb1F5OSt2ZjRtVUZRZVl4NGJ6QjRLRVhL?=
 =?utf-8?B?SnRqMWJyclQxaVFXUm5CcnJFYXl6YlZNcHU5VVhTNDNpZHBGanUxUUNuT2NI?=
 =?utf-8?B?SEJVeHV5NWZJNDhFUmFOdUxqTTB2ZHdxVEZwUnhKTXBFUVlYUkpYa0VPRnpK?=
 =?utf-8?B?UTI0T3pXdVlJb1JFNnJjS2FJREFKYWJoelowdzc3UVhoZkdiaC94M0ZNNnRl?=
 =?utf-8?B?RldrVDMzbFZZM0lBS1dycENTc2dJb242WVBubDUzLzh0SXBBSGs4OGd2L21w?=
 =?utf-8?B?RlJnRjloVFJiUmpZQy85K3lQKy9PN01UdWdydkpCTm1PKzM0LzNYNThEei96?=
 =?utf-8?B?WmlGamZlYUVXOUhKMHlrZzNCWGxGSXlNemdPVWo3a3dwZTVuRDJmY0JONmkw?=
 =?utf-8?B?UmhZY1BZeDk1RFVITzd6SmpQWGJTMnNicUpFNjNpVEk1a2dpY21GM2xtWitq?=
 =?utf-8?B?Q3FjRU9vNE1rRW01bmFRdC9McnVoSWhKbEhDMWhJSVUrVlRlK3piTjNwZ1ZC?=
 =?utf-8?B?bWdYUmd1Y28yYnZpSGE3MkpKSFpvYUlrc21ZWVlpVjArdmdLZmdudVNhaWJN?=
 =?utf-8?B?K2RTU1VQVjNzQWRVSVFTT2h6TFVGd01iNUNCU29DekRISWl1bzMzU2ZMRmkr?=
 =?utf-8?B?ditjRkRuNkRJOU9tRCtGWEtVWkhtcGRZSzc3d05uVTlqenRoTktjOUg0bWtQ?=
 =?utf-8?B?Z0hWbXYyMlNDQkQ4YWNyWldWaG85aEJMd3RPbDhoMUxkajd0cnV0SEF3NGpu?=
 =?utf-8?B?T1FHejdmTjF4eTR6aDRWZzJIak1nd3pUS0c1SitiaEpwNXNQbnNLM1BpSURG?=
 =?utf-8?B?Yk9zaXZYWmI4ajNOZVVXNm4rcUdlRzRLYzl2RVl4QldjMGtSOW03QXpZa0Jl?=
 =?utf-8?B?QVhDRDhrTUdjWDM3anFOZ25kRk1NUmtpQ3VjeStSSlIrdmxoQmJHOTc2OW04?=
 =?utf-8?B?Zmx6OWlrT1hlNGZRdGIwQ0RaM3NWY0dnelRaV0F6dVJCMFpiVWM2bi9POHR6?=
 =?utf-8?B?T1FZRWFmZFZReG9VcG5jZHg3endWVHJ0UFFheVZyZDNKRXdYM3JWdjBSVnps?=
 =?utf-8?B?dlFjMTZqZFZaSXo4d0ZGNWlleDE0UVQvOXpLQXNnczBBZktvUjhGMithUDR6?=
 =?utf-8?B?TFErbnhWNU50c05qemJYVTFHSHlYS29GMFUvY3pDY1RITUpMYmZGa1lrRGlR?=
 =?utf-8?B?dWpmVDZ4VjZ4cjFvOGp3aGxVTEFXSFVQd2FvYzRoc1YvRElSUkVFNitIbnpL?=
 =?utf-8?B?ODA0RmJUVDRLcEZBeHNXVVE3eWtPUjhMWkNqeEp1dEFqcFdRTVZ3Yy9tbzVm?=
 =?utf-8?B?dXdvc3RjWjJPbEM0OEVQSjJNSUs3S1lKY015VkMxN1JEOHZuQ0JWcWNzUWQx?=
 =?utf-8?B?WlVsUzVBTFpVWWVQWWQ0RVlaYkgwenVqYlZYV2d2NTRCN0l1azVLWG5lTnYr?=
 =?utf-8?B?ZGJ6SUtITXJsZDhJRGVDUDZNREIvRnpOVDZvelFSNUZ1K1FSb3JnbkhQVElZ?=
 =?utf-8?B?T09IdC80eVdVMldVcFlVOERPUGZmN3c1dlYxdG1wY3pXeXVrOWtENWNCT0o4?=
 =?utf-8?B?UWhvRzNYelFKQzNuT2FKdVVaSEcvQ09nSzhNbFh5SGV4ZWU3ZHVFSThwdDBn?=
 =?utf-8?B?SmREZktqRGUvd2lkOVVBK1hkbEJid3J0YVZxYjNuT3JLeHFYUmRwRmtBR1Z1?=
 =?utf-8?B?aUxMVVhKeTZaYVhmNmt3UG5OQlRwYXZZV285ejYyaUpXdzRmd0RGblB0R1Vm?=
 =?utf-8?B?TnVhei9yTWxUbGRFelNmc1hHUkptWFZUd0pqN3NPay9nS01FWGxmek8yU3JG?=
 =?utf-8?B?VVVMYzdDRmwyQlhCNFdLcmVsVms5TktvL1JUVEl2RnpqbExnWjdNa05teENk?=
 =?utf-8?B?a1l4ai9WVjN5dXNPc28rMFh5dHZSSXl1T2QrZU1lUnYwRHFYcGNsUk9SK08x?=
 =?utf-8?B?c05kSnJMbDFoVitaaisvNEtEYWpIVWlCMTFJY1ovK3h2Qkg4NXdBTVROVndx?=
 =?utf-8?B?TEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 391e31f9-1cde-4e30-0f83-08dd49ecb118
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2025 16:05:09.0487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 98YBKSID0TYZPvdrWzxyvoPL3NM0q62ItjUWJH/7PX1Qj5Wdnq1c60tiy2RxYiSu8K4tE0gKvo9DPQwjZC8ygA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4528
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

Quoting Lucas De Marchi (2025-02-07 19:41:11-03:00)
>On Fri, Feb 07, 2025 at 11:54:03PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>>Something has changed in the hardware on LNL/BMG because
>>HDMI outputs no longer have the extra scanline offset.
>>
>>I confirmed that MTL still has the old behaviour, which
>>is a bit weird since both MTL and BMG have display ver 14
>>vs. LNL is version 20. But can't argue with actual
>>hardware behaviour.
>
><6>[  210.368608] xe 0000:03:00.0: [drm] Found battlemage (device ID e20b)=
 discrete display version 14.01 stepping B0
>vs
><6>[  412.999204] i915 0000:00:02.0: [drm] Found meteorlake (device ID 7d5=
5) integrated display version 14.00 stepping C0
>
>So 14.01 vs 14.00. In the driver:
>
>static const struct {                                                     =
      =20
>         u16 ver;
>         u16 rel;
>         const struct intel_display_device_info *display;
>} gmdid_display_map[] =3D {
>         { 14,  0, &xe_lpdp_display },
>         { 14,  1, &xe2_hpd_display },
>        ...
>}
>
>So maybe we need to check for the full version >=3D 1401 instead?

Yeah, I think just checking for version >=3D 14.01 would make sense here.

>
>+Matt Roper, +Gustavo who may know the right bspec to confirm this
>change in behavior

I haven't found any bspec that explains the behavior of the counter
outside of the bspec page for the scanline register itself, which seems
to have the same description across different platforms.

--
Gustavo Sousa

>
>Lucas De Marchi
>
>>
>>Ville Syrj=C3=A4l=C3=A4 (3):
>>  drm/i915: Fix scanline_offset for LNL+ and BMG+
>>  drm/i915: Reverse the scanline_offset if ladder
>>  drm/i915: Replace the HAS_DDI() in intel_crtc_scanline_offset() with
>>    specific platform checks
>>
>> drivers/gpu/drm/i915/display/intel_vblank.c | 13 ++++++++-----
>> 1 file changed, 8 insertions(+), 5 deletions(-)
>>
>>--=20
>>2.45.3
>>

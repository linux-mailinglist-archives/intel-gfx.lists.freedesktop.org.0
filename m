Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BABBA9F193
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:00:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A923510E4CF;
	Mon, 28 Apr 2025 13:00:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CJZVIyy8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680F110E4C9;
 Mon, 28 Apr 2025 13:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745845239; x=1777381239;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eI25AGYPOMVFa8yVvQx5oYIiI7BlgVsaQABTz3sFc7s=;
 b=CJZVIyy8Cv+p04OMmQBdqPSBlw/uJLTt1qtJlVzMn8yjJC3vouR6ZbxN
 4sUYBptBHRVLkSb3mqlR9IRMMau+93oE4bZ0KjPkTAwzkPfvZRo5wZ47p
 n+D6Ily0iqCv7EsVIEcL7yEci+LfA1synLo/BjV5KmzpY2sdbrEcI8tGK
 TryT1+iob9DgxkwB2X8w/6/mcplZv5mCuitlxGx72C2C/ulPX9YfPj8ZR
 hn4BvQ5jI732qaaCnwKoGcnbY16wTM8CbFYhgIKpsH3rT8nQmy6LqGFBr
 6CQzLrn+awxgHMcC460vBBHEivxM70FV3ut66Ix5+w42hjnKOerQ1LLcN Q==;
X-CSE-ConnectionGUID: srmzMfXlTKSLFGhLNdEUow==
X-CSE-MsgGUID: OIHjWnY+RqiFeSBIaRKHOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="47344880"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="47344880"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:00:39 -0700
X-CSE-ConnectionGUID: k7VkyLRYTg2j7mYSexq2iQ==
X-CSE-MsgGUID: bqxqQlYuTTiksnKW0qNDuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="164591527"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:00:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:00:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:00:38 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:00:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RaQr9YFVbnJfHYCvwjj/946YRhvO8eVB+2SWx5pjSgNkvVyvyDghNaQ4xC8FNZZ8INWaUcq2q9yxxtouwLNFrgTTaYH/EViI7FwZ3/WJ4J/L9dvW6p64A/TTUwCYpMPoo0CeEiDjKQZFRXP8OPwUnqPQFvsf0CU/aNFJJ7qOfgbCly1IVfxJB/t6EUqPFyL4jB9mKni2QDDo0B6tdSvBF5YTryYkWE4wFklT0RZoAd1AR1kJWQhHtrUi/8VE1/32l1YnNSRpcWbqDmUukki+DlGGAl3Ev3CtBGv1GgOoI+Kz2UstlIJIxOo6qcl5EVTSem40poLFuNt3rzOjHX08dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ow2IKsYnY3tKjEyQkNz0N4++lZxw/WQHV1ifW2IS22g=;
 b=czWvRyulCktw4mIcBZ0qy7s2VBeFSwtofEZ9EnB41QUJ3r4e6OIevkTvP4uECT3ca3Cg/wrwYJsKpfBF0CaPdoFI4/R2GnST1K2xWhXBEmy9W51UiQ9y1rj7TmDK6gD6fgpw3gwFF93m4Upax7/I3mnrqIy0BoGBm8rWZm3Ns9Sgmm81B+YEG5RkoPuHgtWrBnAj+Z9PpbSLUHhqabClpC2l1tLn1Cdw6dWUmbTLDH7yBfBtBihPHbiid4NnBPOIwxafkwc69Eng50iMKni4cFpjwZ0Eo3INXsn0r2hpOu3Sjlustluy5CzJZuCstZFoSebO1B0Ki0ImWFXL4Mzp1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6780.namprd11.prod.outlook.com (2603:10b6:510:1cb::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Mon, 28 Apr
 2025 12:59:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.033; Mon, 28 Apr 2025
 12:59:53 +0000
Message-ID: <13858ae3-6c86-4c10-bb46-b07ea5ab9481@intel.com>
Date: Mon, 28 Apr 2025 18:29:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/15] drm/i915/display: Add source param for dc balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250428062058.2811655-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428062058.2811655-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0025.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6780:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cf593a4-fcd0-44f3-f751-08dd8654915a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Mm9XRFBvYXEvcWRCTW5aZDdjTGVHM0pLSk5EMWpDdGFOOC9mOEhvbnM4MnhW?=
 =?utf-8?B?RkgvdUZHQjkxTEVUNUJzazBUYjJ0QkFWK0g2Y2dRNjF6eVVSZ2RaTmR3NHp4?=
 =?utf-8?B?dUpwNDZuenY0QmZxWG5jL3haOVY1NDdSVFBEK1dQTTBiS1JiL3ZtakFNalRM?=
 =?utf-8?B?c2p4M0V5WUpuRmlLNDZmQUtSZk0ycEErQzg4RFErbUVjVDNLRTJuVEgzOUZF?=
 =?utf-8?B?RGlsNFZiMWlnREZKZ0w5YjhQUXAzaXFSS0FVemkyYTB1enlFYndNS3E2VFRK?=
 =?utf-8?B?RXdDSm9uNHQ3VXpEeDgydHZoNkpBditEa3JrTlIvZUZtYXNlZzJZcXFLNU9m?=
 =?utf-8?B?Ynlxbk45N2hjbzE4MkhQSnFVL092Z1dDZGt2dVlMelUvNFVrc1FJdEpCTm4v?=
 =?utf-8?B?MDRqMjVreUdRZDdQdGRaK2ExRGIxYUR6YjNtT0pzSHM1NkdxY3NRblJRNWRk?=
 =?utf-8?B?bFB0cTVwVk9iMVRMRmpINDNuUDZUUEpUQnZTd2N6OUZJL0RuOEMxL0FQcVgz?=
 =?utf-8?B?RUIzZ3VaV0JaQlhFTGxXTFF3amVJdHpoR24xVm1SZDFVMTNGUSt3aDFPUlky?=
 =?utf-8?B?NG10ZEtrOG1tUHA4K0hOS2hkMGhUeERzZEVFbUtIbWloUEpyWG5Ic2I5NE8y?=
 =?utf-8?B?eHVZa3JDRW1kVHZ4SXk5RWR5aVhhMDM0elRYTEpIUFVrcXV3YklSdlpHODNE?=
 =?utf-8?B?bmZSbm1wUTRRY3lDYm52VmFpblFyNzZjZGx2ektrR0loRTBsb01MUk4vYTVy?=
 =?utf-8?B?VTNqbmdibDhDOFdvUEROZnFhb0RwWlN5dFFmUGtLVGRDcU44UUdKeGxPMlVx?=
 =?utf-8?B?WlFUbDR5SFh1OWpXRk1uaFNiT254blY3S0xmZnhJZ0R6RERlWTlzWncydmNz?=
 =?utf-8?B?MGxyN1RMSGQ3KzdEMDY0bGg1UkJQejZ4VFZBdyt1bzV4ZDNWUUM5bUdRNno2?=
 =?utf-8?B?cHRySFYydWR3UzFVZ0xMMEhNaXlWWFVxblRwWVJ6cEtKYktZNEJ0UWgzZi85?=
 =?utf-8?B?Q2ZBVXdqWWNyNVkralI2NjJNTU0wMnZSVXFnaG9DR0ZISy9xK3Q5UGtkU1V0?=
 =?utf-8?B?ZU55WnhrMEM1UmtZQ3lHN1ZlNUZYdkU4VXlkYmlTbHNPck1qL3FJSUp1aEli?=
 =?utf-8?B?K0grcHBKanBYSWd0TlhmQjFWa2FKS0ZDS3ZJVTlFcGJMUkMxMjNuTWRWdFox?=
 =?utf-8?B?RHNvNTlvTENjMjJJc3U4MTMrU0JreFJIVko5NHAyVHEyT0h1aXorQ2tBRStY?=
 =?utf-8?B?NmJtVnk2VnFQUWg3RkMzVjlqWDNyQUZDSXF5S0tXcWdFemhYUUw4Sll6ZW1t?=
 =?utf-8?B?aXJ5ekFPUTFpT0ZtaUJBL0g4MG5zTnZBUFdVeW9kbWQrWERKbERGS3hWeVlm?=
 =?utf-8?B?MERNSVgzRFpxc3BXZU9YakJyVGo1WDlmWUNmcE9HVWE5Q3BBRjRPN0NqTmt2?=
 =?utf-8?B?RzA0UHlUaFlNZUlNeVJtemhOQjRwc201MXRTUkNhK01ZMmVVbXpHdCtVMlF4?=
 =?utf-8?B?ZitwcmI4SWgzeXZsZXRRd3dBTzVOMDBOYTBtMnE1V3hGR0NZY2VqcUUrTERP?=
 =?utf-8?B?QkNLeStPcGNtRFluYUdvUVVXOUZpbWhFM1V6TjMzTmRiemFnVVpJZHpCVHRt?=
 =?utf-8?B?bkVKei8vcDRGS3k0MEtBVTF2WWN4dUVqQjBYa1VwRXc3c3AwZEZQc2ZsU3Ry?=
 =?utf-8?B?S1FkWmJkN0tlM0FKcjdZSFp3cnU2UlRhSjNhczJvSU8vT0RlS1dqVFp1N3Q4?=
 =?utf-8?B?NmIrM1h3blNMTXVZSG92QXJrN1VtL3g1dE94YlJRSGQ2OC9xaEUxdklXWHJK?=
 =?utf-8?B?S256dGt2emZjSWJhNGNyeEJLb0U5bFZLa1ZMRUlzUmlQQzBvampoTmRWdkFZ?=
 =?utf-8?B?b0dJOFFrR0pMYXFNMERYOGdCMloyM0hydFlnNHhNcXFnRUhlS085N3k3RlBJ?=
 =?utf-8?Q?abcIuJU7rhM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0JhQTB4Q2JLUmxrRWhISmtIZjlDL0ZURzljRmJ6ZGc4dlBXZlR1SW9wR3Q4?=
 =?utf-8?B?V243Mk4xeDBKWmwzbk5leDdkNUNyaWo5cjVlZUEzb2JyRzhhYnY4UTN2amRp?=
 =?utf-8?B?VGJubFhQcDV1bEJ5ZElEOHpKTDF0V2J2aVp5a3l0Ykl6b2h5QTd0MHhWRXB0?=
 =?utf-8?B?dUlUZWhlY3dQaVBVMDFBUVppK1d0bDVhay9HREtNN0s0M244RVdRS2pFcFBy?=
 =?utf-8?B?dHlEMGxXM1RoMDFmYzlubEVrcE9VME1SY2lmank4a256YXk4bHhjem5sTmg2?=
 =?utf-8?B?QnRCSGVDRGUrL09WVmowOFpuZ29uN1JpaXZUbFk4VjBEd2d6UUhtRExXc2M0?=
 =?utf-8?B?U0xRNUNKczZyNFFvbDBMeWlPcnM4RWg5VE1oR3EyTmZxcGJCdHpMQUNBTHAx?=
 =?utf-8?B?NjZJeWJCM3hFMTlWQnIrT2NqYlhaelowcHZmRm5QREErMGdwczRpWm9FdElE?=
 =?utf-8?B?U1k2V2dmeXA0MkIvaUlWQ0FwRWhSRGlVdzlCY0FINmtPV2txY0xwd25jYWVw?=
 =?utf-8?B?SEMyUENUL1VDeS96bDNtQW5IczJxWHNBT0tHcUJkeHRMRkhUYUUvN2s3d0Y3?=
 =?utf-8?B?dmxyQ0JLbUowcGdDWHNFNVNQM1NkUi9pR1ZydEN2bHIxUWgybWZjSlhUQlVr?=
 =?utf-8?B?cmFEYS9MNlZBRVB1ckJUNENTa0xXak52NHo2SG1veWJMb2x5T1BkL1NnOFc2?=
 =?utf-8?B?NmVnOXFUMkp0bnA2MlZHQTkrd1NUSzFHYUVvb0ZFRFhvekpyT1FxcTlmbFhz?=
 =?utf-8?B?bmdFd1dlMUV5SXZIOStQN2VjYXFTVjJxMU0yR3ltdFd0RjRDeGFQdXdpL2FK?=
 =?utf-8?B?Sjc4YmFCeHd5UGl4M0dDQ2hXdHBpa1ZqY2hNVk1YRy8xbTY5UGtVdDZoaVJq?=
 =?utf-8?B?SU10NHIyUEJoTjhjWjJ6N0thenJMcTBXSjRiNHVGOFlkN2NlUTNVUWluc24r?=
 =?utf-8?B?VEtTcllzWXUxbENuT1lIeVhvS1liWStuQWU5enV3NVpOSlUrMkNsTTlzYWRw?=
 =?utf-8?B?anJSL2JYNWZWNy9vZHhlanUrbElFZGhycFRVUlNOT3R2SjdXSWNUc0VKd2h4?=
 =?utf-8?B?anN4eE9VT0IwdGt4VVJOd0NTUHBZZzA3N2dESTdyMXB3eEtIWDgrY2JXUWha?=
 =?utf-8?B?UDFXTXFrN1QzOThVTDNtVERIR0t1TzhwT2ZUWHdwUkh4WUsvQVlnWnB6K25a?=
 =?utf-8?B?UmI3QXQxR0VEVE1haFN0MXlTWThMTU1GallOVkZOSVZsQ2JQWit2NUNINVZ1?=
 =?utf-8?B?cHM2b2JvWGZJQzd2a2pyZDltQXVuU2M2WWt6cFR5T09HYy90RGtpNW9TaHFR?=
 =?utf-8?B?dC90NlpQNWZ4MUEyZ2ltUE9CeUozWnprQjYxNlo5UDkxUTZaVHJCYVk5dEhI?=
 =?utf-8?B?WFJLL2U4cVdCTlpjYzdhSEFjcm85Y3FvS3A1M1VtdlJqSDkxSDBBKzEwK0Qw?=
 =?utf-8?B?bzdHMnJwUDZYQmZYUXg0Z1poUDZoWE1RUURrS1BDaExFc1RMSmVXb3U0ekk2?=
 =?utf-8?B?QkkwV0duNmNjd01RVzA3Rlg2SjJuaGRYcFRiZHgxL3E5bWo0RXFObW5hcVI1?=
 =?utf-8?B?RHBSeE1XRTNHUkNIY01pK3R4Rm9BRWNMV2ZUOENNVVhkaFd6a2ZFT3RxQ1Jn?=
 =?utf-8?B?Q3NsbVpHbXowVmxYNDduNWRXWHY2dGlWR1lsekk2aWNFdnBXNXhSQnc3clQ3?=
 =?utf-8?B?M2R2UmgrT0VZVHVubFpoQUJSSk10RHJ4S3g1M21JNGJPMHQzYWl2TFNSNFU4?=
 =?utf-8?B?R1gydDhXVDltSnlBUGFIRk5oUm80Rnh4NWZZVUlwd1pFaSsyY1UyYk03eElW?=
 =?utf-8?B?bS82M2J3aHpjbTVSTmZ3bEErUnhEdWs0c1dBRkhwQWNCMlV1aUhXcXlUbUZY?=
 =?utf-8?B?OWwyOFFWK3dRZGpPVHRjQW9aMXVmd2hYckFCU250VUwwWkVWUmxRbXFVUll6?=
 =?utf-8?B?c2VZc0xmMVdqZXRqaEF1UXl0SW00cXZxYXRQYjFIR2lwUm8zbG9tOW9obnNB?=
 =?utf-8?B?b2k3QXdiYnB0U3JETFVzWk5zZzcxL2YwSVFmNXg1MXJxUnBxa1VCWU90bVlS?=
 =?utf-8?B?NUdBb2IwelJlRW5SZ3NqS0V5UiszVFdYWitRbkVaZ3dod1ZCaStwMEhLR2E3?=
 =?utf-8?B?WjVyRHMyR09mRHhQdEtGRWNVdkZvZ2ZtWGtLTHZ1b1o0UzVFY2RMOEx1eUo3?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cf593a4-fcd0-44f3-f751-08dd8654915a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 12:59:53.6332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9NWPZ6TBy/NzzsC/evA1JzQbY/CDJLypRWjFCTuNJZHgiSUjYxki6Nf7KZFw8QNpdH/3wyO051EfN0vSPybloqhkSrrZWXf/8xSHoYswF8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6780
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


On 4/28/2025 11:50 AM, Mitul Golani wrote:
> Add source param for dc balance enablement further.
>
> --v2:
> - Arrange in alphabetic order. (Ankit)
> - Update name. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 87c666792c0d..fd886e1283f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -193,6 +193,7 @@ struct intel_display_platforms {
>   					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
>   					 HAS_DSC(__display))
>   #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
> +#define HAS_VRR_DC_BALANCE(__display)	(DISPLAY_VER(__display) >= 30)
>   #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>   #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
>   #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)

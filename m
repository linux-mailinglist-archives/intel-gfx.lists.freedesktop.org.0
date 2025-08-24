Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44200B32D86
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Aug 2025 06:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BB710E1F8;
	Sun, 24 Aug 2025 04:22:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GfB4B9Eq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6785810E1F6;
 Sun, 24 Aug 2025 04:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756009360; x=1787545360;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3ovZs7ErCzuJrNZuz2JI/5TE0NBZ/KjsFpCmPMpuECQ=;
 b=GfB4B9EqME3QacdHvQwZcnCe02lhMoUhSzS9YwpcXSPxbKB/JDdahdhc
 iMwkisKN8Jth5ptEOGfukPZlDcZS3nRnSBtHpKFCuChuYQa3ssP+2Tcqt
 Ad0YvDzbpeg4g1NowKFzaE/OGiDr+fUj0pdCSYGscxoxcwRozEMdcNML9
 dbcaqVyfN3eIT8TV7++Y/y17knUn2O6Uzpmd4neLKGJenv00QVKAiSx1/
 wTpd1JJBEp8mwau33szu2wbI3X83+8aBqdDuf2o2nIiN42enxIGnkFv3V
 DfLMp9GaXtoRW8X9l6i3w83xZFyvynVlPbcPPz28c9m4sZWLm3RBqmV1K w==;
X-CSE-ConnectionGUID: VAiZJz7mTUGxQcvb4doIsw==
X-CSE-MsgGUID: H7BSEXsySji2xGJcPdRX1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58121849"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58121849"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2025 21:22:39 -0700
X-CSE-ConnectionGUID: URo1gRTySFS34Sgo7cAk0A==
X-CSE-MsgGUID: Zqlld33rSiK4DhwKstZbYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="192683142"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2025 21:22:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 23 Aug 2025 21:22:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 23 Aug 2025 21:22:38 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.72)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 23 Aug 2025 21:22:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Syn4Blh8/uMJHcGzfKkdrZvWjZMHaMLWyzL9bZKHjMBf8nkmpE9PGaPLGoSJ77/+zButnT1WBvPHol9899lQHdrCx90JhHcHL+C3/vIYLB/LkpRXib/yoBwkdppJE/oi+RmLfLPYeaJSA/r7OSXzPJFA+unNaNYOLB/JkgMfEfRFr+6qA5V3VUtJRYXDiglqh2mi+ZqVRcWI4uA1L1Q65A596aL2ovUHMPVQ/eh+pFvTRsSWfCEpLJm/yDA6OJtv1xRZm9XC7/7+Iy8vbqK1p1cdqgWu00qgti1lzJUlOhfDTImRPIXSw23/t+l4wVDOPkTx9ld/PaFETLh5h4G3+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yuVWzVTupjsHZuqdQATs9pc7SwYlRbSaCGKyrY7qqq8=;
 b=yB5suRcgqkYBmoKABDCZVvhdmbCOqFKIbB57KjbzkO2/K5QglsH5cl/61M0n+liUvlXDNoUrbeKOwCRr1hyr2n5UxBGR8dmpaaa4wQ1o2t6c/MwTowhf2jCIGaB7grNF+NxrmBcc/lpBboyYwIORLMG6bKy9fmyorkJpnQA37J4UVRuNIZd93MfPx2q4baYASVq3ZPDk5J7VhUuhgZe1nvs991lnH8Ws2ujKo6Do/+gucQcwBQ5+wrH8vG4iMaX9qDc4NEPeZrfHv9V/gEXM8iDQke2sv+AH6FoT6YIr9L7uVOAa7kHh4+jpCORdazL6lzlEydNB9ETLmDEm4B829g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7813.namprd11.prod.outlook.com (2603:10b6:208:402::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.19; Sun, 24 Aug
 2025 04:22:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9052.013; Sun, 24 Aug 2025
 04:22:31 +0000
Message-ID: <ba4317fd-800b-4318-8603-741f45d60128@intel.com>
Date: Sun, 24 Aug 2025 09:52:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20250820080451.2634888-1-ankit.k.nautiyal@intel.com>
 <20250820080451.2634888-9-ankit.k.nautiyal@intel.com>
 <ca1a863b518a0778733496488597faf9acd38e96@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ca1a863b518a0778733496488597faf9acd38e96@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7813:EE_
X-MS-Office365-Filtering-Correlation-Id: fe0dd729-5a2d-4c56-4660-08dde2c5d75d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ty9DQW1MSkFTWDV0aERjOXFvYnhZd1lhNFZOTEdGN0gwWlBzUzBNMndXUXBG?=
 =?utf-8?B?TXYwNnBNdmswakg1aGthSDdoMmZhRDZRMHVrOTAwdnZtQTB1amZDdzNOcFo4?=
 =?utf-8?B?R2xub1NQaktLZmRqZzNsWFNRQkJuZmJuVUxRMmI3MitKOVFORDZjeHY3Z0Nt?=
 =?utf-8?B?TVVkWFdPZy9tRmtTWnZncmFpZnI3bFVmeFp5WUFmLytXZCttVm9CRmQrOFk0?=
 =?utf-8?B?QVAwTW1OcnlvZ3pVU3RsRS9sWHZ2TVYzM0xtTjhJa0gvY1FTcW5ZUm1FK0Vx?=
 =?utf-8?B?d2gzdll6aWh1VzEvdnlRQm9FTStIRWVqekJndlV6cTJmb0hDdXVHcThQMWs3?=
 =?utf-8?B?bEZoTG9LUjJHaXUzM290dm55UEtqZElLb01HdHR6WVpaT09WL1JENmVpMnJB?=
 =?utf-8?B?WTZyL3ZEUlFpMklFTVNKd2taamQ0eGlIRThoRmliMXFzK2szSHM5Z0RnMUdI?=
 =?utf-8?B?TjJuRXE0R2ZCNGRRQkdSbHVDU1pZUDRuU21nUzJ4R3NsMjhRejNYcHhqV0ZT?=
 =?utf-8?B?b2xqQWJXOXpQdGV4REVxcjc2aDh6NmpJZjlYRU8zS0ZKQkJ0cm1URzFvN3Iz?=
 =?utf-8?B?cGVyaXZLckdUN2lEcjRqY2IrVitFWTkycldyTm01aU9IS3d5dG9xRWRMdGZv?=
 =?utf-8?B?Y0V5UnFwQ3ZEODNnY0ViQitWREpJU0hXVENpZHlhOFpPNmRSUEJGZ0R0N0xK?=
 =?utf-8?B?VlhYRkxtWXJPWGlXWXVMV3hRNi9BSWMvcWwzRjNJbjRCZXBZaFZGTWc3cVcx?=
 =?utf-8?B?WG9zeWpRYnpQcjFXNGxZRXROU041YWZVZjBrUWFDeXB6VmVYTmVCTkZNWm94?=
 =?utf-8?B?MlJkeFpGMEJIVlAyc0dPWHhLblJxT1RiM3QwZExXTzhJbWpQUHFDTW51anZ2?=
 =?utf-8?B?cXI4WXNoSVdITTR5ZlJLcXRIenFRQkRaZ1pjWDh5Y3Brb3g3VnQzZmtaTVho?=
 =?utf-8?B?OGZtenB2ZlFUT2FkbzRWWWZRbHVMTitZS0RqeG85Rmg1UW9VODBaaHdxODhJ?=
 =?utf-8?B?SkV6Q0g4TFl5K3hKQllRQUxiNWRCVGRVQldzaDR0Y0lTc1EwUit2RHZBOVUz?=
 =?utf-8?B?YXdnVXNRdG5ZeEFiUDVZK25icFQ1TEpaWlU0ZGxqMXNJVkduS1JhajgzRm1M?=
 =?utf-8?B?SklBN2RNMDNnVnpYZnAvRFdPQzdPM0lLeFhsbkQ5WXJJendLRHNuT21XYlhl?=
 =?utf-8?B?MzlnWEh5NThxbUl6RG9Za3RLWC9LMmk4ZEt0bWpNUVRFQTdXcUsxY1pkb2Zh?=
 =?utf-8?B?eXVVQlN2NU5Dd3JlTGZnUGxKUkhqOEtqK3VSZmFOdXI0T3Y4UjRUSUpRenJO?=
 =?utf-8?B?OGFSMktTVG51cjhkMjh0VlRtRTVuMFdHM1c2emVqcG50UExJdkErN2FtOXNn?=
 =?utf-8?B?czBZalZHNmczcGVselVHQzRHa3dIeVd0Qk5ldzRjbStjd2ZxakZFRGc1bmZY?=
 =?utf-8?B?Y0I1Sm5YY3NmWHpQNFRLOGExNGJMb0xzWjBXS0FDZGxMNXhlQ0FLUUMxUG1x?=
 =?utf-8?B?NmhlcUhKT0I5L0hMZHd6NGxCYzU5THJsZVV0QkQ0aGJxQ1RSbWFBa2FCMjFw?=
 =?utf-8?B?OTQ5bE04cEpocGFVVkR3cjRYMGZSQVlQbjNCMEhaSjlKcWNVWmF0SEpsTnY2?=
 =?utf-8?B?bnNLdllzb01KT0g4RFZWRzhxQ0hNT1U5VldYWGc1RS9NNFFJTC9jWmgzdmdz?=
 =?utf-8?B?Lytac2h6cjRwUmhqbVlyN0tjOFpCc0gwbHQ0RDAxNk0yeUsxeXB5a1JGNDNl?=
 =?utf-8?B?UnRGVnhhSXZwUmVuSFZwTGR2bVlTdENScjMwWnF4ZWJROG5YSTIvZ25zNlVL?=
 =?utf-8?B?WVIzOVNuanNCUHdBdXVvSHhPdHpobHdkNWtjdjhFQkdHZlI0MFFBOWsvWHI2?=
 =?utf-8?B?RG5NbWpYUzFsckhoWkwySEczZHRtcCtjYU9PUmFJVXJ2ejFQRDkrTWVYOXJl?=
 =?utf-8?Q?GApyck5TljY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0JiRkdBQjBlWlhqNEVDMG1oeG5qRTNUYzhROCtBWGFrSXVBbjkxdXJpREEx?=
 =?utf-8?B?UzFpU0tkVm00M29icVpROStuZlNCTkVISUJMenREbUJHUDlhdGRMMlpkN0ww?=
 =?utf-8?B?cXBzTEdPK2g0TU9LN3hwd29iWlhDUldFSlB5MnZzYkZYcjEyY1g4aDF5bkRO?=
 =?utf-8?B?S1RwM2R2UUZmZjJtTFdqWW1sc0pGRDN6MnN5a3hOeExzaWZMUWhlRjc0VUVE?=
 =?utf-8?B?dWI0TTlxcDU4MHpnSXBKMjBHYkpZdFF4R20vSmJNc2ZUQ1AvNFVEc0w3ZWUw?=
 =?utf-8?B?cDJRVS9MNjBDODRjdncxVURJYTJxdjJ2U0Nrc2ZicWpiOVNtT24zdnBPbHFY?=
 =?utf-8?B?MEhOTVd4eTJRUlNHSzlKSUxvZ1UyVVlZQ3JQdEczdUpQckd0bjV5RHMwdS95?=
 =?utf-8?B?QWpLa3pOUGtpYTRmMkZScWhuNVNhd0Jpb3hXdUFUT0xRR0J1ZUF5Rk5Kb0Qz?=
 =?utf-8?B?eUtjbHN3dkpxWDhxNEh1RWRxREdtNTJac1dIdzQ3ZUYyMVIrQ2I3ZE1KL2R3?=
 =?utf-8?B?T1ArRVBnTForWm95NndtemhKWVZFSU9nZnBiZGRqMnR4SWJhUEdtY2Rha0dZ?=
 =?utf-8?B?Z0tvZk9hUW1ZVGRqc3N1dGVWN3RUcnRGVUluWXhwVEdhbk1HNkNERXdnZ3Ny?=
 =?utf-8?B?ZW5xQWNWaXZjNjhvNkRpMWdQdmVwdFhQQVI0K2VBUTk3cXErc05CTmErQkNX?=
 =?utf-8?B?YkNXL3Z0a0ZRZCs5eGp3TVZRbnlCbnhkNGplRUoyckwzZXJrbmRieHhIcXpW?=
 =?utf-8?B?OWtCUThYMnQ2YVdJR25iV1RWTTdVMkRDVThMaWZ4UWxyZ216dFlmNjVBektU?=
 =?utf-8?B?ZVl4RE9RK0Y0WjY2cmx4YUNDQnp4M2hocy9MaEVhSjBRcUF1b1VTOTIzWGJM?=
 =?utf-8?B?T0RZWDhabXVTZ3FEc2pMZHQwQ1g5cS9Odi9JRlFtQlBpZ3N0TjFndXVnSG1l?=
 =?utf-8?B?bXkxUkhQTTM5cDY1NXFIY3h2T1ArWnI0L04xMnVqdE94SGV5NmlaQWxXWFV0?=
 =?utf-8?B?VlJ1UGJnRkJOMUZhM0JsNWdldldzUnRWMUxWSzF3cW9KZ0NlaDZ3QnBhUWg4?=
 =?utf-8?B?aGxuQXowcUFLTDdVeG1LcGNFZ3ZxSUJPd1J1VGZVYXNFUTIrV3cvYXc1SEd2?=
 =?utf-8?B?dkl2eWJwVCtJMDBROVBjQUF6RDV1cUFlaEpqem1nWS9icE1RQjhzSkNWYlJ3?=
 =?utf-8?B?MHNIaVBVMGNNTGpRMU1qaUM3MEtXeUdiUTVVYUdRdzJ6QmZaeUo4NXBubjRp?=
 =?utf-8?B?bUwyQ01BTzBQUTR4dk9FTVdjRnExSDNjOW9zY2Q0Tm9PendUNzUwZm00UkRu?=
 =?utf-8?B?WVAvSWs4Tk96VEx6VlhvU3VidXN0N091Wk80UlhxOXo4WXdxY0xhU0RCWHNH?=
 =?utf-8?B?OEpOZUpsckpONVdBZ21PYXhZZVFzZ0tDdUc1V3dvUFZlYnFOV0Qxdm1FRUlh?=
 =?utf-8?B?WkJBWGxzd3ZzV1BkREVQVWxjOVVrbmpCdVp4R3JQUitVL3RSb1J4OTRkOUd0?=
 =?utf-8?B?bGpsN0VKVG1EM1hZV00xbU4wOWttMlVWQTBNVkhlQjU5Y0Nud2lqcjltZTMx?=
 =?utf-8?B?dmNlaWlmdGUyeUtiaHRvdm9tYXJTaEQyYW9Tdkl6UHUyQ0oxdkQzNFZjd1Zj?=
 =?utf-8?B?cElHRXU5RHRKLzNHVVpQSkpzUERtRlMyMHBmak5NM2N3V2FRM2d2UEJiRHEy?=
 =?utf-8?B?ektXczJqZmZFbEtBbitKTWtQUTI0U1doQmhLYWxxT1ZMT2l3OEc4dTcva3Zp?=
 =?utf-8?B?YjdtRE1mMXd0cTl0VGF4c1dSdVBoeGZEeFllT0pscWE2WEIvOTB5OWVRU2hC?=
 =?utf-8?B?RitLTXl6b2dTNVRjRlo1aGlZMXM3aUZRTGlrcXVvOHJjY1VvcVNqSG1jeHRw?=
 =?utf-8?B?VFl0NnBnMTB4aDVQa0hqRzIxbWFwODkreWlESHhGb2Zpd25CcmhBWkttdHJy?=
 =?utf-8?B?V3RqYnExdlVjWEhRd2FUdWZGU2Nwd2JoenZFYXYxaU9EeWVpTHB1YURwSzVX?=
 =?utf-8?B?N1VFOUFMYk9RUitXbVhhTlhPYWl6cEphaU5Nb3gzME1uOXRuZzd4UGhpVE1s?=
 =?utf-8?B?M1AxUWpLM0hmT3FPMWc0M01iMkV0aHdlaVNpdTBGbUNGbXpzVXk3MmRuYmNQ?=
 =?utf-8?B?MEw2cmlUaWMySXhJQXVPbkp6dTFhRDN5N2xFUU5sNUdzcGRVeWFOWkVDeFEw?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe0dd729-5a2d-4c56-4660-08dde2c5d75d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2025 04:22:31.0185 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y4ZTDk9mNJeZKumnPSVDWHeKRJYgBK/QxrxMnWb5MJmav16wK33VPu0de3aIsyK/zVI4wIa4QCJnzlr18WUPCeVHntwbAPrvGfy49syNGng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7813
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


On 8/22/2025 5:01 PM, Jani Nikula wrote:
> On Wed, 20 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> +	if (HAS_VRR(display) && intel_vrr_possible(crtc_state)) {
> Nitpick, and a tangential to designing stuff:
>
> intel_vrr_possible() never returns true for !HAS_VRR(). The HAS_VRR()
> check is redundant. Adding redundant checks adds uncertainty about what
> intel_vrr_possible() can return. "Whoa, can it return true even for
> !HAS_VRR()? Why?" And then it reinforces the mentality that everything
> needs redundancy and double checking.

Hi Jani,

Thanks for the review! You're right : since flipline is only set when 
HAS_VRR() is true, the extra check was unnecessary.

I'll drop the HAS_VRR() check and update the patch.

>
> This is not about just that one check and one line. The idea is that for
> most "has feature" checks that enable something in the crtc state, you
> do that check in very few places, and the fields in crtc state dictate
> the rest. You're not supposed to have to second guess what crtc state
> has.

That makes sense - checking for HAS_* at some places and then trusting 
the crtc state keeps things cleaner.

I noticed a couple of places, where HAS_VRR() and intel_vrr_possible are 
used together. I will go through those and send a follow-up patch to 
simplify them.

I'll also keep this principle in mind while writing and reviewing code 
going forward.

Thanks for the insight!

Regards,

Ankit

>
> Food for though.
>
>
> BR,
> Jani.
>
>

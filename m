Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B864BDFED2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 19:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6446E10E106;
	Wed, 15 Oct 2025 17:47:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nUJmlkDO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D2710E106;
 Wed, 15 Oct 2025 17:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760550440; x=1792086440;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Xm6+jd4ntj1fZGkimxeVRVaNDWYdotKjY6cxyxRjr7c=;
 b=nUJmlkDOvFO1+Ir/gr9Cl/LX+uEE66Mo3+MRCwOEpKc04PPMeBQJahqL
 2z9UotLJnGOyfqoGA8z2a/NCgvBAVB7DpMUc/BXO9nift6xWn5tztFvzM
 k4tk/7e64LnjXkIYQW376fMeMshH5qPJvSMxPGLK1OEqfyJGZTL9kH6hX
 +tOli787hJgxqAjkBlDKA+lmZINg/HLjo03OOXLPt//qfmuQ4b9NluDr8
 D2ZumT3hxqYIBUj3v6Kdtd2b7u2ds2fN1dD3Xb27NYEeJryC873mDRLwU
 50G2udDeWmkF/Iwc9tLggal7hpXQXilonCpPlhWfqiRQHVnps+QbG8ktL Q==;
X-CSE-ConnectionGUID: 9NTl8UubQYS7GWEthmqbuQ==
X-CSE-MsgGUID: LfdCHyJKRGWWiQ6EV2P/Vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74181651"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="74181651"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:47:17 -0700
X-CSE-ConnectionGUID: AtSwERVOSravo3CC0e3Vhw==
X-CSE-MsgGUID: 3o66WPCwRoCKbZ21rCdzrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="187525331"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:47:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:47:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:47:16 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.38) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:47:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KpSNIJSuuGKaAXKSUjqOK/4yZC5OdSy+EiHo4FYNBXMvlKG8GpDzOXJxPuxPuMWd6kib+/G/NxabDOsePw2nYHAXvTxkqbsbBHOORPgvkVOgxpvX/fMqyrOSvvAq0AESoTkDQfGeIe6cu60o+twzd5nRHMY/6hLVYo4x0IL9YMl9DMMca1vEMAdETd0EgD0wYpqgLf66KZkTsnQLJbYqMpgfGPTXOICr9rIiRoHEypeZhTt6hb1gdus3mMiNs2Hvx4cYpLAf3P5CLghHslQbdIsbMnbi0QDlKuF3wK45bYFQwtAzLI9Bt1Sc4MV+iCJiWtgradCbK6XsIndnEhVIiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iBiEY8gqEpDzLZgmdoiPLJgR2mtGXrZM5B7JySeN26I=;
 b=vESXPzG1PZ+YKS7lyWdaBgMHFb8192COVTILd5bw6vVOkJvq34Mrrm7gLXwP9Ec5o9d5oBVIXUclWvfgtZoxAspqVBkgXyM4odspSuPo2CdgRntcMJAzfAcTvzJA23vswOSI+VC/4Jdjvfx4Hz82XmTy9j5vlRQTD/A2Ybfv+/QXYzma8uAWLq6PyJ52UfyywPpQS7FP42gDEyOaz/HoAVZugfLlvwhcVMCX9a3+h8eIzGmbxInb8xYD0/UqM/VsBBzg5iRNrL9pJQTKMdTuvg5OuFufLhM27eBkq58BLarIVjGqMOXMyGxRC2tUAEOja6EqYzeIlaznHEUkN0delg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by SJ0PR11MB4798.namprd11.prod.outlook.com
 (2603:10b6:a03:2d5::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 17:47:12 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 17:47:12 +0000
Date: Wed, 15 Oct 2025 10:47:08 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 23/32] drm/i915/xe3p_lpd: Reload DMC MMIO for pipes C and D
Message-ID: <aO_eHFWscN2J3J7Q@msatwood-mobl>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-23-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-23-d2d1e26520aa@intel.com>
X-ClientProxiedBy: MW2PR16CA0025.namprd16.prod.outlook.com (2603:10b6:907::38)
 To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|SJ0PR11MB4798:EE_
X-MS-Office365-Filtering-Correlation-Id: cb4275ad-6b99-42af-3164-08de0c12dea3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SUp2MEQ4UHNZbExZNUVKT0FSNC9rT09sejlMK09ZYzUyVTNiaTJuTzF2MXFs?=
 =?utf-8?B?SGZ0cExHY1ZtWHdZancxVUdxcmpBcmRIcENHUlBhN2RiTURDSTkyWGJHenNL?=
 =?utf-8?B?eE0vVEs0L0laK3pnSVlSblpYTytwTzVFdFVkVEFxMU5NMWRGZTJhNFdORFVr?=
 =?utf-8?B?UXZkUDR1bFNQaTZuLzRVQXJqN0htV0NsdDI0a0RSSUxjQ0l5aUg0dTY3eEJG?=
 =?utf-8?B?UlpjK09BVkxGQkVqaGxPRzlUcEZtc3I4ZEVkdkVrZGZOYW1ZMFVPVkNVTjVL?=
 =?utf-8?B?TW1XdWVZTFQvVnIwRzJHRUtBWVVJcEhMVGJWVDZ6M3NGS1lIeDZVU3I1Z096?=
 =?utf-8?B?Nko0bVpCR3lBK3FiL0dpYTBtNmZETU5IV21JZC83WHMzUHltaExodFpyTTJQ?=
 =?utf-8?B?ZHdoMm1rYzJaK3pObW1meE9lWnRYcHorNktNcDNsQ2Rpa2ZEUyt1NjlpbTIz?=
 =?utf-8?B?clpOdkJvTHNSUWFFZUVOYmFtOGxtbjg1YU5sOHBNTWJ2NUVVVFVRdDNkWUtY?=
 =?utf-8?B?TUZHK1djOUloTkQ1UWxYSXlhRTFtYWx4WnF4TExnWkUvQVdCem12OVZkbUFt?=
 =?utf-8?B?eVFFV2syTFUrYzF4cS9YTllUR1lOeFhKTHM3QVF0b2VkU2lDdVhOdWdNdjVn?=
 =?utf-8?B?RC9tZE15Vi9jUVY4aEx3WkNtN3gySW1ESnlPWTl1YkNnd2xQZ2RrblluN1U5?=
 =?utf-8?B?VjFKNDVjWEhrazhUQmVmaHZQa1ZlMGlDblZRdHprU1JQSkovd1NmME1jRWtl?=
 =?utf-8?B?ZmM0WUd3cm83ajQzNExKcFBETTNGc1A5UmwzUVNQR0tPZlVjUUcxeVNRVTdH?=
 =?utf-8?B?enBCQVF6R0EySkhIL3JWcmI0RDZoNHRLQThCZXI3Ums5SStJdkFiTjRsYWQ5?=
 =?utf-8?B?eWNwVFVMSkR4c2NhSWNyOFkxK3JTSStseTFWLzVDUVcrMnphMDREemxBWkFF?=
 =?utf-8?B?SzdoVEt5NGxOS1JyZG5qRGFNMlJnUm9rd05iM21lTzBScWd5a2RDVmt0ZU5Q?=
 =?utf-8?B?VDdXeDFVc2Q3Y3lyWWJBWjhmU3k5eTRzLzBHZm4vRjlGcnFZaHZmK3ZiVCs2?=
 =?utf-8?B?OWNKUERaRW1VNmZ5ekJPb1VGMndIeG9ONnBKVXY5SDZXY1dQL3M2MHdhS1c4?=
 =?utf-8?B?V2h3bTZuSkUxMThpNGlHNmNwWTYrZDcyY1pDWmV4OGdsZkdFczA2RFFxYU1N?=
 =?utf-8?B?UGZtcVVCRm5lYjZVTlBsT3NJaDRYSjk3cDU3ak93M21ER1RHT3NSSVBRdkhp?=
 =?utf-8?B?WmpCYkNNUVdCNUpoQmFYeS80b1o0WGgwb0lQYTdoMGU3VVBzWHpsRUZWSGNt?=
 =?utf-8?B?Ym1GSHZYM3M1NW9jM0ZjTWU0c253eDlMRlZ4dFJWNWVvc2dFRjZ3c1lNclc3?=
 =?utf-8?B?dDFyRmkvQ2JZR2JKUEx5WUpqT3lLUUg3b2cybEh6N0htYjZ1c1AzblZqWTU3?=
 =?utf-8?B?bExXZ25nUm40UEdZZXdiSEdML0ZkQXYzbWVZb1pTT3NxeDg2MHEvZnhray9D?=
 =?utf-8?B?M0VJc1FuSVpBUHhFbUp1YUhTSFI5dFNqV0FpU3Z2K3grZ0taeFdhV0JqZ3J2?=
 =?utf-8?B?c094UFZEeXk0MHJtRSsrNWVJRmgwemNyRTljdHBlNk44bVZrMWdhNE1meUww?=
 =?utf-8?B?OHgrN2JMSzI1ODg3YUdYVFFCejUrcnptZFQ2TEpGMmNjcVZ5WEVPd2Y3ZGRu?=
 =?utf-8?B?ZnJEanlRSXplb3pacWF4ckRFV3p3bzdsdkdCeFRzTmd0N2g2OVpZWWNhUHpE?=
 =?utf-8?B?R1R0UXhvNFRSNFVvMEwzMTNxTzhZKzM5NCtOWGJsajArRnd5M1ZzbHZSbHRw?=
 =?utf-8?B?YzVPZVVLL3daRTh1S1hCNWlmdHp2QUlBSUJ6UmtsektCbEdKMGtTb0J2NDg5?=
 =?utf-8?B?Z3UxcWhTRVluaTdhK01HUnhNSy96bVYwUytCWittdXMwRU0xa3VJVHhiV1ZT?=
 =?utf-8?Q?QPJNvPfqbiazFaW3lLhmHII8xIWqDSHE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUhMZE9HbTFMNVFFbE96bGkrU1doVDd3WldMQi8rYmRValFIL0FsZ1g1d3dp?=
 =?utf-8?B?OHpwTDZZMkdFOTJPcHI0ODUyL3FIRk9xcXNqZDMza29DTThraVdSSXNOVHJp?=
 =?utf-8?B?L0syejVaWHh4YmFBeWJlY2JBVWtrN2FwRnVMbGRJRGw0ZnpnTEJCMDRTY1dO?=
 =?utf-8?B?SUk3TXJ2TEg0Mis4OUhONkpvVEozZE02M3JpanJ1OVArV214K0NUMkEvNEV6?=
 =?utf-8?B?bmExc1NJZ3ZBcmJlT1dYVzdBT29Fc1p3WjYxaUVyajNXSlRHUFBBWTVOdjhL?=
 =?utf-8?B?T3ZnMHl4bmRQRTc3alV4ZTgrUUVlUzJWQWwxa2hOazZ6SitCQXBvL2RIampp?=
 =?utf-8?B?REMwU3Rrc1EvNitITlNZdU9LUUZTcnFkc3NSSUNZcFlrUkw2UVBmM2lLZ0ln?=
 =?utf-8?B?ZnMwSXZBSDY5UDZOYkt1YkhkT0VweVBIV3ZHN2lTY0ZiSmcxbHBIdDdRSkI0?=
 =?utf-8?B?NmUyT3RPN0RyQmhQcFRGSk51NUlBbTJENTREMEhGd3RWdTV5Q3BCVTBKSWhY?=
 =?utf-8?B?cHBpTGVGUDdPcThBdG9KczN5RXB6dzRrZkQ3TG8wcTJlVGpMNXpEZXRKRWFy?=
 =?utf-8?B?V1dLRXcybHVUN04xSHQrWnYxMmVERGJObXVnMi9keUx2V2s1WHd3blpTcnZM?=
 =?utf-8?B?RU51VDRuR0VzV0wwMlM5TTVQV3VCV1gvcjd5d1dWZHc0RzI4Q2REdExWazdx?=
 =?utf-8?B?aHZNbzF6V1Y2RDlOTUZKa3pFWUxFbzcrdVNOalJPWGx0bUdEU1dtWEQ0ekRH?=
 =?utf-8?B?RmpiSzdQdk4wVVZXd0JYTEJYbC8zeTJJTHdsblFCbEI4b0FhemtBUmRIM2VX?=
 =?utf-8?B?RFJ0WE5wblZydW5NL0d0MUp6Y09SZk9QMFVSR0NadVFESFlvRmVleHMrQUhu?=
 =?utf-8?B?RU0wMzBDVWU5RUd2Qk8xVm5kV1pYb2ExNHNtTVhqYWo0MnpJbmp1VkpraCtW?=
 =?utf-8?B?Z0pWeWN6V2FvalJWUzZhREh5TzhEaVQ2MVRFUVBiaU5GdkhveG01bnFTSndl?=
 =?utf-8?B?NEtYUy9hWjNUZkRiSlJpMkJsQWcxWWV6RDJlV2pGMHFRZ21pdFpiaUhwVmYx?=
 =?utf-8?B?RzdnM0FOdHFTbTNwZm9kUEpXQUxlcHd3MGFja3NaZHdhcDhTRXFkMVI0Z010?=
 =?utf-8?B?WmZ4SnY5RVZRY1ZwZFNhUVlPcjV4ekE5ZUNDQTJCUGg1RGFUYWxGcG5WbFpo?=
 =?utf-8?B?YTJGU1NFOGxvZy8rVUp0bTdMRTY0YjFFT1JGSFNrQk1wY3pSOWVWYnNLcXY0?=
 =?utf-8?B?RmtXT01jZFVuYTBYU0RXMUdYaDVnSHFmRS9KK2ZUajcyb3pkSVBUVkRWZEhz?=
 =?utf-8?B?WXptSUc2Zi9ZU2NGL0luQ1Q0TTNtUFFybzdpN1JmcFJBVFpsZDBUNzBOdkJK?=
 =?utf-8?B?YVRPSkhEL2k3M1RIeHRhdlVnSXhFT2owUXA5b25waC9Yc0VsUDdqNzlYT09E?=
 =?utf-8?B?Q1kzR1dUNkQxbS9rVzdGaW9GTkRXQkJpckdDOWlMU0JDdUozOXJFNTlQQlhG?=
 =?utf-8?B?Mmh2SDFUWW9ieE13MlRaa1pBelV0SjQ4eENlaGtnMUpYdC9lb0xQNExxbXll?=
 =?utf-8?B?TlN2YlZFSTVRNzRtWWZadThYVENiaDZyajRoUnNOd0RkNUk2RVVKUEZQWlRW?=
 =?utf-8?B?Q2tHNW9KMlhpYkRrYTIzS2x3QXVacnlaa3NxMVZLL3E5N204WVlFTjNVMWFQ?=
 =?utf-8?B?dkRmeGVXOGRYN3Q5eDI1V0JvZ3ExZ0JlcEJWcFlRMjlMaTdIYWhvNDBUWk9m?=
 =?utf-8?B?T21KT1d2dmZiNG5URWpqTmxXVlRYeVBNLzRveFVtK2MwTlB2Nmw3SnB3NEIz?=
 =?utf-8?B?aXlwckkraENKbzB2U2pCcWE2SHFINWgrTGw4aG50enk3N1RWOWlrdTBiYW9N?=
 =?utf-8?B?VXVSUmxDNkN6WUF3NWJ0TVV5dCs4N3QvWThPR3hnUWN5UFl2RmdGWXRUN056?=
 =?utf-8?B?bXNtYkhhSkdkdVpsWXljT3RSTnMzTGFDK0tmR25JZWR3N0dEd1hSUVVnVXRh?=
 =?utf-8?B?RFhaWGZYRlExem5nL2p4QlRtb3UrakQ2YVdCT1BSd0tNQzVBdkJsVXgxSXdj?=
 =?utf-8?B?ZDB5eVlYbk1GeEcwTnljYis4cnJURjVHK0U4SUcxK3YxS2NXOHREVGE3a2xT?=
 =?utf-8?B?M0RlQ3U5c0E0NFBFUDRTVzBtVyt4T0RtdlhvNGNPNWdBUjlUbjdqd1gvaUIy?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb4275ad-6b99-42af-3164-08de0c12dea3
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 17:47:11.9643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E2NnWLBaWtkQRrT5pDsMYb7cWYBwU2x0Upm5zDgk3iFZnrRdYuQRpCmrvXRDRwrHkgzdGF7EzqmgM/y4V7UhiS2YR96j6GKGkgShaB62uu0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4798
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

On Wed, Oct 15, 2025 at 12:15:23AM -0300, Gustavo Sousa wrote:
> Xe3p_LPD has the same behavior as for Xe3_LPD with respect to DMC
> context data for pipes C and D, which are lost when their power wells
> are disabled.  As such, let's extend the condition for Xe3_LPD in
> need_pipedmc_load_mmio() to also catch Xe3p_LPD.
> 
> Bspec: 68851
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index c496e7a5c003..8ede90c033d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -668,11 +668,11 @@ static bool need_pipedmc_load_program(struct intel_display *display)
>  static bool need_pipedmc_load_mmio(struct intel_display *display, enum pipe pipe)
>  {
>  	/*
> -	 * PTL:
> +	 * Xe3_LPD/Xe3p_LPD:
>  	 * - pipe A/B DMC doesn't need save/restore
>  	 * - pipe C/D DMC is in PG0, needs manual save/restore
>  	 */
> -	if (DISPLAY_VER(display) == 30)
> +	if (IS_DISPLAY_VER(display, 30, 35))
>  		return pipe >= PIPE_C;
>  
>  	/*
> 
> -- 
> 2.51.0
> 

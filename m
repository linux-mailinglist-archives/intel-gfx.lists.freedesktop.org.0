Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F893C497F4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 23:18:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B8610E0D6;
	Mon, 10 Nov 2025 22:18:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nF+meHGl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A559410E0A4;
 Mon, 10 Nov 2025 22:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762813119; x=1794349119;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=QKQzlNkgdaaSvlRnH9AJfhOwQK96gd7zmCVcKhSIrlY=;
 b=nF+meHGlk9P8plPJOCXU64qo0xR7ld6MpYYaje64WyzMtlg13lCSWOPE
 8K0jKNNpOiiVf3+oKdYTXbzPtVAeGtQgNwgAYUHoC0JkxBp4KCjh+2ZzS
 HePgH3rQ/t8VIgg7DTA/NaspBx8WRlXu0GzOJ19I4n2SYQNUHV3JgPxeR
 +BL92rhvyGQPL6XpTASyT5tTmk9NOL7Geg/mLKRpJcxS+M8RUGKTppT8J
 3Tr2zF6vf7cYNSZebriWbtGkrz0WDaWzEZ9gK63xo+yUSRxUaYOJ0zSkI
 zqtVBnNso0mB2v0bfQL9c2DnkoyUTrRFIWvAFIboLCn+X+W2gjtUDWE0i Q==;
X-CSE-ConnectionGUID: X/jk6Qz2TPyQ8KKbh2kEbw==
X-CSE-MsgGUID: eqAB2PNbRna6rg0xULmP0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64909685"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="64909685"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 14:18:39 -0800
X-CSE-ConnectionGUID: I5JWnPu9TSOmDdsa8MX1rg==
X-CSE-MsgGUID: +0sgemvES6q/xJY8w99A0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="219442722"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 14:18:39 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 14:18:38 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 14:18:38 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.34) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 14:18:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ktH1RxZq4VObrtvwV8lZ1mU9vq3fvlqZCW3mtxedjARUqAu1qmHFZEIQmk4Rldgdz8Pn9/LsagwzN6RfBN2aXvSP+gOZg0EnYffip/vIIfZm06caGrr+Q9cvWBb5gLEMQXvpY1FLcQthl7atmMoGREGdMDnG2xHUzfi0t+KP4KtRw1CHJfYkGBhaVhs004Ct7wHMxpH5tMOGp88aobcRmQ7tk5W7JutQhk3IFUqPKrRb4ttcCBwZogYu/KQ6sx0yl0LxLG8XD8JZPlZRQfZcMKubX1FWQlbOjmblbs2cAfLwX4Ym1ljbACydFZnUvg2bBrMTZlpfRjHTbKT15oGzvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G6039gppul7ZkFJoLKiEdhSeN789zZRtenUJrl+TDuM=;
 b=Pry56pT6N5643n7RYqU/nDD6MkWKaUaNr8M2cAoLOMy/cUA1LcSN5QZgWY9+b+FKKV1ULRElTxnVbKyqP8TABvwg3c77kUh4dPBE+AxoNclrGKIIgnm6Eo2ZkbXgFaLqtDTJZdj+MBwF9nXB94bRW7S1f1YgIyW8eFMkXK+6jSuD0MF/7X8DQvdctZae2B8TE5H1xx6qYBgTECNZiye+iE/S6e1hHaJS6lKumY/q8YU+tpVqFeH2UF/67ow9JGxtakJ+uOvSR8b7oh5ZVYc3fadVxtTxjR7mtERFURiFnjBDAZxsCui1Ncjwj4vfSM6vHcLcUkhtVnYnexEl9u5xqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8299.namprd11.prod.outlook.com (2603:10b6:a03:53f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 22:18:29 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 22:18:29 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aRIax3ASIE6Zp6rJ@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-5-ab3367f65f15@intel.com>
 <20251110163503.GD4063759@mdroper-desk1.amr.corp.intel.com>
 <aRIax3ASIE6Zp6rJ@intel.com>
Subject: Re: [PATCH v4 05/11] drm/i915/fbc: Add intel_fbc_id_for_pipe()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
Date: Mon, 10 Nov 2025 19:18:25 -0300
Message-ID: <176281310529.2999.16445497165397082799@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0036.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::11) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8299:EE_
X-MS-Office365-Filtering-Correlation-Id: 3456253f-f0b2-4382-19d6-08de20a71362
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UHZTbDZmNHFsY05IR3pDTXhDMVJ5U05hbEJhYVdqdVRQTzRLYTg5QTVmOWNP?=
 =?utf-8?B?NDB0OFA5d3lhK1crcGZBS2FyUlFGeG5iZDk3blZuamNKbXdKblc0ZEdpUnhw?=
 =?utf-8?B?K041VXQ5MEFhY2VlZHVDZEd1bktGNVB0MUhCTmpwQURIZ21OeHAvUWdrWWJM?=
 =?utf-8?B?b2thRGNLN21Pb25rc3c4bmoySzUzU0JWSlNXbHV4U3dOb2VVMStBK0swYXZT?=
 =?utf-8?B?djBxSXZseFRyZmQvR3ord050aXlQUGZaNWFYZ09WUHRaYkJZam42WE5pcmJS?=
 =?utf-8?B?UGN0OVhKQkoxRTJSRmZkMTVhaXU4VjZCNk9Pc0IxRWJmRVdHT3d0L2FPTGV2?=
 =?utf-8?B?Q29OZDB1S2MweEJyVU53bTJYRXZWT2dsSHlLUzJrWDMvbC80eVNJSGU4Y1VX?=
 =?utf-8?B?RmJnc1ZsbHJ6L0w5NzRuTzBzSms4N0taTDB5NnZ4bGFTYTZUTXJhRUFuM1FG?=
 =?utf-8?B?SStJSzQwWVRUZEp0MmtpT2Q3dEI1QnN5NnQxTkpsMnNXTWRKdFE5TWMvWFlE?=
 =?utf-8?B?UXdpTWVxdG95NklmVlZrdmhMZ1lRZEwwUWpXMnFMWEhadENNWDlaL2dmaVBp?=
 =?utf-8?B?alJ1R3IrMm5kcXlKd3VuaitjcXo4V2RCVHpLeXZNeFl5NkJWVGxBVVJ3Z2xU?=
 =?utf-8?B?QnIvMExBZDVxVGVXdWtmRlRPVzdvQ1R5b3k5WWZHL3VsTWVrOThCU3dXM3Fp?=
 =?utf-8?B?bysvS3FRYzNjS0pqemFlMUhIM2tmZTNHSFNrQWdGbEpRMlc3RVpaa3ZZMXp0?=
 =?utf-8?B?Sll4VDd0UHRTVkpGb0VKSVZzTC9ZWDlBSFlBRHV6ektqV3F4NWtHK1c0dTBl?=
 =?utf-8?B?ZzFUSEZWbURJNkhyZEt6S3BCMjhreVBiZkZpdEQ5aXBhelFDeXUvZFVHUnc2?=
 =?utf-8?B?dXJ6akRKL2RvUDU2R01zbndxSWQ4eXB1WjdWeTc1SkxWYXJQTFpHOGZHcEFm?=
 =?utf-8?B?V2FoczM4RFJwaEJjZjBVOTZRQ21SaUZISzdQaEk2SkFDQk1xcWFIVnpOMXNY?=
 =?utf-8?B?SFFseGphZnI4Z2sybFdCWnZIS0ZDRmNUYmp4ZzN6bWtQQStpd2laQUFWUWV2?=
 =?utf-8?B?MXJaY1hVeXZTS0tVa2tySjlDdzIzMjQ3Tk9xUmxFNzlVdzQrS2loZ21Qd014?=
 =?utf-8?B?TisxKzZnZHNzeTJ2eStsMjhvUVVtZ0JQSGFDM1ExM0EwNDA4ZTc4NVpjTldX?=
 =?utf-8?B?eWtRRW1qYmxuTys5M0d6NkdVbFRIQnVwUGFxd09ueGdIOXRVaUNhMlNoOFJG?=
 =?utf-8?B?ekFtcFhzWENCV3F0eUMxM2lpaDJmdUJiVHowdlA4dUpobm95V2xiQU1oT3NS?=
 =?utf-8?B?d3RxVkpHY1lJbTZmOWJncjczdDNCZjhzMXlLNEhnYisxeGE0cVNCUjYrVk10?=
 =?utf-8?B?cU9ybkJUeGNMSmdBWkVWUElBRm9yMmh1dERhcURBeWVxM3VZbVJXNk5QbUZx?=
 =?utf-8?B?elNGQmNicncrZWtTd1BCU3J1eVcwY3draE1yK0ZOQ2tNTlBBd0p4aGM1YkdP?=
 =?utf-8?B?UU1TekplS3pVZGo5R3RjcG0zZjY1MnR1cHN5UEdkWkhraFhDOGNxTk5QR2hS?=
 =?utf-8?B?MDE0VkRMRDBzbVZzV2szVXgvQkl5VTdFYWJwOGIwZ0x2YmtaVmVpWjhZdi9q?=
 =?utf-8?B?MnBhaGlUVWJQc0RCVmVONUx0L0E3dVk1d1dpcEpHQnd5NFBBSkNPL2NGRFRL?=
 =?utf-8?B?MlJIUFRkdWdhZEQ3T0ZybTk2MU9KOHl6NFA0VG53dnBsaHdTMWlHV0oxcEhP?=
 =?utf-8?B?VWU3Vy9KdmYzL2Q4VGZ4aUdpSjRnK1hmNC84TXYzRGFIdkwzMFBCTHI3c0dv?=
 =?utf-8?B?NnJCMkpiV1g0b09FMk9DaEtkdmJTejFhcWdqSjJIa3lkZmpiWU5NQ2pwTnc4?=
 =?utf-8?B?T1dmMHJnc09uSFZpSGpFMVFBd09saGJrelU3TXBERE1aVHYxQUhxYUcwdHRr?=
 =?utf-8?Q?m3BpcvmTa6ut+HqciK+rV/gdsN5yrACu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkN0cVdqUXU5TjRXRlNBQ3BpMmE0Z1luK3I2L3V1U05IKzFScXBsL2dxTEty?=
 =?utf-8?B?TEN1VU9vS3JhK05CR3pLcEIveXlzODdEQUlUR2h1ekpGRm1lb3YzaDY0RlJG?=
 =?utf-8?B?NmdMcnl4MDkzQ3JaeGJPWjRkR0cwMUNsZXBDa0VmVVhDTlZINlhHMlhsMTQ2?=
 =?utf-8?B?Y0NNNmZlak9VL25uT1k1ZEJtY09qNi9qNFVLdTRNdDlWOUtJMVY1OHZnaHpG?=
 =?utf-8?B?cVJJRDlCRldpNGJFd1JXQ2s0ekVGOWRIV0xjUW05VGFLYytOeEJCcHlvVm5J?=
 =?utf-8?B?bGVwOVBQZTBROUxDWDVwZlg1Q3B0SE9qYTE3YkRhZlR4MjJ0VWZiWXcyVXhG?=
 =?utf-8?B?M3RkZGljczBGV2FnZFpyc0M0V0N4bS82T2JyWDdBWm10bFdGK2VUOXhVZlc0?=
 =?utf-8?B?eVRrTUlRRDNtMUV0OGJyRmZ5SSsxUDI1UTE2M1lnc3NuZmJCRFVkRkxhQjJY?=
 =?utf-8?B?cU03UFkyc0xFRjhLUjgzdmxwL2VKcDM0NjJDSHlHU1BJVDZRTlBlQ0xHZ3Fk?=
 =?utf-8?B?aVhIVkgyZVFtdVZGLzVNcXp5LzgzZlpkd1VPK1VvRnZLMFpGUFVCZDBTREYr?=
 =?utf-8?B?c0NuTzFLdHByNStEM0htcjZZV0JCRyszRm05emdKS0loNEUzYVNIM29sbmpW?=
 =?utf-8?B?ZWFSaCtCTHFveHFHbkhvWFZqZ3dyY3dqUjVOMVhQRzJwbHY3WmJSbzYzYUxJ?=
 =?utf-8?B?UGVMaDd0U0dvNnFoT00zbTN6b0VQbzdzYmhvbHFueTEvMllMQVFjL25hdzJ5?=
 =?utf-8?B?UDNLYlgzN0EzVkNad3ArL0dNR0VRRHFSKzhnRVF1NHRiTzE3YmFlUmYrMzNT?=
 =?utf-8?B?eUlLbHRCTm5EVGxHY2xPY0xaNXowdk9jRG1zUS9Jc3pXcGtRR2RpaUo5Z0Z0?=
 =?utf-8?B?UURxWlBIaUtXbTFnRnJOT0trODZtdExIa3JiZERleVE3QmYvdGhmQTNvV21U?=
 =?utf-8?B?L1M3TmhEQkVQckVhTHJ2TDZSNDZaaktLVmxDZ3dNUU1tWGFrcUYxM3hURVo5?=
 =?utf-8?B?eEVFeGJXRjVST2pMY2ZFMmxCRFRGLzhuQVNBM3JZbkg1aUhZUGd0Ti8ySlFU?=
 =?utf-8?B?Y0JjT2tHczNPdXRDbVcySzJOVkt1S3ZSaVFFWGxXaTN2MnJyYXdmRFNURWFz?=
 =?utf-8?B?cjNDQTdCWS82OC9kR3F0VEJVN0pNdTlJMXdTa0VKU1NOY3p5YUdFMEM2Qng3?=
 =?utf-8?B?K3g5UUoyOGZ3QmhXNFpDamFjeTB0dUxxRE5PcjJFNDQ4cHJaeWJCeGF6QzRF?=
 =?utf-8?B?Q3NDMUxMelczdmpHcFhjRkU3c0lHb04xNHVZU25zVUl3UWk3Y3BTSkgzODI0?=
 =?utf-8?B?Z2FpVXRCcUtjNEw4MVI5QUVPUi9uZGR3SjlFb1RuYjJGbDZxUU80eHdVZjFO?=
 =?utf-8?B?MEwxK1IxUG1abXZpdytGWTg2VnExeXJONEtSbEoyWk41akxyQ3lrZWFLMTJn?=
 =?utf-8?B?MHMrZER5U0lDbWFIT2haYjVFbnNGSmJ1YVEyWnhTSnFRV1g2ejBhUFl4SkRS?=
 =?utf-8?B?WjBhb0YrQm5wR3hjMGRoZ211b2dCWGxKOTBTNWxNZE1yc1RkbFRheDdTY2cr?=
 =?utf-8?B?WTlHSUlZQnRJQWIvaHpqREg2UHkxZ01pQ3plS2VJeEhpNDJFdUxwb0JwV1Jj?=
 =?utf-8?B?TGVHbHJ0S0owckpURTVNWlVnVjRmZ1NNWU5RbnhpZ0YrTFlaNDlDam54TFkz?=
 =?utf-8?B?L3RjQ0ZWUlNoN2orN2NrNkVlYkR4RDZPUy9KNHptak1FMzJaaHJ2NUp6SHVD?=
 =?utf-8?B?VU8yWmVhNVZ0ZE5xREJaR1ZWUkxtMUtXR2ZvczhRdlhMaU9TU3drR1RCRElj?=
 =?utf-8?B?SS8yVVRMMitBQnRCeXFnY0tsbDU0TTFhcnlLbFBzWmNFRllFbjJlUUdPa3Vh?=
 =?utf-8?B?ZTF1bE9qY2ZjU2N0SXV1MmhQZG9oQTMrNElMZlFVdWFyMjRYdzhwUkh0bDRH?=
 =?utf-8?B?anJEc2lncmRxZDdQcG1EWDR6S1lZeTlLcWthNVlYYUVQL2JiQWE1Z2loWG5Q?=
 =?utf-8?B?aUMyMllieDA5cFJWZ2o3SmE3T3EzRGV0NVZZU25SUDgyNG5PYWUzWk1TNEt1?=
 =?utf-8?B?a2tLRXJrLzdROUZENzRtSmd5T3FUUEdDc0RIU01yWk1JRDJPOGNEMkRqNVRQ?=
 =?utf-8?B?SmM1dlJldEdIVTdFSllVU1lEN1JLbjBOQ1o3Q3RuemRhS29LVDhiT2JOa1dP?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3456253f-f0b2-4382-19d6-08de20a71362
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 22:18:29.4220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h/v1jKmB5HwZKz7fEUuRaG3NsWQje1LHDR/5WVVsMrWySU3KHbl77tyEyo2jLpqwKfHHXiqB5DQ9Gu2FpDmhTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8299
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-11-10 14:03:03-03:00)
>On Mon, Nov 10, 2025 at 08:35:03AM -0800, Matt Roper wrote:
>> On Fri, Nov 07, 2025 at 09:05:38PM -0300, Gustavo Sousa wrote:
>> > We will need to know the FBC id respective to the pipe in other parts =
of
>> > the driver. Let's promote the static function skl_fbc_id_for_pipe() to=
 a
>> > public one named intel_fbc_id_for_pipe().
>> >=20
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_fbc.c           | 5 +++++
>> >  drivers/gpu/drm/i915/display/intel_fbc.h           | 2 ++
>> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 9 ++-------
>> >  3 files changed, 9 insertions(+), 7 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/dr=
m/i915/display/intel_fbc.c
>> > index a1e3083022ee..435bfd05109c 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -129,6 +129,11 @@ struct intel_fbc {
>> >          const char *no_fbc_reason;
>> >  };
>> > =20
>> > +enum intel_fbc_id intel_fbc_id_for_pipe(enum pipe pipe)
>> > +{
>> > +        return pipe - PIPE_A + INTEL_FBC_A;
>>=20
>> The existing usage of skl_fbc_id_for_pipe() was to call this function to
>> receive a (possibly bogus) FBC ID, and then follow up with a call to
>> skl_plane_has_fbc() which had checks to make sure the returned FBC ID
>> actually existed on the platform.  So, for example, calling
>> skl_fbc_id_for_pipe(PIPE_B) on something like an ICL would return
>> INTEL_FBC_B here, but then the subsequent call to skl_plane_has_fbc()
>> would realize that there is no FBC_B on that platform and bail out.
>> It's only relatively recently (MTL and beyond I think?) that FBC has
>> become usable on pipes other than A.
>>=20
>> Now that we're promoting this function to be more general, should we
>> also adjust the logic so that this function either returns a *valid* FBC
>> ID or and error?  Otherwise it may not be apparent to people writing new
>> code that the result returned here can't be immediately trusted without
>> additional checking.
>
>The simples way to find the FBC instance for a pipe is to grab it from
>the primary plane. That is already used elsewhere so won't make things
>any less generic.

And do that internally without a public function, right?  Because the
feedback in the next patch is that the part that handles the "FBC
decompressing" bit should be in intel_fbc.c.

How should the primary plane be found? Loop with
for_each_intel_plane_on_crtc() and get the one with type
DRM_PLANE_TYPE_PRIMARY?  For example:

    static struct intel_fbc *intel_fbc_for_pipe(struct intel_display *displ=
ay, enum pipe pipe)
    {
    	struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, pipe);
    	struct intel_plane *primary =3D NULL;
    	struct intel_plane *plane;

    	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
    		if (plane->base.type =3D=3D DRM_PLANE_TYPE_PRIMARY) {
    			primary =3D plane;
    			break;
    		}
    	}

    	if (drm_WARN_ON(display->drm, primary =3D=3D NULL))
    		return NULL;

    	return primary->fbc;
    }

I saw that the DRM layer keeps a "primary" plane in struct drm_crtc,
but, reading the kerneldoc for that member, I get the feeling that we
should not use it.

--
Gustavo Sousa

>
>>=20
>>=20
>> Matt
>>=20
>> > +}
>> > +
>> >  /* plane stride in pixels */
>> >  static unsigned int intel_fbc_plane_stride(const struct intel_plane_s=
tate *plane_state)
>> >  {
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/dr=
m/i915/display/intel_fbc.h
>> > index 91424563206a..3d02f3fe5630 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
>> > @@ -9,6 +9,7 @@
>> >  #include <linux/types.h>
>> > =20
>> >  enum fb_op_origin;
>> > +enum pipe;
>> >  struct intel_atomic_state;
>> >  struct intel_crtc;
>> >  struct intel_crtc_state;
>> > @@ -27,6 +28,7 @@ enum intel_fbc_id {
>> >          I915_MAX_FBCS,
>> >  };
>> > =20
>> > +enum intel_fbc_id intel_fbc_id_for_pipe(enum pipe pipe);
>> >  int intel_fbc_atomic_check(struct intel_atomic_state *state);
>> >  int intel_fbc_min_cdclk(const struct intel_crtc_state *crtc_state);
>> >  bool intel_fbc_pre_update(struct intel_atomic_state *state,
>> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/driv=
ers/gpu/drm/i915/display/skl_universal_plane.c
>> > index bc55fafe9ce3..275ee2903219 100644
>> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > @@ -439,11 +439,6 @@ static int skl_plane_max_height(const struct drm_=
framebuffer *fb,
>> >          return 4096;
>> >  }
>> > =20
>> > -static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
>> > -{
>> > -        return pipe - PIPE_A + INTEL_FBC_A;
>> > -}
>> > -
>> >  static bool skl_plane_has_fbc(struct intel_display *display,
>> >                                enum intel_fbc_id fbc_id, enum plane_id=
 plane_id)
>> >  {
>> > @@ -896,7 +891,7 @@ static void x3p_lpd_plane_update_pixel_normalizer(=
struct intel_dsb *dsb,
>> >                                                    bool enable)
>> >  {
>> >          struct intel_display *display =3D to_intel_display(plane);
>> > -        enum intel_fbc_id fbc_id =3D skl_fbc_id_for_pipe(plane->pipe)=
;
>> > +        enum intel_fbc_id fbc_id =3D intel_fbc_id_for_pipe(plane->pip=
e);
>> >          u32 val;
>> > =20
>> >          /* Only HDR planes have pixel normalizer and don't matter if =
no FBC */
>> > @@ -2442,7 +2437,7 @@ void icl_link_nv12_planes(struct intel_plane_sta=
te *uv_plane_state,
>> >  static struct intel_fbc *skl_plane_fbc(struct intel_display *display,
>> >                                         enum pipe pipe, enum plane_id =
plane_id)
>> >  {
>> > -        enum intel_fbc_id fbc_id =3D skl_fbc_id_for_pipe(pipe);
>> > +        enum intel_fbc_id fbc_id =3D intel_fbc_id_for_pipe(pipe);
>> > =20
>> >          if (skl_plane_has_fbc(display, fbc_id, plane_id))
>> >                  return display->fbc[fbc_id];
>> >=20
>> > --=20
>> > 2.51.0
>> >=20
>>=20
>> --=20
>> Matt Roper
>> Graphics Software Engineer
>> Linux GPU Platform Enablement
>> Intel Corporation
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel

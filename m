Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B645FC421B9
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 01:15:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441B310EBD0;
	Sat,  8 Nov 2025 00:15:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fqsoy2MM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 768E510EBD0;
 Sat,  8 Nov 2025 00:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762560937; x=1794096937;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=JSYahuYKx5aYr7zuyGWx3Tc32OcfkGnBNxV+qI8tfu8=;
 b=fqsoy2MM37RPxmPgntUPPXej2+TOYHWcnYz3ZBOP9U1GKP2Ex6XjeAad
 Gx6/PgYtjt5rIKQ/9W+LI1Nny9mPqG3CYoMSHP/391vtdS+fpzcIlm3CC
 +9GpU/O2sF8/iiczdMpQyaGmxX/h6T7y3Oqt2UONLS6iPS/lXnM4tAUoI
 s6ulouhF4VTJf5WkhjzGEMbtcWYmtHq0tLFvnHHyGnL0PfVFK2EOGgja/
 HAUv5C7uVk2hMVyOHU5ORGng0Hfrg/issERMx2DrwzE0wOR1sAkOEoDRM
 15YHIzd/wwaSuvLIPdhZm3JVSXNBCrSsKYpUWF6c+4PNPaMgg5PKkS3xU Q==;
X-CSE-ConnectionGUID: GbHn5W33SGOfjICHofZicA==
X-CSE-MsgGUID: BisdTTF9SyWZQ5c42RfGlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="68361621"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="68361621"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:15:37 -0800
X-CSE-ConnectionGUID: /fiSXotSSEC2HAy9s0rOzQ==
X-CSE-MsgGUID: pJ6BtNu4Qy+dX1l6GqWxhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="188000332"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:15:37 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 16:15:36 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 16:15:36 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.0) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 16:15:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XJIbxjQvxN3ilhuVtEY0pFVaCFDivsPFv3V7hmIIkG+50NzlU3+mrN4YJX2hXqf1YdxphmlCJOMUK3iKs88V3JmCAUvRuy+fnsB74ql85h8CxCSSVsEDQLy4krlvMj3Fh8aHBVdWp5vDLPcxhaRVyPGytlRTHK3Ay+KyZwCKOIiWCCEEVddwH6WE6NZQji7hgyMDsf8MF/UVILSW46LFq2FBLiEHh6e5QxbgmPNkxfwV1YTxOebfgFLxgQflpKqZngWQ36pgrCYO++o9ToxL7S3aIEk+GBaiGF80O2koJIpmS9JoK2LHZNSgqQwBvxs64yfqG7LooblHj0AKglj0Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZubUuEeRtZ04Y++4ekGsoietb1YRNmGgz1lBMaOCmUQ=;
 b=TvYAEN89RfdCl6UyP3BHqw603N66tzPEObvTq/B4AD0YpT64J5tp6zK09CDETRzRbUgBckAAA07Ol2mqHsa8nI83H9MEKfRBKP2lfl0qiea1Gd5fi1jmFnKU1UCZr23Ievc97I6h1dcXzJj3+l4PGOZdPJ0Wr0zxZ5gf2qlQeBKaJhDckZj3T7PVsKVGRBelglXrTaLQpWwGsbon3s8Gn88MMjyv6Pr0xZJ/HCUlZEEAxdh4En1OD9bRXNlONMa2XSomfZGoHcncn1H6dablzB279TaFD3WyuI8ySlifJYvE26ORtvyJSHswTDgDQ5JUIQijYYQQsbAhL4X9cEmLnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV8PR11MB8511.namprd11.prod.outlook.com (2603:10b6:408:1ed::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.13; Sat, 8 Nov
 2025 00:15:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.010; Sat, 8 Nov 2025
 00:15:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
Subject: Re: [PATCH v4 00/11] drm/i915/display: Add initial support for
 Xe3p_LPD
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>, Jani Nikula <jani.nikula@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 7 Nov 2025 21:15:29 -0300
Message-ID: <176256092917.2001.9841503735424517227@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0064.namprd03.prod.outlook.com
 (2603:10b6:a03:331::9) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV8PR11MB8511:EE_
X-MS-Office365-Filtering-Correlation-Id: 3855d452-e926-4433-89c6-08de1e5beedc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?KzNoamlBRENVamxHV2w2dHBXM2szNHBYZWMrMmRURjR5eG4rY0U1TjgxYTRh?=
 =?utf-8?B?eGtsK2NPQVZOVStEWUxaSWtqanR6dUpsWUhuUWRaZFJrYXE1b2srSnV3aHMr?=
 =?utf-8?B?NHNReThNa2Z2ano3c0FLT2g4Rm9WOGxpVk50ZDV0YUk0S2U0RkNPL0RVVXla?=
 =?utf-8?B?ZHc4cm9kS1NsUndVZzlObGR3L21uNnJyMEczbk1seGxVZVZBQ2FieCtURndi?=
 =?utf-8?B?QzdBemxBWUw4bmtIYmszMkRQL2JyWkNPdHVITjgyNUxJZUtwZ1VHNHpxK0pL?=
 =?utf-8?B?MmZQRnltd2J1RWpEMzZROThMbDB3ZWpsU3pheTlMWU9XeEJwK3dJZWR4YzB0?=
 =?utf-8?B?dmdCRXRUMEVZQkZWdWdkZmZHQU1KSFBZaU16K3FBenNBZXFrNk03UG10UnVZ?=
 =?utf-8?B?dFpSL2tJZFZ2TnZHSlNSNWU2S0F3Y2M2WXVnaTQ3NDBKS296RjhXb1BzKzNE?=
 =?utf-8?B?M05UQnlyWXNUSFlWVWhUOUhYTlJwaW5qSFhhaDdkSjJGMDI5a0FvYkFDQmt4?=
 =?utf-8?B?Y2ZocjROR1phc2t0SWtUTGtDTFJmWFhIVjRLeWhUekVrYVY5MjZlWlZ1WjVN?=
 =?utf-8?B?c3pKbHJYS3NZNkFSOUNyR2R2cW1paVBaZEpUVDUyL2FsSTgrbk05enM2RU5U?=
 =?utf-8?B?S1VIZENZYmtqTlpWTEQ2dFZTd0U1c0dhSjE0NVJkK2JMSThBZmVYTkJPZ21M?=
 =?utf-8?B?SmJiOHd0ZW02amlnRUM0bzhFU1UxRWhNaGpCRE5vREhYWVJvTktXbXlra0FP?=
 =?utf-8?B?N1R0QjhJYk5kMkwzZUlLMUdJSHk0QWFxQW9tMCt2WGpiVGVhc29YbkllblhV?=
 =?utf-8?B?OU4yQm0xcmxhVTMxVHJvV3JTQ2poWWRycjlicU53N3BFcmlWYnNhNkxkSEcx?=
 =?utf-8?B?R2Z2bUN6TEpVWjVvcjlhVTNwZXU3MEN3ZCtOUGwycHR3TVFwM2pLTjE4a05U?=
 =?utf-8?B?bzdGdFJZeFo0ZDZiRWlGSTFYT3VWTHIyby92VmFJd1lWcGU0aEwxOHc0OTJO?=
 =?utf-8?B?VHp4alplbENBNzA0N3RjZk16cGVYY0VPMnRSUW9ldFNEUTh0dmJrdHFDODJ0?=
 =?utf-8?B?MmJXdnNRN2VqK1crSHlvVWc5enc3T09IZlFkSU1KdFhLM2NsV3dRL1RySTdU?=
 =?utf-8?B?aWhuMlQyWm1DT1ppWDV0cmRLR0ZvQXkwYWxxVE1zQUMyM3B1S2Z1STVPcjUv?=
 =?utf-8?B?dWp4eUlUVzU3enBNeDd0Sjc4dk1uSjdMRWplczJKR096TkN0cVUxRDk0MEhV?=
 =?utf-8?B?aWxTV2V2VE5ndWt0SjFJZC9nUGRqa0ZxS1FSc2w0M0hZU1MxYktzeHNWeE02?=
 =?utf-8?B?eVJ5UFFISWpUU2dJa3FuR1lROUVYOGt5RndlQmFsSXg5SFdxT1JOTjRpMysx?=
 =?utf-8?B?eHp5OTZ3MFhrTDRTU3BIb1NPY0JEdzlWRVZkZUZNdVJCZU1MNXZyVThqc1g5?=
 =?utf-8?B?L0M1OXNjeW85UGNhaG90L2ZuZjd1a0VBbVdSd295bnM4MHVuSlVCRzc4R3Fp?=
 =?utf-8?B?Q0hMWXdGSy9lejRtSzBkQkk4bTFZQi8wN0p0cStMaTFyelplMlpudFVKa3g5?=
 =?utf-8?B?YWc3NVFJbkZqVGtBUGJDb29Tb2xlUFhlbnl2M2RadmJjNTRyVzExVHNvVlQx?=
 =?utf-8?B?TnhVTXpFQXV2TzA0NEEwVTJmNVk5S2tISkNCRXNiNGhMWURVSzZ1OE9JNUht?=
 =?utf-8?B?d2tGQVMyYTRCTHBzcllPNjduNTFpWEdsMXZKMzhhc3NtUGpzd0h3aHk3VXdT?=
 =?utf-8?B?S2M1NFN5VVJzNG1vS28wQW5LT2lGMGRoREgzMWE0SWpWbE1TQnVqdDFEbWFZ?=
 =?utf-8?B?T29CZ1NCOFZ0c1l4S1VBRTJtS0dKZ1ZPNjBJbGFRVWJTREVVY0MzckY0R0h1?=
 =?utf-8?B?ZkpHM21BWmVPTDJUeE9MVlF0a0dCUk14OVZUSElmb2MwUzhrTTBjTk42SFlQ?=
 =?utf-8?Q?SUrT3+64Om4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RU95Z2QvTjNnNnVSOEQrY0NqS2NxZXFZekU5TGFSSzdDdmpURGJpckkwUTRJ?=
 =?utf-8?B?emxSVXRkbitabCsvTU9ZMjVmL0hmZkh5ajNGTlBmeExGVFl2bE1KSFRNREl3?=
 =?utf-8?B?aGNITkRYWGxGc2JQVEVTYTlXSXpBbzZBNEVwYTFmSWFiaHY4T3pVUXRhdG40?=
 =?utf-8?B?NUU4STJMSkwwR0EyTmJSYU1MY2dsNFE5VVB4ZkkvdERkTkxtM3o1ZHAvTXBZ?=
 =?utf-8?B?NlMzR0p2VFlnZ0lsc0lSWDlST056UkZpUllCYlk4eVg3ak5PWi9oRlRUNHFN?=
 =?utf-8?B?cXRudjBLSjRBZnRCVzZ3TjZvQzZXL0sxQk9FNURxL3RWZCthdnJObWpPWjR5?=
 =?utf-8?B?a1JGQno1akU2SHdlTVVCSkVnM3lpZEVVWmNmNWdQN3ZBbUEwTXA0U3ZLclpD?=
 =?utf-8?B?djFxZ2g4LzdnNU5UcHlPS3JmQkhQOUxtQkt5UTNBY2Q2Mmw5dlBoZ0hVcEdj?=
 =?utf-8?B?SE53ejFoeW5wcHlvb0FScmV5VzY1RzB5MFZYK21KN0RzUnhZTTZ1OFVRN3dl?=
 =?utf-8?B?Q2YybFZwL29teEpYUVNxNlZoZ2IreVdreXFXRTdyN0ZHNWJqckJSdVBhcVNE?=
 =?utf-8?B?aGkvblBTWDlBdFBNVjFSY3dzajVucDhZczhKYmpYczhTNlo0UGxCVVE2eTFU?=
 =?utf-8?B?T25PY254NzhWaGs4V3pBSnF6VmNRUm1WOGtmbUZ6cXdHekJnejM4aXkxejFU?=
 =?utf-8?B?WVg3cEordjlWYXdqYmhhSmRqWGxqVjUvajhsMGtHQm9WM2RHcHp6RWw1TXl0?=
 =?utf-8?B?K1lXb2Y2Y3BOWWVCay9sOFFCNzNWdC9kSEdpRjdwR0tWNHE4MlNBS1UrMjFT?=
 =?utf-8?B?MWZaYXptTDZIelBOTGtKY1g0Zjh0VFF5QktOcmZzNzNlUTlBcFV2MjBVbXRO?=
 =?utf-8?B?Zmx1dzRBalNsZ3VYZFJLaWJENEp4ZWZBRG0xSVVPNnB6MWRhNThuWWlIVk1K?=
 =?utf-8?B?YXZzWCtESGE5eGI0WGx6SzdCTmord2FYTTl4WksxdEFrbTVjTzZ2b1BISGty?=
 =?utf-8?B?dmM1VFU3dm1jcTg3T3FMR1BIQkNDVjFJOExIZDYxWHdFazVzeklPRk5nQU9V?=
 =?utf-8?B?ak5GNTBEMXVWYzdlNzUxWkpyTnlWb1NYVjNvUkNmbjR6UGR5Wk0yS01tcVNq?=
 =?utf-8?B?RzRVcFJkMFp2aXcvNFBpL2NuQlNEanNWSndLZ0dOdUNrVi9KWlh4YUlDTE1u?=
 =?utf-8?B?elRhdVB3dlpBMXovUEtBamhXL1luN3htOTRvcmY2SWw5c2x6OVFKblYwL2E1?=
 =?utf-8?B?ckxKWlY2akYyWUxwTkRiZXliZ0Q2OGV2SjVheFdNeUk0SUNzR205RjhCb1p5?=
 =?utf-8?B?ZnB5UEJKSjZBMTFrWUpKOU1qa3l5bWcwL3cvaXMwSzNKdnZ6a2pLbDFNbHVG?=
 =?utf-8?B?a3VCZ1l2K05Ucy8zOGFER1BxaTZPV3l2KzJiMWQrK3ZLWnBld3RXbVU0MXh3?=
 =?utf-8?B?bUo0ODJmaGIzTFFueVBTT3Fla0JpUzhpYUo2V0RDUlBYTHlaa2RtZ0pDb2Jq?=
 =?utf-8?B?bzV5b2Zuanl5YzQzZi9QMVVmVTZkbk5KMDZMWGEwS01vTW04M0l3SVNuMitV?=
 =?utf-8?B?SHZ0dnY3TkN2ZVR5d0V5bzBJd2pmSmdKSmowNG43c08ybGdlTFJRVVNrdmZs?=
 =?utf-8?B?ekJYNThkZnJUNXkyaTEvQnlHWXJnK1YrbFFPNy9aZW5TWTFtbTgydFJzRklM?=
 =?utf-8?B?eTdWaWtqUjlqNHRNSGJwcUVGQjkyTnB4SVFiZlYxS0VNbXZCc1VDSjV3WVZo?=
 =?utf-8?B?Y1dIS0kzK2M2NjhFSWJHNHJLSVpyRW8ydUphNGc1TDlZM0hDd2RXWlhYbHY1?=
 =?utf-8?B?Y2dKNjNkWGZKa25sZEthTCs2N0IrVTBpczZVVTAwQ3dYU1BSL3lsZUY3WFpM?=
 =?utf-8?B?STZyU0FZejQ2UWlNdE1TdHZTbTRHQzBYeTdPR3JBNmw5RnB5cnQ1VDNtY09E?=
 =?utf-8?B?UzhEWDRvQXBjNURRZUNRaE53dHMxQXVVNjZqbkRKeE94ZXBxK1hwaHBLUWk2?=
 =?utf-8?B?ZnB0TjUvTTdLL1I1aUxhdW9XUXRRTDFNNXU2dkRXMGJGdE5kbXVxaXlocjAx?=
 =?utf-8?B?T0pOTU1aRzdzQ1IzNEJvNnRoUWM3ZmlaQisveHY3b096RHNpZzdQcVhPUDBn?=
 =?utf-8?B?TjM1aWNvOG50R1d2TkhHa2ZkZ013ZVRzdE5vVVNkRHMvZjBQRkhPdFNhdzMw?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3855d452-e926-4433-89c6-08de1e5beedc
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2025 00:15:33.5975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mf589JhyUqTszlFLyW9N6zI8wLTkepBkUcceWMDlMG22LAn0BL80LYGL0RbdNC5WLEiW0uqHUnZUPW6SST5lmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8511
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

Quoting Gustavo Sousa (2025-11-07 21:05:33-03:00)
>This series adds initial support for Xe3p_LPD, Intel's display
>architecture with IP version 35.
>
>This series contains basic enabling patches and does not provide
>complete support for the display IP yet. More involved features, like
>the new PHY implementation and ALPM are implemented as separate patch
>series.
>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
>Changes in v4:
>- Skipped patches from v3 that were already applied.
>- Dropped patch "drm/i915/xe3p_lpd: Enable system caching for FBC" with
>  the expectation that its next version will be sent as a standalone
>  patch.
>- Link to v3: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3=
-0-00e87b510ae7@intel.com

I decided to post v4 even though there is still some ongoing discussion
for "drm/i915/wm: Do not make latency values monotonic on Xe3 onward" in
v3.  The reason is that I will soon become unavailable for a few days
and wanted to keep the series up-to-date with what I have locally.

--
Gustavo Sousa

>
>Changes in v3:
>- Reshuffled patches so that most of the ones already containing a r-b
>  are placed at the start.
>- Dropped "drm/i915/xe3p_lpd: Wait for AUX channel power status", as a
>  similar patch was already applied from a patch series dedicated to LT
>  PHY
>  (https://lore.kernel.org/all/20251101032513.4171255-25-suraj.kandpal@int=
el.com/).
>- Dropped patches related to UINT16 plane formats, as they were
>  incomplete and were not specific to Xe3p_LPD.
>- Dropped FBC related patches, as Vinod is handling them as a separated
>  series
>  (https://lore.kernel.org/intel-gfx/20251027134001.325064-1-vinod.govinda=
pillai@intel.com/)
>- Dropped "drm/i915/xe3p_lpd: PSR SU minimum lines is 4", since that
>  change is not valid according to Bspec.
>- Incorporated review feedback on the other patches. Please check the
>  changelog in the individual patches for details.
>- Link to v2: https://lore.kernel.org/r/20251021-xe3p_lpd-basic-enabling-v=
2-0-10eae6d655b8@intel.com
>
>Changes in v2:
>- Incorporated review feedback. Please check the changelog in the
>  patches for details.
>- Link to v1: https://lore.kernel.org/r/20251015-xe3p_lpd-basic-enabling-v=
1-0-d2d1e26520aa@intel.com
>
>---
>Gustavo Sousa (10):
>      drm/i915/wm: Do not make latency values monotonic on Xe3 onward
>      drm/i915/vbt: Add fields dedicated_external and dyn_port_over_tc
>      drm/i915/power: Use intel_encoder_is_tc()
>      drm/i915/display: Handle dedicated external ports in intel_encoder_i=
s_tc()
>      drm/i915/fbc: Add intel_fbc_id_for_pipe()
>      drm/i915/xe3p_lpd: Handle underrun debug bits
>      drm/i915/xe3p_lpd: Extend Type-C flow for static DDI allocation
>      drm/i915/display: Use platform check in HAS_LT_PHY()
>      drm/i915/display: Move HAS_LT_PHY() to intel_display_device.h
>      drm/i915/display: Use HAS_LT_PHY() for LT PHY AUX power
>
>Sai Teja Pottumuttu (1):
>      drm/i915/nvls: Add NVL-S display support
>
> drivers/gpu/drm/i915/display/intel_bios.c          |  54 +++++++-
> drivers/gpu/drm/i915/display/intel_bios.h          |   2 +
> drivers/gpu/drm/i915/display/intel_ddi.c           |  11 ++
> drivers/gpu/drm/i915/display/intel_display.c       |  19 ++-
> .../gpu/drm/i915/display/intel_display_device.c    |   5 +
> .../gpu/drm/i915/display/intel_display_device.h    |   6 +-
> .../drm/i915/display/intel_display_power_well.c    |  42 +++---
> drivers/gpu/drm/i915/display/intel_display_regs.h  |  36 ++++-
> drivers/gpu/drm/i915/display/intel_display_types.h |   1 +
> drivers/gpu/drm/i915/display/intel_fbc.c           |   5 +
> drivers/gpu/drm/i915/display/intel_fbc.h           |   2 +
> drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   2 +
> drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 128 ++++++++++++++++=
+
> drivers/gpu/drm/i915/display/intel_lt_phy.h        |   2 -
> drivers/gpu/drm/i915/display/intel_tc.c            | 151 ++++++++++++++++=
++++-
> drivers/gpu/drm/i915/display/intel_vbt_defs.h      |   3 +-
> drivers/gpu/drm/i915/display/skl_universal_plane.c |   9 +-
> drivers/gpu/drm/i915/display/skl_watermark.c       |  17 ++-
> 18 files changed, 462 insertions(+), 33 deletions(-)
>---
>base-commit: 2bc418aa7efaae562e49d84e8b28f799cf624745
>change-id: 20251014-xe3p_lpd-basic-enabling-eb4424698b44
>
>Best regards,
>-- =20
>Gustavo Sousa <gustavo.sousa@intel.com>
>

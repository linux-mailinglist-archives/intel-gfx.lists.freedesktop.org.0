Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89449B07774
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 15:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5A9C10E74C;
	Wed, 16 Jul 2025 13:57:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nu14u7IB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB6D10E6F7;
 Wed, 16 Jul 2025 13:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752674240; x=1784210240;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CSC2q+sU1b5TTOSaP8R3r6AP+U/ZMNjj7VqPAPKx3A4=;
 b=Nu14u7IBMC6y1fVlWo6AeQ39k7jqgz7zKIFHEvVqJvXyDb8+iDavx4/z
 tcApTTEg8Z6I9KtJzQFDDLiCDo6A8slUjB9lAFdeDIXBNSaUMvxio4arJ
 3dxYbGDrwkFP1UcqbjkmYF3owlaYv3z3oRF3VXfV765ZC+EL6r3obZnqO
 KbJrIVKqXyFYG1Qftek0JyJUbBquqlaDbbIEO3E10sAZ7jDimNBj/CZck
 Vc7pbiaATW5uYSv34GbKNNdryHxWgLtX6nU5Cl0zjptkwWYPMg/DmYBIV
 2WbmScZj6mMXDsOjY+oU+0iTUCVBXLmrOT65Oprec6qOfOZc85eBxAMs3 g==;
X-CSE-ConnectionGUID: mLobh30yRC+uvvG3AqNpgA==
X-CSE-MsgGUID: OL9gMDA2QgKPrpJzOswV8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="72494374"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="72494374"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:57:20 -0700
X-CSE-ConnectionGUID: pa4Gb6QQQ5+U5JI50f1P7A==
X-CSE-MsgGUID: F8/TafUvSWykSToKAfU0dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="158235830"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:57:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 06:57:19 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 06:57:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.89)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 06:57:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q2RTPDvxeF3bG5Nmbyax0KiklgrlXQaNW4YkGyhRFtCTTbEWhLj2HlmUUgzJkVtNk9PsLKFPNhSwx7SkhxWTY+ZrlgoQguW9FLV72+znq4e2rjjEPW+LF6jIR/j4/SMJXX1CSlvSShKIqTZ/g0L79fWlV7E+i1R+ZrwBvCP4ysg/i+NW4s2U11c6H0vPy6KItglXk94t+kUCgMkEP+fWz+kuoWykudjXvf0xI4ediCG4fKITm7VIcHyLAXWI70xeiwCpPy/Pa/z/5RNnd+NUDVM45jAqdqENeFFugaTuBWXP6fzBWrHN29zBkBlZBRuok3L5GQudf/lhdY152F6NLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vP2vO7MG+BhtCMVnzSxgwZjRrltVjFF2BNQLQHmdYpk=;
 b=p6Xyc5K2Zkhio+WZBc5N6KgODlKdKnk2Fa10+MV+uZUaiXMZmfx85jd58a5Ncr/vK9h1077NmduNE2XW4l07rX+Qp4y6JMNzIk9lKjWwQK0D7ZtDpSnXyFlVDy9+8UaMEmM2p5jkP+FNJRAuSh7zzmTHmGRpqy6WPNn63Wc/F0Lo1Honk9biTmJ2rZGUc/Gxb+28EOrhrKqV0YRuJ+cMGNX5ofuoT2+NdEpivyrs9Djrm7sdUZaGE9O7ln8XFMqAe3GPD+HmRjCpDNIqce13prJFETzqKvYUsuljLzvegjK8ller9iO7PEJFZN9t9Vz5lihHL/lFpinMUqiC7rogTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 DS4PPFDA283F46A.namprd11.prod.outlook.com (2603:10b6:f:fc02::54) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.36; Wed, 16 Jul
 2025 13:57:16 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f%3]) with mapi id 15.20.8857.021; Wed, 16 Jul 2025
 13:57:16 +0000
Message-ID: <26ed0874-c443-44b4-82b5-7bcd7e4f0a54@intel.com>
Date: Wed, 16 Jul 2025 19:27:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Fallback to DSC for HDR content if needed
Content-Language: en-GB
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 <chaitanya.kumar.borah@intel.com>
References: <20250703140252.3547953-1-chaitanya.kumar.borah@intel.com>
 <IA3PR11MB8937807080384ED5609A3D0EE34BA@IA3PR11MB8937.namprd11.prod.outlook.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <IA3PR11MB8937807080384ED5609A3D0EE34BA@IA3PR11MB8937.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BM1P287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:40::19) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|DS4PPFDA283F46A:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e06b537-ba0b-45e1-6b96-08ddc470ac2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUZhSC9wek5ZaDA4ZldvU0dHMHB2VUJSK1B6cFMzMzczU1RIQXpObUtmbGhs?=
 =?utf-8?B?NTlLalZuRWc0alVnMGVFTE90Ris1SGU3dHBDRVlNd0pXYzNrT29qMzVsNTBx?=
 =?utf-8?B?VXFOaWhUdU03NmpjVkEyWXJRZ0YzVmdFTHM0VCtGSDQ2bHdRR0FobUVUVUhj?=
 =?utf-8?B?d24wdWhtTFd0VDNIeHk1ZXVFa2RuSkFyNXFLdnMvb1BsWlFCVy80Q3NUd3Fy?=
 =?utf-8?B?Q2w3bkJob3pMZlhvRW9vSVQxWFpPcDR2K2RFYTlyc2FrUWR1dGlXeFE4SFZ3?=
 =?utf-8?B?bU5nZkU2NExlelBWM1U2TDl1dy9nQ0RrUGdFanRFa1pzeEpVN0ZBU1g0dXZZ?=
 =?utf-8?B?TXFzeG1oOTFNTUthVFBQOTNnTXZxTUxOTW81U3hhZ0tYczVUMFcrMnhiN0Ux?=
 =?utf-8?B?cXpiN0RWb2luRlFhZFNoNTNhd1ZEamkyd1U5TnFDbzdaeXVKUGxLcXJIT1Qy?=
 =?utf-8?B?d294VVBUNkhSU0s2akQ2ZU9wVkV4UkxxMk12T2JMNjVIYllqQUptbWtRZkpF?=
 =?utf-8?B?WE1STmVLUFZCMTVyUFBxV0syUGhyTVdMb0EwWCtBMExSSFJCTlp0bjFvUXVz?=
 =?utf-8?B?TGM1Vkxyb0RnR1NnZ2RGdk91UFdZV21tUGpwbzE2NzJsN1hqV2FkRHVjbm1l?=
 =?utf-8?B?cFZxa1ZNelQ3eXlRQ3RTSHJxNVJSMHVTaC8vVjNSMWhBYjBud2FVVmdwcWlP?=
 =?utf-8?B?ZTNNVklqTlVJd0p4c0NNYWlCRUgrWUFHdkZaelowcFErT1hOMk1lQnJUcEU0?=
 =?utf-8?B?T2xWSHF0TkRyOSsvSWo2T2Z4emZ3Q3RoSjBJZVp6SkVDaXFVcG9kSGg5bkRz?=
 =?utf-8?B?MlNWbzUrYVpIZysyNzNPSEV3cWt3NkhLQ1Q3ekQvSFd6dHoyZjdxMUp5RlYv?=
 =?utf-8?B?OW5ZYXhFV3BXdTJZZjlXNVc0bld5SjNTZWVuNm40Y2V0S1J4SFJkdXJ3bjFJ?=
 =?utf-8?B?U21MNHZkR1NLVHRUWDlzWDN5SlZza2xmWTJpNlJ0OENMcDRjU0ttUks0MWNJ?=
 =?utf-8?B?ejhxMWhxcDFIWDdVSkYxa0FUQk5ueXVGOG1VcVlnQlVEWjNLckFYZUdmR2Vz?=
 =?utf-8?B?aHQyN29ON2k0akJwRmplRk9qelNMQzBOR3NjNjJhdUYrSi9kTHRDT0NKejNk?=
 =?utf-8?B?UWZ6NVp3azM0emxXcUJ1QW9PTi9yTUNTN25CS1RjWjB5TnIrNGlGUWMvYUxO?=
 =?utf-8?B?QzhTZW5TcW44ckRpajZIZExIVHN4dDVnNnFqUnpmSEtlS0xYZ044NlEyTEVa?=
 =?utf-8?B?SWZMQ2ZsYVhGV0FlU0NkaVdEcVlobkovSTZWbi9NRnlqZzZJR0hlTktoOEpJ?=
 =?utf-8?B?eTNqUFVVRlI4UUFxYno2MzBsY0NRUFZGL0JMdUZURXJvbkp3K1RRZTF6TVJw?=
 =?utf-8?B?dkdjUktxYnV0bWUyLzM0dWJwbjlBRnA4YTlKRm9iVTV4ZTVXdzZVdVJXeENT?=
 =?utf-8?B?Y2JleG8wbkhDTTkyV3g0VnVGbDFDRVpHdFJsVy90WlVGWjZVc2N6STh3TUFq?=
 =?utf-8?B?QlNnd2U3UnNiSkVwVlJpTXVta0dZVGF3bUx6enRzR0hKRDloQ3JMWEh3dVZG?=
 =?utf-8?B?NHNlcDNxNVIyaFUwZ2VraXdyTGZlTmZCQmlNSHh2Y1JFSmdvN2w3YUQvUDNW?=
 =?utf-8?B?MDNCY2FnS0E2cXlySU9TMko0RERrSGtsR1kzQ1RNQXRZTXU0NjJIZWUyTTJ4?=
 =?utf-8?B?MDVqM2NuQjB2bnJoZWQ4K1VlalBmOEpGZkJkWG1XMUZlWE1pdi93Y0hoR2pr?=
 =?utf-8?B?UFlGU1JrZkQwYVhibXJScUJQcFdNUnEydzRpZFNVd2lPMWQ5Q08reGNsWmZw?=
 =?utf-8?B?N2NRYzFUbXl5ZTNwQmE5WWE3cWZ1YWRmaEt2TWNtWWRBc3V3K21lZ2NMaDR0?=
 =?utf-8?B?TE1GTU1ENEpVQUxNaDFWZmtTaHp5YzZWd3lCMXl3VFRucXN2WFNIcitGNnNV?=
 =?utf-8?Q?in025ArbjZc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjErdjZwMndDNFZFM0VhWVNOakxlSkdvL3Y0L3ozeE9NVWU0L2Z2bzN0ZTQw?=
 =?utf-8?B?bXhSTEdyQ1lOVmY0VjNMVzNEcFNYSkNLSlgydzdqSG5ndE55dlBVS0tMWWg0?=
 =?utf-8?B?akQ4TmNEVkRDc3Q5LzZQNnJFazUwNDJNd3RTeXJKQ3pMd0dwQ01zYm94WUhF?=
 =?utf-8?B?M2lmZjBBNFIvblNOK050cFB4ZkxUUHlLQmVKWkpzc2tzeHFQZGJZMnlSMG9o?=
 =?utf-8?B?b29hdDZGWW5QV2hWRHNOZ2tZME0xcE5ObGNOS3lwVHJDaTBVSTZIZjlqNDN4?=
 =?utf-8?B?NStjeW5Bb2Z2SWJTdk5WeFU5NWszS0VqbHlKSEdFMm16dVR5ek1sUUpyYTll?=
 =?utf-8?B?WjJqQUQ0c2ZRQzdsZytNV01pcHpOU0VtZVBwSzFlNmR4NWlIR2JqQ0tiZUVY?=
 =?utf-8?B?WitXaTRLRHRnVXlsZncrRStLVDEyc1ppNk1WNVhQaFZhT1VNK0d6cVNkemJr?=
 =?utf-8?B?WGc3S2YxODV5eTlWNzZKdTNEdHliTGYyZG1nd0paM05DdzRtTzBXYldTVCtQ?=
 =?utf-8?B?VG5zTE14Rzh2ZHhzQldXcDJ3MnRTSk1vNlo2UFpZTU83Wm14ZmJaRjFobHBq?=
 =?utf-8?B?UFFjUHFDZVhyek83MHF6WlRBaWhvclIxZFBLaFJVNEZOK1plbHlRUFZXWVQw?=
 =?utf-8?B?eWpPdzhpc2cyUU5DZzlrcWE1YXBsZHduU2hQdGRndllUZ29rVzJjWG9JTHZj?=
 =?utf-8?B?bjRCeTBsRnN6NzNaaXk1bFVWd2FJekF2REpxbUM1K0YzajltRnFsRHRobVZ6?=
 =?utf-8?B?emxoczNyM3BoN1RKTzdtcXV3N3A5bnJ5bjh4aEdKZVdnWW5QTCsxaUhILzBt?=
 =?utf-8?B?ajVITVUya3VMK2FRZE9OU0hXb2lPVGNNQmdJck1KTHBLQlRWQWdxL3VPS0t2?=
 =?utf-8?B?dkdROFBTMlhtNjVzN01sQ3hsZXBDcC9ZTkVIVmxYUHVmQUhyaG9GSGd0V0k4?=
 =?utf-8?B?bklsQXMxSnJTWUZDTVFidTBDTGRiT3JyZURSVjlXTHh1TjdwNW5DMHVwdXlp?=
 =?utf-8?B?TzZKcDRRM09mQWpVRk51TUJsZjRhYVR5YTNibk1wdE1TNy94TVA1UTNVRzNK?=
 =?utf-8?B?RHo0RjdvSEdwRGdWSGxLME5OYVhyRVV0Qms4TEZEb1JqWVFFb0dCOEZDLzBp?=
 =?utf-8?B?RDFsUmVnY0gydHoycnp5RVVXYlpGQmdhZy94R1pMQzg2RVh6eEdSbjNKayth?=
 =?utf-8?B?YlBGQUR5ZnhWS0lYVG55WjJXenZISXlneVhvaTdvNmVtVkRFUHBUU2Z3YUJB?=
 =?utf-8?B?ZjFUVW52ZGV2MTl3ZEZ6eWJJL05UMjcxVCtiK3VvUDFtS3lXVzlRRXplamVv?=
 =?utf-8?B?MHRIMnlmeUhpcXVmNVB2UXV6YjhYSEI3RlVxR2pIbzd1czZQQnBiTE9LMnln?=
 =?utf-8?B?b056cXpzU2wzUlpOd3ZPdk01VmpSUVZUWTVWRGJwdVdnWGtoSEtieUdqa2Y5?=
 =?utf-8?B?ZHNid2gvOFVyUVlpQ1pNa0tBVHJJdE1lOHNDU3NEdnBYVGR1eDVKOStER2t6?=
 =?utf-8?B?WFBSeHJZcHA0RGVYRnZJNnQ0aGZ3OTA1VXd2N1EzcmdVWmNHbUJFbWExS2dN?=
 =?utf-8?B?cU0zOStCaHBWczdkbmV0NDVKRHdHM29lWE1qRjVqeU12bmV0SG5jK2k2VUEr?=
 =?utf-8?B?KzlTRXFqeEgzZVJ1blZuOHNUM3BXSVovSXdlRDhFcUNtWW8rRE5UN2M4dHhZ?=
 =?utf-8?B?eXFaOTB0Mm90RlhGR0tDRVozZVg5Y2FHVmpvTkRWckFuYXZiZ1drUk1BcWFY?=
 =?utf-8?B?TTNXMU1PemppalpzN2hKWERQc084cHBGSlRoaFdhQjN0bnlkUHlVSDNwY204?=
 =?utf-8?B?T1ZJdHExd2liRXA2cERUZlpidWs5eWZIalFJd1E2NnlvMTIwZ2Fob2duTGtn?=
 =?utf-8?B?WEFxMm1zSVgxYVZmczJqQXN6bStucWx6OEpWNHJzeWV5MEhmeURYSEQ4NDJB?=
 =?utf-8?B?bERyS0RkWFMwdXowYWhhZGgrek1TVUpsWTVrUWVQKzErQUNCZFFsbUdtVlBM?=
 =?utf-8?B?KzhsVFlqNWRXemdKdTBHOFFOUmJ2enZuZ0ZPSGE2RjhiZmFLWlFQcGdFTXBF?=
 =?utf-8?B?RDVDbTQ5aVU3NGNRSTBJeVRCZ1dGY2dYbkFtOFhSSlhvWXJVdytMQnFTeU83?=
 =?utf-8?B?TS9VK3NZYjJ2c0ZHM3lIQWFlZ3MyY1ZvQWs3Qzh5aHVlTk90Q004VjJ4Q0tT?=
 =?utf-8?Q?WHRzWQ2itv0iHY0SfBB2h1o=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e06b537-ba0b-45e1-6b96-08ddc470ac2f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 13:57:16.5346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ubM5iZsHP/xq1apE/jyVxpv+v2IElX5u0eUJfoQk1RXrdtYu3tXv7Vv46WqlLNru6VQET95aLn3Iqf0GozoEnG6YukC8/vJN9DJqDfZU5wY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFDA283F46A
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


On 7/11/2025 9:57 AM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> Chaitanya Kumar Borah
>> Sent: Thursday, July 3, 2025 7:33 PM
>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Deak, Imre <imre.deak@intel.com>; Nautiyal, Ankit K
>> <ankit.k.nautiyal@intel.com>; Borah, Chaitanya Kumar
>> <chaitanya.kumar.borah@intel.com>
>> Subject: [PATCH] drm/i915/dp: Fallback to DSC for HDR content if needed
>>
>> If user-space has enabled HDR by passing HDR metadata and we can't
>> support 10bpc fallback to DSC.
> Do we have this limitation documented anywhere if so a Bspec link would be helpful.

It is a matter of driver policy rather than spec. More on it below.


>> Now that we need the helper to determine the presence of HDR metadata at
>> multiple places make it non static.
>>
>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h          |  1 +
>>   .../drm/i915/display/intel_dp_aux_backlight.c    | 13 -------------
>>   3 files changed, 17 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f48912f308df..abbba159e479 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1774,6 +1774,9 @@ intel_dp_compute_link_config_wide(struct intel_dp
>> *intel_dp,
>>   	     bpp -= 2 * 3) {
>>   		int link_bpp = intel_dp_output_bpp(pipe_config-
>>> output_format, bpp);
>> +		if (intel_dp_in_hdr_mode(conn_state) && bpp < 30)
>> +			return -EINVAL;
>> +
>  From the commit description it looks like you are trying to say we don't support 10 bpc.
> I think what you want to says is we need at least 10 bpc for HDR to work and if it's not so
> Then fall back to using DSC as we would do in usual use case.

s/don't/can't


>
> I think we should not even get the HDR IOCTL passing id we don't have a minimum bpc of 10
> That way we don't have a need of this code right here.


There can be cases where a panel only supports 10bpc for a lower 
resolution or with DSC.
Panel still reports itself as HDR capable (not sure if it can expose HDR 
capabilties at the granularity of modelines).

In these cases, the "max bpc" property will still show a range (say 
6-10) inclusive of 10bpc.

Userspace can still issue an IOCTL setting HDR metadata because it 
thinks the panel is capable.

This patch adds a DSC fallback in case  we cannot accomodate 10bpc with 
our bandwidth calculations.


Regards

Chaitanya

>
> Regards,
> Suraj Kandpal
>
>>   		mode_rate = intel_dp_link_required(clock, link_bpp);
>>
>>   		for (i = 0; i < intel_dp->num_common_rates; i++) { @@ -
>> 2910,6 +2913,19 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp
>> *intel_dp,
>>   	}
>>   }
>>
>> +bool
>> +intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state) {
>> +	struct hdr_output_metadata *hdr_metadata;
>> +
>> +	if (!conn_state->hdr_output_metadata)
>> +		return false;
>> +
>> +	hdr_metadata = conn_state->hdr_output_metadata->data;
>> +
>> +	return hdr_metadata->hdmi_metadata_type1.eotf ==
>> +HDMI_EOTF_SMPTE_ST2084; }
>> +
>>   static void
>>   intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
>>   					    struct intel_crtc_state *crtc_state,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
>> b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 0657f5681196..5def589e3c0e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct
>> intel_crtc_state *crtc_state,
>>
>>   int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
>> void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool
>> force_on_external);
>> +bool intel_dp_in_hdr_mode(const struct drm_connector_state
>> +*conn_state);
>>
>>   #endif /* __INTEL_DP_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> index 41228478b21c..12084a542fc5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> @@ -225,19 +225,6 @@ intel_dp_aux_hdr_set_aux_backlight(const struct
>> drm_connector_state *conn_state,
>>   			connector->base.base.id, connector->base.name);  }
>>
>> -static bool
>> -intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state) -{
>> -	struct hdr_output_metadata *hdr_metadata;
>> -
>> -	if (!conn_state->hdr_output_metadata)
>> -		return false;
>> -
>> -	hdr_metadata = conn_state->hdr_output_metadata->data;
>> -
>> -	return hdr_metadata->hdmi_metadata_type1.eotf ==
>> HDMI_EOTF_SMPTE_ST2084;
>> -}
>> -
>>   static void
>>   intel_dp_aux_hdr_set_backlight(const struct drm_connector_state
>> *conn_state, u32 level)  {
>> --
>> 2.25.1

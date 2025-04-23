Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B128A97FF9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 09:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A6F510E409;
	Wed, 23 Apr 2025 07:02:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lD/ee3oQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEF1810E401;
 Wed, 23 Apr 2025 07:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745391719; x=1776927719;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H8xEOGKVjVNKm/FyTce453KUL8URqqvtcCj4vOlmb4k=;
 b=lD/ee3oQUNz3kB/zFjmXsQC5GqmuXhP1xNmXdS1MncJPmC6vlaUXI/1Y
 PXFi4b5BvReF23x4z2kZ9WaqjdVhqRHwLqtGd/BIachfVyCDrTGVm/zUL
 CHmBT93rS5mhfMFD5oa8vSJAH/kw8o6nvj31eE6RguePkQiUP1e0LHu1s
 d99WtDe6rSN/mhe75/nCY1qSF26UJwPZzztZcJk/phV+2Ie/gtmBJujsw
 XOcGneZv0El3bBm+E5DMI1Il9iNAUMQNzvPD2UXs698f5xtyqIgozzywX
 2gre1y3p2D8JCEvIGtdWkABocb7mfD76J+VQHn/D0Kv8W3FbobwClW6RZ Q==;
X-CSE-ConnectionGUID: wAZ4gL3qSeGoLnoCDI/AWQ==
X-CSE-MsgGUID: 9/nUzMLcQsWhzMqnegTE+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="50801605"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="50801605"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:01:57 -0700
X-CSE-ConnectionGUID: nKqi3mHKS8en1Zc31STH2Q==
X-CSE-MsgGUID: nrLCS0tVRSy+tH2UfERexA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="155438054"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:01:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 00:01:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 00:01:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 00:01:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AkwzFm6by4awTXz/mySRMITdmwvJ26FFrluwlzuoFCvyt8qD4JIhQ2DtzMBBtlubVUzTVaYIykvOGJI/NiOx2OFItrU48D3/2a3qwGRUdJ26oQ5vnrzEQjWf1JrymLD0PSwFOQJdYU27fzUfDJPwmnBc+V/y6l/HfK6EVE4XJ3o64X30fXTY/1Uj++M2f0CSK0k4M3H1D8CQj1auOmIIHvPbznPcZjLUdt2I/+/mDWP57+ssxPEGY/f95gbOvbupX6b6ttTbdlK1lo48SVqELkXXMI4jNAYQOWmX5Ql2iQvq8IrKuan/AC+sQEtBNTGlzDoGT60EKcX5cIMfiEacng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6cITKAAcfFguJUcz23A7Mnei6kokKqGvrvFGc5LgtE=;
 b=E2sB/MAxK6AMiH2qSCk8w4BvJqn9feIoQ05Bxxq8qAqeeBSyNdsGUg44cDppp0v5hoZampnr8Mc3fa3IhNjFTzjAzUzHkSSN+YVsT/xEIF7C5P0sHdO3pxgrD5AjzRFon0uubgYD6hc2XqEE0xIGsOi4ofMtnqQf/3BKCKPOtxHB2WZC5kcomiA5wm8jD8ZU5dEp1BVgtOimlSXd7DSkZPSPW+/7gFKMByH11G/cATufEPif6PnSX9Y4FI8rdC9ftGVs4B5yEZ+BChoVwhte+WkZdJopUbE3U/k5QTtxDhIPunVn6YNW5BOiGZw9iA2TQBs00W9bLXE+NsRftneqZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 07:01:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 07:01:53 +0000
Message-ID: <0abc19ec-ff48-4a2c-b347-598fba194bca@intel.com>
Date: Wed, 23 Apr 2025 12:31:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/13] drm/i915/vrr: Add enable/disable calls for DC
 Balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR05CA0001.namprd05.prod.outlook.com
 (2603:10b6:208:c0::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6817:EE_
X-MS-Office365-Filtering-Correlation-Id: 94bae618-555d-472f-b6b1-08dd8234ba8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aVUwZlNjeHhrRmordGN5N3Zza0Nrc1JYVWU1cUhpM28rT0E3Mm5RWHlJV09q?=
 =?utf-8?B?cjVrQ0hFNXY4MjNPN3FDc09WRzhSdEw3WVNqK0pseVRCYWNMQ2djMnc4NTlo?=
 =?utf-8?B?TkZmZHlPeisxdGYrM0FuQnM1VFM1b3o0c2hxcHhrRXFtSFNUVm5IcDFNSTFp?=
 =?utf-8?B?ckVPYVZpTlNZSzdlTm9FVmZtc0JFRTZSTWtNMGlCMmJ2QTlxQ0pSNTY1aUFT?=
 =?utf-8?B?ajJ4K2JvQ1NQT0pBcTUrR3VVTFVNMjlpRTB6amdRaDVNS3Z2OFlvbURMcE8z?=
 =?utf-8?B?WVlXQlpwZkw4a2Y2dDZEaGtvNHcrMWQ5endOay9MamdJaE9waFlXalJBU1Ur?=
 =?utf-8?B?YTNrLzVjdWZJL0I5UFE0enB1aEJvdnljS1pFNXYraS9iYzJuQU5aYzllVlEx?=
 =?utf-8?B?WDNQaUkxbkdlT0ZVWVpEZldQV1lNZlRFOXZoK1ZFYkJwUXYwc3k5ZVVIZEp3?=
 =?utf-8?B?Vk5ZWFdyL1JDeUU0Q3cyczRYc2F5UDJva1BSeDNLbDB0S1VONGprek5vNEZv?=
 =?utf-8?B?dDRJcG5sZHlLTHozNGV3OU9nVHlVcTVIWXpMNEtqYWxNNHNqMXc5YTYrdk9i?=
 =?utf-8?B?R2lkbndoeTBhcThKSk45TWJlRGhCd1hYVVdrRWMvQ0ZsWWZqN0pSZkplZnFa?=
 =?utf-8?B?WEJxWkE0RnNKdGpXVW5SSEZncHM4eHF6cHlyNExyOHRTb1ZDb2tqYVNDZWl0?=
 =?utf-8?B?L1RpcTJwSGxXa2dNd3dPVkFnck1XcjVFeXMrdC9pc1l3S0VPaG4xVVFiSmVY?=
 =?utf-8?B?b3luY1hhM28zTmprS082a0JIWGJBZU9paUg2dk5keG5LUkRPTzN2azk5akpI?=
 =?utf-8?B?cVdneE1MWngyT2M3UFBtQmZobDRKWlhZbFhUKzkxdXRXUU5jcTNhL0NmYzND?=
 =?utf-8?B?eXduaGJqTFBSQVFxNGZnWVN4MjE5TkVjdkdyZXZGRDEvenU0Q1I4akI5QVhI?=
 =?utf-8?B?K0d3YzVJTEVhS1ZMdTh0VDVDN3ZFZzliV0EzamUxVW8zLzBpMzVPYmhYaVp6?=
 =?utf-8?B?NVRCS3BIVVRzUzE1Y3VveHRUa1dzVWFOV1Bab0t2M2pGNXF1TkN0NVhDcTBG?=
 =?utf-8?B?eS9UUktkdDV5UVRJd2NUZ05rKytUWWlGaGNBdXArWER2RzgzS04wTW5ERXFp?=
 =?utf-8?B?THY1aEE3R3d0aTZkeExYVEdXMlcvN1hmNjdqQ3c5YkhYRlRnaWdncGtVZi9h?=
 =?utf-8?B?cC9tNm9CNzVZWUVFSDE1M0dOd3EyOUZPVGc4YjJISWVTQlVmVXlLNWt1eDEv?=
 =?utf-8?B?d3FtZG93VVFtZU15Z0YxbElWY2dRTDlMWDloRUVmaWl6TlM5RHZtNWg0Skox?=
 =?utf-8?B?d243ZTYzWWR0bjN3Sm0zT0xEWkk5UTJjUkVQWHMwR0ZvelN1QlQ5aDMvcWFK?=
 =?utf-8?B?RTFQNmxyQ0ZMMC9COXR5bi80Q3FBejNOczJsbzJLVEVJdm9nUDllV2d4NVBP?=
 =?utf-8?B?MkhlU2JmOWhMVzlmUWNDTWwvK2VkYzZjcUpCRzZ2OEpGU2VOeEFaTW4rcUd1?=
 =?utf-8?B?b0Q4WHh2K2g2RGVYM2g5MzJJVXdJcE55VHVvajhoMmkrdEJhT0phQ3Rra3JY?=
 =?utf-8?B?ZHRBdk1sMEM3UUZSdFRzTngra3MwZGZoemlpckdDUzJRem40dHhHZGlXR2dZ?=
 =?utf-8?B?V21NRy9VN0lKcXI3Uy9TdmRqREpBUjBRZ1ZqZ2wwOFh3Y2FpWTVwYTlZZ3Nh?=
 =?utf-8?B?MWVRWkNsMTBtZXJOakFZZXlRTzE0NU9jTDVIZWN0aWFrUFhmam1xZEJzSkly?=
 =?utf-8?B?Zit4WHdkdmpNejBVM0NpcG93NFZDcGFhVDV0N3ZOd1dOU2wyeTE0LzI3ZG0w?=
 =?utf-8?B?OXZWWWlHbU5zUUlwQkNPU0RValdwbHY4L2E2YW5EeG1iRURMMTRrdTBVaDls?=
 =?utf-8?B?cHlSS3YxM3FnUEh1dTVoRWRFU2JxTzBnRStVblJROXpSZSsyeUVISStFUnpl?=
 =?utf-8?Q?2z/CZq13s48=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eitJTCt1MC9JSGJhYXM2c3FqaVVZNEZMMHR2aGRxc2xMMTBpa0taN2w4RGxM?=
 =?utf-8?B?K0V2eThOTFRhVXVWZVVjanhUMlIzemttQlp5d1phVDFJdDhiZWRUaitOYTdR?=
 =?utf-8?B?SXFrSXNnUFhJS3Z4c3UzWlB4cFJ5VHU2ZU5Bb0k3ekxFSXArRnY3RDJETXFu?=
 =?utf-8?B?Z2tZSnh0QVk2SExJT2tJR2RzeWp2MXNteXRDcklTYkFXNDcxbjBQcUkwVmxG?=
 =?utf-8?B?VEJ5SUZWMVpHSXQ5OWZDaFBEcERUUmlwb2hrWDBBZFpJaWpKdS8wMmFxSjM1?=
 =?utf-8?B?MkZqelVXdDJGOSszN1c0NlRDS1Ruazd2d013eU0rM3NEQWpYV3V4aFFzVTBL?=
 =?utf-8?B?TFJMaWRvZVdIMHpoREdwMW9MZnJhSFpIMDhHY1VMd3RWTHFSR2txbnhTYVhW?=
 =?utf-8?B?TEl6NTVLamc2RGxGNVB4b3p0L0h3MVdWUU9jemdqK1JTdTJUOE4wSVFlN0l2?=
 =?utf-8?B?UVVaNUEvbWpSZGlJZEtJRjAzNFA5SGFnb3VRVlQ1bldVNTFpUGxtdGdJSmZ4?=
 =?utf-8?B?VFVLczg4M3VVZlp2cGwwOWhPcFFYMjJDUUNmV1IxZmdJRTBZQTdEakZxZmlt?=
 =?utf-8?B?c1QzckMvb0FISlFkNDYyOFZoS0xheGdyaHZJek02QmJ0SWdhYytRUlZqZVly?=
 =?utf-8?B?T3d3UkhObUl1cXRoUkJuSDNTTWp2ZlBIeXp0cTNYRVl0VFUxUUdxSW5aY0Vn?=
 =?utf-8?B?UFJHS0tEWlQ3Y2hkWDcyY2p4WlVOUTg0cEFCUUNVT3M5emdnMjB4K1dWdlNM?=
 =?utf-8?B?OW04MUt3RmRhM01jR20vTWlSRWIxbjNYTTZEZC81VEh3Zi95Smp5ejAxTUNR?=
 =?utf-8?B?Z1VRQWJoWWVJTUFreDhSWlIyVHFGUit6anVWbXJrQWNqMkJuOFVTdVJVcXhn?=
 =?utf-8?B?Q2lUMkMzN1g5eWhWaUU5OWZVZVpxc0pzTmJhelRkNysyVzN5TnhJQXYwUTFi?=
 =?utf-8?B?MEI0dGs0V3lZR0U4RHRScnNkQVZMK3MwNlR1VjlpZ0FXT2pjbnVyN1lEODZU?=
 =?utf-8?B?c1J2d0dFbXFqdWdLcUFrTFJnWTlIRS9PcFVNRHE0RzhkQkpKSVdhazJTdkFk?=
 =?utf-8?B?Tnh0RnQ5WGgxWEhjbkdsd213U29COFFsYTExMUxPSnExQXhKcnNNVGEyZkZN?=
 =?utf-8?B?N0FEbGM2WCtFakNCc3lmZWNqMDRmVGxTMVdRK21GcWZmQ3NiczBUNHF6dVJD?=
 =?utf-8?B?Ym9sZWgvRU9VWFVLdDlGWkJUNWRoTDU5dlpEdVJyUFRnR3YyN2gzUHN3RUtO?=
 =?utf-8?B?QmY4V2FBZXJMRHZ2V0RPK3hSbW9sMEdPeWlzY3FyZXZyYmU4Nlc2N1dGOUZY?=
 =?utf-8?B?T1Y4aTJPVkVha0RTT2lwdEZTcWt6NzNPaXVXT3M0eXVzQWxSZThuKzRFMlZC?=
 =?utf-8?B?T0VLMm04RS9nblI0M1lkM0VCV2FzN3R4d1NHZzVycktucy9NNUJPSVVlQ0FB?=
 =?utf-8?B?emkrOG5TOC9lMXcxZHVTRm5yNWtHcWpyZ3FBYjhZYkd4bFg2N2tRQ2Vva1BO?=
 =?utf-8?B?M1BERHZndC9SSzdrZlJ0NEVSbmVGaGJpSXNSZlhiWTVIbTFzelB4dlNDbXgz?=
 =?utf-8?B?a1Q1VlZOcm9ISDJsSFM0bU5LTVI4anYzR1BHcWo3NW51NGExN0QrclFWWlRr?=
 =?utf-8?B?c1dGcVc3cE9FSkxxKy8rOCtXTks3NEp0c3dkTGl2d0hrOXo4N1A5U3A4M2Ra?=
 =?utf-8?B?bUw5c2hYeFlkeWlLaWJZUFJpdlMrMFBNNjQrd2EvanVJWkFJVWM2K1JOMnJD?=
 =?utf-8?B?Q2xMZGFxNEhMMjE4OTIxUHhFejNqUlk0SHdncnhkRzUyeXV4aTVIb2tBWFpa?=
 =?utf-8?B?aUVDVk8zWC9GdjFnaUVNMnNCcU9QSUloYU00em9yMHUwd004eWsrV3BFSEJ4?=
 =?utf-8?B?cVhlOFk3anV4dUlsZXdzNW96WmJYV09OWDhqOHJtaUpoZkxjTkFhWUJ5anNy?=
 =?utf-8?B?MS9ENmgzNFRHenpvQTRKb2dpV0dkYnErZVJuMzRsbXVEaXNoVXY2RTFDdFBC?=
 =?utf-8?B?dXk2Qkk4WnNhb0tUR25SNFZ0bzN6bUo3R2I0bDN4VzFjanVsNkxqR2hFWDJs?=
 =?utf-8?B?MDhtWXVCRU1XMU1ja3d0MzdKdWZheTRMZ3U2eno3bXBJQkU4c25sbjZOeU1j?=
 =?utf-8?B?Q09yMUZ3SkNPL3J6YndORG9IUEF1Wi9yYzFjeGpCS2FpbWQ4QTV1ZzlUM1Bn?=
 =?utf-8?B?M1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94bae618-555d-472f-b6b1-08dd8234ba8f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 07:01:53.8365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T/zFRUDRM5Ks7581o9fmcd8dtMPXPWou0RRi5kWBdZpv9h3Q3WvzGlyhYOZDLMEbILb5of90cmyth8joLhwy107300YppWfwKSDf0LGvwRE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> Add enable/disable calls along with required hw registers
> for DC balance enablement.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |  7 ++
>   drivers/gpu/drm/i915/display/intel_dmc_regs.h | 71 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 29 ++++++++
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 10 +++
>   4 files changed, 117 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 94468a9d2e0d..126d54e6a393 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1307,6 +1307,13 @@ struct intel_crtc_state {
>   		u8 pipeline_full;
>   		u16 flipline, vmin, vmax, guardband;
>   		u32 vsync_end, vsync_start;
> +		struct {
> +			bool enable;
> +			u16 vmin, vmax;
> +			u16 guardband, slope;
> +			u16 max_increase, max_decrease;
> +			u16 vblank_target;
> +		} dc_balance;
>   	} vrr;
>   
>   	/* Content Match Refresh Rate state */
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 1bf446f96a10..39e4f70005ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -103,4 +103,75 @@
>   #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
>   #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
>   
> +#define _PIPEDMC_DCB_CTL_A			0x5F1A0
These are again added in Patch #9
> +#define _PIPEDMC_DCB_CTL_B			0x5F5A0
> +#define _PIPEDMC_DCB_CTL_C			0x5F9A0
> +#define _PIPEDMC_DCB_CTL_D			0x5FDA0
> +#define _PIPEDMC_DCB_CTL_E			0x551A0
> +#define _PIPEDMC_DCB_CTL_F			0x555A0
> +#define PIPEDMC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_CTL_A)
> +#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
> +
> +#define _PIPEDMC_DCB_VBLANK_A			0x5F1BC
> +#define _PIPEDMC_DCB_VBLANK_B			0x5F5BC
> +#define _PIPEDMC_DCB_VBLANK_C			0x5F9BC
> +#define _PIPEDMC_DCB_VBLANK_D			0x5FDBC
> +#define _PIPEDMC_DCB_VBLANK_E			0x551BC
> +#define _PIPEDMC_DCB_VBLANK_F			0x555BC
> +#define PIPEDMC_DCB_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VBLANK_A)
> +
> +#define _PIPEDMC_DCB_SLOPE_A			0x5F1B8
> +#define _PIPEDMC_DCB_SLOPE_B			0x5F5B8
> +#define _PIPEDMC_DCB_SLOPE_C			0x5F9B8
> +#define _PIPEDMC_DCB_SLOPE_D			0x5FDB8
> +#define _PIPEDMC_DCB_SLOPE_E			0x551B8
> +#define _PIPEDMC_DCB_SLOPE_F			0x555B8
> +#define PIPEDMC_DCB_SLOPE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_SLOPE_A)
> +
> +#define _PIPEDMC_DCB_GUARDBAND_A		0x5F1B4
> +#define _PIPEDMC_DCB_GUARDBAND_B		0x5F5B4
> +#define _PIPEDMC_DCB_GUARDBAND_C		0x5F9B4
> +#define _PIPEDMC_DCB_GUARDBAND_D		0x5FDB4
> +#define _PIPEDMC_DCB_GUARDBAND_E		0x551B4
> +#define _PIPEDMC_DCB_GUARDBAND_F		0x555B4
> +#define PIPEDMC_DCB_GUARDBAND(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _PIPEDMC_DCB_GUARDBAND_A)
> +
> +#define _PIPEDMC_DCB_MAX_INCREASE_A			0x5F1AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_B			0x5F5AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_C			0x5F9AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_D			0x5FDAC
> +#define _PIPEDMC_DCB_MAX_INCREASE_E			0x551AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_F			0x555AC
> +#define PIPEDMC_DCB_MAX_INCREASE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _PIPEDMC_DCB_MAX_INCREASE_A)
> +
> +#define _PIPEDMC_DCB_MAX_DECREASE_A			0x5F1B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_B			0x5F5B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_C			0x5F9B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_D			0x5FDB0
> +#define _PIPEDMC_DCB_MAX_DECREASE_E			0x551B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_F			0x555B0
> +#define PIPEDMC_DCB_MAX_DECREASE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _PIPEDMC_DCB_MAX_DECREASE_A)
> +
> +#define _PIPEDMC_DCB_VMIN_A			0x5F1A4
> +#define _PIPEDMC_DCB_VMIN_B			0x5F5A4
> +#define _PIPEDMC_DCB_VMIN_C			0x5F9A4
> +#define _PIPEDMC_DCB_VMIN_D			0x5FDA4
> +#define _PIPEDMC_DCB_VMIN_E			0x551A4
> +#define _PIPEDMC_DCB_VMIN_F			0x555A4
> +#define PIPEDMC_DCB_VMIN(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMIN_A)
> +
> +#define _PIPEDMC_DCB_VMAX_A			0x5F1A8
> +#define _PIPEDMC_DCB_VMAX_B			0x5F5A8
> +#define _PIPEDMC_DCB_VMAX_C			0x5F9A8
> +#define _PIPEDMC_DCB_VMAX_D			0x5FDA8
> +#define _PIPEDMC_DCB_VMAX_E			0x551A8
> +#define _PIPEDMC_DCB_VMAX_F			0x555A8
> +#define PIPEDMC_DCB_VMAX(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMAX_A)
> +
>   #endif /* __INTEL_DMC_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 1c0eaa08927b..c4fb78d86ab0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -10,6 +10,7 @@
>   #include "intel_de.h"
>   #include "intel_display_types.h"
>   #include "intel_dp.h"
> +#include "intel_dmc_regs.h"
>   #include "intel_vrr.h"
>   #include "intel_vrr_regs.h"
>   
> @@ -601,6 +602,23 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>   		}
>   	}
> +
> +	if (crtc_state->vrr.dc_balance.enable && HAS_DC_BALANCE(display)) {
> +		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.vmin - 1);
> +		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.vmax - 1);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.max_increase);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.max_decrease);
> +		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.guardband);
> +		intel_de_write(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.slope);
> +		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.vblank_target);
> +	}
>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -611,6 +629,17 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   	if (!old_crtc_state->vrr.enable)
>   		return;
>   
> +	if (old_crtc_state->vrr.dc_balance.enable && HAS_DC_BALANCE(display)) {
> +		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder), 0);
> +	}
> +
>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   			       trans_vrr_ctl(old_crtc_state));
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 2214c10d4084..2db477325c83 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -53,6 +53,16 @@
>   #define VRR_FLIPLINE_DCB_MASK			REG_GENMASK(19, 0)
>   #define VRR_VMAX_DCB_MASK			REG_GENMASK(19, 0)
>   
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604C0

These are again added in Patch#10.

I think lets have a separate patch where new members are introduced.

Regards,

Ankit

> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_E			0x6B4C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_F			0x6C4C0
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
> +
>   #define _TRANS_VRR_CTL_A			0x60420
>   #define _TRANS_VRR_CTL_B			0x61420
>   #define _TRANS_VRR_CTL_C			0x62420

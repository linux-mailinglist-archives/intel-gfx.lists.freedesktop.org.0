Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9967CAACFC5
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 23:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29DD10E352;
	Tue,  6 May 2025 21:40:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tz7+B2L8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB89610E101;
 Tue,  6 May 2025 21:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746567631; x=1778103631;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=qwBBnHeJlx4RAbKpw70bUB42yyH51nLGvBWzurFfZgM=;
 b=Tz7+B2L8LykZt/KQYmFWZ4EimmppG9bGy/9Vah9JF/ju0QR6tDSq5llc
 dgjCHV7Ltlgu+yCRX/HlrQwoLANMVGkRR62a338CrLIdVaprX5L40j8od
 tEcbjUPDgr9Z7pvjSV6v95ToKkEGgXK3P2ZEjpjsONxxz8sk1pIVkdNRH
 3HqYsDoH4NBIMMYuuL+wWS1tyT5GFP7BS0zsGlS8LuQamJsOwRlJhtpy9
 f2ARg21CsjVA4EBGFRGOX/+9pBNErA3qVakOW1Ids6p7cWBTsjQKM28K7
 Un7NJm4FWoUcLcMW5uedO+GJdCCBZ30vfV5F7vlmqK5LaIlmjwDQVgolk w==;
X-CSE-ConnectionGUID: REmsjrENSkib2UuvpVCLLA==
X-CSE-MsgGUID: lOWIn/vvT7CIoDmkuqDZhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="52074317"
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="52074317"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:40:31 -0700
X-CSE-ConnectionGUID: NVzYqOJ8SDqF2lOANXYIXg==
X-CSE-MsgGUID: EqjcdbXWRCipmEv6IhYZyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="172939484"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:40:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 14:40:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 14:40:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 14:40:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PAPO0Q+5SVP2EWVNUQZZhXStGoZMpLqLEFLRY4dzT+4pQH/MlhA+W2UhVXC6Ik2ZUbaRXQMkj88j6kRah4+LY5f81pEwuNMKr1xpTz2DdQgAr6n4sDExtfcDViyWJAiwEA9itYHLm1icZqtbhg298mWFvOzjtO//7Pvyn99s0oDyFtWyVC7tDU/mL1BWPNh3ChIaoKh5DFTUPaFn9G4dKi5iHInoXAa6PmiUVV2xSohkX/wzIeqos4TpGOx6/t0JrdEdrq8+TlsMNXSsKYt3rOGp4LegVqcFG6WovbE93lc7EmoxGdjiX946EGBvhjyr5Cf1YfaVSxOVjgBydHJI3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zM0qx31pW1SnxjmnLNNYfnXJgGsPEXU9OKQ+PlznOFE=;
 b=cUMqrAxbVIUDrQ9np1ddAF0vwPntVafLVbDDQMt0s9mBu6Cft56iHfWPhL7ny40GulZe7At63ZJ9EQeu7EvpH3WBCh2j3zBAAxrax+4T78uz4Iwm5mE1JN+BaSycJysFPWbGR+3rzUEyDBkexECH6vU9Zd5D3IxzfOkbmQEKc1zi0lWuk/3kXUK9a/2E+laWpvoC9cMiu4GAPVtp5wjsS9yVTwMkmUMPKcEDHIFo2XkgG8cI6s8i4WSJLuRxyu+RhqFRudWN3tr+ljC9j2Xa0RzFj6PEMKOcceQ9GzUA1z1jRn9daahGSpgA1z7D2MHUZC5YcKVglRaBYJx92+MjsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV3PR11MB8673.namprd11.prod.outlook.com (2603:10b6:408:21c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 21:40:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 21:40:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5d404dcd0c606d1cb11f2e09c45e151a75b5b2c6.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
 <5d404dcd0c606d1cb11f2e09c45e151a75b5b2c6.1746536745.git.jani.nikula@intel.com>
Subject: Re: [PATCH 5/8] drm/i915/irq: split out i965_display_irq_postinstall()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 6 May 2025 18:40:18 -0300
Message-ID: <174656761884.1401.17930072310930106951@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0204.namprd03.prod.outlook.com
 (2603:10b6:303:b8::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV3PR11MB8673:EE_
X-MS-Office365-Filtering-Correlation-Id: 847cf403-d185-405a-ca58-08dd8ce69b92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YktVMGc2dFFUQnRtUlZwbHVXRW5OVWRMVVpDQ2FvUzZzTElidkpUVnVsZVNK?=
 =?utf-8?B?TDhRQW5CWkJWYVlodlpXWDJpVklOZ1MxZFNKTHVtWWJHQ24rWlQ0YittNEZw?=
 =?utf-8?B?S0pSak9ibFNjL0UzRnhZY2U1S1gyclA4MDNoUzNnQU4wWW82ay9GNU5ld3k2?=
 =?utf-8?B?RW9oS2pFOG43OUY0eDFWVDY4S1pWS1A3eGFMcjZOUC9sSkk5QllENHNEQmo4?=
 =?utf-8?B?dnhFQ2xkb2g2czlZM2F2cTUyajljczc2K25qeUhKUHRoQzFoNSt2VWVyUzkr?=
 =?utf-8?B?Z1pXWGVXcnBJdzhLTU1FMWhhdStZZ2F1aXd4MlkxSjMyVlpOTHZ4cGZib1NB?=
 =?utf-8?B?UlpjQVkwOFVoOC9PL1hseG1JOXYrL2E3RWJXM1hidkYyM0VZSkZOd2MvT1Zw?=
 =?utf-8?B?ZC9pYWw5ZEMvUWd4aHg2V0x6a3pSNmNqVExjQmVZeTZFRFM5TGRndnZqVUxZ?=
 =?utf-8?B?WmN3Tm9XK3hzM2ZUNXFJaUZvc2Noamo3MVNKQ3ZVeHllS2ozVTUyOTN4MTJG?=
 =?utf-8?B?VG1kU1RUTDZvamJudUhxVElZNVlySXljTGVyelVGMm1Ga3A5dmxFU1NqeXlL?=
 =?utf-8?B?dXF2TkpDZ1dROVhBRWZrR1ZRVkU1dmVuTE0yQm5iRHp6S3Z2cVFvejhlUTAw?=
 =?utf-8?B?VE5YdnJ3T010a0FCNkMxa1VjN05jSnRJdGE4VVJjTFNVWWRORmt4RGtEZ3Vp?=
 =?utf-8?B?dGhGNE1Tczh2bmlUVnBMLzhLSlNrVkVaRUJJL29xM2N3RWVzWXlhZGFjQ3Y2?=
 =?utf-8?B?VnY3K2JpRXlDYzVqY2VRYmdTNHJ3V2dSTE9ZZXk4a3BtRWVpakIrTVg4cWdE?=
 =?utf-8?B?ZFpCQ0JTZHYrUnBYZ0tOSVB0SjhWelJsQjg5c054blZ6ODRpcTNZcDlvakxi?=
 =?utf-8?B?WHRyQlBKZ2NXMTU0T2JGUGN5SE1RVVU5emk4VGZTTFlyQVR3MElibCs1a1p4?=
 =?utf-8?B?TU5YUXl0MWVjdmVhWGcwSjlYbWxlR1ppclZtanA5WGhSYUdVejhFS0xYVXFM?=
 =?utf-8?B?UzErVGY3WGduUWVGdGFQUjYrSzc5TGF3dDdHRXRRbzRoL0lYaXVCY0VIQXVh?=
 =?utf-8?B?ZU1JeWZxYXMvbGtscXh3Y2hhTmdGYStPZnN3NGgyeTFTUWZLSDhheXIyQmt0?=
 =?utf-8?B?RWhiSmV1VExNYmN0REk5VWVKTEl5UStpbG5iYU1ubFNLbDJ1NUlSaVlNUGR5?=
 =?utf-8?B?SGZKK1QxcEhnbGRUYU9nU2lBWGUrbGRaejBSb1JoUjB3L2FIWlNvRzZscTdE?=
 =?utf-8?B?dCt1bEQvS0ttemN1UnNsVU5BaE9BbmRBbkx3Qko5amNZeXVnQS9wUnRmMUFK?=
 =?utf-8?B?aXYxMWVObXZWTlJkMFNMWDkrZFp6UGdqT3p6TTUxZWtocXlBRnR1NXgwb2w3?=
 =?utf-8?B?SWx6WWtPSHhrSU94ZFNxdXIwTUo2d2ZvdEdWQ3Q5b0dUbG9rN0pSMzBXcjJu?=
 =?utf-8?B?cWFxQ1VScFZXLzE1WkFpeDF6ZzZQVHJ3TnYxby96dFZyZThCcitNSWNMMHdB?=
 =?utf-8?B?SUZZVFJxZkZwQlY1c05OUzZiODVGZHpPVlZuKzJBQnRCRmRlUnVPeGdSMVdV?=
 =?utf-8?B?WkhSV0dMbm5FMkxmTm54Ymh5Z1JEOFYyUzFCRkVqYmpjWWtON2NYV1hlWkZI?=
 =?utf-8?B?OUlWN0pyYmVKbE5TYW43cmZtK2l4MjF1RHE5K0NaZ2hXbG9Cc0xzejNYOFQv?=
 =?utf-8?B?ZTNPTlRuUktYNUE0b2taY0tQQlJUOTQ4ZWNUbFZTekdZMnowdExzdHlZbGlX?=
 =?utf-8?B?UjVWY3AxMW9hRTNuY2p4WGZmbC9ibmFERFQvWXRaOW9JeFRwZ2RjTkFOcm1k?=
 =?utf-8?B?My9HemtzYTFIemlGNThNMFBEODdBWkZJMEpYcUhORlpZRHlETElBQkFiTHgr?=
 =?utf-8?B?ZWJzeHBpZVYvTjdYUTRleGtROHhLaFFEcmhCRUhjYytPdUpYMmZMNUdEdnox?=
 =?utf-8?Q?eUOgurKFJNw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eENsa1lXRExTQk9FeVdRdWVMQ2Z2a3FoZU1Ydmhqb2xsVHhhZ0M3WTRYSzdB?=
 =?utf-8?B?UHJXclpJVzFXbnBOUGF3Yi8xb1BzMGVQaEdvVWhXYVdXeHVzV1lTZVdQUVRa?=
 =?utf-8?B?UUYzWFRWbG5XaHRvRmoxRW1sNlhKeHQydCsrWkJEMk5PUG1lRlIzSGJrMGZ4?=
 =?utf-8?B?Y3ZuR25PZDROTXl5Z1VacEFUS1NYUTRPTFFTYzEvdVNBRk5HazRaeFpveDdh?=
 =?utf-8?B?UE9CWml4djJJejJSTkFoaVJhYVRJc2pxSWZocUJwWDdGZ21HRDdlbEErczdk?=
 =?utf-8?B?ZU9aQklKalBiN0FaMXFQK0VkUmpYdmxoVWdEUUpaVC9IVGR4SlNGWDZTQ1BY?=
 =?utf-8?B?VGErSVBrUlhUd0FkZ2NBdGdPeWhsR2NFU3dTa0hhSmFaQzU0dnhvVitRTXRo?=
 =?utf-8?B?b2ZQUzJ2TzFYUk5EUEowSEpuRm9KcXZIRUk1cGh3U1FOUVZ4R0RzMTlJSU1n?=
 =?utf-8?B?YitRd1NxWWtUYm9pUW9UTnZIeVg4U3VleUtscXRiellMREJzNzJGTXg2WSt3?=
 =?utf-8?B?SDJDM3Y3dUpRcUVjSUdma3RlRG44Vk9uaTJlMXVLUjZaS1dnMVo2cVdPdWtk?=
 =?utf-8?B?eFMrNi94ZWdQU3N4NnNDOU45em96emd2V1gxeUoreGpyeGc1aFpHR3RlNVp4?=
 =?utf-8?B?RUkxdEhVcFBqdEdnMk0zemZuRXpiU21yOVo2YjJ0dDhWK1FXZU1raThLa0ZK?=
 =?utf-8?B?bU0rU0tvblZscEVGNHdTMWVIaTlad0JTZ1RnQjZjbURGOXYzTjJIYVhPN0JR?=
 =?utf-8?B?Z1g0eWlKN2xOazRDZ0lJUFdIbk9hZE1OMWJnOFNjSzhKZ2p4OGVIVEw5OERZ?=
 =?utf-8?B?NVVldklBdDBlcEhDWDlOVWxQM0dtSk9JSS90dU9sbGlOVk5UL0Z1SWJIS0F3?=
 =?utf-8?B?ZTNrelJBNkpzVnBlWHEyWW5na0JXK0NQQXV4RnNWOWFhbS9aS2Z0WEU0ejNq?=
 =?utf-8?B?anFPVkpLSXpBMmdBNmZNM2NNQzN4eGRUL2QrUUJabVJ2VzBzcDdDbmtKYm4r?=
 =?utf-8?B?NTh0ekdIVjFwdTg0VGJ2WFhBNVhqVDlUSWN1UVA5TjdrYmpDSXVVTFhUQ29t?=
 =?utf-8?B?cEE3MTZaS0xnMXgzbWVvcjlVRmNnU1JtNXg2UmNFWkFoYksxaE1BR2I5QWNW?=
 =?utf-8?B?TjhXdGE4UWpueTVJTkNibW84Y3RBOGdGWHJLRk9qUitVRWltdXNuVVBmT1NU?=
 =?utf-8?B?TDF2K0RQNzdTc0FqbmpWRXA4d2dxU2gzYTBqTVV1WTBZR0t0OU9zdHdyQkQx?=
 =?utf-8?B?blVHVjZqSE5jN2tzN2dwbFdxOFprMHJ6UmwwMVpGWWNzWWhBMmUxdFRRZVBL?=
 =?utf-8?B?ZWVqalBZeHdwOUhPQUlkYytIZklqcHVPeDVrb0MremZoRnVCU29vQlpLb0Jy?=
 =?utf-8?B?Q3N0blh5R2haaDZieUhxM3ZwZEdCSU5FdnY3WUVHVXVxSmhxd3hNZ2lrSTV5?=
 =?utf-8?B?aFFKTVM2VzlrN09EdERwamlLYVYxQlprb01mMkNVeGp6cVVBZHFoVG04Tlh6?=
 =?utf-8?B?TGZOc1p0NCtuWDVXekZudzBxSGVPOVFLdXpsTWZuY3pEa0NXYXpxMDg0TzBW?=
 =?utf-8?B?cGNkT2M0a1J4dFZFNkpTbGJCR0UzclkvdUFweGlRN3ZoVHRCc0RvTmhkcDh0?=
 =?utf-8?B?Wm9QaTBvNXM1aTAyUWU0SnovT0paaGRBNFdJZW9kczVuZldNTFB1WkZ0SzVN?=
 =?utf-8?B?TllNTWhnMmtCL2FqVUdoVmlJbGhTR3JrYVEyUDkrY2VxNksrdGJyNVZwdVJV?=
 =?utf-8?B?eVZuVjdhdWZPdkVBeGhtNDFzWHFCSkNTUzBhRS9pSDJIWU1JQmNHM25mQzhZ?=
 =?utf-8?B?L3czUGp1cWN6YUhxWmhwOXF3UWRRZjBPZ3pHS0Q2bHRZYUFFSCtFdkk0Tm5t?=
 =?utf-8?B?UWdXWjNSYzYwMlc1U3djMFJOZTFhZVJ5K3QvVWhwRW9xaDJKSXhuVVVacVc1?=
 =?utf-8?B?TlVpVnZJZlJXdlFZY211NWdWdjFnaDVaR1NqbnlBMUdMSEt2OEo0NDQwTmVv?=
 =?utf-8?B?R2h2Y3owZWd2ZjN0Viswd0k1VFdWcFZyUUg3NE5xbStRbmtFUTZpeUpNSmk5?=
 =?utf-8?B?R1VnVlJCbkJHZGtwaEVIVGl5eSs0VmJTcFo4aW5Wd0xoeDArNmhOeVNwV2xI?=
 =?utf-8?B?MVlFMHpLU0pXTE5wQWExYzU0bEJOdW1wQTdBZkNHeGFIS0wvcjBvMzR1L01a?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 847cf403-d185-405a-ca58-08dd8ce69b92
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 21:40:23.9311 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /ERR0XVhSq1MH1/W6ujBgd3m22UAGvVen/l00RcZx9jeE0eFmjE4Qlq4uJSQtePiDLMJqwFfA+ojpiQS3PKcRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8673
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

Quoting Jani Nikula (2025-05-06 10:06:47-03:00)
>Split out i965_display_irq_postinstall() similar to other platforms.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> .../gpu/drm/i915/display/intel_display_irq.c    | 17 +++++++++++++++++
> .../gpu/drm/i915/display/intel_display_irq.h    |  1 +
> drivers/gpu/drm/i915/i915_irq.c                 | 10 +---------
> 3 files changed, 19 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 77cdd1ea5d00..989b78339aa4 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -1918,6 +1918,23 @@ void i915_display_irq_postinstall(struct intel_disp=
lay *display)
>         i915_enable_asle_pipestat(display);
> }
>=20
>+void i965_display_irq_postinstall(struct intel_display *display)
>+{
>+        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>+
>+        /*
>+         * Interrupt setup is already guaranteed to be single-threaded, t=
his is
>+         * just to make the assert_spin_locked check happy.
>+         */
>+        spin_lock_irq(&dev_priv->irq_lock);
>+        i915_enable_pipestat(display, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS=
);
>+        i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>+        i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>+        spin_unlock_irq(&dev_priv->irq_lock);
>+
>+        i915_enable_asle_pipestat(display);
>+}
>+
> static u32 vlv_error_mask(void)
> {
>         /* TODO enable other errors too? */
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gp=
u/drm/i915/display/intel_display_irq.h
>index 8fdce804c9d7..4c0ed476e568 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
>@@ -62,6 +62,7 @@ void gen8_display_irq_reset(struct intel_display *displa=
y);
> void gen11_display_irq_reset(struct intel_display *display);
>=20
> void i915_display_irq_postinstall(struct intel_display *display);
>+void i965_display_irq_postinstall(struct intel_display *display);
> void vlv_display_irq_postinstall(struct intel_display *display);
> void ilk_de_irq_postinstall(struct intel_display *display);
> void gen8_de_irq_postinstall(struct intel_display *display);
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 30c78177ae0d..95042879bec4 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -1053,15 +1053,7 @@ static void i965_irq_postinstall(struct drm_i915_pr=
ivate *dev_priv)
>=20
>         gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_m=
ask);
>=20
>-        /* Interrupt setup is already guaranteed to be single-threaded, t=
his is
>-         * just to make the assert_spin_locked check happy. */
>-        spin_lock_irq(&dev_priv->irq_lock);
>-        i915_enable_pipestat(display, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS=
);
>-        i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>-        i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>-
>-        i915_enable_asle_pipestat(display);
>+        i965_display_irq_postinstall(display);
> }
>=20
> static irqreturn_t i965_irq_handler(int irq, void *arg)
>--=20
>2.39.5
>

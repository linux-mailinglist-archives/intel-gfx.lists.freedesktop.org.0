Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE59BC33EC0
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:16:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E9010E108;
	Wed,  5 Nov 2025 04:16:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NjE2csyR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B62210E079;
 Wed,  5 Nov 2025 04:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762316160; x=1793852160;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fDM3lSuTgmyr1xk77kcLhceWnzw3iYuXJIZDDR53ywI=;
 b=NjE2csyRK0fh0vsGhX1BlYlWqKVq8HWUvR5LcvKMojcvTJwF1HoqwEyx
 GvCkyn1FDn4NNQXRt6eX5r0+hhpM4XKXKwRn6T07nA62aaXxgkb0MqTVs
 gwQhCkZf8So5wN4TON8zUng7YNvPe0gnftXY4WlpHclSXoExKwFyJdY0m
 KbeIrDzonYy5ujZgqYpyijm6SUe+mAYED5JRQBgJB7OPbAc6HmpDbF/do
 N63NktSRAPKNd90KgGDZJeP2DoIHgdOCH1dwjSbOc5idKnW599ChbTIbq
 mc1n1a3TutvbUe4u9EgPi/luu7hx4hMQWJHVhzrf9H7ghfkc5QamgZP8X A==;
X-CSE-ConnectionGUID: T9pFySYwS3GHWkhToyS7Jg==
X-CSE-MsgGUID: W704rPYWREqy2n5kP4JYbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="75873014"
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="75873014"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:16:00 -0800
X-CSE-ConnectionGUID: yS3H9KTwR8y4bxJyyIV+gg==
X-CSE-MsgGUID: gSrsjgXGTryHdZheoAAt4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="217989300"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:16:00 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:15:59 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:15:59 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.25) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:15:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EqY1OenJ5O+b9ZLv7MdokGtSMqGWUg66Hz++RJNJYmrVwbWiC4fypiQFfsDf1GqM4lWnAaTddKuQnSOQfQGf+fseolIHvKULoK/cdx6OAHXYwjoCKHLVf2ZRve/meLKPmQt/kpf16BjuokxLzWm5ffR+R9chPlVnjXSvxgBafUECUvq1DWiwHXviM1M9zCJ3QRMu93e13kM2p7ztzfrHYlwt/qFhpTiloVCLRSZrssuQJqtmmJEIHO8tL6R5W6FK0niuu9IThglTjb0PcJRklSKmNhHMTnlQZgJuP27MfIxVJKy9Px3rEiOUbD4gACWHcghLVCUcP9uR9Np2ruDMoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CmD1k49JzaEh1oEE7IlOmdw1EFEmzhb/QdxgynEyAaA=;
 b=xP2VGld5quNMEeQSAUymFu3JZvFa9ktGihu+nimJI3rkvG5cghsbQ2BydtjJDmKrNqujQCD7IFMTP6/Lwa/K+MCEPd0uEwiFkTpkpb5HeghUwE6kYYwtT36UEjgzJHprqCnV/SPOqtUnM9qrfR3QbEXo/UID+AbWOdnHf8k/pUwHB+M4Bzqa/PZdexnR4TKwfcbT5mC9dh9nHBawbPUO6mMZoaBvQARMrBpBxO51WjczHkY18UAx4rVee0vSEeNYCVcChxP2vM9X20GBgiAwG/jIdHNrvW+mgeTZ/gx7wnhrfMsxOdVXEov+EaUaThaYlKGZezfSldBiWNn16KJMSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7556.namprd11.prod.outlook.com (2603:10b6:806:31f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 04:15:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:15:52 +0000
Message-ID: <f9d1b7f6-aa1e-4a7c-b98e-161e7a27641d@intel.com>
Date: Wed, 5 Nov 2025 09:45:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 02/22] drm/i915/dmc: Add pipe dmc registers and bits for
 DC Balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0251.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7556:EE_
X-MS-Office365-Filtering-Correlation-Id: c11504ca-0ffd-4f4f-fa0e-08de1c2201bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmRFa05Wdi9MSmI1U3cvZmlGZ25kREFxaXZtaUZWTDI4eEVpREhFd29qbXVo?=
 =?utf-8?B?SnQzQnpaOUtxeS82L0gybTVoOHNSQUJGOUMycFdObUpIVE5jUWNrTGR5TjNa?=
 =?utf-8?B?eEF4emdDVVB5MlAwekhWdnhkbG9Gc0J1SWdCREdSaVRWSjdvcy9HS3hsdkdW?=
 =?utf-8?B?VEVMNVhnejM0NHBxNUhRK1JHUkM5cWRDTWZCOS9vQko2NjRIaDBEYnd5ZDNq?=
 =?utf-8?B?eXBSM1VaL3JVRTNEUjlWV1NpMEZpaUtxUUlpUzk5a1AvaVh5Y3BtZklyR2NC?=
 =?utf-8?B?NlNmeVVJa21zVFZaNXJ5K1RqQk5KclR2YjNJUFFLeG4rVEo2VlpydFBZdGtp?=
 =?utf-8?B?RlhEWmtHTDJOajE0ekY1V0VrZG1KNHVzUHZMUURhU3cwVnpuZWFEYnl5djc4?=
 =?utf-8?B?bjdFWUZiUHREbjl5eVZEZGY1RGgrRkU5Y3pRMzhuS2FWeHVnVjBreUVQaExD?=
 =?utf-8?B?MDZUd3BGWnU4T0VRTWJGdXpkb2ZrbXJnb09WT3RSaGw1MlBnUG1FbEJHRU5N?=
 =?utf-8?B?dHBIbVFSUDA0NERKZ2ZmLy9iT0Y3akpyTzJGb1pUcU1LSmxKd1RQaGdPbDkx?=
 =?utf-8?B?OE51czlIbWVzcFFTUFJrY3NBbXFBVzZwcDhBNmZhYU8wMHcrMHZjRERvRDRU?=
 =?utf-8?B?a2NOeEtPQ1BldC95YWdyQWEzYUJobFRhTWRnRXVsOWM1MXdORitRdDdOVnAz?=
 =?utf-8?B?VzhUR2h0WndYbXdBTCtDOVFRMGpYRCsrL1JYTFVNUnRJTDlxV204LzRTYjFw?=
 =?utf-8?B?UkRPdHpYcDlDeFBzd0RzRDVBWXVYc3BwQVdEOFA0SXBBZy9sSnRGb3JhWjhB?=
 =?utf-8?B?V1UrK1BVQXhndzNGc0dBYzI4dlRKUGlRL2h2ejY3MXMzWm9JMDFXV2pLempW?=
 =?utf-8?B?SFJqem8wK21RWkFVa2tFSVAvdWtZTlhTQlB2dWpsSmhndHRQaWg3WDFXN0ZO?=
 =?utf-8?B?eXY2R1EweCtHSEc5clc0aDFoUU53UkxlY2ozbzloSnA4SW5meDFPdXBnVE1w?=
 =?utf-8?B?QUJqcUc4M3ZtNW1IY05MdzFjK2daTlhCcmF2TGduVjdrZDNYWVdidm9YYXdV?=
 =?utf-8?B?S2FQYXZ4a29iSVdmT0cyczZoSVY1Q25tTkh2WUlDTnA4bHI1bEM2dlpHUUhT?=
 =?utf-8?B?Qnorby82aUtGMlRjSU9oUXcvVTNhRWNBaXIxMjhmeUJWU2ZDR2o5NDVxeUZS?=
 =?utf-8?B?TFNvSDNyUjdGSzRzM1MvK1FGSmZsWEh6TkZyVElVZVRhblh1bHFXU29wZU9n?=
 =?utf-8?B?R2ZPZG9LdXFMYi8rZUx2bEFZVjBUOWZmbHF6Y3hvelkrSzBHWGQ4ZzhkdXds?=
 =?utf-8?B?WTZWTjhzb3NvRTNxWFBWWkRaMW5PZ0YwalcvMGJLRGp2T2pnNTZxdEdLVXJM?=
 =?utf-8?B?TkFneE9hMklQazcrNEhXNThpZTlsUkhHZnpPOUZmU2w5cWNFelNjVVBVd1Z4?=
 =?utf-8?B?MDVNb1JoL2lBYnF4eFd4cllyemNySDMrMUUyWUthVDZLWWR3SWVuZjg4VDVx?=
 =?utf-8?B?MzM2blZMVWZaWEhWYkN2Mlo4bUtBUFkyL3lWWFNVZjBMbkZjYzRRZjdyVUhW?=
 =?utf-8?B?U2ZjQkthUmRibWd4K0pCdUxZMUpVc1lBOUphWEpMVlRyV1VSRUlSVmtqR2Vr?=
 =?utf-8?B?VnZDSkpHMFdmT0FoaXl4WjdvZEJidFA2aWdsT0ZZQStLOVJjOVJUMnd2d3hT?=
 =?utf-8?B?V21JSGxIbGxNalRtNkZnakdjTkxhVlpOVXFQdk0zdm1tc3czMnd0NE4wYys2?=
 =?utf-8?B?ZzlHc3lqdTlWaklHLy9IS0xFZ3NKdWVTUXRvOXIxemRSejE5T2dCZ2NhbVZv?=
 =?utf-8?B?emp0RVRhc3dMMmxWMjdtdC9HN3lkOHZ5N1pQVEhXTVQrNkJuZ0I4OXp5RFM0?=
 =?utf-8?B?ZlZreVFiS2RPZUY2dDR3V29RTUs1cWZsN2VLWUlZVzdrRTR3OFk5VHdJVWFk?=
 =?utf-8?Q?GOm0ynCHrO2rdciKk3i0xeoU4rVLfq50?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUhSVW1yWlBrUlNNallHODVaY2daSUZVZkVnZHZEUnBiZjVTVDNMZVZCbDhC?=
 =?utf-8?B?cmRmSWJ0eUhqRTZrMUJBa1Y0Tmkrcm5uZUNjZHdsYnFpOHlJYWI1VHlaQVEz?=
 =?utf-8?B?eXI1djBkWUxwSExBRFlDZGo3cmtjV29qRmloNUZTMXE1Vll2UkNpNnRlNTRm?=
 =?utf-8?B?Q2ZFNDNOUUc2ekNnVFZOT3hCdGIxUzRteUZ2ai8wcFk3TldpTk4rSld2a3M1?=
 =?utf-8?B?Z1B1SmlueDN1ZkxvMm1UVlI0TWZ2WFRWdlFUQ1Q0azJvZytLbFEwcXJHME9T?=
 =?utf-8?B?TnhJdE12QUJFeVVudUF3Sm9aR3I0TXR3dXhzWnBCeVNpbVF6aUhVQUR5eFFm?=
 =?utf-8?B?K1FEaHBlanpxQjdmMENrTlE0aE5HSHY3a1NITVJOU0trVm5VbFk3ZUhKR2pJ?=
 =?utf-8?B?NTF2NER6c3Y0WjUyM3J6bE11WFI3SStMQTZLUGhNdmxRVHRITGdqaWc5Ty9V?=
 =?utf-8?B?QUxPQ2E5T3pJQll5ZzE0NFNIeks5d01ML1NOMThUSFZVSzZpZFpVbE5wU084?=
 =?utf-8?B?S3ZtbEVqOWNsTVRHcEFYNkRuYUxxWHM3S0t3U3dhRUZPdmNjcDNMekN5eU9O?=
 =?utf-8?B?Z3ROVlBhZlk4MmtJdUttN1o2L2hqY0dtN00wYjRVNjZWRGR2ZmlXTzE4RUE1?=
 =?utf-8?B?OHUvclhNT2gvaHNSNDNiMmNMbWJ6dlJrckpBTHUvOW53YnBlMGFVMDFDcFdj?=
 =?utf-8?B?eWFQZjlqaGJwOGpwcjlKNUJHYk9MVTBuR2xqNG4zT0xqTDJnWlhNTSthREJD?=
 =?utf-8?B?QzJoODhuNmdLN2JVMzJhaGNtcFh1Rk5RNlNveVdTaUprV3VuelNFRmxBYVAz?=
 =?utf-8?B?R0xYb2Npa1JxVjYzNTlpQklSTUFqVkNnRVV4RXVPazF1Q2tjN3U4N0I0R0VB?=
 =?utf-8?B?YmZKMFk4RzQwNXlvL0crcWZNQm4yK21OZVovRDJVZitzZHQ0L0dXQ1YzMU9m?=
 =?utf-8?B?TUFYNmlRdUd5V1YveFRrelMvNVRHS1NXMmI2SWdvOW9IOGNSZ1dteElqdkZ5?=
 =?utf-8?B?dlhZcUpZY1FRbVVjMFJGVUxGTDJZcmlHWWczYkNGaUxjUkJVWW1ab1BZU3lz?=
 =?utf-8?B?NDl3RWozdy9SM3JKbnRLZk5GTjM3RmpsQ1ErTHUyUG9rWGVuTTlCSVdOSlQ0?=
 =?utf-8?B?alVwbGxZeTV3V3d1N0RHWmZIYVVkOGJwNUZ2eG4rUVBZTlRXQi9KOVBDMkow?=
 =?utf-8?B?d1RwOG5WQXJpdUpjY2dJbmY1dDRhZzVGb0hpUUd2RnhnemtQSUN4ZWtIUk5o?=
 =?utf-8?B?Q3dRbStyNE9Ea0tiQkkrZDVXcytsbUtiTEJaQjRGdk0xSDNRWE53YnhvZXpx?=
 =?utf-8?B?YzBiWktDTUhuN1R4c3JqcGZlVklpWWxkbGdHVHM3Q25yNFBKckVkKzVUZ0xu?=
 =?utf-8?B?N1E4VkYyOU5XS3lEQUZIQWhEbEtxL0VoYkNVeVhVY3B4NmZsbGx1Z0ZHWFdH?=
 =?utf-8?B?a3VRMmNRVDNhV1h2eWk0Qmg3ZVFhUWJGOW9VcHkwVFRRV0pnSlB3dWgvdnlZ?=
 =?utf-8?B?SGd4QncwM2hHR0FMSWZyT0FiYm4zYnVnd1VYZTE2TUVCTzIxUk02YVdLMWpC?=
 =?utf-8?B?ZlFoa0xmQ3lTdGlYUW9yVDFtU3ZQdUkvWlRrQkE4YUVDOHNYZXh1Tk1JWTRk?=
 =?utf-8?B?bTI3WkRzLzhZNG05SkEwYkZrVk1MSzFjc3VVRHpNT3BsOXNOUFFPU3hNbElB?=
 =?utf-8?B?Vm9KTGIzaER6NDk1TnkrelAxNU5sdHhTWDJjVWJnODVuNU1MZ0dUQndmMnVW?=
 =?utf-8?B?Q3JwaHFUM1ZFRkVoYUVGV0h1RUNPemZiZW45bU1IUjdra0RGaFFxdkx5OWI3?=
 =?utf-8?B?MEdkTjJqdU9JYS9odkR1TTk4d0p1RW5qMy9HR1BhVzFZbzYzZTk2blFkdmJB?=
 =?utf-8?B?UHBvUHVJeUNTeHRaSXhHY1pMa2FjdklRQkJlU2R5QXNFYTdIbzlia1BFNEM0?=
 =?utf-8?B?UWxaSlc5NHgrSW0zYUF6MFlYUklWNUpFeVUybWlreXhZYmNGc3pOeFFpdEFV?=
 =?utf-8?B?RFVzWCtwb1ZST21TN3VVR0d4KzRVOURPN0ZaU2UwQ05kRGxWejBFMEtCZkhI?=
 =?utf-8?B?b1ZKanFScGJxOW8wclZwL1hKT21VcTJsUnVwOGRqTVNmemI1QjZQMkc3ejVI?=
 =?utf-8?B?OXVpVGlIVVpMRHovc25MS1UzNVdocnRyNThmd0liUi8zQWZMU0o0azNMRWZH?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c11504ca-0ffd-4f4f-fa0e-08de1c2201bc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:15:52.0160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mb0rypYJFqEHZhtuVTTlVlKrCzMpBVB/dED5XkJjlZPgMKdnMR+fRJiH3ourGZa0JZDVIc5n6IRwqXOtKS8Lryn+O1y4Ls3uuiIvnTx/jfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7556
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Add pipe dmc registers and  access bits for DC Balance params
> configuration and enablement.
>
> --v2:
> - Separate register definitions for transcoder and
> pipe dmc. (Ankit)
> - Use MMIO pipe macros instead of transcoder ones. (Ankit)
> - Remove dev_priv use. (Jani, Nikula)
>
> --v3:
> - Add all register address, from capital alphabet to small. (Ankit)
> - Add EVT CTL registers.
> - Add co-author tag.
> - Add event flag for Triggering DC Balance.
>
> --v4:
> - Add DCB Flip count and balance reset registers.
>
> Co-authored-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dmc_regs.h | 61 ++++++++++++++++++-
>   1 file changed, 60 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index c5aa49921cb9..225dbe3ac137 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -583,5 +583,64 @@ enum pipedmc_event_id {
>   /* undocumented magic DMC variables */
>   #define PTL_PIPEDMC_EXEC_TIME_LINES(start_mmioaddr) _MMIO((start_mmioaddr) + 0x6b8)
>   #define PTL_PIPEDMC_END_OF_EXEC_GB(start_mmioaddr) _MMIO((start_mmioaddr) + 0x6c0)
> -
> +#define _PIPEDMC_DCB_CTL_A			0x5f1a0
> +#define _PIPEDMC_DCB_CTL_B			0x5f5a0
> +#define PIPEDMC_DCB_CTL(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_CTL_A,\
> +							   _PIPEDMC_DCB_CTL_B)
> +#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)


Missed to point this out earlier, quoting fromi915_reg.h :

Indent the register content macros using two extra spaces between 
``#define`` and the macro name.


> +
> +#define _PIPEDMC_DCB_VBLANK_A			0x5f1bc
> +#define _PIPEDMC_DCB_VBLANK_B			0x5f5bc
> +#define PIPEDMC_DCB_VBLANK(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_VBLANK_A,\
> +							   _PIPEDMC_DCB_VBLANK_B)
> +
> +#define _PIPEDMC_DCB_SLOPE_A			0x5f1b8
> +#define _PIPEDMC_DCB_SLOPE_B			0x5f5b8
> +#define PIPEDMC_DCB_SLOPE(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_SLOPE_A,\
> +							   _PIPEDMC_DCB_SLOPE_B)
> +
> +#define _PIPEDMC_DCB_GUARDBAND_A		0x5f1b4
> +#define _PIPEDMC_DCB_GUARDBAND_B		0x5f5b4
> +#define PIPEDMC_DCB_GUARDBAND(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_GUARDBAND_A,\
> +							   _PIPEDMC_DCB_GUARDBAND_B)
> +
> +#define _PIPEDMC_DCB_MAX_INCREASE_A		0x5f1ac
> +#define _PIPEDMC_DCB_MAX_INCREASE_B		0x5f5ac
> +#define PIPEDMC_DCB_MAX_INCREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_INCREASE_A,\
> +							   _PIPEDMC_DCB_MAX_INCREASE_B)
> +
> +#define _PIPEDMC_DCB_MAX_DECREASE_A		0x5f1b0
> +#define _PIPEDMC_DCB_MAX_DECREASE_B		0x5f5b0
> +#define PIPEDMC_DCB_MAX_DECREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_DECREASE_A,\
> +							   _PIPEDMC_DCB_MAX_DECREASE_B)
> +
> +#define _PIPEDMC_DCB_VMIN_A			0x5f1a4
> +#define _PIPEDMC_DCB_VMIN_B			0x5f5a4
> +#define PIPEDMC_DCB_VMIN(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMIN_A,\
> +							   _PIPEDMC_DCB_VMIN_B)
> +
> +#define _PIPEDMC_DCB_VMAX_A			0x5f1a8
> +#define _PIPEDMC_DCB_VMAX_B			0x5f5a8
> +#define PIPEDMC_DCB_VMAX(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMAX_A,\
> +							   _PIPEDMC_DCB_VMAX_B)
> +
> +#define _PIPEDMC_DCB_DEBUG_A			0x5f1c0
> +#define _PIPEDMC_DCB_DEBUG_B			0x5f5c0
> +#define PIPEDMC_DCB_DEBUG(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_DCB_DEBUG_A,\
> +							   _PIPEDMC_DCB_DEBUG_B)
> +
> +#define _PIPEDMC_EVT_CTL_3_A			0x5f040
> +#define _PIPEDMC_EVT_CTL_3_B			0x5f440
> +#define PIPEDMC_EVT_CTL_3(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_EVT_CTL_3_A,\
> +							   _PIPEDMC_EVT_CTL_3_B)
> +
> +#define _PIPEDMC_DCB_FLIP_COUNT_A		0x906A4
> +#define _PIPEDMC_DCB_FLIP_COUNT_B		0x986A4
> +#define PIPEDMC_DCB_FLIP_COUNT(pipe)		_MMIO_PIPE(pipe, _PIPEDMC_EVT_CTL_3_A,\
> +							   _PIPEDMC_DCB_FLIP_COUNT_B)

This doesn’t seem to be right.


Regards,

Ankit

> +
> +#define _PIPEDMC_DCB_BALANCE_RESET_A		0x906A8
> +#define _PIPEDMC_DCB_BALANCE_RESET_B		0x986A8
> +#define PIPEDMC_DCB_BALANCE_RESET(pipe)		_MMIO_PIPE(pipe, _PIPEDMC_DCB_BALANCE_RESET_A,\
> +							   _PIPEDMC_DCB_BALANCE_RESET_B)
>   #endif /* __INTEL_DMC_REGS_H__ */

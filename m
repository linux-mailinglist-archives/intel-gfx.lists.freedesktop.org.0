Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC71A1A753
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 16:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D49110E862;
	Thu, 23 Jan 2025 15:53:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vsw+DNOk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C193810E87D;
 Thu, 23 Jan 2025 15:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737647581; x=1769183581;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=VtUDUkwDhDS8cBXz4GSJ0tig9JrVX+UssWxKCM/mUsU=;
 b=Vsw+DNOkL9XTBLN7iOxWq0Fg9lrB+zvIHHNnEAUoCVU06xYtBo9vqgAC
 acZUyibNu+3V4R/Fy7yP8vUw9BpOIyEJoz45Unajh1B0zUCsZf29srDJo
 fE32ZEVfHkNst8IxZvP0Wb0tH8bsxH37p5RIYex+v/Qrxr11RCgljSRvd
 0Nh3gVwkFFeUUpOl5cL3F2MsHjL+JduwpgpJDAk8ZxWT2sqbYT3cKaDZU
 JG1NKFtGqmDSjXcYaPeCL6hnd+PiDT9P2DWtByNZ5wVAcIka2fk4b5ksj
 Za6gwz4NoIHHapiuB80nqTD2NQvMwHhb27auit7roDV55ODg5YPLchyup A==;
X-CSE-ConnectionGUID: IucDn0EnSDeJpteBd9U58A==
X-CSE-MsgGUID: +2kADWEbTv24+r/1UaenMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="42080880"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="42080880"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 07:53:00 -0800
X-CSE-ConnectionGUID: +Nc/2QFmTZmf43dCPNFnvw==
X-CSE-MsgGUID: kuT1sVIMSr+kWnoaHUe7cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112137625"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 07:53:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 07:52:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 07:52:59 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 07:52:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mWoIuv8DjQl8fYe7tP+E1j+2XQnwoz1VtcZTuxvaLytyCZQ1lZ8XmRNHUeNoKwhxNNq9OEvo3cgQaHoTa2E5yZCNf1JCcg59lspKmSlKMtz1wvBcL4EAtGjyN7xzFuq2HXnK3Y8t0pfdYf6mqKcyhLkEtZddNn0MoYaWWpw9TDIWMnIrYXZwFWpX1nRTpcYv/VG4VaT2q4jz3ay901M7BzS7ixmBpdQdPZHtCOlkvGwr0i0hKqyJaTyJRlsbNeoqy4mAjIBFv6YYKJPnKQWTqMrS//sgj6KcrlTwzQ9uoqqagOyjwi+BlMt5zejcPc9K/5uFeJPyCWkCnq7AA484KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h7QLZhONHMNsII+C0AEbLviCWryvjwxACYjiWEnN97c=;
 b=nbOI0KXOjcmFVvphIXp6QYRN9KQ/mJFmk/z8k4IQziIvgaorazrnwuYuyXaX4SqSBN27vm+pZgkHuml7vgaDIyC37OPaARsiX5N2Uto4HGwtvjKSClaRoAFWl2BgGhYLBRWtE7Z2CslBLZQRyFAHmZCFyePJPQhHT9n2Udt7rQqQfOdOtxrTuZ4xgJLo682WndS50FV6eiDSf0NZmmxE0Lmt4MLzAls7LebyJjWDkVKO5lSFL8Fvgxn4itT4Bc1AGOylIMfgM8HlC8VVbqKbToAYbV1U+tau4XBGWOraYN8F43RQblGvnTAQkQ5qpablX+xKKbY8uYBxcpeE3PcybA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB6746.namprd11.prod.outlook.com (2603:10b6:510:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Thu, 23 Jan
 2025 15:52:29 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 15:52:29 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <540ff319476ce72f625d1c2205fbd4eb2f726333.camel@coelho.fi>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-4-gustavo.sousa@intel.com>
 <540ff319476ce72f625d1c2205fbd4eb2f726333.camel@coelho.fi>
Subject: Re: [PATCH 3/4] drm/i915/dmc_wl: Add extra_ranges debugfs
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 23 Jan 2025 12:52:23 -0300
Message-ID: <173764754350.34727.7322210679796237077@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0255.namprd03.prod.outlook.com
 (2603:10b6:303:b4::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB6746:EE_
X-MS-Office365-Filtering-Correlation-Id: 74ea7f2f-3be6-492e-671d-08dd3bc5f0ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bHNTSXU3ZndVYXBPMUpTV3gzcUorNVE0SDlCUDFtbzdLTjlOREZJZmpxNlpo?=
 =?utf-8?B?R2ZSd1NqSU9rVTA0eWUyQW9jc3lwVW1uRkh4R3E1RzRlZ092S01LVUhwKzJP?=
 =?utf-8?B?NjJpOXgxeGkyeWdIUmJPSCttc3pONzZSOENscmxDR3NQYmxWREtmbHc2eUZ3?=
 =?utf-8?B?SHpyMXVYalFjQ3l4RkdNbWxhMUkxTU5LOWlaNnh4K0JvbzUxbW1nbEp5MkR3?=
 =?utf-8?B?b3FXUDU5alM2cC9rNDIrM0RobUs0VzZPK2pJcEpVRUV1bUpVbndxa2JCVUpT?=
 =?utf-8?B?Zk03d25YMzhRbjErKytST3FRRUFmek5Rb3ZHNjYybHY2QUJJRXo0UWNXdEty?=
 =?utf-8?B?VExsU3JFYW42Mk85Yk1qZmN0dGFMclE2NENBQ0Z3ZnFsUjgveW4xNUFpYWJa?=
 =?utf-8?B?L2IyNGJVTmY3L2l6cWdMV04yeU51QXBDNDJDc2xQeG5PVlhUMU5TSDNvWEFB?=
 =?utf-8?B?UG83a3ZvYUxaTzd1U0xsdGxoSjNWekJmby9ueXdCS3ZOT3ZwcEdmMjBVd254?=
 =?utf-8?B?WWlsdXpEZm1Kd2pHMnh6YXZsTlZtWjhpdG13YzlnR3Biai9RdXFpb0MrVEdr?=
 =?utf-8?B?LzdGcFd2MHBYYUdabjZDdkU2V1ZBRU5ZVjljckJDQ3hDbE51NGcwVXZtdFVP?=
 =?utf-8?B?NVNNVWJYck01b0JtN2s1b3NNSkZSMXJqbDl3YXAzbEZ3OWhraEVQK0d4bTZV?=
 =?utf-8?B?SUEwb2N2b3FoQlFQWHIxV2ZJZGgyYk1JeEpZSXYyTjA2UXU4K3NWQnJxS01k?=
 =?utf-8?B?ZkkzeDVmRjJlQXk3dHVCOTFxOVlCajdnYm1OQndhN2pKeitTMmpaQkpPSWlm?=
 =?utf-8?B?aGQ4ZzVKSCtzNGcvYkIvRkYvYUUxYmlmVnkyYWx0eXRqV28wVWpZWC9VZjFJ?=
 =?utf-8?B?OW5MQm11QjJHK3hkekxsc1kxeGtFdm5iYnQ3d1M2VUMzRTR0TW1ubmZXRlBR?=
 =?utf-8?B?cmxNdWh6QVRkYVI4eWZNTmFKR1pNdHNHYmFCU0ppOWx5d1I3ZzhZenpzVXdp?=
 =?utf-8?B?bWxxUmYvODNnRlBkemE2ZHpvRDFFbmt6SmhlOGdydmZUMVJLNGMxUVppSVBm?=
 =?utf-8?B?Q1FpOFVUY2Rmb1pzSGFEUE1IUzBueW9XS0MwQmt1cGwyMnJkWlhRbWJ1V3ly?=
 =?utf-8?B?b3A3SWhnNGJJWDJoVXJQNlN6L1ExalRRYlZIeXZSWGZTYzdiNkRyZFBZYmRx?=
 =?utf-8?B?a1lJNXVpdEhtWEplYkhsTnNSM1NjaisrWks4SGdYS2llbzBHaFRoT3Y0dFFp?=
 =?utf-8?B?S0FhYnh4V0txVGxVWVhYNjRMM3JmVFdhOURxZEYySTdud2MyNUhvbTZ6WEVz?=
 =?utf-8?B?cGRaOW51YlhYTFhxRUUyaUJrMHVENGZxTUxZQ3V1ZG5XOGhyeFNPWEozZE5I?=
 =?utf-8?B?eEc1c1A2Z01MQ2taa004QitadlFvOHhzMmQ4NXJBdi9SN0c1R055NUQ0SWRW?=
 =?utf-8?B?aVpaRFpTTWx6TW1UQ0JFb1JmU2Z6TFBwWHc3azBzKzBFQmFPZnZnWkhxWVor?=
 =?utf-8?B?MmM2T0djelVDR2lmWGw3WXhvNEVDTFdUek1TOThxQVJOSWF0cEhXS1ZoaU5q?=
 =?utf-8?B?MEZveEFXSGd0NWZDb2tRWmRTNlhHNFZOZEt0RWtsVTg1Yy9JeFVGV0F4NkJM?=
 =?utf-8?B?VlRXL0dVR05WcEtCN2JPQWZUTEZuaWtSWDJnRnZScEEzd1VtektxSllPL2dK?=
 =?utf-8?B?Mi9yWmpTcjRJQi9oWHdiRlU4SlFHTEExa3RSVm1ubkdNRERZRGNTYXZ5VnNR?=
 =?utf-8?B?R3ZqUERwZU1PY3M2UWdEZnoydmVEeHdRSk1yWjFxMXc5Y3RMbnJ2RzV1SnpK?=
 =?utf-8?B?aUJHZCtkNVltTTVSejF2SjdCdnh0a09YQzlJNXZNenpzUU1OUFRkZ0tLbzN6?=
 =?utf-8?B?N0JZQlMrSm9aVDBRWmI0QmFrdm9iVURJR3JsSGJMK3djLzVIS2ZRcFhSYUNh?=
 =?utf-8?Q?PkmBI9NZo6Q9K9IMAoNfU/E7SLZ4JD3f?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elFUZkZhMjhPTlcyY2ZBbXpYS1U2Q0FMVDNlQXIwNVRIbjlEemFDVjRqWHdG?=
 =?utf-8?B?djNDa29DS2pIVGtIMFhVSDNvSVIySjZhUEhGWWNGWE05My93UzZleEkwU0FK?=
 =?utf-8?B?eEQrSmFORVpzU2xLSklCaW1LN0hDVEZsRWhEeEJzUEoySEp5STRMalpQdUxP?=
 =?utf-8?B?bmlOVGJ0ZnFueDNIYUJtM0g5MlFoakVLRjU4ck9VcGNLamFVODh3L0dQam1U?=
 =?utf-8?B?bkYvQ25ZQ1VLYWZUQ2JoSHFJM0dNZlF0YThMR0JxaHVaZVRMS0lwemEvb2ll?=
 =?utf-8?B?TE0vUDN1NXJPNXZUcVdDWnQ3KzluMElEMy8rZTQyUlZObUhnbkx5OGhqSmcr?=
 =?utf-8?B?b0VMbHdaZHl6SktVbmFobHoxbklDVWZXb0xpcVh5eXdDTU9WSEpMbXpadUJs?=
 =?utf-8?B?MWNYUGV1N0dRMXIvQ3FBd1VydzhzcFRmTXpwUkwxZHpWYmdDZ0RiSXhKR3ZB?=
 =?utf-8?B?RUpSMXQrdlppWTNoUTdxUUdERzNmUXJpTGZJbWl1dWlucUNkTXc4di9NLzI0?=
 =?utf-8?B?MVpka1FQZnNaa0ZkelhQMWxFeFk5akYwN0NSb2xCMFl5cGVHdmJQeHo0bjli?=
 =?utf-8?B?MVJ2dm9WanhFK2F5VUFjSENZSjhwWkprZEluMzdTdHFpcExHNDJlZG8yeGpL?=
 =?utf-8?B?cVpyWnNSSzRlV05EakpCL3RqNGJpQUNCYW12M2l5aUVtVHpacnF6UDhueHR2?=
 =?utf-8?B?VURVQ2oxZ2FiQWNpZ2NRL2tTYklORlh0Q2JEOWxtOHpmNDdwZlRjUVpiQkhy?=
 =?utf-8?B?UWdYMWZISzMrSHc1b0JrS080SzREdkJmdDYyVEc2ek9FZkRaOHNrSFp0S1c1?=
 =?utf-8?B?Qzdlck9rNVkwOTNJUGtUZFlBc2FrVzZkZkc1a2pHUk1kWFJVR2VRbkk0NnZQ?=
 =?utf-8?B?VnZjTVFSL3dXRU92L0dITC9rTDl5NmUwWXJmWGNERjNra1hsM0duSnV5b09z?=
 =?utf-8?B?ZmNlZzQ3STNKcUpPYWc2VnJQMWZoVytzL3lSRXYyWTBhSmFxUEswUXcrdm5k?=
 =?utf-8?B?ZFJUcGZtSEQyUExGTzYvTnY4T3ZHZDdIYWVhQ2xwZmN0Q0lMeUxIQXVBd1Ur?=
 =?utf-8?B?SFczYlo2c0NqTllhOTJxYUNNNFo3VW9UYSs3V01DZDNPT3VHZ3RXN3B0ZWx6?=
 =?utf-8?B?R1I5T0hLeGExQ3c5SlIwQ3dpdFVwKzNuRkdIdTBMTXFBdHJkdW5QOXh0ck5K?=
 =?utf-8?B?cUZsWVZWdUw5dllZMnl1UmdMZ0xkelViMkkrMEkraW05YUV4SWZoMjhqNEpr?=
 =?utf-8?B?VktHSmN4aFFaTmN4OExvL2dpZ2VHZHpFbEVuYStmVlZObnVrem5mYlBBMW9V?=
 =?utf-8?B?bnN3Uzd1OSthUGNPMEZYWmJJb2hNSXl0Ylo4eklwckt5WmpzZzRmeXU0ZS9S?=
 =?utf-8?B?Z24yczNDK2R5QWovU1o3NXZMeVQycys1UkRwYnpHTUJRV2JQREZ1REYvYlgv?=
 =?utf-8?B?V0dtRUVycHZmUE5MMnozUm1GYzVKc3lQTDZBcWRlaEE0OW9mYjBXeEplYThh?=
 =?utf-8?B?YXB3aGRpS1UrYlQwZjNpWmVqZytVV0d4OTlvajdjYitONmh4aWNoTzRRZWIv?=
 =?utf-8?B?N25yT01MSi9tWWpDUEdkNHFYaFNWM0dpekNCSXVRTUc1TXNHcEh4VHEwOHlw?=
 =?utf-8?B?NWN2MFQvOTQ1Z2xPMXd6TUpPaUdVZkNZRGxPZTMyYlp6aFRVOEVDMXZ6bHFB?=
 =?utf-8?B?RWNKeXFYTU1sUXVQQVd1SHVjb3psRUxnQitETENScmlGS2IzMmUzUzlsbC9y?=
 =?utf-8?B?SW5HSXYya0t6STVkYldRMkhxdTJ2NG4yN0xXT0F5SDJxTUFtbmNHZS8wTGh1?=
 =?utf-8?B?V2YyK0c0TndYYnl2Ri9MU0hLcjVRTGlGQTBXdlNFaTZORi94NUplOTFmQmh4?=
 =?utf-8?B?WktPRlRIY2UrcHpEaDVhU3ZCeUVDaUhQNmlCVnEzdDhBYVlIVVNiWVY0OWkr?=
 =?utf-8?B?blpsTkJpMWEva1hnTmhsalhKK3Z2cHVYbUNDQ3NPSWxIT0NLY25qamszRGYw?=
 =?utf-8?B?eGhnYy9QR25Jc2tMd3NlYXArRHdxdS9wNzlJTm4rVFR0WkVPb1E2dVNUZm80?=
 =?utf-8?B?Z1UyQkRFWDhaMHBvUzIyU0treTZrZ2d2M2ZxMStHSEFGbkJNRkMzV3NHdlRV?=
 =?utf-8?B?bElJVDl5WGV6WFk4Mk5wVnZmZitiOWZUcy9aTGhzemxhNWtibG5UdWJSREVB?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ea7f2f-3be6-492e-671d-08dd3bc5f0ca
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 15:52:29.4094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Kuxt+8bUxKnQ4C8u38N/8PmnDSgk8JfTiSKwv8cDHYBS42mHEarNuwcXBAOB0UeoTQUjemyhPXgxmyCP4SeIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6746
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

Quoting Luca Coelho (2025-01-22 07:19:35-03:00)
>On Fri, 2025-01-17 at 19:06 -0300, Gustavo Sousa wrote:
>> We already have a way of finding the set of untracked offsets for which
>> there has been one or more MMIO operations via the
>> "intel_dmc_wl/untracked" debugfs interface.
>>=20
>> However, in order to try adding one or more of those registers to the
>> set of tracked offsets, one would need to manually change the source
>> code and re-compile the driver.
>>=20
>> To make debugging easier, also add a "intel_dmc_wl/extra_ranges" debugfs
>> interface so that extra offsets to be tracked can be defined during
>> runtime, removing the need of re-compilation or even module reloading.
>>=20
>> With "intel_dmc_wl/untracked" and "intel_dmc_wl/extra_ranges", one could
>> even come up with a search algorithm to find missing offsets when
>> debugging a failing test case in a similar fashion to git-bisect. Such
>> an algorithm is subject for a future tool, probably implemented in
>> another repository (e.g. IGT).
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>
>Some comments below.
>
>
>[...]
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> index 41e59d775fe5..1493d296ac98 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>
>[...]
>> +bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *=
display, u32 offset)
>> +{
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        bool ret =3D false;
>> +        unsigned long flags;
>> +
>> +        spin_lock_irqsave(&dbg->lock, flags);
>> +
>> +        if (!dbg->extra_ranges)
>> +                goto out_unlock;
>> +
>> +        for (int i =3D 0; dbg->extra_ranges[i].start; i++) {
>> +                u32 end =3D dbg->extra_ranges[i].end ?: dbg->extra_rang=
es[i].start;
>> +
>> +                if (dbg->extra_ranges[i].start <=3D offset && offset <=
=3D end) {
>> +                        ret =3D true;
>> +                        goto out_unlock;
>> +                }
>> +        }
>> +
>> +out_unlock:
>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>> +
>> +        return ret;
>> +}
>
>This function is probably almost identical than the one used to check
>the hard-coded ranges, isn't it? In that case, couldn't you just pass
>the ranges array (in this case dbg->extra_ranges) to the same function?

Yeah. I thought about that when implementing this, but ended up going
with a separate implementation.

If you look at how the current series is done, there is a one-way
dependency between intel_dmc_wl_debugfs and intel_dmc_wl - the latter
depends on the former. I just didn't want to make this a circular
dependency, since the implementation is rather simple anyway...

Let me know if that convinced you :-)

>
>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/drive=
rs/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
>> index 9437c324966f..ae61217a2789 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
>> @@ -11,6 +11,11 @@
>> =20
>>  struct intel_display;
>> =20
>> +struct intel_dmc_wl_dbg_extra_range {
>> +        u32 start;
>> +        u32 end;
>> +};
>> +
>
>Why do you need another struct for this?
>

In the same spirit as with my answer above... I think of this much as an
implementation detail that would be better off not exposed in headers.

--
Gustavo Sousa

>[...]
>
>--
>Cheers,
>Luca.
>

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 689B0B29966
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 08:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9250D10E1B7;
	Mon, 18 Aug 2025 06:09:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hRGK+oix";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26BD810E1B7;
 Mon, 18 Aug 2025 06:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755497361; x=1787033361;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NjspnLk0JBGQv1BjynzFAYvprC4gTEHj/v3I3YbAAWc=;
 b=hRGK+oix5b/AAybqqZafbAcOsdI8lNkIfGlOas+I4S8086r+/pPUOByA
 cb/tkyfotJ7XxSI7lz/5rDtxRbKGEunFE8VGOIbLKfw/actkbl9RepfQb
 tq8BZ95hA41BNQjtOYmVVmZ1nhhcqFiOoBkDrgi5HPzRrgmT8lL3P+nJn
 cla7a8TZo8dSX5k5LyPluJjKmV6/uJ3zQx3xDsdxqbaUh7xHxwX1FTwrv
 Y0IdNd8IpiWhsDsBXDvx5JCJtwbToCxI6XE7TDWa+uCvEArxvogrO7dpj
 8QfQXrPggN8Hzuu014pOYWGDYmRzBl/YQSGsFS2jMOO6IiqteyO5DPybO g==;
X-CSE-ConnectionGUID: NALXiIoATwOVMyukKUwhNg==
X-CSE-MsgGUID: ytYHJ65gQXWvrQU0AOtkbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="68426114"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="68426114"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 23:09:20 -0700
X-CSE-ConnectionGUID: zqxrSG1iSUG99SrEEWa8TQ==
X-CSE-MsgGUID: d2vFb9zmREa4GBZjw16QHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="166991067"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 23:09:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 23:09:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 17 Aug 2025 23:09:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.81)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 23:09:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cQMrz8bBP2iA5zUh5lhyKLGwkikZfROe19e6boRWkTCuPF2jSjJsYhi0HynfSsU/Vm02ux5C5N8077gYFB0IOkjGJ6oQo8ODVJH8RtTGRpiOKStLiI5j3dWimCAeGZxfPYZc+Ck9kOySXWAARqkx1hwvNGmwoGwCxwUxtIRP4Mu5Zf+zgmGRcZMml21DYFw2idlKV72m/ZIswMQV3QSxDn0K2C4wROzunvIjcIaYLZMNY7VFZ9M7Nbuzc2zB3jB2VgqRlOyAeikv6Z5VPs45eDpy9uB1U8zbpFrS9TNorEgLo3ZZF4IGlNbkZOh2r7KKYP1jyCS8mCvl5LspspkEig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=09zllaGOyfvAVvO3NLrBcRQYRUJWebRzfhNa7k9NHgc=;
 b=Xi0PypeVmFDbHCTGDWHXMh7LApPjdRjMiu6dp8V5Ar+C5JlILrCVblXOeyxFie05FzfERkvrtXmTthg24u+EMRL3Z0L8sDJo7J2GOr49dzaVRSqeyogDA2unZ6Efhk1E61E/KXofjDd+ImV68CE7hP0ykk9jmRkwuMMuAYbAVk5bMu0o3UNdYa0lVSOh4jWXPhnT/BciWdV6u70j5q5ovQc3iJUtbuRw2SJsJCiQZmU2v0nzFK82er4qQpZm/c07reCRYS9kHNpoHNYs0R39mjutUD2pEe1/+1BUpeFfG9/RqIzlSlUN/8uM9dDrN4HtNi+S7Agauktq+3MiZPp3Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8210.namprd11.prod.outlook.com (2603:10b6:610:163::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 06:09:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Mon, 18 Aug 2025
 06:09:16 +0000
Message-ID: <5bf4ef6e-cafe-4f7f-aa9b-5deb80fab6ba@intel.com>
Date: Mon, 18 Aug 2025 11:39:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/12] drm/i915/display: Extract helpers to set dsc/scaler
 prefill latencies
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-5-ankit.k.nautiyal@intel.com>
 <IA1PR11MB63482583ED9773132E155F73B228A@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA1PR11MB63482583ED9773132E155F73B228A@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0114.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::32) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8210:EE_
X-MS-Office365-Filtering-Correlation-Id: dd4849d4-75fd-4167-9269-08ddde1dc2e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q0hUZWV6RTBLYmZOd0c1ekdkVlNaVytPejBBN1p3cVlzNEk3TzJrWlIwVmZs?=
 =?utf-8?B?ZldiaHhoem5DSVNOUXNoNytTakZlNW9WZ1FjeE9vZ2RIbURWYSt5TldFcE9j?=
 =?utf-8?B?dzVsSm5wSnQ3dURmQlYxWElYYTlJMm9jR0xpQkVpSUpkZEo5VHZpTERBL2lK?=
 =?utf-8?B?VS9TNDc0dVJmTFdtUklJTFBkYWlMeW51R0wrZ2lNR051d3Ywb21WNHd6dUQz?=
 =?utf-8?B?S25RKzVtb2h3T2lRYXdUZGMwa2xOY0E0ZGxxOFBGREdDN0xpTkloK3JnVlJD?=
 =?utf-8?B?RWhpV250Wm1sRGRzd0UvVHZNVUprQ0tJVGtMd09NU2NHZXN2NjJhZy81U3My?=
 =?utf-8?B?YmdCbERzZ1RXakYwY0FLTCtZdjlnd3FGdHVINU9OdzBoK0JDRUU5ZjYwNzR3?=
 =?utf-8?B?blNESEtHWThVTzhFUjFYZjI0M3kzeVVCdEcrek1ySm1KNW9EYmVIM1lNRFFU?=
 =?utf-8?B?bW43NG1qb2J1UzBhMHpoWDJKb0RZd0hIK1RicjEwZHZXM2RpYXAwVEl4RXB4?=
 =?utf-8?B?MmRFeUt0SlRtejI4SmppWEx6aXppNWptK0pxOStuQW5Ka0hsenlDR2Mwc1Uy?=
 =?utf-8?B?ZzhvOTA4M2VEY2FmRHpvZXVvRlJjTHNTRUwvOWFqTWFKbUR2eXVNeVM5Rjkw?=
 =?utf-8?B?dUpzWHdWMTJzbFBzRWw1OGJ5MHpzNENyYjNYbDZ1TUZKdHgwaytZNEkreDJr?=
 =?utf-8?B?b2hMWllhcko4MHlabXFBcFZvR2lzeDhKUk9EMUVYTDkxVFQrQmxzZUorUEdT?=
 =?utf-8?B?enB5Y1VicHVVby84TFFwL3p5WDMxeEl0VW1SaUxCb1puUEkrK1dzWG1nZy9u?=
 =?utf-8?B?K1JXNWFvWG45Tld6WmRxSkNCclpOTnJPR0pJYWo3UC90V2MrNHVtVnZWQXZz?=
 =?utf-8?B?K0JOMFM4eXNNUFA0dkVobnh0ejJmRDBMU0VHSkhhRU1BTWtLY0tIdmdyMTZK?=
 =?utf-8?B?TDlRMTd5aWdUTXpWYjUwaTNWemFUWVg4elBNaXpiVW1PeTBTaHJnaTVLSlhM?=
 =?utf-8?B?akdEb2t4QlFySHFTS2pPdHhUMEpFTnJ6TU1JdHRSZUVaNHg2K0U1VW8xS0gy?=
 =?utf-8?B?MFlISE9NZDZKY0ltQyttWXJvTUcwY2lvRFk2Wkl6bEZBZDk3REFmTlNzOTBS?=
 =?utf-8?B?bXNXSGtxQWdmQWNsNUVJQlpadHdKRDdoL3BKZDdkRXFOclF3K0lWVjh1Ry9v?=
 =?utf-8?B?bmhHU1owMlgydFBuSHpTVGgxeHlGWE0zYjlKWHVNZ0R2TW9lY3h0NUJ3aHNs?=
 =?utf-8?B?Y0F6WnhZbllqNE5LM2pCWDREQm80Myt0NnhSVTIyalNac1BIMXBDeUlFcWc1?=
 =?utf-8?B?NjdiR1RaLzZVRU42a0RFR3ZLLzFnUldlZlBBMFM0T1BkUmNDS2duVk5WQStS?=
 =?utf-8?B?VG9raTV4YW8xMlBydHJnTWtpM2R3QXNGSEJ2SXBjOGdTOFdoZndxZUdsblNY?=
 =?utf-8?B?S3BYcm5rRUpaZGlyckNaZVhaRm5WWnFJejZzUGRwNXNnSzUwNE4vckpUZkFS?=
 =?utf-8?B?NEVvWDZMSGppU0RCdmkxL0h4NnFnQVFGZXhybEppa3JrMnE3d1hEUUpESENQ?=
 =?utf-8?B?elBML2hDNXZJNTU1OUZWYWdiSDVRek1SRnF4Vnd0S3FoalgwTTVPaitUaE5C?=
 =?utf-8?B?VnI4a1FmSHBYWW9RNHdtRXBKalJRbThhb3Z1YWM1T01EaUZMT1FSL21BNnMy?=
 =?utf-8?B?TEVtdU1VY3puNjl6UmpBWEp1RzF2MElZVURxa3dNUmNia1lKeUhYd2dzaDVo?=
 =?utf-8?B?ZG94WWE4UENibXV4UXAydWhhR0dyRTUzSlpWVS94ald2UzFKaXM0OWJmTms2?=
 =?utf-8?B?amJ0KzFxNDBJRjJBY1FlWjRVVWRRaDkvYjNGYjExK1JPNlI5T0tQNEJSQ1dF?=
 =?utf-8?B?UmlCaXJ0N3Q3Z2s3YWFPTjZuNjFjRnZNLzlrSi9nWm05L1E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnR4QWxxOWIrcHNSbzF1dm55VDN2RlFKNmNvdFlTMUdBTU1yU0ZJN1JoSUdu?=
 =?utf-8?B?NXdTWE1vRjdjOVcvNXNKK2h5NXR4WTI4cUg3bmptQlNJdEJsbHUzeGcyTms3?=
 =?utf-8?B?aUxvOW5FRC9RbWxMSjFDcTNyTHZCdmU5bjZDdVE4cW9FRlBicVlyWFFJeWU1?=
 =?utf-8?B?cTVyZjBIQTRqRithK1pySHhDVkNzOU5pUk1NNnZ4UU1MK1dvTUEvdHJDTVp1?=
 =?utf-8?B?Z21FanlNV2t0Y1RMVGN0SjN1ZkF6QWgrWGtNNzdRWkFvWXQ2akQxUEdkUHUv?=
 =?utf-8?B?azdsRDFrNDEwUm9SU0RweDVkQUYwaDNXN0dueEJOMHpFTVI4THRtdHY1Z0xz?=
 =?utf-8?B?RUs0NitDWnM3RGMwRnNMQUp6elVoRm0xSzdNZG55MWR4NFE2cGNxT1Vhc3g4?=
 =?utf-8?B?bWpKbDFqQTVZUmE1U3MvY1ZhdzJWTlVMUVlQbG1yblg1OEk1TEZldUJPSGNZ?=
 =?utf-8?B?MWtWQk9ZK04xcXNob1lkUExwSHg3KzJJTXg1dnY5Y0tnSFZrM2xPL3ZNc1g4?=
 =?utf-8?B?TDdkbk1lcUhuMk92VnNHYThmVElkQ2JkMWNXODh0akZHNHJDWmpYQitoWWZr?=
 =?utf-8?B?NE1wWE84bk9OdmQ4SGd2T2czYU1GQXROc2thNVdMd3Faa3pJdE15aVJSWlY1?=
 =?utf-8?B?SWhIUUlEdmpCMjdVTU0rUTVGcmw2bnlEcXRZM3hpM054VWdrNC9RVVhhMGRF?=
 =?utf-8?B?dDFsT2d4aUdVUzMxcjZ6cUhadjZ3RzFMU1Z5RGxRWWtzWDlwNnZFQ2taYmhO?=
 =?utf-8?B?Y0dwMm1nMmtvOG1YNzMyaG9ObkwxRUZGbkdLVUNIQlZ3VXd4UHRwaENYYXBV?=
 =?utf-8?B?WXdMZGFhWE1mc202N05zcW5hZDN0WHlsVExibFpINWYzR2ZiemxrVlJya1VS?=
 =?utf-8?B?clJ5L3dIUDY3ZUVFZkNLMk1IY1dka213QlRwbm5sQ1JzVS90V0hyMVVteFZC?=
 =?utf-8?B?TjRVQS9ySTBneHFEbHVLZ0NoMS80aVNVaTl0eitBNUlNWml5M3BSekV3N0xu?=
 =?utf-8?B?NjNFTnlXS2xpam83eDMzZ2RKN2NsN1g5V05RYms5c2FPZk5QSEVYaEpVcGFt?=
 =?utf-8?B?MFByM25ranB1ZU03eVhJUEp3NUFmTEJBdU1xVlZuVXhYU1ZDZitLQ0c1Smd0?=
 =?utf-8?B?Q1pMalo1TU9JenYyU2pxMVZHM3hKK21TRHRLODhiY3pKbXZUS1RxZjBjNTJV?=
 =?utf-8?B?WWNlTkRaRGRaRmowYkkxanNrbC9tT2hRSlZGbGZjbDRBbFRLcXhzZTZwSWFJ?=
 =?utf-8?B?cXYvemNGME5zamphUnBJWGZKVCtkNmVYeUFaTTlPUXhTbmxjMzlyWFk0ZHk4?=
 =?utf-8?B?blJ4WmhsTUxGK2VobzRRdXl2aWxabVF0em9wZEwrRFJSZEs2Ty95RzJoV21a?=
 =?utf-8?B?ZHBkOHNUdmxPT0pUQ1RJVVdaMkUyNjBacVRRVEI3Uk4rRDFMdk5MRmNOM3Vk?=
 =?utf-8?B?RHJoMU5PVGM4ZEFWNTFnc3RqNkVoUjg0UVhjTHVRcU9Da3NJbmwyMjBDSWFq?=
 =?utf-8?B?SGR3dGVEMjlNVkFQMHQ1Mk5JS1U5Y0M3ZTh6UVBGa1JCM1dZc2I3eVE4WFVU?=
 =?utf-8?B?NEFsdUpFNVFZMUxaM25aY0E1R21ZampsV1R4dWVSeEdZQXQzQXFwbTZDdUhp?=
 =?utf-8?B?RjdpVEtuS1J6T0F3NzFqTEwvRGY2WGxUb0t0d0hXWE1XUGVTUmhMSDZ1dnp4?=
 =?utf-8?B?MndNc040Y1hiVG5hR0pBaDNnaGJHcE9xQTAwaEd2Q3F0S0FUYmJVS2xncnNV?=
 =?utf-8?B?M3gvRWNGZi9DQWcwQmk2SWpGVVhrM1FRM2hvazRCcE4xL0NxOEdjZ2EvdmhN?=
 =?utf-8?B?dkdEUEkrZEtJa0xqRHlqVW96WUtIcjVZb2NrQ3FKYnZjMTluZWlyQWxwRnFJ?=
 =?utf-8?B?cWpaaGhwWHp0NytZTk5DaHRnNGxpdlJRWVQydW91QXN2T2htT2ZvUC96TlVo?=
 =?utf-8?B?ZHg3ODhSem1HUWxvcjlHMWE2a3NqNTFuNDJOMDhaTWFTZkJGeENBbHppSXpS?=
 =?utf-8?B?NDQ5Z3YraFprbXpiNGZ5Uis1cktBM1B3d3dKaVUxKzJTSjlHeXZMZHNDL3BE?=
 =?utf-8?B?WUNZR1VWR3FhbTNjVFg1TGFabnpKeTZmZndaY2VkcFRZSG8rRjdWakwvT3RI?=
 =?utf-8?B?Y2JqUThqUkZEcnVDMllIYzJYUTJFRlJRK1hRei9ETGd4dzNWUlk2Mjk5KzZm?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd4849d4-75fd-4167-9269-08ddde1dc2e1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 06:09:16.4839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wFOp9sLImECx6+vT6+VCK7CvUCDbg7QoBzwrbjTfXEagT92lJMcEeDU58/BaoW3MBCWatfLTG7RlwC4IYUFISygaob2UcUk5rC49RIt233g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8210
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


On 8/11/2025 11:46 AM, Golani, Mitulkumar Ajitkumar wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: 07 August 2025 16:46
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: ville.syrjala@linux.intel.com; jani.nikula@linux.intel.com; Golani,
>> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal,
>> Ankit K <ankit.k.nautiyal@intel.com>
>> Subject: [PATCH 04/12] drm/i915/display: Extract helpers to set dsc/scaler
>> prefill latencies
>>
>> Currently dsc/scaler prefill latencies are handled during watermark
>> calculations. With the optimized guardband, we need to compute the latencies
>> to find the minimum guardband that works for most cases.
>> Extract the helpers to compute these latencies, so that they can be used while
>> computing vrr guardband.
>>
>> While at it, put declarations in reverse xmas tree order for better redability.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 34 +++++++++++++++
>> drivers/gpu/drm/i915/display/intel_display.h |  8 ++++
>> drivers/gpu/drm/i915/display/skl_watermark.c | 46 +++++++++-----------
>>   3 files changed, 63 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index c1a3a95c65f0..af4d54672d0d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -8328,3 +8328,37 @@ bool intel_scanout_needs_vtd_wa(struct
>> intel_display *display)
>>
>>   	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);  }
>> +
>> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscale, u64
>> vscale,
>> +					 int chroma_downscaling_factor,
>> +					 int cdclk_prefill_adjustment,
>> +					 int linetime)
>> +{
>> +	int scaler_prefill_latency;
>> +
>> +	scaler_prefill_latency = 4 * linetime;
>> +	if (num_scaler_users > 1)
>> +		scaler_prefill_latency += DIV_ROUND_UP_ULL((4 * linetime *
>> hscale * vscale *
>> +
>> chroma_downscaling_factor), 1000000);
>> +
>> +	scaler_prefill_latency *= cdclk_prefill_adjustment;
>> +
>> +	return scaler_prefill_latency;
>> +}
>> +
>> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale, u64
>> *vscale,
>> +				      int chroma_downscaling_factor,
>> +				      int cdclk_prefill_adjustment,
>> +				      int linetime)
>> +{
>> +	int dsc_prefill_latency;
>> +
>> +	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime *
>> +chroma_downscaling_factor, 10);
>> +
>> +	for (int i = 0; i < num_scaler_users; i++)
>> +		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency
>> * hscale[i] * vscale[i],
>> +						       1000000);
>> +	dsc_prefill_latency *= cdclk_prefill_adjustment;
>> +
>> +	return dsc_prefill_latency;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
>> b/drivers/gpu/drm/i915/display/intel_display.h
>> index 37e2ab301a80..8d094b0a8c6b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -559,5 +559,13 @@ bool assert_port_valid(struct intel_display *display,
>> enum port port);
>>
>>   bool intel_scanout_needs_vtd_wa(struct intel_display *display);  int
>> intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
>> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscale, u64
>> vscale,
>> +					 int chroma_downscaling_factor,
>> +					 int cdclk_prefill_adjustment,
>> +					 int linetime);
>> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale, u64
>> *vscale,
>> +				      int chroma_downscaling_factor,
>> +				      int cdclk_prefill_adjustment,
>> +				      int linetime);
>>
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
>> b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 97b42bbf5642..4474f987de06 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2179,11 +2179,12 @@ cdclk_prefill_adjustment(const struct
>> intel_crtc_state *crtc_state)  static int  dsc_prefill_latency(const struct
>> intel_crtc_state *crtc_state, int linetime)  {
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state-
>>> scaler_state;
>> +	int chroma_downscaling_factor =
>> +skl_scaler_chroma_downscale_factor(crtc_state);
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	const struct intel_crtc_scaler_state *scaler_state =
>> -					&crtc_state->scaler_state;
>>   	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> -	int chroma_downscaling_factor =
>> skl_scaler_chroma_downscale_factor(crtc_state);
>> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>>   	u32 dsc_prefill_latency = 0;
>>
>>   	if (!crtc_state->dsc.compression_enable || @@ -2191,18 +2192,16
>> @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>>   	    num_scaler_users > crtc->num_scalers)
>>   		return dsc_prefill_latency;
>>
>> -	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime *
>> chroma_downscaling_factor, 10);
>> -
>>   	for (int i = 0; i < num_scaler_users; i++) {
>> -		u64 hscale_k, vscale_k;
>> -
>> -		hscale_k = max(1000, mul_u32_u32(scaler_state-
>>> scalers[i].hscale, 1000) >> 16);
>> -		vscale_k = max(1000, mul_u32_u32(scaler_state-
>>> scalers[i].vscale, 1000) >> 16);
>> -		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency
>> * hscale_k * vscale_k,
>> -						       1000000);
>> +		hscale_k[i] = max(1000, mul_u32_u32(scaler_state-
>>> scalers[i].hscale, 1000) >> 16);
>> +		vscale_k[i] = max(1000, mul_u32_u32(scaler_state-
>>> scalers[i].vscale,
>> +1000) >> 16);
>>   	}
>>
>> -	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>> +	dsc_prefill_latency =
>> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k,
>> vscale_k,
>> +						  chroma_downscaling_factor,
>> +
>> cdclk_prefill_adjustment(crtc_state),
>> +						  linetime);
>>
>>   	return dsc_prefill_latency;
>>   }
>> @@ -2210,28 +2209,25 @@ dsc_prefill_latency(const struct intel_crtc_state
>> *crtc_state, int linetime)  static int  scaler_prefill_latency(const struct
>> intel_crtc_state *crtc_state, int linetime)  {
>> -	const struct intel_crtc_scaler_state *scaler_state =
>> -					&crtc_state->scaler_state;
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state-
>>> scaler_state;
>> +	int chroma_downscaling_factor =
>> +skl_scaler_chroma_downscale_factor(crtc_state);
>>   	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> +	u64 hscale_k = 1000, vscale_k = 1000;
> This could be initialized to 0 ?
>
> As further going, you are already assigning to max 1000 when even 1 scaler is being used, also  intel_display_scaler_prefill_latency we are again redundantly check for number scaler presence
>
> this could be avoided if initialised to 0 and assigning to max when scaler users presence is found ?

Makes sense. Will change this in the next version.

Regards,

Ankit


>
> also in
>>   	int scaler_prefill_latency = 0;
>>
>>   	if (!num_scaler_users)
>>   		return scaler_prefill_latency;
>>
>> -	scaler_prefill_latency = 4 * linetime;
>> -
>>   	if (num_scaler_users > 1) {
>> -		u64 hscale_k = max(1000, mul_u32_u32(scaler_state-
>>> scalers[0].hscale, 1000) >> 16);
>> -		u64 vscale_k = max(1000, mul_u32_u32(scaler_state-
>>> scalers[0].vscale, 1000) >> 16);
>> -		int chroma_downscaling_factor =
>> skl_scaler_chroma_downscale_factor(crtc_state);
>> -		int latency;
>> -
>> -		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k *
>> vscale_k *
>> -					    chroma_downscaling_factor),
>> 1000000);
>> -		scaler_prefill_latency += latency;
>> +		hscale_k = max(1000, mul_u32_u32(scaler_state-
>>> scalers[0].hscale, 1000) >> 16);
>> +		vscale_k = max(1000, mul_u32_u32(scaler_state-
>>> scalers[0].vscale,
>> +1000) >> 16);
>>   	}
>>
>> -	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>> +	scaler_prefill_latency =
>> +		intel_display_scaler_prefill_latency(num_scaler_users,
>> hscale_k, vscale_k,
>> +
>> chroma_downscaling_factor,
>> +
>> cdclk_prefill_adjustment(crtc_state),
>> +						     linetime);
>>
>>   	return scaler_prefill_latency;
>>   }
>> --
>> 2.45.2

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 981CDB0D8D6
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 14:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2085410E66B;
	Tue, 22 Jul 2025 12:03:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eM6XTaMZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5903C10E668;
 Tue, 22 Jul 2025 12:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753185819; x=1784721819;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=bWBIIi+BxhgGhxfXjXm0Ja6Yi0+3XJzW3sVQgJlKlkk=;
 b=eM6XTaMZidOYTovHNsaglFTP39rT3gTPh5g6EXGceE6wH8Fb3meQnXWT
 5eAqbUABXeH0GjrjpeWTsBghoiXPDlweCshT7OhGgj6OfJtdbkIWATenU
 yhwY1dxwWKa/jC3Pgp2wzPSYQmVm4voFB7ioja+CLfXDkRv9Am0kZoiRU
 PQiA2GB+hbauDhfvK98U/1qYldzvGXy0k4OfNRqQLSoUZgvZ8GLfOWHHb
 qlWt4YU0xpPmZxcwxIIcJE3Wt5CYZehXRQfUz1+6TEHNvNzelMbE1lbyj
 qZws9twsWEyc7pyPRFeP6CjaHkK2fOdZntgzZbmM76YxRtVR97Jq3GhAu A==;
X-CSE-ConnectionGUID: LIEiCR48QwSLkIqHnNzeSA==
X-CSE-MsgGUID: 82JJm4S6ScC7bXRG/KtOFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59246479"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59246479"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:03:39 -0700
X-CSE-ConnectionGUID: fSI1Yq97Tj2lMlMrw9nz/g==
X-CSE-MsgGUID: uk8acFhOS82CT5vyX5y2oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="158790659"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:03:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:03:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 05:03:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:03:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hvEeh2WKlN/8sAgPB1HZZIqc/eqyRro4XRf4co7qJmNr0V+cgTEsu+hzVd2UC3RF2zFZIT3Re3c1gTF5kq6HkK9r+gTZ2upRuSBURy1THms9GcoFPDt9lzUBmLAewlYdy/fRMNBoUp6UN3OFQAwi4jU/wC1n8VtFLVNbMegGabdLKQnxrp5X94aw5Q+EirMH6e9X2twmSHN+zKhL55f3qpTvOQ+awBnEB2leo9at4m+Gq8qt4h56LxQMXR8Uc5hpYAH3TEFXdSlWi/AOf7R3PrIwtf3qAupy7BKHR7VU39pElNG9dknSF+9FhZw+im8CE2u3v/5lr9ji3a68/CsjrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gIpbrIDygRdWWGEZtaLtDpQNT2+oyLV7cxQXA4TWaec=;
 b=JgYrZsUiQ1Ns/fuSel10o/YQPP9tmDa7rKgWk7UQb4OtvL9QwGDpJmJzjoGWHegiThu6pGUg6ga4pogysXj0O89EoQT3ybi2AwixGGL0+AFH4p1dxkDGeXmeDFFHAWud9s7yrFn2fdZVqjhg51X+RoA5e9Sg6civW8LKQo3+55Bqgzh61TFubRrw1ExQXgpuS+9aUWPtqvCAbbpVTfwGB1pB6O8kOJHoon2g/8qRhX1Bp1VjXmhAnAXIs7ugsd0kMQ//V9LR7IXMMTOW1JPeTVRjQcfDShR1A4KeaLE/hlVZRN1lLVw21Uj5kLoK+5+EVF9mLX6TrPrwKlbfliikAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM3PPF96964A2A1.namprd11.prod.outlook.com (2603:10b6:f:fc00::f3b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 22 Jul
 2025 12:02:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8943.028; Tue, 22 Jul 2025
 12:02:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250722101317.1728499-4-jouni.hogander@intel.com>
References: <20250722101317.1728499-1-jouni.hogander@intel.com>
 <20250722101317.1728499-4-jouni.hogander@intel.com>
Subject: Re: [PATCH v2 3/4] drm/i915/display: Ensure phy is accessible on lfps
 configuration
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>
To: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Jul 2025 09:02:52 -0300
Message-ID: <175318577220.16862.2028013585552972542@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P223CA0018.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::23) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM3PPF96964A2A1:EE_
X-MS-Office365-Filtering-Correlation-Id: d73b04a9-fe32-4488-5fb6-08ddc917b2a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cDhjSG5WOG9MSFNEZXJJZ0twTVZ5NGMwaTNBVWVYcG1CMUVzMi9yWm80Y1B2?=
 =?utf-8?B?WVVSMnJqM3V6SUYwRnJTSVQzMUhJdDZuMEhPS2JPQTNjME1nZWU0eTdtU0JG?=
 =?utf-8?B?RTR4b0V0WGxUY1dMeVNQb1ZLb3EweUZIQXNWcjBacWxjQk1yZHNSZ3VncTVj?=
 =?utf-8?B?elJ1d3llSG1PenE3bXFYYjVGZ213MWROVXI1SUcyeXJFaFJTT2hyUGVvYWFt?=
 =?utf-8?B?eTJ3WWh0UFo3Z2dlZGVnKzAwOFB6NzJzbXVsMU1HenhFckRMZnpwazJ3c1BC?=
 =?utf-8?B?VE9tQTlqUUg4TDk0Yjl2aHVJdThuenFnNmhnUFovcGVla2RITmM1OTh6MEhO?=
 =?utf-8?B?U29jMUZKTjhKU3BzYTkyNkVuaEYvb0hUek5vdXRxbVhwOWVIM3I0V1NUWnFV?=
 =?utf-8?B?RlNCdmhiTE8ycSthRS9RZEF5cU13TzFZM28zMzMxcWFWUjdKZWE0a1lvR3p6?=
 =?utf-8?B?bDhpT3drellYekhhdXU0aTVjM1gvWGFqbFVVdWxIdzk1MmJqN1BpT1ZJRzBG?=
 =?utf-8?B?a3NSWUlCOElsSkpIY01HdFd1TnZzV0QvUGFSRDlOYWtvbVllaEJ1cXZZQlVU?=
 =?utf-8?B?MW02RTF5WWxmelNjb3lvUUJ3dVRWM0RTbWEza1hVbU52dkZzcFRkbDh5YWRx?=
 =?utf-8?B?Vk84YUJkV2VaNVBMdGpvdlZtNlQzU3I0NTZhRko1d0RzaW0xQjE2blM4Y0dp?=
 =?utf-8?B?UjFMWjRFQStka2pReEd5SlJBVUdNSXNCNnF0aExQRFZqbTl5V3ZkcTRHQ2FE?=
 =?utf-8?B?K0FYdnFHd0gvUDdQRW5jdmFKemwwcHZEUzBaTElwbkNHdWU1eWhzS3FaMzhM?=
 =?utf-8?B?Zk5hbU5vcTR6blJDMlk4UlkxbHhZWDB2eGsrRFVTV3VWM2cvaGpyZzc2czEw?=
 =?utf-8?B?OURiUTFMUnFVYTgvSjI1b05YWUJuRXgrem11blRUWlNsd3BvelczU0RGZ3JE?=
 =?utf-8?B?VmdEVjZtTHhtRngxei90VkloOGVneG9WYUNQK0t2MzJFVUNseHFVRVVMaWd1?=
 =?utf-8?B?c3B3a3RIcU12Z0JlTGQxT2xXVjRHK1RiYWxhTkJSM3lwWCtDMVJ3bmcyd1dG?=
 =?utf-8?B?bkRIYTdrcGNCbzRDTkRFeFBZbTJoTnRNV2Izd21BY2ZCVjd2aTZ6TXdIUVdl?=
 =?utf-8?B?UHpQdnROckxrMWNpTWlEeHFjbU9TZFliVWljMjFvL1NZbGFYbSszamdOYTBs?=
 =?utf-8?B?SnE3USt5TGQ5eHVIc3JtNWl2NFhuWVZYc3dxcklHZ0NXQURGeGlCWlNpdUZa?=
 =?utf-8?B?dUlYNTVGMHhKdWdOVnNURFFhbVorTWkrdkUvMURCMnVJN2FNRHQ2dFA5b3pS?=
 =?utf-8?B?aURqT2l3Wkg1ZUFBSnlEVDBkMlF5dExlaHYrOE1sc1ZWSkxqbDJqcWc2bFJ2?=
 =?utf-8?B?ODRUUFZRWDM1MXJGcGhXNUlGRmdKdDhNdDNERDk5MVp3OW12cVpCUEV2NmJY?=
 =?utf-8?B?eElEWmY5VG1zYmxoak5WSmhaa2xYbTduRzdTN2h5Q2Y0Qk5ycFF4YWowME13?=
 =?utf-8?B?UTM4eUdaWVYvQ0E0YU9MYWRtZktWTTBSR05HeC9FbjRGMWFLWnd3eVpzb3Nq?=
 =?utf-8?B?dFQycWZZZ1ZVMzlPMkhYSHJ4bkV0UWlOdXJZQ3B0cEp4dUFQWGdzM2VFOEUr?=
 =?utf-8?B?SllIZmk3Uml0N0s4Zm0vcjkxM2FleVR3SmYxUGkzcDB4R3hhQ2o3cDRXQndH?=
 =?utf-8?B?NlNpRWdoMWRydWpjWEpyZWQ4QmY5TUxhUnlHUGxETXptS1hBOUM5RTdoakVY?=
 =?utf-8?B?S1NwM2RnK3VBVngvM045TElJZXBRRTkvRVp4ZDVNYWlyaytCaDQwNjV1cng4?=
 =?utf-8?B?aHNEZmxjc3pubmFOdE0vWWJBdkpPbHdwR256YUxaWlRpZkttN2pVTDBQZFVE?=
 =?utf-8?B?ejBTcW1PaTNNS2RYUks1WkVIaE1oWGRuYjRhOWkwNWR4UXdZeFMwaXZzbWsr?=
 =?utf-8?B?OXRLc2dyYXFsc0oySDBuVlI1WUVycjZRY3QwYkNnYmRGSnVGQVVMMGZRMTVH?=
 =?utf-8?B?YTVoRHdHU1hBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFk3SUMrSWtmYzE4QlB3K3pqcXFwTzFDRTUyNTl2aklpdC84TlE4alFtRWY3?=
 =?utf-8?B?TVlqMDU1UFRsNGFIUUpKclM1VGtSWkRNZWdYQUdyS0Y1VDJZREdXRTdkTFZC?=
 =?utf-8?B?Rzd0V3hsZFEvR0hoc2NvUFFLM0tOcnlFVGNyMjdOaUVqUGZmQSt4cEJBVlVB?=
 =?utf-8?B?MlBMTVRndUZMM21VYVJ3VVRTN2dNOHVhRVQvdnF0SHpENkUvR3YzMEpWTHho?=
 =?utf-8?B?NWlMTWY5V1VKM1FiTFdkTThGWm9GYkdKSG1qSGhLTUsrVFJGVk9wcXRuVVBk?=
 =?utf-8?B?aGR4cjV2elNrendKN3RWQ2FYU0NaTFlwa29LdVhZK3lmMlZXMGFVLzUvQXV3?=
 =?utf-8?B?aVM1ek1xeCt0enJrbi9TTjR4bUZTMTBMUmRxYXg0ZGNhaXIzY3RYV2h0a3R1?=
 =?utf-8?B?Nk8vcVgwazRZTENaa1V5dys0d1VyV1FUUEdrZ1A0QzA4ZEwxekI4aWcwaS9J?=
 =?utf-8?B?MGZ6ZHEyTmQ4QkdvNEtDWlpwdTJINzFhZHg0NkNqQ3NCU3dSSXpUbHlTZ09Y?=
 =?utf-8?B?aXF3MVNMR3VybEdIa1VoNUdxeWQ2SDU4amdXSlJOc1NkNE8vUlF1S3FiQWhK?=
 =?utf-8?B?UW11SmhCOTN1b1pXT0dXRUlsczlYMGYvQVM5S3JjRVVaeHhOQnVrU3NXVWxW?=
 =?utf-8?B?T1FtUkc1RHZ0aFdaYmFiOFJ5ZHpFVW1Bb0dEMmtIUUI4SyttQTUyL0owMGda?=
 =?utf-8?B?UG1oQUs5YU9SVG1jNzNWNXEzV3NHUlNYS3VwZmtFUXg1bEEySjJSWkNWazdv?=
 =?utf-8?B?NnlCb29VWDdOOTRKN1dHQXRBS3p4eXRGVDk2MW9GQWVMOFhGa2dFR01ZWHg1?=
 =?utf-8?B?S1lYaWp4OHhPbWduWUtxQzhHd1V4Qyt0YU9NMlQveEtvOWgxY01kTHRiRjhL?=
 =?utf-8?B?Q1BxOU5BSHhNT3BwSVRFUjhkV2RHOCtmdWxCMlJSQmdic0lINXl6V1hWUzNI?=
 =?utf-8?B?NGlPZ3pPYWFYYXVzTHBjRkM0dmFPc3VlalNXd20rdHVPVXQ1Rm1KMy9NaGNV?=
 =?utf-8?B?TFBNcnA3UHBDdVU5VFVidzhPUkJBWjROQWdFWFZKSzZHYzJUMnFXSFlBUktv?=
 =?utf-8?B?UU1YTllydjJVS2dkQlVJeVVJSExXZTFod0ZMSXVoTXZuTVkrSUZLcGdjR2JF?=
 =?utf-8?B?STFnd3JlNXd0dUhadTlLdnp3QWd3WU1hRy9JWDcyQURudytmdG9hVzB2b3pv?=
 =?utf-8?B?dzlJQm5HcFN4dkpVNG90Qk5ONm5OcUlWbEtvVEpEdDNTci9FcUhEUThaS1FW?=
 =?utf-8?B?YWlUS0l5V1o5V0h6dFdDOE5TRC9MU09qK1dEVkdKVk5HeWdpaXp3MWtKQ29Q?=
 =?utf-8?B?OFlNSDJabHMwZC9SQmQ5eUJYZXJnZlFqMlVWdVA3QVRTeFhzUFlmWUZHMWFF?=
 =?utf-8?B?ZW1XSTBCTFZUaEFYek9OOWVIa1R1ZHVLS1A1RldXeEd0VEwzUERnMHpNQkZK?=
 =?utf-8?B?UFB2c1IxelptUzlvQWl4MzdSOEJiY3ZWODlsZFVZbjdCb29DbWFlYTYyaUZP?=
 =?utf-8?B?V2ZHdGJ2VEYzWlpLQ1k0WmdKdEJRUXZURmhwRWUwVzQ4Mloybms0QjE5T0do?=
 =?utf-8?B?c0xNc3lJa2kvL0hmMjgvWEd6bkhLNlAwcEFqUDdWM2VLeEU3NUlDS2ZxbW8w?=
 =?utf-8?B?NFBJY0lMcFlaR2pHL3NpWXRWS01IeTR4bVpBOGhiWHkvZEJ1MFFNRzZMcDh5?=
 =?utf-8?B?cVU3QThtZ2NLNjF2UEZyeERwWG1nc1NUTFRUTGVwMXNxaEdZSWYwRFFWaDhU?=
 =?utf-8?B?dUt6N1ovOUdSbXRpallJOWx1eisxV0VNd25xeWtYZkExS0RMR0lSMktBSnho?=
 =?utf-8?B?ZG1neE9uMnoyQUcvM3pXMXpqTUNiZ0NReVhTdWM3TE02bXVJbERXNzFuQWxT?=
 =?utf-8?B?OVpKN1pZOHAyeXNxb0Q1UllhQzJrNkZ4WGladjM5eldHSE9tWkFqOUpuZlRr?=
 =?utf-8?B?YURZc1VFeTRYRFpDcHI5YTVqc2hzVVJCQldoSHpaQTVQTFFLOThrTVRtQi9o?=
 =?utf-8?B?Y1lSV3FnS2I4UFhPYUd5S1FFZTZUcHkxWGJndlVXZ20zREFwczd4R3FCd1Fa?=
 =?utf-8?B?ZU9iUzAxR1p0VmFyT0tESVRWR20yZy93TEdwZnZVUWU3WEtQQTdVLy9xMkhy?=
 =?utf-8?B?d1FvMkVCM0d5djluS0NILzVldUdPU3dCQnJaT3F4cjhDZXEvdVhDbDk0S0dx?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d73b04a9-fe32-4488-5fb6-08ddc917b2a4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 12:02:57.6265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2zNcvmFilQXYCgHLMwnhW/s8SPG3zwY+o7Tyy5etH4BwdA+qY18j/l6HGuZGRFWsjLNG9lH4cx/wXRBTDk44xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF96964A2A1
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

Quoting Jouni H=C3=B6gander (2025-07-22 07:13:16-03:00)
>Ensure phy is accessible on lfps configuration by adding
>intel_cx0_phy_transaction_begin/end around it.
>
>Fixes: 9dc619680de4 ("drm/i915/display: Add function to configure LFPS sen=
ding")
>Suggested-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++++
> 1 file changed, 6 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 2993dabdbee6..a203937d66db 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3239,6 +3239,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encode=
r *encoder,
>                                  const struct intel_crtc_state *crtc_stat=
e)
> {
>         struct intel_display *display =3D to_intel_display(encoder);
>+        intel_wakeref_t wakeref;
>         int i;
>         u8 owned_lane_mask;
>=20
>@@ -3247,6 +3248,9 @@ void intel_lnl_mac_transmit_lfps(struct intel_encode=
r *encoder,
>                 return;
>=20
>         owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
>+
>+        wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>+
>         for (i =3D 0; i < 4; i++) {
>                 int tx =3D i % 2 + 1;
>                 u8 lane_mask =3D i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE=
1;
>@@ -3258,6 +3262,8 @@ void intel_lnl_mac_transmit_lfps(struct intel_encode=
r *encoder,
>                               CONTROL0_MAC_TRANSMIT_LFPS,
>                               CONTROL0_MAC_TRANSMIT_LFPS, MB_WRITE_COMMIT=
TED);
>         }
>+
>+        intel_cx0_phy_transaction_end(encoder, wakeref);
> }
>=20
> static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
>--=20
>2.43.0
>

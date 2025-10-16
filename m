Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3880ABE4B31
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 18:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 237F910EA55;
	Thu, 16 Oct 2025 16:56:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yn1oySkV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05EF410EA55;
 Thu, 16 Oct 2025 16:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760633802; x=1792169802;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=sM99zdjWqgZ3yZFUzfXuV12HAyE1NAZ+uYCBuox38p4=;
 b=Yn1oySkV/TdF/XA8h9bcJLyBukbju95mJ9VdTJzsIs046bniVz96Bner
 alvVbyL5eAj2CBmhWfrRcwm+4FlaRnPOygXB1J7fRgs6jZkOaGTJOyL78
 xnJKdsBj0KkejiFojRpVdrFIOVg9UGdAEZQft63OD7BdNtuvExxq9z6fG
 Y1xAsN9kjrYAYIK3+H9A/MkG2ziiGIHrYhuewyPwnIEPf9le1+z7l2aa1
 usRbwEcfyBrMgreAc4ZVZkbF4e9OUQmkvdYOMYQ/tvXpe9xAzjZPAvccZ
 jStRFU9slC/8x5h9LzKdiLiVWHpU2OrBwk20CY2Ax7Dcftqi+3+gfSNHN g==;
X-CSE-ConnectionGUID: EK3iHLtoRZioD8Hcf4e/MA==
X-CSE-MsgGUID: PJwI0W5JQICqIgDoNbtetQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="80471931"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="80471931"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 09:56:41 -0700
X-CSE-ConnectionGUID: AuKajMzuT8W+HV31XuYXPw==
X-CSE-MsgGUID: W1f7yJc8RJWKsjFbuMgDBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182437320"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 09:56:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 09:56:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 09:56:41 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.58) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 09:56:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GrZX69n8n4OnSo9ilhfGfAaTiJNh/rx2+9zk6+FaLAHG0WxOitYsLCsZQsiMzGhVcDaGrjkDHQt0Cc62rNe+YUgWB9DYf/NQI8D9d6KNj8W1ndsf4h50QyMVtDqWnYEBqI78H8s7aU4ufjCasgwJobWnHMHJXWHoqllvJILD2Xac4zLvNFrSvob0mpb1yc/nRTMnNYNvvLSDQw6YL+tLJDlExN17Pa3A6SZ3MBQa2MkXM7yO2zY1nWbvkKPlmzK/MASk+OUEDVkQTLikuCPUevTjSVdMuLf0pnw96PGmhjsiLOTFGZUJpqc8a6uz2qIgMQDEULnyL02V25ZMtyJc+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sM99zdjWqgZ3yZFUzfXuV12HAyE1NAZ+uYCBuox38p4=;
 b=CnDnOlLycX80leFCvy750d7JPOcPjIdYr+GQX8Alr8ccBpeRKlEPUwqzNvp1NF+aXCO0Yl0H5aVEJDk2rj/xJe8bD4l2qrGJIuySiP7eKCkZFhhfVW3ZFBuV8jeR6qKjXV1Vzi1d1qM50/NzAmyaMmzvXZ1JCQAwVSkO9LXeIu4kZz5G1Th65TIO8hdaELPxtl3rAoDsl+FAjYO5s6TlvRx4ekinbgg7hiyK3KNiLmTueZtqGMGhGd9BkZGl2kDWa80sbb6G1vxfT9BA1BrkOXrJLe+VMz7YdY5A1usro7I2w/HvDJUYq9wuD7T7pyWmjfelitsHm15pqwYSMFfNAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB8763.namprd11.prod.outlook.com (2603:10b6:8:1bb::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.13; Thu, 16 Oct 2025 16:56:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 16:56:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v2 3/7] drm/i915/dp: Export helper to determine if FEC on
 non-UHBR links is required
Thread-Topic: [PATCH v2 3/7] drm/i915/dp: Export helper to determine if FEC on
 non-UHBR links is required
Thread-Index: AQHcPfCPOcdmabUN+ka2SLx7q8MpW7TE/8OA
Date: Thu, 16 Oct 2025 16:56:32 +0000
Message-ID: <55a897534e3d0ab51ebdbc56a08281e20a30e937.camel@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <20251015161934.262108-4-imre.deak@intel.com>
In-Reply-To: <20251015161934.262108-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB8763:EE_
x-ms-office365-filtering-correlation-id: b286cd2d-164e-4f42-ff1d-08de0cd4f59b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?UHBwWWhneXR2ZzJyeVJtUHJTWnNhRmZUemNrV1lmdnUzZG9EU1AzV1c5TDZQ?=
 =?utf-8?B?RnFDN3JxUk5iak5VbkNQTCtaUURKcDdzTEczOUwwdnVScml6S3FVRlpQZ0d6?=
 =?utf-8?B?SUR2dXM5M0xIRG5mdWt1cStad2pPZGFNZlZDWVJiUXIwMVFLTllXZHJzVVhq?=
 =?utf-8?B?MFcvVlF1NXZ2WlFzOVVtQVBnN1NoN0wxVE1HZ0cxb2NWQXlmZUdVVE1XbExl?=
 =?utf-8?B?Skxzcjg2QUZjMWtBM1dpNlYzczFsREs4R25KcHdkd2lrVEdkTDJxZUxUcEJo?=
 =?utf-8?B?WVJQODlkNEl2aUxiTDB0VjMrUkowZEZhZ3FvSzZHS1AxOWN3MG9NS25FcnFB?=
 =?utf-8?B?VlJiQ0JDMHhMdXVZL05iSHVvR2tJM2VGeTRZY0ZtUkkwRUNXZ2RUU0VyM28z?=
 =?utf-8?B?QVhuWEZhUzBtaEZoL1NJVjZSekxiUWhJTWRRNTh5Wll6T1ltcngwVEdoSkF5?=
 =?utf-8?B?SGllYXYyclZEZm5OUmM5NTNXUTNzRVJxVlFCeER5UVRWYnNHVHFmbXBNb1VJ?=
 =?utf-8?B?WFdLWUdwSGtOUytSQkxRT3pJTGtlV3RIWnJrNG5HWHY0RHZOMkluWUxseU5O?=
 =?utf-8?B?K1h0L0JPRU8vVFFRUUkzYmtxNEFtRVZkVEJ2Rmx6SzBNOUh3TW1taFpDaGtE?=
 =?utf-8?B?RGpDT3k1bTFsTGpVdkdnUGFudnovRHVNb1MvcVl3aXRWWmhKL1VLTlpBOUtk?=
 =?utf-8?B?QmJxUFdBVTA1eUlqV0J0ZHIyRHllTnVxZU9TdzFaV0tsekdtTUt4SzRDbVg5?=
 =?utf-8?B?SHRLVnFjUGhLaEM1MWMzMWZuTTFVRmEyRTIrVFZCVE9FRVpnK21BL1FvQjVW?=
 =?utf-8?B?OGFLOGE2UndvUW5lcTdQVjg0Q0MybmhIemNHMFphZmUrcFkxamg3elZxY28z?=
 =?utf-8?B?cUNJbUJxbkhKYVNOMThReWIwS1lwZ2x2N1hVbnBQY0JKbSsyclpWb0lWUTVI?=
 =?utf-8?B?VjVBb1ZQbGIweGh0bmNLb09LQkdzekU1Yy9LV2ZIM3JjMFBlMzhKVE5RWTZG?=
 =?utf-8?B?NEVjU0pPVHlEemNxM0Q0b1RGcml0dS96SWFCUWwxa1dsK0xnNjlGR2s4Y2tr?=
 =?utf-8?B?ZTdCR1p4bUhLOE9BRWo0ckR3Rm1iYWpnTndKVTFIa0p0cW9aTUpCdndDUkhK?=
 =?utf-8?B?RWtGejJmRDk0d0FNendWZmh3dG4yYlZPWlk0RkVHcW91OEV4QUVzR2JGQlcw?=
 =?utf-8?B?dDBwUTNNSU54R2tVb0tjTlRkaUhJblNEbDdxUXlZVlMwWFBha2lTWThjYTBS?=
 =?utf-8?B?dmVaT2RuSzd5eUlWZHl6QlF1NGcyNldqY3g3am1TRTVNU2dvVDlNM2hNcTBH?=
 =?utf-8?B?UkkvWWE0RTEvNXc5SE15QmZYcDBSays5RXFPQngvcjhYNnlGWVRRVzM2dG1l?=
 =?utf-8?B?eFYxU3RxdjRUZEw2OG5vUEpzMy9XbzQ5T2o1clVoTUJHQVlqUU9xQllEZVkz?=
 =?utf-8?B?M210ZGdsTEdOUEY1d2hka00vbzhub0ZCd1RLY1hMdVR5Wlk3OTY3S0cveFhW?=
 =?utf-8?B?dkpSbnBGNWVDV2RtZ2FkZ1NkMzBZbHJzRGJENDlvYjBmSm1tbVY2N2VsZ3pP?=
 =?utf-8?B?Z25pdGJ1azVYbXRrY3hIcm1PbzJCMk5xQ0VYVFl1SjF6a3A1czhYeDVlaHBq?=
 =?utf-8?B?R0FsTW56THJnbk9oVUFuSTlEYnBNcmNncVNsdDlmWlpwQ0xaellSdWIwU3Rw?=
 =?utf-8?B?SFNITFhBb25HaTc1VUkzWjA5SU5zZGJKcjZOcG9qTEpMV2FxVzI3dlpsVzMv?=
 =?utf-8?B?K2wvdzMrNm9BRUxGUmFyRThHamlMSGdZWFF1dERrOWt2WXpkTDRmUTk2V1Zx?=
 =?utf-8?B?SHdJK1o0SHFKZjlmeTVhQ1JZTlZEeE1hQUx5a1JSMU9WRlhzR0gwVGR4ZUFJ?=
 =?utf-8?B?dDZIanZtOUE5c3NTMEVUL3hXei9ZZ0V5NDFyRW1JeU00WW5uY1A3WVF2MjBQ?=
 =?utf-8?B?TWduSzd4RXFKcDNXOWJHS1hmVzUwSVM1VUh0SEJRZUMwZEUza0Qvc3pCblFS?=
 =?utf-8?B?WVdZWEdGbGN1RlNERmd0cytMQmIyNWNQazF2STMxUmxLaS96WCtRTGpnUWpV?=
 =?utf-8?Q?EzmZhu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b3ZmclY2a3NiUmNYMElzZHFZR0lyMldDVmdTOGlhVXVCanlIU1NScGdsYUYv?=
 =?utf-8?B?dXE4NE9VMWlOcDNLQWNpeHdyWU1XYytIcWsrckJwNmFhbDFqWGg5N245MHln?=
 =?utf-8?B?bVpLRitLQWpzcXdxT3pzRGJoYkhlMHNMY25WL09iN0VySkJUdkdKaEJ1THpp?=
 =?utf-8?B?MGpaRC95bUp5N01Lb3BHa2ZFUDFJT0R6dnFuNFFtNnhvOHoyOVBvek16QlIz?=
 =?utf-8?B?TURyV29CVEJxZy9Ebjl5d0p4ajd3ZnFSWThrNjZlcDlIV0ErZ09QajJ6d2Q0?=
 =?utf-8?B?bEI4OUREN0ljanYyajRpMy9tQXNoSEJpNFlWNzF3RjJhSTlqT25Xb2Jsb2dm?=
 =?utf-8?B?dFA2MGtyaW5mSENuK3ZIK0xiSE9mcSsvVnNaSjdWS1pwSXBsbjRQRUhSZk1i?=
 =?utf-8?B?OHdhRnpOVzM0ekRlaldvU1o0V1lkN1g3RXF1TXJhU29UOGYvQjRTaGJlOEx2?=
 =?utf-8?B?Uno0MDZXN2U0amQ2MXpqMlppWWFSRVpWbTZZWjJJWktLREliamxNb0JQUmVw?=
 =?utf-8?B?bzVkM2JHYXhwMi9oNUZwNkQ2M1krWkpOUGJSb054SFRiMkZkVWhTeVk1S0Y4?=
 =?utf-8?B?TmEwd0UrRUtVdVhDTzhWSCtGOVB1UWVQeVo0bTVhOVd4blNJc3YxWVV1cklh?=
 =?utf-8?B?QmJQTlJsMzVsVGRmalc5Y1ppM0tBdUQ0VkNQWThDa2hhZ3FUTVFUemsxMFda?=
 =?utf-8?B?N0dUUUtGS1pFbDB3Tnh3a3IyRk9nU1NvaUN5MmthODdCRkFwMnJ0ZHF3K3RT?=
 =?utf-8?B?ajMwN3F5RDBXTG5iTVBGUm56Q25OOW9EMnpXa2VyK2xjejl3Y2xUWFNrdEFo?=
 =?utf-8?B?V2pHRVdFd2FDZjBTdURRb0RuOHdwMUltSDJKRTVKT3NyUSt4RnhZLzl1c0JG?=
 =?utf-8?B?d1RnZXkyQ0FhNURQOEVKaldJbHpFQVBHVjNscjJaYldkKzNMQitDODBPYXB6?=
 =?utf-8?B?eEJEQldBTlluc2Vna3RqdkZWamJPTW9GR29QRFpuaTgraEZLRWh4VHdYTFlx?=
 =?utf-8?B?ZWRYUSs5N0FMZDgvUXJmYUVtallFN0tKaW53Wi9oWnJybkNZK0R1OGg3Q1lE?=
 =?utf-8?B?eGc4KzdvQlUrbFg1OXFUSWsybG5YaVFSQU9PK2pPeHBKWm8yQSttU2ErQUpY?=
 =?utf-8?B?Nkk0RHcvYXpvcGo4b0RWME84aGYzaGh3UExsZU9Qc3I3ODAzeEtxcUFtVUFD?=
 =?utf-8?B?VVpiZENhK2lVMjA2T01NSjB2cTBXd0FWMjEyWXc4b05aZzRFbFoxWXZvTUU4?=
 =?utf-8?B?cXF6S3prMW9vSEFNUis0NkdaMmFtNWluUTZyNy9zWEJYdjJpeVZKZlBGNXlt?=
 =?utf-8?B?dDgzVnA3WURQNmk5MFhUOFlRbzdabkQxNHF0RzBPVGVOZDMxa2hLNjdyRUsv?=
 =?utf-8?B?LzYyY3BIeXhlbkcvaTN2eHAvS3psbVYzNk9zclN3akliUkNkbkduMWJUblZ3?=
 =?utf-8?B?ZWI4aGpmVUFoYVA2b2IvQytWcDB1MTArMGlwTHk1OVYza3ZQdGZmMjJTamgx?=
 =?utf-8?B?V3U1aWYwdzhicWxaUHlWUGxkTEQrQjNWWmpqZ01hcC9za2hHQWVPT2tqN2lV?=
 =?utf-8?B?SGhtVkthdGoyZjhCa3VVUlBFc3RiR2M4d0dOUUJZWE93TXUrSXg2SW42cmxS?=
 =?utf-8?B?M2JDSFRxWmhoNnRkNlI3b1F2YjdHd25kS2hhcmU5eUhNOEVBSnZzZHA2dXo1?=
 =?utf-8?B?NU1KSTFXcmpsREw4a2xReFI3L1VLT0RkaHFuNFc4K2hNZnI0UHZ0TjRLM1Ur?=
 =?utf-8?B?dTVDdlhXUzJYVUZ4ZWlZcVZVcHAyZkJmWXM4VjVTdUhNUzJlSHlsM3RNZG4w?=
 =?utf-8?B?ZjRwMUdwNEUrb212aThxbUVYd2hEaHlqMm1hdGQxUTAyZkdSL1p1SmtQOGhy?=
 =?utf-8?B?SVltN01LcEdTMnZPS1EyUEpuaWo5S3hlUEVUZDVwRTRtQ2dVY3NDYlJJc3Y0?=
 =?utf-8?B?YVREWDFBdXpndXhib2ZNSFh0K2dEaDdVbW5GUW5sZVhjZDNTdVp1UkhYWEdT?=
 =?utf-8?B?eFVkM00xTXg3SFloZVZTUm5kenVkWGs4d3AydW44b3E1YXZCNU9tMjJDTTgz?=
 =?utf-8?B?ditYNUEvay9xdVRleFBhUUpLNHdNZTFIamh5SW1LNVh6MFM2alVHR2NETnd2?=
 =?utf-8?B?QWRVenU0SG9qOVNndVE1UHVWZTZud3NOcy9jRFBhLzR1R3FsWjUxbEdOMWF5?=
 =?utf-8?B?UGIxMnN1WVZvWmFYTmZ2eit4RFhKNnpVTEpoK0Nkb0dKRURBTDBZVlJHQnpa?=
 =?utf-8?B?cEhKRnI5bmd0Ujd3Zk16aWQ1WnpnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <488E4BA8B6316241A23F30B82CFCB2B1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b286cd2d-164e-4f42-ff1d-08de0cd4f59b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 16:56:32.6236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k820fwXrkpudxqRdyaGOrLl8Pg97WuDLrs0QzJVLRC8BLC8qr2jPHehofzhmoc2wl3gXJ8fAfD1YWRivM16CcketN6U7DlndeVv091zLcQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8763
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDE5OjE5ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEV4
cG9ydCB0aGUgaGVscGVyIGZ1bmN0aW9uIHRvIGRldGVybWluZSBpZiBGRUMgaXMgcmVxdWlyZWQg
b24gYSBub24tDQo+IFVIQlINCj4gKDhiMTBiKSBTU1Qgb3IgTVNUIGxpbmsuIEEgZm9sbG93IHVw
IGNoYW5nZSB3aWxsIHRha2UgdGhpcyBpbnRvIHVzZQ0KPiBmb3INCj4gTVNUIGFzIHdlbGwuDQo+
IA0KPiBXaGlsZSBhdCBpdCBkZXRlcm1pbmUgdGhlIG91dHB1dCB0eXBlIGZyb20gdGhlIENSVEMg
c3RhdGUsIHdoaWNoDQo+IGFsbG93cw0KPiBkcm9wcGluZyB0aGUgaW50ZWxfZHAgYXJndW1lbnQu
IEFsc28gbWFrZSB0aGUgZnVuY3Rpb24gcmV0dXJuIHRoZQ0KPiByZXF1aXJlZCBGRUMgc3RhdGUs
IGluc3RlYWQgb2Ygc2V0dGluZyB0aGlzIGluIHRoZSBDUlRDIHN0YXRlLCB3aGljaA0KPiBhbGxv
d3Mgb25seSBxdWVyeWluZyB0aGlzIHJlcXVpcmVtZW50LCB3aXRob3V0IGNoYW5naW5nIHRoZSBz
dGF0ZS4NCj4gDQo+IEFsc28gcmVuYW1lIHRoZSBmdW5jdGlvbiB0byBpbnRlbF9kcF9uZWVkc184
YjEwYl9mZWMoKSwgdG8gY2xhcmlmeQ0KPiB0aGF0DQo+IHRoZSBmdW5jdGlvbiBkZXRlcm1pbmVz
IGlmIEZFQyBpcyByZXF1aXJlZCBvbiBhbiA4YjEwYiBsaW5rIChvbg0KPiAxMjhiMTMyYg0KPiBs
aW5rcyBGRUMgaXMgYWx3YXlzIGVuYWJsZWQgYnkgdGhlIEhXIGltcGxpY2l0bHksIHNvIHRoZSBm
dW5jdGlvbg0KPiB3aWxsDQo+IHJldHVybiBmYWxzZSBmb3IgdGhhdCBjYXNlKS4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqDCoMKgwqAgfCAyMSArKysr
KysrKysrKysrLS0tLS0tDQo+IC0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5owqDCoMKgwqAgfMKgIDIgKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jIHzCoCAyICstDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNl
cnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCBiNTIzYzRlNjYxNDEyLi4zZmZiMDE1MDA0YzU0IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0yMzY1
LDI0ICsyMzY1LDI5IEBAIHN0YXRpYyBpbnQNCj4gaW50ZWxfZWRwX2RzY19jb21wdXRlX3BpcGVf
YnBwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCXJldHVybiAwOw0KPiDCoH0NCj4g
wqANCj4gLXN0YXRpYyB2b2lkIGludGVsX2RwX2ZlY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLA0KPiAtCQkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0
Y19zdGF0ZSkNCj4gKy8qDQo+ICsgKiBSZXR1cm4gd2hldGhlciBGRUMgbXVzdCBiZSBlbmFibGVk
IGZvciA4YjEwYiBTU1Qgb3IgTVNUIGxpbmtzLiBPbg0KPiAxMjhiMTMyYg0KPiArICogbGlua3Mg
RkVDIGlzIGFsd2F5cyBlbmFibGVkIGltcGxpY2l0bHkgYnkgdGhlIEhXLCBzbyB0aGlzDQo+IGZ1
bmN0aW9uIHJldHVybnMNCj4gKyAqIGZhbHNlIGZvciB0aGF0IGNhc2UuDQo+ICsgKi8NCj4gK2Jv
b2wgaW50ZWxfZHBfbmVlZHNfOGIxMGJfZmVjKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
DQo+ICpjcnRjX3N0YXRlLA0KPiArCQkJwqDCoMKgwqDCoCBib29sIGRzY19lbmFibGVkX29uX2Ny
dGMpDQo+IMKgew0KPiDCoAlpZiAoaW50ZWxfZHBfaXNfdWhicihjcnRjX3N0YXRlKSkNCj4gLQkJ
cmV0dXJuOw0KPiArCQlyZXR1cm4gZmFsc2U7DQo+IMKgDQo+IMKgCWlmIChjcnRjX3N0YXRlLT5m
ZWNfZW5hYmxlKQ0KPiAtCQlyZXR1cm47DQo+ICsJCXJldHVybiB0cnVlOw0KDQpOb3QgcmVhbGx5
IGNoYW5nZWQgaW4gdGhpcyBwYXRjaDogRG8geW91IGtub3cgaW4gd2hhdCBraW5kIG9mIGNhc2UN
CiJjcnRjX3N0YXRlLT5mZWNfZW5hYmxlID09IHRydWUiIGJlZm9yZSBpbnRlbF9kcF9uZWVkc184
YjEwYl9mZWMgaXMNCmNhbGxlZD8NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KPiDCoA0KPiDC
oAkvKg0KPiDCoAkgKiBUaG91Z2ggZURQIHYxLjUgc3VwcG9ydHMgRkVDIHdpdGggRFNDLCB1bmxp
a2UgRFAsIGl0IGlzDQo+IG9wdGlvbmFsLg0KPiDCoAkgKiBTaW5jZSwgRkVDIGlzIGEgYmFuZHdp
ZHRoIG92ZXJoZWFkLCBjb250aW51ZSB0byBub3QNCj4gZW5hYmxlIGl0IGZvcg0KPiDCoAkgKiBl
RFAuIFVudGlsLCB0aGVyZSBpcyBhIGdvb2QgcmVhc29uIHRvIGRvIHNvLg0KPiDCoAkgKi8NCj4g
LQlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gLQkJcmV0dXJuOw0KPiArCWlmIChp
bnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9FRFApKQ0KPiArCQly
ZXR1cm4gZmFsc2U7DQo+IMKgDQo+IC0JY3J0Y19zdGF0ZS0+ZmVjX2VuYWJsZSA9IHRydWU7DQo+
ICsJcmV0dXJuIGRzY19lbmFibGVkX29uX2NydGM7DQo+IMKgfQ0KPiDCoA0KPiDCoGludCBpbnRl
bF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gQEAg
LTI0MDQsNyArMjQwOSw3IEBAIGludCBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJICogRklYTUU6IHNldCB0aGUgRkVDIGVuYWJs
ZWQgc3RhdGUgb25jZSBwaXBlX2NvbmZpZy0NCj4gPnBvcnRfY2xvY2sgaXMNCj4gwqAJICogYWxy
ZWFkeSBrbm93biwgc28gdGhlIFVIQlIvbm9uLVVIQlIgbW9kZSBjYW4gYmUNCj4gZGV0ZXJtaW5l
ZC4NCj4gwqAJICovDQo+IC0JaW50ZWxfZHBfZmVjX2NvbXB1dGVfY29uZmlnKGludGVsX2RwLCBw
aXBlX2NvbmZpZyk7DQo+ICsJcGlwZV9jb25maWctPmZlY19lbmFibGUgPQ0KPiBpbnRlbF9kcF9u
ZWVkc184YjEwYl9mZWMocGlwZV9jb25maWcsIHRydWUpOw0KPiDCoA0KPiDCoAlpZiAoIWludGVs
X2RwX2RzY19zdXBwb3J0c19mb3JtYXQoY29ubmVjdG9yLCBwaXBlX2NvbmZpZy0NCj4gPm91dHB1
dF9mb3JtYXQpKQ0KPiDCoAkJcmV0dXJuIC1FSU5WQUw7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gaW5kZXggYjM3OTQ0M2UwMjExZS4uNTUwNTliZDVjN2Vm
YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBAQCAt
NzMsNiArNzMsOCBAQCB2b2lkIGludGVsX2RwX2VuY29kZXJfZmx1c2hfd29yayhzdHJ1Y3QgZHJt
X2VuY29kZXINCj4gKmVuY29kZXIpOw0KPiDCoGludCBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gwqAJCQnCoMKgwqAgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLA0KPiDCoAkJCcKgwqDCoCBzdHJ1Y3QgZHJtX2Nvbm5l
Y3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7DQo+ICtib29sIGludGVsX2RwX25lZWRzXzhiMTBiX2Zl
Yyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gKwkJCcKg
wqDCoMKgwqAgYm9vbCBkc2NfZW5hYmxlZF9vbl9jcnRjKTsNCj4gwqBpbnQgaW50ZWxfZHBfZHNj
X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJCXN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpwaXBlX2NvbmZpZywNCj4gwqAJCQkJc3RydWN0IGRybV9j
b25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5fc3RhdGUsDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBpbmRleCAyN2U5NTJhNjdjMzQzLi5kMDU5MGI1
ZmZmZmQ3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX21zdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bXN0LmMNCj4gQEAgLTI5Niw3ICsyOTYsNyBAQCBpbnQgaW50ZWxfZHBfbXRwX3R1X2NvbXB1dGVf
Y29uZmlnKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCS8qDQo+IMKgCSAqIE5P
VEU6IFRoZSBmb2xsb3dpbmcgbXVzdCByZXNldCBjcnRjX3N0YXRlLT5mZWNfZW5hYmxlIGZvcg0K
PiBVSEJSL0RTQw0KPiDCoAkgKiBhZnRlciBpdCB3YXMgc2V0IGJ5IGludGVsX2RwX2RzY19jb21w
dXRlX2NvbmZpZygpIC0+DQo+IC0JICogaW50ZWxfZHBfZmVjX2NvbXB1dGVfY29uZmlnKCkuDQo+
ICsJICogaW50ZWxfZHBfbmVlZHNfOGIxMGJfZmVjKCkuDQo+IMKgCSAqLw0KPiDCoAlpZiAoZHNj
KSB7DQo+IMKgCQlpZiAoIWludGVsX2RwX3N1cHBvcnRzX2ZlYyhpbnRlbF9kcCwgY29ubmVjdG9y
LA0KPiBjcnRjX3N0YXRlKSkNCg0K

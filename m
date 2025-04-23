Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08437A988A8
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 13:36:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46DBA10E44C;
	Wed, 23 Apr 2025 11:36:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vg7GDUnK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04D7210E0B0;
 Wed, 23 Apr 2025 11:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745408189; x=1776944189;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CdbDp64kiso+tpKpHsK5wS1HEitDxgikXxFgMJ7Uffk=;
 b=Vg7GDUnKW08SQQaJzIew7ReG7x4LDB0YHrjMrqWbTpy2eteRTfR+NJDK
 rXi/vm14YL4nqgLOEnO8Tty8C5pVfNDjZVOAbfudaTD/Z6dzPgqGhBZ4Y
 Apm6U8ojpJ402lDMGLeqAcRaPqDzwgP1zE7cTzuMBc7LXpnJAQGzxDSNp
 tmcFv5rz72XTfNDMaPP7k8CFiGKNr2z3JuBH2q7LmjXXv57bR1SREGo2o
 vmoG70b5w8poOA+Nrfjw3vhCpzNAm7jxcrZs2571GQruTH5KIwxSkyVoC
 zvrKjIVzRBZDsA3hQU9NI9PogP6H0RVsXYiEZ5z9OsNxcC016y7qze4t7 g==;
X-CSE-ConnectionGUID: vHrrnzGaRHaklLdQB0nWiA==
X-CSE-MsgGUID: kMW86WLFQ96nR5TVhJDkvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="57652356"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="57652356"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 04:36:28 -0700
X-CSE-ConnectionGUID: i7PUfFa1RyK2HG6wEjEV7A==
X-CSE-MsgGUID: 9IgOBi9lS4+eqaxIt8mWwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132212514"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 04:36:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 04:36:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 04:36:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 04:36:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kv0dH8CET8tLKWmh1yh+3+c5nQvxp7BVn2evYTHmkbjlZlmUcPYHPIaZndgKPFgB9nipQ9VSoLY9tWDYlvctnotAZn+ykR2U/JX9mxuzz6zIJDJDGRLDszpyzrdFVhyh4NoBS56dPERSlgOPbF/pWo1Vemvjx2js5YCpeSwyBzEWYk8ZaT8NPzxtNlyomQqM7vKTjVpbPJq2RXHUCko0txsXStch0TmSC0l+4BQJB883kssyGVtXgvai4iRFYFd638ZlLMUseQLaVbP3AQaJPDtztkb/mNF8cbb6ZiJqO1u6JBGg2POwW50oMgissGxKOrDsKZWClT02ARSCRIrxbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/WViabQ7m1cRq/12mpHXjjFx5HZ73TF61661ElC/YSE=;
 b=Owrec/xS8DhTGhA5OrWAPxyq0MJOPlZU6Z8zmil+XytEVh8oT0QSD/ErUmhinbgosXJ76K43gagUHUYYtllio/DZKr70NK/dBVfkXFu2jIK4qOf1HVgRBmUKa792+/G5zbpTsYG33+yLKYI3tiAfV3Mag29VKGeP03e55DYozPvHODAIC4EC6nor40y1cyJmKC3gk9iOstgyb2AqyhvOX03unLtLtcP7zvvl+jxDF3q8DHQElUY/3GdKtVIKAAIyywG9iNGKVKfLg29Dio+eJf+iiQnud4A6xXYtMZB2oPLd9UOe6q2qF9VyhPU9q+U7U8+ly7gZHihjSOazTgOILA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB6052.namprd11.prod.outlook.com (2603:10b6:208:394::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.23; Wed, 23 Apr
 2025 11:36:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 11:36:24 +0000
Message-ID: <ce3dc277-0158-46b0-b0db-30521f99a5c1@intel.com>
Date: Wed, 23 Apr 2025 17:06:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/13] drm/i915/vrr: Add state checker for dc balance
 params
To: Jani Nikula <jani.nikula@linux.intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-12-mitulkumar.ajitkumar.golani@intel.com>
 <e66ce2ea-f0d4-422d-a3d6-08b95565e188@intel.com> <8734dz18lf.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <8734dz18lf.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0117.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB6052:EE_
X-MS-Office365-Filtering-Correlation-Id: 4deb691a-1c18-4dea-625b-08dd825b13e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UHRwMnNIeWZ5dFVnNFpJS2thVzQ0NC8zRG9GQ0d5aGNidEdrYUFjWGZKeXBN?=
 =?utf-8?B?QndWSDNXRjFUWWhOMjFwRkZSV29WVmRQWWp5RXdKck5zdXFZYkJYVWRtQXNn?=
 =?utf-8?B?YmNhdDI2WTdtbXU3T2NqQkNWb1JoQTNHdEFGMkJFSGhDUktYRTZRS1pHT014?=
 =?utf-8?B?RlZBUWtvTVJNQU5ZMjQ0TU8vclZqa0NaUEZ5b0t2UGVwb0dVZ08wa0o2UXZw?=
 =?utf-8?B?cFFoK2hobkNwQzluSjBhL2lNem00UFFjek1rY3dpSGhYUDIyYmVETm5SUllu?=
 =?utf-8?B?eDN5dGFYM3N4MEQvRHdZckt3VStuMnZlencvbnN1YlByc3FMZnRYbk9EZHBN?=
 =?utf-8?B?ZEo3cUFZQk1tUTNFekc2Tml2RW9xTDRkam41dyt1RWc1cUt1VzRuMElZUzdX?=
 =?utf-8?B?ajR2OHdmQ0VSQ0laeWFia0lyNVVIdXpjSE4vNUY4WlJwa2FML0ZsSVhkdjFk?=
 =?utf-8?B?Y2ZYTlQ2OS9YRUNxOGdQNm9YOGRvVnQzaGlwUzNrOVlyODB4QWdmSVc5dXBv?=
 =?utf-8?B?YllIU3JmTndrLzA2M0czaXgvUHprdk1xNmRsQ0FCa3BzMjU5alhZcnJvZjZr?=
 =?utf-8?B?cUZkL3pyVVZtUURTdDZPR0FmNWtlekZrdmMxNFRaLzFpL1VMOUxWcE1kemJB?=
 =?utf-8?B?Q1lLUnNMbjFEY3Q0MGRNRUp0K04zQnQxUmVEUjh4YjBpbDVqbE15QjR3RUtu?=
 =?utf-8?B?V3pLakYrbCswT09XMFN0ZVdMOXgwZStzS0FraVZDanNoYjM2YnZpeitMV3Jk?=
 =?utf-8?B?WTh2WXpDTGUxdUJqaFVkQkxoSFVUMnc2SkErbjJQYm1iVkdPOTVjbENiMUt0?=
 =?utf-8?B?MUFPZXdpWnJxdzF3dFpXTWhsamh4WnQrWWc3emlIRXVqUXhYa0RKY3FlSjlO?=
 =?utf-8?B?WWk2S2lhZEdGcGN1dzRZYmpSNmZVN3lJUkNGVWFpWCtPSy90QTZCVVlZUncz?=
 =?utf-8?B?enA5c3VnVmwwbHJLZUlCTndDLzdhNUZpNUxKTVJsN1Zra2p3akN4cDVGZHY2?=
 =?utf-8?B?UFVuL0YrQ1hJSWhBUXpHaTAyNXFoUThXNDlnQWxiVVNSN28zTnJqOWw5SXhj?=
 =?utf-8?B?TzZkcmN0WEk5V2JnZm1QVE9oYnNRNkgxazRBMXpPK0l0YTlMSmFOWFFzN2RH?=
 =?utf-8?B?SzdjNlViWjdpeWR1Ty9lcVAyc2tUcDdqb2RpUjJtcmxoM04yRWhOVTNXYWRv?=
 =?utf-8?B?ZVQ4dmJvRFg3R3V0dDk0ZllBOXkxTXZLWXNVVmk5cWVJOHVBQTNQZk4xUFNF?=
 =?utf-8?B?L3lhU1dnVFpyR2xod3dzVUYrVGh5Ni8xNUl4T2dMZTBxdW8yWXZ0UFNqRkhE?=
 =?utf-8?B?YlBFQUo4SDUvblpBUWIvYXJMZDdkaEsxTERScnlUNmxpUkduOXQ2cDh3TTB1?=
 =?utf-8?B?QWJjNi9xSGtkeEJ5NTJtcGJTNUNxTThzdWppei94Y1lwM3A0TWU2dFJNVnAz?=
 =?utf-8?B?QXhuTE1LMGxyY2tNSFQ0K0syb0p3L1MxZytIQkxLeWw1TmhYQkNjdTQ3Wi9K?=
 =?utf-8?B?Y0NnZDRVc1diNnBSdnpKbzNiMGtUWGRGdXdmWWliMlQ1eCtXOEQrL0lIQVNV?=
 =?utf-8?B?ZDNCVzVKSG9hTlpvYnRUUlhhaGRVeVZrQ0hUUGNMK2tDYTFnRmN1TzhFeGRB?=
 =?utf-8?B?dkNWMWlaZGNQV0xUZDhucFJZN3d0cHFweVBQdnlNcDltclFqK3ZyRVI4bzF5?=
 =?utf-8?B?Zzh2YzRrUFUwSkRpd2RtNHZZZVVyTEZEblB4a08yNUk4OTdGVFB2QldRMUNk?=
 =?utf-8?B?MTRLOTcxNkhUa0VVTjBDRkV3M1JkN1NvN1BJOFBZZjhLTTluWTBCalN6RHRC?=
 =?utf-8?B?eVgwUDNIZmhXc1d0OEw4SzBpRnhnMVV0d2VZNE5mbnZSSG5wWWFlU2xjTU51?=
 =?utf-8?B?S2plbVhyMUt3TnhZYitpTVV5SEo5SjJXL3ZQVVpNcDdKeFBJLzd2eWRNNUtT?=
 =?utf-8?Q?0jxq5Sj1L/o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SktmaGJlMU9kUWpRcGFLTC9OL2kwQ3I4NG14WCtkOUV2eVgyU1lCZlU3Q3ly?=
 =?utf-8?B?SXljcUVLanpxSzFSQndzdy9VKys5WE12OFVRSm9UUHVPcFdmTi9OdHV4dEw5?=
 =?utf-8?B?eFRWZit2TGNBb1JDZHkzeEV2dkRyOXZvWmF0NHgzS2tpUEUwczRUTmErMWxL?=
 =?utf-8?B?eDhlQmM4S3ljN1luRzB0T2pmcFpNeGVpdEh0cU81ODA0RWlDY2UwNWRxSVgz?=
 =?utf-8?B?OWJDSUJCd3NrNy9XS28yRlV4VjZxa09rV3NtU1NJTVVIb3ZTbnlyNVRma2RT?=
 =?utf-8?B?eENTQkVvWWhHazRuNEh3NHBqY0lhcHMzK0RUSUN4Vm56SlR2QkdyMW1lcFhH?=
 =?utf-8?B?L1VIMm53Vy8wdWVYUmVOMnltbXR3SGFVVFQ4bFdZTTBpWU9TOTh0Rmo2VU5q?=
 =?utf-8?B?YVhHTmdnU2NZazNCVVdoRVRiZ29TdGFla3ZoK0dlZ0tYOVlmS0x5WjVLamUx?=
 =?utf-8?B?eVpjTnFLSTBmV1lKZUMyY0VLVHhrWWRGUytZcjRLZHJOSVpwYVFoTFFCNkx4?=
 =?utf-8?B?Vi9JcWJtaHVaOWZHTFFOdWRJaTZxVDc1K01JZmtjenIycWxrVHg3SmZMVE5s?=
 =?utf-8?B?ZldGTzhvU21naDBmdnBudHk2cmkyenRrd1B4ZzNKQmxlNktJQmVFcy9jSFgz?=
 =?utf-8?B?eGZZMVByYVRUTFF4cFFnd29jYXZudi9Mc084ZXVaWTNOVzJkd2dLQnlBVlVO?=
 =?utf-8?B?N2F6MFoxRktKRTJmNzhSRFErUDNvQVl0cWU0MG5LRDE5NTcwSnRhL3M3TVJq?=
 =?utf-8?B?dEk2M2J1WlBBeWlBQ05NRTZyVEJkeXJoZytiU0FmMkFJWUVOK25aZVVSSkN5?=
 =?utf-8?B?dWlWSTlia0pYL1I3VnYyUklkNDFTSHpPY25ISkFCOEZzMTltMUUyeG9UUFBM?=
 =?utf-8?B?aFQyNDFUVzlqUkJuWlpVT2V0UFhzb0NWQzdseSt0aHlTWWQ1VXhKb0hOTjUy?=
 =?utf-8?B?ekw4NmZYckpJcUlVLzVteGVWTStON1k5K3N0NXlrU0w5L1lrMWlGOHpnQUxq?=
 =?utf-8?B?OG5Eby9XM05qQUlGWnYrellUOXpvbzZUc2hSTk5BeVB4S3JMQjF2Z0xwS1lM?=
 =?utf-8?B?cXpGQk56RzhBT3JDSWhkQ0c0bSthUUttUlhUREEzdTZRRElBZDU5MGR3QjRk?=
 =?utf-8?B?V1k3dXdOOGVxOG1rQXJDOU1hVWs3M2pQQWRpZ25hVEovUHJQalV4VXlxL0hX?=
 =?utf-8?B?alUvY3VFVVc0WVF3YTBZTm9EaUlTM09XdTd1dlJIUUNIejRNd3RDb2FLS2hK?=
 =?utf-8?B?NVRlUFdYeGh4S0k5TFVKMHJydXdFWWV1OEFaOXlkcDFzQ3U0N1RUd0hMYnRx?=
 =?utf-8?B?VFp0NnFHVktWS0RxNlVBMC9HZmQwYkpnQWZJTmduZHlLRUYxa1J1djJJUHZW?=
 =?utf-8?B?T0w0WXFydTZDZGsxbkFxUVlzOEhYUklLNWM3Ym5oU1hXZ285WWpFaHlXTG1u?=
 =?utf-8?B?QkpMRCttZnFtVG43VVlrUlNFMFRKWFZ2VzA3bkVKTi8wNUdvdUZKNm5mdHFy?=
 =?utf-8?B?ZjdRNURGM0I3eWxvRmlnemhEaGQrQ01XL0o5bGNuQmZiNFB6aW5SUGFTL2l6?=
 =?utf-8?B?R1RsZFc4UTQyMUg2T2IwSTVVemQvMlZ2c1dnbzFQcUtDSHlqMUs4aFZlaVFl?=
 =?utf-8?B?YUdtRzBwODVEcVhMNmFOMUVDeURzU0NKRE1Ib3N4Nlo0dXBXR0ovZGhwYmlE?=
 =?utf-8?B?UVFOcmlQSVFrUVlIMEJ5TFZNYllwTE4rV0pTSnpDRmJPZEVWbXBlZllQOGNZ?=
 =?utf-8?B?b1lvVnRwUStEdTM3eGl5aEVLYkJFWUFwcE1aWXU1aldiaStMdURPMEdKYkJa?=
 =?utf-8?B?NSt3czdJQWtmaU4wRHk2YTdKTkZoUjlxOFNjaWpLbGRWQWQrNjBzR1FWb29L?=
 =?utf-8?B?cXlmSEpjckh3N1phbDFnMlU3MjFWN2UyaERlck5zczRkcFhvV2MwY2JQQm9H?=
 =?utf-8?B?cXNwZlpEWk8vNFk3MVpJbmNDVzZnSjFPczR5T29ORHI1ODh6c1ZkWmFRL3l6?=
 =?utf-8?B?SllaL2dhbFhtbWRFNDlTRDE5ZklWOWtCL28vZTZPYkhRWjkyMTU3bFRONmp0?=
 =?utf-8?B?NVIwa0lnQXZMK1d3NXJLbVlVU1lMc2w3TXltSFErNG9aTHJFRGRyWjFLL1po?=
 =?utf-8?B?NFY0b3ROWnFSZkRjTGM0TC9IcDMwZlpJL1dkaDVXaWR1U1R3STBURnJUeFIw?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4deb691a-1c18-4dea-625b-08dd825b13e1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 11:36:24.7499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DfxGtk0bE57XIRICWzk5QcBrdyQczNaEiZY34VNXKfxfup8d1wpw2pJsJGWgg2+EylrNhWRZjrSHotNC1Apus9sRDECY29JqhA078lTwGKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6052
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


On 4/23/2025 3:51 PM, Jani Nikula wrote:
> On Wed, 23 Apr 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 4/21/2025 9:18 PM, Mitul Golani wrote:
>>> Add state checker for dc balance params. Also add macro to
>>> check source support.
>>>
>>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_display.c |  7 +++++++
>>>    drivers/gpu/drm/i915/display/intel_vrr.c     | 20 +++++++++++++++++++-
>>>    2 files changed, 26 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 274d01552ccf..4a21acb88aa7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -5402,6 +5402,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>>    		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>>>    		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>>>    		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
>> Add check for vrr.dc_balance.enable?
> They should match regardless, no? Something's wrong if they differ.


Hmm... as I understand when we are in fixed refresh rate mode this will 
not be enabled.

This gets enabled only when VRR is enabled from the user-space, so they 
can be different.

Regards,

Ankit



>
>>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
>>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
>>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.slope);
>>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_increase);
>>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_decrease);
>>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vblank_target);
>>>    	}
>>>    
>>>    	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index fb96d03bbf03..e8802348e5fa 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -740,7 +740,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>>    {
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>    	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> -	u32 trans_vrr_ctl, trans_vrr_vsync;
>>> +	u32 trans_vrr_ctl, trans_vrr_vsync, dcb_ctl;
>>>    	bool vrr_enable;
>>>    
>>>    	trans_vrr_ctl = intel_de_read(display,
>>> @@ -802,6 +802,24 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>>    	else
>>>    		crtc_state->vrr.enable = vrr_enable;
>>>    
>>> +	if (HAS_DC_BALANCE(display)) {
>>> +		dcb_ctl = intel_de_read(display, PIPEDMC_DCB_CTL(display, cpu_transcoder));
>> dsb_ctl is not used. Need to use it for vrr.dc_balance.enable.
>>
>>
>> IMO we can introduce the new members (which is done in Patch#4), readout
>> and state checker in one patch.
>>
>> Regards,
>>
>> Ankit
>>
>>
>>> +		crtc_state->vrr.dc_balance.vmin =
>>> +			intel_de_read(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder)) + 1;
>>> +		crtc_state->vrr.dc_balance.vmax =
>>> +			intel_de_read(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder)) + 1;
>>> +		crtc_state->vrr.dc_balance.guardband =
>>> +			intel_de_read(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder));
>>> +		crtc_state->vrr.dc_balance.max_increase =
>>> +			intel_de_read(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder));
>>> +		crtc_state->vrr.dc_balance.max_decrease =
>>> +			intel_de_read(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder));
>>> +		crtc_state->vrr.dc_balance.slope =
>>> +			intel_de_read(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder));
>>> +		crtc_state->vrr.dc_balance.vblank_target =
>>> +			intel_de_read(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder));
>>> +	}
>>> +
>>>    	/*
>>>    	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
>>>    	 * Since CMRR is currently disabled, set this flag for VRR for now.

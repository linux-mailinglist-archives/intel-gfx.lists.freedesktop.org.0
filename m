Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86145AAD556
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 07:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7923D10E25E;
	Wed,  7 May 2025 05:38:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KNMhi2j1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BD1910E150;
 Wed,  7 May 2025 05:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746596292; x=1778132292;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UxSjQkwHVKKZuKaaAHQPfyq4YlyqJFZpssQoSKzM2TI=;
 b=KNMhi2j1JvZd4VbYo5zdiDo2IJIEnP7UAEI1bZ+Rv53zDrxeuliJ2GVY
 gZfTyRiBOTDAo2DC/vnIf8bTozXm4477ChlvohK2gtnMJwsqWl2At/WVV
 n4B9BvTGnQ2utsGxIJKcwRn40ad4R1Zin2JlBNOFdGERoA/KuJrwhewCK
 cpwV3dYt2CJyjfINQFFe1n6ZJjpxPRpjxOyOFRakx6pWkbMjf3bdrq5dz
 pQ6zUOpxgtuCtwWVSciSMcq8AIKklUWmyRpjDRLLOio0hNjbieKuMkLQn
 FuJdAmKnmwGlxP5v6eogzKCcf0Ya2Lj9IvO8D/IdJIw0pIJaQO9WiLglv Q==;
X-CSE-ConnectionGUID: WGpG4Q4IRA68UbkE2qn65A==
X-CSE-MsgGUID: 3BH4pKVoRcSXvT1osyyrIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="65836502"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="65836502"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 22:38:11 -0700
X-CSE-ConnectionGUID: PD/Uze3ySxeP6beNlLwymQ==
X-CSE-MsgGUID: znJ1YX19SPimRljcmdyozg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="135714574"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 22:38:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 22:38:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 22:38:10 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 22:38:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NTngl76HofKoCmpszPeF4BATrmeErK0KB5dnbZrlcd2A+hi2O5XQs55UH1cT4awu1SQDvSR53ojfJZaFWXGhpZyBPwfYTMIZ8pfBbLdOweO9wHgt2TkvMKBl5eBJv82A5ggM0HU989YbuFCVuKqvS9LK8vQS9ygVlhIBfzm+oSQFP77G8fL+d9yQIALWddyUmNgIEVAoQlhH8l+bSaEcvyOr28HK43lei0sO2O7fgvOU1wa/vkZ+JMjPFBcHn+h/UdhoHGMI1KjsW+IpBrr6wr0BRE5oR2jJGj8/Bqx3MumeQfqqqGenRdVmN037zpCtdDg2GDx/jc3Cssa9krmNkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+uIWGH/rgW1c2es2588+W+7Y+AeQnDvlAvO6U4DtnA=;
 b=tVhBe0cRMEV1rzN6sDhJfpwRnG/OYJsC2+1n4Bzn7vOSoVAEJmPLCzQ3p89zz0VvXjnQYHeqHxdcgdlz6HHkEON8bcEeqvqA0+yXqZrtWZKSUKRthI7TYmloai5L44UbvTMQ6GeuewbMiR0H9ZvH+kIixydRpqLkA9mGn1su5DrkW1UP1lb3oWmmTswYd113V85S+gXrt4QNz2akT9WSrvF8PWgTzZ4yYQSbHch9sLvXB7B6It7LDswWsftNjlTZ8wxzDvIpCoPfOuN+HIXp2xBOFW091nRtVzJGWyTJoJk6iX13DiGKag96S97N+azByhPTAWD33x+X4g5QN+v/HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4601.namprd11.prod.outlook.com (2603:10b6:303:59::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 05:38:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 05:38:03 +0000
Message-ID: <446cc918-087b-4ad8-92c1-66334089295d@intel.com>
Date: Wed, 7 May 2025 11:07:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/12] drm/i915: Add support for forcing the link bpp
 on a connector
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-12-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-12-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0055.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4601:EE_
X-MS-Office365-Filtering-Correlation-Id: 5399c0aa-79e4-4c32-d8f4-08dd8d2955f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N3RYWGRTSzNtOHVNR1krbnlLbEZVOXpGZUR3Mk5zbVJrbklGaGRsaHpZOEVD?=
 =?utf-8?B?K1hobGdwN3IvbUhyU1ltNXVGRmd5UEp4QkROaDZ3UXB2TTZLREVENUVVaVhx?=
 =?utf-8?B?OGF6R2JsRzlHL2g2WnpGdTJIYlJpWGRZc2JuZHE2UmdxYzh2elQwRFA1QWkx?=
 =?utf-8?B?bTFoMHhWb0kwSXNQcHJnaC9HS3F0YVZsZVE1YnJlWUdiNWtGZmhON0svWmpk?=
 =?utf-8?B?ZUtKeU5xYXJPN1IzTUk1cENBck4vM01DZlZyd1lnSWtBNGVVOEU2OGp5U012?=
 =?utf-8?B?emF1QlBQYXovNEJWbC9PNkhwUkQrWFdxeHJhR1JiVXFIc1gxdmFlWVVrWjdr?=
 =?utf-8?B?M1BYTXkxNTV2WE50c1hoTW9Vd0k0SFpZRXNJMzVYZDdZOUdtaWk3dW9OcnlT?=
 =?utf-8?B?SzV6MDAzbWxDdm5oKzFCdkZxZUdPQkFkRnpud3hISWFjODk5SDlrbDJwVU9H?=
 =?utf-8?B?NEVjdFBPeDBCTlNDU25qY3NRd2poWEErWEFsVGtJaVlnaHZUQWtCU2RFVzJR?=
 =?utf-8?B?VWxkQzNtT2xPNUVLajVQOUpyVDk2Q0N6YVpVSmVOb1JncVVsQmJ4Vm9KVXVD?=
 =?utf-8?B?Y1o3RW5hOUtCc1N0Z1A0WU5HV2k1Z01RWjhvd3htWG9oM2JUVlU4eWN1b3Fu?=
 =?utf-8?B?dzhRQSthNitMb1V5QXJLVDhkZ21MY1ExdWRUU2lqYXF0NWc5Qmg2c3lPUmhI?=
 =?utf-8?B?R2d2QldLc0dkVTdmNEphdERXQndzTERJYTd3VnU2YjFjZm5ZKzczaU5PSXNm?=
 =?utf-8?B?Q1dWZmQxSTY2OEpxd2l1Q0t4UlRoaWhOZXdZWEptaytXWTJId3NFUUtCa1Nh?=
 =?utf-8?B?bmx4d2RXKzNuSTY5ZGFoY1RLRW1ZRlhHaEx2YU4vbW1Qb1o4dS9ieWxmTnFE?=
 =?utf-8?B?cWlqSzU2SGp2ZlJNbVU5U01ad0VtZm9aL1JWVlc2REZCb1VvUmoyR0MwN1VE?=
 =?utf-8?B?MWsvblRKcWkxVlFXVlVOZDlRaW1SeUJpTTdQUDVUY3pldnhUYkx2M3dJQW0r?=
 =?utf-8?B?WnZzSzJ5RXlCSUVTOWlIOFlob3Y0ek0xNCtQcTVrcFNIOWM4enIvdlA1NnRQ?=
 =?utf-8?B?QU5aN0V0RWYwUTdKYi9hK2J0WjZicW5PU2N3ZzZITkIwa01ScTc4L0F1Y01K?=
 =?utf-8?B?SW5KWVdLeHB3MnVPSDc0cWptTXB5RTd3dGtZSUt2aitLSGQrYVZ3MnZFa2NP?=
 =?utf-8?B?dk9IRUZ4Rm0yVVdIUE41dm1WUmFwZExtWnhxRjd2MDNWcDVaQTVHNy9tVnNp?=
 =?utf-8?B?RVdpV1BJeGhKbFltc01KSzFmM3N6WGNrUG9ZRE9mR0xjam1pOGhVT2Vub2lN?=
 =?utf-8?B?TjY2Z1BEYnJucDdnRitGa1E0YXk0dDFHU1BINDAvU3FmTGRhajlZM2JuQUdV?=
 =?utf-8?B?TE9EQmIrcG1Gb0FMeno5SmtOelltbUhPU1ZjdXFGTURmSUJnazN6eFpydEFU?=
 =?utf-8?B?VEVrQ01CZGlYM25odVJCaVBMRnhxb1g0WXRmWlZqdEhvQVFCWHhXRXMvMTZP?=
 =?utf-8?B?SG9YZ1ErRUlSRUxHRHRsMFJCb08wcCttbUhBSjBxbmswYnVSZnArK1VMZXdB?=
 =?utf-8?B?Rkw0S29sejJwSG1hYWZZZjBwbU1DTW9rU3ZwcldpL1lKSDZwcjJrVVNNYnp0?=
 =?utf-8?B?blJ1TWZ1Z1I5YVZGSUpkZUc4SUQ2d1ZnV25yNVJkdUVWWlFqWC9wc0p0KzVI?=
 =?utf-8?B?SWowVis2Q1hETlFDbjd4Z29GTG1UaGExc3I3U2ZKRlU1Zjl1QXh3V1ExOFY4?=
 =?utf-8?B?Yi9zc3d0dCtpb0NRWVdOZUJyWHRGU0tlUmR3RDFPVSsvWU54d3BocnF5bzZP?=
 =?utf-8?B?WWRzQzNFZnFFbkJQNUFSbXB6a3FpbmtsQjVPbHFwczJKWDd5TDNBV0cyV1V3?=
 =?utf-8?B?cllBTDhyT2ZXQ00xYVBMS3kreUdrMUNCS1ZTVzBlSnBIeDgxbHhKdnEzdllH?=
 =?utf-8?Q?2WmVXapC7sU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzFIZDlHM2VyOVVUdHpGV0RBV0RWcDlJakdoaWUzbWE1V2Q5Y2xUYWt1OVVp?=
 =?utf-8?B?dllRWEQwWEtmcjQ1OHpab0NBd0xnMXppc0ExZlhaTzV5dWRxaFhVUU5yZSs5?=
 =?utf-8?B?Y2w4cG1MNDJ2cWpFRjhRK1RIQjZKM1R3aXJzY0VYUHJ2OENFV3kvTzBsNkQ4?=
 =?utf-8?B?VFo5R2k0V1dscytEYmFaTkM4djJiaFNkOHJNVG5PTzZMMkZiV0c1a0hYSEh2?=
 =?utf-8?B?U2lZL2E5UE5HR0VBN3JiR2ZBZUQ5OUN3TFhvREorWmR1d0VlejZlVDMyTGFt?=
 =?utf-8?B?eUQ5ME44clkrajJEazRFZWNud2ZwVk5TaG1sWGM2WkNHNzhOdUR5M2d0cmZv?=
 =?utf-8?B?QXBKY0hQb1duelAzS0w4R2ZmalpHYStwQldrTnpldVRlb0FwRzRhVEZDRmlZ?=
 =?utf-8?B?eDFaMVBjclVWM21RYUlMbDNOa216V3pheVV5VUJmMVJLQm1OVnp6Mlg5Q2FX?=
 =?utf-8?B?bk9kU3c1UGI0dWpUbGlJZms2ai8vd1kwU0RoNmZEN0NndXErUFpyMnNkN2Jn?=
 =?utf-8?B?VTE5ck5VS0NiUm9raWRtbFhwVXJ0RUlrWEZ4czR4VzAyOVVrRWptZ1Q2UUdV?=
 =?utf-8?B?bmFyaUpBb2J0cmRSVnhOSTYrTUVxSnJxclVVVkJFdTZrVmNwd0s3WHdsRnRr?=
 =?utf-8?B?LzlkWFZ3bW5FeXNnZ3FnbnFUWDhpTmZEMVdHWlV5bFVBbWJEL3E2bGFIdk92?=
 =?utf-8?B?RHV6Wkdob29oa2ZnZmN6RjJPQUVZMUZ5YU1kY3FNMzljUGVBN1FadzJZaEJO?=
 =?utf-8?B?Z2hibU5hYnJ5QTJ0b3VsdHlBZVhLckRsUmdHdjhvTDkvbC9kYklDMCtBR3Ro?=
 =?utf-8?B?UlFxZXRDUUNrZ2lNSVNhVFp4eG5jSkxQKzIwd0VDa0NweU4wRktMSzNmU0lv?=
 =?utf-8?B?SGlYNnpBdWpTN3pqQUVOOXhiQm1CbmxkS0oxSEhyRHk1UnBhcU40QTdDeWYr?=
 =?utf-8?B?ZjFkamRWdkNlR3FvRG9nRm1VWGIxRjJBcDVuUnduNHdUWGtaSWc5MDQzdU1a?=
 =?utf-8?B?Nk4yYXhmNzBQOG1mL3BVZisreVYxakVnMWp3NkdqTVNnVlJHTVJLbzZOZlRh?=
 =?utf-8?B?VUhxaVUzSEkvN1BxRVJMcEx5b0N3WVBMYjl3RUhGMFY0S0c3aWxHbDNOazE0?=
 =?utf-8?B?em91OCtVaUpob29OQ0VVTzh0b0JnWnBrZ3RpdnhPQVdQTXc1bVVyNWlwd2gz?=
 =?utf-8?B?QmhMaDVydndZRHlJQ3lmVUtveWh6YzVlTjlaaGRmR1pQLy8wd2lNYndXZ2tH?=
 =?utf-8?B?aXRHd0FmZ3BBQjArdnZjTWFrSng4T2N2OVZ5dGNKeDRjK0Y5YmJzMThQYnI4?=
 =?utf-8?B?LzFnNzJCMjVSMHkvWXZzL0VGcTQrK1gwUE5HcVQxNW1mczFqMUZiRitXYlY1?=
 =?utf-8?B?OW14RCtGOFJ5YlFjTUczTnA0dFYxVnhqZ3RRcHJiMHVQVG9uMHB6WjNzUTZZ?=
 =?utf-8?B?T2pBeTNXTXBueTFZZkVjZkV6Q3JadUx4NG9xazBTNy9GTE9WNFpMNUxza3dh?=
 =?utf-8?B?czVtVVQ1S2p6WE9mWTNxSElGSTROWS9XajZjQ09hekFucDIvYmJiYVUwMVZy?=
 =?utf-8?B?c3c3ZzNjZWxHcmpZZnRhN1ZJaTBFTDhSV3l0WnZMQUd4WmdwTWJqMmVaSjlw?=
 =?utf-8?B?VXdjdnlWMUhqOG5WQUMyZGlsRVJmTkhQZk51UEp6YnM0UndDMm5RdWpwYkth?=
 =?utf-8?B?ZXBpSCtLOUlEalZRZGVPRWwyZTZ6SUZvZXBlTWorNVY5V1hqeXpVSUNsa1du?=
 =?utf-8?B?c1cwVlR0Nm9hVXZtTjNmdGxtUVYzWFJSMnhuWHpDZ2xNTHpoRUp0d1NOYjVQ?=
 =?utf-8?B?YWdQU2RUN1IvK3EzQXVPbHlVYnNYaFVaS0dLTEFQdWNwUjVQcy84LzRrbXNn?=
 =?utf-8?B?SWYzRWpOUTBEbEpwNm1tc2ZrQ2dDNmR6Ylo5K1hwYTdtbnBpczdMc3dlS1Nr?=
 =?utf-8?B?eHhzNHhrbnpKU3VBTVVmT0c0UE9haW43Mnkxd3J1Z2xSSW03Q1Zza1lMUWpK?=
 =?utf-8?B?SHMxVTVtNUdhejFRL2ZIMm1oUGt3dXZCc01uaXZPYTNqK2NwSjVuTTZmQW96?=
 =?utf-8?B?dWhNQVkyMnp4M0hPVzE2VGluc1k3S0IyVWVsckxEekdaWFFWdE1HZ0VvZWM0?=
 =?utf-8?B?V2Y1UDVzOEVySysxMkJaN1h6RmtiSFUyRzNwNWtSem5US3RWZEtoTURVS3Zm?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5399c0aa-79e4-4c32-d8f4-08dd8d2955f2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 05:38:03.5287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wpGNtRBXts9ADvED0rvk64KjQmQQIufyl071gATuby5jZ3R9fZw6Oq0JPs/FLN1VCJSZlB/9GPYXR3iHZ4O9v/xaQo6NGOKduQNJ6gRejLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4601
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> Add support for forcing the link bpp on a connector via a connector
> debugfs entry. During reducing link bpps due to a link BW limit, keep
> bpps close to their forced value.
>
> Add the debugfs entry to all relevant connectors: all DP connectors and
> on an FDI link CRT/SDVO/LVDS/HDMI connectors.
>
> v2:
> - Move adding the debugfs entries to this patch.
> - Rename i915_force_link_bpp to intel_force_link_bpp. (Jani)
> - Select the relevant connectors via platform checks. (Jani)
> - Use for_each_new_intel_connector_in_state(). (Jani)
> - Fix 64 bit division vs. 32 bit build when converting str to q4. (lkp)
> - Avoid division and addition overflow when converting str to q4.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  |   2 +
>   .../drm/i915/display/intel_display_device.h   |   1 +
>   .../drm/i915/display/intel_display_types.h    |   4 +
>   drivers/gpu/drm/i915/display/intel_link_bw.c  | 238 +++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_link_bw.h  |   2 +
>   5 files changed, 240 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 8d0a1779dd193..a9b1ec4cf0f75 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -39,6 +39,7 @@
>   #include "intel_hdcp.h"
>   #include "intel_hdmi.h"
>   #include "intel_hotplug.h"
> +#include "intel_link_bw.h"
>   #include "intel_panel.h"
>   #include "intel_pps.h"
>   #include "intel_psr.h"
> @@ -1325,6 +1326,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>   	intel_psr_connector_debugfs_add(connector);
>   	intel_alpm_lobf_debugfs_add(connector);
>   	intel_dp_link_training_debugfs_add(connector);
> +	intel_link_bw_connector_debugfs_add(connector);
>   
>   	if (DISPLAY_VER(display) >= 11 &&
>   	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 87c666792c0da..fe14a92ae8c65 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -172,6 +172,7 @@ struct intel_display_platforms {
>   #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
>   #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
>   #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
> +#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))
>   #define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)->has_hotplug)
>   #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
>   #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7415564d058a2..23e3e6f204741 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -550,6 +550,10 @@ struct intel_connector {
>   		struct intel_dp *dp;
>   	} mst;
>   
> +	struct {
> +		int force_bpp_x16;
> +	} link;
> +
>   	/* Work struct to schedule a uevent on link train failure */
>   	struct work_struct modeset_retry_work;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
> index a10cd39926075..b51b62e04fe59 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
> @@ -3,6 +3,11 @@
>    * Copyright © 2023 Intel Corporation
>    */
>   
> +#include <linux/ctype.h>
> +#include <linux/debugfs.h>
> +#include <linux/int_log.h>
> +#include <linux/math.h>
> +
>   #include <drm/drm_fixed.h>
>   #include <drm/drm_print.h>
>   
> @@ -10,11 +15,33 @@
>   #include "intel_crtc.h"
>   #include "intel_display_core.h"
>   #include "intel_display_types.h"
> +#include "intel_dp.h"
>   #include "intel_dp_mst.h"
>   #include "intel_dp_tunnel.h"
>   #include "intel_fdi.h"
>   #include "intel_link_bw.h"
>   
> +static int get_forced_link_bpp_x16(struct intel_atomic_state *state,
> +				   const struct intel_crtc *crtc)
> +{
> +	struct intel_digital_connector_state *conn_state;
> +	struct intel_connector *connector;
> +	int force_bpp_x16 = INT_MAX;
> +	int i;
> +
> +	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
> +		if (conn_state->base.crtc != &crtc->base)
> +			continue;
> +
> +		if (!connector->link.force_bpp_x16)
> +			continue;


Hmm we already have the connector for the given crtc. If 
link.force_bpp_x16 is not set, should we not break from the loop?


> +
> +		force_bpp_x16 = min(force_bpp_x16, connector->link.force_bpp_x16);
> +	}
> +
> +	return force_bpp_x16 < INT_MAX ? force_bpp_x16 : 0;
> +}
> +
>   /**
>    * intel_link_bw_init_limits - initialize BW limits
>    * @state: Atomic state
> @@ -31,9 +58,10 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
>   	limits->force_fec_pipes = 0;
>   	limits->bpp_limit_reached_pipes = 0;
>   	for_each_pipe(display, pipe) {
> +		struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
>   		const struct intel_crtc_state *crtc_state =
> -			intel_atomic_get_new_crtc_state(state,
> -							intel_crtc_for_pipe(display, pipe));
> +			intel_atomic_get_new_crtc_state(state, crtc);
> +		int forced_bpp_x16 = get_forced_link_bpp_x16(state, crtc);
>   
>   		if (state->base.duplicated && crtc_state) {
>   			limits->max_bpp_x16[pipe] = crtc_state->max_link_bpp_x16;
> @@ -42,15 +70,19 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
>   		} else {
>   			limits->max_bpp_x16[pipe] = INT_MAX;
>   		}
> +
> +		if (forced_bpp_x16)
> +			limits->max_bpp_x16[pipe] = min(limits->max_bpp_x16[pipe], forced_bpp_x16);
>   	}
>   }
>   
>   /**
> - * intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
> + * __intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
>    * @state: atomic state
>    * @limits: link BW limits
>    * @pipe_mask: mask of pipes to select from
>    * @reason: explanation of why bpp reduction is needed
> + * @reduce_forced_bpp: allow reducing bpps below their forced link bpp
>    *
>    * Select the pipe from @pipe_mask with the biggest link bpp value and set the
>    * maximum of link bpp in @limits below this value. Modeset the selected pipe,
> @@ -64,10 +96,11 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
>    *   - %-ENOSPC if no pipe can further reduce its link bpp
>    *   - Other negative error, if modesetting the selected pipe failed
>    */
> -int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
> -			     struct intel_link_bw_limits *limits,
> -			     u8 pipe_mask,
> -			     const char *reason)
> +static int __intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
> +				      struct intel_link_bw_limits *limits,
> +				      u8 pipe_mask,
> +				      const char *reason,
> +				      bool reduce_forced_bpp)
>   {
>   	struct intel_display *display = to_intel_display(state);
>   	enum pipe max_bpp_pipe = INVALID_PIPE;
> @@ -97,6 +130,10 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>   			 */
>   			link_bpp_x16 = fxp_q4_from_int(crtc_state->pipe_bpp);
>   
> +		if (!reduce_forced_bpp &&
> +		    link_bpp_x16 <= get_forced_link_bpp_x16(state, crtc))
> +			continue;
> +
>   		if (link_bpp_x16 > max_bpp_x16) {
>   			max_bpp_x16 = link_bpp_x16;
>   			max_bpp_pipe = crtc->pipe;
> @@ -112,6 +149,21 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>   						 BIT(max_bpp_pipe));
>   }
>   
> +int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
> +			     struct intel_link_bw_limits *limits,
> +			     u8 pipe_mask,
> +			     const char *reason)
> +{
> +	int ret;
> +
> +	/* Try to keep any forced link BPP. */
> +	ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, false);
> +	if (ret == -ENOSPC)
> +		ret = __intel_link_bw_reduce_bpp(state, limits, pipe_mask, reason, true);
> +
> +	return ret;
> +}
> +
>   /**
>    * intel_link_bw_set_bpp_limit_for_pipe - set link bpp limit for a pipe to its minimum
>    * @state: atomic state
> @@ -245,3 +297,175 @@ int intel_link_bw_atomic_check(struct intel_atomic_state *state,
>   
>   	return -EAGAIN;
>   }
> +
> +static int force_link_bpp_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = m->private;
> +
> +	seq_printf(m, FXP_Q4_FMT "\n", FXP_Q4_ARGS(connector->link.force_bpp_x16));
> +
> +	return 0;
> +}
> +
> +static int str_to_fxp_q4_nonneg_int(const char *str, int *val_x16)
> +{
> +	unsigned int val;
> +	int err;
> +
> +	err = kstrtouint(str, 10, &val);
> +	if (err)
> +		return err;
> +
> +	if (val > INT_MAX >> 4)
> +		return -ERANGE;
> +
> +	*val_x16 = fxp_q4_from_int(val);
> +
> +	return 0;
> +}
> +
> +/* modifies str */
> +static int str_to_fxp_q4_nonneg(char *str, int *val_x16)
> +{
> +	const char *int_str;
> +	char *frac_str;
> +	int frac_digits;
> +	int frac_val;
> +	int err;
> +
> +	int_str = strim(str);
> +	frac_str = strchr(int_str, '.');
> +
> +	if (frac_str)
> +		*frac_str++ = '\0';
> +
> +	err = str_to_fxp_q4_nonneg_int(int_str, val_x16);
> +	if (err)
> +		return err;
> +
> +	if (!frac_str)
> +		return 0;
> +
> +	/* prevent negative number/leading +- sign mark */
> +	if (!isdigit(*frac_str))
> +		return -EINVAL;
> +
> +	err = str_to_fxp_q4_nonneg_int(frac_str, &frac_val);
> +	if (err)
> +		return err;
> +
> +	frac_digits = strlen(frac_str);
> +	if (frac_digits > intlog10(INT_MAX) >> 24 ||
> +	    frac_val > INT_MAX - int_pow(10, frac_digits) / 2)
> +		return -ERANGE;
> +
> +	frac_val = DIV_ROUND_CLOSEST(frac_val, (int)int_pow(10, frac_digits));
> +
> +	if (*val_x16 > INT_MAX - frac_val)
> +		return -ERANGE;
> +
> +	*val_x16 += frac_val;
> +
> +	return 0;
> +}
> +
> +static int user_str_to_fxp_q4_nonneg(const char __user *ubuf, size_t len, int *val_x16)
> +{
> +	char *kbuf;
> +	int err;
> +
> +	kbuf = memdup_user_nul(ubuf, len);
> +	if (IS_ERR(kbuf))
> +		return PTR_ERR(kbuf);
> +
> +	err = str_to_fxp_q4_nonneg(kbuf, val_x16);
> +
> +	kfree(kbuf);
> +
> +	return err;
> +}
> +
> +static bool connector_supports_dsc(struct intel_connector *connector)
> +{
> +	struct intel_display *display = to_intel_display(connector);
> +
> +	switch (connector->base.connector_type) {
> +	case DRM_MODE_CONNECTOR_eDP:
> +		return intel_dp_has_dsc(connector);
> +	case DRM_MODE_CONNECTOR_DisplayPort:
> +		if (connector->mst.dp)
> +			return HAS_DSC_MST(display);
> +
> +		return HAS_DSC(display);
> +	default:
> +		return false;
> +	}
> +}
> +
> +static ssize_t
> +force_link_bpp_write(struct file *file, const char __user *ubuf, size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_connector *connector = m->private;
> +	struct intel_display *display = to_intel_display(connector);
> +	int min_bpp;
> +	int bpp_x16;
> +	int err;
> +
> +	err = user_str_to_fxp_q4_nonneg(ubuf, len, &bpp_x16);
> +	if (err)
> +		return err;
> +
> +	if (connector_supports_dsc(connector))
> +		min_bpp = intel_dp_dsc_min_src_compressed_bpp();
> +	else
> +		min_bpp = intel_display_min_pipe_bpp();

Alright, so for forcing link bpp to say 10 bpp (160 bppx16) for a 
connector supporting DSC will automatically force use of DSC.

So if an MST setup has 1 DSC and 1 non DSC panel connected. Setting 10 
bpp for DSC one will work but setting 10 bpp for non DSC would not work.

Overall I agree with the debugfs and mechanism to force the link bpp.

I am thinking from the validation perspective, how the tests should be 
designed to use this debugfs.

Something like:

->Check for DSC capability for the panel then force an appropriate link 
bpp (it can try lower value, the write will fail if its not in range)

->Force DSC on DSC capable, force link bpp for non DSC.

And then combination with forcing dsc with fractional bpp.

Does this scheme for tests make sense? Do you have any other things in mind?


Regards,

Ankit


Regards,

Ankit



> +
> +	if (bpp_x16 &&
> +	    (bpp_x16 < fxp_q4_from_int(min_bpp) ||
> +	     bpp_x16 > fxp_q4_from_int(intel_display_max_pipe_bpp(display))))
> +		return -EINVAL;
> +
> +	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> +	if (err)
> +		return err;
> +
> +	connector->link.force_bpp_x16 = bpp_x16;
> +
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> +
> +	*offp += len;
> +
> +	return len;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(force_link_bpp);
> +
> +void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
> +{
> +	struct intel_display *display = to_intel_display(connector);
> +	struct dentry *root = connector->base.debugfs_entry;
> +
> +	switch (connector->base.connector_type) {
> +	case DRM_MODE_CONNECTOR_DisplayPort:
> +	case DRM_MODE_CONNECTOR_eDP:
> +		break;
> +	case DRM_MODE_CONNECTOR_VGA:
> +	case DRM_MODE_CONNECTOR_SVIDEO:
> +	case DRM_MODE_CONNECTOR_LVDS:
> +	case DRM_MODE_CONNECTOR_DVID:
> +		if (HAS_FDI(display))
> +			break;
> +
> +		return;
> +	case DRM_MODE_CONNECTOR_HDMIA:
> +		if (HAS_FDI(display) && !HAS_DDI(display))
> +			break;
> +
> +		return;
> +	default:
> +		return;
> +	}
> +
> +	debugfs_create_file("intel_force_link_bpp", 0644, root,
> +			    connector, &force_link_bpp_fops);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
> index e69049cf178f6..b499042e62b13 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
> @@ -11,6 +11,7 @@
>   #include "intel_display_limits.h"
>   
>   struct intel_atomic_state;
> +struct intel_connector;
>   struct intel_crtc_state;
>   
>   struct intel_link_bw_limits {
> @@ -32,5 +33,6 @@ bool intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
>   					  enum pipe pipe);
>   int intel_link_bw_atomic_check(struct intel_atomic_state *state,
>   			       struct intel_link_bw_limits *new_limits);
> +void intel_link_bw_connector_debugfs_add(struct intel_connector *connector);
>   
>   #endif

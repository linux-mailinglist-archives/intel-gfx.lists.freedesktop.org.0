Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E11BFAB7B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 09:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D5CE10E6CF;
	Wed, 22 Oct 2025 07:58:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E2iZNyCQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A88E810E115;
 Wed, 22 Oct 2025 07:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761119888; x=1792655888;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FaBI6T2eA6QuIzixJJhbJLamjidzy8dyaPfIpr8nwCw=;
 b=E2iZNyCQ37NtNuUaXFbQbfT1wHpGrI6lgwcTkba4XEINM6sErDoHG1TT
 Nrnas4jaIJGsSrY4UJ6HYub+nszYLvJ6EZWIMRGzM8GpV5ZJqFm1PKRA5
 wC2bIwtV/quQAZ86l35nEgv58BNOWger5GyqTUMrEQRraAEMvHEWPnAgw
 JFN5YaxiJP7/ik0OvdqDdypZb3ldB+/lBf6QkDWySnzMO5+/nbPbFkAdB
 jBJ+eaRxhcy4WDXQEzUIi79HN8c4xDUXurwlAVo63a6ZkFGsPTNKmXZAE
 euNEpdjd1b18q2mPM0C8Bhf5UySnvJc8g6cwoUoRaOvPeZi8w328GZ8kG A==;
X-CSE-ConnectionGUID: Nems90CMQBmBtafZ23foMw==
X-CSE-MsgGUID: Horbi0f/QA2DcPy78WTtfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66900568"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="66900568"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 00:58:08 -0700
X-CSE-ConnectionGUID: /ip3s7SwTNWDXqycyHQlYQ==
X-CSE-MsgGUID: 9h0Ali/JTAmd0SpPAfTFXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="220996752"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 00:58:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 00:58:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 00:58:07 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 00:58:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LqMq3HfYMP6z19Zk37D1eJeZy40FGXvZ7uZQVRt3JglS482o3fivSkCbnLP+Hk9BHHdyrWaGIawOv7DcwjvDpQjtdOIA4888wTuhYVVQIMUIjSDr79Gjn3o37Us0ex7D49S2KVmAswKusWd8u0A8IIj0nb5BXiiVabSEoJEVgbKH/Anx6OenoZFi7y+Sv9H0Wci6VM3wCPBzaCYHIGBvqEFPj/WyzzJO/k+cAxXCRepCN9D0Lwn+av0iJSsKun45kiZjuRLQ+ariXv4LdArWBUHYdS0wR9e7SZy1G1wI/fTm4SBnEPZoswDtc9qVEEEWp7YX1oe1tBJhddwkB6QRRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0H9Br9l/2y0mVeu2E9NbpsQvS2Fhyq7P9x5fVi2/yKY=;
 b=TgN4Zr8B0KiRN5+9Lc0nexE9hQodadvH+4LhKO52Po7tgdnVkAqyofmSf+UnQ9nDM2XMtueqHCCLeLQ6uyVCHu0Q8l+JoW2nXjTmHo3f5jY1VU165aTrf9xrBMMi8uVFUJ5SfplI8i2hgbEOxvVCIPJTMTbZyf8EwR7OwjXfscWeGetQ7MpdhwjVZ8+5F5KEzzKCCQRAsdiq0GUMYeb5Odj+PtUTR5IJuUR34O604QOmz5aPDvAPyUsG2D+PKPZ6EQhs9UcEkNGv7rwEBVSdvnbATb7xnsdN4MT8ogCpVs6qX6SMAaYFUbuDEj5mMb2FcwKr6VWFrimbnPZoV0lorQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 by SA0PR11MB4592.namprd11.prod.outlook.com (2603:10b6:806:98::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 07:58:06 +0000
Received: from CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d]) by CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d%4]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 07:58:06 +0000
Message-ID: <40ee3418-b75a-44f5-aea8-0dca5fff755b@intel.com>
Date: Wed, 22 Oct 2025 13:27:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/25] drm/i915/ltphy: Add LT Phy related VDR and Pipe
 Registers
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0179.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::11) To CH3PR11MB7300.namprd11.prod.outlook.com
 (2603:10b6:610:150::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB7300:EE_|SA0PR11MB4592:EE_
X-MS-Office365-Filtering-Correlation-Id: fab8a010-1aff-4388-1857-08de1140bb98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?US95Yy9xdUk0dHAwMEtKYUtia1NtUHNrbldOek00UFc4VEZSdUJFcTI4a21v?=
 =?utf-8?B?NDJnL2FUKzQzbHhxd3phSi9oalVvNEUzR1ozY2RIMGhRRHAxNFBRN2o3eTJG?=
 =?utf-8?B?cFZsdmo5V1o3UFVtTFpUOURxTGdCeGJLbVB2S0l4YjNUcHNBdUtzS1NzdUFE?=
 =?utf-8?B?UkFDRHd6eTBwaWYrYnhtVVVNYXZRcTNRRzV1UjZ6bkVwWHZXMjN1RDdmakpZ?=
 =?utf-8?B?V2UxUUdBeHZGK2c2VVFRalBWSnRSMUN4RWY2UUJTbkZsVHJxYjdxQXp6V0U4?=
 =?utf-8?B?b2pMQ0k0YTJ6Y1VsZUtHV05iNjNsSTZTMjNKTWFsSk9GaEdvdHhtZ0FNVW9S?=
 =?utf-8?B?bC9TQXZBLzlYY3hiQ3g2cjFaZ3pSZGltUWRwTCsyM2t5blphWWc0MjNHVWdD?=
 =?utf-8?B?V05FSDZOOUpUNnk2c2p0Qy9POHdQanV5ampQbzRSZ2ZMYklSUmtqTE90KzdD?=
 =?utf-8?B?SjdobDRsSHNpOVF3TlZrUWNBNVVqWWg0ZS9ZMlZUbGRJTXBkalBtNnFoZmEw?=
 =?utf-8?B?d3lucnFpV2ZTN3krc2VRVTRvRmpJNUFPM21Wc0NSSC9yMVp1ZW5YNHdJVXpq?=
 =?utf-8?B?L1FidStHSm9GV3RXQ1lLc0hKUXlVR3ZIaDk0WGt6TlFZQmNhdWd0TmZZakEz?=
 =?utf-8?B?eWRwT2dMQXNKSEZBbmpXV2M5R3p6UzQyRFd3aHNjcng5cmtnU2lzNXlabldC?=
 =?utf-8?B?am5wN213enJhWjdIUitEY2FNNWFxbkJpbUtnSFp6Y1FzZXQzVWtyQlViT3Uz?=
 =?utf-8?B?cjNRR0RmVHJFS2E3cWZtRUFFR1o1TXY0YzZpKzFiYU1IcnJCWGh0ZVJGT0g1?=
 =?utf-8?B?UTF4bG9VUWJYaG5JSEM3b0tGVkd0Y2xOOEppTGowS2VKMnRDRDRsbW5GSTZk?=
 =?utf-8?B?UEFwUHNJMFp2bXZBaTVDUFFBd1hHOHBiT0Rib0dKVXlucUMyWmcyVm1la0E5?=
 =?utf-8?B?UWpSOStCL0lCWEZXbHMraDZhdW1STXhZeTQ3MXIrUyttQVJNeU5lWEFiZml2?=
 =?utf-8?B?NEVGMnViSWNnQ09qVE90TDI3bkxGdWZxZGxEanFBTndDcTlob2hiQ0F6RHdQ?=
 =?utf-8?B?bzJwWjZCVEwrSFp0S1l3UzVTTGh5TDdWc0dIRGJaeEltME9rZHdEQ2xmUlNu?=
 =?utf-8?B?NGUxRVhGbnZWc004ZkVjVVRDeTZoOUp5NmU5V3pQQk53MmtFKzZtUmlQeERU?=
 =?utf-8?B?TzNUNWthREpTVVMrRk4vQ3NsdEpqaVJVQlF0eFF6ZElNcjlONFZiNVpQeHBL?=
 =?utf-8?B?VW0yTUNQTVl1aTNneTZWdkQwWFlUQWtNaVlSQWplOUpKcXBqU2MxUWpNMmYx?=
 =?utf-8?B?NnpkMVliU0RMaVpzSVRMVnNreFhtRythMnNSMGdJUVgzNGNVbFo5Yk9FRTBy?=
 =?utf-8?B?QjRza3oxUlM4WDJzbTZFdjNHOUt4RHFjald0S3JKOStpVEJJRG9DNWhWN3Bj?=
 =?utf-8?B?VjNheityYVR6WTVremFrRmZUa09lUTlKazBLbmZ4SGN5Yis2VXJpTkFoVDQx?=
 =?utf-8?B?NStJbTJYNE1vcDhaZEE1UlJmTlN6czZXZmZneHg0ZUlwbjF4MzF5RnVPVGl4?=
 =?utf-8?B?QUxKYTZLeU9QN09oQ2hTdURSd3RLbjNPUUtvZWtNU2ZBakkvMkNUZ0dxYTZV?=
 =?utf-8?B?UDFzeDdkZmdGVmx2MWdjOUdoemJkdm9uMnVNZXk4bWhhdXFVSi92cXlydUt0?=
 =?utf-8?B?bGlSbTZEYTdtWUxmQ3dBYUdrSXg5OUxQRTB2dnJ6UXA3YTdRODU5Qm1MOUd3?=
 =?utf-8?B?UC9qcjZQemFEVFNTWGR1UGt4RGhaWm5Hd0l6MU1YTEdTcEtzOGJ4QjBhV0NK?=
 =?utf-8?B?Nno3YzRuOW1HYVd3eDU5aWJoalpQaDlLbDhaNE8zR2hoT0ROYTRVSDg4MG1y?=
 =?utf-8?B?R2E5cGdLU0pWdVpiS05iNHhCOTZLc0JQSXgwM0toeDVvY1NKcWlGMTNjV05E?=
 =?utf-8?Q?gtMQ6RCQmhy6OodinHQnnGhCpaD4DnJV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7300.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3dHQjVZaHcveklkZlQrKzVhTmF4RkRNQ2NXRDV6bk9WdHJYOHQ2S3l3b0ZC?=
 =?utf-8?B?N2ROcjRGQ2tYWlgrYTR5S0kwVWV4MDRHZCtUZXhKTk9vVmt5VWp3Z0UwcG5D?=
 =?utf-8?B?SE9aOUFLYWVQMWwzZHAreUR2anNIZHpQR2VrbWVOaWU3QjdUUG5HTGFqQldK?=
 =?utf-8?B?T2dNNDg3STV3Q2hFQW5XREYrQUpmelViZHNnaGdrZjErUUtFWkgvNDFpZFNK?=
 =?utf-8?B?d1M4MGhFRmVVV3EzRDZvWnNlZEFraGFqNUQ3eGg4dmJRcldwejB0NDAzUmxs?=
 =?utf-8?B?ZkovWTBJampDdGxNanVJSVQ4RjhjYXdDb2JxcDFsb1pWcnludDUvQVFVS2lz?=
 =?utf-8?B?OFp5K0Z2cGxVejMwN3MwdUtLWGNJdUJNOGI1S0hOL3BqRmgrMkhMMEJ3dnNa?=
 =?utf-8?B?aVhUeUhNZDNOdU9vcm52VEZZSkRPblRBV3hmaUNqblB3NHhoWmNJbUlseHlu?=
 =?utf-8?B?cExnbEdQb0t1VURKbWZKSThDSFhQZC9VdjdGckM2MW9wY2xyemw0V2xzR3ll?=
 =?utf-8?B?MmFVZ0ozK0dtTWwxcUR3bms4MVgzZWN6dm4wUCsya1ZTdFhycWlBbmhlNTVO?=
 =?utf-8?B?M0VGOW5SMXBaRFNHcUpyZ3hTeVU4bFhiRzIvWGpsbWNsSDlsUVU4TFBlaFho?=
 =?utf-8?B?NEJWTDA0WkQwQTdxOS9FMzBGRlA1V3Q5QmtOQnRTK3lVM3I4dDZCemVyYXRo?=
 =?utf-8?B?VDA1c3RBdzZXZFFWUmlVN1pOUDhzcmF6MnpQMmFDamZxeE45eGRwaStFRE1p?=
 =?utf-8?B?TVZpaEo3VTlQV1JmZTduaWdvakVENVBDSmI3U0M3VFgxdGRYY0RLaDZPekww?=
 =?utf-8?B?RzM5d1pMdGZMSTF6MzVqYnNBTnJ0cy9rdDFSUE5oVmtSVW50YmVES2xxdjMv?=
 =?utf-8?B?ZW5TUkVjSHRnQU5jR1k0bHQ0SWdFVVdJaDRSNjE2MzNwanU2RWgxcnY0UCta?=
 =?utf-8?B?SHhHdHhVOEdpZzN4UVZkUVhubm5ENjlGZWxJSmVvblVmYlY3S0lKM2tJVG55?=
 =?utf-8?B?WGxrRFhRVUpZaEtNT1NZK0dOa0VEUDgyeGRkaTFUbnlIb05QTDg3RC8yeVNJ?=
 =?utf-8?B?SENTYSt4VWwyZExXNmJnQS9xNWFrNjhrajJJQWdLOGhXQUZiYm4zSDVqd1dH?=
 =?utf-8?B?Q3FmaHJKdzlaSjVTR3dmT09RVUVMN3hxQS9paHFWR1UwUVRuVGdXWDl5OVgy?=
 =?utf-8?B?Rk9oQlYwS0dNcWNrQXNRemNDWEh3YW5MUnduYUZnUnVDYmtBT3N3ekphQTRp?=
 =?utf-8?B?YUJnc3JqOXpZdUJwRFVBckY0UGxwa092dWhva0pLMHUybEM2NmtTMEhQZ0ZH?=
 =?utf-8?B?QXVyL2pUUkFaQmR0WlJLK2wwdFZuaXJMZXQrUit1TVY2WENtRXREcGo3TkVx?=
 =?utf-8?B?KzEreXZGeFcwZE5pZ2ZqWGgvdFc5UDljRDlTNUdiOE9DQ2lWT2RaNm1UMzZH?=
 =?utf-8?B?K0lxSlFyMzNaTVMxUk9aYUVtWTZiQUpTN0VkL05LNS9HYkt5V3l4QXhRRnNG?=
 =?utf-8?B?a3BTZHo0L2RRcTY4TUdpSGV5VWNsOUREV2E0d0ZHOUZhcUdZN2k0MUsybERp?=
 =?utf-8?B?SGVjdllLSHhFdkpKTU5YVFRTdHpnVG1ieXEvOFVNa0E1bkNadWJnczhvYVVv?=
 =?utf-8?B?VktKT0xsZ3AwUVc5VW5Wc2VoclFUVzNuWnh6QmdSVUErY25KbGs2WExoUGVU?=
 =?utf-8?B?eUxQNHVjbTh0Z2VHSnBObHkzQWZ6KzZSRHc4MjhTbG1pNW1xYmxQUThoNzYw?=
 =?utf-8?B?bEM1aG9QaXBCRHF3bjJ5eDhOTnUxSkNZMm9BUWlzT09hVHBBUVYrUC9FTWVj?=
 =?utf-8?B?bFJrZ3dzSndlcVlIYmt2djAzclVwUUc3MmxOTTBOelpwd3lwWkFXYjB5MG5L?=
 =?utf-8?B?QWVtZ3c0UUZWeHJJd1NsbEVFeE9rclk1c3JJUk5sUWNOVGdIOXV1QlR5LzN5?=
 =?utf-8?B?dmhvbi9kRGU1dWdWVUZpTWZ3Y2oxRWRaSlZjWjhvOVFCQVhaaEhJdzBGZ2dY?=
 =?utf-8?B?S2dQcTljOEZ1WGFZMHJ4Y3dnYzBEdEdtNVR6Z3NrNzVacjFPTVhpUmdLVUNE?=
 =?utf-8?B?WlB2d2xPNnFKc21ldVVBTTFHS0lSeEtFckoyNlhSa3pqMUVlOGVqNDIrZUdD?=
 =?utf-8?B?OVFBMVM5M0RybGlGVFBVVlFlS0k3NHZncS9LbW9aVFBvUTNFOWgwMU5TOVdW?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fab8a010-1aff-4388-1857-08de1140bb98
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7300.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 07:58:06.0010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CE6aDY2rI2u837cM4lEvXdPZWxuBjs8BxkcixBAVf+SOqVGrJ5+jBbLLLFmtwDBgXlAimHV/3M1FfjqouV/5Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4592
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

On 15-10-2025 09:37, Suraj Kandpal wrote:
> Add LT Phy related VDR and pipe registers into its own new file.
>
> Bspec: 74500
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  | 27 +++++++++++++++++++
>   1 file changed, 27 insertions(+)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> new file mode 100644
> index 000000000000..499acb1975d1
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: MIT
> + *
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_LT_PHY_REGS_H__
> +#define __INTEL_LT_PHY_REGS_H__
> +
> +#include "i915_reg_defs.h"
> +#include "intel_display_limits.h"
> +
This may not be required!
Upon removal of this

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> +/* LT Phy Vendor Register */
> +#define LT_PHY_VDR_0_CONFIG	0xC02
> +#define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
> +#define LT_PHY_VDR_1_CONFIG	0xC03
> +#define  LT_PHY_VDR_RATE_ENCODING_MASK	REG_GENMASK8(6, 3)
> +#define  LT_PHY_VDR_MODE_ENCODING_MASK	REG_GENMASK8(2, 0)
> +#define LT_PHY_VDR_2_CONFIG	0xCC3
> +
> +#define LT_PHY_VDR_X_ADDR_MSB(idx)	(0xC04 + 0x6 * (idx))
> +#define LT_PHY_VDR_X_ADDR_LSB(idx)	(0xC05 + 0x6 * (idx))
> +
> +#define LT_PHY_VDR_X_DATAY(idx, y)	((0xC06 + (3 - (y))) + 0x6 * (idx))
> +
> +#define LT_PHY_RATE_UPDATE		0xCC4
> +
> +#endif /* __INTEL_LT_PHY_REGS_H__ */

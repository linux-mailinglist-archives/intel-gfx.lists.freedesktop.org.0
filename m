Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFUQNvNXjWkf1QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 05:32:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2135C12A510
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 05:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0942410E152;
	Thu, 12 Feb 2026 04:32:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wm0yZCLx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F123910E152;
 Thu, 12 Feb 2026 04:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770870767; x=1802406767;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5bghSDT5k3hcLym3YiVxjxyp1vo0/bavTP3Ay+6S/Ic=;
 b=Wm0yZCLx3NZJ3byk+hPs20JglkiBdDVHSrKsXP9JUgzXJBOXmknKQA8T
 aiNv44hA1QOMN3FG7IKAcAAlZwQElRoarVo/hPuvu3DfncQ4y2zHz+jPZ
 kpBjVMTxoYTYw/im7vAfxsEdpeUObxaR36+y4f9e7C+I6H4bJTmiRWQrf
 a7bWC2wFbAgeBqy4nN2T5mOEvWGgnF7HExF016Du7LsbPKnHvMwtnrix6
 TayM2cutdpLbrnNnJ1UVx1Vb41OMAxZN7f4MgOREqk2AvGw+xLUvCtDT/
 xhrPUsYE6Ri3hU3F9kdtFcwTRMhlQ4RYd1QqGCrEyy98MtwiuAVO8u7Zr Q==;
X-CSE-ConnectionGUID: FOBJ3CSuQEygDoXQt7u6mw==
X-CSE-MsgGUID: 4lYS8C9RT026Vz8ubYvrNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="72080059"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="72080059"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 20:32:46 -0800
X-CSE-ConnectionGUID: tEVxXoPpRK+d0wImVB4nDw==
X-CSE-MsgGUID: Un/fWDJRSTKd2HMNni2pTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="212306718"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 20:32:46 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 20:32:46 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 20:32:46 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.26) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 20:32:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jl3BWBNPdey+gCIcdomX1dYdSw14/K+nirci6pui1/+wA2Obfoyx9Fc2nciEwnBSadKVusCKPHakN8UJjRSek1Bf/StfVI+bWARvH4VVg2VEQGjtdNSdLVZK/KOXyyQJhz1kLFCj8ZNyCEOn3pxp19lapn0RovnKvjVV+SExOIDpturUbh7KVron/NjFc6H2lzjqFRtw8Uf1tMYjnCQxs1h1NnitwJ3CcpoE+XLiiPYLmX9UKP27Nnz5hQe9nYu3z+BElOUdhVXclMlQT2L7b9EiT5hU5QGVmFgXgGRmS2Po+z7BKsdQt1VCM8s+MwOrUV5rJwBvV7ycVNLCopUFBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5bghSDT5k3hcLym3YiVxjxyp1vo0/bavTP3Ay+6S/Ic=;
 b=dY0CHzg042ibbZbnVyV3K38vTIeM0loVY3rXxiGr5wV6wv+R2/0BjIu8+QDtkjblh3+F+M1/VJYrtPHNcT8Otkxb1XRcatFlNfRgvK/I8ZWQqj/yeAtocJviTyBG2M2zHeyyZvPgWijOhCrGQaRvuldvRIO8qraFkl342R9gTSJw5dhmzyreYYTlrUDci2mu3r3+H74b2+BoBcZbtfuljLx3/3V9c89QSyh8gXwd2O/kfyWM0+LhOUFi467GJgk13Xdk6VzK3s6YC/x52z6r5KTKjebCkvEz7K3uxr0J8gxUPqBXDP7A1kfkl6TW9rKGT0cy9gsP26umvhH5BQuDjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by PH8PR11MB7045.namprd11.prod.outlook.com (2603:10b6:510:217::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 04:32:43 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc%7]) with mapi id 15.20.9587.013; Thu, 12 Feb 2026
 04:32:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/display/cx0_phy_regs: Include Soc and os
 turnaround time
Thread-Topic: [PATCH 1/2] drm/i915/display/cx0_phy_regs: Include Soc and os
 turnaround time
Thread-Index: AQHcm9ZK0F7UjMLBc0qxaupFm9Uqi7V+eMQg
Date: Thu, 12 Feb 2026 04:32:43 +0000
Message-ID: <IA3PR11MB8937577487CF1E0C944EB633E360A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20260212-timeout-v1-0-591fa766e8a1@intel.com>
 <20260212-timeout-v1-1-591fa766e8a1@intel.com>
In-Reply-To: <20260212-timeout-v1-1-591fa766e8a1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|PH8PR11MB7045:EE_
x-ms-office365-filtering-correlation-id: ec0e837b-0f7c-4eda-5e5f-08de69efc383
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?VWZ5QkYyQUxoUHZ6ZHZaM0NCZ0c2RWU4UytzdzdleUZnNWhTNVU0Q25RZnNi?=
 =?utf-8?B?WVoySTNHbmRVcGJLcmZUb2VsUGw2bWVNS21qVlRtWCtucFRpcU1vODJLUllY?=
 =?utf-8?B?UEVscDNwRjVzT1Vubk5iTS80Zmw2eVhqRXpQZndkS0FpV1BZUXJlNkFCY0dD?=
 =?utf-8?B?SWRmTTRSbkJGY2tFT3VwSkY5MUJIS1N5WXRqbktEbVkzb2htUVJOSmhOY09a?=
 =?utf-8?B?akQ0bTZ5aWhnZ2Z2UEhqVU1NTXdlRTlscVVmMDNwUm1UV2hKNkJId0o0aEVJ?=
 =?utf-8?B?VVRXYWgzWU1sdXdaZHhLOFlBY2NFQkpoRlRvM1NtaDFQdVhTSDVPUTgyZ3Ji?=
 =?utf-8?B?dkF0WHNPWkpFTkg1aFFJaXhpWGFuSUNmZHRkVmI1dGRCRTFyYUZjclpiK2RH?=
 =?utf-8?B?SzhOUkJ2M0dZS2o2TE1oWndkQkpqTi9Oczg0QWNFbWoxbENHbFhvUTlGeFE0?=
 =?utf-8?B?bFBuMSs5ays2RDJJRkV4K1gzTHk0Q0RHYVA0ckJBSGxUazZHWlNaV0tHcTg2?=
 =?utf-8?B?OHVnTENPdWV0d3ZCQXlqajN5alNmMUxHRkFOWDJ6T1dxbEtSVk5iUy95eEIy?=
 =?utf-8?B?TTN4Z0RrendzZGp5VWo4d2hBRkJpNjdacnBrblRWdTd2TWFhZUY5Wi9RZFE1?=
 =?utf-8?B?ZEMrRE93Q3c3bXp4cHBHSmhjZlVIT2V5Y3JpOGRNRnQ2V0RDbWsyU0ZuSXMz?=
 =?utf-8?B?R1RNWGY5THp5MlJmM1RrYkNKYWQ3a0hKT0NvZkNhSGV4ZTdvZEczOFErME9M?=
 =?utf-8?B?b1JoamJDaGYzeXB1TjNDUGMwSk82N2QxVS9zZGg2OXFNK3JUM1I1R1luVy91?=
 =?utf-8?B?ZnVac0wwRUFwUVlPTmdMUVlnR01RNk9xc1N1SlRKNlZnNFJhYTZYY2hGbWFK?=
 =?utf-8?B?YUFNRlh4eG1Bdm5qS2ZPd216aVIrdStZVWpkckFUdDNVa2pJd05LN2l1czcy?=
 =?utf-8?B?ZHFmaGQwNUdYeDdKN1RIRmhIbC9OTzNxODA0Y3hCYzF4V0p0SWl5UEdJTXZJ?=
 =?utf-8?B?ZUFtVjlwNE13S0N6Vm9xWEc0ZGVyMFRsYURWMWsyaEoyM0NxRm90ajFNY1pG?=
 =?utf-8?B?TXBBYUNWbWswQUtscnJBZHl4UG9vaEhkeHJpbUxiWUMwcnpDUk5adDZibDNj?=
 =?utf-8?B?bDNTbzRJaEFoWFhyTm5mRDBrZG9NdzhkRVo5TGI2cXB2ZnF4bmY3VWVIbzVG?=
 =?utf-8?B?WW5IRGE2NlRudjNrRjVxOXFuQ002Zlh4cEMxZmR6ZjJsWnZCNzhCcGJQVDNy?=
 =?utf-8?B?WUtxckJURU5CeWx3MFpGZDQ0cnJwYmxMMTFSZzF1Y09JYVhxWk5RTWhmaUN4?=
 =?utf-8?B?R1haSVRKdnoxY0gwNW5TcGtiR241ZXpBWVBIRWZ6MWFMb3F3UjlMbDNLQnBO?=
 =?utf-8?B?OVZWbmpwUUZPanlJSFBsZHFUTTRwRnVBK2NTZTZicmt1b2lSMUNEYnIxcGx4?=
 =?utf-8?B?NGNEdnp0RzVQcDcwWlBDMitHcGFmemZwQitVbGpMMTFuSEVCN1hwNkcwVGRE?=
 =?utf-8?B?SFpGbFg0MUdGbUduNDVhY2dxdi9aOHlVcnFXd0QrQW9lbUdndDd0NEo5TWZi?=
 =?utf-8?B?UVYySlQ1M0w1V0l3YU5ENkFzVXJrZTBLWlZJQjA2VmRuRUw2SWV2eUsyZGlP?=
 =?utf-8?B?M2xRS3h5c3lwZ0x5VS9MWWRrNnM1SzA0a0x5eWRvR1FQSzAvZ2lURThVdERt?=
 =?utf-8?B?U21NczFZbWFabThMQndkekxwZ3BzaVp4eUlES1ljR3dGL05aSzhpaHBaaHdK?=
 =?utf-8?B?WWNBelc2L2dmOFVWdzdqVW9RT0t2cmZmLzluSFdYUGtQcmlEaEJuMG8wMU9p?=
 =?utf-8?B?UXk5WGdHY1kvSFRSR2pHZjNhNWdKZ0R0bm5FN2pkckx4b093TS9IMFNjdm1M?=
 =?utf-8?B?dUwxSlp1bVhFUzFPTGFjckVRTzVvK3dscU5DVVZQc1NvMW5rbUo2Zm9BK25y?=
 =?utf-8?B?VzhkYWhjN0Fra09iOU5ueVpHWGFHTDlEV3YzYTd3Y1NydTZadUVJV1JnTHlw?=
 =?utf-8?B?SVJzcFA3UG1ncTJxVU9mcnhIZmhXVmxPbGZoZ3M1K0YyNUIvajRMaERpSXh3?=
 =?utf-8?B?R2JWQmViTDU0LzNyMmZ3UEJHUWFXellqK1padnRGZEZiblBLWEdaOXpZK1lm?=
 =?utf-8?B?OU0vcEZqMUwxNHFHWk4rUFpITXVYYVNVc3I5N29iQ0VBc1J4Rkk2K3IvRndO?=
 =?utf-8?Q?eH6+goLCBqyzIljl0w9UPdk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3A3RzdwUHI0L2xQL3pQQ0JIMzBOSlJpa0tBb09MVVk0NXRXRWVHSU1Sb25w?=
 =?utf-8?B?bmRZNTVKNHgwc2dYZVd6WlprZGh3VHFjR2c3aHNxemJmcy9wOWhYOHoxakE3?=
 =?utf-8?B?dngwVENRbXgxeFBxaHBtNXJ4ZDBoOW5qb2twQ1lyeXlwVktjUllLNDFnNHB0?=
 =?utf-8?B?dk9hazl4b09sb0pTOGRHcUg1dC9FM0ozNnJyN0RFMDFPYkx5Nmp5aHVRa0NV?=
 =?utf-8?B?RWQvb2lhN29LdmxOWDY5RXNacUtQTEtjMmdGT2ZiQ2NDU3NpbEozbDQrTXJT?=
 =?utf-8?B?cmtPcFVlczZDU1gzWkQza0sra28xYm1mRDJjVHBzcEZCbS9KcVRpQXNPRERV?=
 =?utf-8?B?VytDOGFBWnhUaDViNUY3TzNoVXFpdXE4TnBnZm1HVGdod0x6bDdrS2NSeEdl?=
 =?utf-8?B?azUwdmp0WlVSYzVnemRtVWVkemxjZTdXcnF0MlMzNkNTbm1Zb25hUnZzWDhI?=
 =?utf-8?B?bG5nZ0htdmtFVzRNV0hCVlBDQ1Fka3d0SEw1TklSdEU5NTYwRFY3aEpUSExE?=
 =?utf-8?B?TlQrZ1JOS1BEQVFNTjBrZyttQWxKT1RaM3hBSTVaSlRSUm85SWIxRU9teXBR?=
 =?utf-8?B?djNGczdkbng1SWNpUW5RQWFBenhQTUUwRjAwWXU1aW5DNWk4ZGlFcVJ5Nmp4?=
 =?utf-8?B?QjAreXYzYkdBS0hGbDV6NVVqZlkxVDArbUZVZGZZNVRQOEFnQ1RvN1BiaHdt?=
 =?utf-8?B?L3lMUnJuNHpZRHBFUmdMNU1rRGlYL2g5VkdnMG1peUpzWGgvOHBJUk41YmtM?=
 =?utf-8?B?YjR2WlNFeXZLVUhuRTQyeFFPT0puSXE0cDl1SWRwdTNvNG1qaVlHUFZpVEw1?=
 =?utf-8?B?MDZiWlZrT2ExeFErQ0kxQzc0RlZDeHBabHgwUll1S2VZMmRUY0RVb3hybEFr?=
 =?utf-8?B?U3Exa3oyc0dYaTI0SWFLdFNjK1RwNUVLQXdiSCtodEI5djhnNWIxTzlsdWhZ?=
 =?utf-8?B?b0wrSG1GbW5aUWxMRVlZeVpCTjN0Nno0TG45LzVNcE54emhjbG5pazc4blVN?=
 =?utf-8?B?OG5kOG53L0JxYlVoa2ZqVGNaUlJLUVU1N2xWUy9hcHFSVXEzZ2V5aUF0cEFp?=
 =?utf-8?B?YVRCV1hDL3lNYWJKVmNoSlp6RHpyVytHR1FOUkcrTUVkbUZVNTdUTW0wWjAx?=
 =?utf-8?B?NmRmOXdmRDdMWVVwb3pHYmNnby9NSTNReE1NM1J5clRvZCtvU0gyRER4THZ1?=
 =?utf-8?B?WFFLV21WcnIrNmNQTWJaWThBZlJRMGg3cmRidkpXUWJhazdkeTN5RHM4L0x1?=
 =?utf-8?B?cFNwYjhxdTNDMUE3ZzVGeWMzeWdyd3NjUkRJOHNRaENKQm5tOWI1eHgwS0JL?=
 =?utf-8?B?ZDZiWUNTeHZkOGRSZ0hKMXl1cFNsZ1pRMVAyellWMUk4Z29SbnBRcUMwTUd4?=
 =?utf-8?B?bEhUL2xxTnUzUGVxY092RlJhcmk1UlBFa2Y2T3hOMllCSjBweFhGUHNtYXRS?=
 =?utf-8?B?K29QSVFkQUVXN0tZQytpeU1tcnZqY0dCV3RCOU0zWDBpRkduakFXL3dyN01C?=
 =?utf-8?B?dHErWVZ0UHdYNGtZOWQ3L0tMYVlBdWpCMTRURG44dGhoK0F1WjBiZ3I3dEdG?=
 =?utf-8?B?VzZjYitnQmM0QjVCdGVRSDJqbjVqbVl0dTlhZU82QjJIZ1BqVEVjSk5jcitD?=
 =?utf-8?B?aThJTTB6em1uSTllMW53dVRUcDZjTDFBUHVVU25FdWs0YXR1VnArSnpKMlpv?=
 =?utf-8?B?c1QvVTJwZ05HRFFycEpTejZSVXZ6UE5zVkRaeEo1L25xNFBOdVM0bStOMlNK?=
 =?utf-8?B?ZFJvVHoxd2dGN2xZaENhUXdzekpOT2x1OFFDQ0wzS215QWpZa2pTdFhYSnEv?=
 =?utf-8?B?KzUzbCtMTUlDQ1dwc2ZGdzBJSnlNNEFYNTllME9EaXlvSVAvTDJraERtUnZy?=
 =?utf-8?B?dFphS1BGZDVxU2NiYkV3T1IwQ0kxQk5kazRwb2U5Q2IzWU5MOFFKZXlXaW5t?=
 =?utf-8?B?ZjQ1RlNQRUl4T3U5MlREd2FGbjh3OUhWWU1uMHpOcHczNGl2MXRuQUpZYzk2?=
 =?utf-8?B?d1A2dGFScVVsQy9NM0JNZ0dYV3JBdUVKQW1VSkZ1QUFPcmJlK2pLT0t5UHRo?=
 =?utf-8?B?SS8vVUl3WVNCTE1pbmljaUpINGVBejNRNmxTTWZDYlpkV1A5aXhUR3lYQjJp?=
 =?utf-8?B?TDZQc3VrNU9kYmNTeWZoekM5SnoyQyt0VTA2eU5DMkFEQkZ5VHVyYjUzNmE4?=
 =?utf-8?B?ak1adnB0ak94UmFUUzNYc3c0YnM2cTk2dGJSbkFENXFFWmRQTHNtblhQeVJG?=
 =?utf-8?B?T3NmZHRFR1NPbVNuSkJNQURTVWI3K0NhUnlUMlhSbGloZ1BpYllKSmhvV3Fi?=
 =?utf-8?B?d0tRR2RxZDZkMEtJdWVLcmJRTVFEQ3hjOUN4KzFRSGl6aS81SCt3QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec0e837b-0f7c-4eda-5e5f-08de69efc383
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2026 04:32:43.1200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eRHtC6MTjOj+N6zXYGPDEqQlizIlx7eXCcmmFB4GgtMd0Mk/hWa60kLBKH7h5v1RfYkXGABzdcR/cvWVH1yW9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7045
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2135C12A510
X-Rspamd-Action: no action

PiBTdWJqZWN0OiBbUEFUQ0ggMS8yXSBkcm0vaTkxNS9kaXNwbGF5L2N4MF9waHlfcmVnczogSW5j
bHVkZSBTb2MgYW5kIG9zDQoNCiogU29DICAmICogT1MNCj4gdHVybmFyb3VuZCB0aW1lDQoNCk5p
dDogVGhpcyBjYW4gYmUganVzdCBkcm0vaTkxNS9jeDA6IA0KWW91IGNhbiBrZWVwIGN4MF9waHlf
cmVncyBpZiB5b3UgbGlrZSBidXQgeW91IG5lZWQgdG8gZHJvcCB0aGUgZGlzcGxheQ0KDQo+IA0K
PiBUaGUgcG9ydCByZWZjbGsgZW5hYmxlIHRpbWVvdXQgYW5kIHRoZSBzb2MgcmVhZHkgdGltZW91
dCB2YWx1ZSBtZW50aW9uZWQgaW4NCg0KKiBTb0MNCg0KPiB0aGUgc3BlYyBpcyB0aGUgUEhZIHRp
bWluZ3MgYW5kIGRvZXNuJ3QgaW5jbHVkZSB0aGUgdHVybmFyb3VuZCB0aW1lIGZyb20gdGhlDQo+
IFNvQyBvciBPUy4gU28gYWRkIGFuIG92ZXJoZWFkIHRpbWVvdXQgdmFsdWUgb24gdG9wIG9mIHRo
ZSByZWNvbW1lbmRlZA0KPiB0aW1lb3V0cyBmcm9tIHRoZSBQSFkgc3BlYy4NCj4gDQoNCldlIGNh
biBwZXJoYXBzIG1lbnRpb24gc29tZXRoaW5nIGxpa2UgdGhlIHRpbWVvdXQgaXMgaW5jcmVhc2Vk
IGJhc2VkIG9uIHN0cmVzcyB0ZXN0aW5nDQpXaGVyZSB3ZSBvYnNlcnZlZCB0aGUgbW92ZSBQSFkg
c3RhYmlsaXR5DQoNCldpdGggdGhlIGFib3ZlIGZpeGVkLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEth
bmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEFydW4g
UiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdzLmggfCA0ICsrLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5X3JlZ3MuaA0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdzLmgNCj4g
aW5kZXgNCj4gNjU4ODkwZjczNTE1MzBlNTY4NmMyM2UwNjdkZWIzNTliMzI4M2Q1OS4uMTUyYTRl
NzUxYmRjZjIxNmE5NTcxNA0KPiBhMmJkMmQ2NjEyY2JiZDQ2OTggMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdzLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5X3JlZ3MuaA0KPiBAQCAt
NzgsMTAgKzc4LDEwIEBADQo+ICAjZGVmaW5lIFhFTFBEUF9QQ0xLX1BMTF9FTkFCTEVfVElNRU9V
VF9VUwkJMzIwMA0KPiAgI2RlZmluZSBYRUxQRFBfUENMS19QTExfRElTQUJMRV9USU1FT1VUX1VT
CQkyMA0KPiAgI2RlZmluZSBYRUxQRFBfUE9SVF9CVUZfU09DX1JFQURZX1RJTUVPVVRfVVMJCTEw
MA0KPiAtI2RlZmluZSBYRUxQRFBfUE9SVF9SRVNFVF9TVEFSVF9USU1FT1VUX1VTCQk1DQo+ICsj
ZGVmaW5lIFhFTFBEUF9QT1JUX1JFU0VUX1NUQVJUX1RJTUVPVVRfVVMJCTEwDQo+ICAjZGVmaW5l
IFhFTFBEUF9QT1JUX1BPV0VSRE9XTl9VUERBVEVfVElNRU9VVF9NUw0KPiAJMg0KPiAgI2RlZmlu
ZSBYRUxQRFBfUE9SVF9SRVNFVF9FTkRfVElNRU9VVF9NUwkJMTUNCj4gLSNkZWZpbmUgWEVMUERQ
X1JFRkNMS19FTkFCTEVfVElNRU9VVF9VUwkJCTENCj4gKyNkZWZpbmUgWEVMUERQX1JFRkNMS19F
TkFCTEVfVElNRU9VVF9VUwkJCTEwDQo+IA0KPiAgI2RlZmluZSBfWEVMUERQX1BPUlRfQlVGX0NU
TDFfTE4wX0EJCQkweDY0MDA0DQo+ICAjZGVmaW5lIF9YRUxQRFBfUE9SVF9CVUZfQ1RMMV9MTjBf
QgkJCTB4NjQxMDQNCj4gDQo+IC0tDQo+IDIuMjUuMQ0KDQo=

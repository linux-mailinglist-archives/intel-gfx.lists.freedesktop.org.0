Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIP/DNPOgWl1JwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 11:32:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 627AED7B78
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 11:32:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB9210E323;
	Tue,  3 Feb 2026 10:32:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R8QofjO3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4660510E323;
 Tue,  3 Feb 2026 10:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770114766; x=1801650766;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Auj1tBZMFL8+oNYAEQjg+4QjJ9nEvumeBE8aA8b+3+Y=;
 b=R8QofjO3WakPpvofnAudhecknFAeo83W5gePwzsmqaNM39pYKUyUCcob
 HEGQ5CXZJaAOFl1MCAvIjGj/lKqraMLR682HbMDUrv+OudANtvldU/f8h
 CjitqzqJYuthzYBVEpLK60zJa+OsAN8m+NLhdAYbANkqIGnGuZ2WHbu7c
 j84bMdlB1TArEYx+HWaD2qwzcwdNrhd9EbJFEXv3powa32b5XmTGEugzX
 A1WZY0EInnfOuLu93gfjCUis+O/9qqo80ydIiENbEeDK8SPnq84e/QvYw
 ZglOrFKj3zpMYURj7kZvyEndM87pnZxO5Wy3O8AXqfTsr3UQcZDkzyTnw g==;
X-CSE-ConnectionGUID: w3Kv97X6QL2Mmixzj1yGLQ==
X-CSE-MsgGUID: ynmzqS23RdGONZRxYvFxAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75139063"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75139063"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 02:32:43 -0800
X-CSE-ConnectionGUID: mR46/yusRSmCF/FKWlD+fw==
X-CSE-MsgGUID: Q918ZrjLS4WvfDLVLQAFrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="214581013"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 02:32:43 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 02:32:42 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 02:32:42 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.42) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 02:32:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TJLWAZY/epiTZPA5VY1wBN5L2mYs/JaxGbKxLm1KZnMDAB/WHOgPdWqOS5vKrU/jGEh725aeXfoRaKW8pf0xF/TpX+UYYnsEgENe5mtmOOHuNqbLLOMYDyc5bfOfHUND69wTvz/wXsW2EBP5Iwvdc16bJMNcqitBvoD+b2O9H+NheCMUfSXQiuAIZskU1rNXtuzuV5heP+OcmoMk+JjgtXg6Jed1GcPEuLmhPZbUXm4Pb4mS2iRuJPK3+kXz/Kmue8FeXJHEeJLFdGNEryyJ6SHYZaKG2+UF1XypSetXCyLIbgyozsMyCdcfRHyCnRN4sLEAp63GI8KhORQT0arUqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Auj1tBZMFL8+oNYAEQjg+4QjJ9nEvumeBE8aA8b+3+Y=;
 b=Dz1kWiFnCJNfCua1SSMU/5lNxwIKgx5cRMQBPHSpBx1zK4yP7SkPvoUV3OKTkfiZF858qfWT+lx13L1/pBO4Y7wPqcRgAVL7BLGYwEU80tj001/UTZbZapPTpIHSe6lOtzYWBOcPXkoVdd5X4kySDKmqqbXSVWuCaTv8Rlz/cNVEFU1GiaG2CzR27gB4uCMLcWoE3jXWcxtNKKEMzHLvWMbe6MVJWCLA/PeS80v45i3Cv1zzg1ePTkikU0JwJaEJX7bv6pm+XCKKGbEJEAedZiY+I9vQIqnwtz0GSxTqcnlg6iVO41OpOBk2eOgkpcHzpb4p+Cs6TU/P91lG8SDwbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CO1PR11MB5124.namprd11.prod.outlook.com (2603:10b6:303:92::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 10:32:39 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%5]) with mapi id 15.20.9564.014; Tue, 3 Feb 2026
 10:32:39 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Subject: RE: [PATCH 05/16] drm/xe/xe3p_lpg: Add MCR steering
Thread-Topic: [PATCH 05/16] drm/xe/xe3p_lpg: Add MCR steering
Thread-Index: AQHclI45X2S1cLz9Ck2x+13cYKB/aLVwxrBg
Date: Tue, 3 Feb 2026 10:32:39 +0000
Message-ID: <IA1PR11MB6266F2346F428242E7F37C50E29BA@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-5-653e4ff105dc@intel.com>
In-Reply-To: <20260202-nvl-p-upstreaming-v1-5-653e4ff105dc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|CO1PR11MB5124:EE_
x-ms-office365-filtering-correlation-id: 8eee9064-d8f6-4578-6808-08de630f8e36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RE5WSzJCTmluZjNzelM5Y29zcGJ1RjJZaW1hV0FZdk90YlN3SDJLNXB5YjJx?=
 =?utf-8?B?UlVXaU95cVlaT2NndXN2bzNjdkpsTmxaMVJKOWFBWXNidkwwYnVTcUdrM1U0?=
 =?utf-8?B?ejdHN1REZ0dHdU9LKzI3V0JkNzdXWlZZVVdOU1VUZjdLTUFQR3pvYThTU0V4?=
 =?utf-8?B?UUJmZ3BlU2pURFNGaUNubndSWWJoNjl2UU9IR2d5dzZvQmlXUWUxR3dYbjVC?=
 =?utf-8?B?ekw1NUpCWXovdzc0STRtNW5tVXRpRHNzL0NCY0FYOHVJc1BnWk0rSUV6c2NN?=
 =?utf-8?B?ampxVWhQa0NDMDBNWTRPdFhETEhidjdJQS9ZYk11d3pvWkdXRXBYY2o3RTBI?=
 =?utf-8?B?SGF0TTNESmZXRlJUNVhuVTBnSlJ3UEZ6alo4YkttNzRkNllFMWw0VjN2OEVU?=
 =?utf-8?B?Rkt6NDJTSEtCWmUzcTdZdWVsWnJGc2RLWFdoenVzRVFGYkJJR3VPRmgvVTZ3?=
 =?utf-8?B?NURZZHZnOG5ua0NMblhHcWhQMXpTdEtOUWE4YXhXLzFtbHFhTmJNclVoSnVG?=
 =?utf-8?B?K3V3VnVreGhGZGw4elAwMlFEQTBpTmpwbWk0dFlxTUZsZ05hY0hyY3hJOVNS?=
 =?utf-8?B?d20yeWRYMU8xUlJHbGFBQ0VOUTl6aUZRTE40N2l3ZmFKeU1heHNYTElXZm5m?=
 =?utf-8?B?Q3NZcmVkTzdTbWlydFVpNWdkTE9uZnNKbXphVjFsd0ZHWXI2c202Rlk0OGpT?=
 =?utf-8?B?eThhQW1wT0VGNG10WXJkZTMzdlo5d3hJMk1pZTVvTkluRmFTMjZRNjZvcFU3?=
 =?utf-8?B?UWllWFVRU2RNZFRkNUNPZjJ6aDRCcW42c21NOElmTzBNaW1NWXp3UEZiaXQ2?=
 =?utf-8?B?c0hyTytCRXREc2dRWmdZUUZvL3AyTFVNOTY2RWU4Zk9haWF2MFI2WlIxanhp?=
 =?utf-8?B?MWRXQnlaM3J6ZFFTM0U0d2VmUWNyK1kxbkRNTE5OQUxlakRwSC84UHhSbTNp?=
 =?utf-8?B?ZkwyQ2lpM2Z4d2prTFNDcEEzcFcvdVNnVC9xaUpSeThRcmtmc1VhTlY2dW5B?=
 =?utf-8?B?R3htRzNhcllYSEkwUDZLSG9Ec0xQTlNhbTdNb1lWc2tpY25yaEZMU0JISlRB?=
 =?utf-8?B?L2N5Y2FycDhsQnJ6S1BCbi8vRFZST2tXUDg2QUdUZ3FnaTUwVVQrUlh0d2pP?=
 =?utf-8?B?UWFtZlI1NDQwSng2YUpMQ2hiQzdIcVh5c2VjTXpKZnZwUFpMZmlVLzZPVnV5?=
 =?utf-8?B?c0FsMml4MXg3NG8vNGYzc3RxMS94dWhUQXc4ZFk4SjhGV21UM2RIbWVZeC9K?=
 =?utf-8?B?UDhQYlJXNUxSNlRyUUNSV3REL1dDWWVBKzIrY0VyU2NGWnVYdkZLbkk3Slh2?=
 =?utf-8?B?YUp5eEU0anZHeUkrTFRhREgrcklleTdKUGsrTnZmNGRhWTlBS1hzdk81WGxp?=
 =?utf-8?B?TnZobzFkc2NpVUdIYy9IdDF4STZkRW1FdjA2WHJQZEdiL1pVVjhqOVNBaEdS?=
 =?utf-8?B?QllGQ3kzTGNvbGtkbnc0V1ROejYrMndHSnRKUG9Yd3hKdVRDMWVhTVV3YUtt?=
 =?utf-8?B?ZndvN1BZS0VuQXcxU1U0a05KbVhLMjc4RkhmUHJZWUlTcWNXc1dhY3BoTmlk?=
 =?utf-8?B?TElHS0JnQ1g3SzBxQm5aQ3YzRzNRMkJpSG45cmw3bEo3M0h2Z3FwOXduNUU4?=
 =?utf-8?B?RG1sSFJPVXZrR2lmOUpKSHJDTWtKSGk2dytlSWk4RW0yUnFYT0IrUERvcEhl?=
 =?utf-8?B?YWVBdGpLYUtSL1JMenBFSkJtMnlyZlMxWE1FbE5XaFVkQjc5TUZQdENXQkxG?=
 =?utf-8?B?QnUvTDF2RjREcGNJcUNQMC9lZ3JpM2NaSW5CMHRlVkpwQ3plU2l2R2lTMHFI?=
 =?utf-8?B?SEJaVk84cUl6VUpsL20vS1V5aWx5NjVpZVo3MkxocjlKZndhc2lmc2s0ZlZi?=
 =?utf-8?B?UnVYdHVTamRlNGVYV24zMHhySzJBMXFPWjY2bnFxVmxwY0VTTnBMV2o4OVNJ?=
 =?utf-8?B?Z0J6dk5Vck15MDJKb2lwYUxUV2JYdnFMOEppNERrNTk0dVArTFBpWnpoRmVz?=
 =?utf-8?B?cjQvOWpINjB0cG0va2JsWVVBVkQyNWdyZldRaW81RzFsY3ZJYVcvNk5EcGVt?=
 =?utf-8?B?Qi9qYnFPZ1l6WWdZWWo3bmJzampCS3RyK3NVQi8xaUZOTGxQejJ2aGRKbUgr?=
 =?utf-8?B?N2phbkdwOU5qcVdVNjVwREF0VEo2MkZLcThDdFpJWkxsemNDV1VNRFljWGZo?=
 =?utf-8?Q?BRvUugEqjylADcnWnW3NeeI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ODNWalhyWGJhdjdGZHdMbFJjSkRaemNsREM1QnZjSFp3WjRhM3NXc2xEZkFU?=
 =?utf-8?B?a0hzZ1ZqZmJYS1JXSVhFMW4rQzFoMVU2Q2ZRb3MwNjF6V1QzWEZHb0loczND?=
 =?utf-8?B?UmQvZU1tYU5LV1RFZWJnYXVQZnlUUkxTaEkvQXlHYnV1WUd4dFVUTHZoRjh3?=
 =?utf-8?B?bDJYWVNDbFhiNEdhWi9ESHVMK0IvSEJWeFZxSlZhYlRxZ01yTDQwNkJNRmNv?=
 =?utf-8?B?L1o0U2hXR1RndzNLVFJMemhJZHpwdWZpWEpzOTg1UWNZOWJDZVU0dVJVWGEy?=
 =?utf-8?B?WWc4ZUZwZGhuVkY0dzU1UCthUjBRQjBsbDI1enZwaEE3UUVIa2FDUTMwL1R1?=
 =?utf-8?B?WnFHTkVZSksyYnhvL0ZYdk81dzkzWHQ3U1hRWko4SGkzaTBNSlFHYW82SkFB?=
 =?utf-8?B?M01IMFRmazRyWVJPVVZIVlMwM05nVmhoYmlNYWUxc1pjTThaaEtwek0xZSs3?=
 =?utf-8?B?ZEk3SVdVUUdDM3hPcXA2TVdkWDhyRm9tL3djQUdySEQ1OENoYlV5YUFWUTc2?=
 =?utf-8?B?eTIxaWdJVENqU0lqWmo5cXdsazVKMGxEYWRMUVNPQkNDemdlNG81aGpPWjky?=
 =?utf-8?B?MnJhMy9iOWc5aDdDVmJ2RGJHc1I2Vk1mYURGQlhkY0lCRXhIQ3hVaTh1ZTM4?=
 =?utf-8?B?WHc2dTBMYXV1M1p6NDFRMGtwOXBvMXI2R1MrYzVKZHpSNENIRUcrQUZkZzFQ?=
 =?utf-8?B?SDU0RDdaQm1OcnNSMS9GN0x3Ri9aNUc1NTBJNUlKYmw1ejFha1l6dHB4NHA0?=
 =?utf-8?B?SzVSemRCeUU2aGxkV3U0TWJiQUY0c0dLQTlBV2hHOTdLa2YzV2M3MlV4Vk44?=
 =?utf-8?B?b2VpM2VCSFNGNndOOVVYa2s4d2ZFY3p2allVMFZQRWdUcitCOHdnK1pYMjQv?=
 =?utf-8?B?M0lMTFlVUDJnNUNMU1h6enV6bFhHellMWGZFc2Y1VnNrd3A3NDh0NnUrTVNY?=
 =?utf-8?B?KzBVZVBhYUl2WVRNME0vT1c0N2VUenpZNzlnck4xbG83RWd3aU5aTVloUGEy?=
 =?utf-8?B?U2l5MS9lNjR2V09LMlZoYTdHZlVmamhDdDc0Wm1tRU1XdGc5NkNsWVZvOFFO?=
 =?utf-8?B?Ynl5cTgxclBMUWxMamJoOGFOMlBacXBOdndRQ25ualJkeEhyYnY5bTNaa2s3?=
 =?utf-8?B?c04yU0VwaXVvZXhkbEQzd1FyNUV6Q3FhOEZwdGRwdmpWWlZMMFVMYnhZVGpy?=
 =?utf-8?B?MDBrTjZIVy9CdmRmSjNTV0kzSWtSNXNxKzlHTE45UFJBWG9XRFFYbnNyMWtK?=
 =?utf-8?B?dktjTjlXRFZxd0VjWHRYdjgrZGtnam5MUHVVQkl2MUJTakhJVVR0VUJ4TVJs?=
 =?utf-8?B?bnRFMUhLZnp6VENubEVab09kZnZLVjU2M04xSVVoV3ZEUmxJeHRzM21QR1d2?=
 =?utf-8?B?YWNCbFZGV2VjVnVmMFl6YlJTUzIraTRFME5nWVVRUllTYWVGeThwaTRKY1hO?=
 =?utf-8?B?T3orbjJuSENDTHRkRUd2YTlLMFhJa1JHTWpmZ3hkL1hYeU9DQ1dWNFBoUWh4?=
 =?utf-8?B?d2diaWY1a3pjQ3FQZ2ZKSDkzMVB1R1VwbllaTktCb2FNZmlDbDQzVFpCUGt1?=
 =?utf-8?B?REZoU3k1SVdTZUMvNjZIcVVyNUpyZk94Vk1Ec1gyRUJjU1pOTlFmejJZUFBk?=
 =?utf-8?B?eFEzUlJOby9tREhFMy80djZkbGFleGVjc2xEc1FoOElTTGNwdWVVSkRpZDlu?=
 =?utf-8?B?Yks3MmR1WWw2VFV3clZBeHZNWFJub25ITlNLTnJkZi8wbHFHUXo0M3ZsNllK?=
 =?utf-8?B?NE5COUVrK1pQaEhVcXRoMVFDamRLaDQwZDZTZXhyQlhQZDR2RGRtOWkzUVZ5?=
 =?utf-8?B?WnZ1cy9yby9xdjRjSEdNVytPdWJpUHdEVXRYeVBuNzZRMlFkVW9qTzZaV1Uz?=
 =?utf-8?B?U1VqTDNtdW91OXYvZFpwUGQvdWlWRmZNN0dHSnE3MUhJYnpGYlEwek5LSVRY?=
 =?utf-8?B?WE5pSFpSRlBHYmhIcnFGVjdtRUxZcFNLaVNycHVJL1Q0KzYzdEhwNGhQdTVs?=
 =?utf-8?B?R0lsMzV1V0tySm0vVmg1QWVISzdmYVRFU2paTm54SlFCQ2hVc2ZFWEh1ckVp?=
 =?utf-8?B?bDUvMklZQUdwbDRTcGNSZmNVY1JzMFl3Uk5BZmJnempJclFTQ3ZhcmdaN1lS?=
 =?utf-8?B?RlQ5cmN1ejJmaVhJYlBGRCsvR2Z6b1R2d29oa1RXQmgvNWgwOW1ZWXd2S2h5?=
 =?utf-8?B?dm5JRjlDNU1DajBnTXo5VCsyTklzREdsbnZuQll5aVQ4MW1zd3dScDVzdFBV?=
 =?utf-8?B?c0N2TmlKUUFYT2lDNnA5Qjd4eldDR2xleXdSTHFySkZXbW1XMVlqZTNRTlpC?=
 =?utf-8?B?SjRZV3p1S01lRDFFMm8zMlQ5RVErL0VrazVaMFoxRXRrMTdkZjdQQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eee9064-d8f6-4578-6808-08de630f8e36
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2026 10:32:39.4729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g/IssxgecRXusFJiwPpoS5LYV6GD6jB6QnDgHV/El9nAE7Qqcb/1z7e0TQVPoAG7NDGvr60emiCwZJSM5fQp4DpbDqZdkR4zhXogaC7Rs0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5124
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dnyaneshwar.bhadane@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 627AED7B78
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgR3VzdGF2bw0K
PiBTb3VzYQ0KPiBTZW50OiBUdWVzZGF5LCBGZWJydWFyeSAzLCAyMDI2IDM6MTMgQU0NCj4gVG86
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBDYzogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPjsg
Um9wZXIsIE1hdHRoZXcgRA0KPiA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIDA1LzE2XSBkcm0veGUveGUzcF9scGc6IEFkZCBNQ1Igc3RlZXJpbmcNCj4gDQo+
IEZyb206IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IA0KPiBYZTNw
X0xQRyBoYXMgbmVhcmx5IGlkZW50aWNhbCBzdGVlcmluZyB0byBYZTIgYW5kIFhlMy4gIFRoZSBv
bmx5IERTUy9YZUNvcmUNCj4gY2hhbmdlIGZyb20gdGhvc2UgSVBzIGlzIGFuIGFkZGl0aW9uYWwg
cmFuZ2UgZnJvbSAweERFMDAtMHhERTdGIHRoYXQgd2FzDQo+IHByZXZpb3VzbHkgcmVzZXJ2ZWQs
IHNvIHdlIGNhbiBzaW1wbHkgZ3JvdyBvbmUgb2YgdGhlIGV4aXN0aW5nIHJhbmdlcyBpbiB0aGUg
WGUyDQo+IHRhYmxlIHRvIGluY2x1ZGUgaXQuICBTaW1pbGFybHksIHRoZSAiaW5zdGFuY2UwIiB0
YWJsZSBpcyBhbHNvIGFsbW9zdCBpZGVudGljYWwsIGJ1dA0KPiBnYWlucyBvbmUgYWRkaXRpb25h
bCBQU01JIHJhbmdlIGFuZCByZXF1aXJlcyBhIHNlcGFyYXRlIHRhYmxlLg0KPiANCj4gQnNwZWM6
IDc1MjQyDQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gU291c2EgPGd1c3Rhdm8uc291c2FAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9ndF9tY3IuYyB8IDE4ICsr
KysrKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfZ3Rf
bWNyLmMgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfZ3RfbWNyLmMNCj4gaW5kZXggN2MxZmU5YWMx
MjBkLi5iMTEyZTU1MWZjNzkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9n
dF9tY3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfZ3RfbWNyLmMNCj4gQEAgLTIw
MSw3ICsyMDEsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHhlX21taW9fcmFuZ2UNCj4geGUybHBn
X2Rzc19zdGVlcmluZ190YWJsZVtdID0gew0KPiAgCXsgMHgwMDk2ODAsIDB4MDA5NkZGIH0sICAg
ICAgICAgLyogRFNTICovDQo+ICAJeyAweDAwRDgwMCwgMHgwMEQ4N0YgfSwgICAgICAgICAvKiBT
TElDRSAqLw0KPiAgCXsgMHgwMERDMDAsIDB4MDBEQ0ZGIH0sICAgICAgICAgLyogU0xJQ0UgKi8N
Cj4gLQl7IDB4MDBERTgwLCAweDAwRThGRiB9LCAgICAgICAgIC8qIERTUyAoMHhFMDAwLTB4RTBG
RiByZXNlcnZlZCkgKi8NCj4gKwl7IDB4MDBERTAwLCAweDAwRThGRiB9LCAgICAgICAgIC8qIERT
UyAoMHhFMDAwLTB4RTBGRiByZXNlcnZlZCkgKi8NCj4gIAl7IDB4MDBFOTgwLCAweDAwRTlGRiB9
LCAgICAgICAgIC8qIFNMSUNFICovDQo+ICAJeyAweDAxMzAwMCwgMHgwMTMzRkYgfSwgICAgICAg
ICAvKiBEU1MgKDB4MTMwMDAtMHgxMzFGRiksIFNMSUNFICgweDEzMjAwLQ0KPiAweDEzM0ZGKSAq
Lw0KPiAgCXt9LA0KPiBAQCAtMjgwLDYgKzI4MCwxOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHhl
X21taW9fcmFuZ2UNCj4geGUzcF94cGNfaW5zdGFuY2UwX3N0ZWVyaW5nX3RhYmxlW10gPSB7DQo+
ICAJe30sDQo+ICB9Ow0KPiANCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgeGVfbW1pb19yYW5nZSB4
ZTNwX2xwZ19pbnN0YW5jZTBfc3RlZXJpbmdfdGFibGVbXSA9IHsNCj4gKwl7IDB4MDA0MDAwLCAw
eDAwNEFGRiB9LCAgICAgICAgIC8qIEdBTSwgcnN2ZCwgR0FNV0tSICovDQo+ICsJeyAweDAwODcw
MCwgMHgwMDg4N0YgfSwgICAgICAgICAvKiBOT0RFICovDQo+ICsJeyAweDAwQjAwMCwgMHgwMEIz
RkYgfSwgICAgICAgICAvKiBOT0RFLCBMM0JBTksgKi8NCj4gKwl7IDB4MDBCNTAwLCAweDAwQjZG
RiB9LAkJLyogUFNNSSAqLw0KSGksDQpDb3VsZCB3ZSBleHRlbmQgdGhlIHJhbmdlIHRpbGwgMHgw
MEJFRkYgPw0KPiArCXsgMHgwMEM4MDAsIDB4MDBDRkZGIH0sICAgICAgICAgLyogR0FNICovDQo+
ICsJeyAweDAwRDg4MCwgMHgwMEQ4RkYgfSwgICAgICAgICAvKiBOT0RFICovDQo+ICsJeyAweDAw
REQwMCwgMHgwMERERkYgfSwgICAgICAgICAvKiBNRU1QSVBFICovDQpTYW1lIGFzIHdlIGRpZCBo
ZXJlIGV4dGVuZCB0aWxsIHJlc2VydmVkLg0KDQpEbnlhbmVzaHdhciwgDQoNCj4gKwl7IDB4MDBG
MDAwLCAweDAwRkZGRiB9LCAgICAgICAgIC8qIEdBTSwgR0FNV0tSICovDQo+ICsJeyAweDAxMzQw
MCwgMHgwMTM1RkYgfSwgICAgICAgICAvKiBNRU1QSVBFICovDQo+ICsJe30sDQo+ICt9Ow0KPiAr
DQo+ICBzdGF0aWMgdm9pZCBpbml0X3N0ZWVyaW5nX2wzYmFuayhzdHJ1Y3QgeGVfZ3QgKmd0KSAg
ew0KPiAgCXN0cnVjdCB4ZV9kZXZpY2UgKnhlID0gZ3RfdG9feGUoZ3QpOw0KPiBAQCAtNTMzLDYg
KzU0Niw5IEBAIHZvaWQgeGVfZ3RfbWNyX2luaXRfZWFybHkoc3RydWN0IHhlX2d0ICpndCkNCj4g
IAkJCWd0LT5zdGVlcmluZ1tJTlNUQU5DRTBdLnJhbmdlcyA9DQo+IHhlM3BfeHBjX2luc3RhbmNl
MF9zdGVlcmluZ190YWJsZTsNCj4gIAkJCWd0LT5zdGVlcmluZ1tMM0JBTktdLnJhbmdlcyA9DQo+
IHhlbHBnX2wzYmFua19zdGVlcmluZ190YWJsZTsNCj4gIAkJCWd0LT5zdGVlcmluZ1tOT0RFXS5y
YW5nZXMgPQ0KPiB4ZTNwX3hwY19ub2RlX3N0ZWVyaW5nX3RhYmxlOw0KPiArCQl9IGVsc2UgaWYg
KEdSQVBISUNTX1ZFUngxMDAoeGUpID49IDM1MTApIHsNCj4gKwkJCWd0LT5zdGVlcmluZ1tEU1Nd
LnJhbmdlcyA9IHhlMmxwZ19kc3Nfc3RlZXJpbmdfdGFibGU7DQo+ICsJCQlndC0+c3RlZXJpbmdb
SU5TVEFOQ0UwXS5yYW5nZXMgPQ0KPiB4ZTNwX2xwZ19pbnN0YW5jZTBfc3RlZXJpbmdfdGFibGU7
DQo+ICAJCX0gZWxzZSBpZiAoR1JBUEhJQ1NfVkVSKHhlKSA+PSAyMCkgew0KPiAgCQkJZ3QtPnN0
ZWVyaW5nW0RTU10ucmFuZ2VzID0geGUybHBnX2Rzc19zdGVlcmluZ190YWJsZTsNCj4gIAkJCWd0
LT5zdGVlcmluZ1tTUUlESV9QU01JXS5yYW5nZXMgPQ0KPiB4ZTJscGdfc3FpZGlfcHNtaV9zdGVl
cmluZ190YWJsZTsNCj4gDQo+IC0tDQo+IDIuNTIuMA0KDQo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC0DA98787
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 12:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8134910E681;
	Wed, 23 Apr 2025 10:35:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BEV1srwG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7982810E67F;
 Wed, 23 Apr 2025 10:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745404505; x=1776940505;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2LcS3SaWoWBNGhR3Aj1A+1EOZoRFs+Eoa9GyMjqtypI=;
 b=BEV1srwG07wWYSm30wtmz9llqqzmh6pgT6cdGzzV1N9S4oVsGbsoJR76
 TMaqDfRaPhNu2GN1BqRTuw3mWjyLOtWy7wMJi2uJNwce8S47fDXEmQa7s
 205/1AlW1jGanQ2V87BwsxufYGZYZcFb+qkA0I4kTn8hoTjxXhRTF0syr
 he7gbkx5K++Nc4YHMMxoHh0sZZjvldEFjKeehir3JAAC8H/rorGXP7N/y
 gXSINyppnZcoxe4zNr+C/rqswf9p5HeKE6qQjHTQdyoHVe/y4bG4RXBwm
 Xhly57CcwCsdie4u59EygRbz5Wmry4GzvAtP4AYtbJ7NtsMwwoewtNZOd Q==;
X-CSE-ConnectionGUID: 72Hdvrv1TOKQEirHyS2V1g==
X-CSE-MsgGUID: VcBbT56ASGSnoZpROXFDPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46226569"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46226569"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:35:05 -0700
X-CSE-ConnectionGUID: ApzQIYBVSX2mYUOLA3yElA==
X-CSE-MsgGUID: ad5g61FZTAOg2c1rC8esDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137066065"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:35:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 03:35:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 03:35:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 03:35:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZGkct6N3ehkOn7tkOLtNkaVypxmFY147NOtRfx77zJd6tddpGnHxRshaxZIvqk72NkMDKdH86NrN9aakBgQ/xUx6OG/qnwLkti7IBFuajBATGi1UcIaG/mJIUIpLjHe5Qf4+YI33vKLucS87/0mgKTxakVvfxnXn6Ere2l2aALR8rys22zdDjoTJFKDDd6juh124vKrI1TNNSRhqoVVw52C65WXHpcCklfiE3Rv+Cj6ADvGH0EYIINZGENAKqCUGA4QLBWddbVbQ5h0tVrd3Mpm5q4ThVQ8Sg0gYKpKP3tu43K+K8ACedzJMyXsJkvzI41z9+jIKPbXVlw0Ql2P9vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2LcS3SaWoWBNGhR3Aj1A+1EOZoRFs+Eoa9GyMjqtypI=;
 b=qRClhD5JydpVnbZ3XMFWgiook3egpluXYbweYeFZ58hwbJiMzLx11dEWxUuQIkz3xpS6fG5YnrEZPakodVQAS/fSqSfGQNFY5GsEW6vxJ4m1hR+fOgc0NpNwIMEwLKudpjy//+Pa8aOw6liqY5EvOb9BfRHD4wEHqGP6hy6IZX5zO9FefruGtUg93ZEM/iDhIoE0Fjf5z/snR6FfXU+wjlHEM61QFl09tYuTQ+FUc5lhyVGZEhpTl7dYLulhpb/2i8smy3iRpRaDGfOfoV53TD8RbY7pNOi9uXkG3YgW37ZiMR3J56rk80efT+DhmgW4yV0iBfinPD7DEjGgbMzUXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY5PR11MB6319.namprd11.prod.outlook.com (2603:10b6:930:3d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.35; Wed, 23 Apr 2025 10:35:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8632.030; Wed, 23 Apr 2025
 10:35:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v10 10/11] drm/i915/alpm: Add intel_psr_need_alpm() to
 simplify alpm check
Thread-Topic: [PATCH v10 10/11] drm/i915/alpm: Add intel_psr_need_alpm() to
 simplify alpm check
Thread-Index: AQHbtDTFwYm3B1Vd1kmsS6w/j/uZYrOxDlEA
Date: Wed, 23 Apr 2025 10:35:01 +0000
Message-ID: <b79ac246190e719d1bd88d714c1ff8f95bbd2bed.camel@intel.com>
References: <20250423092334.2294483-1-animesh.manna@intel.com>
 <20250423092334.2294483-11-animesh.manna@intel.com>
In-Reply-To: <20250423092334.2294483-11-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY5PR11MB6319:EE_
x-ms-office365-filtering-correlation-id: 2ec9cb68-fac5-4ccc-8f0d-08dd825280ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?dVQvd3ZsK211YjU0Z1E0elJhbkV6akdnVlgzWHhCekQxR2R1NUUvcTczWDlP?=
 =?utf-8?B?NThhdzZPYzZ3QjJrMExFNitvMUM3dUpYOWZiZjJJc3NUQ1hpdHJGYjR1L0xF?=
 =?utf-8?B?Mk9KL1JlOEhNdzRjNW1WbmZ5b2RMMWZra0FST0NuQXUwVFFYTUxLTDc1ZFRn?=
 =?utf-8?B?Tks2M1dwWDY1eXd6RlNiS0o3UFdicGcvMk9CZzdBRVU2aDNEVzN3TTQxcXVt?=
 =?utf-8?B?aTNPM2Nvby9TR1JMY1pNc3VDL3NWdEZGZnExTWtVR0NiVFUrWVBtUGo3WVdE?=
 =?utf-8?B?ZU5TL3ZaejNZUkNpWDNzWjRMaC9LemUvV2lSaTQ0SW1mMU9KNHN2VEd0YUxx?=
 =?utf-8?B?UGEya0YvY0Q4eFJOOXFXcU1RdHMvcllvNEJHb1pFQkc3b0ZiMW9CUG1CZmtx?=
 =?utf-8?B?T0ZtK1RvQnhtb3V0djRSOUkrbFRxdkhMZWxYd3Fsb1ZscW1MZXFlVWVOQkIz?=
 =?utf-8?B?Vjl1M0lFUWZySzhxdElqK2RQM1lYcVlXc1o2WFVSMTJJSDcwbTduMFNCcU4z?=
 =?utf-8?B?UkR0cmRGVXk0ajFJUEE0VktsR2FFczNZbnZPMXE5Y016TlRSR3RxT2ovaVBN?=
 =?utf-8?B?eCtzK2dLZjNPMUg1NXBpQUgrNzFWMFNuUTJlODNsTzhGR2NUdHpWeVZmS1lB?=
 =?utf-8?B?QkJOekdwSnloa1ZIN2dnams0RFFwenpVSVkyeE5iNXlkTHcvY3RKQVAyNnY1?=
 =?utf-8?B?d1BxWFcwQTdMMll1S2d1eGR0bTY0Z3h5cElJSk8vTklxOVdFNVJtbUtNNWFs?=
 =?utf-8?B?VUk3ZVlFNTREVWVOV1BHR0tQT1hPZi8rV1hoaEUwbW1JRmFZVjAyelMzVVVH?=
 =?utf-8?B?UVg5WVRiS1dnZ1lpcUdzbEpOWFlUUDI3T1BJMTdseTI1ZXlDdEZBQlB6dS9K?=
 =?utf-8?B?cjRvZmJENXNRRkFqbk1DMFdPelVpUUQwK25VcTNuOHorcjZna0Fyc2xaanly?=
 =?utf-8?B?WFhtUTFJdnVPa1F0eDhRT3Z0M29VNFU2ak9WeFJwRUxKblJvS1B4SURSY2lF?=
 =?utf-8?B?N1R1UFdPUHFObFo4M0orUHdzVzUzaktkMEQ4aElmNGZHVjl2VnpVQWNVaTFF?=
 =?utf-8?B?T2tzSFk2Ni9SdVczWnlUcXZITEtsT09FMTJHOWtCbGxKeFBCQUxSTzV4R2tP?=
 =?utf-8?B?c29jZWRjNlU4czB2MTJISTJxd1AwWklBVkRJbkM2REhRVStvM1ArVGs4NUxm?=
 =?utf-8?B?Q1J6bHZmT3dhZmM0M3llOGtvQnd1Z2ZkMW5IekJ6cjJWYU5JbTdscWpOcXg3?=
 =?utf-8?B?WkNoQ3dYOGlkU0VUV0N6ZVJDNU1ybUtyQmI1d3ZwTSs3OE9NeksxcUIydE1O?=
 =?utf-8?B?Zk1rS3NDeitzNE9uM3BoWlY1UHFrejREb0cvMW1uZUt0YXRkWkdySzFvOTlj?=
 =?utf-8?B?aGVhbVR4YlZlREVyZXByUjViYjkzZUI3SFFJMDI2ZEdpQWRRM2JUTGpNc2RC?=
 =?utf-8?B?UDJkMm9kaDdLcmpxT1NSL0RMODNLQW80MUxmUEpPREpXaUtZRUN4TWY0ME9a?=
 =?utf-8?B?RzRPMDJqem8vSTgyaVcxQ0p2RytUcGwrcTJqKzdYa1AxaWVNMjF5ek04Mlg2?=
 =?utf-8?B?L09laUZNL3JoREtpOWJZR05oYWgxbFdmWWhpdFg1cjE0MjhGYnFGekFxY2Fn?=
 =?utf-8?B?K3JXMXBockRyUUl2TTR5Mk1xakJ6MmhrOUhlaVVXbVNndkd3eGdzRGpEVkpF?=
 =?utf-8?B?em1oYnBvLy83dmEwaDhQSkNyckx5UXVEZVFIbWR2YUFIakxpOHo2b01RaTdp?=
 =?utf-8?B?VUJ6VWpBQ2xLUURUVEVYdkFKTFB2dXIxM2lzUkR6eDQwRHdhUlpEV056NUk4?=
 =?utf-8?B?VGErNXFTR2JwU0FDN0JPd1c4eGoxQUQya1BCZEVmTkJlSEo1eVFhL0pWLzFV?=
 =?utf-8?B?VFZNaURzenRIaDBVMG54bC9aY2dzT00vTHdJb3RoMk5NYTkxd3lFTzV6QU5z?=
 =?utf-8?B?QXhlSVFyS0N4NTA3UCtZN28wZHlQMGZiM05CSnpBN0M4dXg4VDNEUkp5czJp?=
 =?utf-8?Q?3yhWFpsqmzBKKuEqhbiIqiZaAYJN8A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WThLOVptZDF4NmpvK1I3MTNyN24wS2Mxb1VSMUtqVEUrUGV1SmhDVUViLzdS?=
 =?utf-8?B?MGVjK3NpYkpyOVpmWTFZRzFua29oTkIvbTVMeG1tUkJDRUlqaHpiMkxNWmx3?=
 =?utf-8?B?THJxZmpKSElDNE00bSt3SURWZ2M0SFBZc0dmelMwNm1YL1hmYWc1aVUxQ2VB?=
 =?utf-8?B?UmJzQURtcVkybWdjMWJJb1NpUW45T2VLVkJMd2Rjai9KSWdacVp0WjVaT0Yy?=
 =?utf-8?B?eUx1U1h6Y25WSjVTWkdseG1FL1BiMXIwUmd5YjllUTNUUVM4QjNDZ3RGcWk4?=
 =?utf-8?B?aWpTNEVoR0hOd1FkVGR5OXJKMEpyTHhucEdCSEhpcnJscHJ6bzYybjBRa0RQ?=
 =?utf-8?B?c29UYlVldzQ2VEVMWUc4Qms2dzUydTZPVmRQTXFyS1V3NE0xbHlXdUNYS2pz?=
 =?utf-8?B?ajJyWkNMZENRTnlpWW1ITHN2WTg3ZlBCOWVXV05KeHRHZUg1Ti9SV05SM0s4?=
 =?utf-8?B?N2R1eU45emgwRDczZG5WYUg2ejkwTnRkbHJvcUEraXg3VzJGMlg0Q1ZKemNH?=
 =?utf-8?B?VGFVWkxOVElaRUpPekorYkJDT1loc2RNYzRrQVc2U3lMUFlYaS9jOWhYellq?=
 =?utf-8?B?RWRRcWI4UmU3clQ4QWVvQmVUUnZJTWd0d3BMUmozbnljVDN4bWZQMHdSVVdB?=
 =?utf-8?B?S1o4VlFTNDdsMVNBNTNXYytFYWhpUnFkV1Q1dGRWdlBjZ2o1dDU4L3ZDSSs1?=
 =?utf-8?B?aDdjcTFJcnpZSEF4WjFzbW02VnBzVXdySDYzVlhkaWJ1R0w5M3Fxb0xGZGMy?=
 =?utf-8?B?Z3ZURWZUdk5zTjFId2IzQkU5M2RwTzVmdHNvNTRlaTRyTm9DU1JkcFFLbEk1?=
 =?utf-8?B?eG45STBuZ284UDVIYkFidVFvTVZYQWJiUkpiakdXOExub1h0N0hVbGJwODJL?=
 =?utf-8?B?bncwdllpRXBYQ2o1MjcrYmYyV3ZTZUNLdHV2QStiUFd3OExNZlBWbnl6NVVo?=
 =?utf-8?B?czNMcVdjb2NMZlJsR0xHYmtlQTBVejhmRHJodStJMmpyNkhid3MvaXBVZ0Qx?=
 =?utf-8?B?UTA0dnZMQ3RKemZPd20xWDgvdVZzc08rMGlkbEVidkEyUUR5WXo4NGdNa2ZW?=
 =?utf-8?B?MEY4cjFCMG5OTEx3Vzd2L2hKSmxPb0pXQTRFekpJSDduZ2F1K0dpT0lVM2JP?=
 =?utf-8?B?b1ZOM0Rjb2RLcG1PUWxwcHRQbGc2YmJ4Z3M5TTR6dGZ5ZnBxZ1hINUsyb2lp?=
 =?utf-8?B?M25OeGl2RVVjSHNyLzk5Z09XMXFVU1R2TnlvRkd2bTBoSWZBUU1YWjRjRW5W?=
 =?utf-8?B?Y1lSS0VPSTkvdFFWOHQ5QnpKd3ZOK0ZEWHNDbTA0WW1vd2pxODNSYk5KYlFO?=
 =?utf-8?B?MjRycmxoeGVvS0hHN25jSlZKbUNHaElRQnpHSkNzekxQenQyMHhNV2tZRG8r?=
 =?utf-8?B?VzI0SGlOcTJuUUJLMFh0QlpPZy9UdFVTa21QZG4vSCtLMzE4K2taTFQ5VHJ1?=
 =?utf-8?B?SjRUYmFPSVprc3RTZjlvV01oblcvMVgxUFlRUCtqV0h4ODV4aDBmNzNZeFJO?=
 =?utf-8?B?ekdiU3kxTDl3VUtrUVJQVzNtcTBieTVwUGt1L0hkREIwVkxFb0U3WHg1OFZI?=
 =?utf-8?B?bWV6TFExYjJLS3hFTTlhelFiU1IxRk9nQjJBc1hFZDAyOTdPOFpsZEx5elR2?=
 =?utf-8?B?MCtCcVNtcE9FQSt4OEdCakVXSmxZdGVSSjNpS2E2OE5ObENKcFR0M0lISE9E?=
 =?utf-8?B?c0REUUMzUGxIYUI5YXhxQkRQZXo5YTgyN2d5T2NFMDFyVHBaVWZHNWhTbXdY?=
 =?utf-8?B?bkprSm83SkliM3BGUHBYTjJxY1JoaVB3emNZaVdoMVQ2aVg1RXFCREZsN2lI?=
 =?utf-8?B?R2dTS05UMUozaEdoVnpNN2psMi82eHptUDJtTGRFOGsvUzFpTXRMMXQ4eTRu?=
 =?utf-8?B?L3VNVkRGYS9YRXFuck55MG5qOHlnNjh4bnMzeStsRmo2MlpZTzRpb1NtU2x4?=
 =?utf-8?B?RGQ0clg5YXY0ai84VUkvTmVFRWtSMXZaRHB2SnkrdWMzZnZxdXJZUzlOckVi?=
 =?utf-8?B?YW1XZi83c3hKNkxjR21zVTRDek9qcWdpR3FUK1pQdUZCc2hTdm1YTkFxbkxO?=
 =?utf-8?B?UFVYbndudUEwSDB2clBVSHYwYUtpdmJHeWFxTkpmN2NEekczNU1Ha3hHcnNu?=
 =?utf-8?B?NVh0cE5wSjJVMEZYbnlqTEpaOEhXRzZHckY5REJyekVjdWc4bjlQZUVZNDFW?=
 =?utf-8?B?ZzlUOWJ2eXE2QXN6K0VnTGMzeGFsVGdaWURaY2RoVTVGYWg0QWlJZEZzd1VB?=
 =?utf-8?B?V2JFL0JobnVXTnFMRE02N3VaMU9BPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <58A624EEC6C15E4FB6B6B5C16DCE3B5B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ec9cb68-fac5-4ccc-8f0d-08dd825280ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2025 10:35:01.3884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DhSbZtXs3SGgFRqktpVfCsrjw7uluLC+oYF2umYCT4M39X1DQjxOnagv0YnswIoSb4K6NzouGHJrD2gM+/+bKDm/nXNSVdKiCLoEbvftonA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6319
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

T24gV2VkLCAyMDI1LTA0LTIzIGF0IDE0OjUzICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBTaW1wbGlmeSB0aGUgYWxwbSBjaGVjayB3aGljaCB3aWxsIGJlIHVzZWQgbXVsdGlwbGUgcGxh
Y2VzIGxpa2UNCj4gc291cmNlIGNvbmZpZ3VyYXRpb24sIHNpbmsgZW5hYmxlbWVudCBldGMuDQoN
ClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
YyB8IDUgKysrLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
wqAgfCA2ICsrKysrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmjCoCB8IDEgKw0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5jDQo+IGluZGV4IDI0YjY2NmU2ZDhmOS4uYzRiNmRhMmU2Y2NmIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtMTMsNiArMTMsNyBAQA0K
PiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+IMKgI2luY2x1ZGUgImludGVs
X2RwLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2RwX2F1eC5oIg0KPiArI2luY2x1ZGUgImludGVs
X3Bzci5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9wc3JfcmVncy5oIg0KPiDCoA0KPiDCoGJvb2wg
aW50ZWxfYWxwbV9hdXhfd2FrZV9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gQEAgLTMzMSw4ICszMzIsOCBAQCBzdGF0aWMgdm9pZCBsbmxfYWxwbV9jb25maWd1cmUoc3Ry
dWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJZW51bSBwb3J0IHBvcnQgPSBkcF90b19k
aWdfcG9ydChpbnRlbF9kcCktPmJhc2UucG9ydDsNCj4gwqAJdTMyIGFscG1fY3RsOw0KPiDCoA0K
PiAtCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwIHx8DQo+IC0JwqDCoMKgICghY3J0Y19z
dGF0ZS0+aGFzX3NlbF91cGRhdGUgJiYNCj4gIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpKQ0K
PiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwIHx8DQo+ICghaW50ZWxfcHNyX25lZWRz
X2FscG0oaW50ZWxfZHAsIGNydGNfc3RhdGUpICYmDQo+ICsJCQkJCcKgICFjcnRjX3N0YXRlLT5o
YXNfbG9iZikpDQo+IMKgCQlyZXR1cm47DQo+IMKgDQo+IMKgCW11dGV4X2xvY2soJmludGVsX2Rw
LT5hbHBtX3BhcmFtZXRlcnMubG9jayk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBpbmRleCA0M2VkMTY2MDA3ZWIuLjFjNWVjM2YwYjA2NiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0zOTQ5LDMg
KzM5NDksOSBAQCB2b2lkIGludGVsX3Bzcl9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0DQo+
IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0KPiDCoAkJZGVidWdmc19jcmVhdGVfZmlsZSgi
aTkxNV9wc3Jfc3RhdHVzIiwgMDQ0NCwgcm9vdCwNCj4gwqAJCQkJwqDCoMKgIGNvbm5lY3RvciwN
Cj4gJmk5MTVfcHNyX3N0YXR1c19mb3BzKTsNCj4gwqB9DQo+ICsNCj4gK2Jvb2wgaW50ZWxfcHNy
X25lZWRzX2FscG0oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgY29uc3Qgc3RydWN0DQo+IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICt7DQo+ICsJcmV0dXJuIGludGVsX2RwX2lz
X2VkcChpbnRlbF9kcCkgJiYgKGNydGNfc3RhdGUtDQo+ID5oYXNfc2VsX3VwZGF0ZSB8fA0KPiAr
CQkJCQnCoMKgwqDCoCBjcnRjX3N0YXRlLQ0KPiA+aGFzX3BhbmVsX3JlcGxheSk7DQo+ICt9DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiBpbmRleCBhNDNh
Mzc0Y2ZmNTUuLmNhYmFlYzMzNDY0MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5oDQo+IEBAIC02OSw1ICs2OSw2IEBAIHZvaWQgaW50ZWxfcHNyX3RyaWdn
ZXJfZnJhbWVfY2hhbmdlX2V2ZW50KHN0cnVjdA0KPiBpbnRlbF9kc2IgKmRzYiwNCj4gwqAJCQkJ
CcKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gwqB2b2lkIGludGVsX3Bzcl9jb25uZWN0
b3JfZGVidWdmc19hZGQoc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yKTsNCj4g
wqB2b2lkIGludGVsX3Bzcl9kZWJ1Z2ZzX3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5KTsNCj4gK2Jvb2wgaW50ZWxfcHNyX25lZWRzX2FscG0oc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwgY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0K
PiDCoA0KPiDCoCNlbmRpZiAvKiBfX0lOVEVMX1BTUl9IX18gKi8NCg0K

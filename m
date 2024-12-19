Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1AC9F81CE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 18:29:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7130B10ED6B;
	Thu, 19 Dec 2024 17:29:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VzmHtqws";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2926710ED6B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 17:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734629387; x=1766165387;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b+fUgmtODjSV9Y6ld4YZ92RVIgemhGjFL5QusccSxDo=;
 b=VzmHtqws0ZEA8PFKPYqzQhEPVgyqMp7he/HnVbqeFJ8F8hWzvFkAgrEE
 0hh0Wf4pe0cpvVia/kEPDSNkGjtmOfbCTxvEEHZ7f9iSKbz6ruG3sTA/U
 DTWoz/5HYJ/Rf3JhI44lruU9W0cfxEuZGqUX6DBsPU9nJLuM78KTaEaMY
 vUj/0jGiXQc8vyc6IZFBZ4UQKF/DDP+0ALGqKHewya/KqNXNA2eLoZdjj
 uq1qae7vu+PPvtKfrCeDc2SooEaLRFxJP05qu2R/zBkG3kw1Y+Wk+3EYL
 EMnSaDWa4PcKaKcWYY7ADpjDL88MsiN3gweoWnWaoWTyKsjjbE0KOrzNQ Q==;
X-CSE-ConnectionGUID: 4xvlIyFlTlqIe1j645/Stg==
X-CSE-MsgGUID: nVOaIOqDQmGFtBDHb4Ps8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="34876275"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="34876275"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 09:29:46 -0800
X-CSE-ConnectionGUID: vkSk/OGAQBKLX8pVdOt+1w==
X-CSE-MsgGUID: GJEjYW6uTUqV0NICac5QyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="129225555"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 09:29:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 09:29:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 09:29:45 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 09:29:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wODJ2MFOTwDMbB/szYfIlbcOKUamf6Lq5wl2SsbPAh9IfuOGge8JlXjiGBQbkW0AK09Z1JFQbzVFvbK+b1eyWfmpCaIH5e1HM0FQdtkPSma7wBrfbmYCR+JVPXRSb1F0s5ASL/FGUfcIpcU9Hj9vb1wAhvlyTzzHeawsIiadmHq4RJTIAQLyu85Bvrn7ua2SCxE14D/4F/5TNJH5eZrWzKIGTEC/1qbs0UAEYvI2YfKhwgevm+ovcMbTd5xsAJCHPT6LTTxmyesiej7m5/mwcEIinVnaZaOcSs2XIBb2gY/n5o3J36jiPjpua66v7nyUe/dhoVIp9A4qka/ZN2MU2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b+fUgmtODjSV9Y6ld4YZ92RVIgemhGjFL5QusccSxDo=;
 b=VSfBmC5QEuOLm/HgLSdm3zbw7pJFSsYqpYEwsNhOfTjhr0pxLI0gWsy1FUt2Br0mcRoKPip7P/2WfchO35hgifQLYpArLIOPLbE/D5Hol9PT8/SvkZpiIJJeEo4mKc4zvcBtWpLNrbFgBg9l4zfgDgVj3jRYrcgvHNKLUy4OOkM3wd/jPVRJWPKnw/6QJPuourx3wz/U+U60IE4Rsg6MO+c1v9TY3TRzT2w3t85Ag6laDjAyHJMvVMr3d1+UFn8CsR7C34l395FFQ9hE92hTiFihH/mBgh9jpcIuolhl9QJAJM55XeJd42G3OvGfzJfH1A5Pz9LnOha5rMuM8PLEZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 SN7PR11MB7603.namprd11.prod.outlook.com (2603:10b6:806:32b::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8272.14; Thu, 19 Dec 2024 17:29:43 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17%5]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 17:29:43 +0000
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
Subject: RE: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
Thread-Topic: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
Thread-Index: AQHbUKmi4bzsQXmW8k2dYcjzSbWrALLq5aCAgAFtSICAANnsgIAAqI9g
Date: Thu, 19 Dec 2024 17:29:43 +0000
Message-ID: <DM8PR11MB5624A179C66D4256B4875C3FC7062@DM8PR11MB5624.namprd11.prod.outlook.com>
References: <20241217172955.3027271-1-ravi.kumar.vodapalli@intel.com>
 <IA1PR11MB62660FE4E97DE8DA25233221E2042@IA1PR11MB6266.namprd11.prod.outlook.com>
 <a1dd7705-a6fc-40db-a130-ddabc1d3d677@intel.com>
 <f6ae2097-e7a9-4a3f-9063-ca2399d7dd9d@intel.com>
In-Reply-To: <f6ae2097-e7a9-4a3f-9063-ca2399d7dd9d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5624:EE_|SN7PR11MB7603:EE_
x-ms-office365-filtering-correlation-id: 595487f8-5d73-4268-6f33-08dd2052b9f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MmV6UXVZVnFSNmVvcFFsblZxN3p5S2ZxNWtZRDJxOTRqVDE5di85bEZ4L28w?=
 =?utf-8?B?ZDRGWXhxQlcvNTNUVjVxWnRBZHJUKzFOQS8zVCtzTHBSVTI3UFYvTzVwYVor?=
 =?utf-8?B?UmttUVRKK1ozUG5OV1VvYnIvWmJjMWVqRzMxSWpCZXIwWDB0SW0xTitMOU9n?=
 =?utf-8?B?Z2ZSS3BoSWJhbkFZbzNrRjJGNXpYeEh5YmpkODNFR2ZCenZkQnNrdEo4OHpp?=
 =?utf-8?B?UWxHOHBJUHpnRWVGc3kwYURTZzJaV0V1WEcxb3cyUWQzN3dydjRwY1BhMjZE?=
 =?utf-8?B?ZERHQUx5WWFWZHYxY0lqUWFwWDQzNDhhcG4rWFpVTEpwZkxhWU5nRlNVNElY?=
 =?utf-8?B?dUU4K0lQSGJpT3drSHRQMzJXLzljVWpMaHZreWlFMVZiODJjSU03eHJJRkdT?=
 =?utf-8?B?RWhnWVNJNHhoTnVOMUpsbFB6RVhiREF5Y0F1ZlJ6WVZkMkV2WkQwYTl5MmVD?=
 =?utf-8?B?bm1TdWs0UTQrNHV5cjRQMzVzb1dvVmNxdmx4T3lsQXR1M0RreHJDM0J5S1VI?=
 =?utf-8?B?NmV3dGRzaFRtODdRZlE2RHV2UDAxZWs4dGpEQ29PZzNsWFBpTHo4VWJlSUkv?=
 =?utf-8?B?ZS9oUHBNOCtUTTkrSll2Y1RuQ1JSWWNQaE9KQkxaYzFmaUlUbGptcElqSW9k?=
 =?utf-8?B?VUJXaWJ0eWpFcHdDRVlueUJYZjVaMThONEd4SlF5TUErWUJ1T2JjL29oa0cx?=
 =?utf-8?B?b29MeFBWelNpTjlXVjZuNGNBa29iVG4wK1QwNFBsc2lmaTlBdFBsNjBpdFJY?=
 =?utf-8?B?L2QvWnR6L0E2a2VuZWJuQ2d3YjZJMVdFekhEK0MzNGsrbEVCWVI0UWJhZXcx?=
 =?utf-8?B?cHNYMEZNUWhVQTFmMDdCakVHeHdPWjNNdmlTa3FuR01vUkNxV3pyclhsMnB5?=
 =?utf-8?B?czV2ZS8rMjZWSjMrSFhBaUJKbHREZzlrVTVDNWNCTWkrL1VzMjcrNk5VeVo3?=
 =?utf-8?B?MmU0R3hYSndwRFJZKzM5ZW1SRWFUcWp5MDNvam5vL3VEanFodHlPVDVERDNU?=
 =?utf-8?B?ZVl0d0lyRFZHQklKU01rMGY2S0RZaGJvUldiRXlCZXRFK0w0K0V2RG94RUVy?=
 =?utf-8?B?MnlsYlZWYmVhenBPdmVqU0JXMVdJQzZtNlUwbW5XcWVWU2FSM2xUc1lOWUZs?=
 =?utf-8?B?c1Nwbll0ZDludStQQmxRV0ZKQitEVzMycVhuUVFNT09LSmlCTlZQdE1RbEk5?=
 =?utf-8?B?RHR0cnBGbXNGRjNyd24yYy9ESFRLaVdsVkpaaUwxUEo1dHhtMkdCOFdsK3Rw?=
 =?utf-8?B?UHNXa0Mwa09RSmJkY2ZDZ3gvWmJOeDFrTXN6aXhQTU13RDFmb2VETEpGNUhm?=
 =?utf-8?B?dU40YXZEbWRWUUZza1JzM3dUUzZ4TDNienlTR2JMWVJIa2hSK2ZPQjdqejJL?=
 =?utf-8?B?WlZPYXpoSzNVOURxZjdBVHR2VEpTZ3VNdFR1ck1SelhjVjVFdmc4ano5K01D?=
 =?utf-8?B?N2JnTEpHRWJVSGFrMEhTV05SY3p5WjlPTVBHZmV4cE96eS9TOHQ4cmdCZmNO?=
 =?utf-8?B?YURwYVJLeVAxbmJwaHUyTHl6QlhDeE1MRWVoVzlHcWR3dUJWM2Z1YnQ4RkFz?=
 =?utf-8?B?WEVMK2hGcjlzOXZJREMraXM5U211b2x3SkFrQTZBR25EbDhUQlZseDM2bkdD?=
 =?utf-8?B?Rk04cjNtSURqYmxYak4wOFZSTEVPS1dOTmZhTGQrckdVZUhRa0F1U0ZGQXI3?=
 =?utf-8?B?alYyci9YYlVqVVFGMm55d3YvNzlwYzZRZURnUHdkM0RiNnpKbWFkbEpGL2Zl?=
 =?utf-8?B?K0RqZjVGTHZSMkdRTUNZb0NUdDhyK1NNTzVJVVBjaUMvTFQ5bHhLeTNWZEhu?=
 =?utf-8?B?NzBFNFViNW1XS05QTVIyOE9rU2ZyRDRObGJoNjNnVDVUMU1xdjlLb001eUtm?=
 =?utf-8?B?aUhwZGVEai95c21XQjFxMnI0MzdERy9mTTE1TGZodkd1NXluOTRiVW01Zjhz?=
 =?utf-8?Q?8h/bNTAJSqov3d5nldgR1LSkPNGoZpjU?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHNGUXJOT051c2dQcENVcWZET21iWFVaMEVjYzQzWlg2Yk1nSDhyMmRTZzZw?=
 =?utf-8?B?ZUw5djBaUGVZbVpJS2RtVENOSVBYTkVSblB5K2tnZW9JYTdlQi92M3BWL1J0?=
 =?utf-8?B?Q1JyMkphOExJNUNPejkvWkZrK29tSWVTVGdhOG1Temg4cnZkbndFOFVYWmd1?=
 =?utf-8?B?UzRlOFYrazZjNUNqSnNKS2RHdHJVQ2Y0SERaT3BJV01zOWt0UEpwdnJzUS9n?=
 =?utf-8?B?RlN3SldZcEtQWEsrWXdHSExiT2R1MjI0NjZiRFBlNlAyVENibjUvOFJ6QmVO?=
 =?utf-8?B?WkxYT21JTUV2VDNjYkk5ZHlXS0U3UTFOVlZldEswa0hBcnkvYlBGODQ2KzQr?=
 =?utf-8?B?TGduMGl4TFcvK0tBUlRLajQ2NEpxaHNJMXNqMUF3WVFHN1NVK3NOTjFaSGQv?=
 =?utf-8?B?UFdKVzdLOUJUM1VkWlNHT1Fhdmd5VmZuUS9yZWtGSUpGZWUwdkNjMXdOWU9o?=
 =?utf-8?B?ZU4wY1JGN2owZDlqNWdlVlM4aDh4aklRNjRmOTRIVFJzbklKcUxSZU9ZSkRK?=
 =?utf-8?B?aW5QMzZlTHd0eG5PUG51NlpYZGozZnpaZXAvM1o5d0tRdHhrL2x2Q1RTTi9k?=
 =?utf-8?B?WkJNUTM3UjlwNkZpeUtnOVViVldRNHdlQzh3UkxidlZmeTYzdGxDY0VEZnN6?=
 =?utf-8?B?R0liRVFWR3NNalpka2NnYUc2ZGdaY3Z4ZkdZMS96VEFuMlNDdTVyM28yWWlN?=
 =?utf-8?B?U01FRHI3OEk0eTZlV2xaYmpEc3JKTUlrNndNTDI2QS9Lc1EzVnhjRGFaU25w?=
 =?utf-8?B?Vml4a1FuUkNVUVVyZmR6L1c4UGFBWkFIdmdMK0pZZDM4eVFFSUdSQmxuTW5C?=
 =?utf-8?B?aFdabytqbExYMUtPU3hKMVNKL0lvSnk1V3QzMUdiMWxuWE1Qbk1pVHlkRnNV?=
 =?utf-8?B?ZXE3R1ZmM3R6ZTNla01iZEl6WUlCTDR1cldrMnM5SkRiWDN4amRxUDcxaGtX?=
 =?utf-8?B?alVvWXdMK29GYTFUdkxNQnNpajRvVVp2b1gxL0ZvWWlFanZTYVFMdWdPSkc3?=
 =?utf-8?B?NCtlMk13NysyTTJMQjRlQWREMGZKRGhvZUllR2p0SGllNTg2a0JyT0lmb1dn?=
 =?utf-8?B?d2xZRXBDaUw1bGFiRldaVzJhbmNVem5uQW53V2paTjJUWVZEMTN0S1dBcDFa?=
 =?utf-8?B?ZUxOVEgwM0xad09FcldUNnluTDI1SlZlNnFhSGFDL1UxUUJBUTUzMVJuaWFr?=
 =?utf-8?B?VVNDek5ZQ2pvbzMybWNxdzFNOEJvS2c1UCtreEZSNStOSDRpQm5ybmhPZSsz?=
 =?utf-8?B?NmdROWNUYUdkVVBVM1N6WTZOeVVyRWNyTGxRUEMyR1diQ3VjamU1SlFzZ3ZU?=
 =?utf-8?B?TlQ2SzNiNjJXM29BemtMdnVoK3p6ZGVaYTVlUTJEZlI5bEMzcW83SU9JUFZo?=
 =?utf-8?B?K1ArUmFIQ2VUU2NVMS9aaVlZVkJTaEN4NzJ1M0hzZ20zdTh0Szk2UzI3Mm53?=
 =?utf-8?B?RTl4RnY5elBBYUhvc3JlVjF1eEhHTFM2alN4WTh3d2NRTkY1bmRVS3pTcWNq?=
 =?utf-8?B?OVhjbHVvdWgrSWhPOENFdHowZEt5VG5YWVQ2VEZ2VStweEJFbW1pQ2h2SllZ?=
 =?utf-8?B?b2hQbit5L1JvTjVZM1V2VmtxYUxRY1BVSVhRMTE2VFJ0R0w0YnJFQXJrVnRk?=
 =?utf-8?B?TmFNck5HR0c5cUQvWDYxSmV3bkhieU11ZVRsbGovanlPUzY4c2xoZ1pUY2Ny?=
 =?utf-8?B?b3J3THVMdHltRmk2VWRSdzhsbnN3M3ZCZDNnOGE4enpPRjBmSW9EOWY2OEFs?=
 =?utf-8?B?RUk2NnJJRmwrYUVHUlVBU2U3S1JibGdDaTcvaWpuRWwwSHNMS1NZQzhyK09N?=
 =?utf-8?B?blRUQUpuOVdrVkhSZXh6SEJDaXYxamdGd0duRHBIZ0dQaGJjbVVHV3Bld2Yr?=
 =?utf-8?B?bzcwbmNjZkRDbStKYWFsVzdBRlhGdmEzMXA5TnpVR3NZOFdvd1JGUmZkQzNS?=
 =?utf-8?B?aVI2OENFT1daTTNkbGlJT2x4QldRWGtUck5EdG1xbDE1NzJ1eEtCUDVva1lm?=
 =?utf-8?B?RDcrc1FoTnh1Z0svV3dhQTF6OHM4Z21KbE9KeEJnZ3pXT3o5WWZuc0ZnL2Fn?=
 =?utf-8?B?UThFQ3VEQ0svMksvQjZoUHVMWWhBM0VRU0hKb3lJTXQ5UStNMm5qUHBpaFhy?=
 =?utf-8?B?VEVXZldpYzBmTzBjV1NqVmFCTVNoSUZxNFl3MXl0VFcya1R1V0paSDFPQWNs?=
 =?utf-8?B?L1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 595487f8-5d73-4268-6f33-08dd2052b9f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2024 17:29:43.5485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U6ko2EiHkkYC3f8v2h7BlPNMxmiNlZN6L+Oc82M1gbSDQCya7gseyIO2ja/wNN2O8crdKTcwJTkP9McSoHbSnxH7GlwyqqzTQ3h78GTKOYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7603
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

DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBCaGFkYW5lLCBEbnlhbmVzaHdh
ciA8ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+IA0KU2VudDogVGh1cnNkYXksIERlY2Vt
YmVyIDE5LCAyMDI0IDEyOjU1IFBNDQpUbzogVm9kYXBhbGxpLCBSYXZpIEt1bWFyIDxyYXZpLmt1
bWFyLnZvZGFwYWxsaUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQpDYzogVml2ZWthbmFuZGFuLCBCYWxhc3VicmFtYW5pIDxiYWxhc3VicmFtYW5pLnZpdmVrYW5h
bmRhbkBpbnRlbC5jb20+OyBSb3BlciwgTWF0dGhldyBEIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPjsgRGUgTWFyY2hpLCBMdWNhcyA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPjsgU291c2Es
IEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPjsgVGF5bG9yLCBDbGludG9uIEEgPGNs
aW50b24uYS50YXlsb3JAaW50ZWwuY29tPjsgQXR3b29kLCBNYXR0aGV3IFMgPG1hdHRoZXcucy5h
dHdvb2RAaW50ZWwuY29tPjsgS2FsdmFsYSwgSGFyaWRoYXIgPGhhcmlkaGFyLmthbHZhbGFAaW50
ZWwuY29tPjsgQ2hhdWhhbiwgU2hla2hhciA8c2hla2hhci5jaGF1aGFuQGludGVsLmNvbT4NClN1
YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IERvbid0IHByb2dyYW0gREJVRl9D
VEwgdHJhY2tlciBzdGF0ZSBzZXJ2aWNlDQoNCg0KDQpPbiAxOC1EZWMtMjQgMTE6NTQgUE0sIFZv
ZGFwYWxsaSwgUmF2aSBLdW1hciB3cm90ZToNCj4gSGksDQo+IA0KPiBNeSBpbmxpbmUgY29tbWVu
dHMNCj4gDQo+IA0KPiBPbiAxMi8xOC8yMDI0IDI6MDcgQU0sIEJoYWRhbmUsIERueWFuZXNod2Fy
IHdyb3RlOg0KPj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+Pj4gRnJvbTogVm9kYXBh
bGxpLCBSYXZpIEt1bWFyPHJhdmkua3VtYXIudm9kYXBhbGxpQGludGVsLmNvbT4NCj4+PiBTZW50
OiBUdWVzZGF5LCBEZWNlbWJlciAxNywgMjAyNCAxMTowMCBQTSANCj4+PiBUbzppbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+Pj4gQ2M6IFZpdmVrYW5hbmRhbiwgQmFsYXN1YnJhbWFu
aQ0KPj4+IDxiYWxhc3VicmFtYW5pLnZpdmVrYW5hbmRhbkBpbnRlbC5jb20+OyBSb3BlciwgTWF0
dGhldyBEIA0KPj4+IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPjsgRGUgTWFyY2hpLCBMdWNh
cyANCj4+PiA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPjsgU291c2EsIEd1c3Rhdm88Z3VzdGF2
by5zb3VzYUBpbnRlbC5jb20+OyANCj4+PiBUYXlsb3IsIENsaW50b24gQTxjbGludG9uLmEudGF5
bG9yQGludGVsLmNvbT47IEF0d29vZCwgTWF0dGhldyBTIA0KPj4+IDxtYXR0aGV3LnMuYXR3b29k
QGludGVsLmNvbT47IEJoYWRhbmUsIERueWFuZXNod2FyIA0KPj4+IDxkbnlhbmVzaHdhci5iaGFk
YW5lQGludGVsLmNvbT47IEthbHZhbGEsIEhhcmlkaGFyIA0KPj4+IDxoYXJpZGhhci5rYWx2YWxh
QGludGVsLmNvbT47IENoYXVoYW4sIFNoZWtoYXIgDQo+Pj4gPHNoZWtoYXIuY2hhdWhhbkBpbnRl
bC5jb20+DQo+Pj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBEb24ndCBwcm9n
cmFtIERCVUZfQ1RMIHRyYWNrZXIgDQo+Pj4gc3RhdGUgc2VydmljZQ0KPj4+DQo+Pj4gV2hpbGUg
ZGlzcGxheSBpbml0aWFsaXphdGlvbiBhbG9uZyB3aXRoIE1CVVMgY3JlZGl0cyBwcm9ncmFtbWlu
ZyANCj4+PiBEQlVGX0NUTCByZWdpc3RlciBpcyBhbHNvIHByb2dyYW1tZWQsIGFzIGEgcGFydCBv
ZiBpdCB0aGUgdHJhY2tlciANCj4+PiBzdGF0ZSBzZXJ2aWNlIGZpZWxkIGlzIGFsc28gc2V0IHRv
IDB4OCB2YWx1ZSB3aGVuIGRlZmF1bHQgdmFsdWUgaXMgDQo+Pj4gb3RoZXIgdGhhbiAweDggd2hp
Y2ggYXJlIGZvciBwbGF0Zm9ybXMgcGFzdCBkaXNwbGF5IHZlcnNpb24gMTMuDQo+Pj4gRm9yIHJl
bWFpbmluZyBwbGF0Zm9ybXMgdGhlIGRlZmF1bHQgdmFsdWUgaXMgYWxyZWFkeSAweDggc28gZG9u
J3QgDQo+Pj4gcHJvZ3JhbSB0aGVtLg0KPj4+DQo+Pj4gQnNwZWM6IDQ5MjEzDQo+Pj4gU2lnbmVk
LW9mZi1ieTogUmF2aSBLdW1hciBWb2RhcGFsbGk8cmF2aS5rdW1hci52b2RhcGFsbGlAaW50ZWwu
Y29tPg0KPj4+IC0tLQ0KPj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMgfCAyICstDQo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPj4+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4+PiBpbmRleCAzNDQ2NWQ1NmRl
ZjAuLmNiY2M0YmRkYzAxZiAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+Pj4gQEAgLTExMjYsNyArMTEyNiw3
IEBAIHN0YXRpYyB2b2lkIGdlbjEyX2RidWZfc2xpY2VzX2NvbmZpZyhzdHJ1Y3QgDQo+Pj4gaW50
ZWxfZGlzcGxheSAqZGlzcGxheSkgIHsNCj4+PiAgIAllbnVtIGRidWZfc2xpY2Ugc2xpY2U7DQo+
Pj4NCj4+PiAtCWlmIChkaXNwbGF5LT5wbGF0Zm9ybS5hbGRlcmxha2VfcCkNCj4+PiArCWlmIChE
SVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMykNCj4+IEhpIFJhdmksDQo+PiBUaGlzIG5ldyBjb25k
aXRpb24gaXMgbm90IG5lZWRlZCBoZXJlIHNpbmNlIHRoZXJlJ3MgYWxyZWFkeSBhIHNpbWlsYXIg
Y2hlY2sgaW4gdGhlIGNhbGxlciBmdW5jdGlvbiBpY2xfZGlzcGxheV9jb3JlX2luaXQoKS4NCj4+
IFBsZWFzZSB1cGRhdGUgdGhlIGNvbmRpdGlvbiBhdCB0aGUgY2FsbGVyIGZ1bmN0aW9uIGFuZCBy
ZW1vdmUgdGhpcyBjb2RlIGZyb20gaGVyZS4NCj4gDQo+IEFzIE1hdHRSIGV4cGxhaW5lZCBUaGUg
ZnVuY3Rpb24gZ2VuMTJfZGJ1Zl9zbGljZXNfY29uZmlnKCkgbmFtZSANCj4gc3VnZ2VzdCB0aGF0
IGl0IGlzIGNhbGxlZCBmb3IgZ2VuMTIgcGxhdGZvcm0gb253YXJkcyBhbmQgaGlnaGVyLCBhbnkg
DQo+IGNoYW5nZXMgaW4gdGhlIGNvZGUgZm9yIGhpZ2hlciBwbGF0Zm9ybXMgaGFzIHRvIGJlIGlt
cGxlbWVudGVkIGluIHRoYXQgZnVuY3Rpb24uDQoNCkkgZG9uJ3Qga25vdyB3aGljaCBwYXJ0IG9m
IG15IHJldmlldyB3YXMgdW5jbGVhciB0aGF0IHlvdSBtaXhlZCBpdCB1cCB3aXRoIHdoYXQgeW91
IHdyb3RlIGFib3ZlLiBCdXQgd2hhdCBJIGFtIHRyeWluZyB0byBjb252ZXkgaXMgdGhhdCB3ZSBj
YW4gZWFzaWx5IG1vZGlmeSB0aGUgY2FsbGVyIGZ1bmN0aW9uIGNvbmRpdGlvbiBhcw0KDQoJaWYg
KERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDEyKQ0KDQppbnN0ZWFkIG9mIG1vZGlmeWluZyB0aGUg
cGxhdGZvcm0gY2hlY2sgaW5zaWRlIGdlbjEyX2RidWZfc2xpY2VzX2NvbmZpZygpDQoNCkdvdCBp
dCB3aGF0IGlzIHlvdXIgdmlldywgZGlzY3Vzc2VkIHdpdGggTWF0dFIgd2hhdCB5b3Ugc2FpZCBz
ZWVtcyBiZXR0ZXIuDQoNCkRueWFuZXNod2FyDQoNCj4gUmF2aSBLdW1hciBWDQo+PiBEbnlhbmVz
aHdhciwNCj4+PiAgIAkJcmV0dXJuOw0KPj4+DQo+Pj4gICAJZm9yX2VhY2hfZGJ1Zl9zbGljZShk
aXNwbGF5LCBzbGljZSkNCj4+PiAtLQ0KPj4+IDIuMjUuMQ0KPiANCg0K

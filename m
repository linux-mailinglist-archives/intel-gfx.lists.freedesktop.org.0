Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 109F6CCB107
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 10:06:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 864DC10E859;
	Thu, 18 Dec 2025 09:06:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ee2pAsSa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B251210E822;
 Thu, 18 Dec 2025 09:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766048800; x=1797584800;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n8rXsUKuohAyms9X8UOM4xEVM0c8D2sg7YizyumN9Ns=;
 b=Ee2pAsSaFLRm8F/GxMxln5Cds42OElFxkPb4ZFXVu90NsJhxlqWiBErX
 PnEpNnB2J4qG1oDsUyYkwx9q3gF1v8rsqtkxgdvO2OAt8ZHJ/8gx47lqi
 xsFE0aWFO53D6G6p2hXGGeEY1ZTxHnrwtBkqQn4dcDah0MCDHgoSWj0My
 FpKhGAd6rNQuzxdGn0jiF0xZuAQa0G2szT+YNzaaxNxv8xR0Ovf8J50yJ
 bcyV87ZxqrrCCmeGOkxGjFQDQXjqJmh6glAJ3eKvpLX3XQLxgms81cdOG
 EHmV9bNrlu4Dbec8CMwa5mVhha021Jk8F+bB4ruLlzNrOMW4bG8KjJfps A==;
X-CSE-ConnectionGUID: 6fH5lClDQByi72N+9kfoHA==
X-CSE-MsgGUID: Af4ITdiaS4aIIPnSToUD7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="78312930"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="78312930"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 01:06:40 -0800
X-CSE-ConnectionGUID: Tp1DT4ftQICc8JWepDtJuQ==
X-CSE-MsgGUID: Ts7BbKDETzGF+nsjWaenbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="198429238"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 01:06:39 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 01:06:38 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 01:06:38 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.57)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 01:06:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BShZy+l2x4MmGPy4yT26WvWs/s4gvmMIio3mB/kftyor8fxaPTRzORgCHMNanjv/RgiW+4TF2dmxKxvfCZ54b2LTuJ4TkmW0+0vGw/XdoYgJyxDlEOpI6cjLUK8BBcQCiP60oF4KERcpqrj5Ir4O1KPCEPSDzRqeClxcQkNq2B/CDOzPgGL4Ky0K7nfeZfaZPI/LEdcR91HnckWsdBIEU1DgiDLDEWZvbUzHn8eYhofys4atcBJuK0cSUEHw/uN4u2ma7yPgOJbYdX/Fkv1Z5xXUeoSgqrzTYOyFxwddBd/SBMAtoAGjBWT11XHepzrwDYDTqU/XA8gmRS3851AP3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n8rXsUKuohAyms9X8UOM4xEVM0c8D2sg7YizyumN9Ns=;
 b=TVyqPr5qZiJTOSeN6aRXZ74MbHmNyyfIQGy5OyKnwxYdgV7SGp8MQ0oC+8pH7GVc9Qleb0q/wVyWonSU8UWodnqj3+D68dgGG14MriZEnXlb1/stCh/D0ZwM0EqCPe2j0GhH/lictOQ0rTEUtKIRvrqO1lcaSMCVTT6UkUq6MUG33Y2ejZtSlpL4/fj7baE/YyruhP6KLYoK3UKiNKDeZGCQGwpXo32F2rMLxfn4bgF5IQKnjcbko0Ez17W6ko267aTH+UbdnHBzO9nbsw1FxVlXJXwkDHK0MKqTkNUNiDKQuFYDOFsqkSFVcsclR41UflL22H6TpcRWUXyXEyxboA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS4PPF93A1BBECD.namprd11.prod.outlook.com (2603:10b6:f:fc02::3c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.7; Thu, 18 Dec
 2025 09:06:35 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 09:06:35 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 01/19] drm/{i915, xe}: Extract common registers into a
 separate file
Thread-Topic: [PATCH 01/19] drm/{i915, xe}: Extract common registers into a
 separate file
Thread-Index: AQHcbxvb3DwH6FnbeUu1dbf7FjAW6rUl3AkAgAFAvfA=
Date: Thu, 18 Dec 2025 09:06:35 +0000
Message-ID: <DM4PR11MB63604F988971E968DFFCA2CCF4A8A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
 <20251217062209.852324-2-uma.shankar@intel.com>
 <042a56dbef341da715681b1a3cad2addf7201c7b@intel.com>
In-Reply-To: <042a56dbef341da715681b1a3cad2addf7201c7b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS4PPF93A1BBECD:EE_
x-ms-office365-filtering-correlation-id: 9be5197b-ec2f-4a84-0db3-08de3e14bf03
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TVV6dTlOSTlGSmoxQXAxeFcvNkxPZUpuczhrMytKeVhwTHBkVWZvZkt5Q1Ay?=
 =?utf-8?B?TmpkQnNSa1BHRExscVM0dVRiWnd3WFJLOHMvUXdQQVd2RnVtNmtSVzJlL2Ev?=
 =?utf-8?B?bllUZExCWmdxd1ZycVE0aDZHQTgweE40WVU5YitsLzRhL1RHeXhpc3dUK0hp?=
 =?utf-8?B?VW9HcDUvTkZzTkJZZm1DOEJZaHQ1NE5lQXN6ejRvWnpDY2d3emFIclBDNHZ1?=
 =?utf-8?B?elFHV1h6Q1NJc0hnNVZRTVRWN1o4N1p2T0M5TUdhZ3JlZWdScGxxOU5tVkxB?=
 =?utf-8?B?WDVkTHJFaXRQSlFzRkZ1Z2M1b2h2aktFdy9WU25hNUtZMGRLZGVYMnRObUpp?=
 =?utf-8?B?bUJYY0NGTTE5QVBSRlBvWit5WGVkS3hTWXI5N2Nka2w0ME4vOHhzTytkenhp?=
 =?utf-8?B?bUpDWkkzaVFOQlJ2TXJza01wK1B0WS8ySjJnN1FmOTE5amlyOGZtL3IxNnFZ?=
 =?utf-8?B?RXJEeHM5NVZZdXBQck1CUXRGVlh0TVdBUzNQZVk3VlZJMndPdmt1OGREc2FN?=
 =?utf-8?B?a2JlTzRGVjFERldBSVRYcDFrUWdZRUZhdU12QmNqdjVZR3ovNUFXTElMMWxH?=
 =?utf-8?B?QW1YcEpDdmk1S3B6MVFKT0N0STZrckNCYzR2Szl3MmVtUDl1NkxlRGp4Y1Zu?=
 =?utf-8?B?a0x5a2ErYVM4RkV1WTRycmhYWGNjeXlJRmd5bG03RERvTXpLS3o1RDdQNFVV?=
 =?utf-8?B?VWxiMGZaRWIyMVNQYTQwV0t6WVRzd3M1dnhHblBqMjg0b3hhR2Vyay9MV3dK?=
 =?utf-8?B?dkh5M1FyRERxL2d1U3RxbktGN3ZsZHJtV1A3VEFhWFIrVHlqN0Q5MWNsbFFX?=
 =?utf-8?B?RXJHTzY1aUxqazRyUnZiTWh0SVFiUVg4bExMdHpubnB1ZkZldEphc3MrK29O?=
 =?utf-8?B?L0tPRmdwN0tJQm5pY0VhRUtPdXlsZVB5bi83MmRMaXpIdmZkQjd5dTlXSUow?=
 =?utf-8?B?Y2M3WWVaS25IY0dVK0RPdmZpT2p3WWExM1FnM2dYaWEzckwxc0I5Zk8xZTMw?=
 =?utf-8?B?eGhxZ1BIM0xrQnQ2OUFuUys4UDZ1dHplQTdlVzZrNnFuYVFSWHVia01FSEtx?=
 =?utf-8?B?bUtEVUU3VEJCeXdIYXZpTUNYSG8zZ3dJNW8xWlY5T3VnbmdvcS9TQjlLekw4?=
 =?utf-8?B?Q3dNTUk4K0JKbFc4Q1dWOTJremFrcUNmMW8xbXlHUVZ3d1lHU2ZxTnJVSVNF?=
 =?utf-8?B?SE1OaDFkYW5ITlMvM3JCdnhIVVlKbndNY1ZDSlluQlJWU1FNS095SXdYOTZZ?=
 =?utf-8?B?b0k4NDROTjAwMUoyOVg4amVLcHJvekNYRmRndUp1M3EvR0ZHenJNdGxBanBx?=
 =?utf-8?B?NHpsVG5pSldnbkw4Q1Jmby9BR1N5cFBaTEliTTFOMGxLKy9hYzI3V0pGcURP?=
 =?utf-8?B?eEduMjNldjhla05HYnhGb09yNXMxRzBQcGo4TjRaT0hrUi9qZEFoYjVJTWt5?=
 =?utf-8?B?bVZVVmU1MllaMUZSb0hhcFAwWU02NHJYejNQd2R6ZHN2Wlh6d0dBd0lxMTMw?=
 =?utf-8?B?L2pYckp0ekJkTmlPQVAyTjc4OHh2MzlDMXpTZXhaaWpBSDYxSkJ3TkZubjhI?=
 =?utf-8?B?dFZ4cmprL0RmZUpHWDlpSC90S282bVJrbGd3OW1JTnZudDNEU3kvcWNwV3FB?=
 =?utf-8?B?MWlDMW5uSkJKa3BodlBITjlDYWdhOXJrdWN3RHh4bTlvbUhNYTd0blBrbDAz?=
 =?utf-8?B?RGRHTVVVWElyeDJjU2NUODFZdEZESEU3OTJyd0diMm5EMGpDZ1UrZ3N6VG5T?=
 =?utf-8?B?VkFLdEFhNVJ2SjM0YW1vdWhabkhEd1RaZkg3UlpzT3JxM25vNWJjUkNjYS9J?=
 =?utf-8?B?QTkxdllTOWZkalp3TW03RGVCNmJRZjBQUlNrdVg2SWw1OGV4bERIL2hxQkZJ?=
 =?utf-8?B?SHlnUkI4ZEh1K2N5K0xLZFpFamttT0d1K2o1T0JUSWo4bGF3M1cxcnN2TUlJ?=
 =?utf-8?B?RHU4UVBPc3JmekdHZ0toaGV6dlFtSmhWeTUvZU4vRWM3ZUZvZ1Y3M2VxQ2NT?=
 =?utf-8?B?WUt0dURpSUhzcE4xZHczSm9TaVIrLzN2K1hQZzZvUVdMUVNyL0s3UWdpcXpK?=
 =?utf-8?Q?aD9qrV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2FIZEgxOXdWSk50SEVFaVJ0U3FkU3pKNlBKSE5BSGdwMG1FQy9UZERZZzdW?=
 =?utf-8?B?akE5ejEyNHNTK3dpakF5QWE5dlJRYmZFT0UzakFnTUpyM0JDb2lKUEs5dWxC?=
 =?utf-8?B?TmlKYWZlVWFNT0lMTndSektlaUEzdWNCeXBIMnl5MTFtMUtKeDJ5Z0tSWEhq?=
 =?utf-8?B?L0Y5akxTeDVZaHdaL2h0dkp1cUVIZExUSHZRdzRvbllSZ2E0bWw4UDg4R0Nu?=
 =?utf-8?B?dkxlSGZodEh6ZWhqZTdUNjRvVHZMM051dmlQYTJ0UGdaQkVzYm9lRjJrbUMv?=
 =?utf-8?B?eU9kVXFkTTlCemV4QmFSbjVYQkh2cTlSQUw1WStEZDhQZ1o5aDc1NmtJaGYw?=
 =?utf-8?B?bTNhaTRPZlZRdjNlajNXYVUyaHRScWJsdWtQeklDS3RQcWZEeTBheXlCcnFw?=
 =?utf-8?B?S3JRY05RaTRkcGt0cndsNElQTzgvNW0zekVPa2k4WEpubENEUzBINU9HdXhy?=
 =?utf-8?B?VktiNmE3T05iczM1M01DR3M5cTRwTHMxSVR6dFdDRXFoWFdpYlVRVFJickln?=
 =?utf-8?B?dGlKUHNDV2FtajRNekhRbXFvaTAwRmZ0T3NkamJUZUlYZ1lBamRGUHJsYzk3?=
 =?utf-8?B?aXJ4YmF2b01HUVRpS3d4VkxaUGpEd2lVQjcrWEtzM3Q4QVhVMXNFcXM1R2pK?=
 =?utf-8?B?M01WdzR0Uk9zTngzUmJjaVIwOTg0Z0E5Nm0xWThnUVpJbllmWWJCUUxWZjdR?=
 =?utf-8?B?Nmdic2doSVA4M0N0Y0JySldiWmFxamoxWWNSSmFNaFZsWDE4RXN4NGNlanVY?=
 =?utf-8?B?ZDZZWStSbUhoUGZqOVhrUi9ldUZQRDdUVzVNNXRzc0wvV3pOQWlGRXBuSEwv?=
 =?utf-8?B?SFJBTkdmbDU0bmJYUzJLZHoyTWp4RmU0T201ZVYzNElZeENIOGo0QldFY2I2?=
 =?utf-8?B?VWxZVjZYZzRzcDlOVFBqRGFQRXNVaThHTDRkWGNPdzJJbHZHYzN3M3ZUMWJq?=
 =?utf-8?B?cEVDTU5WYjdZZ1ZxL3JrMWgrTGNFcFFOV1JIWlZXNDhWZHlQOE8zZStkcE9z?=
 =?utf-8?B?MGJvRGZyL2dRelZtZFBaRW5WcW5TRVgvbzlBVHVZNVROMWV5MmxSdk1WSzBP?=
 =?utf-8?B?ajk5Y1lOSVdYdDJhZVMvem82ZG5jUjhzZGdiamZTZDBuRzNSTjhEVWZLUkk3?=
 =?utf-8?B?U0NveERLZ3ByeDRWaHI3bFNDMHFjUjh3cWx5Vm5tOXBFMDZ1TGc4OGdFYUk3?=
 =?utf-8?B?ckN2cDA5NVFLQlF0amQ5SHJjTmVKZk5WSnRuNjFvQys5WTVIMTFycmsvdE5N?=
 =?utf-8?B?cWJKaDhOeUtBU2F4Q2VsM3ZGRE5aUlhPeXlYZnZnZk9YYXA3cWFFT2JwdEJw?=
 =?utf-8?B?WUthaWFHM1RJL2t0QXl2MHlDcE9adHJBcmhpNDVGQmwvUWovL0R0TG1ZeXRY?=
 =?utf-8?B?Wk56aEc2bUorWmQrT3VTbDJNWkFwVVBmSlBVTFI0VGlYeThCbDZ4V0xuL3Yw?=
 =?utf-8?B?OGtXM3FOeTQ2UVRud01VcU1GZTVjcGRyRjhFOEN2K2VxN084VUNPUkNtSEZK?=
 =?utf-8?B?THNReG55dFJRUEp4NTJFaUxBTzNhRGIzMU5lRUxqOW40dE5XZmYzZjJnd1M0?=
 =?utf-8?B?dCt0aUQvL0pVY05Yb3ExcU5aMEdkSWJtVjVoOUxmVzFoUzUxYnVvVHMzODRZ?=
 =?utf-8?B?K2NkaWtDUHE0VDV5cXBoaXFpV1ZheXhoOVBocDJXZWpKRGNJaWlKTy80Q2lP?=
 =?utf-8?B?eXVNdlpndFRrMVJRWU54cWZaWng5cHUvWU9EWkV4ZjVzRGVwUUFwU0FwbS96?=
 =?utf-8?B?R3libStYWXFOOTBJU05oeCtFWkRzNTVpUFFUaWw0dEt6SXZyU3dBNU9JaHB0?=
 =?utf-8?B?clFuOXVPNnBCNHRzdStVeXo3T1Ywc0dFL0MxOFlldWNZMk9OV1gyYW9TeUdS?=
 =?utf-8?B?dTl3WEV3TjNDZ1RjYTB6VHRtWUh6SDY5ZktRUDFPQ3NtRFdXK1ZCVDR6S1Nh?=
 =?utf-8?B?aWVNVllrcnFDMGJiRjU2bSsyMVdPQzd6Q1ZIR0h0MEMwWTJYalkwTm5JL1pQ?=
 =?utf-8?B?ZzRJSnVIRzNGOHNoc2hYZ2ZOT0hnR2ZxT1NBNm5jNjFGcWZrYTY2SElJMXht?=
 =?utf-8?B?Y0w5SVMxTU84KzBTR0ZUL0k1eHBkN3BTZitzV05Razg5eURQd1JIS1lyc3Vr?=
 =?utf-8?Q?jISfvHp1aTFysOY/i8mGxe2iu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9be5197b-ec2f-4a84-0db3-08de3e14bf03
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2025 09:06:35.7880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q8CVDYP+o+8b7oz2ZeyhfJE9Ob7ObqjgV1N43dCVCQ3D2Tvp7R6S+9gaKam+P9Oi+WXn+Z6D29pEg7xzzZXc1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF93A1BBECD
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTcsIDIw
MjUgNzoyOCBQTQ0KPiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gQ2M6IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOyBTaGFua2FyLCBV
bWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCAwMS8xOV0g
ZHJtL3tpOTE1LCB4ZX06IEV4dHJhY3QgY29tbW9uIHJlZ2lzdGVycyBpbnRvIGENCj4gc2VwYXJh
dGUgZmlsZQ0KPiANCj4gT24gV2VkLCAxNyBEZWMgMjAyNSwgVW1hIFNoYW5rYXIgPHVtYS5zaGFu
a2FyQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gVGhlcmUgYXJlIGNlcnRhaW4gcmVnaXN0ZXIgZGVm
aW5pdGlvbnMgd2hpY2ggYXJlIGNvbW1vbmx5IHNoYXJlZCBieQ0KPiA+IGk5MTUsIHhlIGFuZCBk
aXNwbGF5LiBFeHRyYWN0IHRoZSBzYW1lIHRvIGEgY29tbW9uIGhlYWRlciB0byBhdm9pZA0KPiA+
IGR1cGxpY2F0aW9uLg0KPiANCj4gSSB0aGluayBUUkFOU19DSElDS0VOMiBzaG91bGQgYmUgbW92
ZWQgdG8gaW50ZWxfZGlzcGxheV9yZWdzLmggaW5zdGVhZCBvZg0KPiBzb21ldGhpbmcgdW5kZXIg
aW5jbHVkZS9kcm0vaW50ZWwuIFRoZSBnb2FsIGlzIHRoYXQgdGhlIGRpc3BsYXkgc3BlY2lmaWMg
cGFydHMgb2YNCj4gaW50ZWxfY2xvY2tfZ2F0aW5nLmMgc2hvdWxkIGJlIG1vdmVkIHRoZXJlIHRv
by4NCg0KT2ggb2ssIGdvdCBpdCBKYW5pLg0KV2lsbCB1cGRhdGUgdGhpcyBhbmQgc2VuZCBvdXQg
YSBuZXh0IHZlcnNpb24uDQoNClJlZ2FyZHMsDQpVbWEgU2hhbmthcg0KDQo+IEJSLA0KPiBKYW5p
Lg0KPiANCj4gDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcGNoX2Rpc3BsYXkuYyAgICB8ICAyICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggICAgICAgICAgICAgICAgIHwgMTEgKy0tLS0tLS0tLS0NCj4gPiAgaW5jbHVkZS9k
cm0vaW50ZWwvaW50ZWxfZ21kX2NvbW1vbl9yZWdzLmggICAgICAgfCAxNyArKysrKysrKysrKysr
KysrKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9u
cygtKSAgY3JlYXRlIG1vZGUNCj4gPiAxMDA2NDQgaW5jbHVkZS9kcm0vaW50ZWwvaW50ZWxfZ21k
X2NvbW1vbl9yZWdzLmgNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3BjaF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcGNoX2Rpc3BsYXkuYw0KPiA+IGluZGV4IDE2NjE5ZjdiZTVmOC4uMmYz
OWZmMzJjNmQ1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcGNoX2Rpc3BsYXkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcGNoX2Rpc3BsYXkuYw0KPiA+IEBAIC00LDkgKzQsOSBAQA0KPiA+ICAgKi8NCj4g
Pg0KPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0KPiA+ICsjaW5jbHVkZSA8ZHJtL2lu
dGVsL2ludGVsX2dtZF9jb21tb25fcmVncy5oPg0KPiA+DQo+ID4gICNpbmNsdWRlICJnNHhfZHAu
aCINCj4gPiAtI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9jcnQu
aCINCj4gPiAgI2luY2x1ZGUgImludGVsX2NydF9yZWdzLmgiDQo+ID4gICNpbmNsdWRlICJpbnRl
bF9kZS5oIg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4IDViZjNiNGFiMmJh
YS4uZjYwMjU5YzQxYzU2DQo+ID4gMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgN
Cj4gPiBAQCAtMjUsNiArMjUsNyBAQA0KPiA+ICAjaWZuZGVmIF9JOTE1X1JFR19IXw0KPiA+ICAj
ZGVmaW5lIF9JOTE1X1JFR19IXw0KPiA+DQo+ID4gKyNpbmNsdWRlIDxkcm0vaW50ZWwvaW50ZWxf
Z21kX2NvbW1vbl9yZWdzLmg+DQo+ID4gICNpbmNsdWRlICJpOTE1X3JlZ19kZWZzLmgiDQo+ID4g
ICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVnX2RlZnMuaCINCj4gPg0KPiA+IEBA
IC0xMDIyLDE2ICsxMDIzLDYgQEANCj4gPiAgI2RlZmluZSAgIFRSQU5TX0NISUNLRU4xX0hETUlV
TklUX0dDX0RJU0FCTEUJUkVHX0JJVCgxMCkNCj4gPiAgI2RlZmluZSAgIFRSQU5TX0NISUNLRU4x
X0RQMFVOSVRfR0NfRElTQUJMRQlSRUdfQklUKDQpDQo+ID4NCj4gPiAtI2RlZmluZSBfVFJBTlNB
X0NISUNLRU4yCSAweGYwMDY0DQo+ID4gLSNkZWZpbmUgX1RSQU5TQl9DSElDS0VOMgkgMHhmMTA2
NA0KPiA+IC0jZGVmaW5lIFRSQU5TX0NISUNLRU4yKHBpcGUpCV9NTUlPX1BJUEUocGlwZSwNCj4g
X1RSQU5TQV9DSElDS0VOMiwgX1RSQU5TQl9DSElDS0VOMikNCj4gPiAtI2RlZmluZSAgIFRSQU5T
X0NISUNLRU4yX1RJTUlOR19PVkVSUklERQkJUkVHX0JJVCgzMSkNCj4gPiAtI2RlZmluZSAgIFRS
QU5TX0NISUNLRU4yX0ZESV9QT0xBUklUWV9SRVZFUlNFRA0KPiAJUkVHX0JJVCgyOSkNCj4gPiAt
I2RlZmluZSAgIFRSQU5TX0NISUNLRU4yX0ZSQU1FX1NUQVJUX0RFTEFZX01BU0sNCj4gCVJFR19H
RU5NQVNLKDI4LCAyNykNCj4gPiAtI2RlZmluZSAgIFRSQU5TX0NISUNLRU4yX0ZSQU1FX1NUQVJU
X0RFTEFZKHgpDQo+IAlSRUdfRklFTERfUFJFUChUUkFOU19DSElDS0VOMl9GUkFNRV9TVEFSVF9E
RUxBWV9NQVNLLA0KPiAoeCkpIC8qIDAtMyAqLw0KPiA+IC0jZGVmaW5lICAgVFJBTlNfQ0hJQ0tF
TjJfRElTQUJMRV9ERUVQX0NPTE9SX0NPVU5URVINCj4gCVJFR19CSVQoMjYpDQo+ID4gLSNkZWZp
bmUgICBUUkFOU19DSElDS0VOMl9ESVNBQkxFX0RFRVBfQ09MT1JfTU9ERVNXSVRDSA0KPiAJUkVH
X0JJVCgyNSkNCj4gPiAtDQo+ID4gICNkZWZpbmUgU09VVEhfQ0hJQ0tFTjEJCV9NTUlPKDB4YzIw
MDApDQo+ID4gICNkZWZpbmUgIEZESUFfUEhBU0VfU1lOQ19TSElGVF9PVlIJMTkNCj4gPiAgI2Rl
ZmluZSAgRkRJQV9QSEFTRV9TWU5DX1NISUZUX0VOCTE4DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvZHJtL2ludGVsL2ludGVsX2dtZF9jb21tb25fcmVncy5oDQo+ID4gYi9pbmNsdWRlL2RybS9p
bnRlbC9pbnRlbF9nbWRfY29tbW9uX3JlZ3MuaA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+
ID4gaW5kZXggMDAwMDAwMDAwMDAwLi40ZDkxYmMyZGJiMjcNCj4gPiAtLS0gL2Rldi9udWxsDQo+
ID4gKysrIGIvaW5jbHVkZS9kcm0vaW50ZWwvaW50ZWxfZ21kX2NvbW1vbl9yZWdzLmgNCj4gPiBA
QCAtMCwwICsxLDE3IEBADQo+ID4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8N
Cj4gPiArLyogQ29weXJpZ2h0IMKpIDIwMjUgSW50ZWwgQ29ycG9yYXRpb24gKi8NCj4gPiArDQo+
ID4gKyNpZm5kZWYgX0lOVEVMX0dNRF9DT01NT05fUkVHX0hfDQo+ID4gKyNkZWZpbmUgX0lOVEVM
X0dNRF9DT01NT05fUkVHX0hfDQo+ID4gKw0KPiA+ICsjZGVmaW5lIF9UUkFOU0FfQ0hJQ0tFTjIJ
IDB4ZjAwNjQNCj4gPiArI2RlZmluZSBfVFJBTlNCX0NISUNLRU4yCSAweGYxMDY0DQo+ID4gKyNk
ZWZpbmUgVFJBTlNfQ0hJQ0tFTjIocGlwZSkJX01NSU9fUElQRShwaXBlLA0KPiBfVFJBTlNBX0NI
SUNLRU4yLCBfVFJBTlNCX0NISUNLRU4yKQ0KPiA+ICsjZGVmaW5lICAgVFJBTlNfQ0hJQ0tFTjJf
VElNSU5HX09WRVJSSURFCQlSRUdfQklUKDMxKQ0KPiA+ICsjZGVmaW5lICAgVFJBTlNfQ0hJQ0tF
TjJfRkRJX1BPTEFSSVRZX1JFVkVSU0VEDQo+IAlSRUdfQklUKDI5KQ0KPiA+ICsjZGVmaW5lICAg
VFJBTlNfQ0hJQ0tFTjJfRlJBTUVfU1RBUlRfREVMQVlfTUFTSw0KPiAJUkVHX0dFTk1BU0soMjgs
IDI3KQ0KPiA+ICsjZGVmaW5lICAgVFJBTlNfQ0hJQ0tFTjJfRlJBTUVfU1RBUlRfREVMQVkoeCkN
Cj4gCVJFR19GSUVMRF9QUkVQKFRSQU5TX0NISUNLRU4yX0ZSQU1FX1NUQVJUX0RFTEFZX01BU0ss
DQo+ICh4KSkgLyogMC0zICovDQo+ID4gKyNkZWZpbmUgICBUUkFOU19DSElDS0VOMl9ESVNBQkxF
X0RFRVBfQ09MT1JfQ09VTlRFUg0KPiAJUkVHX0JJVCgyNikNCj4gPiArI2RlZmluZSAgIFRSQU5T
X0NISUNLRU4yX0RJU0FCTEVfREVFUF9DT0xPUl9NT0RFU1dJVENIDQo+IAlSRUdfQklUKDI1KQ0K
PiA+ICsNCj4gPiArI2VuZGlmDQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==

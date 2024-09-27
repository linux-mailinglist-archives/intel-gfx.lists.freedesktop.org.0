Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 806609880A5
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:45:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54A0810EC7E;
	Fri, 27 Sep 2024 08:45:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZgOubpw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4AC10E1B1;
 Fri, 27 Sep 2024 08:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727426721; x=1758962721;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vXj7O36qTMW5c6EHuVl/p6KtPXmcEmvm8skly9AmT0I=;
 b=VZgOubpwkezS9qzQM2DhPZv2xA/L7sSBDk5q3jV6qNoPGUJsv4HvR5fZ
 7tnijFrogF2l+4AW86Ks5Y98PY71waxml6wsCxx0CmEef1P2ZZCdbRZey
 ptDjD7kAE2yVGZYMujg4ujiHD3G4WxnOyAe15CrDpwpUA2nlP3A12nvEe
 oFMFiB95qwAJkXF54Mip1atIL/qUlQGTcJP2TMimqg3pSsHwFfxGE68g8
 h+gOgWFBDpvaHHKomKNB0GZD3iP+LbQvQcl7nFnpEbgakZYPrBJfnuAV6
 CRFyI5Dp3ouYnx0b+K2QChx/itBR7Sj4xkvVMccpKFxPr+CipG5NYEWzn Q==;
X-CSE-ConnectionGUID: p7I29/luQDGvqPwm6niwFA==
X-CSE-MsgGUID: 0wUdDT02QmqEMH5/v4C+3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="49090982"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="49090982"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:45:18 -0700
X-CSE-ConnectionGUID: TOy5Qa0aQxGLo6KiF1vG4Q==
X-CSE-MsgGUID: G/08HrCyQJK8Rb1QKbTckQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72879751"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2024 01:45:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 27 Sep 2024 01:45:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 27 Sep 2024 01:45:17 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 27 Sep 2024 01:45:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vfPtFJ/thXTM1QV8uf9B2I4EBBzqLOIizwGLfvcuLFfsnUDyRwGvC7JYCBRBDoAxsmGVYMAEcwuK7n/e4H7dt8AXDnY/m+bafgVl17kq5HiKHIekTo+qszKDNld+eDyVChNFoO2lKmhECEAmrJ39gl0NPsvW4ttyT+TTWe20W3ADbs4/FYIgPX82JaZXm4k6OqxxRSAJ1aO5rhfa4Sk4yRpgxKg6bKF3YVJH4O9dI+5KYIBnJbusJ73mOCDp6Df8aZQeDv5/EuPVxvKAwRCDyWHpiORJKVBDiA3LPRRGSmzgAL6GsQg0u9yM0POzUSH+iu1Am50DeR4JsNYgk91vRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vXj7O36qTMW5c6EHuVl/p6KtPXmcEmvm8skly9AmT0I=;
 b=UVavS2Y5YSpKrlKSqN11J72DPK9x9hwIk2QrGIIa1HvmImK/Ksr/c7jb+ywDjUORIKjpWgLmbo52vGVKqML6sAfgBdcJvdvYe8awHiPEvKZZPnsPX3HjtXUvyRavuMba0aeJSc8E1W9m5Y9f7frWdo0+A4S/nQc9F3+HTtRpHGXvpYNwSduy7QGzbQz8NSnrZnNqiNyCsQA/n1fDczWiGn8CuIe/6Lh67kvUDw97gNH0YlreEfbNqJ5k7MuOBMwOWRfwn3StB/IhR1rkA0ZAILoUKJs62Gy59PaJvT0JNYsWEQdSDKay2WpCtKVCjQpCgXVL3BL25cGDnaphW1s4oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SJ2PR11MB7716.namprd11.prod.outlook.com (2603:10b6:a03:4f2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Fri, 27 Sep
 2024 08:45:14 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%5]) with mapi id 15.20.8005.020; Fri, 27 Sep 2024
 08:45:14 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 12/31] drm/i915: Remove lingering pci_save_state
Thread-Topic: [PATCH 12/31] drm/i915: Remove lingering pci_save_state
Thread-Index: AQHbDsJf8cCcPAofY0yS8FEJE/kQJrJrVWBg
Date: Fri, 27 Sep 2024 08:45:14 +0000
Message-ID: <CY5PR11MB6211068A362C80695F50D789956B2@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-13-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-13-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SJ2PR11MB7716:EE_
x-ms-office365-filtering-correlation-id: 4a543773-aad0-4bd1-bd3e-08dcded0b46e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RzV4eEN4N1VITEtuTmxZaUpHWk5WZXRTQWo5NzBGRGdnQjc5akRUdGxiVXh6?=
 =?utf-8?B?N2NuVStGWUFJdmtnZ2QyOGpHKzkrb2pVblNwNVlBc0NCSGVUcWZZZUMxdGl1?=
 =?utf-8?B?aHREYk1wZTJYaVBLNTRtUFE1cnNmWG9OZGFKckpUZGZuaUpqRWJSQWsxRWo1?=
 =?utf-8?B?TnlST2NpZGhmYWlub0QvMCszYy9hVjlXWmtNQ0UyZU1sQzgzSFdlQk9PNU5u?=
 =?utf-8?B?NzNaV1BqU2d5UEJQeFdSU3duZ1RocEI5dUpmMGhrWjZRQjV0QTM1Wjd6T3VP?=
 =?utf-8?B?RlVTMWJQQ01yNFhWMmF6Q3JUb1dOQ3o1ZlA1aFFaZ3Y5eGo3b0pXaHNKdmVY?=
 =?utf-8?B?L2NvQlkyUGQxZ0FNSjRUejVxbVpGcGw0VmhOc252MWc1QlBvZGhrS3QwMWU3?=
 =?utf-8?B?M0F5RFFZckJGcm1Sa2FJNThYR21pb0l0aXp6cWU5MGd1a2hLU3Y4R3VsSk51?=
 =?utf-8?B?dzQ2alZCQ1NKU0dpa0QxRmtXWlBuSHNUbjJ2QUZtcllLVHAyNjh5UENlUnd6?=
 =?utf-8?B?NnNDUGtrVjAzWDEvMzZCVjhZcmxRS3UyMnFXVnUxZndJQkJ2ZU5vWHY0eXk3?=
 =?utf-8?B?OEo5U2xFbW8rOTAyR2FyaWt3VkJPQ3dxbTdPNFl4NmdXYmN6TlZXT1ZFQnFJ?=
 =?utf-8?B?R3NnMlRscWFJYUhwWHdWSEtDVFZsaWcreXhpVXMvY0RJMCtlM2ZlaGhEMFh5?=
 =?utf-8?B?RXVLK2pDRDlaV1VTeXRBQUE3aXUyMk9kc09BbkJqVXBObEsvMVUwcEVIR1F3?=
 =?utf-8?B?alUrWGxPUWFOM0tvNmJsZ0MvYzJIMTBUZGF5REhHRi94YVF6bU15NjFpQ3Ez?=
 =?utf-8?B?SzRzZ2lNK2toaUFRbTl5Zmxsd05YOFR3NDZGM3pyMjVKZHIyZFovQjhib2sy?=
 =?utf-8?B?b0lOZG1QNWRudnhPUkYwRlo3anNub2xJaVJxL2xDcVhRcENNMGZsWEFQRlF3?=
 =?utf-8?B?bytFUE5KYzlydkhqcDVIajlxbkxIWHdpRWRYVFFPc2Q1Tyt6VXpMekoxOWQ2?=
 =?utf-8?B?dDVhNkZ6dkNDMHNmRnRXYU1IanAyWmlPWHlyNTBhS1RHa1lROUJpM2NoS21C?=
 =?utf-8?B?Mi9rdmlNRldoMW83eXQ4K2FjaG83OHdRVHNlMmpmcUs1UGlnZDZCZHd5VUVh?=
 =?utf-8?B?Uk82clhDS3FabHJNU2JxL2I3RkxCUkFGbExocVd0enliTUFZc2lTQXlWRklM?=
 =?utf-8?B?VGhvZFNaQVU1bVNPQ0NRT1MxS0Rld0JyVmRDaUxxWWtGZzZxc1lWenA4QXR0?=
 =?utf-8?B?bU5uMXVTVkNkbmZyWFZiQzU5Y2lTLy8xTG5reXBTT2diYmQ2bTJHNGtCMjAw?=
 =?utf-8?B?SXZocHlrM2lNN1FrRXVDYTdCemtpNmZNaEFjQWVqK2VKMFFUbFd2T1gvbTJ0?=
 =?utf-8?B?SVpnL003RkxoaGdEMTRvS2tJcVZuK053TVgxNDlOdHp0bFdGZDY1Q1ovaXhJ?=
 =?utf-8?B?QTQrRjd3b21lTkttWFFKSU5yUTl0SVlDZUVLOVU2UUZhMjdrdmJ5WWxGNWdF?=
 =?utf-8?B?ODV6b29ZY0lCSmVreWZUeGc4aytia1NMUjZ6YmdXT1hqMHRMbmZyREhQQlBN?=
 =?utf-8?B?YlhRZkVTcHNBdVgyWDFGMklyZk1zTTM4d0ZnakpRb0o5WWFKZHliTllaakUr?=
 =?utf-8?B?QmVuTkkwcEI3MDJYS3dPaEtteHQvMklSb0J0NDJRclVZbWpzQ3gxQmFMenFX?=
 =?utf-8?B?V21sZS91NzkzdUpPbUV5L0tkYXJ1ZXp4VlowNEo4ZHR3TW84VktuRVkydmVm?=
 =?utf-8?B?eGtFWTkrYjRjVGVLc0Y1WTh1c20xR0UraFl4QkJIa3VHUm92RUsvTDV5SSsr?=
 =?utf-8?B?T3RSOG5BMUNkUkxyM1d5dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekpjTXhVbklma2x6ZjNvNmZlMG16QndlTDJYTzdzaWd6SWNBeGtvWXh1NEFs?=
 =?utf-8?B?dWhzZ3p5TGQrU3VQNWRacy9QL2JSSmJReDFWSStTM3RJL21ObW5jRGNmeUp0?=
 =?utf-8?B?anN0dE05L09MTnpadXNGTFc4Yjh6VzNMSXV0M1ZjWENJZ1Q4MjY5L0VYQ0Zy?=
 =?utf-8?B?Nmw5N1FCSXFJMTlCT290dkFKSGd1OE1uKzNpUUJmZVpxMTA5TDdITTBHbnk0?=
 =?utf-8?B?YXpaZUlLRCtYUUg3U2RnUzhjVVJhOUw3SVZwU2ZYeVZMbFBETmtER3FQQ05O?=
 =?utf-8?B?eUtBZE5rYWpPWDhaOHpwQ3NORWcwNCtCamNrN3BDRDZsd1VXTHY0Qm1XaEpw?=
 =?utf-8?B?YkxnWFJWMWJLanhKcUdNQU5FMEYvL3RaVjNZTllJQWNVYVVjMUtNZlRhVHhk?=
 =?utf-8?B?YlgwOGVubnNydkhtb0pDaGNncUZ3Z1RsdS9selppTE1Kc1dsUzhMOUhvTWQ3?=
 =?utf-8?B?elpVem1vZ1JaUDFNTGs0V2dQUUxxeHBlSDlNeXQrV3U5cWM2UGQ0cnVPK0s2?=
 =?utf-8?B?Y2Z5aDZKQTlqaFdvV3dtUHFvNlVkSVpURkZRek9hSEM0SVM4VDBsM1hYRk1r?=
 =?utf-8?B?enFzUGxHRlY5RXdwNTJRck00bkNkUm1mbWxTTlRPRjNHdjZTaUh5dHZJWDlo?=
 =?utf-8?B?c1hZNzF0VklzeS91ekRuQkF2TG5KZ3dpbVIwWDFDUHd0dE0rOGR6SmVCUmMv?=
 =?utf-8?B?UmlnTnhjdVEvZHZHZDYyRldrVWJhZlpZUWpDNDFNQVZtOS8xUWlFdVlvYUU0?=
 =?utf-8?B?c3U3cjJBQWliM3c1Q29oZXQ5UGQvTzAzWW0wdURqT2tBMEZaYXU1ZTkwOGtz?=
 =?utf-8?B?U1Jvd01aQzI1K0FNS0xnRWhMa2JiT1ZMZ29DVTNSS1hUVmdaT0JWdUtpakRY?=
 =?utf-8?B?NlBGeUV6YkhZUm1NU2xjdjlaQkNUdXVoNHZrZGZGK3FKRUUrbHhnM1RaazQr?=
 =?utf-8?B?emxrOElwWURDbmlnMmV0WFoxdnRjYzRHK0ZHelZOQTlCM3A4amhXdiszS1dU?=
 =?utf-8?B?NGFCUy80U1BiZkVod0JJVkVmTk96NktBVGlScmpFTWlTaGlpN1kvS0dORGk1?=
 =?utf-8?B?M2JjZmFPdDdjSTd5YUJma3VyU2RxZFcxTEJCQjI4U1Y2QVp1RUxGNUJNYng2?=
 =?utf-8?B?S205OWNBb09VMHFOUTFpaFNsSldhemFSQkwyUitKVk5pWTQxS3ppQko5RWpx?=
 =?utf-8?B?RXdrMkNrSVo3a21YSkxPVkFnZ3JKeXZyazFad21TSEN2OThrSFVkOFpCZVM5?=
 =?utf-8?B?Tjl0amNzTHZPV1IrMzRsVEhDZ0J5Y2RjSWx3Ulh2Vk4zSldXYmg2Z3dKblRy?=
 =?utf-8?B?UitWekFMdW93ajlwL0p5SnBJbjBLdHZTY2pldElkTnkxUzF3cEhzeXd2L2NW?=
 =?utf-8?B?TmZuTnBkcDhGNTdML0RFcUVVZWFxRHJNcUhLSjcya3pwaGJkT0tDME9RUmxk?=
 =?utf-8?B?cXIyaTJlN3dXd0Z1dFZmRDJUYVVva0p3dERSOTl6QmxYNk4wdkpwdE02RU9R?=
 =?utf-8?B?SVJTWmlZTSt5cFNUU1MxWXdxajZpK3RkRU8yUm9YK2RYYnFCMFdwR1hXV3VL?=
 =?utf-8?B?SXpDeDZmYXJId0plSGRpNFY3VTF2ZGRna2NGT0dreUFIcVlnalhwOW5aNlBR?=
 =?utf-8?B?ZDB0STJZNTVLYXI3dTZtT2RsT3o5K1BpbzNQcmo0NVliaFFNY0FQM240M0pE?=
 =?utf-8?B?SWpJWjg4dk5heFlCMXJDcTZsTi82c0hPbTBNalI0MjhoVElJVk13aHV1ZFh5?=
 =?utf-8?B?Uklid1Uvd0x0d01xZEUwbmxWSXRsUFoxWFlQLzB3Q3QrTEtjMUJkSmtSd3FX?=
 =?utf-8?B?MjdSTmpxWGZENWhnWiswMnE4ZmUvR0RlYkE2bE42Yy9mZUowU3ZiK3NlL05D?=
 =?utf-8?B?dmNsZDczNERjeTkzVHpmbXMrOXArdnE2L1oxSWtMbTBZNUJoaTNpWERRUHBM?=
 =?utf-8?B?bWg1QzVrVEkzb2EvTUhMOEVGcWZtVHgyVllUei84MEhsY0tYVk56bEx1eWdZ?=
 =?utf-8?B?T0JiQWpaa24wYU9PYmtzcHQ5dFpjd3BMMTJmNlFHdWczMk1qWU9TWExQOHI4?=
 =?utf-8?B?dFFVRDdldHZjOHlZV04rdUkwckptQm1sN0NFcWFRYXE5R2kycGEwb002djVI?=
 =?utf-8?Q?f8ujGgLPTcJEvba5M7jWU0Cuq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a543773-aad0-4bd1-bd3e-08dcded0b46e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2024 08:45:14.0967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5JpROvAebH7cf+M/ecNuQvbtR2S8aJn4hziHEQMfjcMvXj8KJ8gvJTgYVR1PmbBqLxDmetKNNqUdF5lJNirb0NjDFKsJJDHbaq6BX04Pmf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7716
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVml2aSwgUm9kcmlnbyA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBTZXB0ZW1iZXIgMjUs
IDIwMjQgMjowNiBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50
ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBEZWFrLCBJbXJlIDxpbXJlLmRlYWtA
aW50ZWwuY29tPjsgVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT47DQo+IEd1
cHRhLCBBbnNodW1hbiA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPjsgVmlsbGUgU3lyasOkbMOk
DQo+IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDEy
LzMxXSBkcm0vaTkxNTogUmVtb3ZlIGxpbmdlcmluZyBwY2lfc2F2ZV9zdGF0ZQ0KPiANCj4gVGhl
IHBhaXJpbmcgcGNpX3Jlc3RvcmVfc3RhdGUgd2FzIHJlbW92ZWQgYnkgY29tbWl0ICdiN2U1M2Fi
YTJmMGUNCj4gKCJkcm0vaTkxNTogcmVtb3ZlIHJlc3RvcmUgaW4gcmVzdW1lIiknDQo+IHRvIGZp
eCBhIGhhcmR3YXJlIGhhbmcgaW4gcmVzdW1lLg0KPiANCj4gRnVydGhlcm1vcmUsIGl0IGxvb2tz
IGxpa2UgUENJIHN1YnN5c3RlbSBzaG91bGQgYmUgdGFraW5nIGNhcmUgb2YgdGhlIHNhdmUgYW5k
DQo+IHJlc3RvcmUgaGVyZS4NCj4gDQo+IFJlbW92ZSB0aGUgbGluZ2VyaW5nL3N0YW5kLWFsb25l
IHBjaV9zYXZlX3N0YXRlIGNhbGwuDQo+IA0KPiBDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFu
Lmd1cHRhQGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52
aXZpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZl
ci5jIHwgMiAtLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gaW5kZXggY2UyZGQwMzEzNmQzLi40ZmM5ZDhi
Y2UxZmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBAQCAtMTAwOCw4
ICsxMDA4LDYgQEAgc3RhdGljIGludCBpOTE1X2RybV9zdXNwZW5kKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYpDQo+ICAJCWludGVsX2Rpc3BsYXlfZHJpdmVyX2Rpc2FibGVfdXNlcl9hY2Nlc3MoZGV2
X3ByaXYpOw0KPiAgCX0NCj4gDQo+IC0JcGNpX3NhdmVfc3RhdGUocGRldik7DQpMb29rcyBnb29k
IHRvIG1lIQ0KUmV2aWV3ZWQtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRl
bC5jb20+DQoNCj4gLQ0KPiAgCWludGVsX2Rpc3BsYXlfZHJpdmVyX3N1c3BlbmQoZGV2X3ByaXYp
Ow0KPiANCj4gIAlpbnRlbF9pcnFfc3VzcGVuZChkZXZfcHJpdik7DQo+IC0tDQo+IDIuNDYuMA0K
DQo=

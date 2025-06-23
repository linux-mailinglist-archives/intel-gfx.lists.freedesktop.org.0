Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DCEAE4DE9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 22:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0343010E43D;
	Mon, 23 Jun 2025 20:09:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QiRQJ+nw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA0F10E43D;
 Mon, 23 Jun 2025 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750709362; x=1782245362;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d5Dc+4tBFpYxCUKkYeP/Fj/quRiFo3GSBjq64JwxbqM=;
 b=QiRQJ+nwBgL2Ak0XqfElYvs/zKNVt8MlffoVxK7HXt5XKu51d68O5CH7
 HCJLX2W3yqPy+acu/5Pie0jcAVGAzW4YQMh4rEwgMFjUh/voxRWjrJFa+
 W0uBz/p8jtzy3mHBL/abmF3ZpblyppmnabH+8gPE8qftd/bNG3/W8LS9m
 G+A8Tatk40QyRnMYFDpPBtBxtzffkFa16OgUp4sjgJrgWc7qwpVjD1Ehi
 mqO8TJDdOj0kVI+7EmuxdKEcBCKujZaqgokPyRlUoPAL2ULdUBS9hIR3a
 ex/6TuA3en6MlAzUpnpx+cc8efhu/PXZsntY82pPiq4njs/IN4tT/kl+r A==;
X-CSE-ConnectionGUID: kAnQ+5COQRqd4An91qF/IA==
X-CSE-MsgGUID: 0RspIzIcRqy/f6sTqN5o8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="63626464"
X-IronPort-AV: E=Sophos;i="6.16,259,1744095600"; d="scan'208";a="63626464"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 13:09:22 -0700
X-CSE-ConnectionGUID: LUKkbdcdQx+Pqo7/Ky6/gw==
X-CSE-MsgGUID: MGq+r4ZuTUmhDpIH4QuAZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,259,1744095600"; d="scan'208";a="152001079"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 13:09:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 13:09:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 13:09:21 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 13:09:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=saKvmGkkJ8mKpNa7DjThCwkREHjX7tMYq6pgMRbka9+c9P9cb2JdLTzuf+mFqoQhUc6R6FpcSM3LvS9vAz4jW0iR3rDklQ6uVI1edOF7RC8vqM3QoYnpys4IPzCpDi6Kb59HaX4GGXFsGqYVOgBj5vn1HFkfZezKndPFNIjy6dfUWTNwAVpcfz4ASMjEcCMUVbCQ1m7xAC/6fMDfjxl3VpFiU0/JlmmNYxx2DbC1H7+q5YgwipNagb2V7vDc+ojd4DM2kzBnV55UXJj2XahMCvnrjQeRnyR/k10wQOTsq1prAn0BHDbrkqYm7s4jah3JhotwPelk7vzFMMYcAUduQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d5Dc+4tBFpYxCUKkYeP/Fj/quRiFo3GSBjq64JwxbqM=;
 b=yR0RiscKeCHzJ7IBoBIckVOSjnVCfdP4j6v5EZeTw4eVl1lUfyt13mCWXxvdt6dXCa+oj/Ljr0Uh9DvLdfpRJeogW8X4HiJs7bHbPPZTKlqHavmAOjWWbFDU/S71JSpmXenx8Gs7NS1JlkC9YhrrtWr7l4JPQWLtyr03rn5D85ElThsl2HKau7AtxkQXc+WaNB1B9BsjEGm/DOQ5xoqHGeIJhUAut0fKBv5BBU8X/26krbPoD8LbPv3/23O4Uu9ei7KDiQyLcLmnhvZBj2LvRGTCLXoIqp2TQSNFC3Q2hZwKPtymI5NlBWy1kA5kmzKDxP+At44bIcM+zIIzBg6kmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB7375.namprd11.prod.outlook.com (2603:10b6:8:101::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8857.28; Mon, 23 Jun 2025 20:09:13 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 20:09:13 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 19/21] drm/i915/flipq: Add intel_flipq_dump()
Thread-Topic: [PATCH v4 19/21] drm/i915/flipq: Add intel_flipq_dump()
Thread-Index: AQHb2Uh6Q2yycsSHO0yPV7OYI52aFLQRQrdA
Date: Mon, 23 Jun 2025 20:09:13 +0000
Message-ID: <DM4PR11MB636075031E2095057FA608EAF479A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-20-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-20-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB7375:EE_
x-ms-office365-filtering-correlation-id: 5d3f77c5-0d3b-401a-bba2-08ddb291d2c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TU9RWEVPczArZzdYMCtLZjA1czhja1EvZ2o4RVNyRkRHOGpNUjdQdkRBR0V5?=
 =?utf-8?B?c2JtVXFhK25FL0diTWxIQjEyY2FVWGlPQzVZVERXWmZaRHlRUjl2WTI2MEIz?=
 =?utf-8?B?cThvWm5KS3h5WmtEQkVYMi9GUzJCVlR2NW0rRlBaS2l4a012c1d5REZlclhi?=
 =?utf-8?B?QUZEZmhjRWhvN0VaeC8rWU9ueXkwOUtNd1FOdDgwUFczZTBWMVVvU0NPME1T?=
 =?utf-8?B?cHhmRVk3RjhJN0c0M3dWcnhEWGlycW9VTE4zNWkrYU95T1VaMDAwNDBIS2RC?=
 =?utf-8?B?Q3FkakFCa1VsMzltNTNUcUdOaWdZNlB2MjZFUlVPZnlvb21RVEJGZXdra0pT?=
 =?utf-8?B?UllHNDNHYnB0eXFRNEM2VU9vQjVMdnYwS25oV2hTS25xOVNWeUlnOFRHc2Z3?=
 =?utf-8?B?aVQ5ZnhNSTVuSjZCbFhGZmRCQ3dUU3hNU0dCWVRmdnUrUHZpUXNnSWFZM0FN?=
 =?utf-8?B?MnUyTUJEaFl5WDZ5cFBiNkV6c2oxVldZSld2dmxScUt5WWlhazNNOXNneERu?=
 =?utf-8?B?ZGIya2ZGZkZTd0txZ1Jadm0zWWpPYmJJYzc0Y0tNdUlVUlJMdmxBTjBqWENP?=
 =?utf-8?B?Tnk0Z2VqQnBRTVRNRkRJU0tFZUxnS0xBUENEcmdBLzcwZGhJQVdGeFgxQVkz?=
 =?utf-8?B?WkUwUXRpTzRVYk9FUDl3Z0U3b2d2eHoyaWltSWZHbE1NT055OGMyMVVYb2Qw?=
 =?utf-8?B?b1NKSDc1SFppYkhVOVYrbHVlUW83YUVMQWRXbE8rQ21xdDhwODJYcjdrMkNV?=
 =?utf-8?B?NEZJanByTE91UHZMQWRtTk1DNTBuaGh4YURmVWt2dENHQzBIT0l1QWxFNEMw?=
 =?utf-8?B?a0ZXNUhBTm51L29Pa1FKOWJQRHpYODFBZWwrWHB2TUV1SXU1RnJsa1NISGxp?=
 =?utf-8?B?MnFxSkpyanRndGh5ZjhlTDIzb0pKYzIvVXVxMURwck9yNWsxZnFvR0JWMUZB?=
 =?utf-8?B?RU9yWmtndjlMREVRM1ZPL2ZwbUZra1B0cGhOdXJuendGMlpsWkZnYitEVUtE?=
 =?utf-8?B?aVdOTk9rRFpjbEJnaWFMQ3N1eTdab1lsaEJ4VkRHbUNEbmVlNWl1d3l4V3RT?=
 =?utf-8?B?cHVOL0hqZVYwWUFCV3kzRDZVbG1HSUZ0ekNQa0Z6SzBOSGR6b0k0czcrMGxU?=
 =?utf-8?B?Ty9JN2QyMUVSV3dKdGhzZ0Y3OVFrdm5CbFA1ajM2bFBPeGJGckRHUFBPcVpi?=
 =?utf-8?B?T3Iyc1RyTW5yVXpFNnk5ZWUyQnJUaXZyNkdSZmxiaTFVSFZBTnNoRWRLaTdR?=
 =?utf-8?B?QlFoOFplK2FRQU9pd0dvd2x2ZDhITDRobHRUU0xmQ0NTQnZlRGpubmR5RWFP?=
 =?utf-8?B?elczbC9PaFhJd2R0Ull5NkVqRHRqNkQ5VXVGa3pKdUFnWkFKN3Q3QmMzUTd4?=
 =?utf-8?B?MVFRRm1RZzZ5Sjh2bnQzZDRYOCtFT2I3bDF5dThIUkNPN0FTcEQxUmZKYm1v?=
 =?utf-8?B?dnhjNGpKVGZaQlRxaHQxV2svQ1h2cEE2ZWxibW1ZYlR6VU03SStRd3ptRjhN?=
 =?utf-8?B?d2RzZkk0ejNQbzEwOTVTWXN2Y0dVU1g5YnhmTS8xMFZ3dXM1eXRvZDBRdVhV?=
 =?utf-8?B?ZGZxbHY2WWw0R3MzWDZYRS9KUWhDRFNHek04ZS9hNTRtWlN1M0NISlQzdGtF?=
 =?utf-8?B?NExuT01zRSs0d3BYcXZ0aHRRSW9RMis0VS90SzhoNTFsaThzS0l5NmpuWFFJ?=
 =?utf-8?B?Rko5RGxzV2tNazJMV3hzU0ZQL1ErUkNkb2hlZlFEVFA2MnMvZHdscW5tWVFT?=
 =?utf-8?B?Nm8rODhCZTZuSDBKUGk3UUlIRDJsYzRPeit2V3VEWkk1ckJNakNIM2MzbVp4?=
 =?utf-8?B?SC9IVEU5N2diNjNqUmNHMEN4ODhINFhoVDdwVElQakgxWFdxckJtZUVDY2c4?=
 =?utf-8?B?cGJDYU5sR0RXS1hKeFRRdXgzYzFmeDVoWkRDNGdqdlFiUGE2SW0wVHVGdU9q?=
 =?utf-8?B?d1RBTzhHNy8wQUtBcGlFeDNFbkI2RlRyUHQ3WjZZNnVHb2UyKzRuZmloeXlu?=
 =?utf-8?Q?Dw4uAWp2TjlYQgwggSDDUM6jtNT3qw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?KzNKb2RpaW5pT29WU3VJc2tXemhUcFZFdmV0Z2ZKUDl3UXJibEFMTkJxV3Rv?=
 =?utf-8?B?SW1pcEdXZUlYQ3NVZjhXeFVpcFg4eUwxdEhWc3I2eGVHS3h2ckdNRTg5bEFr?=
 =?utf-8?B?aGF2bFFWWmdyRkZjeVlFYVJPd3RYTzZIMDZYRjFpdWtDSzNTSDk3OVBFM3pU?=
 =?utf-8?B?U0dUMzExM2xLU0FrSHhpWFRkZnVQc3FzcG9PZnkyUEdyUTdBTXl3Vm55WTVo?=
 =?utf-8?B?cGZOeTd1RGk3aTdIUnQ4a2tnc2ZHYW5GWCtwTUtOY043TU5EWm42YVdlZmJu?=
 =?utf-8?B?M1R3UUNHbDhON0JFS25GZWlKSmdDTTRhdG5DZTNndjRmcUtrMTF6akh0MU9s?=
 =?utf-8?B?VGtxdEszOU5PMWpEaWFXN1NrSWo5dkxxdUVydUpsK3NmbDZ4b1d4bWRNOUk0?=
 =?utf-8?B?Q0RlVWpacFZlUGZud1ZETkdxOS9ldnBBVEJXeExLZkFOOUNOUytLeVRvelpq?=
 =?utf-8?B?RVN3cHRQVjJCKzMzSlE5aXlQaDd4RUJPWXZBNG45RXpwMXhkckEwaHJtcDZO?=
 =?utf-8?B?SGpkeVVIZVhVMlRMWVNINzV3enRKMlhJTTJ4cnJFdEp0UjBEcFV5M2xOZjhD?=
 =?utf-8?B?STBVK005VUhHVFNVanJMKzdvT2NtSkxBMkJreS9KeEd4ZWJRck1rdkxoaSs0?=
 =?utf-8?B?R05wTU5SVWpBb0FMZ1ZKaDhkc2RDaGNGTUd0b0dIQmJZelE1ZnFFWktYZlVk?=
 =?utf-8?B?bzBMUG9GMnU3Skd5SzN6aTJtcXFldUR5K3lzdXg2M2xQMm9kdWFSMENHK1d0?=
 =?utf-8?B?M01hdGpOYVoyUGl2a1ZxZGdXVXdZdFM2WkVxbk9zS2ZwZy85MFpwWWhYazhn?=
 =?utf-8?B?ZVVZTmVXQkNXTG96ZEVGTENPQVJyWFlJSVdYWSttZ2xDU2pwbHBrMU5CeU5M?=
 =?utf-8?B?akhOUFJxTEwwTzkwUlVZMThtU044a2hBQjV3Tjhocnd0MnZ6ZGhiOFVQdS9S?=
 =?utf-8?B?VlFrbEE3UjBGQkp6N1NkNUdNeDBFN1I2U2FiSDFBRkZQVmUxZ2dyN1p5TERK?=
 =?utf-8?B?VjNySTJURmN5NWhpTGI5dUtBc3NieHlMVDFiZlBwK3hsbGFTQVR5SGRhNmNw?=
 =?utf-8?B?N3pRaGcxbXNsanVsWk5MeWo5bHRXcHlhNTEwTVhZbWpzUlo0Rk1Ocm12TjNT?=
 =?utf-8?B?bzRvUWJJb2NXQVJpblBiWUtiM2dvZlFMU0dnN0VjQ3RTS0ZRYW45QmZmb0dM?=
 =?utf-8?B?UkJXb2hSdks2WDBWSVRPWU5nSzYwWVhQU1I3c1hxY0dlTzl2a0ZLa214Vnps?=
 =?utf-8?B?Wlk0M2ZBdUc4YjliU3Nza0ZFWmxQUHQzdFJsNUdCRCtOMS9SVUtUd0dIRVpa?=
 =?utf-8?B?OWhKVyt6QVBncGNuNXBzVm1xc0dhaXBmY3RyVVE3TlZsVVU5dHVzWjhyeE9I?=
 =?utf-8?B?OW5Ibk9GUUp2YUFpYTkxTFlEd1FyMWFaSmY0Nm1QNk9YUUl4eVhWUGJ0MTJr?=
 =?utf-8?B?ODFiVS9QSUcyRzRaRDJiZnRUUGkycHhvWUtzT2lLU3VmOCtoUUlERFNMSElL?=
 =?utf-8?B?R2xFUXdpR2VFZUMwSVloUnZTQWVObDRKOTlvc2o5QU1Vb0JqMklWRmhRMEUv?=
 =?utf-8?B?WDZOSS9xSnBUQkQyT0pCMzVOMWtab3g4dTdoTlBhZndnS2xaOG5DeUhGd2Ex?=
 =?utf-8?B?ZlhObkhOcEdhbEhxTkxwQ2xWaURiU2RCbTNhYlhrOS9TcHlyMDlhTFJQdEpt?=
 =?utf-8?B?Mk9MVy9lNmdsNUpQREVGeFI3RXo2YmtjU1hRdkc2ejgyRUFCZkpoU1g3K1Z1?=
 =?utf-8?B?dzloVm5OOGR5Nk1xL01uazQ3VE5JVTNYMG01Y283dGdaUkZ5NkVqUktMTkYx?=
 =?utf-8?B?Vmc4Y2FEUmVhWE1HTXlWSXYvSTVBN0poQVJ2MEZ0TEtpUDh6MGNDV0RmOTM0?=
 =?utf-8?B?aTZyc3F0cXg3WFZiWDhQaUZ2bVlwbFlSeTRNeWZ4Q3dMcU5MTzlVVHVMclhm?=
 =?utf-8?B?OHo0aXRsNld5UStJcU10ZGwxeTZwdTg2RXJvWlF5b3oybWZCVW02L3RBTDhO?=
 =?utf-8?B?dDQ3ZkpyZkFCeTJPZXRMYys2Z1BkRFNwNm5WaFJOek12YjZ3UzFWUGNJRTA4?=
 =?utf-8?B?TjJFU2Vja0FOWE5QUjQ3K2FaMjVScDJOOGo5QlgxaEpGQ3ZtL09vcTBqSmlD?=
 =?utf-8?Q?w20gaitBcxMliGt1ynJmSKUtL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d3f77c5-0d3b-401a-bba2-08ddb291d2c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2025 20:09:13.1749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tvZHx54ALFaubXUScyvQbVLbroGSjNcRibLmnaC5wYrYBwjDPruMj+iwtFKtOtAvLB+ipaKI+oDdVlJsN9ckkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7375
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBNb25kYXksIEp1bmUgOSwgMjAyNSA3OjQxIFBNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIHY0IDE5LzIxXSBkcm0vaTkxNS9mbGlwcTogQWRk
IGludGVsX2ZsaXBxX2R1bXAoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEFkZCBhIGZ1bmN0aW9uIGZvciBkdW1waW5n
IHRoZSBlbnRyaWVzIG9mIGEgc3BlY2lmaWMgZmxpcCBxdWV1ZS4NCg0KQ2hhbmdlcyBMb29rIEdv
b2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmxpcHEuYyB8IDQ2ICsrKysrKysrKysrKysrKysrKysrKysNCj4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5oIHwgIDIgKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0
OCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mbGlwcS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mbGlwcS5jDQo+IGluZGV4IDJiMGZiMWU3OGQ3ZC4uYjE2MTk5ZDdmNDI2IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZsaXBxLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5jDQo+IEBAIC0xOTEs
NiArMTkxLDUyIEBAIHN0YXRpYyB2b2lkIGludGVsX2ZsaXBxX3N3X2RtY193YWtlKHN0cnVjdCBp
bnRlbF9jcnRjDQo+ICpjcnRjKQ0KPiAgCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFBJUEVETUNf
RlBRX0NUTDEoY3J0Yy0+cGlwZSksDQo+IFBJUEVETUNfU1dfRE1DX1dBS0UpOyAgfQ0KPiANCj4g
K3ZvaWQgaW50ZWxfZmxpcHFfZHVtcChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gKwkJICAg
ICAgZW51bSBpbnRlbF9mbGlwcV9pZCBmbGlwcV9pZCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Yyk7DQo+ICsJc3RydWN0IGlu
dGVsX2ZsaXBxICpmbGlwcSA9ICZjcnRjLT5mbGlwcVtmbGlwcV9pZF07DQo+ICsJdTMyIHRtcDsN
Cj4gKw0KPiArCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gKwkJICAgICJbQ1JUQzolZDol
c10gRlEgJWQgQCAweCV4OiAiLA0KPiArCQkgICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5i
YXNlLm5hbWUsIGZsaXBxX2lkLA0KPiArCQkgICAgZmxpcHEtPnN0YXJ0X21taW9hZGRyKTsNCj4g
Kwlmb3IgKGludCBpID0gMCA7IGkgPCBpbnRlbF9mbGlwcV9zaXplX2R3KGZsaXBxX2lkKTsgaSsr
KSB7DQo+ICsJCXByaW50ayhLRVJOX0NPTlQgIiAweCUwOHgiLA0KPiArCQkgICAgICAgaW50ZWxf
ZGVfcmVhZChkaXNwbGF5LCBQSVBFRE1DX0ZRX1JBTShmbGlwcS0NCj4gPnN0YXJ0X21taW9hZGRy
LCBpKSkpOw0KPiArCQlpZiAoaSAlIGludGVsX2ZsaXBxX2VsZW1fc2l6ZV9kdyhmbGlwcV9pZCkg
PT0NCj4gaW50ZWxfZmxpcHFfZWxlbV9zaXplX2R3KGZsaXBxX2lkKSAtIDEpDQo+ICsJCQlwcmlu
dGsoS0VSTl9DT05UICJcbiIpOw0KPiArCX0NCj4gKw0KPiArCWRybV9kYmdfa21zKGRpc3BsYXkt
PmRybSwNCj4gKwkJICAgICJbQ1JUQzolZDolc10gRlEgJWQ6IGNocD0weCV4LCBocD0weCV4XG4i
LA0KPiArCQkgICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUsIGZsaXBxX2lk
LA0KPiArCQkgICAgaW50ZWxfZGVfcmVhZChkaXNwbGF5LCBQSVBFRE1DX0ZQUV9DSFAoY3J0Yy0+
cGlwZSwNCj4gZmxpcHFfaWQpKSwNCj4gKwkJICAgIGludGVsX2RlX3JlYWQoZGlzcGxheSwgUElQ
RURNQ19GUFFfSFAoY3J0Yy0+cGlwZSwNCj4gZmxpcHFfaWQpKSk7DQo+ICsNCj4gKwlkcm1fZGJn
X2ttcyhkaXNwbGF5LT5kcm0sDQo+ICsJCSAgICAiW0NSVEM6JWQ6JXNdIEZRICVkOiBjdXJyZW50
IGhlYWQgJWRcbiIsDQo+ICsJCSAgICBjcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFt
ZSwgZmxpcHFfaWQsDQo+ICsJCSAgICBpbnRlbF9mbGlwcV9jdXJyZW50X2hlYWQoY3J0YywgZmxp
cHFfaWQpKTsNCj4gKw0KPiArCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gKwkJICAgICJb
Q1JUQzolZDolc10gZmxpcCBxdWV1ZSB0aW1lc3RhbXA6IDB4JXhcbiIsDQo+ICsJCSAgICBjcnRj
LT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwNCj4gKwkJICAgIGludGVsX2RlX3JlYWQo
ZGlzcGxheSwgUElQRURNQ19GUFFfVFMoY3J0Yy0+cGlwZSkpKTsNCj4gKw0KPiArCXRtcCA9IGlu
dGVsX2RlX3JlYWQoZGlzcGxheSwgUElQRURNQ19GUFFfQVRPTUlDX1RQKGNydGMtPnBpcGUpKTsN
Cj4gKw0KPiArCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gKwkJICAgICJbQ1JUQzolZDol
c10gZmxpcCBxdWV1ZSBhdG9taWMgdGFpbHM6IFAzICVkLCBQMiAlZCwgUDEgJWQsDQo+IEcgJWQs
IEYgJWRcbiIsDQo+ICsJCSAgICBjcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwN
Cj4gKwkJICAgIFJFR19GSUVMRF9HRVQoUElQRURNQ19GUFFfUExBTkVRXzNfVFBfTUFTSywNCj4g
dG1wKSwNCj4gKwkJICAgIFJFR19GSUVMRF9HRVQoUElQRURNQ19GUFFfUExBTkVRXzJfVFBfTUFT
SywNCj4gdG1wKSwNCj4gKwkJICAgIFJFR19GSUVMRF9HRVQoUElQRURNQ19GUFFfUExBTkVRXzFf
VFBfTUFTSywNCj4gdG1wKSwNCj4gKwkJICAgIFJFR19GSUVMRF9HRVQoUElQRURNQ19GUFFfR0VO
RVJBTFFfVFBfTUFTSywNCj4gdG1wKSwNCj4gKwkJICAgIFJFR19GSUVMRF9HRVQoUElQRURNQ19G
UFFfRkFTVFFfVFBfTUFTSywgdG1wKSk7IH0NCj4gKw0KPiAgdm9pZCBpbnRlbF9mbGlwcV9yZXNl
dChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bSBwaXBlIHBpcGUpICB7DQo+ICAJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSBpbnRlbF9jcnRjX2Zvcl9waXBlKGRpc3BsYXksIHBp
cGUpOyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
bGlwcS5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5oDQo+
IGluZGV4IDJkNDM4NmExNjE5Ny4uMDEyZTNlOWE2YmNiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZsaXBxLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5oDQo+IEBAIC0zMSw1ICszMSw3IEBAIHZvaWQg
aW50ZWxfZmxpcHFfYWRkKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCAgaW50DQo+IGludGVsX2Zs
aXBxX2V4ZWNfdGltZV91cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7ICB2b2lkDQo+
IGludGVsX2ZsaXBxX3dhaXRfZG1jX2hhbHQoc3RydWN0IGludGVsX2RzYiAqZHNiLCBzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0Yyk7ICB2b2lkDQo+IGludGVsX2ZsaXBxX3VuaGFsdF9kbWMoc3RydWN0
IGludGVsX2RzYiAqZHNiLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ICt2b2lkIGludGVs
X2ZsaXBxX2R1bXAoc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICsJCSAgICAgIGVudW0gaW50
ZWxfZmxpcHFfaWQgZmxpcF9xdWV1ZV9pZCk7DQo+IA0KPiAgI2VuZGlmIC8qIF9fSU5URUxfRkxJ
UFFfSF9fICovDQo+IC0tDQo+IDIuNDkuMA0KDQo=

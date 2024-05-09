Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F118C1028
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 15:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32D1F10E93A;
	Thu,  9 May 2024 13:12:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K4h+txKi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A62410E93A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 13:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715260320; x=1746796320;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=q1Vqi+LJXNRT47TbBpeiG2JOFNf9xLXTyKyMH1Aur5Q=;
 b=K4h+txKicFq5hE5Q8IkE0c/+OODA0bo5RDeX0/ZfrXTp5Ywthb06EOze
 sRLpyQ3MHE51Fc9S3hnrhFTv8RL8no5G5BOOhvK76+nmm+gzszAvOWKbV
 iRKU/cYlvizdwQmC0nwTfqTSIIaPgsL0H7SQFMRUtcUyxDcZiQ36kPtaT
 OvKCE6O9rPsJLxtoQI7/smvpW04jsH4G9NPDnb4ywTKl80rZRdWOs2un7
 ZMTicJT/i7loF1tAbW8bFM0QiNUaSmW0H+zszM5S6JXHy6eVgiYzNtVII
 T3D7aq58RNedfZaaLxQ7JC2IGJ0pjwkIHelVwWeKqiTlxxWhfOMWmKdM/ g==;
X-CSE-ConnectionGUID: Laabp4REQsyqvvq3QMJpuQ==
X-CSE-MsgGUID: M3gUWIgpS3uFsYc83OpLrw==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="11334454"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="11334454"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 06:11:59 -0700
X-CSE-ConnectionGUID: WlRBzQCsTeu99vi+sneI0g==
X-CSE-MsgGUID: HroOkqznS06lnVGrHe8YOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="60101110"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 06:11:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 06:11:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 06:11:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 06:11:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SEHDWBayrZVoX3rCsB0+3fyX2Mhy8oHMSs+Pvnkm9UL2h8m93SLqp5lX6WK1eaQyOdG279TcaKxrRCV5NnpAgoVwDav98gGwtMKdXM/MnHorpOfKGfbknFOiWlPAe+KAVZp3MLIBzRAvkU+KCoonAXMnfaiHSLSMbcv7+39QCVVvSyoocVYf8AkPDEIHUY6kXmi6xFnISJvBlIVy+49DJDcYWJE2q0OVyuWJJ9G0JoohZ7KRQGdc96hzbb0YX8W1aVuPWM5yqMbiC+D4fpEmGUMpZYIFAvLlGcNYU/Nt5LXaba/Fq2ql2yIWzLcEeomdZVsGajZWaT44i6qeXH/mQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q1Vqi+LJXNRT47TbBpeiG2JOFNf9xLXTyKyMH1Aur5Q=;
 b=aR3lG9WaYUEy+f9sYT+UElUq38LSGxMgpPi+Vibv+YSzWkQqW1Rpp2C6TpNIqddLq6A8DKWy0YkKL6W8mBJw0OP80WfixOpbUhex2PPotpY3/IAcYU0G45tGXrdLgbJ80e/imjG14XU7LecpegXQxZOtwxLwIror4U7Q1pL7GQsmPGc8e8pc5vaCr2eMyPX7eAYbBNJ0+kg9dg/eSze4NYW5s6CmSS9NVomu5WpxMiSpFqODE/tlVpZznvSKoVyTqG1dFCfOjcMNiKCubh7v26oVcpClhrC4rTaO+2wgi/HYRdW/+je6LNxZ1aOj+k94cmNZYVpSzFkHkF6mYbRkKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB6767.namprd11.prod.outlook.com (2603:10b6:a03:47e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.39; Thu, 9 May
 2024 13:11:55 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.7544.047; Thu, 9 May 2024
 13:11:55 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v9 07/12] drm/i915/psr: Modify intel_dp_get_su_granularity
 to support panel replay
Thread-Topic: [PATCH v9 07/12] drm/i915/psr: Modify
 intel_dp_get_su_granularity to support panel replay
Thread-Index: AQHanSP8qTeldZs2wkiup0vSgmbvvbGO6l0A
Date: Thu, 9 May 2024 13:11:55 +0000
Message-ID: <PH7PR11MB5981660453E944EF8FA986DAF9E62@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
 <20240503063413.1008135-8-jouni.hogander@intel.com>
In-Reply-To: <20240503063413.1008135-8-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB6767:EE_
x-ms-office365-filtering-correlation-id: 35effbeb-03be-463a-6dd0-08dc70299982
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?UU1kQ0sxd040Z3lyZWpqQnB6ZHhLN1k4QktjRFN5T2FGYUsrclRjRUMzcVF2?=
 =?utf-8?B?MXJrWWdOc2hxeTBoZ0VVMjRLNFgwaVJ5S291U1hZLzM4ZFcwV2VuamdmMU1S?=
 =?utf-8?B?MzVwdGNFTXRobFVGQ0ZLU1FuT0k3aGNHRURyUXd0Q3ZmTWhhRVM0UVdaMFpR?=
 =?utf-8?B?YUtRZlMwMmFXWUkrS0xtRXJuK3FZTWVNUjNtS2FkWmhnOEJucGhQNjJ6d3h1?=
 =?utf-8?B?cGUrTE50di9kd1R0WWF5OTA1Vi9sS2l3Tk1qdWRiUmlmRVY2WDJaUlpwM3cv?=
 =?utf-8?B?TytoN0hjTzNOdnZaSWc2NXZVd0ViRjdibzNwMk1wQkcyZmFBVitrRWNuN1k5?=
 =?utf-8?B?UmZhNkRPS0ttS1lFVGlnSEFwR2Q2UXZqckRHMEQvQnloamluK1Q1M1MvSXJ1?=
 =?utf-8?B?dVl4LzFlaVFrMHJTUzMwc0Y2NE1LU0tXdTVVb0xuUkQ4T1dvYUFMTTFHK2hP?=
 =?utf-8?B?QkYzTEU2Tzl6b3RJbUp2N25uTmJzMmppWUtRNUpEellIV2lqNDZOOWdlSmMy?=
 =?utf-8?B?b3FZOHpJUlNidzg4K0psN1YrVmJ4V29kTzIrUWhTNUZXZWs2cmFuT2l1bUVF?=
 =?utf-8?B?QUNHVW01ZDMrejlNNW9Qc0gvRWlDc2dPU0wzR0JZbnRnTDcvaVIwRlYyT2Q0?=
 =?utf-8?B?bkpmbVVOeDJWdEFibGVsVzFYYU5jL0dHcHVHV1Iyc1pUT0hGS2xybTFWdmhM?=
 =?utf-8?B?ZVZUaVFxVW9RckI0aTVadzcrRVk1QjJOUXJrRE0rUlFiNzY4TCtMTEdLUlRa?=
 =?utf-8?B?ZENWYVN3Uk4xOTlvMUtmcmoxcFpQMTlpQ05BM1BDS2Rka0xTbG05STVOc2dj?=
 =?utf-8?B?MjY2K0R0YWxmcVhmV0hVOWdmK2M3LzZFMS91REFNeWtoeXBnRFE1NVM1eWUx?=
 =?utf-8?B?dFZ1YnBXT1F1dkpkWlI1Q1RLYi9pME94RzdjY2VHazFiRTBBSEgwOGttcTlM?=
 =?utf-8?B?NDR5dE9RTWZBWVZvcHhPUkRZVlRIR3ZzLzRLMTJERXZRcStuNHA3NmpPUFhY?=
 =?utf-8?B?UWxaSlpKNnF3UUVlTWNPZ1kwcjVyNmFzdVJ3ZjAraDR0NXdNUU56OHlYNjNY?=
 =?utf-8?B?a09aVFAxRnN3c2U3VWFIOEtJOUJVcmhhdkZoUlRoaWJYRXpTaXRacWFXeW9P?=
 =?utf-8?B?RkJqNG4vcytnY29PTEFnZUo5Sit4emNPMkEwQmx5Y0NLZytSanl3dGJ2KzB1?=
 =?utf-8?B?NDN5aktJR2x5cmdlSENnTG10clZ4a0ZwanFmdE5ob0Rjc1J1UnBrclNNRUQw?=
 =?utf-8?B?ZGF5ci9XTTZJYURXSUlFeXo4VFlweHlYZUs3R1UweUk0aGlycWE5MTNyWWZQ?=
 =?utf-8?B?N3NCbFhhdU91NHh2TkV5QStHL2ZIZHBwNTlKNFN3RlNSTUI1ZWR0T0NNa241?=
 =?utf-8?B?ck9MbWhOUkdmQnNTYndYa01IUWVUQmVhOFY3NHBhUk0yMVdPV2pMR2gxYVVm?=
 =?utf-8?B?ODl3dnYvbGNEYVc2ckQ5SStyUWpGSm93V0JxS2JBUWlWQkdidHZONXQ1NENr?=
 =?utf-8?B?dmxkaHZwM2pubEhLcTBKeXRVSFMzN0wwOTV3UDAzTTZLM2VrMExiRGVjY1dp?=
 =?utf-8?B?alhQaElSZU5HWDhCbHg3REdHQWVOMkF4WGswdmNDNmpLZ29wTnJZaU1xNzlz?=
 =?utf-8?B?cGdxYVRYQmxsZ0ZsNWltT0VMVk5HbzJQZTNTS09BalFEbmpqK3M1M1lMaFVR?=
 =?utf-8?B?RWlzY1hFM2ludW5ocXFabVhITDR4ODBna1NZdzJKMzVlNkt3Q0lmMWhEdEho?=
 =?utf-8?Q?aCiHZmqsyQ9yXlk3eQAvhUSIvQDClrXiEG8c/o8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTBXVkJEclVsTmQvK0ZiM0V0Y092NkVOZHZYT3F5WXY5V3VZN3JmdlE1dGFC?=
 =?utf-8?B?Nkw2bkRtYUFSYm9TUWEvOURBakYzZlgrb3hwdDNySUxpZlJpeW1nN21ja1Qv?=
 =?utf-8?B?NktSRjhGdFhXYjQ4UUQ0L1BwU0duRmtkVXhVRVJiMVZySzFjTDVjYW5Gb1pM?=
 =?utf-8?B?WkZGRkNURmpIekRveUdQTW5jekNFSFBRaGNZZG5yRTJQZW1qMm5pWW1UUEl4?=
 =?utf-8?B?bUhJOVJudTZDTS9uaWxYUWppYUErSXFEL0tDZGFJTWEyRDliL0Nnd2ZwanZs?=
 =?utf-8?B?MFJNdGpQUFYyM2ZWT1RoeGtZVFZ5VDBHdzhxc0JySGxQU3ZVYlBqTnA3ZlVO?=
 =?utf-8?B?bHphWnpLd0ZYakRpUjZXQ2g4VFdUb0VpVkExWFpzTXJBbmM1WjRmUUU1eUJY?=
 =?utf-8?B?cDZEcjhveUZNa0NZN1R6WmxWYlpNRzEyU0U1R0FUNWIzalNhVHBOYisvZklS?=
 =?utf-8?B?UW9uRTUzTWhiaEJKZ2VwS0JiZzBxbGlaMEJkekFWREM0Q2g3dHI3U2FqSVFP?=
 =?utf-8?B?bURiNG1jQVgwa1FDUCt2V3crNFA5SDFMbWV2VGc0Q0Y1Y3dBS2dGdWNSQmdv?=
 =?utf-8?B?allsS1hLR2d6amhOM3UyTGlMSjZBUjMzWlRXb2xjVlJkZ3hXbTBsWGJ4UTF1?=
 =?utf-8?B?aE5ZWldtTGU3cE5uaThBMm1qdnNpOTkxTUZLYXBKRTIzZjZ3RjBOY0l1Nkdw?=
 =?utf-8?B?QlpEZEFsRjV4L2ZUMGI5OXRUV1R2bk9Sa0ZpS21VTlA0d2dtY1lqMGZxQ0Zi?=
 =?utf-8?B?cFlOekJDTG5oVlNEVHdZelJjWVZ0bk1FV0RSTzhMVWEvTllEcnZkUWF2VFF2?=
 =?utf-8?B?UzN6VTZjeExhVThxdURicno4NjI2VDZBUmRjeHRQNzhob1I2SUJ3U0VuRmZM?=
 =?utf-8?B?TjA2WHpzaXdPVzl3Y1A2Y0lsOW4yYUJQaWtZRGFhVkxscy9FalJVZ1o3a1hj?=
 =?utf-8?B?cnJiQ0hkQVBkVC9TdEIrZFhjOU9ickNDVkdGT255RnAyRU5aNXJlSmNXLzla?=
 =?utf-8?B?UEoyblIyamdZMjI2am8wUWtRa1RuUjk5Q0pxQW5vSGkxN2RGdWRzZ3IxejU1?=
 =?utf-8?B?bzljOWozWStEZHp1MW5HVmZiMWdkR201QkMzVHFEUWxQR3F0a0lmaDc3Q2Z5?=
 =?utf-8?B?K2srODdkUXhDWmJSWElKV3ZiRXBYb1RPYlZPd24wMjg5MWxMZGcycWpqV1NM?=
 =?utf-8?B?bGN1M2VNaWtCb2ZFOGxRN1VJaDlUTjBNRkFLZEVSczRWZGwraEljQlNmUC9r?=
 =?utf-8?B?UWFiNGpuK1ZNK2Z5YXUwSkZyU0w3aEtCSmNHUU9NZ21GMlJLc1VXTkdyWTI5?=
 =?utf-8?B?TUMwNUhvTVp4VFpjS256b3R4WDJnYjlqR2JwZDYxZXRGVkIwRE9oZXhUR0FS?=
 =?utf-8?B?SXBmWmpCY3g0azRaVkMzVmE1WVZzUlUxUnZWWGRXNnpoS0lrVXpNa0NMZlF0?=
 =?utf-8?B?YmxvOEtqbGJ5M1UzbVpGd3lHWlpJekdKQTdRL2REMHBhZWtMUWZtN2ZmTnM5?=
 =?utf-8?B?bERJeFFsVjF6S0Q5M2VCV0dvaGpJZlBNT1RDWDgrQWVySW9JRVdwT2doQ0li?=
 =?utf-8?B?K3RpUVR3cUR0bTdVU3g5cE9CMGw2aEV0OWpEakdrQXB5clRjRDlmRkVTUlZm?=
 =?utf-8?B?WVNOSmVwWUhQL3FwWDVHbmtRWVpVdE5pZlU1Q1RrcFhXQjdncmd6R3FsQWhD?=
 =?utf-8?B?blJ4dHRYRXpwQ2R0WXhSMmh4c1JjMGpTc2N2WERRajJqS2lCMWF6Ykt2dnJp?=
 =?utf-8?B?OGhSMXg3WHZsSmc2ZHFiZW04NHRtWEkzMDhCRWp4Y2ZQVkpPNnFjQ2lMVjRi?=
 =?utf-8?B?OVhUR0hxREpCL3A0MlRzQUpEVE1DWFVXdytJM1BrbW5VVVhmNDJWTE1OeGlG?=
 =?utf-8?B?bStFSDI3c2xMSmlRbytIV0JFNVFZMHN2b0RqSG5tL0dXTzhIMVVFUUlYSlJR?=
 =?utf-8?B?T2NiZXZQSWhqRHIzU1NVYUpOSmUyMTI4OGs3cjNJQWgvNklNSzhMNHVWN25J?=
 =?utf-8?B?QVVGazNBQ0Y0TzlHdm5RREE4R1JXK3BYMWdNRDh4OGVlczRJWlBaTzR4RStm?=
 =?utf-8?B?MHZ4c3dLK083RHFHVTFDdlZYb1pLQllnMHFqVkExUHdWVCs0eDRhQ3lxc3Yw?=
 =?utf-8?Q?QAltIEmTsRpMXpLm+Ud4fFhy8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35effbeb-03be-463a-6dd0-08dc70299982
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 13:11:55.0767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z0OocWQg/gXa7q3VU+NUaFjxWalM62rMfOvlasuI9+SwOkUlgV9uFMUFnd56uCdXrr/YH5+UOPO6QnVNaQ+MiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6767
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMsIDIwMjQg
MTI6MDQgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0K
PiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjkgMDcvMTJd
IGRybS9pOTE1L3BzcjogTW9kaWZ5IGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eQ0KPiB0byBz
dXBwb3J0IHBhbmVsIHJlcGxheQ0KPiANCj4gQ3VycmVudGx5IGludGVsX2RwX2dldF9zdV9ncmFu
dWxhcml0eSBkb2Vzbid0IHN1cHBvcnQgcGFuZWwgcmVwbGF5Lg0KPiBUaGlzIGZpeCBtb2RpZmll
cyBpdCB0byBzdXBwb3J0IHBhbmVsIHJlcGxheSBhcyB3ZWxsLg0KPiANCj4gdjQ6DQo+ICAgLSB1
c2UgZHJtX2RwX2RwY2RfcmVhZGIgaW5zdGVhZCBvZiBkcm1fZHBfZHBjZF9yZWFkDQo+ICAgLSBl
bnN1cmUgcmV0dXJuIHZhbHVlIGlzIDAgaWYgZHJtX2RwX2RwY2RfcmVhZGIgZmFpbHMNCj4gdjM6
IHVzZSBjb3JyZWN0IG9mZnNldCBmb3IgRFBfUEFORUxfUEFORUxfUkVQTEFZX0NBUEFCSUxJVFkN
Cj4gdjI6IHJlbHkgb24gUFNSIGRlZmluaXRpb25zIG9uIGNvbW1vbiBiaXRzDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0K
UmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYyICsr
KysrKysrKysrKysrKysrKysrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDU1IGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gaW5kZXggYjk0ZjhlMzNlZDFmLi41ZTVlZjQzMmI5MzEgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNDY2LDYgKzQ2
Niw0MCBAQCBzdGF0aWMgdTggaW50ZWxfZHBfZ2V0X3Npbmtfc3luY19sYXRlbmN5KHN0cnVjdA0K
PiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJcmV0dXJuIHZhbDsNCj4gIH0NCj4gDQo+ICtzdGF0
aWMgdTggaW50ZWxfZHBfZ2V0X3N1X2NhcGFiaWxpdHkoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkgew0KPiArCXU4IHN1X2NhcGFiaWxpdHkgPSAwOw0KPiArDQo+ICsJaWYgKGludGVsX2RwLT5w
c3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCkNCj4gKwkJZHJtX2RwX2RwY2RfcmVhZGIo
JmludGVsX2RwLT5hdXgsDQo+ICsJCQkJICBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfQ0FQQUJJTElU
WSwNCj4gKwkJCQkgICZzdV9jYXBhYmlsaXR5KTsNCj4gKwllbHNlDQo+ICsJCXN1X2NhcGFiaWxp
dHkgPSBpbnRlbF9kcC0+cHNyX2RwY2RbMV07DQo+ICsNCj4gKwlyZXR1cm4gc3VfY2FwYWJpbGl0
eTsNCj4gK30NCj4gKw0KPiArc3RhdGljIHVuc2lnbmVkIGludA0KPiAraW50ZWxfZHBfZ2V0X3N1
X3hfZ3JhbnVsYXJpdHlfb2Zmc2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApIHsNCj4gKwly
ZXR1cm4gaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0ID8NCj4gKwkJ
RFBfUEFORUxfUEFORUxfUkVQTEFZX1hfR1JBTlVMQVJJVFkgOg0KPiArCQlEUF9QU1IyX1NVX1hf
R1JBTlVMQVJJVFk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQNCj4gK2ludGVs
X2RwX2dldF9zdV95X2dyYW51bGFyaXR5X29mZnNldChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KSB7DQo+ICsJcmV0dXJuIGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9y
dCA/DQo+ICsJCURQX1BBTkVMX1BBTkVMX1JFUExBWV9ZX0dSQU5VTEFSSVRZIDoNCj4gKwkJRFBf
UFNSMl9TVV9ZX0dSQU5VTEFSSVRZOw0KPiArfQ0KPiArDQo+ICsvKg0KPiArICogTm90ZTogQml0
cyByZWxhdGVkIHRvIGdyYW51bGFyaXR5IGFyZSBzYW1lIGluIHBhbmVsIHJlcGxheSBhbmQgcHNy
DQo+ICsgKiByZWdpc3RlcnMuIFJlbHkgb24gUFNSIGRlZmluaXRpb25zIG9uIHRoZXNlICJjb21t
b24iIGJpdHMuDQo+ICsgKi8NCj4gIHN0YXRpYyB2b2lkIGludGVsX2RwX2dldF9zdV9ncmFudWxh
cml0eShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7IEBAIC00NzMsMTgNCj4gKzUwNywy
OSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJpdHkoc3RydWN0IGludGVs
X2RwDQo+ICppbnRlbF9kcCkNCj4gIAl1MTYgdzsNCj4gIAl1OCB5Ow0KPiANCj4gLQkvKiBJZiBz
aW5rIGRvbid0IGhhdmUgc3BlY2lmaWMgZ3JhbnVsYXJpdHkgcmVxdWlyZW1lbnRzIHNldCBsZWdh
Y3kgb25lcw0KPiAqLw0KPiAtCWlmICghKGludGVsX2RwLT5wc3JfZHBjZFsxXSAmDQo+IERQX1BT
UjJfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQpKSB7DQo+ICsJLyoNCj4gKwkgKiBUT0RPOiBEbyB3
ZSBuZWVkIHRvIHRha2UgaW50byBhY2NvdW50IHBhbmVsIHN1cHBvcnRpbmcgYm90aCBQU1INCj4g
YW5kDQo+ICsJICogUGFuZWwgcmVwbGF5Pw0KPiArCSAqLw0KPiArDQo+ICsJLyoNCj4gKwkgKiBJ
ZiBzaW5rIGRvbid0IGhhdmUgc3BlY2lmaWMgZ3JhbnVsYXJpdHkgcmVxdWlyZW1lbnRzIHNldCBs
ZWdhY3kNCj4gKwkgKiBvbmVzLg0KPiArCSAqLw0KPiArCWlmICghKGludGVsX2RwX2dldF9zdV9j
YXBhYmlsaXR5KGludGVsX2RwKSAmDQo+ICsJICAgICAgRFBfUFNSMl9TVV9HUkFOVUxBUklUWV9S
RVFVSVJFRCkpIHsNCj4gIAkJLyogQXMgUFNSMiBIVyBzZW5kcyBmdWxsIGxpbmVzLCB3ZSBkbyBu
b3QgY2FyZSBhYm91dCB4DQo+IGdyYW51bGFyaXR5ICovDQo+ICAJCXcgPSA0Ow0KPiAgCQl5ID0g
NDsNCj4gIAkJZ290byBleGl0Ow0KPiAgCX0NCj4gDQo+IC0JciA9IGRybV9kcF9kcGNkX3JlYWQo
JmludGVsX2RwLT5hdXgsDQo+IERQX1BTUjJfU1VfWF9HUkFOVUxBUklUWSwgJncsIDIpOw0KPiAr
CXIgPSBkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LA0KPiArCQkJICAgICBpbnRlbF9k
cF9nZXRfc3VfeF9ncmFudWxhcml0eV9vZmZzZXQoaW50ZWxfZHApLA0KPiArCQkJICAgICAmdywg
Mik7DQo+ICAJaWYgKHIgIT0gMikNCj4gIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gLQkJ
CSAgICAiVW5hYmxlIHRvIHJlYWQNCj4gRFBfUFNSMl9TVV9YX0dSQU5VTEFSSVRZXG4iKTsNCj4g
KwkJCSAgICAiVW5hYmxlIHRvIHJlYWQgc2VsZWN0aXZlIHVwZGF0ZSB4IGdyYW51bGFyaXR5XG4i
KTsNCj4gIAkvKg0KPiAgCSAqIFNwZWMgc2F5cyB0aGF0IGlmIHRoZSB2YWx1ZSByZWFkIGlzIDAg
dGhlIGRlZmF1bHQgZ3JhbnVsYXJpdHkgc2hvdWxkDQo+ICAJICogYmUgdXNlZCBpbnN0ZWFkLg0K
PiBAQCAtNDkyLDEwICs1MzcsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfZ2V0X3N1X2dyYW51
bGFyaXR5KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJaWYgKHIgIT0gMiB8fCB3
ID09IDApDQo+ICAJCXcgPSA0Ow0KPiANCj4gLQlyID0gZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxf
ZHAtPmF1eCwNCj4gRFBfUFNSMl9TVV9ZX0dSQU5VTEFSSVRZLCAmeSwgMSk7DQo+ICsJciA9IGRy
bV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5hdXgsDQo+ICsJCQkgICAgIGludGVsX2RwX2dldF9z
dV95X2dyYW51bGFyaXR5X29mZnNldChpbnRlbF9kcCksDQo+ICsJCQkgICAgICZ5LCAxKTsNCj4g
IAlpZiAociAhPSAxKSB7DQo+ICAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+IC0JCQkgICAg
IlVuYWJsZSB0byByZWFkDQo+IERQX1BTUjJfU1VfWV9HUkFOVUxBUklUWVxuIik7DQo+ICsJCQkg
ICAgIlVuYWJsZSB0byByZWFkIHNlbGVjdGl2ZSB1cGRhdGUgeSBncmFudWxhcml0eVxuIik7DQo+
ICAJCXkgPSA0Ow0KPiAgCX0NCj4gIAlpZiAoeSA9PSAwKQ0KPiBAQCAtNTg4LDcgKzYzNSw4IEBA
IHZvaWQgaW50ZWxfcHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAg
CWlmIChpbnRlbF9kcC0+cHNyX2RwY2RbMF0pDQo+ICAJCV9wc3JfaW5pdF9kcGNkKGludGVsX2Rw
KTsNCj4gDQo+IC0JaWYgKGludGVsX2RwLT5wc3Iuc2lua19wc3IyX3N1cHBvcnQpDQo+ICsJaWYg
KGludGVsX2RwLT5wc3Iuc2lua19wc3IyX3N1cHBvcnQgfHwNCj4gKwkgICAgaW50ZWxfZHAtPnBz
ci5zaW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0KQ0KPiAgCQlpbnRlbF9kcF9nZXRfc3VfZ3Jh
bnVsYXJpdHkoaW50ZWxfZHApOw0KPiAgfQ0KPiANCj4gLS0NCj4gMi4zNC4xDQoNCg==

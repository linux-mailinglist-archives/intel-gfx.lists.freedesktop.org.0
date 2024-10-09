Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 295FD996E56
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 16:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C968A10E75E;
	Wed,  9 Oct 2024 14:41:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OynuundL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E44110E762
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 14:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728484884; x=1760020884;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Kej3SNB/awzT7tM8jZb1ApkMTn07UehLgAurS8xvc48=;
 b=OynuundLlBGX+La+UmJI0jFl+CKFsmCCtDMmqVStEo8vlslrHqwPyqcp
 LXB8LdLsuSypSV8+5e3tlkPzQmP7zsLCe7NUIgdjcO22TFAG1SWUWYBYa
 6o3ZMjjCHw4z6E0m2gvFITizmpXGKWJeDf/eQeDIyej5h0GY5anyuKK4V
 2VFwVhsx2TRvwfKy4rTlfQPCCWqiC2X7FcpbPnpxHqT26YijiH65sMkhs
 YNOr1CBhkhV9Z3nF//i4GNIxCUJiZ+3UXJGlern6aZdjTvU9+1esI1veu
 2vitviMxNqc1Wf4000XpjhNRYSgMLOPICmofqrASOUStBQQEAyotT3f+z g==;
X-CSE-ConnectionGUID: E+hgMsU0T/6wlMFejw+ksw==
X-CSE-MsgGUID: FRxwk6zmT3myFvvNVZD7Xw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27924152"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27924152"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 07:41:14 -0700
X-CSE-ConnectionGUID: Gpuw/Tm/ROmMeWURNac0tg==
X-CSE-MsgGUID: s9gfbAYpSPSWUK6rY+wyTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="107098523"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 07:41:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 07:41:13 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 07:41:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 07:41:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 07:41:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J88NLAsKjklaav6VHr2C12dXHsWOXeN+ESapDZD36DKNsk6ppjv24M5U8fT83lA+p4xgxv9x8LG6D8pvytu6RzkNoPu2rkqg56VWYmFbSFYe0AHV1pr+hJHAP2jf5TlmiaIooQG70NhSDjQTbgTMLs8TseW/S7Vh2O03gER0OwdEa7kAmjHGfDg83ojSiQMlYg2nBGlNEKESOFAYaYlnsghGIIoGPrNq1LV9WYcVWQU+4zGhd1/WS5kC5YvaRQl1FAOIzC88BNAO0LXdumkHoaE97mdrL90wATihRztlSVv9qIts0C2M0aVilhmLjtRm2ROoMn05l4KSN9spYfpJmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kej3SNB/awzT7tM8jZb1ApkMTn07UehLgAurS8xvc48=;
 b=bC7LZpdZLSiq/DG2cVOmasr1mUorCgciRU703kOxbvspLgdp98NGO95+6UPOwuE2XMWWoRjUa+uuaAvVdT4iWpDmReST/kb5hxWp7rRBo/rWwGWELiUPR6bQSn8+3bOrU+519xCR8hBgtQVSGJkflDYHvyJefRiuQawWApcNhETl13tEt3l6wsc4X6GTZjuscSxCQ1gROb/u09DR7Qf0x6B5es4b2XQrZsakLjuxILKB7sHPnFwpov82/uab5WMeAiOID7Ury7L+Ia5mvUuP65ZYhgFSOvrb2IEKNrOvVLUBxaAVTkDbFlAYd8B7/sRB6S79brox7iT+ODWB/iWevQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by IA1PR11MB6124.namprd11.prod.outlook.com (2603:10b6:208:3ec::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 14:41:03 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 14:41:03 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Hogander,
 Jouni" <jouni.hogander@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH v2 2/2] drm/i915/display: Fix Panel Replay vblank enable
 workaround
Thread-Topic: [PATCH v2 2/2] drm/i915/display: Fix Panel Replay vblank enable
 workaround
Thread-Index: AQHbGlE6JK7MAKYJdU6FqPPz+nUEI7J+fczg
Date: Wed, 9 Oct 2024 14:41:03 +0000
Message-ID: <CH0PR11MB544431DDEDF94703204302BCE57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241009134225.1322820-1-jouni.hogander@intel.com>
 <20241009134225.1322820-2-jouni.hogander@intel.com>
In-Reply-To: <20241009134225.1322820-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|IA1PR11MB6124:EE_
x-ms-office365-filtering-correlation-id: e716dbc9-8c56-4898-2dc9-08dce87066c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?K0NudzRXa1FJaXRsMVFQcnVFMUdrYStkVndTNDc1aWdHb1phMU9XTmZJRVJ0?=
 =?utf-8?B?OStpZXZPd21yZkFTRDlTZTRiWEx4TXRvN2ZOeVcyOE1OWlU4NXNJYkV0bmVw?=
 =?utf-8?B?Vm5CR3FXTVhROEUwRlRROG1pUmpmNHYwYk1nemNXTHMrTXhmVEFiRzJTL2Zv?=
 =?utf-8?B?UU9DU09nN2hYYk5rR2RrRUJibytaUWR1cDBSZmZ0NEg2RVlkLzlic3FFMEVm?=
 =?utf-8?B?N0UwMkZVTFZMRzhkbldJT0VkanhvcEhyVWptSVhvMXpuV0J0R0xNZ3JYcncz?=
 =?utf-8?B?Mnk3S3JUM1htMktMd2twNnVzWGJ5UnVLbTVyd2dYS2ttdDM5ajlFNGw1V05r?=
 =?utf-8?B?MHBydnFZZHZNYUM5c05jMWc4d1h3ckl3bzhteGxJM24yMzMzZmR6ZDMwd1ZH?=
 =?utf-8?B?aHRkY3ZkSXlYTHl5ODFNUFBIODNDUzZvMXk2M3BNdDNMc1Z2dzJubmdxSitC?=
 =?utf-8?B?V2tLOHlpbDNwME1ucTBCTHljQXArSlJGQVNDYnZabTFzUy9YNnBERnR5S1l2?=
 =?utf-8?B?V2Y0V0I0U3pFQWdlYWtCV05HY0V5U2k4S1lBL21vUStFVGxuVmZvVTdQYmwv?=
 =?utf-8?B?OGxvU1h0ZXFkOENCS1h0SUV4RS9wOFJmb2VnMHJNV3ozajU5VXR3Z1FhM0ZH?=
 =?utf-8?B?Um1TeUtlUzJDTDFHMnhVQitHSHFDSXZnZ0ZrMTlOdGpwMVhkU3hmUjNJaGpI?=
 =?utf-8?B?bFVDTWdRcnp6VFA3eHdGbGh5Z1dGbzNuWHFzcjcwSE5XbHpDcS9zaUZLME16?=
 =?utf-8?B?QlBpR1VZNUl4eHFkTERoelZicXdmOG52RHJVaks5dnVjSCt5cnFkSE16czlo?=
 =?utf-8?B?TEtiYytoa0xSSUMxT2Q0ZDEzMzdvWTFaRzhucGFhZ0pYN2dOaE1pTk1TYXk3?=
 =?utf-8?B?dGZ2T0UwWDV4Z3ZkRzFwWHJwa0FGcE1rWHB2T1lCZW5WcmxYbmRQYTVtK3du?=
 =?utf-8?B?WnA1SVpZMlVKRERXSVNSWk9sSWxpMHFSbEZuL0dMOVlva0dBem9NeXEydmFW?=
 =?utf-8?B?MDFjNStHRTJBeG1WTTVqSnRZWkFjVnQzMmJBcndNUUdXb0Y3UDFBb0pYM3NN?=
 =?utf-8?B?a0phQ2luYk53MFk4dnU4akYzcWcrcnpXRmpZVUY5L0hTSklMaVowQkZxTjln?=
 =?utf-8?B?c1Rkem5aRlhEYlFsZmI4V0tHUUZhZ2ZGTTlxb1dKWGNGbWI4dkIxc2NuNHYw?=
 =?utf-8?B?d1ZmWWplcUJ5QktSMXhoaS94M0ZwcHY5Z2tUMExvQ0xnTld0Z2MyYXU1TXFW?=
 =?utf-8?B?NkpvOG9yY0VHZGI2WWx3QjJrOG9jL2QvQUpoQ2c5dm9ZNzc0SUNCYUwxNVda?=
 =?utf-8?B?UGRkNWM3YTZDZmVMZmMyN2J1V2Z5ZGNpVXUrY2haQkxzVE5ubWdvQS90WlJn?=
 =?utf-8?B?RklJMU1mdExRVHpNY21EVE90YXFIQVo2UEl5T3NrOW8yVmRNWWRhTW1rN1FT?=
 =?utf-8?B?eUdyTmlzamRLK1ZZbEYxYUlrSU9kSzg3TUZnQ1JPQjBWSENlRVNtMW9ZYkJt?=
 =?utf-8?B?Yzhmb2dOVmxLdFJEajc3bFpIQldaOGdMU2V2SzBKU0NXY2VnckxNMGRIbmRp?=
 =?utf-8?B?TkJ4ZXlwZVZPM3JJOUN5SnNIQW1aQmtkT3loVngzay9uY1ZsK0prTkdaWjYz?=
 =?utf-8?B?Y240b01icVFyMFU3WndQNHlSV0UzS2VmdjdjTHZTSXkzYndZa1hQbU50ZDBM?=
 =?utf-8?B?NkNkYlU5dTRiTUMyUFR0OFFMMzZkd0pXdWN1N3RNNkNQZU9HMlNhMDMzdDB2?=
 =?utf-8?B?aGFYOXpza2JhQjFDVzdVTHhRMEFjL2FLWHpGZmg3d0NRdUpibzd3bFZlNUlm?=
 =?utf-8?B?U2NlSjdxMzdzWWNPSVZpQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eGx1Y29NZ0NrSUFhbW0rODVWU1FTYjVUVU8reFNzVHNWMm9VTDRrNlRSUWtK?=
 =?utf-8?B?a0d5SE4yNUJSZXlyeC9rdGc5TnpYVVRTb3RnZk1ka1FkQ2xLQmN1Q2FaKzl4?=
 =?utf-8?B?S0NWQWJYdUQrZTh6UXRWOWJScXN2ZmZyQkh1VW5WTUlQSWlxMnpNb0RSZXZ6?=
 =?utf-8?B?ZExxWXlwYmJpcjNUU0RrYlowZU1vV2RNbFpHZjVCUzI5SldIVzM0Q0lRL0pY?=
 =?utf-8?B?eFdIcTM0eGZYaDFEV3ptK2Mzdmw1R0EvTDNGVUpRYm1TRUJSMWxKVGtzRG1E?=
 =?utf-8?B?M01MSUI3V3FUbzZnTEhneVJKdDlQSHB5bk01QXdtNUxoblVmRzkxM2VBSEMy?=
 =?utf-8?B?b3ovcFI0UUkzempwVWNrR0VQSjdLQ2prUUpYTFNNa2pKZ0dDWkRWV3dCQXkr?=
 =?utf-8?B?MzR6dXFVNnBSWHRSSFFXVHBrYUpWK2NRVUV4ODFVNWN2NHNaUFBqMnpyQ0FM?=
 =?utf-8?B?bVdQVE1jdnZ3TlBNMUNHcUxVRVhId2MrQlBsUVZDQmFQeDNBc0dpaTRsVEtU?=
 =?utf-8?B?d1N4eUZybjFJZGJaR3hWNEFaMkI1YVdWSVlqNytYc3Q1TzRUQzlKb2Y5aWt3?=
 =?utf-8?B?N2o5cmIwTTJTc0R4U2NHOEpSMVZKdVZicGd2NmoyV2ZSeXRaVmhFSThMMWNz?=
 =?utf-8?B?WkpuTzViVTFrd1lFcHpaUU5HRTQ3YW9lYVZwQ000a1BzYzc5Z2tGYVJNeXJB?=
 =?utf-8?B?ODZsa2NVYysyWjk2T3ZDQkovRTd4ZjRZSXRRdW9tVGVWaVJtSkFEU3FxcFlG?=
 =?utf-8?B?VWpBa21NMTIvbEY0d0xqdkFRM29PeFNoZ2l2TUVIM0N1QXNPNkpnTnB6UXBz?=
 =?utf-8?B?ZHl3U2cxUm1POXZFSkhjSFFMbHIrMWZ2K2cyKzRvb0FVZzBwK1BScTJYcHRM?=
 =?utf-8?B?RHV3L0dwTC9ROUpXV0wvSW9jL29JUzNIZWs4dHVnNHErbFVFUkpkVEQ4WGk2?=
 =?utf-8?B?WVpRSGp5V1QrSmZlY3k5SzMvWkJ1M3hhcDFHc2Z3TW90QzV2cWNJV0tFQjdm?=
 =?utf-8?B?NFkxUklUUXRTZldKNmxYRkZDSWNnaW5YRG8vOG84WW9Ic1ZXYkNqUXBvUkdF?=
 =?utf-8?B?TE9kTHZNaGdvaGxBaUFadkY3WXZkclpDK0VQb2E0akxqTHAvZUxETWpHMXp0?=
 =?utf-8?B?LzgxQndGeW1WbnZDaS9LN0c1Z2svRXRlZjdpYXFzZ0didEdUVmxiblpCMUhE?=
 =?utf-8?B?Y2l6RWpLRlNqNFcySXRDbUFZekRLNkVDVHZEcFZENUE2ZEJkTWpPdUxJV0Q4?=
 =?utf-8?B?MzNzamhUZnpUV3FTQ25weEVaSTRPZU9JL3VVelRSU2UzTVc2UDBTMDBGSS92?=
 =?utf-8?B?Vnp0cXZ4VGczZm80YzhqWE5iU3Bud3p4ZE1RVEdsL3NNd2NqQlc3Z1lXL08x?=
 =?utf-8?B?QkRQZmR5KzJ2M2ptS3VvMk1mV0tJdlovRkdLNjdRZE1GMGFQZExVUEdLMGVi?=
 =?utf-8?B?SlFjbk9zQVdDanpZYjNzNk5DeThVbFhvUU5HTDZYK1JiNzg5UitsaHRXZHJu?=
 =?utf-8?B?Qy9ZY3N6NDdTMVl2ZWRXS1pzMmRyblFYOWNyQldSVnY5RHl6QkN1ZHNaQVFJ?=
 =?utf-8?B?VDNxTExhdDR4QkdscmpHWkt0RnNvdVVMQW5adVVXNXJ1Rmc2TzBpSTRRb2NO?=
 =?utf-8?B?Ym16Y0ZlRHpkcWhPbDIxUzFCdEdGL0N0bFY2T09RQ0RjSCtjWTZnSVFaMHFH?=
 =?utf-8?B?dFdQVEJQMm9pd0V6aW0wM3Z0SE1Tcm9zWEpIeE8xRnI0TkJVR2ppNW52eXUz?=
 =?utf-8?B?OHdENUM1Wnk5TVk3Sm1OQURCZkNqY1BYVy83Kzdqb253MVlkQVhaeWdZVm1j?=
 =?utf-8?B?OW5qNm9PR3ducDltZDdxVGdxSjhQbnJoWmhCaDFrZXBzVHlPUUZ3V1kzMlNN?=
 =?utf-8?B?bEc0WVdSdkYvY2VUU1RVakQvT0thd05GbExTN1JlNHUrSWljSXA0SE12SVJl?=
 =?utf-8?B?TldZcWk3VDAzL2lIMmVEeHlGRHdFRHA3VlBOQndySks5WkJrV2lObmJpQTZT?=
 =?utf-8?B?dzc2TEloTVdxRERGa2hrRkVqRERTYVFQWkVmeFhPSTJYanhCOUR1ajJQTnlM?=
 =?utf-8?B?RGhTdTByamhsOGFmaTJkYkN5aGRta2tJOENQSE90Ri9kZlk5ZW0xbVlJNGZz?=
 =?utf-8?B?SXAwSnJQRGoraGR4Z3I4NXV2QUhQeUtKVG5oUGNKSHFBWm1GZTFuK1BobnJO?=
 =?utf-8?B?WUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e716dbc9-8c56-4898-2dc9-08dce87066c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 14:41:03.7542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CLzAT1w3VNGjwzRPMa3kq/06e1akEKMjc8Yxazzd3JbH1OT4OfjxL5YdFVwiyMtjGLl/YQJ+xulYGnFfgT/Wm/klnZPvNaLGJv6jbe/FFDE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6124
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJv
dW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkgSMO2Z2FuZGVy
DQpTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgOSwgMjAyNCA2OjQyIEFNDQpUbzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
OyBqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb207IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KU3ViamVjdDogW1BBVENIIHYyIDIvMl0gZHJtL2k5MTUvZGlzcGxh
eTogRml4IFBhbmVsIFJlcGxheSB2YmxhbmsgZW5hYmxlIHdvcmthcm91bmQNCj4gDQo+IEN1cnJl
bnRseSB3b3JrYXJvdW5kIGlzIG5vdCBhcHBsaWVkIHdoZW4gdmJsYW5rIGlzIGVuYWJsZWQgb24g
Y3J0YyB0aGF0DQo+IG5lZWRzIHRoZSB3b3JrYXJvdW5kIGlmIHZibGFuayBpcyBhbHJlYWR5IGVu
YWJsZWQgZm9yIGFub3RoZXIgY3J0YyB0aGF0DQo+IGRvZXNuJ3QgbmVlZCB0aGUgd29ya2Fyb3Vu
ZC4gRml4IHRoaXMgYnkgaW5jcmVhc2luZyBjb3VudGVyIG9ubHkgaWYgY3J0Yw0KPiBuZWVkcyB0
aGUgd29ya2Fyb3VuZC4NCj4gDQo+IEZpeGVzOiBhYTQ1MWFiY2ZmYjUgKCJkcm0vaTkxNS9kaXNw
bGF5OiBQcmV2ZW50IERDNiB3aGlsZSB2YmxhbmsgaXMgZW5hYmxlZCBmb3IgUGFuZWwgUmVwbGF5
IikNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+IFN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCg0KTEdUTS4NCg0KUmV2aWV3ZWQtYnk6IEpvbmF0aGFuIENhdml0dCA8
am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT4NCi1Kb25hdGhhbiBDYXZpdHQNCg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYyB8IDQgKyst
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJx
LmMNCj4gaW5kZXggODIyNmVhMjE4ZDc3Li4yNjNmZTNiZTg5MWMgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gQEAgLTE0
NDcsNyArMTQ0Nyw3IEBAIGludCBiZHdfZW5hYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKl9j
cnRjKQ0KPiAgCWlmIChnZW4xMV9kc2lfY29uZmlndXJlX3RlKGNydGMsIHRydWUpKQ0KPiAgCQly
ZXR1cm4gMDsNCj4gIA0KPiAtCWlmIChkaXNwbGF5LT5pcnEudmJsYW5rX3dhX251bV9waXBlcysr
ID09IDAgJiYgY3J0Yy0+YmxvY2tfZGNfZm9yX3ZibGFuaykNCj4gKwlpZiAoY3J0Yy0+YmxvY2tf
ZGNfZm9yX3ZibGFuayAmJiBkaXNwbGF5LT5pcnEudmJsYW5rX3dhX251bV9waXBlcysrID09IDAp
DQo+ICAJCXNjaGVkdWxlX3dvcmsoJmRpc3BsYXktPmlycS52YmxhbmtfZGNfd29yayk7DQo+ICAN
Cj4gIAlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPmlycV9sb2NrLCBpcnFmbGFncyk7DQo+
IEBAIC0xNDc4LDcgKzE0NzgsNyBAQCB2b2lkIGJkd19kaXNhYmxlX3ZibGFuayhzdHJ1Y3QgZHJt
X2NydGMgKl9jcnRjKQ0KPiAgCWJkd19kaXNhYmxlX3BpcGVfaXJxKGRldl9wcml2LCBwaXBlLCBH
RU44X1BJUEVfVkJMQU5LKTsNCj4gIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZfcHJpdi0+
aXJxX2xvY2ssIGlycWZsYWdzKTsNCj4gIA0KPiAtCWlmICgtLWRpc3BsYXktPmlycS52Ymxhbmtf
d2FfbnVtX3BpcGVzID09IDAgJiYgY3J0Yy0+YmxvY2tfZGNfZm9yX3ZibGFuaykNCj4gKwlpZiAo
Y3J0Yy0+YmxvY2tfZGNfZm9yX3ZibGFuayAmJiAtLWRpc3BsYXktPmlycS52Ymxhbmtfd2FfbnVt
X3BpcGVzID09IDApDQo+ICAJCXNjaGVkdWxlX3dvcmsoJmRpc3BsYXktPmlycS52YmxhbmtfZGNf
d29yayk7DQo+ICB9DQo+ICANCj4gLS0gDQo+IDIuMzQuMQ0KPiANCj4gDQo=

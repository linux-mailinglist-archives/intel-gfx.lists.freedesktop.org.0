Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE1FBDC732
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:22:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D75F10E029;
	Wed, 15 Oct 2025 04:22:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KlDsx8QO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D342E10E029;
 Wed, 15 Oct 2025 04:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760502119; x=1792038119;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+R2ak320bBXStOJ7escjLaER5lGXHLaBDuLB5vqlHX0=;
 b=KlDsx8QOtI9U3/My4V4JYILpFWOjrbLHkf5xyIdQsz0pY3GJ0ReRnSUA
 ev3Dy9YsN7XLFPzTRlESH+Xr7nPS4gLg+BRbktVFaSboUExl+gW9BfoAd
 CC+N144E2ex6Kto+ikyBskSrgBQM6TZwhI/M9zZEHhWdp86ME/pynTUkT
 Wm1rojRdxgePfi6z/KDi8umZMEx7BmNPq5XSP/9EHfe5thjyo+EEZmBhf
 eT+u1b1HkawZ9g0uMe2O6A+bA7ekwHfIe+wYLo1lQlkFIV/qsIlOAGQ5F
 K83lVGbihCXAnCQO8SXhLj4uEQnaF1qEwK7L4X/xKODI2QyJMrTwEkXTD w==;
X-CSE-ConnectionGUID: EIoBZqvvS3ukJ1NLsckMGA==
X-CSE-MsgGUID: q8nMgt1nREueb0wQsTtxqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="73346366"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="73346366"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:21:58 -0700
X-CSE-ConnectionGUID: X+xEsylMTU+/1mNWHPRooA==
X-CSE-MsgGUID: R4RGL6ywQfm6bulkhF2nGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186483716"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:21:59 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 21:21:58 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 14 Oct 2025 21:21:58 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.7) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 21:21:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FMJGodDLXmEg6kDEuwYZdAO05CVLAsICZx9U7wbx/MZFyiI5EjtBOtiXDoqppyxLendR9sj4iRDORFytOKzkVWuN8SjtHFRncSGhZXqgI9TexmyRzhuuL/bEkzlCQUkChpp0R2goiyTS+4pSwWQH7S24kna87zTnRRlTvVqpX8Bj+QLESIz4ax+QTRObnzNv4inEZllFTR7ZDjniSYFiHDVDAaqozDBPFR846kuj8JqCKJF8y5FhrXMX+jjEI0+WB529Ivb9AAAgLrmDYcam9asAnrm8v1STCeaxnrG94OzPEV2KX/hAY/a1kHEejUmDC00zJ8VOeQfGJVVNWpHHdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+R2ak320bBXStOJ7escjLaER5lGXHLaBDuLB5vqlHX0=;
 b=bYkpTxN8l6KvMQ8IJUOG9eNVHoYOOLFSxMwCT2kZHaLA5J0F2DKU/n7j8yRQ4ar+Ezdd832KNevZUdVOECJ8lCQd5GinOwZbdEtU2g9u8H8HfizE3a4VWGOlrna6jGIHG7K+9zbB+F/GuEp7zzW6XZUcPHTEc0dxbXDdP5Rw2wP8EusGNgIkANDpT0tgEenRbGHNHRzbmcCcBDUvtwtII4l17XO7D4t2Ihtd6L0zhK5t1D6qzZUglsUGCNMJ8cOtzrRQf0NzNhft2FINqqPPpO1PhP9At2UtiLMcPKeaE0u7IOf06mvg8er9CkxyEGBNlnwaymzuAdtlzcTQleq5cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM6PR11MB4707.namprd11.prod.outlook.com
 (2603:10b6:5:2a6::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Wed, 15 Oct
 2025 04:21:55 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9228.009; Wed, 15 Oct 2025
 04:21:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Vodapalli, Ravi Kumar"
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, "Chauhan, Shekhar"
 <shekhar.chauhan@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>
Subject: RE: [PATCH 18/32] drm/i915/xe3p_lpd: Drop support for interlace mode
Thread-Topic: [PATCH 18/32] drm/i915/xe3p_lpd: Drop support for interlace mode
Thread-Index: AQHcPYOb1IrBduSHMEKbBDG2j8dE/7TCm0yQ
Date: Wed, 15 Oct 2025 04:21:55 +0000
Message-ID: <DM3PPF208195D8D87C0A75B58CADA4AAC93E3E8A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-18-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-18-d2d1e26520aa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM6PR11MB4707:EE_
x-ms-office365-filtering-correlation-id: c1ac6ecc-b4c6-4fe7-8de3-08de0ba26016
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Y2RhWUZ1R0FxeU82QlVJRFkzK2Zpekwyd1dZL3RLbFUvbnVSMkVhNTlUanFk?=
 =?utf-8?B?UmYzT1VhVGNtNWQvdXg4VG45MkFZUEErL01FbUFURkUvSFJaSEp0OXQyekhm?=
 =?utf-8?B?Q3hmekNZbENPM1N6WTFFeVlPcTBsZDgyVmRRSzUrdWJ0TStnam5JblpMNzBF?=
 =?utf-8?B?QlpjaFlMZWNXR1YyMXVTTVIwbnZIaUlkb1VNQ29lT3dXck9XTUxkK3oyV3dy?=
 =?utf-8?B?b3BBK1VHYitQSmFzRTZhNGZLdHlNRFlIL2ZIQ2o4OGQzeVdGYm4zL0FTSG1r?=
 =?utf-8?B?Z1N3NFdZZjBIQXJYd0c2bmRXSDQ4YmtibW0ycVpQYzJwQ1I1emY2TW5RdW4y?=
 =?utf-8?B?L0xHTnZNOWlDOTUrMU5Md3dlY0lIWWI5TG41UlJ3YnpNQzBQQXV6ZVN5L0ow?=
 =?utf-8?B?Ri9wSzB4Wjk0U2RuT1haU0xvMUJCL00ycU9PNU1nM1R2VEJmM1p6SVlaa01V?=
 =?utf-8?B?ZExIMU5qLytHWDhhMm5CN3pqSCtJQjMvWWlTbXhBWE9qN0l5MmJZTG5scEo2?=
 =?utf-8?B?VkVValF3Smt4Szl1QnhxNWVrNDRXUlR5bVJxVGp0OS9EY2JoRWdPVVlIaVRN?=
 =?utf-8?B?cTVoN0Nzak43VWNURjhwbVc2TTdRNW44RGxJOU00SFRGdStYSjc4NldScVFU?=
 =?utf-8?B?SklNOVk0SmlaOWh4QmlySURsRkRNT3dpNSt0TEFrdDFmZ0Q1cUFQSElUU1dY?=
 =?utf-8?B?dGVXVFF0VFgyZmlHWGcwa1FvVk1iZktMZ3hKb3g5VE02WlhKcU15VXVrY2Vq?=
 =?utf-8?B?NFhBeXJ1K2ZqR2I2Y2VFMlRaUWRhcUx3alFJZUFIK2tnOWc5dWhoakhzcHJL?=
 =?utf-8?B?QzRCZjg0dEtRZnlFZmJyZXBRUEYvcTNjRUR2RlNSRmJ5aEZrTTluN01CZm1a?=
 =?utf-8?B?STBYNU9zYXpNTWFjRmJqSVpKVTBWeEt2R2hBN1lqK3NTZXc0ZDZpWm9iUDZP?=
 =?utf-8?B?Z0YyUXlWR0l1NXJzR0I3NnFObnkxY2pVMjdhK0poUFc2bnpEVGkzRW9BUHVX?=
 =?utf-8?B?TWdKVkdPbW04TnpCTllpcDRBTHBZbzB0TEwzRjV2S2pYQWM2UzZVclNRWTN1?=
 =?utf-8?B?VGtsK0ZpUDRNU2Ixb3BuRFNkVUtFUDB1WjVHLzQ1Z0grR0Q4OGFCN0dPa29a?=
 =?utf-8?B?aDlrblhsaUNsK05LUytTRVVrcGZMTnI1MTlwNGx2RkVOajF3dExPeHoyQzNT?=
 =?utf-8?B?KzUya1JOV1BtYTBmL20wdlJadmtOUWNGSWU5eENnS3RWU1hNQnlEYmZpSXVX?=
 =?utf-8?B?N1VhLzJmRzNMa0JGN3hFYncwK0hKaTQ5MjBDbnp0dElMeVlMbHIzZVBMNkpp?=
 =?utf-8?B?dWRvZ1BWV1B2ZlR6MGdwWktWWERKUllwcHZoU2RFa1VLay9vOC9GTjVvMlM4?=
 =?utf-8?B?VWxxcFRCMlhlTlNoSUszeDB1VUdhZkQvdDczTHFrckl1aFh4eVc4c2RFZnBn?=
 =?utf-8?B?QXRTNGJyRCtTRDhaQzBLRXRoUlBxSEE5a3I0aG9kTHRJZStFNGpyRWJJdVAz?=
 =?utf-8?B?WGpxaFVkclhVMXJickxmdWpZRmtvYXZLdjdQeGxlZzQyZFFJdEltdFUwVEtJ?=
 =?utf-8?B?SThWRWtBKzNKZGd5Um56QWVIRHo5UkIyNU9OeDJIdW1TUEFLZVlvZzczQjda?=
 =?utf-8?B?NkM0UVRkME52UUw5ajlUYmlYeGRXbGI3YnZiVDE1VlF0R0d5NGJMWGt0ZU5t?=
 =?utf-8?B?elR1d1R3TzhBQmNjTEFvazdDSUxoRzkwUm5uM1BOOTdIMHVZV1dsUFd1cEh3?=
 =?utf-8?B?WHpwNWxEMFdpUXJTTjZUdlUweVV5VzBTN3FuWEdpdS90elkrUFhEdFFHdmVx?=
 =?utf-8?B?VFFreGlvaC81Z1pzcE15QWt1OFZKT1lvdWxTVnJBV0hKcE1UOFhQcTZKUnpU?=
 =?utf-8?B?ZW5jOEFibVhtVDIyQVdYRkluMkVRZXZ1QlAyOWxhU29zbVVHZEJHUkZSdHYz?=
 =?utf-8?B?UjBEOGFHN0EzOW9FMjVqNkNkZW8vZzZSQUI2VTlobFUrNnBHeDNZelBnRVN0?=
 =?utf-8?B?bnVpNDNKM2FPaUxjMEx2N1dBQmQyM0xMbEZoS1NqNFpjaS9kdE03YnEzZ3FL?=
 =?utf-8?Q?9Tkuia?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVFNUUozc0VSblo4aFEwRVlmT2NaTXhSaU83NUZ0dEJCUldWa216VjlmQWl1?=
 =?utf-8?B?Nm1uZCtrSHVVdSsrUktTQjhHRFFNOGU2T3lKbExGZlpCaDJsMXhmQkZFRHl3?=
 =?utf-8?B?QlVzNW5LSlNyVjFhb1c1Yy9BcmsvM2hsZ01MU1VMa2praDQ5R3FmMktKQzhn?=
 =?utf-8?B?SGRXZzg1YnY2TzZiMHRlU1Q0UVRWWjN3Q1NWQXZUZXFLUHJMQkhOY0xYMnVx?=
 =?utf-8?B?Sjg0M2kxUTQrazRkcUNMUjhGMENFbFV1VGUxbW5PY3R4K01JMTY4OTg1anJx?=
 =?utf-8?B?R2lEQ0VTYzBRYk1qL1UyTklpZm5KVGRScFUvOVNPNk9MOU1FdVBNNTRrR01L?=
 =?utf-8?B?NmxhQklJMHVsQ01LUU9tbnBYeEphVzFQeitJS2JHcDU4eXZPdGpoQk1va3Z5?=
 =?utf-8?B?RjNISXJNcDdrTCtYR3dudlJCMWF4Q0dmZjFJdDI0bDlNcE1NYTYwVmxZVWlp?=
 =?utf-8?B?elkwdFp3c2ZVWHorVDN6K21lSG15MnRNSXU1Yy82WHRIVDduT1AxS2REUmsx?=
 =?utf-8?B?SUN4eU8vNm5LcGNTVlB5WjRwdFdVcHFNTElyd080TC9sSmNjSEJsSktBemE1?=
 =?utf-8?B?VERWMjVXTWIxamVHRkx0SXcyODczai9mVkdvQnFnOHV2bXJ4MTRaTFV0Rm9W?=
 =?utf-8?B?Z0p4aDJYakV2YytwUUt3RXpES0JxRUZDWDFSU0FNc3VlVTRWY1A4c2VYMnYw?=
 =?utf-8?B?eUJaa1RYWkg0Nk9acXFrOTdkcmdCbmxwNHIyWG1IeTFBMEFkQ1pNLzd1UnJ0?=
 =?utf-8?B?QWpwYXRNSWhxNE1abFJ3L05ycXMwblBpVW0wM1N3VFFvOVpHNmJ1Qzdpbndu?=
 =?utf-8?B?QkFvNVAwZWFrQnJhN3F0Vm9HSmhsOFROTzJtRHhDQkd1RG1NOXdSV3VRUG00?=
 =?utf-8?B?N1ovalY5ektkd0hFMmNsZkQrbVl5Ti9mVGcyc0FkQlpURDc2RlVrVXJPVEVo?=
 =?utf-8?B?cnkwODJMNnJrUndyQ2hjR0s1emRCSExWck40WitKcFZGT3ZTKzJFcTlDM2RB?=
 =?utf-8?B?OUJWMEhIcE81NjhCUks5VDVnc1VOT1h4dW5KUUZEWXJUMmdRcnJ3VFI4OXky?=
 =?utf-8?B?cDFLNmgzUlRvdGtqNUFLQ2VhOFVGTTNlMWwyMEl5L1dsWUpWY2RubVloUDBQ?=
 =?utf-8?B?bFBIMU02cGdVckdwbkdjOUltZlAwbzFZWDdPakJMRlEwd0pVVXZJUnA0QTNq?=
 =?utf-8?B?bzRMcU5SSkhYUS9yVE9hYXlZSTRhSWVBYlppQUloTlBPaGVXU0NaM1NScERk?=
 =?utf-8?B?TTJ1SXlTZHhwS2JoTlFMNFlmV0d4bDNnUUh1cEdyd3F2Q0xBMitxdkpUWHN0?=
 =?utf-8?B?c0NUUmxSNjhQUVB2L0pDdURrM0NzTXFRaTRVdDVWTkRpYWRHRDNENEtvSGRl?=
 =?utf-8?B?aXUvRlN5dEppZUxyaVhNTWdLd2RQNGdRVG1UcFpZQk5tWmJGbS9XZHVjTm5x?=
 =?utf-8?B?c0plYSt5YXFJRitmeUc3cjUwdWxlV2RxeXNFRExDMG5rTXNuaDBTK3g5NE5m?=
 =?utf-8?B?NVhKZEZsZk9oMVBNbXVacFJMU0oyanZRcDYyWTRDbHl3OHEvbVQxT3FWVU9D?=
 =?utf-8?B?OUpCeXppdXFYeHRxaGROQlFFUWdOSDI3M1g3Z1A2aDFNRjR2NjBDaW1CbjJ0?=
 =?utf-8?B?L3lPbjhOWE1hSEVHVFl2dkhNYU5NbWp1eFJzYUNsWWFPWDZPYURmeXN2Q3hx?=
 =?utf-8?B?bXVzc1Vlb1dIeUROMng2S1hoNm1BLyttaUNLZFlwaXdJYmsxNm1oYVZKRHMw?=
 =?utf-8?B?OFFVRXFGWHFhUmFpam5ybXF3am1lQ3BiKytjdjQ3THVKcDlGdG10OHM1WHQy?=
 =?utf-8?B?d3J3NjNrU3M1ZFQrektmb1dhUWs4Y0pROGlSbDE0dUVHeTY3YlczUk84aWhC?=
 =?utf-8?B?Mlo0bDdTVGU4OHp6a2hoWGJUUDJhL1l2R2pOSzhvVGxxSHllSVdRVG5lY21a?=
 =?utf-8?B?K0xSczVTT2F0RzRraXg3ZnZiUEplUHFqRGZScVNkZGpURDZaWXQ4Q1pOTURj?=
 =?utf-8?B?c0VSMzF6ZFovbTlOWUtGL1VjdDhUUlRFSXk3TEMzMHhvaTloSllqMEVvNVpG?=
 =?utf-8?B?NWo1ZDhmZk13anVsYVpmSGg2NUFmb1RraytXTU0xdTJvUE9BVEp1aWc1TCtK?=
 =?utf-8?Q?TSzIQkINOABfzziIO9ckMgBYN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ac6ecc-b4c6-4fe7-8de3-08de0ba26016
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 04:21:55.7366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j8Ce0c3r6YTaI2fMtGaN7IQPe+xrsTCy4K5BmutRMleqjePrI9dZPBQL2bKMZm75CrbxN0iWHL9wsLvE7X+tfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
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

PiBTdWJqZWN0OiBbUEFUQ0ggMTgvMzJdIGRybS9pOTE1L3hlM3BfbHBkOiBEcm9wIHN1cHBvcnQg
Zm9yIGludGVybGFjZSBtb2RlDQo+IA0KPiBGcm9tOiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5u
YXV0aXlhbEBpbnRlbC5jb20+DQo+IA0KPiBJbnRlcmxhY2UgbW9kZSBpcyBvZmZpY2lhbGx5IHJl
bW92ZWQgZnJvbSBIVyBmcm9tIFhlM3BfTFBELiAgVGhlIHJlZ2lzdGVyDQo+IFRSQU5TX1ZTWU5D
U0hJRlQgYW5kIHRoZSBiaXRzIGluIFRSQU5TX0NPTkYgYXJlIG5vdyByZW1vdmVkLCBzbyBtYWtl
DQo+IHN1cmUgd2UgZG8gbm90IHNldC9nZXQgdGhlc2UgYW55bW9yZS4NCj4gDQo+IEJzcGVjOiA2
OTk2MSwgNzAwMDANCj4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1
dGl5YWxAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIFNvdXNhIDxndXN0YXZv
LnNvdXNhQGludGVsLmNvbT4NCg0KTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxz
dXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTQgKysrKysrKystLS0tLS0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBkNWIyNjEy
ZDRlYzIuLjZhYzcxODE5MmUxYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTI2MzEsNyArMjYzMSw3IEBAIHN0YXRpYyB2b2lk
IGludGVsX3NldF90cmFuc2NvZGVyX3RpbWluZ3MoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhDQo+ICAJCWNydGNfdmJsYW5rX3N0YXJ0ID0gMTsNCj4gIAl9DQo+IA0K
PiAtCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSA0KQ0KPiArCWlmIChESVNQTEFZX1ZFUihk
aXNwbGF5KSA+PSA0ICYmIERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMzUpDQo+ICAJCWludGVsX2Rl
X3dyaXRlKGRpc3BsYXksDQo+ICAJCQkgICAgICAgVFJBTlNfVlNZTkNTSElGVChkaXNwbGF5LCBj
cHVfdHJhbnNjb2RlciksDQo+ICAJCQkgICAgICAgdnN5bmNzaGlmdCk7DQo+IEBAIC0yNzY5LDcg
KzI3NjksNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9waXBlX2lzX2ludGVybGFjZWQoY29uc3Qgc3Ry
dWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiAgCWVudW0g
dHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0K
PiANCj4gLQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMikNCj4gKwlpZiAoRElTUExBWV9W
RVIoZGlzcGxheSkgPT0gMiB8fCBESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzNSkNCj4gIAkJcmV0
dXJuIGZhbHNlOw0KPiANCj4gIAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gOSB8fA0KPiBA
QCAtMzE2MCwxMCArMzE2MCwxMiBAQCBzdGF0aWMgdm9pZCBoc3dfc2V0X3RyYW5zY29uZihjb25z
dCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAlpZiAoZGlzcGxh
eS0+cGxhdGZvcm0uaGFzd2VsbCAmJiBjcnRjX3N0YXRlLT5kaXRoZXIpDQo+ICAJCXZhbCB8PSBU
UkFOU0NPTkZfRElUSEVSX0VOIHwNCj4gVFJBTlNDT05GX0RJVEhFUl9UWVBFX1NQOw0KPiANCj4g
LQlpZiAoY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5mbGFncyAmDQo+IERSTV9NT0RFX0ZM
QUdfSU5URVJMQUNFKQ0KPiAtCQl2YWwgfD0gVFJBTlNDT05GX0lOVEVSTEFDRV9JRl9JRF9JTEs7
DQo+IC0JZWxzZQ0KPiAtCQl2YWwgfD0gVFJBTlNDT05GX0lOVEVSTEFDRV9QRl9QRF9JTEs7DQo+
ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMzUpIHsNCj4gKwkJaWYgKGNydGNfc3RhdGUt
Pmh3LmFkanVzdGVkX21vZGUuZmxhZ3MgJg0KPiBEUk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkNCj4g
KwkJCXZhbCB8PSBUUkFOU0NPTkZfSU5URVJMQUNFX0lGX0lEX0lMSzsNCj4gKwkJZWxzZQ0KPiAr
CQkJdmFsIHw9IFRSQU5TQ09ORl9JTlRFUkxBQ0VfUEZfUERfSUxLOw0KPiArCX0NCj4gDQo+ICAJ
aWYgKGRpc3BsYXktPnBsYXRmb3JtLmhhc3dlbGwgJiYNCj4gIAkgICAgY3J0Y19zdGF0ZS0+b3V0
cHV0X2Zvcm1hdCAhPSBJTlRFTF9PVVRQVVRfRk9STUFUX1JHQikNCj4gDQo+IC0tDQo+IDIuNTEu
MA0KDQo=

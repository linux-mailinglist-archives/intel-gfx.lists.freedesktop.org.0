Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u4lxCy/0KGqiOAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 07:20:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BEA665E9A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 07:20:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=i36JwZmV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 159DF10E6FB;
	Wed, 10 Jun 2026 05:20:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF5110E6F9;
 Wed, 10 Jun 2026 05:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781068843; x=1812604843;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hac/dU2GKO3jgVBq5stm2Vt+xrDsH4jmYxuW9o3LRVY=;
 b=i36JwZmVmXsJSv23FraglC1OWKaUbQkpNjS9ZfKXZE18e0Gl/baBJoDq
 w3f0/CsMsSp41KM1WiFOybGYAgOXitOIdw+vbPRzR0pFuCpthWAjzcloV
 TXLYIay8EMm6ZGCqMYZIwkRSrTViyHKJdfcEFBw86ubpJ2W1GfhapEZgw
 p2/5vXL2wNzniOcqKDVja8T+azYQAS/P8ZT/SDPeZggnAM7Dx7blZ15Xi
 Hq7yIBwELsoBO8gBdHMzO5gtLL0CEqPh0HWlV/POrlkaTViy9hDOnrUNB
 7Z0VhBFu72qys6JNiid+HWWnR+tk8Xo9FgeHLpRh0Mz8gzqaFs7bs9XRA g==;
X-CSE-ConnectionGUID: KXNkceidQL6tMaeXEI5fcw==
X-CSE-MsgGUID: PsFIkAKrSaG+28qjQQDDpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="85480168"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="85480168"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:20:42 -0700
X-CSE-ConnectionGUID: x0Tn22AIRRqMjlStTHluyw==
X-CSE-MsgGUID: bQuNnnSOQDKvD3IAsl2Vzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="243607826"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:20:42 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:20:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 22:20:41 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.8) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:20:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VQmdz/Can18GE0PLPSBE1Wmjl8/qnafkwYK00tFf3ApLLzQcUUqAFqsemgPSgiQcetmMeeGk9yDTiIpPRiZJKYxHTfusvbvF/VHNiFxSwCoeurWb+qw8ubltd9+JO2fBw2qVUomaWyhJPFFMq9fkUlhF2lAhBEbnC1MHo4kKhRWWK24CYI/bZiClSk/LTuojOq3JqXM/78GdFsl43XB7xzuM9qVb6xzIbXBZ4ecveNBO9LiUPieKgdxLSgO3pb6y6YQ/eKfR30kquUzzY0f6kbsoaEHeihcgtgrKp3B0On4YlliLrfM5FtLKyl8ZLhyJSlqna9iHttNrcujklHv1Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hac/dU2GKO3jgVBq5stm2Vt+xrDsH4jmYxuW9o3LRVY=;
 b=EJfucr57xuy0r+xdq9iHgiE3aW7FbJN5LDOSiZOPVb+Gz+updnmYo9Ia4OpMPmt/uh4Z+a+gkDR4aY+SpmbUF/eE0bDP8am1TR3NFgS+qcJEDKbBrj1IKoA4W1u6LIJnquwi6N9icynTuxdSYvUuE8YzTzjyLECzi9seR4rQW9h/mQp0xV+jhApHoK5CB+DHhQj9OVRNZxIrMFq7ishW3xwaHs0JYAsfqJkzfK2eH5vkBEaL6L/d8UQw5cSrXcs4+rVwszh4qIP5YTT9Ub28fKvmXNksLuwGs/b60ILD6YY9P5BPliJnr0oJSXKbDI7tZAomrt+fPcBgePPIuyU8ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5302.namprd11.prod.outlook.com (2603:10b6:208:312::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.14; Wed, 10 Jun 2026 05:20:39 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 05:20:39 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 03/20] drm/i915/cmtg: Add CMTG transcoder offset in
 struct _device_info
Thread-Topic: [PATCH v8 03/20] drm/i915/cmtg: Add CMTG transcoder offset in
 struct _device_info
Thread-Index: AQHc85dCchkbNY/GNEGfSr/YH20g/LY3Smiw
Date: Wed, 10 Jun 2026 05:20:39 +0000
Message-ID: <DM4PR11MB636017855D2A1ECF2CB4CF0CF41A2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-4-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-4-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5302:EE_
x-ms-office365-filtering-correlation-id: ac61c3b3-b63a-4cb7-9ce5-08dec6b002e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|56012099006|11063799006|4143699003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: PTXTWcqZa5zOcvdJtRnle2u0+kBnKlCrmAKpHK3X25rvbLLZTbXyy9AL3TM5T/Qs4pX0d/EsjMRbm2eiuVFcGPc8Gp/NDhtPx1YuyG+0S/7U+NKboYIU8XC0SF0Q1qhF5q5TnOQAeY+CFwxn1/kFEik4utHnPR1NTide0/zL3Vv1YBSQ+bKzlWD6YjoL3xx/oR8WHcoMJMVOsjwM5UByfbfUYwZ/tI3Tvszi6p4irB+mIKZTb8qbb3SkCo5vpiAK9E3kOgq7MVhzyALT2Z0ZJIm0dZWx8VrdsWmZYz9nk2W5clzBMoTkqm+eJq6+5go8K39v/g2khyatww4B4EcUrI2TqS781T7n6vkGAMUUAHNfLZXVCuPoT8emm8D9OZTJDEPZzZnEHQ7g1LXxS9UhVKf0MXhuyK9A1vxiLly9fubie0RbHD7xPuKob6LFsPgyTFrV1/CuW8wnRhdkbugTolBwcIh0TsBvN9lIMJXA20ON7Fpyx35YYDL8DkAYotAho0rHI2ETIqHEaQePKgaghoGAdPjKDCdh1cJq4jUv6Z2T7fUXo4dUJFquy1vaFelKpdDnRkA1aiC01u/OsvTZ+GThaSPVdKHKYWXpPrq4PUNtr+02DEPKS63V3SbZHmwBp3stwAsWg/EpZb9WHPaKYbdhL94RhoEskeW0c+g/+evABxcPV143SiGM3p9kWnDeL2Hgq4bnfnKp8tQHGC/41qbJhXbt88RymbErxhSP5/hnOJc7mG67AITDkiFl0k1u
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2d4KzV6ajhtd3J4R1N2ZnpuVzQyaDgxeEV6MllBUHZmeTlDZHlUbVBEWkxI?=
 =?utf-8?B?NUl1RTMxRnA0eWtWWkpZd3ZCM0V6NkJENUswZW00YVZMbFc5VFFYUU51dkR2?=
 =?utf-8?B?Z3JxVXJ3OEtQeXpvdE1PeFhDMEluOEFFMDl3THVRT2hVWjlMZWt0aHlRWDRa?=
 =?utf-8?B?aVYxTXMvQll5ZzlFUFRZS1pWZGN5c2NuZUJFSnBoalM4VHRhdnVpSmVYMmtv?=
 =?utf-8?B?VDdlN1NlcDB3NUJqcW5TVDM1WHpFRWZiQ3duQThuZVpDYm5aZHhJYTBSazNr?=
 =?utf-8?B?N2k1NHBJTHc0R2Vhbm5pNHRuTThEa1pRTjVvTE90Rk9lL2NjTE5yU0pnN0NU?=
 =?utf-8?B?a2JDbHpPbEhZUk84cnFFaTN2K01RNDc5T2IzOG9WRkJZMWEwWU1kM0h0Zm1Q?=
 =?utf-8?B?V0R1TiszS3dpbXR1MWFoanErU09Tb2kvejhLWDljNTRWWENqbVpaZDBGS1By?=
 =?utf-8?B?Y2ppZHdmQmoyV3JTM0VEY0dJWWtOWE9iRzV0bkFlbjlwc0xLSTVEUmJ0bUJj?=
 =?utf-8?B?RjlCTVhYTTE2R2g5VEVaSXh5QUFOU3lWcHYvL3ZIek5JODdvdFZaVWd6eFRp?=
 =?utf-8?B?aW10NlFMT05rMjdZTCtvNTRnaFM1MW5XRE0vNzAzZXZodjZ2c2s4d2pZM2hN?=
 =?utf-8?B?cksxZmZLT09oK2o3cGVFZ2NYTEw0SHFmOVVPdmdIMkFyT0ZEYmRrVkNFcU5F?=
 =?utf-8?B?YWFJbzI5WU1NSDV3Y3R6ZmV3V0JYY05hTU82STZjWDN5TXBwUjZybFVqUmVV?=
 =?utf-8?B?R0NzeGJmdWVtVUg4TnFucWxFU25MZk1hY2ZOZW9hS0ZXdm1oK1Jha3FtMGh5?=
 =?utf-8?B?TEJCMWNQbkJqME9WQldtd1JNemt3T3VwallkNzlHdVJlWE1PU3lhRVBQSFFB?=
 =?utf-8?B?WGRsT0tsWFJtK2NmOFNkRzlidE1WVkMzeGhzQm9weEVDWStldmxyQlh6WUd3?=
 =?utf-8?B?dWtHTG9QNHJPbWErL2xvQi9xMSs5U1BkM3NpK2trUldyMWliQ0pveTF6cnM3?=
 =?utf-8?B?VjhjVEM4dG5sL2ZLL0dHakNnS3BkdFk2bkRTc1BlKytpNjVVeVhkcWNIdEc5?=
 =?utf-8?B?MnpaZHpvL2dXYzYxTi9KWnNRZUNtc01qeGVsM21hbHZleHlhUG5VQlVzbll5?=
 =?utf-8?B?WjZSendRU2h5SEp5WXE5ajBkVGNzMTVDbVNuUWhPQXdvaHRHelo4SEJ5UmY5?=
 =?utf-8?B?SURuaFZVM3B3Q0NpTVZKNFE3SjRmbVBFRzAyeE4rd0lQOXV0ZHdnam14bXdj?=
 =?utf-8?B?c3dxTGJVT2MzY0JnSElLYTJUUTlFeXRsSGFIeng1VDJwN1oyenRWbzMzaXBo?=
 =?utf-8?B?QzloRmVnR09CeDZlVGF4N2JrU3JVZytpNlZUTGZmQWh0dUtVZ3laRUkzV25m?=
 =?utf-8?B?N0Z3bTZ5N2NHMngxV210YUNiSWRtV281Um5McW1EZ0tzcURWNkhYRXZUb2E4?=
 =?utf-8?B?dDRNN0hiWm1kaElITXV4SzZmTHZFY3ROSER1RWJxRGh6alk3WmRlWmZqdzFO?=
 =?utf-8?B?Q2dhZmVHUTJzQ0tLMm81Q0tNWXphd1hXZVcrTSs2NXdtZ0w3RmRpc1pvMFIy?=
 =?utf-8?B?U3poT1JPM2ZtRUxGV2Nac1ZZalNWRG12NTU4eVZ4SnBDMm9DUERvTU81U0lM?=
 =?utf-8?B?dkpnKzlPMGQ4bFExeHErTForUkRQMGZCMWxteHF4aU9CcnFWL3cvdE1CRTkv?=
 =?utf-8?B?N0FkZXBjMDhLamhkS1NENDN6WW0xenR4MlhRSjZrL3JtaFNkUlhlWEpqZHlZ?=
 =?utf-8?B?SlRmQ2R0RzlSTUpPNEtpcEowdEY0NklqM3Mzb28vcUZBY2FSL2xRaHZKU3kz?=
 =?utf-8?B?a1Z0T2RaRzBEVlVPTTdjQnRXSXRpaEpvaUQ2dHYrZWVmMVJsNUYzZEZCY1Vy?=
 =?utf-8?B?dGxPWmZKTjdINWhrcjVJSUl4TDRhZENlRXNxeWJIc1VxQ2dIdUJBS3lyMk1H?=
 =?utf-8?B?cUpZUEF4RTRIOS9odUF1anQrODBvUWhtblk3OEFlNWgycXovQ3JNQXVqNEps?=
 =?utf-8?B?MTlRaHkzL0NhYzdXWExRcU9vNkJ6WGVYaVNGZG43Z1JKK1JkV1Bubm1TQWNH?=
 =?utf-8?B?am1RYzMvVUdxOEY4aWV6dHhzc05CR2hyL24rakpoZHRsZnJhNzAxQVFrWndl?=
 =?utf-8?B?Q0N5OWlWQW4wL09vWnhCM0hGYUtXelNzWUdEcjlDRDNvaENaWUVMZ1UyM1lR?=
 =?utf-8?B?OEVIVE5FR0VZazJqUFFTQWlJeElIa1V0Z05EVTJyajNhT1BTbTlTbFVJS3BK?=
 =?utf-8?B?Um9DUGR0aTJ2cnpSMUhyZnVEUE9wSWl2MXdJR2ZMbVVLaUFsSHNIeDVScFVV?=
 =?utf-8?B?eHZtc0Q0dTMxemZnaFZtRGJLeDkzUWJQMFNRM1dXdTg1RWhlUWRIQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Zhx2GBc19D8dIo6pv0ynS99ut8nZD2TT5RmJi6g7uvfyUr38vGp5WDzEprags642d2cbPVlCXDue+mP6QIw87FW/MOvXX/fHpPXml9l/6X2oBtn7OynWcwYl886oMbSxxgjG8WWdqrf4wbXGHXp23TgmhZnVC3etGwbCvLJffmSVpCpf6LtRU0TmkC7f5tgG82157CAeAyIlMRVbWszLzdGRTNvudvRWF3cvx3/uBeHjYQIG8KRrlDOcjE3SFgDAaKZtUphRX++WtbsL7Sxd/1KS+58mU9ciB6WTv/nzRJTCjSWCLgukKNCVI4a3If9VKnhlORW1cI79VoUX5v3C2Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac61c3b3-b63a-4cb7-9ce5-08dec6b002e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2026 05:20:39.8244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ZhoEfWWNT4Lh0/jr2kyoP8pAUcvyITF4TnwTpVeKXU+KATs+cpfEpzsi6DkWGMC13jQN968zs60e1pHrGxPcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5302
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 82BEA665E9A

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFubmEsIEFuaW1lc2gg
PGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgSnVuZSA0LCAyMDI2
IDE6MjQgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhl
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+OyBEaWJpbiBNb29sYWthZGFuIFN1YnJhaG1hbmlhbg0KPiA8ZGliaW4ubW9vbGFr
YWRhbi5zdWJyYWhtYW5pYW5AaW50ZWwuY29tPjsgdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b207DQo+IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgTWFubmEsIEFuaW1l
c2gNCj4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjggMDMv
MjBdIGRybS9pOTE1L2NtdGc6IEFkZCBDTVRHIHRyYW5zY29kZXIgb2Zmc2V0IGluIHN0cnVjdA0K
PiBfZGV2aWNlX2luZm8NCj4gDQo+IEFzIGFsbCBjbXRnIHJlZ2lzdGVycyBvZmZzZXQgZnJvbSBi
YXNlIGNtdGcgcmVnaXN0ZXIgaXMgc2ltaWxhciB0byBub3JtYWwNCj4gdHJhbnNjb2RlciByZWdp
c3Rlciwgc28gZm9sbG93IGV4aXN0aW5nIHdheSBvZiBkZWZpbmluZyB0cmFuc2NvZGVyIHJlZ2lz
dGVyIGZvciBjbXRnDQo+IGFzIHdlbGwuIEFkZCBiYXNlIENNVEcgb2Zmc2V0IGluIHN0cnVjdCBf
ZGlzcGxheV9kZXZpY2VfaW5mbyB3aGljaCB3aWxsIGJlIHVzZWQNCj4gdG8gZGVyaXZlIHRoZSBh
Y3R1YWwgcmVnaXN0ZXIgYWRkcmVzcyBmb3IgcGxhdGZvcm0gc3VwcG9ydGluZyBDTVRHLg0KDQpM
b29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+DQoNCj4gQnNwZWM6IDY4OTg5DQo+IFN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQW5p
bWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMgICAgfCAxNCArKysrKysrKysr
KysrKw0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgg
ICAgfCAgMiArLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfbGlt
aXRzLmggICAgfCAgMiArKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jDQo+IGluZGV4IDY5YTlmNzgyOTM1Yy4uZjE3ZmMy
YzY4NDcyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZGV2aWNlLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2RldmljZS5jDQo+IEBAIC0xMDEsNiArMTAxLDggQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpbnRlbF9kaXNwbGF5X2RldmljZV9pbmZvIG5vX2Rpc3BsYXkgPQ0KPiB7fTsgICNk
ZWZpbmUgVFJBTlNDT0RFUl9FRFBfT0ZGU0VUIDB4NmYwMDANCj4gICNkZWZpbmUgVFJBTlNDT0RF
Ul9EU0kwX09GRlNFVAkweDZiMDAwDQo+ICAjZGVmaW5lIFRSQU5TQ09ERVJfRFNJMV9PRkZTRVQJ
MHg2YjgwMA0KPiArI2RlZmluZSBUUkFOU0NPREVSX0NNVEcwX09GRlNFVCAweDZGMDAwICNkZWZp
bmUNCj4gVFJBTlNDT0RFUl9DTVRHMV9PRkZTRVQNCj4gKzB4NkYxMDANCj4gDQo+ICAjZGVmaW5l
IENVUlNPUl9BX09GRlNFVCAweDcwMDgwDQo+ICAjZGVmaW5lIENVUlNPUl9CX09GRlNFVCAweDcw
MGMwDQo+IEBAIC0xMzUyLDYgKzEzNTQsMTggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9k
aXNwbGF5X2RldmljZV9pbmZvDQo+IHhlMl9scGRfZGlzcGxheSA9IHsNCj4gIAkJQklUKElOVEVM
X0ZCQ19BKSB8IEJJVChJTlRFTF9GQkNfQikgfA0KPiAgCQlCSVQoSU5URUxfRkJDX0MpIHwgQklU
KElOVEVMX0ZCQ19EKSwNCj4gIAkuX19ydW50aW1lX2RlZmF1bHRzLmhhc19kYnVmX292ZXJsYXBf
ZGV0ZWN0aW9uID0gdHJ1ZSwNCj4gKwkudHJhbnNfb2Zmc2V0cyA9IHsNCj4gKwkJW1RSQU5TQ09E
RVJfQV0gPSBUUkFOU0NPREVSX0FfT0ZGU0VULA0KPiArCQlbVFJBTlNDT0RFUl9CXSA9IFRSQU5T
Q09ERVJfQl9PRkZTRVQsDQo+ICsJCVtUUkFOU0NPREVSX0NdID0gVFJBTlNDT0RFUl9DX09GRlNF
VCwNCj4gKwkJW1RSQU5TQ09ERVJfRF0gPSBUUkFOU0NPREVSX0RfT0ZGU0VULA0KPiArCQlbVFJB
TlNDT0RFUl9DTVRHMF0gPSBUUkFOU0NPREVSX0NNVEcwX09GRlNFVCwNCj4gKwkJW1RSQU5TQ09E
RVJfQ01URzFdID0gVFJBTlNDT0RFUl9DTVRHMV9PRkZTRVQsDQo+ICsJfSwNCj4gKwkuX19ydW50
aW1lX2RlZmF1bHRzLmNwdV90cmFuc2NvZGVyX21hc2sgPQ0KPiArCQlCSVQoVFJBTlNDT0RFUl9B
KSB8IEJJVChUUkFOU0NPREVSX0IpIHwNCj4gKwkJQklUKFRSQU5TQ09ERVJfQykgfCBCSVQoVFJB
TlNDT0RFUl9EKSB8DQo+ICsJCUJJVChUUkFOU0NPREVSX0NNVEcwKSB8IEJJVChUUkFOU0NPREVS
X0NNVEcxKSwNCj4gIH07DQo+IA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kaXNwbGF5
X2RldmljZV9pbmZvIHdjbF9kaXNwbGF5ID0geyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+IGluZGV4IDEyZTVhNTIy
YTI5OS4uYWNiOWNhODdkZGE3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+IEBAIC0yOTIsNyArMjkyLDcgQEAg
c3RydWN0IGludGVsX2Rpc3BsYXlfcnVudGltZV9pbmZvIHsNCj4gIAl1MzIgcmF3Y2xrX2ZyZXE7
DQo+IA0KPiAgCXU4IHBpcGVfbWFzazsNCj4gLQl1OCBjcHVfdHJhbnNjb2Rlcl9tYXNrOw0KPiAr
CXUxNiBjcHVfdHJhbnNjb2Rlcl9tYXNrOw0KPiAgCXUxNiBwb3J0X21hc2s7DQo+IA0KPiAgCXU4
IG51bV9zcHJpdGVzW0k5MTVfTUFYX1BJUEVTXTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9saW1pdHMuaA0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9saW1pdHMuaA0KPiBpbmRleCA0NTNmN2I3
MjA4MTUuLmVhODk0NzNjMTc3ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2xpbWl0cy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9saW1pdHMuaA0KPiBAQCAtNDUsNiArNDUsOCBAQCBl
bnVtIHRyYW5zY29kZXIgew0KPiAgCVRSQU5TQ09ERVJfRFNJXzEsDQo+ICAJVFJBTlNDT0RFUl9E
U0lfQSA9IFRSQU5TQ09ERVJfRFNJXzAsCS8qIGxlZ2FjeSBEU0kgKi8NCj4gIAlUUkFOU0NPREVS
X0RTSV9DID0gVFJBTlNDT0RFUl9EU0lfMSwJLyogbGVnYWN5IERTSSAqLw0KPiArCVRSQU5TQ09E
RVJfQ01URzAsDQo+ICsJVFJBTlNDT0RFUl9DTVRHMSwNCj4gDQo+ICAJSTkxNV9NQVhfVFJBTlND
T0RFUlMNCj4gIH07DQo+IC0tDQo+IDIuMjkuMA0KDQo=

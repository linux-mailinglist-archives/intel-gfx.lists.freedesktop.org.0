Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F249E875F7A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 09:29:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 699FA10E88C;
	Fri,  8 Mar 2024 08:29:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tb/oZhjJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61B810E88C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 08:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709886559; x=1741422559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6S9PgJw0kNphBtrTYRIkAE7gak50/UqSEHMUglnpOL8=;
 b=Tb/oZhjJl2518HevtT0PLGvKzGpAymNvyAZL8OEabE8Ll3Kc3ozKrWev
 qGzuYQ3+K8hjjjaIqbBLYYo+XGD6baZtfdjt9FqVJ8DD0Gl0PNCg3W65e
 hlw/fm+TiLhzMhYeqSDICs5JEZK+ES/ULs9A8GddGVrttyDu3QI/Z4zDa
 t6GyM+K27rO/FK6J5iWJpkjo31ZBsazbQKyNuGmpL0JfoVoGlFMzVGEFr
 8/J0NDuvkB9ukiIrSo2ppzunyCNAOIE3rgEBm8ldIeJGjm3lqOriY9cwn
 3NTmrIOppHedNWvuZ1dhxrawXRZoXOFF3fLPwaXg3JRd9ZoHpaHC0/fVm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="15739724"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15739724"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 00:29:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="15089995"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 00:28:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 00:28:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 00:28:30 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 00:28:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gMv9PaPCbMZ1pnnSnWT6FulCg4CYaflfgPL5xRQIZfIMEhWeK4Z0t5HSWoqBz+TJAeXhbdL6EZKyxxFdqXPx2BIjUUsrYoScQj112BNtiqW3j12eguZpS7royUrCVVoXTwhimcqmRX1SY6CEiugC40X5os2jfDG38bN4s1O0/T8z5mPSitQZ6C8SD9HB4HVU0sqDGKy+jIW+fEPXWBKvlgeR/UptlLGMB4y/IYNt5Rl/oxzzOWJqIGP5BCTusNU/bijYMstvz2adB3nBNkDgTzo1pV3ErEtQh4SsPvMqB4LZTrVyVLTmbvGl5GLtqmNSH622nwNz5miY1ZizrUUjTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6S9PgJw0kNphBtrTYRIkAE7gak50/UqSEHMUglnpOL8=;
 b=CKzpKrx/8xZ98QK0LmC+Y8asN57IMr692mBhQd4VjIzCtS75zmoLk7bS7jS3aRLN1v09nNHNvmvqHxjuIOBr1AQKTxgN5bnJSs9u62dN0ZBvu+S09LaxqemJzxyKugHlbkchqD5iX5I6CDJO7MZ6zbJf/XM55PNJnKhyIluhMTmJGc6brNaj6LoA1VYRUXdv7VjdsDKU99SStAss6JnZpa8rbWGinPKrI/lYf60tnumq4ppJfmVUQYMntBpT3yv+JPwGffP41qezvNICgAtALyKEt+VIcuBS+9pC/bi1Ap+qq0b7vGyHRArja/ho1wFpak0oqQ9O+8hSFc9QcpxqJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB7074.namprd11.prod.outlook.com (2603:10b6:510:20d::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.6; Fri, 8 Mar 2024 08:28:28 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.006; Fri, 8 Mar 2024
 08:28:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4 3/5] drm/i915/psr: Calculate IO wake and fast wake
 lines for DISPLAY_VER < 12
Thread-Topic: [PATCH v4 3/5] drm/i915/psr: Calculate IO wake and fast wake
 lines for DISPLAY_VER < 12
Thread-Index: AQHab6E0AytP9Ed0g0qdarjgdwb4v7EshyKAgAD+ygA=
Date: Fri, 8 Mar 2024 08:28:27 +0000
Message-ID: <88d15c91381bd0602754f84839889d6e55a11d5e.camel@intel.com>
References: <20240306083427.2040475-1-jouni.hogander@intel.com>
 <20240306083427.2040475-4-jouni.hogander@intel.com>
 <Zen2b41UnCTfpzvs@intel.com>
In-Reply-To: <Zen2b41UnCTfpzvs@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB7074:EE_
x-ms-office365-filtering-correlation-id: 72255152-246e-4e92-1ac4-08dc3f49bae2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ffSFGBhXzQWwV0MoTFCqqb0U5h7Y1G3vv3jpBC2aNdDnsAhxWTsKc+cyHkzJqUxD2+Cz3I7bX5v+VPumMvxbg4GeCAb0cL6uRJu+oh5Ms1YrQwJxMrobJJfktqCMDgygGAsGjqIgrNN4yNQ1/8TVy6w4m7CoKb3WXVROqgWxe9wHR5IaRp95tnEns3peiZtAncLcww3Z9i7wMB/+V/98Jz2T+fd599nw6nU8zYy7I+QFIkJbySmrwBtx+Is/VwKHiMGKmXMz031u2YQQVpqqweUQdWSkuGxcTiFSZXVUhP/FaOQ3Us51TqX9Tq7YrXlNo0gLZo64lnfpm71joTDi3cT6HFVBtW8dlSQdB6LEKAKtHxC7D2ER5BeNxZz4tC6jfMF6UIRrAjXYqhGObRImjN4myYXxICNiQ3LlxXHtrDDtMZWJ8u4YpALlD0xDUbvZB+4LHCj/sx57hFednvjGPCx4+CmTBRH4IN7Qw7J9Eu3/IIOyo0+x4UPk32K9Bd0g10Ufmesu4+M0Sx8vUNQn1T40IElPBjvKTM/x5wkZ/XzXZhfli/dYnR7u5JCugYeBm0qOjHM7fqOz5ST85jdf4soF8yp8SA6OosqRuDe4NK7nX6YCz+2v1GkCqp+k80X65AeBCyR3Bd//DM5YE0ZSC2BdSXRf76XFj5ZDDI069RnVAnn/8bFTwfAjN7ajfIPu6ey+ETKIJroJR+C/6lpApA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnFBcVhDZkxwOWJuN2E5VE1nQWdxRzgrNDBLV1p3Nmc2bkg5QnBpNmdVQ1Er?=
 =?utf-8?B?MWxHTjU5Qlo1TnQwSkJ0eG5YME5wdjMxSzFmc0RMWVJMQnVoSkc1NHpkSzBK?=
 =?utf-8?B?dUFPUUJRVW1DUzFsSGJwODlHSWhLNGtlTFpGMkU4S1JwbUw5aUNHNnhvVXF0?=
 =?utf-8?B?T1NRQ0tKSE9aRzhWVjhzQXBLS08wZ1c5bmhNWVljdmoyTUljd2RmMWdrb1lp?=
 =?utf-8?B?eStUcE9HTUFzdWxPUHFlK3RSbGc1VDR1R3BPK0FnOXJDZzFWUXRQSFNKNU9M?=
 =?utf-8?B?S3VjTENwSGJNOU4yMWdLcXRHV1VrS1M0eVViM0swZWs4MEV6VUlQNER2QjZ5?=
 =?utf-8?B?czE3ZnBhbjlsQjBWbWhmQitRMmxUYlpxeGR0MDJYdTN4dGR4Q2ZNQ3I0OFlk?=
 =?utf-8?B?WmdRb21XTGRIOTNwemhCMEpwWDY0MFBxMFZvWkNEOWRtdW5GcDhxdDY5VW5l?=
 =?utf-8?B?YUpJV3Jmc1lQR0FvRStFdGs3dWVRK3VtWUloWG4zUXBKU2pjaUxLTEdpZEND?=
 =?utf-8?B?bThsNnRYQ3ZpVzI0VHR4VHBCQUZSZGxCSWJOWkNoNUowNVBSNzR6aW1oTFBq?=
 =?utf-8?B?Uy9PditoenhkZjhSWXRVY0NlNVpGeEJaME9lNDZaZ0xKMXlmeFdYNzNTV2w3?=
 =?utf-8?B?dWtLcmlXKzVkNmluQy9ScWxhd29ibktMVXk2TWtNM2w1b3FkVm5jUmJGS1E3?=
 =?utf-8?B?bVNNN3VZTkdLVkZwcFNkZTZ6Q0hCMXV2aEEyRnFCQVhiUnhKL0dPcEN0T1Uv?=
 =?utf-8?B?c3JCQlZjOHVLa053MFZqZjgvOStWcmoxZ3gyRDRqSVkybXdITnhvbEJwSnAy?=
 =?utf-8?B?RkU4aW0zRFdWTWw2dFVaOWxXUGlyU2N2Z3A3am4rWEhySEViOGdvSVlZeVlP?=
 =?utf-8?B?OHBiWG5zRUVHenVOWVVJbk9VU0hwSEhCclFNU0xWSERXUE56aWVCZU1OUGRR?=
 =?utf-8?B?Y0Y4WWwzV3hWRFBuNHFWNVB2blZBYVMrU001NWJzbnU3cDZSZmw4T21tK01G?=
 =?utf-8?B?UXBXRkUyU3hRemk5K2NpNWFpeDhZcVk0d0FFZUVZeFZtQ2IvcHV5UWVzc29L?=
 =?utf-8?B?aW1PaUttTHJSVmNPa0dlazdPZTNSTUh5ZE9OQzU2R1dCUjROdGsvTWlVTmF4?=
 =?utf-8?B?cWgyZ0dBSmlUZ25OU0lobVdhRWhoY2plWUlHNWloMFdDQmlDeVVYby9NcEtz?=
 =?utf-8?B?ekc5MzNwRmpNbWE3RFdTNUJMbHBPTVVlU29ET1BsRXIyNm4yUW5PZUpoRmhT?=
 =?utf-8?B?SHBma0grREhNczN6Z2UrZWFBMFVyemdJbXNxRlFoeXJOaGdOZU5DMjBJL1hH?=
 =?utf-8?B?NzUxbEpyUEp4a2JPZ2o5YXA1dy9hWFkyWTZjNXZVRE1jTGZpdmh6YzhuMXYw?=
 =?utf-8?B?UEZNcmliVHpJc1c4L2pUcDQ3eDhxTjV1RGpBVEhhZzdhZkx1bnhTaTN1ODZX?=
 =?utf-8?B?RWlQQmxYTk5mUHl0bEwzT0Rwc3FiNTQ2MjQ2ZEwyK0xDYVJ4UDlJWjVmVXFR?=
 =?utf-8?B?aFQvM2RTS3BWdlVCVFNxUGFVazBxeUpCUy9JSVNqZFFOZnI1QWNQSTFYV01S?=
 =?utf-8?B?cVBiQWl6TGhjcjdrQUMyNTUyQytnUG9JRGh3RnVsa21yVGIyZHVWUDV3ckts?=
 =?utf-8?B?VHRmWkpSbGI5TkF4QkZmYWRTV2RwRzR6eEZlbnFZS0FKcWdxVzh2aXI2TEpP?=
 =?utf-8?B?bHlaTEtsK3FBRXJmYTdoNEdjbmNkeXIwOTgzOUNwRXU5QUJiYjh4Ri92WlVr?=
 =?utf-8?B?UDRaWEp1czdINmtHOEZjcnZUT3dxMjRocGRyWFcwRms4aURCemkzV0Zzb1pq?=
 =?utf-8?B?dURLcy9INHFwQjRqelk0Nk5BeW5rc0N3SmM3T1ZOdlgvZmpaQk5pSFBXc3d6?=
 =?utf-8?B?MWVsTDRCOC91NlhvYjlpNXJBaUlYZndzRnJMREMvSXFwVzcrbFlMd1A1Tmwy?=
 =?utf-8?B?dUJzS3ZsR3dpb0p2cXhpSDIxam9LcXZ5ZnhvOGYyV2RJU05CcStWcnJxNk5R?=
 =?utf-8?B?TkcwVnhROE03amkwVElJMWh1TlVVUFh2citWc3h2VytaV2Q4bTBMWW9mWTI3?=
 =?utf-8?B?cHo1OFJmUVpKRzYwZHcxNWxjc250VHJlN0h3VUhNb0NrZ3ZiWVlWTWg5LzZz?=
 =?utf-8?B?dTQxRWhlVUZEK2E4WWcrNEJDYS9IM3ozU2FqWW1jWG9sVXlOTTBoczdHZHhr?=
 =?utf-8?B?MWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <132B6129E8D4BE4F9888A7C25C2706DF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72255152-246e-4e92-1ac4-08dc3f49bae2
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 08:28:27.9835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gxYBKNJXDDW4ordAhnefgZnvHJBAiPbZO3glfnk6/VJJViV/wCT24yvwWQeT4l9J1sfOGC4BKpwwsfViAws93E4aunm8QbNsWgoA8qismHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7074
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

T24gVGh1LCAyMDI0LTAzLTA3IGF0IDE5OjE2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gV2VkLCBNYXIgMDYsIDIwMjQgYXQgMTA6MzQ6MjVBTSArMDIwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gQnNwZWMgbWVudGlvbnMgNTAgdXMgZm9yIElPIHdha2UgdGltZSBhbmQg
MzIgdXMgZm9yIGZhc3Qgd2FrZSB0aW1lLgo+ID4gMzIgdXMKPiA+IGlzIG1vc3QgcHJvYmFibHkg
d3JvbmcgYXMgaXQgZG9lc24ndCBtZWV0IHRoZSBzcGVjaWZpY2F0aW9uIGFzIGZhc3QKPiA+IHdh
a2UKPiA+IHRpbWUgaXMgY2FsY3VsYXRlZCBpbiBCc3BlYyBsaWtlIHRoaXM6Cj4gPiAKPiA+IDEw
Li4xNiB1cyAocHJlY2hhcmdlKSArIDggdXMgKHByZWFtYmxlKSArIDQgdXMgKHBoeV93YWtlKSAr
IDIwIHVzCj4gPiAodGZ3X2V4aXRfbGF0ZW5jeSkKPiA+IAo+ID4gSW5zdGVhZCBvZiB1c2luZyB0
aGVzZSBjb25zdGFudHMgY2FsY3VsYXRlIElPIHdha2UgYW5kIGZhc3Qgd2FrZQo+ID4gZm9yCj4g
PiBESVNQTEFZX1ZFUiA8IDEyIGFzIHdlbGwuCj4gPiAKPiA+IHYyOgo+ID4gwqAgLSBpbml0aWFs
aXplIGlvL2Zhc3Rfd2FrZV90aW1lIGZvciBkaXNwbGF5IHZlcnNpb24gPCA5Cj4gPiAKPiA+IFNp
Z25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgo+
ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAz
NCArKysrKysrKysrKysrKysrKystLQo+ID4gLS0tLQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMjYg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gaW5kZXggOTA1MjA4ZTFjNzcxLi5lMWRmMGVj
ZTlmYTMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
Cj4gPiBAQCAtMTE1MCw5ICsxMTUwLDI1IEBAIHN0YXRpYyBib29sIF9sbmxfY29tcHV0ZV9hbHBt
X3BhcmFtcyhzdHJ1Y3QKPiA+IGludGVsX2RwICppbnRlbF9kcCwKPiA+IMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gdHJ1ZTsKPiA+IMKgfQo+ID4gwqAKPiA+IC1zdGF0aWMgaW50IGdldF9pb19idWZm
ZXJfd2FrZV90aW1lKHZvaWQpCj4gPiArLyoKPiA+ICsgKiBGcm9tIEJzcGVjOgo+ID4gKyAqCj4g
PiArICogRm9yIERJU1BMQVlfVkVSID49IDEyCj4gPiArICogMTAgdXMKPiA+ICsgKgo+ID4gKyAq
IEZvciBESVNQTEFZX1ZFUiA8IDEyCj4gPiArICogVGhpcyBpcyBub3QgZGlyZWN0bHkgbWVudGlv
bmVkIGluIEJzcGVjLiBUaGVyZSBhcmUgNTAgdXMgaW8KPiA+IHdha2UgdGltZSBhbmQgMzIKPiA+
ICsgKiB1cyBmYXN0IHdha2UgdGltZS4gQ2xlYXJseSBwcmVoYXJnZSBwdWxzZXMgYXJlIG5vdCAo
aW1wcm9wZXJseSkKPiA+IGluY2x1ZGVkIGluCj4gPiArICogMzIgdXMgZmFzdCB3YWtlIHRpbWUu
IDUwIHVzIC0gMzIgdXMgPSAxOCB1cy4KPiA+ICsgKi8KPiA+ICtzdGF0aWMgaW50IGdldF9pb19i
dWZmZXJfd2FrZV90aW1lKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4gPiAqY3J0Y19z
dGF0ZSkKPiA+IMKgewo+ID4gLcKgwqDCoMKgwqDCoMKgcmV0dXJuIDEwOwo+ID4gK8KgwqDCoMKg
wqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGNfc3RhdGUt
Cj4gPiA+dWFwaS5jcnRjLT5kZXYpOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BM
QVlfVkVSKGk5MTUpIDwgMTIpCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIDE4Owo+ID4gK8KgwqDCoMKgwqDCoMKgZWxzZQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybiAxMDsKPiA+IMKgfQo+ID4gwqAKPiA+IMKgc3RhdGljIGJvb2wgX2Nv
bXB1dGVfYWxwbV9wYXJhbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiA+IEBAIC0xMTYy
LDggKzExNzgsOCBAQCBzdGF0aWMgYm9vbCBfY29tcHV0ZV9hbHBtX3BhcmFtcyhzdHJ1Y3QKPiA+
IGludGVsX2RwICppbnRlbF9kcCwKPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgaW9fd2FrZV9saW5l
cywgaW9fd2FrZV90aW1lLCBmYXN0X3dha2VfbGluZXMsCj4gPiBmYXN0X3dha2VfdGltZTsKPiA+
IMKgwqDCoMKgwqDCoMKgwqB1OCBtYXhfd2FrZV9saW5lczsKPiA+IMKgCj4gPiAtwqDCoMKgwqDC
oMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTIpIHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpbnQgaW9fYnVmZmVyX3dha2VfdGltZSA9Cj4gPiBnZXRfaW9fYnVmZmVy
X3dha2VfdGltZSgpOwo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49
IDkpIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnQgaW9fYnVmZmVyX3dh
a2VfdGltZSA9Cj4gPiBnZXRfaW9fYnVmZmVyX3dha2VfdGltZShjcnRjX3N0YXRlKTsKPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50IHRmd19leGl0X2xhdGVuY3kgPSAyMDsg
LyogZURQIHNwZWMgKi8KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50IHBo
eV93YWtlID0gNDvCoMKgwqDCoMKgwqDCoMKgwqAgLyogZURQIHNwZWMgKi8KPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50IHByZWFtYmxlID0gODvCoMKgwqDCoMKgwqDCoMKg
wqAgLyogZURQIHNwZWMgKi8KPiA+IEBAIC0xMTczLDE1ICsxMTg5LDE3IEBAIHN0YXRpYyBib29s
IF9jb21wdXRlX2FscG1fcGFyYW1zKHN0cnVjdAo+ID4gaW50ZWxfZHAgKmludGVsX2RwLAo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGh5X3dha2Ug
KyB0ZndfZXhpdF9sYXRlbmN5Owo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBm
YXN0X3dha2VfdGltZSA9IHByZWNoYXJnZSArIHByZWFtYmxlICsgcGh5X3dha2UgKwo+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdGZ3X2V4aXRfbGF0
ZW5jeTsKPiA+IC0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBUT0RPOiBD
aGVjayBob3cgd2UgY2FuIHVzZSBBTFBNX0NUTCBmYXN0IHdha2UKPiA+IGV4dGVuZGVkIGZpZWxk
ICovCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X3dha2VfbGluZXMgPSAx
MjsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9IGVsc2Ugewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpb193YWtlX3RpbWUgPSA1MDsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZmFzdF93YWtlX3RpbWUgPSAzMjsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBtYXhfd2FrZV9saW5lcyA9IDg7Cj4gCj4gSXNuJ3QgdGhlIHdob2xlIGVsc2UgYnJh
bmNoIGRlYWQgY29kZSBub3c/CgpZZXMsIHRoYXQgc2hvdWxkbid0IGFjdHVhbGx5IGhhcHBlbiAo
ZHVlIHRvIHRyYW5zY29kZXJfaGFzX3BzcjIpLiBNYXliZQpiZXN0IHdheSBpcyB0byByZW1vdmUg
aWYgYW5kIGVsc2UuIEkgd2lsbCBjaGFuZ2UgdGhhdCB1bmxlc3MgeW91IGhhdmUKYmV0dGVyIGlk
ZWEuCgpCUiwKCkpvdW5pIEjDtmdhbmRlcgoKPiAKPiA+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiDC
oAo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyKQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFRPRE86IENoZWNrIGhvdyB3ZSBjYW4gdXNl
IEFMUE1fQ1RMIGZhc3Qgd2FrZQo+ID4gZXh0ZW5kZWQgZmllbGQgKi8KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfd2FrZV9saW5lcyA9IDEyOwo+ID4gK8KgwqDCoMKgwqDC
oMKgZWxzZQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF93YWtlX2xpbmVz
ID0gODsKPiA+ICsKPiA+IMKgwqDCoMKgwqDCoMKgwqBpb193YWtlX2xpbmVzID0gaW50ZWxfdXNl
Y3NfdG9fc2NhbmxpbmVzKAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAmY3J0
Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSwgaW9fd2FrZV90aW1lKTsKPiA+IMKgwqDCoMKgwqDC
oMKgwqBmYXN0X3dha2VfbGluZXMgPSBpbnRlbF91c2Vjc190b19zY2FubGluZXMoCj4gPiAtLSAK
PiA+IDIuMzQuMQo+IAoK

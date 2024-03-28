Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6B588FEA8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 13:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C86BA1123FE;
	Thu, 28 Mar 2024 12:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RouzMV7N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E111123FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 12:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711627667; x=1743163667;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=H5ZFU4JlSpRz6E9zH8xTO1jtPsNXQjhoRPYmubgWT/o=;
 b=RouzMV7N/vpA1nbVMa742CfS0BDi1CEJwcgszC4YKSGKHSys6IDvjovq
 FUFMhKvagBHBHqr57zi9GNABCshlPSR1kr/yICpyQMyjxXXZpw/CLsZvb
 db2mOWexAp5Jrj0Oyeg4pHCZpGNHpIXXiyvFJmel8Y91BvgayzjeSO+Jw
 0wZG8A6P6aj1Jpqt2dUAWHn6eUPY2gHD3m09STIPKaNm4NYCAXwHo5gOy
 FrmRoluWMsEiw180Se5mYjbiD+9CAqW12NpQC8pSd/Ag7eu7NAAbbDliy
 8pfQ21B+ehQXy1MHzqNuaCcFgdtDeTiZf24yeqHDoBKH05vlx2reWXo9P A==;
X-CSE-ConnectionGUID: 0Sj3pK/cQ7Kdz8nI83RC8Q==
X-CSE-MsgGUID: wfaG6ePkT5eSWm4RgH2q+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="7374761"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="7374761"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:07:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21278102"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 05:07:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 05:07:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 05:07:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 05:07:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CW+DhLADtVhSg0BPHF1IBgrsOc+a9VCVyrdSl+y3EpiipdRtLqzJeEowSI9ba7F0BJ8KkkLXYLQOnnVZZFZl0441oMa+yXWw4qtvJHiy6hPfPEUDHzWKsZ9a965g5MLKdi7qu2YJQvLS92TaJ+oXIiuhGDRdAHIZeXjnWnTVZs1Eyv9Qi+w8sxCkTQGqaL4PK9fSq9IGArCxSjdMq9JmnAtZHEPwBW2xUQkuTgRvc4O5f/TYm4o9s6ZxROUK02LQe5gOaGY8ji0BlNpJcoxje7pFDVV3Wfnh6SSW0glD8GdUfPMzPQvF5qF9FHM2xDQLmciiTnTvk4jcI9zrxRZzlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H5ZFU4JlSpRz6E9zH8xTO1jtPsNXQjhoRPYmubgWT/o=;
 b=e4tiLLHszxtovZ3CK+GRBY9G05kU/+4lVOysGXrxFVd2VQ+HhNDoJA5HFVZTO1+T73dCcf6apJ1KLn3ITD9e7qmQNCkHggHee4USMUp2lTRUeh+mwcwgFQnCS42Kz3C/X3dEZoNS1rYAu9/qRRxjiRooMWo6EI0pxPKK2bDhH2LGmN3rVhzUnUrGpaMFkmR5C4WnNPvzaLkW7j9iDGkpaO2emxjvAdbuJXx+jVE/fbcGVeIZipdugEN4EPMalqpfIUgJPhLZ0DrQvWnlnlmI0MDaIHc9UFdoHOjidah4V/KKOtnR0hhLH5wFSzw/Pi534XLm0bps44lmdKlhvd7xlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 12:07:43 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 12:07:43 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 10/13] drm/i915: Use old mbus_join value when increasing
 CDCLK
Thread-Topic: [PATCH 10/13] drm/i915: Use old mbus_join value when increasing
 CDCLK
Thread-Index: AQHagG7DnNfyVzSQ1k+oj3O5mZLeprFND9EQ
Date: Thu, 28 Mar 2024 12:07:43 +0000
Message-ID: <DM4PR11MB63606BCE541E3319BC0492FBF43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7354:EE_
x-ms-office365-filtering-correlation-id: 1fec9f72-2d23-44da-a205-08dc4f1fac92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nPcSKKjFpBYBtm3rsQ6nVxEGmgXdb6ofKFn6mgQl5XVVu7KmTvkRdpQJl+Uf9KQ/4S+vn9cBjlXXZcGN4C4EY1m3JUXSXL24gzday44ifpAtIQL45R68mTLEC/2GlHXXwe1sNOzyGhgfyVGQQe/mgP6DSXV3WxxyRTkL1YzbOBI+wOGI5qXmfYpq79IVaoAygICiCS2UUibWvxUtA45gFYLS/arZ7+UcduCJHcnm1bN6jiXP3+paYIc24+K8aXDIVGJ75Zd1+OeN2RuKiXmW/UZEs1MX4XKYB/JqZAvohUlCEn5LLuK0zqIKfdR+/f6WkxItrqESeB452O35q9NBQzC69QQolKKAOwIxRoLqKqLmNSZPYkF0KP3XlJ0Zk0ws6AyVHRJxDzJTgraG+ZuPpRMvPsh4ZbKflrLdMk+9GkYZzbn63MH+3pUw4HRAbkz+SE3mL6BM6gZ2aodOh/okiazzUZJV+vAMRlv+zjmAsb3Mtz49AtrTav986+ZKWZKVoO2HK0lAyf6iikuk6zzSiGPV8iup6CgEg1xFWu50nlLo7djCEstfkobECpCFZvWl010a7a7+EwqbAHB1ucf4CPS7emjThiPfGsaYD2KdvFXxcJwB3OpSmgrhBjQWs6NFiQ0EwB7p6bMLYG9XTCQO0NwLHzTaV3P0k+EEx6y75aBf450B8mKJPP9uNqy/txT5Q9MfAoCRR4qEVr9GOoWxbA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUJScG5YT2pJME1Tb3dHQ1dnUGVzdFlkOVhhSzV1ODlGYTVhb01TTXE1SzVw?=
 =?utf-8?B?MVU2L2dycjQxak9COVI1c3MzUHN1dTFmT3pRNXAxK3F5UEJZMVNZVHhaOU1V?=
 =?utf-8?B?elIzNGFYMzV1VVlxRGtWRXBwYWRjbm9ISGZwVy9PQmFGQU1HRjIyRkxlRytC?=
 =?utf-8?B?a1B6MmVjZmtrclZaUjJFYnhmZVhRQ1BRNk5oanBJTE1GalVUOThBSW1jVUZ4?=
 =?utf-8?B?TUlpSDRqcTZmNHg5N1E0a29QZkxHMFVNeFpZWDZXdmpjSitVSFJyUDJVajdI?=
 =?utf-8?B?OWFjM0RxZ0VkWUtqUzhFelBxVHlFL0RlV3lNbkJ2YlNxbWlmQTI4c1JWZVl4?=
 =?utf-8?B?MEJKWitzTzhMZ0V3TllwK0xyaGhvNEIxaVF6MDg3VWRmRnpjMUJmK3ZSak41?=
 =?utf-8?B?NnNBOHlYK1JvRFFaeXc0ZGUwbWovTGhhQTIyNXN1MmwxdzNUdmtrbFcxVS8y?=
 =?utf-8?B?dTluTWhET2tIZkQyYWFOb3JqV3dyOGR1SEFKb3BlcVhieWdobGoxbVlDejB5?=
 =?utf-8?B?b05YQy9wRU51WFZGOVBCSUpyN200ZzZqd2t3N0VwRlVyYmFQM1pMWkxtVlhH?=
 =?utf-8?B?SGRYcHZmUk9IbkU1L1ExWkJFYlI1aWx2eDlUQkM5ZFVWM243bFNJWk5Na1Z6?=
 =?utf-8?B?eWh4UHIyck1LZ2VLNGhDUnB0UUtDVSs1ZjAvRmx2dS9rTVNqUEhLNWdGa3Yr?=
 =?utf-8?B?UFMvTjdMbDYyYWloLy9XNExwSjJUa1pISTlrZ0xTUmJ6YnVPNEJaODRaM0ZL?=
 =?utf-8?B?V1UxUXZzcE9LRVZ5SVdHck5Td0pmSXllMjU0S3VsakF1aFcyTDdQZTJoVGF1?=
 =?utf-8?B?Wk5ZMk0yRXVSNEtER3c4enRwcXlLMGQ4S0duYVhFVWRJU3pqcVFXQUloTmJK?=
 =?utf-8?B?N0wxR3FIaHNtZEhRL0QzcUJ6clNFazJGeEpLZmVLTmFYSkE1d0NlWnIwdjhV?=
 =?utf-8?B?SWVNLzNuNWx6TnhaclBad25pczdnM08yWjdyaUM3ZDNpYzJ1a1o0R3ZxR2k0?=
 =?utf-8?B?cnY2VlFNcUQ1Z3BYczN1YXBkQ25MYWZNMXpYRU5rL1RNWE9xOTlaU0FmaVk0?=
 =?utf-8?B?MGJjekg2emtkVnJJZmlFdmdTOGNGcmxHYXV5eFpKNjN4VEZFMEp1UUgybGxO?=
 =?utf-8?B?ZWhyU1FtR3VFS0xyUjIzSUNFc0xDTFJ5MmRXT1dRazRMNmFDODJ5Y3NGWVZE?=
 =?utf-8?B?eVYzVWdnc0g5V3Fac29xOWFObloxeFk0TUYxeUhEQU5BbFI1NGZsNzJEb2pC?=
 =?utf-8?B?VU9uaTlzWnowdGE2aW9XM0JyY1p6OS9pVUd1RkNmTUphd1M5WHBNWHpUcGMx?=
 =?utf-8?B?YzJ3NlYzZkN4bVBySkZVbG8zVFQ2Rkp4dHNjcldHM2Jab2oybE1xNjFVTExx?=
 =?utf-8?B?eGREWGV0S1pGbjgrTi9QT1lRM1FOTEllTFBpdUJLQitSelpLdGlVOVVNcmFM?=
 =?utf-8?B?MFd0RTUyTmhFMlA4bEx6Q3IrRFhxVTBRQXVuU0xybmFqNTA3TDc3c3ltbkF4?=
 =?utf-8?B?eUJkcEhXaGxqaWF3emZKTjY1aGJvMTdEMWw1UkhZSFIzRzBuSWtFWmd6NFNy?=
 =?utf-8?B?cVBxU0d4cDg1RkNQRkw3R1liYmlNS0d5UkxYS3NvL2hxMEFEK1RqSEFrc2N5?=
 =?utf-8?B?b1VvYWt1dU5BRUxaeHkwUnpnTmNmdC9heVR3NUlsV0NZOVZ6NjBkNjJuQ2dP?=
 =?utf-8?B?WVpJTktmRCtSUk1aZEc1TWk1c3h2dGg4MmczMGtrUGpKZzlSTllNSTFMVHkw?=
 =?utf-8?B?eVhuZnVXb21hVjBnZDE5eEFFOWlqaTR2a1B2clBlajlEVDU2S0hhNHhSZWFR?=
 =?utf-8?B?d29Pem1TL1dCQlUzS1pvblVkMTNGSW43ZjA2NS9PdnhBcHVHZ2x0VGx6aFRz?=
 =?utf-8?B?OXFoOURMYUh4NndCUnBGTHV4U3lTYUxTa0JMRU5YdGlZck5JZmZLZmVNMmZt?=
 =?utf-8?B?bXFOMDA2NjhKRHZoYWdMOHVSOGpiUHhtYjBLc25kZTkzOVlSWWJRTW9uSTVZ?=
 =?utf-8?B?L1QxbXdtOVQwU3VQYXRmTlBUZDU5OFhKTzJRTWNrWEpVbHVzNTVNV2pFakFj?=
 =?utf-8?B?VDMvcEwvRkRCa0VNcU1oaEx6U3Fldk1BZ24veU1PYVliZExRYXZiZ0Jvc1NE?=
 =?utf-8?Q?XcrZyQXtVUfhRqbnbtooh8C/x?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fec9f72-2d23-44da-a205-08dc4f1fac92
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 12:07:43.7063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: svAjvJSOxZjVDYRBnGTJNcKiWXHO0w7hal8CC141jFUzCLq7gPueNy1nBvsPtXwFL4/JThKLuoOiIHFdEyLwFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMjcsIDIwMjQgMTE6MTYgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDEw
LzEzXSBkcm0vaTkxNTogVXNlIG9sZCBtYnVzX2pvaW4gdmFsdWUgd2hlbiBpbmNyZWFzaW5nDQo+
IENEQ0xLDQo+IA0KPiBGcm9tOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zz
a2l5QGludGVsLmNvbT4NCj4gDQo+IEluIG9yZGVyIHRvIG1ha2Ugc3VyZSB3ZSBhcmUgbm90IGJy
ZWFraW5nIHRoZSBwcm9wZXIgc2VxdWVuY2UgbGV0cyB0byB1cGRhdGVzDQoNCk5pdDogJXMvbGV0
cyB0by9sZXRzIGRvDQoNCj4gc3RlcCBieSBzdGVwIGFuZCBkb24ndCBjaGFuZ2UgTUJVUyBqb2lu
IHZhbHVlIGR1cmluZyBNRENMSy9DRENMSw0KPiBwcm9ncmFtbWluZyBzdGFnZS4NCj4gTUJVUyBq
b2luIHByb2dyYW1taW5nIHdvdWxkIGJlIHRha2VuIGNhcmUgYnkgcHJlL3Bvc3QgZGRiIGhvb2tz
Lg0KPiANCj4gdjI6IC0gUmV3b3JkZWQgY29tbWVudCBhYm91dCB1c2luZyBvbGQgbWJ1c19qb2lu
IHZhbHVlIGluDQo+ICAgICAgIGludGVsX3NldF9jZGNsayhWaWxsZSBTeXJqw6Rsw6QpDQoNCkxv
b2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNs
YXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gW3YzOiB2c3lyamFsYTogcmViYXNlIG9uIHRvcCBv
ZiBjZGNsayBjaGFuZ2VzLCByZXdvcmQgYSBiaXQgbW9yZV0NCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCA2ICsrKysrKw0KPiAg
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRleCA5ODU0NmYzODQwMjMuLjQwMjQx
MThhN2ZmYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYw0KPiBAQCAtMjYxMiw2ICsyNjEyLDEyIEBAIGludGVsX3NldF9jZGNsa19wcmVfcGxhbmVf
dXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQkJCQkJIG9s
ZF9jZGNsa19zdGF0ZS0NCj4gPmFjdHVhbC52b2x0YWdlX2xldmVsKTsNCj4gIAl9DQo+IA0KPiAr
CS8qDQo+ICsJICogbWJ1cyBqb2luaW5nIHdpbGwgYmUgY2hhbmdlZCBsYXRlciBieQ0KPiArCSAq
IGludGVsX2RidWZfbWJ1c197cHJlLHBvc3R9X2RkYl91cGRhdGUoKQ0KPiArCSAqLw0KPiArCWNk
Y2xrX2NvbmZpZy5qb2luZWRfbWJ1cyA9IG9sZF9jZGNsa19zdGF0ZS0+YWN0dWFsLmpvaW5lZF9t
YnVzOw0KPiArDQo+ICAJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIW5ld19jZGNsa19zdGF0ZS0+
YmFzZS5jaGFuZ2VkKTsNCj4gDQo+ICAJaW50ZWxfc2V0X2NkY2xrKGk5MTUsICZjZGNsa19jb25m
aWcsIG5ld19jZGNsa19zdGF0ZS0+cGlwZSwNCj4gLS0NCj4gMi40My4yDQoNCg==

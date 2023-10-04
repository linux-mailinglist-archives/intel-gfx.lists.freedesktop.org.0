Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 024D27B7CEF
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 12:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC93310E0C0;
	Wed,  4 Oct 2023 10:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F24510E0C0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 10:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696414655; x=1727950655;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dlsGv/hyBlAOsWUcZlls3Smc/5wHpLm4eWQyBWakCAY=;
 b=ZMJH/Rxu6/pEjImh904SfIJoJ2AWoR6fh2duyXb8sqQsuZJOfE4hNspH
 oCdc2dpTXKIei5VodnDlQRnpJkCwxv5vhC7fYPXza2xif2bTW3198z264
 uf/roj1GTm/+jBqImGFYEt2kQJ2/yRO4ohb37rBATilqKLu0FJ1Axr3TR
 bob5Z3MN+lmfTv9rPHNiTYJsvF6or14yFD4Rpal357CX90tOIlEP4K1Gz
 bPbQ2QkGKML3JdlUhcRR0+nlWeY+qCf3QZHX4/sGcGsy6e1xB4Y/07lDl
 Yj4gNhkpEzUnee6zKU4eZGcsNSU7n3pvEWU/x3w6EF8KgjDsM9QElBJ3N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="447297629"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="447297629"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="786455995"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="786455995"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2023 03:17:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 03:17:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 4 Oct 2023 03:17:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 4 Oct 2023 03:17:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I8bbVOmyqzNksTS0pX+aoM6THtr9WWvI9S7FI6+w/B+qH+OqpJsArU77KAhAEYr1rlsgtMov2dXwxBVfxSNcgTnPYEXqz6wHNdfUr3LQt7YQupyoVgoxrQ9o/vyLzo+xLOZIZscWtMFDMbyCQqM40Xymv4MOFiuL5F6rrD/H89s1b32+or5Br29RVq/UQVb4bQhlR1X0gmakw2RWlgN50tBHeMtjeIMb9Zv4mlYRVzbv71CI2YuTNU+aBlxQrI7GYN0fQd8nMeWFTb/uS54WNUVk3O5ImSSRue+BkxK6H26i3P+Lj4ZACEQQyssKqRTdPAclXAEbPPGsz3jbqofLjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dlsGv/hyBlAOsWUcZlls3Smc/5wHpLm4eWQyBWakCAY=;
 b=AyyZNTpKVjwOqMm+RXDX0FSSIU50TW2yh2gbvTDaxkSgXSE1AF5L4O/VecvmrcZqrhh+yKukeA90vH2xyvPxg6q2AivSpdeYIsQ9PT2FNi8dNxRSl2pFvWvYw6gEVb5XDhQVsxDA8IaIwrHhMAsQ5NC7Guia5028oO4cqW33j48GRaiRuiOEuP4kYSJQDLCG0HYJUIWJEa1z5nhVZ5MO7OtUnm8a2AOk7BvK+iuT95yV6YWjlVYmHz1KvkIsmD708H9DVrQwcwi2CS3XmHGV2Buh4HtnmboQWrkW+IyHJsgbdGmtPCtRxvXfzeswKbIIT5y+O1OVfbco4feY4nqLxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA3PR11MB8024.namprd11.prod.outlook.com (2603:10b6:806:300::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Wed, 4 Oct
 2023 10:17:28 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6838.030; Wed, 4 Oct 2023
 10:17:28 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 5/6] drm/i915/fbc: Split plane pixel format checks
 per-platform
Thread-Index: AQHZ9jHd8MnxhBjWrUG5T66pVocPeLA5a44A
Date: Wed, 4 Oct 2023 10:17:28 +0000
Message-ID: <7be269fb51a02ce9237619aad45c433e5924c870.camel@intel.com>
References: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
 <20231003194256.28569-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20231003194256.28569-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA3PR11MB8024:EE_
x-ms-office365-filtering-correlation-id: cca9d8a5-0440-42fc-7bbb-08dbc4c31ca2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mSJQvWEF64xb+Nc+6Sbxqssd/7wfXlZYH8wX1Ce9WR/UWNwHpQLvaGwlwoGs1WWW9fALChS2eZYiKZiKrZaDoLpk4ins+Kpu6bdXzG31ZfbLyV8wQtLrUdQRvxLAd7U/bn4P6UTuFFzyxPMXaoXye6qiMuQ51E3GLrJHYpfkBrFJuNSGWUWIl67vwwt/5azzR1Elnhlv9DcGyAxhZCp3K1zZCkoSdt6YoEeWlp2mYsGHaMoq9iqsS7/8JBrs0oCKGb+SpqbwaQQMEcl3JKZQU2lFT7Vp8b7zsjKvv9zS9UpeVEwOb+o5P/EZ5agEWLm+0Br3V3GO5akLkMKKQ5juIme4HpQ64QDwcfwQVJLjMMPsJETwkxAfdrmX8a1b9Ss1DnoECNS9HT6ZMR6o7uFQIFgaBpINHPR5hF+dlpQPoVtl6h1I7fPyFyHx+LQmBPlUY85GrqdTNle+n7t0k9HgqD4Xr0XoDm4ZSBcG479Nd54gbG8/RnOWrATjjLZPDLtDyXW+EDOPkMcz2kHqQLJ4Vpqxt05UobwdY+G7Z5sIJ2ODSdqQnidPpa0+GB7jVDBMT5wBjDq91yBq57J7MZXH3Dn15oW13HkFBAFyX2D1zD4RZy1aiOwBFEOF1V1gluMJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(346002)(376002)(136003)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2906002)(38100700002)(83380400001)(86362001)(38070700005)(82960400001)(36756003)(122000001)(316002)(66476007)(76116006)(66446008)(66556008)(64756008)(6506007)(6512007)(66946007)(110136005)(91956017)(41300700001)(6486002)(2616005)(478600001)(71200400001)(66574015)(4326008)(8676002)(5660300002)(8936002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q1loMXY1UVQvcVNraDcwS3UwbjRVanJwdVRiNFhIblF4ZVhBM0ZGUEJIbS9t?=
 =?utf-8?B?RlE2bE9JdDdQaU4rR21FNzN4MUZFN2d2Nmg4ZEc0QmJUTGZJaWg3NklubmdX?=
 =?utf-8?B?OWhCdHNhYWF6UVp4OXpkcDhaVGY3cFhIejBhZE5GVzFzREZ1dkxxSE9tNGtk?=
 =?utf-8?B?UUNFd3huNVREZ2hIbnBHR3FLbHBQbXhYOStRVmRMT0hzc09sZzJsYnU1TGo4?=
 =?utf-8?B?S0lGMUkybkM3Y0lpN3V2b2Q5Wm9UemtLOUhhZkFXL0V3MDlDenM0VUhqbVF4?=
 =?utf-8?B?bmV2YXp4ZVpZSVU4MUcra2VtUGxiK2wyUGtQVE9ESEpXczAxQ2VYUldLRHVs?=
 =?utf-8?B?NXZnR252OXJiR0c5dHd4ZEdzQml1TXdlOTVTaGtncyt1eU1RaVNpbU9KeUQ1?=
 =?utf-8?B?TUhvZm5sOE5GSE95dXJFMFhVWlNqNktCSDBaY1Uvck1kZENucnhjMnYyZmJM?=
 =?utf-8?B?UWFlR3lPLzFXTnBxVVhLbGR1bHRMbTVXUjZnUG1BWEgwb0NLTGIxc3ZuelZN?=
 =?utf-8?B?dW9mbTRHRUVyZ1hTeWcxWGN3TEdBeU04dlhBa0RXdVg3TWJBZW1aS2lmak55?=
 =?utf-8?B?Wk9FK1FzM1BidWFpcHJRbWpOUURZbkFkam9JVDI1NFRYK1Rhbkx2TGt4ajVU?=
 =?utf-8?B?a1NHbnJxVEFENUtQK0E5UkZzV2hteHZ2WGN2SG9TYXpSTkJ1eTJMQnN3anBW?=
 =?utf-8?B?QUNueTh1d0Q3VlJuNUdLdWV5dHBObDRpejVUVW5qOTkvekZ6UkFDdnB6MU45?=
 =?utf-8?B?NDlYbkppa0t6UW51WUg3UzNVOG5lOTEvWm1pVE1vN08zM0x0ZEplQUZ1R3Nq?=
 =?utf-8?B?ZVErM2pRZHZMNWIvMUxlVlQ2NHZyYnlFSzhzajllRnFDUDFJbnYvaUVwMTdh?=
 =?utf-8?B?dk14TXJaOXNKbGJDSTdNemtxc2JQc3VBd3NPdUJCWkRmM1lyM1JwR09ueW55?=
 =?utf-8?B?MUZmRjFQWkFwTys0NEpCNEdwNUtjVHRvblFEYWYzbWE5TlBuZmkrWWxMYmZz?=
 =?utf-8?B?RGlBZnNtZm9hS0c1bGVBRFR6d0YwbVlnSzMxcURaTkJJR1g5TTR1RUpuRlYv?=
 =?utf-8?B?b1NRSFdvdFNUV21FTXd2UWVPTWhZMXZ4RC8yZHFUMDlLRDdFdDlMS1pnYlR6?=
 =?utf-8?B?S1VMTE05WHFLcmkwTW1nbW80eWZxYTJaTWt1R0NLcThLQkxKRmhDMENWMHA1?=
 =?utf-8?B?NXRFNlNxWkJYR1VpQjRjdFhPcFRxWVkwaG9wcGxRT1BlWUxjVUlrc1dtNUJU?=
 =?utf-8?B?dkhYWktTMzJjTnlSVmd3bCs1OEtwaVhVMHRlSkRGL0lpQ2kvYlN5SkYrMmpm?=
 =?utf-8?B?NFRiWUplZjNTdUU1cHVyYkVEdGZBdGFFMjRObnBOWGZUVFVUWkw0K1VYaUFB?=
 =?utf-8?B?RkUyc3AxZjI2Y3pJVWttdWNQMUJzL0ZXVFo3eHJVeW9hNnJKMGo3NXZmVXRy?=
 =?utf-8?B?aG1LaC9CVnBUSDlLVzFHUmd6VEh3RDQ4ZlBncVJPSkZoOWcwS3dxaHZYc3Uw?=
 =?utf-8?B?Q1BPRTF4cG01Y2M3M3N0YU5xcGYzd0p4Q2VwQ3dDVkl4V2h3SHpLakpvbjFp?=
 =?utf-8?B?M2RnMW5WUEFyK2JaNFRPVlB2WWlaeEZvQTNoTG1ES1Z2d3FQYjc5N1FaeHF4?=
 =?utf-8?B?dFVOYjliMk9nV2xTcUFNY1R1dStTaVFQdzNyQ0cyaVRJeU0xQ1NkV0I1NUx1?=
 =?utf-8?B?aEExb2VWZlJkREw5bktWUVNXZyt4VmxnbzBFY1kzbWYxMER1cjBKVnEwZlNu?=
 =?utf-8?B?ZGZNR3g0aU5xTTBwWnJDSHJld05nZDkvY0wveTNnRVRYVDFyclA1MDludkp1?=
 =?utf-8?B?UTB4bFl0b0FiNXM1emlYd05pWXIraUtNR1RQWTRxVTJ4V25RZ0Eydmc4aTdr?=
 =?utf-8?B?TkF4VjJsVlFzZEk0QkU2RkxUK2JHSVM3T1N1cUpHYndLMy8wMk01WTRTVnZk?=
 =?utf-8?B?M3VLZ3VKK2MwOEo4VjRJSHViNHFCbWhZWnFWcndySkwwcjBLTzFwT3dpZHpX?=
 =?utf-8?B?bGxhU3QwbHlVeUQzUC94cEZ2ZGlhSmVJMm9UZ0IzVWNpbjNsUjBvZ2JpdDdD?=
 =?utf-8?B?K1MvaExXR0pYNHd6NTRoRElFYVI3RU92Q2JZZzRQdGJXWGpVdTVuWjRuVjRE?=
 =?utf-8?B?YTVqTno4Rk5xNFp0MHJNekhQNSt5VHlxdTM3bFA0R1g4bGIyUUhjTzZoU2Zm?=
 =?utf-8?Q?uiRXSj0WBjWkbdsCFOSXdSk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DE97EA1EE72AAB42B5991D09DFC37C6F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cca9d8a5-0440-42fc-7bbb-08dbc4c31ca2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2023 10:17:28.1055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RmeOEMC8fdl1Wi24I1reh0+XVSquKvdQA8lMk3vHUqWlUcYRHaOZyR+sNZMJsGk4xrk0b3zvzn4wO06zHGBBxnR2GpRyoekrnHIMOPxzy48=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8024
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/fbc: Split plane pixel
 format checks per-platform
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

T24gVHVlLCAyMDIzLTEwLTAzIGF0IDIyOjQyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gQ2FydmUgdXAgcGl4ZWxfZm9ybWF0X2lzX3ZhbGlkKCkgaW50byBwZXItcGxhdGZvcm0gdmFy
aWFudHMgdG8KPiBtYWtlIGl0IGVhc2llciB0byBzZWUgd2hhdCBsaW1pdHMgYXJlIGFjdHVhbGx5
IGJlaW5nIGltcG9zZWQuCj4gCj4gTm90ZSB0aGF0IHRoZSBYUkdCMTU1NSBjYW4gYmUgZHJvcHBl
ZCBmcm9tIHRoZSBnNHgrIHZhcmlhbnQKPiBzaW5jZSB0aGUgcGxhbmUgbm8gbG9uZ2VyIHN1cHBv
cnRzIHRoYXQgZm9ybWF0IGFueXdheS4KPiAKPiBUT0RPOiBtYXliZSBnbyBmb3IgdmZ1bmNzIGxh
dGVyCj4gCj4gdjI6IFVwZGF0ZSBmb3IgbG5sIGNoYW5nZXMKPiAKPiBSZXZpZXdlZC1ieTogSnVo
YS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtraWxhQGdtYWlsLmNvbT4gI3YxCj4gUmV2
aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwu
Y29tPiAjdjEKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYyB8IDQ3ICsrKysrKysrKysrKysrKysrKysrKystLQo+IMKgMSBmaWxlIGNoYW5n
ZWQsIDQzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpSZXZpZXdlZC1ieTogVmlub2Qg
R292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+Cgo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+IGluZGV4IDg5OTllZjNmMDk3Mi4u
MzdmOTZhNGQ1MGYyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jCj4gQEAgLTkxNyw3ICs5MTcsNyBAQCBzdGF0aWMgYm9vbCBzdHJpZGVfaXNfdmFsaWQoY29u
c3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBpOHh4X2ZiY19zdHJpZGVfaXNfdmFsaWQocGxhbmVf
c3RhdGUpOwo+IMKgfQo+IMKgCj4gLXN0YXRpYyBib29sIHBpeGVsX2Zvcm1hdF9pc192YWxpZChj
b25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICtzdGF0aWMgYm9v
bCBpOHh4X2ZiY19waXhlbF9mb3JtYXRfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zdGF0ZSkKPiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHBsYW5lX3N0YXRlLT51YXBpLnBsYW5lLT5kZXYp
Owo+IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBs
YW5lX3N0YXRlLT5ody5mYjsKPiBAQCAtOTMxLDIwICs5MzEsNTkgQEAgc3RhdGljIGJvb2wgcGl4
ZWxfZm9ybWF0X2lzX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQo+ICpwbGFu
ZV9zdGF0ZSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIDE2YnBwIG5vdCBz
dXBwb3J0ZWQgb24gZ2VuMiAqLwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYg
KERJU1BMQVlfVkVSKGk5MTUpID09IDIpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiArwqDCoMKgwqDCoMKgwqBkZWZhdWx0Ogo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cj4gK8KgwqDCoMKgwqDCoMKgfQo+
ICt9Cj4gKwo+ICtzdGF0aWMgYm9vbCBnNHhfZmJjX3BpeGVsX2Zvcm1hdF9pc192YWxpZChjb25z
dCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICt7Cj4gK8KgwqDCoMKg
wqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHBsYW5lX3N0YXRl
LT51YXBpLnBsYW5lLT5kZXYpOwo+ICvCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBkcm1fZnJh
bWVidWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmh3LmZiOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBz
d2l0Y2ggKGZiLT5mb3JtYXQtPmZvcm1hdCkgewo+ICvCoMKgwqDCoMKgwqDCoGNhc2UgRFJNX0ZP
Uk1BVF9YUkdCODg4ODoKPiArwqDCoMKgwqDCoMKgwqBjYXNlIERSTV9GT1JNQVRfWEJHUjg4ODg6
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOwo+ICvCoMKgwqDC
oMKgwqDCoGNhc2UgRFJNX0ZPUk1BVF9SR0I1NjU6Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAvKiBXYUZiY09ubHkxdG8xUmF0aW86Y3RnICovCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpZiAoSVNfRzRYKGk5MTUpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOwo+ICvCoMKgwqDCoMKgwqDCoGRlZmF1bHQ6Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiArwqDCoMKgwqDC
oMKgwqB9Cj4gK30KPiArCj4gK3N0YXRpYyBib29sIGxubF9mYmNfcGl4ZWxfZm9ybWF0X2lzX3Zh
bGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gK3sKPiAr
wqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0
YXRlLT5ody5mYjsKPiArCj4gK8KgwqDCoMKgwqDCoMKgc3dpdGNoIChmYi0+Zm9ybWF0LT5mb3Jt
YXQpIHsKPiArwqDCoMKgwqDCoMKgwqBjYXNlIERSTV9GT1JNQVRfWFJHQjg4ODg6Cj4gK8KgwqDC
oMKgwqDCoMKgY2FzZSBEUk1fRk9STUFUX1hCR1I4ODg4Ogo+IMKgwqDCoMKgwqDCoMKgwqBjYXNl
IERSTV9GT1JNQVRfQVJHQjg4ODg6Cj4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgRFJNX0ZPUk1BVF9B
QkdSODg4ODoKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVS
KGk5MTUpID49IDIwKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIHRydWU7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZhbGx0
aHJvdWdoOwo+ICvCoMKgwqDCoMKgwqDCoGNhc2UgRFJNX0ZPUk1BVF9SR0I1NjU6Cj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOwo+IMKgwqDCoMKgwqDCoMKgwqBk
ZWZhdWx0Ogo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+
IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqB9Cj4gwqAKPiArc3RhdGljIGJvb2wgcGl4ZWxfZm9ybWF0
X2lzX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4g
K3sKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5
MTUocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUtPmRldik7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGlm
IChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGxubF9mYmNfcGl4ZWxfZm9ybWF0X2lzX3ZhbGlkKHBsYW5lX3N0YXRlKTsKPiAr
wqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSA1IHx8IElTX0c0WChp
OTE1KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGc0eF9mYmNfcGl4
ZWxfZm9ybWF0X2lzX3ZhbGlkKHBsYW5lX3N0YXRlKTsKPiArwqDCoMKgwqDCoMKgwqBlbHNlCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBpOHh4X2ZiY19waXhlbF9mb3Jt
YXRfaXNfdmFsaWQocGxhbmVfc3RhdGUpOwo+ICt9Cj4gKwo+IMKgc3RhdGljIGJvb2wgaTh4eF9m
YmNfcm90YXRpb25faXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFu
ZV9zdGF0ZSkKPiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHBsYW5lX3N0YXRlLT5ody5y
b3RhdGlvbiA9PSBEUk1fTU9ERV9ST1RBVEVfMDsKCg==

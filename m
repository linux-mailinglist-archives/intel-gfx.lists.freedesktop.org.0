Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC05900026
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 12:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D765F10E227;
	Fri,  7 Jun 2024 10:03:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V+mdXB68";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2E410E227
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 10:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717754620; x=1749290620;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2M52LXU+Kj3GdkmqXm2xqt+0u5YgPYehFcpcpWDymzg=;
 b=V+mdXB68Gl79WVym2W4FMZ5rxJalIQJI/lVLOAwqnRPhpngFZ0aYMH7D
 RXdO8h6ELp5e8jOc09w/jt4RvYX+EfouY7GgwnwKMgU4dD+Q4fxXeA0sK
 6veACEEbtaGOBnlOFaSmrB96BXYTapOVSASuUOVB+YZzpArY/+69K90cg
 s7hkeJ15r3Xpk6HThRpdYRLy8BkU0S8ihcuebmgNXoid7rD4VK8y5bQNu
 jKXha7bGL2NpUcGI6iZQGFDehTRCyhB+TfMXEA9W4AIIPW3SxjJkzHnwy
 y8MYxQgLRkmVpNSj2VL0trmZgaLMZHlu2oSFi+KaoZpIU5gun3lCczgMI g==;
X-CSE-ConnectionGUID: xv7bWOypTrmalkL7kR/lLg==
X-CSE-MsgGUID: 9mZZhmGdQlaqT5ODHAX+iA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14625288"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="14625288"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 03:03:39 -0700
X-CSE-ConnectionGUID: BtYAs7tSTEa8J0ThHYWTXg==
X-CSE-MsgGUID: Qh8GUdraQHyh5pS5H8aOfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="61478922"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 03:03:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 03:03:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 03:03:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 03:03:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NrGSJ2/e/oh3pegAgHLRhf9KAbnp/51HQlijE1kU+xVqclbJbUC65i6JrBFxd1hxQ8u9mf8+Ql88V/7hLhmgIZSXJbUYPFhwX0QQgGhqC+Cfwn+t/K8yEshDSF0U8ovAA3JL6mUSefCAlT6rLSa+kPBQfLMdbsfpkbGzFKJA6c/0I8+kfzgMy0QM8Au5TRXEYJI9Uuq7Se2+AMA0oVkekj6rqVt4pijzQ0egootPSGVs8vEn2VSZkS41Xx6rHAS34+sp0aDzA127F4u/BOer3h+zU2071x0kjRBXxrxPqBsKYK8p6O25MTfjuDNL42bDqBtMIR1xhjk2zrk7hFdSYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2M52LXU+Kj3GdkmqXm2xqt+0u5YgPYehFcpcpWDymzg=;
 b=MHHwVCtzG/io42VoSLslvpq9aQrmpOmLYfvPiaJ4Bjtny9CU9k38c1bX0s05/fp35V6ZTod04bALBSLPuMNAYISbn1uFGTyYPuMJegAb3eDnu8UFg2WwbkFgB5qq1zTRvt9ui96WJJ+8IwSVRMg0oC0+7RLq3sfO7Zx01dGw+oUgWMlD7vjOTUQijLXaxY5HyxH96VCKfkNSBcZrsd3VEF6i8DzyiFbNVIO7M5MOYkOrLYsywNGcMO9ZXhvVDiwXJ9hwBLLhLjUjGtmgSp3+FTRzFj78RQ4uXvDC2KuDIpdh7pODIJFtZwiCYbPvBR2/YxgEDAYVZrMjjCPYs9wPYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7909.namprd11.prod.outlook.com (2603:10b6:208:407::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Fri, 7 Jun
 2024 10:03:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Fri, 7 Jun 2024
 10:03:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Topic: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Index: AQHatzLdk0u8esr/NUmTtgOTZLsbvrG6zzMAgAARSwCAATPkgIAAASGA
Date: Fri, 7 Jun 2024 10:03:35 +0000
Message-ID: <60a3055fc15403eb21cf003ff67c64a0bdebf7f6.camel@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-11-jouni.hogander@intel.com>
 <PH7PR11MB598181E00446463602261261F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <9ee0016b8bc858f011066d22703bcbc06d054515.camel@intel.com>
 <PH7PR11MB5981E238DC3174FDA40FE79AF9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981E238DC3174FDA40FE79AF9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7909:EE_
x-ms-office365-filtering-correlation-id: 59439721-f6c2-418a-7299-08dc86d91837
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?d2NuelM2cFEyVlBjMXlIMWptY01samhlMDljM25uMndRVElObzNyQTFaMGZY?=
 =?utf-8?B?ZkdzemtkWGFUd2l0VFZFVzFob2hiVU9PRDJQbktxZGhiTngyTmhZNHoxaFpl?=
 =?utf-8?B?NTBHRG54SHJZKzRwVFJaV2o5U2xIRlFUUEFWQm5BS2dMQlNGc090NFIybmZD?=
 =?utf-8?B?TmFFN2FoQjBwWDNIQ0lVV0E1S0Z0Q3lER1hkSE1GMDd6VTdCdjRqRWtCS1FX?=
 =?utf-8?B?TStxWVZlcU84aU9vWTVFbXZlUDVkTUxvclowSm9nLy9zY3FHV1ExZWFCaDdv?=
 =?utf-8?B?TWpYQkpCdi9ITFMxbDd6SlB1N2g2Q01sZzRaRnpkb2RKZmZXYTVZTDZsZTZz?=
 =?utf-8?B?b0RaWldORDZtQjdMOHpiR0JIVGlackpOUlM3WWF1ZExIaUVncVQ2bjBxYkt2?=
 =?utf-8?B?Ni9zRDFQTFpFUmdkSElHdDQ4VVBmSUJxTGY1cnNaRjl5WThPQWNDYVZSaFFB?=
 =?utf-8?B?YTZySjUwUWdJdGZ0ZnB1VHpzRVN4STd2UVQyYmVRU2xWTU56QjNKcUlNL3B0?=
 =?utf-8?B?SEh2RkNyTE9GT3pCdXJtMDErRW8zNk92c1MvUkk1TUxUMDMzRENIandWUXk5?=
 =?utf-8?B?a1hPdWpqMUVtTTNxeWl0dUNKT29ZR3QwMDFHRTljV2tnem9SbEZrYkszYmVp?=
 =?utf-8?B?VWhCMVoxUkJaTlo1QnFiQlpuc2J1YWJScTFoVy9lbm0xbXZDR3l1ZEFIMUky?=
 =?utf-8?B?YnRSZ3RXckhqRzl4L2pEUUpsS25wQkRsMzVIcWRKTGt4eVIwM28vQXg0cisx?=
 =?utf-8?B?QWtTa1VFMkhHc3BjTEp0SVZMWUY1ZkhHQmxoZk9NZ3NRM3JXWWRmYk1YdXJs?=
 =?utf-8?B?T3BqUnJJQXYxZVZUOWcxbFBpbjVyZXdPRDhNTllPbVpzVlZqbHNkNFcra3hn?=
 =?utf-8?B?ZkJWcW15Z21kTjYvNTAwWmhxRXdQcFBpYXFzeVlQVkNqd3NqanM4Z1VOamlM?=
 =?utf-8?B?Nm5NUHgyS0FtZTRkV3BWMjdmYjdPL2t0dUJIT2pZRStOSGZDUHlYdjBVWHc4?=
 =?utf-8?B?a1pFU1ppYlo5QlJyYTdNdUxheGZxT2RHL2l6amNMNUpBVCtkSkFMOWI2c1Nt?=
 =?utf-8?B?TUY5L1hQbnN6bEJQOHB0a3NBejFXODh5S1c1TmFCQk15RTZqMXBkNzlhRzZE?=
 =?utf-8?B?ZTluWTdFZmsrZ0paRm44K250aUoyZ3djblBzY29kei9UcTJjei90YlVvNXRI?=
 =?utf-8?B?YU4vU3ZubmVpZGNadVlUMzlWVGQ0dkJtSkNjcmxLbGhDVHB4d2dIT3l5RU9q?=
 =?utf-8?B?aW1FT3czcEl6d3VOZE4rMUtWZmhndU9YemdtaVBrYm4zSXJia0hNRUdSN1pW?=
 =?utf-8?B?ZjdQWUVLRFc2TXhNYVBEVDhjTld2Yks4WUVaczhSdk9HZVpzbzluMVVreENU?=
 =?utf-8?B?OWF3WWJ5SmJicEljYk1tUS9ZaFF2aDljSWlhOW1pd3Rxajd5MDJzVjNnNGYr?=
 =?utf-8?B?MXNFek8vcFN3aEFGTWN0bHhkTnlOM1ZORDR5bTVROVp5QlZWZk05OUkwVzN4?=
 =?utf-8?B?R1VvTjV4a243a013QmVEL2sxTHp2ckJjZU9RRTNNK0hSYytvSllPbUxnNHV4?=
 =?utf-8?B?SWF5Zmk0MDN6WUNtNW02UDZJbndxdU1qRVUwdFc0MlpCZkhra2lDOGg2K0xl?=
 =?utf-8?B?OU92OUE4N29BdVRoRm9DSTVwTDN0NUNXOHJPLy9HMFBrM3hXVXJGeXpWZG81?=
 =?utf-8?B?eGlTS1VqTGovV0VlSFJZTVhDTWZiempkOHZiYURDL3c1SEJaTkEyNUV3TFhY?=
 =?utf-8?B?T0FWeWhPR1pvUGV1OEpMWis0Q0IxZkRUcmg5UytaQTMvTHVybmoyZU5QdFdk?=
 =?utf-8?Q?Bl2B6LN/EgqETdCANxDBjM06qEPj9UrlUMT/0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnJ3VG1CL0hrbUJDWno1RjRvQlZneXVRWUQwQkkyMmswaGQvNjM3YndMQVB2?=
 =?utf-8?B?dWN0T2l4eStnRjI1c2pFbjNjWjM1eXhET1pKUElWdmNjTG1WSTMxd25xc3hw?=
 =?utf-8?B?Y2RBWkIwQS9mTHNWMFBXQUpaYUFrTU1YaXJTK2t3MXZhZkF2bDZINmd1VnJw?=
 =?utf-8?B?K0lvclg5Rk1vcUw4Y1JmUHdMeUI5Zm9uTjNNTURRSTd6NlEvNmc1Uk5vVGhZ?=
 =?utf-8?B?L1Z5VUpwNFUvRHFCVFArSjJvRWFUVkJiSG5RNHhwUEhEV08wVXNhUVJCcllK?=
 =?utf-8?B?TnJ0ajYxSDQ3QUNXZkJ1Z3RhTEhBcitvYmNud05RbzJCZWcwdzBaVENMaDFt?=
 =?utf-8?B?bFVFR2JsTjFmVGp0c0MxdFhERGdWOEpOWGgzZzBiemFaM3BiREJmSGFHWjVr?=
 =?utf-8?B?WUNJY1lQWDQzNlE4Smh5SEliY2ZITURUQ0xYTEVkZVRMa3hVWnR1dVk5elFU?=
 =?utf-8?B?dUdFcnFGd0ZXQUlpc1ZBUTVEVkpzd1k4V0kzQzdIL0hKYlVJVXJEMmNIR2tT?=
 =?utf-8?B?T3RDSjBlWlJ1ZGw4YnBNUUFKcFA2TFRiL09nRy9Pb0cyTGM3TXJ3VUFITkJv?=
 =?utf-8?B?UmE1TUVwbFVCbXh1RmpRRnpMdWpDeTlSUmpKV0pMenFuZEd6YjJGbm94VFEv?=
 =?utf-8?B?WmpTeUF1dWViWFFVN255MHZuTTF3TDZCWlBtT1MyUXlqV0VrZ2JROGt0aUhI?=
 =?utf-8?B?dEQ3T1VTYzBaSnhrVStrbmpvd203UFpIb216SnZTVmJCeEdUR2I5a1g1R3Fi?=
 =?utf-8?B?L0h0Vm1HQndGQVh4SFhyMkVWV0tWTnRGNUVsdWpRYU5LbjBYTTRMTDhDRnE5?=
 =?utf-8?B?UkhOWTZtTm1OSWJZVXdNckdnQXo5TGhrY1I5ZGVTcUIybWoxWkRFaXlzaXJa?=
 =?utf-8?B?NDQ4YmtoMHpiYWRPUWs0SFlpWVRyNHptKzRpaHI3YlRxOGp2Tlo2VFFxNCtn?=
 =?utf-8?B?M3M0b1dpdGk2ODBsMGRoclBtbzhWek5ITmNpV2w1OGIyK3pqV0QyTVcvWjVn?=
 =?utf-8?B?UFJlQnRwYmJzZWRGS3EwdlcwYmowbFo2VnZHaVpOU3p6MFVDSWFzT1kxc200?=
 =?utf-8?B?ekNHdWJ1Njh4RUdvcXl1NVloTzV6cng3VGJpWktYdnpNSDYrR2h1YWR0M1Fn?=
 =?utf-8?B?NW15elFhSmJrNUV4ZW9CdGJ6dU1nWWRlUFZqcFBmQkRJS04vUU1PcGIxOFFP?=
 =?utf-8?B?K3IwTVM1SFhtL2FwakpZdFUveFBXbnlVVFpMbjBYMVNyeFZuUm5RTFRsd0N6?=
 =?utf-8?B?YkhmL2N1OU84UHhUSVJKYXhJR0NESzlsVVdaa25SKzNRMGM0VUZrcTh4OUVR?=
 =?utf-8?B?TVhNVEhGYVI2eEFOV1FadGc4YjJGaUFMcHp4TVE0S21sZm1RK1FxMG5XWnlk?=
 =?utf-8?B?VlpLWUovdjIxczJ0bjhQMGlMbmJLbGF4eWM1RWpCV09uSFU5Q1d0SDdVdXBw?=
 =?utf-8?B?UTQxZ1JVVjJqblBka0h5Z3hWS2hOT0tkcFVnNlc1c3BzQ281TXBPYkg1Z3Bx?=
 =?utf-8?B?U2dkalpqSGNTbmJOTFBDVHRyTjNRdzVJMWJ3anB2Q2lHQ3V6SXFyM1Erd0Fz?=
 =?utf-8?B?cnVqT2hmNlJUNHVXTHF6WTNOaDhCWkR4bmJOYkpnOFY2VXlLZnZidWtlWVJs?=
 =?utf-8?B?U2E5VkY0ZnR2aXIvRmJhM295NFh2cFFvQnFqbXdsbnBNMkhyYUxGSmd2ZWRO?=
 =?utf-8?B?aHUvYjM5eDAyYnRmd2FWOC84T1ZsaDVnRGg4RWtVSkkvaERKMnhLTVMxRXhi?=
 =?utf-8?B?dklISW8rcm94YXhsWXhZYjllUzRaQjVZbnhCbmRqZ21Zb29YeEdZSVNmRU5v?=
 =?utf-8?B?bmFGcVl6cFZlaWZXS1JlVjdLczRiQTVQUVErNWtLZ3hYM3ZrTHdYeC9XUGFM?=
 =?utf-8?B?SERGbnVqTFltbjJYaDZhWlNTTU9QdStUOE9CVm9YeDNSNm90QTlLVzN4UXdB?=
 =?utf-8?B?R1p5M3QwakV0Z3Jva3dzUGF6ZmtubUhBTWFBZ3o4N3craHBWbmRIUEpIRnJN?=
 =?utf-8?B?Q3Y2QURZdVREN0xKQlBPMUN0UWltaElSbThoSENORW5pK1lkZnZTS2tWWk5r?=
 =?utf-8?B?TU5Nd2FXWm5vTzNxYVhKK0tmc2h5ekVXVTdlc3pQRERwYWxHejN6WC9FWWxQ?=
 =?utf-8?B?R3M4dVNNNHptQXQ3Q1djS1FYT3BUK0x4QUtBWm1oY00zcXZvMzRPcGtpRTlG?=
 =?utf-8?B?UlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2C95E5A12D41BF419E58C78A6A02B24F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59439721-f6c2-418a-7299-08dc86d91837
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 10:03:35.1513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9z5bnzgY/18r02OAb2BHkujul4wJXcHt74gsjOwyiOi303igFxqoQZWLRDI4jAJ3igw4WWgPoPOpjCv/5M/BjTNfeesjpbL3EklRXs0+JGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7909
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

T24gRnJpLCAyMDI0LTA2LTA3IGF0IDA5OjU5ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVGh1cnNkYXks
IEp1bmUgNiwgMjAyNCA5OjA4IFBNDQo+ID4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1h
bm5hQGludGVsLmNvbT47IGludGVsLQ0KPiA+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
PiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDog
UmU6IFtQQVRDSCB2NiAxMC8yNl0gZHJtL2k5MTUvcHNyOiBQcmludCBQYW5lbCBSZXBsYXkNCj4g
PiBzdGF0dXMgaW5zdGVhZA0KPiA+IG9mIGZyYW1lIGxvY2sgc3RhdHVzDQo+ID4gDQo+ID4gT24g
VGh1LCAyMDI0LTA2LTA2IGF0IDE0OjM1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToNCj4g
PiA+IA0KPiA+ID4gDQo+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+
IEZyb206IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4g
PiBTZW50OiBXZWRuZXNkYXksIEp1bmUgNSwgMjAyNCAzOjU2IFBNDQo+ID4gPiA+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4gPiA+ID4gPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0KPiA+ID4gPiA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiA+ID4gPiBTdWJqZWN0OiBbUEFUQ0ggdjYgMTAvMjZdIGRybS9pOTE1L3Bz
cjogUHJpbnQgUGFuZWwgUmVwbGF5DQo+ID4gPiA+IHN0YXR1cw0KPiA+ID4gPiBpbnN0ZWFkIG9m
IGZyYW1lIGxvY2sgc3RhdHVzDQo+ID4gPiA+IA0KPiA+ID4gPiBDdXJyZW50bHkgUGFuZWwgUmVw
bGF5IHN0YXR1cyBwcmludG91dCBpcyBwcmludGluZyBmcmFtZSBsb2NrDQo+ID4gPiA+IHN0YXR1
cy4gSXQgc2hvdWxkIHByaW50IFBhbmVsIFJlcGxheSBzdGF0dXMgaW5zdGVhZC4gUGFuZWwNCj4g
PiA+ID4gUmVwbGF5DQo+ID4gPiA+IHN0YXR1cyByZWdpc3RlciBmaWVsZCBmb2xsb3dzIFBTUiBz
dGF0dXMgcmVnaXN0ZXIgZmllbGQuIFVzZQ0KPiA+ID4gPiBleGlzdGluZyBQU1IgY29kZSBmb3Ig
dGhhdC4NCj4gPiA+ID4gDQo+ID4gPiA+IEZpeGVzOiBlZjc1YzI1ZThmZWQgKCJkcm0vaTkxNS9w
YW5lbHJlcGxheTogRGVidWdmcyBzdXBwb3J0IGZvcg0KPiA+ID4gPiBwYW5lbA0KPiA+ID4gPiBy
ZXBsYXkiKQ0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIyICsrKysrLS0tLS0tLS0tLS0NCj4gPiA+ID4g
LS0tLQ0KPiA+ID4gPiAtLQ0KPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDE3IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGluZGV4IDdiZGFlMGQwZWE0
NS4uMzUzMGU1ZjQ0MDk2IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gQEAgLTM1NzksMTYgKzM1NzksOSBAQCBzdGF0
aWMgaW50DQo+ID4gPiA+IGk5MTVfcHNyX3Npbmtfc3RhdHVzX3Nob3coc3RydWN0DQo+ID4gPiA+
IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCJyZXNlcnZlZCIsDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgInNpbmsgaW50ZXJuYWwgZXJyb3IiLA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgfTsN
Cj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBwYW5lbF9y
ZXBsYXlfc3RhdHVzW10gPSB7DQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAiU2luayBkZXZpY2UgZnJhbWUgaXMgbG9ja2VkIHRvIHRoZSBTb3VyY2UNCj4gPiA+ID4gZGV2
aWNlIiwNCj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJTaW5rIGRldmlj
ZSBpcyBjb2FzdGluZywgdXNpbmcgdGhlIFZUb3RhbA0KPiA+ID4gPiB0YXJnZXQiLA0KPiA+ID4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIlNpbmsgZGV2aWNlIGlzIGdvdmVybmlu
ZyB0aGUgZnJhbWUgcmF0ZSAoZnJhbWUNCj4gPiA+ID4gcmF0ZQ0KPiA+ID4gPiB1bmxvY2sgaXMg
Z3JhbnRlZCkiLA0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIlNpbmsg
ZGV2aWNlIGluIHRoZSBwcm9jZXNzIG9mIHJlLWxvY2tpbmcgd2l0aA0KPiA+ID4gPiB0aGUNCj4g
PiA+ID4gU291cmNlIGRldmljZSIsDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoH07DQo+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBjaGFyICpzdHI7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKg
wqBpbnQgcmV0Ow0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdTggc3RhdHVzLCBlcnJvcl9zdGF0
dXM7DQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoHUzMiBpZHg7DQo+ID4gPiA+IA0KPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgaWYgKCEoQ0FOX1BTUihpbnRlbF9kcCkgfHwgQ0FOX1BBTkVMX1JFUExB
WShpbnRlbF9kcCkpKQ0KPiA+ID4gPiB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgc2VxX3B1dHMobSwgIlBTUi9QYW5lbC1SZXBsYXkgVW5zdXBwb3J0ZWRcbiIpOw0K
PiA+ID4gPiBAQA0KPiA+ID4gPiAtMzYwMiwxNiArMzU5NSwxMSBAQCBzdGF0aWMgaW50DQo+ID4g
PiA+IGk5MTVfcHNyX3Npbmtfc3RhdHVzX3Nob3coc3RydWN0DQo+ID4gPiA+IHNlcV9maWxlICpt
LCB2b2lkICpkYXRhKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCkNCj4gPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+ID4gPiANCj4g
PiA+ID4gLcKgwqDCoMKgwqDCoMKgc3RyID0gInVua25vd24iOw0KPiA+ID4gPiAtwqDCoMKgwqDC
oMKgwqBpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkgew0KPiA+ID4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWR4ID0gKHN0YXR1cyAmIERQX1NJTktfRlJB
TUVfTE9DS0VEX01BU0spID4+DQo+ID4gPiA+IERQX1NJTktfRlJBTUVfTE9DS0VEX1NISUZUOw0K
PiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGlkeCA8IEFSUkFZX1NJ
WkUocGFuZWxfcmVwbGF5X3N0YXR1cykpDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gcGFuZWxfcmVwbGF5X3N0YXR1c1tpZHhdOw0K
PiA+ID4gPiAtwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKGludGVsX2RwLT5wc3IuZW5hYmxlZCkg
ew0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWR4ID0gc3RhdHVzICYg
RFBfUFNSX1NJTktfU1RBVEVfTUFTSzsNCj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGlmIChpZHggPCBBUlJBWV9TSVpFKHNpbmtfc3RhdHVzKSkNCj4gPiA+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHIgPSBzaW5rX3N0YXR1
c1tpZHhdOw0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqB9DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oHN0YXR1cyAmPSBEUF9QU1JfU0lOS19TVEFURV9NQVNLOw0KPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqBpZiAoc3RhdHVzIDwgQVJSQVlfU0laRShzaW5rX3N0YXR1cykpDQo+ID4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHIgPSBzaW5rX3N0YXR1c1tzdGF0dXNdOw0KPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqBlbHNlDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBzdHIgPSAidW5rbm93biI7DQo+ID4gPiANCj4gPiA+IHBzcl9nZXRfc3RhdHVzX2FuZF9l
cnJvcl9zdGF0dXMoKSBpcyByZXR1cm5pbmcgZnJhbWUtbG9ja2VkLQ0KPiA+ID4gc3RhdHVzIGZv
cg0KPiA+ID4gcGFuZWwgcmVwbGF5LCBJdHMgZGlmZmVyZW50IGRwY2QNCj4gPiA+IERQX1NJTktf
REVWSUNFX1BSX0FORF9GUkFNRV9MT0NLX1NUQVRVUywgbm90IHNhbWUgbGlrZSBwc3IuDQo+ID4g
DQo+ID4gUGFuZWwgUmVwbGF5IFNUQVRVUyB+PSBQU1IgU1RBVFVTIGlmIHlvdSBsb29rIGF0IGRl
c2NyaXB0aW9uIG9mIHRoZQ0KPiA+IHJlZ2lzdGVycy4gRnJhbWUgbG9jayBzdGF0dXMgaXMgY29t
cGxldGVseSBkaWZmZXJlbnQgdGhpbmcuIEkgZG9uJ3QNCj4gPiB1bmRlcnN0YW5kDQo+ID4gd2h5
IHBzciBzaW5rIHN0YXR1cyBkZWJ1Z2ZzIGludGVyZmFjZSBzaG91bGQgcHJpbnQgZnJhbWUgbG9j
aw0KPiA+IHN0YXR1cyBmb3IgUGFuZWwNCj4gPiBSZXBsYXk/DQo+IA0KPiBJZiB3ZSBkbyBub3Qg
d2FudCB0byBwcmludCBEUF9TSU5LX0RFVklDRV9QUl9BTkRfRlJBTUVfTE9DS19TVEFUVVMNCj4g
dGhlIHBzcl9nZXRfc3RhdHVzX2FuZF9lcnJvcl9zdGF0dXMoKSBuZWVkIHRvIGJlIG1vZGlmaWVk
LiBEbyB5b3UNCj4gYWdyZWU/DQoNClllcywgYW5kIHRoaXMgd2hhdCBJJ20gZG9pbmcgaW4gdGhp
cyBwYXRjaD8gT3IgY2FuIHlvdSBlbGFib3JhdGUgYSBiaXQNCndoYXQgZG8geW91IG1lYW4/DQoN
CkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4gDQo+IFJlZ2FyZHMsDQo+IEFuaW1lc2ggDQo+ID4g
DQo+ID4gQlIsDQo+ID4gDQo+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gDQo+ID4gPiANCj4gPiA+
IFJlZ2FyZHMsDQo+ID4gPiBBbmltZXNoDQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJTaW5rICVzIHN0YXR1czogMHgleCBbJXNdXG4iLA0K
PiA+ID4gPiBwc3JfbW9kZV9zdHIoaW50ZWxfZHApLCBzdGF0dXMsIHN0cik7DQo+ID4gPiA+IA0K
PiA+ID4gPiAtLQ0KPiA+ID4gPiAyLjM0LjENCj4gPiA+IA0KPiANCg0K

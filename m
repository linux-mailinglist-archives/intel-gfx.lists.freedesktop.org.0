Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE6C9BACD8
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 07:50:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23CB510E387;
	Mon,  4 Nov 2024 06:50:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SXwc/etu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3EEC10E386;
 Mon,  4 Nov 2024 06:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730703025; x=1762239025;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=At5IPr9vf34gCwYRY+3cimFU8vW2dRwm0ytJI8msyp8=;
 b=SXwc/etuNppnAEcVhEmNV4Z81QSXAVPcDAec9iT1J+KjkWX05GTOycGZ
 zlS90x/8bvKDLlKAVE5yNLrvNjAgAkLnqKWhMXog7lRehp8iG7VWdZgRO
 hstSPoQc7Av3qYi3iN4faM0u3GzEm07xFiX09E5omTe7oWmWYTwEl+r6f
 7YSl4Qud0Yq3tQbQWD5u/7ub0RLRQs++hjMlPYJ5X6e65ZqiZjxqg47BW
 QEKkvVd3GdpM0lBSjT2+ob2LXg94bqHrxrI9ToW/2lXckXDhQ/rWpQoZ6
 4azuED4lcJUT/wGTHfSQ6KPRMh8yP0UB821hG+KBQLVdcdoAFBRJuWpww Q==;
X-CSE-ConnectionGUID: vC1kBM9lTqaueUKK0wRaWw==
X-CSE-MsgGUID: fXhYsACeRRKzVgJku5OWNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="34175670"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="34175670"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2024 22:50:25 -0800
X-CSE-ConnectionGUID: KYUNFKcPS8q07Ix3Mio+CQ==
X-CSE-MsgGUID: NKWOT/KQTuyEbP17v33mgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="88146216"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2024 22:50:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 3 Nov 2024 22:50:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 3 Nov 2024 22:50:23 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 3 Nov 2024 22:50:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NVpAYQD11R9UnZpbCEhT63UTHHPDAJB5uiDQsG/BuZZ4uI/er8JRmgWRmclZpm7w8SVIy2MDY7x1YaG/EYQPEvWSsF6eWcTQajz8v8jkj9P6/1CSCSnJc0qPJCIVyEK5Lp5Zgvqjscyj0UycDUuihgv1pUI1UIqHVxWqQJK0p4HeEjcJjeaKa91k40BNRqCr+poTsQ98FfGKjCmUUMH2UmDcrnbley6CDM2+NSanpopwvqfRGz5qYmd+h8+O76MHPTNNKJR9iYtYz0UJWWWt3kR+Rk8zGzmLT7KGrj3QvH2uhPqW+2dOAZnedmdVhU6dujLgwea5MVe/WNFKWymuqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=At5IPr9vf34gCwYRY+3cimFU8vW2dRwm0ytJI8msyp8=;
 b=LV0fG55Y8t/HJPhV0JEzQyybwMSdTureNk1GuAtBhJnHJuSAgEIxFK6JFCCp9IJ3TLYwU4gEQfMR3lbWoh4KuPaiJxudoUDpvdp9BP6I2jnoioDs/RBNilId3DCqEivrAAjBexbpxgYGQItOCiG0S8loWSA52QRhSPu10z/FPY5UnreyC0ZHm0fOYylPUo060U2rlZEkuDlf4MTbgQFy1gN3mDNom1YGrEWMHvpTHApc9beBfIRv5jybbV9o7W+mrejD9+w3nmOStufJIEqzFWbpYnpEMqNulDhWj2z92CDaB9k29ugTcpERuKMOhOQ2jJ3VeD0lt4NdK1e64QUbkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by LV3PR11MB8695.namprd11.prod.outlook.com (2603:10b6:408:211::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 06:50:20 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714%7]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 06:50:20 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBhZGQg?=
 =?utf-8?Q?dedicated_lock_for_each_sideband_(rev3)?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IGFkZCBkZWRp?=
 =?utf-8?Q?cated_lock_for_each_sideband_(rev3)?=
Thread-Index: AQHbKmIeIF7DnKpzSkyy54lIzQp0nrKfA0SAgAA/AgCAB3RkIA==
Date: Mon, 4 Nov 2024 06:50:20 +0000
Message-ID: <PH8PR11MB6753CC1C6F9637212B8DD149F2512@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <cover.1730193891.git.jani.nikula@intel.com>
 <173024786373.1362048.16983004525018468080@2413ebb6fbb6>
 <875xpanebc.fsf@intel.com> <87h68tlpb1.fsf@intel.com>
In-Reply-To: <87h68tlpb1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|LV3PR11MB8695:EE_
x-ms-office365-filtering-correlation-id: 734a9caf-4412-42f4-7759-08dcfc9cf33b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SDk2RzVUbUZJRjl5M0RuSWpsQk1QMWwzVmtNTDI3Y1RxYXBwQXJiN2hScmpW?=
 =?utf-8?B?Sm5rdFJPTUZCNnRPb1EydDg3dEdob0dTMzVMY3RncW1XUkgxeEc1Y1FCdjM1?=
 =?utf-8?B?OXRRNlZUWmFjbUowbXRjbDJ6Q1BqNXdQeEwwblRCQXRxSWRVOGtkWFFkcGk4?=
 =?utf-8?B?eU9pV281MGQ3bkxabHY1cW1vcEpSUjV0anJ2aEpWcXhOc2VuRDg0N3lQZVZS?=
 =?utf-8?B?SFlqeldQb3l3UzgxNWpuRnJBTmd6MW1TZTloUG5uVDF6UEJadnF6VExnb2VU?=
 =?utf-8?B?UXkxSlhaVFNtdm5VM0JoeDJucE5NVXRNb0JFUVFDVTEwN1ViZmZUNm13TU9G?=
 =?utf-8?B?NXZCL3FKTGU4QmJuRGtacjQ1RE1hV0tSVE9pT1pGbVg1YUtMR0poMStuMWk0?=
 =?utf-8?B?WXNXMmFiOXRhN3ZDZ1g3b3dueDFBcVlyMnhZUUsvMmh3dlJZVk81RXNCMGlQ?=
 =?utf-8?B?R3RsOVorOFQxMHhFdzkvR2gxdkwycmdSakhtSHRBK1BNUHlLSGJGK28veEc1?=
 =?utf-8?B?Ny9BT1pSMVBtdng5c3dXdTlWSlpJTG5jT1RiUStvQkNUdnZXT3lrcitnMkpF?=
 =?utf-8?B?WjFLQUNJS0FvNTdUeHd2NU4zU1hRZThHTlJQN0pyakFSVXlsK3UvaUJFd2FS?=
 =?utf-8?B?bEE4NVIzSlJaK0lNUTJVRUtnMXVCVGl0ektQYmZQSS93cFhaKzRRVDJyT2JX?=
 =?utf-8?B?bDE0SGZVZEY1ME5RTUZveFc2Y0grblVzeCtsRXBac1VOWmc2KzQ4R0NGTUNo?=
 =?utf-8?B?ZVJsdG5JV0d5RXJhekg5eU92TFdaTnpPOThGb05IRHZWSGhlR1owdGM3U1hP?=
 =?utf-8?B?VWo2WEZ6Ri9iaUZYM3BCd28xWEtJOWV1c1pPdE9HcjJVbEl5R0JySWJxMHk4?=
 =?utf-8?B?Z1NqY3hNbVB0c3pzWFRnZkVMSFI4WWtFWEE4aWR2Rmk4N0JrR25kR0dXYnBG?=
 =?utf-8?B?OHc0RUlBWnNvWTVTVUJRTTFyVk52ZDVEeGg3Yk9IWkkrV29mRzhBRzRKL2c1?=
 =?utf-8?B?SGFrMS9SVVBqaUlvTGtnRGp4VkZrdnVNa1VEUzJKckZiTFdpUzR2aDRTK3Vo?=
 =?utf-8?B?QkJ3eUVPV2lDeWZvdE5uRnJOVWhCL2ZzalIySGFXWFNSQlEvMFc4UGg3aUhQ?=
 =?utf-8?B?SWtlcWIyanhxTFRjWlRPbzFzTnBzT0NPRm1TdFVweGh3UmNQemhnalhydGxP?=
 =?utf-8?B?N09Odkp5czEzVHRmY0hlU1RFTGRYbDBVTHB0Zk9aeDF6Rzg3VXQ2NW5WWWlW?=
 =?utf-8?B?bTBwZExTNHZCbzZNZ3pMOWhXRG44d0E0VXBFdlMzUUExbU1wMWs1cFpPT2hi?=
 =?utf-8?B?NkFaeU9LT2VncFE0U1Z3T2o4K3NzM0xDQ3RhVTJ4Z1FJekZ1dnh2SEdXMHRT?=
 =?utf-8?B?OWgvQWhTdHpUUklkZzU3QytNdXdRamlITmZKaWs1dlZFRDBuSUEwNWQra1ZU?=
 =?utf-8?B?UWJGQzQ5OTBvL3VPNVFoMkU0Z0lYaUxVOVl5T0dmUURHOUdpak12eXo3a0Yx?=
 =?utf-8?B?NWQrdWFBK0k2d2lzT0oxRVNRbGNXZUdtOWpGWWVqcDBZVDluMXN4OTAxTFRs?=
 =?utf-8?B?dDBOc2NicWl4NmFlUk9SVU1aQUVrcVlKQVRncEJrL1NjTENjdWdXM1hRcmZY?=
 =?utf-8?B?VG13RWIzdVliUXIwcEtadFNrNExLT1dha2VaeU41R1JVaXcwQlNRRFhBOERk?=
 =?utf-8?B?RlVvMktlNVdxUklOWTl4ZlVJNTRacWNtS0xCY0RLb1NaRklwdm85QUExcnB6?=
 =?utf-8?Q?3gb2tykwP0UiYsla580EFLSnXkHoYoBn7hjgQCx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SUZkb0RRdXJEYzhJeWRsOFBWNHJyeFZWeVMvaXdIdjhmZGpOR25UR2lEMjJ5?=
 =?utf-8?B?Q1dwMmdyRml1WnhqWlZDTGhIRlAzaFhFejNBUWlGWWJNQ0hDSmIzUjlRQ2Zn?=
 =?utf-8?B?YWdqczJsdlpscUFuZTI5ZUdYMjIzYUY3UlNyaWVTVE4vbTFRYmlPK0ZkQW56?=
 =?utf-8?B?ZnFRbytWZUtNNW9NMWJDa09VdkYzemFtVUtIdXdVUzI2Z09lbnpuS3VoQUJI?=
 =?utf-8?B?WmpnRjZVMnpBS2NJdDVXcEdLakRqUUxPUGZGcjhBdWJhNmFLMjN1RUxNRDlw?=
 =?utf-8?B?NFpRV2d2TllORTRsZ1lpeWNKN2hROHg1UGU5L09PZWJRK3pQYjE0STl4SGE5?=
 =?utf-8?B?UFVKVVRHbGRGTk0za25SaXlWQjdRaFJNWHdYN0E0MWc5aFR3VHpMd3JLbnlP?=
 =?utf-8?B?bGtKYXFmaTV4dHpvbXd5UWNoRWdxbVNSZi9rTE5GNmlxZHhYVmJIeU5IZ3Ry?=
 =?utf-8?B?V3g0b1pIdnJPN3pIakwrZFppWThOdHVsdzlKd3FCN3c4MTZKU3M0WUhaYk5G?=
 =?utf-8?B?TkFFV2d0RjNqR2VGNStpTHhvdUhoM2RkcWhKajZrRFJEQ3hTUTZVMUkxY2VY?=
 =?utf-8?B?TE53MkJ1OE53S0RDczllOGlkcGJaTG8zVXhQQkxFOU9UdnFDQjgzV0FKMTV2?=
 =?utf-8?B?NFVYTzd0YzZQSEhtZGp6ckNYQjBCVnpKRk1BZmxoaXVEbndJckJSaU1qSXlt?=
 =?utf-8?B?emJXN25qVHBJTkJQVUJFd0kxdktzckF4Wm5FSUh2eGhkUUFEYzhwT0lDbDZK?=
 =?utf-8?B?Z2I1Y3NiTmhRckd4ZHBiaW56YURYT08rOXRNUEt6a0ZNaG52Nm01Sk1TZmJl?=
 =?utf-8?B?MUNXTnh4Sm1FYUs2UHhHMEdQNlZ0L0czYXVHMHF6QkVjOGJLdjVFN3dWdHo5?=
 =?utf-8?B?MVJ4eUZOUUt1azlDZE5zM2hBSlErQ0xKTXpBbjNCa1REZVl2WnpnR2dFMm1j?=
 =?utf-8?B?TDQ2V05sYlg5UzljY3UxaVhKamYraGkvMDRhM0E0NU5WaEh2WGhWcmJad2Jt?=
 =?utf-8?B?RHQraWFGNVpHMjV6UTJ0ay8zSisyRGhVN044ZTd6Sktxb3JnQW1sTFF0NGZy?=
 =?utf-8?B?VXladDVIUXFBVVJ3TFZUMjgyTDRqeUNCRzFCUGRBb3hIL1c1cStad3VtNjlj?=
 =?utf-8?B?RnNFZjVvRGY3SnVXVjN3VEVYSjdyZHZSMXRyUEpQTSswYk5GbkJsVjl0WUxt?=
 =?utf-8?B?WEFTeDFkb3J1RDVqbW1WdTM0aWMyVzlPdTJXVTZWK0drNUNiRmlpSVA3Yk9u?=
 =?utf-8?B?VGRveWxydjNCbzhtQVdVekZaMU9hNFo4UlZIRFk0TTZwdjBUTXA4SzI1K0Nq?=
 =?utf-8?B?RUNicGdpQlFiL0ZNbGxxQTdPcXhPUVNzOU5Xcll5TVdoZm5qNEtja1dxaENS?=
 =?utf-8?B?Nzl3S3d6UzlaRlVjY3NBNTBtNTYrTnozZmhGcWJwQ2k2cXQ2bklCakcyUllT?=
 =?utf-8?B?dG5VS3hNcXJhK3Rub21nbjBvenlmcGc2VUtRZWlqdCtZbzkzTDVJWXZtbUh2?=
 =?utf-8?B?QTFLOTc3WWFDWkFkMHpWM2ZOVzdaZEY4WHk4a0phV3VjaVFvY3kzZ1VQWmFO?=
 =?utf-8?B?SFFaSWgyMWVuN0VDYnNyNGdCaGlmNi9FRkNzMUJyZ0dlajBWR1Y1RjUzdHdH?=
 =?utf-8?B?YzFFeVcwOWdmMWR6Sk9vMExrSnloZGxiekthLzF3N0s4dTBkWlN2ZnZLWWZZ?=
 =?utf-8?B?L2xRM3NHMXdwM1BGMFdPR1NVK0IzclZBV2dGSForMnZQcDJza3p5Y3hYa2xv?=
 =?utf-8?B?SHdFOExVQ2FNeUVRQXNzT0pYWkFSM1daM0MzOEpCUSs0QWdpQnZpNGdGYlkz?=
 =?utf-8?B?VUo2Vk5BZ1lPQXNpSGxjZWRrTTMreHRQWFdSVTNzWkIzL0xUa3c4VjJWdEM0?=
 =?utf-8?B?YjRpVlhMVFVGOFAyOGxYTEdvR0c4SU5kaGQzSzd5UlFpSkpqWHAyNjZSRjdP?=
 =?utf-8?B?a2tHQndRK0ltUzc3cmhjOHYyejdrYjIxLzI0eVcvNGl6dGNyQlpWaFhSUHUw?=
 =?utf-8?B?RjdaZUVidnUrcjNpSEVIbDFrOGxMazFHSzNNblNqZkZ6c1lKd0FST2wyRzBD?=
 =?utf-8?B?N1d3eWlxczkyZFM0ZFI5UEUzMU5JRWhFK2xXa1ZNeW1xZXJkdHI4cnRLR09p?=
 =?utf-8?B?ajVMYTZFQjBsQ0Y2dG5OTHdKaDZKV0c0ekV0Q3FiZ3RJTWsrY3dpcTB4ZTNB?=
 =?utf-8?B?N2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 734a9caf-4412-42f4-7759-08dcfc9cf33b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 06:50:20.5344 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u3h4MadfPVM1cK9rt7c1UU/CaZCKnp1kOcK+pEl/6bQFAvNfDfF4CLlfi9tHktWbBJnt/fC7xLHMq3g2kfSZWwqCnR+Ud57UPK+kbzUIOAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8695
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

SGkgSmFuaSwNCg0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzk0
MzcvI3JldjMgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KVGVqYXNyZWUNCg0KDQotLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0Bs
aXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW5pIE5pa3VsYQ0KU2VudDogMzAg
T2N0b2JlciAyMDI0IDE4OjI5DQpUbzogSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTog4pyX
IEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IGFkZCBkZWRpY2F0ZWQgbG9jayBmb3Ig
ZWFjaCBzaWRlYmFuZCAocmV2MykNCg0KT24gV2VkLCAzMCBPY3QgMjAyNCwgSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4gd3JvdGU6DQo+IE9uIFdlZCwgMzAgT2N0IDIwMjQsIFBh
dGNod29yayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVza3RvcC5vcmc+IHdyb3RlOg0KPj4gPT0g
U2VyaWVzIERldGFpbHMgPT0NCj4+DQo+PiBTZXJpZXM6IGRybS9pOTE1OiBhZGQgZGVkaWNhdGVk
IGxvY2sgZm9yIGVhY2ggc2lkZWJhbmQgKHJldjMpDQo+PiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTM5NDM3Lw0KPj4gU3RhdGUgOiBmYWlsdXJlDQo+
Pg0KPj4gPT0gU3VtbWFyeSA9PQ0KPj4NCj4+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lf
RFJNXzE1NjA3IC0+IFBhdGNod29ya18xMzk0Mzd2MyANCj4+ID09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4+DQo+PiBTdW1tYXJ5DQo+PiAtLS0t
LS0tDQo+Pg0KPj4gICAqKkZBSUxVUkUqKg0KPj4NCj4+ICAgU2VyaW91cyB1bmtub3duIGNoYW5n
ZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEzOTQzN3YzIGFic29sdXRlbHkgbmVlZCB0byBiZQ0K
Pj4gICB2ZXJpZmllZCBtYW51YWxseS4NCj4+ICAgDQo+PiAgIElmIHlvdSB0aGluayB0aGUgcmVw
b3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KPj4gICBp
bnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzk0Mzd2MywgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0
ZWFtIChJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbQ0K
Pj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNl
IGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4+DQo+PiAgIEV4dGVybmFsIFVSTDogDQo+PiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzk0Mzd2My9p
bmRleC5odG0NCj4+IGwNCj4+DQo+PiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0NyAtPiA0NikNCj4+
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPj4NCj4+ICAgTWlzc2luZyAgICAoMSk6
IGZpLXNuYi0yNTIwbSANCj4+DQo+PiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+PiAtLS0tLS0tLS0t
LS0tLS0tLS0tDQo+Pg0KPj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5
IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzk0Mzd2MzoNCj4+DQo+PiAjIyMg
SUdUIGNoYW5nZXMgIyMjDQo+Pg0KPj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+
Pg0KPj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6DQo+PiAgICAgLSBiYXQtanNsLTE6ICAg
ICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1bMl0gKzEgb3RoZXIgdGVzdCBkbWVzZy13
YXJuDQo+PiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzE1NjA3L2JhdC1qc2wtMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4+ICAg
IFsyXTogDQo+PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzk0Mzd2My9iYXQtanNsLTENCj4+IC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwN
Cj4NCj4gVW5yZWxhdGVkLg0KDQpBbmQgYnkgdGhhdCBJIG1lYW4sIHBsZWFzZSByZS1yZXBvcnQu
DQoNCj4NCj4+DQo+PiAgIA0KPj4gS25vd24gaXNzdWVzDQo+PiAtLS0tLS0tLS0tLS0NCj4+DQo+
PiAgIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzk0Mzd2MyB0aGF0
IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6DQo+Pg0KPj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPj4N
Cj4+ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIw0KPj4NCj4+ICAgKiBpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlOg0KPj4gICAgIC0gYmF0LW10bHAtODogICAgICAgICBbQUJPUlRdWzNdIChbaTkxNSMx
MjEzM10gLyBbaTkxNSMxMjIxNl0pIC0+IFtQQVNTXVs0XQ0KPj4gICAgWzNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTYwNy9iYXQtbXRscC04L2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPj4gICAgWzRdOiANCj4+IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzOTQzN3YzL2JhdC1tdGxwLQ0K
Pj4gOC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4+DQo+PiAgICogaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4+ICAgICAtIGJhdC1tdGxwLTg6ICAgICAgICAgW0FC
T1JUXVs1XSAoW2k5MTUjMTIyMTZdKSAtPiBbUEFTU11bNl0NCj4+ICAgIFs1XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU2MDcvYmF0LW10bHAtOC9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4+ICAgIFs2XTogDQo+PiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzk0Mzd2
My9iYXQtbXRscC0NCj4+IDgvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1s
DQo+Pg0KPj4gICAqIGlndEBrbXNfY2hhbWVsaXVtX2ZyYW1lc0BkcC1jcmMtZmFzdDoNCj4+ICAg
ICAtIGJhdC1kZzItMTM6ICAgICAgICAgW0RNRVNHLVdBUk5dWzddIChbaTkxNSMxMjI1M10pIC0+
IFtQQVNTXVs4XQ0KPj4gICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV8xNTYwNy9iYXQtZGcyLTEzL2lndEBrbXNfY2hhbWVsaXVtX2ZyYW1lc0Bk
cC1jcmMtZmFzdC5odG1sDQo+PiAgICBbOF06IA0KPj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM5NDM3djMvYmF0LWRnMi0xDQo+PiAzL2lndEBr
bXNfY2hhbWVsaXVtX2ZyYW1lc0BkcC1jcmMtZmFzdC5odG1sDQo+Pg0KPj4gICANCj4+ICAgW2k5
MTUjMTIxMzNdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVs
Ly0vaXNzdWVzLzEyMTMzDQo+PiAgIFtpOTE1IzEyMjE2XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjIxNg0KPj4gICBbaTkxNSMxMjI1
M106IA0KPj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8t
L2lzc3Vlcy8xMjI1Mw0KPj4NCj4+DQo+PiBCdWlsZCBjaGFuZ2VzDQo+PiAtLS0tLS0tLS0tLS0t
DQo+Pg0KPj4gICAqIExpbnV4OiBDSV9EUk1fMTU2MDcgLT4gUGF0Y2h3b3JrXzEzOTQzN3YzDQo+
Pg0KPj4gICBDSS0yMDE5MDUyOTogMjAxOTA1MjkNCj4+ICAgQ0lfRFJNXzE1NjA3OiBmYjI2OTE3
MDdlMmQ1YThjNzA0YWU1ZTQ4YmM1YTMxNGEzMDhiMGUwIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+PiAgIElHVF84MDg3OiA3YWJkOWM0OWE0OWE5ZmYxZjMz
MDBkN2M1MWE5MmE1YWY4YTc4OWYxIEAgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPj4gICBQYXRjaHdvcmtfMTM5NDM3djM6IGZiMjY5MTcwN2Uy
ZDVhOGM3MDRhZTVlNDhiYzVhMzE0YTMwOGIwZTAgQCANCj4+IGdpdDovL2Fub25naXQuZnJlZWRl
c2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPj4NCj4+ID09IExvZ3MgPT0NCj4+DQo+PiBGb3IgbW9y
ZSBkZXRhaWxzIHNlZTogDQo+PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzk0Mzd2My9pbmRleC5odG0NCj4+IGwNCg0KLS0NCkphbmkgTmlrdWxh
LCBJbnRlbA0K

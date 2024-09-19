Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1138E97C427
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 08:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A82C10E116;
	Thu, 19 Sep 2024 06:09:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SCcGdItz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F7810E116
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 06:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726726182; x=1758262182;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=O+Ebtc5APg2cO93KeenKFM4bZq805+DyUlc62zRZIl4=;
 b=SCcGdItzFS+SFfDoqfVM/wWhX4bqvooK/3Qnp/2+4KRsmqtjnpvtRP52
 8UtdRtyVAeMi+dEfLVaOGEoidwdXSrpOwobPAtPjgwv+qXLoscJIm7Mr6
 WtFHS+hDW0PvYRaN6PYjH1oEpjzGzrCzm9WgCHWX69KXJ8CD5w31Ayp29
 hGhrdG0tkvrga3giK0WTC1fte+mrLu4FyHRs4fe6BkQ3WzrMtsHyFau84
 TwF66TGOHTo6DsUw2sAo+CjMN0aGSH7V8OdKDRHmwAZY+UmRr4yF1rr18
 KlRZYKpioYoM0ECXe/ZuybUseCHDvHaVJdrrQWHAmg4pyxdEXD4yLJs4i w==;
X-CSE-ConnectionGUID: IWe/rq0dT0qtEdQ5xuq0CQ==
X-CSE-MsgGUID: 0B4wbSD5QQWfhLCnNPsgDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="48197892"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="48197892"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 23:09:41 -0700
X-CSE-ConnectionGUID: +pHwz4GaTKmFgifi6aMNpw==
X-CSE-MsgGUID: bqys+HqVRx+N1cR+kbTzVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="69432220"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 23:09:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 23:09:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 23:09:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 23:09:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 23:09:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vW/wrXZutKYGMIPzkiv6nk/amPqhSB6H4hqUrjvDxpy4DfK5UgJ1umHM6BqbunIjfcY2V4fIkFgDoJxr713N31jKFyQhSkbWa/LcrE40hyzvuYjqHrutLdVY6QroYAQskKusu6+eeBEpz0VyUcmK2QHtuBnY1HGs09z6ZmWV+6BcyuxUUMwVeOWd1YT2ip7mrPxDB98G313MW+VUpUtbOnpFqGgwNaWKEL0EwSfBxicRZmh3cWr6bK3nKUqaw1eJ615z5QAoD9bpx0tu2Bko+Qun0HOU8pwZkR8kXiAUNxe9ClLXDVwbTO3kTxo7uBODkdbeWoT2V8YUcJ+8ZVM7qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O+Ebtc5APg2cO93KeenKFM4bZq805+DyUlc62zRZIl4=;
 b=FSejLKIQH7evgeQJYumh3qc0Ee7ULZxfzkoLj/3gzEZv6LNmpsUlfRMxTqmrI9+7zdFYJP+qP06V4T8vzIDtsoVtmJbgdUS2kJCYhwRx5Q4T+Vx6MnpOzlaI9+GCHFyVAJTct66Hli5dJ6HPpC+YA1PjDRMEw1ITUikhX9oUv3oEswl47CzW9bRuiwSgRmV0A07iRUxTijBaeClSP8EMJTMVXIXpH0r96z45LqWlGovspDcyJVIXj9E/BHv3PRzlVDmvt4jXvDmWPsWM7zpceY7KfraBrXR1TLWAiLB6xj7Tz+VhSJp3FrhtJ7s6JRkCnbzUHsPLJ/bL6qEPBw38Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by CY8PR11MB6961.namprd11.prod.outlook.com (2603:10b6:930:5a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.17; Thu, 19 Sep
 2024 06:09:37 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f%4]) with mapi id 15.20.7982.012; Thu, 19 Sep 2024
 06:09:37 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915/dp: Fix colorimetry detection
Thread-Topic: [PATCH 1/3] drm/i915/dp: Fix colorimetry detection
Thread-Index: AQHbCf2uRtmQV0HcaU667JMIuAJXRLJeoQSA
Date: Thu, 19 Sep 2024 06:09:37 +0000
Message-ID: <e665298d9d492bae63ce282ed7878ac9a28bef76.camel@intel.com>
References: <20240918190441.29071-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240918190441.29071-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|CY8PR11MB6961:EE_
x-ms-office365-filtering-correlation-id: 8b644a7c-7d21-427f-dedd-08dcd871a3d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dlFTYUhkUzBRVUcxM1VoRFduanR2akZvbVMxd1l1UmJQZU1YL0Z3RXJRNGZ1?=
 =?utf-8?B?L1ZtRFRYTnNHandUUEVOR1VmNVhBNWU0Tk9EYi9TR2kwUFIrakNycjZmRU9k?=
 =?utf-8?B?OGtvZmVySHZuUjYvd1E0RHBtQ291NmdCMmhPcWpnZXc1czRWRURqZkRsZXBu?=
 =?utf-8?B?UHZyZzZNZTYzZExCbzdNTk96eG9NbG1wZmZWUUxtMkxYcFJjTGVKVEZFUkUy?=
 =?utf-8?B?K0RYTzVyYXlFNExhOHNCdUxXdnZKZjhPTHh5Y0lGcG8zLzVvQlBqRWlSS25J?=
 =?utf-8?B?K2tWclpNbnMvbTgrKzRnczJwdjhkemtIcmg3ekZ2UkxhQ2xSTHJ0MlF2UWJx?=
 =?utf-8?B?eGo5SVlKaElQYnR3NDdPeDA4NDRPVEdpQ3VuRm0zclcwcDFRbHV5UDd0N01r?=
 =?utf-8?B?UDlYb3QvQUFZM01PT1JOQ2xLRzBPVW1DbEJZaW55TksrVDgyMHZHVCt4ZXV2?=
 =?utf-8?B?Smp4TjBhS1YyVjVBdEtGSS9PMlozWGVhUXlyZHpVNTZzOURXTGFtYjRBQ1oy?=
 =?utf-8?B?UENCY1VNUU9pbnByZW9wdWVSMm1CdEJZbzQ3ajBCS2RvYzVzNWdJY3RpV1Yz?=
 =?utf-8?B?ZFlyNkNqMUp1VldOWWlnSDFFaTlIcTJ6RUdtVjBsRWd6cUZNcWZITkNuc2Zx?=
 =?utf-8?B?WG1RZTJTS2FCSmZtcmJvcmlwOWxFN1o4enZoUlczQmJueGFJVWVFcFFvN1dR?=
 =?utf-8?B?bXE1ZTV6NjVhNWwwQW9XQkNCYUtPTHh2SGxGMlNlL2NyMXQwU1M3SExrd29z?=
 =?utf-8?B?LzdDVmg3UlNDdnZvaTFVaXRQT1JyU1JIREZoQ2U3Tnk1L3hXNzV0TGFNYjJ6?=
 =?utf-8?B?akd2bFJoN2hqaStWbTkrSGlYQTVJdEp1ZWRiVFFMK3ptNEZ5bHlteW9Rei8r?=
 =?utf-8?B?Qm1FRUhHM1AwcXZVTjRPWndSZW5pdExJZkR3UFBpSklOWUlKVGVhcnVqZExq?=
 =?utf-8?B?akRYTXBrb2VsVEF2NmdYbWozQUR3M3J0OW0rbW5JMUhtYysyRnBhcWxhSEtN?=
 =?utf-8?B?cXUxMUlrTFlSNDFVTHRZZlFnNnlRVWl0Q3J5ei9zdkw4QWFVNmk2ZnpibnpO?=
 =?utf-8?B?RzR0eTRreXpCZTV6SkJUUEtkUmtydmlCVmJSMjFsdCtCRmNHOVk2cEdJQXh4?=
 =?utf-8?B?U0RiNmJENGQwR3RGTHY4djVTSUhIQkZtamVpRHFYYURWN3NmMElGTlB1SWlt?=
 =?utf-8?B?S3Uwd1lTRU9Pc29QZW9OZHFVeHQrN2xlTDBrbW4vK0ZNaWlyUCtVUlBwZVBH?=
 =?utf-8?B?MlpNMm9LR0duK3JRSEtqS29PRFVsRzkzblZMSnY1VUhRdHZlWHZaU0dFbnNT?=
 =?utf-8?B?YWwzQWlhNjVhdC9XcElmcjZFbmpZeEdGOEZRNEhtejZCUmFZVVBpUkZCVEho?=
 =?utf-8?B?OWVMOWFvTWN5NmVMS0NOZWlMNnpTbGo3WE53ajByN1JqeWNSbXVESytla1Rs?=
 =?utf-8?B?eHo2QVIrbXI5eG9ROFBvYmtvQlN4djBRaWZmT25KWXN4UGZVMnVvazlvY0lH?=
 =?utf-8?B?cGRHVjRLWmxzL1Vaa0xMeFoxTFhUbHhwRTRiSkJpdzBrUWdvWG9MamIvTDdJ?=
 =?utf-8?B?VE9aQjBuVFVSV1E5cGoyeEM1SGFUZ1lGeE5URTN3T3AvRmk4bkFwWXVxS2Va?=
 =?utf-8?B?bXRRSXp0R2VTOUErU1BmeGxkMzZKZTZsYmlueVRvYllvOVlkNzUwb0s0SGNh?=
 =?utf-8?B?eEVqS1lwSVBtR0psNmVPaVlYYzdXWXZyNGNWeE9sTDVPYUpRV29URERxWFFR?=
 =?utf-8?B?bEVkRUN0b3FsU0hPMTBEYXEwZms2dThkZ0dYNjkwOTlXZC9WN3o4UlBJSk16?=
 =?utf-8?B?OVRtZVk2WkwrTWtxNXBNNURpdy95eEw1OFBwTVlrUFp4TFM1TTZtcVg2d0Zl?=
 =?utf-8?B?c0Y3Vyt4ZG5EaEdLL0ZockxzSlZZaGtYMXdhTUtoa0pJMmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFhIQlhodG5zUkk0R01LWUFEVjJVV29mQTU0Mk9KanZjSnc4RU9TT3BMNHM1?=
 =?utf-8?B?RU1kbDI0Z0VKMHBnQUY4ei9oalV6V3JUSGpEaHI3amdva1M1OWlrM0JKMXN4?=
 =?utf-8?B?aEJ4VjdNVktBR2FDeXpYY3g4L3JIMWZtVXdnNVZMNzAyMzk3WFN6S0M2bDZq?=
 =?utf-8?B?eDMxRytGMlNZbC9CQ1hYY1hKQktUNkpNOGgrd3hGQmZkRnUycUVlVmgyUXJR?=
 =?utf-8?B?Y21halJ3dFU1Q2kyWTlLYk9iaXM0OU1KbFJKSDVjZk91cGYvQzArYnMxOEVH?=
 =?utf-8?B?RE1QT2NmUWZRUjI2L3FpTk1lUzBXTzhNaHZ6akw1bjZBTEx2OEdPQWZoOWQz?=
 =?utf-8?B?ODN4OGFicmZHNlBnUUFuZFNVM3lUSU5HK0gzL0pQMTZCRjNrcmplZTN1Q2M4?=
 =?utf-8?B?N0hKOE4rK1F6Yy9NNm1NUFNiWmovdkp3R1F6NFMzNFJweWJ5TGpLNHFDdHRR?=
 =?utf-8?B?UUF2ZllOYU5uZyt3NjBJSmVxVTlMdEFYbHg3WHdoU01pVmpXR0VpbzYzcnQz?=
 =?utf-8?B?eEwxQlpxeVdLUUxQNEp5TmNhK0U2c1A3T0dMdmUvcERyeEdtQnBueTdVUFV3?=
 =?utf-8?B?U016RVUrNzNDNmx2TUh2dUluTmJPQnpDMzhEeDRrUnBhY095WXFyVHpmU3pN?=
 =?utf-8?B?ZzFyUmt4clJobUpDSjg0S0NEYitseUR1MDhJaWpiMzE1SzNtTVZ5UFBIZ1hX?=
 =?utf-8?B?ZHlmaXM4M2IwQkoweElobFdRVkhLSWhlV0xGclBydDdGNW00UXZORUtXTHJQ?=
 =?utf-8?B?T0lzZEVTTlJPZWtuZVJVeE9LckUvQTEzRjRsOC92clRFUTVYakhlY3hFM0FJ?=
 =?utf-8?B?TVZidjcyZHhNNm83dWViNUJwN1VQSlpIRUxNM1RQM0E5ajFpR3RBemlGbFB2?=
 =?utf-8?B?WGZRVmI3aEVwUGNuVk1wcUxZck1VdVFxQ1RwSXJTUjJyaFlQQkNDTXQ2UlJP?=
 =?utf-8?B?Y0MwTUxoRDl1T1liMGJsMUEyb0c3aDJabzVOcjdQTVRoaU5rMlpwb2hmNkJl?=
 =?utf-8?B?MWdFYmY3Y1JOcU5SUmp5ME05TEd4QXlGY3JPb2NGUWJiZnVwUU5WNjZHdkxC?=
 =?utf-8?B?OFVoL3ppbzVPQkZZVFZtS1pWYjFJQmZnNHRmQjVvaHRqR3lrOFBmVHJkeUM3?=
 =?utf-8?B?Y003RnFveTRJUElZRHhKWFJyUUlmWG1uVDBKaXdiVHpka2Uwc2x2V3VybUNz?=
 =?utf-8?B?aUNxMEZCQXJodVRJeFBObHhoQjB5L05iUFBRanlNZm00ZlZ1WUR4S1B1b3pF?=
 =?utf-8?B?ZDM3YVd3d2lxMXVKVm5WVGVjKzZlbGdaTWwyREZEU1B1N1pyQUVrclorNTcz?=
 =?utf-8?B?SG50Tmd1MGJSangyNmkzRlRrNWh4ZitISElFbXBGc1FwZ3RiSmhqVnV1M05s?=
 =?utf-8?B?TVBrbzE4ZHg0cjFzN0UyamFBaFRJcysxOW81U3J4UHQxcWttcGxBYnVXWnlp?=
 =?utf-8?B?Ky9jTHhkSmVuK2NLSXhxcFFrWFJIZDh4TCtNcnV3Q2pIS1pyOW51WHVLRWxG?=
 =?utf-8?B?YXoySEJyNStQRnQxNjdnZEFpVnF0QWtDenh0c2l3MU1PVjFONUVIK1lPZ0ox?=
 =?utf-8?B?OTlsZDNpRjBmWmF5RnljRGRGNElJeUIxSnZ6Y21nNGQzMmVjVm9QNnR5M0dq?=
 =?utf-8?B?OGZQb1hFcUdvbWxpdUNDWHcxbnB5RWszOCsvWU5RNGRsSlFZMndOVGxxM29C?=
 =?utf-8?B?VEVvcktpRWJiWG9hd2hYaTZpSnhtU0JvUzJXbFFnYU9lcTRsY0paTXhOYlNR?=
 =?utf-8?B?Z2poVDkvNzdJdDFpUHl6cTNQRGZKTWVsaktQNFcvU29YSWVrRjRwc091TWxX?=
 =?utf-8?B?bERyVVlZYUxDcjZQUmxuRUJ2akVtazlqRGpzYTJTY1dUUGdWeE9JdHlqYmF6?=
 =?utf-8?B?Y0YzbUVVMHN4eEFYdGZmeDdjR0JUSXJPbjlTY1lYUUMzQWFYR0FsZVN2NTVt?=
 =?utf-8?B?NXgvbk5ZdXpxZm41RFpvRzFZVWNxQjZtYXFXWk5IenV5aWNEcWorTVBnL25X?=
 =?utf-8?B?cFZyT2FrSmltdmNBZWQ4QitmQzJQTFd4R0RkRndJZWdmako1U1ZHUHRMbjk0?=
 =?utf-8?B?M0VxWVNSdEd3RWJCUGZ5ZWowUmhTZUNjS000Z3lhOUFDMVNMM00rZXdSQ2Z3?=
 =?utf-8?B?dTd6dWo5M0NHNDY1U2V3V2ZTd0I2Y1VydGdNYTgramQ0N0hVNXhHejY1U25U?=
 =?utf-8?B?c3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E64DA00548D0F4287088EA8426A509E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b644a7c-7d21-427f-dedd-08dcd871a3d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2024 06:09:37.1347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BUl4eig1E6GAAkO8GFTTTeXa3IopA+LlnNejJqT2+SqWS/R4i2uqynsgGRkuqXcqCaPA+zqSNyy5IRXtT0KvIgwv7V1lfawsu2CXOjJopAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6961
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

T24gV2VkLCAyMDI0LTA5LTE4IGF0IDIyOjA0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gaW50ZWxfZHBfaW5pdF9jb25uZWN0b3IoKSBpcyBubyBwbGFjZSBmb3IgZGV0ZWN0aW5nIHN0
dWZmIHZpYQo+IERQQ0QgKGV4Y2VwdCBwZXJoYXBzIGZvciBlRFApLiBNb3ZlIHRoZSBjb2xvcmlt
ZXRyeSBzdHVmZiBpbnRvCj4gYSBtb3JlIGFwcHJvcHJpYXRlIHBsYWNlLgo+IAo+IENjOiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiBGaXhlczogMDAwNzY2NzFh
NjQ4ICgiZHJtL2k5MTUvZGlzcGxheTogTW92ZSBjb2xvcmltZXRyeV9zdXBwb3J0IGZyb20KPiBp
bnRlbF9wc3IgdG8gaW50ZWxfZHAiKQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA5ICsrKysrKy0tLQo+IMKgMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCAxOWY3ODQzMmNjOGYuLmY0NDk1MWQ4YTBmOCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBAQCAtNDA4Miw2
ICs0MDgyLDkgQEAgaW50ZWxfZWRwX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LAo+IHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcgo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fZHBfaXNfYnJhbmNoKGludGVsX2Rw
LT5kcGNkKSk7Cj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2luaXRfZHBjZF9xdWlya3MoaW50ZWxf
ZHAsICZpbnRlbF9kcC0+ZGVzYy5pZGVudCk7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9k
cC0+Y29sb3JpbWV0cnlfc3VwcG9ydCA9Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGludGVsX2RwX2dldF9jb2xvcmltZXRyeV9zdGF0dXMoaW50ZWxfZHApOwo+ICsKPiDCoMKgwqDC
oMKgwqDCoMKgLyoKPiDCoMKgwqDCoMKgwqDCoMKgICogUmVhZCB0aGUgZURQIGRpc3BsYXkgY29u
dHJvbCByZWdpc3RlcnMuCj4gwqDCoMKgwqDCoMKgwqDCoCAqCj4gQEAgLTQxOTUsNiArNDE5OCw5
IEBAIGludGVsX2RwX2dldF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gwqAKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2luaXRfZHBjZF9xdWlya3MoaW50
ZWxfZHAsICZpbnRlbF9kcC0KPiA+ZGVzYy5pZGVudCk7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPmNvbG9yaW1ldHJ5X3N1cHBvcnQgPQo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHBfZ2V0X2NvbG9y
aW1ldHJ5X3N0YXR1cyhpbnRlbF9kcCk7Cj4gKwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaW50ZWxfZHBfdXBkYXRlX3NpbmtfY2FwcyhpbnRlbF9kcCk7Cj4gwqDCoMKgwqDCoMKg
wqDCoH0KPiDCoAo+IEBAIC02OTQ2LDkgKzY5NTIsNiBAQCBpbnRlbF9kcF9pbml0X2Nvbm5lY3Rv
cihzdHJ1Y3QKPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
IkhEQ1AgaW5pdCBmYWlsZWQsIHNraXBwaW5nLlxuIik7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDC
oAo+IC3CoMKgwqDCoMKgwqDCoGludGVsX2RwLT5jb2xvcmltZXRyeV9zdXBwb3J0ID0KPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHBfZ2V0X2NvbG9yaW1ldHJ5X3N0YXR1
cyhpbnRlbF9kcCk7Cj4gLQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+ZnJsLmlzX3RyYWlu
ZWQgPSBmYWxzZTsKPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPmZybC50cmFpbmVkX3JhdGVf
Z2JwcyA9IDA7Cj4gwqAKCg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17876B436E2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 11:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7136710E9CB;
	Thu,  4 Sep 2025 09:19:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oxdu4AuG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9291910E07A;
 Thu,  4 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756977594; x=1788513594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=AdAsBY3bmhqx31DEp1MYgFjuYF/gtsF+iAgKqdJXO+w=;
 b=Oxdu4AuGzQZtr4N/mx4tzFo/Le0PP12gxocwT8wGS+cc3xrqPj9ywP+C
 omcq7KUbG5B38XVgeR1320k4LixLTj7Ac9EwBiX8/b9fIoLpBosVzcAmi
 WdPNHqJhtVlSoUMuyWJZQQTyyaNbAiVYIUkfilpqBVVW9KdnJteagLvUE
 33gD/rhBKZ3HeZpn+m/MACBozORN8kbxE2x6T/0VYN3QzBf5ObO0hAHO9
 rTQc0ZUmFk9DH/oJrP1383Bed4f/ZgrQJt+AT8jswpHRM1ZEP67AGXfvI
 jLsNU679loEsQaiV1FuW92qVFc3rnJRNSyLH8SlDNzKUdWj0rISJl0zjF A==;
X-CSE-ConnectionGUID: HX0F9nNnQ2m/uUwKqem/6g==
X-CSE-MsgGUID: cGTTzhqjS266cO7bZmB5aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="59166222"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="59166222"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 02:19:53 -0700
X-CSE-ConnectionGUID: XyAverxPTSi5tWgeV/n08w==
X-CSE-MsgGUID: +mekvZY8SCe/MtRHyIuxfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="176188934"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 02:19:53 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 02:19:52 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 02:19:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.46)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 02:19:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VPy1PUcn+QJfPwkONLGP9nqtcZT2NyA9bLkTq/JDo2P5dcp5TB0EEMz16SHgArPH88DVpGPDDAoFLTHSBfYM0q+fNB4+a18sGlMjCO+U8M3zRb5rF7afwpD7AhZUMhL4rcoclWkwxiFBSu5rDlhIEO9TmV/8QMq2VUJksAHb4audPaKn3jMm2CWTvYF47qAQV6HCWsEyu8GFF3u7TpHCpIgZIBgBrxKIDbANz4RhuWijIH2QwNfOdrD4sVjElOvqUltgiEaNTaregELlgv91MjrZdK6izcvgPwpq9JWDk08XvOWSoANztJEGBcQNqnXTyQy6azey3f7w+QSClp0asA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AdAsBY3bmhqx31DEp1MYgFjuYF/gtsF+iAgKqdJXO+w=;
 b=AXmC7blmUmfvGAn8avGkkWji0LjUmlDNVzZMytrqcLcCPYp1f8kg3L14fxeVr4I3EtWBDpKkulolVivfoYUppx918qZ/phW5Pq3TAWIOA1tBtfxatmPVGICghe1/miRxnrZYYrXfSEpSelBHLwxvvuypR7a8vbqY1XRF4OK0tfHS3wv0HL/QtnJe5g+xGzgK1QF9H6O6Aa98C4OUM8dMebbJdw5CgFcXXNCfP1vuPpmXLrQmdnshTLubEzCMxjkQ60AfXFmii3QU+fP41VVIHGV4L75JuqHXxd7wPNSIhUaTQbOoMsyOP+4rN2UCKuOPft+3uk1SzdIQYVmQp5OV6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN2PR11MB4583.namprd11.prod.outlook.com (2603:10b6:208:26a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 09:19:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 09:19:44 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 19/20] drm/i915/ddi: prefer poll_timeout_us() over
 readx_poll_timeout()
Thread-Topic: [PATCH 19/20] drm/i915/ddi: prefer poll_timeout_us() over
 readx_poll_timeout()
Thread-Index: AQHcGBZ8Vy9kntOQsUqE9QjYZNXnU7SCyeuA
Date: Thu, 4 Sep 2025 09:19:44 +0000
Message-ID: <6ac11c4191a7b19f7257295f9b16e9f01f265c14.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <63b10a36c7ab545c640b24bc8fc007ce2ea74623.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <63b10a36c7ab545c640b24bc8fc007ce2ea74623.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN2PR11MB4583:EE_
x-ms-office365-filtering-correlation-id: 266ca049-ee11-4ef4-3e35-08ddeb942fdc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TzI2bE8vSXpTQUc3NDlCT25QYTllWmtiOENMWGtYMTNScXl0TEZnQ1dKY0Fa?=
 =?utf-8?B?N3EwSmtiSmVxUGxYSXAyOUcwSEZzTVJ5Q0xVYjJ5SkZ6TXFLS2FNQlBXRWxv?=
 =?utf-8?B?VHdQZEgxS0x2dXBROTdIMk5FOHhzWW0waDFnR2pBOEMzaDRUaWpZNU5WbHRi?=
 =?utf-8?B?S2JWN0NKRktFVThFN3ZBTHljSlFtYTB3Y2dnTjdYaWxUOEM5MzVBWFBtVGFW?=
 =?utf-8?B?SndHR2sxNkRDVUdNck9BcHlxeitzdUhEYytBeUdidUhma3RLbG1rVENIVXRm?=
 =?utf-8?B?Y281VzFNbWVOUm4zc3h3dDhzb1NiZVVxOW1qOHJoT2Z2RlBIMmhRcDF1Z0M3?=
 =?utf-8?B?a0FZU3E0S01SVFFVK3ArK0lYMi9sRjFsN1plTlZVQ2JVcTJOaDEwTlVPa1ls?=
 =?utf-8?B?UExFdjJPRERWQjh3aXJ0KzVwRTV0dWEyR1d2Q0RLbjFRcEo5TU5WOUpmcHNi?=
 =?utf-8?B?N3l0SnNNeXVsNjZIOVpJOG02NFFyckFwZnFoZzlwTnVJWU42cFlMZWk4M3VR?=
 =?utf-8?B?WkVmbXVMME1Hb1Rpa0x2dWhISVBMR0ZFL1phSk1GMk1YWkdxTzNIa0puRVlo?=
 =?utf-8?B?NzRtK0UrR3pjdG9wTmprSythOTNLRmJrb0FGcmNuRFZ4aW9CelQwSEVwL0Jl?=
 =?utf-8?B?U1hCVEJOek4rbTUvWCtsZjZBMjhQNGIwNnRGZ0c2ZDBSd1p2dDJUcnU5Rlow?=
 =?utf-8?B?T0xkTmQycUxZeUY0dHNyUTVydmUreFg0QUxZcjRRUkdVZG5jWGl0MThTcitu?=
 =?utf-8?B?L0pLZUxhcEpoWThzS3hTTjAwN0NmeExDbUtYazNIRXF0ejRuTFQybFNvZG81?=
 =?utf-8?B?cnpMNnVqaURwY1BxSForS3NkU05wRGVlUzRaVEk3TGUxdlJSUXU2QkpXNGcv?=
 =?utf-8?B?dEUrekx5ZmpUY2VlUnp2OGFZKzZ6R3VhditZV0ZYNHA5bDliR1FmOXFiWXBk?=
 =?utf-8?B?QzRpRGh0TTdDdWNrTFp2VzVVMW5BTkdxMlNvblE1cWtsWlNBWURYbjdkVERT?=
 =?utf-8?B?eDNBTWhzQ1RhODVnZ042Qk1qSWhvVjVYVVcyaWRqRXk2OU1VNFZQQjE4WEU2?=
 =?utf-8?B?VmRTczJUVU5scC9hR2ltSEk3Z3RXejhoaTl5Yk1EN01Sa01WdUh5VXFPcFNL?=
 =?utf-8?B?bEN0R2IvOFM2MkZ6SHFWSUVTNVArb3FxdmFnVlZ6elQwWGhVbDdKdTlaYVVq?=
 =?utf-8?B?S0xlamlOalBvckJ2bXEweVZrTkhPU2I5c1J6SzhLaGVxRmJqQ2hDcU84QVBY?=
 =?utf-8?B?dnFUYUlYQkVxU05GSVFoMWozYVNaS3U3bjBxaDNNMG5NYVNLWDhtRExxRSs4?=
 =?utf-8?B?eDVvZFVtWG5nL1kzQ1hVMk02OWp5RHNYWUJ4SjZxaXhRN1NBN3pxUzRzMHRl?=
 =?utf-8?B?VTIxOG94blNjVHlyaUcvTWJjUG1EQzFuWVAvUWhaZkozYTRuRW9rR3NRbnNl?=
 =?utf-8?B?N2R6aUN4VlJuWTdiQkM0Qk5BcWhCQjF3YXpqVXd1UXM0b051UVJ0UkR1b1Zu?=
 =?utf-8?B?dzF3eGR3YldsK2kxZ2hjUTZsN0ZiU3NHbm5kekd2NDNtM1RBTExZVHNwVVdS?=
 =?utf-8?B?ZGZyZTVXT1gxNCt5ajFXU0ZKaGFCYjZ2SlVGN2d6SjUyNzdsYlJNS3ptditU?=
 =?utf-8?B?Z1dWeHV4TTdvUENrY284eDVqczMrUWdpakZmaUM4ck9lNThkTVZuRGNqVjNX?=
 =?utf-8?B?TVByVHowTk4yWUJjRVJpSE16b1BwZkdweVY0Z1NKZFRuQlNxWUlwUmJha0pv?=
 =?utf-8?B?QW52OHhUMzdsc0JUZUFyaTR6ZW9RSnBXZ1ptOTYxZW5TMXNQUkdhY2V5dU1k?=
 =?utf-8?B?VkUzTnVpZlEyWkdEdkh2RURZdTVveXNNSjJjZW45MWRkbTAwOEhEUW81TThq?=
 =?utf-8?B?Q3JsS0tFVVozN0FNQzU5d1ZtTjY3MG9uRVBEV29Kdmk4aFE2cW1weStwN0VH?=
 =?utf-8?B?RjhnL2xucHg0Z1hxY1RDMUdocnQ1cjBGOWtCOWJkQjYrVWYvZmJtNFRoNUxq?=
 =?utf-8?B?cnFka1pzZnR3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnFHelFnZVl2b09wdDR3Y0t1T0xiMFJ3NHR4Z2Y2YWp4ZGp3eFJZM1RSUkdS?=
 =?utf-8?B?UHVJY1R5RzNGK3hWRUxBQ3ZTUWF6dmY5ckdNR081UTIxMHd2amR1OE1mOC8r?=
 =?utf-8?B?N1ExNFpzUnluaGZZOUR3MkZCMC9JVkpXSUNYbEhjNXA2MVlZeHM4MzVVdzZM?=
 =?utf-8?B?NjU1K2swSlVOWm5FRFphb2VkcVVoSjFtVSthdzVWdHpvc1UvNitJTW45d3ky?=
 =?utf-8?B?K0lOR0N4UkxZUWU1aHMwU1BacStBblhUNk11T2JodDJMVkx2UmlZb0FZYVJ2?=
 =?utf-8?B?eDVpcWV6dkpxMmdaUWFlVC9BZUtJTHlaRmlHUVpYT1JkWXQxNnpvb1laTitC?=
 =?utf-8?B?R25Edk1MSE1RZDlVeDA0MmtaU3FzZUZ0YVMray85TlllUWlBem5Kb0ExSkQ4?=
 =?utf-8?B?ZitxdjY1bGc2UmRadTVCRmVQNGRvYUJxaEozSXUxVlRIRzBUaDBLWTFDWHc4?=
 =?utf-8?B?b2ZlcW0rWUFHeWVMVlI0c1JPemtMRmlvM0xRTlk4Nk9MQ1pnN0J6ZkZuaS9L?=
 =?utf-8?B?bGl5NWRMbTRRNm5HMkM5eEE1a0Y5K0NmRnVXQkVTNUg3UnlhazZSaEVpcFhi?=
 =?utf-8?B?M1lsdndSK0hJK1Z2cnBGS0hZbW02Z3hiS3k5TEZsUkZYRFVuVWdkQUQrN2R5?=
 =?utf-8?B?SDhxY3c1ejh6ZmNpVEZYcGNRZXFEM2x1L1o0dzArRnhwTUppb3FSV0puY1Rl?=
 =?utf-8?B?VmxJMkl4TWF6Z2ZoSE9MRnlUVEhqREcrNVFaSkNGUTkvK2lTcm5CNHdCU0FV?=
 =?utf-8?B?bXJKVkhnM21LbVBYQTAvL3JVVkJqS2ZEMHdXNGd5Z00xSWsvcEZmdi9odFVL?=
 =?utf-8?B?cHdyUERDR1pVWmVKNkJneEhPT1BCRHdCRUdpM2dUaHVicktqN05ieEVKeitq?=
 =?utf-8?B?TUxhMFNjRkY5RVkrWjhRWHRkMWhLZzdVV1V2Yld5QWdFcDlrL1hEQStsc21x?=
 =?utf-8?B?aXluM0d3UDBNL050UzFNMVc3a2xiK1Faclc0OHczREZHRnRKa3lrVExuUVlP?=
 =?utf-8?B?MDgvOWl4dWdCTFNFQmk5MEwrTmpRYjVuZEdjTlBTSndkT3JyZ0FvQTFRcDNt?=
 =?utf-8?B?NWVQNm9rUGxnTFFKSXZBVlo1bGt0NU55NFlTaWZHRURDWkUyYnlYejhJWSs2?=
 =?utf-8?B?bHBPU2tZNElUR0JFbUNBUnV0MlZCdDJzUmhLdzZQRXFTWXAzaXRsakdRZTBX?=
 =?utf-8?B?ZU5Ib0xYYUp0SGtkNVMrQS9iUmsyWmZLS2FuQ2dSSk9LZGwxdHRJSCtndFp1?=
 =?utf-8?B?UzFKUVFZUUdpTXU4WWNFbE1XTG9HWGVGNXpISFRDSXMvWGFIRGRWcEx4Rk4y?=
 =?utf-8?B?VU81Yk9kckVxK2JKaDVOMnZNNTJoT1JKY2EyYVBudlRpQkRHMDBwWjRYV3d5?=
 =?utf-8?B?V1MwK3RjRno2NHdFU1JraGhlNGt1ZXVqZ2dDc1Y0UWhONm4rSVd3b2IrT2p5?=
 =?utf-8?B?V3NGQm9RK3JPdWZJNDlBalJlaHUwdnJ0ZUVadzZCS1RjcGdPQ1VTeExlQi83?=
 =?utf-8?B?ZXNTZGgwTGhoNnhBR2xGRXlZS2VGZ01uL29kd0JvdTk5ekVrZy93K2NWUWpx?=
 =?utf-8?B?VTY0cFNBcGZWVTNWWVBIMWRjOFNjOEx1bTd0WjlYSWFNOE1MbG5IK3N5MTFn?=
 =?utf-8?B?TmZNdVVpUFhSNnpVdENObkdvMzJwUHNld2wzUnFza1Z1OEt2blRnK09CVGRW?=
 =?utf-8?B?SDlPYVRtQjJTOEZKYzFXRzh0TUl5WGNFYzZjb04rcHpZMHNxTmZESGtITko4?=
 =?utf-8?B?WU4vdEhQL3JaWHZXdzZoTDJxRGp2Q3VlUTluVHdrQWFZdWdWVWVEOWVZa0Js?=
 =?utf-8?B?T24ybkFZb1VNWUs3TWNrQmhzYmtZUUVTZDVPdU5zQ2pzYnY3MDA3K0Z1czRO?=
 =?utf-8?B?TFN2UkdNU3F5NXUxaDhzT01EWGkvRmluVmlLOFpjK2RYK3huOTVjY2owUzQw?=
 =?utf-8?B?U256MEFubHNxZ21OZThZM3JLcDJGUHprRzdWMnhjVjg0S3lxVlQ2TysxY1hr?=
 =?utf-8?B?QTRzSTA2anFVaFJGR2xuNkZTSGw3UkNFUDFiRW9Wa3FYSVE4aXhacnA2a2M0?=
 =?utf-8?B?b0Jib2xISEZGZWpvZFRDOHYxWStxZnBCc0NPYi8waFIvRGFoUG1lVjRNSnNy?=
 =?utf-8?B?MURzR3h1NTZhQzhCTC8yTFRzUG5wUEJKekpOUENEMVROWGFBdTNSamlFT3VZ?=
 =?utf-8?B?QlFiT2V1TndvV0RYSTdRbkhldEFEcTJwdWM2S2Vidm1tWEQralF3SUtaUStH?=
 =?utf-8?B?RXc0bEZuUmxXbjdteEJST2UrQ0dBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DA4DC368B5167E4384CB435B7F15C285@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 266ca049-ee11-4ef4-3e35-08ddeb942fdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 09:19:44.6632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ht9/rfI28C8GC1RekDBmbg+pWhXR7UFEXtc9jgpkvPh5znot1UsrRX0YjdA+T69uebRFHiNmSuF2/mHyu1EAqghqijinq2Aa3aqkAoQofVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4583
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VW5pZnkgb24gdXNpbmcgcG9sbF90aW1lb3V0X3VzKCkgdGhyb3VnaG91dCBpbnN0ZWFkIG9mIG1p
eGluZyB3aXRoDQo+IHJlYWR4X3BvbGxfdGltZW91dCgpLiBXaGlsZSB0aGUgbGF0dGVyIGNhbiBi
ZSBldmVyIHNvIHNsaWdodGx5DQo+IHNpbXBsZXIsDQo+IHRoZXkgYXJlIGJvdGggY29tcGxpY2F0
ZWQgZW5vdWdoIHRoYXQgaXQncyBiZXR0ZXIgdG8gdW5pZnkgb24gb25lDQo+IGFwcHJvYWNoIG9u
bHkuDQo+IA0KPiBXaGlsZSBhdCBpdCwgYmV0dGVyIHNlcGFyYXRlIHRoZSBoYW5kbGluZyBvZiBl
cnJvciByZXR1cm5zIGZyb20NCj4gZHJtX2RwX2RwY2RfcmVhZGIoKSBhbmQgdGhlIGFjdHVhbCBz
dGF0dXMgYnl0ZS4gVGhpcyBpcyBiZXN0IGFjaGlldmVkDQo+IGJ5DQo+IGlubGluaW5nIHRoZSBy
ZWFkX2ZlY19kZXRlY3RlZF9zdGF0dXMoKSBmdW5jdGlvbiwgYW5kIHN3aXRjaGluZyB0bw0KPiBk
cm1fZHBfZHBjZF9yZWFkX2J5dGUoKS4NCj4gDQo+IHYyOiBVc2UgZHJtX2RwX2RwY2RfcmVhZF9i
eXRlKCkgKEltcmUpDQo+IA0KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQpS
ZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAzMiAr
KysrKysrKy0tLS0tLS0tLS0tLS0tDQo+IC0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IDRlNGVhM2EwZmY4My4uNDYwMTcwOTFiYjBiIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTIz
NDAsMzQgKzIzNDAsMjQgQEAgc3RhdGljIHZvaWQNCj4gaW50ZWxfZHBfc2lua19zZXRfZmVjX3Jl
YWR5KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5
LT5kcm0sICJGYWlsZWQgdG8gY2xlYXIgRkVDDQo+IGRldGVjdGVkIGZsYWdzXG4iKTsNCj4gwqB9
DQo+IMKgDQo+IC1zdGF0aWMgaW50IHJlYWRfZmVjX2RldGVjdGVkX3N0YXR1cyhzdHJ1Y3QgZHJt
X2RwX2F1eCAqYXV4KQ0KPiAtew0KPiAtCWludCByZXQ7DQo+IC0JdTggc3RhdHVzOw0KPiAtDQo+
IC0JcmV0ID0gZHJtX2RwX2RwY2RfcmVhZGIoYXV4LCBEUF9GRUNfU1RBVFVTLCAmc3RhdHVzKTsN
Cj4gLQlpZiAocmV0IDwgMCkNCj4gLQkJcmV0dXJuIHJldDsNCj4gLQ0KPiAtCXJldHVybiBzdGF0
dXM7DQo+IC19DQo+IC0NCj4gwqBzdGF0aWMgaW50IHdhaXRfZm9yX2ZlY19kZXRlY3RlZChzdHJ1
Y3QgZHJtX2RwX2F1eCAqYXV4LCBib29sDQo+IGVuYWJsZWQpDQo+IMKgew0KPiDCoAlzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoYXV4LQ0KPiA+ZHJtX2Rl
dik7DQo+IMKgCWludCBtYXNrID0gZW5hYmxlZCA/IERQX0ZFQ19ERUNPREVfRU5fREVURUNURUQg
Og0KPiBEUF9GRUNfREVDT0RFX0RJU19ERVRFQ1RFRDsNCj4gLQlpbnQgc3RhdHVzOw0KPiAtCWlu
dCBlcnI7DQo+ICsJdTggc3RhdHVzID0gMDsNCj4gKwlpbnQgcmV0LCBlcnI7DQo+IMKgDQo+IC0J
ZXJyID0gcmVhZHhfcG9sbF90aW1lb3V0KHJlYWRfZmVjX2RldGVjdGVkX3N0YXR1cywgYXV4LA0K
PiBzdGF0dXMsDQo+IC0JCQkJIHN0YXR1cyAmIG1hc2sgfHwgc3RhdHVzIDwgMCwNCj4gLQkJCQkg
MTAwMDAsIDIwMDAwMCk7DQo+ICsJcmV0ID0gcG9sbF90aW1lb3V0X3VzKGVyciA9IGRybV9kcF9k
cGNkX3JlYWRfYnl0ZShhdXgsDQo+IERQX0ZFQ19TVEFUVVMsICZzdGF0dXMpLA0KPiArCQkJwqDC
oMKgwqDCoCBlcnIgfHwgKHN0YXR1cyAmIG1hc2spLA0KPiArCQkJwqDCoMKgwqDCoCAxMCAqIDEw
MDAsIDIwMCAqIDEwMDAsIGZhbHNlKTsNCj4gwqANCj4gLQlpZiAoZXJyIHx8IHN0YXR1cyA8IDAp
IHsNCj4gKwkvKiBFaXRoZXIgY2FuIGJlIG5vbi16ZXJvLCBidXQgbm90IGJvdGggKi8NCj4gKwly
ZXQgPSByZXQgPzogZXJyOw0KPiArCWlmIChyZXQpIHsNCj4gwqAJCWRybV9kYmdfa21zKGRpc3Bs
YXktPmRybSwNCj4gLQkJCcKgwqDCoCAiRmFpbGVkIHdhaXRpbmcgZm9yIEZFQyAlcyB0byBnZXQN
Cj4gZGV0ZWN0ZWQ6ICVkIChzdGF0dXMgJWQpXG4iLA0KPiAtCQkJwqDCoMKgIHN0cl9lbmFibGVk
X2Rpc2FibGVkKGVuYWJsZWQpLCBlcnIsDQo+IHN0YXR1cyk7DQo+IC0JCXJldHVybiBlcnIgPyBl
cnIgOiBzdGF0dXM7DQo+ICsJCQnCoMKgwqAgIkZhaWxlZCB3YWl0aW5nIGZvciBGRUMgJXMgdG8g
Z2V0DQo+IGRldGVjdGVkOiAlZCAoc3RhdHVzIDB4JTAyeClcbiIsDQo+ICsJCQnCoMKgwqAgc3Ry
X2VuYWJsZWRfZGlzYWJsZWQoZW5hYmxlZCksIHJldCwNCj4gc3RhdHVzKTsNCj4gKwkJcmV0dXJu
IHJldDsNCj4gwqAJfQ0KPiDCoA0KPiDCoAlyZXR1cm4gMDsNCg0K

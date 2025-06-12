Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BC4AD7C3D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 22:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856C910E189;
	Thu, 12 Jun 2025 20:17:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lx2x8BrS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03EF210E187;
 Thu, 12 Jun 2025 20:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749759430; x=1781295430;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g2z6ShXgPqmyg5M71KXsTVCqjOR8gHFJgrfTKMFDgLo=;
 b=Lx2x8BrSlZYj88tM+chWViMD33dOLIK4ayxSQY8rN6QYNDMdyVj+1L+W
 ng+rLr4WIYB6847HFw64TY5Lc/4iPJmKGfbrXEP1lUZw+f9phDKUOrTI7
 v2KAaRpn/MvOy2htP/DkAhP937oFdtMWx3IPsbG/RbFEXdJ3+N1qG2vwS
 7hEYI+JnvUjwgd068r/TqIF12kENRpHDTWrgMClDO5Iu0sUrRV7pFfWhD
 hTjAIPxSmz0FXvidFfZvyVVM1OIstKOS6iT6xnKVRdpOL3PveRL0G+O2r
 mnxGNNKY5XJbkypRfSq4ALKujqSobrIHWfp9JX9Ntmf5IbksqJ/CQYF4G Q==;
X-CSE-ConnectionGUID: iCFwx9Y6SYCyXyQ1m9AKHQ==
X-CSE-MsgGUID: wFsbVr+YSkOxeND02h8xAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51187181"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="51187181"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:17:09 -0700
X-CSE-ConnectionGUID: 8ZZU3x92Qu+Z0QiNySEsPA==
X-CSE-MsgGUID: i3lhihxWQ9GUR687cEXbSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152532364"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:17:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 13:17:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 13:17:08 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 13:17:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NxK5iZpMjIgYIqcGg5seO/6OESO94/94KwRgNDOVnJiE3IVwGpuEErq36UMszwSyFmtw29oyQKxOtlX+AG8CvR6ZLIyNq0LHdu0Mzu6ToELEs/0pOt2eT0e9E3/QzY0GUaIGvdjgASN/6tjKdSUmZVBR+tIpTNXuNSaBbVW/p/4Sb2kIaKpmdHthMzazwVoa/jfwHOvkecn+Fm3Z1BhYGidytH0IQpJgmF/UUIrzBMMo0IOQmrgS0JiQus+oUZYrvbzYvP4TWeGS9rX2TE1XvAqWyL9j1aonwJa6Mw8c+6KPfBUNINPmrSUbDGFkzC+18OHBZ6RQ+9ysmPO7aaivTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g2z6ShXgPqmyg5M71KXsTVCqjOR8gHFJgrfTKMFDgLo=;
 b=IH3SbOiySPk1bq1I/NQewetkD6KZ6LGGPpJaTMdbNq6ibIMUUqFoj5fOvezMl+BvcuzNuMa2MaQ/Q73cPIr+IwzQO7N/W38mzNEBFoh279btlWBn++64SdS7A4d6U7KvWHVlFcipHKNkh25uue2CefnjaZcuy8eT6bjR2Ys6lzWizjLM1hRk/faLyWgl7838gN/gjFc/lMSmJn/L2l+tBGDWcyc35PhN2y+2CZNkb1FYPnESuf4as+9YCW9Kfy0jF8kQ+KSy7GeQMFwATwsrrlgqvtDVIvca32i23luNIM4iBu10/SeZea6jJuv2qjPxIVd/qJG7XnuXhHh5XjroMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM3PPF74831EF4B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f2e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.25; Thu, 12 Jun
 2025 20:16:52 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 20:16:52 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 4/9] drm/i915/dmc: Extract dmc_load_program()
Thread-Topic: [PATCH 4/9] drm/i915/dmc: Extract dmc_load_program()
Thread-Index: AQHb2ujuG04Pc87YmUS/+N74dQ/LO7P/94aQ
Date: Thu, 12 Jun 2025 20:16:51 +0000
Message-ID: <DM4PR11MB6360E45A005DAB22EA0151ACF474A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
 <20250611155241.24191-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20250611155241.24191-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM3PPF74831EF4B:EE_
x-ms-office365-filtering-correlation-id: c439d303-ecc1-445d-7959-08dda9ee11a7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TDU2djVBZU9kS2lHUmVFNUROaTRDWWs0b0hUOWxRYUs0Z2lMSnRFbG5zelVU?=
 =?utf-8?B?YzV6cEVHV3AwMGJObjNHSkIwTWdLN212bUtEdk04ZTFnejVuOC9TcU5uOHA3?=
 =?utf-8?B?b3VXYkI4UmlyYWdVSmNpSEZuS1g5cGVLVHBtODFtb0RiU3IxVXdlaUlpTkFt?=
 =?utf-8?B?YmZuQUlrdmZXTHRHTWFQcEk0LzMzaUM3c2xxd0FQOHF6eVdmTTFvS1FCU1Ur?=
 =?utf-8?B?bnlFOFdmOS9ObUNOSDZuRVJlZ0I2Y1ptNnk5OVhQMCtYR0ZJaS9vRVM5TTRI?=
 =?utf-8?B?cmMraDdNekpST2ttbVhhT3RIcFJVTlUwT1h6SnV2d3JpVkNWNHhrbkJrS203?=
 =?utf-8?B?eC9JVC80RW9oOHJudTVoUXlGZ21hUm56ZEhjN2NlWUVubitDb2kzTkdYTkRW?=
 =?utf-8?B?VkVaYWJEenliWUpGcXcrVHVvNE0zMzhTeHNmK0tycy92ZHgyQ3kwRWU1aElZ?=
 =?utf-8?B?aTZ4VlRnWkkvZ0xPd2ZuV2pxMTR0SFg4aUVZWjk0WnpoWEZZd1A4R1FyOUt0?=
 =?utf-8?B?SityUEcySDByRElYY0JvV2VkOWd5T25KZUlxTDBWbFRad3hEUlJWbllGTzM5?=
 =?utf-8?B?NnFtc2NQTjFRTEQzdDU3V2JKekdyL041MzdRTFBWZmZDVE1sNlN4K0RhZVZm?=
 =?utf-8?B?Uk5WSC9MenRjZkJBTWVvaUIzQkw0ZnViaGRlMnluYStRdGQ4VDU5Q1dZbTBI?=
 =?utf-8?B?QzFFSElpdXBTTEF2aHRyQjZjRzJnb0cyMjZLMzl5a2VxanFkbVcvV0E5dUdI?=
 =?utf-8?B?alhQZ0J3MmJtNzh2dXUzZ3Fna0x3U3EvZE80eHdVVHVFL1QyYmRtc0VDVXVS?=
 =?utf-8?B?emRQQVV5QlpTUkpRWFlHanhKcUJVNlgyaWVnNHFsMCtHdXRDWUY5ZWFvQVlU?=
 =?utf-8?B?c0piV1JxMzdwdzVWdlFrQk1XUlRUNlREUEVaK3BnaUxibGEzYnZJSGZvQUZ2?=
 =?utf-8?B?bXR6ZFZsbkZ0bndKeEI2UDhYbnhYVGJ2cXo2ZkRESUNGRWpFbTE4R3ZZYjgw?=
 =?utf-8?B?T0Y1RnZFMC84Um5MQ0FzTFBoL1dHMVVUZmpDQW5mQ0ZZMUN1NWxPaTRvUER1?=
 =?utf-8?B?ek9UamlFd1M4ZWxDbmtjR0VoVURJckRIQmsxRVIxNmgzVC8rczhqdXdsSTE1?=
 =?utf-8?B?ZC9pOHI2VlNFRThCL0kzNkhKY3BIaThNSG1QVWttV2pJSmlOdzgvWEZNS215?=
 =?utf-8?B?MWtTZGwwRGRDT2V3QzlySjk2QzRZeE5zQ0JFZ0pBcUZuSG13ZUdJUXBKemRI?=
 =?utf-8?B?VU9BVHVqNlNqS2NUNUI0T2VkOVl2NlVocE5HRWIyRDcyV0M5eTFqWlZhaW5o?=
 =?utf-8?B?RUpwNW8yUFpiVTVxT1ZQdmdJVG1aOHJoU1FGUFVkME9EbGFOYTFyTGVFYlgr?=
 =?utf-8?B?QVM0RHdlY0VrRmg3cFFBZGQreEhYY0orT09mSW1jaWtyM1pWY3ZRRStwakwz?=
 =?utf-8?B?VnRBQ1lqb0xVNEFwTHdRRXhUYWR0YkNUeVRMWVY3MzVVWkpWelVrQmU4V2hW?=
 =?utf-8?B?Q1NPTjRkZFMvdWNzejNHcGxrM2NNUzNsVFUzVVFhK3BJT3E3dDNTeXJhMWdK?=
 =?utf-8?B?SzdOeExjbFNQY0FSczd6cEU4ZG1SVUJpbW90NkYyWVZXRkhPeS9pSkZ3a1p5?=
 =?utf-8?B?M2JvS0hZK0Y2cTE1a3k0Rjd0SVlRTGlqQXp1Z0MyZG54eXBvenZSRkFXeTI0?=
 =?utf-8?B?NXRnNzE4NFdIZWRJVS9BMU14L1lUODJjY3dWbm90MkV5bTUwZDc3Z3YrdFVx?=
 =?utf-8?B?YlJlbjdINE9DRTNMZ0Q0RGE5MStaZDVueVJsWVViVXdTTlBMc2dZdnNKMHJT?=
 =?utf-8?B?QjJRSmZUcU1NVUdkN1RlNHlSZ1EwUDN5a2JxZTFxWGZ4OU9tMTRNSGM3dHg5?=
 =?utf-8?B?aTlvLzZJMXFRekcvaWhSa2t3V1dsT0svNTY0bHNEMnptd3Z6YmFiN0FOcThw?=
 =?utf-8?B?VDFlNVVOdmkySDhCL20vTnpQRjlZVkRUUzYwdDdPTXFtU3NIcEt2dlhMMHN1?=
 =?utf-8?Q?xj78BBH1hglqo/ohwPBDFKysCct9zo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Wld3Um1FWXdMMlJXMElPRSs3by9TS0ExSWdyMzVpallFOU9OVnNERjVmRnho?=
 =?utf-8?B?WEozKzZsbERJbVRjV2RaenVVR1B2WkJ0cUk4emZMTjRCditsVEdaN0grOHRx?=
 =?utf-8?B?NWZPVUxCYnl6WEdYVHFRakIvMGNlVEg0VE1NeC90MjZZYm5lc2tCaWtlOHNm?=
 =?utf-8?B?NWdnZnZRN1JIcmkrQUkrWHVtZlpFWlVJR05DcldCMW1uV0M1aXpGbjVhYUNE?=
 =?utf-8?B?WjhUNkMvaEVreEM0YVRNc3FpMUtjZTA0R2s2UUpiNFI4QUowMlJLcndSZnpF?=
 =?utf-8?B?c3NoY0d2R1JzbkljV3oxSG5SZEpVak14bHZ6aUFZa0t0YytYQWZiZDJ3Q3hV?=
 =?utf-8?B?OG5ySGhjTXRvZitaODZjWkpUdlBLVk1yaS9hRHdFSy9ScjhSVWdKQ2Rqbklu?=
 =?utf-8?B?VlBLbE1UeCtFQjFYYXN1ZDZNNHRVRzd2UHg2S0VyN3BSWm8zTDhBYldLQWhj?=
 =?utf-8?B?bXJ5OGtwL3QzZ1JXM1I0blRTVExwcENsYWJPbkY0WWg5U1ptbUJxWHBNZE9v?=
 =?utf-8?B?ZFVnSHU4bXBLQXIvNkRMZzV4SFQwd1JrUEVFQ1BDSWlzZ2VwaC9QUVZWOVM2?=
 =?utf-8?B?Z1E1eXhuVlhEWm5qV09rRGNqbmZSa0lSZTh0by9BUXNkK2ZQVVJNZDdmWGZ2?=
 =?utf-8?B?R3BKUGN1TEJwQXRoWEt3SjI5RTB5YlFjWDJ0aUxmWWVTWTFRZzVhNmNVRHZQ?=
 =?utf-8?B?Wml3T2hqazJqZzdhN1dZYVlGbitNYXllTFZtbWVoZ2xjcWJFdjJxOXhsNzcy?=
 =?utf-8?B?UU9xRzV1T0RRb3FxdGRRbUFvMUkwMk9LNmNEdkRmSlI0aytSMGdCNlJuRUJJ?=
 =?utf-8?B?TVVSZVY4akM1VUE0ZVZvT0FOeFE2aVFTWHVTNUpqK2hTVnA2MEY3a0pyNHZk?=
 =?utf-8?B?ang4bzkrWDFwU0FkR0M3ajBQQWxWcDVmNUNwMUV5Ym5yUFJKdWpHem9mQTRP?=
 =?utf-8?B?NmlxTGdhUGkwMnA0QTA1MmY4azMzTHVpYi8zOVBVNXVENmt3UjhRK3M4Q3BT?=
 =?utf-8?B?YjA0bklQaXFtbjM4anBGQjhsWk5mQ3orcVFIN2hPWmh3Tnk1eFhnNkk2cDFF?=
 =?utf-8?B?dmZ6bWNpVkg4aTd6VVdwTW1hdGRQbHZxODI4UmdrdmJhdEo5N0luSEU4M1lp?=
 =?utf-8?B?ZWgwOGtLcVdXMjBSbXVwZ3pEd0EzWjlXUkdNMWM3emZ1eGo4VVdLaGRMR2pG?=
 =?utf-8?B?ZmpYT0tyc2lKVmFBd21za0RHZXpxVzRHeENnaHRrQWFJaUE1b3ZUUTBmNHhh?=
 =?utf-8?B?eUs5cDYramxDbENOS0dLQ1JPbjZsbkpLOVVnV2FtaHJMUnFtWU5ldnovSzN4?=
 =?utf-8?B?S2ttZnZXLzBvdFVYUlpFSDhnSG1vZW1OOGR1QWJSSTFjbktQbW9hc2dzWTY0?=
 =?utf-8?B?OTRkdU0yODlzd2U0dUFOU1dJYjB6VWI4TFp1RENaSS9naWRmSTVPdWhCaFVs?=
 =?utf-8?B?aUwra2RNNHV3NWd0a2Rvc2tBdnpkUGJJdTlUR3Z4WEZuNlA4ei9CeUtleHVm?=
 =?utf-8?B?ZmpWdTByYlR0dUs3YzJ1SE9vWmRjWHR0OXo1REdvUFdhNWFQY1BPZS92cjZ2?=
 =?utf-8?B?K0x1MllRWWtaRHlURFlVVWNlZkVhUU91QW85UVk3c0xpS1l6andENmovQ1lK?=
 =?utf-8?B?aUhPWDJLME5XUFA0b2kxbXNlTTcwQlNMRVIrRkFzWmQ5RWNTalRBcE0xanNY?=
 =?utf-8?B?WEg2VjdoekxLZnJabUptTFd3VEkzZkNqZVBZTWpyTGV2MUZVendMWisxQVFG?=
 =?utf-8?B?eUNQOTFhUythaXBHVFlQR2ozNzNYRElTNkp3akNIbXhnUHpLZkorbytaQmFt?=
 =?utf-8?B?dEJWbTlpMXBQSzJxd2JscGFDSThmVUxWWVUxYmk3UlNDZXlxTHQ0UjJMV28v?=
 =?utf-8?B?bG9QaGlTaEtCc1J0MGZYcnNTb2s4bkVwS2YxSzgzSE0zVXUzRzltRys4NTkz?=
 =?utf-8?B?OUxhSjdTcU81d0pFWmlXL08vUVVhcVhBT1JiRWUyd1U3Z21peXg0S2RiSzd6?=
 =?utf-8?B?cE03bGl0WDJIS1ZFQnVPZDdiSnZJNGg5UHUwK2JFMnFQbnlaMzdtMnltN3lZ?=
 =?utf-8?B?TTNscy9RcHVla21EYUtuT281RCtkaFlKYnlOYVFoeldBL093QW1yRk0yaTk4?=
 =?utf-8?Q?uC96kovMY4VpGQS74Lu41D4oj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c439d303-ecc1-445d-7959-08dda9ee11a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 20:16:51.9542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +7+MaNaz7Zn/BD9qlnkCu3laFCGVRapCtha0GKYz/wRVNGwoNY1QZTS5i6vgIA/+qOMI66apSY6rPXw9i2ehQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF74831EF4B
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxMSwgMjAyNSA5OjIzIFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDQvOV0gZHJtL2k5MTUvZG1jOiBFeHRy
YWN0IGRtY19sb2FkX3Byb2dyYW0oKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFdlJ2xsIGJlIG5lZWRpbmcgdG8gcmVs
b2FkIHRoZSBwcm9ncmFtIGZvciBpbmRpdmlkdWFsIERNQ3MuDQo+IFRvIG1ha2UgdGhhdCBwb3Nz
aWJsZSBwdWxsIHRoZSBjb2RlIHRvIGxvYWQgdGhlIHByb2dyYW0gZm9yIGEgc2luZ2xlIERNQyBp
bnRvIGENCj4gbmV3IGZ1bmN0aW9uLg0KPiANCj4gVGhpcyBkb2VzIGNoYW5nZSB0aGUgb3JkZXIg
b2YgdGhpbmdzIGR1cmluZyBpbml0L3Jlc3VtZSBhIGJpdDsgcHJldmlvdXNseSB3ZSBsb2FkZWQN
Cj4gdGhlIHByb2dyYW0gUkFNIGZvciBhbGwgRE1DcyBmaXJzdCwgYW5kIHRoZW4gbG9hZGVkIHRo
ZSBNTUlPIHJlZ2lzdGVycyBmb3IgYWxsDQo+IERNQ3MuIE5vdyB0aG9zZSBvcGVyYXRpb25zIHdp
bGwgYmUgaW50ZXJsZWF2ZWQgYmV0d2VlbiBkaWZmZXJlbnQgRE1Dcy4NCg0KSGF2ZW4ndCBmb3Vu
ZCBhbnkgZG9jdW1lbnRhdGlvbiBtYW5kYXRpbmcgdGhpcyBzZXF1ZW5jZSwgc28gc2hvdWxkIGJl
IG9rLg0KDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4N
Cg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZG1jLmMgfCA3OCArKysrKysrKysrKysrLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0
MiBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBpbmRleCA1YTQzMjk4Y2QwZTcuLjMzMWRiMjgw
MzlkYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
bWMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+
IEBAIC00MzIsMjUgKzQzMiwyMiBAQCBzdGF0aWMgdm9pZCBkaXNhYmxlX2V2ZW50X2hhbmRsZXIo
c3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksDQo+ICAJaW50ZWxfZGVfd3JpdGUoZGlz
cGxheSwgaHRwX3JlZywgMCk7DQo+ICB9DQo+IA0KPiAtc3RhdGljIHZvaWQgZGlzYWJsZV9hbGxf
ZXZlbnRfaGFuZGxlcnMoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ICtzdGF0aWMg
dm9pZCBkaXNhYmxlX2FsbF9ldmVudF9oYW5kbGVycyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSwNCj4gKwkJCQkgICAgICAgZW51bSBpbnRlbF9kbWNfaWQgZG1jX2lkKQ0KPiAgew0KPiAt
CWVudW0gaW50ZWxfZG1jX2lkIGRtY19pZDsNCj4gKwlpbnQgaGFuZGxlcjsNCj4gDQo+ICAJLyog
VE9ETzogZGlzYWJsZSB0aGUgZXZlbnQgaGFuZGxlcnMgb24gcHJlLUdFTjEyIHBsYXRmb3JtcyBh
cyB3ZWxsICovDQo+ICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMTIpDQo+ICAJCXJldHVy
bjsNCj4gDQo+IC0JZm9yX2VhY2hfZG1jX2lkKGRtY19pZCkgew0KPiAtCQlpbnQgaGFuZGxlcjsN
Cj4gKwlpZiAoIWhhc19kbWNfaWRfZncoZGlzcGxheSwgZG1jX2lkKSkNCj4gKwkJcmV0dXJuOw0K
PiANCj4gLQkJaWYgKCFoYXNfZG1jX2lkX2Z3KGRpc3BsYXksIGRtY19pZCkpDQo+IC0JCQljb250
aW51ZTsNCj4gLQ0KPiAtCQlmb3IgKGhhbmRsZXIgPSAwOyBoYW5kbGVyIDwNCj4gRE1DX0VWRU5U
X0hBTkRMRVJfQ09VTlRfR0VOMTI7IGhhbmRsZXIrKykNCj4gLQkJCWRpc2FibGVfZXZlbnRfaGFu
ZGxlcihkaXNwbGF5LA0KPiAtCQkJCQkgICAgICBETUNfRVZUX0NUTChkaXNwbGF5LCBkbWNfaWQs
DQo+IGhhbmRsZXIpLA0KPiAtCQkJCQkgICAgICBETUNfRVZUX0hUUChkaXNwbGF5LCBkbWNfaWQs
DQo+IGhhbmRsZXIpKTsNCj4gLQl9DQo+ICsJZm9yIChoYW5kbGVyID0gMDsgaGFuZGxlciA8IERN
Q19FVkVOVF9IQU5ETEVSX0NPVU5UX0dFTjEyOw0KPiBoYW5kbGVyKyspDQo+ICsJCWRpc2FibGVf
ZXZlbnRfaGFuZGxlcihkaXNwbGF5LA0KPiArCQkJCSAgICAgIERNQ19FVlRfQ1RMKGRpc3BsYXks
IGRtY19pZCwgaGFuZGxlciksDQo+ICsJCQkJICAgICAgRE1DX0VWVF9IVFAoZGlzcGxheSwgZG1j
X2lkLCBoYW5kbGVyKSk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQgYWRscF9waXBlZG1jX2Ns
b2NrX2dhdGluZ193YShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgYm9vbA0KPiBlbmFi
bGUpIEBAIC01NzgsNiArNTc1LDMwIEBAIHN0YXRpYyB1MzIgZG1jX21taW9kYXRhKHN0cnVjdCBp
bnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LA0KPiAgCQlyZXR1cm4gZG1jLT5kbWNfaW5mb1tkbWNf
aWRdLm1taW9kYXRhW2ldOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIGRtY19sb2FkX3Byb2dy
YW0oc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICsJCQkgICAgIGVudW0gaW50ZWxf
ZG1jX2lkIGRtY19pZCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZG1jICpkbWMgPSBkaXNwbGF5
X3RvX2RtYyhkaXNwbGF5KTsNCj4gKwlpbnQgaTsNCj4gKw0KPiArCWRpc2FibGVfYWxsX2V2ZW50
X2hhbmRsZXJzKGRpc3BsYXksIGRtY19pZCk7DQo+ICsNCj4gKwlwcmVlbXB0X2Rpc2FibGUoKTsN
Cj4gKw0KPiArCWZvciAoaSA9IDA7IGkgPCBkbWMtPmRtY19pbmZvW2RtY19pZF0uZG1jX2Z3X3Np
emU7IGkrKykgew0KPiArCQlpbnRlbF9kZV93cml0ZV9mdyhkaXNwbGF5LA0KPiArCQkJCSAgRE1D
X1BST0dSQU0oZG1jLQ0KPiA+ZG1jX2luZm9bZG1jX2lkXS5zdGFydF9tbWlvYWRkciwgaSksDQo+
ICsJCQkJICBkbWMtPmRtY19pbmZvW2RtY19pZF0ucGF5bG9hZFtpXSk7DQo+ICsJfQ0KPiArDQo+
ICsJcHJlZW1wdF9lbmFibGUoKTsNCj4gKw0KPiArCWZvciAoaSA9IDA7IGkgPCBkbWMtPmRtY19p
bmZvW2RtY19pZF0ubW1pb19jb3VudDsgaSsrKSB7DQo+ICsJCWludGVsX2RlX3dyaXRlKGRpc3Bs
YXksIGRtYy0+ZG1jX2luZm9bZG1jX2lkXS5tbWlvYWRkcltpXSwNCj4gKwkJCSAgICAgICBkbWNf
bW1pb2RhdGEoZGlzcGxheSwgZG1jLCBkbWNfaWQsIGkpKTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4g
IHZvaWQgaW50ZWxfZG1jX2VuYWJsZV9waXBlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
LCBlbnVtIHBpcGUgcGlwZSkgIHsNCj4gIAllbnVtIGludGVsX2RtY19pZCBkbWNfaWQgPSBQSVBF
X1RPX0RNQ19JRChwaXBlKTsgQEAgLTY4NSwzNw0KPiArNzA2LDE3IEBAIHZvaWQgaW50ZWxfZG1j
X3N0YXJ0X3BrZ2NfZXhpdF9hdF9zdGFydF9vZl91bmRlbGF5ZWRfdmJsYW5rKHN0cnVjdA0KPiBp
bnRlbF9kaXNwbGF5ICB2b2lkIGludGVsX2RtY19sb2FkX3Byb2dyYW0oc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkpICB7DQo+ICAJc3RydWN0IGk5MTVfcG93ZXJfZG9tYWlucyAqcG93ZXJf
ZG9tYWlucyA9ICZkaXNwbGF5LT5wb3dlci5kb21haW5zOw0KPiAtCXN0cnVjdCBpbnRlbF9kbWMg
KmRtYyA9IGRpc3BsYXlfdG9fZG1jKGRpc3BsYXkpOw0KPiAgCWVudW0gaW50ZWxfZG1jX2lkIGRt
Y19pZDsNCj4gLQl1MzIgaTsNCj4gDQo+ICAJaWYgKCFpbnRlbF9kbWNfaGFzX3BheWxvYWQoZGlz
cGxheSkpDQo+ICAJCXJldHVybjsNCj4gDQo+IC0JcGlwZWRtY19jbG9ja19nYXRpbmdfd2EoZGlz
cGxheSwgdHJ1ZSk7DQo+IC0NCj4gLQlkaXNhYmxlX2FsbF9ldmVudF9oYW5kbGVycyhkaXNwbGF5
KTsNCj4gLQ0KPiAgCWFzc2VydF9kaXNwbGF5X3JwbV9oZWxkKGRpc3BsYXkpOw0KPiANCj4gLQlw
cmVlbXB0X2Rpc2FibGUoKTsNCj4gKwlwaXBlZG1jX2Nsb2NrX2dhdGluZ193YShkaXNwbGF5LCB0
cnVlKTsNCj4gDQo+IC0JZm9yX2VhY2hfZG1jX2lkKGRtY19pZCkgew0KPiAtCQlmb3IgKGkgPSAw
OyBpIDwgZG1jLT5kbWNfaW5mb1tkbWNfaWRdLmRtY19md19zaXplOyBpKyspIHsNCj4gLQkJCWlu
dGVsX2RlX3dyaXRlX2Z3KGRpc3BsYXksDQo+IC0JCQkJCSAgRE1DX1BST0dSQU0oZG1jLQ0KPiA+
ZG1jX2luZm9bZG1jX2lkXS5zdGFydF9tbWlvYWRkciwgaSksDQo+IC0JCQkJCSAgZG1jLT5kbWNf
aW5mb1tkbWNfaWRdLnBheWxvYWRbaV0pOw0KPiAtCQl9DQo+IC0JfQ0KPiAtDQo+IC0JcHJlZW1w
dF9lbmFibGUoKTsNCj4gLQ0KPiAtCWZvcl9lYWNoX2RtY19pZChkbWNfaWQpIHsNCj4gLQkJZm9y
IChpID0gMDsgaSA8IGRtYy0+ZG1jX2luZm9bZG1jX2lkXS5tbWlvX2NvdW50OyBpKyspIHsNCj4g
LQkJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIGRtYy0NCj4gPmRtY19pbmZvW2RtY19pZF0ubW1p
b2FkZHJbaV0sDQo+IC0JCQkJICAgICAgIGRtY19tbWlvZGF0YShkaXNwbGF5LCBkbWMsIGRtY19p
ZCwgaSkpOw0KPiAtCQl9DQo+IC0JfQ0KPiArCWZvcl9lYWNoX2RtY19pZChkbWNfaWQpDQo+ICsJ
CWRtY19sb2FkX3Byb2dyYW0oZGlzcGxheSwgZG1jX2lkKTsNCj4gDQo+ICAJcG93ZXJfZG9tYWlu
cy0+ZGNfc3RhdGUgPSAwOw0KPiANCj4gQEAgLTczMywxMSArNzM0LDE2IEBAIHZvaWQgaW50ZWxf
ZG1jX2xvYWRfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSkNCj4gICAq
Lw0KPiAgdm9pZCBpbnRlbF9kbWNfZGlzYWJsZV9wcm9ncmFtKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5KSAgew0KPiArCWVudW0gaW50ZWxfZG1jX2lkIGRtY19pZDsNCj4gKw0KPiAgCWlm
ICghaW50ZWxfZG1jX2hhc19wYXlsb2FkKGRpc3BsYXkpKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAg
CXBpcGVkbWNfY2xvY2tfZ2F0aW5nX3dhKGRpc3BsYXksIHRydWUpOw0KPiAtCWRpc2FibGVfYWxs
X2V2ZW50X2hhbmRsZXJzKGRpc3BsYXkpOw0KPiArDQo+ICsJZm9yX2VhY2hfZG1jX2lkKGRtY19p
ZCkNCj4gKwkJZGlzYWJsZV9hbGxfZXZlbnRfaGFuZGxlcnMoZGlzcGxheSwgZG1jX2lkKTsNCj4g
Kw0KPiAgCXBpcGVkbWNfY2xvY2tfZ2F0aW5nX3dhKGRpc3BsYXksIGZhbHNlKTsgIH0NCj4gDQo+
IC0tDQo+IDIuNDkuMA0KDQo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8C6A4B3E4
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Mar 2025 18:58:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05C4388FB2;
	Sun,  2 Mar 2025 17:58:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0F6w0O9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EFD588FB2
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Mar 2025 17:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740938286; x=1772474286;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=twhzN3oU+s373Bc3emySnKpN2HURqZlQJtG9eLgAZww=;
 b=C0F6w0O91bbPHyXr597L81QLkwwu/V/zikXEEWlBR3jhtX08hVLhfeWX
 m/8eAqgcLJNvBppjl97FZtrO415XXhfpFHhHUqyDHaCVZvfJFDPGFy2YD
 B/r2yRq4PE7iDpQ2DILoW+Ft/4ldzxnus2ugPMxUsxraJk3/XI5TRScNN
 5+FTypJl2KnkhjvyWWC5GsG7wrW3dXWp2pVkAZkUgp2gTFRNgpa315//K
 mtpBNf4AnkUDSdW/UrZku31pV7PUwB4SCpN+fwjv1xp56a5MSGf0gk8vo
 yT5G/rFUH6dK6J4xjVrx+sr2jmccBUHbRnNL0rsvCOpA9iT/C7xfhZvd7 Q==;
X-CSE-ConnectionGUID: vd94zVhcT2KT1M86VqVG2Q==
X-CSE-MsgGUID: 6fQr+QXdQxG58W2xtx49mQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="53201730"
X-IronPort-AV: E=Sophos;i="6.13,327,1732608000"; d="scan'208";a="53201730"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 09:58:05 -0800
X-CSE-ConnectionGUID: S47ZYR/tTx+mMuKxVaswRA==
X-CSE-MsgGUID: wnWCnEmwRg6lWhQpeHrrjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,327,1732608000"; d="scan'208";a="148610217"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 09:57:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 2 Mar 2025 09:57:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 2 Mar 2025 09:57:53 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 2 Mar 2025 09:57:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WNbjTzv7r8NJXW58L+3NjfuW8VdYM7iuzLsV9+/HTQyGOTwoMiOcy6Yh8LAtQipz6MgfwgJnCcjou4XLVYSRqrP+sy8zjyGUcVRorLn8cHFdbP8SWPPE+a1MtPxLaUXQI5mcHvB0mEAXA3m4PFbEnQvpkmBLwDrFi79YJvvp/RdWDscKKfg9vG3dXjM0yVkDWDKNt5Dzc535vZ4nVauA4OYtJAPid7hwrM2+7dox8SgqpBW29rYBAQ7BopWwGkgpHN32kgaA86Gbu2+N6kXZEnJ15po75BYADU6uSucWaFdevP58YxkCr9I+WevEApwXomitluXWM9P6KHyTDm5O1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=twhzN3oU+s373Bc3emySnKpN2HURqZlQJtG9eLgAZww=;
 b=r3i9b2BivW9MPjh018lFkk3F2XrH3qTKSBsJtxeJYOSRZB3yfILaWGFe0+SaRG9mBMGe9j/6RLfTjERXPzGU53WvcfaPEWyeQASytkZaiTGtFz7d1kkwVcFVrW0gGWfqA5rZPtzfXgpYTVWgs4fNgz3QwaGmVXcFYMDuCr3fuqHKrQ08ubd8VXqD9s2m6Q+s2d9nnA9lR8uqv/eUt/XnYnbVA9ZFvb1Uk7BJAkpOCLxGB+QkdDTpPGEoecP7eIIqnvkVv5I+Xu/XEk7Aezz6l8N4L0BGaMm6j+exHz438uMYDxCC3McstN0XRFZp1Uksi/qaXHiECbLr709NayzX4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Sun, 2 Mar
 2025 17:57:37 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8489.025; Sun, 2 Mar 2025
 17:57:37 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 04/19] drm/i915: Use intel_plane_set_invisible() in
 intel_plane_disable_noatomic()
Thread-Topic: [PATCH 04/19] drm/i915: Use intel_plane_set_invisible() in
 intel_plane_disable_noatomic()
Thread-Index: AQHbgkrme01C3DcJjkurHXoo9qyK07NgNJGA
Date: Sun, 2 Mar 2025 17:57:37 +0000
Message-ID: <7cc8cc513c1e29a9badf04835369c6f402c4c41e.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH7PR11MB7478:EE_
x-ms-office365-filtering-correlation-id: 8422712f-f596-4743-fde0-08dd59b3b7e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MThtOXZHT21oTjYwTU5UcXdRVEJwOWY5WEJ6NkVYWnoxSFhJL0trL2F1VG5l?=
 =?utf-8?B?WEF2azk1ZXdYallQd3JwVSsxYWhia2h0NDY3eEx5VSsxb250U01NRGo2M3lP?=
 =?utf-8?B?Q3VhcTJweE1mZzJSUGdweWFvZnRpTDBNbXA4QkoycndLT3liMGtqSEhOMjFN?=
 =?utf-8?B?eUk0VklVaG9OR0xmWHdoVk1FVlo1UFptSmx5K04yOG9LT0lybDRPUEsxT1RN?=
 =?utf-8?B?OWtYZ0hiNU1uYjVEeE5WL0RnRzlERitIK28zZWgwY1VhNkMrd2hlWXZTdVFW?=
 =?utf-8?B?SlAxaUx2aFhiSVAvM243NmthRThtK3lncU5lWHFWc01GWEFhSEtrTWtVNkxo?=
 =?utf-8?B?QTRBbVBUck9hQzgzQ2x5ZThJZmI3SWRkSU9HdmNteURkc0hWWTZyeEdTMWE2?=
 =?utf-8?B?Yk55WC9tSWd0STl6N3phdlMvcTgvNzU2dEEyVjJkSVVTTDlwdkd5OFNpVmFl?=
 =?utf-8?B?bG9XYmlZOXdUVFV5V3E3NUozMnVnMkVna1Z4VmRUZkZkT2tpZWoxYjFWakZk?=
 =?utf-8?B?aHRyRmx4NmVsY0h3WE5qZ3A4b1I4UWhoeDl4M0RrcElRQVl6cGVMTDZ0Ulp4?=
 =?utf-8?B?Y2c5Ykh2dWE0eG9aTFJvVHVkQ3h6VHR2NFlTRjhQMmw5c0dSMTBLeUhGSExW?=
 =?utf-8?B?dStTejB5ZjBqa1E0MEluL1ZqcXdFOUNjelh1UlNBOTc3ZEVjWFh1WFVEb2dy?=
 =?utf-8?B?d2FET0paZXpXdmM0emJsUVhpeXVUZ2doN3h3Nlo2c1JmVHlWM1NJbzU3WlhB?=
 =?utf-8?B?WmxTWmk4MFRUVXNPL0pCMU1BcnlqcHVDMlFYMW1vdUVxNDBocGQ2eFF1WVdr?=
 =?utf-8?B?dTJ3N1NZTlZnQWhZNUhDNjJmMjlHb0xqSzBpTnRRaVJRUmViZ0cvWHh4Q2dj?=
 =?utf-8?B?bkczeHhhbUs5ZEUrWVIvbm40SDRldUthT3gvcDU1WEhTdHdiZEVjaW5pMmVN?=
 =?utf-8?B?S1V4VURKdDArWHp4cElqWWtoTyt2ak5nUHJaclZWbjEzdDlML3BCeTEvOStx?=
 =?utf-8?B?aDFRMWp5NHY3V3U2YjZuOXZvUDJIK3dkMlcyemM2Yytrdi9rWVBHNHJQdkxQ?=
 =?utf-8?B?WExVVXNwTlNNK1JBK2NWQVBxTUV1K0sxeWhWTlBvekVkSGdIZjBVNU5qSWFv?=
 =?utf-8?B?YmZQWEt1VHNtUEdmdEF5aU5XK1MyL2I5VjlUZkZHYzZnbDZpSUN4LzRLUkN2?=
 =?utf-8?B?V2RCdkl5alBwZXh2b1MvaCttZVU3ZWo0blpqSm1jQWRJMHZGOWo5V2NOUlU5?=
 =?utf-8?B?QjZzbGxoK1hnelpGclIzczdieXd6YThpWVFabGtTUS8zeTdNOHJZQ3N3TTBH?=
 =?utf-8?B?TUhWVzlMVHlYQVY2NE5La3NwUDJtbUl6VTNGRzc4a3BWNTBhRjlMYTBmTVFw?=
 =?utf-8?B?ZmdMYlR1MXJGNXA3VjZwU1RTZmJKY21GblN0dXZ2WXg5TEVyUnEwR0VFTG5H?=
 =?utf-8?B?RVpTWUYwSFFoanlFNUtiWkNQUTJnTS93TmFhcGVOMUtkYmF1UVRkYUxrVFV1?=
 =?utf-8?B?bDJ1VWpkRHB6L2UyMUxMekg2VEV2c3ZTZUtiVG9VSWRLay81ZnJHbHZIOFZl?=
 =?utf-8?B?VTZUOW5BdUM4bjRvWFErTHlzSXVTNEwvMHhwUEt1VDJMLzkxaHNMSHFzamFV?=
 =?utf-8?B?SEtTNk12VCs1eDdwL3NySDZNVldoSEVZcE1DcFNUNnVoY25DZ0NYSm9XSFQy?=
 =?utf-8?B?Y09BRXJlVTVqRFpkdXd2dEtUQTRGQ0N1NkxGY1Z4VmVKblZrQklKMkRkY3ZV?=
 =?utf-8?B?dkV3ZisreTlPcGZDWXcrc1pjanorUkIwSDRNbDBIVGlsZ1YwM1FLd09jaGVE?=
 =?utf-8?B?Y3hHMVBvMGR6N0tmSWxPcVJwdThiUWlPb3FGaVpkTFBoR3ZmZWxmcndvRTk4?=
 =?utf-8?B?VnMxRmdqVzd3TkZwa3Vucjl0OWxuWEpwWVNacEI2MTR2Tm5xd3QyVFV0eS9u?=
 =?utf-8?Q?tjFY6Vy6AYt73tYIyX7/fyKtTxzi5yCR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2pWbmp2d0JjYmg5bUNWUDQxUFQ1cDcxVmZ3MmdqSTNqekpBS3g2UVJydGxV?=
 =?utf-8?B?am1oVTYxNzBIMzU4UU8vMWlKZDZYYUtpNEQ2ajIrUzVzdTViRDYrNVJFaElq?=
 =?utf-8?B?QlpBdTFKdGY0YUNzS3RmWkoySUVHQXgyWVFRVFlNOVl5NmZOWUNxejZXVG5C?=
 =?utf-8?B?Y1Yyc0t5MFp1M2FaT3pTRTlsaVI4dXc3MVYwYU5Rb3BkdHh6ZzZpeHhsb0Ju?=
 =?utf-8?B?RGZzRU9rRzZqaWl5YjY2RHcwVVhtYXQ1eDhNeFZFejFUYnRVVUVjSlQvejZz?=
 =?utf-8?B?WUs4SnZIcDRTTElUa1ZkczdkZEFqN3I4SkJVeEtlb2hTWkRzUkIxbGxwVTh2?=
 =?utf-8?B?MDg5WEwxbGx3NUJhOVkwNDZZbnppaGVaVThvM0JTTUt0bEgwZ3A3YkEvWi9C?=
 =?utf-8?B?emdsNUNvUHZyUHZVYVVGazJrVUVCMUZvZDRFOVZZcFArY0IyNmJwaGxDNklJ?=
 =?utf-8?B?eHk4TGhwYTZQeHNGWldPcVI5MVZUSWhGZDUydStNMzUweFZ2N2UxdVdEZ01n?=
 =?utf-8?B?OGRLcHpTY1c3MzFnU2t2clpQN3loY1VyZXZGYmtTYzhycFI0RmlxTGloaWFW?=
 =?utf-8?B?SkRhR2VZaWtOYWo3UkxXR01NenErMyszWTFnQ054Tk9zVzV5dEJ0aU9mN1Zi?=
 =?utf-8?B?dDdlODYydmNmMC94NGZZSW91K2o1SXBJWmI1RlNjTzhqYjVwUkNON0VxNXli?=
 =?utf-8?B?RGFIcE5VWEkrckpCSTUxampvdFNlYm1HdmhCVUtlRW9kMUdWVnZUQzZuT2ti?=
 =?utf-8?B?VjBSbjNVYStrNVpJYTZXV3NTWWthditReWgrUHZRUEV6RzBBZ3FzQW9YWGFF?=
 =?utf-8?B?bGpKTkE1SkRhZ29wcVFLV2E5WlZDSUNrblFxVXA1anJsWnJLRzY4OFNyTDNa?=
 =?utf-8?B?L3RTUzN5QVRPbWtZbldVYm1BWUJLY0RFank1Y2pDQ1hVY1lnNk5vNzZFa29X?=
 =?utf-8?B?eXFPc0dldko3VDNXdFA2amJQM3d1TTJLYS9UMWhocVpKNWxPbGNYUTBpMlBC?=
 =?utf-8?B?REoyRTlTQzJJbnh2RWFEbmFuWkl0TERreEtLWTFNUlZ4L0NZTmIxa0JZaEtr?=
 =?utf-8?B?NHc5TkYyb3J5djFvMUpraWl1OVhieHJrSGNURDVLSXl4QU1Tc1hhUzdDcGNr?=
 =?utf-8?B?YUxreXRmK3lIYnh3ZUFhZmNKUGthV3F0RUZpT0lrVGh6UEdDYzVFWGI4UlN3?=
 =?utf-8?B?THc3TXZLV3dwaHl5bThTM0poVlRFcW1RdUd1MTJHeFU1YW9VTmI4bGhsTmJW?=
 =?utf-8?B?SjdqbWRuRVJWRkxVTUNOYmpwaGVDNmFrL0Nhdk9lNVlmaWhpUUUrMDJRUkF3?=
 =?utf-8?B?NlQzMVkveDJwM0RLTGRQWW5YejZqSzNxTFR6NjV2dUdRYzVrdzBBLzVwVnh1?=
 =?utf-8?B?Tmp2M3JMVGIrWnlkdWFTdHN4UldFeUoyTmxIWVM5am9BL1UxeDFob0pTcGVI?=
 =?utf-8?B?QkhncnFGajlZZTBieW5YMVBjRGFmaTZqZGhMM0VkVGRQNy9MckZBNGpQYzRG?=
 =?utf-8?B?YW84YTBXd3paMjA2QlJaTk5nbWNSNGhhK1NPaUZ6K1BqQy9kUmFwbWVIcG43?=
 =?utf-8?B?TWdsN0R2bFlZdlJ4dDZOUm9zMFFxOWZDaHUzL05wWlI0TmlPT1JqY1ErK3dD?=
 =?utf-8?B?V2NzL2xZRkhScU8xQnpFTjdQMXVYV0l0c0orU3Erci9GZkFiS1hIZDZKWWc0?=
 =?utf-8?B?bS9rY2h4bkdvaTl1VHM5OUd1eVZ4QWxER1N5WXUvWFlUNDRBeFl0UHhtWnU5?=
 =?utf-8?B?ZkpXS1FXMDFvU21xN0pCa2hGTnQ5SXI4YWlKOGlUMzlDQWtTOFRidXl6YVc2?=
 =?utf-8?B?OFZrWnpHRWZ2VHVEM1dVUW15bmg2cW9jS3VacUNNV0dPMnAraXg0dVNOTjdl?=
 =?utf-8?B?YXIvUllRTXVYSy9JOC83SDdraFZjcCtqNFczNW1EU1Y0L1h6RWJhUjlmajYv?=
 =?utf-8?B?bUl3UmtCcGxXQi9FZmpqZWxNOVZEd0xGZis4bjVINUtodEQrT2dxUGUvTldQ?=
 =?utf-8?B?SG5SQWFicFJGanBtTkMrSm9WNHpwOWdzK3ZsY0RRMk9ydVh1Vy9vMlZRdDU0?=
 =?utf-8?B?aGN6akF4V2pQODU1cW1lSnhuZEdKL3JOQ0VXSTNKb3orU3VsYURhei9rNjZ1?=
 =?utf-8?B?WE42ZnNyV3N1QldJOGpOR1BTNjFEOFlFVm5ZQXk4akd1OGRDamI5UGRPbG1Y?=
 =?utf-8?Q?LV77Kn2iXFUczIHmzIFN5iY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E89AD049BCADDC45920372BDB790602A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8422712f-f596-4743-fde0-08dd59b3b7e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2025 17:57:37.5328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HhdJxdrdoiqpSOQ1eTUhIypIp+UO2wEPNK1gQc3+iogKSpYV2IwcVLFHCC+w9+49C8ToQadfjCjWzJAd/hUtPysSDG5TMlyhjbwyzpJA+7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUmV1c2UgaW50ZWxfcGxhbmVfc2V0X2ludmlzaWJsZSgpIGluIGludGVsX3BsYW5lX2Rp
c2FibGVfbm9hdG9taWMoKQ0KPiBpbnN0ZWFkIG9mIGhhbmQgcm9sbGluZyB0aGUgc2FtZSBzdHVm
Zi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIHwgNiArLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDUgZGVsZXRpb25zKC0pDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFp
IDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggNzViMTg0YzkzM2U3
Li45NzU2ZjUyMTg0YzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+IEBAIC02NzQsMTMgKzY3NCw5IEBAIHZvaWQgaW50ZWxfcGxhbmVf
ZGlzYWJsZV9ub2F0b21pYyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gwqAJCcKgwqDCoCBw
bGFuZS0+YmFzZS5iYXNlLmlkLCBwbGFuZS0+YmFzZS5uYW1lLA0KPiDCoAkJwqDCoMKgIGNydGMt
PmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lKTsNCj4gwqANCj4gKwlpbnRlbF9wbGFuZV9z
ZXRfaW52aXNpYmxlKGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlKTsNCj4gwqAJaW50ZWxfc2V0X3Bs
YW5lX3Zpc2libGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUsIGZhbHNlKTsNCj4gwqAJaW50ZWxf
cGxhbmVfZml4dXBfYml0bWFza3MoY3J0Y19zdGF0ZSk7DQo+IC0JY3J0Y19zdGF0ZS0+ZGF0YV9y
YXRlW3BsYW5lLT5pZF0gPSAwOw0KPiAtCWNydGNfc3RhdGUtPmRhdGFfcmF0ZV95W3BsYW5lLT5p
ZF0gPSAwOw0KPiAtCWNydGNfc3RhdGUtPnJlbF9kYXRhX3JhdGVbcGxhbmUtPmlkXSA9IDA7DQo+
IC0JY3J0Y19zdGF0ZS0+cmVsX2RhdGFfcmF0ZV95W3BsYW5lLT5pZF0gPSAwOw0KPiAtCWNydGNf
c3RhdGUtPm1pbl9jZGNsa1twbGFuZS0+aWRdID0gMDsNCj4gwqANCj4gwqAJaWYgKChjcnRjX3N0
YXRlLT5hY3RpdmVfcGxhbmVzICYgfkJJVChQTEFORV9DVVJTT1IpKSA9PSAwICYmDQo+IMKgCcKg
wqDCoCBoc3dfaXBzX2Rpc2FibGUoY3J0Y19zdGF0ZSkpIHsNCg0K

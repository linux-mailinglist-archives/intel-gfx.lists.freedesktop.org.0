Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E23BE568D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 22:33:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D5210E10D;
	Thu, 16 Oct 2025 20:33:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PimA/D+t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E40C010E10D;
 Thu, 16 Oct 2025 20:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760646827; x=1792182827;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=xRnxzUDQZyJaogPzL+A+hINqIACtBDJt8r/+csn9tCo=;
 b=PimA/D+tcrtVpx/ZmxwxwJI3gLuJxP0FQBd87uR2WjJ4ufopdIf/jmXB
 b2HYJgcO9UZ9RH3nttTvhA+88mqgrB+dux+Dx9+KKVF0ZRWer26eh/8En
 VGoKAFKd9rjXe1PTHj/lrRzONZgXT1XKY8TnMzBybAEKlAZfbVE3UNW/J
 EqbSs9Y8+lZersZk70nz36h5gHdeKBPNuUGAyno76NNKv434m+hzXMnVW
 nRgqVsURYt+HG2YRbVnjZ6ek8XWDMi9WPz/XXraAZ9+kBjqlhFd8DbqJs
 vhYrb7YGQnOJ0W00yuSp6hcZZnKB/yO+Am+2fgUppwcHj/f9PUCHU4ZqR g==;
X-CSE-ConnectionGUID: UI4DId1URM6PKuU/IQ30Rg==
X-CSE-MsgGUID: 5s/MNXrCRFCcbI4A5eWoyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62562881"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62562881"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 13:33:46 -0700
X-CSE-ConnectionGUID: fsbuc2q8R2q1Pi3dph7j/Q==
X-CSE-MsgGUID: Ita+qgk6TVGPqVz5EEmt/g==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 13:33:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 13:33:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 13:33:45 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.16)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 13:33:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vJqmeKWFNRppvbMIsAjcHs2/vGsWD+nAnGrDQOiOB6TpvFXYsq1ECtln0pnearWtF9kbvmy+arwia/CZWmNt/N/RwU0ekPssk9pzvhFrAJA0H++cG4YmifbJeqUlF5FjSxnb3sJFkGzJFU/C1Xo/sNxaoL9G+KWt2gMar6LOscTIAH/qQrw6dipVZo61L6SS6AW/9GO1CLH3fqUEwBucNo6M9A3+q7dFbUZGWnC3jEcPWgP3CXDQ81MLdNSxrcJjmzSYINvHdFStduhmDHw9MHDE6Sn5IfU3pNws5fMX7JUc9DxTqjv4Os+1oJaB03HS2+VTogkLjZEihs751rkbBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U6D8nKmloSgo5d/VvcL+WRHmLep2ondvw+t0Jvb6Z5c=;
 b=ML79EQ4gstn5nzu89W++LYOnRE0E1hVC+msAWa4DZGIPCQWVPGqlwUjl+VyovAF9qHdrISVcTX3oLDG6i0c28vbbMzOA5t3HVPSxTH26WR2fZwC44y3jDPgxeHosR/3DaC7rVRHJln5l3Kz1U2W46v/Ktr/X1IrW5kKOAz0hiCkKIPyL5A0RKRpBRyw7RJI5omg9TeJJBxCaJNSH4CrNPZHLGhgsr5jRxDO0pYGrV6zB5BWT4kHKy6NsyZkoUBN1oL/drV7eTNDrbnEG7hQ5BMOU4Ih5eD+1Eaoa9bQbmncjY4bJqO2diaXUOAo3Gag87muBRQnUkOIFeoVDVwSg+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB6955.namprd11.prod.outlook.com (2603:10b6:510:206::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Thu, 16 Oct
 2025 20:33:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9228.011; Thu, 16 Oct 2025
 20:33:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <49092d9e223f524bb4a8f478e9cf964a465e7938@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-14-d2d1e26520aa@intel.com>
 <49092d9e223f524bb4a8f478e9cf964a465e7938@intel.com>
Subject: Re: [PATCH 14/32] drm/i915/xe3p_lpd: Adapt to updates on
 MBUS_CTL/DBUF_CTL registers
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Thu, 16 Oct 2025 17:33:30 -0300
Message-ID: <176064681063.2362.656250585777379141@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR11CA0065.namprd11.prod.outlook.com
 (2603:10b6:a03:80::42) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB6955:EE_
X-MS-Office365-Filtering-Correlation-Id: ffa4ada3-2966-4898-5b18-08de0cf34714
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QW05L0xsYzdWM1JNZWhrTVJYRlNYOWc3WjlVNWNzQzZYajVKL1VINGxGUlIw?=
 =?utf-8?B?RnNIL0g4NjJVdmJqMERWQ1NxMWpaOGdGTnE5M0xnVG9FRk5nNFNpc29BNnE2?=
 =?utf-8?B?bEtPR0dXMkU3RjNueUNhY21XY2N6Sy9zMjZlU2dBb2VHOUMvUU9vUTNiVzY1?=
 =?utf-8?B?ZUJXLzFmYXFOb0FwZll2OWtvRml2dmV6YUhtUlhkVUREVmxIeDB5VWZGOGtk?=
 =?utf-8?B?RnBWcWNmeTZnV2dtRXBLNVAzTWlVc1dBemNiUkxlOWV1d3A2bktQak9OTjc5?=
 =?utf-8?B?eWR2NzZMWWpicWRkQ2RQejhPU05nNEN3MFN0N00ybHFoak1RdEFZVDdrcUdl?=
 =?utf-8?B?Z0tiR0lzS3orYU1ya29GUzhVOTZZalJHcnlDY1RUSTRtVVduZGN1SHR3ZkVQ?=
 =?utf-8?B?TUdnMk9vRHpJOE1sZVozT3I3YU94Y0FxbXB5TW54T0FYUUJNb3VQcUJyL29k?=
 =?utf-8?B?VytSSUZWaEwya0FjcDJoRXgxSFdQWS9MakZ5K3J3UGxoQ25WRk5qcTNkOGpR?=
 =?utf-8?B?VWVTZTF1ZC9OS2pnWnQwZk5IUHdJa2ljbWM5S09La01ZbTRoTE9lckJEZzBy?=
 =?utf-8?B?OFRxVGd5TlZwc1U0bGt1TGt4dURCSzRPRWhMbTNYZ2ZTN0lSQUxHS0dYTTBJ?=
 =?utf-8?B?T1hyZEtsTFZrTWFqVjJtWUxDaW5GdHFHRXY3dUhaZFlGYi9sM3VTWXpBN1h0?=
 =?utf-8?B?WE1WWGtPbFJOd2ZkWkM3bm44aUlnRnV1NHlYa2xqNWlyemNjUGtvTmt3L0l2?=
 =?utf-8?B?RlVvK2dIYXBJWXkrd0FaM3pzbWxVVk1LSkVBNGdnWWxvSkZXdVRaeC8xaFdm?=
 =?utf-8?B?elBoY3JsK3Q4UW9UYnFGTTNGK3BpcEZlRURIWjNZdFF1OUpNTUVqNUhvQkRF?=
 =?utf-8?B?NTVSOWpBcXZNZ3RWYkdTZm9Vd2x6ZndOVzArenlGRnJ3OCtabnhpVUQ5TWgy?=
 =?utf-8?B?M292MGw3cEh6WEJwNjNpUWNLMXVxWnNUSXl1aHZ4cjhRTFNyTlB2OEpDbmlP?=
 =?utf-8?B?bUtjYjhWYWs1Q2U5UXJuNmZxYWo0elM0S2M3ZGwxd2txMHA2c2ozL2xGUldJ?=
 =?utf-8?B?K2R3NlpPQnY1MFIyRFpoS3l0c2hibG5DT1FGdmNZOC9nWG1DMXhwYXcrYUlQ?=
 =?utf-8?B?aENTdmFwS0RLUGJpZjNSYVQvNTh4R1JyMWl5SjdaaEMxWTdiQ2dHT2RCMXc1?=
 =?utf-8?B?bWdiSDZFL0ZpNEJibmxsaDUrQjNBUFNpZUlrU0E5dzlYelVHRmVkZU0wRVlL?=
 =?utf-8?B?VUpYakthWDVUOVdYcEt5empXZFl3cnhBcHZtWTM5VU9ZckdZVGhUaVhxVEw4?=
 =?utf-8?B?OUNRbXZabk5PWmdzRk52Wms2cFhHcUR1TEozNG0wbDhldDlUam5vNmtmMjd2?=
 =?utf-8?B?eWpBZFBkQ3NkOUlSZEVRQXdzelJkNG5jVjdiZ3ZvQTI3Mmp1UFBNV09QSzUz?=
 =?utf-8?B?UHVxTEtYdGFGVnZrYVY0WE8rUS9JYUhyTEIzdW94czFYN1RUUUJjWENTTlRk?=
 =?utf-8?B?TUlxcmEwNmR4bGtXdHNiVC94Qlk5RWY0dVFYT2oxMkFhYzF6VTV2SnZaSU8x?=
 =?utf-8?B?ajBnMWVaRDJzcFpLZ3BYYUNmRUZxeEFYTnF1REhqRSt2RDZiUVhNWUxNbUxP?=
 =?utf-8?B?V1U1MDlpQXVLanI0ek0rZUduQllYOEJQcndkMkVFUmJTbUNNMlkvMkI4enZI?=
 =?utf-8?B?Z3JiK0kranF6blp4UmR3aU9ycVYwQmtaSzRnQU9CaUI2eWFkUU56NHJUNmZY?=
 =?utf-8?B?UkRQRU1FMmJlRUVnRDF6UmQrV3p1UlVFUWpMWUpabmh0dWVYam00UHI2K1do?=
 =?utf-8?B?a3J5UmhYQ0tCcndjc2hLTHZ2M2JXbndHaGx4TTdZdDhtTWlSTFZDQjVNNVR4?=
 =?utf-8?B?N091anFrRG94dTQxOFlSRkFWVU5aWWdDS0VXcnhyMzk3VmdSVE9RYXo4ak4z?=
 =?utf-8?Q?6u5neQAPVXDqgk0VEnqv5NX6YyQuxhpO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2R5UFRQbFY0dE85bitjRTdiclRPM2J0am9KY2FyUlAwcTFFbngrcHJlbldE?=
 =?utf-8?B?cHFYRUNDTzcySWNaQ1VHUTdrekNJVW1iZ0xFeDlEQnYwVlBBUTVST2NLLyt2?=
 =?utf-8?B?NnZ3ZmZGcFV2SnM3djg1TGVYRS9XdEorVzNNWVYyS0lVR3pBN3RWZXpQQmM2?=
 =?utf-8?B?d3dRaUxjc3lMUWM2ZGNWR1NFYVhraytRMTgxWGtKSGNuVEU0Skw2WnlzMWc3?=
 =?utf-8?B?emFJVWptc2ZhK1NKRW5xUm9FN3J4K1czQ1EwNDZ2YnQ4WjNkU3hFSzZkMUo2?=
 =?utf-8?B?YzlHbDBwNkJ4RGVKMllwRUxIaFJ5SlFrbTBRQTdlUXp6ZW1sNXo3eHZhWWZ5?=
 =?utf-8?B?MnZkVXVDWEsxYk1NN2Y3WTNKRk5oOTV0M21tMUFFZ1dKb012eTBDRHhvU2tK?=
 =?utf-8?B?Q0R2cFFPMHdHTktoVjhCTTYweTZiWTdTRGp2YWxvQW0xd3R3cjhzS1B5dGR0?=
 =?utf-8?B?QkhOZ2ZuMVQraFQ2TnkxQVd6b2J2MEFqckRFUHdVRE9xajU2QnFIOCtsNTNw?=
 =?utf-8?B?MDFZZmZqS0UzeTFKeit4QmY3VWFJUXQzUHRJZVp5TTRNcGRUcXkvTS9lSUpm?=
 =?utf-8?B?NjZ1Q0lPcEh2L2QwNlBvRVpLSlA2UU1nM3VRTXVzTXovZVIzQUR1T3JYYWdy?=
 =?utf-8?B?bnA2QlR6L256c3g3L2ErbGVGT2JLMjZISUpSbmNjSGxEWnhZWlkyUjVhVlJJ?=
 =?utf-8?B?TEZCN0srbndVVDhscHJTY1lnaVhNMVRuc0lUci90VkhXSlIzaVdjMGhmRHg3?=
 =?utf-8?B?NFhoNUIxemRPZXorZm52Y3U5dWd5Qld3dHV6WGJFMytYQTJvSlFPYTZJbFNp?=
 =?utf-8?B?K1dnYVYrVkY4eWVRMVFzQVU3VlIrL3hxZlR0Z1Ywd3I2UUhYZGk1K01FdDZ5?=
 =?utf-8?B?NzNFY0dmWFlBQndwdzhzam9QMW90RWZ3UWtBTU9kT0tTbjcxSXFZaThDakY2?=
 =?utf-8?B?MnRFR3lBclMzSjZ5bFZiYWtmNTd4aktyV0gvSFFuMFlGQmxGam9wSmNYbjMr?=
 =?utf-8?B?eHE1MjhlK3YrQ3VydGhmT2ZKM2ZMKzh4ME1aeEtQWThYc2lYL2c1dHlFVjBQ?=
 =?utf-8?B?dHFjWFNVNmEycTNLZGQ0M1UyNlRzNStlblZ3Z2JjUjc2UFlmSmczTkNodHNX?=
 =?utf-8?B?VWJ6czlRRDFRd3VkL3d2dThabVRFM2pTTUl2OGMrbVgvaGRTTFJJbEhLQzQr?=
 =?utf-8?B?Yk9XaCt6cCt0ZStpOTNlUkM5a3UvamxCZG9YcmMyVEFtaFFHSUxKQmNEUnNw?=
 =?utf-8?B?eEZNdlkyRGJpS0VZV0dGL0hQYWc5R2V5OHlCbE9PYnc0cENQb2R5OHZvYzJG?=
 =?utf-8?B?QTVxOCtYaTAyaExodWlIZjhZR1g3L0plcklyV2VCbi9YVWZXNW9lY1g4RVdl?=
 =?utf-8?B?UEtDaG56UUV5dEtjQXhkSktULzBrbmpBRW5ScVlLRldObG10NVNhVmtYcHBi?=
 =?utf-8?B?WVVGdU45VUI5bGV4dU8vamw5bVdvLzIvWVZudGZ3N2grSGxEcEpmZ25KbXpK?=
 =?utf-8?B?R1lzbmtLVzQrdWIzeGc2TmRzMGlUaXRLSjlsUGlocXdSWkErQmp4azRZOUx4?=
 =?utf-8?B?YzN3c0lWM0JSK2hsSkp5RHNPWXVXekMrZTU2eENTNDBCZWs5dm16OVZhZnAx?=
 =?utf-8?B?b3dzSGY1TkVKS1IxV3ROdzZWaS8rN3BLdVJEVXhsVWhEdjk4RWZYTWpvV0FL?=
 =?utf-8?B?Yit6S1Y3NHdsS2owRmNJV1daYUlMZmZmNnVNZTl0cTZOWFpwSTVhN2J1Z28z?=
 =?utf-8?B?NHhGOWNpanNLc0duejZrcFlrK014cjJLYkFQZE9sMkUwY3R4MFYwVEhaWXFi?=
 =?utf-8?B?U3AweTFsL3ZCY1VXTnRDR0RNU2hMYjVjUU9RZU9zOFVrVFczTlhIQUtEckxu?=
 =?utf-8?B?ZWZHUTIweWY1T2p3ZlExQ1ZldEpxN0M1bDNqL0JmdU9vYnd5ZFZvVER2aUZk?=
 =?utf-8?B?bkQ5NFJCalZCSzVLbXZIMEJLWFBHV1g2S21JcHBsUmxyT2wwa2N6amVZZ3du?=
 =?utf-8?B?M0ZOTWJoTjl0UHZVZ2JERmJnZXEzMCtldm1scG43S1lpSzQwTktvQ1l1VTkw?=
 =?utf-8?B?emROVVBjR3pjcERRa3k5b2g4N25EeXY1Q1Z2RHpqc1F4UTNOWURzaHRmTWQy?=
 =?utf-8?B?elY2T1ZFQkg1b3k0a3pBVkdHRUxUTG83cWJyeVdYaWlXa3Y1QW5EY2RxNEF3?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffa4ada3-2966-4898-5b18-08de0cf34714
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 20:33:34.4425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1DZ5XZ9wVxl+dX7MigOmwVqqhppvDRcXkzlcfDWdtxC4GFo0WeBhypLjKetDd8SESzSaNWWu9mY7x5Es0dUo0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6955
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

Quoting Jani Nikula (2025-10-15 11:58:37-03:00)
>On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>>
>> Some of the register fields of MBUS_CTL and DBUF_CTL register are
>> changed for Xe3p_LPD platforms. Update the changed fields in the driver.
>> Below are the changes:
>>
>> MBUS_CTL:
>>         Translation Throttle Min
>>                 It changed from BIT[15:13] to BIT[16:13]
>>
>> DBUF_CTL:
>>         Min Tracker State Service
>>                 It changed from BIT[18:16] to BIT[20:16]
>>         Max Tracker State Service
>>                 It changed to from BIT[23:19] to BIT[14:10]
>>                 but using default value, so no need to define
>>                 in code.
>>
>> Bspec: 68868, 68872
>> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_watermark.c      | 16 ++++++++++++----
>>  drivers/gpu/drm/i915/display/skl_watermark_regs.h | 12 ++++++++++--
>>  2 files changed, 22 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index 9df9ee137bf9..41f64e347436 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3505,7 +3505,10 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct i=
ntel_display *display,
>>          if (!HAS_MBUS_JOINING(display))
>>                  return;
>> =20
>> -        if (DISPLAY_VER(display) >=3D 20)
>> +        if (DISPLAY_VER(display) >=3D 35)
>> +                intel_de_rmw(display, MBUS_CTL, XE3P_MBUS_TRANSLATION_T=
HROTTLE_MIN_MASK,
>> +                             XE3P_MBUS_TRANSLATION_THROTTLE_MIN(ratio -=
 1));
>> +        else if (DISPLAY_VER(display) >=3D 20)
>>                  intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTT=
LE_MIN_MASK,
>>                               MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
>> =20
>> @@ -3516,9 +3519,14 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct i=
ntel_display *display,
>>                      ratio, str_yes_no(joined_mbus));
>> =20
>>          for_each_dbuf_slice(display, slice)
>> -                intel_de_rmw(display, DBUF_CTL_S(slice),
>> -                             DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
>> -                             DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1))=
;
>> +                if (DISPLAY_VER(display) >=3D 35)
>> +                        intel_de_rmw(display, DBUF_CTL_S(slice),
>> +                                     XE3P_DBUF_MIN_TRACKER_STATE_SERVIC=
E_MASK,
>> +                                     XE3P_DBUF_MIN_TRACKER_STATE_SERVIC=
E(ratio - 1));
>> +                else
>> +                        intel_de_rmw(display, DBUF_CTL_S(slice),
>> +                                     DBUF_MIN_TRACKER_STATE_SERVICE_MAS=
K,
>> +                                     DBUF_MIN_TRACKER_STATE_SERVICE(rat=
io - 1));
>>  }
>> =20
>>  static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_sta=
te *state)
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers=
/gpu/drm/i915/display/skl_watermark_regs.h
>> index c5572fc0e847..7e0877303e05 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
>> @@ -41,7 +41,11 @@
>>  #define   MBUS_JOIN_PIPE_SELECT(pipe)                REG_FIELD_PREP(MBU=
S_JOIN_PIPE_SELECT_MASK, pipe)
>>  #define   MBUS_JOIN_PIPE_SELECT_NONE                MBUS_JOIN_PIPE_SELE=
CT(7)
>>  #define   MBUS_TRANSLATION_THROTTLE_MIN_MASK        REG_GENMASK(15, 13)
>> -#define   MBUS_TRANSLATION_THROTTLE_MIN(val)        REG_FIELD_PREP(MBUS=
_TRANSLATION_THROTTLE_MIN_MASK, val)
>> +#define   MBUS_TRANSLATION_THROTTLE_MIN(val) \
>> +                REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
>> +#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK        REG_GENMASK(16=
, 13)
>> +#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN(val) \
>> +                REG_FIELD_PREP(XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK,=
 val)
>> =20
>>  /*
>>   * The below are numbered starting from "S1" on gen11/gen12, but starti=
ng
>> @@ -65,7 +69,11 @@
>>  #define  DBUF_TRACKER_STATE_SERVICE_MASK        REG_GENMASK(23, 19)
>>  #define  DBUF_TRACKER_STATE_SERVICE(x)                REG_FIELD_PREP(DB=
UF_TRACKER_STATE_SERVICE_MASK, x)
>>  #define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK        REG_GENMASK(18, 16)=
 /* ADL-P+ */
>> -#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)                REG_FIELD_PRE=
P(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
>> +#define  DBUF_MIN_TRACKER_STATE_SERVICE(x) \
>> +                REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) =
/* ADL-P+ */
>> +#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK        REG_GENMASK(20=
, 16)
>> +#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(x) \
>> +                REG_FIELD_PREP(XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK=
, x)
>
>Please just keep the long lines in this file. In this case, I think it's
>cleaner.

Alright, done. Because of the length of the new XE3P_* macros, the
column alignment for the definition is off by 1 tab character w.r.t. to
the items above them.  I took a guess and aligned the already existing
ones with one extra tab for each.  Let me know if that's fine to you.

These changes are in still my local tree as I incorporate the remaining
of the review feedback (and also wait a bit more for more feedback).

--
Gustavo Sousa

>
>
>> =20
>>  #define MTL_LATENCY_LP0_LP1                _MMIO(0x45780)
>>  #define MTL_LATENCY_LP2_LP3                _MMIO(0x45784)
>
>--=20
>Jani Nikula, Intel

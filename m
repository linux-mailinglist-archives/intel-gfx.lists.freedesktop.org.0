Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6282A6D57C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 08:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7210610E1B7;
	Mon, 24 Mar 2025 07:53:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NUwRuM1v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E1B810E1B7;
 Mon, 24 Mar 2025 07:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742802795; x=1774338795;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dQeFcwt11iWfYqN0qkJ7S0cPvmkAU5bYLfhqkQpg1bc=;
 b=NUwRuM1vV55IM4CLXYeWs12fgevRLQH/iCj5p249RWOjv3Q3UED2ndmc
 Ezn/dRg9NwvjfrMSR75nqTpsQeCKBhjde/6Yx1A0iR6wsbrmUwiRD6G5Q
 Jhbcd5jkv3isBRRwY+0vUU4uuhfhRhBBiLfvGM4pf3DZIVarJkQ05U1CQ
 uCaYpBmzzlUkXtB7sKQGKiw/BswRntpTVACfw6g12XRP4tCAXS/TtYA87
 022wXDCo8jxxAqkiOUwwLvbsmHpis0vj1a4u1Mdj6pFthQzMhda4nGpxo
 9faUiC5Lx3pzFalwMU68dPIIhTT3JR5oVB9vIyc0HgTmXg88BkJd4pB8V w==;
X-CSE-ConnectionGUID: 2zNS0OQvSbSvEc/jNFTHCA==
X-CSE-MsgGUID: KhLz17u3QymrVoGZB+NCXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="47647756"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="47647756"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 00:53:13 -0700
X-CSE-ConnectionGUID: TpX17nBxRZS6dCr7j4aVgw==
X-CSE-MsgGUID: 6+Ui+CZNRbWMKKUS16j/RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="161206945"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 00:53:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Mar 2025 00:53:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 00:53:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 00:53:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xCiv9gMDggsKcIwn3wGGStZCRVjFHvfmL1KFK5YAJgIhc2mf+FWBDqmNhLnp5VkXIQtkPsUrFDCsMAFfB6XNe8MACu2i6vhAxZIvHTAKILaSKNoCfFOb1B4ikCw57ZbWVKLrny7b5+PVWR0Fd46eLmfUmnSLZO84a8VH0K9ccz2vV09V8yAj4A6kTUBYnzYVy7+ASeMTqh628H8OuwKEMBMdhGn+i8ODhCI6WqIW+VnNmdOsqtPwsCLQT26OSfYHoMTEK9IVRfcPNPuRKj96Gxouh4xIzs5AByHJ+jz+JcKGNzx1EIBvy+OKrN+L+NpRZPn+r7UI+kIbf/IIcTLdbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dQeFcwt11iWfYqN0qkJ7S0cPvmkAU5bYLfhqkQpg1bc=;
 b=F03quKDESZNjh7YvGsdfBiwwVXh/F7IdWdji0OufrYmAs7RoCd31a1EmjwYl4ArAwBIFzwOt0lupil8CzZWfNFnFs1o2YQKJ21MdQGFkmggp4WcQHDzscDrPdcH9n0pXIN8xUpVl+7/AxtSfG0QFrH0lL5840Dt9q/2rcV5OWCztiB6o54oS6FnDfMtxylV/sZJ7eAk8rXLCOomOk1mkFo4d5Zw5u8z+wzVgR8VkR83PqWbZIBNq1oYMj2oAborBZA24LUjrgi49PUNddA0stQcS6WyK/KggkHsI/Gf9LhhCywLb4tGRnTjSYI7h6Rl6OZOfkmulg1K+4nUkckqUGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7832.namprd11.prod.outlook.com (2603:10b6:8:f5::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.42; Mon, 24 Mar 2025 07:53:09 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 07:53:09 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v6 6/8] drm/i915/lobf: Check for sink error and disable
 LOBF
Thread-Topic: [PATCH v6 6/8] drm/i915/lobf: Check for sink error and disable
 LOBF
Thread-Index: AQHbmQZqO+YQd4TVGk+feMukNjwi8bOB8YMA
Date: Mon, 24 Mar 2025 07:53:09 +0000
Message-ID: <c4b90eadc54b9ccbd99cb86ccc3fe92cdc1a20cd.camel@intel.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-7-animesh.manna@intel.com>
In-Reply-To: <20250319191508.2751216-7-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7832:EE_
x-ms-office365-filtering-correlation-id: 46c5ae68-a81d-4692-5f95-08dd6aa8eb81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cW01Y2Q5Z2J6WXdMMEVJL3RydHpudjdOdlpVYUE0UFJIR3JMNU9kUm5FaU0r?=
 =?utf-8?B?YUE5RC9HWVlWZFlGbFdMN2ZXZ2JlckdKMGQwckVPaHVyaHBxeW1nRVRJNlNh?=
 =?utf-8?B?ZWM4VjBleUVOQjJVNktmZzE5eS9FWVJUZVN6ZUZxbkdPTVZabXBIay9TL0Iw?=
 =?utf-8?B?V3YrTVZGZUFXeDBuT3FCelNGc1NnUUJ3YW5oNmwyTThoU1kwTVIzSFFKdzUr?=
 =?utf-8?B?Q0VjaGRuNkRwbGNDd0wvKzY5Q01NM2JZMzcxWTgvWVRmYkpKcm1lTzhoM2Rh?=
 =?utf-8?B?TmZVaUlhNEFrbDNvdkRaemRkS0lWRnVoMXBVZkJFL3RYSEU3NUdRZi9kcmdX?=
 =?utf-8?B?TGR1b1BQVGFmWFFpNWFBRDJrWlg1TTYrbjdYL1h3M3c3eTB5VXpGdU0zR3Ju?=
 =?utf-8?B?SDZXVFM2dDg0L3lnSDVxckhrc3FBNktGY2pwV255YjlCZ3ZhYytrbWFScVdG?=
 =?utf-8?B?d3lwSTZVeXZrSTJXc1N6V1RuTWlPeHBXUXhpaGMrd0FDSEw5bHVldzlyYXNB?=
 =?utf-8?B?SGlzbHFLKzU4czVuSVJNS2x2bUM5ZmJHOGg3SlNHY05EOGpnZ01VZURldWJ4?=
 =?utf-8?B?ZXZkTlg4RmtCNmN5eXE3Z25SY0FQTExFZ2xJanB2ZnFKY0U2cE5PdjNvM3BW?=
 =?utf-8?B?RzZvUTk4ZWY2Um9kRFdaVElwRlp6RXVuMjJMVGgwbG1PZXc2bWJRSVFFdDd0?=
 =?utf-8?B?djJDb0RMbVlIZ3psSHhWWXBqMmpXUFZROWJVVHRrWlBhNzVmVXVlemNnKzlj?=
 =?utf-8?B?Z29Mb2huT2hGS0Znb3dvcDliUy9NUDQwRzRuSDVtWWx2L0NpZjBGd0VvR1RP?=
 =?utf-8?B?anQyL3NFVzRtbUVMd1M4QlNGU3Rwb2kwVG0xdlVtdFpEUXZDd0p1TDAvbUZO?=
 =?utf-8?B?dlk5Y3VsSE90azd3aGEzTktrKy8wMjJ4WVgrQjdHYUFBT25xQmtRNUw0cjJr?=
 =?utf-8?B?cFNtNVhHRVlCdWtRcE9PSzluSTZMUlNQTXA2Y1JidFlRVEZaZUxZRWhkMHBm?=
 =?utf-8?B?bnF4aUZYU1RLYnlzNUhFVTJ5ZytFd212OUpvT2tJZ0pQQmNSWWxGY3pjRldY?=
 =?utf-8?B?QUxZd2kxSDJ4MVdPRWN3NWxGeTczNUJMODh3bDQwZldFbWVkNFZERFhCSFNH?=
 =?utf-8?B?VHpmMEdqTm1YSTlkT0orUy9PNi95WjJkWE0wWlFGMEJvbDVNcjIwdmRMeW1M?=
 =?utf-8?B?djZOTzBvcUxqbFI1K2xUZG9KZUZQSkwvUWhGZWtTeGc0SnZDRVZsNEk2L0xI?=
 =?utf-8?B?dHdhaU90bmp5NWRBK3lOOEdHWDZnd3psbXpFaVg3L01QbVlvWWU3NUgvVDBM?=
 =?utf-8?B?V1RReVIyelJ3Q2pUNlBEVEZiOGFTcmNzZXV0M01pejgwWGNpZGcwbTI2dkt4?=
 =?utf-8?B?SFhhaE9nd21lc29Jb3cySWxucDRJYkEvZ21HZ0c3YmVWTU0wUGpoeEdBdG0r?=
 =?utf-8?B?blpSbU95ZDJ1QnZWRjB4UzhNY1BqS0ZYVEhueVRPKy81bWtMLzY2ZkhKY3RR?=
 =?utf-8?B?enpBYjJxcVA3TVIrUHQxSUdYb0FGdmdadG42ckVPWEhiS0swbzlsSG5lajZs?=
 =?utf-8?B?YTdoeUlCTkw2Zzl6WXlJYSt4VEhFaFIzWHVkZ3pKTFlGbFR0eWJRV2ZaRkx2?=
 =?utf-8?B?KzVJS1NBajJScHI4RmNCd0syNm9mb0pLZHZDaGxSWWxVbEh5OXZsNll3Z1Fr?=
 =?utf-8?B?aFFCSDQ2c1JXVDduQ3Fibjg1aGcvaHg4ZTNrMUJFaWF2S0UzdjJNUWFlaTlD?=
 =?utf-8?B?eVVxRlVUMTlwa2N0eHVKcHc0SmZRSWNjY3hRd1dXNTNYeDk1ZjBCVElRdWRP?=
 =?utf-8?B?eFBUM1NFWEp6a2N3Yk5BU1llQW90R1h0YmMyUzMwMkwrQVV1bGRDTHI1NHI5?=
 =?utf-8?B?WG90WDJCcEhsOTVFd2lTQm5ZQVFIRjc3RFZQd0NWNkQwTFZtSEtVaHBBaThX?=
 =?utf-8?Q?CnelWpLfyKff1pHORivRFn7U4PRKOAw1?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d3VmWVlDRmVUQkJOK2ZsMm9sQitjN1JsMjRMZnZMV1FxYUkzV1pnWjdyb2NL?=
 =?utf-8?B?RHpSVHVQcFBTbGpLeVFSclp4Sy9wVDNrcW9nNUtWUGhSbGFkVmJVWnB0QW9Q?=
 =?utf-8?B?UkE3WWs4MXdMZHRaYkIzRkZVSXF2TE9CVE1qTTZWSkoybHVWQkk5ZlRFK2hk?=
 =?utf-8?B?ZWZwQkROQUxBNGhROGhNTVJNK2Rob2dJNFp6cFJrMkYyUHZ1L2drTW5hRk9J?=
 =?utf-8?B?MlEzRXlmRkxOK3Q0VXVmYndlblAySFJ5c1ArOFJSeHZlVFdMK3h5OHZNRDBR?=
 =?utf-8?B?aG9DU1NTTG51dm5HQU8wUnFtQVI5RTR6UERXdTdCbG9TZGVqT1l4WUFBcGRq?=
 =?utf-8?B?TURRY1AySjRlL21zUmNQeVpKMlczVVYramRtSjJidTVPUzlBY2hRTW56OE50?=
 =?utf-8?B?TGVFdVB4cE1DaEZabTlKN1FsMWMwbWF5UGdORlZNcFlYVld5eDJGM0hKVjds?=
 =?utf-8?B?YUY1ckgydzh5MURRM1NvbDdPU0xjY3dWM3A5Y2hoaFl5R1RHQVBmK0E5c1Z3?=
 =?utf-8?B?M0tieUhvWitCVWhOeUdjVXFrUG1sL1dQWnBMMHZiLzFUaW5ZUVZheHBJZ3Jn?=
 =?utf-8?B?NDVnWloyTzZ6cklnS2tPSGgxdXFXRmRuQWxlR3dsb0VMUW54UUhDbllGSFZV?=
 =?utf-8?B?QnFiNE5NcEljdVF6M255WmgwblBxcTVlWksreHQwbUNwWm1PT0wzVXZzL1BN?=
 =?utf-8?B?aWVWVGpOWUZRVGRxcGN3VmVlYWZzTDh0ME1md2VCdWxEeDVjaDA5Z2pnR2Nq?=
 =?utf-8?B?YmNHNysrZTZidzhua0JhMi9ZOVIxYWpPK3Uwb3ZrMExISDA0d0x2b3pzUzJG?=
 =?utf-8?B?dldCUVNXMnhZZ0pNWkJsZ2x1RldzU00xNmpVdUtDeVhGRWZvKzlOSEorT2tO?=
 =?utf-8?B?M1JaYjRTNmJScnRITkFhN3FSekpRZTJYc3BaQUNYQUtLUVQ0NDd3UUVuYUhh?=
 =?utf-8?B?YkNrbk44WEZlSHFsemYyVXllNm0rYXpFckwySlRld1dHczJCNmVSYUxaS2Ro?=
 =?utf-8?B?S1JvRTcwNFVhYytUYlczMzR4NzlVTGVLZmNCVUtjVFBUZWhqandySnJRNkNP?=
 =?utf-8?B?WlZ3UGNNYU5zck5kVHcySkJETGRQbjhEUGoxUk1SVmJRQ1E1STBDbmlrRzlL?=
 =?utf-8?B?dFBnSm5qNW8xN01KSjI3WCtLVS8vY2NpQ3NkdWpOa1RwUHdkN2hPS0Jkait3?=
 =?utf-8?B?QnpjWUpFNXRFVzFlNmhaTHBSdDgvR2NncGJBN0ZWeUpyV21WWnJlTnp2U0ZP?=
 =?utf-8?B?bTBUZ0RFenE3VHpRMFlITThzQUd5VmZ0U1pjQ3ZLZFE3Wm1XOWZZdnRBb2tt?=
 =?utf-8?B?SytBZFRnT201M1d6QjB0Y21EVzhlUUw4RWc1Qy8vTVJ0b3gzbG5sNG45TXAr?=
 =?utf-8?B?SlRCdGNoQmhHZ3hUek1UbkEzK0dub2RBaUZnWUxRR2l5cGVDUTU3akJOTEVp?=
 =?utf-8?B?cmlxMXFtV1JNc3dnSStBS29veUQ5YjFzSi9yczdhb0k2dGpVR1ZiL1FDWEVa?=
 =?utf-8?B?dTM0M1hFdWVWb0wzdkVCNFRDdjFyS0hRdFVkT2ovUHRCaE9UWUFMMGJ3cFBN?=
 =?utf-8?B?MW9pa2R6OFJ6c3BrNUpHT2RnZHU5aGV5aHA0UUN4UUlvd1d5cWRQOGhqZWtv?=
 =?utf-8?B?SG5ZNGY2TFcybU1oQ3lCL3VabWEvakR4UTJRUzVsVitoTkVMVTZPVGxlQ3k1?=
 =?utf-8?B?c0ZPU1dVUVJEQWxTRWVDMWZ6TXhFc1RZWVNheDZhVHhhSnp1WkFrUTdNUFpR?=
 =?utf-8?B?ZHltaU5xeGxBZWlzYlN0ZW5WcDFpdlNSSmVPQVhPR2RETGdsY0prak5qL01Z?=
 =?utf-8?B?amloQkxPeFZHUVN6VmdLaU4rZkJsNFdWZ0g3UGdKZzNXajloM3IxdFFBVCti?=
 =?utf-8?B?U3BKZlQ2QituOURQd2F1RmpFZ1lFK0R0ODExNk9XelpNT1NwVXl0dGlHdEhD?=
 =?utf-8?B?N3V1N0lzL2hmc0N3TGlSazIyOFM2UzBueEt3ZzVscHJvOTF5V1ZhY25rc1Rm?=
 =?utf-8?B?aEFVcUxldHBMaWYwMVBmZFBaeEROcGFrVmEycGJPV1NwOGdNVXdhbW5yUXBY?=
 =?utf-8?B?eXQydFFPcWpMK253S1kzU2tIQ3hDNFB5cUdQU28vbEE0ZzVDQmQwL1BtZXlj?=
 =?utf-8?B?ZFpnZW0rUUdHajdUWCs2RmtLak10dkZhSkMwRXFZdk4yQUFiSGJOUnVsdjVZ?=
 =?utf-8?B?TzIzSDFMRmpQZFI5aTBRNXdmdTJOUjlNc3NsWVJubGM0VDdzZjFPWHMvTUhY?=
 =?utf-8?B?aXIxcjZ2OW1PaWRVZ2NEOTh3bmFBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <26D03579D466C44B8722FD300A1EBD03@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46c5ae68-a81d-4692-5f95-08dd6aa8eb81
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2025 07:53:09.4072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f/d/oNco5JuUvF/Rr4NgsAYV6jYNtpMx/BzJPf+Lox134O1xEqoblKa885OFFl8rwmnbJIf43NwsHHxGTBkYdUrEkJyVDQAANrafrT/eEkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7832
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

T24gVGh1LCAyMDI1LTAzLTIwIGF0IDAwOjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBEaXNhYmxlIExPQkYvQUxQTSBmb3IgYW55IGVycm9uZW91cyBjb25kaXRpb24gZnJvbSBzaW5r
IHNpZGUuDQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjogQWRkIGNlbnRyYWxpemVk
IGFscG0gZXJyb3IgaGFuZGxpbmcuIFtKb3VuaV0NCj4gdjM6IEltcHJvdmUgZGVidWcgcHJpbnQu
IFtKb3VuaV0NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2FscG0uYyB8IDI3DQo+ICsrKysrKysrKysrKysrKysrKysrKysrDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmggfMKgIDEgKw0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqAgfMKgIDMgKysrDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgIHwgMTggKystLS0tLS0tLS0tLS0tDQo+
IMKgNCBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4
IGRjMjQ3NzI3NDNiOC4uNTYyZjcyNjlhNTgzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtNDk2LDQgKzQ5NiwzMSBAQCB2b2lkIGludGVs
X2FscG1fZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiDCoAlpbnRlbF9k
ZV9ybXcoZGlzcGxheSwNCj4gwqAJCcKgwqDCoMKgIFBPUlRfQUxQTV9DVEwoY3B1X3RyYW5zY29k
ZXIpLA0KPiDCoAkJwqDCoMKgwqAgUE9SVF9BTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSwg
MCk7DQo+ICsNCj4gKwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJEaXNhYmxpbmcgQUxQTVxu
Iik7DQo+ICt9DQo+ICsNCj4gK2Jvb2wgaW50ZWxfYWxwbV9nZXRfZXJyb3Ioc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiArCXN0cnVjdCBkcm1fZHBfYXV4ICphdXgg
PSAmaW50ZWxfZHAtPmF1eDsNCj4gKwl1OCB2YWw7DQo+ICsJaW50IHI7DQo+ICsNCj4gKwlyID0g
ZHJtX2RwX2RwY2RfcmVhZGIoYXV4LCBEUF9SRUNFSVZFUl9BTFBNX1NUQVRVUywgJnZhbCk7DQo+
ICsJaWYgKHIgIT0gMSkgew0KPiArCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIkVycm9yIHJlYWRp
bmcgQUxQTQ0KPiBzdGF0dXNcbiIpOw0KPiArCQlyZXR1cm4gdHJ1ZTsNCj4gKwl9DQo+ICsNCj4g
KwlpZiAodmFsICYgRFBfQUxQTV9MT0NLX1RJTUVPVVRfRVJST1IpIHsNCj4gKwkJZHJtX2RiZ19r
bXMoZGlzcGxheS0+ZHJtLA0KPiArCQkJwqDCoMKgICJBTFBNIGxvY2sgdGltZW91dCBlcnJvclxu
Iik7DQo+ICsNCj4gKwkJLyogQ2xlYXJpbmcgZXJyb3IgKi8NCj4gKwkJZHJtX2RwX2RwY2Rfd3Jp
dGViKGF1eCwgRFBfUkVDRUlWRVJfQUxQTV9TVEFUVVMsDQo+IHZhbCk7DQo+ICsJCXJldHVybiB0
cnVlOw0KPiArCX0NCj4gKw0KPiArCXJldHVybiBmYWxzZTsNCj4gwqB9DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+IGluZGV4IDkxZjUxZmIyNGY5OC4u
MmYxZmI4MmMwYWFjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2FscG0uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uaA0KPiBAQCAtMjksNCArMjksNSBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2Zz
X2FkZChzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpOw0KPiDCoGJvb2wgaW50
ZWxfYWxwbV9hdXhfd2FrZV9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+
IMKgYm9vbCBpbnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApOw0KPiDCoHZvaWQgaW50ZWxfYWxwbV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApOw0KPiArYm9vbCBpbnRlbF9hbHBtX2dldF9lcnJvcihzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKTsNCj4gwqAjZW5kaWYNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiBpbmRleCBhMjM2YjVmYzdhM2QuLjNmMGZhMjIzOGFmYSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtNTM1OCw2ICs1
MzU4LDkgQEAgaW50ZWxfZHBfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
Cg0KPiDCoAlpbnRlbF9wc3Jfc2hvcnRfcHVsc2UoaW50ZWxfZHApOw0KPiDCoA0KPiArCWlmIChp
bnRlbF9hbHBtX2dldF9lcnJvcihpbnRlbF9kcCkpDQo+ICsJCWludGVsX2FscG1fZGlzYWJsZShp
bnRlbF9kcCk7DQo+ICsNCg0KTWF5YmUgeW91IHdhbnQgdGhhdCBlcnJvciB0byBoYXZlIG1vcmUg
cGVybWFuZW50IGltcGFjdD8gVGhpcyB3YXkgTE9CRg0KZ2V0cyByZS1lbmFibGVkPw0KDQpCUiwN
CkpvdW5pIEjDtmdhbmRlcg0KDQo+IMKgCWlmIChpbnRlbF9kcF90ZXN0X3Nob3J0X3B1bHNlKGlu
dGVsX2RwKSkNCj4gwqAJCXJlcHJvYmVfbmVlZGVkID0gdHJ1ZTsNCj4gwqANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDFkMjAyZjJlYjM1Ni4u
MDlkNDQwMDg0NjcxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gQEAgLTM0MDUsMjkgKzM0MDUsMTUgQEAgc3RhdGljIGludA0KPiBwc3JfZ2V0X3N0
YXR1c19hbmRfZXJyb3Jfc3RhdHVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgDQo+
IMKgc3RhdGljIHZvaWQgcHNyX2FscG1fY2hlY2soc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gwqB7DQo+IC0Jc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNw
bGF5KGludGVsX2RwKTsNCj4gLQlzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4ID0gJmludGVsX2RwLT5h
dXg7DQo+IMKgCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiAtCXU4
IHZhbDsNCj4gLQlpbnQgcjsNCj4gwqANCj4gwqAJaWYgKCFwc3ItPnNlbF91cGRhdGVfZW5hYmxl
ZCkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gLQlyID0gZHJtX2RwX2RwY2RfcmVhZGIoYXV4LCBE
UF9SRUNFSVZFUl9BTFBNX1NUQVRVUywgJnZhbCk7DQo+IC0JaWYgKHIgIT0gMSkgew0KPiAtCQlk
cm1fZXJyKGRpc3BsYXktPmRybSwgIkVycm9yIHJlYWRpbmcgQUxQTQ0KPiBzdGF0dXNcbiIpOw0K
PiAtCQlyZXR1cm47DQo+IC0JfQ0KPiAtDQo+IC0JaWYgKHZhbCAmIERQX0FMUE1fTE9DS19USU1F
T1VUX0VSUk9SKSB7DQo+ICsJaWYgKGludGVsX2FscG1fZ2V0X2Vycm9yKGludGVsX2RwKSkgew0K
PiDCoAkJaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKGludGVsX2RwKTsNCj4gwqAJCXBzci0+c2lu
a19ub3RfcmVsaWFibGUgPSB0cnVlOw0KPiAtCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+
IC0JCQnCoMKgwqAgIkFMUE0gbG9jayB0aW1lb3V0IGVycm9yLCBkaXNhYmxpbmcNCj4gUFNSXG4i
KTsNCj4gLQ0KPiAtCQkvKiBDbGVhcmluZyBlcnJvciAqLw0KPiAtCQlkcm1fZHBfZHBjZF93cml0
ZWIoYXV4LCBEUF9SRUNFSVZFUl9BTFBNX1NUQVRVUywNCj4gdmFsKTsNCj4gKwkJaW50ZWxfYWxw
bV9kaXNhYmxlKGludGVsX2RwKTsNCj4gwqAJfQ0KPiDCoH0NCj4gwqANCg0K

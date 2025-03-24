Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2520FA6D58D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 08:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54E1910E227;
	Mon, 24 Mar 2025 07:57:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AkPvAY7p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A69E10E20E;
 Mon, 24 Mar 2025 07:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742803028; x=1774339028;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=1lu/dki+/ZLyYZlsJB1PGjXUH/9MAhVl+YkWiwOjsoY=;
 b=AkPvAY7pYJZg9sfzUnO9KdM90R4oKz835Cd6uGVroSYkS+iVz6iZzDCy
 /e+xAu4BgwaHZNh6A5+fgHzJEPyIe+7PVm1lzm54qzNHeTEP7t5M+NB4R
 9kUIquIdrjStMs3F4Wt8qWyF4UXOHlmipTwVuKsHO3pok9XEfg88lYKa2
 g6VpGbcWDzeygEMRv5HPaeJDKtqkTKkZAze2JfDjJ9wqejwZGodGwE1v4
 OLqamTddvjdcyq66uN4kf0BWpjtqpCaUKNcBL4kmJtnN78yvVUTUx6GLt
 6yAmApHgACRGd+Xx+9j9Haz9E9DW55B3JF1PTl+N5qGivAy+3J/072p+3 Q==;
X-CSE-ConnectionGUID: masbK65PRmeaDDC6DHbuiQ==
X-CSE-MsgGUID: Qq87E0NZTZK+nWFobMSZ9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="47648263"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="47648263"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 00:57:07 -0700
X-CSE-ConnectionGUID: pomiETm2RKGi/J2oevDUhA==
X-CSE-MsgGUID: Qs2N5I0xTMewvu7CMzaTJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="161207761"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 00:57:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Mar 2025 00:57:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Mar 2025 00:57:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 00:57:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zf9s11qwWmT3JO7ETWdxW45UpZryJwiy1oHpMKR3LH2hHRan7pgn7fdM5j/3kIpj83SHDMOqwpN9U3orQ1vt0a7Ay6O/2wY+KVGbJkgdUY4kG0OyV1HeWx6LyWeKEs6c2dcJAR/c69pal/ciR1uCa2zhbXa967YrsCVhO45Lsq/ztfGBr4YAF97xd/wwT0GtSqQtwnBUDNyhbaAD0h+63xFh6oV9VpmaeBvl6IjYvJ4Jv7fiwdNSY6DSHw5S7STXQrVd0yAwvWYXU7IOB+R4bu+sg9KhEoUdMiEpgPBFzYgELTp8+5pCjrSQ7rv9ua7kdQWM/iy76p5no+NRmqJpMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1lu/dki+/ZLyYZlsJB1PGjXUH/9MAhVl+YkWiwOjsoY=;
 b=uGdz/PwwE8HUMpGj55dhCUvwtwWV3AhgA1QniLrtX6Q4Xa4NyAiLMuI6gAeSI+v2MaeYSdf6t0EE/MkziGNkNNycH6+43gHUdNWACVkVdPi0VRqVMIeQ0JofDbZo5PaMIR1jzC7LYSLZinDagd7YVRhQ2FqqhQAfIv8x09TZ1X++nZ6BUVH7A1dhEPSqUf9REVc3cFNmsziwK/hgIOd1SBER16tKe6gLslJRytQAjRP1aM6iLDj9eswc6BM98l2CkLFZ7vAaFQwbikaDML7Z9GRq/pq0nnAzcsW8aOw5vzLlYDVQ4inOWl2X+oxAw4m01PMrk6v4iot4Xl5xIpbMrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7832.namprd11.prod.outlook.com (2603:10b6:8:f5::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.42; Mon, 24 Mar 2025 07:56:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 07:56:44 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v6 7/8] drm/i915/lobf: Add mutex for alpm update
Thread-Topic: [PATCH v6 7/8] drm/i915/lobf: Add mutex for alpm update
Thread-Index: AQHbmQZsIiDKO5e7GEqIxsWXPI8W0LOB8oIA
Date: Mon, 24 Mar 2025 07:56:44 +0000
Message-ID: <66d456656b551c5e9892e389b5cb2271bfc23951.camel@intel.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-8-animesh.manna@intel.com>
In-Reply-To: <20250319191508.2751216-8-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7832:EE_
x-ms-office365-filtering-correlation-id: e5b3c616-4220-4993-8aef-08dd6aa96bd5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?S1lndHJGWEV3VUNvcVZ5QzNzL3FVb251dEQyUTBBdHVlYnhvNWZaYW9TQXcy?=
 =?utf-8?B?WDFnYThYa2VLYzhEbFh6ZU5YT1p4MXFremtXcGNNaU5neWZFbE1ZL09kVUZr?=
 =?utf-8?B?VnBxQ1BLaitOMDFtU1NuWERBeE5HYzRBUkxMREJCVzlrZ3VwL01tckptcjlK?=
 =?utf-8?B?aWVoR2xwbVFKRU1kQkhJWnVEOTkxOFRWL0d5aGpPUjdhbGVMd0c5S0pxNm4z?=
 =?utf-8?B?ckh6SUZuWE83RWJCaXJWL2xQSkE5alRWSW1aM0ZESkVjUEpiTkFsV3dERFNW?=
 =?utf-8?B?NUVza2tpYjg0NXFLcHMrSkdsVjFoZzhFY3oyMGZPSlFhMkRKYlU1OURPZjNo?=
 =?utf-8?B?UnIvMms0WFk0ckNSdmtSeEl6UW5ESDJYczB4RWRPdW14L3A3STFQNTVzRG9I?=
 =?utf-8?B?cjRNNkJlSTJzT2pSeXRBUVdWMlpIdm5UNkVJcyt3WVpGUXYxRThCUC9oQUJ0?=
 =?utf-8?B?MFBlVUZXdCtKR0gvVEIrOVJiTTNvOFIwM0ZKUzBPUmFUeUU2NXlaTHBNaHoz?=
 =?utf-8?B?dHVSWnRSWG5FV2o2ZUdTelJXaWowMzF0T2ZvZ2tVTWZMYXJuTi9tbHN6aGlS?=
 =?utf-8?B?eVNnd3pyZGE4ZUU1bTFNWG04VVZUejBCTi9IbHpSZ3k0UjFBWlIxSkcvRE1p?=
 =?utf-8?B?cHB6TmVJbVQ3VE80UE5qcFFHQ1BUc3VWeGY1MmhPNG5IMWxoRElzblRYZ0lv?=
 =?utf-8?B?aUhrZG9jdnRyZGZab3pRL2JTQXJtM25JN0U5ZmlVUXFHck9kSlhmT2pURUZn?=
 =?utf-8?B?RjQwWERMUDNmUW5kSVl6TTQ3QitFbEViN3JGblpTb0JmTmQxeE5LQ1dFQ1J5?=
 =?utf-8?B?QjVhWm5jWkdxNEJLclNHZ0NlY21aTzFFZS9tckxJZ1c4MWZZT081aS9OUUtl?=
 =?utf-8?B?NHZiNjNkM0U1a1U4TmVYNW15N3FuWjZVN3dIeE1ZQXBWL0Y0eVBGR3Iza0Vx?=
 =?utf-8?B?SFBzVGxGSkRIeWplTVRmUlRGMUE0dXhreUt3VzlZY1k5bnhTTmU5eVFsTnhS?=
 =?utf-8?B?RkswQlVFdjJHajlkb3FWcmJLRjd4RTR0Ny9VcDE2N2IzWkZIWkNuOEU2OVVt?=
 =?utf-8?B?RjdrV1EzM2NYQXB3YVlSYktOT09ZczB3R2doWmRCbnBoK0xDQXhNSTY0UzJr?=
 =?utf-8?B?MWcwZEFkSHVVUmRpZlNPM3JqNVF1cWtmcUxuUHlCbnkyNXBpcUtGdmRUeEhR?=
 =?utf-8?B?Q3hGRTdWYUdHWTRDcTJwTjJJZENPdkJPdjhjSk1GalZTdjZScTZoNmp4K05K?=
 =?utf-8?B?R3B1OVBIeVdNejhTV0FidHFLWjYxZnVoeUdsajdQU05IT0hrcHM2Zm9VVGJt?=
 =?utf-8?B?NVF5MWMwZWtGdjB4Z05ER0pLdE54Q05HWG9yQnVCVEp3RWN2Vkd4dEh2WkNQ?=
 =?utf-8?B?T21xZzQ1TlgxUDMzc1FnYnFkVE4zVlh4TjE1a3NDdVJwYkQ3bDlOZE9rTDh5?=
 =?utf-8?B?b0VaZkJQSjBUdDcxK0lldk43K0Q1Z3pTRHVPTm5hVVZpamVTVlNYUitxU1p0?=
 =?utf-8?B?UlFlT09FakhIdXRnb3YrZFN0UCtzWE1YdVVBNmNCcFhjeXZhTDRWYnRPa0Zl?=
 =?utf-8?B?azN2L0lMOWN5YkZZWlZPNi8yd1Z1QWhndC9BYjQ4QmVZZkxMUDRXZW9oWDNr?=
 =?utf-8?B?dFNoN2E1U3V6OUMvSWlUZFh3Rks4NnVvTVZuOG81QTdiVEV1d1ZZSHhQNGNZ?=
 =?utf-8?B?RndZcFFEblJrYWhBL0phUHh2SWNxU0RSbUI3S1JmRHdrd3JuNy9kaFdhZXY1?=
 =?utf-8?B?UC96Q0ZpMnU1bUtQUnh4L0FVMExsWWM4TURneWNNRGNDNXNBaGJrQ1QzQWtS?=
 =?utf-8?B?MXVBTHBvQlByemlRZWkzdERaaFhsaGY3YUZ3dXJ1ZTFoUGhuMUdCTHdLbTVK?=
 =?utf-8?B?ek5yUk5vRFdteTVwTVh0ZXJReEJnMWtreUxCZ2RvcWUzZ09JV0tVOFlCdVk1?=
 =?utf-8?Q?puTYbfr9WovKt1rv65pr40xyHDgj9mRv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWlmUmhlckYxRFh4SzhsOEw2SExmYVBNNmw5VnJpWmFxMVVqTW95NXpBeEJH?=
 =?utf-8?B?ZWNSMzMyNXNJNEcwZXMxTFJRdWlRZHNCNkFRQVphMUV5RGljclRBYzhWMXdH?=
 =?utf-8?B?eFNsc2QrYVN4MnlJeTVsL1VrS3lxVUJtT2JHd2tMUDY1WDBiczJYL0dkejlh?=
 =?utf-8?B?NnpaNFFnbDNXU3lNLzdRaEw2Vm1KZTdlNlBtMjlCR0ZuZUFDTktLTzY1TnFo?=
 =?utf-8?B?MWRZOTI1STdGOXRTbHpkOWdjQXY5SEdacDkvSFRxYmhuNVQzRCtsWlQxNHRO?=
 =?utf-8?B?cURkWjNTN1cycUdINmtZU0JZRmIrVW9iSlIvMTI0TXo1UmtIRjRLUFovazFs?=
 =?utf-8?B?TGp1TUpDNXBCTlI2TDlHL09ZZDlsTlhNbUNSTE5PSnNZMGlhcE92aWpKL21h?=
 =?utf-8?B?cFZ2WEcrMURtSGlORkpybkxSaGJneDVJYTU4WTRjUEVjTWFPdE5jREZLZjNH?=
 =?utf-8?B?bW5tWUM5Z1pqVzJueE5GK0xmMUtYQWJ1V0VXbHVkOWZYSlZKcW1zZVBzajlF?=
 =?utf-8?B?OGJJUVlYbHlFWnRsNzhuWGc4M1A4aXpQbWxCanRYbmxtT1I1UkJhcUQ2QzRu?=
 =?utf-8?B?SHZFL3V5dXY3NFd5SkpTT24yVGJ6U0tpVGU4Y0VFeHN4dDFxSytHQ2pBckRu?=
 =?utf-8?B?ZEl2Ym5CMVJUc1BhODVvTVphQXFia0lZUzVrbW4wNjFXRDZTaVB3WmZzdGlW?=
 =?utf-8?B?NnJKamZaL1NTamwxcUhsTDk5S0hiekJ6eDk4Vk1ZWVBxUTJxem9PSEExOE02?=
 =?utf-8?B?TVN2bWtONStqSzhyT2k0RzdRL0RBdzZlcVJDWlEyVzJOa21uREhBaDlMZ2l6?=
 =?utf-8?B?bnQ3TGFXcTJxVzU2c01UMUM1Z1BINjlUQmFNOEphaFNIMXZ4T0Fsa2lxemhy?=
 =?utf-8?B?UHo0M2tHOC9EdGQrZWZsMVY3bW1qeWhwd1QvKy9ldFN0cVNGaW16YmlhbGMz?=
 =?utf-8?B?QzRvb3l0NlpWbitSYlNGbE5pc29ZOHQrM0xWM3RVWmRNQ1M3ZVBVQnV1eksr?=
 =?utf-8?B?TkYxSytkckwzMDM3dTFTbzhIR0ZVS0l3bUpHb00ydmtmZGlMM3hGNFFJUkZH?=
 =?utf-8?B?Tmp0T2x6YjdIbEtoeEhsZWo1QVRTTFp4OGNpR0NVeGhZblYzbHh3ek5yc0gy?=
 =?utf-8?B?MWRpYmJZd2E4UkFoTkkwOE5TOCsyaUMweE04c0N5UWFWRlViL094MUNtVmRE?=
 =?utf-8?B?T2xWN0lKSGYwdmwvWlphbzAySzFBY3NCWDd1UExZQlBtb3NuK0k1cWhnbWEr?=
 =?utf-8?B?R0dYaS81TSs1Wmp3eFN3SmtZM2cxLzB5M3YzOWxPVzNEM2dnMVVOR2ZDV214?=
 =?utf-8?B?L3ZQS0ZqbXhqUGFnbnh6cHA5OThOZnZNK2JjcjFhZW9yemkvWGI3YWE0SlRw?=
 =?utf-8?B?MU10d0s0U01RZW1OSERQYjNTdXRIWHVaWEhZams5SVloT3J6OFBYYytIUVpB?=
 =?utf-8?B?dEk5TDg3OFNvdUhMa3hDMlVUTVY2cWZEdDEzN0pSMVRSQzViRHlOUDl3YW9Y?=
 =?utf-8?B?eFcwNCtXTzJTTWdBb09BbnZJWFZvOVRuU3BFb3JzR09obUFzenU1UUxJUndO?=
 =?utf-8?B?VTU3cUI3VExuQkx6UEtmMldKNjhYbmRPd1JMWWx0ZUVETmJBWGlsVmZpWWUx?=
 =?utf-8?B?RVU1OCt4cUVSTXdrL1RWQ013dWVrdUx4c3NoVWlKMWFwQlJEQS8yWlI2aGJY?=
 =?utf-8?B?aUluYzg4M05pMGxHaEFUNVVJZUk4cFBkMmlNd1pSZGtFS2RJdlZmNHR4UTI0?=
 =?utf-8?B?aU1MZk8vOUk1RWhHZG91TzhlbDZ2a2pBK0FTbnViOWxEL3N4Y0NQeThrYlg2?=
 =?utf-8?B?NkNjZGd3ejlQYXpEeHJOOTcwSnNqNkFKWlQ3RkRKbDFnWVIvanRpeVFiUkk2?=
 =?utf-8?B?TzZyYkNoVzZYbGVnaytIcEZlRUpWOWNhdUp0MEFnOVB5NEsvWi83RWphRHBq?=
 =?utf-8?B?azg3c09CVmtiOGltcU84emc4WHM0Nld4SlBpQUhqMkUyUmJYSmprdURjUzBv?=
 =?utf-8?B?ZHlOelRFa2YwRXpITUV1V1VTYVJlQTd5dVFzbFloM0V1R2ttQVpJeFlWcVRI?=
 =?utf-8?B?b04ySFNsZEdjZkpoQWxkUmYrSTFieE13UGVZcVRYVTFIQWJ3MTExOGdTVGd1?=
 =?utf-8?B?aW5GSVFNZFo1SklmaGRCK2xMemIyUWRLcnA2d1kwL0xMd0ZaTHNMWElYNDZ1?=
 =?utf-8?B?b0REUVFUU2tJcWsrU0RzOC95aGRuNm1xbU9lb3k4dEhvNnd6ODVqaU1zUXVr?=
 =?utf-8?B?RHpqQXVDNUlzbWNGbnpLK09DTjd3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <48EAC225436BAF4084CD4DF299DEDB59@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5b3c616-4220-4993-8aef-08dd6aa96bd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2025 07:56:44.7234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oxUQBGod49EkUiHDF+NE7ptS5bDyQeZm7nb7B/RJs3cXGJzmjQu4FpbzIYpHZFGb1A2DwLS0Ecaho1hy37HaS5XRl4yKmL09lqFdLYN6x+I=
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
PiBUaGUgQUxQTV9DVEwgY2FuIGJlIHVwZGF0ZWQgZnJvbSBkaWZmZXJlbnQgY29udGV4dCwgc28N
Cj4gYWRkIG11dGV4IHRvIHN5Y2hvbml6ZSB0aGUgdXBkYXRlLg0KDQpUaGlzIHBhdGNoIDcgYW5k
IDYgc2hvdWxkIGJlIHZpY2UgdmVyc2EuIE90aGVyd2lzZSB0aGlzIGxvb2tzIG9rOg0KDQpSZXZp
ZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+IA0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jwqDC
oMKgwqDCoMKgwqDCoMKgIHwgOSArKysrKysrKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uaMKgwqDCoMKgwqDCoMKgwqDCoCB8IDIgKy0NCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDEgKw0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfCAyICstDQo+IMKgNCBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBt
LmMNCj4gaW5kZXggNTYyZjcyNjlhNTgzLi5iNDRhZWVmMzkwYTYgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0yMyw3ICsyMyw3IEBAIGJv
b2wgaW50ZWxfYWxwbV9hdXhfbGVzc193YWtlX3N1cHBvcnRlZChzdHJ1Y3QNCj4gaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiDCoAlyZXR1cm4gaW50ZWxfZHAtPmFscG1fZHBjZCAmIERQX0FMUE1fQVVY
X0xFU1NfQ0FQOw0KPiDCoH0NCj4gwqANCj4gLXZvaWQgaW50ZWxfYWxwbV9pbml0X2RwY2Qoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3ZvaWQgaW50ZWxfYWxwbV9pbml0KHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+IMKgew0KPiDCoAl1OCBkcGNkOw0KPiDCoA0KPiBAQCAtMzEs
NiArMzEsNyBAQCB2b2lkIGludGVsX2FscG1faW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcA0KPiAq
aW50ZWxfZHApDQo+IMKgCQlyZXR1cm47DQo+IMKgDQo+IMKgCWludGVsX2RwLT5hbHBtX2RwY2Qg
PSBkcGNkOw0KPiArCW11dGV4X2luaXQoJmludGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMubG9jayk7
DQo+IMKgfQ0KPiDCoA0KPiDCoC8qDQo+IEBAIC0zMjcsNiArMzI4LDcgQEAgc3RhdGljIHZvaWQg
bG5sX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCcKg
wqDCoCAoIWludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkICYmDQo+ICFpbnRlbF9kcF9p
c19lZHAoaW50ZWxfZHApKSkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gKwltdXRleF9sb2NrKCZp
bnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiDCoAkvKg0KPiDCoAkgKiBQYW5lbCBS
ZXBsYXkgb24gZURQIGlzIGFsd2F5cyB1c2luZyBBTFBNIGF1eCBsZXNzLiBJLmUuDQo+IG5vIG5l
ZWQgdG8NCj4gwqAJICogY2hlY2sgcGFuZWwgc3VwcG9ydCBhdCB0aGlzIHBvaW50Lg0KPiBAQCAt
MzY2LDYgKzM2OCw3IEBAIHN0YXRpYyB2b2lkIGxubF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50
ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAlhbHBtX2N0bCB8PSBBTFBNX0NUTF9BTFBNX0VOVFJZ
X0NIRUNLKGludGVsX2RwLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmNoZWNrX2VudHJ5X2xpbmVzKTsN
Cj4gwqANCj4gwqAJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxheSwgY3B1
X3RyYW5zY29kZXIpLA0KPiBhbHBtX2N0bCk7DQo+ICsJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+
YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiDCoH0NCj4gwqANCj4gwqB2b2lkIGludGVsX2FscG1f
Y29uZmlndXJlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IEBAIC00ODksNiArNDkyLDgg
QEAgdm9pZCBpbnRlbF9hbHBtX2Rpc2FibGUoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkN
Cj4gwqAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjApDQo+IMKgCQlyZXR1cm47DQo+IMKg
DQo+ICsJbXV0ZXhfbG9jaygmaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy5sb2NrKTsNCj4gKw0K
PiDCoAlpbnRlbF9kZV9ybXcoZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxheSwgY3B1X3RyYW5zY29k
ZXIpLA0KPiDCoAkJwqDCoMKgwqAgQUxQTV9DVExfQUxQTV9FTkFCTEUgfCBBTFBNX0NUTF9MT0JG
X0VOQUJMRSB8DQo+IMKgCQnCoMKgwqDCoCBBTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSwg
MCk7DQo+IEBAIC00OTgsNiArNTAzLDggQEAgdm9pZCBpbnRlbF9hbHBtX2Rpc2FibGUoc3RydWN0
IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gwqAJCcKgwqDCoMKgIFBPUlRfQUxQTV9DVExfQUxQ
TV9BVVhfTEVTU19FTkFCTEUsIDApOw0KPiDCoA0KPiDCoAlkcm1fZGJnX2ttcyhkaXNwbGF5LT5k
cm0sICJEaXNhYmxpbmcgQUxQTVxuIik7DQo+ICsNCj4gKwltdXRleF91bmxvY2soJmludGVsX2Rw
LT5hbHBtX3BhcmFtZXRlcnMubG9jayk7DQo+IMKgfQ0KPiDCoA0KPiDCoGJvb2wgaW50ZWxfYWxw
bV9nZXRfZXJyb3Ioc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gaW5kZXggMmYxZmI4MmMwYWFjLi40Zjg2
MzIyYTk5OTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5oDQo+IEBAIC0xNSw3ICsxNSw3IEBAIHN0cnVjdCBpbnRlbF9jb25uZWN0b3I7DQo+IMKgc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZTsNCj4gwqBzdHJ1Y3QgaW50ZWxfY3J0YzsNCj4gwqANCj4g
LXZvaWQgaW50ZWxfYWxwbV9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+
ICt2b2lkIGludGVsX2FscG1faW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gwqBi
b29sIGludGVsX2FscG1fY29tcHV0ZV9wYXJhbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gwqAJCQnCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNy
dGNfc3RhdGUpOw0KPiDCoHZvaWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IDBiMTA5YWFjNTMwNi4uNmI4
ZmIwZGZmMWVhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTgwNiw2ICsxODA2LDcgQEAgc3RydWN0IGlu
dGVsX2RwIHsNCj4gwqAJCXU4IGlvX3dha2VfbGluZXM7DQo+IMKgCQl1OCBmYXN0X3dha2VfbGlu
ZXM7DQo+IMKgCQllbnVtIHRyYW5zY29kZXIgdHJhbnNjb2RlcjsNCj4gKwkJc3RydWN0IG11dGV4
IGxvY2s7DQo+IMKgDQo+IMKgCQkvKiBMTkwgYW5kIGJleW9uZCAqLw0KPiDCoAkJdTggY2hlY2tf
ZW50cnlfbGluZXM7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gaW5kZXggM2YwZmEyMjM4YWZhLi40ZTRlMWRiYTBmMmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTYzNjIsNyArNjM2Miw3IEBAIHN0YXRp
YyBib29sIGludGVsX2VkcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVs
X2RwLA0KPiDCoAkgKi8NCj4gwqAJaW50ZWxfaHBkX2VuYWJsZV9kZXRlY3Rpb24oZW5jb2Rlcik7
DQo+IMKgDQo+IC0JaW50ZWxfYWxwbV9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiArCWludGVsX2Fs
cG1faW5pdChpbnRlbF9kcCk7DQo+IMKgDQo+IMKgCS8qIENhY2hlIERQQ0QgYW5kIEVESUQgZm9y
IGVkcC4gKi8NCj4gwqAJaGFzX2RwY2QgPSBpbnRlbF9lZHBfaW5pdF9kcGNkKGludGVsX2RwLCBj
b25uZWN0b3IpOw0KDQo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE8FC4B7AD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:46:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D7B10E334;
	Tue, 11 Nov 2025 04:46:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DtnWi6BQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8025510E334;
 Tue, 11 Nov 2025 04:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762836364; x=1794372364;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KbpJj6+BhJ/4CYlDFg4x4GjmKb8mVWairjregDDjux8=;
 b=DtnWi6BQI89vvUgz/vB7qe2/YXHafzLchppFTrZh6cBvYcr1DWzf4fcg
 Fszx4ymZ8KQg1puouTYYft+2sJM5r9Qcwelc9HlwfPAvuju36fRu6bvKw
 EqvzkpLin/Q+76j5VW2jrlfwGe34FZ7f3xO03onTg7xThUnFOWTggLlo4
 k5CHUhDMdYySW2j5/UVTKNGFUwdXzVg8y1luspEJs3PVNC1Bc9ZwVMwvs
 JEeiygY3xc6eahbyz9jWQngdKk0X3VjEO1aeGnNmlEz7kLJCK+HQXwzNY
 XXrAXmo+XTldMzAhbg9tciOhSY0AHDSYkRgSM7a1zdqzxv+dZvRp1cgOA Q==;
X-CSE-ConnectionGUID: AA/xSzSNTPiRZdUHJGTzaQ==
X-CSE-MsgGUID: JpMyWymjTfW5WF77zAx4LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68537656"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="68537656"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:45:23 -0800
X-CSE-ConnectionGUID: fSZINmPIQuKcaYxbkBHBLg==
X-CSE-MsgGUID: 78u0bJsOR26wheW0yfRauQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188189371"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:45:23 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:45:22 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:45:22 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.56) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:45:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jeTKstS6NmgJpyubOQp0ILyU9DzaE/hhp3FpAWe+opAxa8HH9oiNJQfnVA5qwHtQlvWz07xAgqldO7RdFdVwHstQhP648lxPwAUBMze4c2CqTO7NZOoq5C3MJqd1rBhfiQbu8M46bclt60wjIuwIzb5U1uggl/396j1Rt/rocwbO4q7W8imDOzF+QpXXXJU5/9TEf8h+6VMSs71apQ5205fAFIUtApH3knNylr3jX8DSasalDAKHGmpCfKNoxKU6gxTmhSqaxIwObf0d0GAmX2eFT/fkcB90q6WZ68DLk+4pNBAeZxurNBnQq7rVsqmLX43JMt/minyXmxnXCUxTAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KbpJj6+BhJ/4CYlDFg4x4GjmKb8mVWairjregDDjux8=;
 b=PFnCmpcWX+gsCNS6K/vfXd6iEpvL01jEJvJ+ibsdJQKhqTmZi04VsNQoZXARepI8apyqMy0ei478paKxpfcUIopVCXRHiT76Av+ycWRxos6dEkAzgw79np8RA5mYfg1uDpE2cKpIcfXjB9vDmw4hIIR3qWxoxUcqikrQPgcZmDBzut0f/zjSGj4cVpCCvbkdSEENOq0wD5bKwy1j9dUYP1J0Vp4rjtOXvQRPcZDEE2AQbHYRaL+7Ohi49RDEEqrBSnluMlCdtYMEMVlH7Kfea9lX5FaFPbcPbsqFxezMhkeg3nR+aUAljRn4Bzlfhft1HUd7MpZjIHuJg+rKsrqRIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:45:11 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:45:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 13/16] drm/i915/de: Nuke wakelocks from
 intel_de_wait_fw_ms()
Thread-Topic: [PATCH 13/16] drm/i915/de: Nuke wakelocks from
 intel_de_wait_fw_ms()
Thread-Index: AQHcUmiu+xh/d3ldLkSGmPiacpYENbTs5vjA
Date: Tue, 11 Nov 2025 04:45:11 +0000
Message-ID: <IA3PR11MB89371FEFCD70C74AA648F6E7E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CO1PR11MB5059:EE_
x-ms-office365-filtering-correlation-id: dc1cc994-c4f0-43e1-906a-08de20dd1948
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZHh3KzkzYTJ6dEpjdW1DZHRWTEtNcHp4VW4vUzlYcmQ5enhaSnpMMFlVODhV?=
 =?utf-8?B?NUVvREFjcmdvV0ZGK3FYODVQSy9KMDAzeHJHWWVzS1FqYy9uVVBZOVhNdVN3?=
 =?utf-8?B?YStKcHEzNWlacVVCcUtzdUhFTUZ5bTZqMmx2LzYzbDRFZ2lpTDNTVFl6eFpi?=
 =?utf-8?B?d2JMTEVaMHpoQ0syL0MrNUsvRGsyUDZYa09XaGVTaitKNi9EamlQb3hQTTNq?=
 =?utf-8?B?cnFpcUNpbmQ0THExY3Y3UXhaQkYxYk5xeWpaYTZFUGtOUGU3SWV1T095Z005?=
 =?utf-8?B?MU1MSytBWmZ3NUcySVo3RkdTRXpha1Z2aE1TS0VrWkRKWmcxaTFiK2tkMWhU?=
 =?utf-8?B?MWhnY2MwTjJ5MzBQWXlFZkxUTFRFbFNLMlVNNENNSjZFbUNvTHRoZUdXTklj?=
 =?utf-8?B?OW04ZitFbkpueHc5RDl0RXlmVGNSaU1kdlhKeCsvYk5CMHpJUnVOR3BuTHVO?=
 =?utf-8?B?ZUFUb01yMTlqc1FvNFhkZGRYZVdnQzVJY3ZzNjY3UnRCTFdvb0ZobEh0alQ3?=
 =?utf-8?B?NURUbVVLREFxbDlxaXp1ZERaYndBSXFYN2RrNXh5Zkozb1ltdHpVRlpnVHJw?=
 =?utf-8?B?NjkyT3RhdVQ3K1hmNEM2SFVTVmZKSzZJT3FOYWdteDY0RXFlenh6NTNjb01M?=
 =?utf-8?B?ZXVhcVlhaDl6NERoQ1VJaC96QnpGOVd4c0JhdE0rSnR2bjRjY01OYXFKVEl0?=
 =?utf-8?B?eXYwNnZWVEVYOVJTWlZleFdwNFlNTGxTODdaZzNidmFMQm1mM243UHMycGtL?=
 =?utf-8?B?VVJBN2pkUzMrK05LekpJNm45enl5RXAzcjdNR2lOQ2ZRZWdCcTV2Z3VOclU0?=
 =?utf-8?B?T0hhTGhlelRUQzIvT3MySVlXODJSc05nMjYrVnR4cjNjY2ZBNVFpdUc2aGJo?=
 =?utf-8?B?RWVYVFE1V1ZHdm9aOXZHREM5SWk2anNkY3ZZNlJ1b015anFzSXljdlVsbXVq?=
 =?utf-8?B?Ni9hdFBhQnQraGxKWTVQakZhN2pBYi9RUERaTTVwbEI4ekZtdzBhVi9YU2g2?=
 =?utf-8?B?Uk4zdm1Hb1dsTXdCTmhLYllONzVrQ2tVOG9SMGR4dkNKcUNreHE0UXl5c2Rx?=
 =?utf-8?B?VVFITTJxY0R6N201MnVCbDhYejJJbWYzb0NoRkZHaTBkQldHMkpwamVLenlF?=
 =?utf-8?B?elJRc3ZvaVdHS0tDWnJEUnBVdGh1TjAzdE5RWjNnL2FMcXkxM2IxbUppdkxs?=
 =?utf-8?B?U2U0RHRFMVV4Z1hHdU5QSlRWUmVXRU1yYzZJeko3U0FSSnUxbFRDMFVPZUZo?=
 =?utf-8?B?SWZLd2JBM2tNbUFCY1FvZmFMTWJpeDRLTGxPTXRoSjhReDBSdlUxZGtFYVdP?=
 =?utf-8?B?S0JKWlYyOUhqRndRaHlkcjNjN29PZXhBSmF0VkM3MVBRMHlDMmFwY1d6OS8w?=
 =?utf-8?B?V1p6ajlDTmtKcU9QSXVCbmxsM3B6bkNuaVFuMmJaM1JZZFRCejNTb0dYNVJV?=
 =?utf-8?B?dUpOTTh3NXpDVXBoQWNNeWdhZm96WjN0aVZOSHJqU203SUwxaWFZalNkSGxM?=
 =?utf-8?B?aytEalhBMHF6T21mUGpjSGlwQjkrTHcvblE2MXdQYWZ1cXE4WE1UT3BUYWdQ?=
 =?utf-8?B?K0REMEJmLyt4eDNCZGlrRm5vbm1FVXNvMjladVUwU21nY2JOUFJpZk1JMlhi?=
 =?utf-8?B?dHIxeXZqNjF0OXdvWm1leklLRWpPK3k0ZlNxZmFQUzJISXBUVHJ3Ym50cTgv?=
 =?utf-8?B?QzcwVWEzeTBZL0R2NEhJaWdYT3ZlUmd1VHNzWi9DWGxndVVMK1VvMU4xVSto?=
 =?utf-8?B?YXNlSUtDa3pCQzIyM0V4Y0JRK2xqVWlBVVQyWGMwckxZQys2ZEdvUlRRYVI2?=
 =?utf-8?B?bGluTmd3NTVCcmkzSm83RmNHQk1VdGxmWG1DZWd3RmwzcUx6YWRpbmFoQmh3?=
 =?utf-8?B?Q1A3RmRhU0NhRjFpa01LR3Z1YllRQ3dPTzVMUmhwNzRmaVR2N0tVRUhnL1dC?=
 =?utf-8?B?Y1hmVE4wTEVyUHRlN3NZQUtuOU5MdHh6YjY0RTZaL2ZTWEo2djFMQmpWYUJN?=
 =?utf-8?B?T0pNMEFoWVp4a09qUUxvbUZUMUVEenRTYlpyaFN0enNTWkg0WEE1bXVyYWF3?=
 =?utf-8?Q?hFOhMn?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SGxBdExRZ0ZGb1JTdTM4aVRreUVwM2dsWVNFOGlHdU9YKzJFS01Jazh5VTBU?=
 =?utf-8?B?RHlQZGtsWmI3U0hZN0tPQTZSb0dQREhOaDE5bzNGekhtZWNhMUZkeEVJeWJU?=
 =?utf-8?B?NlBRUWxNT2JqMmRHd2JsdER0ZVBsWFlnZU9aeFM0WUt1U2pIcjRydnYxdmVi?=
 =?utf-8?B?UFdBVE5Wbjg1VTd3OWpqN2pCYkxRV0pzalVYQUp1MG4xc2h6TVdwTE90QzE3?=
 =?utf-8?B?aVpRRHdjVXBGWTNBY1hzV0k4RDhkSGExVWNNcm5SZkJoWEYxTlRXWTFkWlBD?=
 =?utf-8?B?cmV5dHMrVmV3VU5mRXJ0dWphbmNYWDg4cW5xZjhrUkRtUG1xNFcwbnRtblAw?=
 =?utf-8?B?K29VWGlCN2JvSW13MXUvWGhQKzRyYjJ6WWwyWWFFOWFqZHRCVG5adlZxekZC?=
 =?utf-8?B?dGZVd3hwOXNKNGl3ZGltbm5EOStyQWRMZTNMeWUyeU1hSDFmdkhyN09lampu?=
 =?utf-8?B?VW5ITUs5L3hWcm1CTXpPUEpWbVdrMHhpdklOTVk2OVZsME5zYVlnV1E1TURQ?=
 =?utf-8?B?SlFURHplTDZlbG9KdmZjNGp2MzU3Tlo5UjNDazk3VnRnN3hKaUxjTUZZdGM1?=
 =?utf-8?B?em1vNHVraGtGbkNTSTVEZk1YV1pUWXMwQkhqaWlwNkN5TElkS1pjOWl2RU1v?=
 =?utf-8?B?TUpjK3pSZGxDSFN2bG1YRnJUdmlIb0d6U3poY09jMGVCWlZjZ3NBOWdTd2Zy?=
 =?utf-8?B?eFVwb3BnZVN3aHhjVDNUTlZ2anZVWkw0ZmtGSVAzeHQ2Ymx3UnpPMjkzK2F1?=
 =?utf-8?B?SUIyVUNUTVA5SFZYTDVpUitGSWdMSit6ekhwaXV3T0YydTBhanYrOWJvWkE1?=
 =?utf-8?B?aUw5VWJxNS9FTHhVcnpremNLZDRkREkrRVdzVHk3RW9hdi9RODR3S2hoN21K?=
 =?utf-8?B?MkdQZHNmL2ZaOUFUN3kxZkdJSUExeDZ4b1R1M3k3UURGMjdUUFBRdXU2UDRz?=
 =?utf-8?B?VFdJS0xVTW9JYTVYNWtPUmhjQzNzdXRKcnJjMXFLWThGYXZ0OFpXZmwvVm9C?=
 =?utf-8?B?VHdic2RpMFJkMTgwUGFiRWVkaW1idjlpSm5VcG1uOVpwMlFRUGlMTXZZRGJi?=
 =?utf-8?B?RTRWZ1NRV3N1bWUzOWJ6THBJNy94SXNCUGRuVGx4K1V6blQrd2Zvd0FJeW1w?=
 =?utf-8?B?SnRUbkZsekpsb1RJUXJ0amkxekkrZjNGK2pEUmsxOXppaVlOVTM0d0FZMVJx?=
 =?utf-8?B?c3FDdFNScG1XWDZYT0lCa05pN3EvK1l4T0JtaWh1U3hUMFI2R1Q2MFNaazNt?=
 =?utf-8?B?OHlIZkQra2EwTVdScUgxTkU5WWV6TVBYamMrZFZ2cmhYNitVTUd1cG1NZ05V?=
 =?utf-8?B?Smt6OHk4VE9ENzY1am0zTkY4K0Ztd1poSm4vY0FyOGtsakdTQTVyVnpSK2xv?=
 =?utf-8?B?eUVRalVGbDFFcDd3dUU0VFdCOG8zbDF3c29WZW1hVnBucmxVanFwRXlpdGJX?=
 =?utf-8?B?VDdoY1FGRHZqMzlKVUxqaDFaKy81TC9sS2FzVkpsV0JUSFJHZFFUZ1VoUXlt?=
 =?utf-8?B?RW1Ic3ZlcnYrSlhua2V0TXZrSktVT2RVMGt6U3MremNXZDNET3pEVFBkeVVX?=
 =?utf-8?B?dDQ3eWZzRVZpaDA2dDBOMkJOKzJJWFlUL05WQ1ZGNWI5bG0rZ2tvSENWTTF0?=
 =?utf-8?B?Sk1tMWFpZlRnQkNLdlppNmE0dW5GUm9KRm5aNmoyNEkvTnlMelN0WnozL1pv?=
 =?utf-8?B?Ky9IOGJxbHh6allVQ1FVNk9TUGY3WTBkWHFaR2RqbE1Vc1FMWGNoVHBwR3NC?=
 =?utf-8?B?VUd0U0d2NFhpRzkwUENCUm9SL3RtL05JTVJleUVyY2djRDBJWENmS0F6RDRv?=
 =?utf-8?B?dVkzZGt5emp1azVXcnlrMnp2YmJ4eERxYWQ4YzZHUUt5bXluTldCWGRHUDlv?=
 =?utf-8?B?T0lOdUZjUm5rZjlGaGJxSVdyTEdyTW1oOHdSVzVOOUVpMEhRRSsyWitSc0dQ?=
 =?utf-8?B?SnJhV0hlODBkVzNNUWhUQndlaDBEeWlFdW80cVpySmxIK3pTNDJXQm1yZ3Nh?=
 =?utf-8?B?Y043YkRrQzJUYjhJS1YxcXE2QlhEWXg3NjZ2YitlRCtSWlc1YVJqUzMxOEJi?=
 =?utf-8?B?WGxOeklWSHR6M3g1bVZCTnVuWWRzSVl2NzJlN2NwQ3ZXeDJCTXNZQkk4RlFG?=
 =?utf-8?Q?dC10Z0xWjZqi2sGxz6Y/GLEh8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc1cc994-c4f0-43e1-906a-08de20dd1948
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:45:11.7158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MnXEZlNFCh2Q98EpytmvINDZa7eAWmln9osHpVfKFcrY7gToEmmLsex4ffrRSF1LEPz3bjjCI0wJDfvrRzbJEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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

PiBTdWJqZWN0OiBbUEFUQ0ggMTMvMTZdIGRybS9pOTE1L2RlOiBOdWtlIHdha2Vsb2NrcyBmcm9t
DQo+IGludGVsX2RlX3dhaXRfZndfbXMoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFRoZSBsb3cgbGV2ZWwgX2Z3KCkg
cmVnaXN0ZXIgYWNjZXNzb3JzIGFyZW4ndCBzdXBwb3NlZCB0byBncmFiIHRoZSB3YWtlbG9jay4N
Cj4gU3RvcCBkb2luZyBzbyBpbiBpbnRlbF9kZV93YWl0X2Z3X21zKCkuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
DQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZS5o
IHwgMTIgKystLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAx
MCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RlLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RlLmgNCj4gaW5kZXggMzQ1YjI3YWRhMDRmLi42NTU4NjdlYTc2YjggMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUuaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gQEAgLTE0NiwxNiArMTQ2LDggQEAg
aW50ZWxfZGVfd2FpdF9md19tcyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gaTkx
NV9yZWdfdCByZWcsDQo+ICAJCSAgICB1MzIgbWFzaywgdTMyIHZhbHVlLCB1bnNpZ25lZCBpbnQg
dGltZW91dF9tcywNCj4gIAkJICAgIHUzMiAqb3V0X3ZhbHVlKQ0KPiAgew0KPiAtCWludCByZXQ7
DQo+IC0NCj4gLQlpbnRlbF9kbWNfd2xfZ2V0KGRpc3BsYXksIHJlZyk7DQo+IC0NCj4gLQlyZXQg
PSBfX2ludGVsX3dhaXRfZm9yX3JlZ2lzdGVyX2Z3KF9fdG9fdW5jb3JlKGRpc3BsYXkpLCByZWcs
IG1hc2ssDQo+IC0JCQkJCSAgIHZhbHVlLCAyLCB0aW1lb3V0X21zLCBvdXRfdmFsdWUpOw0KPiAt
DQo+IC0JaW50ZWxfZG1jX3dsX3B1dChkaXNwbGF5LCByZWcpOw0KPiAtDQo+IC0JcmV0dXJuIHJl
dDsNCj4gKwlyZXR1cm4gX19pbnRlbF93YWl0X2Zvcl9yZWdpc3Rlcl9mdyhfX3RvX3VuY29yZShk
aXNwbGF5KSwgcmVnLCBtYXNrLA0KPiArCQkJCQkgICAgdmFsdWUsIDIsIHRpbWVvdXRfbXMsIG91
dF92YWx1ZSk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGlubGluZSBpbnQNCj4gLS0NCj4gMi40OS4x
DQoNCg==

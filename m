Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BF8C5C5C8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 10:47:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B9D10E042;
	Fri, 14 Nov 2025 09:47:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jh0pJ/yS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB1AE10E042
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Nov 2025 09:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763113636; x=1794649636;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=NkGrxNkiPJwHM9gLKRSSnwv7Dga5t/xwdGfP/Y3aQn0=;
 b=jh0pJ/yS4eG9OFmAyvDaDRwrTmZkbEA6BMF6wj//vqgFd8ZglmI0URXd
 rddY9aBv1F311FBvOfxYucUeB7N3+LgYVu49glMN5+Jaxwoylpr2kZkEp
 hlxNajzje6HHo7PMGH+yHYDX2GxerOV3KHiR70TsOItyIQRKNgSjqbm4U
 PU2hkL4O1q1SA+3B5I0tluO8WmKkAq+yEh4xWPh7cSLpyPelFDSO5NEmm
 TQLyxIhyVUWXhxzs/o9k07zuk8I/2V6M59GZOs5UBM8alTCE+BG8EHjDs
 v8KC0gvsElzVmoj5j7wuDK/KrKHjSUgrikpNms3Ol+qZWM9GeMjest0xp g==;
X-CSE-ConnectionGUID: k8vRSl5jT3iDvoZI9TsdaA==
X-CSE-MsgGUID: HX+jzt87Q2yfT8oCLIM5aA==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64914013"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208,217";a="64914013"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 01:47:15 -0800
X-CSE-ConnectionGUID: 67aEArnaR0m/YbSiTNG6Ow==
X-CSE-MsgGUID: zFYc4mPQR+uwKwHXs+uutg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; 
 d="scan'208,217";a="190522703"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 01:47:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 01:47:15 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 01:47:15 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.16) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 01:47:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mDrzRgaskzz3ios/IX1dvraYgAEjSeyfxw/a6JTMd5JUsyw5hsdVuv5cUzKv5zZLsQYTWnpbyEPk0WgXsuxEHIoGtsf6vl+J32M13Ke2f9tyo22ZIqmmBv0mrZcXwhtvRLPAqPSrCIb2ksJ9hIEvhk6c3YVFZlpmx+gw8EvrMt0R8fIEaTumqHRk08ALy79u7QXdQ9SYVHH/Jb9r9Ch+3dWS71jh9xFjWaI/t6Frqb1ckNUB3XBT2ICarIyjAG/n29pwgyLIu2QzrW9zosqDgXNnoaGCvC/PYtAsCb0C0nN6mGsyozpbmwuL0SJBGwHas9knwI2C6E7ujrnymOKzIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VHSM9aqya6p6o+XFgPjAckltHz+baFKhiLJgX9NXB7c=;
 b=ag4CcTz3+YdlWpII95dDKPw6i/nzElZCeLjNVRQjHhbfi6+SxNw1JPnvePfd1DbdGOgNWiu/HUD6U85icMGOOdzCL/Yy5opzZYkZ/dUPTU8IMtvVE5UgMgU6Q6pk5mk06k1P7smPgiXvztL1Iv2gDqDv4HrcgR1KbPGiJJyiG11ZTQ1y4qO6MVlA0H8sx+SHZ7hJcUSoc3mLyKxBpjd81NHwwLx0glKg1LtufNvCw6xoaofjaqd2IdgTOMW4CnoheLkCDGA23nhljV/iLOhyvV9k2j1AMRBiuiQ3ewMfD6v+00qVTlsCwVU2KfHquK7e96UXCuc34p9qB4EEc7EN3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 DS0PR11MB7286.namprd11.prod.outlook.com (2603:10b6:8:13c::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.15; Fri, 14 Nov 2025 09:47:13 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17%5]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 09:47:13 +0000
Content-Type: multipart/alternative;
 boundary="------------iDdLHon6FDSEovnV7WWg0mGq"
Message-ID: <0e09510f-154a-40e9-9917-90c618c51ac9@intel.com>
Date: Fri, 14 Nov 2025 15:16:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/pmu: Use raw_spin_lock where ever needed in
 i915 pmu
To: <intel-gfx@lists.freedesktop.org>
CC: <balasubramani.vivekanandan@intel.com>, <matthew.d.roper@intel.com>,
 <lucas.demarchi@intel.com>, <gustavo.sousa@intel.com>,
 <clinton.a.taylor@intel.com>, <matthew.s.atwood@intel.com>,
 <dnyaneshwar.bhadane@intel.com>, <shekhar.chauhan@intel.com>
References: <20251104154621.917892-1-ravi.kumar.vodapalli@intel.com>
Content-Language: en-US
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20251104154621.917892-1-ravi.kumar.vodapalli@intel.com>
X-ClientProxiedBy: MA5P287CA0080.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d8::7) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|DS0PR11MB7286:EE_
X-MS-Office365-Filtering-Correlation-Id: db819a1c-637c-4c86-cd11-08de2362c81a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bS95YlRxME0wNS9uT2VIdE5mbElaL2V1MkdWRUg4bEN1cHNIYkRBY0dWK1E3?=
 =?utf-8?B?TklwWGZsSWVLNmwzQU9vamdjT0FLNVpSQWRZcVZTYzh6QUhCc2lLSmNSbGps?=
 =?utf-8?B?dDlIaGltM3gwUDZuQXVsNlFEWWUyVkxCaW9rT3J4ck9mSHR6bjZSNE5ZVU9L?=
 =?utf-8?B?M1pYU3FoTkFUeUpLQWpFY2kxUWtOT0VhS3RFaXFuM3NSSENBWFh2L212dUFu?=
 =?utf-8?B?OXk1SldMLzRoMEU2VmFwYmlhSTMzODE0cVV3a1ZtMHpZZExKTUFFcVRvYXN3?=
 =?utf-8?B?dGJlWHRiamdiUU5CVlpQMEZmZ2NjbjFCQ044c2hjQ1RIZnBsaFNPSWdheDFy?=
 =?utf-8?B?V1Bhc2JJS2lnaC8vbnFWZnkvQjVaN1N0SXBPRnkxNm5zSkRlSXdGbnd3d01l?=
 =?utf-8?B?NWtVMk5qSzZ0ejZ0dFpISGliUnZlOGczTG5VdWF0ZWRESHVEVEZpRFNWYXpT?=
 =?utf-8?B?NVZzWTk5N05NQ2JQMU1MNnVOZSthWGNuQVN5WDdBdGFwVEk4dC9rMnc4RzBh?=
 =?utf-8?B?Y3lQeUVkVDV3enEvWlJyVkVORjZZZ1hKQlRoV2xWa05OWjJONjk5NXJ4YmNU?=
 =?utf-8?B?TnhpdDZkSWhXNG8vRGNNaUYvbGRZdkxRL295TkNLaDFuR3NUOXgzbHdtUk0x?=
 =?utf-8?B?VFkybEhQKzYwNktHTXdqTWc0aFZ0UzBybVJPeEZEKzFlRWd3UlhkS01TYk9h?=
 =?utf-8?B?RG9ld20zSzQ3TERoWFRWM2ZCTGxIVjluSkVuUVljV3oxUmYzTmxpVkpOUUly?=
 =?utf-8?B?Q21kbWFtRkNRM3Y1RWJlNTNBZHlhdkhIWFVUdGhGQ2xMMmh4NlJnQ25FQnJl?=
 =?utf-8?B?Zks4OWJBQ0FoL1BxNTU1QmUvUFdsNHlDV3FmSHVBaFlJa2VGTTNDVjFSSWxQ?=
 =?utf-8?B?OUtTR2dSYk15Vkl6UFpqeENoM1owOTI2SEdjc3MyamVyd0pSY25qYlAzOXVH?=
 =?utf-8?B?blBueU9GVWxtVnlQcGxENkNxWFBMYXBVeTBhOU42NURTb2gra0VWZnZuRDR4?=
 =?utf-8?B?UUh6MDdXekZ1K1VHcW1RSWpnN0NGM1Z6MGx6N0FGa0Z6SWRYZ0gzQkN0bHVL?=
 =?utf-8?B?T3BxejBDcUZSQ2hCb1hWcnk3aGM1N0NEVDBqcVJJNk0zTjlOV2JHV2JGUVp6?=
 =?utf-8?B?aVc2dHFQcGRIMTRtcm91Ynd1V1JCUTNUSVZHZWYyYjZ0cE9sK1dOcDJuOWxi?=
 =?utf-8?B?RzVhcWpSakkwd3JQSVUvenExQVpSWGx0SnY1ZmRTejRBMVdmaWs2aVVwUjF3?=
 =?utf-8?B?QjdvNTZ5MmYvMHpLeEs3UU5KdDBQTkxiOWJSSDVObkw1SFhhSnRsd0RaU1Ru?=
 =?utf-8?B?cTUyWDNPMmJtcHc0amFScUYxaGxkeGIwaStLTklXSUdlWWZ5dFJpY1Z3MFE4?=
 =?utf-8?B?eURPdlZXL0NSbFJTQmNXdGdyM3lmaEFrQmVWVEYvdFZ3NGdBb0c1RVp5NGRW?=
 =?utf-8?B?UU1uSENPbFEzWFNsTzNVUEhIM2VNZUZVTnJkdEhGL1FEN1k5dXNKWkc5MW9R?=
 =?utf-8?B?bGl4RGFVSEp6ZHhzL2Frekl0WVh1bkJweWIvVmhBbmt6RUFYczBoY0lsRVJV?=
 =?utf-8?B?ek5ta0JHV1N6MG1WMDVKL3dLZGgvVm9tcE9GRE5DRDBVbE4vV1p1S2o1SVM4?=
 =?utf-8?B?VWMwYXI1VnJsTDk0VVArTElicEs4eFZwdVFyd3BsaityZHg0RWRKMUVQZ3lj?=
 =?utf-8?B?dEVqUjYxOEozcFpkTURjRFNIdXNCM0lBQmR6OVVTdXhzTzE3OUNzdC9yUHAy?=
 =?utf-8?B?bHN0SzRleUM5TUoyYlpuN0IrUEdjSnYzU0xEUU9URUlUVS80b2pjdUgrQUZU?=
 =?utf-8?B?MFoxdnVOMkJQWGxVZzJLRGkvYUNzL2hqay9JZWJDUUxmc1QrMDE2c3AwNWRo?=
 =?utf-8?B?U09JeElWd293UEFqSDZlM2p5ajVoLy8wczZKMDVSaHNnZVZZZkhJOGZRWVlp?=
 =?utf-8?Q?nZLkLdgc5jAUtP8VayujZG0+49bt7OtW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1UwZGxLRFhMeHJxMVVCZmF1TjRZNGx4UU8yT3l2THlGclVRYWJEUVg4N3hk?=
 =?utf-8?B?RzcxY1hnNjB1VG1INjhzOGtPMElSRGxFR2dESE9WNjl5UzVNdFdqeEpNV1N5?=
 =?utf-8?B?Qy9VTUxETG9EY1ZxcC8raEZoZTYxTUZLZ3BSM2M3RzdudGEvQXVVelA0SDF2?=
 =?utf-8?B?dWpQM0F4bEtKQmxxaG80Mjk2SVlNMUFrVy9iOGdLc1VOdGl0Q25YSXh2bGty?=
 =?utf-8?B?U2sxQzZXcTYvLzVYVzh6K3lqL2J5NU9sRXNsaWxYN0JZekdFY2VmY1Npdnc0?=
 =?utf-8?B?S1pKczdiajRyMTFSeG1FUmJaOUdoWkxZQTRFTU1WaXEvTzZ2UHo2UTQvV3Vw?=
 =?utf-8?B?aEZuUzFkTS9GemVKUSs2eEdqVzRXcVZZbWVTaXZLdkRERC9TMVcyeU1ZUFAx?=
 =?utf-8?B?d3FHcGVKZ25VNW1TRUszZEpMVlMyRXhwY1lqNjBkMGpBQUtLZUZEQitNa0xa?=
 =?utf-8?B?eGpSMTBlYlhyQlN1OXBjdUJFZzRYOW5Qa2VpVWtobm4xcDJHRkFZVWpSNGNr?=
 =?utf-8?B?VndPNjQ0RFlRbitUZVh3clpzcEpPeWxaWUlDWWs0T0lLZG9udllPem9kTkI2?=
 =?utf-8?B?YUFTOXdTalpxeWpyc292OERwVE4xakhRTzZ1aDlWekl3SzBqOWgrRWd3Q0hr?=
 =?utf-8?B?RmdjMGVQZVp6OGFTOStMRVBFMGQ3MGlPeW1TdXFEZ3A0aERPa0p3Qk9UNVBR?=
 =?utf-8?B?ZmhSdFNEM2ZGQXhrMlZCc1ZkejVjQ3FocG41L2N5ZEhlMEh4enNtOHkxNEpo?=
 =?utf-8?B?VWFmdXRLY1NJZy9XQit4K2l3eHMyd2wyczlxS0ZDenc0UkxmMVAwN2FTZTZ1?=
 =?utf-8?B?TVRpU0Q0U2h2L1BPQVRBUm9ra1ZhTG5hekZlbXZLUnplYm9PNThFYjJkU01Z?=
 =?utf-8?B?TTJnYTJKY0c2V0JxTTBwNUJtTUVFOHJkcHRZbHNJNUdrbnNadWhkK3RpZFMz?=
 =?utf-8?B?VTJqQlhadEJBM3RRblpTbEw3TlZhVW9yRVd1VWxSOHRIdlR3WHd4czNDY0sx?=
 =?utf-8?B?a1RpY0twbHVlZGgzU1hjSXdPU2xNTWN4bTJQM2hLUU9Vd3BHYXdueTZhVEQx?=
 =?utf-8?B?WkZWdzJ4UnhTNWsvQ014ckh4Q1RDVC8vYWZiaGtNVXNFSGZhZ01xdmFUdjRF?=
 =?utf-8?B?U3loYXp6OVl1T3RUWVJDSnFlZUs5VDFzQUphTW1NREc0eXZhVmlYM3ZSeWJK?=
 =?utf-8?B?V3FWb3pFZ3NRZ0tKeU1YUStCQ29vZll6S250cU1kQml2TFAreU9tVTlxUHRh?=
 =?utf-8?B?TDNFYWk4cTRFaGN1eE9jVXRIUUZDMXBqMFJMb2NUMGY4K3Z6YXZtZ2tOUExF?=
 =?utf-8?B?N0ZObGtNdEhLRlRaOS9UM2pzNzlFakJlaUxpa3FtUmdEZU1nUTlJK1hWbDl2?=
 =?utf-8?B?VEpVd2RqbU1RZURQUjlWTTFoYkt2TytzNjFiVlNjRVJDZkRQQUlseW9SZmJm?=
 =?utf-8?B?RTNjSGZLN3FGR1JabGVWckVXZ2Z3NkFIUS9DZWdOTG9YanFmTGJsMXdwbGln?=
 =?utf-8?B?Ny9IOVVjeXM5ZGJJd0JjeTRMN0lkV1BrY0hlOENlbU9tUG1iczFvdEpIdEMy?=
 =?utf-8?B?Vmx5QWJiM1htaVBNMFgvQnAza2Nic1ZXMnRCbVFwVWlUUVFiMmNzK0NXcnQz?=
 =?utf-8?B?cStTVkxYYytaTHVMK05jdksrbHQ1NFcyOWZxN3RQME9SYkM1TWdDOXJSaWJO?=
 =?utf-8?B?L2pkNmN0ZTVzMlB2ZGx1aHdwekd2N01BaHYxMzVEZnZDQ2V4UGF4WWJIVnlv?=
 =?utf-8?B?b3RKQkk4YlBBbCtobFFNT0FhcktXS2hTSTZkK0duTUcxSmpKNlllRkRDQ2Ir?=
 =?utf-8?B?OXlzbDhJMnR0ZFY0MXNveFU3VU9zNEl0MGdoczN0a01nL0xwSDF4T2tyUmxO?=
 =?utf-8?B?N2Fxa2c2aTZjQlMwTlU4WGx2UkVFRUN1VGRpK1F5c3pxWlBLMnR0QzVleGVI?=
 =?utf-8?B?Y2NPcDZMVi9mM3hmK2RPdTh1MG0wUEhUcDQvVENka2dyMjBDVkM4eEx4VVox?=
 =?utf-8?B?MDBSNlFwMHAwbmdNUjhHOWxWaSt3VnB6bjgrWkV3dUZaaTBwZlNNa2tWbXRt?=
 =?utf-8?B?UjQ1bE9qZjY0Z1RlUkxFbkJ3Tkpma1VqOVVJQjBTaE5OMjVtSjdEc1djZEs4?=
 =?utf-8?B?blRRVjV3MGNWK2h6L3Nja1Q1Nnk1VnpqY1IvaG1vRHRJNktXeDNFcTVFUzN2?=
 =?utf-8?Q?N8qPBgKtSzNIbhmry7GdyjE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db819a1c-637c-4c86-cd11-08de2362c81a
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 09:47:13.3907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oz0uo/1bfssu62f+hlvRYdk7vJ38xU3bU7JBYroy/d4MyIONwWE1F99wOYXggSBKvrKJkJt7WQR/Ww5yEJQgHXMMWRFmmHWBAuQxH3wIBfQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7286
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

--------------iDdLHon6FDSEovnV7WWg0mGq
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit



On 11/4/2025 9:16 PM, Ravi Kumar Vodapalli wrote:
> Currently i915 pmu driver gets registered with linux perf
> subsystem with its callback functions implemented, it is
> using spin_lock for synchronization where ever is needed.
> linux perf subsystem in some instance is using raw_spin_locks
> for synchronization and calls the i915 pmu callback functions with
> raw_spin_lock held.
>
> The issue is
> When PREEMPT_RT is configured in kernel config the normal spin_lock
> behaves as mutex lock and when these are called with raw_spin_lock
> held race condition can occur.So in the path of the raw_spin_lock
> held convert spin_lock into raw_spin_lock where ever is needed.
>
> v2:
> - Fix build error below
>    drivers/gpu/drm/i915/i915_pmu.c:233:31: error: passing argument 1
>    of ‘_raw_spin_lock_irqsave’ from incompatible pointer type
>    [-Werror=incompatible-pointer-types]
>    233 |         raw_spin_lock_irqsave(&pmu->lock, flags);
>        |                               ^~~~~~~~~~

Here one more spin_lock is present in path of raw_spin_lock
in drivers/gpu/drm/i915/i915_pmu.c
__i915_pmu_event_read()--> get_rc6()-->__get_rc6()-->
intel_rc6_residency_ns()-->spin_lock_irqsave(&uncore->lock, flags);

Here spin lock is taken with "uncore->lock" variable, converting 
thislock to

raw_spin_lock is not straight forward because at many places in code this
lock is used.

drivers/gpu/drm/i915/gt/intel_rc6.c
drivers/gpu/drm/i915/gt/intel_workarounds.c
drivers/gpu/drm/i915/intel_uncore.



> Signed-off-by: Ravi Kumar Vodapalli<ravi.kumar.vodapalli@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 22 +++++++++++-----------
>   drivers/gpu/drm/i915/i915_pmu.h |  2 +-
>   2 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 5bc696bfbb0f..d760ec44a98c 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -230,7 +230,7 @@ static u64 get_rc6(struct intel_gt *gt)
>   		intel_gt_pm_put_async(gt, wakeref);
>   	}
>   
> -	spin_lock_irqsave(&pmu->lock, flags);
> +	raw_spin_lock_irqsave(&pmu->lock, flags);
>   
>   	if (wakeref) {
>   		store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
> @@ -251,7 +251,7 @@ static u64 get_rc6(struct intel_gt *gt)
>   	else
>   		store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED, val);
>   
> -	spin_unlock_irqrestore(&pmu->lock, flags);
> +	raw_spin_unlock_irqrestore(&pmu->lock, flags);
>   
>   	return val;
>   }
> @@ -302,7 +302,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
>   	if (!pmu->registered)
>   		return;
>   
> -	spin_lock_irq(&pmu->lock);
> +	raw_spin_lock_irq(&pmu->lock);
>   
>   	park_rc6(gt);
>   
> @@ -314,7 +314,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
>   	if (pmu->unparked == 0)
>   		pmu->timer_enabled = false;
>   
> -	spin_unlock_irq(&pmu->lock);
> +	raw_spin_unlock_irq(&pmu->lock);
>   }
>   
>   void i915_pmu_gt_unparked(struct intel_gt *gt)
> @@ -324,7 +324,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
>   	if (!pmu->registered)
>   		return;
>   
> -	spin_lock_irq(&pmu->lock);
> +	raw_spin_lock_irq(&pmu->lock);
>   
>   	/*
>   	 * Re-enable sampling timer when GPU goes active.
> @@ -334,7 +334,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
>   
>   	pmu->unparked |= BIT(gt->info.id);
>   
> -	spin_unlock_irq(&pmu->lock);
> +	raw_spin_unlock_irq(&pmu->lock);
>   }
>   
>   static void
> @@ -740,7 +740,7 @@ static void i915_pmu_enable(struct perf_event *event)
>   	if (bit == -1)
>   		goto update;
>   
> -	spin_lock_irqsave(&pmu->lock, flags);
> +	raw_spin_lock_irqsave(&pmu->lock, flags);
>   
>   	/*
>   	 * Update the bitmask of enabled events and increment
> @@ -782,7 +782,7 @@ static void i915_pmu_enable(struct perf_event *event)
>   		engine->pmu.enable_count[sample]++;
>   	}
>   
> -	spin_unlock_irqrestore(&pmu->lock, flags);
> +	raw_spin_unlock_irqrestore(&pmu->lock, flags);
>   
>   update:
>   	/*
> @@ -803,7 +803,7 @@ static void i915_pmu_disable(struct perf_event *event)
>   	if (bit == -1)
>   		return;
>   
> -	spin_lock_irqsave(&pmu->lock, flags);
> +	raw_spin_lock_irqsave(&pmu->lock, flags);
>   
>   	if (is_engine_event(event)) {
>   		u8 sample = engine_event_sample(event);
> @@ -836,7 +836,7 @@ static void i915_pmu_disable(struct perf_event *event)
>   		pmu->timer_enabled &= pmu_needs_timer(pmu);
>   	}
>   
> -	spin_unlock_irqrestore(&pmu->lock, flags);
> +	raw_spin_unlock_irqrestore(&pmu->lock, flags);
>   }
>   
>   static void i915_pmu_event_start(struct perf_event *event, int flags)
> @@ -1154,7 +1154,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
>   	};
>   	int ret = -ENOMEM;
>   
> -	spin_lock_init(&pmu->lock);
> +	raw_spin_lock_init(&pmu->lock);
>   	hrtimer_setup(&pmu->timer, i915_sample, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>   	init_rc6(pmu);
>   
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> index 5826cc81858c..52d4b602310a 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -71,7 +71,7 @@ struct i915_pmu {
>   	/**
>   	 * @lock: Lock protecting enable mask and ref count handling.
>   	 */
> -	spinlock_t lock;
> +	raw_spinlock_t lock;
>   	/**
>   	 * @unparked: GT unparked mask.
>   	 */

--------------iDdLHon6FDSEovnV7WWg0mGq
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 11/4/2025 9:16 PM, Ravi Kumar
      Vodapalli wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20251104154621.917892-1-ravi.kumar.vodapalli@intel.com">
      <pre wrap="" class="moz-quote-pre">Currently i915 pmu driver gets registered with linux perf
subsystem with its callback functions implemented, it is
using spin_lock for synchronization where ever is needed.
linux perf subsystem in some instance is using raw_spin_locks
for synchronization and calls the i915 pmu callback functions with
raw_spin_lock held.

The issue is
When PREEMPT_RT is configured in kernel config the normal spin_lock
behaves as mutex lock and when these are called with raw_spin_lock
held race condition can occur.So in the path of the raw_spin_lock
held convert spin_lock into raw_spin_lock where ever is needed.

v2:
- Fix build error below
  drivers/gpu/drm/i915/i915_pmu.c:233:31: error: passing argument 1
  of ‘_raw_spin_lock_irqsave’ from incompatible pointer type
  [-Werror=incompatible-pointer-types]
  233 |         raw_spin_lock_irqsave(&amp;pmu-&gt;lock, flags);
      |                               ^~~~~~~~~~
</pre>
    </blockquote>
    <br>
    <pre style="white-space: pre-wrap; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; margin: 0em;">Here one more spin_lock is present in path of raw_spin_lock
in drivers/gpu/drm/i915/i915_pmu.c
__i915_pmu_event_read()--&gt; get_rc6()--&gt;__get_rc6()--&gt;
intel_rc6_residency_ns()--&gt;spin_lock_irqsave(&amp;uncore-&gt;lock, flags);

</pre>
    <tt style="color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Here
      spin lock is taken with &quot;uncore-&gt;lock&quot; variable, converting
      this<span>&nbsp;</span></tt><tt style="color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">lock
      to</tt>
    <pre style="white-space: pre-wrap; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; margin: 0em;">raw_spin_lock is not straight forward because at many places in code this
lock is used.

drivers/gpu/drm/i915/gt/intel_rc6.c
drivers/gpu/drm/i915/gt/intel_workarounds.c
drivers/gpu/drm/i915/intel_uncore.
</pre>
    <br class="Apple-interchange-newline">
    <br>
    <blockquote type="cite" cite="mid:20251104154621.917892-1-ravi.kumar.vodapalli@intel.com">
      <pre wrap="" class="moz-quote-pre">
Signed-off-by: Ravi Kumar Vodapalli <a class="moz-txt-link-rfc2396E" href="mailto:ravi.kumar.vodapalli@intel.com">&lt;ravi.kumar.vodapalli@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/i915_pmu.c | 22 +++++++++++-----------
 drivers/gpu/drm/i915/i915_pmu.h |  2 +-
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 5bc696bfbb0f..d760ec44a98c 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -230,7 +230,7 @@ static u64 get_rc6(struct intel_gt *gt)
 		intel_gt_pm_put_async(gt, wakeref);
 	}
 
-	spin_lock_irqsave(&amp;pmu-&gt;lock, flags);
+	raw_spin_lock_irqsave(&amp;pmu-&gt;lock, flags);
 
 	if (wakeref) {
 		store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
@@ -251,7 +251,7 @@ static u64 get_rc6(struct intel_gt *gt)
 	else
 		store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED, val);
 
-	spin_unlock_irqrestore(&amp;pmu-&gt;lock, flags);
+	raw_spin_unlock_irqrestore(&amp;pmu-&gt;lock, flags);
 
 	return val;
 }
@@ -302,7 +302,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 	if (!pmu-&gt;registered)
 		return;
 
-	spin_lock_irq(&amp;pmu-&gt;lock);
+	raw_spin_lock_irq(&amp;pmu-&gt;lock);
 
 	park_rc6(gt);
 
@@ -314,7 +314,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 	if (pmu-&gt;unparked == 0)
 		pmu-&gt;timer_enabled = false;
 
-	spin_unlock_irq(&amp;pmu-&gt;lock);
+	raw_spin_unlock_irq(&amp;pmu-&gt;lock);
 }
 
 void i915_pmu_gt_unparked(struct intel_gt *gt)
@@ -324,7 +324,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
 	if (!pmu-&gt;registered)
 		return;
 
-	spin_lock_irq(&amp;pmu-&gt;lock);
+	raw_spin_lock_irq(&amp;pmu-&gt;lock);
 
 	/*
 	 * Re-enable sampling timer when GPU goes active.
@@ -334,7 +334,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
 
 	pmu-&gt;unparked |= BIT(gt-&gt;info.id);
 
-	spin_unlock_irq(&amp;pmu-&gt;lock);
+	raw_spin_unlock_irq(&amp;pmu-&gt;lock);
 }
 
 static void
@@ -740,7 +740,7 @@ static void i915_pmu_enable(struct perf_event *event)
 	if (bit == -1)
 		goto update;
 
-	spin_lock_irqsave(&amp;pmu-&gt;lock, flags);
+	raw_spin_lock_irqsave(&amp;pmu-&gt;lock, flags);
 
 	/*
 	 * Update the bitmask of enabled events and increment
@@ -782,7 +782,7 @@ static void i915_pmu_enable(struct perf_event *event)
 		engine-&gt;pmu.enable_count[sample]++;
 	}
 
-	spin_unlock_irqrestore(&amp;pmu-&gt;lock, flags);
+	raw_spin_unlock_irqrestore(&amp;pmu-&gt;lock, flags);
 
 update:
 	/*
@@ -803,7 +803,7 @@ static void i915_pmu_disable(struct perf_event *event)
 	if (bit == -1)
 		return;
 
-	spin_lock_irqsave(&amp;pmu-&gt;lock, flags);
+	raw_spin_lock_irqsave(&amp;pmu-&gt;lock, flags);
 
 	if (is_engine_event(event)) {
 		u8 sample = engine_event_sample(event);
@@ -836,7 +836,7 @@ static void i915_pmu_disable(struct perf_event *event)
 		pmu-&gt;timer_enabled &amp;= pmu_needs_timer(pmu);
 	}
 
-	spin_unlock_irqrestore(&amp;pmu-&gt;lock, flags);
+	raw_spin_unlock_irqrestore(&amp;pmu-&gt;lock, flags);
 }
 
 static void i915_pmu_event_start(struct perf_event *event, int flags)
@@ -1154,7 +1154,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	};
 	int ret = -ENOMEM;
 
-	spin_lock_init(&amp;pmu-&gt;lock);
+	raw_spin_lock_init(&amp;pmu-&gt;lock);
 	hrtimer_setup(&amp;pmu-&gt;timer, i915_sample, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	init_rc6(pmu);
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 5826cc81858c..52d4b602310a 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -71,7 +71,7 @@ struct i915_pmu {
 	/**
 	 * @lock: Lock protecting enable mask and ref count handling.
 	 */
-	spinlock_t lock;
+	raw_spinlock_t lock;
 	/**
 	 * @unparked: GT unparked mask.
 	 */
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------iDdLHon6FDSEovnV7WWg0mGq--

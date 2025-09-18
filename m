Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8CBB83227
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 08:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE2C310E5E0;
	Thu, 18 Sep 2025 06:27:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UYkrtRxt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1619810E0D2;
 Thu, 18 Sep 2025 06:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758176836; x=1789712836;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Cd6yaViln8BdNWX8rfQ6VNl9PWDSGKQ7mhN5h6FPyoI=;
 b=UYkrtRxtgYyXpxt9y/+7HY155153OmPLLiXQ/8XimvoIu6zEysrdxDUX
 Q6YIHrlRRWdaZ0F7tBBIq6Y5DN7/mUPzVg9bOcjD68lRmkkYe7ZGVOshJ
 ahuLhengc2YKmSJK2hqjmdWrIW9zZzA75+L8k7tHsjJn5axA55Y7ATRUw
 cGKjWHNDZewtDV8fgV29Jdjq23/kvFn8cFn9skjUBoMHr3pxDyON2zh1R
 z7w8k3EH127V22NWwoazfmj2Ww97cKMU3mRI7OAKrbMqC6EUF4L1ewjBe
 6YcF7EUQs0QxiGd3HAl1zI/UX5+Z8AXn4zr/rVLVb9e93Bcsk56EE1aR6 w==;
X-CSE-ConnectionGUID: IcCRXWXbSuCaA4n7ymuX4w==
X-CSE-MsgGUID: RG1gOJLBSiGaoWgRX5XrTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="59537934"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="59537934"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 23:27:16 -0700
X-CSE-ConnectionGUID: LbQVDa6NSmCyWce9q8rklA==
X-CSE-MsgGUID: 0LZ2VuXUQOWip9DajjG03w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="175849581"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 23:27:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 23:27:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 17 Sep 2025 23:27:08 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.34) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 23:27:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I8OmFlM4hP2vH681SJBVSp929prK0OwP1x0oHcaVG8jkVDeHszBQOVz9cR3EhSCRkPVQGABScKcgNmE/IjH4eev73ONlNv5DGu9YYXJvki05uRTWfxutpfOZLO1gRq1HVibFziQDnAtfEEdFjbzp9P4fOsTDRdjhFJNebzzEjtvOL3a0QehIS5YN3d6t99Zwb+XCYiDsc1wnSSSX2oowAPma6RHk9ayHpBbm6jn1oQQQwobmxrhrgOMmDwvU8H7lhoGUrnp8dVc/2zVFn0Di6ARpSF+rPIkocv1KQ9N8gCO3mGNRG+omNtzyxbf66MHDXXF4c9eYvdbQGGgzUzWtFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cd6yaViln8BdNWX8rfQ6VNl9PWDSGKQ7mhN5h6FPyoI=;
 b=M4oyAVe3G5tFT01LWpH4VUR3qQheGRRodYAj7QFE0Vt5p8Vu6LFOr7lVYL/4TQwFehI+ai4JCDUSRSe9/zajWIEbh1POOF5X9H0Js12FpptixDyeTH4FydzY29+WaafZJv8Bot7xb7AbYnsWx4AQPQUjoGesqYyxRHtCSfWQwkhPWxMjffktY/uLTzT98QmNOf0x7ysBvwt1s0jcIA9heXDhOJirAA2l3GJbzZGhOjlC5GiddtFXnEPZWTF+3LKu6NnWXTZNVHLucp2eaio2XEmqpbNiaGjfnwuP6CARlxsUohWenuiFuhF42v+XvG6ArbMmDbFRo3AeSG9QplNtcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5189.namprd11.prod.outlook.com (2603:10b6:510:3d::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9137.13; Thu, 18 Sep 2025 06:27:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 06:27:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/alpm: Remove error handling from
 get_lfps_cycle_min_max_time
Thread-Topic: [PATCH] drm/i915/alpm: Remove error handling from
 get_lfps_cycle_min_max_time
Thread-Index: AQHcI7A2ly+h470TU0CbYCmVJ8PBvLSUXFUAgAQmxIA=
Date: Thu, 18 Sep 2025 06:27:01 +0000
Message-ID: <0203a13de3dbc31110de8f818dd8106275decbc5.camel@intel.com>
References: <20250912064035.335329-1-jouni.hogander@intel.com>
 <DS4PPF69154114FBE889E16B6C68A0A6A5EEF15A@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114FBE889E16B6C68A0A6A5EEF15A@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5189:EE_
x-ms-office365-filtering-correlation-id: 92956aeb-8232-42fd-6a8e-08ddf67c609d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dUIyUTFLaWM2bEtKOFRzUzBmMnFYMVA5ak9yWktwdjFOZ3FpUDkrcERuOVVv?=
 =?utf-8?B?a1hxMUtyV2M4dmY3VDFlWkJCRTdyYW5IMjRNUWhhL2JqSDByOE1sRnhQOTYw?=
 =?utf-8?B?UDJVSjU2ZVNMekZ5d0dRMzY5aERGaG0zclhVWUtvVlZydGFObVVZUDR6VnlN?=
 =?utf-8?B?SUJhS0lpRnFYdW80eFExbjR6a1JTemUvSWtiei9mQ2F3NWF3aGk5QzN3Tnh3?=
 =?utf-8?B?VmVGQnBtMUdLYkxOZ3pDS2orNmMzZVBobjMwRTZJcjQ1UGpEc3hTVEdLSXVQ?=
 =?utf-8?B?SVJqMCszeGtyY2IyUDg1MVVudmJhMGhHaUZRdENlZXdYY1Z0MW42QWpzVWEx?=
 =?utf-8?B?OElZQnVGd29HMFk2ZFExb05vanc2VUZ5eEI4bXVDNlcvU3lCOEh1OHE1OFc2?=
 =?utf-8?B?TStlclNTeFFkRk10NmVjOUxIa2J0OGovNm9USUFmVVArWHBTNkovYjBMbVl6?=
 =?utf-8?B?d1RyN0xnTmpmQmdoTnh0bFNPNVlaeDVEaDc2c3hWTG1KY0c1d0Y3cVMwUGV2?=
 =?utf-8?B?R0d6R3hrY3k1U2srTXlRRG1CYUQxTkQzVVl0V0RBL21DL2xBSm9YenZMT09k?=
 =?utf-8?B?WCtUMkNrWExBZUdqcTNhWkQzOGt4K1BaSFZ5QUZWaFRaWElXL0F0MnB2akdy?=
 =?utf-8?B?NFZLV0l0TnNLZW5WN0plTUs1Q0RoaW94bmpJTENlTmlxTEpxczFXeE1SaXdN?=
 =?utf-8?B?MWZCd3VGMlJGVDArb1F4TnByOFFwOElkdEZ3cm01L2doOG5tdU9ydzZEN0hw?=
 =?utf-8?B?YUpEeThHZXJGNm5VK1NoMnFON2phY1VIOUN0RzMyLzEzaGt1Ylg0cUVxSUxH?=
 =?utf-8?B?QzBLUkZYZHhsUWlhQmVITFh5ZlNWU1Ivd0ZmZUphUXNFM1NsbnpwZmMzZ0Fu?=
 =?utf-8?B?SUxFR1lLbElOVTNRZEpEdDhkUHlMQzVsdnJIWFV6UnRteEZjQTc3UlZ5eFMy?=
 =?utf-8?B?TlU3WWJXSkptdnhrbXUvRHVGOUpZWXovYThIaWNNdUVzdDlTdU0ydHFZZHFM?=
 =?utf-8?B?bGtpQklFc2RoS3Fqd2FYRzdEZ0E4QmI2Qkcyd0dkYnlVUFF2bU1Ub1FFSVh1?=
 =?utf-8?B?RU1Gemp2RDhZL3ZoTkdVQzc3aWdZSjFhaUh2ejFWWWlsVHJtSUlhbHVsTTF6?=
 =?utf-8?B?Z1dzYzhYOTBtNU5keVJRSHYranUvdUJoakdTOXdVdEdBbU16N3hFUlBLUnF0?=
 =?utf-8?B?Tkp0Tmtvd1BKWm5vbU81eVhUYlpyaVZpd2JRcXRPZTNUei9MMUNBdC90ZGhj?=
 =?utf-8?B?eXJ2dTI1Q2pqSzRMSWVOcTlQMThmTzRlbUNhVyt4bHVJR3o5VHh5QXRGcDN4?=
 =?utf-8?B?RnViTXBCZTl2eC9tMG5jMkZOWmVQR3lRSm5RNDZKNEZZQ1hqZ3ZGZ3J6T2l6?=
 =?utf-8?B?UkdKR21DZmppUTVKS3ZYQmJmL0JHLzJrSVlIZWVCV2U5ZjVRVGo0SCtvVFNx?=
 =?utf-8?B?aTF0SDNnaGVtOXk2SlBPT0lvTnFGMnBvZVdXVHhrV0kwUk02U24zWmphZHo1?=
 =?utf-8?B?K0NveVNNL1BoL0hMMU1LS1orL05KQU5ra01JcitGMDhqWE83RllTdzNqbG56?=
 =?utf-8?B?Y1Z6d2pNM05ZemRsUGJ6NHhDYmtHZldtQ0JvNnpVREIreWM2ajlWSWpRbFk5?=
 =?utf-8?B?QjJNKy9mNC9YWXN0UVBmK3NHZ3JpNzNXV2tQd1BqeVJwUkpHTSs4RVVVdUU0?=
 =?utf-8?B?MCtrN29PbFQxd1RHRHJsMlp3SmVoVjBVRXFQa0F2clpEOExsd3ZwSmtrTk1P?=
 =?utf-8?B?Qm9pWEh3YmFJMGVZdDRtRXl4eWJjNjlmdUhlRnk3akJlbzMzbmN4ZVo3Q1NY?=
 =?utf-8?B?YnRRbTM4R2dFYXhDQzdEc3ZPaDRtdWZCWUttWlhoMEZ2bXVrUVlEMnZ4YUpv?=
 =?utf-8?B?WVc2a0pIcStmenEzLzJIQVVjdXpJTXdDeW85VXUxZEwvbHZmZVRwbUR1NXdo?=
 =?utf-8?B?bE8vbml5ZEZsZ2hMRXlNano1TmU2alEyU1hWRlFxbUdFM3NsSHJnQXZRZnFt?=
 =?utf-8?Q?kRtx+3x98e0Dp+us2INlTy6NOMO0d0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHNrR252M2h3R3crd0hTTU5JeUxBVW1Wa2hreDhVN1ZDUTZDaHNFc0VzbjZk?=
 =?utf-8?B?eWVkOW51encvWUE2QlN1aitreFF2anFTSTMxRDlZSGZWdnJrTTg2VlFEcFEz?=
 =?utf-8?B?cEhlYmpYbVJsODY0VDB4YTFMZXhySHBZc21YMGo0MmhCZmYyVEx0VWZEZE5G?=
 =?utf-8?B?Z1dSSSs5Y2JSTUhFbDh3UGJmdjlKQVcwQ0QzR044SThwVjZHcUhMS1lNL3lE?=
 =?utf-8?B?VHllTGMxMWlFOU1GZkZadXVTeFhhMVFjTUFVTUh1eFFXZi8zY2h6cllBdTl3?=
 =?utf-8?B?dHVucDhEMndYRldmblkrRW94Tk8wdXRZbkZlZzMvQjVLSFFiVjFGSFp6WGtI?=
 =?utf-8?B?NXBZSEVnZnlMT01mVXZLUm5jaVlZNTRyUlFyQUs2R21ZRi9Tb1JrUENxNmxL?=
 =?utf-8?B?MC9mOEtPRWdkUGFRU01ibGUwYzBWOW5nek9QdUJhMEd2bmFGZVJPZytSM25Q?=
 =?utf-8?B?Ui9qeFdyeTVkL2lZdkVQYjVSSTdlTkhUR2xVZFUyazR4eFJtamgxdGNpaWhk?=
 =?utf-8?B?MlpOWW1tbU50bUtYbVB5QitVcEx3dzYzN3gxQnZFVlhBbW5NbXludGtobE1j?=
 =?utf-8?B?M1VEYitNR1ZCRlJWNXhGWm9aL1ZOeHpyZG4yb25RSUtEa1QrZDZnRzgyWHlP?=
 =?utf-8?B?T0pmbEhLRU9hWnhCZVkzTEVtYWFIWmc5anY1ck1KWStKUVZGaEVreXlxQnR0?=
 =?utf-8?B?NXdlVnphUVhkbXdrYU9KcEtpS2xrWWpMckhZQ0ZVRzVkempoM1hwWndrajI4?=
 =?utf-8?B?UjkrRlhYd3Z5S25aTUlod0l2M3pkRjlHbEk1ZXlBMjRoZm9LOS9KcndBK0Fl?=
 =?utf-8?B?eEdLR1NFSzJadUtFY2lTMU1KdXJna3l2V0VHNlpWbk5nTFJnUzFuUDhnc1lt?=
 =?utf-8?B?TTJvQ2J6azBJYlhjek1WL3pmUjhIUThlQS9xYlJmWk1hdTQ2ZW44VDM3cVBQ?=
 =?utf-8?B?Kzc5UElCdkdHc1lVaHVLUXNOV3d5NUtBdXVTVkhicm5iY2MzZUZUODZTOVZ3?=
 =?utf-8?B?QzlNaXRGd2xVNDR2S0o5LzU2WjJVZnNsR3kzYklSTjJQOFhPWkFKSWgyY2Ri?=
 =?utf-8?B?U3YwM2xrSDFhanJFTXIzSUhOVHRqdmZOVVhjNzlnQ3JONERMakxTSVFkV2o1?=
 =?utf-8?B?QXJ6T0pXOU91SU8wa1lCYXlRd0FFZktXMkdDQVFjNFdRYmNVTWVKeldQK1Zh?=
 =?utf-8?B?blkvbk1lMlZBZ1JDU2RqOWhVMDhWemMwVGdHZURtM0JlbXRPc2dvMW5ORVhn?=
 =?utf-8?B?NkNIdUtONkc0TWxyOEFpZ01tWk5JbHg1Wm9sNGN5QlAwMUM5SEdHVjVvYlJW?=
 =?utf-8?B?VW5HRTBvU2xGamYyZnJmRUdldjBGUjZCMVlQeW03QXZBckVNSUM3Y0dZOHVY?=
 =?utf-8?B?RkdGK2VtUndvYzNqTTIyTzlYUXB4enFpbE1uZFhKRVZ4WVNNWVlWTkNpcFVD?=
 =?utf-8?B?TWFycW1tVkNYQThZM1VaRTBxbkZjOTNHcnJWbDdwVnBNNXE4N1ZpMDFPdXV5?=
 =?utf-8?B?YnE3QzUwWTVlcWZ6VitHUE1aVzJMVW9iaExsODZtbEFNSmY2OFB4enlMNmQr?=
 =?utf-8?B?cFFZYlRYUXhQODN1YlVjNlN1MHppazc3VWFpS1JoYm1lT3V0VXhrUEkrTkhs?=
 =?utf-8?B?R3BrRTZCQjhUMEVUWmNhUHFla1o0RTNvUE41YWh1MnRMY21WRStBbWN4MTBv?=
 =?utf-8?B?Q2Z6M2psVVZoRnFGOEd5WkxhSEM5UlRMSTUvZmhqV1ZXKzllMTdSSDBaTFY5?=
 =?utf-8?B?SFJhSCs1Y0VqM1RuRWtEcDJhRy92OC9lTzZ0cDF1Z2dYK2VIY2poeDRZb290?=
 =?utf-8?B?ZkVFdWNzMERXa20xY3pnTFhydS9RclR3NVpoSXpiVnRhbUp6bzBqZTFZWnBH?=
 =?utf-8?B?OVphbFpqZzJYUmFrNWNlRUhDT1hwUjdZUUY2S2VZNEVxZG8xOHRiL1VNSFZ0?=
 =?utf-8?B?clRyQXZVQU85cmRoRkU3aTh2Q0NvemRscDBVU2NKblJSOWVjWlJ3Y3JPaWJ3?=
 =?utf-8?B?TzBOVGVmVE1LNStwUVl3Ni9ud0pyVXpvOTVPOWNlTlRxM0Y3L3hqVGo4bjdq?=
 =?utf-8?B?RjJ1NktpbkxRUjQ3UlJFaVJxb3htbmxIbDZrQlB2V3J5MUQrcUtLVThZTEI2?=
 =?utf-8?B?VVFReU5TbWs4b3U5bmpTUTNRQ1dEdkp2blVXeENHc2FJNHBtN1YzZVc4ZlFo?=
 =?utf-8?B?djB1T0dqU3d4enBaTEtwdXJjUWV3K2s5SFVCdmxnc3VCN0JZeWhGRlZCRkRr?=
 =?utf-8?B?OTFPMjU0NkgycGVCTEt4SGV6TVJnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <98466A64BB9B064BB1A0F96F2689B2D5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92956aeb-8232-42fd-6a8e-08ddf67c609d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2025 06:27:01.3512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oNNsYDkwTHYMh1M+QK5xepPDHa/GtnjTuRWi3uM7XboCrG7j69Sufvh83uMUbRkhvFHaUSNB8vwwa62TlzeY8DaZxg1ZqFFMkgSI/sATRCY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5189
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

T24gTW9uLCAyMDI1LTA5LTE1IGF0IDE1OjAzICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwt
eGUtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0KPiA+IE9mIEpvdW5p
IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IEZyaWRheSwgMTIgU2VwdGVtYmVyIDIwMjUgOS40MQ0KPiA+
IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9hbHBtOiBSZW1vdmUgZXJyb3Ig
aGFuZGxpbmcgZnJvbQ0KPiA+IGdldF9sZnBzX2N5Y2xlX21pbl9tYXhfdGltZQ0KPiA+IA0KPiA+
IEdldHRlciBmb3IgTEZQUyBjeWNsZSBtaW4vbWF4IHRpbWVzIGlzIHVubmVjZXNzYXJpbHkgY2hl
Y2tpbmcNCj4gPiBmYXVsdHkgcG9ydCBjbG9jayB2YWx1ZS4gVGhpcyBkb2Vzbid0IG1ha2Ugc2Vu
c2UgYXMgZXJyb25lb3VzIHBvcnQNCj4gPiBjbG9jayB2YWx1ZSB3b3VsZCBoYXZlIGJlZW4gbm90
aWNlZCBhbHJlYWR5IGF0IHRoaXMgcG9pbnQuIFJlbW92ZQ0KPiA+IHRoaXMgY2hlY2sgYW5kIHVz
ZSAxNDAvODAwIG5zIGFsd2F5cyB3aGVuIHBvcnQgY2xvY2sgPg0KPiA+IDU0MDAwMC4NCj4gPiAN
Cj4gDQo+IFJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
DQpUaGFuayB5b3UgTWlrYSBmb3IgY2hlY2tpbmcgbXkgcGF0Y2guIFRoaXMgaXMgbm93IHB1c2hl
ZCB0byBkcm0taW50ZWwtDQpuZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+
ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uYyB8IDI5ICsrKysrKystLS0tLS0tLS0tLS0NCj4gPiAtLS0tDQo+ID4gwqAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gaW5kZXggZWQ3YTdl
ZDQ4NmI1Li43NDkxMTljYzBiMjggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IEBAIC01OCw0MyArNTgsMzIgQEAgc3RhdGljIGludCBn
ZXRfc2lsZW5jZV9wZXJpb2Rfc3ltYm9scyhjb25zdA0KPiA+IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQ0KPiA+IMKgCQkxMDAwIC8gMTAwMDsNCj4gPiDCoH0NCj4gPiANCj4g
PiAtc3RhdGljIGludCBnZXRfbGZwc19jeWNsZV9taW5fbWF4X3RpbWUoY29uc3Qgc3RydWN0DQo+
ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiAtCQkJCcKgwqDCoMKgwqDCoCBp
bnQgKm1pbiwgaW50ICptYXgpDQo+ID4gK3N0YXRpYyB2b2lkIGdldF9sZnBzX2N5Y2xlX21pbl9t
YXhfdGltZShjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0K
PiA+ICsJCQkJCWludCAqbWluLCBpbnQgKm1heCkNCj4gPiDCoHsNCj4gPiDCoAlpZiAoY3J0Y19z
dGF0ZS0+cG9ydF9jbG9jayA8IDU0MDAwMCkgew0KPiA+IMKgCQkqbWluID0gNjUgKiBMRlBTX0NZ
Q0xFX0NPVU5UOw0KPiA+IMKgCQkqbWF4ID0gNzUgKiBMRlBTX0NZQ0xFX0NPVU5UOw0KPiA+IC0J
fSBlbHNlIGlmIChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrIDw9IDgxMDAwMCkgew0KPiA+ICsJfSBl
bHNlIHsNCj4gPiDCoAkJKm1pbiA9IDE0MDsNCj4gPiDCoAkJKm1heCA9IDgwMDsNCj4gPiAtCX0g
ZWxzZSB7DQo+ID4gLQkJKm1pbiA9ICptYXggPSAtMTsNCj4gPiAtCQlyZXR1cm4gLTE7DQo+ID4g
wqAJfQ0KPiA+IC0NCj4gPiAtCXJldHVybiAwOw0KPiA+IMKgfQ0KPiA+IA0KPiA+IMKgc3RhdGlj
IGludCBnZXRfbGZwc19jeWNsZV90aW1lKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+
ID4gKmNydGNfc3RhdGUpwqAgew0KPiA+IC0JaW50IHRsZnBzX2N5Y2xlX21pbiwgdGxmcHNfY3lj
bGVfbWF4LCByZXQ7DQo+ID4gKwlpbnQgdGxmcHNfY3ljbGVfbWluLCB0bGZwc19jeWNsZV9tYXg7
DQo+ID4gDQo+ID4gLQlyZXQgPSBnZXRfbGZwc19jeWNsZV9taW5fbWF4X3RpbWUoY3J0Y19zdGF0
ZSwNCj4gPiAmdGxmcHNfY3ljbGVfbWluLA0KPiA+IC0JCQkJCcKgICZ0bGZwc19jeWNsZV9tYXgp
Ow0KPiA+IC0JaWYgKHJldCkNCj4gPiAtCQlyZXR1cm4gcmV0Ow0KPiA+ICsJZ2V0X2xmcHNfY3lj
bGVfbWluX21heF90aW1lKGNydGNfc3RhdGUsICZ0bGZwc19jeWNsZV9taW4sDQo+ID4gKwkJCQnC
oMKgwqAgJnRsZnBzX2N5Y2xlX21heCk7DQo+ID4gDQo+ID4gwqAJcmV0dXJuIHRsZnBzX2N5Y2xl
X21pbiArwqAgKHRsZnBzX2N5Y2xlX21heCAtDQo+ID4gdGxmcHNfY3ljbGVfbWluKSAvIDI7wqAg
fQ0KPiA+IA0KPiA+IMKgc3RhdGljIGludCBnZXRfbGZwc19oYWxmX2N5Y2xlX2Nsb2Nrcyhjb25z
dCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKcKgIHsNCj4gPiAtCWlu
dCBsZnBzX2N5Y2xlX3RpbWUgPSBnZXRfbGZwc19jeWNsZV90aW1lKGNydGNfc3RhdGUpOw0KPiA+
IC0NCj4gPiAtCWlmIChsZnBzX2N5Y2xlX3RpbWUgPCAwKQ0KPiA+IC0JCXJldHVybiAtMTsNCj4g
PiAtDQo+ID4gLQlyZXR1cm4gbGZwc19jeWNsZV90aW1lICogY3J0Y19zdGF0ZS0+cG9ydF9jbG9j
ayAvIDEwMDAgLw0KPiA+IDEwMDAgLyAoMiAqIExGUFNfQ1lDTEVfQ09VTlQpOw0KPiA+ICsJcmV0
dXJuIGdldF9sZnBzX2N5Y2xlX3RpbWUoY3J0Y19zdGF0ZSkgKiBjcnRjX3N0YXRlLQ0KPiA+ID5w
b3J0X2Nsb2NrIC8gMTAwMCAvDQo+ID4gKwkJMTAwMCAvICgyICogTEZQU19DWUNMRV9DT1VOVCk7
DQo+ID4gwqB9DQo+ID4gDQo+ID4gwqAvKg0KPiA+IEBAIC0xNDYsOCArMTM1LDYgQEAgX2xubF9j
b21wdXRlX2F1eF9sZXNzX2FscG1fcGFyYW1zKHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9k
cCwNCj4gPiDCoAlzaWxlbmNlX3BlcmlvZCA9IGdldF9zaWxlbmNlX3BlcmlvZF9zeW1ib2xzKGNy
dGNfc3RhdGUpOw0KPiA+IA0KPiA+IMKgCWxmcHNfaGFsZl9jeWNsZSA9IGdldF9sZnBzX2hhbGZf
Y3ljbGVfY2xvY2tzKGNydGNfc3RhdGUpOw0KPiA+IC0JaWYgKGxmcHNfaGFsZl9jeWNsZSA8IDAp
DQo+ID4gLQkJcmV0dXJuIGZhbHNlOw0KPiA+IA0KPiA+IMKgCWlmIChhdXhfbGVzc193YWtlX2xp
bmVzID4gQUxQTV9DVExfQVVYX0xFU1NfV0FLRV9USU1FX01BU0sNCj4gPiB8fA0KPiA+IMKgCcKg
wqDCoCBzaWxlbmNlX3BlcmlvZCA+IFBPUlRfQUxQTV9DVExfU0lMRU5DRV9QRVJJT0RfTUFTSyB8
fA0KPiA+IC0tDQo+ID4gMi40My4wDQo+IA0KDQo=

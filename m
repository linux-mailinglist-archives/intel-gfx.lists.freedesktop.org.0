Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B4AA4E0BC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 15:25:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEA3110E5F2;
	Tue,  4 Mar 2025 14:25:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B0aFypNc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3837110E5F1
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 14:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741098319; x=1772634319;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Q5CpTe2Yac2IIUlDP7PM3/rh6mp+HQV/z3HyXbR5yuQ=;
 b=B0aFypNcGxaDzQiB8jxfQGhid+CWyUu1L9q+6P9C/U8taVGmlXesnpRC
 ACAokQUD1fBRdkg8hRIQvkxzwLwdahnnph8gF/lBHHjtcfpKbZuQrMPkW
 OIO2xywS2OKdla64noeukjEjKqL6LGTzecEyrzL8P9ecq+aXCmb19KSjO
 PvBNQBZ0UqeDtrEx8chooM4A04XMKESUcWKgdLP0QzsU7zeDSEn7zN+sf
 qAVa/Wn1QVamukBgLdeo758iJvD7H0VSEEdqSIqYqeH1Sb+kabXan7TsB
 ALxYd5BjMMSqMJ9nEd+AzmzeEG4Cc6ffEu5iVJuDZEyabjCGFchCb0EwD Q==;
X-CSE-ConnectionGUID: RU9XdnNuQbeDKVD1hbJj/Q==
X-CSE-MsgGUID: zQgRf0+gTgGdyIsJtpCJhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="44824152"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="44824152"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:25:19 -0800
X-CSE-ConnectionGUID: dLdQtf/mSl+jbQarInenvA==
X-CSE-MsgGUID: 4LPb7J1zSlC6jNUSISGHyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118260904"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:25:19 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 06:25:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 06:25:18 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 06:25:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qKsSkjLoTImjy9iLTiWgorarWCmyc5jtdigvjfX9jCS9JsVhNP26WqiXKNKULV8eGZYpZUVpVoP89UIEE2bQ6kfjd7GppsvJgb10p26UzLmcZZuUL4EnDqgwWsxymAHwLH9dsT6J+Oqrc7CH5i3HA+ZXPsuNVoGOq5q+A7ZK4EBpCroYap6B6NM3psJrPGt/0cz4kMQrQIMPk51alcLC0l0I1s2U8cE+YNGTHFxE7vq0+6ACbiylP+ABsFKKzo3JzMJb47VctoZAWwS4ikdNLljy/v6ykkp7zUj1MJ4cdYlloTBT9FxSBk8Dtt1SYCeGs9k32GurTalul0bb7hLEVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5CpTe2Yac2IIUlDP7PM3/rh6mp+HQV/z3HyXbR5yuQ=;
 b=nT/RbvCD9fdn9WxcsI2C58ctQPIBVGyf8nhFtnkfWTj5a2QMWlXK/+MYHudlgMTKa05FDpTSOpn6cJayLmsNZBK3pmKBKOlLKr1VbkISj+GeWDmTtDCzoNJeVmSkS0A9Qza5RHvYlcO6tywWNrkCc97kT1nFaHyl6T8uKRsuJLzohfBnzcPoX8FCDQyMZnDR83+IhQKKrrZ3sqS72abtIJI9yLtLJ53EIuNTEUFzWD6p5Mt688mROxXD44KpqF6TNIqpl8yGMdBRPryuJN84tElPuxrm7zI97KFbKVTkPvXh1mr5z9N6A4biMP+Gmvdv9miPLYEMNq9qMjHIxGVi2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS0PR11MB8136.namprd11.prod.outlook.com (2603:10b6:8:159::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Tue, 4 Mar
 2025 14:25:16 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 14:25:16 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 14/19] sem/i915: Simplify intel_cdclk_update_hw_state()
Thread-Topic: [PATCH 14/19] sem/i915: Simplify intel_cdclk_update_hw_state()
Thread-Index: AQHbgkwldYiLek9Do0ep2+wExEikT7NjHeOA
Date: Tue, 4 Mar 2025 14:25:16 +0000
Message-ID: <22c68e3c8c8f7b4b0368b3667704f418925de3c5.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-15-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-15-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS0PR11MB8136:EE_
x-ms-office365-filtering-correlation-id: 7cf9324b-75c4-4890-73b4-08dd5b28625a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?emcwZ0EvZXJrRnNKeG82ZHcwS2lKTUdSbHo4NEJmd0VkMFFtMEdSK2RaMUtY?=
 =?utf-8?B?SzhUbGZPZXVVLzBQbkRyZmFhUWZLQnZ1QXZRbWlyWW1MMW4vRXphbklGUFRl?=
 =?utf-8?B?K2xxb2dETWFpY1FrVGpXeHA0NXF6Z1pDeUtVVDFRZ3Z0c0lwSkpkMzJEOWF4?=
 =?utf-8?B?RHlzbGVIWDlMWCtnd1ptSHNIUXRsSXFxM3NRc2hCZTlNd1U5aGRlOTc2QUdO?=
 =?utf-8?B?NjJORWlNd0ZPNlBYVnVtUnpjTHRaOFZ0bjhYdFg5MTRDKzV4VG1ZYXdwQzZH?=
 =?utf-8?B?N2FkQjY5eTFHODVxekNBTGpoeFpncEY2S2tFNU5SamlPL2gvZlpYNmNuREJS?=
 =?utf-8?B?dm9jRjdCRWw1Ny9JZDZ5MWF4enZHcVlQcUpKQ25KRnhDbkI2ZWFDTHR2ZkF3?=
 =?utf-8?B?aVAweDZZempXSXVQcFFNNCtlZnB4N2xoWnNmdUZmOXZydnFzQXVjNlZWbE5S?=
 =?utf-8?B?ZE1iUmNpZ09BR1dKUSt4ajZmcitzTzJidEhQQU9yRVovRGdjeVAyNVQrakxX?=
 =?utf-8?B?dTF5OG0vTFdZZmxqOXRaQytHWHlOdUptbkZVQUtsTWc5bWF0SkloN1BHZmFu?=
 =?utf-8?B?MzRXUkVtSDJLUzcxU0h4MWZIRmtvdUpVeThYei9qRkJrVlR6MEtSejV2REFh?=
 =?utf-8?B?eUZDWHlMOVovSlY0UEs0YWtWSFJENGxhcE9KUjZLZDdpWVBGczk0SXl2VjY0?=
 =?utf-8?B?b1lxSjhhNDlrS3B5aTlremkyVWU0dTI0TG5VUHhLZmY2TDRTK1Y4VEx4S252?=
 =?utf-8?B?SHpOK3ZiOVNUc01yMzhCSittbTR2SUVDZTVQK1JWejIzUTNtYSswRHdBYm9I?=
 =?utf-8?B?Z1M3WDBwQkpyL1FWRW5FcHNkSmFHSGFYaUQxcWhza01TQ3EvRzZGazJ0dGFT?=
 =?utf-8?B?ZVF3bFVJRkdiaytCK1M1NWV5a28zTnBOWndDTTAwSkdGV1RUWU9waHM4UFFQ?=
 =?utf-8?B?enhDM0lPK2VXOVBRckxLaytlVDJyTllvUFZXdVlXOTU2RmhrOGF6YmlwMmR5?=
 =?utf-8?B?WStnNDhjLzBCeVdjcWoyYmp4eE1JWDRlbjJwbFZBTmh6Z1d2MlV5VGZyVjU1?=
 =?utf-8?B?aEozUHUxNnEwNFc4S2lDY3lUTkNUaDBlYm9TZFU5bzZ5QkIvNXlXZmVCRURs?=
 =?utf-8?B?QnUzMWlHUlUvVEZibFIrMEg3VFZhUTdLTTJneGh5UEZkNHVGQkJJc1hEV3JO?=
 =?utf-8?B?UTQ4aWtNVGpFV2FWM1NqcFNFYUNUSU5GTHRqWEF5ZmJuVE85MDJ3SWFaMjln?=
 =?utf-8?B?T2k3enNUVnNUeDl1R0ViUjVJS2kvYXpsQ1FMOEc5NWF4NEpwanlSSzBjNEJN?=
 =?utf-8?B?TmZEQzRXeWpxaHVyS2lPT3I3aVQwUkRvK05DeWZKUUxiVTlkUHlnTTlnc25q?=
 =?utf-8?B?SXhaWXp4RlJTME5hL2ZlVkR4TFh1dS9lckY0eVZpT0VNck1Pd3R3RVU4Zy9Q?=
 =?utf-8?B?U3kraVRxaUVDNFlBNi9IN2F1Mmh6L0I3NnB0Szc5R2tSVldVb3ExOXpsSmYy?=
 =?utf-8?B?aXpMbmcvOE5lN1RRT053ZzYyWDUxL3dMdEtjdU1TRGRMMWlnWVJHb0V4UkxU?=
 =?utf-8?B?eHpCbzBkMDhZbG9HYTlweWRKM0hpSUVJTXN0ZHF1VnBUK1ltd1JmU3A3bitR?=
 =?utf-8?B?emZjTWpXU3dLR29GMk52NlpBcmMxalkwdjJqc3BzU240a0J4b1A0RWx0Tnhx?=
 =?utf-8?B?aUhuVTdPTnNSS0VNZWVBaXhVTWNPNU95Q2tTNXNsR3ZDYktnbXg3dmlXTTF3?=
 =?utf-8?B?UlRkeERQcUQ4eUxnOXJNNWRZMk9uZTB4S0NudWlVbkpkbDM4WnZ2UWI4dVJn?=
 =?utf-8?B?RUdlb0Y3WFNlZlREQXY4S0tJWlFicTFBTERaN3dzTFVIL09kbkVDMGJCUnN4?=
 =?utf-8?B?MkkvbGI0YnZUMTRaeUZEblNmaFM4QVMrdXhwdzFqb3FLcXFjOWdFTWR5c0VW?=
 =?utf-8?Q?MUwFrOwPiSdIdyQ5NqQhxQy72Njz3dvf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUlUb2FMM2NDcnpHN1JlbExRelFTY0NHL1U5T29PeEd5cjhKTnhvOTJjS091?=
 =?utf-8?B?MHZGaDh0Y3pNS1E5OVdqbGw0ME9MeHJva2JXeW5kRGtHOXc2WEh0WUFDT3Jw?=
 =?utf-8?B?NVl6NGpMTHNkSUFEVVFWNTh4eFBZa0lrQy9selZXVEVqMWFSWStCTkpodG9h?=
 =?utf-8?B?QjRsNFFMNnREdkRDWWFGM0ZFY0tlSi9LUEZWWDcrNjAyQ3VsUmZ4UHNmWXJC?=
 =?utf-8?B?YnNKRlRlY2RMb3lXckpMYXd6SVErZGlid2M2ajZselZVNFlnNVNDalJENVE0?=
 =?utf-8?B?TkxTeDZRTXp0MHMyK25ybzdmaWlabWpYUVZFSyswbWxMeWowZUU3MjA2YmNS?=
 =?utf-8?B?TG5jbXhPRCtIdVFHN2F3S3BGS2lBaGlZWWtXUCtUV1NRekdqWWkxSU80Smg1?=
 =?utf-8?B?TE5KalVPYU1tMzEzR0xObU5pM2FCLytsd2VOR1g2eXN4ZTlQZ05ETlZLWTRj?=
 =?utf-8?B?R2NTRDhORGFHMU9zbVphSkFPeGllcUFtYW5IbWIwYkNPSDJxQUdlVnIvWmlQ?=
 =?utf-8?B?RDVZcmx0WkdkWlBzVUVlSDMxQjlhekRRVVcyNHNBZ1k3SzRCZ3R1aXc1N25U?=
 =?utf-8?B?S0txMDVxbENtSytwUlBaY0xqRWZPazNuM2lhYk45b2RLZGZmNEhGZXUvRFdk?=
 =?utf-8?B?cStyR0JOelgvWlg5Q3dJL3l4SWd3aVFUeXRwQXhTUURhSkZTVmdhak5LbXNP?=
 =?utf-8?B?L2JFSkNXWVdKZEw5ME4yTlFib3NmdjJ2V2wxMytwWVFxSVU3dnFqcWdwa0Fr?=
 =?utf-8?B?dTEwOGtjbCsrTzBLN0hIMnhCRXc0YlBNRFhVZ0ZXQmlCNDZFZUpBM0hBdnFO?=
 =?utf-8?B?TTF4OThmNFNaK2hteGh2ejRsRHQyQitKVmROWjVEVDNTYmx5Z1hwTCs4bXV0?=
 =?utf-8?B?cTlZdDZNd25wQkhSRFNxbTRrZ3Q5YkxVeDkvRGRmS3lxajFIN2RWcXRsZFVM?=
 =?utf-8?B?WGJBZ2JVZzFYanhZcFlWSWc1ZHJhWGloZStveVJTcng2RFNCMkpLQ0VGdUp3?=
 =?utf-8?B?cDFFRmhHaFM3YnBSYnpuTFhlN1lFUTRTVU1wbEJWWURQeVlHejEyN2IvdTJV?=
 =?utf-8?B?SWdPZUJkR0lZdW5KeFd3MHM4dEdjSTFxdW0vSU55TGRwZ2FnKzl0ZkRKdEFt?=
 =?utf-8?B?RmhzMXg5WXhZZFdhNUpQUWpZNW50dk5XVlAyYmVvSlRVdHZkZ0FHTDJNZmNv?=
 =?utf-8?B?RUZyT0orOUtRMko1RERiN0xXamJBNnErQmwzb1c0NjhLRGg4alRGSGJjMXdE?=
 =?utf-8?B?TkxVRHh6WU4xMEZJQUFSa3hmT25nT0k5RXVUOUVwbm9CSll2bU5teVlCbkxm?=
 =?utf-8?B?aVdIekFnbUxBRnNSenZXUlBvWHZKSGhNNVpwN1JXbjZKMVVQa25yejdhZ1FK?=
 =?utf-8?B?T0FLTDhlTzRkalhJWHBZZDU1NC9mdkNGVTRiVEdKZEQyT1RadVcrZkFZYTVB?=
 =?utf-8?B?cnBGR1RQaEJPQ1JWcGdvWVg1Q2QrL2ZhMXFMdURKaGNRRGRWR2tKYitJNDVN?=
 =?utf-8?B?c1hTRVJQSDU1ZFloRnZkRkljODFMUnNjeTdHa05oakprZlVRYk4xWmNGb252?=
 =?utf-8?B?MWNCYnI0aFNsdVJuNm5EVkN5MVQyaHpGSzV6ckdmUDh1STJ3dFVZS2R2WUZI?=
 =?utf-8?B?WkJTUkJPK05CNUMyRi9ETXhKSWM1aHR5UExOQnZOcDZ4d3AvK0xUSmZvN1NQ?=
 =?utf-8?B?QjdyVUlFTGtXT2ovTEpJRk9qcFRDb3A3NHdDZzUyRTkwNlBUMHpUcys5d2hL?=
 =?utf-8?B?ZFc3a2NUNW9MWFpJajVKd1htYWN2ZHVQOWkrUldMQkVmRW1MQU1NOFVsVnl0?=
 =?utf-8?B?Y2RQNTQ3QlVrTHpCcVE2RldVc1Y3VXAxZGV1RXN4WG1YeHJ5Vk91WnNUMzlY?=
 =?utf-8?B?eWRCS0NJMWl0SWh3T0I5YUdsaEtxS2QvaHh0NmhWdjdUV2NkRUVMcWl3dU14?=
 =?utf-8?B?VW5lc0g5cTIxbGlham5xdm0vUlJHbEpickw1SzJzemdVREpOdkI4UWtyWFdQ?=
 =?utf-8?B?MGlhR3VpVGplaUVOQWxXcFA1Njd3NGJ3OGZadFF1MmRqWklIaXBRNUZlYmdG?=
 =?utf-8?B?eURpUm9DWjRDb3lRSVBkSWRNREd0MnFMVFdNUVp6MTQzNWFrN2JXMHE4SklE?=
 =?utf-8?B?Vzk4MTI4ZEJ5VjFkVmM5bDJzaXo3clpDUWtSTy9WZURHNk80KzdkWUVxR25i?=
 =?utf-8?Q?HIub+eHpCtLzUn5wnhYxZm4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <05D35D952018004480783F990853866A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cf9324b-75c4-4890-73b4-08dd5b28625a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 14:25:16.3311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SfS1VYDDjQlu0t/MBwwlW8vtqF+CgL/As0cwTCh43mKNf83Gfb8P79Pn3udl2RBkaxnnQm4iNX7SeDAcGk8QEneRuQ69y9983Wrch0ynSR0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8136
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gaW50ZWxfY3J0Y19jYWxjdWxhdGVfbWluX2NkY2xrKCkgY2FuJ3QgcmV0dXJuIGFuIGVy
cm9yDQo+IChzaW5jZSBjb21taXQgNWFjODYwY2M1MjU0ICgiZHJtL2k5MTU6IEZpeCBEQlVGIGJh
bmR3aWR0aCB2cy4NCj4gY2RjbGsgaGFuZGxpbmciKSkgc28gdGhlcmUgaXMgbm8gcG9pbnQgaW4g
Y2hlY2tpbmcgZm9yIG9uZS4NCj4gDQo+IEFsc28gd2UgY2FuIGp1c3QgY2FsbCBpdCB1bmNvbmRp
dGlvbmFsbHkgc2luY2UgaXQgaXRzZWxmDQo+IGNoZWNrcyBjcnRjX3N0YXRlLT5ody5lbmFibGVk
LiBXZSBhcmUgY3VycmVudGx5IGNoZWNraW5nDQo+IGNydGNfc3RhdGUtPmh3LmFjdGl2ZSBpbiB0
aGUgcmVhZG91dCBwYXRoLCBidXQgYWN0aXZlPT1lbmFibGVkDQo+IGR1cmluZyByZWFkb3V0LCBh
bmQgYXJndWFibHkgZW5hYmxlZCBpcyB0aGUgbW9yZSBjb3JyZWN0IHRoaW5nDQo+IHRvIGNoZWNr
IGFueXdheS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYyB8IDEwICsrLS0tLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9k
IEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggOTQ3ODMz
YTk2YWI3Li42MmNhZWU0YThiNjQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMNCj4gQEAgLTMzNTIsMTcgKzMzNTIsMTEgQEAgdm9pZCBpbnRlbF9j
ZGNsa191cGRhdGVfaHdfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IMKg
CQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+IMKgCQkJdG9f
aW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsNCj4gwqAJCWVudW0gcGlwZSBwaXBl
ID0gY3J0Yy0+cGlwZTsNCj4gLQkJaW50IG1pbl9jZGNsayA9IDA7DQo+IMKgDQo+IC0JCWlmIChj
cnRjX3N0YXRlLT5ody5hY3RpdmUpIHsNCj4gKwkJaWYgKGNydGNfc3RhdGUtPmh3LmFjdGl2ZSkN
Cj4gwqAJCQljZGNsa19zdGF0ZS0+YWN0aXZlX3BpcGVzIHw9IEJJVChwaXBlKTsNCj4gwqANCj4g
LQkJCW1pbl9jZGNsayA9IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY3J0Y19zdGF0ZSk7
DQo+IC0JCQlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBtaW5fY2RjbGsgPCAwKSkNCj4g
LQkJCQltaW5fY2RjbGsgPSAwOw0KPiAtCQl9DQo+IC0NCj4gLQkJY2RjbGtfc3RhdGUtPm1pbl9j
ZGNsa1twaXBlXSA9IG1pbl9jZGNsazsNCj4gKwkJY2RjbGtfc3RhdGUtPm1pbl9jZGNsa1twaXBl
XSA9IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY3J0Y19zdGF0ZSk7DQo+IMKgCQljZGNs
a19zdGF0ZS0+bWluX3ZvbHRhZ2VfbGV2ZWxbcGlwZV0gPSBjcnRjX3N0YXRlLT5taW5fdm9sdGFn
ZV9sZXZlbDsNCj4gwqAJfQ0KPiDCoH0NCg0K

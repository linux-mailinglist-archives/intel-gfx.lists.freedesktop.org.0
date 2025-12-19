Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 494B7CCED81
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 08:51:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCF2F10EBF8;
	Fri, 19 Dec 2025 07:50:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lyeAVrCH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDD2C10E8D6;
 Fri, 19 Dec 2025 07:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766130657; x=1797666657;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uwfwC4CJDVfEIlrAEwUf5j/jrmOj+rMI+Wfnx5olCKU=;
 b=lyeAVrCHVlxP1qq8sRuR8KuVVLLovzqOTeTJl5u9b39zNge4m5eQFpcQ
 p6U6kuS0U6PVopeQ2pa57YlV361rqvXtHfgRj8nQQyoiuzWrFqZLu1e3Y
 S8ApP85gSRk1At+y1IA66+3TNGHxwOu1dyTyurGIUg4vys0JSIBTzSCnI
 Ou8udOVi/UV9VI+6Seg8f1zsVqdQrayDsLXpWMSUb0xKbvzYtDd5kiR9N
 IqkOknnZRAtx2m/KWU7IB94YcceG/wC1jRc0Lpc//JrLEYv9TdqEtihEc
 GLonobA27reYJG/mIeE96Kd680UhrczI+SN1CKStiVr/FfxYcWSqG3txY g==;
X-CSE-ConnectionGUID: O6CdABlXRAGIlpi+l1MqRQ==
X-CSE-MsgGUID: UHK6E7SCSz290RytkjZtqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="67968493"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="67968493"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 23:50:56 -0800
X-CSE-ConnectionGUID: FUBttKDRRGu/7LH9rghk1w==
X-CSE-MsgGUID: DNEl9NP7RBicI0bytfb0pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="203697989"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 23:50:56 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 23:50:55 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 23:50:55 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.70) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 23:50:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oPC6dxzVM6tO4l7iXg65AwKGks8f2Z1yLLBlBrte3i+TRWwSGMYINOCb6ThFF+GqH3z99TiKSCuj+0EDxMIS8iZLJgjGGRdcXw9F1RdSiWL3mx0uXjfTFy2apaR4QMmNIHpVgo9zEa9sUqL/pCA3IfNrStW+zlyhcd8sIEZ3dvWkh5+AshmPxqeVSNfJdcc3hMQFjmnMoR0vP3GEiCCCfhWRwGqHbgmRoOeTwHATvbY+2At7W4troFpTLmQHw+cHG2rkdnrZlkkY8Oe+j1fdZt+mru6v5MCYt9mmFUhtd5IvkR0udTn3WrVrmgrkMFdgZX5cvQqyTLeKgGoZ+xwpTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uwfwC4CJDVfEIlrAEwUf5j/jrmOj+rMI+Wfnx5olCKU=;
 b=Z1i/UfF+9DVr138j6d4jhsy5ELLWbACAeomq0znFpHdVQ4zXSberVHF4sH4OLAS1Q2FqOj4ajiWY30WiPfVaHN+BYxkbPcmyhu7c9ClUCdyJ5EQVJ4DIWewuxaOysCCLkcTMM9to+IMmmIMwCLzQVijWtkQx+rgNLpiQR5VJWOTzl2RrFCAzhWYi1QM15ni1C8OoKhUfzsMB+tnwk4QK+ejr7/zodwyI5/vNnE7+2BDx7GFYd1iKFoRwdAGyIbHAp1kbgMvJRtwFNkIcy0ppdSqO6kcYYqHOkUZja6Sya6ZqtSfxIAXBA5DGx6xhfIPKuaSGid1TSVyjo2ZAyeJ11A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by LV8PR11MB8723.namprd11.prod.outlook.com (2603:10b6:408:1f8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.8; Fri, 19 Dec
 2025 07:50:54 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%4]) with mapi id 15.20.9434.009; Fri, 19 Dec 2025
 07:50:54 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/cx0: Toggle powerdown states for C10 on HDMI
Thread-Topic: [PATCH 2/2] drm/i915/cx0: Toggle powerdown states for C10 on HDMI
Thread-Index: AQHcbtC57GOS20KHPUyXpKYuVXHTTrUoeIqg
Date: Fri, 19 Dec 2025 07:50:53 +0000
Message-ID: <IA1PR11MB6266675E8DC83DD4A396266EE2A9A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-0-08677b03e2f1@intel.com>
 <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-2-08677b03e2f1@intel.com>
In-Reply-To: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-2-08677b03e2f1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|LV8PR11MB8723:EE_
x-ms-office365-filtering-correlation-id: 0036b8db-bbb0-4f4d-ea2b-08de3ed35641
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?SVcyemlFdjFpZ2N3TUZrNVZvTUdzb2tOVmx3VEJmYmtic0VjcFR2bCt6UTNr?=
 =?utf-8?B?VHQxNzZTY21wRjgyeE1TRGJzcWpRemVtNThlRVJwaEZZRDhoWUwwd2VXRG9y?=
 =?utf-8?B?SFRnMFVscTNwdWJ5THpUY2NodzZMemRZbGQ2dWlsL2puNGpsTGIrN2pBZ2k1?=
 =?utf-8?B?OUNEM2VNamlMeFArWDJoTnV5dU1ZNER2WWZwMHZOS2F0TzF6Uk9mcW5OZUZF?=
 =?utf-8?B?THJiNkRTci9kSkxLZ2ZwcGFsSFRONTFUZVVla3gwbzlSMWw4em1xMW5TZmlL?=
 =?utf-8?B?SjVXaTFzbTVvL0hGckVwUzFJTlBOS0hBbXpiaXVZOWF3dUk0VGNoS3hrcU81?=
 =?utf-8?B?YkloL3RLOGdQa2RmOGVReitUTzFFSmhZcEF2L1UydjhacWJ6R2p6WkNyZ2JM?=
 =?utf-8?B?dS9UN2JpMFFpWXdUbjhnbHV1NXhYV3d6U3U0aEtZR05nL1UvN3VmM2pTMzNj?=
 =?utf-8?B?ekJUL0dCZWtFU3dJOTVOWVRlcldDSFVxTGpKVG9BRStOcWI2Q2swNUFjM3hL?=
 =?utf-8?B?Z2dIaCt6VU4wR05vd0VKNmtCbk1FemxWN2FVQWQ0UTliQlFubGNmK0hkYTlQ?=
 =?utf-8?B?S0tvUU91UXVoaTNzcEpReVNmZWRhL1Z6UEEvOFdmKzNsQ1NCNG1nT2RmUkN3?=
 =?utf-8?B?N2d3YzZxaUE1RDJSSDUrdldpYkRKUEJTeWQ5YTFMZUtRdWxiSzZrbFVsbHpj?=
 =?utf-8?B?RkUvb2RIbEU1U2FueUdMUVEzWnVGRENjSHNQREc4c0ZJcXNld2NxaDg2U0RK?=
 =?utf-8?B?KzM4YzZPSzBVbUQzcE83Qy9pWk04RCtPRzF6eHZOU0I2V3V5M2t4andTUUQx?=
 =?utf-8?B?RTV2N3VZTmg0d3BqL2F4U3ZKSjh3ZW1YaGdPZGtzZmwvWC9JV21XVk5WN05u?=
 =?utf-8?B?RlhKMElCQ2FwaWVPc1dMNTFQdmJyRXB0SXhVQ3kwZXVSUHNTN0w3c2R1OW40?=
 =?utf-8?B?OVhRV0dzaE02NUxIakZlclBwZHBIdFd6amtzT0xRU1BiQzlsUGtoa3p1RHpn?=
 =?utf-8?B?eHVNdVVNeER2aS92ZnlKcmtFenIyNUhVUEM3dzdSMlNkWGRBbGN6RzJwU1hY?=
 =?utf-8?B?Sk5SYnZNNHNpMS9uK3VHNEh4ODZ6UXBGQ2ppeUx6b01KMDZWRkxBNnYwZk0y?=
 =?utf-8?B?Q1NvN2NDaElpN2xSc2lIZnUra2xaQzhoRnlNRkdvRnpSeXdrcXkyN1Jkc2dC?=
 =?utf-8?B?d3ZCb2JZRi95SkRPT0N4d0U2ZmVjN1Q3cWFZaHhqNURMeEhNbzNvWU1WN3hs?=
 =?utf-8?B?dzlNU2YzN3Zncy9Hdll0ZXhFblhjcktpZDBaQVMrTVFCOG9sdkNkYWU4Zm1I?=
 =?utf-8?B?elhKNzllNGRnaXdDOG9zTzJOZlpQaWdvVjFreWhCc3JFVnZVVGRkaXY3bXFn?=
 =?utf-8?B?WjZSSFYrbzQ2VXdya0paSTlHQnhqSUdWOVBJT0RGOGpZb3FlTmFDMFV1TkFr?=
 =?utf-8?B?czJpbmcxcy8xVlJJOFhtano5SHRaNUMzT3BVdDMyWlpvc05FLzBkVW1vMS8v?=
 =?utf-8?B?am0zQ2c4Tk05SVlvRmhnZGhyUnc1TXF4c21TZVF1emk4TFljd2VOaG16dzdt?=
 =?utf-8?B?YkZJNmE4dDhoaE5zNVFLcGQwTERTQjZEMnJWc2FpcGdhSjV2Wmt0aERmYnpa?=
 =?utf-8?B?MTkyWWMyMVZ6aWRKbnd0UDBqZ2NBQWpXcm10Q1g3aFJ3b1BxV1d6REZQRUpD?=
 =?utf-8?B?Z0VvM3pXZHp3QzE2NlJwNG5YUTdGREFSWVI2T0M4aUFuUzI1Vlh3K0RrSlQz?=
 =?utf-8?B?ekVvMmFteGF5WVFyeEJZRUd3RlZWR3VLNFFOZDltdU96WUozMmdNdmhJV0Z6?=
 =?utf-8?B?b3dwNDVvUHRadS9TOG11d1lPYWVHS2loTDd0dDhicWdWa2FpODFxODZRMzdz?=
 =?utf-8?B?UUVvb2hNWFRVeHppcGdjWk9JRDE0TE0zL1lhdUpxQzFnS3NZN1g5dGRWVHd6?=
 =?utf-8?B?eEoyVGkyQk96ZitwV3JNNHpXM2ZkNFc0ZmloY1dlUENOU1Q5eDZiamcraG5T?=
 =?utf-8?B?ZGE0STJHVExubHVIcXNPMVM2a29mWG5ZUUswYmZEYkhhY3dhb3JBcloyeVlU?=
 =?utf-8?Q?NNAwsB?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z3N6U2swSlRJMnYxZUY5dElUbVhFckpHK3R2MFQ0SzZkTkxpWm8wbWhoWDFL?=
 =?utf-8?B?SzJZaURDM3A0WEtwWlI3TmxxWlQwS0hwYmdqM250V0V6cFZ5L1kvQ25IUjNW?=
 =?utf-8?B?alVDbExjK1VpYUs0aXZRUnRQb1dudGd3dGJ0bW1XVGJxQjQyeXRzSDFCZllR?=
 =?utf-8?B?c2dBSDdZdTdxYy9pUVRjdTRUWUhlTjR0dVZ1dWRqQmFzRExPb2ZOUTBieDF4?=
 =?utf-8?B?TFp2MDltc3diYnorcnArUVlVL3NDRTlGU3R4bjVhMXVVOXFaRTR2VjRUMDBu?=
 =?utf-8?B?RDhTcEhQNWdPZjUxNVdWbWxlaWFVNHI4b2NjYzNEZnlYVUJoUHM5c3NOajJw?=
 =?utf-8?B?RHhnWTI4bkhaejdVM1lBZlVSbkZTUUlUckFRSlBmeWw4amV5SWdkaHhLeWJZ?=
 =?utf-8?B?UEdVTUZLM1pHcHh2a2RDc3plVHpvMERNNnlLZlNkZ0M5bHRMK1RKeWgvbUVM?=
 =?utf-8?B?V3Y5Wm1sK3dIeVRnWkhoeHVaYnlsdnRub29XM21XR1haQ2h2OWdxUDZYU0Jp?=
 =?utf-8?B?SlMybHpmd2UyOFIwZkJtTjFXak4zN3RGM0VPMDUyaVVmYUJzbUk4ZFYxTFVu?=
 =?utf-8?B?NlJtMW9ybkRrVEdXcGdxM3hXeTNTRWhhSHcyTE42TmJNd05hcVVGWTdJdytv?=
 =?utf-8?B?OUVEZ1dvL1VGRlgwOTFtTmNSWnRoQy9uVDBjeGNqZk02WkZDZXVYUjJiZjVZ?=
 =?utf-8?B?cTV4RnJoZWN1bkxXaTI0NUtQc2JWN2gwL0NjcUk5Y1RMYVAySFNtaGJWb1B5?=
 =?utf-8?B?SUwxZVkwUXpNZ2QyakVhVVpOSUk5SXNOL0xCekZXQ3NUNVJrc2JTRmh0RitD?=
 =?utf-8?B?RVBSTENVQ1RjS2V5SFBZMFdWS0N4UGJtN09hOW9lQzJFYjh6d2R4bHRGWHIv?=
 =?utf-8?B?MmFEeU9WK3FYYVE3Wjg4TjJJSUJNMWs3UzZYWjJYK3pIWGtwVmd1cWxzTUxC?=
 =?utf-8?B?SjkwRHF2L295VVVCa0owckR4ZUlhREo4Ym9oNUtCaXZhN3hhakU1V1E4VGIv?=
 =?utf-8?B?eVI2bWVKOVFKTmt2eEhnMUE4SXJWTThqZHQyWm5hTERhSFh2ZXZaM3A1V2tU?=
 =?utf-8?B?TTZjVmxnT0xKbyszc1hDclZ0M0kyVXM0MFpkb1d6STR6SkJ2bmY3SUhQTWVs?=
 =?utf-8?B?ZGhkQ3NRR0Z4aEkxVzVMTVRBQVVCZlAyYUcrY09WNXJ1YlE3SnJManRxcG91?=
 =?utf-8?B?YTJYdWY2MXU3c0NRRDg1MDhsVGpHOElQdVNHcHV6c0MwK2NkdFN0S0lPNnBR?=
 =?utf-8?B?MkJYb3BxYk1FblBPWDdPS3dhWTN2TkZ3MXh6aG1FN0llbmZSV1Iwa3p5Wkp4?=
 =?utf-8?B?ZUl5TlhNUi8zbzRMZ1NHOGhySFQwcXMzM2pEeDZOUkd2UlhSOE5sSnJndE9T?=
 =?utf-8?B?MjhKWHNCZmFrczR0Zi9FMkZuaHFBajhyUGhnSk16dWNhNjBoRStLYkRHRG42?=
 =?utf-8?B?OWEwVFJlUENTNjhmZkZtYmdRbG83WVd3dXAwcVQ3dG13NE5XOTh2L1BIZmZZ?=
 =?utf-8?B?Yi93TWlkQnBKZ2U1aURneE5iYUNPUGM5UFE5Z2l3cEtNKyttWEd1TzdGSVBQ?=
 =?utf-8?B?UG9xK1NraW90V1o0TDd4WjVYUWlBTVBac0R2c2lSbGhuSjUyRFlOOTVoa01E?=
 =?utf-8?B?czRPWXRzaTEzemY0NE0wd0JDcmlIRlJqZmdESDdHTVRyeXlTQnAyVjVMbTBE?=
 =?utf-8?B?UE9zaXorYStEYkM1akE1NkZkT3RjMHVES2them9McVd2Y0gyTk51WXlEMVZj?=
 =?utf-8?B?dlBCRDBtd0VsR3hSQVJhMFRnekQxUXdBQmFzZmVCSnBFREJKdWtoMnFmdHE1?=
 =?utf-8?B?bjE3OVNjcDltSmZtMWpibld4dUhsZXRocXRRdjJzQnNUZ3MwRmdBSEJQOHYv?=
 =?utf-8?B?NW4rKy9RUkllQUxVUEphSHZ2WTJEdEhZQW1qRnJxRS9hdURmYkt1bHRzZkcv?=
 =?utf-8?B?QTNteGFoYTRWT3diMUtsVWxpZVVpUHN3Q01PNWc0UGZmM0RaV3VvWS80V3RC?=
 =?utf-8?B?b2tTMUs0czFaRkhQdjRINnN4TDJjSlpUdlVJV3hhNlBua3MxSkVwRXp6V1lR?=
 =?utf-8?B?VnhFN2xGWE4xZ0FNY1VoVElJZGtsZjJCdmZEckszQktzYzIwU3RzK2F0dUYx?=
 =?utf-8?B?T3R2MW84NnVDRjh5Umx0djNtenlTSHN0bms0dG1SZHJYNFpydnlwRzlZVGtl?=
 =?utf-8?B?QXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0036b8db-bbb0-4f4d-ea2b-08de3ed35641
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2025 07:50:53.9258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y/r7l9BME1UovFQMgpdrbgH+5prP5a3JI/59FioJfvjH3YCcYkPrFG4l+rknx5QKsNEFtKrZr+JBpsyguaAnr+JmYqNU8UoqQlZ4TX1uzI8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8723
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgR3VzdGF2bw0K
PiBTb3VzYQ0KPiBTZW50OiBXZWRuZXNkYXksIERlY2VtYmVyIDE3LCAyMDI1IDI6NDIgQU0NCj4g
VG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBDYzogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9jeDA6IFRvZ2dsZSBwb3dlcmRvd24g
c3RhdGVzIGZvciBDMTAgb24NCj4gSERNSQ0KPiANCj4gQSBuZXcgc3RlcCBoYXMgYmVlbiBhZGRl
ZCB0byBCc3BlYyB3aXRoIHJlc3BlY3QgdG8gdGhlIEMxMCBQSFksIHdoaWNoDQo+IGluc3RydWN0
cyB0aGUgZHJpdmVyIHRvIHRvZ2dsZSBwb3dlcmRvd24gdmFsdWUgZm9yIGJvdGhzIFBIWSBsYW5l
cyB0byBQMCBhbmQNCj4gdGhlbiBQMiB3aGVuIGRyaXZpbmcgYW4gSERNSSBjb25uZWN0b3IuIFRo
aXMgdXBkYXRlIGluIHRoZSBCc3BlYyByZWZsZWN0cw0KPiB0aGUgY2hhbmdlcyByZXF1aXJlZCBi
eSBXYV8xNDAyNjA4NDAwNiwgc28gZG9jdW1lbnQgaXQuDQo+IA0KPiBOb3RlIHRoYXQsIHVubGlr
ZSBvdGhlciBkaXNwbGF5IHdvcmthcm91bmRzLCB0aGlzIG9uZSBpcyBhY3R1YWxseSB0aWVkIHRv
IHRoZQ0KPiBDMTAgUEhZIGFuZCBub3QgdG8gYSBzcGVjaWZpYyBkaXNwbGF5IElQLiAgQXMgc3Vj
aCwgbGV0J3MganVzdCBkb2N1bWVudCBpdCBpbg0KPiBpbnRlbF9jeDBfcGh5LmMgaW5zdGVhZCBv
ZiBhZGRpbmcgaXQgdG8gaW50ZWxfZGlzcGxheV93YS5jLg0KPiANCj4gQnNwZWM6IDY0NTY4LCA3
NDQ4OQ0KPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIFNvdXNhIDxndXN0YXZvLnNvdXNhQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYyB8IDE1ICsrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlv
bnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2N4MF9waHkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gw
X3BoeS5jDQo+IGluZGV4IDI2NGY4YTUwNzJlNS4uMmM4N2M1ODgxMmRhIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBAQCAtMzMwMiw2
ICszMzAyLDIxIEBAIHN0YXRpYyB2b2lkIGludGVsX2N4MHBsbF9lbmFibGUoc3RydWN0DQo+IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJICogRnJlcXVlbmN5IENoYW5nZS4gV2UgaGFuZGxl
IHRoaXMgc3RlcCBpbiBieHRfc2V0X2NkY2xrKCkuDQo+ICAJICovDQo+IA0KPiArCS8qDQo+ICsJ
ICogMTIuIFRvZ2dsZSBwb3dlcmRvd24gaWYgSERNSSBpcyBlbmFibGVkIG9uIEMxMCBQSFkuDQo+
ICsJICoNCj4gKwkgKiBXYV8xMzAxMzUwMjY0NjoNCj4gKwkgKiBGaXhlczogSERNSSBsYW5lIHRv
IGxhbmUgc2tldyB2aW9sYXRpb25zIG9uIEMxMCBkaXNwbGF5IFBIWXMuDQo+ICsJICogV29ya2Fy
b3VuZDogVG9nZ2xlIHBvd2VyZG93biB2YWx1ZSBieSBzZXR0aW5nIGZpcnN0IHRvIFAwIGFuZA0K
PiB0aGVuIHRvIFAyLCBmb3IgYm90aA0KPiArCSAqIFBIWSBsYW5lcy4NCj4gKwkgKi8NCj4gKwlp
ZiAoIWN4MHBsbF9zdGF0ZV9pc19kcChwbGxfc3RhdGUpICYmIHBsbF9zdGF0ZS0+dXNlX2MxMCkg
ew0KPiArCQlpbnRlbF9jeDBfcG93ZXJkb3duX2NoYW5nZV9zZXF1ZW5jZShlbmNvZGVyLA0KPiBJ
TlRFTF9DWDBfQk9USF9MQU5FUywNCj4gKwkJCQkJCSAgICBYRUxQRFBfUDBfU1RBVEVfQUNUSVZF
KTsNCj4gKwkJaW50ZWxfY3gwX3Bvd2VyZG93bl9jaGFuZ2Vfc2VxdWVuY2UoZW5jb2RlciwNCj4g
SU5URUxfQ1gwX0JPVEhfTEFORVMsDQo+ICsJCQkJCQkgICAgWEVMUERQX1AyX1NUQVRFX1JFQURZ
KTsNCj4gKwl9DQo+ICsNCg0KTEdUTSwNClJldmlld2VkLWJ5OiBEbnlhbmVzaHdhciBCaGFkYW5l
IDxkbnlhbmVzaHdhci5iaGFkYW5lQGludGVsLmNvbT4NCg0KRG55YW5lc2h3YXIsDQo+ICAJaW50
ZWxfY3gwX3BoeV90cmFuc2FjdGlvbl9lbmQoZW5jb2Rlciwgd2FrZXJlZik7ICB9DQo+IA0KPiAN
Cj4gLS0NCj4gMi41Mi4wDQoNCg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2C9A42195
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F6D010E45B;
	Mon, 24 Feb 2025 13:42:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oHtz+qbU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC5310E153;
 Mon, 24 Feb 2025 06:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378981; x=1771914981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4hmvC7OtJcSKzgnQ7l5ldxmLn0a0he2roOzic5mnO2Y=;
 b=oHtz+qbUwo1Vs2Gx2urAC+cuZX9heFyVDDi+Er+LjlY2heXG6FnnhALI
 JkvEtmO1a/46ArwnUBhcv62ScY2jA18q/vVdFfz5XjFVI8UWHbnSGs2x9
 MsFq91QGEUv/iOro6iaf8Eua3Ycw62N6RUVpMlf0EKr1kWjiuXd37FYWK
 h7AIGeSX+/qI60j+7c201gutf93ONATHkcjBbki4aMe9C+BjI8KQQcHQw
 D4wK7JH0DF2Ir3gFmyXP2tef8QNt2CrSmlcjGR23b7qfXHH6XjMpbJnXz
 ihaX4lO+SXITd901ZvLiM3UsLVBCo74yzzLfsoZOpPlMK0dEbDKPuNffK w==;
X-CSE-ConnectionGUID: RqYLNHvsT1ShkcgVUm9ufQ==
X-CSE-MsgGUID: QsuLOpTHSQ+YxsT+heCcrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="40308818"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="40308818"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:36:21 -0800
X-CSE-ConnectionGUID: T1tUottsS5ic9z5xjiJfgw==
X-CSE-MsgGUID: +biTyJSWTi6XrAaKmXYDWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116473213"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:36:21 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 23 Feb 2025 22:36:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 23 Feb 2025 22:36:20 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 23 Feb 2025 22:36:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rpPFNxRqIKntA3mXwxUfn2bYRewOwHPQEZ7RaDdf/guAwi1AxbHUJwk34IGv5e18Q/jaEnlz/3EL85H6BkGSFbK5qRPvgz5RfI5uCxcHPpUPF/FZ3nuNzynknGRaJTMGmfDjD58boB8iBunMWKF/aFwML/I35We2Q5VsC6ykUZ6Dd5PmwpYBNHTL6pwUFxMXNKo+srRW9AXwe68rscGnp5Q1Xhv/ndme92Ixy1mQ35ogBSr9swhGCMqzmaPn/9hkWSNOa1fJoEgkFvL+P6qdanZzSnxNnihH5MxEuX9tjmLubCHabVuZrLJByLD4CgP23toMvgiU/dNwI6XGxemSMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4hmvC7OtJcSKzgnQ7l5ldxmLn0a0he2roOzic5mnO2Y=;
 b=pi4r02lC4iProGNqVggNEI0dLIwVCFpjD3bkWLHqv07PvrpHY+79F6sRtZVkZZs3EXpZ4EliKSvQrzjWz12Nl8ZyzscCBt1nOXbYMY7UvUEiqKiptx78SwJFAgsaNB6IvRTKCsfNEsA+nol5P+GQpUSoVFytDPZ/KbvAkVeLm+lprjaJ+JzXcfMj5pJm6c35okMyxmKgwzUgGQm6ITvzZVM7teWIlkgHWPoVgghAxTBiaANxioR28C6PvG4gvHG0FoW1K41JtA6PVE7zkAYaCXoKVY+8a/Fo+KjOcROgi096F8bOzpvNPn5RS08kKLZSEDDcmnp8vuxI5+aJV8jNbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8466.17; Mon, 24 Feb 2025 06:36:13 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%2]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 06:36:13 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 3/4] drm/i915/dsb: Allow DSB based commits when scalers
 are in use
Thread-Topic: [PATCH 3/4] drm/i915/dsb: Allow DSB based commits when scalers
 are in use
Thread-Index: AQHbgkgJekHw5cd1tkGXyB489xgN17NWB/SQ
Date: Mon, 24 Feb 2025 06:36:13 +0000
Message-ID: <DM4PR11MB63606578139C5FDC311A75D5F4C02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250218205850.1422-1-ville.syrjala@linux.intel.com>
 <20250218205850.1422-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218205850.1422-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB6797:EE_
x-ms-office365-filtering-correlation-id: ecc4baf8-4d91-413e-f702-08dd549d88a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MVdoUURuallnb0NyTkQ4MWRSbkk2ZjJhL2RtdS9BM2YwcnVBSlphVldPOXIv?=
 =?utf-8?B?c3RMeDY2VHVtNEYrcStHQnRYUjQ2ejJVUGFuMVdrWVlFOWg1N0lhZUd0TnJ3?=
 =?utf-8?B?dmhJMGhTdnptRGZKZm1OVXV2OTA1OGw3L0MzcmYxY3djVFE0SGJ4R0ltU09m?=
 =?utf-8?B?blpWZWlQT25XMnRUaWJkTDExbE5kYUsybTRmdThEQTRkZW8zU3oza3M5ZDVM?=
 =?utf-8?B?TEZWanh4clUrNGJiaWNycWtWVW84ejlKRGRuUDdWdW8vd2JVVjVNV1l3b0lm?=
 =?utf-8?B?R2xHRDhra0pqV0V2SGp0VmNVYmdtYmVobWNuQ083V1NVZXZhMy8yL0tjd2dO?=
 =?utf-8?B?V0N2YU95TjlXODBUdmFUdXlQNDB6S0dkSmRRREFBTTkrTE03ZjdVcHVNSlA0?=
 =?utf-8?B?Tk5rSnhHYzNxbU5NczN2WVhoNjZTYUFzeGtlZzlKdmRkTEt0dWpNb0k0YmJJ?=
 =?utf-8?B?SlNzQitmSkFMakRSNTFMR1lKU0RVdC9rK2hPOUJVWHNtN0VReVNCQzdDOW50?=
 =?utf-8?B?MEpod1FWakhMMml1NHZBN2dNYUNYUmladjJZOUpudzh2emo5U2RISldHVlda?=
 =?utf-8?B?NHlkV3IyYnhyMzBqNjZvd2Y5ck5veTUzVGtVdzE0U3lHcklRQTgyU2NuOGtU?=
 =?utf-8?B?V3hhdTAyTVVVemw5UHJvMGNDY3plSHFUYzA0WlBpeEo5d3hWSVQxa0ZpQnpi?=
 =?utf-8?B?ejlqMit4WU1NYzNxM2tDOUEwam9qa2k0UzJscGR1Y0NZdWhYRU1XZ2NDZCtN?=
 =?utf-8?B?akZBWWJWbjBwNGl2eTlaTm9zMHlyWVpWK0xHdk9JMDF6a1VNRm83c0NaZ2RB?=
 =?utf-8?B?Yk9VRHk1YWRNQU05alZiWWM3UWNsK2txQWdmNkZvV1RTSDY2K21JMmlnQWo2?=
 =?utf-8?B?SDZRb1FGclRNL2FKT3V4TVlDZUtBSkFYYjBPblB5ZUFtZUw1VEJyWENOaGJx?=
 =?utf-8?B?U3h1b3ZPYXovYjN3Vk5sdlZ3UExYejhrODZkVnVrRUhYZ2xkWHRoSFJZc1Ay?=
 =?utf-8?B?T2VyRkxiZGxtVGJMWm9PU1AxVHI2TlpnQjNieDZBL3dmL2hBVHllL0RuTFMw?=
 =?utf-8?B?Y1NqVllST1JhOFkvV3kzQ0NLSi85VFJKcUdTZUZ4a01GbHhNb2RwbHNZeE92?=
 =?utf-8?B?bWZhMHUyaE5QRlBZYUNmbk9vbWo4bnJZV1NPL1pjNXdVQTR2TkhJaTl3YjNr?=
 =?utf-8?B?SmpYUVN6RGZzS0Y4Y214T2txOTBGdEpCOG9CTkduRlQ3akp2c1hwcEZDKzI5?=
 =?utf-8?B?dTZjNG03UGZoSFg2TFBDdDFzOWRrbVVLL3pBV3N4Nm5KcU1tSFhJeERpWnlI?=
 =?utf-8?B?eGNBRFF5Wkp6alRDR040d0RiWm5WRmIvT2tTbTVsZkZvSmpnSlFLdWJ6dFlp?=
 =?utf-8?B?NkpoWjRPOGRIWVA4VjVXUU9qeTdhaW5reUlFbHRvTXJJcGRGVTIwYUR3czhx?=
 =?utf-8?B?L2I3c0paOEFNYm5FTkpiK2hHOUVKTVdUYm82R0QzZDZRaG4wYzkzOXoyRnMr?=
 =?utf-8?B?OU15WlU5bERKeFVIa3JFcFAzNng4ZG5jZVI2M0NtV2xPT3l4Q0lPblNNdlkv?=
 =?utf-8?B?VTlPLzNyQzFDeXBvQk5YOEJpa1FYRlh6bjJ1am5RZGZwTlhseEI2SHFvZDRh?=
 =?utf-8?B?TVVHRjhsNnhvRnlMMFNVTmEvU1ZKalNVQjZoZnFTWFhIbVI0TGxGRFFFNlBN?=
 =?utf-8?B?N2VpdmtLQ0FwOTRaY1BDMkVYZnZ5Zk90Vk9ON0NFY2NsUCtGVmlxcDd6WnV3?=
 =?utf-8?B?VndLb1hZYzBPSDVzVVd2YU16eTcwR2tvZytPMC9aYi80Z1pnYjZOTzEwZFBi?=
 =?utf-8?B?TnZZdGJ1aGR4eXZPVC9zOEFwaTJuYVlqb2FKaEdjeXl0dzlwdmFJSytiSE1l?=
 =?utf-8?B?NUZJdnh6VzhCMndZMnN1ZytjeUFqbllacHFYR1I4VmpSb3VlM0d3aVhUeXJ6?=
 =?utf-8?Q?drUvBoVvEg1Po/HxZxOmz9QKmPdrJrBi?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0o0N1M2Mzh2aHdQYWpYT1BMdkZ4ajhlVkhBeHlONytoUlNmWlRGMTh5eFFI?=
 =?utf-8?B?L2pCeXg4amlUR1VvY1QzMVRjK0FucEJXZW5uNmRnS3hiRTIvYnplQ2VqRGtj?=
 =?utf-8?B?TnlwajBNRUF4MVlrb2sxbG90OFF6MWp6TG95UlI1alZqZWxhSWFoK3UzN2Jv?=
 =?utf-8?B?R2RBOCtBNXdaYjV2S1dqUURTVy81eGJaQjVMZXYza2lSSUJvcHBydmYxeGlI?=
 =?utf-8?B?UEhpV21udjliMUo3UzN5eUlWRHRoMms0VURXbDV6R2RUQWxkTHVTY0lZSnJZ?=
 =?utf-8?B?c0Mxb2JWSTBZbHFQQkVhVThJMnFkUVdTSjhTeitTYmFEWDdPT1hnL3JpU3dT?=
 =?utf-8?B?dGJJWFIybEU5VDlPYmpOMDZKNVd4dHpKbXFFcHV5OENlS3pmWEV1OGRjMStF?=
 =?utf-8?B?WEtBakVPVXh0NzRrdjJIWjgwaE9XMERWaDRXaWZqVmF6Q1kvRHdXVUZPRVF0?=
 =?utf-8?B?WFkrQlVtc3pIQkJ0RFFXbUM1YUV6dWpBTXF4d2FHUSsxUnlMcW1ybERxVjJj?=
 =?utf-8?B?ME9kem5ZUTBtMnFwNjVtNXVZenFpbWhKRW80YWF3MHgycHJIcmkrd09BeEVV?=
 =?utf-8?B?b2s4by8rMUdQT050R2RRQWZnRU1ndEZiV3d0VEx4Q1lkZExkME1zd09kZzJJ?=
 =?utf-8?B?djJzZTljMGYrTzF6S3o3c0JmejdjZWREa25KNC9RenNZbGd1dGx1VzBlR2ht?=
 =?utf-8?B?VVB0cVV6NWZ3cjZGbTZrR3BtMHVUVWU5R3hueXBncHpJcFgwMDdMOVlzRlhL?=
 =?utf-8?B?eC9iUlh0Z0JKbGRxYy9mYm5icFMyOFduNFRORkRMbFloaEJ0QUhpM2Z4bGhp?=
 =?utf-8?B?QytjVFA1YTgxNzRUbG9paVpGRTNRT0tHd2wvellvLzNiS1YrMFB0UVFxUzk2?=
 =?utf-8?B?K0tIT3l2NkR5Nys0czQ3bE5rVFVQRGpKSEJoMkx0ZU5MSVhNbVZRZTBMSnU4?=
 =?utf-8?B?KytscDQxQVZpZWlITUdML053ek9pSXc2MXBCek5ON2I5RGIxQ1FsN3ljL0lo?=
 =?utf-8?B?UzN1R3p3NTA1NnMrbjJKSEZXenFka0NhTkhrUlVXemRRZ1pGdEc4L01wR083?=
 =?utf-8?B?TVFUZm9jRjVxRklXVnc4Wm1OVmlkOGFEMktZZ3BnL1VrQ1FEczBoVHNGbEw2?=
 =?utf-8?B?aFJzL1dlN2tycTlkMVl3RXEzUzg0RFZvYm1UQ3gyYmJiR0VIVExWRng5eUNK?=
 =?utf-8?B?MmY3WHhHZUtIc0ZpREMwVVZPY29XWS9CMnZSWmZvTDZET3A1SGhPdVNiSHZT?=
 =?utf-8?B?bnRKZWN0QWR6TW4xdGVwRDFiZndnSWZlREF0ajBPMnJIYmNFNDF5WE5WRUQ3?=
 =?utf-8?B?cFh3Y3BTcGd5UUxZUDBXR2hySVVHVzNTZlYxV0ltSUFOWlBNNmZ2U1RxQzl6?=
 =?utf-8?B?QVVRdTJ2MWhycmFQZ09ESjNDdjdUYlRWVXlhaUdVUG96VVh5TDVqKy9OYm5T?=
 =?utf-8?B?OU1MVCtJbUJvM2hxQmk3UGI3YkIvUDlLdUpGWGM2MnZZRUtRMnhFR0h5RjNq?=
 =?utf-8?B?OXBmTGMrd0E1UW1heG9XVU9xV2pzSVkxNjZlSnRLemRmOXBGRGNYS20rQVo3?=
 =?utf-8?B?OUVuUHJwbmRGOXhMSzZyNzhQRTVOSXRBdHo5NjZaRm9CUER3MXdsWDRCMmow?=
 =?utf-8?B?SS85TDNsZFd4L3JhN0Z4NlJ3RnZTUFFMcjljWEpQYVFzU0ZDOVd0VHY5RUk0?=
 =?utf-8?B?c2JDLzlxMUZhbkYrb2RMc01IS3NSYzdsbXBRclFoVnJpMS9NSDVUc05LRmdD?=
 =?utf-8?B?Y3NUQmlCRFdIc3JhQ3FXdDRVcUswaENwaXFwZkxib0NhalJzeXhmWjJ3M2xV?=
 =?utf-8?B?ak1qOWFTVzBMMEUweEQyd1QxVXdJRlBRS1RZTkJWS3hpUlpqZGJKN09ObWFo?=
 =?utf-8?B?bHRMbnlobWVySklmU2lNYXlIMGxiUTB6amRNOGY1b2RiaWZhb0hwVk80UVBN?=
 =?utf-8?B?N2VvYXJING1NclNmVUVxaFpUdGJjQmhwNGVGSHUrMXA0cnV2dHFuY2RXYzNM?=
 =?utf-8?B?ZjlBYzEvQklmM29lamkyTXJmTC94OHZlMVUyak5kQy9VM1FaQ20ydUlQV1Ni?=
 =?utf-8?B?SkJ4YzlodzI5L3VMRTJMS083UE5xWmlWTEQ0by9ieWg1NWNUcHR2RXhxQnQ3?=
 =?utf-8?Q?bzftN4LCmwIxqTBxHX+lmKl5X?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc4baf8-4d91-413e-f702-08dd549d88a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2025 06:36:13.5470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o1k5s3OKG6McEU0UFqf2LbdNq63Icn9KTxQUBrMAWOnDcBg+mdQFVZ/e6RvAsew2ujPkomN5eF5ADDtrrfAMBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgRmVicnVhcnkgMTksIDIwMjUgMjoyOSBBTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogaW50ZWwteGVAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAzLzRdIGRybS9pOTE1L2RzYjog
QWxsb3cgRFNCIGJhc2VkIGNvbW1pdHMgd2hlbiBzY2FsZXJzIGFyZSBpbg0KPiB1c2UNCj4gDQo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IA0KPiBIYXZlIERTQiBwZXJmb3JtIHBsYW5lIHNjYWxlciBwcm9ncmFtbWluZyBhcyB3ZWxsLiBD
aGFuZ2VzIHRvIHBmaXQvcGlwZSBzY2FsZXINCj4gYXJlIG5vdCBiZWluZyBkb25lIG9uIHRoZSBk
c2Igc2luY2UgdGhvc2UgdGFrZSB0aGUgZmFzdHNldCBwYXRoLiBIb3dldmVyIHdlIGRvDQo+IG5v
dyBhbGxvdyBEU0IgYmFzZWQgcGxhbmUgdXBkYXRlcyB3aGVuIHRoZSBwZml0L3BpcGUgc2NhbGVy
IGlzIGN1cnJlbnRseQ0KPiBlbmFibGVkICh0aGUgcGZpdC9waXBlIHNjYWxlciBqdXN0IHdvbid0
IGJlIHRvdWNoZWQgYnkgdGhlIERTQikuDQo+IA0KPiBGb3J0dW5hdGVseSB0aGUgaGFyZHdhcmUg
aXNzdWUgd2hlcmUgc29tZSBzY2FsZXIgcmVnaXN0ZXJzIGFyZSBsYXRjaGVkIGF0IGZyYW1lDQo+
IHN0YXJ0IGFuZCBzb21lIGF0IHN0YXJ0IG9mIHZibGFuayBoYXMgYmVlbiBmaXhlZCBvbiBpY2wr
IChJSVJDKSwgYW5kIHNpbmNlIERTQiBpcw0KPiB0Z2wrIG9ubHkgd2UgZG9uJ3QgaGF2ZSB0byBk
byBhbnkgY2hhbmdlcyB0byB0aGUgRFNCIHZibGFuayBldmFzaW9uLg0KPiBOb3QgdGhhdCB3ZSBo
YW5kbGUgdGhhdCBoYXJkd2FyZSBpc3N1ZSBjb3JyZWN0bHkgaW4gdGhlIENQVSB2YmxhbmsgZXZh
c2lvbg0KPiBlaXRoZXIuLi4NCg0KTG9va3MgZ29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEg
U2hhbmthciA8dW1hLnNoYWthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDkgKysrKystLS0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5k
ZXggODI2YjAwMWE2NmZhLi43ZmQxMmFiZGY5NjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC03MzE5LDggKzczMTksNiBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfZHNiX3ByZXBhcmUoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4g
IHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXko
c3RhdGUpOw0KPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0
ZSA9DQo+IC0JCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0K
PiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSA9DQo+ICAJCWludGVs
X2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiANCj4gQEAgLTczMzQs
OCArNzMzMiw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19kc2JfcHJlcGFyZShzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAluZXdfY3J0Y19zdGF0ZS0+dXNlX2Rz
YiA9DQo+ICAJCSFuZXdfY3J0Y19zdGF0ZS0+ZG9fYXN5bmNfZmxpcCAmJg0KPiAgCQkoRElTUExB
WV9WRVIoZGlzcGxheSkgPj0gMjAgfHwgIW5ld19jcnRjX3N0YXRlLT5oYXNfcHNyKSAmJg0KPiAt
CQkhbmV3X2NydGNfc3RhdGUtPnNjYWxlcl9zdGF0ZS5zY2FsZXJfdXNlcnMgJiYNCj4gLQkJIW9s
ZF9jcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGUuc2NhbGVyX3VzZXJzICYmDQo+ICAJCSFpbnRlbF9j
cnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpICYmDQo+ICAJCSFpbnRlbF9jcnRjX25l
ZWRzX2Zhc3RzZXQobmV3X2NydGNfc3RhdGUpOw0KPiANCj4gQEAgLTczNDUsNiArNzM0MSw3IEBA
IHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19kc2JfcHJlcGFyZShzdHJ1Y3QNCj4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwgIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19kc2JfZmluaXNoKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCSAgICBzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YykNCj4gIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpu
ZXdfY3J0Y19zdGF0ZSA9DQo+ICAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3Rh
dGUsIGNydGMpOw0KPiANCj4gQEAgLTczOTEsNiArNzM4OCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9hdG9taWNfZHNiX2ZpbmlzaChzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gIAkJaW50ZWxfY3J0Y19wbGFuZXNfdXBkYXRlX2FybShuZXdfY3J0Y19zdGF0ZS0+ZHNiX2Nv
bW1pdCwNCj4gIAkJCQkJICAgICBzdGF0ZSwgY3J0Yyk7DQo+IA0KPiArCQlpZiAoRElTUExBWV9W
RVIoZGlzcGxheSkgPj0gOSkNCj4gKwkJCXNrbF9kZXRhY2hfc2NhbGVycyhuZXdfY3J0Y19zdGF0
ZS0+ZHNiX2NvbW1pdCwNCj4gKwkJCQkJICAgbmV3X2NydGNfc3RhdGUpOw0KPiArDQo+ICAJCWlm
ICghbmV3X2NydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmspIHsNCj4gIAkJCWludGVsX2RzYl93
YWl0X3ZibGFua3MobmV3X2NydGNfc3RhdGUtPmRzYl9jb21taXQsDQo+IDEpOw0KPiANCj4gLS0N
Cj4gMi40NS4zDQoNCg==

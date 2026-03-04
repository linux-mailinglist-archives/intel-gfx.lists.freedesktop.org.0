Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ILUN4TOp2nxjwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:17:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 481C61FB12A
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:17:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9FAD10E950;
	Wed,  4 Mar 2026 06:17:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F1Q9hGO8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F02910E110;
 Wed,  4 Mar 2026 06:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772605057; x=1804141057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DrG5LFoalC016ugpYQHmACX07RcV42djBoE9+nrp2BE=;
 b=F1Q9hGO8JsAtKvO4GJwHRVkTjM+8p0MKG2XjjRE/BRChcVnnIlD6MbMA
 rzkoQlcH9tCpyIBTquv5LJJZSDAp9goOizqeZaG+biSxy49QJzma4uPvc
 af0MR4PPsew5k0Zx+KKVFMkZtnMmBWTJpFKE7rcBOfr5CZxZQr5/vZ7ob
 tVb/MMHoDZ63/IfTYEsXZ4S2gdTGTX2vkWWDG12sAud+A10e9JCWGO0Vo
 iKdzhI0bgvCDSmHWo9MKV9gu5QT0YAxBKikSE4A401lsJoAXzdyIDdw/Z
 DWKWv4iwDCGsaQnJfzzabHBQgcylClUf6FdDaVFgizMugNbUJQ6TglS6o Q==;
X-CSE-ConnectionGUID: 1mYtcWtcTvG7a8A0oO8uUQ==
X-CSE-MsgGUID: QbpOQJeOTpOsptzRd4abvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="91231095"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="91231095"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:17:36 -0800
X-CSE-ConnectionGUID: N5ArqD/ASrW2Qk32W50glA==
X-CSE-MsgGUID: xOFXoMhiQS26X996/Bi6GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="222731141"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:17:36 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:17:35 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 22:17:35 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.53)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:17:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xe2fRU//yoXG6cNA2OlUMzNCcxR8iyKDK7ajpd/EnqBYLMtUahfraCMYNcmjhPmrodIU6SXPnlXFryqZSYMofJu0nN+HxjREkWHjNcfCK9AIXyUVUYx1/HKlL3f+gysobwhJwMFdtspoPXhcJvHrS2t2NmsHlkDbnUspCze4RZ368gkx7hAckcV0I7QK3kbNeRJtMXWsOK368AACSMpY5EY9UMY1cxxwiMC2G1fjI/+eQqMVKvunoGbzNNsxtFNjH6O1xdEi2Zc44IcgS9MB7fP/bKXFfUrIn9pyIL41OD7oFkjub51crs9hQF2WJhFxmRrsC1hJ1KSuSHb+k6GP5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DrG5LFoalC016ugpYQHmACX07RcV42djBoE9+nrp2BE=;
 b=R23UBMNE8Fl//K7H0K9NIHxpkksVVk4Yvj5vbQwLEouv2BPTTak2LxAhctanPPtIvC+1JbigLCl9NtQvQUbcqkUUGp6D6FIi65HoA+nEmV9gYjtOHiQa98/kty2HyxeYPbsmqs5Fu8KtOOJR+79MwvLRdcJnmhrTL1uvQmHp3/JBThBtQz181ujmwt7VnVP7uee+NMx4CR5q74t9yqBV0CktHrqhWB1ogwPFVzjwiDwQX3aVy54CSjo6evXOnweAMcRvu5rDm5pN23zK4bdteTKsxOvHWL1xMoz3C7ix+0n5/TDYBqhC5mQ6lGTP7f/t+CnOThPX/7EjBWe3br0YOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB7043.namprd11.prod.outlook.com (2603:10b6:806:29a::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.17; Wed, 4 Mar 2026 06:17:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 06:17:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCHv4] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Topic: [PATCHv4] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Index: AQHcq4xnDvING+yqiUyD0QK/iVWJDLWd5hAA
Date: Wed, 4 Mar 2026 06:17:32 +0000
Message-ID: <987909c6f52f046cee33fdaeb4719c131946069b.camel@intel.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <20260304040551.754483-1-arun.r.murthy@intel.com>
In-Reply-To: <20260304040551.754483-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB7043:EE_
x-ms-office365-filtering-correlation-id: c540df16-4a07-4ed0-030e-08de79b5b884
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: as/bxteVAVv893nR25Gatq3Y3mjepwknmK50Y0fPldx+T4Tp5unrsMNfgT6e0nlJyfcmhVBaA0cMxJEXe5gGStpQdsKf3pVf2HreLGDYUlwPlmn2TXM8U4qvnwJxrkwt/h9lkClhk1BiR8wu/0b5ZH3Ynxy7kslTEmIIsYVEqFTb4b2d3Bucp1QzATOMSjNX972L7fyfWSO4+05qrrCtEpvKV//aWIFuPBMbV8o4Q0+gcFldGhtHQjnsYqOF1dQVmC4zcJtA0KFPxwocrbmxfj1/7AzJH3DloZbKu/h0JSDSovyxExkev+9eXRur/fcNE0eOtx3RXZaYsvTqZxHm66EUdNE7rB6Axn5b5Ka3fGE2oxrXXHeDroh5JS6qeTxUnrFTiy5M4ezyv1nh0Y5ksJhFAckdMeyHsyq03HIDOdon5J9e5wE1t4rf3fnuhXfWXjSLIjkbpS41NLlgpwGfe9DB1UxTHgv80wLDcAZkmTskG7FVDnjuDQy72r9T2LeV1g3lMQDst7ja5LRgQaSoVGfOyKVwPL1bapuhNsEzEL3l9kIjVHY7A+es3r6mNCbO4fCEeC+qc0qm1B9injwAHuj9lU9nXl1daHjiepcTGBOLNZSNNAkd8iuoXR5Cb4mY7w3eeCMyC8DtZ2Zo7VEBprnqKUNJAeN8J++E6Hxs8et3VPXdUTa/wlQgt+lMmBOgu77aUXGlC5QaZCtfhfBat/kAfG7iQ7b6Cf+t52Fz+2w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RU1yc3FzeVR2amR0djhwUVpKTVdHK3Nwc1VnbURaUDk4QjRWaW9VeWNnZ2VP?=
 =?utf-8?B?OEF2bWpYV3RTTDR1ZjV4bW9PTUQyM0hGMDAyZ01nWjBWbjE1OEs1Y1U4OTlE?=
 =?utf-8?B?Zjk0MXp1TVlZL1NkYXhpNFdUMEtyaHdUWWpmUWxGeVphcXV6Q3BQeURvMTBP?=
 =?utf-8?B?cDZENldYOWRZMmJiZnhWZmpySjVlN0NOcFhUZW9DeC9JTjJDSG5iNXErMGR4?=
 =?utf-8?B?OS9SSFJCdEVvaG56RmZ3WkV1T1RFSUx4QzhsRFZXRlhrY3BTTW9EUlNXb3pR?=
 =?utf-8?B?Q1I0WmE5UEVvSFFRNktPZStNUHp6bC9sVllXcnd5MWNZbWVkYytDZ3c1N2Fm?=
 =?utf-8?B?bllROUdlUkpTendRYXdWMEZjdEFPQ3MxWk9ueC9hR01HZjhXcDVoZ3VtdTVh?=
 =?utf-8?B?U0JrYkRRVGZCdmxXVG5FNXZydkFkZE14MmZ0dEh6bHJ2TEJTTXN3Y0ZmQ2Zt?=
 =?utf-8?B?SFJxeWJKWGZqd0FhQ3o1cmxEczRHR05jNCtzUzZLOFBRNy9QcHV3UjU2Ykg4?=
 =?utf-8?B?blZLSnBQL25wSlViZDk1S2tVeDlWZElYWVpMcmNjbEZvU2UyTzBMYm1DcS9L?=
 =?utf-8?B?alJyTS9vWUgrV09YRk8wOWlPZHJxV25naG0xZzgvNTM3MXpLR09ZY1JsRk5L?=
 =?utf-8?B?cThvN3FUYTA3bG12UU82Tm1hU3dpVlRDVEo5THlNK3phZmtWMVNIWkpJRTUz?=
 =?utf-8?B?K29hbnN0QzJscE1yTnltVTYvYTZEMnd1aEdMNkxIeExGZiszVVB3UVdXejN0?=
 =?utf-8?B?TlRtbGhtVzM3MWNFd2krTGhnUzVUbzlNYUxRNWZtWlRGZjdyN3RWcDdFMXNC?=
 =?utf-8?B?cjd0eFl6dENNTEFUMGdKOWJ6WW1ZcW5aV09LK1FtcEVPM3lqWE91TWJQUkZY?=
 =?utf-8?B?SWZyaXNncUthMERJR2hvM3ZaZTdrcW11ZjRuWlFrdnJScmdiNFVOYk9SK2ha?=
 =?utf-8?B?NnMwb2U2eURXVk5BVmlEejJOUXI2c250QWJSdTF4R3lwUFdkVHIwTGlCNUZs?=
 =?utf-8?B?dGpNaW1nQW1DamJiSDlFWDQvTFovMXUrRFJzQmh3VGlFSUxSbzhVV1k4TlVK?=
 =?utf-8?B?NG1FS3ZDdTFPSFRsNWdiWXh0YXdHaUlFTGc3cjdzQmRQKzMybVRjV2lzWFV1?=
 =?utf-8?B?K3ROQUM0cmlqRElucVRTZGNKU0dJZ2tBK2w3d205OXBzckY3bXVKNkxOZGEy?=
 =?utf-8?B?ZnZHQm51dXo0WkJGVjllSStVU0l4UCtsL2ZZL0pXbXA1TmlCKy9mYWcyRVpU?=
 =?utf-8?B?ZTdhMzRaMDZnTmV6dkhjUEMweVJFcmlHeUdnOVp2VUNheHY3b1prZ3FpMjdV?=
 =?utf-8?B?bkZ0K2ZSdnMzK0N3bm1heWRDNnFRWSs1cVF4U2Z6Mnc0RTlwWWNzWDZmUUk2?=
 =?utf-8?B?TmdRdkJOU21KZ283VlFYL3YxY1dXMnlqS0w0SnVtbTF6aW1GSjd5VzZDbVlE?=
 =?utf-8?B?ZlhYNmRTWkdWWHVsNzUydTQ3L0hNb25MMU4zWXN6Zm5LdWprNmEramNsZm5Q?=
 =?utf-8?B?dzRWY3h0SGVIR3ZLUURWaUo0aG16UVF0Q1Blc1ZqMHlMdmNYNkpzQ1pYWGpo?=
 =?utf-8?B?Vks3dmw1djU5b2RlWE8vcUJDY240NHI1Z0ZUT0N3eTBMZlJQWWtrejUvbk5B?=
 =?utf-8?B?MXdCcExySFphMTVBNFhUb1NUcURhVnVFeU9HOHJONjd2VzdVRUNIWmpYYjJY?=
 =?utf-8?B?NzJXUCs5Ym8xd1U3ODM3VGdkb0dzRlpOWmNZcEVNSlhpTlBmWFhkazEwdDN6?=
 =?utf-8?B?dFdBTmlmVFNLU2NlUHY3TUdDV0ZPWUtiaWpNRjlNZzdhYTVQY1FBbUVqZHln?=
 =?utf-8?B?Vjh3NTRRQ3hTaWI2cUpOUG5qaFlnN3NLZm5zUk15bTlYc2srenI3M21IN2Nk?=
 =?utf-8?B?RlVWS3lZdjdKRzY1WmU1bUQvWVI0OVhEamY2Qml6Y2VqZE5UdzNybVdmRFd4?=
 =?utf-8?B?UVdoeSs0WHpoMmcwSkFNTE1Tclg2Uk5Gd3gxM3VqSzlBbmo0c1BtMzlKZk1W?=
 =?utf-8?B?SlQwaktnUW1JbGVlNWRJZWVWQ1JGOWpndzZZR0g1Y0NVUmozT2t4M2JON3Mw?=
 =?utf-8?B?eHpRd1ozWlVMeVh6dmtNTFQyQ21uQXRxclpnc05pSzNETFR1L01xQkhjeE91?=
 =?utf-8?B?U3htT2ZtRU03RW5pR1Q4SzlRTFN4anpGVWFtdUQwdmdSUklsZE94N1pYRXor?=
 =?utf-8?B?c0dNY0tLL29vRkttWFNWenk1ZEVrZExNUEJoMWtkeTVpdGJFOTFWaTFNYUN4?=
 =?utf-8?B?MzFoUnVoNHljNkJKL2VZdGdWTmhEalJNZlVqcUNiNW9jN2JaNFZtV2JMakln?=
 =?utf-8?B?QUNhRklSRXBCRGx3ZFFQN0E4bEJBUW5TejBxMy9zbXNKdnM0MjFZd0lrMi96?=
 =?utf-8?Q?5KoaimSNpz1Vm2+l9qh3Q5a/whchNhcPFp23mDITTi+/p?=
x-ms-exchange-antispam-messagedata-1: vM4pyb2tHlRKI89PWr6mR/sKnb6Sp90pE5o=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DD05C62580D2B24B9E577DA875C85393@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BFOm/n9xfKOtuHWpmr8+/VFIXe+wM9zy6c0mDQhsRRhqVYOgMO0n9GhCcAXAY4Tbo9JWMGYgcPjLvpKOysXMT0IkHmKLzNWyyRaMUznKtCl86bwi+FA9fi7KriSiv77q7MYET2OGmXgzudtuAheRcYuCCU5AF8KMzXRGNhvllKs4FG5dli+RQkGInpQsD2oaUX240DFP2BKRGOczDEjCjHjDIkBiwVElTK4zM6uAPsBsaULbwcZnOdyqrxhu8qzDBC9YNTf3BdFW13Eye3VOTHgP4indUBxLZYKIFjLernJxAE4ypuQkuNGEXCcOiq6rqQAOwfyzX6P2Ppf/+137sg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c540df16-4a07-4ed0-030e-08de79b5b884
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 06:17:32.4594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aUSsymBl+sjgQEOH0eR0o7/e/Uq5uE7JAK7NhiYjqLbBN1XSEPFkLAomBepKnWj20eGev9O0dg7nwR0bS1rUG6UCJNqQMqZEfa1SPB6x1kY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7043
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
X-Rspamd-Queue-Id: 481C61FB12A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,patchwork.freedesktop.org:url];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAzLTA0IGF0IDA5OjM1ICswNTMwLCBBcnVuIFIgTXVydGh5IHdyb3RlOg0K
PiBGb3IgZURQIHJlYWQgdGhlIEFMUE0gRFBDRCBjYXBzIGFmdGVyIERQQ0QgaW5pdGFsaXphdGlv
biBhbmQganVzdA0KPiBiZWZvcmUNCj4gdGhlIFBTUiBpbml0Lg0KPiANCj4gdjI6IE1vdmUgaW50
ZWxfYWxwbV9pbml0IHRvIGludGVsX2VkcF9pbml0X2RwY2QgKEpvdW5pKQ0KPiB2MzogQWRkIEZp
eGVzIHdpdGggY29tbWl0LWlkIChKb3VuaSkNCj4gdjQ6IFNlcGFyYXRlZCB0aGUgYWxwbSBkcGNk
IHJlYWQgY2FwcyBmcm9tIGFscG1faW5pdCBhbmQgbW92ZWQgdG8NCj4gaW50ZWxfZWRwX2luaXRf
ZHBjZC4NCj4gDQo+IEZpeGVzOiAxNTQzOGIzMjU5ODcgKCJkcm0vaTkxNS9hbHBtOiBBZGQgY29t
cHV0ZSBjb25maWcgZm9yIGxvYmYiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBBcnVuIFIgTXVydGh5IDxh
cnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hbHBtLmMgfCA2IC0tLS0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqAgfCA5ICsrKysrKysrKw0KPiDCoDIgZmlsZXMgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gaW5kZXggYjMzMzRiYzRkMGY5Li5hNzM1
MGNlOGU3MTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5jDQo+IEBAIC00NCwxMiArNDQsNiBAQCBib29sIGludGVsX2FscG1faXNfYWxwbV9hdXhfbGVz
cyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoA0KPiDCoHZvaWQgaW50ZWxfYWxw
bV9pbml0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IMKgew0KPiAtCXU4IGRwY2Q7DQo+
IC0NCj4gLQlpZiAoZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgsIERQX1JFQ0VJVkVS
X0FMUE1fQ0FQLA0KPiAmZHBjZCkgPCAwKQ0KPiAtCQlyZXR1cm47DQo+IC0NCj4gLQlpbnRlbF9k
cC0+YWxwbV9kcGNkID0gZHBjZDsNCj4gwqAJbXV0ZXhfaW5pdCgmaW50ZWxfZHAtPmFscG0ubG9j
ayk7DQo+IMKgfQ0KPiDCoA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IGluZGV4IDAyNWU5MDZiNjNhOS4uZTc4MWQ0ZDBkZDFiIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC00NzA5LDYgKzQ3MDksNyBAQCBz
dGF0aWMgYm9vbA0KPiDCoGludGVsX2VkcF9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwgc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0KPiDCoHsNCj4gwqAJ
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2Rw
KTsNCj4gKwlpbnQgcmV0Ow0KPiDCoA0KPiDCoAkvKiB0aGlzIGZ1bmN0aW9uIGlzIG1lYW50IHRv
IGJlIGNhbGxlZCBvbmx5IG9uY2UgKi8NCj4gwqAJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBp
bnRlbF9kcC0+ZHBjZFtEUF9EUENEX1JFVl0gIT0gMCk7DQo+IEBAIC00NzQ4LDYgKzQ3NDksMTQg
QEAgaW50ZWxfZWRwX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiBzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3INCj4gwqAJICovDQo+IMKgCWludGVsX2RwX2lu
aXRfc291cmNlX291aShpbnRlbF9kcCk7DQo+IMKgDQo+ICsJLyogUmVhZCB0aGUgQUxQTSBEUENE
IGNhcHMgKi8NCj4gKwlpZiAoaW50ZWxfZHAtPmVkcF9kcGNkWzBdID49IERQX0VEUF8xNCkgew0K
DQpJIHRoaW5rIHlvdSBzaG91bGQgbm90IGNoZWNrIGVEUCByZXZpc2lvbi4gRFBfUkVDRUlWRVJf
QUxQTV9DQVAgaXMNCnN1cHBvc2VkIHRvIHJldHVybiAwIGlmIEFMUE0gaXNuJ3Qgc3VwcG9ydGVk
Lg0KDQo+ICsJCXJldCA9IGRybV9kcF9kcGNkX3JlYWRiKCZpbnRlbF9kcC0+YXV4LA0KPiBEUF9S
RUNFSVZFUl9BTFBNX0NBUCwNCj4gKwkJCQkJJmludGVsX2RwLT5hbHBtX2RwY2QpOw0KPiArCQlp
ZiAocmV0IDwgMCkNCj4gKwkJCXJldHVybiBmYWxzZTsNCj4gKwl9DQo+ICsNCg0KUmF0aGVyIGFk
ZCBlLmcuIGludGVsX2FscG1faW5pdF9kcGNkLiBBbmltZXNoIGlzIHdvcmtpbmcgb24gdGhhdCBE
UA0KQUxQTSBzdXBwb3J0IChodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzE1NjQxNy8pIGFuZA0KeW91ciBhZGRlZCBkcGNkIGluaXQgd2lsbCBiZSBzaGFyZWQgd2l0aCBE
UCBwYXRoLg0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IMKgCS8qDQo+IMKgCSAqIFRoaXMg
aGFzIHRvIGJlIGNhbGxlZCBhZnRlciBpbnRlbF9kcC0+ZWRwX2RwY2QgaXMgZmlsbGVkLA0KPiBQ
U1IgY2hlY2tzDQo+IMKgCSAqIGZvciBTRVRfUE9XRVJfQ0FQQUJMRSBiaXQgaW4gaW50ZWxfZHAt
PmVkcF9kcGNkWzFdDQoNCg==

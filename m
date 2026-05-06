Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDOHFSyj+2mvegMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 22:23:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B51AE4E0220
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 22:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD2D10E044;
	Wed,  6 May 2026 20:23:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LD9HFaEl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A3D710E044;
 Wed,  6 May 2026 20:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778098984; x=1809634984;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wWg+m1jOlfWydcThGLiXC/ZxHVZexCIv2sx8OiEQ5dY=;
 b=LD9HFaElAK76XSquMIidZnZUvISwcpA32TYFo5cKmZVhIyk54Wm+cO4h
 5IQ3QMTxn9YRtwvX41G+zZ7JzIyy6VIx+oeX7OeDcFmkLG9Sn/mCNYQJJ
 lu70fNjt9wE6vZL7obAvRULz1awSNOOBQyvyHrzXfM7EQpA00x/bpEkHi
 35U2uuNkxDmnH2UDUxx6Ewpfmn6vCwNb+Q0pbu7VDI8UUIY1xP/zJBKWu
 M1BrY6lCHiGJcVmhguRYyC+PGq+G09KC/kEQ57Bfol/jqZoMhRXpHK2U7
 hLuC4ovQIQMHJRJamDrlVM7k1GI7HdXQjaHYLmPfEaIJGeIaybuFvhCen w==;
X-CSE-ConnectionGUID: uHfGqN41T4yiB6aW+I2cXA==
X-CSE-MsgGUID: ZRDch8WLRnmZ4viPzd92aA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78192257"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78192257"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 13:23:03 -0700
X-CSE-ConnectionGUID: uQqMk1wVSZyTvjpTvo/vCw==
X-CSE-MsgGUID: /ewxU2Q2TOuWg5Fxwctl9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="259680753"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 13:23:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 13:23:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 13:23:03 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 13:23:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k3QkpDwpnUC9flIVefknG9X4tvgKK9ns3dHV8R27hHJyLF15HU5YDQSf6RzT1aV0CPuDvbBmwbwa/c/3x0XyOys4ZejjG5qyk7BWM2zteU7sO9l/MpKry3xIvZNAIdtw5nzOFeB45oZX2HUB3tYDnTXK6kPOqOqhCDD/rBzG38oa3V3k6wRSJFPXckLW3/l1kqLnHyD8puUTHufMHKuuDtKRIOOHnGAQ9Ga24prsHZiGbSITwy8jcjCP54kw+NPrzWkl7tmPjETpHo5EKCd/AJl9m/0P0u7zAJ65jvg6XcaDeSMhRfZ7vH14dhnSOo9ZierQoKM6lBTZZBwCc1DZOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wWg+m1jOlfWydcThGLiXC/ZxHVZexCIv2sx8OiEQ5dY=;
 b=Jk0jcgB2aJOZ0WlbDpM5cXlGJbB5cbuIdgoK2E003DzAw7k0EHBUEBzLi8aZf/T5Bke9xxZwcwzz+AbA2jB7nirghGnhgGAJvk8XReHjcukjXsWHOjC5vqlTgHGk0fBvuyW9ffHXEQxd3QM4F9cXKLelGR2B69y4yHXrxvZNohbAxxDqaHVuw9ZdgwRFY+8PPjAZ0XyDmAY7x++DYOpljcc3KkwPkg603gK5kqtSDUUCsTkV4cyDKtlrvnJN+enDbgjGyuqWtbcWx3cJ9zUl5OawMszwBboba2NNTQre5R7vF0t5BPk4MUjypZHloKnxE2XXSEhmprVBJjfxDpmFsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5373.namprd11.prod.outlook.com (2603:10b6:5:394::7) by
 CH0PR11MB5233.namprd11.prod.outlook.com (2603:10b6:610:e0::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.15; Wed, 6 May 2026 20:22:57 +0000
Received: from DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::a2d:8df9:2ff0:fdd1]) by DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::a2d:8df9:2ff0:fdd1%7]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 20:22:57 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
CC: "Lin, Charlton" <charlton.lin@intel.com>
Subject: Re: [PATCH 019/108] drm/i915/dp_link_training: Track link recovery
 state with an enum
Thread-Topic: [PATCH 019/108] drm/i915/dp_link_training: Track link recovery
 state with an enum
Thread-Index: AQHc3ZTu58P6lTXio0uIKG1Uazmvv7YBcRSA
Date: Wed, 6 May 2026 20:22:57 +0000
Message-ID: <22c8e2d9fe291f26195a71d4f77c62f20dfbb330.camel@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-20-imre.deak@intel.com>
In-Reply-To: <20260428125233.1664668-20-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5373:EE_|CH0PR11MB5233:EE_
x-ms-office365-filtering-correlation-id: ad5a3a57-1f5f-417a-65b6-08deabad42c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003|38070700021|3023799003;
x-microsoft-antispam-message-info: WtV6SbGz06clPrvPFTcwkQkpnwoImVUQooh6KFTLfWGQEgH/QHQXco/f4o99sfkuEd9NqxtCzXxUfYVSm7FznyXmErCeC7xqxmfq8LSUd8tsL0Rhs0t57slIgUPoLHRQVjnnawsVRMoiI5HUc68EfW71UrGbI5HT9Yb2F/VDEvkGhuStP1c89NtAMiZbt9oqoUWBmQjoqbaqrzrurss4hLKOQ5/UH000rkQuaWFAjNImMPEqhZUEWvLlTEAXJLQEEQKFr7N3s5trb5wymkq6Y1uhpRcOdpedO+XxqWbv42975yfByBaEYspbztATmxVr1NHZ2TkhL51R63Lrs26xzrVPqhvM5ax+Xml9a+wh8FmxdgMv4pSfn1BGdIIGTOLLfslJadvbgyQEdvMY7OqaZHhNlMCKcgl4HXvziMgWAJ/GE0zlVXCIYxk9B2XUxa0x7+dzeJyGjipj8bVz/cTUAzhwuN/4EKc9EwjqJlDhxpIFSmOIuT3veEOZmsnbxZJPfoyMpnEzZem73/dTuP0rKx+VOCLChauY1Nfhm3pL/3T8MwXPQSijcssXDPhwzDN9Z3Xlfp+pTPKXUOWfFDAMcbXXuZCGl3UCqB1xSz+34PO/iFybdMZOQJbUIARGDj3r2W+QAfa5Ai/gMA53x9axubEW8jg03/J2eWD37+IY8u3Xf8zcpuFC8M4WRLykAj7mU+xhl9KYefCIqOOUoauLPf922BrH87GNixBd2BuS21PBQu8sPxANGbqKBRkC9r28
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5373.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021)(3023799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q05PeU83Uk55WmN2MkxRY212Zlk3ZVlhUG85bmtBL2tFS2lZTnI4b2NBVUF6?=
 =?utf-8?B?RkErWnB1aElXK1BRcDdIUXppT3ZvSENHc2J1QUFTZno4dG1SeEREYjVEVHpY?=
 =?utf-8?B?VUc4ZWQ0TUJQME9WS21sTEQ5UEs1YVUzaXFoeWJnUkZJMjE3M0huZGoyWWtq?=
 =?utf-8?B?SE8vcUViOHUxUzZCVWh1MHYzUTZGcDIxWnpiNCtUWCtKTlFySzFlZy9SWjU4?=
 =?utf-8?B?dGlHY2IzSHlxUHE4d213YlppUGdXQzRaU1kwTFd5QysvQTRTbjE3RXBYY21T?=
 =?utf-8?B?UGNxQ1lPQlhhV0NGRDAyWmZ2eTlSVGVDb3NTVW05eldwUE5hZzBUN2NReGdF?=
 =?utf-8?B?YWdHanZDQWlaclA1NU9aZlZMZjRnRjZheTZ2dm8xZ1lGM2k0TXhGRU01UlFC?=
 =?utf-8?B?Z3oxVkdTZWRJaGxhOXUrTWtMdC85T2RwS1lvWmdXYzIxZWhjVnlMejRpNHB1?=
 =?utf-8?B?MmthanZhM0JVU3FEUVFJNTMwYWdhUktuZmI5T1g0T081SWxGcWI3dndueVFG?=
 =?utf-8?B?dnRWbjViVDZsMEw3d2N1YXdyMG02bVovalhDOHBvYjVSWmVYUHZwVjhZeDgy?=
 =?utf-8?B?QThvNXpDTUY0N3NiYVEvczBBM0dCMTBVV1JVUXhscVRnTllHay96NjY2dmpa?=
 =?utf-8?B?djZ4UWNHcWN5eXVDYnNQZm9DU2lwS285dzB3VGFKeVFXWUVGOUFQckFCWWxz?=
 =?utf-8?B?cFpsd2xTdXVtN0lpZVMwN1hMWEJzRnYweFJWMUw0V1lzaGVjcTFFdU8wSXBN?=
 =?utf-8?B?QWk5b1VFNVBiK3hXMzBUc3FqV2Znd3FIMEZ0ek40VnlMVVBCY2pIYmJ3Vzhl?=
 =?utf-8?B?ek13V0RpOHhqZTR6Tll2dmhPMkY3UDJ1Yk1jZHNaOCtyRnd2enRpMk9IVXJz?=
 =?utf-8?B?UnN4SjVwTnhnRElVaDdLRk9CbW96bUVvdk9NQWx6Mng2bDlMbGZuVFkxVzVw?=
 =?utf-8?B?NXBBQzIzZ2ZtaDlJNVRwUmNiYkJ6L3NQc25pVnFCblZaZURIMWtuZDhORDBJ?=
 =?utf-8?B?WHlUSG55UExHaWpraXVPcHVDVHhjOXRSU3ZHQUo5RmZmc1pvb3I1bUtJR3RG?=
 =?utf-8?B?V2dLRVZDalB5SVBnd0FpN0hlR0Z1S21IZkM5NlRMTmhBMHloMEdQSzkxN3hk?=
 =?utf-8?B?MEZBVmZZSmhGL1laOGNDK0llMkxaUnFWV0RVVGZhVys4cm52OWplY3RmRHNN?=
 =?utf-8?B?SlhncTBvQWh5MUk0NnVQY2FLVjhIaVFCdUxYdm5OUldUVWo4RXBCTGErWi9s?=
 =?utf-8?B?TVNYRHM2QUg0R1JYbThqSnNKWkxuSG80MEF6aHYwcHJWUmJMYUlmdlhXZGUr?=
 =?utf-8?B?QjA5c0YvZnNnSENGdFgrR2lvY3l5TGszdGRYZHhmbDRQMWphM0pUbnVnZ3R2?=
 =?utf-8?B?SmUxa2ZUbjVUcDBuK1VBU1l6bkVHOHUxVVV3eVpvQXIzaDNZRHZleDI1cHFw?=
 =?utf-8?B?NkxBWUFnTDJsa2FaNjRBNS9yYVJ4b21PY1JWaEg4REkydEtpRWwvSDZFYS9U?=
 =?utf-8?B?OVkxMWhxL1hhZWoxS0dFU3pCRkRSZkxiaEpiUmZqYTU0a1ZTbzNheGJVd2Ro?=
 =?utf-8?B?eS9JekhTUmFuT3BIVjdKTUJLZENpUVlENCtHM1dkNGhGVUV3UVdxYTJ4eDhh?=
 =?utf-8?B?blh2NGJUZk83bkRVb2dva1FRdkQvckZPMzQwbll1VHgwWlF3VjNJVFV5WS8x?=
 =?utf-8?B?MzlXU0Z5WU5WV1k0N2l4aG8xSmM0aTdkcC92OTExdXEwK3JWUFBuVXpyWVNl?=
 =?utf-8?B?Nkg3czZMMTZEaEdGYTZlN2RnMEJPUjIraW5qcnVjcU1BdlR0SlBGa3NTd2Vz?=
 =?utf-8?B?YVc3SFBMR0c5THQ4M3NJR0JaUjBoQ29XK09TVHN6YjljN0pRMXNNYnFYTDNF?=
 =?utf-8?B?b2kvN3dMZUY4SzJNOHRsbGw4V3phdld5NTJMeklSZEt0eXNBUkhFdDgyTmhx?=
 =?utf-8?B?R2tRQmJoSC9uSTYwaEhURDZ4aFZaZmxROWtRcWN4alZTSjFuSi9wdTB3b1RH?=
 =?utf-8?B?Z1RzZldHczRjRkVNNll5dVVpUng1Z2lvUUtSUVNlNnQzZTd4UmQyR0dHYWNT?=
 =?utf-8?B?ellTcUxVK0JnWDZGT25mbW1abU4zajZ5MVFBckU1d2I3U0FWMllUVnIrWjBZ?=
 =?utf-8?B?SWp3UmtuQ0g0QUNzMDJUTCtZcm1rck9RRTdDZW5yT1MvSWZObWNtQXVyK3pW?=
 =?utf-8?B?NVdtQ25qR2tHbHNKbUlFanR1U0RyaGt5empGNXk2SUhwWWVUZTZCejZzZXZ2?=
 =?utf-8?B?OVNna2VzMGdhUkFmN1VTMDRyRU1Ga1MvY3ZpaEljNkwyd1YyRXdoMWc4VDEv?=
 =?utf-8?B?TklyS2YyT2x6UENraGEvSUtwQk1jTC92TDhkQkpkZjk2OFJoYlVzaDZyVWxF?=
 =?utf-8?Q?i64FeoasQ7GEy950=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <45D0387BBCE77A49B635A35403BE6A8D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HAKc5Ip/Dqey1TRTyO4mQNtZpZH0vQdgSYWq5pdTiYx2RY1HEfzVkMpDuKGJdPYSwe3DdPysqdrC+lWc40tq5oCrl+feNsQ75WTVSXR4AmbWrw1a5G3CYwpW1LjnnpIGj37rnespM17KTVjyx5QF27BLYj6F3RETdd3dc9s2Vh9xbvPVuhhO/LEslt1JP/B8iiW/KUy45/c0vuii11bLFOYBIKt3MDmaDG0XnSRRzyQtP9BBlUc/I6v0YJKyfduPptrigBhSBdBNPTFu4DBqYawYe4pBxva8fp+DPpKmEo1dCxDrQsSw5aqE1sdZGrNru+KYkWrseq5/aGbLLz2Ljg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5373.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad5a3a57-1f5f-417a-65b6-08deabad42c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 20:22:57.0719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qgM2VTh6b2C43GKh0A9KxlOhXjSABQX3S9OrV1YPraN8xSGbhx/09FNWvQl/ldr+d5yown1rGXIOLDlx0NelkjL7a2gj7b9TlGRqLCp6TnM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5233
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
X-Rspamd-Queue-Id: B51AE4E0220
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khaled.almahallawy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

T24gVHVlLCAyMDI2LTA0LTI4IGF0IDE1OjUxICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFJl
cGxhY2UgdGhlIHNlcXVlbnRpYWwgbGluayB0cmFpbmluZyBmYWlsdXJlIGNvdW50ZXIgd2l0aCBh
biBleHBsaWNpdA0KPiBsaW5rIHJlY292ZXJ5IHN0YXRlIGVudW0uDQo+IA0KPiBUaGlzIG1ha2Vz
IHRoZSByZWNvdmVyeSBzdGF0ZXMgYW5kIHRyYW5zaXRpb25zIGNsZWFyZXI6IGlkbGUsDQo+IGF1
dG9tYXRpYw0KPiByZXRyYWluaW5nIHBlbmRpbmcsIGFuZCBhdXRvbWF0aWMgcmV0cmFpbmluZyBk
aXNhYmxlZC4NCj4gDQo+IEEgZm9sbG93LXVwIGNoYW5nZSB3aWxsIGFsc28gbW92ZSB0aGUgcmV0
cmFpbl9kaXNhYmxlZCBmbGFnIGludG8gdGhpcw0KPiBlbnVtLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqAuLi4vZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCA1NSArKysrKysrKysrKysrKysr
LQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gaW5kZXggOTBiZDFiMGYxYWI3ZC4uYzQ0NDE2ZTBl
MzI4ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9saW5rX3RyYWluaW5nLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gQEAgLTYxLDE0ICs2MSw1NCBAQA0KPiDCoAkJbHRf
ZGJnKF9pbnRlbF9kcCwgX2RwX3BoeSwgIlNpbmsgZGlzY29ubmVjdGVkOiAiDQo+IF9mb3JtYXQs
ICMjIF9fVkFfQVJHU19fKTsgXA0KPiDCoH0gd2hpbGUgKDApDQo+IMKgDQo+IC0jZGVmaW5lIE1B
WF9TRVFfVFJBSU5fRkFJTFVSRVMgMg0KPiArLyoqDQo+ICsgKiBlbnVtIGludGVsX2RwX2xpbmtf
cmVjb3Zlcnlfc3RhdGUgLSBMVCByZWNvdmVyeSBzdGF0ZQ0KPiArICogQElOVEVMX0RQX0xJTktf
UkVDT1ZFUllfSURMRToNCj4gKyAqwqDCoCBObyBsaW5rIHRyYWluaW5nIGZhaWx1cmUgaXMgY3Vy
cmVudGx5IHRyYWNrZWQgYW5kIG5vIHJlY292ZXJ5DQo+IGlzDQo+ICsgKsKgwqAgaW4gcHJvZ3Jl
c3MuIFRoaXMgaXMgdGhlIGluaXRpYWwgc3RhdGUgYWZ0ZXIgZHJpdmVyDQo+IGluaXRpYWxpemF0
aW9uLA0KPiArICrCoMKgIHBvd2VyIHN0YXRlIHRyYW5zaXRpb25zLCBzaW5rIChyZS0pY29ubmVj
dGlvbiwgb3IgYWZ0ZXIgYQ0KPiBzdWNjZXNzZnVsDQo+ICsgKsKgwqAgbGluayB0cmFpbmluZy4N
Cj4gKyAqDQo+ICsgKiBASU5URUxfRFBfTElOS19SRUNPVkVSWV9BVVRPUkVUUkFJTl9QRU5ESU5H
Og0KPiArICrCoMKgIEEgZmlyc3QgbGluayB0cmFpbmluZyBmYWlsdXJlIGhhcyBiZWVuIG9ic2Vy
dmVkIGFuZCBhbg0KPiBhdXRvbWF0aWMNCj4gKyAqwqDCoCByZXRyYWluaW5nIGF0dGVtcHQgd2l0
aCB0aGUgc2FtZSBsaW5rIHBhcmFtZXRlcnMgaXMgcGVuZGluZy4NCj4gRXhhY3RseQ0KPiArICrC
oMKgIG9uZSBzdWNoIGF0dGVtcHQgaXMgYWxsb3dlZCBiZWZvcmUgc3dpdGNoaW5nIHRvIHVzZXJz
cGFjZS0NCj4gZHJpdmVuDQo+ICsgKsKgwqAgcmVjb3ZlcnkuDQoNCldoZW4gcnVubmluZyBMaW5r
IExheWVyIGZhbGxiYWNrIENUUyBmb3IgRFAxLjQsIHdlIG5vdGljZWQgVUNENTAwDQpjb21wbGFp
bnRzIGJlY2F1c2Ugd2UgcmV0cnkgdGhlIHNhbWUgbGluayBwYXJhbWV0ZXJzLiBJbiBmYWN0LCB3
ZSB1c2VkDQp0byBjaGFuZ2U6DQoNCiNkZWZpbmUgTUFYX1NFUV9UUkFJTl9GQUlMVVJFUyAxDQoN
CkkgZXhwZWN0IHRoZSBzYW1lIGNvbXBsYWludCB3aWxsIGhhcHBlbiBpbiBEUDIuMSBmYWxsYmFj
ayBDVFMuDQoNCklmIEkgbG9vayBhdCB0aGUgZm9sbG93aW5nIGZyb20gdGhlIERQMi4xIHNwZWNz
Og0KKiBUYWJsZSAzLTMxOiBEUFRYIEZhbGxiYWNrIE1hbmRhdGVzIChOb3JtYXRpdmUpDQoqIEZp
Z3VyZSAzLTEyOiBMaW5rIFRyYWluaW5nIExBTkV4X0NSX0RPTkUgU2VxdWVuY2UNCiogRmlndXJl
IDMtMTM6IExpbmsgVHJhaW5pbmcgTEFORXhfQ0hBTk5FTF9FUV9ET05FIFNlcXVlbmNlDQoqIEZp
Z3VyZSAzLTE0OiBMaW5rIFRyYWluaW5nIExBTkV4X0NSX0RPTkUgU2VxdWVuY2UgZm9yIE1heGlt
dW0gTGluaw0KRGF0YSBCYW5kd2lkdGggUG9saWN5DQoqIEZpZ3VyZSAzLTE1OiBMaW5rIFRyYWlu
aW5nIExBTkV4X0NIQU5ORUxfRVFfRE9ORSBTZXF1ZW5jZSBmb3IgTWF4aW11bQ0KTGluayBEYXRh
IEJhbmR3aWR0aCBQb2xpY3kNCg0KSSBkbyBub3Qgc2VlIGl0IHJldHJhaW5pbmcgdXNpbmcgdGhl
IHNhbWUgbGluayBwYXJhbWV0ZXJzLg0KU28sIGRvIHlvdSB0aGluayB3ZSBzaG91bGQgbWFrZSB0
aGlzIGNvbmZpZ3VyYWJsZSwgbWF5YmU/DQoNClRoYW5rIFlvdQ0KS2hhbGVkDQoNCg0KPiArICoN
Cj4gKyAqIEBJTlRFTF9EUF9MSU5LX1JFQ09WRVJZX0FVVE9SRVRSQUlOX0RJU0FCTEVEOg0KPiAr
ICrCoMKgIEF1dG9tYXRpYyByZXRyYWluaW5nIGlzIG5vIGxvbmdlciBwb3NzaWJsZS4gQXQgdGhp
cyBwb2ludCwgYQ0KPiArICrCoMKgIGZhbGxiYWNrIHNlbGVjdGlvbiBpcyBtYWRlIGFuZCB1c2Vy
c3BhY2UgaXMgbm90aWZpZWQgdG8gdGFrZQ0KPiBvdmVyDQo+ICsgKsKgwqAgcmVjb3ZlcnksIHBl
cmZvcm1pbmcgbW9kZXNldHMgd2l0aCBwYXJhbWV0ZXJzIGl0IGRldGVybWluZXMgYXJlDQo+ICsg
KsKgwqAgcmVxdWlyZWQuIFRoZSBkcml2ZXIgdGhlbiBzZWxlY3RzIGEgbGluayBjb25maWd1cmF0
aW9uIGZyb20gdGhlDQo+ICsgKsKgwqAgcmVtYWluaW5nIGZhbGxiYWNrIGNvbmZpZ3VyYXRpb24g
c2V0LiBTdWJzZXF1ZW50IGxpbmsgdHJhaW5pbmcNCj4gKyAqwqDCoCBmYWlsdXJlcyB0cmlnZ2Vy
IGZ1cnRoZXIgZmFsbGJhY2sgc2VsZWN0aW9ucyBhbmQgdXNlcnNwYWNlDQo+ICsgKsKgwqAgbm90
aWZpY2F0aW9ucy4NCj4gKyAqDQo+ICsgKiBEZXNjcmliZXMgdGhlIGxpbmsgcmVjb3Zlcnkgc3Rh
dGUgdXNlZCBieSB0aGUgSW50ZWwgRFAgbGluaw0KPiByZWNvdmVyeQ0KPiArICogbG9naWMuDQo+
ICsgKg0KPiArICogU2VlIGFsc286DQo+ICsgKsKgwqAgLSBsaW5rX3JlY292ZXJ5X2F1dG9yZXRy
YWluX3BlbmRpbmcoKQ0KPiArICrCoMKgIC0gbGlua19yZWNvdmVyeV9hdXRvcmV0cmFpbl9hbGxv
d2VkKCkNCj4gKyAqwqDCoCAtIGxpbmtfcmVjb3ZlcnlfbWFya190cmFpbl9mYWlsdXJlKCkNCj4g
KyAqwqDCoCAtIGxpbmtfcmVjb3ZlcnlfcmVzZXQoKQ0KPiArICovDQo+ICtlbnVtIGludGVsX2Rw
X2xpbmtfcmVjb3Zlcnlfc3RhdGUgew0KPiArCS8qDQo+ICsJICogS2VlcCB0aGUgZW51bSB2YWx1
ZXMgb3JkZXJlZCBmcm9tIGxlYXN0IHRvIG1vc3Qgc2V2ZXJlDQo+ICsJICogcmVjb3Zlcnkgc3Rh
dGU7IGhlbHBlciBsb2dpYyByZWxpZXMgb24gdGhhdCBvcmRlcmluZy4NCj4gKwkgKi8NCj4gKwlJ
TlRFTF9EUF9MSU5LX1JFQ09WRVJZX0lETEUsDQo+ICsJSU5URUxfRFBfTElOS19SRUNPVkVSWV9B
VVRPUkVUUkFJTl9QRU5ESU5HLA0KPiArCUlOVEVMX0RQX0xJTktfUkVDT1ZFUllfQVVUT1JFVFJB
SU5fRElTQUJMRUQsDQo+ICt9Ow0KPiDCoA0KPiDCoHN0cnVjdCBpbnRlbF9kcF9saW5rX3RyYWlu
aW5nIHsNCj4gwqAJc3RydWN0IGludGVsX2RwICpkcDsNCj4gwqANCj4gKwllbnVtIGludGVsX2Rw
X2xpbmtfcmVjb3Zlcnlfc3RhdGUgcmVjb3Zlcnlfc3RhdGU7DQo+ICsNCj4gwqAJYm9vbCByZXRy
YWluX2Rpc2FibGVkOw0KPiAtCS8qIFNlcXVlbnRpYWwgbGluayB0cmFpbmluZyBmYWlsdXJlcyBh
ZnRlciBhIHBhc3NpbmcgTFQgKi8NCj4gLQlpbnQgc2VxX3RyYWluX2ZhaWx1cmVzOw0KPiDCoAlp
bnQgZm9yY2VfdHJhaW5fZmFpbHVyZTsNCj4gwqAJYm9vbCBmb3JjZV9yZXRyYWluOw0KPiDCoH07
DQo+IEBAIC0xMjYwLDcgKzEzMDAsNyBAQCBpbnRlbF9kcF8xMjhiMTMyYl9pbnRyYV9ob3Aoc3Ry
dWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqBzdGF0aWMgYm9vbA0KPiDCoGxpbmtfcmVj
b3ZlcnlfYXV0b3JldHJhaW5fcGVuZGluZyhzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZw0K
PiAqbGlua190cmFpbmluZykNCj4gwqB7DQo+IC0JcmV0dXJuIGxpbmtfdHJhaW5pbmctPnNlcV90
cmFpbl9mYWlsdXJlcyA9PSAxOw0KPiArCXJldHVybiBsaW5rX3RyYWluaW5nLT5yZWNvdmVyeV9z
dGF0ZSA9PQ0KPiBJTlRFTF9EUF9MSU5LX1JFQ09WRVJZX0FVVE9SRVRSQUlOX1BFTkRJTkc7DQo+
IMKgfQ0KPiDCoA0KPiDCoC8qKg0KPiBAQCAtMTI3NCw3ICsxMzE0LDcgQEAgbGlua19yZWNvdmVy
eV9hdXRvcmV0cmFpbl9wZW5kaW5nKHN0cnVjdA0KPiBpbnRlbF9kcF9saW5rX3RyYWluaW5nICps
aW5rX3RyYWluaW5nKQ0KPiDCoHN0YXRpYyBib29sDQo+IMKgbGlua19yZWNvdmVyeV9hdXRvcmV0
cmFpbl9hbGxvd2VkKHN0cnVjdCBpbnRlbF9kcF9saW5rX3RyYWluaW5nDQo+ICpsaW5rX3RyYWlu
aW5nKQ0KPiDCoHsNCj4gLQlyZXR1cm4gbGlua190cmFpbmluZy0+c2VxX3RyYWluX2ZhaWx1cmVz
IDwNCj4gTUFYX1NFUV9UUkFJTl9GQUlMVVJFUzsNCj4gKwlyZXR1cm4gbGlua190cmFpbmluZy0+
cmVjb3Zlcnlfc3RhdGUgPA0KPiBJTlRFTF9EUF9MSU5LX1JFQ09WRVJZX0FVVE9SRVRSQUlOX0RJ
U0FCTEVEOw0KPiDCoH0NCj4gwqANCj4gwqAvKioNCj4gQEAgLTEyOTksMTEgKzEzMzksMTIgQEAg
bGlua19yZWNvdmVyeV9tYXJrX3RyYWluX2ZhaWx1cmUoc3RydWN0DQo+IGludGVsX2RwX2xpbmtf
dHJhaW5pbmcgKmxpbmtfdHJhaW5pbmcpDQo+IMKgew0KPiDCoAlpZiAobGlua19yZWNvdmVyeV9h
dXRvcmV0cmFpbl9hbGxvd2VkKGxpbmtfdHJhaW5pbmcpKQ0KPiDCoAkJLyogTW92ZSB0byBhdXRv
cmV0cmFpbiBwZW5kaW5nIG9yIGF1dG9yZXRyYWluDQo+IGRpc2FibGVkIHN0YXRlLiAqLw0KPiAt
CQlsaW5rX3RyYWluaW5nLT5zZXFfdHJhaW5fZmFpbHVyZXMrKzsNCj4gKwkJbGlua190cmFpbmlu
Zy0+cmVjb3Zlcnlfc3RhdGUrKzsNCj4gwqANCj4gwqAJcmV0dXJuIGxpbmtfcmVjb3ZlcnlfYXV0
b3JldHJhaW5fYWxsb3dlZChsaW5rX3RyYWluaW5nKTsNCj4gwqB9DQo+IMKgDQo+ICsNCj4gwqAv
KioNCj4gwqAgKiBsaW5rX3JlY292ZXJ5X3Jlc2V0IC0gcmVzZXQgdGhlIGxpbmsgcmVjb3Zlcnkg
c3RhdGUNCj4gwqAgKiBAbGlua190cmFpbmluZzogbGluayB0cmFpbmluZyBzdGF0ZQ0KPiBAQCAt
MTMxMyw3ICsxMzU0LDcgQEAgbGlua19yZWNvdmVyeV9tYXJrX3RyYWluX2ZhaWx1cmUoc3RydWN0
DQo+IGludGVsX2RwX2xpbmtfdHJhaW5pbmcgKmxpbmtfdHJhaW5pbmcpDQo+IMKgICovDQo+IMKg
c3RhdGljIHZvaWQgbGlua19yZWNvdmVyeV9yZXNldChzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFp
bmluZw0KPiAqbGlua190cmFpbmluZykNCj4gwqB7DQo+IC0JbGlua190cmFpbmluZy0+c2VxX3Ry
YWluX2ZhaWx1cmVzID0gMDsNCj4gKwlsaW5rX3RyYWluaW5nLT5yZWNvdmVyeV9zdGF0ZSA9IElO
VEVMX0RQX0xJTktfUkVDT1ZFUllfSURMRTsNCj4gwqB9DQo+IMKgDQo+IMKgLyoqDQoNCg==

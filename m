Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5091199378C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19F810E416;
	Mon,  7 Oct 2024 19:44:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nD2CrY3P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0160110E414;
 Mon,  7 Oct 2024 19:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728330252; x=1759866252;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GE2AuFMLG2GBPjIVB4vOCuT3FzbhUrzL5oD00adzd7g=;
 b=nD2CrY3P5Elg/mohB0bdysZmUnYuDQHNDKNnUdgN7fXXfYv0P28S13qK
 LZoyntiObTJxwIaIylGs8k/BfN0idRhdRZRvZinspSwVbY7zNsQVXKCXo
 e6QXtVQup0uuvllG86dkYWdoOXdSdErJiLPXyKqfQ8Um3McjnJXMipXxo
 uWbp1DyT6NRNOa7OgBEUgZaBrYDXZMqYsk+tHQWof/KpssTfwu9L9zf2k
 q0QnVaGS+zoCOHbCKX+l7ounua9yVQaunKVsPvUBmAhHL//Lb5N9QEwc3
 qaaTk6ktHyInqn/OfUobbelEjMttft+pqEPIAOeWFsygjxUfEKzic3iZ0 A==;
X-CSE-ConnectionGUID: 9bnLyzkeShm6fGEo+gEL8w==
X-CSE-MsgGUID: YJAVnmFFQFiUTfxRwsaT0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="31385833"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="31385833"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:44:11 -0700
X-CSE-ConnectionGUID: u4KFZegOTK2ug3Uf0u0Aag==
X-CSE-MsgGUID: B/ujt5bdRKW1ubaWcK5Dtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80376525"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:44:11 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:44:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:44:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:44:10 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:44:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WrwnziF+ks7Dz7yce2vSnskwCOCWIW4NF8KIRjgQ36hlF+y2nNCjN8FEO+5BFJfJvDTIyofqDvuOKoQXe4ZlSZWi/RzMSZKeZQqwlGS52CJ/W0eXKwyNiF+IGZGtlKHNhoBHrAD+MavGwBwM5NGO9jPQKqwkYjhkCc5D3ybo3B/957IBMB5LEF9hTML3ahy0v6mLt9nKWNl9GcROMjtoHF27IrFWv7nTkCFEpyyEryJe4n264wvYl04wqw/dtz1xiaW1q2JtDIaiBramsx6sGkSRsM/gp5b+OZxUFPXL9228jpN7m/vhun51PjrC9bLH1WvzF/MsZF2avZpOjmBuRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PTdG3Ayr9+vadS8+VTbj/4Q2+rS1K+uJ8DcIGJzaNXI=;
 b=noJ0+Fv9QzrOM25DTDZb/rv9o3lvEGyNl0JNxZYVVth7aTnyi6qhLEGPKDwqA5DzwpZgydPsaw7T4pkyuyvMGp7A3/HA9dot745esaCGNFMvDmRWbeF+lWhU3TwXia542l0oJeobgzve8rzRuoHv2begKJkezRk0SfmvdEZXiMtLPLzN6D0IbM9A7aVv055UI3lym3Ffu3QsTpArm5iYm0hvZ/E7SZ3nt2bUVPFqkMPnyFTGTKANuvp+7ryuVhs1olymbCyTz1KaMU/h4j68YMGDSPj0pesvp7GFxUqKsFIIbFsI0Fjbl+GSZiB92jSg8UjXMk/kME10wOanJSlB6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by MN0PR11MB6136.namprd11.prod.outlook.com (2603:10b6:208:3c8::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 19:44:07 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:44:07 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 06/31] drm/xe: Use i915-display shutdown sequence directly
Thread-Topic: [PATCH 06/31] drm/xe: Use i915-display shutdown sequence directly
Thread-Index: AQHbDsJkW4ydcALQ4EWwKpD97NNaJbJ7xMsQ
Date: Mon, 7 Oct 2024 19:44:07 +0000
Message-ID: <BL1PR11MB54457D5B5DDA5AE441A8FC6CE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-7-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-7-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|MN0PR11MB6136:EE_
x-ms-office365-filtering-correlation-id: 8683601a-1c3d-4e10-9ee1-08dce7086815
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?FpoEarkxXIAbpzATRs5ZUEhx/fN1TcJAoriTW6wHVTOKcvcFlkanppMZIeP8?=
 =?us-ascii?Q?x9aa9QeAOLXfkmUOx1iMKBiA4Cxf2UenNq7eN2ddVpHurDCXCXCve5NyezvN?=
 =?us-ascii?Q?iSf5rPRRO39Ne3k26s4Xi5VpwvsCIcADB/SkWxZ3BAoEg0wvyfzSxIRYy52O?=
 =?us-ascii?Q?HTlRa5gFjAddgLuZOUQUHdqrRg6xJWF6nkZm0eJ3juI9R0e8iVdim30C31YL?=
 =?us-ascii?Q?WtTWDnnNcQFkRmzK1fLTLg8TlpPYjZyRkuTGggrmPEbVLdmgCPgu9bR3oWHk?=
 =?us-ascii?Q?YmHNRmoma5hRnSWyKtdNALhZt0RGjE18w23IxaAaKGcNxVecgJT4Lvxor23z?=
 =?us-ascii?Q?zdeUw9YhrTY0sGHUFzzDhDZbi7U6ziCKNwiDfDcKJfcJkX314mvIONcXNWdE?=
 =?us-ascii?Q?0h9XE1h/oIYiAb6EyF91H9/f3ROJRm07F7svtmleehpJQOx/M6CVlCVBNlQ2?=
 =?us-ascii?Q?LTKJvOmqE/ieJAPQQWbkryI1XZNcvkxuOHX4DBuycvegmqoCkMzQ8ByC276T?=
 =?us-ascii?Q?sRTISv3YTkAXjQ6cdJHn9WHCJs3n6dEt3NqUy2LfCUZcWzoyXswNLyHnlBJe?=
 =?us-ascii?Q?6ABq57TnJIiP3HAlmWWKH+Qh6SD1SQ9WFmaWuEU2KN2jAO31BH0ha0/AXncq?=
 =?us-ascii?Q?qty7JRsik6t9MDNWQy8k1rFz+tcfyH2l+CVKOUlQSxkaPamPIR2TBiAdy41H?=
 =?us-ascii?Q?RCajtl8ShWlziGW14eDgsG+7cmtIhI/SIclmntqRjWxyZVbg7ELfdiQymsxn?=
 =?us-ascii?Q?PVO4FECd/jkVW99vJO/n+0nK5BM6G6EhZ9IyrfF8rLU963BS9a0FcsCz8J6b?=
 =?us-ascii?Q?Lu366yfzaw0x1BAFaOSv8Yfuxl5r3RE3maXVywlpKufdXzOP425Dug7UY5If?=
 =?us-ascii?Q?mHjljMNpx6c/nrw7gyUJOE4Dli+wplYy/YX5hfOxju6dP169/oF14aTU5qVr?=
 =?us-ascii?Q?iPTA7a83dhcWap+XBlna4/PXS6QugXj8anAvQvr9JNcBfAKPyTEf6126i780?=
 =?us-ascii?Q?vQOLiC9OjKx+zdGnCVv5rVmkdKj6jfe4JHXVnYTAleuViXIkoS43vp32A/O8?=
 =?us-ascii?Q?0Bolcqf0TQphqh+qwaxwMsMxVXbPw1A0Y3aph3KaAJ+q2vieN8Qvj5oMMngm?=
 =?us-ascii?Q?VUbTRpaTVDRiv1qFSi7i8qO5g9llAigi1Q7WVziVFfWwBzKsUab02Yb0PGaB?=
 =?us-ascii?Q?XQpGP5P/XlvB9QgzfICDBoQkM9c+fNiUrDD0GivVNsLRT/JlLLYkWzZSidqF?=
 =?us-ascii?Q?ZkIzecLy9GEITbFI16DXQcGf9QqVnWenBZEA159yMhA2tQxl9OJ19QX///7t?=
 =?us-ascii?Q?EKtkXMIskKgdCNUsJJ6e0IASJhnv481RQQ1qR5YPs3BiVg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Eq17DdzwCEK5mkoE8G8GiP0/5hGhybGw7oNltfX2rcsaLlMztmkAbrz6fc5I?=
 =?us-ascii?Q?DEysNoxzCdRXTbZO8tRnHtkZnSuVCEfJK9Hkp/iT4rKPmEsBliDzxPH9DdYc?=
 =?us-ascii?Q?ulSdX+Z/cScOwxwVG4pLFo9SicI2Lg74Dxof7wOrZLo7Vp1cR0XyERk8DHp/?=
 =?us-ascii?Q?ONeszGRPjWvz5O/98QJ579TLwhJPZm6FY23CwFH/qBuvU5icKfTPVT6KooaE?=
 =?us-ascii?Q?Le88/AzcLWEcHWuKTa3PhXqfRfrQnQ1rOOO4yTne5M5ex+99HbEBwuvBN0ce?=
 =?us-ascii?Q?ravIpYZKZZRNONOGj2m32utWuLF3N2dRjF06Qm7pNyv7c5fq8jIfocyBDAus?=
 =?us-ascii?Q?tLc3Ny9AwZiOgPHnNH/rHulwhzv7f98XjS/yvhVpk3bd+BO0s3aS+jDxo7Zn?=
 =?us-ascii?Q?L2t6n6tV8Lk89ov8t7nrmY5JbVoD+BBCdYn2rrUFqpodJWR4QVgSh+gM6JVE?=
 =?us-ascii?Q?PJr3cY8X1BUVajkN/0t+gww97RMEAiMNaic8PDFqzrvfJw5uRApf3m7PilJ8?=
 =?us-ascii?Q?pEnby8SRCehZazeXdP1LyBI0HfKcqqbB6gqNoeTTDybnADRxew5QsxmGjIfg?=
 =?us-ascii?Q?Ib2+2WhFqEDk75rBk/PT10zUCNkkUdcg0CPYvyWcIWqRkPvEe/SnJKu3h8aE?=
 =?us-ascii?Q?1Aw9uVqY57CQX1gxQ6gp42sGSRXrBi8T0bjRdoL0mJC3CrLOUCPB4ZSzqFrL?=
 =?us-ascii?Q?bmjFjlcuPXiC4ryohDzeQX1WZDUgYBkg+fXd37qCGDJ9rMa/HHgtoNjVszC/?=
 =?us-ascii?Q?i8r96yKpu3bHaYgFKQslVKKVDV6LeI6gLfTvtUIqwFRGlr8hKjeTpthOR4uZ?=
 =?us-ascii?Q?yTcy3QIH8EnVqZOOeTO5pzPiX9Y5cVS91DwnDnWTiKGAAgZycrBBy2nvbZrB?=
 =?us-ascii?Q?JIe9bG4vn7CKSDOy35kD4S/wSFkOL/ScvIqg6C9YlIcjKy6S4LCawCfyobF4?=
 =?us-ascii?Q?dXmenbytjnK7TWAxFh+FVaZJtg7xx4S37G9uzZiJ7fsJvbDDHglQVzIzwoeu?=
 =?us-ascii?Q?PjCtgmmTgVDjnhQYfaqQA1xHXHg48l1WxEpI4Amj7VHIHMo2OJj99EGYUwjP?=
 =?us-ascii?Q?qyUNAs99fSQDanzJbaen2M4byc19zVAQCj7m2I6cm2YKXynOqnxw+/T4IRhc?=
 =?us-ascii?Q?+3WM8i02/G1ZFV0tBlVw6hOPPpaUq22KsN2j7S37yqzlDqQ/7nSWZNJsfFNE?=
 =?us-ascii?Q?QPsGPF1EltV8Zw/wBnwarA6lbqOfZXGsDIzkmgtIWk8LPB4O2imzduDKKGA2?=
 =?us-ascii?Q?vgp0ygvsp3qqxJ36rboJRk3kFt+Nqwgd7mOo+d6ttyupNv/jForvpoUs2cST?=
 =?us-ascii?Q?f0NSQpEfDZYNY8CLUhMTQps0ebCV5aHxZKjkDg7nOwoSwQPEtLSir3I/0X32?=
 =?us-ascii?Q?XC3qOzm6cWOUHeP9ByUnus1ATrB2fyeN0nPjRH+OtCKadA0zWDhMjEUnvq5q?=
 =?us-ascii?Q?ej1RT0xWl/YzJp3kgD3rJI6uXVEaIg5FQxFQ4+GFwMY97mKXLl6HfhacxVdU?=
 =?us-ascii?Q?lKzz4jOTVXxg1fimgVf4qxLIfzw1bvnLwLV2ZjP9o8FUhu0J1/jRnDtnajNb?=
 =?us-ascii?Q?H58yIzPcGmhSxzAabP4iZJwE97rhFjT3xA72BZBAioswG6FKSSw0vMajwDwK?=
 =?us-ascii?Q?sw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8683601a-1c3d-4e10-9ee1-08dce7086815
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 19:44:07.1542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WLzORy19joylB3U+GhKxfjoZQ0BgydkmSYyKEfq5z1F7IgGbREUjgHAt8bKrslUmELfJtg6tTWH5nSwsbMyI5Ewb1V53D8QXN3DVJP78U+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6136
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:35 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 06/31] drm/xe: Use i915-display shutdown sequence directly
>=20
> Start the xe-i915-display reconciliation by using the same
> shutdown sequences.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 46 +++++++------------------
>  drivers/gpu/drm/xe/display/xe_display.h |  5 +--
>  drivers/gpu/drm/xe/xe_device.c          |  4 ++-
>  3 files changed, 19 insertions(+), 36 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 0237d458078b..b5a2a09e7a71 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -10,7 +10,6 @@
> =20
>  #include <drm/drm_drv.h>
>  #include <drm/drm_managed.h>
> -#include <drm/drm_atomic_helper.h>
>  #include <drm/drm_probe_helper.h>
>  #include <uapi/drm/xe_drm.h>
> =20
> @@ -355,32 +354,26 @@ void xe_display_pm_suspend(struct xe_device *xe)
> =20
>  void xe_display_pm_shutdown(struct xe_device *xe)
>  {
> -	struct intel_display *display =3D &xe->display;
> -
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	intel_power_domains_disable(xe);
> -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> -	if (has_display(xe)) {
> -		drm_kms_helper_poll_disable(&xe->drm);
> -		intel_display_driver_disable_user_access(xe);
> -
> -		drm_atomic_helper_shutdown(&xe->drm);
> -	}
> -
> -	intel_dp_mst_suspend(xe);
> -	intel_hpd_cancel_work(xe);
> +	intel_display_driver_shutdown(xe);
> +}
> =20
> -	if (has_display(xe))
> -		intel_display_driver_suspend_access(xe);
> +void xe_display_pm_shutdown_noirq(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
> =20
> -	intel_encoder_suspend_all(display);
> -	intel_encoder_shutdown_all(display);
> +	intel_display_driver_shutdown_noirq(xe);
> +}
> =20
> -	intel_opregion_suspend(display, PCI_D3cold);
> +void xe_display_pm_shutdown_noaccel(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
> =20
> -	intel_dmc_suspend(display);
> +	intel_display_driver_shutdown_nogem(xe);
>  }
> =20
>  void xe_display_pm_runtime_suspend(struct xe_device *xe)
> @@ -405,19 +398,6 @@ void xe_display_pm_suspend_late(struct xe_device *xe=
)
>  	intel_display_power_suspend_late(xe);
>  }
> =20
> -void xe_display_pm_shutdown_late(struct xe_device *xe)
> -{
> -	if (!xe->info.probe_display)
> -		return;
> -
> -	/*
> -	 * The only requirement is to reboot with display DC states disabled,
> -	 * for now leaving all display power wells in the INIT power domain
> -	 * enabled.
> -	 */
> -	intel_power_domains_driver_remove(xe);
> -}
> -
>  void xe_display_pm_resume_early(struct xe_device *xe)
>  {
>  	if (!xe->info.probe_display)
> diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe=
/display/xe_display.h
> index 17afa537aee5..a801db19b64f 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.h
> +++ b/drivers/gpu/drm/xe/display/xe_display.h
> @@ -35,9 +35,10 @@ void xe_display_irq_reset(struct xe_device *xe);
>  void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
> =20
>  void xe_display_pm_suspend(struct xe_device *xe);
> -void xe_display_pm_shutdown(struct xe_device *xe);
>  void xe_display_pm_suspend_late(struct xe_device *xe);
> -void xe_display_pm_shutdown_late(struct xe_device *xe);
> +void xe_display_pm_shutdown(struct xe_device *xe);
> +void xe_display_pm_shutdown_noirq(struct xe_device *xe);
> +void xe_display_pm_shutdown_noaccel(struct xe_device *xe);
>  void xe_display_pm_resume_early(struct xe_device *xe);
>  void xe_display_pm_resume(struct xe_device *xe);
>  void xe_display_pm_runtime_suspend(struct xe_device *xe);
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_devic=
e.c
> index cb5a9fd820cf..7c698b4b265b 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -822,10 +822,12 @@ void xe_device_shutdown(struct xe_device *xe)
> =20
>  		xe_irq_suspend(xe);
> =20
> +		xe_display_pm_shutdown_noirq(xe);
> +
>  		for_each_gt(gt, xe, id)
>  			xe_gt_shutdown(gt);
> =20
> -		xe_display_pm_shutdown_late(xe);
> +		xe_display_pm_shutdown_noaccel(xe);
>  	} else {
>  		/* BOOM! */
>  		__xe_driver_flr(xe);
> --=20
> 2.46.0
>=20
>=20

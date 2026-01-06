Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8F2CF778A
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 10:19:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B27210E4B6;
	Tue,  6 Jan 2026 09:19:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z/qNGFtt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED80A10E0D0;
 Tue,  6 Jan 2026 09:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767691192; x=1799227192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o3ohkQuXcA71v+ov2/tURcCqAqu/vQfh5MobQIDrNh0=;
 b=Z/qNGFttQtU500LDo8YHnYZtf2hL8HwQPAV9c0fz4nznyLIJnh2raFvj
 Xj/xJzoxRfBXN8xglC7iy3TacPn9sAfo1Wv9LW4IPA7D3Sj3VoOrWLoRS
 VS5v8Ay7nfG9d7CjA/MAvZRJlvcScWsDDX9U+54f9ITr42sXYsj+e09bo
 yW/qYUY5IpdvjnFxWWKU/WfsHQdoChnFgf+8Q5q37jBs3IeXdglC8qxTF
 BtpzYeapmOOHWMc2V3n6Dq8iL1iBrKBoCfLQN5T5B0ikRbUq0KbwUqU5f
 YyBQeWkzPs6leN+Nx7b/H9Ocw64GAcFh/uXMwPI/4Wv9DM+q4nOaF86TT Q==;
X-CSE-ConnectionGUID: fxwAQ126QtyecPcVYU+4dA==
X-CSE-MsgGUID: r/n6kEZKRcCN6LPfKSUlNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="69216908"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="69216908"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 01:19:51 -0800
X-CSE-ConnectionGUID: CyENxu5PShCxUYDbHXUSOA==
X-CSE-MsgGUID: 3RQOR3oRR7Cxn9l1tFOKsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="207490622"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 01:19:51 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 01:19:50 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 6 Jan 2026 01:19:50 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.16) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 01:19:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z+BoD6+Afo5sVCWBxXvI5sHfCPKarCIa5NkuJZvlENcw5fyMWTLhUeSTNNQXVresrwPl+60vUlrSwRnDSejS8xmPEeTiZgsM+g4LiMZhuUwdVY8w53G7e8eEd2Dh6lIQOCsVcGGRHlZMmFsJGxmhRKA3jawf5bSoQ3R7+IwJK1He42qKwPWeIxbTPBXcOOdXQ7LVSPN3DVmpFCV7k/9WrxY70q35dFVW+R+7HdvaNBj800ErbuJ6mV7kn+2rkB1OhVHX4jnsePc5jkdBo7uDFLMDN0S1sEQ85ceHhVN61zx432jnyv9twAz/CPiMENDA1J6Z6nO4oJIig85isjdvgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6KY3wcB/ZaoPgCBAz8ko+4m4NjvX773R10tHzt5jCQ0=;
 b=MZxTmrgYpNxA5ixTnLfuWYMC9kHevtPrqx7p0PuLqzoaurOsC1jTVWI4PGQw08lY2kAyAtG5dmoIoOONCizcMfq0Z9RhImGQgjL/BmysTjGHvXLnoWIEp2KBpoeShZ5C7TYT2G5wl4s0GShzit/D5LrgiMTUbLa8t7HqvZYvvYzG3KHPF4Q7mz9QQtMk+4x8jZqoWMK/R3YwxAJgrTxhw3pxdLt72TM3T+IJfhWdrl/yR5jIH0Yqc366lToKiBUUkemsM6mJ/QfLVS6Q4m5FVukocnlvTT2vIjCoIEj7RIg/v7WDz2wl6Y3LTrn+3WDwXUV/v5cE0AcFhmBOh97Ljw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 09:19:48 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 09:19:48 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Manna, Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH v3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Index: AQHceK3SuR+QcATYbk6pSKMPsoMX/bVE5l9w
Date: Tue, 6 Jan 2026 09:19:47 +0000
Message-ID: <IA0PR11MB7307A5CA36737D9D10F88D7EBA87A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20251229095913.57790-1-animesh.manna@intel.com>
In-Reply-To: <20251229095913.57790-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH8PR11MB6974:EE_
x-ms-office365-filtering-correlation-id: b17530c0-fabe-4b83-eb65-08de4d04bd09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UwOlefNUMaglhJo5NZY7C6wCmRe67XWUKK0dumtC4Ce/yuOz06I4+sceCV/I?=
 =?us-ascii?Q?9QafcUhSaxRimLdsGfTBiVS5nmrMyqI5a5M4NpAh3YBru9Pr3Sy9WRg7gSKi?=
 =?us-ascii?Q?M1CVDyESViNVnXMwhxkQgR5I7kB4EwJXdd7yRy07FbZORfw3CxGLG9C4U8VB?=
 =?us-ascii?Q?jT4LGvm7Px0UPebEhuUwUQxgkl1tLvZH/ifc0TQ5raHXd2nxh7QT6gQ1bXLZ?=
 =?us-ascii?Q?Gz8MfcEv0cwXzernQkq8RWT7PhwjsGef1cOrXmLYp9QDakD70AlG+s1dW06H?=
 =?us-ascii?Q?Se3/DdC7RpYlWsBWauASYRmyfUzOSjBURO+wk+9KXv2KMcTlblHklQ5iKOej?=
 =?us-ascii?Q?NtlhnjKtvlwHqs48LvI80yTPBOmZUG5cSyOQ0bt5mkuM7MLX7LJGskADZYl7?=
 =?us-ascii?Q?tAIkMgYT/txtYD3CKPMPUdxJ9Fd0iSDcx+QgQBxzWMpDiX3ZU2PMg9sM5/08?=
 =?us-ascii?Q?0rT1MCEjfzpAu0ItKfCn1fz9TEzau+7h0K8hGoeenYw/OlEe94MLD7OksrYX?=
 =?us-ascii?Q?Nvl90nLD8KGtSb06g30d+l24+d7kgMs/7s2n5jPqm+r55qvU0j2BUw3ugsB7?=
 =?us-ascii?Q?WycRwCGlHk+sfFrvn+DZpilMG0TxnrlHjland6xQHd2MVi3gXQt9eATBitxq?=
 =?us-ascii?Q?2H6Rg1Oa9Xvm8hG12VQIdFGdqrxmDb2jayZ/PWUHYiL/Ontwi+eDKYb1Clfe?=
 =?us-ascii?Q?+KsSoMW8PUWKPiP6aoqfuKvAcsw1d8srP/apM7IDx8sFE5/exCzoNVhxT947?=
 =?us-ascii?Q?0G9uDGcBCxUhRi8rgjG70hfyGWnAilvHf+tDC0rJTRuaLHz7SwxAqbqEBmVz?=
 =?us-ascii?Q?3WUIUcgY7PcN9tLA4GGE6tKEA/vf0pUn5Ww/gCBLHdOeLvv2BjlScWvCfgy8?=
 =?us-ascii?Q?HB1DK7qvWdbzhM04T5hbbUwsWPFFOv8T6XJFKN+/a0k78dQnc7nF5HwyOCyJ?=
 =?us-ascii?Q?Rki6kVoQp24eSKKQ2C1WLhiDjd8bKV4xtRww+fr6g9y5ZQSe3Vi7B/0sw0sZ?=
 =?us-ascii?Q?Hayl2nkrLex/irl3PvG9eRLNi78SxZVkxxyKJr8j5bBf+0FDaPNcDbVr5zkr?=
 =?us-ascii?Q?Zox80ops/IpZOVyfojub2ct/rNTezzjcFbBuz/Ks5HOQ7tVNugbYnv1hLrAQ?=
 =?us-ascii?Q?W6PBXa3x8+iWizAuv8EorT/Iyhmt4t2oXV5b6BkXPjxEurv9W+LaxhwSBd/o?=
 =?us-ascii?Q?uca0JXsZbM7nkIyopJ7UYsiZWbXL6MOEQjeUljJbUJ2Lac73QcesORuvh/S2?=
 =?us-ascii?Q?1HeQU156UdL39SYAdUPx2PbMkKDHOQ1Zt3/Yfma5Gm3fIi52WJ/g12djGKeY?=
 =?us-ascii?Q?pMy7NEXA/M09iCdhKU0bj8cy80hqfyl4d8qw2cKSjSx+uD+5ujtT9eCxK2Y8?=
 =?us-ascii?Q?d3Gj26aP38tEYioANN7YpEgYSFQszv375in9mtA6MJBwQRjTre2rgM7Z7Xy3?=
 =?us-ascii?Q?i4vKyDsddBUMkLO2eLOElDFYSkWZ/GBa+Obr15asE3hIws0DrkyH/rFwnyIs?=
 =?us-ascii?Q?slpCGsHUeKi1eiBNVxFx4xv1GrVqrGMzZJep?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L1xSnLWm+9mZsaT3YqZtCWbB/njXgI/rzU6eXHkeGfSUExHUtb1n2Mx9yqyH?=
 =?us-ascii?Q?hfHhXsH5SE+bEuY/PR8nV0T4paA7zZRZHbSGxPNvGn+57tnaM7QXFLX74/2h?=
 =?us-ascii?Q?2SerqFWm3QQ4SFmHX5IYLdXjUGnpRintWiS1webf8eeq9bUUiN/Eno67HM7V?=
 =?us-ascii?Q?6cX7DPDIz2X37acWWdSCla46oCJchG83tQ/nQO63bWsKpmZIIiX2IZpyFBVM?=
 =?us-ascii?Q?RECI6BSviWWkg2sXfaUyU6P12zCh5StklhuLJJCiYGdqMMR5uYdbiTJWkJzi?=
 =?us-ascii?Q?qksNSndAeaLuUGaDtKl7QZWCce4vhbMse9vnmLL/Hl0yV4zMW88bCL0eIOnh?=
 =?us-ascii?Q?Z7ZmyAoNhrmvsCtg9FWAhRxOJo5FRbAroafJk5NHxzwq9LebZfOe5C3YWKWp?=
 =?us-ascii?Q?iYyZ2tW/+tXvgfrGEBqtqwaNzNueTVULtFQq0bPgKox1gbVOQ7iF8GaesSdm?=
 =?us-ascii?Q?nV9v5FspPq3otJXTHbtF2/8hGZcg4OgrqGhhzStvRjASeJ8UWMm+CbTSgthR?=
 =?us-ascii?Q?M1eiD0X7sBJ6bTUEQHoDBj3NxAoQyDl67aBaViTFoHw2kx8e8HX9kVdTDjPH?=
 =?us-ascii?Q?dmPQMlvNTeOXnUKwWE4UI4sxhW0BsGAjznjXd7OzvpIbL3r7EioSkE9re/Jv?=
 =?us-ascii?Q?6KLEZKa4DqOYvwJA8BX0ni7vBPurdjKMG0pOlRZVT766P5Y4JR77oqoux6uF?=
 =?us-ascii?Q?Ev5FlxGcq0SEbeYi/b/eRJTBZu8VTrrfcbHDRdZhhH603mziqGrLlhqKGerJ?=
 =?us-ascii?Q?lX51WWrLhCpxehu0kEvHWSAzLTNsXk2iptPfo+RAIg0/NuIn/i8dIUkDaQ7n?=
 =?us-ascii?Q?D/Olr3D0OFLT3UQPv5bGj41HJvStfKw6g4XkLFUzOs61TPQZEZsBIXcF/v1B?=
 =?us-ascii?Q?gWBEaTer+0U2tWdiQy/KoYCV4eu1wZ1vgfCREp4n2mXLM35RuYBfGcrjjmKs?=
 =?us-ascii?Q?49+Hso5ili4MVXdzD9uz4yzndLrTOVpAojLvt8TsuW6riq+9PtWuMBZwvEeu?=
 =?us-ascii?Q?xJOe1O6urBueMgyBxyXX80cJ028qa9ll5SraeH++LK9/DwIUBVuBEQjpIprQ?=
 =?us-ascii?Q?oOLThAMLC5aeYs59NM+GOiYhxGqa22q+8w2Z4qm7p4cttzKU5apdU/fIm5HU?=
 =?us-ascii?Q?YY093JY+ChhAIAXrtkvjvqnR8N3kV52HMYC/w3S8hORW5EnQ7QVAaPEdgJwY?=
 =?us-ascii?Q?5SblfCRJWWn4I8T1ohs8d/+PwjYRq2ZhFWj2vDN7gChXPVJFYcCwvjG3t3DZ?=
 =?us-ascii?Q?LoEgLW/Yj47Dikcfojap8wualgCsWZGIoytqwiiJeSX/goJ8xd0HbD42pHEo?=
 =?us-ascii?Q?hj2XgdVhW+qjdtFWjlKRl3/mxui4534Fe/K52KhEv+GPXv8K5VdsIA/e7iYD?=
 =?us-ascii?Q?NbOVr8VJA15qd3Jutu6n3s08tRhuLAJaoFnC7RICQnLqhob6uksFQOlh0Y2k?=
 =?us-ascii?Q?gB8Zfy64eLUyXs98ohmjK33j6IJEshi9mMqsE0ne6Fv6zJtvPCeQRCUouIvX?=
 =?us-ascii?Q?8ayCtqdTuWZzH/pvAKnzC/zOZqpFjFHpY/Wb4r0tDPNdGUhZHyAIcp1sisUV?=
 =?us-ascii?Q?VXWoSoPLpmuAk+LiQtlgWMnJsntt3G2lO5wWmbwP6kvr8oE6LgPXM9Of9rzy?=
 =?us-ascii?Q?LYe6dSlG9tZDVYC3G0A3uUD2VmH1wsYfELC3WQBh0FTZcNFRaSImiGb43rhv?=
 =?us-ascii?Q?DMRgV7RBjgaiTRNzFCEQTrTVFuhRkz2NMJm8BhTqrzF5f1EGkzoNE0X2vioA?=
 =?us-ascii?Q?X6oXKMxhpA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b17530c0-fabe-4b83-eb65-08de4d04bd09
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 09:19:47.9474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pVrzeTMG+qBaothzfcFQmoFxNfOiphxFrP7sSpFeGRZWRXfb3LYNqLp5+k6Abz4HZ3JAxuzVddX/QzvFSQQi/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6974
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


> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Animesh Manna
> Sent: Monday, December 29, 2025 3:29 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: [PATCH v3] drm/i915/display: Panel Replay BW optimization for DP=
2.0
> tunneling
>=20
> Unused bandwidth can be used by external display agents for Panel Replay
> enabled DP panel during idleness with link on. Enable source to replace d=
ummy
> data from the display with data from another agent by programming
> TRANS_DP2_CTL [Panel Replay Tunneling Enable].
>=20
> v2:
> - Enable pr bw optimization along with panel replay enable. [Jani]
>=20
> v3:
> - Write TRANS_DP2_CTL once for both bw optimization and panel replay
> enable. [Jani]
>=20
> Bspec: 68920
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 26 +++++++++++++++++--
>  2 files changed, 25 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9e0d853f4b61..b6fc249a9f09 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2051,6 +2051,7 @@
>  #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans,
> _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
>  #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
>  #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
> +#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
>  #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
>=20
>  #define _TRANS_DP2_VFREQHIGH_A			0x600a4
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 91f4ac86c7ad..4283455d58fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -44,6 +44,7 @@
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> +#include "intel_dp_tunnel.h"
>  #include "intel_dsb.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_hdmi.h"
> @@ -1018,11 +1019,30 @@ static u8 frames_before_su_entry(struct intel_dp
> *intel_dp)
>  	return frames_before_su_entry;
>  }
>=20
> +static bool intel_psr_allow_pr_bw_optimization(struct intel_dp
> +*intel_dp) {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +	u8 val;
> +
> +	if (DISPLAY_VER(display) < 35)
> +		return false;
> +
> +	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> +		return false;
> +
> +	drm_dp_dpcd_readb(&intel_dp->aux, DP_TUNNELING_CAPABILITIES,
> &val);
> +	if (!(val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT))
> +		return false;
> +
> +	return true;
> +}
> +
>  static void dg2_activate_panel_replay(struct intel_dp *intel_dp)  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_psr *psr =3D &intel_dp->psr;
>  	enum transcoder cpu_transcoder =3D intel_dp->psr.transcoder;
> +	u32 dp2_ctl_val =3D TRANS_DP2_PANEL_REPLAY_ENABLE;
>=20
>  	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
>  		u32 val =3D psr->su_region_et_enabled ?
> @@ -1035,12 +1055,14 @@ static void dg2_activate_panel_replay(struct
> intel_dp *intel_dp)
>  			       val);
>  	}
>=20
> +	if (!intel_dp_is_edp(intel_dp) &&
> intel_psr_allow_pr_bw_optimization(intel_dp))
> +		dp2_ctl_val |=3D TRANS_DP2_PR_TUNNELING_ENABLE;
> +
>  	intel_de_rmw(display,
>  		     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
>  		     0,
> ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
>=20
> -	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> -		     TRANS_DP2_PANEL_REPLAY_ENABLE);
> +	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> +dp2_ctl_val);
Mask bit is 0.

Thanks and Regards,
Arun R Muthy
------------------
>  }
>=20
>  static void hsw_activate_psr2(struct intel_dp *intel_dp)
> --
> 2.29.0


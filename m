Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E764DCFE7B4
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 16:09:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6148F10E18F;
	Wed,  7 Jan 2026 15:09:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UKnlbiYH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2362B10E18F
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jan 2026 15:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767798585; x=1799334585;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XJLx+oOzrskxva3g4MZHQ4AuMOLGI0bvGXu5YDhUTbE=;
 b=UKnlbiYHMxu26wyPyQeE1XyIS1sB1oUydSRr4P1fGb99W5MLP4wse4yT
 lVSWN/8bV5+vS4MIHsUylSW4wYNVnGcFQcjXjwVpQ5z5ppsVL1zgwwiDr
 zcxn/BDflvUPGcQOGMmWflApaaWpHPFur0qxSqlWjGO1EIGJ4G8UUxtQm
 WMTSfaN0Ly9WzuNkkMHPnd7PBORSTf+I/SsXEeA5+0jyvH16J7OaZZg2f
 1OmbyRcfoL2sMb5L2ZXglYkVGtA2gaTJhGTmXCKJARDfu/kzYRHqaLDiM
 1VgQk6YGQBp6aWEXxPt+fWhaT3iJBv7gh+wmTTUeUaL2pBf7cpP8x6uKi Q==;
X-CSE-ConnectionGUID: SZOTCErOQBayrZpp8IbaBQ==
X-CSE-MsgGUID: pmat6k+/QQeD3IV20CM4hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="69219216"
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="69219216"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 07:09:45 -0800
X-CSE-ConnectionGUID: v+WjbB6CR728n1dzHG2eWQ==
X-CSE-MsgGUID: LOg4kidbRUe+Uq8oMvTZyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="234092765"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 07:09:44 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 07:09:44 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 7 Jan 2026 07:09:44 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.40) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 07:09:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dZq+QYYrSvmhX7B4zD+61vTSJXu0bmHX6dkhXX0UTOsBJ1kYGjbCcMZxxzTlySYOqkdw5PxnF0RYb/n24ulwtmA75d19qWhKDF7Rw84klS4AGeuWK406Nvhh0HbPj+JWOJEBQzn+OW5tifPomgb+hQyZaOWSFEPIeRcfK9wu5zS9zpsP/g1Tl6QDfhDfYB9fcTK2PcXKpqouQb1TB7RlU28y7NphbC2wWYyCX/ebtn68LK2QxDjdV2n4L42mC2fu40ZRYfMoK+ho+pk0fTDXxBdKA+rebc3bZmEXHtZx8iiXH1GXZ1hoIge6g0jB+1aV/M5QRlkRqgDT6RJtGv/AUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HYEibD37LaDRT8U92kVJK9S5AVnNFwtUyqljjuzBqms=;
 b=I+a958FUf+8ctfHWegBHfTOFhgQ3718zPMHH/0IYfsZHUv5TOkEZ186bWYreJGiFt4UJi5Krey/r7+OBlk44PJruQFRawsU/Wbe9CN3lDOctoOtFncpRymtz7XWajOCJxgbs/QtcjPJ61zchtn2+0y/RzQ2XbTkNxLciOR8hdpAnBQd5JNwa7NBuzsIUt+GI3qMJFebMlyc5FXFCoc7wvFB34FhIFghKGOSu0MilIiFaDPuIIaiMvI/ea7+aXzfsBWLNlCj5SUf2Ifet3TVMV4Qa/Jd6nMGZeJ7cyDxCOFBwja/80JgQkkAwshtOEHat+Yy1fD/p2OXgE6t5BTPR+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ0PR11MB5181.namprd11.prod.outlook.com (2603:10b6:a03:2de::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 15:09:41 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%5]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 15:09:41 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: Prevent u64 underflow in
 intel_fbc_stolen_end
Thread-Topic: [PATCH] drm/i915/display: Prevent u64 underflow in
 intel_fbc_stolen_end
Thread-Index: AQHccSr4WxjTGHQMtUKx82ljz8U6VLVGsjiAgAA4IZA=
Date: Wed, 7 Jan 2026 15:09:41 +0000
Message-ID: <CH0PR11MB544499F13BF3FF457345EEB2E584A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20251219210335.133830-2-jonathan.cavitt@intel.com>
 <38d11ac18820022abbc7bd58f7b50e719aa4bf61@intel.com>
In-Reply-To: <38d11ac18820022abbc7bd58f7b50e719aa4bf61@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ0PR11MB5181:EE_
x-ms-office365-filtering-correlation-id: 8229abf6-30e4-4847-0420-08de4dfec859
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?4/sWFclG0uwUwT+xg6+eZkyYcQfgsiVRo79nCTmHccNq/sz9UovmzDBlT8?=
 =?iso-8859-1?Q?Qz2k1R9enndRV6eBZyDdk31VoO6ClkWVDM1Qkg1VA50HjqHXyBE30RB8gH?=
 =?iso-8859-1?Q?cNfrOOyosxdZEEeD7cdy7maLyJRKXkKMHO/vTF4N7Ie/IG/Y88sy04Joqu?=
 =?iso-8859-1?Q?Rrwj01NS/HETlnbaiZUk5SeslgTV4Zfc/RSP4JYB8Y/gfT1kFuMHhWgajm?=
 =?iso-8859-1?Q?ncOD+ghdv0A709fSrr8nPJtc5szgQ7aVuRhNAMunRO71mdJmobkxWUv6Z0?=
 =?iso-8859-1?Q?6WN7KS3rJ7SwuNKiPmQhYiQdDy+hHzQ/GHJ7p6oZJ/lmQtMSnl9/KtLWAY?=
 =?iso-8859-1?Q?2fdGYhF8LDo8Ci0nJ2MgisnObThoBv/lPVGmQT9jq0k/+PKS6lH8AH34TX?=
 =?iso-8859-1?Q?+XwSX1Pm3A9bMWw3HIlsJgCVldiW25Rj4nXUWQpm+X1HfUv/MGgg/uP4ku?=
 =?iso-8859-1?Q?w8VjllumlBGsI84mK7eA8nIIO4UOptogLKu1N7rMNuYFF+caf8URSFfAHw?=
 =?iso-8859-1?Q?ICgGHG8iPmfN6FW9igu7Q2TSGWtxvKNTmn/gvME6ir2slMQWVMWxADYfrs?=
 =?iso-8859-1?Q?OLYzX+S+9Bpn2d+bY6SgxtRK/wnCsi0o3PHH81LIUmLUb2vhh26vvyyn3+?=
 =?iso-8859-1?Q?AdaomMxb+vpCU59rCRFVa4C/ZbT7ijXV8mtRcV68DOcOqgbvMf6z25A32c?=
 =?iso-8859-1?Q?HBdCFJALRUi2aOBsae+OxpsdDM0pvQ0FNcNsJ6z1Qc6vwwcEvo4PeeLf58?=
 =?iso-8859-1?Q?uLD09IL0JvjfuKk4bmPmu7tGoC829mqNFJQzr3xl1KsKETPiXVl9ymCiH6?=
 =?iso-8859-1?Q?/28psW5KHaoTcRq7F6y1cYQh4zVrcx5cPWiftIw08COGysJT8Auz99v4Wt?=
 =?iso-8859-1?Q?pCET0nlXbjPvEUBzHrZGw53z/4XawM3dzhBj4FOAJBFTlGvCxHLxbV161v?=
 =?iso-8859-1?Q?RqjyeiE6/YvgbeVnGCDG5+3BaXXw8jL+IxUD3rNsUTRwC3slyIbYSuHqZ8?=
 =?iso-8859-1?Q?m9RE/Oa8QhYRma02v8/b6lmdY4MjXM4Ds9SGm76wsRD+lBxdwzwocilcIL?=
 =?iso-8859-1?Q?J8RzaVmvgw9Eb3owR0oCeZ0a/0mK/p2IS3nRDTfj2f6fBHn7tlKSkMh6VE?=
 =?iso-8859-1?Q?epdcDuyaSpXU0DCgyWxYISVYpWJ/1/iS/d8YyeIF6ZCps8VE9DUrL2SHlA?=
 =?iso-8859-1?Q?RQssNZYvAiW7rtJFFvVy00vE9yEVtCcdcgt33e5J74Zvymq6qItRgXPhgO?=
 =?iso-8859-1?Q?aRoGb1d0a/b+ZGtzcWWh3n0KaoN8CJU5T8BRgWSb9dmzrVc00sggxDcMRQ?=
 =?iso-8859-1?Q?p6FVi/PmXknI4QqVz+TlRcBygq6feft7M0TFTO504hg2IxWel0qLascTsD?=
 =?iso-8859-1?Q?D9WyfJ1TQFsk7YHZxv1cqrdd0n+K3I8Wzl5pNvmS8OqhX6vnpOCa8+rPuV?=
 =?iso-8859-1?Q?Q7kYGcoW7UdZtlIdoAeUO1QlhZQRUVghC3/aY/1E9T9Pk/ZsECxQRPsyuS?=
 =?iso-8859-1?Q?h4awfsKTaluCDtPrORAyjLX3NE+L0FAh9ZNDKjzk3z7P8jWLpkecI9ZtbQ?=
 =?iso-8859-1?Q?632NxqOVXYULIiPL9J4xXgKYRHcv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?mtQIYXkCvLKyxgTrR3Erdw/1FoEpzmFAGl67hpPuHjKVI2JKjArpW9CW4G?=
 =?iso-8859-1?Q?+yNrJcHgrMi8y3Ed+J4xNxyCj0ZYoo2JgYMXvRm9atAcQzk7XaI/1EF58m?=
 =?iso-8859-1?Q?HWs2Amg4BsyK/jY5ro9fma0yoD4fEo208P0pbiK21gSp2a5nlBpTS4Ipds?=
 =?iso-8859-1?Q?QJrMT1c9lngelIl4dHU417zpCuebg9FVOwjxzEfu0GlQ1glU9Hv0NHXjvN?=
 =?iso-8859-1?Q?1CdeTDduZVvNYi6/8vHO8QZnJ0waVjnCg0pQ/9uLc+eLtTjJiOpmNv3j0S?=
 =?iso-8859-1?Q?RJ3Zsk9msCAfymWOCLalN4t0hdHme5GZVmGS8i2mqNGfQkTICKeaPllUAa?=
 =?iso-8859-1?Q?zhWFmJo0/ik5V0tZbeCT/hCNgdqvfs5MaW5KegE/UGx7A+0+QRPaGTFRtQ?=
 =?iso-8859-1?Q?nvK8H5jvL1EsG+VAV/XscSNwPDoXaDJtrFvDFBboPtvhFZlar+0Uo6x8eB?=
 =?iso-8859-1?Q?YEoZ1DzMdSAZBLpWl9cVv6pWK47pZd4EkiQiP7760xnt/UK57SBrH5YSg7?=
 =?iso-8859-1?Q?ryWZFuhDfZ92nlDBwK6kyr86gwED2Ebq6n9/RYyrsP6AiyrJWA7kgQvjD+?=
 =?iso-8859-1?Q?iFpSbAJVNIABJFLibkymDBmzdqnowioL+zTg3ATG0uwNa8IwrbEyXSNebm?=
 =?iso-8859-1?Q?zdmzxiWS5NdcKACbX8W7pwIhmuMhwPjkZbitfmgw0gzk2XmiW3ejAXlJKP?=
 =?iso-8859-1?Q?Claad+JwbQ0ZhhLjs4xwG8/WS7OafHHRSnHmW4nm4XItxIsikzz8tGp8ke?=
 =?iso-8859-1?Q?xW5YyqFLyrChiVCI5GHPGZBvRR2niKJ3dNIzzH9rsGuJQjTjP/zFa5TXWU?=
 =?iso-8859-1?Q?WVpo0E4RXN7c1mG/GqSzn84NRMLirRCdo6NU88xVl9vrCf68E067kLMD5W?=
 =?iso-8859-1?Q?J4iPr1szWeE3WMziVNmstJ0xsINDzY7c4R+6amMaIkLn3f1zftQWhg+3sS?=
 =?iso-8859-1?Q?vZxRvDTHbFW+gN9ZspuocgJ+csga9aopIPpnP8HBEU7EY3DTZJn4SgRPpf?=
 =?iso-8859-1?Q?uG8OA48wnhra5NjLDUBLpQEjLYn7cIcZMMRa6VoyY853TNfnBz0wbCOW9f?=
 =?iso-8859-1?Q?sKxfwNvfaqWVXfcklrWOsO2m36cYcIO0xtfm9lIWAkWm/0iVdw8xPHmblz?=
 =?iso-8859-1?Q?nr40N3/w/bCvw9zcHbJ2l4jPikXNqB+p4xxW/bJNUoXd/YCA5NnR901xs5?=
 =?iso-8859-1?Q?/KvQM0OMY6O/UH4nGBW8wLMKClplVJr7jU/MSipHOqriaPyY8fQgWL84z6?=
 =?iso-8859-1?Q?mpbcbsWlANr9lZhbE0u348xRZQgacponbEmUQBlPpLb1y594u7p5BAyefm?=
 =?iso-8859-1?Q?sHl1ZjyypDq6yCy9zd/Bgukuuy7q0L8x+xXpXLoLYkTRwG9r31gYgLb1i4?=
 =?iso-8859-1?Q?0atYBzE2pqh87Pi9XjfI0JS8Vj+vxa/sq3v/+veBb5esdgIhnQPQN+2yoj?=
 =?iso-8859-1?Q?3d3VzXaYsZCha+W+/V8eblhWS5hNrIsNb0d2+v5PBwiViyesWqpEJpzoi8?=
 =?iso-8859-1?Q?WiL4AZ7NJBu1HG/ctCIGOdWOjWXyVMtXRLxLn08Y/ludWf3buEybMT6CHg?=
 =?iso-8859-1?Q?xz2TOAMmB7VnvPMGnIuLBkQ/gf6yVVSBnJWlUI237M7TzKWveMXlH7q3wW?=
 =?iso-8859-1?Q?O905UCCHhbsZdEEZdmQSox/f4Ot04KF8KgQr63VYsoK3Se6Jk3KKnp1O0v?=
 =?iso-8859-1?Q?Nx1bYW/OaJ4rj16oOfI3FGLAlnEksDA4+MyQwHtWYVnKqDv43tvqGyQrdT?=
 =?iso-8859-1?Q?VQj5FSCEJ4BevvM2QwYgsRWtlAkyu3+Od3AFjaPslWBuvXwYsb8MA2wKQc?=
 =?iso-8859-1?Q?71OzrMrZx08KZ7+NstkZ/0E/1kfxX4dEEhVkJikXPJ6ZWDsJ1ugEPiP2jt?=
 =?iso-8859-1?Q?Q8?=
x-ms-exchange-antispam-messagedata-1: x4zswJZ/yggWtA==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8229abf6-30e4-4847-0420-08de4dfec859
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2026 15:09:41.1361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bJKjEg2y+djxqdqoQcoJJa/1DShZSoLzvx2bvIuSP19UbejFPBhazGJKgSwWpxRGJ3Gg/VwEBsOJ6P5G5KNKhEt1ySfR/Zt/N+yD7l5GJys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5181
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
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Wednesday, January 7, 2026 3:39 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedeskt=
op.org
Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Zanoni, Paulo R <paulo.r=
.zanoni@intel.com>; ville.syrjala@linux.intel.com; daniel.vetter@ffwll.ch
Subject: Re: [PATCH] drm/i915/display: Prevent u64 underflow in intel_fbc_s=
tolen_end
>=20
> On Fri, 19 Dec 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> > Static analysis reveals a potential integer underflow in
> > intel_fbc_stolen_end.  This can apparently occur if
> > intel_parent_stolen_area_size returns zero (or, theoretically, any valu=
e
> > less than 2^23), as 2^23 is subtracted from the return value and stored
> > in a u64.  While this doesn't appear to cause any issues due to the use
> > of the min() function to clamp the return values from the
> > intel_fbc_stolen_end function, it would be best practice to avoid
> > undeflowing values like this on principle.  So, rework the function to
> > prevent the underflow from occurring.  Note that the underflow at
> > present would result in the value of intel_fbc_cfb_base_max being
> > returned at the end of intel_fbc_stolen_end, so just return that if the
> > value of intel_parent_stolen_area_size is too small.
> >
> > While we're here, create a macro for the 2^23 value and modify the
> > execution path for readability.
> >
> > Fixes: a9da512b3ed7 ("drm/i915: avoid the last 8mb of stolen on BDW/SKL=
")
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 20 ++++++++++++++------
> >  1 file changed, 14 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
> > index fef2f35ff1e9..00c32df50933 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -807,21 +807,29 @@ static u64 intel_fbc_cfb_base_max(struct intel_di=
splay *display)
> >  		return BIT_ULL(32);
> >  }
> > =20
> > +#define STOLEN_RESERVE_MAX	SZ_8M
> >  static u64 intel_fbc_stolen_end(struct intel_display *display)
> >  {
> > -	u64 end;
> > +	u64 end =3D intel_fbc_cfb_base_max(display);
> > =20
> >  	/* The FBC hardware for BDW/SKL doesn't have access to the stolen
> >  	 * reserved range size, so it always assumes the maximum (8mb) is use=
d.
> >  	 * If we enable FBC using a CFB on that memory range we'll get FIFO
> >  	 * underruns, even if that range is not reserved by the BIOS. */
> >  	if (display->platform.broadwell ||
> > -	    (DISPLAY_VER(display) =3D=3D 9 && !display->platform.broxton))
> > -		end =3D intel_parent_stolen_area_size(display) - 8 * 1024 * 1024;
> > -	else
> > -		end =3D U64_MAX;
> > +	    (DISPLAY_VER(display) =3D=3D 9 && !display->platform.broxton)) {
> > +		u64 stolen_area_size =3D intel_parent_stolen_area_size(display);
> > +
> > +		/* If stolen_area_size is less than STOLEN_RESERVE_MAX,
> > +		 * use intel_fbc_cfb_base_max instead. */
>=20
> Please use the proper multi-line comment style.

Should I also fix the comment about FBC hardware while I'm here?

>=20
> > +		if (stolen_area_size < STOLEN_RESERVE_MAX)
> > +			return end;
>=20
> check_sub_overflow(), perhaps with a drm_WARN_ON(), would be the way to
> go I think. You can get rid of the extra macro too.

So, instead of STOLEN_RESERVE_MAX, just directly reference SZ_8M here?
-Jonathan Cavitt

>=20
> > +
> > +		stolen_area_size -=3D STOLEN_RESERVE_MAX;
>=20
> A blank line is preferred before return.
>=20
> > +		return min(end, stolen_area_size);
> > +	}
> > =20
> > -	return min(end, intel_fbc_cfb_base_max(display));
> > +	return end;
> >  }
> > =20
> >  static int intel_fbc_min_limit(const struct intel_plane_state *plane_s=
tate)
>=20
> --=20
> Jani Nikula, Intel
>=20

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFsFF+OfnWlrQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:56:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F1E187473
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:56:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B6A10E578;
	Tue, 24 Feb 2026 12:56:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HMR6T/2l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C48A10E57A;
 Tue, 24 Feb 2026 12:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771937758; x=1803473758;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8GwJlG32ibNjhBQWl2yiX7CKFPMzyjjsa2IbmndKEpc=;
 b=HMR6T/2lBfVcQK2uxiMS9A4ARc1sLGtInDOA0wppA7H71EIPqkPVK1WX
 4vL59NZn+euGwl7KrD1Bsoh22Y4diyjAbGt0AJc3EErvffLK21QQ1hypj
 EVBrUR2MD0Qba5Ek0MbnMZxrezm99ZVmdHCISVa1re+Z4F/3v4WLKSZ+n
 qU2YDOAorT1yKs4qR1pQNuqqJh+xiPNzHpg7AJ3uAOttZ2zfCixPjw1ok
 YHc5Ly/kUT5UXWC+oiAlMZ05sxfJCQjKwPnwFKzZF1FKCBJPz5qy+iHCb
 is/3u0dtzNLO8snmR2P0XUh1kk1P28TTlso6qoIc5PDG5pxgFq7mI010b g==;
X-CSE-ConnectionGUID: C2EstED7SXC1bbyyafagsg==
X-CSE-MsgGUID: xks+yIc8Raeb0hbMo//THQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="73129655"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="73129655"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:55:58 -0800
X-CSE-ConnectionGUID: gic3goN5T36w9G5mMcznvw==
X-CSE-MsgGUID: E8RBFvBFQiKm5EJXMAz2Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="246469197"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:56:00 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:55:59 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 04:55:59 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:55:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IN2C4B+lYc4sB03FanDOiv0s7JkW551avysH5HIGqfm2b3LaO9y99oNsuRH7iqhjJxpb6Wg2mFRhY+eTCR3QeNu3GDwDeoE2pFa1rE2xUU4AdYRP5Bwt6yJVED4tHfOYMJwfybZJx0stUVBe7FYZAxQ9kOOmj6/Gbu8x0szKruvhxbqA43iuR9kk5dLgsU6HuhXZUIn8/9ZgZk0JtPysfP/4o0Oe96h3u4iW56ThTCM0zOZf4YJRpEb+LyGWxOrIRDYvCbMdEcKS7llAxOXf01kS8/WbGrWi3djHiss1rymZvDQ819BbBXxsolE6bnf3n5JclcW6nHIdM6Q4J+itxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2kHeIfaIeCUhdOL2bEgEaukyGNdM0U6HVBd3A9IiLFc=;
 b=M0xmzWY3xtnCnU09ocm5BvznJ4ePmV6XgXmlZd500A1raC3mMFOt/5f7G3E5V9tGvvtKSBmzX7hc7BKzZIy77cssnkF1rGwf2Kl3qCTwidEu/yXT71Ez07B1PqbFuVZmq74lgtCmQXy50OlkKBhmUfxRNAlXBGDzP5jo0lm/nDPcZAM0dl8WOzy0BhkPPb0+AECs5CGo5/GQarelQ43CU52o+RDg7BAvCxupUZr3FskaIdUxKNKRZnuPG1kfXD/JGNVAHDMxxjLFdvbxXVBreSx78noL9BucjLqUIIFzJV3uSn6cF9a6xq9pYe2o7UFY6CHSpBldEUAZHcFNN4G3Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LV4PR11MB9490.namprd11.prod.outlook.com (2603:10b6:408:2e1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 12:55:57 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 12:55:57 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
 system resume
Thread-Topic: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
 system resume
Thread-Index: AQHcoc20G+AyU4L1ekCQ655TNZ8AlbWQRUbQgAA6gYCAAKgUkIAAWMiAgABVkMA=
Date: Tue, 24 Feb 2026 12:55:57 +0000
Message-ID: <IA0PR11MB73075135C8386B9E0FE48E68BA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-2-imre.deak@intel.com>
 <IA0PR11MB730721016164B7CE2163585ABA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <aZyAma4Dr_e2cTCc@ideak-desk.lan>
 <IA0PR11MB7307994B0594AAE9616F7B68BA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <aZ1YEWnS880TEWXx@ideak-desk.lan>
In-Reply-To: <aZ1YEWnS880TEWXx@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|LV4PR11MB9490:EE_
x-ms-office365-filtering-correlation-id: dd3339f3-36d9-4157-de67-08de73a40dac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kNRgFpx9f4R2aQxbSdpPC8WtKAMnh1koKV6aJ+OL9M7pfMS6NG/U4uREONSW?=
 =?us-ascii?Q?CAH/A9apbLidAUiR57hJaBvLzsSV4AAcycpxe4yD4cb9hbksCIMbS0i9Y4OH?=
 =?us-ascii?Q?+YdygGABRo48Z2BBZSSjXxMdJiCYxnYJ7zhw53kwId0ukxOpfgD+TsPsSfzH?=
 =?us-ascii?Q?Ate6KDZGYi57lZgKkIE19BwBBXMjSk6uI3SNIA/9sY5SHUK1a8exGxiRM9l5?=
 =?us-ascii?Q?Ot70FIcyFkMEEB/jo6BreUy+SdnsTGhuMJPGE01F54Lg/w0Ep0q5X7rUUFph?=
 =?us-ascii?Q?Uqgwy83M/ADWnC+iyCrTRM4qRjIBTMvi72FKv0Yyp/Z1hsnlRnDja1u+lBTj?=
 =?us-ascii?Q?GySNFB4+3tpVqzsLh7kYzKccJJC8b2S36dS/fuF0gNUgCZZ5jGpzga/khWYL?=
 =?us-ascii?Q?apqBameEAsumCnzuJTSgsII9ZSlia7pxY3BZFoO1FqI8Z6N/lwSm4aMBZQqR?=
 =?us-ascii?Q?39gOhq26F/JAyoRn5YUsJVl+NEdlNncYdpuZ7XpEiefKao1LikBPHO/9gPba?=
 =?us-ascii?Q?5z5X0Oqa5Ov6c8Z806VSqvwupcZN20qtOWgSvF2Xa4NhF594vTG8i759vvCV?=
 =?us-ascii?Q?sUwkVhBfqmu+ODMHRL913Br3MJAc5/9e/usrvtS2lvX5uz4BcH4xmuIDvZEw?=
 =?us-ascii?Q?vfQGQI9mfbOvwlRqL+WZQsG7gfdFRdYw0HH4MjPYIAWT3Rcc6dFIUxPU6Oab?=
 =?us-ascii?Q?leiMHYu/sk9pAcmOxndvsGU8ZY0HODguXeYSZwbvzkWclCmFY+KzPzLSFruH?=
 =?us-ascii?Q?VsW0WulYOplBxV8Gw0urF8zWWTOokU2vsp5p0TwVVEqirZqkk+p1Llki4VRN?=
 =?us-ascii?Q?keLecyo4TUTMQAGq8Qgpypn0u1Jlro0OSKmLSCIkt7nDdWaFqarC2JuluFQu?=
 =?us-ascii?Q?Af+u7AFyNN5FhDPWvxShqniuL9pFY3d2tY/8pSWSgESA1zvOd78/HZ4rSSBi?=
 =?us-ascii?Q?PJumqoq9NtPmfByekSC/K/TQA1IUSQbE164IdDkciqRxMt4iBQRXju0RTYUq?=
 =?us-ascii?Q?l+QnVVkYiyzN457diiq6rquuLic9yBy/Nq+meKkYvg3vsOP9Xh3Jl/Y5bGqh?=
 =?us-ascii?Q?8yDGAcI8b+/C4vqWXxxWDDQzaMmh8D7s4vNgjdvUTrMbDiIV9wtVt8KP1Eke?=
 =?us-ascii?Q?TCV9MgbAT9LtLCRd89ucYcqlzspOI/T/L4Q7y++PbUFbmFrGm1YeGj99gqBC?=
 =?us-ascii?Q?FIcPrFaPCPvazvYLw40Aimlw7NHqhsHnLJx2twRtssJ2+BcqLywjl2Tg+jB8?=
 =?us-ascii?Q?GeeFyHLoCR0/QpHHeVaOUU6MpWDcUt+j9SbRocXXqrVAgcIUwV5UQ1LmCnkA?=
 =?us-ascii?Q?q+vEIhsEEv+yW7ljWE7hpkV0BkqRY3Vve1KhBO8dadmvMgfNBl0nk3EleaDK?=
 =?us-ascii?Q?3HYFpajwI7WeHqpPpJXZ8gU+XmjFhhqZmbJwchirfbhj2ingz4VyiNwz1sBt?=
 =?us-ascii?Q?Rt5wRFqSjMU4s7ek4UloeGktp+I3n+PZgQI5oumowLotE1lLtY/bt1TtExtd?=
 =?us-ascii?Q?LyYoA1//r2ZiyajhIkatU+yuOyGDrgOxMdj0k2tbjNYyvukiDi/jz3KUV4IJ?=
 =?us-ascii?Q?qEbpktT8YlDqUiIKbYdKB0tyiBh9ViWwWcYiSgRVRZaZzqvOdrPd88T/LRjQ?=
 =?us-ascii?Q?Kj8uF2VWa3zQ9QB50q4CwFg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GW57uIIj4L4fjX0jZJ00c29JZAfgH/9LbfS7rKPtkTL0SnjriE+coXuO1a9/?=
 =?us-ascii?Q?MYXqOo1MqVt2lkvbhZjBLO6oa5wPf3Kzr/eKuBUisEJdnBWkUcWlEeVr4rzC?=
 =?us-ascii?Q?uNoVT3Le6bTqmA2hvqxn5u4EP+coiUfbHmuyJOzitHxkSmeD0Is47xzWridz?=
 =?us-ascii?Q?MdLGCGHeviIHb4Y/9HPSXDxBZpMQKb4jAyRqKfuebNdrTAOjSCLlZKDVMpWI?=
 =?us-ascii?Q?SuceVMjpDoMqNEhC/G4odVqkYXefsWXekL7T/4+peMQelh3wkki/lBbnsVqn?=
 =?us-ascii?Q?7W3hS6sHHpi4418fTS5elJbzeHe5d39qISUazVs+qzRDr96Y0jANySowQcm5?=
 =?us-ascii?Q?GTCkAHaZw347smJ9fVbj7BnUX5Ms1Q/u85xOtXIHMBc1xVavaQShmO0tUtze?=
 =?us-ascii?Q?L7Dfd3SCS8l261jdbL0ADkkUL6RA/H/qhd2tedVDt8n/xfwmGSQihRB2U5/3?=
 =?us-ascii?Q?2mUKZZXKpPqmdJqwa/+sPp2MDSdt46ihd7D+7KRDNw/Dw2HRpwLOkGcbnqXi?=
 =?us-ascii?Q?NH1avHCB92vtvDoOZAlaHhfGjGl0vW9vR6VnmYPVS6GO6hys7T9C5dcqImsV?=
 =?us-ascii?Q?T5TiPbHC+GQ/4Oe6YtYQrQPRTTpAm2t9jIZEeMXVjz6bny8OP/bPBYnjR58s?=
 =?us-ascii?Q?CbuoVuQJdxc8npZeiDQeh3cpyw6HTi73Htw4XFrNX0qNatnmVsnTEX7h8rWz?=
 =?us-ascii?Q?JjKNI2eEMLj7g/Qx6Lys6IxEnVGaoqGupdIMO1LKox4yPLC88gFZkU+jxCs5?=
 =?us-ascii?Q?Jbx7LP+afMlt1rrT0s1nhr8lcqcanNanFyqxLCp6MUqzgJZd/RkpsHirXVJq?=
 =?us-ascii?Q?XYg9VnXUBznFA257LIE8x5lx+tKp6aBs0/h0ke5Wg59fzdyUXkZT+X3jyy/G?=
 =?us-ascii?Q?krw94yIyTILw2i4MFh1EY8ojkcceLMRDU9YhG0VDy9m0vNLEFunl/pOHDSOk?=
 =?us-ascii?Q?lCc/yt1GEVxpjuTG4PWbq2N8VVsB+gBTtLYekkYGSmITtD4qFdo8zL3ebT89?=
 =?us-ascii?Q?5fXvJ3Z1uvZRd/B3EnnH0Vwnmn78COqpsUB/85Oe+DAUalw7A0JSCQCgWS5W?=
 =?us-ascii?Q?UfsHTyRLU2DY+TIRxtuPlVq0x+gxPQdbREI2G1X2vOtjH4reQTiPpuAMgPhM?=
 =?us-ascii?Q?HB0X7eRlb4MFOhe6XA1ATIVqrLY7+z2ufnusvSp/pY8s+VNX+ci73JXoakRj?=
 =?us-ascii?Q?x0n1vkvHJRCdZxzVaNUlEY4tEpjGclmhetEUlI0Zhfw+k+goh928R5ayxnTB?=
 =?us-ascii?Q?lyWxvK1VNrrOaMnER6HJCOEkHn8/RssIqV0Or2Iy5Eu+BKqKj9boF1XH5VKv?=
 =?us-ascii?Q?ECtVs2JmheJOhF7/zHJo5PXTO3JyprFm+vO4G3wL3tz4H8nkJJyzV4+zTVwH?=
 =?us-ascii?Q?PYbVr+f6xllYaPTg/JrVLqhWsHSePfftX4oALOWGmlpvJI/Dn/2LssJC7ZF2?=
 =?us-ascii?Q?4zuEiub50AOHv/CfmhDjQapbCrzk/Va20p5hy37MzFLCRN6K1yYOnAUOn665?=
 =?us-ascii?Q?8rICITy/IOUhrtA3qTAbeWl8NIfNPkhkwAQ5f9nInnVRx6w+LSM/eCJPu58X?=
 =?us-ascii?Q?RvP+TneMlIMrePuK6LFsL3H0CVe2VLePs2KhlFbD7By9imDROMepGlCtmMM+?=
 =?us-ascii?Q?4yBf4Gunlzkld5HLZG4l+buzcUE10p0I4FKy1mNpvt3oSX2IidVaP5OkJcaX?=
 =?us-ascii?Q?Op0zxRa9P+KIOn9CaxPZaqg1dR8vCoUqeH7KajzU7XzHeJ/wynAUYiSNcV2T?=
 =?us-ascii?Q?KcsZZTo6Jx+SS5HXuiX6J/9XL17pwtanGcgvvmzMXL+WoYL093zrT85WvBAr?=
x-ms-exchange-antispam-messagedata-1: UKwmUrCPhVr+1g==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd3339f3-36d9-4157-de67-08de73a40dac
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 12:55:57.4418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ef9gc6v9DZhq8JqzSuzrxdx6TwLEHihDkGlBZAqR8ZpKtwvBvwiLKysePYl4Rji/TwzFsPTqPtzfqRt6l19S/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9490
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA0PR11MB7307.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B6F1E187473
X-Rspamd-Action: no action

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, February 24, 2026 1:20 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state du=
ring
> system resume
>=20
> On Tue, Feb 24, 2026 at 04:33:58AM +0200, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Monday, February 23, 2026 10:00 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Subject: Re: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel
> > > state during system resume
> > >
> > > On Mon, Feb 23, 2026 at 05:54:38PM +0200, Murthy, Arun R wrote:
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Imre Deak
> > > > > Sent: Thursday, February 19, 2026 11:58 PM
> > > > > To: intel-gfx@lists.freedesktop.org;
> > > > > intel-xe@lists.freedesktop.org
> > > > > Subject: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel
> > > > > state during system resume
> > > > >
> > > > > During system resume, restoring the pre-suspend display state mus=
t not
> fail.
> > > > > This requires preserving the sink capabilities from before
> > > > > suspend, including the available link bandwidth.
> > > > >
> > > > I don't see the sink capabilities being stored in this patch.
> > >
> > > The sink capabilities are stored in intel_dp and intel_connector,
> > > including the maximum link rate and lane count, which determine the
> > > link bandwidth. This patch preserves those capabilities across
> > > suspend/resume by preventing the tunnel state from being updated duri=
ng
> resume.
> > >
> > I understand, but what I meant was this patch doesn't handle anything
> > on the suspend part but only controls the updates on resume.  So
> > explaining what happens on resume is un-necessary.
>=20
> What happens during resume - restoring the state of display outputs to th=
e pre-
> suspend state - is what requires the change in this patch.
>=20
> The commit message must describe the reason for the change, so this commi=
t
> must describe what happens during resume.
>=20
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > >
> > > > > If these capabilities are not preserved, the restore modeset may
> > > > > fail, either due to a missing sink capability or insufficient
> > > > > link bandwidth for
> > > the restored mode.
> > > > Don't see this in the patch.
> > > >
> > > > >
> > > > > When the sink is connected through a DP tunnel, prevent such
> > > > > capability changes by skipping tunnel state updates during resume=
.
> > > > > This also avoids updating the sink state via the tunnel while it
> > > > > is being
> > > resumed.
> > > > >
> > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 11 ++++++-----
> > > > >  1 file changed, 6 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > > index faa2b7a46699d..eb1eed1c8c7bb 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > > @@ -150,11 +150,9 @@ static int
> > > > > allocate_initial_tunnel_bw_for_pipes(struct
> > > > > intel_dp *intel_dp, u8 pi
> > > > >  			    drm_dp_tunnel_name(intel_dp->tunnel),
> > > > >  			    encoder->base.base.id, encoder->base.name,
> > > > >  			    ERR_PTR(err));
> > > > > -
> > > > > -		return err;
> > > > >  	}
> > > > >
> > > > > -	return update_tunnel_state(intel_dp);
> > > > > +	return err;
> > > > >  }
> > > > >
> > > > >  static int allocate_initial_tunnel_bw(struct intel_dp
> > > > > *intel_dp, @@
> > > > > -200,10
> > > > > +198,13 @@ static int detect_new_tunnel(struct intel_dp
> > > > > +*intel_dp, struct
> > > > > drm_modeset_acqui
> > > > >  	}
> > > > >
> > > > >  	ret =3D allocate_initial_tunnel_bw(intel_dp, ctx);
> > > > > -	if (ret < 0)
> > > > > +	if (ret < 0) {
> > > > >  		intel_dp_tunnel_destroy(intel_dp);
> > > > >
> > > > > -	return ret;
> > > > > +		return ret;
> > > > > +	}
> > > > > +
> > > > > +	return update_tunnel_state(intel_dp);
> > > > >  }
> > > > >
> > > > >  /**
> > > > > --
> > > > > 2.49.1
> > > >
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > --------------------

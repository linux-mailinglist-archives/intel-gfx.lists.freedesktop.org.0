Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F9B931A7A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42C7110E4CF;
	Mon, 15 Jul 2024 18:47:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NIsoeN7/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F56810E4CF;
 Mon, 15 Jul 2024 18:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721069262; x=1752605262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oaDU4QdJMAUHBpCMLSHp6s6xe2A7Xs9DzyZ1A2sBCiA=;
 b=NIsoeN7/zEIgmhdn899P9PPpqTz8nD5goBZazZ+wNA3hqS4tFUxC91+v
 QTNKgi5bsNv/sUux2KAr7Do66Kj6u6CFH+RNoT3gcI8nnw4g7HG1n+7cD
 /4D0QesvzHuAVfR9A2tq7RhdYzFzeYrsC75TwvE+yp1oLri4xrYW+7i0S
 15Lm4aZkng+yV2hANZBfcjDTr4/AM8oyMvzaakJb9lPnJKf/M2Gcaq0DF
 KW0CsZKMF+mZoQ/y2mN+953lBFz/y7fktqvKL9om/bYMAf7s+62fmMEJy
 2bFWNaApsfzKj17SxtJGCOxJXRc0McYfD2tbaq0clsF0gzF8wVM2JMGkL A==;
X-CSE-ConnectionGUID: rOTqMVkmSPi6viTlz35cQA==
X-CSE-MsgGUID: KAI6L7mkQeG/Rxculyj5tQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="29881452"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="29881452"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:47:42 -0700
X-CSE-ConnectionGUID: q9CzBq1dTwulw3nmLkaEKA==
X-CSE-MsgGUID: PjDTbMsIRrev3iGV49lcYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54889126"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 11:47:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 11:47:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 11:47:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 11:47:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Aj1Scccjhi5lah45mFgNSK2jIpszbTC4F3YTolqhy9Q7m9YNvGXRBWXLalgPkvBw0SFTwXc5pnkYAD2N7qlZsO8EU/JdVRkPW7AEpwUuMskZ6gVKZ/RnYRigjvc85HPZ4rMwzkMzXSj2cF42l62f1WBc69ShpF7K2En8qNL8ouSUro+cMKzaK0uaV7sXxB0fEVbzGw7eCwdf3apG+LwHa46k/lc4aDKu9J5YTe2RvCM2fv56J3++FO8Eep0lhTjd+FFU+cFzJiW861zWwmGt8b2vPeLVy7BDctNDp4lJPcA7c9F205n7TdE9vqQDORqIhhQpZs/inI+8jY0MpNXL2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IZnA4AopAmYsgp8eHjcMU5D+5mk3FSyw5ZvmUR5K634=;
 b=ezxyHBwOW2xvJGKBj0teTqB1DgaUaolUkHYtdcVhwm57ej/kQ2bwrqN7KZkVuJltWvivPbg+BWgmKIOnTHRb5B5Vmq5v5Nd/cGsJF18xriYbgQ7Zz6bUamWjTxb7hRKmNZDPSe2nyDZwvGcbLsO1AExuQb39W8iZ9m3ec3FSEK3h8vwgEI0DQxNFwdCZhXCz6VXvtk5zXtiI8XDyJ9fCW++mX7ZlWOB3tx+nlRRUtwrhUeBmHkbg9x/qzexFYbWR/x+u6PmJOfxJ+HCat7aiQ1cIKQaeiBWKc1P7Z42n9sY8zLjclKafro8Ci4eHiqftJvBkdgVUYZMyi482Rqgr1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5269.namprd11.prod.outlook.com (2603:10b6:208:310::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Mon, 15 Jul
 2024 18:47:34 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Mon, 15 Jul 2024
 18:47:34 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Ceraolo
 Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [v2] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Topic: [v2] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Index: AQHa1i8/5KOXuddRpkC4jBQ29MFsIbH3x8SAgABZyNA=
Date: Mon, 15 Jul 2024 18:47:33 +0000
Message-ID: <DM4PR11MB63609B88886BEAA9BE9536E3F4A12@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240714205659.3672665-1-uma.shankar@intel.com>
 <2zztgponfm2wakfvjxaq6vdrhu2eqhgl5e64myn5ilildfvboq@rbwzlluioogi>
In-Reply-To: <2zztgponfm2wakfvjxaq6vdrhu2eqhgl5e64myn5ilildfvboq@rbwzlluioogi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5269:EE_
x-ms-office365-filtering-correlation-id: 0ea63279-ee3c-4520-a423-08dca4fe96e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?gDw2fyhBAqStRYt61ONzNsb73VmVoUIDrlVKlLS36aiK2+H48hMUGk9JXUL4?=
 =?us-ascii?Q?EEX0iEb+lz6R569NRgojEmkUhJxnrY7jhwuQxZn/0BwnNqz9RunfOlLTfDt6?=
 =?us-ascii?Q?KrnNt8GTwETSuMSjlZUddemedo8Mhl0rW2rCDswf5xGxYO9dO9I3WoIGCcHZ?=
 =?us-ascii?Q?4Y/Xe0Sl1IhB4/iMniNvVmGoCwmb5nh3YIalr8V+V/ZS0f/bRph/P0TfoXiA?=
 =?us-ascii?Q?3yniYTk9Gpe7rJJqP1vQtlfjK/TYl7e4qFnCTMbzWsxeioLr1pn8yeCpjysv?=
 =?us-ascii?Q?GOGfHYj42vKBVe3fxRO4kiEAIdDaI8j17GQbOK9rlO94/82tvo6Us8Ie7F1O?=
 =?us-ascii?Q?Oq/sJ8WM4TJsqpOPz9QOS1ZRbFCRBn51CSmswEk3zJ+Z21OznrGlH8h+tk53?=
 =?us-ascii?Q?2vbHGDdj21lVUVjANItFc3qmuIGPGgbPrPkq4EhpqbiX/uw9s4Bx4yRqgEFw?=
 =?us-ascii?Q?oWm00Bp8UkTn7kHBakx77e2IjoY2lyVuDOCSuDIWKyYGgg3xattO2wZ8KcKu?=
 =?us-ascii?Q?TaDVU5gFHm2HzZtifUOk87kiA2P1oWc+T5R3knKIzs+JWONvD8syp/q5XHYN?=
 =?us-ascii?Q?vyQG6qGetaLbXOdmlkhdk9syn3P2TlUctvQyZhHdeKiHkPIGWg7FikabK8H6?=
 =?us-ascii?Q?BPbfST9RxvfIYE7EHe5SJXbPa+e6ZHnylw00YZAdaNmWBD8MGro4n4OCb2s5?=
 =?us-ascii?Q?QD32XUtc25os4392IDBJKsYyhhQDeJfEF2oCsIPO2BcT9MVUukNeCw77jKaA?=
 =?us-ascii?Q?AD7Yn/xooO3XK+Jltyn4xserSUrHD71Trow5WnXHEdnF4LWoEGUDEMIDvXeV?=
 =?us-ascii?Q?8R3b8viiAjrU+3xeo+EuHvYiKIaSc0c6cUfy0ZVOsbLeBgIz1WKM3MHeo1y1?=
 =?us-ascii?Q?IIjZF0ue6ixh65MXfnL9eyvTyvGWJ+UbHLmKvz8Q6bAwnf2O/+8YBagAkfTM?=
 =?us-ascii?Q?FkdlH9c7e0bBCR/upzGxhaqBHVVDAY2XJx9ywpxuVi+q7YwXe07Kutd5EX+b?=
 =?us-ascii?Q?3Hsm5fE/r4/kMj+0f1fQ9raVBiA38LocXevnAe9MGKtapacXiJ9Z0Nhj1Gqx?=
 =?us-ascii?Q?/3tysYq/eL7+ehO1QsR7+HfP34tNQIz3VhabmiBSuLPpldzo1JPGF55RdXYX?=
 =?us-ascii?Q?ek2blLXbHUxNVL1Qutqg0RQ+wnTCa6BilMu0ctQapB6fcmxMAti9Sr0dagtM?=
 =?us-ascii?Q?fSbLMUts3BxZKCJ3UwOGC0/TrYG/d4S/3dwNoZWrxpSAy2akePh9y6BLjKph?=
 =?us-ascii?Q?1KzQnscuzwxOttbzz0b3iWrg19pu9ARd49+BOZrs1Jx5jRh0PVJTfdP97G2Z?=
 =?us-ascii?Q?duYzy4wjWLrmBu5cs13C2aeg5Y62iraOOnjePPQgD0MSkPtKElDibUyfvk3H?=
 =?us-ascii?Q?L89oTlCjH82ggUzZCIuf70nmNEr9NEAxFIQGJU+jOI5kBhHoig=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kfd7d9GGglwChLQ01+lQzGfApVoErwPypPFXXRJivrCZM+aEuS8XL8Aw9mL9?=
 =?us-ascii?Q?ylKI8rehPKx7Vq2NzuRX8u5xcPnFH+Dx0ENP1vmOhoo0Tgae1HiYzK4//Cxh?=
 =?us-ascii?Q?JcX3LZMQCJWyhPulYhI3UryDiUG9uY/K/7dw4vHDGWppZXikI0Onvc+EAwPF?=
 =?us-ascii?Q?wWu8JMk/tulxk2dyf+mG+Nu9C/p9rEpPmJUWA/sHROZe/7LaWdHbqjaStZzf?=
 =?us-ascii?Q?4LY2ynOZRDbEGs7QkHEzHxUBclVT7MMKIw6oOD/FXcp/sgPRT9d4zbRMABzR?=
 =?us-ascii?Q?PXuW2m1Dow8Qny6zLhWQyLED90RsTtbSxfTKchnluW6wlrH6yTGu7AwlgKaj?=
 =?us-ascii?Q?d8z8EvY3RRAk5ZqkTx4kdDWBUYhuhHD8UPlcc3uiftjil613E8MJGlJQxF+B?=
 =?us-ascii?Q?TnP/m2cyZ09ZgOENSpz8tIfPPkAM0XbeY0pZ7f5A3GVxmuC+Zzfh/tGAPNwY?=
 =?us-ascii?Q?KHk1XYuqDU/7mBEMY5BEOmsnanIfaNq2uewOuRXHb3H7vC2uVA23ktDlKStz?=
 =?us-ascii?Q?98V5aNvpj0Z8gxowu8laxL1rAYHJlzOypObDCz9siM1iOnqRxWiPZvQkp0YL?=
 =?us-ascii?Q?01VyQpc/ncPP4hQFrd+nkvGPuIEIksz6+XKDCxUSv0h1Qlyfa2feDEmrC1Mf?=
 =?us-ascii?Q?OiRY9M91ypzsMKl7jnQkO5gXzYidtfDMgkSwrIjZfKZNqc3bSo4HHk/M8LP7?=
 =?us-ascii?Q?TBd3/1C4ava04TVUm30TZZB1r7X1O6tfsbXBG0/6o31/uJCYs7O882bYB6oV?=
 =?us-ascii?Q?WgrDdaCeAXmPX+ZnBh7QSOcnkPD8ONvOgnxEpqbjr79xfAMpwVwBt4gP/8I9?=
 =?us-ascii?Q?CZPBXgAfRltP6czHsC2ZN6F+lVxqQoplkM7/2CavTh+f06FqsPcntBx0Xu3v?=
 =?us-ascii?Q?0pt0NAqXlGtrcT9/R/HHt2l9s4ywiE7hmyNS6l9cYT3Yz2zBVAYntxow9eVb?=
 =?us-ascii?Q?gNAlbHw4KkcaIuxSZ39yfUyE9Q0duaGDtWuYdJpgpyrl3ETLPOiTQRuYeshm?=
 =?us-ascii?Q?IiUthzwdwaKq7h3ACfBf7FLFcHyD4H4zaMSUmQ6OSRzYNs3tS2umP550R9oC?=
 =?us-ascii?Q?GwCnYgkQHykI/hK6LQEDgLOcZ5spN+lsDQSljcMeVxPmXjs6j7ov/+YidS70?=
 =?us-ascii?Q?rWuk1HcFbxr+iGdKu4+LHWEK82x6qadNM5OzRxWVVuNoDUYIcQRQzUIqGRnM?=
 =?us-ascii?Q?na9CzOcJO01ncFtmLGfPRiPIp1tMdkJ1t/SgqHhUlxhcrO0hoe9QpxzeDqKT?=
 =?us-ascii?Q?1vyeBJkjl2e+pdqD5K6BQFfqWPU/n8WcIq52oNtjElN1k3Z8fGz4jxRfW6nH?=
 =?us-ascii?Q?JORjZNI4R0sNFRWLVwMaC3ZjczuOxyDLAaoqM021wwOEwjeYNbrvVrC+MBBa?=
 =?us-ascii?Q?cCal8Sz3oQILMubWqj6nt1iVH7sJB1jbVWTlTrpgrwHvZvM9mB0sSMutMi7e?=
 =?us-ascii?Q?LAjtt+dMspBwHei+LfKeg26+7ei1BAFY36DMZFa4VeCKbTabZzSDlZ8yIJZr?=
 =?us-ascii?Q?6pYtVFsf+I5ksHNWB1uaBpGFwLcdBwFZ1dXYs+wc+AatiURwTtStCMYHtp6T?=
 =?us-ascii?Q?P1Wce3uA9EwSBNNDO+EQbOuhZ20DUicywkVXiRbK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ea63279-ee3c-4520-a423-08dca4fe96e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2024 18:47:33.9699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iPeJCJQSQkigYKQpjXzK7FIe2MRBT67XYG2MMeMxuzgUSdKe0xtN67Nq7jNW1CQQ7Dj2h8Fa5b3/T0bKP+HfCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5269
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
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Monday, July 15, 2024 6:53 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> ville.syrjala@linux.intel.com; Ceraolo Spurio, Daniele
> <daniele.ceraolospurio@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [v2] drm/xe/fbdev: Limit the usage of stolen for LNL+
>=20
> On Mon, Jul 15, 2024 at 02:26:59AM GMT, Uma Shankar wrote:
> >As per recommendation in the workarounds:
> >WA_22019338487
> >
> >There is an issue with accessing Stolen memory pages due a hardware
> >limitation. Limit the usage of stolen memory for fbdev for LNL+. Don't
> >use BIOS FB from stolen on LNL+ and assign the same from system memory.
> >
> >v2: Corrected the WA Number, limited WA to LNL and
> >    Adopted XE_WA framework as suggested by Lucas and Matt.
> >
> >Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> >---
> > drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 20 ++++++++++++++++++-
> > drivers/gpu/drm/xe/display/xe_plane_initial.c | 12 +++++++++++
> > drivers/gpu/drm/xe/xe_wa_oob.rules            |  1 +
> > 3 files changed, 32 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >index 816ad13821a8..9c70c9158108 100644
> >--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >@@ -10,6 +10,8 @@
> > #include "xe_bo.h"
> > #include "xe_gt.h"
> > #include "xe_ttm_stolen_mgr.h"
> >+#include "xe_wa.h"
>=20
> missing newline
>=20
> >+#include <generated/xe_wa_oob.h>
> >
> > struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *he=
lper,
> > 					       struct drm_fb_helper_surface_size
> *sizes) @@ -20,6 +22,9
> >@@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper
> *helper,
> > 	struct drm_mode_fb_cmd2 mode_cmd =3D {};
> > 	struct drm_i915_gem_object *obj;
> > 	int size;
> >+	bool wa_22019338487 =3D false;
> >+	struct xe_gt *gt;
> >+	u8 id;
> >
> > 	/* we don't do packed 24bpp */
> > 	if (sizes->surface_bpp =3D=3D 24)
> >@@ -37,7 +42,19 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct
> drm_fb_helper *helper,
> > 	size =3D PAGE_ALIGN(size);
> > 	obj =3D ERR_PTR(-ENODEV);
> >
> >-	if (!IS_DGFX(xe)) {
> >+	/*
> >+	 * WA_22019338487:
> >+	 * There is an issue with accessing Stolen memory pages
> >+	 * due a hardware limitation. Limit the usage of stolen
> >+	 * memory for fbdev for LNL+. Don't use BIOS FB from
> >+	 * stolen on LNL+ and assign the same from system memory
> >+	 */
> >+	for_each_gt(gt, xe, id) {
>=20
> why do you loop here, but in the other path you use main_gt of tile0?
>=20
> I think at this point it's pretty safe to just do:
>=20
> 	if (XE_WA(xe_root_mmio_gt(xe), 22019338487))

Yeah this sound a better choice here. Will drop the for loop and use this.
Thanks for pointing out.

> Also, no need for the comment above, the commit message and WA
> documentation is sufficient.

Sure, will do.
=20
> >+		if (XE_WA(gt, 22019338487))
> >+			wa_22019338487 =3D true;
> >+	}
> >+
> >+	if (!IS_DGFX(xe) && !wa_22019338487) {
> > 		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> > 					   NULL, size,
> > 					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT | @@ -48,6 +65,7 @@
> >struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *hel=
per,
> > 		else
> > 			drm_info(&xe->drm, "Allocated fbdev into stolen failed:
> %li\n", PTR_ERR(obj));
> > 	}
> >+
> > 	if (IS_ERR(obj)) {
> > 		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> NULL, size,
> > 					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT | diff --git
> >a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >index 5eccd6abb3ef..7e93ddad6df8 100644
> >--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >@@ -18,6 +18,8 @@
> > #include "intel_frontbuffer.h"
> > #include "intel_plane_initial.h"
> > #include "xe_bo.h"
> >+#include "xe_wa.h"
> >+#include <generated/xe_wa_oob.h>
> >
> > static bool
> > intel_reuse_initial_plane_obj(struct intel_crtc *this, @@ -104,6
> >+106,16 @@ initial_plane_bo(struct xe_device *xe,
> > 		phys_base =3D base;
> > 		flags |=3D XE_BO_FLAG_STOLEN;
> >
> >+		/*
> >+		 * WA_22019338487:
> >+		 * There is an issue with accessing Stolen memory pages
> >+		 * due a hardware limitation. Limit the usage of stolen
> >+		 * memory for fbdev for LNL+. Don't use BIOS FB from
> >+		 * stolen on LNL+ and assign the same from system memory
> >+		 */
> >+		if (XE_WA(tile0->primary_gt, 22019338487))
>=20
> just use the same xe_root_mmio_gt() as suggested above.
>
> >+			return NULL;
> >+
> > 		/*
> > 		 * If the FB is too big, just don't use it since fbdev is not very
> > 		 * important and we should probably use that space with FBC or
> other
> >diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules
> >b/drivers/gpu/drm/xe/xe_wa_oob.rules
> >index 08f7336881e3..9b08fedbf85c 100644
> >--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> >+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> >@@ -29,4 +29,5 @@
> > 13011645652	GRAPHICS_VERSION(2004)
> > 22019338487	MEDIA_VERSION(2000)
> > 		GRAPHICS_VERSION(2001)
> >+		GRAPHICS_VERSION(2004)
>=20
> This will end up matching the graphics GT in LNL for other paths it was n=
ot
> previously taking. Looking at the code, main change will be:
>=20
> drivers/gpu/drm/xe/xe_guc_pc.c:pc_max_freq_cap()
> drivers/gpu/drm/xe/xe_gt.c:xe_gt_sanitize_freq()
>=20
> about the freq handling for the GT. And the change will be wrong
>=20
> I think we could just make this a new entry with:
>=20
> 	22019338487_display GRAPHICS_VERSION(2024) or
> 	22019338487_display PLATFORM(LUNARLAKE)
>=20
> I like the second more as then it doesn't matter what gt you use in the c=
ode. Matt
> Roper, thoughts?

Thanks Lucas, for pointing this out. Yes indeed it can cause that. I will a=
dopt your 2nd option
and send a new version.

Thanks for all the valuable feedback and suggestions.

Regards,
Uma Shankar
=20
> Lucas De Marchi
>=20
> > 16023588340	GRAPHICS_VERSION(2001)
> >--
> >2.42.0
> >

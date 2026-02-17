Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFeoKIH/k2mD+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:41:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E1B148D91
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:41:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9B210E43C;
	Tue, 17 Feb 2026 05:41:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0c1O+cu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 843A610E43C;
 Tue, 17 Feb 2026 05:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771306878; x=1802842878;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0MGb5rR8xlcZzQmAMYhpQExzJAaRyXJ+LIEvZxiFLAg=;
 b=K0c1O+cuaYLLrGZ3H7AHdHrWomkp+Ft+jx4aUtxj4REZ0F3WMw/BeQOm
 2TYxzZNIphZLvC4+RTtEtuiPMFGCzMTCM7iCGhn5jXv377Qutgd9BsKLc
 NPZULROpH4pZ3TtX0VJFt2NU7Ui4dGQCfUXkwyPADS5ujWWunGWh8k6B4
 MAixTWZls2XB5FHQ6S2Ul68qNLpBIdOzE1Uyw8CJAccPoYvnNDFREXqL+
 TCW2GgsCBOOqVMktejBjfFLMwo3vHJpDLGvFre7sAl4pHTxSUoe5ovozq
 uuoUqI7qBUstsQRDFxbzjFQeoEvnlRDSEeLdr6LLutCCcL8NWBT+Kf5MI Q==;
X-CSE-ConnectionGUID: zBsp1gSuTeiFoX2dREgArQ==
X-CSE-MsgGUID: PljjoTceTc+1/RVHvea11g==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="89958814"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="89958814"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:41:18 -0800
X-CSE-ConnectionGUID: FVMPNYpYQZOjvWSImWAAow==
X-CSE-MsgGUID: tdTXdz6cSjup/zPaDRh4Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="213615996"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:41:18 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:41:17 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 21:41:17 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.4) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:41:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T5kjFyoOhl73T+sGoAVaDIJM0YCkGHZIcAempMxPHbfduetiXGRt+L7Rqrss8FbHKinwvWEtNhCxSxqc21SfMBNe57+PjDLFXALiUF01oMIvSMUxf/0IVoITqjwU9lq2q7yy89CX+lsS5eoIUB0wNRV2sN42NTE67K/GdBzAB3D16yrLhl73KayF8L0AWaysQ8G65n+xQr0I2Y2XBjenfv6KoSM348drbJAPkGNSiHwpYm9RO9lKaI2j77ZIJK99Bl5Q1KAgQD/BSzw+3/QIhs+ZnvVcmTQKzaCCtGJIM7zHqIlgVFbHgXJ0yx3SeIXKHaNMGlIIcrH019Ia7QozKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BBGi7GXrtafiBAoP236Myww7VhpXG7QZ0JA0NBvlT+I=;
 b=fPwzI7j1141bePvh3M00DhLwLzjm7elxzVzDWS0qToxuhgpSbmCDgrsj5kXCqGwgyjjAzIJDGgkhYtV+roeBqBvWz31gBRGuZRruBOYiN38zoxsD8MS6uPcAHMd06jjl7eeVIBFmRgRPpkXpEuXjznvDDYrF3fqnubTSlmuo1mqjm6lca/YS2yKVVEJuYf0KTEFyzdmwu+Twcnu/r45fF7UyqnpFA5clZnnGUhTVbuDcXvnyQdWGkY4s14wBqFQmIw/kzUaD6XqhDJQxZmpGiWfK2rOdgY5JDXFagh5wWZyfgTapC/5KM5UEZ9qBfqayKN+3OeaosFMAUb/E110YOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MN2PR11MB4647.namprd11.prod.outlook.com
 (2603:10b6:208:262::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 05:41:15 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Tue, 17 Feb 2026
 05:41:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 03/16] drm/i915/display: convert W/As in
 intel_display_power.c to new framework
Thread-Topic: [PATCH v3 03/16] drm/i915/display: convert W/As in
 intel_display_power.c to new framework
Thread-Index: AQHcnNMc0ILxgNffdkaMvIGbVpC3NbWGZkiQ
Date: Tue, 17 Feb 2026 05:41:15 +0000
Message-ID: <DM3PPF208195D8DAE10D748110FFBAEB53CE36DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213102500.406925-1-luciano.coelho@intel.com>
 <20260213102500.406925-4-luciano.coelho@intel.com>
In-Reply-To: <20260213102500.406925-4-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MN2PR11MB4647:EE_
x-ms-office365-filtering-correlation-id: f622d233-8af4-47ea-8160-08de6de72a82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?i/y/Bnqf383EFuIZWx7e8nX0WnDy5wzxIxdE0srnKMhK3gWt6skSm6TSH98+?=
 =?us-ascii?Q?GUf2kJxEsDPXLuQ6nA0n51WUehI+eu+3qabDno7jnBFxEabXiwsjvNhJvlaQ?=
 =?us-ascii?Q?haJASNdcNWVzapbMITOOoHP7iqlegJ5LLubbvLikRIkI355SrwEOcCkeTwG1?=
 =?us-ascii?Q?66y3UBf2bv/mbOCzlYKvpTA10cwfeAMsklIlCbOOmyfXfL4QUEwqjCDCtrOh?=
 =?us-ascii?Q?3FWX6Vo5TATptDTY0BFs5DYeWnL8mpZghqfEkpytXKbPt0I/LcPCwBnR5wrR?=
 =?us-ascii?Q?mTqUJmu+PdwpSBlj2yRgv+/y4kIBsLLzCd2x2Suz2xiUvO6SPpSAEAr+gCBu?=
 =?us-ascii?Q?klYA1HTdLZL8m+lwx+mH0OHdwvW47cGIDn1H/7KfkyvY41cYwsRjdc8Onui8?=
 =?us-ascii?Q?6ekXwsOwAsueSYOoYDQIeUK+72sPV6T1PbR+2zPU4p1QGCiQHvSOlK7QM/LP?=
 =?us-ascii?Q?+xMon8JMahP81+1GCXS3yYxL2RuZu6u1xTIJvt9XZn+w5ldh4bge0IIOCTDI?=
 =?us-ascii?Q?i8UtlLXjJB2qrJqHkgWYcjcNuz95DvqA7wRBXsi+to7lf8opVyzw9ix7H9yn?=
 =?us-ascii?Q?bkd213lxMH+o2V7NkZBTXpaFuN2Q14RqlDUku/Ryj+31sXjK0ZryUiHqa1Sc?=
 =?us-ascii?Q?Nbf17K5DRkKHgrlFwJfgINM0X75Dg6jhQaJ7ExEkftYzduAdH9WEdUo0NWDl?=
 =?us-ascii?Q?9ZgdswSH4jSChm/EsgRrkxxcmVFsGCWtqL1JbBqs9Vi7AfM/oUIi8fjbBuku?=
 =?us-ascii?Q?O3P6414Pn+ejqgi+GmBPyXuF2Ifyv2zVCB0swQvAJdkmdMagK/0CBTLrtONN?=
 =?us-ascii?Q?sAaDVCtGbOtjg5iOnqi6E3KHYFWZLv2orKWN+jQs4bWGW0tPXhJCCgeK1vL9?=
 =?us-ascii?Q?yAXcnR2XxJd5bW6lwljcDEDNsgmoGTGmyxGqhlaUYw5A5psYSwqNdbAot6xE?=
 =?us-ascii?Q?UCG9eIv3zuZC/jPGEkoqhXCR602P7YZFocGkAtqrzhq4M+7v0GNgkPguB4rH?=
 =?us-ascii?Q?5O6AKHiQpS/pAL4JNxJz1Oy2al6joKOUPUm3+w4sQ8u3+dx4vwy8Xs9qMuui?=
 =?us-ascii?Q?x978T2dTrpJAC53cETgn0f+ns26yDbM7KBb2k1XUEpDrSOVGln87t4NLY0vq?=
 =?us-ascii?Q?O0yV5rpvsyteZFnKPH9jwNLIc3owTJLGWUkoqzPZ5+VdZxb0tb9L1yLDFTiP?=
 =?us-ascii?Q?NJTzM9or0IOLs84DheIdkIMEwUtNTBl9sOickeLQWk0QwwlB9ivUQOsu8F0M?=
 =?us-ascii?Q?TkjJq0gXe4VuD/EKoseoPZt2H6wSni74M6bhkt4XjUfRaG2MkJe2sZJL4VXI?=
 =?us-ascii?Q?587lDe0HD/hj6/9bS/pXf81pxJqtEtybQum/2xXD3IIQbmt0skt3tVuYjran?=
 =?us-ascii?Q?iPGExOuthKUwcvRK6fafcqw1xZMpsfyI+HWfEEzoErXgNCc5EYWTMTBWb/on?=
 =?us-ascii?Q?gpEAs4kmuzjomunNWgDOfuCUOGF4RgnwAH1DG1n5zGo/YLL/WpZqSPZxmqnI?=
 =?us-ascii?Q?Ga+F9kh9s70H0pqJYH9lCT3sT2giIsko+yHB8l/6MdcQ+mCekOiBAKl+CT74?=
 =?us-ascii?Q?6e628fPjAgp052J8AS/OKmWodl8cMEE9ZmbTm1X82UXlAF78AyNPOV9ctNaZ?=
 =?us-ascii?Q?xA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xgKYOwuWCGXdnDo0mzS62YJjYblS+gkRA6dqhwf4Cix9EOvVzTf6GJl9iKNt?=
 =?us-ascii?Q?a8w/O6qL3UrE088owVaq1us4JUOj8fHthF833pxkj/kvtyKhhOqc+R9AfS+q?=
 =?us-ascii?Q?nxmtXg+OHOUssUUBGVXTv4PsMyYQHPfcd6WPtly+KPsci78hUV6tDMtCbtaG?=
 =?us-ascii?Q?ftzU/4deP1LuII11B2yut3G6xqXZAmCsgW/8dQSvreIiuNN0UzxFkrF5OCWY?=
 =?us-ascii?Q?7wpl1sSh6Yz5T9WLHyxplD6ifn4WNZiE4j4QgfqbCazJzXv++PebL9YrIbvb?=
 =?us-ascii?Q?SE9Itue1ESHnvTmHTGF70V4YCeE9OZY5pdCLTSoVy0XoD1ekdZ4tbcaXIplX?=
 =?us-ascii?Q?C8Edov2+27yDq7iOi304s9S635kZyc35CPqpX3KAFNZBWfARFsq73o74xhg/?=
 =?us-ascii?Q?1zXe4rWCR/pe7m97ZHHbtz61Y1QX3FlSBppBQe7ndeoJBHGAdMjXhMVHIkyS?=
 =?us-ascii?Q?IsH7duCAQ5CVnGDhSxoKTnJGpmufhZIBtg4Wiwb57uMM/96E4ZLPUnyu2sI5?=
 =?us-ascii?Q?U27RWU/GWbVA2j8cpoCvouHpZskMYHgIevTWn1NF93jEqqsrETfn1kc+Doy4?=
 =?us-ascii?Q?aINZlh6KBpopT2OS+UnvfX9jSKRxirJ/YC/7O8oZogP6cLbKvtyfagOedpp1?=
 =?us-ascii?Q?LCtuGCgwGxmWIEf43/6CD2dhc28nzJr+yiOlBN3yPbPJxAIPSubbRSKrISNb?=
 =?us-ascii?Q?JCRjOSmM4M+EJikbSfNxNhg+8rwD7EZ1e6UlICQ66nibmn6bVxKkNFjrp6EE?=
 =?us-ascii?Q?Z+OwoWe/vHtAeulSevIgIg0MkO0YxNZONCJ76HkXOtbszVASb2qBUDV5xnR8?=
 =?us-ascii?Q?B2aG+naYHQjZceLwJBL39umTKxycwQ6yKJQAwhLasRnTCdLka4fyGWTN8wlA?=
 =?us-ascii?Q?2EAGDgHhJRnvK21LAp5cYrd2Y/48kCT5sy3iywYJW1ORcMy+qX9DnPDfJzO3?=
 =?us-ascii?Q?6bdOS6P1TkWv9JGTs6Ss+iUlU9MRFdxZJjZljBuM7NJ9EuhYfyDt1TmlPQJy?=
 =?us-ascii?Q?3FvyZVd4xAhIB7vWPlUGMiQR8MgwZQ2xBEMqWZrhEq/z1cEVc6ouzpr/zxiZ?=
 =?us-ascii?Q?OgWtjSfuzubPY8eSMwsqFWPNxogpaomhlNVZTeYJvuXGa+ZoBPGgWrqGM+MR?=
 =?us-ascii?Q?ddHveU/Vi4Fzl3NrbxMJ2Oi1MNtO3AjeC1QpNQUw/uUPd5/1Eeh6t2rA51/R?=
 =?us-ascii?Q?Rz6sU/q1Va5UD5yYQRBJPsWoaBuf+dahnIVcUjt8PS/lljNLmnkz/d1w6p7r?=
 =?us-ascii?Q?yTlZEtWJ05YVrKfKYXreCacC5CZJfiXpa90qVx8PFyanOgHqX5yQ0IezNHaW?=
 =?us-ascii?Q?Xj/VHZiHwIUs7ZxcpKOz9LgX9YPUKGnp7W09S241hxpFbEo+aQf8VMXD4eRW?=
 =?us-ascii?Q?Fu8yBzMmQQVhRrHsy9jbpzIFvF0PvdeEnuwPoIkSIGiFbsB1M7mS45GiUr08?=
 =?us-ascii?Q?vv6AynOHgDRhHfZpy4zvuDumzlcqaND6Erb7WdWduP0kTzLP/P38sWwQYe+e?=
 =?us-ascii?Q?FwhfKDhkxbPz/94kyJz/AU2fxOvPnBBMRecj6jvqu5XVFfTm5QBcwpV7cXGM?=
 =?us-ascii?Q?4UVMxWpQx9bFfPNgnSawLTOZ3D9Gw0oTcgxG/xy5AIHBbvFe+qF7JAGf1b/S?=
 =?us-ascii?Q?Hl8fSvU6FoKdhEIDUj79wQKQs5zGkE1eR68rvp44vRmUiEzsUq3PR6NPFcyx?=
 =?us-ascii?Q?0vADg67tKZpR8/N752W7rI5QHN9UKJ9F89s5KoNgJoNBeUGHvPZxs7O8Ba2L?=
 =?us-ascii?Q?ZRXQCe0xGw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f622d233-8af4-47ea-8160-08de6de72a82
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 05:41:15.0821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AtYTPlsGeDA3M4XVD6w+H4hUyZ/oCJdFtwM1KhK9Iimbleg2kYQQPusUdzwNCpx3KFNkAIL+3J8JGGF5aINbsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4647
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 10E1B148D91
X-Rspamd-Action: no action

> Subject: [PATCH v3 03/16] drm/i915/display: convert W/As in
> intel_display_power.c to new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_display_wa.c.
>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../drm/i915/display/intel_display_power.c    | 22 +++++++++----------
>  .../gpu/drm/i915/display/intel_display_wa.c   | 18 +++++++++++++++
>  .../gpu/drm/i915/display/intel_display_wa.h   |  7 ++++++
>  3 files changed, 36 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 755935dcfe23..7312dba4f032 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -21,6 +21,7 @@
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_dmc.h"
>  #include "intel_dram.h"
>  #include "intel_mchbar_regs.h"
> @@ -1621,8 +1622,7 @@ static void tgl_bw_buddy_init(struct intel_display
> *display)
>  	if (display->platform.dgfx && !display->platform.dg1)
>  		return;
>=20
> -	if (display->platform.alderlake_s ||
> -	    (display->platform.rocketlake && IS_DISPLAY_STEP(display, STEP_A0,
> STEP_B0)))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_1409767108))
>  		/* Wa_1409767108 */
>  		table =3D wa_1409767108_buddy_page_masks;
>  	else
> @@ -1645,7 +1645,7 @@ static void tgl_bw_buddy_init(struct intel_display
> *display)
>  				       table[config].page_mask);
>=20
>  			/* Wa_22010178259:tgl,dg1,rkl,adl-s */
> -			if (DISPLAY_VER(display) =3D=3D 12)
> +			if (intel_display_wa(display,
> INTEL_DISPLAY_WA_22010178259))
>  				intel_de_rmw(display, BW_BUDDY_CTL(i),
>=20
> BW_BUDDY_TLB_REQ_TIMER_MASK,
>=20
> BW_BUDDY_TLB_REQ_TIMER(0x8)); @@ -1662,8 +1662,7 @@ static void
> icl_display_core_init(struct intel_display *display,
>  	gen9_set_dc_state(display, DC_STATE_DISABLE);
>=20
>  	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
> -	if (INTEL_PCH_TYPE(display) >=3D PCH_TGP &&
> -	    INTEL_PCH_TYPE(display) < PCH_DG1)
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011294188))
>  		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D, 0,
>  			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
>=20
> @@ -1717,17 +1716,17 @@ static void icl_display_core_init(struct intel_di=
splay
> *display,
>  		intel_dmc_load_program(display);
>=20
>  	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
> -	if (IS_DISPLAY_VERx100(display, 1200, 1300))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011508470))
>  		intel_de_rmw(display, GEN11_CHICKEN_DCPR_2, 0,
>  			     DCPR_CLEAR_MEMSTAT_DIS |
> DCPR_SEND_RESP_IMM |
>  			     DCPR_MASK_LPMODE |
> DCPR_MASK_MAXLATENCY_MEMUP_CLR);
>=20
>  	/* Wa_14011503030:xelpd */
> -	if (DISPLAY_VER(display) =3D=3D 13)
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011503030))
>  		intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
>=20
>  	/* Wa_15013987218 */
> -	if (DISPLAY_VER(display) =3D=3D 20) {
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_15013987218)) {
>  		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
>  			     0, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
>  		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D, @@ -2266,8
> +2265,9 @@ void intel_display_power_suspend_late(struct intel_display
> *display, bool s2idle
>  	}
>=20
>  	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
> -	if (INTEL_PCH_TYPE(display) >=3D PCH_CNP && INTEL_PCH_TYPE(display)
> < PCH_DG1)
> -		intel_de_rmw(display, SOUTH_CHICKEN1,
> SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14010685332))
> +		intel_de_rmw(display, SOUTH_CHICKEN1,
> +			     SBCLK_RUN_REFCLK_DIS,
> SBCLK_RUN_REFCLK_DIS);
>  }
>=20
>  void intel_display_power_resume_early(struct intel_display *display) @@ =
-
> 2281,7 +2281,7 @@ void intel_display_power_resume_early(struct
> intel_display *display)
>  	}
>=20
>  	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
> -	if (INTEL_PCH_TYPE(display) >=3D PCH_CNP && INTEL_PCH_TYPE(display)
> < PCH_DG1)
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14010685332))
>  		intel_de_rmw(display, SOUTH_CHICKEN1,
> SBCLK_RUN_REFCLK_DIS, 0);
>=20
>  	intel_power_domains_resume(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index b383bfad3af6..011749b680e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -9,6 +9,7 @@
>  #include "intel_display_core.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_wa.h"
> +#include "intel_step.h"
>=20
>  static void gen11_display_wa_apply(struct intel_display *display)  { @@ =
-69,23
> +70,40 @@ static bool intel_display_needs_wa_16025573575(struct
> intel_display *display)  bool __intel_display_wa(struct intel_display *di=
splay,
> enum intel_display_wa wa, const char *name)  {
>  	switch (wa) {
> +	case INTEL_DISPLAY_WA_1409767108:
> +		return (display->platform.alderlake_s ||
> +			(display->platform.rocketlake &&
> +			 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)));
>  	case INTEL_DISPLAY_WA_13012396614:
>  		return DISPLAY_VERx100(display) =3D=3D 3000 ||
>  			DISPLAY_VERx100(display) =3D=3D 3500;
> +	case INTEL_DISPLAY_WA_14010685332:
> +		return INTEL_PCH_TYPE(display) >=3D PCH_CNP &&
> +			INTEL_PCH_TYPE(display) < PCH_DG1;
> +	case INTEL_DISPLAY_WA_14011294188:
> +		return INTEL_PCH_TYPE(display) >=3D PCH_TGP &&
> +			INTEL_PCH_TYPE(display) < PCH_DG1;
> +	case INTEL_DISPLAY_WA_14011503030:
>  	case INTEL_DISPLAY_WA_14011503117:
>  		return DISPLAY_VER(display) =3D=3D 13;
> +	case INTEL_DISPLAY_WA_14011508470:
> +		return (IS_DISPLAY_VERx100(display, 1200, 1300));
>  	case INTEL_DISPLAY_WA_14020863754:
>  		return DISPLAY_VERx100(display) =3D=3D 3000 ||
>  			DISPLAY_VERx100(display) =3D=3D 2000 ||
>  			DISPLAY_VERx100(display) =3D=3D 1401;
>  	case INTEL_DISPLAY_WA_14025769978:
>  		return DISPLAY_VER(display) =3D=3D 35;
> +	case INTEL_DISPLAY_WA_15013987218:
> +		return DISPLAY_VER(display) =3D=3D 20;
>  	case INTEL_DISPLAY_WA_15018326506:
>  		return display->platform.battlemage;
>  	case INTEL_DISPLAY_WA_16023588340:
>  		return intel_display_needs_wa_16023588340(display);
>  	case INTEL_DISPLAY_WA_16025573575:
>  		return intel_display_needs_wa_16025573575(display);
> +	case INTEL_DISPLAY_WA_22010178259:
> +		return DISPLAY_VER(display) =3D=3D 12;
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
>  	case INTEL_DISPLAY_WA_22021048059:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index b1bcc18dd2c8..380cb64cf774 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -27,13 +27,20 @@ bool intel_display_needs_wa_16023588340(struct
> intel_display *display);
>   * number.
>   */
>  enum intel_display_wa {
> +	INTEL_DISPLAY_WA_1409767108,
>  	INTEL_DISPLAY_WA_13012396614,
> +	INTEL_DISPLAY_WA_14010685332,
> +	INTEL_DISPLAY_WA_14011294188,
> +	INTEL_DISPLAY_WA_14011503030,
>  	INTEL_DISPLAY_WA_14011503117,
> +	INTEL_DISPLAY_WA_14011508470,
>  	INTEL_DISPLAY_WA_14020863754,
>  	INTEL_DISPLAY_WA_14025769978,
> +	INTEL_DISPLAY_WA_15013987218,
>  	INTEL_DISPLAY_WA_15018326506,
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
> +	INTEL_DISPLAY_WA_22010178259,
>  	INTEL_DISPLAY_WA_22014263786,
>  	INTEL_DISPLAY_WA_22021048059,
>  };
> --
> 2.51.0


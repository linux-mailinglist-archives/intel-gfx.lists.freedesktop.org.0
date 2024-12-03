Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CA69E1506
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 09:04:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8687110E949;
	Tue,  3 Dec 2024 08:04:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GbGWCIOV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 304E610E949;
 Tue,  3 Dec 2024 08:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733213091; x=1764749091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qqHI/TpSFgw8pl5IjHKehw0sL9yhKdAenTX+HhrpUKA=;
 b=GbGWCIOV7MNHUG6X5EAzp9os+8eAbMTnmesjUSWGizhNavrdrUI/RA2T
 DoEdD1dAfFeF/JqGcksu2RxH1D3PJQQxeS580xzDYNGb5CwzYtcSWqYYq
 ZdeUielV/X7wUM7952mOwbaSrnIxG2W/j0xRk91gYG4iRJCLZL5rdtvQF
 KEnaEjiOlSfAynN6dOy06IHQnB0hCNG0+u31qCRQURMjB8N0oy2lAIU28
 DOmWWdxx7ELvI0HiDy5GaMn+GMTashFICOCw8Y5YPHY+vp1ofYMQMtUYN
 5Q667zXdpnjkSVAkzmimICiIElxGGOQPahnVimNCsI0KTWdU1AnuGaJGp w==;
X-CSE-ConnectionGUID: ZVawkhJnR3GC31gF4FsLDg==
X-CSE-MsgGUID: 3p+u3ss+RtC8lGG1qfykxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="58817428"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="58817428"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:04:42 -0800
X-CSE-ConnectionGUID: 5iie4btqQse9gmFw779Fww==
X-CSE-MsgGUID: MiNNIv0SSTiqHCS27+n5OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="130821735"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 00:04:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 00:04:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 00:04:41 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 00:04:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yv1eKod9ZqetpIJQExtXcDMJjcPOlPwOr8ODldyEdWVBmorY8Dw2nQOk0SQT4apctTwOEOwLf/hPaBQMwCwKyAbB7gz/rtPG+XzmVD5RutYFLIsbDytKf8oB7wjrUMhBc4OEaKewOlB1bbebGOxcLbaHgj6dQiiCmwSEyvqD+QTn7Ll7wCx5EAedWjLi919RXc1nD3wCPU1WppXIvma0+hN3q2ircXaQZB2isJP8lHAWJDLLpZvV4TrG2z++Soxdu9QYsmdIvBN+i0Uqk2hU5EJtF1EVglARzHLpwHEYRRf1YI2okWC6eiTlQ2d8fMrLgFd4dUG/VEe2Xa/onB4vCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FpFmHbSiZmI4Eu94ClDPX9Lox6nCi5SfISWZGr7twRQ=;
 b=V+9OKiijiiCsTqbHtQGbfL5jJF4PL0MRtSoVNlAX6X2sdMGskUg7irAdXpEDkubmbbvwZvNyPTBssszl+H1aGWvWGErtu21bLdXFCb75UlOpUGeMtm5VOoPP42AeiGf4E4hFpsrycfyxJEBUpskfyNEQxlP9XioLtf/SxlkCF1ijqABogAStGPgnvX2A3A1w/qYGxIqL3Xfg4ujMQjvqm0JfgZCM9/PCrhTpUoYEvn1h9ZvLGCPuikNvduh+nYgkw6W9BLdUOgeITVstkBRUgSUNsUTeAd30c93lMmo9Cx/KTbSon8iifjb2F8ChuBUmwmFTp40wcGl5Z6zXJ4LVZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN0PR11MB6057.namprd11.prod.outlook.com (2603:10b6:208:375::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Tue, 3 Dec
 2024 08:04:39 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 08:04:38 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 6/6] drm/i915/wm: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH 6/6] drm/i915/wm: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbN3ezI75GlW6vVEi2ibFCe/nlM7LUQN9Q
Date: Tue, 3 Dec 2024 08:04:38 +0000
Message-ID: <IA1PR11MB634835B812B15AE3FF02439FB2362@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
 <20241115160116.1436521-6-suraj.kandpal@intel.com>
In-Reply-To: <20241115160116.1436521-6-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN0PR11MB6057:EE_
x-ms-office365-filtering-correlation-id: 496d991c-83b9-4adc-58ec-08dd1371226b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wp1jBSbjSid0r0Lh6UcQ3Gd/o+oHYuOy87euOhkLVahkSisel1eR/KKvvn8J?=
 =?us-ascii?Q?8mCtFPb9coSA+yI4OB/QWgkwI9H08mCEiy3jZqDjwtMJW7SCOFq3dCu7l+/d?=
 =?us-ascii?Q?Frk85V4btFWrxN6ZUi3fT3HpoQ6jqs4YuUBmd4wvI5Pz0waVf6oFiZdygw2W?=
 =?us-ascii?Q?IQDEJuL9MXzVJIYByg6EEn62WYGmwrgRwzNCpzuVd9PN0mpAkqGHRhmaDK+0?=
 =?us-ascii?Q?8ZsaIQVMk0L1eaBqd07Mf8n5NylsuULf9kLMpxz9oGsV0wsedAz5putL828/?=
 =?us-ascii?Q?XFxcrRoMXxhQbX9glZeyEgUDho21v/D3r9VJHKJxdKQ3XnqCywIVZAcnvz1m?=
 =?us-ascii?Q?7wz8JLienDTHXaPoSe/7uEgBAVKt1gy1qtoYN0Jn06CF9rb/0TtIDyaqweq7?=
 =?us-ascii?Q?V9dU+lkDrmsCAmDqOsPAqQevvBTmuumShyOv8HxVeSiRT0hgGFle2NC2ax4S?=
 =?us-ascii?Q?0vbIJueMmR1LYt1Zk+RLeMZUD9e126X3VAWyNa8RriUjl0sSDCgfu0f3d78A?=
 =?us-ascii?Q?Q8Z/zYl4Nksf2pOoUpvmLuU6H1OqAHRi7gxUZ+4qvyiAgIY2X/TMSHknW0mF?=
 =?us-ascii?Q?vOhrtM0HCjeEUuIfK+ltPydMeLStE3NU5SFTCh2DB2XJHlDSajnyAm9PhDtI?=
 =?us-ascii?Q?s3LwYBI4uUkOYVK2T2+vcEiKSbGhfQYonhJIFNiaOs45rKUMLxTj7L81gakD?=
 =?us-ascii?Q?dy7QHO/UGR2PfM/RTBHU5OH9d14lu6JfDBhJZWPh0hpz3gzW7Qe5YY9988kk?=
 =?us-ascii?Q?uLGfali80Y2W4DZDkC7GmRXFCSUsCWrN0xhzlqIzoVlES2eo/7fUBsvRgY1M?=
 =?us-ascii?Q?XTPMRHhvg2cRobvRqntCVg0wMEwlir/rvdkFV6eVf73E6eal/c3pwZi8LgMX?=
 =?us-ascii?Q?pmLmEHiEFS8wnaZ3mwJxkTED3HxghawwGBSBGJUW3jpcKSjYpjzBPV9Pnxxi?=
 =?us-ascii?Q?fAtRwazuJ7qwljdaWzZJchMQUHPaKQ5RPJgTOokvd/GeRbZBmL7mAouFK7kL?=
 =?us-ascii?Q?yH7LnMTOrVzL73lB1EsGcrn0G9pMgwIUCpMBP0+u4IgvlpihnkeeSFagJt6L?=
 =?us-ascii?Q?DKp8kp42Ee6ojAtk8RRxPM2/1CpQ6f+BXHWqE0wh6TjCviRv3pQl8F659a7f?=
 =?us-ascii?Q?JuIqPAP1v0jLNxaFULzD0/XAdZJJFx8rIC6sYBdkwRJqNQf3GXQrdjo0s/F3?=
 =?us-ascii?Q?9o5t0aC+vQPpVnWWn1J0DOpfDhN4494tzeGD9qTJg+05brYAmgC76yu65A5k?=
 =?us-ascii?Q?fkGtlvuicvm4WEJT50p5KrTuhUhOliPHra1qgOo3fM9Mv97VlkKmKGTeN3tM?=
 =?us-ascii?Q?EW7svU1Rb0GoHir++kFLE9fQo8mof681baqQr5rA38H6IYDOqGCJeDXYOxT/?=
 =?us-ascii?Q?69HEvvvb0lXnGVzeo23BjxPNfHjcDWtTb85SnRpvH6ZCQJJN9g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qe1zmloMTx8ypLwKRNMzG5ugMDtWIm/bLw+Oib2wkcqHTbXK+TcZflnBbygO?=
 =?us-ascii?Q?gffKM94m1Q5H3PuH1BmJesU7NoMS1AkX+TNHOt8mZ5C11dWJY+Q30gprXjxI?=
 =?us-ascii?Q?OOff23XBjo4KrLOB5dxK2iNhQv1vseLzFtozc1kifY2XDpg2T4eLv3YcmRZd?=
 =?us-ascii?Q?rdb+U1bzvdg0lFBjuzdLb2A2YlSro71ZAztLzKKHm/UA8OaHwbkGRiupYBnO?=
 =?us-ascii?Q?RcehLPaek/CY9oQVFy4HlvmCVVe7Fh4gMulZxsCEie0yfUyaGwz1lSSe86E0?=
 =?us-ascii?Q?4dPo82k73g+lCCAF5GcT4mP/RlE9Ai3KzACIFP79kADUYpVeRk0jeoW/yKQL?=
 =?us-ascii?Q?FX1t9xUMU4kWmSPhP2/f8wohnsZbyer909zHBgEk94SR3nczuZ+cb2MGrWVX?=
 =?us-ascii?Q?nge41ccdLcbB4Y1rjB9ggV5bCKO/zKXufwxoItwYNrzULELfvJ6aABUE4De5?=
 =?us-ascii?Q?7H3UZrH5lPO58R7SJY0MY/SM4h8pda6ajF7dZD5I+ns6Gui714oLmzQUEbua?=
 =?us-ascii?Q?GNWBHQtxa/bD1LwB6IPJnN8vsiXx6cn/zRzh1HKEKJ6TZAI/veWnuFbFHZIx?=
 =?us-ascii?Q?DYzZR3LFb+YSo5lL5BQ95TKvaEWmgXB+rL/T4QXnIRJHJ4PL6JapHhbLxJ8/?=
 =?us-ascii?Q?Q4+EsQFbf4Z4+psalFsA9iXO49XnPqo4mpaShB5c+v8QlwYTvECpuWTSjSgY?=
 =?us-ascii?Q?8HBC3fl7AYngZiyehxtCOZ0oOsVtXDIvaYuXSkuFOXdBsf4sFv3SE1Wpfs5W?=
 =?us-ascii?Q?ibtRdHvMRTXf/56+Zic3pxw7o+QqEAFMyJgNV7c79PpWagTk15zpOcoZz1PC?=
 =?us-ascii?Q?37L7HkBRqUfR0XKEKMIek6IY7z7k3FP0D+dH0C5TpGAGfr7ZovANZuhN1jBx?=
 =?us-ascii?Q?7WlDQ3L6AH+Tappr356dtv3CALsV6zZnvJMyB/vM/THbsKh5sp2ZVfIBOEfN?=
 =?us-ascii?Q?mBr69ZHyY6HOIx0LXNAOT852EA974ebvepabLPt4EqdWoP+Qwx2UBsiZSTMe?=
 =?us-ascii?Q?TYxWXkqqvTF4pjbZhHDCpn8LvxjoX3a3FFJytXakXuLYQvo+wW0WNHJ5s0o5?=
 =?us-ascii?Q?hyTvQwLdoKMhQkqfzF18j4BkaNGeHYwzZL4K7PC4SI50R0qlDnKCNA2MpeE1?=
 =?us-ascii?Q?pLeHBY/26xJlo25xEErI8Y/2xMao9kk45uFDqn3FoCiBmSjh/ZWYPeX6X87l?=
 =?us-ascii?Q?F2pATAHd5gebweZ5YnTW9WAvcTa0FNv5InlTSqqJd5103evF5PQoKIlKCxEB?=
 =?us-ascii?Q?mQ6S/IbeBuY8UVl/yN/rdJITffp0zVtoPD/+LHA9anmIztZRMJkTaMDVF14b?=
 =?us-ascii?Q?uCadsALpjh3JwzM0MTvH1czFlKli1173ePhLH2ILknvoXYHemXV4OB1y8vQX?=
 =?us-ascii?Q?vUqZFxnA6HXmB0FLvkspjkNtqPDrUgxBxC1N7YGkqxxq9cJhZtEsz7mMYCGS?=
 =?us-ascii?Q?/M5y6G/49mE+ycUlSJF8HdxJ9QVdkSD0+PiuY67Ee4jRSNxInPEriAnLHCJz?=
 =?us-ascii?Q?DMYrBdblirRYKTi7PDJC3jF7JSLhcHeCsaCcalLKzYpNYJj0hftZBhHBEuTa?=
 =?us-ascii?Q?487/K61FF3Bdo5anGnx07cuPj+j4kIXE4Sk9ujstZLqBDi7MYQNOgCm5IZEg?=
 =?us-ascii?Q?3DVW7yL+QAkTDSZdv8qKxz8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 496d991c-83b9-4adc-58ec-08dd1371226b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2024 08:04:38.5585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fdja5r7B1yAIQ41Eq11Xf1x/aT0ZQrfXE6k1ST6pX//cKIe2ZXKzykcm1Rz23Gr/oZgOA1quexhnwC2uvWGvJnWygZOEj01QTxuljFW50c105mGuVWhPYNN9V1RkbTKF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6057
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: 15 November 2024 21:31
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 6/6] drm/i915/wm: Modify latency programmed into
> PKG_C_LATENCY
>=20
> Increase the latency programmed into PKG_C_LATENCY latency to be a
> multiple of line time which is written into WM_LINETIME.
>=20
> --v2
> -Fix commit subject line [Sai Teja]
> -Use individual DISPLAY_VER checks instead of range [Sai Teja] -Initializ=
e
> max_linetime [Sai Teja]
>=20
> --v3
> -take into account the scenario when adjusted_latency is 0 [Vinod]
>=20
> --v4
> -rename adjusted_latency to latency [Mitul] -fix the condition in which d=
pkgc
> is disabled [Vinod]
>=20
> --v5
> -Add check to see if max_linetime is 0 [Vinod]
>=20
> WA: 22020299601
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 20 +++++++++++++++-----
>  1 file changed, 15 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 0cc843314358..e9a60d54afef 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2861,7 +2861,7 @@ intel_program_dpkgc_latency(struct
> intel_atomic_state *state)
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *new_crtc_state;
> -	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D
> 0;
> +	u32 latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D 0,
> +max_linetime =3D 0;
>  	u32 clear, val;
>  	bool fixed_refresh_rate =3D false;
>  	int i;
> @@ -2874,18 +2874,28 @@ intel_program_dpkgc_latency(struct
> intel_atomic_state *state)
>  		    (new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.vmax
> &&
>  		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline))
>  			fixed_refresh_rate =3D true;
> +
> +		max_linetime =3D max(new_crtc_state->linetime,
> max_linetime);
>  	}
>=20
>  	if (fixed_refresh_rate) {
> -		max_latency =3D skl_watermark_max_latency(i915, 1);
> -		if (max_latency =3D=3D 0)
> -			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> +		latency =3D skl_watermark_max_latency(i915, 1);
> +		/* Wa_22020299601 */
> +		if (latency) {
> +			if ((DISPLAY_VER(display) =3D=3D 20 ||
> DISPLAY_VER(display) =3D=3D 30) &&
> +			    max_linetime)
> +				latency =3D max_linetime *
> +					DIV_ROUND_UP(latency,
> max_linetime);
> +		} else {
> +			latency =3D LNL_PKG_C_LATENCY_MASK;
> +		}
> +

Can this help, to avoid nested conditions ?

if (fixed_refresh_rate) {
		latency =3D skl_watermark_max_latency(i915, 1);

		/* Wa_22020299601*/
		if (latency && max_linetime && (DISPLAY_VER(display) =3D=3D 20 || DISPLAY=
_VER(display) =3D=3D 30)) {
			latency =3D max_linetime * DIV_ROUND_UP(latency, max_linetime);
		} else if (!latency) {
			latency =3D LNL_PKG_C_LATENCY_MASK;
		}

>  		added_wake_time =3D DSB_EXE_TIME +
>  			display->sagv.block_time_us;
>  	}
>=20
>  	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> -	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
> +	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
>  		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> added_wake_time);
>=20
>  	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
> --
> 2.34.1


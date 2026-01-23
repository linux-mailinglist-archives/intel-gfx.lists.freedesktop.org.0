Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oI5TAN1Rc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:47:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67543748E7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:47:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6A4810EAAC;
	Fri, 23 Jan 2026 10:47:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TbZSC4wc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD2710E297;
 Fri, 23 Jan 2026 10:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165273; x=1800701273;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YK3dJZZeYz/lWzIGFFtiggOLkE3XPMUik69VnPebXzo=;
 b=TbZSC4wcgWEevGugCDl5d7u796XnWeOgggMXRrWXAGMX32Mntk6UrTpz
 srCJPErAa1sLeR9wibvZoBb4pgxUlxUj8NtdOfESKL85utxJe2EtKHVL2
 aPe+jGZ69wAl8MAEE/05CEX7SNe2M8klNFEQ5bPdn4w85fgumngO47V8E
 nXrCBRmolP/tiDgVNxFWHe7R0rPZg6Wt4Ak2lJg5039LQdos42Nly1Zsn
 J0nV9KFLU+1c1tuDvqgP0vOPsE3fZ/0fB48mmfuz8+pm1q44nVfOWEH92
 /xtSvSyrjPIXpTrq9jtnqlgh5pROL3oZxuiO/4hLYgnppIFOdLcONSipW w==;
X-CSE-ConnectionGUID: eBwuRkp/TLmDxAZBF7zRxg==
X-CSE-MsgGUID: 15+4T4qeSfO0K9QbhAAZKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="74269447"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="74269447"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:47:36 -0800
X-CSE-ConnectionGUID: 0+loBQkzQr6sA3++cck+RQ==
X-CSE-MsgGUID: ObJrpVwQSrWttjQgVP7isA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="229958482"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:47:35 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:47:34 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:47:34 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:47:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KR9hzgthXaT3ErKqeWI/BQDuKSjHzhTy8X+UbcGCn99GAvffQ8lyCF+uSJnlGUO70uHA0AN5dDr+whBWQAGCRaZ8TCxdi4Juqh8aTP+NvZOaEwk7IXvdNf7a1WgOFDeA2zRxmm7MTZl0CoF0dpXDSLPURRJjJg2VTA89hh2HTct3FJfbxLgu/1xpUY2cpdkCFOsWxIvWiM21I98/hhYgocfxQw3WDAqhM6bzGvqRnpQa0OqHZ5zKSM/G4mVD7+Y9UR/KNYvepWHXxFzitKcSdOQi8i77BuOxAkqc7BJ8BeYKqiulQ2WagsScQ5Ew2MvyBAM56H4z8CQSsvXQ060uvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BrsW1NSU7NYr6Kt8XgUecS6qvnIrSqw2szcx1G9vFaU=;
 b=yrbheODl5h3mHWAzTOHmSGWi0dvxBKUQKBjFRCCBpbFxvRLdRK5fu9o9m4KiT2uI4+ccay/Cf8ll/ry+Ols7Lgywv613BVlRBGKICC/wMV5KDnB9B8n7W5z5odSSYBRJIda0gZEkkkMgHRNnlAbsU1BRscHg3QTavLlyafQdLxH9vdm3+uQvN26gfgeHIOfNem5ci02/9Mmvh1ddE4t8TJ3bJfsY0AtDgzpazfsBIAn/JxPOEJbRPJSVVQkrjzhiLky339/o35xqtgwG6RKaPnqceBukDEFmAtX7X0jnaN/+9DYaVpRgW+cAiqD4hC0RsmrQM+V+49yxfmt7wbx+Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB6014.namprd11.prod.outlook.com (2603:10b6:8:73::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.10; Fri, 23 Jan 2026 10:47:24 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:47:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 09/19] drm/{i915, xe}: Remove i915_reg.h from intel_overlay.c
Thread-Topic: [v2 09/19] drm/{i915, xe}: Remove i915_reg.h from intel_overlay.c
Thread-Index: AQHciyrslrdMpM6SQEeqYcmczQkjhbVeFJeAgAGAR8A=
Date: Fri, 23 Jan 2026 10:47:24 +0000
Message-ID: <DM4PR11MB63606B0192D61A2FAF051136F494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-10-uma.shankar@intel.com>
 <5ca273535beadccfab95542b986a65720d44a88f@intel.com>
In-Reply-To: <5ca273535beadccfab95542b986a65720d44a88f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB6014:EE_
x-ms-office365-filtering-correlation-id: 87bcc656-267e-4cd4-66cd-08de5a6ccb10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?/JCRK0NmJDlViJEno6yfUktG2r8wfmnJzQ15tck/0A4dYNop3MDwGwQjlgeO?=
 =?us-ascii?Q?W0jAbyMwb6xLYcpq/yFuP8NVNLKbF9ata1FaOEjGWJbF8RzV6A7UjX57+2Do?=
 =?us-ascii?Q?GKmUg8SDas2lSSp3vyGMIhTpvxLago8TV3oYGb8F+L4XXd/NoEOtCRIQjaCy?=
 =?us-ascii?Q?RBDRn4LwJZVHNEVjjVhFTqpSD9kYATh+baWFCpnP5w5TLqlhZ2tqo8RjL+pz?=
 =?us-ascii?Q?TNCXGG2GOV2FkROvgXpxAoAsZSJrPWfnk6LPrzDixnxPeNWXmYMTvXMe2IR7?=
 =?us-ascii?Q?WDQJGkyIet6kcoGaW/JwJnjGEWiDoY74R1V4Wlcsv6+7+ay+Z8cAwjMuNely?=
 =?us-ascii?Q?W3sVHa++q4o0BosHX39uHr3bOwJzbDETNiKsb9B0u2wn3h3iooVqDdHazxOi?=
 =?us-ascii?Q?15y7RA0CWasNERSTfdZdV9EiYNRtbMfdPO+DYFgrX8xll+JCvdFGxuilbtdJ?=
 =?us-ascii?Q?b02K/j5irf16Kjgiv++izQNxzporSXRwQ63Od8l0iTl7bfMrOQTX2t91lnJs?=
 =?us-ascii?Q?JdCcUQnH/ammcBuOm7UzAiCTuGDfBS8bXamNY//c3vun8+FkyqFK4frC/m9O?=
 =?us-ascii?Q?eeoix7K2B/jlrwSctNxaerEvNFJuGfegoX9zaGQpwIaRWO/PnPhW4gnZ2qck?=
 =?us-ascii?Q?GFG9TCL0xHRDVycW4PilxVVaIIdNcWligQn7an3RGYEr1p9sQejgv/P89PzV?=
 =?us-ascii?Q?2OYXYbzPp8rqe95RPkJsgo0Sm6v7lxZBifYRXVNOM0HIkYNJhX8b6p9f0G8o?=
 =?us-ascii?Q?5nkhMwYQQYrVP3aOkqXh0OjXdo6yJ/f0ZpryW7zofp3uUmpnfxse0fX6nNuC?=
 =?us-ascii?Q?i07QBLiEx/Zzup7K6VZxieCwXiX+WOk73L8jxcPB/jRsnPNpPbB5tnjr3nTq?=
 =?us-ascii?Q?j7IzayHSOrAQvL8/Omra1Cjf/yKBRDzVye+xs1R8hICSHliV8TMhanI6v1Lr?=
 =?us-ascii?Q?v7w/WLVLB9WFgURUjFa9BU+Ir0XTjYThuMsqBGPxBy2VrHDEZcwsNw/ISFEl?=
 =?us-ascii?Q?xwWFBsZlwilhaQnq3pIgvZA/ZNJfUlg9AkCswsBc1O5q3fMYzPvebyYODYVy?=
 =?us-ascii?Q?U0gbydQUg2qiqcPBJLpjXnuVu7swvgwJZ6S1iORXB+XoWExZFDGMVqt4VN05?=
 =?us-ascii?Q?VVdLWkyihddtXcSHeVo24Hhf85LZoiVSFZjX33ta4Jzqjf9ve2upIkuUSDbo?=
 =?us-ascii?Q?+jMv8aZEjAgwg9MEHmXjc98TwhP3yEd6Dv8bW1DxODe4wpsn9u7o4+TFW4vP?=
 =?us-ascii?Q?5/8lzDV1s6IRpw/0sY0fgQrmqmkh5HDaqglUL7NPkUpkV5y7tecK0c8DXYs0?=
 =?us-ascii?Q?vfpVI5fm4eRqgJKjvf27el1WIXcRSKLh/PR0r+jbHa9W9S1tH1q7SkUcmY5+?=
 =?us-ascii?Q?DKf2e6sX54ZymLxaRBpxiqbRM0k+W3rSxsxVrcDP0o/fdkEa0mgpR2ysuRCG?=
 =?us-ascii?Q?VnIKPAmNPziFzI5a5qqmyqWnrUyAz/Yea/Q09vdWIdAvvSN2s3YAPDx3GvYY?=
 =?us-ascii?Q?Gy4b61Jv473qnGxGpxTmiwLNaE7zXdsYAyEMhZQy4SfpeOHVsbAg/KeTDple?=
 =?us-ascii?Q?PFgPe8XoQj08qL5CWyaxn4qmbRLyYNAyZmoCMSXNXPEqsmGEK82XZrQ3Wfla?=
 =?us-ascii?Q?DQSblRdXY15Qy9if5qqNBX0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?prN5pnmoxAUkw9zET/YSAUfuxVbLdCwvvkoq88JsVW8SYPHoR9cKI81ZXyg0?=
 =?us-ascii?Q?wYqvO453fpT0GyQdiN3XnANgSM85KHvOv4/40VPl3UIGjybYbCiUDMKQiVcP?=
 =?us-ascii?Q?THDWkyyT5HzKNlVWqx679BTyi/vGFF1Y+7sIJz+eAHDhJBTYfEmSr6H/X65T?=
 =?us-ascii?Q?goEsvb9zxMGpdSIURw2mvyTxp8Pp301o4xaGyapjmywGog0qdNJpvccDlsru?=
 =?us-ascii?Q?Qzkw5h0V85LOTqcnWx8f085RL9/N4uVfYS8UDNAmLny0HHsWr23OlYvmGSic?=
 =?us-ascii?Q?+Te2PB3jTJzyrBx7p4f5tQ8aJ1meXxqV0P6sEWVaGCYBEvhZhuFJTXtiQUqA?=
 =?us-ascii?Q?ICY7Z8ay7SAHco4oVQ1jjm9KDRXcR0ZjUT4aOPNFsvgZDcT5AfG7QsOioYvq?=
 =?us-ascii?Q?srGgn6wMa3SOh+AZSCuAa0Uy3GgjInqfaJCSie4bWmD21LZWOMoqSXz9RAOj?=
 =?us-ascii?Q?o/NwgT9Ri3TLJvM1fMyCwxbUlqWSkhaUSVLQSFF8bAaNy/cxQN8sv0smgoQ+?=
 =?us-ascii?Q?IgDTc8gOKOyJI7J5plTy2IdVjAz29Qc4VtVyEVlN4wntabNLwLLhZhiNTvCu?=
 =?us-ascii?Q?i359PYEVKSXEyvHjv0Cx5tPukDDw86dZbJEWgMy2oqiXxtSuas25X97LkqX3?=
 =?us-ascii?Q?oYcUCoUMbUu661rPwLFUgDVn6ReIUIYOlAjDkeG2hyuhYJarVlGDQE0aQ13W?=
 =?us-ascii?Q?mUDS534knw0TcXnw1iZU7Q27jYHIdEPQADqudw84aSYscXsczcyIH4nRflAD?=
 =?us-ascii?Q?DeHJp8Pd9VJCn5NftIlwGT64sw88rkw1LxgFSIHnmI4aMpRZGiWOxwzOQGyV?=
 =?us-ascii?Q?KjkbLIXdPLg630eK7cBOkqAbsvMLGYjqxZii3guZQeTxfTwaClZJVFykn1Ij?=
 =?us-ascii?Q?9nczarsOaTJrjJ7kKVY5bhoMlGGbsF4Y4BE7/ZT9bW66BKFkCw5Oz1a0EjDi?=
 =?us-ascii?Q?c0aK3q4pgW01JqqCkljsrpVsQmakCBbr8w8D/VvdntSYw20VJ6uS4byTfOCE?=
 =?us-ascii?Q?2TQZVEK8e5VU3Kymhw7gQHfVX8HW+idF+S0/gagMK7zimZHNYp+YCor3J3HQ?=
 =?us-ascii?Q?1ohXnzxTUKjLBMDSgA83KTatY58fFykDy4VhTwBAkiVzg3+9s7r/j/afnFbG?=
 =?us-ascii?Q?LTvR9gn2agv9GjIUTIBFL/g1UOcZQ0DmUXFDRL6skH9r8MZdeFa+Wg/1pSL4?=
 =?us-ascii?Q?BXw8iu2otSGpLPlcHvl+0ooQCxZjQbOCECZMSfFMpEOv8CXayzHTWP3ivtyC?=
 =?us-ascii?Q?Sm5o/K/5v3vYgxEFSPPl0iWqjP9Eok6aI8HDnnth5k96atbTBDOMKYza+kO2?=
 =?us-ascii?Q?7ITK8jfHV6AqbWyAt6+7L1mb3+C+r3koo05kK2nZeW4W98mEXKSVgRqL6OAI?=
 =?us-ascii?Q?BcuKaMXfWNha1rJRJSVVLxPB2DJOU6+bC87wwm5hJkVuXF8V/eq+UDF+lfIW?=
 =?us-ascii?Q?B8WzOfQHDlBf/0JLLWY5GI0MoS/gMHH5n/7pFeUD5s7xn2iWjVNlJUtuColh?=
 =?us-ascii?Q?qtUhxDl2WavsKS3A/OXsIw2EwqXmrwNXGSPEFLyUA0U4S+Ce+wvPObVMqkEe?=
 =?us-ascii?Q?qNbjmYmJCeEPs0KeNovCZXjeEpLNbMxOVhp1XZqNNQSCDh1XA9djZr1nr/b8?=
 =?us-ascii?Q?NuKVddDPYYqU77ygH50e6A9t31SLviD/mufcPnBFsiIAg59TyttG7OdSaaCv?=
 =?us-ascii?Q?k80WcZJQUsof+QTk9P4iPyyKeJioDCGwbMOqTsTf0neVIF/Kn8YJaOOR9XOg?=
 =?us-ascii?Q?WCG8tC/VMA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87bcc656-267e-4cd4-66cd-08de5a6ccb10
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:47:24.2594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qD0rUzQIdeAjlhiBGW+uZL9ShJNffd5F6cCgGFwkbii4VOHK49brIujcT8xD4wDiUoEnqX8EAo1M/mHwIdptew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6014
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.982];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 67543748E7
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 5:22 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 09/19] drm/{i915, xe}: Remove i915_reg.h from intel_over=
lay.c
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Move GEN2_ISR and some interrupt definitions to common header.
> > This removes dependency of i915_reg.h from intel_overlay.c.
>=20
> Subject: drm/i915.
>=20
> Here too I think this should be a dedicated file for the feture.
>=20
> I actually think we might be able to refactor this away, but for the time=
 being a
> header in include/drm/intel is probably fine. But at least you can just g=
it grep who
> includes it (provided it's not included in
> i915_reg.h!) and see what to do about it.

Sure, will fix it.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_overlay.c |  2 +-
> >  drivers/gpu/drm/i915/i915_reg.h              | 36 -------------------
> >  include/drm/intel/intel_gmd_common_regs.h    | 38 ++++++++++++++++++++
> >  3 files changed, 39 insertions(+), 37 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c
> > b/drivers/gpu/drm/i915/display/intel_overlay.c
> > index 88eb7ae5765c..62026f7f71d3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> > +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> > @@ -28,6 +28,7 @@
> >
> >  #include <drm/drm_fourcc.h>
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> >  #include "gem/i915_gem_internal.h"
> >  #include "gem/i915_gem_object_frontbuffer.h"
> > @@ -37,7 +38,6 @@
> >  #include "gt/intel_ring.h"
> >
> >  #include "i915_drv.h"
> > -#include "i915_reg.h"
> >  #include "intel_color_regs.h"
> >  #include "intel_de.h"
> >  #include "intel_display_regs.h"
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index c1d141e9ca47..504ba9b2fb5b
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -522,42 +522,6 @@
> >  /* These are all the "old" interrupts */
> >  #define ILK_BSD_USER_INTERRUPT				(1 << 5)
> >
> > -#define I915_PM_INTERRUPT				(1 << 31)
> > -#define I915_ISP_INTERRUPT				(1 << 22)
> > -#define I915_LPE_PIPE_B_INTERRUPT			(1 << 21)
> > -#define I915_LPE_PIPE_A_INTERRUPT			(1 << 20)
> > -#define I915_MIPIC_INTERRUPT				(1 << 19)
> > -#define I915_MIPIA_INTERRUPT				(1 << 18)
> > -#define I915_PIPE_CONTROL_NOTIFY_INTERRUPT		(1 << 18)
> > -#define I915_DISPLAY_PORT_INTERRUPT			(1 << 17)
> > -#define I915_DISPLAY_PIPE_C_HBLANK_INTERRUPT		(1 << 16)
> > -#define I915_MASTER_ERROR_INTERRUPT			(1 << 15)
> > -#define I915_DISPLAY_PIPE_B_HBLANK_INTERRUPT		(1 << 14)
> > -#define I915_GMCH_THERMAL_SENSOR_EVENT_INTERRUPT	(1 << 14)
> /* p-state */
> > -#define I915_DISPLAY_PIPE_A_HBLANK_INTERRUPT		(1 << 13)
> > -#define I915_HWB_OOM_INTERRUPT				(1 << 13)
> > -#define I915_LPE_PIPE_C_INTERRUPT			(1 << 12)
> > -#define I915_SYNC_STATUS_INTERRUPT			(1 << 12)
> > -#define I915_MISC_INTERRUPT				(1 << 11)
> > -#define I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT	(1 << 11)
> > -#define I915_DISPLAY_PIPE_C_VBLANK_INTERRUPT		(1 << 10)
> > -#define I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT	(1 << 10)
> > -#define I915_DISPLAY_PIPE_C_EVENT_INTERRUPT		(1 << 9)
> > -#define I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT	(1 << 9)
> > -#define I915_DISPLAY_PIPE_C_DPBM_INTERRUPT		(1 << 8)
> > -#define I915_DISPLAY_PLANE_C_FLIP_PENDING_INTERRUPT	(1 << 8)
> > -#define I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT		(1 << 7)
> > -#define I915_DISPLAY_PIPE_A_EVENT_INTERRUPT		(1 << 6)
> > -#define I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT		(1 << 5)
> > -#define I915_DISPLAY_PIPE_B_EVENT_INTERRUPT		(1 << 4)
> > -#define I915_DISPLAY_PIPE_A_DPBM_INTERRUPT		(1 << 3)
> > -#define I915_DISPLAY_PIPE_B_DPBM_INTERRUPT		(1 << 2)
> > -#define I915_DEBUG_INTERRUPT				(1 << 2)
> > -#define I915_WINVALID_INTERRUPT				(1 << 1)
> > -#define I915_USER_INTERRUPT				(1 << 1)
> > -#define I915_ASLE_INTERRUPT				(1 << 0)
> > -#define I915_BSD_USER_INTERRUPT				(1 << 25)
> > -
> >  #define GEN6_BSD_RNCID			_MMIO(0x12198)
> >
> >  #define GEN7_FF_THREAD_MODE		_MMIO(0x20a0)
> > diff --git a/include/drm/intel/intel_gmd_common_regs.h
> > b/include/drm/intel/intel_gmd_common_regs.h
> > index 489d59379ab0..2214cee38cf7 100644
> > --- a/include/drm/intel/intel_gmd_common_regs.h
> > +++ b/include/drm/intel/intel_gmd_common_regs.h
> > @@ -110,4 +110,42 @@
> >  #define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
> >  #define   GMD_ID_STEP				REG_GENMASK(5, 0)
> >
> > +#define GEN2_ISR       _MMIO(0x20ac)
>=20
> This is duplication, and only used in display.
>=20
> > +
> > +#define I915_PM_INTERRUPT				(1 << 31)
> > +#define I915_ISP_INTERRUPT				(1 << 22)
> > +#define I915_LPE_PIPE_B_INTERRUPT			(1 << 21)
> > +#define I915_LPE_PIPE_A_INTERRUPT			(1 << 20)
> > +#define I915_MIPIC_INTERRUPT				(1 << 19)
> > +#define I915_MIPIA_INTERRUPT				(1 << 18)
> > +#define I915_PIPE_CONTROL_NOTIFY_INTERRUPT		(1 << 18)
> > +#define I915_DISPLAY_PORT_INTERRUPT			(1 << 17)
> > +#define I915_DISPLAY_PIPE_C_HBLANK_INTERRUPT		(1 << 16)
> > +#define I915_MASTER_ERROR_INTERRUPT			(1 << 15)
> > +#define I915_DISPLAY_PIPE_B_HBLANK_INTERRUPT		(1 << 14)
> > +#define I915_GMCH_THERMAL_SENSOR_EVENT_INTERRUPT	(1 << 14)
> /* p-state */
> > +#define I915_DISPLAY_PIPE_A_HBLANK_INTERRUPT		(1 << 13)
> > +#define I915_HWB_OOM_INTERRUPT				(1 << 13)
> > +#define I915_LPE_PIPE_C_INTERRUPT			(1 << 12)
> > +#define I915_SYNC_STATUS_INTERRUPT			(1 << 12)
> > +#define I915_MISC_INTERRUPT				(1 << 11)
> > +#define I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT	(1 << 11)
> > +#define I915_DISPLAY_PIPE_C_VBLANK_INTERRUPT		(1 << 10)
> > +#define I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT	(1 << 10)
> > +#define I915_DISPLAY_PIPE_C_EVENT_INTERRUPT		(1 << 9)
> > +#define I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT	(1 << 9)
> > +#define I915_DISPLAY_PIPE_C_DPBM_INTERRUPT		(1 << 8)
> > +#define I915_DISPLAY_PLANE_C_FLIP_PENDING_INTERRUPT	(1 << 8)
> > +#define I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT		(1 << 7)
> > +#define I915_DISPLAY_PIPE_A_EVENT_INTERRUPT		(1 << 6)
> > +#define I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT		(1 << 5)
> > +#define I915_DISPLAY_PIPE_B_EVENT_INTERRUPT		(1 << 4)
> > +#define I915_DISPLAY_PIPE_A_DPBM_INTERRUPT		(1 << 3)
> > +#define I915_DISPLAY_PIPE_B_DPBM_INTERRUPT		(1 << 2)
> > +#define I915_DEBUG_INTERRUPT				(1 << 2)
> > +#define I915_WINVALID_INTERRUPT				(1 << 1)
> > +#define I915_USER_INTERRUPT				(1 << 1)
> > +#define I915_ASLE_INTERRUPT				(1 << 0)
> > +#define I915_BSD_USER_INTERRUPT				(1 << 25)
> > +
> >  #endif
>=20
> --
> Jani Nikula, Intel

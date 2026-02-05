Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKtqHYhIhGk/2QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:36:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A8EEF78D
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:36:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C52910E7DB;
	Thu,  5 Feb 2026 07:36:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hZa8pl4K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E63E10E7DA;
 Thu,  5 Feb 2026 07:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770276996; x=1801812996;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jAFi0A0E+4AezYh69beQndy2u/qO77M6L0v2LWmvPTQ=;
 b=hZa8pl4Kv/181s/ET9r/GIe0TPAew392O5OkeoIniQ750Tz+ryw0PWNh
 LYRbGn2XEKHlqrx1yn4jvSqPei41Tia/mkLhodT0f7FyXPzRsxNjNTC8z
 hexoldLBrAce8Wahpc2MTBKO2Cvwkyxz+xI2kN80j3ZhEMs2MOG14w2MB
 Qs0cRrOX2VfVgW2mb1hySmTKyaA618KIwRDrWmDCCHHuQWm0rv5C4rI2H
 iPXw261fBFwtcz3e21uisP9nN6Y1yzYLQPUEi1RHC+9E5n2PWJXNCistz
 wnPXpAz1Bk9mExCZ33TQuTDloKjhwRUemxlMaYXzMfL2MheVKZz3Xuk6q w==;
X-CSE-ConnectionGUID: 4iSQxYQrRRSonf+KpSODbA==
X-CSE-MsgGUID: BNkMvheiS7SLLcDDl79hvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71508232"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71508232"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:36:36 -0800
X-CSE-ConnectionGUID: sSl8a8O7ShKolH9DAb3Uwg==
X-CSE-MsgGUID: MYZTmHnQQJqKiWNa43hGBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="233356797"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:36:35 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:36:35 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 23:36:35 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.18) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:36:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UiMi23gmyJeoC1kcF9SH6ODPtAUmG7LAs3g4Ywld5a/o8Od3QO/0RV4ZBBDe0b0r765EzBIa9QDUuhIw2nZ1HD9Pf0I6kq3g8Hk9DyR3dAjuYR8PWMSCtiI2aR1y5K27mHob3cjW1Cbe1YVByciMu4nl6yM2u4MUq8YJk7fcqSEL4YI2YvYky/IQyscB/qbS7m86wDuKLgA9Uozy5+RAyzOGqiYm8dilrG6dz4H8YJKv8toy1q3L/OA/PDc2DQFTH7uX4294Bb7q9Sc8wLYZ8P/O1VUgxp+uEXCpbkFW39FX16JkH0OA8CBvxJPNIUs1dLx/cf4hek3C2gDd6t9b0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zWsIC06yKOmYzws8lIecP4lP/q9k2ittefyC82p+yjs=;
 b=kjbsS1PMOJ/qH5AXn6FezPrfkdWHQtRHabtRJusQVJ8l+eGtSS2pO9MLK/EwiOmT7UzYVj7o4iJjLJLYQqUt256zgkscfI+Av4Js2henTCoGBGYmqG8PIjYBEkt9D2I6AJwBa5Mxu39YeSNPeFWPuVxCUFSccOfvAvZ4+KvElealW2Nh32C5QEZsI4pG7gf0ouGxDUG/B6nzUGCamR7MVh4hP4LUqBimYhPpR8c2+QoYWAops+zxrwfZSa53AxrsRT78MtPNT4aCFUH68oj5RV7cdaD+U2c7RtCK1YvYkKYwYuBgeAhIRwWBKbaXCX+fzrF6ZG+Tsx9vFOwtjwedOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Thu, 5 Feb
 2026 07:36:27 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 07:36:27 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [v3 11/19] drm/i915: Remove i915_reg.h from i9xx_wm.c
Thread-Topic: [v3 11/19] drm/i915: Remove i915_reg.h from i9xx_wm.c
Thread-Index: AQHckWIP+Bvhtldb00CiXfdOcTdtALVxMSsAgAKO+UA=
Date: Thu, 5 Feb 2026 07:36:27 +0000
Message-ID: <DM4PR11MB6360918FC62B9E4396DFC942F499A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-12-uma.shankar@intel.com>
 <aYIh6Cxo4sCqNK1l@intel.com>
In-Reply-To: <aYIh6Cxo4sCqNK1l@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB7965:EE_
x-ms-office365-filtering-correlation-id: 0b6b9804-4354-481c-8ba9-08de64894590
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?yn6CMqkzt96Or7OgskTgaENFD+8nhwQfZHnVSsXoET3VgpasUUxuSZKWHE?=
 =?iso-8859-1?Q?Xa5IGHouqWvy4rDvdRGQiXOfulqFr0TFSUs62CHodSml+BeNOsADBLA5Do?=
 =?iso-8859-1?Q?MyJddpxel9StvP10lZXIkXumc55JXYhH1UDd+LGzjx9/g6RCVQ9t44MqDR?=
 =?iso-8859-1?Q?Dhxlqc1/9AlnLjEymaUorY74x4P0WZDOEpKUI93gmXYby7cHy/IboNa0ht?=
 =?iso-8859-1?Q?9QW4kAoc3G9jBzQpnSSoAjeJOOSi7+BSAER/E9QWrr4Ouba6TwaIZdzGBh?=
 =?iso-8859-1?Q?GnX+rIhTh8V6Vu5dQck4MkbsGpa7UsfMjGCNIODyR9oEUBl8FW5qddYiUl?=
 =?iso-8859-1?Q?xaiZqMzT9NQ1v4FFOX8WVKKnkN7tPpoqdriBu9FLkruYkHptc8blajeEY+?=
 =?iso-8859-1?Q?gLH5gW70nPt6DUJIxl5oNZHus9j3ijs9GD2TP2BPxfowBamr8x9bpR2yd9?=
 =?iso-8859-1?Q?T9NhXXEz+zzOeY+ykCCx4GQN2ZiSPUwk393YbmPX0uSC15Q180+gUr6rRj?=
 =?iso-8859-1?Q?5k0+InZv24dq8mVFMkcBCu7yPmrlRyYEPCftIs+MfaqayFsqCAp/KVWl7Z?=
 =?iso-8859-1?Q?MOA7kfR5/m3OoB20EIZLDkGiBkezNJrrd9SBq5KUuSJMMqb72Hi08CDR31?=
 =?iso-8859-1?Q?ncn5GCidPTdW7y5BXoO8zUd+nTvEusDD6BiyJnJsyZ7XSvb4E4ggJ6SgzH?=
 =?iso-8859-1?Q?on4wdjT4Ttq/mv+Wdp42lH7JaM+8y1X2VC0UZtvoho7vREhojfAd7xpmzG?=
 =?iso-8859-1?Q?DRFwUZCS7TrAF3T2Ws0z+7rxXhiZdfj+Sql6VfYCV6ghU/kIsvDyccABHO?=
 =?iso-8859-1?Q?8BnGjqmIJHw10PxKdAAHpW96MCbkH4sK+w1YtiStArFwiPHxrSf3DPXeP4?=
 =?iso-8859-1?Q?FMijxsCRcfeTbqIP93BJlv//ZdXiuEQVpX3DfqdCGXlb6iR+Th1Tkhqoia?=
 =?iso-8859-1?Q?6MBA51mgzA0lUM0pv3Jqi7UcHWcsDGlCkUP2m9TyR+8Qk6dSbO6zsxDbqU?=
 =?iso-8859-1?Q?yUnHx/VlfDvGk8JnD1vVI/YTZbfX3ZwTZ6EN2c7F4mP4yyc7DO5uOOBIen?=
 =?iso-8859-1?Q?8idI7dFLkwnMAousrbQDTEJsar1keIDBG+pSG/N0RGH7ZD9Zjkr55bBzcS?=
 =?iso-8859-1?Q?73bb9cW9LhGmRvlsfkU+1ktYtwylUOuckpG7VCyVeGtvJ0emTjWJIkHbSQ?=
 =?iso-8859-1?Q?aLR6OcpUWyhQEvT2RntcxF6bp4XlqMc+idQ6ayqdOBPVO0vFlrKJcr1HK1?=
 =?iso-8859-1?Q?v4+CCM53CkGp/1dPGipWLtu4ID8T0ar8XmYhhYWAjFR7WMyVfKqa6r8n53?=
 =?iso-8859-1?Q?xZsMJPV6tA9Tk9wR65DeoRkeqLv2yYdxlj5TKTCZ++aC1n2reUbXaD/Kx5?=
 =?iso-8859-1?Q?JvsgRTXx6c84JVC1Ko3zfBh/s2Mvs5pFJxI/qk79kANsj16nLTqiNr52ZK?=
 =?iso-8859-1?Q?dsMGjbBxGssumDufIqnlVoiJrZzA7KZzzDB7QTAXxC1hT9wM5CSEYQ47ub?=
 =?iso-8859-1?Q?pmcyPBO88PaHhzVCjKDDDkxFWrpLDeqykJXF2wIwhHflW25NDmKixFpKJK?=
 =?iso-8859-1?Q?+2dEQhp31xRBk1VvP5fyyL9oQck5J4KA1ZLvwNWIy6tenhVZltiSA33HZQ?=
 =?iso-8859-1?Q?9NOO67s3Vm036rMZUF4JPI6TCY6yRxZ2c0omE2i8hHIwF/gMjuwp6u9Vga?=
 =?iso-8859-1?Q?qGzVsVerNnvRGd/STP8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?I8n6A8HtinaeBVA6UGnAAnN7WwWEIIrVNEgo4IabS/pq6bXdasPVF2ovBP?=
 =?iso-8859-1?Q?lYFR6vXPm3ai881OMqcKUzttMY7uwAIm3o2hemAjYiwldP3pX+zXD0xaxC?=
 =?iso-8859-1?Q?189PbT91o3R1mdigNcyH102Y0K+MUXBTrRI5Nm04IX+mtI7ep8IQMySK4U?=
 =?iso-8859-1?Q?ORZ72Dd4907II+Z6fEX+nTUb0r2Yeklhg7aBj0tZ0wPRjke+6Cef4Puf/V?=
 =?iso-8859-1?Q?QwXMpz043OoburJQSy6FXrnb8moffKbtFcrXuEhO1yhjQjvsv+D2DT/6Sv?=
 =?iso-8859-1?Q?IEl8rIy0vwQhL6N0x2E6TIjn9OTtCASmGFRcGvTzd2+4uG6CRzArcncrWN?=
 =?iso-8859-1?Q?DHaLX+hialt+9aFvWWdyp/NOiY73C8lrgpUFNKcRtSB3IEgRr3eL5VZGpQ?=
 =?iso-8859-1?Q?QTmh+RcTungNaEq1fmW0xvPhd3DFOsifgICGrxN1TsiVxS7qXazQHQHQ40?=
 =?iso-8859-1?Q?r8bEFLg9LTauznXqF+/cqQx3quPDeuQuEptuTpTas328BXSiJ09W1fcd6c?=
 =?iso-8859-1?Q?puQ8ag91D+G6g0UlnAH9Zl9tV/h1Gs1Qm9e6INoE2be2aLXzSTuwQ/mdv0?=
 =?iso-8859-1?Q?aXjtah1uB2/NNw8KcrrOYxzs15QZoPImDWb87gvux9RhZgSL7y6jy6xvQq?=
 =?iso-8859-1?Q?Dk0mB/Y82syZx3vvI7mbW2VZe1sJPxkiI+fCqvVH1L7yVdTWowp3ytReWL?=
 =?iso-8859-1?Q?ldq3SQADqjmiaSZNs/3hCXkJcGvYanQ/9EjPq0ABVb5l9bmko+ag916tSt?=
 =?iso-8859-1?Q?4ye3NQp5P7KB1G50Cw+xYZ4MVD2g7nGOY1jYUDOhYr8obPCdnL5P6+mdJL?=
 =?iso-8859-1?Q?MkHCHIbmBOdrsWys07ZygtvPLqWbmEfx3JLJRNuYQUSihiXK6Nq1+adE5X?=
 =?iso-8859-1?Q?x69XGjwlThe78x4+RvrGmtZrqQ7qbTG9x3WjBWGEKplXXUOvk1JgldsHxY?=
 =?iso-8859-1?Q?croZGXdF0K4xTv0UKHhoXFoZOvrKMPfc/ku8/eOHC/T25HEhEJirq/fFkY?=
 =?iso-8859-1?Q?I3yJNxUcsJSxTzOFz/MZZlMlthGuQzTHLhvjPZy+L66b+CO3KfDQlViVNN?=
 =?iso-8859-1?Q?w439Ea+aINEeOgZaUjaMhTdlbYuP6khp8Y0KwkY6mNcQQHa2e1s3NJRmZE?=
 =?iso-8859-1?Q?hCRgCJq9x8jxaKwv64q6LmOmSL9pNPtVYyXUyjtlnK6jCZcL7bBV4pgm0m?=
 =?iso-8859-1?Q?BShkQjcMyQeIAiDGKWmf71PX4M43uRanyrKEy7TtXb/Uj6Mpz54jet2moS?=
 =?iso-8859-1?Q?w7Bi6Zf3fLlj6jeaRManotZ7qEOmqfbwkzUkY9lceWfD5PmB/vSotjauly?=
 =?iso-8859-1?Q?U7u8iy4YhNCRrTkbVg7692/IhISbtbTJpP4+G0OoH8CbZx76MiuwxhHfG6?=
 =?iso-8859-1?Q?B1SLdA8RyEgevl09zNaD3Z5bvHbrdXkt0flccxn0zyYhztdjBdbWQG58Ri?=
 =?iso-8859-1?Q?G+No+2yTrvHA/jOiWpRkftA84lg8zOQf+KX4mkj267sULEe1TfF2hGSWZ+?=
 =?iso-8859-1?Q?rMv17ho3770TVCStxd6XzwAoitQ7kWDGKqEquGHZlTrsYOcze/Cej0zTq9?=
 =?iso-8859-1?Q?llFpzon7phzF5QxvAJU6JusGLt4l47tiMKC/gklKmzMBjXrf2/n0nDcHgd?=
 =?iso-8859-1?Q?usmXAgTSuTXzYTbzxg3rt5bKgg5MSVDm6KC0jjZw6TXeKCpifkMqm81IA+?=
 =?iso-8859-1?Q?xHoXlpXeYe+hWGRfMA/PsI51HKc6hrUtOKCkwt6UsMOtbSi1KEBVzWc4ne?=
 =?iso-8859-1?Q?eAQ7QX0xXcCBvM5fP4L+seFtWaVqCtiUWeKAfmYiiCzZqy5rx9AtcLidOz?=
 =?iso-8859-1?Q?pl58fKzllg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b6b9804-4354-481c-8ba9-08de64894590
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 07:36:27.3375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IdrygRXmJumQ6k4VtOTC49TPV0D8CfbqRodKFwfCYjPa6QSnzoM+Dw2Dp5Byi91zENl8l2H0k7W9PyrT1e1JoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B9A8EEF78D
X-Rspamd-Action: no action



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, February 3, 2026 9:57 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Niku=
la, Jani
> <jani.nikula@intel.com>
> Subject: Re: [v3 11/19] drm/i915: Remove i915_reg.h from i9xx_wm.c
>=20
> On Fri, Jan 30, 2026 at 02:43:50AM +0530, Uma Shankar wrote:
> > Move FW_BLC_SELF to common header to make i9xx_wm.c free from
> > i915_reg.h include. Introduce a common intel_gmd_misc_regs.h to define
> > common miscellaneous register definitions across graphics and display.
> >
> > v2: Introdue a common misc header for GMD
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/i9xx_wm.c        |  2 +-
> >  .../gpu/drm/i915/display/intel_display_regs.h |  8 ++++++-
> >  drivers/gpu/drm/i915/i915_reg.h               | 20 +-----------------
> >  include/drm/intel/intel_gmd_misc_regs.h       | 21 +++++++++++++++++++
> >  4 files changed, 30 insertions(+), 21 deletions(-)  create mode
> > 100644 include/drm/intel/intel_gmd_misc_regs.h
> >
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c
> > b/drivers/gpu/drm/i915/display/i9xx_wm.c
> > index 39dfceb438ae..24f898efa9dd 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> > @@ -6,8 +6,8 @@
> >  #include <linux/iopoll.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_misc_regs.h>
> >
> > -#include "i915_reg.h"
> >  #include "i9xx_wm.h"
> >  #include "i9xx_wm_regs.h"
> >  #include "intel_atomic.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 0164dcbb709f..680020e590cb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -4,6 +4,7 @@
> >  #ifndef __INTEL_DISPLAY_REGS_H__
> >  #define __INTEL_DISPLAY_REGS_H__
> >
> > +#include <drm/intel/intel_gmd_misc_regs.h>
> >  #include "intel_display_reg_defs.h"
> >
> >  #define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> > @@ -3119,6 +3120,11 @@ enum skl_power_gate {
> >  #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
> >  #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
> >
> > -
> > +#define FW_BLC		_MMIO(0x20d8)
> > +#define FW_BLC2		_MMIO(0x20dc)
> > +#define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
> > +#define   FW_BLC_SELF_EN_MASK      REG_BIT(31)
> > +#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
> > +#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
> >
> >  #endif /* __INTEL_DISPLAY_REGS_H__ */ diff --git
> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 6cb72e6e9086..b4b749e52b5b 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -26,6 +26,7 @@
> >  #define _I915_REG_H_
> >
> >  #include <drm/intel/intel_pcode.h>
> > +#include <drm/intel/intel_gmd_misc_regs.h>
> >  #include "i915_reg_defs.h"
> >  #include "display/intel_display_reg_defs.h"
> >
> > @@ -394,24 +395,10 @@
> >
> >  #define GEN2_ERROR_REGS		I915_ERROR_REGS(EMR, EIR)
> >
> > -#define INSTPM	        _MMIO(0x20c0)
> > -#define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
> > -#define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled,
> pending interrupts
> > -					will not assert AGPBUSY# and will only
> > -					be delivered when out of C3. */
> > -#define   INSTPM_FORCE_ORDERING				(1 << 7) /*
> GEN6+ */
> > -#define   INSTPM_TLB_INVALIDATE	(1 << 9)
> > -#define   INSTPM_SYNC_FLUSH	(1 << 5)
> >  #define MEM_MODE	_MMIO(0x20cc)
> >  #define   MEM_DISPLAY_B_TRICKLE_FEED_DISABLE (1 << 3) /* 830 only */
> >  #define   MEM_DISPLAY_A_TRICKLE_FEED_DISABLE (1 << 2) /* 830/845
> only */
> >  #define   MEM_DISPLAY_TRICKLE_FEED_DISABLE (1 << 2) /* 85x only */
> > -#define FW_BLC		_MMIO(0x20d8)
> > -#define FW_BLC2		_MMIO(0x20dc)
> > -#define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
> > -#define   FW_BLC_SELF_EN_MASK      REG_BIT(31)
> > -#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
> > -#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
> >  #define MM_BURST_LENGTH     0x00700000
> >  #define MM_FIFO_WATERMARK   0x0001F000
> >  #define LM_BURST_LENGTH     0x00000700
> > @@ -834,11 +821,6 @@
> >  #define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT
> 	REG_BIT(14)
> >
> >
> > -#define DISP_ARB_CTL	_MMIO(0x45000)
> > -#define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> > -#define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
> > -#define   DISP_FBC_WM_DIS		REG_BIT(15)
> > -
> >  #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
> >  #define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
> >  #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
> > diff --git a/include/drm/intel/intel_gmd_misc_regs.h
> > b/include/drm/intel/intel_gmd_misc_regs.h
> > new file mode 100644
> > index 000000000000..377f4e383699
> > --- /dev/null
> > +++ b/include/drm/intel/intel_gmd_misc_regs.h
> > @@ -0,0 +1,21 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/* Copyright =A9 2026 Intel Corporation */
> > +
> > +#ifndef _INTEL_GMD_MISC_REG_H_
> > +#define _INTEL_GMD_MISC_REG_H_
>=20
> What is a "GMD"?

For all common ones, I have used Graphics Media Display (GMD) as referred b=
y
bspec as well.

> > +
> > +#define DISP_ARB_CTL	_MMIO(0x45000)
> > +#define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> > +#define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
> > +#define   DISP_FBC_WM_DIS		REG_BIT(15)
>=20
> That's just a regular display register. I suspect most of the other regis=
ters relatd to
> the arbiter/etc. are in intel_display_regs.h

Yeah I also thought so, but this is used by intel_ggtt_fencing.c. Hence had=
 to keep it
in the common header.

> > +
> > +#define INSTPM	        _MMIO(0x20c0)
> > +#define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
> > +#define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled,
> pending interrupts
> > +					will not assert AGPBUSY# and will only
> > +					be delivered when out of C3. */
> > +#define   INSTPM_FORCE_ORDERING				(1 << 7) /*
> GEN6+ */
> > +#define   INSTPM_TLB_INVALIDATE	(1 << 9)
> > +#define   INSTPM_SYNC_FLUSH	(1 << 5)
>=20
> This is not even a display register.

Yeah, but this is being used in intel_display_debugfs and in i9xx_wm.c.
So had to keep in a common header.

Regards,
Uma Shankar

> --
> Ville Syrj=E4l=E4
> Intel

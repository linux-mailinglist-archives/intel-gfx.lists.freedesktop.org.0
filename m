Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69086931F8E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 06:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B35310E2D7;
	Tue, 16 Jul 2024 04:06:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HBrsKB4z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA51210E2D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2024 04:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721102805; x=1752638805;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=02j1C6xMSjW3puiYPh/wgMk4Zkcc105fcbH0g0FrzdA=;
 b=HBrsKB4zHkhCUGgJkTBDcnd8KB1Q5bkd7USrB1KqLfYZ3Dm3ywInLmzU
 5VHR453PEIKDg6Tlogqi/6KecR2/xQ7meEltDguHl8QTF4bErhBLQGLXN
 wRIvuZE1YlrKP8lpVV1Cu81AQ+S4GetBgzjLOSZbahZPw6933XbGXBkZZ
 2kKgX/sIek3GcnuGk3vnfj+XxwzBFvZm1tlisrjxjyJTTNNkAxAEceTVI
 GcAoKu/8WxMQyb60upYIQU6In1mYeu0gg2/835IyjZw5yGkeCnZgMDwrH
 6p9RdXk3qjDZcE7Y4siVx10U3RsKHWxfwiNwmQqflKaxkKpPhRAhlDHEw Q==;
X-CSE-ConnectionGUID: wxzHJjnZQfGeoi+yGTzfhw==
X-CSE-MsgGUID: qnzvxGQKTJCVAhHMOUaSPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="43943013"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="43943013"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 21:06:44 -0700
X-CSE-ConnectionGUID: Su5nLV9ZTWuiZAtStwePhA==
X-CSE-MsgGUID: 2zuhK1I/SsifUj0KkUTp3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="54124383"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 21:06:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 21:06:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 21:06:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 21:06:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 21:06:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TchCU+IWobRSPV59h7EjhBFn3I0pr8P78UKZVdwAqmhEqNYdfv9qZQT9xhukzmE+NYupzZJa7MTE1V8rvyBl2tjP1M3BFk9081OmQO0CIxbU9jgEYmx3L7RLGDHPC7kXgRQiwWC/R/Ea5mcxAsGZ8GVqHvHg5qjzAwGd6KjahoodEK/fxzXIQjAfEkKt22Iq2L9zwZq7peed4xn7G7JoRYbqJBnci0sTIRDu1ySzPU3jVKGFwT3mAbtITz3+zrNguRdBqJ42bdhB+mGp1CUBUScTuCRVQJ31x95oKJPukHPbKAkfLY6B35HXhAu9J4BEW4IW5Yjcp6r7DblKue8FYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sklf0ZXU7ehDrwljA88wqnX6po1OtamieduTyVLwGts=;
 b=F6/mHtIq1bq7IQ7vjnoLuTKgwgoZ0gop96vOXggjzbehFnje28T+IbtpdVPUjKFR/ZHj22iUv4H+KwevE+HVgMTA08sh6Wb86N7HbteZMLZizLm8XGW/NixQ3xgcHgge3uKMvQKciv7N/JnzywqmbH2uuAo1F0q3MKU4EokwCZRm4IH5N1Y92P4H/edV6xpoO6QKY1pHei2NFyhlg9ezdbb8BfPpwi9LTDpYG05HsWi0sFhZg+rO61BPvmzvrr+m0P0TWbDne+vzKY2VzhnH7Jh1SxXi4Bv1RPYA7ZSE84tqr+6u0nys8rawRKtNnCZCKOU6gle5QOZ4h2nofgMBQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MW6PR11MB8337.namprd11.prod.outlook.com (2603:10b6:303:248::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Tue, 16 Jul
 2024 04:06:39 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7762.024; Tue, 16 Jul 2024
 04:06:39 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 04/10] drm/i915/vrr: Compute vrr vsync if platforms
 support it
Thread-Topic: [PATCH 04/10] drm/i915/vrr: Compute vrr vsync if platforms
 support it
Thread-Index: AQHa0a/Mqfh8CaAGykmhH4knjK7h5bH4xxcw
Date: Tue, 16 Jul 2024 04:06:39 +0000
Message-ID: <IA1PR11MB6348FFF145FC655B1DE4A520B2A22@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
 <20240709032651.1824185-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240709032651.1824185-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MW6PR11MB8337:EE_
x-ms-office365-filtering-correlation-id: 5358779e-b9ea-4061-60ec-08dca54cb18b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?AF9u7TY7XLgmu8j9bjlr1DV7yfAQeVS6Zs1953PeNDeFOtPm+UJhMgB3BrDH?=
 =?us-ascii?Q?5cCCqD8aWzZvvccaALyRG1u+ItCOy3zyTFQ7f6Ilj0kI+Kn5FwSfLZwmsMIP?=
 =?us-ascii?Q?IMOzrNYkKMsanvx6swip5yN9NsYK1TFHHXD3aoKr3YmQCmUqlXPETABEVMCz?=
 =?us-ascii?Q?TsVOpHWaY3e3hM1L3aCHd1RH/D0s8tQ6oQgQqg8YquSYf2O6XrStotIFgGgb?=
 =?us-ascii?Q?6Cr5bPw0xy48u2regxs5b6cmO1hKCxjvg6z/x7fHWNtRoe1tNknmxnvSnoRT?=
 =?us-ascii?Q?tOzW4ZlomNzhguqQZeLEGtpxbB+luS6xM7OVSgoSiLRFN6eDGIoiftfXyXrR?=
 =?us-ascii?Q?MRsylVz70WezL5ptHazMxjpFZ5FELfklUqj+WnlAdwUJEiRp6LASBlT5xC9w?=
 =?us-ascii?Q?hF/U/aQvEvmdOeH4X9piJOkdc8r/qxTEh1bnuGOSxuXIyDnjwU1bS4kRERM1?=
 =?us-ascii?Q?sr0xvT3TW+uJj37Ao5gSYEjHboLkcAuhcnB2mT/4tqJ/R/r89FNsG/nmEOcz?=
 =?us-ascii?Q?ZXlk2vN8dzzYWIB4v4fBBiddPTgxcixcwqvcB4wZSVPclAJ4CKBpG0F1FJdJ?=
 =?us-ascii?Q?POJ1Ehsrwo1B5NKrZmBUV7sPaeEeP0ADB5PGcUrCE/tubH1CvCt/5BNvM8mu?=
 =?us-ascii?Q?E2+R2tYqEfE4W8XMveF2BBvnx+F7ZouTX3Z1zbk6fy+SpLLagNgbpahh7vHa?=
 =?us-ascii?Q?9WkG1bDQsDwInY+kL134wXmih9eBYnGZ/FhzTo7cr79DrUjNUj/d9F3jY6+c?=
 =?us-ascii?Q?kPlGq8fj9qOWvaOeeTsL0cAu7mvTxQfV5iqNMOedeczpTEEYQA+ssDFm7PD4?=
 =?us-ascii?Q?2EQqVhOYp9ubyaRr+LMuqpSIdzTYGxPhfTFaEnhptayC1bBiEo9BhoBe0194?=
 =?us-ascii?Q?86+21EjJbSa79Tcs7zzCdTeIX7qIZYbiYOcwLLN1tmHeA9aQrw76xd5nV5ta?=
 =?us-ascii?Q?JBvftgoY/KPVlBVvKzlw7qdBvZVnAdZZ/HEt9Qop0FfFeRmw1jID2tbDdoWo?=
 =?us-ascii?Q?UDti6jv8SPuWOD4pqwlYmL4D/zlx6rpP5VClheZhDI+EdSVYUZTNLj+UFCDD?=
 =?us-ascii?Q?Cv0Owhwpux5W+bZDaEz+e8A7yzVyIvlo+lACk3q7lDh8UUE5h4MQbm/PfCDD?=
 =?us-ascii?Q?cXUwk/RUBeFUUl+Bbm+raukOld+0kVmfBGoMmn+tt+4/KxO/t7+HtJUAsdLM?=
 =?us-ascii?Q?iQcTw8oqNUWDpDM8AAcg5jE8bKBAGPSZuIRBB2Y0DPhKrFUnYd1Z5Vuc3YXM?=
 =?us-ascii?Q?1FY6YzTUI5hxePYS73e2GNvNUDfQe8WKnGC5zfWINKPtvk8eaeNoLz46A2jE?=
 =?us-ascii?Q?anmuO1OKl8I8+HttWuT4gLuYLZa3ESMQGDm795GfCPaVPcaPYlgkCya/6Uke?=
 =?us-ascii?Q?U3Ft/Ob0pdUKh7JRCuh7uO0cmwZi3tGYPDX3yCfici3CcLbGNQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AOxfIj+IoFtDDiQ59NbynmTvENclMhapnetUsOXlDht6EAt7SoNKXdrAQcgw?=
 =?us-ascii?Q?DG7Vw8wUefwYj5gfk+7OpWuGAbnMJCRjaA4k4JZc1wEqpPfnVm8AgvYMVS2T?=
 =?us-ascii?Q?UpaZra2qsTLr8LgzEmGQL++tPB0JEgLgsLr4Ojbnf+ZgmKieGC0G1ShBC1No?=
 =?us-ascii?Q?Qg6Avwqq3X2MPbK/K9SCnZ4cMT6kBqCOzmZvJ7pk1lgmdDvI72mFP7gwfO6X?=
 =?us-ascii?Q?w822HW6Um65l9TYWBxWbigsM1/F1kzUn4z1M2dkWa+uDdOas6wkW0xcrWrv1?=
 =?us-ascii?Q?QGIwjHHXtC+x/l/pVwDreNoTHNjRVnkdg9RXbi/TaHYqLHNHw/umYj4JY26m?=
 =?us-ascii?Q?JAGpooQI0mjZZxviqphTjZe+t4jIADWDEpY7bvqqUPvtaGThuHEpQ1PGa0+H?=
 =?us-ascii?Q?y/19bvy970Ceb+WeNyo/WNexWBGwcqLjtBBloYPjuWUf71BlUE3lZWHeVeMt?=
 =?us-ascii?Q?sdY9kcHhNegPbci79WPgxM7maTHznDco1D/NtM3CmxJ+PoG0SA80MgKWbcQw?=
 =?us-ascii?Q?5oOzApOiQ7pU5DrZhfG5vAqAJjquG9KmcRb5y3gMW1uc436u94a4DVetU1qa?=
 =?us-ascii?Q?iiAhDHwayykBAc5MWDFE6Nb52Btajt+VKhzbXW3z/9hn+Y8pzbyvL1b3W4wK?=
 =?us-ascii?Q?6Sb46PuSbMyiKJHgxP/K/UIvP8LatYRTOl/l0A41rmxMGaWxhlZ7aOy+Lrza?=
 =?us-ascii?Q?eQbyBUwIkCmA6/fYDsJKGZVegd/2YrlnC92FhIclOCNEFVUe/eeO6SnW49WQ?=
 =?us-ascii?Q?IB/EHRVbDx5voe6cFqizhlXI+wBnEmtQpb46TH/Ijj77iz7XOu3DtFzV6s1t?=
 =?us-ascii?Q?rp0Xt+0QoVbf7uMxNVZOJfFwA8/I6ZB+auNEPL+CDu738hPAzxm4TWQIzNlT?=
 =?us-ascii?Q?6u/KsVGGFGFYjh0P7Pp8fApO6bWG+bPg1e5ughnwDHuuH6HdcUrS7PhiK+RC?=
 =?us-ascii?Q?TVjrbvwU63xyNkrOPUnC8UTipYqW2dufosnMyrwK6qzjJa/4005J9ZJh3Ssn?=
 =?us-ascii?Q?GKLhfhVS9B5P68rtBkdP2wCJ8fEQzdgcT3ml2Xh2hyoYgyxWW499lNXfxWwA?=
 =?us-ascii?Q?D1nDwYH/17R7dKcPTd+g8vt0ySilUkPqNVk3bNuLoRR1t5x4eangh6fxFy4g?=
 =?us-ascii?Q?fR1nfrbBmxUC8o+dH+ovqya1t0QADUv17oa50O1SAxVsf69lAyeRDjU2YleS?=
 =?us-ascii?Q?i7Agei8Fld908Uw/zJQ8hknUnIf3Hmq6G6ti/aPXfSdj4aoaQgcLCfq5Li7Z?=
 =?us-ascii?Q?HcrAj2OuHNYtcbTzPyK4Q/rL58SRCoMO1Bta6jVuGvY/xGqkyD+/p4eLGv5j?=
 =?us-ascii?Q?4gwvVHrSJlurgBLAZSyEyUCxif6NzASL1KQwUZ0mBfKzc/ZzULRg8EgPMcpT?=
 =?us-ascii?Q?BUiLNt8zz3pjOUQa5zYhnBZ1dd7KD6mVQx6wFYqOp3V9GYgiYxDPqgs192X+?=
 =?us-ascii?Q?oIGYNklcTTgFXxQ47LOaapCtUnAhdd/g+g8z2ahe9AzLTI1OpB4RPJKU/6R5?=
 =?us-ascii?Q?rxehOBaw+9VRv4b7bbusbDK5wKb9RxpBCaaahc6J+q31kDfXt1Gz9zGLo5FI?=
 =?us-ascii?Q?CEwmFdSliTrgIgn/eRe6fvR5guSo8vGXVgrptYpZUUVtsW5XLWtx5llwPWVt?=
 =?us-ascii?Q?+xdgLpWfuLMZMOmxjftA0Xc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5358779e-b9ea-4061-60ec-08dca54cb18b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2024 04:06:39.4546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dTobH3YQb8mD3/+OdeIB2ef5x9aeMEdv8b8qWHDHzqPULNGqZtbiHnlLUX5VdfIhDme4JqHMzg3sv7R9ghRt90Cw3WBSDacvXezsE1xUMVkbFU+clXgUXCx4RlqRut+y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8337
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Tuesday, July 9, 2024 8:57 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH 04/10] drm/i915/vrr: Compute vrr vsync if platforms suppo=
rt it
>=20
> Previously, TRANS_VRR_VSYNC was exclusively used for panels with adaptive=
-
> sync SDP support in VRR scenarios. However, to drive fixed refresh rates =
using
> the VRR Timing generator, we now need to program TRANS_VRR_VSYNC
> regardless of adaptive sync SDP support. Therefore, let's remove the adap=
tive

In this case still do we need to add source check for HAS_AS_SDP(i915) ?

Regards,
Mitul

> sync SDP check and program TRANS_VRR_VSYNC for platforms where VRR
> timing generator is used.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 24568dae717a..43b772f91556 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -233,8 +233,7 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
>  		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
>  	}
>=20
> -	if (intel_dp_as_sdp_supported(intel_dp) &&
> -	    crtc_state->vrr.enable) {
> +	if (HAS_AS_SDP(i915) && crtc_state->vrr.enable) {
>  		crtc_state->vrr.vsync_start =3D
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>  			 crtc_state->hw.adjusted_mode.vsync_start);
> --
> 2.40.1


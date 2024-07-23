Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB4C93A0CC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 15:04:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7444D10E5B9;
	Tue, 23 Jul 2024 13:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IwOtchZi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4226210E5B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 13:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721739849; x=1753275849;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gFhTPydNgTVx+B6obfSnEhx2xWxHyjb8i2NSAk0JjZk=;
 b=IwOtchZieWkadKdnmwETiO8IOz8Fcf+y5wOax+evYoseyu9ivhfJyqK7
 RpGFK0+wh5ZUHBcA/axwoIGSz+flA6dFYL6D7Lon9gVIQG/5BmzM6m4hv
 mYykFlT/Syn11rmNq9ul0c6QpaYXLUOjxlMpWGpRibtmgVzfNWteTO5Jb
 uAW6h7IFCYF2l4hJjnWu8tlcqoDpW3HZoh1X/EF1c6YIsJKDSlraOI9Fc
 JgGhjnBIUuRjeLefqHpkw/CX/IahuGD8OhoiAZkFmX/msXZvEz7qlsJMX
 2iiK+laEEyXcZSL14sbClnag4dD3flXmLlkAN2/LVp8g0FYR2zxtvpthy Q==;
X-CSE-ConnectionGUID: olZimPanSNa6H1f3L2tOxA==
X-CSE-MsgGUID: 8BPiVwIbRAqRYB7M09L6Gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="36805147"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="36805147"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 06:04:09 -0700
X-CSE-ConnectionGUID: 6IYxTDwYQuyCrP5iMasMxQ==
X-CSE-MsgGUID: vsBNVRc5QZ+rrzkhpCVzIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52121496"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 06:04:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 06:04:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 06:04:08 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 06:04:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ONDvoETBhYDQL+pUD7f/45qUTNkN0FdM3sbSy1Ucfu+uoP2aALqmU2RsixUMiUW+O7tu1TwgoAi6ON0QGTxkPf7kkMwJKBwcPLoONzh7O61JjFJLquHm/AUCccl4DrAKgdE0C8RxPlD3hdm2S+Ob3z0dkPdDyod525VLIdesWZRqqYRIZkE5aVSL+qAI0oezvPOxozxSxnP7JN8P9u9RGu9+RYROV2pK1rF7gCLUAicuhy3J+LfLw8ujzF4QwY0ek2GW7Ge/A6bKKQrVl32VMIGmay05QeD6oMT2+zGEM3G/xppgSIaxma35DbifIYrjC1b3QWlvvNWVxHsKYjhfhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O+2pIoD66FrQf/wPo8FTodVj7Rb39JjYfpMQtSMVd5o=;
 b=zHZ2fUv+SD5lqdz2EhJaenIgudFUmVI0GxwiSfrK5epHmhjQ+glwcHLF+dD4mjPHNmMygbZvrp/CJnMfisEuy0LAteqK5INl73DQQFkKGO/Mhfafmpta3BkPaT7KI7TOfGO7h5hFyG+M06C3+sUBATWvk3FtPgdtQFruKY9ffVaZhOGtlw+9dJJEx1gbi0NFtKexaabEhw8V4lH6hvRc3uUvBBRey0UTU/e+HZ6oCxR7WPmB48L1BSHTwAiO21iucVOLDyEv0T2QT7Trt6d1VaT6AJQrOw7TSjZrM1L81evEN3Xc41uAS4UyHT/iYNNMNclx6faHZntnxJBDqhD1uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB6285.namprd11.prod.outlook.com (2603:10b6:8:a8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.15; Tue, 23 Jul
 2024 13:04:05 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 13:04:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 04/14] drm/i915/ddi: For an active output call the DP
 encoder sync_state() only for DP
Thread-Topic: [PATCH 04/14] drm/i915/ddi: For an active output call the DP
 encoder sync_state() only for DP
Thread-Index: AQHa3FfrG5yxvLhj5kWp1oeVuGeyVbID+6YAgAA6UwCAABKKgA==
Date: Tue, 23 Jul 2024 13:04:05 +0000
Message-ID: <SN7PR11MB67503D7321AA8B115B7DD1C6E3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-5-imre.deak@intel.com>
 <SN7PR11MB6750B3CBDD10FF98D612B48FE3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
 <Zp-aZLH5kVF1RTYF@ideak-desk.fi.intel.com>
In-Reply-To: <Zp-aZLH5kVF1RTYF@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB6285:EE_
x-ms-office365-filtering-correlation-id: b8bf186b-bd36-448f-1cef-08dcab17ee61
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zPpKkcreQWZ3hs79hoqTbj9WL/Kgi3AQgxd7ouZQV1aOkFP87HOu0+1Z/oRb?=
 =?us-ascii?Q?bpemZ8X6kV2F3cOUKqKX94NXuSZ3ZHghFD72j66qQTHRVxnTVm6fmlpNnxGH?=
 =?us-ascii?Q?/wlxNzaIBFUsHvQc7FJR6i36z9WtU7TFgU0OFuNiXPn3xbGwBDP/ABe+s7eO?=
 =?us-ascii?Q?W2lK3vDz0dzp02nYXni4zVlXVhc/hLBXCfvFafXxEp2msWom/DaTEXtQazZn?=
 =?us-ascii?Q?NSf7wwdXiQ5wZBZLsc4T+JbqFhJe6tuvsk40ue/V4m4+tdWUajiL52tjCXTJ?=
 =?us-ascii?Q?63QULbvppbmiLAtnlpkvFGT/JjRJPhkuOTHFv1PaoedUO+dwYR40vhNVzIHU?=
 =?us-ascii?Q?Y4uPIWWWhzaQPAauq9EYR8BdJdT33uqN3UGSO1uWQZL+KS6GK5s7D3JNQJrW?=
 =?us-ascii?Q?y1uyS4DdTtzR8aZM4O9PXwy4OmqeTsW467AFjBKG7YZtAH0CCpvmvNfrVaO3?=
 =?us-ascii?Q?Kf0kQyMVoPn4Aeu+j90IOB86wHxIWonlrniKeGu1YAWszeAWu0EInQa9UBq/?=
 =?us-ascii?Q?jxCvqDsgvAWvvcbzC6QWW8pdAcQCulkaLaUpMeehfduACMVMNWXyMIty9hd9?=
 =?us-ascii?Q?6TGLFD/hkKxiZUpjH5oG2UAmUkxpQ88jvTsJro3ZDTKGLgq8o539JAXX+JDs?=
 =?us-ascii?Q?3PNxLFn/khDAgP6zbvh6d9qtlgDdSVVv+JsmK9blA7ARIabhhumcs474epHD?=
 =?us-ascii?Q?hvp9mbtiK3Mud85HmrMb5ALRQJV6n8KMOWTi0EK0StkEi4fBcb00W+6LlUnU?=
 =?us-ascii?Q?zZycahVNwmtnXulvElQ+IbR9g3keUkI2r86fXUPA2VWp5PQSXYcYgP1acILX?=
 =?us-ascii?Q?avl72a5bCwfK+R3tBk6AHl+pH2nugJlOTUa6+qJsRIFrubXsI2u7HMFN6/ia?=
 =?us-ascii?Q?FqpKkQYKfLwbW6jKcGqf6VzROEfPw11u8QKM+RrPqJXfg5BcTTNqK3Q/+NGI?=
 =?us-ascii?Q?EexKUa/JtOS4UUu8gI6opoQzgCDVwNiBVWirOADjG03rWOVlOwYUL+uE7e1v?=
 =?us-ascii?Q?VyJXoH+WEMXBoUVXakiBLDzbL6MgognpD20mWj1uUkj4FO4ZH6kWWd6i31Av?=
 =?us-ascii?Q?8F78VXcKiS8+Pg4qCodQGk6/CkTMbTAw1sbjENfJ5AWqbbnjVBoUL1QpzwWn?=
 =?us-ascii?Q?w7gZT8BliSsn+YRUVqk1Gz/CD5Bbh561jPsehwljamCtPMID9jGmVreZm61K?=
 =?us-ascii?Q?xnOnMb7Dpr/CwfLhxuNu8cd/VZ7PSjlIMtL0DXgfY0+LqWJyM4Qg4M9kpD9H?=
 =?us-ascii?Q?WMuA34hj3ADESN98Lh5g9igFYqglgtLEIx4fwiqRQItJQWboFWR5i3J7LYe1?=
 =?us-ascii?Q?mnTXUYTyFH2rvzKVZUZGf3W8YTMH+DE/ZlXilQ58VCm+PniMdV9d7Ft2cATQ?=
 =?us-ascii?Q?lNvQ0x2hUAhVdyTqbTyKIjAEUrj0gp4ciiZzTAzv2qi5yjPD5Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rlK6xEft/WgG16lUCsW2y43t5n5QAXoAM0mWuIfGhCM+Ggv5r/Xg6tJ7wA5R?=
 =?us-ascii?Q?y/QYAOgZhXBKlQ0JolUp6iunvzLUH1Fr17hhQCYzH4Oa6VQaWdQmGHtRMsbE?=
 =?us-ascii?Q?zIJY4SpX5/1ZAAaFFeMQfibTsEHR/Edp0oB2dWAYMBX1RjET+WQ9XcrVNEcY?=
 =?us-ascii?Q?FWFHrnWrSaLXtpRw0YMgvnsMsTWCvp650ngBF4bsHBc5kIvcWKfXYhD/87ft?=
 =?us-ascii?Q?sdwGwedX90bWyCQof5Ie8tDpA64u4ujC47pYC+3vt/6RV9vbZ6W6OB4rjaY/?=
 =?us-ascii?Q?PA0UrA7ZAJr/TvhhBZs/7JDZ6fVXGdfrwV2X2YbPeHiDBUXnTrh7G6X4p6A9?=
 =?us-ascii?Q?HdmohKXd7U9dLLM+E9lMPxTdK9WkV0qldIb0CHjQAsrPf4mxxZHD3UVHTQMZ?=
 =?us-ascii?Q?b9kR7Y8l4gGn8gGc8QAr/64GUoQk8ULOW4e34JVe9P6WfBgD/M2/mSGA+qQo?=
 =?us-ascii?Q?7OFkkNgsAJ6GTST+XZ0e0reB7WKlz2be73QbY4M4Lpj7ao/R/Lk33NNR4fnx?=
 =?us-ascii?Q?fzpOa4aL0/fH4+AqTqXYFhA3Y4/kEhvbBkmrVkALgzQNjO6zUc40jNtuerUY?=
 =?us-ascii?Q?qiMzvpfUSCDW2etgvu7O19GK/C95siQNXnyWQiQuVx9mf9OZ0lIySEIddZhp?=
 =?us-ascii?Q?6LddLhhQ+qMUWK+Ap2g/QFP75xOTy5HO/8wdssPtp+V0DmGD0D6KzaiHtz2A?=
 =?us-ascii?Q?sLK1Wxk6mbRpDeE+OE/xeREv5Kl/6Kqtt1RsLaW4Iv1zRoPUySarF0GHG364?=
 =?us-ascii?Q?YK3wujhSsK5nZXXfO5L2Jh/svZwXmjdBil6Erp6XuJxtHxIo1wBwre+jaHCV?=
 =?us-ascii?Q?MIEGn5UzaE003RSu6+qeuWZ8gYjNh4FgkgVAPzk++d2PqWi10T8emMRU0rJH?=
 =?us-ascii?Q?paaOfcPlvoE2RbGqHU0eXv2Ty2xAlRXGpFaKc4G3u0jXr9GbDm7/FWIEKi/0?=
 =?us-ascii?Q?Xqgzp6l0Md6T2wGqccpem1Znwq2F/tyUZ11xzkopVzUtTHRI4S7/+rotrq3Y?=
 =?us-ascii?Q?+dnWGB/s9jUsq1x1xEPTbtb5dzJn0y2ftJ3Tc4k9Ex9RNbJFIOBlIdG99EJM?=
 =?us-ascii?Q?KZgsiCMZ0dcrwWZQdlGUNHySQp4FAoRwozXYSYOSAZb+ETxGb7ZybuEWXpT5?=
 =?us-ascii?Q?5SpX8/iu2JYdRbqZIaZ4RKuN/i8drm1IJfSAr79/kN3CrMswXeyoh52dSxMd?=
 =?us-ascii?Q?UA6iqYrfQRCbcS0Q2sfuPqYWKKJ/g2KsRiNBvpoPWHP49Sr4J1D8hyPamwZM?=
 =?us-ascii?Q?PLJKSpagAtUiz5+wcbp+bRV22zEbLBi3i7C2iliztq0uQIV99BulTtma9sck?=
 =?us-ascii?Q?xB2Hf5KUOAknCUHXDXmPzjxwp4+dpiUfSdwVHuze/k8FNHL5qHhuyJf4088r?=
 =?us-ascii?Q?76Q7H78x5jEqymL6BhDgCUepiwYTym1GNE919L3PKiYaocWFRv3H0CTmGsvH?=
 =?us-ascii?Q?rqyzZqcLNlkRkeK77gKPaipdAx0Rprxva00AAyuWRiD2nit2uuY9602r/RQa?=
 =?us-ascii?Q?A1QeaPtE/gXEvmz0uBbc9CdEw94TmWZWC+ELRj3rphzA9DAyKNaRdhstiuLT?=
 =?us-ascii?Q?dDaw3hRzgVn2F3luV41bd2TDuXW6eeJce8oHw8DJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8bf186b-bd36-448f-1cef-08dcab17ee61
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 13:04:05.1175 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hBYeUOekLkOEgcCqRjBuLfO++9XHWSFXrMGrgMBx8yY8k1KExJauE5nocJJLqW6d9Kpt2/IsYSfQBGbwFQV3ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6285
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, July 23, 2024 5:26 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 04/14] drm/i915/ddi: For an active output call the DP
> encoder sync_state() only for DP
>=20
> On Tue, Jul 23, 2024 at 11:28:33AM +0300, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Monday, July 22, 2024 10:25 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 04/14] drm/i915/ddi: For an active output call the
> > > DP encoder sync_state() only for DP
> > >
> > > If the DDI encoder output is enabled in HDMI mode there is no point
> > > in calling intel_dp_sync_state(), as in that case the DPCD
> > > initialization will fail - as expected - with AUX timeouts. Prevent c=
alling
> the hook in this case.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index a07aca96e5517..11ee4406dce8f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -4172,7 +4172,8 @@ static void intel_ddi_sync_state(struct
> > > intel_encoder *encoder,
> > >               intel_tc_port_sanitize_mode(enc_to_dig_port(encoder),
> > >                                           crtc_state);
> > >
> > > -     if (intel_encoder_is_dp(encoder))
> > > +     if ((crtc_state && intel_crtc_has_dp_encoder(crtc_state)) ||
> > > +         (!crtc_state && intel_encoder_is_dp(encoder)))
> >
> > So we are trying to avoid calling  intel_dp_sync_state incase
> > intel_encoder_is_dp returns INTEL_OUTPUT_DDI in that case why are we
> > still keeping the check intel_encoder_is_dp when crtc_state is not
> > present.
>=20
> intel_encoder_is_dp() returns true if a DP connector is registered using =
this
> DDI encoder. If the output is disabled (so crtc_state=3D=3DNULL) that's t=
he only
> way to determine if the encoder may be used for DP (unless an HDMI
> connector is also registered using this same encoder and that's what is
> actually used on the given platform). In case the output is enabled the
> DP/HDMI mode in crtc_state gives the same answer, but by checking that
> instead we avoid calling the DP specific hook if the encoder is used by H=
DMI.
>=20

Ohkay got it
In that case LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> > Regards,
> > Suraj Kandpal
> >
> > >               intel_dp_sync_state(encoder, crtc_state);  }
> > >
> > > --
> > > 2.44.2
> >

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D67C9A750
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:34:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BCA010E15A;
	Tue,  2 Dec 2025 07:34:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iKnq//U6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8555110E54C;
 Tue,  2 Dec 2025 07:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764660840; x=1796196840;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ifKvQgKcV/7kzxc2KP/efmPoFn9HqYN6XTbbQJVFFrM=;
 b=iKnq//U652WyjVd5Vr1/R5Etc5sCWFOXl1RIh65o3vbyb54H3mVW6aJ6
 gyz5psqUiPAM5tVqZ66/364guvJ/jk72bQocM6CWQP7kKEDiywz7ATiG1
 yB8WwF1mHZdT0J1zp25Zgs4Gr7xAFYQERrSIUwr8aK4NINklMllxKjugh
 lkOVOqRITQM//ZYkpMqRRV1QAfb6AbWfnqqPPRYxbjqJdg71/HFGjjGgn
 xE/blhh5KsiqyjRQIam5U4/b9xgZz8MpS5PaCnTp+SmoEyDcPNR+P98p1
 NsPuDZAt2pDGOWrSMSrDF+DC628rk6uNd2+l/ykOcUrMethonFvn6Q5dk A==;
X-CSE-ConnectionGUID: +AbMkOOURpmWW41PDv5PcQ==
X-CSE-MsgGUID: mBKSGWCWTryBnhsQxoMVng==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="65620854"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="65620854"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:34:00 -0800
X-CSE-ConnectionGUID: aENX4QTQRNmd/fjMmP6rNQ==
X-CSE-MsgGUID: YdbJ6vwvToKY1iHImZP87w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198683753"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:34:00 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 23:33:59 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 23:33:59 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 23:33:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LeeD5/EuBYBSmbYC4pNsOtnSLfEwXE9BDap0Ufwduy5THlkNECGvB7vwLZb+WT3LqM7s9YeFSCMjqC+1/mlMVKGpl3pZ+9QNyZ4lrwzPmI2v7aD7tFMZI2ogJHB/PxS6mUKWSEcuGEcomC+yQawmDPWz5/TvGdKPXqox7I7PW/TInXa3bCfHEJXgKatUlJdPHkWuj3xK7Fv+cbtuc7qEZ/963K6v+BKPImiDjhnpEOfbx7J1asAQjXjJvr5EG715riPSaLNqBG7eAPM7bEA0oKQ/cCdu6WC36bSWQPVW+xF+SwTvL0rm+0gQMg76uxjwH/CClTiO/1m1xbFXs19pvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OybHUHriFcV9EUv7ezrrnXpKHMr6liExm8O6MILUoBw=;
 b=IypdNoHdbeKhEKVB10orHKSNq4Np5Fv0aBPDMAD/N+ckObDc5U+s8t+rGBX8BhTX3WHw/U46oQLERHe6VxHoKIrQxhNwazlIgaSRox5sryky/vyp7NvbsNLxhhvFusN62yuQWFwECHjpjekjMeMC1Ttqtl4qKcL/GLOQPOR5Y2lVwGiv89d+K4P02rTCV7mvHOI13DqktgYjyPfO1Dr6zGylzYbocZg7hie3KrhqbAGiVu3WWg0UXF45r+39KSrygFFcbORtZXaphjlioB80Bth9PpiKvUrKABCwdxtzP7bRpc1FUDanq+dtBiOHAlUsUwRwFTq+cn6klzAPvXzTTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN0PR11MB6231.namprd11.prod.outlook.com (2603:10b6:208:3c4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 07:33:57 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.9388.003; Tue, 2 Dec 2025
 07:33:57 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v9 16/17] drm/i915/display: Add function to configure
 event for dc balance
Thread-Topic: [PATCH v9 16/17] drm/i915/display: Add function to configure
 event for dc balance
Thread-Index: AQHcX36G2QC9Hyw3q0qicLko12iht7UGWiCAgAeiiyA=
Date: Tue, 2 Dec 2025 07:33:57 +0000
Message-ID: <IA1PR11MB6348FE0C31CAD627D393C4EAB2D8A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-17-mitulkumar.ajitkumar.golani@intel.com>
 <8491ef6cd5f8f06d72337eb676ba50b037b0829e@intel.com>
In-Reply-To: <8491ef6cd5f8f06d72337eb676ba50b037b0829e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN0PR11MB6231:EE_
x-ms-office365-filtering-correlation-id: 750e57fe-5da8-490c-87c1-08de3175275d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?IBuz2qUheHGhtFfGBCmoboKNGWCK0/od2q0TkhJ56oJSbptF7Qsqpj1XRVdH?=
 =?us-ascii?Q?xkLdZh/d0rl3I7PKsbw0neMqjQmdSnwtepMrrTnyFPAKAvuoPCTkj2+9Ws3y?=
 =?us-ascii?Q?ZAfnAlLufT3I1fmYxV5xiOmpL17c6Wic7+3vuBnhAoNf0U1A5Xri/8Cd/erR?=
 =?us-ascii?Q?/8FiNGfK4V60C6uaD3jWvYss70qNP1gSyFMVvIwraSgZK3w+y7NmU+jWuNkw?=
 =?us-ascii?Q?s9hgxVovHFV/ZyxjxIzGEdpKziadgmvPUxeRMsuRhRC06ypnOXF0esHkqzJD?=
 =?us-ascii?Q?7gyN/GyW3Cbk3QibrQLZnQw52Ymev4fykJ81agyIjmc+ldxGO3e+iEXtcjRu?=
 =?us-ascii?Q?SrS/3KGULVfBho8xphIPktd4M/KI7q/0FlY9NS6TqKp4H7acf8blhoN+ou+N?=
 =?us-ascii?Q?Kk7SFKcjC8Fdqoxr3xVpji9aIbQLR2hzVwddrEh1IijDo7IUZFoLviZ8q5qs?=
 =?us-ascii?Q?Knp7kRi8ai9vUrdeRi6Ba2IJeCAd7fbsDtlQAya9aR9N+RSaHvnDe9hvNkKv?=
 =?us-ascii?Q?ltpg5+0k/rtiFU6E+lLt8vzatTk3eCjeoetnoJdgTruNYzlCByTzV9dd/3eB?=
 =?us-ascii?Q?po/8AmsljjyFGZh7qH3cz4bO2gU3Zpk+wmilDBe1p/iObnYNZmC12xW46vLO?=
 =?us-ascii?Q?0dZMWMzG186Ckff9hNm8/kBeTmgi0/sIkjlopxxo7Q5VtcSUoydiKR2g5I8D?=
 =?us-ascii?Q?bTQDqOMzrOE40vyXhHQ2e848FNBFOVyL+bCns99CoW8Gnn3i3v7jj4mtIK5C?=
 =?us-ascii?Q?ZSS/vvR9XaRfXfjOyejXvMIR7f4ee3qnJomYcnydMSVqZBoabt1jv+3X6PrN?=
 =?us-ascii?Q?qXIiVKxs89fzkgXpkJn/k3pc0M3OnB1Iw1r52A3mslpTwH9cHsijuSMIqRXO?=
 =?us-ascii?Q?Vb+OMgg0Oz7Zrzz/XMvUuMychls0/KXIAH8dEaqVEUBabDbboQ3TQaTIUMVL?=
 =?us-ascii?Q?wSV2KZRsuvQdxrBNaODCR6tiUDeeQ9e3ZuMSFUqOkkH2F41y7nEoto7zM8e+?=
 =?us-ascii?Q?9Up6+hq76S8Izw9nh3y/gCGBeFhFdfEbYe3WXzAJeKYXx8wISCPV/qnk/HWc?=
 =?us-ascii?Q?cAEKn6WNDCTVZskpWKqpIV5IeG2EKGjOWIcuI9qmVJMt1hGvE3e9RdylnK+Z?=
 =?us-ascii?Q?2QK97kMpk6PD7H5aM7x8/e+GPsXWoYdhWRrztv9SV3jOfhOI9UhixLgUmOxw?=
 =?us-ascii?Q?7LzxrPElu+PFD3JUpHS1TheZ9OIrwpUmfpU2tuWDqR9N3TE6y9XV1XAtW1Rx?=
 =?us-ascii?Q?fHYwwMdiSGMpUwBhaKARPXXj6fCGuuFOOUMLWg/Q8p5IV/4Eb9QxEWEn2TCv?=
 =?us-ascii?Q?uTZwIYn3p+47i3J3Mx6hI9ukciRTdYWCktHlTGQQNpe2DfcmVTNYwiAaDovq?=
 =?us-ascii?Q?JZ3rIKFKBIBbMq1auYrRrpNuhjlfc73FG93FcVJLiMhCwW991hrC9J1xciMP?=
 =?us-ascii?Q?r3+nV1bhUamqeEY5HbmFmm9pxi7FXJoSYlRGA6s2SK8g/XZ8oRzSdTpuesga?=
 =?us-ascii?Q?81MUtuuaMFamAVzcybl9YaNpG1wVHllKQ5fc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o75dcs0k3Z8dkpQFpP7KgnIZho7XKfRhH5AJShJl8/iuxrE1h2FYZrQMd+N4?=
 =?us-ascii?Q?f5trR9n3rWkd1RzyC6RUCVBTK28f1msfXQAmp+E5wEug4axrKhn9q58im3HA?=
 =?us-ascii?Q?QO5J4WwXCYN+a5yXx50d4PSuadJ9kjSCf7QBCWSGi/NzqEabnB1k9kEG3Iyz?=
 =?us-ascii?Q?xHlIinEsqMn3RIy7kylU+6KrSk7JXEMnLGDK+QEXJH7rcmU7ia6s8woy8CkG?=
 =?us-ascii?Q?1F06dkX+MG0Jsj3ETy3MZWwqXczV/bIHXWpeXhIRtdyOIJhVyapQbO5LjQ/R?=
 =?us-ascii?Q?FitFNbU2txkt5YOQNZqnhUVqeFMqn31gAI3apmKgIAsH8E6yrlf9JlKv7We+?=
 =?us-ascii?Q?RduowhUAyUATSQ5DQUZ/Q3xO2AHlDqEQt9X1aPAJEJfmvHQUvLfW7/WZgBuh?=
 =?us-ascii?Q?VBW8QqhlPIsu60fuCQvk9WlJu55l5tpmEkwqbXi7/uoVH/wOtTthWU85/8eA?=
 =?us-ascii?Q?0hPArduD+wNLbK2xCBFW/eOM8tUx/74+E0A6o9rbeXMtCM0ISYLu/rnjyG0a?=
 =?us-ascii?Q?usW5nj4FJYwc5qJFalUcGfFwvebXLEG4mW5uzlAZeb2vE//RqVe7CPqYvtbz?=
 =?us-ascii?Q?C+T17RDs/kjbAkglouvzcHP9m7uHTTfT70+wGr9+LJensKPMmayXYZ3eXm22?=
 =?us-ascii?Q?jjGh99mR8V7RiTL6hyXKLIqIjwgGp3N8vj6QIrVy1q7fhgG23aE5QcjUdQcY?=
 =?us-ascii?Q?CUQx76BVTS/0HMIdatUgVYSK0v1w0VfB7C0WV5pNx//7rtqbKEfc7wgNQnT+?=
 =?us-ascii?Q?SNs4bcbop1DY2gxdNQguGiu191H3VlaSHXkYoZOzzTe1leutQ2H3WLNys4LN?=
 =?us-ascii?Q?OED02W3zby26zQgNdEd5Mp61eQ1a7PILwCfuhXTxhUZkZTgEdUTtW14L2mcL?=
 =?us-ascii?Q?9MP3GE9MgjfSEZD6cyW1rYqPtndfH4rbcdhrVwkJ1LKi3BNWTYlM/XDWJVqj?=
 =?us-ascii?Q?hfGzAbSEq9Df0e4aovczE+nHjZuTvfjMRmN5F6zFKUcFzWiXB1s3cAC4tpgJ?=
 =?us-ascii?Q?hT8RKE5eXyDDQ9670Sgw5wWsJVh2TmBsxd2Gm4nej0233bJulBME/+zendsW?=
 =?us-ascii?Q?nesY1wX1skcHVsMcWwXi4BBu1a/IE3hGyo1Qcb7VXxqWu6m6OJrCvAB0jauu?=
 =?us-ascii?Q?iI/ThOHS7lVHOh1Jv+P2c+cdkXa1gA+kvuZtUNajGOT6hFA88+lAUzI7+2u3?=
 =?us-ascii?Q?Vlr5gxcHzSqVK/xJdS+eiZAjFF0gxn81/DSV5VuxjG+7lOG/Ovo4f04xm5xJ?=
 =?us-ascii?Q?p05oSit2X9W1FZK2Mrav4jQu7i+kOI9FYP/p9LgwGdeIlo4MaprU5Ua23HsV?=
 =?us-ascii?Q?sht0pM9fiUJkaDHfnYvCEboB0678CXTtVC0x0MWw45xBdROprj1Ypwi7zCY2?=
 =?us-ascii?Q?Fz98RaEX94B9YMcteLwDDzIjZlOhw3+V4+l2eIoi/lXg48/Dp/Blelkem77c?=
 =?us-ascii?Q?i+9MBSlQAouCZOkEU1/QgBK8GR+ebjdeGqQNdJZebgHEm4/XR9L/0KE2LVX8?=
 =?us-ascii?Q?g6BM/555wxbYUF4qOPs8D0gSM0pNt9F12u9EgxICoBKcc7YWY+G+DxA26AIc?=
 =?us-ascii?Q?HaxsykKEuCXzc+48wo1TKr8NERgjhi00Jn77BIS8a98oQ1L7FjNApHZGSzJB?=
 =?us-ascii?Q?ymQAv8H0muA1DwqUabRJe5A=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 750e57fe-5da8-490c-87c1-08de3175275d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2025 07:33:57.4242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3ZUoGHlrsexqe8D8BxnPBSXJsO/UvvXD4WfiDCELzUNOjstY8gNJDFHn6mGGXFtCqsVl/Z9hjfE/CjRFAjaCtR1dHgMsx069FDG+OO2laksf9AZlqNagbi1oVf1G87J2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6231
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 27 November 2025 16:27
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; ville.syrjala@linux.intel.com
> Subject: Re: [PATCH v9 16/17] drm/i915/display: Add function to configure
> event for dc balance
>=20
> On Thu, 27 Nov 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > Configure pipe dmc event for dc balance enable/disable.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++++++++
> > drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
> > drivers/gpu/drm/i915/display/intel_vrr.c |  2 ++
> >  3 files changed, 19 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 147adcd18320..8de8e69780fa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -859,6 +859,21 @@ static void dmc_configure_event(struct
> intel_display *display,
> >  		      dmc_id, num_handlers, event_id);  }
> >
> > +/*
> > + * intel_dmc_configure_dc_balance_event() - Configure event
> > + * for dc balance enable/disable
> > + * @display: display instance
> > + * @pipe: pipe which register use to block
> > + * @enable: enable/disable
> > + */
>=20
> How is this comment helpful?

Just added this comment to make it look consistent with other surrounding f=
unctions added, But I will remove them in next revision as it doesn't chang=
e original outcome.

Thanks

>=20
> > +void intel_dmc_configure_dc_balance_event(struct intel_display *displa=
y,
> > +					  enum pipe pipe, bool enable)
> > +{
> > +	enum intel_dmc_id dmc_id =3D PIPE_TO_DMC_ID(pipe);
> > +
> > +	dmc_configure_event(display, dmc_id,
> > +PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER, enable); }
> > +
> >  /**
> >   * intel_dmc_block_pkgc() - block PKG C-state
> >   * @display: display instance
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h
> > b/drivers/gpu/drm/i915/display/intel_dmc.h
> > index 9c6a42fc820e..3d8a9a593319 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> > @@ -25,6 +25,8 @@ void intel_dmc_enable_pipe(const struct
> > intel_crtc_state *crtc_state);  void intel_dmc_disable_pipe(const
> > struct intel_crtc_state *crtc_state);  void intel_dmc_block_pkgc(struct
> intel_display *display, enum pipe pipe,
> >  			  bool block);
> > +void intel_dmc_configure_dc_balance_event(struct intel_display *displa=
y,
> > +					  enum pipe pipe, bool enable);
> >  void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct
> intel_display *display,
> >  							    enum pipe pipe,
> bool enable);  void intel_dmc_fini(struct
> > intel_display *display); diff --git
> > a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 286ffa35107b..ec2e5a94a99e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -809,6 +809,7 @@ intel_vrr_enable_dc_balancing(const struct
> intel_crtc_state *crtc_state)
> >  		       crtc_state->vrr.dc_balance.slope);
> >  	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
> >  		       crtc_state->vrr.dc_balance.vblank_target);
> > +	intel_dmc_configure_dc_balance_event(display, pipe, true);
> >  	intel_de_write(display,
> TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
> >  		       ADAPTIVE_SYNC_COUNTER_EN);
> >  	intel_pipedmc_dcb_enable(NULL, crtc); @@ -826,6 +827,7 @@
> > intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_=
state)
> >  		return;
> >
> >  	intel_pipedmc_dcb_disable(NULL, crtc);
> > +	intel_dmc_configure_dc_balance_event(display, pipe, false);
> >  	intel_de_write(display,
> TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
> >  	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
> >  	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
>=20
> --
> Jani Nikula, Intel

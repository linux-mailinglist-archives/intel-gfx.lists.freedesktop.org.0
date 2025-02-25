Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FB9A43A1C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 10:48:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B1D810E5DE;
	Tue, 25 Feb 2025 09:48:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KuSU91EM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D781910E4B3;
 Tue, 25 Feb 2025 09:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740476881; x=1772012881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hNtwI1dsTe0FWCrSUTp7EYcnMHmNAPo168nb/G5sO0g=;
 b=KuSU91EMGGk+KVtv+/Vc71gZ7PZMQhYkFxzhnPY5sZdffCMrCki95SbI
 1JBeY3CtT2+G/P8LvWmG/jLnuJAkHhoNrY+PmDlbNPlq2owokP/JHAUkL
 iYLb6AgpvaGTOGXIeZSUgck7btlknto1DTg16cg+85bhhrY3saA7f6cUH
 So98c4Z3KiS2i66CW4qVA24Rb2ZD36Jsjch6fsVDKq3GtUbxptv07Fl2N
 DIUnR5givY3Fkjo13B/QV58V5c7PRgAFDA6DMHl2aE5nS8FDWVGkaxYaQ
 Fil88FbyQxwHciDVYPRoZJ2A8R8brJqBhfLt1CGOCRTE9zJdmgFJnrvfM g==;
X-CSE-ConnectionGUID: 4nv8rQmjSXyHC9GiwCKVYw==
X-CSE-MsgGUID: LxY6cSOPTy+8kF6hyXD0Eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="44928866"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="44928866"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:48:01 -0800
X-CSE-ConnectionGUID: AKh/jXorQ0ao9zCuKcmvEg==
X-CSE-MsgGUID: 3FvbrZAxRVO9NZjwVx2Jkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116187974"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2025 01:48:01 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Feb 2025 01:48:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 01:48:00 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 01:47:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w/C04LVpWbDpkRdvMcgBCgy6GNpZn7ewkOfgkEvfJ77+dBaCN7znzmeY0rYIBkNVKgutEFftY/+PWmq858mL2PHvzJHNNZM7UC6UB1rZBbngsSDXjY0HdD5gQvsCcOIKJtEQhBZN2wUqdyTJKJZQAmjw844mpRbIsewVVVmTJhSCcqZ6N1hXCzDqYleOa527NkOHQceAp+Ylk0rk2RHRJ68M6u4tPhH/ilMGY1tY7TbzM1w0DGZvBWI+bpgpuOeaw7z3Kx5fXp4O+kfDNehIZ40nbiMLj1CRwVjtpH3wfT6X+/4l4UK+lMZ9VqW3IpjM/iJ5cdmj57tIHe8GbyI8lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yfXxnlOb4Be5yeT2apTor/fWvwbgElDLvlys1/w7V0I=;
 b=oPnuUMf58yM1E3ApUJlxxN68Rpxl8RLRLJEMwRwCgNaFFZvn2UkCYygkPrtYZtRoL6gHwHtT0hyVAE5ZHcpkVgjXdJL19B2RzL9aSi1wrIkBLyYJQmfCAYXR9tHGNec0s+w4rnM2edG8l0GioFYavVDam/BCW6xg2ygy55hwofHrtkxT30b7Jus8gf9pEBIkAY+JNUyKPoxWcZ1VFrfqEXAfVbY/waaeKrO2qKtW4nUZ9PIdTKdJGp+NznGgDgWaIOo2OCJEKJSqV+V7HXT5XIQn+BQ4oJEcsr0e7U+3POSDFFEhlwo0DFwyosLAhMy8cNY/KntciFL3oiU1I7zDhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ1PR11MB6084.namprd11.prod.outlook.com (2603:10b6:a03:489::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 09:47:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 09:47:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Thread-Topic: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Thread-Index: AQHbh1ynxA6dtsvJ7kaK/vE1vKqgv7NXtOSAgAAA15CAAA/7gA==
Date: Tue, 25 Feb 2025 09:47:25 +0000
Message-ID: <SN7PR11MB6750A509052EF04B959BA7C1E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
 <20250225080927.157437-6-suraj.kandpal@intel.com> <8734g276o6.fsf@intel.com>
 <SN7PR11MB67507C9052363FC4E8E34450E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67507C9052363FC4E8E34450E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ1PR11MB6084:EE_
x-ms-office365-filtering-correlation-id: 482f9d5c-2308-4ad1-9b45-08dd55816920
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?P/xRZ5zHGnOmk4o3YFnHNopknOgPEJFZCwlELA2BBC3IY9cw1IHZja1txhxo?=
 =?us-ascii?Q?c/KWKB834rPoVyc07OT432o0dpPTnpoVSYCrZ14TulRrSv3q2nZNVZKXuTEa?=
 =?us-ascii?Q?zksNbxy9550pjn7DWdjz+b+Y5LlDX4jmYTuqlJkUKp/EbH4qDflhE2Afhavv?=
 =?us-ascii?Q?KFWOejqvf2NwXQO0D0Xvpw1cA+8IrZG8J8YIsP4j8iSanB8t9xYtHlptQUs7?=
 =?us-ascii?Q?Ng+NKZ92rLKW5pdovm/1U1u2vTF1ULt7SpWyBMJFittJJaIG9ZYk8+VCwcrr?=
 =?us-ascii?Q?kvGv/7Xab/QZFxronuGfLeclMqLbhg/sEx/x7ioe9oE8KdozCix4JwSUJvki?=
 =?us-ascii?Q?Zh/S2WbbaqKHze9dsIGv1q5sxFDoDF8E+ofkryQjumgroZ1VUGudjO9wRMYQ?=
 =?us-ascii?Q?FBc5WPW7JHp6I7eHMjoi81kZXqkYIZhapm4m1UxnFrxLE8Wwyeq9OpPGTqW9?=
 =?us-ascii?Q?2Bd1PqexQcD0g39RA5/bUZHx9+Au2R8gyYQUH7jE44kUAfL12xrrTM7w1xm3?=
 =?us-ascii?Q?SiaZNAMN8+2Nv60FPLnlVQig77G6j5UTnAZ5eKb18aR1kk/FQ4FhEr0+GZlv?=
 =?us-ascii?Q?kqXNVXCZUp/woMUzWBxc42DE0U1wLbvtHTR1yJ+tRJUVURKJtATjZqbyIfws?=
 =?us-ascii?Q?x9qyZKht4/xmOf3srt/ELEMd0ibSTSUY/VJDfzw47oVjCvxhp8+uiBqaxrvG?=
 =?us-ascii?Q?BVOR6St3/dnS+Zkyi15z6bdwpSyzJuhGKfh6PSf/MY9c+0ZVmeeVldH/cnXr?=
 =?us-ascii?Q?X+j3UUyPzLiPZPDTdhMj7E3SS2KqMHeuICcFIac5CYyhDCg2rbaLa+gZlC8P?=
 =?us-ascii?Q?1VyHLvYd1HWe5xOZvTQR7eZSVhSGVEJvgl5T5MXGS2aORn2Lljbo+rKwSBht?=
 =?us-ascii?Q?4jDpbqMS/mUazmVnsLlungMTOj6+t/3MaJjJwz3YS/YgJnJzcAif6PZc18Qd?=
 =?us-ascii?Q?IXaNMXUqnOCBz2tCXeC3f9AIFDV4e4G+Fy0pxVU3Z3Z2wEysVwRej2AnD0Xv?=
 =?us-ascii?Q?Ob5lNZ5VwjEBXC+REM55i7d8vYZC/U8PsXH3MONkneqgI5QwpMYhEm1exQJ3?=
 =?us-ascii?Q?B5nxoq4FF0xUMF/lKKB1oP8oQA2ZFsqhJn5xRdjfUwj24irDBEGsFURESVwj?=
 =?us-ascii?Q?GTrxeWFXKu9FTs+qbmWCHdgHA8o6BhXG3w6apeenbETOcc8TctNJ5KLVHuwh?=
 =?us-ascii?Q?eSTMQx6vyjw6Jue6ZLJIG16/RitpO6miHaoAAXk43mvTMw4FwlEIGWGH4Byu?=
 =?us-ascii?Q?J4+89DwYg0TJ4pKBp/qCyHn8HlgLRYJRTCQtqnaHGV8OlvHM0hnDqbcI6ats?=
 =?us-ascii?Q?2Lbjtj/op7JAxL69ZaPm4oPN5rwu9aeD0L6Oqa+bv/g6tcE/Lsm9Jp/OCSB0?=
 =?us-ascii?Q?MWzAUSVF8NA2j2UWo0nvbhN9xkWTyU6x8tT6cZfzVeUqhrpjJSMaNW2Ly4L/?=
 =?us-ascii?Q?5lkozTm1+lDV/eKDkS4AVh26/ZBf6bqg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U4F0yusT8rnAofTHXRW/FLbdkHUGkYSClRCPIxgK72mCLsCY6PyaffY1+Bt9?=
 =?us-ascii?Q?oCJA70+8YA8E0dB4XLopR4zmBFNUK1LnOYq0O9oEdW0Ux3QTPOk1MOmfDCbm?=
 =?us-ascii?Q?ibgnCn8MOwEgoQZpzdurTnFczvJBt4tCc1h5KLWm+n9FhJ3GxPMwj84JIfmj?=
 =?us-ascii?Q?1jktDl4+DzXbKAIqu7BcXmB7n8Hd30XZEuJHc6qerzrOjgrPgiTPn+ZmK7DA?=
 =?us-ascii?Q?UWv7o90chXugIjOWkWt3zfgeMGXHrT9y3IR33Q+vLKPu9mjtslcXmEElm8i1?=
 =?us-ascii?Q?6cl2ID1AlepQ4XFzi8aVLFaFCgMc57xT3yx0JvLid5QSdHaUxHUNZqwE35Uj?=
 =?us-ascii?Q?mrIgswyBBDRfaXuoNfqS393dY00mEOZXFRvAspxo4+HQXPjHFOlrGHEPTi+A?=
 =?us-ascii?Q?VW064P06V9kqNaUtLvfm37islEUlurfddg+zxVlyJLrLbB6iRcT36RFxiNYK?=
 =?us-ascii?Q?jTRV5pmLGOun2/04g4PYGWvDrzLvo+SPIbmsNfsxObu6pGfootcH8uObBvgW?=
 =?us-ascii?Q?xY/MbRkU21GCe1eF6x+FHbVZ6nVuJH42ygtgIDnbHdpKePPKwfF/eUfzjDzH?=
 =?us-ascii?Q?LXwbT35AO1pKtzyinS+HSL66o1CQ9sVVVHpUw+MVIn3jcYRwD0ScKZ93Dg5m?=
 =?us-ascii?Q?gQjdjpaUqnZGARz4t3Ly7X1dKbr3+5p8dPx0fUSa8hejsXJLCTZgBUANK1xs?=
 =?us-ascii?Q?1N7PlBrR1FCSBbpRyiq5FL87WXyj9sSbpkNmYtaNzl1nTZQVRh5dADpcF3dN?=
 =?us-ascii?Q?RIW28ddDXyoRlHfpjYQvv6qqL7b85q1PCNhkaPFCw5KF2rNNYsgc1IydavLs?=
 =?us-ascii?Q?LeXhU8JSX2BfHTSTD6IOh8IBSPWsTknHA2xN84ZKEYwC4nxoIQ8QEzig9DXZ?=
 =?us-ascii?Q?beunKZusDXflEr+GdKODzUokpIUuhpzy5glR0e2clXgNpq2KZCmDrY9t4oIN?=
 =?us-ascii?Q?nU+dhsaHwn01kDJ6nwpaKVC6s9uWj4m1uWmvWpnc53mGTVv/B/gh4XlheUgF?=
 =?us-ascii?Q?Rtu+Gy3oJzHIq3EWuAkH57cHZ49HWumREkEySdMJmLWpvQYOhsuCPFCgt8Hm?=
 =?us-ascii?Q?jUWtd7UCHUslhlNwuGhltfp4y3Wrlw2+OMn+nhH4zg4RQ5iXFFhm0FZ/bWrZ?=
 =?us-ascii?Q?YcXZUrOPdowdYcuhL9Swtow6ySmFWVj5JMYFz89xQPCryOcFQlgOVvcd4bUE?=
 =?us-ascii?Q?DqPReDVTzA6JrIkMPgRf8aI6+TOX/P40BzuPW5rEwIYSEvGvwzLFUXZweh8O?=
 =?us-ascii?Q?WTKW1Pqoh/F8DqPwhyvAixgQ14XMkjIE/b84XCDoqNjCdN9Z6d5aoWKBrvFS?=
 =?us-ascii?Q?akOJj1XpXTy7h45QPm5KnTtWVxogfoT6L/lGjEpln8kHwlrQoN0ZUuTaoCwN?=
 =?us-ascii?Q?WHyibr/7WThVlDxQ6cGudRkjcg9st/u4SB69TFpBSrZuxT0wDYhyLFadIwi5?=
 =?us-ascii?Q?X4zf7p/hxWI9r5pvf0BLgT0FlkQmOsnrSfk3WKALsQIOzW0uH6HOwX1OX8cd?=
 =?us-ascii?Q?eYCGrms32GAf26TqyKY1xFOOD90zKfb4tOywS2NalVOGTHX7cKgweArlxEpj?=
 =?us-ascii?Q?p2/NMDikntnoqyshBwnwqlekFabPqtygkdRVgQ+R?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 482f9d5c-2308-4ad1-9b45-08dd55816920
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 09:47:25.9006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3aX3ylxwro9smOSJBRuV8/sEpgeC+gi1xKSH/dFlk0xsJxXkmISkg0SoFf+cWqRH+IEvN4fYtKLPHSQwDmSHFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6084
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
> From: Kandpal, Suraj
> Sent: Tuesday, February 25, 2025 2:25 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>; intel-xe@lists.freedesktop=
.org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>
> Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpl=
l
>=20
>=20
>=20
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Tuesday, February 25, 2025 2:17 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>;
> > Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: Re: [PATCH 05/11] drm/i915/dpll: Move away from using shared
> > dpll
> >
> > On Tue, 25 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > > Rename functions to move away from using shared dpll in the dpll
> > > framework as much as possible since dpll may not always be shared.
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > ...
> >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > index 6edd103eda55..ef66aca5da1d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > @@ -387,24 +387,24 @@ struct intel_global_dpll {  #define SKL_DPLL2
> > > 2 #define SKL_DPLL3 3
> > >
> > > -/* shared dpll functions */
> > > +/* global dpll functions */
> > >  struct intel_global_dpll *
> > > -intel_get_shared_dpll_by_id(struct intel_display *display,
> > > +intel_get_global_dpll_by_id(struct intel_display *display,
> > >  			    enum intel_dpll_id id);
> > > -void assert_shared_dpll(struct intel_display *display,
> > > +void assert_global_dpll(struct intel_display *display,
> > >  			struct intel_global_dpll *pll,
> > >  			bool state);
> > > -#define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p,
> > > true) -#define assert_shared_dpll_disabled(d, p)
> > > assert_shared_dpll(d, p, false) -int
> > > intel_compute_shared_dplls(struct intel_atomic_state *state,
> > > +#define assert_global_dpll_enabled(d, p) assert_global_dpll(d, p,
> > > +true) #define assert_global_dpll_disabled(d, p)
> > > +assert_global_dpll(d, p, false) int
> > > +intel_compute_global_dplls(struct intel_atomic_state *state,
> > >  			       struct intel_crtc *crtc,
> > >  			       struct intel_encoder *encoder); -int
> > > intel_reserve_shared_dplls(struct intel_atomic_state *state,
> > > +int intel_reserve_global_dplls(struct intel_atomic_state *state,
> > >  			       struct intel_crtc *crtc,
> > >  			       struct intel_encoder *encoder); -void
> > > intel_release_shared_dplls(struct intel_atomic_state *state,
> > > +void intel_release_global_dplls(struct intel_atomic_state *state,
> > >  				struct intel_crtc *crtc);
> > > -void intel_unreference_shared_dpll_crtc(const struct intel_crtc
> > > *crtc,
> > > +void intel_unreference_global_dpll_crtc(const struct intel_crtc
> > > +*crtc,
> > >  					const struct intel_global_dpll *pll,
> > >  					struct intel_dpll_state
> > *shared_dpll_state);  void
> > > icl_set_active_port_dpll(struct intel_crtc_state *crtc_state, @@
> > > -418,10 +418,10 @@ int intel_dpll_get_freq(struct intel_display
> > > *display,  bool intel_dpll_get_hw_state(struct intel_display *display=
,
> > >  			     struct intel_global_dpll *pll,
> > >  			     struct intel_dpll_hw_state *dpll_hw_state); -void
> > > intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
> > > -void intel_disable_shared_dpll(const struct intel_crtc_state
> > > *crtc_state); -void intel_shared_dpll_swap_state(struct
> > > intel_atomic_state *state); -void intel_shared_dpll_init(struct
> > > intel_display *display);
> > > +void intel_enable_global_dpll(const struct intel_crtc_state
> > > +*crtc_state); void intel_disable_global_dpll(const struct
> > > +intel_crtc_state *crtc_state); void intel_dpll_swap_state(struct
> > > +intel_atomic_state *state); void intel_global_dpll_init(struct
> > > +intel_display *display);
> > >  void intel_dpll_update_ref_clks(struct intel_display *display);
> > > void intel_dpll_readout_hw_state(struct intel_display *display);
> > > void intel_dpll_sanitize_state(struct intel_display *display); @@
> > > -437,6
> > > +437,6 @@ bool intel_dpll_is_combophy(enum intel_dpll_id id);
> > >
> > >  void intel_dpll_state_verify(struct intel_atomic_state *state,
> > >  			     struct intel_crtc *crtc);
> > > -void intel_shared_dpll_verify_disabled(struct intel_atomic_state
> > > *state);
> > > +void intel_global_dpll_verify_disabled(struct intel_atomic_state
> > > +*state);
> > >
> > >  #endif /* _INTEL_DPLL_MGR_H_ */
> >
> > If you're renaming almost everything anyway, I'd appreciate moving
> > towards naming functions according to the file name, i.e. functions in
> > intel_foo.[ch] would be named intel_foo_*().
> >
> > The dpll mgr is notoriously bad in this regard. I'm also open to
> > renaming the entire file, intel_dpll_mgr.[ch] isn't all that great.
> >
> > I'm not sure if the term "global" (instead of "shared") was very well
> > justified in patch 3. Maybe all of these should be thought out together=
 for the
> naming.
> >
>=20
> I agree with the renaming I would have very much have to keep the naming
> simple something like Intel_dpll_func but that exits ! intel_dpll_mgr_fun=
cs but
> intel_dpll_mgr already has some hooks defined inside It.
> I chose global since that way we will be able to represent both PLL using=
 shared
> PHY and PLL with individual PHY.
> Also renaming intel_dpll_mgr.[ch] we have a intel_dpll.[ch] making it a p=
roblem
> What if we renamed the file to intel_global_dpll.[ch]

Jani what do you think of this ?

>=20
> Regards,
> Suraj Kandpal
>=20
> > BR,
> > Jani.
> >
> >
> > --
> > Jani Nikula, Intel

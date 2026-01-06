Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D933FCF6D0A
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 06:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA1010E245;
	Tue,  6 Jan 2026 05:49:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nvzrP+iv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7EDB10E245;
 Tue,  6 Jan 2026 05:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767678564; x=1799214564;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C3aqMQzikJAaRod1bBgFGrZDhsIyzElji7MPFbpqg+c=;
 b=nvzrP+ivpEBhuG9WJ7YjpT65+fYRt/6OyGZPKGmeJHstI16V0HuwF9nf
 9yuRlO81JYe/bQlikEFvXQX/UNjJ0EOi5VFkMCquTFZY6oxs+MnMhVFOV
 8fGrZ2mFYWQr6xZr99kFSu6ztKK5sn0kQTepzpBtiozQDPYPA1DRLwVMy
 B7UlJJREhbAfVGgiscxOAloSs10laJEm2c0vfac5rO7nRWZrb/awDLX1Y
 L2hdynnbul4pTChZlG2GFqkVgAQ2FS9Wx8ToMnBgALkQVXIvVat37sFIc
 pBJo0GaUzeqmXVGtpvCFbzlgPA3v4raYL4z1KJdgkBR9PsGYn8mAwPzsb Q==;
X-CSE-ConnectionGUID: uq+1lIBUSWW4sXJ3A6/Jkw==
X-CSE-MsgGUID: ZvEtWOeHRjyyPcNU3gxUig==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="79765231"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="79765231"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:49:23 -0800
X-CSE-ConnectionGUID: o/4GTdh8RkOIUW+m3fFFyw==
X-CSE-MsgGUID: ayYzfW1GTJKems9k0x6NlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="240064978"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:49:23 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:49:22 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 21:49:22 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.20) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:49:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fxhLg8M2YO+KQlW3+7wlmzCn0aqZrAepNGKXx+iNQS0tflJIsIuF6iebQ0RaB/JHjvQjnhT09fMNYLS5qTlgYrwa9XgKroGt96ThL/8N+H1VZ+G+CoAIMzTN27AQx9EMNZkIYZHUUIpf+2ZNbq92qXI2cEBbj9wSfdoN7VPn6sb9JSaWWlZRF+7wNaOxe84oigrMSYUf+daCPFz3YbdadbOJxwKcw2MH4CsrDv2Ovl/HB//Ad52Av1Vp636ss2Ms5Agfakz0aJk5i26JeonDD4WxDGsqV/qDF4z71jGaZvR/n5OBMi4rltIZ/9XhdsWbVSOfkb7SBj1XldFiIxOA/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VtoQtdgEP9G9SMLdzRSZXiGyTr7z+bPV/1eUhOKVgUM=;
 b=svpCiy2XxLxfo4ZomCDDoYHbEclYXgOGu0EvWdrmZVCpEmbc0NteX52vYxhWOkJpuU8i9pMJsC/eTmq4RpYyiZwdh05vr72mhNG7ewQe/lCAxM1OBj5uV0ps4RJiv5vDhxMnUV2M1Ky+FfWTvzOfsV35coQQkww++/542wt2zXql3Q63VQwZu6O8e4Qix/RhIVIyL9jhEtQEsmFPnXGDJgfPaj5LvAwqzzsWj7uiQR0+cZHTpDAwBAIiWatPRXzFi+/DP5StswPkLCTcK9K3vOKGtjohZNgtpxt3lbs9AORcaFyoSHs6X22zEcN3LYsI5ys9RFQkrYbAKh2v2qOueg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SN7PR11MB8109.namprd11.prod.outlook.com (2603:10b6:806:2e0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 05:49:15 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 05:49:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state for port
 calculation
Thread-Topic: [PATCH v2 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state for
 port calculation
Thread-Index: AQHcb2nmh958LfSunEKV4sYxMU3yA7VEwPnQ
Date: Tue, 6 Jan 2026 05:49:15 +0000
Message-ID: <IA3PR11MB8937D97F8D85DEAA1977839EE387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-5-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-5-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SN7PR11MB8109:EE_
x-ms-office365-filtering-correlation-id: 6a31eff8-b681-4440-0c90-08de4ce75388
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?70t4wVDMPvHk9tVLwcpAkOUekptm6fvOZ2q+x7giX4xh3Vt2003FYvPngoA7?=
 =?us-ascii?Q?wW5lcU94sF3FjjnAXNZdCmnCGhkwESYMl8t6lCiKWTtwhUuLc/EEsQX5UELp?=
 =?us-ascii?Q?iN5kUjYuoFxzRNXVoTvUIoNDj6kCe5satBOEy7pBQjTJa/U2djtlaYagUDBZ?=
 =?us-ascii?Q?0XCca0vqUdAX2tMGAuUKFwKBYVCSu8DbGLOCKm5HWDu1KyiiLKH3zPWwN1zm?=
 =?us-ascii?Q?Fe+SmdQSVrqosn/K3+ztkQaraG5fYdrzTq5dvPWUJCxtFbKky72l4khXr6kN?=
 =?us-ascii?Q?U+BwFFv+yk6oX84yNfz+9sXxTJQnOLbzmu3KL6LrCp6wV7IXM2u2Tq8YhLxO?=
 =?us-ascii?Q?m6gssmhc1mek6QrkQ7bfLPEoxEKxr20QvfXprWKMnY8f7HY0lb4989TVetED?=
 =?us-ascii?Q?8ZNwwloN+m2Cbr/TcUOdWMHiMrbLt6iLW5Svuot82FyZbASjz+BpFCTS881i?=
 =?us-ascii?Q?UVg3t9jtfR41AriOLFUMdzEvRUTiy/dGuEkmneSIpaXxBemvwfN2kFtTeK/3?=
 =?us-ascii?Q?vCsAkWe02R16JzKlVyKd/2nXS9eFJQYeH67exxjIkkKjlw4DOnyqD//IyXoA?=
 =?us-ascii?Q?3Udbh29sPTPBVjNWDq+ND+ibNA6YQAUYImL2ndhLnnCCtZtuoQnSfLiXiecm?=
 =?us-ascii?Q?RhnPLD0FhQCdP133Jk20dFLQ5Zskk7qWZrQ9CWpG2U2oZl9v5oy3oDEnJ0Vb?=
 =?us-ascii?Q?LC98mcsmO7uMY7L/VW4VQFm/Umth4rSKOz3XVPvIPYKYR0F4B8MkfqfB74eI?=
 =?us-ascii?Q?UHER0kK2gXUUfQLxGfExBAZT+liyaprgBdv7as4AlWEhDYvp6DtimZEL/W5A?=
 =?us-ascii?Q?1lx9aXnNNNLzweWNoGvuFeu8slLltooWMC6DNxmg1yDiIp9jIQmnFmHfduPH?=
 =?us-ascii?Q?z+ZWmImWeYiJVh5E3n5gaEpzyT+cQpv/TeCMplXk+txaGQRjOGXDvaxTL5el?=
 =?us-ascii?Q?3J/o0la+T1LlSNP3MC8qbQknB+UzpwmxxiYGQHdkkj526oPk+sGyo54xaBpH?=
 =?us-ascii?Q?CQwbQany7u9uLJPzyIXmW2mw8R4V/ZGUrzlEZ/w2ZPfwfPt9ieFTiv3AXTeb?=
 =?us-ascii?Q?v0gjdWzlFaASAwJmIbyJOCumxPMi3H1bK3+oEiKGGXaDtgikZPr95xcjzZ9p?=
 =?us-ascii?Q?BN91tTmx1LQWcve6hatVtvsRA/jr3myC5DnX2x3aubsnQOPy6aATz+gwmy8u?=
 =?us-ascii?Q?GEcKlZRYyQ+Feujoyvt71mWme4NX7TAgR6du/wVSAkagsFRbyPS3OZ1ir6eE?=
 =?us-ascii?Q?IXKcw5EkQcwW0pOpAcANYRTXnGuIFDsKEhSPuRMr/vj5QefD3O4jnuwVtDH0?=
 =?us-ascii?Q?ST/v8K2tASzg8z3VsWe3LOc2BDCnRn948jQsj7zRFanxpmlAcm+dfxriWYjH?=
 =?us-ascii?Q?XXEVG1SunxFn32JoGd4omwUHEbO/eNu7xY/tpaUVyO5/Mwnm+2jov4JtDM0l?=
 =?us-ascii?Q?GqXYRuGasMkQjFsJclsoqmnLQ+SRuWGap7ItPSMZuRI+jbdkfcK/1FmT4TdY?=
 =?us-ascii?Q?zsXiPuDCEXbQu50YUDxFp5tUAVtQ+u0/0dmy?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uS/h6KX0AzyQ/5pYg08dKi+rUTHsH2/sI97XcY1p3Q+Duu/B8JtIdARPRDqw?=
 =?us-ascii?Q?66XilLeOGG+Mitc62CsWOgNLA+X7mvYum+8nX9dzsJ27h1aZkRrjHCtJi0Af?=
 =?us-ascii?Q?6wxP7hLA2ZuR6hFx+LUNlBq/zCnZ9XgSfR0q5Uoz6BvDDfDbMEUSUe+Cru5/?=
 =?us-ascii?Q?gotbFwhwkxR1Rx8ggfTceThHdLK8TTG4W4aFprqbMoCafQo4NUIxKF4ERZ/Y?=
 =?us-ascii?Q?OMrP51yJpzdUqs9DOPWSmC5t0CSB/0lsA+IVSVKb3arj4kKbLFmxuDLPeTmH?=
 =?us-ascii?Q?KCdUL6l6r7eorsx8HchJk6MrGONrKnoh4hAuP4lvKxRHHXlgmtSUI2SggJd1?=
 =?us-ascii?Q?4L06m3k+7qTEOvvTvQKSDFuFE4hYW136zNt2GvJeBcMq9gRy4nl3OJUCmoka?=
 =?us-ascii?Q?dnNpV9hpMtAFLcLq5ghEW12E1tSg+9zAn5PJNpS+qkqJhTTQhjIkeuZ5SGyo?=
 =?us-ascii?Q?dGH7md5GedSWBBdpGnJMhQKJIL1u1x7Uujg8T8Mzo/ALakYw0SFVRIqgKtSK?=
 =?us-ascii?Q?Nzkrk6PEoZs6bZGIvhzqNAsGIZaOxCYDe5wP5ANhe49KJVe7GnjTJ5XQm33m?=
 =?us-ascii?Q?NpX1jgSdEJqydtkvNQmaQRTlE7ff1GYEmjmXLfXHMzreWu6GTBGYen3ARdU2?=
 =?us-ascii?Q?TLQDoL2WpqM26vAqEtUyaNzkN52xLr/9uDoPB0x4kgphJkBQO6AJUYh+pAEg?=
 =?us-ascii?Q?6o/ZWQ2gXEwl9tqqkPz4+ZbD1aX8Ea6w1hrXV1Jupu8Pi0EXFCmq4pb1lM4D?=
 =?us-ascii?Q?8tuB5yIXujFQ6VzRdhljlsVuUA2dPffjASqLNiC4gI56fSQv61U2iwifuOwZ?=
 =?us-ascii?Q?ek9bTZi/cGy1Tj1HjeLaXB222+sYO/HubRyQeM98FZCWqBi32QrPUiKyacbI?=
 =?us-ascii?Q?R+e8yexm9p7IeH/rPbq7P5nTM+EYOpAWqk2M9oJ3kAZSOAuKF1TAsIm9Wksy?=
 =?us-ascii?Q?FzjI0RC6Pa0jNddjn74v/NDiQSfZM2esvEw3WIsDBu+pYnhAiOTrn7YrGT0n?=
 =?us-ascii?Q?kmbw4ovmz2m9yM2lVjwx9MpeRKTmiuOVQV+AIAOsm/oduANznXdytN7vR8Yj?=
 =?us-ascii?Q?D70dH8fpOQKAQaGI36ZEwblI+QgSs7AxT/Ha+oi8q44F3g7pVC7vFNYzOQyj?=
 =?us-ascii?Q?rkoyLZYmA6ySYnZMal/zh5/9VsY4C1idYSNNMWZyg899akBUHLCbC3dfSDx4?=
 =?us-ascii?Q?Q2P7C7A2x+XVrQARV8ZgSQ3SNCS8SiV03jPzRAESFVSnvUKsu4xGdngQDvLy?=
 =?us-ascii?Q?OKDEnNnsTwhDmHgQayjR1Fe9RXeo7M+wRy14aFJIeVPZSQIqQt9gn/tU0/nB?=
 =?us-ascii?Q?B2rvmjkDS6p3WQpbTGiWoNgcpVeLQqW9MDv34+l7y+eyWBkFi7/D007V407i?=
 =?us-ascii?Q?6Xxq+f3Jf2ygxgH/RleHspPmG1Cr4rw4lsQlwePO45M0yJmsI48MoNyHd2dN?=
 =?us-ascii?Q?SnZ2dqATuMYZRrJwPaFz+l0Wgf7Iu4XyzRRTwmXqN04rQNBWn/6G0m6e4tIc?=
 =?us-ascii?Q?TeeHV6Pm6b2mSAbWNmCGY/JbQY6s9VYIILYdVJnX+niO0W95fsq7VdOWdMhF?=
 =?us-ascii?Q?09O3AcLtY8sEA1+gUQrzlF/Symm9nc/rkdIY8sxkBIMT3D4tVqDZctKww3bR?=
 =?us-ascii?Q?Tz+0HqZ+NE2NyeUlfKwAvX+xHO0fn6suc7/dj6ZUuXzCdmXLmeDlcOZXolVG?=
 =?us-ascii?Q?ch51b5fgAAIlSRpQ3E/ckwdX4JN5c+7EZkfQm9KWCA1VaLcAyoIjZzKWFz45?=
 =?us-ascii?Q?2LdxDqE5TA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a31eff8-b681-4440-0c90-08de4ce75388
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 05:49:15.5334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vj2BGwwpMvYo9gUTicxuOd7aUD3HBA5uCy/l/G3p1K+kD3RDMHh1cDeTxIEvII8Fb7p9GOnDcrY65BiwgEe53A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8109
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

> Subject: [PATCH v2 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state for por=
t
> calculation
>=20
> Drop crtc_state from intel_lt_phy_calc_port_clock() function call and rep=
lace
> it with pll state instead. Follow-up changes will call these functions wi=
thout a
> crtc_state available.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  4 +++-
>  drivers/gpu/drm/i915/display/intel_dpll.c   |  3 ++-
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 19 ++++++++-----------
> drivers/gpu/drm/i915/display/intel_lt_phy.h |  4 ++--
>  4 files changed, 15 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index cb91d07cdaa6..d8739e2bb004 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4247,13 +4247,15 @@ void intel_ddi_get_clock(struct intel_encoder
> *encoder,  static void xe3plpd_ddi_get_config(struct intel_encoder *encod=
er,
>  				   struct intel_crtc_state *crtc_state)  {
> +	struct intel_display *display =3D to_intel_display(encoder);
> +
>  	intel_lt_phy_pll_readout_hw_state(encoder, crtc_state, &crtc_state-
> >dpll_hw_state.ltpll);
>=20
>  	if (crtc_state->dpll_hw_state.ltpll.tbt_mode)
>  		crtc_state->port_clock =3D
> intel_mtl_tbt_calc_port_clock(encoder);
>  	else
>  		crtc_state->port_clock =3D
> -			intel_lt_phy_calc_port_clock(encoder, crtc_state);
> +			intel_lt_phy_calc_port_clock(display,
> +&crtc_state->dpll_hw_state.ltpll);
>  	intel_ddi_get_config(encoder, crtc_state);  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index a4f372c9e6fc..1b5b18fa0a36 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1219,6 +1219,7 @@ static int xe3plpd_crtc_compute_clock(struct
> intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder =3D
>  		intel_get_crtc_new_encoder(state, crtc_state);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	int ret;
>=20
>  	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder); @@ -1227,7
> +1228,7 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_stat=
e
> *state,
>=20
>  	/* TODO: Do the readback via intel_compute_shared_dplls() */
>  	crtc_state->port_clock =3D
> -			intel_lt_phy_calc_port_clock(encoder, crtc_state);
> +			intel_lt_phy_calc_port_clock(display,
> +&crtc_state->dpll_hw_state.ltpll);
>=20
>  	crtc_state->hw.adjusted_mode.crtc_clock =3D
> intel_crtc_dotclock(crtc_state);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 939c8975fd4c..74b0bc90c959 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1679,7 +1679,8 @@ intel_lt_phy_calculate_hdmi_state(struct
> intel_lt_phy_pll_state *lt_state,  }
>=20
>  static int
> -intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_st=
ate)
> +intel_lt_phy_calc_hdmi_port_clock(struct intel_display *display,
> +				  const struct intel_lt_phy_pll_state *lt_state)
>  {
>  #define REGVAL(i) (				\
>  	(lt_state->data[i][3])		|	\
> @@ -1688,9 +1689,6 @@ intel_lt_phy_calc_hdmi_port_clock(const struct
> intel_crtc_state *crtc_state)
>  	(lt_state->data[i][0] << 24)		\
>  )
>=20
> -	struct intel_display *display =3D to_intel_display(crtc_state);
> -	const struct intel_lt_phy_pll_state *lt_state =3D
> -		&crtc_state->dpll_hw_state.ltpll;
>  	int clk =3D 0;
>  	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
>  	u64 temp0, temp1;
> @@ -1748,12 +1746,10 @@ intel_lt_phy_calc_hdmi_port_clock(const struct
> intel_crtc_state *crtc_state)  }
>=20
>  int
> -intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
> -			     const struct intel_crtc_state *crtc_state)
> +intel_lt_phy_calc_port_clock(struct intel_display *display,
> +			     const struct intel_lt_phy_pll_state *lt_state)
>  {
>  	int clk;
> -	const struct intel_lt_phy_pll_state *lt_state =3D
> -		&crtc_state->dpll_hw_state.ltpll;
>  	u8 mode, rate;
>=20
>  	mode =3D REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK,
> @@ -1769,7 +1765,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder
> *encoder,
>  				      lt_state->config[0]);
>  		clk =3D intel_lt_phy_get_dp_clock(rate);
>  	} else {
> -		clk =3D intel_lt_phy_calc_hdmi_port_clock(crtc_state);
> +		clk =3D intel_lt_phy_calc_hdmi_port_clock(display, lt_state);
>  	}
>=20
>  	return clk;
> @@ -2220,6 +2216,7 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state,
>  				       struct intel_lt_phy_pll_state *pll_state)  {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	u8 owned_lane_mask;
>  	u8 lane;
>  	struct ref_tracker *wakeref;
> @@ -2245,7 +2242,7 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	}
>=20
>  	pll_state->clock =3D
> -		intel_lt_phy_calc_port_clock(encoder, crtc_state);
> +		intel_lt_phy_calc_port_clock(display,
> +&crtc_state->dpll_hw_state.ltpll);

Readout_hw_state already has pll_state maybe you can directly pass that ins=
tead of what's inside crtc_state
Since by this point we would have read and dumped everything inside pll_sta=
te anyways.

Regards,
Suraj Kandpal

>  	intel_lt_phy_transaction_end(encoder, wakeref);  }
>=20
> @@ -2275,7 +2272,7 @@ void intel_lt_phy_pll_state_verify(struct
> intel_atomic_state *state,
>=20
>  	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
>  	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state,
> &pll_hw_state);
> -	clock =3D intel_lt_phy_calc_port_clock(encoder, new_crtc_state);
> +	clock =3D intel_lt_phy_calc_port_clock(display,
> +&new_crtc_state->dpll_hw_state.ltpll);
>=20
>  	dig_port =3D enc_to_dig_port(encoder);
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 7659c92b6c3c..c4999a55473e 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -21,8 +21,8 @@ void intel_lt_phy_pll_disable(struct intel_encoder
> *encoder);  int  intel_lt_phy_pll_calc_state(struct intel_crtc_state *crt=
c_state,
>  			    struct intel_encoder *encoder);
> -int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
> -				 const struct intel_crtc_state *crtc_state);
> +int intel_lt_phy_calc_port_clock(struct intel_display *display,
> +				 const struct intel_lt_phy_pll_state *lt_state);
>  void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state);
> void intel_lt_phy_dump_hw_state(struct intel_display *display,
> --
> 2.34.1


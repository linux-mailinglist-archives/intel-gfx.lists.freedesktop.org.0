Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEFBC507CF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 05:10:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09FCD10E187;
	Wed, 12 Nov 2025 04:10:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ixz33pdC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C91510E187;
 Wed, 12 Nov 2025 04:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762920650; x=1794456650;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1nL9XBmwBx3PtyU53sDG3RFkR/YogqkX959P/weqGm4=;
 b=Ixz33pdCGwMMj3UnSxhlLn8PV/Zc9D3GrNXNXkaszxRKQOgJ/BTxhQjQ
 nuyNmwlFhfHSYMMEcyYXrJq/lEc31fcRBhg4vCaTVUgaNHmNMjvcZql18
 lJjwYQ28m14V/8sak+esTLJIKU4T/+1zvTC3eRtkSzhtnMBTnJ2k0jM4R
 J8awcB4gwnp+Xh60Q4JZjKoceLA9PtJFPlKbLKKLZpkdzzdsS/PzHnBEz
 lQV/GRv1xb6cSKuWuymZBX2yKi11kItUYan8BZ2/pTuotkbWqgr6SvSlR
 nt7DUIYSvrLSipD5+HiljCBNY/UUchzkICO1W2Iy3WhWfsoSyA2eO/WCN A==;
X-CSE-ConnectionGUID: 4piEwbb6Td+swEYnBLbx1w==
X-CSE-MsgGUID: GTnIJUOiTnq9jnmh4PP47A==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="65073115"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="65073115"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:10:50 -0800
X-CSE-ConnectionGUID: Ta1GOIvMSC+o2A5FWT2x7g==
X-CSE-MsgGUID: ODh9HSI8QJGbgK+Z2d5gjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="188413149"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:10:44 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:10:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 20:10:40 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:10:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qb3OHLUbzhrmZ79XbPyfW08ymzV8Au5uUExnoFzOT/xXJFZxlD2A+gR6MdTGV3EohwRaRXLp6Cg7YckO6Gh25S181X2oRB04qUEfXWWlVzyQiwRDu+DeSEMJ8TrpsHuorWGBNWEniKaG1G2Pr1kYuhvU9K+u1oGcZtSw9OQ9Ruw5AI0zP+0B0LnQWxTN24T0BWEvJCQXXPJDksLFbE9HsmUY8GSfXCJlP2+xryqWqOzxEJIiZ126sfLzeKR65HfCm5C/ckV+/YgIo1HsG8k79QLyALM6SAaL+QdnWjSLfdtU0kxfPNmNJ2oCLxYcfiTr6Upi1eGfDWFi/3Hflna/Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=26Q9iaGa/XkxdYoD7r/ShGZZAteThAMbXkaAoOz3G9M=;
 b=IpZpeN4z3U+PVu925b3vDgBb6lPOOVGTYUyc4B+ECesMJsv9o/qPUIx8fseWFXskCrQaSQKqPGxap+G5z4xYT4sTo3+zP2oDHvoyvW9sSIxvc0+YUCeMJ/bm/ECu+RO6cRy0ac3T3/BZ5ZY6rIpYB3aareacTYGLP1PVYCXOTNy3PToptumc4xrj2ov1UTZmmeRLVEGjyh51FeAZYtG4PTDekpOcea1Vcu01clXK/3EmCLviX1INSJN0E+bqpUA0JrgADb/kuRGup2p2fHdo4Ufm7bQMGl8Cb3PiwnJCZda345JrwdnoyQMlXeTLf0miWMIdoMT0fD9sahp5PKM9qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB6667.namprd11.prod.outlook.com
 (2603:10b6:303:1ea::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 04:10:37 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 04:10:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [CI 04/32] drm/i915/display: Sanitize calculating C20 PLL state
 from tables
Thread-Topic: [CI 04/32] drm/i915/display: Sanitize calculating C20 PLL state
 from tables
Thread-Index: AQHcSllSd3u+CaopsUC0PpPAn8rR6rTtBCYAgABLzQCAAS8kMA==
Date: Wed, 12 Nov 2025 04:10:36 +0000
Message-ID: <DM3PPF208195D8D2ED4D7B5A2AC5C6283BCE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-5-mika.kahola@intel.com>
 <IA3PR11MB8937ECCB2E66ADCDDCCA33CDE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
 <aRMJxK95P-811Its@ideak-desk>
In-Reply-To: <aRMJxK95P-811Its@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB6667:EE_
x-ms-office365-filtering-correlation-id: 7786ab10-5af8-4c49-ad45-08de21a16eff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?H3mPRAwLj0vaoWpHQVt04KXNlV3UyRGUUgPjgbfT15NnDshdrpjoR2zYfrZf?=
 =?us-ascii?Q?mup5q8q7u70oRPfClA2DTOmsI30XDLCdUevXdxXmsT2nqM0mlKz+14LhlBbY?=
 =?us-ascii?Q?0tO3ZdBHr/6bmZVXn+ku3sJY+05mujQCgZDfHJqd4ix0WyCY0PGd5Pb0viAe?=
 =?us-ascii?Q?C+91JK/02bwP5zZfcrRzBy0j5z3WAvF9BCmwJWFZU9xWBMVsusoosHVexDod?=
 =?us-ascii?Q?OaiDGAxzO+Nqkbg2aN/QHeGleM2uS22m19k57yw4/hwfK+uonb7axeUk5LNY?=
 =?us-ascii?Q?DUNwHmutnLO8zq2zC+pmG7kT80lakyeDbrqO8ts6i475MibOhU3caEWM/3hE?=
 =?us-ascii?Q?ALSzPoA2c2LzPxLMseXGmzXpxW4FdZvY9CYGZ6WTuUUswAlPNF41rVaUYVEi?=
 =?us-ascii?Q?MChuhgr711ZQjrTy6ojcmse6dSJn5L7ab4dyg5K50IVFcmpdFv3JIm2fYp7L?=
 =?us-ascii?Q?AesZ1nP55hdGRv5DbmLy6svJ12d+Kjm9JZUzZPjD9pbTBCv3B7D/2rlFfQia?=
 =?us-ascii?Q?n+01lDud6iDOVF4o8iF0fFRzM0825bYVE50hW/JfzCuHzzCiZT42+xB/kjcy?=
 =?us-ascii?Q?PxGi7p1Q6AtdbdY2BWkrOqd4nugQtSWjspDMLU8XfbYi4NHU+uJMxz6y94ru?=
 =?us-ascii?Q?RE59TyF5k5xXUd/4+M+ZwvehqmNhspitiuLme/FJjXOVqkMFH9D+x4GEl5hz?=
 =?us-ascii?Q?1bdt9XHNVgSR4f3OacUYhGQ8Ezevwet74T8VspUh9qfsgdZ23cBrQiwgGtbJ?=
 =?us-ascii?Q?0kVGPCKjFTPzwf6p3ke2z65sJH8KiXQpUSCZ1KleqtcXIoBudQD5cVQngo62?=
 =?us-ascii?Q?jqwBm4LMes8OuPNJQaeJZKDCenxvtzZEGrWIz/0oTF4GuWmgQdElAqKmoptG?=
 =?us-ascii?Q?zI3PYf5J9uEpQU5qYme/7ukFzH40mMwT6KAreOHwLq+Kp6mvD7RrEeWPVbu/?=
 =?us-ascii?Q?GJP+vB4OMhhAf+lbUNL+8Q2occc5B0f5urnoRTf7qRvoIP5jb37Ex9upmJ44?=
 =?us-ascii?Q?xiBSUcJo2ioYrbr5MnqOQhhqWla64qBSB86FJEqJee2q1hwzchLXpuK+3AEm?=
 =?us-ascii?Q?ICUqur333G55rXKmHVQFfDYoBPeDyaps+vN9HccLSMAhhFHnMzjwo5IdnLky?=
 =?us-ascii?Q?GHCgymtVLklkaMb/L4MOdQWZL3M7GzhIX403gUVDEecfREf8n2KhQNLnu8BJ?=
 =?us-ascii?Q?fk8nsxMwC9GfZAVknhQU1TNr6ofl4W8izMGw7av/l4G31fX04CUtZXRXCJn1?=
 =?us-ascii?Q?1T7WlFxIwAaesU0jMeHD8OMeDQWGVfP0/axIt3KM5KIITgZi6tLqsF1leeNE?=
 =?us-ascii?Q?6D7W59mVo0hs+eYvZt7w5TLG45WdQdgv+XCBiwZSzq4u3+Pkkwpsyf79imhJ?=
 =?us-ascii?Q?iuu66WTHI5XZySurzvuGIAwCw0mlGqNz7aRMWFt3BWb8soPW1dNcyJt2uK1/?=
 =?us-ascii?Q?YbIDCco5DFrL+cEPzTvIB2Tn1zsMi0ppjMx6FqgAEze7d6LL0VxkKQJvmdwV?=
 =?us-ascii?Q?pRW4UZsQw9C2glWuBkIQQmHOqrcOIxfCeGyE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cyb1bS/NZIii+H+Hsc0kfE/FZP2+GMFKpa9qjfT7GL5ndYzrQ5l9wHXWsCGr?=
 =?us-ascii?Q?3rYK3GjPHoWB1Z5vt+img8rJZdGLuQttDEFiocy7qnmQRMlT4pOtLUEGm+eQ?=
 =?us-ascii?Q?WSRHx0LSgtMm066P07yLwZhG8bknBxrdXjZjnpyJrXokm4W1OrNEOlA89wtK?=
 =?us-ascii?Q?fRN+K9QfQPzXqf3QQ4S3XDGQenRrQUNdCa5zwPPmCMD9rsulvEnk3VeywrTS?=
 =?us-ascii?Q?GxuaELLeC8amzOP2yn8WnRsca3wS0jwXuSTA3J7pMhiG8p1kvkzXNMuYyHDf?=
 =?us-ascii?Q?ljei2sFyCAjTA1xBuAJMm1Y7aUw9OuAZLf7na49KvYzWrPWprF9YigGyj2Qi?=
 =?us-ascii?Q?3hrcc5B3hvIK6tsuKt73V8c9GMDsr/UiumfWzqF3MT64MBLH4n863vbfy+ps?=
 =?us-ascii?Q?dPtenzgfBP/jy5GOy7ObhSIGd0EkRT3nOT+drwa55ulKEhVneu4ozj2kN2Cb?=
 =?us-ascii?Q?7pU3yRER+IxGDP1gYNhwAWu2wydRFYQHMOvz5trDlNF7LaI7A+DlEMBJ6p5s?=
 =?us-ascii?Q?wCdePii8Z5IKrWaXrDy0YREREox1uPBQhRIZcIrfKpgB8I0/CUtH4B5l//d+?=
 =?us-ascii?Q?McXxCA+oeMAPG8aKj3QlQHrDQXXCyuF3vMttP5eurZbSCtgcHvztQo6sAaz9?=
 =?us-ascii?Q?RUkyrZwvcRL1NCRBQQmsLxnE//GAFDJK8xpW2GvWtVWh9mA74RzoZgcL3cam?=
 =?us-ascii?Q?Q1FRqd0yWagKLpxue0iWw2iezXHIe3ZK6WFRoM7LnszJH/e3Hw/Ez9nI+qqc?=
 =?us-ascii?Q?x6Yt78o+8WT0i7M6m+9QTA7a7mZBQOCP4wvDez9xBBtDr3cBEuPfw1+0gHWy?=
 =?us-ascii?Q?mspoTE0yll458jUf1BKem8iiqYbMGB/7Gd3z1L07bY5D3++w/Ryf9Am0e/zA?=
 =?us-ascii?Q?aY+A3krZTkJ5JFz3OfW8ZAQMstffWHPan9SwIxgpkImquluG1qCFkjvuW2/J?=
 =?us-ascii?Q?1rRo/H26oMyXQet8tygZCUSYKn5uRRl8RL7mUhp0/bDRoNDzVTpFhF04/Eew?=
 =?us-ascii?Q?FCLjcKjopDyBON5VRfzFBo1eob8qlOisdCKrFDLfHScCC5wupeiH5TarByXL?=
 =?us-ascii?Q?ZxaCnosVJTBDvOkncAdNRea8QbSy4g40DlMNA+bhEqJe0yj+l2tW6I5Nz0cw?=
 =?us-ascii?Q?Ya+zpmAFbPmdyrJDPAIzh8sD0Ja0wvEKVX7Ew4z95ocRNA+nvbzAiIeIhxjm?=
 =?us-ascii?Q?hFsOr1FVWf4aHJV31T2eUqeWj39cyKIvcHCzEOVVZS78mSvMLYMx5Iq6n+/q?=
 =?us-ascii?Q?VZZ6PIjEs8KXhyqyZK4ta9JUJQ5eFbjXAb9NHr6NhFRNTSJGseKSAZetHASJ?=
 =?us-ascii?Q?TXhUtiRE71gNbYXsgfzoW3xPs1w4eQIrRZ2g26fOvCat+HAFZxPakPPP23dU?=
 =?us-ascii?Q?DmE+lv/Bd4bw7DfoNLTduNj8hzHLvPrlgjpOZg8C0dWrZxcMMjtFjimUCLZB?=
 =?us-ascii?Q?+Mp2b0HEqr4ViD7D9XHCca0Mi++OlLk8wdFjGh2HlDtGjdqZqtwXSEQ5N4cs?=
 =?us-ascii?Q?7EYyFBlSl60yJTesml+opm9H4lRkieHFtqoBGLKQbq6kqUo0xHRZCwfd63ta?=
 =?us-ascii?Q?affSRjz7YDiqIftwD4MKJqgcWgTD0x9tXlbT9z2g?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7786ab10-5af8-4c49-ad45-08de21a16eff
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 04:10:36.8674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wp5B1J5SD4mTDUL/9s/MGeQLihzcA4a21jDSHkzrqxlbNXdKxT7OkBpfkOjwRMs+mNoJS1P8mVjuqs2lQAkNnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6667
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

> Subject: Re: [CI 04/32] drm/i915/display: Sanitize calculating C20 PLL st=
ate from
> tables
>=20
> On Tue, Nov 11, 2025 at 07:36:47AM +0200, Suraj Kandpal wrote:
> > > + [...]
> > > +static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_sta=
te,
> > > +				   struct intel_encoder *encoder) {
> > > +	int err =3D -ENOENT;
> > > +
> > > +	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
> > > +
> > > +	/* try computed C20 HDMI tables before using consolidated tables */
> > > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> > > +		/* TODO: Update SSC state for HDMI as well */
> > > +		err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state);
> > > +
> > > +	if (err)
> > > +		err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder);
> >
> > So this is something I have been meaning to fix we should really be
> > using the HDMI tables already defined. Computing them ourselves, that
> > should be reserved for only when we do not have any HDMI table for the
> > said port clock available.
>=20
> > Also if we use the computed tables directly that means we never end up
> > using the defined tables.
> >
> > SO the flow here should be
> >
> > err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder);
> >
> > if (err && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)))
> > 	err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state);
>=20
> This patch is not meant to change the logic, it simply wants to make the =
logic
> clearer to the reader. What you suggest should be a separate patch

I am fine with that do you want to add that as a part of this series or sho=
uld I send a separate
Patch fixing this.

Either way
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> > something like this.
> >
> > Regards,
> > Suraj Kandpal
> >
> > > +
> > > +	return err;
> > >  }
> > >
> > >  int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> > > --
> > > 2.34.1

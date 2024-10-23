Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDD19AC17C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 10:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD45F10E0C5;
	Wed, 23 Oct 2024 08:26:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ro5uC7DP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1588210E0C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 08:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729671965; x=1761207965;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/iwWxJYAYZEm6FfduaXGAZ1ehh4qYzZiaOwXvAk/vMc=;
 b=Ro5uC7DPEnkzzFjyGRXDSv7oga3LC6oStbuctob8PjcxfFpe7YF9qzt/
 j9frdHQu4lhD/f/PkamB69lZYptY+YJ1N75sYu/OJE9GIN+JQDLVxgkl2
 mELnrHCJie7vG44kOxxx/wHhMaf+GmvOA/L3rZRrUurfukUoueqNBn5GZ
 fDxR+AH2KSeGYOtXNGtbQ6gwhq4Kl6mQIYSLEEuCgAJnE528bR7qGhl2v
 nR3/fSIPYu5i2jz7bF8I3bVCfQ+sjRXMPMc0/3iX5NlF3+z9fqXq8zcuA
 WH3vOA2pJaDS3SvxerTna8pmO4n+S1wAxmJ0oE4mJjeTEPLhyyIBPg56j g==;
X-CSE-ConnectionGUID: obdhJ7r9TJSJPYswPu563w==
X-CSE-MsgGUID: CJGCHsLrQvGs+Me8MztQsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29357531"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="29357531"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 01:26:04 -0700
X-CSE-ConnectionGUID: eu8sMZsjSxuG+yZgOWlAYg==
X-CSE-MsgGUID: JQ/2wIysRkKNrGN8/wx7Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="80200115"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 01:26:04 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 01:26:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 01:26:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 01:25:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ytmWnUts4Kc9d0qt2mrrrc6xbgf0CAwoClE/IrUzpdzna8SDiezGMiGCtOnZhN7TjeI9BOQOXuVJdnMSqVUCNFdhbtBGB7R7a1g6lZFVNMsRMbe5O3RiCJRg/39Tw64WIeNcDrRkKxrRcQE9F1mRh9ac2A16A81OhaMapbBrv0NI4bCDmfl7vljIeTk7f6yR5Og6SckG94lBlazX6i5PzAVn7a1UWsWMvgXeTpKNxa71F2z10n5vkwzlb9CH0Gnu5qwg/LZIB5ysNsDgpGjn2pFXd0T8fA81T69McNOhtH0sUCZUG5NFyhme+0rxUfTsSJl9NxQ0tYa+aa10TQYzdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mfDdT+dES5sCUixAadv+L3UDHs0zC1JxWgwmuiHJC6c=;
 b=fEuO2/oASbtOXqO69QXRnZuD7SXjVLNNmuC7rTOxGMu7f0siy04frFUs3Gla5XGOZBYS5X3mgKW2E4yFXFyAZj23QHPPjGDB5i4VQ2uEfpeSlZvN/9G87dkILMysLT/s3o84A/mOuG34p/v6g3QfWiC3vifbcfsdwS/7xCSsgA+CQgQYR2zuLARM4AsZw+cReptO2nxMuJWUN+sNlFJF9akJP3Cd49boomRzpmHs6WCH6iAOALdz/2ijhwUadPSU0VDHputNGImXwOTNKOvW2vSHkstcWifrPZC0K1QqxY9UAaGJPkeCd/CQHlPSZD2KmGDAooiqx4++30o/cyQeZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH8PR11MB8107.namprd11.prod.outlook.com (2603:10b6:510:256::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 08:25:50 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%5]) with mapi id 15.20.8093.014; Wed, 23 Oct 2024
 08:25:50 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Jadav, Raag" <raag.jadav@intel.com>, "Nilawar, Badal"
 <badal.nilawar@intel.com>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "andi.shyti@linux.intel.com"
 <andi.shyti@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Tauro, Riana" <riana.tauro@intel.com>
Subject: RE: [PATCH v2 4/4] drm/i915/dg2: Implement Wa_14022698537
Thread-Topic: [PATCH v2 4/4] drm/i915/dg2: Implement Wa_14022698537
Thread-Index: AQHbG8klKd0YsL5EWk+UQyYo/diCMrKS0F+AgAEtFICAABR2EA==
Date: Wed, 23 Oct 2024 08:25:50 +0000
Message-ID: <CY5PR11MB6211A804E7A372CB6B47057A954D2@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
 <20241011103250.1035316-5-raag.jadav@intel.com>
 <ef992052-ad90-42d2-ac79-930308df6dbc@intel.com>
 <ZxihLRuJcLU1gHRP@black.fi.intel.com>
In-Reply-To: <ZxihLRuJcLU1gHRP@black.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH8PR11MB8107:EE_
x-ms-office365-filtering-correlation-id: 74ae1e43-554e-4396-4682-08dcf33c4db7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?g48oYa21ljK/dXqBfilfmZpRknRCK9lwvRpUVwieBhSyKWLr/M3/6GsHTLeJ?=
 =?us-ascii?Q?nODdRbgiH8liqfEF1/sbC35wNKPobwSOTw+zTdb82A0p487u/h97AOKnlikI?=
 =?us-ascii?Q?qvNAZmgsltSD2a3Bf0+CX+S/TNkPfelMmeo9ukNUP83zjpR/jt4hvMUCdBTM?=
 =?us-ascii?Q?tTO+YG8XQtTcrtOp08dlm2bQwpBGkRZVoBji84+4xdQ52LFCFcj7m3+OHFUg?=
 =?us-ascii?Q?+Vu6Ksf9sy8ksh9gnNJ7AUNVlBeOAM8BsqLRJTd8s/tHCJqztggbRhnjTtgr?=
 =?us-ascii?Q?6E1cvLNUBG/wiqwp9mE9OITZVi6zHXpFrDck9AhMlsFowLmErsyQp/mvDlet?=
 =?us-ascii?Q?t6o7z4t1cMXi54RPFaCloiHs7l+icuEd2wQUMdHXwdRgb3Ue1xEhQGQ3i5Pd?=
 =?us-ascii?Q?vXVr1xVnbg56OpzmmtOhjT7Y9IFceXjqbF/RjMWzFVzE8LYwxYX+sKvMq+1W?=
 =?us-ascii?Q?96LkDCSRDCdTfPTokC8/Do6cqroTS7CawoX3vkHXReCmWQpLhsvi27phi9I+?=
 =?us-ascii?Q?sXGyElJUOYbIVCaUlpM9U15v4ePYsi6su+SP0cQ6c8Pfd9NmuJkFyuxxl+DC?=
 =?us-ascii?Q?ODjPDCEx0J7knkX2WOpjwlzuXf/fQK6kPNi341yuXJMaGCXN/R+ds76vaoR1?=
 =?us-ascii?Q?1o1JjetS+1aHbDRIGidV2tHxvnrFSLUeWSevcElD6v2lco4xXWJmte3DE5I4?=
 =?us-ascii?Q?+ByZwWVi8BdX/UWazOpkHuiQUObcSvjON9m5c7n8A9bpy39V1lEJQl29tPUN?=
 =?us-ascii?Q?F8XZXGf32Bi6Oq6PdZW7DrMi21PdfPrNqu8M9ZbXpeQV5e7PtahfOgA4QUMk?=
 =?us-ascii?Q?e8JmuIlXoSsHq+z+KxgWhU0j8xaLhnx+c+Gk/8xBSAaGXRlPCu2pTotleJ55?=
 =?us-ascii?Q?7oyk9hcflqlGTBeE28ywmm5GE0TNkIyDxo/hYDzQPg1zWzQN9ep2KUdRLakk?=
 =?us-ascii?Q?cP850kVyiWbZWFzT/HNDLelL4iz3N8P5k0Kq5Fpu8zoklNBPHYveZrCSc2A1?=
 =?us-ascii?Q?HrkZrmoIJt2Dc5kmbsu2ipne7BdlQpCaNk6s573KH/whfKi+oxdes8IOWI0y?=
 =?us-ascii?Q?f1U51uVyOZnEEOwNYaGfLCR7kjHZukcvzw5UdMxOzcGfiWgSY9wY+HRxqBj+?=
 =?us-ascii?Q?KwS/39s2KO1TK5SOEq3A+XCMkqqPFPcUGqxnc3qpPbKXDpw0IRyeOaxdjU/J?=
 =?us-ascii?Q?fppSGppAj91JRYRw1pyunzMG68ddJj4wfKsSRx0EYAVNbGwl514yk4GEWd2A?=
 =?us-ascii?Q?u22JMpdZ2jtrK5Hy7mWpvXf7xP38aoe61moXXPcl31iFoKZK/L8iBM3zUXY4?=
 =?us-ascii?Q?kC3TvwlK231LidE5BYowxWcqvGpq3ya1+Lye1HRHEuC3icyzZ+dF+9hU7RG4?=
 =?us-ascii?Q?RHaJZJI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aoKB6+AqmmBuwPFeUA6R4mbf+5A3FaRXRetCRVmtAxhlwvXXxR0DDmM6iBSm?=
 =?us-ascii?Q?+EOR/8vmeQusikVmBbG98sqhtPpNAZ0CwAx+cRDHoPag1dw3Ovnc6wY0Bji4?=
 =?us-ascii?Q?jSF7xbnk3sEXYzekrwTIoM0S5ULxcmmjAuwnHwhFIGLZYBKsUsvVgTwr1R98?=
 =?us-ascii?Q?dhljLQzweaUtnJwuLMceFzX6275M/Gs3oFOG29gUnKtKAyZQ2+bR44gqZDv0?=
 =?us-ascii?Q?2lm+hem6uiXVToay9OjEvkEiUgbd4x0iV/5sIWEAlqQSXxAggr300f+uvxST?=
 =?us-ascii?Q?0u8teCBfQf5sFDEHCTngmK7SjKV8BE9sb12pp6VmxPJRoYoEdgbVeGWU/eA0?=
 =?us-ascii?Q?T6ZPJPV1D3j95CG05d1SqpIx9RuZ3defgsp6J9K309Y+B8MlaZ9hS1PXmFbN?=
 =?us-ascii?Q?LnGdDJGEHnNC9N0oVg2fo5y3vHvi/Ew1h2xwfuFGZ2opQB63q/v1Ix54kuA9?=
 =?us-ascii?Q?KElNyvb095teZWYn5czf9dFuUrE1xfqtrGzmLWGYVnoC1tL8DaqrMhycV40s?=
 =?us-ascii?Q?vxJr+lEW3G8nOdvJwhvitna3oYarVi6PHi6B9OfsUp/Q+0ivMwXYu8qoPAPN?=
 =?us-ascii?Q?c2yQIz7BT2CTwtBWLGk7CJtUNiBgvi986TasuEHTkYjgfZEW9RC/urou6XrY?=
 =?us-ascii?Q?MN8RqMGp1JPdrQ2qnbchcvy2xk1shitwoUwmxMBW4CGPp/vCRhy2zYm6Q/V1?=
 =?us-ascii?Q?8yOrQhdfPpgnP2s56tYbb7E0b19i+Oj6OdgHYXwHUOwsj1Yrg9vguQif+ODL?=
 =?us-ascii?Q?SqMfJU4AHpWgoBXZ5lcD1W3sKW/8nudfxKM2Usoyv9NEMEnfsAKxmBrY4eTa?=
 =?us-ascii?Q?raOxd3aFXT7whHcPA34n5zjKWgtGVvEnWGo4Kwe9agmnjwoTOLcsSeUJX3Qh?=
 =?us-ascii?Q?B5/25GwYa8nys+MG5VQOAC2pfJYcnyTgFAif27MTTGfxcTmSKytgwW0mSejQ?=
 =?us-ascii?Q?Do+Kh0etMO53Hrj4Q9e5DMFmPFYwJZTpAIn5RQnC/OvwlCNoSWM6mR4FuSVB?=
 =?us-ascii?Q?SIAAzYkxNpBaK69ODcbrY8apkwUiJBeC0V4Thnq9sfMHrt210FgiF2dEfRtd?=
 =?us-ascii?Q?j9kTaDvsmXGh/Qj2tsYWAfPmgNjr2IqQx5MW45ECPqB5rZ4+BqIfJ4kdJsoO?=
 =?us-ascii?Q?Cae2auOjTa616dMcPXVjrFrZNX4QIawf/xeW9M30P+A2K68Y26hDQZGMt5sS?=
 =?us-ascii?Q?Ylf22ra/rl3aXoI/sh3qI4w3Z+bxzwHIyOs8ooU65nDKBa80EUwGaP5Irq15?=
 =?us-ascii?Q?QG6emuFVNbIC1oGnSzE5dhe/hrFevKLvjBXALwR8lmpwcF/jzW/hrDC30DYI?=
 =?us-ascii?Q?EVWkj9BQdgsla/sgG/gw5cAVU0JmpGDfELgThTFvhrXKpfsoNysVZq5gGDN7?=
 =?us-ascii?Q?3ZDU3CjWfr8NuAjO4ItX3b7XJStQb8NRLtf3+djhLy25uSJ6ySEZZt2c2Oa3?=
 =?us-ascii?Q?xzrrYQ8OUlD7id9c6HlCVUXAlbNziQmRp1tqEJUTBaWGQIThhe+2DF6I7nzD?=
 =?us-ascii?Q?NB+SAl/GlfC7GVO4UDOShwp93nmrm6LgRrryxLcBZ90uVO3Msd+Fd/zmLz6g?=
 =?us-ascii?Q?IwQESSwU8F0qE/4DuPgSlRkycSrGFn4ygTzWlxYG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ae1e43-554e-4396-4682-08dcf33c4db7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 08:25:50.7166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tDOS5TGwRwQy/Q6v9fmQtgr5gtPi7v6LZYsve7DuE+ZaIMBDp6VRgBObp0PXrSxK2bP+NwrZnvopwNwvX981u/oi4uN92sGtUDQeGqcOF5M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8107
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
> From: Jadav, Raag <raag.jadav@intel.com>
> Sent: Wednesday, October 23, 2024 12:40 PM
> To: Nilawar, Badal <badal.nilawar@intel.com>
> Cc: jani.nikula@linux.intel.com; joonas.lahtinen@linux.intel.com; Vivi, R=
odrigo
> <rodrigo.vivi@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>;
> andi.shyti@linux.intel.com; intel-gfx@lists.freedesktop.org; Gupta, Anshu=
man
> <anshuman.gupta@intel.com>; Tauro, Riana <riana.tauro@intel.com>
> Subject: Re: [PATCH v2 4/4] drm/i915/dg2: Implement Wa_14022698537
>=20
> On Tue, Oct 22, 2024 at 06:41:57PM +0530, Nilawar, Badal wrote:
> > On 11-10-2024 16:02, Raag Jadav wrote:
> > > G8 power state entry is disabled due to a limitation on DG2, so we
> > > enable it from driver with Wa_14022698537. Fow now we enable it for
> > > all DG2 devices with the exception of a few, for which, we enable
> > > only when paired with whitelisted CPU models.
> > >
> > > v2: Fix Wa_ID and include it in subject (Badal)
> > >      Rephrase commit message (Jani)
> > >
> > > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 ++++++++++++++++++
> > >   drivers/gpu/drm/i915/i915_reg.h             |  1 +
> > >   2 files changed, 19 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index e539a656cfc3..bcd7630c1631 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -14,6 +14,7 @@
> > >   #include "intel_gt_mcr.h"
> > >   #include "intel_gt_print.h"
> > >   #include "intel_gt_regs.h"
> > > +#include "intel_pcode.h"
> > >   #include "intel_ring.h"
> > >   #include "intel_workarounds.h"
> > > @@ -1770,9 +1771,26 @@ static void wa_list_apply(const struct
> i915_wa_list *wal)
> > >   	intel_gt_mcr_unlock(gt, flags);
> > >   }
> > > +/* Wa_14022698537:dg2 */
> > > +static void intel_enable_g8(struct intel_uncore *uncore) {
> > > +	struct drm_i915_private *i915 =3D uncore->i915;
> > > +
> > > +	if (IS_DG2(i915)) {
> > > +		if (IS_DG2_WA(i915) && !intel_match_wa_cpu())
> > > +			return;
> > > +
> > > +		snb_pcode_write_p(uncore, PCODE_POWER_SETUP,
> > > +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE,
> 0, 0);
> > > +	}
> > > +}
> > > +
> > >   void intel_gt_apply_workarounds(struct intel_gt *gt)
> > >   {
> > >   	wa_list_apply(&gt->wa_list);
> > > +
> > > +	/* Special case for pcode mailbox which can't be on wa_list */
> > > +	intel_enable_g8(gt->uncore);
My earlier comment was to include this WA in intel_gt_apply_workarounds wit=
h  an intention to
Add to wa_list_apply() but seems it is not feasible to keep in that list.
Therefore it is better to keep call this WA function from i915_pcode_init t=
o wrap all pcode related
Functionality.

Thanks,
Anshuman Gupta. =20
> >
> > This workaround is not specific to GT; G8 is a state specific to the So=
C.
> > Therefore, move this workaround above the GT layer and pass argument
> > i915->uncore instead of gt->uncore
>=20
> Since this WA needs to be applied on suspend/resume/reset cycles, I found=
 it to
> be more suitable here, atleast according to the documentation.
>=20
>  * - GT workarounds: the list of these WAs is applied whenever these regi=
sters
>  *   revert to their default values: on GPU reset, suspend/resume [1]_, e=
tc.
>=20
> We can either limit this to primary gt (using gt->info.id) here or move t=
his to
> i915_pcode_init() instead, whichever is the better option.
>=20
> Raag

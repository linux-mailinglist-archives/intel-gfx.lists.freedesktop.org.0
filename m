Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8489AFC06
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 10:06:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDCFA10EA1D;
	Fri, 25 Oct 2024 08:06:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aKo2LPZU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A788D10EA1C;
 Fri, 25 Oct 2024 08:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729843597; x=1761379597;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dcYkf6eVLz0eGmJ7ybREZcItjy4+qPkBXtvlsf10PHQ=;
 b=aKo2LPZUFxxU1MIPEYaK/4lI/9/ozc5HicBtPZj5uHL/9jVTk8FmyzFW
 JiWik2WOA2AkeQjUy699wJAB9aySq4wa8EkQbQgqAzQSgx8qwmA6Tb+v3
 V73OiPJ5BKGEkgxGfuJZ3JpkoZ2kN1ZHbZxxwK33mhBaZZcrqy7b2HyYL
 cnVucv00kJjRUgJF5J7UrYgJt3WOuFJjhpHppq6U+hNSWt4zoT0A3jlVs
 wZC4T20sma4xoOhVfURqkMjRxSBSCwwFbdaEMvzdtJTrsMGLEKHtXANm4
 ilv0NxRjqyH2/a0Wf2Pu2mlbDIoinwbptRUs6KRRniiRDOWOvfsayQIkd A==;
X-CSE-ConnectionGUID: zHSyrbNzQ/OFib1740S39Q==
X-CSE-MsgGUID: C7h2fY4ETymSNkiDz2oCQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40092271"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="40092271"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 01:06:36 -0700
X-CSE-ConnectionGUID: CWM130vCTM6th+CR+PqaEw==
X-CSE-MsgGUID: 3zSyHfnATESYEb47X98bYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="104161807"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 01:06:36 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 01:06:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 01:06:35 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 01:06:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PxtqbYWlvLhluaju6d6aDjiJKWFlPINpcwXQzFuxkgs+ow/8shfAlYjGQIXl6jnBHQk5t8iKd3fkxssabf6/GXKLuqyyuRONrvdd7calwYnvXM0JusiOgyvm2+lF+8X50FAmXfez1wYgns8Vra8lpQW8LQADAxQ4FO6OKjSRMrkmET3LL02+kjnJFN0VJ/lN8xtca5UAH0Z20G5bwNW+KSFzLMm7tH0qsB6wPj+Mzj0PWUm22t2yscLBlVvpwaDfrPUtzhnrQhPRIqdZ1VXsH9SFtWj5REElvuMZLEVPbqhqYCbIaM1T/txqurIurqymjd5lnbTv9hWBA2CAa2AtXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KagMKDL49ZuH/vcupJcy+Ic/2If8HSpP15rQ6WWCYsQ=;
 b=ZvAAd2sLFuCO6ILzTdya9y5K03oxdsFB5JK04mMgVu/CSM1sNzyJ2cpu+ooy90d2JZWLZ3AA3tr/YImp5J0YGXmlHjbp99GMIZUi2l0qtUJnTWlp30HGHxImZRSbbMDWqBeI7qSC51wEnBb92fORQlQWe9S6JmZo8JMvl70mNxoKRP7XeAI//ywwR6ZAqJid2+H6NQpExZJBxEsYdjhx6omERf98oLz8j2HOR9pkOHvK3BBjqvcqDJoJQJL3Kw46jf434fRMDRS8RsDopZGtO/H1CnXbit5IqWX94FmbjRnDvtf402L2+jWPvrZW07izfTk1zl0rBjO319IBh5MEnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by IA1PR11MB7174.namprd11.prod.outlook.com (2603:10b6:208:41a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Fri, 25 Oct
 2024 08:06:32 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 08:06:32 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v4 10/11] drm/i915/xe3lpd: Skip disabling VRR during
 modeset disable
Thread-Topic: [PATCH v4 10/11] drm/i915/xe3lpd: Skip disabling VRR during
 modeset disable
Thread-Index: AQHbJmWNRQDOaRow/0SU5GjqkyBP6LKXGvFw
Date: Fri, 25 Oct 2024 08:06:32 +0000
Message-ID: <IA1PR11MB63482ADE3D0596888F72D216B24F2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
 <20241024223114.785209-11-clinton.a.taylor@intel.com>
In-Reply-To: <20241024223114.785209-11-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: clinton.a.taylor@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|IA1PR11MB7174:EE_
x-ms-office365-filtering-correlation-id: 39ffa9f5-701b-462c-9662-08dcf4cbf031
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?XAsyVQAhHjTfUNyYm3TWK0oCFmqoUvqbc6D5xiy3ekcsedbs9OQOxZWVntqU?=
 =?us-ascii?Q?36m3HTRWUbf5yAAQ3HjskDDt/AXtfk/oLteS4eH9s48CQoyQp4WiwDgE8HhG?=
 =?us-ascii?Q?7KjwTsP7Q56qfei4m717Jwncs2rJHnewDpDR07t1HKsQyAgcsTKPkCkgLOH3?=
 =?us-ascii?Q?2mEIu3/+Gb3RjCTvAUj4BZPLjcrYpo53trlWuM553J5cR3whI9ay1pO0ajR0?=
 =?us-ascii?Q?8jL6jhaoPkvKx+Al5MVEpV3cytSvJOstRPwty4tG8hTruPVvZQTZ80SVSkiZ?=
 =?us-ascii?Q?NgJWsk096MrpLMX3YrULDPfHZ/qfKXbPRS9+WWgZhy4SU2tSADxO0xks5hps?=
 =?us-ascii?Q?DZyIUYclaYPRD5rT0xzY5OE1T0PEgIqcQeqUEovXQF5PJO8r6v1HNwp/J2sB?=
 =?us-ascii?Q?VkYEAfZydkoJC6oUsfdVUKkIU5qQGobW0eO1EhMRb4DqWANzzjEvZ2plKrsy?=
 =?us-ascii?Q?jHKl6T20svdhT9QTbJm/gQcaXvE4i735FkyV0BWsNqABi6R8AypqiH62NwS8?=
 =?us-ascii?Q?toewX+OmgHfUvpeCicj7TZnh3qK5lN6g0qBIyyThhiPye0XlGjszyN0yR/MA?=
 =?us-ascii?Q?hEMMOT9CVGQSZotIIaQB5v5F5bAW7NXSvlmdOMHlF3C2X+Hoh1mwVl0B9rJp?=
 =?us-ascii?Q?PZdF053c6VUkELAkQjQOfJ2UvvvbKjljBWtifsICZu/LEPL2nBLtaU9QwoAp?=
 =?us-ascii?Q?AZ7o4a7BHLkuT3DoO22Injwqz2Ddjp3wB9p6ENlFL+CYXPJAzBDlOhylRtdW?=
 =?us-ascii?Q?urCXB4ATgO5Z9qm+GH6KwBlBXzlKyl6OAXKV4NVvhIydqwyXwlh9WKtla4/X?=
 =?us-ascii?Q?bQ3438/Zhnfk/3y66Dh1htR/FxWkFI0zYiZOjj5+t90NhdigroEI1J5xIPk/?=
 =?us-ascii?Q?AxWqLPHiqgANzIplbCtih/DwGHGH+fFurueB1J6Xwflve/xvFwUsKs3wlNIl?=
 =?us-ascii?Q?xrGjUnPYsjtAFZbiMifsP1DghsvUj1/b2L3+lcv0NMM/sTbtIJVPDda7gZW7?=
 =?us-ascii?Q?DC72/8Cjs82qcwV8jwOiXN8GiaHcijQnhsbJ7f8JcoXzgKjnPDjrQ1APbrxR?=
 =?us-ascii?Q?TDJm9yfXSy61lHmevwr9zbjqFOh7cAI7klgDZ6QjqbOQkyf9K4GzPvuVYQN4?=
 =?us-ascii?Q?/YqMPZ0u9Z/MzOBMgLyAVkCIMkDYMS0I3jyvPh/v8baweWbFT5GhMlwQrR2f?=
 =?us-ascii?Q?GXQcTg/fJZRkLAS8MvjYwIydw3fk83l/9stKnOmaBH3dyWB/xMu+wQm9Rgoh?=
 =?us-ascii?Q?cXWqe8XRa7Adt8NafR+KXURH9S5pTdhPwjqSfsrFTunC+pjgcBynubVr54He?=
 =?us-ascii?Q?N2EnH+nL1WuLBGotrRIcTPIE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+Z8lrd78AEwHuf95+boiuMLm69Ve3DYgHYE/B3PMjKnFJlnlORct1sBm/6x/?=
 =?us-ascii?Q?2i3Fp1SYnD3hgNlc9RlpTvAK8q+coCD7u+681HjMR/DKVXTXs0hvJoDZO23Q?=
 =?us-ascii?Q?ZqyG+ZTD0oWF64PK2s1Bv98Hot6G4pHg3lQtcWgEIwVCQK3Qzdx6ep/ShkC1?=
 =?us-ascii?Q?vP3JWPBJcThU9Jy7DricJWlSWsCssIXHAhWfzBtHivhGWeU0fvnnTT+eTin6?=
 =?us-ascii?Q?ThlNzQ/zRTNR2AVQP5VsnnNUz1E5ErO8w8aEFPK8K2RpmwO7i/9bJMVVWAv8?=
 =?us-ascii?Q?TC2pYuwlFN1DW9bkkT0FqzF+Nzp9Yu3T4NtuXTsEy3g5rLftT07SPR8c5mJJ?=
 =?us-ascii?Q?5kQ6hbWSbYDJdV8zWoZ1naHn9hK4N0LpuIqygSFuSFl2dpI6pOLezl4TLwWU?=
 =?us-ascii?Q?1a1ZFEnf+ua25+LJnjQHOfqerbyQLMT8JunSN6sdFJXpgO8LmXvBP+BYZZBO?=
 =?us-ascii?Q?grJWZwHvkOOMZ/zCJEGs1vzq4/Fu2so29H1UcAvrKgAsH8k/ucUnUVYfDrPU?=
 =?us-ascii?Q?GaDRpQrUk46HJMV8uNYZbSBd2NLR4SRgSZFp+1CJ7F2TprKN59r7p3OsgEbw?=
 =?us-ascii?Q?RAXz0NDsj2VWvPditGjMxtzFAqhCVPSONcpNAu3fbtXDNSXeCzloJPLtb3Nj?=
 =?us-ascii?Q?g8NXcq13hgZWsvnQ6/o1FcQpqP93/2Mj0B4OIMslC9vbf0iY5CvpgOmyJdHL?=
 =?us-ascii?Q?iNSvUlxbtEPIXwFTFxRR0PiRucEzCywRv5S9YqJoW8EG/2Udnx/Rr1rgIeYZ?=
 =?us-ascii?Q?i/zCud+T8Icz+AdpPunTt6NKZnNpt858qkxiSxTQDSaUE8hGd6R11CkYPtJG?=
 =?us-ascii?Q?0N/ZuhSQj8cAGPL67RdhEetAflLWBBEv4MfBK5UocWcC71nEIm8PyKsjD0QW?=
 =?us-ascii?Q?aaanp9Bi1Apxjb2iaHSQByX8e9+6Zqrrg7+TW9pE3b9JFjp65lN7ertPMMdf?=
 =?us-ascii?Q?6fVmFjrfrZEdXBSnIJAXOVLiSFUqgLTEW/fnUBEEZ33NGzoWgd2dz7VL+ea1?=
 =?us-ascii?Q?aE77SNehyMiL+SJ5o3MGjVhTa+naNbmOykGtVLqLyJDRIR6oc2TtX9g1U2HX?=
 =?us-ascii?Q?LPv2U6zr23zw5hVqfRl4kY0kuNdwupMQWDKXZc7ZrrWPdvZvzUunSKUzfSOs?=
 =?us-ascii?Q?gc91ndf7aIn8qT+U3GNnAS5w7Pt4C/DDb/L1i1QC2qXAVLzTAntUCIUjz3Ll?=
 =?us-ascii?Q?bkacn4Rw6R1I6cMoD7b/Jz17Bs70SUx6qA+5JnbvkqLCVJhTcmKxyzbgwgCN?=
 =?us-ascii?Q?s6uVczFWoW73UbqkBf7FvAj7DU4wTZFIDd8wTP6ltWOq5MGMFZq6hGfVUUbm?=
 =?us-ascii?Q?6PFPbGkX2BA6lr7FQQAyLb5lt72anIzAMlt1+M/xwaq7awJ1C3JFWqXegQvg?=
 =?us-ascii?Q?neeWrunluMnKViZLePWxf8+PUZh3WlsODOLIlnWac5dnM4FoDfZkdprf+DYH?=
 =?us-ascii?Q?kOEXb4pPs54ARLVSB9R2Judu3ypkluKULy8fzs3PayCLiS7eWMTGqPBYlCtE?=
 =?us-ascii?Q?DuFmbanwcPscc2bjcKgiUhy/vEWyT6Si957HO2eGzAYHe1rbkSK8MHAkZs2G?=
 =?us-ascii?Q?+oAAj/DdNpE1TvnOTvO8gRvTIRdjnyMbj9RI+KRjDx+quFENkOAFuhvtsStp?=
 =?us-ascii?Q?kvZJH3bV1OJFH4tyTGu40Yc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39ffa9f5-701b-462c-9662-08dcf4cbf031
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2024 08:06:32.4155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yfJObxsoRRSwUSTeO0pT6xAO7sEcBOQjsWKUQJ5uaX04NubyqgUTE4vEfN7g8UbGejUuj80PK6laaDM21tz785EW+jfRJedRjxI+EqkQuy0LQYeiFXP1Lg+qRiUDk/S+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7174
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Cl=
int
> Taylor
> Sent: 25 October 2024 04:01
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH v4 10/11] drm/i915/xe3lpd: Skip disabling VRR during
> modeset disable
>=20
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>=20
> Spec does not request to disable VRR in the modeset disabling sequence fo=
r
> DP and HDMI for xe3_lpd.
>=20
> Bspec: 68848
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index c904f529d0c5..7a6961432616 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1310,9 +1310,11 @@ static void intel_pre_plane_update(struct
> intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum pipe pipe =3D crtc->pipe;
>=20
> -	if (intel_crtc_vrr_disabling(state, crtc)) {
> -		intel_vrr_disable(old_crtc_state);
> -		intel_crtc_update_active_timings(old_crtc_state, false);
> +	if (DISPLAY_VER(dev_priv) < 30) {
> +		if (intel_crtc_vrr_disabling(state, crtc)) {
> +			intel_vrr_disable(old_crtc_state);
> +			intel_crtc_update_active_timings(old_crtc_state,
> false);
> +		}

Hello @Clint Taylor

Seems comments from revision 2 got missed ?

https://patchwork.freedesktop.org/patch/621235/?series=3D140196&rev=3D2


>  	}
>=20
>  	if (audio_disabling(old_crtc_state, new_crtc_state))
> --
> 2.25.1


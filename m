Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 293609AEDE8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 19:24:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61CE410E972;
	Thu, 24 Oct 2024 17:24:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SB7x4kFZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EFB210E971;
 Thu, 24 Oct 2024 17:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729790689; x=1761326689;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dNPCA5jWK9kmkKIPpCrHU3sKxQ/NHcZIyJYFqzRIf2g=;
 b=SB7x4kFZTbIREivpwCz8j+ZVmK0vIDduMhbErbSb0uHoFrOfZobVKMxO
 eQ6eHylyMYblmrASFn3WhRMnXRkwDIVeZnQ8hLChaVNEf8bJ8gBznc6Az
 y5Z1hDUc5Y7lOXQV3d4tUS7B7+VHB0skt67cDPYyWlZi1M4pPgGLGZQnD
 DNuklYWdc4ES3R+FumbefiNeuZA2C0n2Clbv0vWBi7dKZt1MbT8Dis7ni
 YJ5WXS2+QjHttgrB/Tfr+WayMrrwUn3YqWF70mnPkOmO4SLpVpDqC7S0x
 wbHjds8WHtqac3pQ00FtTJK+Z5DMKdm1j5DcNpmrZT6fVeXKgG5649BMQ Q==;
X-CSE-ConnectionGUID: Z8e+RTqTRbiqrJnlKRB0Zw==
X-CSE-MsgGUID: dduNT74jRt2jjdF5VUX5Sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="32296405"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="32296405"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 10:24:48 -0700
X-CSE-ConnectionGUID: NnlR4L3sS526SZid9kIa9A==
X-CSE-MsgGUID: VRMIhFNjQCS/4RcJmRCxjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85769183"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 10:24:48 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 10:24:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 10:24:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 10:24:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TdiVIyCweVqJwC6Qz/Hlk3v9doc45wA9RqtZWS41fqi3Ixihn83KldnZLZyyeeGZe3P62SnLZLT5XjLopgprS7Yp81nOcW2QdXQRQQEqqh9FT8S8wvGgvl0eKQhoy97my7XB+ZK6enlVsVlphWjS0Eq7kFUt9HtSZYC+RqxVK4KQ9RFC51KsTykVBrCZ9Iczn3tQUiiIlzl4FbrNaUoi8w+I5SR6zBWckmd4nmf2jESttjA/hIJhWfvUU8UYD2KrSHYdCnNLV1UVDAGjCr1XgEWDCqh5rwMsNU2Xvxi1t+qS4Pm1nuFnRUAESsRpziKEe5wNwfPRpjl/NKIdEIjdIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YUuqQz/2zSfCL2jgWMqD1LpJWp6JYols/t4W7/qKZlo=;
 b=qorOMxgR1mojcAX0ia/8KUtJQvlvpK7JYqygXDd3szDJiKBFwI4OrMx5XLCcxnmrG5sNQEd8MSdmVnLW4n/ee9Kk6IWA5wTL0MZPkNIqaJCwqbgg+oY9L01lUlLX6oTJLePfG+I0BLAl9F2hRHYPfXM6J788V1XJyzkrStEN7nQTOXasI/0oU2X5jxo3qgnajOl/hqF93hMCHLDh5hJuAnxILLQyl7j6o48gJ9FT0e2aazEREtIw5r+gocvnUQyuKCEj3tfF4NCOEr2IoMjlTn7hTHQGOYgeE92kqSuSUJ6nnmKBexvxvmZ15UhodNuo6qQgc7PVuheFrHJ9dD/7Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS7PR11MB6127.namprd11.prod.outlook.com (2603:10b6:8:9d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Thu, 24 Oct
 2024 17:24:45 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 17:24:45 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH v2 11/12] drm/i915/xe3lpd: Skip disabling VRR during
 modeset disable
Thread-Topic: [PATCH v2 11/12] drm/i915/xe3lpd: Skip disabling VRR during
 modeset disable
Thread-Index: AQHbJZYVsT4e/EIVQUq2NlPpMPg2irKWJGGA
Date: Thu, 24 Oct 2024 17:24:45 +0000
Message-ID: <IA1PR11MB6348AE04B2DEF5152CE41744B24E2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-12-clinton.a.taylor@intel.com>
In-Reply-To: <20241023214701.963830-12-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS7PR11MB6127:EE_
x-ms-office365-filtering-correlation-id: c2ad2daa-ff33-418b-388c-08dcf450c115
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zavDGyWFMpY2TnYxrKt4CDiPwu+y3R5m0Pgjz3ISFeXfr5rKxa4QY4G9BwYS?=
 =?us-ascii?Q?70jDP+7LXkU4gOmrFC3HsR7HmrdTBfTDj3gafsXEifDctGiQDKglCWtRGXBM?=
 =?us-ascii?Q?i0y/GsmKk6MO3BlpJh1tYf8On6KB+xABais+2+c1XCkwklmVRvmbsW9GCotm?=
 =?us-ascii?Q?3URP7Y748LHOcu8u2a0z7B7hjl59NP/V6Uf1ebRHsERg8JacR5F06qos+0jX?=
 =?us-ascii?Q?Nq/xJSSVvVYaQQBdFVCn41WZYfxr5CYjJGvGEC4GxGdwxjV0CJZ8VL8alI1/?=
 =?us-ascii?Q?/prZV//rvzcQ/dg6+tVJO5K4l2NbA3j7hfnXKbAb8PexQcxLFKVHzUb1DsIF?=
 =?us-ascii?Q?JbgeW1JFjLhd0TyXZR9bdEx3nR8uVU117VOXA/pBqE6+pG/1VKOO2tCe3gD5?=
 =?us-ascii?Q?ANwPZsgjRlpFpYxZP3odW2/Ugmoe00ILJ6mWf3uVKT9/v0bRdf3oUEfgLMkf?=
 =?us-ascii?Q?6+YxOeL7cGdihLRC1kqhPR1XFHeEzaaCeztWpEy2PHUuXjO9KnYDX37UQcaP?=
 =?us-ascii?Q?++mWJN6j6KdLfsigtc3r6o09g1pIIfNPtje2NeRnURavZjesTPF/vkNNheTY?=
 =?us-ascii?Q?7nDxxD5aN7L8JLzDeXCsqC+tFqeBmrpu+yxesbsvZuFHY/9/WADYus0YbATd?=
 =?us-ascii?Q?AS++JoNL6ohgjc51UrWAxQLpJLPN9kxhWRt3jR/obP5nxMDYksMiSGBXFFdl?=
 =?us-ascii?Q?R2NtSBb8Z+IWs/gCRXjxG6wndeRtZpjrGunUsYj9/JnIxXdwwcPBzoCa5bgE?=
 =?us-ascii?Q?HrVl398T7x8IzUboJKgqgTN91LVgZWG79tg+vfLCyk10zo5vVZihW7gVcWZK?=
 =?us-ascii?Q?IvnUj2d/WLkUt5tGcZPpY9mPWHDXa7eT1B4ZntTkM057jukISM+SesBkVH+/?=
 =?us-ascii?Q?/aUmB/cPY2XAffxWiWSdJWiwy1cDq6k0d3OoamMQueeDpRWZRFeRnP+teUtr?=
 =?us-ascii?Q?BgqigOl1kyd5qb+hLn4TIzaGTAoCTy5GVuTP3boqek3ZPY9vn7gdhX+zqA10?=
 =?us-ascii?Q?35Qw2jwF6jVZWyaQLcQ6OwTiiy74QfviUyOeKzzHG0ZFXpR/qLTIxTIH1Qyc?=
 =?us-ascii?Q?KvfJcOAkNhouFMmrTk4GxVLfRvCEmyY3XNtiQy8YPXABf8CP9m1HGsdSlOuE?=
 =?us-ascii?Q?M5yQhFPUND1KKIB6qTuNwiDTkaO64n9IYO26Qh8DjW+HCa2EX5S6BwciYW24?=
 =?us-ascii?Q?9xpmyJmlGX/BslaZbads1KCfo0epi7kOJfhYIt288WFIhNvFwffUJZEWE8Ov?=
 =?us-ascii?Q?XvxOBk2lB0NawbwtMzAaQhDRlj+SotB+AS5oQ4MDCObmLG4qBwc3TW5M1M7n?=
 =?us-ascii?Q?eyBPspLwNVpTjb3mgcmVM6p/wMba1xuEWNRvN8KA281vOeNE7Vqo5xFFsmgz?=
 =?us-ascii?Q?ybIi9dE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kJBWXAK5xXfzghfoAp/gJZxhNsNIiQINW3761VPgkkksCLXipnvLWNl9WqJT?=
 =?us-ascii?Q?V53RLtwNkWuALN9QyWEN5red0pKCL7N7PM1ah086zEd0qjwceaiN36eG38ol?=
 =?us-ascii?Q?5ukegtQk03NL95pYZqzF0AXlVN0njxbqCgojS7dO9xOqvrjVy5nHVM53tzdz?=
 =?us-ascii?Q?XqFQ5NUTWkYU/6g4/E6J+/akchrjJHNoh8AdG4E1DGUopVCL5c1oiKTN7ZNe?=
 =?us-ascii?Q?5okNTLq6+yrGxCVBTQTyUJnkLWr4Yr8O+ilb37aNooQwR2R48um2kuAxNxM1?=
 =?us-ascii?Q?aiwAdkl/TmOlYI+Bz/Rti6HljhSLWFPsMvQbJwreAaElKTlqqt9FrmCJb/zr?=
 =?us-ascii?Q?ldXfOzsyoXpMIG4kJ0OEOZFow7kFngcTmbBFSTRniAzagihC9ppvlqS+ADSd?=
 =?us-ascii?Q?qiQjojZtisHcmgjaAXUWSN1P4COe81j0uD+o3I1+enJca+8kQdouDd1dVQa1?=
 =?us-ascii?Q?2c5FRcWh3ibTqabdKnr6WxZN+P17vslBNyDgRsVeq0YXTaGXjyyGwMFoQzCx?=
 =?us-ascii?Q?wq4xjXqPnHSl8o+22csj8nzl9eZ8YOyQl4iKo67gpUvjKEZ2AK3BG+pJgIQF?=
 =?us-ascii?Q?neOL8TYd4XBIB9WiF1GHw+rMtuE8M2cSCsJVggprvYIS2tqDA9hteRiOh4zg?=
 =?us-ascii?Q?/J0zIxGeyxRrNgT0HMFwjjJGcx1CiKLkOFqycq0JJI+mFCt2M0ANyPQHJKnF?=
 =?us-ascii?Q?v3HukKtvooNGZbeg7lvnATChrkbMyCaU2k5Ph+jaC+ab6JshtYekc2j5xtFj?=
 =?us-ascii?Q?iJiPgf1xpELqhx+8/lyw2VQl3rEIt+0kXO9TP1ng17o7SZ6ls8MshUBXfbKq?=
 =?us-ascii?Q?9Re6ce1AzelFvUEEBAYizx7ic/HtREnKC4qdHG+3YC3ZdxmWFcmDW7z7ndhw?=
 =?us-ascii?Q?//X1MsTUJT5noYUqlfwW5Y45/DOIgHrSKgiohOHTGLTpWtUklQ6oPxRrn1qv?=
 =?us-ascii?Q?zUPOUC1cdcQOeqPR1cRBMtExfVyr3Mj5o3C/74wgQXvDlnxnAIRp9og7I/qF?=
 =?us-ascii?Q?52ietPXhvqso2W20D9aEbZdZFja7MGagCsTeuRldiMFmU1lZAfphBLBoPfUe?=
 =?us-ascii?Q?Bt1gA4zA/DZ+v6fuHLad4nFzlWoqzZjHjPw/7YH0mGTVKpMritu3FmxRAs89?=
 =?us-ascii?Q?VguqYpbHl3V/DzWKlZMAYl1aNrPMlI7loKawHy8klakhGO21vcOqaIefh0DE?=
 =?us-ascii?Q?ZHxDOEUKX/EHWHJoBrCQ0qNxWGPKcnKsoylsz1ScWGJD6lBvU0+f62ZgmNZ8?=
 =?us-ascii?Q?/OOF4OwKQSll0wH9J7gfdP6uTEgJm1pS+ZmA8Bjb25ioLAcqEQvsvL/qhq+H?=
 =?us-ascii?Q?b9tjsQC9gIpAqbxbZWOVjgXorp6ZMGJqCPeytaKfuC6OPWUiQOGspA9RavRp?=
 =?us-ascii?Q?SbUyRCJQ+PPjXD5ITzhjdAgILnLtpPgtdaSc10EXUXzGn2cwe84Pif4ps0+d?=
 =?us-ascii?Q?8BC100fVvz2KCr8SfKBDDUSR7NJnJfQKMXUMB60B+qjRj4WlPg2EkaCYJ5A+?=
 =?us-ascii?Q?QilS0Tj0lHlKJM7o0OuhVL+bWfrDhSwP94v2/eIFyqGsL1Q4DUM3a6DMSzQ/?=
 =?us-ascii?Q?6JqwUEg1PpIqiht27aMWp2j6ny6CMTt4i4dXHw7flx5pQTfPlpNjVwwmqGiu?=
 =?us-ascii?Q?0b3YGluxejXGfs9cxFraRlk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2ad2daa-ff33-418b-388c-08dcf450c115
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 17:24:45.3624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZJ/UDkvJMi1MoTpB3wAYP7LYdXJfl2kqaSoyHQIPdQTpH2j0A34sTHVusLM8wjpspuZPAmyXgLh9uNaYuvz67UVgNEWwCtq8DvXqxqqMUql8WgPcklRM00DNEcdr8l9d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6127
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
> Sent: 24 October 2024 03:17
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH v2 11/12] drm/i915/xe3lpd: Skip disabling VRR during
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
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 124e094a9999..bc35327b37d6 100644
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
> +

in current implementation as we are still depending on legacy timing genera=
tor,
what if crtc_state.vrr.enable transitioned from enable to disable ?=20

I think this also needs to be added along vrr default timing generator patc=
h series.=20

			intel_crtc_update_active_timings(old_crtc_state,
> false);
> +		}
>  	}
>=20
>  	if (audio_disabling(old_crtc_state, new_crtc_state))
> --
> 2.25.1


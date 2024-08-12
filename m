Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A6894EDA1
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 15:04:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 821D210E1FF;
	Mon, 12 Aug 2024 13:04:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZNjIB5fc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD3FE10E201;
 Mon, 12 Aug 2024 13:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723467885; x=1755003885;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HLuwO5DQTnKUTZLzaOiDAz4yImuJexxD7vC0lCirbWg=;
 b=ZNjIB5fcWOKlc194JCV2ogkP14SXAxUXmv9RR4pljOOeLkvmUR8gvB+h
 mf6NeDze8yYopdu1erbpDXKHl1kcjJkknKWGjlb6wrptpItmUhxTkABtt
 ibrTq4p3pYqZ5yHD3cxZE055FhTwAMk9qEwsfPh7M4+cYVg8MFhf3zV9h
 yDqhyB24L7LVwdV62TXQMkIu37kKqJ7Keq/L8fvJ/2h7exOuEbJ9jj7lO
 /z06a+s57WT2NFc0E4ESnb7+Ige4WOvqE+2jTnPF8hO/UMGlwWLbAeXDx
 1QHHGLIzXOVGFGspGC6V8TLbgbxDla3pU6NmMs6OWlv+JpzFGoCbdlOCb g==;
X-CSE-ConnectionGUID: 2ClDN0PpQGGJWWobW92FPQ==
X-CSE-MsgGUID: tXHQJi1/RHen+r34nlmIcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21427921"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="21427921"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 06:03:56 -0700
X-CSE-ConnectionGUID: wcF/ZL44SgaQxvp9PDgn+g==
X-CSE-MsgGUID: xtz3d8EUSbi7XgFAdtl/aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="62910154"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Aug 2024 06:03:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 06:03:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 06:03:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 12 Aug 2024 06:03:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 12 Aug 2024 06:03:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PzmLJl+e4Ls6CjkSdhkY0GWpAHedWDv7c5mtfMrXknLwn1EbU8amvGZ8RgZXcz+gfBk369Aj3cXUVqlHdgbo125fy7tapOZ0ZWly/142ueRzmVQ3DlTLXPy0Hpodr8/1bQ++eXkP4dliv1jaa7PaboFIurlkraaattD453/NcXSaqzbBmtReRaWVGNEoK8o8cQY8nok44aikNi999knYiYt09UblmNcfaLyGRc5SouqqXfOr66WmtpG+zjU/rceaGS64fmg2qd9QqcUQ7iNyptWJ4pABimmHh3Pim/R0EzJpDPaZM+GGzyZ8WLcTcHOX87pp1rYbps6rcbLkIJU59A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H1r2VPpk8TJJp7XlJQnWjzMFaPS1KyHdXDf9bRa7YNI=;
 b=D6orkdD4wHrgKZECaq93e7azCQARUaAWIBNbQ6C402NBq4EL1Gh9X9OGbALFb9r1XTiCtSGby/MiFmCk/rs2lduzlmTP6eah85Sw+4m9I8FUs8/YEXcJXmGm7jlP8yqY3UPqzneaMuwaPoC9Cclp3/Pj9aJp88C0qmR9EoD73Duh+AlVpicakCkq6ZnJDanrQQ/uWZ7Kdgims/6CtkvR+LMAfWXb3xVtOy672QVbWVYWNNPwaAJBcbspWQTik3cnlwe9POhmdkeU/3niyT+Q29TZEeubvuXLtBAlaDkclSvWlWANuXrPnyTHOoCWw0geIMpF/YI6o12dRR+3/RxaXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA0PR11MB4624.namprd11.prod.outlook.com (2603:10b6:806:98::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.32; Mon, 12 Aug
 2024 13:03:33 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.7828.031; Mon, 12 Aug 2024
 13:03:33 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915: Preserve value of fec_enable calculated before
 DSC compute config
Thread-Topic: [PATCH] drm/i915: Preserve value of fec_enable calculated before
 DSC compute config
Thread-Index: AQHa7JHO1UFdJobQlEGSojbUS6g43bIjg2wAgAAScxA=
Date: Mon, 12 Aug 2024 13:03:33 +0000
Message-ID: <SJ1PR11MB6129241F0F93400ACB2592FAB9852@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240812082446.3459081-1-chaitanya.kumar.borah@intel.com>
 <87v8060xfb.fsf@intel.com>
In-Reply-To: <87v8060xfb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA0PR11MB4624:EE_
x-ms-office365-filtering-correlation-id: 1f0d6d68-9322-42e2-9588-08dcbacf2bd4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?rs3RWoSIJNSkKrKKmy/bW0QPd8WmjB769UvoDnz64Hc98kO2yUmq7rXt9Yuy?=
 =?us-ascii?Q?C8FAWp26o9lwVw5WESKz9n43MJm+jR97qyTE0IWDDTdcHdAoOhsd6EdFqzQG?=
 =?us-ascii?Q?4sC+3JzLW0/RijKQ+d8+tNEbwARVC90XmjpWR2Jn6VksTUlcXAF9mAeHtjqQ?=
 =?us-ascii?Q?bcBUmp7cY4ty6gIztruFvCh5XoSfq3HmU1dbsPPuwZc955qCPri83XRRoyGf?=
 =?us-ascii?Q?dJHoJHjRUIkYf0L9Pe3yLlvtjP0TtRUq/6xmarVGnqfyeuq2qnQ9OLZzTRlO?=
 =?us-ascii?Q?vZk/5tjH9kwtau2kpaxErTZaAkDmd8mVy13G2mTXubKUILJizkh9EFi3rSza?=
 =?us-ascii?Q?0r4i1+vYy4lK/IjP2sSXkNbn8zRK5OwM4jkrQJPFy7iYfIx4qKXR3WSM3NnA?=
 =?us-ascii?Q?yi6DZRV9x8MDMIPe74oxBk8rGwysixzCR0AJvR9AXHXnY3A/7Urlq8iCLd0S?=
 =?us-ascii?Q?BvEfEcmCgVuW2s/cZtCHQD3jfJFHjbubwXlO8PzHfCcbMV4k7ug9aU4EonNH?=
 =?us-ascii?Q?zJkEz7cDq7Xr2zXdDXilaiMylGRo1/usqJOYudmuvx+uwV141fgG6FIO4ln6?=
 =?us-ascii?Q?fXyIvA5SNuSBBOuyevYPXnuptRr3pGdgQFuHZqn/5rXOfFkbneogaICtwwpb?=
 =?us-ascii?Q?6+4W7fYxzNjkr1usf1b01jaAdBRaV98KXwws/EX68IjzLiRjEL1QSvUDdxDv?=
 =?us-ascii?Q?OW1R5/LUO6cpH8Zxs8tt9Dvw0/T1/5MsLBfgmoJB24L7edGA07uU7qC4zl4/?=
 =?us-ascii?Q?rkyH7BjFMhoqh6TEYtfApJFBS0SEEiPreYk1XEcdRCDBgXjRZmjsJJ6J8vVp?=
 =?us-ascii?Q?so+2RInjO4sUkiZ2zDNOiQepL5tc7QBD1YqPVEb10BYmBh7UniqTxs8Y0ky1?=
 =?us-ascii?Q?UsfR+drhBDWI4ARiQLzIbp0SB9U1EiQR/9WGLUKap4/ntHno/j5kPxN5J1KX?=
 =?us-ascii?Q?tZbuwYvFOi7X3eP2nbC1EfjKqwoEVsDmlBIKf1JSrQYdVCuK831+P6FOT1zo?=
 =?us-ascii?Q?y21WFpbtfCGANqxT5Dk9pjmSteWjHPkJoNb0a1K8I5mH8jpQSvPGIxxTos22?=
 =?us-ascii?Q?bCQ8iCRsl46EE+A33V8LaK9HoqjAWZtyXlHIQyIothKAuLyZdaytCfjvN26a?=
 =?us-ascii?Q?GGfdbMNlalp1AxaeN1EmxegfTy5E3SgtF7y4dM3OdPN1rprk5LvDcPv/S3Ns?=
 =?us-ascii?Q?qkfEWr+isnEopvIFM6uhaV4wDIuAbT4e4HDCvzFD72UfMyx78rUmP05dQVMg?=
 =?us-ascii?Q?DmMErESMWaKFij2z5OqiIp2PbMPgJgUOfHo0edgghTFJFy6op3KaEfMo0I4F?=
 =?us-ascii?Q?o13xVmqmKpdfsSDyHFQYhphQ137usv99LYdKpGxS9OjxyZi+sOcoWVdgr5Kr?=
 =?us-ascii?Q?k5BSVjgMpq0N2+GjujID/RY7dMConClWk52A8JaPw3fBL/bMcg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iSTMdVpSzVx06DtdEbOMcSe4087viW8i7ubzDpedsjA6g5PZjjtmAb49U1OQ?=
 =?us-ascii?Q?ycbiJ0nCJvC1XTIXd8fgxiBrDGCG4mtukK8DD7lN9JwOJ5ApaKhrUlxKRTlx?=
 =?us-ascii?Q?OmGMUJVTWuCyN6zG0oBauziBGuxcNGMo+53R+qunBcx0A9evp1IHCVn/IJn4?=
 =?us-ascii?Q?KMGqN8mEkw6WodW6ZZAjW/zPutImjsdlhQI5BPDw2C9G7DSNdlkVLWle5t+g?=
 =?us-ascii?Q?J4CXFxySS+gA5M0cWsuZltsGzXwlnefE9VXbmk5F2AGrASbPDLI8MOMihX0D?=
 =?us-ascii?Q?rcGrwqtJ9o6h2JsMF0YTEN3tgDCXjNHbCp5d7he5s975ulVgZNuNdkyX/CwT?=
 =?us-ascii?Q?WYpmpN7lL+Rb9eLjPHuCiEUiNR90J8Q59Wu2UUrTL0yxWE/ZY3y+gyiXZRTZ?=
 =?us-ascii?Q?Swgow/TmhkUIXRVZLmkpiNGrToK1vh2zOAlDuxX7FUkkNUmqHdF0cwuaesG6?=
 =?us-ascii?Q?l0Y67a6zs6/cnHiDfvJxLpH/D2jAqNWNYfXWJMsTuZCUdMfQvjgHq1i4QXIG?=
 =?us-ascii?Q?T/hKL9yGaTtb4LS4xp3KHSO/hbqjixOR3Y8JVReH34c2Fac7dhMvIshE6iYz?=
 =?us-ascii?Q?66olCB+FH6Daspe5Bf4UWFP18oZNziENvx6tSmMcQBPDOUx6DNNjDodXmSUW?=
 =?us-ascii?Q?ETdlp/X1nDMC/5izJ2om0jz3Cqxm4z4t3arP3tsrYOQIrOVsj0U08oBFYPhv?=
 =?us-ascii?Q?/KNvFEwQdSk+9F99uJb7al/9sODlmN5u50l3WBHURuIA7esxFmD8r8mKs2wd?=
 =?us-ascii?Q?mR9Pbd/ShFFUXFUMcr5XU7jNiHhS35yhp33LqlYAxzKyhQ4cyoaCU6CjU5ca?=
 =?us-ascii?Q?zQUrbhfzZKO22FWQ2kygazsswe4v86cYxDQb1hHz5RzA2iSMnQZHrGQaLpsW?=
 =?us-ascii?Q?ihB+EiWpNOjKnL3x7a7Gxoyd0tvWAtsUuwKNfSiVH5Iw9POLCp0wSH04XpGG?=
 =?us-ascii?Q?eGELwgRHr8ayvj1sLJsE3ZHmWzKBUYSAQi2mwPfmxtmLoy+/z81mQDpJmEiG?=
 =?us-ascii?Q?peXetYJSsM+4RsI04CtBSGS3wpdGqkSTuDq6YvXkIvEsvG+nTIZWws2Nhl38?=
 =?us-ascii?Q?jXQBOarEpr3yEdAQjF8ZesxTFYgP2ODCTjkwGSfl8zk0VBNRvNxcML+8ktSV?=
 =?us-ascii?Q?x+yH7PDHQVuiod8A1rlODcNk+GMyX2jWWUaMqO3w+brLzXvs1NXCuTD0Di4s?=
 =?us-ascii?Q?6Ez1eID+0rP28EaR3950GDP/jdDkxoWJGAbHxIynqrp8Yvti6e3otS8tOClI?=
 =?us-ascii?Q?0e5M+Ll0Lo3fgW8yjwXIDS/r3ZW+TW98ECBCJCfyjdk/JqVMYieeyKG1Vlh1?=
 =?us-ascii?Q?0bQFRgBCL5n8bVSotDVL8Go8mfs1s5gKxZqa2rUk2j1LSm4LV7SRY9AmaSu5?=
 =?us-ascii?Q?Z4rHLeP09q995j/Z+ZUfVfdpKIeuZWWA9ZfJlYSeyqW4txXsDj7QLhAfb9CB?=
 =?us-ascii?Q?mQ3Ma5LVcdsT31IfosMfys36T9Ff08FeTRRcpFbo9MsfuvzjgdRxiD7sj8UX?=
 =?us-ascii?Q?NJt62KmTp07goJwURSH4tj+1k1pUtp3zr8EPMiVk8bvJEBnwIyLRlPYrrfaH?=
 =?us-ascii?Q?W5lFA99RsIA1T1b/8ClpATN9zFTEcGxFnSTFtzKYE6Q0ZXhQK+cBSkjQ3XPm?=
 =?us-ascii?Q?5w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f0d6d68-9322-42e2-9588-08dcbacf2bd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2024 13:03:33.6076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QwvQ1o1rnN3pPyfVtf1LXx+z3gf2Z1ZjE6BrLTCvguX6QVsioT9DPLHJvhG8LOwOY9mg1XCSpGsSC7yjqyhoSDv/L+J97K9jsNVRnxvc1Qk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4624
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
> Sent: Monday, August 12, 2024 5:24 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH] drm/i915: Preserve value of fec_enable calculated be=
fore
> DSC compute config
>=20
> On Mon, 12 Aug 2024, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > Before DSC compute config, fec_enable value is set in other functions
> > (e.g. intel_dp_mst_find_vcpi_slots_for_bpp). We are ignoring the value
> > by OR'ing its value in DSC compute config. One unintended effect of
> > this is setting fec_enable in UHBR use-cases which is not needed for
> > Intel hardware. Therefore, change operator to AND.
> >
> > While at it, add a comment explaining why we don't enable FEC in eDP v1=
.5.
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 49a37b996530..3fbf9f33c3e4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2298,7 +2298,12 @@ int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
> >  		&pipe_config->hw.adjusted_mode;
> >  	int ret;
> >
> > -	pipe_config->fec_enable =3D pipe_config->fec_enable ||
> > +	/*
> > +	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
> > +	 * Since, FEC is a bandwidth overhead, continue to not enable it for
> > +	 * eDP. Until, there is a good reason to do so.
> > +	 */
> > +	pipe_config->fec_enable =3D pipe_config->fec_enable &&
> >  		(!intel_dp_is_edp(intel_dp) &&
> >  		 intel_dp_supports_fec(intel_dp, connector, pipe_config));
>=20
> With this change, FEC will only be enabled for non-UHBR MST DP and nothin=
g
> else. This is the place where SST DP DSC gets FEC enabled.

Thank you Jani for pointing it out.

Something like this should work?

	pipe_config->fec_enable =3D pipe_config->fec_enable ||
  		(!intel_dp_is_edp(intel_dp) &&
  		 intel_dp_supports_fec(intel_dp, connector, pipe_config) && !intel_dp_i=
s_uhbr(pipe_config));

Regards

Chaitanya

>=20
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel

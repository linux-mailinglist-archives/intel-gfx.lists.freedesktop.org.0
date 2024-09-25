Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C24D985BA5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 14:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B04910E061;
	Wed, 25 Sep 2024 12:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MudoAvqd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AACE10E061
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 12:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727267329; x=1758803329;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qDc/z3GWEwml5/JUG2k3eoneBjjMFWOj39WFf6rxlXM=;
 b=MudoAvqdXPU29Q1FFlwU3Lul5gUwRckIUUc788eQiXxs+tdyn78tsTJx
 4Bz4zYDJ+2njiP0OqZFFQyhgOkZeaORFm9ErQn1IpaRhHI5anBGSCXkNz
 ZIrcp9/5KSFi54/49uReSUt0WVmwshgiScYmMdJPHbGDRtxHq4/uvC04s
 lm1RNgm27oqAc+X19zjE1xMlQyIYGSNgEcbVftLrUtumAgdvD4AVy4SO8
 ifhAu3to2jDXD+69SKv6wo6QjnAALA+lCr+IsoxN9QxmJYGLkHmR5aWSa
 p4huo4LaNZwzjvCVB8TZdZ5Pu9848u+nPOV5Ddh5U02NE+d95k2PcdLop w==;
X-CSE-ConnectionGUID: W48okxZXR0+iTwk/RtEDnw==
X-CSE-MsgGUID: 5oD1LLT4SKmhnxv2yG/MrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="36876239"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="36876239"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 05:28:49 -0700
X-CSE-ConnectionGUID: TTu42w76RteIrzBYVS+ibw==
X-CSE-MsgGUID: rGoshSIaRnmu6CzCXwptGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="72209081"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 05:28:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 05:28:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 05:28:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 05:28:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dEGBR6GvDUTsMEBMTYjUrYnxjpABgTTungsaUA0lrf/CTzgi/9hmyzF2OjvvPdxSafIJQiUSrZFJEVq5i9JZ3hkKng1/1Le/C0gkS3Npezfv2Mao02+XgQQiolSLc72gOKyAzvP8fvAQnpOzCUhDhRaNT+wRrxiUVHD3veRg9QquO2ja0fc6xpRgl39ZUSDO3dZH634KTP17I5mgfdwQYZb2yHd4PWBPwTej4qXFjRC+HtdD2QP0K6nU/6J5SyGp9UNeTt7A+sjCmxcRt4OV19fVu63VLk3fZnoWRrohv3U2tWEvYzW3fqbVBGv/25wMwzEAjsp7A7GmcDh2/x6Edg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FlZ/v+KNWf9RZlzr9mjzlksmCla5AHG1rCXE+c66UFc=;
 b=rn8Alr/mD8BPHkc8ze3YykJIgOPPGVPHV25OGUWI1XQI23uGYJ1/r9GAY7WXpnX3Ax8l7Pvjn6wEowuh6mLEmuPinnQFTA8VPujzK/2mtygX9zrYgFudguEQSJEBalVf6O/nMJBVl2LkJWckBtqaQMgZnBRh07I2e1gFtoY85RvFpeUZ8ShjJe7v+dnXMBJcOZJVTg5iI7l2J1scW5Lw8H8oPqLFAb7/I020+S+kbezPgLu79nLvIbMGEtlpByEYrUN0qv+HSAWbfIgGmPSmCHoxntImpAvAt2gfoWMgokeK1nZp37stlgUN8l54TW6UbDHSQEbJamoQ5CdpUlEA0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by LV8PR11MB8748.namprd11.prod.outlook.com (2603:10b6:408:200::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Wed, 25 Sep
 2024 12:28:40 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.7982.022; Wed, 25 Sep 2024
 12:28:40 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/3] drm/i915/display: Add gmch_panel_fitting in all
 encoders
Thread-Topic: [PATCH 2/3] drm/i915/display: Add gmch_panel_fitting in all
 encoders
Thread-Index: AQHbDxRyJum21YLGgUaf6CO/p/H3fLJoN9cAgAA2lQA=
Date: Wed, 25 Sep 2024 12:28:40 +0000
Message-ID: <IA1PR11MB6467508E81156F83692369D5E3692@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240925063032.2311796-1-nemesa.garg@intel.com>
 <20240925063032.2311796-3-nemesa.garg@intel.com> <87r0982j2t.fsf@intel.com>
In-Reply-To: <87r0982j2t.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|LV8PR11MB8748:EE_
x-ms-office365-filtering-correlation-id: be321fc3-a39a-40df-b412-08dcdd5d9665
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NCc2IcrfNYk9W95mMQRwvA7/8+6AGmnQFJBmbVdzSNu4DXSH8+23Rm6RRACa?=
 =?us-ascii?Q?yZfDkcpv0PYmKO2MO/Mj/krsuljCIn5a6ZUS2jO1YNux1VOVzKba9m8uqKFl?=
 =?us-ascii?Q?T7FFehN2lodZImCVDWjNvgkOnGFh5hiYps7xR1lp+namGGyYi40p772fpJPN?=
 =?us-ascii?Q?i6nhImzXQDghbRLuVorFk2Mr+9tQvAQc22U5iBVEc5rYFBKReZ+nU1xYKbko?=
 =?us-ascii?Q?ygjZNQLJY1Rdu7sR4y2JYjDCGzpmFE+HnHVLwi19BeAgN77YqozVnjGuaNxc?=
 =?us-ascii?Q?naKCOgmEcPJ9qVv6QY/89V2UnHyyx1F8ExKf7ePcUVICgbhVEYTD8yg2Mk8Q?=
 =?us-ascii?Q?5bG7qu9RpWO/ZOGVC1dI7SF9fWe1Tsej1PHS+05MrjY8/sqH+jeTYEZG7dyo?=
 =?us-ascii?Q?oFnXAJODkn6am5+oY8gYbUg3ro3n37Y5Y7NqLdyVJlX9jr44L+dsgPA8WY3e?=
 =?us-ascii?Q?wB88mODpU8Y42hTdAMy+3x4MpVNwkUpmFsRNrU2XsmNQI9eUWyC54cL6jzGX?=
 =?us-ascii?Q?ZzBc87S/wJgg6R8powJag16PeKY917tXXA1i5Lgazq8z0L+FeEpf6NqHA+QH?=
 =?us-ascii?Q?u43VIvhyI9I9/w83pZw3UZFLrMziaa0nhlal+Y57T2fB+MobQ1VhlR47l+kA?=
 =?us-ascii?Q?n70N75sXUerGQHOIZwFYYpCZJgHOjCVjbNn+F3jlrx6INxFbc7DldWkzCNha?=
 =?us-ascii?Q?JARreLsW88S6VrhrsduxKlfMpCPntOtF0iE0HGyr6GRPY8uTe2DOsR5D7Zm9?=
 =?us-ascii?Q?y8VUwdH25iy/VkMbHUDG1bjmnq6ubMcYJCAYhuo53YkdVzjFiRx9K0pjWXsF?=
 =?us-ascii?Q?UlOX0MigQSTEgkvtG1hzybl+GU3KsRhfJ80PudnYAz8X+5sv4Y3A4T/26Ill?=
 =?us-ascii?Q?jIoxdcOG4Ibhr1Me3ujwwXSSBoa+dtLO3rWT/6P/HTFugNGvmVcAjdfwHJH8?=
 =?us-ascii?Q?pfK6ENnk9oawc/PvlIBp8pHnVn1OOvoGVSIcs/VOD88ZxO4KHtLavMtr5DX3?=
 =?us-ascii?Q?NBZiEPnFSRXwOYCyd6ebrwdghBTmnxbhlGuTyjRshhb5hb/vDN+KyuqBqwsy?=
 =?us-ascii?Q?0ouPZayjnnrFlJR23DlQ2yQZATall0CCKTcC0nTCsAvauXTNQx+Hbxovjzq4?=
 =?us-ascii?Q?MFl2q2MhyTS0CK2r8DEYKXFStgiefwMi5Vm9FpD7GF+pTBgXtDjwwweZs/it?=
 =?us-ascii?Q?P5vy2CFQ3FADZiFnGe/9+olc1Xf9zsKf89U+IQUMs1MvJx+IBLAv9Wf8pK9d?=
 =?us-ascii?Q?sb4lxeMCQiM8MF/Ylbbt47iXNEmIqseKht9UdU/P1zGXOyIUcSzB/15gdA+J?=
 =?us-ascii?Q?4x+eQhpYY/+Z3Iq7QxpmuQWTiQpRrYozWC2QLsJozVBUtSLVwTxAp/auzR1x?=
 =?us-ascii?Q?RL/voeYmUiHH1AIgNn6bU91RH+6naj4UKQwmbCM5Sj4n41KjSQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AIwM+lAT5OeV14+8IIVrKUgrJd1Q80kZ9LeAN3mgipvLiYReqL/Rx13duNNZ?=
 =?us-ascii?Q?MC5JP6ndJBJwsS29Nw4OZ3+cjetMYfm+tBl6m/a/Iuzx/SVkt0V9ARyQ4Ff5?=
 =?us-ascii?Q?RdQwHJ7255NhAJxDW5nYVMXVts6qikomGrYA6Jko5BqgUutr8FQV/THxUY7J?=
 =?us-ascii?Q?Iej49M5IgsjB2FuA43079fdrJVUJKUmwmZv8hKmPg/sBEBjOQr3WGsuCBMcN?=
 =?us-ascii?Q?s2xC3eQPJH/7Ofce8F1RDjNr/RvJOBXJ5C5x/K1Trb9Fo0K21hLNPV1xaUBs?=
 =?us-ascii?Q?YUsVMsfEVE/TR9JZMjD9+CxdlbLu7ILp9/tZil6bM7ovyHKw+CzzRnXwqWgO?=
 =?us-ascii?Q?awCIj/8Kx1E69237cmHsh5vnjiukr1vzf7UH5U0gptsAuoY8cWVRvo3vAyvP?=
 =?us-ascii?Q?SBOS/vwLx47AN/rAy6gEZO6+bn51TpJlzHacx6eU93SNC8u0ZDLGVtuj8flS?=
 =?us-ascii?Q?yupsL8zl5Yz87dGwjxx7+/ZmyqhJt9gjCBepyEBDLzB2ZlumDtjU8DbgNlPu?=
 =?us-ascii?Q?a2wvplBQwTFOEi1BEODtuYMqEF4pLrR3RhhDzp/PT5vbNxOcw3fwqOpaxNpT?=
 =?us-ascii?Q?KUnTY388KLdt4IfBKKYM3L7w1HiyCYPBUztuHcMBLiPI1793Qq3ZZkf9jwIs?=
 =?us-ascii?Q?TuuKBBoaUmA8qgS/TiPa7/s7STcR6IHoTmcFT3HQP1tqe/vCZxInqQZA+lU7?=
 =?us-ascii?Q?yjRa1lQCzYDRBWOKPhM+OvWYwJJc5mTQdigPIJppLL4DfOqj6AJVDWS4OIwO?=
 =?us-ascii?Q?80234EWECxvjGwpE/S3+PawDSvEBcWbrzk7g/XkdTeiym50319wmQsSR7ur4?=
 =?us-ascii?Q?fwxQzsetTWAfy6SW14re+8HkP7I1U/h8UKgPnsdyKLBF3Vt/7ZdUYsSb4NET?=
 =?us-ascii?Q?3Z6E+2qRCR0dG+tE3jy9yzBwrLjd0le3cUIb94TGiubBttPRYmn42FUM4ED8?=
 =?us-ascii?Q?h8sBNLP07ugEGZvqKdpH98pkhVSzR+9f9DSUKzkWiSXUnxqXwomjh1cxU+4G?=
 =?us-ascii?Q?ZAKWqvir6u+hJOWC1Hncpn8AAcEEq4xKtO+j/SLsnJv94cb2WO4Val0jUURi?=
 =?us-ascii?Q?Cl36ZkXT6BwHMLDcgug0cpN2MSvH1vBOusFq1J64mhTLgJx5NY7JtOzPjABH?=
 =?us-ascii?Q?1Dnp2Cj9m0yMN4dB2A+bDwlt+tOZ6I0teSXgCXPnE0PKiS3UV3/aXHJ0nNns?=
 =?us-ascii?Q?JY8vGy0ByZCztws7i2w0PCZGp2qbP+ekl2GlksMpMbAnAWSO4E9TwjN6mD2C?=
 =?us-ascii?Q?3BwVNkZMiFx5fJRbkuvAoyXabWyjYO7IsljYzmlW/+/aSh/yJVsakZk0xzpt?=
 =?us-ascii?Q?Hc+oP6EOi7NzwG/vOqrRljRa16KO9zu/wk5gt6zRLeLGZ5klBwpExXNGcEtr?=
 =?us-ascii?Q?UFqfXX0zXGsVa28rBl7AV/HdD2fAY7ZSPI2H4cUcCEuucn7LBmqzNKLmTLRE?=
 =?us-ascii?Q?tDIurykzBuvCoAQ7NZpQ+i3VLf5tUePRzH36wAgtU7/hS5toiuXd2CCyqJEl?=
 =?us-ascii?Q?NjtDDK6O4ALgp3nosB+EV5iqKehjQBo9ftS0NZ15y5/DMiHHE3ggrP/vyqOs?=
 =?us-ascii?Q?L6sa0zTnH2RB60jcC+6vguXHfalbEAZZqvaVhAvj?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be321fc3-a39a-40df-b412-08dcdd5d9665
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2024 12:28:40.4640 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jBuh+sosDh5wv166aOhkb92XIz2Uxfd7k2QC+gVhgMYJqPjcgYg3yjHvgJQjETFkFJkiGKbs9V5/c6O1Bc5x9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8748
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
> Sent: Wednesday, September 25, 2024 2:42 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: Re: [PATCH 2/3] drm/i915/display: Add gmch_panel_fitting in all
> encoders
>=20
> On Wed, 25 Sep 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > For all encoders add gmch_panel_fitting and remove pch_panel_fitting
> > as it will be called from pipe_config after joiner calculation is
> > done.
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c    | 8 +++++---
> >  drivers/gpu/drm/i915/display/intel_dp.c   | 5 ++---
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 4 ++--
> > drivers/gpu/drm/i915/display/intel_lvds.c | 8 +++++---
> >  drivers/gpu/drm/i915/display/vlv_dsi.c    | 8 +++++---
> >  5 files changed, 19 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 293efc1f841d..cfbfbc815d8c 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1641,9 +1641,11 @@ static int gen11_dsi_compute_config(struct
> intel_encoder *encoder,
> >  	if (ret)
> >  		return ret;
> >
> > -	ret =3D intel_panel_fitting(pipe_config, conn_state);
> > -	if (ret)
> > -		return ret;
> > +	if (HAS_GMCH(i915)) {
>=20
> ICL DSI code is only used when HAS_DDI() is true, but HAS_GMCH() and
> HAS_DDI() are never both true at the same time.
> So in this case only pch_panel_fitting can be supported.?
Thanks and Regards,
Nemesa
> > +		ret =3D intel_gch_panel_fitting(pipe_config, conn_state);
> > +		if (ret)
> > +			return ret;
> > +	}
> >
> >  	adjusted_mode->flags =3D 0;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index a1fcedfd404b..480cb8dc2948 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3049,9 +3049,8 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  	if (ret)
> >  		return ret;
> >
> > -	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
> > -	    pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> {
> > -		ret =3D intel_panel_fitting(pipe_config, conn_state);
> > +	if (HAS_GMCH(dev_priv)) {
> > +		ret =3D intel_gch_panel_fitting(pipe_config, conn_state);
> >  		if (ret)
> >  			return ret;
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index cd9ee171e0df..90b4664f66f8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2345,8 +2345,8 @@ int intel_hdmi_compute_config(struct intel_encode=
r
> *encoder,
> >  		return ret;
> >  	}
> >
> > -	if (intel_hdmi_is_ycbcr420(pipe_config)) {
> > -		ret =3D intel_panel_fitting(pipe_config, conn_state);
> > +	if (HAS_GMCH(display)) {
> > +		ret =3D intel_gch_panel_fitting(pipe_config, conn_state);
> >  		if (ret)
> >  			return ret;
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> > b/drivers/gpu/drm/i915/display/intel_lvds.c
> > index fb4ed9f7855b..c28979b4ac15 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> > @@ -463,9 +463,11 @@ static int intel_lvds_compute_config(struct
> intel_encoder *encoder,
> >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >  		return -EINVAL;
> >
> > -	ret =3D intel_panel_fitting(crtc_state, conn_state);
> > -	if (ret)
> > -		return ret;
> > +	if (HAS_GMCH(i915)) {
> > +		ret =3D intel_gch_panel_fitting(crtc_state, conn_state);
> > +		if (ret)
> > +			return ret;
> > +	}
> >
> >  	/*
> >  	 * XXX: It would be nice to support lower refresh rates on the diff
> > --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > index d21f3fb39706..753a883c30c2 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > @@ -282,9 +282,11 @@ static int intel_dsi_compute_config(struct
> intel_encoder *encoder,
> >  	if (ret)
> >  		return ret;
> >
> > -	ret =3D intel_panel_fitting(pipe_config, conn_state);
> > -	if (ret)
> > -		return ret;
> > +	if (HAS_GMCH(dev_priv)) {
> > +		ret =3D intel_gch_panel_fitting(pipe_config, conn_state);
> > +		if (ret)
> > +			return ret;
> > +	}
> >
> >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >  		return -EINVAL;
>=20
> --
> Jani Nikula, Intel

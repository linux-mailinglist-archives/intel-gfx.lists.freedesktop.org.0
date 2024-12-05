Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAB39E4C18
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 03:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9475410E5B3;
	Thu,  5 Dec 2024 02:03:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E3XTO47+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF9410E5B3;
 Thu,  5 Dec 2024 02:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733364225; x=1764900225;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LH7VwYFhAUwsw5RzSwD5e8+VkhBBARexkeNqbWCY9Ac=;
 b=E3XTO47+F1VEXSNrqQrc78qsiwKMO4l2qe5KuXTPv9svykXs1BGiA0ps
 4HAx8pn/cjqVoPmnVOxDOXTPD2GFXycZJeo3zWA0yX3fpCZm6Kc8qGvre
 StO3TvwaLOruTnKJC3byeXWf1k3ykRTD+1q5KMnE5WKG3FFremkw1GaVM
 CTNnrAeM38dIac+wxADvijlG0ydvin5K+ZDqJAxJDlcCjEVE1KJPYBrbo
 n8j82kSx+Do5gmaBXed/s9fXZhr0Phhkfy+n8hKSSIVsPfN0sZmxo3y1Y
 CkT2e86BmzH7yABP4Qi4a9+3nbyPpFX1of2T4SP4xRmD+FcqOz1Obo+Tb Q==;
X-CSE-ConnectionGUID: +pOEa6dTTxeM1XVdX0Y2hg==
X-CSE-MsgGUID: 7OlbW2eCR/6/uSma62xQ6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44264451"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="44264451"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 18:03:44 -0800
X-CSE-ConnectionGUID: VG+p4AgZRzS7PLikHOOBPQ==
X-CSE-MsgGUID: ums+pSijR+G1r12xbKUeLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="99020893"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 18:03:44 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 18:03:43 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 18:03:43 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 18:03:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ttR7bWMgkqvVSo0KrVrRkf9EhrGJw6yTnF7yp+8zX77wzOfJn/8nivT4QoWlSGwZyFd8dp38Q1AlnaAWJ8Eqeo9R5sFyRWpT1Pe+ghfH6D4zhuiMK16fvNRd6X48LF13B2cPJUJjWzTcW5hCF3HLy1cEV9H6FZAdTsDuXF9QwmJxkB/XZqk43FP5s5q0COkAkgSW32GewA9ZLPJjOn/TnY7Fyhfc//ACFvQGmIKZ/M8blt1p6A6bNL7EuJOQ9tgu5F9ubZ8V+5cQ2VUolmE8fJmOAkW1aqo8LAooqyCHIcRlahMkPtAj4tEjnCBA02/oTN0U8Z7Oi3ODkpulSSAGwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YjSny3arHYgYqC6HuHlbqu85yHe80UtUUL2FFX6+tMI=;
 b=AtmDTU9qAbOIeSRLM8p54iOLcfO8uLA7s+GiODsx5W7d1zn/VH+R5htB70eA5/fd0jUMzzpb2X1T1CGTitl1GUB57Er0RC3I2KCGSvr8JMNhFunbQYkGAISbjs8rA6TNwdVoL5mpv4AkkycWKIgcYX8PW5LH0VvSi8TPWR3LawFl1vZYGlxbQCxIFQ1vFXBt7ArH3T7+ZUg0S4zhPewTX4F2X82M6Q5wjwAgPkMW5YP8pOs5a2qPwlvbLODBt1Q+dOYsdM0qEW+AA2zBk2U1oowooDxjv/Jd8+uFuZf4xAyRzMMZIYaRDCicaeIGci1HWjerpnCpyROni9wSSrOPaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by LV8PR11MB8509.namprd11.prod.outlook.com (2603:10b6:408:1e6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.19; Thu, 5 Dec
 2024 02:03:40 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 02:03:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 6/6] drm/i915/wm: Club the initialized variables together
Thread-Topic: [PATCH 6/6] drm/i915/wm: Club the initialized variables together
Thread-Index: AQHbRWARhDq5iF3D9k6NI/bAiY/GQbLW552AgAAAwrA=
Date: Thu, 5 Dec 2024 02:03:40 +0000
Message-ID: <SN7PR11MB67500F73AEB731FC8D6904D9E3302@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
 <20241203084706.2126189-6-suraj.kandpal@intel.com>
 <IA1PR11MB634862BD6406F520E853146AB2302@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB634862BD6406F520E853146AB2302@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|LV8PR11MB8509:EE_
x-ms-office365-filtering-correlation-id: b609013b-a68e-4b38-8ec0-08dd14d109ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?q/Nn2tgXqnzME54M4rK+DMkZdSlSUfzHVFPp7Hv8bYF6xPL2B+Yz3e45+ruG?=
 =?us-ascii?Q?MQrepKdtJ8kK073bo2TAtlIVtU0KDWIy2K0Es6mR+9uWsz9NgbA2NglZlu4w?=
 =?us-ascii?Q?/96drXzBxNEQHwEIlUu5nICcM0BbSty2GrtspeiuMacDJCtyyX1J7GIbLfPQ?=
 =?us-ascii?Q?PgcyrbFtD4h8U3RcOcP0cts2R+j7BtSRqHIK+fuQzZaJ1T98d+wsxLW5fOn9?=
 =?us-ascii?Q?SahGbseSGOhQHG9FUWXET+x4ncIiCdb3KTtfHG0UJcDnELZRLEZm5DOaeQP6?=
 =?us-ascii?Q?Tcn3co/jp7FfJpa2kBC7PHtdJefckxVruc4LA7nQIc8/yAcARfS/YMzmX8ji?=
 =?us-ascii?Q?sTeLL0v1hbRMxv0mUCLOebv3TsH94ikCdEr0iWliAdSvPHPrYsxf+JYRsSSy?=
 =?us-ascii?Q?c8oilS5KHr5skxrmNdxs13MV8hxiq7TfJMyIfBiC9Mjl3OTdC7IpsdgVRfN2?=
 =?us-ascii?Q?fxSAwpPTMkummpGGR0/qfZ3UmnfzLghV0Apbx5XrVMUOfUJa0ibgeQCGIT47?=
 =?us-ascii?Q?VYhT93P3ATfTKktyi0cFNHA29G18cs0jLoVtwyLpcZyPa/+m2ObOqN0I3K7x?=
 =?us-ascii?Q?QMzRQpQpiidFvMOtpsHDgPA0uAtWzWDyLnlJPIT4OGPozorJeD7tiUzVPntY?=
 =?us-ascii?Q?plnCaNme9Ablp3XtR9+0pbu80hp5N5EHk+I/+8dCyVb1DlWhRqXlBAaXSaya?=
 =?us-ascii?Q?KnvzvttKIwXF2B2yDvYZMjTCoL88uT5TqNSMyL632AhSmZ2rK8SzwrLHz4j/?=
 =?us-ascii?Q?WdV/0rOTdDW5VPLwIIX5HEBOC2CaVJRRDzmlshj+t8UpaAtOvcs1k3hHUWba?=
 =?us-ascii?Q?aPkhQEEkPFY9cu75SMylTpO58uX3g9FV7JULBkxWOVYvynw0I497lU643YVe?=
 =?us-ascii?Q?T3VJVX8IfTg+HsSiAmyQA40Rems2KzjSVDWozqsZDS3cMKl0PAzxcycid8R2?=
 =?us-ascii?Q?eGo339LkgUUOp5Ebht5ZV257z/hNZqynxDLOfs30ano3lXLG7dHXJ9tnzhzn?=
 =?us-ascii?Q?dv8Tv+pf1OXk5PCXa/9FxUTfFjzhTF+XBSBJXFYpvQYiBeOvv9ArZk/ppKCk?=
 =?us-ascii?Q?aVmWGntyTTjUPh8W3jcexLSI4aFWcrh7NkOyczC9Ju1aTQCSQ833+qas5iKx?=
 =?us-ascii?Q?1keTfvnxErlBVyeaAgbxwJAuOc48Ilu96byuQQ8M6m+ppv+FHDvlQPpjWqQE?=
 =?us-ascii?Q?DB2aVcyCwgIu4HMzfgJzhCW1PYlKscIZnVZYnEcTKqRDvjw/S+vGB74mpCy8?=
 =?us-ascii?Q?g+oSU9BsJkhd6ZsbR0jp7olUDSHdUwSdq7i/d584cpOwXS4UjZBCaeAFlUfP?=
 =?us-ascii?Q?615fFT4mzOfFMvnPvPeqckrc+mQPehURH31n4GoazpeXDdy+oqTumVTt2WYY?=
 =?us-ascii?Q?OrNvbqLTkxGSGzgrJJ1Hd5gTSFaaFZNm6te2bgkfzPqK57YXtQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sof6aHpsHvpxkUJy7LRCbwEaicaCK9qwGqyBEf3z2zJQHiojutfn+TRNMUmT?=
 =?us-ascii?Q?kjBUQRUnrwQNHXKZAvCOd05pUEoO5WFtktZQR3gZObUJwd5/rhIz2e6xwfKn?=
 =?us-ascii?Q?jTXHKPBVH7zPImgumz4j/0gsjwof+ZqFG06sDDgfiKY+PmsxDV7F1wso/rxN?=
 =?us-ascii?Q?d53TVL1pnx3VpJX+kXVP8IcaPuPyc1CWJLKqjHCRXj/1oztZKzSLmh8PnPcd?=
 =?us-ascii?Q?vMusa1Sjg6wl+kKLzFSfxULaLUuhaIYkN8FMFtDafkluqcSXdmrbA7jyNGuh?=
 =?us-ascii?Q?fHodFTq7FNvQUh4tDuMZWdFR0pvI4GpGpwFIUKWuB4BUswN7mmXaU/a5A+mF?=
 =?us-ascii?Q?t0hEVNxvUG/8seWT51+dmzZkCpKCnIiWqYmxNq/Uaora76465kxWUaTBc1EE?=
 =?us-ascii?Q?K5gAeEfjwU7PZsz3tgKaoe1gZ4XGHgExZkY9TrRGfQvtOOlWjW02KiinJ3n1?=
 =?us-ascii?Q?zQOuxofSxaSJLWZjCSJbLw7tto1HXtUvR69+eeN/GXC4xFtX6fNcBm1nZx+a?=
 =?us-ascii?Q?Lr7dAwN0xnEC4hw2RgVnCUrSij81toXSZkNFkzZ/47PkQbJIWx1TfFVVwsFi?=
 =?us-ascii?Q?e1rvqk7opMdQeJQLZDLS1H0uQg2YBmMtE7NcA/Wpi40eMWkhiqjk/no9fTGL?=
 =?us-ascii?Q?5TE+oRC/oaJz728KwqvNlnSqZfkjt12kuA/jeU4DxvJRsv7okKU/aZKAint5?=
 =?us-ascii?Q?5w9e/jyNzi115sza6Yd1m/J/UYIkXJFQO5+W53C/A7+xca60CL1JpxPzZPoc?=
 =?us-ascii?Q?Mh/PMW+B/8Qr8Jsz1j1fAsEH3xNQAXfYetPkmeR7VPeDISf5ibwjXL/9OlPL?=
 =?us-ascii?Q?mzo3zJUR0BefrWnsRJjr4Wn05yH8zLnNCm5hn9ay6ldLkUX1ut/s21RYeGSh?=
 =?us-ascii?Q?ayiUC1cd+oD0sS2SGIs8PSRoR50HPU77LX9pLII66zqd3adxY6vzubUKhH5s?=
 =?us-ascii?Q?GJjW0VsVsOAIXWzQCgeThRQuy6q8K6b/Gca4wO0CeQSc1LdtrY5ROGVnuCzI?=
 =?us-ascii?Q?uMHSZh51ReAwPtyQ2EYGOv6SILJZLc6Li2TMtEGQ+E9F8OjVvHmnepLNmRCW?=
 =?us-ascii?Q?NJ1bCsCjJPnDB24+qzfK16gaBJMQGSQDlZfM5+IYVrCVFI6sDYkeoaAgvuvr?=
 =?us-ascii?Q?xTbSqAAtWYA3jb/crLKv5/fFdTC6f8qTAPJixZqLnlcYzHzFUDqgky8nmrYj?=
 =?us-ascii?Q?V6sRfdSWxvwp7ToHg1+PTw6YBvgG1ddVCOq8yQlqHzfJ7XM6I2sK/QTGyseJ?=
 =?us-ascii?Q?kZ9iwyh29IChpI9Vzei2tJrk/xRKa64O+7TR58Fz1hPq4JHt/w7/d/rzjDUE?=
 =?us-ascii?Q?/N7+XchJII7gxUmygmDg88Q5t78gz0xMYqoYYJZZw8sxTgfDQQo7Ff3EBD47?=
 =?us-ascii?Q?j+qZkiuPWIASoe3ic5TidxnAy3dF/voGQxmjLqL/emlzSr5njo+ylS6IvQBB?=
 =?us-ascii?Q?Qf/+tB9idYcCURuF1El8Nk7TsNQTQdE6q/fsYJNKkMolO8bodxLNqUOgCgTu?=
 =?us-ascii?Q?t/40TjMARnuDvzDcHdpCmNreNQQZK0LTMgPUpHJBfbYtKvI/BwVdFsKz6EtJ?=
 =?us-ascii?Q?Ey6c6jMQso3GtupsjXn4jrWD7DDwT00DSXB3xOpV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b609013b-a68e-4b38-8ec0-08dd14d109ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 02:03:40.3838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0DP7AmF0WvY6uUMzzs4yCS2lZGIz5dCuU/hHpURWUYjbhSfXT4otqiFfVWpXolZbx8cOMOQT30lZi7zo6DslGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8509
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
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Thursday, December 5, 2024 7:29 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH 6/6] drm/i915/wm: Club the initialized variables toge=
ther
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: 03 December 2024 14:17
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>;
> > Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH 6/6] drm/i915/wm: Club the initialized variables
> > together
> >
> > Refactor program_dpkgc function so that all initialized variables are
> > clubbed together.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 4c032b1758e7..d93f6786db0e 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2862,9 +2862,9 @@ intel_program_dpkgc_latency(struct
> > intel_atomic_state *state)
> >  	struct intel_crtc *crtc;
> >  	struct intel_crtc_state *new_crtc_state;
> >  	u32 latency =3D LNL_PKG_C_LATENCY_MASK;
> > +	u32 added_wake_time =3D 0;
> >  	u32 max_linetime =3D 0;
> >  	u32 clear, val;
> > -	u32 added_wake_time =3D 0;
> >  	bool fixed_refresh_rate =3D false;
>=20
> If go by commit message words, change does not actually club all initiali=
sed
> params together and uninitialized separate.

So when we club params together it needs to be under these restriction
All with same type come together and the ones with same type with initializ=
ation need to be together

Regards,
Suraj Kandpal

>=20
> >  	int i;
> >
> > --
> > 2.34.1


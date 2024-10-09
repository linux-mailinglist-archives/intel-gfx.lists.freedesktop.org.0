Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73C4996537
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ADF910E28B;
	Wed,  9 Oct 2024 09:25:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A4sdmYXA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620BA10E22B;
 Wed,  9 Oct 2024 09:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728465919; x=1760001919;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MSBMOq5oojaGO5NrhNCzr0bNrd+YiDctpbOJMZb9DAU=;
 b=A4sdmYXAb7b6z3rjJtFZ9FmjuDTOgORFAB9/B9vWurgmRpbuovb2FHWv
 s8F2WoQXPNwdzSs50Lmgnbh+LaB1j3fdWcNq33makskDGgLRFvOYaGo7Y
 T8FfqcBjM4LCiAtwUsbQ9XPKWwZe5pUEQCkrxzmZr3CmbfwebVg/3Ca8l
 3lEvtIQc91vZcSNk34SSuQ5fIooqvfruiRG2NwIgHMhAb3a4VzDf1mY5Z
 eueE1WnDxJPb06xWhaJfeSy/LifMjrNvnPdSOP1MpPbPcE1YuoK3eOB2A
 AzcEmmRRLf/anKtNHtrqdUDffeM1S1fbMMtTh7GvqPIDzKP9gl2uYiw+T w==;
X-CSE-ConnectionGUID: NvUdmjK0SpCA6B9Qw6wUXA==
X-CSE-MsgGUID: Ke9wvMV9StGm5x584cW+AQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="30628193"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="30628193"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:25:18 -0700
X-CSE-ConnectionGUID: BBbrY1SuQ565sMZQCd8/VA==
X-CSE-MsgGUID: 9fQ0XsY7T1W3SirddsLx/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="80693501"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 02:25:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:25:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:25:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 02:25:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 02:25:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F87cun25Vt4ufm+GXBNux3JiOSBD36QH5hnVbQofIRsYN+fteVfr9LNhf2TumXhn5iUsKJal85BHlIXa9fGOXiomkGsDC/7hOd2FPI8quYgypFcmd/IOFgBhD4ZUugV8ciM/kMuGTkmdfLN7qNOO8gTlQiGTjEqyeljugUYTnaeG3KFFsiuX78fhbIm8pv66YKomtN4K1gs5BtuQegbhVZvUbHDdVJtWH2L9WkIp6aAPMZgF5Fqeld+oDAEG4RUkyCXTzCmK2T+JGm4pzj6hwgv4chGYEHUrOJQ4i1KqesHpFK+SEKo/7Ir3SP01s0ZCpoud6WRX5MSPM7wLRbgk7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pj0doisnHZKAQ3cW4pqG5AWEIw2LUw2EOwdlR9f4UFA=;
 b=vZe2X8XsPJVr3Qq7CtOQPlTO4Xcu1fq6ftP1K4FeBAdv8mRtI6FyFK1uYrEF2zL918SmCx7k2BVoZiJoGfPEozYOA9Dc5oGVZgpSHXm0rfkCF+cr8PwEpaZC8j9yJ8tWzUrjIFFZ/XAtMQPBckObNMgFIeFb2UNTsA9JTgCMpfq1SsILQ2DRGa9W4+RxBzNFgEFtYnWfbH8TZnQytznTeBQt7o7bSeks0q7e7xHo2nMEgJktT8vKmWEiFSshcdTBu4AqdUTrIAwF2pERKVfFEZl3g/xluhBZ5Z/8iZeOvm66zbNPt/JHuEcZHQ7b5WmFVcBHDsYDvldf8hVWMQHOzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN2PR11MB4693.namprd11.prod.outlook.com (2603:10b6:208:261::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.20; Wed, 9 Oct
 2024 09:25:14 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 09:25:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH] drm/i915/cdclk: Check cdclk value before division
Thread-Topic: [PATCH] drm/i915/cdclk: Check cdclk value before division
Thread-Index: AQHbGigcGDlrR63FT063VafoWdzTw7J+H3AAgAAGbhA=
Date: Wed, 9 Oct 2024 09:25:14 +0000
Message-ID: <SN7PR11MB675041066256290578EB43B6E37F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241009084634.1801800-1-suraj.kandpal@intel.com>
 <ZwZGfsLsy3G-iayh@intel.com>
In-Reply-To: <ZwZGfsLsy3G-iayh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN2PR11MB4693:EE_
x-ms-office365-filtering-correlation-id: 46285075-7439-42d5-d108-08dce8444851
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?oSk4fW0jm2knnqAZGFyYiqZtyTbzuFzZIvt7RIDVXlU20d/+k48S8UPyuS?=
 =?iso-8859-1?Q?MWY1Q5SwN22wJtcRb95XVIVMfyBWaJqIzn8614GBAt/uOT4bUS5MZ3bkh2?=
 =?iso-8859-1?Q?KZehx2oUPQ9HPihJCYgCsHsqeFv+GrinRhh5ctrr3MAHkUmm+hDPseiR80?=
 =?iso-8859-1?Q?z/D2SmKTaVAind0DlcZN2gZRLqz65TD4NHVv6A8Bw5vN8iXiWoSW+6pTmB?=
 =?iso-8859-1?Q?pCFJjXCoxYrKeco+0Sy85S3W3St6HlfYvMU9aTdp4jnaOut+AeChjlo+KP?=
 =?iso-8859-1?Q?Jd02mwoD8SpTbFKiMGi/PABmHBZmyztGu53OeaNeSDESxurbzYqwhTv8kM?=
 =?iso-8859-1?Q?CrKAqo6sgTi6X/ehE982Ks9nUJ+bQ6n0KgbamxakMW5LDNGkqCE/Rz8lEz?=
 =?iso-8859-1?Q?Y2/59naEJzcpirQfawKPjWdOyyvlbRpWL16vpVA+4uEqc78qMGjWAva1tZ?=
 =?iso-8859-1?Q?353R4WNM2UsJirJz+oqRXDdaNMMpzBYv+7nbVvBqghEg12X2yYazG8YwqH?=
 =?iso-8859-1?Q?3H+dd/+mnl/IZYJFpTHi8l33nwbQOzFF0n9+xS30oTx0S+HYUowxriEb1L?=
 =?iso-8859-1?Q?xHOZYJeYWwLu7qeF7TZWNDt4CNupDBjXIH4T93pPCMBcaaJHvHT6OKYU52?=
 =?iso-8859-1?Q?x2l2fqmC7ZjDM7GV1T8m3eKsKeqZw+RJ+iWONMARJvbJ7bZA2g3SKREbF+?=
 =?iso-8859-1?Q?ksBx83vF9HcSlwlj0k3fTH5/IgJpZg211kjdCJoYi1kTf6+cSpt5lO9Ez7?=
 =?iso-8859-1?Q?nM4v/85uePp0qNByhOiAh8ncChYx+IzdLj/MFERtSXBdSrxZ8RV/PMTxsG?=
 =?iso-8859-1?Q?bOTHPX5Pe/ZQMBIBklRAUtR5pmZcp7OAWFDJBbh8n9BYvkwX49GbLT8QY8?=
 =?iso-8859-1?Q?c97wOJSelCq7DIbfAsTukYKxA5SRCgFFSNcA3rHgD4+TTiBLzXADGe3dzd?=
 =?iso-8859-1?Q?LMXBHbflUuJV6+dzWLkxgIUjNCyIR1klVHVNboMI3IHIx8ioMZXZmvmpQq?=
 =?iso-8859-1?Q?TWVMB5indsxSwD4WKYVEZDk91JavaX/tt5no5LX+hiSR85mqFeNH7GRStp?=
 =?iso-8859-1?Q?s1z1XbkazF/bMUXMpZH7vsVKMTKi1rn6lxojwo4draynHxtalWVDy1zRpm?=
 =?iso-8859-1?Q?3Ru6yn5BQvE6u0RltJhvecEy+uQ37UaUGfYoob4JSCbC6+LUITwj+kD533?=
 =?iso-8859-1?Q?XoNQPalMIh38Do2b8izs/+uIfXAKqnTK0linI/OLWH5MT5992YgIRucbWQ?=
 =?iso-8859-1?Q?jMe++Qse/Fyfhx9KB7XGKhbpsMG/L3couVyVKzAWQDBMUi73gy+JkFpM+g?=
 =?iso-8859-1?Q?QNZhLbOdfL6yN8Q/EdFN171o8lp0XdEGlOp98yGrfHyVSVcou9wAzoJJ25?=
 =?iso-8859-1?Q?7Tn5aW210YhI4ddI9J/FgaRPQPN8yF6Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?yx1KspNSDxSCF1nlsyVXuI6QimST9tIf2ol5ZP8ewcPJpoeyDOVzLn0em3?=
 =?iso-8859-1?Q?/j+wonOUXq2KRPmjapJavl2TbN5XYbwr8B5ynaF+eEXCN9LPbBez5JA9iK?=
 =?iso-8859-1?Q?I9nPIa0v/xEp6Cp157qQIv37G1XNZdJA3aL2yEawgkxEvizzadQy5ZsmIv?=
 =?iso-8859-1?Q?4ILuUl12Z7Xdr/YI+pw20dG9qWgBTkhEIXfCsr71RKZwT6qQGZedsVGaF8?=
 =?iso-8859-1?Q?bCmOclddLRNluvN0ZMHiw/xYlz+6lVTR8dHlubrFbnh+lFpp7JblkVdFM+?=
 =?iso-8859-1?Q?LTY2NAlSBRqEIIV1w4kawxQB+Prq/TQqgIaXJ5fdgoOLYDVov7p/Pt7C0y?=
 =?iso-8859-1?Q?p0E9IcNmiYV/id9qm2MJxfE1DhB2LYQZf7EASTjK0TBz+vYaJ0RwRlI3aK?=
 =?iso-8859-1?Q?kLbpzYEI85JVROn0lZJA+NYY1X5IpoL4BGbCDYhGGQBQeXgIsbsLNT1SAC?=
 =?iso-8859-1?Q?HmXHYAabMKbMpVkfKR3Wsk1VInHyDyNnWQIoCP3rNkXb3a7etnQi0k1e54?=
 =?iso-8859-1?Q?Kmg1ArnBCy8jdeNQfbNl4hqgm9utntiff+yH+G4OjPWSNXkrHidLkCjj65?=
 =?iso-8859-1?Q?eub60zaaPeQSOhVaUo5YyD/l59yeHBJrPwf0iZDl9heiN4MlPz18LCAm1M?=
 =?iso-8859-1?Q?M56IDy4KkyxbzOBcwRLOGL1/XoauXFAxLjEb4G2NOBKNZtE32Pxtmc4hyr?=
 =?iso-8859-1?Q?zxYebo1wG01LGbZExgmoWW+V/LKRkKwcNaPeB19gPKjiOI03l9h5Xfe2xM?=
 =?iso-8859-1?Q?jrJEV0VFKuuepH8ZSs9BDIHgK86X/tqXVm8HShhlkEuzEoTBal2uoiTy0c?=
 =?iso-8859-1?Q?8CrsJ1nPLoYge/QkQbjP4imTx4+wkI5XGVhQ7oH/EgtGdlXmf/ZoVQCt77?=
 =?iso-8859-1?Q?HmqlNFCmH7vc7E28kxRDw58rzeFq+pJ8LQarxqlpyekt6JHi9RtjWkik+N?=
 =?iso-8859-1?Q?DQsyLjf/+q9luTvE9qRRokEgx24+EJswK3xddDKoSWHr4W0ZdjLJeRHuNK?=
 =?iso-8859-1?Q?XlViuemj8ctSezvMnlHQDaXdyyGeyi/coFfxPBybICa6qzEuml4LQhbEB2?=
 =?iso-8859-1?Q?shlz9p03vAlCK66kSzdgI7wz2fxlZLHll8PzMOkYQadg+x7O4nF3elVE8V?=
 =?iso-8859-1?Q?OnxcK7qUhwlEpZmtYn4iul3FDDQxp2RrT0y5csZKaFxvb+a0sscd0I9JK0?=
 =?iso-8859-1?Q?wjFTAzB9Fp9EYPqq3ooRUVvqwCSgqR6ZUnSctvTy+0dxR+uaVwQaAzSuYc?=
 =?iso-8859-1?Q?6/iq8qUuBSFaKHaLBgdsGQYkYxLGiQRerfdkMo3Y22nhUmEBbrLZxTv0tS?=
 =?iso-8859-1?Q?0TXmjLgzG4VIdPaV4sMIi0C0YNrKGP0FIlmMJxIxj+yKJfoeO3c8R3UldU?=
 =?iso-8859-1?Q?vrR1EHchW5IzBmVrpoouIJnPyONmriUAoVg72dh0RyJSIGWcvlcXt2cy/s?=
 =?iso-8859-1?Q?bfctEoEVPX0LC9j9rsVezc6R4v78iv8ZV3zXXWwgPKZ6xXbL493eMVCe+g?=
 =?iso-8859-1?Q?uiOMWhDmH7RoO5peay6hn5DWMVcH4pV/fK7kbMq8JetUPA5xtjbIBY4U55?=
 =?iso-8859-1?Q?edl7CqPwNt++6QUN5sbQ2Wwyam89oK9vUJVhoc2HlDcS/t8Nc4c3dniQ++?=
 =?iso-8859-1?Q?nnDAinLMNWQQhqAhi9vcrLRfC8t7ni336D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46285075-7439-42d5-d108-08dce8444851
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 09:25:14.8304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MjLKtda3PmlHM+Zpy4wDOb/Vt+j5Lyn86XgfdChcqPGhoNcz4mgenaATe/vJ5BJQtJaOhiiD3/ZQQ1XN1rCGhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4693
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, October 9, 2024 2:32 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH] drm/i915/cdclk: Check cdclk value before division
>=20
> On Wed, Oct 09, 2024 at 02:16:34PM +0530, Suraj Kandpal wrote:
> > Check cdclk value to avoid a divide by zero error. Since
> > bxt_cdclk_init_hw has cdclk can end up being 0 and then we have a call
> > to bxt_set_cdclk where we may end up dividing this value by 0.
>=20
> Not possible unless someone completely screwed the cdclk tables and/or
> refclk readout, in which case oops seems like a perfectly reasonable
> outcome to me.

Ohkay got it=20

>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index fa1c2012b10c..a5acc70fb87c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1921,7 +1921,7 @@ static u32 xe2lpd_mdclk_source_sel(struct
> > intel_display *display)  int intel_mdclk_cdclk_ratio(struct intel_displ=
ay
> *display,
> >  			    const struct intel_cdclk_config *cdclk_config)  {
> > -	if (mdclk_source_is_cdclk_pll(display))
> > +	if (mdclk_source_is_cdclk_pll(display) && cdclk_config->cdclk)
> >  		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config-
> >cdclk);
> >
> >  	/* Otherwise, source for MDCLK is CD2XCLK. */
> > --
> > 2.43.2
>=20
> --
> Ville Syrj=E4l=E4
> Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB349AA18A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 13:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CA3710E31E;
	Tue, 22 Oct 2024 11:57:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n0+kobWF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2CDE10E31D;
 Tue, 22 Oct 2024 11:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729598234; x=1761134234;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=am5zkedEA+/MEgQKKjsl1TghHqOX6UZRkoGraH2EdqY=;
 b=n0+kobWFtHF8hEP26ARt8YxkkG1GkEtnT6ZLQsk9cxcLRhg5KN5YUAaN
 98SJLCLKHtAH3hfCyyYtplh9N2AWRWRJy1bYFaGAtUMhqUQ+K+Uc8r6nB
 rD5XKUiHcFBks2KTqL2CEwvO827tZj+PFZCwauUiPU9bJXWOieKnRnuR4
 ADjs9Z7qOPGP00KfoPgTqP9j52APSYIjEqCso/lMcsnpI/PS6WglVYwrl
 wvCGstTOCty/VkRkC/bdsfamm5qdz9t33d4nY3FKs4cvmCqgsDDSUzeRD
 anH+mDSltu3oTjqCjNPAvT36ZEww1UeLPBYZUxE7OybXKZW021pVfy+Ws Q==;
X-CSE-ConnectionGUID: yaPyrWLJTs+mJqSU/kuPCw==
X-CSE-MsgGUID: UalGiOV9QX2FOvpbeYgm3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28582143"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="28582143"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 04:57:13 -0700
X-CSE-ConnectionGUID: qeGe5mcbRCK0AfiWsArQCQ==
X-CSE-MsgGUID: BdTzDaJrQNeXHMro/+6ndA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79761614"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 04:57:13 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 04:57:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 04:57:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 04:57:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oYcZy7bCFIMuvMP/lcsZDOJHEpryHaDhYzi7JbKwXT/D1mITVgAvfChOqYSR1E1I/sLIqaxD5Qpfils9aoVWfwkFptiJpvaxCWMalyd0F/nVpeSTfcGSIZ4901wgCwNsD/mztS2b4ckv+id8s0Wj7rbk6tkLwRDBVOubSg9y+6USb+waM9XGSm4XKGD901Ai6FzN7PFR5O3CCqxoe+8hssnU4Hq2TCGOiJsrYl08XtKSVaE0pBM8x5NVGCHnkAFt8+NJ3+23iiuVtVQ6omeHKP4M+5Q5JHB2dcKOp6WMjpbAggKbRcB9lDTmJj3+9CIcYrbab/npHP82Gm0LsG8KEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wTZuv12p+e3RrpCFvQT1iJA0XFtRH+3Yew5iPw5Ao/8=;
 b=j/mlKlmLEBjEhOWB+JigkDIEYoonpG7iPmnQE7FSUUYtN7VR4qW3DERCU2aSrqfEIs0Vy/+1AT5XnKr63e56Izxa+v5WQ4DfGRYE3lAExUaniaHcZfvDodd+AuDd5kVVLwE4Q9CA7zlsYDP6ZOV1uvc+Uep4g1pTKWU+Yfxc9/E9BU029VbA46XVIqNBSkMx6SxAFClXPR6neLzEDME7RemsJQmUBSAZmqmcYjuTZahRsBs+8uLHd+IEnEN5+OcE59yhbVuvR9h7M6lSB7rRQbfiEP3zdAmXghez0pnkDmmnPOuY8wItV4khvBJSr1TJKuU59k1hGLpiO6fJYiRBzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH0PR11MB5176.namprd11.prod.outlook.com (2603:10b6:510:3f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Tue, 22 Oct
 2024 11:57:04 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%2]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 11:57:04 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [v2] drm/i915: Allow fastset for change in HDR infoframe
Thread-Topic: [v2] drm/i915: Allow fastset for change in HDR infoframe
Thread-Index: AQHbGh0UPZtXjElLpkSoQjocAGW8HrJ+JzEAgA3mSJA=
Date: Tue, 22 Oct 2024 11:57:04 +0000
Message-ID: <SJ1PR11MB61299B17F703CD8754EEDAE4B94C2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241009072530.2952143-1-chaitanya.kumar.borah@intel.com>
 <875xq1bp5f.fsf@intel.com>
In-Reply-To: <875xq1bp5f.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH0PR11MB5176:EE_
x-ms-office365-filtering-correlation-id: 681204bf-17bc-4082-9d38-08dcf290a561
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?OWXKllDhIsiEhIZe7W5bQ3dyeraSYuNNvKtc9qmXtOKRR13ssHSX+8wqCfPi?=
 =?us-ascii?Q?44ME6nwPweQGFgEz/jJzny509cDDXnP8ZBUpcCAUWfFYkVpg89XGqGUPJr3V?=
 =?us-ascii?Q?6fcIASXYINrV7n10YdMalwa09ERKP1SmVB2OnyttYKTh/yful0Hmq/SFQNbW?=
 =?us-ascii?Q?t/xmLihrceX0/3cfMPG5vlSAXes2f/hCnq5PTUeQ95KEuskKre6D/jDEIuqi?=
 =?us-ascii?Q?2KcWmyJvUmF0+Q5LIfl/z5/+jozj/58vUkRvjiBVajDazwmrtxyJ6A5mqq4j?=
 =?us-ascii?Q?dasGJkD4BwSp8hpZQaYvS1Rd/UFd6u9wpd7gClJ8GCSxr6iC6Gyt80p8D28W?=
 =?us-ascii?Q?S34jz+mlN1BYkcVM3zOYTLoGtBLN2bx2Qtyvs6slknGeEQpXNeAfnKze2lV6?=
 =?us-ascii?Q?Gc6ExabcVUibCtllRDIHBrm40B5Tnd+kfaISAfJekrelDWPtF9alQit2sLSl?=
 =?us-ascii?Q?3C+JHJtZTJiLJTM6AHT1dpohseNJHUJCwE206jWRRxppFW0Z1909uaGe98E/?=
 =?us-ascii?Q?4zr5vNk8aJLK7IZtUKTKLf6YJig4mYLhMcMoMMB2e375McN0CCGOP4q/tfCG?=
 =?us-ascii?Q?Lj2EhEsgWnSAtgIN4nZ3eexyjBBxXxRSkY/DfKYPJV3kbC7NjP+xVMbU/KsF?=
 =?us-ascii?Q?FyuXP21p81GRcZxgxGqMSoXE4i1a0CWWnth3MiV0TWnKO5UHVYQMGsklu/jH?=
 =?us-ascii?Q?XUz5NajpGA29uCEANosjCYg51iYcHQfP61As17HgankXB8oCSZzS1fZOn2Dv?=
 =?us-ascii?Q?Kp8P0acBc+kZ+jF1otFNaWZSYIERSH84gBimbK9glZgzzarzEUruQKvMEdyV?=
 =?us-ascii?Q?Mf7EJ9SZuoALKPJ//KquUgzieA836ZMwYEJMNB6KdOVBSsa/zezudB0z4ARf?=
 =?us-ascii?Q?Vp3lJngM58KV5IOR7z8SkYsfnkiloiPrTfxEPrCKBRdF1aB9j+TcN9XUoQhk?=
 =?us-ascii?Q?2esGu3G/F6OuZSZf4FyM6I/iUAQ7Rbd/zzi96cnV+DDXLrgiVFXJuW6Au9oL?=
 =?us-ascii?Q?urTTeFOViNF0xufkXCnsMve5SruRGpBWYbXSowekOOJCQhY4FecDnOPnxglo?=
 =?us-ascii?Q?xOzAVNpYso/NKhmfoVh0azW16/IKfS3NbFD4YMrfBPVm9Y44KH6mKwEoHpba?=
 =?us-ascii?Q?3vDC4riwgxOpnztNi/Lfhle+T59XLqfw2mXKRDZcNdjCaHts8n+aAYXDnb+k?=
 =?us-ascii?Q?LPfPUjp7ZSfgUNpTLpb9Ps/w/djRanTZ0KWzFX1vt0XgfWzsQ4rQLSBwmTtI?=
 =?us-ascii?Q?P8TTj52HncsX/bp2XFrygTVBXPGUa4lrrPT6WrjqZAWbo6AOo6o9uUzVa268?=
 =?us-ascii?Q?wPu9mfzZeevYjkswX2qtMwpa?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ao5X7imnjArCr9DEL3Nlr/qWFv/1huypD5MPWO1zBTNbdzZ5kiZDKypwN0/p?=
 =?us-ascii?Q?0h9suwFJhYNqXbjepwbh17kxCyjtUT15X4RsvwkBV9fgwsHNAybzxuAzOHWH?=
 =?us-ascii?Q?w4mk+o+OIzTw5IiwPyC3xnR1qPi/ZCHjMq4T68smM/8AL2CBifaxQs7EYwyW?=
 =?us-ascii?Q?5IOMBf0A8d76cOHwvGkBb2dhUrDkZ+gQ8T8EeuGAVotmIEKx5rKUOy4vIh2A?=
 =?us-ascii?Q?JBHxQaMgrxfFUHvWTUxS1uRb2RjWqepfJ4O7c7pL1MB4Kt/UhwmfGTZ9wUGr?=
 =?us-ascii?Q?BOrb4d88v92bq6QdymlW+c1Qu4ENsjdNCphXtV2xTFBq+AQ6NbiJzy1fV28w?=
 =?us-ascii?Q?tR8pizbIap4IxjJdBoPugBS31q0ZSgB4cMBSlpPtascZ4CKB4MD4vrctEtOL?=
 =?us-ascii?Q?K9NlsqCVqAMORwuo2sFlOzncXWtq2WwaEst30sHoKNFjVZ+2HeSYeTBWRsG/?=
 =?us-ascii?Q?fI4mqrllwgxSDWlWqUpLe7zDyDAyMMhMzhTYZv53inOI1BpxjsUhDp5wIuj2?=
 =?us-ascii?Q?Z8n9WDxO9aFpSUJY3HunO/ZyDMldaBPdq+S++0pRWtObiUvTBHRtsG1vbw14?=
 =?us-ascii?Q?nqFJbx39OVdpLjgJAbgzp47DVC8PK6R/ZW+ImAsRi8bEE+RDSd04HQlLkkH4?=
 =?us-ascii?Q?Vks0OiAQWYL+eJDeDWrmxlHjp8NeACvYh06+MtCIctahGJx5O1bm1qHqJ8ot?=
 =?us-ascii?Q?ttXweC7qE6HdZ3KG3HK7Cq9RwlzZRS5HbBrQgOMVspSS28Rbdp2t8sAowuKV?=
 =?us-ascii?Q?kN3QtsgvEI1OPcB03aOS3dcORmdX3CdmvWKiimZ5m7PEID3nnt8c7QSL9bBs?=
 =?us-ascii?Q?urfiUOMfCDRKgYlUci5tfbVxnfe207xKt6hs4rQa+XMmIgrOfiiiFSmA9lYp?=
 =?us-ascii?Q?3Hw97m5zneXbO7RBbJR0w2cqYSNiz6F3A+M0dej4kgwBXiZXqF69zRByOf6z?=
 =?us-ascii?Q?eR1lc8XVT+hLMNN0G5kn3U2yWhmhtJyWq+BVI3iBH0ZUDuspjWkqma78uoHM?=
 =?us-ascii?Q?nPjvF7TeWopzFhejVZRKcOeDrn5XeT51hbO3JMhIrf7bNLwKEeKCQrQkgPqu?=
 =?us-ascii?Q?4OPwaAiFoldHLmG7NLL75vwsataa1QZbPXEgC0nhJUchTvnb1WOg1CZg2Mli?=
 =?us-ascii?Q?2I/fxFpmwvY4Hc0ShLGyOsBHJQvdKWCLUYYZFBtMCbbIhg4eDBqLB8DyUTBA?=
 =?us-ascii?Q?z2ft4+ElXfwxg/ehxQCl9HqQmzz3LjKk03bDFTSxX4OaBoP96Ctxs8NpuVD6?=
 =?us-ascii?Q?UInNxt9bjbmi0A2aCgOXcdLxgz0znVPUti2ZSgW19EsWlk+8TUkz2pAFuWK6?=
 =?us-ascii?Q?sCxbWb6AkQ1T877LK4W2ynIQhPzp9ogwTLv6+JAhj864U+sPKU4lp5ZI6TsU?=
 =?us-ascii?Q?tjH2GPqJh91JstgyNYZxZHHM4LkHneqDqgrIV2VCzUrsm/+N1b+R/F61cn5u?=
 =?us-ascii?Q?fMcvH9K26m+NrU3sAJDBMtOMIZemiDCqhU9VhqKpUiW9SkB+prUmFgEbL8RX?=
 =?us-ascii?Q?Dmx8+6C+isW6FTb6V66CwRtGE5WemeUjGGIStgqwfXBCuX9tLjR3ELIjXH+V?=
 =?us-ascii?Q?RQusufFrTL1g+SHmPkfA1KpP749rxIsW+tCCXyzh+494WvVQOP28q2GgYYJY?=
 =?us-ascii?Q?hA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 681204bf-17bc-4082-9d38-08dcf290a561
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 11:57:04.3591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3XW2beNdc0uqmHqL5vLSMAsO0d/nVpsuYselJkxxqvSGDzQPXvu6qYm3++E/jUuLCIPNJBEQXPcRrEMBPvxA1yZURcJuEbxE1iXK1Jbu0jk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5176
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

Hi Jani,

Thank you for the review.

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, October 9, 2024 2:59 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; ville.syrjala@linux.intel.com
> Subject: Re: [v2] drm/i915: Allow fastset for change in HDR infoframe
>=20
> On Wed, 09 Oct 2024, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > Changes in Dynamic Range and Mastering infoframe should not trigger a
> > full modeset. Therefore, allow fastset. DP SDP programming is already
> > hooked up in the fastset flow but HDMI AVI infoframe update is not,
> > add it.
> > Any other infoframe that can be fastset should be added to the helper
> > intel_hdmi_fastset_infoframes().
> >
> > v2:
> >  - Update HDMI AVI infoframe during fastset.
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c     |  3 +++
> >  drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
> >  drivers/gpu/drm/i915/display/intel_hdmi.c    | 19 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_hdmi.h    |  3 +++
> >  4 files changed, 27 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index fe1ded6707f9..3195c1125ac3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3489,6 +3489,9 @@ void intel_ddi_update_pipe(struct
> intel_atomic_state *state,
> >  		intel_ddi_update_pipe_dp(state, encoder, crtc_state,
> >  					 conn_state);
> >
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> > +		intel_hdmi_fastset_infoframes(encoder, crtc_state,
> conn_state);
>=20
> I don't know if the patch at hand is the right thing to do, but if it is,=
 please let's
> stick to uniform naming here. If you add stuff specifically for the encod=
er-
> >update_pipe path, please name it
> *_update_pipe() i.e. intel_hdmi_infoframes_update_pipe().
>=20

Ack.

> OTOH the DP path uses a common function, which makes me wonder if there
> could be less duplication for HDMI too.
>=20

Considering you are talking about the common function for updating all the =
HDMI infoframes,
it will need a bit more investigation to determine which infoframes actuall=
y can be updated in a fastest.

We know that at least one of them can't. See [1].

The tests we ran suggests that DRM info frame can be successfully updated d=
uring a fastest. This also seems
to be a valid use case.

Will it be prudent to have a common function intel_hdmi_fastset_infoframes =
and add other infoframes to it
as and when needed?

Regards

Chaitanya

[1] https://patchwork.freedesktop.org/patch/229325/

> BR,
> Jani.
>=20
>=20
> > +
> >  	intel_hdcp_update_pipe(state, encoder, crtc_state, conn_state);  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e1f6255e918b..e8f8f55f75d2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5683,7 +5683,8 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  	PIPE_CONF_CHECK_INFOFRAME(avi);
> >  	PIPE_CONF_CHECK_INFOFRAME(spd);
> >  	PIPE_CONF_CHECK_INFOFRAME(hdmi);
> > -	PIPE_CONF_CHECK_INFOFRAME(drm);
> > +	if (!fastset)
> > +		PIPE_CONF_CHECK_INFOFRAME(drm);
> >  	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
> >  	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 72ac910bf6ec..eba79f14d4e2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -1211,6 +1211,25 @@ static void vlv_set_infoframes(struct
> intel_encoder *encoder,
> >  			      &crtc_state->infoframes.hdmi);  }
> >
> > +void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
> > +				   const struct intel_crtc_state *crtc_state,
> > +				   const struct drm_connector_state
> *conn_state) {
> > +	struct intel_display *display =3D to_intel_display(encoder);
> > +	i915_reg_t reg =3D HSW_TVIDEO_DIP_CTL(display,
> > +					    crtc_state->cpu_transcoder);
> > +	u32 val =3D intel_de_read(display, reg);
> > +
> > +	val &=3D ~(VIDEO_DIP_ENABLE_DRM_GLK);
> > +
> > +	intel_de_write(display, reg, val);
> > +	intel_de_posting_read(display, reg);
> > +
> > +	intel_write_infoframe(encoder, crtc_state,
> > +			      HDMI_INFOFRAME_TYPE_DRM,
> > +			      &crtc_state->infoframes.drm); }
> > +
> >  static void hsw_set_infoframes(struct intel_encoder *encoder,
> >  			       bool enable,
> >  			       const struct intel_crtc_state *crtc_state, diff --git
> > a/drivers/gpu/drm/i915/display/intel_hdmi.h
> > b/drivers/gpu/drm/i915/display/intel_hdmi.h
> > index 9b97623665c5..466f48df8a74 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> > @@ -42,6 +42,9 @@ u32 intel_hdmi_infoframes_enabled(struct
> > intel_encoder *encoder,
> >  u32 intel_hdmi_infoframe_enable(unsigned int type);  void
> > intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
> >  				   struct intel_crtc_state *crtc_state);
> > +void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
> > +				   const struct intel_crtc_state *crtc_state,
> > +				   const struct drm_connector_state
> *conn_state);
> >  void intel_read_infoframe(struct intel_encoder *encoder,
> >  			  const struct intel_crtc_state *crtc_state,
> >  			  enum hdmi_infoframe_type type,
>=20
> --
> Jani Nikula, Intel

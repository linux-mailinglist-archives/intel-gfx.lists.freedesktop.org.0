Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5FE97380A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 14:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C20EE10E121;
	Tue, 10 Sep 2024 12:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kEu9G8Zv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D95C10E121;
 Tue, 10 Sep 2024 12:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725972781; x=1757508781;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FhsmJUXxs86GcwJhNrc1FkR0HJrfke2uv1oGk5oMpW4=;
 b=kEu9G8ZvPcHhAok+XMgGHwAMidCFm9EjhyqCj9OJ6nEEocCjuly4FF4W
 sNCL8eB9eyiikbVOhgdT1fUjHLkk5pE0WjDo2O91p/z4zIcE5Bqjni8Q0
 T3ic35gZOvceY2FDklknYHuFOGVZ9p9DlxRIS0XCqmGhVPqD7PnTzzJ8l
 iRoiooWekumAf6C0PtWfGsRGJl3aQbM7rNCtOl5en6gDoLv8VB3Uvip1I
 bqHtPWeJQimPHg6u7xct4Jr/+K7Dm0Nkwgd9AUjzozqxiV+uH7LcYaTWm
 CpACu3Gb6PdbFy0Z7WCHTGCEVATFcYbCPuvBWMevJH8YCHrDdA+cXSpfg A==;
X-CSE-ConnectionGUID: b29aEqiTRgK3jS6bH8vu6g==
X-CSE-MsgGUID: WiN7lAXdRIaKUnPv0FCqAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="42189480"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="42189480"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 05:53:01 -0700
X-CSE-ConnectionGUID: XqrlC1crQfeP03l88TKLOA==
X-CSE-MsgGUID: vnWGpn8TSmSkXyH90kR8XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="66635139"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 05:53:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 05:53:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 05:53:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 05:53:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IRItO/A4TkbXFqnWWGGO3Rsvt3ZOPPhpV8sSW96R8fCtGHrcN5G1j1N5pFVi+zENMUllYVuki1mqxsbQS2Nwc86TlNWQ+Nd4xqf3PLAoAYddRObic2NCn+q17suFRuxgZGGRyKm3k8FARGqCv2AUtqonyCV5uQL8FRhrXIMI9oboDUthyw4NaldJgmcG57Tk9h/aVDiOgmIPah9yY1IiTIgX6otpLgEs5Md6UU38P1CVg6aYc2OZ4yCkJI0kVHaGVjRwDZt4i2wZGFm4/qFywO+fEG4uvDg9+D4AVbcw9QDqeF/7pah/R8+S6D7EIaS3n3HeFeG6S90mJDafHEz0Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HfBnQWALARIoE8VHpPxCPVGnKrH9nt0DOcUMW1I07aY=;
 b=oAsIfvLLCib5p2lI069dbeU+kvLtoDbJNd+iGN8UtpGYftEf3rn8L0/pY5iBwOr32iQsOw4EtVR5NkUb1nma5xXMW3onMiJkmdNvGud/vni+0pB5nkE1J89iELIFXdkgpBPmz8PI1V+/pvlueNzcDYVu9r3t/cX9G4cMhkS6VOuSDQk9YGXh1tBuXCiz9ZLJX4ORDP4tZw7mvySf+87JsqIfYIiQ9DJd0NYuSxvaRZq63OK00Ma4/X/V4GdbDKzRlLC+GEy+GDh4I2M6mR5gXQ5a9ywZJT3DJ4vDXomdKAkzk95rwgQvMg5Nsdy95PFSblkDpDFEbITaqexUpow0ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by SA1PR11MB6870.namprd11.prod.outlook.com (2603:10b6:806:2b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 10 Sep
 2024 12:52:54 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7939.017; Tue, 10 Sep 2024
 12:52:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/hdcp: Use intel_display in hdcp_gsc
Thread-Topic: [PATCH 2/2] drm/i915/hdcp: Use intel_display in hdcp_gsc
Thread-Index: AQHbA1YPj2NESl+kZUGcgSrVwXUZr7JQviKAgAA7juA=
Date: Tue, 10 Sep 2024 12:52:54 +0000
Message-ID: <MW4PR11MB6761590C834A97D4F9EE5A7BE39A2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240910074712.544007-1-suraj.kandpal@intel.com>
 <20240910074712.544007-3-suraj.kandpal@intel.com> <875xr3lvdk.fsf@intel.com>
In-Reply-To: <875xr3lvdk.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|SA1PR11MB6870:EE_
x-ms-office365-filtering-correlation-id: 7c486fce-aa38-4ace-4fa5-08dcd1977cc9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wxv2jwyfO8B5nrfyNUnOVI0l2gqMVOQ8FsJUsJvvSvYfSPcngqXiRgcwQ8UV?=
 =?us-ascii?Q?3h9qpgpk00o0F9fB9zsSBc/kANYzBE9swk8qXmGMpRA6a38qvCn+sqFAi1Ug?=
 =?us-ascii?Q?cDEdKnqbYzVzU99GXLlkcTev6Jy/GJ6po2mUWnQoHN57jBA2chtsesSqFbpJ?=
 =?us-ascii?Q?GjumiKl4lAy7EITZ6XGTkfCu0Dc4WiHdSPOe/Id0h/v7NImnCt5ZRLq9jdej?=
 =?us-ascii?Q?CqMexuY1Trde9frspG/QXAOGqdGZZ6910ZGEYkBt3vsy45k5h8rs8kox1Qo5?=
 =?us-ascii?Q?PGpynVy0lATED0yHiU+oIx3Rj2zjyq3Vl4miU5L+ew3+iAWbEtXajJkbyhfG?=
 =?us-ascii?Q?Zi6O6RuTCCgoTxtrY8BaQpDWS3fYDlu38IqRGGiONXUgOvev4bHPATRSCrj0?=
 =?us-ascii?Q?JD3uDtuGuxdq+dwQ97UjYPcfkeeTPcKPyx2OEGDjyLIOjYrPJUrtHYsik12u?=
 =?us-ascii?Q?iyUEllMXfyxiVghvyscweGy+wewmJk/hq+j/A/IAHD5hrC1rrA7Fms05EQ+M?=
 =?us-ascii?Q?MdL9HKDEKO6coVsyXMPZNGBR3j1lS+WZ7QWJ7/6v+DVszAwcExx4usJDNW8r?=
 =?us-ascii?Q?65mqO4kJ5GbFANduYtKvTKFrwWY2/xFTQnIurHmdoFq70rDdplhzcjfuS411?=
 =?us-ascii?Q?k3pGUImg5zgQkHyxf5g0zfubCJWeuocel1LrO1p85wWOCMY+TAqX3pECW887?=
 =?us-ascii?Q?Ue0Wg+ZGgbLM93bM2CH+iugODqibgrgHVJddL7Yn2jgf68nbajA1z9ei82ci?=
 =?us-ascii?Q?6lu7GEnTC+2baakGTybWf5ZyYiFmtOqaDr+a1wSPpDLXdfZtJqXaI2suPOho?=
 =?us-ascii?Q?dIz/5o8Qj/BwU1WyBHqmiTjrLqQOQ2NuV76H54HVCyiEIUhiRoPso8fJsxtg?=
 =?us-ascii?Q?/MOs9bskl3qClIWLZIgF7eru9VhH6NR98ui2C/NyovUqwH4sx6ATj3eP9b8z?=
 =?us-ascii?Q?Nrf6IomIxXbuvZsiAb3qBnBObgsScAP4Q/vAcYuXuShMD+S9S9LNAc4KzH3x?=
 =?us-ascii?Q?IQxWIDbtfB09g46LmQknyzRRDcujSmkbwGoBhqbCJbqk1p+/rAJ+w30KKqO1?=
 =?us-ascii?Q?7LBWIl/oO+NHPLhUel2jERnBMToVbnXmKPNd5gRlZG141j5kFuYJEM4MHmpy?=
 =?us-ascii?Q?W52O8gSO/phckE/8hBjlhmmDAUiSc9RVGSt8Z2MmNWT+0mIQ8MuetZDs5krr?=
 =?us-ascii?Q?Z1U3Le/QwDERCxiJKASxGkSz+MLWoe8z4BSM04Oor5aFztEgSLooQ/QcImT3?=
 =?us-ascii?Q?Tbw2p1kfCTijBOkMKHYTZKeZp/HuCZsudCziSmhbAsU0njQS05aMMW6NjmXQ?=
 =?us-ascii?Q?9NZh3tohzgPMqmbJlPxOMJ/WWIBWOdk40VlIK0Fqu+iISYIoyyOUs+Otjowg?=
 =?us-ascii?Q?RDJxbvA95ClcdkvVzPWgpepIYzfqIObSVL3QCuQbsbNZ8NLNfg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zwiU97y7dm+IOfZbk8sng2NEtgQogOyCfFi3f8nRAefty29JwVoupajGlQoy?=
 =?us-ascii?Q?4maKS1PGOJLPNtETS1KocmvnETa9gIq4ztT6g0ME2IjtLLb/yLmjAQu2iX3M?=
 =?us-ascii?Q?tHXad2QIwKuGZWtA0qEC3xpnoE2XjElJ7QnilvpW2v4v3kSimCxyyZ2gNahH?=
 =?us-ascii?Q?5u1r50GGblscn0g9pB+xznAQKvzb8wIMGXDTiE4WnvGMVqaZA+pIY63rICqd?=
 =?us-ascii?Q?NtQAOphKa9BD+otkpH26/H9vMvVohZfEY1EvtKGx4u4CHE7Ibn4xjV2WCgyE?=
 =?us-ascii?Q?BIzbPXhtqIZ7MYXyQYENY7h7+ePT1cNYKM4S2COmZmlIPWPqxjBKvdspA2O0?=
 =?us-ascii?Q?PQREeTOqCfY/d0SLtkHHnVWYE8eW2jP9HQ1W5uHZKUR/NeyIkOsQaLykbiK1?=
 =?us-ascii?Q?lZEYfLC0DK0q0gNkzVu91bIoX9y3pBMp0MO72XWOY3TDSOHqSyyrZNhfNi/C?=
 =?us-ascii?Q?66bOR3JvU6R09KGMzbTb0YE4OHPu/YoJN+ptTpgOGhNsqw0FYVEqF+KyHnN0?=
 =?us-ascii?Q?vPuNjAMrcaH7cjjdsHBiToAbeAtFr6V6GmU7uKIvMKeLgFUGMfITpe5mOPDZ?=
 =?us-ascii?Q?21ypQ+moVPeEddNFvmU1jvZTxFOEhIqOuT0GEWOKqY9Mh1JJs6QzsDmed6Xq?=
 =?us-ascii?Q?yqhztvG7Tmos8MePpOmKXwCTUzOjfnxYPl30/Zlpwg4jOWmglPv0c4wzyOro?=
 =?us-ascii?Q?5whHssHsypHiRHezAKgHpM/XXILvMXKJ880/lN8fw09pSGza71I0+05v+C39?=
 =?us-ascii?Q?6TgpM4LNy2zJHB92MnyED8ybEMBtahn6r9HRBIzs/vzwxCRfQK3w4/cIA90V?=
 =?us-ascii?Q?0U7ACo1YXev7J/4Xl47IloSEj69wWP8pXQJ8tDKs87+5Db2ePYuEh1e+uIsr?=
 =?us-ascii?Q?tBxNwVt/4QrNltGNC2ANkWzo6JxGevzej+12rJPs5M/xbcKy2BQQf2cfajop?=
 =?us-ascii?Q?Dn/bnY5CSGYH1Y+7lBpFhxJFc4SWPetGLl12OyIaB9afk8+2401Bgi0Nl9wo?=
 =?us-ascii?Q?o+3LD/+cWicCq6rqJsNq4dyf6z2N17zBqLCPL18lAkkSlRu4oPIiWmpWCztR?=
 =?us-ascii?Q?N6x3gVMJ5j80zzu5TIDLwVq8cqBeQllBp3ESCiKDrIdKrHgUJR4Dmve1jo3p?=
 =?us-ascii?Q?dRQmTg9R5rSuFBFMeCOvRlmsoKAf6mpHvy/Eigntza7Q96nOM1M+wFWluw3l?=
 =?us-ascii?Q?Pa8JIJOSTmGKCSlPry4Gl/8Z8Is4ElQQNnnrGkYxzblN8IT+DW58DsrEXOqR?=
 =?us-ascii?Q?7Qzdl18s4krLvW8CkEevtniSC4C71xGhQ5gWV8wrKLoeXXpUYCuNtfEPvCRe?=
 =?us-ascii?Q?wxXB6K7z+SlZFNhy57VTNE77Bn04unhEVAr0eXQbkSeDzC6bLO9Fk5JTlj/x?=
 =?us-ascii?Q?0W825eomgLOLjvBaWXzvPeyAA/sPraAgiZGSiJBZ+GUxu2GY+wOHyLBgMSJN?=
 =?us-ascii?Q?4xV25ZLtCeMjHYpolExYPIyi1uM19vdH2sZzCpLeHpV7vTnq8KkvzniTlT03?=
 =?us-ascii?Q?gu6tRaKKkVvH89YyNFr64Lsk2YmE4sazbmmquyLCbFo4iXcTvAPDqWxz63GI?=
 =?us-ascii?Q?rUosws0+VuGhMrbhAt/8B+JfrEhSViSrh6sY6Hk5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c486fce-aa38-4ace-4fa5-08dcd1977cc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 12:52:54.3394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2r25gjEcJo/nnsfpIqNUydl07GXUqZbHKRZ0HNYB7CqCBpJ6FPTcEV1Xoj8p/uhyBIeVT8FodtrxiP3INiBLbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6870
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, September 10, 2024 2:49 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 2/2] drm/i915/hdcp: Use intel_display in hdcp_gsc
>=20
> On Tue, 10 Sep 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Use intel_display structure instead of drm_i915_private wherever
> > possible in hdcp_gsc related files.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     |  4 +-
> >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 31 ++++++-------
> > drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  4 +-
> > .../drm/i915/display/intel_hdcp_gsc_message.c | 44 +++++++++----------
> >  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 23 +++++-----
> >  5 files changed, 54 insertions(+), 52 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 964372f4343b..efc62711274f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -2306,7 +2306,7 @@ void intel_hdcp_component_init(struct
> drm_i915_private *i915)
> >  	display->hdcp.comp_added =3D true;
> >  	mutex_unlock(&display->hdcp.hdcp_mutex);
> >  	if (intel_hdcp_gsc_cs_required(display))
> > -		ret =3D intel_hdcp_gsc_init(i915);
> > +		ret =3D intel_hdcp_gsc_init(display);
> >  	else
> >  		ret =3D component_add_typed(display->drm->dev,
> &i915_hdcp_ops,
> >  					  I915_COMPONENT_HDCP);
> > @@ -2569,7 +2569,7 @@ void intel_hdcp_component_fini(struct
> drm_i915_private *i915)
> >  	mutex_unlock(&display->hdcp.hdcp_mutex);
> >
> >  	if (intel_hdcp_gsc_cs_required(display))
> > -		intel_hdcp_gsc_fini(i915);
> > +		intel_hdcp_gsc_fini(display);
> >  	else
> >  		component_del(display->drm->dev, &i915_hdcp_ops);  } diff
> --git
> > a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > index dc5cc1d54c85..55965844d829 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > @@ -107,8 +107,9 @@ static const struct i915_hdcp_ops gsc_hdcp_ops =3D =
{
> >  	.close_hdcp_session =3D intel_hdcp_gsc_close_session,  };
> >
> > -static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
> > +static int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
> >  {
> > +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> >  	struct intel_hdcp_gsc_message *hdcp_message;
> >  	int ret;
> >
> > @@ -121,19 +122,19 @@ static int intel_hdcp_gsc_hdcp2_init(struct
> drm_i915_private *i915)
> >  	 * NOTE: No need to lock the comp mutex here as it is already
> >  	 * going to be taken before this function called
> >  	 */
> > -	i915->display.hdcp.hdcp_message =3D hdcp_message;
> > +	display->hdcp.hdcp_message =3D hdcp_message;
> >  	ret =3D intel_hdcp_gsc_initialize_message(i915, hdcp_message);
> >
> >  	if (ret)
> > -		drm_err(&i915->drm, "Could not initialize
> hdcp_message\n");
> > +		drm_err(display->drm, "Could not initialize
> hdcp_message\n");
> >
> >  	return ret;
> >  }
> >
> > -static void intel_hdcp_gsc_free_message(struct drm_i915_private
> > *i915)
> > +static void intel_hdcp_gsc_free_message(struct intel_display
> > +*display)
> >  {
> >  	struct intel_hdcp_gsc_message *hdcp_message =3D
> > -					i915->display.hdcp.hdcp_message;
> > +					display->hdcp.hdcp_message;
> >
> >  	hdcp_message->hdcp_cmd_in =3D NULL;
> >  	hdcp_message->hdcp_cmd_out =3D NULL;
> > @@ -141,7 +142,7 @@ static void intel_hdcp_gsc_free_message(struct
> drm_i915_private *i915)
> >  	kfree(hdcp_message);
> >  }
> >
> > -int intel_hdcp_gsc_init(struct drm_i915_private *i915)
> > +int intel_hdcp_gsc_init(struct intel_display *display)
> >  {
> >  	struct i915_hdcp_arbiter *data;
> >  	int ret;
> > @@ -150,20 +151,20 @@ int intel_hdcp_gsc_init(struct drm_i915_private
> *i915)
> >  	if (!data)
> >  		return -ENOMEM;
> >
> > -	mutex_lock(&i915->display.hdcp.hdcp_mutex);
> > -	i915->display.hdcp.arbiter =3D data;
> > -	i915->display.hdcp.arbiter->hdcp_dev =3D i915->drm.dev;
> > -	i915->display.hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> > -	ret =3D intel_hdcp_gsc_hdcp2_init(i915);
> > -	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
> > +	mutex_lock(&display->hdcp.hdcp_mutex);
> > +	display->hdcp.arbiter =3D data;
> > +	display->hdcp.arbiter->hdcp_dev =3D display->drm->dev;
> > +	display->hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> > +	ret =3D intel_hdcp_gsc_hdcp2_init(display);
> > +	mutex_unlock(&display->hdcp.hdcp_mutex);
> >
> >  	return ret;
> >  }
> >
> > -void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
> > +void intel_hdcp_gsc_fini(struct intel_display *display)
> >  {
> > -	intel_hdcp_gsc_free_message(i915);
> > -	kfree(i915->display.hdcp.arbiter);
> > +	intel_hdcp_gsc_free_message(display);
> > +	kfree(display->hdcp.arbiter);
> >  }
> >
> >  static int intel_gsc_send_sync(struct drm_i915_private *i915, diff
> > --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > index b6aabd855478..5695a5e4f609 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > @@ -17,8 +17,8 @@ bool intel_hdcp_gsc_cs_required(struct intel_display
> > *display);  ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private
> *i915, u8 *msg_in,
> >  				size_t msg_in_len, u8 *msg_out,
> >  				size_t msg_out_len);
> > -int intel_hdcp_gsc_init(struct drm_i915_private *i915); -void
> > intel_hdcp_gsc_fini(struct drm_i915_private *i915);
> > +int intel_hdcp_gsc_init(struct intel_display *display); void
> > +intel_hdcp_gsc_fini(struct intel_display *display);
> >  bool intel_hdcp_gsc_check_status(struct intel_display *display);
> >
> >  #endif /* __INTEL_HDCP_GCS_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> > index 35bdb532bbb3..129104fa9b16 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> > @@ -46,12 +46,12 @@ intel_hdcp_gsc_initiate_session(struct device *dev,
> struct hdcp_port_data *data,
> >  				       (u8 *)&session_init_out,
> >  				       sizeof(session_init_out));
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (session_init_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > -		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "FW cmd 0x%08X Failed. Status:
> 0x%X\n",
> >  			    WIRED_INITIATE_HDCP2_SESSION,
> >  			    session_init_out.header.status);
> >  		return -EIO;
> > @@ -108,12 +108,12 @@
> intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
> >  				       (u8 *)&verify_rxcert_out,
> >  				       sizeof(verify_rxcert_out));
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed: %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed: %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (verify_rxcert_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > -		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "FW cmd 0x%08X Failed. Status:
> 0x%X\n",
> >  			    WIRED_VERIFY_RECEIVER_CERT,
> >  			    verify_rxcert_out.header.status);
> >  		return -EIO;
> > @@ -171,12 +171,12 @@ intel_hdcp_gsc_verify_hprime(struct device
> *dev, struct hdcp_port_data *data,
> >  				       (u8 *)&send_hprime_out,
> >  				       sizeof(send_hprime_out));
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (send_hprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > -		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "FW cmd 0x%08X Failed. Status:
> 0x%X\n",
> >  			    WIRED_AKE_SEND_HPRIME,
> send_hprime_out.header.status);
> >  		return -EIO;
> >  	}
> > @@ -222,12 +222,12 @@ intel_hdcp_gsc_store_pairing_info(struct device
> *dev, struct hdcp_port_data *dat
> >  				       (u8 *)&pairing_info_out,
> >  				       sizeof(pairing_info_out));
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (pairing_info_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > -		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. Status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. Status:
> 0x%X\n",
> >  			    WIRED_AKE_SEND_PAIRING_INFO,
> >  			    pairing_info_out.header.status);
> >  		return -EIO;
> > @@ -269,12 +269,12 @@ intel_hdcp_gsc_initiate_locality_check(struct
> device *dev,
> >  	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in,
> sizeof(lc_init_in),
> >  				       (u8 *)&lc_init_out, sizeof(lc_init_out));
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (lc_init_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > -		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "FW cmd 0x%08X Failed. status:
> 0x%X\n",
> >  			    WIRED_INIT_LOCALITY_CHECK,
> lc_init_out.header.status);
> >  		return -EIO;
> >  	}
> > @@ -323,12 +323,12 @@ intel_hdcp_gsc_verify_lprime(struct device *dev,
> struct hdcp_port_data *data,
> >  				       (u8 *)&verify_lprime_out,
> >  				       sizeof(verify_lprime_out));
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (verify_lprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > -		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. status:
> 0x%X\n",
> >  			    WIRED_VALIDATE_LOCALITY,
> >  			    verify_lprime_out.header.status);
> >  		return -EIO;
> > @@ -369,12 +369,12 @@ int intel_hdcp_gsc_get_session_key(struct
> device *dev,
> >  	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in,
> sizeof(get_skey_in),
> >  				       (u8 *)&get_skey_out,
> sizeof(get_skey_out));
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (get_skey_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > -		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. status:
> 0x%X\n",
> >  			    WIRED_GET_SESSION_KEY,
> get_skey_out.header.status);
> >  		return -EIO;
> >  	}
> > @@ -435,12 +435,12 @@
> intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
> >  				       (u8 *)&verify_repeater_out,
> >  				       sizeof(verify_repeater_out));
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (verify_repeater_out.header.status !=3D FW_HDCP_STATUS_SUCCESS)
> {
> > -		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. status:
> 0x%X\n",
> >  			    WIRED_VERIFY_REPEATER,
> >  			    verify_repeater_out.header.status);
> >  		return -EIO;
> > @@ -504,12 +504,12 @@ int intel_hdcp_gsc_verify_mprime(struct device
> *dev,
> >  				       sizeof(verify_mprime_out));
> >  	kfree(verify_mprime_in);
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (verify_mprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS)
> {
> > -		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. status:
> 0x%X\n",
> >  			    WIRED_REPEATER_AUTH_STREAM_REQ,
> >  			    verify_mprime_out.header.status);
> >  		return -EIO;
> > @@ -552,12 +552,12 @@ int intel_hdcp_gsc_enable_authentication(struct
> device *dev,
> >  				       (u8 *)&enable_auth_out,
> >  				       sizeof(enable_auth_out));
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (enable_auth_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > -		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. status:
> 0x%X\n",
> >  			    WIRED_ENABLE_AUTH,
> enable_auth_out.header.status);
> >  		return -EIO;
> >  	}
> > @@ -599,12 +599,12 @@ intel_hdcp_gsc_close_session(struct device
> *dev, struct hdcp_port_data *data)
> >  				       (u8 *)&session_close_out,
> >  				       sizeof(session_close_out));
> >  	if (byte < 0) {
> > -		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte);
> > +		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n",
> > +byte);
> >  		return byte;
> >  	}
> >
> >  	if (session_close_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > -		drm_dbg_kms(&i915->drm, "Session Close Failed. status:
> 0x%X\n",
> > +		drm_dbg_kms(display->drm, "Session Close Failed. status:
> 0x%X\n",
> >  			    session_close_out.header.status);
> >  		return -EIO;
> >  	}
> > diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > index 5badf90b26de..437839b8c847 100644
> > --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> > @@ -138,42 +138,43 @@ static const struct i915_hdcp_ops gsc_hdcp_ops
> =3D {
> >  	.close_hdcp_session =3D intel_hdcp_gsc_close_session,  };
> >
> > -int intel_hdcp_gsc_init(struct xe_device *xe)
> > +int intel_hdcp_gsc_init(struct intel_display *display)
> >  {
> >  	struct i915_hdcp_arbiter *data;
> > +	struct xe_device *xe =3D to_xe_device(display->drm);
> >  	int ret;
> >
> >  	data =3D kzalloc(sizeof(*data), GFP_KERNEL);
> >  	if (!data)
> >  		return -ENOMEM;
> >
> > -	mutex_lock(&xe->display.hdcp.hdcp_mutex);
> > -	xe->display.hdcp.arbiter =3D data;
> > -	xe->display.hdcp.arbiter->hdcp_dev =3D xe->drm.dev;
> > -	xe->display.hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> > +	mutex_lock(&display->hdcp.hdcp_mutex);
> > +	display->hdcp.arbiter =3D data;
> > +	display->hdcp.arbiter->hdcp_dev =3D display->drm->dev;
> > +	display->hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> >  	ret =3D intel_hdcp_gsc_hdcp2_init(xe);
>=20
> This needs to accept display as well. Or are you going to do the full
> xe_hdcp_gsc.c conversion in a separate patch?
>=20

Looks like I missed this will fix in this patch itself in the next revision

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
> >  	if (ret)
> >  		kfree(data);
> >
> > -	mutex_unlock(&xe->display.hdcp.hdcp_mutex);
> > +	mutex_unlock(&display->hdcp.hdcp_mutex);
> >
> >  	return ret;
> >  }
> >
> > -void intel_hdcp_gsc_fini(struct xe_device *xe)
> > +void intel_hdcp_gsc_fini(struct intel_display *display)
> >  {
> >  	struct intel_hdcp_gsc_message *hdcp_message =3D
> > -					xe->display.hdcp.hdcp_message;
> > -	struct i915_hdcp_arbiter *arb =3D xe->display.hdcp.arbiter;
> > +					display->hdcp.hdcp_message;
> > +	struct i915_hdcp_arbiter *arb =3D display->hdcp.arbiter;
> >
> >  	if (hdcp_message) {
> >  		xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
> >  		kfree(hdcp_message);
> > -		xe->display.hdcp.hdcp_message =3D NULL;
> > +		display->hdcp.hdcp_message =3D NULL;
> >  	}
> >
> >  	kfree(arb);
> > -	xe->display.hdcp.arbiter =3D NULL;
> > +	display->hdcp.arbiter =3D NULL;
> >  }
> >
> >  static int xe_gsc_send_sync(struct xe_device *xe,
>=20
> --
> Jani Nikula, Intel

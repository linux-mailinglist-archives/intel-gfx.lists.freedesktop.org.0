Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7318B6A85
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 08:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88FF210F16A;
	Tue, 30 Apr 2024 06:34:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LhCucCR3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F82F10EF88
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 06:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714458893; x=1745994893;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=11NMNreyeM8NIubafKfSgh9MHqEM4cWYFSuXqIRrKds=;
 b=LhCucCR3s2WuukWJF+243bKzLbYpiVbJsJyUvJ7rd2GIkhi/f7dgDHwX
 fJ1UXCgHI3rRsumSn0yHSAgliB3zqEFwLqr1bcBaUiUh41wSWzM/pQCcz
 8QzkyITogvVEqOfIqHJd98wBN3ZZtpLNUDNp2HsmH3EX0Q7dXl8rMfUOZ
 MTWQ8MU9GgjaYoO6QzkPK7FwJ3vRAA1gRxck7nlHQ8gCKdZEb2Mk2GSKE
 uQVexlt+kO+9f0alrULwTL7TgmwYCs/Di+AKP0ARRjzNJUDMoBJWnJH13
 1yin9QEHnBWpUZVeD8lKkl1vePLUDDd7Cc/VnjXZbs6jgOaMOjk0oAyQu w==;
X-CSE-ConnectionGUID: 19BvyDfCTO2dWs6UuXEF1g==
X-CSE-MsgGUID: PDSLdHqURzG892mkA2zCRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10008658"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10008658"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 23:34:50 -0700
X-CSE-ConnectionGUID: l/JRs/ltQ+izUssF4D9MCA==
X-CSE-MsgGUID: BD6++EuaQRabXq3aIbWolw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="30984016"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 23:34:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 23:34:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 23:34:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 23:34:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OcZtw+31bOQjiCAGVR9nDfaqZWmK4GXS6Fvf/xYmEmJp++LjBehwJFYYbt5A5nh8D946UAYiBMGBISMVqO/XDyVYjZ5emoxBkLVYicZDRwOABTN6fgMsK7OWv1qcQsua8mMP72GSS7wuVlkeoMu793bn17Q/8pHVlf98tNhAtY0zwKHfSJA64KDt0NA7w/C2yaaKiAD1RRh52keSi5aJE+YEWIXSfbcQ5kgo0jwumZ9OvDkeGjthksRk65x6G8EV/7ra8Jq87Q3pwvVLy/JVPL3/QSWh3RJtTJO6Ur4V2TEVaczdUhTdT9yqJuC0Bsl6kkJUQnqvDua9CxIjxFsSOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xmjOanqUsn467BvOsnmYH+fl4v3MhSXYrWlWHPihyPE=;
 b=YqbiwOEpQ6+IpnMyuFtLcLCIi8gNs1T7kD8oqunM0QMU/Oic+PzrKWV/p1sBU0Dm9QFldVPirk6+qNwOLEaOt4OBh1GfEfRWwIn9HWqHfyxttO+tHqP/KBIHhhAo5EQCtXKKybdi+YAyspm5OvBj6AthyWBOvlxr3LpaMhfQXtsTR5r22ppbB8eZQgUxT7ImozT7pD/bs3yeIL1txzPFJAWf6wAEUOn5gGPS+mDC00IL7IdcJSGL1Xho9vOmbST8Z2KeMH8Rf1T1bvFEIcdHg5sqDnu8ThVRUG0CGlqvAXEFCoJ2W66gjYqHtxX+nZY+TebCR6A/hdvFMGVzSLg4tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ2PR11MB7426.namprd11.prod.outlook.com (2603:10b6:a03:4c4::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Tue, 30 Apr
 2024 06:34:47 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.7519.031; Tue, 30 Apr 2024
 06:34:46 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Topic: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Index: AQHaj7CKM2mu2nAdLUK5mFlLuLWS+LFqi2EAgAGwCYCACrECgIAAF26g
Date: Tue, 30 Apr 2024 06:34:46 +0000
Message-ID: <SJ1PR11MB612950DDE39D93725A734CBCB91A2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240417095537.632977-2-suraj.kandpal@intel.com>
 <20240424051144.822652-2-suraj.kandpal@intel.com>
In-Reply-To: <20240424051144.822652-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SJ2PR11MB7426:EE_
x-ms-office365-filtering-correlation-id: 6501b6f8-c882-4c87-e73d-08dc68dfa117
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?eahKM69dG5crepeIBesSYrMeV9caXTQ9T3l24TYDUqkPjlfBfPNnbSVqm2lQ?=
 =?us-ascii?Q?X6gpm+cpgJEAYXz02m6jrGLwmO/+ljLlpSYAi8wcfN61lhkBFXZqb0ELPdWP?=
 =?us-ascii?Q?qMY6TMSHf9odOdXigyZtANiQZ/V+VU2hPJFEHwxRSAPs+qcxIR02mJURSDkI?=
 =?us-ascii?Q?+XJAXEWpuy26PgfVYrgHhvzjzIvaFM/76g5L9WdWkDvauZ1e3XlJ+ZJWcOZU?=
 =?us-ascii?Q?NQJdWK1IGg2RVunElM3d0GKWci0SyKW0OKGNULgIBntxl/E+3w+bUqZZS8HG?=
 =?us-ascii?Q?8EMK/i6caqM5U67qXI02QeL5wUnyKZvNBIjcnW0btuVZfGgsQdY/oPaTd42c?=
 =?us-ascii?Q?eaThcFGoPbU0N2BFa+vR+XPyFO+4wtW/x1iJhGfAahyt48NQZZOsWRKuglYf?=
 =?us-ascii?Q?QQWTWG9Ri4iEY5Xp5L0JfqSKAhtAFlq6/5ptZboGPef/NWGmfg3zsL+a8PDb?=
 =?us-ascii?Q?6XVlVeyD6qeV45HbTJojN3g/1hJ44+v1myfbRwTbNn5b2dtgcSa0UQaW549h?=
 =?us-ascii?Q?vEu8PyTBS7FR9hbLQksjkJf3W0F8O6306v/qJO5auHE4y+q1bWEi0f3qgdbq?=
 =?us-ascii?Q?SQOhVl6F4gmhiiDMO4/rMYEklt66obK9ti3v1CaTAGL4DsFqy8qr+NsPiJvD?=
 =?us-ascii?Q?gmMOKMbQzY7s/qTRvgKMZsDfx9uMNYWL3WEZrGA6AGUwAmkB7iDva7t6MdQB?=
 =?us-ascii?Q?s3bqEwsK80MGGieBUKP/11cFo20jMbVV/Js5l3lwhUf2PZPRrb3eLOBJC+IK?=
 =?us-ascii?Q?N+u/O8pluy7ahMx4paK9/GG//fzbdCyrWz2Ua2fj+qoCMyqXignb+KhyT1iJ?=
 =?us-ascii?Q?7XIEoUqkGlKHK9/jZYO74KPcLRDnNthGc8zKVb/SDMw6HzYhU7JBVXloKvse?=
 =?us-ascii?Q?1U4tEJpRKSkMxV8LPhVexmA+ahyeR9EVo58cL/Pb+xzY5GZPtFF3ZNwTTdtg?=
 =?us-ascii?Q?6SuUVPaPXtUQi5mWPfXCyKj7s2sPGjN1zywLv1orvIsVyWA7Bng9Wchcjr/g?=
 =?us-ascii?Q?oHA+Mj/Wuw0Nqv5hCaWDLmi0vElwKde2nD8j+gTLEitrqbl02QSxx86lmcqw?=
 =?us-ascii?Q?D5+J3Nb+jsNUV1tukAc7dQWyLy1rKPLB7conzgZvwlE+vQATdst72MTebCIC?=
 =?us-ascii?Q?zb8m7Qs/dpimmBPl+9tHyfZwQVn1ZicEAP4UfR9+EtAutJQZM+HMYsgTy9VV?=
 =?us-ascii?Q?vlXIC0vUU8d95ys0SunTq/7rqOYUDiEY5SvrHxo3RiQYDcrP9L0wzD9opf8Y?=
 =?us-ascii?Q?IxXa2QtRRdMXgyRfSo6qWSgysgonxuDQ+UYd5E4TEZDngGw09FPjQ9YDIyNY?=
 =?us-ascii?Q?AuKxVpz9BA3NdaWkLHvYTEvNPj3LVTioYOqOS6OlRQrtKQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZfN60VpMUfqJf5g5B4YtIIgiNqZgA5bmymVEXEkDdfIghoq/5taeX0Q64Nvf?=
 =?us-ascii?Q?jzcON50tYLipiaEmkQ1XQaTWMh0eBfQJRpfR5ofYwpjoNxl6Uo/+W5ztA8v9?=
 =?us-ascii?Q?5hbN1OZuYyc/MLK+QV3qJkBYUVHmwR1P+Xv7qj+qeWORnP95zC8eS0IUFbdW?=
 =?us-ascii?Q?0pZuvU88xN5dNLvM9tesCrbx4WRCw64PZAsW3X7//NUVDqWO1/TGosdOQKuo?=
 =?us-ascii?Q?mx56NcxJeBEfWdiWNXcyBdpVfVUGh9kX1Tw+guvhmdy2iTPkcglDwfmhAP/o?=
 =?us-ascii?Q?6FsgxI/QkGSQuBELTbv02bSqqzBrJZEW42WovlEU56+m/K43g3W0PsvR7w65?=
 =?us-ascii?Q?Xa2wrPkF8audbcrjqggNxe1eRLH1e2YYIFW39Z8Bdkg3pfijn///fQyjrFvu?=
 =?us-ascii?Q?ley9h62fQ9nF08uIvoXnaoZ44W1I0lQWqE6Z/+sdJRnEM55hoEp7+fvrYEoR?=
 =?us-ascii?Q?v601YGG15kTRCiFaCbk2P4aE+6LOnmqJd1YcY7FNSWkPRfVeGlMAgvQw8hfI?=
 =?us-ascii?Q?s6Qp4g0aQ6Tm3tOGsgpup1mGri3HC+/M01UaUwgl4NV66mPZ09zLZoX4IGCm?=
 =?us-ascii?Q?3NqIc4oBepgtDVhvfa0WAQatHIR42pIgZR3cfPW1LFGyCgGRrUXJU1UnicM8?=
 =?us-ascii?Q?iSH6E84wIp5UEJ7NFrETLjnZbI+AuHMzVALSDWPnjwVDEQ9cHF1wCpuBWZZ5?=
 =?us-ascii?Q?Xqi1TnWwwC6kwh8s4keCRbBF0JtQTEhU1J9RTO4MDqObCUHYSZi9yoY94du/?=
 =?us-ascii?Q?IiCSFk0Ze7mGkiiiKZaTBlnh+IUMsfcvWbJPB52q+jrgjluBCpSQgqsQbjKs?=
 =?us-ascii?Q?l8R495lhyQ3kGEVmrhFiQnTkImv6RH05jUxqTPAA2X1S2xXD7j2jtPlWCwV1?=
 =?us-ascii?Q?8SDJxRXBzLL0z+KR0KDeOq1/hggZykAfgM9PAOSm8FPmbLA835RHlW+O6+nv?=
 =?us-ascii?Q?1GjwumlAjPlE/kA9+NL1uRP0SJ5FMM9CrtzAQ70go5Bk+RTymAfoUG1SCBRj?=
 =?us-ascii?Q?LDisr6B6mnmJ0mVhwTB4JuJlOGe0mz1b15yoseifAnHOjWI7YVqtZWfDAyBf?=
 =?us-ascii?Q?kmdNwZTaRY5Zj5PfsOUVWyC0hm07isl94KOAwQLJW3yP2oOW+gBIITUFTUeW?=
 =?us-ascii?Q?oIl8ZliaiB/IfcrCiuutKcm33oGiARiPqOfx3L800SRD6p8c0qMb2Irfq/5N?=
 =?us-ascii?Q?Xi4R3Q/hGYet9DMxjEQfF3FI9w4nSn7PY7ronl6kvOs89pm5FH+yVsQ70FeC?=
 =?us-ascii?Q?HwQ9h/dYPOfqZLdNMTEsMj3benYoF11DmgXn7ztjc4Djvw6PpsrTAZxTMg2s?=
 =?us-ascii?Q?YL/VbHUID67cq5duL0LuDOnWymfvg1Q0/2XS+UOHmYvoH30tAjncUiNxugee?=
 =?us-ascii?Q?LE8P1KTxpOUpETbjQudwuyljabsiCD6QJAxSrFLrocMPdpRYs1LVrv6zhynr?=
 =?us-ascii?Q?Oo2GA7PWo99aA9iZMURBYxKJ/yf9Ui5gIfwcDuT06FjioA2/BeW2xJ5v/wXM?=
 =?us-ascii?Q?tO0tVj7OxZt3ydjfrz4rbEDRlCW12AcArG0x4aZy8dMlQq0PKyAs6zgAl9Wc?=
 =?us-ascii?Q?LD5A8jLpe6XCVrZVHLOvaq/y078fNsq1hOq+dYJNTrMGIvxCOvOt0fJn5CkI?=
 =?us-ascii?Q?LA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6501b6f8-c882-4c87-e73d-08dc68dfa117
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2024 06:34:46.8843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0iGIUmaobwW4QpTGJ0vVefuOIE1DaUp+ZKzPUTWcUyDW5RrZ68bfTE4QbXqHkhI86f4ayd/JV9HeYHhEHqx+N4ZwADHXtx9ZBgBr8kczuGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7426
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

Hi Suraj,

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, April 24, 2024 10:42 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
> HDMI
>=20
> Disable HDCP Line Rekeying when HDCP ver > 1.4 and when we are on HDMI
> TMDS operation for DISPLAY_VER >=3D 14.
>=20
> --v2
> -Wa to be mentioned in comments not in commit message [Jani] -Remove
> blankline [Jani]
>=20
> --v3
> -No need to write what is being done in comments when code is self
> explanatory [Jani]
>=20
> --v4
> -Add comment regarding need of this WA when in TMDS mode [Chaitanya] -
> Write in chicken register for MTL [CHaitanya]
>=20
> Bspec: 49273
> Bspec: 69964
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 26 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h           |  4 ++++
>  2 files changed, 30 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index d5ed4c7dfbc0..0d8ae6962d34 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,6 +30,30 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>=20
> +/*
> + * WA: 16022217614
> + * Disable HDCP line rekeying if we are using HDMI and in
> + * TMDS mode.
> + */

Thank you for the change. My idea was more to document the fact that here w=
e assume that HDMI is in TDMS mode (which is currently true but might chang=
e later)
and not the WA itself. More on that below.

> +static void
> +intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> +				      struct intel_hdcp *hdcp)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +

Something on the lines of

/* Here we assume that HDMI is in TMDS mode */

But you are welcome to come up with something better.

Also, s/dev_priv/i915/

> +	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> +		return;
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> +		if (IS_METEORLAKE(dev_priv))
> +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> +				     HDCP_LINE_REKEY_DISABLE, 1);

Since we are only setting the HDCP_LINE_REKEY_DISABLE bit (and clearing not=
hing) the correct use of the function would be

			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder), 0, HDCP_=
LINE_REKEY_DISABLE);

> +		else
> +			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp-
> >cpu_transcoder),
> +				     TRANS_DDI_HDCP_LINE_REKEY_DISABLE,
> 1);

Same here.

> +	}
> +}
> +
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>  			      struct intel_connector *connector)  { @@ -2005,6
> +2029,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *stat=
e,
>  		    connector->base.base.id, connector->base.name,
>  		    hdcp->content_type);
>=20
> +	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> +
>  	ret =3D hdcp2_authenticate_and_encrypt(state, connector);
>  	if (ret) {
>  		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed.
> (%d)\n", diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 3f34efcd7d6c..39b1a2d516fe
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4613,6 +4613,8 @@
>  					    [TRANSCODER_D] =3D
> _CHICKEN_TRANS_D))
>  #define _MTL_CHICKEN_TRANS_A	0x604e0
>  #define _MTL_CHICKEN_TRANS_B	0x614e0
> +#define _MTL_CHICKEN_TRANS_C	0x624e0
> +#define _MTL_CHICKEN_TRANS_D	0x634e0

These look good.

Regards

Chaitanya

>  #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
>  						    _MTL_CHICKEN_TRANS_A,
> \
>  						    _MTL_CHICKEN_TRANS_B)
> @@ -4631,6 +4633,7 @@
>  #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
>  #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
>  #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
> +#define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
>=20
>  #define DISP_ARB_CTL	_MMIO(0x45000)
>  #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> @@ -5630,6 +5633,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
>  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11,
> 10)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
> trans)
> --
> 2.43.2


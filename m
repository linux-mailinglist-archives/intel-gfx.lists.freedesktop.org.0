Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFC394258B
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 06:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F242A10E12F;
	Wed, 31 Jul 2024 04:43:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S5xDbm2S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3BF110E12F
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 04:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722401026; x=1753937026;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GIFCt1otNgW4yuLpW9Z6RwplLIw8zSg9qwatzhAUXG4=;
 b=S5xDbm2Sw9qmlvgvLWq3z6z7RGkOyLpRmpQRJ0iUMEw6zKFFYL3HNuD4
 Nv4gUB89ugSV/0NU7e8wuCpSC2k5733S1QeaMfztygZI3/qjOZZIfc4B0
 I0uWzJX+eAACp3ZS94AkSSh+U8zRLKKoIT2PDGS4/90+REnF75g2cYdS7
 n/IqKfncwWzeJ7jDH3Zv3P6oUaJ2Nq62PSK11THr2/fxt+h8ue6jXHL5X
 CKfCk4CJLfC6YtXZUi90B2/ZqCATWvwDfQC945nzo3JrQ8+cXwfnUsKoP
 ZY5yhJOrRks1JqY8hp6zRntTY6kwuzdvp2YizWudC8T6u31kZ5cnbDrqR g==;
X-CSE-ConnectionGUID: 0ny4+JjDTjWeQocO2pZ6uQ==
X-CSE-MsgGUID: jetmP5yOQNeTsUcginHYew==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20064240"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="20064240"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 21:43:46 -0700
X-CSE-ConnectionGUID: MjnLBClFQaihwujbhZhjHQ==
X-CSE-MsgGUID: wh5+RVG+THaAFQ/wwBW8WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="54601037"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 21:43:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 21:43:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 21:43:45 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 21:43:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GCpCuW9Wgqzb2k2dggwd8KcJpgIw7akT9Qrc4dgD23liZq7oc7BL7ho61TF2x0k2SNlMaml7bafOURwCgyH4MEU3aSN3e5tYiR8TqH+oKZC/PJ6DPOAteY0FZYd22PL9ciQWa5u7EYgBmpjzhypvRBZnynzMt7QM3gxTyHl0fcq8hnjqNxyHyKKU6pFu/MXOxAuDSW47pwfB8SCPCxLULTYAjNGzfR1aHThFxjwnDR9m674pvMRAx5gPeVKNcUxI/kbqGEEAfWTF1UHYY4K11nDVW3+hTrHDReePM1MHlXenZdiTZGhRx5j4eCKL+r3d1ra4E4cV+9d0UaNRV4C9FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8eKZnHL3fEj8rVZFcYr9v0/094SfZLpi1z6E+dd/BVI=;
 b=lwhJ+W4XfNuvHZzDbYyHwEsDAf9Q7klfoZ7w5DQuBFGJpCqU9ebdFbHkUm6jXkZGKXZ7lO9s/gIslRbEtkFLTkqOCxqlIQHeAbXSXua9UXB7GA0sLhsiMBsSLimwhVW5gn4+bRlPvxntn1j/azYWtOP/6ImcagCARm3lB5Kgz0qctZXWYkebuD6qTs8toeVrwB3XDGKsMm43GHU6BTXej0zlDxDhchqfZRoHqI8TH9UJidFtTVQAbRxQo2j1dw5LQ5ATLKR1Lvey9pOA/5LPsSAQqQnJn+GROzT55XrpUfsd+D3fJnZnRAEjxeItyb5WPyL5YyYgXRKE5YJOLt37DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by CY8PR11MB7316.namprd11.prod.outlook.com (2603:10b6:930:9f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 31 Jul
 2024 04:43:38 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Wed, 31 Jul 2024
 04:43:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 03/12] drm/i915/display: Use joined pipes in
 intel_mode_valid_max_plane_size
Thread-Topic: [PATCH 03/12] drm/i915/display: Use joined pipes in
 intel_mode_valid_max_plane_size
Thread-Index: AQHa2Or1g7vMYP5tHkyC9MLYG/mkeLIQVl/g
Date: Wed, 31 Jul 2024 04:43:38 +0000
Message-ID: <MW4PR11MB6761D9B14B20515E2F8C5BA8E3B12@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|CY8PR11MB7316:EE_
x-ms-office365-filtering-correlation-id: b4e2181b-bb53-42dc-0ca4-08dcb11b5826
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?pdvRO5vNOXQVkJxr6kOIMYr/wVqUUgYpDuXQAhyT8zhaw6NDLvMjtMmM3h2t?=
 =?us-ascii?Q?8eyAhvZ/yvLB2V+sTabaiRwcifeosxgvSYb/NALAMqTwKbiIX2S6qCjken9G?=
 =?us-ascii?Q?qqlJ3k6Ey0XWI4RHPyBwBK80Aq9Dr4TxcVgN3IURVFIdmQZf3iC8PrJxnBXl?=
 =?us-ascii?Q?4hkftjy4wqjwVinJO6OK33fvKtQURtY5cFnYkO6gS6XBikTIzEfnB5M7A9XT?=
 =?us-ascii?Q?spR7JH0Fzq9WK0xs4wolVq9cLGxEiI35pkVtcJpd+2o5oLZCTzztM2ni+/+g?=
 =?us-ascii?Q?PrZg4/BCwwFRkHyNZb7h6sM4pbjVY6cgWRXNXnxmymUlaNkhFbb0rGsk/kvS?=
 =?us-ascii?Q?Qp4nI7UojFdDoQ9NTpCDKpooWvuq8cP7HEVVhVchFHHN7KOabqDVDPBo/35b?=
 =?us-ascii?Q?O9t64aYiyYTmC6lHw81zaiOwNbt0TzC+4HQZsDQJgBS+2oiSxiMgZ74KbmA4?=
 =?us-ascii?Q?ltyQWAAhfLj34gHCDZsPNRawysHjA3Rt8w9HNvDnWn3ImJ19CsGdOlnG0ssx?=
 =?us-ascii?Q?H+7sFzFfbDTUmz1PMlCbseNV0LcNiFaBMwpdt7qsIfD9Ak0/dYj3vW/GLTWm?=
 =?us-ascii?Q?n1PRb6gIensxA3zC77EB1V8+fAVCDjFJMED9JHedcaAWhCnqiNDmn+ZKat7l?=
 =?us-ascii?Q?wicmGCXUM2xvNGMlQoReCv565IbeAm5dModOVmvYaf1W0kyuMkQtsbVVmXq2?=
 =?us-ascii?Q?8ZT9y8fRMfmep8Otyfgt+YRzz3VkTroQOg99qfbh1sVkPHpeU7Jlog61OeKn?=
 =?us-ascii?Q?K4CTxxBiX9AHdCYATm7ctlwQdSww+5hs/WpTzRgDOFOnN6KQpaPy8q9hWvpt?=
 =?us-ascii?Q?TyFGbgrAXtafR+FFYUmsy9UQRbg728payhkkcIkYZECmIV9YduPVfYR7IuSB?=
 =?us-ascii?Q?9X58ihHpikvKQi5roG3A9iDxdlGbpZXqHoKFQKmNUemK0uErNBJDQbz4PMjg?=
 =?us-ascii?Q?ExO4tLjmYX6YVLA/OK1pF1nByMV98D0h1mUStgCUJTqzNHCa2x+S+CD3AyYJ?=
 =?us-ascii?Q?DTQwrgXsHFPHeGCJm7CQf+KVIH97mpVkTttkjnxowpWmRUerO/6tPhBG9Gjx?=
 =?us-ascii?Q?ujETvn8E5lkaBiTELvNHye30uBeCnFzKEk29Ft2iYYvFpVfAvQvpBlIbOPqk?=
 =?us-ascii?Q?/BrXPIbKhmvZZwyqSDeX7vmwY+9vMj8t9oXxB0w30TvwTj5qeywM3Yy2FHff?=
 =?us-ascii?Q?m5ZSMkFTc3LKofT3VED+wUQLNOGLkGgp+8nQy30Basxxayq8vRhAFrvqXgIf?=
 =?us-ascii?Q?ZtoWdxWi4vaIJcQ6886RJxWU7HsPQV/3LSZmWDDc6Q6eOuiZBmQ1QjSdSJnE?=
 =?us-ascii?Q?xjoXbQUshtc6ZpIz4jOmN28mJ2x3Spl/LFyqoOd0R+O99R64UV5ad43cd9gT?=
 =?us-ascii?Q?H5Z00s7sNSRpOULvqklt7kpi6gdvak8kRfpayFstQZ9o4q6giA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pWW8uD+Nq/0mOM9xuSGiJP5gE7J6DIr++V2mroKetyzHvw0xQTdMXpFKSGHP?=
 =?us-ascii?Q?zI3mmpm1lIZT35xzZRRwGMge1+pzW3N6EFCfdzZiXT/N2JKu1OYq2WKPctqK?=
 =?us-ascii?Q?jOTjju6BdTnPQc0PWKC3PEj2VZFAI10ixyP6cO1cQSq16+uA8GdTHgCZ74rc?=
 =?us-ascii?Q?daTTXdX8EpyPKqCpiDJ5FmuR3NjJt+fCMq25NloAwQ9koIarjXFV6hxovBD9?=
 =?us-ascii?Q?AibRXbgWGBMroe95jwtL1mxNbNWNfL/kVgvCpWH/mwUssg1FgirVgxsAO4ZX?=
 =?us-ascii?Q?4H6cLKljBD7bITxYFGHdWrxVT46WgVVyk69mc++nVuGuKOXlgbrIbZ9ccrj1?=
 =?us-ascii?Q?qF/43gqO8ornMi/oJgiXQPcnyRUZWr/m2iqRcwIPSKlTz+uzemjY5VQj0XhR?=
 =?us-ascii?Q?yEiVytZW8lCoBmO0ImW0wKZENchUKAtGGL5acJWLZDFL9qIxbAmdVKtLNSPy?=
 =?us-ascii?Q?Kuv7CfaiAlTKa19DeKdcQc7bzPdvbEM9IBmyqPtSKJQqbr3q1195b9vt7SWo?=
 =?us-ascii?Q?WFUi5Rz/clGBPM2XpVRczmerWsgDaktYnKP35878lyfhy6tkdmN3tqOH0pHE?=
 =?us-ascii?Q?oPs/NciDZo+HFNNWkekd4TSO/VZ/e4lZk9o3gZgf9rSB3suMge10SFdmqaNn?=
 =?us-ascii?Q?aFm09R0MpZyHgpDSxKbsWTWKbiZjHVQgreqxf9ESVuzPBuLfm2hEazB8omPF?=
 =?us-ascii?Q?hHFHpZbLNVDqs/roh9wp6Ecuk3fkhdCcsFAi+Cc1PIgr3R2Io98MmSLkMOyP?=
 =?us-ascii?Q?pECzRy404OWym8UgEVA15I4c8q1eFUfagLy0xVNPkNSiRAIQpdV+H1z9b38w?=
 =?us-ascii?Q?qChaCWm/oF/JpxhQtCYl7YoFmXFa3ADvqFnRW71SXRaPt1Jvvi9u/84s9AIv?=
 =?us-ascii?Q?xXK3dt5KCyEIK2/CTo4bFhtmqLRgMQKnCm0Qh/jL5/quMZGJWu1dDTfvSsdF?=
 =?us-ascii?Q?eUHmnP+UdFlspItp+TKN/8WyuyBc/0vsyRCUdvwzPh/Ol+vRvw7dcc3H8L1M?=
 =?us-ascii?Q?+uZhprb8XSmhloAM99nI8iYuDVrffuLnlVMmAGgHZpm3hePad9c+2lWcdYOz?=
 =?us-ascii?Q?0GigLnYYbSINUkBnZ4GSK20drco4QFfmNLkqsRRHBYgMSisjKXkPulkM7j9f?=
 =?us-ascii?Q?iTkS7m3sZNoFbZLfnIq2qMcnT78Aj6qE+jt6ZLfNJY0dr2ssMw2DICPQyaDN?=
 =?us-ascii?Q?0yQkh3uBRE5wzI83ni4XzMGXnZ3eWm4SfVSUhZN4ov7tZYSpkkRhUaOtIVug?=
 =?us-ascii?Q?0e3thLdPF30EIYxNYGl5QsG8yItzcvi6PnIfH4ABAR4jqQNK+4JWLbssgQ/Q?=
 =?us-ascii?Q?+JcsZMPhWQxuiFbWgo7nORIi87p1xVS25NTFpRvBBqrF0wJ5ExG/0enwiOi0?=
 =?us-ascii?Q?73erXy/VjQYeNGO3mtPjLST8PS3QIx75afaG2wI1jcy8cW7qOCqERmOX9fCZ?=
 =?us-ascii?Q?AatfzTBgFVTcZBBXwvZLNE4sD/AEKUJGvMPtBwmKLmap2l8r/1MvEZhxMjHN?=
 =?us-ascii?Q?uTu0IuDjjjy9GDRx2rtZbOyOENO8R7/Zm7vVa2rWVXTSwE+13t+nJ6Vvbr18?=
 =?us-ascii?Q?B/fo2b1gULP/v/xeAa29HA4ZdqbmeF9dgQvSkS51?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4e2181b-bb53-42dc-0ca4-08dcb11b5826
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 04:43:38.0719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZoEr/2RRiBsHprKf3z6BMu3vLf9crpr3k3L5aU3xFAkBQIPYl5oAQ0qiKTzCPjHzHW6mAE1LVb0eKBYIdZa4IQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7316
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 03/12] drm/i915/display: Use joined pipes in
> intel_mode_valid_max_plane_size
>=20
> In preparation of ultrajoiner, use number of joined pipes in the
> intel_mode_valid_max_plane_size helper, instead of joiner flag.
>=20

Other than the naming convention changes mentioned in previous patches
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
> drivers/gpu/drm/i915/display/intel_display.h | 3 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 2 +-
>  6 files changed, 8 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index eab07a5fa377..26e4b0c2e9f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8081,7 +8081,7 @@ enum drm_mode_status
> intel_cpu_transcoder_mode_valid(struct drm_i915_private *de  enum
> drm_mode_status  intel_mode_valid_max_plane_size(struct drm_i915_private
> *dev_priv,
>  				const struct drm_display_mode *mode,
> -				bool joiner)
> +				enum intel_joiner_pipe_count joined_pipes)
>  {
>  	int plane_width_max, plane_height_max;
>=20
> @@ -8098,7 +8098,7 @@ intel_mode_valid_max_plane_size(struct
> drm_i915_private *dev_priv,
>  	 * too big for that.
>  	 */
>  	if (DISPLAY_VER(dev_priv) >=3D 11) {
> -		plane_width_max =3D 5120 << joiner;
> +		plane_width_max =3D 5120 << joined_pipes / 2;
>  		plane_height_max =3D 4320;
>  	} else {
>  		plane_width_max =3D 5120;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 0aecc3330a53..bf665f947b97 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -31,6 +31,7 @@
>  #include "intel_display_limits.h"
>=20
>  enum drm_scaling_filter;
> +enum intel_joiner_pipe_count;
>  struct dpll;
>  struct drm_atomic_state;
>  struct drm_connector;
> @@ -415,7 +416,7 @@ u32 intel_plane_fb_max_stride(struct
> drm_i915_private *dev_priv,  enum drm_mode_status
> intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>  				const struct drm_display_mode *mode,
> -				bool joiner);
> +				enum intel_joiner_pipe_count joined_pipes);
>  enum drm_mode_status
>  intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
>  				const struct drm_display_mode *mode); diff --
> git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7d66a969c461..320d8b6d1bce 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1295,7 +1295,7 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode,
> joined_pipes);
>  }
>=20
>  bool intel_dp_source_supports_tps3(struct drm_i915_private *i915) diff -=
-git
> a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e5797ee13667..3f45ac7ca4d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1491,7 +1491,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector
> *connector,
>  		return 0;
>  	}
>=20
> -	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
> +	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode,
> +joined_pipes);
>  	return 0;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c
> b/drivers/gpu/drm/i915/display/intel_dsi.c
> index bd5888ce4852..acc17546215f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -76,7 +76,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct
> drm_connector *connector,
>  	if (fixed_mode->clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>=20
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode,
> +INTEL_PIPE_JOINER_NONE);
>  }
>=20
>  struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi, =
diff --git
> a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 19498ee455fa..5aa4a9f0c470 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2048,7 +2048,7 @@ intel_hdmi_mode_valid(struct drm_connector
> *connector,
>  			return status;
>  	}
>=20
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode,
> +INTEL_PIPE_JOINER_NONE);
>  }
>=20
>  bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> --
> 2.45.2


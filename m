Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F15C985BB4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 14:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB5D10EA15;
	Wed, 25 Sep 2024 12:30:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U1KfDEif";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EC710EA15
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 12:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727267405; x=1758803405;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KEbb9Z9jQ0qyF+tNP2HX8dUTBga4rllnmkg6eL//9JA=;
 b=U1KfDEifuz6kB36XNnUWeW1ZCMZf7MxYs4XBzpGWssRFnl6jqutd1Mcf
 OWOku8bZhUjQp40K1XuVdibqu92M2hgIHH1HqnlQUNv9fB9dKwXqBnQar
 uAyBAWhdUxu/M6FJ0I54KhQ0m7aYcBqdIVbokzWw1HSHLZtk9FDzt92Zx
 2+LZt+jskRC3f5ZHqZefYwBfMpvHzk5C5zcoW7iHFb2zo6rW1JFn1sCU7
 iFQodBWPuYBMKWqeqpsH8dvb+gV2nFGp+KrK3MltCnPEvAiHyrnIhAr7H
 o0N6a+xtPk07GxbLh6jePAW7NS98HIf5lnytv33nwtub24CwFN/Zx5wLj A==;
X-CSE-ConnectionGUID: /RbPpbDdT6CPnuf67WKhIg==
X-CSE-MsgGUID: DObgXTcGTgyVD3/bs75E4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="48842154"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="48842154"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 05:30:05 -0700
X-CSE-ConnectionGUID: +bQen8vxR7eXuB/xShkN7g==
X-CSE-MsgGUID: IQSH2GuCTsKryMlPWl0UBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="71767307"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 05:30:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 05:30:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 05:30:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 05:30:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 05:30:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gwGdwbchgm1ypBldwiAfXJWOJAUiX8bQBw2ld9cswyD2Lo8dhJykDuQstxgpQORDcc5lYYICwax55yAsG+EAW8I+LN+9QiHs9vzz2QVY6FyJSfjkjgRL297eXJPh/tFDoHHgrbLiKLJJ5NzVRr7yOnCmHrz5nJ8oVtcy+VFcUjuv+X0QG34Oxi5aSiL7LmpuqCll3VwtwzIKiLv9zjz2uihH1A+q5XdfSgOBvAtMyk72Hf4u12h/AVF6Q+RkNzNhvMGn2A0Wc8qKhgZ0LY+uv8DR84mmzjkZMiC1YusroJQnjHHAaVs6USK5i9QjQqX2I8GlWLGLhRthQtSwb9pvHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aln8o6Tzg0nxPxUW1XbtJzFUvXtnnJtR9gEspc+xbW4=;
 b=oppuqGGrnV/NsAZ518PTduw8VW3R4rNsOV7u806EYuSPTQqrt+Sfr5bTOjcg37t6iTMZ0oheH5imDBum42g3ISqJ6B/71gCSMQSxJvRWY6dKih3gsN4vrmx2Oh5tnXJ7X3jI6i9SzM+75OaH0JlpvN9PfcAExaiyKLn5/VFRv/D8O08Uima5qWAfObsGZXWx7B+XcnbzmuCfbb0n33BJl7k4+cQO2nOVKp6H6F4aHKxFA+7ZZSEzFA6MidbNH8LG8d13hApKGLnOsiOWfLk1iaD/Lz8Q5faARWpKuK73Endx3kiKtxXeOmtWOHYf9KL6yIFrsMrcxVUQaXgvfdPC3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by LV8PR11MB8748.namprd11.prod.outlook.com (2603:10b6:408:200::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Wed, 25 Sep
 2024 12:30:02 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.7982.022; Wed, 25 Sep 2024
 12:30:02 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/3] drm/i915/display: Modify panel_fitting code for joiner
Thread-Topic: [PATCH 1/3] drm/i915/display: Modify panel_fitting code for
 joiner
Thread-Index: AQHbDxRyxyoHGpx8xkiiuqZNGDqEE7JoN7eAgAA3EeA=
Date: Wed, 25 Sep 2024 12:30:01 +0000
Message-ID: <IA1PR11MB646773DEC59595A2F89A56DBE3692@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240925063032.2311796-1-nemesa.garg@intel.com>
 <20240925063032.2311796-2-nemesa.garg@intel.com> <87seto2j3k.fsf@intel.com>
In-Reply-To: <87seto2j3k.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|LV8PR11MB8748:EE_
x-ms-office365-filtering-correlation-id: d8e3f9d7-f6e9-46d5-1517-08dcdd5dc706
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?nVm1k+2s07LfEp2Q0Xs1xedjSAumrFAoBopHpu1VnhNLEDNcSZzvrNVUn9Xz?=
 =?us-ascii?Q?kssBHVNYMAJxuY3hsuk2290F3NteV2tAKvCzF0Ufq/nEiQhOqnxR4pnioC4A?=
 =?us-ascii?Q?7K7HzeyZhvcrYb0oaJkj06921UFeZK3DfTrOJ8b0jFpmb7MKUBQjx/o62w6x?=
 =?us-ascii?Q?jbZifN7eYGztDMW3acgpaq0q8fHXaEpoDHxdLFo4uRd6vpE1/+MTlbwYBpTB?=
 =?us-ascii?Q?P707xo/J5eZriFtqT3PhGFZCh6Y+FYkJB3D/3rxaP7z2evXY+jHuW+DEgFdZ?=
 =?us-ascii?Q?JJZ6IShxSDJxYa855sNALaLd11BoSH+oAt8Fl8tpww9tgN+X9xegplidny6p?=
 =?us-ascii?Q?Wy5tqkV+TTtsjQYM0WdfBlUY/VoQcGE5IGUEy6I5kOoYToQMXGjZt6dpETV7?=
 =?us-ascii?Q?BLrcEwrp94ynUsiziyx/s67HI0bHVPdALoeBOZ0gBAyOm1aKxWykfOA8I3Ty?=
 =?us-ascii?Q?HJsYpxKfB1VWeznGRCg4JZAafd82yJuTEXXAqYv4DAZ2UUvw+X4QlOcTdV6r?=
 =?us-ascii?Q?ZE1CTa60eaaFn/4WwjmkqKbWD5QGm1LP5BQkqbzX1Wly5eAbMlQ65FslsH/D?=
 =?us-ascii?Q?lyAst4+Gro7rBcD+QWCVLYl8WGWKFDmgNOHbZVaMEU2UYk8NcbBkL1H7AqHg?=
 =?us-ascii?Q?TPwNvWpXMwGFcwL/kGQNSL3RHXKHjA0RbmKUGy6IU+t/vmpDoEDknzHLlsDf?=
 =?us-ascii?Q?Zng7rxHpmSiro7m48POse6n/WEniH5Tehzmoz5Vqt6gjxWzh3Iy/JpfW/C73?=
 =?us-ascii?Q?/AJ7dKrp3p3IC6EI27m3znUUJHfpvosdAymfbnXyU9aOi2NN3AXm1m0ofG/e?=
 =?us-ascii?Q?mAWnpce6tsDee6Sn/imf5N4U0Tl0yPRdUGxrdjt4muXDb/cI4RTeN6Nh5Mrx?=
 =?us-ascii?Q?q+9VHXyMitXUmZozy37LadKx7CMorpgF5OhVCJXj5I5I/GdBRAGaPWcoFjJU?=
 =?us-ascii?Q?DK7XqG3PByo7bo9tdiScbpNGjmxZkycJWtoHxUplBs2C74jTeBZYNTkTxBL8?=
 =?us-ascii?Q?9RyMrpQh7Br0Ft2cOZcGQ1loZqw5gErQx0ZdNzQK5zWuqPgM2FPx9fgcesSW?=
 =?us-ascii?Q?tUC+D8ONYGmXzP5Im7RDK8S4d1eNrhfzJPSs1YKIcTy+MbBFx6/Dfi6Cempj?=
 =?us-ascii?Q?NQ1oGDTJ+c/opo+dsA6S5bLtb8F+LuittWiMjZLgc3zU+WaxcUnbr9AUSXfC?=
 =?us-ascii?Q?HTJh3SuCWH/44SOCtn/jA+/r4yaREF/zk6HHFrEu7EJxsk/uuZFvS9s8nNpB?=
 =?us-ascii?Q?KBFZgIRtBuAbCjhO9r96W/OrevTW4iMUwrirFJCOKZlLLATq5eukzJ8wQfSn?=
 =?us-ascii?Q?6jKz5N4QHkJByveDeedU5cq+VNT0XhF0KlErT7aKDj+b6BD+ykJhUnW6Hc5q?=
 =?us-ascii?Q?VqW6vr7XqHb41HHv0NW7Iynm++GdIFJRfVHyL23XLnRm7Cbqnw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9AlRlFIPIZ+WIl5y4bp5tDSWuNiWH8vAveDwPf0FBKsN16RZ+HZRWo4mkNgF?=
 =?us-ascii?Q?Gzc0dedWe1rNsnylUFT8GsPBBo4rrt1JZQegYt7Km4UUvS9rROdi8ZkOJzTR?=
 =?us-ascii?Q?HFOdtgIH0QaOjq9SSI+DmJtlVz1RWHEsE6vLO7tqKBfX9vxs9lUE/MB/WZMT?=
 =?us-ascii?Q?cv1uulhqxrVeOetbEGJ32XqZz0YXOEi8sOW33cwezFaOgh701O5ELzr0nxSp?=
 =?us-ascii?Q?64l9ant/dFWSGF/csf6Ci4huk1ueHCWWpmd54wfC0AQkLwOTI4ABl4qjAGf7?=
 =?us-ascii?Q?Z7eo42oEiTOTp+5VRKt8tcfgB2VnzaNciDeHhY+6fuqeCBZHwHKUmfodnrc8?=
 =?us-ascii?Q?ckpmPyeMJkXFQpXRM4jPPs0jVkrABzayRSoyH2i0k8bgDnwNc5cX+TtqAJX6?=
 =?us-ascii?Q?F/9si90i4dYzCMt0defirxggtmwZI2w1+3lY8N8H80jg5FOKoTeCWbY9GEUo?=
 =?us-ascii?Q?+44eMLncgWjNyFdg8TTsBlWvUYV9z5wgB6E4x9cHevXDOXOwA1J1vD4m/CO/?=
 =?us-ascii?Q?a05rW5ysvAWkEdTVd7IRLai0aofH923Oy0VIP8Mwy9DxwcNuf+DdcxCnes+K?=
 =?us-ascii?Q?fXy7R7Uwtdui1GrpTBnG5Q+6HS2qE0MEMMzQfyzWy43LJsjZQEF1i7vL7AIk?=
 =?us-ascii?Q?70dEsmPRBcn7JVepRQijTb0QiA5pDq4Pa1Rqzq7QIcLfAbqP53sW9zWB3uKE?=
 =?us-ascii?Q?LMPfd71dJ4O4ferL5L/Y+nYxX1A6druF+9KmILFU7ruix/i40UbozbCkBLh8?=
 =?us-ascii?Q?tdiOIJXHdrZyjB23c9X8aJsghw8JlTV68Z63NEMXVAa6Olgo4rnDWOmf9KLX?=
 =?us-ascii?Q?kK4pvfmDeHLirHWjGm5TkC8NyaBIE31trSaOL2TTiz1jxRN/TGaBuj58gJnk?=
 =?us-ascii?Q?9WE/6EBbKeijS429sgr4I9pU6JX2uxNylQZC0yYkZqWkEXveh3idaR3x4ZuY?=
 =?us-ascii?Q?E5fShxNs5cfNAPlqJshpdKveJjuoZ/wLSxFrsnau4Ot/mrCIQlxAwgcUqt05?=
 =?us-ascii?Q?fXNPseEZnkgHNB4SPwbxoEoK35oCTXCvAtcekw2BajjA6R9cnDMnj+U7DtZP?=
 =?us-ascii?Q?eEbaijRSwHW0/ghPvTfIvrgtknzdmS64n7Ml+U/tO5rMY6zyf9+woZmICb1r?=
 =?us-ascii?Q?H0IlAbkSoGJv9wKORg6P6d7d+VPQBvlOZsgOIfGGBggaJh+fC01LGp0qm9oN?=
 =?us-ascii?Q?3ZlqNMuV3SwZ4V110PWcaH06HK2q8xV4m+ov9X4UyXM6UV9CMWW4BO8RYJM6?=
 =?us-ascii?Q?3r3wAgVzucfZ/DPpkk1Ylnm7QJJdOqpWaRQ/kHN2Jn/+Ye9k5VW5PmXRM198?=
 =?us-ascii?Q?EXcW67TleOXo8QkKwkRC1S71CxMnQ1GlNU5P3yxYbVH90IIkTGKw4FBlI0UT?=
 =?us-ascii?Q?jjPGLGkB+WIi50QIwbfMsanTXkRq1LOlaqK7BH24FAdTz8dsPr0OB4ReTAWZ?=
 =?us-ascii?Q?abkKFYSXflmIQw8JEXthzwys3ipq0aj6kEGXmWEH89KxjfuTv+N9+rqxwv9S?=
 =?us-ascii?Q?BRoFcpwiCmfKDDi7tc3BiStPE7AGFoEGtnFb8/SZMcCcmuaufdAal6G2Rqcc?=
 =?us-ascii?Q?PkoYbvv3DaJYDG8oBkTE4MBzWTexw3YLPViejp6Y?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8e3f9d7-f6e9-46d5-1517-08dcdd5dc706
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2024 12:30:01.9990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GWmf7luRcKwYWDyURHo8akvsB3cmObxFKfW9vAQ+WlE+DQVBwyN8q8F+JStk7Xq/5Gcs8Ln3Z4onT4PUxw24qw==
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
> Subject: Re: [PATCH 1/3] drm/i915/display: Modify panel_fitting code for =
joiner
>=20
> On Wed, 25 Sep 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > @@ -666,16 +666,16 @@ static int gmch_panel_fitting(struct intel_crtc_s=
tate
> *crtc_state,
> >  	return 0;
> >  }
> >
> > -int intel_panel_fitting(struct intel_crtc_state *crtc_state,
> > -			const struct drm_connector_state *conn_state)
> > +int intel_gch_panel_fitting(struct intel_crtc_state *crtc_state,
> > +			    const struct drm_connector_state *conn_state)
>=20
> What's gch supposed to mean?
> Will replace with gmch.

Thanks and Regards,
Nemesa
>=20
> --
> Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3153C93F279
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 12:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA64C10E396;
	Mon, 29 Jul 2024 10:19:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GU5dbH3q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B5E610E38B
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 10:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722248395; x=1753784395;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s8FkT31Net+ja0NvrUFTfuwj7s5gWsJ8+nq8602Tktg=;
 b=GU5dbH3qticqUWndOl0YiKBQ82Cel/VVFKiB0MLqhdSrCHh9R3iLGEx5
 m6P86r01sJJzrQ2wZQj7V9aSiEwqEddRB8n41ZBqQImz0lctsYa1MWF5p
 0o3fI8X6SXFDWFNmhdI1wKDMjHWiKcSXyOa296m96vmYdJdK7ddasSJTz
 exz9FBJKvYmimFchCiI+8kHgMTDKSl/Ze/5uYlOhpyepxBR3SQTYRdo6Q
 CLs5RNR43zkWV4+eYMqNrqbNJJnwd029k61/Amu0xJn6f3/Mvhq4o3kE+
 kI7bFHrf1+P6yCwsXQr1hy4WHRDEF6luzmx0siCJx/KdSVk7GBgjaqItI A==;
X-CSE-ConnectionGUID: jwhLpZr+TuO/Q1wqUFjeIQ==
X-CSE-MsgGUID: 9dqY0uO9QXWelHdnG2rnCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11147"; a="23854523"
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="23854523"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 03:19:55 -0700
X-CSE-ConnectionGUID: uLS0uj3wSYOnbfEw/xEhzg==
X-CSE-MsgGUID: MfB9r3oaQ1Wr5n1Ro/oXmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="58066562"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 03:19:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 03:19:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 03:19:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 03:19:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VkknBrYnU/1oy1nwHpKAqZVpwdAoNC7KhH0XiSMs3ADSSan6Tt0aFfn2MvwBjayfcP9XpmwPdKoTgUGLFHUMWu9rV9iN9MaAp7pTabcQ21CDyZdvt7EtFHshBNq9bpaSkO4C9ZYkyJwZ5ALozGe5CcPU8dWLm1f8zmryYcuyKF07B3EzHMe6qTw4tHlD+LcORiAvwUiS0qGHmiypxv+POsiEMYkxLaDo5BNzrZnRz8UkIdkz0SfyDa8ykBSnZkCM/vaY8SV8qfUfqeBAi8Dk8/Ey5nDo+2YGmlk/34uya4Iw/B4QOPrQGWtdwGAqsS6698IVuXAPcTjV5Avuw8uYqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KrmQMDnnRw9g6QzVBZUBxMSFvxzW6zKXtQfCPC6bclg=;
 b=tvPcD2C09+/WJcBFSKGoAg2q3oO2q0PpnW57/Sr3X1uq2xrkFRCPMsjIseLzJ3wLIxI49Igr4W0nXvL52XlyANJ7Xeu/52Y4ba3ZLGrdS2yU03YGM1I9t8V6nNsGSLwZbA04QMmfxfYlJKyMnTHD4+SS1ivjIsCNE1L0md+1JC0pO87euD4+qviiCtCz0S5y0xvfWwp/Ve+ESooMnnYV4AiMzDS2ds+fKHBXNxq2n9MJWN8VvNtJX1NfJMiYVvoIEgSIzahu2lgqSGb1AJB8RJyMdS069C2zM8MFIMzAFa56Xzkwm7io+aB1ej2usB/WW1P2iLkD9rVvTcrqFNTZXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB8058.namprd11.prod.outlook.com (2603:10b6:510:24d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.28; Mon, 29 Jul
 2024 10:19:52 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.029; Mon, 29 Jul 2024
 10:19:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro
Thread-Topic: [PATCH] drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro
Thread-Index: AQHa4W1S6+XxRZ70TUWnTJe4q12va7INeEUAgAAF/0A=
Date: Mon, 29 Jul 2024 10:19:52 +0000
Message-ID: <SN7PR11MB6750236145E4EFF483D6A593E3B72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240729040829.3753012-1-suraj.kandpal@intel.com>
 <871q3czfln.fsf@intel.com>
In-Reply-To: <871q3czfln.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB8058:EE_
x-ms-office365-filtering-correlation-id: f3aeb032-f89c-4f2d-b1bd-08dcafb7fc6d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Qie2cOqvXZm3gHx00AmtjdPx4U6qKvGhtyLQJmFLL4Zhp/UgayFAnuloLiFM?=
 =?us-ascii?Q?xbdcrvM9iWqnGztIy3XioKPvVxBji9GQnDE7g06juHmJwiKNmncH6G+c8GYY?=
 =?us-ascii?Q?RfKe+Kmc93uEHm+WMZCAYQkn1qQ2/QRQi4o3xHTVJXeYMemuThmUMThfk9RR?=
 =?us-ascii?Q?EVEXIM5grrHSlhI/H/+4hJB/A4O3tIF2mX3M11yri6fNdaHRCrg9QqtSFyup?=
 =?us-ascii?Q?xS1KiwDdL0sfrWVevKmV+Oxrh3Uk90f6A1ho7NGIvG/5JI+ezEkgujhCM+Ev?=
 =?us-ascii?Q?msJBZ3EvghvqKK6NiuQcBYifxA3RzRh4qxLxTe78mG1UMpY99zH1Azn0wbNa?=
 =?us-ascii?Q?YmXSrFCrXLU0Qn5grnkR35yEqhAjrDIfdqjrsI5c6DZ9UciCkEEChmXVJmtX?=
 =?us-ascii?Q?6nOm41P1S0x6/+ARrnvkyrDrFdOD+kkpMrE48e5h2w7KBUlGwP+VepXUSJQA?=
 =?us-ascii?Q?+CM+NJxzvrUTbrdVCV9293Tgk3ozrus8oEDD2QisHHFo5ZFs7ZCmVsaPpbZE?=
 =?us-ascii?Q?Z4+dvecfqF36XL8oYE+4DhQFvJ/1SIQWVf0XZwfRN+HSAkh69WINeL2mdBbX?=
 =?us-ascii?Q?bQqN5xXhTgkiPheftw8OwfViJKFvJPmZc/fby7U9iUf1RACK8aK/w6/31+dl?=
 =?us-ascii?Q?N04WNqMZe0UfEQpKa7PQcwln9DRaYjNzT8+vDR2IjST584UVeXI3FpByJJ5d?=
 =?us-ascii?Q?NMFthkB2i3YxCPd2qjHfTFfEb4iJ/7JNQY5DvG1gBFwbwBic9SrzCQB0OkPg?=
 =?us-ascii?Q?SoCSB/r4Lhf+6QCrc4E/QFUdkAhxvkPQ7XSPO32Bxul66jdN7mjKGSTOAzD/?=
 =?us-ascii?Q?TDX1yJ14lw09jRQf/1adHk1jFtrs7nyy1cSozKBe3PAbAR30MsXMVi816Qg+?=
 =?us-ascii?Q?5BpRELnj+btiDYt4d0xC1TP9AGwzWbjCDL8NCvvZ5OGjYraksNkbosbrha+3?=
 =?us-ascii?Q?LO/6h72UoCv9yFK6IuYR4yCtC82kwnk+BkAf8jpvFobwlae45L765yaNfklJ?=
 =?us-ascii?Q?FPdvNoEn+BQQ1YAmjCVk7DuPb0EJClet2mwT+sW6faAmCkm0OmFWR+QyyjY+?=
 =?us-ascii?Q?RiL3RDVx2JMYXjKIZmFWfDYwGRRUt0KW9uDD6PvuedqFtTfnm3yfi+Ds/py1?=
 =?us-ascii?Q?hsWDPkHNmbkhhDJchGLAjz8YlX0Y3s6LtFrpPzptjV80h8vodm7tIdREAaEz?=
 =?us-ascii?Q?goDl5UVWnJADh1Eg52BFs0w5ezGH+BtLdgC1TBOpMEa0BzoXIVAw2x140d3J?=
 =?us-ascii?Q?a9NO64YVMlHWZfNKZXjd/9rxw7tj0WzTAedrOmtgyj5AmoRo2AeBPljwDcDs?=
 =?us-ascii?Q?qeINDfqfn2xkH6dQThyH+aHKFkAtONp7j+sYH7CM7bIQe6p0cEwfTITnTJZ6?=
 =?us-ascii?Q?IL1TgNQEwMxcPrmkqIThW5/EM5CsFKpTumblSjXPu8mQF6RFmw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?I5lM8SQe9tSCOtpUvw7zQmM1Z4HrzUgLOPlGH+ZFjNBTACVSOK8jpfa4oWLS?=
 =?us-ascii?Q?BzBUis14Fde/m39PLwXu/kNFM3cSbu2cbQ+Bj7An4DoGCkLE8sE7a5K4y2nm?=
 =?us-ascii?Q?NYuyTu7u/jHF++qEswnARykbUcY4/kEo93i5ejUU1KdD/LMJ+vLq56TxLn+J?=
 =?us-ascii?Q?woQrDbWq4a8RJPLMHQ3Q5VDylNTNJRduhPZ92iXG6OLFHfMX975E3EobBG1p?=
 =?us-ascii?Q?N8mciYGZdk5Sehr6Ihepoq1pod2G1/ZH4EUYw8uQ+ZdfdipHECXlrU2Xr70S?=
 =?us-ascii?Q?zs4QAZvUJ1jYMCiC0kKGC3iGRse3K2o3h+bjn5jP8kKutIunfI3Dp47tbnhH?=
 =?us-ascii?Q?pXSxMj5I0WKm43NTd6IpCRIoL1IsUqOqlySI1yzrMADiAGqwq252abG1I+yL?=
 =?us-ascii?Q?t8iN5tfXHnBJtfsY0Z2AWhL4iDgyA2ayEQHfWkLwxHsaxbJ9KcZ0IemL1ECE?=
 =?us-ascii?Q?0du+U1f8Qgd2hD5EYQlOvw1grpLKrB1VQpGDeffnFtueLQTm7R2zl2nFbZtV?=
 =?us-ascii?Q?+B8ty7jnzHaCcQfSTQPH0jbcyzQmyxbZMWag2oyEiRztXALFuTvvAmTIV0/u?=
 =?us-ascii?Q?8CyN//BPoAJMHXM9Hpb8MF818of91M48BEgFaNiGPRZU9QHoSxTkPQnG9en4?=
 =?us-ascii?Q?1Vqh6Q1sh906BFUID/tBrUat4vkJOURSXbFXB0ZO1eBk+R7xRHlNKGw7kgE9?=
 =?us-ascii?Q?Kn+c7DuOFCVrSrABE5CA22+FTO7vXG/SwJweru2nb3yAbuBEca6ZO5k1Or0w?=
 =?us-ascii?Q?DD6UCYSbtsKoEJ8xzBBLY3tBLngegsvzF4kb6CtyvdT6ILXDL3O0cQaRTsW1?=
 =?us-ascii?Q?n2tyO1rbNUG/TRMV7nIOOIFs4QWCWu2jn8bvdW/BFqKOuN8wXHWvMvUYj6p9?=
 =?us-ascii?Q?KCbfGbn4dAdJrQ3l9ZN0pmv9UIbDKoJRzLuW1T2MoezySiJvuOPjeswL5SIC?=
 =?us-ascii?Q?7BY5DBnmnzNLjxS4gxK8ee74XiViaSKRj6YoR5j088eAzeeY/mOYiMZ3nX0+?=
 =?us-ascii?Q?VxvPqpjbWbvx0aapuTOb362McHYutHQA/4JUw44Q8ePlO6fNwGnLi8J59S+m?=
 =?us-ascii?Q?MTl0JUhDpXLnVjD4RKrG26u+titJLSSfyQq6zONKCyeSzkzYsPxN7wMMzbJi?=
 =?us-ascii?Q?cAgaxLzwYuConztBunlQVsQvfd8v7QK2se7bBPd9UwwyEf0xLILyKVyD3oNb?=
 =?us-ascii?Q?uDhGv1+n12PWu+WsdM0BybdrcCPCE5rnugi9o0sOz9X343ZswKo4o2Db6+Pa?=
 =?us-ascii?Q?1SHcXjSrviWyMoKMgWcX5Gxz4WcK6dHdQN06TX32aWw1uNscp0ZcDhY2qXBJ?=
 =?us-ascii?Q?rkST12kNUiP0qIpU9Mpkkx39Qrs9ji1NEwUrhksvcBXucv+/UkP7BZ4lhNoo?=
 =?us-ascii?Q?4R3J3aGi7JElXXX2jw6pM6Zp/hTWgcaybABmNAwh3o/sm1EFzHII/WbsVc6J?=
 =?us-ascii?Q?13wrSuyM+3/JSEanT3nhJQw651aoOl00NfpwG9jwJ4Pm+4qIU8LcTJJ0oxe2?=
 =?us-ascii?Q?ddVzbpTC5Ygp03Dq5zUsK5FdHl0RoaP0GakAANC58I3IMekGxBxv/r128RpD?=
 =?us-ascii?Q?j2VlCJIGIOXxg0Ovw37opSz8IXHqI797dSkTEbmp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3aeb032-f89c-4f2d-b1bd-08dcafb7fc6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2024 10:19:52.8138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q5sU292mU1QnIdI/0lf6XMOv1DwfRaXBYaPRZbSHrdzTajE09DvEWryYKCbXV0fbikBmEobL78NsMK3dHRFuBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8058
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
> Sent: Monday, July 29, 2024 3:26 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro
>=20
> On Mon, 29 Jul 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Fix HDCP2_STREAM_STATUS macro, it called pipe instead of port never
> > threw a compile error as no one used it.
>=20
> Fixes: ?
>=20

Anyway to find it,
Did a git blame but since one of your patches separated intel_hdcp_regs.h f=
rom i915_regs.h
All I can see is your commit which I don't think is the correct commit to a=
dd.

Regards,
Suraj Kandpal

> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp_regs.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
> > b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
> > index a568a457e532..f590d7f48ba7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
> > @@ -251,7 +251,7 @@
> >  #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
> >  					(TRANS_HDCP(dev_priv) ? \
> >
> TRANS_HDCP2_STREAM_STATUS(trans) : \
> > -					 PIPE_HDCP2_STREAM_STATUS(pipe))
> > +					 PIPE_HDCP2_STREAM_STATUS(port))
> >
> >  #define _PORTA_HDCP2_AUTH_STREAM		0x66F00
> >  #define _PORTB_HDCP2_AUTH_STREAM		0x66F04
>=20
> --
> Jani Nikula, Intel

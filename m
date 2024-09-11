Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 359C0975012
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 12:50:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC6D710E17A;
	Wed, 11 Sep 2024 10:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ngVP5vs4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0784810E17A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 10:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726051831; x=1757587831;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2yeHAibV+Ts7hz7FQ6jlYP3vMKK5Y+TUnLv1QS7eWic=;
 b=ngVP5vs4VWrD6oPB552UdF1sqzR3F4pnygxFPgZfQGlDplqXC7x1pbyb
 ds+Pgk8yatY+7m57jIURVIMSgamBThpKYKp2oM3FULxNcruLt1WawGz6g
 yEjH0U2p38SoD7Mbk0Jz/icL8KugELrwKwCBBNh2B7nPLEBcp1NciPrOn
 Ru5p/EQ7zDqGik/US6Vhz1u4rjva42z6MdjCMGivUPagnZad6I2Dbaaft
 CVqbsIrUC+KaeQCt1BIz2c46O1LmJ8fdjSLtkdqaySew9WlsBJONyC6EZ
 6OHtTNhxIkvCXWKbXAar74rZgok4iX31Hn77co6+E6MidclQjJiDPHRRX g==;
X-CSE-ConnectionGUID: KaaigieLRLCFXP2qWVyTvA==
X-CSE-MsgGUID: nYjwTNYjRp2NJMmuomqTEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24339105"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="24339105"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 03:50:31 -0700
X-CSE-ConnectionGUID: PP1wM/gfQL2ga8BMv4oXtw==
X-CSE-MsgGUID: 8hFlS4m0RZKpwUlcE/TUbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="104791889"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 03:50:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 03:50:30 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 03:50:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 03:50:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 03:50:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hPYPrquvwL3ZxNNhIidn9b0WmduAAvNII/DMlDychfjVROkvyvfoUjpPoBnRVb1mtMJxL21pQGywPPyMpv/tN3L3BdK+tVm/oeI/9Gm2GTP/S0d/5R7ILVuuWdB33xsGFutE5/QiEqpxtanGIh6PWZsIpQYRcin+Nt2cEkl3Ab7o6PmlHt0wQ2u2uJH8PjsAQrPIQ9vh0ZvFY4m0bII7JtUpM08uSVwckT5PJp03N8qGztDWB6uueQFIV3unjyaoAHmQ8VoO9HtIGlEyIpk4bfrlb+Faq1B7iH9ylMfQvDUOmAS7tcew+Ke+kRQmeq/0pKfGpguCw/a7DSh86h9aPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p5/d2t7PsDm1PkEg1q/p3fbSZSOmX/MVQEz+4CseXwo=;
 b=qI5kaEBmvWRAW4En0XNyebRiKPA4yak9dInSKHGAgkt8DEgtirTff+LPrmTsPCRwTmSdrxYjrlSCko4raD+yXI5nYXyVqvQ7Wn7wsVpBCFS8EAi3wxie11lP31A3QJPtNX7QU1awWfgiy0m43k3ph4M3CRcNscQJerICFkdpy9nIDLJlZE3RQjb3SwnuOq9cFEmUU6qntO/+aUQxDw/rILxUPzfsAwU3cyr5Sq4aGTFZjrJBTCp3Y/HjFyjIo6Xkf6yPS5EZM0BGiiQqvZfHFp1VHj/eZiXvz1HEEYsNZ2+Jti2UDSH4rB55b9YM2Yr7CZxF6nsp/T/wdyPRN/RQsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA2PR11MB4779.namprd11.prod.outlook.com (2603:10b6:806:11a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Wed, 11 Sep
 2024 10:50:27 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 10:50:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
Thread-Topic: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
Thread-Index: AQHa87Wmw11FgZA4YkCDyDRQ6wK40LJSh+tg
Date: Wed, 11 Sep 2024 10:50:27 +0000
Message-ID: <SN7PR11MB675039D12D34AF0A87E796AEE39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-6-arun.r.murthy@intel.com>
In-Reply-To: <20240821102349.3961986-6-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA2PR11MB4779:EE_
x-ms-office365-filtering-correlation-id: bf8ce66f-a7a2-4dec-6022-08dcd24f8bf4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?JhJdgkyBxW57roJqjzIpRIMCCxPmGndCA3pgjRav1acVeDHF9O7oLM0GUgm0?=
 =?us-ascii?Q?uVkRgQnlyCeK6wnPVLlKZoe5aew6UOjL7VzV3IHRgKNPekgEn1tXAp7CUboe?=
 =?us-ascii?Q?LtIIt1YaRk501RtHFUYjobKDCYTWP5c+9TbjH5wORtE0pZdsBA84erugIxWI?=
 =?us-ascii?Q?+ZgV6Hq3whJmXcj1iQdFPCDJzO+QGB+hfHsnPFNuS1PvsdUYdLexAjXEMYQP?=
 =?us-ascii?Q?kL0x+qTYOJTVu3I5bF8em4QN26EYeLNdEizp7FZX1wC43qWnnYt3lde+1AZv?=
 =?us-ascii?Q?8QkV0UrXx1d5LtaU3lSAjwJ4nz8fobJj68RXmI8Gi2f1k0WxBQ5w5q2iTWzp?=
 =?us-ascii?Q?Atg4s3VLd5WE1lJ8H/+c1E3TG5Tff/gDxgGvNYlsari93u5hIxKUVM4qSOxZ?=
 =?us-ascii?Q?rFzTPD0K2aV3RFztWZuvu8UENnUv0KQP8Z7L6rttT5YLMwqcpEBs+nwvHqTa?=
 =?us-ascii?Q?w4Pc9PnYNxFm7pZIKlnqZenZI9xyY6SeuGtvVkxfbomXTXCZp16RAk41RulZ?=
 =?us-ascii?Q?K+GELNK2Fm040TjFRBlvPUm1nrbrjWp21q6RnP4oJPEk5QoXN6Q12omYfVah?=
 =?us-ascii?Q?Axf1ZgH1SlqYO9JbOztF3UAsrrFLtcqEbfX53MyAo+PLFde8L1Z87vXuOj/F?=
 =?us-ascii?Q?oajFCvnk+E3BhA13hE6OTrl2qphOw1g266pF0ep9+J0BstUKeL2dRV/TyEQI?=
 =?us-ascii?Q?dbH50Qepe/TzXuswRBeVTDWXaogMMPLBLB9al+9g3QbO/nDtE0OWYl4fxTPJ?=
 =?us-ascii?Q?SQN4h/gyB/HZSoDwk8VtiA2aVmj68nA6JRW/GnlxlAmUlAsApdZv0aQHiuXk?=
 =?us-ascii?Q?HFHdccWMBvw4pdiYHqKt+aMH1o8w0p9Js9uMWCvDD9XtjnUgpLfN/XWb5xFU?=
 =?us-ascii?Q?Dnnmp/m2HYtIyBsacwAvW5SFy/QWc9NkhpXQ4wTZKsbprzKTHQ8k9IwtQQPD?=
 =?us-ascii?Q?fFXTyd6uvG/dsm5oqASMdgMMH2UqnXmq7aX5KhKhk9QC0w/OkVbqSQUtlJ1Q?=
 =?us-ascii?Q?2BjqYSsLFmGeuJNVkDi48XNjqOysjWBqy2xPp/nPAW1hIdcEjXhbQYwGzOG/?=
 =?us-ascii?Q?6IUsbzM1o0qzTYqRv877bCI9zPxbC/IgJ236DfSub2OXkSWJzZ4exdrsCGnV?=
 =?us-ascii?Q?F0vgfyJOLoNCSz9UvLsTlh4Pk0/FHGqtyYK7uMg3lVQTx2GQSF4f7BoJFrwA?=
 =?us-ascii?Q?1UmxEx3/0yvGIZMGV+2EzP/cUFJlVwHhnqRLuHACu7qJiaU2aWdpGTfndFOP?=
 =?us-ascii?Q?8aMg5cIT55TH8wRQRedu8AJMX8oUbvwz+VMTjNuHNig0XPVFpCK18wq5jCuh?=
 =?us-ascii?Q?vDRQ2PdEeajKUh+B7LcL0Cfb0dtc37JNRkbyQQRAASKzGsBBJilGc9rTRsKV?=
 =?us-ascii?Q?7CF3TPjgyh2yOIgcATGjT5RzlkaaLoyBheXSplIeCx2Vl+T2eg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xaQDgM5kTiYD/nVHASPHlNbKDkCKiPKpZNTnNAmjdkzf/uJZOoM9uhqIkkNI?=
 =?us-ascii?Q?ZfD9iyCUklCYFkrkCLHft0yGJXob0gnZ93CqIyN5xYpnKytbrCzxA9CpFPet?=
 =?us-ascii?Q?13X09IH+XNsnMVCmXPP5mV/l+4s+lQD6ReuZZ9B471LKlG38ljhd5ZP/yAoS?=
 =?us-ascii?Q?L2p18IVaqMgHLAmnlcLfExVAplK7J0fELSQzYgabN/LAR4DRpQG+ixZZnwaZ?=
 =?us-ascii?Q?376dMpW3tUQc9AiiDpkNz/ZyFJf4KC96Uv63Z5AWZcXY3b9W7lJQ08hsHk7V?=
 =?us-ascii?Q?B/Q0vVBJtWnVwhX8JUu17JAiBVtVgRQSWrpv+JEPOyp78x8M6G/n/EmtHjt5?=
 =?us-ascii?Q?A6d4j+N+aZ+BmAmflYEkCrX08/smyp9ds6KQFwuHSSmjo9Kpr567O5Cp9zV7?=
 =?us-ascii?Q?rYZOnskeV5N/IGx8FUDmvQeVS5oZfDytl4GDte/YkFywdiXBL1BoGxwK3wCt?=
 =?us-ascii?Q?PKYPcmHoSWyh04KBxriuGT7I79btdNDiUDjYF4ybCb8k1BvoFwghJ6O6dORf?=
 =?us-ascii?Q?kxuV3cCNJ4/AxxWnssMT0lFpOVj1UJQ1q3puu1I+M2nzoJDKRy5ngA2XOTlV?=
 =?us-ascii?Q?WbLe7ZANtjqdlkPUjBCA5fyqBHs/S7bH9JyOY1xYD4uy9+oZzA6jRuA4PVxR?=
 =?us-ascii?Q?WI+kIMMobufL6Gr3JCaJvO33ZtDpEn6yi90PNan/Wsm1Nwflx6S8JkcYFzFh?=
 =?us-ascii?Q?DCLOP3oyfCUUkLCPfSryvW3S97HoqakeyElcLBMxHempgPq9mvyqQOVcHyEw?=
 =?us-ascii?Q?vBxjZfLVNz0V+se58dj2Tb/oL/WAImmMhvs9Q64DbjitKlITBqOhLh9V7nyL?=
 =?us-ascii?Q?x6VP1mf+wiQlEifzCiTJPx7dhIOPc+jOtV2A4jluJFpTiuKo/5ZV80T5Icmw?=
 =?us-ascii?Q?5O634+vaVoAaWA+pNjrtgX8RZ5sAVOKzHkS8bBqbKb1HJZErjMWOPTi6vSLj?=
 =?us-ascii?Q?tpMLjz90FOaHgonlTKnKws4kKKEVh2m4Bmlh31qS8GXEZL6a9FUfEhTnE6VU?=
 =?us-ascii?Q?EjNlAxUZBvq41PQ86MDb+b2KNs2sH5r1+Az35Tq+/u4o7C5ExXlA5fDbNH8w?=
 =?us-ascii?Q?di+yWhZ2nkQ54LtCHuzAunM1F+Sucm1YN19bGFpRZAZ3gpSV7MA6FGr3htZj?=
 =?us-ascii?Q?D8kti+nnRrSrJnOivqtv2o/5fshFD3lSTx9g44FunHxODscK3D1lz7iT1/E8?=
 =?us-ascii?Q?0ok+WcMLlqOMudGJpOpjutbfqPu45Qg0U+U8IEuFyL9JCbfWRnTkF4e7wqo8?=
 =?us-ascii?Q?F/nBXrTglmZYAWvg2Bf/YOTKiDrMhjMdtb690cLmJQV/5BVUkGOY9zN4NTqn?=
 =?us-ascii?Q?6N0pzlfoEszujdQQlXKR02MZm7QZG5l4y/0wqIl8chvz3Ef7Iz1clxCQtyyj?=
 =?us-ascii?Q?3WOsZqlxJqMsA7lyVE8fzGzsh3tQZnbyez2L6jby7C5VC/hHsbLzxah4FFr6?=
 =?us-ascii?Q?DhhvibJtdFv2VkkyO/zbfQHDqoU16Kip5DEcHZwr2bEYOZkGSiFuudVFND8t?=
 =?us-ascii?Q?A7nG9Pn7C17oaaBjDFvRMZmLtyI+K9iIrw/Gr/X0PK6mpJmkpCCEBDrFyIn2?=
 =?us-ascii?Q?/56MMkrf2eF4YcUmJbCE4iyUKkkegNm3jzrmf62W?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf8ce66f-a7a2-4dec-6022-08dcd24f8bf4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 10:50:27.1675 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: od/GsOPLyfi+j3QBub7Bee/ezQyuB7kfIkjLpq/u93fdt7YbnW2pL78oPkqxm9MGm5AgEz5SOvlrc8GNkOeepg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4779
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ar=
un R
> Murthy
> Sent: Wednesday, August 21, 2024 3:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
> Display LNL+

Drm/i915/histogram should suffice
Lets not use LNL+ use Display 20+

>=20
> In LNL+, histogram/IE data and index registers are added which was includ=
ed in

Same here

> the control registers in the legacy platforms. The new registers are used=
 for
> reading histogram and writing the IET LUT data.
>=20
> v2: Removed duplicate code (Jani)
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_histogram.c    | 138 ++++++++++++------
>  .../gpu/drm/i915/display/intel_histogram.h    |  25 ++++
>  2 files changed, 122 insertions(+), 41 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 189f7ccd6df8..9c31a7d83362 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -26,38 +26,41 @@ struct intel_histogram {
>  	u32 bindata[HISTOGRAM_BIN_COUNT];
>  };
>=20
> -static void intel_histogram_handle_int_work(struct work_struct *work)
> +static void intel_histogram_read_data(struct intel_histogram
> +*histogram)
>  {
> -	struct intel_histogram *histogram =3D container_of(work,
> -		struct intel_histogram, handle_histogram_int_work.work);
>  	struct drm_i915_private *i915 =3D histogram->i915;
>  	struct intel_crtc *intel_crtc =3D histogram->crtc;
> -	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
>  	u32 dpstbin;
>  	int i, try =3D 0;
>=20
> -	/* Wa: 14014889975 */
> -	if (IS_DISPLAY_VER(i915, 12, 13))

Looks messy will be cleaner when you move WA to 1 function as mentioned in =
previous patch review

> +retry:
> +	if (DISPLAY_VER(i915) >=3D 20) {
> +		/* Set index to zero */
> +		intel_de_rmw(i915, DPST_HIST_INDEX(intel_crtc->pipe),
> +			     DPST_HIST_BIN_INDEX_MASK,
> DPST_HIST_BIN_INDEX(0));
> +	} else {
>  		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> -			     DPST_CTL_RESTORE, 0);
> +			     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK, 0);
> +	}
>=20
> -	/*
> -	 * TODO: PSR to be exited while reading the Histogram data
> -	 * Set DPST_CTL Bin Reg function select to TC
> -	 * Set DPST_CTL Bin Register Index to 0
> -	 */
> -retry:
> -	intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK,
> 0);
>  	for (i =3D 0; i < HISTOGRAM_BIN_COUNT; i++) {
> -		dpstbin =3D intel_de_read(i915, DPST_BIN(intel_crtc->pipe));
> +		dpstbin =3D intel_de_read(i915, DPST_HIST_BIN(intel_crtc->pipe));
>  		if (dpstbin & DPST_BIN_BUSY) {
>  			/*
>  			 * If DPST_BIN busy bit is set, then set the
>  			 * DPST_CTL bin reg index to 0 and proceed
>  			 * from beginning.
>  			 */
> -			if (try++ >=3D 5) {
> +			if (DISPLAY_VER(i915) >=3D 20) {
> +				intel_de_rmw(i915,
> DPST_HIST_INDEX(intel_crtc->pipe),
> +					     DPST_HIST_BIN_INDEX_MASK,
> +					     DPST_HIST_BIN_INDEX(0));
> +			} else {
> +				intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> +					     DPST_CTL_BIN_REG_MASK, 0);
> +			}
> +
> +			if (try++ =3D=3D 5) {
>  				drm_err(&i915->drm,
>  					"Histogram block is busy, failed to
> read\n");
>  				intel_de_rmw(i915, DPST_GUARD(intel_crtc-
> >pipe), @@ -66,10 +69,37 @@ static void
> intel_histogram_handle_int_work(struct work_struct *work)
>  			}
>  			goto retry;
>  		}
> -		histogram->bindata[i] =3D dpstbin & DPST_BIN_DATA_MASK;
> +		histogram->bindata[i] =3D dpstbin & DPST_HIST_BIN_DATA_MASK;
>  		drm_dbg_atomic(&i915->drm, "Histogram[%d]=3D%x\n",
>  			       i, histogram->bindata[i]);
>  	}
> +}
> +
> +static void intel_histogram_get_data(struct intel_histogram *histogram)
> +{
> +
> +	/*
> +	 * TODO: PSR to be exited while reading the Histogram data
> +	 * Set DPST_CTL Bin Reg function select to TC
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +	intel_histogram_read_data(histogram);
> +}

Maybe add read data and get data at the first patch will make this patch mu=
ch more
Cleaner and pleasing shouldn't really have any effect on build or functiona=
lity.

> +
> +static void intel_histogram_handle_int_work(struct work_struct *work) {
> +	struct intel_histogram *histogram =3D container_of(work,
> +		struct intel_histogram, handle_histogram_int_work.work);
> +	struct drm_i915_private *i915 =3D histogram->i915;
> +	struct intel_crtc *intel_crtc =3D histogram->crtc;
> +	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
> +
> +	/* Wa: 14014889975 */
> +	if (IS_DISPLAY_VER(i915, 12, 13))
> +		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> +			     DPST_CTL_RESTORE, 0);
> +
> +	intel_histogram_get_data(histogram);
>=20
>  	drm_property_replace_global_blob(&i915->drm,
>  			&intel_crtc->config->histogram,
> @@ -161,12 +191,19 @@ static int intel_histogram_enable(struct intel_crtc
> *intel_crtc)
>  	 * enable DPST_CTL Histogram mode
>  	 * Clear DPST_CTL Bin Reg function select to TC
>  	 */
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> -		     DPST_CTL_HIST_MODE |
> DPST_CTL_IE_TABLE_VALUE_FORMAT,
> -		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> -		     DPST_CTL_HIST_MODE_HSV |
> -		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> +	if (DISPLAY_VER(i915) >=3D 20)
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE,
> +			     DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE_HSV);
> +	else
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE |
> DPST_CTL_IE_TABLE_VALUE_FORMAT,
> +			     DPST_CTL_BIN_REG_FUNC_TC |
> DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE_HSV |
> +			     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
>=20
>  	/* Re-Visit: check if wait for one vblank is required */
>  	drm_crtc_wait_one_vblank(&intel_crtc->base);
> @@ -252,24 +289,43 @@ int intel_histogram_set_iet_lut(struct intel_crtc
> *intel_crtc, u32 *data)
>  	 * Set DPST_CTL Bin Reg function select to IE
>  	 * Set DPST_CTL Bin Register Index to 0
>  	 */
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK,
> -		     DPST_CTL_BIN_REG_FUNC_IE | DPST_CTL_BIN_REG_CLEAR);
> -
> -	for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> -		intel_de_rmw(i915, DPST_BIN(pipe),
> -			     DPST_BIN_DATA_MASK, data[i]);
> -		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n", i, data[i]);
> +	if (DISPLAY_VER(i915) >=3D 20) {
> +		/* Set index to zero */
> +		intel_de_rmw(i915, DPST_IE_INDEX(pipe),
> +			     DPST_IE_BIN_INDEX_MASK, DPST_IE_BIN_INDEX(0));
> +		for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> +			intel_de_rmw(i915, DPST_IE_BIN(pipe),
> +				     DPST_IE_BIN_DATA_MASK,
> +				     DPST_IE_BIN_DATA(data[i]));
> +			drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n",
> +				       i, data[i]);
> +		}
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_ENHANCEMENT_MODE_MASK |
> +			     DPST_CTL_IE_MODI_TABLE_EN,
> +			     DPST_CTL_EN_MULTIPLICATIVE |
> +			     DPST_CTL_IE_MODI_TABLE_EN);
> +	} else {
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK,
> +			     DPST_CTL_BIN_REG_FUNC_IE |
> DPST_CTL_BIN_REG_CLEAR);
> +		for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> +			intel_de_rmw(i915, DPST_BIN(pipe),
> +				     DPST_BIN_DATA_MASK, data[i]);
> +			drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n",
> +				       i, data[i]);
> +		}
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_ENHANCEMENT_MODE_MASK |
> +			     DPST_CTL_IE_MODI_TABLE_EN,
> +			     DPST_CTL_EN_MULTIPLICATIVE |
> +			     DPST_CTL_IE_MODI_TABLE_EN);
> +
> +		/* Once IE is applied, change DPST CTL to TC */
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_BIN_REG_FUNC_SEL,
> +			     DPST_CTL_BIN_REG_FUNC_TC);
>  	}
> -
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_ENHANCEMENT_MODE_MASK |
> DPST_CTL_IE_MODI_TABLE_EN,
> -		     DPST_CTL_EN_MULTIPLICATIVE |
> DPST_CTL_IE_MODI_TABLE_EN);
> -
> -	/* Once IE is applied, change DPST CTL to TC */
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL,
> DPST_CTL_BIN_REG_FUNC_TC);
> -
>  	return 0;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h
> b/drivers/gpu/drm/i915/display/intel_histogram.h
> index 5e24d3c5c28b..436e0b8e9ffd 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -48,8 +48,33 @@ enum pipe;
>  #define _DPST_BIN_B					0x491C4
>  #define DPST_BIN(pipe)					_MMIO_PIPE(pipe,
> _DPST_BIN_A, _DPST_BIN_B)
>  #define DPST_BIN_DATA_MASK				REG_GENMASK(23, 0)
> +#define DPST_BIN_DATA
> 	REG_FIELD_PREP(DPST_BIN_DATA_MASK, val)
>  #define DPST_BIN_BUSY					REG_BIT(31)
>=20
> +#define _DPST_HIST_INDEX_A				0x490D8
> +#define _DPST_HIST_INDEX_B				0x491D8
> +#define DPST_HIST_INDEX(pipe)
> 	_MMIO_PIPE(pipe, _DPST_HIST_INDEX_A, _DPST_HIST_INDEX_B)
> +#define DPST_HIST_BIN_INDEX_MASK			REG_GENMASK(4, 0)
> +#define DPST_HIST_BIN_INDEX(val)
> 	REG_FIELD_PREP(DPST_HIST_BIN_INDEX_MASK, val)
> +
> +#define _DPST_HIST_BIN_A				0x490C4
> +#define _DPST_HIST_BIN_B				0x491C4
> +#define DPST_HIST_BIN(pipe)				_MMIO_PIPE(pipe,
> _DPST_HIST_BIN_A, _DPST_HIST_BIN_B)
> +#define DPST_HIST_BIN_BUSY				REG_BIT(31)
> +#define DPST_HIST_BIN_DATA_MASK
> 	REG_GENMASK(30, 0)
> +
> +#define _DPST_IE_BIN_A					0x490CC
> +#define _DPST_IE_BIN_B					0x491CC
> +#define DPST_IE_BIN(pipe)				_MMIO_PIPE(pipe,
> _DPST_IE_BIN_A, _DPST_IE_BIN_B)
> +#define	DPST_IE_BIN_DATA_MASK
> 	REG_GENMASK(9, 0)
> +#define DPST_IE_BIN_DATA(val)
> 	REG_FIELD_PREP(DPST_IE_BIN_DATA_MASK, val)
> +
> +#define _DPST_IE_INDEX_A				0x490DC
> +#define _DPST_IE_INDEX_B				0x491DC
> +#define DPST_IE_INDEX(pipe)				_MMIO_PIPE(pipe,
> _DPST_IE_INDEX_A, _DPST_IE_INDEX_B)
> +#define DPST_IE_BIN_INDEX_MASK
> 	REG_GENMASK(6, 0)
> +#define DPST_IE_BIN_INDEX(val)
> 	REG_FIELD_PREP(DPST_IE_BIN_INDEX_MASK, val)
> +

One more reason registers should have its own file=20

Regards,
Suraj Kandpal

>  #define INTEL_HISTOGRAM_PIPEA			0x90000000
>  #define INTEL_HISTOGRAM_PIPEB			0x90000002
>  #define INTEL_HISTOGRAM_EVENT(pipe)		PIPE(pipe, \
> --
> 2.25.1


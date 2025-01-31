Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F96A23973
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 07:10:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D0210E083;
	Fri, 31 Jan 2025 06:10:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SiiSUJ30";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A55010E083;
 Fri, 31 Jan 2025 06:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738303829; x=1769839829;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Qq8ZJ8jKnYpdEpg5URJtc8+TEx25fqI3+5Hc+uMI9mM=;
 b=SiiSUJ30j2Ge5XtE9uDs967/9acf380ADMLPlu39wbZov/+NKwQEkYtr
 4joJMBVKEqYaBOp5/GLSxVBtGTVGFfe0c026otZZkH+Rj0npfw5QysoJI
 sW6wIov5PfRHJDsxnOzSTyV4+7MXZjn0hnaRWVhaqXnNrZXjonpcc252v
 IGrCEFUqpx98RwW4juNNC1IHenv9TwQM7ZzUc+8e5HlMKwqRbyH7adagr
 mz6UwmfiXIDyX9KhAMSfW59ETUMgADIX45MPyuCPi1N+qiBBa/o87oejv
 rG+vWVv85DaC0E29EDLOiQMAFVt2u13ddVAdiKqnZPxbL+TkTuO+RD9Ei g==;
X-CSE-ConnectionGUID: Gdbkh1kNTM+UJUn3pSWtpA==
X-CSE-MsgGUID: c08P3Z1QQ1q91Eu6S1Um3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38574998"
X-IronPort-AV: E=Sophos;i="6.13,247,1732608000"; d="scan'208";a="38574998"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 22:10:28 -0800
X-CSE-ConnectionGUID: H2ITAsgTShGZD6SfbQVnuA==
X-CSE-MsgGUID: 7kSD5hmARXyavBP2lAE80Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,247,1732608000"; d="scan'208";a="109387659"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 22:10:27 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 22:10:27 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 22:10:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 22:10:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vWXX9OnKCwb/AIrLJ8uqujx7zpWUObb+1YRNxrZTryo50m8jDY1LrbdeUOE/FxvWXB9I+D0m/6w4Yrfg8rFVUgWkzo1Rs81jHPblfWkq/bsRu+ldbl/VsC/mWX85F491/WdqzWOsOCHcHG3tGsSamKOuEl4HApzFxB4JRvAxna6ORVazZ9yEhyMI+zRbGcrs3nkEBRvPnNz1DJfdWk+AuTeZkps1mZGPcSubXmPT27wsMYNqD6QyPXmUU8Y9BHX2Atpy4vaFoHQ+gk6z5hwjSpzqH3PgGeS01v/X77sV0EBDw0zu0YwIP35pcCJosQq2GL/MimCQHrSLaSTYQq6ztg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Db+6E/8KIBaMJgX6M2r8PAIk8fSSf2KXa1brWFgXsCk=;
 b=pH+6l9mEgrghxra4mn7iUOMx6EoK+iPbe42qM/tOJNNBeGIjRKC2XKdQWwBOHtNBGdxgc2p1S7cefYLDqUkeFKi3BwxwkKxh3p2fe4bewe4egpYVs/AV5hCIWwhTy5aqiLUwphjm/qLK2lYt/k8P7U3ReKJ8kcJ+No1QoHlMi2FBEsRdhirf07d0l73LnCPu4s5QEDb9YwMeokyWY6Gd/q3EoXmlxQ9pFQ0qpPnDGg3zpYXAT6N9f0CmaNx2U07j4LJdEUjk9I2y3eY988fBwBDaOK+qnSKJhYLhufk1Q7OvX7azPWA2SBlfOPk7diVyRtnXSgCBN5mwY3/7Y0UQTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.20; Fri, 31 Jan
 2025 06:10:25 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%3]) with mapi id 15.20.8398.018; Fri, 31 Jan 2025
 06:10:25 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "david.laight.linux@gmail.com" <david.laight.linux@gmail.com>,
 "naresh.kamboju@linaro.org" <naresh.kamboju@linaro.org>
Subject: RE: [PATCH] drm/i915/dp: Return min bpc supported by source instead
 of 0
Thread-Topic: [PATCH] drm/i915/dp: Return min bpc supported by source instead
 of 0
Thread-Index: AQHbc5gmI1Z+07et6km+n2sJiVW5ibMwYpAg
Date: Fri, 31 Jan 2025 06:10:25 +0000
Message-ID: <SJ1PR11MB6129AAFC239494D560599632B9E82@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250131041342.3086716-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250131041342.3086716-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB5899:EE_
x-ms-office365-filtering-correlation-id: 7f12aa69-99e5-43a7-dde2-08dd41bdf3c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?7Fml1pHUJmU3bIPzUe+mikuA74vKvBlXI6XR6tqeNt5HzH8aGS29zb1LiBYy?=
 =?us-ascii?Q?Eh0AQ3Tpjnh33/2I5hovCRMdcpT8FuFQVI8knK9IoPDLmJuucn+Cro6iYBVn?=
 =?us-ascii?Q?S6+q2+bReGQdvQIQRJQr/PKr+JXuStrOvY+C3GY9bALIfNMb/T3a93C6pAfu?=
 =?us-ascii?Q?jMGmiqXjKK9rQpY/TEqV7Qrk5IaUZkTv/UifH20XK5kd8wsd5mpGM799aNPI?=
 =?us-ascii?Q?GKBHW7rMCke4H9ZzRgdCTulAy14PfeEf7Gtmu41Nfj/wiP5cmjdHRxOm66J2?=
 =?us-ascii?Q?VxCpyb0ikkmUnEoKatZGZjiZd2/0DVct/HuQWN+8LZdl3tByNWquagBR4CqQ?=
 =?us-ascii?Q?5EEPZg1iOS31PK8cBx59fa36TtnpzpdeGiAX0wlXZDAtZDSYNgvw6SspAfKq?=
 =?us-ascii?Q?18Y04/eFx7YRHfwSNNlOy3LfU2QTjJrfF9EoesqoqfyLqKGiAmIw7WwGvIly?=
 =?us-ascii?Q?lEuy4FTAFyfE5l96xY9PNlOSTig0YF1spHp9OdeW0tv6VoL5sEVVDGs1X3Ao?=
 =?us-ascii?Q?FBEDIzcVFaBZLvjbyV9Xi/JAdsMv7gg9FsC+lKCS8NPzrvR3ep+T084OnvxX?=
 =?us-ascii?Q?U0/KGNn+fCoj6GQV+48NMQcQmJRxZB9SBYbmqYIdSsBKZuKVoDSDCrqkfi0Z?=
 =?us-ascii?Q?0BwRnG5oCvNygnTUSuQ1kPgbYO+PGJG9fFm6DwgmajF0YQjbDuriVw3SdeFG?=
 =?us-ascii?Q?sEQtdSbZiZTRcRDt4mzX/+exzdOn7IZ+WfeUVDrz7sWvvAw8B+HtoAeu7s30?=
 =?us-ascii?Q?lZ+2I31oS2sA7ZPq8vJAyB/NkpmetvHlKxkrH024YDYcUKkc85LPbBVCmF7g?=
 =?us-ascii?Q?GnENLQKy/EKgrWgZUkM3tvUlLDYePRCya/i8cPFs2XgpjM2owW/EwDUpp1hk?=
 =?us-ascii?Q?pK5x91a6jlSJovJB7m7ObLtr5C9yrJxITrfHndGUKL/d855rZ3ywVeWkaH1R?=
 =?us-ascii?Q?BhHUjjDbeL+WhTqgb9TkeN9pC54kiPtwH3ZMwtmAkEwjPH98qGbyw3Ehne/R?=
 =?us-ascii?Q?qWf3SI4R9QUsB28S2X3WO3oJmpJF0OWrnjy2XL3nIU2O5ghrmOTm5bgwcqC/?=
 =?us-ascii?Q?N3i4EwBki21oyaAGgr+Zp2bXO1Xbyb4zhurm9GzM9550Vyl+9vgmueSBEwtK?=
 =?us-ascii?Q?/dYRxSFMCz/deipC5Q9JMJxdK6F1G3w3DI5AnTmMki6RMC9oN53nfYrT5oM4?=
 =?us-ascii?Q?MLkBDHF82ciWKWOunI1oJqw8C6AWA9vc/OjwYxSlXDkd5MpKCN0wCLjr7jDu?=
 =?us-ascii?Q?Z9SZyUwgrp2QTT5YOJ7MOpmddnzAYngII6YO8bEp/8Zd8vtSzQwhrnrsokX0?=
 =?us-ascii?Q?affNTRNxKgGcdiLGM4Bgy+aas81xiT69n4sli0tTWkIZboMzTqrGt1OEc1LO?=
 =?us-ascii?Q?wBHkMc4anguNLysBWr+MZKHl0uS1ilYV5/XGicWXU2JGJoCI9w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cyTOEcnB9fY5SZy65MqhSjutlkcvJkJUBjM7GkB4wgfq9oa9iXIzEqoEnEWx?=
 =?us-ascii?Q?6DV3su49o8TKwLTnliDzjUUIJv6s1rVqGQNI+Xn0UG3m15HHhDJhyEHAVrQI?=
 =?us-ascii?Q?nP7GVkWR7red9elk9eqooBLL6b1ZiMx+EJW/mMOQFKlj7kB6VeRyDoouE8D+?=
 =?us-ascii?Q?u9gAAc19Fl8b7eqWnlktybBTg7Yy/mzPHB0NbA4rPBtvyg45zKxfKVvxNO6a?=
 =?us-ascii?Q?9A07MUeHfBxcILA8bkrnRKDdLddRgF9zcabcoHM+JGY9r5vaKgwiJhcBYms7?=
 =?us-ascii?Q?c5GaSZiodX67HYLYkZRX/yWaIh235DQzYiMtYl41x5wOlUO4Cv29tpWVmYo/?=
 =?us-ascii?Q?VMLPvfazQJp4dNhoo7LShva6HzlYbyUREw4rYsXKVHNAxlf8Lv1bK+JX8Uc7?=
 =?us-ascii?Q?GV0zC0ZrcTArB4j4ikAx5ChyA2ih0fh4koXc84woIXfWqfmE8xhgPgHWM18y?=
 =?us-ascii?Q?IaGEzWWmj5dyEBR29nzQOBexvl+CdyluwjIpS3xwEURHPw8k7ZzNxESxG58m?=
 =?us-ascii?Q?sw7PySDoh35Pt5VIEifGgao79sKoXUXyZ3T+hw3gCSF6cUo2ZMq42lc9/yot?=
 =?us-ascii?Q?KzKR9g6b2a0pU6DsItP3JM2DPAmyTX6/NhEr+gmelfNQGLZv9dGEWpqL6itl?=
 =?us-ascii?Q?d4lJTr3cLjRgNWMWK3oCL2Gtpwe0y5JcOsPZncxvJp9JIHvffxqOv2x46Tow?=
 =?us-ascii?Q?7roBzS9BvnfBrSjlrmTZ3S2BCYZrA5+sWeBRvc/PHHo6H9BEcnz7dO65BQOi?=
 =?us-ascii?Q?Dt1UqjV5GmRI+30JaH0feKg7DOTdI3gDFiAnF+pBRFo3Znx0rx2qRfxGTqYg?=
 =?us-ascii?Q?9n6QNgtLaRxQfmZmgWCtzoRvJC0WlOQyQxVndnm7JE4J+DH69bTAxyeiKLZj?=
 =?us-ascii?Q?xkIHSiDVH82FdrvTv7yJgpCMpNn2qAK1HaAizuZLoovjpgvLX8JTZeT+DSAG?=
 =?us-ascii?Q?7EiyukxJSjqVhhyTk7P7saUZ88kAtq0YeOC7hs08Gcpy38mIuoEyyDGC1Tj2?=
 =?us-ascii?Q?RG07yEMOqZIvWyS699fBpm+PU/NzfLgPuhtxSIYiXOXzbi2DQQOK9GQ60jYQ?=
 =?us-ascii?Q?5O5l8MWXi0VdtL8Rh2VQF/PsAbMVGuQOq91Hux2q0l+8ucSF/9I9Qz4tyWDo?=
 =?us-ascii?Q?4RHvHVQ1XfkaD76q/jQFf4vSY22gfEI3MyTkaIAuspbTaQ2lP0REHL/w5NXn?=
 =?us-ascii?Q?wAjdpISSN3b5/1P787Xc5+PnjeDvONJjGT1JIppLIDSfXPFECiLO323pNUGF?=
 =?us-ascii?Q?U3CXlUP2kaLgnn64Vi3huwhgGhf4tdG2UqLAkM/QqqY00t2+tYN4WzUvfBhj?=
 =?us-ascii?Q?faVa1ojB289NeH0KRUG927dCuvd7f5FmFf8IhuS6/Tt24NcUieMSWr5/oZOP?=
 =?us-ascii?Q?2l2rNIYW9nqDWANHCtmn7tM3lt1yCAYjqTfxRdajlRnXhLr0NMD2GU0hbgVX?=
 =?us-ascii?Q?jwWCu58BhbhB0XXer8ONXHfHtiM08ZEPLPrePbzbelvrMqi2cRhQ5styvRiY?=
 =?us-ascii?Q?NPtCZ4hNvELUCrHhFXHJeXJaKrpTTpwmObe71PoCpmnLqE7/tjqXP5Mhs7sf?=
 =?us-ascii?Q?I1XcHv+CP3ptWWf92udMbNWN19PYpRyuhpsDmNdbnaIbnD2IuS7/NPwj2UAQ?=
 =?us-ascii?Q?mw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f12aa69-99e5-43a7-dde2-08dd41bdf3c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2025 06:10:25.0869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KLDoJOjIdYtAjD0m9Ia/MRORwZO6fufKsUHCxCX1zuT3zMJuXNZvMxYhxb5i+ancQGsHgpZGY/rOEj8DuU585+QUGves98S15VOI5ktLP/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5899
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Anki=
t
> Nautiyal
> Sent: Friday, January 31, 2025 9:44 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; Kandpal, Suraj <suraj.kandpal@intel.com>=
;
> Vivi, Rodrigo <rodrigo.vivi@intel.com>; david.laight.linux@gmail.com;
> naresh.kamboju@linaro.org
> Subject: [PATCH] drm/i915/dp: Return min bpc supported by source instead
> of 0
>=20
> Currently, intel_dp_dsc_max_src_input_bpc can return 0 for platforms not
> supporting DSC, which could theoretically cause issues in clamp() due to =
a
> low limit being greater than the high limit.
>=20
> Instead, return the minimum bpc supported by the source to prevent such
> issues.
>=20
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> Closes:
> https://lore.kernel.org/all/CA+G9fYtNfM399_=3D_ff81zeRJv=3D0+z7oFJfPGmJgT=
p6y
> rJmU+1w@mail.gmail.com/
> Fixes: 160672b86b0d ("drm/i915/dp: Use clamp for pipe_bpp limits with
> DSC")
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Solves the build issue for linux-next.

Tested-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>



> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 80214a559013..d28abf081844 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1791,7 +1791,7 @@ int intel_dp_dsc_max_src_input_bpc(struct
> intel_display *display)
>  	if (DISPLAY_VER(display) =3D=3D 11)
>  		return 10;
>=20
> -	return 0;
> +	return intel_dp_dsc_min_src_input_bpc();
>  }
>=20
>  int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector=
,
> --
> 2.45.2


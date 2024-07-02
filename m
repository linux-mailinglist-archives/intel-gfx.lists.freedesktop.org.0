Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA859237C3
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 10:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D6210E56F;
	Tue,  2 Jul 2024 08:42:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GTBdmSOU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78E1610E56F
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2024 08:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719909768; x=1751445768;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w6qdimriuEC6njwAexJiUhPTlFPBmJirgMLEfXd9j6s=;
 b=GTBdmSOUvFMMZpJnbidRnt2bmYq9Y1LqOmc4qWw7Kmuv1kFeyt+riXaH
 z0AmelTz+BHNRcSY50c/mmgzh0d5wvSdBw68VnMciLTjbs7Veb9iQNPsd
 kwwjqrLKG0u1V4a6rDJA2C9PC/VBXG2A/DHgFls8xtsgfee+asIAgTduD
 0rEEmCEl3v/UwTvgIELgw3FQbXdg0zIZ7/wcGi+MnpZp65UUTYhCoGiLS
 p/GOi3g/08tIN6uerrZMol4i+hpzreIXcD3JsSlHQbiQxbSXv3iG5klz0
 cPtWk4hGSyJhew8euDkW9KmcpQ7uH1gaeoKxC1aT4Fn3e2pei3WvBskZj A==;
X-CSE-ConnectionGUID: sthKDdilTvKqfzvazNjhHw==
X-CSE-MsgGUID: eBdvTOzvSYuxVr7pX4HAjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="20883912"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="20883912"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 01:42:47 -0700
X-CSE-ConnectionGUID: qk7j5s6RTFmIC5EWgQysFQ==
X-CSE-MsgGUID: VHeOuAWVSSSPefdPvtp0tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="45717568"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jul 2024 01:42:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 2 Jul 2024 01:42:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 2 Jul 2024 01:42:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 2 Jul 2024 01:42:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yc4nEeY1XbDHgFd46XdRso+hel41KjK73o7opb3TxtMWJiyAZbO3GOELK5o9iVsF0M6QVG6HMagcP7gnb4ad1eJx7T+RE6Iu/eSgTLxiZFujelEezAzTKVfakJbWebewZ3TavROnCCs6cIRCh1ju+lAtVEGxDbiCveIeI+YrXtw6/+rp/fyaetDmK7Bjw+tX1v0DlpoUvCYeDJULJQxQvi9LvU0+/3D2xnvCl315Pm6r3CwLdrE4vwsTPQZxpqhtTiYIWiIS3WB8kI2SXuf9F4neXFxzr1zvtxOg+yi3axkWFQWfSKfpSnmExAXzPQGqroiYp5XEZU+HDyqimSa3jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EmTUi0OL/jv/djimmNFo93jf6d6gCV9Tlc64C111ZCs=;
 b=Oq5oDv2+VdsMUDFnz4GQ0m2lQOUL2xlunm0pKX6HnikrlByslv2ohRglnraR/6VLi49rGAZtjWrBCU4boL2+Saz7eBgJdifw9TXITTrk34qLqo1Pkmja5a6KceVOdxEqYmULIUmwkmiOwT12b7zcfN7Cj5ZeDDXhpZrS0siq4t7LNj45Rne6l6eRLfl1o1/wrqW8pRbCh6RhQT7ij0Jx3JThWuAb4DY7q6JPssGrV4IpOHNWtFWY1jRmOQNRrKd+ztYevZeZ8Wzk24aFBtCs0Vi5kVuXUJC1F1PCvmXgXy7MAVfdDMpGrrpLqkPlaR6Qee77110ILsRyOWO3ZW29fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.29; Tue, 2 Jul
 2024 08:42:44 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7719.028; Tue, 2 Jul 2024
 08:42:44 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v8 1/2] drm/i915/panelreplay: Panel replay workaround with
 VRR
Thread-Topic: [PATCH v8 1/2] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Index: AQHazEb6XNG8/FjOk0GMZEllLJw/Q7HjFaOAgAAD8EA=
Date: Tue, 2 Jul 2024 08:42:44 +0000
Message-ID: <PH7PR11MB5981FE63C3ADEEF89B4418FDF9DC2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240702055631.3722013-1-animesh.manna@intel.com>
 <87o77g9pwi.fsf@intel.com>
In-Reply-To: <87o77g9pwi.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB5865:EE_
x-ms-office365-filtering-correlation-id: 74b1e001-b4b0-4f94-d1e1-08dc9a72f116
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?s/IeqxnqDWlyzkwbtSveNvwN8EofB6U5sus8hGD/BBmLqUZOePd+wGejyhem?=
 =?us-ascii?Q?b7Q2uFqp0pgmShPbzMNVDFsQ3i2y6zJ0b+fCzaPq9Ncr0z5z6osjb6IIs1ZO?=
 =?us-ascii?Q?LEoNNaqHstVZuXiWPAqzcfzGGHHFECQV+JRVoDrYSCeU7VymxG6+OGmU4diZ?=
 =?us-ascii?Q?EY6+zMPGgeb81qQGQ2Kyym9BfMLGDe1PajLYpuVoda1IGOXZAbu7VKBdt3HZ?=
 =?us-ascii?Q?NHFWjH/O29G6DMzfwxbATPRJomiWEwv8l4Oc0Y+R4BuDfp5E2tlhIoi7mQ4I?=
 =?us-ascii?Q?75MuEZz6RrrWscNRRhvNAI/yMZVK/RLi+jQ9sF7NxairPv6fLHSWXyl+DeAn?=
 =?us-ascii?Q?a5s12NpiANa5uZG1w4CDo34FL6IXcTnYIByxpgwrc/yjpxljcGZe8CUJeGdo?=
 =?us-ascii?Q?RZqFWI9y2wy7jhsA9R7CaxoHGQSAT7C6i9jvBJrlLQapQUm6et7j7JuuFgUg?=
 =?us-ascii?Q?QHvY2SUERiJG6lCRdaxEV0zjetO7aXPE4oG6S5tKl4gKB07SMnH/WUrnHC7h?=
 =?us-ascii?Q?ZOHcKCAJLSuJ+NGkako54nyClFpgQ+GSUZSxBUJXqfnUx9fJL0Pqm4r9OopW?=
 =?us-ascii?Q?Bwia8+F5HvqAtTsocrTJyR3VFB5iZtbfQX61uJmYFStojwT6PM3E2E++t4lB?=
 =?us-ascii?Q?D1AAMp7wU6VdXUGI43brYYtVWNbaeUiMlFa9gbvxA1/4jZ0VcEz9ZqukXF2+?=
 =?us-ascii?Q?X1eWurYqCENAAMdL046j/D0IkA75N81wmaYCqRg7CvuSwL/cNKk2kc42oRJ9?=
 =?us-ascii?Q?YLOohtaE+KiMcOdgYebzwzny+RIn5xFdit/NM4PpiY0OUv51S6Yq5SBNdfdU?=
 =?us-ascii?Q?so+N46b9DMcQ/rKSDHEd1OLuWGOoZHxDwPT1mXE1KwOkvnD/ebqXY9japtHg?=
 =?us-ascii?Q?s5cXdH/BkUOYZBSwrRXmJMtNicaLA5+YaL6KOc7cUgOy1QMk4grYlc86TNWL?=
 =?us-ascii?Q?09LvoRJGtiodPKoIbgA6ogGLtRXn5gfWgh87r2PeYp1c5x91JazWu/R0mDS9?=
 =?us-ascii?Q?v8Z09+bfwsddTp/U8eq33w1XMB1wpYHFdOMSS2oVE7biHVf1ubcLH7U4E02l?=
 =?us-ascii?Q?d9f5PnwSkeyUGq+/AybOYoXSReMXo2BjNqGKJUcmcx94fj3tIskE3ka9xXPi?=
 =?us-ascii?Q?1myebuK6YT3Nuf8EiCcSIBQ6FXwoEFBO+rkmW2xvqsuwvbRcpLSWOZePM84J?=
 =?us-ascii?Q?u0y3pVWCTmx0T3VCTrmLBdJPKwaiOZQmV1WBQF6HrKxt1O5ZtEKzClR980CA?=
 =?us-ascii?Q?kDbbopGGgsrCmukoiXQ9xU6mK2gaRzLT4NkKLBJc+JDpnZJ1wuC8rOl/Pm1i?=
 =?us-ascii?Q?J8WYeJ17jdiFKFuGep9qWghfgwgpNB78FDvR5V4WTD+lBiy5G2eXPN4aox3s?=
 =?us-ascii?Q?eJHZgxo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Tuz5cBwNFjjoT1H22QSlEpc/5kITGAwqAdCQMc8LkcdD34FoA23QL/Mv8QPv?=
 =?us-ascii?Q?kPU4PVdrcJ6g+qHtAmnC8YuLnh6cLRpx0Weapu3vQ21SLUZT0Sim1Gn9cXKg?=
 =?us-ascii?Q?u1rk9NDhH5O7CFl0X2maqR55ZxndmRSQBLUacW/Yo9xXLHAkjy1To6OeSlEX?=
 =?us-ascii?Q?x+eOSBmLeC5xIHWL4MeHs+pa0HgjMy4ttSmmDOWHfseTAGwSqN0+KPR8UQgN?=
 =?us-ascii?Q?RNCCXmRM9GJy93aqnaFIsT+ClS9QJIJYQ6XyGFeKpkRXvnPmsHjtNfviBM1r?=
 =?us-ascii?Q?2qjH/dW8ide+8DkqbxZM9BXfHGx6FWhxM6LKuQ/86fSG9+HVjryTuMP8HumQ?=
 =?us-ascii?Q?Ii0vFiSJFdJzjd27AsKE92K4GDQ9HnGuPY5XzfXVky1XAgnwjrMAIIQN25Gy?=
 =?us-ascii?Q?ELayDisZkujcZy1UIbVfmDpTnSvOqEGqDj04GLukUPmox/Ivmhj+qVT+lfAT?=
 =?us-ascii?Q?IJtDrwrZQdS6d3/Kdjreeh//vpnPbLzVeXI36hofjuCReHRbCv5FKFtExju3?=
 =?us-ascii?Q?iHdgyerBIHhisgYolGau7tireYBz/sfsBda18ohRJ8ZW3Uk+Ts+nDSGdczMx?=
 =?us-ascii?Q?7U7gTin52FlghRxRn0Z+5mb7piL+inXXgbCxlmqU7sat/NLsw8fKiBKSyJj4?=
 =?us-ascii?Q?FXQ+//A1XqM4LsrRxbnEFqN9vnqLArQ9LVo1LCjbsLJ3pqqBRueLGqbdH7AR?=
 =?us-ascii?Q?fUHzn7zLSrxhLV1RWcMPwLq2YIgDgOFOSdLTT5H9aic5ajP+0SlLCoR6wMSe?=
 =?us-ascii?Q?xnKK3rQ2ncNwmW8TZjSoWAE2cPSqRSK6viglTP7NcRaS5+uvCopyATGEze+A?=
 =?us-ascii?Q?YTWjhLSN8tg8eEORqEXksWHi47Y7ouSutAI9b4OsfR1F3sNlY/yBAYQWc8nC?=
 =?us-ascii?Q?EspZlgXlOHWd984+owayjsumDcg5inPfVVzJTgv4WzzuZaXZ7bfEI6CSBTdy?=
 =?us-ascii?Q?H/VjRlV7Chp3CiF5F6YZZZWMCONdevAjx6TTEc9qJfytiWljIGAMMGVmqeQA?=
 =?us-ascii?Q?3HHNuFwjwuXD5XgQdIej3vo50ekM1PM88i9bP+FTaururDSDiLwBKOMrtf/2?=
 =?us-ascii?Q?/MR+RxkmJYG9WgKVz1ks3vU80qcS5r+jpxYCU8ywQqPr4a7bDrZEAYwAXhCV?=
 =?us-ascii?Q?Yjx2mSYTFNvPGVm5Au3jv2xYFuQFig/qolNh7e9Nv2aWrm2Cuuqq40Aq5fX/?=
 =?us-ascii?Q?Rc+iGag8TPR3bI59YzNfQBWBT2wvuVuQeDtWE36pY00S5LI+lZ7tViaOJDej?=
 =?us-ascii?Q?DAmZntj/53gD9+HjlpYePeTH1V/ICMYlNB8lt9skoq2BMgrYyFtNiaRkD/BG?=
 =?us-ascii?Q?iDizrOhNiwSxqz9SjfPHFawSj+NsRK2T7RjtXGbKLqxAvDJuhRURkQyw3EKQ?=
 =?us-ascii?Q?6jWNwFrhFZvo41zZ9mimB1qCWF8H9KJX+A0sqzJa4mysqkAqbjciFvRkHSEH?=
 =?us-ascii?Q?TdsptWwejQqI82JJKIVoTVcpLON7caugtN0KQc6OweP5KPTFOCzn6peUx+k4?=
 =?us-ascii?Q?zUqY5J7BfgySw5TUf6ibsPcTl5ZYbXgs5CjhWIdQ9eDQHrJBVnNmDKUEUpS0?=
 =?us-ascii?Q?Ino0/B0idzdxCDCeJ3eAkZhh8QOVMxpCexOUgTlA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74b1e001-b4b0-4f94-d1e1-08dc9a72f116
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2024 08:42:44.0954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Z84sM69I8kWAJ1BIJrj7HLt+hpEAzyBEKlDf1pEMxTqTQ35Rq9mCoO0B1HobQr/fZnqnay8gCWsZwC8Ev6aNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5865
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
> Sent: Tuesday, July 2, 2024 1:39 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Hogander, Jouni
> <jouni.hogander@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Golani, Mitulkumar Ajitku=
mar
> <mitulkumar.ajitkumar.golani@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: Re: [PATCH v8 1/2] drm/i915/panelreplay: Panel replay workaround
> with VRR
>=20
> On Tue, 02 Jul 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY
> > register to at least a value of 1.
>=20
> The patch does a whole lot more than what's explained in the commit
> message. Feels like the patch should maybe do less.
>=20
> >
> > HSD: 14015406119
> >
> > v1: Initial version.
> > v2: Update timings stored in adjusted_mode struct. [Ville]
> > v3: Add WA in compute_config(). [Ville]
> > v4:
> > - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> > - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> > v5: Move to crtc_compute_config(). [Ville]
> > v6: Restrict DISPLAY_VER till 14. [Mitul]
> > v7:
> > - Corrected code-comment. [Mitul]
> > - dev_priv local variable removed. [Jani]
> > v8: Introduce late_compute_config() which will take care late
> > vblank-delay adjustment. [Ville]
>=20
> I presume this change is based on [1], but I have a hard time mentally
> mapping what's going on in the patch to what Ville asks there.
>=20
> [1] https://lore.kernel.org/r/ZnlvWk-sOzDfMa0E@intel.com

From the above comments from Ville, I understood the following point.
1. We need to split the compute config, something like usual compute-config=
 and late-compute-config.
2. Second phase will consist of the part of compute-config which is depende=
nt on adjusted vbalnk_start, vrr is one of them and the other will be psr2/=
panel-replay.
3. Calling vrr-late-compute-config which is part of dp-compute-config from =
crtc-compute-config I felt maybe not look nice,
4. Apart from point 3 we want to consider other encoder-type like HDMI/DSI =
if needed later for adjusted vblank-start,=20
So added based on encoder-type DP/EDP intel_dp_late_compute_config() and vr=
r-guardband/pipeline-full values will be computed for HDMI/DSI as well.

Please let me know your thought and review feedback if something is not acc=
eptable, will modify accordingly, as there is no specific way, it can be ta=
ken care multiple way.

Regards,
Animesh  =20
>=20
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c    |  3 +-
> >  drivers/gpu/drm/i915/display/intel_alpm.h    |  6 ++-
> >  drivers/gpu/drm/i915/display/intel_display.c | 54
> > +++++++++++++++++++-  drivers/gpu/drm/i915/display/intel_display.h |  2
> +
> >  drivers/gpu/drm/i915/display/intel_dp.c      | 20 +++++++-
> >  drivers/gpu/drm/i915/display/intel_dp.h      |  2 +
> >  drivers/gpu/drm/i915/display/intel_psr.c     | 12 ++---
> >  drivers/gpu/drm/i915/display/intel_vrr.c     | 13 -----
> >  8 files changed, 84 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index 866b3b409c4d..021e970d8209 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -266,8 +266,7 @@ bool intel_alpm_compute_params(struct intel_dp
> > *intel_dp,  }
> >
> >  void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> > -				    struct intel_crtc_state *crtc_state,
> > -				    struct drm_connector_state *conn_state)
> > +				    struct intel_crtc_state *crtc_state)
> >  {
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >  	struct drm_display_mode *adjusted_mode =3D
> > &crtc_state->hw.adjusted_mode; diff --git
> > a/drivers/gpu/drm/i915/display/intel_alpm.h
> > b/drivers/gpu/drm/i915/display/intel_alpm.h
> > index 8c409b10dce6..8abe7bd9bc37 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> > @@ -16,9 +16,11 @@ struct intel_connector;  void
> > intel_alpm_init_dpcd(struct intel_dp *intel_dp);  bool
> > intel_alpm_compute_params(struct intel_dp *intel_dp,
> >  			       const struct intel_crtc_state *crtc_state);
> > +bool intel_alpm_config_valid(struct intel_dp *intel_dp,
> > +			     const struct intel_crtc_state *crtc_state,
> > +			     bool aux_less);
> >  void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> > -				    struct intel_crtc_state *crtc_state,
> > -				    struct drm_connector_state *conn_state);
> > +				    struct intel_crtc_state *crtc_state);
> >  void intel_alpm_configure(struct intel_dp *intel_dp,
> >  			  const struct intel_crtc_state *crtc_state);  void
> > intel_alpm_lobf_debugfs_add(struct intel_connector *connector); diff
> > --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index c2c388212e2e..cdab71f81eaa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2512,9 +2512,21 @@ static int intel_crtc_compute_pipe_mode(struct
> > intel_crtc_state *crtc_state)  static int intel_crtc_compute_config(str=
uct
> intel_atomic_state *state,
> >  				     struct intel_crtc *crtc)
> >  {
> > +	struct drm_connector *connector;
> > +	struct drm_connector_state *connector_state;
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	int ret;
> > +	int ret, i;
> > +
> > +	for_each_new_connector_in_state(&state->base, connector,
> connector_state, i) {
> > +		struct intel_encoder *encoder =3D
> > +			to_intel_encoder(connector_state->best_encoder);
> > +
> > +		if (connector_state->crtc !=3D &crtc->base)
> > +			continue;
> > +
> > +		intel_crtc_adjust_vblank_delay(crtc_state, encoder);
> > +	}
> >
> >  	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> >  	if (ret)
> > @@ -3925,6 +3937,46 @@ bool intel_crtc_get_pipe_config(struct
> intel_crtc_state *crtc_state)
> >  	return true;
> >  }
> >
> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_stat=
e,
> > +				    struct intel_encoder *encoder)
>=20
> This could be static.
>=20
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	/*
> > +	 * wa_14015401596 for display versions 13, 14.
> > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register
> > +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> substracting
> > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> crtc_vblank_start
> > +	 * by 1 if both are equal.
> > +	 */
> > +	if (crtc_state->vrr.enable && crtc_state->has_panel_replay &&
> > +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode-
> >crtc_vdisplay &&
> > +	    IS_DISPLAY_VER(to_i915(crtc->base.dev), 13, 14))
> > +		adjusted_mode->crtc_vblank_start +=3D 1;
> > +
> > +	if (crtc_state->vrr.enable) {
> > +		/*
> > +		 * For XE_LPD+, we use guardband and pipeline override
> > +		 * is deprecated.
> > +		 */
> > +		if (DISPLAY_VER(to_i915(crtc->base.dev)) >=3D 13) {
> > +			crtc_state->vrr.guardband =3D
> > +			crtc_state->vrr.vmin + 1 - adjusted_mode-
> >crtc_vblank_start;
> > +		} else {
> > +			crtc_state->vrr.pipeline_full =3D
> > +			min(255, crtc_state->vrr.vmin - adjusted_mode-
> >crtc_vblank_start -
>=20
> Misleading indentation (see where you're copy-pasting this from).
>=20
> > +			    crtc_state->framestart_delay - 1);
> > +		}
>=20
> I think only intel_vrr.c should be modifying vrr.guardband, vrr.pipeline_=
full.
>=20
> > +	}
> > +
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) ||
> > +	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> > +		intel_dp_late_compute_config(encoder, crtc_state);
>=20
> So, ugh. Naming this intel_dp_late_compute_config() is *very* confusing.
>=20
> We have intel_modeset_pipe_config() calling encoder->compute_config().
>=20
> Now you're adding intel_modeset_pipe_config() calling
> intel_crtc_compute_config() calling intel_crtc_adjust_vblank_delay() call=
ing
> intel_dp_late_compute_config().
>=20
> Yet there's separate intel_modeset_pipe_config_late() and
> encoder->compute_config_late().
>=20
> In general, it's very surprising to have a function called
> intel_crtc_adjust_vblank_delay() do *much* more than, well, adjust vblank
> delay.
>=20
> > +	}
> > +}
> > +
> >  int intel_dotclock_calculate(int link_freq,
> >  			     const struct intel_link_m_n *m_n)  { diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index b0cf6ca70952..21fd330b8834 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -428,6 +428,8 @@ bool intel_crtc_is_joiner_primary(const struct
> > intel_crtc_state *crtc_state);
> >  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state
> > *crtc_state);  struct intel_crtc *intel_primary_crtc(const struct
> > intel_crtc_state *crtc_state);  bool intel_crtc_get_pipe_config(struct
> > intel_crtc_state *crtc_state);
> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_stat=
e,
> > +				    struct intel_encoder *encoder);
> >  bool intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,
> >  			       const struct intel_crtc_state *pipe_config,
> >  			       bool fastset);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 3903f6ead6e6..e01e72ec48b3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3009,7 +3009,6 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  	intel_vrr_compute_config(pipe_config, conn_state);
> >  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
> >  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> > -	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
> >  	intel_dp_drrs_compute_config(connector, pipe_config,
> link_bpp_x16);
> >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> >  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> pipe_config,
> > conn_state); @@ -3018,6 +3017,25 @@ intel_dp_compute_config(struct
> intel_encoder *encoder,
> >  							pipe_config);
> >  }
> >
> > +void intel_dp_late_compute_config(struct intel_encoder *encoder,
> > +				  struct intel_crtc_state *crtc_state) {
> > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +
> > +	if (crtc_state->has_sel_update &&
> > +	    !intel_alpm_config_valid(intel_dp, crtc_state, false)) {
> > +		crtc_state->enable_psr2_sel_fetch =3D false;
> > +		crtc_state->has_sel_update =3D false;
> > +	}
> > +
> > +	if (crtc_state->has_panel_replay && intel_dp_is_edp(intel_dp) &&
> > +	    !intel_alpm_config_valid(intel_dp, crtc_state, false)) {
> > +		crtc_state->has_panel_replay =3D false;
> > +	}
>=20
> I think only intel_psr.c should be modifying enable_psr2_sel_fetch,
> has_sel_update, has_panel_replay.
>=20
> > +
> > +	intel_alpm_lobf_compute_config(intel_dp, crtc_state); }
> > +
> >  void intel_dp_set_link_params(struct intel_dp *intel_dp,
> >  			      int link_rate, int lane_count)  { diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp.h
> > b/drivers/gpu/drm/i915/display/intel_dp.h
> > index a0f990a95ecc..cd473f939941 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -74,6 +74,8 @@ void intel_dp_encoder_flush_work(struct
> drm_encoder
> > *encoder);  int intel_dp_compute_config(struct intel_encoder *encoder,
> >  			    struct intel_crtc_state *pipe_config,
> >  			    struct drm_connector_state *conn_state);
> > +void intel_dp_late_compute_config(struct intel_encoder *encoder,
> > +				  struct intel_crtc_state *crtc_state);
> >  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  				struct intel_crtc_state *pipe_config,
> >  				struct drm_connector_state *conn_state, diff
> --git
> > a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 9cb1cdaaeefa..4dc917b7f447 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1344,9 +1344,9 @@ static bool wake_lines_fit_into_vblank(struct
> intel_dp *intel_dp,
> >  	return true;
> >  }
> >
> > -static bool alpm_config_valid(struct intel_dp *intel_dp,
> > -			      const struct intel_crtc_state *crtc_state,
> > -			      bool aux_less)
> > +bool intel_alpm_config_valid(struct intel_dp *intel_dp,
> > +			     const struct intel_crtc_state *crtc_state,
> > +			     bool aux_less)
> >  {
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >
> > @@ -1442,9 +1442,6 @@ static bool intel_psr2_config_valid(struct intel_=
dp
> *intel_dp,
> >  		return false;
> >  	}
> >
> > -	if (!alpm_config_valid(intel_dp, crtc_state, false))
> > -		return false;
> > -
>=20
> The commit message does not explain this.
>=20
> >  	if (!crtc_state->enable_psr2_sel_fetch &&
> >  	    (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> > @@ -1583,9 +1580,6 @@ _panel_replay_compute_config(struct intel_dp
> *intel_dp,
> >  		return false;
> >  	}
> >
> > -	if (!alpm_config_valid(intel_dp, crtc_state, true))
> > -		return false;
> > -
>=20
> Ditto.
>=20
> >  	return true;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 5a0da64c7db3..46341367d250 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -242,19 +242,6 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
> >  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> >  			 crtc_state->hw.adjusted_mode.vsync_end);
> >  	}
> > -
> > -	/*
> > -	 * For XE_LPD+, we use guardband and pipeline override
> > -	 * is deprecated.
> > -	 */
> > -	if (DISPLAY_VER(i915) >=3D 13) {
> > -		crtc_state->vrr.guardband =3D
> > -			crtc_state->vrr.vmin + 1 - adjusted_mode-
> >crtc_vblank_start;
> > -	} else {
> > -		crtc_state->vrr.pipeline_full =3D
> > -			min(255, crtc_state->vrr.vmin - adjusted_mode-
> >crtc_vblank_start -
> > -			    crtc_state->framestart_delay - 1);
> > -	}
> >  }
> >
> >  static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
>=20
> --
> Jani Nikula, Intel

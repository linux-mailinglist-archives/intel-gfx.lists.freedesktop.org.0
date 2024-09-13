Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8509D977D12
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 12:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E17910E1EF;
	Fri, 13 Sep 2024 10:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wvf+4cNw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9949E10E1EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 10:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726222559; x=1757758559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=98c6nZ6TA9vb4pzFg296tmqG/zzVRZP1hZO8RglU8C8=;
 b=Wvf+4cNw0mQ8QpDclrSidSJQyLU2iLZFYLZw4XAZ5v6K3baUwRyO2PoA
 nFQLMowIWgOPtdinnW7bTgRRDXT2z3LTErvWPaez9Peuur9+kty/4U/yv
 sZHwEsUEI2/T+hV4ZSO2bBW4YxFELWqbXiVF8O0ZBEhS3CyJUyQUOIy04
 XjgSmzxijCmd2tLY0ouKFVEI7aocUjoDnwR0QvLplzyQO1MQuJuSSbG79
 kLtyXv+h/MAVQJsWKJp7CmWWR2wVjROSyuvpd4ZXvSggM5k65uM3tU2b1
 iP7ltTZY9N/5/c8MJ7V/Rw28GBzlgpC/+4fRYvUpRvTerdU8LoDltDjlG A==;
X-CSE-ConnectionGUID: FxxfEODwSSScQGmOyhexvg==
X-CSE-MsgGUID: o7ID5NqZQuChRidU5z5U+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="42593932"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="42593932"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 03:15:59 -0700
X-CSE-ConnectionGUID: KRtkwuGKRxmhA0D2YLe0HA==
X-CSE-MsgGUID: 9BtDn08WSsqJV7XiRnS/bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="67852580"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2024 03:15:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 03:15:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 13 Sep 2024 03:15:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 13 Sep 2024 03:15:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zMg+gMdqfrvy0Ql81UOyKW7ICWpLUbLhWeVX53gWLAD7I2T89HHj3YYAQEu/dnbnee2pFUQJkIB5mbNUn3YsSpxLbdfzUZ5qPOayXHz0wlRzq4fFxuoVTH68aWCw9EG7XhdFADuQ34QNdy10d0m/vyYcG7xM/MMhYv/0WYkp3oIhpWYuw+UGsS6DHTonYhPjJFgUc7n25ioG343/rz5W3PViwAaWeh0oeJVPjbHiz3TmCFFGpfP1CRjR8wwQxpUHm54sfhVK9nj+zaAbU+ua1viUjEu+f/cMiocBaPVTffmQAwjPE2HeGx6fltzcXcmlK1JKVGI2IjEZ1azcdeCBdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g17H/tJGXNNTeN7QxG0IxBWUrQ+ieC8iHQBnE99Hp1A=;
 b=liiV2EdS/2n6qq8UZgK5rXRRCFESCI1WKDDjlKiTUYtFioRJ4HT8VZIk6GwJP44gZHcZ/X1eslqaWY/p/NFjY8qiazHEH0p3TRZWACmDcaFnArFmjUpAeC/OKHwRQwrd04bcX0skH2g6H/6H6GpXSh8/qXQh5oGnkpAwG8rU39bIItAWu2fJ99F/e607qXO2AbzIE6r2hvbdjx5fTs1EVJzAtdSvAWin9nRb5K9KoiYKX3J91GuaCK+iqtbV5/3xfD4GSUL53nWRXWUhexvsn/G8q9t5YzwUJ+R64bSTId82EJbT3DxqUWWEwzSxcmTyHVYMgUPF+8Y/2rR4dkvE6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MN0PR11MB6278.namprd11.prod.outlook.com (2603:10b6:208:3c2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.20; Fri, 13 Sep
 2024 10:15:55 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7939.022; Fri, 13 Sep 2024
 10:15:55 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar
 Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v10 2/4] drm/i915/lobf: Move Lobf compute config after
 vblank adjustement
Thread-Topic: [PATCH v10 2/4] drm/i915/lobf: Move Lobf compute config after
 vblank adjustement
Thread-Index: AQHa/1WxkN6bSS5opkOMAC4VGUBOyrJTUX8AgAI6Q3A=
Date: Fri, 13 Sep 2024 10:15:55 +0000
Message-ID: <PH7PR11MB5981F265E099D04C62ACB459F9652@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240905051841.3012729-1-animesh.manna@intel.com>
 <20240905051841.3012729-3-animesh.manna@intel.com>
 <ZuIxTlhkjCNNtlDW@intel.com>
In-Reply-To: <ZuIxTlhkjCNNtlDW@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MN0PR11MB6278:EE_
x-ms-office365-filtering-correlation-id: 503116ec-32b6-404d-cbbb-08dcd3dd0dcd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?wKLtU8d06fMrRM2c3XKibYB1FWwjFO4y8dKhhcz8FH4cqGdUHwN7PnJdnu?=
 =?iso-8859-1?Q?8HZYzxB/GQOyzCcWMQ72l4ICrVAPXZm4vYsDmwXIZiLPJaljmPcrVXFjbo?=
 =?iso-8859-1?Q?pSAM1qLdE/9bKl1LKkasKWfOBSzLHETeqOD4MvSAf1bigo0daWlf1/Z+RI?=
 =?iso-8859-1?Q?eJURRQSpTIVeW07MZHjuigwlbDc3sLItk2wqZFHVLX09yC/xQ8N/5OF+OK?=
 =?iso-8859-1?Q?AuwNaOYQH/+MMT+Ze4oL0FTOyfdXMgY7eUUsJlnmcuiLFqZlTrYfTlIE8f?=
 =?iso-8859-1?Q?4x3LoU4R+ZruGsLHUDosfo0+4wco6ocRkpO+9PUnIwEnvzg+92WwqzaGKx?=
 =?iso-8859-1?Q?WYluEf1R0OHuQtydMVSwhfWB93afc2LX4WchGHsvhE6VQ3HN/KSvQHNv8o?=
 =?iso-8859-1?Q?TCfIRiidqvuFg0+XXY97XNo5bcmfYQCXgF8Y9LvT6ABtO9e/6rSrcsomTY?=
 =?iso-8859-1?Q?zQSbYaciS/+3VEFSUUNFSt5R8KhQc1B6wu5UASQ3NfOuhh1UAHyoCBBUPm?=
 =?iso-8859-1?Q?Ht+SCQeTf6e1JTIoynC5pYqqoAE7EopZBSG813tRi6GIMoE7k7Om/rMUkw?=
 =?iso-8859-1?Q?w1XZLYPIf6roEJCLspE2ytzk/uBeDFoMwrBauD3ZBWQvJSF70obar4aUe9?=
 =?iso-8859-1?Q?7GtjGvM0/n2Y1OhLeO7RGyBiAdYq2+9RhRlhEXIm2KP6iYZlnNKCwTf7ds?=
 =?iso-8859-1?Q?Wr/tJ5M1Es11qELbeX/wCGO/rJ7jqFFKxb5/c38UtyVwsGz/urqmca797W?=
 =?iso-8859-1?Q?VKFauLQBXMUIyhcENv9acA9SrqWkZ4Sp14+3Wlg9b60dGmfz97zSK4CStF?=
 =?iso-8859-1?Q?CTgZqhWSF+KBmzTHTASmrsARnS5PqsWMBaiG2A6aNrt4zYLdjlh7Y2o2E2?=
 =?iso-8859-1?Q?Zs/X5/Va9LIeF+iaOMLUQMeNKOk09IOIuJc0liUAwhr6zUeO/+w3cgzL9m?=
 =?iso-8859-1?Q?g7AJbikp+YHQcLLRmpqHATO7h7kUFbrXx2m1E3PPIjy2lyiMJvSi1IYMhh?=
 =?iso-8859-1?Q?sBYqvXyWxFdZpBoNdZ3fmQJwTUF+Yz6szBa6uJKFIArnNV+rkhouJmi17m?=
 =?iso-8859-1?Q?+o8+uqPzBZAJXZYO+Jn4Sgofd/L5lj2CazMXeuRER8zCO51amdiqUw/GE6?=
 =?iso-8859-1?Q?hDPvym+WfYu30ZYx9ui7Wkkfytt7dggF1VEU1Fz1Iw5X60AgPY/sinHutn?=
 =?iso-8859-1?Q?Mm3WQEdV4UJFAuruVyz8eNAeLhTB0tKG3s2+dBsbfF+eCq9mVFdvZBNCG1?=
 =?iso-8859-1?Q?NHVCPj0V31En0u4uNbEZ5Qqa49JX7YR7iQDK11AJzWfj4n5leJmTB9iHKC?=
 =?iso-8859-1?Q?HY/cA2qeAQwWlMWdxT6LQMiHjydzzSkGSiaPzmDm9suerPMngbIK7x+dyb?=
 =?iso-8859-1?Q?HoluTyORlLpgUVqTfSd40c4okMSX7tajqkWlsWvyfCU8DefLG5J8JVyEn7?=
 =?iso-8859-1?Q?kvFLRa718AF0AopgjJTI9nqia4zKIN9GdgiT4g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?yAeecIJeNp7tJjt0BP65vSJrjrRUcdLQghdybfuRWaEDfy44JoOqAJsbZ2?=
 =?iso-8859-1?Q?cMW7kKxGtJ/6A3Vv9y+MISaMEl1iRMJ8KFkhhuQ663L002Z08mqNSzsFr3?=
 =?iso-8859-1?Q?K8pSwlqpUn2tdZCq8TAQpzclwJPFld3c0835GXG1EgalCDSrUhNkD7xnhv?=
 =?iso-8859-1?Q?2ZQcif2iv8FVoVVl85BTmgK12w1VNMzuAODAMDwTlLaILS2oR2i3UXvnmV?=
 =?iso-8859-1?Q?eVkJRnpPgpPYthouWv3qrFBGQ/RapwtOwbLjUVQuMbTToCCItI/r44HOU0?=
 =?iso-8859-1?Q?g6EATS9AqKvVrO9Oz/AiinGHCWgeZdgs1KSI2pS2HO7AfVhEnuf0Tw05C9?=
 =?iso-8859-1?Q?1yFEIYEkE5BTITGvY3JBtOmHv8vs74DvCgA1NOluk7I8IWiKzoLuhnROSU?=
 =?iso-8859-1?Q?DOGqNdeYsmD+mBl+uA2QLGuE0wVzm/yTIY77jYcwMKeR8uYRpDA2Jh+MrO?=
 =?iso-8859-1?Q?MnP2k6u0W5D7hg/XGhjYRGo5bvrTPzQ3otnlRyNnensAjljmNrSAuTY5w0?=
 =?iso-8859-1?Q?cD4CJhkg6B4l749y0qitBbFLQmF1yOBopwwfephBMEDewhMFpLf18NeCbh?=
 =?iso-8859-1?Q?DwGEc+6hC/r8kvq3Jzo+TqaaquEQQExPi2R7Ae++dMHJ9adTarD30E8od3?=
 =?iso-8859-1?Q?Hj2UyNOxmQqpUBPuZcbwL9aI8WyIRwL7dAVfl0MdqESdh9WVcnjPcCnh8e?=
 =?iso-8859-1?Q?7malKtn48+QUAKq2LCXUerxQ4X5O+4FWptKLHWWW0+Kwoj/t2ZPoYW+v65?=
 =?iso-8859-1?Q?Eprla8VEdbCFoGLOxrJquwEU56/QUQ1SOvsCV95BeIcpWY1+gcNohCvcRC?=
 =?iso-8859-1?Q?04rB9m7koJuhlx6NLsN1p7H1n4LVEBH0XzuAtpEAqT98aprQcN6N+HMunz?=
 =?iso-8859-1?Q?0GqDJJkQazILxLtBS2H3AVzC0vm1Gptnc19MIL4mU7JTvUG45LLAXb62bm?=
 =?iso-8859-1?Q?oIWXO/+RNxbvm06++dpfemPa0zraUZBKlYpfmGq0jXzZ3moEZNJG1u6jZZ?=
 =?iso-8859-1?Q?/TGnOidgE9W+fDuaLo4KK4RdiBft9ypkAwGTkr87S3iPz/rr5oWL6+Wo8r?=
 =?iso-8859-1?Q?gw+Ks7mcRAD/nU7Lfre9RG19XPeEf04hq6P9Ul8HJ7yP0Yu7crtQGtrxFn?=
 =?iso-8859-1?Q?0mrRdQl9N0NznA5rTMkoC9lcsnLAtPe6hycPK2F9rNwph8KUghEiRcN973?=
 =?iso-8859-1?Q?M0M12ZeSXMl1XyyQqXBGU56Zwrc5oZDYQq6IT/QNRqTUeJ2IjXiROFcYg9?=
 =?iso-8859-1?Q?y3fQKZV5hAmhg+GKzmNZQp0Cu+RUxrg1kn4c7ayVulSjjiIAcDtY7/UFv4?=
 =?iso-8859-1?Q?83UmbB3Te2Spbe6CkMxLK/UE6nqWfxtDqeAgEFDpzMY0+tSxjJlQlOnD7N?=
 =?iso-8859-1?Q?WD6JCY7EX54GyBX8SANnK/MG9RbF205ZJ4VyXoFLjXvR2B76ndv2/eslHv?=
 =?iso-8859-1?Q?ufQdiL0FvT549Iq05ep48OyNLo6KMg4p7d/J66+qHMpmFOM5EYxElqFgl5?=
 =?iso-8859-1?Q?6caMrxZDbo0jARYdDp9RGbg9nJ0RMGrdF0PflfLgOW5p/bOCcz/HmAWYse?=
 =?iso-8859-1?Q?LAjJadsN4JerT/+VJGgOY8Qp1DQDxrsW44qay3WizYFQmUSZ0fbxgD84uj?=
 =?iso-8859-1?Q?CudaFfsXy8g6rFh8yTVWQs5zKzWHDEBKZI?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 503116ec-32b6-404d-cbbb-08dcd3dd0dcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2024 10:15:55.2223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ajCqm1ZJZA8wAYB86pAQaWlqQkn9VenIGNf2G79Y0haSgJloCp7USE3gmEYUvUMoedknbQZm1Viz/3cSSWDJmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6278
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
> Sent: Thursday, September 12, 2024 5:40 AM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>=
;
> Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: Re: [PATCH v10 2/4] drm/i915/lobf: Move Lobf compute config afte=
r
> vblank adjustement
>=20
> On Thu, Sep 05, 2024 at 10:48:39AM +0530, Animesh Manna wrote:
> > As lobf compute config is depends upon delayed vbalnk so moved
>=20
> Actually no.
>=20
> The code is as follows:
>  guardband =3D adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay =
-
> context_latency;
>=20
> Add context_latency to both sides:
>  context_latency + guardband =3D adjusted_mode->crtc_vtotal -
> adjusted_mode->crtc_vdisplay;
>=20
> Substitute into:
>  crtc_state->has_lobf =3D (context_latency + guardband) >
> 	                (first_sdp_position + waketime_in_lines);
>=20
> and you have no vblank delay anywhere.

Got your point, maybe will drop this patch as context_latency + guardband w=
ill be same even if we change the vblank_start.

>=20
>=20
> Someone should just rewrite that to use that simple formula.
>=20
> Now, that code is using the non-VRR timings for all this computation so
> technically it might not even be computing the correct thing when using V=
RR,
> but I guess that's more of a problem for the "let's use the VRR timing
> generator fixed refersh stuff" because we really should match the non-VRR
> timings there...

Yeah, LOBF is only applicable for VRR timing generator fixed refersh mode, =
will relook the above calculation once it is enabled.

Regards,
Animesh

>=20
> > lobf compute config in encoder late config(). Lobf is only for edp
> > connector so introduced intel_dp_late_compute_config().
> >
> > v1: Initial version.
> > v2: Function name modified. [Jani]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++++
> > drivers/gpu/drm/i915/display/intel_dp.c  | 9 ++++++++-
> > drivers/gpu/drm/i915/display/intel_dp.h  | 2 ++
> >  3 files changed, 15 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 00fbe9f8c03a..0d12c94793bf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4367,6 +4367,11 @@ static int intel_ddi_compute_config_late(struct
> intel_encoder *encoder,
> >  			port_sync_transcoders & ~BIT(crtc_state-
> >cpu_transcoder);
> >  	}
> >
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) ||
> > +	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> > +		intel_dp_compute_config_late(encoder, crtc_state);
> > +	}
> > +
> >  	return 0;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 86bc6d79279f..bc0042a1bc3a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3107,7 +3107,6 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  	intel_vrr_compute_config(pipe_config, conn_state);
> >  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
> >  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> > -	intel_alpm_lobf_compute_config(intel_dp, pipe_config);
> >  	intel_dp_drrs_compute_config(connector, pipe_config,
> link_bpp_x16);
> >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> >  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> pipe_config,
> > conn_state); @@ -3116,6 +3115,14 @@ intel_dp_compute_config(struct
> intel_encoder *encoder,
> >  							pipe_config);
> >  }
> >
> > +void intel_dp_compute_config_late(struct intel_encoder *encoder,
> > +				  struct intel_crtc_state *crtc_state) {
> > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +
> > +	intel_alpm_lobf_compute_config(intel_dp, crtc_state); }
> > +
> >  void intel_dp_set_link_params(struct intel_dp *intel_dp,
> >  			      int link_rate, int lane_count)  { diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp.h
> > b/drivers/gpu/drm/i915/display/intel_dp.h
> > index 1b9aaddd8c35..411feece9acb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -74,6 +74,8 @@ void intel_dp_encoder_flush_work(struct
> drm_encoder
> > *encoder);  int intel_dp_compute_config(struct intel_encoder *encoder,
> >  			    struct intel_crtc_state *pipe_config,
> >  			    struct drm_connector_state *conn_state);
> > +void intel_dp_compute_config_late(struct intel_encoder *encoder,
> > +				  struct intel_crtc_state *crtc_state);
> >  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  				struct intel_crtc_state *pipe_config,
> >  				struct drm_connector_state *conn_state,
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel

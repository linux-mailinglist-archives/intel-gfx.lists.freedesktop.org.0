Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DE461EEFA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 10:29:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E13110E2A0;
	Mon,  7 Nov 2022 09:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1044C10E29D
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 09:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667813378; x=1699349378;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4VErr5HwNnjwhniTQKYIDYd8wmwT4Hjj28mEt3KTbW0=;
 b=OfkyiyQ5vu5KfY32WTqHBeyNK3SPBElPKjNMRiXqs2awDdR7nZSBAlJ8
 6OGxA4v1H93yu+3VrMLCjaE8NHaiJPlAqD4vudnTqmD+MEYuhUSdLFBXu
 LouEHeLvbor/nIoABzQzqTWOPP09i2Ihi+VWn6EvSrrDAq9aKgF55fFxj
 UHHQ0fBc1RkCaRBTQrXkK7GdSvmVuHzHqdbHi4emLYC/mC2OeSyihvlBf
 aYJEaf4ng03zZvvD4dsuC7Ugbkh+X2Q0XEqt6w4oGq6D1gX+UbMk5ViCW
 vqTu+HPSl08gx8yd4cde+jfgORpjleWxGSW7oB7G1g9FKuDeEGIhyqC1B Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="372486931"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="372486931"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 01:29:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="761034218"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="761034218"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 07 Nov 2022 01:29:36 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 01:29:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 7 Nov 2022 01:29:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 7 Nov 2022 01:29:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kYp4gq6Xv/soZICNmI2x5MjLeqh3NAVgmh2xzwU2vvbRjQxt+8Uyxe2w8qNVgWMNY98u81p3/Fcv6JDFh5JLKKYeOXEutt7FqlwvIVvNca5eUnKr/dewX6aJuVl4DXoKQ6i9oYhYIWSDRMXxD3Q4felmFrKPG7FWYBMkfXx9mrZqesdOXlc7EZlRe13Vv0npwq9PNlKqVOOSEernxCFy8/+sAwa8xOfo5joVlziqVkHtBDpnym1lwX5wm3Es8aAXmT4lbxXdkbi7cqp6j1F4b/VmR0aYxkwWd38lPegZsmeMamnrLOjk8NEP7ZIa3I4FC5haSxH8O6uFm+LO8RKY7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1jxcfh6JFepxaTvfsn49EcQtY+grUi4iOW9rmH/hIIo=;
 b=nApTO8rqN9cPsT6P9LfS9YNlFmfH1zhhi9i9tQicgoAvkMs5ilvblm9WfN/zrc4eXv5c++pOmzgiSl+6ctThpdrXF43GQvi4z2mQOaTuh0JAT/GRSOjL2+RbBl/33/wwd3k0mRDtAcdW2yq4JgT5rNci8J3gDxt4lr37rEh86vq7h+fJfLbHUo3e9Rabxz010NysKSUlVF+oejL1clLZRB2lqxAXTJR8yEWrs+GrOslb6Kx46CS26CLcQzCX+W0NHXcBxjxyqRVRDSVZfGXBHTVE+fkuJJkd8DmrMYISP2R0dRMAWoQXDRHyqWEkt74yFYXLvwSMMUrmQePC8qbXJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 BN9PR11MB5356.namprd11.prod.outlook.com (2603:10b6:408:11d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Mon, 7 Nov
 2022 09:29:34 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::c4ac:5f10:7fa3:2aa]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::c4ac:5f10:7fa3:2aa%7]) with mapi id 15.20.5791.027; Mon, 7 Nov 2022
 09:29:33 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] BUG: i915: flickering/temporary artifacts after
 resume
Thread-Index: AQHY8StQ1f8Jprnte0Se0mpVN/Tmtq4zNFxg
Date: Mon, 7 Nov 2022 09:29:33 +0000
Message-ID: <DM8PR11MB56555D7E8598D31998F5010AE03C9@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <Y2Z+gi8uhdRji7Co@shell.armlinux.org.uk>
In-Reply-To: <Y2Z+gi8uhdRji7Co@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|BN9PR11MB5356:EE_
x-ms-office365-filtering-correlation-id: 085d214b-c5b0-4044-7a20-08dac0a294c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v3TctqN5Xs/1tfszKW4qwmrx+VpT4i9qyA+bD/Cs+atixjwrKFh9b0/y7sFf/T7TR4pCYKqWeOf6acRDpxZrxhpFHFWnVTbfKNTyWufzFDvWFNiCFWZVBj+uIoEicW9dgRdmnpZnaimHGRMUtH+Q4zoREMNE5lo//UI5XmF21HlZhxdVtERY2UzRSUQbBdF5A3n+o+m+xrBwMWHrHt5dndS49LytyUMdAqmravej72e2VJhQArDuMjetXqRIKXdleY8rcxDqAbPrCec51tBjRJaEpDtkkM8f4T87CopaTlwEiNECNIATPx8KWzbcDeJISFMngXPGpXvJ0ZAWZd8eUXRQqaljcff4ML2lS+GumZMD4ZJhhLLB34Rcrfz1ssIpnLZ3h/s/zbRBAfmQXhMNgShXq81CE3cf04fu362QzNURxkRgqJS4prEDVQ0SUWlG0LPEN+LdoVRVKt/KF9u5OcvR0dEb7PFOlqd9kt1vqi3BYQ8l+YqgDVexVcDEfdtjt/q2jWCT6Dram4K+5SzgDhjPX4oKeI+J+Vyf6oDuuXTbu2vqWOeWzT0/MubxWeIdMm8ochlw2vSdjIFYa17MIsd/Fbagioang8oXwO4MPpCY2lTapBw/R7Wgoi2pP2fr4J+yXlQUt1kw9jdR968OrztN/CqytFAqDtZFYSdrQlQA2pE79Rm/uD4pJq/tPYff5+cxp7T6nww6KfVh0wUpP8A/IjG85F5VHEPKSJNLRJZmTO0Z2H/YZ3YGRPr46W8O/sJHc2SwcZF4/Vz8JATgFfanE9jBHlavngdGgLyJteM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199015)(38070700005)(83380400001)(33656002)(38100700002)(122000001)(86362001)(82960400001)(5660300002)(4001150100001)(2906002)(966005)(66446008)(52536014)(8936002)(41300700001)(64756008)(66556008)(6506007)(55016003)(7696005)(478600001)(66476007)(186003)(26005)(9686003)(110136005)(76116006)(316002)(66946007)(4326008)(8676002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yZX8MautLtnbWD7otox681pwMNN5mcaJwvb3k3atATb4SD8NeDVE0znij6hI?=
 =?us-ascii?Q?ljXf42OZMMlPkuoH8mIlVJF9c2pkhDhudVdVCTIZTlHT4a9OaQq3sgWd+S/p?=
 =?us-ascii?Q?5yZ49WFAs1yJFfLWUrXCA2xKLqjN0GMevHUly4uqS8dwb2yB7AGcEoL4L0C6?=
 =?us-ascii?Q?SwhPpsPPLagHo3/adQdqsz9wujtkV5/8aSZpuul8LWAux9SbTo2NOK9AVrij?=
 =?us-ascii?Q?eH2B6K/Rg5Aqu7/5Uuxo8DxDZnsf7juVcFtAZm3NiiZOLJ596rCThS8aKlEA?=
 =?us-ascii?Q?0JHvD1M1btXx1ODIDmf0U6bhhrRWv2NOYJvD1Pf6yyWOiippR2hXR/OOqqDV?=
 =?us-ascii?Q?u9q7EtImf6iJsCk4vgNuBUcDBygpeF07+D3N1mgd/AdOlpQT/HeJVKTpx8g0?=
 =?us-ascii?Q?y0AZbPKnrJuPsM3Idh3GzCiwKgJV/f4AkGWLNDYReg4FgZNd0zRz0xz9eSrm?=
 =?us-ascii?Q?rXPIaV4FywArcqHuURipeQswdPIcH1OMVtpdAlJJLOjpHUrr4AvvunGTaKM/?=
 =?us-ascii?Q?/eDGCtfS9AFmaHmIxnqJoWGSub4vWtPp2PXOObko0mv9IattDisQW946No4q?=
 =?us-ascii?Q?KVFO/FVEAGicA0Cp+aycyzWuFCiD6MH+HGRe3woNvaqNpKylHpDMQ3sVeslE?=
 =?us-ascii?Q?Iz1gjCdDMwhMqJZN60shWkSgB1X+9L+lroSyCls0o++jVp5RHrYeRpP9bQ80?=
 =?us-ascii?Q?J1dFS0Qwarl/rfRQzstq/YJ2zFfwR1eIqdR8zBoHurqez/iTtQkaenx9yrFW?=
 =?us-ascii?Q?/hZjVaM+lvkNDzRRQmRKXkbNacpRmyGQ8V4mHbTfsJ5Q6PFcU1RqOh9BsvYp?=
 =?us-ascii?Q?ABtj5VYpsxlSyME+Imb9fmhJVlGPpF/OrnS+Jm+JJqNKNpq1GoAGdOC+/c36?=
 =?us-ascii?Q?mRgrV4Io55Jq72HS3mY8WtTrAXShJbcLLLWAclE0EsqfAzEkTQgFEvOOibn1?=
 =?us-ascii?Q?tEVBi8NyprmofPxQFducHNnKcKiF3AAapvoR5OXb3NQG9/Ppzd1d1BpaSIaL?=
 =?us-ascii?Q?zBmVLuN93lrKKflApMaWFU9GPITZL+edZwZe+DPu7oRjr3HRBCCTHh0Zs8LC?=
 =?us-ascii?Q?pns/kFDVdw7etfHD0/8scpuB3bwsadTpytRrOu5uS/yCkrZp8Tu8iYFpDysE?=
 =?us-ascii?Q?D3UcpgEI9fvyAMpTHUAKCEOetxfyH/3kyVKvc5iogransCw+4wVLiZWYIYDE?=
 =?us-ascii?Q?8oW880J11nj8dphBcyizoinLC71MweA0peV5Z58hlcwp6KxfdKLJDsOAlLnU?=
 =?us-ascii?Q?ycyzIFXfxYjQK3WVUFaFWAKMp4xkRZxS15xh0MioPOZB4rEm+g/Xv9wwrpSw?=
 =?us-ascii?Q?PQaqvo8sTx0563rqSr296F1TS/J0eGOBbpy2LOwtlgTPvGwB2F7emKe0afqq?=
 =?us-ascii?Q?41vo5TMX+pMQ/rKDCOgpVbNnhcK3F+tJb1nT9XuVT/g9KpXqFDwfFP9faMH5?=
 =?us-ascii?Q?s4lS3YcKlDIM1G8vc+0p8LAt9Ee828Plzyqzkxhy5jC2wycmWSlh4rnWWdtS?=
 =?us-ascii?Q?OgxjQoJQkqNVKMS+5Tv1Xi2v8dKlmaYGdce2JZlELldISTiAop+WiQ0yszQ8?=
 =?us-ascii?Q?T3ZEkxN+NNAshHEwyXnRq2vtgdFwcV7hw5zvxdIu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 085d214b-c5b0-4044-7a20-08dac0a294c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2022 09:29:33.8976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lJcEqthnQsLhnrp/DJiI4LfXCtYOx2o4YD9fB+SBRqHyMXX4rmmajHZn9hDkJEYu+NSxyjtN4y30s70On8XU7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5356
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] BUG: i915: flickering/temporary artifacts after
 resume
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Russell,
Can you make new gitlab: https://gitlab.freedesktop.org/drm/intel/-/wikis/H=
ow-to-file-i915-bugs  ?=20

Br,
Jani

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ru=
ssell
> King (Oracle)
> Sent: lauantai 5. marraskuuta 2022 17.17
> To: Jani Nikula <jani.nikula@linux.intel.com>; Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>=
;
> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] BUG: i915: flickering/temporary artifacts after resu=
me
>=20
> Hi,
>=20
> I have a HP Pavilion 15" laptop that occasionally misbehaves after a resu=
me from
> suspend mode. The problem is obvious when the screen updates e.g. after
> moving the mouse and the window focus changing, or when a terminal scroll=
s, I
> get a ficker of random short horizontal white lines over the top of the w=
indows
> that then disappear. These appear to be predominantly focused towards the=
 top
> of the screen, although they do also occur lower down but less obviously.
>=20
> Soemtimes these artifacts don't disappear until the next update - I attem=
pted to
> capture them, but of course that provokes another screen update and they
> disappear.
>=20
> When this problem occurs, suspending and resuming again doesn't appear to=
 fix
> the issue - only a reboot does.
>=20
> Environment:
>=20
> 00:02.0 VGA compatible controller: Intel Corporation HD Graphics 620 (rev=
 02)
> (prog-if 00 [VGA controller])
>         DeviceName: Intel Kabylake HD Graphics ULT GT2
>         Subsystem: Hewlett-Packard Company HD Graphics 620
>         Flags: bus master, fast devsel, latency 0, IRQ 130, IOMMU group 1
>         Memory at a0000000 (64-bit, non-prefetchable) [size=3D16M]
>         Memory at 90000000 (64-bit, prefetchable) [size=3D256M]
>         I/O ports at 4000 [size=3D64]
>         Expansion ROM at 000c0000 [virtual] [disabled] [size=3D128K]
>         Capabilities: [40] Vendor Specific Information: Len=3D0c <?>
>         Capabilities: [70] Express Root Complex Integrated Endpoint, MSI =
00
>         Capabilities: [ac] MSI: Enable+ Count=3D1/1 Maskable- 64bit-
>         Capabilities: [d0] Power Management version 2
>         Capabilities: [100] Process Address Space ID (PASID)
>         Capabilities: [200] Address Translation Service (ATS)
>         Capabilities: [300] Page Request Interface (PRI)
>         Kernel driver in use: i915
>         Kernel modules: i915
>=20
> Debian Bullseye (stable), Xorg 1.20.11, libdrm 2.4.104, intel xorg driver
> 2.99.917+git20200714.
>=20
> Kernel messages related to DRM:
>=20
> Linux version 5.10.0-19-amd64 (debian-kernel@lists.debian.org) (gcc-10 (D=
ebian 1
> 0.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2) #1 SMP=
 Debian
>  5.10.149-1 (2022-10-17)
> ...
> i915 0000:00:02.0: [drm] VT-d active for gfx access checking generic (900=
00000
> 408000) vs hw (a0000000 1000000) checking generic (90000000 408000) vs hw
> (90000000 10000000)
> fb0: switching to inteldrmfb from EFI VGA
> Console: switching to colour dummy device 80x25
> i915 0000:00:02.0: vgaarb: deactivate vga console
> i915 0000:00:02.0: vgaarb: changed VGA decodes:
> olddecodes=3Dio+mem,decodes=3Dio+mem:owns=3Dio+mem
> i915 0000:00:02.0: firmware: direct-loading firmware i915/kbl_dmc_ver1_04=
.bin
> i915 0000:00:02.0: [drm] Finished loading DMC firmware
> i915/kbl_dmc_ver1_04.bin (v1.4) [drm] Initialized i915 1.6.0 20200917 for
> 0000:00:02.0 on minor 0
> ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
> input: Video Bus as
> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input6
> fbcon: i915drmfb (fb0) is primary device
> Console: switching to colour frame buffer device 170x48
> i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device mei_hdcp
> 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound 0000:00:02.0 (op=
s
> i915_hdcp_component_ops [i915]) snd_hda_intel 0000:00:1f.3: bound
> 0000:00:02.0 (ops i915_audio_component_bind_ops [i915]) (NULL device *):
> firmware: direct-loading firmware i915/kbl_dmc_ver1_04.bin mei_hdcp
> 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound 0000:00:02.0 ( o=
ps
> i915_hdcp_component_ops [i915])
>=20
> The last two lines repeat each time the system is suspended/resumed.
>=20
> No errors or warnings appear to be logged either from the kernel nor in t=
he Xorg
> log file specific to i915 (there's the usual Xorg whinging about the syst=
em being
> too slow... so an i5-7200U 2.5GHz isn't fast enough for Xorg!)
>=20
> It feels like some setting within the Intel GPU hardware that controls me=
mory
> access timing isn't being properly restored.
>=20
> Is this a known issue?
>=20
> Thanks.
>=20
> Russell.
>=20
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

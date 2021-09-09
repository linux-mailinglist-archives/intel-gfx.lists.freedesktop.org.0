Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF95404609
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 09:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31686E44F;
	Thu,  9 Sep 2021 07:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90DC26E44F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 07:17:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="218850213"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="218850213"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 00:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="693994399"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 09 Sep 2021 00:17:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 00:17:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 00:17:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 9 Sep 2021 00:17:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 9 Sep 2021 00:17:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Buk/vHmhEQwBy66+hu/kjdEqxUvrqyJuj8iuP9Rsa34f7QrfowpkHbUYErbhmT/4VgWH1dkQnrHmizGJkba2l20cifkyr+hXcf2ncadopLD6bdTWLG1aXM1fHjEuRzcTxm4VKHSLNGoNEax5dm1dayN+RowYaofuf73ohU3nIdQs444JyXKLwyTEdrBr4/gkASLUPnX03U7gYWA6XlajQ083MDscr3S2fLBIQhTlvdfc0KLem5daEBIDCGPMKyoYD0VIZfg5H+hCj+mkQaczNYbKJP0XfIrfkUqLkfzOpG84Og1ELDWg411qWP/enHd01nsKkhC1KaY/lVTzuq7HCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=XI4DII4ht/FSGH+rpM8SSlfE4LP8+2Sjsx9Cfg5bS7E=;
 b=kMrWn75S8domIapnLIZaANNcwh+9USV5QVnfEp+jZDezX3kYkj6MurH+VtlKd9LGuPIedVuIgYwLxMD8+oL4KN2vorHVZ1AfOpsOsYgmoQIFm6aOxPDF9nuO4bSEC1OoWknJBYfU45cZeQwHz4tLshAFbuOzzjC8R/alS01gvQmFEdZ+P4/z3kFeOtf0WrlF/dwIBTOuc0l1bnc7CZ+l095BPNEVEVPvG7XMKWGEyXsTbBD3MPTpWEWYCSfSRSsOx697wAMAosiHmtE8/WwyMV35eeEq9HXkARC2eIaTa16IzuHdGMF75cG6Le5eUKXHfSjN4oE6qq7lBduRgiTykA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XI4DII4ht/FSGH+rpM8SSlfE4LP8+2Sjsx9Cfg5bS7E=;
 b=SMkeg/ylnLumaQb9eRnNO+3Ph0QsloTfGMliTP9EZ+nbYZJFRe0E2hOcEGXVmkhPC5tVXXKnJ5BZq+MfXkcb51NhPhDw5zm3h9A8U31mmv/hl3pZygxgKq7BfUiovKLo7qNqnmrBdKf8tqA7PlxjZmdJpvvTvDnGfv/cC9N+0bc=
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DM8PR11MB5638.namprd11.prod.outlook.com (2603:10b6:8:27::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.25; Thu, 9 Sep 2021 07:17:46 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::1b3:4f2d:67a3:1a20]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::1b3:4f2d:67a3:1a20%2]) with mapi id 15.20.4500.016; Thu, 9 Sep 2021
 07:17:46 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Dave Airlie <airlied@gmail.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 00/23] i915/display: split and constify
 vtable (v3)
Thread-Index: AQHXpR2LyPyHrrb3EE6lEKELMgQ6CaubSmEA
Date: Thu, 9 Sep 2021 07:17:46 +0000
Message-ID: <DM8PR11MB56559E47F6B27EA3CF85E772E0D59@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20210909015322.2988500-1-airlied@gmail.com>
In-Reply-To: <20210909015322.2988500-1-airlied@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8a036a2-0fd4-4b7b-1b0a-08d97361ec4c
x-ms-traffictypediagnostic: DM8PR11MB5638:
x-microsoft-antispam-prvs: <DM8PR11MB563889270E1F18740778EF1EE0D59@DM8PR11MB5638.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bZlEiwROK/wWendwLEozifF3otZwyd09mRoCimuJFmIMDltEpapEoK9+9MH0abN4zHov8JKj4Y+V5kCiuBjZJYVusJxmy9TiuRWzqUC78SQ1HlA2+RIbH2ubb4SkgFDak0um9ZimWp2nB4OO+Pc34k5Gfusy5PVOdL5WHQF90Dm8IEriCq3+pCrjFSIp4r1Y1DL3jMiTRcXX+bLcCyJdagurUIfGOjxSGfFLc9Bz7tXbJtZsljlaU1UxkoSjaPRF7ZeQO6grhTfGfOI+exebdv2N6/5RBI4rEmIBTlzHcRRQDlh/BKutTjhGfXpfcJxKBEk73p+1q1WPyTu3xqkQLvQvwYiV4hvrVPZNHcq7bkNQNLMvtPf04YHmKV1JqjyGFFdUP/h9tJZEUtU7sj0GKigePl9lzut4ZBFCUThKV7gvS7qXABQDXKk6/OttGor72FNztDtcWPRTLaqAZdR5fDabBjSpkGYr86ZGOwYhruc4sOmiRO4KLUG8aY4gzHA4olUh4yIYP8ahZEGsHH30h9AAKJ+m2qsdeitNkcjkG8CcoeDvoYQkrKR0RmhhouqVtfVhKQYqG0qmb+wFXFcVydWWf5+cfkqNYQMxeTOpUiL2V1ZGQk2UkrmhttSCz0Rf7ZqHihufJkh9XKbHx8Rxy6opz5QPEK5SoiSJ56UHpIs4RDRaCkzoUNlhMdXrb4j6XZd//Ujd/SIrgTB/OWj6IrzTd8SDqTN6aXY8I1yy70U8a7DINW1gY9nnQrZ0JXjpIwxjwjy0RA00Ku6NFwfu3vvxTdVWijvjuWrqG8PjqDE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(396003)(346002)(376002)(136003)(8936002)(110136005)(4326008)(8676002)(76116006)(2906002)(71200400001)(9686003)(478600001)(38070700005)(186003)(55016002)(83380400001)(86362001)(966005)(316002)(6506007)(66446008)(7696005)(66476007)(66556008)(64756008)(5660300002)(66946007)(33656002)(52536014)(26005)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+oP1z7PpUxN8sveecq0RcwJ74XgD7IgDrYqlqG4S1g78Bdgt3JSZOOtNisio?=
 =?us-ascii?Q?3zOa+hQt1cNNfaV/sWo0ANe4o+nZJN9ghDVgJD7GRueKaDI8+yBu5lN1na8m?=
 =?us-ascii?Q?N5Lm9HZgnGVDOAZkSP25m9+U2UahLLvQZieY/HOKASbkr2bGbIeBzAgb6FuK?=
 =?us-ascii?Q?h+g85BqFeVfkHeapnoecVUSZ678W7g+EILD4dVTxcNWVzPLVSYcTX2RXVZ4Y?=
 =?us-ascii?Q?xCCApy66PwCVSoEDPtDrb/DoOCAO8LcdvVfu1wfEh0k+64r1JkEx9AhGzxq+?=
 =?us-ascii?Q?difFDQJG/5S4pu5CFTY/W/VFmjkSen0ECbPPh7BVKnSEl3BuRknocob4ZEOV?=
 =?us-ascii?Q?gDo2AAeaWVf9gG+Npc80Kdbh4gILpXLHKQde0yN2pIuR4sm5y81iez/Rgpk6?=
 =?us-ascii?Q?BaE88eCK+VaHHsfE+1gL0i4sxq0nP+osoKclBBbehpNjLMnrlfsjFsEvYMOZ?=
 =?us-ascii?Q?lGp7Z6mOCot5ogMYacVHXw6Civ7neowGUmGN5QMLWGmTBtkr2fR6hjTUhE8J?=
 =?us-ascii?Q?EecdP82iRwitxq0/+/v8Z05AIaV4Ifu7f+a6o859HGdOO41c3cb7Ra6EoOK6?=
 =?us-ascii?Q?eS+kHs9YiHGXz097j/kKXoR9jhPDloGMMnIpsNBfj6ME7ELBKdCXWRtNkO0b?=
 =?us-ascii?Q?KstuAoim4fXy1BhutNV3soM9JEiz/Gt2zr8Xm5Q/FldTcoS+WUolE9u1z3rC?=
 =?us-ascii?Q?5k/1Fg06mvKQ0G/p2H6WrAok5Y9Bh31xrxv5+R3kUEJMa+hvb5JHz3PnemK4?=
 =?us-ascii?Q?ZYhsaKsyqCGNFwjum7vsxwKi+XwVdgAzx9MQDKvV0Vs442LJ0trjA7LI5A1D?=
 =?us-ascii?Q?krpqXMAQ/g8wKWP1YnN8zsOMSMEG8YJgmolamJaiXnBdL8C2GY3U+cPr5tkH?=
 =?us-ascii?Q?NmRW6DZ33P1NDcjrLbV/G1EiXKD5oex4641sYWPy7Tok1q4zI2oGi23rULqp?=
 =?us-ascii?Q?RhZb6XlftlqKXV0OCKAaiZ0t2Evkp3gpMmOLkUSeBn8yZcQR/hPOJR/S4k6o?=
 =?us-ascii?Q?UC1q+xp6Ftfk0cqS3rx2RMkb7KOawzP3bQ9kpbcwI+pgul7ZV2OTlP6q1G4q?=
 =?us-ascii?Q?lAAEfGy8IP5IYKPwht5ENSkdfBX6WA73ozrCbgw0nZ/LnpGue6qj2LLBQMJ+?=
 =?us-ascii?Q?0RQ03fd40Nrd/XSJ32ffC9/vcyPrpoboi4QEWCPaaXI0Y26AYEgiT9RjoCVp?=
 =?us-ascii?Q?zPlluWDsgWPITycmEY/jKJFv49y8hpcrcf25VU7ur1+wg+vfZiY+PuzUaqv1?=
 =?us-ascii?Q?NYpNDe0ZsrsntwF2CoApyByuuNv1lTXictAliZTGbRvhjtU6fXmBc9hgQ3uC?=
 =?us-ascii?Q?RAk=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8a036a2-0fd4-4b7b-1b0a-08d97361ec4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2021 07:17:46.1803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iE1aoaDFbn7Evma71w7P/0Jp4LrCzUO/g13Xwp2TzVuBKXwyqJqQDobi0PrC9WDAL8nBbIISxT55cMSt2a82qQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5638
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/23] i915/display: split and constify
 vtable (v3)
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

Hi,=20

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Da=
ve Airlie
> Sent: torstai 9. syyskuuta 2021 4.53
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com
> Subject: [Intel-gfx] [PATCH 00/23] i915/display: split and constify vtabl=
e (v3)
>=20
> (v3 just adds some missing ,)
>=20
>       Details below, I've taken all the review feedback (thanks Jani).
> I added 3 patches moving to wrappers before refactoring, and one other pa=
tch is
> unreviewed (07) but the main comment was wanting the wrappers.
>=20
> Jani if you are happy with the final 4 patches can you land this series, =
I don't think I
> have drm-intel commit rights.
Not right Jani to answer but in my view CI in not healthy at all if looking=
 from:=20
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/index.html?=20
See taints in the boot.=20

>=20
> v1:
> This is orthogonal to my display ptr refactoring and should probably be a=
pplied first.
>=20
> The display funcs vtable was a bit of mess, lots of intermixing of intern=
al display
> functionality and interfaces to watermarks/irqs.
>=20
> It's also considered not great security practice to leave writeable funct=
ion pointers
> around for exploits to get into.
>=20
> This series attempts to address both problems, first there are a few clea=
nups, then it
> splits the function table into multiple pieces.
> Some of the splits might be bikesheds but I think we should apply first a=
nd merge
> things later if there is good reason.
>=20
> The second half converts all the vtables to static const structs, I've us=
ed macros in
> some of them to make it less messy, the cdclk one is probably the worst o=
ne.
>=20
> v2:
> Added some patches adding wrappers around things before refactoring them =
as
> suggested by Jani.
> Fixed up all struct names as suggested by Jani.
> Added s-o-b lines
> Added commit msgs.
>=20
> v3:
> added missing , (Jani)
>=20
> Dave.
>=20


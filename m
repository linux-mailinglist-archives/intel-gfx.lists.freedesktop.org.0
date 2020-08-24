Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23698250867
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 20:47:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880226E478;
	Mon, 24 Aug 2020 18:47:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED7C6E478
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 18:47:05 +0000 (UTC)
IronPort-SDR: mvGL+sDyegw6ZzsrtXPWXijYlOQp0/JBpq1AUX2xFrH8UTDHmQFkEuKKw4hnX+bt+wH/m1xBGJ
 ZNv0gBTYrfNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="136034359"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="136034359"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 11:47:05 -0700
IronPort-SDR: GAMXTjRXLqrmOsT0wlVql0yapMsmsL8Qea3AE4OYAOqoRkAKuueCySTSartsdzR0R0JOK91BML
 X2kN4mKvb8wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="338532644"
Received: from fmsmsx601-2.cps.intel.com (HELO fmsmsx601.amr.corp.intel.com)
 ([10.18.84.211])
 by orsmga007.jf.intel.com with ESMTP; 24 Aug 2020 11:47:05 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 24 Aug 2020 11:47:04 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 24 Aug 2020 11:47:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 FMSMSX157.amr.corp.intel.com (10.18.116.73) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Aug 2020 11:47:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 24 Aug 2020 11:47:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UV/u/5xqxE0PoAH9Xfzo0lY8HQHYYpF6ZC5gATPYGqdTcIAWOzTZ23SDdOVfea8CP1RP/Ac+e/QQ2qMY9UfU1y9KlV6FaX+W07ut9ut2wl1cjZp7D0wCoY6Ct75SeZgWCV7VGlQ0qad0siJ5w7zp7vTNv6Ek1OmlAf/ZcowEzRYvVhNqkw+fWhjTbm7yMn5TP4HlIAE8WIL/sBHWCOaWZsTqclPgOJpCpp991lTbJU6ytahFrtzP2PNqi1W5QxdGay2ceSJpz7/6q4H0THISiZ8GExj4Cwl2mM1IndJYQttUdIsn1yz/oUBQ5lBq/hpo5eNkM3do2wWUnijOtGNhoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bO9eixm6MfptYZsqDeDlqBNaMtkzirJubbdPrOO8LGs=;
 b=bi6V9CFqV3Fzcg1I35wlBwDGVHxzwYWm+Yg/Bof6uK5Zbb4I5I6Z2At0vgYymB52vmsK6F7LWFwNbq0+FYBMu80eYq/RjK00FHYMyC+pqaTbEXnNSANSmfUaGi9qQV0G29gmWgIULJUmt3QhXe5cen7yf/6rSDimSFYUgQPKbW1xM1zilGZcwNT6owFuvrvETABqpmKcNwrc8MwmJZ6ZQWnLy1qKZDS3Yw3ouqHU3j7DqqL0vi8GRUHUMhJ5bUqDG3mYH8cBJp1Q5QcPZt8yuYa34wkyFVOheSaT3s//8xaXu2QMKLTeoBx0AABOpXb2JZT/TJwaNfbaudw6CDlwNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bO9eixm6MfptYZsqDeDlqBNaMtkzirJubbdPrOO8LGs=;
 b=ZIJ8hhFktNkpG0L1pXjD4gP2ttutmc340pQ6ZRExNh7fiBqiMxgX/1XYwBPL8+gnZUe50fX8mT87zLt1VJaglN5AvOJfvPa37Hcp5AItljaYQfNB/dE2b3xKql4YwE+HLWboyuI0GSB1DGgNLdDZFEze113hXLQMHl376ajxEQw=
Received: from BYAPR11MB3190.namprd11.prod.outlook.com (2603:10b6:a03:7b::17)
 by BYAPR11MB2805.namprd11.prod.outlook.com (2603:10b6:a02:c1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.26; Mon, 24 Aug
 2020 18:46:58 +0000
Received: from BYAPR11MB3190.namprd11.prod.outlook.com
 ([fe80::5500:d278:6406:ccbf]) by BYAPR11MB3190.namprd11.prod.outlook.com
 ([fe80::5500:d278:6406:ccbf%3]) with mapi id 15.20.3305.026; Mon, 24 Aug 2020
 18:46:58 +0000
From: "Runyan, Arthur J" <arthur.j.runyan@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Thread-Topic: [Regression] "drm/i915: Implement display w/a #1143" breaks HDMI
 on ASUS GL552VW
Thread-Index: AQHWekEQElZZGJc9cUOVD8u3Sx85B6lHmDOQ
Date: Mon, 24 Aug 2020 18:46:58 +0000
Message-ID: <BYAPR11MB31903D08E7BF1B2084309E80B2560@BYAPR11MB3190.namprd11.prod.outlook.com>
References: <844BC1FA-9C2F-4AAF-A0D9-B9A1EA40F51D@canonical.com>
 <32B7CFB3-045A-463D-8556-A63BACEB89D1@intel.com>
 <BYAPR11MB31902A8155BE70687A93FAFAB2430@BYAPR11MB3190.namprd11.prod.outlook.com>
 <DF870FF7-4EAD-48B3-8159-27359BD7B02B@canonical.com>
 <BYAPR11MB3190EA6507BFF7C7D8294C02B25E0@BYAPR11MB3190.namprd11.prod.outlook.com>
 <30685BA7-1D02-48A0-9B7A-4933ED2B8F0D@canonical.com>
 <20200824180438.GI6112@intel.com>
In-Reply-To: <20200824180438.GI6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.2.83.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f76d172f-01cd-404b-e7c6-08d8485e14da
x-ms-traffictypediagnostic: BYAPR11MB2805:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2805E274255C5F77D0FC0926B2560@BYAPR11MB2805.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P/x2oI2An80aPWc9ev8qnCHYnIslet6KdnQHStQ9NHEXFG/6E7Wo3iZp8qLJSkQSUu9dJhLV5BjDe4fPu6WQugRics3+NSsdBNTuf9zI11z4sULQFp1U3b9F+rlt/oBsgeBdDTNPjjCXfBvgII0IXJNbleLd3B67XesVCeZM7TbZE2bgFZnaGdUW5CeY3JJevH9+0wwD9xmLRhSXovpMbU/RBJtsv/JEMIJAe10XpBFaqyNgnO3w65knXhdRge0D13GoSHFFAii3p5bwq9R9bj2SgxRrbpRZhp1cH3zt04rSbZPaxEV7taRVdD3FtTyq0xEpW/MXGXDaJh4JyWijGv4PGumzsw99WZv6Qd16e2gpV/5tp+kedKTkrhJaUDGnDQrxKwNPe7IPhOMorCHnvg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3190.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(366004)(346002)(396003)(136003)(66446008)(52536014)(64756008)(316002)(8936002)(186003)(9686003)(26005)(8676002)(55016002)(5660300002)(33656002)(7696005)(54906003)(110136005)(4326008)(83380400001)(66574015)(71200400001)(66476007)(478600001)(966005)(66556008)(2906002)(66946007)(53546011)(86362001)(76116006)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: +dPB4nSqDxPC0SEl84f1wHwT8ga2kO6w/5DIm/U6DxdZy0F2erTLOj6qKrfJxM2zHDWEaU5bH/HkLHvFMYG/UZ/mXFOjsYb1u2gm7N8k9crproLe/yDKoPYiWbPoUe1nsrX0COXLO4YSA8DDgRoETJ8oSaq06BxlR7taXCrr++CYzFIH5VAihDGBX6iS9+W8omW1+iZWFlJmNDlrGgvlnAu+h+KF0UeYz7Y9WxE7hnG+JDCmkY3b9Xw8cITczG/9T0I8sd2wgJV0RuRbpI5q9RwjR6DVbRplCD2ldyDj5RjKBosZT130yTujYl/9lq2xm0OVyLA0Lc6NPBIM8ttPBylJzPdC+u7Mq2Md9Wh5fabgsMGlG2LXHugz1iJOBoPBeeAamX3CMQzOBLiY4o5+2s2gjKWuQCh6mlUoCzUf27CpS5lYVeYHWnL7oGSShcBnvJOGVAdPqY625X6087Zhu9zpv66+5wJriIAGYP7+J+pYHcZ6Iy3eu3/DVfRVwO3ZsMSYFT6OkYsTPjrG4xTqt0B3k1QEGyVXJhewiRw99umvl3on7k6aGflVduBLTY2WE02v1uy1uOOla/Aw1MFX8j5qakihQPSIlhm7vBP/icg4PkF6/Yc6PObIQUCSdvIbNmJ75cy4I6XLvN1WDGdNdg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3190.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f76d172f-01cd-404b-e7c6-08d8485e14da
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2020 18:46:58.5652 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5/Pi7y1NXzA2uFYlINiipe0NIU9TMTlRqRB2rRS2QCXZZCiOlLk24w87FIqJBqmUyscSJKwJX71rUa/mfE0TRmDg7skc8RQtlnqH95qQ1gQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Regression] "drm/i915: Implement display w/a
 #1143" breaks HDMI on ASUS GL552VW
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I remember some strangeness about the blnclegdisbl.  I'll see if I can dig =
up some more.

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> =

Sent: Monday, August 24, 2020 11:05 AM
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Cc: Runyan, Arthur J <arthur.j.runyan@intel.com>; Vivi, Rodrigo <rodrigo.vi=
vi@intel.com>; intel-gfx <intel-gfx@lists.freedesktop.org>
Subject: Re: [Regression] "drm/i915: Implement display w/a #1143" breaks HD=
MI on ASUS GL552VW

On Mon, Aug 17, 2020 at 02:17:49PM +0800, Kai-Heng Feng wrote:
> =

> =

> > On Aug 17, 2020, at 00:22, Runyan, Arthur J <arthur.j.runyan@intel.com>=
 wrote:
> > =

> > You'll need to read out the DDI_BUF_TRANS_* and DISPIO_CR_TX_BMU_CR0 re=
gisters at boot before i915 programs them and compare with what driver prog=
rams.  =

> > Rodrigo can probably show you how. =

> =

> Right, I'll wait for a patch then :)

To grab the BIOS reg values we just have to make sure the driver doesn't lo=
ad. Eg. pass something like "modprobe.blacklist=3Di915,snd_hda_intel 3" to =
the kernel cmdline (+ whatever other magic ubuntu might require). Confirm w=
ith something like "lsmod | grep i915" to make sure the driver didn't sneak=
 in despite our best efforts.

Then we can dump the registers with intel_reg from igt-gpu-tools:
intel_reg read --count 20 0x64E00 0x64E60 0x64EC0 0x64F20 0x64F80 intel_reg=
 read 0x64000 0x64100 0x64200 0x64300 0x64400 0x6C00C

The only somewhat suspicious thing I noticed is that we treat DISPIO_CR_TX_=
BMU_CR0:tx_blnclegdisbl as a bitmask (bit 23 -> DDI A, bit 24 -> DDI B, etc=
.) whereas the spec seems to be saying that we should just zero out all the=
 bits of tx_blnclegdisbl when any DDI needs iboost. Art, is our interpretat=
ion of the bits correct or just a fairy tale?

> =

> Kai-Heng
> =

> > =

> > -----Original Message-----
> > From: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > Sent: Thursday, August 13, 2020 10:14 PM
> > To: Runyan, Arthur J <arthur.j.runyan@intel.com>
> > Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Ville Syrj=E4l=E4 =

> > <ville.syrjala@linux.intel.com>; intel-gfx =

> > <intel-gfx@lists.freedesktop.org>
> > Subject: Re: [Regression] "drm/i915: Implement display w/a #1143" =

> > breaks HDMI on ASUS GL552VW
> > =

> > Hi,
> > =

> >> On Aug 14, 2020, at 01:56, Runyan, Arthur J <arthur.j.runyan@intel.com=
> wrote:
> >> =

> >> The workaround is freeing up stuck vswing values to let new vswing pro=
gramming kick in.  Maybe the new vswing values are wrong.
> >> Try checking the vswing that driver programs against what BIOS/GOP pro=
grams.
> > =

> > Do you mean to print out value of I915_READ()?
> > val =3D I915_READ(CHICKEN_TRANS(transcoder));
> > =

> > Kai-Heng
> > =

> >> =

> >> -----Original Message-----
> >> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> >> Sent: Thursday, August 13, 2020 9:50 AM
> >> To: Kai-Heng Feng <kai.heng.feng@canonical.com>; Runyan, Arthur J =

> >> <arthur.j.runyan@intel.com>
> >> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; intel-gfx =

> >> <intel-gfx@lists.freedesktop.org>
> >> Subject: Re: [Regression] "drm/i915: Implement display w/a #1143" =

> >> breaks HDMI on ASUS GL552VW
> >> =

> >> Art, any comment here?
> >> =

> >> I just checked and the  W/a 1143 is implemented as described, but it i=
s failing HDMI on this hybrid system.
> >> =

> >>> On Aug 12, 2020, at 9:07 PM, Kai-Heng Feng <kai.heng.feng@canonical.c=
om> wrote:
> >>> =

> >>> Hi,
> >>> =

> >>> There's a regression reported that HDMI output stops working after os=
 upgrade:
> >>> https://bugs.launchpad.net/bugs/1871721
> >>> =

> >>> Here's the bisect result:
> >>> 0519c102f5285476d7868a387bdb6c58385e4074 is the first bad commit =

> >>> commit 0519c102f5285476d7868a387bdb6c58385e4074
> >>> Author: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >>> Date:   Mon Jan 22 19:41:31 2018 +0200
> >>> =

> >>>  drm/i915: Implement display w/a #1143
> >>> =

> >>>  Apparently SKL/KBL/CFL need some manual help to get the  =

> >>> programmed HDMI vswing to stick. Implement the relevant  =

> >>> workaround (display w/a #1143).
> >>> =

> >>>  Note that the relevant chicken bits live in a transcoder register  =

> >>> even though the bits affect a specific DDI port rather than a  =

> >>> specific transcoder. Hence we must pick the correct transcoder  =

> >>> register instance based on the port rather than based on the  =

> >>> cpu_transcoder.
> >>> =

> >>>  Also note that for completeness I included support for DDI A/E  =

> >>> in the code even though we never have HDMI on those ports.
> >>> =

> >>>  v2: CFL needs the w/a as well (Rodrigo and Art)
> >>> =

> >>>  Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >>>  Cc: Art Runyan <arthur.j.runyan@intel.com>
> >>>  Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >>>  Link: =

> >>> https://patchwork.freedesktop.org/patch/msgid/20180122174131.28046
> >>> -1-ville.syrjala@linux.intel.com
> >>>  Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >>> =

> >>> =

> >>> dmesg from drm-tip with drm.debug=3D0xe can be found here:
> >>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/comme
> >>> nts
> >>> /
> >>> 64
> >>> =

> >>> Kai-Heng
> >> =

> >> =

> > =


--
Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

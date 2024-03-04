Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E2286FE45
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 11:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0750310FF0D;
	Mon,  4 Mar 2024 10:03:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cgGXwthQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13AE010FF0B
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 10:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709546597; x=1741082597;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z7cLx5cf8z1Pl5PGX3hFcd6/qzXtxT6vplX4KorwO/M=;
 b=cgGXwthQWqNwszCahUUBYwOoB0sfXGU2Ci+jwweqd67Whl7xT3uwUsbX
 +OONGznwf5AOuz8hACD0maU2zDEZtPpQLNuUB1ly52g+7kXM2ZzstosP7
 Ll5yT9HqRji2je9wqE/FonGGxXemOdgjZITW4fDJoohXY8eeWv9Y9HQxo
 Z7uJMD1vOkY+1GtSCUYn57tOn2L/zlMsHoZ/PczO05Mg5ybHG1H0buzjO
 CpBGUbgatbwYkUCDnZZaVp6Jz1iNA8Z4AgIiUjyFCpCA83fdPhZGhRnq3
 T5K5RWEO6LVeN6QHKxvmzZFzk3W3tmEwv/ytFjI/HmUbo1jOsw4/GMmO/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="3954420"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="3954420"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 02:03:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="46457244"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 02:03:16 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 02:03:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 02:03:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 02:03:15 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 02:03:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TnRkvxQSMXhVxv1tPxiuMOPTJe8QvNXIQYyJ+zdRzSHHTF5ut6r9sSOW12F1LkhjBlb5lc3iGYlhOpe+vwEEdTzVX8y9FHxK0gcAKu9p3JYoA47Oi1WGzwzXKC6Hhz/zTWJGBNt+kF1IcM4kAMhb/B4txlR8Tfc8A/gwKQTkND91HQTuQl6IciPBZS4cLqqs4qEqSV8QKivkDot05XBuzigRN03vKUJQkUBzcDHMF67R04AKibDyN9LGgutqkz35wQWomUMU/p6hlyB7cTL+4vni9fFV7YR63nvcOuaTgPoxQ04F5+vnIcpFKdriELYkCGfqTYAKjJjbdV4NOJRv1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BuGs5vy7Szwcs7nGvUbCkdH6SEM6DsW8XISiU1ieyVc=;
 b=UoATjySc9iC9ssoH5xB00fN+x8tNTyPbfOEkMYoNEnQa0WlXpPWe3xDTTX60rPwOkT86xxbPNrCgNqKnDXilwfbfBvTYMKMxinpg7+qh+/eZXBsghlKPWD6I/iuz33mIZUVkmHJVqgoeoGHLgMTReI6NJEkAlCtpQKBe0wl2XinW7FJdwju2pzpwBo0rOU7Rj1e3r/MUEH1C/HTYSlRV0zrqzkdXsPdsluzWfRL5GSJbUX62wvSjtSiLg8AE6OYmZVpvtUAPbKL1GitcqIEE52K9yNWla0hmcqYceyXemNMIE6UAhiwtA1dt8jqW1k/zKXrkrIMm4s/737wDqFyYxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH8PR11MB7071.namprd11.prod.outlook.com (2603:10b6:510:215::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.22; Mon, 4 Mar
 2024 10:03:13 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%5]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 10:03:13 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Matthew Wilcox <willy@infradead.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: Regression on linux-next (next-20240228)
Thread-Topic: Regression on linux-next (next-20240228)
Thread-Index: Adpt7cuPPMBR1f+2T1On00uzl1C9NAACv5+AAAhXahA=
Date: Mon, 4 Mar 2024 10:03:13 +0000
Message-ID: <SJ1PR11MB6129A8999D977A46D6E9CA4AB9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61292145F3B79DA58ADDDA63B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZeVis2823T4YllDg@casper.infradead.org>
In-Reply-To: <ZeVis2823T4YllDg@casper.infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH8PR11MB7071:EE_
x-ms-office365-filtering-correlation-id: 0c2ca365-48a3-41f7-d51c-08dc3c324e01
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GCREOAgEMOuD0nJhj5CxUg8S5ysogKfeaG94veqfNMig6F79Xoys4asy2RM7XOl1H/hTSMOCjtXg1/dRa0qvPjlQgDekST8pMWmdMiVYIrercc6t/Vc8BVtmYWSUmlO5nAbV9raGPkgkXrKHEsR/QKujk2K9W/EhtSpN9rc7J7H85SXslLkVSkGsiGKdCqq2Uiem0xKHFOay13qHboD7M2ox1kDbsqvDDjIgDv3maqUAXk9tS8cEiA2uuJNfw+nYEU6yp9l4XzVgBr0A78Vym/oWOmNfTA8i/+0q0Nhqdjhi8V+K3gy7YL1d5IqoI0ATx3PbO6sRuwel0PLv21IC3xXRXmbTNkzbtgSHd68kdH8MyEpq/oxrxTHIw8lbak30jJwTpotTRZq9So8V5rqqDb1YH8LwcJ0azjrAgyTv5BinmZb25pHuLZHgDsv6Z2Oa1wjilZkdquqMs+3AZgpXtVwr8WPZRhYK6fDzhyI3vUz4pDif1jLfD1ZKUWiJ2EsDXXWW+ep1nek5uDP3Fff+/qpnbfWmDJcdOE3OYXxWVxm5Ng1Ayn6PT+krT11msEUbA5d/cvQuLvjyJQCnwvAsI6i8L2UN2c6oxIig9cm8UQowS6q47U8Y7EBrcrzRJVjDI0NWFTN2slZSAXfVhLDVNlGBGOb4x49bkK0bwB07+OA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?nz59zL+didzgm0K5j9YyHEEcycQ+fkeoDWMEfvXmO7yA0O+n5+5ytxTNIJ?=
 =?iso-8859-1?Q?DGTQ7y1a0XMZlWuR6wwspt6H0II1NVgnwB/iuxv1zQstY6czSH+bltaxfE?=
 =?iso-8859-1?Q?XKoPHqE+pdNVqWdq82mPp6pwMF7EM8uWAxsjeREPJYxEMCYVAb3VeqiyAI?=
 =?iso-8859-1?Q?Drvl3ZvyMOq4UP4tF2CIfi/JVG8pQkZHx3cwX8iePwqALJbWx9uyxFNKf1?=
 =?iso-8859-1?Q?5JZvs1VHmw/iONqnbvUuq5gTkT1iakuwvNFf0CodpZR4I00XenCplvrDI1?=
 =?iso-8859-1?Q?yL5uAlAex/bxhoowe6pEjQEjGGp2ieHnSmCmCNmjy7003Ewz8XRLFJg6aM?=
 =?iso-8859-1?Q?5DmVgLueZ8OGIByOYcm9+cFNXh8+vVrok+DNTZhc/Gq/B6OA07N4qjEKcs?=
 =?iso-8859-1?Q?WjIJ6b+JVotpviGto0q8HrEGdIWVGEle+0+YVLX+Sr2ejA0GUJqBX96puz?=
 =?iso-8859-1?Q?rghMcyvBVrYYIsWsfDg5tDCH9lHtsD0dP0VFww+jp7C6wIklaFDYubYExb?=
 =?iso-8859-1?Q?1C677jKrWbgjutlZx8D+Rn1mz6cNcb5LwfSgwMjN2IpqD2nB+2inNUFIkI?=
 =?iso-8859-1?Q?m5qI1iXg5z+oiqGR+s+bYWkxd0u60D2y66Cno3scgS4w1LYQjRMkzzqxbh?=
 =?iso-8859-1?Q?Oxr1iUoHLw64qIS5axvVtBQhJE1OSreWuElkneVeQ6E7JsPn1enUhm+O8f?=
 =?iso-8859-1?Q?RkFVT7J6XruKgGLLG2epcnCGwFZA+8oWWgy9AnfJaQMqAiNHlbrJCg7xYY?=
 =?iso-8859-1?Q?Di11DpUH6nxzLtJWmYWm6kFGiw1BLJDRj4MZYU0smpybd4Bvp4BJEmYJb8?=
 =?iso-8859-1?Q?4hw+hRSSVWXKCdm0VuOu2+vMv8DZH2iPV8C1whwcLCNKbYhADyxArWt80g?=
 =?iso-8859-1?Q?xSjn6TuBbpnVYFJdU/CE248RZRIWL/E9rxaMSIljSYnd+VVmB+qpvs8xyJ?=
 =?iso-8859-1?Q?/R+er5zYxJ9M8pONvNKpimd9jppdXdSdYmCcTBIZpZ0RgdR7j0BPfLaZbE?=
 =?iso-8859-1?Q?dbeMZpC/bFR63x9euHaiSJ5BPRFXguhJf0ni9Fv5QeuY+CAcM+qVjZL9s3?=
 =?iso-8859-1?Q?kzugitypmXQLkpyPXScxX/nceYHGkovD4JVwqFbBJ4rcjyCGasJQy6ACpk?=
 =?iso-8859-1?Q?+y9kL8R7aQwRaQnd3e1YC4BDRHPG7Rs2SPMOh4XkFzctBpvMu0tYSqvWuD?=
 =?iso-8859-1?Q?nMt8QLhRNboLBd1Z1XCqrc04gRI6I7uZAs9S5iRveMPoTCGRXcTrWGO+et?=
 =?iso-8859-1?Q?OkheG9m8OoOjYWgb7eu0AGwLJG7icciO1wy4onLzaqqZmJFYvpLIjU6rGY?=
 =?iso-8859-1?Q?RmBJG/yzjia3piS11BkyxeSzX+M9zddlGFhdFRkpmy2DT6b8JWPA3C9+8y?=
 =?iso-8859-1?Q?924PyqRyieWEsp9CVvtR+wcmmO4UghYufZjeOVKDWfa5AWHZRxG19dazxe?=
 =?iso-8859-1?Q?PtuGO697ibsKcRuysdSkJIox7JkziK9TEQARAVpS+gezaxlTZEfRzx9bLv?=
 =?iso-8859-1?Q?mNcn5irZoSaY5P9ioQ5fNOZkiFdSEpO4cAhPdV1MUOcYlk25b62ZKtWE/V?=
 =?iso-8859-1?Q?5GlyMpyXOtrIjAv5TvICrhpMqWupcsQPsuqzf0vl/QWw07/a8HKaPu06wf?=
 =?iso-8859-1?Q?WVkpueAImmMGJuYe4yAUGx6rMjC72Sc2dpZI0t+MU6yVeu5R3VnA+q8Q?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c2ca365-48a3-41f7-d51c-08dc3c324e01
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2024 10:03:13.4281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nG+TstUBG0AjW7GZCrI76M6iz0x8O6ZoQ4DqiseM1YrknuObUSbk80yqzXxnDHKAkchq8BpCbbb8lWTOBw8gNf8J7JwQQc/sricyXaBV1pc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7071
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

Hello Mathew,

> -----Original Message-----
> From: Matthew Wilcox <willy@infradead.org>
> Sent: Monday, March 4, 2024 11:27 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
> Subject: Re: Regression on linux-next (next-20240228)
>=20
> On Mon, Mar 04, 2024 at 04:49:47AM +0000, Borah, Chaitanya Kumar
> wrote:
> > After bisecting the tree, the following patch [4] seems to be the first=
 "bad"
> > commit
> >
> > ``````````````````````````````````````````````````````````````````````
> > ```````````````````````````````````
> > commit ac7130117e8860081be88149061b5abb654d5759
> > Author: Matthew Wilcox (Oracle) mailto:willy@infradead.org
> > Date:=A0=A0 Tue Feb 27 17:42:41 2024 +0000
> >
> > =A0=A0=A0 mm: use free_unref_folios() in put_pages_list()
> >
> > =A0=A0=A0 Break up the list of folios into batches here so that the fol=
ios
> > are more
> > =A0=A0=A0 likely to be cache hot when doing the rest of the processing.
> >
> > =A0=A0=A0 Link:
> > https://lkml.kernel.org/r/20240227174254.710559-8-willy@infradead.org
> > =A0=A0=A0 Signed-off-by: Matthew Wilcox (Oracle) mailto:willy@infradead=
.org
> > ``````````````````````````````````````````````````````````````````````
> > ```````````````````````````````````
> >
> > We could not revert the patch because of a build errors but resetting
> > to the parent of the commit seems to fix the issue
> >
> > Could you please check why the patch causes this regression and provide=
 a
> fix if necessary?
>=20
> Could you try putting the two:
>=20
> -                       list_del(&folio->lru);
>=20
> statements back in and see if that fixes it?

That seems to fix it.

                if (!folio_put_testzero(folio))
+                       list_del(&folio->lru);
                        continue;
                if (folio_test_large(folio)) {
                        __folio_put_large(folio);
+                       list_del(&folio->lru);
                        continue;
                }
Regards

Chaitanya

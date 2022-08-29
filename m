Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A2C5A5267
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 18:59:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D0110E55D;
	Mon, 29 Aug 2022 16:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32AE810E55D
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 16:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661792352; x=1693328352;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qWkGFQF6TQZG47Dlmf29VXgXII+4VNROvYfXyP5ndRg=;
 b=J58YIOLssnzWlCNdf2jOoWn7gU8eQXwJGYqeXtIeO7SDHRiBYzm8IIfM
 CEAybl4e15PEX9RxE+VcmWgjVVW1Le6Q6i019oTI22DQHJO7xpsAmHiXh
 YZZHlJsueqmntNNleZWQfRYDIO6pTQIAZMGmVN6+srmthlVbOik7daK81
 V0UWck02xI+JBGQB+NevddubaYf6xqjAarw0hsLLMN9IUEEtl9q03EDkF
 JuJwuwVrOZwBxScJo/V7RN2BmTNcnjflj8XWbs4tMvpjjCDxJlPxhM2GB
 GzmLqxvRFXl7josV9PgRiuNrV4gF0whBq4DY3xeTsUJr9OHFW/Wq3PsPA w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="296222120"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="296222120"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 09:59:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="588230109"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 29 Aug 2022 09:59:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 29 Aug 2022 09:59:11 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 29 Aug 2022 09:59:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 29 Aug 2022 09:59:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 29 Aug 2022 09:59:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZRIctaXB77fMD0IfA1REpwS74GrPmhA5mNoz0TqjCLlaIG4acZEJ5UZ0TGOoKY3K/tBE0fWU3K7TTzEJWgYhbOukbidd40pc9mNPWknYZvovA0je0qSctgoHE5mgEtZ9kw8MK0rl9eRdGKlO0ulNRpERCSrvWlzCeRZS8n90VheAI9fZJIFMepWptCd1USpH3Z9z+HtheE1G/iNuC3xsv00gtzvxo+9Ak7dUuJPUqQHTffvfXsiB5IEUhogpl2RUTmpVZqXpCgkCevoopUJ1DHYQGe9uoRBpa7vrgdl5vh9WWYgpEOoLnZIy1lg/k4diZHANMoDvOw7Da8q5t669cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qWkGFQF6TQZG47Dlmf29VXgXII+4VNROvYfXyP5ndRg=;
 b=Z4UXfbBsf+338u4ZirAFlw0omC6zb5yLgomll+a4HuvBXHfdnga/D/5xAdMkBnlJrTMzp6MJDc1iIahwPADfxdzmeqgOvRAH1Yh4sEgC3gALG1/GYjnIoGzvJ6qSeT7MahLHY2z8GNGgNzIrOI5Q8R4XH69jcMBRQy9fh6wgHVPxipFU8lEtP20bsVLThjiacvqcnXhBXz6HImMetHkXEgS4TYrRIdoxOfUNGKYdusSDUgTXmTgJ7ORJP7x0/4Y3ChhIYAZ41OyH5cLmmLpqkkYi21DaOvynovnFOtE55hVKEW3TOHs4ObKM2AQZ/KnXKHczZNTIcoRld8jh5kwWrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by SA1PR11MB6823.namprd11.prod.outlook.com (2603:10b6:806:2b0::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Mon, 29 Aug
 2022 16:59:03 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::61c1:4020:d92d:bd06]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::61c1:4020:d92d:bd06%3]) with mapi id 15.20.5566.021; Mon, 29 Aug 2022
 16:59:03 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
Thread-Index: AQHYrkGU1vNkWWZqjkOsmkvx0TsbAK2zEyUAgAlXRvCAABRMcIADBiEAgAYCzdCAAIgNAIAAJJjA
Date: Mon, 29 Aug 2022 16:59:03 +0000
Message-ID: <MWHPR11MB19354481B30A597D39E662C1B2769@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20220812044724.12131-1-mitulkumar.ajitkumar.golani@intel.com>
 <Yvzj6otIylJ8nwoJ@ideak-desk.fi.intel.com>
 <MWHPR11MB19353E66246E6D9CB5F021D4B2709@MWHPR11MB1935.namprd11.prod.outlook.com>
 <MWHPR11MB193572EF5A173CC9F42861DDB2709@MWHPR11MB1935.namprd11.prod.outlook.com>
 <YwdURvTR2xakrFK0@ideak-desk.fi.intel.com>
 <MWHPR11MB1935880C25E9DDF3ED205669B2769@MWHPR11MB1935.namprd11.prod.outlook.com>
 <YwzRPkKSeeYXWtgn@ideak-desk.fi.intel.com>
In-Reply-To: <YwzRPkKSeeYXWtgn@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffce87fc-7912-40c4-7471-08da89dfc6c6
x-ms-traffictypediagnostic: SA1PR11MB6823:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xLHfp+MdrMACOe+8o0gVZWdHO6syVHDYUcw//XpETQ7vdaBrm/6cLYe57dRVJqLjD9ytZavKZ1zkdYSHi2luoCSCn2u6/nbHhU9GGj92iHTyzPrMPep6rHwRkpD+mi489uEyKs/Q/PKc5iEiBsFWiCPE0hVAUbFzGnnH+g6FTmQe8UQaUG/xXegrFOqgjGF9sM4HOz+VVmH9s9bdwxnsnxvnoLkIaPcnADBIXPnArmOHRgzN01dGIyt1dZaU9dmzQChsPcb3dRGNn5bzCJDfVkTfQpEqxBgQYwmvvwaxni0MeyuZCEtqh340L0lqD4U7v3yjYiZil4p57zIjjJMercc6bXU+/PHTF0jxB03W45Q1TvPRymQvt96o+frjl+FF/Z+CSW8TT0WinH+pLHcc60KUEJiTMbZjuuBInPiRRw6/G3fFjBWOosQz9/qg3L/MZ06AoG0eiVNNEhRk0t2kQd6zhr4jSPKqhEHwguzED4jLmyg7vG+BzQStneSC3xezUTudOMmhtFnVKam0na8KjEmkFmf9a14ffUAABfpZW1WHrWSflRZTb5CHhZPMWp0NT5w3QhAZvlYp9PyNy7Ubs6Zr1y/9pKvSFVwGCvIR1fep8EbUqhq/Nz2NNNwWl78iHY6rPmPKWCIDTBkYN+0TXBFv3wGA/1gjDjsrsr8Zk+M6b1lf1yq3Tya6kpv3w5bO9wLYF0HGEWu7IWZ6QAJH6Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(396003)(376002)(346002)(186003)(966005)(82960400001)(38070700005)(71200400001)(478600001)(6636002)(316002)(6862004)(66946007)(122000001)(38100700002)(7696005)(2906002)(76116006)(9686003)(8936002)(6506007)(55236004)(83380400001)(66556008)(64756008)(26005)(41300700001)(33656002)(53546011)(4326008)(66446008)(66476007)(86362001)(52536014)(8676002)(55016003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HHhPV6Q8Sp6L+dLVKjBHe+CDDhtK8k+xFF4/TblxapVMhEBMVymsPKZMt4jZ?=
 =?us-ascii?Q?RzYMUXfMuu2rCTS4MHvJXWzXNewo3YKQE2H6TG78Qjbp33Cbhu7gjc6iUxrI?=
 =?us-ascii?Q?i7+Gq3wK70DKcTzfSFUOuDBzZR1CYMXriIGZRqrXqdXNh5PxyMpiNmWhLDOo?=
 =?us-ascii?Q?Yu+nBpsoVLE5DY7/9BlPCBU50yanemjgtnXFq+vgv/4S3UY2xzvn7NtlfP+r?=
 =?us-ascii?Q?VDM9fYiKxbeymNynvzkkQy5MkFAXcwrNKPMQZKSJiVVGu4lFV1uD/1t6abVB?=
 =?us-ascii?Q?X2n6DgN/pGAsyesclcq7npEw20gmMj2bKAB2NoUE3GUFbrlaQ4pf/30LU0db?=
 =?us-ascii?Q?oNgr3Wbv6H+7VLE5GOM2X61boPznTSq72JmtcriZlYaqa3Qe0vjy52hQpQLu?=
 =?us-ascii?Q?UjYW+iLp0gLeuUn1R/mkwSl2pwciA/BCd/77eEUROxZMUh92oW93cQgf2oYc?=
 =?us-ascii?Q?01fMAO/kaka1knW/LrducuWRDz9L+9CBfx3SAcZjyYMkVsygGCXSwZu05NBR?=
 =?us-ascii?Q?A1bnLy9kH3HbY4ES09gTwQAPI68ZoGuIWcgmELP2hXJLBO18AFVNxamkiVBx?=
 =?us-ascii?Q?+H2TJOcWcHNzkagqxz5iOAF38sEErlTiA88O0YgC77qeY0q8S6SjDkyUMyuI?=
 =?us-ascii?Q?KqHxlt6q1pTP5G9A9AERE64uRfWyf3lsk+VF2EOy/qa5lp2mDEhh1ruKN3Sd?=
 =?us-ascii?Q?3RK1ePzhujqka6R0jgXvTa5Sx49CtBtCiQTwM3OGqFQ6usbE/CDDc8ku6S52?=
 =?us-ascii?Q?BNNHxj/0CJcdgYWouATcdopwmbkST1OyHgXHqA0UCCMbiW6rmYTHu9pCc8FZ?=
 =?us-ascii?Q?3hy4+x+fxTrTyKGoVGZFzH83kUlShGTEGP+2doHXYRGwcfaBxC/c/XeLhy0l?=
 =?us-ascii?Q?gOVpms9txfKvNKt024yTQXrJEUDqtUb+ksopc5aJVDqFZlzZD/3C2gktePcA?=
 =?us-ascii?Q?MVJVmKZFa3OjYW3cdCp9doUvyzfW9nc/XoSaDEv1lLJkHtWGOU/N51D6Ai+W?=
 =?us-ascii?Q?n2sfnl+v1czjEeL5cWRQIpiqCo/sw5jya73qu/HXR00+KGeMhAJeu5fkDyCe?=
 =?us-ascii?Q?HW0sPPULDTMxoKUs6OyFx/GyQ5kl11Ba1GRZK/9keGRCJt5yygsjPrE6VSjB?=
 =?us-ascii?Q?jmNPmPrt3CvS6BJbS7NuD0p0KNexhX+OmXS0LkP1WKfduwANrwR1fXOpOjRC?=
 =?us-ascii?Q?MpM+EkNADh3cE1iAWvdTvJCttyuh1R2fHOQ1+VzyHv66uvmv/W2SziO56Xz3?=
 =?us-ascii?Q?b+K3+0EeV89023q9o0xagCCJXXinXucGF7vcXnvZ+6X6HGphX+M5hShFRodc?=
 =?us-ascii?Q?w/KRLsCo9IYyPUGA4pDQWqCRWGKdaIu93stBOJN9iOfbkv4q46WMDMqJ73wT?=
 =?us-ascii?Q?7EKxC/kWsc6/Du1I2h9gLT/fpSBgO1ZjNcttJquXYlHQDnrUhkwP6E3ekG+k?=
 =?us-ascii?Q?pRjElDXURvJnOQ44+dkzKHdSHFE5km+2IdwimEKcMWrNGqdwXzDvl6lK04K+?=
 =?us-ascii?Q?lDpbeYhf42JfNPHvn/+8XKGX6FElz4BVp84TqbdG7HfMrR/xNCfY7PcdewtE?=
 =?us-ascii?Q?JarfNWCL5C1c/3ni7G2hhOGbyWu3Yd/5Htv2710L9MMBE1haQrb7C26DWoRn?=
 =?us-ascii?Q?NBUcfTSbiBUT0aXoqm5h94I=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffce87fc-7912-40c4-7471-08da89dfc6c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2022 16:59:03.1328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NQqIXJnz8GpFTQ0K/SD8AZF1MMe8/dTd1bBAXEWBRjN2NNwkAj4aqhTDh9zPguGFt4HhIEUteuVorKczUzbyGDrlLrBrDyAdre1IMTfHmp0eC9G1cLSXG1GNm6XfUyoG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6823
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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

Hi Imre,

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: 29 August 2022 20:16
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack =
for
> imbalance wakeref
>=20
> On Mon, Aug 29, 2022 at 09:45:53AM +0300, Golani, Mitulkumar Ajitkumar
> wrote:
> > Hi Imre,
> >
> > > [...]
> > > Still not sure what's going. Both i915_pci_probe() and
> > > i915_pci_remove()->i915_driver_remove() is called with a runtime PM
> > > reference - taken at local_pci_probe() and pci_device_remove() - and
> > > so the device should be runtime resumed at those points.
> > >
> >
> > Yes reference is being taken at local_pci_probe() and
> > pci_device_remove() but During i915_selftest@perf, it is loading and
> > unloading i915_pci_probe() and i915_pci_remove(), here
> > pci_device_remove() is not being called, that's why runtime PM referenc=
e is
> not present during i915_driver_remove().
>=20
> Ok, that explains it. Taking an actual RPM reference unconditionally in
> i915_driver_remove() should fix this (instead of the
> disable/enable_rpm_wakeref_asserts() calls there):
>=20
> wakeref =3D intel_runtime_pm_get();
> ...
> intel_runtime_pm_put(wakeref);
>=20
> While at it the same change should be applied in i915_driver_release() as
> well for consistency.
>=20

Thanks Imre. Verified on Target. This works.

Pushed changes : https://patchwork.freedesktop.org/patch/500180/?series=3D1=
07211&rev=3D6

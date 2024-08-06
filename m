Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BDD949852
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 21:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D852310E3DC;
	Tue,  6 Aug 2024 19:32:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BahDkn55";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CB7010E3DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2024 19:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722972761; x=1754508761;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vy2KOazYmPTHFVnaKHqvULvvP+ick6ZIFtROuqEXfMY=;
 b=BahDkn55s2rsiFCLTF978caQajstVAvug0lxxYFdMWcvrN9CVyaxwyIb
 Gz20prXv0BcYOPUjl2WH2/557uOuhyq5042f68awxFnLzytEUQ0CvP0Pj
 lSiaMml/MgaPqOzpN87wDr3xVTzs1fMG/onlC+oaACSRK1ni1hlI3XzZ9
 muh4KAgQ3aRfHlQevn5Ggj7X5GUCpKtvHRpVt/0MYShbsKX0m0idH704c
 cIDjWnltq7J9++UvKZTptn9EWyiSlJTtTN9KnAGMyDrpttUGwCxC0py1p
 poBzAvhSYcy1mcXMhE1wAkYu24c4+A/9DFGfQkM39dCWi8gvyeZxSye2S g==;
X-CSE-ConnectionGUID: 4PfQ6vPUQLih0qQhySf7Hw==
X-CSE-MsgGUID: ptyhA1/iQJyrqvO2+fCsMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31682616"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="31682616"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 12:32:41 -0700
X-CSE-ConnectionGUID: Bv/3G2/rQuCJwvRLPhG58A==
X-CSE-MsgGUID: WFJ7TrerTNWshslrAX8PEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56586629"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Aug 2024 12:32:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 12:32:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 6 Aug 2024 12:32:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 6 Aug 2024 12:32:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vVO+fxLGfOWvpjnIascau8SOHnxIbI3pwgPV5WDvTSoECIhykTbF74dpjt72mzLCZ8+YRDYgH4QBsBC0F/kinFRfaStoSjcJTbga47C9PPdhg98N7JIeeRSDLADJQm4bPlJGOav4CzdFLwV/FUiK8b1C72L1zIVse3A5h9r1anXJ1d0i32i2gQfaI+FJ432YIhY6/d2qj1op14UipbPhh43s4IA9ysXRCn4vrsqnOq4Fpb/TSiC9tgMs2kWPOoFklXK46eWQf1uKUrikI6gtqsuAb4LVmwPAy/v1E89kg2lOnZO8z0Msna23KLl00CFvk1sdKXFKy9dC5ht0eUZPDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PJQCHuon4MaNQjRBzm9OhEmf4kpkDPCq7zrJuL4Jjug=;
 b=ZK+CrU5X0a7LRKcskVJzb/7jraE+DW/eOws+/DOyBWtMK8g3owkk8eFQjLzIUT1+AVEv3VfY7NuyCUSXX6ohykZ78mvu2elViPgshr6hq/x5hKuefCeE3AdDCERPtokSUHfmj/Xam5piUP+jNIbTh1hdMmfPyTHbkmMjVpfq3Bjq0XLUCu6lKQf+zpDDEnZwwNK4nv/d7hnYtLS+FiiSLXSBLYVClEckBBJB3h66OFICMtwTvvn0dq8nHK8mFQmch2mxS1BRmIVeLGAAkozRWf3JpKKv+QXo1ZFoCxlg3PNXCHr2P0Tb0AupQyZDjzFP6LkFH4BfPdQW6nWxM6wl/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CYYPR11MB8330.namprd11.prod.outlook.com (2603:10b6:930:b8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Tue, 6 Aug
 2024 19:32:23 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7828.023; Tue, 6 Aug 2024
 19:32:23 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/3] drm/i915: remove a few __i915_printk() uses
Thread-Topic: [PATCH 1/3] drm/i915: remove a few __i915_printk() uses
Thread-Index: AQHa6AYYtPeQs2cDk0651YL40cbHVbIannbw
Date: Tue, 6 Aug 2024 19:32:23 +0000
Message-ID: <CH0PR11MB54444861448658AE2D6AAC66E5BF2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <cover.1722951405.git.jani.nikula@intel.com>
 <82857a0c04d3c11ca6758f05c13a3cec4f1a2f01.1722951405.git.jani.nikula@intel.com>
In-Reply-To: <82857a0c04d3c11ca6758f05c13a3cec4f1a2f01.1722951405.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CYYPR11MB8330:EE_
x-ms-office365-filtering-correlation-id: b15a5fd4-62f3-4f1a-ac38-08dcb64e7f42
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?pezcw+b8emLe5ZvMne/nTgdV1GfJXKZiCKCv2mdNR7RzlostIzYswwJZJPzE?=
 =?us-ascii?Q?G3Up6JT4KvhaLy80YSUlN083JZBeH44mulaPwCbauB8nAbyUBB+7XxlR570P?=
 =?us-ascii?Q?nKTd2watA1UPZOX30UCzMwYpmryPU6KySVu2F+NPK2ZFFdE//vVx0q+W0oRU?=
 =?us-ascii?Q?xRhJDSAbLjxEJEylc3BuyCaTOHTdvgmg1wckGTlwgB4Ci+maIIRrpJhh3Pw+?=
 =?us-ascii?Q?ByISXgqM7Csv+UTz7SFgkZInWdQCmRg/pImjKSm0JQdyKlJM+vb5jIgRjLDH?=
 =?us-ascii?Q?vrzDfrsaHRMTjrtBKORsIP3i75px7cQXGOS5mVpotP04FHsuQJxWb6n7ICFL?=
 =?us-ascii?Q?wi4FFlfJjBZhkLXYhSSGMmJ9KYkQoNzzESGJSRh9737UESkZ6Z7lueEHt+l7?=
 =?us-ascii?Q?7FnMV9ds4JY5Yf6Z1Ye9lcAY+PUh/RsYAXWXtTSPNNKJF+JliGdf8SbZ7LzH?=
 =?us-ascii?Q?KApwGmf9rqvZuS60zAQ3MHGPkroE6BVaJQw9nsDKTDoOv8zOHO8DYlKY1hl2?=
 =?us-ascii?Q?niyLKA4rB16uUIxT32LQmo3l1wlbXuBvGLwzY2EV4CW/hECYXVRYUMzqyZBP?=
 =?us-ascii?Q?FsBW5Qio2gg3rogt0NWK12pMo1N7B7um8CTIXRVAFfA0jgD1HJyH1ga5kRpP?=
 =?us-ascii?Q?NraqyIxERt44I+Pq9iCrzEGPw79/lFqwBtA64T6K7T3vOcgIFKrj60qi2CEP?=
 =?us-ascii?Q?Yl5TJgZJkMor88k4peZMjPq/qYG1MfT6KbdL/OIiFWbk0hyKb0jHUZl2ivRV?=
 =?us-ascii?Q?zDDsPrS5cm55Ri7QOcwd+HpcAlyURnVX6QuP35INjiWOBb9uobe/p/K+t0kN?=
 =?us-ascii?Q?Wvg/iR0pvXyR1vcA2sGwEFLK3eXya6BIgVHQMZ9Qdq5Rfw1peKloiS54JG6z?=
 =?us-ascii?Q?W8yJMdaBmEpb/qELxNrln4sYSYhP7AMIcHXvgsZVMTSRzSU9k3XJWSTVJgW3?=
 =?us-ascii?Q?x7EpqTvE03Yt4ZGZsMhrSdbcPLsWUu0dTfzgPIAO7kPFuMF5XRGk3TNo6G11?=
 =?us-ascii?Q?90amkI009Bn4RLn1Dy5lYs1g32TwIKLFobOIQxkawbaThNxP9mM/XY6K8WxZ?=
 =?us-ascii?Q?bawPZigPbXuME4rSFNsNripb9tcUHnE1hzVpFD8ediPRVx3NPPK2gW30ali5?=
 =?us-ascii?Q?OhOmTfLGFq5nCjjxD/Fjdrdycfq4EV0AQrnrAC1dfkSElyxxLh6v2s3ibxTW?=
 =?us-ascii?Q?ggUZ9NiRfiQo3NP8/vQ6LEmDL9zW8aro+LSlJF6TccrM15FqjwbLEW98i9An?=
 =?us-ascii?Q?VlfDPCY63oInf5nBkVtxnnfGU59bg8wx+xs5dRAjnvYDMU3Tsl1PQA3dn7ds?=
 =?us-ascii?Q?sfxTrJ1VSnJfmeMPFDnobiclal1MV9MWw4PlGr+Ez1jbBkIkY69ay+T7D2t1?=
 =?us-ascii?Q?n6tcLWkTgnwSCdiWBrPodYPpmbbioFrPE0M8rYScUIj0XnsXWg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PFy+nnMogx1/9A6DTw56jUWqhZMmUufDRdZw9RiCjEM8H7puOK/EW2l5H884?=
 =?us-ascii?Q?6edFMkKHceXTHYqayCZUj1d61tvWelRI7FHg2ZmYBeb2/WJpqFF6vcBGYSfm?=
 =?us-ascii?Q?1LpNZIa+83ILpckkLEgSNAdj0nEssv3z7j+vZqPb1UK9kieVmdfC+l5quiNx?=
 =?us-ascii?Q?rXpcnN2yNddFhs7Gv42FU/HRET0KXiqhzZGjgnB4SnE/2sAWXOMInPtVc5CP?=
 =?us-ascii?Q?mwSrOdcJhMx/cng8eA5uew9rctv+lxUpWkjEdVormZ6NN0BMSNEKEKYjP+om?=
 =?us-ascii?Q?kQ30pqpUwfvZt2zWJxBG1d1ebJEv1CzBOkwOxMN6gcqdScHXtJr0pRxUrm+b?=
 =?us-ascii?Q?F1sqsc2flWbreaaW14xfLd8RVkqODPStAG9blmk+9N9gmNvAfZ1aLTSFV62w?=
 =?us-ascii?Q?QyEAdMFrkF5tDj7q67dmhLl14Bb++LU/juOis/GRC0fVFnsWEnIEPyXt/Dp2?=
 =?us-ascii?Q?hghsnoFoKYU96Kriozqsrg7UavdG5/8/oJ2VILdyT8Ww7CrZCWddhDPtqvZH?=
 =?us-ascii?Q?hcr82+0Jqml9akwWv7bEgnaJGFD+U31GDdaVyQKinGLM6QAGwZXr0DL5MzA8?=
 =?us-ascii?Q?0XT+MSArzJRo1s41PSC9eTL5fsm7kp8upI32Y9tpPPs6/RrnzjrNL/xNmSOG?=
 =?us-ascii?Q?Um+7q2jp5wabGKvalZMA+WJl8mpAhDXFpPnlqw/4OOWnLScWy2XcR3QgAL7w?=
 =?us-ascii?Q?Crh0rftWjRExdfd4w3jG/WJpyqJNQ1Hs1DboxXuRIThrRHrQE+RG+egy/zkF?=
 =?us-ascii?Q?VHOEVOlV6cYYmNNJkuU5HiE3vuzNjQdKckEERHRTAZBapyfm/6cUt+w30Bi/?=
 =?us-ascii?Q?OomXO6PJTdwy23V8I/DaHvm81Gmug3+ATr3ge8t9L2eQBlIoeghh+5XIwJGb?=
 =?us-ascii?Q?KEPR5y5gKJfB3mi9P3StRXboImfHMKUKdNjAt2jMSUs0MtJc6LMlPc1ijF3/?=
 =?us-ascii?Q?soTyteSmMUPIskQpQgG0DG+dHMH01tgQLai2BD0tWxBMdGxMx39DjDviEfTl?=
 =?us-ascii?Q?1lwp4Wxzh6kFkXBIAcWavmI579fHVNRGzLoH63fOapldzwAhk9nvHJLeAg/C?=
 =?us-ascii?Q?AsjEQCB6Tfs0S+1EYIr16A0CmBFFvUA3Z5EE+KlCH+55EXZNg7RhHjmDdLHY?=
 =?us-ascii?Q?PVOZuc9nJkQmbFTMXg6/RrNUeTXlpe+PmgqbO0MnPnE9tLeGVjl95oCMjefx?=
 =?us-ascii?Q?FwLEjB9H2MNccNnMstpoArppbks8mwI8CwuoEMgdoyZaKfYD8WMVSNMysIqn?=
 =?us-ascii?Q?6d9Wm6170VdgHVSd7RISmpWgT0mcSZSqdJngKhvKfYtF6+W1gq/0uyAXr4pS?=
 =?us-ascii?Q?DBWqgDuht6gFUp5ZXx7rT8gGjwJwirE6Wha+g92bDorDCeaydmSlWtJPwoxZ?=
 =?us-ascii?Q?O6mScg6utsmliixiS12s6VkxzIwZYbilclgFEa+rAbGRuzj253dwJaoPkw2R?=
 =?us-ascii?Q?Q/AsnzQ7Z3s0QqjSKaJpH7tUmy1VDCDgjAaOmQbp/uae8TGBLOkeZabElZ8/?=
 =?us-ascii?Q?B53+wPbijeW4gAxkaNEVSZK00NBWjZvQtTNqXP/RZf12c365G0LKx19bRibu?=
 =?us-ascii?Q?Xvfc8/bAmTyYtGGFSvBYzejDbE7U52iXs//nbg/G?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b15a5fd4-62f3-4f1a-ac38-08dcb64e7f42
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2024 19:32:23.8027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 97HHzF4ySRdHk8JbJXAfPWM/pJXbeXLwodInyutI0c13ITkpA5l3/brsY7VhZY72TVm7YPv/iqOmD+ZPiyCnbJRuitQEBR/elNUDGXQoCd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8330
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani=
 Nikula
Sent: Tuesday, August 6, 2024 6:39 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nikula, Jani <jani.nikula@intel.com>
Subject: [PATCH 1/3] drm/i915: remove a few __i915_printk() uses
>=20
> __i915_printk() does nothing for notice/info levels. Just use the
> regular drm_notice() and drm_info() calls.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/i915_utils.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i91=
5_utils.c
> index 6f9e7b354b54..bee32222f0fd 100644
> --- a/drivers/gpu/drm/i915/i915_utils.c
> +++ b/drivers/gpu/drm/i915/i915_utils.c
> @@ -54,8 +54,8 @@ __i915_printk(struct drm_i915_private *dev_priv, const =
char *level,
> =20
>  void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
>  {
> -	__i915_printk(i915, KERN_NOTICE, "CI tainted:%#x by %pS\n",
> -		      taint, (void *)_RET_IP_);
> +	drm_notice(&i915->drm, "CI tainted: %#x by %pS\n",
> +		   taint, __builtin_return_address(0));
> =20
>  	/* Failures that occur during fault injection testing are expected */
>  	if (!i915_error_injected())
> @@ -74,9 +74,9 @@ int __i915_inject_probe_error(struct drm_i915_private *=
i915, int err,
>  	if (++i915_probe_fail_count < i915_modparams.inject_probe_failure)
>  		return 0;
> =20
> -	__i915_printk(i915, KERN_INFO,
> -		      "Injecting failure %d at checkpoint %u [%s:%d]\n",
> -		      err, i915_modparams.inject_probe_failure, func, line);
> +	drm_info(&i915->drm, "Injecting failure %d at checkpoint %u [%s:%d]\n",
> +		 err, i915_modparams.inject_probe_failure, func, line);
> +
>  	i915_modparams.inject_probe_failure =3D 0;
>  	return err;
>  }
> --=20
> 2.39.2
>=20
>=20

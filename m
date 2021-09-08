Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D05F403B70
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 16:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9312D6E103;
	Wed,  8 Sep 2021 14:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2E46E103
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 14:23:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="242792823"
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="242792823"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 07:23:16 -0700
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="580394131"
Received: from efuntiko-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.249.254.170])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 07:23:11 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CH0PR11MB5755559816096FECA929754FFCD39@CH0PR11MB5755.namprd11.prod.outlook.com>
References: <20210903182034.668467-1-ravitejax.gpud.talla@intel.com>
 <CH0PR11MB5755559816096FECA929754FFCD39@CH0PR11MB5755.namprd11.prod.outlook.com>
To: "Meena, Mahesh" <mahesh.meena@intel.com>, "Pandey,
 Hariom" <hariom.pandey@intel.com>, "Siddiqui,
 Ayaz A" <ayaz.siddiqui@intel.com>, "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Talla Raviteja Goud <ravitejax.gpud.talla@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: "Talla, RavitejaX Goud" <ravitejax.goud.talla@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>, Thomas Hellström <thomas.hellstrom@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <163111098651.11123.10711730510547602750@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 08 Sep 2021 17:23:06 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_s: Remove require_force_probe
 protection
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

Quoting Siddiqui, Ayaz A (2021-09-07 08:43:52)
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of =
Talla
> > Raviteja Goud
> > Sent: Friday, September 3, 2021 11:51 PM
> > To: intel-gfx@lists.freedesktop.org; Surendrakumar Upadhyay, TejaskumarX
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>; Meena, Mahesh
> > <mahesh.meena@intel.com>; Pandey, Hariom <hariom.pandey@intel.com>
> > Cc: Talla, RavitejaX Goud <ravitejax.goud.talla@intel.com>; De Marchi, =
Lucas
> > <lucas.demarchi@intel.com>
> > Subject: [Intel-gfx] [PATCH] drm/i915/adl_s: Remove require_force_probe
> > protection
> >=20
> > From: ravitejax <ravitejax.goud.talla@intel.com>

Raviteja, please check your git settings and fill in full name there.

Ayaz, Thomas, when reviewing and merging patches, please pay attention
to the From: and Signed-off-by: tags to make sure they are correct.

Regards, Joonas

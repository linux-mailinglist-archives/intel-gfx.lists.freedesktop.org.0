Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6529AA9166
	for <lists+intel-gfx@lfdr.de>; Mon,  5 May 2025 12:53:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC3DE10E2D6;
	Mon,  5 May 2025 10:53:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvfFX/M1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979AF10E0F8;
 Mon,  5 May 2025 10:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746442412; x=1777978412;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=N7mgrqYQKGzNDO35iLT+P3KVR96WDlyoRG4PtpOwF+s=;
 b=mvfFX/M118F2rrc3UrWZabqlWFyO6hscRxXrkamIDeGVa2k4R38sSR0a
 +hsiyr2DyuDTgxslw3QrRAeJOSeXQHUol43KK1N7+xa6oVcVauw+zq/8F
 wiDSdjiFmC4+LViyvtGxw9tjDGilLsfihsq5yb/otKt4VyeZ3fBkY7cKo
 ciO9ur7mUBSP6DIBJPJKhSF+Wl4MJi4fdQTjoucO/wrwTSqPMY+TFToRb
 UNFyA5/j9wnfnMM/FVnlCRrzBw2HIRKwUdplUqpdfRc6/cr/RKg3v148G
 P1rCFGKJW+aU2CzxlGHv/PLyfUjKOMw1a+x91r5i4YzkZIyB6P+sFEXkm Q==;
X-CSE-ConnectionGUID: wIK1asV1Skax4e1JwokQcA==
X-CSE-MsgGUID: rSG9QSHgTbGUZ1GDYU0d+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11423"; a="59034745"
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="59034745"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 03:53:32 -0700
X-CSE-ConnectionGUID: HXNZSRGHR5uBqroKljpNZw==
X-CSE-MsgGUID: inFkX1+LTKGZEArRIH0EwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="140378273"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.232])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 03:53:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Hall,
 Christopher S" <christopher.s.hall@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Keller,  Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, regressions@lists.linux.dev, "Linux regression
 tracking (Thorsten Leemhuis)" <regressions@leemhuis.info>
Subject: [REGRESSION] v6.15-rc3: 1a931c4f5e68 ("igc: add lock preventing
 multiple simultaneous PTM transactions")
In-Reply-To: <SJ1PR11MB6129BBB9E38F6DB731604E94B9812@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <SJ1PR11MB6129BBB9E38F6DB731604E94B9812@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Mon, 05 May 2025 13:53:24 +0300
Message-ID: <87cycnwcpn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 28 Apr 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.=
com> wrote:
> Hello Christopher,
>
> This mail is regarding a regression we are seeing in our CI runs[1] on dr=
m-tip[2] repository.

The regressing commit is in v6.15-rc3. Updated subject and Cc'd
regression tracking.

BR,
Jani.


>
> `````````````````````````````````````````````````````````````````````````=
````````
> <4>[    7.891028] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <4>[    7.891293] [ BUG: Invalid wait context ]
> <4>[    7.891526] 6.15.0-rc3-CI_DRM_16443-gdc80d6a10c1c+ #1 Tainted: G   =
     W=20=20=20=20=20=20=20=20=20=20
> <4>[    7.891792] -----------------------------
> <4>[    7.892070] (udev-worker)/286 is trying to lock:
> <4>[    7.892349] ffff88811671bcc8 (&adapter->ptm_lock){....}-{3:3}, at: =
igc_ptp_reset+0x155/0x320 [igc]
> <4>[    7.892660] other info that might help us debug this:
> <4>[    7.892943] context-{4:4}
> <4>[    7.893226] 2 locks held by (udev-worker)/286:
> <4>[    7.893515]  #0: ffff888103bd41b0 (&dev->mutex){....}-{3:3}, at: __=
driver_attach+0x104/0x220
> <4>[    7.893823]  #1: ffff88811671bb70 (&adapter->tmreg_lock){....}-{2:2=
}, at: igc_ptp_reset+0x53/0x320 [igc]
> <4>[    7.894134] stack backtrace:
> <4>[    7.894439] CPU: 2 UID: 0 PID: 286 Comm: (udev-worker) Tainted: G  =
      W           6.15.0-rc3-CI_DRM_16443-gdc80d6a10c1c+ #1 PREEMPT(volunta=
ry)=20
> <4>[    7.894442] Tainted: [W]=3DWARN
> <4>[    7.894443] Hardware name: Intel(R) Client Systems NUC11TNHi3/NUC11=
TNBi3, BIOS TNTGL357.0067.2022.0718.1742 07/18/2022
> `````````````````````````````````````````````````````````````````````````=
````````
> Detailed log can be found in [3].
>
> After bisecting the tree, the following patch [4] seems to be the first "=
bad"
> commit
>
> `````````````````````````````````````````````````````````````````````````=
````````````````````````````````
> commit 1a931c4f5e6862e61a4b130cb76b422e1415f644
> Author: Christopher S M Hall mailto:christopher.s.hall@intel.com
> Date:=C2=A0=C2=A0 Tue Apr 1 16:35:34 2025 -0700
>
> =C2=A0=C2=A0=C2=A0 igc: add lock preventing multiple simultaneous PTM tra=
nsactions
> `````````````````````````````````````````````````````````````````````````=
````````````````````````````````
>
> We also verified that if we revert the patch the issue is not seen.
>
> Could you please check why the patch causes this regression and provide a=
 fix if necessary?
>
> Thank you.
>
> Regards
>
> Chaitanya
>
> [1] https://intel-gfx-ci.01.org/tree/drm-tip/shard-tglu.html
> [2] https://cgit.freedesktop.org/drm-tip/tree/
> [3] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16443/fi-tgl-1115g4/b=
oot0.txt
> [4] https://cgit.freedesktop.org/drm-tip/commit/?id=3D1a931c4f5e6862e61a4=
b130cb76b422e1415f644
>

--=20
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBF25706BA
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 17:12:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E3AB8EEFF;
	Mon, 11 Jul 2022 15:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CFA78EEFC
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 15:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657552330; x=1689088330;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JGe6kLZ/oBvSQfi+XDxD30xzEQ1QW+ghc6nc94BM1Uk=;
 b=WuRUDhelMSJEfAGJW2WMScJu1kL//MX8r3a/pbniEOzvajJWBdHTMo0x
 EdRQidUkRBg47GK/jVMu7yGplAFWAlA0qrkKHghGEiPbWVrq+Bydx7Qy2
 moklemyDw+gyhMb8Iu2tlhba3KufpJfuu9gwODsdlL1mninTVwAhPZKG1
 3I2vPG+qcDYu1kGIS4ewod3yQJ91/u2gTjuJRwr5Zl21WPuzkChdbdGmp
 AROex3cBx1VDnHmPn2gK79RLqjkJJ7lZrRXPyfBKhDM9JLdfzKF2YLtAN
 kPLWsnvP0k2Q8xrLKL9p1Cuub6LNx2AzxqEZ/6iy3Po0PSaU0OKlHRswN A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="264467621"
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="264467621"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 08:11:28 -0700
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="921816221"
Received: from maurocar-mobl2.ger.corp.intel.com (HELO maurocar-mobl2)
 ([10.252.36.51])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 08:11:26 -0700
Date: Mon, 11 Jul 2022 17:11:23 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20220711171123.3849fa64@maurocar-mobl2>
In-Reply-To: <YswubgtXmR8BL/Mi@intel.com>
References: <cover.1657522157.git.mchehab@kernel.org>
 <165752775394.5765.13401758688586115512@emeril.freedesktop.org>
 <YswubgtXmR8BL/Mi@intel.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_TLB_invalidate_issues_with_Broadwell_=28rev5=29?=
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 11 Jul 2022 10:06:38 -0400
Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:

> On Mon, Jul 11, 2022 at 08:22:33AM -0000, Patchwork wrote:
> >    Patch Details
> >=20
> >    Series:  Fix TLB invalidate issues with Broadwell (rev5)
> >    URL:     [1]https://patchwork.freedesktop.org/series/105167/
> >    State:   failure
> >    Details:
> >    [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/index=
.ht
> >    ml
> >=20
> >           CI Bug Log - changes from CI_DRM_11862 -> Patchwork_105167v5
> >=20
> > Summary
> >=20
> >    FAILURE
> >=20
> >    Serious unknown changes coming with Patchwork_105167v5 absolutely ne=
ed
> >    to be
> >    verified manually.
> >=20
> >    If you think the reported changes have nothing to do with the changes
> >    introduced in Patchwork_105167v5, please notify your bug team to all=
ow
> >    them
> >    to document this new failure mode, which will reduce false positives=
 in
> >    CI.
> >=20
> >    External URL:
> >    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/index.ht=
ml
> >=20
> > Participating hosts (45 -> 42)
> >=20
> >    Additional (2): bat-rpls-1 bat-dg1-5
> >    Missing (5): fi-cml-u2 fi-hsw-4200u fi-icl-u2 fi-ctg-p8600 bat-jsl-3
> >=20
> > Possible new issues
> >=20
> >    Here are the unknown changes that may have been introduced in
> >    Patchwork_105167v5:
> >=20
> >   IGT changes
> >=20
> >     Possible regressions
> >=20
> >      * igt@i915_selftest@live@gem:
> >           + fi-elk-e7500: [3]PASS -> [4]DMESG-FAIL =20
>=20
> I also believe this is a false positive...
> triggered a retest...

Yeah, the latest test gave success:

	Subject: [Intel-gfx] =E2=9C=93 Fi.CI.BAT: success for Fix TLB invalidate i=
ssues with Broadwell (rev6)
	Date: Mon, 11 Jul 2022 14:53:40 -0000
	Reply-To: intel-gfx@lists.freedesktop.org
	Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

	=3D=3D Series Details =3D=3D

	Series: Fix TLB invalidate issues with Broadwell (rev6)
	URL   : https://patchwork.freedesktop.org/series/105167/
	State : success

>=20
> hoping to get this series merged today...

Yeah, it would be great to have this merged, as it is a regression
fix.

Regards,
Mauro

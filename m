Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB54F6FE65B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 23:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3280410E08D;
	Wed, 10 May 2023 21:38:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F5F10E08D
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 21:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683754738; x=1715290738;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=CsKrB/JamNT6F/GybLWYBfKOd8fW5i/I/ADXfvf0+E8=;
 b=fUr4DjBpkh+Xg5NnxwrSLeF5EvL/Ox+ASgwHbmrwKj/lwihrzDp/JhqG
 G/spYFSwx0a2RXMDEZ1Cato6kG6f6jJqnp/7I6FP4A+mtQwt/rJSPDvCF
 zBYPMnQPKyQLbzlPElYc4wGUrTLEUXYQfFRNhN64/sqzGSaoHUhGjJnsF
 RQ75llLkuZcI0hatA4lj2JFNS84NnbWaErMuX/CsNUytX5Go0TSHm0yTw
 gx4ITfCpOtC2V+Y0dSg8//JZUBjSdpwfqfiOS/tGW73A6btp8V12BEjcv
 EZ+VP8cxmPRscAvjVNyn5lFuJs8RMT8+cYN02KE/rRv3EDVoY21z+MCSR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="329949647"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="329949647"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 14:38:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="649885580"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="649885580"
Received: from archanas-mobl24.amr.corp.intel.com (HELO localhost)
 ([10.209.61.250])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 14:38:57 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <0a23ff5be69e3d6b6e3b457c2599bc2f018fc71a.camel@intel.com>
References: <20230427234843.2886921-1-alan.previn.teres.alexis@intel.com>
 <20230427234843.2886921-7-alan.previn.teres.alexis@intel.com>
 <8888e3dff8c1c4fd1702ded911850da30330fbfa.camel@intel.com>
 <168327239043.1096084.14316886882692698230@jljusten-skl>
 <e40f2b8750b39facd98f72cda63bc733ca0319d5.camel@intel.com>
 <0a23ff5be69e3d6b6e3b457c2599bc2f018fc71a.camel@intel.com>
From: Jordan Justen <jordan.l.justen@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "Teres Alexis,
 Alan Previn" <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 14:38:56 -0700
Message-ID: <168375473641.1096084.7149697040639389794@jljusten-skl>
User-Agent: alot/0.10
Subject: Re: [Intel-gfx] [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
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
Cc: ri-devel@lists.freedesktop.org, ustonli@chromium.org, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-05-10 12:40:07, Souza, Jose wrote:
> On Mon, 2023-05-08 at 17:49 +0000, Teres Alexis, Alan Previn wrote:
> > On Fri, 2023-05-05 at 00:39 -0700, Justen, Jordan L wrote:
> > > On 2023-05-04 22:30:07, Teres Alexis, Alan Previn wrote:
> > > > On Thu, 2023-04-27 at 16:48 -0700, Teres Alexis, Alan Previn wrote:
> > > > > Because of the additional firmware, component-driver and
> > > > > initialization depedencies required on MTL platform before a
> > > > > PXP context can be created, UMD calling for PXP creation as a
> > > > > way to get-caps can take a long time. An actual real world
> > > > > customer stack has seen this happen in the 4-to-8 second range
> > > > > after the kernel starts (which sees MESA's init appear in the
> > > > > middle of this range as the compositor comes up). To avoid
> > > > > unncessary delays experienced by the UMD for get-caps purposes,
> > > > > add a GET_PARAM for I915_PARAM_PXP_SUPPORT.
> > > > >=20
> > > > alan:snip.
> > > > Progress update on the UMD side - I'm working on patch for PR here:=
=20
> > > > https://gitlab.freedesktop.org/alan_previn_intel/mesa-alan-previn-f=
eatures/-/commit/fb9d4fbfbef7dfd3f41df335cd31549fd39ddb57
> > > > but taking time to verify certain code paths
> > >=20
> > > Just to confirm, if I915_PARAM_PXP_STATUS returns 2 ("will be ready
> > > soon"), then it is basically certain that in a production environment,
> > > then it will eventually return 1 meaning it's ready, right?
> > alan: yes - but not 100%. non-platform-state-machine could still
> > cause unexpected failures for example, [1] if hw was fused in a way
> > that doesnt permit PXP or [2] enabling certain BIOS debug knobs
> > doesnt allow PXP. However at the moment, there is no way for us
> > to know for sure without actually creating a protected context.
> > Of course having hw-fusing + bios-config that supports PXP have
> > always 100% succeeded for me.
>=20
> In my opinion it is problematic mark that we support protected
> context but then it fails to create protected context.

This is why I asked if it was it was "basically certain that in a
production environment, then it will eventually return 1 meaning it's
ready". Alan's response was a little ambiguous on this point.

But, considering the number of applications that will need this
feature is low, combined with an extremely low chance that the kernel
will end up going from 2 (will be ready soon) to -ENODEV (will never
work), well, it seems worth considering advertising it with no delay
even if it later fails if used.

Arguably a transition from 2 to -ENODEV could be considered a kernel
bug, but it doesn't sound like Alan would agree. :) Maybe Alan would
agree to saying it's either a kernel, or system integration bug.

I think it'd also be ok if we didn't advertise support if an
application starts when the kernel is still in the 2 (will be ready
soon) state.

But, some environments might prefer to wait, so I think the kernel
uapi should stay as Alan has it now so we have the flexibility to
potentially accommodate this. (Perhaps with driconf, or a build flag,
or an env-var.)

-Jordan

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0D3316828
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 14:39:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA9D6E079;
	Wed, 10 Feb 2021 13:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59B36E2C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 13:39:05 +0000 (UTC)
Received: from mail-02.mail-europe.com (mail-02.mail-europe.com
 [51.89.119.103])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-41103.protonmail.ch (Postfix) with ESMTPS id 04C00200043B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 13:39:04 +0000 (UTC)
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="jj+6ttuV"
Date: Wed, 10 Feb 2021 13:38:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1612964338;
 bh=KXrzTlP6PgiuyJmaWvQDi11Oh2GB1xK04B3bvmGLmWY=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=jj+6ttuViw3KYXNZ4zf4iwVrmc2yvDFL/g9ytF8q9ntElJJYPPWA0MaPGpTx9DBfa
 u1PqbndshcE4SgPw/LKpmMau+xMRPZ9Upw29cUDcmKQ1oUa65AEBpcXS6p7EgUSfFn
 NsWnk4wQLjC3C5w8/57dKh7s/0P3TFokvWmxcfE3zCZ/K+auT3neWHUJanrrHJaxrL
 nqdj6fGI6gikfMXDOvauqhShs1aBm2NVdmWpUR1//pLGHk+99Rc9J9d3J3xy5kQ93A
 qVMoXanCxwh0u90iVB8bibV5xFPGV5k3gtP4q+nKWB1UWOBj3bDk0MVzr5ybnr3mKI
 qApyhwKM7/0nA==
To: Daniel Vetter <daniel@ffwll.ch>
From: Simon Ser <contact@emersion.fr>
Message-ID: <vpyQ2PWoypdzSDLBjlqvQW_zi3sOkPdCOWS_MuxLId4i5HFb3ulnEWkVreU1mEYxcN9bKIB0iV_TpgMBEDaREA7bhZVUFVkTaA5d1DJHhLI=@emersion.fr>
In-Reply-To: <YCPcrusmPxj0iGxz@phenom.ffwll.local>
References: <20210210001401.463-1-manasi.d.navare@intel.com>
 <YCPcrusmPxj0iGxz@phenom.ffwll.local>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/atomic: document and enforce
 rules around "spurious" EBUSY"
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: Daniel Vetter <daniel.vetter@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, February 10th, 2021 at 2:16 PM, Daniel Vetter <daniel@ffwll.ch> wrote:

> On Tue, Feb 09, 2021 at 04:14:01PM -0800, Manasi Navare wrote:
>
> > These additional checks added to avoid EBUSY give unnecessary WARN_ON
> > in case of big joiner used in i915 in which case even if the modeset
> > is requested on a single pipe, internally another consecutive
> > pipe is stolen and used to drive half of the transcoder timings.
> > So in this case it is expected that requested crtc and affected crtcs
> > do not match. Hence the added WARN ON becomes irrelevant.

The WARN_ON only happens if allow_modeset == false. If allow_modeset == true,
then the driver is allowed to steal an unrelated pipe.

Maybe i915 is stealing a pipe without allow_modeset?

> Nope. We can maybe rework this so that i915 can do stuff under the hood,
> but wrt uapi this was the thing we discussed with compositors. Without
> such a guarantee atomic is defacto broken from a compositor pov.

Agreed.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

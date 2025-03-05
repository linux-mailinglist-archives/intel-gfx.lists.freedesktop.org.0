Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98794A569C1
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:58:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 937EF10EBA5;
	Fri,  7 Mar 2025 13:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="FOMuI0JL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839BB10E2A9;
 Wed,  5 Mar 2025 19:33:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A2982A460C3;
 Wed,  5 Mar 2025 19:27:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E41F2C4CED1;
 Wed,  5 Mar 2025 19:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1741203204;
 bh=BPfPRp4aADTi2I/V/+XctUU/4I51JYtbfIk5APM/ogQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FOMuI0JL4wjxH1f0wZMY/J0jDC6dxZM5yjzWRfuuwF8V7IK3sNdRrTW4KRScg/rbT
 MpE3IqwS498l2mi6zo7LnB801hV+p44Y2YIotdtu+wmKyc+/l4BBmK0ajoYJoBZTnj
 QjMDkE3KZsnXn9158HthiFNA9RPDYmnAqlnX+HMU=
Date: Wed, 5 Mar 2025 14:33:22 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Knop, Ryszard" <ryszard.knop@intel.com>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "rk@dragonic.eu" <rk@dragonic.eu>, 
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "daniel@fooishbar.org" <daniel@fooishbar.org>, Sima Vetter <sima@ffwll.ch>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
Message-ID: <20250305-nonchalant-fresh-stoat-61ea0a@lemur>
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
 <871pvbxt40.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <871pvbxt40.fsf@intel.com>
X-Mailman-Approved-At: Fri, 07 Mar 2025 13:57:54 +0000
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

On Wed, Mar 05, 2025 at 07:52:31PM +0200, Jani Nikula wrote:
> > - For each new series on lore.kernel.org a bridge would create a PR by
> > taking the latest mirrored drm-tip source, then applying a new series
> > with `b4 shazam`.
> 
> There's a small catch here. Patchwork is currently more clever about
> handling series revisions when only some of the patches in a series are
> updated by way of replying to the individual patch. For example [1][2].

FWIW, b4 does partial rerolls already. E.g., using your own example:

	$ b4 am -o/tmp 20250305114820.3523077-2-imre.deak@intel.com
	[...]
	---
	  ✓ [PATCH v5->v6 1/6] drm/i915/hpd: Track HPD pins instead of ports for HPD pulse events
		+ Reviewed-by: Jani Nikula <jani.nikula@intel.com> (✓ DKIM/intel.com)
	  ✓ [PATCH v5->v6 2/6] drm/i915/hpd: Let an HPD pin be in the disabled state when handling missed IRQs
		+ Reviewed-by: Jani Nikula <jani.nikula@intel.com> (✓ DKIM/intel.com)
	  ✓ [PATCH     v6 3/6] drm/i915/hpd: Add support for blocking the IRQ handling on an HPD pin
	  ✓ [PATCH v5->v6 4/6] drm/i915/dp: Fix link training interrupted by a short HPD pulse
		+ Reviewed-by: Jani Nikula <jani.nikula@intel.com> (✓ DKIM/intel.com)
	  ✓ [PATCH     v6 5/6] drm/i915/dp: Queue a link check after link training is complete
	  ✓ [PATCH v5->v6 6/6] drm/i915/crt: Use intel_hpd_block/unblock() instead of intel_hpd_disable/enable()
	  ---
	  ✓ Signed: DKIM/intel.com
	---
	[...]
	WARNING: v6 is a partial reroll from previous revisions
			 Please carefully review the resulting series to ensure correctness
			 Pass --no-partial-reroll to disable

-K

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C18E0625E68
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 16:34:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A79AD10E867;
	Fri, 11 Nov 2022 15:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 016E610E867
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 15:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668180850; x=1699716850;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=vFu+juMRZveM7cxPRNnOR06NjKD9MTDI+17xS+ufhbg=;
 b=Yq0jvp965ybwYoLYLDMcYbWt+F2iVBCK5MC1iZILo2Ket9FO88Ax26tn
 Ah/Z2bfeuvD5rrGNaPQdp0hHyrSDrls/bEQ2cbQa2whQoXgygv4c6vkQv
 Coxo28ifqaVHzJlk6ORo239+5jMpWtHSpjhqeFu9flUwOPPBpoMb6ycSi
 rvYpV1eu+ZfNRIvQfXJhWa6u/6QNHEMZF5b70RZ1rg1NjZSZXbNkziGJv
 2rms/NG08FB5AKKd1af8ZeS054kWcxoyvjWhgG5HfE5O8uVgpqMP896Ya
 SOT+u/2IwY8lhEGWtpYqG3RRvIX9CVBgQAh5s73Nwth6USy6Ln9atzS79 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="291337241"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="291337241"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:31:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="882789892"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="882789892"
Received: from ldunne-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.15.227])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:31:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
Date: Fri, 11 Nov 2022 17:31:07 +0200
Message-ID: <87leoh4if8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: Per-device display tracepoints
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

On Fri, 11 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Resurrect my old patch to include the device name in the display
> tracepoints. Seems like a good with discrete GPUs being a thing.

FWIW, on the series,

Acked-by: Jani Nikula <jani.nikula@intel.com>



>
> Ville Syrj=C3=A4l=C3=A4 (4):
>   drm/i915: Pass intel_plane to plane tracepoints
>   drm/i915: Print plane name in fbc tracepoints
>   drm/i915: Pass i915 to frontbuffer tracepoints
>   drm/i915: Add device name to display tracepoints
>
>  .../gpu/drm/i915/display/intel_atomic_plane.c |   6 +-
>  .../drm/i915/display/intel_display_trace.h    | 206 ++++++++++++------
>  .../gpu/drm/i915/display/intel_frontbuffer.c  |   4 +-
>  3 files changed, 140 insertions(+), 76 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center

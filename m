Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDC062F3E3
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 12:40:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591FF10E0E6;
	Fri, 18 Nov 2022 11:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 361B610E0E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 11:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668771603; x=1700307603;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=BmldUoY1HO2gb1seo3lsWVIrALfvE7p+D0PJQG1OMgE=;
 b=hyd5BS8fw5Y2e1NxQKKx66JsmKtFJcAQC2ZJN6gPM6XEc+cDhPF5LgOp
 sxtD4DH2OzHaUcUbFdCFynfhlaTYpy6SpXDKzNRFwIFPwSoWPZ0WB9J8q
 xg97nQOAcNOsYNGJuthQQnJTeI0iTYWecDNyelcovz39WPVbN9JkpZQ78
 PAco9pP08x76/Dtz8GcOvmOmbH2wcb15YufLBSssvhbt076YoMeMdidlv
 muR7XkeQ8Ve8E4vDEO30q+Erb40N2YxacpBzL0mlD1BdYGR7mU1L3gQRT
 lChMj5r8Rv7KLuSImB0GEfl2j0zFMQEy4V1oxIVfBpUNZOjXWQjUY8hKi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="399404925"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="399404925"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 03:40:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="617990155"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="617990155"
Received: from mmilose-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.101])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 03:40:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
Date: Fri, 18 Nov 2022 13:39:58 +0200
Message-ID: <877czs1ofl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/9] drm/i915/dvo: DVO init fixes/cleanps
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

On Fri, 18 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The DVO encoder init code is meesy. Try to clean it
> up a bit, and fix a few buglets while at it.

On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Ville Syrj=C3=A4l=C3=A4 (9):
>   drm/i915/dvo: Remove unused panel_wants_dither
>   drm/i915/dvo: Don't leak connector state on DVO init failure
>   drm/i915/dvo: Actually initialize the DVO encoder type
>   drm/i915/dvo: Introduce intel_dvo_connector_type()
>   drm/i915/dvo: Eliminate useless 'port' variable
>   drm/i915/dvo: Flatten intel_dvo_init()
>   drm/i915/dvo: s/intel_encoder/encoder/ etc.
>   drm/i915/dvo: s/dev_priv/i915/
>   drm/i915/dvo: Use per device debugs
>
>  drivers/gpu/drm/i915/display/intel_dvo.c | 375 ++++++++++++-----------
>  1 file changed, 201 insertions(+), 174 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center

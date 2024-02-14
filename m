Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 674DA855150
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 19:04:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D54A210E8CD;
	Wed, 14 Feb 2024 18:04:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YTcAKOr1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74EC10E4D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 18:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707933854; x=1739469854;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=11j8qUniL1nxRMaZVHkhbWJCVxqX/MaetQvAJziWb7Q=;
 b=YTcAKOr1rfEfOnOxCfmzy8bmLimLjPdhx69JW/s3/d8vrhyhNr85boOH
 4mD+NYc6hlE9qJiOt2isQ4YwiGmNeWTyEqCMBT1XGwynF8xu3eDIw80Z4
 HS7aoMqmyjeJJ4e1JCMAf3+QrTceLJu8T64/WgGZ6XAfL7H8PJlXKFFVG
 N5/BPaGvlhuLHOaQ2IQOpTmSEQlY+U2VD1xoX2e9PPs5OdSwHLwXCWjXW
 z/xgOf60MB8OzlgjrKZG70Rm3B39ZdQqdQroP8szIH2R1z6xPegnWnT0g
 W4HjdbAgWWpY3bzHT3r1iISJaZfvYHWwLzZIiciXMsKJmdnWYln+lFf4e w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2137089"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="2137089"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 10:03:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="7924076"
Received: from kwszolek-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.190])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 10:03:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915: Add PLL .compare_hw_state() vfunc
In-Reply-To: <ZczpiYb8aApSTJz3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
 <20240209183809.16887-5-ville.syrjala@linux.intel.com>
 <87a5o36tom.fsf@intel.com> <ZczpiYb8aApSTJz3@intel.com>
Date: Wed, 14 Feb 2024 20:03:48 +0200
Message-ID: <871q9e7wjf.fsf@intel.com>
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

On Wed, 14 Feb 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 14, 2024 at 03:50:49PM +0200, Jani Nikula wrote:
>> As follow-up, would be great to see this move towards drm_printer based
>> approach, similar to pipe_config_dp_vsc_sdp_mismatch(). Reduces
>> duplication.
>
> Why did we convert just that single thing and not everything?

That change originated from me fixing drm_dp_vsc_sdp_log(), which was
quite horrible, to use drm_printer. So I just changed the drm side of
things, and haven't yet gotten around to fixing other things i915 side.

In fact 2e61504fd1c3 ("drm/dp: switch drm_dp_vsc_sdp_log() to struct
drm_printer") only exists in drm-misc-next, and we'll need that stuff
merged to drm-next and back to drm-intel-next.

BR,
Jani.

--=20
Jani Nikula, Intel

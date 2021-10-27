Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A1643C49D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 10:05:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC2F88AD9;
	Wed, 27 Oct 2021 08:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A13F188AD9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 08:05:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="230051346"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="230051346"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 01:05:17 -0700
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="497754318"
Received: from smaharan-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.214.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 01:05:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Juha-Pekka Heikkila
 <juhapekka.heikkila@gmail.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <20211027063342.GA2792152@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211026161517.2694067-1-imre.deak@intel.com>
 <20211026161517.2694067-4-imre.deak@intel.com> <87y26fishf.fsf@intel.com>
 <20211027063342.GA2792152@ideak-desk.fi.intel.com>
Date: Wed, 27 Oct 2021 11:05:08 +0300
Message-ID: <87mtmuj3kb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/fb: Fold modifier CCS
 type/tiling attribute to plane caps
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

On Wed, 27 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Oct 26, 2021 at 08:52:12PM +0300, Jani Nikula wrote:
>> AFAICT there are no intel_plane_caps references anywhere after this, and
>> it no longer looks like an enum, so perhaps it just shouldn't be an enum
>> anymore? Just make them macros?
>
> There are other instances of bitfield enums in the kernel, but yes in C
> there's no benefit of enums for this over the simpler macro approach.
> Will change this.

Semantically I think enums are good for enumerating and naming the bit
*positions*, but not so much the shifted bit values. See e.g. enum
drm_dp_quirk, where the values aren't important, but they're used with
BIT() in drm_dp_has_quirk().

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

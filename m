Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7446123F66
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 07:07:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C758C6E21F;
	Wed, 18 Dec 2019 06:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AAAD6E21F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 06:07:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 22:07:53 -0800
X-IronPort-AV: E=Sophos;i="5.69,328,1571727600"; d="scan'208";a="209974388"
Received: from asama-mobl.amr.corp.intel.com (HELO localhost) ([10.252.50.109])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 22:07:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191218014208.7916-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
Date: Wed, 18 Dec 2019 08:07:55 +0200
Message-ID: <87o8w61804.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/5] display: prefer 3-letter acronym
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> This bothered me for a while so I decided to give it a try: let's
> normalize on using the platform acronym for function prefixes.

The mixed use has always bothered me too.

Acked-by: Jani Nikula <jani.nikula@intel.com>

(Up next, IS_BROADWELL vs. IS_BDW_ULT etc... ;)


>
> This does the conversion for some platforms. There are others missing,
> but I'm sending this early for the case the idea is shot down.
>
> Lucas De Marchi (5):
>   drm/i915/display: prefer 3-letter acronym for haswell
>   drm/i915/display: prefer 3-letter acronym for skylake
>   drm/i915/display: prefer 3-letter acronym for cannonlake
>   drm/i915/display: prefer 3-letter acronym for icelake
>   drm/i915/display: prefer 3-letter acronym for ironlake
>
>  drivers/gpu/drm/i915/display/intel_crt.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 278 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  34 +--
>  .../drm/i915/display/intel_fifo_underrun.c    |   6 +-
>  6 files changed, 163 insertions(+), 167 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

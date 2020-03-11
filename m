Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 807B3181626
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 11:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52D86E974;
	Wed, 11 Mar 2020 10:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1896F6E974
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 10:50:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 03:50:31 -0700
X-IronPort-AV: E=Sophos;i="5.70,540,1574150400"; d="scan'208";a="231653381"
Received: from mkuta-mobl.ger.corp.intel.com (HELO localhost) ([10.249.39.69])
 by orsmga007-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 03:50:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <87blp5o8yx.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1583766715.git.jani.nikula@intel.com>
 <87blp5o8yx.fsf@intel.com>
Date: Wed, 11 Mar 2020 12:50:46 +0200
Message-ID: <87o8t3kvw9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915/display: conversion to
 drm_device based logging macros
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
Cc: Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 09 Mar 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> Please ignore this, I seem to have some smtp trouble which fails some of
> tha patches. This will be incomplete.
>
> Wambui, I'll resend this later.

Okay, I sent them with the same message-ids, so the patches amended this
beginning of the series.

I pushed all the patches that I didn't change. Please double check the
below patches that I adjusted, so I can push them.

>>   drm/i915/fbc: convert to drm_device based logging macros.
>>   drm/i915/fbdev: convert to drm_device based logging.
>>   drm/i915/hdcp: convert to struct drm_device based logging.

Thanks,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 080B51AD883
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 10:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A365E6E3BC;
	Fri, 17 Apr 2020 08:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 069256E3BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 08:28:54 +0000 (UTC)
IronPort-SDR: 4FkQklREx+jQxn3lkLgoP2c3hmfuFpeQO2ALjg5rE4KJHIjxPwn8xML2aG1cGf6CAAnfxPKiSf
 yPxK3ebUlpeA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 01:28:54 -0700
IronPort-SDR: Fj4ScrVSDw70r5kQYpN8DJ5tTtIl9l+lYE57ZhO7ETKZa3m+sWuCkxU2OsFPd8Exp8plmXMvEU
 371qVTCkI/YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,394,1580803200"; d="scan'208";a="364267397"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga001.fm.intel.com with ESMTP; 17 Apr 2020 01:28:51 -0700
Date: Fri, 17 Apr 2020 11:28:50 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200417065132.23048-1-jani.nikula@intel.com>
Message-ID: <alpine.DEB.2.21.2004171103100.2957@eliteleevi.tm.intel.com>
References: <20200417065132.23048-1-jani.nikula@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: error log non-zero audio
 power refcount after unbind
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Fri, 17 Apr 2020, Jani Nikula wrote:

> We have some module unload/reload tests hitting an issue with i915
> unbinding the component interface before the audio driver has properly
> put the power. Log an error about it for ease of debugging. (Normally

thanks, this is a good addition:
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Maybe one point to consider is whether to take the next step and just 
block the unload. On audio side, once acomp binding is done to i915 
driver, it is only released at hda driver unload. So any test case where 
audio driver is bound to i915, and test unloads i915 without unloading 
the audio driver first, will not work. Even if no immediate failure is 
seen at unload, functionality will be impacted after i915 is loaded 
again.

Not sure how to do this though. Normally module refcounts would take care
of this (and block i915 unload), but now that we have the component 
framework in between, something else is needed.

PS Audio driver also doesn't implement component unbind(), but I don't
   immediately see what it could do there. It can't return an error
   and the audio framework is not really prepared for invidual codec
   drivers to disappear at runtime. We can handle hotplug of complete 
   cards (like USB), but individual codec drivers are expected to stay loaded.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

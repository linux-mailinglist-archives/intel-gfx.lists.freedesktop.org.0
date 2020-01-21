Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E03143C6C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 13:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75CE46E215;
	Tue, 21 Jan 2020 12:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620A06E215
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 12:01:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 04:01:51 -0800
X-IronPort-AV: E=Sophos;i="5.70,345,1574150400"; d="scan'208";a="219934200"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.11.51])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 04:01:48 -0800
MIME-Version: 1.0
In-Reply-To: <20200121103020.26494-1-jani.nikula@intel.com>
References: <20200121103020.26494-1-jani.nikula@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Tue, 21 Jan 2020 14:01:45 +0200
Message-ID: <157960810578.23235.12006380676824156361@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH] drm/i915: drop alpha_support for good in
 favour of force_probe
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-01-21 12:30:20)
> It's been a long enough transition period since the DRM_I915_FORCE_PROBE
> config and i915.force_probe module parameter were introduced in commit
> 7ef5ef5cdead ("drm/i915: add force_probe module parameter to replace
> alpha_support"). Remove alpha support.
> 
> Cc: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

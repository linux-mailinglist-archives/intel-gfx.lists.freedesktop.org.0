Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEF31EE155
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 11:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 815576E13A;
	Thu,  4 Jun 2020 09:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E2B6E13A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 09:31:53 +0000 (UTC)
IronPort-SDR: 6KdZsA9Er13F+qX7tkrB4EdfuN/HlfXYq0bpX8CgJ8p7QzJOSxl20D1aM2m0Vmm886w1JgKII6
 RKHN/rSFSqcg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 02:31:53 -0700
IronPort-SDR: +b/Q3OsD9u7bR6RZxmKkJYvSSYRX5xP1SqvDH9I/xwpyTDG+9qkRRJobAOQxhgQbR1Wdi6kAma
 a3GwiH2SRnhw==
X-IronPort-AV: E=Sophos;i="5.73,471,1583222400"; d="scan'208";a="445445053"
Received: from bsochack-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.43.109])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 02:31:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <159111100381.29407.10499392760570265777@build.alporthouse.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200602151126.25626-1-jani.nikula@intel.com>
 <159111100381.29407.10499392760570265777@build.alporthouse.com>
Date: Thu, 04 Jun 2020 12:31:48 +0300
Message-ID: <871rmvyy63.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/params: fix i915.reset module
 param type
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

On Tue, 02 Jun 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2020-06-02 16:11:26)
>> The reset member in i915_params was previously changed to unsigned, but
>> this failed to change the actual module parameter.
>> 
>> Fixes: aae970d8454b ("drm/i915: Mark i915.reset as unsigned")
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Thanks, pushed.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

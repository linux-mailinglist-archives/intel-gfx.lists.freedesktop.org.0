Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8889D1733DC
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 10:26:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE7F6EE9E;
	Fri, 28 Feb 2020 09:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379B66EE9A;
 Fri, 28 Feb 2020 09:26:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 01:26:03 -0800
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="411350937"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 01:26:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Randy Dunlap <rdunlap@infradead.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
In-Reply-To: <01c2a164-7165-e48f-6972-8fd6517f548b@infradead.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200228154214.78523ad7@canb.auug.org.au>
 <01c2a164-7165-e48f-6972-8fd6517f548b@infradead.org>
Date: Fri, 28 Feb 2020 11:25:58 +0200
Message-ID: <871rqfqd09.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] linux-next: Tree for Feb 28
 (gpu/drm/i915/display/intel_display.c)
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 27 Feb 2020, Randy Dunlap <rdunlap@infradead.org> wrote:
> On 2/27/20 8:42 PM, Stephen Rothwell wrote:
>> Hi all,
>> 
>> Changes since 20200227:
>> 
>
> on i386:
>
> ../drivers/gpu/drm/i915/display/intel_display.c:252:1: error: 'has_transcoder' defined but not used [-Werror=unused-function]
>  has_transcoder(struct drm_i915_private *dev_priv, enum transcoder cpu_transcoder)
>  ^~~~~~~~~~~~~~
>
>
> Full randconfig file is attached.

Fix is:

http://patchwork.freedesktop.org/patch/msgid/20200227175147.11362-1-anshuman.gupta@intel.com

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

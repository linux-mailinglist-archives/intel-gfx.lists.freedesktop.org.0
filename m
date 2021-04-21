Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6EF36699E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 13:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A746E982;
	Wed, 21 Apr 2021 11:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7116E982
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 11:03:53 +0000 (UTC)
IronPort-SDR: fCVunlgJcD6jH/lbuxFiG8oTOJC5QXz5DKYzqn92pJwHKljC2LUQ9VFyEf6HprFeX9vb3dxc0e
 YNEZkqXHc+wA==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="182810041"
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="182810041"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 04:03:52 -0700
IronPort-SDR: QJTNlx4y/cP5MKQS8baQ2nE7GKORPJ06uf46KXMljjmriyA03L39UMIWh/4A0CbdoMFhaP5kNb
 h0+vI+CVotEA==
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="463551297"
Received: from uchalilx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.64])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 04:03:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87a6pzeqfi.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210414155208.3161335-1-imre.deak@intel.com>
 <87a6pzeqfi.fsf@intel.com>
Date: Wed, 21 Apr 2021 14:03:45 +0300
Message-ID: <87tunz99wu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/11] drm/i915/adl_p: Add support for
 Display Page Tables
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 15 Apr 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 14 Apr 2021, Imre Deak <imre.deak@intel.com> wrote:
>> Alder Lake-P adds a new Display Page Table hardware structure, mapping
>> tiled framebuffer pages to the display engine, reducing the address
>> space required in GGTT for these framebuffers.
>>
>> This patchset adds support for this taking a minimum set of dependency
>> patches from the ADL_P enabling patchset at
>> https://patchwork.freedesktop.org/series/87897/
>
> Cc: Daniel
>
> I guess we'll need a topic branch for the base enabling to merge to both
> din and dign? I guess it'll need to include the stuff in
> topic/intel-gen-to-ver too.
>
> Shared stuff like this keeps being a problem with the separate dign
> branch, especially when the only way to sync is to merge both din and
> dign to drm-next and then backmerge to both.

I've created the topic branch.

When this series starts getting ready to merge, please use the
topic/adl-p-enabling branch, so we can merge it to both drm-intel-next
and drm-intel-gt-next.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

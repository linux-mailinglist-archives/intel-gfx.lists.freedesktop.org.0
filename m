Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB176008AA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 10:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA77310E85F;
	Mon, 17 Oct 2022 08:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC27B10ECE9
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 08:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665995430; x=1697531430;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=UYv22Dlz3EwgVQe5spVgsHxye85g1iZlrD3DJAxLV08=;
 b=ZMvJDG++i2fgHvaci2IVvI1A1glIQrfPb5SOre6UI1yLw8Z7iJ2z6zQ3
 YFihCkDcAIp49X5SZIBsIpoGQnBiU8Tl3ZDj2NhumDDufP8WhZcigdx52
 Mo2qP/PTbi/bDOwvxZdyPwDmFRFNGokWj2/mv40KS54lSnF3AuER/ChUb
 hA68tD8wk8qgVUcai/GU5TiQG9XJfH0zQN6pIrN8o2OwRTtCx0+LP22f0
 7Ag8JCVnpWDOgHbXPLOPFsiFLJ5/tmtYHF5m6TLmTWplmMM5Z5Y2umT0/
 05Fk3oFXzic2QE2fqqorzcI0hEOdcC8IopmFL2+yi6RF5ozm+JHsp2P0p Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="306820901"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="306820901"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:30:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="696970402"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="696970402"
Received: from cgarnier-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.27])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:30:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>, intel-gfx
 <intel-gfx@lists.freedesktop.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "Thorsten Leemhuis (regressions address)"
 <regressions@leemhuis.info>
In-Reply-To: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
Date: Mon, 17 Oct 2022 11:30:45 +0300
Message-ID: <87a65usvgq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] alderlake crashes (random memory corruption?) with
 6.0 i915 / ucode related
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

On Thu, 13 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
> With 6.0 the following WARN triggers:
> drivers/gpu/drm/i915/display/intel_bios.c:477:
>
>         drm_WARN(&i915->drm, min_size == 0,
>                  "Block %d min_size is zero\n", section_id);

What's the value of section_id that gets printed?

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

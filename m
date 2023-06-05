Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2467228E7
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 16:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E0E10E2AC;
	Mon,  5 Jun 2023 14:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0E810E2AC
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 14:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685975747; x=1717511747;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=to5vgU+Mqi2i1eZPmg+GiNuSeI2AOAcoFMU4o+YEx2E=;
 b=lN7/mU6QyoDIZSPYPwRCTYQslwcnPDD8v12Y+LSwYp7PCuGVnxY4vc2N
 khVb9kKEuJIRhW9q3mGPZPAizHiii4ubQ4wKYWchsJOMngSkLnagz+Nz+
 C1yJWHjVpmDaR6xiYhtKMMrnX9bkXBSnxQWhf2biURCK+KZ8c59KM7jV2
 G5bop+CiL83x/YYMvfkITHzniU3qR0XXBMb5dgDSw/0HctjD802hLv8zh
 leNIeXEjMy8ZavYt/G3jE0QREBJPbmUDObmy2XA6wF532pUjtR5wsAoyO
 rJ8fyCzNmbG1STrH5z6SrOSOQaVHGFpKcnD1gNBYi6rnNrMcwQdZEU/aW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="341021259"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="341021259"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 07:35:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778583472"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="778583472"
Received: from egrabovs-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.56.198])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 07:35:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Zhi Wang <zhi.wang.linux@gmail.com>
In-Reply-To: <87h6rpdcfx.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531020411.18987-1-zhi.a.wang@intel.com>
 <168555222135.17615.4107362582795659089@emeril.freedesktop.org>
 <87h6rpdcfx.fsf@intel.com>
Date: Mon, 05 Jun 2023 17:35:42 +0300
Message-ID: <87wn0iase9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_remove_unused_variable_gma=5Fbottom_in_comm?=
 =?utf-8?q?and_parser_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 02 Jun 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 31 May 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>> == Series Details ==
>>
>> Series: drm/i915/gvt: remove unused variable gma_bottom in command parser (rev2)
>> URL   : https://patchwork.freedesktop.org/series/118512/
>> State : warning
>>
>> == Summary ==
>>
>> Error: dim checkpatch failed
>> c6878ab01be9 drm/i915/gvt: remove unused variable gma_bottom in command parser
>> -:63: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Zhi Wang <zhi.wang.linux@gmail.com>' != 'Signed-off-by: Zhi Wang <zhi.a.wang@intel.com>'
>
> I can fix this while applying, but please indicate whether you intended
> to have From: Zhi Wang <zhi.a.wang@intel.com> or Signed-off-by: Zhi Wang
> <zhi.wang.linux@gmail.com>.

Ping. I can't apply this with this warning, and I can't fix
Signed-off-by unless you tell me what to do.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

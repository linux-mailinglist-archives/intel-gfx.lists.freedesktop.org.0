Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1E067B46B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 15:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C0D10E7E3;
	Wed, 25 Jan 2023 14:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3207710E7E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 14:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674656890; x=1706192890;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=cTlAi2AIHAtqg07S+COvUhodq6fkZGVMmaSpVVMmOV4=;
 b=MYyzRcKuNvfaph9dAPWC5QKIsZVLx4fuHFTcUXqSVM8wue+G5Npu+3X2
 Mi6E/yNkMFl0CblR7kLHuWkL5sd0YSViXT+WKFE8dJGPEEW78W8VhyCQh
 QUIr+4Fdn7mwZXQ+Sst8Rp0j1/yIGVAedEB5a3LibYZ52vgxBsp18WT7I
 dhTjSwA+BrvDyHvF9ihvWmsKy33YtysEWGe2pEVhS61cwS3xqdqoAH61R
 8+oDBOgCY0tDWR9MKZKjvOUa5nRO0w7upf+7m5Od3jx0cBovmcPYB5UJI
 /MaXgBcx59TGfBYFuQZd7G0xOgJvcp4rdQFf58xIBgX4CRljb2dJLdvQU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="388909393"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="388909393"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 06:28:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="725869341"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="725869341"
Received: from ericnguy-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.123])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 06:28:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org
In-Reply-To: <64e38dd19751aae9718dd077e94cb557a5cbd378.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230118151800.3669913-1-jani.nikula@intel.com>
 <64e38dd19751aae9718dd077e94cb557a5cbd378.camel@coelho.fi>
Date: Wed, 25 Jan 2023 16:28:05 +0200
Message-ID: <87k01a664q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/params: use generics for
 parameter printing
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

On Wed, 25 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> On Wed, 2023-01-18 at 17:17 +0200, Jani Nikula wrote:
>> Replace the __builtin_strcmp() if ladder with generics.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> Neat! I learned something new.  For the whole series:
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center

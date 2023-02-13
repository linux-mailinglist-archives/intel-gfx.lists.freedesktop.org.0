Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FF0694B31
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 16:31:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E2D10E04B;
	Mon, 13 Feb 2023 15:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514B010E04B
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 15:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676302316; x=1707838316;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eHSX/vqIRrWdCuavLFjQArHGWIsgQDnnyVDRyDqTxyo=;
 b=AlTeqEGLH6xfZyJeXE+Vkj3WVcA9oM7B7T9VE6CDfZQu3iWHZMDtsS0h
 m0ykicwOBHmkrzSeZgfSBtStNvGC9u+Olyf9NNqhjvBeiq2+LTFeeomMo
 aTWJ9iH8lcgYI4IjaWbInILhKdG8/uMyBRDaxPAWPbEpTC7AQ+Whl7nnh
 f5N2HqrBYYb2cIOwR/gmCgKVoqThrKM4xKpnoTA1RsgE12gkQWrhhUM+d
 5bYnDsOxqetIUHXqCoaMaiZ+AgWBS0eoA7navMo4q8NBj71nY6tQkC6/o
 2PlsJ5BNowqLt6HbzeU/fTLlESaNGGXAO2bRpiji0Dm3W9Cz8j7nOFZ2W g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="395525138"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="395525138"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 07:31:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="777887239"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="777887239"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 07:31:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <17d5dc0d-4bb9-6e13-bac1-8d1e7aad3f17@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230210150344.1066991-1-andi.shyti@linux.intel.com>
 <17d5dc0d-4bb9-6e13-bac1-8d1e7aad3f17@linux.intel.com>
Date: Mon, 13 Feb 2023 17:31:46 +0200
Message-ID: <87pmadvaxp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use i915 instead of dev_priv
 as name for the private device
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 13 Feb 2023, "Das, Nirmoy" <nirmoy.das@linux.intel.com> wrote:
> On 2/10/2023 4:03 PM, Andi Shyti wrote:
>> It is becoming a strong habit to call the drm_i915_private
>> structures "i915", but there are still many left that are called
>> dev_priv.
>>
>> Sometimes this makes grepping a bit challenging and anyway it
>> keeps a coherent style.
>>
>> Rename all the "dev_priv" structures in the gt/* directory to
>> "i915".
>>
>> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
>> ---
>> Hi,
>>
>> just checking if we want something similar. I have this same
>> replicated patch for the rest of i915 but I want to make sure we
>> actually want it.
>
> I might be lacking historical context here but I assumption is we are 
> moving towards replacing dev_priv with i915 everywhere.

Yes. The implicit dev_priv still present in some of the register macros
is the only reason not to convert, and even in those cases we should
look into fixing that too.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center

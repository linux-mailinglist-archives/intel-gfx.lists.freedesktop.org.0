Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5698A7474AE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 17:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F8F10E146;
	Tue,  4 Jul 2023 15:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3537D10E146
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 15:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688482937; x=1720018937;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=s6kB2RCgsjvpTXVOeGsc/DC9LwQgw5ysIY3fmGlusZo=;
 b=gR2kbiPm7H8kxvvbRcM/B0yxy+oDV7/kSroV4e2PmeHXT5Suyl26CFJ+
 TxhZUUHsoIc6xadZBMBbRPjhioFqpKRDg4Ch6yNq5q9+TFhxud81lgNej
 +UUtip5FGi2EVjEGDLLFFFd0jEe2FjgqG1jIpWu6Ud1zkeLMR29z/HE3a
 5eR2ePaH0mimhi05n9lM4tDxGV2ecAay0/jnsDcYtOX+/r4zdKCc89E3T
 uHpJY7nTeblvM3xG7Qoywvdd1VA/smX1u8H+0z6j7v1hsfSd8bh72L0DJ
 1OqaYX2EUVgN5IQEi4F+MvjzA0vqt17Lpxvaee/isk6VACoSlZCOQwAdK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="449507707"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="449507707"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 08:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="892891165"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="892891165"
Received: from jbouhlil-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 08:02:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <sqew5fqcj3aiqvvi255urygvrjvipoq5mvdkqei52g2524nbpb@4mqesa6oleqp>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230627095128.208071-1-jani.nikula@intel.com>
 <sqew5fqcj3aiqvvi255urygvrjvipoq5mvdkqei52g2524nbpb@4mqesa6oleqp>
Date: Tue, 04 Jul 2023 18:02:12 +0300
Message-ID: <875y6z200b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uncore: add intel_uncore_regs()
 helper
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

On Tue, 04 Jul 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Jun 27, 2023 at 12:51:28PM +0300, Jani Nikula wrote:
>>Add a helper for accessing uncore->regs instead of doing it
>>directly. This will help display code reuse with the xe driver.
>>
>>Cc: Andi Shyti <andi.shyti@linux.intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks, pushed to din.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center

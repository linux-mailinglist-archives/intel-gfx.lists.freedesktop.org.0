Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4F0807414
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 16:56:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B99B910E766;
	Wed,  6 Dec 2023 15:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59C7710E764
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Dec 2023 15:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701878204; x=1733414204;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uuLzLwyYl7mleAlvocMOD786pBPKtSHRbW5GS61dcLI=;
 b=ZADL8zO52gRmk8q6Wznwjzq23wxZ1UAYIGOEH60O9NTTWzhkITb8/jgG
 /hiWXnsQ1c2RkkvKda0KZSXfqQpE51bnCn/DbNH3HAxWuuHjsVSzDvWLU
 l0ctjeesK0cKx7oT9SQvOHEoZvo2QIcFMICSf7nFAzXGT/6A408ZR01AW
 ML/wzN8hQfduvkL7m0eaelfC08OvT+BRfzNbM1weumCRK3yxizdMaMe6g
 XApt7rqnT5B8P4m3De7xz1EKTqLURS/g4/0OY8lHMMa0s4vx9eJCMOXjG
 mviiC+7VRRRZssOjVnbUbLo/Dp5lCXlwbwMz6nmktlTk7Xgk/b45fjOKH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="15634887"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="15634887"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 07:56:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="721121329"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="721121329"
Received: from karthik-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.46.178])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 07:56:41 -0800
Date: Wed, 6 Dec 2023 16:56:38 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZXCZttuUCQzkkq5L@ashyti-mobl2.lan>
References: <20231205-selftest_wait_for_active_idle_event-v2-1-1437d0bf9829@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231205-selftest_wait_for_active_idle_event-v2-1-1437d0bf9829@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: wait for active idle
 event in i915_active_unlock_wait
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Tue, Dec 05, 2023 at 02:09:37PM +0100, Andrzej Hajda wrote:
> After i915_active_unlock_wait i915_active can be still non-idle due
> to barrier async handling in signal_irq_work. As a result one can observe
> following errors:
> bcs0: heartbeat pulse did not flush idle tasks
> *ERROR* pulse active pulse_active [i915]:pulse_retire [i915]
> *ERROR* pulse    count: 0
> *ERROR* pulse    preallocated barriers? no
> 
> To prevent it let's wait explicitly for idleness.
> 
> v2: wait only in live_idle tests
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

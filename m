Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8556F80C1
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 12:30:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C964210E013;
	Fri,  5 May 2023 10:30:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58BB910E013
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 10:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683282608; x=1714818608;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QJ8+mm4kBzvc/c9/iP1hAdOZBZiSC110/xNSGq4XJPs=;
 b=U0XvsjIKhTI8EOi/v2cv792N6g/R6KS1i/Lqqit3+MArXL+bDFn38K5c
 KpO4GCJvn86ZuXCXwEhvGaGYT2xSGQsL2apTw2dEn2k7yM+oBLUGyBvxy
 UEJV1Zpw+e/Lx4rYNntMwTfVPOoRbmdfmDlmlyjzWWoVmIUWSEU1YONt0
 pePc1iDkO8w8OPmRLdXDb97hsxcneVifu5eNSdvLqJMH51eKd2/jCNyJh
 i3L8QUcNnqmNlUexeWQYeFYRsdehkDk/Meuwj99rMjKH1Bn9LPR5PEkhA
 zLDLiw4iTpN7eFKMrcUPRm6DqUf2WkJk/hH5cNNFRrZj13pOjYgy8ih16 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="329536501"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="329536501"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 03:30:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="647793804"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="647793804"
Received: from jsanche3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.37.83])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 03:30:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
In-Reply-To: <ZFPHAOmVp3NO6ef1@rdvivi-mobl4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1683041799.git.jani.nikula@intel.com>
 <89ab5cf179566c429383cc57db746038f75cba0d.1683041799.git.jani.nikula@intel.com>
 <ZFJsFsBPp/HS8I0k@rdvivi-mobl4> <87a5ykzb2u.fsf@intel.com>
 <ZFPHAOmVp3NO6ef1@rdvivi-mobl4>
Date: Fri, 05 May 2023 13:30:03 +0300
Message-ID: <87y1m3xe8k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 05/24] drm/i915/vma: fix struct
 i915_vma_bindinfo kernel-doc
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

On Thu, 04 May 2023, Rodrigo Vivi <rodrigo.vivi@kernel.org> wrote:
> But let's not block the progress of the much needed fixes. It's your call:
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to drm-intel-gt-next as-is.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center

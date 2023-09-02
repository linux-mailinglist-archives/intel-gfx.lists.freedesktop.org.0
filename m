Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE137790613
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Sep 2023 10:20:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7697610E19C;
	Sat,  2 Sep 2023 08:19:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8795210E19C
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Sep 2023 08:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693642797; x=1725178797;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=G3iDxHPFseVjFd16zGK4Q6cWJ15ov+ntDiS0JGLMnuc=;
 b=R2Dj9n9L/1zqn/h7/pcXJlhcFEs5OWEUVu7uAz3GetwQPrrWoEqG9gy3
 3eBB/XxB2XZhHi6E+ejE/Hh1rCok/yUM/UwGIIInco6v1sCFgR3+mw4vw
 0fUEJNPAaC//+T/zFgiMBMKhlb8udNe6xKLq31KlrjNR7o9ZX5pLEevDB
 9SmNvT19h5IoP9+tqiX9z1kbRad+sybLp58iueQLg3o6T5pF1EmrhrmPn
 NMpwjNEVxPRO8f3Vson6ls1l+pTGaWMBK0Ca7pDyKsYyXbnglbTrlmAuX
 bpvyN7sV0cOQewZhWjl2qanqYtUKR7SRsnvcAjSYvTcLdSGKpGd3xkpLT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="440329386"
X-IronPort-AV: E=Sophos;i="6.02,222,1688454000"; d="scan'208";a="440329386"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2023 01:19:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="743379231"
X-IronPort-AV: E=Sophos;i="6.02,222,1688454000"; d="scan'208";a="743379231"
Received: from adurango-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.43.44])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2023 01:19:55 -0700
Date: Sat, 2 Sep 2023 10:19:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZPLwKM6szJCxqcIK@ashyti-mobl2.lan>
References: <20230901150026.284883-1-jonathan.cavitt@intel.com>
 <169359052499.9815.8003080196699399541@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169359052499.9815.8003080196699399541@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIEFw?=
 =?utf-8?q?ply_Wa=5F16018031267_/_Wa=5F16018063123?=
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

> Possible regressions
> 
>   • igt@i915_selftest@live@gt_lrc:
> 
>       □ bat-dg1-5: PASS -> ABORT
> 
>       □ fi-rkl-11600: PASS -> INCOMPLETE
> 
>       □ bat-adlm-1: PASS -> ABORT
> 
>       □ fi-tgl-1115g4: PASS -> INCOMPLETE
> 
>       □ bat-rpls-1: PASS -> ABORT

looks improved... can we restart the tests, please?

Andi

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3317B9D25
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 15:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C627B10E3EF;
	Thu,  5 Oct 2023 13:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D3810E3ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 13:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696510814; x=1728046814;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FHOCAHJo3GiwFvf4QIV7xOZNiZXuwVVyFsxSakrxkl4=;
 b=WqUNrqrFnHMHcPJk00pClP18yJ1MlxCd/4wZlzW0l0FHWyePXZMCZd0x
 TJ0HGLubncRBC0R3+qKtvHjn6cpYgW6U7CtwKtgCLTwNgLzOZHOlyTd9u
 4KixrNtHDkf7o+Ip5+m+fjSDK18TJLCHjdp7HY2Hi0BdFVdcXSrqLX5eP
 +LvXtN1gTSP3hNMXJ9r8BmGQVjWJ5bxDzGTq9Qad1Kf/rE0hgru6njVSb
 XmAIx6B3pj1nvrArkCQwe4TpI8ukkBLCejvfZCiNBaMgK0G+JNLlDIexo
 JxGXZhU+jdK/Hb9H3qVmS0D6vx/jlfXY6kBA6oS4JDLxrkxzCnPBXTBFB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="5049950"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="5049950"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="1083013058"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="1083013058"
Received: from yklum-mobl.gar.corp.intel.com (HELO intel.com) ([10.215.244.7])
 by fmsmga005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 06:00:10 -0700
Date: Thu, 5 Oct 2023 15:00:04 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZR6zVOy3GbvbuPIX@ashyti-mobl2.lan>
References: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
 <169647579100.7514.15467798178604356829@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169647579100.7514.15467798178604356829@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgU3Vi?=
 =?utf-8?q?ject=3A_=5BPATCH_dii-client_v6_0/4=5D_drm/i915=3A_Define_and_us?=
 =?utf-8?q?e_GuC_and_CTB_TLB_invalidation_routines?=
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

> CI changes
> 
> Possible regressions
> 
>   • boot:
>       □ bat-dg1-5: PASS -> FAIL
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
> 
>       □ bat-adlm-1: PASS -> INCOMPLETE
>   • igt@kms_busy@basic@flip:
> 
>       □ bat-adlp-11: PASS -> ABORT
> 
>       □ bat-adlp-6: PASS -> INCOMPLETE
> 
>   • igt@kms_busy@basic@modeset:
> 
>       □ bat-adlp-11: PASS -> DMESG-WARN
>   • igt@kms_force_connector_basic@force-connector-state:
> 
>       □ bat-rpls-1: PASS -> INCOMPLETE

Although these failures appear very consistently, they don't look
related to your patch. But still I wonder why they show up so
consistently.

Is anyone from the list able to provide some thoughts?

Andi

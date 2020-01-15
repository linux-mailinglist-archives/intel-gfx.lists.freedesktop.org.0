Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C1A13CB52
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 18:48:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E571D6EA5D;
	Wed, 15 Jan 2020 17:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A510E6EA5D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 17:48:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 09:41:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="218212653"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by orsmga008.jf.intel.com with ESMTP; 15 Jan 2020 09:41:23 -0800
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Jan 2020 17:41:22 +0000
Date: Wed, 15 Jan 2020 19:41:19 +0200
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200115174119.72hnu4m46hsutwkn@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <20200115095054.10660-1-stanislav.lisovskiy@intel.com>
 <157908440215.2008.16253198705569449094@emeril.freedesktop.org>
 <d514b5af56354c6bbe26da4a8c291c00@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d514b5af56354c6bbe26da4a8c291c00@intel.com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBF?=
 =?utf-8?q?nable_second_DBuf_slice_for_ICL_and_TGL_=28rev13=29?=
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 15, 2020 at 05:49:42PM +0200, Lisovskiy, Stanislav wrote:
> There is some kind of build failure happening with all recent series:
> 
> 
> CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   CHK     include/generated/compile.h
> Kernel: arch/x86/boot/bzImage is ready  (#1)
>   Building modules, stage 2.
>   MODPOST 122 modules
> ERROR: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> scripts/Makefile.modpost:93: recipe for target '__modpost' failed
> make[1]: *** [__modpost] Error 1
> Makefile:1282: recipe for target 'modules' failed
> make: *** [modules] Error 2
> 

this is just the 32bit build failing, fix already on the mailing list
and even probably in:

https://patchwork.freedesktop.org/series/71961/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

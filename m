Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C404E58EA
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 20:07:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B8D10E066;
	Wed, 23 Mar 2022 19:07:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C9E10E066
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 19:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648062426; x=1679598426;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=x8V5TzpP4mYynRyI4FX7Va+c7WxfD3HQ4Rspu/K5oBk=;
 b=DUONBBpf45/3etXqq9i4ZH0/sV/bWk2G/8vdO3MRZ4bIUiwpQgDWZMec
 +6TdQYjDDgSHh0oWMp4OYff1mMl41VcoVwkYFcDlV8Y80Vq6enQ7jz9WA
 EWU3qIlZHNXmB8NdomWEQtJjSGWPUl9aOAc73EjUW5f/KrXg/XQXXrHmV
 KZYYWsHo0Kqkutdrx5EDPwv/sIVZMr+795Cm83nMzwuWdQOJhVGNX9K+I
 j3IScOIOdaqH52ZIkiALokOg2w5/pVPH12pen/v5YrfCjKaTHbleQM4X2
 5kDWRJn92dIBbEFqeZYeMSVFYJUR/bHIq8IuKlY/mFIDembrcX88xQwjL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="344638678"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="344638678"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 12:07:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="552604698"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga007.fm.intel.com with SMTP; 23 Mar 2022 12:07:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 21:07:03 +0200
Date: Wed, 23 Mar 2022 21:07:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yjtv16p9PHtrhBVF@intel.com>
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
 <164806184942.17992.14893689632391798790@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <164806184942.17992.14893689632391798790@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_More_fixed=5Fmode_refactoring?=
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

On Wed, Mar 23, 2022 at 06:57:29PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: More fixed_mode refactoring
> URL   : https://patchwork.freedesktop.org/series/101707/
> State : warning
> 
> == Summary ==
> 
> $ make htmldocs 2>&1 > /dev/null | grep i915
> ./drivers/gpu/drm/i915/display/intel_drrs.c:1: warning: 'intel_drrs_enable' not found
> ./drivers/gpu/drm/i915/display/intel_drrs.c:1: warning: 'intel_drrs_disable' not found
> 

Where the heck is that crap coming from? There are no
references to intel_drrs_{enable,disable} anywhere.

-- 
Ville Syrjälä
Intel

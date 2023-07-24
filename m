Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2600D75FC60
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jul 2023 18:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F139B10E0D1;
	Mon, 24 Jul 2023 16:42:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B7E610E0D1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 16:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690216938; x=1721752938;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=F7Oj3em2skxp3ExIsLOrKyD0hE985uk7ft4E8TPKcgo=;
 b=dB1WMnQFXV8Ghp8pIXBEni9IzmJh06BGdAhtuSaT//N+rPq6n4hNy+Rq
 ruVuUBPdTRx0SjP5C7AxksnrNO0+bfsFpLmfV1hhD+8JYcExJh200HbDF
 pYS4XmPamZTV28mNkFKQFbd0qENUnYqHLVYzCCZUZPdUAnRMhGfMRN/J0
 71uxBqdDAfxEY6LjMGlREelk6g2IEG2kPA3XR87cGa6OTAoGGjcFBv+WY
 Vq8EWKotYMIBfXXZuy2sUwj7P+qZz37pce6fwfypY5WAUR+bAEGwVdTbn
 s/zASEXp6onv9K/bIwDWigqApjOpohY8sG/RYfRgw/K1sfbbbmd5x1gpw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="364953996"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="364953996"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 09:42:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="760866806"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="760866806"
Received: from gionescu-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.34.175])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 09:42:11 -0700
Date: Mon, 24 Jul 2023 18:42:08 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZL6p4LgaPXHJl41m@ashyti-mobl2.lan>
References: <7a036b88671312ee9adc01c74ef5b3376f690b76.1689619758.git.christophe.jaillet@wanadoo.fr>
 <168965198917.22205.16629208718496437915@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <168965198917.22205.16629208718496437915@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_an_error_handling_path_in_igt=5Fwrite=5Fhuge=28=29?=
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> Possible new issues
> 
> Here are the unknown changes that may have been introduced in
> Patchwork_120867v1_full:
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@gem_mmap_wc@write-gtt-read-wc:
>       □ shard-snb: PASS -> ABORT


This failure looks unrelated.

Andi

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A7C5B8998
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 15:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7DDD10E91F;
	Wed, 14 Sep 2022 13:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB65810E91F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 13:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663163952; x=1694699952;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=h/PCLeAeSXX1AR4FgjSRlaoHH4Qae5URFsYciVN50x0=;
 b=DMJA60skR++SY9ij3RFfWENf9ksdu4Vp/yP8OJKAzyJt/wRDxVCTTUBf
 iDSEGfANlV7L6wgatuXMDlceduYAxW4xqhBTi3j21TgmeU6SoMygn+eF2
 jYkyYpOzYRGoZBye0zeYyNdFixMRfdHYlIfm9D+l0FNTjZVw563m3iMSz
 LkOh/GdKfEJlD1lnR33PiZ/gyhO7rrfS9O6g1X7bduMXHHrT5xgoJJSYH
 WW7NzTpzymvGztZe2NFm12oTvbOHH+8Vi5kg79GPCzvgI0aX9lE5tm3Q+
 mDogAmhbEESYbPsR1n5af0N1G+//CZz2dv2+GmThjlej3334HYMdGblOa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="324688018"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="324688018"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 06:59:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="679056873"
Received: from pvasili-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 06:59:09 -0700
Date: Wed, 14 Sep 2022 15:59:07 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YyHeK0PVXLp9b7zi@alfio.lan>
References: <20220913161039.155964-1-janusz.krzysztofik@linux.intel.com>
 <166315801069.30166.16076554408784582579@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <166315801069.30166.16076554408784582579@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Really_move_i915=5Fgem=5Fcontext=2Elink_under_ref_?=
 =?utf-8?q?protection_=28rev2=29?=
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

Hi,

> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_105975v2_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc
>        :
>           + shard-iclb: [3]PASS -> [4]DMESG-WARN
>      * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1:
>           + shard-iclb: [5]PASS -> [6]INCOMPLETE

this looks unrelated to the patch.

Andi

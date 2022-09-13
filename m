Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0F85B6A74
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 11:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A490210E693;
	Tue, 13 Sep 2022 09:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE3D10E699
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 09:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663060457; x=1694596457;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hcBCszQvfuHP1goMOHin+Ohp+kgyzjGwFCCB0xB9z04=;
 b=ar8wJs+6Rp/JLtjDzEzuxfz+RgLYEa8GwCI0ueJ5Gfe7fI9KCIYN0QtG
 psgw1zMT/A+oWemJ0hjQd5PtljuluvQaNAvjZAOdFwYgcuvFB/IKSrWLJ
 fJ5s8NGSp2VgwRjOXK5mOysIgX1Vm7qeojC6wixDnD804sICKUt7NkKie
 LgAlovBHs3UoY4Tpo2Xo35c4KoYZ8hJZ2wzDsBY9hmJVMzsvVyPcSYGFt
 KvcS6KjEOEC88o8B82De4R/q9Esyzlx9oW/Ybyt32P8RtNdGvPDxF+5+c
 E+hpvKHwCkvaXrOQ6wFUqW1HSsqqVtFdEV6ExOQL9YA3haQUyNOhJGsTt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="281108218"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="281108218"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 02:14:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="646851526"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 13 Sep 2022 02:14:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Sep 2022 12:14:13 +0300
Date: Tue, 13 Sep 2022 12:14:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <YyBJ5eObrFONkc1k@intel.com>
References: <20220905102355.176622-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220905102355.176622-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915/psr: Disable PSR2 when SDP is
 sent on prior line
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

On Mon, Sep 05, 2022 at 01:23:53PM +0300, Jouni Högander wrote:
> Selective update doesn't work if SU start address is 0 and start/end
> SDP is configured to be sent prior to SU start/end lines. PSR2 has to
> be disabled in this case for Alder Lake.
> 
> Additionally this patch set updates changed equation for sending
> start/end SDP prior to the SU region start/end.
> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> 
> Jouni Högander (2):
>   drm/i915/psr: Equation changed for sending start/stop on prior line
>   drm/i915/psr: Disable PSR2 when SDP is sent on prior line

Series pushed to drm-intel-next. Thanks.

> 
>  drivers/gpu/drm/i915/display/intel_psr.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel

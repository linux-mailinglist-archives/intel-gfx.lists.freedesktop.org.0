Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A17A6EDF46
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 11:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856BE10E6E5;
	Tue, 25 Apr 2023 09:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E6D10E6E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 09:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682415079; x=1713951079;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4KSXNCpYjyifTC7mT8taVlFDZ38e+fndQRTYCQZNeoE=;
 b=N8Lv3lkE/VuiRZRX1buyWeRaMB3zO0zVqf/0yL+p8ypud84rjMW428y/
 B9ucYKRU9GkAGtYyc2gRjMUTG0/M5xW1vuH743QMHLcaU63G6ee5nWbLk
 IzteF12dokJcDXCvDMJY9FW8pnjNm01DUF1xD6sTfc9td02FqABsRouQK
 0fkvVloEE6p8dgfsJ+TMLXE12y6trwYU/BX5l1V2DufmuLxM2zsk6U25V
 2Tvsn/5gp738X5gsdldTHXiKlfiIPiKS9IxewefBmqIrmcn7neTj1PMp+
 V6YZXkMW/KRNQtEvYwr0oo8MzEpplFuT/Spt6rnmJOkbCZi4tqhd54+m7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="346732314"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="346732314"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 02:31:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="696111805"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="696111805"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 25 Apr 2023 02:31:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 12:31:13 +0300
Date: Tue, 25 Apr 2023 12:31:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: youling257 <youling257@gmail.com>
Message-ID: <ZEed4a0krg3aoJjX@intel.com>
References: <20230329172434.18744-1-ville.syrjala@linux.intel.com>
 <20230425054657.18474-1-youling257@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230425054657.18474-1-youling257@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [1/2] drm/i915: Fix fast wake AUX sync len
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

On Tue, Apr 25, 2023 at 01:46:57PM +0800, youling257 wrote:
> This patch cause suspend to disk resume later hdmi out no sound.
> Revert "drm/i915: Fix fast wake AUX sync len", suspend resume hdmi sound work.

I find that hard to believe. Fast wake is a PSR2 thing, which has
nothing to do with HDMI.

-- 
Ville Syrjälä
Intel

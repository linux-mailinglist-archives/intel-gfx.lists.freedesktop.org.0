Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 194B654E362
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 16:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 418761126B1;
	Thu, 16 Jun 2022 14:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78DD51126B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 14:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655389745; x=1686925745;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WTFF2oh9tGl85qV+iEe5sM4YrernOICXGuz+idiuPAQ=;
 b=VGNc6sAbUGMsZK/sx2gRy3an1qoTTSf/ljA5Tyi2kssN+50KNyYTNNg6
 95SKpfm0Qdgr91EMFHMsfTPP2s6C4CxWh8U/NIhKv5up5JAjBFgiZhUmh
 xpa5x0Qml/8M1vdwdYOw32LVlgImqESPGIUvNRNqrETW5QeW97eUs/esY
 DhQsRYp9/u/TD98JIO2vW4d+2wOtDI78wYv1nSfcRqrr6yjGA6i9Zf2/K
 25BlQPmO/gZV082wocMH6fKm53VlYMbfx3bk5B6DFj/UUXo9EVbNBhIxo
 eRb20PELmkoO6m8ynO6ydBP4cQbERcX+9fYYzJ08+rlZnRkL2esDBniWe Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="259721855"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="259721855"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:29:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="575026813"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga002.jf.intel.com with SMTP; 16 Jun 2022 07:29:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jun 2022 17:29:00 +0300
Date: Thu, 16 Jun 2022 17:29:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yqs+LGQBJaqdbzYJ@intel.com>
References: <20220615174851.20658-1-ville.syrjala@linux.intel.com>
 <87fsk4x4ll.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fsk4x4ll.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Extract
 intel_sanitize_fifo_underrun_reporting()
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

On Thu, Jun 16, 2022 at 01:52:38PM +0300, Jani Nikula wrote:
> On Wed, 15 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Pull the underrun status sanitation into its own helper.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On the series,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> I'll respin my state readout extraction on top of this once you've
> merged.

Pushed now.

-- 
Ville Syrjälä
Intel

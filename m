Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DBEABBEF8
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 15:20:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6192110E23A;
	Mon, 19 May 2025 13:20:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cFaXY88w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A89010E23A
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 May 2025 13:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747660806; x=1779196806;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nxoWE+FDEtbiDeNp3AYwgTty3MNtuqLCi8CD8g6LxbY=;
 b=cFaXY88w5Ze56N8iJqVF/SvGM3tDzp0P6ePWzpguAxds0OHIXTI4PECW
 rkWD0IMPDLdA9bXVm67zPLUU5SOnnlLic+dYBpol7eNZYf/CSON8svq21
 uxLlLYmDBj3IUGNJtr6jrTKuLiQQoXjn/Uskag2JU45eL/IcXRQtQNIjc
 6952NUF4zJl52NtwflSEtiokQXTiLDltfrwr7lz3ynJC7GdrjqpT1+oQ7
 2bxcMXhCJztwFEWaxMN0io94whAEymlZwa2yX4+CM7/qc+XT4NR8erdxL
 TFlr87xcfpL4tlvp+oUGJr7anecjXmZUtzzoCVD0TwTN7s54d+YYUU05o Q==;
X-CSE-ConnectionGUID: Bs7obuquTX2jxEC9yekdQQ==
X-CSE-MsgGUID: uGHar5I4TZmJLeVO0o6oOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="60215085"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="60215085"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:20:05 -0700
X-CSE-ConnectionGUID: ZjzQ2iBeRdeX671b1QcEMQ==
X-CSE-MsgGUID: aUerapTcRfa6xlXBKPsLtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="140386209"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:20:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Hannes Reinecke <hare@suse.de>, Niklas Cassel <cassel@kernel.org>,
 Damien Le Moal <dlemoal@kernel.org>, kernel-dev@rsta79.anonaddy.me
Cc: linux-ide@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: Re: ahci + intel iGPU problems
In-Reply-To: <29d05b80-1381-436c-8c6a-ec30113c069d@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <aCdAvkKOfBEQCnZd@ryzen>
 <29d05b80-1381-436c-8c6a-ec30113c069d@suse.de>
Date: Mon, 19 May 2025 16:20:00 +0300
Message-ID: <8734d0vitb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 19 May 2025, Hannes Reinecke <hare@suse.de> wrote:
> The nasty thing about i915 is that is reconfigures the _root bride_.
> As the i915 device is always built-in, the driver 'knows' what's
> best for the root bridge, and reconfigures it.
> (IIRC this happens if you several outputs and for some reason they
> are not configured correctly.)
> And if you are particularly unlucky the driver configures it wrong,
> killing other devices in the process. That happened to us once, where
> the i915 driver ended up killing the NVMe device.
>
> Please check the i915 output configuration, and try to get a PCI
> configuration readout before and after loading the i915 driver.

Would you mind pointing me at where you think we're doing nasty stuff,
please? Sincere question.

Side note, i915 supports discrete devices too.


BR,
Jani.

-- 
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A6F8D44B8
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 07:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A9F10E058;
	Thu, 30 May 2024 05:19:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bIix1vYn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F9DA10E058
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 05:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717046370; x=1748582370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=36LzkfVAmtQXoclLTPSKG3OZGfKRUAFABlQRHgPJS3Y=;
 b=bIix1vYny0hfowNJ7NXnhdwFbKwnub45b6x/m98EBigIxVVTHQHaQLwH
 6ypsK1qkzRAIHvtt0QuPMT+jdUiN5dNtYACQzH8IjHSzZ/jfgcy49aC5l
 n4viFfXgbBCbPiaotVxyHsXlTqUAw+avN3CRV2MIOIFPsRxSL16ZPjoP7
 brxJYz04iqIpBw62ZXx2xqhfSWMBIuAN3yg5w32EeJo2+jUh5/lo1hWkN
 vIbLOy0WP0CW+WdaNaQXrvPSM9rhTRr5vhF0AdUXVo3DvUrT0tYUEIj+f
 Y1qEZNTV2sQSHLb32OfuK+rutCmgy5P6g8yKI1Zshz1XSkNitGDqI86/z g==;
X-CSE-ConnectionGUID: XestIWSEQl2hVYSl77XeoA==
X-CSE-MsgGUID: qxhOo6mrTxK57HczIci2KA==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="36020625"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="36020625"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 22:19:25 -0700
X-CSE-ConnectionGUID: IuGHm9DMRJuGs1azrYsgOg==
X-CSE-MsgGUID: WJ07wh5vSLaRrCVwQ4HoNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="58855720"
Received: from gyu3-linux.itwn.intel.com ([10.225.64.210])
 by fmviesa002.fm.intel.com with ESMTP; 29 May 2024 22:19:22 -0700
From: gareth.yu@intel.com
To: jani.nikula@linux.intel.com
Cc: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, tejas.upadhyay@intel.com,
 ville.syrjala@linux.intel.com
Subject: drm/i915/display: Fixed the main link lost in MST (rev6)
Date: Thu, 30 May 2024 13:29:48 +0800
Message-Id: <20240530052948.3746443-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240430073112.10586-1-gareth.yu@intel.com>
References: <20240430073112.10586-1-gareth.yu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Please Ignore the last message.

Hi, may I know the status of this change? What is the next steps?

Thanks,
Gareth

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 988DE4DCF13
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 20:56:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF74010E74B;
	Thu, 17 Mar 2022 19:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D2D10E74B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 19:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647546991; x=1679082991;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qXvV8W08p/uU8HjyBVAPlSxqbXm6AeuZhFFNcsyPADs=;
 b=BU0NKMzP213DR3CXYuLIADYJcRXXQwc9IEAo/E9+WkxWGPnmqNVraGPF
 vgMBt/JEdTTSLyFGqM+/OlkhpWhY5f1qWmlcY1bXSA6u5s+lbut5CyWeu
 LJeOwyBqF/ScdKHRfPJCSxaXSqx15330XCy3GxIPyvCgQvdSzf6UyFmRw
 N2nOcoCFZrIq0aOgBR5OwfesPvhj6Lv9rIBvPgQ581EQMxcEpkGphq0oS
 AYvWpOq5Xapg3BZysu0t6V6yTh8QhmITctwNs6f1AEwqDKkEXKp0KLLhn
 H7u1B1qkhMqWMTr7kWStra426cfPMegqD0cDNKJZuv2HfA/uUsuUj381I g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="237583616"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="237583616"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:56:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="635489836"
Received: from cjmartin-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.31.111])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:56:29 -0700
Date: Thu, 17 Mar 2022 12:56:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220317195627.26qvnunzriw5ose5@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1647542120.git.jani.nikula@intel.com>
 <a7799cb1c774cc7ee57ca27eba1d385d13586982.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <a7799cb1c774cc7ee57ca27eba1d385d13586982.1647542120.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/dmc: abstract GPU error state
 dump
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

On Thu, Mar 17, 2022 at 08:36:18PM +0200, Jani Nikula wrote:
>Only intel_dmc.c should be accessing dmc details directly.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

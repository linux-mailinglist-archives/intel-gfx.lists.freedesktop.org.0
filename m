Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC190551366
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 750C410E7AE;
	Mon, 20 Jun 2022 08:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE60710E7AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655715256; x=1687251256;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Hi/3hYLD2/N4GiBQj2yF7bAiLkvuHQyf2EGAeeMNXNg=;
 b=JoWiCS7Nl+oQ4pnALyOEmrj63RjmaW9SdE7bzmSjOE+65VjSVwHca/ab
 EwDSfSvM0YyTbjjgA63P8rCpDxJ5zjskmt7U3TnzqGZrBMXWaJ1XLffZw
 XgVsZtzV3xv2cBvNmXYP90H0GnfZDVlUfunYtYyqAqZjDr6hG9FglDVpO
 A15k2qkUzJauGMv/ntaZYY6ERztgDR8cCOzfhi9A3YIf7JPb3c5D0KIjZ
 a4WsdaaYh9hGnI6lnISXm3Pdi5jgUSJxUScm4x6XnVrjIwCNYFsMKqtwW
 4KKjO3zfGavdJEAeWEOzsY4D8qTbn28iUyu7y03BsDGR1DNiZY/VeRu31 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="260274403"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="260274403"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:54:16 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="833016733"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:54:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1655712106.git.jani.nikula@intel.com>
Date: Mon, 20 Jun 2022 11:54:13 +0300
Message-ID: <87tu8fu34a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 00/16] drm/i915: stop modifying "const"
 device info
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

On Mon, 20 Jun 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> Move any device info that gets modified runtime into runtime info,
> making device info a const pointer. Finally throw mkwrite_device_info()
> into the curb.

Had some SMTP issues sending this series, sorry if you got multiple
copies of some patches.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center

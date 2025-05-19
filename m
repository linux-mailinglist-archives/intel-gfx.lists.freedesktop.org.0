Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ABDABBEBB
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 15:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CF5810E19C;
	Mon, 19 May 2025 13:11:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ac5TCesV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E0110E24C
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 May 2025 13:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747660295; x=1779196295;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=P8RdGThU+hipR/2ad3qsz05rSrV8fdqfpNK+4SlxH9k=;
 b=ac5TCesV5FFxfEgLvKNswHqf/cMOHlppy3+MQVbgzVAcblB2Z7glR+qi
 RuT03UyIG23JQwcu5GM7IOwNVA6tkv1+vPeEn9TRYWO4QhCIJy6HNSPH4
 lMVIWtUe3uknlYpfq09wZOHDQQ1cJMLc1kT0mzkur++ZaI23sS4/fFzYi
 N/4PLEgDO2VKZX18Iv3oXuIN+hEpcdMDnPI61HOIbBhOaNv0RI/NQGJs2
 qkbPJ3mfqjKYIGQihXSnm2JaBQM57qKhJZkijQopaKm98sw9mFMsaUpRw
 0XT6cl63PXg7Tnxx3WBpYiQ0aMJQ5SJz1S8NlULFYOCpURQIWFTvhGn6i w==;
X-CSE-ConnectionGUID: soKVLy1tSX+IzRKOFY3ajQ==
X-CSE-MsgGUID: B9GYa2XOQo6rG7mqocKuLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="60900851"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="60900851"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:11:33 -0700
X-CSE-ConnectionGUID: 8MjmC/5nS5GOJvSUuHALnA==
X-CSE-MsgGUID: 6LhtoAN+RMOWj4tVd4mDeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="176482580"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:11:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Niklas Cassel <cassel@kernel.org>, Damien Le Moal <dlemoal@kernel.org>,
 kernel-dev@rsta79.anonaddy.me
Cc: linux-ide@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: Re: ahci + intel iGPU problems
In-Reply-To: <aCdAvkKOfBEQCnZd@ryzen>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <aCdAvkKOfBEQCnZd@ryzen>
Date: Mon, 19 May 2025 16:11:28 +0300
Message-ID: <875xhwvj7j.fsf@intel.com>
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

On Fri, 16 May 2025, Niklas Cassel <cassel@kernel.org> wrote:
> I do however see a bunch of i915 timeouts.

The i915 timeouts are normal for when its unable to talk to the display,
perhaps because it isn't there.

BR,
Jani.


-- 
Jani Nikula, Intel

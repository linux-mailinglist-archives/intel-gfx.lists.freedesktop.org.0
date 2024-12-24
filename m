Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D28F9FBCDD
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 12:05:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4DEC10E009;
	Tue, 24 Dec 2024 11:04:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QMlbYhth";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CFC310E009
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2024 11:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735038278; x=1766574278;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=GUwHvBvWBjIxfJeXFcacrRL04WZ600WiA1rfVUwwcu4=;
 b=QMlbYhthViSmlmkhfVGwdqw8+zGESfYRwwyW6Rqzb0kh2WkVRXJvO3+k
 YnWaz9sTnsNbYAezEX247F1Iyo5HBkeUWcYiW+QQ5bJuwZgcJVvOxr1gB
 8+zfV9ekA7w0BTsYaK82NbYSrr8K5LKrapVdSR1hVI2eXtGRQ5bcGAjcL
 mj0hvfBZtNjfgzFu9kFfgiBE/5hNeRhP+TeVzjFl/ubZepu99mD7Fzt9j
 V6FDh1If9VJOi9I+NzudIpIOQjHUUBLlpOHjaZzV5Or8Xd+xP4EKtJRl8
 rS/1MH6Y30X75OlrsDO5c8SXkyoYxYXsMvvC8IazqWo1L/Nf+wN1nnHWY A==;
X-CSE-ConnectionGUID: dOjs4n7NSUyFEQWgZSfiug==
X-CSE-MsgGUID: bGGwdBxcRImzO7vX2JwB+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="38354294"
X-IronPort-AV: E=Sophos;i="6.12,260,1728975600"; d="scan'208";a="38354294"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 03:04:37 -0800
X-CSE-ConnectionGUID: GF3cod+QQoO2xE3NJAZTwA==
X-CSE-MsgGUID: bAoWcIehRaqOpJY3gR/cNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,260,1728975600"; d="scan'208";a="99986962"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 03:04:36 -0800
Date: Tue, 24 Dec 2024 13:04:33 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH RESEND v2] drm/i915/gt: Log reason for setting TAINT_WARN
 at reset
Message-ID: <Z2qVQSiZ7ZmMS5kp@black.fi.intel.com>
References: <20241220131714.1309483-1-andi.shyti@linux.intel.com>
 <c66ibuhmcte6fu5vkdrl73icqts4yzlwlui4qolrlw5yaxxu6q@vqhtozsh5d46>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c66ibuhmcte6fu5vkdrl73icqts4yzlwlui4qolrlw5yaxxu6q@vqhtozsh5d46>
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

On Mon, Dec 23, 2024 at 08:18:46PM +0100, Andi Shyti wrote:
> Hi Sebastian,
> 
> On Fri, Dec 20, 2024 at 02:17:14PM +0100, Andi Shyti wrote:
> > From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> > 
> > TAINT_WARN is used to notify CI about non-recoverable failures, which
> > require device to be restarted. In some cases, there is no sufficient
> > information about the reason for the restart. The test runner is just
> > killed, and DUT is rebooted, logging only 'probe with driver i915 failed
> > with error -4' to dmesg.
> > 
> > Printing error to dmesg before TAINT_WARN, would explain why the device
> > has been restarted, and what caused the malfunction in the first place.
> > 
> > Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> it's hard to receive green lights from CI. Anyway, I merged it to
> drm-intel-gt-next since all the failures look completely
> unrelated.

Side note: You can trigger a re-run from patchwork without resend.

Raag

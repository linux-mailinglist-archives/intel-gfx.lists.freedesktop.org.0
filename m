Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBFB7DABE3
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Oct 2023 10:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB09F10E066;
	Sun, 29 Oct 2023 09:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15E9D10E066
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Oct 2023 09:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698572175; x=1730108175;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=99ipony6TarOe10nMEAH1ZzAU1+7z1AtIGKJiD+Hmvw=;
 b=RXDGrKZqzw588f5859kVf2c3im2A/bSpWhO5FY0WGi1AUPhHYL/MX0d+
 KJDhmpspxu218FqYodK9o6QHC6VtN4bPFh6Dhdg74y35J9hgFWW/5l0iE
 NE2fjCWb1w3tnvlEv75mwf9rnBVzGvATx0tSf6KJPJZufWwgmqFVTKixe
 kw4fH7fyYIyGrs2r3/HMVBnrtmfe9jys3ORf81j8VDWZGm6CdDZwTXqQH
 //SgxqZSr9wyvmFqTL9259dUtsUUUi8bzJwpwzAdJOzn814YpG2gHJJb6
 euJcp5v9LZ9myIKIhL31NuaXQmoiowlc1zF9hl8fzOLqRZZU3aOxNPSff A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10877"; a="372993201"
X-IronPort-AV: E=Sophos;i="6.03,261,1694761200"; d="scan'208";a="372993201"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2023 02:36:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,261,1694761200"; 
   d="scan'208";a="1252421"
Received: from mmocanu-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.41.135])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2023 02:36:01 -0700
Date: Sun, 29 Oct 2023 10:36:10 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Dorcas AnonoLitunya <anonolitunya@gmail.com>
Message-ID: <ZT4niuyQKQOz2VHp@ashyti-mobl2.lan>
References: <20231027174745.4058-1-anonolitunya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231027174745.4058-1-anonolitunya@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove prohibited space after
 opening parenthesis
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

Hi Dorcas,

On Fri, Oct 27, 2023 at 08:47:45PM +0300, Dorcas AnonoLitunya wrote:
> Removes space after opening parenthesis.
> 
> Fixes the checkpatch.pl error:
> ERROR: space prohibited after that opening parenthesis '('
> 
> Signed-off-by: Dorcas AnonoLitunya <anonolitunya@gmail.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8418AAC7D4B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 May 2025 13:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 933FD10E008;
	Thu, 29 May 2025 11:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="VtiueGA7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C71D10E008
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 May 2025 11:40:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2912A44DED;
 Thu, 29 May 2025 11:40:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AC5EC4CEE7;
 Thu, 29 May 2025 11:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1748518827;
 bh=y0MRYtwXJkJII3kLYNc7oLmACdvAsnvHCj+o5xBkdwE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VtiueGA7mP+sOzE63uSX6FYWPieAKtj7Bbs4kBDtAplgThKjUPXoIgyLdkpX8TiFe
 G29wQ7UYsYwyBYZKjY8Qn6yvHGDEclX1C7QFHMauTXOZ6B1imHSFs4Nog7AOgZ5hu6
 Yj4bqlqafS5cejQUmM0pkrFgJ6okhY7TA+lJNIkI=
Date: Thu, 29 May 2025 13:40:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org,
 llvm@lists.linux.dev, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: Backports of 2e43ae7dd71cd9bb0d1bce1d3306bf77523feb81 for 5.15
 and older
Message-ID: <2025052916-diploma-patient-cf7c@gregkh>
References: <20250527235023.GA2613123@ax162>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250527235023.GA2613123@ax162>
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

On Tue, May 27, 2025 at 04:50:23PM -0700, Nathan Chancellor wrote:
> Hi Greg and Sasha,
> 
> Please find attached backports of commit 2e43ae7dd71c ("drm/i915/gvt:
> fix unterminated-string-initialization warning") to address an instance
> of -Wunterminated-string-initialization that appears in the i915 driver
> with GCC 15 and Clang 21 due to its use of -Wextra. Please let me know
> if there are any issues.

Now queued up, thanks.

greg k-h

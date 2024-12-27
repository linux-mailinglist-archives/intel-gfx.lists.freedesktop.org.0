Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5059FD800
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 23:45:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F2610E28D;
	Fri, 27 Dec 2024 22:45:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Lgygfhsc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A074510E28D
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 22:45:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 213AA5C0642;
 Fri, 27 Dec 2024 22:44:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFA2DC4CED6;
 Fri, 27 Dec 2024 22:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1735339536;
 bh=2PjBacFdow8jluUXwR7nnatXFui2f5Nu5wqiA/P9DfM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LgygfhscYCi+hHOrFKiUrHupHbgmEAPfom2VcwOEodpZCIhvwKMngRQ3TgUacW7RG
 2Mw6i3KvpNTPnUxSUD2u/crF1bEte4Gq+P4V35OPur2p0XCPpuy0c6d+3xCqdJqO+K
 ZBsZzhxdCfQD1aoDqsZRQOQkEvlKAdItUi+NcCa+tK8lhX5afCkzf39wr/42QLcYoR
 ZbgW7SV1SQSpTlOfezWY6NusHHkfzuXa64/cgmBfTyUYUaqMZRGRKCsEsBgAAB69op
 wwLWeYqLnDxKY8C2J4U7N1ghYMwA+aZ1u/1JHmJrE790JXQVo8TXAJcLuyJ5v+AQsj
 C67EQXNtCtbjg==
Date: Fri, 27 Dec 2024 23:45:32 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: apoorva.singh@intel.com
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/gt: Prevent uninitialized pointer reads
Message-ID: <44nimknwum42txkpwoj6yavnfby2faz2nyapbr4k2i2up6y2jv@l76t4rtzknog>
References: <20241227112920.1547592-1-apoorva.singh@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241227112920.1547592-1-apoorva.singh@intel.com>
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

Hi Apoorva,

On Fri, Dec 27, 2024 at 04:59:20PM +0530, apoorva.singh@intel.com wrote:
> From: Apoorva Singh <apoorva.singh@intel.com>
> 
> Initialize rq to NULL to prevent uninitialized pointer reads.

where is it happening?

Andi

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FF867DC2F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 03:10:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB35810E0E6;
	Fri, 27 Jan 2023 02:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D08D610E0E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 02:10:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4FF68B81F79;
 Fri, 27 Jan 2023 02:10:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE9C7C433EF;
 Fri, 27 Jan 2023 02:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674785411;
 bh=e/JI6a5Meu+wMQ0KnN+CcVMio0tHGoMiAeWyaWS+pYg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M9wdp7jDXsINxtJdnG0jnsRW1FqkaclWl8ZvKrKg31VLzbPI2NYldFycK9XEx0lk+
 ypTUSgMAnpgPQzCo7Vz3tcN67XXKDc6VqB+BuTv56ppusXK2/wM7xOROwAgLmTqPAH
 U4NbjLWj3nq07sDGKpOJ6ldztEY8o4F/wxSTfliPObRzZ9ieGtjUkkpixCX6AmcPWg
 XZ5LM9kaY2dP763wDgL39m5Gyd0u9kEgpQ5o12cJUQSnnzs2hbBpBmaQM0S7otz9Ir
 U/qGIbbmQUuLf5x+tHjMJ0ITzWUxpGPTh4/8Qv6TOGFvu8dYnxsNMkiWxmsLOU4+FA
 VmphAAxMe4TBg==
Date: Thu, 26 Jan 2023 21:10:09 -0500
From: Sasha Levin <sashal@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y9MygXR2Z112ttJ2@sashalap>
References: <878rhs6ij9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <878rhs6ij9.fsf@intel.com>
Subject: Re: [Intel-gfx] v6.1 stable backport request
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
Cc: Greg KH <gregkh@linuxfoundation.org>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 24, 2023 at 05:47:54PM +0200, Jani Nikula wrote:
>
>Stable team, please backport these two commits to v6.1:
>
>2bd0db4b3f0b ("drm/i915: Allow panel fixed modes to have differing sync polarities")
>55cfeecc2197 ("drm/i915: Allow alternate fixed modes always for eDP")
>
>Reference for posterity: https://gitlab.freedesktop.org/drm/intel/-/issues/7841

Queued up, thanks!

-- 
Thanks,
Sasha

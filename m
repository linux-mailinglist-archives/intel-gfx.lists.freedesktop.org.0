Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E20071D08AD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 08:35:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD1916E1B8;
	Wed, 13 May 2020 06:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D9A6E1B8;
 Wed, 13 May 2020 06:34:57 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56FB4206A5;
 Wed, 13 May 2020 06:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589351697;
 bh=mak/AviUJOOy+rYq05rrccTXeIivuFgnT5Ks24gbTjU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VQqYFmw9te5u23iB//yWDy6wTXEvZhUTb+IBe9/3VkXASUDNgqmpErqKHsv/Nwuo8
 NO02m8i3oBNfTSXF1qMKcQxI5uCQ7tXrhM6LkhADPCXBMFkru5LwFt8is6IljiaABt
 6kHdHo8YJ/6V7++CFPFi4cyZW8r01vhp9IE+eqNk=
Date: Wed, 13 May 2020 08:34:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ashwin H <ashwinh@vmware.com>
Message-ID: <20200513063455.GA752913@kroah.com>
References: <d29f87f3f3abb4e496866253bd170faad976f687.1589305630.git.ashwinh@vmware.com>
 <20200513055548.GA743118@kroah.com>
 <89DE19F6-4CB0-4324-A630-C8574C8D591C@vmware.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <89DE19F6-4CB0-4324-A630-C8574C8D591C@vmware.com>
Subject: Re: [Intel-gfx] [PATCH v4.19.x] make 'user_access_begin()' do
 'access_ok()'
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "srivatsa@csail.mit.edu" <srivatsa@csail.mit.edu>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 Steven Rostedt <srostedt@vmware.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "stable@kernel.org" <stable@kernel.org>, Srivatsa Bhat <srivatsab@vmware.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 13, 2020 at 06:13:17AM +0000, Ashwin H wrote:
> This patch fixes CVE-2018-20669 in 4.19 tree.

Ok, but what does that mean for us?

You need to say why you are sending a patch, otherwise we will guess
wrong.

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

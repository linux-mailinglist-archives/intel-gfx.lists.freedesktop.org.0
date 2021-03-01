Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A820F327A71
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 10:09:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF746E526;
	Mon,  1 Mar 2021 09:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804876E526
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 09:09:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AE98A64E04;
 Mon,  1 Mar 2021 09:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614589753;
 bh=cWxdKqt2+NPSLGbZEsoYm3/hKAY685hWO1NrXZ6nOCM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kq7hGS6FMBkfy7E1SCifio5KpC9f2zbD1fcAcKiXWZaQ/aROAlBr2GIbZp1yWVpkD
 jbaoL2jLpVlU+tL7+U0+mOJ1F6w2cmfuZIPMOkjbDGYF1oqPssNX/26SxIsRFw4mHE
 oNXiNuXydQDHW/6ykYQlbwaDcz3PgvElJi/p4J5c=
Date: Mon, 1 Mar 2021 10:09:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Diego Calleja <diegocg@gmail.com>
Message-ID: <YDyvNoiRAQwT4boR@kroah.com>
References: <3423617.kz1aARBMGD@archlinux> <YDuzbvIjMO5mFcYm@kroah.com>
 <1911334.sV3ZJath2r@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1911334.sV3ZJath2r@archlinux>
Subject: Re: [Intel-gfx] -stable regression in Intel graphics,
 introduced in Linux 5.10.9
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Feb 28, 2021 at 09:05:45PM +0100, Diego Calleja wrote:
> El domingo, 28 de febrero de 2021 16:14:54 (CET) Greg KH escribi=F3:
> > Is this the same issue reported here:
> > 	https://lore.kernel.org/r/f1070486-891a-8ec0-0390-b9aeb03178ce@redhat.=
com
> > ?
> =

> I just tested current mainline (which already contains the three commits =
mentioned in the bugzilla),
> and the problems have disappeared.

I do not see all 3 commits in Linus's tree already, am I missing
something?

What are the git ids that you are looking at?

thanks,

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

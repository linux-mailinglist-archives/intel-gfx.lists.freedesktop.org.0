Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5003661177
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Jan 2023 21:04:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EA2310E1C0;
	Sat,  7 Jan 2023 20:04:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16FF710E1BE;
 Sat,  7 Jan 2023 20:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
 t=1673121832; bh=qvSMD/w2DQNAF9ACqwomgKEylFg7d9LZDFbLkAkAiEM=;
 h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
 MIME-Version:Content-Type:In-Reply-To;
 b=fjricY/vc4two4jGlMogMR9BT4DY3F5oI1AWTTzRuMJ9cFzogpuA7rFOni4I1BpSz
 /koZH4GQATaywou+Ntd9FgyuljEpg6oWqyrl1PiduLjyt02W9SFPzEDUs6JF2tNE4G
 ogXF3sPPAsU8JetEjXCMbAdptRpVXk9nEmd/Zy84=
Received: by b-6.in.mailobj.net [192.168.90.16] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Sat,  7 Jan 2023 21:03:52 +0100 (CET)
X-EA-Auth: 3CfAlWsYnllX1G5Xz+iwFZSWEvjzz9Hk0nK4oLPYYp4TtmOmNTCnjCKf7MKgCPgnp1UUMLMVXlXiZCm2kh4NwfbxZSA2uh/P
Date: Sun, 8 Jan 2023 01:33:41 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y7nQHfbKNmZ1sRbO@ubun2204.myguest.virtualbox.org>
References: <Y6qmNW6cOHjGwn03@qemulion> <Y6sn1BmhFJFssW0h@intel.com>
 <Y6s0FSK9+F+/oKSf@qemulion> <Y6wl9NhYZG5RjJL7@intel.com>
 <Y7PG5Hx5dDE7aHSx@qemulion>
 <alpine.DEB.2.22.394.2301041850570.7216@hadrien>
 <Y7XABJ9MWCWO5IUA@intel.com>
 <991ac2b4-f458-f6f2-f494-648ed61efcff@inria.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <991ac2b4-f458-f6f2-f494-648ed61efcff@inria.fr>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: Avoid full proxy f_ops for
 FBC debug attributes
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
Cc: Saurabh Singh Sengar <ssengar@microsoft.com>,
 Praveen Kumar <kumarpraveen@linux.microsoft.com>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Julia Lawall <Julia.Lawall@lip6.fr>, Nicolai Stange <nicstange@gmail.com>,
 Deepak R Varma <drv@mailo.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 05, 2023 at 09:13:35AM +0100, Julia Lawall wrote:
> > Hi Julia, thanks for helping here.
> >
> > So, my question is why this
> >
> > make coccicheck M=drivers/gpu/drm/i915/ MODE=context COCCI=./scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
> >
> > didn't catch this chunck:
> >
> > -		debugfs_create_file("i915_fbc_false_color", 0644, parent,
> > -				    fbc, &intel_fbc_debugfs_false_color_fops);
> > +		debugfs_create_file_unsafe("i915_fbc_false_color", 0644, parent,
> > +					   fbc, &intel_fbc_debugfs_false_color_fops);
> >
> > When I run it it only catches and replaces this:
> >
> > - DEFINE_SIMPLE_ATTRIBUTE(dsa_fops, dsa_get, dsa_set, dsa_fmt);
> > + DEFINE_DEBUGFS_ATTRIBUTE(dsa_fops, dsa_get, dsa_set, dsa_fmt);
>
> There is something strange in your question.  You have MODE=context but
> you show the output for MODE=patch.  The rule dcf matches a call to
> debugfs_create_file, and the context rule matching DEFINE_SIMPLE_ATTRIBUTE
> is only activated if dcf succeeds.  So when the context rule gives a
> report, there is always a corresponding call to debugfs_create_file in the
> same file, it is just not highlighted.  So the request is that it should
> be highlighted as well?

Hello Rodrigo,
Not trying to speak for you, but I think Julia's comment appears to be the
correct interpretation of your observation. Would you mind confirming/clarifying
and suggest next steps for this proposal?

Thank you,
./drv

>
> julia
>



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B670E1E7F8A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 16:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5E46E90D;
	Fri, 29 May 2020 14:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 437 seconds by postgrey-1.36 at gabe;
 Fri, 29 May 2020 04:27:44 UTC
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C76BF6E856
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 04:27:44 +0000 (UTC)
Received: by ozlabs.org (Postfix, from userid 1034)
 id 49YBF530k9z9sSs; Fri, 29 May 2020 14:20:25 +1000 (AEST)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: 41cd780524674082b037e7c8461f90c5e42103f0
In-Reply-To: <2e73bc57125c2c6ab12a587586a4eed3a47105fc.1585898438.git.christophe.leroy@c-s.fr>
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, airlied@linux.ie, daniel@ffwll.ch,
 torvalds@linux-foundation.org, viro@zeniv.linux.org.uk,
 akpm@linux-foundation.org, keescook@chromium.org, hpa@zytor.com
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Message-Id: <49YBF530k9z9sSs@ozlabs.org>
Date: Fri, 29 May 2020 14:20:25 +1000 (AEST)
X-Mailman-Approved-At: Fri, 29 May 2020 14:03:34 +0000
Subject: Re: [Intel-gfx] [PATCH v2 2/5] uaccess: Selectively open read or
 write user access
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
Cc: linux-arch@vger.kernel.org, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2020-04-03 at 07:20:51 UTC, Christophe Leroy wrote:
> When opening user access to only perform reads, only open read access.
> When opening user access to only perform writes, only open write
> access.
> 
> Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Applied to powerpc topic/uaccess, thanks.

https://git.kernel.org/powerpc/c/41cd780524674082b037e7c8461f90c5e42103f0

cheers
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BE1A22582
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 22:11:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF0710E89D;
	Wed, 29 Jan 2025 21:11:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=linux.org.uk header.i=@linux.org.uk header.b="ab/Y/nQH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6651710E89D
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2025 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=582xf3yRU4I9YFbpR+DmNjNNz7gN2JvLtnAcc4/GJdw=; b=ab/Y/nQHYXmI8SZjt/boZU5fnL
 De8KpslHvmi7PlCT4xUEmGNAZ7qMiv74l5Zzd2PUS0D6tJkhZQfxiUj0eHJaILAi+83Y8kD7gYL8s
 4xK8429wQHKi+Zvm01g0d6nADC/ArBTs2mRp1euyXeVBAGPLGMaAxDrVz2PyRvtPs4V8d1OCZ0gix
 F+cPsNc3f8z7QIFJVyrDhTKn2sXi9NLFNoPITsajrChyw5Y20WDQwVYqCm6c8RwLVLRFHVbelS6+S
 um5/AU2spT3tC1ta11MeplEjNZ641ptt+TAByGYlBS9Z27329wp8Igveeha/fB5lAxiSkNPRjrjEf
 VlEc0iFg==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tdFLK-0000000FaWX-05c3
 for intel-gfx@lists.freedesktop.org; Wed, 29 Jan 2025 21:11:26 +0000
Date: Wed, 29 Jan 2025 21:11:25 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJVSUxE?= =?utf-8?Q?=3A?= failure for
 Regression on linux-next (next-20250120) (rev2)
Message-ID: <20250129211125.GS1977892@ZenIV>
References: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <173818401779.2530294.11352683650301608238@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173818401779.2530294.11352683650301608238@b555e5b46a47>
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

On Wed, Jan 29, 2025 at 08:53:37PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Regression on linux-next (next-20250120) (rev2)
> URL   : https://patchwork.freedesktop.org/series/143978/
> State : failure
> 
> == Summary ==
> 
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/143978/revisions/2/mbox/ not applied
> Applying: Regression on linux-next (next-20250120)
> Using index info to reconstruct a base tree...
> M	fs/debugfs/file.c
> Falling back to patching base and 3-way merge...
> Auto-merging fs/debugfs/file.c
> CONFLICT (content): Merge conflict in fs/debugfs/file.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0001 Regression on linux-next (next-20250120)
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> Build failed, no error log produced

Not to put too fine a point on that, but... which tree does it fail
to apply to, seeing that both mainline and -next are identical
in fs/debugfs/* and the patch in question applies cleanly to either?

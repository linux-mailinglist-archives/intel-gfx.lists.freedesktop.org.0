Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E5FA1A9AF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 19:35:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF4810E3F4;
	Thu, 23 Jan 2025 18:35:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=linux.org.uk header.i=@linux.org.uk header.b="RPof37F8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1001 seconds by postgrey-1.36 at gabe;
 Thu, 23 Jan 2025 18:35:37 UTC
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8387510E890;
 Thu, 23 Jan 2025 18:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dUIhvDzfyx6DZiieDRrmXrYPXvuQKjnVvYWf8/UJhYg=; b=RPof37F8PUWbZ8CLf/8/4///7c
 fJK5I6gcZR8qFUFYL5fLdOmZ+SDYzOZcURCwvh+9cYMyCEEh0KY9b35Y7buHToqzttGlCOfrOD2q0
 CBKmSnJs3oaPt0ZjxB+AtDGL9APRVEUk0UwOUDzWJ8B3VP72rJBfCnibT8MN8haig8/PEpb0sdObo
 KpCV93cXvr+0u78GQUINTQlRZicotvl7cSX7H5UceSk4CvJmYlOzbSif8XKq2L3LHNbjJLYJk5fkG
 1sh7zuKP39ZQAlisCgsMS5pyE7THkxGdAuLp6be5uE8N8wlIZBiRZ6GyAQxd6rZF782/rC6p1fch5
 m+7W6NIw==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tb1n3-000000092eO-1ti5; Thu, 23 Jan 2025 18:18:53 +0000
Date: Thu, 23 Jan 2025 18:18:53 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
Subject: Re: Regression on linux-next (next-20250120)
Message-ID: <20250123181853.GC1977892@ZenIV>
References: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Thu, Jan 23, 2025 at 03:41:08PM +0000, Borah, Chaitanya Kumar wrote:
> Hello Al,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
> 
> Since the version next-20250120 [2], we are seeing the following regression

Ugh...  To narrow the things down, could you see if replacing
                fsd = kmalloc(sizeof(*fsd), GFP_KERNEL);
with
                fsd = kzalloc(sizeof(*fsd), GFP_KERNEL);
in fs/debugfs/file.c:__debugfs_file_get() affects the test?

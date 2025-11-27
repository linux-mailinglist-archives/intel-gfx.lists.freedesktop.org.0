Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AF2C8EBC1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 15:23:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A46910E764;
	Thu, 27 Nov 2025 14:23:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="ea0Y1G0Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB2810E764;
 Thu, 27 Nov 2025 14:23:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A3B8460141;
 Thu, 27 Nov 2025 14:23:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92C07C4CEF8;
 Thu, 27 Nov 2025 14:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1764253429;
 bh=r07qtYGEb7AnC6anOUPmwTrLLsNrLYAVrCgqJnbbPKI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ea0Y1G0Z9/IYHDSbEJavEbqdCjuH+PodNnjxcOx1VYe8B9FNt1npwgiWl7/1n9u+z
 4r+9W/9pCLq/pl9obQ9xEkONlBJx5UgCU0G3BrO+2pej+1luBmvtKE6VybD4ZK1/Oa
 vG0GZBHaoIB264JoVRe8F8tE0BFYqzOK0nksIan7ieNW+veVUML2UIZxMzexCAIQOZ
 A21J0ZFBNi3N77/h+QIK8xufyreIAkbAffPPmQWGMEiN6xEdcgyYrMuR/lOdGXXmQ8
 S0C98IQWCX3a6fDGRx9jkPawe9XTu/eQo1SobnfJbMlTJrGLzo5dhjtQjeU3jYPk3c
 MEQpa4/8DPZQQ==
Date: Thu, 27 Nov 2025 15:23:44 +0100
From: Christian Brauner <brauner@kernel.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, 
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-fsdevel@vger.kernel.org
Subject: Re: REGRESSION on linux-next (next-20251125)
Message-ID: <20251127-entnehmen-fokussieren-3159ffb8e98b@brauner>
References: <a27eb5f4-c4c9-406c-9b53-93f7888db14a@intel.com>
 <20251127-agenda-befinden-61628473b16b@brauner>
 <5ffeb0af-a3c9-4ccb-a752-ce7d48f475df@intel.com>
 <20251127-kaktus-gourmet-626cff3d8314@brauner>
 <78e1b97d-837f-48e9-882f-8320473ec9bb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <78e1b97d-837f-48e9-882f-8320473ec9bb@intel.com>
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

On Thu, Nov 27, 2025 at 06:16:05PM +0530, Borah, Chaitanya Kumar wrote:
> 
> 
> On 11/27/2025 4:13 PM, Christian Brauner wrote:
> > I just pushed:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git vfs-6.19.fd_prepare
> > 
> > If you want to test that, please.
> 
> aah! only the sync_file.c change you suggested was not fixing the issue. But
> with [1] on top of linux-next, the issue is now resolved.
> 
> It also solves another issue[2] we bisected (before I could report it to
> you, which is never a bad thing)
> 
> Thank you.

Yes, sorry, two pretty obvious mistakes on my side. Thanks for testing!

> [1] https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git/commit/?h=vfs-6.19.fd_prepare&id=bf44cb6382f90fbda2eeae67065dc9401a967485
> [2] https://intel-gfx-ci.01.org/tree/linux-next/next-20251125/bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html

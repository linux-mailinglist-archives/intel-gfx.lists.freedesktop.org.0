Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D33A46DFB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 22:59:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E91010E096;
	Wed, 26 Feb 2025 21:58:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="TEtlYjj1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1506610E096;
 Wed, 26 Feb 2025 21:58:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6A6AB5C7535;
 Wed, 26 Feb 2025 21:58:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB06EC4CED6;
 Wed, 26 Feb 2025 21:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1740607123;
 bh=dGVQwofA2mF3rCKefgJ6shQpUqK/R0gqUE4OsUCwJis=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=TEtlYjj1OZQCmUcSCvOaivbTUHKz9geYajadS3yxe94LJMVyvSHSFEC1feWpPa4HY
 cOwxr4QLepMbzplAFtAY+uXikfJdJ/lXWJWotY+dZuX4MQ8OCByj/F8s/97X9NXoS8
 sohIG5ahZiceFKwaXSqoXKzAcFVOJtiGyjneMrRmrtsYfiSbPTQC5qegBuQl90+989
 b09DTsBapvTxLrBMhKFF/mslrn9GUOpyYLp7QyhbyEJKEgtkgQuo8Qe+Ax5oC+5TQK
 pUN7AS0hq9OptVcuWPTLIvqF4D2CVwuaBDt7FLwKoa+YI1rzWQnTJ0z7PVrdJwZT4H
 dy+BXWrIMTDiQ==
Date: Wed, 26 Feb 2025 15:58:42 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: Regression on linux-next (next-20250221)
Message-ID: <20250226215842.GA560520@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ1PR11MB6129B4B298158496F8BD36B0B9C22@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Wed, Feb 26, 2025 at 07:36:19PM +0000, Borah, Chaitanya Kumar wrote:
> Hello Bjorn,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
> 
> Since the version next-20250221 [2], we are seeing that some of the machines in our CI are unable to connect through ssh (and therefore unable to participate).
> Looking at the logs we see this.
> 
> `````````````````````````````````````````````````````````````````````````````````
> [    5.838496] e1000e: Intel(R) PRO/1000 Network Driver
> [    5.838515] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [    5.838737] e1000e 0000:01:00.0: Disabling ASPM  L1
> [    5.840055] e1000e 0000:01:00.0: probe with driver e1000e failed with error -12
> `````````````````````````````````````````````````````````````````````````````````
> After bisecting the tree, the following patch [3] seems to be the first "bad"
> commit
> 
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit 7d90d8d2bb1bfff8b33acbb6f815cba6f5250fad
> Author: Bjorn Helgaas mailto:bhelgaas@google.com
> Date:   Fri Feb 14 18:03:00 2025 -0600
> 
>     PCI: Avoid pointless capability searches
> 
>     Many of the save/restore functions in the pci_save_state() and
>     pci_restore_state() paths depend on both a PCI capability of the device and
>     a pci_cap_saved_state structure to hold the configuration data, and they
>     skip the operation if either is missing.
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> 
> We verified that if we revert the patch the issue is not seen.

Sorry about this; this patch was dropped in next-20250224

Bjorn

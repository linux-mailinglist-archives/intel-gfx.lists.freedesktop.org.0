Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44D02BC13A
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Nov 2020 19:02:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EFAD6E9DA;
	Sat, 21 Nov 2020 18:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtprelay.hostedemail.com (smtprelay0122.hostedemail.com
 [216.40.44.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFF286E9C6;
 Sat, 21 Nov 2020 18:02:24 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id AF7D7181D3025;
 Sat, 21 Nov 2020 18:02:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6117:6119:6742:6743:7809:7903:9025:10004:10400:10848:11027:11232:11658:11914:12043:12297:12663:12679:12740:12760:12895:13161:13229:13439:13845:14096:14097:14181:14659:14721:21080:21451:21627:21790:21987:30012:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: uncle36_3402e8c27356
X-Filterd-Recvd-Size: 3937
Received: from XPS-9350.home (unknown [47.151.128.180])
 (Authenticated sender: joe@perches.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA;
 Sat, 21 Nov 2020 18:02:18 +0000 (UTC)
Message-ID: <f7643c9cb0a896f3ead65e86084b7c143e21ef43.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
 trix@redhat.com,  clang-built-linux@googlegroups.com
Date: Sat, 21 Nov 2020 10:02:17 -0800
In-Reply-To: <5843ef910b0e86c00d9c0143dec20f93823b016b.camel@HansenPartnership.com>
References: <20201121165058.1644182-1-trix@redhat.com>
 <5843ef910b0e86c00d9c0143dec20f93823b016b.camel@HansenPartnership.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC] MAINTAINERS tag for cleanup robot
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
Cc: linux-hyperv@vger.kernel.org, kvm@vger.kernel.org,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-scsi@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 cluster-devel@redhat.com, linux-acpi@vger.kernel.org,
 tboot-devel@lists.sourceforge.net, coreteam@netfilter.org,
 xen-devel@lists.xenproject.org, MPT-FusionLinux.pdl@broadcom.com,
 linux-media@vger.kernel.org, alsa-devel@alsa-project.org,
 intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org,
 linux-omap@vger.kernel.org, devel@acpica.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 2020-11-21 at 09:18 -0800, James Bottomley wrote:
> On Sat, 2020-11-21 at 08:50 -0800, trix@redhat.com wrote:
> > A difficult part of automating commits is composing the subsystem
> > preamble in the commit log.  For the ongoing effort of a fixer
> > producing one or two fixes a release the use of 'treewide:' does
> > not seem appropriate.
> > 
> > It would be better if the normal prefix was used.  Unfortunately
> > normal is not consistent across the tree.
> > 
> > 	D: Commit subsystem prefix
> > 
> > ex/ for FPGA DFL DRIVERS
> > 
> > 	D: fpga: dfl:
> 
> I've got to bet this is going to cause more issues than it solves. 
> SCSI uses scsi: <driver>: for drivers but not every driver has a
> MAINTAINERS entry.  We use either scsi: or scsi: core: for mid layer
> things, but we're not consistent.  Block uses blk-<something>: for all
> of it's stuff but almost no <somtehing>s have a MAINTAINERS entry.  So
> the next thing you're going to cause is an explosion of suggested
> MAINTAINERs entries.

As well as some changes require simultaneous changes across
multiple subsystems.

> Has anyone actually complained about treewide:?

It depends on what you mean by treewide:

If a treewide: patch is applied by some "higher level" maintainer,
then generally, no.

If the treewide patch is also cc'd to many individual maintainers,
then yes, many many times.

Mostly because patches cause what is in their view churn or that
changes are not specific to their subsystem grounds.

The treewide patch is sometimes dropped, sometimes broken up and
generally not completely applied.

What would be useful in many cases like this is for a pre and post
application of the treewide patch to be compiled and the object
code verified for lack of any logic change.

Unfortunately, gcc does not guarantee deterministic compilation so
this isn't feasible with at least gcc.  Does clang guarantee this?

I'm not sure it's possible:
https://blog.llvm.org/2019/11/deterministic-builds-with-clang-and-lld.html


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

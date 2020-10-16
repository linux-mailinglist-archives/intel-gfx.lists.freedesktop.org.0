Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 338952908BF
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 17:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FCFF893B8;
	Fri, 16 Oct 2020 15:44:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from manul.sfritsch.de (manul.sfritsch.de
 [IPv6:2a01:4f8:172:195f:112::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 882FD6EE0C
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 15:33:29 +0000 (UTC)
Date: Fri, 16 Oct 2020 17:19:19 +0200 (CEST)
From: Stefan Fritsch <sf@sfritsch.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <alpine.DEB.2.21.2010161716270.29164@manul.sfritsch.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 16 Oct 2020 15:44:12 +0000
Subject: [Intel-gfx] drm/i915: Detecting Vt-d when running as guest os
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

if Linux is running as a guest and the host is doing igd-pass-thorugh with 
VT-d enabled, the i915 driver does not work all that great. The most 
obvious problem is that there are dozens of 'Fault errors on pipe A' 
errrors logged per second, but depending on the hardware there can be 
other issues, too. I will send a patch to rate-limit that message in a 
separate mail.

The i915 has various quirks for VT-d and these should be enabled even if 
Linux is running as a guest and does itself have iommu enabled. I have 
checked that making intel_vtd_active() form i915_drv.h return true makes 
the error messages go away.  How could Linux detect this situation? Maybe 
simply check the Hypervisor cpuid bit? Or would you prefer a module 
parameter, or a combination of both? Or is there another way to detect 
that VT-d is enabled for the igd device?

Cheers,
Stefan
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
